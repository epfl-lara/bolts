; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667192 () Bool)

(assert start!667192)

(declare-fun b!6951384 () Bool)

(assert (=> b!6951384 true))

(assert (=> b!6951384 true))

(declare-fun bs!1857718 () Bool)

(declare-fun b!6951385 () Bool)

(assert (= bs!1857718 (and b!6951385 b!6951384)))

(declare-fun lambda!396452 () Int)

(declare-fun lambda!396451 () Int)

(assert (=> bs!1857718 (not (= lambda!396452 lambda!396451))))

(assert (=> b!6951385 true))

(assert (=> b!6951385 true))

(declare-fun b!6951382 () Bool)

(declare-fun e!4180649 () Bool)

(assert (=> b!6951382 (= e!4180649 (not true))))

(declare-datatypes ((C!34322 0))(
  ( (C!34323 (val!26863 Int)) )
))
(declare-datatypes ((List!66779 0))(
  ( (Nil!66655) (Cons!66655 (h!73103 C!34322) (t!380522 List!66779)) )
))
(declare-fun lt!2477941 () List!66779)

(declare-datatypes ((tuple2!67758 0))(
  ( (tuple2!67759 (_1!37182 List!66779) (_2!37182 List!66779)) )
))
(declare-fun lt!2477939 () tuple2!67758)

(declare-fun ++!15057 (List!66779 List!66779) List!66779)

(assert (=> b!6951382 (= lt!2477941 (++!15057 (_1!37182 lt!2477939) (_2!37182 lt!2477939)))))

(declare-datatypes ((Regex!17026 0))(
  ( (ElementMatch!17026 (c!1289350 C!34322)) (Concat!25871 (regOne!34564 Regex!17026) (regTwo!34564 Regex!17026)) (EmptyExpr!17026) (Star!17026 (reg!17355 Regex!17026)) (EmptyLang!17026) (Union!17026 (regOne!34565 Regex!17026) (regTwo!34565 Regex!17026)) )
))
(declare-fun lt!2477938 () Regex!17026)

(declare-fun matchR!9143 (Regex!17026 List!66779) Bool)

(declare-fun matchRSpec!4059 (Regex!17026 List!66779) Bool)

(assert (=> b!6951382 (= (matchR!9143 lt!2477938 (_2!37182 lt!2477939)) (matchRSpec!4059 lt!2477938 (_2!37182 lt!2477939)))))

(declare-datatypes ((Unit!160740 0))(
  ( (Unit!160741) )
))
(declare-fun lt!2477942 () Unit!160740)

(declare-fun mainMatchTheorem!4055 (Regex!17026 List!66779) Unit!160740)

(assert (=> b!6951382 (= lt!2477942 (mainMatchTheorem!4055 lt!2477938 (_2!37182 lt!2477939)))))

(declare-fun rInner!765 () Regex!17026)

(assert (=> b!6951382 (= lt!2477938 (Star!17026 rInner!765))))

(assert (=> b!6951382 (= (matchR!9143 rInner!765 (_1!37182 lt!2477939)) (matchRSpec!4059 rInner!765 (_1!37182 lt!2477939)))))

(declare-fun lt!2477940 () Unit!160740)

(assert (=> b!6951382 (= lt!2477940 (mainMatchTheorem!4055 rInner!765 (_1!37182 lt!2477939)))))

(declare-fun pickWitness!357 (Int) tuple2!67758)

(assert (=> b!6951382 (= lt!2477939 (pickWitness!357 lambda!396452))))

(declare-fun b!6951383 () Bool)

(declare-fun e!4180648 () Bool)

(declare-fun tp_is_empty!43277 () Bool)

(assert (=> b!6951383 (= e!4180648 tp_is_empty!43277)))

(declare-fun res!2836072 () Bool)

(assert (=> b!6951384 (=> (not res!2836072) (not e!4180649))))

(declare-fun Exists!4022 (Int) Bool)

(assert (=> b!6951384 (= res!2836072 (not (Exists!4022 lambda!396451)))))

(declare-fun res!2836071 () Bool)

(assert (=> b!6951385 (=> (not res!2836071) (not e!4180649))))

(assert (=> b!6951385 (= res!2836071 (Exists!4022 lambda!396452))))

(declare-fun b!6951386 () Bool)

(declare-fun tp!1916313 () Bool)

(declare-fun tp!1916310 () Bool)

(assert (=> b!6951386 (= e!4180648 (and tp!1916313 tp!1916310))))

(declare-fun b!6951387 () Bool)

(declare-fun tp!1916315 () Bool)

(assert (=> b!6951387 (= e!4180648 tp!1916315)))

(declare-fun b!6951388 () Bool)

(declare-fun e!4180647 () Bool)

(declare-fun tp!1916312 () Bool)

(assert (=> b!6951388 (= e!4180647 (and tp_is_empty!43277 tp!1916312))))

(declare-fun b!6951389 () Bool)

(declare-fun res!2836075 () Bool)

(assert (=> b!6951389 (=> (not res!2836075) (not e!4180649))))

(assert (=> b!6951389 (= res!2836075 (not (Exists!4022 lambda!396451)))))

(declare-fun res!2836073 () Bool)

(assert (=> start!667192 (=> (not res!2836073) (not e!4180649))))

(declare-fun validRegex!8732 (Regex!17026) Bool)

(assert (=> start!667192 (= res!2836073 (validRegex!8732 rInner!765))))

(assert (=> start!667192 e!4180649))

(assert (=> start!667192 e!4180648))

(assert (=> start!667192 e!4180647))

(declare-fun b!6951390 () Bool)

(declare-fun tp!1916311 () Bool)

(declare-fun tp!1916314 () Bool)

(assert (=> b!6951390 (= e!4180648 (and tp!1916311 tp!1916314))))

(declare-fun b!6951391 () Bool)

(declare-fun res!2836074 () Bool)

(assert (=> b!6951391 (=> (not res!2836074) (not e!4180649))))

(declare-fun nullable!6839 (Regex!17026) Bool)

(assert (=> b!6951391 (= res!2836074 (not (nullable!6839 rInner!765)))))

(assert (= (and start!667192 res!2836073) b!6951391))

(assert (= (and b!6951391 res!2836074) b!6951384))

(assert (= (and b!6951384 res!2836072) b!6951389))

(assert (= (and b!6951389 res!2836075) b!6951385))

(assert (= (and b!6951385 res!2836071) b!6951382))

(assert (= (and start!667192 (is-ElementMatch!17026 rInner!765)) b!6951383))

(assert (= (and start!667192 (is-Concat!25871 rInner!765)) b!6951390))

(assert (= (and start!667192 (is-Star!17026 rInner!765)) b!6951387))

(assert (= (and start!667192 (is-Union!17026 rInner!765)) b!6951386))

(declare-fun s!10388 () List!66779)

(assert (= (and start!667192 (is-Cons!66655 s!10388)) b!6951388))

(declare-fun m!7652412 () Bool)

(assert (=> b!6951382 m!7652412))

(declare-fun m!7652414 () Bool)

(assert (=> b!6951382 m!7652414))

(declare-fun m!7652416 () Bool)

(assert (=> b!6951382 m!7652416))

(declare-fun m!7652418 () Bool)

(assert (=> b!6951382 m!7652418))

(declare-fun m!7652420 () Bool)

(assert (=> b!6951382 m!7652420))

(declare-fun m!7652422 () Bool)

(assert (=> b!6951382 m!7652422))

(declare-fun m!7652424 () Bool)

(assert (=> b!6951382 m!7652424))

(declare-fun m!7652426 () Bool)

(assert (=> b!6951382 m!7652426))

(declare-fun m!7652428 () Bool)

(assert (=> b!6951391 m!7652428))

(declare-fun m!7652430 () Bool)

(assert (=> b!6951384 m!7652430))

(assert (=> b!6951389 m!7652430))

(declare-fun m!7652432 () Bool)

(assert (=> start!667192 m!7652432))

(declare-fun m!7652434 () Bool)

(assert (=> b!6951385 m!7652434))

(push 1)

(assert (not b!6951382))

(assert (not start!667192))

(assert (not b!6951391))

(assert (not b!6951386))

(assert (not b!6951384))

(assert (not b!6951388))

(assert (not b!6951390))

(assert (not b!6951387))

(assert (not b!6951385))

(assert (not b!6951389))

(assert tp_is_empty!43277)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

