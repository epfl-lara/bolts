; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42774 () Bool)

(assert start!42774)

(declare-fun b_free!12095 () Bool)

(declare-fun b_next!12095 () Bool)

(assert (=> start!42774 (= b_free!12095 (not b_next!12095))))

(declare-fun tp!42348 () Bool)

(declare-fun b_and!20671 () Bool)

(assert (=> start!42774 (= tp!42348 b_and!20671)))

(declare-fun res!284471 () Bool)

(declare-fun e!279857 () Bool)

(assert (=> start!42774 (=> (not res!284471) (not e!279857))))

(declare-datatypes ((B!1044 0))(
  ( (B!1045 (val!6806 Int)) )
))
(declare-datatypes ((tuple2!8982 0))(
  ( (tuple2!8983 (_1!4501 (_ BitVec 64)) (_2!4501 B!1044)) )
))
(declare-datatypes ((List!9080 0))(
  ( (Nil!9077) (Cons!9076 (h!9932 tuple2!8982) (t!15096 List!9080)) )
))
(declare-datatypes ((ListLongMap!7909 0))(
  ( (ListLongMap!7910 (toList!3970 List!9080)) )
))
(declare-fun lm!215 () ListLongMap!7909)

(declare-fun p!166 () Int)

(declare-fun forall!193 (List!9080 Int) Bool)

(assert (=> start!42774 (= res!284471 (forall!193 (toList!3970 lm!215) p!166))))

(assert (=> start!42774 e!279857))

(declare-fun e!279856 () Bool)

(declare-fun inv!15481 (ListLongMap!7909) Bool)

(assert (=> start!42774 (and (inv!15481 lm!215) e!279856)))

(assert (=> start!42774 tp!42348))

(assert (=> start!42774 true))

(declare-fun tp_is_empty!13517 () Bool)

(assert (=> start!42774 tp_is_empty!13517))

(declare-fun b!476448 () Bool)

(declare-fun tp!42349 () Bool)

(assert (=> b!476448 (= e!279856 tp!42349)))

(declare-fun b!476447 () Bool)

(declare-fun tail!115 (ListLongMap!7909) ListLongMap!7909)

(assert (=> b!476447 (= e!279857 (not (forall!193 (toList!3970 (tail!115 lm!215)) p!166)))))

(declare-fun b!476446 () Bool)

(declare-fun res!284472 () Bool)

(assert (=> b!476446 (=> (not res!284472) (not e!279857))))

(declare-fun isEmpty!596 (ListLongMap!7909) Bool)

(assert (=> b!476446 (= res!284472 (not (isEmpty!596 lm!215)))))

(declare-fun b!476445 () Bool)

(declare-fun res!284473 () Bool)

(assert (=> b!476445 (=> (not res!284473) (not e!279857))))

(declare-fun b!85 () B!1044)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!939 (Int tuple2!8982) Bool)

(assert (=> b!476445 (= res!284473 (dynLambda!939 p!166 (tuple2!8983 a!501 b!85)))))

(assert (= (and start!42774 res!284471) b!476445))

(assert (= (and b!476445 res!284473) b!476446))

(assert (= (and b!476446 res!284472) b!476447))

(assert (= start!42774 b!476448))

(declare-fun b_lambda!10429 () Bool)

(assert (=> (not b_lambda!10429) (not b!476445)))

(declare-fun t!15095 () Bool)

(declare-fun tb!3973 () Bool)

(assert (=> (and start!42774 (= p!166 p!166) t!15095) tb!3973))

(declare-fun result!7523 () Bool)

(assert (=> tb!3973 (= result!7523 true)))

(assert (=> b!476445 t!15095))

(declare-fun b_and!20673 () Bool)

(assert (= b_and!20671 (and (=> t!15095 result!7523) b_and!20673)))

(declare-fun m!458751 () Bool)

(assert (=> start!42774 m!458751))

(declare-fun m!458753 () Bool)

(assert (=> start!42774 m!458753))

(declare-fun m!458755 () Bool)

(assert (=> b!476447 m!458755))

(declare-fun m!458757 () Bool)

(assert (=> b!476447 m!458757))

(declare-fun m!458759 () Bool)

(assert (=> b!476446 m!458759))

(declare-fun m!458761 () Bool)

(assert (=> b!476445 m!458761))

(push 1)

(assert (not start!42774))

(assert (not b!476447))

(assert (not b_lambda!10429))

(assert (not b!476448))

(assert (not b!476446))

(assert (not b_next!12095))

(assert tp_is_empty!13517)

(assert b_and!20673)

(check-sat)

(pop 1)

(push 1)

(assert b_and!20673)

(assert (not b_next!12095))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10433 () Bool)

(assert (= b_lambda!10429 (or (and start!42774 b_free!12095) b_lambda!10433)))

(push 1)

(assert (not start!42774))

(assert (not b!476447))

(assert (not b!476448))

(assert (not b!476446))

(assert (not b_next!12095))

(assert tp_is_empty!13517)

(assert b_and!20673)

(assert (not b_lambda!10433))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20673)

(assert (not b_next!12095))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75635 () Bool)

(declare-fun res!284484 () Bool)

(declare-fun e!279868 () Bool)

(assert (=> d!75635 (=> res!284484 e!279868)))

(assert (=> d!75635 (= res!284484 (is-Nil!9077 (toList!3970 (tail!115 lm!215))))))

(assert (=> d!75635 (= (forall!193 (toList!3970 (tail!115 lm!215)) p!166) e!279868)))

(declare-fun b!476459 () Bool)

(declare-fun e!279869 () Bool)

(assert (=> b!476459 (= e!279868 e!279869)))

(declare-fun res!284485 () Bool)

(assert (=> b!476459 (=> (not res!284485) (not e!279869))))

(assert (=> b!476459 (= res!284485 (dynLambda!939 p!166 (h!9932 (toList!3970 (tail!115 lm!215)))))))

(declare-fun b!476460 () Bool)

(assert (=> b!476460 (= e!279869 (forall!193 (t!15096 (toList!3970 (tail!115 lm!215))) p!166))))

(assert (= (and d!75635 (not res!284484)) b!476459))

(assert (= (and b!476459 res!284485) b!476460))

(declare-fun b_lambda!10439 () Bool)

(assert (=> (not b_lambda!10439) (not b!476459)))

(declare-fun t!15100 () Bool)

(declare-fun tb!3977 () Bool)

(assert (=> (and start!42774 (= p!166 p!166) t!15100) tb!3977))

(declare-fun result!7527 () Bool)

(assert (=> tb!3977 (= result!7527 true)))

(assert (=> b!476459 t!15100))

(declare-fun b_and!20677 () Bool)

(assert (= b_and!20673 (and (=> t!15100 result!7527) b_and!20677)))

(declare-fun m!458769 () Bool)

(assert (=> b!476459 m!458769))

(declare-fun m!458771 () Bool)

(assert (=> b!476460 m!458771))

(assert (=> b!476447 d!75635))

(declare-fun d!75641 () Bool)

(declare-fun tail!117 (List!9080) List!9080)

(assert (=> d!75641 (= (tail!115 lm!215) (ListLongMap!7910 (tail!117 (toList!3970 lm!215))))))

(declare-fun bs!15133 () Bool)

(assert (= bs!15133 d!75641))

(declare-fun m!458777 () Bool)

(assert (=> bs!15133 m!458777))

(assert (=> b!476447 d!75641))

(declare-fun d!75647 () Bool)

(declare-fun isEmpty!599 (List!9080) Bool)

(assert (=> d!75647 (= (isEmpty!596 lm!215) (isEmpty!599 (toList!3970 lm!215)))))

(declare-fun bs!15134 () Bool)

(assert (= bs!15134 d!75647))

(declare-fun m!458781 () Bool)

(assert (=> bs!15134 m!458781))

(assert (=> b!476446 d!75647))

(declare-fun d!75651 () Bool)

(declare-fun res!284492 () Bool)

(declare-fun e!279876 () Bool)

(assert (=> d!75651 (=> res!284492 e!279876)))

(assert (=> d!75651 (= res!284492 (is-Nil!9077 (toList!3970 lm!215)))))

(assert (=> d!75651 (= (forall!193 (toList!3970 lm!215) p!166) e!279876)))

(declare-fun b!476467 () Bool)

(declare-fun e!279877 () Bool)

(assert (=> b!476467 (= e!279876 e!279877)))

(declare-fun res!284493 () Bool)

(assert (=> b!476467 (=> (not res!284493) (not e!279877))))

(assert (=> b!476467 (= res!284493 (dynLambda!939 p!166 (h!9932 (toList!3970 lm!215))))))

(declare-fun b!476468 () Bool)

(assert (=> b!476468 (= e!279877 (forall!193 (t!15096 (toList!3970 lm!215)) p!166))))

(assert (= (and d!75651 (not res!284492)) b!476467))

(assert (= (and b!476467 res!284493) b!476468))

(declare-fun b_lambda!10443 () Bool)

(assert (=> (not b_lambda!10443) (not b!476467)))

(declare-fun t!15104 () Bool)

(declare-fun tb!3981 () Bool)

(assert (=> (and start!42774 (= p!166 p!166) t!15104) tb!3981))

(declare-fun result!7531 () Bool)

(assert (=> tb!3981 (= result!7531 true)))

(assert (=> b!476467 t!15104))

(declare-fun b_and!20681 () Bool)

(assert (= b_and!20677 (and (=> t!15104 result!7531) b_and!20681)))

(declare-fun m!458783 () Bool)

(assert (=> b!476467 m!458783))

(declare-fun m!458787 () Bool)

(assert (=> b!476468 m!458787))

(assert (=> start!42774 d!75651))

(declare-fun d!75653 () Bool)

(declare-fun isStrictlySorted!379 (List!9080) Bool)

(assert (=> d!75653 (= (inv!15481 lm!215) (isStrictlySorted!379 (toList!3970 lm!215)))))

(declare-fun bs!15137 () Bool)

(assert (= bs!15137 d!75653))

(declare-fun m!458795 () Bool)

(assert (=> bs!15137 m!458795))

(assert (=> start!42774 d!75653))

(declare-fun b!476480 () Bool)

(declare-fun e!279885 () Bool)

(declare-fun tp!42355 () Bool)

(assert (=> b!476480 (= e!279885 (and tp_is_empty!13517 tp!42355))))

(assert (=> b!476448 (= tp!42349 e!279885)))

(assert (= (and b!476448 (is-Cons!9076 (toList!3970 lm!215))) b!476480))

(declare-fun b_lambda!10451 () Bool)

(assert (= b_lambda!10439 (or (and start!42774 b_free!12095) b_lambda!10451)))

(declare-fun b_lambda!10453 () Bool)

(assert (= b_lambda!10443 (or (and start!42774 b_free!12095) b_lambda!10453)))

(push 1)

(assert (not b_lambda!10451))

(assert (not d!75647))

(assert (not b!476460))

(assert b_and!20681)

(assert (not d!75641))

(assert (not d!75653))

(assert (not b_next!12095))

(assert tp_is_empty!13517)

(assert (not b_lambda!10453))

(assert (not b_lambda!10433))

(assert (not b!476468))

(assert (not b!476480))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20681)

(assert (not b_next!12095))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75683 () Bool)

(declare-fun res!284518 () Bool)

(declare-fun e!279913 () Bool)

(assert (=> d!75683 (=> res!284518 e!279913)))

(assert (=> d!75683 (= res!284518 (is-Nil!9077 (t!15096 (toList!3970 lm!215))))))

(assert (=> d!75683 (= (forall!193 (t!15096 (toList!3970 lm!215)) p!166) e!279913)))

(declare-fun b!476510 () Bool)

(declare-fun e!279914 () Bool)

(assert (=> b!476510 (= e!279913 e!279914)))

(declare-fun res!284519 () Bool)

(assert (=> b!476510 (=> (not res!284519) (not e!279914))))

(assert (=> b!476510 (= res!284519 (dynLambda!939 p!166 (h!9932 (t!15096 (toList!3970 lm!215)))))))

