; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132824 () Bool)

(assert start!132824)

(declare-fun res!1064408 () Bool)

(declare-fun e!866285 () Bool)

(assert (=> start!132824 (=> (not res!1064408) (not e!866285))))

(declare-datatypes ((B!2304 0))(
  ( (B!2305 (val!19238 Int)) )
))
(declare-datatypes ((tuple2!24992 0))(
  ( (tuple2!24993 (_1!12506 (_ BitVec 64)) (_2!12506 B!2304)) )
))
(declare-datatypes ((List!36418 0))(
  ( (Nil!36415) (Cons!36414 (h!37861 tuple2!24992) (t!51146 List!36418)) )
))
(declare-fun l!1177 () List!36418)

(declare-fun isStrictlySorted!925 (List!36418) Bool)

(assert (=> start!132824 (= res!1064408 (isStrictlySorted!925 l!1177))))

(assert (=> start!132824 e!866285))

(declare-fun e!866286 () Bool)

(assert (=> start!132824 e!866286))

(assert (=> start!132824 true))

(declare-fun tp_is_empty!38315 () Bool)

(assert (=> start!132824 tp_is_empty!38315))

(declare-fun b!1555496 () Bool)

(declare-fun res!1064409 () Bool)

(assert (=> b!1555496 (=> (not res!1064409) (not e!866285))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555496 (= res!1064409 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36414 l!1177)) (= (_1!12506 (h!37861 l!1177)) otherKey!50))))))

(declare-fun newValue!105 () B!2304)

(declare-fun b!1555497 () Bool)

(declare-fun insertStrictlySorted!539 (List!36418 (_ BitVec 64) B!2304) List!36418)

(assert (=> b!1555497 (= e!866285 (not (isStrictlySorted!925 (insertStrictlySorted!539 l!1177 newKey!105 newValue!105))))))

(declare-fun b!1555498 () Bool)

(declare-fun tp!112315 () Bool)

(assert (=> b!1555498 (= e!866286 (and tp_is_empty!38315 tp!112315))))

(assert (= (and start!132824 res!1064408) b!1555496))

(assert (= (and b!1555496 res!1064409) b!1555497))

(assert (= (and start!132824 (is-Cons!36414 l!1177)) b!1555498))

(declare-fun m!1433505 () Bool)

(assert (=> start!132824 m!1433505))

(declare-fun m!1433507 () Bool)

(assert (=> b!1555497 m!1433507))

(assert (=> b!1555497 m!1433507))

(declare-fun m!1433509 () Bool)

(assert (=> b!1555497 m!1433509))

(push 1)

(assert (not start!132824))

(assert (not b!1555497))

(assert (not b!1555498))

(assert tp_is_empty!38315)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161911 () Bool)

(declare-fun res!1064424 () Bool)

(declare-fun e!866301 () Bool)

(assert (=> d!161911 (=> res!1064424 e!866301)))

(assert (=> d!161911 (= res!1064424 (or (is-Nil!36415 l!1177) (is-Nil!36415 (t!51146 l!1177))))))

(assert (=> d!161911 (= (isStrictlySorted!925 l!1177) e!866301)))

(declare-fun b!1555513 () Bool)

(declare-fun e!866302 () Bool)

(assert (=> b!1555513 (= e!866301 e!866302)))

(declare-fun res!1064425 () Bool)

(assert (=> b!1555513 (=> (not res!1064425) (not e!866302))))

(assert (=> b!1555513 (= res!1064425 (bvslt (_1!12506 (h!37861 l!1177)) (_1!12506 (h!37861 (t!51146 l!1177)))))))

(declare-fun b!1555514 () Bool)

(assert (=> b!1555514 (= e!866302 (isStrictlySorted!925 (t!51146 l!1177)))))

(assert (= (and d!161911 (not res!1064424)) b!1555513))

(assert (= (and b!1555513 res!1064425) b!1555514))

(declare-fun m!1433515 () Bool)

(assert (=> b!1555514 m!1433515))

(assert (=> start!132824 d!161911))

(declare-fun d!161919 () Bool)

(declare-fun res!1064428 () Bool)

(declare-fun e!866305 () Bool)

(assert (=> d!161919 (=> res!1064428 e!866305)))

(assert (=> d!161919 (= res!1064428 (or (is-Nil!36415 (insertStrictlySorted!539 l!1177 newKey!105 newValue!105)) (is-Nil!36415 (t!51146 (insertStrictlySorted!539 l!1177 newKey!105 newValue!105)))))))

(assert (=> d!161919 (= (isStrictlySorted!925 (insertStrictlySorted!539 l!1177 newKey!105 newValue!105)) e!866305)))

(declare-fun b!1555517 () Bool)

(declare-fun e!866306 () Bool)

(assert (=> b!1555517 (= e!866305 e!866306)))

(declare-fun res!1064429 () Bool)

(assert (=> b!1555517 (=> (not res!1064429) (not e!866306))))

(assert (=> b!1555517 (= res!1064429 (bvslt (_1!12506 (h!37861 (insertStrictlySorted!539 l!1177 newKey!105 newValue!105))) (_1!12506 (h!37861 (t!51146 (insertStrictlySorted!539 l!1177 newKey!105 newValue!105))))))))

(declare-fun b!1555518 () Bool)

(assert (=> b!1555518 (= e!866306 (isStrictlySorted!925 (t!51146 (insertStrictlySorted!539 l!1177 newKey!105 newValue!105))))))

(assert (= (and d!161919 (not res!1064428)) b!1555517))

(assert (= (and b!1555517 res!1064429) b!1555518))

(declare-fun m!1433517 () Bool)

(assert (=> b!1555518 m!1433517))

(assert (=> b!1555497 d!161919))

(declare-fun d!161921 () Bool)

(declare-fun e!866350 () Bool)

(assert (=> d!161921 e!866350))

(declare-fun res!1064448 () Bool)

(assert (=> d!161921 (=> (not res!1064448) (not e!866350))))

(declare-fun lt!670255 () List!36418)

(assert (=> d!161921 (= res!1064448 (isStrictlySorted!925 lt!670255))))

(declare-fun e!866348 () List!36418)

(assert (=> d!161921 (= lt!670255 e!866348)))

(declare-fun c!143596 () Bool)

(assert (=> d!161921 (= c!143596 (and (is-Cons!36414 l!1177) (bvslt (_1!12506 (h!37861 l!1177)) newKey!105)))))

(assert (=> d!161921 (isStrictlySorted!925 l!1177)))

(assert (=> d!161921 (= (insertStrictlySorted!539 l!1177 newKey!105 newValue!105) lt!670255)))

(declare-fun b!1555597 () Bool)

(declare-fun e!866349 () List!36418)

(declare-fun call!71546 () List!36418)

(assert (=> b!1555597 (= e!866349 call!71546)))

(declare-fun b!1555598 () Bool)

(declare-fun e!866351 () List!36418)

(assert (=> b!1555598 (= e!866348 e!866351)))

(declare-fun c!143598 () Bool)

(assert (=> b!1555598 (= c!143598 (and (is-Cons!36414 l!1177) (= (_1!12506 (h!37861 l!1177)) newKey!105)))))

(declare-fun b!1555599 () Bool)

(assert (=> b!1555599 (= e!866349 call!71546)))

(declare-fun bm!71542 () Bool)

(declare-fun call!71547 () List!36418)

(assert (=> bm!71542 (= call!71546 call!71547)))

(declare-fun bm!71543 () Bool)

(declare-fun call!71545 () List!36418)

(assert (=> bm!71543 (= call!71547 call!71545)))

(declare-fun b!1555600 () Bool)

(declare-fun contains!10184 (List!36418 tuple2!24992) Bool)

(assert (=> b!1555600 (= e!866350 (contains!10184 lt!670255 (tuple2!24993 newKey!105 newValue!105)))))

(declare-fun b!1555601 () Bool)

(declare-fun res!1064449 () Bool)

(assert (=> b!1555601 (=> (not res!1064449) (not e!866350))))

(declare-fun containsKey!796 (List!36418 (_ BitVec 64)) Bool)

(assert (=> b!1555601 (= res!1064449 (containsKey!796 lt!670255 newKey!105))))

(declare-fun b!1555602 () Bool)

(declare-fun c!143599 () Bool)

(assert (=> b!1555602 (= c!143599 (and (is-Cons!36414 l!1177) (bvsgt (_1!12506 (h!37861 l!1177)) newKey!105)))))

(assert (=> b!1555602 (= e!866351 e!866349)))

(declare-fun e!866352 () List!36418)

(declare-fun b!1555603 () Bool)

(assert (=> b!1555603 (= e!866352 (ite c!143598 (t!51146 l!1177) (ite c!143599 (Cons!36414 (h!37861 l!1177) (t!51146 l!1177)) Nil!36415)))))

(declare-fun b!1555604 () Bool)

(assert (=> b!1555604 (= e!866351 call!71547)))

(declare-fun b!1555605 () Bool)

(assert (=> b!1555605 (= e!866352 (insertStrictlySorted!539 (t!51146 l!1177) newKey!105 newValue!105))))

(declare-fun b!1555606 () Bool)

(assert (=> b!1555606 (= e!866348 call!71545)))

(declare-fun bm!71544 () Bool)

(declare-fun $colon$colon!964 (List!36418 tuple2!24992) List!36418)

(assert (=> bm!71544 (= call!71545 ($colon$colon!964 e!866352 (ite c!143596 (h!37861 l!1177) (tuple2!24993 newKey!105 newValue!105))))))

(declare-fun c!143597 () Bool)

(assert (=> bm!71544 (= c!143597 c!143596)))

(assert (= (and d!161921 c!143596) b!1555606))

(assert (= (and d!161921 (not c!143596)) b!1555598))

(assert (= (and b!1555598 c!143598) b!1555604))

(assert (= (and b!1555598 (not c!143598)) b!1555602))

(assert (= (and b!1555602 c!143599) b!1555599))

(assert (= (and b!1555602 (not c!143599)) b!1555597))

(assert (= (or b!1555599 b!1555597) bm!71542))

(assert (= (or b!1555604 bm!71542) bm!71543))

(assert (= (or b!1555606 bm!71543) bm!71544))

(assert (= (and bm!71544 c!143597) b!1555605))

(assert (= (and bm!71544 (not c!143597)) b!1555603))

(assert (= (and d!161921 res!1064448) b!1555601))

(assert (= (and b!1555601 res!1064449) b!1555600))

(declare-fun m!1433533 () Bool)

(assert (=> b!1555600 m!1433533))

(declare-fun m!1433535 () Bool)

(assert (=> b!1555605 m!1433535))

(declare-fun m!1433537 () Bool)

(assert (=> b!1555601 m!1433537))

(declare-fun m!1433539 () Bool)

(assert (=> d!161921 m!1433539))

(assert (=> d!161921 m!1433505))

(declare-fun m!1433541 () Bool)

(assert (=> bm!71544 m!1433541))

(assert (=> b!1555497 d!161921))

(declare-fun b!1555622 () Bool)

(declare-fun e!866361 () Bool)

(declare-fun tp!112321 () Bool)

(assert (=> b!1555622 (= e!866361 (and tp_is_empty!38315 tp!112321))))

(assert (=> b!1555498 (= tp!112315 e!866361)))

(assert (= (and b!1555498 (is-Cons!36414 (t!51146 l!1177))) b!1555622))

(push 1)

