; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132822 () Bool)

(assert start!132822)

(declare-fun res!1064402 () Bool)

(declare-fun e!866280 () Bool)

(assert (=> start!132822 (=> (not res!1064402) (not e!866280))))

(declare-datatypes ((B!2302 0))(
  ( (B!2303 (val!19237 Int)) )
))
(declare-datatypes ((tuple2!24990 0))(
  ( (tuple2!24991 (_1!12505 (_ BitVec 64)) (_2!12505 B!2302)) )
))
(declare-datatypes ((List!36417 0))(
  ( (Nil!36414) (Cons!36413 (h!37860 tuple2!24990) (t!51145 List!36417)) )
))
(declare-fun l!1177 () List!36417)

(declare-fun isStrictlySorted!924 (List!36417) Bool)

(assert (=> start!132822 (= res!1064402 (isStrictlySorted!924 l!1177))))

(assert (=> start!132822 e!866280))

(declare-fun e!866279 () Bool)

(assert (=> start!132822 e!866279))

(assert (=> start!132822 true))

(declare-fun tp_is_empty!38313 () Bool)

(assert (=> start!132822 tp_is_empty!38313))

(declare-fun b!1555487 () Bool)

(declare-fun res!1064403 () Bool)

(assert (=> b!1555487 (=> (not res!1064403) (not e!866280))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1555487 (= res!1064403 (and (not (= newKey!105 otherKey!50)) (or (not ((_ is Cons!36413) l!1177)) (= (_1!12505 (h!37860 l!1177)) otherKey!50))))))

(declare-fun newValue!105 () B!2302)

(declare-fun b!1555488 () Bool)

(declare-fun insertStrictlySorted!538 (List!36417 (_ BitVec 64) B!2302) List!36417)

(assert (=> b!1555488 (= e!866280 (not (isStrictlySorted!924 (insertStrictlySorted!538 l!1177 newKey!105 newValue!105))))))

(declare-fun b!1555489 () Bool)

(declare-fun tp!112312 () Bool)

(assert (=> b!1555489 (= e!866279 (and tp_is_empty!38313 tp!112312))))

(assert (= (and start!132822 res!1064402) b!1555487))

(assert (= (and b!1555487 res!1064403) b!1555488))

(assert (= (and start!132822 ((_ is Cons!36413) l!1177)) b!1555489))

(declare-fun m!1433499 () Bool)

(assert (=> start!132822 m!1433499))

(declare-fun m!1433501 () Bool)

(assert (=> b!1555488 m!1433501))

(assert (=> b!1555488 m!1433501))

(declare-fun m!1433503 () Bool)

(assert (=> b!1555488 m!1433503))

(check-sat (not start!132822) (not b!1555488) (not b!1555489) tp_is_empty!38313)
(check-sat)
(get-model)

(declare-fun d!161909 () Bool)

(declare-fun res!1064414 () Bool)

(declare-fun e!866291 () Bool)

(assert (=> d!161909 (=> res!1064414 e!866291)))

(assert (=> d!161909 (= res!1064414 (or ((_ is Nil!36414) l!1177) ((_ is Nil!36414) (t!51145 l!1177))))))

(assert (=> d!161909 (= (isStrictlySorted!924 l!1177) e!866291)))

(declare-fun b!1555503 () Bool)

(declare-fun e!866292 () Bool)

(assert (=> b!1555503 (= e!866291 e!866292)))

(declare-fun res!1064415 () Bool)

(assert (=> b!1555503 (=> (not res!1064415) (not e!866292))))

(assert (=> b!1555503 (= res!1064415 (bvslt (_1!12505 (h!37860 l!1177)) (_1!12505 (h!37860 (t!51145 l!1177)))))))

(declare-fun b!1555504 () Bool)

(assert (=> b!1555504 (= e!866292 (isStrictlySorted!924 (t!51145 l!1177)))))

(assert (= (and d!161909 (not res!1064414)) b!1555503))

(assert (= (and b!1555503 res!1064415) b!1555504))

(declare-fun m!1433511 () Bool)

(assert (=> b!1555504 m!1433511))

(assert (=> start!132822 d!161909))

(declare-fun d!161915 () Bool)

(declare-fun res!1064416 () Bool)

(declare-fun e!866293 () Bool)

(assert (=> d!161915 (=> res!1064416 e!866293)))

(assert (=> d!161915 (= res!1064416 (or ((_ is Nil!36414) (insertStrictlySorted!538 l!1177 newKey!105 newValue!105)) ((_ is Nil!36414) (t!51145 (insertStrictlySorted!538 l!1177 newKey!105 newValue!105)))))))

(assert (=> d!161915 (= (isStrictlySorted!924 (insertStrictlySorted!538 l!1177 newKey!105 newValue!105)) e!866293)))

(declare-fun b!1555505 () Bool)

(declare-fun e!866294 () Bool)

(assert (=> b!1555505 (= e!866293 e!866294)))

(declare-fun res!1064417 () Bool)

(assert (=> b!1555505 (=> (not res!1064417) (not e!866294))))

(assert (=> b!1555505 (= res!1064417 (bvslt (_1!12505 (h!37860 (insertStrictlySorted!538 l!1177 newKey!105 newValue!105))) (_1!12505 (h!37860 (t!51145 (insertStrictlySorted!538 l!1177 newKey!105 newValue!105))))))))

(declare-fun b!1555506 () Bool)

(assert (=> b!1555506 (= e!866294 (isStrictlySorted!924 (t!51145 (insertStrictlySorted!538 l!1177 newKey!105 newValue!105))))))

(assert (= (and d!161915 (not res!1064416)) b!1555505))

(assert (= (and b!1555505 res!1064417) b!1555506))

(declare-fun m!1433513 () Bool)

(assert (=> b!1555506 m!1433513))

(assert (=> b!1555488 d!161915))

(declare-fun bm!71539 () Bool)

(declare-fun call!71543 () List!36417)

(declare-fun e!866344 () List!36417)

(declare-fun c!143594 () Bool)

(declare-fun $colon$colon!962 (List!36417 tuple2!24990) List!36417)

(assert (=> bm!71539 (= call!71543 ($colon$colon!962 e!866344 (ite c!143594 (h!37860 l!1177) (tuple2!24991 newKey!105 newValue!105))))))

(declare-fun c!143595 () Bool)

(assert (=> bm!71539 (= c!143595 c!143594)))

(declare-fun bm!71540 () Bool)

(declare-fun call!71544 () List!36417)

(assert (=> bm!71540 (= call!71544 call!71543)))

(declare-fun b!1555583 () Bool)

(declare-fun e!866345 () List!36417)

(assert (=> b!1555583 (= e!866345 call!71544)))

(declare-fun d!161917 () Bool)

(declare-fun e!866341 () Bool)

(assert (=> d!161917 e!866341))

(declare-fun res!1064447 () Bool)

(assert (=> d!161917 (=> (not res!1064447) (not e!866341))))

(declare-fun lt!670254 () List!36417)

(assert (=> d!161917 (= res!1064447 (isStrictlySorted!924 lt!670254))))

(declare-fun e!866343 () List!36417)

(assert (=> d!161917 (= lt!670254 e!866343)))

(assert (=> d!161917 (= c!143594 (and ((_ is Cons!36413) l!1177) (bvslt (_1!12505 (h!37860 l!1177)) newKey!105)))))

(assert (=> d!161917 (isStrictlySorted!924 l!1177)))

(assert (=> d!161917 (= (insertStrictlySorted!538 l!1177 newKey!105 newValue!105) lt!670254)))

(declare-fun b!1555584 () Bool)

(declare-fun c!143593 () Bool)

(declare-fun c!143592 () Bool)

(assert (=> b!1555584 (= e!866344 (ite c!143592 (t!51145 l!1177) (ite c!143593 (Cons!36413 (h!37860 l!1177) (t!51145 l!1177)) Nil!36414)))))

(declare-fun b!1555585 () Bool)

(assert (=> b!1555585 (= e!866343 call!71543)))

(declare-fun b!1555586 () Bool)

(declare-fun contains!10183 (List!36417 tuple2!24990) Bool)

(assert (=> b!1555586 (= e!866341 (contains!10183 lt!670254 (tuple2!24991 newKey!105 newValue!105)))))

(declare-fun b!1555587 () Bool)

(assert (=> b!1555587 (= e!866343 e!866345)))

(assert (=> b!1555587 (= c!143592 (and ((_ is Cons!36413) l!1177) (= (_1!12505 (h!37860 l!1177)) newKey!105)))))

(declare-fun b!1555588 () Bool)

(declare-fun e!866342 () List!36417)

(declare-fun call!71542 () List!36417)

(assert (=> b!1555588 (= e!866342 call!71542)))

(declare-fun b!1555589 () Bool)

(declare-fun res!1064446 () Bool)

(assert (=> b!1555589 (=> (not res!1064446) (not e!866341))))

(declare-fun containsKey!795 (List!36417 (_ BitVec 64)) Bool)

(assert (=> b!1555589 (= res!1064446 (containsKey!795 lt!670254 newKey!105))))

(declare-fun bm!71541 () Bool)

(assert (=> bm!71541 (= call!71542 call!71544)))

(declare-fun b!1555590 () Bool)

(assert (=> b!1555590 (= e!866342 call!71542)))

(declare-fun b!1555591 () Bool)

(assert (=> b!1555591 (= c!143593 (and ((_ is Cons!36413) l!1177) (bvsgt (_1!12505 (h!37860 l!1177)) newKey!105)))))

(assert (=> b!1555591 (= e!866345 e!866342)))

(declare-fun b!1555592 () Bool)

(assert (=> b!1555592 (= e!866344 (insertStrictlySorted!538 (t!51145 l!1177) newKey!105 newValue!105))))

(assert (= (and d!161917 c!143594) b!1555585))

(assert (= (and d!161917 (not c!143594)) b!1555587))

(assert (= (and b!1555587 c!143592) b!1555583))

(assert (= (and b!1555587 (not c!143592)) b!1555591))

(assert (= (and b!1555591 c!143593) b!1555588))

(assert (= (and b!1555591 (not c!143593)) b!1555590))

(assert (= (or b!1555588 b!1555590) bm!71541))

(assert (= (or b!1555583 bm!71541) bm!71540))

(assert (= (or b!1555585 bm!71540) bm!71539))

(assert (= (and bm!71539 c!143595) b!1555592))

(assert (= (and bm!71539 (not c!143595)) b!1555584))

(assert (= (and d!161917 res!1064447) b!1555589))

(assert (= (and b!1555589 res!1064446) b!1555586))

(declare-fun m!1433523 () Bool)

(assert (=> d!161917 m!1433523))

(assert (=> d!161917 m!1433499))

(declare-fun m!1433525 () Bool)

(assert (=> b!1555586 m!1433525))

(declare-fun m!1433527 () Bool)

(assert (=> b!1555589 m!1433527))

(declare-fun m!1433529 () Bool)

(assert (=> bm!71539 m!1433529))

(declare-fun m!1433531 () Bool)

(assert (=> b!1555592 m!1433531))

(assert (=> b!1555488 d!161917))

(declare-fun b!1555607 () Bool)

(declare-fun e!866353 () Bool)

(declare-fun tp!112318 () Bool)

(assert (=> b!1555607 (= e!866353 (and tp_is_empty!38313 tp!112318))))

(assert (=> b!1555489 (= tp!112312 e!866353)))

(assert (= (and b!1555489 ((_ is Cons!36413) (t!51145 l!1177))) b!1555607))

(check-sat (not d!161917) (not bm!71539) (not b!1555586) tp_is_empty!38313 (not b!1555589) (not b!1555506) (not b!1555607) (not b!1555592) (not b!1555504))
(check-sat)
