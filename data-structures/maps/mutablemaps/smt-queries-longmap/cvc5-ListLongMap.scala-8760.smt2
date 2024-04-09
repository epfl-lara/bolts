; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106390 () Bool)

(assert start!106390)

(declare-fun b!1264944 () Bool)

(declare-fun res!842406 () Bool)

(declare-fun e!720381 () Bool)

(assert (=> b!1264944 (=> (not res!842406) (not e!720381))))

(declare-datatypes ((B!1952 0))(
  ( (B!1953 (val!16311 Int)) )
))
(declare-datatypes ((tuple2!21290 0))(
  ( (tuple2!21291 (_1!10655 (_ BitVec 64)) (_2!10655 B!1952)) )
))
(declare-datatypes ((List!28478 0))(
  ( (Nil!28475) (Cons!28474 (h!29683 tuple2!21290) (t!42006 List!28478)) )
))
(declare-fun l!706 () List!28478)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!638 (List!28478 (_ BitVec 64)) Bool)

(assert (=> b!1264944 (= res!842406 (not (containsKey!638 l!706 key1!31)))))

(declare-fun b!1264946 () Bool)

(declare-fun res!842404 () Bool)

(assert (=> b!1264946 (=> (not res!842404) (not e!720381))))

(declare-fun isStrictlySorted!777 (List!28478) Bool)

(assert (=> b!1264946 (= res!842404 (isStrictlySorted!777 (t!42006 l!706)))))

(declare-fun b!1264947 () Bool)

(declare-fun res!842405 () Bool)

(assert (=> b!1264947 (=> (not res!842405) (not e!720381))))

(assert (=> b!1264947 (= res!842405 (not (containsKey!638 (t!42006 l!706) key1!31)))))

(declare-fun v1!26 () B!1952)

(declare-fun b!1264948 () Bool)

(declare-fun insertStrictlySorted!459 (List!28478 (_ BitVec 64) B!1952) List!28478)

(assert (=> b!1264948 (= e!720381 (not (isStrictlySorted!777 (insertStrictlySorted!459 l!706 key1!31 v1!26))))))

(declare-fun removeStrictlySorted!153 (List!28478 (_ BitVec 64)) List!28478)

(assert (=> b!1264948 (= (removeStrictlySorted!153 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26) key1!31) (t!42006 l!706))))

(declare-datatypes ((Unit!42125 0))(
  ( (Unit!42126) )
))
(declare-fun lt!573941 () Unit!42125)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!7 (List!28478 (_ BitVec 64) B!1952) Unit!42125)

(assert (=> b!1264948 (= lt!573941 (lemmaInsertStrictlySortedThenRemoveIsSame!7 (t!42006 l!706) key1!31 v1!26))))

(declare-fun b!1264949 () Bool)

(declare-fun e!720382 () Bool)

(declare-fun tp_is_empty!32485 () Bool)

(declare-fun tp!96294 () Bool)

(assert (=> b!1264949 (= e!720382 (and tp_is_empty!32485 tp!96294))))

(declare-fun res!842403 () Bool)

(assert (=> start!106390 (=> (not res!842403) (not e!720381))))

(assert (=> start!106390 (= res!842403 (isStrictlySorted!777 l!706))))

(assert (=> start!106390 e!720381))

(assert (=> start!106390 e!720382))

(assert (=> start!106390 true))

(assert (=> start!106390 tp_is_empty!32485))

(declare-fun b!1264945 () Bool)

(declare-fun res!842407 () Bool)

(assert (=> b!1264945 (=> (not res!842407) (not e!720381))))

(assert (=> b!1264945 (= res!842407 (is-Cons!28474 l!706))))

(assert (= (and start!106390 res!842403) b!1264944))

(assert (= (and b!1264944 res!842406) b!1264945))

(assert (= (and b!1264945 res!842407) b!1264946))

(assert (= (and b!1264946 res!842404) b!1264947))

(assert (= (and b!1264947 res!842405) b!1264948))

(assert (= (and start!106390 (is-Cons!28474 l!706)) b!1264949))

(declare-fun m!1165359 () Bool)

(assert (=> b!1264948 m!1165359))

(declare-fun m!1165361 () Bool)

(assert (=> b!1264948 m!1165361))

(declare-fun m!1165363 () Bool)

(assert (=> b!1264948 m!1165363))

(declare-fun m!1165365 () Bool)

(assert (=> b!1264948 m!1165365))

(assert (=> b!1264948 m!1165363))

(declare-fun m!1165367 () Bool)

(assert (=> b!1264948 m!1165367))

(assert (=> b!1264948 m!1165359))

(declare-fun m!1165369 () Bool)

(assert (=> b!1264944 m!1165369))

(declare-fun m!1165371 () Bool)

(assert (=> b!1264947 m!1165371))

(declare-fun m!1165373 () Bool)

(assert (=> b!1264946 m!1165373))

(declare-fun m!1165375 () Bool)

(assert (=> start!106390 m!1165375))

(push 1)

(assert (not start!106390))

(assert tp_is_empty!32485)

(assert (not b!1264949))

(assert (not b!1264944))

(assert (not b!1264946))

(assert (not b!1264948))

(assert (not b!1264947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138761 () Bool)

(declare-fun res!842446 () Bool)

(declare-fun e!720403 () Bool)

(assert (=> d!138761 (=> res!842446 e!720403)))

(assert (=> d!138761 (= res!842446 (or (is-Nil!28475 (t!42006 l!706)) (is-Nil!28475 (t!42006 (t!42006 l!706)))))))

(assert (=> d!138761 (= (isStrictlySorted!777 (t!42006 l!706)) e!720403)))

(declare-fun b!1264994 () Bool)

(declare-fun e!720404 () Bool)

(assert (=> b!1264994 (= e!720403 e!720404)))

(declare-fun res!842447 () Bool)

(assert (=> b!1264994 (=> (not res!842447) (not e!720404))))

(assert (=> b!1264994 (= res!842447 (bvslt (_1!10655 (h!29683 (t!42006 l!706))) (_1!10655 (h!29683 (t!42006 (t!42006 l!706))))))))

(declare-fun b!1264995 () Bool)

(assert (=> b!1264995 (= e!720404 (isStrictlySorted!777 (t!42006 (t!42006 l!706))))))

(assert (= (and d!138761 (not res!842446)) b!1264994))

(assert (= (and b!1264994 res!842447) b!1264995))

(declare-fun m!1165413 () Bool)

(assert (=> b!1264995 m!1165413))

(assert (=> b!1264946 d!138761))

(declare-fun d!138767 () Bool)

(declare-fun res!842466 () Bool)

(declare-fun e!720423 () Bool)

(assert (=> d!138767 (=> res!842466 e!720423)))

(assert (=> d!138767 (= res!842466 (and (is-Cons!28474 (t!42006 l!706)) (= (_1!10655 (h!29683 (t!42006 l!706))) key1!31)))))

(assert (=> d!138767 (= (containsKey!638 (t!42006 l!706) key1!31) e!720423)))

(declare-fun b!1265014 () Bool)

(declare-fun e!720424 () Bool)

(assert (=> b!1265014 (= e!720423 e!720424)))

(declare-fun res!842467 () Bool)

(assert (=> b!1265014 (=> (not res!842467) (not e!720424))))

(assert (=> b!1265014 (= res!842467 (and (or (not (is-Cons!28474 (t!42006 l!706))) (bvsle (_1!10655 (h!29683 (t!42006 l!706))) key1!31)) (is-Cons!28474 (t!42006 l!706)) (bvslt (_1!10655 (h!29683 (t!42006 l!706))) key1!31)))))

(declare-fun b!1265015 () Bool)

(assert (=> b!1265015 (= e!720424 (containsKey!638 (t!42006 (t!42006 l!706)) key1!31))))

(assert (= (and d!138767 (not res!842466)) b!1265014))

(assert (= (and b!1265014 res!842467) b!1265015))

(declare-fun m!1165419 () Bool)

(assert (=> b!1265015 m!1165419))

(assert (=> b!1264947 d!138767))

(declare-fun d!138775 () Bool)

(declare-fun res!842470 () Bool)

(declare-fun e!720427 () Bool)

(assert (=> d!138775 (=> res!842470 e!720427)))

(assert (=> d!138775 (= res!842470 (or (is-Nil!28475 l!706) (is-Nil!28475 (t!42006 l!706))))))

(assert (=> d!138775 (= (isStrictlySorted!777 l!706) e!720427)))

(declare-fun b!1265018 () Bool)

(declare-fun e!720428 () Bool)

(assert (=> b!1265018 (= e!720427 e!720428)))

(declare-fun res!842471 () Bool)

(assert (=> b!1265018 (=> (not res!842471) (not e!720428))))

(assert (=> b!1265018 (= res!842471 (bvslt (_1!10655 (h!29683 l!706)) (_1!10655 (h!29683 (t!42006 l!706)))))))

(declare-fun b!1265019 () Bool)

(assert (=> b!1265019 (= e!720428 (isStrictlySorted!777 (t!42006 l!706)))))

(assert (= (and d!138775 (not res!842470)) b!1265018))

(assert (= (and b!1265018 res!842471) b!1265019))

(assert (=> b!1265019 m!1165373))

(assert (=> start!106390 d!138775))

(declare-fun d!138779 () Bool)

(declare-fun res!842472 () Bool)

(declare-fun e!720429 () Bool)

(assert (=> d!138779 (=> res!842472 e!720429)))

(assert (=> d!138779 (= res!842472 (and (is-Cons!28474 l!706) (= (_1!10655 (h!29683 l!706)) key1!31)))))

(assert (=> d!138779 (= (containsKey!638 l!706 key1!31) e!720429)))

(declare-fun b!1265020 () Bool)

(declare-fun e!720430 () Bool)

(assert (=> b!1265020 (= e!720429 e!720430)))

(declare-fun res!842473 () Bool)

(assert (=> b!1265020 (=> (not res!842473) (not e!720430))))

(assert (=> b!1265020 (= res!842473 (and (or (not (is-Cons!28474 l!706)) (bvsle (_1!10655 (h!29683 l!706)) key1!31)) (is-Cons!28474 l!706) (bvslt (_1!10655 (h!29683 l!706)) key1!31)))))

(declare-fun b!1265021 () Bool)

(assert (=> b!1265021 (= e!720430 (containsKey!638 (t!42006 l!706) key1!31))))

(assert (= (and d!138779 (not res!842472)) b!1265020))

(assert (= (and b!1265020 res!842473) b!1265021))

(assert (=> b!1265021 m!1165371))

(assert (=> b!1264944 d!138779))

(declare-fun e!720455 () List!28478)

(declare-fun b!1265062 () Bool)

(declare-fun $colon$colon!638 (List!28478 tuple2!21290) List!28478)

(assert (=> b!1265062 (= e!720455 ($colon$colon!638 (removeStrictlySorted!153 (t!42006 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26)) key1!31) (h!29683 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26))))))

(declare-fun b!1265064 () Bool)

(declare-fun e!720456 () Bool)

(declare-fun lt!573956 () List!28478)

(assert (=> b!1265064 (= e!720456 (not (containsKey!638 lt!573956 key1!31)))))

(declare-fun e!720457 () List!28478)

(declare-fun b!1265065 () Bool)

(assert (=> b!1265065 (= e!720457 (t!42006 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26)))))

(declare-fun b!1265066 () Bool)

(assert (=> b!1265066 (= e!720455 Nil!28475)))

(declare-fun d!138781 () Bool)

(assert (=> d!138781 e!720456))

(declare-fun res!842482 () Bool)

(assert (=> d!138781 (=> (not res!842482) (not e!720456))))

(assert (=> d!138781 (= res!842482 (isStrictlySorted!777 lt!573956))))

(assert (=> d!138781 (= lt!573956 e!720457)))

(declare-fun c!123177 () Bool)

(assert (=> d!138781 (= c!123177 (and (is-Cons!28474 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26)) (= (_1!10655 (h!29683 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26))) key1!31)))))

(assert (=> d!138781 (isStrictlySorted!777 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26))))

(assert (=> d!138781 (= (removeStrictlySorted!153 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26) key1!31) lt!573956)))

(declare-fun b!1265063 () Bool)

(assert (=> b!1265063 (= e!720457 e!720455)))

(declare-fun c!123178 () Bool)

(assert (=> b!1265063 (= c!123178 (and (is-Cons!28474 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26)) (not (= (_1!10655 (h!29683 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26))) key1!31))))))

(assert (= (and d!138781 c!123177) b!1265065))

(assert (= (and d!138781 (not c!123177)) b!1265063))

(assert (= (and b!1265063 c!123178) b!1265062))

(assert (= (and b!1265063 (not c!123178)) b!1265066))

(assert (= (and d!138781 res!842482) b!1265064))

(declare-fun m!1165443 () Bool)

(assert (=> b!1265062 m!1165443))

(assert (=> b!1265062 m!1165443))

(declare-fun m!1165445 () Bool)

(assert (=> b!1265062 m!1165445))

(declare-fun m!1165447 () Bool)

(assert (=> b!1265064 m!1165447))

(declare-fun m!1165449 () Bool)

(assert (=> d!138781 m!1165449))

(assert (=> d!138781 m!1165363))

(declare-fun m!1165451 () Bool)

(assert (=> d!138781 m!1165451))

(assert (=> b!1264948 d!138781))

(declare-fun bm!62377 () Bool)

(declare-fun call!62380 () List!28478)

(declare-fun call!62381 () List!28478)

(assert (=> bm!62377 (= call!62380 call!62381)))

(declare-fun bm!62378 () Bool)

(declare-fun e!720502 () List!28478)

(declare-fun c!123212 () Bool)

(assert (=> bm!62378 (= call!62381 ($colon$colon!638 e!720502 (ite c!123212 (h!29683 l!706) (tuple2!21291 key1!31 v1!26))))))

(declare-fun c!123213 () Bool)

(assert (=> bm!62378 (= c!123213 c!123212)))

(declare-fun d!138787 () Bool)

(declare-fun e!720500 () Bool)

(assert (=> d!138787 e!720500))

(declare-fun res!842500 () Bool)

(assert (=> d!138787 (=> (not res!842500) (not e!720500))))

(declare-fun lt!573965 () List!28478)

(assert (=> d!138787 (= res!842500 (isStrictlySorted!777 lt!573965))))

(declare-fun e!720501 () List!28478)

(assert (=> d!138787 (= lt!573965 e!720501)))

(assert (=> d!138787 (= c!123212 (and (is-Cons!28474 l!706) (bvslt (_1!10655 (h!29683 l!706)) key1!31)))))

(assert (=> d!138787 (isStrictlySorted!777 l!706)))

(assert (=> d!138787 (= (insertStrictlySorted!459 l!706 key1!31 v1!26) lt!573965)))

(declare-fun b!1265147 () Bool)

(declare-fun res!842499 () Bool)

(assert (=> b!1265147 (=> (not res!842499) (not e!720500))))

(assert (=> b!1265147 (= res!842499 (containsKey!638 lt!573965 key1!31))))

(declare-fun c!123211 () Bool)

(declare-fun b!1265148 () Bool)

(declare-fun c!123214 () Bool)

(assert (=> b!1265148 (= e!720502 (ite c!123211 (t!42006 l!706) (ite c!123214 (Cons!28474 (h!29683 l!706) (t!42006 l!706)) Nil!28475)))))

(declare-fun b!1265149 () Bool)

(declare-fun contains!7653 (List!28478 tuple2!21290) Bool)

(assert (=> b!1265149 (= e!720500 (contains!7653 lt!573965 (tuple2!21291 key1!31 v1!26)))))

(declare-fun b!1265150 () Bool)

(declare-fun e!720498 () List!28478)

(declare-fun call!62382 () List!28478)

(assert (=> b!1265150 (= e!720498 call!62382)))

(declare-fun bm!62379 () Bool)

(assert (=> bm!62379 (= call!62382 call!62380)))

(declare-fun b!1265151 () Bool)

(assert (=> b!1265151 (= e!720501 call!62381)))

(declare-fun b!1265152 () Bool)

(declare-fun e!720499 () List!28478)

(assert (=> b!1265152 (= e!720501 e!720499)))

(assert (=> b!1265152 (= c!123211 (and (is-Cons!28474 l!706) (= (_1!10655 (h!29683 l!706)) key1!31)))))

(declare-fun b!1265153 () Bool)

(assert (=> b!1265153 (= e!720502 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26))))

(declare-fun b!1265154 () Bool)

(assert (=> b!1265154 (= e!720498 call!62382)))

(declare-fun b!1265155 () Bool)

(assert (=> b!1265155 (= e!720499 call!62380)))

(declare-fun b!1265156 () Bool)

(assert (=> b!1265156 (= c!123214 (and (is-Cons!28474 l!706) (bvsgt (_1!10655 (h!29683 l!706)) key1!31)))))

(assert (=> b!1265156 (= e!720499 e!720498)))

(assert (= (and d!138787 c!123212) b!1265151))

(assert (= (and d!138787 (not c!123212)) b!1265152))

(assert (= (and b!1265152 c!123211) b!1265155))

(assert (= (and b!1265152 (not c!123211)) b!1265156))

(assert (= (and b!1265156 c!123214) b!1265154))

(assert (= (and b!1265156 (not c!123214)) b!1265150))

(assert (= (or b!1265154 b!1265150) bm!62379))

(assert (= (or b!1265155 bm!62379) bm!62377))

(assert (= (or b!1265151 bm!62377) bm!62378))

(assert (= (and bm!62378 c!123213) b!1265153))

(assert (= (and bm!62378 (not c!123213)) b!1265148))

(assert (= (and d!138787 res!842500) b!1265147))

(assert (= (and b!1265147 res!842499) b!1265149))

(declare-fun m!1165469 () Bool)

(assert (=> b!1265147 m!1165469))

(declare-fun m!1165471 () Bool)

(assert (=> d!138787 m!1165471))

(assert (=> d!138787 m!1165375))

(declare-fun m!1165473 () Bool)

(assert (=> bm!62378 m!1165473))

(assert (=> b!1265153 m!1165363))

(declare-fun m!1165475 () Bool)

(assert (=> b!1265149 m!1165475))

(assert (=> b!1264948 d!138787))

(declare-fun d!138793 () Bool)

(assert (=> d!138793 (= (removeStrictlySorted!153 (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26) key1!31) (t!42006 l!706))))

(declare-fun lt!573976 () Unit!42125)

(declare-fun choose!1893 (List!28478 (_ BitVec 64) B!1952) Unit!42125)

(assert (=> d!138793 (= lt!573976 (choose!1893 (t!42006 l!706) key1!31 v1!26))))

(assert (=> d!138793 (isStrictlySorted!777 (t!42006 l!706))))

(assert (=> d!138793 (= (lemmaInsertStrictlySortedThenRemoveIsSame!7 (t!42006 l!706) key1!31 v1!26) lt!573976)))

(declare-fun bs!35805 () Bool)

(assert (= bs!35805 d!138793))

(assert (=> bs!35805 m!1165363))

(assert (=> bs!35805 m!1165363))

(assert (=> bs!35805 m!1165367))

(declare-fun m!1165481 () Bool)

(assert (=> bs!35805 m!1165481))

(assert (=> bs!35805 m!1165373))

(assert (=> b!1264948 d!138793))

(declare-fun bm!62386 () Bool)

(declare-fun call!62389 () List!28478)

(declare-fun call!62390 () List!28478)

(assert (=> bm!62386 (= call!62389 call!62390)))

(declare-fun e!720517 () List!28478)

(declare-fun bm!62387 () Bool)

(declare-fun c!123224 () Bool)

(assert (=> bm!62387 (= call!62390 ($colon$colon!638 e!720517 (ite c!123224 (h!29683 (t!42006 l!706)) (tuple2!21291 key1!31 v1!26))))))

(declare-fun c!123225 () Bool)

(assert (=> bm!62387 (= c!123225 c!123224)))

(declare-fun d!138799 () Bool)

(declare-fun e!720515 () Bool)

(assert (=> d!138799 e!720515))

(declare-fun res!842506 () Bool)

(assert (=> d!138799 (=> (not res!842506) (not e!720515))))

(declare-fun lt!573977 () List!28478)

(assert (=> d!138799 (= res!842506 (isStrictlySorted!777 lt!573977))))

(declare-fun e!720516 () List!28478)

(assert (=> d!138799 (= lt!573977 e!720516)))

(assert (=> d!138799 (= c!123224 (and (is-Cons!28474 (t!42006 l!706)) (bvslt (_1!10655 (h!29683 (t!42006 l!706))) key1!31)))))

(assert (=> d!138799 (isStrictlySorted!777 (t!42006 l!706))))

(assert (=> d!138799 (= (insertStrictlySorted!459 (t!42006 l!706) key1!31 v1!26) lt!573977)))

(declare-fun b!1265177 () Bool)

(declare-fun res!842505 () Bool)

(assert (=> b!1265177 (=> (not res!842505) (not e!720515))))

(assert (=> b!1265177 (= res!842505 (containsKey!638 lt!573977 key1!31))))

(declare-fun b!1265178 () Bool)

(declare-fun c!123226 () Bool)

(declare-fun c!123223 () Bool)

(assert (=> b!1265178 (= e!720517 (ite c!123223 (t!42006 (t!42006 l!706)) (ite c!123226 (Cons!28474 (h!29683 (t!42006 l!706)) (t!42006 (t!42006 l!706))) Nil!28475)))))

(declare-fun b!1265179 () Bool)

(assert (=> b!1265179 (= e!720515 (contains!7653 lt!573977 (tuple2!21291 key1!31 v1!26)))))

(declare-fun b!1265180 () Bool)

(declare-fun e!720513 () List!28478)

(declare-fun call!62391 () List!28478)

(assert (=> b!1265180 (= e!720513 call!62391)))

(declare-fun bm!62388 () Bool)

(assert (=> bm!62388 (= call!62391 call!62389)))

(declare-fun b!1265181 () Bool)

(assert (=> b!1265181 (= e!720516 call!62390)))

(declare-fun b!1265182 () Bool)

(declare-fun e!720514 () List!28478)

(assert (=> b!1265182 (= e!720516 e!720514)))

(assert (=> b!1265182 (= c!123223 (and (is-Cons!28474 (t!42006 l!706)) (= (_1!10655 (h!29683 (t!42006 l!706))) key1!31)))))

(declare-fun b!1265183 () Bool)

(assert (=> b!1265183 (= e!720517 (insertStrictlySorted!459 (t!42006 (t!42006 l!706)) key1!31 v1!26))))

(declare-fun b!1265184 () Bool)

(assert (=> b!1265184 (= e!720513 call!62391)))

(declare-fun b!1265185 () Bool)

(assert (=> b!1265185 (= e!720514 call!62389)))

(declare-fun b!1265186 () Bool)

(assert (=> b!1265186 (= c!123226 (and (is-Cons!28474 (t!42006 l!706)) (bvsgt (_1!10655 (h!29683 (t!42006 l!706))) key1!31)))))

(assert (=> b!1265186 (= e!720514 e!720513)))

(assert (= (and d!138799 c!123224) b!1265181))

(assert (= (and d!138799 (not c!123224)) b!1265182))

(assert (= (and b!1265182 c!123223) b!1265185))

(assert (= (and b!1265182 (not c!123223)) b!1265186))

(assert (= (and b!1265186 c!123226) b!1265184))

(assert (= (and b!1265186 (not c!123226)) b!1265180))

(assert (= (or b!1265184 b!1265180) bm!62388))

(assert (= (or b!1265185 bm!62388) bm!62386))

(assert (= (or b!1265181 bm!62386) bm!62387))

(assert (= (and bm!62387 c!123225) b!1265183))

(assert (= (and bm!62387 (not c!123225)) b!1265178))

(assert (= (and d!138799 res!842506) b!1265177))

(assert (= (and b!1265177 res!842505) b!1265179))

(declare-fun m!1165507 () Bool)

(assert (=> b!1265177 m!1165507))

(declare-fun m!1165509 () Bool)

(assert (=> d!138799 m!1165509))

(assert (=> d!138799 m!1165373))

(declare-fun m!1165511 () Bool)

(assert (=> bm!62387 m!1165511))

(declare-fun m!1165513 () Bool)

(assert (=> b!1265183 m!1165513))

(declare-fun m!1165515 () Bool)

(assert (=> b!1265179 m!1165515))

(assert (=> b!1264948 d!138799))

(declare-fun d!138811 () Bool)

(declare-fun res!842515 () Bool)

(declare-fun e!720526 () Bool)

(assert (=> d!138811 (=> res!842515 e!720526)))

(assert (=> d!138811 (= res!842515 (or (is-Nil!28475 (insertStrictlySorted!459 l!706 key1!31 v1!26)) (is-Nil!28475 (t!42006 (insertStrictlySorted!459 l!706 key1!31 v1!26)))))))

(assert (=> d!138811 (= (isStrictlySorted!777 (insertStrictlySorted!459 l!706 key1!31 v1!26)) e!720526)))

(declare-fun b!1265195 () Bool)

(declare-fun e!720527 () Bool)

(assert (=> b!1265195 (= e!720526 e!720527)))

(declare-fun res!842516 () Bool)

(assert (=> b!1265195 (=> (not res!842516) (not e!720527))))

(assert (=> b!1265195 (= res!842516 (bvslt (_1!10655 (h!29683 (insertStrictlySorted!459 l!706 key1!31 v1!26))) (_1!10655 (h!29683 (t!42006 (insertStrictlySorted!459 l!706 key1!31 v1!26))))))))

(declare-fun b!1265196 () Bool)

(assert (=> b!1265196 (= e!720527 (isStrictlySorted!777 (t!42006 (insertStrictlySorted!459 l!706 key1!31 v1!26))))))

(assert (= (and d!138811 (not res!842515)) b!1265195))

(assert (= (and b!1265195 res!842516) b!1265196))

(declare-fun m!1165517 () Bool)

(assert (=> b!1265196 m!1165517))

(assert (=> b!1264948 d!138811))

(declare-fun b!1265206 () Bool)

(declare-fun e!720533 () Bool)

(declare-fun tp!96306 () Bool)

(assert (=> b!1265206 (= e!720533 (and tp_is_empty!32485 tp!96306))))

(assert (=> b!1264949 (= tp!96294 e!720533)))

(assert (= (and b!1264949 (is-Cons!28474 (t!42006 l!706))) b!1265206))

(push 1)

