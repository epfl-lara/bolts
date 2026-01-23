; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79852 () Bool)

(assert start!79852)

(declare-fun b!883622 () Bool)

(assert (=> b!883622 true))

(assert (=> b!883622 true))

(declare-fun lambda!27192 () Int)

(declare-fun lambda!27191 () Int)

(assert (=> b!883622 (not (= lambda!27192 lambda!27191))))

(assert (=> b!883622 true))

(assert (=> b!883622 true))

(declare-fun b!883616 () Bool)

(declare-fun res!401879 () Bool)

(declare-fun e!579748 () Bool)

(assert (=> b!883616 (=> res!401879 e!579748)))

(declare-datatypes ((C!5110 0))(
  ( (C!5111 (val!2803 Int)) )
))
(declare-datatypes ((Regex!2270 0))(
  ( (ElementMatch!2270 (c!142817 C!5110)) (Concat!4103 (regOne!5052 Regex!2270) (regTwo!5052 Regex!2270)) (EmptyExpr!2270) (Star!2270 (reg!2599 Regex!2270)) (EmptyLang!2270) (Union!2270 (regOne!5053 Regex!2270) (regTwo!5053 Regex!2270)) )
))
(declare-fun r!15766 () Regex!2270)

(declare-datatypes ((List!9500 0))(
  ( (Nil!9484) (Cons!9484 (h!14885 C!5110) (t!100546 List!9500)) )
))
(declare-datatypes ((tuple2!10626 0))(
  ( (tuple2!10627 (_1!6139 List!9500) (_2!6139 List!9500)) )
))
(declare-fun lt!331055 () tuple2!10626)

(declare-fun matchR!808 (Regex!2270 List!9500) Bool)

(assert (=> b!883616 (= res!401879 (not (matchR!808 (regTwo!5052 r!15766) (_2!6139 lt!331055))))))

(declare-fun b!883617 () Bool)

(declare-fun e!579746 () Bool)

(declare-fun e!579750 () Bool)

(assert (=> b!883617 (= e!579746 (not e!579750))))

(declare-fun res!401875 () Bool)

(assert (=> b!883617 (=> res!401875 e!579750)))

(declare-fun lt!331058 () Bool)

(assert (=> b!883617 (= res!401875 (or (not lt!331058) (and (is-Concat!4103 r!15766) (is-EmptyExpr!2270 (regOne!5052 r!15766))) (and (is-Concat!4103 r!15766) (is-EmptyExpr!2270 (regTwo!5052 r!15766))) (not (is-Concat!4103 r!15766))))))

(declare-fun s!10566 () List!9500)

(declare-fun matchRSpec!71 (Regex!2270 List!9500) Bool)

(assert (=> b!883617 (= lt!331058 (matchRSpec!71 r!15766 s!10566))))

(assert (=> b!883617 (= lt!331058 (matchR!808 r!15766 s!10566))))

(declare-datatypes ((Unit!14119 0))(
  ( (Unit!14120) )
))
(declare-fun lt!331056 () Unit!14119)

(declare-fun mainMatchTheorem!71 (Regex!2270 List!9500) Unit!14119)

(assert (=> b!883617 (= lt!331056 (mainMatchTheorem!71 r!15766 s!10566))))

(declare-fun b!883618 () Bool)

(assert (=> b!883618 (= e!579748 true)))

(declare-fun b!883619 () Bool)

(declare-fun e!579751 () Bool)

(declare-fun tp!278914 () Bool)

(declare-fun tp!278916 () Bool)

(assert (=> b!883619 (= e!579751 (and tp!278914 tp!278916))))

(declare-fun b!883620 () Bool)

(declare-fun e!579749 () Bool)

(declare-fun tp_is_empty!4183 () Bool)

(declare-fun tp!278918 () Bool)

(assert (=> b!883620 (= e!579749 (and tp_is_empty!4183 tp!278918))))

(declare-fun res!401876 () Bool)

(assert (=> start!79852 (=> (not res!401876) (not e!579746))))

(declare-fun validRegex!739 (Regex!2270) Bool)

(assert (=> start!79852 (= res!401876 (validRegex!739 r!15766))))

(assert (=> start!79852 e!579746))

(assert (=> start!79852 e!579751))

(assert (=> start!79852 e!579749))

(declare-fun b!883621 () Bool)

(assert (=> b!883621 (= e!579751 tp_is_empty!4183)))

(declare-fun e!579747 () Bool)

(assert (=> b!883622 (= e!579750 e!579747)))

(declare-fun res!401878 () Bool)

(assert (=> b!883622 (=> res!401878 e!579747)))

(declare-fun isEmpty!5685 (List!9500) Bool)

(assert (=> b!883622 (= res!401878 (isEmpty!5685 s!10566))))

(declare-fun Exists!65 (Int) Bool)

(assert (=> b!883622 (= (Exists!65 lambda!27191) (Exists!65 lambda!27192))))

(declare-fun lt!331059 () Unit!14119)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!55 (Regex!2270 Regex!2270 List!9500) Unit!14119)

(assert (=> b!883622 (= lt!331059 (lemmaExistCutMatchRandMatchRSpecEquivalent!55 (regOne!5052 r!15766) (regTwo!5052 r!15766) s!10566))))

(declare-datatypes ((Option!1955 0))(
  ( (None!1954) (Some!1954 (v!19371 tuple2!10626)) )
))
(declare-fun lt!331054 () Option!1955)

(declare-fun isDefined!1597 (Option!1955) Bool)

(assert (=> b!883622 (= (isDefined!1597 lt!331054) (Exists!65 lambda!27191))))

(declare-fun findConcatSeparation!61 (Regex!2270 Regex!2270 List!9500 List!9500 List!9500) Option!1955)

(assert (=> b!883622 (= lt!331054 (findConcatSeparation!61 (regOne!5052 r!15766) (regTwo!5052 r!15766) Nil!9484 s!10566 s!10566))))

(declare-fun lt!331057 () Unit!14119)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!61 (Regex!2270 Regex!2270 List!9500) Unit!14119)

(assert (=> b!883622 (= lt!331057 (lemmaFindConcatSeparationEquivalentToExists!61 (regOne!5052 r!15766) (regTwo!5052 r!15766) s!10566))))

(declare-fun b!883623 () Bool)

(declare-fun tp!278917 () Bool)

(declare-fun tp!278913 () Bool)

(assert (=> b!883623 (= e!579751 (and tp!278917 tp!278913))))

(declare-fun b!883624 () Bool)

(assert (=> b!883624 (= e!579747 e!579748)))

(declare-fun res!401877 () Bool)

(assert (=> b!883624 (=> res!401877 e!579748)))

(assert (=> b!883624 (= res!401877 (not (matchR!808 (regOne!5052 r!15766) (_1!6139 lt!331055))))))

(declare-fun get!2955 (Option!1955) tuple2!10626)

(assert (=> b!883624 (= lt!331055 (get!2955 lt!331054))))

(declare-fun b!883625 () Bool)

(declare-fun tp!278915 () Bool)

(assert (=> b!883625 (= e!579751 tp!278915)))

(assert (= (and start!79852 res!401876) b!883617))

(assert (= (and b!883617 (not res!401875)) b!883622))

(assert (= (and b!883622 (not res!401878)) b!883624))

(assert (= (and b!883624 (not res!401877)) b!883616))

(assert (= (and b!883616 (not res!401879)) b!883618))

(assert (= (and start!79852 (is-ElementMatch!2270 r!15766)) b!883621))

(assert (= (and start!79852 (is-Concat!4103 r!15766)) b!883619))

(assert (= (and start!79852 (is-Star!2270 r!15766)) b!883625))

(assert (= (and start!79852 (is-Union!2270 r!15766)) b!883623))

(assert (= (and start!79852 (is-Cons!9484 s!10566)) b!883620))

(declare-fun m!1130421 () Bool)

(assert (=> b!883624 m!1130421))

(declare-fun m!1130423 () Bool)

(assert (=> b!883624 m!1130423))

(declare-fun m!1130425 () Bool)

(assert (=> b!883622 m!1130425))

(declare-fun m!1130427 () Bool)

(assert (=> b!883622 m!1130427))

(declare-fun m!1130429 () Bool)

(assert (=> b!883622 m!1130429))

(declare-fun m!1130431 () Bool)

(assert (=> b!883622 m!1130431))

(declare-fun m!1130433 () Bool)

(assert (=> b!883622 m!1130433))

(declare-fun m!1130435 () Bool)

(assert (=> b!883622 m!1130435))

(declare-fun m!1130437 () Bool)

(assert (=> b!883622 m!1130437))

(assert (=> b!883622 m!1130427))

(declare-fun m!1130439 () Bool)

(assert (=> b!883616 m!1130439))

(declare-fun m!1130441 () Bool)

(assert (=> b!883617 m!1130441))

(declare-fun m!1130443 () Bool)

(assert (=> b!883617 m!1130443))

(declare-fun m!1130445 () Bool)

(assert (=> b!883617 m!1130445))

(declare-fun m!1130447 () Bool)

(assert (=> start!79852 m!1130447))

(push 1)

(assert (not b!883623))

(assert (not b!883624))

(assert (not b!883620))

(assert (not b!883617))

(assert tp_is_empty!4183)

(assert (not start!79852))

(assert (not b!883616))

(assert (not b!883622))

(assert (not b!883619))

(assert (not b!883625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

