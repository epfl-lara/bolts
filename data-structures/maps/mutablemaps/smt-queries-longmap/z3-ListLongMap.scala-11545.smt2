; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134424 () Bool)

(assert start!134424)

(declare-fun b!1569179 () Bool)

(declare-fun e!874776 () Bool)

(declare-fun tp_is_empty!39057 () Bool)

(declare-fun tp!114106 () Bool)

(assert (=> b!1569179 (= e!874776 (and tp_is_empty!39057 tp!114106))))

(declare-fun b!1569177 () Bool)

(declare-fun res!1072566 () Bool)

(declare-fun e!874775 () Bool)

(assert (=> b!1569177 (=> (not res!1072566) (not e!874775))))

(declare-datatypes ((B!2506 0))(
  ( (B!2507 (val!19615 Int)) )
))
(declare-datatypes ((tuple2!25496 0))(
  ( (tuple2!25497 (_1!12758 (_ BitVec 64)) (_2!12758 B!2506)) )
))
(declare-datatypes ((List!36896 0))(
  ( (Nil!36893) (Cons!36892 (h!38340 tuple2!25496) (t!51811 List!36896)) )
))
(declare-fun l!750 () List!36896)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1569177 (= res!1072566 (or (not ((_ is Cons!36892) l!750)) (bvsge (_1!12758 (h!38340 l!750)) key1!37) (bvsge (_1!12758 (h!38340 l!750)) key2!21)))))

(declare-fun res!1072567 () Bool)

(assert (=> start!134424 (=> (not res!1072567) (not e!874775))))

(assert (=> start!134424 (= res!1072567 (not (= key1!37 key2!21)))))

(assert (=> start!134424 e!874775))

(assert (=> start!134424 true))

(assert (=> start!134424 e!874776))

(assert (=> start!134424 tp_is_empty!39057))

(declare-fun b!1569176 () Bool)

(declare-fun res!1072568 () Bool)

(assert (=> b!1569176 (=> (not res!1072568) (not e!874775))))

(declare-fun isStrictlySorted!1003 (List!36896) Bool)

(assert (=> b!1569176 (= res!1072568 (isStrictlySorted!1003 l!750))))

(declare-fun v1!32 () B!2506)

(declare-fun b!1569178 () Bool)

(declare-fun insertStrictlySorted!590 (List!36896 (_ BitVec 64) B!2506) List!36896)

(assert (=> b!1569178 (= e!874775 (not (isStrictlySorted!1003 (insertStrictlySorted!590 l!750 key1!37 v1!32))))))

(assert (= (and start!134424 res!1072567) b!1569176))

(assert (= (and b!1569176 res!1072568) b!1569177))

(assert (= (and b!1569177 res!1072566) b!1569178))

(assert (= (and start!134424 ((_ is Cons!36892) l!750)) b!1569179))

(declare-fun m!1443667 () Bool)

(assert (=> b!1569176 m!1443667))

(declare-fun m!1443669 () Bool)

(assert (=> b!1569178 m!1443669))

(assert (=> b!1569178 m!1443669))

(declare-fun m!1443671 () Bool)

(assert (=> b!1569178 m!1443671))

(check-sat (not b!1569178) (not b!1569176) (not b!1569179) tp_is_empty!39057)
(check-sat)
(get-model)

(declare-fun d!163795 () Bool)

(declare-fun res!1072586 () Bool)

(declare-fun e!874791 () Bool)

(assert (=> d!163795 (=> res!1072586 e!874791)))

(assert (=> d!163795 (= res!1072586 (or ((_ is Nil!36893) (insertStrictlySorted!590 l!750 key1!37 v1!32)) ((_ is Nil!36893) (t!51811 (insertStrictlySorted!590 l!750 key1!37 v1!32)))))))

(assert (=> d!163795 (= (isStrictlySorted!1003 (insertStrictlySorted!590 l!750 key1!37 v1!32)) e!874791)))

(declare-fun b!1569200 () Bool)

(declare-fun e!874792 () Bool)

(assert (=> b!1569200 (= e!874791 e!874792)))

(declare-fun res!1072587 () Bool)

(assert (=> b!1569200 (=> (not res!1072587) (not e!874792))))

(assert (=> b!1569200 (= res!1072587 (bvslt (_1!12758 (h!38340 (insertStrictlySorted!590 l!750 key1!37 v1!32))) (_1!12758 (h!38340 (t!51811 (insertStrictlySorted!590 l!750 key1!37 v1!32))))))))

(declare-fun b!1569201 () Bool)

(assert (=> b!1569201 (= e!874792 (isStrictlySorted!1003 (t!51811 (insertStrictlySorted!590 l!750 key1!37 v1!32))))))

(assert (= (and d!163795 (not res!1072586)) b!1569200))

(assert (= (and b!1569200 res!1072587) b!1569201))

(declare-fun m!1443679 () Bool)

(assert (=> b!1569201 m!1443679))

(assert (=> b!1569178 d!163795))

(declare-fun b!1569230 () Bool)

(declare-fun e!874814 () List!36896)

(declare-fun call!72070 () List!36896)

(assert (=> b!1569230 (= e!874814 call!72070)))

(declare-fun bm!72066 () Bool)

(declare-fun call!72071 () List!36896)

(declare-fun call!72069 () List!36896)

(assert (=> bm!72066 (= call!72071 call!72069)))

(declare-fun b!1569231 () Bool)

(declare-fun e!874812 () List!36896)

(declare-fun e!874813 () List!36896)

(assert (=> b!1569231 (= e!874812 e!874813)))

(declare-fun c!144648 () Bool)

(assert (=> b!1569231 (= c!144648 (and ((_ is Cons!36892) l!750) (= (_1!12758 (h!38340 l!750)) key1!37)))))

(declare-fun lt!673222 () List!36896)

(declare-fun e!874815 () Bool)

(declare-fun b!1569232 () Bool)

(declare-fun contains!10439 (List!36896 tuple2!25496) Bool)

(assert (=> b!1569232 (= e!874815 (contains!10439 lt!673222 (tuple2!25497 key1!37 v1!32)))))

(declare-fun b!1569233 () Bool)

(assert (=> b!1569233 (= e!874813 call!72071)))

(declare-fun bm!72067 () Bool)

(assert (=> bm!72067 (= call!72070 call!72071)))

(declare-fun d!163801 () Bool)

(assert (=> d!163801 e!874815))

(declare-fun res!1072600 () Bool)

(assert (=> d!163801 (=> (not res!1072600) (not e!874815))))

(assert (=> d!163801 (= res!1072600 (isStrictlySorted!1003 lt!673222))))

(assert (=> d!163801 (= lt!673222 e!874812)))

(declare-fun c!144645 () Bool)

(assert (=> d!163801 (= c!144645 (and ((_ is Cons!36892) l!750) (bvslt (_1!12758 (h!38340 l!750)) key1!37)))))

(assert (=> d!163801 (isStrictlySorted!1003 l!750)))

(assert (=> d!163801 (= (insertStrictlySorted!590 l!750 key1!37 v1!32) lt!673222)))

(declare-fun b!1569234 () Bool)

(assert (=> b!1569234 (= e!874814 call!72070)))

(declare-fun b!1569235 () Bool)

(assert (=> b!1569235 (= e!874812 call!72069)))

(declare-fun b!1569236 () Bool)

(declare-fun c!144646 () Bool)

(assert (=> b!1569236 (= c!144646 (and ((_ is Cons!36892) l!750) (bvsgt (_1!12758 (h!38340 l!750)) key1!37)))))

(assert (=> b!1569236 (= e!874813 e!874814)))

(declare-fun bm!72068 () Bool)

(declare-fun e!874811 () List!36896)

(declare-fun $colon$colon!996 (List!36896 tuple2!25496) List!36896)

(assert (=> bm!72068 (= call!72069 ($colon$colon!996 e!874811 (ite c!144645 (h!38340 l!750) (tuple2!25497 key1!37 v1!32))))))

(declare-fun c!144647 () Bool)

(assert (=> bm!72068 (= c!144647 c!144645)))

(declare-fun b!1569237 () Bool)

(declare-fun res!1072601 () Bool)

(assert (=> b!1569237 (=> (not res!1072601) (not e!874815))))

(declare-fun containsKey!861 (List!36896 (_ BitVec 64)) Bool)

(assert (=> b!1569237 (= res!1072601 (containsKey!861 lt!673222 key1!37))))

(declare-fun b!1569238 () Bool)

(assert (=> b!1569238 (= e!874811 (insertStrictlySorted!590 (t!51811 l!750) key1!37 v1!32))))

(declare-fun b!1569239 () Bool)

(assert (=> b!1569239 (= e!874811 (ite c!144648 (t!51811 l!750) (ite c!144646 (Cons!36892 (h!38340 l!750) (t!51811 l!750)) Nil!36893)))))

(assert (= (and d!163801 c!144645) b!1569235))

(assert (= (and d!163801 (not c!144645)) b!1569231))

(assert (= (and b!1569231 c!144648) b!1569233))

(assert (= (and b!1569231 (not c!144648)) b!1569236))

(assert (= (and b!1569236 c!144646) b!1569234))

(assert (= (and b!1569236 (not c!144646)) b!1569230))

(assert (= (or b!1569234 b!1569230) bm!72067))

(assert (= (or b!1569233 bm!72067) bm!72066))

(assert (= (or b!1569235 bm!72066) bm!72068))

(assert (= (and bm!72068 c!144647) b!1569238))

(assert (= (and bm!72068 (not c!144647)) b!1569239))

(assert (= (and d!163801 res!1072600) b!1569237))

(assert (= (and b!1569237 res!1072601) b!1569232))

(declare-fun m!1443685 () Bool)

(assert (=> b!1569232 m!1443685))

(declare-fun m!1443687 () Bool)

(assert (=> bm!72068 m!1443687))

(declare-fun m!1443689 () Bool)

(assert (=> d!163801 m!1443689))

(assert (=> d!163801 m!1443667))

(declare-fun m!1443691 () Bool)

(assert (=> b!1569238 m!1443691))

(declare-fun m!1443693 () Bool)

(assert (=> b!1569237 m!1443693))

(assert (=> b!1569178 d!163801))

(declare-fun d!163807 () Bool)

(declare-fun res!1072602 () Bool)

(declare-fun e!874822 () Bool)

(assert (=> d!163807 (=> res!1072602 e!874822)))

(assert (=> d!163807 (= res!1072602 (or ((_ is Nil!36893) l!750) ((_ is Nil!36893) (t!51811 l!750))))))

(assert (=> d!163807 (= (isStrictlySorted!1003 l!750) e!874822)))

(declare-fun b!1569252 () Bool)

(declare-fun e!874823 () Bool)

(assert (=> b!1569252 (= e!874822 e!874823)))

(declare-fun res!1072603 () Bool)

(assert (=> b!1569252 (=> (not res!1072603) (not e!874823))))

(assert (=> b!1569252 (= res!1072603 (bvslt (_1!12758 (h!38340 l!750)) (_1!12758 (h!38340 (t!51811 l!750)))))))

(declare-fun b!1569253 () Bool)

(assert (=> b!1569253 (= e!874823 (isStrictlySorted!1003 (t!51811 l!750)))))

(assert (= (and d!163807 (not res!1072602)) b!1569252))

(assert (= (and b!1569252 res!1072603) b!1569253))

(declare-fun m!1443695 () Bool)

(assert (=> b!1569253 m!1443695))

(assert (=> b!1569176 d!163807))

(declare-fun b!1569258 () Bool)

(declare-fun e!874826 () Bool)

(declare-fun tp!114112 () Bool)

(assert (=> b!1569258 (= e!874826 (and tp_is_empty!39057 tp!114112))))

(assert (=> b!1569179 (= tp!114106 e!874826)))

(assert (= (and b!1569179 ((_ is Cons!36892) (t!51811 l!750))) b!1569258))

(check-sat (not b!1569232) (not b!1569237) (not b!1569201) (not b!1569253) (not bm!72068) (not b!1569258) tp_is_empty!39057 (not b!1569238) (not d!163801))
(check-sat)
