; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349982 () Bool)

(assert start!349982)

(declare-fun b!3712562 () Bool)

(declare-fun res!1509530 () Bool)

(declare-fun e!2299037 () Bool)

(assert (=> b!3712562 (=> (not res!1509530) (not e!2299037))))

(declare-datatypes ((C!21884 0))(
  ( (C!21885 (val!12990 Int)) )
))
(declare-datatypes ((Regex!10849 0))(
  ( (ElementMatch!10849 (c!641401 C!21884)) (Concat!17120 (regOne!22210 Regex!10849) (regTwo!22210 Regex!10849)) (EmptyExpr!10849) (Star!10849 (reg!11178 Regex!10849)) (EmptyLang!10849) (Union!10849 (regOne!22211 Regex!10849) (regTwo!22211 Regex!10849)) )
))
(declare-fun r!26326 () Regex!10849)

(declare-fun c!13576 () C!21884)

(declare-datatypes ((List!39730 0))(
  ( (Nil!39606) (Cons!39606 (h!45026 C!21884) (t!302413 List!39730)) )
))
(declare-fun tl!3933 () List!39730)

(declare-fun nullable!3772 (Regex!10849) Bool)

(declare-fun derivative!363 (Regex!10849 List!39730) Regex!10849)

(declare-fun derivativeStep!3314 (Regex!10849 C!21884) Regex!10849)

(assert (=> b!3712562 (= res!1509530 (nullable!3772 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))

(declare-fun b!3712563 () Bool)

(declare-fun res!1509528 () Bool)

(assert (=> b!3712563 (=> (not res!1509528) (not e!2299037))))

(get-info :version)

(assert (=> b!3712563 (= res!1509528 (and (not ((_ is EmptyExpr!10849) r!26326)) (not ((_ is EmptyLang!10849) r!26326)) (not ((_ is ElementMatch!10849) r!26326)) ((_ is Union!10849) r!26326)))))

(declare-fun b!3712564 () Bool)

(declare-fun e!2299038 () Bool)

(declare-fun tp!1129919 () Bool)

(declare-fun tp!1129920 () Bool)

(assert (=> b!3712564 (= e!2299038 (and tp!1129919 tp!1129920))))

(declare-fun b!3712565 () Bool)

(declare-fun tp_is_empty!18713 () Bool)

(assert (=> b!3712565 (= e!2299038 tp_is_empty!18713)))

(declare-fun b!3712566 () Bool)

(declare-fun res!1509529 () Bool)

(assert (=> b!3712566 (=> (not res!1509529) (not e!2299037))))

(assert (=> b!3712566 (= res!1509529 (nullable!3772 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))

(declare-fun b!3712568 () Bool)

(declare-fun tp!1129917 () Bool)

(declare-fun tp!1129915 () Bool)

(assert (=> b!3712568 (= e!2299038 (and tp!1129917 tp!1129915))))

(declare-fun b!3712569 () Bool)

(declare-fun e!2299036 () Bool)

(declare-fun tp!1129918 () Bool)

(assert (=> b!3712569 (= e!2299036 (and tp_is_empty!18713 tp!1129918))))

(declare-fun b!3712570 () Bool)

(declare-fun res!1509526 () Bool)

(assert (=> b!3712570 (=> (not res!1509526) (not e!2299037))))

(declare-fun validRegex!4956 (Regex!10849) Bool)

(assert (=> b!3712570 (= res!1509526 (validRegex!4956 (regTwo!22211 r!26326)))))

(declare-fun res!1509525 () Bool)

(assert (=> start!349982 (=> (not res!1509525) (not e!2299037))))

(assert (=> start!349982 (= res!1509525 (validRegex!4956 r!26326))))

(assert (=> start!349982 e!2299037))

(assert (=> start!349982 e!2299038))

(assert (=> start!349982 tp_is_empty!18713))

(assert (=> start!349982 e!2299036))

(declare-fun b!3712567 () Bool)

(declare-fun contains!7942 (List!39730 C!21884) Bool)

(declare-fun usedCharacters!1112 (Regex!10849) List!39730)

(assert (=> b!3712567 (= e!2299037 (not (contains!7942 (usedCharacters!1112 r!26326) c!13576)))))

(assert (=> b!3712567 (contains!7942 (usedCharacters!1112 (regTwo!22211 r!26326)) c!13576)))

(declare-datatypes ((Unit!57496 0))(
  ( (Unit!57497) )
))
(declare-fun lt!1296944 () Unit!57496)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!6 (Regex!10849 C!21884 List!39730) Unit!57496)

(assert (=> b!3712567 (= lt!1296944 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!6 (regTwo!22211 r!26326) c!13576 tl!3933))))

(declare-fun b!3712571 () Bool)

(declare-fun tp!1129916 () Bool)

(assert (=> b!3712571 (= e!2299038 tp!1129916)))

(declare-fun b!3712572 () Bool)

(declare-fun res!1509527 () Bool)

(assert (=> b!3712572 (=> (not res!1509527) (not e!2299037))))

(assert (=> b!3712572 (= res!1509527 (not (nullable!3772 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933))))))

(assert (= (and start!349982 res!1509525) b!3712562))

(assert (= (and b!3712562 res!1509530) b!3712563))

(assert (= (and b!3712563 res!1509528) b!3712572))

(assert (= (and b!3712572 res!1509527) b!3712566))

(assert (= (and b!3712566 res!1509529) b!3712570))

(assert (= (and b!3712570 res!1509526) b!3712567))

(assert (= (and start!349982 ((_ is ElementMatch!10849) r!26326)) b!3712565))

(assert (= (and start!349982 ((_ is Concat!17120) r!26326)) b!3712568))

(assert (= (and start!349982 ((_ is Star!10849) r!26326)) b!3712571))

(assert (= (and start!349982 ((_ is Union!10849) r!26326)) b!3712564))

(assert (= (and start!349982 ((_ is Cons!39606) tl!3933)) b!3712569))

(declare-fun m!4219305 () Bool)

(assert (=> b!3712572 m!4219305))

(assert (=> b!3712572 m!4219305))

(declare-fun m!4219307 () Bool)

(assert (=> b!3712572 m!4219307))

(assert (=> b!3712572 m!4219307))

(declare-fun m!4219309 () Bool)

(assert (=> b!3712572 m!4219309))

(declare-fun m!4219311 () Bool)

(assert (=> b!3712566 m!4219311))

(assert (=> b!3712566 m!4219311))

(declare-fun m!4219313 () Bool)

(assert (=> b!3712566 m!4219313))

(assert (=> b!3712566 m!4219313))

(declare-fun m!4219315 () Bool)

(assert (=> b!3712566 m!4219315))

(declare-fun m!4219317 () Bool)

(assert (=> b!3712570 m!4219317))

(declare-fun m!4219319 () Bool)

(assert (=> b!3712567 m!4219319))

(declare-fun m!4219321 () Bool)

(assert (=> b!3712567 m!4219321))

(declare-fun m!4219323 () Bool)

(assert (=> b!3712567 m!4219323))

(assert (=> b!3712567 m!4219321))

(declare-fun m!4219325 () Bool)

(assert (=> b!3712567 m!4219325))

(assert (=> b!3712567 m!4219323))

(declare-fun m!4219327 () Bool)

(assert (=> b!3712567 m!4219327))

(declare-fun m!4219329 () Bool)

(assert (=> start!349982 m!4219329))

(declare-fun m!4219331 () Bool)

(assert (=> b!3712562 m!4219331))

(assert (=> b!3712562 m!4219331))

(declare-fun m!4219333 () Bool)

(assert (=> b!3712562 m!4219333))

(assert (=> b!3712562 m!4219333))

(declare-fun m!4219335 () Bool)

(assert (=> b!3712562 m!4219335))

(check-sat (not b!3712568) (not b!3712572) (not start!349982) (not b!3712571) (not b!3712564) (not b!3712570) (not b!3712562) (not b!3712569) (not b!3712566) tp_is_empty!18713 (not b!3712567))
(check-sat)
(get-model)

(declare-fun d!1087354 () Bool)

(declare-fun nullableFct!1061 (Regex!10849) Bool)

(assert (=> d!1087354 (= (nullable!3772 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)) (nullableFct!1061 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))

(declare-fun bs!574766 () Bool)

(assert (= bs!574766 d!1087354))

(assert (=> bs!574766 m!4219333))

(declare-fun m!4219337 () Bool)

(assert (=> bs!574766 m!4219337))

(assert (=> b!3712562 d!1087354))

(declare-fun d!1087356 () Bool)

(declare-fun lt!1296947 () Regex!10849)

(assert (=> d!1087356 (validRegex!4956 lt!1296947)))

(declare-fun e!2299041 () Regex!10849)

(assert (=> d!1087356 (= lt!1296947 e!2299041)))

(declare-fun c!641404 () Bool)

(assert (=> d!1087356 (= c!641404 ((_ is Cons!39606) tl!3933))))

(assert (=> d!1087356 (validRegex!4956 (derivativeStep!3314 r!26326 c!13576))))

(assert (=> d!1087356 (= (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933) lt!1296947)))

(declare-fun b!3712577 () Bool)

(assert (=> b!3712577 (= e!2299041 (derivative!363 (derivativeStep!3314 (derivativeStep!3314 r!26326 c!13576) (h!45026 tl!3933)) (t!302413 tl!3933)))))

(declare-fun b!3712578 () Bool)

(assert (=> b!3712578 (= e!2299041 (derivativeStep!3314 r!26326 c!13576))))

(assert (= (and d!1087356 c!641404) b!3712577))

(assert (= (and d!1087356 (not c!641404)) b!3712578))

(declare-fun m!4219341 () Bool)

(assert (=> d!1087356 m!4219341))

(assert (=> d!1087356 m!4219331))

(declare-fun m!4219343 () Bool)

(assert (=> d!1087356 m!4219343))

(assert (=> b!3712577 m!4219331))

(declare-fun m!4219345 () Bool)

(assert (=> b!3712577 m!4219345))

(assert (=> b!3712577 m!4219345))

(declare-fun m!4219347 () Bool)

(assert (=> b!3712577 m!4219347))

(assert (=> b!3712562 d!1087356))

(declare-fun b!3712695 () Bool)

(declare-fun e!2299112 () Regex!10849)

(assert (=> b!3712695 (= e!2299112 EmptyLang!10849)))

(declare-fun c!641453 () Bool)

(declare-fun bm!268730 () Bool)

(declare-fun call!268735 () Regex!10849)

(assert (=> bm!268730 (= call!268735 (derivativeStep!3314 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)) c!13576))))

(declare-fun bm!268731 () Bool)

(declare-fun call!268737 () Regex!10849)

(assert (=> bm!268731 (= call!268737 call!268735)))

(declare-fun b!3712696 () Bool)

(declare-fun e!2299110 () Regex!10849)

(declare-fun call!268736 () Regex!10849)

(assert (=> b!3712696 (= e!2299110 (Concat!17120 call!268736 r!26326))))

(declare-fun call!268738 () Regex!10849)

(declare-fun c!641457 () Bool)

(declare-fun bm!268732 () Bool)

(assert (=> bm!268732 (= call!268738 (derivativeStep!3314 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))) c!13576))))

(declare-fun b!3712697 () Bool)

(assert (=> b!3712697 (= c!641453 ((_ is Union!10849) r!26326))))

(declare-fun e!2299113 () Regex!10849)

(declare-fun e!2299111 () Regex!10849)

(assert (=> b!3712697 (= e!2299113 e!2299111)))

(declare-fun d!1087362 () Bool)

(declare-fun lt!1296960 () Regex!10849)

(assert (=> d!1087362 (validRegex!4956 lt!1296960)))

(assert (=> d!1087362 (= lt!1296960 e!2299112)))

(declare-fun c!641454 () Bool)

(assert (=> d!1087362 (= c!641454 (or ((_ is EmptyExpr!10849) r!26326) ((_ is EmptyLang!10849) r!26326)))))

(assert (=> d!1087362 (validRegex!4956 r!26326)))

(assert (=> d!1087362 (= (derivativeStep!3314 r!26326 c!13576) lt!1296960)))

(declare-fun b!3712698 () Bool)

(assert (=> b!3712698 (= e!2299111 (Union!10849 call!268735 call!268738))))

(declare-fun bm!268733 () Bool)

(assert (=> bm!268733 (= call!268736 call!268738)))

(declare-fun b!3712699 () Bool)

(assert (=> b!3712699 (= e!2299111 e!2299110)))

(assert (=> b!3712699 (= c!641457 ((_ is Star!10849) r!26326))))

(declare-fun b!3712700 () Bool)

(declare-fun c!641456 () Bool)

(assert (=> b!3712700 (= c!641456 (nullable!3772 (regOne!22210 r!26326)))))

(declare-fun e!2299114 () Regex!10849)

(assert (=> b!3712700 (= e!2299110 e!2299114)))

(declare-fun b!3712701 () Bool)

(assert (=> b!3712701 (= e!2299114 (Union!10849 (Concat!17120 call!268737 (regTwo!22210 r!26326)) EmptyLang!10849))))

(declare-fun b!3712702 () Bool)

(assert (=> b!3712702 (= e!2299114 (Union!10849 (Concat!17120 call!268737 (regTwo!22210 r!26326)) call!268736))))

(declare-fun b!3712703 () Bool)

(assert (=> b!3712703 (= e!2299112 e!2299113)))

(declare-fun c!641455 () Bool)

(assert (=> b!3712703 (= c!641455 ((_ is ElementMatch!10849) r!26326))))

(declare-fun b!3712704 () Bool)

(assert (=> b!3712704 (= e!2299113 (ite (= c!13576 (c!641401 r!26326)) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087362 c!641454) b!3712695))

(assert (= (and d!1087362 (not c!641454)) b!3712703))

(assert (= (and b!3712703 c!641455) b!3712704))

(assert (= (and b!3712703 (not c!641455)) b!3712697))

(assert (= (and b!3712697 c!641453) b!3712698))

(assert (= (and b!3712697 (not c!641453)) b!3712699))

(assert (= (and b!3712699 c!641457) b!3712696))

(assert (= (and b!3712699 (not c!641457)) b!3712700))

(assert (= (and b!3712700 c!641456) b!3712702))

(assert (= (and b!3712700 (not c!641456)) b!3712701))

(assert (= (or b!3712702 b!3712701) bm!268731))

(assert (= (or b!3712696 b!3712702) bm!268733))

(assert (= (or b!3712698 bm!268733) bm!268732))

(assert (= (or b!3712698 bm!268731) bm!268730))

(declare-fun m!4219417 () Bool)

(assert (=> bm!268730 m!4219417))

(declare-fun m!4219419 () Bool)

(assert (=> bm!268732 m!4219419))

(declare-fun m!4219421 () Bool)

(assert (=> d!1087362 m!4219421))

(assert (=> d!1087362 m!4219329))

(declare-fun m!4219423 () Bool)

(assert (=> b!3712700 m!4219423))

(assert (=> b!3712562 d!1087362))

(declare-fun d!1087386 () Bool)

(assert (=> d!1087386 (contains!7942 (usedCharacters!1112 (regTwo!22211 r!26326)) c!13576)))

(declare-fun lt!1296969 () Unit!57496)

(declare-fun choose!22175 (Regex!10849 C!21884 List!39730) Unit!57496)

(assert (=> d!1087386 (= lt!1296969 (choose!22175 (regTwo!22211 r!26326) c!13576 tl!3933))))

(assert (=> d!1087386 (validRegex!4956 (regTwo!22211 r!26326))))

(assert (=> d!1087386 (= (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!6 (regTwo!22211 r!26326) c!13576 tl!3933) lt!1296969)))

(declare-fun bs!574771 () Bool)

(assert (= bs!574771 d!1087386))

(assert (=> bs!574771 m!4219323))

(assert (=> bs!574771 m!4219323))

(assert (=> bs!574771 m!4219327))

(declare-fun m!4219431 () Bool)

(assert (=> bs!574771 m!4219431))

(assert (=> bs!574771 m!4219317))

(assert (=> b!3712567 d!1087386))

(declare-fun d!1087390 () Bool)

(declare-fun lt!1296973 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5731 (List!39730) (InoxSet C!21884))

(assert (=> d!1087390 (= lt!1296973 (select (content!5731 (usedCharacters!1112 (regTwo!22211 r!26326))) c!13576))))

(declare-fun e!2299151 () Bool)

(assert (=> d!1087390 (= lt!1296973 e!2299151)))

(declare-fun res!1509563 () Bool)

(assert (=> d!1087390 (=> (not res!1509563) (not e!2299151))))

(assert (=> d!1087390 (= res!1509563 ((_ is Cons!39606) (usedCharacters!1112 (regTwo!22211 r!26326))))))

(assert (=> d!1087390 (= (contains!7942 (usedCharacters!1112 (regTwo!22211 r!26326)) c!13576) lt!1296973)))

(declare-fun b!3712776 () Bool)

(declare-fun e!2299152 () Bool)

(assert (=> b!3712776 (= e!2299151 e!2299152)))

(declare-fun res!1509564 () Bool)

(assert (=> b!3712776 (=> res!1509564 e!2299152)))

(assert (=> b!3712776 (= res!1509564 (= (h!45026 (usedCharacters!1112 (regTwo!22211 r!26326))) c!13576))))

(declare-fun b!3712777 () Bool)

(assert (=> b!3712777 (= e!2299152 (contains!7942 (t!302413 (usedCharacters!1112 (regTwo!22211 r!26326))) c!13576))))

(assert (= (and d!1087390 res!1509563) b!3712776))

(assert (= (and b!3712776 (not res!1509564)) b!3712777))

(assert (=> d!1087390 m!4219323))

(declare-fun m!4219451 () Bool)

(assert (=> d!1087390 m!4219451))

(declare-fun m!4219453 () Bool)

(assert (=> d!1087390 m!4219453))

(declare-fun m!4219455 () Bool)

(assert (=> b!3712777 m!4219455))

(assert (=> b!3712567 d!1087390))

(declare-fun c!641484 () Bool)

(declare-fun bm!268758 () Bool)

(declare-fun call!268763 () List!39730)

(declare-fun c!641486 () Bool)

(assert (=> bm!268758 (= call!268763 (usedCharacters!1112 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))))))

(declare-fun bm!268759 () Bool)

(declare-fun call!268766 () List!39730)

(declare-fun call!268765 () List!39730)

(declare-fun call!268764 () List!39730)

(declare-fun ++!9794 (List!39730 List!39730) List!39730)

(assert (=> bm!268759 (= call!268766 (++!9794 call!268765 call!268764))))

(declare-fun b!3712802 () Bool)

(declare-fun e!2299164 () List!39730)

(assert (=> b!3712802 (= e!2299164 Nil!39606)))

(declare-fun b!3712803 () Bool)

(declare-fun e!2299163 () List!39730)

(assert (=> b!3712803 (= e!2299163 call!268766)))

(declare-fun d!1087396 () Bool)

(declare-fun c!641485 () Bool)

(assert (=> d!1087396 (= c!641485 (or ((_ is EmptyExpr!10849) r!26326) ((_ is EmptyLang!10849) r!26326)))))

(assert (=> d!1087396 (= (usedCharacters!1112 r!26326) e!2299164)))

(declare-fun b!3712804 () Bool)

(declare-fun e!2299165 () List!39730)

(assert (=> b!3712804 (= e!2299165 call!268763)))

(declare-fun b!3712805 () Bool)

(assert (=> b!3712805 (= e!2299163 call!268766)))

(declare-fun b!3712806 () Bool)

(assert (=> b!3712806 (= e!2299165 e!2299163)))

(assert (=> b!3712806 (= c!641486 ((_ is Union!10849) r!26326))))

(declare-fun bm!268760 () Bool)

(assert (=> bm!268760 (= call!268764 (usedCharacters!1112 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))))))

(declare-fun b!3712807 () Bool)

(declare-fun e!2299166 () List!39730)

(assert (=> b!3712807 (= e!2299166 (Cons!39606 (c!641401 r!26326) Nil!39606))))

(declare-fun b!3712808 () Bool)

(assert (=> b!3712808 (= e!2299164 e!2299166)))

(declare-fun c!641487 () Bool)

(assert (=> b!3712808 (= c!641487 ((_ is ElementMatch!10849) r!26326))))

(declare-fun bm!268761 () Bool)

(assert (=> bm!268761 (= call!268765 call!268763)))

(declare-fun b!3712809 () Bool)

(assert (=> b!3712809 (= c!641484 ((_ is Star!10849) r!26326))))

(assert (=> b!3712809 (= e!2299166 e!2299165)))

(assert (= (and d!1087396 c!641485) b!3712802))

(assert (= (and d!1087396 (not c!641485)) b!3712808))

(assert (= (and b!3712808 c!641487) b!3712807))

(assert (= (and b!3712808 (not c!641487)) b!3712809))

(assert (= (and b!3712809 c!641484) b!3712804))

(assert (= (and b!3712809 (not c!641484)) b!3712806))

(assert (= (and b!3712806 c!641486) b!3712805))

(assert (= (and b!3712806 (not c!641486)) b!3712803))

(assert (= (or b!3712805 b!3712803) bm!268761))

(assert (= (or b!3712805 b!3712803) bm!268760))

(assert (= (or b!3712805 b!3712803) bm!268759))

(assert (= (or b!3712804 bm!268761) bm!268758))

(declare-fun m!4219457 () Bool)

(assert (=> bm!268758 m!4219457))

(declare-fun m!4219459 () Bool)

(assert (=> bm!268759 m!4219459))

(declare-fun m!4219461 () Bool)

(assert (=> bm!268760 m!4219461))

(assert (=> b!3712567 d!1087396))

(declare-fun c!641488 () Bool)

(declare-fun bm!268762 () Bool)

(declare-fun c!641490 () Bool)

(declare-fun call!268767 () List!39730)

(assert (=> bm!268762 (= call!268767 (usedCharacters!1112 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))

(declare-fun bm!268763 () Bool)

(declare-fun call!268770 () List!39730)

(declare-fun call!268769 () List!39730)

(declare-fun call!268768 () List!39730)

(assert (=> bm!268763 (= call!268770 (++!9794 call!268769 call!268768))))

(declare-fun b!3712810 () Bool)

(declare-fun e!2299168 () List!39730)

(assert (=> b!3712810 (= e!2299168 Nil!39606)))

(declare-fun b!3712811 () Bool)

(declare-fun e!2299167 () List!39730)

(assert (=> b!3712811 (= e!2299167 call!268770)))

(declare-fun d!1087398 () Bool)

(declare-fun c!641489 () Bool)

(assert (=> d!1087398 (= c!641489 (or ((_ is EmptyExpr!10849) (regTwo!22211 r!26326)) ((_ is EmptyLang!10849) (regTwo!22211 r!26326))))))

(assert (=> d!1087398 (= (usedCharacters!1112 (regTwo!22211 r!26326)) e!2299168)))

(declare-fun b!3712812 () Bool)

(declare-fun e!2299169 () List!39730)

(assert (=> b!3712812 (= e!2299169 call!268767)))

(declare-fun b!3712813 () Bool)

(assert (=> b!3712813 (= e!2299167 call!268770)))

(declare-fun b!3712814 () Bool)

(assert (=> b!3712814 (= e!2299169 e!2299167)))

(assert (=> b!3712814 (= c!641490 ((_ is Union!10849) (regTwo!22211 r!26326)))))

(declare-fun bm!268764 () Bool)

(assert (=> bm!268764 (= call!268768 (usedCharacters!1112 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))

(declare-fun b!3712815 () Bool)

(declare-fun e!2299170 () List!39730)

(assert (=> b!3712815 (= e!2299170 (Cons!39606 (c!641401 (regTwo!22211 r!26326)) Nil!39606))))

(declare-fun b!3712816 () Bool)

(assert (=> b!3712816 (= e!2299168 e!2299170)))

(declare-fun c!641491 () Bool)

(assert (=> b!3712816 (= c!641491 ((_ is ElementMatch!10849) (regTwo!22211 r!26326)))))

(declare-fun bm!268765 () Bool)

(assert (=> bm!268765 (= call!268769 call!268767)))

(declare-fun b!3712817 () Bool)

(assert (=> b!3712817 (= c!641488 ((_ is Star!10849) (regTwo!22211 r!26326)))))

(assert (=> b!3712817 (= e!2299170 e!2299169)))

(assert (= (and d!1087398 c!641489) b!3712810))

(assert (= (and d!1087398 (not c!641489)) b!3712816))

(assert (= (and b!3712816 c!641491) b!3712815))

(assert (= (and b!3712816 (not c!641491)) b!3712817))

(assert (= (and b!3712817 c!641488) b!3712812))

(assert (= (and b!3712817 (not c!641488)) b!3712814))

(assert (= (and b!3712814 c!641490) b!3712813))

(assert (= (and b!3712814 (not c!641490)) b!3712811))

(assert (= (or b!3712813 b!3712811) bm!268765))

(assert (= (or b!3712813 b!3712811) bm!268764))

(assert (= (or b!3712813 b!3712811) bm!268763))

(assert (= (or b!3712812 bm!268765) bm!268762))

(declare-fun m!4219463 () Bool)

(assert (=> bm!268762 m!4219463))

(declare-fun m!4219465 () Bool)

(assert (=> bm!268763 m!4219465))

(declare-fun m!4219467 () Bool)

(assert (=> bm!268764 m!4219467))

(assert (=> b!3712567 d!1087398))

(declare-fun d!1087400 () Bool)

(declare-fun lt!1296974 () Bool)

(assert (=> d!1087400 (= lt!1296974 (select (content!5731 (usedCharacters!1112 r!26326)) c!13576))))

(declare-fun e!2299171 () Bool)

(assert (=> d!1087400 (= lt!1296974 e!2299171)))

(declare-fun res!1509565 () Bool)

(assert (=> d!1087400 (=> (not res!1509565) (not e!2299171))))

(assert (=> d!1087400 (= res!1509565 ((_ is Cons!39606) (usedCharacters!1112 r!26326)))))

(assert (=> d!1087400 (= (contains!7942 (usedCharacters!1112 r!26326) c!13576) lt!1296974)))

(declare-fun b!3712818 () Bool)

(declare-fun e!2299172 () Bool)

(assert (=> b!3712818 (= e!2299171 e!2299172)))

(declare-fun res!1509566 () Bool)

(assert (=> b!3712818 (=> res!1509566 e!2299172)))

(assert (=> b!3712818 (= res!1509566 (= (h!45026 (usedCharacters!1112 r!26326)) c!13576))))

(declare-fun b!3712819 () Bool)

(assert (=> b!3712819 (= e!2299172 (contains!7942 (t!302413 (usedCharacters!1112 r!26326)) c!13576))))

(assert (= (and d!1087400 res!1509565) b!3712818))

(assert (= (and b!3712818 (not res!1509566)) b!3712819))

(assert (=> d!1087400 m!4219321))

(declare-fun m!4219469 () Bool)

(assert (=> d!1087400 m!4219469))

(declare-fun m!4219471 () Bool)

(assert (=> d!1087400 m!4219471))

(declare-fun m!4219473 () Bool)

(assert (=> b!3712819 m!4219473))

(assert (=> b!3712567 d!1087400))

(declare-fun d!1087402 () Bool)

(assert (=> d!1087402 (= (nullable!3772 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)) (nullableFct!1061 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)))))

(declare-fun bs!574772 () Bool)

(assert (= bs!574772 d!1087402))

(assert (=> bs!574772 m!4219307))

(declare-fun m!4219475 () Bool)

(assert (=> bs!574772 m!4219475))

(assert (=> b!3712572 d!1087402))

(declare-fun d!1087404 () Bool)

(declare-fun lt!1296975 () Regex!10849)

(assert (=> d!1087404 (validRegex!4956 lt!1296975)))

(declare-fun e!2299173 () Regex!10849)

(assert (=> d!1087404 (= lt!1296975 e!2299173)))

(declare-fun c!641492 () Bool)

(assert (=> d!1087404 (= c!641492 ((_ is Cons!39606) tl!3933))))

(assert (=> d!1087404 (validRegex!4956 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))))

(assert (=> d!1087404 (= (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933) lt!1296975)))

(declare-fun b!3712820 () Bool)

(assert (=> b!3712820 (= e!2299173 (derivative!363 (derivativeStep!3314 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) (h!45026 tl!3933)) (t!302413 tl!3933)))))

(declare-fun b!3712821 () Bool)

(assert (=> b!3712821 (= e!2299173 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))))

(assert (= (and d!1087404 c!641492) b!3712820))

(assert (= (and d!1087404 (not c!641492)) b!3712821))

(declare-fun m!4219477 () Bool)

(assert (=> d!1087404 m!4219477))

(assert (=> d!1087404 m!4219305))

(declare-fun m!4219479 () Bool)

(assert (=> d!1087404 m!4219479))

(assert (=> b!3712820 m!4219305))

(declare-fun m!4219481 () Bool)

(assert (=> b!3712820 m!4219481))

(assert (=> b!3712820 m!4219481))

(declare-fun m!4219483 () Bool)

(assert (=> b!3712820 m!4219483))

(assert (=> b!3712572 d!1087404))

(declare-fun b!3712822 () Bool)

(declare-fun e!2299176 () Regex!10849)

(assert (=> b!3712822 (= e!2299176 EmptyLang!10849)))

(declare-fun call!268771 () Regex!10849)

(declare-fun bm!268766 () Bool)

(declare-fun c!641493 () Bool)

(assert (=> bm!268766 (= call!268771 (derivativeStep!3314 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))) c!13576))))

(declare-fun bm!268767 () Bool)

(declare-fun call!268773 () Regex!10849)

(assert (=> bm!268767 (= call!268773 call!268771)))

(declare-fun b!3712823 () Bool)

(declare-fun e!2299174 () Regex!10849)

(declare-fun call!268772 () Regex!10849)

(assert (=> b!3712823 (= e!2299174 (Concat!17120 call!268772 (regOne!22211 r!26326)))))

(declare-fun c!641497 () Bool)

(declare-fun call!268774 () Regex!10849)

(declare-fun bm!268768 () Bool)

(assert (=> bm!268768 (= call!268774 (derivativeStep!3314 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))) c!13576))))

(declare-fun b!3712824 () Bool)

(assert (=> b!3712824 (= c!641493 ((_ is Union!10849) (regOne!22211 r!26326)))))

(declare-fun e!2299177 () Regex!10849)

(declare-fun e!2299175 () Regex!10849)

(assert (=> b!3712824 (= e!2299177 e!2299175)))

(declare-fun d!1087406 () Bool)

(declare-fun lt!1296976 () Regex!10849)

(assert (=> d!1087406 (validRegex!4956 lt!1296976)))

(assert (=> d!1087406 (= lt!1296976 e!2299176)))

(declare-fun c!641494 () Bool)

(assert (=> d!1087406 (= c!641494 (or ((_ is EmptyExpr!10849) (regOne!22211 r!26326)) ((_ is EmptyLang!10849) (regOne!22211 r!26326))))))

(assert (=> d!1087406 (validRegex!4956 (regOne!22211 r!26326))))

(assert (=> d!1087406 (= (derivativeStep!3314 (regOne!22211 r!26326) c!13576) lt!1296976)))

(declare-fun b!3712825 () Bool)

(assert (=> b!3712825 (= e!2299175 (Union!10849 call!268771 call!268774))))

(declare-fun bm!268769 () Bool)

(assert (=> bm!268769 (= call!268772 call!268774)))

(declare-fun b!3712826 () Bool)

(assert (=> b!3712826 (= e!2299175 e!2299174)))

(assert (=> b!3712826 (= c!641497 ((_ is Star!10849) (regOne!22211 r!26326)))))

(declare-fun b!3712827 () Bool)

(declare-fun c!641496 () Bool)

(assert (=> b!3712827 (= c!641496 (nullable!3772 (regOne!22210 (regOne!22211 r!26326))))))

(declare-fun e!2299178 () Regex!10849)

(assert (=> b!3712827 (= e!2299174 e!2299178)))

(declare-fun b!3712828 () Bool)

(assert (=> b!3712828 (= e!2299178 (Union!10849 (Concat!17120 call!268773 (regTwo!22210 (regOne!22211 r!26326))) EmptyLang!10849))))

(declare-fun b!3712829 () Bool)

(assert (=> b!3712829 (= e!2299178 (Union!10849 (Concat!17120 call!268773 (regTwo!22210 (regOne!22211 r!26326))) call!268772))))

(declare-fun b!3712830 () Bool)

(assert (=> b!3712830 (= e!2299176 e!2299177)))

(declare-fun c!641495 () Bool)

(assert (=> b!3712830 (= c!641495 ((_ is ElementMatch!10849) (regOne!22211 r!26326)))))

(declare-fun b!3712831 () Bool)

(assert (=> b!3712831 (= e!2299177 (ite (= c!13576 (c!641401 (regOne!22211 r!26326))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087406 c!641494) b!3712822))

(assert (= (and d!1087406 (not c!641494)) b!3712830))

(assert (= (and b!3712830 c!641495) b!3712831))

(assert (= (and b!3712830 (not c!641495)) b!3712824))

(assert (= (and b!3712824 c!641493) b!3712825))

(assert (= (and b!3712824 (not c!641493)) b!3712826))

(assert (= (and b!3712826 c!641497) b!3712823))

(assert (= (and b!3712826 (not c!641497)) b!3712827))

(assert (= (and b!3712827 c!641496) b!3712829))

(assert (= (and b!3712827 (not c!641496)) b!3712828))

(assert (= (or b!3712829 b!3712828) bm!268767))

(assert (= (or b!3712823 b!3712829) bm!268769))

(assert (= (or b!3712825 bm!268769) bm!268768))

(assert (= (or b!3712825 bm!268767) bm!268766))

(declare-fun m!4219485 () Bool)

(assert (=> bm!268766 m!4219485))

(declare-fun m!4219487 () Bool)

(assert (=> bm!268768 m!4219487))

(declare-fun m!4219489 () Bool)

(assert (=> d!1087406 m!4219489))

(declare-fun m!4219491 () Bool)

(assert (=> d!1087406 m!4219491))

(declare-fun m!4219493 () Bool)

(assert (=> b!3712827 m!4219493))

(assert (=> b!3712572 d!1087406))

(declare-fun d!1087408 () Bool)

(assert (=> d!1087408 (= (nullable!3772 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)) (nullableFct!1061 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))

(declare-fun bs!574773 () Bool)

(assert (= bs!574773 d!1087408))

(assert (=> bs!574773 m!4219313))

(declare-fun m!4219495 () Bool)

(assert (=> bs!574773 m!4219495))

(assert (=> b!3712566 d!1087408))

(declare-fun d!1087410 () Bool)

(declare-fun lt!1296977 () Regex!10849)

(assert (=> d!1087410 (validRegex!4956 lt!1296977)))

(declare-fun e!2299179 () Regex!10849)

(assert (=> d!1087410 (= lt!1296977 e!2299179)))

(declare-fun c!641498 () Bool)

(assert (=> d!1087410 (= c!641498 ((_ is Cons!39606) tl!3933))))

(assert (=> d!1087410 (validRegex!4956 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))))

(assert (=> d!1087410 (= (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933) lt!1296977)))

(declare-fun b!3712832 () Bool)

(assert (=> b!3712832 (= e!2299179 (derivative!363 (derivativeStep!3314 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) (h!45026 tl!3933)) (t!302413 tl!3933)))))

(declare-fun b!3712833 () Bool)

(assert (=> b!3712833 (= e!2299179 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))))

(assert (= (and d!1087410 c!641498) b!3712832))

(assert (= (and d!1087410 (not c!641498)) b!3712833))

(declare-fun m!4219497 () Bool)

(assert (=> d!1087410 m!4219497))

(assert (=> d!1087410 m!4219311))

(declare-fun m!4219499 () Bool)

(assert (=> d!1087410 m!4219499))

(assert (=> b!3712832 m!4219311))

(declare-fun m!4219501 () Bool)

(assert (=> b!3712832 m!4219501))

(assert (=> b!3712832 m!4219501))

(declare-fun m!4219503 () Bool)

(assert (=> b!3712832 m!4219503))

(assert (=> b!3712566 d!1087410))

(declare-fun b!3712834 () Bool)

(declare-fun e!2299182 () Regex!10849)

(assert (=> b!3712834 (= e!2299182 EmptyLang!10849)))

(declare-fun bm!268770 () Bool)

(declare-fun call!268775 () Regex!10849)

(declare-fun c!641499 () Bool)

(assert (=> bm!268770 (= call!268775 (derivativeStep!3314 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))) c!13576))))

(declare-fun bm!268771 () Bool)

(declare-fun call!268777 () Regex!10849)

(assert (=> bm!268771 (= call!268777 call!268775)))

(declare-fun b!3712835 () Bool)

(declare-fun e!2299180 () Regex!10849)

(declare-fun call!268776 () Regex!10849)

(assert (=> b!3712835 (= e!2299180 (Concat!17120 call!268776 (regTwo!22211 r!26326)))))

(declare-fun call!268778 () Regex!10849)

(declare-fun c!641503 () Bool)

(declare-fun bm!268772 () Bool)

(assert (=> bm!268772 (= call!268778 (derivativeStep!3314 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) c!13576))))

(declare-fun b!3712836 () Bool)

(assert (=> b!3712836 (= c!641499 ((_ is Union!10849) (regTwo!22211 r!26326)))))

(declare-fun e!2299183 () Regex!10849)

(declare-fun e!2299181 () Regex!10849)

(assert (=> b!3712836 (= e!2299183 e!2299181)))

(declare-fun d!1087412 () Bool)

(declare-fun lt!1296978 () Regex!10849)

(assert (=> d!1087412 (validRegex!4956 lt!1296978)))

(assert (=> d!1087412 (= lt!1296978 e!2299182)))

(declare-fun c!641500 () Bool)

(assert (=> d!1087412 (= c!641500 (or ((_ is EmptyExpr!10849) (regTwo!22211 r!26326)) ((_ is EmptyLang!10849) (regTwo!22211 r!26326))))))

(assert (=> d!1087412 (validRegex!4956 (regTwo!22211 r!26326))))

(assert (=> d!1087412 (= (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) lt!1296978)))

(declare-fun b!3712837 () Bool)

(assert (=> b!3712837 (= e!2299181 (Union!10849 call!268775 call!268778))))

(declare-fun bm!268773 () Bool)

(assert (=> bm!268773 (= call!268776 call!268778)))

(declare-fun b!3712838 () Bool)

(assert (=> b!3712838 (= e!2299181 e!2299180)))

(assert (=> b!3712838 (= c!641503 ((_ is Star!10849) (regTwo!22211 r!26326)))))

(declare-fun b!3712839 () Bool)

(declare-fun c!641502 () Bool)

(assert (=> b!3712839 (= c!641502 (nullable!3772 (regOne!22210 (regTwo!22211 r!26326))))))

(declare-fun e!2299184 () Regex!10849)

(assert (=> b!3712839 (= e!2299180 e!2299184)))

(declare-fun b!3712840 () Bool)

(assert (=> b!3712840 (= e!2299184 (Union!10849 (Concat!17120 call!268777 (regTwo!22210 (regTwo!22211 r!26326))) EmptyLang!10849))))

(declare-fun b!3712841 () Bool)

(assert (=> b!3712841 (= e!2299184 (Union!10849 (Concat!17120 call!268777 (regTwo!22210 (regTwo!22211 r!26326))) call!268776))))

(declare-fun b!3712842 () Bool)

(assert (=> b!3712842 (= e!2299182 e!2299183)))

(declare-fun c!641501 () Bool)

(assert (=> b!3712842 (= c!641501 ((_ is ElementMatch!10849) (regTwo!22211 r!26326)))))

(declare-fun b!3712843 () Bool)

(assert (=> b!3712843 (= e!2299183 (ite (= c!13576 (c!641401 (regTwo!22211 r!26326))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087412 c!641500) b!3712834))

(assert (= (and d!1087412 (not c!641500)) b!3712842))

(assert (= (and b!3712842 c!641501) b!3712843))

(assert (= (and b!3712842 (not c!641501)) b!3712836))

(assert (= (and b!3712836 c!641499) b!3712837))

(assert (= (and b!3712836 (not c!641499)) b!3712838))

(assert (= (and b!3712838 c!641503) b!3712835))

(assert (= (and b!3712838 (not c!641503)) b!3712839))

(assert (= (and b!3712839 c!641502) b!3712841))

(assert (= (and b!3712839 (not c!641502)) b!3712840))

(assert (= (or b!3712841 b!3712840) bm!268771))

(assert (= (or b!3712835 b!3712841) bm!268773))

(assert (= (or b!3712837 bm!268773) bm!268772))

(assert (= (or b!3712837 bm!268771) bm!268770))

(declare-fun m!4219505 () Bool)

(assert (=> bm!268770 m!4219505))

(declare-fun m!4219507 () Bool)

(assert (=> bm!268772 m!4219507))

(declare-fun m!4219509 () Bool)

(assert (=> d!1087412 m!4219509))

(assert (=> d!1087412 m!4219317))

(declare-fun m!4219511 () Bool)

(assert (=> b!3712839 m!4219511))

(assert (=> b!3712566 d!1087412))

(declare-fun b!3712862 () Bool)

(declare-fun e!2299201 () Bool)

(declare-fun e!2299204 () Bool)

(assert (=> b!3712862 (= e!2299201 e!2299204)))

(declare-fun c!641508 () Bool)

(assert (=> b!3712862 (= c!641508 ((_ is Union!10849) (regTwo!22211 r!26326)))))

(declare-fun b!3712863 () Bool)

(declare-fun res!1509579 () Bool)

(declare-fun e!2299199 () Bool)

(assert (=> b!3712863 (=> res!1509579 e!2299199)))

(assert (=> b!3712863 (= res!1509579 (not ((_ is Concat!17120) (regTwo!22211 r!26326))))))

(assert (=> b!3712863 (= e!2299204 e!2299199)))

(declare-fun b!3712864 () Bool)

(declare-fun e!2299203 () Bool)

(declare-fun call!268785 () Bool)

(assert (=> b!3712864 (= e!2299203 call!268785)))

(declare-fun bm!268780 () Bool)

(assert (=> bm!268780 (= call!268785 (validRegex!4956 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(declare-fun bm!268781 () Bool)

(declare-fun call!268786 () Bool)

(declare-fun call!268787 () Bool)

(assert (=> bm!268781 (= call!268786 call!268787)))

(declare-fun b!3712866 () Bool)

(declare-fun res!1509577 () Bool)

(assert (=> b!3712866 (=> (not res!1509577) (not e!2299203))))

(assert (=> b!3712866 (= res!1509577 call!268786)))

(assert (=> b!3712866 (= e!2299204 e!2299203)))

(declare-fun b!3712867 () Bool)

(declare-fun e!2299205 () Bool)

(assert (=> b!3712867 (= e!2299205 call!268786)))

(declare-fun b!3712868 () Bool)

(declare-fun e!2299200 () Bool)

(assert (=> b!3712868 (= e!2299201 e!2299200)))

(declare-fun res!1509580 () Bool)

(assert (=> b!3712868 (= res!1509580 (not (nullable!3772 (reg!11178 (regTwo!22211 r!26326)))))))

(assert (=> b!3712868 (=> (not res!1509580) (not e!2299200))))

(declare-fun c!641509 () Bool)

(declare-fun bm!268782 () Bool)

(assert (=> bm!268782 (= call!268787 (validRegex!4956 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(declare-fun b!3712869 () Bool)

(assert (=> b!3712869 (= e!2299200 call!268787)))

(declare-fun b!3712870 () Bool)

(declare-fun e!2299202 () Bool)

(assert (=> b!3712870 (= e!2299202 e!2299201)))

(assert (=> b!3712870 (= c!641509 ((_ is Star!10849) (regTwo!22211 r!26326)))))

(declare-fun d!1087414 () Bool)

(declare-fun res!1509578 () Bool)

(assert (=> d!1087414 (=> res!1509578 e!2299202)))

(assert (=> d!1087414 (= res!1509578 ((_ is ElementMatch!10849) (regTwo!22211 r!26326)))))

(assert (=> d!1087414 (= (validRegex!4956 (regTwo!22211 r!26326)) e!2299202)))

(declare-fun b!3712865 () Bool)

(assert (=> b!3712865 (= e!2299199 e!2299205)))

(declare-fun res!1509581 () Bool)

(assert (=> b!3712865 (=> (not res!1509581) (not e!2299205))))

(assert (=> b!3712865 (= res!1509581 call!268785)))

(assert (= (and d!1087414 (not res!1509578)) b!3712870))

(assert (= (and b!3712870 c!641509) b!3712868))

(assert (= (and b!3712870 (not c!641509)) b!3712862))

(assert (= (and b!3712868 res!1509580) b!3712869))

(assert (= (and b!3712862 c!641508) b!3712866))

(assert (= (and b!3712862 (not c!641508)) b!3712863))

(assert (= (and b!3712866 res!1509577) b!3712864))

(assert (= (and b!3712863 (not res!1509579)) b!3712865))

(assert (= (and b!3712865 res!1509581) b!3712867))

(assert (= (or b!3712864 b!3712865) bm!268780))

(assert (= (or b!3712866 b!3712867) bm!268781))

(assert (= (or b!3712869 bm!268781) bm!268782))

(declare-fun m!4219513 () Bool)

(assert (=> bm!268780 m!4219513))

(declare-fun m!4219515 () Bool)

(assert (=> b!3712868 m!4219515))

(declare-fun m!4219517 () Bool)

(assert (=> bm!268782 m!4219517))

(assert (=> b!3712570 d!1087414))

(declare-fun b!3712871 () Bool)

(declare-fun e!2299208 () Bool)

(declare-fun e!2299211 () Bool)

(assert (=> b!3712871 (= e!2299208 e!2299211)))

(declare-fun c!641510 () Bool)

(assert (=> b!3712871 (= c!641510 ((_ is Union!10849) r!26326))))

(declare-fun b!3712872 () Bool)

(declare-fun res!1509584 () Bool)

(declare-fun e!2299206 () Bool)

(assert (=> b!3712872 (=> res!1509584 e!2299206)))

(assert (=> b!3712872 (= res!1509584 (not ((_ is Concat!17120) r!26326)))))

(assert (=> b!3712872 (= e!2299211 e!2299206)))

(declare-fun b!3712873 () Bool)

(declare-fun e!2299210 () Bool)

(declare-fun call!268788 () Bool)

(assert (=> b!3712873 (= e!2299210 call!268788)))

(declare-fun bm!268783 () Bool)

(assert (=> bm!268783 (= call!268788 (validRegex!4956 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))))))

(declare-fun bm!268784 () Bool)

(declare-fun call!268789 () Bool)

(declare-fun call!268790 () Bool)

(assert (=> bm!268784 (= call!268789 call!268790)))

(declare-fun b!3712875 () Bool)

(declare-fun res!1509582 () Bool)

(assert (=> b!3712875 (=> (not res!1509582) (not e!2299210))))

(assert (=> b!3712875 (= res!1509582 call!268789)))

(assert (=> b!3712875 (= e!2299211 e!2299210)))

(declare-fun b!3712876 () Bool)

(declare-fun e!2299212 () Bool)

(assert (=> b!3712876 (= e!2299212 call!268789)))

(declare-fun b!3712877 () Bool)

(declare-fun e!2299207 () Bool)

(assert (=> b!3712877 (= e!2299208 e!2299207)))

(declare-fun res!1509585 () Bool)

(assert (=> b!3712877 (= res!1509585 (not (nullable!3772 (reg!11178 r!26326))))))

(assert (=> b!3712877 (=> (not res!1509585) (not e!2299207))))

(declare-fun bm!268785 () Bool)

(declare-fun c!641511 () Bool)

(assert (=> bm!268785 (= call!268790 (validRegex!4956 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))))))

(declare-fun b!3712878 () Bool)

(assert (=> b!3712878 (= e!2299207 call!268790)))

(declare-fun b!3712879 () Bool)

(declare-fun e!2299209 () Bool)

(assert (=> b!3712879 (= e!2299209 e!2299208)))

(assert (=> b!3712879 (= c!641511 ((_ is Star!10849) r!26326))))

(declare-fun d!1087416 () Bool)

(declare-fun res!1509583 () Bool)

(assert (=> d!1087416 (=> res!1509583 e!2299209)))

(assert (=> d!1087416 (= res!1509583 ((_ is ElementMatch!10849) r!26326))))

(assert (=> d!1087416 (= (validRegex!4956 r!26326) e!2299209)))

(declare-fun b!3712874 () Bool)

(assert (=> b!3712874 (= e!2299206 e!2299212)))

(declare-fun res!1509586 () Bool)

(assert (=> b!3712874 (=> (not res!1509586) (not e!2299212))))

(assert (=> b!3712874 (= res!1509586 call!268788)))

(assert (= (and d!1087416 (not res!1509583)) b!3712879))

(assert (= (and b!3712879 c!641511) b!3712877))

(assert (= (and b!3712879 (not c!641511)) b!3712871))

(assert (= (and b!3712877 res!1509585) b!3712878))

(assert (= (and b!3712871 c!641510) b!3712875))

(assert (= (and b!3712871 (not c!641510)) b!3712872))

(assert (= (and b!3712875 res!1509582) b!3712873))

(assert (= (and b!3712872 (not res!1509584)) b!3712874))

(assert (= (and b!3712874 res!1509586) b!3712876))

(assert (= (or b!3712873 b!3712874) bm!268783))

(assert (= (or b!3712875 b!3712876) bm!268784))

(assert (= (or b!3712878 bm!268784) bm!268785))

(declare-fun m!4219519 () Bool)

(assert (=> bm!268783 m!4219519))

(declare-fun m!4219521 () Bool)

(assert (=> b!3712877 m!4219521))

(declare-fun m!4219523 () Bool)

(assert (=> bm!268785 m!4219523))

(assert (=> start!349982 d!1087416))

(declare-fun b!3712892 () Bool)

(declare-fun e!2299215 () Bool)

(declare-fun tp!1129971 () Bool)

(assert (=> b!3712892 (= e!2299215 tp!1129971)))

(declare-fun b!3712891 () Bool)

(declare-fun tp!1129972 () Bool)

(declare-fun tp!1129970 () Bool)

(assert (=> b!3712891 (= e!2299215 (and tp!1129972 tp!1129970))))

(declare-fun b!3712890 () Bool)

(assert (=> b!3712890 (= e!2299215 tp_is_empty!18713)))

(assert (=> b!3712568 (= tp!1129917 e!2299215)))

(declare-fun b!3712893 () Bool)

(declare-fun tp!1129969 () Bool)

(declare-fun tp!1129973 () Bool)

(assert (=> b!3712893 (= e!2299215 (and tp!1129969 tp!1129973))))

(assert (= (and b!3712568 ((_ is ElementMatch!10849) (regOne!22210 r!26326))) b!3712890))

(assert (= (and b!3712568 ((_ is Concat!17120) (regOne!22210 r!26326))) b!3712891))

(assert (= (and b!3712568 ((_ is Star!10849) (regOne!22210 r!26326))) b!3712892))

(assert (= (and b!3712568 ((_ is Union!10849) (regOne!22210 r!26326))) b!3712893))

(declare-fun b!3712896 () Bool)

(declare-fun e!2299216 () Bool)

(declare-fun tp!1129976 () Bool)

(assert (=> b!3712896 (= e!2299216 tp!1129976)))

(declare-fun b!3712895 () Bool)

(declare-fun tp!1129977 () Bool)

(declare-fun tp!1129975 () Bool)

(assert (=> b!3712895 (= e!2299216 (and tp!1129977 tp!1129975))))

(declare-fun b!3712894 () Bool)

(assert (=> b!3712894 (= e!2299216 tp_is_empty!18713)))

(assert (=> b!3712568 (= tp!1129915 e!2299216)))

(declare-fun b!3712897 () Bool)

(declare-fun tp!1129974 () Bool)

(declare-fun tp!1129978 () Bool)

(assert (=> b!3712897 (= e!2299216 (and tp!1129974 tp!1129978))))

(assert (= (and b!3712568 ((_ is ElementMatch!10849) (regTwo!22210 r!26326))) b!3712894))

(assert (= (and b!3712568 ((_ is Concat!17120) (regTwo!22210 r!26326))) b!3712895))

(assert (= (and b!3712568 ((_ is Star!10849) (regTwo!22210 r!26326))) b!3712896))

(assert (= (and b!3712568 ((_ is Union!10849) (regTwo!22210 r!26326))) b!3712897))

(declare-fun b!3712900 () Bool)

(declare-fun e!2299217 () Bool)

(declare-fun tp!1129981 () Bool)

(assert (=> b!3712900 (= e!2299217 tp!1129981)))

(declare-fun b!3712899 () Bool)

(declare-fun tp!1129982 () Bool)

(declare-fun tp!1129980 () Bool)

(assert (=> b!3712899 (= e!2299217 (and tp!1129982 tp!1129980))))

(declare-fun b!3712898 () Bool)

(assert (=> b!3712898 (= e!2299217 tp_is_empty!18713)))

(assert (=> b!3712571 (= tp!1129916 e!2299217)))

(declare-fun b!3712901 () Bool)

(declare-fun tp!1129979 () Bool)

(declare-fun tp!1129983 () Bool)

(assert (=> b!3712901 (= e!2299217 (and tp!1129979 tp!1129983))))

(assert (= (and b!3712571 ((_ is ElementMatch!10849) (reg!11178 r!26326))) b!3712898))

(assert (= (and b!3712571 ((_ is Concat!17120) (reg!11178 r!26326))) b!3712899))

(assert (= (and b!3712571 ((_ is Star!10849) (reg!11178 r!26326))) b!3712900))

(assert (= (and b!3712571 ((_ is Union!10849) (reg!11178 r!26326))) b!3712901))

(declare-fun b!3712904 () Bool)

(declare-fun e!2299218 () Bool)

(declare-fun tp!1129986 () Bool)

(assert (=> b!3712904 (= e!2299218 tp!1129986)))

(declare-fun b!3712903 () Bool)

(declare-fun tp!1129987 () Bool)

(declare-fun tp!1129985 () Bool)

(assert (=> b!3712903 (= e!2299218 (and tp!1129987 tp!1129985))))

(declare-fun b!3712902 () Bool)

(assert (=> b!3712902 (= e!2299218 tp_is_empty!18713)))

(assert (=> b!3712564 (= tp!1129919 e!2299218)))

(declare-fun b!3712905 () Bool)

(declare-fun tp!1129984 () Bool)

(declare-fun tp!1129988 () Bool)

(assert (=> b!3712905 (= e!2299218 (and tp!1129984 tp!1129988))))

(assert (= (and b!3712564 ((_ is ElementMatch!10849) (regOne!22211 r!26326))) b!3712902))

(assert (= (and b!3712564 ((_ is Concat!17120) (regOne!22211 r!26326))) b!3712903))

(assert (= (and b!3712564 ((_ is Star!10849) (regOne!22211 r!26326))) b!3712904))

(assert (= (and b!3712564 ((_ is Union!10849) (regOne!22211 r!26326))) b!3712905))

(declare-fun b!3712908 () Bool)

(declare-fun e!2299219 () Bool)

(declare-fun tp!1129991 () Bool)

(assert (=> b!3712908 (= e!2299219 tp!1129991)))

(declare-fun b!3712907 () Bool)

(declare-fun tp!1129992 () Bool)

(declare-fun tp!1129990 () Bool)

(assert (=> b!3712907 (= e!2299219 (and tp!1129992 tp!1129990))))

(declare-fun b!3712906 () Bool)

(assert (=> b!3712906 (= e!2299219 tp_is_empty!18713)))

(assert (=> b!3712564 (= tp!1129920 e!2299219)))

(declare-fun b!3712909 () Bool)

(declare-fun tp!1129989 () Bool)

(declare-fun tp!1129993 () Bool)

(assert (=> b!3712909 (= e!2299219 (and tp!1129989 tp!1129993))))

(assert (= (and b!3712564 ((_ is ElementMatch!10849) (regTwo!22211 r!26326))) b!3712906))

(assert (= (and b!3712564 ((_ is Concat!17120) (regTwo!22211 r!26326))) b!3712907))

(assert (= (and b!3712564 ((_ is Star!10849) (regTwo!22211 r!26326))) b!3712908))

(assert (= (and b!3712564 ((_ is Union!10849) (regTwo!22211 r!26326))) b!3712909))

(declare-fun b!3712914 () Bool)

(declare-fun e!2299222 () Bool)

(declare-fun tp!1129996 () Bool)

(assert (=> b!3712914 (= e!2299222 (and tp_is_empty!18713 tp!1129996))))

(assert (=> b!3712569 (= tp!1129918 e!2299222)))

(assert (= (and b!3712569 ((_ is Cons!39606) (t!302413 tl!3933))) b!3712914))

(check-sat (not b!3712820) (not b!3712893) (not b!3712700) (not d!1087412) (not d!1087354) (not b!3712908) (not d!1087400) (not b!3712905) (not bm!268764) (not bm!268783) (not b!3712903) (not bm!268766) (not d!1087386) (not b!3712877) (not bm!268782) (not b!3712577) (not bm!268768) (not d!1087362) (not d!1087356) (not b!3712891) (not bm!268760) (not d!1087410) (not b!3712900) (not d!1087406) (not b!3712901) (not b!3712907) (not bm!268772) (not bm!268770) tp_is_empty!18713 (not b!3712895) (not b!3712839) (not b!3712897) (not b!3712819) (not b!3712899) (not d!1087408) (not bm!268758) (not bm!268730) (not bm!268759) (not d!1087404) (not b!3712914) (not b!3712827) (not b!3712904) (not bm!268780) (not bm!268762) (not b!3712896) (not bm!268763) (not b!3712832) (not b!3712892) (not d!1087402) (not b!3712909) (not b!3712868) (not d!1087390) (not bm!268785) (not bm!268732) (not b!3712777))
(check-sat)
(get-model)

(declare-fun b!3712915 () Bool)

(declare-fun e!2299225 () Regex!10849)

(assert (=> b!3712915 (= e!2299225 EmptyLang!10849)))

(declare-fun call!268791 () Regex!10849)

(declare-fun bm!268786 () Bool)

(declare-fun c!641512 () Bool)

(assert (=> bm!268786 (= call!268791 (derivativeStep!3314 (ite c!641512 (regOne!22211 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))) (regOne!22210 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))))) c!13576))))

(declare-fun bm!268787 () Bool)

(declare-fun call!268793 () Regex!10849)

(assert (=> bm!268787 (= call!268793 call!268791)))

(declare-fun b!3712916 () Bool)

(declare-fun call!268792 () Regex!10849)

(declare-fun e!2299223 () Regex!10849)

(assert (=> b!3712916 (= e!2299223 (Concat!17120 call!268792 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))))))

(declare-fun c!641516 () Bool)

(declare-fun bm!268788 () Bool)

(declare-fun call!268794 () Regex!10849)

(assert (=> bm!268788 (= call!268794 (derivativeStep!3314 (ite c!641512 (regTwo!22211 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))) (ite c!641516 (reg!11178 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))) (regTwo!22210 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))))) c!13576))))

(declare-fun b!3712917 () Bool)

(assert (=> b!3712917 (= c!641512 ((_ is Union!10849) (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))))))

(declare-fun e!2299226 () Regex!10849)

(declare-fun e!2299224 () Regex!10849)

(assert (=> b!3712917 (= e!2299226 e!2299224)))

(declare-fun d!1087418 () Bool)

(declare-fun lt!1296979 () Regex!10849)

(assert (=> d!1087418 (validRegex!4956 lt!1296979)))

(assert (=> d!1087418 (= lt!1296979 e!2299225)))

(declare-fun c!641513 () Bool)

(assert (=> d!1087418 (= c!641513 (or ((_ is EmptyExpr!10849) (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))) ((_ is EmptyLang!10849) (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))))))))

(assert (=> d!1087418 (validRegex!4956 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))))))

(assert (=> d!1087418 (= (derivativeStep!3314 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))) c!13576) lt!1296979)))

(declare-fun b!3712918 () Bool)

(assert (=> b!3712918 (= e!2299224 (Union!10849 call!268791 call!268794))))

(declare-fun bm!268789 () Bool)

(assert (=> bm!268789 (= call!268792 call!268794)))

(declare-fun b!3712919 () Bool)

(assert (=> b!3712919 (= e!2299224 e!2299223)))

(assert (=> b!3712919 (= c!641516 ((_ is Star!10849) (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))))))

(declare-fun c!641515 () Bool)

(declare-fun b!3712920 () Bool)

(assert (=> b!3712920 (= c!641515 (nullable!3772 (regOne!22210 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))))))))

(declare-fun e!2299227 () Regex!10849)

(assert (=> b!3712920 (= e!2299223 e!2299227)))

(declare-fun b!3712921 () Bool)

(assert (=> b!3712921 (= e!2299227 (Union!10849 (Concat!17120 call!268793 (regTwo!22210 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))))) EmptyLang!10849))))

(declare-fun b!3712922 () Bool)

(assert (=> b!3712922 (= e!2299227 (Union!10849 (Concat!17120 call!268793 (regTwo!22210 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))))) call!268792))))

(declare-fun b!3712923 () Bool)

(assert (=> b!3712923 (= e!2299225 e!2299226)))

(declare-fun c!641514 () Bool)

(assert (=> b!3712923 (= c!641514 ((_ is ElementMatch!10849) (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))))))

(declare-fun b!3712924 () Bool)

(assert (=> b!3712924 (= e!2299226 (ite (= c!13576 (c!641401 (ite c!641493 (regTwo!22211 (regOne!22211 r!26326)) (ite c!641497 (reg!11178 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326)))))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087418 c!641513) b!3712915))

(assert (= (and d!1087418 (not c!641513)) b!3712923))

(assert (= (and b!3712923 c!641514) b!3712924))

(assert (= (and b!3712923 (not c!641514)) b!3712917))

(assert (= (and b!3712917 c!641512) b!3712918))

(assert (= (and b!3712917 (not c!641512)) b!3712919))

(assert (= (and b!3712919 c!641516) b!3712916))

(assert (= (and b!3712919 (not c!641516)) b!3712920))

(assert (= (and b!3712920 c!641515) b!3712922))

(assert (= (and b!3712920 (not c!641515)) b!3712921))

(assert (= (or b!3712922 b!3712921) bm!268787))

(assert (= (or b!3712916 b!3712922) bm!268789))

(assert (= (or b!3712918 bm!268789) bm!268788))

(assert (= (or b!3712918 bm!268787) bm!268786))

(declare-fun m!4219525 () Bool)

(assert (=> bm!268786 m!4219525))

(declare-fun m!4219527 () Bool)

(assert (=> bm!268788 m!4219527))

(declare-fun m!4219529 () Bool)

(assert (=> d!1087418 m!4219529))

(declare-fun m!4219531 () Bool)

(assert (=> d!1087418 m!4219531))

(declare-fun m!4219533 () Bool)

(assert (=> b!3712920 m!4219533))

(assert (=> bm!268768 d!1087418))

(declare-fun d!1087420 () Bool)

(declare-fun res!1509599 () Bool)

(declare-fun e!2299249 () Bool)

(assert (=> d!1087420 (=> res!1509599 e!2299249)))

(assert (=> d!1087420 (= res!1509599 ((_ is EmptyExpr!10849) (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))

(assert (=> d!1087420 (= (nullableFct!1061 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)) e!2299249)))

(declare-fun call!268800 () Bool)

(declare-fun bm!268794 () Bool)

(declare-fun c!641521 () Bool)

(assert (=> bm!268794 (= call!268800 (nullable!3772 (ite c!641521 (regTwo!22211 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)) (regOne!22210 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3712945 () Bool)

(declare-fun e!2299246 () Bool)

(assert (=> b!3712945 (= e!2299249 e!2299246)))

(declare-fun res!1509602 () Bool)

(assert (=> b!3712945 (=> (not res!1509602) (not e!2299246))))

(assert (=> b!3712945 (= res!1509602 (and (not ((_ is EmptyLang!10849) (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933))) (not ((_ is ElementMatch!10849) (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3712946 () Bool)

(declare-fun e!2299245 () Bool)

(declare-fun e!2299247 () Bool)

(assert (=> b!3712946 (= e!2299245 e!2299247)))

(declare-fun res!1509605 () Bool)

(declare-fun call!268799 () Bool)

(assert (=> b!3712946 (= res!1509605 call!268799)))

(assert (=> b!3712946 (=> res!1509605 e!2299247)))

(declare-fun b!3712947 () Bool)

(declare-fun e!2299244 () Bool)

(assert (=> b!3712947 (= e!2299244 e!2299245)))

(assert (=> b!3712947 (= c!641521 ((_ is Union!10849) (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))

(declare-fun bm!268795 () Bool)

(assert (=> bm!268795 (= call!268799 (nullable!3772 (ite c!641521 (regOne!22211 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)) (regTwo!22210 (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3712948 () Bool)

(assert (=> b!3712948 (= e!2299247 call!268800)))

(declare-fun b!3712950 () Bool)

(declare-fun e!2299248 () Bool)

(assert (=> b!3712950 (= e!2299248 call!268799)))

(declare-fun b!3712952 () Bool)

(assert (=> b!3712952 (= e!2299246 e!2299244)))

(declare-fun res!1509603 () Bool)

(assert (=> b!3712952 (=> res!1509603 e!2299244)))

(assert (=> b!3712952 (= res!1509603 ((_ is Star!10849) (derivative!363 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) tl!3933)))))

(declare-fun b!3712953 () Bool)

(assert (=> b!3712953 (= e!2299245 e!2299248)))

(declare-fun res!1509604 () Bool)

(assert (=> b!3712953 (= res!1509604 call!268800)))

(assert (=> b!3712953 (=> (not res!1509604) (not e!2299248))))

(assert (= (and d!1087420 (not res!1509599)) b!3712945))

(assert (= (and b!3712945 res!1509602) b!3712952))

(assert (= (and b!3712952 (not res!1509603)) b!3712947))

(assert (= (and b!3712947 c!641521) b!3712946))

(assert (= (and b!3712947 (not c!641521)) b!3712953))

(assert (= (and b!3712946 (not res!1509605)) b!3712948))

(assert (= (and b!3712953 res!1509604) b!3712950))

(assert (= (or b!3712948 b!3712953) bm!268794))

(assert (= (or b!3712946 b!3712950) bm!268795))

(declare-fun m!4219535 () Bool)

(assert (=> bm!268794 m!4219535))

(declare-fun m!4219537 () Bool)

(assert (=> bm!268795 m!4219537))

(assert (=> d!1087408 d!1087420))

(assert (=> d!1087386 d!1087390))

(assert (=> d!1087386 d!1087398))

(declare-fun d!1087424 () Bool)

(assert (=> d!1087424 (contains!7942 (usedCharacters!1112 (regTwo!22211 r!26326)) c!13576)))

(assert (=> d!1087424 true))

(declare-fun _$132!104 () Unit!57496)

(assert (=> d!1087424 (= (choose!22175 (regTwo!22211 r!26326) c!13576 tl!3933) _$132!104)))

(declare-fun bs!574774 () Bool)

(assert (= bs!574774 d!1087424))

(assert (=> bs!574774 m!4219323))

(assert (=> bs!574774 m!4219323))

(assert (=> bs!574774 m!4219327))

(assert (=> d!1087386 d!1087424))

(assert (=> d!1087386 d!1087414))

(declare-fun b!3712977 () Bool)

(declare-fun e!2299266 () Bool)

(declare-fun e!2299269 () Bool)

(assert (=> b!3712977 (= e!2299266 e!2299269)))

(declare-fun c!641531 () Bool)

(assert (=> b!3712977 (= c!641531 ((_ is Union!10849) lt!1296978))))

(declare-fun b!3712978 () Bool)

(declare-fun res!1509615 () Bool)

(declare-fun e!2299264 () Bool)

(assert (=> b!3712978 (=> res!1509615 e!2299264)))

(assert (=> b!3712978 (= res!1509615 (not ((_ is Concat!17120) lt!1296978)))))

(assert (=> b!3712978 (= e!2299269 e!2299264)))

(declare-fun b!3712979 () Bool)

(declare-fun e!2299268 () Bool)

(declare-fun call!268808 () Bool)

(assert (=> b!3712979 (= e!2299268 call!268808)))

(declare-fun bm!268803 () Bool)

(assert (=> bm!268803 (= call!268808 (validRegex!4956 (ite c!641531 (regTwo!22211 lt!1296978) (regOne!22210 lt!1296978))))))

(declare-fun bm!268804 () Bool)

(declare-fun call!268809 () Bool)

(declare-fun call!268810 () Bool)

(assert (=> bm!268804 (= call!268809 call!268810)))

(declare-fun b!3712981 () Bool)

(declare-fun res!1509613 () Bool)

(assert (=> b!3712981 (=> (not res!1509613) (not e!2299268))))

(assert (=> b!3712981 (= res!1509613 call!268809)))

(assert (=> b!3712981 (= e!2299269 e!2299268)))

(declare-fun b!3712982 () Bool)

(declare-fun e!2299270 () Bool)

(assert (=> b!3712982 (= e!2299270 call!268809)))

(declare-fun b!3712983 () Bool)

(declare-fun e!2299265 () Bool)

(assert (=> b!3712983 (= e!2299266 e!2299265)))

(declare-fun res!1509616 () Bool)

(assert (=> b!3712983 (= res!1509616 (not (nullable!3772 (reg!11178 lt!1296978))))))

(assert (=> b!3712983 (=> (not res!1509616) (not e!2299265))))

(declare-fun c!641532 () Bool)

(declare-fun bm!268805 () Bool)

(assert (=> bm!268805 (= call!268810 (validRegex!4956 (ite c!641532 (reg!11178 lt!1296978) (ite c!641531 (regOne!22211 lt!1296978) (regTwo!22210 lt!1296978)))))))

(declare-fun b!3712984 () Bool)

(assert (=> b!3712984 (= e!2299265 call!268810)))

(declare-fun b!3712985 () Bool)

(declare-fun e!2299267 () Bool)

(assert (=> b!3712985 (= e!2299267 e!2299266)))

(assert (=> b!3712985 (= c!641532 ((_ is Star!10849) lt!1296978))))

(declare-fun d!1087430 () Bool)

(declare-fun res!1509614 () Bool)

(assert (=> d!1087430 (=> res!1509614 e!2299267)))

(assert (=> d!1087430 (= res!1509614 ((_ is ElementMatch!10849) lt!1296978))))

(assert (=> d!1087430 (= (validRegex!4956 lt!1296978) e!2299267)))

(declare-fun b!3712980 () Bool)

(assert (=> b!3712980 (= e!2299264 e!2299270)))

(declare-fun res!1509617 () Bool)

(assert (=> b!3712980 (=> (not res!1509617) (not e!2299270))))

(assert (=> b!3712980 (= res!1509617 call!268808)))

(assert (= (and d!1087430 (not res!1509614)) b!3712985))

(assert (= (and b!3712985 c!641532) b!3712983))

(assert (= (and b!3712985 (not c!641532)) b!3712977))

(assert (= (and b!3712983 res!1509616) b!3712984))

(assert (= (and b!3712977 c!641531) b!3712981))

(assert (= (and b!3712977 (not c!641531)) b!3712978))

(assert (= (and b!3712981 res!1509613) b!3712979))

(assert (= (and b!3712978 (not res!1509615)) b!3712980))

(assert (= (and b!3712980 res!1509617) b!3712982))

(assert (= (or b!3712979 b!3712980) bm!268803))

(assert (= (or b!3712981 b!3712982) bm!268804))

(assert (= (or b!3712984 bm!268804) bm!268805))

(declare-fun m!4219569 () Bool)

(assert (=> bm!268803 m!4219569))

(declare-fun m!4219571 () Bool)

(assert (=> b!3712983 m!4219571))

(declare-fun m!4219573 () Bool)

(assert (=> bm!268805 m!4219573))

(assert (=> d!1087412 d!1087430))

(assert (=> d!1087412 d!1087414))

(declare-fun b!3712994 () Bool)

(declare-fun e!2299277 () Regex!10849)

(assert (=> b!3712994 (= e!2299277 EmptyLang!10849)))

(declare-fun bm!268810 () Bool)

(declare-fun call!268815 () Regex!10849)

(declare-fun c!641537 () Bool)

(assert (=> bm!268810 (= call!268815 (derivativeStep!3314 (ite c!641537 (regOne!22211 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) (regOne!22210 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))) c!13576))))

(declare-fun bm!268811 () Bool)

(declare-fun call!268817 () Regex!10849)

(assert (=> bm!268811 (= call!268817 call!268815)))

(declare-fun call!268816 () Regex!10849)

(declare-fun e!2299275 () Regex!10849)

(declare-fun b!3712995 () Bool)

(assert (=> b!3712995 (= e!2299275 (Concat!17120 call!268816 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(declare-fun c!641541 () Bool)

(declare-fun call!268818 () Regex!10849)

(declare-fun bm!268812 () Bool)

(assert (=> bm!268812 (= call!268818 (derivativeStep!3314 (ite c!641537 (regTwo!22211 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) (ite c!641541 (reg!11178 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) (regTwo!22210 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))) c!13576))))

(declare-fun b!3712996 () Bool)

(assert (=> b!3712996 (= c!641537 ((_ is Union!10849) (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(declare-fun e!2299278 () Regex!10849)

(declare-fun e!2299276 () Regex!10849)

(assert (=> b!3712996 (= e!2299278 e!2299276)))

(declare-fun d!1087434 () Bool)

(declare-fun lt!1296984 () Regex!10849)

(assert (=> d!1087434 (validRegex!4956 lt!1296984)))

(assert (=> d!1087434 (= lt!1296984 e!2299277)))

(declare-fun c!641538 () Bool)

(assert (=> d!1087434 (= c!641538 (or ((_ is EmptyExpr!10849) (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) ((_ is EmptyLang!10849) (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))))

(assert (=> d!1087434 (validRegex!4956 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))

(assert (=> d!1087434 (= (derivativeStep!3314 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) c!13576) lt!1296984)))

(declare-fun b!3712997 () Bool)

(assert (=> b!3712997 (= e!2299276 (Union!10849 call!268815 call!268818))))

(declare-fun bm!268813 () Bool)

(assert (=> bm!268813 (= call!268816 call!268818)))

(declare-fun b!3712998 () Bool)

(assert (=> b!3712998 (= e!2299276 e!2299275)))

(assert (=> b!3712998 (= c!641541 ((_ is Star!10849) (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(declare-fun b!3712999 () Bool)

(declare-fun c!641540 () Bool)

(assert (=> b!3712999 (= c!641540 (nullable!3772 (regOne!22210 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))))

(declare-fun e!2299279 () Regex!10849)

(assert (=> b!3712999 (= e!2299275 e!2299279)))

(declare-fun b!3713000 () Bool)

(assert (=> b!3713000 (= e!2299279 (Union!10849 (Concat!17120 call!268817 (regTwo!22210 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))) EmptyLang!10849))))

(declare-fun b!3713001 () Bool)

(assert (=> b!3713001 (= e!2299279 (Union!10849 (Concat!17120 call!268817 (regTwo!22210 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))) call!268816))))

(declare-fun b!3713002 () Bool)

(assert (=> b!3713002 (= e!2299277 e!2299278)))

(declare-fun c!641539 () Bool)

(assert (=> b!3713002 (= c!641539 ((_ is ElementMatch!10849) (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(declare-fun b!3713003 () Bool)

(assert (=> b!3713003 (= e!2299278 (ite (= c!13576 (c!641401 (ite c!641499 (regTwo!22211 (regTwo!22211 r!26326)) (ite c!641503 (reg!11178 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087434 c!641538) b!3712994))

(assert (= (and d!1087434 (not c!641538)) b!3713002))

(assert (= (and b!3713002 c!641539) b!3713003))

(assert (= (and b!3713002 (not c!641539)) b!3712996))

(assert (= (and b!3712996 c!641537) b!3712997))

(assert (= (and b!3712996 (not c!641537)) b!3712998))

(assert (= (and b!3712998 c!641541) b!3712995))

(assert (= (and b!3712998 (not c!641541)) b!3712999))

(assert (= (and b!3712999 c!641540) b!3713001))

(assert (= (and b!3712999 (not c!641540)) b!3713000))

(assert (= (or b!3713001 b!3713000) bm!268811))

(assert (= (or b!3712995 b!3713001) bm!268813))

(assert (= (or b!3712997 bm!268813) bm!268812))

(assert (= (or b!3712997 bm!268811) bm!268810))

(declare-fun m!4219587 () Bool)

(assert (=> bm!268810 m!4219587))

(declare-fun m!4219589 () Bool)

(assert (=> bm!268812 m!4219589))

(declare-fun m!4219591 () Bool)

(assert (=> d!1087434 m!4219591))

(declare-fun m!4219593 () Bool)

(assert (=> d!1087434 m!4219593))

(declare-fun m!4219595 () Bool)

(assert (=> b!3712999 m!4219595))

(assert (=> bm!268772 d!1087434))

(declare-fun b!3713022 () Bool)

(declare-fun e!2299296 () Regex!10849)

(assert (=> b!3713022 (= e!2299296 EmptyLang!10849)))

(declare-fun call!268825 () Regex!10849)

(declare-fun c!641546 () Bool)

(declare-fun bm!268820 () Bool)

(assert (=> bm!268820 (= call!268825 (derivativeStep!3314 (ite c!641546 (regOne!22211 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))) (regOne!22210 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))))) c!13576))))

(declare-fun bm!268821 () Bool)

(declare-fun call!268827 () Regex!10849)

(assert (=> bm!268821 (= call!268827 call!268825)))

(declare-fun call!268826 () Regex!10849)

(declare-fun e!2299294 () Regex!10849)

(declare-fun b!3713023 () Bool)

(assert (=> b!3713023 (= e!2299294 (Concat!17120 call!268826 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))))))

(declare-fun c!641550 () Bool)

(declare-fun bm!268822 () Bool)

(declare-fun call!268828 () Regex!10849)

(assert (=> bm!268822 (= call!268828 (derivativeStep!3314 (ite c!641546 (regTwo!22211 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))) (ite c!641550 (reg!11178 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))) (regTwo!22210 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))))) c!13576))))

(declare-fun b!3713024 () Bool)

(assert (=> b!3713024 (= c!641546 ((_ is Union!10849) (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))))))

(declare-fun e!2299297 () Regex!10849)

(declare-fun e!2299295 () Regex!10849)

(assert (=> b!3713024 (= e!2299297 e!2299295)))

(declare-fun d!1087440 () Bool)

(declare-fun lt!1296985 () Regex!10849)

(assert (=> d!1087440 (validRegex!4956 lt!1296985)))

(assert (=> d!1087440 (= lt!1296985 e!2299296)))

(declare-fun c!641547 () Bool)

(assert (=> d!1087440 (= c!641547 (or ((_ is EmptyExpr!10849) (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))) ((_ is EmptyLang!10849) (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))))))))

(assert (=> d!1087440 (validRegex!4956 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))))))

(assert (=> d!1087440 (= (derivativeStep!3314 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))) c!13576) lt!1296985)))

(declare-fun b!3713025 () Bool)

(assert (=> b!3713025 (= e!2299295 (Union!10849 call!268825 call!268828))))

(declare-fun bm!268823 () Bool)

(assert (=> bm!268823 (= call!268826 call!268828)))

(declare-fun b!3713026 () Bool)

(assert (=> b!3713026 (= e!2299295 e!2299294)))

(assert (=> b!3713026 (= c!641550 ((_ is Star!10849) (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))))))

(declare-fun b!3713027 () Bool)

(declare-fun c!641549 () Bool)

(assert (=> b!3713027 (= c!641549 (nullable!3772 (regOne!22210 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))))))))

(declare-fun e!2299298 () Regex!10849)

(assert (=> b!3713027 (= e!2299294 e!2299298)))

(declare-fun b!3713028 () Bool)

(assert (=> b!3713028 (= e!2299298 (Union!10849 (Concat!17120 call!268827 (regTwo!22210 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))))) EmptyLang!10849))))

(declare-fun b!3713029 () Bool)

(assert (=> b!3713029 (= e!2299298 (Union!10849 (Concat!17120 call!268827 (regTwo!22210 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))))) call!268826))))

(declare-fun b!3713030 () Bool)

(assert (=> b!3713030 (= e!2299296 e!2299297)))

(declare-fun c!641548 () Bool)

(assert (=> b!3713030 (= c!641548 ((_ is ElementMatch!10849) (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))))))

(declare-fun b!3713031 () Bool)

(assert (=> b!3713031 (= e!2299297 (ite (= c!13576 (c!641401 (ite c!641493 (regOne!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326))))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087440 c!641547) b!3713022))

(assert (= (and d!1087440 (not c!641547)) b!3713030))

(assert (= (and b!3713030 c!641548) b!3713031))

(assert (= (and b!3713030 (not c!641548)) b!3713024))

(assert (= (and b!3713024 c!641546) b!3713025))

(assert (= (and b!3713024 (not c!641546)) b!3713026))

(assert (= (and b!3713026 c!641550) b!3713023))

(assert (= (and b!3713026 (not c!641550)) b!3713027))

(assert (= (and b!3713027 c!641549) b!3713029))

(assert (= (and b!3713027 (not c!641549)) b!3713028))

(assert (= (or b!3713029 b!3713028) bm!268821))

(assert (= (or b!3713023 b!3713029) bm!268823))

(assert (= (or b!3713025 bm!268823) bm!268822))

(assert (= (or b!3713025 bm!268821) bm!268820))

(declare-fun m!4219605 () Bool)

(assert (=> bm!268820 m!4219605))

(declare-fun m!4219611 () Bool)

(assert (=> bm!268822 m!4219611))

(declare-fun m!4219613 () Bool)

(assert (=> d!1087440 m!4219613))

(declare-fun m!4219615 () Bool)

(assert (=> d!1087440 m!4219615))

(declare-fun m!4219617 () Bool)

(assert (=> b!3713027 m!4219617))

(assert (=> bm!268766 d!1087440))

(declare-fun c!641555 () Bool)

(declare-fun c!641557 () Bool)

(declare-fun call!268833 () List!39730)

(declare-fun bm!268828 () Bool)

(assert (=> bm!268828 (= call!268833 (usedCharacters!1112 (ite c!641555 (reg!11178 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) (ite c!641557 (regOne!22211 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) (regOne!22210 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))))

(declare-fun bm!268829 () Bool)

(declare-fun call!268836 () List!39730)

(declare-fun call!268835 () List!39730)

(declare-fun call!268834 () List!39730)

(assert (=> bm!268829 (= call!268836 (++!9794 call!268835 call!268834))))

(declare-fun b!3713040 () Bool)

(declare-fun e!2299304 () List!39730)

(assert (=> b!3713040 (= e!2299304 Nil!39606)))

(declare-fun b!3713041 () Bool)

(declare-fun e!2299303 () List!39730)

(assert (=> b!3713041 (= e!2299303 call!268836)))

(declare-fun d!1087446 () Bool)

(declare-fun c!641556 () Bool)

(assert (=> d!1087446 (= c!641556 (or ((_ is EmptyExpr!10849) (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) ((_ is EmptyLang!10849) (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(assert (=> d!1087446 (= (usedCharacters!1112 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) e!2299304)))

(declare-fun b!3713042 () Bool)

(declare-fun e!2299305 () List!39730)

(assert (=> b!3713042 (= e!2299305 call!268833)))

(declare-fun b!3713043 () Bool)

(assert (=> b!3713043 (= e!2299303 call!268836)))

(declare-fun b!3713044 () Bool)

(assert (=> b!3713044 (= e!2299305 e!2299303)))

(assert (=> b!3713044 (= c!641557 ((_ is Union!10849) (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))

(declare-fun bm!268830 () Bool)

(assert (=> bm!268830 (= call!268834 (usedCharacters!1112 (ite c!641557 (regTwo!22211 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) (regTwo!22210 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))))

(declare-fun b!3713045 () Bool)

(declare-fun e!2299306 () List!39730)

(assert (=> b!3713045 (= e!2299306 (Cons!39606 (c!641401 (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))) Nil!39606))))

(declare-fun b!3713046 () Bool)

(assert (=> b!3713046 (= e!2299304 e!2299306)))

(declare-fun c!641558 () Bool)

(assert (=> b!3713046 (= c!641558 ((_ is ElementMatch!10849) (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))

(declare-fun bm!268831 () Bool)

(assert (=> bm!268831 (= call!268835 call!268833)))

(declare-fun b!3713047 () Bool)

(assert (=> b!3713047 (= c!641555 ((_ is Star!10849) (ite c!641490 (regTwo!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))

(assert (=> b!3713047 (= e!2299306 e!2299305)))

(assert (= (and d!1087446 c!641556) b!3713040))

(assert (= (and d!1087446 (not c!641556)) b!3713046))

(assert (= (and b!3713046 c!641558) b!3713045))

(assert (= (and b!3713046 (not c!641558)) b!3713047))

(assert (= (and b!3713047 c!641555) b!3713042))

(assert (= (and b!3713047 (not c!641555)) b!3713044))

(assert (= (and b!3713044 c!641557) b!3713043))

(assert (= (and b!3713044 (not c!641557)) b!3713041))

(assert (= (or b!3713043 b!3713041) bm!268831))

(assert (= (or b!3713043 b!3713041) bm!268830))

(assert (= (or b!3713043 b!3713041) bm!268829))

(assert (= (or b!3713042 bm!268831) bm!268828))

(declare-fun m!4219619 () Bool)

(assert (=> bm!268828 m!4219619))

(declare-fun m!4219621 () Bool)

(assert (=> bm!268829 m!4219621))

(declare-fun m!4219623 () Bool)

(assert (=> bm!268830 m!4219623))

(assert (=> bm!268764 d!1087446))

(declare-fun b!3713048 () Bool)

(declare-fun e!2299309 () Bool)

(declare-fun e!2299312 () Bool)

(assert (=> b!3713048 (= e!2299309 e!2299312)))

(declare-fun c!641559 () Bool)

(assert (=> b!3713048 (= c!641559 ((_ is Union!10849) (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(declare-fun b!3713049 () Bool)

(declare-fun res!1509630 () Bool)

(declare-fun e!2299307 () Bool)

(assert (=> b!3713049 (=> res!1509630 e!2299307)))

(assert (=> b!3713049 (= res!1509630 (not ((_ is Concat!17120) (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))))

(assert (=> b!3713049 (= e!2299312 e!2299307)))

(declare-fun b!3713050 () Bool)

(declare-fun e!2299311 () Bool)

(declare-fun call!268837 () Bool)

(assert (=> b!3713050 (= e!2299311 call!268837)))

(declare-fun bm!268832 () Bool)

(assert (=> bm!268832 (= call!268837 (validRegex!4956 (ite c!641559 (regTwo!22211 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) (regOne!22210 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))))

(declare-fun bm!268833 () Bool)

(declare-fun call!268838 () Bool)

(declare-fun call!268839 () Bool)

(assert (=> bm!268833 (= call!268838 call!268839)))

(declare-fun b!3713052 () Bool)

(declare-fun res!1509628 () Bool)

(assert (=> b!3713052 (=> (not res!1509628) (not e!2299311))))

(assert (=> b!3713052 (= res!1509628 call!268838)))

(assert (=> b!3713052 (= e!2299312 e!2299311)))

(declare-fun b!3713053 () Bool)

(declare-fun e!2299313 () Bool)

(assert (=> b!3713053 (= e!2299313 call!268838)))

(declare-fun b!3713054 () Bool)

(declare-fun e!2299308 () Bool)

(assert (=> b!3713054 (= e!2299309 e!2299308)))

(declare-fun res!1509631 () Bool)

(assert (=> b!3713054 (= res!1509631 (not (nullable!3772 (reg!11178 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))))

(assert (=> b!3713054 (=> (not res!1509631) (not e!2299308))))

(declare-fun bm!268834 () Bool)

(declare-fun c!641560 () Bool)

(assert (=> bm!268834 (= call!268839 (validRegex!4956 (ite c!641560 (reg!11178 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) (ite c!641559 (regOne!22211 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) (regTwo!22210 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326)))))))))))

(declare-fun b!3713055 () Bool)

(assert (=> b!3713055 (= e!2299308 call!268839)))

(declare-fun b!3713056 () Bool)

(declare-fun e!2299310 () Bool)

(assert (=> b!3713056 (= e!2299310 e!2299309)))

(assert (=> b!3713056 (= c!641560 ((_ is Star!10849) (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(declare-fun d!1087448 () Bool)

(declare-fun res!1509629 () Bool)

(assert (=> d!1087448 (=> res!1509629 e!2299310)))

(assert (=> d!1087448 (= res!1509629 ((_ is ElementMatch!10849) (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))))))

(assert (=> d!1087448 (= (validRegex!4956 (ite c!641509 (reg!11178 (regTwo!22211 r!26326)) (ite c!641508 (regOne!22211 (regTwo!22211 r!26326)) (regTwo!22210 (regTwo!22211 r!26326))))) e!2299310)))

(declare-fun b!3713051 () Bool)

(assert (=> b!3713051 (= e!2299307 e!2299313)))

(declare-fun res!1509632 () Bool)

(assert (=> b!3713051 (=> (not res!1509632) (not e!2299313))))

(assert (=> b!3713051 (= res!1509632 call!268837)))

(assert (= (and d!1087448 (not res!1509629)) b!3713056))

(assert (= (and b!3713056 c!641560) b!3713054))

(assert (= (and b!3713056 (not c!641560)) b!3713048))

(assert (= (and b!3713054 res!1509631) b!3713055))

(assert (= (and b!3713048 c!641559) b!3713052))

(assert (= (and b!3713048 (not c!641559)) b!3713049))

(assert (= (and b!3713052 res!1509628) b!3713050))

(assert (= (and b!3713049 (not res!1509630)) b!3713051))

(assert (= (and b!3713051 res!1509632) b!3713053))

(assert (= (or b!3713050 b!3713051) bm!268832))

(assert (= (or b!3713052 b!3713053) bm!268833))

(assert (= (or b!3713055 bm!268833) bm!268834))

(declare-fun m!4219625 () Bool)

(assert (=> bm!268832 m!4219625))

(declare-fun m!4219627 () Bool)

(assert (=> b!3713054 m!4219627))

(declare-fun m!4219629 () Bool)

(assert (=> bm!268834 m!4219629))

(assert (=> bm!268782 d!1087448))

(declare-fun d!1087450 () Bool)

(assert (=> d!1087450 (= (nullable!3772 (reg!11178 (regTwo!22211 r!26326))) (nullableFct!1061 (reg!11178 (regTwo!22211 r!26326))))))

(declare-fun bs!574775 () Bool)

(assert (= bs!574775 d!1087450))

(declare-fun m!4219631 () Bool)

(assert (=> bs!574775 m!4219631))

(assert (=> b!3712868 d!1087450))

(declare-fun b!3713071 () Bool)

(declare-fun e!2299328 () Bool)

(declare-fun e!2299331 () Bool)

(assert (=> b!3713071 (= e!2299328 e!2299331)))

(declare-fun c!641563 () Bool)

(assert (=> b!3713071 (= c!641563 ((_ is Union!10849) lt!1296947))))

(declare-fun b!3713072 () Bool)

(declare-fun res!1509645 () Bool)

(declare-fun e!2299326 () Bool)

(assert (=> b!3713072 (=> res!1509645 e!2299326)))

(assert (=> b!3713072 (= res!1509645 (not ((_ is Concat!17120) lt!1296947)))))

(assert (=> b!3713072 (= e!2299331 e!2299326)))

(declare-fun b!3713073 () Bool)

(declare-fun e!2299330 () Bool)

(declare-fun call!268844 () Bool)

(assert (=> b!3713073 (= e!2299330 call!268844)))

(declare-fun bm!268839 () Bool)

(assert (=> bm!268839 (= call!268844 (validRegex!4956 (ite c!641563 (regTwo!22211 lt!1296947) (regOne!22210 lt!1296947))))))

(declare-fun bm!268840 () Bool)

(declare-fun call!268845 () Bool)

(declare-fun call!268846 () Bool)

(assert (=> bm!268840 (= call!268845 call!268846)))

(declare-fun b!3713075 () Bool)

(declare-fun res!1509643 () Bool)

(assert (=> b!3713075 (=> (not res!1509643) (not e!2299330))))

(assert (=> b!3713075 (= res!1509643 call!268845)))

(assert (=> b!3713075 (= e!2299331 e!2299330)))

(declare-fun b!3713076 () Bool)

(declare-fun e!2299332 () Bool)

(assert (=> b!3713076 (= e!2299332 call!268845)))

(declare-fun b!3713077 () Bool)

(declare-fun e!2299327 () Bool)

(assert (=> b!3713077 (= e!2299328 e!2299327)))

(declare-fun res!1509646 () Bool)

(assert (=> b!3713077 (= res!1509646 (not (nullable!3772 (reg!11178 lt!1296947))))))

(assert (=> b!3713077 (=> (not res!1509646) (not e!2299327))))

(declare-fun bm!268841 () Bool)

(declare-fun c!641564 () Bool)

(assert (=> bm!268841 (= call!268846 (validRegex!4956 (ite c!641564 (reg!11178 lt!1296947) (ite c!641563 (regOne!22211 lt!1296947) (regTwo!22210 lt!1296947)))))))

(declare-fun b!3713078 () Bool)

(assert (=> b!3713078 (= e!2299327 call!268846)))

(declare-fun b!3713079 () Bool)

(declare-fun e!2299329 () Bool)

(assert (=> b!3713079 (= e!2299329 e!2299328)))

(assert (=> b!3713079 (= c!641564 ((_ is Star!10849) lt!1296947))))

(declare-fun d!1087452 () Bool)

(declare-fun res!1509644 () Bool)

(assert (=> d!1087452 (=> res!1509644 e!2299329)))

(assert (=> d!1087452 (= res!1509644 ((_ is ElementMatch!10849) lt!1296947))))

(assert (=> d!1087452 (= (validRegex!4956 lt!1296947) e!2299329)))

(declare-fun b!3713074 () Bool)

(assert (=> b!3713074 (= e!2299326 e!2299332)))

(declare-fun res!1509647 () Bool)

(assert (=> b!3713074 (=> (not res!1509647) (not e!2299332))))

(assert (=> b!3713074 (= res!1509647 call!268844)))

(assert (= (and d!1087452 (not res!1509644)) b!3713079))

(assert (= (and b!3713079 c!641564) b!3713077))

(assert (= (and b!3713079 (not c!641564)) b!3713071))

(assert (= (and b!3713077 res!1509646) b!3713078))

(assert (= (and b!3713071 c!641563) b!3713075))

(assert (= (and b!3713071 (not c!641563)) b!3713072))

(assert (= (and b!3713075 res!1509643) b!3713073))

(assert (= (and b!3713072 (not res!1509645)) b!3713074))

(assert (= (and b!3713074 res!1509647) b!3713076))

(assert (= (or b!3713073 b!3713074) bm!268839))

(assert (= (or b!3713075 b!3713076) bm!268840))

(assert (= (or b!3713078 bm!268840) bm!268841))

(declare-fun m!4219633 () Bool)

(assert (=> bm!268839 m!4219633))

(declare-fun m!4219635 () Bool)

(assert (=> b!3713077 m!4219635))

(declare-fun m!4219637 () Bool)

(assert (=> bm!268841 m!4219637))

(assert (=> d!1087356 d!1087452))

(declare-fun b!3713080 () Bool)

(declare-fun e!2299335 () Bool)

(declare-fun e!2299338 () Bool)

(assert (=> b!3713080 (= e!2299335 e!2299338)))

(declare-fun c!641565 () Bool)

(assert (=> b!3713080 (= c!641565 ((_ is Union!10849) (derivativeStep!3314 r!26326 c!13576)))))

(declare-fun b!3713081 () Bool)

(declare-fun res!1509650 () Bool)

(declare-fun e!2299333 () Bool)

(assert (=> b!3713081 (=> res!1509650 e!2299333)))

(assert (=> b!3713081 (= res!1509650 (not ((_ is Concat!17120) (derivativeStep!3314 r!26326 c!13576))))))

(assert (=> b!3713081 (= e!2299338 e!2299333)))

(declare-fun b!3713082 () Bool)

(declare-fun e!2299337 () Bool)

(declare-fun call!268847 () Bool)

(assert (=> b!3713082 (= e!2299337 call!268847)))

(declare-fun bm!268842 () Bool)

(assert (=> bm!268842 (= call!268847 (validRegex!4956 (ite c!641565 (regTwo!22211 (derivativeStep!3314 r!26326 c!13576)) (regOne!22210 (derivativeStep!3314 r!26326 c!13576)))))))

(declare-fun bm!268843 () Bool)

(declare-fun call!268848 () Bool)

(declare-fun call!268849 () Bool)

(assert (=> bm!268843 (= call!268848 call!268849)))

(declare-fun b!3713084 () Bool)

(declare-fun res!1509648 () Bool)

(assert (=> b!3713084 (=> (not res!1509648) (not e!2299337))))

(assert (=> b!3713084 (= res!1509648 call!268848)))

(assert (=> b!3713084 (= e!2299338 e!2299337)))

(declare-fun b!3713085 () Bool)

(declare-fun e!2299339 () Bool)

(assert (=> b!3713085 (= e!2299339 call!268848)))

(declare-fun b!3713086 () Bool)

(declare-fun e!2299334 () Bool)

(assert (=> b!3713086 (= e!2299335 e!2299334)))

(declare-fun res!1509651 () Bool)

(assert (=> b!3713086 (= res!1509651 (not (nullable!3772 (reg!11178 (derivativeStep!3314 r!26326 c!13576)))))))

(assert (=> b!3713086 (=> (not res!1509651) (not e!2299334))))

(declare-fun bm!268844 () Bool)

(declare-fun c!641566 () Bool)

(assert (=> bm!268844 (= call!268849 (validRegex!4956 (ite c!641566 (reg!11178 (derivativeStep!3314 r!26326 c!13576)) (ite c!641565 (regOne!22211 (derivativeStep!3314 r!26326 c!13576)) (regTwo!22210 (derivativeStep!3314 r!26326 c!13576))))))))

(declare-fun b!3713087 () Bool)

(assert (=> b!3713087 (= e!2299334 call!268849)))

(declare-fun b!3713088 () Bool)

(declare-fun e!2299336 () Bool)

(assert (=> b!3713088 (= e!2299336 e!2299335)))

(assert (=> b!3713088 (= c!641566 ((_ is Star!10849) (derivativeStep!3314 r!26326 c!13576)))))

(declare-fun d!1087454 () Bool)

(declare-fun res!1509649 () Bool)

(assert (=> d!1087454 (=> res!1509649 e!2299336)))

(assert (=> d!1087454 (= res!1509649 ((_ is ElementMatch!10849) (derivativeStep!3314 r!26326 c!13576)))))

(assert (=> d!1087454 (= (validRegex!4956 (derivativeStep!3314 r!26326 c!13576)) e!2299336)))

(declare-fun b!3713083 () Bool)

(assert (=> b!3713083 (= e!2299333 e!2299339)))

(declare-fun res!1509652 () Bool)

(assert (=> b!3713083 (=> (not res!1509652) (not e!2299339))))

(assert (=> b!3713083 (= res!1509652 call!268847)))

(assert (= (and d!1087454 (not res!1509649)) b!3713088))

(assert (= (and b!3713088 c!641566) b!3713086))

(assert (= (and b!3713088 (not c!641566)) b!3713080))

(assert (= (and b!3713086 res!1509651) b!3713087))

(assert (= (and b!3713080 c!641565) b!3713084))

(assert (= (and b!3713080 (not c!641565)) b!3713081))

(assert (= (and b!3713084 res!1509648) b!3713082))

(assert (= (and b!3713081 (not res!1509650)) b!3713083))

(assert (= (and b!3713083 res!1509652) b!3713085))

(assert (= (or b!3713082 b!3713083) bm!268842))

(assert (= (or b!3713084 b!3713085) bm!268843))

(assert (= (or b!3713087 bm!268843) bm!268844))

(declare-fun m!4219639 () Bool)

(assert (=> bm!268842 m!4219639))

(declare-fun m!4219641 () Bool)

(assert (=> b!3713086 m!4219641))

(declare-fun m!4219643 () Bool)

(assert (=> bm!268844 m!4219643))

(assert (=> d!1087356 d!1087454))

(declare-fun d!1087456 () Bool)

(assert (=> d!1087456 (= (nullable!3772 (regOne!22210 r!26326)) (nullableFct!1061 (regOne!22210 r!26326)))))

(declare-fun bs!574776 () Bool)

(assert (= bs!574776 d!1087456))

(declare-fun m!4219645 () Bool)

(assert (=> bs!574776 m!4219645))

(assert (=> b!3712700 d!1087456))

(declare-fun d!1087458 () Bool)

(declare-fun lt!1296986 () Bool)

(assert (=> d!1087458 (= lt!1296986 (select (content!5731 (t!302413 (usedCharacters!1112 r!26326))) c!13576))))

(declare-fun e!2299346 () Bool)

(assert (=> d!1087458 (= lt!1296986 e!2299346)))

(declare-fun res!1509658 () Bool)

(assert (=> d!1087458 (=> (not res!1509658) (not e!2299346))))

(assert (=> d!1087458 (= res!1509658 ((_ is Cons!39606) (t!302413 (usedCharacters!1112 r!26326))))))

(assert (=> d!1087458 (= (contains!7942 (t!302413 (usedCharacters!1112 r!26326)) c!13576) lt!1296986)))

(declare-fun b!3713096 () Bool)

(declare-fun e!2299347 () Bool)

(assert (=> b!3713096 (= e!2299346 e!2299347)))

(declare-fun res!1509659 () Bool)

(assert (=> b!3713096 (=> res!1509659 e!2299347)))

(assert (=> b!3713096 (= res!1509659 (= (h!45026 (t!302413 (usedCharacters!1112 r!26326))) c!13576))))

(declare-fun b!3713097 () Bool)

(assert (=> b!3713097 (= e!2299347 (contains!7942 (t!302413 (t!302413 (usedCharacters!1112 r!26326))) c!13576))))

(assert (= (and d!1087458 res!1509658) b!3713096))

(assert (= (and b!3713096 (not res!1509659)) b!3713097))

(declare-fun m!4219647 () Bool)

(assert (=> d!1087458 m!4219647))

(declare-fun m!4219651 () Bool)

(assert (=> d!1087458 m!4219651))

(declare-fun m!4219655 () Bool)

(assert (=> b!3713097 m!4219655))

(assert (=> b!3712819 d!1087458))

(declare-fun b!3713098 () Bool)

(declare-fun e!2299350 () Regex!10849)

(assert (=> b!3713098 (= e!2299350 EmptyLang!10849)))

(declare-fun c!641568 () Bool)

(declare-fun bm!268847 () Bool)

(declare-fun call!268852 () Regex!10849)

(assert (=> bm!268847 (= call!268852 (derivativeStep!3314 (ite c!641568 (regOne!22211 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) (regOne!22210 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) c!13576))))

(declare-fun bm!268848 () Bool)

(declare-fun call!268854 () Regex!10849)

(assert (=> bm!268848 (= call!268854 call!268852)))

(declare-fun call!268853 () Regex!10849)

(declare-fun e!2299348 () Regex!10849)

(declare-fun b!3713099 () Bool)

(assert (=> b!3713099 (= e!2299348 (Concat!17120 call!268853 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(declare-fun c!641572 () Bool)

(declare-fun bm!268849 () Bool)

(declare-fun call!268855 () Regex!10849)

(assert (=> bm!268849 (= call!268855 (derivativeStep!3314 (ite c!641568 (regTwo!22211 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) (ite c!641572 (reg!11178 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) (regTwo!22210 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))) c!13576))))

(declare-fun b!3713100 () Bool)

(assert (=> b!3713100 (= c!641568 ((_ is Union!10849) (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(declare-fun e!2299351 () Regex!10849)

(declare-fun e!2299349 () Regex!10849)

(assert (=> b!3713100 (= e!2299351 e!2299349)))

(declare-fun d!1087462 () Bool)

(declare-fun lt!1296987 () Regex!10849)

(assert (=> d!1087462 (validRegex!4956 lt!1296987)))

(assert (=> d!1087462 (= lt!1296987 e!2299350)))

(declare-fun c!641569 () Bool)

(assert (=> d!1087462 (= c!641569 (or ((_ is EmptyExpr!10849) (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) ((_ is EmptyLang!10849) (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))

(assert (=> d!1087462 (validRegex!4956 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))

(assert (=> d!1087462 (= (derivativeStep!3314 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))) c!13576) lt!1296987)))

(declare-fun b!3713101 () Bool)

(assert (=> b!3713101 (= e!2299349 (Union!10849 call!268852 call!268855))))

(declare-fun bm!268850 () Bool)

(assert (=> bm!268850 (= call!268853 call!268855)))

(declare-fun b!3713102 () Bool)

(assert (=> b!3713102 (= e!2299349 e!2299348)))

(assert (=> b!3713102 (= c!641572 ((_ is Star!10849) (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(declare-fun b!3713103 () Bool)

(declare-fun c!641571 () Bool)

(assert (=> b!3713103 (= c!641571 (nullable!3772 (regOne!22210 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))

(declare-fun e!2299352 () Regex!10849)

(assert (=> b!3713103 (= e!2299348 e!2299352)))

(declare-fun b!3713104 () Bool)

(assert (=> b!3713104 (= e!2299352 (Union!10849 (Concat!17120 call!268854 (regTwo!22210 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) EmptyLang!10849))))

(declare-fun b!3713105 () Bool)

(assert (=> b!3713105 (= e!2299352 (Union!10849 (Concat!17120 call!268854 (regTwo!22210 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) call!268853))))

(declare-fun b!3713106 () Bool)

(assert (=> b!3713106 (= e!2299350 e!2299351)))

(declare-fun c!641570 () Bool)

(assert (=> b!3713106 (= c!641570 ((_ is ElementMatch!10849) (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(declare-fun b!3713107 () Bool)

(assert (=> b!3713107 (= e!2299351 (ite (= c!13576 (c!641401 (ite c!641499 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087462 c!641569) b!3713098))

(assert (= (and d!1087462 (not c!641569)) b!3713106))

(assert (= (and b!3713106 c!641570) b!3713107))

(assert (= (and b!3713106 (not c!641570)) b!3713100))

(assert (= (and b!3713100 c!641568) b!3713101))

(assert (= (and b!3713100 (not c!641568)) b!3713102))

(assert (= (and b!3713102 c!641572) b!3713099))

(assert (= (and b!3713102 (not c!641572)) b!3713103))

(assert (= (and b!3713103 c!641571) b!3713105))

(assert (= (and b!3713103 (not c!641571)) b!3713104))

(assert (= (or b!3713105 b!3713104) bm!268848))

(assert (= (or b!3713099 b!3713105) bm!268850))

(assert (= (or b!3713101 bm!268850) bm!268849))

(assert (= (or b!3713101 bm!268848) bm!268847))

(declare-fun m!4219665 () Bool)

(assert (=> bm!268847 m!4219665))

(declare-fun m!4219667 () Bool)

(assert (=> bm!268849 m!4219667))

(declare-fun m!4219669 () Bool)

(assert (=> d!1087462 m!4219669))

(declare-fun m!4219671 () Bool)

(assert (=> d!1087462 m!4219671))

(declare-fun m!4219673 () Bool)

(assert (=> b!3713103 m!4219673))

(assert (=> bm!268770 d!1087462))

(declare-fun d!1087468 () Bool)

(declare-fun lt!1296989 () Bool)

(assert (=> d!1087468 (= lt!1296989 (select (content!5731 (t!302413 (usedCharacters!1112 (regTwo!22211 r!26326)))) c!13576))))

(declare-fun e!2299365 () Bool)

(assert (=> d!1087468 (= lt!1296989 e!2299365)))

(declare-fun res!1509665 () Bool)

(assert (=> d!1087468 (=> (not res!1509665) (not e!2299365))))

(assert (=> d!1087468 (= res!1509665 ((_ is Cons!39606) (t!302413 (usedCharacters!1112 (regTwo!22211 r!26326)))))))

(assert (=> d!1087468 (= (contains!7942 (t!302413 (usedCharacters!1112 (regTwo!22211 r!26326))) c!13576) lt!1296989)))

(declare-fun b!3713127 () Bool)

(declare-fun e!2299366 () Bool)

(assert (=> b!3713127 (= e!2299365 e!2299366)))

(declare-fun res!1509666 () Bool)

(assert (=> b!3713127 (=> res!1509666 e!2299366)))

(assert (=> b!3713127 (= res!1509666 (= (h!45026 (t!302413 (usedCharacters!1112 (regTwo!22211 r!26326)))) c!13576))))

(declare-fun b!3713128 () Bool)

(assert (=> b!3713128 (= e!2299366 (contains!7942 (t!302413 (t!302413 (usedCharacters!1112 (regTwo!22211 r!26326)))) c!13576))))

(assert (= (and d!1087468 res!1509665) b!3713127))

(assert (= (and b!3713127 (not res!1509666)) b!3713128))

(declare-fun m!4219675 () Bool)

(assert (=> d!1087468 m!4219675))

(declare-fun m!4219677 () Bool)

(assert (=> d!1087468 m!4219677))

(declare-fun m!4219679 () Bool)

(assert (=> b!3713128 m!4219679))

(assert (=> b!3712777 d!1087468))

(declare-fun b!3713129 () Bool)

(declare-fun e!2299369 () Bool)

(declare-fun e!2299372 () Bool)

(assert (=> b!3713129 (= e!2299369 e!2299372)))

(declare-fun c!641580 () Bool)

(assert (=> b!3713129 (= c!641580 ((_ is Union!10849) lt!1296960))))

(declare-fun b!3713130 () Bool)

(declare-fun res!1509669 () Bool)

(declare-fun e!2299367 () Bool)

(assert (=> b!3713130 (=> res!1509669 e!2299367)))

(assert (=> b!3713130 (= res!1509669 (not ((_ is Concat!17120) lt!1296960)))))

(assert (=> b!3713130 (= e!2299372 e!2299367)))

(declare-fun b!3713131 () Bool)

(declare-fun e!2299371 () Bool)

(declare-fun call!268863 () Bool)

(assert (=> b!3713131 (= e!2299371 call!268863)))

(declare-fun bm!268858 () Bool)

(assert (=> bm!268858 (= call!268863 (validRegex!4956 (ite c!641580 (regTwo!22211 lt!1296960) (regOne!22210 lt!1296960))))))

(declare-fun bm!268859 () Bool)

(declare-fun call!268864 () Bool)

(declare-fun call!268865 () Bool)

(assert (=> bm!268859 (= call!268864 call!268865)))

(declare-fun b!3713133 () Bool)

(declare-fun res!1509667 () Bool)

(assert (=> b!3713133 (=> (not res!1509667) (not e!2299371))))

(assert (=> b!3713133 (= res!1509667 call!268864)))

(assert (=> b!3713133 (= e!2299372 e!2299371)))

(declare-fun b!3713134 () Bool)

(declare-fun e!2299373 () Bool)

(assert (=> b!3713134 (= e!2299373 call!268864)))

(declare-fun b!3713135 () Bool)

(declare-fun e!2299368 () Bool)

(assert (=> b!3713135 (= e!2299369 e!2299368)))

(declare-fun res!1509670 () Bool)

(assert (=> b!3713135 (= res!1509670 (not (nullable!3772 (reg!11178 lt!1296960))))))

(assert (=> b!3713135 (=> (not res!1509670) (not e!2299368))))

(declare-fun c!641581 () Bool)

(declare-fun bm!268860 () Bool)

(assert (=> bm!268860 (= call!268865 (validRegex!4956 (ite c!641581 (reg!11178 lt!1296960) (ite c!641580 (regOne!22211 lt!1296960) (regTwo!22210 lt!1296960)))))))

(declare-fun b!3713136 () Bool)

(assert (=> b!3713136 (= e!2299368 call!268865)))

(declare-fun b!3713137 () Bool)

(declare-fun e!2299370 () Bool)

(assert (=> b!3713137 (= e!2299370 e!2299369)))

(assert (=> b!3713137 (= c!641581 ((_ is Star!10849) lt!1296960))))

(declare-fun d!1087470 () Bool)

(declare-fun res!1509668 () Bool)

(assert (=> d!1087470 (=> res!1509668 e!2299370)))

(assert (=> d!1087470 (= res!1509668 ((_ is ElementMatch!10849) lt!1296960))))

(assert (=> d!1087470 (= (validRegex!4956 lt!1296960) e!2299370)))

(declare-fun b!3713132 () Bool)

(assert (=> b!3713132 (= e!2299367 e!2299373)))

(declare-fun res!1509671 () Bool)

(assert (=> b!3713132 (=> (not res!1509671) (not e!2299373))))

(assert (=> b!3713132 (= res!1509671 call!268863)))

(assert (= (and d!1087470 (not res!1509668)) b!3713137))

(assert (= (and b!3713137 c!641581) b!3713135))

(assert (= (and b!3713137 (not c!641581)) b!3713129))

(assert (= (and b!3713135 res!1509670) b!3713136))

(assert (= (and b!3713129 c!641580) b!3713133))

(assert (= (and b!3713129 (not c!641580)) b!3713130))

(assert (= (and b!3713133 res!1509667) b!3713131))

(assert (= (and b!3713130 (not res!1509669)) b!3713132))

(assert (= (and b!3713132 res!1509671) b!3713134))

(assert (= (or b!3713131 b!3713132) bm!268858))

(assert (= (or b!3713133 b!3713134) bm!268859))

(assert (= (or b!3713136 bm!268859) bm!268860))

(declare-fun m!4219697 () Bool)

(assert (=> bm!268858 m!4219697))

(declare-fun m!4219699 () Bool)

(assert (=> b!3713135 m!4219699))

(declare-fun m!4219701 () Bool)

(assert (=> bm!268860 m!4219701))

(assert (=> d!1087362 d!1087470))

(assert (=> d!1087362 d!1087416))

(declare-fun b!3713142 () Bool)

(declare-fun e!2299379 () Bool)

(declare-fun e!2299382 () Bool)

(assert (=> b!3713142 (= e!2299379 e!2299382)))

(declare-fun c!641583 () Bool)

(assert (=> b!3713142 (= c!641583 ((_ is Union!10849) (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))))))

(declare-fun b!3713143 () Bool)

(declare-fun res!1509676 () Bool)

(declare-fun e!2299377 () Bool)

(assert (=> b!3713143 (=> res!1509676 e!2299377)))

(assert (=> b!3713143 (= res!1509676 (not ((_ is Concat!17120) (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326))))))))

(assert (=> b!3713143 (= e!2299382 e!2299377)))

(declare-fun b!3713144 () Bool)

(declare-fun e!2299381 () Bool)

(declare-fun call!268866 () Bool)

(assert (=> b!3713144 (= e!2299381 call!268866)))

(declare-fun bm!268861 () Bool)

(assert (=> bm!268861 (= call!268866 (validRegex!4956 (ite c!641583 (regTwo!22211 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))) (regOne!22210 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))))))))

(declare-fun bm!268862 () Bool)

(declare-fun call!268867 () Bool)

(declare-fun call!268868 () Bool)

(assert (=> bm!268862 (= call!268867 call!268868)))

(declare-fun b!3713146 () Bool)

(declare-fun res!1509674 () Bool)

(assert (=> b!3713146 (=> (not res!1509674) (not e!2299381))))

(assert (=> b!3713146 (= res!1509674 call!268867)))

(assert (=> b!3713146 (= e!2299382 e!2299381)))

(declare-fun b!3713147 () Bool)

(declare-fun e!2299383 () Bool)

(assert (=> b!3713147 (= e!2299383 call!268867)))

(declare-fun b!3713148 () Bool)

(declare-fun e!2299378 () Bool)

(assert (=> b!3713148 (= e!2299379 e!2299378)))

(declare-fun res!1509677 () Bool)

(assert (=> b!3713148 (= res!1509677 (not (nullable!3772 (reg!11178 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))))))))

(assert (=> b!3713148 (=> (not res!1509677) (not e!2299378))))

(declare-fun c!641584 () Bool)

(declare-fun bm!268863 () Bool)

(assert (=> bm!268863 (= call!268868 (validRegex!4956 (ite c!641584 (reg!11178 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))) (ite c!641583 (regOne!22211 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))) (regTwo!22210 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326))))))))))

(declare-fun b!3713149 () Bool)

(assert (=> b!3713149 (= e!2299378 call!268868)))

(declare-fun b!3713150 () Bool)

(declare-fun e!2299380 () Bool)

(assert (=> b!3713150 (= e!2299380 e!2299379)))

(assert (=> b!3713150 (= c!641584 ((_ is Star!10849) (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))))))

(declare-fun d!1087476 () Bool)

(declare-fun res!1509675 () Bool)

(assert (=> d!1087476 (=> res!1509675 e!2299380)))

(assert (=> d!1087476 (= res!1509675 ((_ is ElementMatch!10849) (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))))))

(assert (=> d!1087476 (= (validRegex!4956 (ite c!641511 (reg!11178 r!26326) (ite c!641510 (regOne!22211 r!26326) (regTwo!22210 r!26326)))) e!2299380)))

(declare-fun b!3713145 () Bool)

(assert (=> b!3713145 (= e!2299377 e!2299383)))

(declare-fun res!1509678 () Bool)

(assert (=> b!3713145 (=> (not res!1509678) (not e!2299383))))

(assert (=> b!3713145 (= res!1509678 call!268866)))

(assert (= (and d!1087476 (not res!1509675)) b!3713150))

(assert (= (and b!3713150 c!641584) b!3713148))

(assert (= (and b!3713150 (not c!641584)) b!3713142))

(assert (= (and b!3713148 res!1509677) b!3713149))

(assert (= (and b!3713142 c!641583) b!3713146))

(assert (= (and b!3713142 (not c!641583)) b!3713143))

(assert (= (and b!3713146 res!1509674) b!3713144))

(assert (= (and b!3713143 (not res!1509676)) b!3713145))

(assert (= (and b!3713145 res!1509678) b!3713147))

(assert (= (or b!3713144 b!3713145) bm!268861))

(assert (= (or b!3713146 b!3713147) bm!268862))

(assert (= (or b!3713149 bm!268862) bm!268863))

(declare-fun m!4219711 () Bool)

(assert (=> bm!268861 m!4219711))

(declare-fun m!4219713 () Bool)

(assert (=> b!3713148 m!4219713))

(declare-fun m!4219715 () Bool)

(assert (=> bm!268863 m!4219715))

(assert (=> bm!268785 d!1087476))

(declare-fun b!3713161 () Bool)

(declare-fun e!2299391 () Bool)

(declare-fun e!2299394 () Bool)

(assert (=> b!3713161 (= e!2299391 e!2299394)))

(declare-fun c!641590 () Bool)

(assert (=> b!3713161 (= c!641590 ((_ is Union!10849) (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(declare-fun b!3713162 () Bool)

(declare-fun res!1509681 () Bool)

(declare-fun e!2299389 () Bool)

(assert (=> b!3713162 (=> res!1509681 e!2299389)))

(assert (=> b!3713162 (= res!1509681 (not ((_ is Concat!17120) (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))

(assert (=> b!3713162 (= e!2299394 e!2299389)))

(declare-fun b!3713163 () Bool)

(declare-fun e!2299393 () Bool)

(declare-fun call!268873 () Bool)

(assert (=> b!3713163 (= e!2299393 call!268873)))

(declare-fun bm!268868 () Bool)

(assert (=> bm!268868 (= call!268873 (validRegex!4956 (ite c!641590 (regTwo!22211 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) (regOne!22210 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))))

(declare-fun bm!268869 () Bool)

(declare-fun call!268874 () Bool)

(declare-fun call!268875 () Bool)

(assert (=> bm!268869 (= call!268874 call!268875)))

(declare-fun b!3713165 () Bool)

(declare-fun res!1509679 () Bool)

(assert (=> b!3713165 (=> (not res!1509679) (not e!2299393))))

(assert (=> b!3713165 (= res!1509679 call!268874)))

(assert (=> b!3713165 (= e!2299394 e!2299393)))

(declare-fun b!3713166 () Bool)

(declare-fun e!2299395 () Bool)

(assert (=> b!3713166 (= e!2299395 call!268874)))

(declare-fun b!3713167 () Bool)

(declare-fun e!2299390 () Bool)

(assert (=> b!3713167 (= e!2299391 e!2299390)))

(declare-fun res!1509682 () Bool)

(assert (=> b!3713167 (= res!1509682 (not (nullable!3772 (reg!11178 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))))

(assert (=> b!3713167 (=> (not res!1509682) (not e!2299390))))

(declare-fun c!641591 () Bool)

(declare-fun bm!268870 () Bool)

(assert (=> bm!268870 (= call!268875 (validRegex!4956 (ite c!641591 (reg!11178 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) (ite c!641590 (regOne!22211 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) (regTwo!22210 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))))

(declare-fun b!3713168 () Bool)

(assert (=> b!3713168 (= e!2299390 call!268875)))

(declare-fun b!3713169 () Bool)

(declare-fun e!2299392 () Bool)

(assert (=> b!3713169 (= e!2299392 e!2299391)))

(assert (=> b!3713169 (= c!641591 ((_ is Star!10849) (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(declare-fun d!1087480 () Bool)

(declare-fun res!1509680 () Bool)

(assert (=> d!1087480 (=> res!1509680 e!2299392)))

(assert (=> d!1087480 (= res!1509680 ((_ is ElementMatch!10849) (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))

(assert (=> d!1087480 (= (validRegex!4956 (ite c!641508 (regTwo!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))) e!2299392)))

(declare-fun b!3713164 () Bool)

(assert (=> b!3713164 (= e!2299389 e!2299395)))

(declare-fun res!1509683 () Bool)

(assert (=> b!3713164 (=> (not res!1509683) (not e!2299395))))

(assert (=> b!3713164 (= res!1509683 call!268873)))

(assert (= (and d!1087480 (not res!1509680)) b!3713169))

(assert (= (and b!3713169 c!641591) b!3713167))

(assert (= (and b!3713169 (not c!641591)) b!3713161))

(assert (= (and b!3713167 res!1509682) b!3713168))

(assert (= (and b!3713161 c!641590) b!3713165))

(assert (= (and b!3713161 (not c!641590)) b!3713162))

(assert (= (and b!3713165 res!1509679) b!3713163))

(assert (= (and b!3713162 (not res!1509681)) b!3713164))

(assert (= (and b!3713164 res!1509683) b!3713166))

(assert (= (or b!3713163 b!3713164) bm!268868))

(assert (= (or b!3713165 b!3713166) bm!268869))

(assert (= (or b!3713168 bm!268869) bm!268870))

(declare-fun m!4219725 () Bool)

(assert (=> bm!268868 m!4219725))

(declare-fun m!4219727 () Bool)

(assert (=> b!3713167 m!4219727))

(declare-fun m!4219729 () Bool)

(assert (=> bm!268870 m!4219729))

(assert (=> bm!268780 d!1087480))

(declare-fun d!1087484 () Bool)

(declare-fun c!641597 () Bool)

(assert (=> d!1087484 (= c!641597 ((_ is Nil!39606) (usedCharacters!1112 (regTwo!22211 r!26326))))))

(declare-fun e!2299405 () (InoxSet C!21884))

(assert (=> d!1087484 (= (content!5731 (usedCharacters!1112 (regTwo!22211 r!26326))) e!2299405)))

(declare-fun b!3713183 () Bool)

(assert (=> b!3713183 (= e!2299405 ((as const (Array C!21884 Bool)) false))))

(declare-fun b!3713184 () Bool)

(assert (=> b!3713184 (= e!2299405 ((_ map or) (store ((as const (Array C!21884 Bool)) false) (h!45026 (usedCharacters!1112 (regTwo!22211 r!26326))) true) (content!5731 (t!302413 (usedCharacters!1112 (regTwo!22211 r!26326))))))))

(assert (= (and d!1087484 c!641597) b!3713183))

(assert (= (and d!1087484 (not c!641597)) b!3713184))

(declare-fun m!4219737 () Bool)

(assert (=> b!3713184 m!4219737))

(assert (=> b!3713184 m!4219675))

(assert (=> d!1087390 d!1087484))

(declare-fun b!3713221 () Bool)

(declare-fun e!2299426 () List!39730)

(assert (=> b!3713221 (= e!2299426 (Cons!39606 (h!45026 call!268769) (++!9794 (t!302413 call!268769) call!268768)))))

(declare-fun b!3713222 () Bool)

(declare-fun res!1509700 () Bool)

(declare-fun e!2299427 () Bool)

(assert (=> b!3713222 (=> (not res!1509700) (not e!2299427))))

(declare-fun lt!1296997 () List!39730)

(declare-fun size!30016 (List!39730) Int)

(assert (=> b!3713222 (= res!1509700 (= (size!30016 lt!1296997) (+ (size!30016 call!268769) (size!30016 call!268768))))))

(declare-fun b!3713220 () Bool)

(assert (=> b!3713220 (= e!2299426 call!268768)))

(declare-fun d!1087488 () Bool)

(assert (=> d!1087488 e!2299427))

(declare-fun res!1509701 () Bool)

(assert (=> d!1087488 (=> (not res!1509701) (not e!2299427))))

(assert (=> d!1087488 (= res!1509701 (= (content!5731 lt!1296997) ((_ map or) (content!5731 call!268769) (content!5731 call!268768))))))

(assert (=> d!1087488 (= lt!1296997 e!2299426)))

(declare-fun c!641610 () Bool)

(assert (=> d!1087488 (= c!641610 ((_ is Nil!39606) call!268769))))

(assert (=> d!1087488 (= (++!9794 call!268769 call!268768) lt!1296997)))

(declare-fun b!3713223 () Bool)

(assert (=> b!3713223 (= e!2299427 (or (not (= call!268768 Nil!39606)) (= lt!1296997 call!268769)))))

(assert (= (and d!1087488 c!641610) b!3713220))

(assert (= (and d!1087488 (not c!641610)) b!3713221))

(assert (= (and d!1087488 res!1509701) b!3713222))

(assert (= (and b!3713222 res!1509700) b!3713223))

(declare-fun m!4219771 () Bool)

(assert (=> b!3713221 m!4219771))

(declare-fun m!4219773 () Bool)

(assert (=> b!3713222 m!4219773))

(declare-fun m!4219775 () Bool)

(assert (=> b!3713222 m!4219775))

(declare-fun m!4219777 () Bool)

(assert (=> b!3713222 m!4219777))

(declare-fun m!4219779 () Bool)

(assert (=> d!1087488 m!4219779))

(declare-fun m!4219781 () Bool)

(assert (=> d!1087488 m!4219781))

(declare-fun m!4219783 () Bool)

(assert (=> d!1087488 m!4219783))

(assert (=> bm!268763 d!1087488))

(declare-fun bm!268883 () Bool)

(declare-fun call!268888 () List!39730)

(declare-fun c!641613 () Bool)

(declare-fun c!641615 () Bool)

(assert (=> bm!268883 (= call!268888 (usedCharacters!1112 (ite c!641613 (reg!11178 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) (ite c!641615 (regOne!22211 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) (regOne!22210 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))))))

(declare-fun bm!268884 () Bool)

(declare-fun call!268891 () List!39730)

(declare-fun call!268890 () List!39730)

(declare-fun call!268889 () List!39730)

(assert (=> bm!268884 (= call!268891 (++!9794 call!268890 call!268889))))

(declare-fun b!3713233 () Bool)

(declare-fun e!2299436 () List!39730)

(assert (=> b!3713233 (= e!2299436 Nil!39606)))

(declare-fun b!3713234 () Bool)

(declare-fun e!2299435 () List!39730)

(assert (=> b!3713234 (= e!2299435 call!268891)))

(declare-fun d!1087500 () Bool)

(declare-fun c!641614 () Bool)

(assert (=> d!1087500 (= c!641614 (or ((_ is EmptyExpr!10849) (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) ((_ is EmptyLang!10849) (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326)))))))))

(assert (=> d!1087500 (= (usedCharacters!1112 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) e!2299436)))

(declare-fun b!3713235 () Bool)

(declare-fun e!2299437 () List!39730)

(assert (=> b!3713235 (= e!2299437 call!268888)))

(declare-fun b!3713236 () Bool)

(assert (=> b!3713236 (= e!2299435 call!268891)))

(declare-fun b!3713237 () Bool)

(assert (=> b!3713237 (= e!2299437 e!2299435)))

(assert (=> b!3713237 (= c!641615 ((_ is Union!10849) (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))

(declare-fun bm!268885 () Bool)

(assert (=> bm!268885 (= call!268889 (usedCharacters!1112 (ite c!641615 (regTwo!22211 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) (regTwo!22210 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))))

(declare-fun b!3713238 () Bool)

(declare-fun e!2299438 () List!39730)

(assert (=> b!3713238 (= e!2299438 (Cons!39606 (c!641401 (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))) Nil!39606))))

(declare-fun b!3713239 () Bool)

(assert (=> b!3713239 (= e!2299436 e!2299438)))

(declare-fun c!641616 () Bool)

(assert (=> b!3713239 (= c!641616 ((_ is ElementMatch!10849) (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))

(declare-fun bm!268886 () Bool)

(assert (=> bm!268886 (= call!268890 call!268888)))

(declare-fun b!3713240 () Bool)

(assert (=> b!3713240 (= c!641613 ((_ is Star!10849) (ite c!641488 (reg!11178 (regTwo!22211 r!26326)) (ite c!641490 (regOne!22211 (regTwo!22211 r!26326)) (regOne!22210 (regTwo!22211 r!26326))))))))

(assert (=> b!3713240 (= e!2299438 e!2299437)))

(assert (= (and d!1087500 c!641614) b!3713233))

(assert (= (and d!1087500 (not c!641614)) b!3713239))

(assert (= (and b!3713239 c!641616) b!3713238))

(assert (= (and b!3713239 (not c!641616)) b!3713240))

(assert (= (and b!3713240 c!641613) b!3713235))

(assert (= (and b!3713240 (not c!641613)) b!3713237))

(assert (= (and b!3713237 c!641615) b!3713236))

(assert (= (and b!3713237 (not c!641615)) b!3713234))

(assert (= (or b!3713236 b!3713234) bm!268886))

(assert (= (or b!3713236 b!3713234) bm!268885))

(assert (= (or b!3713236 b!3713234) bm!268884))

(assert (= (or b!3713235 bm!268886) bm!268883))

(declare-fun m!4219799 () Bool)

(assert (=> bm!268883 m!4219799))

(declare-fun m!4219801 () Bool)

(assert (=> bm!268884 m!4219801))

(declare-fun m!4219803 () Bool)

(assert (=> bm!268885 m!4219803))

(assert (=> bm!268762 d!1087500))

(declare-fun d!1087506 () Bool)

(declare-fun lt!1297000 () Regex!10849)

(assert (=> d!1087506 (validRegex!4956 lt!1297000)))

(declare-fun e!2299445 () Regex!10849)

(assert (=> d!1087506 (= lt!1297000 e!2299445)))

(declare-fun c!641623 () Bool)

(assert (=> d!1087506 (= c!641623 ((_ is Cons!39606) (t!302413 tl!3933)))))

(assert (=> d!1087506 (validRegex!4956 (derivativeStep!3314 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) (h!45026 tl!3933)))))

(assert (=> d!1087506 (= (derivative!363 (derivativeStep!3314 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) (h!45026 tl!3933)) (t!302413 tl!3933)) lt!1297000)))

(declare-fun b!3713253 () Bool)

(assert (=> b!3713253 (= e!2299445 (derivative!363 (derivativeStep!3314 (derivativeStep!3314 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) (h!45026 tl!3933)) (h!45026 (t!302413 tl!3933))) (t!302413 (t!302413 tl!3933))))))

(declare-fun b!3713254 () Bool)

(assert (=> b!3713254 (= e!2299445 (derivativeStep!3314 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) (h!45026 tl!3933)))))

(assert (= (and d!1087506 c!641623) b!3713253))

(assert (= (and d!1087506 (not c!641623)) b!3713254))

(declare-fun m!4219805 () Bool)

(assert (=> d!1087506 m!4219805))

(assert (=> d!1087506 m!4219481))

(declare-fun m!4219807 () Bool)

(assert (=> d!1087506 m!4219807))

(assert (=> b!3713253 m!4219481))

(declare-fun m!4219809 () Bool)

(assert (=> b!3713253 m!4219809))

(assert (=> b!3713253 m!4219809))

(declare-fun m!4219811 () Bool)

(assert (=> b!3713253 m!4219811))

(assert (=> b!3712820 d!1087506))

(declare-fun b!3713255 () Bool)

(declare-fun e!2299448 () Regex!10849)

(assert (=> b!3713255 (= e!2299448 EmptyLang!10849)))

(declare-fun c!641624 () Bool)

(declare-fun call!268896 () Regex!10849)

(declare-fun bm!268891 () Bool)

(assert (=> bm!268891 (= call!268896 (derivativeStep!3314 (ite c!641624 (regOne!22211 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) (regOne!22210 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))) (h!45026 tl!3933)))))

(declare-fun bm!268892 () Bool)

(declare-fun call!268898 () Regex!10849)

(assert (=> bm!268892 (= call!268898 call!268896)))

(declare-fun call!268897 () Regex!10849)

(declare-fun e!2299446 () Regex!10849)

(declare-fun b!3713256 () Bool)

(assert (=> b!3713256 (= e!2299446 (Concat!17120 call!268897 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))

(declare-fun bm!268893 () Bool)

(declare-fun call!268899 () Regex!10849)

(declare-fun c!641628 () Bool)

(assert (=> bm!268893 (= call!268899 (derivativeStep!3314 (ite c!641624 (regTwo!22211 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) (ite c!641628 (reg!11178 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) (regTwo!22210 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))) (h!45026 tl!3933)))))

(declare-fun b!3713257 () Bool)

(assert (=> b!3713257 (= c!641624 ((_ is Union!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))

(declare-fun e!2299449 () Regex!10849)

(declare-fun e!2299447 () Regex!10849)

(assert (=> b!3713257 (= e!2299449 e!2299447)))

(declare-fun d!1087508 () Bool)

(declare-fun lt!1297001 () Regex!10849)

(assert (=> d!1087508 (validRegex!4956 lt!1297001)))

(assert (=> d!1087508 (= lt!1297001 e!2299448)))

(declare-fun c!641625 () Bool)

(assert (=> d!1087508 (= c!641625 (or ((_ is EmptyExpr!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) ((_ is EmptyLang!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576))))))

(assert (=> d!1087508 (validRegex!4956 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))))

(assert (=> d!1087508 (= (derivativeStep!3314 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) (h!45026 tl!3933)) lt!1297001)))

(declare-fun b!3713258 () Bool)

(assert (=> b!3713258 (= e!2299447 (Union!10849 call!268896 call!268899))))

(declare-fun bm!268894 () Bool)

(assert (=> bm!268894 (= call!268897 call!268899)))

(declare-fun b!3713259 () Bool)

(assert (=> b!3713259 (= e!2299447 e!2299446)))

(assert (=> b!3713259 (= c!641628 ((_ is Star!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))

(declare-fun b!3713260 () Bool)

(declare-fun c!641627 () Bool)

(assert (=> b!3713260 (= c!641627 (nullable!3772 (regOne!22210 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))))))

(declare-fun e!2299450 () Regex!10849)

(assert (=> b!3713260 (= e!2299446 e!2299450)))

(declare-fun b!3713261 () Bool)

(assert (=> b!3713261 (= e!2299450 (Union!10849 (Concat!17120 call!268898 (regTwo!22210 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))) EmptyLang!10849))))

(declare-fun b!3713262 () Bool)

(assert (=> b!3713262 (= e!2299450 (Union!10849 (Concat!17120 call!268898 (regTwo!22210 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))) call!268897))))

(declare-fun b!3713263 () Bool)

(assert (=> b!3713263 (= e!2299448 e!2299449)))

(declare-fun c!641626 () Bool)

(assert (=> b!3713263 (= c!641626 ((_ is ElementMatch!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))

(declare-fun b!3713264 () Bool)

(assert (=> b!3713264 (= e!2299449 (ite (= (h!45026 tl!3933) (c!641401 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087508 c!641625) b!3713255))

(assert (= (and d!1087508 (not c!641625)) b!3713263))

(assert (= (and b!3713263 c!641626) b!3713264))

(assert (= (and b!3713263 (not c!641626)) b!3713257))

(assert (= (and b!3713257 c!641624) b!3713258))

(assert (= (and b!3713257 (not c!641624)) b!3713259))

(assert (= (and b!3713259 c!641628) b!3713256))

(assert (= (and b!3713259 (not c!641628)) b!3713260))

(assert (= (and b!3713260 c!641627) b!3713262))

(assert (= (and b!3713260 (not c!641627)) b!3713261))

(assert (= (or b!3713262 b!3713261) bm!268892))

(assert (= (or b!3713256 b!3713262) bm!268894))

(assert (= (or b!3713258 bm!268894) bm!268893))

(assert (= (or b!3713258 bm!268892) bm!268891))

(declare-fun m!4219823 () Bool)

(assert (=> bm!268891 m!4219823))

(declare-fun m!4219825 () Bool)

(assert (=> bm!268893 m!4219825))

(declare-fun m!4219827 () Bool)

(assert (=> d!1087508 m!4219827))

(assert (=> d!1087508 m!4219305))

(assert (=> d!1087508 m!4219479))

(declare-fun m!4219831 () Bool)

(assert (=> b!3713260 m!4219831))

(assert (=> b!3712820 d!1087508))

(declare-fun d!1087514 () Bool)

(assert (=> d!1087514 (= (nullable!3772 (reg!11178 r!26326)) (nullableFct!1061 (reg!11178 r!26326)))))

(declare-fun bs!574780 () Bool)

(assert (= bs!574780 d!1087514))

(declare-fun m!4219837 () Bool)

(assert (=> bs!574780 m!4219837))

(assert (=> b!3712877 d!1087514))

(declare-fun b!3713283 () Bool)

(declare-fun e!2299467 () Regex!10849)

(assert (=> b!3713283 (= e!2299467 EmptyLang!10849)))

(declare-fun c!641633 () Bool)

(declare-fun bm!268901 () Bool)

(declare-fun call!268906 () Regex!10849)

(assert (=> bm!268901 (= call!268906 (derivativeStep!3314 (ite c!641633 (regOne!22211 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))) (regOne!22210 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))))) c!13576))))

(declare-fun bm!268902 () Bool)

(declare-fun call!268908 () Regex!10849)

(assert (=> bm!268902 (= call!268908 call!268906)))

(declare-fun call!268907 () Regex!10849)

(declare-fun e!2299465 () Regex!10849)

(declare-fun b!3713284 () Bool)

(assert (=> b!3713284 (= e!2299465 (Concat!17120 call!268907 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))))))

(declare-fun c!641637 () Bool)

(declare-fun call!268909 () Regex!10849)

(declare-fun bm!268903 () Bool)

(assert (=> bm!268903 (= call!268909 (derivativeStep!3314 (ite c!641633 (regTwo!22211 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))) (ite c!641637 (reg!11178 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))) (regTwo!22210 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))))) c!13576))))

(declare-fun b!3713285 () Bool)

(assert (=> b!3713285 (= c!641633 ((_ is Union!10849) (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))))))

(declare-fun e!2299468 () Regex!10849)

(declare-fun e!2299466 () Regex!10849)

(assert (=> b!3713285 (= e!2299468 e!2299466)))

(declare-fun d!1087518 () Bool)

(declare-fun lt!1297002 () Regex!10849)

(assert (=> d!1087518 (validRegex!4956 lt!1297002)))

(assert (=> d!1087518 (= lt!1297002 e!2299467)))

(declare-fun c!641634 () Bool)

(assert (=> d!1087518 (= c!641634 (or ((_ is EmptyExpr!10849) (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))) ((_ is EmptyLang!10849) (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))))))))

(assert (=> d!1087518 (validRegex!4956 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))))))

(assert (=> d!1087518 (= (derivativeStep!3314 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))) c!13576) lt!1297002)))

(declare-fun b!3713286 () Bool)

(assert (=> b!3713286 (= e!2299466 (Union!10849 call!268906 call!268909))))

(declare-fun bm!268904 () Bool)

(assert (=> bm!268904 (= call!268907 call!268909)))

(declare-fun b!3713287 () Bool)

(assert (=> b!3713287 (= e!2299466 e!2299465)))

(assert (=> b!3713287 (= c!641637 ((_ is Star!10849) (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))))))

(declare-fun b!3713288 () Bool)

(declare-fun c!641636 () Bool)

(assert (=> b!3713288 (= c!641636 (nullable!3772 (regOne!22210 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))))))))

(declare-fun e!2299469 () Regex!10849)

(assert (=> b!3713288 (= e!2299465 e!2299469)))

(declare-fun b!3713289 () Bool)

(assert (=> b!3713289 (= e!2299469 (Union!10849 (Concat!17120 call!268908 (regTwo!22210 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))))) EmptyLang!10849))))

(declare-fun b!3713290 () Bool)

(assert (=> b!3713290 (= e!2299469 (Union!10849 (Concat!17120 call!268908 (regTwo!22210 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))))) call!268907))))

(declare-fun b!3713291 () Bool)

(assert (=> b!3713291 (= e!2299467 e!2299468)))

(declare-fun c!641635 () Bool)

(assert (=> b!3713291 (= c!641635 ((_ is ElementMatch!10849) (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326)))))))

(declare-fun b!3713292 () Bool)

(assert (=> b!3713292 (= e!2299468 (ite (= c!13576 (c!641401 (ite c!641453 (regTwo!22211 r!26326) (ite c!641457 (reg!11178 r!26326) (regTwo!22210 r!26326))))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087518 c!641634) b!3713283))

(assert (= (and d!1087518 (not c!641634)) b!3713291))

(assert (= (and b!3713291 c!641635) b!3713292))

(assert (= (and b!3713291 (not c!641635)) b!3713285))

(assert (= (and b!3713285 c!641633) b!3713286))

(assert (= (and b!3713285 (not c!641633)) b!3713287))

(assert (= (and b!3713287 c!641637) b!3713284))

(assert (= (and b!3713287 (not c!641637)) b!3713288))

(assert (= (and b!3713288 c!641636) b!3713290))

(assert (= (and b!3713288 (not c!641636)) b!3713289))

(assert (= (or b!3713290 b!3713289) bm!268902))

(assert (= (or b!3713284 b!3713290) bm!268904))

(assert (= (or b!3713286 bm!268904) bm!268903))

(assert (= (or b!3713286 bm!268902) bm!268901))

(declare-fun m!4219845 () Bool)

(assert (=> bm!268901 m!4219845))

(declare-fun m!4219847 () Bool)

(assert (=> bm!268903 m!4219847))

(declare-fun m!4219849 () Bool)

(assert (=> d!1087518 m!4219849))

(declare-fun m!4219851 () Bool)

(assert (=> d!1087518 m!4219851))

(declare-fun m!4219853 () Bool)

(assert (=> b!3713288 m!4219853))

(assert (=> bm!268732 d!1087518))

(declare-fun d!1087522 () Bool)

(declare-fun lt!1297003 () Regex!10849)

(assert (=> d!1087522 (validRegex!4956 lt!1297003)))

(declare-fun e!2299474 () Regex!10849)

(assert (=> d!1087522 (= lt!1297003 e!2299474)))

(declare-fun c!641642 () Bool)

(assert (=> d!1087522 (= c!641642 ((_ is Cons!39606) (t!302413 tl!3933)))))

(assert (=> d!1087522 (validRegex!4956 (derivativeStep!3314 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) (h!45026 tl!3933)))))

(assert (=> d!1087522 (= (derivative!363 (derivativeStep!3314 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) (h!45026 tl!3933)) (t!302413 tl!3933)) lt!1297003)))

(declare-fun b!3713301 () Bool)

(assert (=> b!3713301 (= e!2299474 (derivative!363 (derivativeStep!3314 (derivativeStep!3314 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) (h!45026 tl!3933)) (h!45026 (t!302413 tl!3933))) (t!302413 (t!302413 tl!3933))))))

(declare-fun b!3713302 () Bool)

(assert (=> b!3713302 (= e!2299474 (derivativeStep!3314 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) (h!45026 tl!3933)))))

(assert (= (and d!1087522 c!641642) b!3713301))

(assert (= (and d!1087522 (not c!641642)) b!3713302))

(declare-fun m!4219855 () Bool)

(assert (=> d!1087522 m!4219855))

(assert (=> d!1087522 m!4219501))

(declare-fun m!4219859 () Bool)

(assert (=> d!1087522 m!4219859))

(assert (=> b!3713301 m!4219501))

(declare-fun m!4219861 () Bool)

(assert (=> b!3713301 m!4219861))

(assert (=> b!3713301 m!4219861))

(declare-fun m!4219867 () Bool)

(assert (=> b!3713301 m!4219867))

(assert (=> b!3712832 d!1087522))

(declare-fun b!3713311 () Bool)

(declare-fun e!2299481 () Regex!10849)

(assert (=> b!3713311 (= e!2299481 EmptyLang!10849)))

(declare-fun bm!268913 () Bool)

(declare-fun c!641647 () Bool)

(declare-fun call!268918 () Regex!10849)

(assert (=> bm!268913 (= call!268918 (derivativeStep!3314 (ite c!641647 (regOne!22211 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) (regOne!22210 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))) (h!45026 tl!3933)))))

(declare-fun bm!268914 () Bool)

(declare-fun call!268920 () Regex!10849)

(assert (=> bm!268914 (= call!268920 call!268918)))

(declare-fun b!3713312 () Bool)

(declare-fun call!268919 () Regex!10849)

(declare-fun e!2299479 () Regex!10849)

(assert (=> b!3713312 (= e!2299479 (Concat!17120 call!268919 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))

(declare-fun call!268921 () Regex!10849)

(declare-fun c!641651 () Bool)

(declare-fun bm!268915 () Bool)

(assert (=> bm!268915 (= call!268921 (derivativeStep!3314 (ite c!641647 (regTwo!22211 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) (ite c!641651 (reg!11178 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) (regTwo!22210 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))) (h!45026 tl!3933)))))

(declare-fun b!3713313 () Bool)

(assert (=> b!3713313 (= c!641647 ((_ is Union!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))

(declare-fun e!2299482 () Regex!10849)

(declare-fun e!2299480 () Regex!10849)

(assert (=> b!3713313 (= e!2299482 e!2299480)))

(declare-fun d!1087526 () Bool)

(declare-fun lt!1297004 () Regex!10849)

(assert (=> d!1087526 (validRegex!4956 lt!1297004)))

(assert (=> d!1087526 (= lt!1297004 e!2299481)))

(declare-fun c!641648 () Bool)

(assert (=> d!1087526 (= c!641648 (or ((_ is EmptyExpr!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) ((_ is EmptyLang!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))))))

(assert (=> d!1087526 (validRegex!4956 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))))

(assert (=> d!1087526 (= (derivativeStep!3314 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576) (h!45026 tl!3933)) lt!1297004)))

(declare-fun b!3713314 () Bool)

(assert (=> b!3713314 (= e!2299480 (Union!10849 call!268918 call!268921))))

(declare-fun bm!268916 () Bool)

(assert (=> bm!268916 (= call!268919 call!268921)))

(declare-fun b!3713315 () Bool)

(assert (=> b!3713315 (= e!2299480 e!2299479)))

(assert (=> b!3713315 (= c!641651 ((_ is Star!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))

(declare-fun b!3713316 () Bool)

(declare-fun c!641650 () Bool)

(assert (=> b!3713316 (= c!641650 (nullable!3772 (regOne!22210 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))))))

(declare-fun e!2299483 () Regex!10849)

(assert (=> b!3713316 (= e!2299479 e!2299483)))

(declare-fun b!3713317 () Bool)

(assert (=> b!3713317 (= e!2299483 (Union!10849 (Concat!17120 call!268920 (regTwo!22210 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))) EmptyLang!10849))))

(declare-fun b!3713318 () Bool)

(assert (=> b!3713318 (= e!2299483 (Union!10849 (Concat!17120 call!268920 (regTwo!22210 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))) call!268919))))

(declare-fun b!3713319 () Bool)

(assert (=> b!3713319 (= e!2299481 e!2299482)))

(declare-fun c!641649 () Bool)

(assert (=> b!3713319 (= c!641649 ((_ is ElementMatch!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))

(declare-fun b!3713320 () Bool)

(assert (=> b!3713320 (= e!2299482 (ite (= (h!45026 tl!3933) (c!641401 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087526 c!641648) b!3713311))

(assert (= (and d!1087526 (not c!641648)) b!3713319))

(assert (= (and b!3713319 c!641649) b!3713320))

(assert (= (and b!3713319 (not c!641649)) b!3713313))

(assert (= (and b!3713313 c!641647) b!3713314))

(assert (= (and b!3713313 (not c!641647)) b!3713315))

(assert (= (and b!3713315 c!641651) b!3713312))

(assert (= (and b!3713315 (not c!641651)) b!3713316))

(assert (= (and b!3713316 c!641650) b!3713318))

(assert (= (and b!3713316 (not c!641650)) b!3713317))

(assert (= (or b!3713318 b!3713317) bm!268914))

(assert (= (or b!3713312 b!3713318) bm!268916))

(assert (= (or b!3713314 bm!268916) bm!268915))

(assert (= (or b!3713314 bm!268914) bm!268913))

(declare-fun m!4219875 () Bool)

(assert (=> bm!268913 m!4219875))

(declare-fun m!4219879 () Bool)

(assert (=> bm!268915 m!4219879))

(declare-fun m!4219881 () Bool)

(assert (=> d!1087526 m!4219881))

(assert (=> d!1087526 m!4219311))

(assert (=> d!1087526 m!4219499))

(declare-fun m!4219883 () Bool)

(assert (=> b!3713316 m!4219883))

(assert (=> b!3712832 d!1087526))

(declare-fun d!1087532 () Bool)

(declare-fun res!1509717 () Bool)

(declare-fun e!2299490 () Bool)

(assert (=> d!1087532 (=> res!1509717 e!2299490)))

(assert (=> d!1087532 (= res!1509717 ((_ is EmptyExpr!10849) (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))

(assert (=> d!1087532 (= (nullableFct!1061 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)) e!2299490)))

(declare-fun call!268923 () Bool)

(declare-fun bm!268917 () Bool)

(declare-fun c!641653 () Bool)

(assert (=> bm!268917 (= call!268923 (nullable!3772 (ite c!641653 (regTwo!22211 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)) (regOne!22210 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3713323 () Bool)

(declare-fun e!2299487 () Bool)

(assert (=> b!3713323 (= e!2299490 e!2299487)))

(declare-fun res!1509718 () Bool)

(assert (=> b!3713323 (=> (not res!1509718) (not e!2299487))))

(assert (=> b!3713323 (= res!1509718 (and (not ((_ is EmptyLang!10849) (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933))) (not ((_ is ElementMatch!10849) (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3713324 () Bool)

(declare-fun e!2299486 () Bool)

(declare-fun e!2299488 () Bool)

(assert (=> b!3713324 (= e!2299486 e!2299488)))

(declare-fun res!1509721 () Bool)

(declare-fun call!268922 () Bool)

(assert (=> b!3713324 (= res!1509721 call!268922)))

(assert (=> b!3713324 (=> res!1509721 e!2299488)))

(declare-fun b!3713325 () Bool)

(declare-fun e!2299485 () Bool)

(assert (=> b!3713325 (= e!2299485 e!2299486)))

(assert (=> b!3713325 (= c!641653 ((_ is Union!10849) (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))

(declare-fun bm!268918 () Bool)

(assert (=> bm!268918 (= call!268922 (nullable!3772 (ite c!641653 (regOne!22211 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)) (regTwo!22210 (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3713326 () Bool)

(assert (=> b!3713326 (= e!2299488 call!268923)))

(declare-fun b!3713327 () Bool)

(declare-fun e!2299489 () Bool)

(assert (=> b!3713327 (= e!2299489 call!268922)))

(declare-fun b!3713328 () Bool)

(assert (=> b!3713328 (= e!2299487 e!2299485)))

(declare-fun res!1509719 () Bool)

(assert (=> b!3713328 (=> res!1509719 e!2299485)))

(assert (=> b!3713328 (= res!1509719 ((_ is Star!10849) (derivative!363 (derivativeStep!3314 r!26326 c!13576) tl!3933)))))

(declare-fun b!3713329 () Bool)

(assert (=> b!3713329 (= e!2299486 e!2299489)))

(declare-fun res!1509720 () Bool)

(assert (=> b!3713329 (= res!1509720 call!268923)))

(assert (=> b!3713329 (=> (not res!1509720) (not e!2299489))))

(assert (= (and d!1087532 (not res!1509717)) b!3713323))

(assert (= (and b!3713323 res!1509718) b!3713328))

(assert (= (and b!3713328 (not res!1509719)) b!3713325))

(assert (= (and b!3713325 c!641653) b!3713324))

(assert (= (and b!3713325 (not c!641653)) b!3713329))

(assert (= (and b!3713324 (not res!1509721)) b!3713326))

(assert (= (and b!3713329 res!1509720) b!3713327))

(assert (= (or b!3713326 b!3713329) bm!268917))

(assert (= (or b!3713324 b!3713327) bm!268918))

(declare-fun m!4219887 () Bool)

(assert (=> bm!268917 m!4219887))

(declare-fun m!4219889 () Bool)

(assert (=> bm!268918 m!4219889))

(assert (=> d!1087354 d!1087532))

(declare-fun d!1087536 () Bool)

(declare-fun c!641659 () Bool)

(assert (=> d!1087536 (= c!641659 ((_ is Nil!39606) (usedCharacters!1112 r!26326)))))

(declare-fun e!2299496 () (InoxSet C!21884))

(assert (=> d!1087536 (= (content!5731 (usedCharacters!1112 r!26326)) e!2299496)))

(declare-fun b!3713340 () Bool)

(assert (=> b!3713340 (= e!2299496 ((as const (Array C!21884 Bool)) false))))

(declare-fun b!3713341 () Bool)

(assert (=> b!3713341 (= e!2299496 ((_ map or) (store ((as const (Array C!21884 Bool)) false) (h!45026 (usedCharacters!1112 r!26326)) true) (content!5731 (t!302413 (usedCharacters!1112 r!26326)))))))

(assert (= (and d!1087536 c!641659) b!3713340))

(assert (= (and d!1087536 (not c!641659)) b!3713341))

(declare-fun m!4219891 () Bool)

(assert (=> b!3713341 m!4219891))

(assert (=> b!3713341 m!4219647))

(assert (=> d!1087400 d!1087536))

(declare-fun b!3713342 () Bool)

(declare-fun e!2299499 () Regex!10849)

(assert (=> b!3713342 (= e!2299499 EmptyLang!10849)))

(declare-fun call!268928 () Regex!10849)

(declare-fun c!641660 () Bool)

(declare-fun bm!268923 () Bool)

(assert (=> bm!268923 (= call!268928 (derivativeStep!3314 (ite c!641660 (regOne!22211 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))) (regOne!22210 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)))) c!13576))))

(declare-fun bm!268924 () Bool)

(declare-fun call!268930 () Regex!10849)

(assert (=> bm!268924 (= call!268930 call!268928)))

(declare-fun e!2299497 () Regex!10849)

(declare-fun b!3713343 () Bool)

(declare-fun call!268929 () Regex!10849)

(assert (=> b!3713343 (= e!2299497 (Concat!17120 call!268929 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))))))

(declare-fun c!641664 () Bool)

(declare-fun bm!268925 () Bool)

(declare-fun call!268931 () Regex!10849)

(assert (=> bm!268925 (= call!268931 (derivativeStep!3314 (ite c!641660 (regTwo!22211 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))) (ite c!641664 (reg!11178 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))) (regTwo!22210 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))))) c!13576))))

(declare-fun b!3713344 () Bool)

(assert (=> b!3713344 (= c!641660 ((_ is Union!10849) (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))))))

(declare-fun e!2299500 () Regex!10849)

(declare-fun e!2299498 () Regex!10849)

(assert (=> b!3713344 (= e!2299500 e!2299498)))

(declare-fun d!1087538 () Bool)

(declare-fun lt!1297006 () Regex!10849)

(assert (=> d!1087538 (validRegex!4956 lt!1297006)))

(assert (=> d!1087538 (= lt!1297006 e!2299499)))

(declare-fun c!641661 () Bool)

(assert (=> d!1087538 (= c!641661 (or ((_ is EmptyExpr!10849) (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))) ((_ is EmptyLang!10849) (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)))))))

(assert (=> d!1087538 (validRegex!4956 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)))))

(assert (=> d!1087538 (= (derivativeStep!3314 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)) c!13576) lt!1297006)))

(declare-fun b!3713345 () Bool)

(assert (=> b!3713345 (= e!2299498 (Union!10849 call!268928 call!268931))))

(declare-fun bm!268926 () Bool)

(assert (=> bm!268926 (= call!268929 call!268931)))

(declare-fun b!3713346 () Bool)

(assert (=> b!3713346 (= e!2299498 e!2299497)))

(assert (=> b!3713346 (= c!641664 ((_ is Star!10849) (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))))))

(declare-fun b!3713347 () Bool)

(declare-fun c!641663 () Bool)

(assert (=> b!3713347 (= c!641663 (nullable!3772 (regOne!22210 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)))))))

(declare-fun e!2299501 () Regex!10849)

(assert (=> b!3713347 (= e!2299497 e!2299501)))

(declare-fun b!3713348 () Bool)

(assert (=> b!3713348 (= e!2299501 (Union!10849 (Concat!17120 call!268930 (regTwo!22210 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)))) EmptyLang!10849))))

(declare-fun b!3713349 () Bool)

(assert (=> b!3713349 (= e!2299501 (Union!10849 (Concat!17120 call!268930 (regTwo!22210 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)))) call!268929))))

(declare-fun b!3713350 () Bool)

(assert (=> b!3713350 (= e!2299499 e!2299500)))

(declare-fun c!641662 () Bool)

(assert (=> b!3713350 (= c!641662 ((_ is ElementMatch!10849) (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326))))))

(declare-fun b!3713351 () Bool)

(assert (=> b!3713351 (= e!2299500 (ite (= c!13576 (c!641401 (ite c!641453 (regOne!22211 r!26326) (regOne!22210 r!26326)))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087538 c!641661) b!3713342))

(assert (= (and d!1087538 (not c!641661)) b!3713350))

(assert (= (and b!3713350 c!641662) b!3713351))

(assert (= (and b!3713350 (not c!641662)) b!3713344))

(assert (= (and b!3713344 c!641660) b!3713345))

(assert (= (and b!3713344 (not c!641660)) b!3713346))

(assert (= (and b!3713346 c!641664) b!3713343))

(assert (= (and b!3713346 (not c!641664)) b!3713347))

(assert (= (and b!3713347 c!641663) b!3713349))

(assert (= (and b!3713347 (not c!641663)) b!3713348))

(assert (= (or b!3713349 b!3713348) bm!268924))

(assert (= (or b!3713343 b!3713349) bm!268926))

(assert (= (or b!3713345 bm!268926) bm!268925))

(assert (= (or b!3713345 bm!268924) bm!268923))

(declare-fun m!4219905 () Bool)

(assert (=> bm!268923 m!4219905))

(declare-fun m!4219909 () Bool)

(assert (=> bm!268925 m!4219909))

(declare-fun m!4219911 () Bool)

(assert (=> d!1087538 m!4219911))

(declare-fun m!4219913 () Bool)

(assert (=> d!1087538 m!4219913))

(declare-fun m!4219915 () Bool)

(assert (=> b!3713347 m!4219915))

(assert (=> bm!268730 d!1087538))

(declare-fun b!3713361 () Bool)

(declare-fun e!2299511 () Bool)

(declare-fun e!2299514 () Bool)

(assert (=> b!3713361 (= e!2299511 e!2299514)))

(declare-fun c!641667 () Bool)

(assert (=> b!3713361 (= c!641667 ((_ is Union!10849) lt!1296975))))

(declare-fun b!3713362 () Bool)

(declare-fun res!1509729 () Bool)

(declare-fun e!2299509 () Bool)

(assert (=> b!3713362 (=> res!1509729 e!2299509)))

(assert (=> b!3713362 (= res!1509729 (not ((_ is Concat!17120) lt!1296975)))))

(assert (=> b!3713362 (= e!2299514 e!2299509)))

(declare-fun b!3713363 () Bool)

(declare-fun e!2299513 () Bool)

(declare-fun call!268934 () Bool)

(assert (=> b!3713363 (= e!2299513 call!268934)))

(declare-fun bm!268929 () Bool)

(assert (=> bm!268929 (= call!268934 (validRegex!4956 (ite c!641667 (regTwo!22211 lt!1296975) (regOne!22210 lt!1296975))))))

(declare-fun bm!268930 () Bool)

(declare-fun call!268935 () Bool)

(declare-fun call!268936 () Bool)

(assert (=> bm!268930 (= call!268935 call!268936)))

(declare-fun b!3713365 () Bool)

(declare-fun res!1509727 () Bool)

(assert (=> b!3713365 (=> (not res!1509727) (not e!2299513))))

(assert (=> b!3713365 (= res!1509727 call!268935)))

(assert (=> b!3713365 (= e!2299514 e!2299513)))

(declare-fun b!3713366 () Bool)

(declare-fun e!2299515 () Bool)

(assert (=> b!3713366 (= e!2299515 call!268935)))

(declare-fun b!3713367 () Bool)

(declare-fun e!2299510 () Bool)

(assert (=> b!3713367 (= e!2299511 e!2299510)))

(declare-fun res!1509730 () Bool)

(assert (=> b!3713367 (= res!1509730 (not (nullable!3772 (reg!11178 lt!1296975))))))

(assert (=> b!3713367 (=> (not res!1509730) (not e!2299510))))

(declare-fun c!641668 () Bool)

(declare-fun bm!268931 () Bool)

(assert (=> bm!268931 (= call!268936 (validRegex!4956 (ite c!641668 (reg!11178 lt!1296975) (ite c!641667 (regOne!22211 lt!1296975) (regTwo!22210 lt!1296975)))))))

(declare-fun b!3713368 () Bool)

(assert (=> b!3713368 (= e!2299510 call!268936)))

(declare-fun b!3713369 () Bool)

(declare-fun e!2299512 () Bool)

(assert (=> b!3713369 (= e!2299512 e!2299511)))

(assert (=> b!3713369 (= c!641668 ((_ is Star!10849) lt!1296975))))

(declare-fun d!1087544 () Bool)

(declare-fun res!1509728 () Bool)

(assert (=> d!1087544 (=> res!1509728 e!2299512)))

(assert (=> d!1087544 (= res!1509728 ((_ is ElementMatch!10849) lt!1296975))))

(assert (=> d!1087544 (= (validRegex!4956 lt!1296975) e!2299512)))

(declare-fun b!3713364 () Bool)

(assert (=> b!3713364 (= e!2299509 e!2299515)))

(declare-fun res!1509731 () Bool)

(assert (=> b!3713364 (=> (not res!1509731) (not e!2299515))))

(assert (=> b!3713364 (= res!1509731 call!268934)))

(assert (= (and d!1087544 (not res!1509728)) b!3713369))

(assert (= (and b!3713369 c!641668) b!3713367))

(assert (= (and b!3713369 (not c!641668)) b!3713361))

(assert (= (and b!3713367 res!1509730) b!3713368))

(assert (= (and b!3713361 c!641667) b!3713365))

(assert (= (and b!3713361 (not c!641667)) b!3713362))

(assert (= (and b!3713365 res!1509727) b!3713363))

(assert (= (and b!3713362 (not res!1509729)) b!3713364))

(assert (= (and b!3713364 res!1509731) b!3713366))

(assert (= (or b!3713363 b!3713364) bm!268929))

(assert (= (or b!3713365 b!3713366) bm!268930))

(assert (= (or b!3713368 bm!268930) bm!268931))

(declare-fun m!4219925 () Bool)

(assert (=> bm!268929 m!4219925))

(declare-fun m!4219927 () Bool)

(assert (=> b!3713367 m!4219927))

(declare-fun m!4219929 () Bool)

(assert (=> bm!268931 m!4219929))

(assert (=> d!1087404 d!1087544))

(declare-fun b!3713380 () Bool)

(declare-fun e!2299523 () Bool)

(declare-fun e!2299526 () Bool)

(assert (=> b!3713380 (= e!2299523 e!2299526)))

(declare-fun c!641674 () Bool)

(assert (=> b!3713380 (= c!641674 ((_ is Union!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))

(declare-fun b!3713381 () Bool)

(declare-fun res!1509734 () Bool)

(declare-fun e!2299521 () Bool)

(assert (=> b!3713381 (=> res!1509734 e!2299521)))

(assert (=> b!3713381 (= res!1509734 (not ((_ is Concat!17120) (derivativeStep!3314 (regOne!22211 r!26326) c!13576))))))

(assert (=> b!3713381 (= e!2299526 e!2299521)))

(declare-fun b!3713382 () Bool)

(declare-fun e!2299525 () Bool)

(declare-fun call!268941 () Bool)

(assert (=> b!3713382 (= e!2299525 call!268941)))

(declare-fun bm!268936 () Bool)

(assert (=> bm!268936 (= call!268941 (validRegex!4956 (ite c!641674 (regTwo!22211 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) (regOne!22210 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))))

(declare-fun bm!268937 () Bool)

(declare-fun call!268942 () Bool)

(declare-fun call!268943 () Bool)

(assert (=> bm!268937 (= call!268942 call!268943)))

(declare-fun b!3713384 () Bool)

(declare-fun res!1509732 () Bool)

(assert (=> b!3713384 (=> (not res!1509732) (not e!2299525))))

(assert (=> b!3713384 (= res!1509732 call!268942)))

(assert (=> b!3713384 (= e!2299526 e!2299525)))

(declare-fun b!3713385 () Bool)

(declare-fun e!2299527 () Bool)

(assert (=> b!3713385 (= e!2299527 call!268942)))

(declare-fun b!3713386 () Bool)

(declare-fun e!2299522 () Bool)

(assert (=> b!3713386 (= e!2299523 e!2299522)))

(declare-fun res!1509735 () Bool)

(assert (=> b!3713386 (= res!1509735 (not (nullable!3772 (reg!11178 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))))

(assert (=> b!3713386 (=> (not res!1509735) (not e!2299522))))

(declare-fun c!641675 () Bool)

(declare-fun bm!268938 () Bool)

(assert (=> bm!268938 (= call!268943 (validRegex!4956 (ite c!641675 (reg!11178 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) (ite c!641674 (regOne!22211 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) (regTwo!22210 (derivativeStep!3314 (regOne!22211 r!26326) c!13576))))))))

(declare-fun b!3713387 () Bool)

(assert (=> b!3713387 (= e!2299522 call!268943)))

(declare-fun b!3713388 () Bool)

(declare-fun e!2299524 () Bool)

(assert (=> b!3713388 (= e!2299524 e!2299523)))

(assert (=> b!3713388 (= c!641675 ((_ is Star!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))

(declare-fun d!1087548 () Bool)

(declare-fun res!1509733 () Bool)

(assert (=> d!1087548 (=> res!1509733 e!2299524)))

(assert (=> d!1087548 (= res!1509733 ((_ is ElementMatch!10849) (derivativeStep!3314 (regOne!22211 r!26326) c!13576)))))

(assert (=> d!1087548 (= (validRegex!4956 (derivativeStep!3314 (regOne!22211 r!26326) c!13576)) e!2299524)))

(declare-fun b!3713383 () Bool)

(assert (=> b!3713383 (= e!2299521 e!2299527)))

(declare-fun res!1509736 () Bool)

(assert (=> b!3713383 (=> (not res!1509736) (not e!2299527))))

(assert (=> b!3713383 (= res!1509736 call!268941)))

(assert (= (and d!1087548 (not res!1509733)) b!3713388))

(assert (= (and b!3713388 c!641675) b!3713386))

(assert (= (and b!3713388 (not c!641675)) b!3713380))

(assert (= (and b!3713386 res!1509735) b!3713387))

(assert (= (and b!3713380 c!641674) b!3713384))

(assert (= (and b!3713380 (not c!641674)) b!3713381))

(assert (= (and b!3713384 res!1509732) b!3713382))

(assert (= (and b!3713381 (not res!1509734)) b!3713383))

(assert (= (and b!3713383 res!1509736) b!3713385))

(assert (= (or b!3713382 b!3713383) bm!268936))

(assert (= (or b!3713384 b!3713385) bm!268937))

(assert (= (or b!3713387 bm!268937) bm!268938))

(declare-fun m!4219939 () Bool)

(assert (=> bm!268936 m!4219939))

(declare-fun m!4219941 () Bool)

(assert (=> b!3713386 m!4219941))

(declare-fun m!4219945 () Bool)

(assert (=> bm!268938 m!4219945))

(assert (=> d!1087404 d!1087548))

(declare-fun c!641678 () Bool)

(declare-fun call!268944 () List!39730)

(declare-fun bm!268939 () Bool)

(declare-fun c!641676 () Bool)

(assert (=> bm!268939 (= call!268944 (usedCharacters!1112 (ite c!641676 (reg!11178 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))) (ite c!641678 (regOne!22211 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))) (regOne!22210 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326)))))))))

(declare-fun bm!268940 () Bool)

(declare-fun call!268947 () List!39730)

(declare-fun call!268946 () List!39730)

(declare-fun call!268945 () List!39730)

(assert (=> bm!268940 (= call!268947 (++!9794 call!268946 call!268945))))

(declare-fun b!3713391 () Bool)

(declare-fun e!2299531 () List!39730)

(assert (=> b!3713391 (= e!2299531 Nil!39606)))

(declare-fun b!3713392 () Bool)

(declare-fun e!2299530 () List!39730)

(assert (=> b!3713392 (= e!2299530 call!268947)))

(declare-fun d!1087554 () Bool)

(declare-fun c!641677 () Bool)

(assert (=> d!1087554 (= c!641677 (or ((_ is EmptyExpr!10849) (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))) ((_ is EmptyLang!10849) (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326)))))))

(assert (=> d!1087554 (= (usedCharacters!1112 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))) e!2299531)))

(declare-fun b!3713393 () Bool)

(declare-fun e!2299532 () List!39730)

(assert (=> b!3713393 (= e!2299532 call!268944)))

(declare-fun b!3713394 () Bool)

(assert (=> b!3713394 (= e!2299530 call!268947)))

(declare-fun b!3713395 () Bool)

(assert (=> b!3713395 (= e!2299532 e!2299530)))

(assert (=> b!3713395 (= c!641678 ((_ is Union!10849) (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))))))

(declare-fun bm!268941 () Bool)

(assert (=> bm!268941 (= call!268945 (usedCharacters!1112 (ite c!641678 (regTwo!22211 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))) (regTwo!22210 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))))))))

(declare-fun b!3713396 () Bool)

(declare-fun e!2299533 () List!39730)

(assert (=> b!3713396 (= e!2299533 (Cons!39606 (c!641401 (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))) Nil!39606))))

(declare-fun b!3713397 () Bool)

(assert (=> b!3713397 (= e!2299531 e!2299533)))

(declare-fun c!641679 () Bool)

(assert (=> b!3713397 (= c!641679 ((_ is ElementMatch!10849) (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))))))

(declare-fun bm!268942 () Bool)

(assert (=> bm!268942 (= call!268946 call!268944)))

(declare-fun b!3713398 () Bool)

(assert (=> b!3713398 (= c!641676 ((_ is Star!10849) (ite c!641486 (regTwo!22211 r!26326) (regTwo!22210 r!26326))))))

(assert (=> b!3713398 (= e!2299533 e!2299532)))

(assert (= (and d!1087554 c!641677) b!3713391))

(assert (= (and d!1087554 (not c!641677)) b!3713397))

(assert (= (and b!3713397 c!641679) b!3713396))

(assert (= (and b!3713397 (not c!641679)) b!3713398))

(assert (= (and b!3713398 c!641676) b!3713393))

(assert (= (and b!3713398 (not c!641676)) b!3713395))

(assert (= (and b!3713395 c!641678) b!3713394))

(assert (= (and b!3713395 (not c!641678)) b!3713392))

(assert (= (or b!3713394 b!3713392) bm!268942))

(assert (= (or b!3713394 b!3713392) bm!268941))

(assert (= (or b!3713394 b!3713392) bm!268940))

(assert (= (or b!3713393 bm!268942) bm!268939))

(declare-fun m!4219951 () Bool)

(assert (=> bm!268939 m!4219951))

(declare-fun m!4219953 () Bool)

(assert (=> bm!268940 m!4219953))

(declare-fun m!4219955 () Bool)

(assert (=> bm!268941 m!4219955))

(assert (=> bm!268760 d!1087554))

(declare-fun b!3713408 () Bool)

(declare-fun e!2299543 () Bool)

(declare-fun e!2299546 () Bool)

(assert (=> b!3713408 (= e!2299543 e!2299546)))

(declare-fun c!641682 () Bool)

(assert (=> b!3713408 (= c!641682 ((_ is Union!10849) (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))))))

(declare-fun b!3713409 () Bool)

(declare-fun res!1509746 () Bool)

(declare-fun e!2299541 () Bool)

(assert (=> b!3713409 (=> res!1509746 e!2299541)))

(assert (=> b!3713409 (= res!1509746 (not ((_ is Concat!17120) (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326)))))))

(assert (=> b!3713409 (= e!2299546 e!2299541)))

(declare-fun b!3713410 () Bool)

(declare-fun e!2299545 () Bool)

(declare-fun call!268951 () Bool)

(assert (=> b!3713410 (= e!2299545 call!268951)))

(declare-fun bm!268946 () Bool)

(assert (=> bm!268946 (= call!268951 (validRegex!4956 (ite c!641682 (regTwo!22211 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))) (regOne!22210 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))))))))

(declare-fun bm!268947 () Bool)

(declare-fun call!268952 () Bool)

(declare-fun call!268953 () Bool)

(assert (=> bm!268947 (= call!268952 call!268953)))

(declare-fun b!3713412 () Bool)

(declare-fun res!1509744 () Bool)

(assert (=> b!3713412 (=> (not res!1509744) (not e!2299545))))

(assert (=> b!3713412 (= res!1509744 call!268952)))

(assert (=> b!3713412 (= e!2299546 e!2299545)))

(declare-fun b!3713413 () Bool)

(declare-fun e!2299547 () Bool)

(assert (=> b!3713413 (= e!2299547 call!268952)))

(declare-fun b!3713414 () Bool)

(declare-fun e!2299542 () Bool)

(assert (=> b!3713414 (= e!2299543 e!2299542)))

(declare-fun res!1509747 () Bool)

(assert (=> b!3713414 (= res!1509747 (not (nullable!3772 (reg!11178 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))))))))

(assert (=> b!3713414 (=> (not res!1509747) (not e!2299542))))

(declare-fun bm!268948 () Bool)

(declare-fun c!641683 () Bool)

(assert (=> bm!268948 (= call!268953 (validRegex!4956 (ite c!641683 (reg!11178 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))) (ite c!641682 (regOne!22211 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))) (regTwo!22210 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326)))))))))

(declare-fun b!3713415 () Bool)

(assert (=> b!3713415 (= e!2299542 call!268953)))

(declare-fun b!3713416 () Bool)

(declare-fun e!2299544 () Bool)

(assert (=> b!3713416 (= e!2299544 e!2299543)))

(assert (=> b!3713416 (= c!641683 ((_ is Star!10849) (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))))))

(declare-fun d!1087558 () Bool)

(declare-fun res!1509745 () Bool)

(assert (=> d!1087558 (=> res!1509745 e!2299544)))

(assert (=> d!1087558 (= res!1509745 ((_ is ElementMatch!10849) (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))))))

(assert (=> d!1087558 (= (validRegex!4956 (ite c!641510 (regTwo!22211 r!26326) (regOne!22210 r!26326))) e!2299544)))

(declare-fun b!3713411 () Bool)

(assert (=> b!3713411 (= e!2299541 e!2299547)))

(declare-fun res!1509748 () Bool)

(assert (=> b!3713411 (=> (not res!1509748) (not e!2299547))))

(assert (=> b!3713411 (= res!1509748 call!268951)))

(assert (= (and d!1087558 (not res!1509745)) b!3713416))

(assert (= (and b!3713416 c!641683) b!3713414))

(assert (= (and b!3713416 (not c!641683)) b!3713408))

(assert (= (and b!3713414 res!1509747) b!3713415))

(assert (= (and b!3713408 c!641682) b!3713412))

(assert (= (and b!3713408 (not c!641682)) b!3713409))

(assert (= (and b!3713412 res!1509744) b!3713410))

(assert (= (and b!3713409 (not res!1509746)) b!3713411))

(assert (= (and b!3713411 res!1509748) b!3713413))

(assert (= (or b!3713410 b!3713411) bm!268946))

(assert (= (or b!3713412 b!3713413) bm!268947))

(assert (= (or b!3713415 bm!268947) bm!268948))

(declare-fun m!4219963 () Bool)

(assert (=> bm!268946 m!4219963))

(declare-fun m!4219965 () Bool)

(assert (=> b!3713414 m!4219965))

(declare-fun m!4219967 () Bool)

(assert (=> bm!268948 m!4219967))

(assert (=> bm!268783 d!1087558))

(declare-fun b!3713426 () Bool)

(declare-fun e!2299557 () Bool)

(declare-fun e!2299560 () Bool)

(assert (=> b!3713426 (= e!2299557 e!2299560)))

(declare-fun c!641686 () Bool)

(assert (=> b!3713426 (= c!641686 ((_ is Union!10849) lt!1296977))))

(declare-fun b!3713427 () Bool)

(declare-fun res!1509756 () Bool)

(declare-fun e!2299555 () Bool)

(assert (=> b!3713427 (=> res!1509756 e!2299555)))

(assert (=> b!3713427 (= res!1509756 (not ((_ is Concat!17120) lt!1296977)))))

(assert (=> b!3713427 (= e!2299560 e!2299555)))

(declare-fun b!3713428 () Bool)

(declare-fun e!2299559 () Bool)

(declare-fun call!268957 () Bool)

(assert (=> b!3713428 (= e!2299559 call!268957)))

(declare-fun bm!268952 () Bool)

(assert (=> bm!268952 (= call!268957 (validRegex!4956 (ite c!641686 (regTwo!22211 lt!1296977) (regOne!22210 lt!1296977))))))

(declare-fun bm!268953 () Bool)

(declare-fun call!268958 () Bool)

(declare-fun call!268959 () Bool)

(assert (=> bm!268953 (= call!268958 call!268959)))

(declare-fun b!3713430 () Bool)

(declare-fun res!1509754 () Bool)

(assert (=> b!3713430 (=> (not res!1509754) (not e!2299559))))

(assert (=> b!3713430 (= res!1509754 call!268958)))

(assert (=> b!3713430 (= e!2299560 e!2299559)))

(declare-fun b!3713431 () Bool)

(declare-fun e!2299561 () Bool)

(assert (=> b!3713431 (= e!2299561 call!268958)))

(declare-fun b!3713432 () Bool)

(declare-fun e!2299556 () Bool)

(assert (=> b!3713432 (= e!2299557 e!2299556)))

(declare-fun res!1509757 () Bool)

(assert (=> b!3713432 (= res!1509757 (not (nullable!3772 (reg!11178 lt!1296977))))))

(assert (=> b!3713432 (=> (not res!1509757) (not e!2299556))))

(declare-fun c!641687 () Bool)

(declare-fun bm!268954 () Bool)

(assert (=> bm!268954 (= call!268959 (validRegex!4956 (ite c!641687 (reg!11178 lt!1296977) (ite c!641686 (regOne!22211 lt!1296977) (regTwo!22210 lt!1296977)))))))

(declare-fun b!3713433 () Bool)

(assert (=> b!3713433 (= e!2299556 call!268959)))

(declare-fun b!3713434 () Bool)

(declare-fun e!2299558 () Bool)

(assert (=> b!3713434 (= e!2299558 e!2299557)))

(assert (=> b!3713434 (= c!641687 ((_ is Star!10849) lt!1296977))))

(declare-fun d!1087562 () Bool)

(declare-fun res!1509755 () Bool)

(assert (=> d!1087562 (=> res!1509755 e!2299558)))

(assert (=> d!1087562 (= res!1509755 ((_ is ElementMatch!10849) lt!1296977))))

(assert (=> d!1087562 (= (validRegex!4956 lt!1296977) e!2299558)))

(declare-fun b!3713429 () Bool)

(assert (=> b!3713429 (= e!2299555 e!2299561)))

(declare-fun res!1509758 () Bool)

(assert (=> b!3713429 (=> (not res!1509758) (not e!2299561))))

(assert (=> b!3713429 (= res!1509758 call!268957)))

(assert (= (and d!1087562 (not res!1509755)) b!3713434))

(assert (= (and b!3713434 c!641687) b!3713432))

(assert (= (and b!3713434 (not c!641687)) b!3713426))

(assert (= (and b!3713432 res!1509757) b!3713433))

(assert (= (and b!3713426 c!641686) b!3713430))

(assert (= (and b!3713426 (not c!641686)) b!3713427))

(assert (= (and b!3713430 res!1509754) b!3713428))

(assert (= (and b!3713427 (not res!1509756)) b!3713429))

(assert (= (and b!3713429 res!1509758) b!3713431))

(assert (= (or b!3713428 b!3713429) bm!268952))

(assert (= (or b!3713430 b!3713431) bm!268953))

(assert (= (or b!3713433 bm!268953) bm!268954))

(declare-fun m!4219975 () Bool)

(assert (=> bm!268952 m!4219975))

(declare-fun m!4219977 () Bool)

(assert (=> b!3713432 m!4219977))

(declare-fun m!4219979 () Bool)

(assert (=> bm!268954 m!4219979))

(assert (=> d!1087410 d!1087562))

(declare-fun b!3713444 () Bool)

(declare-fun e!2299571 () Bool)

(declare-fun e!2299574 () Bool)

(assert (=> b!3713444 (= e!2299571 e!2299574)))

(declare-fun c!641690 () Bool)

(assert (=> b!3713444 (= c!641690 ((_ is Union!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))

(declare-fun b!3713445 () Bool)

(declare-fun res!1509766 () Bool)

(declare-fun e!2299569 () Bool)

(assert (=> b!3713445 (=> res!1509766 e!2299569)))

(assert (=> b!3713445 (= res!1509766 (not ((_ is Concat!17120) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))))))

(assert (=> b!3713445 (= e!2299574 e!2299569)))

(declare-fun b!3713446 () Bool)

(declare-fun e!2299573 () Bool)

(declare-fun call!268963 () Bool)

(assert (=> b!3713446 (= e!2299573 call!268963)))

(declare-fun bm!268958 () Bool)

(assert (=> bm!268958 (= call!268963 (validRegex!4956 (ite c!641690 (regTwo!22211 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) (regOne!22210 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))))

(declare-fun bm!268959 () Bool)

(declare-fun call!268964 () Bool)

(declare-fun call!268965 () Bool)

(assert (=> bm!268959 (= call!268964 call!268965)))

(declare-fun b!3713448 () Bool)

(declare-fun res!1509764 () Bool)

(assert (=> b!3713448 (=> (not res!1509764) (not e!2299573))))

(assert (=> b!3713448 (= res!1509764 call!268964)))

(assert (=> b!3713448 (= e!2299574 e!2299573)))

(declare-fun b!3713449 () Bool)

(declare-fun e!2299575 () Bool)

(assert (=> b!3713449 (= e!2299575 call!268964)))

(declare-fun b!3713450 () Bool)

(declare-fun e!2299570 () Bool)

(assert (=> b!3713450 (= e!2299571 e!2299570)))

(declare-fun res!1509767 () Bool)

(assert (=> b!3713450 (= res!1509767 (not (nullable!3772 (reg!11178 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))))

(assert (=> b!3713450 (=> (not res!1509767) (not e!2299570))))

(declare-fun c!641691 () Bool)

(declare-fun bm!268960 () Bool)

(assert (=> bm!268960 (= call!268965 (validRegex!4956 (ite c!641691 (reg!11178 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) (ite c!641690 (regOne!22211 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) (regTwo!22210 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576))))))))

(declare-fun b!3713451 () Bool)

(assert (=> b!3713451 (= e!2299570 call!268965)))

(declare-fun b!3713452 () Bool)

(declare-fun e!2299572 () Bool)

(assert (=> b!3713452 (= e!2299572 e!2299571)))

(assert (=> b!3713452 (= c!641691 ((_ is Star!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))

(declare-fun d!1087566 () Bool)

(declare-fun res!1509765 () Bool)

(assert (=> d!1087566 (=> res!1509765 e!2299572)))

(assert (=> d!1087566 (= res!1509765 ((_ is ElementMatch!10849) (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)))))

(assert (=> d!1087566 (= (validRegex!4956 (derivativeStep!3314 (regTwo!22211 r!26326) c!13576)) e!2299572)))

(declare-fun b!3713447 () Bool)

(assert (=> b!3713447 (= e!2299569 e!2299575)))

(declare-fun res!1509768 () Bool)

(assert (=> b!3713447 (=> (not res!1509768) (not e!2299575))))

(assert (=> b!3713447 (= res!1509768 call!268963)))

(assert (= (and d!1087566 (not res!1509765)) b!3713452))

(assert (= (and b!3713452 c!641691) b!3713450))

(assert (= (and b!3713452 (not c!641691)) b!3713444))

(assert (= (and b!3713450 res!1509767) b!3713451))

(assert (= (and b!3713444 c!641690) b!3713448))

(assert (= (and b!3713444 (not c!641690)) b!3713445))

(assert (= (and b!3713448 res!1509764) b!3713446))

(assert (= (and b!3713445 (not res!1509766)) b!3713447))

(assert (= (and b!3713447 res!1509768) b!3713449))

(assert (= (or b!3713446 b!3713447) bm!268958))

(assert (= (or b!3713448 b!3713449) bm!268959))

(assert (= (or b!3713451 bm!268959) bm!268960))

(declare-fun m!4219987 () Bool)

(assert (=> bm!268958 m!4219987))

(declare-fun m!4219989 () Bool)

(assert (=> b!3713450 m!4219989))

(declare-fun m!4219991 () Bool)

(assert (=> bm!268960 m!4219991))

(assert (=> d!1087410 d!1087566))

(declare-fun d!1087570 () Bool)

(assert (=> d!1087570 (= (nullable!3772 (regOne!22210 (regOne!22211 r!26326))) (nullableFct!1061 (regOne!22210 (regOne!22211 r!26326))))))

(declare-fun bs!574783 () Bool)

(assert (= bs!574783 d!1087570))

(declare-fun m!4219993 () Bool)

(assert (=> bs!574783 m!4219993))

(assert (=> b!3712827 d!1087570))

(declare-fun d!1087572 () Bool)

(declare-fun res!1509769 () Bool)

(declare-fun e!2299586 () Bool)

(assert (=> d!1087572 (=> res!1509769 e!2299586)))

(assert (=> d!1087572 (= res!1509769 ((_ is EmptyExpr!10849) (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)))))

(assert (=> d!1087572 (= (nullableFct!1061 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)) e!2299586)))

(declare-fun c!641697 () Bool)

(declare-fun call!268971 () Bool)

(declare-fun bm!268965 () Bool)

(assert (=> bm!268965 (= call!268971 (nullable!3772 (ite c!641697 (regTwo!22211 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)) (regOne!22210 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3713463 () Bool)

(declare-fun e!2299583 () Bool)

(assert (=> b!3713463 (= e!2299586 e!2299583)))

(declare-fun res!1509770 () Bool)

(assert (=> b!3713463 (=> (not res!1509770) (not e!2299583))))

(assert (=> b!3713463 (= res!1509770 (and (not ((_ is EmptyLang!10849) (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933))) (not ((_ is ElementMatch!10849) (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3713464 () Bool)

(declare-fun e!2299582 () Bool)

(declare-fun e!2299584 () Bool)

(assert (=> b!3713464 (= e!2299582 e!2299584)))

(declare-fun res!1509773 () Bool)

(declare-fun call!268970 () Bool)

(assert (=> b!3713464 (= res!1509773 call!268970)))

(assert (=> b!3713464 (=> res!1509773 e!2299584)))

(declare-fun b!3713465 () Bool)

(declare-fun e!2299581 () Bool)

(assert (=> b!3713465 (= e!2299581 e!2299582)))

(assert (=> b!3713465 (= c!641697 ((_ is Union!10849) (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)))))

(declare-fun bm!268966 () Bool)

(assert (=> bm!268966 (= call!268970 (nullable!3772 (ite c!641697 (regOne!22211 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)) (regTwo!22210 (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3713466 () Bool)

(assert (=> b!3713466 (= e!2299584 call!268971)))

(declare-fun b!3713467 () Bool)

(declare-fun e!2299585 () Bool)

(assert (=> b!3713467 (= e!2299585 call!268970)))

(declare-fun b!3713468 () Bool)

(assert (=> b!3713468 (= e!2299583 e!2299581)))

(declare-fun res!1509771 () Bool)

(assert (=> b!3713468 (=> res!1509771 e!2299581)))

(assert (=> b!3713468 (= res!1509771 ((_ is Star!10849) (derivative!363 (derivativeStep!3314 (regOne!22211 r!26326) c!13576) tl!3933)))))

(declare-fun b!3713469 () Bool)

(assert (=> b!3713469 (= e!2299582 e!2299585)))

(declare-fun res!1509772 () Bool)

(assert (=> b!3713469 (= res!1509772 call!268971)))

(assert (=> b!3713469 (=> (not res!1509772) (not e!2299585))))

(assert (= (and d!1087572 (not res!1509769)) b!3713463))

(assert (= (and b!3713463 res!1509770) b!3713468))

(assert (= (and b!3713468 (not res!1509771)) b!3713465))

(assert (= (and b!3713465 c!641697) b!3713464))

(assert (= (and b!3713465 (not c!641697)) b!3713469))

(assert (= (and b!3713464 (not res!1509773)) b!3713466))

(assert (= (and b!3713469 res!1509772) b!3713467))

(assert (= (or b!3713466 b!3713469) bm!268965))

(assert (= (or b!3713464 b!3713467) bm!268966))

(declare-fun m!4220005 () Bool)

(assert (=> bm!268965 m!4220005))

(declare-fun m!4220007 () Bool)

(assert (=> bm!268966 m!4220007))

(assert (=> d!1087402 d!1087572))

(declare-fun d!1087576 () Bool)

(assert (=> d!1087576 (= (nullable!3772 (regOne!22210 (regTwo!22211 r!26326))) (nullableFct!1061 (regOne!22210 (regTwo!22211 r!26326))))))

(declare-fun bs!574784 () Bool)

(assert (= bs!574784 d!1087576))

(declare-fun m!4220009 () Bool)

(assert (=> bs!574784 m!4220009))

(assert (=> b!3712839 d!1087576))

(declare-fun d!1087578 () Bool)

(declare-fun lt!1297011 () Regex!10849)

(assert (=> d!1087578 (validRegex!4956 lt!1297011)))

(declare-fun e!2299594 () Regex!10849)

(assert (=> d!1087578 (= lt!1297011 e!2299594)))

(declare-fun c!641700 () Bool)

(assert (=> d!1087578 (= c!641700 ((_ is Cons!39606) (t!302413 tl!3933)))))

(assert (=> d!1087578 (validRegex!4956 (derivativeStep!3314 (derivativeStep!3314 r!26326 c!13576) (h!45026 tl!3933)))))

(assert (=> d!1087578 (= (derivative!363 (derivativeStep!3314 (derivativeStep!3314 r!26326 c!13576) (h!45026 tl!3933)) (t!302413 tl!3933)) lt!1297011)))

(declare-fun b!3713479 () Bool)

(assert (=> b!3713479 (= e!2299594 (derivative!363 (derivativeStep!3314 (derivativeStep!3314 (derivativeStep!3314 r!26326 c!13576) (h!45026 tl!3933)) (h!45026 (t!302413 tl!3933))) (t!302413 (t!302413 tl!3933))))))

(declare-fun b!3713480 () Bool)

(assert (=> b!3713480 (= e!2299594 (derivativeStep!3314 (derivativeStep!3314 r!26326 c!13576) (h!45026 tl!3933)))))

(assert (= (and d!1087578 c!641700) b!3713479))

(assert (= (and d!1087578 (not c!641700)) b!3713480))

(declare-fun m!4220013 () Bool)

(assert (=> d!1087578 m!4220013))

(assert (=> d!1087578 m!4219345))

(declare-fun m!4220017 () Bool)

(assert (=> d!1087578 m!4220017))

(assert (=> b!3713479 m!4219345))

(declare-fun m!4220019 () Bool)

(assert (=> b!3713479 m!4220019))

(assert (=> b!3713479 m!4220019))

(declare-fun m!4220023 () Bool)

(assert (=> b!3713479 m!4220023))

(assert (=> b!3712577 d!1087578))

(declare-fun b!3713481 () Bool)

(declare-fun e!2299597 () Regex!10849)

(assert (=> b!3713481 (= e!2299597 EmptyLang!10849)))

(declare-fun call!268975 () Regex!10849)

(declare-fun bm!268970 () Bool)

(declare-fun c!641701 () Bool)

(assert (=> bm!268970 (= call!268975 (derivativeStep!3314 (ite c!641701 (regOne!22211 (derivativeStep!3314 r!26326 c!13576)) (regOne!22210 (derivativeStep!3314 r!26326 c!13576))) (h!45026 tl!3933)))))

(declare-fun bm!268971 () Bool)

(declare-fun call!268977 () Regex!10849)

(assert (=> bm!268971 (= call!268977 call!268975)))

(declare-fun e!2299595 () Regex!10849)

(declare-fun b!3713482 () Bool)

(declare-fun call!268976 () Regex!10849)

(assert (=> b!3713482 (= e!2299595 (Concat!17120 call!268976 (derivativeStep!3314 r!26326 c!13576)))))

(declare-fun bm!268972 () Bool)

(declare-fun call!268978 () Regex!10849)

(declare-fun c!641705 () Bool)

(assert (=> bm!268972 (= call!268978 (derivativeStep!3314 (ite c!641701 (regTwo!22211 (derivativeStep!3314 r!26326 c!13576)) (ite c!641705 (reg!11178 (derivativeStep!3314 r!26326 c!13576)) (regTwo!22210 (derivativeStep!3314 r!26326 c!13576)))) (h!45026 tl!3933)))))

(declare-fun b!3713483 () Bool)

(assert (=> b!3713483 (= c!641701 ((_ is Union!10849) (derivativeStep!3314 r!26326 c!13576)))))

(declare-fun e!2299598 () Regex!10849)

(declare-fun e!2299596 () Regex!10849)

(assert (=> b!3713483 (= e!2299598 e!2299596)))

(declare-fun d!1087582 () Bool)

(declare-fun lt!1297012 () Regex!10849)

(assert (=> d!1087582 (validRegex!4956 lt!1297012)))

(assert (=> d!1087582 (= lt!1297012 e!2299597)))

(declare-fun c!641702 () Bool)

(assert (=> d!1087582 (= c!641702 (or ((_ is EmptyExpr!10849) (derivativeStep!3314 r!26326 c!13576)) ((_ is EmptyLang!10849) (derivativeStep!3314 r!26326 c!13576))))))

(assert (=> d!1087582 (validRegex!4956 (derivativeStep!3314 r!26326 c!13576))))

(assert (=> d!1087582 (= (derivativeStep!3314 (derivativeStep!3314 r!26326 c!13576) (h!45026 tl!3933)) lt!1297012)))

(declare-fun b!3713484 () Bool)

(assert (=> b!3713484 (= e!2299596 (Union!10849 call!268975 call!268978))))

(declare-fun bm!268973 () Bool)

(assert (=> bm!268973 (= call!268976 call!268978)))

(declare-fun b!3713485 () Bool)

(assert (=> b!3713485 (= e!2299596 e!2299595)))

(assert (=> b!3713485 (= c!641705 ((_ is Star!10849) (derivativeStep!3314 r!26326 c!13576)))))

(declare-fun b!3713486 () Bool)

(declare-fun c!641704 () Bool)

(assert (=> b!3713486 (= c!641704 (nullable!3772 (regOne!22210 (derivativeStep!3314 r!26326 c!13576))))))

(declare-fun e!2299599 () Regex!10849)

(assert (=> b!3713486 (= e!2299595 e!2299599)))

(declare-fun b!3713487 () Bool)

(assert (=> b!3713487 (= e!2299599 (Union!10849 (Concat!17120 call!268977 (regTwo!22210 (derivativeStep!3314 r!26326 c!13576))) EmptyLang!10849))))

(declare-fun b!3713488 () Bool)

(assert (=> b!3713488 (= e!2299599 (Union!10849 (Concat!17120 call!268977 (regTwo!22210 (derivativeStep!3314 r!26326 c!13576))) call!268976))))

(declare-fun b!3713489 () Bool)

(assert (=> b!3713489 (= e!2299597 e!2299598)))

(declare-fun c!641703 () Bool)

(assert (=> b!3713489 (= c!641703 ((_ is ElementMatch!10849) (derivativeStep!3314 r!26326 c!13576)))))

(declare-fun b!3713490 () Bool)

(assert (=> b!3713490 (= e!2299598 (ite (= (h!45026 tl!3933) (c!641401 (derivativeStep!3314 r!26326 c!13576))) EmptyExpr!10849 EmptyLang!10849))))

(assert (= (and d!1087582 c!641702) b!3713481))

(assert (= (and d!1087582 (not c!641702)) b!3713489))

(assert (= (and b!3713489 c!641703) b!3713490))

(assert (= (and b!3713489 (not c!641703)) b!3713483))

(assert (= (and b!3713483 c!641701) b!3713484))

(assert (= (and b!3713483 (not c!641701)) b!3713485))

(assert (= (and b!3713485 c!641705) b!3713482))

(assert (= (and b!3713485 (not c!641705)) b!3713486))

(assert (= (and b!3713486 c!641704) b!3713488))

(assert (= (and b!3713486 (not c!641704)) b!3713487))

(assert (= (or b!3713488 b!3713487) bm!268971))

(assert (= (or b!3713482 b!3713488) bm!268973))

(assert (= (or b!3713484 bm!268973) bm!268972))

(assert (= (or b!3713484 bm!268971) bm!268970))

(declare-fun m!4220027 () Bool)

(assert (=> bm!268970 m!4220027))

(declare-fun m!4220029 () Bool)

(assert (=> bm!268972 m!4220029))

(declare-fun m!4220031 () Bool)

(assert (=> d!1087582 m!4220031))

(assert (=> d!1087582 m!4219331))

(assert (=> d!1087582 m!4219343))

(declare-fun m!4220033 () Bool)

(assert (=> b!3713486 m!4220033))

(assert (=> b!3712577 d!1087582))

(declare-fun b!3713501 () Bool)

(declare-fun e!2299607 () Bool)

(declare-fun e!2299610 () Bool)

(assert (=> b!3713501 (= e!2299607 e!2299610)))

(declare-fun c!641711 () Bool)

(assert (=> b!3713501 (= c!641711 ((_ is Union!10849) lt!1296976))))

(declare-fun b!3713502 () Bool)

(declare-fun res!1509781 () Bool)

(declare-fun e!2299605 () Bool)

(assert (=> b!3713502 (=> res!1509781 e!2299605)))

(assert (=> b!3713502 (= res!1509781 (not ((_ is Concat!17120) lt!1296976)))))

(assert (=> b!3713502 (= e!2299610 e!2299605)))

(declare-fun b!3713503 () Bool)

(declare-fun e!2299609 () Bool)

(declare-fun call!268983 () Bool)

(assert (=> b!3713503 (= e!2299609 call!268983)))

(declare-fun bm!268978 () Bool)

(assert (=> bm!268978 (= call!268983 (validRegex!4956 (ite c!641711 (regTwo!22211 lt!1296976) (regOne!22210 lt!1296976))))))

(declare-fun bm!268979 () Bool)

(declare-fun call!268984 () Bool)

(declare-fun call!268985 () Bool)

(assert (=> bm!268979 (= call!268984 call!268985)))

(declare-fun b!3713505 () Bool)

(declare-fun res!1509779 () Bool)

(assert (=> b!3713505 (=> (not res!1509779) (not e!2299609))))

(assert (=> b!3713505 (= res!1509779 call!268984)))

(assert (=> b!3713505 (= e!2299610 e!2299609)))

(declare-fun b!3713506 () Bool)

(declare-fun e!2299611 () Bool)

(assert (=> b!3713506 (= e!2299611 call!268984)))

(declare-fun b!3713507 () Bool)

(declare-fun e!2299606 () Bool)

(assert (=> b!3713507 (= e!2299607 e!2299606)))

(declare-fun res!1509782 () Bool)

(assert (=> b!3713507 (= res!1509782 (not (nullable!3772 (reg!11178 lt!1296976))))))

(assert (=> b!3713507 (=> (not res!1509782) (not e!2299606))))

(declare-fun bm!268980 () Bool)

(declare-fun c!641712 () Bool)

(assert (=> bm!268980 (= call!268985 (validRegex!4956 (ite c!641712 (reg!11178 lt!1296976) (ite c!641711 (regOne!22211 lt!1296976) (regTwo!22210 lt!1296976)))))))

(declare-fun b!3713508 () Bool)

(assert (=> b!3713508 (= e!2299606 call!268985)))

(declare-fun b!3713509 () Bool)

(declare-fun e!2299608 () Bool)

(assert (=> b!3713509 (= e!2299608 e!2299607)))

(assert (=> b!3713509 (= c!641712 ((_ is Star!10849) lt!1296976))))

(declare-fun d!1087586 () Bool)

(declare-fun res!1509780 () Bool)

(assert (=> d!1087586 (=> res!1509780 e!2299608)))

(assert (=> d!1087586 (= res!1509780 ((_ is ElementMatch!10849) lt!1296976))))

(assert (=> d!1087586 (= (validRegex!4956 lt!1296976) e!2299608)))

(declare-fun b!3713504 () Bool)

(assert (=> b!3713504 (= e!2299605 e!2299611)))

(declare-fun res!1509783 () Bool)

(assert (=> b!3713504 (=> (not res!1509783) (not e!2299611))))

(assert (=> b!3713504 (= res!1509783 call!268983)))

(assert (= (and d!1087586 (not res!1509780)) b!3713509))

(assert (= (and b!3713509 c!641712) b!3713507))

(assert (= (and b!3713509 (not c!641712)) b!3713501))

(assert (= (and b!3713507 res!1509782) b!3713508))

(assert (= (and b!3713501 c!641711) b!3713505))

(assert (= (and b!3713501 (not c!641711)) b!3713502))

(assert (= (and b!3713505 res!1509779) b!3713503))

(assert (= (and b!3713502 (not res!1509781)) b!3713504))

(assert (= (and b!3713504 res!1509783) b!3713506))

(assert (= (or b!3713503 b!3713504) bm!268978))

(assert (= (or b!3713505 b!3713506) bm!268979))

(assert (= (or b!3713508 bm!268979) bm!268980))

(declare-fun m!4220045 () Bool)

(assert (=> bm!268978 m!4220045))

(declare-fun m!4220047 () Bool)

(assert (=> b!3713507 m!4220047))

(declare-fun m!4220049 () Bool)

(assert (=> bm!268980 m!4220049))

(assert (=> d!1087406 d!1087586))

(declare-fun b!3713519 () Bool)

(declare-fun e!2299621 () Bool)

(declare-fun e!2299624 () Bool)

(assert (=> b!3713519 (= e!2299621 e!2299624)))

(declare-fun c!641715 () Bool)

(assert (=> b!3713519 (= c!641715 ((_ is Union!10849) (regOne!22211 r!26326)))))

(declare-fun b!3713520 () Bool)

(declare-fun res!1509791 () Bool)

(declare-fun e!2299619 () Bool)

(assert (=> b!3713520 (=> res!1509791 e!2299619)))

(assert (=> b!3713520 (= res!1509791 (not ((_ is Concat!17120) (regOne!22211 r!26326))))))

(assert (=> b!3713520 (= e!2299624 e!2299619)))

(declare-fun b!3713521 () Bool)

(declare-fun e!2299623 () Bool)

(declare-fun call!268989 () Bool)

(assert (=> b!3713521 (= e!2299623 call!268989)))

(declare-fun bm!268984 () Bool)

(assert (=> bm!268984 (= call!268989 (validRegex!4956 (ite c!641715 (regTwo!22211 (regOne!22211 r!26326)) (regOne!22210 (regOne!22211 r!26326)))))))

(declare-fun bm!268985 () Bool)

(declare-fun call!268990 () Bool)

(declare-fun call!268991 () Bool)

(assert (=> bm!268985 (= call!268990 call!268991)))

(declare-fun b!3713523 () Bool)

(declare-fun res!1509789 () Bool)

(assert (=> b!3713523 (=> (not res!1509789) (not e!2299623))))

(assert (=> b!3713523 (= res!1509789 call!268990)))

(assert (=> b!3713523 (= e!2299624 e!2299623)))

(declare-fun b!3713524 () Bool)

(declare-fun e!2299625 () Bool)

(assert (=> b!3713524 (= e!2299625 call!268990)))

(declare-fun b!3713525 () Bool)

(declare-fun e!2299620 () Bool)

(assert (=> b!3713525 (= e!2299621 e!2299620)))

(declare-fun res!1509792 () Bool)

(assert (=> b!3713525 (= res!1509792 (not (nullable!3772 (reg!11178 (regOne!22211 r!26326)))))))

(assert (=> b!3713525 (=> (not res!1509792) (not e!2299620))))

(declare-fun c!641716 () Bool)

(declare-fun bm!268986 () Bool)

(assert (=> bm!268986 (= call!268991 (validRegex!4956 (ite c!641716 (reg!11178 (regOne!22211 r!26326)) (ite c!641715 (regOne!22211 (regOne!22211 r!26326)) (regTwo!22210 (regOne!22211 r!26326))))))))

(declare-fun b!3713526 () Bool)

(assert (=> b!3713526 (= e!2299620 call!268991)))

(declare-fun b!3713527 () Bool)

(declare-fun e!2299622 () Bool)

(assert (=> b!3713527 (= e!2299622 e!2299621)))

(assert (=> b!3713527 (= c!641716 ((_ is Star!10849) (regOne!22211 r!26326)))))

(declare-fun d!1087590 () Bool)

(declare-fun res!1509790 () Bool)

(assert (=> d!1087590 (=> res!1509790 e!2299622)))

(assert (=> d!1087590 (= res!1509790 ((_ is ElementMatch!10849) (regOne!22211 r!26326)))))

(assert (=> d!1087590 (= (validRegex!4956 (regOne!22211 r!26326)) e!2299622)))

(declare-fun b!3713522 () Bool)

(assert (=> b!3713522 (= e!2299619 e!2299625)))

(declare-fun res!1509793 () Bool)

(assert (=> b!3713522 (=> (not res!1509793) (not e!2299625))))

(assert (=> b!3713522 (= res!1509793 call!268989)))

(assert (= (and d!1087590 (not res!1509790)) b!3713527))

(assert (= (and b!3713527 c!641716) b!3713525))

(assert (= (and b!3713527 (not c!641716)) b!3713519))

(assert (= (and b!3713525 res!1509792) b!3713526))

(assert (= (and b!3713519 c!641715) b!3713523))

(assert (= (and b!3713519 (not c!641715)) b!3713520))

(assert (= (and b!3713523 res!1509789) b!3713521))

(assert (= (and b!3713520 (not res!1509791)) b!3713522))

(assert (= (and b!3713522 res!1509793) b!3713524))

(assert (= (or b!3713521 b!3713522) bm!268984))

(assert (= (or b!3713523 b!3713524) bm!268985))

(assert (= (or b!3713526 bm!268985) bm!268986))

(declare-fun m!4220057 () Bool)

(assert (=> bm!268984 m!4220057))

(declare-fun m!4220059 () Bool)

(assert (=> b!3713525 m!4220059))

(declare-fun m!4220061 () Bool)

(assert (=> bm!268986 m!4220061))

(assert (=> d!1087406 d!1087590))

(declare-fun b!3713538 () Bool)

(declare-fun e!2299633 () List!39730)

(assert (=> b!3713538 (= e!2299633 (Cons!39606 (h!45026 call!268765) (++!9794 (t!302413 call!268765) call!268764)))))

(declare-fun b!3713539 () Bool)

(declare-fun res!1509799 () Bool)

(declare-fun e!2299634 () Bool)

(assert (=> b!3713539 (=> (not res!1509799) (not e!2299634))))

(declare-fun lt!1297014 () List!39730)

(assert (=> b!3713539 (= res!1509799 (= (size!30016 lt!1297014) (+ (size!30016 call!268765) (size!30016 call!268764))))))

(declare-fun b!3713537 () Bool)

(assert (=> b!3713537 (= e!2299633 call!268764)))

(declare-fun d!1087594 () Bool)

(assert (=> d!1087594 e!2299634))

(declare-fun res!1509800 () Bool)

(assert (=> d!1087594 (=> (not res!1509800) (not e!2299634))))

(assert (=> d!1087594 (= res!1509800 (= (content!5731 lt!1297014) ((_ map or) (content!5731 call!268765) (content!5731 call!268764))))))

(assert (=> d!1087594 (= lt!1297014 e!2299633)))

(declare-fun c!641719 () Bool)

(assert (=> d!1087594 (= c!641719 ((_ is Nil!39606) call!268765))))

(assert (=> d!1087594 (= (++!9794 call!268765 call!268764) lt!1297014)))

(declare-fun b!3713540 () Bool)

(assert (=> b!3713540 (= e!2299634 (or (not (= call!268764 Nil!39606)) (= lt!1297014 call!268765)))))

(assert (= (and d!1087594 c!641719) b!3713537))

(assert (= (and d!1087594 (not c!641719)) b!3713538))

(assert (= (and d!1087594 res!1509800) b!3713539))

(assert (= (and b!3713539 res!1509799) b!3713540))

(declare-fun m!4220069 () Bool)

(assert (=> b!3713538 m!4220069))

(declare-fun m!4220071 () Bool)

(assert (=> b!3713539 m!4220071))

(declare-fun m!4220073 () Bool)

(assert (=> b!3713539 m!4220073))

(declare-fun m!4220075 () Bool)

(assert (=> b!3713539 m!4220075))

(declare-fun m!4220077 () Bool)

(assert (=> d!1087594 m!4220077))

(declare-fun m!4220079 () Bool)

(assert (=> d!1087594 m!4220079))

(declare-fun m!4220081 () Bool)

(assert (=> d!1087594 m!4220081))

(assert (=> bm!268759 d!1087594))

(declare-fun c!641720 () Bool)

(declare-fun c!641722 () Bool)

(declare-fun bm!268990 () Bool)

(declare-fun call!268995 () List!39730)

(assert (=> bm!268990 (= call!268995 (usedCharacters!1112 (ite c!641720 (reg!11178 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))) (ite c!641722 (regOne!22211 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))) (regOne!22210 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326))))))))))

(declare-fun bm!268991 () Bool)

(declare-fun call!268998 () List!39730)

(declare-fun call!268997 () List!39730)

(declare-fun call!268996 () List!39730)

(assert (=> bm!268991 (= call!268998 (++!9794 call!268997 call!268996))))

(declare-fun b!3713545 () Bool)

(declare-fun e!2299637 () List!39730)

(assert (=> b!3713545 (= e!2299637 Nil!39606)))

(declare-fun b!3713546 () Bool)

(declare-fun e!2299636 () List!39730)

(assert (=> b!3713546 (= e!2299636 call!268998)))

(declare-fun c!641721 () Bool)

(declare-fun d!1087596 () Bool)

(assert (=> d!1087596 (= c!641721 (or ((_ is EmptyExpr!10849) (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))) ((_ is EmptyLang!10849) (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326))))))))

(assert (=> d!1087596 (= (usedCharacters!1112 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))) e!2299637)))

(declare-fun b!3713547 () Bool)

(declare-fun e!2299638 () List!39730)

(assert (=> b!3713547 (= e!2299638 call!268995)))

(declare-fun b!3713548 () Bool)

(assert (=> b!3713548 (= e!2299636 call!268998)))

(declare-fun b!3713549 () Bool)

(assert (=> b!3713549 (= e!2299638 e!2299636)))

(assert (=> b!3713549 (= c!641722 ((_ is Union!10849) (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))))))

(declare-fun bm!268992 () Bool)

(assert (=> bm!268992 (= call!268996 (usedCharacters!1112 (ite c!641722 (regTwo!22211 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))) (regTwo!22210 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))))))))

(declare-fun e!2299639 () List!39730)

(declare-fun b!3713550 () Bool)

(assert (=> b!3713550 (= e!2299639 (Cons!39606 (c!641401 (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))) Nil!39606))))

(declare-fun b!3713551 () Bool)

(assert (=> b!3713551 (= e!2299637 e!2299639)))

(declare-fun c!641723 () Bool)

(assert (=> b!3713551 (= c!641723 ((_ is ElementMatch!10849) (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))))))

(declare-fun bm!268993 () Bool)

(assert (=> bm!268993 (= call!268997 call!268995)))

(declare-fun b!3713552 () Bool)

(assert (=> b!3713552 (= c!641720 ((_ is Star!10849) (ite c!641484 (reg!11178 r!26326) (ite c!641486 (regOne!22211 r!26326) (regOne!22210 r!26326)))))))

(assert (=> b!3713552 (= e!2299639 e!2299638)))

(assert (= (and d!1087596 c!641721) b!3713545))

(assert (= (and d!1087596 (not c!641721)) b!3713551))

(assert (= (and b!3713551 c!641723) b!3713550))

(assert (= (and b!3713551 (not c!641723)) b!3713552))

(assert (= (and b!3713552 c!641720) b!3713547))

(assert (= (and b!3713552 (not c!641720)) b!3713549))

(assert (= (and b!3713549 c!641722) b!3713548))

(assert (= (and b!3713549 (not c!641722)) b!3713546))

(assert (= (or b!3713548 b!3713546) bm!268993))

(assert (= (or b!3713548 b!3713546) bm!268992))

(assert (= (or b!3713548 b!3713546) bm!268991))

(assert (= (or b!3713547 bm!268993) bm!268990))

(declare-fun m!4220083 () Bool)

(assert (=> bm!268990 m!4220083))

(declare-fun m!4220085 () Bool)

(assert (=> bm!268991 m!4220085))

(declare-fun m!4220087 () Bool)

(assert (=> bm!268992 m!4220087))

(assert (=> bm!268758 d!1087596))

(declare-fun b!3713575 () Bool)

(declare-fun e!2299645 () Bool)

(declare-fun tp!1130029 () Bool)

(assert (=> b!3713575 (= e!2299645 tp!1130029)))

(declare-fun b!3713574 () Bool)

(declare-fun tp!1130030 () Bool)

(declare-fun tp!1130028 () Bool)

(assert (=> b!3713574 (= e!2299645 (and tp!1130030 tp!1130028))))

(declare-fun b!3713573 () Bool)

(assert (=> b!3713573 (= e!2299645 tp_is_empty!18713)))

(assert (=> b!3712903 (= tp!1129987 e!2299645)))

(declare-fun b!3713576 () Bool)

(declare-fun tp!1130027 () Bool)

(declare-fun tp!1130031 () Bool)

(assert (=> b!3713576 (= e!2299645 (and tp!1130027 tp!1130031))))

(assert (= (and b!3712903 ((_ is ElementMatch!10849) (regOne!22210 (regOne!22211 r!26326)))) b!3713573))

(assert (= (and b!3712903 ((_ is Concat!17120) (regOne!22210 (regOne!22211 r!26326)))) b!3713574))

(assert (= (and b!3712903 ((_ is Star!10849) (regOne!22210 (regOne!22211 r!26326)))) b!3713575))

(assert (= (and b!3712903 ((_ is Union!10849) (regOne!22210 (regOne!22211 r!26326)))) b!3713576))

(declare-fun b!3713583 () Bool)

(declare-fun e!2299647 () Bool)

(declare-fun tp!1130039 () Bool)

(assert (=> b!3713583 (= e!2299647 tp!1130039)))

(declare-fun b!3713582 () Bool)

(declare-fun tp!1130040 () Bool)

(declare-fun tp!1130038 () Bool)

(assert (=> b!3713582 (= e!2299647 (and tp!1130040 tp!1130038))))

(declare-fun b!3713581 () Bool)

(assert (=> b!3713581 (= e!2299647 tp_is_empty!18713)))

(assert (=> b!3712903 (= tp!1129985 e!2299647)))

(declare-fun b!3713584 () Bool)

(declare-fun tp!1130037 () Bool)

(declare-fun tp!1130041 () Bool)

(assert (=> b!3713584 (= e!2299647 (and tp!1130037 tp!1130041))))

(assert (= (and b!3712903 ((_ is ElementMatch!10849) (regTwo!22210 (regOne!22211 r!26326)))) b!3713581))

(assert (= (and b!3712903 ((_ is Concat!17120) (regTwo!22210 (regOne!22211 r!26326)))) b!3713582))

(assert (= (and b!3712903 ((_ is Star!10849) (regTwo!22210 (regOne!22211 r!26326)))) b!3713583))

(assert (= (and b!3712903 ((_ is Union!10849) (regTwo!22210 (regOne!22211 r!26326)))) b!3713584))

(declare-fun b!3713591 () Bool)

(declare-fun e!2299649 () Bool)

(declare-fun tp!1130049 () Bool)

(assert (=> b!3713591 (= e!2299649 tp!1130049)))

(declare-fun b!3713590 () Bool)

(declare-fun tp!1130050 () Bool)

(declare-fun tp!1130048 () Bool)

(assert (=> b!3713590 (= e!2299649 (and tp!1130050 tp!1130048))))

(declare-fun b!3713589 () Bool)

(assert (=> b!3713589 (= e!2299649 tp_is_empty!18713)))

(assert (=> b!3712899 (= tp!1129982 e!2299649)))

(declare-fun b!3713592 () Bool)

(declare-fun tp!1130047 () Bool)

(declare-fun tp!1130051 () Bool)

(assert (=> b!3713592 (= e!2299649 (and tp!1130047 tp!1130051))))

(assert (= (and b!3712899 ((_ is ElementMatch!10849) (regOne!22210 (reg!11178 r!26326)))) b!3713589))

(assert (= (and b!3712899 ((_ is Concat!17120) (regOne!22210 (reg!11178 r!26326)))) b!3713590))

(assert (= (and b!3712899 ((_ is Star!10849) (regOne!22210 (reg!11178 r!26326)))) b!3713591))

(assert (= (and b!3712899 ((_ is Union!10849) (regOne!22210 (reg!11178 r!26326)))) b!3713592))

(declare-fun b!3713599 () Bool)

(declare-fun e!2299651 () Bool)

(declare-fun tp!1130059 () Bool)

(assert (=> b!3713599 (= e!2299651 tp!1130059)))

(declare-fun b!3713598 () Bool)

(declare-fun tp!1130060 () Bool)

(declare-fun tp!1130058 () Bool)

(assert (=> b!3713598 (= e!2299651 (and tp!1130060 tp!1130058))))

(declare-fun b!3713597 () Bool)

(assert (=> b!3713597 (= e!2299651 tp_is_empty!18713)))

(assert (=> b!3712899 (= tp!1129980 e!2299651)))

(declare-fun b!3713600 () Bool)

(declare-fun tp!1130057 () Bool)

(declare-fun tp!1130061 () Bool)

(assert (=> b!3713600 (= e!2299651 (and tp!1130057 tp!1130061))))

(assert (= (and b!3712899 ((_ is ElementMatch!10849) (regTwo!22210 (reg!11178 r!26326)))) b!3713597))

(assert (= (and b!3712899 ((_ is Concat!17120) (regTwo!22210 (reg!11178 r!26326)))) b!3713598))

(assert (= (and b!3712899 ((_ is Star!10849) (regTwo!22210 (reg!11178 r!26326)))) b!3713599))

(assert (= (and b!3712899 ((_ is Union!10849) (regTwo!22210 (reg!11178 r!26326)))) b!3713600))

(declare-fun b!3713607 () Bool)

(declare-fun e!2299653 () Bool)

(declare-fun tp!1130069 () Bool)

(assert (=> b!3713607 (= e!2299653 tp!1130069)))

(declare-fun b!3713606 () Bool)

(declare-fun tp!1130070 () Bool)

(declare-fun tp!1130068 () Bool)

(assert (=> b!3713606 (= e!2299653 (and tp!1130070 tp!1130068))))

(declare-fun b!3713605 () Bool)

(assert (=> b!3713605 (= e!2299653 tp_is_empty!18713)))

(assert (=> b!3712908 (= tp!1129991 e!2299653)))

(declare-fun b!3713608 () Bool)

(declare-fun tp!1130067 () Bool)

(declare-fun tp!1130071 () Bool)

(assert (=> b!3713608 (= e!2299653 (and tp!1130067 tp!1130071))))

(assert (= (and b!3712908 ((_ is ElementMatch!10849) (reg!11178 (regTwo!22211 r!26326)))) b!3713605))

(assert (= (and b!3712908 ((_ is Concat!17120) (reg!11178 (regTwo!22211 r!26326)))) b!3713606))

(assert (= (and b!3712908 ((_ is Star!10849) (reg!11178 (regTwo!22211 r!26326)))) b!3713607))

(assert (= (and b!3712908 ((_ is Union!10849) (reg!11178 (regTwo!22211 r!26326)))) b!3713608))

(declare-fun b!3713615 () Bool)

(declare-fun e!2299655 () Bool)

(declare-fun tp!1130079 () Bool)

(assert (=> b!3713615 (= e!2299655 tp!1130079)))

(declare-fun b!3713614 () Bool)

(declare-fun tp!1130080 () Bool)

(declare-fun tp!1130078 () Bool)

(assert (=> b!3713614 (= e!2299655 (and tp!1130080 tp!1130078))))

(declare-fun b!3713613 () Bool)

(assert (=> b!3713613 (= e!2299655 tp_is_empty!18713)))

(assert (=> b!3712907 (= tp!1129992 e!2299655)))

(declare-fun b!3713616 () Bool)

(declare-fun tp!1130077 () Bool)

(declare-fun tp!1130081 () Bool)

(assert (=> b!3713616 (= e!2299655 (and tp!1130077 tp!1130081))))

(assert (= (and b!3712907 ((_ is ElementMatch!10849) (regOne!22210 (regTwo!22211 r!26326)))) b!3713613))

(assert (= (and b!3712907 ((_ is Concat!17120) (regOne!22210 (regTwo!22211 r!26326)))) b!3713614))

(assert (= (and b!3712907 ((_ is Star!10849) (regOne!22210 (regTwo!22211 r!26326)))) b!3713615))

(assert (= (and b!3712907 ((_ is Union!10849) (regOne!22210 (regTwo!22211 r!26326)))) b!3713616))

(declare-fun b!3713623 () Bool)

(declare-fun e!2299657 () Bool)

(declare-fun tp!1130089 () Bool)

(assert (=> b!3713623 (= e!2299657 tp!1130089)))

(declare-fun b!3713622 () Bool)

(declare-fun tp!1130090 () Bool)

(declare-fun tp!1130088 () Bool)

(assert (=> b!3713622 (= e!2299657 (and tp!1130090 tp!1130088))))

(declare-fun b!3713621 () Bool)

(assert (=> b!3713621 (= e!2299657 tp_is_empty!18713)))

(assert (=> b!3712907 (= tp!1129990 e!2299657)))

(declare-fun b!3713624 () Bool)

(declare-fun tp!1130087 () Bool)

(declare-fun tp!1130091 () Bool)

(assert (=> b!3713624 (= e!2299657 (and tp!1130087 tp!1130091))))

(assert (= (and b!3712907 ((_ is ElementMatch!10849) (regTwo!22210 (regTwo!22211 r!26326)))) b!3713621))

(assert (= (and b!3712907 ((_ is Concat!17120) (regTwo!22210 (regTwo!22211 r!26326)))) b!3713622))

(assert (= (and b!3712907 ((_ is Star!10849) (regTwo!22210 (regTwo!22211 r!26326)))) b!3713623))

(assert (= (and b!3712907 ((_ is Union!10849) (regTwo!22210 (regTwo!22211 r!26326)))) b!3713624))

(declare-fun b!3713629 () Bool)

(declare-fun e!2299659 () Bool)

(declare-fun tp!1130097 () Bool)

(assert (=> b!3713629 (= e!2299659 (and tp_is_empty!18713 tp!1130097))))

(assert (=> b!3712914 (= tp!1129996 e!2299659)))

(assert (= (and b!3712914 ((_ is Cons!39606) (t!302413 (t!302413 tl!3933)))) b!3713629))

(declare-fun b!3713636 () Bool)

(declare-fun e!2299661 () Bool)

(declare-fun tp!1130105 () Bool)

(assert (=> b!3713636 (= e!2299661 tp!1130105)))

(declare-fun b!3713635 () Bool)

(declare-fun tp!1130106 () Bool)

(declare-fun tp!1130104 () Bool)

(assert (=> b!3713635 (= e!2299661 (and tp!1130106 tp!1130104))))

(declare-fun b!3713634 () Bool)

(assert (=> b!3713634 (= e!2299661 tp_is_empty!18713)))

(assert (=> b!3712893 (= tp!1129969 e!2299661)))

(declare-fun b!3713637 () Bool)

(declare-fun tp!1130103 () Bool)

(declare-fun tp!1130107 () Bool)

(assert (=> b!3713637 (= e!2299661 (and tp!1130103 tp!1130107))))

(assert (= (and b!3712893 ((_ is ElementMatch!10849) (regOne!22211 (regOne!22210 r!26326)))) b!3713634))

(assert (= (and b!3712893 ((_ is Concat!17120) (regOne!22211 (regOne!22210 r!26326)))) b!3713635))

(assert (= (and b!3712893 ((_ is Star!10849) (regOne!22211 (regOne!22210 r!26326)))) b!3713636))

(assert (= (and b!3712893 ((_ is Union!10849) (regOne!22211 (regOne!22210 r!26326)))) b!3713637))

(declare-fun b!3713644 () Bool)

(declare-fun e!2299663 () Bool)

(declare-fun tp!1130115 () Bool)

(assert (=> b!3713644 (= e!2299663 tp!1130115)))

(declare-fun b!3713643 () Bool)

(declare-fun tp!1130116 () Bool)

(declare-fun tp!1130114 () Bool)

(assert (=> b!3713643 (= e!2299663 (and tp!1130116 tp!1130114))))

(declare-fun b!3713642 () Bool)

(assert (=> b!3713642 (= e!2299663 tp_is_empty!18713)))

(assert (=> b!3712893 (= tp!1129973 e!2299663)))

(declare-fun b!3713645 () Bool)

(declare-fun tp!1130113 () Bool)

(declare-fun tp!1130117 () Bool)

(assert (=> b!3713645 (= e!2299663 (and tp!1130113 tp!1130117))))

(assert (= (and b!3712893 ((_ is ElementMatch!10849) (regTwo!22211 (regOne!22210 r!26326)))) b!3713642))

(assert (= (and b!3712893 ((_ is Concat!17120) (regTwo!22211 (regOne!22210 r!26326)))) b!3713643))

(assert (= (and b!3712893 ((_ is Star!10849) (regTwo!22211 (regOne!22210 r!26326)))) b!3713644))

(assert (= (and b!3712893 ((_ is Union!10849) (regTwo!22211 (regOne!22210 r!26326)))) b!3713645))

(declare-fun b!3713652 () Bool)

(declare-fun e!2299665 () Bool)

(declare-fun tp!1130125 () Bool)

(assert (=> b!3713652 (= e!2299665 tp!1130125)))

(declare-fun b!3713651 () Bool)

(declare-fun tp!1130126 () Bool)

(declare-fun tp!1130124 () Bool)

(assert (=> b!3713651 (= e!2299665 (and tp!1130126 tp!1130124))))

(declare-fun b!3713650 () Bool)

(assert (=> b!3713650 (= e!2299665 tp_is_empty!18713)))

(assert (=> b!3712901 (= tp!1129979 e!2299665)))

(declare-fun b!3713653 () Bool)

(declare-fun tp!1130123 () Bool)

(declare-fun tp!1130127 () Bool)

(assert (=> b!3713653 (= e!2299665 (and tp!1130123 tp!1130127))))

(assert (= (and b!3712901 ((_ is ElementMatch!10849) (regOne!22211 (reg!11178 r!26326)))) b!3713650))

(assert (= (and b!3712901 ((_ is Concat!17120) (regOne!22211 (reg!11178 r!26326)))) b!3713651))

(assert (= (and b!3712901 ((_ is Star!10849) (regOne!22211 (reg!11178 r!26326)))) b!3713652))

(assert (= (and b!3712901 ((_ is Union!10849) (regOne!22211 (reg!11178 r!26326)))) b!3713653))

(declare-fun b!3713660 () Bool)

(declare-fun e!2299667 () Bool)

(declare-fun tp!1130135 () Bool)

(assert (=> b!3713660 (= e!2299667 tp!1130135)))

(declare-fun b!3713659 () Bool)

(declare-fun tp!1130136 () Bool)

(declare-fun tp!1130134 () Bool)

(assert (=> b!3713659 (= e!2299667 (and tp!1130136 tp!1130134))))

(declare-fun b!3713658 () Bool)

(assert (=> b!3713658 (= e!2299667 tp_is_empty!18713)))

(assert (=> b!3712901 (= tp!1129983 e!2299667)))

(declare-fun b!3713661 () Bool)

(declare-fun tp!1130133 () Bool)

(declare-fun tp!1130137 () Bool)

(assert (=> b!3713661 (= e!2299667 (and tp!1130133 tp!1130137))))

(assert (= (and b!3712901 ((_ is ElementMatch!10849) (regTwo!22211 (reg!11178 r!26326)))) b!3713658))

(assert (= (and b!3712901 ((_ is Concat!17120) (regTwo!22211 (reg!11178 r!26326)))) b!3713659))

(assert (= (and b!3712901 ((_ is Star!10849) (regTwo!22211 (reg!11178 r!26326)))) b!3713660))

(assert (= (and b!3712901 ((_ is Union!10849) (regTwo!22211 (reg!11178 r!26326)))) b!3713661))

(declare-fun b!3713665 () Bool)

(declare-fun e!2299669 () Bool)

(declare-fun tp!1130141 () Bool)

(assert (=> b!3713665 (= e!2299669 tp!1130141)))

(declare-fun b!3713664 () Bool)

(declare-fun tp!1130143 () Bool)

(declare-fun tp!1130140 () Bool)

(assert (=> b!3713664 (= e!2299669 (and tp!1130143 tp!1130140))))

(declare-fun b!3713663 () Bool)

(assert (=> b!3713663 (= e!2299669 tp_is_empty!18713)))

(assert (=> b!3712896 (= tp!1129976 e!2299669)))

(declare-fun b!3713666 () Bool)

(declare-fun tp!1130139 () Bool)

(declare-fun tp!1130145 () Bool)

(assert (=> b!3713666 (= e!2299669 (and tp!1130139 tp!1130145))))

(assert (= (and b!3712896 ((_ is ElementMatch!10849) (reg!11178 (regTwo!22210 r!26326)))) b!3713663))

(assert (= (and b!3712896 ((_ is Concat!17120) (reg!11178 (regTwo!22210 r!26326)))) b!3713664))

(assert (= (and b!3712896 ((_ is Star!10849) (reg!11178 (regTwo!22210 r!26326)))) b!3713665))

(assert (= (and b!3712896 ((_ is Union!10849) (reg!11178 (regTwo!22210 r!26326)))) b!3713666))

(declare-fun b!3713673 () Bool)

(declare-fun e!2299671 () Bool)

(declare-fun tp!1130152 () Bool)

(assert (=> b!3713673 (= e!2299671 tp!1130152)))

(declare-fun b!3713672 () Bool)

(declare-fun tp!1130154 () Bool)

(declare-fun tp!1130150 () Bool)

(assert (=> b!3713672 (= e!2299671 (and tp!1130154 tp!1130150))))

(declare-fun b!3713671 () Bool)

(assert (=> b!3713671 (= e!2299671 tp_is_empty!18713)))

(assert (=> b!3712897 (= tp!1129974 e!2299671)))

(declare-fun b!3713675 () Bool)

(declare-fun tp!1130149 () Bool)

(declare-fun tp!1130156 () Bool)

(assert (=> b!3713675 (= e!2299671 (and tp!1130149 tp!1130156))))

(assert (= (and b!3712897 ((_ is ElementMatch!10849) (regOne!22211 (regTwo!22210 r!26326)))) b!3713671))

(assert (= (and b!3712897 ((_ is Concat!17120) (regOne!22211 (regTwo!22210 r!26326)))) b!3713672))

(assert (= (and b!3712897 ((_ is Star!10849) (regOne!22211 (regTwo!22210 r!26326)))) b!3713673))

(assert (= (and b!3712897 ((_ is Union!10849) (regOne!22211 (regTwo!22210 r!26326)))) b!3713675))

(declare-fun b!3713681 () Bool)

(declare-fun e!2299673 () Bool)

(declare-fun tp!1130161 () Bool)

(assert (=> b!3713681 (= e!2299673 tp!1130161)))

(declare-fun b!3713680 () Bool)

(declare-fun tp!1130163 () Bool)

(declare-fun tp!1130160 () Bool)

(assert (=> b!3713680 (= e!2299673 (and tp!1130163 tp!1130160))))

(declare-fun b!3713679 () Bool)

(assert (=> b!3713679 (= e!2299673 tp_is_empty!18713)))

(assert (=> b!3712897 (= tp!1129978 e!2299673)))

(declare-fun b!3713682 () Bool)

(declare-fun tp!1130159 () Bool)

(declare-fun tp!1130165 () Bool)

(assert (=> b!3713682 (= e!2299673 (and tp!1130159 tp!1130165))))

(assert (= (and b!3712897 ((_ is ElementMatch!10849) (regTwo!22211 (regTwo!22210 r!26326)))) b!3713679))

(assert (= (and b!3712897 ((_ is Concat!17120) (regTwo!22211 (regTwo!22210 r!26326)))) b!3713680))

(assert (= (and b!3712897 ((_ is Star!10849) (regTwo!22211 (regTwo!22210 r!26326)))) b!3713681))

(assert (= (and b!3712897 ((_ is Union!10849) (regTwo!22211 (regTwo!22210 r!26326)))) b!3713682))

(declare-fun b!3713692 () Bool)

(declare-fun e!2299675 () Bool)

(declare-fun tp!1130174 () Bool)

(assert (=> b!3713692 (= e!2299675 tp!1130174)))

(declare-fun b!3713690 () Bool)

(declare-fun tp!1130176 () Bool)

(declare-fun tp!1130173 () Bool)

(assert (=> b!3713690 (= e!2299675 (and tp!1130176 tp!1130173))))

(declare-fun b!3713688 () Bool)

(assert (=> b!3713688 (= e!2299675 tp_is_empty!18713)))

(assert (=> b!3712892 (= tp!1129971 e!2299675)))

(declare-fun b!3713694 () Bool)

(declare-fun tp!1130171 () Bool)

(declare-fun tp!1130178 () Bool)

(assert (=> b!3713694 (= e!2299675 (and tp!1130171 tp!1130178))))

(assert (= (and b!3712892 ((_ is ElementMatch!10849) (reg!11178 (regOne!22210 r!26326)))) b!3713688))

(assert (= (and b!3712892 ((_ is Concat!17120) (reg!11178 (regOne!22210 r!26326)))) b!3713690))

(assert (= (and b!3712892 ((_ is Star!10849) (reg!11178 (regOne!22210 r!26326)))) b!3713692))

(assert (= (and b!3712892 ((_ is Union!10849) (reg!11178 (regOne!22210 r!26326)))) b!3713694))

(declare-fun b!3713701 () Bool)

(declare-fun e!2299678 () Bool)

(declare-fun tp!1130186 () Bool)

(assert (=> b!3713701 (= e!2299678 tp!1130186)))

(declare-fun b!3713700 () Bool)

(declare-fun tp!1130187 () Bool)

(declare-fun tp!1130185 () Bool)

(assert (=> b!3713700 (= e!2299678 (and tp!1130187 tp!1130185))))

(declare-fun b!3713699 () Bool)

(assert (=> b!3713699 (= e!2299678 tp_is_empty!18713)))

(assert (=> b!3712895 (= tp!1129977 e!2299678)))

(declare-fun b!3713702 () Bool)

(declare-fun tp!1130183 () Bool)

(declare-fun tp!1130188 () Bool)

(assert (=> b!3713702 (= e!2299678 (and tp!1130183 tp!1130188))))

(assert (= (and b!3712895 ((_ is ElementMatch!10849) (regOne!22210 (regTwo!22210 r!26326)))) b!3713699))

(assert (= (and b!3712895 ((_ is Concat!17120) (regOne!22210 (regTwo!22210 r!26326)))) b!3713700))

(assert (= (and b!3712895 ((_ is Star!10849) (regOne!22210 (regTwo!22210 r!26326)))) b!3713701))

(assert (= (and b!3712895 ((_ is Union!10849) (regOne!22210 (regTwo!22210 r!26326)))) b!3713702))

(declare-fun b!3713709 () Bool)

(declare-fun e!2299680 () Bool)

(declare-fun tp!1130196 () Bool)

(assert (=> b!3713709 (= e!2299680 tp!1130196)))

(declare-fun b!3713708 () Bool)

(declare-fun tp!1130197 () Bool)

(declare-fun tp!1130195 () Bool)

(assert (=> b!3713708 (= e!2299680 (and tp!1130197 tp!1130195))))

(declare-fun b!3713707 () Bool)

(assert (=> b!3713707 (= e!2299680 tp_is_empty!18713)))

(assert (=> b!3712895 (= tp!1129975 e!2299680)))

(declare-fun b!3713710 () Bool)

(declare-fun tp!1130194 () Bool)

(declare-fun tp!1130198 () Bool)

(assert (=> b!3713710 (= e!2299680 (and tp!1130194 tp!1130198))))

(assert (= (and b!3712895 ((_ is ElementMatch!10849) (regTwo!22210 (regTwo!22210 r!26326)))) b!3713707))

(assert (= (and b!3712895 ((_ is Concat!17120) (regTwo!22210 (regTwo!22210 r!26326)))) b!3713708))

(assert (= (and b!3712895 ((_ is Star!10849) (regTwo!22210 (regTwo!22210 r!26326)))) b!3713709))

(assert (= (and b!3712895 ((_ is Union!10849) (regTwo!22210 (regTwo!22210 r!26326)))) b!3713710))

(declare-fun b!3713717 () Bool)

(declare-fun e!2299682 () Bool)

(declare-fun tp!1130206 () Bool)

(assert (=> b!3713717 (= e!2299682 tp!1130206)))

(declare-fun b!3713716 () Bool)

(declare-fun tp!1130207 () Bool)

(declare-fun tp!1130205 () Bool)

(assert (=> b!3713716 (= e!2299682 (and tp!1130207 tp!1130205))))

(declare-fun b!3713715 () Bool)

(assert (=> b!3713715 (= e!2299682 tp_is_empty!18713)))

(assert (=> b!3712909 (= tp!1129989 e!2299682)))

(declare-fun b!3713718 () Bool)

(declare-fun tp!1130204 () Bool)

(declare-fun tp!1130208 () Bool)

(assert (=> b!3713718 (= e!2299682 (and tp!1130204 tp!1130208))))

(assert (= (and b!3712909 ((_ is ElementMatch!10849) (regOne!22211 (regTwo!22211 r!26326)))) b!3713715))

(assert (= (and b!3712909 ((_ is Concat!17120) (regOne!22211 (regTwo!22211 r!26326)))) b!3713716))

(assert (= (and b!3712909 ((_ is Star!10849) (regOne!22211 (regTwo!22211 r!26326)))) b!3713717))

(assert (= (and b!3712909 ((_ is Union!10849) (regOne!22211 (regTwo!22211 r!26326)))) b!3713718))

(declare-fun b!3713725 () Bool)

(declare-fun e!2299684 () Bool)

(declare-fun tp!1130216 () Bool)

(assert (=> b!3713725 (= e!2299684 tp!1130216)))

(declare-fun b!3713724 () Bool)

(declare-fun tp!1130217 () Bool)

(declare-fun tp!1130215 () Bool)

(assert (=> b!3713724 (= e!2299684 (and tp!1130217 tp!1130215))))

(declare-fun b!3713723 () Bool)

(assert (=> b!3713723 (= e!2299684 tp_is_empty!18713)))

(assert (=> b!3712909 (= tp!1129993 e!2299684)))

(declare-fun b!3713726 () Bool)

(declare-fun tp!1130214 () Bool)

(declare-fun tp!1130218 () Bool)

(assert (=> b!3713726 (= e!2299684 (and tp!1130214 tp!1130218))))

(assert (= (and b!3712909 ((_ is ElementMatch!10849) (regTwo!22211 (regTwo!22211 r!26326)))) b!3713723))

(assert (= (and b!3712909 ((_ is Concat!17120) (regTwo!22211 (regTwo!22211 r!26326)))) b!3713724))

(assert (= (and b!3712909 ((_ is Star!10849) (regTwo!22211 (regTwo!22211 r!26326)))) b!3713725))

(assert (= (and b!3712909 ((_ is Union!10849) (regTwo!22211 (regTwo!22211 r!26326)))) b!3713726))

(declare-fun b!3713729 () Bool)

(declare-fun e!2299685 () Bool)

(declare-fun tp!1130221 () Bool)

(assert (=> b!3713729 (= e!2299685 tp!1130221)))

(declare-fun b!3713728 () Bool)

(declare-fun tp!1130222 () Bool)

(declare-fun tp!1130220 () Bool)

(assert (=> b!3713728 (= e!2299685 (and tp!1130222 tp!1130220))))

(declare-fun b!3713727 () Bool)

(assert (=> b!3713727 (= e!2299685 tp_is_empty!18713)))

(assert (=> b!3712904 (= tp!1129986 e!2299685)))

(declare-fun b!3713730 () Bool)

(declare-fun tp!1130219 () Bool)

(declare-fun tp!1130223 () Bool)

(assert (=> b!3713730 (= e!2299685 (and tp!1130219 tp!1130223))))

(assert (= (and b!3712904 ((_ is ElementMatch!10849) (reg!11178 (regOne!22211 r!26326)))) b!3713727))

(assert (= (and b!3712904 ((_ is Concat!17120) (reg!11178 (regOne!22211 r!26326)))) b!3713728))

(assert (= (and b!3712904 ((_ is Star!10849) (reg!11178 (regOne!22211 r!26326)))) b!3713729))

(assert (= (and b!3712904 ((_ is Union!10849) (reg!11178 (regOne!22211 r!26326)))) b!3713730))

(declare-fun b!3713733 () Bool)

(declare-fun e!2299686 () Bool)

(declare-fun tp!1130226 () Bool)

(assert (=> b!3713733 (= e!2299686 tp!1130226)))

(declare-fun b!3713732 () Bool)

(declare-fun tp!1130227 () Bool)

(declare-fun tp!1130225 () Bool)

(assert (=> b!3713732 (= e!2299686 (and tp!1130227 tp!1130225))))

(declare-fun b!3713731 () Bool)

(assert (=> b!3713731 (= e!2299686 tp_is_empty!18713)))

(assert (=> b!3712905 (= tp!1129984 e!2299686)))

(declare-fun b!3713734 () Bool)

(declare-fun tp!1130224 () Bool)

(declare-fun tp!1130228 () Bool)

(assert (=> b!3713734 (= e!2299686 (and tp!1130224 tp!1130228))))

(assert (= (and b!3712905 ((_ is ElementMatch!10849) (regOne!22211 (regOne!22211 r!26326)))) b!3713731))

(assert (= (and b!3712905 ((_ is Concat!17120) (regOne!22211 (regOne!22211 r!26326)))) b!3713732))

(assert (= (and b!3712905 ((_ is Star!10849) (regOne!22211 (regOne!22211 r!26326)))) b!3713733))

(assert (= (and b!3712905 ((_ is Union!10849) (regOne!22211 (regOne!22211 r!26326)))) b!3713734))

(declare-fun b!3713737 () Bool)

(declare-fun e!2299687 () Bool)

(declare-fun tp!1130231 () Bool)

(assert (=> b!3713737 (= e!2299687 tp!1130231)))

(declare-fun b!3713736 () Bool)

(declare-fun tp!1130232 () Bool)

(declare-fun tp!1130230 () Bool)

(assert (=> b!3713736 (= e!2299687 (and tp!1130232 tp!1130230))))

(declare-fun b!3713735 () Bool)

(assert (=> b!3713735 (= e!2299687 tp_is_empty!18713)))

(assert (=> b!3712905 (= tp!1129988 e!2299687)))

(declare-fun b!3713738 () Bool)

(declare-fun tp!1130229 () Bool)

(declare-fun tp!1130233 () Bool)

(assert (=> b!3713738 (= e!2299687 (and tp!1130229 tp!1130233))))

(assert (= (and b!3712905 ((_ is ElementMatch!10849) (regTwo!22211 (regOne!22211 r!26326)))) b!3713735))

(assert (= (and b!3712905 ((_ is Concat!17120) (regTwo!22211 (regOne!22211 r!26326)))) b!3713736))

(assert (= (and b!3712905 ((_ is Star!10849) (regTwo!22211 (regOne!22211 r!26326)))) b!3713737))

(assert (= (and b!3712905 ((_ is Union!10849) (regTwo!22211 (regOne!22211 r!26326)))) b!3713738))

(declare-fun b!3713741 () Bool)

(declare-fun e!2299688 () Bool)

(declare-fun tp!1130236 () Bool)

(assert (=> b!3713741 (= e!2299688 tp!1130236)))

(declare-fun b!3713740 () Bool)

(declare-fun tp!1130237 () Bool)

(declare-fun tp!1130235 () Bool)

(assert (=> b!3713740 (= e!2299688 (and tp!1130237 tp!1130235))))

(declare-fun b!3713739 () Bool)

(assert (=> b!3713739 (= e!2299688 tp_is_empty!18713)))

(assert (=> b!3712891 (= tp!1129972 e!2299688)))

(declare-fun b!3713742 () Bool)

(declare-fun tp!1130234 () Bool)

(declare-fun tp!1130238 () Bool)

(assert (=> b!3713742 (= e!2299688 (and tp!1130234 tp!1130238))))

(assert (= (and b!3712891 ((_ is ElementMatch!10849) (regOne!22210 (regOne!22210 r!26326)))) b!3713739))

(assert (= (and b!3712891 ((_ is Concat!17120) (regOne!22210 (regOne!22210 r!26326)))) b!3713740))

(assert (= (and b!3712891 ((_ is Star!10849) (regOne!22210 (regOne!22210 r!26326)))) b!3713741))

(assert (= (and b!3712891 ((_ is Union!10849) (regOne!22210 (regOne!22210 r!26326)))) b!3713742))

(declare-fun b!3713745 () Bool)

(declare-fun e!2299689 () Bool)

(declare-fun tp!1130241 () Bool)

(assert (=> b!3713745 (= e!2299689 tp!1130241)))

(declare-fun b!3713744 () Bool)

(declare-fun tp!1130242 () Bool)

(declare-fun tp!1130240 () Bool)

(assert (=> b!3713744 (= e!2299689 (and tp!1130242 tp!1130240))))

(declare-fun b!3713743 () Bool)

(assert (=> b!3713743 (= e!2299689 tp_is_empty!18713)))

(assert (=> b!3712891 (= tp!1129970 e!2299689)))

(declare-fun b!3713746 () Bool)

(declare-fun tp!1130239 () Bool)

(declare-fun tp!1130243 () Bool)

(assert (=> b!3713746 (= e!2299689 (and tp!1130239 tp!1130243))))

(assert (= (and b!3712891 ((_ is ElementMatch!10849) (regTwo!22210 (regOne!22210 r!26326)))) b!3713743))

(assert (= (and b!3712891 ((_ is Concat!17120) (regTwo!22210 (regOne!22210 r!26326)))) b!3713744))

(assert (= (and b!3712891 ((_ is Star!10849) (regTwo!22210 (regOne!22210 r!26326)))) b!3713745))

(assert (= (and b!3712891 ((_ is Union!10849) (regTwo!22210 (regOne!22210 r!26326)))) b!3713746))

(declare-fun b!3713749 () Bool)

(declare-fun e!2299690 () Bool)

(declare-fun tp!1130246 () Bool)

(assert (=> b!3713749 (= e!2299690 tp!1130246)))

(declare-fun b!3713748 () Bool)

(declare-fun tp!1130247 () Bool)

(declare-fun tp!1130245 () Bool)

(assert (=> b!3713748 (= e!2299690 (and tp!1130247 tp!1130245))))

(declare-fun b!3713747 () Bool)

(assert (=> b!3713747 (= e!2299690 tp_is_empty!18713)))

(assert (=> b!3712900 (= tp!1129981 e!2299690)))

(declare-fun b!3713750 () Bool)

(declare-fun tp!1130244 () Bool)

(declare-fun tp!1130248 () Bool)

(assert (=> b!3713750 (= e!2299690 (and tp!1130244 tp!1130248))))

(assert (= (and b!3712900 ((_ is ElementMatch!10849) (reg!11178 (reg!11178 r!26326)))) b!3713747))

(assert (= (and b!3712900 ((_ is Concat!17120) (reg!11178 (reg!11178 r!26326)))) b!3713748))

(assert (= (and b!3712900 ((_ is Star!10849) (reg!11178 (reg!11178 r!26326)))) b!3713749))

(assert (= (and b!3712900 ((_ is Union!10849) (reg!11178 (reg!11178 r!26326)))) b!3713750))

(check-sat (not bm!268820) (not d!1087456) (not bm!268941) (not b!3713590) (not b!3713665) (not bm!268913) (not b!3713737) (not bm!268891) (not b!3713591) (not b!3713745) (not bm!268858) (not bm!268986) (not d!1087538) (not b!3713253) (not bm!268948) (not bm!268936) (not b!3713672) (not bm!268915) (not b!3713525) (not d!1087526) (not bm!268822) (not d!1087458) (not b!3713479) (not bm!268860) (not bm!268805) (not bm!268952) (not b!3713222) (not bm!268834) (not b!3712920) (not b!3713450) (not b!3713726) (not b!3713574) (not b!3713673) (not b!3713097) (not b!3713607) (not d!1087518) (not b!3713167) (not b!3713615) (not b!3713301) (not b!3713386) (not bm!268893) (not b!3713582) (not bm!268885) (not b!3713702) (not d!1087594) (not b!3713741) (not d!1087440) (not b!3713606) (not b!3713629) (not bm!268901) (not bm!268958) (not b!3713732) (not bm!268803) (not b!3713616) (not bm!268931) (not bm!268984) (not b!3713135) (not b!3713733) (not b!3713744) (not b!3713709) (not bm!268786) (not d!1087582) (not b!3713054) (not d!1087522) (not b!3713738) (not d!1087462) (not bm!268925) (not b!3713651) tp_is_empty!18713 (not b!3712983) (not b!3713740) (not b!3713128) (not b!3713682) (not b!3713637) (not bm!268870) (not b!3713734) (not b!3713748) (not bm!268940) (not b!3713086) (not bm!268810) (not bm!268966) (not b!3713576) (not bm!268965) (not b!3713718) (not b!3713645) (not b!3713636) (not b!3713027) (not bm!268990) (not b!3713666) (not b!3713692) (not bm!268954) (not bm!268960) (not b!3713432) (not bm!268788) (not b!3713728) (not b!3713749) (not b!3713716) (not b!3713730) (not bm!268923) (not b!3713729) (not b!3713643) (not bm!268929) (not b!3713221) (not bm!268832) (not b!3713701) (not b!3713507) (not b!3713622) (not bm!268863) (not b!3713539) (not b!3713316) (not b!3713077) (not bm!268992) (not bm!268830) (not d!1087508) (not bm!268844) (not b!3713599) (not b!3713694) (not bm!268970) (not b!3713724) (not d!1087434) (not b!3713652) (not d!1087418) (not bm!268946) (not b!3713414) (not d!1087506) (not bm!268938) (not b!3713700) (not b!3713661) (not b!3713690) (not b!3713660) (not bm!268991) (not d!1087488) (not d!1087468) (not b!3713260) (not b!3713584) (not bm!268980) (not b!3713644) (not bm!268861) (not b!3713681) (not b!3713675) (not bm!268839) (not b!3713746) (not b!3713538) (not b!3713583) (not b!3713367) (not bm!268795) (not d!1087578) (not b!3713600) (not bm!268939) (not d!1087424) (not bm!268842) (not bm!268884) (not b!3713725) (not b!3713341) (not b!3713653) (not b!3713148) (not bm!268794) (not b!3713486) (not b!3713288) (not b!3713708) (not bm!268847) (not d!1087450) (not b!3713742) (not b!3713717) (not b!3713608) (not b!3713184) (not b!3713624) (not bm!268829) (not bm!268868) (not b!3713575) (not bm!268972) (not d!1087570) (not bm!268883) (not b!3713103) (not bm!268828) (not b!3713598) (not d!1087576) (not b!3713664) (not bm!268841) (not bm!268849) (not b!3713635) (not b!3713680) (not bm!268917) (not d!1087514) (not b!3713592) (not bm!268812) (not b!3713736) (not b!3713347) (not b!3713659) (not b!3713614) (not bm!268978) (not b!3712999) (not bm!268918) (not b!3713710) (not b!3713750) (not b!3713623) (not bm!268903))
(check-sat)
