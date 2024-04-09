; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!184 () Bool)

(assert start!184)

(declare-fun b_free!31 () Bool)

(declare-fun b_next!31 () Bool)

(assert (=> start!184 (= b_free!31 (not b_next!31))))

(declare-fun tp!106 () Bool)

(declare-fun b_and!61 () Bool)

(assert (=> start!184 (= tp!106 b_and!61)))

(declare-fun b!1885 () Bool)

(declare-fun res!4427 () Bool)

(declare-fun e!392 () Bool)

(assert (=> b!1885 (=> (not res!4427) (not e!392))))

(declare-datatypes ((B!266 0))(
  ( (B!267 (val!15 Int)) )
))
(declare-datatypes ((tuple2!30 0))(
  ( (tuple2!31 (_1!15 (_ BitVec 64)) (_2!15 B!266)) )
))
(declare-datatypes ((List!24 0))(
  ( (Nil!21) (Cons!20 (h!586 tuple2!30) (t!2049 List!24)) )
))
(declare-datatypes ((ListLongMap!35 0))(
  ( (ListLongMap!36 (toList!33 List!24)) )
))
(declare-fun lm!258 () ListLongMap!35)

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!746 (List!24) tuple2!30)

(assert (=> b!1885 (= res!4427 (not (= (_1!15 (head!746 (toList!33 lm!258))) k!394)))))

(declare-fun b!1886 () Bool)

(declare-fun p!318 () Int)

(declare-fun forall!17 (List!24 Int) Bool)

(declare-fun tail!32 (ListLongMap!35) ListLongMap!35)

(assert (=> b!1886 (= e!392 (not (forall!17 (toList!33 (tail!32 lm!258)) p!318)))))

(declare-fun res!4425 () Bool)

(assert (=> start!184 (=> (not res!4425) (not e!392))))

(assert (=> start!184 (= res!4425 (forall!17 (toList!33 lm!258) p!318))))

(assert (=> start!184 e!392))

(declare-fun e!393 () Bool)

(declare-fun inv!55 (ListLongMap!35) Bool)

(assert (=> start!184 (and (inv!55 lm!258) e!393)))

(assert (=> start!184 tp!106))

(assert (=> start!184 true))

(declare-fun b!1884 () Bool)

(declare-fun res!4426 () Bool)

(assert (=> b!1884 (=> (not res!4426) (not e!392))))

(declare-fun isEmpty!19 (ListLongMap!35) Bool)

(assert (=> b!1884 (= res!4426 (not (isEmpty!19 lm!258)))))

(declare-fun b!1887 () Bool)

(declare-fun tp!107 () Bool)

(assert (=> b!1887 (= e!393 tp!107)))

(assert (= (and start!184 res!4425) b!1884))

(assert (= (and b!1884 res!4426) b!1885))

(assert (= (and b!1885 res!4427) b!1886))

(assert (= start!184 b!1887))

(declare-fun m!531 () Bool)

(assert (=> b!1885 m!531))

(declare-fun m!533 () Bool)

(assert (=> b!1886 m!533))

(declare-fun m!535 () Bool)

(assert (=> b!1886 m!535))

(declare-fun m!537 () Bool)

(assert (=> start!184 m!537))

(declare-fun m!539 () Bool)

(assert (=> start!184 m!539))

(declare-fun m!541 () Bool)

(assert (=> b!1884 m!541))

(push 1)

(assert (not b_next!31))

(assert (not b!1886))

(assert (not b!1887))

(assert (not start!184))

(assert (not b!1884))

(assert (not b!1885))

(assert b_and!61)

(check-sat)

(pop 1)

(push 1)

(assert b_and!61)

(assert (not b_next!31))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185 () Bool)

(declare-fun res!4454 () Bool)

(declare-fun e!414 () Bool)

(assert (=> d!185 (=> res!4454 e!414)))

(assert (=> d!185 (= res!4454 (is-Nil!21 (toList!33 (tail!32 lm!258))))))

(assert (=> d!185 (= (forall!17 (toList!33 (tail!32 lm!258)) p!318) e!414)))

(declare-fun b!1920 () Bool)

(declare-fun e!415 () Bool)

(assert (=> b!1920 (= e!414 e!415)))

(declare-fun res!4455 () Bool)

(assert (=> b!1920 (=> (not res!4455) (not e!415))))

(declare-fun dynLambda!11 (Int tuple2!30) Bool)

(assert (=> b!1920 (= res!4455 (dynLambda!11 p!318 (h!586 (toList!33 (tail!32 lm!258)))))))

(declare-fun b!1921 () Bool)

(assert (=> b!1921 (= e!415 (forall!17 (t!2049 (toList!33 (tail!32 lm!258))) p!318))))

(assert (= (and d!185 (not res!4454)) b!1920))

(assert (= (and b!1920 res!4455) b!1921))

(declare-fun b_lambda!61 () Bool)

(assert (=> (not b_lambda!61) (not b!1920)))

(declare-fun t!2053 () Bool)

(declare-fun tb!25 () Bool)

(assert (=> (and start!184 (= p!318 p!318) t!2053) tb!25))

(declare-fun result!43 () Bool)

(assert (=> tb!25 (= result!43 true)))

(assert (=> b!1920 t!2053))

(declare-fun b_and!69 () Bool)

(assert (= b_and!61 (and (=> t!2053 result!43) b_and!69)))

(declare-fun m!571 () Bool)

(assert (=> b!1920 m!571))

(declare-fun m!575 () Bool)

(assert (=> b!1921 m!575))

(assert (=> b!1886 d!185))

(declare-fun d!195 () Bool)

(declare-fun tail!36 (List!24) List!24)

(assert (=> d!195 (= (tail!32 lm!258) (ListLongMap!36 (tail!36 (toList!33 lm!258))))))

(declare-fun bs!53 () Bool)

(assert (= bs!53 d!195))

(declare-fun m!583 () Bool)

(assert (=> bs!53 m!583))

(assert (=> b!1886 d!195))

(declare-fun d!201 () Bool)

(declare-fun res!4466 () Bool)

(declare-fun e!426 () Bool)

(assert (=> d!201 (=> res!4466 e!426)))

(assert (=> d!201 (= res!4466 (is-Nil!21 (toList!33 lm!258)))))

(assert (=> d!201 (= (forall!17 (toList!33 lm!258) p!318) e!426)))

(declare-fun b!1932 () Bool)

(declare-fun e!427 () Bool)

(assert (=> b!1932 (= e!426 e!427)))

(declare-fun res!4467 () Bool)

(assert (=> b!1932 (=> (not res!4467) (not e!427))))

(assert (=> b!1932 (= res!4467 (dynLambda!11 p!318 (h!586 (toList!33 lm!258))))))

(declare-fun b!1933 () Bool)

(assert (=> b!1933 (= e!427 (forall!17 (t!2049 (toList!33 lm!258)) p!318))))

(assert (= (and d!201 (not res!4466)) b!1932))

(assert (= (and b!1932 res!4467) b!1933))

(declare-fun b_lambda!69 () Bool)

(assert (=> (not b_lambda!69) (not b!1932)))

(declare-fun t!2061 () Bool)

(declare-fun tb!33 () Bool)

(assert (=> (and start!184 (= p!318 p!318) t!2061) tb!33))

(declare-fun result!51 () Bool)

(assert (=> tb!33 (= result!51 true)))

(assert (=> b!1932 t!2061))

(declare-fun b_and!75 () Bool)

(assert (= b_and!69 (and (=> t!2061 result!51) b_and!75)))

(declare-fun m!589 () Bool)

(assert (=> b!1932 m!589))

(declare-fun m!591 () Bool)

(assert (=> b!1933 m!591))

(assert (=> start!184 d!201))

(declare-fun d!205 () Bool)

(declare-fun isStrictlySorted!9 (List!24) Bool)

(assert (=> d!205 (= (inv!55 lm!258) (isStrictlySorted!9 (toList!33 lm!258)))))

(declare-fun bs!56 () Bool)

(assert (= bs!56 d!205))

(declare-fun m!601 () Bool)

(assert (=> bs!56 m!601))

(assert (=> start!184 d!205))

(declare-fun d!213 () Bool)

(assert (=> d!213 (= (head!746 (toList!33 lm!258)) (h!586 (toList!33 lm!258)))))

(assert (=> b!1885 d!213))

(declare-fun d!217 () Bool)

(declare-fun isEmpty!24 (List!24) Bool)

(assert (=> d!217 (= (isEmpty!19 lm!258) (isEmpty!24 (toList!33 lm!258)))))

(declare-fun bs!59 () Bool)

(assert (= bs!59 d!217))

(declare-fun m!607 () Bool)

(assert (=> bs!59 m!607))

(assert (=> b!1884 d!217))

(declare-fun b!1950 () Bool)

(declare-fun e!438 () Bool)

(declare-fun tp_is_empty!23 () Bool)

(declare-fun tp!128 () Bool)

(assert (=> b!1950 (= e!438 (and tp_is_empty!23 tp!128))))

(assert (=> b!1887 (= tp!107 e!438)))

(assert (= (and b!1887 (is-Cons!20 (toList!33 lm!258))) b!1950))

(declare-fun b_lambda!81 () Bool)

(assert (= b_lambda!61 (or (and start!184 b_free!31) b_lambda!81)))

(declare-fun b_lambda!83 () Bool)

(assert (= b_lambda!69 (or (and start!184 b_free!31) b_lambda!83)))

(push 1)

(assert (not b_next!31))

(assert (not b!1933))

(assert (not b!1921))

(assert (not b!1950))

(assert (not d!205))

(assert (not b_lambda!81))

(assert tp_is_empty!23)

(assert (not b_lambda!83))

(assert (not d!217))

(assert b_and!75)

(assert (not d!195))

(check-sat)

(pop 1)

(push 1)

(assert b_and!75)

(assert (not b_next!31))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!225 () Bool)

(assert (=> d!225 (= (isEmpty!24 (toList!33 lm!258)) (is-Nil!21 (toList!33 lm!258)))))

(assert (=> d!217 d!225))

(declare-fun d!229 () Bool)

(declare-fun res!4480 () Bool)

(declare-fun e!449 () Bool)

(assert (=> d!229 (=> res!4480 e!449)))

(assert (=> d!229 (= res!4480 (is-Nil!21 (t!2049 (toList!33 (tail!32 lm!258)))))))

(assert (=> d!229 (= (forall!17 (t!2049 (toList!33 (tail!32 lm!258))) p!318) e!449)))

(declare-fun b!1961 () Bool)

(declare-fun e!450 () Bool)

(assert (=> b!1961 (= e!449 e!450)))

(declare-fun res!4481 () Bool)

(assert (=> b!1961 (=> (not res!4481) (not e!450))))

(assert (=> b!1961 (= res!4481 (dynLambda!11 p!318 (h!586 (t!2049 (toList!33 (tail!32 lm!258))))))))

(declare-fun b!1962 () Bool)

(assert (=> b!1962 (= e!450 (forall!17 (t!2049 (t!2049 (toList!33 (tail!32 lm!258)))) p!318))))

(assert (= (and d!229 (not res!4480)) b!1961))

(assert (= (and b!1961 res!4481) b!1962))

(declare-fun b_lambda!89 () Bool)

(assert (=> (not b_lambda!89) (not b!1961)))

(declare-fun t!2069 () Bool)

(declare-fun tb!41 () Bool)

(assert (=> (and start!184 (= p!318 p!318) t!2069) tb!41))

(declare-fun result!65 () Bool)

(assert (=> tb!41 (= result!65 true)))

(assert (=> b!1961 t!2069))

(declare-fun b_and!83 () Bool)

(assert (= b_and!75 (and (=> t!2069 result!65) b_and!83)))

(declare-fun m!619 () Bool)

(assert (=> b!1961 m!619))

(declare-fun m!621 () Bool)

(assert (=> b!1962 m!621))

(assert (=> b!1921 d!229))

(declare-fun d!233 () Bool)

(declare-fun res!4482 () Bool)

(declare-fun e!452 () Bool)

(assert (=> d!233 (=> res!4482 e!452)))

(assert (=> d!233 (= res!4482 (is-Nil!21 (t!2049 (toList!33 lm!258))))))

(assert (=> d!233 (= (forall!17 (t!2049 (toList!33 lm!258)) p!318) e!452)))

(declare-fun b!1964 () Bool)

(declare-fun e!453 () Bool)

(assert (=> b!1964 (= e!452 e!453)))

(declare-fun res!4483 () Bool)

(assert (=> b!1964 (=> (not res!4483) (not e!453))))

(assert (=> b!1964 (= res!4483 (dynLambda!11 p!318 (h!586 (t!2049 (toList!33 lm!258)))))))

(declare-fun b!1965 () Bool)

(assert (=> b!1965 (= e!453 (forall!17 (t!2049 (t!2049 (toList!33 lm!258))) p!318))))

(assert (= (and d!233 (not res!4482)) b!1964))

(assert (= (and b!1964 res!4483) b!1965))

(declare-fun b_lambda!95 () Bool)

(assert (=> (not b_lambda!95) (not b!1964)))

(declare-fun t!2071 () Bool)

(declare-fun tb!43 () Bool)

(assert (=> (and start!184 (= p!318 p!318) t!2071) tb!43))

(declare-fun result!67 () Bool)

(assert (=> tb!43 (= result!67 true)))

