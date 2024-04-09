; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134392 () Bool)

(assert start!134392)

(declare-fun b!1568857 () Bool)

(declare-fun e!874599 () Bool)

(declare-fun tp_is_empty!39043 () Bool)

(declare-fun tp!114076 () Bool)

(assert (=> b!1568857 (= e!874599 (and tp_is_empty!39043 tp!114076))))

(declare-fun res!1072454 () Bool)

(declare-fun e!874598 () Bool)

(assert (=> start!134392 (=> (not res!1072454) (not e!874598))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134392 (= res!1072454 (not (= key1!37 key2!21)))))

(assert (=> start!134392 e!874598))

(assert (=> start!134392 tp_is_empty!39043))

(assert (=> start!134392 e!874599))

(assert (=> start!134392 true))

(declare-datatypes ((B!2492 0))(
  ( (B!2493 (val!19608 Int)) )
))
(declare-fun v2!10 () B!2492)

(declare-datatypes ((tuple2!25482 0))(
  ( (tuple2!25483 (_1!12751 (_ BitVec 64)) (_2!12751 B!2492)) )
))
(declare-datatypes ((List!36889 0))(
  ( (Nil!36886) (Cons!36885 (h!38333 tuple2!25482) (t!51804 List!36889)) )
))
(declare-fun l!750 () List!36889)

(declare-fun b!1568858 () Bool)

(declare-fun isStrictlySorted!999 (List!36889) Bool)

(declare-fun insertStrictlySorted!586 (List!36889 (_ BitVec 64) B!2492) List!36889)

(assert (=> b!1568858 (= e!874598 (not (isStrictlySorted!999 (insertStrictlySorted!586 l!750 key2!21 v2!10))))))

(declare-fun v1!32 () B!2492)

(assert (=> b!1568858 (= (insertStrictlySorted!586 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!586 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52030 0))(
  ( (Unit!52031) )
))
(declare-fun lt!673183 () Unit!52030)

(declare-fun lemmaInsertStrictlySortedCommutative!13 (List!36889 (_ BitVec 64) B!2492 (_ BitVec 64) B!2492) Unit!52030)

(assert (=> b!1568858 (= lt!673183 (lemmaInsertStrictlySortedCommutative!13 (t!51804 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568859 () Bool)

(declare-fun res!1072453 () Bool)

(assert (=> b!1568859 (=> (not res!1072453) (not e!874598))))

(assert (=> b!1568859 (= res!1072453 (isStrictlySorted!999 (t!51804 l!750)))))

(declare-fun b!1568860 () Bool)

(declare-fun res!1072451 () Bool)

(assert (=> b!1568860 (=> (not res!1072451) (not e!874598))))

(assert (=> b!1568860 (= res!1072451 (and (is-Cons!36885 l!750) (bvslt (_1!12751 (h!38333 l!750)) key1!37) (bvslt (_1!12751 (h!38333 l!750)) key2!21)))))

(declare-fun b!1568861 () Bool)

(declare-fun res!1072452 () Bool)

(assert (=> b!1568861 (=> (not res!1072452) (not e!874598))))

(assert (=> b!1568861 (= res!1072452 (isStrictlySorted!999 l!750))))

(assert (= (and start!134392 res!1072454) b!1568861))

(assert (= (and b!1568861 res!1072452) b!1568860))

(assert (= (and b!1568860 res!1072451) b!1568859))

(assert (= (and b!1568859 res!1072453) b!1568858))

(assert (= (and start!134392 (is-Cons!36885 l!750)) b!1568857))

(declare-fun m!1443433 () Bool)

(assert (=> b!1568858 m!1443433))

(declare-fun m!1443435 () Bool)

(assert (=> b!1568858 m!1443435))

(declare-fun m!1443437 () Bool)

(assert (=> b!1568858 m!1443437))

(assert (=> b!1568858 m!1443435))

(declare-fun m!1443439 () Bool)

(assert (=> b!1568858 m!1443439))

(declare-fun m!1443441 () Bool)

(assert (=> b!1568858 m!1443441))

(declare-fun m!1443443 () Bool)

(assert (=> b!1568858 m!1443443))

(assert (=> b!1568858 m!1443441))

(assert (=> b!1568858 m!1443433))

(declare-fun m!1443445 () Bool)

(assert (=> b!1568858 m!1443445))

(declare-fun m!1443447 () Bool)

(assert (=> b!1568859 m!1443447))

(declare-fun m!1443449 () Bool)

(assert (=> b!1568861 m!1443449))

(push 1)

(assert tp_is_empty!39043)

(assert (not b!1568857))

(assert (not b!1568858))

(assert (not b!1568859))

(assert (not b!1568861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163741 () Bool)

(declare-fun res!1072489 () Bool)

(declare-fun e!874622 () Bool)

(assert (=> d!163741 (=> res!1072489 e!874622)))

(assert (=> d!163741 (= res!1072489 (or (is-Nil!36886 (t!51804 l!750)) (is-Nil!36886 (t!51804 (t!51804 l!750)))))))

(assert (=> d!163741 (= (isStrictlySorted!999 (t!51804 l!750)) e!874622)))

(declare-fun b!1568902 () Bool)

(declare-fun e!874623 () Bool)

(assert (=> b!1568902 (= e!874622 e!874623)))

(declare-fun res!1072490 () Bool)

(assert (=> b!1568902 (=> (not res!1072490) (not e!874623))))

(assert (=> b!1568902 (= res!1072490 (bvslt (_1!12751 (h!38333 (t!51804 l!750))) (_1!12751 (h!38333 (t!51804 (t!51804 l!750))))))))

(declare-fun b!1568903 () Bool)

(assert (=> b!1568903 (= e!874623 (isStrictlySorted!999 (t!51804 (t!51804 l!750))))))

(assert (= (and d!163741 (not res!1072489)) b!1568902))

(assert (= (and b!1568902 res!1072490) b!1568903))

(declare-fun m!1443489 () Bool)

(assert (=> b!1568903 m!1443489))

(assert (=> b!1568859 d!163741))

(declare-fun d!163743 () Bool)

(declare-fun res!1072491 () Bool)

(declare-fun e!874624 () Bool)

(assert (=> d!163743 (=> res!1072491 e!874624)))

(assert (=> d!163743 (= res!1072491 (or (is-Nil!36886 l!750) (is-Nil!36886 (t!51804 l!750))))))

(assert (=> d!163743 (= (isStrictlySorted!999 l!750) e!874624)))

(declare-fun b!1568904 () Bool)

(declare-fun e!874625 () Bool)

(assert (=> b!1568904 (= e!874624 e!874625)))

(declare-fun res!1072492 () Bool)

(assert (=> b!1568904 (=> (not res!1072492) (not e!874625))))

(assert (=> b!1568904 (= res!1072492 (bvslt (_1!12751 (h!38333 l!750)) (_1!12751 (h!38333 (t!51804 l!750)))))))

(declare-fun b!1568905 () Bool)

(assert (=> b!1568905 (= e!874625 (isStrictlySorted!999 (t!51804 l!750)))))

(assert (= (and d!163743 (not res!1072491)) b!1568904))

(assert (= (and b!1568904 res!1072492) b!1568905))

(assert (=> b!1568905 m!1443447))

(assert (=> b!1568861 d!163743))

(declare-fun d!163745 () Bool)

(assert (=> d!163745 (= (insertStrictlySorted!586 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!586 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673195 () Unit!52030)

(declare-fun choose!2088 (List!36889 (_ BitVec 64) B!2492 (_ BitVec 64) B!2492) Unit!52030)

(assert (=> d!163745 (= lt!673195 (choose!2088 (t!51804 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163745 (not (= key1!37 key2!21))))

(assert (=> d!163745 (= (lemmaInsertStrictlySortedCommutative!13 (t!51804 l!750) key1!37 v1!32 key2!21 v2!10) lt!673195)))

(declare-fun bs!45186 () Bool)

(assert (= bs!45186 d!163745))

(assert (=> bs!45186 m!1443435))

(assert (=> bs!45186 m!1443433))

(assert (=> bs!45186 m!1443433))

(assert (=> bs!45186 m!1443445))

(declare-fun m!1443493 () Bool)

(assert (=> bs!45186 m!1443493))

(assert (=> bs!45186 m!1443435))

(assert (=> bs!45186 m!1443437))

(assert (=> b!1568858 d!163745))

(declare-fun b!1568996 () Bool)

(declare-fun e!874680 () List!36889)

(declare-fun call!72024 () List!36889)

(assert (=> b!1568996 (= e!874680 call!72024)))

(declare-fun e!874677 () List!36889)

(declare-fun b!1568997 () Bool)

(assert (=> b!1568997 (= e!874677 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10))))

(declare-fun c!144587 () Bool)

(declare-fun b!1568998 () Bool)

(declare-fun c!144588 () Bool)

(assert (=> b!1568998 (= e!874677 (ite c!144588 (t!51804 l!750) (ite c!144587 (Cons!36885 (h!38333 l!750) (t!51804 l!750)) Nil!36886)))))

(declare-fun b!1568999 () Bool)

(declare-fun res!1072520 () Bool)

(declare-fun e!874679 () Bool)

(assert (=> b!1568999 (=> (not res!1072520) (not e!874679))))

(declare-fun lt!673207 () List!36889)

(declare-fun containsKey!859 (List!36889 (_ BitVec 64)) Bool)

(assert (=> b!1568999 (= res!1072520 (containsKey!859 lt!673207 key2!21))))

(declare-fun b!1569000 () Bool)

(declare-fun e!874678 () List!36889)

(declare-fun call!72025 () List!36889)

(assert (=> b!1569000 (= e!874678 call!72025)))

(declare-fun b!1569001 () Bool)

(declare-fun e!874676 () List!36889)

(assert (=> b!1569001 (= e!874678 e!874676)))

(assert (=> b!1569001 (= c!144588 (and (is-Cons!36885 l!750) (= (_1!12751 (h!38333 l!750)) key2!21)))))

(declare-fun d!163751 () Bool)

(assert (=> d!163751 e!874679))

(declare-fun res!1072519 () Bool)

(assert (=> d!163751 (=> (not res!1072519) (not e!874679))))

(assert (=> d!163751 (= res!1072519 (isStrictlySorted!999 lt!673207))))

(assert (=> d!163751 (= lt!673207 e!874678)))

(declare-fun c!144586 () Bool)

(assert (=> d!163751 (= c!144586 (and (is-Cons!36885 l!750) (bvslt (_1!12751 (h!38333 l!750)) key2!21)))))

(assert (=> d!163751 (isStrictlySorted!999 l!750)))

(assert (=> d!163751 (= (insertStrictlySorted!586 l!750 key2!21 v2!10) lt!673207)))

(declare-fun b!1569002 () Bool)

(assert (=> b!1569002 (= e!874680 call!72024)))

(declare-fun bm!72021 () Bool)

(declare-fun call!72026 () List!36889)

(assert (=> bm!72021 (= call!72026 call!72025)))

(declare-fun b!1569003 () Bool)

(assert (=> b!1569003 (= e!874676 call!72026)))

(declare-fun bm!72022 () Bool)

(assert (=> bm!72022 (= call!72024 call!72026)))

(declare-fun bm!72023 () Bool)

(declare-fun $colon$colon!994 (List!36889 tuple2!25482) List!36889)

(assert (=> bm!72023 (= call!72025 ($colon$colon!994 e!874677 (ite c!144586 (h!38333 l!750) (tuple2!25483 key2!21 v2!10))))))

(declare-fun c!144585 () Bool)

(assert (=> bm!72023 (= c!144585 c!144586)))

(declare-fun b!1569004 () Bool)

(assert (=> b!1569004 (= c!144587 (and (is-Cons!36885 l!750) (bvsgt (_1!12751 (h!38333 l!750)) key2!21)))))

(assert (=> b!1569004 (= e!874676 e!874680)))

(declare-fun b!1569005 () Bool)

(declare-fun contains!10437 (List!36889 tuple2!25482) Bool)

(assert (=> b!1569005 (= e!874679 (contains!10437 lt!673207 (tuple2!25483 key2!21 v2!10)))))

(assert (= (and d!163751 c!144586) b!1569000))

(assert (= (and d!163751 (not c!144586)) b!1569001))

(assert (= (and b!1569001 c!144588) b!1569003))

(assert (= (and b!1569001 (not c!144588)) b!1569004))

(assert (= (and b!1569004 c!144587) b!1568996))

(assert (= (and b!1569004 (not c!144587)) b!1569002))

(assert (= (or b!1568996 b!1569002) bm!72022))

(assert (= (or b!1569003 bm!72022) bm!72021))

(assert (= (or b!1569000 bm!72021) bm!72023))

(assert (= (and bm!72023 c!144585) b!1568997))

(assert (= (and bm!72023 (not c!144585)) b!1568998))

(assert (= (and d!163751 res!1072519) b!1568999))

(assert (= (and b!1568999 res!1072520) b!1569005))

(declare-fun m!1443537 () Bool)

(assert (=> d!163751 m!1443537))

(assert (=> d!163751 m!1443449))

(declare-fun m!1443541 () Bool)

(assert (=> b!1568999 m!1443541))

(assert (=> b!1568997 m!1443433))

(declare-fun m!1443547 () Bool)

(assert (=> bm!72023 m!1443547))

(declare-fun m!1443549 () Bool)

(assert (=> b!1569005 m!1443549))

(assert (=> b!1568858 d!163751))

(declare-fun b!1569028 () Bool)

(declare-fun e!874696 () List!36889)

(declare-fun call!72030 () List!36889)

(assert (=> b!1569028 (= e!874696 call!72030)))

(declare-fun b!1569029 () Bool)

(declare-fun e!874693 () List!36889)

(assert (=> b!1569029 (= e!874693 (insertStrictlySorted!586 (t!51804 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32)) key2!21 v2!10))))

(declare-fun b!1569030 () Bool)

(declare-fun c!144602 () Bool)

(declare-fun c!144601 () Bool)

(assert (=> b!1569030 (= e!874693 (ite c!144602 (t!51804 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32)) (ite c!144601 (Cons!36885 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32)) (t!51804 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32))) Nil!36886)))))

(declare-fun b!1569031 () Bool)

(declare-fun res!1072524 () Bool)

(declare-fun e!874695 () Bool)

(assert (=> b!1569031 (=> (not res!1072524) (not e!874695))))

(declare-fun lt!673211 () List!36889)

(assert (=> b!1569031 (= res!1072524 (containsKey!859 lt!673211 key2!21))))

(declare-fun b!1569032 () Bool)

(declare-fun e!874694 () List!36889)

(declare-fun call!72031 () List!36889)

(assert (=> b!1569032 (= e!874694 call!72031)))

(declare-fun b!1569033 () Bool)

(declare-fun e!874692 () List!36889)

(assert (=> b!1569033 (= e!874694 e!874692)))

(assert (=> b!1569033 (= c!144602 (and (is-Cons!36885 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32)) (= (_1!12751 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun d!163769 () Bool)

(assert (=> d!163769 e!874695))

(declare-fun res!1072523 () Bool)

(assert (=> d!163769 (=> (not res!1072523) (not e!874695))))

(assert (=> d!163769 (= res!1072523 (isStrictlySorted!999 lt!673211))))

(assert (=> d!163769 (= lt!673211 e!874694)))

(declare-fun c!144600 () Bool)

(assert (=> d!163769 (= c!144600 (and (is-Cons!36885 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32)) (bvslt (_1!12751 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163769 (isStrictlySorted!999 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32))))

(assert (=> d!163769 (= (insertStrictlySorted!586 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32) key2!21 v2!10) lt!673211)))

(declare-fun b!1569034 () Bool)

(assert (=> b!1569034 (= e!874696 call!72030)))

(declare-fun bm!72027 () Bool)

(declare-fun call!72032 () List!36889)

(assert (=> bm!72027 (= call!72032 call!72031)))

(declare-fun b!1569035 () Bool)

(assert (=> b!1569035 (= e!874692 call!72032)))

(declare-fun bm!72028 () Bool)

(assert (=> bm!72028 (= call!72030 call!72032)))

(declare-fun bm!72029 () Bool)

(assert (=> bm!72029 (= call!72031 ($colon$colon!994 e!874693 (ite c!144600 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32)) (tuple2!25483 key2!21 v2!10))))))

(declare-fun c!144599 () Bool)

(assert (=> bm!72029 (= c!144599 c!144600)))

(declare-fun b!1569036 () Bool)

(assert (=> b!1569036 (= c!144601 (and (is-Cons!36885 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32)) (bvsgt (_1!12751 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> b!1569036 (= e!874692 e!874696)))

(declare-fun b!1569037 () Bool)

(assert (=> b!1569037 (= e!874695 (contains!10437 lt!673211 (tuple2!25483 key2!21 v2!10)))))

(assert (= (and d!163769 c!144600) b!1569032))

(assert (= (and d!163769 (not c!144600)) b!1569033))

(assert (= (and b!1569033 c!144602) b!1569035))

(assert (= (and b!1569033 (not c!144602)) b!1569036))

(assert (= (and b!1569036 c!144601) b!1569028))

(assert (= (and b!1569036 (not c!144601)) b!1569034))

(assert (= (or b!1569028 b!1569034) bm!72028))

(assert (= (or b!1569035 bm!72028) bm!72027))

(assert (= (or b!1569032 bm!72027) bm!72029))

(assert (= (and bm!72029 c!144599) b!1569029))

(assert (= (and bm!72029 (not c!144599)) b!1569030))

(assert (= (and d!163769 res!1072523) b!1569031))

(assert (= (and b!1569031 res!1072524) b!1569037))

(declare-fun m!1443559 () Bool)

(assert (=> d!163769 m!1443559))

(assert (=> d!163769 m!1443435))

(declare-fun m!1443563 () Bool)

(assert (=> d!163769 m!1443563))

(declare-fun m!1443565 () Bool)

(assert (=> b!1569031 m!1443565))

(declare-fun m!1443567 () Bool)

(assert (=> b!1569029 m!1443567))

(declare-fun m!1443569 () Bool)

(assert (=> bm!72029 m!1443569))

(declare-fun m!1443571 () Bool)

(assert (=> b!1569037 m!1443571))

(assert (=> b!1568858 d!163769))

(declare-fun b!1569040 () Bool)

(declare-fun e!874703 () List!36889)

(declare-fun call!72037 () List!36889)

(assert (=> b!1569040 (= e!874703 call!72037)))

(declare-fun e!874700 () List!36889)

(declare-fun b!1569041 () Bool)

(assert (=> b!1569041 (= e!874700 (insertStrictlySorted!586 (t!51804 (t!51804 l!750)) key2!21 v2!10))))

(declare-fun c!144606 () Bool)

(declare-fun b!1569042 () Bool)

(declare-fun c!144605 () Bool)

(assert (=> b!1569042 (= e!874700 (ite c!144606 (t!51804 (t!51804 l!750)) (ite c!144605 (Cons!36885 (h!38333 (t!51804 l!750)) (t!51804 (t!51804 l!750))) Nil!36886)))))

(declare-fun b!1569043 () Bool)

(declare-fun res!1072528 () Bool)

(declare-fun e!874702 () Bool)

(assert (=> b!1569043 (=> (not res!1072528) (not e!874702))))

(declare-fun lt!673212 () List!36889)

(assert (=> b!1569043 (= res!1072528 (containsKey!859 lt!673212 key2!21))))

(declare-fun b!1569044 () Bool)

(declare-fun e!874701 () List!36889)

(declare-fun call!72038 () List!36889)

(assert (=> b!1569044 (= e!874701 call!72038)))

(declare-fun b!1569045 () Bool)

(declare-fun e!874699 () List!36889)

(assert (=> b!1569045 (= e!874701 e!874699)))

(assert (=> b!1569045 (= c!144606 (and (is-Cons!36885 (t!51804 l!750)) (= (_1!12751 (h!38333 (t!51804 l!750))) key2!21)))))

(declare-fun d!163773 () Bool)

(assert (=> d!163773 e!874702))

(declare-fun res!1072527 () Bool)

(assert (=> d!163773 (=> (not res!1072527) (not e!874702))))

(assert (=> d!163773 (= res!1072527 (isStrictlySorted!999 lt!673212))))

(assert (=> d!163773 (= lt!673212 e!874701)))

(declare-fun c!144604 () Bool)

(assert (=> d!163773 (= c!144604 (and (is-Cons!36885 (t!51804 l!750)) (bvslt (_1!12751 (h!38333 (t!51804 l!750))) key2!21)))))

(assert (=> d!163773 (isStrictlySorted!999 (t!51804 l!750))))

(assert (=> d!163773 (= (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10) lt!673212)))

(declare-fun b!1569046 () Bool)

(assert (=> b!1569046 (= e!874703 call!72037)))

(declare-fun bm!72034 () Bool)

(declare-fun call!72039 () List!36889)

(assert (=> bm!72034 (= call!72039 call!72038)))

(declare-fun b!1569047 () Bool)

(assert (=> b!1569047 (= e!874699 call!72039)))

(declare-fun bm!72035 () Bool)

(assert (=> bm!72035 (= call!72037 call!72039)))

(declare-fun bm!72036 () Bool)

(assert (=> bm!72036 (= call!72038 ($colon$colon!994 e!874700 (ite c!144604 (h!38333 (t!51804 l!750)) (tuple2!25483 key2!21 v2!10))))))

(declare-fun c!144603 () Bool)

(assert (=> bm!72036 (= c!144603 c!144604)))

(declare-fun b!1569048 () Bool)

(assert (=> b!1569048 (= c!144605 (and (is-Cons!36885 (t!51804 l!750)) (bvsgt (_1!12751 (h!38333 (t!51804 l!750))) key2!21)))))

(assert (=> b!1569048 (= e!874699 e!874703)))

(declare-fun b!1569049 () Bool)

(assert (=> b!1569049 (= e!874702 (contains!10437 lt!673212 (tuple2!25483 key2!21 v2!10)))))

(assert (= (and d!163773 c!144604) b!1569044))

(assert (= (and d!163773 (not c!144604)) b!1569045))

(assert (= (and b!1569045 c!144606) b!1569047))

(assert (= (and b!1569045 (not c!144606)) b!1569048))

(assert (= (and b!1569048 c!144605) b!1569040))

(assert (= (and b!1569048 (not c!144605)) b!1569046))

(assert (= (or b!1569040 b!1569046) bm!72035))

(assert (= (or b!1569047 bm!72035) bm!72034))

(assert (= (or b!1569044 bm!72034) bm!72036))

(assert (= (and bm!72036 c!144603) b!1569041))

(assert (= (and bm!72036 (not c!144603)) b!1569042))

(assert (= (and d!163773 res!1072527) b!1569043))

(assert (= (and b!1569043 res!1072528) b!1569049))

(declare-fun m!1443573 () Bool)

(assert (=> d!163773 m!1443573))

(assert (=> d!163773 m!1443447))

(declare-fun m!1443575 () Bool)

(assert (=> b!1569043 m!1443575))

(declare-fun m!1443577 () Bool)

(assert (=> b!1569041 m!1443577))

(declare-fun m!1443579 () Bool)

(assert (=> bm!72036 m!1443579))

(declare-fun m!1443581 () Bool)

(assert (=> b!1569049 m!1443581))

(assert (=> b!1568858 d!163773))

(declare-fun d!163775 () Bool)

(declare-fun res!1072529 () Bool)

(declare-fun e!874709 () Bool)

(assert (=> d!163775 (=> res!1072529 e!874709)))

(assert (=> d!163775 (= res!1072529 (or (is-Nil!36886 (insertStrictlySorted!586 l!750 key2!21 v2!10)) (is-Nil!36886 (t!51804 (insertStrictlySorted!586 l!750 key2!21 v2!10)))))))

(assert (=> d!163775 (= (isStrictlySorted!999 (insertStrictlySorted!586 l!750 key2!21 v2!10)) e!874709)))

(declare-fun b!1569059 () Bool)

(declare-fun e!874710 () Bool)

(assert (=> b!1569059 (= e!874709 e!874710)))

(declare-fun res!1072530 () Bool)

(assert (=> b!1569059 (=> (not res!1072530) (not e!874710))))

(assert (=> b!1569059 (= res!1072530 (bvslt (_1!12751 (h!38333 (insertStrictlySorted!586 l!750 key2!21 v2!10))) (_1!12751 (h!38333 (t!51804 (insertStrictlySorted!586 l!750 key2!21 v2!10))))))))

(declare-fun b!1569060 () Bool)

(assert (=> b!1569060 (= e!874710 (isStrictlySorted!999 (t!51804 (insertStrictlySorted!586 l!750 key2!21 v2!10))))))

(assert (= (and d!163775 (not res!1072529)) b!1569059))

(assert (= (and b!1569059 res!1072530) b!1569060))

(declare-fun m!1443583 () Bool)

(assert (=> b!1569060 m!1443583))

(assert (=> b!1568858 d!163775))

(declare-fun b!1569065 () Bool)

(declare-fun e!874717 () List!36889)

(declare-fun call!72042 () List!36889)

(assert (=> b!1569065 (= e!874717 call!72042)))

(declare-fun e!874714 () List!36889)

(declare-fun b!1569066 () Bool)

(assert (=> b!1569066 (= e!874714 (insertStrictlySorted!586 (t!51804 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10)) key1!37 v1!32))))

(declare-fun b!1569067 () Bool)

(declare-fun c!144611 () Bool)

(declare-fun c!144612 () Bool)

(assert (=> b!1569067 (= e!874714 (ite c!144612 (t!51804 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10)) (ite c!144611 (Cons!36885 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10)) (t!51804 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10))) Nil!36886)))))

(declare-fun b!1569068 () Bool)

(declare-fun res!1072536 () Bool)

(declare-fun e!874716 () Bool)

(assert (=> b!1569068 (=> (not res!1072536) (not e!874716))))

(declare-fun lt!673213 () List!36889)

(assert (=> b!1569068 (= res!1072536 (containsKey!859 lt!673213 key1!37))))

(declare-fun b!1569069 () Bool)

(declare-fun e!874715 () List!36889)

(declare-fun call!72043 () List!36889)

(assert (=> b!1569069 (= e!874715 call!72043)))

(declare-fun b!1569070 () Bool)

(declare-fun e!874713 () List!36889)

(assert (=> b!1569070 (= e!874715 e!874713)))

(assert (=> b!1569070 (= c!144612 (and (is-Cons!36885 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10)) (= (_1!12751 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun d!163777 () Bool)

(assert (=> d!163777 e!874716))

(declare-fun res!1072535 () Bool)

(assert (=> d!163777 (=> (not res!1072535) (not e!874716))))

(assert (=> d!163777 (= res!1072535 (isStrictlySorted!999 lt!673213))))

(assert (=> d!163777 (= lt!673213 e!874715)))

(declare-fun c!144610 () Bool)

(assert (=> d!163777 (= c!144610 (and (is-Cons!36885 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10)) (bvslt (_1!12751 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> d!163777 (isStrictlySorted!999 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10))))

(assert (=> d!163777 (= (insertStrictlySorted!586 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10) key1!37 v1!32) lt!673213)))

(declare-fun b!1569071 () Bool)

(assert (=> b!1569071 (= e!874717 call!72042)))

(declare-fun bm!72039 () Bool)

(declare-fun call!72044 () List!36889)

(assert (=> bm!72039 (= call!72044 call!72043)))

(declare-fun b!1569072 () Bool)

(assert (=> b!1569072 (= e!874713 call!72044)))

(declare-fun bm!72040 () Bool)

(assert (=> bm!72040 (= call!72042 call!72044)))

(declare-fun bm!72041 () Bool)

(assert (=> bm!72041 (= call!72043 ($colon$colon!994 e!874714 (ite c!144610 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10)) (tuple2!25483 key1!37 v1!32))))))

(declare-fun c!144609 () Bool)

(assert (=> bm!72041 (= c!144609 c!144610)))

(declare-fun b!1569073 () Bool)

(assert (=> b!1569073 (= c!144611 (and (is-Cons!36885 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10)) (bvsgt (_1!12751 (h!38333 (insertStrictlySorted!586 (t!51804 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> b!1569073 (= e!874713 e!874717)))

(declare-fun b!1569074 () Bool)

(assert (=> b!1569074 (= e!874716 (contains!10437 lt!673213 (tuple2!25483 key1!37 v1!32)))))

(assert (= (and d!163777 c!144610) b!1569069))

(assert (= (and d!163777 (not c!144610)) b!1569070))

(assert (= (and b!1569070 c!144612) b!1569072))

(assert (= (and b!1569070 (not c!144612)) b!1569073))

(assert (= (and b!1569073 c!144611) b!1569065))

(assert (= (and b!1569073 (not c!144611)) b!1569071))

(assert (= (or b!1569065 b!1569071) bm!72040))

(assert (= (or b!1569072 bm!72040) bm!72039))

(assert (= (or b!1569069 bm!72039) bm!72041))

(assert (= (and bm!72041 c!144609) b!1569066))

(assert (= (and bm!72041 (not c!144609)) b!1569067))

(assert (= (and d!163777 res!1072535) b!1569068))

(assert (= (and b!1569068 res!1072536) b!1569074))

(declare-fun m!1443585 () Bool)

(assert (=> d!163777 m!1443585))

(assert (=> d!163777 m!1443433))

(declare-fun m!1443587 () Bool)

(assert (=> d!163777 m!1443587))

(declare-fun m!1443589 () Bool)

(assert (=> b!1569068 m!1443589))

(declare-fun m!1443591 () Bool)

(assert (=> b!1569066 m!1443591))

(declare-fun m!1443593 () Bool)

(assert (=> bm!72041 m!1443593))

(declare-fun m!1443595 () Bool)

(assert (=> b!1569074 m!1443595))

(assert (=> b!1568858 d!163777))

(declare-fun b!1569075 () Bool)

(declare-fun e!874722 () List!36889)

(declare-fun call!72045 () List!36889)

(assert (=> b!1569075 (= e!874722 call!72045)))

(declare-fun e!874719 () List!36889)

(declare-fun b!1569076 () Bool)

(assert (=> b!1569076 (= e!874719 (insertStrictlySorted!586 (t!51804 (t!51804 l!750)) key1!37 v1!32))))

(declare-fun c!144615 () Bool)

(declare-fun b!1569077 () Bool)

(declare-fun c!144616 () Bool)

(assert (=> b!1569077 (= e!874719 (ite c!144616 (t!51804 (t!51804 l!750)) (ite c!144615 (Cons!36885 (h!38333 (t!51804 l!750)) (t!51804 (t!51804 l!750))) Nil!36886)))))

(declare-fun b!1569078 () Bool)

(declare-fun res!1072538 () Bool)

(declare-fun e!874721 () Bool)

(assert (=> b!1569078 (=> (not res!1072538) (not e!874721))))

(declare-fun lt!673214 () List!36889)

(assert (=> b!1569078 (= res!1072538 (containsKey!859 lt!673214 key1!37))))

(declare-fun b!1569079 () Bool)

(declare-fun e!874720 () List!36889)

(declare-fun call!72046 () List!36889)

(assert (=> b!1569079 (= e!874720 call!72046)))

(declare-fun b!1569080 () Bool)

(declare-fun e!874718 () List!36889)

(assert (=> b!1569080 (= e!874720 e!874718)))

(assert (=> b!1569080 (= c!144616 (and (is-Cons!36885 (t!51804 l!750)) (= (_1!12751 (h!38333 (t!51804 l!750))) key1!37)))))

(declare-fun d!163779 () Bool)

(assert (=> d!163779 e!874721))

(declare-fun res!1072537 () Bool)

(assert (=> d!163779 (=> (not res!1072537) (not e!874721))))

(assert (=> d!163779 (= res!1072537 (isStrictlySorted!999 lt!673214))))

(assert (=> d!163779 (= lt!673214 e!874720)))

(declare-fun c!144614 () Bool)

(assert (=> d!163779 (= c!144614 (and (is-Cons!36885 (t!51804 l!750)) (bvslt (_1!12751 (h!38333 (t!51804 l!750))) key1!37)))))

(assert (=> d!163779 (isStrictlySorted!999 (t!51804 l!750))))

(assert (=> d!163779 (= (insertStrictlySorted!586 (t!51804 l!750) key1!37 v1!32) lt!673214)))

(declare-fun b!1569081 () Bool)

(assert (=> b!1569081 (= e!874722 call!72045)))

(declare-fun bm!72042 () Bool)

(declare-fun call!72047 () List!36889)

(assert (=> bm!72042 (= call!72047 call!72046)))

(declare-fun b!1569082 () Bool)

(assert (=> b!1569082 (= e!874718 call!72047)))

(declare-fun bm!72043 () Bool)

(assert (=> bm!72043 (= call!72045 call!72047)))

(declare-fun bm!72044 () Bool)

(assert (=> bm!72044 (= call!72046 ($colon$colon!994 e!874719 (ite c!144614 (h!38333 (t!51804 l!750)) (tuple2!25483 key1!37 v1!32))))))

(declare-fun c!144613 () Bool)

(assert (=> bm!72044 (= c!144613 c!144614)))

(declare-fun b!1569083 () Bool)

(assert (=> b!1569083 (= c!144615 (and (is-Cons!36885 (t!51804 l!750)) (bvsgt (_1!12751 (h!38333 (t!51804 l!750))) key1!37)))))

(assert (=> b!1569083 (= e!874718 e!874722)))

(declare-fun b!1569084 () Bool)

(assert (=> b!1569084 (= e!874721 (contains!10437 lt!673214 (tuple2!25483 key1!37 v1!32)))))

(assert (= (and d!163779 c!144614) b!1569079))

(assert (= (and d!163779 (not c!144614)) b!1569080))

(assert (= (and b!1569080 c!144616) b!1569082))

(assert (= (and b!1569080 (not c!144616)) b!1569083))

(assert (= (and b!1569083 c!144615) b!1569075))

(assert (= (and b!1569083 (not c!144615)) b!1569081))

(assert (= (or b!1569075 b!1569081) bm!72043))

(assert (= (or b!1569082 bm!72043) bm!72042))

(assert (= (or b!1569079 bm!72042) bm!72044))

(assert (= (and bm!72044 c!144613) b!1569076))

(assert (= (and bm!72044 (not c!144613)) b!1569077))

(assert (= (and d!163779 res!1072537) b!1569078))

(assert (= (and b!1569078 res!1072538) b!1569084))

(declare-fun m!1443597 () Bool)

(assert (=> d!163779 m!1443597))

(assert (=> d!163779 m!1443447))

(declare-fun m!1443599 () Bool)

(assert (=> b!1569078 m!1443599))

(declare-fun m!1443601 () Bool)

(assert (=> b!1569076 m!1443601))

(declare-fun m!1443603 () Bool)

(assert (=> bm!72044 m!1443603))

(declare-fun m!1443605 () Bool)

(assert (=> b!1569084 m!1443605))

(assert (=> b!1568858 d!163779))

(declare-fun b!1569089 () Bool)

(declare-fun e!874725 () Bool)

(declare-fun tp!114088 () Bool)

(assert (=> b!1569089 (= e!874725 (and tp_is_empty!39043 tp!114088))))

(assert (=> b!1568857 (= tp!114076 e!874725)))

(assert (= (and b!1568857 (is-Cons!36885 (t!51804 l!750))) b!1569089))

(push 1)

