; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42772 () Bool)

(assert start!42772)

(declare-fun b_free!12093 () Bool)

(declare-fun b_next!12093 () Bool)

(assert (=> start!42772 (= b_free!12093 (not b_next!12093))))

(declare-fun tp!42343 () Bool)

(declare-fun b_and!20667 () Bool)

(assert (=> start!42772 (= tp!42343 b_and!20667)))

(declare-fun b!476435 () Bool)

(declare-fun e!279851 () Bool)

(declare-datatypes ((B!1042 0))(
  ( (B!1043 (val!6805 Int)) )
))
(declare-datatypes ((tuple2!8980 0))(
  ( (tuple2!8981 (_1!4500 (_ BitVec 64)) (_2!4500 B!1042)) )
))
(declare-datatypes ((List!9079 0))(
  ( (Nil!9076) (Cons!9075 (h!9931 tuple2!8980) (t!15093 List!9079)) )
))
(declare-datatypes ((ListLongMap!7907 0))(
  ( (ListLongMap!7908 (toList!3969 List!9079)) )
))
(declare-fun lm!215 () ListLongMap!7907)

(declare-fun p!166 () Int)

(declare-fun forall!192 (List!9079 Int) Bool)

(declare-fun tail!114 (ListLongMap!7907) ListLongMap!7907)

(assert (=> b!476435 (= e!279851 (not (forall!192 (toList!3969 (tail!114 lm!215)) p!166)))))

(declare-fun b!476436 () Bool)

(declare-fun e!279850 () Bool)

(declare-fun tp!42342 () Bool)

(assert (=> b!476436 (= e!279850 tp!42342)))

(declare-fun b!476434 () Bool)

(declare-fun res!284464 () Bool)

(assert (=> b!476434 (=> (not res!284464) (not e!279851))))

(declare-fun isEmpty!595 (ListLongMap!7907) Bool)

(assert (=> b!476434 (= res!284464 (not (isEmpty!595 lm!215)))))

(declare-fun res!284463 () Bool)

(assert (=> start!42772 (=> (not res!284463) (not e!279851))))

(assert (=> start!42772 (= res!284463 (forall!192 (toList!3969 lm!215) p!166))))

(assert (=> start!42772 e!279851))

(declare-fun inv!15480 (ListLongMap!7907) Bool)

(assert (=> start!42772 (and (inv!15480 lm!215) e!279850)))

(assert (=> start!42772 tp!42343))

(assert (=> start!42772 true))

(declare-fun tp_is_empty!13515 () Bool)

(assert (=> start!42772 tp_is_empty!13515))

(declare-fun b!476433 () Bool)

(declare-fun res!284462 () Bool)

(assert (=> b!476433 (=> (not res!284462) (not e!279851))))

(declare-fun a!501 () (_ BitVec 64))

(declare-fun b!85 () B!1042)

(declare-fun dynLambda!938 (Int tuple2!8980) Bool)

(assert (=> b!476433 (= res!284462 (dynLambda!938 p!166 (tuple2!8981 a!501 b!85)))))

(assert (= (and start!42772 res!284463) b!476433))

(assert (= (and b!476433 res!284462) b!476434))

(assert (= (and b!476434 res!284464) b!476435))

(assert (= start!42772 b!476436))

(declare-fun b_lambda!10427 () Bool)

(assert (=> (not b_lambda!10427) (not b!476433)))

(declare-fun t!15092 () Bool)

(declare-fun tb!3971 () Bool)

(assert (=> (and start!42772 (= p!166 p!166) t!15092) tb!3971))

(declare-fun result!7521 () Bool)

(assert (=> tb!3971 (= result!7521 true)))

(assert (=> b!476433 t!15092))

(declare-fun b_and!20669 () Bool)

(assert (= b_and!20667 (and (=> t!15092 result!7521) b_and!20669)))

(declare-fun m!458739 () Bool)

(assert (=> b!476435 m!458739))

(declare-fun m!458741 () Bool)

(assert (=> b!476435 m!458741))

(declare-fun m!458743 () Bool)

(assert (=> b!476434 m!458743))

(declare-fun m!458745 () Bool)

(assert (=> start!42772 m!458745))

(declare-fun m!458747 () Bool)

(assert (=> start!42772 m!458747))

(declare-fun m!458749 () Bool)

(assert (=> b!476433 m!458749))

(check-sat b_and!20669 (not b!476434) (not b!476436) (not start!42772) (not b_lambda!10427) (not b_next!12093) (not b!476435) tp_is_empty!13515)
(check-sat b_and!20669 (not b_next!12093))
(get-model)

(declare-fun b_lambda!10435 () Bool)

(assert (= b_lambda!10427 (or (and start!42772 b_free!12093) b_lambda!10435)))

(check-sat b_and!20669 (not b!476434) (not b!476436) (not start!42772) (not b_lambda!10435) (not b_next!12093) (not b!476435) tp_is_empty!13515)
(check-sat b_and!20669 (not b_next!12093))
(get-model)

(declare-fun d!75643 () Bool)

(declare-fun res!284494 () Bool)

(declare-fun e!279878 () Bool)

(assert (=> d!75643 (=> res!284494 e!279878)))

(get-info :version)

(assert (=> d!75643 (= res!284494 ((_ is Nil!9076) (toList!3969 (tail!114 lm!215))))))

(assert (=> d!75643 (= (forall!192 (toList!3969 (tail!114 lm!215)) p!166) e!279878)))

(declare-fun b!476469 () Bool)

(declare-fun e!279879 () Bool)

(assert (=> b!476469 (= e!279878 e!279879)))

(declare-fun res!284495 () Bool)

(assert (=> b!476469 (=> (not res!284495) (not e!279879))))

(assert (=> b!476469 (= res!284495 (dynLambda!938 p!166 (h!9931 (toList!3969 (tail!114 lm!215)))))))

(declare-fun b!476470 () Bool)

(assert (=> b!476470 (= e!279879 (forall!192 (t!15093 (toList!3969 (tail!114 lm!215))) p!166))))

(assert (= (and d!75643 (not res!284494)) b!476469))

(assert (= (and b!476469 res!284495) b!476470))

(declare-fun b_lambda!10445 () Bool)

(assert (=> (not b_lambda!10445) (not b!476469)))

(declare-fun t!15106 () Bool)

(declare-fun tb!3983 () Bool)

(assert (=> (and start!42772 (= p!166 p!166) t!15106) tb!3983))

(declare-fun result!7535 () Bool)

(assert (=> tb!3983 (= result!7535 true)))

(assert (=> b!476469 t!15106))

(declare-fun b_and!20683 () Bool)

(assert (= b_and!20669 (and (=> t!15106 result!7535) b_and!20683)))

(declare-fun m!458789 () Bool)

(assert (=> b!476469 m!458789))

(declare-fun m!458791 () Bool)

(assert (=> b!476470 m!458791))

(assert (=> b!476435 d!75643))

(declare-fun d!75655 () Bool)

(declare-fun tail!118 (List!9079) List!9079)

(assert (=> d!75655 (= (tail!114 lm!215) (ListLongMap!7908 (tail!118 (toList!3969 lm!215))))))

(declare-fun bs!15136 () Bool)

(assert (= bs!15136 d!75655))

(declare-fun m!458793 () Bool)

(assert (=> bs!15136 m!458793))

(assert (=> b!476435 d!75655))

(declare-fun d!75657 () Bool)

(declare-fun isEmpty!598 (List!9079) Bool)

(assert (=> d!75657 (= (isEmpty!595 lm!215) (isEmpty!598 (toList!3969 lm!215)))))

(declare-fun bs!15138 () Bool)

(assert (= bs!15138 d!75657))

(declare-fun m!458797 () Bool)

(assert (=> bs!15138 m!458797))

(assert (=> b!476434 d!75657))

(declare-fun d!75659 () Bool)

(declare-fun res!284496 () Bool)

(declare-fun e!279886 () Bool)

(assert (=> d!75659 (=> res!284496 e!279886)))

(assert (=> d!75659 (= res!284496 ((_ is Nil!9076) (toList!3969 lm!215)))))

(assert (=> d!75659 (= (forall!192 (toList!3969 lm!215) p!166) e!279886)))

(declare-fun b!476481 () Bool)

(declare-fun e!279887 () Bool)

(assert (=> b!476481 (= e!279886 e!279887)))

(declare-fun res!284497 () Bool)

(assert (=> b!476481 (=> (not res!284497) (not e!279887))))

(assert (=> b!476481 (= res!284497 (dynLambda!938 p!166 (h!9931 (toList!3969 lm!215))))))

(declare-fun b!476482 () Bool)

(assert (=> b!476482 (= e!279887 (forall!192 (t!15093 (toList!3969 lm!215)) p!166))))

(assert (= (and d!75659 (not res!284496)) b!476481))

(assert (= (and b!476481 res!284497) b!476482))

(declare-fun b_lambda!10455 () Bool)

(assert (=> (not b_lambda!10455) (not b!476481)))

(declare-fun t!15108 () Bool)

(declare-fun tb!3985 () Bool)

(assert (=> (and start!42772 (= p!166 p!166) t!15108) tb!3985))

(declare-fun result!7539 () Bool)

(assert (=> tb!3985 (= result!7539 true)))

(assert (=> b!476481 t!15108))

(declare-fun b_and!20685 () Bool)

(assert (= b_and!20683 (and (=> t!15108 result!7539) b_and!20685)))

(declare-fun m!458799 () Bool)

(assert (=> b!476481 m!458799))

(declare-fun m!458801 () Bool)

(assert (=> b!476482 m!458801))

(assert (=> start!42772 d!75659))

(declare-fun d!75661 () Bool)

(declare-fun isStrictlySorted!378 (List!9079) Bool)

(assert (=> d!75661 (= (inv!15480 lm!215) (isStrictlySorted!378 (toList!3969 lm!215)))))

(declare-fun bs!15139 () Bool)

(assert (= bs!15139 d!75661))

(declare-fun m!458803 () Bool)

(assert (=> bs!15139 m!458803))

(assert (=> start!42772 d!75661))

(declare-fun b!476487 () Bool)

(declare-fun e!279890 () Bool)

(declare-fun tp!42358 () Bool)

(assert (=> b!476487 (= e!279890 (and tp_is_empty!13515 tp!42358))))

(assert (=> b!476436 (= tp!42342 e!279890)))

(assert (= (and b!476436 ((_ is Cons!9075) (toList!3969 lm!215))) b!476487))

(declare-fun b_lambda!10457 () Bool)

(assert (= b_lambda!10455 (or (and start!42772 b_free!12093) b_lambda!10457)))

(declare-fun b_lambda!10459 () Bool)

(assert (= b_lambda!10445 (or (and start!42772 b_free!12093) b_lambda!10459)))

(check-sat (not b_lambda!10459) (not d!75655) (not d!75661) b_and!20685 tp_is_empty!13515 (not b!476487) (not b_lambda!10457) (not b_next!12093) (not b!476482) (not d!75657) (not b_lambda!10435) (not b!476470))
(check-sat b_and!20685 (not b_next!12093))
(get-model)

(declare-fun d!75673 () Bool)

(declare-fun res!284502 () Bool)

(declare-fun e!279895 () Bool)

(assert (=> d!75673 (=> res!284502 e!279895)))

(assert (=> d!75673 (= res!284502 ((_ is Nil!9076) (t!15093 (toList!3969 (tail!114 lm!215)))))))

(assert (=> d!75673 (= (forall!192 (t!15093 (toList!3969 (tail!114 lm!215))) p!166) e!279895)))

(declare-fun b!476492 () Bool)

(declare-fun e!279896 () Bool)

(assert (=> b!476492 (= e!279895 e!279896)))

(declare-fun res!284503 () Bool)

(assert (=> b!476492 (=> (not res!284503) (not e!279896))))

(assert (=> b!476492 (= res!284503 (dynLambda!938 p!166 (h!9931 (t!15093 (toList!3969 (tail!114 lm!215))))))))

(declare-fun b!476493 () Bool)

(assert (=> b!476493 (= e!279896 (forall!192 (t!15093 (t!15093 (toList!3969 (tail!114 lm!215)))) p!166))))

(assert (= (and d!75673 (not res!284502)) b!476492))

(assert (= (and b!476492 res!284503) b!476493))

(declare-fun b_lambda!10465 () Bool)

(assert (=> (not b_lambda!10465) (not b!476492)))

(declare-fun t!15114 () Bool)

(declare-fun tb!3991 () Bool)

(assert (=> (and start!42772 (= p!166 p!166) t!15114) tb!3991))

(declare-fun result!7547 () Bool)

(assert (=> tb!3991 (= result!7547 true)))

(assert (=> b!476492 t!15114))

(declare-fun b_and!20691 () Bool)

(assert (= b_and!20685 (and (=> t!15114 result!7547) b_and!20691)))

(declare-fun m!458813 () Bool)

(assert (=> b!476492 m!458813))

(declare-fun m!458815 () Bool)

(assert (=> b!476493 m!458815))

(assert (=> b!476470 d!75673))

(declare-fun d!75675 () Bool)

(assert (=> d!75675 (= (isEmpty!598 (toList!3969 lm!215)) ((_ is Nil!9076) (toList!3969 lm!215)))))

(assert (=> d!75657 d!75675))

(declare-fun d!75677 () Bool)

(declare-fun res!284508 () Bool)

(declare-fun e!279901 () Bool)

(assert (=> d!75677 (=> res!284508 e!279901)))

(assert (=> d!75677 (= res!284508 ((_ is Nil!9076) (t!15093 (toList!3969 lm!215))))))

(assert (=> d!75677 (= (forall!192 (t!15093 (toList!3969 lm!215)) p!166) e!279901)))

(declare-fun b!476498 () Bool)

(declare-fun e!279902 () Bool)

(assert (=> b!476498 (= e!279901 e!279902)))

(declare-fun res!284509 () Bool)

(assert (=> b!476498 (=> (not res!284509) (not e!279902))))

(assert (=> b!476498 (= res!284509 (dynLambda!938 p!166 (h!9931 (t!15093 (toList!3969 lm!215)))))))

(declare-fun b!476499 () Bool)

(assert (=> b!476499 (= e!279902 (forall!192 (t!15093 (t!15093 (toList!3969 lm!215))) p!166))))

(assert (= (and d!75677 (not res!284508)) b!476498))

(assert (= (and b!476498 res!284509) b!476499))

(declare-fun b_lambda!10467 () Bool)

(assert (=> (not b_lambda!10467) (not b!476498)))

(declare-fun t!15116 () Bool)

(declare-fun tb!3993 () Bool)

(assert (=> (and start!42772 (= p!166 p!166) t!15116) tb!3993))

(declare-fun result!7549 () Bool)

(assert (=> tb!3993 (= result!7549 true)))

(assert (=> b!476498 t!15116))

(declare-fun b_and!20693 () Bool)

(assert (= b_and!20691 (and (=> t!15116 result!7549) b_and!20693)))

(declare-fun m!458817 () Bool)

(assert (=> b!476498 m!458817))

(declare-fun m!458819 () Bool)

(assert (=> b!476499 m!458819))

(assert (=> b!476482 d!75677))

(declare-fun d!75679 () Bool)

(declare-fun res!284516 () Bool)

(declare-fun e!279910 () Bool)

(assert (=> d!75679 (=> res!284516 e!279910)))

(assert (=> d!75679 (= res!284516 (or ((_ is Nil!9076) (toList!3969 lm!215)) ((_ is Nil!9076) (t!15093 (toList!3969 lm!215)))))))

(assert (=> d!75679 (= (isStrictlySorted!378 (toList!3969 lm!215)) e!279910)))

(declare-fun b!476507 () Bool)

(declare-fun e!279911 () Bool)

(assert (=> b!476507 (= e!279910 e!279911)))

(declare-fun res!284517 () Bool)

(assert (=> b!476507 (=> (not res!284517) (not e!279911))))

(assert (=> b!476507 (= res!284517 (bvslt (_1!4500 (h!9931 (toList!3969 lm!215))) (_1!4500 (h!9931 (t!15093 (toList!3969 lm!215))))))))

(declare-fun b!476508 () Bool)

(assert (=> b!476508 (= e!279911 (isStrictlySorted!378 (t!15093 (toList!3969 lm!215))))))

(assert (= (and d!75679 (not res!284516)) b!476507))

(assert (= (and b!476507 res!284517) b!476508))

(declare-fun m!458823 () Bool)

(assert (=> b!476508 m!458823))

(assert (=> d!75661 d!75679))

(declare-fun d!75681 () Bool)

(assert (=> d!75681 (= (tail!118 (toList!3969 lm!215)) (t!15093 (toList!3969 lm!215)))))

(assert (=> d!75655 d!75681))

(declare-fun b!476509 () Bool)

(declare-fun e!279912 () Bool)

(declare-fun tp!42360 () Bool)

(assert (=> b!476509 (= e!279912 (and tp_is_empty!13515 tp!42360))))

(assert (=> b!476487 (= tp!42358 e!279912)))

(assert (= (and b!476487 ((_ is Cons!9075) (t!15093 (toList!3969 lm!215)))) b!476509))

(declare-fun b_lambda!10473 () Bool)

(assert (= b_lambda!10467 (or (and start!42772 b_free!12093) b_lambda!10473)))

(declare-fun b_lambda!10475 () Bool)

(assert (= b_lambda!10465 (or (and start!42772 b_free!12093) b_lambda!10475)))

(check-sat (not b_lambda!10459) (not b_lambda!10473) (not b!476493) tp_is_empty!13515 b_and!20693 (not b_lambda!10475) (not b_lambda!10457) (not b_next!12093) (not b!476508) (not b!476499) (not b!476509) (not b_lambda!10435))
(check-sat b_and!20693 (not b_next!12093))
