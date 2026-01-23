; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78952 () Bool)

(assert start!78952)

(declare-fun b!873286 () Bool)

(declare-fun e!574308 () Bool)

(declare-fun tp!276289 () Bool)

(declare-fun tp!276287 () Bool)

(assert (=> b!873286 (= e!574308 (and tp!276289 tp!276287))))

(declare-fun b!873287 () Bool)

(declare-fun e!574307 () Bool)

(declare-fun tp_is_empty!4043 () Bool)

(declare-fun tp!276286 () Bool)

(assert (=> b!873287 (= e!574307 (and tp_is_empty!4043 tp!276286))))

(declare-fun b!873288 () Bool)

(declare-fun e!574306 () Bool)

(assert (=> b!873288 (= e!574306 (not true))))

(declare-datatypes ((C!4970 0))(
  ( (C!4971 (val!2733 Int)) )
))
(declare-datatypes ((Regex!2200 0))(
  ( (ElementMatch!2200 (c!141261 C!4970)) (Concat!4033 (regOne!4912 Regex!2200) (regTwo!4912 Regex!2200)) (EmptyExpr!2200) (Star!2200 (reg!2529 Regex!2200)) (EmptyLang!2200) (Union!2200 (regOne!4913 Regex!2200) (regTwo!4913 Regex!2200)) )
))
(declare-fun r!15766 () Regex!2200)

(declare-datatypes ((List!9430 0))(
  ( (Nil!9414) (Cons!9414 (h!14815 C!4970) (t!100476 List!9430)) )
))
(declare-fun s!10566 () List!9430)

(declare-fun matchR!738 (Regex!2200 List!9430) Bool)

(declare-fun matchRSpec!1 (Regex!2200 List!9430) Bool)

(assert (=> b!873288 (= (matchR!738 r!15766 s!10566) (matchRSpec!1 r!15766 s!10566))))

(declare-datatypes ((Unit!13979 0))(
  ( (Unit!13980) )
))
(declare-fun lt!329310 () Unit!13979)

(declare-fun mainMatchTheorem!1 (Regex!2200 List!9430) Unit!13979)

(assert (=> b!873288 (= lt!329310 (mainMatchTheorem!1 r!15766 s!10566))))

(declare-fun b!873289 () Bool)

(declare-fun tp!276288 () Bool)

(declare-fun tp!276290 () Bool)

(assert (=> b!873289 (= e!574308 (and tp!276288 tp!276290))))

(declare-fun b!873290 () Bool)

(declare-fun tp!276285 () Bool)

(assert (=> b!873290 (= e!574308 tp!276285)))

(declare-fun b!873291 () Bool)

(assert (=> b!873291 (= e!574308 tp_is_empty!4043)))

(declare-fun res!397075 () Bool)

(assert (=> start!78952 (=> (not res!397075) (not e!574306))))

(declare-fun validRegex!669 (Regex!2200) Bool)

(assert (=> start!78952 (= res!397075 (validRegex!669 r!15766))))

(assert (=> start!78952 e!574306))

(assert (=> start!78952 e!574308))

(assert (=> start!78952 e!574307))

(assert (= (and start!78952 res!397075) b!873288))

(assert (= (and start!78952 (is-ElementMatch!2200 r!15766)) b!873291))

(assert (= (and start!78952 (is-Concat!4033 r!15766)) b!873286))

(assert (= (and start!78952 (is-Star!2200 r!15766)) b!873290))

(assert (= (and start!78952 (is-Union!2200 r!15766)) b!873289))

(assert (= (and start!78952 (is-Cons!9414 s!10566)) b!873287))

(declare-fun m!1125861 () Bool)

(assert (=> b!873288 m!1125861))

(declare-fun m!1125863 () Bool)

(assert (=> b!873288 m!1125863))

(declare-fun m!1125865 () Bool)

(assert (=> b!873288 m!1125865))

(declare-fun m!1125867 () Bool)

(assert (=> start!78952 m!1125867))

(push 1)

(assert (not b!873287))

(assert tp_is_empty!4043)

(assert (not b!873290))

(assert (not b!873288))

(assert (not start!78952))

(assert (not b!873286))

(assert (not b!873289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

