; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132640 () Bool)

(assert start!132640)

(declare-fun res!1063818 () Bool)

(declare-fun e!865537 () Bool)

(assert (=> start!132640 (=> (not res!1063818) (not e!865537))))

(declare-datatypes ((B!2246 0))(
  ( (B!2247 (val!19209 Int)) )
))
(declare-datatypes ((tuple2!24934 0))(
  ( (tuple2!24935 (_1!12477 (_ BitVec 64)) (_2!12477 B!2246)) )
))
(declare-datatypes ((List!36389 0))(
  ( (Nil!36386) (Cons!36385 (h!37832 tuple2!24934) (t!51117 List!36389)) )
))
(declare-datatypes ((ListLongMap!22555 0))(
  ( (ListLongMap!22556 (toList!11293 List!36389)) )
))
(declare-fun lm!249 () ListLongMap!22555)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10171 (ListLongMap!22555 (_ BitVec 64)) Bool)

(assert (=> start!132640 (= res!1063818 (contains!10171 lm!249 a0!49))))

(assert (=> start!132640 e!865537))

(declare-fun e!865536 () Bool)

(declare-fun inv!57351 (ListLongMap!22555) Bool)

(assert (=> start!132640 (and (inv!57351 lm!249) e!865536)))

(assert (=> start!132640 true))

(declare-fun tp_is_empty!38257 () Bool)

(assert (=> start!132640 tp_is_empty!38257))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2246)

(declare-fun e!865538 () Bool)

(declare-fun b!1554344 () Bool)

(declare-fun apply!1142 (ListLongMap!22555 (_ BitVec 64)) B!2246)

(declare-fun +!4978 (ListLongMap!22555 tuple2!24934) ListLongMap!22555)

(assert (=> b!1554344 (= e!865538 (= (apply!1142 (+!4978 lm!249 (tuple2!24935 a!523 b!96)) a0!49) (apply!1142 lm!249 a0!49)))))

(declare-datatypes ((Option!831 0))(
  ( (Some!830 (v!22011 B!2246)) (None!829) )
))
(declare-fun isDefined!564 (Option!831) Bool)

(declare-fun getValueByKey!756 (List!36389 (_ BitVec 64)) Option!831)

(assert (=> b!1554344 (isDefined!564 (getValueByKey!756 (toList!11293 lm!249) a0!49))))

(declare-datatypes ((Unit!51728 0))(
  ( (Unit!51729) )
))
(declare-fun lt!669953 () Unit!51728)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!515 (List!36389 (_ BitVec 64)) Unit!51728)

(assert (=> b!1554344 (= lt!669953 (lemmaContainsKeyImpliesGetValueByKeyDefined!515 (toList!11293 lm!249) a0!49))))

(declare-fun b!1554345 () Bool)

(declare-fun res!1063814 () Bool)

(assert (=> b!1554345 (=> (not res!1063814) (not e!865537))))

(declare-fun containsKey!774 (List!36389 (_ BitVec 64)) Bool)

(assert (=> b!1554345 (= res!1063814 (containsKey!774 (toList!11293 lm!249) a0!49))))

(declare-fun lt!669951 () List!36389)

(declare-fun e!865539 () Bool)

(declare-fun b!1554346 () Bool)

(assert (=> b!1554346 (= e!865539 (= (getValueByKey!756 lt!669951 a0!49) (getValueByKey!756 (toList!11293 lm!249) a0!49)))))

(declare-fun b!1554347 () Bool)

(declare-fun tp!112201 () Bool)

(assert (=> b!1554347 (= e!865536 tp!112201)))

(declare-fun b!1554348 () Bool)

(declare-fun res!1063817 () Bool)

(assert (=> b!1554348 (=> (not res!1063817) (not e!865537))))

(assert (=> b!1554348 (= res!1063817 (not (= a0!49 a!523)))))

(declare-fun b!1554349 () Bool)

(assert (=> b!1554349 (= e!865537 (not e!865538))))

(declare-fun res!1063815 () Bool)

(assert (=> b!1554349 (=> res!1063815 e!865538)))

(declare-fun isStrictlySorted!902 (List!36389) Bool)

(assert (=> b!1554349 (= res!1063815 (not (isStrictlySorted!902 (toList!11293 lm!249))))))

(assert (=> b!1554349 e!865539))

(declare-fun res!1063816 () Bool)

(assert (=> b!1554349 (=> (not res!1063816) (not e!865539))))

(assert (=> b!1554349 (= res!1063816 (containsKey!774 lt!669951 a0!49))))

(declare-fun insertStrictlySorted!516 (List!36389 (_ BitVec 64) B!2246) List!36389)

(assert (=> b!1554349 (= lt!669951 (insertStrictlySorted!516 (toList!11293 lm!249) a!523 b!96))))

(declare-fun lt!669952 () Unit!51728)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!13 (List!36389 (_ BitVec 64) B!2246 (_ BitVec 64)) Unit!51728)

(assert (=> b!1554349 (= lt!669952 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!13 (toList!11293 lm!249) a!523 b!96 a0!49))))

(assert (= (and start!132640 res!1063818) b!1554348))

(assert (= (and b!1554348 res!1063817) b!1554345))

(assert (= (and b!1554345 res!1063814) b!1554349))

(assert (= (and b!1554349 res!1063816) b!1554346))

(assert (= (and b!1554349 (not res!1063815)) b!1554344))

(assert (= start!132640 b!1554347))

(declare-fun m!1432695 () Bool)

(assert (=> b!1554345 m!1432695))

(declare-fun m!1432697 () Bool)

(assert (=> b!1554346 m!1432697))

(declare-fun m!1432699 () Bool)

(assert (=> b!1554346 m!1432699))

(declare-fun m!1432701 () Bool)

(assert (=> b!1554344 m!1432701))

(assert (=> b!1554344 m!1432699))

(declare-fun m!1432703 () Bool)

(assert (=> b!1554344 m!1432703))

(assert (=> b!1554344 m!1432699))

(declare-fun m!1432705 () Bool)

(assert (=> b!1554344 m!1432705))

(declare-fun m!1432707 () Bool)

(assert (=> b!1554344 m!1432707))

(assert (=> b!1554344 m!1432703))

(declare-fun m!1432709 () Bool)

(assert (=> b!1554344 m!1432709))

(declare-fun m!1432711 () Bool)

(assert (=> start!132640 m!1432711))

(declare-fun m!1432713 () Bool)

(assert (=> start!132640 m!1432713))

(declare-fun m!1432715 () Bool)

(assert (=> b!1554349 m!1432715))

(declare-fun m!1432717 () Bool)

(assert (=> b!1554349 m!1432717))

(declare-fun m!1432719 () Bool)

(assert (=> b!1554349 m!1432719))

(declare-fun m!1432721 () Bool)

(assert (=> b!1554349 m!1432721))

(push 1)

(assert (not b!1554344))

(assert (not b!1554346))

(assert (not b!1554347))

(assert (not start!132640))

(assert (not b!1554349))

(assert tp_is_empty!38257)

(assert (not b!1554345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1554394 () Bool)

(declare-fun e!865568 () Option!831)

(assert (=> b!1554394 (= e!865568 (Some!830 (_2!12477 (h!37832 (toList!11293 lm!249)))))))

(declare-fun b!1554395 () Bool)

(declare-fun e!865569 () Option!831)

(assert (=> b!1554395 (= e!865568 e!865569)))

(declare-fun c!143360 () Bool)

(assert (=> b!1554395 (= c!143360 (and (is-Cons!36385 (toList!11293 lm!249)) (not (= (_1!12477 (h!37832 (toList!11293 lm!249))) a0!49))))))

(declare-fun b!1554396 () Bool)

(assert (=> b!1554396 (= e!865569 (getValueByKey!756 (t!51117 (toList!11293 lm!249)) a0!49))))

(declare-fun b!1554397 () Bool)

(assert (=> b!1554397 (= e!865569 None!829)))

(declare-fun d!161675 () Bool)

(declare-fun c!143359 () Bool)

(assert (=> d!161675 (= c!143359 (and (is-Cons!36385 (toList!11293 lm!249)) (= (_1!12477 (h!37832 (toList!11293 lm!249))) a0!49)))))

(assert (=> d!161675 (= (getValueByKey!756 (toList!11293 lm!249) a0!49) e!865568)))

(assert (= (and d!161675 c!143359) b!1554394))

(assert (= (and d!161675 (not c!143359)) b!1554395))

(assert (= (and b!1554395 c!143360) b!1554396))

(assert (= (and b!1554395 (not c!143360)) b!1554397))

(declare-fun m!1432779 () Bool)

(assert (=> b!1554396 m!1432779))

(assert (=> b!1554344 d!161675))

(declare-fun d!161681 () Bool)

(declare-fun isEmpty!1140 (Option!831) Bool)

(assert (=> d!161681 (= (isDefined!564 (getValueByKey!756 (toList!11293 lm!249) a0!49)) (not (isEmpty!1140 (getValueByKey!756 (toList!11293 lm!249) a0!49))))))

(declare-fun bs!44676 () Bool)

(assert (= bs!44676 d!161681))

(assert (=> bs!44676 m!1432699))

(declare-fun m!1432781 () Bool)

(assert (=> bs!44676 m!1432781))

(assert (=> b!1554344 d!161681))

(declare-fun d!161683 () Bool)

(assert (=> d!161683 (isDefined!564 (getValueByKey!756 (toList!11293 lm!249) a0!49))))

(declare-fun lt!669974 () Unit!51728)

(declare-fun choose!2056 (List!36389 (_ BitVec 64)) Unit!51728)

(assert (=> d!161683 (= lt!669974 (choose!2056 (toList!11293 lm!249) a0!49))))

(declare-fun e!865584 () Bool)

(assert (=> d!161683 e!865584))

(declare-fun res!1063857 () Bool)

(assert (=> d!161683 (=> (not res!1063857) (not e!865584))))

(assert (=> d!161683 (= res!1063857 (isStrictlySorted!902 (toList!11293 lm!249)))))

(assert (=> d!161683 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!515 (toList!11293 lm!249) a0!49) lt!669974)))

(declare-fun b!1554418 () Bool)

(assert (=> b!1554418 (= e!865584 (containsKey!774 (toList!11293 lm!249) a0!49))))

(assert (= (and d!161683 res!1063857) b!1554418))

(assert (=> d!161683 m!1432699))

(assert (=> d!161683 m!1432699))

(assert (=> d!161683 m!1432705))

(declare-fun m!1432789 () Bool)

(assert (=> d!161683 m!1432789))

(assert (=> d!161683 m!1432715))

(assert (=> b!1554418 m!1432695))

(assert (=> b!1554344 d!161683))

(declare-fun d!161691 () Bool)

(declare-fun get!26086 (Option!831) B!2246)

(assert (=> d!161691 (= (apply!1142 lm!249 a0!49) (get!26086 (getValueByKey!756 (toList!11293 lm!249) a0!49)))))

(declare-fun bs!44678 () Bool)

(assert (= bs!44678 d!161691))

(assert (=> bs!44678 m!1432699))

(assert (=> bs!44678 m!1432699))

(declare-fun m!1432791 () Bool)

(assert (=> bs!44678 m!1432791))

(assert (=> b!1554344 d!161691))

(declare-fun d!161693 () Bool)

(assert (=> d!161693 (= (apply!1142 (+!4978 lm!249 (tuple2!24935 a!523 b!96)) a0!49) (get!26086 (getValueByKey!756 (toList!11293 (+!4978 lm!249 (tuple2!24935 a!523 b!96))) a0!49)))))

(declare-fun bs!44679 () Bool)

(assert (= bs!44679 d!161693))

(declare-fun m!1432793 () Bool)

(assert (=> bs!44679 m!1432793))

(assert (=> bs!44679 m!1432793))

(declare-fun m!1432795 () Bool)

(assert (=> bs!44679 m!1432795))

(assert (=> b!1554344 d!161693))

(declare-fun d!161695 () Bool)

(declare-fun e!865604 () Bool)

(assert (=> d!161695 e!865604))

(declare-fun res!1063868 () Bool)

(assert (=> d!161695 (=> (not res!1063868) (not e!865604))))

(declare-fun lt!670007 () ListLongMap!22555)

(assert (=> d!161695 (= res!1063868 (contains!10171 lt!670007 (_1!12477 (tuple2!24935 a!523 b!96))))))

(declare-fun lt!670002 () List!36389)

(assert (=> d!161695 (= lt!670007 (ListLongMap!22556 lt!670002))))

(declare-fun lt!670005 () Unit!51728)

(declare-fun lt!670003 () Unit!51728)

(assert (=> d!161695 (= lt!670005 lt!670003)))

(assert (=> d!161695 (= (getValueByKey!756 lt!670002 (_1!12477 (tuple2!24935 a!523 b!96))) (Some!830 (_2!12477 (tuple2!24935 a!523 b!96))))))

(declare-fun lemmaContainsTupThenGetReturnValue!378 (List!36389 (_ BitVec 64) B!2246) Unit!51728)

(assert (=> d!161695 (= lt!670003 (lemmaContainsTupThenGetReturnValue!378 lt!670002 (_1!12477 (tuple2!24935 a!523 b!96)) (_2!12477 (tuple2!24935 a!523 b!96))))))

(assert (=> d!161695 (= lt!670002 (insertStrictlySorted!516 (toList!11293 lm!249) (_1!12477 (tuple2!24935 a!523 b!96)) (_2!12477 (tuple2!24935 a!523 b!96))))))

(assert (=> d!161695 (= (+!4978 lm!249 (tuple2!24935 a!523 b!96)) lt!670007)))

(declare-fun b!1554451 () Bool)

(declare-fun res!1063869 () Bool)

(assert (=> b!1554451 (=> (not res!1063869) (not e!865604))))

(assert (=> b!1554451 (= res!1063869 (= (getValueByKey!756 (toList!11293 lt!670007) (_1!12477 (tuple2!24935 a!523 b!96))) (Some!830 (_2!12477 (tuple2!24935 a!523 b!96)))))))

(declare-fun b!1554452 () Bool)

(declare-fun contains!10174 (List!36389 tuple2!24934) Bool)

(assert (=> b!1554452 (= e!865604 (contains!10174 (toList!11293 lt!670007) (tuple2!24935 a!523 b!96)))))

(assert (= (and d!161695 res!1063868) b!1554451))

(assert (= (and b!1554451 res!1063869) b!1554452))

(declare-fun m!1432811 () Bool)

(assert (=> d!161695 m!1432811))

(declare-fun m!1432813 () Bool)

(assert (=> d!161695 m!1432813))

(declare-fun m!1432815 () Bool)

(assert (=> d!161695 m!1432815))

(declare-fun m!1432817 () Bool)

(assert (=> d!161695 m!1432817))

(declare-fun m!1432819 () Bool)

(assert (=> b!1554451 m!1432819))

(declare-fun m!1432821 () Bool)

(assert (=> b!1554452 m!1432821))

(assert (=> b!1554344 d!161695))

(declare-fun d!161713 () Bool)

(declare-fun res!1063883 () Bool)

(declare-fun e!865615 () Bool)

(assert (=> d!161713 (=> res!1063883 e!865615)))

(assert (=> d!161713 (= res!1063883 (or (is-Nil!36386 (toList!11293 lm!249)) (is-Nil!36386 (t!51117 (toList!11293 lm!249)))))))

(assert (=> d!161713 (= (isStrictlySorted!902 (toList!11293 lm!249)) e!865615)))

(declare-fun b!1554466 () Bool)

(declare-fun e!865616 () Bool)

(assert (=> b!1554466 (= e!865615 e!865616)))

(declare-fun res!1063884 () Bool)

(assert (=> b!1554466 (=> (not res!1063884) (not e!865616))))

(assert (=> b!1554466 (= res!1063884 (bvslt (_1!12477 (h!37832 (toList!11293 lm!249))) (_1!12477 (h!37832 (t!51117 (toList!11293 lm!249))))))))

(declare-fun b!1554467 () Bool)

(assert (=> b!1554467 (= e!865616 (isStrictlySorted!902 (t!51117 (toList!11293 lm!249))))))

(assert (= (and d!161713 (not res!1063883)) b!1554466))

(assert (= (and b!1554466 res!1063884) b!1554467))

(declare-fun m!1432837 () Bool)

(assert (=> b!1554467 m!1432837))

(assert (=> b!1554349 d!161713))

(declare-fun d!161719 () Bool)

(declare-fun res!1063895 () Bool)

(declare-fun e!865627 () Bool)

(assert (=> d!161719 (=> res!1063895 e!865627)))

(assert (=> d!161719 (= res!1063895 (and (is-Cons!36385 lt!669951) (= (_1!12477 (h!37832 lt!669951)) a0!49)))))

(assert (=> d!161719 (= (containsKey!774 lt!669951 a0!49) e!865627)))

(declare-fun b!1554478 () Bool)

(declare-fun e!865628 () Bool)

(assert (=> b!1554478 (= e!865627 e!865628)))

(declare-fun res!1063896 () Bool)

(assert (=> b!1554478 (=> (not res!1063896) (not e!865628))))

(assert (=> b!1554478 (= res!1063896 (and (or (not (is-Cons!36385 lt!669951)) (bvsle (_1!12477 (h!37832 lt!669951)) a0!49)) (is-Cons!36385 lt!669951) (bvslt (_1!12477 (h!37832 lt!669951)) a0!49)))))

(declare-fun b!1554479 () Bool)

(assert (=> b!1554479 (= e!865628 (containsKey!774 (t!51117 lt!669951) a0!49))))

(assert (= (and d!161719 (not res!1063895)) b!1554478))

(assert (= (and b!1554478 res!1063896) b!1554479))

(declare-fun m!1432847 () Bool)

(assert (=> b!1554479 m!1432847))

(assert (=> b!1554349 d!161719))

(declare-fun b!1554540 () Bool)

(declare-fun e!865667 () List!36389)

(declare-fun e!865669 () List!36389)

(assert (=> b!1554540 (= e!865667 e!865669)))

(declare-fun c!143395 () Bool)

(assert (=> b!1554540 (= c!143395 (and (is-Cons!36385 (toList!11293 lm!249)) (= (_1!12477 (h!37832 (toList!11293 lm!249))) a!523)))))

(declare-fun b!1554541 () Bool)

(declare-fun e!865670 () List!36389)

(assert (=> b!1554541 (= e!865670 (insertStrictlySorted!516 (t!51117 (toList!11293 lm!249)) a!523 b!96))))

(declare-fun call!71437 () List!36389)

(declare-fun bm!71434 () Bool)

(declare-fun c!143394 () Bool)

(declare-fun $colon$colon!953 (List!36389 tuple2!24934) List!36389)

(assert (=> bm!71434 (= call!71437 ($colon$colon!953 e!865670 (ite c!143394 (h!37832 (toList!11293 lm!249)) (tuple2!24935 a!523 b!96))))))

(declare-fun c!143396 () Bool)

(assert (=> bm!71434 (= c!143396 c!143394)))

(declare-fun bm!71435 () Bool)

(declare-fun call!71438 () List!36389)

(assert (=> bm!71435 (= call!71438 call!71437)))

(declare-fun b!1554543 () Bool)

(declare-fun e!865666 () List!36389)

(declare-fun call!71439 () List!36389)

(assert (=> b!1554543 (= e!865666 call!71439)))

(declare-fun e!865668 () Bool)

(declare-fun b!1554542 () Bool)

(declare-fun lt!670033 () List!36389)

(assert (=> b!1554542 (= e!865668 (contains!10174 lt!670033 (tuple2!24935 a!523 b!96)))))

(declare-fun d!161727 () Bool)

(assert (=> d!161727 e!865668))

(declare-fun res!1063926 () Bool)

(assert (=> d!161727 (=> (not res!1063926) (not e!865668))))

(assert (=> d!161727 (= res!1063926 (isStrictlySorted!902 lt!670033))))

(assert (=> d!161727 (= lt!670033 e!865667)))

(assert (=> d!161727 (= c!143394 (and (is-Cons!36385 (toList!11293 lm!249)) (bvslt (_1!12477 (h!37832 (toList!11293 lm!249))) a!523)))))

(assert (=> d!161727 (isStrictlySorted!902 (toList!11293 lm!249))))

(assert (=> d!161727 (= (insertStrictlySorted!516 (toList!11293 lm!249) a!523 b!96) lt!670033)))

(declare-fun b!1554544 () Bool)

(assert (=> b!1554544 (= e!865669 call!71438)))

(declare-fun bm!71436 () Bool)

(assert (=> bm!71436 (= call!71439 call!71438)))

(declare-fun b!1554545 () Bool)

(assert (=> b!1554545 (= e!865666 call!71439)))

(declare-fun b!1554546 () Bool)

(assert (=> b!1554546 (= e!865667 call!71437)))

(declare-fun b!1554547 () Bool)

(declare-fun c!143397 () Bool)

(assert (=> b!1554547 (= c!143397 (and (is-Cons!36385 (toList!11293 lm!249)) (bvsgt (_1!12477 (h!37832 (toList!11293 lm!249))) a!523)))))

(assert (=> b!1554547 (= e!865669 e!865666)))

(declare-fun b!1554548 () Bool)

(assert (=> b!1554548 (= e!865670 (ite c!143395 (t!51117 (toList!11293 lm!249)) (ite c!143397 (Cons!36385 (h!37832 (toList!11293 lm!249)) (t!51117 (toList!11293 lm!249))) Nil!36386)))))

(declare-fun b!1554549 () Bool)

(declare-fun res!1063925 () Bool)

(assert (=> b!1554549 (=> (not res!1063925) (not e!865668))))

(assert (=> b!1554549 (= res!1063925 (containsKey!774 lt!670033 a!523))))

(assert (= (and d!161727 c!143394) b!1554546))

(assert (= (and d!161727 (not c!143394)) b!1554540))

(assert (= (and b!1554540 c!143395) b!1554544))

(assert (= (and b!1554540 (not c!143395)) b!1554547))

(assert (= (and b!1554547 c!143397) b!1554543))

(assert (= (and b!1554547 (not c!143397)) b!1554545))

(assert (= (or b!1554543 b!1554545) bm!71436))

(assert (= (or b!1554544 bm!71436) bm!71435))

(assert (= (or b!1554546 bm!71435) bm!71434))

(assert (= (and bm!71434 c!143396) b!1554541))

(assert (= (and bm!71434 (not c!143396)) b!1554548))

(assert (= (and d!161727 res!1063926) b!1554549))

(assert (= (and b!1554549 res!1063925) b!1554542))

(declare-fun m!1432867 () Bool)

(assert (=> b!1554549 m!1432867))

(declare-fun m!1432869 () Bool)

(assert (=> b!1554542 m!1432869))

(declare-fun m!1432871 () Bool)

(assert (=> b!1554541 m!1432871))

(declare-fun m!1432873 () Bool)

(assert (=> bm!71434 m!1432873))

(declare-fun m!1432875 () Bool)

(assert (=> d!161727 m!1432875))

(assert (=> d!161727 m!1432715))

(assert (=> b!1554349 d!161727))

(declare-fun d!161737 () Bool)

(declare-fun e!865690 () Bool)

(assert (=> d!161737 e!865690))

(declare-fun res!1063938 () Bool)

(assert (=> d!161737 (=> (not res!1063938) (not e!865690))))

(assert (=> d!161737 (= res!1063938 (= (containsKey!774 (insertStrictlySorted!516 (toList!11293 lm!249) a!523 b!96) a0!49) (containsKey!774 (toList!11293 lm!249) a0!49)))))

(declare-fun lt!670039 () Unit!51728)

(declare-fun choose!2059 (List!36389 (_ BitVec 64) B!2246 (_ BitVec 64)) Unit!51728)

(assert (=> d!161737 (= lt!670039 (choose!2059 (toList!11293 lm!249) a!523 b!96 a0!49))))

(declare-fun e!865691 () Bool)

(assert (=> d!161737 e!865691))

(declare-fun res!1063937 () Bool)

(assert (=> d!161737 (=> (not res!1063937) (not e!865691))))

(assert (=> d!161737 (= res!1063937 (isStrictlySorted!902 (toList!11293 lm!249)))))

(assert (=> d!161737 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!13 (toList!11293 lm!249) a!523 b!96 a0!49) lt!670039)))

(declare-fun b!1554584 () Bool)

(assert (=> b!1554584 (= e!865691 (not (= a!523 a0!49)))))

(declare-fun b!1554585 () Bool)

(assert (=> b!1554585 (= e!865690 (= (getValueByKey!756 (insertStrictlySorted!516 (toList!11293 lm!249) a!523 b!96) a0!49) (getValueByKey!756 (toList!11293 lm!249) a0!49)))))

(assert (= (and d!161737 res!1063937) b!1554584))

(assert (= (and d!161737 res!1063938) b!1554585))

(assert (=> d!161737 m!1432695))

(declare-fun m!1432887 () Bool)

(assert (=> d!161737 m!1432887))

(assert (=> d!161737 m!1432719))

(declare-fun m!1432889 () Bool)

(assert (=> d!161737 m!1432889))

(assert (=> d!161737 m!1432715))

(assert (=> d!161737 m!1432719))

(assert (=> b!1554585 m!1432719))

(assert (=> b!1554585 m!1432719))

(declare-fun m!1432891 () Bool)

(assert (=> b!1554585 m!1432891))

(assert (=> b!1554585 m!1432699))

(assert (=> b!1554349 d!161737))

(declare-fun d!161741 () Bool)

(declare-fun e!865709 () Bool)

(assert (=> d!161741 e!865709))

(declare-fun res!1063951 () Bool)

(assert (=> d!161741 (=> res!1063951 e!865709)))

(declare-fun lt!670052 () Bool)

(assert (=> d!161741 (= res!1063951 (not lt!670052))))

(declare-fun lt!670055 () Bool)

(assert (=> d!161741 (= lt!670052 lt!670055)))

(declare-fun lt!670054 () Unit!51728)

(declare-fun e!865710 () Unit!51728)

(assert (=> d!161741 (= lt!670054 e!865710)))

(declare-fun c!143416 () Bool)

(assert (=> d!161741 (= c!143416 lt!670055)))

(assert (=> d!161741 (= lt!670055 (containsKey!774 (toList!11293 lm!249) a0!49))))

(assert (=> d!161741 (= (contains!10171 lm!249 a0!49) lt!670052)))

(declare-fun b!1554610 () Bool)

(declare-fun lt!670053 () Unit!51728)

(assert (=> b!1554610 (= e!865710 lt!670053)))

(assert (=> b!1554610 (= lt!670053 (lemmaContainsKeyImpliesGetValueByKeyDefined!515 (toList!11293 lm!249) a0!49))))

(assert (=> b!1554610 (isDefined!564 (getValueByKey!756 (toList!11293 lm!249) a0!49))))

(declare-fun b!1554611 () Bool)

(declare-fun Unit!51735 () Unit!51728)

(assert (=> b!1554611 (= e!865710 Unit!51735)))

(declare-fun b!1554612 () Bool)

(assert (=> b!1554612 (= e!865709 (isDefined!564 (getValueByKey!756 (toList!11293 lm!249) a0!49)))))

(assert (= (and d!161741 c!143416) b!1554610))

(assert (= (and d!161741 (not c!143416)) b!1554611))

(assert (= (and d!161741 (not res!1063951)) b!1554612))

(assert (=> d!161741 m!1432695))

(assert (=> b!1554610 m!1432707))

(assert (=> b!1554610 m!1432699))

(assert (=> b!1554610 m!1432699))

(assert (=> b!1554610 m!1432705))

(assert (=> b!1554612 m!1432699))

(assert (=> b!1554612 m!1432699))

(assert (=> b!1554612 m!1432705))

(assert (=> start!132640 d!161741))

(declare-fun d!161749 () Bool)

(assert (=> d!161749 (= (inv!57351 lm!249) (isStrictlySorted!902 (toList!11293 lm!249)))))

(declare-fun bs!44686 () Bool)

(assert (= bs!44686 d!161749))

(assert (=> bs!44686 m!1432715))

(assert (=> start!132640 d!161749))

(declare-fun d!161751 () Bool)

(declare-fun res!1063954 () Bool)

(declare-fun e!865715 () Bool)

(assert (=> d!161751 (=> res!1063954 e!865715)))

(assert (=> d!161751 (= res!1063954 (and (is-Cons!36385 (toList!11293 lm!249)) (= (_1!12477 (h!37832 (toList!11293 lm!249))) a0!49)))))

(assert (=> d!161751 (= (containsKey!774 (toList!11293 lm!249) a0!49) e!865715)))

(declare-fun b!1554619 () Bool)

(declare-fun e!865716 () Bool)

(assert (=> b!1554619 (= e!865715 e!865716)))

(declare-fun res!1063955 () Bool)

(assert (=> b!1554619 (=> (not res!1063955) (not e!865716))))

(assert (=> b!1554619 (= res!1063955 (and (or (not (is-Cons!36385 (toList!11293 lm!249))) (bvsle (_1!12477 (h!37832 (toList!11293 lm!249))) a0!49)) (is-Cons!36385 (toList!11293 lm!249)) (bvslt (_1!12477 (h!37832 (toList!11293 lm!249))) a0!49)))))

(declare-fun b!1554620 () Bool)

(assert (=> b!1554620 (= e!865716 (containsKey!774 (t!51117 (toList!11293 lm!249)) a0!49))))

(assert (= (and d!161751 (not res!1063954)) b!1554619))

(assert (= (and b!1554619 res!1063955) b!1554620))

(declare-fun m!1432911 () Bool)

(assert (=> b!1554620 m!1432911))

(assert (=> b!1554345 d!161751))

(declare-fun b!1554621 () Bool)

(declare-fun e!865717 () Option!831)

(assert (=> b!1554621 (= e!865717 (Some!830 (_2!12477 (h!37832 lt!669951))))))

(declare-fun b!1554622 () Bool)

(declare-fun e!865718 () Option!831)

(assert (=> b!1554622 (= e!865717 e!865718)))

(declare-fun c!143420 () Bool)

(assert (=> b!1554622 (= c!143420 (and (is-Cons!36385 lt!669951) (not (= (_1!12477 (h!37832 lt!669951)) a0!49))))))

(declare-fun b!1554623 () Bool)

(assert (=> b!1554623 (= e!865718 (getValueByKey!756 (t!51117 lt!669951) a0!49))))

(declare-fun b!1554624 () Bool)

(assert (=> b!1554624 (= e!865718 None!829)))

(declare-fun d!161753 () Bool)

(declare-fun c!143419 () Bool)

(assert (=> d!161753 (= c!143419 (and (is-Cons!36385 lt!669951) (= (_1!12477 (h!37832 lt!669951)) a0!49)))))

(assert (=> d!161753 (= (getValueByKey!756 lt!669951 a0!49) e!865717)))

(assert (= (and d!161753 c!143419) b!1554621))

(assert (= (and d!161753 (not c!143419)) b!1554622))

(assert (= (and b!1554622 c!143420) b!1554623))

(assert (= (and b!1554622 (not c!143420)) b!1554624))

(declare-fun m!1432913 () Bool)

(assert (=> b!1554623 m!1432913))

(assert (=> b!1554346 d!161753))

(assert (=> b!1554346 d!161675))

(declare-fun b!1554636 () Bool)

(declare-fun e!865727 () Bool)

(declare-fun tp!112210 () Bool)

(assert (=> b!1554636 (= e!865727 (and tp_is_empty!38257 tp!112210))))

(assert (=> b!1554347 (= tp!112201 e!865727)))

(assert (= (and b!1554347 (is-Cons!36385 (toList!11293 lm!249))) b!1554636))

(push 1)

(assert (not d!161683))

(assert (not b!1554585))

(assert (not d!161727))

(assert (not b!1554418))

(assert (not b!1554620))

