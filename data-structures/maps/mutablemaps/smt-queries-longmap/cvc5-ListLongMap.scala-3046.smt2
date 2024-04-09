; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42746 () Bool)

(assert start!42746)

(declare-fun b_free!12085 () Bool)

(declare-fun b_next!12085 () Bool)

(assert (=> start!42746 (= b_free!12085 (not b_next!12085))))

(declare-fun tp!42310 () Bool)

(declare-fun b_and!20645 () Bool)

(assert (=> start!42746 (= tp!42310 b_and!20645)))

(declare-fun res!284415 () Bool)

(declare-fun e!279790 () Bool)

(assert (=> start!42746 (=> (not res!284415) (not e!279790))))

(declare-datatypes ((B!1034 0))(
  ( (B!1035 (val!6801 Int)) )
))
(declare-datatypes ((tuple2!8972 0))(
  ( (tuple2!8973 (_1!4496 (_ BitVec 64)) (_2!4496 B!1034)) )
))
(declare-datatypes ((List!9075 0))(
  ( (Nil!9072) (Cons!9071 (h!9927 tuple2!8972) (t!15075 List!9075)) )
))
(declare-datatypes ((ListLongMap!7899 0))(
  ( (ListLongMap!7900 (toList!3965 List!9075)) )
))
(declare-fun lm!215 () ListLongMap!7899)

(declare-fun p!166 () Int)

(declare-fun forall!188 (List!9075 Int) Bool)

(assert (=> start!42746 (= res!284415 (forall!188 (toList!3965 lm!215) p!166))))

(assert (=> start!42746 e!279790))

(declare-fun e!279791 () Bool)

(declare-fun inv!15471 (ListLongMap!7899) Bool)

(assert (=> start!42746 (and (inv!15471 lm!215) e!279791)))

(assert (=> start!42746 tp!42310))

(assert (=> start!42746 true))

(declare-fun tp_is_empty!13507 () Bool)

(assert (=> start!42746 tp_is_empty!13507))

(declare-fun b!476341 () Bool)

(declare-fun res!284416 () Bool)

(assert (=> b!476341 (=> (not res!284416) (not e!279790))))

(declare-fun b!85 () B!1034)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!934 (Int tuple2!8972) Bool)

(assert (=> b!476341 (= res!284416 (dynLambda!934 p!166 (tuple2!8973 a!501 b!85)))))

(declare-fun b!476342 () Bool)

(declare-fun size!15120 (List!9075) Int)

(assert (=> b!476342 (= e!279790 (< (size!15120 (toList!3965 lm!215)) 0))))

(declare-fun b!476343 () Bool)

(declare-fun tp!42309 () Bool)

(assert (=> b!476343 (= e!279791 tp!42309)))

(assert (= (and start!42746 res!284415) b!476341))

(assert (= (and b!476341 res!284416) b!476342))

(assert (= start!42746 b!476343))

(declare-fun b_lambda!10401 () Bool)

(assert (=> (not b_lambda!10401) (not b!476341)))

(declare-fun t!15074 () Bool)

(declare-fun tb!3957 () Bool)

(assert (=> (and start!42746 (= p!166 p!166) t!15074) tb!3957))

(declare-fun result!7501 () Bool)

(assert (=> tb!3957 (= result!7501 true)))

(assert (=> b!476341 t!15074))

(declare-fun b_and!20647 () Bool)

(assert (= b_and!20645 (and (=> t!15074 result!7501) b_and!20647)))

(declare-fun m!458679 () Bool)

(assert (=> start!42746 m!458679))

(declare-fun m!458681 () Bool)

(assert (=> start!42746 m!458681))

(declare-fun m!458683 () Bool)

(assert (=> b!476341 m!458683))

(declare-fun m!458685 () Bool)

(assert (=> b!476342 m!458685))

(push 1)

(assert b_and!20647)

(assert (not b_lambda!10401))

(assert tp_is_empty!13507)

(assert (not b!476343))

(assert (not start!42746))

(assert (not b!476342))

(assert (not b_next!12085))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20647)

(assert (not b_next!12085))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10409 () Bool)

(assert (= b_lambda!10401 (or (and start!42746 b_free!12085) b_lambda!10409)))

(push 1)

(assert b_and!20647)

(assert (not b_lambda!10409))

(assert tp_is_empty!13507)

(assert (not b!476343))

(assert (not start!42746))

(assert (not b!476342))

(assert (not b_next!12085))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20647)

(assert (not b_next!12085))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75615 () Bool)

(declare-fun res!284433 () Bool)

(declare-fun e!279811 () Bool)

(assert (=> d!75615 (=> res!284433 e!279811)))

(assert (=> d!75615 (= res!284433 (is-Nil!9072 (toList!3965 lm!215)))))

(assert (=> d!75615 (= (forall!188 (toList!3965 lm!215) p!166) e!279811)))

(declare-fun b!476372 () Bool)

(declare-fun e!279812 () Bool)

(assert (=> b!476372 (= e!279811 e!279812)))

(declare-fun res!284434 () Bool)

(assert (=> b!476372 (=> (not res!284434) (not e!279812))))

(assert (=> b!476372 (= res!284434 (dynLambda!934 p!166 (h!9927 (toList!3965 lm!215))))))

(declare-fun b!476373 () Bool)

(assert (=> b!476373 (= e!279812 (forall!188 (t!15075 (toList!3965 lm!215)) p!166))))

(assert (= (and d!75615 (not res!284433)) b!476372))

(assert (= (and b!476372 res!284434) b!476373))

(declare-fun b_lambda!10413 () Bool)

(assert (=> (not b_lambda!10413) (not b!476372)))

(declare-fun t!15083 () Bool)

(declare-fun tb!3963 () Bool)

(assert (=> (and start!42746 (= p!166 p!166) t!15083) tb!3963))

(declare-fun result!7507 () Bool)

(assert (=> tb!3963 (= result!7507 true)))

(assert (=> b!476372 t!15083))

(declare-fun b_and!20657 () Bool)

(assert (= b_and!20647 (and (=> t!15083 result!7507) b_and!20657)))

(declare-fun m!458705 () Bool)

(assert (=> b!476372 m!458705))

(declare-fun m!458707 () Bool)

(assert (=> b!476373 m!458707))

(assert (=> start!42746 d!75615))

(declare-fun d!75621 () Bool)

(declare-fun isStrictlySorted!374 (List!9075) Bool)

(assert (=> d!75621 (= (inv!15471 lm!215) (isStrictlySorted!374 (toList!3965 lm!215)))))

(declare-fun bs!15125 () Bool)

(assert (= bs!15125 d!75621))

(declare-fun m!458713 () Bool)

(assert (=> bs!15125 m!458713))

(assert (=> start!42746 d!75621))

(declare-fun d!75625 () Bool)

(declare-fun lt!217267 () Int)

(assert (=> d!75625 (>= lt!217267 0)))

(declare-fun e!279827 () Int)

(assert (=> d!75625 (= lt!217267 e!279827)))

(declare-fun c!57277 () Bool)

(assert (=> d!75625 (= c!57277 (is-Nil!9072 (toList!3965 lm!215)))))

(assert (=> d!75625 (= (size!15120 (toList!3965 lm!215)) lt!217267)))

(declare-fun b!476390 () Bool)

(assert (=> b!476390 (= e!279827 0)))

(declare-fun b!476391 () Bool)

(assert (=> b!476391 (= e!279827 (+ 1 (size!15120 (t!15075 (toList!3965 lm!215)))))))

(assert (= (and d!75625 c!57277) b!476390))

(assert (= (and d!75625 (not c!57277)) b!476391))

(declare-fun m!458723 () Bool)

(assert (=> b!476391 m!458723))

(assert (=> b!476342 d!75625))

(declare-fun b!476405 () Bool)

(declare-fun e!279835 () Bool)

(declare-fun tp!42328 () Bool)

(assert (=> b!476405 (= e!279835 (and tp_is_empty!13507 tp!42328))))

(assert (=> b!476343 (= tp!42309 e!279835)))

(assert (= (and b!476343 (is-Cons!9071 (toList!3965 lm!215))) b!476405))

(declare-fun b_lambda!10421 () Bool)

(assert (= b_lambda!10413 (or (and start!42746 b_free!12085) b_lambda!10421)))

(push 1)

