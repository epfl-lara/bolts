; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84582 () Bool)

(assert start!84582)

(declare-fun b!949456 () Bool)

(assert (=> b!949456 true))

(assert (=> b!949456 true))

(declare-fun lambda!32548 () Int)

(declare-fun lambda!32547 () Int)

(assert (=> b!949456 (not (= lambda!32548 lambda!32547))))

(assert (=> b!949456 true))

(assert (=> b!949456 true))

(declare-fun b!949450 () Bool)

(declare-fun e!614849 () Bool)

(declare-fun tp!292609 () Bool)

(assert (=> b!949450 (= e!614849 tp!292609)))

(declare-fun b!949451 () Bool)

(declare-fun e!614851 () Bool)

(declare-fun e!614853 () Bool)

(assert (=> b!949451 (= e!614851 (not e!614853))))

(declare-fun res!431544 () Bool)

(assert (=> b!949451 (=> res!431544 e!614853)))

(declare-fun lt!344408 () Bool)

(declare-datatypes ((C!5804 0))(
  ( (C!5805 (val!3150 Int)) )
))
(declare-datatypes ((Regex!2617 0))(
  ( (ElementMatch!2617 (c!154608 C!5804)) (Concat!4450 (regOne!5746 Regex!2617) (regTwo!5746 Regex!2617)) (EmptyExpr!2617) (Star!2617 (reg!2946 Regex!2617)) (EmptyLang!2617) (Union!2617 (regOne!5747 Regex!2617) (regTwo!5747 Regex!2617)) )
))
(declare-fun r!15766 () Regex!2617)

(get-info :version)

(assert (=> b!949451 (= res!431544 (or (not lt!344408) (not ((_ is Concat!4450) r!15766)) (not ((_ is EmptyExpr!2617) (regOne!5746 r!15766)))))))

(declare-datatypes ((List!9847 0))(
  ( (Nil!9831) (Cons!9831 (h!15232 C!5804) (t!100893 List!9847)) )
))
(declare-fun s!10566 () List!9847)

(declare-fun matchRSpec!418 (Regex!2617 List!9847) Bool)

(assert (=> b!949451 (= lt!344408 (matchRSpec!418 r!15766 s!10566))))

(declare-fun matchR!1155 (Regex!2617 List!9847) Bool)

(assert (=> b!949451 (= lt!344408 (matchR!1155 r!15766 s!10566))))

(declare-datatypes ((Unit!14877 0))(
  ( (Unit!14878) )
))
(declare-fun lt!344409 () Unit!14877)

(declare-fun mainMatchTheorem!418 (Regex!2617 List!9847) Unit!14877)

(assert (=> b!949451 (= lt!344409 (mainMatchTheorem!418 r!15766 s!10566))))

(declare-fun b!949452 () Bool)

(declare-fun e!614850 () Bool)

(declare-datatypes ((tuple2!11128 0))(
  ( (tuple2!11129 (_1!6390 List!9847) (_2!6390 List!9847)) )
))
(declare-datatypes ((Option!2206 0))(
  ( (None!2205) (Some!2205 (v!19622 tuple2!11128)) )
))
(declare-fun lt!344411 () Option!2206)

(declare-fun isEmpty!6096 (List!9847) Bool)

(declare-fun get!3303 (Option!2206) tuple2!11128)

(assert (=> b!949452 (= e!614850 (isEmpty!6096 (_1!6390 (get!3303 lt!344411))))))

(declare-fun res!431546 () Bool)

(assert (=> start!84582 (=> (not res!431546) (not e!614851))))

(declare-fun validRegex!1086 (Regex!2617) Bool)

(assert (=> start!84582 (= res!431546 (validRegex!1086 r!15766))))

(assert (=> start!84582 e!614851))

(assert (=> start!84582 e!614849))

(declare-fun e!614852 () Bool)

(assert (=> start!84582 e!614852))

(declare-fun b!949453 () Bool)

(declare-fun tp!292608 () Bool)

(declare-fun tp!292611 () Bool)

(assert (=> b!949453 (= e!614849 (and tp!292608 tp!292611))))

(declare-fun b!949454 () Bool)

(declare-fun tp!292607 () Bool)

(declare-fun tp!292612 () Bool)

(assert (=> b!949454 (= e!614849 (and tp!292607 tp!292612))))

(declare-fun b!949455 () Bool)

(declare-fun tp_is_empty!4877 () Bool)

(declare-fun tp!292610 () Bool)

(assert (=> b!949455 (= e!614852 (and tp_is_empty!4877 tp!292610))))

(assert (=> b!949456 (= e!614853 e!614850)))

(declare-fun res!431545 () Bool)

(assert (=> b!949456 (=> res!431545 e!614850)))

(assert (=> b!949456 (= res!431545 (isEmpty!6096 s!10566))))

(declare-fun Exists!368 (Int) Bool)

(assert (=> b!949456 (= (Exists!368 lambda!32547) (Exists!368 lambda!32548))))

(declare-fun lt!344410 () Unit!14877)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!188 (Regex!2617 Regex!2617 List!9847) Unit!14877)

(assert (=> b!949456 (= lt!344410 (lemmaExistCutMatchRandMatchRSpecEquivalent!188 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566))))

(declare-fun isDefined!1848 (Option!2206) Bool)

(assert (=> b!949456 (= (isDefined!1848 lt!344411) (Exists!368 lambda!32547))))

(declare-fun findConcatSeparation!312 (Regex!2617 Regex!2617 List!9847 List!9847 List!9847) Option!2206)

(assert (=> b!949456 (= lt!344411 (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) Nil!9831 s!10566 s!10566))))

(declare-fun lt!344407 () Unit!14877)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!312 (Regex!2617 Regex!2617 List!9847) Unit!14877)

(assert (=> b!949456 (= lt!344407 (lemmaFindConcatSeparationEquivalentToExists!312 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566))))

(declare-fun b!949457 () Bool)

(assert (=> b!949457 (= e!614849 tp_is_empty!4877)))

(assert (= (and start!84582 res!431546) b!949451))

(assert (= (and b!949451 (not res!431544)) b!949456))

(assert (= (and b!949456 (not res!431545)) b!949452))

(assert (= (and start!84582 ((_ is ElementMatch!2617) r!15766)) b!949457))

(assert (= (and start!84582 ((_ is Concat!4450) r!15766)) b!949454))

(assert (= (and start!84582 ((_ is Star!2617) r!15766)) b!949450))

(assert (= (and start!84582 ((_ is Union!2617) r!15766)) b!949453))

(assert (= (and start!84582 ((_ is Cons!9831) s!10566)) b!949455))

(declare-fun m!1163059 () Bool)

(assert (=> b!949451 m!1163059))

(declare-fun m!1163061 () Bool)

(assert (=> b!949451 m!1163061))

(declare-fun m!1163063 () Bool)

(assert (=> b!949451 m!1163063))

(declare-fun m!1163065 () Bool)

(assert (=> b!949452 m!1163065))

(declare-fun m!1163067 () Bool)

(assert (=> b!949452 m!1163067))

(declare-fun m!1163069 () Bool)

(assert (=> start!84582 m!1163069))

(declare-fun m!1163071 () Bool)

(assert (=> b!949456 m!1163071))

(declare-fun m!1163073 () Bool)

(assert (=> b!949456 m!1163073))

(declare-fun m!1163075 () Bool)

(assert (=> b!949456 m!1163075))

(assert (=> b!949456 m!1163073))

(declare-fun m!1163077 () Bool)

(assert (=> b!949456 m!1163077))

(declare-fun m!1163079 () Bool)

(assert (=> b!949456 m!1163079))

(declare-fun m!1163081 () Bool)

(assert (=> b!949456 m!1163081))

(declare-fun m!1163083 () Bool)

(assert (=> b!949456 m!1163083))

(check-sat tp_is_empty!4877 (not b!949453) (not b!949451) (not start!84582) (not b!949455) (not b!949450) (not b!949452) (not b!949456) (not b!949454))
(check-sat)
(get-model)

(declare-fun d!283568 () Bool)

(assert (=> d!283568 (= (isEmpty!6096 s!10566) ((_ is Nil!9831) s!10566))))

(assert (=> b!949456 d!283568))

(declare-fun b!949534 () Bool)

(declare-fun res!431587 () Bool)

(declare-fun e!614900 () Bool)

(assert (=> b!949534 (=> (not res!431587) (not e!614900))))

(declare-fun lt!344428 () Option!2206)

(assert (=> b!949534 (= res!431587 (matchR!1155 EmptyExpr!2617 (_1!6390 (get!3303 lt!344428))))))

(declare-fun b!949535 () Bool)

(declare-fun e!614901 () Option!2206)

(assert (=> b!949535 (= e!614901 (Some!2205 (tuple2!11129 Nil!9831 s!10566)))))

(declare-fun b!949537 () Bool)

(declare-fun ++!2627 (List!9847 List!9847) List!9847)

(assert (=> b!949537 (= e!614900 (= (++!2627 (_1!6390 (get!3303 lt!344428)) (_2!6390 (get!3303 lt!344428))) s!10566))))

(declare-fun b!949538 () Bool)

(declare-fun e!614904 () Option!2206)

(assert (=> b!949538 (= e!614901 e!614904)))

(declare-fun c!154625 () Bool)

(assert (=> b!949538 (= c!154625 ((_ is Nil!9831) s!10566))))

(declare-fun b!949539 () Bool)

(declare-fun res!431591 () Bool)

(assert (=> b!949539 (=> (not res!431591) (not e!614900))))

(assert (=> b!949539 (= res!431591 (matchR!1155 (regTwo!5746 r!15766) (_2!6390 (get!3303 lt!344428))))))

(declare-fun b!949540 () Bool)

(declare-fun e!614902 () Bool)

(assert (=> b!949540 (= e!614902 (matchR!1155 (regTwo!5746 r!15766) s!10566))))

(declare-fun b!949541 () Bool)

(declare-fun lt!344429 () Unit!14877)

(declare-fun lt!344427 () Unit!14877)

(assert (=> b!949541 (= lt!344429 lt!344427)))

(assert (=> b!949541 (= (++!2627 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (t!100893 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!236 (List!9847 C!5804 List!9847 List!9847) Unit!14877)

(assert (=> b!949541 (= lt!344427 (lemmaMoveElementToOtherListKeepsConcatEq!236 Nil!9831 (h!15232 s!10566) (t!100893 s!10566) s!10566))))

(assert (=> b!949541 (= e!614904 (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (t!100893 s!10566) s!10566))))

(declare-fun b!949542 () Bool)

(assert (=> b!949542 (= e!614904 None!2205)))

(declare-fun d!283574 () Bool)

(declare-fun e!614903 () Bool)

(assert (=> d!283574 e!614903))

(declare-fun res!431590 () Bool)

(assert (=> d!283574 (=> res!431590 e!614903)))

(assert (=> d!283574 (= res!431590 e!614900)))

(declare-fun res!431589 () Bool)

(assert (=> d!283574 (=> (not res!431589) (not e!614900))))

(assert (=> d!283574 (= res!431589 (isDefined!1848 lt!344428))))

(assert (=> d!283574 (= lt!344428 e!614901)))

(declare-fun c!154626 () Bool)

(assert (=> d!283574 (= c!154626 e!614902)))

(declare-fun res!431588 () Bool)

(assert (=> d!283574 (=> (not res!431588) (not e!614902))))

(assert (=> d!283574 (= res!431588 (matchR!1155 EmptyExpr!2617 Nil!9831))))

(assert (=> d!283574 (validRegex!1086 EmptyExpr!2617)))

(assert (=> d!283574 (= (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) Nil!9831 s!10566 s!10566) lt!344428)))

(declare-fun b!949536 () Bool)

(assert (=> b!949536 (= e!614903 (not (isDefined!1848 lt!344428)))))

(assert (= (and d!283574 res!431588) b!949540))

(assert (= (and d!283574 c!154626) b!949535))

(assert (= (and d!283574 (not c!154626)) b!949538))

(assert (= (and b!949538 c!154625) b!949542))

(assert (= (and b!949538 (not c!154625)) b!949541))

(assert (= (and d!283574 res!431589) b!949534))

(assert (= (and b!949534 res!431587) b!949539))

(assert (= (and b!949539 res!431591) b!949537))

(assert (= (and d!283574 (not res!431590)) b!949536))

(declare-fun m!1163117 () Bool)

(assert (=> b!949534 m!1163117))

(declare-fun m!1163119 () Bool)

(assert (=> b!949534 m!1163119))

(assert (=> b!949537 m!1163117))

(declare-fun m!1163121 () Bool)

(assert (=> b!949537 m!1163121))

(declare-fun m!1163123 () Bool)

(assert (=> d!283574 m!1163123))

(declare-fun m!1163125 () Bool)

(assert (=> d!283574 m!1163125))

(declare-fun m!1163127 () Bool)

(assert (=> d!283574 m!1163127))

(assert (=> b!949539 m!1163117))

(declare-fun m!1163129 () Bool)

(assert (=> b!949539 m!1163129))

(declare-fun m!1163131 () Bool)

(assert (=> b!949540 m!1163131))

(assert (=> b!949536 m!1163123))

(declare-fun m!1163133 () Bool)

(assert (=> b!949541 m!1163133))

(assert (=> b!949541 m!1163133))

(declare-fun m!1163135 () Bool)

(assert (=> b!949541 m!1163135))

(declare-fun m!1163137 () Bool)

(assert (=> b!949541 m!1163137))

(assert (=> b!949541 m!1163133))

(declare-fun m!1163139 () Bool)

(assert (=> b!949541 m!1163139))

(assert (=> b!949456 d!283574))

(declare-fun bs!239856 () Bool)

(declare-fun d!283586 () Bool)

(assert (= bs!239856 (and d!283586 b!949456)))

(declare-fun lambda!32560 () Int)

(assert (=> bs!239856 (= lambda!32560 lambda!32547)))

(assert (=> bs!239856 (not (= lambda!32560 lambda!32548))))

(assert (=> d!283586 true))

(assert (=> d!283586 true))

(assert (=> d!283586 true))

(assert (=> d!283586 (= (isDefined!1848 (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) Nil!9831 s!10566 s!10566)) (Exists!368 lambda!32560))))

(declare-fun lt!344438 () Unit!14877)

(declare-fun choose!5916 (Regex!2617 Regex!2617 List!9847) Unit!14877)

(assert (=> d!283586 (= lt!344438 (choose!5916 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566))))

(assert (=> d!283586 (validRegex!1086 EmptyExpr!2617)))

(assert (=> d!283586 (= (lemmaFindConcatSeparationEquivalentToExists!312 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566) lt!344438)))

(declare-fun bs!239857 () Bool)

(assert (= bs!239857 d!283586))

(declare-fun m!1163157 () Bool)

(assert (=> bs!239857 m!1163157))

(assert (=> bs!239857 m!1163083))

(declare-fun m!1163159 () Bool)

(assert (=> bs!239857 m!1163159))

(assert (=> bs!239857 m!1163083))

(declare-fun m!1163161 () Bool)

(assert (=> bs!239857 m!1163161))

(assert (=> bs!239857 m!1163127))

(assert (=> b!949456 d!283586))

(declare-fun bs!239865 () Bool)

(declare-fun d!283596 () Bool)

(assert (= bs!239865 (and d!283596 b!949456)))

(declare-fun lambda!32571 () Int)

(assert (=> bs!239865 (= lambda!32571 lambda!32547)))

(assert (=> bs!239865 (not (= lambda!32571 lambda!32548))))

(declare-fun bs!239866 () Bool)

(assert (= bs!239866 (and d!283596 d!283586)))

(assert (=> bs!239866 (= lambda!32571 lambda!32560)))

(assert (=> d!283596 true))

(assert (=> d!283596 true))

(assert (=> d!283596 true))

(declare-fun lambda!32572 () Int)

(assert (=> bs!239865 (not (= lambda!32572 lambda!32547))))

(assert (=> bs!239865 (= lambda!32572 lambda!32548)))

(assert (=> bs!239866 (not (= lambda!32572 lambda!32560))))

(declare-fun bs!239867 () Bool)

(assert (= bs!239867 d!283596))

(assert (=> bs!239867 (not (= lambda!32572 lambda!32571))))

(assert (=> d!283596 true))

(assert (=> d!283596 true))

(assert (=> d!283596 true))

(assert (=> d!283596 (= (Exists!368 lambda!32571) (Exists!368 lambda!32572))))

(declare-fun lt!344441 () Unit!14877)

(declare-fun choose!5917 (Regex!2617 Regex!2617 List!9847) Unit!14877)

(assert (=> d!283596 (= lt!344441 (choose!5917 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566))))

(assert (=> d!283596 (validRegex!1086 EmptyExpr!2617)))

(assert (=> d!283596 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!188 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566) lt!344441)))

(declare-fun m!1163169 () Bool)

(assert (=> bs!239867 m!1163169))

(declare-fun m!1163171 () Bool)

(assert (=> bs!239867 m!1163171))

(declare-fun m!1163173 () Bool)

(assert (=> bs!239867 m!1163173))

(assert (=> bs!239867 m!1163127))

(assert (=> b!949456 d!283596))

(declare-fun d!283600 () Bool)

(declare-fun isEmpty!6098 (Option!2206) Bool)

(assert (=> d!283600 (= (isDefined!1848 lt!344411) (not (isEmpty!6098 lt!344411)))))

(declare-fun bs!239868 () Bool)

(assert (= bs!239868 d!283600))

(declare-fun m!1163175 () Bool)

(assert (=> bs!239868 m!1163175))

(assert (=> b!949456 d!283600))

(declare-fun d!283602 () Bool)

(declare-fun choose!5918 (Int) Bool)

(assert (=> d!283602 (= (Exists!368 lambda!32548) (choose!5918 lambda!32548))))

(declare-fun bs!239869 () Bool)

(assert (= bs!239869 d!283602))

(declare-fun m!1163177 () Bool)

(assert (=> bs!239869 m!1163177))

(assert (=> b!949456 d!283602))

(declare-fun d!283604 () Bool)

(assert (=> d!283604 (= (Exists!368 lambda!32547) (choose!5918 lambda!32547))))

(declare-fun bs!239870 () Bool)

(assert (= bs!239870 d!283604))

(declare-fun m!1163179 () Bool)

(assert (=> bs!239870 m!1163179))

(assert (=> b!949456 d!283604))

(declare-fun bs!239872 () Bool)

(declare-fun b!949721 () Bool)

(assert (= bs!239872 (and b!949721 b!949456)))

(declare-fun lambda!32577 () Int)

(assert (=> bs!239872 (not (= lambda!32577 lambda!32547))))

(declare-fun bs!239873 () Bool)

(assert (= bs!239873 (and b!949721 d!283596)))

(assert (=> bs!239873 (not (= lambda!32577 lambda!32571))))

(declare-fun bs!239874 () Bool)

(assert (= bs!239874 (and b!949721 d!283586)))

(assert (=> bs!239874 (not (= lambda!32577 lambda!32560))))

(assert (=> bs!239873 (not (= lambda!32577 lambda!32572))))

(assert (=> bs!239872 (not (= lambda!32577 lambda!32548))))

(assert (=> b!949721 true))

(assert (=> b!949721 true))

(declare-fun bs!239875 () Bool)

(declare-fun b!949727 () Bool)

(assert (= bs!239875 (and b!949727 b!949456)))

(declare-fun lambda!32578 () Int)

(assert (=> bs!239875 (not (= lambda!32578 lambda!32547))))

(declare-fun bs!239876 () Bool)

(assert (= bs!239876 (and b!949727 b!949721)))

(assert (=> bs!239876 (not (= lambda!32578 lambda!32577))))

(declare-fun bs!239877 () Bool)

(assert (= bs!239877 (and b!949727 d!283596)))

(assert (=> bs!239877 (not (= lambda!32578 lambda!32571))))

(declare-fun bs!239878 () Bool)

(assert (= bs!239878 (and b!949727 d!283586)))

(assert (=> bs!239878 (not (= lambda!32578 lambda!32560))))

(assert (=> bs!239877 (= (= (regOne!5746 r!15766) EmptyExpr!2617) (= lambda!32578 lambda!32572))))

(assert (=> bs!239875 (= (= (regOne!5746 r!15766) EmptyExpr!2617) (= lambda!32578 lambda!32548))))

(assert (=> b!949727 true))

(assert (=> b!949727 true))

(declare-fun b!949719 () Bool)

(declare-fun e!614993 () Bool)

(assert (=> b!949719 (= e!614993 (matchRSpec!418 (regTwo!5747 r!15766) s!10566))))

(declare-fun d!283606 () Bool)

(declare-fun c!154657 () Bool)

(assert (=> d!283606 (= c!154657 ((_ is EmptyExpr!2617) r!15766))))

(declare-fun e!614992 () Bool)

(assert (=> d!283606 (= (matchRSpec!418 r!15766 s!10566) e!614992)))

(declare-fun b!949720 () Bool)

(declare-fun res!431676 () Bool)

(declare-fun e!614994 () Bool)

(assert (=> b!949720 (=> res!431676 e!614994)))

(declare-fun call!59543 () Bool)

(assert (=> b!949720 (= res!431676 call!59543)))

(declare-fun e!614991 () Bool)

(assert (=> b!949720 (= e!614991 e!614994)))

(declare-fun call!59542 () Bool)

(assert (=> b!949721 (= e!614994 call!59542)))

(declare-fun bm!59537 () Bool)

(assert (=> bm!59537 (= call!59543 (isEmpty!6096 s!10566))))

(declare-fun b!949722 () Bool)

(declare-fun e!614996 () Bool)

(assert (=> b!949722 (= e!614996 (= s!10566 (Cons!9831 (c!154608 r!15766) Nil!9831)))))

(declare-fun b!949723 () Bool)

(declare-fun e!614995 () Bool)

(assert (=> b!949723 (= e!614995 e!614993)))

(declare-fun res!431677 () Bool)

(assert (=> b!949723 (= res!431677 (matchRSpec!418 (regOne!5747 r!15766) s!10566))))

(assert (=> b!949723 (=> res!431677 e!614993)))

(declare-fun b!949724 () Bool)

(declare-fun c!154656 () Bool)

(assert (=> b!949724 (= c!154656 ((_ is Union!2617) r!15766))))

(assert (=> b!949724 (= e!614996 e!614995)))

(declare-fun b!949725 () Bool)

(declare-fun e!614997 () Bool)

(assert (=> b!949725 (= e!614992 e!614997)))

(declare-fun res!431675 () Bool)

(assert (=> b!949725 (= res!431675 (not ((_ is EmptyLang!2617) r!15766)))))

(assert (=> b!949725 (=> (not res!431675) (not e!614997))))

(declare-fun b!949726 () Bool)

(assert (=> b!949726 (= e!614992 call!59543)))

(assert (=> b!949727 (= e!614991 call!59542)))

(declare-fun b!949728 () Bool)

(declare-fun c!154658 () Bool)

(assert (=> b!949728 (= c!154658 ((_ is ElementMatch!2617) r!15766))))

(assert (=> b!949728 (= e!614997 e!614996)))

(declare-fun c!154659 () Bool)

(declare-fun bm!59538 () Bool)

(assert (=> bm!59538 (= call!59542 (Exists!368 (ite c!154659 lambda!32577 lambda!32578)))))

(declare-fun b!949729 () Bool)

(assert (=> b!949729 (= e!614995 e!614991)))

(assert (=> b!949729 (= c!154659 ((_ is Star!2617) r!15766))))

(assert (= (and d!283606 c!154657) b!949726))

(assert (= (and d!283606 (not c!154657)) b!949725))

(assert (= (and b!949725 res!431675) b!949728))

(assert (= (and b!949728 c!154658) b!949722))

(assert (= (and b!949728 (not c!154658)) b!949724))

(assert (= (and b!949724 c!154656) b!949723))

(assert (= (and b!949724 (not c!154656)) b!949729))

(assert (= (and b!949723 (not res!431677)) b!949719))

(assert (= (and b!949729 c!154659) b!949720))

(assert (= (and b!949729 (not c!154659)) b!949727))

(assert (= (and b!949720 (not res!431676)) b!949721))

(assert (= (or b!949721 b!949727) bm!59538))

(assert (= (or b!949726 b!949720) bm!59537))

(declare-fun m!1163195 () Bool)

(assert (=> b!949719 m!1163195))

(assert (=> bm!59537 m!1163079))

(declare-fun m!1163197 () Bool)

(assert (=> b!949723 m!1163197))

(declare-fun m!1163199 () Bool)

(assert (=> bm!59538 m!1163199))

(assert (=> b!949451 d!283606))

(declare-fun b!949758 () Bool)

(declare-fun res!431701 () Bool)

(declare-fun e!615018 () Bool)

(assert (=> b!949758 (=> res!431701 e!615018)))

(declare-fun tail!1296 (List!9847) List!9847)

(assert (=> b!949758 (= res!431701 (not (isEmpty!6096 (tail!1296 s!10566))))))

(declare-fun b!949759 () Bool)

(declare-fun e!615016 () Bool)

(declare-fun head!1734 (List!9847) C!5804)

(assert (=> b!949759 (= e!615016 (= (head!1734 s!10566) (c!154608 r!15766)))))

(declare-fun b!949760 () Bool)

(declare-fun e!615014 () Bool)

(declare-fun e!615012 () Bool)

(assert (=> b!949760 (= e!615014 e!615012)))

(declare-fun c!154666 () Bool)

(assert (=> b!949760 (= c!154666 ((_ is EmptyLang!2617) r!15766))))

(declare-fun b!949761 () Bool)

(declare-fun res!431696 () Bool)

(assert (=> b!949761 (=> (not res!431696) (not e!615016))))

(declare-fun call!59546 () Bool)

(assert (=> b!949761 (= res!431696 (not call!59546))))

(declare-fun bm!59541 () Bool)

(assert (=> bm!59541 (= call!59546 (isEmpty!6096 s!10566))))

(declare-fun b!949762 () Bool)

(declare-fun e!615013 () Bool)

(declare-fun derivativeStep!581 (Regex!2617 C!5804) Regex!2617)

(assert (=> b!949762 (= e!615013 (matchR!1155 (derivativeStep!581 r!15766 (head!1734 s!10566)) (tail!1296 s!10566)))))

(declare-fun b!949763 () Bool)

(declare-fun res!431699 () Bool)

(assert (=> b!949763 (=> (not res!431699) (not e!615016))))

(assert (=> b!949763 (= res!431699 (isEmpty!6096 (tail!1296 s!10566)))))

(declare-fun b!949764 () Bool)

(assert (=> b!949764 (= e!615018 (not (= (head!1734 s!10566) (c!154608 r!15766))))))

(declare-fun d!283610 () Bool)

(assert (=> d!283610 e!615014))

(declare-fun c!154667 () Bool)

(assert (=> d!283610 (= c!154667 ((_ is EmptyExpr!2617) r!15766))))

(declare-fun lt!344450 () Bool)

(assert (=> d!283610 (= lt!344450 e!615013)))

(declare-fun c!154668 () Bool)

(assert (=> d!283610 (= c!154668 (isEmpty!6096 s!10566))))

(assert (=> d!283610 (validRegex!1086 r!15766)))

(assert (=> d!283610 (= (matchR!1155 r!15766 s!10566) lt!344450)))

(declare-fun b!949765 () Bool)

(declare-fun e!615015 () Bool)

(declare-fun e!615017 () Bool)

(assert (=> b!949765 (= e!615015 e!615017)))

(declare-fun res!431694 () Bool)

(assert (=> b!949765 (=> (not res!431694) (not e!615017))))

(assert (=> b!949765 (= res!431694 (not lt!344450))))

(declare-fun b!949766 () Bool)

(assert (=> b!949766 (= e!615017 e!615018)))

(declare-fun res!431698 () Bool)

(assert (=> b!949766 (=> res!431698 e!615018)))

(assert (=> b!949766 (= res!431698 call!59546)))

(declare-fun b!949767 () Bool)

(declare-fun res!431695 () Bool)

(assert (=> b!949767 (=> res!431695 e!615015)))

(assert (=> b!949767 (= res!431695 (not ((_ is ElementMatch!2617) r!15766)))))

(assert (=> b!949767 (= e!615012 e!615015)))

(declare-fun b!949768 () Bool)

(declare-fun res!431700 () Bool)

(assert (=> b!949768 (=> res!431700 e!615015)))

(assert (=> b!949768 (= res!431700 e!615016)))

(declare-fun res!431697 () Bool)

(assert (=> b!949768 (=> (not res!431697) (not e!615016))))

(assert (=> b!949768 (= res!431697 lt!344450)))

(declare-fun b!949769 () Bool)

(assert (=> b!949769 (= e!615014 (= lt!344450 call!59546))))

(declare-fun b!949770 () Bool)

(assert (=> b!949770 (= e!615012 (not lt!344450))))

(declare-fun b!949771 () Bool)

(declare-fun nullable!772 (Regex!2617) Bool)

(assert (=> b!949771 (= e!615013 (nullable!772 r!15766))))

(assert (= (and d!283610 c!154668) b!949771))

(assert (= (and d!283610 (not c!154668)) b!949762))

(assert (= (and d!283610 c!154667) b!949769))

(assert (= (and d!283610 (not c!154667)) b!949760))

(assert (= (and b!949760 c!154666) b!949770))

(assert (= (and b!949760 (not c!154666)) b!949767))

(assert (= (and b!949767 (not res!431695)) b!949768))

(assert (= (and b!949768 res!431697) b!949761))

(assert (= (and b!949761 res!431696) b!949763))

(assert (= (and b!949763 res!431699) b!949759))

(assert (= (and b!949768 (not res!431700)) b!949765))

(assert (= (and b!949765 res!431694) b!949766))

(assert (= (and b!949766 (not res!431698)) b!949758))

(assert (= (and b!949758 (not res!431701)) b!949764))

(assert (= (or b!949769 b!949761 b!949766) bm!59541))

(assert (=> d!283610 m!1163079))

(assert (=> d!283610 m!1163069))

(declare-fun m!1163201 () Bool)

(assert (=> b!949763 m!1163201))

(assert (=> b!949763 m!1163201))

(declare-fun m!1163203 () Bool)

(assert (=> b!949763 m!1163203))

(assert (=> bm!59541 m!1163079))

(declare-fun m!1163205 () Bool)

(assert (=> b!949762 m!1163205))

(assert (=> b!949762 m!1163205))

(declare-fun m!1163207 () Bool)

(assert (=> b!949762 m!1163207))

(assert (=> b!949762 m!1163201))

(assert (=> b!949762 m!1163207))

(assert (=> b!949762 m!1163201))

(declare-fun m!1163209 () Bool)

(assert (=> b!949762 m!1163209))

(assert (=> b!949759 m!1163205))

(declare-fun m!1163211 () Bool)

(assert (=> b!949771 m!1163211))

(assert (=> b!949758 m!1163201))

(assert (=> b!949758 m!1163201))

(assert (=> b!949758 m!1163203))

(assert (=> b!949764 m!1163205))

(assert (=> b!949451 d!283610))

(declare-fun d!283612 () Bool)

(assert (=> d!283612 (= (matchR!1155 r!15766 s!10566) (matchRSpec!418 r!15766 s!10566))))

(declare-fun lt!344453 () Unit!14877)

(declare-fun choose!5919 (Regex!2617 List!9847) Unit!14877)

(assert (=> d!283612 (= lt!344453 (choose!5919 r!15766 s!10566))))

(assert (=> d!283612 (validRegex!1086 r!15766)))

(assert (=> d!283612 (= (mainMatchTheorem!418 r!15766 s!10566) lt!344453)))

(declare-fun bs!239879 () Bool)

(assert (= bs!239879 d!283612))

(assert (=> bs!239879 m!1163061))

(assert (=> bs!239879 m!1163059))

(declare-fun m!1163213 () Bool)

(assert (=> bs!239879 m!1163213))

(assert (=> bs!239879 m!1163069))

(assert (=> b!949451 d!283612))

(declare-fun d!283614 () Bool)

(assert (=> d!283614 (= (isEmpty!6096 (_1!6390 (get!3303 lt!344411))) ((_ is Nil!9831) (_1!6390 (get!3303 lt!344411))))))

(assert (=> b!949452 d!283614))

(declare-fun d!283616 () Bool)

(assert (=> d!283616 (= (get!3303 lt!344411) (v!19622 lt!344411))))

(assert (=> b!949452 d!283616))

(declare-fun b!949790 () Bool)

(declare-fun e!615036 () Bool)

(declare-fun call!59555 () Bool)

(assert (=> b!949790 (= e!615036 call!59555)))

(declare-fun d!283618 () Bool)

(declare-fun res!431716 () Bool)

(declare-fun e!615038 () Bool)

(assert (=> d!283618 (=> res!431716 e!615038)))

(assert (=> d!283618 (= res!431716 ((_ is ElementMatch!2617) r!15766))))

(assert (=> d!283618 (= (validRegex!1086 r!15766) e!615038)))

(declare-fun bm!59548 () Bool)

(declare-fun call!59554 () Bool)

(assert (=> bm!59548 (= call!59555 call!59554)))

(declare-fun b!949791 () Bool)

(declare-fun e!615034 () Bool)

(assert (=> b!949791 (= e!615038 e!615034)))

(declare-fun c!154674 () Bool)

(assert (=> b!949791 (= c!154674 ((_ is Star!2617) r!15766))))

(declare-fun b!949792 () Bool)

(declare-fun e!615033 () Bool)

(assert (=> b!949792 (= e!615034 e!615033)))

(declare-fun c!154673 () Bool)

(assert (=> b!949792 (= c!154673 ((_ is Union!2617) r!15766))))

(declare-fun bm!59549 () Bool)

(assert (=> bm!59549 (= call!59554 (validRegex!1086 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))))))

(declare-fun b!949793 () Bool)

(declare-fun res!431713 () Bool)

(assert (=> b!949793 (=> (not res!431713) (not e!615036))))

(declare-fun call!59553 () Bool)

(assert (=> b!949793 (= res!431713 call!59553)))

(assert (=> b!949793 (= e!615033 e!615036)))

(declare-fun b!949794 () Bool)

(declare-fun res!431714 () Bool)

(declare-fun e!615037 () Bool)

(assert (=> b!949794 (=> res!431714 e!615037)))

(assert (=> b!949794 (= res!431714 (not ((_ is Concat!4450) r!15766)))))

(assert (=> b!949794 (= e!615033 e!615037)))

(declare-fun b!949795 () Bool)

(declare-fun e!615039 () Bool)

(assert (=> b!949795 (= e!615039 call!59554)))

(declare-fun b!949796 () Bool)

(declare-fun e!615035 () Bool)

(assert (=> b!949796 (= e!615035 call!59555)))

(declare-fun b!949797 () Bool)

(assert (=> b!949797 (= e!615037 e!615035)))

(declare-fun res!431712 () Bool)

(assert (=> b!949797 (=> (not res!431712) (not e!615035))))

(assert (=> b!949797 (= res!431712 call!59553)))

(declare-fun bm!59550 () Bool)

(assert (=> bm!59550 (= call!59553 (validRegex!1086 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))))))

(declare-fun b!949798 () Bool)

(assert (=> b!949798 (= e!615034 e!615039)))

(declare-fun res!431715 () Bool)

(assert (=> b!949798 (= res!431715 (not (nullable!772 (reg!2946 r!15766))))))

(assert (=> b!949798 (=> (not res!431715) (not e!615039))))

(assert (= (and d!283618 (not res!431716)) b!949791))

(assert (= (and b!949791 c!154674) b!949798))

(assert (= (and b!949791 (not c!154674)) b!949792))

(assert (= (and b!949798 res!431715) b!949795))

(assert (= (and b!949792 c!154673) b!949793))

(assert (= (and b!949792 (not c!154673)) b!949794))

(assert (= (and b!949793 res!431713) b!949790))

(assert (= (and b!949794 (not res!431714)) b!949797))

(assert (= (and b!949797 res!431712) b!949796))

(assert (= (or b!949790 b!949796) bm!59548))

(assert (= (or b!949793 b!949797) bm!59550))

(assert (= (or b!949795 bm!59548) bm!59549))

(declare-fun m!1163215 () Bool)

(assert (=> bm!59549 m!1163215))

(declare-fun m!1163217 () Bool)

(assert (=> bm!59550 m!1163217))

(declare-fun m!1163219 () Bool)

(assert (=> b!949798 m!1163219))

(assert (=> start!84582 d!283618))

(declare-fun b!949811 () Bool)

(declare-fun e!615042 () Bool)

(declare-fun tp!292664 () Bool)

(assert (=> b!949811 (= e!615042 tp!292664)))

(declare-fun b!949810 () Bool)

(declare-fun tp!292661 () Bool)

(declare-fun tp!292662 () Bool)

(assert (=> b!949810 (= e!615042 (and tp!292661 tp!292662))))

(declare-fun b!949809 () Bool)

(assert (=> b!949809 (= e!615042 tp_is_empty!4877)))

(assert (=> b!949454 (= tp!292607 e!615042)))

(declare-fun b!949812 () Bool)

(declare-fun tp!292665 () Bool)

(declare-fun tp!292663 () Bool)

(assert (=> b!949812 (= e!615042 (and tp!292665 tp!292663))))

(assert (= (and b!949454 ((_ is ElementMatch!2617) (regOne!5746 r!15766))) b!949809))

(assert (= (and b!949454 ((_ is Concat!4450) (regOne!5746 r!15766))) b!949810))

(assert (= (and b!949454 ((_ is Star!2617) (regOne!5746 r!15766))) b!949811))

(assert (= (and b!949454 ((_ is Union!2617) (regOne!5746 r!15766))) b!949812))

(declare-fun b!949815 () Bool)

(declare-fun e!615043 () Bool)

(declare-fun tp!292669 () Bool)

(assert (=> b!949815 (= e!615043 tp!292669)))

(declare-fun b!949814 () Bool)

(declare-fun tp!292666 () Bool)

(declare-fun tp!292667 () Bool)

(assert (=> b!949814 (= e!615043 (and tp!292666 tp!292667))))

(declare-fun b!949813 () Bool)

(assert (=> b!949813 (= e!615043 tp_is_empty!4877)))

(assert (=> b!949454 (= tp!292612 e!615043)))

(declare-fun b!949816 () Bool)

(declare-fun tp!292670 () Bool)

(declare-fun tp!292668 () Bool)

(assert (=> b!949816 (= e!615043 (and tp!292670 tp!292668))))

(assert (= (and b!949454 ((_ is ElementMatch!2617) (regTwo!5746 r!15766))) b!949813))

(assert (= (and b!949454 ((_ is Concat!4450) (regTwo!5746 r!15766))) b!949814))

(assert (= (and b!949454 ((_ is Star!2617) (regTwo!5746 r!15766))) b!949815))

(assert (= (and b!949454 ((_ is Union!2617) (regTwo!5746 r!15766))) b!949816))

(declare-fun b!949821 () Bool)

(declare-fun e!615046 () Bool)

(declare-fun tp!292673 () Bool)

(assert (=> b!949821 (= e!615046 (and tp_is_empty!4877 tp!292673))))

(assert (=> b!949455 (= tp!292610 e!615046)))

(assert (= (and b!949455 ((_ is Cons!9831) (t!100893 s!10566))) b!949821))

(declare-fun b!949824 () Bool)

(declare-fun e!615047 () Bool)

(declare-fun tp!292677 () Bool)

(assert (=> b!949824 (= e!615047 tp!292677)))

(declare-fun b!949823 () Bool)

(declare-fun tp!292674 () Bool)

(declare-fun tp!292675 () Bool)

(assert (=> b!949823 (= e!615047 (and tp!292674 tp!292675))))

(declare-fun b!949822 () Bool)

(assert (=> b!949822 (= e!615047 tp_is_empty!4877)))

(assert (=> b!949450 (= tp!292609 e!615047)))

(declare-fun b!949825 () Bool)

(declare-fun tp!292678 () Bool)

(declare-fun tp!292676 () Bool)

(assert (=> b!949825 (= e!615047 (and tp!292678 tp!292676))))

(assert (= (and b!949450 ((_ is ElementMatch!2617) (reg!2946 r!15766))) b!949822))

(assert (= (and b!949450 ((_ is Concat!4450) (reg!2946 r!15766))) b!949823))

(assert (= (and b!949450 ((_ is Star!2617) (reg!2946 r!15766))) b!949824))

(assert (= (and b!949450 ((_ is Union!2617) (reg!2946 r!15766))) b!949825))

(declare-fun b!949828 () Bool)

(declare-fun e!615048 () Bool)

(declare-fun tp!292682 () Bool)

(assert (=> b!949828 (= e!615048 tp!292682)))

(declare-fun b!949827 () Bool)

(declare-fun tp!292679 () Bool)

(declare-fun tp!292680 () Bool)

(assert (=> b!949827 (= e!615048 (and tp!292679 tp!292680))))

(declare-fun b!949826 () Bool)

(assert (=> b!949826 (= e!615048 tp_is_empty!4877)))

(assert (=> b!949453 (= tp!292608 e!615048)))

(declare-fun b!949829 () Bool)

(declare-fun tp!292683 () Bool)

(declare-fun tp!292681 () Bool)

(assert (=> b!949829 (= e!615048 (and tp!292683 tp!292681))))

(assert (= (and b!949453 ((_ is ElementMatch!2617) (regOne!5747 r!15766))) b!949826))

(assert (= (and b!949453 ((_ is Concat!4450) (regOne!5747 r!15766))) b!949827))

(assert (= (and b!949453 ((_ is Star!2617) (regOne!5747 r!15766))) b!949828))

(assert (= (and b!949453 ((_ is Union!2617) (regOne!5747 r!15766))) b!949829))

(declare-fun b!949832 () Bool)

(declare-fun e!615049 () Bool)

(declare-fun tp!292687 () Bool)

(assert (=> b!949832 (= e!615049 tp!292687)))

(declare-fun b!949831 () Bool)

(declare-fun tp!292684 () Bool)

(declare-fun tp!292685 () Bool)

(assert (=> b!949831 (= e!615049 (and tp!292684 tp!292685))))

(declare-fun b!949830 () Bool)

(assert (=> b!949830 (= e!615049 tp_is_empty!4877)))

(assert (=> b!949453 (= tp!292611 e!615049)))

(declare-fun b!949833 () Bool)

(declare-fun tp!292688 () Bool)

(declare-fun tp!292686 () Bool)

(assert (=> b!949833 (= e!615049 (and tp!292688 tp!292686))))

(assert (= (and b!949453 ((_ is ElementMatch!2617) (regTwo!5747 r!15766))) b!949830))

(assert (= (and b!949453 ((_ is Concat!4450) (regTwo!5747 r!15766))) b!949831))

(assert (= (and b!949453 ((_ is Star!2617) (regTwo!5747 r!15766))) b!949832))

(assert (= (and b!949453 ((_ is Union!2617) (regTwo!5747 r!15766))) b!949833))

(check-sat (not b!949771) tp_is_empty!4877 (not d!283610) (not b!949539) (not b!949763) (not b!949828) (not b!949812) (not b!949764) (not b!949816) (not bm!59538) (not b!949541) (not b!949832) (not d!283600) (not b!949798) (not b!949723) (not d!283602) (not b!949540) (not d!283604) (not bm!59541) (not b!949821) (not d!283586) (not b!949762) (not d!283596) (not b!949831) (not b!949536) (not b!949829) (not b!949814) (not bm!59550) (not d!283612) (not b!949759) (not bm!59549) (not d!283574) (not b!949534) (not b!949815) (not b!949827) (not b!949719) (not b!949537) (not b!949758) (not b!949833) (not b!949823) (not b!949810) (not bm!59537) (not b!949824) (not b!949811) (not b!949825))
(check-sat)
(get-model)

(declare-fun b!950116 () Bool)

(declare-fun res!431811 () Bool)

(declare-fun e!615181 () Bool)

(assert (=> b!950116 (=> res!431811 e!615181)))

(assert (=> b!950116 (= res!431811 (not (isEmpty!6096 (tail!1296 s!10566))))))

(declare-fun b!950117 () Bool)

(declare-fun e!615179 () Bool)

(assert (=> b!950117 (= e!615179 (= (head!1734 s!10566) (c!154608 (regTwo!5746 r!15766))))))

(declare-fun b!950118 () Bool)

(declare-fun e!615177 () Bool)

(declare-fun e!615175 () Bool)

(assert (=> b!950118 (= e!615177 e!615175)))

(declare-fun c!154724 () Bool)

(assert (=> b!950118 (= c!154724 ((_ is EmptyLang!2617) (regTwo!5746 r!15766)))))

(declare-fun b!950119 () Bool)

(declare-fun res!431806 () Bool)

(assert (=> b!950119 (=> (not res!431806) (not e!615179))))

(declare-fun call!59583 () Bool)

(assert (=> b!950119 (= res!431806 (not call!59583))))

(declare-fun bm!59578 () Bool)

(assert (=> bm!59578 (= call!59583 (isEmpty!6096 s!10566))))

(declare-fun b!950120 () Bool)

(declare-fun e!615176 () Bool)

(assert (=> b!950120 (= e!615176 (matchR!1155 (derivativeStep!581 (regTwo!5746 r!15766) (head!1734 s!10566)) (tail!1296 s!10566)))))

(declare-fun b!950121 () Bool)

(declare-fun res!431809 () Bool)

(assert (=> b!950121 (=> (not res!431809) (not e!615179))))

(assert (=> b!950121 (= res!431809 (isEmpty!6096 (tail!1296 s!10566)))))

(declare-fun b!950122 () Bool)

(assert (=> b!950122 (= e!615181 (not (= (head!1734 s!10566) (c!154608 (regTwo!5746 r!15766)))))))

(declare-fun d!283688 () Bool)

(assert (=> d!283688 e!615177))

(declare-fun c!154725 () Bool)

(assert (=> d!283688 (= c!154725 ((_ is EmptyExpr!2617) (regTwo!5746 r!15766)))))

(declare-fun lt!344473 () Bool)

(assert (=> d!283688 (= lt!344473 e!615176)))

(declare-fun c!154726 () Bool)

(assert (=> d!283688 (= c!154726 (isEmpty!6096 s!10566))))

(assert (=> d!283688 (validRegex!1086 (regTwo!5746 r!15766))))

(assert (=> d!283688 (= (matchR!1155 (regTwo!5746 r!15766) s!10566) lt!344473)))

(declare-fun b!950123 () Bool)

(declare-fun e!615178 () Bool)

(declare-fun e!615180 () Bool)

(assert (=> b!950123 (= e!615178 e!615180)))

(declare-fun res!431804 () Bool)

(assert (=> b!950123 (=> (not res!431804) (not e!615180))))

(assert (=> b!950123 (= res!431804 (not lt!344473))))

(declare-fun b!950124 () Bool)

(assert (=> b!950124 (= e!615180 e!615181)))

(declare-fun res!431808 () Bool)

(assert (=> b!950124 (=> res!431808 e!615181)))

(assert (=> b!950124 (= res!431808 call!59583)))

(declare-fun b!950125 () Bool)

(declare-fun res!431805 () Bool)

(assert (=> b!950125 (=> res!431805 e!615178)))

(assert (=> b!950125 (= res!431805 (not ((_ is ElementMatch!2617) (regTwo!5746 r!15766))))))

(assert (=> b!950125 (= e!615175 e!615178)))

(declare-fun b!950126 () Bool)

(declare-fun res!431810 () Bool)

(assert (=> b!950126 (=> res!431810 e!615178)))

(assert (=> b!950126 (= res!431810 e!615179)))

(declare-fun res!431807 () Bool)

(assert (=> b!950126 (=> (not res!431807) (not e!615179))))

(assert (=> b!950126 (= res!431807 lt!344473)))

(declare-fun b!950127 () Bool)

(assert (=> b!950127 (= e!615177 (= lt!344473 call!59583))))

(declare-fun b!950128 () Bool)

(assert (=> b!950128 (= e!615175 (not lt!344473))))

(declare-fun b!950129 () Bool)

(assert (=> b!950129 (= e!615176 (nullable!772 (regTwo!5746 r!15766)))))

(assert (= (and d!283688 c!154726) b!950129))

(assert (= (and d!283688 (not c!154726)) b!950120))

(assert (= (and d!283688 c!154725) b!950127))

(assert (= (and d!283688 (not c!154725)) b!950118))

(assert (= (and b!950118 c!154724) b!950128))

(assert (= (and b!950118 (not c!154724)) b!950125))

(assert (= (and b!950125 (not res!431805)) b!950126))

(assert (= (and b!950126 res!431807) b!950119))

(assert (= (and b!950119 res!431806) b!950121))

(assert (= (and b!950121 res!431809) b!950117))

(assert (= (and b!950126 (not res!431810)) b!950123))

(assert (= (and b!950123 res!431804) b!950124))

(assert (= (and b!950124 (not res!431808)) b!950116))

(assert (= (and b!950116 (not res!431811)) b!950122))

(assert (= (or b!950127 b!950119 b!950124) bm!59578))

(assert (=> d!283688 m!1163079))

(declare-fun m!1163403 () Bool)

(assert (=> d!283688 m!1163403))

(assert (=> b!950121 m!1163201))

(assert (=> b!950121 m!1163201))

(assert (=> b!950121 m!1163203))

(assert (=> bm!59578 m!1163079))

(assert (=> b!950120 m!1163205))

(assert (=> b!950120 m!1163205))

(declare-fun m!1163405 () Bool)

(assert (=> b!950120 m!1163405))

(assert (=> b!950120 m!1163201))

(assert (=> b!950120 m!1163405))

(assert (=> b!950120 m!1163201))

(declare-fun m!1163407 () Bool)

(assert (=> b!950120 m!1163407))

(assert (=> b!950117 m!1163205))

(declare-fun m!1163409 () Bool)

(assert (=> b!950129 m!1163409))

(assert (=> b!950116 m!1163201))

(assert (=> b!950116 m!1163201))

(assert (=> b!950116 m!1163203))

(assert (=> b!950122 m!1163205))

(assert (=> b!949540 d!283688))

(declare-fun b!950130 () Bool)

(declare-fun e!615185 () Bool)

(declare-fun call!59586 () Bool)

(assert (=> b!950130 (= e!615185 call!59586)))

(declare-fun d!283690 () Bool)

(declare-fun res!431816 () Bool)

(declare-fun e!615187 () Bool)

(assert (=> d!283690 (=> res!431816 e!615187)))

(assert (=> d!283690 (= res!431816 ((_ is ElementMatch!2617) (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))))))

(assert (=> d!283690 (= (validRegex!1086 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))) e!615187)))

(declare-fun bm!59579 () Bool)

(declare-fun call!59585 () Bool)

(assert (=> bm!59579 (= call!59586 call!59585)))

(declare-fun b!950131 () Bool)

(declare-fun e!615183 () Bool)

(assert (=> b!950131 (= e!615187 e!615183)))

(declare-fun c!154728 () Bool)

(assert (=> b!950131 (= c!154728 ((_ is Star!2617) (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))))))

(declare-fun b!950132 () Bool)

(declare-fun e!615182 () Bool)

(assert (=> b!950132 (= e!615183 e!615182)))

(declare-fun c!154727 () Bool)

(assert (=> b!950132 (= c!154727 ((_ is Union!2617) (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))))))

(declare-fun bm!59580 () Bool)

(assert (=> bm!59580 (= call!59585 (validRegex!1086 (ite c!154728 (reg!2946 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))) (ite c!154727 (regTwo!5747 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))) (regTwo!5746 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766)))))))))

(declare-fun b!950133 () Bool)

(declare-fun res!431813 () Bool)

(assert (=> b!950133 (=> (not res!431813) (not e!615185))))

(declare-fun call!59584 () Bool)

(assert (=> b!950133 (= res!431813 call!59584)))

(assert (=> b!950133 (= e!615182 e!615185)))

(declare-fun b!950134 () Bool)

(declare-fun res!431814 () Bool)

(declare-fun e!615186 () Bool)

(assert (=> b!950134 (=> res!431814 e!615186)))

(assert (=> b!950134 (= res!431814 (not ((_ is Concat!4450) (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766)))))))

(assert (=> b!950134 (= e!615182 e!615186)))

(declare-fun b!950135 () Bool)

(declare-fun e!615188 () Bool)

(assert (=> b!950135 (= e!615188 call!59585)))

(declare-fun b!950136 () Bool)

(declare-fun e!615184 () Bool)

(assert (=> b!950136 (= e!615184 call!59586)))

(declare-fun b!950137 () Bool)

(assert (=> b!950137 (= e!615186 e!615184)))

(declare-fun res!431812 () Bool)

(assert (=> b!950137 (=> (not res!431812) (not e!615184))))

(assert (=> b!950137 (= res!431812 call!59584)))

(declare-fun bm!59581 () Bool)

(assert (=> bm!59581 (= call!59584 (validRegex!1086 (ite c!154727 (regOne!5747 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))) (regOne!5746 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))))))))

(declare-fun b!950138 () Bool)

(assert (=> b!950138 (= e!615183 e!615188)))

(declare-fun res!431815 () Bool)

(assert (=> b!950138 (= res!431815 (not (nullable!772 (reg!2946 (ite c!154673 (regOne!5747 r!15766) (regOne!5746 r!15766))))))))

(assert (=> b!950138 (=> (not res!431815) (not e!615188))))

(assert (= (and d!283690 (not res!431816)) b!950131))

(assert (= (and b!950131 c!154728) b!950138))

(assert (= (and b!950131 (not c!154728)) b!950132))

(assert (= (and b!950138 res!431815) b!950135))

(assert (= (and b!950132 c!154727) b!950133))

(assert (= (and b!950132 (not c!154727)) b!950134))

(assert (= (and b!950133 res!431813) b!950130))

(assert (= (and b!950134 (not res!431814)) b!950137))

(assert (= (and b!950137 res!431812) b!950136))

(assert (= (or b!950130 b!950136) bm!59579))

(assert (= (or b!950133 b!950137) bm!59581))

(assert (= (or b!950135 bm!59579) bm!59580))

(declare-fun m!1163411 () Bool)

(assert (=> bm!59580 m!1163411))

(declare-fun m!1163413 () Bool)

(assert (=> bm!59581 m!1163413))

(declare-fun m!1163415 () Bool)

(assert (=> b!950138 m!1163415))

(assert (=> bm!59550 d!283690))

(declare-fun b!950148 () Bool)

(declare-fun e!615194 () List!9847)

(assert (=> b!950148 (= e!615194 (Cons!9831 (h!15232 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831))) (++!2627 (t!100893 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831))) (t!100893 s!10566))))))

(declare-fun d!283692 () Bool)

(declare-fun e!615193 () Bool)

(assert (=> d!283692 e!615193))

(declare-fun res!431822 () Bool)

(assert (=> d!283692 (=> (not res!431822) (not e!615193))))

(declare-fun lt!344476 () List!9847)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1397 (List!9847) (InoxSet C!5804))

(assert (=> d!283692 (= res!431822 (= (content!1397 lt!344476) ((_ map or) (content!1397 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831))) (content!1397 (t!100893 s!10566)))))))

(assert (=> d!283692 (= lt!344476 e!615194)))

(declare-fun c!154731 () Bool)

(assert (=> d!283692 (= c!154731 ((_ is Nil!9831) (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831))))))

(assert (=> d!283692 (= (++!2627 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (t!100893 s!10566)) lt!344476)))

(declare-fun b!950149 () Bool)

(declare-fun res!431821 () Bool)

(assert (=> b!950149 (=> (not res!431821) (not e!615193))))

(declare-fun size!7909 (List!9847) Int)

(assert (=> b!950149 (= res!431821 (= (size!7909 lt!344476) (+ (size!7909 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831))) (size!7909 (t!100893 s!10566)))))))

(declare-fun b!950150 () Bool)

(assert (=> b!950150 (= e!615193 (or (not (= (t!100893 s!10566) Nil!9831)) (= lt!344476 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)))))))

(declare-fun b!950147 () Bool)

(assert (=> b!950147 (= e!615194 (t!100893 s!10566))))

(assert (= (and d!283692 c!154731) b!950147))

(assert (= (and d!283692 (not c!154731)) b!950148))

(assert (= (and d!283692 res!431822) b!950149))

(assert (= (and b!950149 res!431821) b!950150))

(declare-fun m!1163417 () Bool)

(assert (=> b!950148 m!1163417))

(declare-fun m!1163419 () Bool)

(assert (=> d!283692 m!1163419))

(assert (=> d!283692 m!1163133))

(declare-fun m!1163421 () Bool)

(assert (=> d!283692 m!1163421))

(declare-fun m!1163423 () Bool)

(assert (=> d!283692 m!1163423))

(declare-fun m!1163425 () Bool)

(assert (=> b!950149 m!1163425))

(assert (=> b!950149 m!1163133))

(declare-fun m!1163427 () Bool)

(assert (=> b!950149 m!1163427))

(declare-fun m!1163429 () Bool)

(assert (=> b!950149 m!1163429))

(assert (=> b!949541 d!283692))

(declare-fun b!950152 () Bool)

(declare-fun e!615196 () List!9847)

(assert (=> b!950152 (= e!615196 (Cons!9831 (h!15232 Nil!9831) (++!2627 (t!100893 Nil!9831) (Cons!9831 (h!15232 s!10566) Nil!9831))))))

(declare-fun d!283694 () Bool)

(declare-fun e!615195 () Bool)

(assert (=> d!283694 e!615195))

(declare-fun res!431824 () Bool)

(assert (=> d!283694 (=> (not res!431824) (not e!615195))))

(declare-fun lt!344477 () List!9847)

(assert (=> d!283694 (= res!431824 (= (content!1397 lt!344477) ((_ map or) (content!1397 Nil!9831) (content!1397 (Cons!9831 (h!15232 s!10566) Nil!9831)))))))

(assert (=> d!283694 (= lt!344477 e!615196)))

(declare-fun c!154732 () Bool)

(assert (=> d!283694 (= c!154732 ((_ is Nil!9831) Nil!9831))))

(assert (=> d!283694 (= (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) lt!344477)))

(declare-fun b!950153 () Bool)

(declare-fun res!431823 () Bool)

(assert (=> b!950153 (=> (not res!431823) (not e!615195))))

(assert (=> b!950153 (= res!431823 (= (size!7909 lt!344477) (+ (size!7909 Nil!9831) (size!7909 (Cons!9831 (h!15232 s!10566) Nil!9831)))))))

(declare-fun b!950154 () Bool)

(assert (=> b!950154 (= e!615195 (or (not (= (Cons!9831 (h!15232 s!10566) Nil!9831) Nil!9831)) (= lt!344477 Nil!9831)))))

(declare-fun b!950151 () Bool)

(assert (=> b!950151 (= e!615196 (Cons!9831 (h!15232 s!10566) Nil!9831))))

(assert (= (and d!283694 c!154732) b!950151))

(assert (= (and d!283694 (not c!154732)) b!950152))

(assert (= (and d!283694 res!431824) b!950153))

(assert (= (and b!950153 res!431823) b!950154))

(declare-fun m!1163431 () Bool)

(assert (=> b!950152 m!1163431))

(declare-fun m!1163433 () Bool)

(assert (=> d!283694 m!1163433))

(declare-fun m!1163435 () Bool)

(assert (=> d!283694 m!1163435))

(declare-fun m!1163437 () Bool)

(assert (=> d!283694 m!1163437))

(declare-fun m!1163439 () Bool)

(assert (=> b!950153 m!1163439))

(declare-fun m!1163441 () Bool)

(assert (=> b!950153 m!1163441))

(declare-fun m!1163443 () Bool)

(assert (=> b!950153 m!1163443))

(assert (=> b!949541 d!283694))

(declare-fun d!283696 () Bool)

(assert (=> d!283696 (= (++!2627 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (t!100893 s!10566)) s!10566)))

(declare-fun lt!344480 () Unit!14877)

(declare-fun choose!5921 (List!9847 C!5804 List!9847 List!9847) Unit!14877)

(assert (=> d!283696 (= lt!344480 (choose!5921 Nil!9831 (h!15232 s!10566) (t!100893 s!10566) s!10566))))

(assert (=> d!283696 (= (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) (t!100893 s!10566))) s!10566)))

(assert (=> d!283696 (= (lemmaMoveElementToOtherListKeepsConcatEq!236 Nil!9831 (h!15232 s!10566) (t!100893 s!10566) s!10566) lt!344480)))

(declare-fun bs!239937 () Bool)

(assert (= bs!239937 d!283696))

(assert (=> bs!239937 m!1163133))

(assert (=> bs!239937 m!1163133))

(assert (=> bs!239937 m!1163135))

(declare-fun m!1163445 () Bool)

(assert (=> bs!239937 m!1163445))

(declare-fun m!1163447 () Bool)

(assert (=> bs!239937 m!1163447))

(assert (=> b!949541 d!283696))

(declare-fun b!950155 () Bool)

(declare-fun res!431825 () Bool)

(declare-fun e!615197 () Bool)

(assert (=> b!950155 (=> (not res!431825) (not e!615197))))

(declare-fun lt!344482 () Option!2206)

(assert (=> b!950155 (= res!431825 (matchR!1155 EmptyExpr!2617 (_1!6390 (get!3303 lt!344482))))))

(declare-fun b!950156 () Bool)

(declare-fun e!615198 () Option!2206)

(assert (=> b!950156 (= e!615198 (Some!2205 (tuple2!11129 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (t!100893 s!10566))))))

(declare-fun b!950158 () Bool)

(assert (=> b!950158 (= e!615197 (= (++!2627 (_1!6390 (get!3303 lt!344482)) (_2!6390 (get!3303 lt!344482))) s!10566))))

(declare-fun b!950159 () Bool)

(declare-fun e!615201 () Option!2206)

(assert (=> b!950159 (= e!615198 e!615201)))

(declare-fun c!154733 () Bool)

(assert (=> b!950159 (= c!154733 ((_ is Nil!9831) (t!100893 s!10566)))))

(declare-fun b!950160 () Bool)

(declare-fun res!431829 () Bool)

(assert (=> b!950160 (=> (not res!431829) (not e!615197))))

(assert (=> b!950160 (= res!431829 (matchR!1155 (regTwo!5746 r!15766) (_2!6390 (get!3303 lt!344482))))))

(declare-fun b!950161 () Bool)

(declare-fun e!615199 () Bool)

(assert (=> b!950161 (= e!615199 (matchR!1155 (regTwo!5746 r!15766) (t!100893 s!10566)))))

(declare-fun b!950162 () Bool)

(declare-fun lt!344483 () Unit!14877)

(declare-fun lt!344481 () Unit!14877)

(assert (=> b!950162 (= lt!344483 lt!344481)))

(assert (=> b!950162 (= (++!2627 (++!2627 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (Cons!9831 (h!15232 (t!100893 s!10566)) Nil!9831)) (t!100893 (t!100893 s!10566))) s!10566)))

(assert (=> b!950162 (= lt!344481 (lemmaMoveElementToOtherListKeepsConcatEq!236 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (h!15232 (t!100893 s!10566)) (t!100893 (t!100893 s!10566)) s!10566))))

(assert (=> b!950162 (= e!615201 (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) (++!2627 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (Cons!9831 (h!15232 (t!100893 s!10566)) Nil!9831)) (t!100893 (t!100893 s!10566)) s!10566))))

(declare-fun b!950163 () Bool)

(assert (=> b!950163 (= e!615201 None!2205)))

(declare-fun d!283698 () Bool)

(declare-fun e!615200 () Bool)

(assert (=> d!283698 e!615200))

(declare-fun res!431828 () Bool)

(assert (=> d!283698 (=> res!431828 e!615200)))

(assert (=> d!283698 (= res!431828 e!615197)))

(declare-fun res!431827 () Bool)

(assert (=> d!283698 (=> (not res!431827) (not e!615197))))

(assert (=> d!283698 (= res!431827 (isDefined!1848 lt!344482))))

(assert (=> d!283698 (= lt!344482 e!615198)))

(declare-fun c!154734 () Bool)

(assert (=> d!283698 (= c!154734 e!615199)))

(declare-fun res!431826 () Bool)

(assert (=> d!283698 (=> (not res!431826) (not e!615199))))

(assert (=> d!283698 (= res!431826 (matchR!1155 EmptyExpr!2617 (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831))))))

(assert (=> d!283698 (validRegex!1086 EmptyExpr!2617)))

(assert (=> d!283698 (= (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) (++!2627 Nil!9831 (Cons!9831 (h!15232 s!10566) Nil!9831)) (t!100893 s!10566) s!10566) lt!344482)))

(declare-fun b!950157 () Bool)

(assert (=> b!950157 (= e!615200 (not (isDefined!1848 lt!344482)))))

(assert (= (and d!283698 res!431826) b!950161))

(assert (= (and d!283698 c!154734) b!950156))

(assert (= (and d!283698 (not c!154734)) b!950159))

(assert (= (and b!950159 c!154733) b!950163))

(assert (= (and b!950159 (not c!154733)) b!950162))

(assert (= (and d!283698 res!431827) b!950155))

(assert (= (and b!950155 res!431825) b!950160))

(assert (= (and b!950160 res!431829) b!950158))

(assert (= (and d!283698 (not res!431828)) b!950157))

(declare-fun m!1163449 () Bool)

(assert (=> b!950155 m!1163449))

(declare-fun m!1163451 () Bool)

(assert (=> b!950155 m!1163451))

(assert (=> b!950158 m!1163449))

(declare-fun m!1163453 () Bool)

(assert (=> b!950158 m!1163453))

(declare-fun m!1163455 () Bool)

(assert (=> d!283698 m!1163455))

(assert (=> d!283698 m!1163133))

(declare-fun m!1163457 () Bool)

(assert (=> d!283698 m!1163457))

(assert (=> d!283698 m!1163127))

(assert (=> b!950160 m!1163449))

(declare-fun m!1163459 () Bool)

(assert (=> b!950160 m!1163459))

(declare-fun m!1163461 () Bool)

(assert (=> b!950161 m!1163461))

(assert (=> b!950157 m!1163455))

(assert (=> b!950162 m!1163133))

(declare-fun m!1163463 () Bool)

(assert (=> b!950162 m!1163463))

(assert (=> b!950162 m!1163463))

(declare-fun m!1163465 () Bool)

(assert (=> b!950162 m!1163465))

(assert (=> b!950162 m!1163133))

(declare-fun m!1163467 () Bool)

(assert (=> b!950162 m!1163467))

(assert (=> b!950162 m!1163463))

(declare-fun m!1163469 () Bool)

(assert (=> b!950162 m!1163469))

(assert (=> b!949541 d!283698))

(declare-fun d!283700 () Bool)

(assert (=> d!283700 (= (Exists!368 (ite c!154659 lambda!32577 lambda!32578)) (choose!5918 (ite c!154659 lambda!32577 lambda!32578)))))

(declare-fun bs!239938 () Bool)

(assert (= bs!239938 d!283700))

(declare-fun m!1163471 () Bool)

(assert (=> bs!239938 m!1163471))

(assert (=> bm!59538 d!283700))

(assert (=> d!283610 d!283568))

(assert (=> d!283610 d!283618))

(declare-fun d!283702 () Bool)

(assert (=> d!283702 (= (isEmpty!6098 lt!344411) (not ((_ is Some!2205) lt!344411)))))

(assert (=> d!283600 d!283702))

(declare-fun d!283704 () Bool)

(assert (=> d!283704 (= (isDefined!1848 lt!344428) (not (isEmpty!6098 lt!344428)))))

(declare-fun bs!239939 () Bool)

(assert (= bs!239939 d!283704))

(declare-fun m!1163473 () Bool)

(assert (=> bs!239939 m!1163473))

(assert (=> d!283574 d!283704))

(declare-fun b!950164 () Bool)

(declare-fun res!431837 () Bool)

(declare-fun e!615208 () Bool)

(assert (=> b!950164 (=> res!431837 e!615208)))

(assert (=> b!950164 (= res!431837 (not (isEmpty!6096 (tail!1296 Nil!9831))))))

(declare-fun b!950165 () Bool)

(declare-fun e!615206 () Bool)

(assert (=> b!950165 (= e!615206 (= (head!1734 Nil!9831) (c!154608 EmptyExpr!2617)))))

(declare-fun b!950166 () Bool)

(declare-fun e!615204 () Bool)

(declare-fun e!615202 () Bool)

(assert (=> b!950166 (= e!615204 e!615202)))

(declare-fun c!154735 () Bool)

(assert (=> b!950166 (= c!154735 ((_ is EmptyLang!2617) EmptyExpr!2617))))

(declare-fun b!950167 () Bool)

(declare-fun res!431832 () Bool)

(assert (=> b!950167 (=> (not res!431832) (not e!615206))))

(declare-fun call!59587 () Bool)

(assert (=> b!950167 (= res!431832 (not call!59587))))

(declare-fun bm!59582 () Bool)

(assert (=> bm!59582 (= call!59587 (isEmpty!6096 Nil!9831))))

(declare-fun b!950168 () Bool)

(declare-fun e!615203 () Bool)

(assert (=> b!950168 (= e!615203 (matchR!1155 (derivativeStep!581 EmptyExpr!2617 (head!1734 Nil!9831)) (tail!1296 Nil!9831)))))

(declare-fun b!950169 () Bool)

(declare-fun res!431835 () Bool)

(assert (=> b!950169 (=> (not res!431835) (not e!615206))))

(assert (=> b!950169 (= res!431835 (isEmpty!6096 (tail!1296 Nil!9831)))))

(declare-fun b!950170 () Bool)

(assert (=> b!950170 (= e!615208 (not (= (head!1734 Nil!9831) (c!154608 EmptyExpr!2617))))))

(declare-fun d!283706 () Bool)

(assert (=> d!283706 e!615204))

(declare-fun c!154736 () Bool)

(assert (=> d!283706 (= c!154736 ((_ is EmptyExpr!2617) EmptyExpr!2617))))

(declare-fun lt!344484 () Bool)

(assert (=> d!283706 (= lt!344484 e!615203)))

(declare-fun c!154737 () Bool)

(assert (=> d!283706 (= c!154737 (isEmpty!6096 Nil!9831))))

(assert (=> d!283706 (validRegex!1086 EmptyExpr!2617)))

(assert (=> d!283706 (= (matchR!1155 EmptyExpr!2617 Nil!9831) lt!344484)))

(declare-fun b!950171 () Bool)

(declare-fun e!615205 () Bool)

(declare-fun e!615207 () Bool)

(assert (=> b!950171 (= e!615205 e!615207)))

(declare-fun res!431830 () Bool)

(assert (=> b!950171 (=> (not res!431830) (not e!615207))))

(assert (=> b!950171 (= res!431830 (not lt!344484))))

(declare-fun b!950172 () Bool)

(assert (=> b!950172 (= e!615207 e!615208)))

(declare-fun res!431834 () Bool)

(assert (=> b!950172 (=> res!431834 e!615208)))

(assert (=> b!950172 (= res!431834 call!59587)))

(declare-fun b!950173 () Bool)

(declare-fun res!431831 () Bool)

(assert (=> b!950173 (=> res!431831 e!615205)))

(assert (=> b!950173 (= res!431831 (not ((_ is ElementMatch!2617) EmptyExpr!2617)))))

(assert (=> b!950173 (= e!615202 e!615205)))

(declare-fun b!950174 () Bool)

(declare-fun res!431836 () Bool)

(assert (=> b!950174 (=> res!431836 e!615205)))

(assert (=> b!950174 (= res!431836 e!615206)))

(declare-fun res!431833 () Bool)

(assert (=> b!950174 (=> (not res!431833) (not e!615206))))

(assert (=> b!950174 (= res!431833 lt!344484)))

(declare-fun b!950175 () Bool)

(assert (=> b!950175 (= e!615204 (= lt!344484 call!59587))))

(declare-fun b!950176 () Bool)

(assert (=> b!950176 (= e!615202 (not lt!344484))))

(declare-fun b!950177 () Bool)

(assert (=> b!950177 (= e!615203 (nullable!772 EmptyExpr!2617))))

(assert (= (and d!283706 c!154737) b!950177))

(assert (= (and d!283706 (not c!154737)) b!950168))

(assert (= (and d!283706 c!154736) b!950175))

(assert (= (and d!283706 (not c!154736)) b!950166))

(assert (= (and b!950166 c!154735) b!950176))

(assert (= (and b!950166 (not c!154735)) b!950173))

(assert (= (and b!950173 (not res!431831)) b!950174))

(assert (= (and b!950174 res!431833) b!950167))

(assert (= (and b!950167 res!431832) b!950169))

(assert (= (and b!950169 res!431835) b!950165))

(assert (= (and b!950174 (not res!431836)) b!950171))

(assert (= (and b!950171 res!431830) b!950172))

(assert (= (and b!950172 (not res!431834)) b!950164))

(assert (= (and b!950164 (not res!431837)) b!950170))

(assert (= (or b!950175 b!950167 b!950172) bm!59582))

(declare-fun m!1163475 () Bool)

(assert (=> d!283706 m!1163475))

(assert (=> d!283706 m!1163127))

(declare-fun m!1163477 () Bool)

(assert (=> b!950169 m!1163477))

(assert (=> b!950169 m!1163477))

(declare-fun m!1163479 () Bool)

(assert (=> b!950169 m!1163479))

(assert (=> bm!59582 m!1163475))

(declare-fun m!1163481 () Bool)

(assert (=> b!950168 m!1163481))

(assert (=> b!950168 m!1163481))

(declare-fun m!1163483 () Bool)

(assert (=> b!950168 m!1163483))

(assert (=> b!950168 m!1163477))

(assert (=> b!950168 m!1163483))

(assert (=> b!950168 m!1163477))

(declare-fun m!1163485 () Bool)

(assert (=> b!950168 m!1163485))

(assert (=> b!950165 m!1163481))

(declare-fun m!1163487 () Bool)

(assert (=> b!950177 m!1163487))

(assert (=> b!950164 m!1163477))

(assert (=> b!950164 m!1163477))

(assert (=> b!950164 m!1163479))

(assert (=> b!950170 m!1163481))

(assert (=> d!283574 d!283706))

(declare-fun d!283708 () Bool)

(assert (=> d!283708 (= (validRegex!1086 EmptyExpr!2617) true)))

(assert (=> d!283574 d!283708))

(declare-fun d!283710 () Bool)

(assert (=> d!283710 (= (head!1734 s!10566) (h!15232 s!10566))))

(assert (=> b!949764 d!283710))

(assert (=> d!283612 d!283610))

(assert (=> d!283612 d!283606))

(declare-fun d!283712 () Bool)

(assert (=> d!283712 (= (matchR!1155 r!15766 s!10566) (matchRSpec!418 r!15766 s!10566))))

(assert (=> d!283712 true))

(declare-fun _$88!2998 () Unit!14877)

(assert (=> d!283712 (= (choose!5919 r!15766 s!10566) _$88!2998)))

(declare-fun bs!239940 () Bool)

(assert (= bs!239940 d!283712))

(assert (=> bs!239940 m!1163061))

(assert (=> bs!239940 m!1163059))

(assert (=> d!283612 d!283712))

(assert (=> d!283612 d!283618))

(declare-fun d!283714 () Bool)

(assert (=> d!283714 (= (isEmpty!6096 (tail!1296 s!10566)) ((_ is Nil!9831) (tail!1296 s!10566)))))

(assert (=> b!949763 d!283714))

(declare-fun d!283716 () Bool)

(assert (=> d!283716 (= (tail!1296 s!10566) (t!100893 s!10566))))

(assert (=> b!949763 d!283716))

(declare-fun b!950178 () Bool)

(declare-fun res!431845 () Bool)

(declare-fun e!615215 () Bool)

(assert (=> b!950178 (=> res!431845 e!615215)))

(assert (=> b!950178 (= res!431845 (not (isEmpty!6096 (tail!1296 (tail!1296 s!10566)))))))

(declare-fun b!950179 () Bool)

(declare-fun e!615213 () Bool)

(assert (=> b!950179 (= e!615213 (= (head!1734 (tail!1296 s!10566)) (c!154608 (derivativeStep!581 r!15766 (head!1734 s!10566)))))))

(declare-fun b!950180 () Bool)

(declare-fun e!615211 () Bool)

(declare-fun e!615209 () Bool)

(assert (=> b!950180 (= e!615211 e!615209)))

(declare-fun c!154738 () Bool)

(assert (=> b!950180 (= c!154738 ((_ is EmptyLang!2617) (derivativeStep!581 r!15766 (head!1734 s!10566))))))

(declare-fun b!950181 () Bool)

(declare-fun res!431840 () Bool)

(assert (=> b!950181 (=> (not res!431840) (not e!615213))))

(declare-fun call!59588 () Bool)

(assert (=> b!950181 (= res!431840 (not call!59588))))

(declare-fun bm!59583 () Bool)

(assert (=> bm!59583 (= call!59588 (isEmpty!6096 (tail!1296 s!10566)))))

(declare-fun b!950182 () Bool)

(declare-fun e!615210 () Bool)

(assert (=> b!950182 (= e!615210 (matchR!1155 (derivativeStep!581 (derivativeStep!581 r!15766 (head!1734 s!10566)) (head!1734 (tail!1296 s!10566))) (tail!1296 (tail!1296 s!10566))))))

(declare-fun b!950183 () Bool)

(declare-fun res!431843 () Bool)

(assert (=> b!950183 (=> (not res!431843) (not e!615213))))

(assert (=> b!950183 (= res!431843 (isEmpty!6096 (tail!1296 (tail!1296 s!10566))))))

(declare-fun b!950184 () Bool)

(assert (=> b!950184 (= e!615215 (not (= (head!1734 (tail!1296 s!10566)) (c!154608 (derivativeStep!581 r!15766 (head!1734 s!10566))))))))

(declare-fun d!283718 () Bool)

(assert (=> d!283718 e!615211))

(declare-fun c!154739 () Bool)

(assert (=> d!283718 (= c!154739 ((_ is EmptyExpr!2617) (derivativeStep!581 r!15766 (head!1734 s!10566))))))

(declare-fun lt!344485 () Bool)

(assert (=> d!283718 (= lt!344485 e!615210)))

(declare-fun c!154740 () Bool)

(assert (=> d!283718 (= c!154740 (isEmpty!6096 (tail!1296 s!10566)))))

(assert (=> d!283718 (validRegex!1086 (derivativeStep!581 r!15766 (head!1734 s!10566)))))

(assert (=> d!283718 (= (matchR!1155 (derivativeStep!581 r!15766 (head!1734 s!10566)) (tail!1296 s!10566)) lt!344485)))

(declare-fun b!950185 () Bool)

(declare-fun e!615212 () Bool)

(declare-fun e!615214 () Bool)

(assert (=> b!950185 (= e!615212 e!615214)))

(declare-fun res!431838 () Bool)

(assert (=> b!950185 (=> (not res!431838) (not e!615214))))

(assert (=> b!950185 (= res!431838 (not lt!344485))))

(declare-fun b!950186 () Bool)

(assert (=> b!950186 (= e!615214 e!615215)))

(declare-fun res!431842 () Bool)

(assert (=> b!950186 (=> res!431842 e!615215)))

(assert (=> b!950186 (= res!431842 call!59588)))

(declare-fun b!950187 () Bool)

(declare-fun res!431839 () Bool)

(assert (=> b!950187 (=> res!431839 e!615212)))

(assert (=> b!950187 (= res!431839 (not ((_ is ElementMatch!2617) (derivativeStep!581 r!15766 (head!1734 s!10566)))))))

(assert (=> b!950187 (= e!615209 e!615212)))

(declare-fun b!950188 () Bool)

(declare-fun res!431844 () Bool)

(assert (=> b!950188 (=> res!431844 e!615212)))

(assert (=> b!950188 (= res!431844 e!615213)))

(declare-fun res!431841 () Bool)

(assert (=> b!950188 (=> (not res!431841) (not e!615213))))

(assert (=> b!950188 (= res!431841 lt!344485)))

(declare-fun b!950189 () Bool)

(assert (=> b!950189 (= e!615211 (= lt!344485 call!59588))))

(declare-fun b!950190 () Bool)

(assert (=> b!950190 (= e!615209 (not lt!344485))))

(declare-fun b!950191 () Bool)

(assert (=> b!950191 (= e!615210 (nullable!772 (derivativeStep!581 r!15766 (head!1734 s!10566))))))

(assert (= (and d!283718 c!154740) b!950191))

(assert (= (and d!283718 (not c!154740)) b!950182))

(assert (= (and d!283718 c!154739) b!950189))

(assert (= (and d!283718 (not c!154739)) b!950180))

(assert (= (and b!950180 c!154738) b!950190))

(assert (= (and b!950180 (not c!154738)) b!950187))

(assert (= (and b!950187 (not res!431839)) b!950188))

(assert (= (and b!950188 res!431841) b!950181))

(assert (= (and b!950181 res!431840) b!950183))

(assert (= (and b!950183 res!431843) b!950179))

(assert (= (and b!950188 (not res!431844)) b!950185))

(assert (= (and b!950185 res!431838) b!950186))

(assert (= (and b!950186 (not res!431842)) b!950178))

(assert (= (and b!950178 (not res!431845)) b!950184))

(assert (= (or b!950189 b!950181 b!950186) bm!59583))

(assert (=> d!283718 m!1163201))

(assert (=> d!283718 m!1163203))

(assert (=> d!283718 m!1163207))

(declare-fun m!1163489 () Bool)

(assert (=> d!283718 m!1163489))

(assert (=> b!950183 m!1163201))

(declare-fun m!1163491 () Bool)

(assert (=> b!950183 m!1163491))

(assert (=> b!950183 m!1163491))

(declare-fun m!1163493 () Bool)

(assert (=> b!950183 m!1163493))

(assert (=> bm!59583 m!1163201))

(assert (=> bm!59583 m!1163203))

(assert (=> b!950182 m!1163201))

(declare-fun m!1163495 () Bool)

(assert (=> b!950182 m!1163495))

(assert (=> b!950182 m!1163207))

(assert (=> b!950182 m!1163495))

(declare-fun m!1163497 () Bool)

(assert (=> b!950182 m!1163497))

(assert (=> b!950182 m!1163201))

(assert (=> b!950182 m!1163491))

(assert (=> b!950182 m!1163497))

(assert (=> b!950182 m!1163491))

(declare-fun m!1163499 () Bool)

(assert (=> b!950182 m!1163499))

(assert (=> b!950179 m!1163201))

(assert (=> b!950179 m!1163495))

(assert (=> b!950191 m!1163207))

(declare-fun m!1163501 () Bool)

(assert (=> b!950191 m!1163501))

(assert (=> b!950178 m!1163201))

(assert (=> b!950178 m!1163491))

(assert (=> b!950178 m!1163491))

(assert (=> b!950178 m!1163493))

(assert (=> b!950184 m!1163201))

(assert (=> b!950184 m!1163495))

(assert (=> b!949762 d!283718))

(declare-fun b!950212 () Bool)

(declare-fun e!615229 () Regex!2617)

(assert (=> b!950212 (= e!615229 (ite (= (head!1734 s!10566) (c!154608 r!15766)) EmptyExpr!2617 EmptyLang!2617))))

(declare-fun call!59599 () Regex!2617)

(declare-fun c!154755 () Bool)

(declare-fun c!154753 () Bool)

(declare-fun bm!59592 () Bool)

(declare-fun c!154752 () Bool)

(assert (=> bm!59592 (= call!59599 (derivativeStep!581 (ite c!154755 (regOne!5747 r!15766) (ite c!154752 (reg!2946 r!15766) (ite c!154753 (regTwo!5746 r!15766) (regOne!5746 r!15766)))) (head!1734 s!10566)))))

(declare-fun call!59597 () Regex!2617)

(declare-fun bm!59593 () Bool)

(assert (=> bm!59593 (= call!59597 (derivativeStep!581 (ite c!154755 (regTwo!5747 r!15766) (regOne!5746 r!15766)) (head!1734 s!10566)))))

(declare-fun b!950213 () Bool)

(declare-fun e!615228 () Regex!2617)

(declare-fun e!615230 () Regex!2617)

(assert (=> b!950213 (= e!615228 e!615230)))

(assert (=> b!950213 (= c!154752 ((_ is Star!2617) r!15766))))

(declare-fun b!950214 () Bool)

(declare-fun e!615226 () Regex!2617)

(assert (=> b!950214 (= e!615226 EmptyLang!2617)))

(declare-fun b!950215 () Bool)

(declare-fun call!59598 () Regex!2617)

(assert (=> b!950215 (= e!615230 (Concat!4450 call!59598 r!15766))))

(declare-fun e!615227 () Regex!2617)

(declare-fun call!59600 () Regex!2617)

(declare-fun b!950216 () Bool)

(assert (=> b!950216 (= e!615227 (Union!2617 (Concat!4450 call!59597 (regTwo!5746 r!15766)) call!59600))))

(declare-fun b!950217 () Bool)

(assert (=> b!950217 (= e!615226 e!615229)))

(declare-fun c!154754 () Bool)

(assert (=> b!950217 (= c!154754 ((_ is ElementMatch!2617) r!15766))))

(declare-fun bm!59594 () Bool)

(assert (=> bm!59594 (= call!59598 call!59599)))

(declare-fun b!950218 () Bool)

(assert (=> b!950218 (= e!615227 (Union!2617 (Concat!4450 call!59600 (regTwo!5746 r!15766)) EmptyLang!2617))))

(declare-fun bm!59595 () Bool)

(assert (=> bm!59595 (= call!59600 call!59598)))

(declare-fun b!950219 () Bool)

(assert (=> b!950219 (= e!615228 (Union!2617 call!59599 call!59597))))

(declare-fun b!950220 () Bool)

(assert (=> b!950220 (= c!154753 (nullable!772 (regOne!5746 r!15766)))))

(assert (=> b!950220 (= e!615230 e!615227)))

(declare-fun d!283720 () Bool)

(declare-fun lt!344488 () Regex!2617)

(assert (=> d!283720 (validRegex!1086 lt!344488)))

(assert (=> d!283720 (= lt!344488 e!615226)))

(declare-fun c!154751 () Bool)

(assert (=> d!283720 (= c!154751 (or ((_ is EmptyExpr!2617) r!15766) ((_ is EmptyLang!2617) r!15766)))))

(assert (=> d!283720 (validRegex!1086 r!15766)))

(assert (=> d!283720 (= (derivativeStep!581 r!15766 (head!1734 s!10566)) lt!344488)))

(declare-fun b!950221 () Bool)

(assert (=> b!950221 (= c!154755 ((_ is Union!2617) r!15766))))

(assert (=> b!950221 (= e!615229 e!615228)))

(assert (= (and d!283720 c!154751) b!950214))

(assert (= (and d!283720 (not c!154751)) b!950217))

(assert (= (and b!950217 c!154754) b!950212))

(assert (= (and b!950217 (not c!154754)) b!950221))

(assert (= (and b!950221 c!154755) b!950219))

(assert (= (and b!950221 (not c!154755)) b!950213))

(assert (= (and b!950213 c!154752) b!950215))

(assert (= (and b!950213 (not c!154752)) b!950220))

(assert (= (and b!950220 c!154753) b!950216))

(assert (= (and b!950220 (not c!154753)) b!950218))

(assert (= (or b!950216 b!950218) bm!59595))

(assert (= (or b!950215 bm!59595) bm!59594))

(assert (= (or b!950219 bm!59594) bm!59592))

(assert (= (or b!950219 b!950216) bm!59593))

(assert (=> bm!59592 m!1163205))

(declare-fun m!1163503 () Bool)

(assert (=> bm!59592 m!1163503))

(assert (=> bm!59593 m!1163205))

(declare-fun m!1163505 () Bool)

(assert (=> bm!59593 m!1163505))

(declare-fun m!1163507 () Bool)

(assert (=> b!950220 m!1163507))

(declare-fun m!1163509 () Bool)

(assert (=> d!283720 m!1163509))

(assert (=> d!283720 m!1163069))

(assert (=> b!949762 d!283720))

(assert (=> b!949762 d!283710))

(assert (=> b!949762 d!283716))

(declare-fun b!950222 () Bool)

(declare-fun e!615234 () Bool)

(declare-fun call!59603 () Bool)

(assert (=> b!950222 (= e!615234 call!59603)))

(declare-fun d!283722 () Bool)

(declare-fun res!431850 () Bool)

(declare-fun e!615236 () Bool)

(assert (=> d!283722 (=> res!431850 e!615236)))

(assert (=> d!283722 (= res!431850 ((_ is ElementMatch!2617) (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))))))

(assert (=> d!283722 (= (validRegex!1086 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))) e!615236)))

(declare-fun bm!59596 () Bool)

(declare-fun call!59602 () Bool)

(assert (=> bm!59596 (= call!59603 call!59602)))

(declare-fun b!950223 () Bool)

(declare-fun e!615232 () Bool)

(assert (=> b!950223 (= e!615236 e!615232)))

(declare-fun c!154757 () Bool)

(assert (=> b!950223 (= c!154757 ((_ is Star!2617) (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))))))

(declare-fun b!950224 () Bool)

(declare-fun e!615231 () Bool)

(assert (=> b!950224 (= e!615232 e!615231)))

(declare-fun c!154756 () Bool)

(assert (=> b!950224 (= c!154756 ((_ is Union!2617) (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))))))

(declare-fun bm!59597 () Bool)

(assert (=> bm!59597 (= call!59602 (validRegex!1086 (ite c!154757 (reg!2946 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))) (ite c!154756 (regTwo!5747 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))) (regTwo!5746 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766))))))))))

(declare-fun b!950225 () Bool)

(declare-fun res!431847 () Bool)

(assert (=> b!950225 (=> (not res!431847) (not e!615234))))

(declare-fun call!59601 () Bool)

(assert (=> b!950225 (= res!431847 call!59601)))

(assert (=> b!950225 (= e!615231 e!615234)))

(declare-fun b!950226 () Bool)

(declare-fun res!431848 () Bool)

(declare-fun e!615235 () Bool)

(assert (=> b!950226 (=> res!431848 e!615235)))

(assert (=> b!950226 (= res!431848 (not ((_ is Concat!4450) (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766))))))))

(assert (=> b!950226 (= e!615231 e!615235)))

(declare-fun b!950227 () Bool)

(declare-fun e!615237 () Bool)

(assert (=> b!950227 (= e!615237 call!59602)))

(declare-fun b!950228 () Bool)

(declare-fun e!615233 () Bool)

(assert (=> b!950228 (= e!615233 call!59603)))

(declare-fun b!950229 () Bool)

(assert (=> b!950229 (= e!615235 e!615233)))

(declare-fun res!431846 () Bool)

(assert (=> b!950229 (=> (not res!431846) (not e!615233))))

(assert (=> b!950229 (= res!431846 call!59601)))

(declare-fun bm!59598 () Bool)

(assert (=> bm!59598 (= call!59601 (validRegex!1086 (ite c!154756 (regOne!5747 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))) (regOne!5746 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))))))))

(declare-fun b!950230 () Bool)

(assert (=> b!950230 (= e!615232 e!615237)))

(declare-fun res!431849 () Bool)

(assert (=> b!950230 (= res!431849 (not (nullable!772 (reg!2946 (ite c!154674 (reg!2946 r!15766) (ite c!154673 (regTwo!5747 r!15766) (regTwo!5746 r!15766)))))))))

(assert (=> b!950230 (=> (not res!431849) (not e!615237))))

(assert (= (and d!283722 (not res!431850)) b!950223))

(assert (= (and b!950223 c!154757) b!950230))

(assert (= (and b!950223 (not c!154757)) b!950224))

(assert (= (and b!950230 res!431849) b!950227))

(assert (= (and b!950224 c!154756) b!950225))

(assert (= (and b!950224 (not c!154756)) b!950226))

(assert (= (and b!950225 res!431847) b!950222))

(assert (= (and b!950226 (not res!431848)) b!950229))

(assert (= (and b!950229 res!431846) b!950228))

(assert (= (or b!950222 b!950228) bm!59596))

(assert (= (or b!950225 b!950229) bm!59598))

(assert (= (or b!950227 bm!59596) bm!59597))

(declare-fun m!1163511 () Bool)

(assert (=> bm!59597 m!1163511))

(declare-fun m!1163513 () Bool)

(assert (=> bm!59598 m!1163513))

(declare-fun m!1163515 () Bool)

(assert (=> b!950230 m!1163515))

(assert (=> bm!59549 d!283722))

(declare-fun bs!239941 () Bool)

(declare-fun b!950233 () Bool)

(assert (= bs!239941 (and b!950233 b!949456)))

(declare-fun lambda!32592 () Int)

(assert (=> bs!239941 (not (= lambda!32592 lambda!32547))))

(declare-fun bs!239942 () Bool)

(assert (= bs!239942 (and b!950233 b!949721)))

(assert (=> bs!239942 (= (and (= (reg!2946 (regOne!5747 r!15766)) (reg!2946 r!15766)) (= (regOne!5747 r!15766) r!15766)) (= lambda!32592 lambda!32577))))

(declare-fun bs!239943 () Bool)

(assert (= bs!239943 (and b!950233 d!283596)))

(assert (=> bs!239943 (not (= lambda!32592 lambda!32571))))

(declare-fun bs!239944 () Bool)

(assert (= bs!239944 (and b!950233 d!283586)))

(assert (=> bs!239944 (not (= lambda!32592 lambda!32560))))

(declare-fun bs!239945 () Bool)

(assert (= bs!239945 (and b!950233 b!949727)))

(assert (=> bs!239945 (not (= lambda!32592 lambda!32578))))

(assert (=> bs!239943 (not (= lambda!32592 lambda!32572))))

(assert (=> bs!239941 (not (= lambda!32592 lambda!32548))))

(assert (=> b!950233 true))

(assert (=> b!950233 true))

(declare-fun bs!239946 () Bool)

(declare-fun b!950239 () Bool)

(assert (= bs!239946 (and b!950239 b!949456)))

(declare-fun lambda!32593 () Int)

(assert (=> bs!239946 (not (= lambda!32593 lambda!32547))))

(declare-fun bs!239947 () Bool)

(assert (= bs!239947 (and b!950239 b!950233)))

(assert (=> bs!239947 (not (= lambda!32593 lambda!32592))))

(declare-fun bs!239948 () Bool)

(assert (= bs!239948 (and b!950239 b!949721)))

(assert (=> bs!239948 (not (= lambda!32593 lambda!32577))))

(declare-fun bs!239949 () Bool)

(assert (= bs!239949 (and b!950239 d!283596)))

(assert (=> bs!239949 (not (= lambda!32593 lambda!32571))))

(declare-fun bs!239950 () Bool)

(assert (= bs!239950 (and b!950239 d!283586)))

(assert (=> bs!239950 (not (= lambda!32593 lambda!32560))))

(declare-fun bs!239951 () Bool)

(assert (= bs!239951 (and b!950239 b!949727)))

(assert (=> bs!239951 (= (and (= (regOne!5746 (regOne!5747 r!15766)) (regOne!5746 r!15766)) (= (regTwo!5746 (regOne!5747 r!15766)) (regTwo!5746 r!15766))) (= lambda!32593 lambda!32578))))

(assert (=> bs!239949 (= (and (= (regOne!5746 (regOne!5747 r!15766)) EmptyExpr!2617) (= (regTwo!5746 (regOne!5747 r!15766)) (regTwo!5746 r!15766))) (= lambda!32593 lambda!32572))))

(assert (=> bs!239946 (= (and (= (regOne!5746 (regOne!5747 r!15766)) EmptyExpr!2617) (= (regTwo!5746 (regOne!5747 r!15766)) (regTwo!5746 r!15766))) (= lambda!32593 lambda!32548))))

(assert (=> b!950239 true))

(assert (=> b!950239 true))

(declare-fun b!950231 () Bool)

(declare-fun e!615240 () Bool)

(assert (=> b!950231 (= e!615240 (matchRSpec!418 (regTwo!5747 (regOne!5747 r!15766)) s!10566))))

(declare-fun d!283724 () Bool)

(declare-fun c!154759 () Bool)

(assert (=> d!283724 (= c!154759 ((_ is EmptyExpr!2617) (regOne!5747 r!15766)))))

(declare-fun e!615239 () Bool)

(assert (=> d!283724 (= (matchRSpec!418 (regOne!5747 r!15766) s!10566) e!615239)))

(declare-fun b!950232 () Bool)

(declare-fun res!431852 () Bool)

(declare-fun e!615241 () Bool)

(assert (=> b!950232 (=> res!431852 e!615241)))

(declare-fun call!59605 () Bool)

(assert (=> b!950232 (= res!431852 call!59605)))

(declare-fun e!615238 () Bool)

(assert (=> b!950232 (= e!615238 e!615241)))

(declare-fun call!59604 () Bool)

(assert (=> b!950233 (= e!615241 call!59604)))

(declare-fun bm!59599 () Bool)

(assert (=> bm!59599 (= call!59605 (isEmpty!6096 s!10566))))

(declare-fun b!950234 () Bool)

(declare-fun e!615243 () Bool)

(assert (=> b!950234 (= e!615243 (= s!10566 (Cons!9831 (c!154608 (regOne!5747 r!15766)) Nil!9831)))))

(declare-fun b!950235 () Bool)

(declare-fun e!615242 () Bool)

(assert (=> b!950235 (= e!615242 e!615240)))

(declare-fun res!431853 () Bool)

(assert (=> b!950235 (= res!431853 (matchRSpec!418 (regOne!5747 (regOne!5747 r!15766)) s!10566))))

(assert (=> b!950235 (=> res!431853 e!615240)))

(declare-fun b!950236 () Bool)

(declare-fun c!154758 () Bool)

(assert (=> b!950236 (= c!154758 ((_ is Union!2617) (regOne!5747 r!15766)))))

(assert (=> b!950236 (= e!615243 e!615242)))

(declare-fun b!950237 () Bool)

(declare-fun e!615244 () Bool)

(assert (=> b!950237 (= e!615239 e!615244)))

(declare-fun res!431851 () Bool)

(assert (=> b!950237 (= res!431851 (not ((_ is EmptyLang!2617) (regOne!5747 r!15766))))))

(assert (=> b!950237 (=> (not res!431851) (not e!615244))))

(declare-fun b!950238 () Bool)

(assert (=> b!950238 (= e!615239 call!59605)))

(assert (=> b!950239 (= e!615238 call!59604)))

(declare-fun b!950240 () Bool)

(declare-fun c!154760 () Bool)

(assert (=> b!950240 (= c!154760 ((_ is ElementMatch!2617) (regOne!5747 r!15766)))))

(assert (=> b!950240 (= e!615244 e!615243)))

(declare-fun bm!59600 () Bool)

(declare-fun c!154761 () Bool)

(assert (=> bm!59600 (= call!59604 (Exists!368 (ite c!154761 lambda!32592 lambda!32593)))))

(declare-fun b!950241 () Bool)

(assert (=> b!950241 (= e!615242 e!615238)))

(assert (=> b!950241 (= c!154761 ((_ is Star!2617) (regOne!5747 r!15766)))))

(assert (= (and d!283724 c!154759) b!950238))

(assert (= (and d!283724 (not c!154759)) b!950237))

(assert (= (and b!950237 res!431851) b!950240))

(assert (= (and b!950240 c!154760) b!950234))

(assert (= (and b!950240 (not c!154760)) b!950236))

(assert (= (and b!950236 c!154758) b!950235))

(assert (= (and b!950236 (not c!154758)) b!950241))

(assert (= (and b!950235 (not res!431853)) b!950231))

(assert (= (and b!950241 c!154761) b!950232))

(assert (= (and b!950241 (not c!154761)) b!950239))

(assert (= (and b!950232 (not res!431852)) b!950233))

(assert (= (or b!950233 b!950239) bm!59600))

(assert (= (or b!950238 b!950232) bm!59599))

(declare-fun m!1163517 () Bool)

(assert (=> b!950231 m!1163517))

(assert (=> bm!59599 m!1163079))

(declare-fun m!1163519 () Bool)

(assert (=> b!950235 m!1163519))

(declare-fun m!1163521 () Bool)

(assert (=> bm!59600 m!1163521))

(assert (=> b!949723 d!283724))

(assert (=> bm!59541 d!283568))

(declare-fun d!283726 () Bool)

(assert (=> d!283726 true))

(assert (=> d!283726 true))

(declare-fun res!431856 () Bool)

(assert (=> d!283726 (= (choose!5918 lambda!32547) res!431856)))

(assert (=> d!283604 d!283726))

(assert (=> bm!59537 d!283568))

(assert (=> d!283586 d!283574))

(declare-fun d!283728 () Bool)

(assert (=> d!283728 (= (Exists!368 lambda!32560) (choose!5918 lambda!32560))))

(declare-fun bs!239952 () Bool)

(assert (= bs!239952 d!283728))

(declare-fun m!1163523 () Bool)

(assert (=> bs!239952 m!1163523))

(assert (=> d!283586 d!283728))

(declare-fun bs!239953 () Bool)

(declare-fun d!283730 () Bool)

(assert (= bs!239953 (and d!283730 b!949456)))

(declare-fun lambda!32596 () Int)

(assert (=> bs!239953 (= lambda!32596 lambda!32547)))

(declare-fun bs!239954 () Bool)

(assert (= bs!239954 (and d!283730 b!950233)))

(assert (=> bs!239954 (not (= lambda!32596 lambda!32592))))

(declare-fun bs!239955 () Bool)

(assert (= bs!239955 (and d!283730 b!950239)))

(assert (=> bs!239955 (not (= lambda!32596 lambda!32593))))

(declare-fun bs!239956 () Bool)

(assert (= bs!239956 (and d!283730 b!949721)))

(assert (=> bs!239956 (not (= lambda!32596 lambda!32577))))

(declare-fun bs!239957 () Bool)

(assert (= bs!239957 (and d!283730 d!283596)))

(assert (=> bs!239957 (= lambda!32596 lambda!32571)))

(declare-fun bs!239958 () Bool)

(assert (= bs!239958 (and d!283730 d!283586)))

(assert (=> bs!239958 (= lambda!32596 lambda!32560)))

(declare-fun bs!239959 () Bool)

(assert (= bs!239959 (and d!283730 b!949727)))

(assert (=> bs!239959 (not (= lambda!32596 lambda!32578))))

(assert (=> bs!239957 (not (= lambda!32596 lambda!32572))))

(assert (=> bs!239953 (not (= lambda!32596 lambda!32548))))

(assert (=> d!283730 true))

(assert (=> d!283730 true))

(assert (=> d!283730 true))

(assert (=> d!283730 (= (isDefined!1848 (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) Nil!9831 s!10566 s!10566)) (Exists!368 lambda!32596))))

(assert (=> d!283730 true))

(declare-fun _$89!1126 () Unit!14877)

(assert (=> d!283730 (= (choose!5916 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566) _$89!1126)))

(declare-fun bs!239960 () Bool)

(assert (= bs!239960 d!283730))

(assert (=> bs!239960 m!1163083))

(assert (=> bs!239960 m!1163083))

(assert (=> bs!239960 m!1163159))

(declare-fun m!1163525 () Bool)

(assert (=> bs!239960 m!1163525))

(assert (=> d!283586 d!283730))

(declare-fun d!283732 () Bool)

(assert (=> d!283732 (= (isDefined!1848 (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) Nil!9831 s!10566 s!10566)) (not (isEmpty!6098 (findConcatSeparation!312 EmptyExpr!2617 (regTwo!5746 r!15766) Nil!9831 s!10566 s!10566))))))

(declare-fun bs!239961 () Bool)

(assert (= bs!239961 d!283732))

(assert (=> bs!239961 m!1163083))

(declare-fun m!1163527 () Bool)

(assert (=> bs!239961 m!1163527))

(assert (=> d!283586 d!283732))

(assert (=> d!283586 d!283708))

(assert (=> b!949759 d!283710))

(assert (=> b!949758 d!283714))

(assert (=> b!949758 d!283716))

(declare-fun bs!239962 () Bool)

(declare-fun b!950248 () Bool)

(assert (= bs!239962 (and b!950248 b!949456)))

(declare-fun lambda!32597 () Int)

(assert (=> bs!239962 (not (= lambda!32597 lambda!32547))))

(declare-fun bs!239963 () Bool)

(assert (= bs!239963 (and b!950248 b!950233)))

(assert (=> bs!239963 (= (and (= (reg!2946 (regTwo!5747 r!15766)) (reg!2946 (regOne!5747 r!15766))) (= (regTwo!5747 r!15766) (regOne!5747 r!15766))) (= lambda!32597 lambda!32592))))

(declare-fun bs!239964 () Bool)

(assert (= bs!239964 (and b!950248 b!950239)))

(assert (=> bs!239964 (not (= lambda!32597 lambda!32593))))

(declare-fun bs!239965 () Bool)

(assert (= bs!239965 (and b!950248 b!949721)))

(assert (=> bs!239965 (= (and (= (reg!2946 (regTwo!5747 r!15766)) (reg!2946 r!15766)) (= (regTwo!5747 r!15766) r!15766)) (= lambda!32597 lambda!32577))))

(declare-fun bs!239966 () Bool)

(assert (= bs!239966 (and b!950248 d!283596)))

(assert (=> bs!239966 (not (= lambda!32597 lambda!32571))))

(declare-fun bs!239967 () Bool)

(assert (= bs!239967 (and b!950248 d!283586)))

(assert (=> bs!239967 (not (= lambda!32597 lambda!32560))))

(declare-fun bs!239968 () Bool)

(assert (= bs!239968 (and b!950248 d!283730)))

(assert (=> bs!239968 (not (= lambda!32597 lambda!32596))))

(declare-fun bs!239969 () Bool)

(assert (= bs!239969 (and b!950248 b!949727)))

(assert (=> bs!239969 (not (= lambda!32597 lambda!32578))))

(assert (=> bs!239966 (not (= lambda!32597 lambda!32572))))

(assert (=> bs!239962 (not (= lambda!32597 lambda!32548))))

(assert (=> b!950248 true))

(assert (=> b!950248 true))

(declare-fun bs!239970 () Bool)

(declare-fun b!950254 () Bool)

(assert (= bs!239970 (and b!950254 b!950233)))

(declare-fun lambda!32598 () Int)

(assert (=> bs!239970 (not (= lambda!32598 lambda!32592))))

(declare-fun bs!239971 () Bool)

(assert (= bs!239971 (and b!950254 b!950239)))

(assert (=> bs!239971 (= (and (= (regOne!5746 (regTwo!5747 r!15766)) (regOne!5746 (regOne!5747 r!15766))) (= (regTwo!5746 (regTwo!5747 r!15766)) (regTwo!5746 (regOne!5747 r!15766)))) (= lambda!32598 lambda!32593))))

(declare-fun bs!239972 () Bool)

(assert (= bs!239972 (and b!950254 b!949721)))

(assert (=> bs!239972 (not (= lambda!32598 lambda!32577))))

(declare-fun bs!239973 () Bool)

(assert (= bs!239973 (and b!950254 d!283596)))

(assert (=> bs!239973 (not (= lambda!32598 lambda!32571))))

(declare-fun bs!239974 () Bool)

(assert (= bs!239974 (and b!950254 d!283586)))

(assert (=> bs!239974 (not (= lambda!32598 lambda!32560))))

(declare-fun bs!239975 () Bool)

(assert (= bs!239975 (and b!950254 d!283730)))

(assert (=> bs!239975 (not (= lambda!32598 lambda!32596))))

(declare-fun bs!239976 () Bool)

(assert (= bs!239976 (and b!950254 b!949727)))

(assert (=> bs!239976 (= (and (= (regOne!5746 (regTwo!5747 r!15766)) (regOne!5746 r!15766)) (= (regTwo!5746 (regTwo!5747 r!15766)) (regTwo!5746 r!15766))) (= lambda!32598 lambda!32578))))

(assert (=> bs!239973 (= (and (= (regOne!5746 (regTwo!5747 r!15766)) EmptyExpr!2617) (= (regTwo!5746 (regTwo!5747 r!15766)) (regTwo!5746 r!15766))) (= lambda!32598 lambda!32572))))

(declare-fun bs!239977 () Bool)

(assert (= bs!239977 (and b!950254 b!949456)))

(assert (=> bs!239977 (= (and (= (regOne!5746 (regTwo!5747 r!15766)) EmptyExpr!2617) (= (regTwo!5746 (regTwo!5747 r!15766)) (regTwo!5746 r!15766))) (= lambda!32598 lambda!32548))))

(declare-fun bs!239978 () Bool)

(assert (= bs!239978 (and b!950254 b!950248)))

(assert (=> bs!239978 (not (= lambda!32598 lambda!32597))))

(assert (=> bs!239977 (not (= lambda!32598 lambda!32547))))

(assert (=> b!950254 true))

(assert (=> b!950254 true))

(declare-fun b!950246 () Bool)

(declare-fun e!615249 () Bool)

(assert (=> b!950246 (= e!615249 (matchRSpec!418 (regTwo!5747 (regTwo!5747 r!15766)) s!10566))))

(declare-fun d!283734 () Bool)

(declare-fun c!154763 () Bool)

(assert (=> d!283734 (= c!154763 ((_ is EmptyExpr!2617) (regTwo!5747 r!15766)))))

(declare-fun e!615248 () Bool)

(assert (=> d!283734 (= (matchRSpec!418 (regTwo!5747 r!15766) s!10566) e!615248)))

(declare-fun b!950247 () Bool)

(declare-fun res!431862 () Bool)

(declare-fun e!615250 () Bool)

(assert (=> b!950247 (=> res!431862 e!615250)))

(declare-fun call!59607 () Bool)

(assert (=> b!950247 (= res!431862 call!59607)))

(declare-fun e!615247 () Bool)

(assert (=> b!950247 (= e!615247 e!615250)))

(declare-fun call!59606 () Bool)

(assert (=> b!950248 (= e!615250 call!59606)))

(declare-fun bm!59601 () Bool)

(assert (=> bm!59601 (= call!59607 (isEmpty!6096 s!10566))))

(declare-fun b!950249 () Bool)

(declare-fun e!615252 () Bool)

(assert (=> b!950249 (= e!615252 (= s!10566 (Cons!9831 (c!154608 (regTwo!5747 r!15766)) Nil!9831)))))

(declare-fun b!950250 () Bool)

(declare-fun e!615251 () Bool)

(assert (=> b!950250 (= e!615251 e!615249)))

(declare-fun res!431863 () Bool)

(assert (=> b!950250 (= res!431863 (matchRSpec!418 (regOne!5747 (regTwo!5747 r!15766)) s!10566))))

(assert (=> b!950250 (=> res!431863 e!615249)))

(declare-fun b!950251 () Bool)

(declare-fun c!154762 () Bool)

(assert (=> b!950251 (= c!154762 ((_ is Union!2617) (regTwo!5747 r!15766)))))

(assert (=> b!950251 (= e!615252 e!615251)))

(declare-fun b!950252 () Bool)

(declare-fun e!615253 () Bool)

(assert (=> b!950252 (= e!615248 e!615253)))

(declare-fun res!431861 () Bool)

(assert (=> b!950252 (= res!431861 (not ((_ is EmptyLang!2617) (regTwo!5747 r!15766))))))

(assert (=> b!950252 (=> (not res!431861) (not e!615253))))

(declare-fun b!950253 () Bool)

(assert (=> b!950253 (= e!615248 call!59607)))

(assert (=> b!950254 (= e!615247 call!59606)))

(declare-fun b!950255 () Bool)

(declare-fun c!154764 () Bool)

(assert (=> b!950255 (= c!154764 ((_ is ElementMatch!2617) (regTwo!5747 r!15766)))))

(assert (=> b!950255 (= e!615253 e!615252)))

(declare-fun bm!59602 () Bool)

(declare-fun c!154765 () Bool)

(assert (=> bm!59602 (= call!59606 (Exists!368 (ite c!154765 lambda!32597 lambda!32598)))))

(declare-fun b!950256 () Bool)

(assert (=> b!950256 (= e!615251 e!615247)))

(assert (=> b!950256 (= c!154765 ((_ is Star!2617) (regTwo!5747 r!15766)))))

(assert (= (and d!283734 c!154763) b!950253))

(assert (= (and d!283734 (not c!154763)) b!950252))

(assert (= (and b!950252 res!431861) b!950255))

(assert (= (and b!950255 c!154764) b!950249))

(assert (= (and b!950255 (not c!154764)) b!950251))

(assert (= (and b!950251 c!154762) b!950250))

(assert (= (and b!950251 (not c!154762)) b!950256))

(assert (= (and b!950250 (not res!431863)) b!950246))

(assert (= (and b!950256 c!154765) b!950247))

(assert (= (and b!950256 (not c!154765)) b!950254))

(assert (= (and b!950247 (not res!431862)) b!950248))

(assert (= (or b!950248 b!950254) bm!59602))

(assert (= (or b!950253 b!950247) bm!59601))

(declare-fun m!1163529 () Bool)

(assert (=> b!950246 m!1163529))

(assert (=> bm!59601 m!1163079))

(declare-fun m!1163531 () Bool)

(assert (=> b!950250 m!1163531))

(declare-fun m!1163533 () Bool)

(assert (=> bm!59602 m!1163533))

(assert (=> b!949719 d!283734))

(declare-fun b!950257 () Bool)

(declare-fun res!431871 () Bool)

(declare-fun e!615260 () Bool)

(assert (=> b!950257 (=> res!431871 e!615260)))

(assert (=> b!950257 (= res!431871 (not (isEmpty!6096 (tail!1296 (_1!6390 (get!3303 lt!344428))))))))

(declare-fun b!950258 () Bool)

(declare-fun e!615258 () Bool)

(assert (=> b!950258 (= e!615258 (= (head!1734 (_1!6390 (get!3303 lt!344428))) (c!154608 EmptyExpr!2617)))))

(declare-fun b!950259 () Bool)

(declare-fun e!615256 () Bool)

(declare-fun e!615254 () Bool)

(assert (=> b!950259 (= e!615256 e!615254)))

(declare-fun c!154766 () Bool)

(assert (=> b!950259 (= c!154766 ((_ is EmptyLang!2617) EmptyExpr!2617))))

(declare-fun b!950260 () Bool)

(declare-fun res!431866 () Bool)

(assert (=> b!950260 (=> (not res!431866) (not e!615258))))

(declare-fun call!59608 () Bool)

(assert (=> b!950260 (= res!431866 (not call!59608))))

(declare-fun bm!59603 () Bool)

(assert (=> bm!59603 (= call!59608 (isEmpty!6096 (_1!6390 (get!3303 lt!344428))))))

(declare-fun b!950261 () Bool)

(declare-fun e!615255 () Bool)

(assert (=> b!950261 (= e!615255 (matchR!1155 (derivativeStep!581 EmptyExpr!2617 (head!1734 (_1!6390 (get!3303 lt!344428)))) (tail!1296 (_1!6390 (get!3303 lt!344428)))))))

(declare-fun b!950262 () Bool)

(declare-fun res!431869 () Bool)

(assert (=> b!950262 (=> (not res!431869) (not e!615258))))

(assert (=> b!950262 (= res!431869 (isEmpty!6096 (tail!1296 (_1!6390 (get!3303 lt!344428)))))))

(declare-fun b!950263 () Bool)

(assert (=> b!950263 (= e!615260 (not (= (head!1734 (_1!6390 (get!3303 lt!344428))) (c!154608 EmptyExpr!2617))))))

(declare-fun d!283736 () Bool)

(assert (=> d!283736 e!615256))

(declare-fun c!154767 () Bool)

(assert (=> d!283736 (= c!154767 ((_ is EmptyExpr!2617) EmptyExpr!2617))))

(declare-fun lt!344489 () Bool)

(assert (=> d!283736 (= lt!344489 e!615255)))

(declare-fun c!154768 () Bool)

(assert (=> d!283736 (= c!154768 (isEmpty!6096 (_1!6390 (get!3303 lt!344428))))))

(assert (=> d!283736 (validRegex!1086 EmptyExpr!2617)))

(assert (=> d!283736 (= (matchR!1155 EmptyExpr!2617 (_1!6390 (get!3303 lt!344428))) lt!344489)))

(declare-fun b!950264 () Bool)

(declare-fun e!615257 () Bool)

(declare-fun e!615259 () Bool)

(assert (=> b!950264 (= e!615257 e!615259)))

(declare-fun res!431864 () Bool)

(assert (=> b!950264 (=> (not res!431864) (not e!615259))))

(assert (=> b!950264 (= res!431864 (not lt!344489))))

(declare-fun b!950265 () Bool)

(assert (=> b!950265 (= e!615259 e!615260)))

(declare-fun res!431868 () Bool)

(assert (=> b!950265 (=> res!431868 e!615260)))

(assert (=> b!950265 (= res!431868 call!59608)))

(declare-fun b!950266 () Bool)

(declare-fun res!431865 () Bool)

(assert (=> b!950266 (=> res!431865 e!615257)))

(assert (=> b!950266 (= res!431865 (not ((_ is ElementMatch!2617) EmptyExpr!2617)))))

(assert (=> b!950266 (= e!615254 e!615257)))

(declare-fun b!950267 () Bool)

(declare-fun res!431870 () Bool)

(assert (=> b!950267 (=> res!431870 e!615257)))

(assert (=> b!950267 (= res!431870 e!615258)))

(declare-fun res!431867 () Bool)

(assert (=> b!950267 (=> (not res!431867) (not e!615258))))

(assert (=> b!950267 (= res!431867 lt!344489)))

(declare-fun b!950268 () Bool)

(assert (=> b!950268 (= e!615256 (= lt!344489 call!59608))))

(declare-fun b!950269 () Bool)

(assert (=> b!950269 (= e!615254 (not lt!344489))))

(declare-fun b!950270 () Bool)

(assert (=> b!950270 (= e!615255 (nullable!772 EmptyExpr!2617))))

(assert (= (and d!283736 c!154768) b!950270))

(assert (= (and d!283736 (not c!154768)) b!950261))

(assert (= (and d!283736 c!154767) b!950268))

(assert (= (and d!283736 (not c!154767)) b!950259))

(assert (= (and b!950259 c!154766) b!950269))

(assert (= (and b!950259 (not c!154766)) b!950266))

(assert (= (and b!950266 (not res!431865)) b!950267))

(assert (= (and b!950267 res!431867) b!950260))

(assert (= (and b!950260 res!431866) b!950262))

(assert (= (and b!950262 res!431869) b!950258))

(assert (= (and b!950267 (not res!431870)) b!950264))

(assert (= (and b!950264 res!431864) b!950265))

(assert (= (and b!950265 (not res!431868)) b!950257))

(assert (= (and b!950257 (not res!431871)) b!950263))

(assert (= (or b!950268 b!950260 b!950265) bm!59603))

(declare-fun m!1163535 () Bool)

(assert (=> d!283736 m!1163535))

(assert (=> d!283736 m!1163127))

(declare-fun m!1163537 () Bool)

(assert (=> b!950262 m!1163537))

(assert (=> b!950262 m!1163537))

(declare-fun m!1163539 () Bool)

(assert (=> b!950262 m!1163539))

(assert (=> bm!59603 m!1163535))

(declare-fun m!1163541 () Bool)

(assert (=> b!950261 m!1163541))

(assert (=> b!950261 m!1163541))

(declare-fun m!1163543 () Bool)

(assert (=> b!950261 m!1163543))

(assert (=> b!950261 m!1163537))

(assert (=> b!950261 m!1163543))

(assert (=> b!950261 m!1163537))

(declare-fun m!1163545 () Bool)

(assert (=> b!950261 m!1163545))

(assert (=> b!950258 m!1163541))

(assert (=> b!950270 m!1163487))

(assert (=> b!950257 m!1163537))

(assert (=> b!950257 m!1163537))

(assert (=> b!950257 m!1163539))

(assert (=> b!950263 m!1163541))

(assert (=> b!949534 d!283736))

(declare-fun d!283738 () Bool)

(assert (=> d!283738 (= (get!3303 lt!344428) (v!19622 lt!344428))))

(assert (=> b!949534 d!283738))

(declare-fun d!283740 () Bool)

(assert (=> d!283740 true))

(assert (=> d!283740 true))

(declare-fun res!431872 () Bool)

(assert (=> d!283740 (= (choose!5918 lambda!32548) res!431872)))

(assert (=> d!283602 d!283740))

(assert (=> b!949536 d!283704))

(declare-fun b!950272 () Bool)

(declare-fun e!615262 () List!9847)

(assert (=> b!950272 (= e!615262 (Cons!9831 (h!15232 (_1!6390 (get!3303 lt!344428))) (++!2627 (t!100893 (_1!6390 (get!3303 lt!344428))) (_2!6390 (get!3303 lt!344428)))))))

(declare-fun d!283742 () Bool)

(declare-fun e!615261 () Bool)

(assert (=> d!283742 e!615261))

(declare-fun res!431874 () Bool)

(assert (=> d!283742 (=> (not res!431874) (not e!615261))))

(declare-fun lt!344490 () List!9847)

(assert (=> d!283742 (= res!431874 (= (content!1397 lt!344490) ((_ map or) (content!1397 (_1!6390 (get!3303 lt!344428))) (content!1397 (_2!6390 (get!3303 lt!344428))))))))

(assert (=> d!283742 (= lt!344490 e!615262)))

(declare-fun c!154769 () Bool)

(assert (=> d!283742 (= c!154769 ((_ is Nil!9831) (_1!6390 (get!3303 lt!344428))))))

(assert (=> d!283742 (= (++!2627 (_1!6390 (get!3303 lt!344428)) (_2!6390 (get!3303 lt!344428))) lt!344490)))

(declare-fun b!950273 () Bool)

(declare-fun res!431873 () Bool)

(assert (=> b!950273 (=> (not res!431873) (not e!615261))))

(assert (=> b!950273 (= res!431873 (= (size!7909 lt!344490) (+ (size!7909 (_1!6390 (get!3303 lt!344428))) (size!7909 (_2!6390 (get!3303 lt!344428))))))))

(declare-fun b!950274 () Bool)

(assert (=> b!950274 (= e!615261 (or (not (= (_2!6390 (get!3303 lt!344428)) Nil!9831)) (= lt!344490 (_1!6390 (get!3303 lt!344428)))))))

(declare-fun b!950271 () Bool)

(assert (=> b!950271 (= e!615262 (_2!6390 (get!3303 lt!344428)))))

(assert (= (and d!283742 c!154769) b!950271))

(assert (= (and d!283742 (not c!154769)) b!950272))

(assert (= (and d!283742 res!431874) b!950273))

(assert (= (and b!950273 res!431873) b!950274))

(declare-fun m!1163547 () Bool)

(assert (=> b!950272 m!1163547))

(declare-fun m!1163549 () Bool)

(assert (=> d!283742 m!1163549))

(declare-fun m!1163551 () Bool)

(assert (=> d!283742 m!1163551))

(declare-fun m!1163553 () Bool)

(assert (=> d!283742 m!1163553))

(declare-fun m!1163555 () Bool)

(assert (=> b!950273 m!1163555))

(declare-fun m!1163557 () Bool)

(assert (=> b!950273 m!1163557))

(declare-fun m!1163559 () Bool)

(assert (=> b!950273 m!1163559))

(assert (=> b!949537 d!283742))

(assert (=> b!949537 d!283738))

(declare-fun d!283744 () Bool)

(declare-fun nullableFct!186 (Regex!2617) Bool)

(assert (=> d!283744 (= (nullable!772 r!15766) (nullableFct!186 r!15766))))

(declare-fun bs!239979 () Bool)

(assert (= bs!239979 d!283744))

(declare-fun m!1163561 () Bool)

(assert (=> bs!239979 m!1163561))

(assert (=> b!949771 d!283744))

(declare-fun d!283746 () Bool)

(assert (=> d!283746 (= (Exists!368 lambda!32571) (choose!5918 lambda!32571))))

(declare-fun bs!239980 () Bool)

(assert (= bs!239980 d!283746))

(declare-fun m!1163563 () Bool)

(assert (=> bs!239980 m!1163563))

(assert (=> d!283596 d!283746))

(declare-fun d!283748 () Bool)

(assert (=> d!283748 (= (Exists!368 lambda!32572) (choose!5918 lambda!32572))))

(declare-fun bs!239981 () Bool)

(assert (= bs!239981 d!283748))

(declare-fun m!1163565 () Bool)

(assert (=> bs!239981 m!1163565))

(assert (=> d!283596 d!283748))

(declare-fun bs!239982 () Bool)

(declare-fun d!283750 () Bool)

(assert (= bs!239982 (and d!283750 b!950233)))

(declare-fun lambda!32603 () Int)

(assert (=> bs!239982 (not (= lambda!32603 lambda!32592))))

(declare-fun bs!239983 () Bool)

(assert (= bs!239983 (and d!283750 b!950254)))

(assert (=> bs!239983 (not (= lambda!32603 lambda!32598))))

(declare-fun bs!239984 () Bool)

(assert (= bs!239984 (and d!283750 b!950239)))

(assert (=> bs!239984 (not (= lambda!32603 lambda!32593))))

(declare-fun bs!239985 () Bool)

(assert (= bs!239985 (and d!283750 b!949721)))

(assert (=> bs!239985 (not (= lambda!32603 lambda!32577))))

(declare-fun bs!239986 () Bool)

(assert (= bs!239986 (and d!283750 d!283596)))

(assert (=> bs!239986 (= lambda!32603 lambda!32571)))

(declare-fun bs!239987 () Bool)

(assert (= bs!239987 (and d!283750 d!283586)))

(assert (=> bs!239987 (= lambda!32603 lambda!32560)))

(declare-fun bs!239988 () Bool)

(assert (= bs!239988 (and d!283750 d!283730)))

(assert (=> bs!239988 (= lambda!32603 lambda!32596)))

(declare-fun bs!239989 () Bool)

(assert (= bs!239989 (and d!283750 b!949727)))

(assert (=> bs!239989 (not (= lambda!32603 lambda!32578))))

(assert (=> bs!239986 (not (= lambda!32603 lambda!32572))))

(declare-fun bs!239990 () Bool)

(assert (= bs!239990 (and d!283750 b!949456)))

(assert (=> bs!239990 (not (= lambda!32603 lambda!32548))))

(declare-fun bs!239991 () Bool)

(assert (= bs!239991 (and d!283750 b!950248)))

(assert (=> bs!239991 (not (= lambda!32603 lambda!32597))))

(assert (=> bs!239990 (= lambda!32603 lambda!32547)))

(assert (=> d!283750 true))

(assert (=> d!283750 true))

(assert (=> d!283750 true))

(declare-fun lambda!32604 () Int)

(assert (=> bs!239982 (not (= lambda!32604 lambda!32592))))

(assert (=> bs!239983 (= (and (= EmptyExpr!2617 (regOne!5746 (regTwo!5747 r!15766))) (= (regTwo!5746 r!15766) (regTwo!5746 (regTwo!5747 r!15766)))) (= lambda!32604 lambda!32598))))

(assert (=> bs!239984 (= (and (= EmptyExpr!2617 (regOne!5746 (regOne!5747 r!15766))) (= (regTwo!5746 r!15766) (regTwo!5746 (regOne!5747 r!15766)))) (= lambda!32604 lambda!32593))))

(assert (=> bs!239985 (not (= lambda!32604 lambda!32577))))

(declare-fun bs!239992 () Bool)

(assert (= bs!239992 d!283750))

(assert (=> bs!239992 (not (= lambda!32604 lambda!32603))))

(assert (=> bs!239986 (not (= lambda!32604 lambda!32571))))

(assert (=> bs!239987 (not (= lambda!32604 lambda!32560))))

(assert (=> bs!239988 (not (= lambda!32604 lambda!32596))))

(assert (=> bs!239989 (= (= EmptyExpr!2617 (regOne!5746 r!15766)) (= lambda!32604 lambda!32578))))

(assert (=> bs!239986 (= lambda!32604 lambda!32572)))

(assert (=> bs!239990 (= lambda!32604 lambda!32548)))

(assert (=> bs!239991 (not (= lambda!32604 lambda!32597))))

(assert (=> bs!239990 (not (= lambda!32604 lambda!32547))))

(assert (=> d!283750 true))

(assert (=> d!283750 true))

(assert (=> d!283750 true))

(assert (=> d!283750 (= (Exists!368 lambda!32603) (Exists!368 lambda!32604))))

(assert (=> d!283750 true))

(declare-fun _$90!804 () Unit!14877)

(assert (=> d!283750 (= (choose!5917 EmptyExpr!2617 (regTwo!5746 r!15766) s!10566) _$90!804)))

(declare-fun m!1163567 () Bool)

(assert (=> bs!239992 m!1163567))

(declare-fun m!1163569 () Bool)

(assert (=> bs!239992 m!1163569))

(assert (=> d!283596 d!283750))

(assert (=> d!283596 d!283708))

(declare-fun b!950283 () Bool)

(declare-fun res!431890 () Bool)

(declare-fun e!615273 () Bool)

(assert (=> b!950283 (=> res!431890 e!615273)))

(assert (=> b!950283 (= res!431890 (not (isEmpty!6096 (tail!1296 (_2!6390 (get!3303 lt!344428))))))))

(declare-fun b!950284 () Bool)

(declare-fun e!615271 () Bool)

(assert (=> b!950284 (= e!615271 (= (head!1734 (_2!6390 (get!3303 lt!344428))) (c!154608 (regTwo!5746 r!15766))))))

(declare-fun b!950285 () Bool)

(declare-fun e!615269 () Bool)

(declare-fun e!615267 () Bool)

(assert (=> b!950285 (= e!615269 e!615267)))

(declare-fun c!154770 () Bool)

(assert (=> b!950285 (= c!154770 ((_ is EmptyLang!2617) (regTwo!5746 r!15766)))))

(declare-fun b!950286 () Bool)

(declare-fun res!431885 () Bool)

(assert (=> b!950286 (=> (not res!431885) (not e!615271))))

(declare-fun call!59609 () Bool)

(assert (=> b!950286 (= res!431885 (not call!59609))))

(declare-fun bm!59604 () Bool)

(assert (=> bm!59604 (= call!59609 (isEmpty!6096 (_2!6390 (get!3303 lt!344428))))))

(declare-fun b!950287 () Bool)

(declare-fun e!615268 () Bool)

(assert (=> b!950287 (= e!615268 (matchR!1155 (derivativeStep!581 (regTwo!5746 r!15766) (head!1734 (_2!6390 (get!3303 lt!344428)))) (tail!1296 (_2!6390 (get!3303 lt!344428)))))))

(declare-fun b!950288 () Bool)

(declare-fun res!431888 () Bool)

(assert (=> b!950288 (=> (not res!431888) (not e!615271))))

(assert (=> b!950288 (= res!431888 (isEmpty!6096 (tail!1296 (_2!6390 (get!3303 lt!344428)))))))

(declare-fun b!950289 () Bool)

(assert (=> b!950289 (= e!615273 (not (= (head!1734 (_2!6390 (get!3303 lt!344428))) (c!154608 (regTwo!5746 r!15766)))))))

(declare-fun d!283752 () Bool)

(assert (=> d!283752 e!615269))

(declare-fun c!154771 () Bool)

(assert (=> d!283752 (= c!154771 ((_ is EmptyExpr!2617) (regTwo!5746 r!15766)))))

(declare-fun lt!344491 () Bool)

(assert (=> d!283752 (= lt!344491 e!615268)))

(declare-fun c!154772 () Bool)

(assert (=> d!283752 (= c!154772 (isEmpty!6096 (_2!6390 (get!3303 lt!344428))))))

(assert (=> d!283752 (validRegex!1086 (regTwo!5746 r!15766))))

(assert (=> d!283752 (= (matchR!1155 (regTwo!5746 r!15766) (_2!6390 (get!3303 lt!344428))) lt!344491)))

(declare-fun b!950290 () Bool)

(declare-fun e!615270 () Bool)

(declare-fun e!615272 () Bool)

(assert (=> b!950290 (= e!615270 e!615272)))

(declare-fun res!431883 () Bool)

(assert (=> b!950290 (=> (not res!431883) (not e!615272))))

(assert (=> b!950290 (= res!431883 (not lt!344491))))

(declare-fun b!950291 () Bool)

(assert (=> b!950291 (= e!615272 e!615273)))

(declare-fun res!431887 () Bool)

(assert (=> b!950291 (=> res!431887 e!615273)))

(assert (=> b!950291 (= res!431887 call!59609)))

(declare-fun b!950292 () Bool)

(declare-fun res!431884 () Bool)

(assert (=> b!950292 (=> res!431884 e!615270)))

(assert (=> b!950292 (= res!431884 (not ((_ is ElementMatch!2617) (regTwo!5746 r!15766))))))

(assert (=> b!950292 (= e!615267 e!615270)))

(declare-fun b!950293 () Bool)

(declare-fun res!431889 () Bool)

(assert (=> b!950293 (=> res!431889 e!615270)))

(assert (=> b!950293 (= res!431889 e!615271)))

(declare-fun res!431886 () Bool)

(assert (=> b!950293 (=> (not res!431886) (not e!615271))))

(assert (=> b!950293 (= res!431886 lt!344491)))

(declare-fun b!950294 () Bool)

(assert (=> b!950294 (= e!615269 (= lt!344491 call!59609))))

(declare-fun b!950295 () Bool)

(assert (=> b!950295 (= e!615267 (not lt!344491))))

(declare-fun b!950296 () Bool)

(assert (=> b!950296 (= e!615268 (nullable!772 (regTwo!5746 r!15766)))))

(assert (= (and d!283752 c!154772) b!950296))

(assert (= (and d!283752 (not c!154772)) b!950287))

(assert (= (and d!283752 c!154771) b!950294))

(assert (= (and d!283752 (not c!154771)) b!950285))

(assert (= (and b!950285 c!154770) b!950295))

(assert (= (and b!950285 (not c!154770)) b!950292))

(assert (= (and b!950292 (not res!431884)) b!950293))

(assert (= (and b!950293 res!431886) b!950286))

(assert (= (and b!950286 res!431885) b!950288))

(assert (= (and b!950288 res!431888) b!950284))

(assert (= (and b!950293 (not res!431889)) b!950290))

(assert (= (and b!950290 res!431883) b!950291))

(assert (= (and b!950291 (not res!431887)) b!950283))

(assert (= (and b!950283 (not res!431890)) b!950289))

(assert (= (or b!950294 b!950286 b!950291) bm!59604))

(declare-fun m!1163571 () Bool)

(assert (=> d!283752 m!1163571))

(assert (=> d!283752 m!1163403))

(declare-fun m!1163573 () Bool)

(assert (=> b!950288 m!1163573))

(assert (=> b!950288 m!1163573))

(declare-fun m!1163575 () Bool)

(assert (=> b!950288 m!1163575))

(assert (=> bm!59604 m!1163571))

(declare-fun m!1163577 () Bool)

(assert (=> b!950287 m!1163577))

(assert (=> b!950287 m!1163577))

(declare-fun m!1163579 () Bool)

(assert (=> b!950287 m!1163579))

(assert (=> b!950287 m!1163573))

(assert (=> b!950287 m!1163579))

(assert (=> b!950287 m!1163573))

(declare-fun m!1163581 () Bool)

(assert (=> b!950287 m!1163581))

(assert (=> b!950284 m!1163577))

(assert (=> b!950296 m!1163409))

(assert (=> b!950283 m!1163573))

(assert (=> b!950283 m!1163573))

(assert (=> b!950283 m!1163575))

(assert (=> b!950289 m!1163577))

(assert (=> b!949539 d!283752))

(assert (=> b!949539 d!283738))

(declare-fun d!283754 () Bool)

(assert (=> d!283754 (= (nullable!772 (reg!2946 r!15766)) (nullableFct!186 (reg!2946 r!15766)))))

(declare-fun bs!239993 () Bool)

(assert (= bs!239993 d!283754))

(declare-fun m!1163583 () Bool)

(assert (=> bs!239993 m!1163583))

(assert (=> b!949798 d!283754))

(declare-fun b!950299 () Bool)

(declare-fun e!615274 () Bool)

(declare-fun tp!292818 () Bool)

(assert (=> b!950299 (= e!615274 tp!292818)))

(declare-fun b!950298 () Bool)

(declare-fun tp!292815 () Bool)

(declare-fun tp!292816 () Bool)

(assert (=> b!950298 (= e!615274 (and tp!292815 tp!292816))))

(declare-fun b!950297 () Bool)

(assert (=> b!950297 (= e!615274 tp_is_empty!4877)))

(assert (=> b!949816 (= tp!292670 e!615274)))

(declare-fun b!950300 () Bool)

(declare-fun tp!292819 () Bool)

(declare-fun tp!292817 () Bool)

(assert (=> b!950300 (= e!615274 (and tp!292819 tp!292817))))

(assert (= (and b!949816 ((_ is ElementMatch!2617) (regOne!5747 (regTwo!5746 r!15766)))) b!950297))

(assert (= (and b!949816 ((_ is Concat!4450) (regOne!5747 (regTwo!5746 r!15766)))) b!950298))

(assert (= (and b!949816 ((_ is Star!2617) (regOne!5747 (regTwo!5746 r!15766)))) b!950299))

(assert (= (and b!949816 ((_ is Union!2617) (regOne!5747 (regTwo!5746 r!15766)))) b!950300))

(declare-fun b!950303 () Bool)

(declare-fun e!615275 () Bool)

(declare-fun tp!292823 () Bool)

(assert (=> b!950303 (= e!615275 tp!292823)))

(declare-fun b!950302 () Bool)

(declare-fun tp!292820 () Bool)

(declare-fun tp!292821 () Bool)

(assert (=> b!950302 (= e!615275 (and tp!292820 tp!292821))))

(declare-fun b!950301 () Bool)

(assert (=> b!950301 (= e!615275 tp_is_empty!4877)))

(assert (=> b!949816 (= tp!292668 e!615275)))

(declare-fun b!950304 () Bool)

(declare-fun tp!292824 () Bool)

(declare-fun tp!292822 () Bool)

(assert (=> b!950304 (= e!615275 (and tp!292824 tp!292822))))

(assert (= (and b!949816 ((_ is ElementMatch!2617) (regTwo!5747 (regTwo!5746 r!15766)))) b!950301))

(assert (= (and b!949816 ((_ is Concat!4450) (regTwo!5747 (regTwo!5746 r!15766)))) b!950302))

(assert (= (and b!949816 ((_ is Star!2617) (regTwo!5747 (regTwo!5746 r!15766)))) b!950303))

(assert (= (and b!949816 ((_ is Union!2617) (regTwo!5747 (regTwo!5746 r!15766)))) b!950304))

(declare-fun b!950307 () Bool)

(declare-fun e!615276 () Bool)

(declare-fun tp!292828 () Bool)

(assert (=> b!950307 (= e!615276 tp!292828)))

(declare-fun b!950306 () Bool)

(declare-fun tp!292825 () Bool)

(declare-fun tp!292826 () Bool)

(assert (=> b!950306 (= e!615276 (and tp!292825 tp!292826))))

(declare-fun b!950305 () Bool)

(assert (=> b!950305 (= e!615276 tp_is_empty!4877)))

(assert (=> b!949811 (= tp!292664 e!615276)))

(declare-fun b!950308 () Bool)

(declare-fun tp!292829 () Bool)

(declare-fun tp!292827 () Bool)

(assert (=> b!950308 (= e!615276 (and tp!292829 tp!292827))))

(assert (= (and b!949811 ((_ is ElementMatch!2617) (reg!2946 (regOne!5746 r!15766)))) b!950305))

(assert (= (and b!949811 ((_ is Concat!4450) (reg!2946 (regOne!5746 r!15766)))) b!950306))

(assert (= (and b!949811 ((_ is Star!2617) (reg!2946 (regOne!5746 r!15766)))) b!950307))

(assert (= (and b!949811 ((_ is Union!2617) (reg!2946 (regOne!5746 r!15766)))) b!950308))

(declare-fun b!950311 () Bool)

(declare-fun e!615277 () Bool)

(declare-fun tp!292833 () Bool)

(assert (=> b!950311 (= e!615277 tp!292833)))

(declare-fun b!950310 () Bool)

(declare-fun tp!292830 () Bool)

(declare-fun tp!292831 () Bool)

(assert (=> b!950310 (= e!615277 (and tp!292830 tp!292831))))

(declare-fun b!950309 () Bool)

(assert (=> b!950309 (= e!615277 tp_is_empty!4877)))

(assert (=> b!949815 (= tp!292669 e!615277)))

(declare-fun b!950312 () Bool)

(declare-fun tp!292834 () Bool)

(declare-fun tp!292832 () Bool)

(assert (=> b!950312 (= e!615277 (and tp!292834 tp!292832))))

(assert (= (and b!949815 ((_ is ElementMatch!2617) (reg!2946 (regTwo!5746 r!15766)))) b!950309))

(assert (= (and b!949815 ((_ is Concat!4450) (reg!2946 (regTwo!5746 r!15766)))) b!950310))

(assert (= (and b!949815 ((_ is Star!2617) (reg!2946 (regTwo!5746 r!15766)))) b!950311))

(assert (= (and b!949815 ((_ is Union!2617) (reg!2946 (regTwo!5746 r!15766)))) b!950312))

(declare-fun b!950315 () Bool)

(declare-fun e!615278 () Bool)

(declare-fun tp!292838 () Bool)

(assert (=> b!950315 (= e!615278 tp!292838)))

(declare-fun b!950314 () Bool)

(declare-fun tp!292835 () Bool)

(declare-fun tp!292836 () Bool)

(assert (=> b!950314 (= e!615278 (and tp!292835 tp!292836))))

(declare-fun b!950313 () Bool)

(assert (=> b!950313 (= e!615278 tp_is_empty!4877)))

(assert (=> b!949810 (= tp!292661 e!615278)))

(declare-fun b!950316 () Bool)

(declare-fun tp!292839 () Bool)

(declare-fun tp!292837 () Bool)

(assert (=> b!950316 (= e!615278 (and tp!292839 tp!292837))))

(assert (= (and b!949810 ((_ is ElementMatch!2617) (regOne!5746 (regOne!5746 r!15766)))) b!950313))

(assert (= (and b!949810 ((_ is Concat!4450) (regOne!5746 (regOne!5746 r!15766)))) b!950314))

(assert (= (and b!949810 ((_ is Star!2617) (regOne!5746 (regOne!5746 r!15766)))) b!950315))

(assert (= (and b!949810 ((_ is Union!2617) (regOne!5746 (regOne!5746 r!15766)))) b!950316))

(declare-fun b!950319 () Bool)

(declare-fun e!615279 () Bool)

(declare-fun tp!292843 () Bool)

(assert (=> b!950319 (= e!615279 tp!292843)))

(declare-fun b!950318 () Bool)

(declare-fun tp!292840 () Bool)

(declare-fun tp!292841 () Bool)

(assert (=> b!950318 (= e!615279 (and tp!292840 tp!292841))))

(declare-fun b!950317 () Bool)

(assert (=> b!950317 (= e!615279 tp_is_empty!4877)))

(assert (=> b!949810 (= tp!292662 e!615279)))

(declare-fun b!950320 () Bool)

(declare-fun tp!292844 () Bool)

(declare-fun tp!292842 () Bool)

(assert (=> b!950320 (= e!615279 (and tp!292844 tp!292842))))

(assert (= (and b!949810 ((_ is ElementMatch!2617) (regTwo!5746 (regOne!5746 r!15766)))) b!950317))

(assert (= (and b!949810 ((_ is Concat!4450) (regTwo!5746 (regOne!5746 r!15766)))) b!950318))

(assert (= (and b!949810 ((_ is Star!2617) (regTwo!5746 (regOne!5746 r!15766)))) b!950319))

(assert (= (and b!949810 ((_ is Union!2617) (regTwo!5746 (regOne!5746 r!15766)))) b!950320))

(declare-fun b!950323 () Bool)

(declare-fun e!615280 () Bool)

(declare-fun tp!292848 () Bool)

(assert (=> b!950323 (= e!615280 tp!292848)))

(declare-fun b!950322 () Bool)

(declare-fun tp!292845 () Bool)

(declare-fun tp!292846 () Bool)

(assert (=> b!950322 (= e!615280 (and tp!292845 tp!292846))))

(declare-fun b!950321 () Bool)

(assert (=> b!950321 (= e!615280 tp_is_empty!4877)))

(assert (=> b!949814 (= tp!292666 e!615280)))

(declare-fun b!950324 () Bool)

(declare-fun tp!292849 () Bool)

(declare-fun tp!292847 () Bool)

(assert (=> b!950324 (= e!615280 (and tp!292849 tp!292847))))

(assert (= (and b!949814 ((_ is ElementMatch!2617) (regOne!5746 (regTwo!5746 r!15766)))) b!950321))

(assert (= (and b!949814 ((_ is Concat!4450) (regOne!5746 (regTwo!5746 r!15766)))) b!950322))

(assert (= (and b!949814 ((_ is Star!2617) (regOne!5746 (regTwo!5746 r!15766)))) b!950323))

(assert (= (and b!949814 ((_ is Union!2617) (regOne!5746 (regTwo!5746 r!15766)))) b!950324))

(declare-fun b!950327 () Bool)

(declare-fun e!615281 () Bool)

(declare-fun tp!292853 () Bool)

(assert (=> b!950327 (= e!615281 tp!292853)))

(declare-fun b!950326 () Bool)

(declare-fun tp!292850 () Bool)

(declare-fun tp!292851 () Bool)

(assert (=> b!950326 (= e!615281 (and tp!292850 tp!292851))))

(declare-fun b!950325 () Bool)

(assert (=> b!950325 (= e!615281 tp_is_empty!4877)))

(assert (=> b!949814 (= tp!292667 e!615281)))

(declare-fun b!950328 () Bool)

(declare-fun tp!292854 () Bool)

(declare-fun tp!292852 () Bool)

(assert (=> b!950328 (= e!615281 (and tp!292854 tp!292852))))

(assert (= (and b!949814 ((_ is ElementMatch!2617) (regTwo!5746 (regTwo!5746 r!15766)))) b!950325))

(assert (= (and b!949814 ((_ is Concat!4450) (regTwo!5746 (regTwo!5746 r!15766)))) b!950326))

(assert (= (and b!949814 ((_ is Star!2617) (regTwo!5746 (regTwo!5746 r!15766)))) b!950327))

(assert (= (and b!949814 ((_ is Union!2617) (regTwo!5746 (regTwo!5746 r!15766)))) b!950328))

(declare-fun b!950329 () Bool)

(declare-fun e!615282 () Bool)

(declare-fun tp!292855 () Bool)

(assert (=> b!950329 (= e!615282 (and tp_is_empty!4877 tp!292855))))

(assert (=> b!949821 (= tp!292673 e!615282)))

(assert (= (and b!949821 ((_ is Cons!9831) (t!100893 (t!100893 s!10566)))) b!950329))

(declare-fun b!950332 () Bool)

(declare-fun e!615283 () Bool)

(declare-fun tp!292859 () Bool)

(assert (=> b!950332 (= e!615283 tp!292859)))

(declare-fun b!950331 () Bool)

(declare-fun tp!292856 () Bool)

(declare-fun tp!292857 () Bool)

(assert (=> b!950331 (= e!615283 (and tp!292856 tp!292857))))

(declare-fun b!950330 () Bool)

(assert (=> b!950330 (= e!615283 tp_is_empty!4877)))

(assert (=> b!949825 (= tp!292678 e!615283)))

(declare-fun b!950333 () Bool)

(declare-fun tp!292860 () Bool)

(declare-fun tp!292858 () Bool)

(assert (=> b!950333 (= e!615283 (and tp!292860 tp!292858))))

(assert (= (and b!949825 ((_ is ElementMatch!2617) (regOne!5747 (reg!2946 r!15766)))) b!950330))

(assert (= (and b!949825 ((_ is Concat!4450) (regOne!5747 (reg!2946 r!15766)))) b!950331))

(assert (= (and b!949825 ((_ is Star!2617) (regOne!5747 (reg!2946 r!15766)))) b!950332))

(assert (= (and b!949825 ((_ is Union!2617) (regOne!5747 (reg!2946 r!15766)))) b!950333))

(declare-fun b!950336 () Bool)

(declare-fun e!615284 () Bool)

(declare-fun tp!292864 () Bool)

(assert (=> b!950336 (= e!615284 tp!292864)))

(declare-fun b!950335 () Bool)

(declare-fun tp!292861 () Bool)

(declare-fun tp!292862 () Bool)

(assert (=> b!950335 (= e!615284 (and tp!292861 tp!292862))))

(declare-fun b!950334 () Bool)

(assert (=> b!950334 (= e!615284 tp_is_empty!4877)))

(assert (=> b!949825 (= tp!292676 e!615284)))

(declare-fun b!950337 () Bool)

(declare-fun tp!292865 () Bool)

(declare-fun tp!292863 () Bool)

(assert (=> b!950337 (= e!615284 (and tp!292865 tp!292863))))

(assert (= (and b!949825 ((_ is ElementMatch!2617) (regTwo!5747 (reg!2946 r!15766)))) b!950334))

(assert (= (and b!949825 ((_ is Concat!4450) (regTwo!5747 (reg!2946 r!15766)))) b!950335))

(assert (= (and b!949825 ((_ is Star!2617) (regTwo!5747 (reg!2946 r!15766)))) b!950336))

(assert (= (and b!949825 ((_ is Union!2617) (regTwo!5747 (reg!2946 r!15766)))) b!950337))

(declare-fun b!950340 () Bool)

(declare-fun e!615285 () Bool)

(declare-fun tp!292869 () Bool)

(assert (=> b!950340 (= e!615285 tp!292869)))

(declare-fun b!950339 () Bool)

(declare-fun tp!292866 () Bool)

(declare-fun tp!292867 () Bool)

(assert (=> b!950339 (= e!615285 (and tp!292866 tp!292867))))

(declare-fun b!950338 () Bool)

(assert (=> b!950338 (= e!615285 tp_is_empty!4877)))

(assert (=> b!949829 (= tp!292683 e!615285)))

(declare-fun b!950341 () Bool)

(declare-fun tp!292870 () Bool)

(declare-fun tp!292868 () Bool)

(assert (=> b!950341 (= e!615285 (and tp!292870 tp!292868))))

(assert (= (and b!949829 ((_ is ElementMatch!2617) (regOne!5747 (regOne!5747 r!15766)))) b!950338))

(assert (= (and b!949829 ((_ is Concat!4450) (regOne!5747 (regOne!5747 r!15766)))) b!950339))

(assert (= (and b!949829 ((_ is Star!2617) (regOne!5747 (regOne!5747 r!15766)))) b!950340))

(assert (= (and b!949829 ((_ is Union!2617) (regOne!5747 (regOne!5747 r!15766)))) b!950341))

(declare-fun b!950344 () Bool)

(declare-fun e!615286 () Bool)

(declare-fun tp!292874 () Bool)

(assert (=> b!950344 (= e!615286 tp!292874)))

(declare-fun b!950343 () Bool)

(declare-fun tp!292871 () Bool)

(declare-fun tp!292872 () Bool)

(assert (=> b!950343 (= e!615286 (and tp!292871 tp!292872))))

(declare-fun b!950342 () Bool)

(assert (=> b!950342 (= e!615286 tp_is_empty!4877)))

(assert (=> b!949829 (= tp!292681 e!615286)))

(declare-fun b!950345 () Bool)

(declare-fun tp!292875 () Bool)

(declare-fun tp!292873 () Bool)

(assert (=> b!950345 (= e!615286 (and tp!292875 tp!292873))))

(assert (= (and b!949829 ((_ is ElementMatch!2617) (regTwo!5747 (regOne!5747 r!15766)))) b!950342))

(assert (= (and b!949829 ((_ is Concat!4450) (regTwo!5747 (regOne!5747 r!15766)))) b!950343))

(assert (= (and b!949829 ((_ is Star!2617) (regTwo!5747 (regOne!5747 r!15766)))) b!950344))

(assert (= (and b!949829 ((_ is Union!2617) (regTwo!5747 (regOne!5747 r!15766)))) b!950345))

(declare-fun b!950348 () Bool)

(declare-fun e!615287 () Bool)

(declare-fun tp!292879 () Bool)

(assert (=> b!950348 (= e!615287 tp!292879)))

(declare-fun b!950347 () Bool)

(declare-fun tp!292876 () Bool)

(declare-fun tp!292877 () Bool)

(assert (=> b!950347 (= e!615287 (and tp!292876 tp!292877))))

(declare-fun b!950346 () Bool)

(assert (=> b!950346 (= e!615287 tp_is_empty!4877)))

(assert (=> b!949824 (= tp!292677 e!615287)))

(declare-fun b!950349 () Bool)

(declare-fun tp!292880 () Bool)

(declare-fun tp!292878 () Bool)

(assert (=> b!950349 (= e!615287 (and tp!292880 tp!292878))))

(assert (= (and b!949824 ((_ is ElementMatch!2617) (reg!2946 (reg!2946 r!15766)))) b!950346))

(assert (= (and b!949824 ((_ is Concat!4450) (reg!2946 (reg!2946 r!15766)))) b!950347))

(assert (= (and b!949824 ((_ is Star!2617) (reg!2946 (reg!2946 r!15766)))) b!950348))

(assert (= (and b!949824 ((_ is Union!2617) (reg!2946 (reg!2946 r!15766)))) b!950349))

(declare-fun b!950352 () Bool)

(declare-fun e!615288 () Bool)

(declare-fun tp!292884 () Bool)

(assert (=> b!950352 (= e!615288 tp!292884)))

(declare-fun b!950351 () Bool)

(declare-fun tp!292881 () Bool)

(declare-fun tp!292882 () Bool)

(assert (=> b!950351 (= e!615288 (and tp!292881 tp!292882))))

(declare-fun b!950350 () Bool)

(assert (=> b!950350 (= e!615288 tp_is_empty!4877)))

(assert (=> b!949833 (= tp!292688 e!615288)))

(declare-fun b!950353 () Bool)

(declare-fun tp!292885 () Bool)

(declare-fun tp!292883 () Bool)

(assert (=> b!950353 (= e!615288 (and tp!292885 tp!292883))))

(assert (= (and b!949833 ((_ is ElementMatch!2617) (regOne!5747 (regTwo!5747 r!15766)))) b!950350))

(assert (= (and b!949833 ((_ is Concat!4450) (regOne!5747 (regTwo!5747 r!15766)))) b!950351))

(assert (= (and b!949833 ((_ is Star!2617) (regOne!5747 (regTwo!5747 r!15766)))) b!950352))

(assert (= (and b!949833 ((_ is Union!2617) (regOne!5747 (regTwo!5747 r!15766)))) b!950353))

(declare-fun b!950356 () Bool)

(declare-fun e!615289 () Bool)

(declare-fun tp!292889 () Bool)

(assert (=> b!950356 (= e!615289 tp!292889)))

(declare-fun b!950355 () Bool)

(declare-fun tp!292886 () Bool)

(declare-fun tp!292887 () Bool)

(assert (=> b!950355 (= e!615289 (and tp!292886 tp!292887))))

(declare-fun b!950354 () Bool)

(assert (=> b!950354 (= e!615289 tp_is_empty!4877)))

(assert (=> b!949833 (= tp!292686 e!615289)))

(declare-fun b!950357 () Bool)

(declare-fun tp!292890 () Bool)

(declare-fun tp!292888 () Bool)

(assert (=> b!950357 (= e!615289 (and tp!292890 tp!292888))))

(assert (= (and b!949833 ((_ is ElementMatch!2617) (regTwo!5747 (regTwo!5747 r!15766)))) b!950354))

(assert (= (and b!949833 ((_ is Concat!4450) (regTwo!5747 (regTwo!5747 r!15766)))) b!950355))

(assert (= (and b!949833 ((_ is Star!2617) (regTwo!5747 (regTwo!5747 r!15766)))) b!950356))

(assert (= (and b!949833 ((_ is Union!2617) (regTwo!5747 (regTwo!5747 r!15766)))) b!950357))

(declare-fun b!950360 () Bool)

(declare-fun e!615290 () Bool)

(declare-fun tp!292894 () Bool)

(assert (=> b!950360 (= e!615290 tp!292894)))

(declare-fun b!950359 () Bool)

(declare-fun tp!292891 () Bool)

(declare-fun tp!292892 () Bool)

(assert (=> b!950359 (= e!615290 (and tp!292891 tp!292892))))

(declare-fun b!950358 () Bool)

(assert (=> b!950358 (= e!615290 tp_is_empty!4877)))

(assert (=> b!949828 (= tp!292682 e!615290)))

(declare-fun b!950361 () Bool)

(declare-fun tp!292895 () Bool)

(declare-fun tp!292893 () Bool)

(assert (=> b!950361 (= e!615290 (and tp!292895 tp!292893))))

(assert (= (and b!949828 ((_ is ElementMatch!2617) (reg!2946 (regOne!5747 r!15766)))) b!950358))

(assert (= (and b!949828 ((_ is Concat!4450) (reg!2946 (regOne!5747 r!15766)))) b!950359))

(assert (= (and b!949828 ((_ is Star!2617) (reg!2946 (regOne!5747 r!15766)))) b!950360))

(assert (= (and b!949828 ((_ is Union!2617) (reg!2946 (regOne!5747 r!15766)))) b!950361))

(declare-fun b!950364 () Bool)

(declare-fun e!615291 () Bool)

(declare-fun tp!292899 () Bool)

(assert (=> b!950364 (= e!615291 tp!292899)))

(declare-fun b!950363 () Bool)

(declare-fun tp!292896 () Bool)

(declare-fun tp!292897 () Bool)

(assert (=> b!950363 (= e!615291 (and tp!292896 tp!292897))))

(declare-fun b!950362 () Bool)

(assert (=> b!950362 (= e!615291 tp_is_empty!4877)))

(assert (=> b!949823 (= tp!292674 e!615291)))

(declare-fun b!950365 () Bool)

(declare-fun tp!292900 () Bool)

(declare-fun tp!292898 () Bool)

(assert (=> b!950365 (= e!615291 (and tp!292900 tp!292898))))

(assert (= (and b!949823 ((_ is ElementMatch!2617) (regOne!5746 (reg!2946 r!15766)))) b!950362))

(assert (= (and b!949823 ((_ is Concat!4450) (regOne!5746 (reg!2946 r!15766)))) b!950363))

(assert (= (and b!949823 ((_ is Star!2617) (regOne!5746 (reg!2946 r!15766)))) b!950364))

(assert (= (and b!949823 ((_ is Union!2617) (regOne!5746 (reg!2946 r!15766)))) b!950365))

(declare-fun b!950368 () Bool)

(declare-fun e!615292 () Bool)

(declare-fun tp!292904 () Bool)

(assert (=> b!950368 (= e!615292 tp!292904)))

(declare-fun b!950367 () Bool)

(declare-fun tp!292901 () Bool)

(declare-fun tp!292902 () Bool)

(assert (=> b!950367 (= e!615292 (and tp!292901 tp!292902))))

(declare-fun b!950366 () Bool)

(assert (=> b!950366 (= e!615292 tp_is_empty!4877)))

(assert (=> b!949823 (= tp!292675 e!615292)))

(declare-fun b!950369 () Bool)

(declare-fun tp!292905 () Bool)

(declare-fun tp!292903 () Bool)

(assert (=> b!950369 (= e!615292 (and tp!292905 tp!292903))))

(assert (= (and b!949823 ((_ is ElementMatch!2617) (regTwo!5746 (reg!2946 r!15766)))) b!950366))

(assert (= (and b!949823 ((_ is Concat!4450) (regTwo!5746 (reg!2946 r!15766)))) b!950367))

(assert (= (and b!949823 ((_ is Star!2617) (regTwo!5746 (reg!2946 r!15766)))) b!950368))

(assert (= (and b!949823 ((_ is Union!2617) (regTwo!5746 (reg!2946 r!15766)))) b!950369))

(declare-fun b!950372 () Bool)

(declare-fun e!615293 () Bool)

(declare-fun tp!292909 () Bool)

(assert (=> b!950372 (= e!615293 tp!292909)))

(declare-fun b!950371 () Bool)

(declare-fun tp!292906 () Bool)

(declare-fun tp!292907 () Bool)

(assert (=> b!950371 (= e!615293 (and tp!292906 tp!292907))))

(declare-fun b!950370 () Bool)

(assert (=> b!950370 (= e!615293 tp_is_empty!4877)))

(assert (=> b!949832 (= tp!292687 e!615293)))

(declare-fun b!950373 () Bool)

(declare-fun tp!292910 () Bool)

(declare-fun tp!292908 () Bool)

(assert (=> b!950373 (= e!615293 (and tp!292910 tp!292908))))

(assert (= (and b!949832 ((_ is ElementMatch!2617) (reg!2946 (regTwo!5747 r!15766)))) b!950370))

(assert (= (and b!949832 ((_ is Concat!4450) (reg!2946 (regTwo!5747 r!15766)))) b!950371))

(assert (= (and b!949832 ((_ is Star!2617) (reg!2946 (regTwo!5747 r!15766)))) b!950372))

(assert (= (and b!949832 ((_ is Union!2617) (reg!2946 (regTwo!5747 r!15766)))) b!950373))

(declare-fun b!950376 () Bool)

(declare-fun e!615294 () Bool)

(declare-fun tp!292914 () Bool)

(assert (=> b!950376 (= e!615294 tp!292914)))

(declare-fun b!950375 () Bool)

(declare-fun tp!292911 () Bool)

(declare-fun tp!292912 () Bool)

(assert (=> b!950375 (= e!615294 (and tp!292911 tp!292912))))

(declare-fun b!950374 () Bool)

(assert (=> b!950374 (= e!615294 tp_is_empty!4877)))

(assert (=> b!949827 (= tp!292679 e!615294)))

(declare-fun b!950377 () Bool)

(declare-fun tp!292915 () Bool)

(declare-fun tp!292913 () Bool)

(assert (=> b!950377 (= e!615294 (and tp!292915 tp!292913))))

(assert (= (and b!949827 ((_ is ElementMatch!2617) (regOne!5746 (regOne!5747 r!15766)))) b!950374))

(assert (= (and b!949827 ((_ is Concat!4450) (regOne!5746 (regOne!5747 r!15766)))) b!950375))

(assert (= (and b!949827 ((_ is Star!2617) (regOne!5746 (regOne!5747 r!15766)))) b!950376))

(assert (= (and b!949827 ((_ is Union!2617) (regOne!5746 (regOne!5747 r!15766)))) b!950377))

(declare-fun b!950380 () Bool)

(declare-fun e!615295 () Bool)

(declare-fun tp!292919 () Bool)

(assert (=> b!950380 (= e!615295 tp!292919)))

(declare-fun b!950379 () Bool)

(declare-fun tp!292916 () Bool)

(declare-fun tp!292917 () Bool)

(assert (=> b!950379 (= e!615295 (and tp!292916 tp!292917))))

(declare-fun b!950378 () Bool)

(assert (=> b!950378 (= e!615295 tp_is_empty!4877)))

(assert (=> b!949827 (= tp!292680 e!615295)))

(declare-fun b!950381 () Bool)

(declare-fun tp!292920 () Bool)

(declare-fun tp!292918 () Bool)

(assert (=> b!950381 (= e!615295 (and tp!292920 tp!292918))))

(assert (= (and b!949827 ((_ is ElementMatch!2617) (regTwo!5746 (regOne!5747 r!15766)))) b!950378))

(assert (= (and b!949827 ((_ is Concat!4450) (regTwo!5746 (regOne!5747 r!15766)))) b!950379))

(assert (= (and b!949827 ((_ is Star!2617) (regTwo!5746 (regOne!5747 r!15766)))) b!950380))

(assert (= (and b!949827 ((_ is Union!2617) (regTwo!5746 (regOne!5747 r!15766)))) b!950381))

(declare-fun b!950384 () Bool)

(declare-fun e!615296 () Bool)

(declare-fun tp!292924 () Bool)

(assert (=> b!950384 (= e!615296 tp!292924)))

(declare-fun b!950383 () Bool)

(declare-fun tp!292921 () Bool)

(declare-fun tp!292922 () Bool)

(assert (=> b!950383 (= e!615296 (and tp!292921 tp!292922))))

(declare-fun b!950382 () Bool)

(assert (=> b!950382 (= e!615296 tp_is_empty!4877)))

(assert (=> b!949812 (= tp!292665 e!615296)))

(declare-fun b!950385 () Bool)

(declare-fun tp!292925 () Bool)

(declare-fun tp!292923 () Bool)

(assert (=> b!950385 (= e!615296 (and tp!292925 tp!292923))))

(assert (= (and b!949812 ((_ is ElementMatch!2617) (regOne!5747 (regOne!5746 r!15766)))) b!950382))

(assert (= (and b!949812 ((_ is Concat!4450) (regOne!5747 (regOne!5746 r!15766)))) b!950383))

(assert (= (and b!949812 ((_ is Star!2617) (regOne!5747 (regOne!5746 r!15766)))) b!950384))

(assert (= (and b!949812 ((_ is Union!2617) (regOne!5747 (regOne!5746 r!15766)))) b!950385))

(declare-fun b!950388 () Bool)

(declare-fun e!615297 () Bool)

(declare-fun tp!292929 () Bool)

(assert (=> b!950388 (= e!615297 tp!292929)))

(declare-fun b!950387 () Bool)

(declare-fun tp!292926 () Bool)

(declare-fun tp!292927 () Bool)

(assert (=> b!950387 (= e!615297 (and tp!292926 tp!292927))))

(declare-fun b!950386 () Bool)

(assert (=> b!950386 (= e!615297 tp_is_empty!4877)))

(assert (=> b!949812 (= tp!292663 e!615297)))

(declare-fun b!950389 () Bool)

(declare-fun tp!292930 () Bool)

(declare-fun tp!292928 () Bool)

(assert (=> b!950389 (= e!615297 (and tp!292930 tp!292928))))

(assert (= (and b!949812 ((_ is ElementMatch!2617) (regTwo!5747 (regOne!5746 r!15766)))) b!950386))

(assert (= (and b!949812 ((_ is Concat!4450) (regTwo!5747 (regOne!5746 r!15766)))) b!950387))

(assert (= (and b!949812 ((_ is Star!2617) (regTwo!5747 (regOne!5746 r!15766)))) b!950388))

(assert (= (and b!949812 ((_ is Union!2617) (regTwo!5747 (regOne!5746 r!15766)))) b!950389))

(declare-fun b!950392 () Bool)

(declare-fun e!615298 () Bool)

(declare-fun tp!292934 () Bool)

(assert (=> b!950392 (= e!615298 tp!292934)))

(declare-fun b!950391 () Bool)

(declare-fun tp!292931 () Bool)

(declare-fun tp!292932 () Bool)

(assert (=> b!950391 (= e!615298 (and tp!292931 tp!292932))))

(declare-fun b!950390 () Bool)

(assert (=> b!950390 (= e!615298 tp_is_empty!4877)))

(assert (=> b!949831 (= tp!292684 e!615298)))

(declare-fun b!950393 () Bool)

(declare-fun tp!292935 () Bool)

(declare-fun tp!292933 () Bool)

(assert (=> b!950393 (= e!615298 (and tp!292935 tp!292933))))

(assert (= (and b!949831 ((_ is ElementMatch!2617) (regOne!5746 (regTwo!5747 r!15766)))) b!950390))

(assert (= (and b!949831 ((_ is Concat!4450) (regOne!5746 (regTwo!5747 r!15766)))) b!950391))

(assert (= (and b!949831 ((_ is Star!2617) (regOne!5746 (regTwo!5747 r!15766)))) b!950392))

(assert (= (and b!949831 ((_ is Union!2617) (regOne!5746 (regTwo!5747 r!15766)))) b!950393))

(declare-fun b!950396 () Bool)

(declare-fun e!615299 () Bool)

(declare-fun tp!292939 () Bool)

(assert (=> b!950396 (= e!615299 tp!292939)))

(declare-fun b!950395 () Bool)

(declare-fun tp!292936 () Bool)

(declare-fun tp!292937 () Bool)

(assert (=> b!950395 (= e!615299 (and tp!292936 tp!292937))))

(declare-fun b!950394 () Bool)

(assert (=> b!950394 (= e!615299 tp_is_empty!4877)))

(assert (=> b!949831 (= tp!292685 e!615299)))

(declare-fun b!950397 () Bool)

(declare-fun tp!292940 () Bool)

(declare-fun tp!292938 () Bool)

(assert (=> b!950397 (= e!615299 (and tp!292940 tp!292938))))

(assert (= (and b!949831 ((_ is ElementMatch!2617) (regTwo!5746 (regTwo!5747 r!15766)))) b!950394))

(assert (= (and b!949831 ((_ is Concat!4450) (regTwo!5746 (regTwo!5747 r!15766)))) b!950395))

(assert (= (and b!949831 ((_ is Star!2617) (regTwo!5746 (regTwo!5747 r!15766)))) b!950396))

(assert (= (and b!949831 ((_ is Union!2617) (regTwo!5746 (regTwo!5747 r!15766)))) b!950397))

(check-sat (not d!283746) (not b!950337) (not b!950148) (not b!950351) (not b!950331) tp_is_empty!4877 (not b!950116) (not b!950250) (not b!950235) (not b!950359) (not b!950326) (not b!950169) (not d!283692) (not d!283732) (not b!950372) (not b!950168) (not d!283696) (not b!950353) (not d!283688) (not b!950341) (not d!283698) (not b!950332) (not b!950302) (not bm!59598) (not b!950383) (not b!950191) (not d!283700) (not b!950377) (not d!283718) (not b!950397) (not b!950304) (not b!950384) (not b!950179) (not b!950318) (not b!950310) (not d!283752) (not b!950356) (not b!950360) (not b!950336) (not b!950387) (not bm!59604) (not b!950287) (not b!950177) (not b!950381) (not b!950160) (not b!950270) (not b!950311) (not b!950246) (not b!950361) (not b!950367) (not b!950129) (not b!950347) (not b!950161) (not b!950152) (not b!950262) (not bm!59578) (not b!950231) (not b!950273) (not b!950300) (not b!950344) (not d!283694) (not b!950373) (not b!950122) (not bm!59601) (not b!950261) (not b!950288) (not b!950284) (not b!950120) (not b!950380) (not b!950153) (not b!950299) (not b!950158) (not b!950298) (not b!950340) (not b!950314) (not b!950289) (not b!950157) (not b!950379) (not b!950357) (not d!283728) (not d!283742) (not b!950369) (not b!950155) (not b!950263) (not b!950355) (not b!950164) (not b!950272) (not b!950306) (not bm!59583) (not b!950307) (not b!950220) (not bm!59592) (not b!950312) (not d!283704) (not b!950388) (not b!950368) (not d!283730) (not b!950352) (not b!950371) (not b!950323) (not b!950329) (not bm!59597) (not b!950339) (not d!283712) (not d!283720) (not b!950117) (not b!950308) (not b!950138) (not bm!59580) (not b!950283) (not b!950364) (not b!950391) (not b!950230) (not b!950328) (not b!950349) (not d!283744) (not b!950348) (not b!950389) (not b!950322) (not b!950392) (not b!950162) (not b!950258) (not b!950393) (not bm!59599) (not d!283706) (not bm!59603) (not d!283750) (not b!950303) (not b!950343) (not d!283754) (not bm!59582) (not b!950395) (not bm!59593) (not d!283748) (not b!950363) (not d!283736) (not b!950178) (not b!950375) (not b!950345) (not b!950320) (not b!950183) (not bm!59600) (not b!950257) (not b!950316) (not b!950396) (not b!950182) (not b!950319) (not b!950376) (not bm!59602) (not bm!59581) (not b!950184) (not b!950170) (not b!950165) (not b!950327) (not b!950296) (not b!950149) (not b!950121) (not b!950335) (not b!950324) (not b!950315) (not b!950385) (not b!950365) (not b!950333))
(check-sat)
