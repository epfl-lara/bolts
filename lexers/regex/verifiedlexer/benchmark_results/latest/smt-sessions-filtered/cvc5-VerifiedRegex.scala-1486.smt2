; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79300 () Bool)

(assert start!79300)

(declare-fun b!877404 () Bool)

(declare-fun e!576488 () Bool)

(declare-fun tp_is_empty!4103 () Bool)

(assert (=> b!877404 (= e!576488 tp_is_empty!4103)))

(declare-fun b!877405 () Bool)

(declare-fun e!576490 () Bool)

(declare-fun tp!277359 () Bool)

(assert (=> b!877405 (= e!576490 (and tp_is_empty!4103 tp!277359))))

(declare-fun res!398941 () Bool)

(declare-fun e!576489 () Bool)

(assert (=> start!79300 (=> (not res!398941) (not e!576489))))

(declare-datatypes ((C!5030 0))(
  ( (C!5031 (val!2763 Int)) )
))
(declare-datatypes ((Regex!2230 0))(
  ( (ElementMatch!2230 (c!141895 C!5030)) (Concat!4063 (regOne!4972 Regex!2230) (regTwo!4972 Regex!2230)) (EmptyExpr!2230) (Star!2230 (reg!2559 Regex!2230)) (EmptyLang!2230) (Union!2230 (regOne!4973 Regex!2230) (regTwo!4973 Regex!2230)) )
))
(declare-fun r!15766 () Regex!2230)

(declare-fun validRegex!699 (Regex!2230) Bool)

(assert (=> start!79300 (= res!398941 (validRegex!699 r!15766))))

(assert (=> start!79300 e!576489))

(assert (=> start!79300 e!576488))

(assert (=> start!79300 e!576490))

(declare-fun b!877406 () Bool)

(assert (=> b!877406 (= e!576489 (not true))))

(declare-datatypes ((List!9460 0))(
  ( (Nil!9444) (Cons!9444 (h!14845 C!5030) (t!100506 List!9460)) )
))
(declare-fun s!10566 () List!9460)

(declare-fun matchR!768 (Regex!2230 List!9460) Bool)

(declare-fun matchRSpec!31 (Regex!2230 List!9460) Bool)

(assert (=> b!877406 (= (matchR!768 r!15766 s!10566) (matchRSpec!31 r!15766 s!10566))))

(declare-datatypes ((Unit!14039 0))(
  ( (Unit!14040) )
))
(declare-fun lt!330008 () Unit!14039)

(declare-fun mainMatchTheorem!31 (Regex!2230 List!9460) Unit!14039)

(assert (=> b!877406 (= lt!330008 (mainMatchTheorem!31 r!15766 s!10566))))

(declare-fun b!877407 () Bool)

(declare-fun tp!277358 () Bool)

(declare-fun tp!277362 () Bool)

(assert (=> b!877407 (= e!576488 (and tp!277358 tp!277362))))

(declare-fun b!877408 () Bool)

(declare-fun tp!277361 () Bool)

(declare-fun tp!277360 () Bool)

(assert (=> b!877408 (= e!576488 (and tp!277361 tp!277360))))

(declare-fun b!877409 () Bool)

(declare-fun tp!277357 () Bool)

(assert (=> b!877409 (= e!576488 tp!277357)))

(assert (= (and start!79300 res!398941) b!877406))

(assert (= (and start!79300 (is-ElementMatch!2230 r!15766)) b!877404))

(assert (= (and start!79300 (is-Concat!4063 r!15766)) b!877408))

(assert (= (and start!79300 (is-Star!2230 r!15766)) b!877409))

(assert (= (and start!79300 (is-Union!2230 r!15766)) b!877407))

(assert (= (and start!79300 (is-Cons!9444 s!10566)) b!877405))

(declare-fun m!1127669 () Bool)

(assert (=> start!79300 m!1127669))

(declare-fun m!1127671 () Bool)

(assert (=> b!877406 m!1127671))

(declare-fun m!1127673 () Bool)

(assert (=> b!877406 m!1127673))

(declare-fun m!1127675 () Bool)

(assert (=> b!877406 m!1127675))

(push 1)

(assert (not b!877406))

(assert tp_is_empty!4103)

(assert (not b!877409))

(assert (not b!877405))

(assert (not b!877407))

(assert (not start!79300))

(assert (not b!877408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

