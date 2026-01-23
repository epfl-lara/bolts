; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89030 () Bool)

(assert start!89030)

(declare-fun b!1022604 () Bool)

(assert (=> b!1022604 true))

(assert (=> b!1022604 true))

(declare-fun lambda!36410 () Int)

(declare-fun lambda!36409 () Int)

(assert (=> b!1022604 (not (= lambda!36410 lambda!36409))))

(assert (=> b!1022604 true))

(assert (=> b!1022604 true))

(declare-fun b!1022596 () Bool)

(declare-fun e!652861 () Bool)

(declare-fun tp_is_empty!5297 () Bool)

(declare-fun tp!310502 () Bool)

(assert (=> b!1022596 (= e!652861 (and tp_is_empty!5297 tp!310502))))

(declare-fun b!1022597 () Bool)

(declare-fun res!459538 () Bool)

(declare-fun e!652860 () Bool)

(assert (=> b!1022597 (=> res!459538 e!652860)))

(declare-datatypes ((C!6224 0))(
  ( (C!6225 (val!3360 Int)) )
))
(declare-datatypes ((List!10057 0))(
  ( (Nil!10041) (Cons!10041 (h!15442 C!6224) (t!101103 List!10057)) )
))
(declare-fun s!10566 () List!10057)

(declare-fun ++!2745 (List!10057 List!10057) List!10057)

(assert (=> b!1022597 (= res!459538 (not (= (++!2745 Nil!10041 s!10566) s!10566)))))

(declare-fun b!1022598 () Bool)

(declare-fun e!652859 () Bool)

(assert (=> b!1022598 (= e!652859 e!652860)))

(declare-fun res!459534 () Bool)

(assert (=> b!1022598 (=> res!459534 e!652860)))

(declare-fun lt!354658 () Bool)

(declare-fun lt!354660 () Bool)

(assert (=> b!1022598 (= res!459534 (or (not lt!354658) (not lt!354660)))))

(assert (=> b!1022598 (= lt!354660 lt!354658)))

(declare-datatypes ((Regex!2827 0))(
  ( (ElementMatch!2827 (c!169486 C!6224)) (Concat!4660 (regOne!6166 Regex!2827) (regTwo!6166 Regex!2827)) (EmptyExpr!2827) (Star!2827 (reg!3156 Regex!2827)) (EmptyLang!2827) (Union!2827 (regOne!6167 Regex!2827) (regTwo!6167 Regex!2827)) )
))
(declare-fun lt!354659 () Regex!2827)

(declare-fun matchR!1363 (Regex!2827 List!10057) Bool)

(assert (=> b!1022598 (= lt!354658 (matchR!1363 lt!354659 s!10566))))

(declare-fun r!15766 () Regex!2827)

(assert (=> b!1022598 (= lt!354660 (matchR!1363 (regTwo!6166 r!15766) s!10566))))

(declare-fun removeUselessConcat!396 (Regex!2827) Regex!2827)

(assert (=> b!1022598 (= lt!354659 (removeUselessConcat!396 (regTwo!6166 r!15766)))))

(declare-datatypes ((Unit!15329 0))(
  ( (Unit!15330) )
))
(declare-fun lt!354652 () Unit!15329)

(declare-fun lemmaRemoveUselessConcatSound!236 (Regex!2827 List!10057) Unit!15329)

(assert (=> b!1022598 (= lt!354652 (lemmaRemoveUselessConcatSound!236 (regTwo!6166 r!15766) s!10566))))

(declare-fun b!1022599 () Bool)

(declare-fun e!652863 () Bool)

(declare-fun tp!310501 () Bool)

(declare-fun tp!310499 () Bool)

(assert (=> b!1022599 (= e!652863 (and tp!310501 tp!310499))))

(declare-fun b!1022600 () Bool)

(declare-fun tp!310503 () Bool)

(declare-fun tp!310504 () Bool)

(assert (=> b!1022600 (= e!652863 (and tp!310503 tp!310504))))

(declare-fun b!1022601 () Bool)

(declare-fun res!459532 () Bool)

(assert (=> b!1022601 (=> res!459532 e!652859)))

(declare-datatypes ((tuple2!11436 0))(
  ( (tuple2!11437 (_1!6544 List!10057) (_2!6544 List!10057)) )
))
(declare-datatypes ((Option!2360 0))(
  ( (None!2359) (Some!2359 (v!19776 tuple2!11436)) )
))
(declare-fun lt!354657 () Option!2360)

(declare-fun isEmpty!6401 (Option!2360) Bool)

(assert (=> b!1022601 (= res!459532 (not (isEmpty!6401 lt!354657)))))

(declare-fun b!1022603 () Bool)

(declare-fun tp!310500 () Bool)

(assert (=> b!1022603 (= e!652863 tp!310500)))

(declare-fun e!652858 () Bool)

(assert (=> b!1022604 (= e!652858 e!652859)))

(declare-fun res!459536 () Bool)

(assert (=> b!1022604 (=> res!459536 e!652859)))

(declare-fun isEmpty!6402 (List!10057) Bool)

(assert (=> b!1022604 (= res!459536 (isEmpty!6402 s!10566))))

(declare-fun Exists!556 (Int) Bool)

(assert (=> b!1022604 (= (Exists!556 lambda!36409) (Exists!556 lambda!36410))))

(declare-fun lt!354655 () Unit!15329)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!258 (Regex!2827 Regex!2827 List!10057) Unit!15329)

(assert (=> b!1022604 (= lt!354655 (lemmaExistCutMatchRandMatchRSpecEquivalent!258 EmptyExpr!2827 (regTwo!6166 r!15766) s!10566))))

(declare-fun isDefined!2002 (Option!2360) Bool)

(assert (=> b!1022604 (= (isDefined!2002 lt!354657) (Exists!556 lambda!36409))))

(declare-fun findConcatSeparation!466 (Regex!2827 Regex!2827 List!10057 List!10057 List!10057) Option!2360)

(assert (=> b!1022604 (= lt!354657 (findConcatSeparation!466 EmptyExpr!2827 (regTwo!6166 r!15766) Nil!10041 s!10566 s!10566))))

(declare-fun lt!354654 () Unit!15329)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!466 (Regex!2827 Regex!2827 List!10057) Unit!15329)

(assert (=> b!1022604 (= lt!354654 (lemmaFindConcatSeparationEquivalentToExists!466 EmptyExpr!2827 (regTwo!6166 r!15766) s!10566))))

(declare-fun b!1022605 () Bool)

(assert (=> b!1022605 (= e!652863 tp_is_empty!5297)))

(declare-fun b!1022606 () Bool)

(declare-fun e!652862 () Bool)

(assert (=> b!1022606 (= e!652862 (not e!652858))))

(declare-fun res!459533 () Bool)

(assert (=> b!1022606 (=> res!459533 e!652858)))

(declare-fun lt!354661 () Bool)

(get-info :version)

(assert (=> b!1022606 (= res!459533 (or lt!354661 (not ((_ is Concat!4660) r!15766)) (not ((_ is EmptyExpr!2827) (regOne!6166 r!15766)))))))

(declare-fun matchRSpec!626 (Regex!2827 List!10057) Bool)

(assert (=> b!1022606 (= lt!354661 (matchRSpec!626 r!15766 s!10566))))

(assert (=> b!1022606 (= lt!354661 (matchR!1363 r!15766 s!10566))))

(declare-fun lt!354653 () Unit!15329)

(declare-fun mainMatchTheorem!626 (Regex!2827 List!10057) Unit!15329)

(assert (=> b!1022606 (= lt!354653 (mainMatchTheorem!626 r!15766 s!10566))))

(declare-fun b!1022607 () Bool)

(assert (=> b!1022607 (= e!652860 true)))

(declare-fun lt!354656 () Bool)

(declare-fun isPrefix!1009 (List!10057 List!10057) Bool)

(assert (=> b!1022607 (= lt!354656 (isPrefix!1009 Nil!10041 Nil!10041))))

(declare-fun b!1022602 () Bool)

(declare-fun res!459537 () Bool)

(assert (=> b!1022602 (=> res!459537 e!652860)))

(declare-fun validRegex!1296 (Regex!2827) Bool)

(assert (=> b!1022602 (= res!459537 (not (validRegex!1296 (regTwo!6166 r!15766))))))

(declare-fun res!459535 () Bool)

(assert (=> start!89030 (=> (not res!459535) (not e!652862))))

(assert (=> start!89030 (= res!459535 (validRegex!1296 r!15766))))

(assert (=> start!89030 e!652862))

(assert (=> start!89030 e!652863))

(assert (=> start!89030 e!652861))

(assert (= (and start!89030 res!459535) b!1022606))

(assert (= (and b!1022606 (not res!459533)) b!1022604))

(assert (= (and b!1022604 (not res!459536)) b!1022601))

(assert (= (and b!1022601 (not res!459532)) b!1022598))

(assert (= (and b!1022598 (not res!459534)) b!1022602))

(assert (= (and b!1022602 (not res!459537)) b!1022597))

(assert (= (and b!1022597 (not res!459538)) b!1022607))

(assert (= (and start!89030 ((_ is ElementMatch!2827) r!15766)) b!1022605))

(assert (= (and start!89030 ((_ is Concat!4660) r!15766)) b!1022599))

(assert (= (and start!89030 ((_ is Star!2827) r!15766)) b!1022603))

(assert (= (and start!89030 ((_ is Union!2827) r!15766)) b!1022600))

(assert (= (and start!89030 ((_ is Cons!10041) s!10566)) b!1022596))

(declare-fun m!1200735 () Bool)

(assert (=> b!1022601 m!1200735))

(declare-fun m!1200737 () Bool)

(assert (=> start!89030 m!1200737))

(declare-fun m!1200739 () Bool)

(assert (=> b!1022607 m!1200739))

(declare-fun m!1200741 () Bool)

(assert (=> b!1022602 m!1200741))

(declare-fun m!1200743 () Bool)

(assert (=> b!1022606 m!1200743))

(declare-fun m!1200745 () Bool)

(assert (=> b!1022606 m!1200745))

(declare-fun m!1200747 () Bool)

(assert (=> b!1022606 m!1200747))

(declare-fun m!1200749 () Bool)

(assert (=> b!1022598 m!1200749))

(declare-fun m!1200751 () Bool)

(assert (=> b!1022598 m!1200751))

(declare-fun m!1200753 () Bool)

(assert (=> b!1022598 m!1200753))

(declare-fun m!1200755 () Bool)

(assert (=> b!1022598 m!1200755))

(declare-fun m!1200757 () Bool)

(assert (=> b!1022604 m!1200757))

(declare-fun m!1200759 () Bool)

(assert (=> b!1022604 m!1200759))

(declare-fun m!1200761 () Bool)

(assert (=> b!1022604 m!1200761))

(declare-fun m!1200763 () Bool)

(assert (=> b!1022604 m!1200763))

(declare-fun m!1200765 () Bool)

(assert (=> b!1022604 m!1200765))

(declare-fun m!1200767 () Bool)

(assert (=> b!1022604 m!1200767))

(declare-fun m!1200769 () Bool)

(assert (=> b!1022604 m!1200769))

(assert (=> b!1022604 m!1200761))

(declare-fun m!1200771 () Bool)

(assert (=> b!1022597 m!1200771))

(check-sat (not b!1022597) tp_is_empty!5297 (not b!1022600) (not b!1022599) (not b!1022601) (not start!89030) (not b!1022596) (not b!1022603) (not b!1022607) (not b!1022604) (not b!1022598) (not b!1022602) (not b!1022606))
(check-sat)
