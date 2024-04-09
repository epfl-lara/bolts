; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106394 () Bool)

(assert start!106394)

(declare-fun b!1264980 () Bool)

(declare-fun res!842436 () Bool)

(declare-fun e!720394 () Bool)

(assert (=> b!1264980 (=> (not res!842436) (not e!720394))))

(declare-datatypes ((B!1956 0))(
  ( (B!1957 (val!16313 Int)) )
))
(declare-datatypes ((tuple2!21294 0))(
  ( (tuple2!21295 (_1!10657 (_ BitVec 64)) (_2!10657 B!1956)) )
))
(declare-datatypes ((List!28480 0))(
  ( (Nil!28477) (Cons!28476 (h!29685 tuple2!21294) (t!42008 List!28480)) )
))
(declare-fun l!706 () List!28480)

(declare-fun isStrictlySorted!779 (List!28480) Bool)

(assert (=> b!1264980 (= res!842436 (isStrictlySorted!779 (t!42008 l!706)))))

(declare-fun v1!26 () B!1956)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun b!1264981 () Bool)

(declare-fun insertStrictlySorted!461 (List!28480 (_ BitVec 64) B!1956) List!28480)

(assert (=> b!1264981 (= e!720394 (not (isStrictlySorted!779 (insertStrictlySorted!461 l!706 key1!31 v1!26))))))

(declare-fun removeStrictlySorted!155 (List!28480 (_ BitVec 64)) List!28480)

(assert (=> b!1264981 (= (removeStrictlySorted!155 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26) key1!31) (t!42008 l!706))))

(declare-datatypes ((Unit!42129 0))(
  ( (Unit!42130) )
))
(declare-fun lt!573947 () Unit!42129)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!9 (List!28480 (_ BitVec 64) B!1956) Unit!42129)

(assert (=> b!1264981 (= lt!573947 (lemmaInsertStrictlySortedThenRemoveIsSame!9 (t!42008 l!706) key1!31 v1!26))))

(declare-fun b!1264982 () Bool)

(declare-fun res!842437 () Bool)

(assert (=> b!1264982 (=> (not res!842437) (not e!720394))))

(assert (=> b!1264982 (= res!842437 (is-Cons!28476 l!706))))

(declare-fun b!1264983 () Bool)

(declare-fun res!842433 () Bool)

(assert (=> b!1264983 (=> (not res!842433) (not e!720394))))

(declare-fun containsKey!640 (List!28480 (_ BitVec 64)) Bool)

(assert (=> b!1264983 (= res!842433 (not (containsKey!640 (t!42008 l!706) key1!31)))))

(declare-fun res!842435 () Bool)

(assert (=> start!106394 (=> (not res!842435) (not e!720394))))

(assert (=> start!106394 (= res!842435 (isStrictlySorted!779 l!706))))

(assert (=> start!106394 e!720394))

(declare-fun e!720393 () Bool)

(assert (=> start!106394 e!720393))

(assert (=> start!106394 true))

(declare-fun tp_is_empty!32489 () Bool)

(assert (=> start!106394 tp_is_empty!32489))

(declare-fun b!1264984 () Bool)

(declare-fun res!842434 () Bool)

(assert (=> b!1264984 (=> (not res!842434) (not e!720394))))

(assert (=> b!1264984 (= res!842434 (not (containsKey!640 l!706 key1!31)))))

(declare-fun b!1264985 () Bool)

(declare-fun tp!96300 () Bool)

(assert (=> b!1264985 (= e!720393 (and tp_is_empty!32489 tp!96300))))

(assert (= (and start!106394 res!842435) b!1264984))

(assert (= (and b!1264984 res!842434) b!1264982))

(assert (= (and b!1264982 res!842437) b!1264980))

(assert (= (and b!1264980 res!842436) b!1264983))

(assert (= (and b!1264983 res!842433) b!1264981))

(assert (= (and start!106394 (is-Cons!28476 l!706)) b!1264985))

(declare-fun m!1165395 () Bool)

(assert (=> b!1264980 m!1165395))

(declare-fun m!1165397 () Bool)

(assert (=> b!1264983 m!1165397))

(declare-fun m!1165399 () Bool)

(assert (=> start!106394 m!1165399))

(declare-fun m!1165401 () Bool)

(assert (=> b!1264981 m!1165401))

(declare-fun m!1165403 () Bool)

(assert (=> b!1264981 m!1165403))

(declare-fun m!1165405 () Bool)

(assert (=> b!1264981 m!1165405))

(declare-fun m!1165407 () Bool)

(assert (=> b!1264981 m!1165407))

(assert (=> b!1264981 m!1165405))

(declare-fun m!1165409 () Bool)

(assert (=> b!1264981 m!1165409))

(assert (=> b!1264981 m!1165401))

(declare-fun m!1165411 () Bool)

(assert (=> b!1264984 m!1165411))

(push 1)

(assert (not b!1264983))

(assert (not b!1264981))

(assert (not start!106394))

(assert (not b!1264980))

(assert (not b!1264985))

(assert (not b!1264984))

(assert tp_is_empty!32489)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138765 () Bool)

(declare-fun res!842462 () Bool)

(declare-fun e!720419 () Bool)

(assert (=> d!138765 (=> res!842462 e!720419)))

(assert (=> d!138765 (= res!842462 (or (is-Nil!28477 (t!42008 l!706)) (is-Nil!28477 (t!42008 (t!42008 l!706)))))))

(assert (=> d!138765 (= (isStrictlySorted!779 (t!42008 l!706)) e!720419)))

(declare-fun b!1265010 () Bool)

(declare-fun e!720420 () Bool)

(assert (=> b!1265010 (= e!720419 e!720420)))

(declare-fun res!842463 () Bool)

(assert (=> b!1265010 (=> (not res!842463) (not e!720420))))

(assert (=> b!1265010 (= res!842463 (bvslt (_1!10657 (h!29685 (t!42008 l!706))) (_1!10657 (h!29685 (t!42008 (t!42008 l!706))))))))

(declare-fun b!1265011 () Bool)

(assert (=> b!1265011 (= e!720420 (isStrictlySorted!779 (t!42008 (t!42008 l!706))))))

(assert (= (and d!138765 (not res!842462)) b!1265010))

(assert (= (and b!1265010 res!842463) b!1265011))

(declare-fun m!1165417 () Bool)

(assert (=> b!1265011 m!1165417))

(assert (=> b!1264980 d!138765))

(declare-fun b!1265052 () Bool)

(declare-fun e!720450 () List!28480)

(assert (=> b!1265052 (= e!720450 (t!42008 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26)))))

(declare-fun b!1265053 () Bool)

(declare-fun e!720449 () List!28480)

(declare-fun $colon$colon!636 (List!28480 tuple2!21294) List!28480)

(assert (=> b!1265053 (= e!720449 ($colon$colon!636 (removeStrictlySorted!155 (t!42008 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26)) key1!31) (h!29685 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26))))))

(declare-fun b!1265054 () Bool)

(assert (=> b!1265054 (= e!720450 e!720449)))

(declare-fun c!123173 () Bool)

(assert (=> b!1265054 (= c!123173 (and (is-Cons!28476 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26)) (not (= (_1!10657 (h!29685 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26))) key1!31))))))

(declare-fun b!1265055 () Bool)

(declare-fun e!720451 () Bool)

(declare-fun lt!573954 () List!28480)

(assert (=> b!1265055 (= e!720451 (not (containsKey!640 lt!573954 key1!31)))))

(declare-fun b!1265056 () Bool)

(assert (=> b!1265056 (= e!720449 Nil!28477)))

(declare-fun d!138771 () Bool)

(assert (=> d!138771 e!720451))

(declare-fun res!842480 () Bool)

(assert (=> d!138771 (=> (not res!842480) (not e!720451))))

(assert (=> d!138771 (= res!842480 (isStrictlySorted!779 lt!573954))))

(assert (=> d!138771 (= lt!573954 e!720450)))

(declare-fun c!123174 () Bool)

(assert (=> d!138771 (= c!123174 (and (is-Cons!28476 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26)) (= (_1!10657 (h!29685 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26))) key1!31)))))

(assert (=> d!138771 (isStrictlySorted!779 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26))))

(assert (=> d!138771 (= (removeStrictlySorted!155 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26) key1!31) lt!573954)))

(assert (= (and d!138771 c!123174) b!1265052))

(assert (= (and d!138771 (not c!123174)) b!1265054))

(assert (= (and b!1265054 c!123173) b!1265053))

(assert (= (and b!1265054 (not c!123173)) b!1265056))

(assert (= (and d!138771 res!842480) b!1265055))

(declare-fun m!1165423 () Bool)

(assert (=> b!1265053 m!1165423))

(assert (=> b!1265053 m!1165423))

(declare-fun m!1165425 () Bool)

(assert (=> b!1265053 m!1165425))

(declare-fun m!1165427 () Bool)

(assert (=> b!1265055 m!1165427))

(declare-fun m!1165429 () Bool)

(assert (=> d!138771 m!1165429))

(assert (=> d!138771 m!1165405))

(declare-fun m!1165431 () Bool)

(assert (=> d!138771 m!1165431))

(assert (=> b!1264981 d!138771))

(declare-fun b!1265127 () Bool)

(declare-fun e!720491 () List!28480)

(declare-fun e!720489 () List!28480)

(assert (=> b!1265127 (= e!720491 e!720489)))

(declare-fun c!123205 () Bool)

(assert (=> b!1265127 (= c!123205 (and (is-Cons!28476 l!706) (= (_1!10657 (h!29685 l!706)) key1!31)))))

(declare-fun b!1265128 () Bool)

(declare-fun e!720488 () List!28480)

(declare-fun c!123206 () Bool)

(assert (=> b!1265128 (= e!720488 (ite c!123205 (t!42008 l!706) (ite c!123206 (Cons!28476 (h!29685 l!706) (t!42008 l!706)) Nil!28477)))))

(declare-fun b!1265129 () Bool)

(assert (=> b!1265129 (= e!720488 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26))))

(declare-fun bm!62371 () Bool)

(declare-fun c!123203 () Bool)

(declare-fun call!62374 () List!28480)

(assert (=> bm!62371 (= call!62374 ($colon$colon!636 e!720488 (ite c!123203 (h!29685 l!706) (tuple2!21295 key1!31 v1!26))))))

(declare-fun c!123204 () Bool)

(assert (=> bm!62371 (= c!123204 c!123203)))

(declare-fun e!720490 () Bool)

(declare-fun lt!573963 () List!28480)

(declare-fun b!1265130 () Bool)

(declare-fun contains!7652 (List!28480 tuple2!21294) Bool)

(assert (=> b!1265130 (= e!720490 (contains!7652 lt!573963 (tuple2!21295 key1!31 v1!26)))))

(declare-fun b!1265131 () Bool)

(declare-fun e!720492 () List!28480)

(declare-fun call!62375 () List!28480)

(assert (=> b!1265131 (= e!720492 call!62375)))

(declare-fun d!138783 () Bool)

(assert (=> d!138783 e!720490))

(declare-fun res!842496 () Bool)

(assert (=> d!138783 (=> (not res!842496) (not e!720490))))

(assert (=> d!138783 (= res!842496 (isStrictlySorted!779 lt!573963))))

(assert (=> d!138783 (= lt!573963 e!720491)))

(assert (=> d!138783 (= c!123203 (and (is-Cons!28476 l!706) (bvslt (_1!10657 (h!29685 l!706)) key1!31)))))

(assert (=> d!138783 (isStrictlySorted!779 l!706)))

(assert (=> d!138783 (= (insertStrictlySorted!461 l!706 key1!31 v1!26) lt!573963)))

(declare-fun b!1265132 () Bool)

(assert (=> b!1265132 (= c!123206 (and (is-Cons!28476 l!706) (bvsgt (_1!10657 (h!29685 l!706)) key1!31)))))

(assert (=> b!1265132 (= e!720489 e!720492)))

(declare-fun b!1265133 () Bool)

(assert (=> b!1265133 (= e!720492 call!62375)))

(declare-fun b!1265134 () Bool)

(declare-fun res!842495 () Bool)

(assert (=> b!1265134 (=> (not res!842495) (not e!720490))))

(assert (=> b!1265134 (= res!842495 (containsKey!640 lt!573963 key1!31))))

(declare-fun bm!62372 () Bool)

(declare-fun call!62376 () List!28480)

(assert (=> bm!62372 (= call!62376 call!62374)))

(declare-fun b!1265135 () Bool)

(assert (=> b!1265135 (= e!720491 call!62374)))

(declare-fun bm!62373 () Bool)

(assert (=> bm!62373 (= call!62375 call!62376)))

(declare-fun b!1265136 () Bool)

(assert (=> b!1265136 (= e!720489 call!62376)))

(assert (= (and d!138783 c!123203) b!1265135))

(assert (= (and d!138783 (not c!123203)) b!1265127))

(assert (= (and b!1265127 c!123205) b!1265136))

(assert (= (and b!1265127 (not c!123205)) b!1265132))

(assert (= (and b!1265132 c!123206) b!1265131))

(assert (= (and b!1265132 (not c!123206)) b!1265133))

(assert (= (or b!1265131 b!1265133) bm!62373))

(assert (= (or b!1265136 bm!62373) bm!62372))

(assert (= (or b!1265135 bm!62372) bm!62371))

(assert (= (and bm!62371 c!123204) b!1265129))

(assert (= (and bm!62371 (not c!123204)) b!1265128))

(assert (= (and d!138783 res!842496) b!1265134))

(assert (= (and b!1265134 res!842495) b!1265130))

(declare-fun m!1165453 () Bool)

(assert (=> d!138783 m!1165453))

(assert (=> d!138783 m!1165399))

(assert (=> b!1265129 m!1165405))

(declare-fun m!1165455 () Bool)

(assert (=> b!1265134 m!1165455))

(declare-fun m!1165457 () Bool)

(assert (=> bm!62371 m!1165457))

(declare-fun m!1165459 () Bool)

(assert (=> b!1265130 m!1165459))

(assert (=> b!1264981 d!138783))

(declare-fun d!138789 () Bool)

(assert (=> d!138789 (= (removeStrictlySorted!155 (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26) key1!31) (t!42008 l!706))))

(declare-fun lt!573970 () Unit!42129)

(declare-fun choose!1894 (List!28480 (_ BitVec 64) B!1956) Unit!42129)

(assert (=> d!138789 (= lt!573970 (choose!1894 (t!42008 l!706) key1!31 v1!26))))

(assert (=> d!138789 (isStrictlySorted!779 (t!42008 l!706))))

(assert (=> d!138789 (= (lemmaInsertStrictlySortedThenRemoveIsSame!9 (t!42008 l!706) key1!31 v1!26) lt!573970)))

(declare-fun bs!35803 () Bool)

(assert (= bs!35803 d!138789))

(assert (=> bs!35803 m!1165405))

(assert (=> bs!35803 m!1165405))

(assert (=> bs!35803 m!1165409))

(declare-fun m!1165477 () Bool)

(assert (=> bs!35803 m!1165477))

(assert (=> bs!35803 m!1165395))

(assert (=> b!1264981 d!138789))

(declare-fun b!1265157 () Bool)

(declare-fun e!720506 () List!28480)

(declare-fun e!720504 () List!28480)

(assert (=> b!1265157 (= e!720506 e!720504)))

(declare-fun c!123217 () Bool)

(assert (=> b!1265157 (= c!123217 (and (is-Cons!28476 (t!42008 l!706)) (= (_1!10657 (h!29685 (t!42008 l!706))) key1!31)))))

(declare-fun e!720503 () List!28480)

(declare-fun c!123218 () Bool)

(declare-fun b!1265158 () Bool)

(assert (=> b!1265158 (= e!720503 (ite c!123217 (t!42008 (t!42008 l!706)) (ite c!123218 (Cons!28476 (h!29685 (t!42008 l!706)) (t!42008 (t!42008 l!706))) Nil!28477)))))

(declare-fun b!1265159 () Bool)

(assert (=> b!1265159 (= e!720503 (insertStrictlySorted!461 (t!42008 (t!42008 l!706)) key1!31 v1!26))))

(declare-fun c!123215 () Bool)

(declare-fun call!62383 () List!28480)

(declare-fun bm!62380 () Bool)

(assert (=> bm!62380 (= call!62383 ($colon$colon!636 e!720503 (ite c!123215 (h!29685 (t!42008 l!706)) (tuple2!21295 key1!31 v1!26))))))

(declare-fun c!123216 () Bool)

(assert (=> bm!62380 (= c!123216 c!123215)))

(declare-fun b!1265160 () Bool)

(declare-fun lt!573974 () List!28480)

(declare-fun e!720505 () Bool)

(assert (=> b!1265160 (= e!720505 (contains!7652 lt!573974 (tuple2!21295 key1!31 v1!26)))))

(declare-fun b!1265161 () Bool)

(declare-fun e!720507 () List!28480)

(declare-fun call!62384 () List!28480)

(assert (=> b!1265161 (= e!720507 call!62384)))

(declare-fun d!138795 () Bool)

(assert (=> d!138795 e!720505))

(declare-fun res!842502 () Bool)

(assert (=> d!138795 (=> (not res!842502) (not e!720505))))

(assert (=> d!138795 (= res!842502 (isStrictlySorted!779 lt!573974))))

(assert (=> d!138795 (= lt!573974 e!720506)))

(assert (=> d!138795 (= c!123215 (and (is-Cons!28476 (t!42008 l!706)) (bvslt (_1!10657 (h!29685 (t!42008 l!706))) key1!31)))))

(assert (=> d!138795 (isStrictlySorted!779 (t!42008 l!706))))

(assert (=> d!138795 (= (insertStrictlySorted!461 (t!42008 l!706) key1!31 v1!26) lt!573974)))

(declare-fun b!1265162 () Bool)

(assert (=> b!1265162 (= c!123218 (and (is-Cons!28476 (t!42008 l!706)) (bvsgt (_1!10657 (h!29685 (t!42008 l!706))) key1!31)))))

(assert (=> b!1265162 (= e!720504 e!720507)))

(declare-fun b!1265163 () Bool)

(assert (=> b!1265163 (= e!720507 call!62384)))

(declare-fun b!1265164 () Bool)

(declare-fun res!842501 () Bool)

(assert (=> b!1265164 (=> (not res!842501) (not e!720505))))

(assert (=> b!1265164 (= res!842501 (containsKey!640 lt!573974 key1!31))))

(declare-fun bm!62381 () Bool)

(declare-fun call!62385 () List!28480)

(assert (=> bm!62381 (= call!62385 call!62383)))

