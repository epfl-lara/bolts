; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81260 () Bool)

(assert start!81260)

(declare-fun b!903462 () Bool)

(assert (=> b!903462 true))

(assert (=> b!903462 true))

(declare-fun b!903456 () Bool)

(declare-fun e!590337 () Bool)

(declare-fun tp_is_empty!4403 () Bool)

(assert (=> b!903456 (= e!590337 tp_is_empty!4403)))

(declare-fun res!410795 () Bool)

(declare-fun e!590336 () Bool)

(assert (=> start!81260 (=> (not res!410795) (not e!590336))))

(declare-datatypes ((C!5330 0))(
  ( (C!5331 (val!2913 Int)) )
))
(declare-datatypes ((Regex!2380 0))(
  ( (ElementMatch!2380 (c!146367 C!5330)) (Concat!4213 (regOne!5272 Regex!2380) (regTwo!5272 Regex!2380)) (EmptyExpr!2380) (Star!2380 (reg!2709 Regex!2380)) (EmptyLang!2380) (Union!2380 (regOne!5273 Regex!2380) (regTwo!5273 Regex!2380)) )
))
(declare-fun r!15766 () Regex!2380)

(declare-fun validRegex!849 (Regex!2380) Bool)

(assert (=> start!81260 (= res!410795 (validRegex!849 r!15766))))

(assert (=> start!81260 e!590336))

(assert (=> start!81260 e!590337))

(declare-fun e!590334 () Bool)

(assert (=> start!81260 e!590334))

(declare-fun b!903457 () Bool)

(declare-fun tp!283101 () Bool)

(declare-fun tp!283098 () Bool)

(assert (=> b!903457 (= e!590337 (and tp!283101 tp!283098))))

(declare-fun b!903458 () Bool)

(declare-fun tp!283100 () Bool)

(assert (=> b!903458 (= e!590334 (and tp_is_empty!4403 tp!283100))))

(declare-fun b!903459 () Bool)

(declare-fun tp!283099 () Bool)

(declare-fun tp!283102 () Bool)

(assert (=> b!903459 (= e!590337 (and tp!283099 tp!283102))))

(declare-fun b!903460 () Bool)

(declare-fun e!590335 () Bool)

(assert (=> b!903460 (= e!590336 (not e!590335))))

(declare-fun res!410796 () Bool)

(assert (=> b!903460 (=> res!410796 e!590335)))

(declare-fun lt!335222 () Bool)

(assert (=> b!903460 (= res!410796 (or lt!335222 (not (is-Concat!4213 r!15766)) (not (is-EmptyExpr!2380 (regOne!5272 r!15766)))))))

(declare-datatypes ((List!9610 0))(
  ( (Nil!9594) (Cons!9594 (h!14995 C!5330) (t!100656 List!9610)) )
))
(declare-fun s!10566 () List!9610)

(declare-fun matchRSpec!181 (Regex!2380 List!9610) Bool)

(assert (=> b!903460 (= lt!335222 (matchRSpec!181 r!15766 s!10566))))

(declare-fun matchR!918 (Regex!2380 List!9610) Bool)

(assert (=> b!903460 (= lt!335222 (matchR!918 r!15766 s!10566))))

(declare-datatypes ((Unit!14379 0))(
  ( (Unit!14380) )
))
(declare-fun lt!335221 () Unit!14379)

(declare-fun mainMatchTheorem!181 (Regex!2380 List!9610) Unit!14379)

(assert (=> b!903460 (= lt!335221 (mainMatchTheorem!181 r!15766 s!10566))))

(declare-fun b!903461 () Bool)

(declare-fun tp!283097 () Bool)

(assert (=> b!903461 (= e!590337 tp!283097)))

(assert (=> b!903462 (= e!590335 true)))

(declare-fun lambda!28325 () Int)

(declare-datatypes ((tuple2!10754 0))(
  ( (tuple2!10755 (_1!6203 List!9610) (_2!6203 List!9610)) )
))
(declare-datatypes ((Option!2019 0))(
  ( (None!2018) (Some!2018 (v!19435 tuple2!10754)) )
))
(declare-fun isDefined!1661 (Option!2019) Bool)

(declare-fun findConcatSeparation!125 (Regex!2380 Regex!2380 List!9610 List!9610 List!9610) Option!2019)

(declare-fun Exists!155 (Int) Bool)

(assert (=> b!903462 (= (isDefined!1661 (findConcatSeparation!125 EmptyExpr!2380 (regTwo!5272 r!15766) Nil!9594 s!10566 s!10566)) (Exists!155 lambda!28325))))

(declare-fun lt!335220 () Unit!14379)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!125 (Regex!2380 Regex!2380 List!9610) Unit!14379)

(assert (=> b!903462 (= lt!335220 (lemmaFindConcatSeparationEquivalentToExists!125 EmptyExpr!2380 (regTwo!5272 r!15766) s!10566))))

(assert (= (and start!81260 res!410795) b!903460))

(assert (= (and b!903460 (not res!410796)) b!903462))

(assert (= (and start!81260 (is-ElementMatch!2380 r!15766)) b!903456))

(assert (= (and start!81260 (is-Concat!4213 r!15766)) b!903457))

(assert (= (and start!81260 (is-Star!2380 r!15766)) b!903461))

(assert (= (and start!81260 (is-Union!2380 r!15766)) b!903459))

(assert (= (and start!81260 (is-Cons!9594 s!10566)) b!903458))

(declare-fun m!1139893 () Bool)

(assert (=> start!81260 m!1139893))

(declare-fun m!1139895 () Bool)

(assert (=> b!903460 m!1139895))

(declare-fun m!1139897 () Bool)

(assert (=> b!903460 m!1139897))

(declare-fun m!1139899 () Bool)

(assert (=> b!903460 m!1139899))

(declare-fun m!1139901 () Bool)

(assert (=> b!903462 m!1139901))

(assert (=> b!903462 m!1139901))

(declare-fun m!1139903 () Bool)

(assert (=> b!903462 m!1139903))

(declare-fun m!1139905 () Bool)

(assert (=> b!903462 m!1139905))

(declare-fun m!1139907 () Bool)

(assert (=> b!903462 m!1139907))

(push 1)

(assert (not start!81260))

(assert (not b!903457))

(assert (not b!903462))

(assert (not b!903461))

(assert (not b!903459))

(assert tp_is_empty!4403)

(assert (not b!903458))

(assert (not b!903460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

