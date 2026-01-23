; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85490 () Bool)

(assert start!85490)

(declare-fun b!959854 () Bool)

(assert (=> b!959854 true))

(assert (=> b!959854 true))

(assert (=> b!959854 true))

(declare-fun lambda!33338 () Int)

(declare-fun lambda!33337 () Int)

(assert (=> b!959854 (not (= lambda!33338 lambda!33337))))

(assert (=> b!959854 true))

(assert (=> b!959854 true))

(assert (=> b!959854 true))

(declare-fun res!436200 () Bool)

(declare-fun e!620135 () Bool)

(assert (=> start!85490 (=> (not res!436200) (not e!620135))))

(declare-datatypes ((C!5884 0))(
  ( (C!5885 (val!3190 Int)) )
))
(declare-datatypes ((Regex!2657 0))(
  ( (ElementMatch!2657 (c!156370 C!5884)) (Concat!4490 (regOne!5826 Regex!2657) (regTwo!5826 Regex!2657)) (EmptyExpr!2657) (Star!2657 (reg!2986 Regex!2657)) (EmptyLang!2657) (Union!2657 (regOne!5827 Regex!2657) (regTwo!5827 Regex!2657)) )
))
(declare-fun r!15766 () Regex!2657)

(declare-fun validRegex!1126 (Regex!2657) Bool)

(assert (=> start!85490 (= res!436200 (validRegex!1126 r!15766))))

(assert (=> start!85490 e!620135))

(declare-fun e!620129 () Bool)

(assert (=> start!85490 e!620129))

(declare-fun e!620132 () Bool)

(assert (=> start!85490 e!620132))

(declare-fun b!959852 () Bool)

(declare-fun e!620128 () Bool)

(declare-fun e!620130 () Bool)

(assert (=> b!959852 (= e!620128 e!620130)))

(declare-fun res!436202 () Bool)

(assert (=> b!959852 (=> res!436202 e!620130)))

(declare-fun lt!346388 () Regex!2657)

(declare-fun lt!346384 () Regex!2657)

(assert (=> b!959852 (= res!436202 (not (= lt!346388 lt!346384)))))

(declare-fun lt!346377 () Regex!2657)

(assert (=> b!959852 (= lt!346384 (Star!2657 lt!346377))))

(declare-datatypes ((List!9887 0))(
  ( (Nil!9871) (Cons!9871 (h!15272 C!5884) (t!100933 List!9887)) )
))
(declare-datatypes ((tuple2!11200 0))(
  ( (tuple2!11201 (_1!6426 List!9887) (_2!6426 List!9887)) )
))
(declare-fun lt!346376 () tuple2!11200)

(declare-fun matchR!1195 (Regex!2657 List!9887) Bool)

(assert (=> b!959852 (matchR!1195 lt!346388 (_2!6426 lt!346376))))

(declare-fun lt!346378 () Regex!2657)

(declare-fun removeUselessConcat!308 (Regex!2657) Regex!2657)

(assert (=> b!959852 (= lt!346388 (removeUselessConcat!308 lt!346378))))

(declare-datatypes ((Unit!14967 0))(
  ( (Unit!14968) )
))
(declare-fun lt!346387 () Unit!14967)

(declare-fun lemmaRemoveUselessConcatSound!168 (Regex!2657 List!9887) Unit!14967)

(assert (=> b!959852 (= lt!346387 (lemmaRemoveUselessConcatSound!168 lt!346378 (_2!6426 lt!346376)))))

(declare-fun lt!346389 () Unit!14967)

(declare-fun e!620131 () Unit!14967)

(assert (=> b!959852 (= lt!346389 e!620131)))

(declare-fun c!156369 () Bool)

(declare-fun s!10566 () List!9887)

(declare-fun size!7929 (List!9887) Int)

(assert (=> b!959852 (= c!156369 (= (size!7929 (_2!6426 lt!346376)) (size!7929 s!10566)))))

(assert (=> b!959852 (matchR!1195 lt!346377 (_1!6426 lt!346376))))

(assert (=> b!959852 (= lt!346377 (removeUselessConcat!308 (reg!2986 r!15766)))))

(declare-fun lt!346382 () Unit!14967)

(assert (=> b!959852 (= lt!346382 (lemmaRemoveUselessConcatSound!168 (reg!2986 r!15766) (_1!6426 lt!346376)))))

(declare-fun b!959853 () Bool)

(declare-fun res!436204 () Bool)

(declare-fun e!620133 () Bool)

(assert (=> b!959853 (=> res!436204 e!620133)))

(declare-fun lt!346386 () Bool)

(assert (=> b!959853 (= res!436204 (not lt!346386))))

(declare-fun e!620134 () Bool)

(assert (=> b!959854 (= e!620134 e!620133)))

(declare-fun res!436199 () Bool)

(assert (=> b!959854 (=> res!436199 e!620133)))

(declare-fun isEmpty!6159 (List!9887) Bool)

(assert (=> b!959854 (= res!436199 (isEmpty!6159 s!10566))))

(declare-fun Exists!404 (Int) Bool)

(assert (=> b!959854 (= (Exists!404 lambda!33337) (Exists!404 lambda!33338))))

(declare-fun lt!346385 () Unit!14967)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!132 (Regex!2657 List!9887) Unit!14967)

(assert (=> b!959854 (= lt!346385 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!132 (reg!2986 r!15766) s!10566))))

(assert (=> b!959854 (= lt!346386 (Exists!404 lambda!33337))))

(declare-datatypes ((Option!2242 0))(
  ( (None!2241) (Some!2241 (v!19658 tuple2!11200)) )
))
(declare-fun lt!346381 () Option!2242)

(declare-fun isDefined!1884 (Option!2242) Bool)

(assert (=> b!959854 (= lt!346386 (isDefined!1884 lt!346381))))

(declare-fun findConcatSeparation!348 (Regex!2657 Regex!2657 List!9887 List!9887 List!9887) Option!2242)

(assert (=> b!959854 (= lt!346381 (findConcatSeparation!348 (reg!2986 r!15766) lt!346378 Nil!9871 s!10566 s!10566))))

(declare-fun lt!346375 () Unit!14967)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!348 (Regex!2657 Regex!2657 List!9887) Unit!14967)

(assert (=> b!959854 (= lt!346375 (lemmaFindConcatSeparationEquivalentToExists!348 (reg!2986 r!15766) lt!346378 s!10566))))

(assert (=> b!959854 (= lt!346378 (Star!2657 (reg!2986 r!15766)))))

(declare-fun b!959855 () Bool)

(declare-fun Unit!14969 () Unit!14967)

(assert (=> b!959855 (= e!620131 Unit!14969)))

(declare-fun b!959856 () Bool)

(assert (=> b!959856 (= e!620135 (not e!620134))))

(declare-fun res!436198 () Bool)

(assert (=> b!959856 (=> res!436198 e!620134)))

(declare-fun lt!346379 () Bool)

(get-info :version)

(assert (=> b!959856 (= res!436198 (or (not lt!346379) (and ((_ is Concat!4490) r!15766) ((_ is EmptyExpr!2657) (regOne!5826 r!15766))) (and ((_ is Concat!4490) r!15766) ((_ is EmptyExpr!2657) (regTwo!5826 r!15766))) ((_ is Concat!4490) r!15766) ((_ is Union!2657) r!15766) (not ((_ is Star!2657) r!15766))))))

(declare-fun matchRSpec!458 (Regex!2657 List!9887) Bool)

(assert (=> b!959856 (= lt!346379 (matchRSpec!458 r!15766 s!10566))))

(assert (=> b!959856 (= lt!346379 (matchR!1195 r!15766 s!10566))))

(declare-fun lt!346383 () Unit!14967)

(declare-fun mainMatchTheorem!458 (Regex!2657 List!9887) Unit!14967)

(assert (=> b!959856 (= lt!346383 (mainMatchTheorem!458 r!15766 s!10566))))

(declare-fun b!959857 () Bool)

(declare-fun Unit!14970 () Unit!14967)

(assert (=> b!959857 (= e!620131 Unit!14970)))

(declare-fun lt!346380 () Unit!14967)

(assert (=> b!959857 (= lt!346380 (mainMatchTheorem!458 (reg!2986 r!15766) (_1!6426 lt!346376)))))

(assert (=> b!959857 false))

(declare-fun b!959858 () Bool)

(declare-fun tp!295149 () Bool)

(declare-fun tp!295147 () Bool)

(assert (=> b!959858 (= e!620129 (and tp!295149 tp!295147))))

(declare-fun b!959859 () Bool)

(declare-fun tp!295148 () Bool)

(declare-fun tp!295152 () Bool)

(assert (=> b!959859 (= e!620129 (and tp!295148 tp!295152))))

(declare-fun b!959860 () Bool)

(declare-fun tp_is_empty!4957 () Bool)

(declare-fun tp!295150 () Bool)

(assert (=> b!959860 (= e!620132 (and tp_is_empty!4957 tp!295150))))

(declare-fun b!959861 () Bool)

(assert (=> b!959861 (= e!620133 e!620128)))

(declare-fun res!436201 () Bool)

(assert (=> b!959861 (=> res!436201 e!620128)))

(assert (=> b!959861 (= res!436201 (not (matchR!1195 (reg!2986 r!15766) (_1!6426 lt!346376))))))

(declare-fun get!3359 (Option!2242) tuple2!11200)

(assert (=> b!959861 (= lt!346376 (get!3359 lt!346381))))

(declare-fun b!959862 () Bool)

(declare-fun res!436203 () Bool)

(assert (=> b!959862 (=> res!436203 e!620128)))

(assert (=> b!959862 (= res!436203 (not (matchR!1195 lt!346378 (_2!6426 lt!346376))))))

(declare-fun b!959863 () Bool)

(assert (=> b!959863 (= e!620129 tp_is_empty!4957)))

(declare-fun b!959864 () Bool)

(declare-fun tp!295151 () Bool)

(assert (=> b!959864 (= e!620129 tp!295151)))

(declare-fun b!959865 () Bool)

(assert (=> b!959865 (= e!620130 (matchR!1195 lt!346384 (_2!6426 lt!346376)))))

(assert (= (and start!85490 res!436200) b!959856))

(assert (= (and b!959856 (not res!436198)) b!959854))

(assert (= (and b!959854 (not res!436199)) b!959853))

(assert (= (and b!959853 (not res!436204)) b!959861))

(assert (= (and b!959861 (not res!436201)) b!959862))

(assert (= (and b!959862 (not res!436203)) b!959852))

(assert (= (and b!959852 c!156369) b!959857))

(assert (= (and b!959852 (not c!156369)) b!959855))

(assert (= (and b!959852 (not res!436202)) b!959865))

(assert (= (and start!85490 ((_ is ElementMatch!2657) r!15766)) b!959863))

(assert (= (and start!85490 ((_ is Concat!4490) r!15766)) b!959859))

(assert (= (and start!85490 ((_ is Star!2657) r!15766)) b!959864))

(assert (= (and start!85490 ((_ is Union!2657) r!15766)) b!959858))

(assert (= (and start!85490 ((_ is Cons!9871) s!10566)) b!959860))

(declare-fun m!1168569 () Bool)

(assert (=> b!959857 m!1168569))

(declare-fun m!1168571 () Bool)

(assert (=> b!959854 m!1168571))

(declare-fun m!1168573 () Bool)

(assert (=> b!959854 m!1168573))

(declare-fun m!1168575 () Bool)

(assert (=> b!959854 m!1168575))

(declare-fun m!1168577 () Bool)

(assert (=> b!959854 m!1168577))

(declare-fun m!1168579 () Bool)

(assert (=> b!959854 m!1168579))

(declare-fun m!1168581 () Bool)

(assert (=> b!959854 m!1168581))

(assert (=> b!959854 m!1168581))

(declare-fun m!1168583 () Bool)

(assert (=> b!959854 m!1168583))

(declare-fun m!1168585 () Bool)

(assert (=> b!959856 m!1168585))

(declare-fun m!1168587 () Bool)

(assert (=> b!959856 m!1168587))

(declare-fun m!1168589 () Bool)

(assert (=> b!959856 m!1168589))

(declare-fun m!1168591 () Bool)

(assert (=> b!959862 m!1168591))

(declare-fun m!1168593 () Bool)

(assert (=> b!959852 m!1168593))

(declare-fun m!1168595 () Bool)

(assert (=> b!959852 m!1168595))

(declare-fun m!1168597 () Bool)

(assert (=> b!959852 m!1168597))

(declare-fun m!1168599 () Bool)

(assert (=> b!959852 m!1168599))

(declare-fun m!1168601 () Bool)

(assert (=> b!959852 m!1168601))

(declare-fun m!1168603 () Bool)

(assert (=> b!959852 m!1168603))

(declare-fun m!1168605 () Bool)

(assert (=> b!959852 m!1168605))

(declare-fun m!1168607 () Bool)

(assert (=> b!959852 m!1168607))

(declare-fun m!1168609 () Bool)

(assert (=> b!959861 m!1168609))

(declare-fun m!1168611 () Bool)

(assert (=> b!959861 m!1168611))

(declare-fun m!1168613 () Bool)

(assert (=> start!85490 m!1168613))

(declare-fun m!1168615 () Bool)

(assert (=> b!959865 m!1168615))

(check-sat (not b!959856) (not b!959857) (not b!959854) (not b!959860) (not start!85490) tp_is_empty!4957 (not b!959861) (not b!959852) (not b!959864) (not b!959865) (not b!959859) (not b!959858) (not b!959862))
(check-sat)
