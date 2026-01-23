; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84430 () Bool)

(assert start!84430)

(declare-fun b!947011 () Bool)

(assert (=> b!947011 true))

(assert (=> b!947011 true))

(assert (=> b!947011 true))

(declare-fun lambda!32320 () Int)

(declare-fun lambda!32319 () Int)

(assert (=> b!947011 (not (= lambda!32320 lambda!32319))))

(assert (=> b!947011 true))

(assert (=> b!947011 true))

(assert (=> b!947011 true))

(declare-fun bs!239671 () Bool)

(declare-fun b!947006 () Bool)

(assert (= bs!239671 (and b!947006 b!947011)))

(declare-datatypes ((C!5776 0))(
  ( (C!5777 (val!3136 Int)) )
))
(declare-datatypes ((Regex!2603 0))(
  ( (ElementMatch!2603 (c!154180 C!5776)) (Concat!4436 (regOne!5718 Regex!2603) (regTwo!5718 Regex!2603)) (EmptyExpr!2603) (Star!2603 (reg!2932 Regex!2603)) (EmptyLang!2603) (Union!2603 (regOne!5719 Regex!2603) (regTwo!5719 Regex!2603)) )
))
(declare-fun lt!343781 () Regex!2603)

(declare-fun lt!343778 () Regex!2603)

(declare-fun lambda!32321 () Int)

(declare-fun r!15766 () Regex!2603)

(declare-fun lt!343769 () Regex!2603)

(assert (=> bs!239671 (= (and (= lt!343769 (reg!2932 r!15766)) (= lt!343781 lt!343778)) (= lambda!32321 lambda!32319))))

(assert (=> bs!239671 (not (= lambda!32321 lambda!32320))))

(assert (=> b!947006 true))

(assert (=> b!947006 true))

(assert (=> b!947006 true))

(declare-fun lambda!32322 () Int)

(assert (=> bs!239671 (not (= lambda!32322 lambda!32319))))

(assert (=> bs!239671 (= (and (= lt!343769 (reg!2932 r!15766)) (= lt!343781 lt!343778)) (= lambda!32322 lambda!32320))))

(assert (=> b!947006 (not (= lambda!32322 lambda!32321))))

(assert (=> b!947006 true))

(assert (=> b!947006 true))

(assert (=> b!947006 true))

(declare-fun b!946998 () Bool)

(declare-fun res!430400 () Bool)

(declare-fun e!613579 () Bool)

(assert (=> b!946998 (=> res!430400 e!613579)))

(declare-datatypes ((List!9833 0))(
  ( (Nil!9817) (Cons!9817 (h!15218 C!5776) (t!100879 List!9833)) )
))
(declare-datatypes ((tuple2!11104 0))(
  ( (tuple2!11105 (_1!6378 List!9833) (_2!6378 List!9833)) )
))
(declare-fun lt!343768 () tuple2!11104)

(declare-fun matchR!1141 (Regex!2603 List!9833) Bool)

(assert (=> b!946998 (= res!430400 (not (matchR!1141 lt!343781 (_2!6378 lt!343768))))))

(declare-fun b!946999 () Bool)

(declare-datatypes ((Unit!14835 0))(
  ( (Unit!14836) )
))
(declare-fun e!613575 () Unit!14835)

(declare-fun Unit!14837 () Unit!14835)

(assert (=> b!946999 (= e!613575 Unit!14837)))

(declare-fun b!947000 () Bool)

(declare-fun e!613577 () Bool)

(declare-fun tp!292129 () Bool)

(declare-fun tp!292131 () Bool)

(assert (=> b!947000 (= e!613577 (and tp!292129 tp!292131))))

(declare-fun b!947001 () Bool)

(declare-fun e!613572 () Bool)

(assert (=> b!947001 (= e!613572 e!613579)))

(declare-fun res!430399 () Bool)

(assert (=> b!947001 (=> res!430399 e!613579)))

(assert (=> b!947001 (= res!430399 (not (matchR!1141 lt!343769 (_1!6378 lt!343768))))))

(declare-datatypes ((Option!2194 0))(
  ( (None!2193) (Some!2193 (v!19610 tuple2!11104)) )
))
(declare-fun lt!343775 () Option!2194)

(declare-fun get!3286 (Option!2194) tuple2!11104)

(assert (=> b!947001 (= lt!343768 (get!3286 lt!343775))))

(declare-fun b!947002 () Bool)

(declare-fun tp_is_empty!4849 () Bool)

(assert (=> b!947002 (= e!613577 tp_is_empty!4849)))

(declare-fun res!430402 () Bool)

(declare-fun e!613573 () Bool)

(assert (=> start!84430 (=> (not res!430402) (not e!613573))))

(declare-fun validRegex!1072 (Regex!2603) Bool)

(assert (=> start!84430 (= res!430402 (validRegex!1072 r!15766))))

(assert (=> start!84430 e!613573))

(assert (=> start!84430 e!613577))

(declare-fun e!613574 () Bool)

(assert (=> start!84430 e!613574))

(declare-fun b!947003 () Bool)

(declare-fun Unit!14838 () Unit!14835)

(assert (=> b!947003 (= e!613575 Unit!14838)))

(declare-fun lt!343782 () Unit!14835)

(declare-fun mainMatchTheorem!404 (Regex!2603 List!9833) Unit!14835)

(assert (=> b!947003 (= lt!343782 (mainMatchTheorem!404 (reg!2932 r!15766) (_1!6378 lt!343768)))))

(assert (=> b!947003 false))

(declare-fun b!947004 () Bool)

(declare-fun tp!292130 () Bool)

(assert (=> b!947004 (= e!613574 (and tp_is_empty!4849 tp!292130))))

(declare-fun b!947005 () Bool)

(declare-fun tp!292127 () Bool)

(assert (=> b!947005 (= e!613577 tp!292127)))

(declare-fun e!613576 () Bool)

(assert (=> b!947006 (= e!613576 e!613572)))

(declare-fun res!430401 () Bool)

(assert (=> b!947006 (=> res!430401 e!613572)))

(declare-fun s!10566 () List!9833)

(declare-fun isEmpty!6080 (List!9833) Bool)

(assert (=> b!947006 (= res!430401 (isEmpty!6080 s!10566))))

(declare-fun Exists!354 (Int) Bool)

(assert (=> b!947006 (= (Exists!354 lambda!32321) (Exists!354 lambda!32322))))

(declare-fun lt!343780 () Unit!14835)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!98 (Regex!2603 List!9833) Unit!14835)

(assert (=> b!947006 (= lt!343780 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!98 lt!343769 s!10566))))

(declare-fun lt!343772 () Bool)

(assert (=> b!947006 (= lt!343772 (Exists!354 lambda!32321))))

(declare-fun isDefined!1836 (Option!2194) Bool)

(assert (=> b!947006 (= lt!343772 (isDefined!1836 lt!343775))))

(declare-fun findConcatSeparation!300 (Regex!2603 Regex!2603 List!9833 List!9833 List!9833) Option!2194)

(assert (=> b!947006 (= lt!343775 (findConcatSeparation!300 lt!343769 lt!343781 Nil!9817 s!10566 s!10566))))

(declare-fun lt!343776 () Unit!14835)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!300 (Regex!2603 Regex!2603 List!9833) Unit!14835)

(assert (=> b!947006 (= lt!343776 (lemmaFindConcatSeparationEquivalentToExists!300 lt!343769 lt!343781 s!10566))))

(declare-fun matchRSpec!404 (Regex!2603 List!9833) Bool)

(assert (=> b!947006 (matchRSpec!404 lt!343781 s!10566)))

(declare-fun lt!343774 () Unit!14835)

(assert (=> b!947006 (= lt!343774 (mainMatchTheorem!404 lt!343781 s!10566))))

(declare-fun b!947007 () Bool)

(assert (=> b!947007 (= e!613579 (validRegex!1072 lt!343778))))

(declare-fun removeUselessConcat!272 (Regex!2603) Regex!2603)

(assert (=> b!947007 (= (matchR!1141 lt!343778 (_2!6378 lt!343768)) (matchR!1141 (removeUselessConcat!272 lt!343778) (_2!6378 lt!343768)))))

(declare-fun lt!343773 () Unit!14835)

(declare-fun lemmaRemoveUselessConcatSound!138 (Regex!2603 List!9833) Unit!14835)

(assert (=> b!947007 (= lt!343773 (lemmaRemoveUselessConcatSound!138 lt!343778 (_2!6378 lt!343768)))))

(declare-fun lt!343770 () Unit!14835)

(assert (=> b!947007 (= lt!343770 e!613575)))

(declare-fun c!154179 () Bool)

(declare-fun size!7901 (List!9833) Int)

(assert (=> b!947007 (= c!154179 (= (size!7901 (_2!6378 lt!343768)) (size!7901 s!10566)))))

(assert (=> b!947007 (matchR!1141 (reg!2932 r!15766) (_1!6378 lt!343768))))

(declare-fun lt!343777 () Unit!14835)

(assert (=> b!947007 (= lt!343777 (lemmaRemoveUselessConcatSound!138 (reg!2932 r!15766) (_1!6378 lt!343768)))))

(declare-fun b!947008 () Bool)

(declare-fun res!430404 () Bool)

(assert (=> b!947008 (=> res!430404 e!613572)))

(assert (=> b!947008 (= res!430404 (not lt!343772))))

(declare-fun b!947009 () Bool)

(declare-fun e!613578 () Bool)

(assert (=> b!947009 (= e!613573 (not e!613578))))

(declare-fun res!430398 () Bool)

(assert (=> b!947009 (=> res!430398 e!613578)))

(declare-fun lt!343767 () Bool)

(get-info :version)

(assert (=> b!947009 (= res!430398 (or lt!343767 (and ((_ is Concat!4436) r!15766) ((_ is EmptyExpr!2603) (regOne!5718 r!15766))) (and ((_ is Concat!4436) r!15766) ((_ is EmptyExpr!2603) (regTwo!5718 r!15766))) ((_ is Concat!4436) r!15766) ((_ is Union!2603) r!15766) (not ((_ is Star!2603) r!15766))))))

(assert (=> b!947009 (= lt!343767 (matchRSpec!404 r!15766 s!10566))))

(assert (=> b!947009 (= lt!343767 (matchR!1141 r!15766 s!10566))))

(declare-fun lt!343771 () Unit!14835)

(assert (=> b!947009 (= lt!343771 (mainMatchTheorem!404 r!15766 s!10566))))

(declare-fun b!947010 () Bool)

(declare-fun tp!292132 () Bool)

(declare-fun tp!292128 () Bool)

(assert (=> b!947010 (= e!613577 (and tp!292132 tp!292128))))

(assert (=> b!947011 (= e!613578 e!613576)))

(declare-fun res!430403 () Bool)

(assert (=> b!947011 (=> res!430403 e!613576)))

(assert (=> b!947011 (= res!430403 (not (matchR!1141 lt!343781 s!10566)))))

(assert (=> b!947011 (= lt!343781 (Star!2603 lt!343769))))

(assert (=> b!947011 (= lt!343769 (removeUselessConcat!272 (reg!2932 r!15766)))))

(assert (=> b!947011 (= (Exists!354 lambda!32319) (Exists!354 lambda!32320))))

(declare-fun lt!343779 () Unit!14835)

(assert (=> b!947011 (= lt!343779 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!98 (reg!2932 r!15766) s!10566))))

(assert (=> b!947011 (= (isDefined!1836 (findConcatSeparation!300 (reg!2932 r!15766) lt!343778 Nil!9817 s!10566 s!10566)) (Exists!354 lambda!32319))))

(declare-fun lt!343783 () Unit!14835)

(assert (=> b!947011 (= lt!343783 (lemmaFindConcatSeparationEquivalentToExists!300 (reg!2932 r!15766) lt!343778 s!10566))))

(assert (=> b!947011 (= lt!343778 (Star!2603 (reg!2932 r!15766)))))

(assert (= (and start!84430 res!430402) b!947009))

(assert (= (and b!947009 (not res!430398)) b!947011))

(assert (= (and b!947011 (not res!430403)) b!947006))

(assert (= (and b!947006 (not res!430401)) b!947008))

(assert (= (and b!947008 (not res!430404)) b!947001))

(assert (= (and b!947001 (not res!430399)) b!946998))

(assert (= (and b!946998 (not res!430400)) b!947007))

(assert (= (and b!947007 c!154179) b!947003))

(assert (= (and b!947007 (not c!154179)) b!946999))

(assert (= (and start!84430 ((_ is ElementMatch!2603) r!15766)) b!947002))

(assert (= (and start!84430 ((_ is Concat!4436) r!15766)) b!947010))

(assert (= (and start!84430 ((_ is Star!2603) r!15766)) b!947005))

(assert (= (and start!84430 ((_ is Union!2603) r!15766)) b!947000))

(assert (= (and start!84430 ((_ is Cons!9817) s!10566)) b!947004))

(declare-fun m!1161637 () Bool)

(assert (=> b!947001 m!1161637))

(declare-fun m!1161639 () Bool)

(assert (=> b!947001 m!1161639))

(declare-fun m!1161641 () Bool)

(assert (=> b!947007 m!1161641))

(declare-fun m!1161643 () Bool)

(assert (=> b!947007 m!1161643))

(assert (=> b!947007 m!1161641))

(declare-fun m!1161645 () Bool)

(assert (=> b!947007 m!1161645))

(declare-fun m!1161647 () Bool)

(assert (=> b!947007 m!1161647))

(declare-fun m!1161649 () Bool)

(assert (=> b!947007 m!1161649))

(declare-fun m!1161651 () Bool)

(assert (=> b!947007 m!1161651))

(declare-fun m!1161653 () Bool)

(assert (=> b!947007 m!1161653))

(declare-fun m!1161655 () Bool)

(assert (=> b!947007 m!1161655))

(declare-fun m!1161657 () Bool)

(assert (=> b!947007 m!1161657))

(declare-fun m!1161659 () Bool)

(assert (=> start!84430 m!1161659))

(declare-fun m!1161661 () Bool)

(assert (=> b!947011 m!1161661))

(declare-fun m!1161663 () Bool)

(assert (=> b!947011 m!1161663))

(declare-fun m!1161665 () Bool)

(assert (=> b!947011 m!1161665))

(assert (=> b!947011 m!1161661))

(declare-fun m!1161667 () Bool)

(assert (=> b!947011 m!1161667))

(declare-fun m!1161669 () Bool)

(assert (=> b!947011 m!1161669))

(declare-fun m!1161671 () Bool)

(assert (=> b!947011 m!1161671))

(assert (=> b!947011 m!1161671))

(declare-fun m!1161673 () Bool)

(assert (=> b!947011 m!1161673))

(declare-fun m!1161675 () Bool)

(assert (=> b!947011 m!1161675))

(declare-fun m!1161677 () Bool)

(assert (=> b!946998 m!1161677))

(declare-fun m!1161679 () Bool)

(assert (=> b!947006 m!1161679))

(declare-fun m!1161681 () Bool)

(assert (=> b!947006 m!1161681))

(declare-fun m!1161683 () Bool)

(assert (=> b!947006 m!1161683))

(declare-fun m!1161685 () Bool)

(assert (=> b!947006 m!1161685))

(declare-fun m!1161687 () Bool)

(assert (=> b!947006 m!1161687))

(declare-fun m!1161689 () Bool)

(assert (=> b!947006 m!1161689))

(assert (=> b!947006 m!1161679))

(declare-fun m!1161691 () Bool)

(assert (=> b!947006 m!1161691))

(declare-fun m!1161693 () Bool)

(assert (=> b!947006 m!1161693))

(declare-fun m!1161695 () Bool)

(assert (=> b!947006 m!1161695))

(declare-fun m!1161697 () Bool)

(assert (=> b!947009 m!1161697))

(declare-fun m!1161699 () Bool)

(assert (=> b!947009 m!1161699))

(declare-fun m!1161701 () Bool)

(assert (=> b!947009 m!1161701))

(declare-fun m!1161703 () Bool)

(assert (=> b!947003 m!1161703))

(check-sat (not b!947000) tp_is_empty!4849 (not b!947007) (not b!947005) (not b!947001) (not start!84430) (not b!946998) (not b!947009) (not b!947010) (not b!947003) (not b!947006) (not b!947004) (not b!947011))
(check-sat)
