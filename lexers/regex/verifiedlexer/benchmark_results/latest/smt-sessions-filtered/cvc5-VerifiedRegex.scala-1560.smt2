; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81256 () Bool)

(assert start!81256)

(declare-fun b!903414 () Bool)

(declare-fun e!590312 () Bool)

(declare-fun tp_is_empty!4399 () Bool)

(declare-fun tp!283065 () Bool)

(assert (=> b!903414 (= e!590312 (and tp_is_empty!4399 tp!283065))))

(declare-fun b!903415 () Bool)

(declare-fun e!590313 () Bool)

(assert (=> b!903415 (= e!590313 tp_is_empty!4399)))

(declare-fun b!903416 () Bool)

(declare-fun e!590314 () Bool)

(assert (=> b!903416 (= e!590314 (not true))))

(declare-datatypes ((C!5326 0))(
  ( (C!5327 (val!2911 Int)) )
))
(declare-datatypes ((Regex!2378 0))(
  ( (ElementMatch!2378 (c!146365 C!5326)) (Concat!4211 (regOne!5268 Regex!2378) (regTwo!5268 Regex!2378)) (EmptyExpr!2378) (Star!2378 (reg!2707 Regex!2378)) (EmptyLang!2378) (Union!2378 (regOne!5269 Regex!2378) (regTwo!5269 Regex!2378)) )
))
(declare-fun r!15766 () Regex!2378)

(declare-datatypes ((List!9608 0))(
  ( (Nil!9592) (Cons!9592 (h!14993 C!5326) (t!100654 List!9608)) )
))
(declare-fun s!10566 () List!9608)

(declare-fun matchR!916 (Regex!2378 List!9608) Bool)

(declare-fun matchRSpec!179 (Regex!2378 List!9608) Bool)

(assert (=> b!903416 (= (matchR!916 r!15766 s!10566) (matchRSpec!179 r!15766 s!10566))))

(declare-datatypes ((Unit!14375 0))(
  ( (Unit!14376) )
))
(declare-fun lt!335210 () Unit!14375)

(declare-fun mainMatchTheorem!179 (Regex!2378 List!9608) Unit!14375)

(assert (=> b!903416 (= lt!335210 (mainMatchTheorem!179 r!15766 s!10566))))

(declare-fun res!410783 () Bool)

(assert (=> start!81256 (=> (not res!410783) (not e!590314))))

(declare-fun validRegex!847 (Regex!2378) Bool)

(assert (=> start!81256 (= res!410783 (validRegex!847 r!15766))))

(assert (=> start!81256 e!590314))

(assert (=> start!81256 e!590313))

(assert (=> start!81256 e!590312))

(declare-fun b!903417 () Bool)

(declare-fun tp!283062 () Bool)

(declare-fun tp!283066 () Bool)

(assert (=> b!903417 (= e!590313 (and tp!283062 tp!283066))))

(declare-fun b!903418 () Bool)

(declare-fun tp!283064 () Bool)

(assert (=> b!903418 (= e!590313 tp!283064)))

(declare-fun b!903419 () Bool)

(declare-fun tp!283063 () Bool)

(declare-fun tp!283061 () Bool)

(assert (=> b!903419 (= e!590313 (and tp!283063 tp!283061))))

(assert (= (and start!81256 res!410783) b!903416))

(assert (= (and start!81256 (is-ElementMatch!2378 r!15766)) b!903415))

(assert (= (and start!81256 (is-Concat!4211 r!15766)) b!903417))

(assert (= (and start!81256 (is-Star!2378 r!15766)) b!903418))

(assert (= (and start!81256 (is-Union!2378 r!15766)) b!903419))

(assert (= (and start!81256 (is-Cons!9592 s!10566)) b!903414))

(declare-fun m!1139877 () Bool)

(assert (=> b!903416 m!1139877))

(declare-fun m!1139879 () Bool)

(assert (=> b!903416 m!1139879))

(declare-fun m!1139881 () Bool)

(assert (=> b!903416 m!1139881))

(declare-fun m!1139883 () Bool)

(assert (=> start!81256 m!1139883))

(push 1)

(assert tp_is_empty!4399)

(assert (not b!903418))

(assert (not b!903419))

(assert (not b!903417))

(assert (not b!903416))

(assert (not start!81256))

(assert (not b!903414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

