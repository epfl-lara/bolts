; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42770 () Bool)

(assert start!42770)

(declare-fun b_free!12091 () Bool)

(declare-fun b_next!12091 () Bool)

(assert (=> start!42770 (= b_free!12091 (not b_next!12091))))

(declare-fun tp!42337 () Bool)

(declare-fun b_and!20663 () Bool)

(assert (=> start!42770 (= tp!42337 b_and!20663)))

(declare-fun b!476423 () Bool)

(declare-fun e!279845 () Bool)

(declare-datatypes ((B!1040 0))(
  ( (B!1041 (val!6804 Int)) )
))
(declare-datatypes ((tuple2!8978 0))(
  ( (tuple2!8979 (_1!4499 (_ BitVec 64)) (_2!4499 B!1040)) )
))
(declare-datatypes ((List!9078 0))(
  ( (Nil!9075) (Cons!9074 (h!9930 tuple2!8978) (t!15090 List!9078)) )
))
(declare-datatypes ((ListLongMap!7905 0))(
  ( (ListLongMap!7906 (toList!3968 List!9078)) )
))
(declare-fun lm!215 () ListLongMap!7905)

(declare-fun p!166 () Int)

(declare-fun forall!191 (List!9078 Int) Bool)

(declare-fun tail!113 (ListLongMap!7905) ListLongMap!7905)

(assert (=> b!476423 (= e!279845 (not (forall!191 (toList!3968 (tail!113 lm!215)) p!166)))))

(declare-fun b!476422 () Bool)

(declare-fun res!284455 () Bool)

(assert (=> b!476422 (=> (not res!284455) (not e!279845))))

(declare-fun isEmpty!594 (ListLongMap!7905) Bool)

(assert (=> b!476422 (= res!284455 (not (isEmpty!594 lm!215)))))

(declare-fun res!284453 () Bool)

(assert (=> start!42770 (=> (not res!284453) (not e!279845))))

(assert (=> start!42770 (= res!284453 (forall!191 (toList!3968 lm!215) p!166))))

(assert (=> start!42770 e!279845))

(declare-fun e!279844 () Bool)

(declare-fun inv!15479 (ListLongMap!7905) Bool)

(assert (=> start!42770 (and (inv!15479 lm!215) e!279844)))

(assert (=> start!42770 tp!42337))

(assert (=> start!42770 true))

(declare-fun tp_is_empty!13513 () Bool)

(assert (=> start!42770 tp_is_empty!13513))

(declare-fun b!476424 () Bool)

(declare-fun tp!42336 () Bool)

(assert (=> b!476424 (= e!279844 tp!42336)))

(declare-fun b!476421 () Bool)

(declare-fun res!284454 () Bool)

(assert (=> b!476421 (=> (not res!284454) (not e!279845))))

(declare-fun b!85 () B!1040)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!937 (Int tuple2!8978) Bool)

(assert (=> b!476421 (= res!284454 (dynLambda!937 p!166 (tuple2!8979 a!501 b!85)))))

(assert (= (and start!42770 res!284453) b!476421))

(assert (= (and b!476421 res!284454) b!476422))

(assert (= (and b!476422 res!284455) b!476423))

(assert (= start!42770 b!476424))

(declare-fun b_lambda!10425 () Bool)

(assert (=> (not b_lambda!10425) (not b!476421)))

(declare-fun t!15089 () Bool)

(declare-fun tb!3969 () Bool)

(assert (=> (and start!42770 (= p!166 p!166) t!15089) tb!3969))

(declare-fun result!7519 () Bool)

(assert (=> tb!3969 (= result!7519 true)))

(assert (=> b!476421 t!15089))

(declare-fun b_and!20665 () Bool)

(assert (= b_and!20663 (and (=> t!15089 result!7519) b_and!20665)))

(declare-fun m!458727 () Bool)

(assert (=> b!476423 m!458727))

(declare-fun m!458729 () Bool)

(assert (=> b!476423 m!458729))

(declare-fun m!458731 () Bool)

(assert (=> b!476422 m!458731))

(declare-fun m!458733 () Bool)

(assert (=> start!42770 m!458733))

(declare-fun m!458735 () Bool)

(assert (=> start!42770 m!458735))

(declare-fun m!458737 () Bool)

(assert (=> b!476421 m!458737))

(push 1)

(assert b_and!20665)

(assert (not b!476422))

(assert (not b_lambda!10425))

(assert tp_is_empty!13513)

(assert (not start!42770))

(assert (not b!476424))

(assert (not b_next!12091))

(assert (not b!476423))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20665)

(assert (not b_next!12091))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10431 () Bool)

(assert (= b_lambda!10425 (or (and start!42770 b_free!12091) b_lambda!10431)))

(push 1)

(assert (not b_lambda!10431))

(assert b_and!20665)

(assert (not b!476422))

(assert tp_is_empty!13513)

(assert (not start!42770))

(assert (not b!476424))

(assert (not b_next!12091))

(assert (not b!476423))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20665)

(assert (not b_next!12091))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75633 () Bool)

(declare-fun res!284478 () Bool)

(declare-fun e!279862 () Bool)

(assert (=> d!75633 (=> res!284478 e!279862)))

(assert (=> d!75633 (= res!284478 (is-Nil!9075 (toList!3968 (tail!113 lm!215))))))

(assert (=> d!75633 (= (forall!191 (toList!3968 (tail!113 lm!215)) p!166) e!279862)))

(declare-fun b!476453 () Bool)

(declare-fun e!279863 () Bool)

(assert (=> b!476453 (= e!279862 e!279863)))

(declare-fun res!284479 () Bool)

(assert (=> b!476453 (=> (not res!284479) (not e!279863))))

(assert (=> b!476453 (= res!284479 (dynLambda!937 p!166 (h!9930 (toList!3968 (tail!113 lm!215)))))))

(declare-fun b!476454 () Bool)

(assert (=> b!476454 (= e!279863 (forall!191 (t!15090 (toList!3968 (tail!113 lm!215))) p!166))))

(assert (= (and d!75633 (not res!284478)) b!476453))

(assert (= (and b!476453 res!284479) b!476454))

(declare-fun b_lambda!10437 () Bool)

(assert (=> (not b_lambda!10437) (not b!476453)))

(declare-fun t!15098 () Bool)

(declare-fun tb!3975 () Bool)

(assert (=> (and start!42770 (= p!166 p!166) t!15098) tb!3975))

(declare-fun result!7525 () Bool)

(assert (=> tb!3975 (= result!7525 true)))

(assert (=> b!476453 t!15098))

(declare-fun b_and!20675 () Bool)

(assert (= b_and!20665 (and (=> t!15098 result!7525) b_and!20675)))

(declare-fun m!458763 () Bool)

(assert (=> b!476453 m!458763))

(declare-fun m!458765 () Bool)

(assert (=> b!476454 m!458765))

(assert (=> b!476423 d!75633))

(declare-fun d!75637 () Bool)

(declare-fun tail!116 (List!9078) List!9078)

(assert (=> d!75637 (= (tail!113 lm!215) (ListLongMap!7906 (tail!116 (toList!3968 lm!215))))))

(declare-fun bs!15131 () Bool)

(assert (= bs!15131 d!75637))

(declare-fun m!458767 () Bool)

(assert (=> bs!15131 m!458767))

(assert (=> b!476423 d!75637))

(declare-fun d!75639 () Bool)

(declare-fun isEmpty!597 (List!9078) Bool)

(assert (=> d!75639 (= (isEmpty!594 lm!215) (isEmpty!597 (toList!3968 lm!215)))))

(declare-fun bs!15132 () Bool)

(assert (= bs!15132 d!75639))

(declare-fun m!458773 () Bool)

(assert (=> bs!15132 m!458773))

(assert (=> b!476422 d!75639))

(declare-fun d!75645 () Bool)

(declare-fun res!284486 () Bool)

(declare-fun e!279870 () Bool)

(assert (=> d!75645 (=> res!284486 e!279870)))

(assert (=> d!75645 (= res!284486 (is-Nil!9075 (toList!3968 lm!215)))))

(assert (=> d!75645 (= (forall!191 (toList!3968 lm!215) p!166) e!279870)))

(declare-fun b!476461 () Bool)

(declare-fun e!279871 () Bool)

(assert (=> b!476461 (= e!279870 e!279871)))

(declare-fun res!284487 () Bool)

(assert (=> b!476461 (=> (not res!284487) (not e!279871))))

(assert (=> b!476461 (= res!284487 (dynLambda!937 p!166 (h!9930 (toList!3968 lm!215))))))

(declare-fun b!476462 () Bool)

(assert (=> b!476462 (= e!279871 (forall!191 (t!15090 (toList!3968 lm!215)) p!166))))

(assert (= (and d!75645 (not res!284486)) b!476461))

(assert (= (and b!476461 res!284487) b!476462))

(declare-fun b_lambda!10441 () Bool)

(assert (=> (not b_lambda!10441) (not b!476461)))

(declare-fun t!15102 () Bool)

(declare-fun tb!3979 () Bool)

(assert (=> (and start!42770 (= p!166 p!166) t!15102) tb!3979))

(declare-fun result!7529 () Bool)

(assert (=> tb!3979 (= result!7529 true)))

(assert (=> b!476461 t!15102))

(declare-fun b_and!20679 () Bool)

(assert (= b_and!20675 (and (=> t!15102 result!7529) b_and!20679)))

(declare-fun m!458775 () Bool)

(assert (=> b!476461 m!458775))

(declare-fun m!458779 () Bool)

(assert (=> b!476462 m!458779))

(assert (=> start!42770 d!75645))

(declare-fun d!75649 () Bool)

(declare-fun isStrictlySorted!377 (List!9078) Bool)

(assert (=> d!75649 (= (inv!15479 lm!215) (isStrictlySorted!377 (toList!3968 lm!215)))))

(declare-fun bs!15135 () Bool)

(assert (= bs!15135 d!75649))

(declare-fun m!458785 () Bool)

(assert (=> bs!15135 m!458785))

(assert (=> start!42770 d!75649))

(declare-fun b!476475 () Bool)

(declare-fun e!279882 () Bool)

(declare-fun tp!42352 () Bool)

(assert (=> b!476475 (= e!279882 (and tp_is_empty!13513 tp!42352))))

(assert (=> b!476424 (= tp!42336 e!279882)))

(assert (= (and b!476424 (is-Cons!9074 (toList!3968 lm!215))) b!476475))

(declare-fun b_lambda!10447 () Bool)

(assert (= b_lambda!10441 (or (and start!42770 b_free!12091) b_lambda!10447)))

(declare-fun b_lambda!10449 () Bool)

(assert (= b_lambda!10437 (or (and start!42770 b_free!12091) b_lambda!10449)))

(push 1)

(assert (not b!476475))

(assert (not b_lambda!10449))

(assert (not b_lambda!10431))

(assert (not d!75649))

(assert (not d!75637))

(assert (not b!476454))

(assert (not b_lambda!10447))

(assert (not b_next!12091))

(assert (not d!75639))

(assert b_and!20679)

(assert (not b!476462))

(assert tp_is_empty!13513)

(check-sat)

(pop 1)

(push 1)

(assert b_and!20679)

(assert (not b_next!12091))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75663 () Bool)

(declare-fun res!284498 () Bool)

(declare-fun e!279891 () Bool)

(assert (=> d!75663 (=> res!284498 e!279891)))

(assert (=> d!75663 (= res!284498 (is-Nil!9075 (t!15090 (toList!3968 (tail!113 lm!215)))))))

(assert (=> d!75663 (= (forall!191 (t!15090 (toList!3968 (tail!113 lm!215))) p!166) e!279891)))

(declare-fun b!476488 () Bool)

(declare-fun e!279892 () Bool)

(assert (=> b!476488 (= e!279891 e!279892)))

(declare-fun res!284499 () Bool)

(assert (=> b!476488 (=> (not res!284499) (not e!279892))))

(assert (=> b!476488 (= res!284499 (dynLambda!937 p!166 (h!9930 (t!15090 (toList!3968 (tail!113 lm!215))))))))

(declare-fun b!476489 () Bool)

(assert (=> b!476489 (= e!279892 (forall!191 (t!15090 (t!15090 (toList!3968 (tail!113 lm!215)))) p!166))))

(assert (= (and d!75663 (not res!284498)) b!476488))

(assert (= (and b!476488 res!284499) b!476489))

(declare-fun b_lambda!10461 () Bool)

(assert (=> (not b_lambda!10461) (not b!476488)))

(declare-fun t!15110 () Bool)

(declare-fun tb!3987 () Bool)

(assert (=> (and start!42770 (= p!166 p!166) t!15110) tb!3987))

(declare-fun result!7543 () Bool)

(assert (=> tb!3987 (= result!7543 true)))

(assert (=> b!476488 t!15110))

(declare-fun b_and!20687 () Bool)

(assert (= b_and!20679 (and (=> t!15110 result!7543) b_and!20687)))

(declare-fun m!458805 () Bool)

(assert (=> b!476488 m!458805))

(declare-fun m!458807 () Bool)

(assert (=> b!476489 m!458807))

(assert (=> b!476454 d!75663))

(declare-fun d!75665 () Bool)

(assert (=> d!75665 (= (isEmpty!597 (toList!3968 lm!215)) (is-Nil!9075 (toList!3968 lm!215)))))

(assert (=> d!75639 d!75665))

(declare-fun d!75667 () Bool)

(declare-fun res!284500 () Bool)

(declare-fun e!279893 () Bool)

(assert (=> d!75667 (=> res!284500 e!279893)))

(assert (=> d!75667 (= res!284500 (is-Nil!9075 (t!15090 (toList!3968 lm!215))))))

(assert (=> d!75667 (= (forall!191 (t!15090 (toList!3968 lm!215)) p!166) e!279893)))

(declare-fun b!476490 () Bool)

(declare-fun e!279894 () Bool)

(assert (=> b!476490 (= e!279893 e!279894)))

(declare-fun res!284501 () Bool)

(assert (=> b!476490 (=> (not res!284501) (not e!279894))))

(assert (=> b!476490 (= res!284501 (dynLambda!937 p!166 (h!9930 (t!15090 (toList!3968 lm!215)))))))

(declare-fun b!476491 () Bool)

(assert (=> b!476491 (= e!279894 (forall!191 (t!15090 (t!15090 (toList!3968 lm!215))) p!166))))

(assert (= (and d!75667 (not res!284500)) b!476490))

(assert (= (and b!476490 res!284501) b!476491))

(declare-fun b_lambda!10463 () Bool)

(assert (=> (not b_lambda!10463) (not b!476490)))

(declare-fun t!15112 () Bool)

(declare-fun tb!3989 () Bool)

(assert (=> (and start!42770 (= p!166 p!166) t!15112) tb!3989))

(declare-fun result!7545 () Bool)

(assert (=> tb!3989 (= result!7545 true)))

(assert (=> b!476490 t!15112))

(declare-fun b_and!20689 () Bool)

(assert (= b_and!20687 (and (=> t!15112 result!7545) b_and!20689)))

(declare-fun m!458809 () Bool)

(assert (=> b!476490 m!458809))

(declare-fun m!458811 () Bool)

(assert (=> b!476491 m!458811))

(assert (=> b!476462 d!75667))

(declare-fun d!75669 () Bool)

(assert (=> d!75669 (= (tail!116 (toList!3968 lm!215)) (t!15090 (toList!3968 lm!215)))))

(assert (=> d!75637 d!75669))

(declare-fun d!75671 () Bool)

(declare-fun res!284510 () Bool)

(declare-fun e!279903 () Bool)

(assert (=> d!75671 (=> res!284510 e!279903)))

(assert (=> d!75671 (= res!284510 (or (is-Nil!9075 (toList!3968 lm!215)) (is-Nil!9075 (t!15090 (toList!3968 lm!215)))))))

(assert (=> d!75671 (= (isStrictlySorted!377 (toList!3968 lm!215)) e!279903)))

(declare-fun b!476500 () Bool)

(declare-fun e!279904 () Bool)

(assert (=> b!476500 (= e!279903 e!279904)))

(declare-fun res!284511 () Bool)

(assert (=> b!476500 (=> (not res!284511) (not e!279904))))

(assert (=> b!476500 (= res!284511 (bvslt (_1!4499 (h!9930 (toList!3968 lm!215))) (_1!4499 (h!9930 (t!15090 (toList!3968 lm!215))))))))

(declare-fun b!476501 () Bool)

(assert (=> b!476501 (= e!279904 (isStrictlySorted!377 (t!15090 (toList!3968 lm!215))))))

(assert (= (and d!75671 (not res!284510)) b!476500))

(assert (= (and b!476500 res!284511) b!476501))

(declare-fun m!458821 () Bool)

(assert (=> b!476501 m!458821))

(assert (=> d!75649 d!75671))

(declare-fun b!476502 () Bool)

(declare-fun e!279905 () Bool)

(declare-fun tp!42359 () Bool)

(assert (=> b!476502 (= e!279905 (and tp_is_empty!13513 tp!42359))))

(assert (=> b!476475 (= tp!42352 e!279905)))

(assert (= (and b!476475 (is-Cons!9074 (t!15090 (toList!3968 lm!215)))) b!476502))

(declare-fun b_lambda!10469 () Bool)

(assert (= b_lambda!10463 (or (and start!42770 b_free!12091) b_lambda!10469)))

(declare-fun b_lambda!10471 () Bool)

(assert (= b_lambda!10461 (or (and start!42770 b_free!12091) b_lambda!10471)))

(push 1)

(assert (not b!476491))

(assert (not b_lambda!10471))

(assert (not b_lambda!10449))

(assert (not b_lambda!10431))

(assert (not b_lambda!10469))

(assert (not b!476489))

(assert tp_is_empty!13513)

(assert (not b!476502))

