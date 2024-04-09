; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132592 () Bool)

(assert start!132592)

(declare-fun b!1554057 () Bool)

(declare-fun e!865352 () Bool)

(declare-datatypes ((B!2240 0))(
  ( (B!2241 (val!19206 Int)) )
))
(declare-datatypes ((tuple2!24928 0))(
  ( (tuple2!24929 (_1!12474 (_ BitVec 64)) (_2!12474 B!2240)) )
))
(declare-datatypes ((List!36386 0))(
  ( (Nil!36383) (Cons!36382 (h!37829 tuple2!24928) (t!51114 List!36386)) )
))
(declare-datatypes ((ListLongMap!22549 0))(
  ( (ListLongMap!22550 (toList!11290 List!36386)) )
))
(declare-fun lm!249 () ListLongMap!22549)

(declare-fun lt!669878 () List!36386)

(declare-fun a0!49 () (_ BitVec 64))

(declare-datatypes ((Option!828 0))(
  ( (Some!827 (v!22008 B!2240)) (None!826) )
))
(declare-fun getValueByKey!753 (List!36386 (_ BitVec 64)) Option!828)

(assert (=> b!1554057 (= e!865352 (= (getValueByKey!753 lt!669878 a0!49) (getValueByKey!753 (toList!11290 lm!249) a0!49)))))

(declare-fun b!1554058 () Bool)

(declare-fun e!865353 () Bool)

(declare-fun tp!112183 () Bool)

(assert (=> b!1554058 (= e!865353 tp!112183)))

(declare-fun b!1554059 () Bool)

(declare-fun e!865351 () Bool)

(declare-fun isStrictlySorted!899 (List!36386) Bool)

(assert (=> b!1554059 (= e!865351 (not (isStrictlySorted!899 (toList!11290 lm!249))))))

(assert (=> b!1554059 e!865352))

(declare-fun res!1063692 () Bool)

(assert (=> b!1554059 (=> (not res!1063692) (not e!865352))))

(declare-fun containsKey!771 (List!36386 (_ BitVec 64)) Bool)

(assert (=> b!1554059 (= res!1063692 (containsKey!771 lt!669878 a0!49))))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2240)

(declare-fun insertStrictlySorted!513 (List!36386 (_ BitVec 64) B!2240) List!36386)

(assert (=> b!1554059 (= lt!669878 (insertStrictlySorted!513 (toList!11290 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51720 0))(
  ( (Unit!51721) )
))
(declare-fun lt!669877 () Unit!51720)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!10 (List!36386 (_ BitVec 64) B!2240 (_ BitVec 64)) Unit!51720)

(assert (=> b!1554059 (= lt!669877 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!10 (toList!11290 lm!249) a!523 b!96 a0!49))))

(declare-fun res!1063690 () Bool)

(assert (=> start!132592 (=> (not res!1063690) (not e!865351))))

(declare-fun contains!10165 (ListLongMap!22549 (_ BitVec 64)) Bool)

(assert (=> start!132592 (= res!1063690 (contains!10165 lm!249 a0!49))))

(assert (=> start!132592 e!865351))

(declare-fun inv!57343 (ListLongMap!22549) Bool)

(assert (=> start!132592 (and (inv!57343 lm!249) e!865353)))

(assert (=> start!132592 true))

(declare-fun tp_is_empty!38251 () Bool)

(assert (=> start!132592 tp_is_empty!38251))

(declare-fun b!1554060 () Bool)

(declare-fun res!1063691 () Bool)

(assert (=> b!1554060 (=> (not res!1063691) (not e!865351))))

(assert (=> b!1554060 (= res!1063691 (containsKey!771 (toList!11290 lm!249) a0!49))))

(declare-fun b!1554061 () Bool)

(declare-fun res!1063689 () Bool)

(assert (=> b!1554061 (=> (not res!1063689) (not e!865351))))

(assert (=> b!1554061 (= res!1063689 (not (= a0!49 a!523)))))

(assert (= (and start!132592 res!1063690) b!1554061))

(assert (= (and b!1554061 res!1063689) b!1554060))

(assert (= (and b!1554060 res!1063691) b!1554059))

(assert (= (and b!1554059 res!1063692) b!1554057))

(assert (= start!132592 b!1554058))

(declare-fun m!1432551 () Bool)

(assert (=> b!1554057 m!1432551))

(declare-fun m!1432553 () Bool)

(assert (=> b!1554057 m!1432553))

(declare-fun m!1432555 () Bool)

(assert (=> b!1554059 m!1432555))

(declare-fun m!1432557 () Bool)

(assert (=> b!1554059 m!1432557))

(declare-fun m!1432559 () Bool)

(assert (=> b!1554059 m!1432559))

(declare-fun m!1432561 () Bool)

(assert (=> b!1554059 m!1432561))

(declare-fun m!1432563 () Bool)

(assert (=> start!132592 m!1432563))

(declare-fun m!1432565 () Bool)

(assert (=> start!132592 m!1432565))

(declare-fun m!1432567 () Bool)

(assert (=> b!1554060 m!1432567))

(push 1)

(assert tp_is_empty!38251)

(assert (not b!1554060))

(assert (not b!1554057))

(assert (not start!132592))

(assert (not b!1554058))

(assert (not b!1554059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161623 () Bool)

(declare-fun res!1063727 () Bool)

(declare-fun e!865386 () Bool)

(assert (=> d!161623 (=> res!1063727 e!865386)))

(assert (=> d!161623 (= res!1063727 (or (is-Nil!36383 (toList!11290 lm!249)) (is-Nil!36383 (t!51114 (toList!11290 lm!249)))))))

(assert (=> d!161623 (= (isStrictlySorted!899 (toList!11290 lm!249)) e!865386)))

(declare-fun b!1554110 () Bool)

(declare-fun e!865387 () Bool)

(assert (=> b!1554110 (= e!865386 e!865387)))

(declare-fun res!1063728 () Bool)

(assert (=> b!1554110 (=> (not res!1063728) (not e!865387))))

(assert (=> b!1554110 (= res!1063728 (bvslt (_1!12474 (h!37829 (toList!11290 lm!249))) (_1!12474 (h!37829 (t!51114 (toList!11290 lm!249))))))))

(declare-fun b!1554111 () Bool)

(assert (=> b!1554111 (= e!865387 (isStrictlySorted!899 (t!51114 (toList!11290 lm!249))))))

(assert (= (and d!161623 (not res!1063727)) b!1554110))

(assert (= (and b!1554110 res!1063728) b!1554111))

(declare-fun m!1432607 () Bool)

(assert (=> b!1554111 m!1432607))

(assert (=> b!1554059 d!161623))

(declare-fun d!161627 () Bool)

(declare-fun res!1063745 () Bool)

(declare-fun e!865408 () Bool)

(assert (=> d!161627 (=> res!1063745 e!865408)))

(assert (=> d!161627 (= res!1063745 (and (is-Cons!36382 lt!669878) (= (_1!12474 (h!37829 lt!669878)) a0!49)))))

(assert (=> d!161627 (= (containsKey!771 lt!669878 a0!49) e!865408)))

(declare-fun b!1554136 () Bool)

(declare-fun e!865409 () Bool)

(assert (=> b!1554136 (= e!865408 e!865409)))

(declare-fun res!1063746 () Bool)

(assert (=> b!1554136 (=> (not res!1063746) (not e!865409))))

(assert (=> b!1554136 (= res!1063746 (and (or (not (is-Cons!36382 lt!669878)) (bvsle (_1!12474 (h!37829 lt!669878)) a0!49)) (is-Cons!36382 lt!669878) (bvslt (_1!12474 (h!37829 lt!669878)) a0!49)))))

(declare-fun b!1554137 () Bool)

(assert (=> b!1554137 (= e!865409 (containsKey!771 (t!51114 lt!669878) a0!49))))

(assert (= (and d!161627 (not res!1063745)) b!1554136))

(assert (= (and b!1554136 res!1063746) b!1554137))

(declare-fun m!1432617 () Bool)

(assert (=> b!1554137 m!1432617))

(assert (=> b!1554059 d!161627))

(declare-fun b!1554214 () Bool)

(declare-fun e!865456 () List!36386)

(declare-fun e!865453 () List!36386)

(assert (=> b!1554214 (= e!865456 e!865453)))

(declare-fun c!143323 () Bool)

(assert (=> b!1554214 (= c!143323 (and (is-Cons!36382 (toList!11290 lm!249)) (= (_1!12474 (h!37829 (toList!11290 lm!249))) a!523)))))

(declare-fun b!1554215 () Bool)

(declare-fun e!865455 () List!36386)

(declare-fun call!71420 () List!36386)

(assert (=> b!1554215 (= e!865455 call!71420)))

(declare-fun bm!71416 () Bool)

(declare-fun call!71421 () List!36386)

(declare-fun call!71419 () List!36386)

(assert (=> bm!71416 (= call!71421 call!71419)))

(declare-fun lt!669898 () List!36386)

(declare-fun b!1554216 () Bool)

(declare-fun e!865457 () Bool)

(declare-fun contains!10168 (List!36386 tuple2!24928) Bool)

(assert (=> b!1554216 (= e!865457 (contains!10168 lt!669898 (tuple2!24929 a!523 b!96)))))

(declare-fun b!1554217 () Bool)

(assert (=> b!1554217 (= e!865453 call!71421)))

(declare-fun b!1554218 () Bool)

(declare-fun c!143325 () Bool)

(declare-fun e!865454 () List!36386)

(assert (=> b!1554218 (= e!865454 (ite c!143323 (t!51114 (toList!11290 lm!249)) (ite c!143325 (Cons!36382 (h!37829 (toList!11290 lm!249)) (t!51114 (toList!11290 lm!249))) Nil!36383)))))

(declare-fun d!161637 () Bool)

(assert (=> d!161637 e!865457))

(declare-fun res!1063767 () Bool)

(assert (=> d!161637 (=> (not res!1063767) (not e!865457))))

(assert (=> d!161637 (= res!1063767 (isStrictlySorted!899 lt!669898))))

(assert (=> d!161637 (= lt!669898 e!865456)))

(declare-fun c!143324 () Bool)

(assert (=> d!161637 (= c!143324 (and (is-Cons!36382 (toList!11290 lm!249)) (bvslt (_1!12474 (h!37829 (toList!11290 lm!249))) a!523)))))

(assert (=> d!161637 (isStrictlySorted!899 (toList!11290 lm!249))))

(assert (=> d!161637 (= (insertStrictlySorted!513 (toList!11290 lm!249) a!523 b!96) lt!669898)))

(declare-fun b!1554219 () Bool)

(assert (=> b!1554219 (= c!143325 (and (is-Cons!36382 (toList!11290 lm!249)) (bvsgt (_1!12474 (h!37829 (toList!11290 lm!249))) a!523)))))

(assert (=> b!1554219 (= e!865453 e!865455)))

(declare-fun b!1554220 () Bool)

(assert (=> b!1554220 (= e!865455 call!71420)))

(declare-fun b!1554221 () Bool)

(assert (=> b!1554221 (= e!865456 call!71419)))

(declare-fun bm!71417 () Bool)

(declare-fun $colon$colon!951 (List!36386 tuple2!24928) List!36386)

(assert (=> bm!71417 (= call!71419 ($colon$colon!951 e!865454 (ite c!143324 (h!37829 (toList!11290 lm!249)) (tuple2!24929 a!523 b!96))))))

(declare-fun c!143322 () Bool)

(assert (=> bm!71417 (= c!143322 c!143324)))

(declare-fun b!1554222 () Bool)

(declare-fun res!1063768 () Bool)

(assert (=> b!1554222 (=> (not res!1063768) (not e!865457))))

(assert (=> b!1554222 (= res!1063768 (containsKey!771 lt!669898 a!523))))

(declare-fun bm!71418 () Bool)

(assert (=> bm!71418 (= call!71420 call!71421)))

(declare-fun b!1554223 () Bool)

(assert (=> b!1554223 (= e!865454 (insertStrictlySorted!513 (t!51114 (toList!11290 lm!249)) a!523 b!96))))

(assert (= (and d!161637 c!143324) b!1554221))

(assert (= (and d!161637 (not c!143324)) b!1554214))

(assert (= (and b!1554214 c!143323) b!1554217))

(assert (= (and b!1554214 (not c!143323)) b!1554219))

(assert (= (and b!1554219 c!143325) b!1554220))

(assert (= (and b!1554219 (not c!143325)) b!1554215))

(assert (= (or b!1554220 b!1554215) bm!71418))

(assert (= (or b!1554217 bm!71418) bm!71416))

(assert (= (or b!1554221 bm!71416) bm!71417))

(assert (= (and bm!71417 c!143322) b!1554223))

(assert (= (and bm!71417 (not c!143322)) b!1554218))

(assert (= (and d!161637 res!1063767) b!1554222))

(assert (= (and b!1554222 res!1063768) b!1554216))

(declare-fun m!1432635 () Bool)

(assert (=> d!161637 m!1432635))

(assert (=> d!161637 m!1432555))

(declare-fun m!1432637 () Bool)

(assert (=> b!1554223 m!1432637))

(declare-fun m!1432639 () Bool)

(assert (=> bm!71417 m!1432639))

(declare-fun m!1432641 () Bool)

(assert (=> b!1554216 m!1432641))

(declare-fun m!1432643 () Bool)

(assert (=> b!1554222 m!1432643))

(assert (=> b!1554059 d!161637))

(declare-fun d!161647 () Bool)

(declare-fun e!865476 () Bool)

(assert (=> d!161647 e!865476))

(declare-fun res!1063785 () Bool)

(assert (=> d!161647 (=> (not res!1063785) (not e!865476))))

(assert (=> d!161647 (= res!1063785 (= (containsKey!771 (insertStrictlySorted!513 (toList!11290 lm!249) a!523 b!96) a0!49) (containsKey!771 (toList!11290 lm!249) a0!49)))))

(declare-fun lt!669905 () Unit!51720)

(declare-fun choose!2053 (List!36386 (_ BitVec 64) B!2240 (_ BitVec 64)) Unit!51720)

(assert (=> d!161647 (= lt!669905 (choose!2053 (toList!11290 lm!249) a!523 b!96 a0!49))))

(declare-fun e!865475 () Bool)

(assert (=> d!161647 e!865475))

(declare-fun res!1063786 () Bool)

(assert (=> d!161647 (=> (not res!1063786) (not e!865475))))

(assert (=> d!161647 (= res!1063786 (isStrictlySorted!899 (toList!11290 lm!249)))))

(assert (=> d!161647 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!10 (toList!11290 lm!249) a!523 b!96 a0!49) lt!669905)))

(declare-fun b!1554248 () Bool)

(assert (=> b!1554248 (= e!865475 (not (= a!523 a0!49)))))

(declare-fun b!1554249 () Bool)

(assert (=> b!1554249 (= e!865476 (= (getValueByKey!753 (insertStrictlySorted!513 (toList!11290 lm!249) a!523 b!96) a0!49) (getValueByKey!753 (toList!11290 lm!249) a0!49)))))

(assert (= (and d!161647 res!1063786) b!1554248))

(assert (= (and d!161647 res!1063785) b!1554249))

(assert (=> d!161647 m!1432555))

(assert (=> d!161647 m!1432559))

(assert (=> d!161647 m!1432567))

(assert (=> d!161647 m!1432559))

(declare-fun m!1432661 () Bool)

(assert (=> d!161647 m!1432661))

(declare-fun m!1432663 () Bool)

(assert (=> d!161647 m!1432663))

(assert (=> b!1554249 m!1432559))

(assert (=> b!1554249 m!1432559))

(declare-fun m!1432665 () Bool)

(assert (=> b!1554249 m!1432665))

(assert (=> b!1554249 m!1432553))

(assert (=> b!1554059 d!161647))

(declare-fun d!161653 () Bool)

(declare-fun e!865494 () Bool)

(assert (=> d!161653 e!865494))

(declare-fun res!1063798 () Bool)

(assert (=> d!161653 (=> res!1063798 e!865494)))

(declare-fun lt!669929 () Bool)

(assert (=> d!161653 (= res!1063798 (not lt!669929))))

(declare-fun lt!669931 () Bool)

(assert (=> d!161653 (= lt!669929 lt!669931)))

(declare-fun lt!669932 () Unit!51720)

(declare-fun e!865493 () Unit!51720)

(assert (=> d!161653 (= lt!669932 e!865493)))

(declare-fun c!143335 () Bool)

(assert (=> d!161653 (= c!143335 lt!669931)))

(assert (=> d!161653 (= lt!669931 (containsKey!771 (toList!11290 lm!249) a0!49))))

(assert (=> d!161653 (= (contains!10165 lm!249 a0!49) lt!669929)))

(declare-fun b!1554271 () Bool)

(declare-fun lt!669930 () Unit!51720)

(assert (=> b!1554271 (= e!865493 lt!669930)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!514 (List!36386 (_ BitVec 64)) Unit!51720)

(assert (=> b!1554271 (= lt!669930 (lemmaContainsKeyImpliesGetValueByKeyDefined!514 (toList!11290 lm!249) a0!49))))

(declare-fun isDefined!563 (Option!828) Bool)

(assert (=> b!1554271 (isDefined!563 (getValueByKey!753 (toList!11290 lm!249) a0!49))))

(declare-fun b!1554272 () Bool)

(declare-fun Unit!51727 () Unit!51720)

(assert (=> b!1554272 (= e!865493 Unit!51727)))

(declare-fun b!1554273 () Bool)

(assert (=> b!1554273 (= e!865494 (isDefined!563 (getValueByKey!753 (toList!11290 lm!249) a0!49)))))

(assert (= (and d!161653 c!143335) b!1554271))

(assert (= (and d!161653 (not c!143335)) b!1554272))

(assert (= (and d!161653 (not res!1063798)) b!1554273))

(assert (=> d!161653 m!1432567))

(declare-fun m!1432677 () Bool)

(assert (=> b!1554271 m!1432677))

(assert (=> b!1554271 m!1432553))

(assert (=> b!1554271 m!1432553))

(declare-fun m!1432679 () Bool)

(assert (=> b!1554271 m!1432679))

(assert (=> b!1554273 m!1432553))

(assert (=> b!1554273 m!1432553))

(assert (=> b!1554273 m!1432679))

(assert (=> start!132592 d!161653))

(declare-fun d!161659 () Bool)

(assert (=> d!161659 (= (inv!57343 lm!249) (isStrictlySorted!899 (toList!11290 lm!249)))))

(declare-fun bs!44671 () Bool)

(assert (= bs!44671 d!161659))

(assert (=> bs!44671 m!1432555))

(assert (=> start!132592 d!161659))

(declare-fun b!1554306 () Bool)

(declare-fun e!865511 () Option!828)

(declare-fun e!865512 () Option!828)

(assert (=> b!1554306 (= e!865511 e!865512)))

(declare-fun c!143350 () Bool)

(assert (=> b!1554306 (= c!143350 (and (is-Cons!36382 lt!669878) (not (= (_1!12474 (h!37829 lt!669878)) a0!49))))))

(declare-fun b!1554305 () Bool)

(assert (=> b!1554305 (= e!865511 (Some!827 (_2!12474 (h!37829 lt!669878))))))

(declare-fun b!1554307 () Bool)

(assert (=> b!1554307 (= e!865512 (getValueByKey!753 (t!51114 lt!669878) a0!49))))

(declare-fun b!1554308 () Bool)

(assert (=> b!1554308 (= e!865512 None!826)))

(declare-fun d!161663 () Bool)

(declare-fun c!143349 () Bool)

(assert (=> d!161663 (= c!143349 (and (is-Cons!36382 lt!669878) (= (_1!12474 (h!37829 lt!669878)) a0!49)))))

(assert (=> d!161663 (= (getValueByKey!753 lt!669878 a0!49) e!865511)))

(assert (= (and d!161663 c!143349) b!1554305))

(assert (= (and d!161663 (not c!143349)) b!1554306))

(assert (= (and b!1554306 c!143350) b!1554307))

(assert (= (and b!1554306 (not c!143350)) b!1554308))

(declare-fun m!1432689 () Bool)

(assert (=> b!1554307 m!1432689))

(assert (=> b!1554057 d!161663))

(declare-fun b!1554318 () Bool)

(declare-fun e!865517 () Option!828)

(declare-fun e!865518 () Option!828)

(assert (=> b!1554318 (= e!865517 e!865518)))

(declare-fun c!143354 () Bool)

(assert (=> b!1554318 (= c!143354 (and (is-Cons!36382 (toList!11290 lm!249)) (not (= (_1!12474 (h!37829 (toList!11290 lm!249))) a0!49))))))

(declare-fun b!1554317 () Bool)

(assert (=> b!1554317 (= e!865517 (Some!827 (_2!12474 (h!37829 (toList!11290 lm!249)))))))

(declare-fun b!1554319 () Bool)

(assert (=> b!1554319 (= e!865518 (getValueByKey!753 (t!51114 (toList!11290 lm!249)) a0!49))))

(declare-fun b!1554320 () Bool)

(assert (=> b!1554320 (= e!865518 None!826)))

(declare-fun d!161669 () Bool)

(declare-fun c!143353 () Bool)

(assert (=> d!161669 (= c!143353 (and (is-Cons!36382 (toList!11290 lm!249)) (= (_1!12474 (h!37829 (toList!11290 lm!249))) a0!49)))))

(assert (=> d!161669 (= (getValueByKey!753 (toList!11290 lm!249) a0!49) e!865517)))

(assert (= (and d!161669 c!143353) b!1554317))

(assert (= (and d!161669 (not c!143353)) b!1554318))

(assert (= (and b!1554318 c!143354) b!1554319))

(assert (= (and b!1554318 (not c!143354)) b!1554320))

(declare-fun m!1432691 () Bool)

(assert (=> b!1554319 m!1432691))

(assert (=> b!1554057 d!161669))

(declare-fun d!161671 () Bool)

(declare-fun res!1063802 () Bool)

(declare-fun e!865522 () Bool)

(assert (=> d!161671 (=> res!1063802 e!865522)))

(assert (=> d!161671 (= res!1063802 (and (is-Cons!36382 (toList!11290 lm!249)) (= (_1!12474 (h!37829 (toList!11290 lm!249))) a0!49)))))

(assert (=> d!161671 (= (containsKey!771 (toList!11290 lm!249) a0!49) e!865522)))

(declare-fun b!1554324 () Bool)

(declare-fun e!865523 () Bool)

(assert (=> b!1554324 (= e!865522 e!865523)))

(declare-fun res!1063803 () Bool)

(assert (=> b!1554324 (=> (not res!1063803) (not e!865523))))

(assert (=> b!1554324 (= res!1063803 (and (or (not (is-Cons!36382 (toList!11290 lm!249))) (bvsle (_1!12474 (h!37829 (toList!11290 lm!249))) a0!49)) (is-Cons!36382 (toList!11290 lm!249)) (bvslt (_1!12474 (h!37829 (toList!11290 lm!249))) a0!49)))))

(declare-fun b!1554325 () Bool)

(assert (=> b!1554325 (= e!865523 (containsKey!771 (t!51114 (toList!11290 lm!249)) a0!49))))

(assert (= (and d!161671 (not res!1063802)) b!1554324))

(assert (= (and b!1554324 res!1063803) b!1554325))

(declare-fun m!1432693 () Bool)

(assert (=> b!1554325 m!1432693))

(assert (=> b!1554060 d!161671))

(declare-fun b!1554331 () Bool)

(declare-fun e!865527 () Bool)

(declare-fun tp!112198 () Bool)

(assert (=> b!1554331 (= e!865527 (and tp_is_empty!38251 tp!112198))))

(assert (=> b!1554058 (= tp!112183 e!865527)))

(assert (= (and b!1554058 (is-Cons!36382 (toList!11290 lm!249))) b!1554331))

(push 1)

