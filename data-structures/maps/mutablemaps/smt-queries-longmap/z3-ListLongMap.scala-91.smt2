; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1310 () Bool)

(assert start!1310)

(declare-fun b_free!411 () Bool)

(declare-fun b_next!411 () Bool)

(assert (=> start!1310 (= b_free!411 (not b_next!411))))

(declare-fun tp!1646 () Bool)

(declare-fun b_and!593 () Bool)

(assert (=> start!1310 (= tp!1646 b_and!593)))

(declare-fun b!10672 () Bool)

(declare-fun res!9020 () Bool)

(declare-fun e!6216 () Bool)

(assert (=> b!10672 (=> (not res!9020) (not e!6216))))

(declare-datatypes ((B!352 0))(
  ( (B!353 (val!271 Int)) )
))
(declare-datatypes ((tuple2!324 0))(
  ( (tuple2!325 (_1!162 (_ BitVec 64)) (_2!162 B!352)) )
))
(declare-datatypes ((List!318 0))(
  ( (Nil!315) (Cons!314 (h!880 tuple2!324) (t!2489 List!318)) )
))
(declare-fun kvs!4 () List!318)

(declare-fun isEmpty!52 (List!318) Bool)

(assert (=> b!10672 (= res!9020 (not (isEmpty!52 kvs!4)))))

(declare-fun b!10674 () Bool)

(assert (=> b!10674 (= e!6216 (not (not (= kvs!4 Nil!315))))))

(declare-datatypes ((ListLongMap!305 0))(
  ( (ListLongMap!306 (toList!168 List!318)) )
))
(declare-fun lm!227 () ListLongMap!305)

(declare-fun lt!2597 () tuple2!324)

(declare-fun p!216 () Int)

(declare-fun forall!42 (List!318 Int) Bool)

(declare-fun +!15 (ListLongMap!305 tuple2!324) ListLongMap!305)

(assert (=> b!10674 (forall!42 (toList!168 (+!15 lm!227 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))) p!216)))

(declare-datatypes ((Unit!217 0))(
  ( (Unit!218) )
))
(declare-fun lt!2598 () Unit!217)

(declare-fun addValidProp!3 (ListLongMap!305 Int (_ BitVec 64) B!352) Unit!217)

(assert (=> b!10674 (= lt!2598 (addValidProp!3 lm!227 p!216 (_1!162 lt!2597) (_2!162 lt!2597)))))

(declare-fun head!759 (List!318) tuple2!324)

(assert (=> b!10674 (= lt!2597 (head!759 kvs!4))))

(declare-fun b!10675 () Bool)

(declare-fun e!6218 () Bool)

(declare-fun tp_is_empty!525 () Bool)

(declare-fun tp!1645 () Bool)

(assert (=> b!10675 (= e!6218 (and tp_is_empty!525 tp!1645))))

(declare-fun b!10676 () Bool)

(declare-fun e!6217 () Bool)

(declare-fun tp!1644 () Bool)

(assert (=> b!10676 (= e!6217 tp!1644)))

(declare-fun res!9021 () Bool)

(assert (=> start!1310 (=> (not res!9021) (not e!6216))))

(assert (=> start!1310 (= res!9021 (forall!42 (toList!168 lm!227) p!216))))

(assert (=> start!1310 e!6216))

(declare-fun inv!511 (ListLongMap!305) Bool)

(assert (=> start!1310 (and (inv!511 lm!227) e!6217)))

(assert (=> start!1310 tp!1646))

(assert (=> start!1310 e!6218))

(declare-fun b!10673 () Bool)

(declare-fun res!9022 () Bool)

(assert (=> b!10673 (=> (not res!9022) (not e!6216))))

(assert (=> b!10673 (= res!9022 (forall!42 kvs!4 p!216))))

(assert (= (and start!1310 res!9021) b!10673))

(assert (= (and b!10673 res!9022) b!10672))

(assert (= (and b!10672 res!9020) b!10674))

(assert (= start!1310 b!10676))

(get-info :version)

(assert (= (and start!1310 ((_ is Cons!314) kvs!4)) b!10675))

(declare-fun m!6873 () Bool)

(assert (=> b!10672 m!6873))

(declare-fun m!6875 () Bool)

(assert (=> b!10674 m!6875))

(declare-fun m!6877 () Bool)

(assert (=> b!10674 m!6877))

(declare-fun m!6879 () Bool)

(assert (=> b!10674 m!6879))

(declare-fun m!6881 () Bool)

(assert (=> b!10674 m!6881))

(declare-fun m!6883 () Bool)

(assert (=> start!1310 m!6883))

(declare-fun m!6885 () Bool)

(assert (=> start!1310 m!6885))

(declare-fun m!6887 () Bool)

(assert (=> b!10673 m!6887))

(check-sat (not start!1310) (not b!10675) (not b_next!411) (not b!10676) (not b!10673) (not b!10674) b_and!593 (not b!10672) tp_is_empty!525)
(check-sat b_and!593 (not b_next!411))
(get-model)

(declare-fun d!1175 () Bool)

(declare-fun res!9050 () Bool)

(declare-fun e!6246 () Bool)

(assert (=> d!1175 (=> res!9050 e!6246)))

(assert (=> d!1175 (= res!9050 ((_ is Nil!315) kvs!4))))

(assert (=> d!1175 (= (forall!42 kvs!4 p!216) e!6246)))

(declare-fun b!10710 () Bool)

(declare-fun e!6247 () Bool)

(assert (=> b!10710 (= e!6246 e!6247)))

(declare-fun res!9051 () Bool)

(assert (=> b!10710 (=> (not res!9051) (not e!6247))))

(declare-fun dynLambda!57 (Int tuple2!324) Bool)

(assert (=> b!10710 (= res!9051 (dynLambda!57 p!216 (h!880 kvs!4)))))

(declare-fun b!10711 () Bool)

(assert (=> b!10711 (= e!6247 (forall!42 (t!2489 kvs!4) p!216))))

(assert (= (and d!1175 (not res!9050)) b!10710))

(assert (= (and b!10710 res!9051) b!10711))

(declare-fun b_lambda!413 () Bool)

(assert (=> (not b_lambda!413) (not b!10710)))

(declare-fun t!2498 () Bool)

(declare-fun tb!177 () Bool)

(assert (=> (and start!1310 (= p!216 p!216) t!2498) tb!177))

(declare-fun result!315 () Bool)

(assert (=> tb!177 (= result!315 true)))

(assert (=> b!10710 t!2498))

(declare-fun b_and!603 () Bool)

(assert (= b_and!593 (and (=> t!2498 result!315) b_and!603)))

(declare-fun m!6918 () Bool)

(assert (=> b!10710 m!6918))

(declare-fun m!6921 () Bool)

(assert (=> b!10711 m!6921))

(assert (=> b!10673 d!1175))

(declare-fun d!1183 () Bool)

(assert (=> d!1183 (= (isEmpty!52 kvs!4) ((_ is Nil!315) kvs!4))))

(assert (=> b!10672 d!1183))

(declare-fun d!1185 () Bool)

(declare-fun res!9054 () Bool)

(declare-fun e!6250 () Bool)

(assert (=> d!1185 (=> res!9054 e!6250)))

(assert (=> d!1185 (= res!9054 ((_ is Nil!315) (toList!168 (+!15 lm!227 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))))))))

(assert (=> d!1185 (= (forall!42 (toList!168 (+!15 lm!227 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))) p!216) e!6250)))

(declare-fun b!10714 () Bool)

(declare-fun e!6251 () Bool)

(assert (=> b!10714 (= e!6250 e!6251)))

(declare-fun res!9055 () Bool)

(assert (=> b!10714 (=> (not res!9055) (not e!6251))))

(assert (=> b!10714 (= res!9055 (dynLambda!57 p!216 (h!880 (toList!168 (+!15 lm!227 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))))))))

(declare-fun b!10715 () Bool)

(assert (=> b!10715 (= e!6251 (forall!42 (t!2489 (toList!168 (+!15 lm!227 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))))) p!216))))

(assert (= (and d!1185 (not res!9054)) b!10714))

(assert (= (and b!10714 res!9055) b!10715))

(declare-fun b_lambda!417 () Bool)

(assert (=> (not b_lambda!417) (not b!10714)))

(declare-fun t!2502 () Bool)

(declare-fun tb!181 () Bool)

(assert (=> (and start!1310 (= p!216 p!216) t!2502) tb!181))

(declare-fun result!319 () Bool)

(assert (=> tb!181 (= result!319 true)))

(assert (=> b!10714 t!2502))

(declare-fun b_and!607 () Bool)

(assert (= b_and!603 (and (=> t!2502 result!319) b_and!607)))

(declare-fun m!6927 () Bool)

(assert (=> b!10714 m!6927))

(declare-fun m!6929 () Bool)

(assert (=> b!10715 m!6929))

(assert (=> b!10674 d!1185))

(declare-fun d!1189 () Bool)

(declare-fun e!6263 () Bool)

(assert (=> d!1189 e!6263))

(declare-fun res!9076 () Bool)

(assert (=> d!1189 (=> (not res!9076) (not e!6263))))

(declare-fun lt!2643 () ListLongMap!305)

(declare-fun contains!134 (ListLongMap!305 (_ BitVec 64)) Bool)

(assert (=> d!1189 (= res!9076 (contains!134 lt!2643 (_1!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))))))

(declare-fun lt!2641 () List!318)

(assert (=> d!1189 (= lt!2643 (ListLongMap!306 lt!2641))))

(declare-fun lt!2640 () Unit!217)

(declare-fun lt!2642 () Unit!217)

(assert (=> d!1189 (= lt!2640 lt!2642)))

(declare-datatypes ((Option!24 0))(
  ( (Some!23 (v!1338 B!352)) (None!22) )
))
(declare-fun getValueByKey!18 (List!318 (_ BitVec 64)) Option!24)

(assert (=> d!1189 (= (getValueByKey!18 lt!2641 (_1!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))) (Some!23 (_2!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!2 (List!318 (_ BitVec 64) B!352) Unit!217)

(assert (=> d!1189 (= lt!2642 (lemmaContainsTupThenGetReturnValue!2 lt!2641 (_1!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))) (_2!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))))))

(declare-fun insertStrictlySorted!2 (List!318 (_ BitVec 64) B!352) List!318)

(assert (=> d!1189 (= lt!2641 (insertStrictlySorted!2 (toList!168 lm!227) (_1!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))) (_2!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))))))

(assert (=> d!1189 (= (+!15 lm!227 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))) lt!2643)))

(declare-fun b!10736 () Bool)

(declare-fun res!9075 () Bool)

(assert (=> b!10736 (=> (not res!9075) (not e!6263))))

(assert (=> b!10736 (= res!9075 (= (getValueByKey!18 (toList!168 lt!2643) (_1!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))) (Some!23 (_2!162 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))))))))

(declare-fun b!10737 () Bool)

(declare-fun contains!135 (List!318 tuple2!324) Bool)

(assert (=> b!10737 (= e!6263 (contains!135 (toList!168 lt!2643) (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))))))

(assert (= (and d!1189 res!9076) b!10736))

(assert (= (and b!10736 res!9075) b!10737))

(declare-fun m!6959 () Bool)

(assert (=> d!1189 m!6959))

(declare-fun m!6961 () Bool)

(assert (=> d!1189 m!6961))

(declare-fun m!6963 () Bool)

(assert (=> d!1189 m!6963))

(declare-fun m!6965 () Bool)

(assert (=> d!1189 m!6965))

(declare-fun m!6967 () Bool)

(assert (=> b!10736 m!6967))

(declare-fun m!6969 () Bool)

(assert (=> b!10737 m!6969))

(assert (=> b!10674 d!1189))

(declare-fun d!1197 () Bool)

(assert (=> d!1197 (forall!42 (toList!168 (+!15 lm!227 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597)))) p!216)))

(declare-fun lt!2649 () Unit!217)

(declare-fun choose!149 (ListLongMap!305 Int (_ BitVec 64) B!352) Unit!217)

(assert (=> d!1197 (= lt!2649 (choose!149 lm!227 p!216 (_1!162 lt!2597) (_2!162 lt!2597)))))

(declare-fun e!6279 () Bool)

(assert (=> d!1197 e!6279))

(declare-fun res!9086 () Bool)

(assert (=> d!1197 (=> (not res!9086) (not e!6279))))

(assert (=> d!1197 (= res!9086 (forall!42 (toList!168 lm!227) p!216))))

(assert (=> d!1197 (= (addValidProp!3 lm!227 p!216 (_1!162 lt!2597) (_2!162 lt!2597)) lt!2649)))

(declare-fun b!10759 () Bool)

(assert (=> b!10759 (= e!6279 (dynLambda!57 p!216 (tuple2!325 (_1!162 lt!2597) (_2!162 lt!2597))))))

(assert (= (and d!1197 res!9086) b!10759))

(declare-fun b_lambda!435 () Bool)

(assert (=> (not b_lambda!435) (not b!10759)))

(declare-fun t!2512 () Bool)

(declare-fun tb!191 () Bool)

(assert (=> (and start!1310 (= p!216 p!216) t!2512) tb!191))

(declare-fun result!333 () Bool)

(assert (=> tb!191 (= result!333 true)))

(assert (=> b!10759 t!2512))

(declare-fun b_and!617 () Bool)

(assert (= b_and!607 (and (=> t!2512 result!333) b_and!617)))

(assert (=> d!1197 m!6875))

(assert (=> d!1197 m!6877))

(declare-fun m!6985 () Bool)

(assert (=> d!1197 m!6985))

(assert (=> d!1197 m!6883))

(declare-fun m!6987 () Bool)

(assert (=> b!10759 m!6987))

(assert (=> b!10674 d!1197))

(declare-fun d!1209 () Bool)

(assert (=> d!1209 (= (head!759 kvs!4) (h!880 kvs!4))))

(assert (=> b!10674 d!1209))

(declare-fun d!1211 () Bool)

(declare-fun res!9087 () Bool)

(declare-fun e!6282 () Bool)

(assert (=> d!1211 (=> res!9087 e!6282)))

(assert (=> d!1211 (= res!9087 ((_ is Nil!315) (toList!168 lm!227)))))

(assert (=> d!1211 (= (forall!42 (toList!168 lm!227) p!216) e!6282)))

(declare-fun b!10762 () Bool)

(declare-fun e!6283 () Bool)

(assert (=> b!10762 (= e!6282 e!6283)))

(declare-fun res!9088 () Bool)

(assert (=> b!10762 (=> (not res!9088) (not e!6283))))

(assert (=> b!10762 (= res!9088 (dynLambda!57 p!216 (h!880 (toList!168 lm!227))))))

(declare-fun b!10763 () Bool)

(assert (=> b!10763 (= e!6283 (forall!42 (t!2489 (toList!168 lm!227)) p!216))))

(assert (= (and d!1211 (not res!9087)) b!10762))

(assert (= (and b!10762 res!9088) b!10763))

(declare-fun b_lambda!445 () Bool)

(assert (=> (not b_lambda!445) (not b!10762)))

(declare-fun t!2514 () Bool)

(declare-fun tb!193 () Bool)

(assert (=> (and start!1310 (= p!216 p!216) t!2514) tb!193))

(declare-fun result!335 () Bool)

(assert (=> tb!193 (= result!335 true)))

(assert (=> b!10762 t!2514))

(declare-fun b_and!619 () Bool)

(assert (= b_and!617 (and (=> t!2514 result!335) b_and!619)))

(declare-fun m!6989 () Bool)

(assert (=> b!10762 m!6989))

(declare-fun m!6991 () Bool)

(assert (=> b!10763 m!6991))

(assert (=> start!1310 d!1211))

(declare-fun d!1213 () Bool)

(declare-fun isStrictlySorted!33 (List!318) Bool)

(assert (=> d!1213 (= (inv!511 lm!227) (isStrictlySorted!33 (toList!168 lm!227)))))

(declare-fun bs!401 () Bool)

(assert (= bs!401 d!1213))

(declare-fun m!6993 () Bool)

(assert (=> bs!401 m!6993))

(assert (=> start!1310 d!1213))

(declare-fun b!10768 () Bool)

(declare-fun e!6286 () Bool)

(declare-fun tp!1666 () Bool)

(assert (=> b!10768 (= e!6286 (and tp_is_empty!525 tp!1666))))

(assert (=> b!10676 (= tp!1644 e!6286)))

(assert (= (and b!10676 ((_ is Cons!314) (toList!168 lm!227))) b!10768))

(declare-fun b!10769 () Bool)

(declare-fun e!6287 () Bool)

(declare-fun tp!1667 () Bool)

(assert (=> b!10769 (= e!6287 (and tp_is_empty!525 tp!1667))))

(assert (=> b!10675 (= tp!1645 e!6287)))

(assert (= (and b!10675 ((_ is Cons!314) (t!2489 kvs!4))) b!10769))

(declare-fun b_lambda!447 () Bool)

(assert (= b_lambda!417 (or (and start!1310 b_free!411) b_lambda!447)))

(declare-fun b_lambda!449 () Bool)

(assert (= b_lambda!435 (or (and start!1310 b_free!411) b_lambda!449)))

(declare-fun b_lambda!451 () Bool)

(assert (= b_lambda!445 (or (and start!1310 b_free!411) b_lambda!451)))

(declare-fun b_lambda!453 () Bool)

(assert (= b_lambda!413 (or (and start!1310 b_free!411) b_lambda!453)))

(check-sat (not b_lambda!449) b_and!619 (not b!10715) (not b_next!411) (not b!10736) (not b_lambda!447) tp_is_empty!525 (not d!1197) (not d!1213) (not b!10711) (not b!10763) (not b_lambda!451) (not d!1189) (not b!10737) (not b!10768) (not b_lambda!453) (not b!10769))
(check-sat b_and!619 (not b_next!411))
