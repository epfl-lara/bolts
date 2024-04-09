; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134446 () Bool)

(assert start!134446)

(declare-fun b!1569338 () Bool)

(declare-fun res!1072628 () Bool)

(declare-fun e!874874 () Bool)

(assert (=> b!1569338 (=> (not res!1072628) (not e!874874))))

(declare-datatypes ((B!2516 0))(
  ( (B!2517 (val!19620 Int)) )
))
(declare-datatypes ((tuple2!25506 0))(
  ( (tuple2!25507 (_1!12763 (_ BitVec 64)) (_2!12763 B!2516)) )
))
(declare-datatypes ((List!36901 0))(
  ( (Nil!36898) (Cons!36897 (h!38345 tuple2!25506) (t!51816 List!36901)) )
))
(declare-fun l!750 () List!36901)

(declare-fun isStrictlySorted!1005 (List!36901) Bool)

(assert (=> b!1569338 (= res!1072628 (isStrictlySorted!1005 l!750))))

(declare-fun b!1569341 () Bool)

(declare-fun e!874875 () Bool)

(declare-fun tp_is_empty!39067 () Bool)

(declare-fun tp!114130 () Bool)

(assert (=> b!1569341 (= e!874875 (and tp_is_empty!39067 tp!114130))))

(declare-fun b!1569339 () Bool)

(declare-fun res!1072626 () Bool)

(assert (=> b!1569339 (=> (not res!1072626) (not e!874874))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1569339 (= res!1072626 (or (not (is-Cons!36897 l!750)) (bvsge (_1!12763 (h!38345 l!750)) key1!37) (bvsge (_1!12763 (h!38345 l!750)) key2!21)))))

(declare-fun v2!10 () B!2516)

(declare-fun b!1569340 () Bool)

(declare-fun insertStrictlySorted!592 (List!36901 (_ BitVec 64) B!2516) List!36901)

(assert (=> b!1569340 (= e!874874 (not (isStrictlySorted!1005 (insertStrictlySorted!592 l!750 key2!21 v2!10))))))

(declare-fun res!1072627 () Bool)

(assert (=> start!134446 (=> (not res!1072627) (not e!874874))))

(assert (=> start!134446 (= res!1072627 (not (= key1!37 key2!21)))))

(assert (=> start!134446 e!874874))

(assert (=> start!134446 true))

(assert (=> start!134446 e!874875))

(assert (=> start!134446 tp_is_empty!39067))

(assert (= (and start!134446 res!1072627) b!1569338))

(assert (= (and b!1569338 res!1072628) b!1569339))

(assert (= (and b!1569339 res!1072626) b!1569340))

(assert (= (and start!134446 (is-Cons!36897 l!750)) b!1569341))

(declare-fun m!1443721 () Bool)

(assert (=> b!1569338 m!1443721))

(declare-fun m!1443723 () Bool)

(assert (=> b!1569340 m!1443723))

(assert (=> b!1569340 m!1443723))

(declare-fun m!1443725 () Bool)

(assert (=> b!1569340 m!1443725))

(push 1)

(assert (not b!1569338))

(assert (not b!1569340))

(assert (not b!1569341))

(assert tp_is_empty!39067)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163819 () Bool)

(declare-fun res!1072659 () Bool)

(declare-fun e!874900 () Bool)

(assert (=> d!163819 (=> res!1072659 e!874900)))

(assert (=> d!163819 (= res!1072659 (or (is-Nil!36898 l!750) (is-Nil!36898 (t!51816 l!750))))))

(assert (=> d!163819 (= (isStrictlySorted!1005 l!750) e!874900)))

(declare-fun b!1569378 () Bool)

(declare-fun e!874901 () Bool)

(assert (=> b!1569378 (= e!874900 e!874901)))

(declare-fun res!1072660 () Bool)

(assert (=> b!1569378 (=> (not res!1072660) (not e!874901))))

(assert (=> b!1569378 (= res!1072660 (bvslt (_1!12763 (h!38345 l!750)) (_1!12763 (h!38345 (t!51816 l!750)))))))

(declare-fun b!1569379 () Bool)

(assert (=> b!1569379 (= e!874901 (isStrictlySorted!1005 (t!51816 l!750)))))

(assert (= (and d!163819 (not res!1072659)) b!1569378))

(assert (= (and b!1569378 res!1072660) b!1569379))

(declare-fun m!1443741 () Bool)

(assert (=> b!1569379 m!1443741))

(assert (=> b!1569338 d!163819))

(declare-fun d!163825 () Bool)

(declare-fun res!1072663 () Bool)

(declare-fun e!874904 () Bool)

(assert (=> d!163825 (=> res!1072663 e!874904)))

(assert (=> d!163825 (= res!1072663 (or (is-Nil!36898 (insertStrictlySorted!592 l!750 key2!21 v2!10)) (is-Nil!36898 (t!51816 (insertStrictlySorted!592 l!750 key2!21 v2!10)))))))

(assert (=> d!163825 (= (isStrictlySorted!1005 (insertStrictlySorted!592 l!750 key2!21 v2!10)) e!874904)))

(declare-fun b!1569382 () Bool)

(declare-fun e!874905 () Bool)

(assert (=> b!1569382 (= e!874904 e!874905)))

(declare-fun res!1072664 () Bool)

(assert (=> b!1569382 (=> (not res!1072664) (not e!874905))))

(assert (=> b!1569382 (= res!1072664 (bvslt (_1!12763 (h!38345 (insertStrictlySorted!592 l!750 key2!21 v2!10))) (_1!12763 (h!38345 (t!51816 (insertStrictlySorted!592 l!750 key2!21 v2!10))))))))

(declare-fun b!1569383 () Bool)

(assert (=> b!1569383 (= e!874905 (isStrictlySorted!1005 (t!51816 (insertStrictlySorted!592 l!750 key2!21 v2!10))))))

(assert (= (and d!163825 (not res!1072663)) b!1569382))

(assert (= (and b!1569382 res!1072664) b!1569383))

(declare-fun m!1443743 () Bool)

(assert (=> b!1569383 m!1443743))

(assert (=> b!1569340 d!163825))

(declare-fun b!1569465 () Bool)

(declare-fun res!1072685 () Bool)

(declare-fun e!874952 () Bool)

(assert (=> b!1569465 (=> (not res!1072685) (not e!874952))))

(declare-fun lt!673236 () List!36901)

(declare-fun containsKey!865 (List!36901 (_ BitVec 64)) Bool)

(assert (=> b!1569465 (= res!1072685 (containsKey!865 lt!673236 key2!21))))

(declare-fun b!1569466 () Bool)

(declare-fun e!874953 () List!36901)

(declare-fun call!72113 () List!36901)

(assert (=> b!1569466 (= e!874953 call!72113)))

(declare-fun b!1569467 () Bool)

(declare-fun c!144704 () Bool)

(assert (=> b!1569467 (= c!144704 (and (is-Cons!36897 l!750) (bvsgt (_1!12763 (h!38345 l!750)) key2!21)))))

(declare-fun e!874950 () List!36901)

(assert (=> b!1569467 (= e!874950 e!874953)))

(declare-fun c!144701 () Bool)

(declare-fun call!72111 () List!36901)

(declare-fun bm!72109 () Bool)

(declare-fun e!874951 () List!36901)

(declare-fun $colon$colon!998 (List!36901 tuple2!25506) List!36901)

(assert (=> bm!72109 (= call!72111 ($colon$colon!998 e!874951 (ite c!144701 (h!38345 l!750) (tuple2!25507 key2!21 v2!10))))))

(declare-fun c!144703 () Bool)

(assert (=> bm!72109 (= c!144703 c!144701)))

(declare-fun b!1569468 () Bool)

(declare-fun e!874954 () List!36901)

(assert (=> b!1569468 (= e!874954 call!72111)))

(declare-fun b!1569469 () Bool)

(declare-fun contains!10442 (List!36901 tuple2!25506) Bool)

(assert (=> b!1569469 (= e!874952 (contains!10442 lt!673236 (tuple2!25507 key2!21 v2!10)))))

(declare-fun bm!72110 () Bool)

(declare-fun call!72112 () List!36901)

(assert (=> bm!72110 (= call!72113 call!72112)))

(declare-fun b!1569470 () Bool)

(declare-fun c!144702 () Bool)

(assert (=> b!1569470 (= e!874951 (ite c!144702 (t!51816 l!750) (ite c!144704 (Cons!36897 (h!38345 l!750) (t!51816 l!750)) Nil!36898)))))

(declare-fun b!1569471 () Bool)

(assert (=> b!1569471 (= e!874954 e!874950)))

(assert (=> b!1569471 (= c!144702 (and (is-Cons!36897 l!750) (= (_1!12763 (h!38345 l!750)) key2!21)))))

(declare-fun b!1569472 () Bool)

(assert (=> b!1569472 (= e!874950 call!72112)))

(declare-fun b!1569473 () Bool)

(assert (=> b!1569473 (= e!874951 (insertStrictlySorted!592 (t!51816 l!750) key2!21 v2!10))))

(declare-fun b!1569474 () Bool)

(assert (=> b!1569474 (= e!874953 call!72113)))

(declare-fun d!163827 () Bool)

(assert (=> d!163827 e!874952))

(declare-fun res!1072686 () Bool)

(assert (=> d!163827 (=> (not res!1072686) (not e!874952))))

(assert (=> d!163827 (= res!1072686 (isStrictlySorted!1005 lt!673236))))

(assert (=> d!163827 (= lt!673236 e!874954)))

(assert (=> d!163827 (= c!144701 (and (is-Cons!36897 l!750) (bvslt (_1!12763 (h!38345 l!750)) key2!21)))))

(assert (=> d!163827 (isStrictlySorted!1005 l!750)))

(assert (=> d!163827 (= (insertStrictlySorted!592 l!750 key2!21 v2!10) lt!673236)))

(declare-fun bm!72108 () Bool)

(assert (=> bm!72108 (= call!72112 call!72111)))

(assert (= (and d!163827 c!144701) b!1569468))

(assert (= (and d!163827 (not c!144701)) b!1569471))

(assert (= (and b!1569471 c!144702) b!1569472))

(assert (= (and b!1569471 (not c!144702)) b!1569467))

(assert (= (and b!1569467 c!144704) b!1569474))

(assert (= (and b!1569467 (not c!144704)) b!1569466))

(assert (= (or b!1569474 b!1569466) bm!72110))

(assert (= (or b!1569472 bm!72110) bm!72108))

(assert (= (or b!1569468 bm!72108) bm!72109))

(assert (= (and bm!72109 c!144703) b!1569473))

(assert (= (and bm!72109 (not c!144703)) b!1569470))

(assert (= (and d!163827 res!1072686) b!1569465))

(assert (= (and b!1569465 res!1072685) b!1569469))

(declare-fun m!1443761 () Bool)

(assert (=> b!1569465 m!1443761))

(declare-fun m!1443763 () Bool)

(assert (=> d!163827 m!1443763))

(assert (=> d!163827 m!1443721))

(declare-fun m!1443765 () Bool)

(assert (=> b!1569469 m!1443765))

(declare-fun m!1443767 () Bool)

(assert (=> b!1569473 m!1443767))

(declare-fun m!1443769 () Bool)

(assert (=> bm!72109 m!1443769))

(assert (=> b!1569340 d!163827))

(declare-fun b!1569489 () Bool)

