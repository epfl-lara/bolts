; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88800 () Bool)

(assert start!88800)

(declare-fun b!1019366 () Bool)

(declare-fun e!573698 () Bool)

(declare-fun tp_is_empty!23759 () Bool)

(declare-fun tp!71156 () Bool)

(assert (=> b!1019366 (= e!573698 (and tp_is_empty!23759 tp!71156))))

(declare-fun b!1019367 () Bool)

(declare-fun res!683483 () Bool)

(declare-fun e!573699 () Bool)

(assert (=> b!1019367 (=> (not res!683483) (not e!573699))))

(declare-datatypes ((B!1692 0))(
  ( (B!1693 (val!11930 Int)) )
))
(declare-datatypes ((tuple2!15496 0))(
  ( (tuple2!15497 (_1!7758 (_ BitVec 64)) (_2!7758 B!1692)) )
))
(declare-datatypes ((List!21732 0))(
  ( (Nil!21729) (Cons!21728 (h!22926 tuple2!15496) (t!30744 List!21732)) )
))
(declare-fun l!996 () List!21732)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!544 (List!21732 (_ BitVec 64)) Bool)

(assert (=> b!1019367 (= res!683483 (containsKey!544 (t!30744 l!996) key!261))))

(declare-fun b!1019368 () Bool)

(declare-fun res!683480 () Bool)

(assert (=> b!1019368 (=> (not res!683480) (not e!573699))))

(declare-fun isStrictlySorted!679 (List!21732) Bool)

(assert (=> b!1019368 (= res!683480 (isStrictlySorted!679 (t!30744 l!996)))))

(declare-fun b!1019369 () Bool)

(declare-fun res!683484 () Bool)

(declare-fun e!573700 () Bool)

(assert (=> b!1019369 (=> (not res!683484) (not e!573700))))

(assert (=> b!1019369 (= res!683484 (containsKey!544 l!996 key!261))))

(declare-fun b!1019370 () Bool)

(assert (=> b!1019370 (= e!573700 e!573699)))

(declare-fun res!683482 () Bool)

(assert (=> b!1019370 (=> (not res!683482) (not e!573699))))

(assert (=> b!1019370 (= res!683482 (and (is-Cons!21728 l!996) (bvslt (_1!7758 (h!22926 l!996)) key!261)))))

(declare-fun value!172 () B!1692)

(declare-fun lt!449655 () List!21732)

(declare-fun insertStrictlySorted!361 (List!21732 (_ BitVec 64) B!1692) List!21732)

(assert (=> b!1019370 (= lt!449655 (insertStrictlySorted!361 l!996 key!261 value!172))))

(declare-fun b!1019371 () Bool)

(declare-fun length!46 (List!21732) Int)

(assert (=> b!1019371 (= e!573699 (not (= (length!46 lt!449655) (length!46 l!996))))))

(assert (=> b!1019371 (= (length!46 (insertStrictlySorted!361 (t!30744 l!996) key!261 value!172)) (length!46 (t!30744 l!996)))))

(declare-datatypes ((Unit!33256 0))(
  ( (Unit!33257) )
))
(declare-fun lt!449654 () Unit!33256)

(declare-fun lemmaAddExistingKeyPreservesSize!6 (List!21732 (_ BitVec 64) B!1692) Unit!33256)

(assert (=> b!1019371 (= lt!449654 (lemmaAddExistingKeyPreservesSize!6 (t!30744 l!996) key!261 value!172))))

(declare-fun res!683481 () Bool)

(assert (=> start!88800 (=> (not res!683481) (not e!573700))))

(assert (=> start!88800 (= res!683481 (isStrictlySorted!679 l!996))))

(assert (=> start!88800 e!573700))

(assert (=> start!88800 e!573698))

(assert (=> start!88800 true))

(assert (=> start!88800 tp_is_empty!23759))

(assert (= (and start!88800 res!683481) b!1019369))

(assert (= (and b!1019369 res!683484) b!1019370))

(assert (= (and b!1019370 res!683482) b!1019368))

(assert (= (and b!1019368 res!683480) b!1019367))

(assert (= (and b!1019367 res!683483) b!1019371))

(assert (= (and start!88800 (is-Cons!21728 l!996)) b!1019366))

(declare-fun m!939859 () Bool)

(assert (=> b!1019368 m!939859))

(declare-fun m!939861 () Bool)

(assert (=> b!1019367 m!939861))

(declare-fun m!939863 () Bool)

(assert (=> b!1019369 m!939863))

(declare-fun m!939865 () Bool)

(assert (=> b!1019370 m!939865))

(declare-fun m!939867 () Bool)

(assert (=> start!88800 m!939867))

(declare-fun m!939869 () Bool)

(assert (=> b!1019371 m!939869))

(declare-fun m!939871 () Bool)

(assert (=> b!1019371 m!939871))

(declare-fun m!939873 () Bool)

(assert (=> b!1019371 m!939873))

(declare-fun m!939875 () Bool)

(assert (=> b!1019371 m!939875))

(declare-fun m!939877 () Bool)

(assert (=> b!1019371 m!939877))

(assert (=> b!1019371 m!939869))

(declare-fun m!939879 () Bool)

(assert (=> b!1019371 m!939879))

(push 1)

(assert (not b!1019367))

(assert (not b!1019370))

(assert (not b!1019366))

(assert (not start!88800))

(assert (not b!1019368))

(assert (not b!1019371))

(assert (not b!1019369))

(assert tp_is_empty!23759)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122023 () Bool)

(declare-fun res!683501 () Bool)

(declare-fun e!573735 () Bool)

(assert (=> d!122023 (=> res!683501 e!573735)))

(assert (=> d!122023 (= res!683501 (and (is-Cons!21728 (t!30744 l!996)) (= (_1!7758 (h!22926 (t!30744 l!996))) key!261)))))

(assert (=> d!122023 (= (containsKey!544 (t!30744 l!996) key!261) e!573735)))

(declare-fun b!1019436 () Bool)

(declare-fun e!573736 () Bool)

(assert (=> b!1019436 (= e!573735 e!573736)))

(declare-fun res!683502 () Bool)

(assert (=> b!1019436 (=> (not res!683502) (not e!573736))))

(assert (=> b!1019436 (= res!683502 (and (or (not (is-Cons!21728 (t!30744 l!996))) (bvsle (_1!7758 (h!22926 (t!30744 l!996))) key!261)) (is-Cons!21728 (t!30744 l!996)) (bvslt (_1!7758 (h!22926 (t!30744 l!996))) key!261)))))

(declare-fun b!1019437 () Bool)

(assert (=> b!1019437 (= e!573736 (containsKey!544 (t!30744 (t!30744 l!996)) key!261))))

(assert (= (and d!122023 (not res!683501)) b!1019436))

(assert (= (and b!1019436 res!683502) b!1019437))

(declare-fun m!939889 () Bool)

(assert (=> b!1019437 m!939889))

(assert (=> b!1019367 d!122023))

(declare-fun d!122027 () Bool)

(declare-fun res!683513 () Bool)

(declare-fun e!573747 () Bool)

(assert (=> d!122027 (=> res!683513 e!573747)))

(assert (=> d!122027 (= res!683513 (or (is-Nil!21729 (t!30744 l!996)) (is-Nil!21729 (t!30744 (t!30744 l!996)))))))

(assert (=> d!122027 (= (isStrictlySorted!679 (t!30744 l!996)) e!573747)))

(declare-fun b!1019448 () Bool)

(declare-fun e!573748 () Bool)

(assert (=> b!1019448 (= e!573747 e!573748)))

(declare-fun res!683514 () Bool)

(assert (=> b!1019448 (=> (not res!683514) (not e!573748))))

(assert (=> b!1019448 (= res!683514 (bvslt (_1!7758 (h!22926 (t!30744 l!996))) (_1!7758 (h!22926 (t!30744 (t!30744 l!996))))))))

(declare-fun b!1019449 () Bool)

(assert (=> b!1019449 (= e!573748 (isStrictlySorted!679 (t!30744 (t!30744 l!996))))))

(assert (= (and d!122027 (not res!683513)) b!1019448))

(assert (= (and b!1019448 res!683514) b!1019449))

(declare-fun m!939909 () Bool)

(assert (=> b!1019449 m!939909))

(assert (=> b!1019368 d!122027))

(declare-fun d!122039 () Bool)

(declare-fun res!683515 () Bool)

(declare-fun e!573749 () Bool)

(assert (=> d!122039 (=> res!683515 e!573749)))

(assert (=> d!122039 (= res!683515 (and (is-Cons!21728 l!996) (= (_1!7758 (h!22926 l!996)) key!261)))))

(assert (=> d!122039 (= (containsKey!544 l!996 key!261) e!573749)))

(declare-fun b!1019450 () Bool)

(declare-fun e!573750 () Bool)

(assert (=> b!1019450 (= e!573749 e!573750)))

(declare-fun res!683516 () Bool)

(assert (=> b!1019450 (=> (not res!683516) (not e!573750))))

(assert (=> b!1019450 (= res!683516 (and (or (not (is-Cons!21728 l!996)) (bvsle (_1!7758 (h!22926 l!996)) key!261)) (is-Cons!21728 l!996) (bvslt (_1!7758 (h!22926 l!996)) key!261)))))

(declare-fun b!1019451 () Bool)

(assert (=> b!1019451 (= e!573750 (containsKey!544 (t!30744 l!996) key!261))))

(assert (= (and d!122039 (not res!683515)) b!1019450))

(assert (= (and b!1019450 res!683516) b!1019451))

(assert (=> b!1019451 m!939861))

(assert (=> b!1019369 d!122039))

(declare-fun b!1019528 () Bool)

(declare-fun e!573803 () List!21732)

(declare-fun e!573804 () List!21732)

(assert (=> b!1019528 (= e!573803 e!573804)))

(declare-fun c!103314 () Bool)

(assert (=> b!1019528 (= c!103314 (and (is-Cons!21728 l!996) (= (_1!7758 (h!22926 l!996)) key!261)))))

(declare-fun bm!43106 () Bool)

(declare-fun call!43110 () List!21732)

(declare-fun call!43109 () List!21732)

(assert (=> bm!43106 (= call!43110 call!43109)))

(declare-fun b!1019529 () Bool)

(declare-fun res!683551 () Bool)

(declare-fun e!573807 () Bool)

(assert (=> b!1019529 (=> (not res!683551) (not e!573807))))

(declare-fun lt!449672 () List!21732)

(assert (=> b!1019529 (= res!683551 (containsKey!544 lt!449672 key!261))))

(declare-fun b!1019530 () Bool)

(declare-fun e!573805 () List!21732)

(assert (=> b!1019530 (= e!573805 call!43110)))

(declare-fun b!1019531 () Bool)

(declare-fun e!573806 () List!21732)

(assert (=> b!1019531 (= e!573806 (insertStrictlySorted!361 (t!30744 l!996) key!261 value!172))))

(declare-fun b!1019532 () Bool)

(declare-fun contains!5923 (List!21732 tuple2!15496) Bool)

(assert (=> b!1019532 (= e!573807 (contains!5923 lt!449672 (tuple2!15497 key!261 value!172)))))

(declare-fun call!43111 () List!21732)

(declare-fun bm!43108 () Bool)

(declare-fun c!103311 () Bool)

(declare-fun $colon$colon!594 (List!21732 tuple2!15496) List!21732)

(assert (=> bm!43108 (= call!43111 ($colon$colon!594 e!573806 (ite c!103311 (h!22926 l!996) (tuple2!15497 key!261 value!172))))))

(declare-fun c!103312 () Bool)

(assert (=> bm!43108 (= c!103312 c!103311)))

(declare-fun b!1019533 () Bool)

(assert (=> b!1019533 (= e!573805 call!43110)))

(declare-fun c!103313 () Bool)

(declare-fun b!1019534 () Bool)

(assert (=> b!1019534 (= e!573806 (ite c!103314 (t!30744 l!996) (ite c!103313 (Cons!21728 (h!22926 l!996) (t!30744 l!996)) Nil!21729)))))

(declare-fun b!1019535 () Bool)

(assert (=> b!1019535 (= c!103313 (and (is-Cons!21728 l!996) (bvsgt (_1!7758 (h!22926 l!996)) key!261)))))

(assert (=> b!1019535 (= e!573804 e!573805)))

(declare-fun bm!43107 () Bool)

(assert (=> bm!43107 (= call!43109 call!43111)))

(declare-fun d!122041 () Bool)

(assert (=> d!122041 e!573807))

(declare-fun res!683552 () Bool)

(assert (=> d!122041 (=> (not res!683552) (not e!573807))))

(assert (=> d!122041 (= res!683552 (isStrictlySorted!679 lt!449672))))

(assert (=> d!122041 (= lt!449672 e!573803)))

(assert (=> d!122041 (= c!103311 (and (is-Cons!21728 l!996) (bvslt (_1!7758 (h!22926 l!996)) key!261)))))

(assert (=> d!122041 (isStrictlySorted!679 l!996)))

(assert (=> d!122041 (= (insertStrictlySorted!361 l!996 key!261 value!172) lt!449672)))

(declare-fun b!1019536 () Bool)

(assert (=> b!1019536 (= e!573803 call!43111)))

(declare-fun b!1019537 () Bool)

(assert (=> b!1019537 (= e!573804 call!43109)))

(assert (= (and d!122041 c!103311) b!1019536))

(assert (= (and d!122041 (not c!103311)) b!1019528))

(assert (= (and b!1019528 c!103314) b!1019537))

(assert (= (and b!1019528 (not c!103314)) b!1019535))

(assert (= (and b!1019535 c!103313) b!1019530))

(assert (= (and b!1019535 (not c!103313)) b!1019533))

(assert (= (or b!1019530 b!1019533) bm!43106))

(assert (= (or b!1019537 bm!43106) bm!43107))

(assert (= (or b!1019536 bm!43107) bm!43108))

(assert (= (and bm!43108 c!103312) b!1019531))

(assert (= (and bm!43108 (not c!103312)) b!1019534))

(assert (= (and d!122041 res!683552) b!1019529))

(assert (= (and b!1019529 res!683551) b!1019532))

(declare-fun m!939949 () Bool)

(assert (=> bm!43108 m!939949))

(assert (=> b!1019531 m!939869))

(declare-fun m!939951 () Bool)

(assert (=> b!1019532 m!939951))

(declare-fun m!939953 () Bool)

(assert (=> b!1019529 m!939953))

(declare-fun m!939955 () Bool)

(assert (=> d!122041 m!939955))

(assert (=> d!122041 m!939867))

(assert (=> b!1019370 d!122041))

(declare-fun d!122071 () Bool)

(declare-fun res!683553 () Bool)

(declare-fun e!573808 () Bool)

(assert (=> d!122071 (=> res!683553 e!573808)))

(assert (=> d!122071 (= res!683553 (or (is-Nil!21729 l!996) (is-Nil!21729 (t!30744 l!996))))))

(assert (=> d!122071 (= (isStrictlySorted!679 l!996) e!573808)))

(declare-fun b!1019538 () Bool)

(declare-fun e!573809 () Bool)

(assert (=> b!1019538 (= e!573808 e!573809)))

(declare-fun res!683554 () Bool)

(assert (=> b!1019538 (=> (not res!683554) (not e!573809))))

(assert (=> b!1019538 (= res!683554 (bvslt (_1!7758 (h!22926 l!996)) (_1!7758 (h!22926 (t!30744 l!996)))))))

(declare-fun b!1019539 () Bool)

(assert (=> b!1019539 (= e!573809 (isStrictlySorted!679 (t!30744 l!996)))))

(assert (= (and d!122071 (not res!683553)) b!1019538))

(assert (= (and b!1019538 res!683554) b!1019539))

(assert (=> b!1019539 m!939859))

(assert (=> start!88800 d!122071))

(declare-fun d!122073 () Bool)

(declare-fun size!31148 (List!21732) Int)

(assert (=> d!122073 (= (length!46 (t!30744 l!996)) (size!31148 (t!30744 l!996)))))

(declare-fun bs!29693 () Bool)

(assert (= bs!29693 d!122073))

(declare-fun m!939957 () Bool)

(assert (=> bs!29693 m!939957))

(assert (=> b!1019371 d!122073))

(declare-fun d!122075 () Bool)

(assert (=> d!122075 (= (length!46 l!996) (size!31148 l!996))))

(declare-fun bs!29694 () Bool)

(assert (= bs!29694 d!122075))

(declare-fun m!939959 () Bool)

(assert (=> bs!29694 m!939959))

(assert (=> b!1019371 d!122075))

(declare-fun d!122077 () Bool)

(assert (=> d!122077 (= (length!46 (insertStrictlySorted!361 (t!30744 l!996) key!261 value!172)) (length!46 (t!30744 l!996)))))

(declare-fun lt!449675 () Unit!33256)

(declare-fun choose!1683 (List!21732 (_ BitVec 64) B!1692) Unit!33256)

(assert (=> d!122077 (= lt!449675 (choose!1683 (t!30744 l!996) key!261 value!172))))

(assert (=> d!122077 (= (lemmaAddExistingKeyPreservesSize!6 (t!30744 l!996) key!261 value!172) lt!449675)))

(declare-fun bs!29695 () Bool)

(assert (= bs!29695 d!122077))

(assert (=> bs!29695 m!939869))

(assert (=> bs!29695 m!939869))

(assert (=> bs!29695 m!939871))

(assert (=> bs!29695 m!939879))

(declare-fun m!939961 () Bool)

(assert (=> bs!29695 m!939961))

(assert (=> b!1019371 d!122077))

(declare-fun d!122079 () Bool)

(assert (=> d!122079 (= (length!46 (insertStrictlySorted!361 (t!30744 l!996) key!261 value!172)) (size!31148 (insertStrictlySorted!361 (t!30744 l!996) key!261 value!172)))))

(declare-fun bs!29696 () Bool)

(assert (= bs!29696 d!122079))

(assert (=> bs!29696 m!939869))

(declare-fun m!939963 () Bool)

(assert (=> bs!29696 m!939963))

(assert (=> b!1019371 d!122079))

(declare-fun b!1019540 () Bool)

(declare-fun e!573810 () List!21732)

(declare-fun e!573811 () List!21732)

(assert (=> b!1019540 (= e!573810 e!573811)))

(declare-fun c!103318 () Bool)

(assert (=> b!1019540 (= c!103318 (and (is-Cons!21728 (t!30744 l!996)) (= (_1!7758 (h!22926 (t!30744 l!996))) key!261)))))

(declare-fun bm!43109 () Bool)

(declare-fun call!43113 () List!21732)

(declare-fun call!43112 () List!21732)

(assert (=> bm!43109 (= call!43113 call!43112)))

(declare-fun b!1019541 () Bool)

(declare-fun res!683555 () Bool)

(declare-fun e!573814 () Bool)

(assert (=> b!1019541 (=> (not res!683555) (not e!573814))))

(declare-fun lt!449676 () List!21732)

(assert (=> b!1019541 (= res!683555 (containsKey!544 lt!449676 key!261))))

(declare-fun b!1019542 () Bool)

(declare-fun e!573812 () List!21732)

(assert (=> b!1019542 (= e!573812 call!43113)))

(declare-fun b!1019543 () Bool)

(declare-fun e!573813 () List!21732)

(assert (=> b!1019543 (= e!573813 (insertStrictlySorted!361 (t!30744 (t!30744 l!996)) key!261 value!172))))

(declare-fun b!1019544 () Bool)

(assert (=> b!1019544 (= e!573814 (contains!5923 lt!449676 (tuple2!15497 key!261 value!172)))))

(declare-fun c!103315 () Bool)

(declare-fun call!43114 () List!21732)

(declare-fun bm!43111 () Bool)

(assert (=> bm!43111 (= call!43114 ($colon$colon!594 e!573813 (ite c!103315 (h!22926 (t!30744 l!996)) (tuple2!15497 key!261 value!172))))))

(declare-fun c!103316 () Bool)

(assert (=> bm!43111 (= c!103316 c!103315)))

(declare-fun b!1019545 () Bool)

(assert (=> b!1019545 (= e!573812 call!43113)))

(declare-fun b!1019546 () Bool)

(declare-fun c!103317 () Bool)

(assert (=> b!1019546 (= e!573813 (ite c!103318 (t!30744 (t!30744 l!996)) (ite c!103317 (Cons!21728 (h!22926 (t!30744 l!996)) (t!30744 (t!30744 l!996))) Nil!21729)))))

(declare-fun b!1019547 () Bool)

(assert (=> b!1019547 (= c!103317 (and (is-Cons!21728 (t!30744 l!996)) (bvsgt (_1!7758 (h!22926 (t!30744 l!996))) key!261)))))

(assert (=> b!1019547 (= e!573811 e!573812)))

(declare-fun bm!43110 () Bool)

(assert (=> bm!43110 (= call!43112 call!43114)))

(declare-fun d!122081 () Bool)

(assert (=> d!122081 e!573814))

(declare-fun res!683556 () Bool)

(assert (=> d!122081 (=> (not res!683556) (not e!573814))))

(assert (=> d!122081 (= res!683556 (isStrictlySorted!679 lt!449676))))

(assert (=> d!122081 (= lt!449676 e!573810)))

(assert (=> d!122081 (= c!103315 (and (is-Cons!21728 (t!30744 l!996)) (bvslt (_1!7758 (h!22926 (t!30744 l!996))) key!261)))))

(assert (=> d!122081 (isStrictlySorted!679 (t!30744 l!996))))

(assert (=> d!122081 (= (insertStrictlySorted!361 (t!30744 l!996) key!261 value!172) lt!449676)))

(declare-fun b!1019548 () Bool)

(assert (=> b!1019548 (= e!573810 call!43114)))

(declare-fun b!1019549 () Bool)

(assert (=> b!1019549 (= e!573811 call!43112)))

(assert (= (and d!122081 c!103315) b!1019548))

(assert (= (and d!122081 (not c!103315)) b!1019540))

(assert (= (and b!1019540 c!103318) b!1019549))

(assert (= (and b!1019540 (not c!103318)) b!1019547))

(assert (= (and b!1019547 c!103317) b!1019542))

(assert (= (and b!1019547 (not c!103317)) b!1019545))

(assert (= (or b!1019542 b!1019545) bm!43109))

(assert (= (or b!1019549 bm!43109) bm!43110))

(assert (= (or b!1019548 bm!43110) bm!43111))

(assert (= (and bm!43111 c!103316) b!1019543))

(assert (= (and bm!43111 (not c!103316)) b!1019546))

(assert (= (and d!122081 res!683556) b!1019541))

(assert (= (and b!1019541 res!683555) b!1019544))

(declare-fun m!939965 () Bool)

(assert (=> bm!43111 m!939965))

(declare-fun m!939967 () Bool)

(assert (=> b!1019543 m!939967))

(declare-fun m!939969 () Bool)

(assert (=> b!1019544 m!939969))

(declare-fun m!939971 () Bool)

(assert (=> b!1019541 m!939971))

(declare-fun m!939973 () Bool)

(assert (=> d!122081 m!939973))

(assert (=> d!122081 m!939859))

(assert (=> b!1019371 d!122081))

(declare-fun d!122083 () Bool)

(assert (=> d!122083 (= (length!46 lt!449655) (size!31148 lt!449655))))

(declare-fun bs!29697 () Bool)

(assert (= bs!29697 d!122083))

(declare-fun m!939975 () Bool)

(assert (=> bs!29697 m!939975))

(assert (=> b!1019371 d!122083))

(declare-fun b!1019554 () Bool)

(declare-fun e!573817 () Bool)

(declare-fun tp!71165 () Bool)

(assert (=> b!1019554 (= e!573817 (and tp_is_empty!23759 tp!71165))))

(assert (=> b!1019366 (= tp!71156 e!573817)))

(assert (= (and b!1019366 (is-Cons!21728 (t!30744 l!996))) b!1019554))

(push 1)

(assert (not b!1019529))

(assert (not bm!43108))

(assert (not b!1019541))

(assert (not b!1019437))

(assert (not d!122081))

(assert (not b!1019543))

(assert (not b!1019539))

(assert (not d!122075))

(assert (not d!122079))

(assert (not b!1019449))

(assert (not b!1019532))

(assert tp_is_empty!23759)

(assert (not d!122073))

(assert (not b!1019451))

(assert (not d!122041))

(assert (not b!1019531))

(assert (not d!122083))

(assert (not b!1019554))

(assert (not bm!43111))

(assert (not d!122077))

(assert (not b!1019544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

