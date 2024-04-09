; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134450 () Bool)

(assert start!134450)

(declare-fun res!1072644 () Bool)

(declare-fun e!874887 () Bool)

(assert (=> start!134450 (=> (not res!1072644) (not e!874887))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134450 (= res!1072644 (not (= key1!37 key2!21)))))

(assert (=> start!134450 e!874887))

(assert (=> start!134450 true))

(declare-fun e!874886 () Bool)

(assert (=> start!134450 e!874886))

(declare-fun tp_is_empty!39071 () Bool)

(assert (=> start!134450 tp_is_empty!39071))

(declare-fun b!1569362 () Bool)

(declare-fun res!1072646 () Bool)

(assert (=> b!1569362 (=> (not res!1072646) (not e!874887))))

(declare-datatypes ((B!2520 0))(
  ( (B!2521 (val!19622 Int)) )
))
(declare-datatypes ((tuple2!25510 0))(
  ( (tuple2!25511 (_1!12765 (_ BitVec 64)) (_2!12765 B!2520)) )
))
(declare-datatypes ((List!36903 0))(
  ( (Nil!36900) (Cons!36899 (h!38347 tuple2!25510) (t!51818 List!36903)) )
))
(declare-fun l!750 () List!36903)

(declare-fun isStrictlySorted!1007 (List!36903) Bool)

(assert (=> b!1569362 (= res!1072646 (isStrictlySorted!1007 l!750))))

(declare-fun b!1569365 () Bool)

(declare-fun tp!114136 () Bool)

(assert (=> b!1569365 (= e!874886 (and tp_is_empty!39071 tp!114136))))

(declare-fun v2!10 () B!2520)

(declare-fun b!1569364 () Bool)

(declare-fun insertStrictlySorted!594 (List!36903 (_ BitVec 64) B!2520) List!36903)

(assert (=> b!1569364 (= e!874887 (not (isStrictlySorted!1007 (insertStrictlySorted!594 l!750 key2!21 v2!10))))))

(declare-fun b!1569363 () Bool)

(declare-fun res!1072645 () Bool)

(assert (=> b!1569363 (=> (not res!1072645) (not e!874887))))

(assert (=> b!1569363 (= res!1072645 (or (not (is-Cons!36899 l!750)) (bvsge (_1!12765 (h!38347 l!750)) key1!37) (bvsge (_1!12765 (h!38347 l!750)) key2!21)))))

(assert (= (and start!134450 res!1072644) b!1569362))

(assert (= (and b!1569362 res!1072646) b!1569363))

(assert (= (and b!1569363 res!1072645) b!1569364))

(assert (= (and start!134450 (is-Cons!36899 l!750)) b!1569365))

(declare-fun m!1443733 () Bool)

(assert (=> b!1569362 m!1443733))

(declare-fun m!1443735 () Bool)

(assert (=> b!1569364 m!1443735))

(assert (=> b!1569364 m!1443735))

(declare-fun m!1443737 () Bool)

(assert (=> b!1569364 m!1443737))

(push 1)

(assert (not b!1569364))

(assert (not b!1569362))

(assert (not b!1569365))

(assert tp_is_empty!39071)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163817 () Bool)

(declare-fun res!1072651 () Bool)

(declare-fun e!874892 () Bool)

(assert (=> d!163817 (=> res!1072651 e!874892)))

(assert (=> d!163817 (= res!1072651 (or (is-Nil!36900 (insertStrictlySorted!594 l!750 key2!21 v2!10)) (is-Nil!36900 (t!51818 (insertStrictlySorted!594 l!750 key2!21 v2!10)))))))

(assert (=> d!163817 (= (isStrictlySorted!1007 (insertStrictlySorted!594 l!750 key2!21 v2!10)) e!874892)))

(declare-fun b!1569370 () Bool)

(declare-fun e!874893 () Bool)

(assert (=> b!1569370 (= e!874892 e!874893)))

(declare-fun res!1072652 () Bool)

(assert (=> b!1569370 (=> (not res!1072652) (not e!874893))))

(assert (=> b!1569370 (= res!1072652 (bvslt (_1!12765 (h!38347 (insertStrictlySorted!594 l!750 key2!21 v2!10))) (_1!12765 (h!38347 (t!51818 (insertStrictlySorted!594 l!750 key2!21 v2!10))))))))

(declare-fun b!1569371 () Bool)

(assert (=> b!1569371 (= e!874893 (isStrictlySorted!1007 (t!51818 (insertStrictlySorted!594 l!750 key2!21 v2!10))))))

(assert (= (and d!163817 (not res!1072651)) b!1569370))

(assert (= (and b!1569370 res!1072652) b!1569371))

(declare-fun m!1443739 () Bool)

(assert (=> b!1569371 m!1443739))

(assert (=> b!1569364 d!163817))

(declare-fun e!874921 () Bool)

(declare-fun b!1569408 () Bool)

(declare-fun lt!673231 () List!36903)

(declare-fun contains!10441 (List!36903 tuple2!25510) Bool)

(assert (=> b!1569408 (= e!874921 (contains!10441 lt!673231 (tuple2!25511 key2!21 v2!10)))))

(declare-fun b!1569409 () Bool)

(declare-fun e!874920 () List!36903)

(assert (=> b!1569409 (= e!874920 (insertStrictlySorted!594 (t!51818 l!750) key2!21 v2!10))))

(declare-fun b!1569410 () Bool)

(declare-fun e!874923 () List!36903)

(declare-fun e!874924 () List!36903)

(assert (=> b!1569410 (= e!874923 e!874924)))

(declare-fun c!144681 () Bool)

(assert (=> b!1569410 (= c!144681 (and (is-Cons!36899 l!750) (= (_1!12765 (h!38347 l!750)) key2!21)))))

(declare-fun b!1569411 () Bool)

(declare-fun call!72097 () List!36903)

(assert (=> b!1569411 (= e!874923 call!72097)))

(declare-fun c!144684 () Bool)

(declare-fun b!1569412 () Bool)

(assert (=> b!1569412 (= e!874920 (ite c!144681 (t!51818 l!750) (ite c!144684 (Cons!36899 (h!38347 l!750) (t!51818 l!750)) Nil!36900)))))

(declare-fun b!1569413 () Bool)

(declare-fun call!72096 () List!36903)

(assert (=> b!1569413 (= e!874924 call!72096)))

(declare-fun b!1569414 () Bool)

(assert (=> b!1569414 (= c!144684 (and (is-Cons!36899 l!750) (bvsgt (_1!12765 (h!38347 l!750)) key2!21)))))

(declare-fun e!874922 () List!36903)

(assert (=> b!1569414 (= e!874924 e!874922)))

(declare-fun d!163821 () Bool)

(assert (=> d!163821 e!874921))

(declare-fun res!1072674 () Bool)

(assert (=> d!163821 (=> (not res!1072674) (not e!874921))))

(assert (=> d!163821 (= res!1072674 (isStrictlySorted!1007 lt!673231))))

(assert (=> d!163821 (= lt!673231 e!874923)))

(declare-fun c!144683 () Bool)

(assert (=> d!163821 (= c!144683 (and (is-Cons!36899 l!750) (bvslt (_1!12765 (h!38347 l!750)) key2!21)))))

(assert (=> d!163821 (isStrictlySorted!1007 l!750)))

(assert (=> d!163821 (= (insertStrictlySorted!594 l!750 key2!21 v2!10) lt!673231)))

(declare-fun b!1569415 () Bool)

(declare-fun call!72098 () List!36903)

(assert (=> b!1569415 (= e!874922 call!72098)))

(declare-fun bm!72093 () Bool)

(assert (=> bm!72093 (= call!72098 call!72096)))

(declare-fun bm!72094 () Bool)

(declare-fun $colon$colon!997 (List!36903 tuple2!25510) List!36903)

(assert (=> bm!72094 (= call!72097 ($colon$colon!997 e!874920 (ite c!144683 (h!38347 l!750) (tuple2!25511 key2!21 v2!10))))))

(declare-fun c!144682 () Bool)

(assert (=> bm!72094 (= c!144682 c!144683)))

(declare-fun bm!72095 () Bool)

(assert (=> bm!72095 (= call!72096 call!72097)))

(declare-fun b!1569416 () Bool)

(declare-fun res!1072673 () Bool)

(assert (=> b!1569416 (=> (not res!1072673) (not e!874921))))

(declare-fun containsKey!864 (List!36903 (_ BitVec 64)) Bool)

(assert (=> b!1569416 (= res!1072673 (containsKey!864 lt!673231 key2!21))))

(declare-fun b!1569417 () Bool)

(assert (=> b!1569417 (= e!874922 call!72098)))

(assert (= (and d!163821 c!144683) b!1569411))

(assert (= (and d!163821 (not c!144683)) b!1569410))

(assert (= (and b!1569410 c!144681) b!1569413))

(assert (= (and b!1569410 (not c!144681)) b!1569414))

(assert (= (and b!1569414 c!144684) b!1569417))

(assert (= (and b!1569414 (not c!144684)) b!1569415))

(assert (= (or b!1569417 b!1569415) bm!72093))

(assert (= (or b!1569413 bm!72093) bm!72095))

(assert (= (or b!1569411 bm!72095) bm!72094))

(assert (= (and bm!72094 c!144682) b!1569409))

(assert (= (and bm!72094 (not c!144682)) b!1569412))

(assert (= (and d!163821 res!1072674) b!1569416))

(assert (= (and b!1569416 res!1072673) b!1569408))

(declare-fun m!1443749 () Bool)

(assert (=> d!163821 m!1443749))

(assert (=> d!163821 m!1443733))

(declare-fun m!1443751 () Bool)

(assert (=> bm!72094 m!1443751))

(declare-fun m!1443753 () Bool)

(assert (=> b!1569408 m!1443753))

(declare-fun m!1443755 () Bool)

(assert (=> b!1569409 m!1443755))

(declare-fun m!1443757 () Bool)

(assert (=> b!1569416 m!1443757))

(assert (=> b!1569364 d!163821))

(declare-fun d!163833 () Bool)

(declare-fun res!1072675 () Bool)

(declare-fun e!874925 () Bool)

(assert (=> d!163833 (=> res!1072675 e!874925)))

(assert (=> d!163833 (= res!1072675 (or (is-Nil!36900 l!750) (is-Nil!36900 (t!51818 l!750))))))

(assert (=> d!163833 (= (isStrictlySorted!1007 l!750) e!874925)))

(declare-fun b!1569418 () Bool)

(declare-fun e!874926 () Bool)

(assert (=> b!1569418 (= e!874925 e!874926)))

(declare-fun res!1072676 () Bool)

(assert (=> b!1569418 (=> (not res!1072676) (not e!874926))))

(assert (=> b!1569418 (= res!1072676 (bvslt (_1!12765 (h!38347 l!750)) (_1!12765 (h!38347 (t!51818 l!750)))))))

(declare-fun b!1569419 () Bool)

(assert (=> b!1569419 (= e!874926 (isStrictlySorted!1007 (t!51818 l!750)))))

(assert (= (and d!163833 (not res!1072675)) b!1569418))

(assert (= (and b!1569418 res!1072676) b!1569419))

(declare-fun m!1443759 () Bool)

(assert (=> b!1569419 m!1443759))

(assert (=> b!1569362 d!163833))

(declare-fun b!1569424 () Bool)

(declare-fun e!874929 () Bool)

(declare-fun tp!114139 () Bool)

(assert (=> b!1569424 (= e!874929 (and tp_is_empty!39071 tp!114139))))

(assert (=> b!1569365 (= tp!114136 e!874929)))

(assert (= (and b!1569365 (is-Cons!36899 (t!51818 l!750))) b!1569424))

(push 1)

(assert (not bm!72094))

(assert (not b!1569416))

(assert (not d!163821))

(assert tp_is_empty!39071)

(assert (not b!1569371))

(assert (not b!1569408))

(assert (not b!1569419))

(assert (not b!1569424))

(assert (not b!1569409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

