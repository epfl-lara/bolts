; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88662 () Bool)

(assert start!88662)

(declare-fun res!682982 () Bool)

(declare-fun e!573057 () Bool)

(assert (=> start!88662 (=> (not res!682982) (not e!573057))))

(declare-datatypes ((B!1662 0))(
  ( (B!1663 (val!11915 Int)) )
))
(declare-datatypes ((tuple2!15466 0))(
  ( (tuple2!15467 (_1!7743 (_ BitVec 64)) (_2!7743 B!1662)) )
))
(declare-datatypes ((List!21717 0))(
  ( (Nil!21714) (Cons!21713 (h!22911 tuple2!15466) (t!30726 List!21717)) )
))
(declare-fun l!996 () List!21717)

(declare-fun isStrictlySorted!664 (List!21717) Bool)

(assert (=> start!88662 (= res!682982 (isStrictlySorted!664 l!996))))

(assert (=> start!88662 e!573057))

(declare-fun e!573058 () Bool)

(assert (=> start!88662 e!573058))

(assert (=> start!88662 true))

(declare-fun tp_is_empty!23729 () Bool)

(assert (=> start!88662 tp_is_empty!23729))

(declare-fun b!1018391 () Bool)

(declare-fun res!682983 () Bool)

(assert (=> b!1018391 (=> (not res!682983) (not e!573057))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!529 (List!21717 (_ BitVec 64)) Bool)

(assert (=> b!1018391 (= res!682983 (containsKey!529 l!996 key!261))))

(declare-fun value!172 () B!1662)

(declare-fun b!1018392 () Bool)

(declare-fun lt!449541 () List!21717)

(assert (=> b!1018392 (= e!573057 (and (is-Cons!21713 l!996) (= (_1!7743 (h!22911 l!996)) key!261) (not (= lt!449541 (Cons!21713 (tuple2!15467 key!261 value!172) (t!30726 l!996))))))))

(declare-fun insertStrictlySorted!349 (List!21717 (_ BitVec 64) B!1662) List!21717)

(assert (=> b!1018392 (= lt!449541 (insertStrictlySorted!349 l!996 key!261 value!172))))

(declare-fun b!1018393 () Bool)

(declare-fun tp!71063 () Bool)

(assert (=> b!1018393 (= e!573058 (and tp_is_empty!23729 tp!71063))))

(assert (= (and start!88662 res!682982) b!1018391))

(assert (= (and b!1018391 res!682983) b!1018392))

(assert (= (and start!88662 (is-Cons!21713 l!996)) b!1018393))

(declare-fun m!939431 () Bool)

(assert (=> start!88662 m!939431))

(declare-fun m!939433 () Bool)

(assert (=> b!1018391 m!939433))

(declare-fun m!939435 () Bool)

(assert (=> b!1018392 m!939435))

(push 1)

(assert (not start!88662))

(assert (not b!1018392))

(assert (not b!1018391))

(assert tp_is_empty!23729)

(assert (not b!1018393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1018468 () Bool)

(declare-fun e!573103 () List!21717)

(declare-fun e!573104 () List!21717)

(assert (=> b!1018468 (= e!573103 e!573104)))

(declare-fun c!103122 () Bool)

(assert (=> b!1018468 (= c!103122 (and (is-Cons!21713 l!996) (= (_1!7743 (h!22911 l!996)) key!261)))))

(declare-fun b!1018469 () Bool)

(declare-fun e!573106 () List!21717)

(assert (=> b!1018469 (= e!573106 (insertStrictlySorted!349 (t!30726 l!996) key!261 value!172))))

(declare-fun bm!42978 () Bool)

(declare-fun call!42981 () List!21717)

(declare-fun c!103121 () Bool)

(declare-fun $colon$colon!580 (List!21717 tuple2!15466) List!21717)

(assert (=> bm!42978 (= call!42981 ($colon$colon!580 e!573106 (ite c!103121 (h!22911 l!996) (tuple2!15467 key!261 value!172))))))

(declare-fun c!103120 () Bool)

(assert (=> bm!42978 (= c!103120 c!103121)))

(declare-fun b!1018470 () Bool)

(declare-fun c!103123 () Bool)

(assert (=> b!1018470 (= c!103123 (and (is-Cons!21713 l!996) (bvsgt (_1!7743 (h!22911 l!996)) key!261)))))

(declare-fun e!573105 () List!21717)

(assert (=> b!1018470 (= e!573104 e!573105)))

(declare-fun b!1018471 () Bool)

(declare-fun call!42982 () List!21717)

(assert (=> b!1018471 (= e!573104 call!42982)))

(declare-fun lt!449549 () List!21717)

(declare-fun e!573102 () Bool)

(declare-fun b!1018472 () Bool)

(declare-fun contains!5909 (List!21717 tuple2!15466) Bool)

(assert (=> b!1018472 (= e!573102 (contains!5909 lt!449549 (tuple2!15467 key!261 value!172)))))

(declare-fun b!1018473 () Bool)

(declare-fun call!42983 () List!21717)

(assert (=> b!1018473 (= e!573105 call!42983)))

(declare-fun bm!42979 () Bool)

(assert (=> bm!42979 (= call!42983 call!42982)))

(declare-fun bm!42980 () Bool)

(assert (=> bm!42980 (= call!42982 call!42981)))

(declare-fun b!1018474 () Bool)

(assert (=> b!1018474 (= e!573103 call!42981)))

(declare-fun d!121839 () Bool)

(assert (=> d!121839 e!573102))

(declare-fun res!683007 () Bool)

(assert (=> d!121839 (=> (not res!683007) (not e!573102))))

(assert (=> d!121839 (= res!683007 (isStrictlySorted!664 lt!449549))))

(assert (=> d!121839 (= lt!449549 e!573103)))

(assert (=> d!121839 (= c!103121 (and (is-Cons!21713 l!996) (bvslt (_1!7743 (h!22911 l!996)) key!261)))))

(assert (=> d!121839 (isStrictlySorted!664 l!996)))

(assert (=> d!121839 (= (insertStrictlySorted!349 l!996 key!261 value!172) lt!449549)))

(declare-fun b!1018475 () Bool)

(declare-fun res!683006 () Bool)

(assert (=> b!1018475 (=> (not res!683006) (not e!573102))))

(assert (=> b!1018475 (= res!683006 (containsKey!529 lt!449549 key!261))))

(declare-fun b!1018476 () Bool)

(assert (=> b!1018476 (= e!573106 (ite c!103122 (t!30726 l!996) (ite c!103123 (Cons!21713 (h!22911 l!996) (t!30726 l!996)) Nil!21714)))))

(declare-fun b!1018477 () Bool)

(assert (=> b!1018477 (= e!573105 call!42983)))

(assert (= (and d!121839 c!103121) b!1018474))

(assert (= (and d!121839 (not c!103121)) b!1018468))

(assert (= (and b!1018468 c!103122) b!1018471))

(assert (= (and b!1018468 (not c!103122)) b!1018470))

(assert (= (and b!1018470 c!103123) b!1018473))

(assert (= (and b!1018470 (not c!103123)) b!1018477))

(assert (= (or b!1018473 b!1018477) bm!42979))

(assert (= (or b!1018471 bm!42979) bm!42980))

(assert (= (or b!1018474 bm!42980) bm!42978))

(assert (= (and bm!42978 c!103120) b!1018469))

(assert (= (and bm!42978 (not c!103120)) b!1018476))

(assert (= (and d!121839 res!683007) b!1018475))

(assert (= (and b!1018475 res!683006) b!1018472))

(declare-fun m!939451 () Bool)

(assert (=> b!1018472 m!939451))

(declare-fun m!939453 () Bool)

(assert (=> b!1018469 m!939453))

(declare-fun m!939455 () Bool)

(assert (=> b!1018475 m!939455))

(declare-fun m!939457 () Bool)

(assert (=> d!121839 m!939457))

(assert (=> d!121839 m!939431))

(declare-fun m!939459 () Bool)

(assert (=> bm!42978 m!939459))

(assert (=> b!1018392 d!121839))

(declare-fun d!121847 () Bool)

(declare-fun res!683022 () Bool)

(declare-fun e!573121 () Bool)

(assert (=> d!121847 (=> res!683022 e!573121)))

(assert (=> d!121847 (= res!683022 (or (is-Nil!21714 l!996) (is-Nil!21714 (t!30726 l!996))))))

(assert (=> d!121847 (= (isStrictlySorted!664 l!996) e!573121)))

(declare-fun b!1018496 () Bool)

(declare-fun e!573122 () Bool)

(assert (=> b!1018496 (= e!573121 e!573122)))

(declare-fun res!683023 () Bool)

(assert (=> b!1018496 (=> (not res!683023) (not e!573122))))

(assert (=> b!1018496 (= res!683023 (bvslt (_1!7743 (h!22911 l!996)) (_1!7743 (h!22911 (t!30726 l!996)))))))

(declare-fun b!1018497 () Bool)

(assert (=> b!1018497 (= e!573122 (isStrictlySorted!664 (t!30726 l!996)))))

(assert (= (and d!121847 (not res!683022)) b!1018496))

(assert (= (and b!1018496 res!683023) b!1018497))

(declare-fun m!939463 () Bool)

(assert (=> b!1018497 m!939463))

(assert (=> start!88662 d!121847))

(declare-fun d!121851 () Bool)

(declare-fun res!683036 () Bool)

(declare-fun e!573143 () Bool)

(assert (=> d!121851 (=> res!683036 e!573143)))

(assert (=> d!121851 (= res!683036 (and (is-Cons!21713 l!996) (= (_1!7743 (h!22911 l!996)) key!261)))))

(assert (=> d!121851 (= (containsKey!529 l!996 key!261) e!573143)))

(declare-fun b!1018527 () Bool)

(declare-fun e!573144 () Bool)

(assert (=> b!1018527 (= e!573143 e!573144)))

(declare-fun res!683037 () Bool)

(assert (=> b!1018527 (=> (not res!683037) (not e!573144))))

(assert (=> b!1018527 (= res!683037 (and (or (not (is-Cons!21713 l!996)) (bvsle (_1!7743 (h!22911 l!996)) key!261)) (is-Cons!21713 l!996) (bvslt (_1!7743 (h!22911 l!996)) key!261)))))

(declare-fun b!1018528 () Bool)

(assert (=> b!1018528 (= e!573144 (containsKey!529 (t!30726 l!996) key!261))))

(assert (= (and d!121851 (not res!683036)) b!1018527))

(assert (= (and b!1018527 res!683037) b!1018528))

(declare-fun m!939477 () Bool)

(assert (=> b!1018528 m!939477))

(assert (=> b!1018391 d!121851))

(declare-fun b!1018534 () Bool)

(declare-fun e!573148 () Bool)

(declare-fun tp!71072 () Bool)

(assert (=> b!1018534 (= e!573148 (and tp_is_empty!23729 tp!71072))))

(assert (=> b!1018393 (= tp!71063 e!573148)))

(assert (= (and b!1018393 (is-Cons!21713 (t!30726 l!996))) b!1018534))

(push 1)

(assert (not b!1018497))

(assert (not bm!42978))

(assert (not d!121839))

(assert (not b!1018475))

(assert tp_is_empty!23729)

(assert (not b!1018472))

(assert (not b!1018534))

(assert (not b!1018469))

(assert (not b!1018528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121867 () Bool)

(declare-fun res!683054 () Bool)

(declare-fun e!573169 () Bool)

(assert (=> d!121867 (=> res!683054 e!573169)))

(assert (=> d!121867 (= res!683054 (and (is-Cons!21713 lt!449549) (= (_1!7743 (h!22911 lt!449549)) key!261)))))

(assert (=> d!121867 (= (containsKey!529 lt!449549 key!261) e!573169)))

(declare-fun b!1018560 () Bool)

(declare-fun e!573170 () Bool)

(assert (=> b!1018560 (= e!573169 e!573170)))

(declare-fun res!683055 () Bool)

(assert (=> b!1018560 (=> (not res!683055) (not e!573170))))

(assert (=> b!1018560 (= res!683055 (and (or (not (is-Cons!21713 lt!449549)) (bvsle (_1!7743 (h!22911 lt!449549)) key!261)) (is-Cons!21713 lt!449549) (bvslt (_1!7743 (h!22911 lt!449549)) key!261)))))

(declare-fun b!1018561 () Bool)

(assert (=> b!1018561 (= e!573170 (containsKey!529 (t!30726 lt!449549) key!261))))

(assert (= (and d!121867 (not res!683054)) b!1018560))

(assert (= (and b!1018560 res!683055) b!1018561))

(declare-fun m!939503 () Bool)

(assert (=> b!1018561 m!939503))

(assert (=> b!1018475 d!121867))

(declare-fun d!121869 () Bool)

(declare-fun res!683056 () Bool)

(declare-fun e!573171 () Bool)

(assert (=> d!121869 (=> res!683056 e!573171)))

(assert (=> d!121869 (= res!683056 (or (is-Nil!21714 (t!30726 l!996)) (is-Nil!21714 (t!30726 (t!30726 l!996)))))))

(assert (=> d!121869 (= (isStrictlySorted!664 (t!30726 l!996)) e!573171)))

(declare-fun b!1018562 () Bool)

(declare-fun e!573172 () Bool)

(assert (=> b!1018562 (= e!573171 e!573172)))

(declare-fun res!683057 () Bool)

(assert (=> b!1018562 (=> (not res!683057) (not e!573172))))

(assert (=> b!1018562 (= res!683057 (bvslt (_1!7743 (h!22911 (t!30726 l!996))) (_1!7743 (h!22911 (t!30726 (t!30726 l!996))))))))

(declare-fun b!1018563 () Bool)

(assert (=> b!1018563 (= e!573172 (isStrictlySorted!664 (t!30726 (t!30726 l!996))))))

(assert (= (and d!121869 (not res!683056)) b!1018562))

(assert (= (and b!1018562 res!683057) b!1018563))

(declare-fun m!939505 () Bool)

(assert (=> b!1018563 m!939505))

(assert (=> b!1018497 d!121869))

(declare-fun b!1018564 () Bool)

(declare-fun e!573174 () List!21717)

(declare-fun e!573175 () List!21717)

(assert (=> b!1018564 (= e!573174 e!573175)))

(declare-fun c!103136 () Bool)

(assert (=> b!1018564 (= c!103136 (and (is-Cons!21713 (t!30726 l!996)) (= (_1!7743 (h!22911 (t!30726 l!996))) key!261)))))

(declare-fun b!1018565 () Bool)

(declare-fun e!573177 () List!21717)

(assert (=> b!1018565 (= e!573177 (insertStrictlySorted!349 (t!30726 (t!30726 l!996)) key!261 value!172))))

(declare-fun c!103135 () Bool)

(declare-fun bm!42989 () Bool)

(declare-fun call!42992 () List!21717)

(assert (=> bm!42989 (= call!42992 ($colon$colon!580 e!573177 (ite c!103135 (h!22911 (t!30726 l!996)) (tuple2!15467 key!261 value!172))))))

(declare-fun c!103134 () Bool)

(assert (=> bm!42989 (= c!103134 c!103135)))

(declare-fun b!1018566 () Bool)

(declare-fun c!103137 () Bool)

(assert (=> b!1018566 (= c!103137 (and (is-Cons!21713 (t!30726 l!996)) (bvsgt (_1!7743 (h!22911 (t!30726 l!996))) key!261)))))

(declare-fun e!573176 () List!21717)

(assert (=> b!1018566 (= e!573175 e!573176)))

(declare-fun b!1018567 () Bool)

(declare-fun call!42993 () List!21717)

(assert (=> b!1018567 (= e!573175 call!42993)))

(declare-fun e!573173 () Bool)

(declare-fun lt!449555 () List!21717)

(declare-fun b!1018568 () Bool)

(assert (=> b!1018568 (= e!573173 (contains!5909 lt!449555 (tuple2!15467 key!261 value!172)))))

(declare-fun b!1018569 () Bool)

(declare-fun call!42994 () List!21717)

(assert (=> b!1018569 (= e!573176 call!42994)))

(declare-fun bm!42990 () Bool)

(assert (=> bm!42990 (= call!42994 call!42993)))

(declare-fun bm!42991 () Bool)

(assert (=> bm!42991 (= call!42993 call!42992)))

(declare-fun b!1018570 () Bool)

(assert (=> b!1018570 (= e!573174 call!42992)))

(declare-fun d!121873 () Bool)

(assert (=> d!121873 e!573173))

(declare-fun res!683059 () Bool)

(assert (=> d!121873 (=> (not res!683059) (not e!573173))))

(assert (=> d!121873 (= res!683059 (isStrictlySorted!664 lt!449555))))

(assert (=> d!121873 (= lt!449555 e!573174)))

(assert (=> d!121873 (= c!103135 (and (is-Cons!21713 (t!30726 l!996)) (bvslt (_1!7743 (h!22911 (t!30726 l!996))) key!261)))))

(assert (=> d!121873 (isStrictlySorted!664 (t!30726 l!996))))

(assert (=> d!121873 (= (insertStrictlySorted!349 (t!30726 l!996) key!261 value!172) lt!449555)))

(declare-fun b!1018571 () Bool)

(declare-fun res!683058 () Bool)

(assert (=> b!1018571 (=> (not res!683058) (not e!573173))))

(assert (=> b!1018571 (= res!683058 (containsKey!529 lt!449555 key!261))))

(declare-fun b!1018572 () Bool)

(assert (=> b!1018572 (= e!573177 (ite c!103136 (t!30726 (t!30726 l!996)) (ite c!103137 (Cons!21713 (h!22911 (t!30726 l!996)) (t!30726 (t!30726 l!996))) Nil!21714)))))

(declare-fun b!1018573 () Bool)

(assert (=> b!1018573 (= e!573176 call!42994)))

(assert (= (and d!121873 c!103135) b!1018570))

(assert (= (and d!121873 (not c!103135)) b!1018564))

(assert (= (and b!1018564 c!103136) b!1018567))

(assert (= (and b!1018564 (not c!103136)) b!1018566))

(assert (= (and b!1018566 c!103137) b!1018569))

(assert (= (and b!1018566 (not c!103137)) b!1018573))

(assert (= (or b!1018569 b!1018573) bm!42990))

(assert (= (or b!1018567 bm!42990) bm!42991))

(assert (= (or b!1018570 bm!42991) bm!42989))

(assert (= (and bm!42989 c!103134) b!1018565))

(assert (= (and bm!42989 (not c!103134)) b!1018572))

(assert (= (and d!121873 res!683059) b!1018571))

(assert (= (and b!1018571 res!683058) b!1018568))

(declare-fun m!939507 () Bool)

(assert (=> b!1018568 m!939507))

(declare-fun m!939509 () Bool)

(assert (=> b!1018565 m!939509))

(declare-fun m!939511 () Bool)

(assert (=> b!1018571 m!939511))

(declare-fun m!939513 () Bool)

(assert (=> d!121873 m!939513))

(assert (=> d!121873 m!939463))

(declare-fun m!939515 () Bool)

(assert (=> bm!42989 m!939515))

(assert (=> b!1018469 d!121873))

(declare-fun d!121875 () Bool)

(assert (=> d!121875 (= ($colon$colon!580 e!573106 (ite c!103121 (h!22911 l!996) (tuple2!15467 key!261 value!172))) (Cons!21713 (ite c!103121 (h!22911 l!996) (tuple2!15467 key!261 value!172)) e!573106))))

(assert (=> bm!42978 d!121875))

(declare-fun d!121877 () Bool)

(declare-fun res!683060 () Bool)

(declare-fun e!573178 () Bool)

(assert (=> d!121877 (=> res!683060 e!573178)))

(assert (=> d!121877 (= res!683060 (or (is-Nil!21714 lt!449549) (is-Nil!21714 (t!30726 lt!449549))))))

(assert (=> d!121877 (= (isStrictlySorted!664 lt!449549) e!573178)))

(declare-fun b!1018574 () Bool)

(declare-fun e!573179 () Bool)

(assert (=> b!1018574 (= e!573178 e!573179)))

(declare-fun res!683061 () Bool)

(assert (=> b!1018574 (=> (not res!683061) (not e!573179))))

(assert (=> b!1018574 (= res!683061 (bvslt (_1!7743 (h!22911 lt!449549)) (_1!7743 (h!22911 (t!30726 lt!449549)))))))

(declare-fun b!1018575 () Bool)

(assert (=> b!1018575 (= e!573179 (isStrictlySorted!664 (t!30726 lt!449549)))))

(assert (= (and d!121877 (not res!683060)) b!1018574))

(assert (= (and b!1018574 res!683061) b!1018575))

(declare-fun m!939517 () Bool)

(assert (=> b!1018575 m!939517))

(assert (=> d!121839 d!121877))

(assert (=> d!121839 d!121847))

(declare-fun lt!449562 () Bool)

(declare-fun d!121879 () Bool)

(declare-fun content!491 (List!21717) (Set tuple2!15466))

(assert (=> d!121879 (= lt!449562 (member (tuple2!15467 key!261 value!172) (content!491 lt!449549)))))

(declare-fun e!573195 () Bool)

(assert (=> d!121879 (= lt!449562 e!573195)))

(declare-fun res!683075 () Bool)

(assert (=> d!121879 (=> (not res!683075) (not e!573195))))

(assert (=> d!121879 (= res!683075 (is-Cons!21713 lt!449549))))

(assert (=> d!121879 (= (contains!5909 lt!449549 (tuple2!15467 key!261 value!172)) lt!449562)))

(declare-fun b!1018596 () Bool)

(declare-fun e!573196 () Bool)

(assert (=> b!1018596 (= e!573195 e!573196)))

(declare-fun res!683074 () Bool)

(assert (=> b!1018596 (=> res!683074 e!573196)))

(assert (=> b!1018596 (= res!683074 (= (h!22911 lt!449549) (tuple2!15467 key!261 value!172)))))

(declare-fun b!1018597 () Bool)

(assert (=> b!1018597 (= e!573196 (contains!5909 (t!30726 lt!449549) (tuple2!15467 key!261 value!172)))))

(assert (= (and d!121879 res!683075) b!1018596))

(assert (= (and b!1018596 (not res!683074)) b!1018597))

(declare-fun m!939535 () Bool)

(assert (=> d!121879 m!939535))

(declare-fun m!939537 () Bool)

(assert (=> d!121879 m!939537))

(declare-fun m!939539 () Bool)

(assert (=> b!1018597 m!939539))

(assert (=> b!1018472 d!121879))

(declare-fun d!121885 () Bool)

(declare-fun res!683078 () Bool)

(declare-fun e!573199 () Bool)

(assert (=> d!121885 (=> res!683078 e!573199)))

(assert (=> d!121885 (= res!683078 (and (is-Cons!21713 (t!30726 l!996)) (= (_1!7743 (h!22911 (t!30726 l!996))) key!261)))))

(assert (=> d!121885 (= (containsKey!529 (t!30726 l!996) key!261) e!573199)))

(declare-fun b!1018600 () Bool)

(declare-fun e!573200 () Bool)

(assert (=> b!1018600 (= e!573199 e!573200)))

(declare-fun res!683079 () Bool)

(assert (=> b!1018600 (=> (not res!683079) (not e!573200))))

(assert (=> b!1018600 (= res!683079 (and (or (not (is-Cons!21713 (t!30726 l!996))) (bvsle (_1!7743 (h!22911 (t!30726 l!996))) key!261)) (is-Cons!21713 (t!30726 l!996)) (bvslt (_1!7743 (h!22911 (t!30726 l!996))) key!261)))))

(declare-fun b!1018601 () Bool)

(assert (=> b!1018601 (= e!573200 (containsKey!529 (t!30726 (t!30726 l!996)) key!261))))

(assert (= (and d!121885 (not res!683078)) b!1018600))

(assert (= (and b!1018600 res!683079) b!1018601))

(declare-fun m!939543 () Bool)

(assert (=> b!1018601 m!939543))

(assert (=> b!1018528 d!121885))

(declare-fun b!1018604 () Bool)

(declare-fun e!573203 () Bool)

(declare-fun tp!71074 () Bool)

(assert (=> b!1018604 (= e!573203 (and tp_is_empty!23729 tp!71074))))

(assert (=> b!1018534 (= tp!71072 e!573203)))

(assert (= (and b!1018534 (is-Cons!21713 (t!30726 (t!30726 l!996)))) b!1018604))

(push 1)

