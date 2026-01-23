; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78956 () Bool)

(assert start!78956)

(declare-fun b!873322 () Bool)

(declare-fun e!574326 () Bool)

(declare-fun tp!276324 () Bool)

(declare-fun tp!276322 () Bool)

(assert (=> b!873322 (= e!574326 (and tp!276324 tp!276322))))

(declare-fun b!873323 () Bool)

(declare-fun tp_is_empty!4047 () Bool)

(assert (=> b!873323 (= e!574326 tp_is_empty!4047)))

(declare-fun res!397081 () Bool)

(declare-fun e!574325 () Bool)

(assert (=> start!78956 (=> (not res!397081) (not e!574325))))

(declare-datatypes ((C!4974 0))(
  ( (C!4975 (val!2735 Int)) )
))
(declare-datatypes ((Regex!2202 0))(
  ( (ElementMatch!2202 (c!141263 C!4974)) (Concat!4035 (regOne!4916 Regex!2202) (regTwo!4916 Regex!2202)) (EmptyExpr!2202) (Star!2202 (reg!2531 Regex!2202)) (EmptyLang!2202) (Union!2202 (regOne!4917 Regex!2202) (regTwo!4917 Regex!2202)) )
))
(declare-fun r!15766 () Regex!2202)

(declare-fun validRegex!671 (Regex!2202) Bool)

(assert (=> start!78956 (= res!397081 (validRegex!671 r!15766))))

(assert (=> start!78956 e!574325))

(assert (=> start!78956 e!574326))

(declare-fun e!574324 () Bool)

(assert (=> start!78956 e!574324))

(declare-fun b!873324 () Bool)

(declare-fun tp!276326 () Bool)

(assert (=> b!873324 (= e!574324 (and tp_is_empty!4047 tp!276326))))

(declare-fun b!873325 () Bool)

(assert (=> b!873325 (= e!574325 (not true))))

(declare-datatypes ((List!9432 0))(
  ( (Nil!9416) (Cons!9416 (h!14817 C!4974) (t!100478 List!9432)) )
))
(declare-fun s!10566 () List!9432)

(declare-fun matchR!740 (Regex!2202 List!9432) Bool)

(declare-fun matchRSpec!3 (Regex!2202 List!9432) Bool)

(assert (=> b!873325 (= (matchR!740 r!15766 s!10566) (matchRSpec!3 r!15766 s!10566))))

(declare-datatypes ((Unit!13983 0))(
  ( (Unit!13984) )
))
(declare-fun lt!329316 () Unit!13983)

(declare-fun mainMatchTheorem!3 (Regex!2202 List!9432) Unit!13983)

(assert (=> b!873325 (= lt!329316 (mainMatchTheorem!3 r!15766 s!10566))))

(declare-fun b!873326 () Bool)

(declare-fun tp!276325 () Bool)

(declare-fun tp!276323 () Bool)

(assert (=> b!873326 (= e!574326 (and tp!276325 tp!276323))))

(declare-fun b!873327 () Bool)

(declare-fun tp!276321 () Bool)

(assert (=> b!873327 (= e!574326 tp!276321)))

(assert (= (and start!78956 res!397081) b!873325))

(assert (= (and start!78956 (is-ElementMatch!2202 r!15766)) b!873323))

(assert (= (and start!78956 (is-Concat!4035 r!15766)) b!873322))

(assert (= (and start!78956 (is-Star!2202 r!15766)) b!873327))

(assert (= (and start!78956 (is-Union!2202 r!15766)) b!873326))

(assert (= (and start!78956 (is-Cons!9416 s!10566)) b!873324))

(declare-fun m!1125877 () Bool)

(assert (=> start!78956 m!1125877))

(declare-fun m!1125879 () Bool)

(assert (=> b!873325 m!1125879))

(declare-fun m!1125881 () Bool)

(assert (=> b!873325 m!1125881))

(declare-fun m!1125883 () Bool)

(assert (=> b!873325 m!1125883))

(push 1)

(assert (not b!873324))

(assert (not b!873322))

(assert (not b!873327))

(assert tp_is_empty!4047)

(assert (not start!78956))

(assert (not b!873325))

(assert (not b!873326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

