; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743750 () Bool)

(assert start!743750)

(declare-fun b!7863235 () Bool)

(declare-fun e!4646537 () Bool)

(declare-fun e!4646536 () Bool)

(assert (=> b!7863235 (= e!4646537 e!4646536)))

(declare-fun res!3125724 () Bool)

(assert (=> b!7863235 (=> (not res!3125724) (not e!4646536))))

(declare-datatypes ((C!42596 0))(
  ( (C!42597 (val!31760 Int)) )
))
(declare-datatypes ((List!73994 0))(
  ( (Nil!73870) (Cons!73870 (h!80318 C!42596) (t!388729 List!73994)) )
))
(declare-fun s!14237 () List!73994)

(declare-datatypes ((Regex!21135 0))(
  ( (ElementMatch!21135 (c!1444957 C!42596)) (Concat!29980 (regOne!42782 Regex!21135) (regTwo!42782 Regex!21135)) (EmptyExpr!21135) (Star!21135 (reg!21464 Regex!21135)) (EmptyLang!21135) (Union!21135 (regOne!42783 Regex!21135) (regTwo!42783 Regex!21135)) )
))
(declare-fun lt!2680542 () Regex!21135)

(declare-fun r2!6156 () Regex!21135)

(declare-fun lt!2680545 () Regex!21135)

(declare-fun r1!6218 () Regex!21135)

(declare-fun derivativeStep!6368 (Regex!21135 C!42596) Regex!21135)

(assert (=> b!7863235 (= res!3125724 (= (derivativeStep!6368 (Concat!29980 r2!6156 r1!6218) (h!80318 s!14237)) (Union!21135 lt!2680542 lt!2680545)))))

(assert (=> b!7863235 (= lt!2680545 (derivativeStep!6368 r1!6218 (h!80318 s!14237)))))

(assert (=> b!7863235 (= lt!2680542 (Concat!29980 (derivativeStep!6368 r2!6156 (h!80318 s!14237)) r1!6218))))

(declare-fun b!7863236 () Bool)

(declare-fun e!4646532 () Bool)

(assert (=> b!7863236 (= e!4646536 (not e!4646532))))

(declare-fun res!3125730 () Bool)

(assert (=> b!7863236 (=> (not res!3125730) (not e!4646532))))

(declare-fun validRegex!11545 (Regex!21135) Bool)

(assert (=> b!7863236 (= res!3125730 (validRegex!11545 lt!2680545))))

(declare-fun matchR!10571 (Regex!21135 List!73994) Bool)

(assert (=> b!7863236 (matchR!10571 (Union!21135 lt!2680545 lt!2680542) (t!388729 s!14237))))

(declare-datatypes ((Unit!168964 0))(
  ( (Unit!168965) )
))
(declare-fun lt!2680543 () Unit!168964)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!138 (Regex!21135 Regex!21135 List!73994) Unit!168964)

(assert (=> b!7863236 (= lt!2680543 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!138 lt!2680545 lt!2680542 (t!388729 s!14237)))))

(declare-fun e!4646531 () Bool)

(assert (=> b!7863236 e!4646531))

(declare-fun c!1444956 () Bool)

(declare-fun isEmpty!42372 (List!73994) Bool)

(assert (=> b!7863236 (= c!1444956 (isEmpty!42372 s!14237))))

(declare-fun lt!2680544 () Unit!168964)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!16 (Regex!21135 List!73994) Unit!168964)

(assert (=> b!7863236 (= lt!2680544 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!16 r1!6218 s!14237))))

(declare-fun b!7863237 () Bool)

(declare-fun e!4646535 () Bool)

(declare-fun tp!2330652 () Bool)

(declare-fun tp!2330646 () Bool)

(assert (=> b!7863237 (= e!4646535 (and tp!2330652 tp!2330646))))

(declare-fun b!7863238 () Bool)

(declare-fun res!3125729 () Bool)

(assert (=> b!7863238 (=> (not res!3125729) (not e!4646537))))

(declare-fun nullable!9405 (Regex!21135) Bool)

(assert (=> b!7863238 (= res!3125729 (nullable!9405 r2!6156))))

(declare-fun b!7863239 () Bool)

(declare-fun head!16083 (List!73994) C!42596)

(declare-fun tail!15626 (List!73994) List!73994)

(assert (=> b!7863239 (= e!4646531 (matchR!10571 (derivativeStep!6368 r1!6218 (head!16083 s!14237)) (tail!15626 s!14237)))))

(declare-fun b!7863240 () Bool)

(assert (=> b!7863240 (= e!4646532 (validRegex!11545 lt!2680542))))

(declare-fun b!7863241 () Bool)

(declare-fun e!4646534 () Bool)

(declare-fun tp_is_empty!52669 () Bool)

(assert (=> b!7863241 (= e!4646534 tp_is_empty!52669)))

(declare-fun b!7863242 () Bool)

(declare-fun res!3125728 () Bool)

(assert (=> b!7863242 (=> (not res!3125728) (not e!4646537))))

(get-info :version)

(assert (=> b!7863242 (= res!3125728 ((_ is Cons!73870) s!14237))))

(declare-fun b!7863243 () Bool)

(assert (=> b!7863243 (= e!4646535 tp_is_empty!52669)))

(declare-fun b!7863244 () Bool)

(declare-fun e!4646533 () Bool)

(declare-fun tp!2330649 () Bool)

(assert (=> b!7863244 (= e!4646533 (and tp_is_empty!52669 tp!2330649))))

(declare-fun b!7863245 () Bool)

(declare-fun res!3125726 () Bool)

(assert (=> b!7863245 (=> (not res!3125726) (not e!4646537))))

(assert (=> b!7863245 (= res!3125726 (matchR!10571 r1!6218 s!14237))))

(declare-fun res!3125727 () Bool)

(assert (=> start!743750 (=> (not res!3125727) (not e!4646537))))

(assert (=> start!743750 (= res!3125727 (validRegex!11545 r1!6218))))

(assert (=> start!743750 e!4646537))

(assert (=> start!743750 e!4646535))

(assert (=> start!743750 e!4646534))

(assert (=> start!743750 e!4646533))

(declare-fun b!7863246 () Bool)

(declare-fun tp!2330650 () Bool)

(declare-fun tp!2330643 () Bool)

(assert (=> b!7863246 (= e!4646534 (and tp!2330650 tp!2330643))))

(declare-fun b!7863247 () Bool)

(declare-fun res!3125725 () Bool)

(assert (=> b!7863247 (=> (not res!3125725) (not e!4646537))))

(assert (=> b!7863247 (= res!3125725 (validRegex!11545 r2!6156))))

(declare-fun b!7863248 () Bool)

(declare-fun tp!2330645 () Bool)

(declare-fun tp!2330647 () Bool)

(assert (=> b!7863248 (= e!4646535 (and tp!2330645 tp!2330647))))

(declare-fun b!7863249 () Bool)

(declare-fun tp!2330648 () Bool)

(assert (=> b!7863249 (= e!4646534 tp!2330648)))

(declare-fun b!7863250 () Bool)

(assert (=> b!7863250 (= e!4646531 (nullable!9405 r1!6218))))

(declare-fun b!7863251 () Bool)

(declare-fun tp!2330651 () Bool)

(assert (=> b!7863251 (= e!4646535 tp!2330651)))

(declare-fun b!7863252 () Bool)

(declare-fun tp!2330644 () Bool)

(declare-fun tp!2330642 () Bool)

(assert (=> b!7863252 (= e!4646534 (and tp!2330644 tp!2330642))))

(assert (= (and start!743750 res!3125727) b!7863247))

(assert (= (and b!7863247 res!3125725) b!7863245))

(assert (= (and b!7863245 res!3125726) b!7863238))

(assert (= (and b!7863238 res!3125729) b!7863242))

(assert (= (and b!7863242 res!3125728) b!7863235))

(assert (= (and b!7863235 res!3125724) b!7863236))

(assert (= (and b!7863236 c!1444956) b!7863250))

(assert (= (and b!7863236 (not c!1444956)) b!7863239))

(assert (= (and b!7863236 res!3125730) b!7863240))

(assert (= (and start!743750 ((_ is ElementMatch!21135) r1!6218)) b!7863243))

(assert (= (and start!743750 ((_ is Concat!29980) r1!6218)) b!7863237))

(assert (= (and start!743750 ((_ is Star!21135) r1!6218)) b!7863251))

(assert (= (and start!743750 ((_ is Union!21135) r1!6218)) b!7863248))

(assert (= (and start!743750 ((_ is ElementMatch!21135) r2!6156)) b!7863241))

(assert (= (and start!743750 ((_ is Concat!29980) r2!6156)) b!7863246))

(assert (= (and start!743750 ((_ is Star!21135) r2!6156)) b!7863249))

(assert (= (and start!743750 ((_ is Union!21135) r2!6156)) b!7863252))

(assert (= (and start!743750 ((_ is Cons!73870) s!14237)) b!7863244))

(declare-fun m!8263128 () Bool)

(assert (=> start!743750 m!8263128))

(declare-fun m!8263130 () Bool)

(assert (=> b!7863239 m!8263130))

(assert (=> b!7863239 m!8263130))

(declare-fun m!8263132 () Bool)

(assert (=> b!7863239 m!8263132))

(declare-fun m!8263134 () Bool)

(assert (=> b!7863239 m!8263134))

(assert (=> b!7863239 m!8263132))

(assert (=> b!7863239 m!8263134))

(declare-fun m!8263136 () Bool)

(assert (=> b!7863239 m!8263136))

(declare-fun m!8263138 () Bool)

(assert (=> b!7863236 m!8263138))

(declare-fun m!8263140 () Bool)

(assert (=> b!7863236 m!8263140))

(declare-fun m!8263142 () Bool)

(assert (=> b!7863236 m!8263142))

(declare-fun m!8263144 () Bool)

(assert (=> b!7863236 m!8263144))

(declare-fun m!8263146 () Bool)

(assert (=> b!7863236 m!8263146))

(declare-fun m!8263148 () Bool)

(assert (=> b!7863245 m!8263148))

(declare-fun m!8263150 () Bool)

(assert (=> b!7863247 m!8263150))

(declare-fun m!8263152 () Bool)

(assert (=> b!7863250 m!8263152))

(declare-fun m!8263154 () Bool)

(assert (=> b!7863238 m!8263154))

(declare-fun m!8263156 () Bool)

(assert (=> b!7863235 m!8263156))

(declare-fun m!8263158 () Bool)

(assert (=> b!7863235 m!8263158))

(declare-fun m!8263160 () Bool)

(assert (=> b!7863235 m!8263160))

(declare-fun m!8263162 () Bool)

(assert (=> b!7863240 m!8263162))

(check-sat (not b!7863238) (not b!7863237) (not b!7863250) (not b!7863252) (not b!7863249) (not b!7863245) (not b!7863244) (not b!7863246) (not b!7863235) (not b!7863248) (not start!743750) (not b!7863239) (not b!7863236) tp_is_empty!52669 (not b!7863247) (not b!7863251) (not b!7863240))
(check-sat)
(get-model)

(declare-fun d!2354622 () Bool)

(declare-fun nullableFct!3716 (Regex!21135) Bool)

(assert (=> d!2354622 (= (nullable!9405 r2!6156) (nullableFct!3716 r2!6156))))

(declare-fun bs!1967221 () Bool)

(assert (= bs!1967221 d!2354622))

(declare-fun m!8263164 () Bool)

(assert (=> bs!1967221 m!8263164))

(assert (=> b!7863238 d!2354622))

(declare-fun b!7863291 () Bool)

(declare-fun e!4646566 () Bool)

(declare-fun e!4646563 () Bool)

(assert (=> b!7863291 (= e!4646566 e!4646563)))

(declare-fun c!1444972 () Bool)

(assert (=> b!7863291 (= c!1444972 ((_ is Star!21135) r2!6156))))

(declare-fun bm!729094 () Bool)

(declare-fun call!729101 () Bool)

(declare-fun call!729099 () Bool)

(assert (=> bm!729094 (= call!729101 call!729099)))

(declare-fun b!7863292 () Bool)

(declare-fun e!4646564 () Bool)

(assert (=> b!7863292 (= e!4646563 e!4646564)))

(declare-fun res!3125743 () Bool)

(assert (=> b!7863292 (= res!3125743 (not (nullable!9405 (reg!21464 r2!6156))))))

(assert (=> b!7863292 (=> (not res!3125743) (not e!4646564))))

(declare-fun b!7863293 () Bool)

(declare-fun e!4646565 () Bool)

(declare-fun call!729100 () Bool)

(assert (=> b!7863293 (= e!4646565 call!729100)))

(declare-fun bm!729095 () Bool)

(declare-fun c!1444973 () Bool)

(assert (=> bm!729095 (= call!729100 (validRegex!11545 (ite c!1444973 (regTwo!42783 r2!6156) (regTwo!42782 r2!6156))))))

(declare-fun b!7863294 () Bool)

(declare-fun res!3125742 () Bool)

(declare-fun e!4646562 () Bool)

(assert (=> b!7863294 (=> res!3125742 e!4646562)))

(assert (=> b!7863294 (= res!3125742 (not ((_ is Concat!29980) r2!6156)))))

(declare-fun e!4646568 () Bool)

(assert (=> b!7863294 (= e!4646568 e!4646562)))

(declare-fun d!2354626 () Bool)

(declare-fun res!3125744 () Bool)

(assert (=> d!2354626 (=> res!3125744 e!4646566)))

(assert (=> d!2354626 (= res!3125744 ((_ is ElementMatch!21135) r2!6156))))

(assert (=> d!2354626 (= (validRegex!11545 r2!6156) e!4646566)))

(declare-fun b!7863295 () Bool)

(assert (=> b!7863295 (= e!4646563 e!4646568)))

(assert (=> b!7863295 (= c!1444973 ((_ is Union!21135) r2!6156))))

(declare-fun b!7863296 () Bool)

(declare-fun e!4646567 () Bool)

(assert (=> b!7863296 (= e!4646567 call!729100)))

(declare-fun b!7863297 () Bool)

(declare-fun res!3125745 () Bool)

(assert (=> b!7863297 (=> (not res!3125745) (not e!4646567))))

(assert (=> b!7863297 (= res!3125745 call!729101)))

(assert (=> b!7863297 (= e!4646568 e!4646567)))

(declare-fun b!7863298 () Bool)

(assert (=> b!7863298 (= e!4646564 call!729099)))

(declare-fun bm!729096 () Bool)

(assert (=> bm!729096 (= call!729099 (validRegex!11545 (ite c!1444972 (reg!21464 r2!6156) (ite c!1444973 (regOne!42783 r2!6156) (regOne!42782 r2!6156)))))))

(declare-fun b!7863299 () Bool)

(assert (=> b!7863299 (= e!4646562 e!4646565)))

(declare-fun res!3125741 () Bool)

(assert (=> b!7863299 (=> (not res!3125741) (not e!4646565))))

(assert (=> b!7863299 (= res!3125741 call!729101)))

(assert (= (and d!2354626 (not res!3125744)) b!7863291))

(assert (= (and b!7863291 c!1444972) b!7863292))

(assert (= (and b!7863291 (not c!1444972)) b!7863295))

(assert (= (and b!7863292 res!3125743) b!7863298))

(assert (= (and b!7863295 c!1444973) b!7863297))

(assert (= (and b!7863295 (not c!1444973)) b!7863294))

(assert (= (and b!7863297 res!3125745) b!7863296))

(assert (= (and b!7863294 (not res!3125742)) b!7863299))

(assert (= (and b!7863299 res!3125741) b!7863293))

(assert (= (or b!7863296 b!7863293) bm!729095))

(assert (= (or b!7863297 b!7863299) bm!729094))

(assert (= (or b!7863298 bm!729094) bm!729096))

(declare-fun m!8263166 () Bool)

(assert (=> b!7863292 m!8263166))

(declare-fun m!8263168 () Bool)

(assert (=> bm!729095 m!8263168))

(declare-fun m!8263170 () Bool)

(assert (=> bm!729096 m!8263170))

(assert (=> b!7863247 d!2354626))

(declare-fun e!4646617 () Regex!21135)

(declare-fun b!7863377 () Bool)

(assert (=> b!7863377 (= e!4646617 (ite (= (h!80318 s!14237) (c!1444957 (Concat!29980 r2!6156 r1!6218))) EmptyExpr!21135 EmptyLang!21135))))

(declare-fun b!7863378 () Bool)

(declare-fun c!1445007 () Bool)

(assert (=> b!7863378 (= c!1445007 (nullable!9405 (regOne!42782 (Concat!29980 r2!6156 r1!6218))))))

(declare-fun e!4646619 () Regex!21135)

(declare-fun e!4646615 () Regex!21135)

(assert (=> b!7863378 (= e!4646619 e!4646615)))

(declare-fun b!7863379 () Bool)

(declare-fun e!4646616 () Regex!21135)

(assert (=> b!7863379 (= e!4646616 e!4646617)))

(declare-fun c!1445008 () Bool)

(assert (=> b!7863379 (= c!1445008 ((_ is ElementMatch!21135) (Concat!29980 r2!6156 r1!6218)))))

(declare-fun b!7863380 () Bool)

(declare-fun call!729133 () Regex!21135)

(assert (=> b!7863380 (= e!4646615 (Union!21135 (Concat!29980 call!729133 (regTwo!42782 (Concat!29980 r2!6156 r1!6218))) EmptyLang!21135))))

(declare-fun c!1445009 () Bool)

(declare-fun c!1445006 () Bool)

(declare-fun call!729132 () Regex!21135)

(declare-fun bm!729126 () Bool)

(assert (=> bm!729126 (= call!729132 (derivativeStep!6368 (ite c!1445006 (regOne!42783 (Concat!29980 r2!6156 r1!6218)) (ite c!1445009 (reg!21464 (Concat!29980 r2!6156 r1!6218)) (regOne!42782 (Concat!29980 r2!6156 r1!6218)))) (h!80318 s!14237)))))

(declare-fun b!7863381 () Bool)

(declare-fun e!4646618 () Regex!21135)

(assert (=> b!7863381 (= e!4646618 e!4646619)))

(assert (=> b!7863381 (= c!1445009 ((_ is Star!21135) (Concat!29980 r2!6156 r1!6218)))))

(declare-fun bm!729127 () Bool)

(declare-fun call!729134 () Regex!21135)

(assert (=> bm!729127 (= call!729133 call!729134)))

(declare-fun bm!729128 () Bool)

(assert (=> bm!729128 (= call!729134 (derivativeStep!6368 (ite c!1445006 (regTwo!42783 (Concat!29980 r2!6156 r1!6218)) (ite c!1445007 (regTwo!42782 (Concat!29980 r2!6156 r1!6218)) (regOne!42782 (Concat!29980 r2!6156 r1!6218)))) (h!80318 s!14237)))))

(declare-fun bm!729129 () Bool)

(declare-fun call!729131 () Regex!21135)

(assert (=> bm!729129 (= call!729131 call!729132)))

(declare-fun b!7863382 () Bool)

(assert (=> b!7863382 (= c!1445006 ((_ is Union!21135) (Concat!29980 r2!6156 r1!6218)))))

(assert (=> b!7863382 (= e!4646617 e!4646618)))

(declare-fun d!2354628 () Bool)

(declare-fun lt!2680553 () Regex!21135)

(assert (=> d!2354628 (validRegex!11545 lt!2680553)))

(assert (=> d!2354628 (= lt!2680553 e!4646616)))

(declare-fun c!1445005 () Bool)

(assert (=> d!2354628 (= c!1445005 (or ((_ is EmptyExpr!21135) (Concat!29980 r2!6156 r1!6218)) ((_ is EmptyLang!21135) (Concat!29980 r2!6156 r1!6218))))))

(assert (=> d!2354628 (validRegex!11545 (Concat!29980 r2!6156 r1!6218))))

(assert (=> d!2354628 (= (derivativeStep!6368 (Concat!29980 r2!6156 r1!6218) (h!80318 s!14237)) lt!2680553)))

(declare-fun b!7863383 () Bool)

(assert (=> b!7863383 (= e!4646615 (Union!21135 (Concat!29980 call!729131 (regTwo!42782 (Concat!29980 r2!6156 r1!6218))) call!729133))))

(declare-fun b!7863384 () Bool)

(assert (=> b!7863384 (= e!4646619 (Concat!29980 call!729131 (Concat!29980 r2!6156 r1!6218)))))

(declare-fun b!7863385 () Bool)

(assert (=> b!7863385 (= e!4646616 EmptyLang!21135)))

(declare-fun b!7863386 () Bool)

(assert (=> b!7863386 (= e!4646618 (Union!21135 call!729132 call!729134))))

(assert (= (and d!2354628 c!1445005) b!7863385))

(assert (= (and d!2354628 (not c!1445005)) b!7863379))

(assert (= (and b!7863379 c!1445008) b!7863377))

(assert (= (and b!7863379 (not c!1445008)) b!7863382))

(assert (= (and b!7863382 c!1445006) b!7863386))

(assert (= (and b!7863382 (not c!1445006)) b!7863381))

(assert (= (and b!7863381 c!1445009) b!7863384))

(assert (= (and b!7863381 (not c!1445009)) b!7863378))

(assert (= (and b!7863378 c!1445007) b!7863383))

(assert (= (and b!7863378 (not c!1445007)) b!7863380))

(assert (= (or b!7863383 b!7863380) bm!729127))

(assert (= (or b!7863384 b!7863383) bm!729129))

(assert (= (or b!7863386 bm!729127) bm!729128))

(assert (= (or b!7863386 bm!729129) bm!729126))

(declare-fun m!8263206 () Bool)

(assert (=> b!7863378 m!8263206))

(declare-fun m!8263208 () Bool)

(assert (=> bm!729126 m!8263208))

(declare-fun m!8263210 () Bool)

(assert (=> bm!729128 m!8263210))

(declare-fun m!8263212 () Bool)

(assert (=> d!2354628 m!8263212))

(declare-fun m!8263214 () Bool)

(assert (=> d!2354628 m!8263214))

(assert (=> b!7863235 d!2354628))

(declare-fun b!7863387 () Bool)

(declare-fun e!4646622 () Regex!21135)

(assert (=> b!7863387 (= e!4646622 (ite (= (h!80318 s!14237) (c!1444957 r1!6218)) EmptyExpr!21135 EmptyLang!21135))))

(declare-fun b!7863388 () Bool)

(declare-fun c!1445012 () Bool)

(assert (=> b!7863388 (= c!1445012 (nullable!9405 (regOne!42782 r1!6218)))))

(declare-fun e!4646624 () Regex!21135)

(declare-fun e!4646620 () Regex!21135)

(assert (=> b!7863388 (= e!4646624 e!4646620)))

(declare-fun b!7863389 () Bool)

(declare-fun e!4646621 () Regex!21135)

(assert (=> b!7863389 (= e!4646621 e!4646622)))

(declare-fun c!1445013 () Bool)

(assert (=> b!7863389 (= c!1445013 ((_ is ElementMatch!21135) r1!6218))))

(declare-fun b!7863390 () Bool)

(declare-fun call!729137 () Regex!21135)

(assert (=> b!7863390 (= e!4646620 (Union!21135 (Concat!29980 call!729137 (regTwo!42782 r1!6218)) EmptyLang!21135))))

(declare-fun bm!729130 () Bool)

(declare-fun c!1445014 () Bool)

(declare-fun c!1445011 () Bool)

(declare-fun call!729136 () Regex!21135)

(assert (=> bm!729130 (= call!729136 (derivativeStep!6368 (ite c!1445011 (regOne!42783 r1!6218) (ite c!1445014 (reg!21464 r1!6218) (regOne!42782 r1!6218))) (h!80318 s!14237)))))

(declare-fun b!7863391 () Bool)

(declare-fun e!4646623 () Regex!21135)

(assert (=> b!7863391 (= e!4646623 e!4646624)))

(assert (=> b!7863391 (= c!1445014 ((_ is Star!21135) r1!6218))))

(declare-fun bm!729131 () Bool)

(declare-fun call!729138 () Regex!21135)

(assert (=> bm!729131 (= call!729137 call!729138)))

(declare-fun bm!729132 () Bool)

(assert (=> bm!729132 (= call!729138 (derivativeStep!6368 (ite c!1445011 (regTwo!42783 r1!6218) (ite c!1445012 (regTwo!42782 r1!6218) (regOne!42782 r1!6218))) (h!80318 s!14237)))))

(declare-fun bm!729133 () Bool)

(declare-fun call!729135 () Regex!21135)

(assert (=> bm!729133 (= call!729135 call!729136)))

(declare-fun b!7863392 () Bool)

(assert (=> b!7863392 (= c!1445011 ((_ is Union!21135) r1!6218))))

(assert (=> b!7863392 (= e!4646622 e!4646623)))

(declare-fun d!2354640 () Bool)

(declare-fun lt!2680554 () Regex!21135)

(assert (=> d!2354640 (validRegex!11545 lt!2680554)))

(assert (=> d!2354640 (= lt!2680554 e!4646621)))

(declare-fun c!1445010 () Bool)

(assert (=> d!2354640 (= c!1445010 (or ((_ is EmptyExpr!21135) r1!6218) ((_ is EmptyLang!21135) r1!6218)))))

(assert (=> d!2354640 (validRegex!11545 r1!6218)))

(assert (=> d!2354640 (= (derivativeStep!6368 r1!6218 (h!80318 s!14237)) lt!2680554)))

(declare-fun b!7863393 () Bool)

(assert (=> b!7863393 (= e!4646620 (Union!21135 (Concat!29980 call!729135 (regTwo!42782 r1!6218)) call!729137))))

(declare-fun b!7863394 () Bool)

(assert (=> b!7863394 (= e!4646624 (Concat!29980 call!729135 r1!6218))))

(declare-fun b!7863395 () Bool)

(assert (=> b!7863395 (= e!4646621 EmptyLang!21135)))

(declare-fun b!7863396 () Bool)

(assert (=> b!7863396 (= e!4646623 (Union!21135 call!729136 call!729138))))

(assert (= (and d!2354640 c!1445010) b!7863395))

(assert (= (and d!2354640 (not c!1445010)) b!7863389))

(assert (= (and b!7863389 c!1445013) b!7863387))

(assert (= (and b!7863389 (not c!1445013)) b!7863392))

(assert (= (and b!7863392 c!1445011) b!7863396))

(assert (= (and b!7863392 (not c!1445011)) b!7863391))

(assert (= (and b!7863391 c!1445014) b!7863394))

(assert (= (and b!7863391 (not c!1445014)) b!7863388))

(assert (= (and b!7863388 c!1445012) b!7863393))

(assert (= (and b!7863388 (not c!1445012)) b!7863390))

(assert (= (or b!7863393 b!7863390) bm!729131))

(assert (= (or b!7863394 b!7863393) bm!729133))

(assert (= (or b!7863396 bm!729131) bm!729132))

(assert (= (or b!7863396 bm!729133) bm!729130))

(declare-fun m!8263216 () Bool)

(assert (=> b!7863388 m!8263216))

(declare-fun m!8263218 () Bool)

(assert (=> bm!729130 m!8263218))

(declare-fun m!8263220 () Bool)

(assert (=> bm!729132 m!8263220))

(declare-fun m!8263222 () Bool)

(assert (=> d!2354640 m!8263222))

(assert (=> d!2354640 m!8263128))

(assert (=> b!7863235 d!2354640))

(declare-fun b!7863397 () Bool)

(declare-fun e!4646627 () Regex!21135)

(assert (=> b!7863397 (= e!4646627 (ite (= (h!80318 s!14237) (c!1444957 r2!6156)) EmptyExpr!21135 EmptyLang!21135))))

(declare-fun b!7863398 () Bool)

(declare-fun c!1445017 () Bool)

(assert (=> b!7863398 (= c!1445017 (nullable!9405 (regOne!42782 r2!6156)))))

(declare-fun e!4646629 () Regex!21135)

(declare-fun e!4646625 () Regex!21135)

(assert (=> b!7863398 (= e!4646629 e!4646625)))

(declare-fun b!7863399 () Bool)

(declare-fun e!4646626 () Regex!21135)

(assert (=> b!7863399 (= e!4646626 e!4646627)))

(declare-fun c!1445018 () Bool)

(assert (=> b!7863399 (= c!1445018 ((_ is ElementMatch!21135) r2!6156))))

(declare-fun b!7863400 () Bool)

(declare-fun call!729141 () Regex!21135)

(assert (=> b!7863400 (= e!4646625 (Union!21135 (Concat!29980 call!729141 (regTwo!42782 r2!6156)) EmptyLang!21135))))

(declare-fun bm!729134 () Bool)

(declare-fun c!1445016 () Bool)

(declare-fun call!729140 () Regex!21135)

(declare-fun c!1445019 () Bool)

(assert (=> bm!729134 (= call!729140 (derivativeStep!6368 (ite c!1445016 (regOne!42783 r2!6156) (ite c!1445019 (reg!21464 r2!6156) (regOne!42782 r2!6156))) (h!80318 s!14237)))))

(declare-fun b!7863401 () Bool)

(declare-fun e!4646628 () Regex!21135)

(assert (=> b!7863401 (= e!4646628 e!4646629)))

(assert (=> b!7863401 (= c!1445019 ((_ is Star!21135) r2!6156))))

(declare-fun bm!729135 () Bool)

(declare-fun call!729142 () Regex!21135)

(assert (=> bm!729135 (= call!729141 call!729142)))

(declare-fun bm!729136 () Bool)

(assert (=> bm!729136 (= call!729142 (derivativeStep!6368 (ite c!1445016 (regTwo!42783 r2!6156) (ite c!1445017 (regTwo!42782 r2!6156) (regOne!42782 r2!6156))) (h!80318 s!14237)))))

(declare-fun bm!729137 () Bool)

(declare-fun call!729139 () Regex!21135)

(assert (=> bm!729137 (= call!729139 call!729140)))

(declare-fun b!7863402 () Bool)

(assert (=> b!7863402 (= c!1445016 ((_ is Union!21135) r2!6156))))

(assert (=> b!7863402 (= e!4646627 e!4646628)))

(declare-fun d!2354642 () Bool)

(declare-fun lt!2680555 () Regex!21135)

(assert (=> d!2354642 (validRegex!11545 lt!2680555)))

(assert (=> d!2354642 (= lt!2680555 e!4646626)))

(declare-fun c!1445015 () Bool)

(assert (=> d!2354642 (= c!1445015 (or ((_ is EmptyExpr!21135) r2!6156) ((_ is EmptyLang!21135) r2!6156)))))

(assert (=> d!2354642 (validRegex!11545 r2!6156)))

(assert (=> d!2354642 (= (derivativeStep!6368 r2!6156 (h!80318 s!14237)) lt!2680555)))

(declare-fun b!7863403 () Bool)

(assert (=> b!7863403 (= e!4646625 (Union!21135 (Concat!29980 call!729139 (regTwo!42782 r2!6156)) call!729141))))

(declare-fun b!7863404 () Bool)

(assert (=> b!7863404 (= e!4646629 (Concat!29980 call!729139 r2!6156))))

(declare-fun b!7863405 () Bool)

(assert (=> b!7863405 (= e!4646626 EmptyLang!21135)))

(declare-fun b!7863406 () Bool)

(assert (=> b!7863406 (= e!4646628 (Union!21135 call!729140 call!729142))))

(assert (= (and d!2354642 c!1445015) b!7863405))

(assert (= (and d!2354642 (not c!1445015)) b!7863399))

(assert (= (and b!7863399 c!1445018) b!7863397))

(assert (= (and b!7863399 (not c!1445018)) b!7863402))

(assert (= (and b!7863402 c!1445016) b!7863406))

(assert (= (and b!7863402 (not c!1445016)) b!7863401))

(assert (= (and b!7863401 c!1445019) b!7863404))

(assert (= (and b!7863401 (not c!1445019)) b!7863398))

(assert (= (and b!7863398 c!1445017) b!7863403))

(assert (= (and b!7863398 (not c!1445017)) b!7863400))

(assert (= (or b!7863403 b!7863400) bm!729135))

(assert (= (or b!7863404 b!7863403) bm!729137))

(assert (= (or b!7863406 bm!729135) bm!729136))

(assert (= (or b!7863406 bm!729137) bm!729134))

(declare-fun m!8263224 () Bool)

(assert (=> b!7863398 m!8263224))

(declare-fun m!8263226 () Bool)

(assert (=> bm!729134 m!8263226))

(declare-fun m!8263228 () Bool)

(assert (=> bm!729136 m!8263228))

(declare-fun m!8263230 () Bool)

(assert (=> d!2354642 m!8263230))

(assert (=> d!2354642 m!8263150))

(assert (=> b!7863235 d!2354642))

(declare-fun b!7863407 () Bool)

(declare-fun e!4646634 () Bool)

(declare-fun e!4646631 () Bool)

(assert (=> b!7863407 (= e!4646634 e!4646631)))

(declare-fun c!1445020 () Bool)

(assert (=> b!7863407 (= c!1445020 ((_ is Star!21135) lt!2680545))))

(declare-fun bm!729138 () Bool)

(declare-fun call!729145 () Bool)

(declare-fun call!729143 () Bool)

(assert (=> bm!729138 (= call!729145 call!729143)))

(declare-fun b!7863408 () Bool)

(declare-fun e!4646632 () Bool)

(assert (=> b!7863408 (= e!4646631 e!4646632)))

(declare-fun res!3125763 () Bool)

(assert (=> b!7863408 (= res!3125763 (not (nullable!9405 (reg!21464 lt!2680545))))))

(assert (=> b!7863408 (=> (not res!3125763) (not e!4646632))))

(declare-fun b!7863409 () Bool)

(declare-fun e!4646633 () Bool)

(declare-fun call!729144 () Bool)

(assert (=> b!7863409 (= e!4646633 call!729144)))

(declare-fun bm!729139 () Bool)

(declare-fun c!1445021 () Bool)

(assert (=> bm!729139 (= call!729144 (validRegex!11545 (ite c!1445021 (regTwo!42783 lt!2680545) (regTwo!42782 lt!2680545))))))

(declare-fun b!7863410 () Bool)

(declare-fun res!3125762 () Bool)

(declare-fun e!4646630 () Bool)

(assert (=> b!7863410 (=> res!3125762 e!4646630)))

(assert (=> b!7863410 (= res!3125762 (not ((_ is Concat!29980) lt!2680545)))))

(declare-fun e!4646636 () Bool)

(assert (=> b!7863410 (= e!4646636 e!4646630)))

(declare-fun d!2354644 () Bool)

(declare-fun res!3125764 () Bool)

(assert (=> d!2354644 (=> res!3125764 e!4646634)))

(assert (=> d!2354644 (= res!3125764 ((_ is ElementMatch!21135) lt!2680545))))

(assert (=> d!2354644 (= (validRegex!11545 lt!2680545) e!4646634)))

(declare-fun b!7863411 () Bool)

(assert (=> b!7863411 (= e!4646631 e!4646636)))

(assert (=> b!7863411 (= c!1445021 ((_ is Union!21135) lt!2680545))))

(declare-fun b!7863412 () Bool)

(declare-fun e!4646635 () Bool)

(assert (=> b!7863412 (= e!4646635 call!729144)))

(declare-fun b!7863413 () Bool)

(declare-fun res!3125765 () Bool)

(assert (=> b!7863413 (=> (not res!3125765) (not e!4646635))))

(assert (=> b!7863413 (= res!3125765 call!729145)))

(assert (=> b!7863413 (= e!4646636 e!4646635)))

(declare-fun b!7863414 () Bool)

(assert (=> b!7863414 (= e!4646632 call!729143)))

(declare-fun bm!729140 () Bool)

(assert (=> bm!729140 (= call!729143 (validRegex!11545 (ite c!1445020 (reg!21464 lt!2680545) (ite c!1445021 (regOne!42783 lt!2680545) (regOne!42782 lt!2680545)))))))

(declare-fun b!7863415 () Bool)

(assert (=> b!7863415 (= e!4646630 e!4646633)))

(declare-fun res!3125761 () Bool)

(assert (=> b!7863415 (=> (not res!3125761) (not e!4646633))))

(assert (=> b!7863415 (= res!3125761 call!729145)))

(assert (= (and d!2354644 (not res!3125764)) b!7863407))

(assert (= (and b!7863407 c!1445020) b!7863408))

(assert (= (and b!7863407 (not c!1445020)) b!7863411))

(assert (= (and b!7863408 res!3125763) b!7863414))

(assert (= (and b!7863411 c!1445021) b!7863413))

(assert (= (and b!7863411 (not c!1445021)) b!7863410))

(assert (= (and b!7863413 res!3125765) b!7863412))

(assert (= (and b!7863410 (not res!3125762)) b!7863415))

(assert (= (and b!7863415 res!3125761) b!7863409))

(assert (= (or b!7863412 b!7863409) bm!729139))

(assert (= (or b!7863413 b!7863415) bm!729138))

(assert (= (or b!7863414 bm!729138) bm!729140))

(declare-fun m!8263232 () Bool)

(assert (=> b!7863408 m!8263232))

(declare-fun m!8263234 () Bool)

(assert (=> bm!729139 m!8263234))

(declare-fun m!8263236 () Bool)

(assert (=> bm!729140 m!8263236))

(assert (=> b!7863236 d!2354644))

(declare-fun d!2354646 () Bool)

(assert (=> d!2354646 (matchR!10571 (Union!21135 lt!2680545 lt!2680542) (t!388729 s!14237))))

(declare-fun lt!2680560 () Unit!168964)

(declare-fun choose!59675 (Regex!21135 Regex!21135 List!73994) Unit!168964)

(assert (=> d!2354646 (= lt!2680560 (choose!59675 lt!2680545 lt!2680542 (t!388729 s!14237)))))

(declare-fun e!4646653 () Bool)

(assert (=> d!2354646 e!4646653))

(declare-fun res!3125784 () Bool)

(assert (=> d!2354646 (=> (not res!3125784) (not e!4646653))))

(assert (=> d!2354646 (= res!3125784 (validRegex!11545 lt!2680545))))

(assert (=> d!2354646 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!138 lt!2680545 lt!2680542 (t!388729 s!14237)) lt!2680560)))

(declare-fun b!7863446 () Bool)

(assert (=> b!7863446 (= e!4646653 (validRegex!11545 lt!2680542))))

(assert (= (and d!2354646 res!3125784) b!7863446))

(assert (=> d!2354646 m!8263146))

(declare-fun m!8263238 () Bool)

(assert (=> d!2354646 m!8263238))

(assert (=> d!2354646 m!8263144))

(assert (=> b!7863446 m!8263162))

(assert (=> b!7863236 d!2354646))

(declare-fun b!7863543 () Bool)

(declare-fun e!4646712 () Bool)

(assert (=> b!7863543 (= e!4646712 (matchR!10571 (derivativeStep!6368 (Union!21135 lt!2680545 lt!2680542) (head!16083 (t!388729 s!14237))) (tail!15626 (t!388729 s!14237))))))

(declare-fun b!7863544 () Bool)

(declare-fun res!3125835 () Bool)

(declare-fun e!4646717 () Bool)

(assert (=> b!7863544 (=> res!3125835 e!4646717)))

(declare-fun e!4646714 () Bool)

(assert (=> b!7863544 (= res!3125835 e!4646714)))

(declare-fun res!3125837 () Bool)

(assert (=> b!7863544 (=> (not res!3125837) (not e!4646714))))

(declare-fun lt!2680569 () Bool)

(assert (=> b!7863544 (= res!3125837 lt!2680569)))

(declare-fun b!7863545 () Bool)

(declare-fun e!4646716 () Bool)

(declare-fun call!729165 () Bool)

(assert (=> b!7863545 (= e!4646716 (= lt!2680569 call!729165))))

(declare-fun b!7863546 () Bool)

(declare-fun res!3125836 () Bool)

(declare-fun e!4646715 () Bool)

(assert (=> b!7863546 (=> res!3125836 e!4646715)))

(assert (=> b!7863546 (= res!3125836 (not (isEmpty!42372 (tail!15626 (t!388729 s!14237)))))))

(declare-fun b!7863547 () Bool)

(declare-fun e!4646711 () Bool)

(assert (=> b!7863547 (= e!4646716 e!4646711)))

(declare-fun c!1445051 () Bool)

(assert (=> b!7863547 (= c!1445051 ((_ is EmptyLang!21135) (Union!21135 lt!2680545 lt!2680542)))))

(declare-fun b!7863548 () Bool)

(declare-fun res!3125840 () Bool)

(assert (=> b!7863548 (=> (not res!3125840) (not e!4646714))))

(assert (=> b!7863548 (= res!3125840 (isEmpty!42372 (tail!15626 (t!388729 s!14237))))))

(declare-fun bm!729160 () Bool)

(assert (=> bm!729160 (= call!729165 (isEmpty!42372 (t!388729 s!14237)))))

(declare-fun b!7863550 () Bool)

(declare-fun e!4646713 () Bool)

(assert (=> b!7863550 (= e!4646713 e!4646715)))

(declare-fun res!3125839 () Bool)

(assert (=> b!7863550 (=> res!3125839 e!4646715)))

(assert (=> b!7863550 (= res!3125839 call!729165)))

(declare-fun b!7863551 () Bool)

(assert (=> b!7863551 (= e!4646711 (not lt!2680569))))

(declare-fun b!7863552 () Bool)

(assert (=> b!7863552 (= e!4646715 (not (= (head!16083 (t!388729 s!14237)) (c!1444957 (Union!21135 lt!2680545 lt!2680542)))))))

(declare-fun b!7863553 () Bool)

(declare-fun res!3125842 () Bool)

(assert (=> b!7863553 (=> res!3125842 e!4646717)))

(assert (=> b!7863553 (= res!3125842 (not ((_ is ElementMatch!21135) (Union!21135 lt!2680545 lt!2680542))))))

(assert (=> b!7863553 (= e!4646711 e!4646717)))

(declare-fun b!7863554 () Bool)

(assert (=> b!7863554 (= e!4646712 (nullable!9405 (Union!21135 lt!2680545 lt!2680542)))))

(declare-fun b!7863555 () Bool)

(assert (=> b!7863555 (= e!4646717 e!4646713)))

(declare-fun res!3125838 () Bool)

(assert (=> b!7863555 (=> (not res!3125838) (not e!4646713))))

(assert (=> b!7863555 (= res!3125838 (not lt!2680569))))

(declare-fun b!7863556 () Bool)

(declare-fun res!3125841 () Bool)

(assert (=> b!7863556 (=> (not res!3125841) (not e!4646714))))

(assert (=> b!7863556 (= res!3125841 (not call!729165))))

(declare-fun d!2354648 () Bool)

(assert (=> d!2354648 e!4646716))

(declare-fun c!1445052 () Bool)

(assert (=> d!2354648 (= c!1445052 ((_ is EmptyExpr!21135) (Union!21135 lt!2680545 lt!2680542)))))

(assert (=> d!2354648 (= lt!2680569 e!4646712)))

(declare-fun c!1445053 () Bool)

(assert (=> d!2354648 (= c!1445053 (isEmpty!42372 (t!388729 s!14237)))))

(assert (=> d!2354648 (validRegex!11545 (Union!21135 lt!2680545 lt!2680542))))

(assert (=> d!2354648 (= (matchR!10571 (Union!21135 lt!2680545 lt!2680542) (t!388729 s!14237)) lt!2680569)))

(declare-fun b!7863549 () Bool)

(assert (=> b!7863549 (= e!4646714 (= (head!16083 (t!388729 s!14237)) (c!1444957 (Union!21135 lt!2680545 lt!2680542))))))

(assert (= (and d!2354648 c!1445053) b!7863554))

(assert (= (and d!2354648 (not c!1445053)) b!7863543))

(assert (= (and d!2354648 c!1445052) b!7863545))

(assert (= (and d!2354648 (not c!1445052)) b!7863547))

(assert (= (and b!7863547 c!1445051) b!7863551))

(assert (= (and b!7863547 (not c!1445051)) b!7863553))

(assert (= (and b!7863553 (not res!3125842)) b!7863544))

(assert (= (and b!7863544 res!3125837) b!7863556))

(assert (= (and b!7863556 res!3125841) b!7863548))

(assert (= (and b!7863548 res!3125840) b!7863549))

(assert (= (and b!7863544 (not res!3125835)) b!7863555))

(assert (= (and b!7863555 res!3125838) b!7863550))

(assert (= (and b!7863550 (not res!3125839)) b!7863546))

(assert (= (and b!7863546 (not res!3125836)) b!7863552))

(assert (= (or b!7863545 b!7863550 b!7863556) bm!729160))

(declare-fun m!8263284 () Bool)

(assert (=> b!7863546 m!8263284))

(assert (=> b!7863546 m!8263284))

(declare-fun m!8263286 () Bool)

(assert (=> b!7863546 m!8263286))

(declare-fun m!8263288 () Bool)

(assert (=> b!7863543 m!8263288))

(assert (=> b!7863543 m!8263288))

(declare-fun m!8263290 () Bool)

(assert (=> b!7863543 m!8263290))

(assert (=> b!7863543 m!8263284))

(assert (=> b!7863543 m!8263290))

(assert (=> b!7863543 m!8263284))

(declare-fun m!8263294 () Bool)

(assert (=> b!7863543 m!8263294))

(declare-fun m!8263296 () Bool)

(assert (=> bm!729160 m!8263296))

(assert (=> d!2354648 m!8263296))

(declare-fun m!8263298 () Bool)

(assert (=> d!2354648 m!8263298))

(assert (=> b!7863549 m!8263288))

(assert (=> b!7863552 m!8263288))

(declare-fun m!8263300 () Bool)

(assert (=> b!7863554 m!8263300))

(assert (=> b!7863548 m!8263284))

(assert (=> b!7863548 m!8263284))

(assert (=> b!7863548 m!8263286))

(assert (=> b!7863236 d!2354648))

(declare-fun d!2354674 () Bool)

(assert (=> d!2354674 (= (isEmpty!42372 s!14237) ((_ is Nil!73870) s!14237))))

(assert (=> b!7863236 d!2354674))

(declare-fun d!2354676 () Bool)

(declare-fun e!4646745 () Bool)

(assert (=> d!2354676 e!4646745))

(declare-fun c!1445062 () Bool)

(assert (=> d!2354676 (= c!1445062 (isEmpty!42372 s!14237))))

(declare-fun lt!2680576 () Unit!168964)

(declare-fun choose!59676 (Regex!21135 List!73994) Unit!168964)

(assert (=> d!2354676 (= lt!2680576 (choose!59676 r1!6218 s!14237))))

(assert (=> d!2354676 (validRegex!11545 r1!6218)))

(assert (=> d!2354676 (= (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!16 r1!6218 s!14237) lt!2680576)))

(declare-fun b!7863636 () Bool)

(assert (=> b!7863636 (= e!4646745 (nullable!9405 r1!6218))))

(declare-fun b!7863637 () Bool)

(assert (=> b!7863637 (= e!4646745 (matchR!10571 (derivativeStep!6368 r1!6218 (head!16083 s!14237)) (tail!15626 s!14237)))))

(assert (= (and d!2354676 c!1445062) b!7863636))

(assert (= (and d!2354676 (not c!1445062)) b!7863637))

(assert (=> d!2354676 m!8263142))

(declare-fun m!8263318 () Bool)

(assert (=> d!2354676 m!8263318))

(assert (=> d!2354676 m!8263128))

(assert (=> b!7863636 m!8263152))

(assert (=> b!7863637 m!8263130))

(assert (=> b!7863637 m!8263130))

(assert (=> b!7863637 m!8263132))

(assert (=> b!7863637 m!8263134))

(assert (=> b!7863637 m!8263132))

(assert (=> b!7863637 m!8263134))

(assert (=> b!7863637 m!8263136))

(assert (=> b!7863236 d!2354676))

(declare-fun b!7863638 () Bool)

(declare-fun e!4646750 () Bool)

(declare-fun e!4646747 () Bool)

(assert (=> b!7863638 (= e!4646750 e!4646747)))

(declare-fun c!1445063 () Bool)

(assert (=> b!7863638 (= c!1445063 ((_ is Star!21135) r1!6218))))

(declare-fun bm!729162 () Bool)

(declare-fun call!729169 () Bool)

(declare-fun call!729167 () Bool)

(assert (=> bm!729162 (= call!729169 call!729167)))

(declare-fun b!7863639 () Bool)

(declare-fun e!4646748 () Bool)

(assert (=> b!7863639 (= e!4646747 e!4646748)))

(declare-fun res!3125853 () Bool)

(assert (=> b!7863639 (= res!3125853 (not (nullable!9405 (reg!21464 r1!6218))))))

(assert (=> b!7863639 (=> (not res!3125853) (not e!4646748))))

(declare-fun b!7863640 () Bool)

(declare-fun e!4646749 () Bool)

(declare-fun call!729168 () Bool)

(assert (=> b!7863640 (= e!4646749 call!729168)))

(declare-fun bm!729163 () Bool)

(declare-fun c!1445064 () Bool)

(assert (=> bm!729163 (= call!729168 (validRegex!11545 (ite c!1445064 (regTwo!42783 r1!6218) (regTwo!42782 r1!6218))))))

(declare-fun b!7863641 () Bool)

(declare-fun res!3125852 () Bool)

(declare-fun e!4646746 () Bool)

(assert (=> b!7863641 (=> res!3125852 e!4646746)))

(assert (=> b!7863641 (= res!3125852 (not ((_ is Concat!29980) r1!6218)))))

(declare-fun e!4646752 () Bool)

(assert (=> b!7863641 (= e!4646752 e!4646746)))

(declare-fun d!2354678 () Bool)

(declare-fun res!3125854 () Bool)

(assert (=> d!2354678 (=> res!3125854 e!4646750)))

(assert (=> d!2354678 (= res!3125854 ((_ is ElementMatch!21135) r1!6218))))

(assert (=> d!2354678 (= (validRegex!11545 r1!6218) e!4646750)))

(declare-fun b!7863642 () Bool)

(assert (=> b!7863642 (= e!4646747 e!4646752)))

(assert (=> b!7863642 (= c!1445064 ((_ is Union!21135) r1!6218))))

(declare-fun b!7863643 () Bool)

(declare-fun e!4646751 () Bool)

(assert (=> b!7863643 (= e!4646751 call!729168)))

(declare-fun b!7863644 () Bool)

(declare-fun res!3125855 () Bool)

(assert (=> b!7863644 (=> (not res!3125855) (not e!4646751))))

(assert (=> b!7863644 (= res!3125855 call!729169)))

(assert (=> b!7863644 (= e!4646752 e!4646751)))

(declare-fun b!7863645 () Bool)

(assert (=> b!7863645 (= e!4646748 call!729167)))

(declare-fun bm!729164 () Bool)

(assert (=> bm!729164 (= call!729167 (validRegex!11545 (ite c!1445063 (reg!21464 r1!6218) (ite c!1445064 (regOne!42783 r1!6218) (regOne!42782 r1!6218)))))))

(declare-fun b!7863646 () Bool)

(assert (=> b!7863646 (= e!4646746 e!4646749)))

(declare-fun res!3125851 () Bool)

(assert (=> b!7863646 (=> (not res!3125851) (not e!4646749))))

(assert (=> b!7863646 (= res!3125851 call!729169)))

(assert (= (and d!2354678 (not res!3125854)) b!7863638))

(assert (= (and b!7863638 c!1445063) b!7863639))

(assert (= (and b!7863638 (not c!1445063)) b!7863642))

(assert (= (and b!7863639 res!3125853) b!7863645))

(assert (= (and b!7863642 c!1445064) b!7863644))

(assert (= (and b!7863642 (not c!1445064)) b!7863641))

(assert (= (and b!7863644 res!3125855) b!7863643))

(assert (= (and b!7863641 (not res!3125852)) b!7863646))

(assert (= (and b!7863646 res!3125851) b!7863640))

(assert (= (or b!7863643 b!7863640) bm!729163))

(assert (= (or b!7863644 b!7863646) bm!729162))

(assert (= (or b!7863645 bm!729162) bm!729164))

(declare-fun m!8263320 () Bool)

(assert (=> b!7863639 m!8263320))

(declare-fun m!8263322 () Bool)

(assert (=> bm!729163 m!8263322))

(declare-fun m!8263324 () Bool)

(assert (=> bm!729164 m!8263324))

(assert (=> start!743750 d!2354678))

(declare-fun d!2354680 () Bool)

(assert (=> d!2354680 (= (nullable!9405 r1!6218) (nullableFct!3716 r1!6218))))

(declare-fun bs!1967224 () Bool)

(assert (= bs!1967224 d!2354680))

(declare-fun m!8263326 () Bool)

(assert (=> bs!1967224 m!8263326))

(assert (=> b!7863250 d!2354680))

(declare-fun b!7863647 () Bool)

(declare-fun e!4646754 () Bool)

(assert (=> b!7863647 (= e!4646754 (matchR!10571 (derivativeStep!6368 (derivativeStep!6368 r1!6218 (head!16083 s!14237)) (head!16083 (tail!15626 s!14237))) (tail!15626 (tail!15626 s!14237))))))

(declare-fun b!7863648 () Bool)

(declare-fun res!3125856 () Bool)

(declare-fun e!4646759 () Bool)

(assert (=> b!7863648 (=> res!3125856 e!4646759)))

(declare-fun e!4646756 () Bool)

(assert (=> b!7863648 (= res!3125856 e!4646756)))

(declare-fun res!3125858 () Bool)

(assert (=> b!7863648 (=> (not res!3125858) (not e!4646756))))

(declare-fun lt!2680577 () Bool)

(assert (=> b!7863648 (= res!3125858 lt!2680577)))

(declare-fun b!7863649 () Bool)

(declare-fun e!4646758 () Bool)

(declare-fun call!729170 () Bool)

(assert (=> b!7863649 (= e!4646758 (= lt!2680577 call!729170))))

(declare-fun b!7863650 () Bool)

(declare-fun res!3125857 () Bool)

(declare-fun e!4646757 () Bool)

(assert (=> b!7863650 (=> res!3125857 e!4646757)))

(assert (=> b!7863650 (= res!3125857 (not (isEmpty!42372 (tail!15626 (tail!15626 s!14237)))))))

(declare-fun b!7863651 () Bool)

(declare-fun e!4646753 () Bool)

(assert (=> b!7863651 (= e!4646758 e!4646753)))

(declare-fun c!1445065 () Bool)

(assert (=> b!7863651 (= c!1445065 ((_ is EmptyLang!21135) (derivativeStep!6368 r1!6218 (head!16083 s!14237))))))

(declare-fun b!7863652 () Bool)

(declare-fun res!3125861 () Bool)

(assert (=> b!7863652 (=> (not res!3125861) (not e!4646756))))

(assert (=> b!7863652 (= res!3125861 (isEmpty!42372 (tail!15626 (tail!15626 s!14237))))))

(declare-fun bm!729165 () Bool)

(assert (=> bm!729165 (= call!729170 (isEmpty!42372 (tail!15626 s!14237)))))

(declare-fun b!7863654 () Bool)

(declare-fun e!4646755 () Bool)

(assert (=> b!7863654 (= e!4646755 e!4646757)))

(declare-fun res!3125860 () Bool)

(assert (=> b!7863654 (=> res!3125860 e!4646757)))

(assert (=> b!7863654 (= res!3125860 call!729170)))

(declare-fun b!7863655 () Bool)

(assert (=> b!7863655 (= e!4646753 (not lt!2680577))))

(declare-fun b!7863656 () Bool)

(assert (=> b!7863656 (= e!4646757 (not (= (head!16083 (tail!15626 s!14237)) (c!1444957 (derivativeStep!6368 r1!6218 (head!16083 s!14237))))))))

(declare-fun b!7863657 () Bool)

(declare-fun res!3125863 () Bool)

(assert (=> b!7863657 (=> res!3125863 e!4646759)))

(assert (=> b!7863657 (= res!3125863 (not ((_ is ElementMatch!21135) (derivativeStep!6368 r1!6218 (head!16083 s!14237)))))))

(assert (=> b!7863657 (= e!4646753 e!4646759)))

(declare-fun b!7863658 () Bool)

(assert (=> b!7863658 (= e!4646754 (nullable!9405 (derivativeStep!6368 r1!6218 (head!16083 s!14237))))))

(declare-fun b!7863659 () Bool)

(assert (=> b!7863659 (= e!4646759 e!4646755)))

(declare-fun res!3125859 () Bool)

(assert (=> b!7863659 (=> (not res!3125859) (not e!4646755))))

(assert (=> b!7863659 (= res!3125859 (not lt!2680577))))

(declare-fun b!7863660 () Bool)

(declare-fun res!3125862 () Bool)

(assert (=> b!7863660 (=> (not res!3125862) (not e!4646756))))

(assert (=> b!7863660 (= res!3125862 (not call!729170))))

(declare-fun d!2354682 () Bool)

(assert (=> d!2354682 e!4646758))

(declare-fun c!1445066 () Bool)

(assert (=> d!2354682 (= c!1445066 ((_ is EmptyExpr!21135) (derivativeStep!6368 r1!6218 (head!16083 s!14237))))))

(assert (=> d!2354682 (= lt!2680577 e!4646754)))

(declare-fun c!1445067 () Bool)

(assert (=> d!2354682 (= c!1445067 (isEmpty!42372 (tail!15626 s!14237)))))

(assert (=> d!2354682 (validRegex!11545 (derivativeStep!6368 r1!6218 (head!16083 s!14237)))))

(assert (=> d!2354682 (= (matchR!10571 (derivativeStep!6368 r1!6218 (head!16083 s!14237)) (tail!15626 s!14237)) lt!2680577)))

(declare-fun b!7863653 () Bool)

(assert (=> b!7863653 (= e!4646756 (= (head!16083 (tail!15626 s!14237)) (c!1444957 (derivativeStep!6368 r1!6218 (head!16083 s!14237)))))))

(assert (= (and d!2354682 c!1445067) b!7863658))

(assert (= (and d!2354682 (not c!1445067)) b!7863647))

(assert (= (and d!2354682 c!1445066) b!7863649))

(assert (= (and d!2354682 (not c!1445066)) b!7863651))

(assert (= (and b!7863651 c!1445065) b!7863655))

(assert (= (and b!7863651 (not c!1445065)) b!7863657))

(assert (= (and b!7863657 (not res!3125863)) b!7863648))

(assert (= (and b!7863648 res!3125858) b!7863660))

(assert (= (and b!7863660 res!3125862) b!7863652))

(assert (= (and b!7863652 res!3125861) b!7863653))

(assert (= (and b!7863648 (not res!3125856)) b!7863659))

(assert (= (and b!7863659 res!3125859) b!7863654))

(assert (= (and b!7863654 (not res!3125860)) b!7863650))

(assert (= (and b!7863650 (not res!3125857)) b!7863656))

(assert (= (or b!7863649 b!7863654 b!7863660) bm!729165))

(assert (=> b!7863650 m!8263134))

(declare-fun m!8263328 () Bool)

(assert (=> b!7863650 m!8263328))

(assert (=> b!7863650 m!8263328))

(declare-fun m!8263330 () Bool)

(assert (=> b!7863650 m!8263330))

(assert (=> b!7863647 m!8263134))

(declare-fun m!8263332 () Bool)

(assert (=> b!7863647 m!8263332))

(assert (=> b!7863647 m!8263132))

(assert (=> b!7863647 m!8263332))

(declare-fun m!8263334 () Bool)

(assert (=> b!7863647 m!8263334))

(assert (=> b!7863647 m!8263134))

(assert (=> b!7863647 m!8263328))

(assert (=> b!7863647 m!8263334))

(assert (=> b!7863647 m!8263328))

(declare-fun m!8263336 () Bool)

(assert (=> b!7863647 m!8263336))

(assert (=> bm!729165 m!8263134))

(declare-fun m!8263338 () Bool)

(assert (=> bm!729165 m!8263338))

(assert (=> d!2354682 m!8263134))

(assert (=> d!2354682 m!8263338))

(assert (=> d!2354682 m!8263132))

(declare-fun m!8263340 () Bool)

(assert (=> d!2354682 m!8263340))

(assert (=> b!7863653 m!8263134))

(assert (=> b!7863653 m!8263332))

(assert (=> b!7863656 m!8263134))

(assert (=> b!7863656 m!8263332))

(assert (=> b!7863658 m!8263132))

(declare-fun m!8263342 () Bool)

(assert (=> b!7863658 m!8263342))

(assert (=> b!7863652 m!8263134))

(assert (=> b!7863652 m!8263328))

(assert (=> b!7863652 m!8263328))

(assert (=> b!7863652 m!8263330))

(assert (=> b!7863239 d!2354682))

(declare-fun b!7863661 () Bool)

(declare-fun e!4646762 () Regex!21135)

(assert (=> b!7863661 (= e!4646762 (ite (= (head!16083 s!14237) (c!1444957 r1!6218)) EmptyExpr!21135 EmptyLang!21135))))

(declare-fun b!7863662 () Bool)

(declare-fun c!1445070 () Bool)

(assert (=> b!7863662 (= c!1445070 (nullable!9405 (regOne!42782 r1!6218)))))

(declare-fun e!4646764 () Regex!21135)

(declare-fun e!4646760 () Regex!21135)

(assert (=> b!7863662 (= e!4646764 e!4646760)))

(declare-fun b!7863663 () Bool)

(declare-fun e!4646761 () Regex!21135)

(assert (=> b!7863663 (= e!4646761 e!4646762)))

(declare-fun c!1445071 () Bool)

(assert (=> b!7863663 (= c!1445071 ((_ is ElementMatch!21135) r1!6218))))

(declare-fun b!7863664 () Bool)

(declare-fun call!729173 () Regex!21135)

(assert (=> b!7863664 (= e!4646760 (Union!21135 (Concat!29980 call!729173 (regTwo!42782 r1!6218)) EmptyLang!21135))))

(declare-fun c!1445069 () Bool)

(declare-fun call!729172 () Regex!21135)

(declare-fun c!1445072 () Bool)

(declare-fun bm!729166 () Bool)

(assert (=> bm!729166 (= call!729172 (derivativeStep!6368 (ite c!1445069 (regOne!42783 r1!6218) (ite c!1445072 (reg!21464 r1!6218) (regOne!42782 r1!6218))) (head!16083 s!14237)))))

(declare-fun b!7863665 () Bool)

(declare-fun e!4646763 () Regex!21135)

(assert (=> b!7863665 (= e!4646763 e!4646764)))

(assert (=> b!7863665 (= c!1445072 ((_ is Star!21135) r1!6218))))

(declare-fun bm!729167 () Bool)

(declare-fun call!729174 () Regex!21135)

(assert (=> bm!729167 (= call!729173 call!729174)))

(declare-fun bm!729168 () Bool)

(assert (=> bm!729168 (= call!729174 (derivativeStep!6368 (ite c!1445069 (regTwo!42783 r1!6218) (ite c!1445070 (regTwo!42782 r1!6218) (regOne!42782 r1!6218))) (head!16083 s!14237)))))

(declare-fun bm!729169 () Bool)

(declare-fun call!729171 () Regex!21135)

(assert (=> bm!729169 (= call!729171 call!729172)))

(declare-fun b!7863666 () Bool)

(assert (=> b!7863666 (= c!1445069 ((_ is Union!21135) r1!6218))))

(assert (=> b!7863666 (= e!4646762 e!4646763)))

(declare-fun d!2354684 () Bool)

(declare-fun lt!2680578 () Regex!21135)

(assert (=> d!2354684 (validRegex!11545 lt!2680578)))

(assert (=> d!2354684 (= lt!2680578 e!4646761)))

(declare-fun c!1445068 () Bool)

(assert (=> d!2354684 (= c!1445068 (or ((_ is EmptyExpr!21135) r1!6218) ((_ is EmptyLang!21135) r1!6218)))))

(assert (=> d!2354684 (validRegex!11545 r1!6218)))

(assert (=> d!2354684 (= (derivativeStep!6368 r1!6218 (head!16083 s!14237)) lt!2680578)))

(declare-fun b!7863667 () Bool)

(assert (=> b!7863667 (= e!4646760 (Union!21135 (Concat!29980 call!729171 (regTwo!42782 r1!6218)) call!729173))))

(declare-fun b!7863668 () Bool)

(assert (=> b!7863668 (= e!4646764 (Concat!29980 call!729171 r1!6218))))

(declare-fun b!7863669 () Bool)

(assert (=> b!7863669 (= e!4646761 EmptyLang!21135)))

(declare-fun b!7863670 () Bool)

(assert (=> b!7863670 (= e!4646763 (Union!21135 call!729172 call!729174))))

(assert (= (and d!2354684 c!1445068) b!7863669))

(assert (= (and d!2354684 (not c!1445068)) b!7863663))

(assert (= (and b!7863663 c!1445071) b!7863661))

(assert (= (and b!7863663 (not c!1445071)) b!7863666))

(assert (= (and b!7863666 c!1445069) b!7863670))

(assert (= (and b!7863666 (not c!1445069)) b!7863665))

(assert (= (and b!7863665 c!1445072) b!7863668))

(assert (= (and b!7863665 (not c!1445072)) b!7863662))

(assert (= (and b!7863662 c!1445070) b!7863667))

(assert (= (and b!7863662 (not c!1445070)) b!7863664))

(assert (= (or b!7863667 b!7863664) bm!729167))

(assert (= (or b!7863668 b!7863667) bm!729169))

(assert (= (or b!7863670 bm!729167) bm!729168))

(assert (= (or b!7863670 bm!729169) bm!729166))

(assert (=> b!7863662 m!8263216))

(assert (=> bm!729166 m!8263130))

(declare-fun m!8263344 () Bool)

(assert (=> bm!729166 m!8263344))

(assert (=> bm!729168 m!8263130))

(declare-fun m!8263346 () Bool)

(assert (=> bm!729168 m!8263346))

(declare-fun m!8263348 () Bool)

(assert (=> d!2354684 m!8263348))

(assert (=> d!2354684 m!8263128))

(assert (=> b!7863239 d!2354684))

(declare-fun d!2354686 () Bool)

(assert (=> d!2354686 (= (head!16083 s!14237) (h!80318 s!14237))))

(assert (=> b!7863239 d!2354686))

(declare-fun d!2354688 () Bool)

(assert (=> d!2354688 (= (tail!15626 s!14237) (t!388729 s!14237))))

(assert (=> b!7863239 d!2354688))

(declare-fun b!7863671 () Bool)

(declare-fun e!4646769 () Bool)

(declare-fun e!4646766 () Bool)

(assert (=> b!7863671 (= e!4646769 e!4646766)))

(declare-fun c!1445073 () Bool)

(assert (=> b!7863671 (= c!1445073 ((_ is Star!21135) lt!2680542))))

(declare-fun bm!729170 () Bool)

(declare-fun call!729177 () Bool)

(declare-fun call!729175 () Bool)

(assert (=> bm!729170 (= call!729177 call!729175)))

(declare-fun b!7863672 () Bool)

(declare-fun e!4646767 () Bool)

(assert (=> b!7863672 (= e!4646766 e!4646767)))

(declare-fun res!3125866 () Bool)

(assert (=> b!7863672 (= res!3125866 (not (nullable!9405 (reg!21464 lt!2680542))))))

(assert (=> b!7863672 (=> (not res!3125866) (not e!4646767))))

(declare-fun b!7863673 () Bool)

(declare-fun e!4646768 () Bool)

(declare-fun call!729176 () Bool)

(assert (=> b!7863673 (= e!4646768 call!729176)))

(declare-fun bm!729171 () Bool)

(declare-fun c!1445074 () Bool)

(assert (=> bm!729171 (= call!729176 (validRegex!11545 (ite c!1445074 (regTwo!42783 lt!2680542) (regTwo!42782 lt!2680542))))))

(declare-fun b!7863674 () Bool)

(declare-fun res!3125865 () Bool)

(declare-fun e!4646765 () Bool)

(assert (=> b!7863674 (=> res!3125865 e!4646765)))

(assert (=> b!7863674 (= res!3125865 (not ((_ is Concat!29980) lt!2680542)))))

(declare-fun e!4646771 () Bool)

(assert (=> b!7863674 (= e!4646771 e!4646765)))

(declare-fun d!2354690 () Bool)

(declare-fun res!3125867 () Bool)

(assert (=> d!2354690 (=> res!3125867 e!4646769)))

(assert (=> d!2354690 (= res!3125867 ((_ is ElementMatch!21135) lt!2680542))))

(assert (=> d!2354690 (= (validRegex!11545 lt!2680542) e!4646769)))

(declare-fun b!7863675 () Bool)

(assert (=> b!7863675 (= e!4646766 e!4646771)))

(assert (=> b!7863675 (= c!1445074 ((_ is Union!21135) lt!2680542))))

(declare-fun b!7863676 () Bool)

(declare-fun e!4646770 () Bool)

(assert (=> b!7863676 (= e!4646770 call!729176)))

(declare-fun b!7863677 () Bool)

(declare-fun res!3125868 () Bool)

(assert (=> b!7863677 (=> (not res!3125868) (not e!4646770))))

(assert (=> b!7863677 (= res!3125868 call!729177)))

(assert (=> b!7863677 (= e!4646771 e!4646770)))

(declare-fun b!7863678 () Bool)

(assert (=> b!7863678 (= e!4646767 call!729175)))

(declare-fun bm!729172 () Bool)

(assert (=> bm!729172 (= call!729175 (validRegex!11545 (ite c!1445073 (reg!21464 lt!2680542) (ite c!1445074 (regOne!42783 lt!2680542) (regOne!42782 lt!2680542)))))))

(declare-fun b!7863679 () Bool)

(assert (=> b!7863679 (= e!4646765 e!4646768)))

(declare-fun res!3125864 () Bool)

(assert (=> b!7863679 (=> (not res!3125864) (not e!4646768))))

(assert (=> b!7863679 (= res!3125864 call!729177)))

(assert (= (and d!2354690 (not res!3125867)) b!7863671))

(assert (= (and b!7863671 c!1445073) b!7863672))

(assert (= (and b!7863671 (not c!1445073)) b!7863675))

(assert (= (and b!7863672 res!3125866) b!7863678))

(assert (= (and b!7863675 c!1445074) b!7863677))

(assert (= (and b!7863675 (not c!1445074)) b!7863674))

(assert (= (and b!7863677 res!3125868) b!7863676))

(assert (= (and b!7863674 (not res!3125865)) b!7863679))

(assert (= (and b!7863679 res!3125864) b!7863673))

(assert (= (or b!7863676 b!7863673) bm!729171))

(assert (= (or b!7863677 b!7863679) bm!729170))

(assert (= (or b!7863678 bm!729170) bm!729172))

(declare-fun m!8263350 () Bool)

(assert (=> b!7863672 m!8263350))

(declare-fun m!8263352 () Bool)

(assert (=> bm!729171 m!8263352))

(declare-fun m!8263354 () Bool)

(assert (=> bm!729172 m!8263354))

(assert (=> b!7863240 d!2354690))

(declare-fun b!7863680 () Bool)

(declare-fun e!4646773 () Bool)

(assert (=> b!7863680 (= e!4646773 (matchR!10571 (derivativeStep!6368 r1!6218 (head!16083 s!14237)) (tail!15626 s!14237)))))

(declare-fun b!7863681 () Bool)

(declare-fun res!3125869 () Bool)

(declare-fun e!4646778 () Bool)

(assert (=> b!7863681 (=> res!3125869 e!4646778)))

(declare-fun e!4646775 () Bool)

(assert (=> b!7863681 (= res!3125869 e!4646775)))

(declare-fun res!3125871 () Bool)

(assert (=> b!7863681 (=> (not res!3125871) (not e!4646775))))

(declare-fun lt!2680579 () Bool)

(assert (=> b!7863681 (= res!3125871 lt!2680579)))

(declare-fun b!7863682 () Bool)

(declare-fun e!4646777 () Bool)

(declare-fun call!729178 () Bool)

(assert (=> b!7863682 (= e!4646777 (= lt!2680579 call!729178))))

(declare-fun b!7863683 () Bool)

(declare-fun res!3125870 () Bool)

(declare-fun e!4646776 () Bool)

(assert (=> b!7863683 (=> res!3125870 e!4646776)))

(assert (=> b!7863683 (= res!3125870 (not (isEmpty!42372 (tail!15626 s!14237))))))

(declare-fun b!7863684 () Bool)

(declare-fun e!4646772 () Bool)

(assert (=> b!7863684 (= e!4646777 e!4646772)))

(declare-fun c!1445075 () Bool)

(assert (=> b!7863684 (= c!1445075 ((_ is EmptyLang!21135) r1!6218))))

(declare-fun b!7863685 () Bool)

(declare-fun res!3125874 () Bool)

(assert (=> b!7863685 (=> (not res!3125874) (not e!4646775))))

(assert (=> b!7863685 (= res!3125874 (isEmpty!42372 (tail!15626 s!14237)))))

(declare-fun bm!729173 () Bool)

(assert (=> bm!729173 (= call!729178 (isEmpty!42372 s!14237))))

(declare-fun b!7863687 () Bool)

(declare-fun e!4646774 () Bool)

(assert (=> b!7863687 (= e!4646774 e!4646776)))

(declare-fun res!3125873 () Bool)

(assert (=> b!7863687 (=> res!3125873 e!4646776)))

(assert (=> b!7863687 (= res!3125873 call!729178)))

(declare-fun b!7863688 () Bool)

(assert (=> b!7863688 (= e!4646772 (not lt!2680579))))

(declare-fun b!7863689 () Bool)

(assert (=> b!7863689 (= e!4646776 (not (= (head!16083 s!14237) (c!1444957 r1!6218))))))

(declare-fun b!7863690 () Bool)

(declare-fun res!3125876 () Bool)

(assert (=> b!7863690 (=> res!3125876 e!4646778)))

(assert (=> b!7863690 (= res!3125876 (not ((_ is ElementMatch!21135) r1!6218)))))

(assert (=> b!7863690 (= e!4646772 e!4646778)))

(declare-fun b!7863691 () Bool)

(assert (=> b!7863691 (= e!4646773 (nullable!9405 r1!6218))))

(declare-fun b!7863692 () Bool)

(assert (=> b!7863692 (= e!4646778 e!4646774)))

(declare-fun res!3125872 () Bool)

(assert (=> b!7863692 (=> (not res!3125872) (not e!4646774))))

(assert (=> b!7863692 (= res!3125872 (not lt!2680579))))

(declare-fun b!7863693 () Bool)

(declare-fun res!3125875 () Bool)

(assert (=> b!7863693 (=> (not res!3125875) (not e!4646775))))

(assert (=> b!7863693 (= res!3125875 (not call!729178))))

(declare-fun d!2354692 () Bool)

(assert (=> d!2354692 e!4646777))

(declare-fun c!1445076 () Bool)

(assert (=> d!2354692 (= c!1445076 ((_ is EmptyExpr!21135) r1!6218))))

(assert (=> d!2354692 (= lt!2680579 e!4646773)))

(declare-fun c!1445077 () Bool)

(assert (=> d!2354692 (= c!1445077 (isEmpty!42372 s!14237))))

(assert (=> d!2354692 (validRegex!11545 r1!6218)))

(assert (=> d!2354692 (= (matchR!10571 r1!6218 s!14237) lt!2680579)))

(declare-fun b!7863686 () Bool)

(assert (=> b!7863686 (= e!4646775 (= (head!16083 s!14237) (c!1444957 r1!6218)))))

(assert (= (and d!2354692 c!1445077) b!7863691))

(assert (= (and d!2354692 (not c!1445077)) b!7863680))

(assert (= (and d!2354692 c!1445076) b!7863682))

(assert (= (and d!2354692 (not c!1445076)) b!7863684))

(assert (= (and b!7863684 c!1445075) b!7863688))

(assert (= (and b!7863684 (not c!1445075)) b!7863690))

(assert (= (and b!7863690 (not res!3125876)) b!7863681))

(assert (= (and b!7863681 res!3125871) b!7863693))

(assert (= (and b!7863693 res!3125875) b!7863685))

(assert (= (and b!7863685 res!3125874) b!7863686))

(assert (= (and b!7863681 (not res!3125869)) b!7863692))

(assert (= (and b!7863692 res!3125872) b!7863687))

(assert (= (and b!7863687 (not res!3125873)) b!7863683))

(assert (= (and b!7863683 (not res!3125870)) b!7863689))

(assert (= (or b!7863682 b!7863687 b!7863693) bm!729173))

(assert (=> b!7863683 m!8263134))

(assert (=> b!7863683 m!8263134))

(assert (=> b!7863683 m!8263338))

(assert (=> b!7863680 m!8263130))

(assert (=> b!7863680 m!8263130))

(assert (=> b!7863680 m!8263132))

(assert (=> b!7863680 m!8263134))

(assert (=> b!7863680 m!8263132))

(assert (=> b!7863680 m!8263134))

(assert (=> b!7863680 m!8263136))

(assert (=> bm!729173 m!8263142))

(assert (=> d!2354692 m!8263142))

(assert (=> d!2354692 m!8263128))

(assert (=> b!7863686 m!8263130))

(assert (=> b!7863689 m!8263130))

(assert (=> b!7863691 m!8263152))

(assert (=> b!7863685 m!8263134))

(assert (=> b!7863685 m!8263134))

(assert (=> b!7863685 m!8263338))

(assert (=> b!7863245 d!2354692))

(declare-fun b!7863698 () Bool)

(declare-fun e!4646781 () Bool)

(declare-fun tp!2330718 () Bool)

(assert (=> b!7863698 (= e!4646781 (and tp_is_empty!52669 tp!2330718))))

(assert (=> b!7863244 (= tp!2330649 e!4646781)))

(assert (= (and b!7863244 ((_ is Cons!73870) (t!388729 s!14237))) b!7863698))

(declare-fun b!7863711 () Bool)

(declare-fun e!4646784 () Bool)

(declare-fun tp!2330731 () Bool)

(assert (=> b!7863711 (= e!4646784 tp!2330731)))

(declare-fun b!7863712 () Bool)

(declare-fun tp!2330730 () Bool)

(declare-fun tp!2330729 () Bool)

(assert (=> b!7863712 (= e!4646784 (and tp!2330730 tp!2330729))))

(assert (=> b!7863249 (= tp!2330648 e!4646784)))

(declare-fun b!7863709 () Bool)

(assert (=> b!7863709 (= e!4646784 tp_is_empty!52669)))

(declare-fun b!7863710 () Bool)

(declare-fun tp!2330732 () Bool)

(declare-fun tp!2330733 () Bool)

(assert (=> b!7863710 (= e!4646784 (and tp!2330732 tp!2330733))))

(assert (= (and b!7863249 ((_ is ElementMatch!21135) (reg!21464 r2!6156))) b!7863709))

(assert (= (and b!7863249 ((_ is Concat!29980) (reg!21464 r2!6156))) b!7863710))

(assert (= (and b!7863249 ((_ is Star!21135) (reg!21464 r2!6156))) b!7863711))

(assert (= (and b!7863249 ((_ is Union!21135) (reg!21464 r2!6156))) b!7863712))

(declare-fun b!7863715 () Bool)

(declare-fun e!4646785 () Bool)

(declare-fun tp!2330736 () Bool)

(assert (=> b!7863715 (= e!4646785 tp!2330736)))

(declare-fun b!7863716 () Bool)

(declare-fun tp!2330735 () Bool)

(declare-fun tp!2330734 () Bool)

(assert (=> b!7863716 (= e!4646785 (and tp!2330735 tp!2330734))))

(assert (=> b!7863248 (= tp!2330645 e!4646785)))

(declare-fun b!7863713 () Bool)

(assert (=> b!7863713 (= e!4646785 tp_is_empty!52669)))

(declare-fun b!7863714 () Bool)

(declare-fun tp!2330737 () Bool)

(declare-fun tp!2330738 () Bool)

(assert (=> b!7863714 (= e!4646785 (and tp!2330737 tp!2330738))))

(assert (= (and b!7863248 ((_ is ElementMatch!21135) (regOne!42783 r1!6218))) b!7863713))

(assert (= (and b!7863248 ((_ is Concat!29980) (regOne!42783 r1!6218))) b!7863714))

(assert (= (and b!7863248 ((_ is Star!21135) (regOne!42783 r1!6218))) b!7863715))

(assert (= (and b!7863248 ((_ is Union!21135) (regOne!42783 r1!6218))) b!7863716))

(declare-fun b!7863719 () Bool)

(declare-fun e!4646786 () Bool)

(declare-fun tp!2330741 () Bool)

(assert (=> b!7863719 (= e!4646786 tp!2330741)))

(declare-fun b!7863720 () Bool)

(declare-fun tp!2330740 () Bool)

(declare-fun tp!2330739 () Bool)

(assert (=> b!7863720 (= e!4646786 (and tp!2330740 tp!2330739))))

(assert (=> b!7863248 (= tp!2330647 e!4646786)))

(declare-fun b!7863717 () Bool)

(assert (=> b!7863717 (= e!4646786 tp_is_empty!52669)))

(declare-fun b!7863718 () Bool)

(declare-fun tp!2330742 () Bool)

(declare-fun tp!2330743 () Bool)

(assert (=> b!7863718 (= e!4646786 (and tp!2330742 tp!2330743))))

(assert (= (and b!7863248 ((_ is ElementMatch!21135) (regTwo!42783 r1!6218))) b!7863717))

(assert (= (and b!7863248 ((_ is Concat!29980) (regTwo!42783 r1!6218))) b!7863718))

(assert (= (and b!7863248 ((_ is Star!21135) (regTwo!42783 r1!6218))) b!7863719))

(assert (= (and b!7863248 ((_ is Union!21135) (regTwo!42783 r1!6218))) b!7863720))

(declare-fun b!7863723 () Bool)

(declare-fun e!4646787 () Bool)

(declare-fun tp!2330746 () Bool)

(assert (=> b!7863723 (= e!4646787 tp!2330746)))

(declare-fun b!7863724 () Bool)

(declare-fun tp!2330745 () Bool)

(declare-fun tp!2330744 () Bool)

(assert (=> b!7863724 (= e!4646787 (and tp!2330745 tp!2330744))))

(assert (=> b!7863237 (= tp!2330652 e!4646787)))

(declare-fun b!7863721 () Bool)

(assert (=> b!7863721 (= e!4646787 tp_is_empty!52669)))

(declare-fun b!7863722 () Bool)

(declare-fun tp!2330747 () Bool)

(declare-fun tp!2330748 () Bool)

(assert (=> b!7863722 (= e!4646787 (and tp!2330747 tp!2330748))))

(assert (= (and b!7863237 ((_ is ElementMatch!21135) (regOne!42782 r1!6218))) b!7863721))

(assert (= (and b!7863237 ((_ is Concat!29980) (regOne!42782 r1!6218))) b!7863722))

(assert (= (and b!7863237 ((_ is Star!21135) (regOne!42782 r1!6218))) b!7863723))

(assert (= (and b!7863237 ((_ is Union!21135) (regOne!42782 r1!6218))) b!7863724))

(declare-fun b!7863727 () Bool)

(declare-fun e!4646788 () Bool)

(declare-fun tp!2330751 () Bool)

(assert (=> b!7863727 (= e!4646788 tp!2330751)))

(declare-fun b!7863728 () Bool)

(declare-fun tp!2330750 () Bool)

(declare-fun tp!2330749 () Bool)

(assert (=> b!7863728 (= e!4646788 (and tp!2330750 tp!2330749))))

(assert (=> b!7863237 (= tp!2330646 e!4646788)))

(declare-fun b!7863725 () Bool)

(assert (=> b!7863725 (= e!4646788 tp_is_empty!52669)))

(declare-fun b!7863726 () Bool)

(declare-fun tp!2330752 () Bool)

(declare-fun tp!2330753 () Bool)

(assert (=> b!7863726 (= e!4646788 (and tp!2330752 tp!2330753))))

(assert (= (and b!7863237 ((_ is ElementMatch!21135) (regTwo!42782 r1!6218))) b!7863725))

(assert (= (and b!7863237 ((_ is Concat!29980) (regTwo!42782 r1!6218))) b!7863726))

(assert (= (and b!7863237 ((_ is Star!21135) (regTwo!42782 r1!6218))) b!7863727))

(assert (= (and b!7863237 ((_ is Union!21135) (regTwo!42782 r1!6218))) b!7863728))

(declare-fun b!7863731 () Bool)

(declare-fun e!4646789 () Bool)

(declare-fun tp!2330756 () Bool)

(assert (=> b!7863731 (= e!4646789 tp!2330756)))

(declare-fun b!7863732 () Bool)

(declare-fun tp!2330755 () Bool)

(declare-fun tp!2330754 () Bool)

(assert (=> b!7863732 (= e!4646789 (and tp!2330755 tp!2330754))))

(assert (=> b!7863246 (= tp!2330650 e!4646789)))

(declare-fun b!7863729 () Bool)

(assert (=> b!7863729 (= e!4646789 tp_is_empty!52669)))

(declare-fun b!7863730 () Bool)

(declare-fun tp!2330757 () Bool)

(declare-fun tp!2330758 () Bool)

(assert (=> b!7863730 (= e!4646789 (and tp!2330757 tp!2330758))))

(assert (= (and b!7863246 ((_ is ElementMatch!21135) (regOne!42782 r2!6156))) b!7863729))

(assert (= (and b!7863246 ((_ is Concat!29980) (regOne!42782 r2!6156))) b!7863730))

(assert (= (and b!7863246 ((_ is Star!21135) (regOne!42782 r2!6156))) b!7863731))

(assert (= (and b!7863246 ((_ is Union!21135) (regOne!42782 r2!6156))) b!7863732))

(declare-fun b!7863735 () Bool)

(declare-fun e!4646790 () Bool)

(declare-fun tp!2330761 () Bool)

(assert (=> b!7863735 (= e!4646790 tp!2330761)))

(declare-fun b!7863736 () Bool)

(declare-fun tp!2330760 () Bool)

(declare-fun tp!2330759 () Bool)

(assert (=> b!7863736 (= e!4646790 (and tp!2330760 tp!2330759))))

(assert (=> b!7863246 (= tp!2330643 e!4646790)))

(declare-fun b!7863733 () Bool)

(assert (=> b!7863733 (= e!4646790 tp_is_empty!52669)))

(declare-fun b!7863734 () Bool)

(declare-fun tp!2330762 () Bool)

(declare-fun tp!2330763 () Bool)

(assert (=> b!7863734 (= e!4646790 (and tp!2330762 tp!2330763))))

(assert (= (and b!7863246 ((_ is ElementMatch!21135) (regTwo!42782 r2!6156))) b!7863733))

(assert (= (and b!7863246 ((_ is Concat!29980) (regTwo!42782 r2!6156))) b!7863734))

(assert (= (and b!7863246 ((_ is Star!21135) (regTwo!42782 r2!6156))) b!7863735))

(assert (= (and b!7863246 ((_ is Union!21135) (regTwo!42782 r2!6156))) b!7863736))

(declare-fun b!7863739 () Bool)

(declare-fun e!4646791 () Bool)

(declare-fun tp!2330766 () Bool)

(assert (=> b!7863739 (= e!4646791 tp!2330766)))

(declare-fun b!7863740 () Bool)

(declare-fun tp!2330765 () Bool)

(declare-fun tp!2330764 () Bool)

(assert (=> b!7863740 (= e!4646791 (and tp!2330765 tp!2330764))))

(assert (=> b!7863251 (= tp!2330651 e!4646791)))

(declare-fun b!7863737 () Bool)

(assert (=> b!7863737 (= e!4646791 tp_is_empty!52669)))

(declare-fun b!7863738 () Bool)

(declare-fun tp!2330767 () Bool)

(declare-fun tp!2330768 () Bool)

(assert (=> b!7863738 (= e!4646791 (and tp!2330767 tp!2330768))))

(assert (= (and b!7863251 ((_ is ElementMatch!21135) (reg!21464 r1!6218))) b!7863737))

(assert (= (and b!7863251 ((_ is Concat!29980) (reg!21464 r1!6218))) b!7863738))

(assert (= (and b!7863251 ((_ is Star!21135) (reg!21464 r1!6218))) b!7863739))

(assert (= (and b!7863251 ((_ is Union!21135) (reg!21464 r1!6218))) b!7863740))

(declare-fun b!7863743 () Bool)

(declare-fun e!4646792 () Bool)

(declare-fun tp!2330771 () Bool)

(assert (=> b!7863743 (= e!4646792 tp!2330771)))

(declare-fun b!7863744 () Bool)

(declare-fun tp!2330770 () Bool)

(declare-fun tp!2330769 () Bool)

(assert (=> b!7863744 (= e!4646792 (and tp!2330770 tp!2330769))))

(assert (=> b!7863252 (= tp!2330644 e!4646792)))

(declare-fun b!7863741 () Bool)

(assert (=> b!7863741 (= e!4646792 tp_is_empty!52669)))

(declare-fun b!7863742 () Bool)

(declare-fun tp!2330772 () Bool)

(declare-fun tp!2330773 () Bool)

(assert (=> b!7863742 (= e!4646792 (and tp!2330772 tp!2330773))))

(assert (= (and b!7863252 ((_ is ElementMatch!21135) (regOne!42783 r2!6156))) b!7863741))

(assert (= (and b!7863252 ((_ is Concat!29980) (regOne!42783 r2!6156))) b!7863742))

(assert (= (and b!7863252 ((_ is Star!21135) (regOne!42783 r2!6156))) b!7863743))

(assert (= (and b!7863252 ((_ is Union!21135) (regOne!42783 r2!6156))) b!7863744))

(declare-fun b!7863747 () Bool)

(declare-fun e!4646793 () Bool)

(declare-fun tp!2330776 () Bool)

(assert (=> b!7863747 (= e!4646793 tp!2330776)))

(declare-fun b!7863748 () Bool)

(declare-fun tp!2330775 () Bool)

(declare-fun tp!2330774 () Bool)

(assert (=> b!7863748 (= e!4646793 (and tp!2330775 tp!2330774))))

(assert (=> b!7863252 (= tp!2330642 e!4646793)))

(declare-fun b!7863745 () Bool)

(assert (=> b!7863745 (= e!4646793 tp_is_empty!52669)))

(declare-fun b!7863746 () Bool)

(declare-fun tp!2330777 () Bool)

(declare-fun tp!2330778 () Bool)

(assert (=> b!7863746 (= e!4646793 (and tp!2330777 tp!2330778))))

(assert (= (and b!7863252 ((_ is ElementMatch!21135) (regTwo!42783 r2!6156))) b!7863745))

(assert (= (and b!7863252 ((_ is Concat!29980) (regTwo!42783 r2!6156))) b!7863746))

(assert (= (and b!7863252 ((_ is Star!21135) (regTwo!42783 r2!6156))) b!7863747))

(assert (= (and b!7863252 ((_ is Union!21135) (regTwo!42783 r2!6156))) b!7863748))

(check-sat (not b!7863686) (not b!7863738) (not b!7863730) (not b!7863446) (not b!7863736) (not b!7863653) (not b!7863637) (not b!7863292) (not d!2354640) (not b!7863719) (not b!7863546) (not d!2354692) (not b!7863652) (not b!7863723) (not bm!729173) (not b!7863718) (not b!7863742) (not bm!729164) (not b!7863716) (not bm!729132) (not b!7863724) (not b!7863672) (not b!7863549) (not d!2354622) (not b!7863722) (not b!7863683) (not b!7863728) (not b!7863739) (not b!7863748) (not b!7863740) (not b!7863727) (not d!2354628) (not b!7863398) (not d!2354682) (not b!7863715) (not bm!729171) (not b!7863732) (not bm!729140) (not b!7863712) (not b!7863689) (not b!7863714) (not bm!729128) (not b!7863711) (not b!7863636) (not d!2354676) (not d!2354648) (not bm!729139) (not b!7863680) (not bm!729172) (not b!7863639) (not b!7863662) (not bm!729165) (not b!7863552) (not b!7863710) (not bm!729166) (not bm!729160) (not d!2354642) (not d!2354646) (not bm!729163) (not b!7863658) (not d!2354684) (not bm!729136) (not b!7863647) (not b!7863731) (not bm!729130) (not b!7863735) (not b!7863554) (not b!7863698) (not b!7863378) (not bm!729134) (not bm!729095) (not b!7863656) (not b!7863691) (not bm!729168) (not b!7863548) (not b!7863747) (not d!2354680) (not b!7863744) (not b!7863746) (not b!7863726) (not b!7863743) (not b!7863388) (not bm!729096) (not bm!729126) tp_is_empty!52669 (not b!7863734) (not b!7863543) (not b!7863650) (not b!7863720) (not b!7863685) (not b!7863408))
(check-sat)
