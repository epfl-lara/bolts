; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88654 () Bool)

(assert start!88654)

(declare-fun b!1018421 () Bool)

(assert (=> b!1018421 true))

(assert (=> b!1018421 true))

(declare-fun b!1018419 () Bool)

(declare-fun e!650649 () Bool)

(declare-fun tp!309648 () Bool)

(declare-fun tp!309646 () Bool)

(assert (=> b!1018419 (= e!650649 (and tp!309648 tp!309646))))

(declare-fun res!457631 () Bool)

(declare-fun e!650651 () Bool)

(assert (=> start!88654 (=> (not res!457631) (not e!650651))))

(declare-datatypes ((C!6188 0))(
  ( (C!6189 (val!3342 Int)) )
))
(declare-datatypes ((Regex!2809 0))(
  ( (ElementMatch!2809 (c!168746 C!6188)) (Concat!4642 (regOne!6130 Regex!2809) (regTwo!6130 Regex!2809)) (EmptyExpr!2809) (Star!2809 (reg!3138 Regex!2809)) (EmptyLang!2809) (Union!2809 (regOne!6131 Regex!2809) (regTwo!6131 Regex!2809)) )
))
(declare-fun r!15766 () Regex!2809)

(declare-fun validRegex!1278 (Regex!2809) Bool)

(assert (=> start!88654 (= res!457631 (validRegex!1278 r!15766))))

(assert (=> start!88654 e!650651))

(assert (=> start!88654 e!650649))

(declare-fun e!650650 () Bool)

(assert (=> start!88654 e!650650))

(declare-fun b!1018420 () Bool)

(declare-fun tp!309645 () Bool)

(declare-fun tp!309644 () Bool)

(assert (=> b!1018420 (= e!650649 (and tp!309645 tp!309644))))

(declare-fun e!650648 () Bool)

(assert (=> b!1018421 (= e!650648 true)))

(declare-datatypes ((List!10039 0))(
  ( (Nil!10023) (Cons!10023 (h!15424 C!6188) (t!101085 List!10039)) )
))
(declare-fun s!10566 () List!10039)

(declare-fun lambda!36078 () Int)

(declare-datatypes ((tuple2!11400 0))(
  ( (tuple2!11401 (_1!6526 List!10039) (_2!6526 List!10039)) )
))
(declare-datatypes ((Option!2342 0))(
  ( (None!2341) (Some!2341 (v!19758 tuple2!11400)) )
))
(declare-fun isDefined!1984 (Option!2342) Bool)

(declare-fun findConcatSeparation!448 (Regex!2809 Regex!2809 List!10039 List!10039 List!10039) Option!2342)

(declare-fun Exists!538 (Int) Bool)

(assert (=> b!1018421 (= (isDefined!1984 (findConcatSeparation!448 EmptyExpr!2809 (regTwo!6130 r!15766) Nil!10023 s!10566 s!10566)) (Exists!538 lambda!36078))))

(declare-datatypes ((Unit!15293 0))(
  ( (Unit!15294) )
))
(declare-fun lt!353895 () Unit!15293)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!448 (Regex!2809 Regex!2809 List!10039) Unit!15293)

(assert (=> b!1018421 (= lt!353895 (lemmaFindConcatSeparationEquivalentToExists!448 EmptyExpr!2809 (regTwo!6130 r!15766) s!10566))))

(declare-fun b!1018422 () Bool)

(declare-fun tp_is_empty!5261 () Bool)

(declare-fun tp!309643 () Bool)

(assert (=> b!1018422 (= e!650650 (and tp_is_empty!5261 tp!309643))))

(declare-fun b!1018423 () Bool)

(assert (=> b!1018423 (= e!650649 tp_is_empty!5261)))

(declare-fun b!1018424 () Bool)

(assert (=> b!1018424 (= e!650651 (not e!650648))))

(declare-fun res!457632 () Bool)

(assert (=> b!1018424 (=> res!457632 e!650648)))

(declare-fun lt!353894 () Bool)

(get-info :version)

(assert (=> b!1018424 (= res!457632 (or lt!353894 (not ((_ is Concat!4642) r!15766)) (not ((_ is EmptyExpr!2809) (regOne!6130 r!15766)))))))

(declare-fun matchRSpec!608 (Regex!2809 List!10039) Bool)

(assert (=> b!1018424 (= lt!353894 (matchRSpec!608 r!15766 s!10566))))

(declare-fun matchR!1345 (Regex!2809 List!10039) Bool)

(assert (=> b!1018424 (= lt!353894 (matchR!1345 r!15766 s!10566))))

(declare-fun lt!353893 () Unit!15293)

(declare-fun mainMatchTheorem!608 (Regex!2809 List!10039) Unit!15293)

(assert (=> b!1018424 (= lt!353893 (mainMatchTheorem!608 r!15766 s!10566))))

(declare-fun b!1018425 () Bool)

(declare-fun tp!309647 () Bool)

(assert (=> b!1018425 (= e!650649 tp!309647)))

(assert (= (and start!88654 res!457631) b!1018424))

(assert (= (and b!1018424 (not res!457632)) b!1018421))

(assert (= (and start!88654 ((_ is ElementMatch!2809) r!15766)) b!1018423))

(assert (= (and start!88654 ((_ is Concat!4642) r!15766)) b!1018419))

(assert (= (and start!88654 ((_ is Star!2809) r!15766)) b!1018425))

(assert (= (and start!88654 ((_ is Union!2809) r!15766)) b!1018420))

(assert (= (and start!88654 ((_ is Cons!10023) s!10566)) b!1018422))

(declare-fun m!1198925 () Bool)

(assert (=> start!88654 m!1198925))

(declare-fun m!1198927 () Bool)

(assert (=> b!1018421 m!1198927))

(assert (=> b!1018421 m!1198927))

(declare-fun m!1198929 () Bool)

(assert (=> b!1018421 m!1198929))

(declare-fun m!1198931 () Bool)

(assert (=> b!1018421 m!1198931))

(declare-fun m!1198933 () Bool)

(assert (=> b!1018421 m!1198933))

(declare-fun m!1198935 () Bool)

(assert (=> b!1018424 m!1198935))

(declare-fun m!1198937 () Bool)

(assert (=> b!1018424 m!1198937))

(declare-fun m!1198939 () Bool)

(assert (=> b!1018424 m!1198939))

(check-sat (not b!1018425) (not b!1018424) (not b!1018421) (not b!1018419) (not b!1018422) (not b!1018420) tp_is_empty!5261 (not start!88654))
(check-sat)
