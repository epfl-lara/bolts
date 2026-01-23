; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81264 () Bool)

(assert start!81264)

(declare-fun b!903528 () Bool)

(assert (=> b!903528 true))

(assert (=> b!903528 true))

(declare-fun lambda!28336 () Int)

(declare-fun lambda!28335 () Int)

(assert (=> b!903528 (not (= lambda!28336 lambda!28335))))

(assert (=> b!903528 true))

(assert (=> b!903528 true))

(declare-fun b!903522 () Bool)

(declare-fun e!590369 () Bool)

(declare-fun tp!283138 () Bool)

(assert (=> b!903522 (= e!590369 tp!283138)))

(declare-fun b!903523 () Bool)

(declare-fun tp!283134 () Bool)

(declare-fun tp!283137 () Bool)

(assert (=> b!903523 (= e!590369 (and tp!283134 tp!283137))))

(declare-fun b!903524 () Bool)

(declare-fun tp!283136 () Bool)

(declare-fun tp!283135 () Bool)

(assert (=> b!903524 (= e!590369 (and tp!283136 tp!283135))))

(declare-fun b!903525 () Bool)

(declare-fun tp_is_empty!4407 () Bool)

(assert (=> b!903525 (= e!590369 tp_is_empty!4407)))

(declare-fun b!903526 () Bool)

(declare-fun e!590367 () Bool)

(declare-fun e!590368 () Bool)

(assert (=> b!903526 (= e!590367 (not e!590368))))

(declare-fun res!410824 () Bool)

(assert (=> b!903526 (=> res!410824 e!590368)))

(declare-fun lt!335242 () Bool)

(declare-datatypes ((C!5334 0))(
  ( (C!5335 (val!2915 Int)) )
))
(declare-datatypes ((Regex!2382 0))(
  ( (ElementMatch!2382 (c!146369 C!5334)) (Concat!4215 (regOne!5276 Regex!2382) (regTwo!5276 Regex!2382)) (EmptyExpr!2382) (Star!2382 (reg!2711 Regex!2382)) (EmptyLang!2382) (Union!2382 (regOne!5277 Regex!2382) (regTwo!5277 Regex!2382)) )
))
(declare-fun r!15766 () Regex!2382)

(assert (=> b!903526 (= res!410824 (or lt!335242 (not (is-Concat!4215 r!15766)) (not (is-EmptyExpr!2382 (regOne!5276 r!15766)))))))

(declare-datatypes ((List!9612 0))(
  ( (Nil!9596) (Cons!9596 (h!14997 C!5334) (t!100658 List!9612)) )
))
(declare-fun s!10566 () List!9612)

(declare-fun matchRSpec!183 (Regex!2382 List!9612) Bool)

(assert (=> b!903526 (= lt!335242 (matchRSpec!183 r!15766 s!10566))))

(declare-fun matchR!920 (Regex!2382 List!9612) Bool)

(assert (=> b!903526 (= lt!335242 (matchR!920 r!15766 s!10566))))

(declare-datatypes ((Unit!14383 0))(
  ( (Unit!14384) )
))
(declare-fun lt!335241 () Unit!14383)

(declare-fun mainMatchTheorem!183 (Regex!2382 List!9612) Unit!14383)

(assert (=> b!903526 (= lt!335241 (mainMatchTheorem!183 r!15766 s!10566))))

(declare-fun res!410823 () Bool)

(assert (=> start!81264 (=> (not res!410823) (not e!590367))))

(declare-fun validRegex!851 (Regex!2382) Bool)

(assert (=> start!81264 (= res!410823 (validRegex!851 r!15766))))

(assert (=> start!81264 e!590367))

(assert (=> start!81264 e!590369))

(declare-fun e!590366 () Bool)

(assert (=> start!81264 e!590366))

(declare-fun b!903527 () Bool)

(declare-fun tp!283133 () Bool)

(assert (=> b!903527 (= e!590366 (and tp_is_empty!4407 tp!283133))))

(assert (=> b!903528 (= e!590368 true)))

(declare-fun Exists!157 (Int) Bool)

(assert (=> b!903528 (= (Exists!157 lambda!28335) (Exists!157 lambda!28336))))

(declare-fun lt!335240 () Unit!14383)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!73 (Regex!2382 Regex!2382 List!9612) Unit!14383)

(assert (=> b!903528 (= lt!335240 (lemmaExistCutMatchRandMatchRSpecEquivalent!73 EmptyExpr!2382 (regTwo!5276 r!15766) s!10566))))

(declare-datatypes ((tuple2!10758 0))(
  ( (tuple2!10759 (_1!6205 List!9612) (_2!6205 List!9612)) )
))
(declare-datatypes ((Option!2021 0))(
  ( (None!2020) (Some!2020 (v!19437 tuple2!10758)) )
))
(declare-fun isDefined!1663 (Option!2021) Bool)

(declare-fun findConcatSeparation!127 (Regex!2382 Regex!2382 List!9612 List!9612 List!9612) Option!2021)

(assert (=> b!903528 (= (isDefined!1663 (findConcatSeparation!127 EmptyExpr!2382 (regTwo!5276 r!15766) Nil!9596 s!10566 s!10566)) (Exists!157 lambda!28335))))

(declare-fun lt!335243 () Unit!14383)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!127 (Regex!2382 Regex!2382 List!9612) Unit!14383)

(assert (=> b!903528 (= lt!335243 (lemmaFindConcatSeparationEquivalentToExists!127 EmptyExpr!2382 (regTwo!5276 r!15766) s!10566))))

(assert (= (and start!81264 res!410823) b!903526))

(assert (= (and b!903526 (not res!410824)) b!903528))

(assert (= (and start!81264 (is-ElementMatch!2382 r!15766)) b!903525))

(assert (= (and start!81264 (is-Concat!4215 r!15766)) b!903524))

(assert (= (and start!81264 (is-Star!2382 r!15766)) b!903522))

(assert (= (and start!81264 (is-Union!2382 r!15766)) b!903523))

(assert (= (and start!81264 (is-Cons!9596 s!10566)) b!903527))

(declare-fun m!1139925 () Bool)

(assert (=> b!903526 m!1139925))

(declare-fun m!1139927 () Bool)

(assert (=> b!903526 m!1139927))

(declare-fun m!1139929 () Bool)

(assert (=> b!903526 m!1139929))

(declare-fun m!1139931 () Bool)

(assert (=> start!81264 m!1139931))

(declare-fun m!1139933 () Bool)

(assert (=> b!903528 m!1139933))

(declare-fun m!1139935 () Bool)

(assert (=> b!903528 m!1139935))

(declare-fun m!1139937 () Bool)

(assert (=> b!903528 m!1139937))

(declare-fun m!1139939 () Bool)

(assert (=> b!903528 m!1139939))

(declare-fun m!1139941 () Bool)

(assert (=> b!903528 m!1139941))

(declare-fun m!1139943 () Bool)

(assert (=> b!903528 m!1139943))

(assert (=> b!903528 m!1139933))

(assert (=> b!903528 m!1139943))

(push 1)

(assert (not b!903524))

(assert (not b!903522))

(assert (not b!903526))

(assert tp_is_empty!4407)

(assert (not b!903527))

(assert (not b!903523))

(assert (not b!903528))

(assert (not start!81264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

