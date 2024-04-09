; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134362 () Bool)

(assert start!134362)

(declare-fun b!1568512 () Bool)

(declare-fun e!874419 () Bool)

(declare-fun tp_is_empty!39031 () Bool)

(declare-fun tp!114049 () Bool)

(assert (=> b!1568512 (= e!874419 (and tp_is_empty!39031 tp!114049))))

(declare-fun b!1568513 () Bool)

(declare-fun res!1072307 () Bool)

(declare-fun e!874418 () Bool)

(assert (=> b!1568513 (=> (not res!1072307) (not e!874418))))

(declare-datatypes ((B!2480 0))(
  ( (B!2481 (val!19602 Int)) )
))
(declare-datatypes ((tuple2!25470 0))(
  ( (tuple2!25471 (_1!12745 (_ BitVec 64)) (_2!12745 B!2480)) )
))
(declare-datatypes ((List!36883 0))(
  ( (Nil!36880) (Cons!36879 (h!38327 tuple2!25470) (t!51798 List!36883)) )
))
(declare-fun l!750 () List!36883)

(declare-fun isStrictlySorted!993 (List!36883) Bool)

(assert (=> b!1568513 (= res!1072307 (isStrictlySorted!993 l!750))))

(declare-fun res!1072310 () Bool)

(assert (=> start!134362 (=> (not res!1072310) (not e!874418))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134362 (= res!1072310 (not (= key1!37 key2!21)))))

(assert (=> start!134362 e!874418))

(assert (=> start!134362 tp_is_empty!39031))

(assert (=> start!134362 e!874419))

(assert (=> start!134362 true))

(declare-fun v1!32 () B!2480)

(declare-fun b!1568514 () Bool)

(declare-fun insertStrictlySorted!580 (List!36883 (_ BitVec 64) B!2480) List!36883)

(assert (=> b!1568514 (= e!874418 (not (isStrictlySorted!993 (insertStrictlySorted!580 l!750 key1!37 v1!32))))))

(declare-fun v2!10 () B!2480)

(assert (=> b!1568514 (= (insertStrictlySorted!580 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!580 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52018 0))(
  ( (Unit!52019) )
))
(declare-fun lt!673135 () Unit!52018)

(declare-fun lemmaInsertStrictlySortedCommutative!7 (List!36883 (_ BitVec 64) B!2480 (_ BitVec 64) B!2480) Unit!52018)

(assert (=> b!1568514 (= lt!673135 (lemmaInsertStrictlySortedCommutative!7 (t!51798 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568515 () Bool)

(declare-fun res!1072309 () Bool)

(assert (=> b!1568515 (=> (not res!1072309) (not e!874418))))

(assert (=> b!1568515 (= res!1072309 (isStrictlySorted!993 (t!51798 l!750)))))

(declare-fun b!1568516 () Bool)

(declare-fun res!1072308 () Bool)

(assert (=> b!1568516 (=> (not res!1072308) (not e!874418))))

(assert (=> b!1568516 (= res!1072308 (and (is-Cons!36879 l!750) (bvslt (_1!12745 (h!38327 l!750)) key1!37) (bvslt (_1!12745 (h!38327 l!750)) key2!21)))))

(assert (= (and start!134362 res!1072310) b!1568513))

(assert (= (and b!1568513 res!1072307) b!1568516))

(assert (= (and b!1568516 res!1072308) b!1568515))

(assert (= (and b!1568515 res!1072309) b!1568514))

(assert (= (and start!134362 (is-Cons!36879 l!750)) b!1568512))

(declare-fun m!1443163 () Bool)

(assert (=> b!1568513 m!1443163))

(declare-fun m!1443165 () Bool)

(assert (=> b!1568514 m!1443165))

(assert (=> b!1568514 m!1443165))

(declare-fun m!1443167 () Bool)

(assert (=> b!1568514 m!1443167))

(declare-fun m!1443169 () Bool)

(assert (=> b!1568514 m!1443169))

(declare-fun m!1443171 () Bool)

(assert (=> b!1568514 m!1443171))

(assert (=> b!1568514 m!1443169))

(declare-fun m!1443173 () Bool)

(assert (=> b!1568514 m!1443173))

(declare-fun m!1443175 () Bool)

(assert (=> b!1568514 m!1443175))

(assert (=> b!1568514 m!1443175))

(declare-fun m!1443177 () Bool)

(assert (=> b!1568514 m!1443177))

(declare-fun m!1443179 () Bool)

(assert (=> b!1568515 m!1443179))

(push 1)

(assert (not b!1568515))

(assert (not b!1568514))

(assert (not b!1568513))

(assert (not b!1568512))

(assert tp_is_empty!39031)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163681 () Bool)

(assert (=> d!163681 (= (insertStrictlySorted!580 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!580 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673144 () Unit!52018)

(declare-fun choose!2084 (List!36883 (_ BitVec 64) B!2480 (_ BitVec 64) B!2480) Unit!52018)

(assert (=> d!163681 (= lt!673144 (choose!2084 (t!51798 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163681 (not (= key1!37 key2!21))))

(assert (=> d!163681 (= (lemmaInsertStrictlySortedCommutative!7 (t!51798 l!750) key1!37 v1!32 key2!21 v2!10) lt!673144)))

(declare-fun bs!45176 () Bool)

(assert (= bs!45176 d!163681))

(assert (=> bs!45176 m!1443169))

(assert (=> bs!45176 m!1443171))

(assert (=> bs!45176 m!1443165))

(assert (=> bs!45176 m!1443167))

(assert (=> bs!45176 m!1443169))

(declare-fun m!1443217 () Bool)

(assert (=> bs!45176 m!1443217))

(assert (=> bs!45176 m!1443165))

(assert (=> b!1568514 d!163681))

(declare-fun d!163685 () Bool)

(declare-fun res!1072345 () Bool)

(declare-fun e!874442 () Bool)

(assert (=> d!163685 (=> res!1072345 e!874442)))

(assert (=> d!163685 (= res!1072345 (or (is-Nil!36880 (insertStrictlySorted!580 l!750 key1!37 v1!32)) (is-Nil!36880 (t!51798 (insertStrictlySorted!580 l!750 key1!37 v1!32)))))))

(assert (=> d!163685 (= (isStrictlySorted!993 (insertStrictlySorted!580 l!750 key1!37 v1!32)) e!874442)))

(declare-fun b!1568557 () Bool)

(declare-fun e!874443 () Bool)

(assert (=> b!1568557 (= e!874442 e!874443)))

(declare-fun res!1072346 () Bool)

(assert (=> b!1568557 (=> (not res!1072346) (not e!874443))))

(assert (=> b!1568557 (= res!1072346 (bvslt (_1!12745 (h!38327 (insertStrictlySorted!580 l!750 key1!37 v1!32))) (_1!12745 (h!38327 (t!51798 (insertStrictlySorted!580 l!750 key1!37 v1!32))))))))

(declare-fun b!1568558 () Bool)

(assert (=> b!1568558 (= e!874443 (isStrictlySorted!993 (t!51798 (insertStrictlySorted!580 l!750 key1!37 v1!32))))))

(assert (= (and d!163685 (not res!1072345)) b!1568557))

(assert (= (and b!1568557 res!1072346) b!1568558))

(declare-fun m!1443219 () Bool)

(assert (=> b!1568558 m!1443219))

(assert (=> b!1568514 d!163685))

(declare-fun b!1568611 () Bool)

(declare-fun e!874476 () List!36883)

(declare-fun call!71950 () List!36883)

(assert (=> b!1568611 (= e!874476 call!71950)))

(declare-fun b!1568612 () Bool)

(declare-fun e!874478 () List!36883)

(declare-fun call!71949 () List!36883)

(assert (=> b!1568612 (= e!874478 call!71949)))

(declare-fun b!1568613 () Bool)

(declare-fun e!874479 () List!36883)

(declare-fun call!71951 () List!36883)

(assert (=> b!1568613 (= e!874479 call!71951)))

(declare-fun d!163687 () Bool)

(declare-fun e!874480 () Bool)

(assert (=> d!163687 e!874480))

(declare-fun res!1072367 () Bool)

(assert (=> d!163687 (=> (not res!1072367) (not e!874480))))

(declare-fun lt!673155 () List!36883)

(assert (=> d!163687 (= res!1072367 (isStrictlySorted!993 lt!673155))))

(assert (=> d!163687 (= lt!673155 e!874479)))

(declare-fun c!144488 () Bool)

(assert (=> d!163687 (= c!144488 (and (is-Cons!36879 l!750) (bvslt (_1!12745 (h!38327 l!750)) key1!37)))))

(assert (=> d!163687 (isStrictlySorted!993 l!750)))

(assert (=> d!163687 (= (insertStrictlySorted!580 l!750 key1!37 v1!32) lt!673155)))

(declare-fun bm!71946 () Bool)

(declare-fun e!874477 () List!36883)

(declare-fun $colon$colon!990 (List!36883 tuple2!25470) List!36883)

(assert (=> bm!71946 (= call!71951 ($colon$colon!990 e!874477 (ite c!144488 (h!38327 l!750) (tuple2!25471 key1!37 v1!32))))))

(declare-fun c!144485 () Bool)

(assert (=> bm!71946 (= c!144485 c!144488)))

(declare-fun bm!71947 () Bool)

(assert (=> bm!71947 (= call!71950 call!71949)))

(declare-fun b!1568614 () Bool)

(declare-fun c!144486 () Bool)

(assert (=> b!1568614 (= c!144486 (and (is-Cons!36879 l!750) (bvsgt (_1!12745 (h!38327 l!750)) key1!37)))))

(assert (=> b!1568614 (= e!874478 e!874476)))

(declare-fun bm!71948 () Bool)

(assert (=> bm!71948 (= call!71949 call!71951)))

(declare-fun b!1568615 () Bool)

(assert (=> b!1568615 (= e!874479 e!874478)))

(declare-fun c!144487 () Bool)

(assert (=> b!1568615 (= c!144487 (and (is-Cons!36879 l!750) (= (_1!12745 (h!38327 l!750)) key1!37)))))

(declare-fun b!1568616 () Bool)

(declare-fun contains!10434 (List!36883 tuple2!25470) Bool)

(assert (=> b!1568616 (= e!874480 (contains!10434 lt!673155 (tuple2!25471 key1!37 v1!32)))))

(declare-fun b!1568617 () Bool)

(assert (=> b!1568617 (= e!874476 call!71950)))

(declare-fun b!1568618 () Bool)

(assert (=> b!1568618 (= e!874477 (ite c!144487 (t!51798 l!750) (ite c!144486 (Cons!36879 (h!38327 l!750) (t!51798 l!750)) Nil!36880)))))

(declare-fun b!1568619 () Bool)

(declare-fun res!1072368 () Bool)

(assert (=> b!1568619 (=> (not res!1072368) (not e!874480))))

(declare-fun containsKey!856 (List!36883 (_ BitVec 64)) Bool)

(assert (=> b!1568619 (= res!1072368 (containsKey!856 lt!673155 key1!37))))

(declare-fun b!1568620 () Bool)

(assert (=> b!1568620 (= e!874477 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32))))

(assert (= (and d!163687 c!144488) b!1568613))

(assert (= (and d!163687 (not c!144488)) b!1568615))

(assert (= (and b!1568615 c!144487) b!1568612))

(assert (= (and b!1568615 (not c!144487)) b!1568614))

(assert (= (and b!1568614 c!144486) b!1568611))

(assert (= (and b!1568614 (not c!144486)) b!1568617))

(assert (= (or b!1568611 b!1568617) bm!71947))

(assert (= (or b!1568612 bm!71947) bm!71948))

(assert (= (or b!1568613 bm!71948) bm!71946))

(assert (= (and bm!71946 c!144485) b!1568620))

(assert (= (and bm!71946 (not c!144485)) b!1568618))

(assert (= (and d!163687 res!1072367) b!1568619))

(assert (= (and b!1568619 res!1072368) b!1568616))

(declare-fun m!1443231 () Bool)

(assert (=> b!1568616 m!1443231))

(declare-fun m!1443233 () Bool)

(assert (=> b!1568619 m!1443233))

(declare-fun m!1443235 () Bool)

(assert (=> d!163687 m!1443235))

(assert (=> d!163687 m!1443163))

(declare-fun m!1443237 () Bool)

(assert (=> bm!71946 m!1443237))

(assert (=> b!1568620 m!1443169))

(assert (=> b!1568514 d!163687))

(declare-fun b!1568621 () Bool)

(declare-fun e!874481 () List!36883)

(declare-fun call!71953 () List!36883)

(assert (=> b!1568621 (= e!874481 call!71953)))

(declare-fun b!1568622 () Bool)

(declare-fun e!874483 () List!36883)

(declare-fun call!71952 () List!36883)

(assert (=> b!1568622 (= e!874483 call!71952)))

(declare-fun b!1568623 () Bool)

(declare-fun e!874484 () List!36883)

(declare-fun call!71954 () List!36883)

(assert (=> b!1568623 (= e!874484 call!71954)))

(declare-fun d!163703 () Bool)

(declare-fun e!874485 () Bool)

(assert (=> d!163703 e!874485))

(declare-fun res!1072369 () Bool)

(assert (=> d!163703 (=> (not res!1072369) (not e!874485))))

(declare-fun lt!673156 () List!36883)

(assert (=> d!163703 (= res!1072369 (isStrictlySorted!993 lt!673156))))

(assert (=> d!163703 (= lt!673156 e!874484)))

(declare-fun c!144492 () Bool)

(assert (=> d!163703 (= c!144492 (and (is-Cons!36879 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32)) (bvslt (_1!12745 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163703 (isStrictlySorted!993 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32))))

(assert (=> d!163703 (= (insertStrictlySorted!580 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32) key2!21 v2!10) lt!673156)))

(declare-fun e!874482 () List!36883)

(declare-fun bm!71949 () Bool)

(assert (=> bm!71949 (= call!71954 ($colon$colon!990 e!874482 (ite c!144492 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32)) (tuple2!25471 key2!21 v2!10))))))

(declare-fun c!144489 () Bool)

(assert (=> bm!71949 (= c!144489 c!144492)))

(declare-fun bm!71950 () Bool)

(assert (=> bm!71950 (= call!71953 call!71952)))

(declare-fun b!1568624 () Bool)

(declare-fun c!144490 () Bool)

(assert (=> b!1568624 (= c!144490 (and (is-Cons!36879 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32)) (bvsgt (_1!12745 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> b!1568624 (= e!874483 e!874481)))

(declare-fun bm!71951 () Bool)

(assert (=> bm!71951 (= call!71952 call!71954)))

(declare-fun b!1568625 () Bool)

(assert (=> b!1568625 (= e!874484 e!874483)))

(declare-fun c!144491 () Bool)

(assert (=> b!1568625 (= c!144491 (and (is-Cons!36879 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32)) (= (_1!12745 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun b!1568626 () Bool)

(assert (=> b!1568626 (= e!874485 (contains!10434 lt!673156 (tuple2!25471 key2!21 v2!10)))))

(declare-fun b!1568627 () Bool)

(assert (=> b!1568627 (= e!874481 call!71953)))

(declare-fun b!1568628 () Bool)

(assert (=> b!1568628 (= e!874482 (ite c!144491 (t!51798 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32)) (ite c!144490 (Cons!36879 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32)) (t!51798 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32))) Nil!36880)))))

(declare-fun b!1568629 () Bool)

(declare-fun res!1072370 () Bool)

(assert (=> b!1568629 (=> (not res!1072370) (not e!874485))))

(assert (=> b!1568629 (= res!1072370 (containsKey!856 lt!673156 key2!21))))

(declare-fun b!1568630 () Bool)

(assert (=> b!1568630 (= e!874482 (insertStrictlySorted!580 (t!51798 (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32)) key2!21 v2!10))))

(assert (= (and d!163703 c!144492) b!1568623))

(assert (= (and d!163703 (not c!144492)) b!1568625))

(assert (= (and b!1568625 c!144491) b!1568622))

(assert (= (and b!1568625 (not c!144491)) b!1568624))

(assert (= (and b!1568624 c!144490) b!1568621))

(assert (= (and b!1568624 (not c!144490)) b!1568627))

(assert (= (or b!1568621 b!1568627) bm!71950))

(assert (= (or b!1568622 bm!71950) bm!71951))

(assert (= (or b!1568623 bm!71951) bm!71949))

(assert (= (and bm!71949 c!144489) b!1568630))

(assert (= (and bm!71949 (not c!144489)) b!1568628))

(assert (= (and d!163703 res!1072369) b!1568629))

(assert (= (and b!1568629 res!1072370) b!1568626))

(declare-fun m!1443239 () Bool)

(assert (=> b!1568626 m!1443239))

(declare-fun m!1443241 () Bool)

(assert (=> b!1568629 m!1443241))

(declare-fun m!1443243 () Bool)

(assert (=> d!163703 m!1443243))

(assert (=> d!163703 m!1443169))

(declare-fun m!1443245 () Bool)

(assert (=> d!163703 m!1443245))

(declare-fun m!1443247 () Bool)

(assert (=> bm!71949 m!1443247))

(declare-fun m!1443249 () Bool)

(assert (=> b!1568630 m!1443249))

(assert (=> b!1568514 d!163703))

(declare-fun b!1568641 () Bool)

(declare-fun e!874491 () List!36883)

(declare-fun call!71959 () List!36883)

(assert (=> b!1568641 (= e!874491 call!71959)))

(declare-fun b!1568642 () Bool)

(declare-fun e!874493 () List!36883)

(declare-fun call!71958 () List!36883)

(assert (=> b!1568642 (= e!874493 call!71958)))

(declare-fun b!1568643 () Bool)

(declare-fun e!874494 () List!36883)

(declare-fun call!71960 () List!36883)

(assert (=> b!1568643 (= e!874494 call!71960)))

(declare-fun d!163705 () Bool)

(declare-fun e!874495 () Bool)

(assert (=> d!163705 e!874495))

(declare-fun res!1072373 () Bool)

(assert (=> d!163705 (=> (not res!1072373) (not e!874495))))

(declare-fun lt!673158 () List!36883)

(assert (=> d!163705 (= res!1072373 (isStrictlySorted!993 lt!673158))))

(assert (=> d!163705 (= lt!673158 e!874494)))

(declare-fun c!144500 () Bool)

(assert (=> d!163705 (= c!144500 (and (is-Cons!36879 (t!51798 l!750)) (bvslt (_1!12745 (h!38327 (t!51798 l!750))) key2!21)))))

(assert (=> d!163705 (isStrictlySorted!993 (t!51798 l!750))))

(assert (=> d!163705 (= (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10) lt!673158)))

(declare-fun bm!71955 () Bool)

(declare-fun e!874492 () List!36883)

(assert (=> bm!71955 (= call!71960 ($colon$colon!990 e!874492 (ite c!144500 (h!38327 (t!51798 l!750)) (tuple2!25471 key2!21 v2!10))))))

(declare-fun c!144497 () Bool)

(assert (=> bm!71955 (= c!144497 c!144500)))

(declare-fun bm!71956 () Bool)

(assert (=> bm!71956 (= call!71959 call!71958)))

(declare-fun b!1568644 () Bool)

(declare-fun c!144498 () Bool)

(assert (=> b!1568644 (= c!144498 (and (is-Cons!36879 (t!51798 l!750)) (bvsgt (_1!12745 (h!38327 (t!51798 l!750))) key2!21)))))

(assert (=> b!1568644 (= e!874493 e!874491)))

(declare-fun bm!71957 () Bool)

(assert (=> bm!71957 (= call!71958 call!71960)))

(declare-fun b!1568645 () Bool)

(assert (=> b!1568645 (= e!874494 e!874493)))

(declare-fun c!144499 () Bool)

(assert (=> b!1568645 (= c!144499 (and (is-Cons!36879 (t!51798 l!750)) (= (_1!12745 (h!38327 (t!51798 l!750))) key2!21)))))

(declare-fun b!1568646 () Bool)

(assert (=> b!1568646 (= e!874495 (contains!10434 lt!673158 (tuple2!25471 key2!21 v2!10)))))

(declare-fun b!1568647 () Bool)

(assert (=> b!1568647 (= e!874491 call!71959)))

(declare-fun b!1568648 () Bool)

(assert (=> b!1568648 (= e!874492 (ite c!144499 (t!51798 (t!51798 l!750)) (ite c!144498 (Cons!36879 (h!38327 (t!51798 l!750)) (t!51798 (t!51798 l!750))) Nil!36880)))))

(declare-fun b!1568649 () Bool)

(declare-fun res!1072374 () Bool)

(assert (=> b!1568649 (=> (not res!1072374) (not e!874495))))

(assert (=> b!1568649 (= res!1072374 (containsKey!856 lt!673158 key2!21))))

(declare-fun b!1568650 () Bool)

(assert (=> b!1568650 (= e!874492 (insertStrictlySorted!580 (t!51798 (t!51798 l!750)) key2!21 v2!10))))

(assert (= (and d!163705 c!144500) b!1568643))

(assert (= (and d!163705 (not c!144500)) b!1568645))

(assert (= (and b!1568645 c!144499) b!1568642))

(assert (= (and b!1568645 (not c!144499)) b!1568644))

(assert (= (and b!1568644 c!144498) b!1568641))

(assert (= (and b!1568644 (not c!144498)) b!1568647))

(assert (= (or b!1568641 b!1568647) bm!71956))

(assert (= (or b!1568642 bm!71956) bm!71957))

(assert (= (or b!1568643 bm!71957) bm!71955))

(assert (= (and bm!71955 c!144497) b!1568650))

(assert (= (and bm!71955 (not c!144497)) b!1568648))

(assert (= (and d!163705 res!1072373) b!1568649))

(assert (= (and b!1568649 res!1072374) b!1568646))

(declare-fun m!1443259 () Bool)

(assert (=> b!1568646 m!1443259))

(declare-fun m!1443261 () Bool)

(assert (=> b!1568649 m!1443261))

(declare-fun m!1443263 () Bool)

(assert (=> d!163705 m!1443263))

(assert (=> d!163705 m!1443179))

(declare-fun m!1443265 () Bool)

(assert (=> bm!71955 m!1443265))

(declare-fun m!1443267 () Bool)

(assert (=> b!1568650 m!1443267))

(assert (=> b!1568514 d!163705))

(declare-fun b!1568661 () Bool)

(declare-fun e!874501 () List!36883)

(declare-fun call!71965 () List!36883)

(assert (=> b!1568661 (= e!874501 call!71965)))

(declare-fun b!1568662 () Bool)

(declare-fun e!874503 () List!36883)

(declare-fun call!71964 () List!36883)

(assert (=> b!1568662 (= e!874503 call!71964)))

(declare-fun b!1568663 () Bool)

(declare-fun e!874504 () List!36883)

(declare-fun call!71966 () List!36883)

(assert (=> b!1568663 (= e!874504 call!71966)))

(declare-fun d!163709 () Bool)

(declare-fun e!874505 () Bool)

(assert (=> d!163709 e!874505))

(declare-fun res!1072377 () Bool)

(assert (=> d!163709 (=> (not res!1072377) (not e!874505))))

(declare-fun lt!673160 () List!36883)

(assert (=> d!163709 (= res!1072377 (isStrictlySorted!993 lt!673160))))

(assert (=> d!163709 (= lt!673160 e!874504)))

(declare-fun c!144508 () Bool)

(assert (=> d!163709 (= c!144508 (and (is-Cons!36879 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10)) (bvslt (_1!12745 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> d!163709 (isStrictlySorted!993 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10))))

(assert (=> d!163709 (= (insertStrictlySorted!580 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10) key1!37 v1!32) lt!673160)))

(declare-fun e!874502 () List!36883)

(declare-fun bm!71961 () Bool)

(assert (=> bm!71961 (= call!71966 ($colon$colon!990 e!874502 (ite c!144508 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10)) (tuple2!25471 key1!37 v1!32))))))

(declare-fun c!144505 () Bool)

(assert (=> bm!71961 (= c!144505 c!144508)))

(declare-fun bm!71962 () Bool)

(assert (=> bm!71962 (= call!71965 call!71964)))

(declare-fun b!1568664 () Bool)

(declare-fun c!144506 () Bool)

(assert (=> b!1568664 (= c!144506 (and (is-Cons!36879 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10)) (bvsgt (_1!12745 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> b!1568664 (= e!874503 e!874501)))

(declare-fun bm!71963 () Bool)

(assert (=> bm!71963 (= call!71964 call!71966)))

(declare-fun b!1568665 () Bool)

(assert (=> b!1568665 (= e!874504 e!874503)))

(declare-fun c!144507 () Bool)

(assert (=> b!1568665 (= c!144507 (and (is-Cons!36879 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10)) (= (_1!12745 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun b!1568666 () Bool)

(assert (=> b!1568666 (= e!874505 (contains!10434 lt!673160 (tuple2!25471 key1!37 v1!32)))))

(declare-fun b!1568667 () Bool)

(assert (=> b!1568667 (= e!874501 call!71965)))

(declare-fun b!1568668 () Bool)

(assert (=> b!1568668 (= e!874502 (ite c!144507 (t!51798 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10)) (ite c!144506 (Cons!36879 (h!38327 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10)) (t!51798 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10))) Nil!36880)))))

(declare-fun b!1568669 () Bool)

(declare-fun res!1072378 () Bool)

(assert (=> b!1568669 (=> (not res!1072378) (not e!874505))))

(assert (=> b!1568669 (= res!1072378 (containsKey!856 lt!673160 key1!37))))

(declare-fun b!1568670 () Bool)

(assert (=> b!1568670 (= e!874502 (insertStrictlySorted!580 (t!51798 (insertStrictlySorted!580 (t!51798 l!750) key2!21 v2!10)) key1!37 v1!32))))

(assert (= (and d!163709 c!144508) b!1568663))

(assert (= (and d!163709 (not c!144508)) b!1568665))

(assert (= (and b!1568665 c!144507) b!1568662))

(assert (= (and b!1568665 (not c!144507)) b!1568664))

(assert (= (and b!1568664 c!144506) b!1568661))

(assert (= (and b!1568664 (not c!144506)) b!1568667))

(assert (= (or b!1568661 b!1568667) bm!71962))

(assert (= (or b!1568662 bm!71962) bm!71963))

(assert (= (or b!1568663 bm!71963) bm!71961))

(assert (= (and bm!71961 c!144505) b!1568670))

(assert (= (and bm!71961 (not c!144505)) b!1568668))

(assert (= (and d!163709 res!1072377) b!1568669))

(assert (= (and b!1568669 res!1072378) b!1568666))

(declare-fun m!1443281 () Bool)

(assert (=> b!1568666 m!1443281))

(declare-fun m!1443283 () Bool)

(assert (=> b!1568669 m!1443283))

(declare-fun m!1443285 () Bool)

(assert (=> d!163709 m!1443285))

(assert (=> d!163709 m!1443165))

(declare-fun m!1443287 () Bool)

(assert (=> d!163709 m!1443287))

(declare-fun m!1443289 () Bool)

(assert (=> bm!71961 m!1443289))

(declare-fun m!1443291 () Bool)

(assert (=> b!1568670 m!1443291))

(assert (=> b!1568514 d!163709))

(declare-fun b!1568681 () Bool)

(declare-fun e!874511 () List!36883)

(declare-fun call!71971 () List!36883)

(assert (=> b!1568681 (= e!874511 call!71971)))

(declare-fun b!1568682 () Bool)

(declare-fun e!874513 () List!36883)

(declare-fun call!71970 () List!36883)

(assert (=> b!1568682 (= e!874513 call!71970)))

(declare-fun b!1568683 () Bool)

(declare-fun e!874514 () List!36883)

(declare-fun call!71972 () List!36883)

(assert (=> b!1568683 (= e!874514 call!71972)))

(declare-fun d!163713 () Bool)

(declare-fun e!874515 () Bool)

(assert (=> d!163713 e!874515))

(declare-fun res!1072381 () Bool)

(assert (=> d!163713 (=> (not res!1072381) (not e!874515))))

(declare-fun lt!673162 () List!36883)

(assert (=> d!163713 (= res!1072381 (isStrictlySorted!993 lt!673162))))

(assert (=> d!163713 (= lt!673162 e!874514)))

(declare-fun c!144516 () Bool)

(assert (=> d!163713 (= c!144516 (and (is-Cons!36879 (t!51798 l!750)) (bvslt (_1!12745 (h!38327 (t!51798 l!750))) key1!37)))))

(assert (=> d!163713 (isStrictlySorted!993 (t!51798 l!750))))

(assert (=> d!163713 (= (insertStrictlySorted!580 (t!51798 l!750) key1!37 v1!32) lt!673162)))

(declare-fun bm!71967 () Bool)

(declare-fun e!874512 () List!36883)

(assert (=> bm!71967 (= call!71972 ($colon$colon!990 e!874512 (ite c!144516 (h!38327 (t!51798 l!750)) (tuple2!25471 key1!37 v1!32))))))

(declare-fun c!144513 () Bool)

(assert (=> bm!71967 (= c!144513 c!144516)))

(declare-fun bm!71968 () Bool)

(assert (=> bm!71968 (= call!71971 call!71970)))

(declare-fun b!1568684 () Bool)

(declare-fun c!144514 () Bool)

(assert (=> b!1568684 (= c!144514 (and (is-Cons!36879 (t!51798 l!750)) (bvsgt (_1!12745 (h!38327 (t!51798 l!750))) key1!37)))))

(assert (=> b!1568684 (= e!874513 e!874511)))

(declare-fun bm!71969 () Bool)

(assert (=> bm!71969 (= call!71970 call!71972)))

(declare-fun b!1568685 () Bool)

(assert (=> b!1568685 (= e!874514 e!874513)))

(declare-fun c!144515 () Bool)

(assert (=> b!1568685 (= c!144515 (and (is-Cons!36879 (t!51798 l!750)) (= (_1!12745 (h!38327 (t!51798 l!750))) key1!37)))))

(declare-fun b!1568686 () Bool)

(assert (=> b!1568686 (= e!874515 (contains!10434 lt!673162 (tuple2!25471 key1!37 v1!32)))))

(declare-fun b!1568687 () Bool)

(assert (=> b!1568687 (= e!874511 call!71971)))

(declare-fun b!1568688 () Bool)

(assert (=> b!1568688 (= e!874512 (ite c!144515 (t!51798 (t!51798 l!750)) (ite c!144514 (Cons!36879 (h!38327 (t!51798 l!750)) (t!51798 (t!51798 l!750))) Nil!36880)))))

(declare-fun b!1568689 () Bool)

(declare-fun res!1072382 () Bool)

(assert (=> b!1568689 (=> (not res!1072382) (not e!874515))))

(assert (=> b!1568689 (= res!1072382 (containsKey!856 lt!673162 key1!37))))

(declare-fun b!1568690 () Bool)

(assert (=> b!1568690 (= e!874512 (insertStrictlySorted!580 (t!51798 (t!51798 l!750)) key1!37 v1!32))))

(assert (= (and d!163713 c!144516) b!1568683))

(assert (= (and d!163713 (not c!144516)) b!1568685))

(assert (= (and b!1568685 c!144515) b!1568682))

(assert (= (and b!1568685 (not c!144515)) b!1568684))

(assert (= (and b!1568684 c!144514) b!1568681))

(assert (= (and b!1568684 (not c!144514)) b!1568687))

(assert (= (or b!1568681 b!1568687) bm!71968))

(assert (= (or b!1568682 bm!71968) bm!71969))

(assert (= (or b!1568683 bm!71969) bm!71967))

(assert (= (and bm!71967 c!144513) b!1568690))

(assert (= (and bm!71967 (not c!144513)) b!1568688))

(assert (= (and d!163713 res!1072381) b!1568689))

(assert (= (and b!1568689 res!1072382) b!1568686))

(declare-fun m!1443303 () Bool)

(assert (=> b!1568686 m!1443303))

(declare-fun m!1443305 () Bool)

(assert (=> b!1568689 m!1443305))

(declare-fun m!1443307 () Bool)

(assert (=> d!163713 m!1443307))

(assert (=> d!163713 m!1443179))

(declare-fun m!1443309 () Bool)

(assert (=> bm!71967 m!1443309))

(declare-fun m!1443311 () Bool)

(assert (=> b!1568690 m!1443311))

(assert (=> b!1568514 d!163713))

(declare-fun d!163717 () Bool)

(declare-fun res!1072385 () Bool)

(declare-fun e!874527 () Bool)

(assert (=> d!163717 (=> res!1072385 e!874527)))

(assert (=> d!163717 (= res!1072385 (or (is-Nil!36880 l!750) (is-Nil!36880 (t!51798 l!750))))))

(assert (=> d!163717 (= (isStrictlySorted!993 l!750) e!874527)))

(declare-fun b!1568713 () Bool)

(declare-fun e!874528 () Bool)

(assert (=> b!1568713 (= e!874527 e!874528)))

(declare-fun res!1072386 () Bool)

(assert (=> b!1568713 (=> (not res!1072386) (not e!874528))))

(assert (=> b!1568713 (= res!1072386 (bvslt (_1!12745 (h!38327 l!750)) (_1!12745 (h!38327 (t!51798 l!750)))))))

(declare-fun b!1568714 () Bool)

(assert (=> b!1568714 (= e!874528 (isStrictlySorted!993 (t!51798 l!750)))))

(assert (= (and d!163717 (not res!1072385)) b!1568713))

(assert (= (and b!1568713 res!1072386) b!1568714))

(assert (=> b!1568714 m!1443179))

(assert (=> b!1568513 d!163717))

(declare-fun d!163719 () Bool)

(declare-fun res!1072387 () Bool)

(declare-fun e!874529 () Bool)

(assert (=> d!163719 (=> res!1072387 e!874529)))

(assert (=> d!163719 (= res!1072387 (or (is-Nil!36880 (t!51798 l!750)) (is-Nil!36880 (t!51798 (t!51798 l!750)))))))

(assert (=> d!163719 (= (isStrictlySorted!993 (t!51798 l!750)) e!874529)))

(declare-fun b!1568715 () Bool)

(declare-fun e!874530 () Bool)

(assert (=> b!1568715 (= e!874529 e!874530)))

(declare-fun res!1072388 () Bool)

(assert (=> b!1568715 (=> (not res!1072388) (not e!874530))))

(assert (=> b!1568715 (= res!1072388 (bvslt (_1!12745 (h!38327 (t!51798 l!750))) (_1!12745 (h!38327 (t!51798 (t!51798 l!750))))))))

(declare-fun b!1568716 () Bool)

(assert (=> b!1568716 (= e!874530 (isStrictlySorted!993 (t!51798 (t!51798 l!750))))))

(assert (= (and d!163719 (not res!1072387)) b!1568715))

(assert (= (and b!1568715 res!1072388) b!1568716))

(declare-fun m!1443313 () Bool)

(assert (=> b!1568716 m!1443313))

(assert (=> b!1568515 d!163719))

(declare-fun b!1568731 () Bool)

(declare-fun e!874538 () Bool)

(declare-fun tp!114058 () Bool)

(assert (=> b!1568731 (= e!874538 (and tp_is_empty!39031 tp!114058))))

(assert (=> b!1568512 (= tp!114049 e!874538)))

(assert (= (and b!1568512 (is-Cons!36879 (t!51798 l!750))) b!1568731))

(push 1)

