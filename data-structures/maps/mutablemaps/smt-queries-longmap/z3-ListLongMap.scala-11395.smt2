; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132642 () Bool)

(assert start!132642)

(declare-fun a!523 () (_ BitVec 64))

(declare-datatypes ((B!2248 0))(
  ( (B!2249 (val!19210 Int)) )
))
(declare-fun b!96 () B!2248)

(declare-datatypes ((tuple2!24936 0))(
  ( (tuple2!24937 (_1!12478 (_ BitVec 64)) (_2!12478 B!2248)) )
))
(declare-datatypes ((List!36390 0))(
  ( (Nil!36387) (Cons!36386 (h!37833 tuple2!24936) (t!51118 List!36390)) )
))
(declare-datatypes ((ListLongMap!22557 0))(
  ( (ListLongMap!22558 (toList!11294 List!36390)) )
))
(declare-fun lm!249 () ListLongMap!22557)

(declare-fun b!1554362 () Bool)

(declare-fun e!865550 () Bool)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun apply!1143 (ListLongMap!22557 (_ BitVec 64)) B!2248)

(declare-fun +!4979 (ListLongMap!22557 tuple2!24936) ListLongMap!22557)

(assert (=> b!1554362 (= e!865550 (= (apply!1143 (+!4979 lm!249 (tuple2!24937 a!523 b!96)) a0!49) (apply!1143 lm!249 a0!49)))))

(declare-datatypes ((Option!832 0))(
  ( (Some!831 (v!22012 B!2248)) (None!830) )
))
(declare-fun isDefined!565 (Option!832) Bool)

(declare-fun getValueByKey!757 (List!36390 (_ BitVec 64)) Option!832)

(assert (=> b!1554362 (isDefined!565 (getValueByKey!757 (toList!11294 lm!249) a0!49))))

(declare-datatypes ((Unit!51730 0))(
  ( (Unit!51731) )
))
(declare-fun lt!669960 () Unit!51730)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!516 (List!36390 (_ BitVec 64)) Unit!51730)

(assert (=> b!1554362 (= lt!669960 (lemmaContainsKeyImpliesGetValueByKeyDefined!516 (toList!11294 lm!249) a0!49))))

(declare-fun b!1554363 () Bool)

(declare-fun res!1063830 () Bool)

(declare-fun e!865549 () Bool)

(assert (=> b!1554363 (=> (not res!1063830) (not e!865549))))

(assert (=> b!1554363 (= res!1063830 (not (= a0!49 a!523)))))

(declare-fun b!1554364 () Bool)

(assert (=> b!1554364 (= e!865549 (not e!865550))))

(declare-fun res!1063829 () Bool)

(assert (=> b!1554364 (=> res!1063829 e!865550)))

(declare-fun isStrictlySorted!903 (List!36390) Bool)

(assert (=> b!1554364 (= res!1063829 (not (isStrictlySorted!903 (toList!11294 lm!249))))))

(declare-fun e!865548 () Bool)

(assert (=> b!1554364 e!865548))

(declare-fun res!1063833 () Bool)

(assert (=> b!1554364 (=> (not res!1063833) (not e!865548))))

(declare-fun lt!669961 () List!36390)

(declare-fun containsKey!775 (List!36390 (_ BitVec 64)) Bool)

(assert (=> b!1554364 (= res!1063833 (containsKey!775 lt!669961 a0!49))))

(declare-fun insertStrictlySorted!517 (List!36390 (_ BitVec 64) B!2248) List!36390)

(assert (=> b!1554364 (= lt!669961 (insertStrictlySorted!517 (toList!11294 lm!249) a!523 b!96))))

(declare-fun lt!669962 () Unit!51730)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!14 (List!36390 (_ BitVec 64) B!2248 (_ BitVec 64)) Unit!51730)

(assert (=> b!1554364 (= lt!669962 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!14 (toList!11294 lm!249) a!523 b!96 a0!49))))

(declare-fun res!1063832 () Bool)

(assert (=> start!132642 (=> (not res!1063832) (not e!865549))))

(declare-fun contains!10172 (ListLongMap!22557 (_ BitVec 64)) Bool)

(assert (=> start!132642 (= res!1063832 (contains!10172 lm!249 a0!49))))

(assert (=> start!132642 e!865549))

(declare-fun e!865551 () Bool)

(declare-fun inv!57352 (ListLongMap!22557) Bool)

(assert (=> start!132642 (and (inv!57352 lm!249) e!865551)))

(assert (=> start!132642 true))

(declare-fun tp_is_empty!38259 () Bool)

(assert (=> start!132642 tp_is_empty!38259))

(declare-fun b!1554365 () Bool)

(declare-fun res!1063831 () Bool)

(assert (=> b!1554365 (=> (not res!1063831) (not e!865549))))

(assert (=> b!1554365 (= res!1063831 (containsKey!775 (toList!11294 lm!249) a0!49))))

(declare-fun b!1554366 () Bool)

(assert (=> b!1554366 (= e!865548 (= (getValueByKey!757 lt!669961 a0!49) (getValueByKey!757 (toList!11294 lm!249) a0!49)))))

(declare-fun b!1554367 () Bool)

(declare-fun tp!112204 () Bool)

(assert (=> b!1554367 (= e!865551 tp!112204)))

(assert (= (and start!132642 res!1063832) b!1554363))

(assert (= (and b!1554363 res!1063830) b!1554365))

(assert (= (and b!1554365 res!1063831) b!1554364))

(assert (= (and b!1554364 res!1063833) b!1554366))

(assert (= (and b!1554364 (not res!1063829)) b!1554362))

(assert (= start!132642 b!1554367))

(declare-fun m!1432723 () Bool)

(assert (=> start!132642 m!1432723))

(declare-fun m!1432725 () Bool)

(assert (=> start!132642 m!1432725))

(declare-fun m!1432727 () Bool)

(assert (=> b!1554362 m!1432727))

(declare-fun m!1432729 () Bool)

(assert (=> b!1554362 m!1432729))

(declare-fun m!1432731 () Bool)

(assert (=> b!1554362 m!1432731))

(assert (=> b!1554362 m!1432729))

(declare-fun m!1432733 () Bool)

(assert (=> b!1554362 m!1432733))

(declare-fun m!1432735 () Bool)

(assert (=> b!1554362 m!1432735))

(assert (=> b!1554362 m!1432731))

(declare-fun m!1432737 () Bool)

(assert (=> b!1554362 m!1432737))

(declare-fun m!1432739 () Bool)

(assert (=> b!1554365 m!1432739))

(declare-fun m!1432741 () Bool)

(assert (=> b!1554366 m!1432741))

(assert (=> b!1554366 m!1432729))

(declare-fun m!1432743 () Bool)

(assert (=> b!1554364 m!1432743))

(declare-fun m!1432745 () Bool)

(assert (=> b!1554364 m!1432745))

(declare-fun m!1432747 () Bool)

(assert (=> b!1554364 m!1432747))

(declare-fun m!1432749 () Bool)

(assert (=> b!1554364 m!1432749))

(check-sat (not b!1554365) (not b!1554364) (not b!1554366) (not b!1554367) (not b!1554362) tp_is_empty!38259 (not start!132642))
(check-sat)
(get-model)

(declare-fun b!1554413 () Bool)

(declare-fun e!865580 () Option!832)

(declare-fun e!865581 () Option!832)

(assert (=> b!1554413 (= e!865580 e!865581)))

(declare-fun c!143366 () Bool)

(get-info :version)

(assert (=> b!1554413 (= c!143366 (and ((_ is Cons!36386) (toList!11294 lm!249)) (not (= (_1!12478 (h!37833 (toList!11294 lm!249))) a0!49))))))

(declare-fun b!1554412 () Bool)

(assert (=> b!1554412 (= e!865580 (Some!831 (_2!12478 (h!37833 (toList!11294 lm!249)))))))

(declare-fun d!161679 () Bool)

(declare-fun c!143365 () Bool)

(assert (=> d!161679 (= c!143365 (and ((_ is Cons!36386) (toList!11294 lm!249)) (= (_1!12478 (h!37833 (toList!11294 lm!249))) a0!49)))))

(assert (=> d!161679 (= (getValueByKey!757 (toList!11294 lm!249) a0!49) e!865580)))

(declare-fun b!1554415 () Bool)

(assert (=> b!1554415 (= e!865581 None!830)))

(declare-fun b!1554414 () Bool)

(assert (=> b!1554414 (= e!865581 (getValueByKey!757 (t!51118 (toList!11294 lm!249)) a0!49))))

(assert (= (and d!161679 c!143365) b!1554412))

(assert (= (and d!161679 (not c!143365)) b!1554413))

(assert (= (and b!1554413 c!143366) b!1554414))

(assert (= (and b!1554413 (not c!143366)) b!1554415))

(declare-fun m!1432785 () Bool)

(assert (=> b!1554414 m!1432785))

(assert (=> b!1554362 d!161679))

(declare-fun d!161687 () Bool)

(declare-fun isEmpty!1141 (Option!832) Bool)

(assert (=> d!161687 (= (isDefined!565 (getValueByKey!757 (toList!11294 lm!249) a0!49)) (not (isEmpty!1141 (getValueByKey!757 (toList!11294 lm!249) a0!49))))))

(declare-fun bs!44677 () Bool)

(assert (= bs!44677 d!161687))

(assert (=> bs!44677 m!1432729))

(declare-fun m!1432787 () Bool)

(assert (=> bs!44677 m!1432787))

(assert (=> b!1554362 d!161687))

(declare-fun d!161689 () Bool)

(assert (=> d!161689 (isDefined!565 (getValueByKey!757 (toList!11294 lm!249) a0!49))))

(declare-fun lt!669985 () Unit!51730)

(declare-fun choose!2057 (List!36390 (_ BitVec 64)) Unit!51730)

(assert (=> d!161689 (= lt!669985 (choose!2057 (toList!11294 lm!249) a0!49))))

(declare-fun e!865591 () Bool)

(assert (=> d!161689 e!865591))

(declare-fun res!1063862 () Bool)

(assert (=> d!161689 (=> (not res!1063862) (not e!865591))))

(assert (=> d!161689 (= res!1063862 (isStrictlySorted!903 (toList!11294 lm!249)))))

(assert (=> d!161689 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!516 (toList!11294 lm!249) a0!49) lt!669985)))

(declare-fun b!1554427 () Bool)

(assert (=> b!1554427 (= e!865591 (containsKey!775 (toList!11294 lm!249) a0!49))))

(assert (= (and d!161689 res!1063862) b!1554427))

(assert (=> d!161689 m!1432729))

(assert (=> d!161689 m!1432729))

(assert (=> d!161689 m!1432733))

(declare-fun m!1432797 () Bool)

(assert (=> d!161689 m!1432797))

(assert (=> d!161689 m!1432743))

(assert (=> b!1554427 m!1432739))

(assert (=> b!1554362 d!161689))

(declare-fun d!161697 () Bool)

(declare-fun get!26087 (Option!832) B!2248)

(assert (=> d!161697 (= (apply!1143 lm!249 a0!49) (get!26087 (getValueByKey!757 (toList!11294 lm!249) a0!49)))))

(declare-fun bs!44680 () Bool)

(assert (= bs!44680 d!161697))

(assert (=> bs!44680 m!1432729))

(assert (=> bs!44680 m!1432729))

(declare-fun m!1432799 () Bool)

(assert (=> bs!44680 m!1432799))

(assert (=> b!1554362 d!161697))

(declare-fun d!161699 () Bool)

(assert (=> d!161699 (= (apply!1143 (+!4979 lm!249 (tuple2!24937 a!523 b!96)) a0!49) (get!26087 (getValueByKey!757 (toList!11294 (+!4979 lm!249 (tuple2!24937 a!523 b!96))) a0!49)))))

(declare-fun bs!44681 () Bool)

(assert (= bs!44681 d!161699))

(declare-fun m!1432801 () Bool)

(assert (=> bs!44681 m!1432801))

(assert (=> bs!44681 m!1432801))

(declare-fun m!1432803 () Bool)

(assert (=> bs!44681 m!1432803))

(assert (=> b!1554362 d!161699))

(declare-fun d!161703 () Bool)

(declare-fun e!865613 () Bool)

(assert (=> d!161703 e!865613))

(declare-fun res!1063880 () Bool)

(assert (=> d!161703 (=> (not res!1063880) (not e!865613))))

(declare-fun lt!670014 () ListLongMap!22557)

(assert (=> d!161703 (= res!1063880 (contains!10172 lt!670014 (_1!12478 (tuple2!24937 a!523 b!96))))))

(declare-fun lt!670012 () List!36390)

(assert (=> d!161703 (= lt!670014 (ListLongMap!22558 lt!670012))))

(declare-fun lt!670015 () Unit!51730)

(declare-fun lt!670013 () Unit!51730)

(assert (=> d!161703 (= lt!670015 lt!670013)))

(assert (=> d!161703 (= (getValueByKey!757 lt!670012 (_1!12478 (tuple2!24937 a!523 b!96))) (Some!831 (_2!12478 (tuple2!24937 a!523 b!96))))))

(declare-fun lemmaContainsTupThenGetReturnValue!379 (List!36390 (_ BitVec 64) B!2248) Unit!51730)

(assert (=> d!161703 (= lt!670013 (lemmaContainsTupThenGetReturnValue!379 lt!670012 (_1!12478 (tuple2!24937 a!523 b!96)) (_2!12478 (tuple2!24937 a!523 b!96))))))

(assert (=> d!161703 (= lt!670012 (insertStrictlySorted!517 (toList!11294 lm!249) (_1!12478 (tuple2!24937 a!523 b!96)) (_2!12478 (tuple2!24937 a!523 b!96))))))

(assert (=> d!161703 (= (+!4979 lm!249 (tuple2!24937 a!523 b!96)) lt!670014)))

(declare-fun b!1554463 () Bool)

(declare-fun res!1063881 () Bool)

(assert (=> b!1554463 (=> (not res!1063881) (not e!865613))))

(assert (=> b!1554463 (= res!1063881 (= (getValueByKey!757 (toList!11294 lt!670014) (_1!12478 (tuple2!24937 a!523 b!96))) (Some!831 (_2!12478 (tuple2!24937 a!523 b!96)))))))

(declare-fun b!1554464 () Bool)

(declare-fun contains!10175 (List!36390 tuple2!24936) Bool)

(assert (=> b!1554464 (= e!865613 (contains!10175 (toList!11294 lt!670014) (tuple2!24937 a!523 b!96)))))

(assert (= (and d!161703 res!1063880) b!1554463))

(assert (= (and b!1554463 res!1063881) b!1554464))

(declare-fun m!1432823 () Bool)

(assert (=> d!161703 m!1432823))

(declare-fun m!1432825 () Bool)

(assert (=> d!161703 m!1432825))

(declare-fun m!1432827 () Bool)

(assert (=> d!161703 m!1432827))

(declare-fun m!1432829 () Bool)

(assert (=> d!161703 m!1432829))

(declare-fun m!1432831 () Bool)

(assert (=> b!1554463 m!1432831))

(declare-fun m!1432833 () Bool)

(assert (=> b!1554464 m!1432833))

(assert (=> b!1554362 d!161703))

(declare-fun d!161715 () Bool)

(declare-fun res!1063893 () Bool)

(declare-fun e!865625 () Bool)

(assert (=> d!161715 (=> res!1063893 e!865625)))

(assert (=> d!161715 (= res!1063893 (or ((_ is Nil!36387) (toList!11294 lm!249)) ((_ is Nil!36387) (t!51118 (toList!11294 lm!249)))))))

(assert (=> d!161715 (= (isStrictlySorted!903 (toList!11294 lm!249)) e!865625)))

(declare-fun b!1554476 () Bool)

(declare-fun e!865626 () Bool)

(assert (=> b!1554476 (= e!865625 e!865626)))

(declare-fun res!1063894 () Bool)

(assert (=> b!1554476 (=> (not res!1063894) (not e!865626))))

(assert (=> b!1554476 (= res!1063894 (bvslt (_1!12478 (h!37833 (toList!11294 lm!249))) (_1!12478 (h!37833 (t!51118 (toList!11294 lm!249))))))))

(declare-fun b!1554477 () Bool)

(assert (=> b!1554477 (= e!865626 (isStrictlySorted!903 (t!51118 (toList!11294 lm!249))))))

(assert (= (and d!161715 (not res!1063893)) b!1554476))

(assert (= (and b!1554476 res!1063894) b!1554477))

(declare-fun m!1432845 () Bool)

(assert (=> b!1554477 m!1432845))

(assert (=> b!1554364 d!161715))

(declare-fun d!161725 () Bool)

(declare-fun res!1063901 () Bool)

(declare-fun e!865633 () Bool)

(assert (=> d!161725 (=> res!1063901 e!865633)))

(assert (=> d!161725 (= res!1063901 (and ((_ is Cons!36386) lt!669961) (= (_1!12478 (h!37833 lt!669961)) a0!49)))))

(assert (=> d!161725 (= (containsKey!775 lt!669961 a0!49) e!865633)))

(declare-fun b!1554484 () Bool)

(declare-fun e!865634 () Bool)

(assert (=> b!1554484 (= e!865633 e!865634)))

(declare-fun res!1063902 () Bool)

(assert (=> b!1554484 (=> (not res!1063902) (not e!865634))))

(assert (=> b!1554484 (= res!1063902 (and (or (not ((_ is Cons!36386) lt!669961)) (bvsle (_1!12478 (h!37833 lt!669961)) a0!49)) ((_ is Cons!36386) lt!669961) (bvslt (_1!12478 (h!37833 lt!669961)) a0!49)))))

(declare-fun b!1554485 () Bool)

(assert (=> b!1554485 (= e!865634 (containsKey!775 (t!51118 lt!669961) a0!49))))

(assert (= (and d!161725 (not res!1063901)) b!1554484))

(assert (= (and b!1554484 res!1063902) b!1554485))

(declare-fun m!1432849 () Bool)

(assert (=> b!1554485 m!1432849))

(assert (=> b!1554364 d!161725))

(declare-fun bm!71437 () Bool)

(declare-fun call!71441 () List!36390)

(declare-fun call!71442 () List!36390)

(assert (=> bm!71437 (= call!71441 call!71442)))

(declare-fun c!143401 () Bool)

(declare-fun b!1554550 () Bool)

(declare-fun e!865674 () List!36390)

(declare-fun c!143400 () Bool)

(assert (=> b!1554550 (= e!865674 (ite c!143401 (t!51118 (toList!11294 lm!249)) (ite c!143400 (Cons!36386 (h!37833 (toList!11294 lm!249)) (t!51118 (toList!11294 lm!249))) Nil!36387)))))

(declare-fun b!1554551 () Bool)

(assert (=> b!1554551 (= e!865674 (insertStrictlySorted!517 (t!51118 (toList!11294 lm!249)) a!523 b!96))))

(declare-fun e!865673 () Bool)

(declare-fun b!1554552 () Bool)

(declare-fun lt!670034 () List!36390)

(assert (=> b!1554552 (= e!865673 (contains!10175 lt!670034 (tuple2!24937 a!523 b!96)))))

(declare-fun b!1554553 () Bool)

(assert (=> b!1554553 (= c!143400 (and ((_ is Cons!36386) (toList!11294 lm!249)) (bvsgt (_1!12478 (h!37833 (toList!11294 lm!249))) a!523)))))

(declare-fun e!865672 () List!36390)

(declare-fun e!865675 () List!36390)

(assert (=> b!1554553 (= e!865672 e!865675)))

(declare-fun b!1554554 () Bool)

(declare-fun call!71440 () List!36390)

(assert (=> b!1554554 (= e!865675 call!71440)))

(declare-fun b!1554555 () Bool)

(declare-fun e!865671 () List!36390)

(assert (=> b!1554555 (= e!865671 e!865672)))

(assert (=> b!1554555 (= c!143401 (and ((_ is Cons!36386) (toList!11294 lm!249)) (= (_1!12478 (h!37833 (toList!11294 lm!249))) a!523)))))

(declare-fun b!1554557 () Bool)

(assert (=> b!1554557 (= e!865671 call!71442)))

(declare-fun bm!71438 () Bool)

(assert (=> bm!71438 (= call!71440 call!71441)))

(declare-fun b!1554558 () Bool)

(assert (=> b!1554558 (= e!865672 call!71441)))

(declare-fun b!1554556 () Bool)

(declare-fun res!1063928 () Bool)

(assert (=> b!1554556 (=> (not res!1063928) (not e!865673))))

(assert (=> b!1554556 (= res!1063928 (containsKey!775 lt!670034 a!523))))

(declare-fun d!161729 () Bool)

(assert (=> d!161729 e!865673))

(declare-fun res!1063927 () Bool)

(assert (=> d!161729 (=> (not res!1063927) (not e!865673))))

(assert (=> d!161729 (= res!1063927 (isStrictlySorted!903 lt!670034))))

(assert (=> d!161729 (= lt!670034 e!865671)))

(declare-fun c!143398 () Bool)

(assert (=> d!161729 (= c!143398 (and ((_ is Cons!36386) (toList!11294 lm!249)) (bvslt (_1!12478 (h!37833 (toList!11294 lm!249))) a!523)))))

(assert (=> d!161729 (isStrictlySorted!903 (toList!11294 lm!249))))

(assert (=> d!161729 (= (insertStrictlySorted!517 (toList!11294 lm!249) a!523 b!96) lt!670034)))

(declare-fun b!1554559 () Bool)

(assert (=> b!1554559 (= e!865675 call!71440)))

(declare-fun bm!71439 () Bool)

(declare-fun $colon$colon!954 (List!36390 tuple2!24936) List!36390)

(assert (=> bm!71439 (= call!71442 ($colon$colon!954 e!865674 (ite c!143398 (h!37833 (toList!11294 lm!249)) (tuple2!24937 a!523 b!96))))))

(declare-fun c!143399 () Bool)

(assert (=> bm!71439 (= c!143399 c!143398)))

(assert (= (and d!161729 c!143398) b!1554557))

(assert (= (and d!161729 (not c!143398)) b!1554555))

(assert (= (and b!1554555 c!143401) b!1554558))

(assert (= (and b!1554555 (not c!143401)) b!1554553))

(assert (= (and b!1554553 c!143400) b!1554559))

(assert (= (and b!1554553 (not c!143400)) b!1554554))

(assert (= (or b!1554559 b!1554554) bm!71438))

(assert (= (or b!1554558 bm!71438) bm!71437))

(assert (= (or b!1554557 bm!71437) bm!71439))

(assert (= (and bm!71439 c!143399) b!1554551))

(assert (= (and bm!71439 (not c!143399)) b!1554550))

(assert (= (and d!161729 res!1063927) b!1554556))

(assert (= (and b!1554556 res!1063928) b!1554552))

(declare-fun m!1432877 () Bool)

(assert (=> b!1554551 m!1432877))

(declare-fun m!1432879 () Bool)

(assert (=> b!1554552 m!1432879))

(declare-fun m!1432881 () Bool)

(assert (=> bm!71439 m!1432881))

(declare-fun m!1432883 () Bool)

(assert (=> b!1554556 m!1432883))

(declare-fun m!1432885 () Bool)

(assert (=> d!161729 m!1432885))

(assert (=> d!161729 m!1432743))

(assert (=> b!1554364 d!161729))

(declare-fun d!161739 () Bool)

(declare-fun e!865697 () Bool)

(assert (=> d!161739 e!865697))

(declare-fun res!1063943 () Bool)

(assert (=> d!161739 (=> (not res!1063943) (not e!865697))))

(assert (=> d!161739 (= res!1063943 (= (containsKey!775 (insertStrictlySorted!517 (toList!11294 lm!249) a!523 b!96) a0!49) (containsKey!775 (toList!11294 lm!249) a0!49)))))

(declare-fun lt!670042 () Unit!51730)

(declare-fun choose!2060 (List!36390 (_ BitVec 64) B!2248 (_ BitVec 64)) Unit!51730)

(assert (=> d!161739 (= lt!670042 (choose!2060 (toList!11294 lm!249) a!523 b!96 a0!49))))

(declare-fun e!865696 () Bool)

(assert (=> d!161739 e!865696))

(declare-fun res!1063944 () Bool)

(assert (=> d!161739 (=> (not res!1063944) (not e!865696))))

(assert (=> d!161739 (= res!1063944 (isStrictlySorted!903 (toList!11294 lm!249)))))

(assert (=> d!161739 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!14 (toList!11294 lm!249) a!523 b!96 a0!49) lt!670042)))

(declare-fun b!1554590 () Bool)

(assert (=> b!1554590 (= e!865696 (not (= a!523 a0!49)))))

(declare-fun b!1554591 () Bool)

(assert (=> b!1554591 (= e!865697 (= (getValueByKey!757 (insertStrictlySorted!517 (toList!11294 lm!249) a!523 b!96) a0!49) (getValueByKey!757 (toList!11294 lm!249) a0!49)))))

(assert (= (and d!161739 res!1063944) b!1554590))

(assert (= (and d!161739 res!1063943) b!1554591))

(assert (=> d!161739 m!1432747))

(declare-fun m!1432893 () Bool)

(assert (=> d!161739 m!1432893))

(assert (=> d!161739 m!1432747))

(assert (=> d!161739 m!1432739))

(declare-fun m!1432895 () Bool)

(assert (=> d!161739 m!1432895))

(assert (=> d!161739 m!1432743))

(assert (=> b!1554591 m!1432747))

(assert (=> b!1554591 m!1432747))

(declare-fun m!1432897 () Bool)

(assert (=> b!1554591 m!1432897))

(assert (=> b!1554591 m!1432729))

(assert (=> b!1554364 d!161739))

(declare-fun d!161743 () Bool)

(declare-fun res!1063945 () Bool)

(declare-fun e!865698 () Bool)

(assert (=> d!161743 (=> res!1063945 e!865698)))

(assert (=> d!161743 (= res!1063945 (and ((_ is Cons!36386) (toList!11294 lm!249)) (= (_1!12478 (h!37833 (toList!11294 lm!249))) a0!49)))))

(assert (=> d!161743 (= (containsKey!775 (toList!11294 lm!249) a0!49) e!865698)))

(declare-fun b!1554592 () Bool)

(declare-fun e!865699 () Bool)

(assert (=> b!1554592 (= e!865698 e!865699)))

(declare-fun res!1063946 () Bool)

(assert (=> b!1554592 (=> (not res!1063946) (not e!865699))))

(assert (=> b!1554592 (= res!1063946 (and (or (not ((_ is Cons!36386) (toList!11294 lm!249))) (bvsle (_1!12478 (h!37833 (toList!11294 lm!249))) a0!49)) ((_ is Cons!36386) (toList!11294 lm!249)) (bvslt (_1!12478 (h!37833 (toList!11294 lm!249))) a0!49)))))

(declare-fun b!1554593 () Bool)

(assert (=> b!1554593 (= e!865699 (containsKey!775 (t!51118 (toList!11294 lm!249)) a0!49))))

(assert (= (and d!161743 (not res!1063945)) b!1554592))

(assert (= (and b!1554592 res!1063946) b!1554593))

(declare-fun m!1432899 () Bool)

(assert (=> b!1554593 m!1432899))

(assert (=> b!1554365 d!161743))

(declare-fun d!161745 () Bool)

(declare-fun e!865725 () Bool)

(assert (=> d!161745 e!865725))

(declare-fun res!1063960 () Bool)

(assert (=> d!161745 (=> res!1063960 e!865725)))

(declare-fun lt!670067 () Bool)

(assert (=> d!161745 (= res!1063960 (not lt!670067))))

(declare-fun lt!670069 () Bool)

(assert (=> d!161745 (= lt!670067 lt!670069)))

(declare-fun lt!670068 () Unit!51730)

(declare-fun e!865726 () Unit!51730)

(assert (=> d!161745 (= lt!670068 e!865726)))

(declare-fun c!143421 () Bool)

(assert (=> d!161745 (= c!143421 lt!670069)))

(assert (=> d!161745 (= lt!670069 (containsKey!775 (toList!11294 lm!249) a0!49))))

(assert (=> d!161745 (= (contains!10172 lm!249 a0!49) lt!670067)))

(declare-fun b!1554633 () Bool)

(declare-fun lt!670066 () Unit!51730)

(assert (=> b!1554633 (= e!865726 lt!670066)))

(assert (=> b!1554633 (= lt!670066 (lemmaContainsKeyImpliesGetValueByKeyDefined!516 (toList!11294 lm!249) a0!49))))

(assert (=> b!1554633 (isDefined!565 (getValueByKey!757 (toList!11294 lm!249) a0!49))))

(declare-fun b!1554634 () Bool)

(declare-fun Unit!51736 () Unit!51730)

(assert (=> b!1554634 (= e!865726 Unit!51736)))

(declare-fun b!1554635 () Bool)

(assert (=> b!1554635 (= e!865725 (isDefined!565 (getValueByKey!757 (toList!11294 lm!249) a0!49)))))

(assert (= (and d!161745 c!143421) b!1554633))

(assert (= (and d!161745 (not c!143421)) b!1554634))

(assert (= (and d!161745 (not res!1063960)) b!1554635))

(assert (=> d!161745 m!1432739))

(assert (=> b!1554633 m!1432735))

(assert (=> b!1554633 m!1432729))

(assert (=> b!1554633 m!1432729))

(assert (=> b!1554633 m!1432733))

(assert (=> b!1554635 m!1432729))

(assert (=> b!1554635 m!1432729))

(assert (=> b!1554635 m!1432733))

(assert (=> start!132642 d!161745))

(declare-fun d!161755 () Bool)

(assert (=> d!161755 (= (inv!57352 lm!249) (isStrictlySorted!903 (toList!11294 lm!249)))))

(declare-fun bs!44687 () Bool)

(assert (= bs!44687 d!161755))

(assert (=> bs!44687 m!1432743))

(assert (=> start!132642 d!161755))

(declare-fun b!1554640 () Bool)

(declare-fun e!865730 () Option!832)

(declare-fun e!865731 () Option!832)

(assert (=> b!1554640 (= e!865730 e!865731)))

(declare-fun c!143423 () Bool)

(assert (=> b!1554640 (= c!143423 (and ((_ is Cons!36386) lt!669961) (not (= (_1!12478 (h!37833 lt!669961)) a0!49))))))

(declare-fun b!1554639 () Bool)

(assert (=> b!1554639 (= e!865730 (Some!831 (_2!12478 (h!37833 lt!669961))))))

(declare-fun d!161757 () Bool)

(declare-fun c!143422 () Bool)

(assert (=> d!161757 (= c!143422 (and ((_ is Cons!36386) lt!669961) (= (_1!12478 (h!37833 lt!669961)) a0!49)))))

(assert (=> d!161757 (= (getValueByKey!757 lt!669961 a0!49) e!865730)))

(declare-fun b!1554642 () Bool)

(assert (=> b!1554642 (= e!865731 None!830)))

(declare-fun b!1554641 () Bool)

(assert (=> b!1554641 (= e!865731 (getValueByKey!757 (t!51118 lt!669961) a0!49))))

(assert (= (and d!161757 c!143422) b!1554639))

(assert (= (and d!161757 (not c!143422)) b!1554640))

(assert (= (and b!1554640 c!143423) b!1554641))

(assert (= (and b!1554640 (not c!143423)) b!1554642))

(declare-fun m!1432915 () Bool)

(assert (=> b!1554641 m!1432915))

(assert (=> b!1554366 d!161757))

(assert (=> b!1554366 d!161679))

(declare-fun b!1554651 () Bool)

(declare-fun e!865736 () Bool)

(declare-fun tp!112215 () Bool)

(assert (=> b!1554651 (= e!865736 (and tp_is_empty!38259 tp!112215))))

(assert (=> b!1554367 (= tp!112204 e!865736)))

(assert (= (and b!1554367 ((_ is Cons!36386) (toList!11294 lm!249))) b!1554651))

(check-sat (not b!1554551) (not b!1554463) (not bm!71439) (not b!1554485) (not b!1554464) (not d!161739) (not b!1554593) (not d!161697) (not b!1554635) (not d!161689) (not d!161699) tp_is_empty!38259 (not d!161745) (not b!1554477) (not d!161687) (not d!161703) (not d!161755) (not b!1554552) (not b!1554556) (not b!1554427) (not b!1554414) (not b!1554633) (not b!1554651) (not b!1554641) (not b!1554591) (not d!161729))
(check-sat)
