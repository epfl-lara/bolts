; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!736576 () Bool)

(assert start!736576)

(declare-fun b!7675687 () Bool)

(assert (=> b!7675687 true))

(assert (=> b!7675687 true))

(declare-fun res!3069406 () Bool)

(declare-fun e!4558185 () Bool)

(assert (=> start!736576 (=> (not res!3069406) (not e!4558185))))

(declare-datatypes ((C!41336 0))(
  ( (C!41337 (val!31108 Int)) )
))
(declare-datatypes ((Regex!20505 0))(
  ( (ElementMatch!20505 (c!1414054 C!41336)) (Concat!29350 (regOne!41522 Regex!20505) (regTwo!41522 Regex!20505)) (EmptyExpr!20505) (Star!20505 (reg!20834 Regex!20505)) (EmptyLang!20505) (Union!20505 (regOne!41523 Regex!20505) (regTwo!41523 Regex!20505)) )
))
(declare-fun r!14126 () Regex!20505)

(declare-fun validRegex!10923 (Regex!20505) Bool)

(assert (=> start!736576 (= res!3069406 (validRegex!10923 r!14126))))

(assert (=> start!736576 e!4558185))

(declare-fun e!4558187 () Bool)

(assert (=> start!736576 e!4558187))

(declare-fun e!4558183 () Bool)

(assert (=> start!736576 e!4558183))

(declare-fun b!7675685 () Bool)

(declare-datatypes ((Unit!168032 0))(
  ( (Unit!168033) )
))
(declare-fun e!4558181 () Unit!168032)

(declare-fun Unit!168034 () Unit!168032)

(assert (=> b!7675685 (= e!4558181 Unit!168034)))

(declare-fun b!7675686 () Bool)

(declare-fun tp_is_empty!51365 () Bool)

(assert (=> b!7675686 (= e!4558187 tp_is_empty!51365)))

(declare-fun e!4558184 () Bool)

(assert (=> b!7675687 (= e!4558185 (not e!4558184))))

(declare-fun res!3069410 () Bool)

(assert (=> b!7675687 (=> res!3069410 e!4558184)))

(declare-fun lt!2663168 () Bool)

(assert (=> b!7675687 (= res!3069410 (not lt!2663168))))

(declare-fun lambda!470163 () Int)

(declare-fun Exists!4630 (Int) Bool)

(assert (=> b!7675687 (= lt!2663168 (Exists!4630 lambda!470163))))

(declare-datatypes ((List!73356 0))(
  ( (Nil!73232) (Cons!73232 (h!79680 C!41336) (t!388091 List!73356)) )
))
(declare-datatypes ((tuple2!69472 0))(
  ( (tuple2!69473 (_1!38039 List!73356) (_2!38039 List!73356)) )
))
(declare-datatypes ((Option!17530 0))(
  ( (None!17529) (Some!17529 (v!54664 tuple2!69472)) )
))
(declare-fun lt!2663157 () Option!17530)

(declare-fun isDefined!14146 (Option!17530) Bool)

(assert (=> b!7675687 (= lt!2663168 (isDefined!14146 lt!2663157))))

(declare-fun s!9605 () List!73356)

(declare-fun findConcatSeparation!3560 (Regex!20505 Regex!20505 List!73356 List!73356 List!73356) Option!17530)

(assert (=> b!7675687 (= lt!2663157 (findConcatSeparation!3560 (reg!20834 r!14126) r!14126 Nil!73232 s!9605 s!9605))))

(declare-fun lt!2663164 () Unit!168032)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3318 (Regex!20505 Regex!20505 List!73356) Unit!168032)

(assert (=> b!7675687 (= lt!2663164 (lemmaFindConcatSeparationEquivalentToExists!3318 (reg!20834 r!14126) r!14126 s!9605))))

(declare-fun b!7675688 () Bool)

(declare-fun e!4558182 () Bool)

(assert (=> b!7675688 (= e!4558184 e!4558182)))

(declare-fun res!3069409 () Bool)

(assert (=> b!7675688 (=> res!3069409 e!4558182)))

(assert (=> b!7675688 (= res!3069409 (not (Exists!4630 lambda!470163)))))

(declare-fun lt!2663167 () Unit!168032)

(assert (=> b!7675688 (= lt!2663167 e!4558181)))

(declare-fun c!1414053 () Bool)

(declare-fun matchR!10001 (Regex!20505 List!73356) Bool)

(assert (=> b!7675688 (= c!1414053 (not (matchR!10001 r!14126 s!9605)))))

(declare-fun lt!2663162 () tuple2!69472)

(declare-fun matchRSpec!4606 (Regex!20505 List!73356) Bool)

(assert (=> b!7675688 (= (matchR!10001 r!14126 (_2!38039 lt!2663162)) (matchRSpec!4606 r!14126 (_2!38039 lt!2663162)))))

(declare-fun lt!2663165 () Unit!168032)

(declare-fun mainMatchTheorem!4584 (Regex!20505 List!73356) Unit!168032)

(assert (=> b!7675688 (= lt!2663165 (mainMatchTheorem!4584 r!14126 (_2!38039 lt!2663162)))))

(assert (=> b!7675688 (= (matchR!10001 (reg!20834 r!14126) (_1!38039 lt!2663162)) (matchRSpec!4606 (reg!20834 r!14126) (_1!38039 lt!2663162)))))

(declare-fun lt!2663158 () Unit!168032)

(assert (=> b!7675688 (= lt!2663158 (mainMatchTheorem!4584 (reg!20834 r!14126) (_1!38039 lt!2663162)))))

(declare-fun get!25969 (Option!17530) tuple2!69472)

(assert (=> b!7675688 (= lt!2663162 (get!25969 lt!2663157))))

(declare-fun b!7675689 () Bool)

(declare-fun tp!2245853 () Bool)

(declare-fun tp!2245852 () Bool)

(assert (=> b!7675689 (= e!4558187 (and tp!2245853 tp!2245852))))

(declare-fun b!7675690 () Bool)

(declare-fun e!4558186 () Bool)

(assert (=> b!7675690 (= e!4558186 false)))

(declare-fun b!7675691 () Bool)

(declare-fun tp!2245850 () Bool)

(declare-fun tp!2245849 () Bool)

(assert (=> b!7675691 (= e!4558187 (and tp!2245850 tp!2245849))))

(declare-fun b!7675692 () Bool)

(declare-fun res!3069407 () Bool)

(assert (=> b!7675692 (=> (not res!3069407) (not e!4558185))))

(get-info :version)

(assert (=> b!7675692 (= res!3069407 (and (not ((_ is EmptyExpr!20505) r!14126)) (not ((_ is EmptyLang!20505) r!14126)) (not ((_ is ElementMatch!20505) r!14126)) (not ((_ is Union!20505) r!14126)) ((_ is Star!20505) r!14126)))))

(declare-fun b!7675693 () Bool)

(declare-fun tp!2245851 () Bool)

(assert (=> b!7675693 (= e!4558187 tp!2245851)))

(declare-fun b!7675694 () Bool)

(declare-fun res!3069405 () Bool)

(assert (=> b!7675694 (=> (not res!3069405) (not e!4558185))))

(declare-fun isEmpty!41873 (List!73356) Bool)

(assert (=> b!7675694 (= res!3069405 (not (isEmpty!41873 s!9605)))))

(declare-fun b!7675695 () Bool)

(assert (=> b!7675695 (= e!4558182 (validRegex!10923 r!14126))))

(declare-fun lt!2663166 () tuple2!69472)

(assert (=> b!7675695 (= (matchR!10001 (reg!20834 r!14126) (_1!38039 lt!2663166)) (matchRSpec!4606 (reg!20834 r!14126) (_1!38039 lt!2663166)))))

(declare-fun lt!2663160 () Unit!168032)

(assert (=> b!7675695 (= lt!2663160 (mainMatchTheorem!4584 (reg!20834 r!14126) (_1!38039 lt!2663166)))))

(declare-fun pickWitness!494 (Int) tuple2!69472)

(assert (=> b!7675695 (= lt!2663166 (pickWitness!494 lambda!470163))))

(declare-fun b!7675696 () Bool)

(declare-fun tp!2245848 () Bool)

(assert (=> b!7675696 (= e!4558183 (and tp_is_empty!51365 tp!2245848))))

(declare-fun b!7675697 () Bool)

(declare-fun Unit!168035 () Unit!168032)

(assert (=> b!7675697 (= e!4558181 Unit!168035)))

(declare-fun lt!2663161 () Unit!168032)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!192 (Regex!20505 Regex!20505 List!73356 List!73356 List!73356) Unit!168032)

(assert (=> b!7675697 (= lt!2663161 (lemmaFindSeparationIsDefinedThenConcatMatches!192 (reg!20834 r!14126) r!14126 (_1!38039 lt!2663162) (_2!38039 lt!2663162) s!9605))))

(declare-fun lt!2663163 () List!73356)

(declare-fun ++!17727 (List!73356 List!73356) List!73356)

(assert (=> b!7675697 (= lt!2663163 (++!17727 (_1!38039 lt!2663162) (_2!38039 lt!2663162)))))

(assert (=> b!7675697 (matchR!10001 (Concat!29350 (reg!20834 r!14126) r!14126) lt!2663163)))

(declare-fun lt!2663159 () Unit!168032)

(declare-fun lemmaStarApp!214 (Regex!20505 List!73356 List!73356) Unit!168032)

(assert (=> b!7675697 (= lt!2663159 (lemmaStarApp!214 (reg!20834 r!14126) (_1!38039 lt!2663162) (_2!38039 lt!2663162)))))

(declare-fun res!3069408 () Bool)

(assert (=> b!7675697 (= res!3069408 (matchR!10001 r!14126 lt!2663163))))

(assert (=> b!7675697 (=> (not res!3069408) (not e!4558186))))

(assert (=> b!7675697 e!4558186))

(assert (= (and start!736576 res!3069406) b!7675692))

(assert (= (and b!7675692 res!3069407) b!7675694))

(assert (= (and b!7675694 res!3069405) b!7675687))

(assert (= (and b!7675687 (not res!3069410)) b!7675688))

(assert (= (and b!7675688 c!1414053) b!7675697))

(assert (= (and b!7675688 (not c!1414053)) b!7675685))

(assert (= (and b!7675697 res!3069408) b!7675690))

(assert (= (and b!7675688 (not res!3069409)) b!7675695))

(assert (= (and start!736576 ((_ is ElementMatch!20505) r!14126)) b!7675686))

(assert (= (and start!736576 ((_ is Concat!29350) r!14126)) b!7675689))

(assert (= (and start!736576 ((_ is Star!20505) r!14126)) b!7675693))

(assert (= (and start!736576 ((_ is Union!20505) r!14126)) b!7675691))

(assert (= (and start!736576 ((_ is Cons!73232) s!9605)) b!7675696))

(declare-fun m!8177764 () Bool)

(assert (=> b!7675687 m!8177764))

(declare-fun m!8177766 () Bool)

(assert (=> b!7675687 m!8177766))

(declare-fun m!8177768 () Bool)

(assert (=> b!7675687 m!8177768))

(declare-fun m!8177770 () Bool)

(assert (=> b!7675687 m!8177770))

(declare-fun m!8177772 () Bool)

(assert (=> b!7675695 m!8177772))

(declare-fun m!8177774 () Bool)

(assert (=> b!7675695 m!8177774))

(declare-fun m!8177776 () Bool)

(assert (=> b!7675695 m!8177776))

(declare-fun m!8177778 () Bool)

(assert (=> b!7675695 m!8177778))

(declare-fun m!8177780 () Bool)

(assert (=> b!7675695 m!8177780))

(declare-fun m!8177782 () Bool)

(assert (=> b!7675694 m!8177782))

(assert (=> start!736576 m!8177780))

(assert (=> b!7675688 m!8177764))

(declare-fun m!8177784 () Bool)

(assert (=> b!7675688 m!8177784))

(declare-fun m!8177786 () Bool)

(assert (=> b!7675688 m!8177786))

(declare-fun m!8177788 () Bool)

(assert (=> b!7675688 m!8177788))

(declare-fun m!8177790 () Bool)

(assert (=> b!7675688 m!8177790))

(declare-fun m!8177792 () Bool)

(assert (=> b!7675688 m!8177792))

(declare-fun m!8177794 () Bool)

(assert (=> b!7675688 m!8177794))

(declare-fun m!8177796 () Bool)

(assert (=> b!7675688 m!8177796))

(declare-fun m!8177798 () Bool)

(assert (=> b!7675688 m!8177798))

(declare-fun m!8177800 () Bool)

(assert (=> b!7675697 m!8177800))

(declare-fun m!8177802 () Bool)

(assert (=> b!7675697 m!8177802))

(declare-fun m!8177804 () Bool)

(assert (=> b!7675697 m!8177804))

(declare-fun m!8177806 () Bool)

(assert (=> b!7675697 m!8177806))

(declare-fun m!8177808 () Bool)

(assert (=> b!7675697 m!8177808))

(check-sat (not b!7675694) tp_is_empty!51365 (not b!7675689) (not b!7675688) (not b!7675687) (not b!7675695) (not start!736576) (not b!7675691) (not b!7675697) (not b!7675696) (not b!7675693))
(check-sat)
