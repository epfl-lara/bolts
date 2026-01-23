; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85806 () Bool)

(assert start!85806)

(declare-fun b!963813 () Bool)

(assert (=> b!963813 true))

(assert (=> b!963813 true))

(assert (=> b!963813 true))

(declare-fun lambda!33780 () Int)

(declare-fun lambda!33779 () Int)

(assert (=> b!963813 (not (= lambda!33780 lambda!33779))))

(assert (=> b!963813 true))

(assert (=> b!963813 true))

(assert (=> b!963813 true))

(declare-fun bs!241269 () Bool)

(declare-fun b!963821 () Bool)

(assert (= bs!241269 (and b!963821 b!963813)))

(declare-datatypes ((C!5928 0))(
  ( (C!5929 (val!3212 Int)) )
))
(declare-datatypes ((Regex!2679 0))(
  ( (ElementMatch!2679 (c!157008 C!5928)) (Concat!4512 (regOne!5870 Regex!2679) (regTwo!5870 Regex!2679)) (EmptyExpr!2679) (Star!2679 (reg!3008 Regex!2679)) (EmptyLang!2679) (Union!2679 (regOne!5871 Regex!2679) (regTwo!5871 Regex!2679)) )
))
(declare-fun lt!347365 () Regex!2679)

(declare-fun lt!347374 () Regex!2679)

(declare-fun lt!347376 () Regex!2679)

(declare-fun lambda!33781 () Int)

(declare-fun r!15766 () Regex!2679)

(assert (=> bs!241269 (= (and (= lt!347365 (reg!3008 r!15766)) (= lt!347374 lt!347376)) (= lambda!33781 lambda!33779))))

(assert (=> bs!241269 (not (= lambda!33781 lambda!33780))))

(assert (=> b!963821 true))

(assert (=> b!963821 true))

(assert (=> b!963821 true))

(declare-fun lambda!33782 () Int)

(assert (=> bs!241269 (not (= lambda!33782 lambda!33779))))

(assert (=> bs!241269 (= (and (= lt!347365 (reg!3008 r!15766)) (= lt!347374 lt!347376)) (= lambda!33782 lambda!33780))))

(assert (=> b!963821 (not (= lambda!33782 lambda!33781))))

(assert (=> b!963821 true))

(assert (=> b!963821 true))

(assert (=> b!963821 true))

(declare-fun b!963810 () Bool)

(declare-fun e!622223 () Bool)

(declare-fun tp!296000 () Bool)

(assert (=> b!963810 (= e!622223 tp!296000)))

(declare-fun b!963811 () Bool)

(declare-fun e!622219 () Bool)

(declare-fun tp_is_empty!5001 () Bool)

(declare-fun tp!295999 () Bool)

(assert (=> b!963811 (= e!622219 (and tp_is_empty!5001 tp!295999))))

(declare-fun b!963812 () Bool)

(declare-fun e!622224 () Bool)

(assert (=> b!963812 (= e!622224 true)))

(declare-datatypes ((List!9909 0))(
  ( (Nil!9893) (Cons!9893 (h!15294 C!5928) (t!100955 List!9909)) )
))
(declare-datatypes ((tuple2!11236 0))(
  ( (tuple2!11237 (_1!6444 List!9909) (_2!6444 List!9909)) )
))
(declare-fun lt!347373 () tuple2!11236)

(declare-fun matchR!1217 (Regex!2679 List!9909) Bool)

(assert (=> b!963812 (matchR!1217 (reg!3008 r!15766) (_1!6444 lt!347373))))

(declare-datatypes ((Unit!15013 0))(
  ( (Unit!15014) )
))
(declare-fun lt!347369 () Unit!15013)

(declare-fun lemmaRemoveUselessConcatSound!178 (Regex!2679 List!9909) Unit!15013)

(assert (=> b!963812 (= lt!347369 (lemmaRemoveUselessConcatSound!178 (reg!3008 r!15766) (_1!6444 lt!347373)))))

(declare-fun e!622225 () Bool)

(declare-fun e!622220 () Bool)

(assert (=> b!963813 (= e!622225 e!622220)))

(declare-fun res!438105 () Bool)

(assert (=> b!963813 (=> res!438105 e!622220)))

(declare-fun s!10566 () List!9909)

(assert (=> b!963813 (= res!438105 (not (matchR!1217 lt!347374 s!10566)))))

(assert (=> b!963813 (= lt!347374 (Star!2679 lt!347365))))

(declare-fun removeUselessConcat!326 (Regex!2679) Regex!2679)

(assert (=> b!963813 (= lt!347365 (removeUselessConcat!326 (reg!3008 r!15766)))))

(declare-fun Exists!422 (Int) Bool)

(assert (=> b!963813 (= (Exists!422 lambda!33779) (Exists!422 lambda!33780))))

(declare-fun lt!347377 () Unit!15013)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!140 (Regex!2679 List!9909) Unit!15013)

(assert (=> b!963813 (= lt!347377 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!140 (reg!3008 r!15766) s!10566))))

(declare-datatypes ((Option!2260 0))(
  ( (None!2259) (Some!2259 (v!19676 tuple2!11236)) )
))
(declare-fun isDefined!1902 (Option!2260) Bool)

(declare-fun findConcatSeparation!366 (Regex!2679 Regex!2679 List!9909 List!9909 List!9909) Option!2260)

(assert (=> b!963813 (= (isDefined!1902 (findConcatSeparation!366 (reg!3008 r!15766) lt!347376 Nil!9893 s!10566 s!10566)) (Exists!422 lambda!33779))))

(declare-fun lt!347370 () Unit!15013)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!366 (Regex!2679 Regex!2679 List!9909) Unit!15013)

(assert (=> b!963813 (= lt!347370 (lemmaFindConcatSeparationEquivalentToExists!366 (reg!3008 r!15766) lt!347376 s!10566))))

(assert (=> b!963813 (= lt!347376 (Star!2679 (reg!3008 r!15766)))))

(declare-fun b!963814 () Bool)

(declare-fun tp!296001 () Bool)

(declare-fun tp!296002 () Bool)

(assert (=> b!963814 (= e!622223 (and tp!296001 tp!296002))))

(declare-fun b!963815 () Bool)

(declare-fun e!622221 () Bool)

(assert (=> b!963815 (= e!622221 (not e!622225))))

(declare-fun res!438104 () Bool)

(assert (=> b!963815 (=> res!438104 e!622225)))

(declare-fun lt!347367 () Bool)

(get-info :version)

(assert (=> b!963815 (= res!438104 (or lt!347367 (and ((_ is Concat!4512) r!15766) ((_ is EmptyExpr!2679) (regOne!5870 r!15766))) (and ((_ is Concat!4512) r!15766) ((_ is EmptyExpr!2679) (regTwo!5870 r!15766))) ((_ is Concat!4512) r!15766) ((_ is Union!2679) r!15766) (not ((_ is Star!2679) r!15766))))))

(declare-fun matchRSpec!480 (Regex!2679 List!9909) Bool)

(assert (=> b!963815 (= lt!347367 (matchRSpec!480 r!15766 s!10566))))

(assert (=> b!963815 (= lt!347367 (matchR!1217 r!15766 s!10566))))

(declare-fun lt!347372 () Unit!15013)

(declare-fun mainMatchTheorem!480 (Regex!2679 List!9909) Unit!15013)

(assert (=> b!963815 (= lt!347372 (mainMatchTheorem!480 r!15766 s!10566))))

(declare-fun res!438100 () Bool)

(assert (=> start!85806 (=> (not res!438100) (not e!622221))))

(declare-fun validRegex!1148 (Regex!2679) Bool)

(assert (=> start!85806 (= res!438100 (validRegex!1148 r!15766))))

(assert (=> start!85806 e!622221))

(assert (=> start!85806 e!622223))

(assert (=> start!85806 e!622219))

(declare-fun b!963816 () Bool)

(declare-fun res!438101 () Bool)

(declare-fun e!622222 () Bool)

(assert (=> b!963816 (=> res!438101 e!622222)))

(declare-fun lt!347366 () Bool)

(assert (=> b!963816 (= res!438101 (not lt!347366))))

(declare-fun b!963817 () Bool)

(assert (=> b!963817 (= e!622223 tp_is_empty!5001)))

(declare-fun b!963818 () Bool)

(assert (=> b!963818 (= e!622222 e!622224)))

(declare-fun res!438102 () Bool)

(assert (=> b!963818 (=> res!438102 e!622224)))

(assert (=> b!963818 (= res!438102 (not (matchR!1217 lt!347365 (_1!6444 lt!347373))))))

(declare-fun lt!347371 () Option!2260)

(declare-fun get!3383 (Option!2260) tuple2!11236)

(assert (=> b!963818 (= lt!347373 (get!3383 lt!347371))))

(declare-fun b!963819 () Bool)

(declare-fun tp!296003 () Bool)

(declare-fun tp!296004 () Bool)

(assert (=> b!963819 (= e!622223 (and tp!296003 tp!296004))))

(declare-fun b!963820 () Bool)

(declare-fun res!438106 () Bool)

(assert (=> b!963820 (=> res!438106 e!622224)))

(assert (=> b!963820 (= res!438106 (not (matchR!1217 lt!347374 (_2!6444 lt!347373))))))

(assert (=> b!963821 (= e!622220 e!622222)))

(declare-fun res!438103 () Bool)

(assert (=> b!963821 (=> res!438103 e!622222)))

(declare-fun isEmpty!6193 (List!9909) Bool)

(assert (=> b!963821 (= res!438103 (isEmpty!6193 s!10566))))

(assert (=> b!963821 (= (Exists!422 lambda!33781) (Exists!422 lambda!33782))))

(declare-fun lt!347368 () Unit!15013)

(assert (=> b!963821 (= lt!347368 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!140 lt!347365 s!10566))))

(assert (=> b!963821 (= lt!347366 (Exists!422 lambda!33781))))

(assert (=> b!963821 (= lt!347366 (isDefined!1902 lt!347371))))

(assert (=> b!963821 (= lt!347371 (findConcatSeparation!366 lt!347365 lt!347374 Nil!9893 s!10566 s!10566))))

(declare-fun lt!347375 () Unit!15013)

(assert (=> b!963821 (= lt!347375 (lemmaFindConcatSeparationEquivalentToExists!366 lt!347365 lt!347374 s!10566))))

(assert (=> b!963821 (matchRSpec!480 lt!347374 s!10566)))

(declare-fun lt!347364 () Unit!15013)

(assert (=> b!963821 (= lt!347364 (mainMatchTheorem!480 lt!347374 s!10566))))

(assert (= (and start!85806 res!438100) b!963815))

(assert (= (and b!963815 (not res!438104)) b!963813))

(assert (= (and b!963813 (not res!438105)) b!963821))

(assert (= (and b!963821 (not res!438103)) b!963816))

(assert (= (and b!963816 (not res!438101)) b!963818))

(assert (= (and b!963818 (not res!438102)) b!963820))

(assert (= (and b!963820 (not res!438106)) b!963812))

(assert (= (and start!85806 ((_ is ElementMatch!2679) r!15766)) b!963817))

(assert (= (and start!85806 ((_ is Concat!4512) r!15766)) b!963814))

(assert (= (and start!85806 ((_ is Star!2679) r!15766)) b!963810))

(assert (= (and start!85806 ((_ is Union!2679) r!15766)) b!963819))

(assert (= (and start!85806 ((_ is Cons!9893) s!10566)) b!963811))

(declare-fun m!1170725 () Bool)

(assert (=> start!85806 m!1170725))

(declare-fun m!1170727 () Bool)

(assert (=> b!963815 m!1170727))

(declare-fun m!1170729 () Bool)

(assert (=> b!963815 m!1170729))

(declare-fun m!1170731 () Bool)

(assert (=> b!963815 m!1170731))

(declare-fun m!1170733 () Bool)

(assert (=> b!963813 m!1170733))

(declare-fun m!1170735 () Bool)

(assert (=> b!963813 m!1170735))

(declare-fun m!1170737 () Bool)

(assert (=> b!963813 m!1170737))

(declare-fun m!1170739 () Bool)

(assert (=> b!963813 m!1170739))

(declare-fun m!1170741 () Bool)

(assert (=> b!963813 m!1170741))

(declare-fun m!1170743 () Bool)

(assert (=> b!963813 m!1170743))

(declare-fun m!1170745 () Bool)

(assert (=> b!963813 m!1170745))

(assert (=> b!963813 m!1170741))

(declare-fun m!1170747 () Bool)

(assert (=> b!963813 m!1170747))

(assert (=> b!963813 m!1170745))

(declare-fun m!1170749 () Bool)

(assert (=> b!963821 m!1170749))

(declare-fun m!1170751 () Bool)

(assert (=> b!963821 m!1170751))

(declare-fun m!1170753 () Bool)

(assert (=> b!963821 m!1170753))

(declare-fun m!1170755 () Bool)

(assert (=> b!963821 m!1170755))

(declare-fun m!1170757 () Bool)

(assert (=> b!963821 m!1170757))

(declare-fun m!1170759 () Bool)

(assert (=> b!963821 m!1170759))

(declare-fun m!1170761 () Bool)

(assert (=> b!963821 m!1170761))

(assert (=> b!963821 m!1170753))

(declare-fun m!1170763 () Bool)

(assert (=> b!963821 m!1170763))

(declare-fun m!1170765 () Bool)

(assert (=> b!963821 m!1170765))

(declare-fun m!1170767 () Bool)

(assert (=> b!963812 m!1170767))

(declare-fun m!1170769 () Bool)

(assert (=> b!963812 m!1170769))

(declare-fun m!1170771 () Bool)

(assert (=> b!963820 m!1170771))

(declare-fun m!1170773 () Bool)

(assert (=> b!963818 m!1170773))

(declare-fun m!1170775 () Bool)

(assert (=> b!963818 m!1170775))

(check-sat (not b!963811) (not b!963814) (not b!963813) (not b!963812) (not b!963820) (not start!85806) (not b!963815) (not b!963821) (not b!963819) tp_is_empty!5001 (not b!963810) (not b!963818))
(check-sat)
