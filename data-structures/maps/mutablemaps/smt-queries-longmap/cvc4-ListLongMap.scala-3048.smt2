; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42822 () Bool)

(assert start!42822)

(declare-fun b_free!12101 () Bool)

(declare-fun b_next!12101 () Bool)

(assert (=> start!42822 (= b_free!12101 (not b_next!12101))))

(declare-fun tp!42379 () Bool)

(declare-fun b_and!20707 () Bool)

(assert (=> start!42822 (= tp!42379 b_and!20707)))

(declare-fun b!476561 () Bool)

(declare-fun res!284561 () Bool)

(declare-fun e!279948 () Bool)

(assert (=> b!476561 (=> (not res!284561) (not e!279948))))

(declare-datatypes ((B!1050 0))(
  ( (B!1051 (val!6809 Int)) )
))
(declare-datatypes ((tuple2!8988 0))(
  ( (tuple2!8989 (_1!4504 (_ BitVec 64)) (_2!4504 B!1050)) )
))
(declare-datatypes ((List!9083 0))(
  ( (Nil!9080) (Cons!9079 (h!9935 tuple2!8988) (t!15129 List!9083)) )
))
(declare-datatypes ((ListLongMap!7915 0))(
  ( (ListLongMap!7916 (toList!3973 List!9083)) )
))
(declare-fun lm!215 () ListLongMap!7915)

(declare-fun isEmpty!602 (ListLongMap!7915) Bool)

(assert (=> b!476561 (= res!284561 (not (isEmpty!602 lm!215)))))

(declare-fun b!476562 () Bool)

(declare-fun e!279950 () Bool)

(declare-fun lt!217279 () ListLongMap!7915)

(declare-fun size!15125 (List!9083) Int)

(assert (=> b!476562 (= e!279950 (>= (size!15125 (toList!3973 lt!217279)) (size!15125 (toList!3973 lm!215))))))

(declare-fun b!476563 () Bool)

(declare-fun res!284562 () Bool)

(assert (=> b!476563 (=> (not res!284562) (not e!279948))))

(declare-fun b!85 () B!1050)

(declare-fun p!166 () Int)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!942 (Int tuple2!8988) Bool)

(assert (=> b!476563 (= res!284562 (dynLambda!942 p!166 (tuple2!8989 a!501 b!85)))))

(declare-fun b!476564 () Bool)

(assert (=> b!476564 (= e!279948 e!279950)))

(declare-fun res!284563 () Bool)

(assert (=> b!476564 (=> (not res!284563) (not e!279950))))

(declare-fun forall!196 (List!9083 Int) Bool)

(assert (=> b!476564 (= res!284563 (forall!196 (toList!3973 lt!217279) p!166))))

(declare-fun tail!121 (ListLongMap!7915) ListLongMap!7915)

(assert (=> b!476564 (= lt!217279 (tail!121 lm!215))))

(declare-fun b!476565 () Bool)

(declare-fun e!279949 () Bool)

(declare-fun tp!42378 () Bool)

(assert (=> b!476565 (= e!279949 tp!42378)))

(declare-fun res!284560 () Bool)

(assert (=> start!42822 (=> (not res!284560) (not e!279948))))

(assert (=> start!42822 (= res!284560 (forall!196 (toList!3973 lm!215) p!166))))

(assert (=> start!42822 e!279948))

(declare-fun inv!15489 (ListLongMap!7915) Bool)

(assert (=> start!42822 (and (inv!15489 lm!215) e!279949)))

(assert (=> start!42822 tp!42379))

(assert (=> start!42822 true))

(declare-fun tp_is_empty!13523 () Bool)

(assert (=> start!42822 tp_is_empty!13523))

(assert (= (and start!42822 res!284560) b!476563))

(assert (= (and b!476563 res!284562) b!476561))

(assert (= (and b!476561 res!284561) b!476564))

(assert (= (and b!476564 res!284563) b!476562))

(assert (= start!42822 b!476565))

(declare-fun b_lambda!10489 () Bool)

(assert (=> (not b_lambda!10489) (not b!476563)))

(declare-fun t!15128 () Bool)

(declare-fun tb!4003 () Bool)

(assert (=> (and start!42822 (= p!166 p!166) t!15128) tb!4003))

(declare-fun result!7559 () Bool)

(assert (=> tb!4003 (= result!7559 true)))

(assert (=> b!476563 t!15128))

(declare-fun b_and!20709 () Bool)

(assert (= b_and!20707 (and (=> t!15128 result!7559) b_and!20709)))

(declare-fun m!458867 () Bool)

(assert (=> b!476563 m!458867))

(declare-fun m!458869 () Bool)

(assert (=> b!476562 m!458869))

(declare-fun m!458871 () Bool)

(assert (=> b!476562 m!458871))

(declare-fun m!458873 () Bool)

(assert (=> b!476564 m!458873))

(declare-fun m!458875 () Bool)

(assert (=> b!476564 m!458875))

(declare-fun m!458877 () Bool)

(assert (=> b!476561 m!458877))

(declare-fun m!458879 () Bool)

(assert (=> start!42822 m!458879))

(declare-fun m!458881 () Bool)

(assert (=> start!42822 m!458881))

(push 1)

(assert (not b_lambda!10489))

(assert (not b_next!12101))

(assert (not b!476565))

(assert tp_is_empty!13523)

(assert (not b!476564))

(assert (not start!42822))

(assert b_and!20709)

(assert (not b!476562))

(assert (not b!476561))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20709)

(assert (not b_next!12101))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10495 () Bool)

(assert (= b_lambda!10489 (or (and start!42822 b_free!12101) b_lambda!10495)))

(push 1)

(assert (not b_next!12101))

(assert (not b!476565))

(assert tp_is_empty!13523)

(assert (not b!476564))

(assert (not b_lambda!10495))

(assert (not start!42822))

(assert b_and!20709)

(assert (not b!476562))

(assert (not b!476561))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20709)

(assert (not b_next!12101))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75699 () Bool)

(declare-fun lt!217285 () Int)

(assert (=> d!75699 (>= lt!217285 0)))

(declare-fun e!279960 () Int)

(assert (=> d!75699 (= lt!217285 e!279960)))

(declare-fun c!57286 () Bool)

(assert (=> d!75699 (= c!57286 (is-Nil!9080 (toList!3973 lt!217279)))))

(assert (=> d!75699 (= (size!15125 (toList!3973 lt!217279)) lt!217285)))

(declare-fun b!476580 () Bool)

(assert (=> b!476580 (= e!279960 0)))

(declare-fun b!476581 () Bool)

(assert (=> b!476581 (= e!279960 (+ 1 (size!15125 (t!15129 (toList!3973 lt!217279)))))))

(assert (= (and d!75699 c!57286) b!476580))

(assert (= (and d!75699 (not c!57286)) b!476581))

(declare-fun m!458887 () Bool)

(assert (=> b!476581 m!458887))

(assert (=> b!476562 d!75699))

(declare-fun d!75705 () Bool)

(declare-fun lt!217287 () Int)

(assert (=> d!75705 (>= lt!217287 0)))

(declare-fun e!279964 () Int)

(assert (=> d!75705 (= lt!217287 e!279964)))

(declare-fun c!57288 () Bool)

(assert (=> d!75705 (= c!57288 (is-Nil!9080 (toList!3973 lm!215)))))

(assert (=> d!75705 (= (size!15125 (toList!3973 lm!215)) lt!217287)))

(declare-fun b!476586 () Bool)

(assert (=> b!476586 (= e!279964 0)))

(declare-fun b!476587 () Bool)

(assert (=> b!476587 (= e!279964 (+ 1 (size!15125 (t!15129 (toList!3973 lm!215)))))))

(assert (= (and d!75705 c!57288) b!476586))

(assert (= (and d!75705 (not c!57288)) b!476587))

(declare-fun m!458891 () Bool)

(assert (=> b!476587 m!458891))

(assert (=> b!476562 d!75705))

(declare-fun d!75709 () Bool)

(declare-fun isEmpty!604 (List!9083) Bool)

(assert (=> d!75709 (= (isEmpty!602 lm!215) (isEmpty!604 (toList!3973 lm!215)))))

(declare-fun bs!15144 () Bool)

(assert (= bs!15144 d!75709))

(declare-fun m!458897 () Bool)

(assert (=> bs!15144 m!458897))

(assert (=> b!476561 d!75709))

(declare-fun d!75713 () Bool)

(declare-fun res!284582 () Bool)

(declare-fun e!279977 () Bool)

(assert (=> d!75713 (=> res!284582 e!279977)))

(assert (=> d!75713 (= res!284582 (is-Nil!9080 (toList!3973 lm!215)))))

(assert (=> d!75713 (= (forall!196 (toList!3973 lm!215) p!166) e!279977)))

(declare-fun b!476600 () Bool)

(declare-fun e!279978 () Bool)

(assert (=> b!476600 (= e!279977 e!279978)))

(declare-fun res!284583 () Bool)

(assert (=> b!476600 (=> (not res!284583) (not e!279978))))

(assert (=> b!476600 (= res!284583 (dynLambda!942 p!166 (h!9935 (toList!3973 lm!215))))))

(declare-fun b!476601 () Bool)

(assert (=> b!476601 (= e!279978 (forall!196 (t!15129 (toList!3973 lm!215)) p!166))))

(assert (= (and d!75713 (not res!284582)) b!476600))

(assert (= (and b!476600 res!284583) b!476601))

(declare-fun b_lambda!10503 () Bool)

(assert (=> (not b_lambda!10503) (not b!476600)))

(declare-fun t!15137 () Bool)

(declare-fun tb!4011 () Bool)

(assert (=> (and start!42822 (= p!166 p!166) t!15137) tb!4011))

(declare-fun result!7567 () Bool)

(assert (=> tb!4011 (= result!7567 true)))

(assert (=> b!476600 t!15137))

(declare-fun b_and!20717 () Bool)

(assert (= b_and!20709 (and (=> t!15137 result!7567) b_and!20717)))

(declare-fun m!458913 () Bool)

(assert (=> b!476600 m!458913))

(declare-fun m!458915 () Bool)

(assert (=> b!476601 m!458915))

(assert (=> start!42822 d!75713))

(declare-fun d!75725 () Bool)

(declare-fun isStrictlySorted!381 (List!9083) Bool)

(assert (=> d!75725 (= (inv!15489 lm!215) (isStrictlySorted!381 (toList!3973 lm!215)))))

(declare-fun bs!15148 () Bool)

(assert (= bs!15148 d!75725))

(declare-fun m!458921 () Bool)

(assert (=> bs!15148 m!458921))

(assert (=> start!42822 d!75725))

(declare-fun d!75729 () Bool)

(declare-fun res!284586 () Bool)

(declare-fun e!279983 () Bool)

(assert (=> d!75729 (=> res!284586 e!279983)))

(assert (=> d!75729 (= res!284586 (is-Nil!9080 (toList!3973 lt!217279)))))

(assert (=> d!75729 (= (forall!196 (toList!3973 lt!217279) p!166) e!279983)))

(declare-fun b!476608 () Bool)

(declare-fun e!279984 () Bool)

(assert (=> b!476608 (= e!279983 e!279984)))

(declare-fun res!284587 () Bool)

(assert (=> b!476608 (=> (not res!284587) (not e!279984))))

(assert (=> b!476608 (= res!284587 (dynLambda!942 p!166 (h!9935 (toList!3973 lt!217279))))))

(declare-fun b!476609 () Bool)

(assert (=> b!476609 (= e!279984 (forall!196 (t!15129 (toList!3973 lt!217279)) p!166))))

(assert (= (and d!75729 (not res!284586)) b!476608))

(assert (= (and b!476608 res!284587) b!476609))

(declare-fun b_lambda!10507 () Bool)

(assert (=> (not b_lambda!10507) (not b!476608)))

(declare-fun t!15141 () Bool)

(declare-fun tb!4015 () Bool)

(assert (=> (and start!42822 (= p!166 p!166) t!15141) tb!4015))

(declare-fun result!7571 () Bool)

(assert (=> tb!4015 (= result!7571 true)))

(assert (=> b!476608 t!15141))

(declare-fun b_and!20721 () Bool)

(assert (= b_and!20717 (and (=> t!15141 result!7571) b_and!20721)))

(declare-fun m!458925 () Bool)

(assert (=> b!476608 m!458925))

(declare-fun m!458927 () Bool)

(assert (=> b!476609 m!458927))

(assert (=> b!476564 d!75729))

(declare-fun d!75733 () Bool)

(declare-fun tail!124 (List!9083) List!9083)

(assert (=> d!75733 (= (tail!121 lm!215) (ListLongMap!7916 (tail!124 (toList!3973 lm!215))))))

(declare-fun bs!15151 () Bool)

(assert (= bs!15151 d!75733))

(declare-fun m!458935 () Bool)

(assert (=> bs!15151 m!458935))

(assert (=> b!476564 d!75733))

(declare-fun b!476628 () Bool)

(declare-fun e!279995 () Bool)

(declare-fun tp!42388 () Bool)

(assert (=> b!476628 (= e!279995 (and tp_is_empty!13523 tp!42388))))

(assert (=> b!476565 (= tp!42378 e!279995)))

(assert (= (and b!476565 (is-Cons!9079 (toList!3973 lm!215))) b!476628))

(declare-fun b_lambda!10517 () Bool)

(assert (= b_lambda!10503 (or (and start!42822 b_free!12101) b_lambda!10517)))

(declare-fun b_lambda!10519 () Bool)

(assert (= b_lambda!10507 (or (and start!42822 b_free!12101) b_lambda!10519)))

(push 1)

(assert (not b!476628))

(assert (not b_lambda!10517))

(assert b_and!20721)

(assert (not d!75709))

(assert (not b_next!12101))

(assert (not b!476609))

(assert (not d!75733))

(assert (not b_lambda!10519))

(assert tp_is_empty!13523)

(assert (not b!476601))

(assert (not b!476581))

(assert (not b!476587))

(assert (not b_lambda!10495))

(assert (not d!75725))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20721)

(assert (not b_next!12101))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75765 () Bool)

(assert (=> d!75765 (= (tail!124 (toList!3973 lm!215)) (t!15129 (toList!3973 lm!215)))))

