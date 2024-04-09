; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132820 () Bool)

(assert start!132820)

(declare-fun res!1064397 () Bool)

(declare-fun e!866273 () Bool)

(assert (=> start!132820 (=> (not res!1064397) (not e!866273))))

(declare-datatypes ((B!2300 0))(
  ( (B!2301 (val!19236 Int)) )
))
(declare-datatypes ((tuple2!24988 0))(
  ( (tuple2!24989 (_1!12504 (_ BitVec 64)) (_2!12504 B!2300)) )
))
(declare-datatypes ((List!36416 0))(
  ( (Nil!36413) (Cons!36412 (h!37859 tuple2!24988) (t!51144 List!36416)) )
))
(declare-fun l!1177 () List!36416)

(declare-fun isStrictlySorted!923 (List!36416) Bool)

(assert (=> start!132820 (= res!1064397 (isStrictlySorted!923 l!1177))))

(assert (=> start!132820 e!866273))

(declare-fun e!866274 () Bool)

(assert (=> start!132820 e!866274))

(assert (=> start!132820 true))

(declare-fun tp_is_empty!38311 () Bool)

(assert (=> start!132820 tp_is_empty!38311))

(declare-fun b!1555478 () Bool)

(declare-fun res!1064396 () Bool)

(assert (=> b!1555478 (=> (not res!1064396) (not e!866273))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555478 (= res!1064396 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36412 l!1177)) (= (_1!12504 (h!37859 l!1177)) otherKey!50))))))

(declare-fun b!1555479 () Bool)

(declare-fun newValue!105 () B!2300)

(declare-fun insertStrictlySorted!537 (List!36416 (_ BitVec 64) B!2300) List!36416)

(assert (=> b!1555479 (= e!866273 (not (isStrictlySorted!923 (insertStrictlySorted!537 l!1177 newKey!105 newValue!105))))))

(declare-fun b!1555480 () Bool)

(declare-fun tp!112309 () Bool)

(assert (=> b!1555480 (= e!866274 (and tp_is_empty!38311 tp!112309))))

(assert (= (and start!132820 res!1064397) b!1555478))

(assert (= (and b!1555478 res!1064396) b!1555479))

(assert (= (and start!132820 (is-Cons!36412 l!1177)) b!1555480))

(declare-fun m!1433493 () Bool)

(assert (=> start!132820 m!1433493))

(declare-fun m!1433495 () Bool)

(assert (=> b!1555479 m!1433495))

(assert (=> b!1555479 m!1433495))

(declare-fun m!1433497 () Bool)

(assert (=> b!1555479 m!1433497))

(push 1)

(assert (not start!132820))

(assert (not b!1555479))

(assert (not b!1555480))

(assert tp_is_empty!38311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161913 () Bool)

(declare-fun res!1064430 () Bool)

(declare-fun e!866307 () Bool)

(assert (=> d!161913 (=> res!1064430 e!866307)))

(assert (=> d!161913 (= res!1064430 (or (is-Nil!36413 l!1177) (is-Nil!36413 (t!51144 l!1177))))))

(assert (=> d!161913 (= (isStrictlySorted!923 l!1177) e!866307)))

(declare-fun b!1555519 () Bool)

(declare-fun e!866308 () Bool)

(assert (=> b!1555519 (= e!866307 e!866308)))

(declare-fun res!1064431 () Bool)

(assert (=> b!1555519 (=> (not res!1064431) (not e!866308))))

(assert (=> b!1555519 (= res!1064431 (bvslt (_1!12504 (h!37859 l!1177)) (_1!12504 (h!37859 (t!51144 l!1177)))))))

(declare-fun b!1555520 () Bool)

(assert (=> b!1555520 (= e!866308 (isStrictlySorted!923 (t!51144 l!1177)))))

(assert (= (and d!161913 (not res!1064430)) b!1555519))

(assert (= (and b!1555519 res!1064431) b!1555520))

(declare-fun m!1433519 () Bool)

(assert (=> b!1555520 m!1433519))

(assert (=> start!132820 d!161913))

(declare-fun d!161923 () Bool)

(declare-fun res!1064432 () Bool)

(declare-fun e!866309 () Bool)

(assert (=> d!161923 (=> res!1064432 e!866309)))

(assert (=> d!161923 (= res!1064432 (or (is-Nil!36413 (insertStrictlySorted!537 l!1177 newKey!105 newValue!105)) (is-Nil!36413 (t!51144 (insertStrictlySorted!537 l!1177 newKey!105 newValue!105)))))))

(assert (=> d!161923 (= (isStrictlySorted!923 (insertStrictlySorted!537 l!1177 newKey!105 newValue!105)) e!866309)))

(declare-fun b!1555521 () Bool)

(declare-fun e!866310 () Bool)

(assert (=> b!1555521 (= e!866309 e!866310)))

(declare-fun res!1064433 () Bool)

(assert (=> b!1555521 (=> (not res!1064433) (not e!866310))))

(assert (=> b!1555521 (= res!1064433 (bvslt (_1!12504 (h!37859 (insertStrictlySorted!537 l!1177 newKey!105 newValue!105))) (_1!12504 (h!37859 (t!51144 (insertStrictlySorted!537 l!1177 newKey!105 newValue!105))))))))

(declare-fun b!1555522 () Bool)

(assert (=> b!1555522 (= e!866310 (isStrictlySorted!923 (t!51144 (insertStrictlySorted!537 l!1177 newKey!105 newValue!105))))))

(assert (= (and d!161923 (not res!1064432)) b!1555521))

(assert (= (and b!1555521 res!1064433) b!1555522))

(declare-fun m!1433521 () Bool)

(assert (=> b!1555522 m!1433521))

(assert (=> b!1555479 d!161923))

(declare-fun bm!71545 () Bool)

(declare-fun call!71550 () List!36416)

(declare-fun call!71549 () List!36416)

(assert (=> bm!71545 (= call!71550 call!71549)))

(declare-fun d!161925 () Bool)

(declare-fun e!866356 () Bool)

(assert (=> d!161925 e!866356))

(declare-fun res!1064451 () Bool)

(assert (=> d!161925 (=> (not res!1064451) (not e!866356))))

(declare-fun lt!670256 () List!36416)

(assert (=> d!161925 (= res!1064451 (isStrictlySorted!923 lt!670256))))

(declare-fun e!866359 () List!36416)

(assert (=> d!161925 (= lt!670256 e!866359)))

(declare-fun c!143600 () Bool)

(assert (=> d!161925 (= c!143600 (and (is-Cons!36412 l!1177) (bvslt (_1!12504 (h!37859 l!1177)) newKey!105)))))

(assert (=> d!161925 (isStrictlySorted!923 l!1177)))

(assert (=> d!161925 (= (insertStrictlySorted!537 l!1177 newKey!105 newValue!105) lt!670256)))

(declare-fun b!1555612 () Bool)

(declare-fun e!866358 () List!36416)

(declare-fun call!71548 () List!36416)

(assert (=> b!1555612 (= e!866358 call!71548)))

(declare-fun b!1555613 () Bool)

(declare-fun c!143602 () Bool)

(assert (=> b!1555613 (= c!143602 (and (is-Cons!36412 l!1177) (bvsgt (_1!12504 (h!37859 l!1177)) newKey!105)))))

(declare-fun e!866360 () List!36416)

(assert (=> b!1555613 (= e!866360 e!866358)))

(declare-fun bm!71546 () Bool)

(assert (=> bm!71546 (= call!71548 call!71550)))

(declare-fun b!1555614 () Bool)

(assert (=> b!1555614 (= e!866359 e!866360)))

(declare-fun c!143603 () Bool)

(assert (=> b!1555614 (= c!143603 (and (is-Cons!36412 l!1177) (= (_1!12504 (h!37859 l!1177)) newKey!105)))))

(declare-fun bm!71547 () Bool)

(declare-fun e!866357 () List!36416)

(declare-fun $colon$colon!963 (List!36416 tuple2!24988) List!36416)

(assert (=> bm!71547 (= call!71549 ($colon$colon!963 e!866357 (ite c!143600 (h!37859 l!1177) (tuple2!24989 newKey!105 newValue!105))))))

(declare-fun c!143601 () Bool)

(assert (=> bm!71547 (= c!143601 c!143600)))

(declare-fun b!1555615 () Bool)

(assert (=> b!1555615 (= e!866358 call!71548)))

(declare-fun b!1555616 () Bool)

(assert (=> b!1555616 (= e!866357 (insertStrictlySorted!537 (t!51144 l!1177) newKey!105 newValue!105))))

(declare-fun b!1555617 () Bool)

(declare-fun contains!10185 (List!36416 tuple2!24988) Bool)

(assert (=> b!1555617 (= e!866356 (contains!10185 lt!670256 (tuple2!24989 newKey!105 newValue!105)))))

(declare-fun b!1555618 () Bool)

(assert (=> b!1555618 (= e!866360 call!71550)))

(declare-fun b!1555619 () Bool)

(declare-fun res!1064450 () Bool)

(assert (=> b!1555619 (=> (not res!1064450) (not e!866356))))

(declare-fun containsKey!797 (List!36416 (_ BitVec 64)) Bool)

(assert (=> b!1555619 (= res!1064450 (containsKey!797 lt!670256 newKey!105))))

(declare-fun b!1555620 () Bool)

(assert (=> b!1555620 (= e!866359 call!71549)))

(declare-fun b!1555621 () Bool)

(assert (=> b!1555621 (= e!866357 (ite c!143603 (t!51144 l!1177) (ite c!143602 (Cons!36412 (h!37859 l!1177) (t!51144 l!1177)) Nil!36413)))))

(assert (= (and d!161925 c!143600) b!1555620))

(assert (= (and d!161925 (not c!143600)) b!1555614))

(assert (= (and b!1555614 c!143603) b!1555618))

(assert (= (and b!1555614 (not c!143603)) b!1555613))

(assert (= (and b!1555613 c!143602) b!1555615))

(assert (= (and b!1555613 (not c!143602)) b!1555612))

(assert (= (or b!1555615 b!1555612) bm!71546))

(assert (= (or b!1555618 bm!71546) bm!71545))

(assert (= (or b!1555620 bm!71545) bm!71547))

(assert (= (and bm!71547 c!143601) b!1555616))

(assert (= (and bm!71547 (not c!143601)) b!1555621))

(assert (= (and d!161925 res!1064451) b!1555619))

(assert (= (and b!1555619 res!1064450) b!1555617))

(declare-fun m!1433543 () Bool)

(assert (=> b!1555616 m!1433543))

(declare-fun m!1433545 () Bool)

(assert (=> b!1555619 m!1433545))

(declare-fun m!1433547 () Bool)

(assert (=> d!161925 m!1433547))

(assert (=> d!161925 m!1433493))

(declare-fun m!1433549 () Bool)

(assert (=> b!1555617 m!1433549))

(declare-fun m!1433551 () Bool)

(assert (=> bm!71547 m!1433551))

(assert (=> b!1555479 d!161925))

(declare-fun b!1555627 () Bool)

(declare-fun e!866364 () Bool)

(declare-fun tp!112324 () Bool)

(assert (=> b!1555627 (= e!866364 (and tp_is_empty!38311 tp!112324))))

(assert (=> b!1555480 (= tp!112309 e!866364)))

(assert (= (and b!1555480 (is-Cons!36412 (t!51144 l!1177))) b!1555627))

(push 1)

