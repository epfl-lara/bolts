; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83058 () Bool)

(assert start!83058)

(declare-fun b!926134 () Bool)

(assert (=> b!926134 true))

(assert (=> b!926134 true))

(declare-fun lambda!30634 () Int)

(declare-fun lambda!30633 () Int)

(assert (=> b!926134 (not (= lambda!30634 lambda!30633))))

(assert (=> b!926134 true))

(assert (=> b!926134 true))

(declare-fun b!926130 () Bool)

(declare-fun e!602468 () Bool)

(assert (=> b!926130 (= e!602468 true)))

(declare-fun lt!339698 () Bool)

(declare-datatypes ((C!5572 0))(
  ( (C!5573 (val!3034 Int)) )
))
(declare-datatypes ((Regex!2501 0))(
  ( (ElementMatch!2501 (c!150320 C!5572)) (Concat!4334 (regOne!5514 Regex!2501) (regTwo!5514 Regex!2501)) (EmptyExpr!2501) (Star!2501 (reg!2830 Regex!2501)) (EmptyLang!2501) (Union!2501 (regOne!5515 Regex!2501) (regTwo!5515 Regex!2501)) )
))
(declare-fun r!15766 () Regex!2501)

(declare-datatypes ((List!9731 0))(
  ( (Nil!9715) (Cons!9715 (h!15116 C!5572) (t!100777 List!9731)) )
))
(declare-fun s!10566 () List!9731)

(declare-fun matchR!1039 (Regex!2501 List!9731) Bool)

(declare-fun removeUselessConcat!178 (Regex!2501) Regex!2501)

(assert (=> b!926130 (= lt!339698 (matchR!1039 (Concat!4334 (removeUselessConcat!178 (regOne!5514 r!15766)) (removeUselessConcat!178 (regTwo!5514 r!15766))) s!10566))))

(declare-fun res!421143 () Bool)

(declare-fun e!602467 () Bool)

(assert (=> start!83058 (=> (not res!421143) (not e!602467))))

(declare-fun validRegex!970 (Regex!2501) Bool)

(assert (=> start!83058 (= res!421143 (validRegex!970 r!15766))))

(assert (=> start!83058 e!602467))

(declare-fun e!602470 () Bool)

(assert (=> start!83058 e!602470))

(declare-fun e!602469 () Bool)

(assert (=> start!83058 e!602469))

(declare-fun b!926131 () Bool)

(declare-fun tp_is_empty!4645 () Bool)

(assert (=> b!926131 (= e!602470 tp_is_empty!4645)))

(declare-fun b!926132 () Bool)

(declare-fun tp!287860 () Bool)

(declare-fun tp!287864 () Bool)

(assert (=> b!926132 (= e!602470 (and tp!287860 tp!287864))))

(declare-fun b!926133 () Bool)

(declare-fun tp!287859 () Bool)

(assert (=> b!926133 (= e!602470 tp!287859)))

(declare-fun e!602471 () Bool)

(assert (=> b!926134 (= e!602471 e!602468)))

(declare-fun res!421144 () Bool)

(assert (=> b!926134 (=> res!421144 e!602468)))

(declare-fun isEmpty!5972 (List!9731) Bool)

(assert (=> b!926134 (= res!421144 (isEmpty!5972 s!10566))))

(declare-fun Exists!272 (Int) Bool)

(assert (=> b!926134 (= (Exists!272 lambda!30633) (Exists!272 lambda!30634))))

(declare-datatypes ((Unit!14621 0))(
  ( (Unit!14622) )
))
(declare-fun lt!339700 () Unit!14621)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!184 (Regex!2501 Regex!2501 List!9731) Unit!14621)

(assert (=> b!926134 (= lt!339700 (lemmaExistCutMatchRandMatchRSpecEquivalent!184 (regOne!5514 r!15766) (regTwo!5514 r!15766) s!10566))))

(declare-datatypes ((tuple2!10988 0))(
  ( (tuple2!10989 (_1!6320 List!9731) (_2!6320 List!9731)) )
))
(declare-datatypes ((Option!2136 0))(
  ( (None!2135) (Some!2135 (v!19552 tuple2!10988)) )
))
(declare-fun isDefined!1778 (Option!2136) Bool)

(declare-fun findConcatSeparation!242 (Regex!2501 Regex!2501 List!9731 List!9731 List!9731) Option!2136)

(assert (=> b!926134 (= (isDefined!1778 (findConcatSeparation!242 (regOne!5514 r!15766) (regTwo!5514 r!15766) Nil!9715 s!10566 s!10566)) (Exists!272 lambda!30633))))

(declare-fun lt!339697 () Unit!14621)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!242 (Regex!2501 Regex!2501 List!9731) Unit!14621)

(assert (=> b!926134 (= lt!339697 (lemmaFindConcatSeparationEquivalentToExists!242 (regOne!5514 r!15766) (regTwo!5514 r!15766) s!10566))))

(declare-fun b!926135 () Bool)

(declare-fun tp!287861 () Bool)

(declare-fun tp!287863 () Bool)

(assert (=> b!926135 (= e!602470 (and tp!287861 tp!287863))))

(declare-fun b!926136 () Bool)

(assert (=> b!926136 (= e!602467 (not e!602471))))

(declare-fun res!421142 () Bool)

(assert (=> b!926136 (=> res!421142 e!602471)))

(declare-fun lt!339699 () Bool)

(get-info :version)

(assert (=> b!926136 (= res!421142 (or lt!339699 (and ((_ is Concat!4334) r!15766) ((_ is EmptyExpr!2501) (regOne!5514 r!15766))) (and ((_ is Concat!4334) r!15766) ((_ is EmptyExpr!2501) (regTwo!5514 r!15766))) (not ((_ is Concat!4334) r!15766))))))

(declare-fun matchRSpec!302 (Regex!2501 List!9731) Bool)

(assert (=> b!926136 (= lt!339699 (matchRSpec!302 r!15766 s!10566))))

(assert (=> b!926136 (= lt!339699 (matchR!1039 r!15766 s!10566))))

(declare-fun lt!339701 () Unit!14621)

(declare-fun mainMatchTheorem!302 (Regex!2501 List!9731) Unit!14621)

(assert (=> b!926136 (= lt!339701 (mainMatchTheorem!302 r!15766 s!10566))))

(declare-fun b!926137 () Bool)

(declare-fun tp!287862 () Bool)

(assert (=> b!926137 (= e!602469 (and tp_is_empty!4645 tp!287862))))

(assert (= (and start!83058 res!421143) b!926136))

(assert (= (and b!926136 (not res!421142)) b!926134))

(assert (= (and b!926134 (not res!421144)) b!926130))

(assert (= (and start!83058 ((_ is ElementMatch!2501) r!15766)) b!926131))

(assert (= (and start!83058 ((_ is Concat!4334) r!15766)) b!926132))

(assert (= (and start!83058 ((_ is Star!2501) r!15766)) b!926133))

(assert (= (and start!83058 ((_ is Union!2501) r!15766)) b!926135))

(assert (= (and start!83058 ((_ is Cons!9715) s!10566)) b!926137))

(declare-fun m!1151393 () Bool)

(assert (=> b!926130 m!1151393))

(declare-fun m!1151395 () Bool)

(assert (=> b!926130 m!1151395))

(declare-fun m!1151397 () Bool)

(assert (=> b!926130 m!1151397))

(declare-fun m!1151399 () Bool)

(assert (=> start!83058 m!1151399))

(declare-fun m!1151401 () Bool)

(assert (=> b!926134 m!1151401))

(declare-fun m!1151403 () Bool)

(assert (=> b!926134 m!1151403))

(declare-fun m!1151405 () Bool)

(assert (=> b!926134 m!1151405))

(declare-fun m!1151407 () Bool)

(assert (=> b!926134 m!1151407))

(declare-fun m!1151409 () Bool)

(assert (=> b!926134 m!1151409))

(declare-fun m!1151411 () Bool)

(assert (=> b!926134 m!1151411))

(declare-fun m!1151413 () Bool)

(assert (=> b!926134 m!1151413))

(assert (=> b!926134 m!1151413))

(assert (=> b!926134 m!1151403))

(declare-fun m!1151415 () Bool)

(assert (=> b!926136 m!1151415))

(declare-fun m!1151417 () Bool)

(assert (=> b!926136 m!1151417))

(declare-fun m!1151419 () Bool)

(assert (=> b!926136 m!1151419))

(check-sat (not b!926132) (not b!926134) (not start!83058) (not b!926136) (not b!926133) (not b!926137) tp_is_empty!4645 (not b!926135) (not b!926130))
(check-sat)
