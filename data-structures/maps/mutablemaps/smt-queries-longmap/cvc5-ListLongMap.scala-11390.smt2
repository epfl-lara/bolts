; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132466 () Bool)

(assert start!132466)

(declare-fun b!1553465 () Bool)

(declare-fun res!1063361 () Bool)

(declare-fun e!864950 () Bool)

(assert (=> b!1553465 (=> (not res!1063361) (not e!864950))))

(declare-datatypes ((B!2216 0))(
  ( (B!2217 (val!19194 Int)) )
))
(declare-datatypes ((tuple2!24904 0))(
  ( (tuple2!24905 (_1!12462 (_ BitVec 64)) (_2!12462 B!2216)) )
))
(declare-datatypes ((List!36374 0))(
  ( (Nil!36371) (Cons!36370 (h!37817 tuple2!24904) (t!51102 List!36374)) )
))
(declare-datatypes ((ListLongMap!22525 0))(
  ( (ListLongMap!22526 (toList!11278 List!36374)) )
))
(declare-fun lm!249 () ListLongMap!22525)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!759 (List!36374 (_ BitVec 64)) Bool)

(assert (=> b!1553465 (= res!1063361 (containsKey!759 (toList!11278 lm!249) a0!49))))

(declare-fun b!1553466 () Bool)

(declare-fun res!1063360 () Bool)

(assert (=> b!1553466 (=> (not res!1063360) (not e!864950))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553466 (= res!1063360 (not (= a0!49 a!523)))))

(declare-fun b!1553467 () Bool)

(declare-fun e!864948 () Bool)

(declare-fun lt!669643 () List!36374)

(declare-datatypes ((Option!816 0))(
  ( (Some!815 (v!21996 B!2216)) (None!814) )
))
(declare-fun getValueByKey!741 (List!36374 (_ BitVec 64)) Option!816)

(assert (=> b!1553467 (= e!864948 (= (getValueByKey!741 lt!669643 a0!49) (getValueByKey!741 (toList!11278 lm!249) a0!49)))))

(declare-fun res!1063362 () Bool)

(assert (=> start!132466 (=> (not res!1063362) (not e!864950))))

(declare-fun contains!10150 (ListLongMap!22525 (_ BitVec 64)) Bool)

(assert (=> start!132466 (= res!1063362 (contains!10150 lm!249 a0!49))))

(assert (=> start!132466 e!864950))

(declare-fun e!864951 () Bool)

(declare-fun inv!57311 (ListLongMap!22525) Bool)

(assert (=> start!132466 (and (inv!57311 lm!249) e!864951)))

(assert (=> start!132466 true))

(declare-fun tp_is_empty!38227 () Bool)

(assert (=> start!132466 tp_is_empty!38227))

(declare-fun b!1553468 () Bool)

(declare-fun tp!112120 () Bool)

(assert (=> b!1553468 (= e!864951 tp!112120)))

(declare-fun b!1553469 () Bool)

(declare-fun e!864949 () Bool)

(assert (=> b!1553469 (= e!864950 (not e!864949))))

(declare-fun res!1063359 () Bool)

(assert (=> b!1553469 (=> res!1063359 e!864949)))

(declare-fun isStrictlySorted!887 (List!36374) Bool)

(assert (=> b!1553469 (= res!1063359 (not (isStrictlySorted!887 (toList!11278 lm!249))))))

(assert (=> b!1553469 e!864948))

(declare-fun res!1063358 () Bool)

(assert (=> b!1553469 (=> (not res!1063358) (not e!864948))))

(assert (=> b!1553469 (= res!1063358 (containsKey!759 lt!669643 a0!49))))

(declare-fun b!96 () B!2216)

(declare-fun insertStrictlySorted!507 (List!36374 (_ BitVec 64) B!2216) List!36374)

(assert (=> b!1553469 (= lt!669643 (insertStrictlySorted!507 (toList!11278 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51684 0))(
  ( (Unit!51685) )
))
(declare-fun lt!669642 () Unit!51684)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!4 (List!36374 (_ BitVec 64) B!2216 (_ BitVec 64)) Unit!51684)

(assert (=> b!1553469 (= lt!669642 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!4 (toList!11278 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1553470 () Bool)

(declare-fun +!4975 (ListLongMap!22525 tuple2!24904) ListLongMap!22525)

(assert (=> b!1553470 (= e!864949 (contains!10150 (+!4975 lm!249 (tuple2!24905 a!523 b!96)) a0!49))))

(declare-fun isDefined!550 (Option!816) Bool)

(assert (=> b!1553470 (isDefined!550 (getValueByKey!741 (toList!11278 lm!249) a0!49))))

(declare-fun lt!669644 () Unit!51684)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!501 (List!36374 (_ BitVec 64)) Unit!51684)

(assert (=> b!1553470 (= lt!669644 (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!11278 lm!249) a0!49))))

(assert (= (and start!132466 res!1063362) b!1553466))

(assert (= (and b!1553466 res!1063360) b!1553465))

(assert (= (and b!1553465 res!1063361) b!1553469))

(assert (= (and b!1553469 res!1063358) b!1553467))

(assert (= (and b!1553469 (not res!1063359)) b!1553470))

(assert (= start!132466 b!1553468))

(declare-fun m!1432155 () Bool)

(assert (=> b!1553470 m!1432155))

(declare-fun m!1432157 () Bool)

(assert (=> b!1553470 m!1432157))

(assert (=> b!1553470 m!1432155))

(declare-fun m!1432159 () Bool)

(assert (=> b!1553470 m!1432159))

(assert (=> b!1553470 m!1432157))

(declare-fun m!1432161 () Bool)

(assert (=> b!1553470 m!1432161))

(declare-fun m!1432163 () Bool)

(assert (=> b!1553470 m!1432163))

(declare-fun m!1432165 () Bool)

(assert (=> start!132466 m!1432165))

(declare-fun m!1432167 () Bool)

(assert (=> start!132466 m!1432167))

(declare-fun m!1432169 () Bool)

(assert (=> b!1553465 m!1432169))

(declare-fun m!1432171 () Bool)

(assert (=> b!1553469 m!1432171))

(declare-fun m!1432173 () Bool)

(assert (=> b!1553469 m!1432173))

(declare-fun m!1432175 () Bool)

(assert (=> b!1553469 m!1432175))

(declare-fun m!1432177 () Bool)

(assert (=> b!1553469 m!1432177))

(declare-fun m!1432179 () Bool)

(assert (=> b!1553467 m!1432179))

(assert (=> b!1553467 m!1432155))

(push 1)

(assert (not b!1553468))

(assert tp_is_empty!38227)

(assert (not b!1553469))

(assert (not b!1553465))

(assert (not b!1553470))

(assert (not start!132466))

(assert (not b!1553467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161495 () Bool)

(declare-fun res!1063403 () Bool)

(declare-fun e!864992 () Bool)

(assert (=> d!161495 (=> res!1063403 e!864992)))

(assert (=> d!161495 (= res!1063403 (or (is-Nil!36371 (toList!11278 lm!249)) (is-Nil!36371 (t!51102 (toList!11278 lm!249)))))))

(assert (=> d!161495 (= (isStrictlySorted!887 (toList!11278 lm!249)) e!864992)))

(declare-fun b!1553529 () Bool)

(declare-fun e!864993 () Bool)

(assert (=> b!1553529 (= e!864992 e!864993)))

(declare-fun res!1063404 () Bool)

(assert (=> b!1553529 (=> (not res!1063404) (not e!864993))))

(assert (=> b!1553529 (= res!1063404 (bvslt (_1!12462 (h!37817 (toList!11278 lm!249))) (_1!12462 (h!37817 (t!51102 (toList!11278 lm!249))))))))

(declare-fun b!1553530 () Bool)

(assert (=> b!1553530 (= e!864993 (isStrictlySorted!887 (t!51102 (toList!11278 lm!249))))))

(assert (= (and d!161495 (not res!1063403)) b!1553529))

(assert (= (and b!1553529 res!1063404) b!1553530))

(declare-fun m!1432237 () Bool)

(assert (=> b!1553530 m!1432237))

(assert (=> b!1553469 d!161495))

(declare-fun d!161501 () Bool)

(declare-fun res!1063417 () Bool)

(declare-fun e!865008 () Bool)

(assert (=> d!161501 (=> res!1063417 e!865008)))

(assert (=> d!161501 (= res!1063417 (and (is-Cons!36370 lt!669643) (= (_1!12462 (h!37817 lt!669643)) a0!49)))))

(assert (=> d!161501 (= (containsKey!759 lt!669643 a0!49) e!865008)))

(declare-fun b!1553547 () Bool)

(declare-fun e!865009 () Bool)

(assert (=> b!1553547 (= e!865008 e!865009)))

(declare-fun res!1063418 () Bool)

(assert (=> b!1553547 (=> (not res!1063418) (not e!865009))))

(assert (=> b!1553547 (= res!1063418 (and (or (not (is-Cons!36370 lt!669643)) (bvsle (_1!12462 (h!37817 lt!669643)) a0!49)) (is-Cons!36370 lt!669643) (bvslt (_1!12462 (h!37817 lt!669643)) a0!49)))))

(declare-fun b!1553548 () Bool)

(assert (=> b!1553548 (= e!865009 (containsKey!759 (t!51102 lt!669643) a0!49))))

(assert (= (and d!161501 (not res!1063417)) b!1553547))

(assert (= (and b!1553547 res!1063418) b!1553548))

(declare-fun m!1432245 () Bool)

(assert (=> b!1553548 m!1432245))

(assert (=> b!1553469 d!161501))

(declare-fun e!865046 () Bool)

(declare-fun b!1553614 () Bool)

(declare-fun lt!669687 () List!36374)

(declare-fun contains!10153 (List!36374 tuple2!24904) Bool)

(assert (=> b!1553614 (= e!865046 (contains!10153 lt!669687 (tuple2!24905 a!523 b!96)))))

(declare-fun b!1553615 () Bool)

(declare-fun e!865050 () List!36374)

(declare-fun call!71388 () List!36374)

(assert (=> b!1553615 (= e!865050 call!71388)))

(declare-fun bm!71383 () Bool)

(declare-fun call!71387 () List!36374)

(assert (=> bm!71383 (= call!71388 call!71387)))

(declare-fun b!1553616 () Bool)

(assert (=> b!1553616 (= e!865050 call!71388)))

(declare-fun b!1553617 () Bool)

(declare-fun c!143229 () Bool)

(assert (=> b!1553617 (= c!143229 (and (is-Cons!36370 (toList!11278 lm!249)) (bvsgt (_1!12462 (h!37817 (toList!11278 lm!249))) a!523)))))

(declare-fun e!865049 () List!36374)

(assert (=> b!1553617 (= e!865049 e!865050)))

(declare-fun c!143231 () Bool)

(declare-fun e!865047 () List!36374)

(declare-fun b!1553618 () Bool)

(assert (=> b!1553618 (= e!865047 (ite c!143231 (t!51102 (toList!11278 lm!249)) (ite c!143229 (Cons!36370 (h!37817 (toList!11278 lm!249)) (t!51102 (toList!11278 lm!249))) Nil!36371)))))

(declare-fun b!1553619 () Bool)

(declare-fun e!865048 () List!36374)

(assert (=> b!1553619 (= e!865048 e!865049)))

(assert (=> b!1553619 (= c!143231 (and (is-Cons!36370 (toList!11278 lm!249)) (= (_1!12462 (h!37817 (toList!11278 lm!249))) a!523)))))

(declare-fun d!161509 () Bool)

(assert (=> d!161509 e!865046))

(declare-fun res!1063436 () Bool)

(assert (=> d!161509 (=> (not res!1063436) (not e!865046))))

(assert (=> d!161509 (= res!1063436 (isStrictlySorted!887 lt!669687))))

(assert (=> d!161509 (= lt!669687 e!865048)))

(declare-fun c!143228 () Bool)

(assert (=> d!161509 (= c!143228 (and (is-Cons!36370 (toList!11278 lm!249)) (bvslt (_1!12462 (h!37817 (toList!11278 lm!249))) a!523)))))

(assert (=> d!161509 (isStrictlySorted!887 (toList!11278 lm!249))))

(assert (=> d!161509 (= (insertStrictlySorted!507 (toList!11278 lm!249) a!523 b!96) lt!669687)))

(declare-fun bm!71384 () Bool)

(declare-fun call!71386 () List!36374)

(assert (=> bm!71384 (= call!71387 call!71386)))

(declare-fun b!1553620 () Bool)

(assert (=> b!1553620 (= e!865047 (insertStrictlySorted!507 (t!51102 (toList!11278 lm!249)) a!523 b!96))))

(declare-fun b!1553621 () Bool)

(assert (=> b!1553621 (= e!865048 call!71386)))

(declare-fun b!1553622 () Bool)

(declare-fun res!1063437 () Bool)

(assert (=> b!1553622 (=> (not res!1063437) (not e!865046))))

(assert (=> b!1553622 (= res!1063437 (containsKey!759 lt!669687 a!523))))

(declare-fun bm!71385 () Bool)

(declare-fun $colon$colon!948 (List!36374 tuple2!24904) List!36374)

(assert (=> bm!71385 (= call!71386 ($colon$colon!948 e!865047 (ite c!143228 (h!37817 (toList!11278 lm!249)) (tuple2!24905 a!523 b!96))))))

(declare-fun c!143230 () Bool)

(assert (=> bm!71385 (= c!143230 c!143228)))

(declare-fun b!1553623 () Bool)

(assert (=> b!1553623 (= e!865049 call!71387)))

(assert (= (and d!161509 c!143228) b!1553621))

(assert (= (and d!161509 (not c!143228)) b!1553619))

(assert (= (and b!1553619 c!143231) b!1553623))

(assert (= (and b!1553619 (not c!143231)) b!1553617))

(assert (= (and b!1553617 c!143229) b!1553616))

(assert (= (and b!1553617 (not c!143229)) b!1553615))

(assert (= (or b!1553616 b!1553615) bm!71383))

(assert (= (or b!1553623 bm!71383) bm!71384))

(assert (= (or b!1553621 bm!71384) bm!71385))

(assert (= (and bm!71385 c!143230) b!1553620))

(assert (= (and bm!71385 (not c!143230)) b!1553618))

(assert (= (and d!161509 res!1063436) b!1553622))

(assert (= (and b!1553622 res!1063437) b!1553614))

(declare-fun m!1432269 () Bool)

(assert (=> b!1553614 m!1432269))

(declare-fun m!1432271 () Bool)

(assert (=> b!1553622 m!1432271))

(declare-fun m!1432273 () Bool)

(assert (=> b!1553620 m!1432273))

(declare-fun m!1432275 () Bool)

(assert (=> d!161509 m!1432275))

(assert (=> d!161509 m!1432171))

(declare-fun m!1432277 () Bool)

(assert (=> bm!71385 m!1432277))

(assert (=> b!1553469 d!161509))

(declare-fun d!161523 () Bool)

(declare-fun e!865070 () Bool)

(assert (=> d!161523 e!865070))

(declare-fun res!1063460 () Bool)

(assert (=> d!161523 (=> (not res!1063460) (not e!865070))))

(assert (=> d!161523 (= res!1063460 (= (containsKey!759 (insertStrictlySorted!507 (toList!11278 lm!249) a!523 b!96) a0!49) (containsKey!759 (toList!11278 lm!249) a0!49)))))

(declare-fun lt!669705 () Unit!51684)

(declare-fun choose!2048 (List!36374 (_ BitVec 64) B!2216 (_ BitVec 64)) Unit!51684)

(assert (=> d!161523 (= lt!669705 (choose!2048 (toList!11278 lm!249) a!523 b!96 a0!49))))

(declare-fun e!865071 () Bool)

(assert (=> d!161523 e!865071))

(declare-fun res!1063461 () Bool)

(assert (=> d!161523 (=> (not res!1063461) (not e!865071))))

(assert (=> d!161523 (= res!1063461 (isStrictlySorted!887 (toList!11278 lm!249)))))

(assert (=> d!161523 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!4 (toList!11278 lm!249) a!523 b!96 a0!49) lt!669705)))

(declare-fun b!1553646 () Bool)

(assert (=> b!1553646 (= e!865071 (not (= a!523 a0!49)))))

(declare-fun b!1553647 () Bool)

(assert (=> b!1553647 (= e!865070 (= (getValueByKey!741 (insertStrictlySorted!507 (toList!11278 lm!249) a!523 b!96) a0!49) (getValueByKey!741 (toList!11278 lm!249) a0!49)))))

(assert (= (and d!161523 res!1063461) b!1553646))

(assert (= (and d!161523 res!1063460) b!1553647))

(assert (=> d!161523 m!1432171))

(assert (=> d!161523 m!1432169))

(assert (=> d!161523 m!1432175))

(declare-fun m!1432299 () Bool)

(assert (=> d!161523 m!1432299))

(declare-fun m!1432301 () Bool)

(assert (=> d!161523 m!1432301))

(assert (=> d!161523 m!1432175))

(assert (=> b!1553647 m!1432175))

(assert (=> b!1553647 m!1432175))

(declare-fun m!1432303 () Bool)

(assert (=> b!1553647 m!1432303))

(assert (=> b!1553647 m!1432155))

(assert (=> b!1553469 d!161523))

(declare-fun d!161531 () Bool)

(declare-fun e!865089 () Bool)

(assert (=> d!161531 e!865089))

(declare-fun res!1063473 () Bool)

(assert (=> d!161531 (=> res!1063473 e!865089)))

(declare-fun lt!669726 () Bool)

(assert (=> d!161531 (= res!1063473 (not lt!669726))))

(declare-fun lt!669727 () Bool)

(assert (=> d!161531 (= lt!669726 lt!669727)))

(declare-fun lt!669728 () Unit!51684)

(declare-fun e!865088 () Unit!51684)

(assert (=> d!161531 (= lt!669728 e!865088)))

(declare-fun c!143237 () Bool)

(assert (=> d!161531 (= c!143237 lt!669727)))

(assert (=> d!161531 (= lt!669727 (containsKey!759 (toList!11278 lm!249) a0!49))))

(assert (=> d!161531 (= (contains!10150 lm!249 a0!49) lt!669726)))

(declare-fun b!1553669 () Bool)

(declare-fun lt!669729 () Unit!51684)

(assert (=> b!1553669 (= e!865088 lt!669729)))

(assert (=> b!1553669 (= lt!669729 (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!11278 lm!249) a0!49))))

(assert (=> b!1553669 (isDefined!550 (getValueByKey!741 (toList!11278 lm!249) a0!49))))

(declare-fun b!1553670 () Bool)

(declare-fun Unit!51692 () Unit!51684)

(assert (=> b!1553670 (= e!865088 Unit!51692)))

(declare-fun b!1553671 () Bool)

(assert (=> b!1553671 (= e!865089 (isDefined!550 (getValueByKey!741 (toList!11278 lm!249) a0!49)))))

(assert (= (and d!161531 c!143237) b!1553669))

(assert (= (and d!161531 (not c!143237)) b!1553670))

(assert (= (and d!161531 (not res!1063473)) b!1553671))

(assert (=> d!161531 m!1432169))

(assert (=> b!1553669 m!1432163))

(assert (=> b!1553669 m!1432155))

(assert (=> b!1553669 m!1432155))

(assert (=> b!1553669 m!1432159))

(assert (=> b!1553671 m!1432155))

(assert (=> b!1553671 m!1432155))

(assert (=> b!1553671 m!1432159))

(assert (=> start!132466 d!161531))

(declare-fun d!161537 () Bool)

(assert (=> d!161537 (= (inv!57311 lm!249) (isStrictlySorted!887 (toList!11278 lm!249)))))

(declare-fun bs!44649 () Bool)

(assert (= bs!44649 d!161537))

(assert (=> bs!44649 m!1432171))

(assert (=> start!132466 d!161537))

(declare-fun b!1553704 () Bool)

(declare-fun e!865106 () Option!816)

(assert (=> b!1553704 (= e!865106 (Some!815 (_2!12462 (h!37817 (toList!11278 lm!249)))))))

(declare-fun d!161541 () Bool)

(declare-fun c!143254 () Bool)

(assert (=> d!161541 (= c!143254 (and (is-Cons!36370 (toList!11278 lm!249)) (= (_1!12462 (h!37817 (toList!11278 lm!249))) a0!49)))))

(assert (=> d!161541 (= (getValueByKey!741 (toList!11278 lm!249) a0!49) e!865106)))

(declare-fun b!1553705 () Bool)

(declare-fun e!865107 () Option!816)

(assert (=> b!1553705 (= e!865106 e!865107)))

(declare-fun c!143255 () Bool)

(assert (=> b!1553705 (= c!143255 (and (is-Cons!36370 (toList!11278 lm!249)) (not (= (_1!12462 (h!37817 (toList!11278 lm!249))) a0!49))))))

(declare-fun b!1553707 () Bool)

(assert (=> b!1553707 (= e!865107 None!814)))

(declare-fun b!1553706 () Bool)

(assert (=> b!1553706 (= e!865107 (getValueByKey!741 (t!51102 (toList!11278 lm!249)) a0!49))))

(assert (= (and d!161541 c!143254) b!1553704))

(assert (= (and d!161541 (not c!143254)) b!1553705))

(assert (= (and b!1553705 c!143255) b!1553706))

(assert (= (and b!1553705 (not c!143255)) b!1553707))

(declare-fun m!1432309 () Bool)

(assert (=> b!1553706 m!1432309))

(assert (=> b!1553470 d!161541))

(declare-fun d!161545 () Bool)

(declare-fun isEmpty!1138 (Option!816) Bool)

(assert (=> d!161545 (= (isDefined!550 (getValueByKey!741 (toList!11278 lm!249) a0!49)) (not (isEmpty!1138 (getValueByKey!741 (toList!11278 lm!249) a0!49))))))

(declare-fun bs!44651 () Bool)

(assert (= bs!44651 d!161545))

(assert (=> bs!44651 m!1432155))

(declare-fun m!1432313 () Bool)

(assert (=> bs!44651 m!1432313))

(assert (=> b!1553470 d!161545))

(declare-fun d!161549 () Bool)

(assert (=> d!161549 (isDefined!550 (getValueByKey!741 (toList!11278 lm!249) a0!49))))

(declare-fun lt!669741 () Unit!51684)

(declare-fun choose!2050 (List!36374 (_ BitVec 64)) Unit!51684)

(assert (=> d!161549 (= lt!669741 (choose!2050 (toList!11278 lm!249) a0!49))))

(declare-fun e!865119 () Bool)

(assert (=> d!161549 e!865119))

(declare-fun res!1063484 () Bool)

(assert (=> d!161549 (=> (not res!1063484) (not e!865119))))

(assert (=> d!161549 (= res!1063484 (isStrictlySorted!887 (toList!11278 lm!249)))))

(assert (=> d!161549 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!11278 lm!249) a0!49) lt!669741)))

(declare-fun b!1553724 () Bool)

(assert (=> b!1553724 (= e!865119 (containsKey!759 (toList!11278 lm!249) a0!49))))

(assert (= (and d!161549 res!1063484) b!1553724))

(assert (=> d!161549 m!1432155))

(assert (=> d!161549 m!1432155))

(assert (=> d!161549 m!1432159))

(declare-fun m!1432325 () Bool)

(assert (=> d!161549 m!1432325))

(assert (=> d!161549 m!1432171))

(assert (=> b!1553724 m!1432169))

(assert (=> b!1553470 d!161549))

(declare-fun d!161555 () Bool)

(declare-fun e!865121 () Bool)

(assert (=> d!161555 e!865121))

(declare-fun res!1063485 () Bool)

(assert (=> d!161555 (=> res!1063485 e!865121)))

(declare-fun lt!669742 () Bool)

(assert (=> d!161555 (= res!1063485 (not lt!669742))))

(declare-fun lt!669743 () Bool)

(assert (=> d!161555 (= lt!669742 lt!669743)))

(declare-fun lt!669744 () Unit!51684)

(declare-fun e!865120 () Unit!51684)

(assert (=> d!161555 (= lt!669744 e!865120)))

(declare-fun c!143259 () Bool)

(assert (=> d!161555 (= c!143259 lt!669743)))

(assert (=> d!161555 (= lt!669743 (containsKey!759 (toList!11278 (+!4975 lm!249 (tuple2!24905 a!523 b!96))) a0!49))))

(assert (=> d!161555 (= (contains!10150 (+!4975 lm!249 (tuple2!24905 a!523 b!96)) a0!49) lt!669742)))

(declare-fun b!1553725 () Bool)

(declare-fun lt!669745 () Unit!51684)

(assert (=> b!1553725 (= e!865120 lt!669745)))

(assert (=> b!1553725 (= lt!669745 (lemmaContainsKeyImpliesGetValueByKeyDefined!501 (toList!11278 (+!4975 lm!249 (tuple2!24905 a!523 b!96))) a0!49))))

(assert (=> b!1553725 (isDefined!550 (getValueByKey!741 (toList!11278 (+!4975 lm!249 (tuple2!24905 a!523 b!96))) a0!49))))

(declare-fun b!1553726 () Bool)

(declare-fun Unit!51694 () Unit!51684)

(assert (=> b!1553726 (= e!865120 Unit!51694)))

(declare-fun b!1553727 () Bool)

(assert (=> b!1553727 (= e!865121 (isDefined!550 (getValueByKey!741 (toList!11278 (+!4975 lm!249 (tuple2!24905 a!523 b!96))) a0!49)))))

(assert (= (and d!161555 c!143259) b!1553725))

(assert (= (and d!161555 (not c!143259)) b!1553726))

(assert (= (and d!161555 (not res!1063485)) b!1553727))

(declare-fun m!1432327 () Bool)

(assert (=> d!161555 m!1432327))

(declare-fun m!1432329 () Bool)

(assert (=> b!1553725 m!1432329))

(declare-fun m!1432331 () Bool)

(assert (=> b!1553725 m!1432331))

(assert (=> b!1553725 m!1432331))

(declare-fun m!1432333 () Bool)

(assert (=> b!1553725 m!1432333))

(assert (=> b!1553727 m!1432331))

(assert (=> b!1553727 m!1432331))

(assert (=> b!1553727 m!1432333))

(assert (=> b!1553470 d!161555))

(declare-fun d!161557 () Bool)

(declare-fun e!865142 () Bool)

(assert (=> d!161557 e!865142))

(declare-fun res!1063507 () Bool)

(assert (=> d!161557 (=> (not res!1063507) (not e!865142))))

(declare-fun lt!669772 () ListLongMap!22525)

(assert (=> d!161557 (= res!1063507 (contains!10150 lt!669772 (_1!12462 (tuple2!24905 a!523 b!96))))))

(declare-fun lt!669770 () List!36374)

(assert (=> d!161557 (= lt!669772 (ListLongMap!22526 lt!669770))))

(declare-fun lt!669773 () Unit!51684)

(declare-fun lt!669771 () Unit!51684)

(assert (=> d!161557 (= lt!669773 lt!669771)))

(assert (=> d!161557 (= (getValueByKey!741 lt!669770 (_1!12462 (tuple2!24905 a!523 b!96))) (Some!815 (_2!12462 (tuple2!24905 a!523 b!96))))))

(declare-fun lemmaContainsTupThenGetReturnValue!376 (List!36374 (_ BitVec 64) B!2216) Unit!51684)

(assert (=> d!161557 (= lt!669771 (lemmaContainsTupThenGetReturnValue!376 lt!669770 (_1!12462 (tuple2!24905 a!523 b!96)) (_2!12462 (tuple2!24905 a!523 b!96))))))

(assert (=> d!161557 (= lt!669770 (insertStrictlySorted!507 (toList!11278 lm!249) (_1!12462 (tuple2!24905 a!523 b!96)) (_2!12462 (tuple2!24905 a!523 b!96))))))

(assert (=> d!161557 (= (+!4975 lm!249 (tuple2!24905 a!523 b!96)) lt!669772)))

(declare-fun b!1553760 () Bool)

(declare-fun res!1063506 () Bool)

(assert (=> b!1553760 (=> (not res!1063506) (not e!865142))))

(assert (=> b!1553760 (= res!1063506 (= (getValueByKey!741 (toList!11278 lt!669772) (_1!12462 (tuple2!24905 a!523 b!96))) (Some!815 (_2!12462 (tuple2!24905 a!523 b!96)))))))

(declare-fun b!1553761 () Bool)

(assert (=> b!1553761 (= e!865142 (contains!10153 (toList!11278 lt!669772) (tuple2!24905 a!523 b!96)))))

(assert (= (and d!161557 res!1063507) b!1553760))

(assert (= (and b!1553760 res!1063506) b!1553761))

(declare-fun m!1432367 () Bool)

(assert (=> d!161557 m!1432367))

(declare-fun m!1432369 () Bool)

(assert (=> d!161557 m!1432369))

(declare-fun m!1432371 () Bool)

(assert (=> d!161557 m!1432371))

(declare-fun m!1432373 () Bool)

(assert (=> d!161557 m!1432373))

(declare-fun m!1432375 () Bool)

(assert (=> b!1553760 m!1432375))

(declare-fun m!1432377 () Bool)

(assert (=> b!1553761 m!1432377))

(assert (=> b!1553470 d!161557))

(declare-fun d!161565 () Bool)

(declare-fun res!1063508 () Bool)

(declare-fun e!865148 () Bool)

(assert (=> d!161565 (=> res!1063508 e!865148)))

(assert (=> d!161565 (= res!1063508 (and (is-Cons!36370 (toList!11278 lm!249)) (= (_1!12462 (h!37817 (toList!11278 lm!249))) a0!49)))))

(assert (=> d!161565 (= (containsKey!759 (toList!11278 lm!249) a0!49) e!865148)))

(declare-fun b!1553771 () Bool)

(declare-fun e!865149 () Bool)

(assert (=> b!1553771 (= e!865148 e!865149)))

(declare-fun res!1063509 () Bool)

(assert (=> b!1553771 (=> (not res!1063509) (not e!865149))))

(assert (=> b!1553771 (= res!1063509 (and (or (not (is-Cons!36370 (toList!11278 lm!249))) (bvsle (_1!12462 (h!37817 (toList!11278 lm!249))) a0!49)) (is-Cons!36370 (toList!11278 lm!249)) (bvslt (_1!12462 (h!37817 (toList!11278 lm!249))) a0!49)))))

(declare-fun b!1553772 () Bool)

(assert (=> b!1553772 (= e!865149 (containsKey!759 (t!51102 (toList!11278 lm!249)) a0!49))))

(assert (= (and d!161565 (not res!1063508)) b!1553771))

(assert (= (and b!1553771 res!1063509) b!1553772))

(declare-fun m!1432379 () Bool)

(assert (=> b!1553772 m!1432379))

(assert (=> b!1553465 d!161565))

(declare-fun b!1553774 () Bool)

(declare-fun e!865151 () Option!816)

(assert (=> b!1553774 (= e!865151 (Some!815 (_2!12462 (h!37817 lt!669643))))))

(declare-fun d!161567 () Bool)

(declare-fun c!143266 () Bool)

(assert (=> d!161567 (= c!143266 (and (is-Cons!36370 lt!669643) (= (_1!12462 (h!37817 lt!669643)) a0!49)))))

(assert (=> d!161567 (= (getValueByKey!741 lt!669643 a0!49) e!865151)))

(declare-fun b!1553775 () Bool)

(declare-fun e!865152 () Option!816)

(assert (=> b!1553775 (= e!865151 e!865152)))

(declare-fun c!143267 () Bool)

(assert (=> b!1553775 (= c!143267 (and (is-Cons!36370 lt!669643) (not (= (_1!12462 (h!37817 lt!669643)) a0!49))))))

(declare-fun b!1553777 () Bool)

(assert (=> b!1553777 (= e!865152 None!814)))

(declare-fun b!1553776 () Bool)

(assert (=> b!1553776 (= e!865152 (getValueByKey!741 (t!51102 lt!669643) a0!49))))

(assert (= (and d!161567 c!143266) b!1553774))

(assert (= (and d!161567 (not c!143266)) b!1553775))

(assert (= (and b!1553775 c!143267) b!1553776))

(assert (= (and b!1553775 (not c!143267)) b!1553777))

(declare-fun m!1432381 () Bool)

(assert (=> b!1553776 m!1432381))

(assert (=> b!1553467 d!161567))

