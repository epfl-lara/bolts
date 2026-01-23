; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285478 () Bool)

(assert start!285478)

(declare-fun b!2938494 () Bool)

(declare-fun e!1852132 () Bool)

(declare-fun e!1852135 () Bool)

(assert (=> b!2938494 (= e!1852132 e!1852135)))

(declare-fun res!1212959 () Bool)

(assert (=> b!2938494 (=> res!1212959 e!1852135)))

(declare-fun lt!1029605 () Bool)

(assert (=> b!2938494 (= res!1212959 lt!1029605)))

(declare-datatypes ((C!18354 0))(
  ( (C!18355 (val!11213 Int)) )
))
(declare-datatypes ((Regex!9084 0))(
  ( (ElementMatch!9084 (c!480278 C!18354)) (Concat!14405 (regOne!18680 Regex!9084) (regTwo!18680 Regex!9084)) (EmptyExpr!9084) (Star!9084 (reg!9413 Regex!9084)) (EmptyLang!9084) (Union!9084 (regOne!18681 Regex!9084) (regTwo!18681 Regex!9084)) )
))
(declare-fun lt!1029607 () Regex!9084)

(declare-datatypes ((List!34949 0))(
  ( (Nil!34825) (Cons!34825 (h!40245 C!18354) (t!234014 List!34949)) )
))
(declare-fun s!11993 () List!34949)

(declare-fun matchR!3966 (Regex!9084 List!34949) Bool)

(assert (=> b!2938494 (= lt!1029605 (matchR!3966 lt!1029607 s!11993))))

(declare-fun r!17423 () Regex!9084)

(assert (=> b!2938494 (= lt!1029605 (matchR!3966 (regOne!18680 r!17423) s!11993))))

(declare-datatypes ((Unit!48547 0))(
  ( (Unit!48548) )
))
(declare-fun lt!1029606 () Unit!48547)

(declare-fun lemmaSimplifySound!77 (Regex!9084 List!34949) Unit!48547)

(assert (=> b!2938494 (= lt!1029606 (lemmaSimplifySound!77 (regOne!18680 r!17423) s!11993))))

(declare-fun b!2938495 () Bool)

(declare-fun e!1852133 () Bool)

(declare-fun tp_is_empty!15731 () Bool)

(declare-fun tp!940734 () Bool)

(assert (=> b!2938495 (= e!1852133 (and tp_is_empty!15731 tp!940734))))

(declare-fun b!2938496 () Bool)

(declare-fun e!1852130 () Bool)

(assert (=> b!2938496 (= e!1852130 e!1852132)))

(declare-fun res!1212957 () Bool)

(assert (=> b!2938496 (=> res!1212957 e!1852132)))

(declare-fun isEmptyLang!212 (Regex!9084) Bool)

(assert (=> b!2938496 (= res!1212957 (not (isEmptyLang!212 lt!1029607)))))

(declare-fun lt!1029609 () Regex!9084)

(declare-fun simplify!89 (Regex!9084) Regex!9084)

(assert (=> b!2938496 (= lt!1029609 (simplify!89 (regTwo!18680 r!17423)))))

(assert (=> b!2938496 (= lt!1029607 (simplify!89 (regOne!18680 r!17423)))))

(declare-fun b!2938497 () Bool)

(declare-fun validRegex!3817 (Regex!9084) Bool)

(assert (=> b!2938497 (= e!1852135 (validRegex!3817 (simplify!89 r!17423)))))

(declare-fun b!2938498 () Bool)

(declare-fun res!1212955 () Bool)

(assert (=> b!2938498 (=> res!1212955 e!1852130)))

(declare-fun isEmpty!19086 (List!34949) Bool)

(assert (=> b!2938498 (= res!1212955 (isEmpty!19086 s!11993))))

(declare-fun b!2938499 () Bool)

(declare-fun e!1852134 () Bool)

(declare-fun tp!940735 () Bool)

(declare-fun tp!940733 () Bool)

(assert (=> b!2938499 (= e!1852134 (and tp!940735 tp!940733))))

(declare-fun b!2938500 () Bool)

(declare-fun e!1852131 () Bool)

(assert (=> b!2938500 (= e!1852131 (not e!1852130))))

(declare-fun res!1212958 () Bool)

(assert (=> b!2938500 (=> res!1212958 e!1852130)))

(declare-fun lt!1029604 () Bool)

(assert (=> b!2938500 (= res!1212958 (or lt!1029604 (not (is-Concat!14405 r!17423))))))

(declare-fun matchRSpec!1221 (Regex!9084 List!34949) Bool)

(assert (=> b!2938500 (= lt!1029604 (matchRSpec!1221 r!17423 s!11993))))

(assert (=> b!2938500 (= lt!1029604 (matchR!3966 r!17423 s!11993))))

(declare-fun lt!1029608 () Unit!48547)

(declare-fun mainMatchTheorem!1221 (Regex!9084 List!34949) Unit!48547)

(assert (=> b!2938500 (= lt!1029608 (mainMatchTheorem!1221 r!17423 s!11993))))

(declare-fun res!1212956 () Bool)

(assert (=> start!285478 (=> (not res!1212956) (not e!1852131))))

(assert (=> start!285478 (= res!1212956 (validRegex!3817 r!17423))))

(assert (=> start!285478 e!1852131))

(assert (=> start!285478 e!1852134))

(assert (=> start!285478 e!1852133))

(declare-fun b!2938501 () Bool)

(assert (=> b!2938501 (= e!1852134 tp_is_empty!15731)))

(declare-fun b!2938502 () Bool)

(declare-fun tp!940732 () Bool)

(declare-fun tp!940731 () Bool)

(assert (=> b!2938502 (= e!1852134 (and tp!940732 tp!940731))))

(declare-fun b!2938503 () Bool)

(declare-fun tp!940730 () Bool)

(assert (=> b!2938503 (= e!1852134 tp!940730)))

(assert (= (and start!285478 res!1212956) b!2938500))

(assert (= (and b!2938500 (not res!1212958)) b!2938498))

(assert (= (and b!2938498 (not res!1212955)) b!2938496))

(assert (= (and b!2938496 (not res!1212957)) b!2938494))

(assert (= (and b!2938494 (not res!1212959)) b!2938497))

(assert (= (and start!285478 (is-ElementMatch!9084 r!17423)) b!2938501))

(assert (= (and start!285478 (is-Concat!14405 r!17423)) b!2938499))

(assert (= (and start!285478 (is-Star!9084 r!17423)) b!2938503))

(assert (= (and start!285478 (is-Union!9084 r!17423)) b!2938502))

(assert (= (and start!285478 (is-Cons!34825 s!11993)) b!2938495))

(declare-fun m!3324461 () Bool)

(assert (=> start!285478 m!3324461))

(declare-fun m!3324463 () Bool)

(assert (=> b!2938497 m!3324463))

(assert (=> b!2938497 m!3324463))

(declare-fun m!3324465 () Bool)

(assert (=> b!2938497 m!3324465))

(declare-fun m!3324467 () Bool)

(assert (=> b!2938494 m!3324467))

(declare-fun m!3324469 () Bool)

(assert (=> b!2938494 m!3324469))

(declare-fun m!3324471 () Bool)

(assert (=> b!2938494 m!3324471))

(declare-fun m!3324473 () Bool)

(assert (=> b!2938496 m!3324473))

(declare-fun m!3324475 () Bool)

(assert (=> b!2938496 m!3324475))

(declare-fun m!3324477 () Bool)

(assert (=> b!2938496 m!3324477))

(declare-fun m!3324479 () Bool)

(assert (=> b!2938498 m!3324479))

(declare-fun m!3324481 () Bool)

(assert (=> b!2938500 m!3324481))

(declare-fun m!3324483 () Bool)

(assert (=> b!2938500 m!3324483))

(declare-fun m!3324485 () Bool)

(assert (=> b!2938500 m!3324485))

(push 1)

(assert (not b!2938497))

(assert (not start!285478))

(assert (not b!2938496))

(assert (not b!2938494))

(assert (not b!2938500))

(assert (not b!2938502))

(assert (not b!2938498))

(assert (not b!2938499))

(assert tp_is_empty!15731)

(assert (not b!2938495))

(assert (not b!2938503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!193305 () Bool)

(declare-fun call!193310 () Bool)

(declare-fun call!193312 () Bool)

(assert (=> bm!193305 (= call!193310 call!193312)))

(declare-fun b!2938579 () Bool)

(declare-fun e!1852193 () Bool)

(assert (=> b!2938579 (= e!1852193 call!193312)))

(declare-fun b!2938580 () Bool)

(declare-fun e!1852192 () Bool)

(assert (=> b!2938580 (= e!1852192 call!193310)))

(declare-fun b!2938581 () Bool)

(declare-fun e!1852195 () Bool)

(declare-fun call!193311 () Bool)

(assert (=> b!2938581 (= e!1852195 call!193311)))

(declare-fun b!2938582 () Bool)

(declare-fun res!1213004 () Bool)

(declare-fun e!1852190 () Bool)

(assert (=> b!2938582 (=> res!1213004 e!1852190)))

(assert (=> b!2938582 (= res!1213004 (not (is-Concat!14405 (simplify!89 r!17423))))))

(declare-fun e!1852189 () Bool)

(assert (=> b!2938582 (= e!1852189 e!1852190)))

(declare-fun b!2938583 () Bool)

(declare-fun e!1852194 () Bool)

(assert (=> b!2938583 (= e!1852194 e!1852193)))

(declare-fun res!1213000 () Bool)

(declare-fun nullable!2868 (Regex!9084) Bool)

(assert (=> b!2938583 (= res!1213000 (not (nullable!2868 (reg!9413 (simplify!89 r!17423)))))))

(assert (=> b!2938583 (=> (not res!1213000) (not e!1852193))))

(declare-fun b!2938584 () Bool)

(assert (=> b!2938584 (= e!1852194 e!1852189)))

(declare-fun c!480290 () Bool)

(assert (=> b!2938584 (= c!480290 (is-Union!9084 (simplify!89 r!17423)))))

(declare-fun d!840002 () Bool)

(declare-fun res!1213003 () Bool)

(declare-fun e!1852191 () Bool)

(assert (=> d!840002 (=> res!1213003 e!1852191)))

(assert (=> d!840002 (= res!1213003 (is-ElementMatch!9084 (simplify!89 r!17423)))))

(assert (=> d!840002 (= (validRegex!3817 (simplify!89 r!17423)) e!1852191)))

(declare-fun c!480291 () Bool)

(declare-fun bm!193306 () Bool)

(assert (=> bm!193306 (= call!193312 (validRegex!3817 (ite c!480291 (reg!9413 (simplify!89 r!17423)) (ite c!480290 (regTwo!18681 (simplify!89 r!17423)) (regOne!18680 (simplify!89 r!17423))))))))

(declare-fun bm!193307 () Bool)

(assert (=> bm!193307 (= call!193311 (validRegex!3817 (ite c!480290 (regOne!18681 (simplify!89 r!17423)) (regTwo!18680 (simplify!89 r!17423)))))))

(declare-fun b!2938585 () Bool)

(assert (=> b!2938585 (= e!1852190 e!1852195)))

(declare-fun res!1213001 () Bool)

(assert (=> b!2938585 (=> (not res!1213001) (not e!1852195))))

(assert (=> b!2938585 (= res!1213001 call!193310)))

(declare-fun b!2938586 () Bool)

(declare-fun res!1213002 () Bool)

(assert (=> b!2938586 (=> (not res!1213002) (not e!1852192))))

(assert (=> b!2938586 (= res!1213002 call!193311)))

(assert (=> b!2938586 (= e!1852189 e!1852192)))

(declare-fun b!2938587 () Bool)

(assert (=> b!2938587 (= e!1852191 e!1852194)))

(assert (=> b!2938587 (= c!480291 (is-Star!9084 (simplify!89 r!17423)))))

(assert (= (and d!840002 (not res!1213003)) b!2938587))

(assert (= (and b!2938587 c!480291) b!2938583))

(assert (= (and b!2938587 (not c!480291)) b!2938584))

(assert (= (and b!2938583 res!1213000) b!2938579))

(assert (= (and b!2938584 c!480290) b!2938586))

(assert (= (and b!2938584 (not c!480290)) b!2938582))

(assert (= (and b!2938586 res!1213002) b!2938580))

(assert (= (and b!2938582 (not res!1213004)) b!2938585))

(assert (= (and b!2938585 res!1213001) b!2938581))

(assert (= (or b!2938586 b!2938581) bm!193307))

(assert (= (or b!2938580 b!2938585) bm!193305))

(assert (= (or b!2938579 bm!193305) bm!193306))

(declare-fun m!3324519 () Bool)

(assert (=> b!2938583 m!3324519))

(declare-fun m!3324521 () Bool)

(assert (=> bm!193306 m!3324521))

(declare-fun m!3324523 () Bool)

(assert (=> bm!193307 m!3324523))

(assert (=> b!2938497 d!840002))

(declare-fun b!2938688 () Bool)

(declare-fun c!480337 () Bool)

(declare-fun e!1852255 () Bool)

(assert (=> b!2938688 (= c!480337 e!1852255)))

(declare-fun res!1213019 () Bool)

(assert (=> b!2938688 (=> res!1213019 e!1852255)))

(declare-fun call!193347 () Bool)

(assert (=> b!2938688 (= res!1213019 call!193347)))

(declare-fun lt!1029653 () Regex!9084)

(declare-fun call!193346 () Regex!9084)

(assert (=> b!2938688 (= lt!1029653 call!193346)))

(declare-fun e!1852264 () Regex!9084)

(declare-fun e!1852265 () Regex!9084)

(assert (=> b!2938688 (= e!1852264 e!1852265)))

(declare-fun b!2938689 () Bool)

(assert (=> b!2938689 (= e!1852265 (Star!9084 lt!1029653))))

(declare-fun lt!1029652 () Regex!9084)

(declare-fun lt!1029654 () Regex!9084)

(declare-fun call!193343 () Bool)

(declare-fun bm!193336 () Bool)

(declare-fun c!480340 () Bool)

(assert (=> bm!193336 (= call!193343 (isEmptyLang!212 (ite c!480340 lt!1029652 lt!1029654)))))

(declare-fun b!2938690 () Bool)

(declare-fun e!1852261 () Regex!9084)

(assert (=> b!2938690 (= e!1852261 EmptyLang!9084)))

(declare-fun b!2938691 () Bool)

(declare-fun e!1852259 () Regex!9084)

(declare-fun e!1852258 () Regex!9084)

(assert (=> b!2938691 (= e!1852259 e!1852258)))

(declare-fun lt!1029657 () Regex!9084)

(declare-fun call!193345 () Regex!9084)

(assert (=> b!2938691 (= lt!1029657 call!193345)))

(declare-fun call!193341 () Regex!9084)

(assert (=> b!2938691 (= lt!1029652 call!193341)))

(declare-fun c!480345 () Bool)

(declare-fun call!193342 () Bool)

(assert (=> b!2938691 (= c!480345 call!193342)))

(declare-fun b!2938692 () Bool)

(declare-fun e!1852260 () Regex!9084)

(declare-fun lt!1029655 () Regex!9084)

(assert (=> b!2938692 (= e!1852260 (Concat!14405 lt!1029654 lt!1029655))))

(declare-fun b!2938693 () Bool)

(declare-fun e!1852253 () Regex!9084)

(assert (=> b!2938693 (= e!1852253 r!17423)))

(declare-fun d!840006 () Bool)

(declare-fun e!1852254 () Bool)

(assert (=> d!840006 e!1852254))

(declare-fun res!1213017 () Bool)

(assert (=> d!840006 (=> (not res!1213017) (not e!1852254))))

(declare-fun lt!1029656 () Regex!9084)

(assert (=> d!840006 (= res!1213017 (validRegex!3817 lt!1029656))))

(declare-fun e!1852256 () Regex!9084)

(assert (=> d!840006 (= lt!1029656 e!1852256)))

(declare-fun c!480344 () Bool)

(assert (=> d!840006 (= c!480344 (is-EmptyLang!9084 r!17423))))

(assert (=> d!840006 (validRegex!3817 r!17423)))

(assert (=> d!840006 (= (simplify!89 r!17423) lt!1029656)))

(declare-fun b!2938694 () Bool)

(assert (=> b!2938694 (= e!1852259 e!1852261)))

(assert (=> b!2938694 (= lt!1029654 call!193341)))

(assert (=> b!2938694 (= lt!1029655 call!193345)))

(declare-fun res!1213018 () Bool)

(assert (=> b!2938694 (= res!1213018 call!193343)))

(declare-fun e!1852263 () Bool)

(assert (=> b!2938694 (=> res!1213018 e!1852263)))

(declare-fun c!480342 () Bool)

(assert (=> b!2938694 (= c!480342 e!1852263)))

(declare-fun bm!193337 () Bool)

(declare-fun c!480336 () Bool)

(assert (=> bm!193337 (= call!193346 (simplify!89 (ite c!480336 (reg!9413 r!17423) (ite c!480340 (regOne!18681 r!17423) (regTwo!18680 r!17423)))))))

(declare-fun bm!193338 () Bool)

(assert (=> bm!193338 (= call!193345 call!193346)))

(declare-fun bm!193339 () Bool)

(assert (=> bm!193339 (= call!193347 (isEmptyLang!212 (ite c!480336 lt!1029653 (ite c!480340 lt!1029657 lt!1029655))))))

(declare-fun b!2938695 () Bool)

(assert (=> b!2938695 (= e!1852265 EmptyExpr!9084)))

(declare-fun b!2938696 () Bool)

(declare-fun e!1852257 () Regex!9084)

(assert (=> b!2938696 (= e!1852257 EmptyExpr!9084)))

(declare-fun b!2938697 () Bool)

(declare-fun e!1852252 () Regex!9084)

(assert (=> b!2938697 (= e!1852252 (Union!9084 lt!1029657 lt!1029652))))

(declare-fun bm!193340 () Bool)

(assert (=> bm!193340 (= call!193342 call!193347)))

(declare-fun b!2938698 () Bool)

(declare-fun c!480343 () Bool)

(assert (=> b!2938698 (= c!480343 (is-EmptyExpr!9084 r!17423))))

(assert (=> b!2938698 (= e!1852253 e!1852257)))

(declare-fun b!2938699 () Bool)

(assert (=> b!2938699 (= e!1852260 lt!1029654)))

(declare-fun call!193344 () Bool)

(declare-fun bm!193341 () Bool)

(declare-fun isEmptyExpr!295 (Regex!9084) Bool)

(assert (=> bm!193341 (= call!193344 (isEmptyExpr!295 (ite c!480336 lt!1029653 lt!1029655)))))

(declare-fun b!2938700 () Bool)

(declare-fun e!1852262 () Regex!9084)

(assert (=> b!2938700 (= e!1852262 e!1852260)))

(declare-fun c!480338 () Bool)

(assert (=> b!2938700 (= c!480338 call!193344)))

(declare-fun b!2938701 () Bool)

(assert (=> b!2938701 (= e!1852263 call!193342)))

(declare-fun b!2938702 () Bool)

(assert (=> b!2938702 (= e!1852254 (= (nullable!2868 lt!1029656) (nullable!2868 r!17423)))))

(declare-fun b!2938703 () Bool)

(assert (=> b!2938703 (= e!1852262 lt!1029655)))

(declare-fun b!2938704 () Bool)

(assert (=> b!2938704 (= e!1852255 call!193344)))

(declare-fun b!2938705 () Bool)

(assert (=> b!2938705 (= e!1852257 e!1852264)))

(assert (=> b!2938705 (= c!480336 (is-Star!9084 r!17423))))

(declare-fun b!2938706 () Bool)

(assert (=> b!2938706 (= e!1852252 lt!1029657)))

(declare-fun b!2938707 () Bool)

(declare-fun c!480346 () Bool)

(assert (=> b!2938707 (= c!480346 (isEmptyExpr!295 lt!1029654))))

(assert (=> b!2938707 (= e!1852261 e!1852262)))

(declare-fun b!2938708 () Bool)

(assert (=> b!2938708 (= e!1852256 e!1852253)))

(declare-fun c!480341 () Bool)

(assert (=> b!2938708 (= c!480341 (is-ElementMatch!9084 r!17423))))

(declare-fun b!2938709 () Bool)

(declare-fun c!480339 () Bool)

(assert (=> b!2938709 (= c!480339 call!193343)))

(assert (=> b!2938709 (= e!1852258 e!1852252)))

(declare-fun b!2938710 () Bool)

(assert (=> b!2938710 (= c!480340 (is-Union!9084 r!17423))))

(assert (=> b!2938710 (= e!1852264 e!1852259)))

(declare-fun b!2938711 () Bool)

(assert (=> b!2938711 (= e!1852256 EmptyLang!9084)))

(declare-fun b!2938712 () Bool)

(assert (=> b!2938712 (= e!1852258 lt!1029652)))

(declare-fun bm!193342 () Bool)

(assert (=> bm!193342 (= call!193341 (simplify!89 (ite c!480340 (regTwo!18681 r!17423) (regOne!18680 r!17423))))))

(assert (= (and d!840006 c!480344) b!2938711))

(assert (= (and d!840006 (not c!480344)) b!2938708))

(assert (= (and b!2938708 c!480341) b!2938693))

(assert (= (and b!2938708 (not c!480341)) b!2938698))

(assert (= (and b!2938698 c!480343) b!2938696))

(assert (= (and b!2938698 (not c!480343)) b!2938705))

(assert (= (and b!2938705 c!480336) b!2938688))

(assert (= (and b!2938705 (not c!480336)) b!2938710))

(assert (= (and b!2938688 (not res!1213019)) b!2938704))

(assert (= (and b!2938688 c!480337) b!2938695))

(assert (= (and b!2938688 (not c!480337)) b!2938689))

(assert (= (and b!2938710 c!480340) b!2938691))

(assert (= (and b!2938710 (not c!480340)) b!2938694))

(assert (= (and b!2938691 c!480345) b!2938712))

(assert (= (and b!2938691 (not c!480345)) b!2938709))

(assert (= (and b!2938709 c!480339) b!2938706))

(assert (= (and b!2938709 (not c!480339)) b!2938697))

(assert (= (and b!2938694 (not res!1213018)) b!2938701))

(assert (= (and b!2938694 c!480342) b!2938690))

(assert (= (and b!2938694 (not c!480342)) b!2938707))

(assert (= (and b!2938707 c!480346) b!2938703))

(assert (= (and b!2938707 (not c!480346)) b!2938700))

(assert (= (and b!2938700 c!480338) b!2938699))

(assert (= (and b!2938700 (not c!480338)) b!2938692))

(assert (= (or b!2938691 b!2938694) bm!193338))

(assert (= (or b!2938691 b!2938694) bm!193342))

(assert (= (or b!2938709 b!2938694) bm!193336))

(assert (= (or b!2938691 b!2938701) bm!193340))

(assert (= (or b!2938704 b!2938700) bm!193341))

(assert (= (or b!2938688 bm!193338) bm!193337))

(assert (= (or b!2938688 bm!193340) bm!193339))

(assert (= (and d!840006 res!1213017) b!2938702))

(declare-fun m!3324525 () Bool)

(assert (=> b!2938702 m!3324525))

(declare-fun m!3324527 () Bool)

(assert (=> b!2938702 m!3324527))

(declare-fun m!3324529 () Bool)

(assert (=> bm!193337 m!3324529))

(declare-fun m!3324531 () Bool)

(assert (=> bm!193341 m!3324531))

(declare-fun m!3324533 () Bool)

(assert (=> b!2938707 m!3324533))

(declare-fun m!3324535 () Bool)

(assert (=> bm!193342 m!3324535))

(declare-fun m!3324537 () Bool)

(assert (=> bm!193336 m!3324537))

(declare-fun m!3324539 () Bool)

(assert (=> bm!193339 m!3324539))

(declare-fun m!3324541 () Bool)

(assert (=> d!840006 m!3324541))

(assert (=> d!840006 m!3324461))

(assert (=> b!2938497 d!840006))

(declare-fun d!840008 () Bool)

(assert (=> d!840008 (= (isEmpty!19086 s!11993) (is-Nil!34825 s!11993))))

(assert (=> b!2938498 d!840008))

(declare-fun bm!193350 () Bool)

(declare-fun call!193355 () Bool)

(declare-fun call!193357 () Bool)

(assert (=> bm!193350 (= call!193355 call!193357)))

(declare-fun b!2938738 () Bool)

(declare-fun e!1852284 () Bool)

(assert (=> b!2938738 (= e!1852284 call!193357)))

(declare-fun b!2938739 () Bool)

(declare-fun e!1852283 () Bool)

(assert (=> b!2938739 (= e!1852283 call!193355)))

(declare-fun b!2938740 () Bool)

(declare-fun e!1852286 () Bool)

(declare-fun call!193356 () Bool)

(assert (=> b!2938740 (= e!1852286 call!193356)))

(declare-fun b!2938741 () Bool)

(declare-fun res!1213027 () Bool)

(declare-fun e!1852281 () Bool)

(assert (=> b!2938741 (=> res!1213027 e!1852281)))

(assert (=> b!2938741 (= res!1213027 (not (is-Concat!14405 r!17423)))))

(declare-fun e!1852280 () Bool)

(assert (=> b!2938741 (= e!1852280 e!1852281)))

(declare-fun b!2938742 () Bool)

(declare-fun e!1852285 () Bool)

(assert (=> b!2938742 (= e!1852285 e!1852284)))

(declare-fun res!1213023 () Bool)

(assert (=> b!2938742 (= res!1213023 (not (nullable!2868 (reg!9413 r!17423))))))

(assert (=> b!2938742 (=> (not res!1213023) (not e!1852284))))

(declare-fun b!2938743 () Bool)

(assert (=> b!2938743 (= e!1852285 e!1852280)))

(declare-fun c!480358 () Bool)

(assert (=> b!2938743 (= c!480358 (is-Union!9084 r!17423))))

(declare-fun d!840010 () Bool)

(declare-fun res!1213026 () Bool)

(declare-fun e!1852282 () Bool)

(assert (=> d!840010 (=> res!1213026 e!1852282)))

(assert (=> d!840010 (= res!1213026 (is-ElementMatch!9084 r!17423))))

(assert (=> d!840010 (= (validRegex!3817 r!17423) e!1852282)))

(declare-fun bm!193351 () Bool)

(declare-fun c!480359 () Bool)

(assert (=> bm!193351 (= call!193357 (validRegex!3817 (ite c!480359 (reg!9413 r!17423) (ite c!480358 (regTwo!18681 r!17423) (regOne!18680 r!17423)))))))

(declare-fun bm!193352 () Bool)

(assert (=> bm!193352 (= call!193356 (validRegex!3817 (ite c!480358 (regOne!18681 r!17423) (regTwo!18680 r!17423))))))

(declare-fun b!2938744 () Bool)

(assert (=> b!2938744 (= e!1852281 e!1852286)))

(declare-fun res!1213024 () Bool)

(assert (=> b!2938744 (=> (not res!1213024) (not e!1852286))))

(assert (=> b!2938744 (= res!1213024 call!193355)))

(declare-fun b!2938745 () Bool)

(declare-fun res!1213025 () Bool)

(assert (=> b!2938745 (=> (not res!1213025) (not e!1852283))))

(assert (=> b!2938745 (= res!1213025 call!193356)))

(assert (=> b!2938745 (= e!1852280 e!1852283)))

(declare-fun b!2938746 () Bool)

(assert (=> b!2938746 (= e!1852282 e!1852285)))

(assert (=> b!2938746 (= c!480359 (is-Star!9084 r!17423))))

(assert (= (and d!840010 (not res!1213026)) b!2938746))

(assert (= (and b!2938746 c!480359) b!2938742))

(assert (= (and b!2938746 (not c!480359)) b!2938743))

(assert (= (and b!2938742 res!1213023) b!2938738))

(assert (= (and b!2938743 c!480358) b!2938745))

(assert (= (and b!2938743 (not c!480358)) b!2938741))

(assert (= (and b!2938745 res!1213025) b!2938739))

(assert (= (and b!2938741 (not res!1213027)) b!2938744))

(assert (= (and b!2938744 res!1213024) b!2938740))

(assert (= (or b!2938745 b!2938740) bm!193352))

(assert (= (or b!2938739 b!2938744) bm!193350))

(assert (= (or b!2938738 bm!193350) bm!193351))

(declare-fun m!3324543 () Bool)

(assert (=> b!2938742 m!3324543))

(declare-fun m!3324545 () Bool)

(assert (=> bm!193351 m!3324545))

(declare-fun m!3324547 () Bool)

(assert (=> bm!193352 m!3324547))

(assert (=> start!285478 d!840010))

(declare-fun d!840012 () Bool)

(assert (=> d!840012 (= (isEmptyLang!212 lt!1029607) (is-EmptyLang!9084 lt!1029607))))

(assert (=> b!2938496 d!840012))

(declare-fun b!2938756 () Bool)

(declare-fun c!480363 () Bool)

(declare-fun e!1852297 () Bool)

(assert (=> b!2938756 (= c!480363 e!1852297)))

(declare-fun res!1213035 () Bool)

(assert (=> b!2938756 (=> res!1213035 e!1852297)))

(declare-fun call!193367 () Bool)

(assert (=> b!2938756 (= res!1213035 call!193367)))

(declare-fun lt!1029665 () Regex!9084)

(declare-fun call!193366 () Regex!9084)

(assert (=> b!2938756 (= lt!1029665 call!193366)))

(declare-fun e!1852306 () Regex!9084)

(declare-fun e!1852307 () Regex!9084)

(assert (=> b!2938756 (= e!1852306 e!1852307)))

(declare-fun b!2938757 () Bool)

(assert (=> b!2938757 (= e!1852307 (Star!9084 lt!1029665))))

(declare-fun lt!1029664 () Regex!9084)

(declare-fun call!193363 () Bool)

(declare-fun c!480366 () Bool)

(declare-fun bm!193356 () Bool)

(declare-fun lt!1029666 () Regex!9084)

(assert (=> bm!193356 (= call!193363 (isEmptyLang!212 (ite c!480366 lt!1029664 lt!1029666)))))

(declare-fun b!2938758 () Bool)

(declare-fun e!1852303 () Regex!9084)

(assert (=> b!2938758 (= e!1852303 EmptyLang!9084)))

(declare-fun b!2938759 () Bool)

(declare-fun e!1852301 () Regex!9084)

(declare-fun e!1852300 () Regex!9084)

(assert (=> b!2938759 (= e!1852301 e!1852300)))

(declare-fun lt!1029669 () Regex!9084)

(declare-fun call!193365 () Regex!9084)

(assert (=> b!2938759 (= lt!1029669 call!193365)))

(declare-fun call!193360 () Regex!9084)

(assert (=> b!2938759 (= lt!1029664 call!193360)))

(declare-fun c!480371 () Bool)

(declare-fun call!193362 () Bool)

(assert (=> b!2938759 (= c!480371 call!193362)))

(declare-fun b!2938760 () Bool)

(declare-fun e!1852302 () Regex!9084)

(declare-fun lt!1029667 () Regex!9084)

(assert (=> b!2938760 (= e!1852302 (Concat!14405 lt!1029666 lt!1029667))))

(declare-fun b!2938761 () Bool)

(declare-fun e!1852293 () Regex!9084)

(assert (=> b!2938761 (= e!1852293 (regTwo!18680 r!17423))))

(declare-fun d!840016 () Bool)

(declare-fun e!1852296 () Bool)

(assert (=> d!840016 e!1852296))

(declare-fun res!1213032 () Bool)

(assert (=> d!840016 (=> (not res!1213032) (not e!1852296))))

(declare-fun lt!1029668 () Regex!9084)

(assert (=> d!840016 (= res!1213032 (validRegex!3817 lt!1029668))))

(declare-fun e!1852298 () Regex!9084)

(assert (=> d!840016 (= lt!1029668 e!1852298)))

(declare-fun c!480370 () Bool)

(assert (=> d!840016 (= c!480370 (is-EmptyLang!9084 (regTwo!18680 r!17423)))))

(assert (=> d!840016 (validRegex!3817 (regTwo!18680 r!17423))))

(assert (=> d!840016 (= (simplify!89 (regTwo!18680 r!17423)) lt!1029668)))

(declare-fun b!2938762 () Bool)

(assert (=> b!2938762 (= e!1852301 e!1852303)))

(assert (=> b!2938762 (= lt!1029666 call!193360)))

(assert (=> b!2938762 (= lt!1029667 call!193365)))

(declare-fun res!1213034 () Bool)

(assert (=> b!2938762 (= res!1213034 call!193363)))

(declare-fun e!1852305 () Bool)

(assert (=> b!2938762 (=> res!1213034 e!1852305)))

(declare-fun c!480368 () Bool)

(assert (=> b!2938762 (= c!480368 e!1852305)))

(declare-fun bm!193357 () Bool)

(declare-fun c!480362 () Bool)

(assert (=> bm!193357 (= call!193366 (simplify!89 (ite c!480362 (reg!9413 (regTwo!18680 r!17423)) (ite c!480366 (regOne!18681 (regTwo!18680 r!17423)) (regTwo!18680 (regTwo!18680 r!17423))))))))

(declare-fun bm!193358 () Bool)

(assert (=> bm!193358 (= call!193365 call!193366)))

(declare-fun bm!193359 () Bool)

(assert (=> bm!193359 (= call!193367 (isEmptyLang!212 (ite c!480362 lt!1029665 (ite c!480366 lt!1029669 lt!1029667))))))

(declare-fun b!2938763 () Bool)

(assert (=> b!2938763 (= e!1852307 EmptyExpr!9084)))

(declare-fun b!2938764 () Bool)

(declare-fun e!1852299 () Regex!9084)

(assert (=> b!2938764 (= e!1852299 EmptyExpr!9084)))

(declare-fun b!2938765 () Bool)

(declare-fun e!1852292 () Regex!9084)

(assert (=> b!2938765 (= e!1852292 (Union!9084 lt!1029669 lt!1029664))))

(declare-fun bm!193360 () Bool)

(assert (=> bm!193360 (= call!193362 call!193367)))

(declare-fun b!2938766 () Bool)

(declare-fun c!480369 () Bool)

(assert (=> b!2938766 (= c!480369 (is-EmptyExpr!9084 (regTwo!18680 r!17423)))))

(assert (=> b!2938766 (= e!1852293 e!1852299)))

(declare-fun b!2938767 () Bool)

(assert (=> b!2938767 (= e!1852302 lt!1029666)))

(declare-fun call!193364 () Bool)

(declare-fun bm!193361 () Bool)

(assert (=> bm!193361 (= call!193364 (isEmptyExpr!295 (ite c!480362 lt!1029665 lt!1029667)))))

(declare-fun b!2938768 () Bool)

(declare-fun e!1852304 () Regex!9084)

(assert (=> b!2938768 (= e!1852304 e!1852302)))

(declare-fun c!480364 () Bool)

(assert (=> b!2938768 (= c!480364 call!193364)))

(declare-fun b!2938769 () Bool)

(assert (=> b!2938769 (= e!1852305 call!193362)))

(declare-fun b!2938770 () Bool)

(assert (=> b!2938770 (= e!1852296 (= (nullable!2868 lt!1029668) (nullable!2868 (regTwo!18680 r!17423))))))

(declare-fun b!2938771 () Bool)

(assert (=> b!2938771 (= e!1852304 lt!1029667)))

(declare-fun b!2938772 () Bool)

(assert (=> b!2938772 (= e!1852297 call!193364)))

(declare-fun b!2938773 () Bool)

(assert (=> b!2938773 (= e!1852299 e!1852306)))

(assert (=> b!2938773 (= c!480362 (is-Star!9084 (regTwo!18680 r!17423)))))

(declare-fun b!2938774 () Bool)

(assert (=> b!2938774 (= e!1852292 lt!1029669)))

(declare-fun b!2938775 () Bool)

(declare-fun c!480372 () Bool)

(assert (=> b!2938775 (= c!480372 (isEmptyExpr!295 lt!1029666))))

(assert (=> b!2938775 (= e!1852303 e!1852304)))

(declare-fun b!2938776 () Bool)

(assert (=> b!2938776 (= e!1852298 e!1852293)))

(declare-fun c!480367 () Bool)

(assert (=> b!2938776 (= c!480367 (is-ElementMatch!9084 (regTwo!18680 r!17423)))))

(declare-fun b!2938777 () Bool)

(declare-fun c!480365 () Bool)

(assert (=> b!2938777 (= c!480365 call!193363)))

(assert (=> b!2938777 (= e!1852300 e!1852292)))

(declare-fun b!2938778 () Bool)

(assert (=> b!2938778 (= c!480366 (is-Union!9084 (regTwo!18680 r!17423)))))

(assert (=> b!2938778 (= e!1852306 e!1852301)))

(declare-fun b!2938779 () Bool)

(assert (=> b!2938779 (= e!1852298 EmptyLang!9084)))

(declare-fun b!2938780 () Bool)

(assert (=> b!2938780 (= e!1852300 lt!1029664)))

(declare-fun bm!193362 () Bool)

(assert (=> bm!193362 (= call!193360 (simplify!89 (ite c!480366 (regTwo!18681 (regTwo!18680 r!17423)) (regOne!18680 (regTwo!18680 r!17423)))))))

(assert (= (and d!840016 c!480370) b!2938779))

(assert (= (and d!840016 (not c!480370)) b!2938776))

(assert (= (and b!2938776 c!480367) b!2938761))

(assert (= (and b!2938776 (not c!480367)) b!2938766))

(assert (= (and b!2938766 c!480369) b!2938764))

(assert (= (and b!2938766 (not c!480369)) b!2938773))

(assert (= (and b!2938773 c!480362) b!2938756))

(assert (= (and b!2938773 (not c!480362)) b!2938778))

(assert (= (and b!2938756 (not res!1213035)) b!2938772))

(assert (= (and b!2938756 c!480363) b!2938763))

(assert (= (and b!2938756 (not c!480363)) b!2938757))

(assert (= (and b!2938778 c!480366) b!2938759))

(assert (= (and b!2938778 (not c!480366)) b!2938762))

(assert (= (and b!2938759 c!480371) b!2938780))

(assert (= (and b!2938759 (not c!480371)) b!2938777))

(assert (= (and b!2938777 c!480365) b!2938774))

(assert (= (and b!2938777 (not c!480365)) b!2938765))

(assert (= (and b!2938762 (not res!1213034)) b!2938769))

(assert (= (and b!2938762 c!480368) b!2938758))

(assert (= (and b!2938762 (not c!480368)) b!2938775))

(assert (= (and b!2938775 c!480372) b!2938771))

(assert (= (and b!2938775 (not c!480372)) b!2938768))

(assert (= (and b!2938768 c!480364) b!2938767))

(assert (= (and b!2938768 (not c!480364)) b!2938760))

(assert (= (or b!2938759 b!2938762) bm!193358))

(assert (= (or b!2938759 b!2938762) bm!193362))

(assert (= (or b!2938777 b!2938762) bm!193356))

(assert (= (or b!2938759 b!2938769) bm!193360))

(assert (= (or b!2938772 b!2938768) bm!193361))

(assert (= (or b!2938756 bm!193358) bm!193357))

(assert (= (or b!2938756 bm!193360) bm!193359))

(assert (= (and d!840016 res!1213032) b!2938770))

(declare-fun m!3324573 () Bool)

(assert (=> b!2938770 m!3324573))

(declare-fun m!3324575 () Bool)

(assert (=> b!2938770 m!3324575))

(declare-fun m!3324577 () Bool)

(assert (=> bm!193357 m!3324577))

(declare-fun m!3324579 () Bool)

(assert (=> bm!193361 m!3324579))

(declare-fun m!3324581 () Bool)

(assert (=> b!2938775 m!3324581))

(declare-fun m!3324583 () Bool)

(assert (=> bm!193362 m!3324583))

(declare-fun m!3324585 () Bool)

(assert (=> bm!193356 m!3324585))

(declare-fun m!3324587 () Bool)

(assert (=> bm!193359 m!3324587))

(declare-fun m!3324589 () Bool)

(assert (=> d!840016 m!3324589))

(declare-fun m!3324591 () Bool)

(assert (=> d!840016 m!3324591))

(assert (=> b!2938496 d!840016))

(declare-fun b!2938806 () Bool)

(declare-fun c!480385 () Bool)

(declare-fun e!1852325 () Bool)

(assert (=> b!2938806 (= c!480385 e!1852325)))

(declare-fun res!1213041 () Bool)

(assert (=> b!2938806 (=> res!1213041 e!1852325)))

(declare-fun call!193381 () Bool)

(assert (=> b!2938806 (= res!1213041 call!193381)))

(declare-fun lt!1029677 () Regex!9084)

(declare-fun call!193380 () Regex!9084)

(assert (=> b!2938806 (= lt!1029677 call!193380)))

(declare-fun e!1852334 () Regex!9084)

(declare-fun e!1852335 () Regex!9084)

(assert (=> b!2938806 (= e!1852334 e!1852335)))

(declare-fun b!2938807 () Bool)

(assert (=> b!2938807 (= e!1852335 (Star!9084 lt!1029677))))

(declare-fun lt!1029678 () Regex!9084)

(declare-fun c!480388 () Bool)

(declare-fun call!193377 () Bool)

(declare-fun bm!193370 () Bool)

(declare-fun lt!1029676 () Regex!9084)

(assert (=> bm!193370 (= call!193377 (isEmptyLang!212 (ite c!480388 lt!1029676 lt!1029678)))))

(declare-fun b!2938808 () Bool)

(declare-fun e!1852331 () Regex!9084)

(assert (=> b!2938808 (= e!1852331 EmptyLang!9084)))

(declare-fun b!2938809 () Bool)

(declare-fun e!1852329 () Regex!9084)

(declare-fun e!1852328 () Regex!9084)

(assert (=> b!2938809 (= e!1852329 e!1852328)))

(declare-fun lt!1029681 () Regex!9084)

(declare-fun call!193379 () Regex!9084)

(assert (=> b!2938809 (= lt!1029681 call!193379)))

(declare-fun call!193375 () Regex!9084)

(assert (=> b!2938809 (= lt!1029676 call!193375)))

(declare-fun c!480393 () Bool)

(declare-fun call!193376 () Bool)

(assert (=> b!2938809 (= c!480393 call!193376)))

(declare-fun b!2938810 () Bool)

(declare-fun e!1852330 () Regex!9084)

(declare-fun lt!1029679 () Regex!9084)

(assert (=> b!2938810 (= e!1852330 (Concat!14405 lt!1029678 lt!1029679))))

(declare-fun b!2938811 () Bool)

(declare-fun e!1852323 () Regex!9084)

(assert (=> b!2938811 (= e!1852323 (regOne!18680 r!17423))))

(declare-fun d!840022 () Bool)

(declare-fun e!1852324 () Bool)

(assert (=> d!840022 e!1852324))

(declare-fun res!1213039 () Bool)

(assert (=> d!840022 (=> (not res!1213039) (not e!1852324))))

(declare-fun lt!1029680 () Regex!9084)

(assert (=> d!840022 (= res!1213039 (validRegex!3817 lt!1029680))))

(declare-fun e!1852326 () Regex!9084)

(assert (=> d!840022 (= lt!1029680 e!1852326)))

(declare-fun c!480392 () Bool)

(assert (=> d!840022 (= c!480392 (is-EmptyLang!9084 (regOne!18680 r!17423)))))

(assert (=> d!840022 (validRegex!3817 (regOne!18680 r!17423))))

(assert (=> d!840022 (= (simplify!89 (regOne!18680 r!17423)) lt!1029680)))

(declare-fun b!2938812 () Bool)

(assert (=> b!2938812 (= e!1852329 e!1852331)))

(assert (=> b!2938812 (= lt!1029678 call!193375)))

(assert (=> b!2938812 (= lt!1029679 call!193379)))

(declare-fun res!1213040 () Bool)

(assert (=> b!2938812 (= res!1213040 call!193377)))

(declare-fun e!1852333 () Bool)

(assert (=> b!2938812 (=> res!1213040 e!1852333)))

(declare-fun c!480390 () Bool)

(assert (=> b!2938812 (= c!480390 e!1852333)))

(declare-fun bm!193371 () Bool)

(declare-fun c!480384 () Bool)

(assert (=> bm!193371 (= call!193380 (simplify!89 (ite c!480384 (reg!9413 (regOne!18680 r!17423)) (ite c!480388 (regOne!18681 (regOne!18680 r!17423)) (regTwo!18680 (regOne!18680 r!17423))))))))

(declare-fun bm!193372 () Bool)

(assert (=> bm!193372 (= call!193379 call!193380)))

(declare-fun bm!193373 () Bool)

(assert (=> bm!193373 (= call!193381 (isEmptyLang!212 (ite c!480384 lt!1029677 (ite c!480388 lt!1029681 lt!1029679))))))

(declare-fun b!2938813 () Bool)

(assert (=> b!2938813 (= e!1852335 EmptyExpr!9084)))

(declare-fun b!2938814 () Bool)

(declare-fun e!1852327 () Regex!9084)

(assert (=> b!2938814 (= e!1852327 EmptyExpr!9084)))

(declare-fun b!2938815 () Bool)

(declare-fun e!1852322 () Regex!9084)

(assert (=> b!2938815 (= e!1852322 (Union!9084 lt!1029681 lt!1029676))))

(declare-fun bm!193374 () Bool)

(assert (=> bm!193374 (= call!193376 call!193381)))

(declare-fun b!2938816 () Bool)

(declare-fun c!480391 () Bool)

(assert (=> b!2938816 (= c!480391 (is-EmptyExpr!9084 (regOne!18680 r!17423)))))

(assert (=> b!2938816 (= e!1852323 e!1852327)))

(declare-fun b!2938817 () Bool)

(assert (=> b!2938817 (= e!1852330 lt!1029678)))

(declare-fun call!193378 () Bool)

(declare-fun bm!193375 () Bool)

(assert (=> bm!193375 (= call!193378 (isEmptyExpr!295 (ite c!480384 lt!1029677 lt!1029679)))))

(declare-fun b!2938818 () Bool)

(declare-fun e!1852332 () Regex!9084)

(assert (=> b!2938818 (= e!1852332 e!1852330)))

(declare-fun c!480386 () Bool)

(assert (=> b!2938818 (= c!480386 call!193378)))

(declare-fun b!2938819 () Bool)

(assert (=> b!2938819 (= e!1852333 call!193376)))

(declare-fun b!2938820 () Bool)

(assert (=> b!2938820 (= e!1852324 (= (nullable!2868 lt!1029680) (nullable!2868 (regOne!18680 r!17423))))))

(declare-fun b!2938821 () Bool)

(assert (=> b!2938821 (= e!1852332 lt!1029679)))

(declare-fun b!2938822 () Bool)

(assert (=> b!2938822 (= e!1852325 call!193378)))

(declare-fun b!2938823 () Bool)

(assert (=> b!2938823 (= e!1852327 e!1852334)))

(assert (=> b!2938823 (= c!480384 (is-Star!9084 (regOne!18680 r!17423)))))

(declare-fun b!2938824 () Bool)

(assert (=> b!2938824 (= e!1852322 lt!1029681)))

(declare-fun b!2938825 () Bool)

(declare-fun c!480394 () Bool)

(assert (=> b!2938825 (= c!480394 (isEmptyExpr!295 lt!1029678))))

(assert (=> b!2938825 (= e!1852331 e!1852332)))

(declare-fun b!2938826 () Bool)

(assert (=> b!2938826 (= e!1852326 e!1852323)))

(declare-fun c!480389 () Bool)

(assert (=> b!2938826 (= c!480389 (is-ElementMatch!9084 (regOne!18680 r!17423)))))

(declare-fun b!2938827 () Bool)

(declare-fun c!480387 () Bool)

(assert (=> b!2938827 (= c!480387 call!193377)))

(assert (=> b!2938827 (= e!1852328 e!1852322)))

(declare-fun b!2938828 () Bool)

(assert (=> b!2938828 (= c!480388 (is-Union!9084 (regOne!18680 r!17423)))))

(assert (=> b!2938828 (= e!1852334 e!1852329)))

(declare-fun b!2938829 () Bool)

(assert (=> b!2938829 (= e!1852326 EmptyLang!9084)))

(declare-fun b!2938830 () Bool)

(assert (=> b!2938830 (= e!1852328 lt!1029676)))

(declare-fun bm!193376 () Bool)

(assert (=> bm!193376 (= call!193375 (simplify!89 (ite c!480388 (regTwo!18681 (regOne!18680 r!17423)) (regOne!18680 (regOne!18680 r!17423)))))))

(assert (= (and d!840022 c!480392) b!2938829))

(assert (= (and d!840022 (not c!480392)) b!2938826))

(assert (= (and b!2938826 c!480389) b!2938811))

(assert (= (and b!2938826 (not c!480389)) b!2938816))

(assert (= (and b!2938816 c!480391) b!2938814))

(assert (= (and b!2938816 (not c!480391)) b!2938823))

(assert (= (and b!2938823 c!480384) b!2938806))

(assert (= (and b!2938823 (not c!480384)) b!2938828))

(assert (= (and b!2938806 (not res!1213041)) b!2938822))

(assert (= (and b!2938806 c!480385) b!2938813))

(assert (= (and b!2938806 (not c!480385)) b!2938807))

(assert (= (and b!2938828 c!480388) b!2938809))

(assert (= (and b!2938828 (not c!480388)) b!2938812))

(assert (= (and b!2938809 c!480393) b!2938830))

(assert (= (and b!2938809 (not c!480393)) b!2938827))

(assert (= (and b!2938827 c!480387) b!2938824))

(assert (= (and b!2938827 (not c!480387)) b!2938815))

(assert (= (and b!2938812 (not res!1213040)) b!2938819))

(assert (= (and b!2938812 c!480390) b!2938808))

(assert (= (and b!2938812 (not c!480390)) b!2938825))

(assert (= (and b!2938825 c!480394) b!2938821))

(assert (= (and b!2938825 (not c!480394)) b!2938818))

(assert (= (and b!2938818 c!480386) b!2938817))

(assert (= (and b!2938818 (not c!480386)) b!2938810))

(assert (= (or b!2938809 b!2938812) bm!193372))

(assert (= (or b!2938809 b!2938812) bm!193376))

(assert (= (or b!2938827 b!2938812) bm!193370))

(assert (= (or b!2938809 b!2938819) bm!193374))

(assert (= (or b!2938822 b!2938818) bm!193375))

(assert (= (or b!2938806 bm!193372) bm!193371))

(assert (= (or b!2938806 bm!193374) bm!193373))

(assert (= (and d!840022 res!1213039) b!2938820))

(declare-fun m!3324593 () Bool)

(assert (=> b!2938820 m!3324593))

(declare-fun m!3324595 () Bool)

(assert (=> b!2938820 m!3324595))

(declare-fun m!3324597 () Bool)

(assert (=> bm!193371 m!3324597))

(declare-fun m!3324599 () Bool)

(assert (=> bm!193375 m!3324599))

(declare-fun m!3324601 () Bool)

(assert (=> b!2938825 m!3324601))

(declare-fun m!3324603 () Bool)

(assert (=> bm!193376 m!3324603))

(declare-fun m!3324605 () Bool)

(assert (=> bm!193370 m!3324605))

(declare-fun m!3324607 () Bool)

(assert (=> bm!193373 m!3324607))

(declare-fun m!3324609 () Bool)

(assert (=> d!840022 m!3324609))

(declare-fun m!3324611 () Bool)

(assert (=> d!840022 m!3324611))

(assert (=> b!2938496 d!840022))

(declare-fun b!2938971 () Bool)

(assert (=> b!2938971 true))

(assert (=> b!2938971 true))

(declare-fun bs!525474 () Bool)

(declare-fun b!2938976 () Bool)

(assert (= bs!525474 (and b!2938976 b!2938971)))

(declare-fun lambda!109470 () Int)

(declare-fun lambda!109469 () Int)

(assert (=> bs!525474 (not (= lambda!109470 lambda!109469))))

(assert (=> b!2938976 true))

(assert (=> b!2938976 true))

(declare-fun b!2938966 () Bool)

(declare-fun c!480434 () Bool)

(assert (=> b!2938966 (= c!480434 (is-ElementMatch!9084 r!17423))))

(declare-fun e!1852411 () Bool)

(declare-fun e!1852414 () Bool)

(assert (=> b!2938966 (= e!1852411 e!1852414)))

(declare-fun b!2938967 () Bool)

(declare-fun e!1852410 () Bool)

(declare-fun e!1852413 () Bool)

(assert (=> b!2938967 (= e!1852410 e!1852413)))

(declare-fun c!480435 () Bool)

(assert (=> b!2938967 (= c!480435 (is-Star!9084 r!17423))))

(declare-fun d!840024 () Bool)

(declare-fun c!480436 () Bool)

(assert (=> d!840024 (= c!480436 (is-EmptyExpr!9084 r!17423))))

(declare-fun e!1852416 () Bool)

(assert (=> d!840024 (= (matchRSpec!1221 r!17423 s!11993) e!1852416)))

(declare-fun b!2938968 () Bool)

(assert (=> b!2938968 (= e!1852416 e!1852411)))

(declare-fun res!1213100 () Bool)

(assert (=> b!2938968 (= res!1213100 (not (is-EmptyLang!9084 r!17423)))))

(assert (=> b!2938968 (=> (not res!1213100) (not e!1852411))))

(declare-fun bm!193392 () Bool)

(declare-fun call!193397 () Bool)

(assert (=> bm!193392 (= call!193397 (isEmpty!19086 s!11993))))

(declare-fun b!2938969 () Bool)

(assert (=> b!2938969 (= e!1852414 (= s!11993 (Cons!34825 (c!480278 r!17423) Nil!34825)))))

(declare-fun b!2938970 () Bool)

(declare-fun e!1852415 () Bool)

(assert (=> b!2938970 (= e!1852415 (matchRSpec!1221 (regTwo!18681 r!17423) s!11993))))

(declare-fun e!1852412 () Bool)

(declare-fun call!193398 () Bool)

(assert (=> b!2938971 (= e!1852412 call!193398)))

(declare-fun b!2938972 () Bool)

(assert (=> b!2938972 (= e!1852416 call!193397)))

(declare-fun b!2938973 () Bool)

(assert (=> b!2938973 (= e!1852410 e!1852415)))

(declare-fun res!1213099 () Bool)

(assert (=> b!2938973 (= res!1213099 (matchRSpec!1221 (regOne!18681 r!17423) s!11993))))

(assert (=> b!2938973 (=> res!1213099 e!1852415)))

(declare-fun bm!193393 () Bool)

(declare-fun Exists!1442 (Int) Bool)

(assert (=> bm!193393 (= call!193398 (Exists!1442 (ite c!480435 lambda!109469 lambda!109470)))))

(declare-fun b!2938974 () Bool)

(declare-fun c!480437 () Bool)

(assert (=> b!2938974 (= c!480437 (is-Union!9084 r!17423))))

(assert (=> b!2938974 (= e!1852414 e!1852410)))

(declare-fun b!2938975 () Bool)

(declare-fun res!1213101 () Bool)

(assert (=> b!2938975 (=> res!1213101 e!1852412)))

(assert (=> b!2938975 (= res!1213101 call!193397)))

(assert (=> b!2938975 (= e!1852413 e!1852412)))

(assert (=> b!2938976 (= e!1852413 call!193398)))

(assert (= (and d!840024 c!480436) b!2938972))

(assert (= (and d!840024 (not c!480436)) b!2938968))

(assert (= (and b!2938968 res!1213100) b!2938966))

(assert (= (and b!2938966 c!480434) b!2938969))

(assert (= (and b!2938966 (not c!480434)) b!2938974))

(assert (= (and b!2938974 c!480437) b!2938973))

(assert (= (and b!2938974 (not c!480437)) b!2938967))

(assert (= (and b!2938973 (not res!1213099)) b!2938970))

(assert (= (and b!2938967 c!480435) b!2938975))

(assert (= (and b!2938967 (not c!480435)) b!2938976))

(assert (= (and b!2938975 (not res!1213101)) b!2938971))

(assert (= (or b!2938971 b!2938976) bm!193393))

(assert (= (or b!2938972 b!2938975) bm!193392))

(assert (=> bm!193392 m!3324479))

(declare-fun m!3324675 () Bool)

(assert (=> b!2938970 m!3324675))

(declare-fun m!3324677 () Bool)

(assert (=> b!2938973 m!3324677))

(declare-fun m!3324679 () Bool)

(assert (=> bm!193393 m!3324679))

(assert (=> b!2938500 d!840024))

(declare-fun b!2939009 () Bool)

(declare-fun e!1852433 () Bool)

(declare-fun e!1852436 () Bool)

(assert (=> b!2939009 (= e!1852433 e!1852436)))

(declare-fun res!1213125 () Bool)

(assert (=> b!2939009 (=> res!1213125 e!1852436)))

(declare-fun call!193401 () Bool)

(assert (=> b!2939009 (= res!1213125 call!193401)))

(declare-fun b!2939010 () Bool)

(declare-fun res!1213120 () Bool)

(declare-fun e!1852434 () Bool)

(assert (=> b!2939010 (=> res!1213120 e!1852434)))

(assert (=> b!2939010 (= res!1213120 (not (is-ElementMatch!9084 r!17423)))))

(declare-fun e!1852432 () Bool)

(assert (=> b!2939010 (= e!1852432 e!1852434)))

(declare-fun b!2939011 () Bool)

(declare-fun res!1213124 () Bool)

(declare-fun e!1852437 () Bool)

(assert (=> b!2939011 (=> (not res!1213124) (not e!1852437))))

(declare-fun tail!4764 (List!34949) List!34949)

(assert (=> b!2939011 (= res!1213124 (isEmpty!19086 (tail!4764 s!11993)))))

(declare-fun b!2939012 () Bool)

(declare-fun e!1852431 () Bool)

(assert (=> b!2939012 (= e!1852431 e!1852432)))

(declare-fun c!480444 () Bool)

(assert (=> b!2939012 (= c!480444 (is-EmptyLang!9084 r!17423))))

(declare-fun b!2939013 () Bool)

(declare-fun lt!1029697 () Bool)

(assert (=> b!2939013 (= e!1852431 (= lt!1029697 call!193401))))

(declare-fun b!2939014 () Bool)

(declare-fun e!1852435 () Bool)

(declare-fun derivativeStep!2479 (Regex!9084 C!18354) Regex!9084)

(declare-fun head!6538 (List!34949) C!18354)

(assert (=> b!2939014 (= e!1852435 (matchR!3966 (derivativeStep!2479 r!17423 (head!6538 s!11993)) (tail!4764 s!11993)))))

(declare-fun b!2939015 () Bool)

(assert (=> b!2939015 (= e!1852435 (nullable!2868 r!17423))))

(declare-fun b!2939016 () Bool)

(declare-fun res!1213118 () Bool)

(assert (=> b!2939016 (=> (not res!1213118) (not e!1852437))))

(assert (=> b!2939016 (= res!1213118 (not call!193401))))

(declare-fun b!2939017 () Bool)

(assert (=> b!2939017 (= e!1852432 (not lt!1029697))))

(declare-fun d!840038 () Bool)

(assert (=> d!840038 e!1852431))

(declare-fun c!480445 () Bool)

(assert (=> d!840038 (= c!480445 (is-EmptyExpr!9084 r!17423))))

(assert (=> d!840038 (= lt!1029697 e!1852435)))

(declare-fun c!480446 () Bool)

(assert (=> d!840038 (= c!480446 (isEmpty!19086 s!11993))))

(assert (=> d!840038 (validRegex!3817 r!17423)))

(assert (=> d!840038 (= (matchR!3966 r!17423 s!11993) lt!1029697)))

(declare-fun b!2939018 () Bool)

(declare-fun res!1213121 () Bool)

(assert (=> b!2939018 (=> res!1213121 e!1852434)))

(assert (=> b!2939018 (= res!1213121 e!1852437)))

(declare-fun res!1213119 () Bool)

(assert (=> b!2939018 (=> (not res!1213119) (not e!1852437))))

(assert (=> b!2939018 (= res!1213119 lt!1029697)))

(declare-fun b!2939019 () Bool)

(assert (=> b!2939019 (= e!1852437 (= (head!6538 s!11993) (c!480278 r!17423)))))

(declare-fun b!2939020 () Bool)

(assert (=> b!2939020 (= e!1852434 e!1852433)))

(declare-fun res!1213123 () Bool)

(assert (=> b!2939020 (=> (not res!1213123) (not e!1852433))))

(assert (=> b!2939020 (= res!1213123 (not lt!1029697))))

(declare-fun b!2939021 () Bool)

(declare-fun res!1213122 () Bool)

(assert (=> b!2939021 (=> res!1213122 e!1852436)))

(assert (=> b!2939021 (= res!1213122 (not (isEmpty!19086 (tail!4764 s!11993))))))

(declare-fun b!2939022 () Bool)

(assert (=> b!2939022 (= e!1852436 (not (= (head!6538 s!11993) (c!480278 r!17423))))))

(declare-fun bm!193396 () Bool)

(assert (=> bm!193396 (= call!193401 (isEmpty!19086 s!11993))))

(assert (= (and d!840038 c!480446) b!2939015))

(assert (= (and d!840038 (not c!480446)) b!2939014))

(assert (= (and d!840038 c!480445) b!2939013))

(assert (= (and d!840038 (not c!480445)) b!2939012))

(assert (= (and b!2939012 c!480444) b!2939017))

(assert (= (and b!2939012 (not c!480444)) b!2939010))

(assert (= (and b!2939010 (not res!1213120)) b!2939018))

(assert (= (and b!2939018 res!1213119) b!2939016))

(assert (= (and b!2939016 res!1213118) b!2939011))

(assert (= (and b!2939011 res!1213124) b!2939019))

(assert (= (and b!2939018 (not res!1213121)) b!2939020))

(assert (= (and b!2939020 res!1213123) b!2939009))

(assert (= (and b!2939009 (not res!1213125)) b!2939021))

(assert (= (and b!2939021 (not res!1213122)) b!2939022))

(assert (= (or b!2939013 b!2939009 b!2939016) bm!193396))

(declare-fun m!3324681 () Bool)

(assert (=> b!2939014 m!3324681))

(assert (=> b!2939014 m!3324681))

(declare-fun m!3324683 () Bool)

(assert (=> b!2939014 m!3324683))

(declare-fun m!3324685 () Bool)

(assert (=> b!2939014 m!3324685))

(assert (=> b!2939014 m!3324683))

(assert (=> b!2939014 m!3324685))

(declare-fun m!3324687 () Bool)

(assert (=> b!2939014 m!3324687))

(assert (=> d!840038 m!3324479))

(assert (=> d!840038 m!3324461))

(assert (=> b!2939015 m!3324527))

(assert (=> b!2939021 m!3324685))

(assert (=> b!2939021 m!3324685))

(declare-fun m!3324689 () Bool)

(assert (=> b!2939021 m!3324689))

(assert (=> b!2939022 m!3324681))

(assert (=> b!2939019 m!3324681))

(assert (=> b!2939011 m!3324685))

(assert (=> b!2939011 m!3324685))

(assert (=> b!2939011 m!3324689))

(assert (=> bm!193396 m!3324479))

(assert (=> b!2938500 d!840038))

(declare-fun d!840040 () Bool)

(assert (=> d!840040 (= (matchR!3966 r!17423 s!11993) (matchRSpec!1221 r!17423 s!11993))))

(declare-fun lt!1029700 () Unit!48547)

(declare-fun choose!17381 (Regex!9084 List!34949) Unit!48547)

(assert (=> d!840040 (= lt!1029700 (choose!17381 r!17423 s!11993))))

(assert (=> d!840040 (validRegex!3817 r!17423)))

(assert (=> d!840040 (= (mainMatchTheorem!1221 r!17423 s!11993) lt!1029700)))

(declare-fun bs!525475 () Bool)

(assert (= bs!525475 d!840040))

(assert (=> bs!525475 m!3324483))

(assert (=> bs!525475 m!3324481))

(declare-fun m!3324691 () Bool)

(assert (=> bs!525475 m!3324691))

(assert (=> bs!525475 m!3324461))

(assert (=> b!2938500 d!840040))

(declare-fun b!2939023 () Bool)

(declare-fun e!1852440 () Bool)

(declare-fun e!1852443 () Bool)

(assert (=> b!2939023 (= e!1852440 e!1852443)))

(declare-fun res!1213133 () Bool)

(assert (=> b!2939023 (=> res!1213133 e!1852443)))

(declare-fun call!193402 () Bool)

(assert (=> b!2939023 (= res!1213133 call!193402)))

(declare-fun b!2939024 () Bool)

(declare-fun res!1213128 () Bool)

(declare-fun e!1852441 () Bool)

(assert (=> b!2939024 (=> res!1213128 e!1852441)))

(assert (=> b!2939024 (= res!1213128 (not (is-ElementMatch!9084 lt!1029607)))))

(declare-fun e!1852439 () Bool)

(assert (=> b!2939024 (= e!1852439 e!1852441)))

(declare-fun b!2939025 () Bool)

(declare-fun res!1213132 () Bool)

(declare-fun e!1852444 () Bool)

(assert (=> b!2939025 (=> (not res!1213132) (not e!1852444))))

(assert (=> b!2939025 (= res!1213132 (isEmpty!19086 (tail!4764 s!11993)))))

(declare-fun b!2939026 () Bool)

(declare-fun e!1852438 () Bool)

(assert (=> b!2939026 (= e!1852438 e!1852439)))

(declare-fun c!480447 () Bool)

(assert (=> b!2939026 (= c!480447 (is-EmptyLang!9084 lt!1029607))))

(declare-fun b!2939027 () Bool)

(declare-fun lt!1029701 () Bool)

(assert (=> b!2939027 (= e!1852438 (= lt!1029701 call!193402))))

(declare-fun b!2939028 () Bool)

(declare-fun e!1852442 () Bool)

(assert (=> b!2939028 (= e!1852442 (matchR!3966 (derivativeStep!2479 lt!1029607 (head!6538 s!11993)) (tail!4764 s!11993)))))

(declare-fun b!2939029 () Bool)

(assert (=> b!2939029 (= e!1852442 (nullable!2868 lt!1029607))))

(declare-fun b!2939030 () Bool)

(declare-fun res!1213126 () Bool)

(assert (=> b!2939030 (=> (not res!1213126) (not e!1852444))))

(assert (=> b!2939030 (= res!1213126 (not call!193402))))

(declare-fun b!2939031 () Bool)

(assert (=> b!2939031 (= e!1852439 (not lt!1029701))))

(declare-fun d!840042 () Bool)

(assert (=> d!840042 e!1852438))

(declare-fun c!480448 () Bool)

(assert (=> d!840042 (= c!480448 (is-EmptyExpr!9084 lt!1029607))))

(assert (=> d!840042 (= lt!1029701 e!1852442)))

(declare-fun c!480449 () Bool)

(assert (=> d!840042 (= c!480449 (isEmpty!19086 s!11993))))

(assert (=> d!840042 (validRegex!3817 lt!1029607)))

(assert (=> d!840042 (= (matchR!3966 lt!1029607 s!11993) lt!1029701)))

(declare-fun b!2939032 () Bool)

(declare-fun res!1213129 () Bool)

(assert (=> b!2939032 (=> res!1213129 e!1852441)))

(assert (=> b!2939032 (= res!1213129 e!1852444)))

(declare-fun res!1213127 () Bool)

(assert (=> b!2939032 (=> (not res!1213127) (not e!1852444))))

(assert (=> b!2939032 (= res!1213127 lt!1029701)))

(declare-fun b!2939033 () Bool)

(assert (=> b!2939033 (= e!1852444 (= (head!6538 s!11993) (c!480278 lt!1029607)))))

(declare-fun b!2939034 () Bool)

(assert (=> b!2939034 (= e!1852441 e!1852440)))

(declare-fun res!1213131 () Bool)

(assert (=> b!2939034 (=> (not res!1213131) (not e!1852440))))

(assert (=> b!2939034 (= res!1213131 (not lt!1029701))))

(declare-fun b!2939035 () Bool)

(declare-fun res!1213130 () Bool)

(assert (=> b!2939035 (=> res!1213130 e!1852443)))

(assert (=> b!2939035 (= res!1213130 (not (isEmpty!19086 (tail!4764 s!11993))))))

(declare-fun b!2939036 () Bool)

(assert (=> b!2939036 (= e!1852443 (not (= (head!6538 s!11993) (c!480278 lt!1029607))))))

(declare-fun bm!193397 () Bool)

(assert (=> bm!193397 (= call!193402 (isEmpty!19086 s!11993))))

(assert (= (and d!840042 c!480449) b!2939029))

(assert (= (and d!840042 (not c!480449)) b!2939028))

(assert (= (and d!840042 c!480448) b!2939027))

(assert (= (and d!840042 (not c!480448)) b!2939026))

(assert (= (and b!2939026 c!480447) b!2939031))

(assert (= (and b!2939026 (not c!480447)) b!2939024))

(assert (= (and b!2939024 (not res!1213128)) b!2939032))

(assert (= (and b!2939032 res!1213127) b!2939030))

(assert (= (and b!2939030 res!1213126) b!2939025))

(assert (= (and b!2939025 res!1213132) b!2939033))

(assert (= (and b!2939032 (not res!1213129)) b!2939034))

(assert (= (and b!2939034 res!1213131) b!2939023))

(assert (= (and b!2939023 (not res!1213133)) b!2939035))

(assert (= (and b!2939035 (not res!1213130)) b!2939036))

(assert (= (or b!2939027 b!2939023 b!2939030) bm!193397))

(assert (=> b!2939028 m!3324681))

(assert (=> b!2939028 m!3324681))

(declare-fun m!3324693 () Bool)

(assert (=> b!2939028 m!3324693))

(assert (=> b!2939028 m!3324685))

(assert (=> b!2939028 m!3324693))

(assert (=> b!2939028 m!3324685))

(declare-fun m!3324695 () Bool)

(assert (=> b!2939028 m!3324695))

(assert (=> d!840042 m!3324479))

(declare-fun m!3324697 () Bool)

(assert (=> d!840042 m!3324697))

(declare-fun m!3324699 () Bool)

(assert (=> b!2939029 m!3324699))

(assert (=> b!2939035 m!3324685))

(assert (=> b!2939035 m!3324685))

(assert (=> b!2939035 m!3324689))

(assert (=> b!2939036 m!3324681))

(assert (=> b!2939033 m!3324681))

(assert (=> b!2939025 m!3324685))

(assert (=> b!2939025 m!3324685))

(assert (=> b!2939025 m!3324689))

(assert (=> bm!193397 m!3324479))

(assert (=> b!2938494 d!840042))

(declare-fun b!2939037 () Bool)

(declare-fun e!1852447 () Bool)

(declare-fun e!1852450 () Bool)

(assert (=> b!2939037 (= e!1852447 e!1852450)))

(declare-fun res!1213141 () Bool)

(assert (=> b!2939037 (=> res!1213141 e!1852450)))

(declare-fun call!193403 () Bool)

(assert (=> b!2939037 (= res!1213141 call!193403)))

(declare-fun b!2939038 () Bool)

(declare-fun res!1213136 () Bool)

(declare-fun e!1852448 () Bool)

(assert (=> b!2939038 (=> res!1213136 e!1852448)))

(assert (=> b!2939038 (= res!1213136 (not (is-ElementMatch!9084 (regOne!18680 r!17423))))))

(declare-fun e!1852446 () Bool)

(assert (=> b!2939038 (= e!1852446 e!1852448)))

(declare-fun b!2939039 () Bool)

(declare-fun res!1213140 () Bool)

(declare-fun e!1852451 () Bool)

(assert (=> b!2939039 (=> (not res!1213140) (not e!1852451))))

(assert (=> b!2939039 (= res!1213140 (isEmpty!19086 (tail!4764 s!11993)))))

(declare-fun b!2939040 () Bool)

(declare-fun e!1852445 () Bool)

(assert (=> b!2939040 (= e!1852445 e!1852446)))

(declare-fun c!480450 () Bool)

(assert (=> b!2939040 (= c!480450 (is-EmptyLang!9084 (regOne!18680 r!17423)))))

(declare-fun b!2939041 () Bool)

(declare-fun lt!1029702 () Bool)

(assert (=> b!2939041 (= e!1852445 (= lt!1029702 call!193403))))

(declare-fun b!2939042 () Bool)

(declare-fun e!1852449 () Bool)

(assert (=> b!2939042 (= e!1852449 (matchR!3966 (derivativeStep!2479 (regOne!18680 r!17423) (head!6538 s!11993)) (tail!4764 s!11993)))))

(declare-fun b!2939043 () Bool)

(assert (=> b!2939043 (= e!1852449 (nullable!2868 (regOne!18680 r!17423)))))

(declare-fun b!2939044 () Bool)

(declare-fun res!1213134 () Bool)

(assert (=> b!2939044 (=> (not res!1213134) (not e!1852451))))

(assert (=> b!2939044 (= res!1213134 (not call!193403))))

(declare-fun b!2939045 () Bool)

(assert (=> b!2939045 (= e!1852446 (not lt!1029702))))

(declare-fun d!840044 () Bool)

(assert (=> d!840044 e!1852445))

(declare-fun c!480451 () Bool)

(assert (=> d!840044 (= c!480451 (is-EmptyExpr!9084 (regOne!18680 r!17423)))))

(assert (=> d!840044 (= lt!1029702 e!1852449)))

(declare-fun c!480452 () Bool)

(assert (=> d!840044 (= c!480452 (isEmpty!19086 s!11993))))

(assert (=> d!840044 (validRegex!3817 (regOne!18680 r!17423))))

(assert (=> d!840044 (= (matchR!3966 (regOne!18680 r!17423) s!11993) lt!1029702)))

(declare-fun b!2939046 () Bool)

(declare-fun res!1213137 () Bool)

(assert (=> b!2939046 (=> res!1213137 e!1852448)))

(assert (=> b!2939046 (= res!1213137 e!1852451)))

(declare-fun res!1213135 () Bool)

(assert (=> b!2939046 (=> (not res!1213135) (not e!1852451))))

(assert (=> b!2939046 (= res!1213135 lt!1029702)))

(declare-fun b!2939047 () Bool)

(assert (=> b!2939047 (= e!1852451 (= (head!6538 s!11993) (c!480278 (regOne!18680 r!17423))))))

(declare-fun b!2939048 () Bool)

(assert (=> b!2939048 (= e!1852448 e!1852447)))

(declare-fun res!1213139 () Bool)

(assert (=> b!2939048 (=> (not res!1213139) (not e!1852447))))

(assert (=> b!2939048 (= res!1213139 (not lt!1029702))))

(declare-fun b!2939049 () Bool)

(declare-fun res!1213138 () Bool)

(assert (=> b!2939049 (=> res!1213138 e!1852450)))

(assert (=> b!2939049 (= res!1213138 (not (isEmpty!19086 (tail!4764 s!11993))))))

(declare-fun b!2939050 () Bool)

(assert (=> b!2939050 (= e!1852450 (not (= (head!6538 s!11993) (c!480278 (regOne!18680 r!17423)))))))

(declare-fun bm!193398 () Bool)

(assert (=> bm!193398 (= call!193403 (isEmpty!19086 s!11993))))

(assert (= (and d!840044 c!480452) b!2939043))

(assert (= (and d!840044 (not c!480452)) b!2939042))

(assert (= (and d!840044 c!480451) b!2939041))

(assert (= (and d!840044 (not c!480451)) b!2939040))

(assert (= (and b!2939040 c!480450) b!2939045))

(assert (= (and b!2939040 (not c!480450)) b!2939038))

(assert (= (and b!2939038 (not res!1213136)) b!2939046))

(assert (= (and b!2939046 res!1213135) b!2939044))

(assert (= (and b!2939044 res!1213134) b!2939039))

(assert (= (and b!2939039 res!1213140) b!2939047))

(assert (= (and b!2939046 (not res!1213137)) b!2939048))

(assert (= (and b!2939048 res!1213139) b!2939037))

(assert (= (and b!2939037 (not res!1213141)) b!2939049))

(assert (= (and b!2939049 (not res!1213138)) b!2939050))

(assert (= (or b!2939041 b!2939037 b!2939044) bm!193398))

(assert (=> b!2939042 m!3324681))

(assert (=> b!2939042 m!3324681))

(declare-fun m!3324701 () Bool)

(assert (=> b!2939042 m!3324701))

(assert (=> b!2939042 m!3324685))

(assert (=> b!2939042 m!3324701))

(assert (=> b!2939042 m!3324685))

(declare-fun m!3324703 () Bool)

(assert (=> b!2939042 m!3324703))

(assert (=> d!840044 m!3324479))

(assert (=> d!840044 m!3324611))

(assert (=> b!2939043 m!3324595))

(assert (=> b!2939049 m!3324685))

(assert (=> b!2939049 m!3324685))

(assert (=> b!2939049 m!3324689))

(assert (=> b!2939050 m!3324681))

(assert (=> b!2939047 m!3324681))

(assert (=> b!2939039 m!3324685))

(assert (=> b!2939039 m!3324685))

(assert (=> b!2939039 m!3324689))

(assert (=> bm!193398 m!3324479))

(assert (=> b!2938494 d!840044))

(declare-fun d!840046 () Bool)

(assert (=> d!840046 (= (matchR!3966 (regOne!18680 r!17423) s!11993) (matchR!3966 (simplify!89 (regOne!18680 r!17423)) s!11993))))

(declare-fun lt!1029705 () Unit!48547)

(declare-fun choose!17382 (Regex!9084 List!34949) Unit!48547)

(assert (=> d!840046 (= lt!1029705 (choose!17382 (regOne!18680 r!17423) s!11993))))

(assert (=> d!840046 (validRegex!3817 (regOne!18680 r!17423))))

(assert (=> d!840046 (= (lemmaSimplifySound!77 (regOne!18680 r!17423) s!11993) lt!1029705)))

(declare-fun bs!525476 () Bool)

(assert (= bs!525476 d!840046))

(assert (=> bs!525476 m!3324611))

(assert (=> bs!525476 m!3324469))

(assert (=> bs!525476 m!3324477))

(declare-fun m!3324705 () Bool)

(assert (=> bs!525476 m!3324705))

(assert (=> bs!525476 m!3324477))

(declare-fun m!3324707 () Bool)

(assert (=> bs!525476 m!3324707))

(assert (=> b!2938494 d!840046))

(declare-fun e!1852454 () Bool)

(assert (=> b!2938503 (= tp!940730 e!1852454)))

(declare-fun b!2939064 () Bool)

(declare-fun tp!940767 () Bool)

(declare-fun tp!940766 () Bool)

(assert (=> b!2939064 (= e!1852454 (and tp!940767 tp!940766))))

(declare-fun b!2939062 () Bool)

(declare-fun tp!940768 () Bool)

(declare-fun tp!940765 () Bool)

(assert (=> b!2939062 (= e!1852454 (and tp!940768 tp!940765))))

(declare-fun b!2939063 () Bool)

(declare-fun tp!940764 () Bool)

(assert (=> b!2939063 (= e!1852454 tp!940764)))

(declare-fun b!2939061 () Bool)

(assert (=> b!2939061 (= e!1852454 tp_is_empty!15731)))

(assert (= (and b!2938503 (is-ElementMatch!9084 (reg!9413 r!17423))) b!2939061))

(assert (= (and b!2938503 (is-Concat!14405 (reg!9413 r!17423))) b!2939062))

(assert (= (and b!2938503 (is-Star!9084 (reg!9413 r!17423))) b!2939063))

(assert (= (and b!2938503 (is-Union!9084 (reg!9413 r!17423))) b!2939064))

(declare-fun e!1852455 () Bool)

(assert (=> b!2938502 (= tp!940732 e!1852455)))

(declare-fun b!2939068 () Bool)

(declare-fun tp!940772 () Bool)

(declare-fun tp!940771 () Bool)

(assert (=> b!2939068 (= e!1852455 (and tp!940772 tp!940771))))

(declare-fun b!2939066 () Bool)

(declare-fun tp!940773 () Bool)

(declare-fun tp!940770 () Bool)

(assert (=> b!2939066 (= e!1852455 (and tp!940773 tp!940770))))

(declare-fun b!2939067 () Bool)

(declare-fun tp!940769 () Bool)

(assert (=> b!2939067 (= e!1852455 tp!940769)))

(declare-fun b!2939065 () Bool)

(assert (=> b!2939065 (= e!1852455 tp_is_empty!15731)))

(assert (= (and b!2938502 (is-ElementMatch!9084 (regOne!18681 r!17423))) b!2939065))

(assert (= (and b!2938502 (is-Concat!14405 (regOne!18681 r!17423))) b!2939066))

(assert (= (and b!2938502 (is-Star!9084 (regOne!18681 r!17423))) b!2939067))

(assert (= (and b!2938502 (is-Union!9084 (regOne!18681 r!17423))) b!2939068))

(declare-fun e!1852456 () Bool)

(assert (=> b!2938502 (= tp!940731 e!1852456)))

(declare-fun b!2939072 () Bool)

(declare-fun tp!940777 () Bool)

(declare-fun tp!940776 () Bool)

(assert (=> b!2939072 (= e!1852456 (and tp!940777 tp!940776))))

(declare-fun b!2939070 () Bool)

(declare-fun tp!940778 () Bool)

(declare-fun tp!940775 () Bool)

(assert (=> b!2939070 (= e!1852456 (and tp!940778 tp!940775))))

(declare-fun b!2939071 () Bool)

(declare-fun tp!940774 () Bool)

(assert (=> b!2939071 (= e!1852456 tp!940774)))

(declare-fun b!2939069 () Bool)

(assert (=> b!2939069 (= e!1852456 tp_is_empty!15731)))

(assert (= (and b!2938502 (is-ElementMatch!9084 (regTwo!18681 r!17423))) b!2939069))

(assert (= (and b!2938502 (is-Concat!14405 (regTwo!18681 r!17423))) b!2939070))

(assert (= (and b!2938502 (is-Star!9084 (regTwo!18681 r!17423))) b!2939071))

(assert (= (and b!2938502 (is-Union!9084 (regTwo!18681 r!17423))) b!2939072))

(declare-fun b!2939077 () Bool)

(declare-fun e!1852459 () Bool)

(declare-fun tp!940781 () Bool)

(assert (=> b!2939077 (= e!1852459 (and tp_is_empty!15731 tp!940781))))

(assert (=> b!2938495 (= tp!940734 e!1852459)))

(assert (= (and b!2938495 (is-Cons!34825 (t!234014 s!11993))) b!2939077))

(declare-fun e!1852460 () Bool)

(assert (=> b!2938499 (= tp!940735 e!1852460)))

(declare-fun b!2939081 () Bool)

(declare-fun tp!940785 () Bool)

(declare-fun tp!940784 () Bool)

(assert (=> b!2939081 (= e!1852460 (and tp!940785 tp!940784))))

(declare-fun b!2939079 () Bool)

(declare-fun tp!940786 () Bool)

(declare-fun tp!940783 () Bool)

(assert (=> b!2939079 (= e!1852460 (and tp!940786 tp!940783))))

(declare-fun b!2939080 () Bool)

(declare-fun tp!940782 () Bool)

(assert (=> b!2939080 (= e!1852460 tp!940782)))

(declare-fun b!2939078 () Bool)

(assert (=> b!2939078 (= e!1852460 tp_is_empty!15731)))

(assert (= (and b!2938499 (is-ElementMatch!9084 (regOne!18680 r!17423))) b!2939078))

(assert (= (and b!2938499 (is-Concat!14405 (regOne!18680 r!17423))) b!2939079))

(assert (= (and b!2938499 (is-Star!9084 (regOne!18680 r!17423))) b!2939080))

(assert (= (and b!2938499 (is-Union!9084 (regOne!18680 r!17423))) b!2939081))

(declare-fun e!1852461 () Bool)

(assert (=> b!2938499 (= tp!940733 e!1852461)))

(declare-fun b!2939085 () Bool)

(declare-fun tp!940790 () Bool)

(declare-fun tp!940789 () Bool)

(assert (=> b!2939085 (= e!1852461 (and tp!940790 tp!940789))))

(declare-fun b!2939083 () Bool)

(declare-fun tp!940791 () Bool)

(declare-fun tp!940788 () Bool)

(assert (=> b!2939083 (= e!1852461 (and tp!940791 tp!940788))))

(declare-fun b!2939084 () Bool)

(declare-fun tp!940787 () Bool)

(assert (=> b!2939084 (= e!1852461 tp!940787)))

(declare-fun b!2939082 () Bool)

(assert (=> b!2939082 (= e!1852461 tp_is_empty!15731)))

(assert (= (and b!2938499 (is-ElementMatch!9084 (regTwo!18680 r!17423))) b!2939082))

(assert (= (and b!2938499 (is-Concat!14405 (regTwo!18680 r!17423))) b!2939083))

(assert (= (and b!2938499 (is-Star!9084 (regTwo!18680 r!17423))) b!2939084))

(assert (= (and b!2938499 (is-Union!9084 (regTwo!18680 r!17423))) b!2939085))

(push 1)

(assert (not b!2939084))

(assert (not b!2938707))

(assert (not b!2938820))

(assert (not b!2939043))

(assert (not d!840046))

(assert (not bm!193392))

(assert (not bm!193306))

(assert (not b!2938973))

(assert (not b!2939022))

(assert (not b!2939042))

(assert (not b!2939033))

(assert (not bm!193362))

(assert (not bm!193341))

(assert (not b!2939072))

(assert (not bm!193396))

(assert (not bm!193370))

(assert (not b!2939011))

(assert (not d!840044))

(assert (not b!2938825))

(assert (not b!2939071))

(assert (not bm!193351))

(assert (not b!2939070))

(assert (not b!2939019))

(assert (not b!2939081))

(assert (not d!840040))

(assert (not b!2938583))

(assert (not bm!193337))

(assert (not b!2939015))

(assert (not bm!193342))

(assert (not b!2939036))

(assert (not b!2939035))

(assert (not d!840038))

(assert (not bm!193393))

(assert (not b!2939085))

(assert (not bm!193376))

(assert (not bm!193359))

(assert (not b!2939079))

(assert (not d!840016))

(assert (not bm!193375))

(assert (not b!2938970))

(assert (not bm!193356))

(assert (not bm!193397))

(assert (not b!2939068))

(assert (not b!2939050))

(assert (not b!2939080))

(assert (not b!2938775))

(assert (not d!840042))

(assert (not b!2938742))

(assert (not b!2939062))

(assert (not b!2939028))

(assert (not b!2939021))

(assert (not bm!193373))

(assert (not bm!193357))

(assert (not b!2939063))

(assert (not b!2938702))

(assert (not d!840006))

(assert (not b!2939066))

(assert (not b!2939014))

(assert (not bm!193371))

(assert (not b!2939064))

(assert (not b!2939067))

(assert (not b!2939049))

(assert (not b!2939025))

(assert (not bm!193339))

(assert (not bm!193307))

(assert (not bm!193352))

(assert (not b!2938770))

(assert tp_is_empty!15731)

(assert (not d!840022))

(assert (not b!2939083))

(assert (not b!2939029))

(assert (not b!2939039))

(assert (not bm!193336))

(assert (not b!2939077))

(assert (not bm!193398))

(assert (not b!2939047))

(assert (not bm!193361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

