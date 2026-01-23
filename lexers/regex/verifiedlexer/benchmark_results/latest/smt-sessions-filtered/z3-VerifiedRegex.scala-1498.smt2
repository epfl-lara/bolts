; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79570 () Bool)

(assert start!79570)

(declare-fun b!880523 () Bool)

(assert (=> b!880523 true))

(assert (=> b!880523 true))

(declare-fun b!880519 () Bool)

(declare-fun e!578101 () Bool)

(declare-fun tp!278189 () Bool)

(assert (=> b!880519 (= e!578101 tp!278189)))

(declare-fun b!880520 () Bool)

(declare-fun tp!278192 () Bool)

(declare-fun tp!278187 () Bool)

(assert (=> b!880520 (= e!578101 (and tp!278192 tp!278187))))

(declare-fun b!880521 () Bool)

(declare-fun tp!278188 () Bool)

(declare-fun tp!278191 () Bool)

(assert (=> b!880521 (= e!578101 (and tp!278188 tp!278191))))

(declare-fun b!880522 () Bool)

(declare-fun e!578103 () Bool)

(declare-fun e!578102 () Bool)

(assert (=> b!880522 (= e!578103 (not e!578102))))

(declare-fun res!400415 () Bool)

(assert (=> b!880522 (=> res!400415 e!578102)))

(declare-fun lt!330593 () Bool)

(declare-datatypes ((C!5080 0))(
  ( (C!5081 (val!2788 Int)) )
))
(declare-datatypes ((Regex!2255 0))(
  ( (ElementMatch!2255 (c!142336 C!5080)) (Concat!4088 (regOne!5022 Regex!2255) (regTwo!5022 Regex!2255)) (EmptyExpr!2255) (Star!2255 (reg!2584 Regex!2255)) (EmptyLang!2255) (Union!2255 (regOne!5023 Regex!2255) (regTwo!5023 Regex!2255)) )
))
(declare-fun r!15766 () Regex!2255)

(get-info :version)

(assert (=> b!880522 (= res!400415 (or (not lt!330593) (and ((_ is Concat!4088) r!15766) ((_ is EmptyExpr!2255) (regOne!5022 r!15766))) (and ((_ is Concat!4088) r!15766) ((_ is EmptyExpr!2255) (regTwo!5022 r!15766))) (not ((_ is Concat!4088) r!15766))))))

(declare-datatypes ((List!9485 0))(
  ( (Nil!9469) (Cons!9469 (h!14870 C!5080) (t!100531 List!9485)) )
))
(declare-fun s!10566 () List!9485)

(declare-fun matchRSpec!56 (Regex!2255 List!9485) Bool)

(assert (=> b!880522 (= lt!330593 (matchRSpec!56 r!15766 s!10566))))

(declare-fun matchR!793 (Regex!2255 List!9485) Bool)

(assert (=> b!880522 (= lt!330593 (matchR!793 r!15766 s!10566))))

(declare-datatypes ((Unit!14089 0))(
  ( (Unit!14090) )
))
(declare-fun lt!330595 () Unit!14089)

(declare-fun mainMatchTheorem!56 (Regex!2255 List!9485) Unit!14089)

(assert (=> b!880522 (= lt!330595 (mainMatchTheorem!56 r!15766 s!10566))))

(declare-fun res!400416 () Bool)

(assert (=> start!79570 (=> (not res!400416) (not e!578103))))

(declare-fun validRegex!724 (Regex!2255) Bool)

(assert (=> start!79570 (= res!400416 (validRegex!724 r!15766))))

(assert (=> start!79570 e!578103))

(assert (=> start!79570 e!578101))

(declare-fun e!578100 () Bool)

(assert (=> start!79570 e!578100))

(assert (=> b!880523 (= e!578102 true)))

(declare-fun lambda!26892 () Int)

(declare-datatypes ((tuple2!10596 0))(
  ( (tuple2!10597 (_1!6124 List!9485) (_2!6124 List!9485)) )
))
(declare-datatypes ((Option!1940 0))(
  ( (None!1939) (Some!1939 (v!19356 tuple2!10596)) )
))
(declare-fun isDefined!1582 (Option!1940) Bool)

(declare-fun findConcatSeparation!46 (Regex!2255 Regex!2255 List!9485 List!9485 List!9485) Option!1940)

(declare-fun Exists!50 (Int) Bool)

(assert (=> b!880523 (= (isDefined!1582 (findConcatSeparation!46 (regOne!5022 r!15766) (regTwo!5022 r!15766) Nil!9469 s!10566 s!10566)) (Exists!50 lambda!26892))))

(declare-fun lt!330594 () Unit!14089)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!46 (Regex!2255 Regex!2255 List!9485) Unit!14089)

(assert (=> b!880523 (= lt!330594 (lemmaFindConcatSeparationEquivalentToExists!46 (regOne!5022 r!15766) (regTwo!5022 r!15766) s!10566))))

(declare-fun b!880524 () Bool)

(declare-fun tp_is_empty!4153 () Bool)

(assert (=> b!880524 (= e!578101 tp_is_empty!4153)))

(declare-fun b!880525 () Bool)

(declare-fun tp!278190 () Bool)

(assert (=> b!880525 (= e!578100 (and tp_is_empty!4153 tp!278190))))

(assert (= (and start!79570 res!400416) b!880522))

(assert (= (and b!880522 (not res!400415)) b!880523))

(assert (= (and start!79570 ((_ is ElementMatch!2255) r!15766)) b!880524))

(assert (= (and start!79570 ((_ is Concat!4088) r!15766)) b!880520))

(assert (= (and start!79570 ((_ is Star!2255) r!15766)) b!880519))

(assert (= (and start!79570 ((_ is Union!2255) r!15766)) b!880521))

(assert (= (and start!79570 ((_ is Cons!9469) s!10566)) b!880525))

(declare-fun m!1129123 () Bool)

(assert (=> b!880522 m!1129123))

(declare-fun m!1129125 () Bool)

(assert (=> b!880522 m!1129125))

(declare-fun m!1129127 () Bool)

(assert (=> b!880522 m!1129127))

(declare-fun m!1129129 () Bool)

(assert (=> start!79570 m!1129129))

(declare-fun m!1129131 () Bool)

(assert (=> b!880523 m!1129131))

(assert (=> b!880523 m!1129131))

(declare-fun m!1129133 () Bool)

(assert (=> b!880523 m!1129133))

(declare-fun m!1129135 () Bool)

(assert (=> b!880523 m!1129135))

(declare-fun m!1129137 () Bool)

(assert (=> b!880523 m!1129137))

(check-sat (not b!880520) (not b!880522) (not b!880519) (not b!880521) (not b!880525) tp_is_empty!4153 (not b!880523) (not start!79570))
(check-sat)
