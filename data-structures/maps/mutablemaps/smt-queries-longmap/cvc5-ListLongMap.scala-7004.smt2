; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88972 () Bool)

(assert start!88972)

(declare-fun b!1020334 () Bool)

(declare-fun e!574357 () Bool)

(declare-datatypes ((B!1730 0))(
  ( (B!1731 (val!11949 Int)) )
))
(declare-datatypes ((tuple2!15534 0))(
  ( (tuple2!15535 (_1!7777 (_ BitVec 64)) (_2!7777 B!1730)) )
))
(declare-datatypes ((List!21751 0))(
  ( (Nil!21748) (Cons!21747 (h!22945 tuple2!15534) (t!30768 List!21751)) )
))
(declare-fun l!1367 () List!21751)

(declare-fun lt!449830 () tuple2!15534)

(declare-fun contains!5942 (List!21751 tuple2!15534) Bool)

(assert (=> b!1020334 (= e!574357 (not (contains!5942 (t!30768 l!1367) lt!449830)))))

(declare-fun b!1020335 () Bool)

(declare-fun res!683976 () Bool)

(declare-fun e!574354 () Bool)

(assert (=> b!1020335 (=> (not res!683976) (not e!574354))))

(assert (=> b!1020335 (= res!683976 (and (is-Cons!21747 l!1367) (not (= (h!22945 l!1367) lt!449830))))))

(declare-fun b!1020336 () Bool)

(declare-fun e!574356 () Bool)

(declare-fun tp_is_empty!23797 () Bool)

(declare-fun tp!71255 () Bool)

(assert (=> b!1020336 (= e!574356 (and tp_is_empty!23797 tp!71255))))

(declare-fun b!1020338 () Bool)

(assert (=> b!1020338 (= e!574354 e!574357)))

(declare-fun res!683973 () Bool)

(assert (=> b!1020338 (=> res!683973 e!574357)))

(declare-fun isStrictlySorted!698 (List!21751) Bool)

(assert (=> b!1020338 (= res!683973 (not (isStrictlySorted!698 (t!30768 l!1367))))))

(declare-fun res!683975 () Bool)

(declare-fun e!574355 () Bool)

(assert (=> start!88972 (=> (not res!683975) (not e!574355))))

(assert (=> start!88972 (= res!683975 (isStrictlySorted!698 l!1367))))

(assert (=> start!88972 e!574355))

(assert (=> start!88972 e!574356))

(assert (=> start!88972 true))

(assert (=> start!88972 tp_is_empty!23797))

(declare-fun b!1020337 () Bool)

(assert (=> b!1020337 (= e!574355 e!574354)))

(declare-fun res!683974 () Bool)

(assert (=> b!1020337 (=> (not res!683974) (not e!574354))))

(assert (=> b!1020337 (= res!683974 (contains!5942 l!1367 lt!449830))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1730)

(assert (=> b!1020337 (= lt!449830 (tuple2!15535 key!393 value!188))))

(assert (= (and start!88972 res!683975) b!1020337))

(assert (= (and b!1020337 res!683974) b!1020335))

(assert (= (and b!1020335 res!683976) b!1020338))

(assert (= (and b!1020338 (not res!683973)) b!1020334))

(assert (= (and start!88972 (is-Cons!21747 l!1367)) b!1020336))

(declare-fun m!940435 () Bool)

(assert (=> b!1020334 m!940435))

(declare-fun m!940437 () Bool)

(assert (=> b!1020338 m!940437))

(declare-fun m!940439 () Bool)

(assert (=> start!88972 m!940439))

(declare-fun m!940441 () Bool)

(assert (=> b!1020337 m!940441))

(push 1)

(assert (not b!1020336))

(assert (not b!1020338))

(assert (not b!1020337))

(assert tp_is_empty!23797)

(assert (not b!1020334))

(assert (not start!88972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122304 () Bool)

(declare-fun res!684015 () Bool)

(declare-fun e!574396 () Bool)

(assert (=> d!122304 (=> res!684015 e!574396)))

(assert (=> d!122304 (= res!684015 (or (is-Nil!21748 l!1367) (is-Nil!21748 (t!30768 l!1367))))))

(assert (=> d!122304 (= (isStrictlySorted!698 l!1367) e!574396)))

(declare-fun b!1020383 () Bool)

(declare-fun e!574397 () Bool)

(assert (=> b!1020383 (= e!574396 e!574397)))

(declare-fun res!684016 () Bool)

(assert (=> b!1020383 (=> (not res!684016) (not e!574397))))

(assert (=> b!1020383 (= res!684016 (bvslt (_1!7777 (h!22945 l!1367)) (_1!7777 (h!22945 (t!30768 l!1367)))))))

(declare-fun b!1020384 () Bool)

(assert (=> b!1020384 (= e!574397 (isStrictlySorted!698 (t!30768 l!1367)))))

(assert (= (and d!122304 (not res!684015)) b!1020383))

(assert (= (and b!1020383 res!684016) b!1020384))

(assert (=> b!1020384 m!940437))

(assert (=> start!88972 d!122304))

(declare-fun d!122311 () Bool)

(declare-fun lt!449847 () Bool)

(declare-fun content!502 (List!21751) (Set tuple2!15534))

(assert (=> d!122311 (= lt!449847 (set.member lt!449830 (content!502 (t!30768 l!1367))))))

(declare-fun e!574424 () Bool)

(assert (=> d!122311 (= lt!449847 e!574424)))

(declare-fun res!684039 () Bool)

(assert (=> d!122311 (=> (not res!684039) (not e!574424))))

(assert (=> d!122311 (= res!684039 (is-Cons!21747 (t!30768 l!1367)))))

(assert (=> d!122311 (= (contains!5942 (t!30768 l!1367) lt!449830) lt!449847)))

(declare-fun b!1020412 () Bool)

(declare-fun e!574423 () Bool)

(assert (=> b!1020412 (= e!574424 e!574423)))

(declare-fun res!684040 () Bool)

(assert (=> b!1020412 (=> res!684040 e!574423)))

(assert (=> b!1020412 (= res!684040 (= (h!22945 (t!30768 l!1367)) lt!449830))))

(declare-fun b!1020413 () Bool)

(assert (=> b!1020413 (= e!574423 (contains!5942 (t!30768 (t!30768 l!1367)) lt!449830))))

(assert (= (and d!122311 res!684039) b!1020412))

(assert (= (and b!1020412 (not res!684040)) b!1020413))

(declare-fun m!940481 () Bool)

(assert (=> d!122311 m!940481))

(declare-fun m!940483 () Bool)

(assert (=> d!122311 m!940483))

(declare-fun m!940485 () Bool)

(assert (=> b!1020413 m!940485))

(assert (=> b!1020334 d!122311))

(declare-fun d!122321 () Bool)

(declare-fun lt!449848 () Bool)

(assert (=> d!122321 (= lt!449848 (set.member lt!449830 (content!502 l!1367)))))

(declare-fun e!574428 () Bool)

(assert (=> d!122321 (= lt!449848 e!574428)))

(declare-fun res!684043 () Bool)

(assert (=> d!122321 (=> (not res!684043) (not e!574428))))

(assert (=> d!122321 (= res!684043 (is-Cons!21747 l!1367))))

(assert (=> d!122321 (= (contains!5942 l!1367 lt!449830) lt!449848)))

(declare-fun b!1020416 () Bool)

(declare-fun e!574427 () Bool)

(assert (=> b!1020416 (= e!574428 e!574427)))

(declare-fun res!684044 () Bool)

(assert (=> b!1020416 (=> res!684044 e!574427)))

(assert (=> b!1020416 (= res!684044 (= (h!22945 l!1367) lt!449830))))

(declare-fun b!1020417 () Bool)

(assert (=> b!1020417 (= e!574427 (contains!5942 (t!30768 l!1367) lt!449830))))

(assert (= (and d!122321 res!684043) b!1020416))

(assert (= (and b!1020416 (not res!684044)) b!1020417))

(declare-fun m!940489 () Bool)

(assert (=> d!122321 m!940489))

(declare-fun m!940491 () Bool)

(assert (=> d!122321 m!940491))

(assert (=> b!1020417 m!940435))

(assert (=> b!1020337 d!122321))

(declare-fun d!122325 () Bool)

(declare-fun res!684047 () Bool)

(declare-fun e!574431 () Bool)

(assert (=> d!122325 (=> res!684047 e!574431)))

(assert (=> d!122325 (= res!684047 (or (is-Nil!21748 (t!30768 l!1367)) (is-Nil!21748 (t!30768 (t!30768 l!1367)))))))

(assert (=> d!122325 (= (isStrictlySorted!698 (t!30768 l!1367)) e!574431)))

(declare-fun b!1020420 () Bool)

(declare-fun e!574432 () Bool)

(assert (=> b!1020420 (= e!574431 e!574432)))

(declare-fun res!684048 () Bool)

(assert (=> b!1020420 (=> (not res!684048) (not e!574432))))

(assert (=> b!1020420 (= res!684048 (bvslt (_1!7777 (h!22945 (t!30768 l!1367))) (_1!7777 (h!22945 (t!30768 (t!30768 l!1367))))))))

(declare-fun b!1020421 () Bool)

(assert (=> b!1020421 (= e!574432 (isStrictlySorted!698 (t!30768 (t!30768 l!1367))))))

(assert (= (and d!122325 (not res!684047)) b!1020420))

(assert (= (and b!1020420 res!684048) b!1020421))

(declare-fun m!940493 () Bool)

(assert (=> b!1020421 m!940493))

(assert (=> b!1020338 d!122325))

(declare-fun b!1020431 () Bool)

(declare-fun e!574438 () Bool)

(declare-fun tp!71270 () Bool)

(assert (=> b!1020431 (= e!574438 (and tp_is_empty!23797 tp!71270))))

(assert (=> b!1020336 (= tp!71255 e!574438)))

(assert (= (and b!1020336 (is-Cons!21747 (t!30768 l!1367))) b!1020431))

(push 1)

