; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87920 () Bool)

(assert start!87920)

(declare-fun b!1015364 () Bool)

(assert (=> b!1015364 true))

(assert (=> b!1015364 true))

(declare-fun res!681174 () Bool)

(declare-fun e!571228 () Bool)

(assert (=> start!87920 (=> (not res!681174) (not e!571228))))

(declare-datatypes ((B!1464 0))(
  ( (B!1465 (val!11816 Int)) )
))
(declare-datatypes ((tuple2!15268 0))(
  ( (tuple2!15269 (_1!7644 (_ BitVec 64)) (_2!7644 B!1464)) )
))
(declare-datatypes ((List!21578 0))(
  ( (Nil!21575) (Cons!21574 (h!22772 tuple2!15268) (t!30587 List!21578)) )
))
(declare-fun l!412 () List!21578)

(declare-fun isStrictlySorted!586 (List!21578) Bool)

(assert (=> start!87920 (= res!681174 (isStrictlySorted!586 l!412))))

(assert (=> start!87920 e!571228))

(declare-fun e!571229 () Bool)

(assert (=> start!87920 e!571229))

(declare-fun tp_is_empty!23531 () Bool)

(assert (=> start!87920 tp_is_empty!23531))

(declare-fun b!1015363 () Bool)

(declare-fun res!681175 () Bool)

(assert (=> b!1015363 (=> (not res!681175) (not e!571228))))

(declare-fun value!115 () B!1464)

(assert (=> b!1015363 (= res!681175 (and (or (not (is-Cons!21574 l!412)) (not (= (_2!7644 (h!22772 l!412)) value!115))) (or (not (is-Cons!21574 l!412)) (= (_2!7644 (h!22772 l!412)) value!115)) (is-Nil!21575 l!412)))))

(declare-fun lambda!899 () Int)

(declare-datatypes ((List!21579 0))(
  ( (Nil!21576) (Cons!21575 (h!22773 (_ BitVec 64)) (t!30588 List!21579)) )
))
(declare-fun forall!258 (List!21579 Int) Bool)

(assert (=> b!1015364 (= e!571228 (not (forall!258 Nil!21576 lambda!899)))))

(declare-fun b!1015365 () Bool)

(declare-fun tp!70617 () Bool)

(assert (=> b!1015365 (= e!571229 (and tp_is_empty!23531 tp!70617))))

(assert (= (and start!87920 res!681174) b!1015363))

(assert (= (and b!1015363 res!681175) b!1015364))

(assert (= (and start!87920 (is-Cons!21574 l!412)) b!1015365))

(declare-fun m!937631 () Bool)

(assert (=> start!87920 m!937631))

(declare-fun m!937633 () Bool)

(assert (=> b!1015364 m!937633))

(push 1)

(assert (not start!87920))

(assert (not b!1015364))

(assert (not b!1015365))

(assert tp_is_empty!23531)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120933 () Bool)

(declare-fun res!681189 () Bool)

(declare-fun e!571243 () Bool)

(assert (=> d!120933 (=> res!681189 e!571243)))

(assert (=> d!120933 (= res!681189 (or (is-Nil!21575 l!412) (is-Nil!21575 (t!30587 l!412))))))

(assert (=> d!120933 (= (isStrictlySorted!586 l!412) e!571243)))

(declare-fun b!1015383 () Bool)

(declare-fun e!571245 () Bool)

(assert (=> b!1015383 (= e!571243 e!571245)))

(declare-fun res!681191 () Bool)

(assert (=> b!1015383 (=> (not res!681191) (not e!571245))))

(assert (=> b!1015383 (= res!681191 (bvslt (_1!7644 (h!22772 l!412)) (_1!7644 (h!22772 (t!30587 l!412)))))))

(declare-fun b!1015385 () Bool)

(assert (=> b!1015385 (= e!571245 (isStrictlySorted!586 (t!30587 l!412)))))

(assert (= (and d!120933 (not res!681189)) b!1015383))

(assert (= (and b!1015383 res!681191) b!1015385))

(declare-fun m!937636 () Bool)

(assert (=> b!1015385 m!937636))

(assert (=> start!87920 d!120933))

(declare-fun d!120940 () Bool)

(declare-fun res!681204 () Bool)

(declare-fun e!571258 () Bool)

(assert (=> d!120940 (=> res!681204 e!571258)))

(assert (=> d!120940 (= res!681204 (is-Nil!21576 Nil!21576))))

(assert (=> d!120940 (= (forall!258 Nil!21576 lambda!899) e!571258)))

(declare-fun b!1015398 () Bool)

(declare-fun e!571259 () Bool)

(assert (=> b!1015398 (= e!571258 e!571259)))

(declare-fun res!681205 () Bool)

(assert (=> b!1015398 (=> (not res!681205) (not e!571259))))

(declare-fun dynLambda!1905 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015398 (= res!681205 (dynLambda!1905 lambda!899 (h!22773 Nil!21576)))))

(declare-fun b!1015399 () Bool)

(assert (=> b!1015399 (= e!571259 (forall!258 (t!30588 Nil!21576) lambda!899))))

(assert (= (and d!120940 (not res!681204)) b!1015398))

(assert (= (and b!1015398 res!681205) b!1015399))

(declare-fun b_lambda!15449 () Bool)

(assert (=> (not b_lambda!15449) (not b!1015398)))

(declare-fun m!937645 () Bool)

(assert (=> b!1015398 m!937645))

(declare-fun m!937649 () Bool)

(assert (=> b!1015399 m!937649))

(assert (=> b!1015364 d!120940))

(declare-fun b!1015414 () Bool)

(declare-fun e!571270 () Bool)

(declare-fun tp!70622 () Bool)

(assert (=> b!1015414 (= e!571270 (and tp_is_empty!23531 tp!70622))))

(assert (=> b!1015365 (= tp!70617 e!571270)))

(assert (= (and b!1015365 (is-Cons!21574 (t!30587 l!412))) b!1015414))

(declare-fun b_lambda!15453 () Bool)

(assert (= b_lambda!15449 (or b!1015364 b_lambda!15453)))

(declare-fun bs!29432 () Bool)

(declare-fun d!120947 () Bool)

(assert (= bs!29432 (and d!120947 b!1015364)))

(declare-datatypes ((Option!589 0))(
  ( (Some!588 (v!14437 B!1464)) (None!587) )
))
(declare-fun getValueByKey!538 (List!21578 (_ BitVec 64)) Option!589)

(assert (=> bs!29432 (= (dynLambda!1905 lambda!899 (h!22773 Nil!21576)) (= (getValueByKey!538 l!412 (h!22773 Nil!21576)) (Some!588 value!115)))))

(declare-fun m!937654 () Bool)

(assert (=> bs!29432 m!937654))

(assert (=> b!1015398 d!120947))

(push 1)

