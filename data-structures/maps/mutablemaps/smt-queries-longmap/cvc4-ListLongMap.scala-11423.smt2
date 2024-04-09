; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133190 () Bool)

(assert start!133190)

(declare-fun b!1557859 () Bool)

(declare-fun e!867821 () Bool)

(declare-fun tp_is_empty!38423 () Bool)

(declare-fun tp!112591 () Bool)

(assert (=> b!1557859 (= e!867821 (and tp_is_empty!38423 tp!112591))))

(declare-fun b!1557856 () Bool)

(declare-fun res!1065599 () Bool)

(declare-fun e!867822 () Bool)

(assert (=> b!1557856 (=> (not res!1065599) (not e!867822))))

(declare-datatypes ((B!2418 0))(
  ( (B!2419 (val!19295 Int)) )
))
(declare-datatypes ((tuple2!25106 0))(
  ( (tuple2!25107 (_1!12563 (_ BitVec 64)) (_2!12563 B!2418)) )
))
(declare-datatypes ((List!36475 0))(
  ( (Nil!36472) (Cons!36471 (h!37918 tuple2!25106) (t!51209 List!36475)) )
))
(declare-fun l!1292 () List!36475)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!830 (List!36475 (_ BitVec 64)) Bool)

(assert (=> b!1557856 (= res!1065599 (containsKey!830 l!1292 otherKey!62))))

(declare-fun res!1065600 () Bool)

(assert (=> start!133190 (=> (not res!1065600) (not e!867822))))

(declare-fun isStrictlySorted!966 (List!36475) Bool)

(assert (=> start!133190 (= res!1065600 (isStrictlySorted!966 l!1292))))

(assert (=> start!133190 e!867822))

(assert (=> start!133190 e!867821))

(assert (=> start!133190 true))

(assert (=> start!133190 tp_is_empty!38423))

(declare-fun b!1557858 () Bool)

(declare-fun newValue!135 () B!2418)

(declare-fun newKey!135 () (_ BitVec 64))

(declare-fun insertStrictlySorted!568 (List!36475 (_ BitVec 64) B!2418) List!36475)

(assert (=> b!1557858 (= e!867822 (not (isStrictlySorted!966 (insertStrictlySorted!568 l!1292 newKey!135 newValue!135))))))

(declare-fun b!1557857 () Bool)

(declare-fun res!1065598 () Bool)

(assert (=> b!1557857 (=> (not res!1065598) (not e!867822))))

(assert (=> b!1557857 (= res!1065598 (and (not (= otherKey!62 newKey!135)) (or (not (is-Cons!36471 l!1292)) (= (_1!12563 (h!37918 l!1292)) otherKey!62))))))

(assert (= (and start!133190 res!1065600) b!1557856))

(assert (= (and b!1557856 res!1065599) b!1557857))

(assert (= (and b!1557857 res!1065598) b!1557858))

(assert (= (and start!133190 (is-Cons!36471 l!1292)) b!1557859))

(declare-fun m!1434835 () Bool)

(assert (=> b!1557856 m!1434835))

(declare-fun m!1434837 () Bool)

(assert (=> start!133190 m!1434837))

(declare-fun m!1434839 () Bool)

(assert (=> b!1557858 m!1434839))

(assert (=> b!1557858 m!1434839))

(declare-fun m!1434841 () Bool)

(assert (=> b!1557858 m!1434841))

(push 1)

(assert tp_is_empty!38423)

(assert (not b!1557859))

(assert (not b!1557858))

(assert (not start!133190))

(assert (not b!1557856))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162489 () Bool)

(declare-fun res!1065611 () Bool)

(declare-fun e!867833 () Bool)

(assert (=> d!162489 (=> res!1065611 e!867833)))

(assert (=> d!162489 (= res!1065611 (and (is-Cons!36471 l!1292) (= (_1!12563 (h!37918 l!1292)) otherKey!62)))))

(assert (=> d!162489 (= (containsKey!830 l!1292 otherKey!62) e!867833)))

(declare-fun b!1557870 () Bool)

(declare-fun e!867834 () Bool)

(assert (=> b!1557870 (= e!867833 e!867834)))

(declare-fun res!1065612 () Bool)

(assert (=> b!1557870 (=> (not res!1065612) (not e!867834))))

(assert (=> b!1557870 (= res!1065612 (and (or (not (is-Cons!36471 l!1292)) (bvsle (_1!12563 (h!37918 l!1292)) otherKey!62)) (is-Cons!36471 l!1292) (bvslt (_1!12563 (h!37918 l!1292)) otherKey!62)))))

(declare-fun b!1557871 () Bool)

(assert (=> b!1557871 (= e!867834 (containsKey!830 (t!51209 l!1292) otherKey!62))))

(assert (= (and d!162489 (not res!1065611)) b!1557870))

(assert (= (and b!1557870 res!1065612) b!1557871))

(declare-fun m!1434845 () Bool)

(assert (=> b!1557871 m!1434845))

(assert (=> b!1557856 d!162489))

(declare-fun d!162495 () Bool)

(declare-fun res!1065623 () Bool)

(declare-fun e!867845 () Bool)

(assert (=> d!162495 (=> res!1065623 e!867845)))

(assert (=> d!162495 (= res!1065623 (or (is-Nil!36472 (insertStrictlySorted!568 l!1292 newKey!135 newValue!135)) (is-Nil!36472 (t!51209 (insertStrictlySorted!568 l!1292 newKey!135 newValue!135)))))))

(assert (=> d!162495 (= (isStrictlySorted!966 (insertStrictlySorted!568 l!1292 newKey!135 newValue!135)) e!867845)))

(declare-fun b!1557882 () Bool)

(declare-fun e!867846 () Bool)

(assert (=> b!1557882 (= e!867845 e!867846)))

(declare-fun res!1065624 () Bool)

(assert (=> b!1557882 (=> (not res!1065624) (not e!867846))))

(assert (=> b!1557882 (= res!1065624 (bvslt (_1!12563 (h!37918 (insertStrictlySorted!568 l!1292 newKey!135 newValue!135))) (_1!12563 (h!37918 (t!51209 (insertStrictlySorted!568 l!1292 newKey!135 newValue!135))))))))

(declare-fun b!1557883 () Bool)

(assert (=> b!1557883 (= e!867846 (isStrictlySorted!966 (t!51209 (insertStrictlySorted!568 l!1292 newKey!135 newValue!135))))))

(assert (= (and d!162495 (not res!1065623)) b!1557882))

(assert (= (and b!1557882 res!1065624) b!1557883))

(declare-fun m!1434849 () Bool)

(assert (=> b!1557883 m!1434849))

(assert (=> b!1557858 d!162495))

(declare-fun b!1557979 () Bool)

(declare-fun e!867901 () List!36475)

(declare-fun call!71748 () List!36475)

(assert (=> b!1557979 (= e!867901 call!71748)))

(declare-fun b!1557980 () Bool)

(declare-fun res!1065651 () Bool)

(declare-fun e!867903 () Bool)

(assert (=> b!1557980 (=> (not res!1065651) (not e!867903))))

(declare-fun lt!670685 () List!36475)

(assert (=> b!1557980 (= res!1065651 (containsKey!830 lt!670685 newKey!135))))

(declare-fun c!144017 () Bool)

(declare-fun c!144015 () Bool)

(declare-fun b!1557981 () Bool)

(declare-fun e!867900 () List!36475)

(assert (=> b!1557981 (= e!867900 (ite c!144015 (t!51209 l!1292) (ite c!144017 (Cons!36471 (h!37918 l!1292) (t!51209 l!1292)) Nil!36472)))))

(declare-fun b!1557982 () Bool)

(assert (=> b!1557982 (= e!867901 call!71748)))

(declare-fun d!162499 () Bool)

(assert (=> d!162499 e!867903))

(declare-fun res!1065652 () Bool)

(assert (=> d!162499 (=> (not res!1065652) (not e!867903))))

(assert (=> d!162499 (= res!1065652 (isStrictlySorted!966 lt!670685))))

(declare-fun e!867904 () List!36475)

(assert (=> d!162499 (= lt!670685 e!867904)))

(declare-fun c!144016 () Bool)

(assert (=> d!162499 (= c!144016 (and (is-Cons!36471 l!1292) (bvslt (_1!12563 (h!37918 l!1292)) newKey!135)))))

(assert (=> d!162499 (isStrictlySorted!966 l!1292)))

(assert (=> d!162499 (= (insertStrictlySorted!568 l!1292 newKey!135 newValue!135) lt!670685)))

(declare-fun bm!71743 () Bool)

(declare-fun call!71747 () List!36475)

(declare-fun call!71746 () List!36475)

(assert (=> bm!71743 (= call!71747 call!71746)))

(declare-fun b!1557983 () Bool)

(assert (=> b!1557983 (= c!144017 (and (is-Cons!36471 l!1292) (bvsgt (_1!12563 (h!37918 l!1292)) newKey!135)))))

(declare-fun e!867902 () List!36475)

(assert (=> b!1557983 (= e!867902 e!867901)))

(declare-fun b!1557984 () Bool)

(assert (=> b!1557984 (= e!867902 call!71747)))

(declare-fun b!1557985 () Bool)

(assert (=> b!1557985 (= e!867904 e!867902)))

(assert (=> b!1557985 (= c!144015 (and (is-Cons!36471 l!1292) (= (_1!12563 (h!37918 l!1292)) newKey!135)))))

(declare-fun b!1557986 () Bool)

(assert (=> b!1557986 (= e!867900 (insertStrictlySorted!568 (t!51209 l!1292) newKey!135 newValue!135))))

(declare-fun bm!71744 () Bool)

(assert (=> bm!71744 (= call!71748 call!71747)))

(declare-fun bm!71745 () Bool)

(declare-fun $colon$colon!982 (List!36475 tuple2!25106) List!36475)

(assert (=> bm!71745 (= call!71746 ($colon$colon!982 e!867900 (ite c!144016 (h!37918 l!1292) (tuple2!25107 newKey!135 newValue!135))))))

(declare-fun c!144014 () Bool)

(assert (=> bm!71745 (= c!144014 c!144016)))

(declare-fun b!1557987 () Bool)

(declare-fun contains!10217 (List!36475 tuple2!25106) Bool)

(assert (=> b!1557987 (= e!867903 (contains!10217 lt!670685 (tuple2!25107 newKey!135 newValue!135)))))

(declare-fun b!1557988 () Bool)

(assert (=> b!1557988 (= e!867904 call!71746)))

(assert (= (and d!162499 c!144016) b!1557988))

(assert (= (and d!162499 (not c!144016)) b!1557985))

(assert (= (and b!1557985 c!144015) b!1557984))

(assert (= (and b!1557985 (not c!144015)) b!1557983))

(assert (= (and b!1557983 c!144017) b!1557979))

(assert (= (and b!1557983 (not c!144017)) b!1557982))

(assert (= (or b!1557979 b!1557982) bm!71744))

(assert (= (or b!1557984 bm!71744) bm!71743))

(assert (= (or b!1557988 bm!71743) bm!71745))

(assert (= (and bm!71745 c!144014) b!1557986))

(assert (= (and bm!71745 (not c!144014)) b!1557981))

(assert (= (and d!162499 res!1065652) b!1557980))

(assert (= (and b!1557980 res!1065651) b!1557987))

(declare-fun m!1434877 () Bool)

(assert (=> b!1557986 m!1434877))

(declare-fun m!1434879 () Bool)

(assert (=> d!162499 m!1434879))

(assert (=> d!162499 m!1434837))

(declare-fun m!1434881 () Bool)

(assert (=> b!1557987 m!1434881))

(declare-fun m!1434883 () Bool)

(assert (=> b!1557980 m!1434883))

(declare-fun m!1434885 () Bool)

(assert (=> bm!71745 m!1434885))

(assert (=> b!1557858 d!162499))

(declare-fun d!162509 () Bool)

(declare-fun res!1065653 () Bool)

(declare-fun e!867905 () Bool)

(assert (=> d!162509 (=> res!1065653 e!867905)))

(assert (=> d!162509 (= res!1065653 (or (is-Nil!36472 l!1292) (is-Nil!36472 (t!51209 l!1292))))))

(assert (=> d!162509 (= (isStrictlySorted!966 l!1292) e!867905)))

(declare-fun b!1557989 () Bool)

(declare-fun e!867906 () Bool)

(assert (=> b!1557989 (= e!867905 e!867906)))

(declare-fun res!1065654 () Bool)

(assert (=> b!1557989 (=> (not res!1065654) (not e!867906))))

(assert (=> b!1557989 (= res!1065654 (bvslt (_1!12563 (h!37918 l!1292)) (_1!12563 (h!37918 (t!51209 l!1292)))))))

(declare-fun b!1557990 () Bool)

(assert (=> b!1557990 (= e!867906 (isStrictlySorted!966 (t!51209 l!1292)))))

(assert (= (and d!162509 (not res!1065653)) b!1557989))

(assert (= (and b!1557989 res!1065654) b!1557990))

