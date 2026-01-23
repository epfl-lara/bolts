; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83986 () Bool)

(assert start!83986)

(declare-fun b!940722 () Bool)

(assert (=> b!940722 true))

(assert (=> b!940722 true))

(assert (=> b!940722 true))

(declare-fun lambda!31648 () Int)

(declare-fun lambda!31647 () Int)

(assert (=> b!940722 (not (= lambda!31648 lambda!31647))))

(assert (=> b!940722 true))

(assert (=> b!940722 true))

(assert (=> b!940722 true))

(declare-fun bs!238721 () Bool)

(declare-fun b!940724 () Bool)

(assert (= bs!238721 (and b!940724 b!940722)))

(declare-fun lambda!31649 () Int)

(declare-datatypes ((C!5732 0))(
  ( (C!5733 (val!3114 Int)) )
))
(declare-datatypes ((Regex!2581 0))(
  ( (ElementMatch!2581 (c!153070 C!5732)) (Concat!4414 (regOne!5674 Regex!2581) (regTwo!5674 Regex!2581)) (EmptyExpr!2581) (Star!2581 (reg!2910 Regex!2581)) (EmptyLang!2581) (Union!2581 (regOne!5675 Regex!2581) (regTwo!5675 Regex!2581)) )
))
(declare-fun lt!342269 () Regex!2581)

(declare-fun lt!342276 () Regex!2581)

(declare-fun r!15766 () Regex!2581)

(declare-fun lt!342272 () Regex!2581)

(assert (=> bs!238721 (= (and (= lt!342276 (reg!2910 r!15766)) (= lt!342269 lt!342272)) (= lambda!31649 lambda!31647))))

(assert (=> bs!238721 (not (= lambda!31649 lambda!31648))))

(assert (=> b!940724 true))

(assert (=> b!940724 true))

(assert (=> b!940724 true))

(declare-fun lambda!31650 () Int)

(assert (=> bs!238721 (not (= lambda!31650 lambda!31647))))

(assert (=> bs!238721 (= (and (= lt!342276 (reg!2910 r!15766)) (= lt!342269 lt!342272)) (= lambda!31650 lambda!31648))))

(assert (=> b!940724 (not (= lambda!31650 lambda!31649))))

(assert (=> b!940724 true))

(assert (=> b!940724 true))

(assert (=> b!940724 true))

(declare-fun b!940723 () Bool)

(declare-fun e!610304 () Bool)

(declare-fun validRegex!1050 (Regex!2581) Bool)

(assert (=> b!940723 (= e!610304 (validRegex!1050 lt!342276))))

(declare-fun e!610302 () Bool)

(assert (=> b!940724 (= e!610302 e!610304)))

(declare-fun res!427277 () Bool)

(assert (=> b!940724 (=> res!427277 e!610304)))

(declare-datatypes ((List!9811 0))(
  ( (Nil!9795) (Cons!9795 (h!15196 C!5732) (t!100857 List!9811)) )
))
(declare-fun s!10566 () List!9811)

(declare-fun isEmpty!6042 (List!9811) Bool)

(assert (=> b!940724 (= res!427277 (isEmpty!6042 s!10566))))

(declare-fun Exists!332 (Int) Bool)

(assert (=> b!940724 (= (Exists!332 lambda!31649) (Exists!332 lambda!31650))))

(declare-datatypes ((Unit!14781 0))(
  ( (Unit!14782) )
))
(declare-fun lt!342274 () Unit!14781)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!76 (Regex!2581 List!9811) Unit!14781)

(assert (=> b!940724 (= lt!342274 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!76 lt!342276 s!10566))))

(declare-fun lt!342267 () Bool)

(assert (=> b!940724 (= lt!342267 (Exists!332 lambda!31649))))

(declare-datatypes ((tuple2!11060 0))(
  ( (tuple2!11061 (_1!6356 List!9811) (_2!6356 List!9811)) )
))
(declare-datatypes ((Option!2172 0))(
  ( (None!2171) (Some!2171 (v!19588 tuple2!11060)) )
))
(declare-fun isDefined!1814 (Option!2172) Bool)

(declare-fun findConcatSeparation!278 (Regex!2581 Regex!2581 List!9811 List!9811 List!9811) Option!2172)

(assert (=> b!940724 (= lt!342267 (isDefined!1814 (findConcatSeparation!278 lt!342276 lt!342269 Nil!9795 s!10566 s!10566)))))

(declare-fun lt!342275 () Unit!14781)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!278 (Regex!2581 Regex!2581 List!9811) Unit!14781)

(assert (=> b!940724 (= lt!342275 (lemmaFindConcatSeparationEquivalentToExists!278 lt!342276 lt!342269 s!10566))))

(declare-fun matchRSpec!382 (Regex!2581 List!9811) Bool)

(assert (=> b!940724 (matchRSpec!382 lt!342269 s!10566)))

(declare-fun lt!342277 () Unit!14781)

(declare-fun mainMatchTheorem!382 (Regex!2581 List!9811) Unit!14781)

(assert (=> b!940724 (= lt!342277 (mainMatchTheorem!382 lt!342269 s!10566))))

(declare-fun b!940725 () Bool)

(declare-fun e!610303 () Bool)

(declare-fun tp_is_empty!4805 () Bool)

(assert (=> b!940725 (= e!610303 tp_is_empty!4805)))

(declare-fun b!940726 () Bool)

(declare-fun e!610305 () Bool)

(declare-fun tp!291128 () Bool)

(assert (=> b!940726 (= e!610305 (and tp_is_empty!4805 tp!291128))))

(declare-fun b!940727 () Bool)

(declare-fun tp!291127 () Bool)

(declare-fun tp!291126 () Bool)

(assert (=> b!940727 (= e!610303 (and tp!291127 tp!291126))))

(declare-fun b!940728 () Bool)

(declare-fun res!427276 () Bool)

(assert (=> b!940728 (=> res!427276 e!610304)))

(assert (=> b!940728 (= res!427276 (not lt!342267))))

(declare-fun b!940729 () Bool)

(declare-fun tp!291123 () Bool)

(assert (=> b!940729 (= e!610303 tp!291123)))

(declare-fun res!427275 () Bool)

(declare-fun e!610301 () Bool)

(assert (=> start!83986 (=> (not res!427275) (not e!610301))))

(assert (=> start!83986 (= res!427275 (validRegex!1050 r!15766))))

(assert (=> start!83986 e!610301))

(assert (=> start!83986 e!610303))

(assert (=> start!83986 e!610305))

(declare-fun e!610300 () Bool)

(assert (=> b!940722 (= e!610300 e!610302)))

(declare-fun res!427274 () Bool)

(assert (=> b!940722 (=> res!427274 e!610302)))

(declare-fun matchR!1119 (Regex!2581 List!9811) Bool)

(assert (=> b!940722 (= res!427274 (not (matchR!1119 lt!342269 s!10566)))))

(assert (=> b!940722 (= lt!342269 (Star!2581 lt!342276))))

(declare-fun removeUselessConcat!250 (Regex!2581) Regex!2581)

(assert (=> b!940722 (= lt!342276 (removeUselessConcat!250 (reg!2910 r!15766)))))

(assert (=> b!940722 (= (Exists!332 lambda!31647) (Exists!332 lambda!31648))))

(declare-fun lt!342270 () Unit!14781)

(assert (=> b!940722 (= lt!342270 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!76 (reg!2910 r!15766) s!10566))))

(assert (=> b!940722 (= (isDefined!1814 (findConcatSeparation!278 (reg!2910 r!15766) lt!342272 Nil!9795 s!10566 s!10566)) (Exists!332 lambda!31647))))

(declare-fun lt!342268 () Unit!14781)

(assert (=> b!940722 (= lt!342268 (lemmaFindConcatSeparationEquivalentToExists!278 (reg!2910 r!15766) lt!342272 s!10566))))

(assert (=> b!940722 (= lt!342272 (Star!2581 (reg!2910 r!15766)))))

(declare-fun b!940730 () Bool)

(declare-fun tp!291125 () Bool)

(declare-fun tp!291124 () Bool)

(assert (=> b!940730 (= e!610303 (and tp!291125 tp!291124))))

(declare-fun b!940731 () Bool)

(assert (=> b!940731 (= e!610301 (not e!610300))))

(declare-fun res!427278 () Bool)

(assert (=> b!940731 (=> res!427278 e!610300)))

(declare-fun lt!342273 () Bool)

(get-info :version)

(assert (=> b!940731 (= res!427278 (or lt!342273 (and ((_ is Concat!4414) r!15766) ((_ is EmptyExpr!2581) (regOne!5674 r!15766))) (and ((_ is Concat!4414) r!15766) ((_ is EmptyExpr!2581) (regTwo!5674 r!15766))) ((_ is Concat!4414) r!15766) ((_ is Union!2581) r!15766) (not ((_ is Star!2581) r!15766))))))

(assert (=> b!940731 (= lt!342273 (matchRSpec!382 r!15766 s!10566))))

(assert (=> b!940731 (= lt!342273 (matchR!1119 r!15766 s!10566))))

(declare-fun lt!342271 () Unit!14781)

(assert (=> b!940731 (= lt!342271 (mainMatchTheorem!382 r!15766 s!10566))))

(assert (= (and start!83986 res!427275) b!940731))

(assert (= (and b!940731 (not res!427278)) b!940722))

(assert (= (and b!940722 (not res!427274)) b!940724))

(assert (= (and b!940724 (not res!427277)) b!940728))

(assert (= (and b!940728 (not res!427276)) b!940723))

(assert (= (and start!83986 ((_ is ElementMatch!2581) r!15766)) b!940725))

(assert (= (and start!83986 ((_ is Concat!4414) r!15766)) b!940727))

(assert (= (and start!83986 ((_ is Star!2581) r!15766)) b!940729))

(assert (= (and start!83986 ((_ is Union!2581) r!15766)) b!940730))

(assert (= (and start!83986 ((_ is Cons!9795) s!10566)) b!940726))

(declare-fun m!1158005 () Bool)

(assert (=> start!83986 m!1158005))

(declare-fun m!1158007 () Bool)

(assert (=> b!940722 m!1158007))

(declare-fun m!1158009 () Bool)

(assert (=> b!940722 m!1158009))

(declare-fun m!1158011 () Bool)

(assert (=> b!940722 m!1158011))

(declare-fun m!1158013 () Bool)

(assert (=> b!940722 m!1158013))

(declare-fun m!1158015 () Bool)

(assert (=> b!940722 m!1158015))

(declare-fun m!1158017 () Bool)

(assert (=> b!940722 m!1158017))

(declare-fun m!1158019 () Bool)

(assert (=> b!940722 m!1158019))

(assert (=> b!940722 m!1158009))

(assert (=> b!940722 m!1158013))

(declare-fun m!1158021 () Bool)

(assert (=> b!940722 m!1158021))

(declare-fun m!1158023 () Bool)

(assert (=> b!940731 m!1158023))

(declare-fun m!1158025 () Bool)

(assert (=> b!940731 m!1158025))

(declare-fun m!1158027 () Bool)

(assert (=> b!940731 m!1158027))

(declare-fun m!1158029 () Bool)

(assert (=> b!940724 m!1158029))

(declare-fun m!1158031 () Bool)

(assert (=> b!940724 m!1158031))

(declare-fun m!1158033 () Bool)

(assert (=> b!940724 m!1158033))

(assert (=> b!940724 m!1158033))

(declare-fun m!1158035 () Bool)

(assert (=> b!940724 m!1158035))

(declare-fun m!1158037 () Bool)

(assert (=> b!940724 m!1158037))

(assert (=> b!940724 m!1158029))

(declare-fun m!1158039 () Bool)

(assert (=> b!940724 m!1158039))

(declare-fun m!1158041 () Bool)

(assert (=> b!940724 m!1158041))

(declare-fun m!1158043 () Bool)

(assert (=> b!940724 m!1158043))

(declare-fun m!1158045 () Bool)

(assert (=> b!940724 m!1158045))

(declare-fun m!1158047 () Bool)

(assert (=> b!940723 m!1158047))

(check-sat (not b!940730) (not b!940723) (not b!940722) (not b!940731) (not b!940727) tp_is_empty!4805 (not b!940729) (not b!940726) (not b!940724) (not start!83986))
(check-sat)
(get-model)

(declare-fun b!940885 () Bool)

(declare-fun e!610397 () Bool)

(declare-fun head!1713 (List!9811) C!5732)

(assert (=> b!940885 (= e!610397 (= (head!1713 s!10566) (c!153070 lt!342269)))))

(declare-fun b!940886 () Bool)

(declare-fun res!427364 () Bool)

(assert (=> b!940886 (=> (not res!427364) (not e!610397))))

(declare-fun tail!1275 (List!9811) List!9811)

(assert (=> b!940886 (= res!427364 (isEmpty!6042 (tail!1275 s!10566)))))

(declare-fun b!940887 () Bool)

(declare-fun e!610400 () Bool)

(declare-fun e!610394 () Bool)

(assert (=> b!940887 (= e!610400 e!610394)))

(declare-fun res!427362 () Bool)

(assert (=> b!940887 (=> res!427362 e!610394)))

(declare-fun call!58599 () Bool)

(assert (=> b!940887 (= res!427362 call!58599)))

(declare-fun d!282476 () Bool)

(declare-fun e!610395 () Bool)

(assert (=> d!282476 e!610395))

(declare-fun c!153106 () Bool)

(assert (=> d!282476 (= c!153106 ((_ is EmptyExpr!2581) lt!342269))))

(declare-fun lt!342286 () Bool)

(declare-fun e!610396 () Bool)

(assert (=> d!282476 (= lt!342286 e!610396)))

(declare-fun c!153107 () Bool)

(assert (=> d!282476 (= c!153107 (isEmpty!6042 s!10566))))

(assert (=> d!282476 (validRegex!1050 lt!342269)))

(assert (=> d!282476 (= (matchR!1119 lt!342269 s!10566) lt!342286)))

(declare-fun b!940888 () Bool)

(declare-fun res!427363 () Bool)

(assert (=> b!940888 (=> res!427363 e!610394)))

(assert (=> b!940888 (= res!427363 (not (isEmpty!6042 (tail!1275 s!10566))))))

(declare-fun b!940889 () Bool)

(declare-fun nullable!751 (Regex!2581) Bool)

(assert (=> b!940889 (= e!610396 (nullable!751 lt!342269))))

(declare-fun b!940890 () Bool)

(declare-fun res!427365 () Bool)

(declare-fun e!610399 () Bool)

(assert (=> b!940890 (=> res!427365 e!610399)))

(assert (=> b!940890 (= res!427365 e!610397)))

(declare-fun res!427359 () Bool)

(assert (=> b!940890 (=> (not res!427359) (not e!610397))))

(assert (=> b!940890 (= res!427359 lt!342286)))

(declare-fun bm!58594 () Bool)

(assert (=> bm!58594 (= call!58599 (isEmpty!6042 s!10566))))

(declare-fun b!940891 () Bool)

(declare-fun res!427358 () Bool)

(assert (=> b!940891 (=> (not res!427358) (not e!610397))))

(assert (=> b!940891 (= res!427358 (not call!58599))))

(declare-fun b!940892 () Bool)

(declare-fun e!610398 () Bool)

(assert (=> b!940892 (= e!610395 e!610398)))

(declare-fun c!153108 () Bool)

(assert (=> b!940892 (= c!153108 ((_ is EmptyLang!2581) lt!342269))))

(declare-fun b!940893 () Bool)

(assert (=> b!940893 (= e!610399 e!610400)))

(declare-fun res!427360 () Bool)

(assert (=> b!940893 (=> (not res!427360) (not e!610400))))

(assert (=> b!940893 (= res!427360 (not lt!342286))))

(declare-fun b!940894 () Bool)

(declare-fun res!427361 () Bool)

(assert (=> b!940894 (=> res!427361 e!610399)))

(assert (=> b!940894 (= res!427361 (not ((_ is ElementMatch!2581) lt!342269)))))

(assert (=> b!940894 (= e!610398 e!610399)))

(declare-fun b!940895 () Bool)

(declare-fun derivativeStep!560 (Regex!2581 C!5732) Regex!2581)

(assert (=> b!940895 (= e!610396 (matchR!1119 (derivativeStep!560 lt!342269 (head!1713 s!10566)) (tail!1275 s!10566)))))

(declare-fun b!940896 () Bool)

(assert (=> b!940896 (= e!610395 (= lt!342286 call!58599))))

(declare-fun b!940897 () Bool)

(assert (=> b!940897 (= e!610398 (not lt!342286))))

(declare-fun b!940898 () Bool)

(assert (=> b!940898 (= e!610394 (not (= (head!1713 s!10566) (c!153070 lt!342269))))))

(assert (= (and d!282476 c!153107) b!940889))

(assert (= (and d!282476 (not c!153107)) b!940895))

(assert (= (and d!282476 c!153106) b!940896))

(assert (= (and d!282476 (not c!153106)) b!940892))

(assert (= (and b!940892 c!153108) b!940897))

(assert (= (and b!940892 (not c!153108)) b!940894))

(assert (= (and b!940894 (not res!427361)) b!940890))

(assert (= (and b!940890 res!427359) b!940891))

(assert (= (and b!940891 res!427358) b!940886))

(assert (= (and b!940886 res!427364) b!940885))

(assert (= (and b!940890 (not res!427365)) b!940893))

(assert (= (and b!940893 res!427360) b!940887))

(assert (= (and b!940887 (not res!427362)) b!940888))

(assert (= (and b!940888 (not res!427363)) b!940898))

(assert (= (or b!940896 b!940887 b!940891) bm!58594))

(declare-fun m!1158081 () Bool)

(assert (=> b!940895 m!1158081))

(assert (=> b!940895 m!1158081))

(declare-fun m!1158083 () Bool)

(assert (=> b!940895 m!1158083))

(declare-fun m!1158085 () Bool)

(assert (=> b!940895 m!1158085))

(assert (=> b!940895 m!1158083))

(assert (=> b!940895 m!1158085))

(declare-fun m!1158087 () Bool)

(assert (=> b!940895 m!1158087))

(assert (=> b!940886 m!1158085))

(assert (=> b!940886 m!1158085))

(declare-fun m!1158089 () Bool)

(assert (=> b!940886 m!1158089))

(assert (=> b!940888 m!1158085))

(assert (=> b!940888 m!1158085))

(assert (=> b!940888 m!1158089))

(assert (=> b!940898 m!1158081))

(assert (=> d!282476 m!1158039))

(declare-fun m!1158091 () Bool)

(assert (=> d!282476 m!1158091))

(assert (=> bm!58594 m!1158039))

(assert (=> b!940885 m!1158081))

(declare-fun m!1158093 () Bool)

(assert (=> b!940889 m!1158093))

(assert (=> b!940722 d!282476))

(declare-fun d!282488 () Bool)

(declare-fun choose!5825 (Int) Bool)

(assert (=> d!282488 (= (Exists!332 lambda!31647) (choose!5825 lambda!31647))))

(declare-fun bs!238738 () Bool)

(assert (= bs!238738 d!282488))

(declare-fun m!1158105 () Bool)

(assert (=> bs!238738 m!1158105))

(assert (=> b!940722 d!282488))

(declare-fun bs!238748 () Bool)

(declare-fun d!282494 () Bool)

(assert (= bs!238748 (and d!282494 b!940722)))

(declare-fun lambda!31666 () Int)

(assert (=> bs!238748 (= (= (Star!2581 (reg!2910 r!15766)) lt!342272) (= lambda!31666 lambda!31647))))

(assert (=> bs!238748 (not (= lambda!31666 lambda!31648))))

(declare-fun bs!238749 () Bool)

(assert (= bs!238749 (and d!282494 b!940724)))

(assert (=> bs!238749 (= (and (= (reg!2910 r!15766) lt!342276) (= (Star!2581 (reg!2910 r!15766)) lt!342269)) (= lambda!31666 lambda!31649))))

(assert (=> bs!238749 (not (= lambda!31666 lambda!31650))))

(assert (=> d!282494 true))

(assert (=> d!282494 true))

(declare-fun lambda!31667 () Int)

(assert (=> bs!238748 (= (= (Star!2581 (reg!2910 r!15766)) lt!342272) (= lambda!31667 lambda!31648))))

(assert (=> bs!238749 (not (= lambda!31667 lambda!31649))))

(declare-fun bs!238750 () Bool)

(assert (= bs!238750 d!282494))

(assert (=> bs!238750 (not (= lambda!31667 lambda!31666))))

(assert (=> bs!238749 (= (and (= (reg!2910 r!15766) lt!342276) (= (Star!2581 (reg!2910 r!15766)) lt!342269)) (= lambda!31667 lambda!31650))))

(assert (=> bs!238748 (not (= lambda!31667 lambda!31647))))

(assert (=> d!282494 true))

(assert (=> d!282494 true))

(assert (=> d!282494 (= (Exists!332 lambda!31666) (Exists!332 lambda!31667))))

(declare-fun lt!342302 () Unit!14781)

(declare-fun choose!5826 (Regex!2581 List!9811) Unit!14781)

(assert (=> d!282494 (= lt!342302 (choose!5826 (reg!2910 r!15766) s!10566))))

(assert (=> d!282494 (validRegex!1050 (reg!2910 r!15766))))

(assert (=> d!282494 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!76 (reg!2910 r!15766) s!10566) lt!342302)))

(declare-fun m!1158135 () Bool)

(assert (=> bs!238750 m!1158135))

(declare-fun m!1158137 () Bool)

(assert (=> bs!238750 m!1158137))

(declare-fun m!1158139 () Bool)

(assert (=> bs!238750 m!1158139))

(declare-fun m!1158141 () Bool)

(assert (=> bs!238750 m!1158141))

(assert (=> b!940722 d!282494))

(declare-fun d!282506 () Bool)

(declare-fun e!610487 () Bool)

(assert (=> d!282506 e!610487))

(declare-fun res!427436 () Bool)

(assert (=> d!282506 (=> res!427436 e!610487)))

(declare-fun e!610486 () Bool)

(assert (=> d!282506 (= res!427436 e!610486)))

(declare-fun res!427435 () Bool)

(assert (=> d!282506 (=> (not res!427435) (not e!610486))))

(declare-fun lt!342321 () Option!2172)

(assert (=> d!282506 (= res!427435 (isDefined!1814 lt!342321))))

(declare-fun e!610485 () Option!2172)

(assert (=> d!282506 (= lt!342321 e!610485)))

(declare-fun c!153143 () Bool)

(declare-fun e!610483 () Bool)

(assert (=> d!282506 (= c!153143 e!610483)))

(declare-fun res!427434 () Bool)

(assert (=> d!282506 (=> (not res!427434) (not e!610483))))

(assert (=> d!282506 (= res!427434 (matchR!1119 (reg!2910 r!15766) Nil!9795))))

(assert (=> d!282506 (validRegex!1050 (reg!2910 r!15766))))

(assert (=> d!282506 (= (findConcatSeparation!278 (reg!2910 r!15766) lt!342272 Nil!9795 s!10566 s!10566) lt!342321)))

(declare-fun b!941070 () Bool)

(assert (=> b!941070 (= e!610487 (not (isDefined!1814 lt!342321)))))

(declare-fun b!941071 () Bool)

(declare-fun e!610484 () Option!2172)

(assert (=> b!941071 (= e!610484 None!2171)))

(declare-fun b!941072 () Bool)

(assert (=> b!941072 (= e!610483 (matchR!1119 lt!342272 s!10566))))

(declare-fun b!941073 () Bool)

(assert (=> b!941073 (= e!610485 (Some!2171 (tuple2!11061 Nil!9795 s!10566)))))

(declare-fun b!941074 () Bool)

(declare-fun res!427438 () Bool)

(assert (=> b!941074 (=> (not res!427438) (not e!610486))))

(declare-fun get!3253 (Option!2172) tuple2!11060)

(assert (=> b!941074 (= res!427438 (matchR!1119 lt!342272 (_2!6356 (get!3253 lt!342321))))))

(declare-fun b!941075 () Bool)

(declare-fun ++!2603 (List!9811 List!9811) List!9811)

(assert (=> b!941075 (= e!610486 (= (++!2603 (_1!6356 (get!3253 lt!342321)) (_2!6356 (get!3253 lt!342321))) s!10566))))

(declare-fun b!941076 () Bool)

(assert (=> b!941076 (= e!610485 e!610484)))

(declare-fun c!153144 () Bool)

(assert (=> b!941076 (= c!153144 ((_ is Nil!9795) s!10566))))

(declare-fun b!941077 () Bool)

(declare-fun lt!342323 () Unit!14781)

(declare-fun lt!342322 () Unit!14781)

(assert (=> b!941077 (= lt!342323 lt!342322)))

(assert (=> b!941077 (= (++!2603 (++!2603 Nil!9795 (Cons!9795 (h!15196 s!10566) Nil!9795)) (t!100857 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!216 (List!9811 C!5732 List!9811 List!9811) Unit!14781)

(assert (=> b!941077 (= lt!342322 (lemmaMoveElementToOtherListKeepsConcatEq!216 Nil!9795 (h!15196 s!10566) (t!100857 s!10566) s!10566))))

(assert (=> b!941077 (= e!610484 (findConcatSeparation!278 (reg!2910 r!15766) lt!342272 (++!2603 Nil!9795 (Cons!9795 (h!15196 s!10566) Nil!9795)) (t!100857 s!10566) s!10566))))

(declare-fun b!941078 () Bool)

(declare-fun res!427437 () Bool)

(assert (=> b!941078 (=> (not res!427437) (not e!610486))))

(assert (=> b!941078 (= res!427437 (matchR!1119 (reg!2910 r!15766) (_1!6356 (get!3253 lt!342321))))))

(assert (= (and d!282506 res!427434) b!941072))

(assert (= (and d!282506 c!153143) b!941073))

(assert (= (and d!282506 (not c!153143)) b!941076))

(assert (= (and b!941076 c!153144) b!941071))

(assert (= (and b!941076 (not c!153144)) b!941077))

(assert (= (and d!282506 res!427435) b!941078))

(assert (= (and b!941078 res!427437) b!941074))

(assert (= (and b!941074 res!427438) b!941075))

(assert (= (and d!282506 (not res!427436)) b!941070))

(declare-fun m!1158199 () Bool)

(assert (=> b!941075 m!1158199))

(declare-fun m!1158201 () Bool)

(assert (=> b!941075 m!1158201))

(assert (=> b!941078 m!1158199))

(declare-fun m!1158203 () Bool)

(assert (=> b!941078 m!1158203))

(declare-fun m!1158205 () Bool)

(assert (=> b!941072 m!1158205))

(assert (=> b!941074 m!1158199))

(declare-fun m!1158207 () Bool)

(assert (=> b!941074 m!1158207))

(declare-fun m!1158209 () Bool)

(assert (=> b!941077 m!1158209))

(assert (=> b!941077 m!1158209))

(declare-fun m!1158211 () Bool)

(assert (=> b!941077 m!1158211))

(declare-fun m!1158213 () Bool)

(assert (=> b!941077 m!1158213))

(assert (=> b!941077 m!1158209))

(declare-fun m!1158215 () Bool)

(assert (=> b!941077 m!1158215))

(declare-fun m!1158217 () Bool)

(assert (=> d!282506 m!1158217))

(declare-fun m!1158219 () Bool)

(assert (=> d!282506 m!1158219))

(assert (=> d!282506 m!1158141))

(assert (=> b!941070 m!1158217))

(assert (=> b!940722 d!282506))

(declare-fun bs!238782 () Bool)

(declare-fun d!282526 () Bool)

(assert (= bs!238782 (and d!282526 b!940722)))

(declare-fun lambda!31679 () Int)

(assert (=> bs!238782 (not (= lambda!31679 lambda!31648))))

(declare-fun bs!238783 () Bool)

(assert (= bs!238783 (and d!282526 b!940724)))

(assert (=> bs!238783 (= (and (= (reg!2910 r!15766) lt!342276) (= lt!342272 lt!342269)) (= lambda!31679 lambda!31649))))

(declare-fun bs!238784 () Bool)

(assert (= bs!238784 (and d!282526 d!282494)))

(assert (=> bs!238784 (= (= lt!342272 (Star!2581 (reg!2910 r!15766))) (= lambda!31679 lambda!31666))))

(assert (=> bs!238784 (not (= lambda!31679 lambda!31667))))

(assert (=> bs!238783 (not (= lambda!31679 lambda!31650))))

(assert (=> bs!238782 (= lambda!31679 lambda!31647)))

(assert (=> d!282526 true))

(assert (=> d!282526 true))

(assert (=> d!282526 true))

(assert (=> d!282526 (= (isDefined!1814 (findConcatSeparation!278 (reg!2910 r!15766) lt!342272 Nil!9795 s!10566 s!10566)) (Exists!332 lambda!31679))))

(declare-fun lt!342326 () Unit!14781)

(declare-fun choose!5827 (Regex!2581 Regex!2581 List!9811) Unit!14781)

(assert (=> d!282526 (= lt!342326 (choose!5827 (reg!2910 r!15766) lt!342272 s!10566))))

(assert (=> d!282526 (validRegex!1050 (reg!2910 r!15766))))

(assert (=> d!282526 (= (lemmaFindConcatSeparationEquivalentToExists!278 (reg!2910 r!15766) lt!342272 s!10566) lt!342326)))

(declare-fun bs!238785 () Bool)

(assert (= bs!238785 d!282526))

(assert (=> bs!238785 m!1158013))

(declare-fun m!1158221 () Bool)

(assert (=> bs!238785 m!1158221))

(declare-fun m!1158223 () Bool)

(assert (=> bs!238785 m!1158223))

(assert (=> bs!238785 m!1158013))

(assert (=> bs!238785 m!1158021))

(assert (=> bs!238785 m!1158141))

(assert (=> b!940722 d!282526))

(declare-fun bm!58623 () Bool)

(declare-fun call!58630 () Regex!2581)

(declare-fun call!58628 () Regex!2581)

(assert (=> bm!58623 (= call!58630 call!58628)))

(declare-fun b!941105 () Bool)

(declare-fun e!610507 () Regex!2581)

(declare-fun call!58632 () Regex!2581)

(assert (=> b!941105 (= e!610507 (Union!2581 call!58632 call!58630))))

(declare-fun bm!58624 () Bool)

(declare-fun call!58631 () Regex!2581)

(assert (=> bm!58624 (= call!58628 call!58631)))

(declare-fun b!941106 () Bool)

(declare-fun e!610504 () Bool)

(declare-fun lt!342329 () Regex!2581)

(assert (=> b!941106 (= e!610504 (= (nullable!751 lt!342329) (nullable!751 (reg!2910 r!15766))))))

(declare-fun bm!58625 () Bool)

(declare-fun call!58629 () Regex!2581)

(assert (=> bm!58625 (= call!58632 call!58629)))

(declare-fun c!153156 () Bool)

(declare-fun bm!58626 () Bool)

(declare-fun c!153157 () Bool)

(assert (=> bm!58626 (= call!58629 (removeUselessConcat!250 (ite (or c!153156 c!153157) (regOne!5674 (reg!2910 r!15766)) (regOne!5675 (reg!2910 r!15766)))))))

(declare-fun b!941107 () Bool)

(declare-fun e!610503 () Regex!2581)

(assert (=> b!941107 (= e!610503 (Concat!4414 call!58632 call!58628))))

(declare-fun b!941108 () Bool)

(assert (=> b!941108 (= c!153157 ((_ is Concat!4414) (reg!2910 r!15766)))))

(declare-fun e!610502 () Regex!2581)

(assert (=> b!941108 (= e!610502 e!610503)))

(declare-fun b!941110 () Bool)

(declare-fun e!610506 () Regex!2581)

(assert (=> b!941110 (= e!610506 call!58631)))

(declare-fun b!941111 () Bool)

(declare-fun c!153159 () Bool)

(assert (=> b!941111 (= c!153159 ((_ is Star!2581) (reg!2910 r!15766)))))

(declare-fun e!610505 () Regex!2581)

(assert (=> b!941111 (= e!610507 e!610505)))

(declare-fun c!153155 () Bool)

(declare-fun bm!58627 () Bool)

(declare-fun c!153158 () Bool)

(assert (=> bm!58627 (= call!58631 (removeUselessConcat!250 (ite (or c!153158 c!153157) (regTwo!5674 (reg!2910 r!15766)) (ite c!153155 (regTwo!5675 (reg!2910 r!15766)) (reg!2910 (reg!2910 r!15766))))))))

(declare-fun b!941112 () Bool)

(assert (=> b!941112 (= e!610502 call!58629)))

(declare-fun b!941113 () Bool)

(assert (=> b!941113 (= e!610505 (reg!2910 r!15766))))

(declare-fun d!282528 () Bool)

(assert (=> d!282528 e!610504))

(declare-fun res!427445 () Bool)

(assert (=> d!282528 (=> (not res!427445) (not e!610504))))

(assert (=> d!282528 (= res!427445 (validRegex!1050 lt!342329))))

(assert (=> d!282528 (= lt!342329 e!610506)))

(assert (=> d!282528 (= c!153158 (and ((_ is Concat!4414) (reg!2910 r!15766)) ((_ is EmptyExpr!2581) (regOne!5674 (reg!2910 r!15766)))))))

(assert (=> d!282528 (validRegex!1050 (reg!2910 r!15766))))

(assert (=> d!282528 (= (removeUselessConcat!250 (reg!2910 r!15766)) lt!342329)))

(declare-fun b!941109 () Bool)

(assert (=> b!941109 (= e!610506 e!610502)))

(assert (=> b!941109 (= c!153156 (and ((_ is Concat!4414) (reg!2910 r!15766)) ((_ is EmptyExpr!2581) (regTwo!5674 (reg!2910 r!15766)))))))

(declare-fun b!941114 () Bool)

(assert (=> b!941114 (= e!610503 e!610507)))

(assert (=> b!941114 (= c!153155 ((_ is Union!2581) (reg!2910 r!15766)))))

(declare-fun b!941115 () Bool)

(assert (=> b!941115 (= e!610505 (Star!2581 call!58630))))

(assert (= (and d!282528 c!153158) b!941110))

(assert (= (and d!282528 (not c!153158)) b!941109))

(assert (= (and b!941109 c!153156) b!941112))

(assert (= (and b!941109 (not c!153156)) b!941108))

(assert (= (and b!941108 c!153157) b!941107))

(assert (= (and b!941108 (not c!153157)) b!941114))

(assert (= (and b!941114 c!153155) b!941105))

(assert (= (and b!941114 (not c!153155)) b!941111))

(assert (= (and b!941111 c!153159) b!941115))

(assert (= (and b!941111 (not c!153159)) b!941113))

(assert (= (or b!941105 b!941115) bm!58623))

(assert (= (or b!941107 bm!58623) bm!58624))

(assert (= (or b!941107 b!941105) bm!58625))

(assert (= (or b!941112 bm!58625) bm!58626))

(assert (= (or b!941110 bm!58624) bm!58627))

(assert (= (and d!282528 res!427445) b!941106))

(declare-fun m!1158225 () Bool)

(assert (=> b!941106 m!1158225))

(declare-fun m!1158227 () Bool)

(assert (=> b!941106 m!1158227))

(declare-fun m!1158229 () Bool)

(assert (=> bm!58626 m!1158229))

(declare-fun m!1158231 () Bool)

(assert (=> bm!58627 m!1158231))

(declare-fun m!1158233 () Bool)

(assert (=> d!282528 m!1158233))

(assert (=> d!282528 m!1158141))

(assert (=> b!940722 d!282528))

(declare-fun d!282530 () Bool)

(assert (=> d!282530 (= (Exists!332 lambda!31648) (choose!5825 lambda!31648))))

(declare-fun bs!238786 () Bool)

(assert (= bs!238786 d!282530))

(declare-fun m!1158235 () Bool)

(assert (=> bs!238786 m!1158235))

(assert (=> b!940722 d!282530))

(declare-fun d!282532 () Bool)

(declare-fun isEmpty!6044 (Option!2172) Bool)

(assert (=> d!282532 (= (isDefined!1814 (findConcatSeparation!278 (reg!2910 r!15766) lt!342272 Nil!9795 s!10566 s!10566)) (not (isEmpty!6044 (findConcatSeparation!278 (reg!2910 r!15766) lt!342272 Nil!9795 s!10566 s!10566))))))

(declare-fun bs!238787 () Bool)

(assert (= bs!238787 d!282532))

(assert (=> bs!238787 m!1158013))

(declare-fun m!1158237 () Bool)

(assert (=> bs!238787 m!1158237))

(assert (=> b!940722 d!282532))

(declare-fun bs!238788 () Bool)

(declare-fun b!941154 () Bool)

(assert (= bs!238788 (and b!941154 b!940722)))

(declare-fun lambda!31684 () Int)

(assert (=> bs!238788 (= (= r!15766 lt!342272) (= lambda!31684 lambda!31648))))

(declare-fun bs!238789 () Bool)

(assert (= bs!238789 (and b!941154 b!940724)))

(assert (=> bs!238789 (not (= lambda!31684 lambda!31649))))

(declare-fun bs!238790 () Bool)

(assert (= bs!238790 (and b!941154 d!282494)))

(assert (=> bs!238790 (not (= lambda!31684 lambda!31666))))

(assert (=> bs!238790 (= (= r!15766 (Star!2581 (reg!2910 r!15766))) (= lambda!31684 lambda!31667))))

(assert (=> bs!238789 (= (and (= (reg!2910 r!15766) lt!342276) (= r!15766 lt!342269)) (= lambda!31684 lambda!31650))))

(declare-fun bs!238791 () Bool)

(assert (= bs!238791 (and b!941154 d!282526)))

(assert (=> bs!238791 (not (= lambda!31684 lambda!31679))))

(assert (=> bs!238788 (not (= lambda!31684 lambda!31647))))

(assert (=> b!941154 true))

(assert (=> b!941154 true))

(declare-fun bs!238792 () Bool)

(declare-fun b!941155 () Bool)

(assert (= bs!238792 (and b!941155 b!940722)))

(declare-fun lambda!31685 () Int)

(assert (=> bs!238792 (not (= lambda!31685 lambda!31648))))

(declare-fun bs!238793 () Bool)

(assert (= bs!238793 (and b!941155 b!940724)))

(assert (=> bs!238793 (not (= lambda!31685 lambda!31649))))

(declare-fun bs!238794 () Bool)

(assert (= bs!238794 (and b!941155 d!282494)))

(assert (=> bs!238794 (not (= lambda!31685 lambda!31666))))

(assert (=> bs!238793 (not (= lambda!31685 lambda!31650))))

(declare-fun bs!238795 () Bool)

(assert (= bs!238795 (and b!941155 d!282526)))

(assert (=> bs!238795 (not (= lambda!31685 lambda!31679))))

(assert (=> bs!238792 (not (= lambda!31685 lambda!31647))))

(declare-fun bs!238796 () Bool)

(assert (= bs!238796 (and b!941155 b!941154)))

(assert (=> bs!238796 (not (= lambda!31685 lambda!31684))))

(assert (=> bs!238794 (not (= lambda!31685 lambda!31667))))

(assert (=> b!941155 true))

(assert (=> b!941155 true))

(declare-fun b!941148 () Bool)

(declare-fun c!153169 () Bool)

(assert (=> b!941148 (= c!153169 ((_ is Union!2581) r!15766))))

(declare-fun e!610529 () Bool)

(declare-fun e!610526 () Bool)

(assert (=> b!941148 (= e!610529 e!610526)))

(declare-fun bm!58632 () Bool)

(declare-fun call!58637 () Bool)

(assert (=> bm!58632 (= call!58637 (isEmpty!6042 s!10566))))

(declare-fun b!941149 () Bool)

(declare-fun e!610532 () Bool)

(declare-fun e!610528 () Bool)

(assert (=> b!941149 (= e!610532 e!610528)))

(declare-fun res!427462 () Bool)

(assert (=> b!941149 (= res!427462 (not ((_ is EmptyLang!2581) r!15766)))))

(assert (=> b!941149 (=> (not res!427462) (not e!610528))))

(declare-fun b!941150 () Bool)

(declare-fun e!610531 () Bool)

(assert (=> b!941150 (= e!610531 (matchRSpec!382 (regTwo!5675 r!15766) s!10566))))

(declare-fun c!153171 () Bool)

(declare-fun bm!58633 () Bool)

(declare-fun call!58638 () Bool)

(assert (=> bm!58633 (= call!58638 (Exists!332 (ite c!153171 lambda!31684 lambda!31685)))))

(declare-fun b!941151 () Bool)

(declare-fun c!153168 () Bool)

(assert (=> b!941151 (= c!153168 ((_ is ElementMatch!2581) r!15766))))

(assert (=> b!941151 (= e!610528 e!610529)))

(declare-fun b!941152 () Bool)

(assert (=> b!941152 (= e!610529 (= s!10566 (Cons!9795 (c!153070 r!15766) Nil!9795)))))

(declare-fun b!941153 () Bool)

(declare-fun e!610527 () Bool)

(assert (=> b!941153 (= e!610526 e!610527)))

(assert (=> b!941153 (= c!153171 ((_ is Star!2581) r!15766))))

(declare-fun d!282534 () Bool)

(declare-fun c!153170 () Bool)

(assert (=> d!282534 (= c!153170 ((_ is EmptyExpr!2581) r!15766))))

(assert (=> d!282534 (= (matchRSpec!382 r!15766 s!10566) e!610532)))

(declare-fun e!610530 () Bool)

(assert (=> b!941154 (= e!610530 call!58638)))

(assert (=> b!941155 (= e!610527 call!58638)))

(declare-fun b!941156 () Bool)

(assert (=> b!941156 (= e!610532 call!58637)))

(declare-fun b!941157 () Bool)

(declare-fun res!427464 () Bool)

(assert (=> b!941157 (=> res!427464 e!610530)))

(assert (=> b!941157 (= res!427464 call!58637)))

(assert (=> b!941157 (= e!610527 e!610530)))

(declare-fun b!941158 () Bool)

(assert (=> b!941158 (= e!610526 e!610531)))

(declare-fun res!427463 () Bool)

(assert (=> b!941158 (= res!427463 (matchRSpec!382 (regOne!5675 r!15766) s!10566))))

(assert (=> b!941158 (=> res!427463 e!610531)))

(assert (= (and d!282534 c!153170) b!941156))

(assert (= (and d!282534 (not c!153170)) b!941149))

(assert (= (and b!941149 res!427462) b!941151))

(assert (= (and b!941151 c!153168) b!941152))

(assert (= (and b!941151 (not c!153168)) b!941148))

(assert (= (and b!941148 c!153169) b!941158))

(assert (= (and b!941148 (not c!153169)) b!941153))

(assert (= (and b!941158 (not res!427463)) b!941150))

(assert (= (and b!941153 c!153171) b!941157))

(assert (= (and b!941153 (not c!153171)) b!941155))

(assert (= (and b!941157 (not res!427464)) b!941154))

(assert (= (or b!941154 b!941155) bm!58633))

(assert (= (or b!941156 b!941157) bm!58632))

(assert (=> bm!58632 m!1158039))

(declare-fun m!1158239 () Bool)

(assert (=> b!941150 m!1158239))

(declare-fun m!1158241 () Bool)

(assert (=> bm!58633 m!1158241))

(declare-fun m!1158243 () Bool)

(assert (=> b!941158 m!1158243))

(assert (=> b!940731 d!282534))

(declare-fun b!941159 () Bool)

(declare-fun e!610536 () Bool)

(assert (=> b!941159 (= e!610536 (= (head!1713 s!10566) (c!153070 r!15766)))))

(declare-fun b!941160 () Bool)

(declare-fun res!427471 () Bool)

(assert (=> b!941160 (=> (not res!427471) (not e!610536))))

(assert (=> b!941160 (= res!427471 (isEmpty!6042 (tail!1275 s!10566)))))

(declare-fun b!941161 () Bool)

(declare-fun e!610539 () Bool)

(declare-fun e!610533 () Bool)

(assert (=> b!941161 (= e!610539 e!610533)))

(declare-fun res!427469 () Bool)

(assert (=> b!941161 (=> res!427469 e!610533)))

(declare-fun call!58639 () Bool)

(assert (=> b!941161 (= res!427469 call!58639)))

(declare-fun d!282536 () Bool)

(declare-fun e!610534 () Bool)

(assert (=> d!282536 e!610534))

(declare-fun c!153172 () Bool)

(assert (=> d!282536 (= c!153172 ((_ is EmptyExpr!2581) r!15766))))

(declare-fun lt!342330 () Bool)

(declare-fun e!610535 () Bool)

(assert (=> d!282536 (= lt!342330 e!610535)))

(declare-fun c!153173 () Bool)

(assert (=> d!282536 (= c!153173 (isEmpty!6042 s!10566))))

(assert (=> d!282536 (validRegex!1050 r!15766)))

(assert (=> d!282536 (= (matchR!1119 r!15766 s!10566) lt!342330)))

(declare-fun b!941162 () Bool)

(declare-fun res!427470 () Bool)

(assert (=> b!941162 (=> res!427470 e!610533)))

(assert (=> b!941162 (= res!427470 (not (isEmpty!6042 (tail!1275 s!10566))))))

(declare-fun b!941163 () Bool)

(assert (=> b!941163 (= e!610535 (nullable!751 r!15766))))

(declare-fun b!941164 () Bool)

(declare-fun res!427472 () Bool)

(declare-fun e!610538 () Bool)

(assert (=> b!941164 (=> res!427472 e!610538)))

(assert (=> b!941164 (= res!427472 e!610536)))

(declare-fun res!427466 () Bool)

(assert (=> b!941164 (=> (not res!427466) (not e!610536))))

(assert (=> b!941164 (= res!427466 lt!342330)))

(declare-fun bm!58634 () Bool)

(assert (=> bm!58634 (= call!58639 (isEmpty!6042 s!10566))))

(declare-fun b!941165 () Bool)

(declare-fun res!427465 () Bool)

(assert (=> b!941165 (=> (not res!427465) (not e!610536))))

(assert (=> b!941165 (= res!427465 (not call!58639))))

(declare-fun b!941166 () Bool)

(declare-fun e!610537 () Bool)

(assert (=> b!941166 (= e!610534 e!610537)))

(declare-fun c!153174 () Bool)

(assert (=> b!941166 (= c!153174 ((_ is EmptyLang!2581) r!15766))))

(declare-fun b!941167 () Bool)

(assert (=> b!941167 (= e!610538 e!610539)))

(declare-fun res!427467 () Bool)

(assert (=> b!941167 (=> (not res!427467) (not e!610539))))

(assert (=> b!941167 (= res!427467 (not lt!342330))))

(declare-fun b!941168 () Bool)

(declare-fun res!427468 () Bool)

(assert (=> b!941168 (=> res!427468 e!610538)))

(assert (=> b!941168 (= res!427468 (not ((_ is ElementMatch!2581) r!15766)))))

(assert (=> b!941168 (= e!610537 e!610538)))

(declare-fun b!941169 () Bool)

(assert (=> b!941169 (= e!610535 (matchR!1119 (derivativeStep!560 r!15766 (head!1713 s!10566)) (tail!1275 s!10566)))))

(declare-fun b!941170 () Bool)

(assert (=> b!941170 (= e!610534 (= lt!342330 call!58639))))

(declare-fun b!941171 () Bool)

(assert (=> b!941171 (= e!610537 (not lt!342330))))

(declare-fun b!941172 () Bool)

(assert (=> b!941172 (= e!610533 (not (= (head!1713 s!10566) (c!153070 r!15766))))))

(assert (= (and d!282536 c!153173) b!941163))

(assert (= (and d!282536 (not c!153173)) b!941169))

(assert (= (and d!282536 c!153172) b!941170))

(assert (= (and d!282536 (not c!153172)) b!941166))

(assert (= (and b!941166 c!153174) b!941171))

(assert (= (and b!941166 (not c!153174)) b!941168))

(assert (= (and b!941168 (not res!427468)) b!941164))

(assert (= (and b!941164 res!427466) b!941165))

(assert (= (and b!941165 res!427465) b!941160))

(assert (= (and b!941160 res!427471) b!941159))

(assert (= (and b!941164 (not res!427472)) b!941167))

(assert (= (and b!941167 res!427467) b!941161))

(assert (= (and b!941161 (not res!427469)) b!941162))

(assert (= (and b!941162 (not res!427470)) b!941172))

(assert (= (or b!941170 b!941161 b!941165) bm!58634))

(assert (=> b!941169 m!1158081))

(assert (=> b!941169 m!1158081))

(declare-fun m!1158245 () Bool)

(assert (=> b!941169 m!1158245))

(assert (=> b!941169 m!1158085))

(assert (=> b!941169 m!1158245))

(assert (=> b!941169 m!1158085))

(declare-fun m!1158247 () Bool)

(assert (=> b!941169 m!1158247))

(assert (=> b!941160 m!1158085))

(assert (=> b!941160 m!1158085))

(assert (=> b!941160 m!1158089))

(assert (=> b!941162 m!1158085))

(assert (=> b!941162 m!1158085))

(assert (=> b!941162 m!1158089))

(assert (=> b!941172 m!1158081))

(assert (=> d!282536 m!1158039))

(assert (=> d!282536 m!1158005))

(assert (=> bm!58634 m!1158039))

(assert (=> b!941159 m!1158081))

(declare-fun m!1158249 () Bool)

(assert (=> b!941163 m!1158249))

(assert (=> b!940731 d!282536))

(declare-fun d!282538 () Bool)

(assert (=> d!282538 (= (matchR!1119 r!15766 s!10566) (matchRSpec!382 r!15766 s!10566))))

(declare-fun lt!342333 () Unit!14781)

(declare-fun choose!5828 (Regex!2581 List!9811) Unit!14781)

(assert (=> d!282538 (= lt!342333 (choose!5828 r!15766 s!10566))))

(assert (=> d!282538 (validRegex!1050 r!15766)))

(assert (=> d!282538 (= (mainMatchTheorem!382 r!15766 s!10566) lt!342333)))

(declare-fun bs!238797 () Bool)

(assert (= bs!238797 d!282538))

(assert (=> bs!238797 m!1158025))

(assert (=> bs!238797 m!1158023))

(declare-fun m!1158251 () Bool)

(assert (=> bs!238797 m!1158251))

(assert (=> bs!238797 m!1158005))

(assert (=> b!940731 d!282538))

(declare-fun b!941191 () Bool)

(declare-fun e!610556 () Bool)

(declare-fun call!58647 () Bool)

(assert (=> b!941191 (= e!610556 call!58647)))

(declare-fun b!941192 () Bool)

(declare-fun e!610555 () Bool)

(assert (=> b!941192 (= e!610555 call!58647)))

(declare-fun b!941193 () Bool)

(declare-fun res!427486 () Bool)

(assert (=> b!941193 (=> (not res!427486) (not e!610555))))

(declare-fun call!58646 () Bool)

(assert (=> b!941193 (= res!427486 call!58646)))

(declare-fun e!610558 () Bool)

(assert (=> b!941193 (= e!610558 e!610555)))

(declare-fun c!153179 () Bool)

(declare-fun bm!58641 () Bool)

(declare-fun c!153180 () Bool)

(declare-fun call!58648 () Bool)

(assert (=> bm!58641 (= call!58648 (validRegex!1050 (ite c!153179 (reg!2910 r!15766) (ite c!153180 (regTwo!5675 r!15766) (regTwo!5674 r!15766)))))))

(declare-fun b!941194 () Bool)

(declare-fun e!610557 () Bool)

(assert (=> b!941194 (= e!610557 call!58648)))

(declare-fun d!282540 () Bool)

(declare-fun res!427483 () Bool)

(declare-fun e!610560 () Bool)

(assert (=> d!282540 (=> res!427483 e!610560)))

(assert (=> d!282540 (= res!427483 ((_ is ElementMatch!2581) r!15766))))

(assert (=> d!282540 (= (validRegex!1050 r!15766) e!610560)))

(declare-fun bm!58642 () Bool)

(assert (=> bm!58642 (= call!58647 call!58648)))

(declare-fun b!941195 () Bool)

(declare-fun res!427487 () Bool)

(declare-fun e!610559 () Bool)

(assert (=> b!941195 (=> res!427487 e!610559)))

(assert (=> b!941195 (= res!427487 (not ((_ is Concat!4414) r!15766)))))

(assert (=> b!941195 (= e!610558 e!610559)))

(declare-fun b!941196 () Bool)

(assert (=> b!941196 (= e!610559 e!610556)))

(declare-fun res!427484 () Bool)

(assert (=> b!941196 (=> (not res!427484) (not e!610556))))

(assert (=> b!941196 (= res!427484 call!58646)))

(declare-fun b!941197 () Bool)

(declare-fun e!610554 () Bool)

(assert (=> b!941197 (= e!610560 e!610554)))

(assert (=> b!941197 (= c!153179 ((_ is Star!2581) r!15766))))

(declare-fun b!941198 () Bool)

(assert (=> b!941198 (= e!610554 e!610558)))

(assert (=> b!941198 (= c!153180 ((_ is Union!2581) r!15766))))

(declare-fun b!941199 () Bool)

(assert (=> b!941199 (= e!610554 e!610557)))

(declare-fun res!427485 () Bool)

(assert (=> b!941199 (= res!427485 (not (nullable!751 (reg!2910 r!15766))))))

(assert (=> b!941199 (=> (not res!427485) (not e!610557))))

(declare-fun bm!58643 () Bool)

(assert (=> bm!58643 (= call!58646 (validRegex!1050 (ite c!153180 (regOne!5675 r!15766) (regOne!5674 r!15766))))))

(assert (= (and d!282540 (not res!427483)) b!941197))

(assert (= (and b!941197 c!153179) b!941199))

(assert (= (and b!941197 (not c!153179)) b!941198))

(assert (= (and b!941199 res!427485) b!941194))

(assert (= (and b!941198 c!153180) b!941193))

(assert (= (and b!941198 (not c!153180)) b!941195))

(assert (= (and b!941193 res!427486) b!941192))

(assert (= (and b!941195 (not res!427487)) b!941196))

(assert (= (and b!941196 res!427484) b!941191))

(assert (= (or b!941192 b!941191) bm!58642))

(assert (= (or b!941193 b!941196) bm!58643))

(assert (= (or b!941194 bm!58642) bm!58641))

(declare-fun m!1158253 () Bool)

(assert (=> bm!58641 m!1158253))

(assert (=> b!941199 m!1158227))

(declare-fun m!1158255 () Bool)

(assert (=> bm!58643 m!1158255))

(assert (=> start!83986 d!282540))

(declare-fun b!941200 () Bool)

(declare-fun e!610563 () Bool)

(declare-fun call!58650 () Bool)

(assert (=> b!941200 (= e!610563 call!58650)))

(declare-fun b!941201 () Bool)

(declare-fun e!610562 () Bool)

(assert (=> b!941201 (= e!610562 call!58650)))

(declare-fun b!941202 () Bool)

(declare-fun res!427491 () Bool)

(assert (=> b!941202 (=> (not res!427491) (not e!610562))))

(declare-fun call!58649 () Bool)

(assert (=> b!941202 (= res!427491 call!58649)))

(declare-fun e!610565 () Bool)

(assert (=> b!941202 (= e!610565 e!610562)))

(declare-fun bm!58644 () Bool)

(declare-fun c!153182 () Bool)

(declare-fun call!58651 () Bool)

(declare-fun c!153181 () Bool)

(assert (=> bm!58644 (= call!58651 (validRegex!1050 (ite c!153181 (reg!2910 lt!342276) (ite c!153182 (regTwo!5675 lt!342276) (regTwo!5674 lt!342276)))))))

(declare-fun b!941203 () Bool)

(declare-fun e!610564 () Bool)

(assert (=> b!941203 (= e!610564 call!58651)))

(declare-fun d!282542 () Bool)

(declare-fun res!427488 () Bool)

(declare-fun e!610567 () Bool)

(assert (=> d!282542 (=> res!427488 e!610567)))

(assert (=> d!282542 (= res!427488 ((_ is ElementMatch!2581) lt!342276))))

(assert (=> d!282542 (= (validRegex!1050 lt!342276) e!610567)))

(declare-fun bm!58645 () Bool)

(assert (=> bm!58645 (= call!58650 call!58651)))

(declare-fun b!941204 () Bool)

(declare-fun res!427492 () Bool)

(declare-fun e!610566 () Bool)

(assert (=> b!941204 (=> res!427492 e!610566)))

(assert (=> b!941204 (= res!427492 (not ((_ is Concat!4414) lt!342276)))))

(assert (=> b!941204 (= e!610565 e!610566)))

(declare-fun b!941205 () Bool)

(assert (=> b!941205 (= e!610566 e!610563)))

(declare-fun res!427489 () Bool)

(assert (=> b!941205 (=> (not res!427489) (not e!610563))))

(assert (=> b!941205 (= res!427489 call!58649)))

(declare-fun b!941206 () Bool)

(declare-fun e!610561 () Bool)

(assert (=> b!941206 (= e!610567 e!610561)))

(assert (=> b!941206 (= c!153181 ((_ is Star!2581) lt!342276))))

(declare-fun b!941207 () Bool)

(assert (=> b!941207 (= e!610561 e!610565)))

(assert (=> b!941207 (= c!153182 ((_ is Union!2581) lt!342276))))

(declare-fun b!941208 () Bool)

(assert (=> b!941208 (= e!610561 e!610564)))

(declare-fun res!427490 () Bool)

(assert (=> b!941208 (= res!427490 (not (nullable!751 (reg!2910 lt!342276))))))

(assert (=> b!941208 (=> (not res!427490) (not e!610564))))

(declare-fun bm!58646 () Bool)

(assert (=> bm!58646 (= call!58649 (validRegex!1050 (ite c!153182 (regOne!5675 lt!342276) (regOne!5674 lt!342276))))))

(assert (= (and d!282542 (not res!427488)) b!941206))

(assert (= (and b!941206 c!153181) b!941208))

(assert (= (and b!941206 (not c!153181)) b!941207))

(assert (= (and b!941208 res!427490) b!941203))

(assert (= (and b!941207 c!153182) b!941202))

(assert (= (and b!941207 (not c!153182)) b!941204))

(assert (= (and b!941202 res!427491) b!941201))

(assert (= (and b!941204 (not res!427492)) b!941205))

(assert (= (and b!941205 res!427489) b!941200))

(assert (= (or b!941201 b!941200) bm!58645))

(assert (= (or b!941202 b!941205) bm!58646))

(assert (= (or b!941203 bm!58645) bm!58644))

(declare-fun m!1158257 () Bool)

(assert (=> bm!58644 m!1158257))

(declare-fun m!1158259 () Bool)

(assert (=> b!941208 m!1158259))

(declare-fun m!1158261 () Bool)

(assert (=> bm!58646 m!1158261))

(assert (=> b!940723 d!282542))

(declare-fun bs!238798 () Bool)

(declare-fun d!282544 () Bool)

(assert (= bs!238798 (and d!282544 b!940722)))

(declare-fun lambda!31686 () Int)

(assert (=> bs!238798 (not (= lambda!31686 lambda!31648))))

(declare-fun bs!238799 () Bool)

(assert (= bs!238799 (and d!282544 b!940724)))

(assert (=> bs!238799 (= lambda!31686 lambda!31649)))

(declare-fun bs!238800 () Bool)

(assert (= bs!238800 (and d!282544 d!282494)))

(assert (=> bs!238800 (= (and (= lt!342276 (reg!2910 r!15766)) (= lt!342269 (Star!2581 (reg!2910 r!15766)))) (= lambda!31686 lambda!31666))))

(declare-fun bs!238801 () Bool)

(assert (= bs!238801 (and d!282544 b!941155)))

(assert (=> bs!238801 (not (= lambda!31686 lambda!31685))))

(assert (=> bs!238799 (not (= lambda!31686 lambda!31650))))

(declare-fun bs!238802 () Bool)

(assert (= bs!238802 (and d!282544 d!282526)))

(assert (=> bs!238802 (= (and (= lt!342276 (reg!2910 r!15766)) (= lt!342269 lt!342272)) (= lambda!31686 lambda!31679))))

(assert (=> bs!238798 (= (and (= lt!342276 (reg!2910 r!15766)) (= lt!342269 lt!342272)) (= lambda!31686 lambda!31647))))

(declare-fun bs!238803 () Bool)

(assert (= bs!238803 (and d!282544 b!941154)))

(assert (=> bs!238803 (not (= lambda!31686 lambda!31684))))

(assert (=> bs!238800 (not (= lambda!31686 lambda!31667))))

(assert (=> d!282544 true))

(assert (=> d!282544 true))

(assert (=> d!282544 true))

(assert (=> d!282544 (= (isDefined!1814 (findConcatSeparation!278 lt!342276 lt!342269 Nil!9795 s!10566 s!10566)) (Exists!332 lambda!31686))))

(declare-fun lt!342334 () Unit!14781)

(assert (=> d!282544 (= lt!342334 (choose!5827 lt!342276 lt!342269 s!10566))))

(assert (=> d!282544 (validRegex!1050 lt!342276)))

(assert (=> d!282544 (= (lemmaFindConcatSeparationEquivalentToExists!278 lt!342276 lt!342269 s!10566) lt!342334)))

(declare-fun bs!238804 () Bool)

(assert (= bs!238804 d!282544))

(assert (=> bs!238804 m!1158033))

(declare-fun m!1158263 () Bool)

(assert (=> bs!238804 m!1158263))

(declare-fun m!1158265 () Bool)

(assert (=> bs!238804 m!1158265))

(assert (=> bs!238804 m!1158033))

(assert (=> bs!238804 m!1158035))

(assert (=> bs!238804 m!1158047))

(assert (=> b!940724 d!282544))

(declare-fun bs!238805 () Bool)

(declare-fun b!941215 () Bool)

(assert (= bs!238805 (and b!941215 b!940722)))

(declare-fun lambda!31687 () Int)

(assert (=> bs!238805 (= (and (= (reg!2910 lt!342269) (reg!2910 r!15766)) (= lt!342269 lt!342272)) (= lambda!31687 lambda!31648))))

(declare-fun bs!238806 () Bool)

(assert (= bs!238806 (and b!941215 b!940724)))

(assert (=> bs!238806 (not (= lambda!31687 lambda!31649))))

(declare-fun bs!238807 () Bool)

(assert (= bs!238807 (and b!941215 d!282494)))

(assert (=> bs!238807 (not (= lambda!31687 lambda!31666))))

(declare-fun bs!238808 () Bool)

(assert (= bs!238808 (and b!941215 d!282544)))

(assert (=> bs!238808 (not (= lambda!31687 lambda!31686))))

(declare-fun bs!238809 () Bool)

(assert (= bs!238809 (and b!941215 b!941155)))

(assert (=> bs!238809 (not (= lambda!31687 lambda!31685))))

(assert (=> bs!238806 (= (= (reg!2910 lt!342269) lt!342276) (= lambda!31687 lambda!31650))))

(declare-fun bs!238810 () Bool)

(assert (= bs!238810 (and b!941215 d!282526)))

(assert (=> bs!238810 (not (= lambda!31687 lambda!31679))))

(assert (=> bs!238805 (not (= lambda!31687 lambda!31647))))

(declare-fun bs!238811 () Bool)

(assert (= bs!238811 (and b!941215 b!941154)))

(assert (=> bs!238811 (= (and (= (reg!2910 lt!342269) (reg!2910 r!15766)) (= lt!342269 r!15766)) (= lambda!31687 lambda!31684))))

(assert (=> bs!238807 (= (and (= (reg!2910 lt!342269) (reg!2910 r!15766)) (= lt!342269 (Star!2581 (reg!2910 r!15766)))) (= lambda!31687 lambda!31667))))

(assert (=> b!941215 true))

(assert (=> b!941215 true))

(declare-fun bs!238812 () Bool)

(declare-fun b!941216 () Bool)

(assert (= bs!238812 (and b!941216 b!940724)))

(declare-fun lambda!31688 () Int)

(assert (=> bs!238812 (not (= lambda!31688 lambda!31649))))

(declare-fun bs!238813 () Bool)

(assert (= bs!238813 (and b!941216 d!282494)))

(assert (=> bs!238813 (not (= lambda!31688 lambda!31666))))

(declare-fun bs!238814 () Bool)

(assert (= bs!238814 (and b!941216 d!282544)))

(assert (=> bs!238814 (not (= lambda!31688 lambda!31686))))

(declare-fun bs!238815 () Bool)

(assert (= bs!238815 (and b!941216 b!941155)))

(assert (=> bs!238815 (= (and (= (regOne!5674 lt!342269) (regOne!5674 r!15766)) (= (regTwo!5674 lt!342269) (regTwo!5674 r!15766))) (= lambda!31688 lambda!31685))))

(declare-fun bs!238816 () Bool)

(assert (= bs!238816 (and b!941216 b!940722)))

(assert (=> bs!238816 (not (= lambda!31688 lambda!31648))))

(declare-fun bs!238817 () Bool)

(assert (= bs!238817 (and b!941216 b!941215)))

(assert (=> bs!238817 (not (= lambda!31688 lambda!31687))))

(assert (=> bs!238812 (not (= lambda!31688 lambda!31650))))

(declare-fun bs!238818 () Bool)

(assert (= bs!238818 (and b!941216 d!282526)))

(assert (=> bs!238818 (not (= lambda!31688 lambda!31679))))

(assert (=> bs!238816 (not (= lambda!31688 lambda!31647))))

(declare-fun bs!238819 () Bool)

(assert (= bs!238819 (and b!941216 b!941154)))

(assert (=> bs!238819 (not (= lambda!31688 lambda!31684))))

(assert (=> bs!238813 (not (= lambda!31688 lambda!31667))))

(assert (=> b!941216 true))

(assert (=> b!941216 true))

(declare-fun b!941209 () Bool)

(declare-fun c!153184 () Bool)

(assert (=> b!941209 (= c!153184 ((_ is Union!2581) lt!342269))))

(declare-fun e!610571 () Bool)

(declare-fun e!610568 () Bool)

(assert (=> b!941209 (= e!610571 e!610568)))

(declare-fun bm!58647 () Bool)

(declare-fun call!58652 () Bool)

(assert (=> bm!58647 (= call!58652 (isEmpty!6042 s!10566))))

(declare-fun b!941210 () Bool)

(declare-fun e!610574 () Bool)

(declare-fun e!610570 () Bool)

(assert (=> b!941210 (= e!610574 e!610570)))

(declare-fun res!427493 () Bool)

(assert (=> b!941210 (= res!427493 (not ((_ is EmptyLang!2581) lt!342269)))))

(assert (=> b!941210 (=> (not res!427493) (not e!610570))))

(declare-fun b!941211 () Bool)

(declare-fun e!610573 () Bool)

(assert (=> b!941211 (= e!610573 (matchRSpec!382 (regTwo!5675 lt!342269) s!10566))))

(declare-fun c!153186 () Bool)

(declare-fun bm!58648 () Bool)

(declare-fun call!58653 () Bool)

(assert (=> bm!58648 (= call!58653 (Exists!332 (ite c!153186 lambda!31687 lambda!31688)))))

(declare-fun b!941212 () Bool)

(declare-fun c!153183 () Bool)

(assert (=> b!941212 (= c!153183 ((_ is ElementMatch!2581) lt!342269))))

(assert (=> b!941212 (= e!610570 e!610571)))

(declare-fun b!941213 () Bool)

(assert (=> b!941213 (= e!610571 (= s!10566 (Cons!9795 (c!153070 lt!342269) Nil!9795)))))

(declare-fun b!941214 () Bool)

(declare-fun e!610569 () Bool)

(assert (=> b!941214 (= e!610568 e!610569)))

(assert (=> b!941214 (= c!153186 ((_ is Star!2581) lt!342269))))

(declare-fun d!282546 () Bool)

(declare-fun c!153185 () Bool)

(assert (=> d!282546 (= c!153185 ((_ is EmptyExpr!2581) lt!342269))))

(assert (=> d!282546 (= (matchRSpec!382 lt!342269 s!10566) e!610574)))

(declare-fun e!610572 () Bool)

(assert (=> b!941215 (= e!610572 call!58653)))

(assert (=> b!941216 (= e!610569 call!58653)))

(declare-fun b!941217 () Bool)

(assert (=> b!941217 (= e!610574 call!58652)))

(declare-fun b!941218 () Bool)

(declare-fun res!427495 () Bool)

(assert (=> b!941218 (=> res!427495 e!610572)))

(assert (=> b!941218 (= res!427495 call!58652)))

(assert (=> b!941218 (= e!610569 e!610572)))

(declare-fun b!941219 () Bool)

(assert (=> b!941219 (= e!610568 e!610573)))

(declare-fun res!427494 () Bool)

(assert (=> b!941219 (= res!427494 (matchRSpec!382 (regOne!5675 lt!342269) s!10566))))

(assert (=> b!941219 (=> res!427494 e!610573)))

(assert (= (and d!282546 c!153185) b!941217))

(assert (= (and d!282546 (not c!153185)) b!941210))

(assert (= (and b!941210 res!427493) b!941212))

(assert (= (and b!941212 c!153183) b!941213))

(assert (= (and b!941212 (not c!153183)) b!941209))

(assert (= (and b!941209 c!153184) b!941219))

(assert (= (and b!941209 (not c!153184)) b!941214))

(assert (= (and b!941219 (not res!427494)) b!941211))

(assert (= (and b!941214 c!153186) b!941218))

(assert (= (and b!941214 (not c!153186)) b!941216))

(assert (= (and b!941218 (not res!427495)) b!941215))

(assert (= (or b!941215 b!941216) bm!58648))

(assert (= (or b!941217 b!941218) bm!58647))

(assert (=> bm!58647 m!1158039))

(declare-fun m!1158267 () Bool)

(assert (=> b!941211 m!1158267))

(declare-fun m!1158269 () Bool)

(assert (=> bm!58648 m!1158269))

(declare-fun m!1158271 () Bool)

(assert (=> b!941219 m!1158271))

(assert (=> b!940724 d!282546))

(declare-fun bs!238820 () Bool)

(declare-fun d!282548 () Bool)

(assert (= bs!238820 (and d!282548 b!940724)))

(declare-fun lambda!31689 () Int)

(assert (=> bs!238820 (= (= (Star!2581 lt!342276) lt!342269) (= lambda!31689 lambda!31649))))

(declare-fun bs!238821 () Bool)

(assert (= bs!238821 (and d!282548 d!282494)))

(assert (=> bs!238821 (= (and (= lt!342276 (reg!2910 r!15766)) (= (Star!2581 lt!342276) (Star!2581 (reg!2910 r!15766)))) (= lambda!31689 lambda!31666))))

(declare-fun bs!238822 () Bool)

(assert (= bs!238822 (and d!282548 b!941155)))

(assert (=> bs!238822 (not (= lambda!31689 lambda!31685))))

(declare-fun bs!238823 () Bool)

(assert (= bs!238823 (and d!282548 b!940722)))

(assert (=> bs!238823 (not (= lambda!31689 lambda!31648))))

(declare-fun bs!238824 () Bool)

(assert (= bs!238824 (and d!282548 b!941215)))

(assert (=> bs!238824 (not (= lambda!31689 lambda!31687))))

(assert (=> bs!238820 (not (= lambda!31689 lambda!31650))))

(declare-fun bs!238825 () Bool)

(assert (= bs!238825 (and d!282548 d!282526)))

(assert (=> bs!238825 (= (and (= lt!342276 (reg!2910 r!15766)) (= (Star!2581 lt!342276) lt!342272)) (= lambda!31689 lambda!31679))))

(assert (=> bs!238823 (= (and (= lt!342276 (reg!2910 r!15766)) (= (Star!2581 lt!342276) lt!342272)) (= lambda!31689 lambda!31647))))

(declare-fun bs!238826 () Bool)

(assert (= bs!238826 (and d!282548 d!282544)))

(assert (=> bs!238826 (= (= (Star!2581 lt!342276) lt!342269) (= lambda!31689 lambda!31686))))

(declare-fun bs!238827 () Bool)

(assert (= bs!238827 (and d!282548 b!941216)))

(assert (=> bs!238827 (not (= lambda!31689 lambda!31688))))

(declare-fun bs!238828 () Bool)

(assert (= bs!238828 (and d!282548 b!941154)))

(assert (=> bs!238828 (not (= lambda!31689 lambda!31684))))

(assert (=> bs!238821 (not (= lambda!31689 lambda!31667))))

(assert (=> d!282548 true))

(assert (=> d!282548 true))

(declare-fun bs!238829 () Bool)

(assert (= bs!238829 d!282548))

(declare-fun lambda!31690 () Int)

(assert (=> bs!238829 (not (= lambda!31690 lambda!31689))))

(assert (=> bs!238820 (not (= lambda!31690 lambda!31649))))

(assert (=> bs!238821 (not (= lambda!31690 lambda!31666))))

(assert (=> bs!238822 (not (= lambda!31690 lambda!31685))))

(assert (=> bs!238823 (= (and (= lt!342276 (reg!2910 r!15766)) (= (Star!2581 lt!342276) lt!342272)) (= lambda!31690 lambda!31648))))

(assert (=> bs!238824 (= (and (= lt!342276 (reg!2910 lt!342269)) (= (Star!2581 lt!342276) lt!342269)) (= lambda!31690 lambda!31687))))

(assert (=> bs!238820 (= (= (Star!2581 lt!342276) lt!342269) (= lambda!31690 lambda!31650))))

(assert (=> bs!238825 (not (= lambda!31690 lambda!31679))))

(assert (=> bs!238823 (not (= lambda!31690 lambda!31647))))

(assert (=> bs!238826 (not (= lambda!31690 lambda!31686))))

(assert (=> bs!238827 (not (= lambda!31690 lambda!31688))))

(assert (=> bs!238828 (= (and (= lt!342276 (reg!2910 r!15766)) (= (Star!2581 lt!342276) r!15766)) (= lambda!31690 lambda!31684))))

(assert (=> bs!238821 (= (and (= lt!342276 (reg!2910 r!15766)) (= (Star!2581 lt!342276) (Star!2581 (reg!2910 r!15766)))) (= lambda!31690 lambda!31667))))

(assert (=> d!282548 true))

(assert (=> d!282548 true))

(assert (=> d!282548 (= (Exists!332 lambda!31689) (Exists!332 lambda!31690))))

(declare-fun lt!342335 () Unit!14781)

(assert (=> d!282548 (= lt!342335 (choose!5826 lt!342276 s!10566))))

(assert (=> d!282548 (validRegex!1050 lt!342276)))

(assert (=> d!282548 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!76 lt!342276 s!10566) lt!342335)))

(declare-fun m!1158273 () Bool)

(assert (=> bs!238829 m!1158273))

(declare-fun m!1158275 () Bool)

(assert (=> bs!238829 m!1158275))

(declare-fun m!1158277 () Bool)

(assert (=> bs!238829 m!1158277))

(assert (=> bs!238829 m!1158047))

(assert (=> b!940724 d!282548))

(declare-fun d!282550 () Bool)

(assert (=> d!282550 (= (matchR!1119 lt!342269 s!10566) (matchRSpec!382 lt!342269 s!10566))))

(declare-fun lt!342336 () Unit!14781)

(assert (=> d!282550 (= lt!342336 (choose!5828 lt!342269 s!10566))))

(assert (=> d!282550 (validRegex!1050 lt!342269)))

(assert (=> d!282550 (= (mainMatchTheorem!382 lt!342269 s!10566) lt!342336)))

(declare-fun bs!238830 () Bool)

(assert (= bs!238830 d!282550))

(assert (=> bs!238830 m!1158011))

(assert (=> bs!238830 m!1158043))

(declare-fun m!1158279 () Bool)

(assert (=> bs!238830 m!1158279))

(assert (=> bs!238830 m!1158091))

(assert (=> b!940724 d!282550))

(declare-fun d!282552 () Bool)

(assert (=> d!282552 (= (Exists!332 lambda!31650) (choose!5825 lambda!31650))))

(declare-fun bs!238831 () Bool)

(assert (= bs!238831 d!282552))

(declare-fun m!1158281 () Bool)

(assert (=> bs!238831 m!1158281))

(assert (=> b!940724 d!282552))

(declare-fun d!282554 () Bool)

(assert (=> d!282554 (= (isEmpty!6042 s!10566) ((_ is Nil!9795) s!10566))))

(assert (=> b!940724 d!282554))

(declare-fun d!282556 () Bool)

(declare-fun e!610579 () Bool)

(assert (=> d!282556 e!610579))

(declare-fun res!427498 () Bool)

(assert (=> d!282556 (=> res!427498 e!610579)))

(declare-fun e!610578 () Bool)

(assert (=> d!282556 (= res!427498 e!610578)))

(declare-fun res!427497 () Bool)

(assert (=> d!282556 (=> (not res!427497) (not e!610578))))

(declare-fun lt!342337 () Option!2172)

(assert (=> d!282556 (= res!427497 (isDefined!1814 lt!342337))))

(declare-fun e!610577 () Option!2172)

(assert (=> d!282556 (= lt!342337 e!610577)))

(declare-fun c!153187 () Bool)

(declare-fun e!610575 () Bool)

(assert (=> d!282556 (= c!153187 e!610575)))

(declare-fun res!427496 () Bool)

(assert (=> d!282556 (=> (not res!427496) (not e!610575))))

(assert (=> d!282556 (= res!427496 (matchR!1119 lt!342276 Nil!9795))))

(assert (=> d!282556 (validRegex!1050 lt!342276)))

(assert (=> d!282556 (= (findConcatSeparation!278 lt!342276 lt!342269 Nil!9795 s!10566 s!10566) lt!342337)))

(declare-fun b!941220 () Bool)

(assert (=> b!941220 (= e!610579 (not (isDefined!1814 lt!342337)))))

(declare-fun b!941221 () Bool)

(declare-fun e!610576 () Option!2172)

(assert (=> b!941221 (= e!610576 None!2171)))

(declare-fun b!941222 () Bool)

(assert (=> b!941222 (= e!610575 (matchR!1119 lt!342269 s!10566))))

(declare-fun b!941223 () Bool)

(assert (=> b!941223 (= e!610577 (Some!2171 (tuple2!11061 Nil!9795 s!10566)))))

(declare-fun b!941224 () Bool)

(declare-fun res!427500 () Bool)

(assert (=> b!941224 (=> (not res!427500) (not e!610578))))

(assert (=> b!941224 (= res!427500 (matchR!1119 lt!342269 (_2!6356 (get!3253 lt!342337))))))

(declare-fun b!941225 () Bool)

(assert (=> b!941225 (= e!610578 (= (++!2603 (_1!6356 (get!3253 lt!342337)) (_2!6356 (get!3253 lt!342337))) s!10566))))

(declare-fun b!941226 () Bool)

(assert (=> b!941226 (= e!610577 e!610576)))

(declare-fun c!153188 () Bool)

(assert (=> b!941226 (= c!153188 ((_ is Nil!9795) s!10566))))

(declare-fun b!941227 () Bool)

(declare-fun lt!342339 () Unit!14781)

(declare-fun lt!342338 () Unit!14781)

(assert (=> b!941227 (= lt!342339 lt!342338)))

(assert (=> b!941227 (= (++!2603 (++!2603 Nil!9795 (Cons!9795 (h!15196 s!10566) Nil!9795)) (t!100857 s!10566)) s!10566)))

(assert (=> b!941227 (= lt!342338 (lemmaMoveElementToOtherListKeepsConcatEq!216 Nil!9795 (h!15196 s!10566) (t!100857 s!10566) s!10566))))

(assert (=> b!941227 (= e!610576 (findConcatSeparation!278 lt!342276 lt!342269 (++!2603 Nil!9795 (Cons!9795 (h!15196 s!10566) Nil!9795)) (t!100857 s!10566) s!10566))))

(declare-fun b!941228 () Bool)

(declare-fun res!427499 () Bool)

(assert (=> b!941228 (=> (not res!427499) (not e!610578))))

(assert (=> b!941228 (= res!427499 (matchR!1119 lt!342276 (_1!6356 (get!3253 lt!342337))))))

(assert (= (and d!282556 res!427496) b!941222))

(assert (= (and d!282556 c!153187) b!941223))

(assert (= (and d!282556 (not c!153187)) b!941226))

(assert (= (and b!941226 c!153188) b!941221))

(assert (= (and b!941226 (not c!153188)) b!941227))

(assert (= (and d!282556 res!427497) b!941228))

(assert (= (and b!941228 res!427499) b!941224))

(assert (= (and b!941224 res!427500) b!941225))

(assert (= (and d!282556 (not res!427498)) b!941220))

(declare-fun m!1158283 () Bool)

(assert (=> b!941225 m!1158283))

(declare-fun m!1158285 () Bool)

(assert (=> b!941225 m!1158285))

(assert (=> b!941228 m!1158283))

(declare-fun m!1158287 () Bool)

(assert (=> b!941228 m!1158287))

(assert (=> b!941222 m!1158011))

(assert (=> b!941224 m!1158283))

(declare-fun m!1158289 () Bool)

(assert (=> b!941224 m!1158289))

(assert (=> b!941227 m!1158209))

(assert (=> b!941227 m!1158209))

(assert (=> b!941227 m!1158211))

(assert (=> b!941227 m!1158213))

(assert (=> b!941227 m!1158209))

(declare-fun m!1158291 () Bool)

(assert (=> b!941227 m!1158291))

(declare-fun m!1158293 () Bool)

(assert (=> d!282556 m!1158293))

(declare-fun m!1158295 () Bool)

(assert (=> d!282556 m!1158295))

(assert (=> d!282556 m!1158047))

(assert (=> b!941220 m!1158293))

(assert (=> b!940724 d!282556))

(declare-fun d!282558 () Bool)

(assert (=> d!282558 (= (isDefined!1814 (findConcatSeparation!278 lt!342276 lt!342269 Nil!9795 s!10566 s!10566)) (not (isEmpty!6044 (findConcatSeparation!278 lt!342276 lt!342269 Nil!9795 s!10566 s!10566))))))

(declare-fun bs!238832 () Bool)

(assert (= bs!238832 d!282558))

(assert (=> bs!238832 m!1158033))

(declare-fun m!1158297 () Bool)

(assert (=> bs!238832 m!1158297))

(assert (=> b!940724 d!282558))

(declare-fun d!282560 () Bool)

(assert (=> d!282560 (= (Exists!332 lambda!31649) (choose!5825 lambda!31649))))

(declare-fun bs!238833 () Bool)

(assert (= bs!238833 d!282560))

(declare-fun m!1158299 () Bool)

(assert (=> bs!238833 m!1158299))

(assert (=> b!940724 d!282560))

(declare-fun b!941239 () Bool)

(declare-fun e!610582 () Bool)

(assert (=> b!941239 (= e!610582 tp_is_empty!4805)))

(declare-fun b!941242 () Bool)

(declare-fun tp!291179 () Bool)

(declare-fun tp!291178 () Bool)

(assert (=> b!941242 (= e!610582 (and tp!291179 tp!291178))))

(assert (=> b!940727 (= tp!291127 e!610582)))

(declare-fun b!941241 () Bool)

(declare-fun tp!291177 () Bool)

(assert (=> b!941241 (= e!610582 tp!291177)))

(declare-fun b!941240 () Bool)

(declare-fun tp!291180 () Bool)

(declare-fun tp!291181 () Bool)

(assert (=> b!941240 (= e!610582 (and tp!291180 tp!291181))))

(assert (= (and b!940727 ((_ is ElementMatch!2581) (regOne!5674 r!15766))) b!941239))

(assert (= (and b!940727 ((_ is Concat!4414) (regOne!5674 r!15766))) b!941240))

(assert (= (and b!940727 ((_ is Star!2581) (regOne!5674 r!15766))) b!941241))

(assert (= (and b!940727 ((_ is Union!2581) (regOne!5674 r!15766))) b!941242))

(declare-fun b!941243 () Bool)

(declare-fun e!610583 () Bool)

(assert (=> b!941243 (= e!610583 tp_is_empty!4805)))

(declare-fun b!941246 () Bool)

(declare-fun tp!291184 () Bool)

(declare-fun tp!291183 () Bool)

(assert (=> b!941246 (= e!610583 (and tp!291184 tp!291183))))

(assert (=> b!940727 (= tp!291126 e!610583)))

(declare-fun b!941245 () Bool)

(declare-fun tp!291182 () Bool)

(assert (=> b!941245 (= e!610583 tp!291182)))

(declare-fun b!941244 () Bool)

(declare-fun tp!291185 () Bool)

(declare-fun tp!291186 () Bool)

(assert (=> b!941244 (= e!610583 (and tp!291185 tp!291186))))

(assert (= (and b!940727 ((_ is ElementMatch!2581) (regTwo!5674 r!15766))) b!941243))

(assert (= (and b!940727 ((_ is Concat!4414) (regTwo!5674 r!15766))) b!941244))

(assert (= (and b!940727 ((_ is Star!2581) (regTwo!5674 r!15766))) b!941245))

(assert (= (and b!940727 ((_ is Union!2581) (regTwo!5674 r!15766))) b!941246))

(declare-fun b!941251 () Bool)

(declare-fun e!610586 () Bool)

(declare-fun tp!291189 () Bool)

(assert (=> b!941251 (= e!610586 (and tp_is_empty!4805 tp!291189))))

(assert (=> b!940726 (= tp!291128 e!610586)))

(assert (= (and b!940726 ((_ is Cons!9795) (t!100857 s!10566))) b!941251))

(declare-fun b!941252 () Bool)

(declare-fun e!610587 () Bool)

(assert (=> b!941252 (= e!610587 tp_is_empty!4805)))

(declare-fun b!941255 () Bool)

(declare-fun tp!291192 () Bool)

(declare-fun tp!291191 () Bool)

(assert (=> b!941255 (= e!610587 (and tp!291192 tp!291191))))

(assert (=> b!940730 (= tp!291125 e!610587)))

(declare-fun b!941254 () Bool)

(declare-fun tp!291190 () Bool)

(assert (=> b!941254 (= e!610587 tp!291190)))

(declare-fun b!941253 () Bool)

(declare-fun tp!291193 () Bool)

(declare-fun tp!291194 () Bool)

(assert (=> b!941253 (= e!610587 (and tp!291193 tp!291194))))

(assert (= (and b!940730 ((_ is ElementMatch!2581) (regOne!5675 r!15766))) b!941252))

(assert (= (and b!940730 ((_ is Concat!4414) (regOne!5675 r!15766))) b!941253))

(assert (= (and b!940730 ((_ is Star!2581) (regOne!5675 r!15766))) b!941254))

(assert (= (and b!940730 ((_ is Union!2581) (regOne!5675 r!15766))) b!941255))

(declare-fun b!941256 () Bool)

(declare-fun e!610588 () Bool)

(assert (=> b!941256 (= e!610588 tp_is_empty!4805)))

(declare-fun b!941259 () Bool)

(declare-fun tp!291197 () Bool)

(declare-fun tp!291196 () Bool)

(assert (=> b!941259 (= e!610588 (and tp!291197 tp!291196))))

(assert (=> b!940730 (= tp!291124 e!610588)))

(declare-fun b!941258 () Bool)

(declare-fun tp!291195 () Bool)

(assert (=> b!941258 (= e!610588 tp!291195)))

(declare-fun b!941257 () Bool)

(declare-fun tp!291198 () Bool)

(declare-fun tp!291199 () Bool)

(assert (=> b!941257 (= e!610588 (and tp!291198 tp!291199))))

(assert (= (and b!940730 ((_ is ElementMatch!2581) (regTwo!5675 r!15766))) b!941256))

(assert (= (and b!940730 ((_ is Concat!4414) (regTwo!5675 r!15766))) b!941257))

(assert (= (and b!940730 ((_ is Star!2581) (regTwo!5675 r!15766))) b!941258))

(assert (= (and b!940730 ((_ is Union!2581) (regTwo!5675 r!15766))) b!941259))

(declare-fun b!941260 () Bool)

(declare-fun e!610589 () Bool)

(assert (=> b!941260 (= e!610589 tp_is_empty!4805)))

(declare-fun b!941263 () Bool)

(declare-fun tp!291202 () Bool)

(declare-fun tp!291201 () Bool)

(assert (=> b!941263 (= e!610589 (and tp!291202 tp!291201))))

(assert (=> b!940729 (= tp!291123 e!610589)))

(declare-fun b!941262 () Bool)

(declare-fun tp!291200 () Bool)

(assert (=> b!941262 (= e!610589 tp!291200)))

(declare-fun b!941261 () Bool)

(declare-fun tp!291203 () Bool)

(declare-fun tp!291204 () Bool)

(assert (=> b!941261 (= e!610589 (and tp!291203 tp!291204))))

(assert (= (and b!940729 ((_ is ElementMatch!2581) (reg!2910 r!15766))) b!941260))

(assert (= (and b!940729 ((_ is Concat!4414) (reg!2910 r!15766))) b!941261))

(assert (= (and b!940729 ((_ is Star!2581) (reg!2910 r!15766))) b!941262))

(assert (= (and b!940729 ((_ is Union!2581) (reg!2910 r!15766))) b!941263))

(check-sat (not b!941075) (not b!941224) (not d!282558) (not d!282560) (not b!941158) (not b!941263) (not bm!58634) (not bm!58646) (not d!282532) (not b!940895) (not d!282538) (not d!282494) tp_is_empty!4805 (not b!941219) (not b!941211) (not b!941242) (not bm!58594) (not d!282536) (not b!940889) (not b!941245) (not b!941259) (not bm!58643) (not b!941257) (not d!282550) (not b!941078) (not d!282552) (not b!941228) (not b!941262) (not b!941106) (not bm!58641) (not b!941254) (not b!941169) (not b!941074) (not bm!58626) (not d!282506) (not bm!58648) (not b!941208) (not bm!58644) (not b!941241) (not b!941240) (not b!941253) (not d!282530) (not bm!58647) (not b!941246) (not b!941162) (not b!940898) (not d!282488) (not d!282544) (not b!941150) (not bm!58627) (not d!282548) (not d!282528) (not bm!58632) (not b!941163) (not b!941220) (not b!940888) (not b!941159) (not b!941258) (not d!282526) (not b!941077) (not b!941072) (not b!941172) (not b!941261) (not b!940886) (not b!941244) (not b!941227) (not b!941251) (not b!941070) (not b!941255) (not d!282556) (not b!941199) (not bm!58633) (not d!282476) (not b!941160) (not b!941225) (not b!940885) (not b!941222))
(check-sat)
