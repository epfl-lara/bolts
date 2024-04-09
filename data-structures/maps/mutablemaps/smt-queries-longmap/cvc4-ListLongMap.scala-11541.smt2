; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134366 () Bool)

(assert start!134366)

(declare-fun b!1568542 () Bool)

(declare-fun e!874431 () Bool)

(declare-fun tp_is_empty!39035 () Bool)

(declare-fun tp!114055 () Bool)

(assert (=> b!1568542 (= e!874431 (and tp_is_empty!39035 tp!114055))))

(declare-fun b!1568543 () Bool)

(declare-fun res!1072333 () Bool)

(declare-fun e!874430 () Bool)

(assert (=> b!1568543 (=> (not res!1072333) (not e!874430))))

(declare-datatypes ((B!2484 0))(
  ( (B!2485 (val!19604 Int)) )
))
(declare-datatypes ((tuple2!25474 0))(
  ( (tuple2!25475 (_1!12747 (_ BitVec 64)) (_2!12747 B!2484)) )
))
(declare-datatypes ((List!36885 0))(
  ( (Nil!36882) (Cons!36881 (h!38329 tuple2!25474) (t!51800 List!36885)) )
))
(declare-fun l!750 () List!36885)

(declare-fun isStrictlySorted!995 (List!36885) Bool)

(assert (=> b!1568543 (= res!1072333 (isStrictlySorted!995 l!750))))

(declare-fun b!1568544 () Bool)

(declare-fun res!1072331 () Bool)

(assert (=> b!1568544 (=> (not res!1072331) (not e!874430))))

(assert (=> b!1568544 (= res!1072331 (isStrictlySorted!995 (t!51800 l!750)))))

(declare-fun b!1568546 () Bool)

(declare-fun res!1072334 () Bool)

(assert (=> b!1568546 (=> (not res!1072334) (not e!874430))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1568546 (= res!1072334 (and (is-Cons!36881 l!750) (bvslt (_1!12747 (h!38329 l!750)) key1!37) (bvslt (_1!12747 (h!38329 l!750)) key2!21)))))

(declare-fun b!1568545 () Bool)

(declare-fun v1!32 () B!2484)

(declare-fun insertStrictlySorted!582 (List!36885 (_ BitVec 64) B!2484) List!36885)

(assert (=> b!1568545 (= e!874430 (not (isStrictlySorted!995 (insertStrictlySorted!582 l!750 key1!37 v1!32))))))

(declare-fun v2!10 () B!2484)

(assert (=> b!1568545 (= (insertStrictlySorted!582 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!582 (insertStrictlySorted!582 (t!51800 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52022 0))(
  ( (Unit!52023) )
))
(declare-fun lt!673141 () Unit!52022)

(declare-fun lemmaInsertStrictlySortedCommutative!9 (List!36885 (_ BitVec 64) B!2484 (_ BitVec 64) B!2484) Unit!52022)

(assert (=> b!1568545 (= lt!673141 (lemmaInsertStrictlySortedCommutative!9 (t!51800 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun res!1072332 () Bool)

(assert (=> start!134366 (=> (not res!1072332) (not e!874430))))

(assert (=> start!134366 (= res!1072332 (not (= key1!37 key2!21)))))

(assert (=> start!134366 e!874430))

(assert (=> start!134366 tp_is_empty!39035))

(assert (=> start!134366 e!874431))

(assert (=> start!134366 true))

(assert (= (and start!134366 res!1072332) b!1568543))

(assert (= (and b!1568543 res!1072333) b!1568546))

(assert (= (and b!1568546 res!1072334) b!1568544))

(assert (= (and b!1568544 res!1072331) b!1568545))

(assert (= (and start!134366 (is-Cons!36881 l!750)) b!1568542))

(declare-fun m!1443199 () Bool)

(assert (=> b!1568543 m!1443199))

(declare-fun m!1443201 () Bool)

(assert (=> b!1568544 m!1443201))

(declare-fun m!1443203 () Bool)

(assert (=> b!1568545 m!1443203))

(assert (=> b!1568545 m!1443203))

(declare-fun m!1443205 () Bool)

(assert (=> b!1568545 m!1443205))

(declare-fun m!1443207 () Bool)

(assert (=> b!1568545 m!1443207))

(declare-fun m!1443209 () Bool)

(assert (=> b!1568545 m!1443209))

(assert (=> b!1568545 m!1443207))

(declare-fun m!1443211 () Bool)

(assert (=> b!1568545 m!1443211))

(declare-fun m!1443213 () Bool)

(assert (=> b!1568545 m!1443213))

(assert (=> b!1568545 m!1443213))

(declare-fun m!1443215 () Bool)

(assert (=> b!1568545 m!1443215))

(push 1)

(assert (not b!1568545))

(assert tp_is_empty!39035)

(assert (not b!1568543))

(assert (not b!1568542))

(assert (not b!1568544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163693 () Bool)

(declare-fun res!1072353 () Bool)

(declare-fun e!874450 () Bool)

(assert (=> d!163693 (=> res!1072353 e!874450)))

(assert (=> d!163693 (= res!1072353 (or (is-Nil!36882 (t!51800 l!750)) (is-Nil!36882 (t!51800 (t!51800 l!750)))))))

(assert (=> d!163693 (= (isStrictlySorted!995 (t!51800 l!750)) e!874450)))

(declare-fun b!1568565 () Bool)

(declare-fun e!874451 () Bool)

(assert (=> b!1568565 (= e!874450 e!874451)))

(declare-fun res!1072354 () Bool)

(assert (=> b!1568565 (=> (not res!1072354) (not e!874451))))

(assert (=> b!1568565 (= res!1072354 (bvslt (_1!12747 (h!38329 (t!51800 l!750))) (_1!12747 (h!38329 (t!51800 (t!51800 l!750))))))))

(declare-fun b!1568566 () Bool)

(assert (=> b!1568566 (= e!874451 (isStrictlySorted!995 (t!51800 (t!51800 l!750))))))

(assert (= (and d!163693 (not res!1072353)) b!1568565))

(assert (= (and b!1568565 res!1072354) b!1568566))

(declare-fun m!1443225 () Bool)

(assert (=> b!1568566 m!1443225))

(assert (=> b!1568544 d!163693))

(declare-fun d!163695 () Bool)

(declare-fun res!1072355 () Bool)

(declare-fun e!874452 () Bool)

(assert (=> d!163695 (=> res!1072355 e!874452)))

(assert (=> d!163695 (= res!1072355 (or (is-Nil!36882 l!750) (is-Nil!36882 (t!51800 l!750))))))

(assert (=> d!163695 (= (isStrictlySorted!995 l!750) e!874452)))

(declare-fun b!1568567 () Bool)

(declare-fun e!874453 () Bool)

(assert (=> b!1568567 (= e!874452 e!874453)))

(declare-fun res!1072356 () Bool)

(assert (=> b!1568567 (=> (not res!1072356) (not e!874453))))

(assert (=> b!1568567 (= res!1072356 (bvslt (_1!12747 (h!38329 l!750)) (_1!12747 (h!38329 (t!51800 l!750)))))))

(declare-fun b!1568568 () Bool)

(assert (=> b!1568568 (= e!874453 (isStrictlySorted!995 (t!51800 l!750)))))

(assert (= (and d!163695 (not res!1072355)) b!1568567))

(assert (= (and b!1568567 res!1072356) b!1568568))

(assert (=> b!1568568 m!1443201))

(assert (=> b!1568543 d!163695))

(declare-fun d!163697 () Bool)

(assert (=> d!163697 (= (insertStrictlySorted!582 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!582 (insertStrictlySorted!582 (t!51800 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673152 () Unit!52022)

(declare-fun choose!2086 (List!36885 (_ BitVec 64) B!2484 (_ BitVec 64) B!2484) Unit!52022)

(assert (=> d!163697 (= lt!673152 (choose!2086 (t!51800 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163697 (not (= key1!37 key2!21))))

(assert (=> d!163697 (= (lemmaInsertStrictlySortedCommutative!9 (t!51800 l!750) key1!37 v1!32 key2!21 v2!10) lt!673152)))

(declare-fun bs!45178 () Bool)

(assert (= bs!45178 d!163697))

(assert (=> bs!45178 m!1443207))

(assert (=> bs!45178 m!1443209))

(assert (=> bs!45178 m!1443207))

(assert (=> bs!45178 m!1443203))

(declare-fun m!1443227 () Bool)

(assert (=> bs!45178 m!1443227))

(assert (=> bs!45178 m!1443203))

(assert (=> bs!45178 m!1443205))

(assert (=> b!1568545 d!163697))

(declare-fun d!163699 () Bool)

(declare-fun res!1072357 () Bool)

(declare-fun e!874468 () Bool)

(assert (=> d!163699 (=> res!1072357 e!874468)))

(assert (=> d!163699 (= res!1072357 (or (is-Nil!36882 (insertStrictlySorted!582 l!750 key1!37 v1!32)) (is-Nil!36882 (t!51800 (insertStrictlySorted!582 l!750 key1!37 v1!32)))))))

(assert (=> d!163699 (= (isStrictlySorted!995 (insertStrictlySorted!582 l!750 key1!37 v1!32)) e!874468)))

(declare-fun b!1568597 () Bool)

(declare-fun e!874469 () Bool)

(assert (=> b!1568597 (= e!874468 e!874469)))

(declare-fun res!1072358 () Bool)

(assert (=> b!1568597 (=> (not res!1072358) (not e!874469))))

(assert (=> b!1568597 (= res!1072358 (bvslt (_1!12747 (h!38329 (insertStrictlySorted!582 l!750 key1!37 v1!32))) (_1!12747 (h!38329 (t!51800 (insertStrictlySorted!582 l!750 key1!37 v1!32))))))))

(declare-fun b!1568598 () Bool)

(assert (=> b!1568598 (= e!874469 (isStrictlySorted!995 (t!51800 (insertStrictlySorted!582 l!750 key1!37 v1!32))))))

(assert (= (and d!163699 (not res!1072357)) b!1568597))

(assert (= (and b!1568597 res!1072358) b!1568598))

(declare-fun m!1443229 () Bool)

(assert (=> b!1568598 m!1443229))

(assert (=> b!1568545 d!163699))

(declare-fun e!874549 () List!36885)

(declare-fun b!1568747 () Bool)

(assert (=> b!1568747 (= e!874549 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32))))

(declare-fun b!1568748 () Bool)

(declare-fun c!144536 () Bool)

(declare-fun c!144534 () Bool)

(assert (=> b!1568748 (= e!874549 (ite c!144536 (t!51800 l!750) (ite c!144534 (Cons!36881 (h!38329 l!750) (t!51800 l!750)) Nil!36882)))))

(declare-fun b!1568749 () Bool)

(declare-fun e!874551 () List!36885)

(declare-fun call!71985 () List!36885)

(assert (=> b!1568749 (= e!874551 call!71985)))

(declare-fun b!1568750 () Bool)

(assert (=> b!1568750 (= c!144534 (and (is-Cons!36881 l!750) (bvsgt (_1!12747 (h!38329 l!750)) key1!37)))))

(declare-fun e!874552 () List!36885)

(assert (=> b!1568750 (= e!874551 e!874552)))

(declare-fun b!1568751 () Bool)

(declare-fun e!874550 () List!36885)

(assert (=> b!1568751 (= e!874550 e!874551)))

(assert (=> b!1568751 (= c!144536 (and (is-Cons!36881 l!750) (= (_1!12747 (h!38329 l!750)) key1!37)))))

(declare-fun b!1568752 () Bool)

(declare-fun res!1072398 () Bool)

(declare-fun e!874548 () Bool)

(assert (=> b!1568752 (=> (not res!1072398) (not e!874548))))

(declare-fun lt!673167 () List!36885)

(declare-fun containsKey!857 (List!36885 (_ BitVec 64)) Bool)

(assert (=> b!1568752 (= res!1072398 (containsKey!857 lt!673167 key1!37))))

(declare-fun b!1568753 () Bool)

(declare-fun call!71987 () List!36885)

(assert (=> b!1568753 (= e!874552 call!71987)))

(declare-fun call!71986 () List!36885)

(declare-fun bm!71982 () Bool)

(declare-fun c!144533 () Bool)

(declare-fun $colon$colon!992 (List!36885 tuple2!25474) List!36885)

(assert (=> bm!71982 (= call!71986 ($colon$colon!992 e!874549 (ite c!144533 (h!38329 l!750) (tuple2!25475 key1!37 v1!32))))))

(declare-fun c!144535 () Bool)

(assert (=> bm!71982 (= c!144535 c!144533)))

(declare-fun d!163701 () Bool)

(assert (=> d!163701 e!874548))

(declare-fun res!1072397 () Bool)

(assert (=> d!163701 (=> (not res!1072397) (not e!874548))))

(assert (=> d!163701 (= res!1072397 (isStrictlySorted!995 lt!673167))))

(assert (=> d!163701 (= lt!673167 e!874550)))

(assert (=> d!163701 (= c!144533 (and (is-Cons!36881 l!750) (bvslt (_1!12747 (h!38329 l!750)) key1!37)))))

(assert (=> d!163701 (isStrictlySorted!995 l!750)))

(assert (=> d!163701 (= (insertStrictlySorted!582 l!750 key1!37 v1!32) lt!673167)))

(declare-fun bm!71983 () Bool)

(assert (=> bm!71983 (= call!71987 call!71985)))

(declare-fun bm!71984 () Bool)

(assert (=> bm!71984 (= call!71985 call!71986)))

(declare-fun b!1568754 () Bool)

(assert (=> b!1568754 (= e!874552 call!71987)))

(declare-fun b!1568755 () Bool)

(declare-fun contains!10435 (List!36885 tuple2!25474) Bool)

(assert (=> b!1568755 (= e!874548 (contains!10435 lt!673167 (tuple2!25475 key1!37 v1!32)))))

(declare-fun b!1568756 () Bool)

(assert (=> b!1568756 (= e!874550 call!71986)))

(assert (= (and d!163701 c!144533) b!1568756))

(assert (= (and d!163701 (not c!144533)) b!1568751))

(assert (= (and b!1568751 c!144536) b!1568749))

(assert (= (and b!1568751 (not c!144536)) b!1568750))

(assert (= (and b!1568750 c!144534) b!1568753))

(assert (= (and b!1568750 (not c!144534)) b!1568754))

(assert (= (or b!1568753 b!1568754) bm!71983))

(assert (= (or b!1568749 bm!71983) bm!71984))

(assert (= (or b!1568756 bm!71984) bm!71982))

(assert (= (and bm!71982 c!144535) b!1568747))

(assert (= (and bm!71982 (not c!144535)) b!1568748))

(assert (= (and d!163701 res!1072397) b!1568752))

(assert (= (and b!1568752 res!1072398) b!1568755))

(declare-fun m!1443339 () Bool)

(assert (=> d!163701 m!1443339))

(assert (=> d!163701 m!1443199))

(assert (=> b!1568747 m!1443207))

(declare-fun m!1443341 () Bool)

(assert (=> bm!71982 m!1443341))

(declare-fun m!1443343 () Bool)

(assert (=> b!1568752 m!1443343))

(declare-fun m!1443345 () Bool)

(assert (=> b!1568755 m!1443345))

(assert (=> b!1568545 d!163701))

(declare-fun b!1568757 () Bool)

(declare-fun e!874554 () List!36885)

(assert (=> b!1568757 (= e!874554 (insertStrictlySorted!582 (t!51800 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32)) key2!21 v2!10))))

(declare-fun c!144540 () Bool)

(declare-fun b!1568758 () Bool)

(declare-fun c!144538 () Bool)

(assert (=> b!1568758 (= e!874554 (ite c!144540 (t!51800 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32)) (ite c!144538 (Cons!36881 (h!38329 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32)) (t!51800 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32))) Nil!36882)))))

(declare-fun b!1568759 () Bool)

(declare-fun e!874556 () List!36885)

(declare-fun call!71988 () List!36885)

(assert (=> b!1568759 (= e!874556 call!71988)))

(declare-fun b!1568760 () Bool)

(assert (=> b!1568760 (= c!144538 (and (is-Cons!36881 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32)) (bvsgt (_1!12747 (h!38329 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun e!874557 () List!36885)

(assert (=> b!1568760 (= e!874556 e!874557)))

(declare-fun b!1568761 () Bool)

(declare-fun e!874555 () List!36885)

(assert (=> b!1568761 (= e!874555 e!874556)))

(assert (=> b!1568761 (= c!144540 (and (is-Cons!36881 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32)) (= (_1!12747 (h!38329 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun b!1568762 () Bool)

(declare-fun res!1072400 () Bool)

(declare-fun e!874553 () Bool)

(assert (=> b!1568762 (=> (not res!1072400) (not e!874553))))

(declare-fun lt!673168 () List!36885)

(assert (=> b!1568762 (= res!1072400 (containsKey!857 lt!673168 key2!21))))

(declare-fun b!1568763 () Bool)

(declare-fun call!71990 () List!36885)

(assert (=> b!1568763 (= e!874557 call!71990)))

(declare-fun bm!71985 () Bool)

(declare-fun c!144537 () Bool)

(declare-fun call!71989 () List!36885)

(assert (=> bm!71985 (= call!71989 ($colon$colon!992 e!874554 (ite c!144537 (h!38329 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32)) (tuple2!25475 key2!21 v2!10))))))

(declare-fun c!144539 () Bool)

(assert (=> bm!71985 (= c!144539 c!144537)))

(declare-fun d!163725 () Bool)

(assert (=> d!163725 e!874553))

(declare-fun res!1072399 () Bool)

(assert (=> d!163725 (=> (not res!1072399) (not e!874553))))

(assert (=> d!163725 (= res!1072399 (isStrictlySorted!995 lt!673168))))

(assert (=> d!163725 (= lt!673168 e!874555)))

(assert (=> d!163725 (= c!144537 (and (is-Cons!36881 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32)) (bvslt (_1!12747 (h!38329 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163725 (isStrictlySorted!995 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32))))

(assert (=> d!163725 (= (insertStrictlySorted!582 (insertStrictlySorted!582 (t!51800 l!750) key1!37 v1!32) key2!21 v2!10) lt!673168)))

(declare-fun bm!71986 () Bool)

(assert (=> bm!71986 (= call!71990 call!71988)))

(declare-fun bm!71987 () Bool)

(assert (=> bm!71987 (= call!71988 call!71989)))

(declare-fun b!1568764 () Bool)

(assert (=> b!1568764 (= e!874557 call!71990)))

(declare-fun b!1568765 () Bool)

(assert (=> b!1568765 (= e!874553 (contains!10435 lt!673168 (tuple2!25475 key2!21 v2!10)))))

(declare-fun b!1568766 () Bool)

(assert (=> b!1568766 (= e!874555 call!71989)))

(assert (= (and d!163725 c!144537) b!1568766))

(assert (= (and d!163725 (not c!144537)) b!1568761))

(assert (= (and b!1568761 c!144540) b!1568759))

(assert (= (and b!1568761 (not c!144540)) b!1568760))

(assert (= (and b!1568760 c!144538) b!1568763))

(assert (= (and b!1568760 (not c!144538)) b!1568764))

(assert (= (or b!1568763 b!1568764) bm!71986))

(assert (= (or b!1568759 bm!71986) bm!71987))

(assert (= (or b!1568766 bm!71987) bm!71985))

(assert (= (and bm!71985 c!144539) b!1568757))

(assert (= (and bm!71985 (not c!144539)) b!1568758))

(assert (= (and d!163725 res!1072399) b!1568762))

(assert (= (and b!1568762 res!1072400) b!1568765))

(declare-fun m!1443347 () Bool)

(assert (=> d!163725 m!1443347))

(assert (=> d!163725 m!1443207))

(declare-fun m!1443349 () Bool)

(assert (=> d!163725 m!1443349))

(declare-fun m!1443351 () Bool)

(assert (=> b!1568757 m!1443351))

(declare-fun m!1443353 () Bool)

(assert (=> bm!71985 m!1443353))

(declare-fun m!1443355 () Bool)

(assert (=> b!1568762 m!1443355))

(declare-fun m!1443357 () Bool)

(assert (=> b!1568765 m!1443357))

(assert (=> b!1568545 d!163725))

(declare-fun e!874559 () List!36885)

(declare-fun b!1568767 () Bool)

(assert (=> b!1568767 (= e!874559 (insertStrictlySorted!582 (t!51800 (t!51800 l!750)) key2!21 v2!10))))

(declare-fun b!1568768 () Bool)

(declare-fun c!144544 () Bool)

(declare-fun c!144542 () Bool)

(assert (=> b!1568768 (= e!874559 (ite c!144544 (t!51800 (t!51800 l!750)) (ite c!144542 (Cons!36881 (h!38329 (t!51800 l!750)) (t!51800 (t!51800 l!750))) Nil!36882)))))

(declare-fun b!1568769 () Bool)

(declare-fun e!874561 () List!36885)

(declare-fun call!71991 () List!36885)

(assert (=> b!1568769 (= e!874561 call!71991)))

(declare-fun b!1568770 () Bool)

(assert (=> b!1568770 (= c!144542 (and (is-Cons!36881 (t!51800 l!750)) (bvsgt (_1!12747 (h!38329 (t!51800 l!750))) key2!21)))))

(declare-fun e!874562 () List!36885)

(assert (=> b!1568770 (= e!874561 e!874562)))

(declare-fun b!1568771 () Bool)

(declare-fun e!874560 () List!36885)

(assert (=> b!1568771 (= e!874560 e!874561)))

(assert (=> b!1568771 (= c!144544 (and (is-Cons!36881 (t!51800 l!750)) (= (_1!12747 (h!38329 (t!51800 l!750))) key2!21)))))

(declare-fun b!1568772 () Bool)

(declare-fun res!1072402 () Bool)

(declare-fun e!874558 () Bool)

(assert (=> b!1568772 (=> (not res!1072402) (not e!874558))))

(declare-fun lt!673169 () List!36885)

(assert (=> b!1568772 (= res!1072402 (containsKey!857 lt!673169 key2!21))))

(declare-fun b!1568773 () Bool)

(declare-fun call!71993 () List!36885)

(assert (=> b!1568773 (= e!874562 call!71993)))

(declare-fun c!144541 () Bool)

(declare-fun call!71992 () List!36885)

(declare-fun bm!71988 () Bool)

(assert (=> bm!71988 (= call!71992 ($colon$colon!992 e!874559 (ite c!144541 (h!38329 (t!51800 l!750)) (tuple2!25475 key2!21 v2!10))))))

(declare-fun c!144543 () Bool)

(assert (=> bm!71988 (= c!144543 c!144541)))

(declare-fun d!163727 () Bool)

(assert (=> d!163727 e!874558))

(declare-fun res!1072401 () Bool)

(assert (=> d!163727 (=> (not res!1072401) (not e!874558))))

(assert (=> d!163727 (= res!1072401 (isStrictlySorted!995 lt!673169))))

(assert (=> d!163727 (= lt!673169 e!874560)))

(assert (=> d!163727 (= c!144541 (and (is-Cons!36881 (t!51800 l!750)) (bvslt (_1!12747 (h!38329 (t!51800 l!750))) key2!21)))))

(assert (=> d!163727 (isStrictlySorted!995 (t!51800 l!750))))

(assert (=> d!163727 (= (insertStrictlySorted!582 (t!51800 l!750) key2!21 v2!10) lt!673169)))

(declare-fun bm!71989 () Bool)

(assert (=> bm!71989 (= call!71993 call!71991)))

(declare-fun bm!71990 () Bool)

(assert (=> bm!71990 (= call!71991 call!71992)))

(declare-fun b!1568774 () Bool)

(assert (=> b!1568774 (= e!874562 call!71993)))

(declare-fun b!1568775 () Bool)

(assert (=> b!1568775 (= e!874558 (contains!10435 lt!673169 (tuple2!25475 key2!21 v2!10)))))

(declare-fun b!1568776 () Bool)

(assert (=> b!1568776 (= e!874560 call!71992)))

(assert (= (and d!163727 c!144541) b!1568776))

(assert (= (and d!163727 (not c!144541)) b!1568771))

(assert (= (and b!1568771 c!144544) b!1568769))

(assert (= (and b!1568771 (not c!144544)) b!1568770))

(assert (= (and b!1568770 c!144542) b!1568773))

(assert (= (and b!1568770 (not c!144542)) b!1568774))

(assert (= (or b!1568773 b!1568774) bm!71989))

(assert (= (or b!1568769 bm!71989) bm!71990))

(assert (= (or b!1568776 bm!71990) bm!71988))

(assert (= (and bm!71988 c!144543) b!1568767))

(assert (= (and bm!71988 (not c!144543)) b!1568768))

(assert (= (and d!163727 res!1072401) b!1568772))

(assert (= (and b!1568772 res!1072402) b!1568775))

(declare-fun m!1443359 () Bool)

(assert (=> d!163727 m!1443359))

(assert (=> d!163727 m!1443201))

(declare-fun m!1443361 () Bool)

(assert (=> b!1568767 m!1443361))

(declare-fun m!1443363 () Bool)

(assert (=> bm!71988 m!1443363))

(declare-fun m!1443365 () Bool)

(assert (=> b!1568772 m!1443365))

