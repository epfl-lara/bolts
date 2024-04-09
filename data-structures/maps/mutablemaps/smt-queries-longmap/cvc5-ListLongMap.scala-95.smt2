; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1422 () Bool)

(assert start!1422)

(declare-fun b_free!433 () Bool)

(declare-fun b_next!433 () Bool)

(assert (=> start!1422 (= b_free!433 (not b_next!433))))

(declare-fun tp!1780 () Bool)

(declare-fun b_and!675 () Bool)

(assert (=> start!1422 (= tp!1780 b_and!675)))

(declare-fun b!11059 () Bool)

(declare-fun e!6492 () Bool)

(declare-fun tp!1779 () Bool)

(assert (=> b!11059 (= e!6492 tp!1779)))

(declare-fun b!11060 () Bool)

(declare-fun e!6494 () Bool)

(declare-fun p!216 () Int)

(declare-datatypes ((B!374 0))(
  ( (B!375 (val!282 Int)) )
))
(declare-datatypes ((tuple2!346 0))(
  ( (tuple2!347 (_1!173 (_ BitVec 64)) (_2!173 B!374)) )
))
(declare-datatypes ((List!329 0))(
  ( (Nil!326) (Cons!325 (h!891 tuple2!346) (t!2562 List!329)) )
))
(declare-fun kvs!4 () List!329)

(declare-fun dynLambda!64 (Int tuple2!346) Bool)

(declare-fun head!767 (List!329) tuple2!346)

(assert (=> b!11060 (= e!6494 (not (dynLambda!64 p!216 (head!767 kvs!4))))))

(declare-fun res!9263 () Bool)

(assert (=> start!1422 (=> (not res!9263) (not e!6494))))

(declare-datatypes ((ListLongMap!327 0))(
  ( (ListLongMap!328 (toList!179 List!329)) )
))
(declare-fun lm!227 () ListLongMap!327)

(declare-fun forall!53 (List!329 Int) Bool)

(assert (=> start!1422 (= res!9263 (forall!53 (toList!179 lm!227) p!216))))

(assert (=> start!1422 e!6494))

(declare-fun inv!542 (ListLongMap!327) Bool)

(assert (=> start!1422 (and (inv!542 lm!227) e!6492)))

(assert (=> start!1422 tp!1780))

(declare-fun e!6493 () Bool)

(assert (=> start!1422 e!6493))

(declare-fun b!11061 () Bool)

(declare-fun tp_is_empty!547 () Bool)

(declare-fun tp!1781 () Bool)

(assert (=> b!11061 (= e!6493 (and tp_is_empty!547 tp!1781))))

(declare-fun b!11062 () Bool)

(declare-fun res!9265 () Bool)

(assert (=> b!11062 (=> (not res!9265) (not e!6494))))

(assert (=> b!11062 (= res!9265 (forall!53 kvs!4 p!216))))

(declare-fun b!11063 () Bool)

(declare-fun res!9264 () Bool)

(assert (=> b!11063 (=> (not res!9264) (not e!6494))))

(declare-fun isEmpty!60 (List!329) Bool)

(assert (=> b!11063 (= res!9264 (not (isEmpty!60 kvs!4)))))

(assert (= (and start!1422 res!9263) b!11062))

(assert (= (and b!11062 res!9265) b!11063))

(assert (= (and b!11063 res!9264) b!11060))

(assert (= start!1422 b!11059))

(assert (= (and start!1422 (is-Cons!325 kvs!4)) b!11061))

(declare-fun b_lambda!527 () Bool)

(assert (=> (not b_lambda!527) (not b!11060)))

(declare-fun t!2561 () Bool)

(declare-fun tb!231 () Bool)

(assert (=> (and start!1422 (= p!216 p!216) t!2561) tb!231))

(declare-fun result!387 () Bool)

(assert (=> tb!231 (= result!387 true)))

(assert (=> b!11060 t!2561))

(declare-fun b_and!677 () Bool)

(assert (= b_and!675 (and (=> t!2561 result!387) b_and!677)))

(declare-fun m!7295 () Bool)

(assert (=> b!11060 m!7295))

(assert (=> b!11060 m!7295))

(declare-fun m!7297 () Bool)

(assert (=> b!11060 m!7297))

(declare-fun m!7299 () Bool)

(assert (=> start!1422 m!7299))

(declare-fun m!7301 () Bool)

(assert (=> start!1422 m!7301))

(declare-fun m!7303 () Bool)

(assert (=> b!11062 m!7303))

(declare-fun m!7305 () Bool)

(assert (=> b!11063 m!7305))

(push 1)

(assert b_and!677)

(assert (not b!11063))

(assert (not b!11059))

(assert (not start!1422))

(assert tp_is_empty!547)

(assert (not b!11061))

(assert (not b!11060))

(assert (not b_lambda!527))

(assert (not b!11062))

(assert (not b_next!433))

(check-sat)

(pop 1)

(push 1)

(assert b_and!677)

(assert (not b_next!433))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!533 () Bool)

(assert (= b_lambda!527 (or (and start!1422 b_free!433) b_lambda!533)))

(push 1)

(assert b_and!677)

(assert (not b!11060))

(assert (not b!11063))

(assert (not b!11059))

(assert (not start!1422))

(assert tp_is_empty!547)

(assert (not b!11061))

(assert (not b_lambda!533))

(assert (not b!11062))

(assert (not b_next!433))

(check-sat)

(pop 1)

(push 1)

(assert b_and!677)

(assert (not b_next!433))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1301 () Bool)

(assert (=> d!1301 (= (head!767 kvs!4) (h!891 kvs!4))))

(assert (=> b!11060 d!1301))

(declare-fun d!1303 () Bool)

(declare-fun res!9288 () Bool)

(declare-fun e!6517 () Bool)

(assert (=> d!1303 (=> res!9288 e!6517)))

(assert (=> d!1303 (= res!9288 (is-Nil!326 kvs!4))))

(assert (=> d!1303 (= (forall!53 kvs!4 p!216) e!6517)))

(declare-fun b!11098 () Bool)

(declare-fun e!6518 () Bool)

(assert (=> b!11098 (= e!6517 e!6518)))

(declare-fun res!9289 () Bool)

(assert (=> b!11098 (=> (not res!9289) (not e!6518))))

(assert (=> b!11098 (= res!9289 (dynLambda!64 p!216 (h!891 kvs!4)))))

(declare-fun b!11099 () Bool)

(assert (=> b!11099 (= e!6518 (forall!53 (t!2562 kvs!4) p!216))))

(assert (= (and d!1303 (not res!9288)) b!11098))

(assert (= (and b!11098 res!9289) b!11099))

(declare-fun b_lambda!539 () Bool)

(assert (=> (not b_lambda!539) (not b!11098)))

(declare-fun t!2570 () Bool)

(declare-fun tb!237 () Bool)

(assert (=> (and start!1422 (= p!216 p!216) t!2570) tb!237))

(declare-fun result!393 () Bool)

(assert (=> tb!237 (= result!393 true)))

(assert (=> b!11098 t!2570))

(declare-fun b_and!687 () Bool)

(assert (= b_and!677 (and (=> t!2570 result!393) b_and!687)))

(declare-fun m!7331 () Bool)

(assert (=> b!11098 m!7331))

(declare-fun m!7333 () Bool)

(assert (=> b!11099 m!7333))

(assert (=> b!11062 d!1303))

(declare-fun d!1313 () Bool)

(declare-fun res!9294 () Bool)

(declare-fun e!6523 () Bool)

(assert (=> d!1313 (=> res!9294 e!6523)))

(assert (=> d!1313 (= res!9294 (is-Nil!326 (toList!179 lm!227)))))

(assert (=> d!1313 (= (forall!53 (toList!179 lm!227) p!216) e!6523)))

(declare-fun b!11104 () Bool)

(declare-fun e!6524 () Bool)

(assert (=> b!11104 (= e!6523 e!6524)))

(declare-fun res!9295 () Bool)

(assert (=> b!11104 (=> (not res!9295) (not e!6524))))

(assert (=> b!11104 (= res!9295 (dynLambda!64 p!216 (h!891 (toList!179 lm!227))))))

(declare-fun b!11105 () Bool)

(assert (=> b!11105 (= e!6524 (forall!53 (t!2562 (toList!179 lm!227)) p!216))))

(assert (= (and d!1313 (not res!9294)) b!11104))

(assert (= (and b!11104 res!9295) b!11105))

(declare-fun b_lambda!541 () Bool)

(assert (=> (not b_lambda!541) (not b!11104)))

(declare-fun t!2572 () Bool)

(declare-fun tb!239 () Bool)

(assert (=> (and start!1422 (= p!216 p!216) t!2572) tb!239))

(declare-fun result!395 () Bool)

(assert (=> tb!239 (= result!395 true)))

(assert (=> b!11104 t!2572))

(declare-fun b_and!689 () Bool)

(assert (= b_and!687 (and (=> t!2572 result!395) b_and!689)))

(declare-fun m!7335 () Bool)

(assert (=> b!11104 m!7335))

(declare-fun m!7337 () Bool)

(assert (=> b!11105 m!7337))

(assert (=> start!1422 d!1313))

(declare-fun d!1315 () Bool)

(declare-fun isStrictlySorted!40 (List!329) Bool)

(assert (=> d!1315 (= (inv!542 lm!227) (isStrictlySorted!40 (toList!179 lm!227)))))

(declare-fun bs!420 () Bool)

(assert (= bs!420 d!1315))

(declare-fun m!7343 () Bool)

(assert (=> bs!420 m!7343))

(assert (=> start!1422 d!1315))

(declare-fun d!1319 () Bool)

(assert (=> d!1319 (= (isEmpty!60 kvs!4) (is-Nil!326 kvs!4))))

(assert (=> b!11063 d!1319))

(declare-fun b!11120 () Bool)

(declare-fun e!6537 () Bool)

(declare-fun tp!1802 () Bool)

(assert (=> b!11120 (= e!6537 (and tp_is_empty!547 tp!1802))))

(assert (=> b!11059 (= tp!1779 e!6537)))

(assert (= (and b!11059 (is-Cons!325 (toList!179 lm!227))) b!11120))

(declare-fun b!11123 () Bool)

(declare-fun e!6538 () Bool)

(declare-fun tp!1803 () Bool)

(assert (=> b!11123 (= e!6538 (and tp_is_empty!547 tp!1803))))

(assert (=> b!11061 (= tp!1781 e!6538)))

(assert (= (and b!11061 (is-Cons!325 (t!2562 kvs!4))) b!11123))

(declare-fun b_lambda!549 () Bool)

(assert (= b_lambda!541 (or (and start!1422 b_free!433) b_lambda!549)))

(declare-fun b_lambda!551 () Bool)

(assert (= b_lambda!539 (or (and start!1422 b_free!433) b_lambda!551)))

(push 1)

