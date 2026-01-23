; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85238 () Bool)

(assert start!85238)

(declare-fun b!956542 () Bool)

(assert (=> b!956542 true))

(assert (=> b!956542 true))

(assert (=> b!956542 true))

(declare-fun lambda!33122 () Int)

(declare-fun lambda!33121 () Int)

(assert (=> b!956542 (not (= lambda!33122 lambda!33121))))

(assert (=> b!956542 true))

(assert (=> b!956542 true))

(assert (=> b!956542 true))

(declare-fun b!956535 () Bool)

(declare-fun e!618460 () Bool)

(declare-fun tp_is_empty!4933 () Bool)

(declare-fun tp!294451 () Bool)

(assert (=> b!956535 (= e!618460 (and tp_is_empty!4933 tp!294451))))

(declare-fun b!956536 () Bool)

(declare-fun e!618457 () Bool)

(declare-fun tp!294454 () Bool)

(assert (=> b!956536 (= e!618457 tp!294454)))

(declare-fun b!956537 () Bool)

(declare-fun res!434761 () Bool)

(declare-fun e!618461 () Bool)

(assert (=> b!956537 (=> res!434761 e!618461)))

(declare-datatypes ((C!5860 0))(
  ( (C!5861 (val!3178 Int)) )
))
(declare-datatypes ((List!9875 0))(
  ( (Nil!9859) (Cons!9859 (h!15260 C!5860) (t!100921 List!9875)) )
))
(declare-datatypes ((tuple2!11176 0))(
  ( (tuple2!11177 (_1!6414 List!9875) (_2!6414 List!9875)) )
))
(declare-fun lt!345640 () tuple2!11176)

(declare-fun s!10566 () List!9875)

(declare-fun ++!2648 (List!9875 List!9875) List!9875)

(assert (=> b!956537 (= res!434761 (not (= (++!2648 (_1!6414 lt!345640) (_2!6414 lt!345640)) s!10566)))))

(declare-fun res!434762 () Bool)

(declare-fun e!618462 () Bool)

(assert (=> start!85238 (=> (not res!434762) (not e!618462))))

(declare-datatypes ((Regex!2645 0))(
  ( (ElementMatch!2645 (c!155736 C!5860)) (Concat!4478 (regOne!5802 Regex!2645) (regTwo!5802 Regex!2645)) (EmptyExpr!2645) (Star!2645 (reg!2974 Regex!2645)) (EmptyLang!2645) (Union!2645 (regOne!5803 Regex!2645) (regTwo!5803 Regex!2645)) )
))
(declare-fun r!15766 () Regex!2645)

(declare-fun validRegex!1114 (Regex!2645) Bool)

(assert (=> start!85238 (= res!434762 (validRegex!1114 r!15766))))

(assert (=> start!85238 e!618462))

(assert (=> start!85238 e!618457))

(assert (=> start!85238 e!618460))

(declare-fun b!956538 () Bool)

(declare-fun res!434755 () Bool)

(declare-fun e!618459 () Bool)

(assert (=> b!956538 (=> res!434755 e!618459)))

(declare-fun lt!345638 () Bool)

(assert (=> b!956538 (= res!434755 (not lt!345638))))

(declare-fun b!956539 () Bool)

(declare-fun e!618463 () Bool)

(assert (=> b!956539 (= e!618459 e!618463)))

(declare-fun res!434757 () Bool)

(assert (=> b!956539 (=> res!434757 e!618463)))

(declare-fun matchR!1183 (Regex!2645 List!9875) Bool)

(assert (=> b!956539 (= res!434757 (not (matchR!1183 (reg!2974 r!15766) (_1!6414 lt!345640))))))

(declare-datatypes ((Option!2230 0))(
  ( (None!2229) (Some!2229 (v!19646 tuple2!11176)) )
))
(declare-fun lt!345641 () Option!2230)

(declare-fun get!3341 (Option!2230) tuple2!11176)

(assert (=> b!956539 (= lt!345640 (get!3341 lt!345641))))

(declare-fun b!956540 () Bool)

(declare-fun res!434756 () Bool)

(assert (=> b!956540 (=> res!434756 e!618463)))

(declare-fun lt!345637 () Regex!2645)

(assert (=> b!956540 (= res!434756 (not (matchR!1183 lt!345637 (_2!6414 lt!345640))))))

(declare-fun b!956541 () Bool)

(assert (=> b!956541 (= e!618463 e!618461)))

(declare-fun res!434758 () Bool)

(assert (=> b!956541 (=> res!434758 e!618461)))

(declare-fun lt!345643 () Int)

(declare-fun lt!345639 () Int)

(assert (=> b!956541 (= res!434758 (not (= lt!345643 lt!345639)))))

(declare-fun size!7917 (List!9875) Int)

(assert (=> b!956541 (= lt!345639 (size!7917 s!10566))))

(assert (=> b!956541 (= lt!345643 (size!7917 (_2!6414 lt!345640)))))

(declare-fun removeUselessConcat!296 (Regex!2645) Regex!2645)

(assert (=> b!956541 (matchR!1183 (removeUselessConcat!296 (reg!2974 r!15766)) (_1!6414 lt!345640))))

(declare-datatypes ((Unit!14933 0))(
  ( (Unit!14934) )
))
(declare-fun lt!345636 () Unit!14933)

(declare-fun lemmaRemoveUselessConcatSound!156 (Regex!2645 List!9875) Unit!14933)

(assert (=> b!956541 (= lt!345636 (lemmaRemoveUselessConcatSound!156 (reg!2974 r!15766) (_1!6414 lt!345640)))))

(declare-fun e!618458 () Bool)

(assert (=> b!956542 (= e!618458 e!618459)))

(declare-fun res!434760 () Bool)

(assert (=> b!956542 (=> res!434760 e!618459)))

(declare-fun isEmpty!6141 (List!9875) Bool)

(assert (=> b!956542 (= res!434760 (isEmpty!6141 s!10566))))

(declare-fun Exists!392 (Int) Bool)

(assert (=> b!956542 (= (Exists!392 lambda!33121) (Exists!392 lambda!33122))))

(declare-fun lt!345633 () Unit!14933)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!120 (Regex!2645 List!9875) Unit!14933)

(assert (=> b!956542 (= lt!345633 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!120 (reg!2974 r!15766) s!10566))))

(assert (=> b!956542 (= lt!345638 (Exists!392 lambda!33121))))

(declare-fun isDefined!1872 (Option!2230) Bool)

(assert (=> b!956542 (= lt!345638 (isDefined!1872 lt!345641))))

(declare-fun findConcatSeparation!336 (Regex!2645 Regex!2645 List!9875 List!9875 List!9875) Option!2230)

(assert (=> b!956542 (= lt!345641 (findConcatSeparation!336 (reg!2974 r!15766) lt!345637 Nil!9859 s!10566 s!10566))))

(declare-fun lt!345635 () Unit!14933)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!336 (Regex!2645 Regex!2645 List!9875) Unit!14933)

(assert (=> b!956542 (= lt!345635 (lemmaFindConcatSeparationEquivalentToExists!336 (reg!2974 r!15766) lt!345637 s!10566))))

(assert (=> b!956542 (= lt!345637 (Star!2645 (reg!2974 r!15766)))))

(declare-fun b!956543 () Bool)

(assert (=> b!956543 (= e!618462 (not e!618458))))

(declare-fun res!434759 () Bool)

(assert (=> b!956543 (=> res!434759 e!618458)))

(declare-fun lt!345632 () Bool)

(get-info :version)

(assert (=> b!956543 (= res!434759 (or (not lt!345632) (and ((_ is Concat!4478) r!15766) ((_ is EmptyExpr!2645) (regOne!5802 r!15766))) (and ((_ is Concat!4478) r!15766) ((_ is EmptyExpr!2645) (regTwo!5802 r!15766))) ((_ is Concat!4478) r!15766) ((_ is Union!2645) r!15766) (not ((_ is Star!2645) r!15766))))))

(declare-fun matchRSpec!446 (Regex!2645 List!9875) Bool)

(assert (=> b!956543 (= lt!345632 (matchRSpec!446 r!15766 s!10566))))

(assert (=> b!956543 (= lt!345632 (matchR!1183 r!15766 s!10566))))

(declare-fun lt!345634 () Unit!14933)

(declare-fun mainMatchTheorem!446 (Regex!2645 List!9875) Unit!14933)

(assert (=> b!956543 (= lt!345634 (mainMatchTheorem!446 r!15766 s!10566))))

(declare-fun b!956544 () Bool)

(declare-fun tp!294455 () Bool)

(declare-fun tp!294453 () Bool)

(assert (=> b!956544 (= e!618457 (and tp!294455 tp!294453))))

(declare-fun b!956545 () Bool)

(declare-fun lt!345642 () Int)

(assert (=> b!956545 (= e!618461 (or (not (= (+ lt!345642 lt!345643) lt!345639)) (= lt!345642 0)))))

(assert (=> b!956545 (= lt!345642 (size!7917 (_1!6414 lt!345640)))))

(declare-fun b!956546 () Bool)

(assert (=> b!956546 (= e!618457 tp_is_empty!4933)))

(declare-fun b!956547 () Bool)

(declare-fun tp!294456 () Bool)

(declare-fun tp!294452 () Bool)

(assert (=> b!956547 (= e!618457 (and tp!294456 tp!294452))))

(assert (= (and start!85238 res!434762) b!956543))

(assert (= (and b!956543 (not res!434759)) b!956542))

(assert (= (and b!956542 (not res!434760)) b!956538))

(assert (= (and b!956538 (not res!434755)) b!956539))

(assert (= (and b!956539 (not res!434757)) b!956540))

(assert (= (and b!956540 (not res!434756)) b!956541))

(assert (= (and b!956541 (not res!434758)) b!956537))

(assert (= (and b!956537 (not res!434761)) b!956545))

(assert (= (and start!85238 ((_ is ElementMatch!2645) r!15766)) b!956546))

(assert (= (and start!85238 ((_ is Concat!4478) r!15766)) b!956544))

(assert (= (and start!85238 ((_ is Star!2645) r!15766)) b!956536))

(assert (= (and start!85238 ((_ is Union!2645) r!15766)) b!956547))

(assert (= (and start!85238 ((_ is Cons!9859) s!10566)) b!956535))

(declare-fun m!1166579 () Bool)

(assert (=> b!956545 m!1166579))

(declare-fun m!1166581 () Bool)

(assert (=> start!85238 m!1166581))

(declare-fun m!1166583 () Bool)

(assert (=> b!956540 m!1166583))

(declare-fun m!1166585 () Bool)

(assert (=> b!956543 m!1166585))

(declare-fun m!1166587 () Bool)

(assert (=> b!956543 m!1166587))

(declare-fun m!1166589 () Bool)

(assert (=> b!956543 m!1166589))

(declare-fun m!1166591 () Bool)

(assert (=> b!956541 m!1166591))

(declare-fun m!1166593 () Bool)

(assert (=> b!956541 m!1166593))

(assert (=> b!956541 m!1166593))

(declare-fun m!1166595 () Bool)

(assert (=> b!956541 m!1166595))

(declare-fun m!1166597 () Bool)

(assert (=> b!956541 m!1166597))

(declare-fun m!1166599 () Bool)

(assert (=> b!956541 m!1166599))

(declare-fun m!1166601 () Bool)

(assert (=> b!956542 m!1166601))

(declare-fun m!1166603 () Bool)

(assert (=> b!956542 m!1166603))

(declare-fun m!1166605 () Bool)

(assert (=> b!956542 m!1166605))

(declare-fun m!1166607 () Bool)

(assert (=> b!956542 m!1166607))

(declare-fun m!1166609 () Bool)

(assert (=> b!956542 m!1166609))

(declare-fun m!1166611 () Bool)

(assert (=> b!956542 m!1166611))

(declare-fun m!1166613 () Bool)

(assert (=> b!956542 m!1166613))

(assert (=> b!956542 m!1166605))

(declare-fun m!1166615 () Bool)

(assert (=> b!956537 m!1166615))

(declare-fun m!1166617 () Bool)

(assert (=> b!956539 m!1166617))

(declare-fun m!1166619 () Bool)

(assert (=> b!956539 m!1166619))

(check-sat (not b!956544) tp_is_empty!4933 (not b!956537) (not b!956536) (not b!956535) (not b!956541) (not b!956540) (not start!85238) (not b!956545) (not b!956542) (not b!956539) (not b!956547) (not b!956543))
(check-sat)
