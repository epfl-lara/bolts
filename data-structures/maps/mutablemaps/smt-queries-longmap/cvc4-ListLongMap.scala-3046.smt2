; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42750 () Bool)

(assert start!42750)

(declare-fun b_free!12089 () Bool)

(declare-fun b_next!12089 () Bool)

(assert (=> start!42750 (= b_free!12089 (not b_next!12089))))

(declare-fun tp!42322 () Bool)

(declare-fun b_and!20653 () Bool)

(assert (=> start!42750 (= tp!42322 b_and!20653)))

(declare-fun res!284428 () Bool)

(declare-fun e!279802 () Bool)

(assert (=> start!42750 (=> (not res!284428) (not e!279802))))

(declare-datatypes ((B!1038 0))(
  ( (B!1039 (val!6803 Int)) )
))
(declare-datatypes ((tuple2!8976 0))(
  ( (tuple2!8977 (_1!4498 (_ BitVec 64)) (_2!4498 B!1038)) )
))
(declare-datatypes ((List!9077 0))(
  ( (Nil!9074) (Cons!9073 (h!9929 tuple2!8976) (t!15081 List!9077)) )
))
(declare-datatypes ((ListLongMap!7903 0))(
  ( (ListLongMap!7904 (toList!3967 List!9077)) )
))
(declare-fun lm!215 () ListLongMap!7903)

(declare-fun p!166 () Int)

(declare-fun forall!190 (List!9077 Int) Bool)

(assert (=> start!42750 (= res!284428 (forall!190 (toList!3967 lm!215) p!166))))

(assert (=> start!42750 e!279802))

(declare-fun e!279803 () Bool)

(declare-fun inv!15473 (ListLongMap!7903) Bool)

(assert (=> start!42750 (and (inv!15473 lm!215) e!279803)))

(assert (=> start!42750 tp!42322))

(assert (=> start!42750 true))

(declare-fun tp_is_empty!13511 () Bool)

(assert (=> start!42750 tp_is_empty!13511))

(declare-fun b!476359 () Bool)

(declare-fun res!284427 () Bool)

(assert (=> b!476359 (=> (not res!284427) (not e!279802))))

(declare-fun b!85 () B!1038)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!936 (Int tuple2!8976) Bool)

(assert (=> b!476359 (= res!284427 (dynLambda!936 p!166 (tuple2!8977 a!501 b!85)))))

(declare-fun b!476360 () Bool)

(declare-fun size!15122 (List!9077) Int)

(assert (=> b!476360 (= e!279802 (< (size!15122 (toList!3967 lm!215)) 0))))

(declare-fun b!476361 () Bool)

(declare-fun tp!42321 () Bool)

(assert (=> b!476361 (= e!279803 tp!42321)))

(assert (= (and start!42750 res!284428) b!476359))

(assert (= (and b!476359 res!284427) b!476360))

(assert (= start!42750 b!476361))

(declare-fun b_lambda!10405 () Bool)

(assert (=> (not b_lambda!10405) (not b!476359)))

(declare-fun t!15080 () Bool)

(declare-fun tb!3961 () Bool)

(assert (=> (and start!42750 (= p!166 p!166) t!15080) tb!3961))

(declare-fun result!7505 () Bool)

(assert (=> tb!3961 (= result!7505 true)))

(assert (=> b!476359 t!15080))

(declare-fun b_and!20655 () Bool)

(assert (= b_and!20653 (and (=> t!15080 result!7505) b_and!20655)))

(declare-fun m!458695 () Bool)

(assert (=> start!42750 m!458695))

(declare-fun m!458697 () Bool)

(assert (=> start!42750 m!458697))

(declare-fun m!458699 () Bool)

(assert (=> b!476359 m!458699))

(declare-fun m!458701 () Bool)

(assert (=> b!476360 m!458701))

(push 1)

(assert (not b!476361))

(assert (not b!476360))

(assert (not b_next!12089))

(assert b_and!20655)

(assert tp_is_empty!13511)

(assert (not b_lambda!10405))

(assert (not start!42750))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20655)

(assert (not b_next!12089))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10407 () Bool)

(assert (= b_lambda!10405 (or (and start!42750 b_free!12089) b_lambda!10407)))

(push 1)

(assert (not b_lambda!10407))

(assert (not b!476361))

(assert (not b!476360))

(assert (not b_next!12089))

(assert b_and!20655)

(assert tp_is_empty!13511)

(assert (not start!42750))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20655)

(assert (not b_next!12089))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75613 () Bool)

(declare-fun lt!217264 () Int)

(assert (=> d!75613 (>= lt!217264 0)))

(declare-fun e!279810 () Int)

(assert (=> d!75613 (= lt!217264 e!279810)))

(declare-fun c!57274 () Bool)

(assert (=> d!75613 (= c!57274 (is-Nil!9074 (toList!3967 lm!215)))))

(assert (=> d!75613 (= (size!15122 (toList!3967 lm!215)) lt!217264)))

(declare-fun b!476370 () Bool)

(assert (=> b!476370 (= e!279810 0)))

(declare-fun b!476371 () Bool)

(assert (=> b!476371 (= e!279810 (+ 1 (size!15122 (t!15081 (toList!3967 lm!215)))))))

(assert (= (and d!75613 c!57274) b!476370))

(assert (= (and d!75613 (not c!57274)) b!476371))

(declare-fun m!458703 () Bool)

(assert (=> b!476371 m!458703))

(assert (=> b!476360 d!75613))

(declare-fun d!75619 () Bool)

(declare-fun res!284445 () Bool)

(declare-fun e!279823 () Bool)

(assert (=> d!75619 (=> res!284445 e!279823)))

(assert (=> d!75619 (= res!284445 (is-Nil!9074 (toList!3967 lm!215)))))

(assert (=> d!75619 (= (forall!190 (toList!3967 lm!215) p!166) e!279823)))

(declare-fun b!476384 () Bool)

(declare-fun e!279824 () Bool)

(assert (=> b!476384 (= e!279823 e!279824)))

(declare-fun res!284446 () Bool)

(assert (=> b!476384 (=> (not res!284446) (not e!279824))))

(assert (=> b!476384 (= res!284446 (dynLambda!936 p!166 (h!9929 (toList!3967 lm!215))))))

(declare-fun b!476385 () Bool)

(assert (=> b!476385 (= e!279824 (forall!190 (t!15081 (toList!3967 lm!215)) p!166))))

(assert (= (and d!75619 (not res!284445)) b!476384))

(assert (= (and b!476384 res!284446) b!476385))

(declare-fun b_lambda!10417 () Bool)

(assert (=> (not b_lambda!10417) (not b!476384)))

(declare-fun t!15087 () Bool)

(declare-fun tb!3967 () Bool)

(assert (=> (and start!42750 (= p!166 p!166) t!15087) tb!3967))

(declare-fun result!7511 () Bool)

(assert (=> tb!3967 (= result!7511 true)))

(assert (=> b!476384 t!15087))

(declare-fun b_and!20661 () Bool)

(assert (= b_and!20655 (and (=> t!15087 result!7511) b_and!20661)))

(declare-fun m!458715 () Bool)

(assert (=> b!476384 m!458715))

(declare-fun m!458717 () Bool)

(assert (=> b!476385 m!458717))

(assert (=> start!42750 d!75619))

(declare-fun d!75627 () Bool)

(declare-fun isStrictlySorted!376 (List!9077) Bool)

(assert (=> d!75627 (= (inv!15473 lm!215) (isStrictlySorted!376 (toList!3967 lm!215)))))

(declare-fun bs!15127 () Bool)

(assert (= bs!15127 d!75627))

(declare-fun m!458721 () Bool)

(assert (=> bs!15127 m!458721))

(assert (=> start!42750 d!75627))

(declare-fun b!476404 () Bool)

(declare-fun e!279834 () Bool)

(declare-fun tp!42327 () Bool)

(assert (=> b!476404 (= e!279834 (and tp_is_empty!13511 tp!42327))))

(assert (=> b!476361 (= tp!42321 e!279834)))

(assert (= (and b!476361 (is-Cons!9073 (toList!3967 lm!215))) b!476404))

(declare-fun b_lambda!10419 () Bool)

(assert (= b_lambda!10417 (or (and start!42750 b_free!12089) b_lambda!10419)))

