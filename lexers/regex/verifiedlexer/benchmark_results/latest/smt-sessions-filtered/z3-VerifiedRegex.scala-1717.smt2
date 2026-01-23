; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86126 () Bool)

(assert start!86126)

(declare-fun b!968520 () Bool)

(assert (=> b!968520 true))

(assert (=> b!968520 true))

(assert (=> b!968520 true))

(declare-fun lambda!34208 () Int)

(declare-fun lambda!34207 () Int)

(assert (=> b!968520 (not (= lambda!34208 lambda!34207))))

(assert (=> b!968520 true))

(assert (=> b!968520 true))

(assert (=> b!968520 true))

(declare-fun bs!242219 () Bool)

(declare-fun b!968524 () Bool)

(assert (= bs!242219 (and b!968524 b!968520)))

(declare-fun lambda!34209 () Int)

(declare-datatypes ((C!5956 0))(
  ( (C!5957 (val!3226 Int)) )
))
(declare-datatypes ((Regex!2693 0))(
  ( (ElementMatch!2693 (c!157886 C!5956)) (Concat!4526 (regOne!5898 Regex!2693) (regTwo!5898 Regex!2693)) (EmptyExpr!2693) (Star!2693 (reg!3022 Regex!2693)) (EmptyLang!2693) (Union!2693 (regOne!5899 Regex!2693) (regTwo!5899 Regex!2693)) )
))
(declare-fun lt!348491 () Regex!2693)

(declare-fun lt!348485 () Regex!2693)

(declare-fun r!15766 () Regex!2693)

(declare-fun lt!348497 () Regex!2693)

(assert (=> bs!242219 (= (and (= lt!348491 (reg!3022 r!15766)) (= lt!348497 lt!348485)) (= lambda!34209 lambda!34207))))

(assert (=> bs!242219 (not (= lambda!34209 lambda!34208))))

(assert (=> b!968524 true))

(assert (=> b!968524 true))

(assert (=> b!968524 true))

(declare-fun lambda!34210 () Int)

(assert (=> bs!242219 (not (= lambda!34210 lambda!34207))))

(assert (=> bs!242219 (= (and (= lt!348491 (reg!3022 r!15766)) (= lt!348497 lt!348485)) (= lambda!34210 lambda!34208))))

(assert (=> b!968524 (not (= lambda!34210 lambda!34209))))

(assert (=> b!968524 true))

(assert (=> b!968524 true))

(assert (=> b!968524 true))

(declare-fun b!968512 () Bool)

(declare-fun e!624620 () Bool)

(declare-fun tp!296809 () Bool)

(declare-fun tp!296807 () Bool)

(assert (=> b!968512 (= e!624620 (and tp!296809 tp!296807))))

(declare-fun b!968513 () Bool)

(declare-datatypes ((Unit!15043 0))(
  ( (Unit!15044) )
))
(declare-fun e!624622 () Unit!15043)

(declare-fun Unit!15045 () Unit!15043)

(assert (=> b!968513 (= e!624622 Unit!15045)))

(declare-fun lt!348496 () Unit!15043)

(declare-datatypes ((List!9923 0))(
  ( (Nil!9907) (Cons!9907 (h!15308 C!5956) (t!100969 List!9923)) )
))
(declare-datatypes ((tuple2!11264 0))(
  ( (tuple2!11265 (_1!6458 List!9923) (_2!6458 List!9923)) )
))
(declare-fun lt!348493 () tuple2!11264)

(declare-fun mainMatchTheorem!494 (Regex!2693 List!9923) Unit!15043)

(assert (=> b!968513 (= lt!348496 (mainMatchTheorem!494 (reg!3022 r!15766) (_1!6458 lt!348493)))))

(assert (=> b!968513 false))

(declare-fun b!968514 () Bool)

(declare-fun e!624623 () Bool)

(declare-fun tp_is_empty!5029 () Bool)

(declare-fun tp!296810 () Bool)

(assert (=> b!968514 (= e!624623 (and tp_is_empty!5029 tp!296810))))

(declare-fun b!968515 () Bool)

(declare-fun e!624625 () Bool)

(declare-fun e!624624 () Bool)

(assert (=> b!968515 (= e!624625 e!624624)))

(declare-fun res!440340 () Bool)

(assert (=> b!968515 (=> res!440340 e!624624)))

(declare-fun matchR!1231 (Regex!2693 List!9923) Bool)

(assert (=> b!968515 (= res!440340 (not (matchR!1231 lt!348491 (_1!6458 lt!348493))))))

(declare-datatypes ((Option!2274 0))(
  ( (None!2273) (Some!2273 (v!19690 tuple2!11264)) )
))
(declare-fun lt!348487 () Option!2274)

(declare-fun get!3404 (Option!2274) tuple2!11264)

(assert (=> b!968515 (= lt!348493 (get!3404 lt!348487))))

(declare-fun b!968516 () Bool)

(declare-fun tp!296811 () Bool)

(declare-fun tp!296812 () Bool)

(assert (=> b!968516 (= e!624620 (and tp!296811 tp!296812))))

(declare-fun b!968517 () Bool)

(assert (=> b!968517 (= e!624620 tp_is_empty!5029)))

(declare-fun b!968518 () Bool)

(assert (=> b!968518 (= e!624624 true)))

(declare-fun removeUselessConcat!340 (Regex!2693) Regex!2693)

(assert (=> b!968518 (= (matchR!1231 lt!348485 (_2!6458 lt!348493)) (matchR!1231 (removeUselessConcat!340 lt!348485) (_2!6458 lt!348493)))))

(declare-fun lt!348492 () Unit!15043)

(declare-fun lemmaRemoveUselessConcatSound!192 (Regex!2693 List!9923) Unit!15043)

(assert (=> b!968518 (= lt!348492 (lemmaRemoveUselessConcatSound!192 lt!348485 (_2!6458 lt!348493)))))

(declare-fun lt!348499 () Unit!15043)

(assert (=> b!968518 (= lt!348499 e!624622)))

(declare-fun c!157885 () Bool)

(declare-fun s!10566 () List!9923)

(declare-fun size!7943 (List!9923) Int)

(assert (=> b!968518 (= c!157885 (= (size!7943 (_2!6458 lt!348493)) (size!7943 s!10566)))))

(assert (=> b!968518 (matchR!1231 (reg!3022 r!15766) (_1!6458 lt!348493))))

(declare-fun lt!348494 () Unit!15043)

(assert (=> b!968518 (= lt!348494 (lemmaRemoveUselessConcatSound!192 (reg!3022 r!15766) (_1!6458 lt!348493)))))

(declare-fun b!968519 () Bool)

(declare-fun Unit!15046 () Unit!15043)

(assert (=> b!968519 (= e!624622 Unit!15046)))

(declare-fun e!624621 () Bool)

(declare-fun e!624627 () Bool)

(assert (=> b!968520 (= e!624621 e!624627)))

(declare-fun res!440342 () Bool)

(assert (=> b!968520 (=> res!440342 e!624627)))

(assert (=> b!968520 (= res!440342 (not (matchR!1231 lt!348497 s!10566)))))

(assert (=> b!968520 (= lt!348497 (Star!2693 lt!348491))))

(assert (=> b!968520 (= lt!348491 (removeUselessConcat!340 (reg!3022 r!15766)))))

(declare-fun Exists!436 (Int) Bool)

(assert (=> b!968520 (= (Exists!436 lambda!34207) (Exists!436 lambda!34208))))

(declare-fun lt!348500 () Unit!15043)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!154 (Regex!2693 List!9923) Unit!15043)

(assert (=> b!968520 (= lt!348500 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!154 (reg!3022 r!15766) s!10566))))

(declare-fun isDefined!1916 (Option!2274) Bool)

(declare-fun findConcatSeparation!380 (Regex!2693 Regex!2693 List!9923 List!9923 List!9923) Option!2274)

(assert (=> b!968520 (= (isDefined!1916 (findConcatSeparation!380 (reg!3022 r!15766) lt!348485 Nil!9907 s!10566 s!10566)) (Exists!436 lambda!34207))))

(declare-fun lt!348501 () Unit!15043)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!380 (Regex!2693 Regex!2693 List!9923) Unit!15043)

(assert (=> b!968520 (= lt!348501 (lemmaFindConcatSeparationEquivalentToExists!380 (reg!3022 r!15766) lt!348485 s!10566))))

(assert (=> b!968520 (= lt!348485 (Star!2693 (reg!3022 r!15766)))))

(declare-fun b!968522 () Bool)

(declare-fun e!624626 () Bool)

(assert (=> b!968522 (= e!624626 (not e!624621))))

(declare-fun res!440341 () Bool)

(assert (=> b!968522 (=> res!440341 e!624621)))

(declare-fun lt!348488 () Bool)

(get-info :version)

(assert (=> b!968522 (= res!440341 (or lt!348488 (and ((_ is Concat!4526) r!15766) ((_ is EmptyExpr!2693) (regOne!5898 r!15766))) (and ((_ is Concat!4526) r!15766) ((_ is EmptyExpr!2693) (regTwo!5898 r!15766))) ((_ is Concat!4526) r!15766) ((_ is Union!2693) r!15766) (not ((_ is Star!2693) r!15766))))))

(declare-fun matchRSpec!494 (Regex!2693 List!9923) Bool)

(assert (=> b!968522 (= lt!348488 (matchRSpec!494 r!15766 s!10566))))

(assert (=> b!968522 (= lt!348488 (matchR!1231 r!15766 s!10566))))

(declare-fun lt!348495 () Unit!15043)

(assert (=> b!968522 (= lt!348495 (mainMatchTheorem!494 r!15766 s!10566))))

(declare-fun b!968523 () Bool)

(declare-fun res!440346 () Bool)

(assert (=> b!968523 (=> res!440346 e!624625)))

(declare-fun lt!348486 () Bool)

(assert (=> b!968523 (= res!440346 (not lt!348486))))

(declare-fun b!968521 () Bool)

(declare-fun res!440343 () Bool)

(assert (=> b!968521 (=> res!440343 e!624624)))

(assert (=> b!968521 (= res!440343 (not (matchR!1231 lt!348497 (_2!6458 lt!348493))))))

(declare-fun res!440345 () Bool)

(assert (=> start!86126 (=> (not res!440345) (not e!624626))))

(declare-fun validRegex!1162 (Regex!2693) Bool)

(assert (=> start!86126 (= res!440345 (validRegex!1162 r!15766))))

(assert (=> start!86126 e!624626))

(assert (=> start!86126 e!624620))

(assert (=> start!86126 e!624623))

(assert (=> b!968524 (= e!624627 e!624625)))

(declare-fun res!440344 () Bool)

(assert (=> b!968524 (=> res!440344 e!624625)))

(declare-fun isEmpty!6215 (List!9923) Bool)

(assert (=> b!968524 (= res!440344 (isEmpty!6215 s!10566))))

(assert (=> b!968524 (= (Exists!436 lambda!34209) (Exists!436 lambda!34210))))

(declare-fun lt!348489 () Unit!15043)

(assert (=> b!968524 (= lt!348489 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!154 lt!348491 s!10566))))

(assert (=> b!968524 (= lt!348486 (Exists!436 lambda!34209))))

(assert (=> b!968524 (= lt!348486 (isDefined!1916 lt!348487))))

(assert (=> b!968524 (= lt!348487 (findConcatSeparation!380 lt!348491 lt!348497 Nil!9907 s!10566 s!10566))))

(declare-fun lt!348490 () Unit!15043)

(assert (=> b!968524 (= lt!348490 (lemmaFindConcatSeparationEquivalentToExists!380 lt!348491 lt!348497 s!10566))))

(assert (=> b!968524 (matchRSpec!494 lt!348497 s!10566)))

(declare-fun lt!348498 () Unit!15043)

(assert (=> b!968524 (= lt!348498 (mainMatchTheorem!494 lt!348497 s!10566))))

(declare-fun b!968525 () Bool)

(declare-fun tp!296808 () Bool)

(assert (=> b!968525 (= e!624620 tp!296808)))

(assert (= (and start!86126 res!440345) b!968522))

(assert (= (and b!968522 (not res!440341)) b!968520))

(assert (= (and b!968520 (not res!440342)) b!968524))

(assert (= (and b!968524 (not res!440344)) b!968523))

(assert (= (and b!968523 (not res!440346)) b!968515))

(assert (= (and b!968515 (not res!440340)) b!968521))

(assert (= (and b!968521 (not res!440343)) b!968518))

(assert (= (and b!968518 c!157885) b!968513))

(assert (= (and b!968518 (not c!157885)) b!968519))

(assert (= (and start!86126 ((_ is ElementMatch!2693) r!15766)) b!968517))

(assert (= (and start!86126 ((_ is Concat!4526) r!15766)) b!968516))

(assert (= (and start!86126 ((_ is Star!2693) r!15766)) b!968525))

(assert (= (and start!86126 ((_ is Union!2693) r!15766)) b!968512))

(assert (= (and start!86126 ((_ is Cons!9907) s!10566)) b!968514))

(declare-fun m!1173831 () Bool)

(assert (=> b!968515 m!1173831))

(declare-fun m!1173833 () Bool)

(assert (=> b!968515 m!1173833))

(declare-fun m!1173835 () Bool)

(assert (=> b!968524 m!1173835))

(declare-fun m!1173837 () Bool)

(assert (=> b!968524 m!1173837))

(declare-fun m!1173839 () Bool)

(assert (=> b!968524 m!1173839))

(declare-fun m!1173841 () Bool)

(assert (=> b!968524 m!1173841))

(declare-fun m!1173843 () Bool)

(assert (=> b!968524 m!1173843))

(declare-fun m!1173845 () Bool)

(assert (=> b!968524 m!1173845))

(assert (=> b!968524 m!1173839))

(declare-fun m!1173847 () Bool)

(assert (=> b!968524 m!1173847))

(declare-fun m!1173849 () Bool)

(assert (=> b!968524 m!1173849))

(declare-fun m!1173851 () Bool)

(assert (=> b!968524 m!1173851))

(declare-fun m!1173853 () Bool)

(assert (=> start!86126 m!1173853))

(declare-fun m!1173855 () Bool)

(assert (=> b!968520 m!1173855))

(declare-fun m!1173857 () Bool)

(assert (=> b!968520 m!1173857))

(declare-fun m!1173859 () Bool)

(assert (=> b!968520 m!1173859))

(declare-fun m!1173861 () Bool)

(assert (=> b!968520 m!1173861))

(declare-fun m!1173863 () Bool)

(assert (=> b!968520 m!1173863))

(declare-fun m!1173865 () Bool)

(assert (=> b!968520 m!1173865))

(declare-fun m!1173867 () Bool)

(assert (=> b!968520 m!1173867))

(declare-fun m!1173869 () Bool)

(assert (=> b!968520 m!1173869))

(assert (=> b!968520 m!1173855))

(assert (=> b!968520 m!1173865))

(declare-fun m!1173871 () Bool)

(assert (=> b!968522 m!1173871))

(declare-fun m!1173873 () Bool)

(assert (=> b!968522 m!1173873))

(declare-fun m!1173875 () Bool)

(assert (=> b!968522 m!1173875))

(declare-fun m!1173877 () Bool)

(assert (=> b!968518 m!1173877))

(declare-fun m!1173879 () Bool)

(assert (=> b!968518 m!1173879))

(declare-fun m!1173881 () Bool)

(assert (=> b!968518 m!1173881))

(declare-fun m!1173883 () Bool)

(assert (=> b!968518 m!1173883))

(declare-fun m!1173885 () Bool)

(assert (=> b!968518 m!1173885))

(declare-fun m!1173887 () Bool)

(assert (=> b!968518 m!1173887))

(declare-fun m!1173889 () Bool)

(assert (=> b!968518 m!1173889))

(declare-fun m!1173891 () Bool)

(assert (=> b!968518 m!1173891))

(assert (=> b!968518 m!1173877))

(declare-fun m!1173893 () Bool)

(assert (=> b!968521 m!1173893))

(declare-fun m!1173895 () Bool)

(assert (=> b!968513 m!1173895))

(check-sat (not b!968516) (not b!968521) (not b!968522) tp_is_empty!5029 (not b!968525) (not start!86126) (not b!968524) (not b!968514) (not b!968518) (not b!968512) (not b!968513) (not b!968520) (not b!968515))
(check-sat)
