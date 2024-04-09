; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1352 () Bool)

(assert start!1352)

(declare-fun b_free!417 () Bool)

(declare-fun b_next!417 () Bool)

(assert (=> start!1352 (= b_free!417 (not b_next!417))))

(declare-fun tp!1683 () Bool)

(declare-fun b_and!623 () Bool)

(assert (=> start!1352 (= tp!1683 b_and!623)))

(declare-fun res!9105 () Bool)

(declare-fun e!6305 () Bool)

(assert (=> start!1352 (=> (not res!9105) (not e!6305))))

(declare-datatypes ((B!358 0))(
  ( (B!359 (val!274 Int)) )
))
(declare-datatypes ((tuple2!330 0))(
  ( (tuple2!331 (_1!165 (_ BitVec 64)) (_2!165 B!358)) )
))
(declare-datatypes ((List!321 0))(
  ( (Nil!318) (Cons!317 (h!883 tuple2!330) (t!2516 List!321)) )
))
(declare-datatypes ((ListLongMap!311 0))(
  ( (ListLongMap!312 (toList!171 List!321)) )
))
(declare-fun lm!227 () ListLongMap!311)

(declare-fun p!216 () Int)

(declare-fun forall!45 (List!321 Int) Bool)

(assert (=> start!1352 (= res!9105 (forall!45 (toList!171 lm!227) p!216))))

(assert (=> start!1352 e!6305))

(declare-fun e!6304 () Bool)

(declare-fun inv!519 (ListLongMap!311) Bool)

(assert (=> start!1352 (and (inv!519 lm!227) e!6304)))

(assert (=> start!1352 tp!1683))

(declare-fun e!6303 () Bool)

(assert (=> start!1352 e!6303))

(declare-fun b!10795 () Bool)

(declare-fun kvs!4 () List!321)

(assert (=> b!10795 (= e!6305 (not (not (= kvs!4 Nil!318))))))

(declare-fun lt!2667 () ListLongMap!311)

(declare-fun lt!2666 () tuple2!330)

(declare-fun +!18 (ListLongMap!311 tuple2!330) ListLongMap!311)

(assert (=> b!10795 (= lt!2667 (+!18 lm!227 lt!2666))))

(assert (=> b!10795 (forall!45 (toList!171 (+!18 lm!227 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))) p!216)))

(declare-datatypes ((Unit!223 0))(
  ( (Unit!224) )
))
(declare-fun lt!2665 () Unit!223)

(declare-fun addValidProp!6 (ListLongMap!311 Int (_ BitVec 64) B!358) Unit!223)

(assert (=> b!10795 (= lt!2665 (addValidProp!6 lm!227 p!216 (_1!165 lt!2666) (_2!165 lt!2666)))))

(declare-fun head!762 (List!321) tuple2!330)

(assert (=> b!10795 (= lt!2666 (head!762 kvs!4))))

(declare-fun b!10796 () Bool)

(declare-fun tp_is_empty!531 () Bool)

(declare-fun tp!1685 () Bool)

(assert (=> b!10796 (= e!6303 (and tp_is_empty!531 tp!1685))))

(declare-fun b!10797 () Bool)

(declare-fun tp!1684 () Bool)

(assert (=> b!10797 (= e!6304 tp!1684)))

(declare-fun b!10798 () Bool)

(declare-fun res!9106 () Bool)

(assert (=> b!10798 (=> (not res!9106) (not e!6305))))

(declare-fun isEmpty!55 (List!321) Bool)

(assert (=> b!10798 (= res!9106 (not (isEmpty!55 kvs!4)))))

(declare-fun b!10799 () Bool)

(declare-fun res!9104 () Bool)

(assert (=> b!10799 (=> (not res!9104) (not e!6305))))

(assert (=> b!10799 (= res!9104 (forall!45 kvs!4 p!216))))

(assert (= (and start!1352 res!9105) b!10799))

(assert (= (and b!10799 res!9104) b!10798))

(assert (= (and b!10798 res!9106) b!10795))

(assert (= start!1352 b!10797))

(get-info :version)

(assert (= (and start!1352 ((_ is Cons!317) kvs!4)) b!10796))

(declare-fun m!7013 () Bool)

(assert (=> start!1352 m!7013))

(declare-fun m!7015 () Bool)

(assert (=> start!1352 m!7015))

(declare-fun m!7017 () Bool)

(assert (=> b!10795 m!7017))

(declare-fun m!7019 () Bool)

(assert (=> b!10795 m!7019))

(declare-fun m!7021 () Bool)

(assert (=> b!10795 m!7021))

(declare-fun m!7023 () Bool)

(assert (=> b!10795 m!7023))

(declare-fun m!7025 () Bool)

(assert (=> b!10795 m!7025))

(declare-fun m!7027 () Bool)

(assert (=> b!10798 m!7027))

(declare-fun m!7029 () Bool)

(assert (=> b!10799 m!7029))

(check-sat (not b!10797) (not start!1352) tp_is_empty!531 (not b_next!417) (not b!10799) b_and!623 (not b!10795) (not b!10798) (not b!10796))
(check-sat b_and!623 (not b_next!417))
(get-model)

(declare-fun d!1219 () Bool)

(assert (=> d!1219 (= (isEmpty!55 kvs!4) ((_ is Nil!318) kvs!4))))

(assert (=> b!10798 d!1219))

(declare-fun d!1221 () Bool)

(declare-fun res!9126 () Bool)

(declare-fun e!6325 () Bool)

(assert (=> d!1221 (=> res!9126 e!6325)))

(assert (=> d!1221 (= res!9126 ((_ is Nil!318) (toList!171 lm!227)))))

(assert (=> d!1221 (= (forall!45 (toList!171 lm!227) p!216) e!6325)))

(declare-fun b!10825 () Bool)

(declare-fun e!6326 () Bool)

(assert (=> b!10825 (= e!6325 e!6326)))

(declare-fun res!9127 () Bool)

(assert (=> b!10825 (=> (not res!9127) (not e!6326))))

(declare-fun dynLambda!58 (Int tuple2!330) Bool)

(assert (=> b!10825 (= res!9127 (dynLambda!58 p!216 (h!883 (toList!171 lm!227))))))

(declare-fun b!10826 () Bool)

(assert (=> b!10826 (= e!6326 (forall!45 (t!2516 (toList!171 lm!227)) p!216))))

(assert (= (and d!1221 (not res!9126)) b!10825))

(assert (= (and b!10825 res!9127) b!10826))

(declare-fun b_lambda!457 () Bool)

(assert (=> (not b_lambda!457) (not b!10825)))

(declare-fun t!2521 () Bool)

(declare-fun tb!197 () Bool)

(assert (=> (and start!1352 (= p!216 p!216) t!2521) tb!197))

(declare-fun result!341 () Bool)

(assert (=> tb!197 (= result!341 true)))

(assert (=> b!10825 t!2521))

(declare-fun b_and!629 () Bool)

(assert (= b_and!623 (and (=> t!2521 result!341) b_and!629)))

(declare-fun m!7051 () Bool)

(assert (=> b!10825 m!7051))

(declare-fun m!7053 () Bool)

(assert (=> b!10826 m!7053))

(assert (=> start!1352 d!1221))

(declare-fun d!1225 () Bool)

(declare-fun isStrictlySorted!34 (List!321) Bool)

(assert (=> d!1225 (= (inv!519 lm!227) (isStrictlySorted!34 (toList!171 lm!227)))))

(declare-fun bs!405 () Bool)

(assert (= bs!405 d!1225))

(declare-fun m!7057 () Bool)

(assert (=> bs!405 m!7057))

(assert (=> start!1352 d!1225))

(declare-fun d!1231 () Bool)

(declare-fun res!9130 () Bool)

(declare-fun e!6329 () Bool)

(assert (=> d!1231 (=> res!9130 e!6329)))

(assert (=> d!1231 (= res!9130 ((_ is Nil!318) kvs!4))))

(assert (=> d!1231 (= (forall!45 kvs!4 p!216) e!6329)))

(declare-fun b!10829 () Bool)

(declare-fun e!6330 () Bool)

(assert (=> b!10829 (= e!6329 e!6330)))

(declare-fun res!9131 () Bool)

(assert (=> b!10829 (=> (not res!9131) (not e!6330))))

(assert (=> b!10829 (= res!9131 (dynLambda!58 p!216 (h!883 kvs!4)))))

(declare-fun b!10830 () Bool)

(assert (=> b!10830 (= e!6330 (forall!45 (t!2516 kvs!4) p!216))))

(assert (= (and d!1231 (not res!9130)) b!10829))

(assert (= (and b!10829 res!9131) b!10830))

(declare-fun b_lambda!461 () Bool)

(assert (=> (not b_lambda!461) (not b!10829)))

(declare-fun t!2525 () Bool)

(declare-fun tb!201 () Bool)

(assert (=> (and start!1352 (= p!216 p!216) t!2525) tb!201))

(declare-fun result!345 () Bool)

(assert (=> tb!201 (= result!345 true)))

(assert (=> b!10829 t!2525))

(declare-fun b_and!633 () Bool)

(assert (= b_and!629 (and (=> t!2525 result!345) b_and!633)))

(declare-fun m!7063 () Bool)

(assert (=> b!10829 m!7063))

(declare-fun m!7065 () Bool)

(assert (=> b!10830 m!7065))

(assert (=> b!10799 d!1231))

(declare-fun d!1235 () Bool)

(declare-fun res!9132 () Bool)

(declare-fun e!6331 () Bool)

(assert (=> d!1235 (=> res!9132 e!6331)))

(assert (=> d!1235 (= res!9132 ((_ is Nil!318) (toList!171 (+!18 lm!227 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))))))))

(assert (=> d!1235 (= (forall!45 (toList!171 (+!18 lm!227 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))) p!216) e!6331)))

(declare-fun b!10831 () Bool)

(declare-fun e!6332 () Bool)

(assert (=> b!10831 (= e!6331 e!6332)))

(declare-fun res!9133 () Bool)

(assert (=> b!10831 (=> (not res!9133) (not e!6332))))

(assert (=> b!10831 (= res!9133 (dynLambda!58 p!216 (h!883 (toList!171 (+!18 lm!227 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))))))))

(declare-fun b!10832 () Bool)

(assert (=> b!10832 (= e!6332 (forall!45 (t!2516 (toList!171 (+!18 lm!227 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))))) p!216))))

(assert (= (and d!1235 (not res!9132)) b!10831))

(assert (= (and b!10831 res!9133) b!10832))

(declare-fun b_lambda!463 () Bool)

(assert (=> (not b_lambda!463) (not b!10831)))

(declare-fun t!2527 () Bool)

(declare-fun tb!203 () Bool)

(assert (=> (and start!1352 (= p!216 p!216) t!2527) tb!203))

(declare-fun result!347 () Bool)

(assert (=> tb!203 (= result!347 true)))

(assert (=> b!10831 t!2527))

(declare-fun b_and!635 () Bool)

(assert (= b_and!633 (and (=> t!2527 result!347) b_and!635)))

(declare-fun m!7067 () Bool)

(assert (=> b!10831 m!7067))

(declare-fun m!7069 () Bool)

(assert (=> b!10832 m!7069))

(assert (=> b!10795 d!1235))

(declare-fun d!1237 () Bool)

(declare-fun e!6341 () Bool)

(assert (=> d!1237 e!6341))

(declare-fun res!9144 () Bool)

(assert (=> d!1237 (=> (not res!9144) (not e!6341))))

(declare-fun lt!2693 () ListLongMap!311)

(declare-fun contains!138 (ListLongMap!311 (_ BitVec 64)) Bool)

(assert (=> d!1237 (= res!9144 (contains!138 lt!2693 (_1!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))))))

(declare-fun lt!2692 () List!321)

(assert (=> d!1237 (= lt!2693 (ListLongMap!312 lt!2692))))

(declare-fun lt!2691 () Unit!223)

(declare-fun lt!2694 () Unit!223)

(assert (=> d!1237 (= lt!2691 lt!2694)))

(declare-datatypes ((Option!26 0))(
  ( (Some!25 (v!1340 B!358)) (None!24) )
))
(declare-fun getValueByKey!20 (List!321 (_ BitVec 64)) Option!26)

(assert (=> d!1237 (= (getValueByKey!20 lt!2692 (_1!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))) (Some!25 (_2!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!4 (List!321 (_ BitVec 64) B!358) Unit!223)

(assert (=> d!1237 (= lt!2694 (lemmaContainsTupThenGetReturnValue!4 lt!2692 (_1!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))) (_2!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))))))

(declare-fun insertStrictlySorted!4 (List!321 (_ BitVec 64) B!358) List!321)

(assert (=> d!1237 (= lt!2692 (insertStrictlySorted!4 (toList!171 lm!227) (_1!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))) (_2!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))))))

(assert (=> d!1237 (= (+!18 lm!227 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))) lt!2693)))

(declare-fun b!10845 () Bool)

(declare-fun res!9145 () Bool)

(assert (=> b!10845 (=> (not res!9145) (not e!6341))))

(assert (=> b!10845 (= res!9145 (= (getValueByKey!20 (toList!171 lt!2693) (_1!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))) (Some!25 (_2!165 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))))))))

(declare-fun b!10846 () Bool)

(declare-fun contains!139 (List!321 tuple2!330) Bool)

(assert (=> b!10846 (= e!6341 (contains!139 (toList!171 lt!2693) (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))))))

(assert (= (and d!1237 res!9144) b!10845))

(assert (= (and b!10845 res!9145) b!10846))

(declare-fun m!7081 () Bool)

(assert (=> d!1237 m!7081))

(declare-fun m!7083 () Bool)

(assert (=> d!1237 m!7083))

(declare-fun m!7085 () Bool)

(assert (=> d!1237 m!7085))

(declare-fun m!7087 () Bool)

(assert (=> d!1237 m!7087))

(declare-fun m!7089 () Bool)

(assert (=> b!10845 m!7089))

(declare-fun m!7091 () Bool)

(assert (=> b!10846 m!7091))

(assert (=> b!10795 d!1237))

(declare-fun d!1247 () Bool)

(assert (=> d!1247 (= (head!762 kvs!4) (h!883 kvs!4))))

(assert (=> b!10795 d!1247))

(declare-fun d!1249 () Bool)

(assert (=> d!1249 (forall!45 (toList!171 (+!18 lm!227 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666)))) p!216)))

(declare-fun lt!2713 () Unit!223)

(declare-fun choose!152 (ListLongMap!311 Int (_ BitVec 64) B!358) Unit!223)

(assert (=> d!1249 (= lt!2713 (choose!152 lm!227 p!216 (_1!165 lt!2666) (_2!165 lt!2666)))))

(declare-fun e!6348 () Bool)

(assert (=> d!1249 e!6348))

(declare-fun res!9156 () Bool)

(assert (=> d!1249 (=> (not res!9156) (not e!6348))))

(assert (=> d!1249 (= res!9156 (forall!45 (toList!171 lm!227) p!216))))

(assert (=> d!1249 (= (addValidProp!6 lm!227 p!216 (_1!165 lt!2666) (_2!165 lt!2666)) lt!2713)))

(declare-fun b!10858 () Bool)

(assert (=> b!10858 (= e!6348 (dynLambda!58 p!216 (tuple2!331 (_1!165 lt!2666) (_2!165 lt!2666))))))

(assert (= (and d!1249 res!9156) b!10858))

(declare-fun b_lambda!469 () Bool)

(assert (=> (not b_lambda!469) (not b!10858)))

(declare-fun t!2533 () Bool)

(declare-fun tb!209 () Bool)

(assert (=> (and start!1352 (= p!216 p!216) t!2533) tb!209))

(declare-fun result!353 () Bool)

(assert (=> tb!209 (= result!353 true)))

(assert (=> b!10858 t!2533))

(declare-fun b_and!641 () Bool)

(assert (= b_and!635 (and (=> t!2533 result!353) b_and!641)))

(assert (=> d!1249 m!7021))

(assert (=> d!1249 m!7017))

(declare-fun m!7093 () Bool)

(assert (=> d!1249 m!7093))

(assert (=> d!1249 m!7013))

(declare-fun m!7095 () Bool)

(assert (=> b!10858 m!7095))

(assert (=> b!10795 d!1249))

(declare-fun d!1251 () Bool)

(declare-fun e!6349 () Bool)

(assert (=> d!1251 e!6349))

(declare-fun res!9157 () Bool)

(assert (=> d!1251 (=> (not res!9157) (not e!6349))))

(declare-fun lt!2716 () ListLongMap!311)

(assert (=> d!1251 (= res!9157 (contains!138 lt!2716 (_1!165 lt!2666)))))

(declare-fun lt!2715 () List!321)

(assert (=> d!1251 (= lt!2716 (ListLongMap!312 lt!2715))))

(declare-fun lt!2714 () Unit!223)

(declare-fun lt!2717 () Unit!223)

(assert (=> d!1251 (= lt!2714 lt!2717)))

(assert (=> d!1251 (= (getValueByKey!20 lt!2715 (_1!165 lt!2666)) (Some!25 (_2!165 lt!2666)))))

(assert (=> d!1251 (= lt!2717 (lemmaContainsTupThenGetReturnValue!4 lt!2715 (_1!165 lt!2666) (_2!165 lt!2666)))))

(assert (=> d!1251 (= lt!2715 (insertStrictlySorted!4 (toList!171 lm!227) (_1!165 lt!2666) (_2!165 lt!2666)))))

(assert (=> d!1251 (= (+!18 lm!227 lt!2666) lt!2716)))

(declare-fun b!10859 () Bool)

(declare-fun res!9158 () Bool)

(assert (=> b!10859 (=> (not res!9158) (not e!6349))))

(assert (=> b!10859 (= res!9158 (= (getValueByKey!20 (toList!171 lt!2716) (_1!165 lt!2666)) (Some!25 (_2!165 lt!2666))))))

(declare-fun b!10860 () Bool)

(assert (=> b!10860 (= e!6349 (contains!139 (toList!171 lt!2716) lt!2666))))

(assert (= (and d!1251 res!9157) b!10859))

(assert (= (and b!10859 res!9158) b!10860))

(declare-fun m!7097 () Bool)

(assert (=> d!1251 m!7097))

(declare-fun m!7099 () Bool)

(assert (=> d!1251 m!7099))

(declare-fun m!7101 () Bool)

(assert (=> d!1251 m!7101))

(declare-fun m!7103 () Bool)

(assert (=> d!1251 m!7103))

(declare-fun m!7105 () Bool)

(assert (=> b!10859 m!7105))

(declare-fun m!7107 () Bool)

(assert (=> b!10860 m!7107))

(assert (=> b!10795 d!1251))

(declare-fun b!10867 () Bool)

(declare-fun e!6353 () Bool)

(declare-fun tp!1697 () Bool)

(assert (=> b!10867 (= e!6353 (and tp_is_empty!531 tp!1697))))

(assert (=> b!10796 (= tp!1685 e!6353)))

(assert (= (and b!10796 ((_ is Cons!317) (t!2516 kvs!4))) b!10867))

(declare-fun b!10870 () Bool)

(declare-fun e!6356 () Bool)

(declare-fun tp!1698 () Bool)

(assert (=> b!10870 (= e!6356 (and tp_is_empty!531 tp!1698))))

(assert (=> b!10797 (= tp!1684 e!6356)))

(assert (= (and b!10797 ((_ is Cons!317) (toList!171 lm!227))) b!10870))

(declare-fun b_lambda!473 () Bool)

(assert (= b_lambda!469 (or (and start!1352 b_free!417) b_lambda!473)))

(declare-fun b_lambda!475 () Bool)

(assert (= b_lambda!457 (or (and start!1352 b_free!417) b_lambda!475)))

(declare-fun b_lambda!477 () Bool)

(assert (= b_lambda!461 (or (and start!1352 b_free!417) b_lambda!477)))

(declare-fun b_lambda!479 () Bool)

(assert (= b_lambda!463 (or (and start!1352 b_free!417) b_lambda!479)))

(check-sat tp_is_empty!531 (not b_next!417) (not d!1249) (not d!1237) (not b_lambda!479) (not b!10870) (not b!10859) (not d!1251) (not b!10826) (not b_lambda!477) (not b_lambda!473) (not b!10846) (not b!10845) (not b!10832) (not b!10860) (not b_lambda!475) (not b!10867) b_and!641 (not d!1225) (not b!10830))
(check-sat b_and!641 (not b_next!417))
