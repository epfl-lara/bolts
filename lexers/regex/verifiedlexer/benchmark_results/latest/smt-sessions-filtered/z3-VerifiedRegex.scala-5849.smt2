; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287268 () Bool)

(assert start!287268)

(declare-fun b!2968414 () Bool)

(declare-fun e!1867909 () Bool)

(declare-fun tp!946743 () Bool)

(assert (=> b!2968414 (= e!1867909 tp!946743)))

(declare-fun res!1224318 () Bool)

(declare-fun e!1867907 () Bool)

(assert (=> start!287268 (=> (not res!1224318) (not e!1867907))))

(declare-datatypes ((C!18684 0))(
  ( (C!18685 (val!11378 Int)) )
))
(declare-datatypes ((Regex!9249 0))(
  ( (ElementMatch!9249 (c!486885 C!18684)) (Concat!14570 (regOne!19010 Regex!9249) (regTwo!19010 Regex!9249)) (EmptyExpr!9249) (Star!9249 (reg!9578 Regex!9249)) (EmptyLang!9249) (Union!9249 (regOne!19011 Regex!9249) (regTwo!19011 Regex!9249)) )
))
(declare-fun r!17423 () Regex!9249)

(declare-fun validRegex!3982 (Regex!9249) Bool)

(assert (=> start!287268 (= res!1224318 (validRegex!3982 r!17423))))

(assert (=> start!287268 e!1867907))

(assert (=> start!287268 e!1867909))

(declare-fun e!1867908 () Bool)

(assert (=> start!287268 e!1867908))

(declare-fun b!2968415 () Bool)

(declare-fun e!1867906 () Bool)

(assert (=> b!2968415 (= e!1867906 (validRegex!3982 (reg!9578 r!17423)))))

(declare-datatypes ((List!35114 0))(
  ( (Nil!34990) (Cons!34990 (h!40410 C!18684) (t!234179 List!35114)) )
))
(declare-fun s!11993 () List!35114)

(declare-fun lt!1035725 () Regex!9249)

(declare-fun matchR!4131 (Regex!9249 List!35114) Bool)

(assert (=> b!2968415 (= (matchR!4131 (reg!9578 r!17423) s!11993) (matchR!4131 lt!1035725 s!11993))))

(declare-datatypes ((Unit!48877 0))(
  ( (Unit!48878) )
))
(declare-fun lt!1035727 () Unit!48877)

(declare-fun lemmaSimplifySound!158 (Regex!9249 List!35114) Unit!48877)

(assert (=> b!2968415 (= lt!1035727 (lemmaSimplifySound!158 (reg!9578 r!17423) s!11993))))

(declare-fun b!2968416 () Bool)

(declare-fun tp!946745 () Bool)

(declare-fun tp!946744 () Bool)

(assert (=> b!2968416 (= e!1867909 (and tp!946745 tp!946744))))

(declare-fun b!2968417 () Bool)

(declare-fun e!1867905 () Bool)

(assert (=> b!2968417 (= e!1867905 e!1867906)))

(declare-fun res!1224317 () Bool)

(assert (=> b!2968417 (=> res!1224317 e!1867906)))

(declare-fun isEmptyLang!363 (Regex!9249) Bool)

(assert (=> b!2968417 (= res!1224317 (not (isEmptyLang!363 lt!1035725)))))

(declare-fun simplify!250 (Regex!9249) Regex!9249)

(assert (=> b!2968417 (= lt!1035725 (simplify!250 (reg!9578 r!17423)))))

(declare-fun b!2968418 () Bool)

(declare-fun tp_is_empty!16061 () Bool)

(declare-fun tp!946741 () Bool)

(assert (=> b!2968418 (= e!1867908 (and tp_is_empty!16061 tp!946741))))

(declare-fun b!2968419 () Bool)

(declare-fun tp!946740 () Bool)

(declare-fun tp!946742 () Bool)

(assert (=> b!2968419 (= e!1867909 (and tp!946740 tp!946742))))

(declare-fun b!2968420 () Bool)

(assert (=> b!2968420 (= e!1867907 (not e!1867905))))

(declare-fun res!1224316 () Bool)

(assert (=> b!2968420 (=> res!1224316 e!1867905)))

(declare-fun lt!1035726 () Bool)

(get-info :version)

(assert (=> b!2968420 (= res!1224316 (or lt!1035726 ((_ is Concat!14570) r!17423) ((_ is Union!9249) r!17423) (not ((_ is Star!9249) r!17423))))))

(declare-fun matchRSpec!1386 (Regex!9249 List!35114) Bool)

(assert (=> b!2968420 (= lt!1035726 (matchRSpec!1386 r!17423 s!11993))))

(assert (=> b!2968420 (= lt!1035726 (matchR!4131 r!17423 s!11993))))

(declare-fun lt!1035728 () Unit!48877)

(declare-fun mainMatchTheorem!1386 (Regex!9249 List!35114) Unit!48877)

(assert (=> b!2968420 (= lt!1035728 (mainMatchTheorem!1386 r!17423 s!11993))))

(declare-fun b!2968421 () Bool)

(assert (=> b!2968421 (= e!1867909 tp_is_empty!16061)))

(assert (= (and start!287268 res!1224318) b!2968420))

(assert (= (and b!2968420 (not res!1224316)) b!2968417))

(assert (= (and b!2968417 (not res!1224317)) b!2968415))

(assert (= (and start!287268 ((_ is ElementMatch!9249) r!17423)) b!2968421))

(assert (= (and start!287268 ((_ is Concat!14570) r!17423)) b!2968419))

(assert (= (and start!287268 ((_ is Star!9249) r!17423)) b!2968414))

(assert (= (and start!287268 ((_ is Union!9249) r!17423)) b!2968416))

(assert (= (and start!287268 ((_ is Cons!34990) s!11993)) b!2968418))

(declare-fun m!3337365 () Bool)

(assert (=> start!287268 m!3337365))

(declare-fun m!3337367 () Bool)

(assert (=> b!2968415 m!3337367))

(declare-fun m!3337369 () Bool)

(assert (=> b!2968415 m!3337369))

(declare-fun m!3337371 () Bool)

(assert (=> b!2968415 m!3337371))

(declare-fun m!3337373 () Bool)

(assert (=> b!2968415 m!3337373))

(declare-fun m!3337375 () Bool)

(assert (=> b!2968417 m!3337375))

(declare-fun m!3337377 () Bool)

(assert (=> b!2968417 m!3337377))

(declare-fun m!3337379 () Bool)

(assert (=> b!2968420 m!3337379))

(declare-fun m!3337381 () Bool)

(assert (=> b!2968420 m!3337381))

(declare-fun m!3337383 () Bool)

(assert (=> b!2968420 m!3337383))

(check-sat (not b!2968416) (not b!2968414) tp_is_empty!16061 (not b!2968418) (not b!2968417) (not start!287268) (not b!2968419) (not b!2968415) (not b!2968420))
(check-sat)
(get-model)

(declare-fun b!2968692 () Bool)

(assert (=> b!2968692 true))

(assert (=> b!2968692 true))

(declare-fun bs!526449 () Bool)

(declare-fun b!2968687 () Bool)

(assert (= bs!526449 (and b!2968687 b!2968692)))

(declare-fun lambda!110506 () Int)

(declare-fun lambda!110505 () Int)

(assert (=> bs!526449 (not (= lambda!110506 lambda!110505))))

(assert (=> b!2968687 true))

(assert (=> b!2968687 true))

(declare-fun b!2968682 () Bool)

(declare-fun e!1868060 () Bool)

(declare-fun e!1868059 () Bool)

(assert (=> b!2968682 (= e!1868060 e!1868059)))

(declare-fun res!1224424 () Bool)

(assert (=> b!2968682 (= res!1224424 (matchRSpec!1386 (regOne!19011 r!17423) s!11993))))

(assert (=> b!2968682 (=> res!1224424 e!1868059)))

(declare-fun b!2968683 () Bool)

(declare-fun e!1868063 () Bool)

(assert (=> b!2968683 (= e!1868063 (= s!11993 (Cons!34990 (c!486885 r!17423) Nil!34990)))))

(declare-fun b!2968684 () Bool)

(declare-fun e!1868062 () Bool)

(declare-fun call!197456 () Bool)

(assert (=> b!2968684 (= e!1868062 call!197456)))

(declare-fun b!2968685 () Bool)

(declare-fun c!486962 () Bool)

(assert (=> b!2968685 (= c!486962 ((_ is ElementMatch!9249) r!17423))))

(declare-fun e!1868064 () Bool)

(assert (=> b!2968685 (= e!1868064 e!1868063)))

(declare-fun b!2968686 () Bool)

(declare-fun c!486964 () Bool)

(assert (=> b!2968686 (= c!486964 ((_ is Union!9249) r!17423))))

(assert (=> b!2968686 (= e!1868063 e!1868060)))

(declare-fun e!1868058 () Bool)

(declare-fun call!197455 () Bool)

(assert (=> b!2968687 (= e!1868058 call!197455)))

(declare-fun c!486963 () Bool)

(declare-fun bm!197450 () Bool)

(declare-fun Exists!1541 (Int) Bool)

(assert (=> bm!197450 (= call!197455 (Exists!1541 (ite c!486963 lambda!110505 lambda!110506)))))

(declare-fun bm!197451 () Bool)

(declare-fun isEmpty!19237 (List!35114) Bool)

(assert (=> bm!197451 (= call!197456 (isEmpty!19237 s!11993))))

(declare-fun b!2968688 () Bool)

(assert (=> b!2968688 (= e!1868062 e!1868064)))

(declare-fun res!1224423 () Bool)

(assert (=> b!2968688 (= res!1224423 (not ((_ is EmptyLang!9249) r!17423)))))

(assert (=> b!2968688 (=> (not res!1224423) (not e!1868064))))

(declare-fun d!842508 () Bool)

(declare-fun c!486965 () Bool)

(assert (=> d!842508 (= c!486965 ((_ is EmptyExpr!9249) r!17423))))

(assert (=> d!842508 (= (matchRSpec!1386 r!17423 s!11993) e!1868062)))

(declare-fun b!2968689 () Bool)

(declare-fun res!1224425 () Bool)

(declare-fun e!1868061 () Bool)

(assert (=> b!2968689 (=> res!1224425 e!1868061)))

(assert (=> b!2968689 (= res!1224425 call!197456)))

(assert (=> b!2968689 (= e!1868058 e!1868061)))

(declare-fun b!2968690 () Bool)

(assert (=> b!2968690 (= e!1868059 (matchRSpec!1386 (regTwo!19011 r!17423) s!11993))))

(declare-fun b!2968691 () Bool)

(assert (=> b!2968691 (= e!1868060 e!1868058)))

(assert (=> b!2968691 (= c!486963 ((_ is Star!9249) r!17423))))

(assert (=> b!2968692 (= e!1868061 call!197455)))

(assert (= (and d!842508 c!486965) b!2968684))

(assert (= (and d!842508 (not c!486965)) b!2968688))

(assert (= (and b!2968688 res!1224423) b!2968685))

(assert (= (and b!2968685 c!486962) b!2968683))

(assert (= (and b!2968685 (not c!486962)) b!2968686))

(assert (= (and b!2968686 c!486964) b!2968682))

(assert (= (and b!2968686 (not c!486964)) b!2968691))

(assert (= (and b!2968682 (not res!1224424)) b!2968690))

(assert (= (and b!2968691 c!486963) b!2968689))

(assert (= (and b!2968691 (not c!486963)) b!2968687))

(assert (= (and b!2968689 (not res!1224425)) b!2968692))

(assert (= (or b!2968692 b!2968687) bm!197450))

(assert (= (or b!2968684 b!2968689) bm!197451))

(declare-fun m!3337451 () Bool)

(assert (=> b!2968682 m!3337451))

(declare-fun m!3337453 () Bool)

(assert (=> bm!197450 m!3337453))

(declare-fun m!3337455 () Bool)

(assert (=> bm!197451 m!3337455))

(declare-fun m!3337457 () Bool)

(assert (=> b!2968690 m!3337457))

(assert (=> b!2968420 d!842508))

(declare-fun b!2968760 () Bool)

(declare-fun e!1868093 () Bool)

(declare-fun head!6617 (List!35114) C!18684)

(assert (=> b!2968760 (= e!1868093 (= (head!6617 s!11993) (c!486885 r!17423)))))

(declare-fun b!2968761 () Bool)

(declare-fun e!1868090 () Bool)

(declare-fun e!1868094 () Bool)

(assert (=> b!2968761 (= e!1868090 e!1868094)))

(declare-fun res!1224442 () Bool)

(assert (=> b!2968761 (=> (not res!1224442) (not e!1868094))))

(declare-fun lt!1035760 () Bool)

(assert (=> b!2968761 (= res!1224442 (not lt!1035760))))

(declare-fun b!2968762 () Bool)

(declare-fun e!1868092 () Bool)

(declare-fun e!1868095 () Bool)

(assert (=> b!2968762 (= e!1868092 e!1868095)))

(declare-fun c!486974 () Bool)

(assert (=> b!2968762 (= c!486974 ((_ is EmptyLang!9249) r!17423))))

(declare-fun b!2968763 () Bool)

(assert (=> b!2968763 (= e!1868095 (not lt!1035760))))

(declare-fun b!2968764 () Bool)

(declare-fun res!1224443 () Bool)

(assert (=> b!2968764 (=> res!1224443 e!1868090)))

(assert (=> b!2968764 (= res!1224443 (not ((_ is ElementMatch!9249) r!17423)))))

(assert (=> b!2968764 (= e!1868095 e!1868090)))

(declare-fun d!842530 () Bool)

(assert (=> d!842530 e!1868092))

(declare-fun c!486973 () Bool)

(assert (=> d!842530 (= c!486973 ((_ is EmptyExpr!9249) r!17423))))

(declare-fun e!1868091 () Bool)

(assert (=> d!842530 (= lt!1035760 e!1868091)))

(declare-fun c!486972 () Bool)

(assert (=> d!842530 (= c!486972 (isEmpty!19237 s!11993))))

(assert (=> d!842530 (validRegex!3982 r!17423)))

(assert (=> d!842530 (= (matchR!4131 r!17423 s!11993) lt!1035760)))

(declare-fun b!2968765 () Bool)

(declare-fun nullable!2956 (Regex!9249) Bool)

(assert (=> b!2968765 (= e!1868091 (nullable!2956 r!17423))))

(declare-fun b!2968766 () Bool)

(declare-fun res!1224446 () Bool)

(declare-fun e!1868089 () Bool)

(assert (=> b!2968766 (=> res!1224446 e!1868089)))

(declare-fun tail!4843 (List!35114) List!35114)

(assert (=> b!2968766 (= res!1224446 (not (isEmpty!19237 (tail!4843 s!11993))))))

(declare-fun b!2968767 () Bool)

(declare-fun res!1224444 () Bool)

(assert (=> b!2968767 (=> (not res!1224444) (not e!1868093))))

(declare-fun call!197459 () Bool)

(assert (=> b!2968767 (= res!1224444 (not call!197459))))

(declare-fun b!2968768 () Bool)

(declare-fun res!1224448 () Bool)

(assert (=> b!2968768 (=> (not res!1224448) (not e!1868093))))

(assert (=> b!2968768 (= res!1224448 (isEmpty!19237 (tail!4843 s!11993)))))

(declare-fun b!2968769 () Bool)

(declare-fun derivativeStep!2558 (Regex!9249 C!18684) Regex!9249)

(assert (=> b!2968769 (= e!1868091 (matchR!4131 (derivativeStep!2558 r!17423 (head!6617 s!11993)) (tail!4843 s!11993)))))

(declare-fun b!2968770 () Bool)

(assert (=> b!2968770 (= e!1868089 (not (= (head!6617 s!11993) (c!486885 r!17423))))))

(declare-fun b!2968771 () Bool)

(declare-fun res!1224449 () Bool)

(assert (=> b!2968771 (=> res!1224449 e!1868090)))

(assert (=> b!2968771 (= res!1224449 e!1868093)))

(declare-fun res!1224447 () Bool)

(assert (=> b!2968771 (=> (not res!1224447) (not e!1868093))))

(assert (=> b!2968771 (= res!1224447 lt!1035760)))

(declare-fun b!2968772 () Bool)

(assert (=> b!2968772 (= e!1868092 (= lt!1035760 call!197459))))

(declare-fun bm!197454 () Bool)

(assert (=> bm!197454 (= call!197459 (isEmpty!19237 s!11993))))

(declare-fun b!2968773 () Bool)

(assert (=> b!2968773 (= e!1868094 e!1868089)))

(declare-fun res!1224445 () Bool)

(assert (=> b!2968773 (=> res!1224445 e!1868089)))

(assert (=> b!2968773 (= res!1224445 call!197459)))

(assert (= (and d!842530 c!486972) b!2968765))

(assert (= (and d!842530 (not c!486972)) b!2968769))

(assert (= (and d!842530 c!486973) b!2968772))

(assert (= (and d!842530 (not c!486973)) b!2968762))

(assert (= (and b!2968762 c!486974) b!2968763))

(assert (= (and b!2968762 (not c!486974)) b!2968764))

(assert (= (and b!2968764 (not res!1224443)) b!2968771))

(assert (= (and b!2968771 res!1224447) b!2968767))

(assert (= (and b!2968767 res!1224444) b!2968768))

(assert (= (and b!2968768 res!1224448) b!2968760))

(assert (= (and b!2968771 (not res!1224449)) b!2968761))

(assert (= (and b!2968761 res!1224442) b!2968773))

(assert (= (and b!2968773 (not res!1224445)) b!2968766))

(assert (= (and b!2968766 (not res!1224446)) b!2968770))

(assert (= (or b!2968772 b!2968767 b!2968773) bm!197454))

(assert (=> bm!197454 m!3337455))

(declare-fun m!3337459 () Bool)

(assert (=> b!2968770 m!3337459))

(declare-fun m!3337461 () Bool)

(assert (=> b!2968765 m!3337461))

(declare-fun m!3337463 () Bool)

(assert (=> b!2968766 m!3337463))

(assert (=> b!2968766 m!3337463))

(declare-fun m!3337465 () Bool)

(assert (=> b!2968766 m!3337465))

(assert (=> b!2968760 m!3337459))

(assert (=> b!2968769 m!3337459))

(assert (=> b!2968769 m!3337459))

(declare-fun m!3337467 () Bool)

(assert (=> b!2968769 m!3337467))

(assert (=> b!2968769 m!3337463))

(assert (=> b!2968769 m!3337467))

(assert (=> b!2968769 m!3337463))

(declare-fun m!3337469 () Bool)

(assert (=> b!2968769 m!3337469))

(assert (=> b!2968768 m!3337463))

(assert (=> b!2968768 m!3337463))

(assert (=> b!2968768 m!3337465))

(assert (=> d!842530 m!3337455))

(assert (=> d!842530 m!3337365))

(assert (=> b!2968420 d!842530))

(declare-fun d!842532 () Bool)

(assert (=> d!842532 (= (matchR!4131 r!17423 s!11993) (matchRSpec!1386 r!17423 s!11993))))

(declare-fun lt!1035763 () Unit!48877)

(declare-fun choose!17557 (Regex!9249 List!35114) Unit!48877)

(assert (=> d!842532 (= lt!1035763 (choose!17557 r!17423 s!11993))))

(assert (=> d!842532 (validRegex!3982 r!17423)))

(assert (=> d!842532 (= (mainMatchTheorem!1386 r!17423 s!11993) lt!1035763)))

(declare-fun bs!526450 () Bool)

(assert (= bs!526450 d!842532))

(assert (=> bs!526450 m!3337381))

(assert (=> bs!526450 m!3337379))

(declare-fun m!3337471 () Bool)

(assert (=> bs!526450 m!3337471))

(assert (=> bs!526450 m!3337365))

(assert (=> b!2968420 d!842532))

(declare-fun b!2968792 () Bool)

(declare-fun e!1868110 () Bool)

(declare-fun call!197466 () Bool)

(assert (=> b!2968792 (= e!1868110 call!197466)))

(declare-fun bm!197461 () Bool)

(declare-fun call!197468 () Bool)

(assert (=> bm!197461 (= call!197466 call!197468)))

(declare-fun b!2968793 () Bool)

(declare-fun e!1868114 () Bool)

(declare-fun e!1868115 () Bool)

(assert (=> b!2968793 (= e!1868114 e!1868115)))

(declare-fun res!1224461 () Bool)

(assert (=> b!2968793 (= res!1224461 (not (nullable!2956 (reg!9578 (reg!9578 r!17423)))))))

(assert (=> b!2968793 (=> (not res!1224461) (not e!1868115))))

(declare-fun b!2968794 () Bool)

(declare-fun e!1868113 () Bool)

(declare-fun call!197467 () Bool)

(assert (=> b!2968794 (= e!1868113 call!197467)))

(declare-fun b!2968795 () Bool)

(declare-fun e!1868112 () Bool)

(assert (=> b!2968795 (= e!1868112 e!1868110)))

(declare-fun res!1224460 () Bool)

(assert (=> b!2968795 (=> (not res!1224460) (not e!1868110))))

(assert (=> b!2968795 (= res!1224460 call!197467)))

(declare-fun b!2968796 () Bool)

(assert (=> b!2968796 (= e!1868115 call!197468)))

(declare-fun c!486980 () Bool)

(declare-fun bm!197462 () Bool)

(declare-fun c!486979 () Bool)

(assert (=> bm!197462 (= call!197468 (validRegex!3982 (ite c!486980 (reg!9578 (reg!9578 r!17423)) (ite c!486979 (regOne!19011 (reg!9578 r!17423)) (regTwo!19010 (reg!9578 r!17423))))))))

(declare-fun b!2968797 () Bool)

(declare-fun res!1224464 () Bool)

(assert (=> b!2968797 (=> (not res!1224464) (not e!1868113))))

(assert (=> b!2968797 (= res!1224464 call!197466)))

(declare-fun e!1868116 () Bool)

(assert (=> b!2968797 (= e!1868116 e!1868113)))

(declare-fun d!842534 () Bool)

(declare-fun res!1224463 () Bool)

(declare-fun e!1868111 () Bool)

(assert (=> d!842534 (=> res!1224463 e!1868111)))

(assert (=> d!842534 (= res!1224463 ((_ is ElementMatch!9249) (reg!9578 r!17423)))))

(assert (=> d!842534 (= (validRegex!3982 (reg!9578 r!17423)) e!1868111)))

(declare-fun bm!197463 () Bool)

(assert (=> bm!197463 (= call!197467 (validRegex!3982 (ite c!486979 (regTwo!19011 (reg!9578 r!17423)) (regOne!19010 (reg!9578 r!17423)))))))

(declare-fun b!2968798 () Bool)

(assert (=> b!2968798 (= e!1868111 e!1868114)))

(assert (=> b!2968798 (= c!486980 ((_ is Star!9249) (reg!9578 r!17423)))))

(declare-fun b!2968799 () Bool)

(declare-fun res!1224462 () Bool)

(assert (=> b!2968799 (=> res!1224462 e!1868112)))

(assert (=> b!2968799 (= res!1224462 (not ((_ is Concat!14570) (reg!9578 r!17423))))))

(assert (=> b!2968799 (= e!1868116 e!1868112)))

(declare-fun b!2968800 () Bool)

(assert (=> b!2968800 (= e!1868114 e!1868116)))

(assert (=> b!2968800 (= c!486979 ((_ is Union!9249) (reg!9578 r!17423)))))

(assert (= (and d!842534 (not res!1224463)) b!2968798))

(assert (= (and b!2968798 c!486980) b!2968793))

(assert (= (and b!2968798 (not c!486980)) b!2968800))

(assert (= (and b!2968793 res!1224461) b!2968796))

(assert (= (and b!2968800 c!486979) b!2968797))

(assert (= (and b!2968800 (not c!486979)) b!2968799))

(assert (= (and b!2968797 res!1224464) b!2968794))

(assert (= (and b!2968799 (not res!1224462)) b!2968795))

(assert (= (and b!2968795 res!1224460) b!2968792))

(assert (= (or b!2968797 b!2968792) bm!197461))

(assert (= (or b!2968794 b!2968795) bm!197463))

(assert (= (or b!2968796 bm!197461) bm!197462))

(declare-fun m!3337473 () Bool)

(assert (=> b!2968793 m!3337473))

(declare-fun m!3337475 () Bool)

(assert (=> bm!197462 m!3337475))

(declare-fun m!3337477 () Bool)

(assert (=> bm!197463 m!3337477))

(assert (=> b!2968415 d!842534))

(declare-fun b!2968801 () Bool)

(declare-fun e!1868121 () Bool)

(assert (=> b!2968801 (= e!1868121 (= (head!6617 s!11993) (c!486885 (reg!9578 r!17423))))))

(declare-fun b!2968802 () Bool)

(declare-fun e!1868118 () Bool)

(declare-fun e!1868122 () Bool)

(assert (=> b!2968802 (= e!1868118 e!1868122)))

(declare-fun res!1224465 () Bool)

(assert (=> b!2968802 (=> (not res!1224465) (not e!1868122))))

(declare-fun lt!1035764 () Bool)

(assert (=> b!2968802 (= res!1224465 (not lt!1035764))))

(declare-fun b!2968803 () Bool)

(declare-fun e!1868120 () Bool)

(declare-fun e!1868123 () Bool)

(assert (=> b!2968803 (= e!1868120 e!1868123)))

(declare-fun c!486983 () Bool)

(assert (=> b!2968803 (= c!486983 ((_ is EmptyLang!9249) (reg!9578 r!17423)))))

(declare-fun b!2968804 () Bool)

(assert (=> b!2968804 (= e!1868123 (not lt!1035764))))

(declare-fun b!2968805 () Bool)

(declare-fun res!1224466 () Bool)

(assert (=> b!2968805 (=> res!1224466 e!1868118)))

(assert (=> b!2968805 (= res!1224466 (not ((_ is ElementMatch!9249) (reg!9578 r!17423))))))

(assert (=> b!2968805 (= e!1868123 e!1868118)))

(declare-fun d!842536 () Bool)

(assert (=> d!842536 e!1868120))

(declare-fun c!486982 () Bool)

(assert (=> d!842536 (= c!486982 ((_ is EmptyExpr!9249) (reg!9578 r!17423)))))

(declare-fun e!1868119 () Bool)

(assert (=> d!842536 (= lt!1035764 e!1868119)))

(declare-fun c!486981 () Bool)

(assert (=> d!842536 (= c!486981 (isEmpty!19237 s!11993))))

(assert (=> d!842536 (validRegex!3982 (reg!9578 r!17423))))

(assert (=> d!842536 (= (matchR!4131 (reg!9578 r!17423) s!11993) lt!1035764)))

(declare-fun b!2968806 () Bool)

(assert (=> b!2968806 (= e!1868119 (nullable!2956 (reg!9578 r!17423)))))

(declare-fun b!2968807 () Bool)

(declare-fun res!1224469 () Bool)

(declare-fun e!1868117 () Bool)

(assert (=> b!2968807 (=> res!1224469 e!1868117)))

(assert (=> b!2968807 (= res!1224469 (not (isEmpty!19237 (tail!4843 s!11993))))))

(declare-fun b!2968808 () Bool)

(declare-fun res!1224467 () Bool)

(assert (=> b!2968808 (=> (not res!1224467) (not e!1868121))))

(declare-fun call!197469 () Bool)

(assert (=> b!2968808 (= res!1224467 (not call!197469))))

(declare-fun b!2968809 () Bool)

(declare-fun res!1224471 () Bool)

(assert (=> b!2968809 (=> (not res!1224471) (not e!1868121))))

(assert (=> b!2968809 (= res!1224471 (isEmpty!19237 (tail!4843 s!11993)))))

(declare-fun b!2968810 () Bool)

(assert (=> b!2968810 (= e!1868119 (matchR!4131 (derivativeStep!2558 (reg!9578 r!17423) (head!6617 s!11993)) (tail!4843 s!11993)))))

(declare-fun b!2968811 () Bool)

(assert (=> b!2968811 (= e!1868117 (not (= (head!6617 s!11993) (c!486885 (reg!9578 r!17423)))))))

(declare-fun b!2968812 () Bool)

(declare-fun res!1224472 () Bool)

(assert (=> b!2968812 (=> res!1224472 e!1868118)))

(assert (=> b!2968812 (= res!1224472 e!1868121)))

(declare-fun res!1224470 () Bool)

(assert (=> b!2968812 (=> (not res!1224470) (not e!1868121))))

(assert (=> b!2968812 (= res!1224470 lt!1035764)))

(declare-fun b!2968813 () Bool)

(assert (=> b!2968813 (= e!1868120 (= lt!1035764 call!197469))))

(declare-fun bm!197464 () Bool)

(assert (=> bm!197464 (= call!197469 (isEmpty!19237 s!11993))))

(declare-fun b!2968814 () Bool)

(assert (=> b!2968814 (= e!1868122 e!1868117)))

(declare-fun res!1224468 () Bool)

(assert (=> b!2968814 (=> res!1224468 e!1868117)))

(assert (=> b!2968814 (= res!1224468 call!197469)))

(assert (= (and d!842536 c!486981) b!2968806))

(assert (= (and d!842536 (not c!486981)) b!2968810))

(assert (= (and d!842536 c!486982) b!2968813))

(assert (= (and d!842536 (not c!486982)) b!2968803))

(assert (= (and b!2968803 c!486983) b!2968804))

(assert (= (and b!2968803 (not c!486983)) b!2968805))

(assert (= (and b!2968805 (not res!1224466)) b!2968812))

(assert (= (and b!2968812 res!1224470) b!2968808))

(assert (= (and b!2968808 res!1224467) b!2968809))

(assert (= (and b!2968809 res!1224471) b!2968801))

(assert (= (and b!2968812 (not res!1224472)) b!2968802))

(assert (= (and b!2968802 res!1224465) b!2968814))

(assert (= (and b!2968814 (not res!1224468)) b!2968807))

(assert (= (and b!2968807 (not res!1224469)) b!2968811))

(assert (= (or b!2968813 b!2968808 b!2968814) bm!197464))

(assert (=> bm!197464 m!3337455))

(assert (=> b!2968811 m!3337459))

(declare-fun m!3337479 () Bool)

(assert (=> b!2968806 m!3337479))

(assert (=> b!2968807 m!3337463))

(assert (=> b!2968807 m!3337463))

(assert (=> b!2968807 m!3337465))

(assert (=> b!2968801 m!3337459))

(assert (=> b!2968810 m!3337459))

(assert (=> b!2968810 m!3337459))

(declare-fun m!3337481 () Bool)

(assert (=> b!2968810 m!3337481))

(assert (=> b!2968810 m!3337463))

(assert (=> b!2968810 m!3337481))

(assert (=> b!2968810 m!3337463))

(declare-fun m!3337483 () Bool)

(assert (=> b!2968810 m!3337483))

(assert (=> b!2968809 m!3337463))

(assert (=> b!2968809 m!3337463))

(assert (=> b!2968809 m!3337465))

(assert (=> d!842536 m!3337455))

(assert (=> d!842536 m!3337367))

(assert (=> b!2968415 d!842536))

(declare-fun b!2968815 () Bool)

(declare-fun e!1868128 () Bool)

(assert (=> b!2968815 (= e!1868128 (= (head!6617 s!11993) (c!486885 lt!1035725)))))

(declare-fun b!2968816 () Bool)

(declare-fun e!1868125 () Bool)

(declare-fun e!1868129 () Bool)

(assert (=> b!2968816 (= e!1868125 e!1868129)))

(declare-fun res!1224473 () Bool)

(assert (=> b!2968816 (=> (not res!1224473) (not e!1868129))))

(declare-fun lt!1035765 () Bool)

(assert (=> b!2968816 (= res!1224473 (not lt!1035765))))

(declare-fun b!2968817 () Bool)

(declare-fun e!1868127 () Bool)

(declare-fun e!1868130 () Bool)

(assert (=> b!2968817 (= e!1868127 e!1868130)))

(declare-fun c!486986 () Bool)

(assert (=> b!2968817 (= c!486986 ((_ is EmptyLang!9249) lt!1035725))))

(declare-fun b!2968818 () Bool)

(assert (=> b!2968818 (= e!1868130 (not lt!1035765))))

(declare-fun b!2968819 () Bool)

(declare-fun res!1224474 () Bool)

(assert (=> b!2968819 (=> res!1224474 e!1868125)))

(assert (=> b!2968819 (= res!1224474 (not ((_ is ElementMatch!9249) lt!1035725)))))

(assert (=> b!2968819 (= e!1868130 e!1868125)))

(declare-fun d!842538 () Bool)

(assert (=> d!842538 e!1868127))

(declare-fun c!486985 () Bool)

(assert (=> d!842538 (= c!486985 ((_ is EmptyExpr!9249) lt!1035725))))

(declare-fun e!1868126 () Bool)

(assert (=> d!842538 (= lt!1035765 e!1868126)))

(declare-fun c!486984 () Bool)

(assert (=> d!842538 (= c!486984 (isEmpty!19237 s!11993))))

(assert (=> d!842538 (validRegex!3982 lt!1035725)))

(assert (=> d!842538 (= (matchR!4131 lt!1035725 s!11993) lt!1035765)))

(declare-fun b!2968820 () Bool)

(assert (=> b!2968820 (= e!1868126 (nullable!2956 lt!1035725))))

(declare-fun b!2968821 () Bool)

(declare-fun res!1224477 () Bool)

(declare-fun e!1868124 () Bool)

(assert (=> b!2968821 (=> res!1224477 e!1868124)))

(assert (=> b!2968821 (= res!1224477 (not (isEmpty!19237 (tail!4843 s!11993))))))

(declare-fun b!2968822 () Bool)

(declare-fun res!1224475 () Bool)

(assert (=> b!2968822 (=> (not res!1224475) (not e!1868128))))

(declare-fun call!197470 () Bool)

(assert (=> b!2968822 (= res!1224475 (not call!197470))))

(declare-fun b!2968823 () Bool)

(declare-fun res!1224479 () Bool)

(assert (=> b!2968823 (=> (not res!1224479) (not e!1868128))))

(assert (=> b!2968823 (= res!1224479 (isEmpty!19237 (tail!4843 s!11993)))))

(declare-fun b!2968824 () Bool)

(assert (=> b!2968824 (= e!1868126 (matchR!4131 (derivativeStep!2558 lt!1035725 (head!6617 s!11993)) (tail!4843 s!11993)))))

(declare-fun b!2968825 () Bool)

(assert (=> b!2968825 (= e!1868124 (not (= (head!6617 s!11993) (c!486885 lt!1035725))))))

(declare-fun b!2968826 () Bool)

(declare-fun res!1224480 () Bool)

(assert (=> b!2968826 (=> res!1224480 e!1868125)))

(assert (=> b!2968826 (= res!1224480 e!1868128)))

(declare-fun res!1224478 () Bool)

(assert (=> b!2968826 (=> (not res!1224478) (not e!1868128))))

(assert (=> b!2968826 (= res!1224478 lt!1035765)))

(declare-fun b!2968827 () Bool)

(assert (=> b!2968827 (= e!1868127 (= lt!1035765 call!197470))))

(declare-fun bm!197465 () Bool)

(assert (=> bm!197465 (= call!197470 (isEmpty!19237 s!11993))))

(declare-fun b!2968828 () Bool)

(assert (=> b!2968828 (= e!1868129 e!1868124)))

(declare-fun res!1224476 () Bool)

(assert (=> b!2968828 (=> res!1224476 e!1868124)))

(assert (=> b!2968828 (= res!1224476 call!197470)))

(assert (= (and d!842538 c!486984) b!2968820))

(assert (= (and d!842538 (not c!486984)) b!2968824))

(assert (= (and d!842538 c!486985) b!2968827))

(assert (= (and d!842538 (not c!486985)) b!2968817))

(assert (= (and b!2968817 c!486986) b!2968818))

(assert (= (and b!2968817 (not c!486986)) b!2968819))

(assert (= (and b!2968819 (not res!1224474)) b!2968826))

(assert (= (and b!2968826 res!1224478) b!2968822))

(assert (= (and b!2968822 res!1224475) b!2968823))

(assert (= (and b!2968823 res!1224479) b!2968815))

(assert (= (and b!2968826 (not res!1224480)) b!2968816))

(assert (= (and b!2968816 res!1224473) b!2968828))

(assert (= (and b!2968828 (not res!1224476)) b!2968821))

(assert (= (and b!2968821 (not res!1224477)) b!2968825))

(assert (= (or b!2968827 b!2968822 b!2968828) bm!197465))

(assert (=> bm!197465 m!3337455))

(assert (=> b!2968825 m!3337459))

(declare-fun m!3337485 () Bool)

(assert (=> b!2968820 m!3337485))

(assert (=> b!2968821 m!3337463))

(assert (=> b!2968821 m!3337463))

(assert (=> b!2968821 m!3337465))

(assert (=> b!2968815 m!3337459))

(assert (=> b!2968824 m!3337459))

(assert (=> b!2968824 m!3337459))

(declare-fun m!3337487 () Bool)

(assert (=> b!2968824 m!3337487))

(assert (=> b!2968824 m!3337463))

(assert (=> b!2968824 m!3337487))

(assert (=> b!2968824 m!3337463))

(declare-fun m!3337489 () Bool)

(assert (=> b!2968824 m!3337489))

(assert (=> b!2968823 m!3337463))

(assert (=> b!2968823 m!3337463))

(assert (=> b!2968823 m!3337465))

(assert (=> d!842538 m!3337455))

(declare-fun m!3337491 () Bool)

(assert (=> d!842538 m!3337491))

(assert (=> b!2968415 d!842538))

(declare-fun d!842540 () Bool)

(assert (=> d!842540 (= (matchR!4131 (reg!9578 r!17423) s!11993) (matchR!4131 (simplify!250 (reg!9578 r!17423)) s!11993))))

(declare-fun lt!1035768 () Unit!48877)

(declare-fun choose!17558 (Regex!9249 List!35114) Unit!48877)

(assert (=> d!842540 (= lt!1035768 (choose!17558 (reg!9578 r!17423) s!11993))))

(assert (=> d!842540 (validRegex!3982 (reg!9578 r!17423))))

(assert (=> d!842540 (= (lemmaSimplifySound!158 (reg!9578 r!17423) s!11993) lt!1035768)))

(declare-fun bs!526451 () Bool)

(assert (= bs!526451 d!842540))

(assert (=> bs!526451 m!3337377))

(declare-fun m!3337493 () Bool)

(assert (=> bs!526451 m!3337493))

(assert (=> bs!526451 m!3337367))

(declare-fun m!3337495 () Bool)

(assert (=> bs!526451 m!3337495))

(assert (=> bs!526451 m!3337377))

(assert (=> bs!526451 m!3337369))

(assert (=> b!2968415 d!842540))

(declare-fun b!2968829 () Bool)

(declare-fun e!1868131 () Bool)

(declare-fun call!197471 () Bool)

(assert (=> b!2968829 (= e!1868131 call!197471)))

(declare-fun bm!197466 () Bool)

(declare-fun call!197473 () Bool)

(assert (=> bm!197466 (= call!197471 call!197473)))

(declare-fun b!2968830 () Bool)

(declare-fun e!1868135 () Bool)

(declare-fun e!1868136 () Bool)

(assert (=> b!2968830 (= e!1868135 e!1868136)))

(declare-fun res!1224482 () Bool)

(assert (=> b!2968830 (= res!1224482 (not (nullable!2956 (reg!9578 r!17423))))))

(assert (=> b!2968830 (=> (not res!1224482) (not e!1868136))))

(declare-fun b!2968831 () Bool)

(declare-fun e!1868134 () Bool)

(declare-fun call!197472 () Bool)

(assert (=> b!2968831 (= e!1868134 call!197472)))

(declare-fun b!2968832 () Bool)

(declare-fun e!1868133 () Bool)

(assert (=> b!2968832 (= e!1868133 e!1868131)))

(declare-fun res!1224481 () Bool)

(assert (=> b!2968832 (=> (not res!1224481) (not e!1868131))))

(assert (=> b!2968832 (= res!1224481 call!197472)))

(declare-fun b!2968833 () Bool)

(assert (=> b!2968833 (= e!1868136 call!197473)))

(declare-fun c!486987 () Bool)

(declare-fun bm!197467 () Bool)

(declare-fun c!486988 () Bool)

(assert (=> bm!197467 (= call!197473 (validRegex!3982 (ite c!486988 (reg!9578 r!17423) (ite c!486987 (regOne!19011 r!17423) (regTwo!19010 r!17423)))))))

(declare-fun b!2968834 () Bool)

(declare-fun res!1224485 () Bool)

(assert (=> b!2968834 (=> (not res!1224485) (not e!1868134))))

(assert (=> b!2968834 (= res!1224485 call!197471)))

(declare-fun e!1868137 () Bool)

(assert (=> b!2968834 (= e!1868137 e!1868134)))

(declare-fun d!842542 () Bool)

(declare-fun res!1224484 () Bool)

(declare-fun e!1868132 () Bool)

(assert (=> d!842542 (=> res!1224484 e!1868132)))

(assert (=> d!842542 (= res!1224484 ((_ is ElementMatch!9249) r!17423))))

(assert (=> d!842542 (= (validRegex!3982 r!17423) e!1868132)))

(declare-fun bm!197468 () Bool)

(assert (=> bm!197468 (= call!197472 (validRegex!3982 (ite c!486987 (regTwo!19011 r!17423) (regOne!19010 r!17423))))))

(declare-fun b!2968835 () Bool)

(assert (=> b!2968835 (= e!1868132 e!1868135)))

(assert (=> b!2968835 (= c!486988 ((_ is Star!9249) r!17423))))

(declare-fun b!2968836 () Bool)

(declare-fun res!1224483 () Bool)

(assert (=> b!2968836 (=> res!1224483 e!1868133)))

(assert (=> b!2968836 (= res!1224483 (not ((_ is Concat!14570) r!17423)))))

(assert (=> b!2968836 (= e!1868137 e!1868133)))

(declare-fun b!2968837 () Bool)

(assert (=> b!2968837 (= e!1868135 e!1868137)))

(assert (=> b!2968837 (= c!486987 ((_ is Union!9249) r!17423))))

(assert (= (and d!842542 (not res!1224484)) b!2968835))

(assert (= (and b!2968835 c!486988) b!2968830))

(assert (= (and b!2968835 (not c!486988)) b!2968837))

(assert (= (and b!2968830 res!1224482) b!2968833))

(assert (= (and b!2968837 c!486987) b!2968834))

(assert (= (and b!2968837 (not c!486987)) b!2968836))

(assert (= (and b!2968834 res!1224485) b!2968831))

(assert (= (and b!2968836 (not res!1224483)) b!2968832))

(assert (= (and b!2968832 res!1224481) b!2968829))

(assert (= (or b!2968834 b!2968829) bm!197466))

(assert (= (or b!2968831 b!2968832) bm!197468))

(assert (= (or b!2968833 bm!197466) bm!197467))

(assert (=> b!2968830 m!3337479))

(declare-fun m!3337497 () Bool)

(assert (=> bm!197467 m!3337497))

(declare-fun m!3337499 () Bool)

(assert (=> bm!197468 m!3337499))

(assert (=> start!287268 d!842542))

(declare-fun d!842544 () Bool)

(assert (=> d!842544 (= (isEmptyLang!363 lt!1035725) ((_ is EmptyLang!9249) lt!1035725))))

(assert (=> b!2968417 d!842544))

(declare-fun b!2968888 () Bool)

(declare-fun e!1868178 () Regex!9249)

(declare-fun lt!1035783 () Regex!9249)

(assert (=> b!2968888 (= e!1868178 lt!1035783)))

(declare-fun b!2968889 () Bool)

(declare-fun e!1868171 () Regex!9249)

(assert (=> b!2968889 (= e!1868171 EmptyExpr!9249)))

(declare-fun lt!1035786 () Regex!9249)

(declare-fun bm!197483 () Bool)

(declare-fun lt!1035781 () Regex!9249)

(declare-fun call!197489 () Bool)

(declare-fun c!487021 () Bool)

(declare-fun isEmptyExpr!412 (Regex!9249) Bool)

(assert (=> bm!197483 (= call!197489 (isEmptyExpr!412 (ite c!487021 lt!1035786 lt!1035781)))))

(declare-fun b!2968891 () Bool)

(declare-fun e!1868172 () Bool)

(assert (=> b!2968891 (= e!1868172 call!197489)))

(declare-fun b!2968892 () Bool)

(declare-fun e!1868174 () Regex!9249)

(declare-fun lt!1035785 () Regex!9249)

(assert (=> b!2968892 (= e!1868174 lt!1035785)))

(declare-fun b!2968893 () Bool)

(declare-fun e!1868166 () Regex!9249)

(declare-fun lt!1035782 () Regex!9249)

(assert (=> b!2968893 (= e!1868166 (Union!9249 lt!1035782 lt!1035783))))

(declare-fun b!2968894 () Bool)

(declare-fun e!1868168 () Regex!9249)

(assert (=> b!2968894 (= e!1868168 (reg!9578 r!17423))))

(declare-fun b!2968895 () Bool)

(declare-fun e!1868179 () Regex!9249)

(assert (=> b!2968895 (= e!1868179 EmptyLang!9249)))

(declare-fun call!197494 () Bool)

(declare-fun c!487018 () Bool)

(declare-fun bm!197484 () Bool)

(assert (=> bm!197484 (= call!197494 (isEmptyLang!363 (ite c!487018 lt!1035782 lt!1035785)))))

(declare-fun b!2968896 () Bool)

(declare-fun e!1868175 () Regex!9249)

(assert (=> b!2968896 (= e!1868175 e!1868168)))

(declare-fun c!487020 () Bool)

(assert (=> b!2968896 (= c!487020 ((_ is ElementMatch!9249) (reg!9578 r!17423)))))

(declare-fun b!2968897 () Bool)

(declare-fun e!1868170 () Regex!9249)

(assert (=> b!2968897 (= e!1868170 e!1868178)))

(declare-fun call!197490 () Regex!9249)

(assert (=> b!2968897 (= lt!1035782 call!197490)))

(declare-fun call!197488 () Regex!9249)

(assert (=> b!2968897 (= lt!1035783 call!197488)))

(declare-fun c!487016 () Bool)

(assert (=> b!2968897 (= c!487016 call!197494)))

(declare-fun b!2968898 () Bool)

(assert (=> b!2968898 (= e!1868166 lt!1035782)))

(declare-fun d!842546 () Bool)

(declare-fun e!1868176 () Bool)

(assert (=> d!842546 e!1868176))

(declare-fun res!1224493 () Bool)

(assert (=> d!842546 (=> (not res!1224493) (not e!1868176))))

(declare-fun lt!1035784 () Regex!9249)

(assert (=> d!842546 (= res!1224493 (validRegex!3982 lt!1035784))))

(assert (=> d!842546 (= lt!1035784 e!1868175)))

(declare-fun c!487014 () Bool)

(assert (=> d!842546 (= c!487014 ((_ is EmptyLang!9249) (reg!9578 r!17423)))))

(assert (=> d!842546 (validRegex!3982 (reg!9578 r!17423))))

(assert (=> d!842546 (= (simplify!250 (reg!9578 r!17423)) lt!1035784)))

(declare-fun b!2968890 () Bool)

(declare-fun c!487015 () Bool)

(assert (=> b!2968890 (= c!487015 (isEmptyExpr!412 lt!1035785))))

(declare-fun e!1868169 () Regex!9249)

(assert (=> b!2968890 (= e!1868179 e!1868169)))

(declare-fun call!197493 () Bool)

(declare-fun bm!197485 () Bool)

(assert (=> bm!197485 (= call!197493 (isEmptyLang!363 (ite c!487021 lt!1035786 (ite c!487018 lt!1035783 lt!1035781))))))

(declare-fun b!2968899 () Bool)

(assert (=> b!2968899 (= e!1868171 (Star!9249 lt!1035786))))

(declare-fun b!2968900 () Bool)

(assert (=> b!2968900 (= e!1868176 (= (nullable!2956 lt!1035784) (nullable!2956 (reg!9578 r!17423))))))

(declare-fun b!2968901 () Bool)

(assert (=> b!2968901 (= e!1868169 e!1868174)))

(declare-fun c!487017 () Bool)

(assert (=> b!2968901 (= c!487017 call!197489)))

(declare-fun call!197491 () Regex!9249)

(declare-fun bm!197486 () Bool)

(assert (=> bm!197486 (= call!197491 (simplify!250 (ite c!487021 (reg!9578 (reg!9578 r!17423)) (ite c!487018 (regTwo!19011 (reg!9578 r!17423)) (regTwo!19010 (reg!9578 r!17423))))))))

(declare-fun b!2968902 () Bool)

(assert (=> b!2968902 (= e!1868169 lt!1035781)))

(declare-fun b!2968903 () Bool)

(assert (=> b!2968903 (= c!487018 ((_ is Union!9249) (reg!9578 r!17423)))))

(declare-fun e!1868177 () Regex!9249)

(assert (=> b!2968903 (= e!1868177 e!1868170)))

(declare-fun b!2968904 () Bool)

(declare-fun e!1868167 () Bool)

(declare-fun call!197492 () Bool)

(assert (=> b!2968904 (= e!1868167 call!197492)))

(declare-fun b!2968905 () Bool)

(declare-fun e!1868173 () Regex!9249)

(assert (=> b!2968905 (= e!1868173 EmptyExpr!9249)))

(declare-fun b!2968906 () Bool)

(assert (=> b!2968906 (= e!1868170 e!1868179)))

(assert (=> b!2968906 (= lt!1035785 call!197490)))

(assert (=> b!2968906 (= lt!1035781 call!197488)))

(declare-fun res!1224492 () Bool)

(assert (=> b!2968906 (= res!1224492 call!197494)))

(assert (=> b!2968906 (=> res!1224492 e!1868167)))

(declare-fun c!487019 () Bool)

(assert (=> b!2968906 (= c!487019 e!1868167)))

(declare-fun bm!197487 () Bool)

(assert (=> bm!197487 (= call!197488 call!197491)))

(declare-fun b!2968907 () Bool)

(declare-fun c!487012 () Bool)

(assert (=> b!2968907 (= c!487012 call!197492)))

(assert (=> b!2968907 (= e!1868178 e!1868166)))

(declare-fun b!2968908 () Bool)

(declare-fun c!487011 () Bool)

(assert (=> b!2968908 (= c!487011 ((_ is EmptyExpr!9249) (reg!9578 r!17423)))))

(assert (=> b!2968908 (= e!1868168 e!1868173)))

(declare-fun b!2968909 () Bool)

(assert (=> b!2968909 (= e!1868175 EmptyLang!9249)))

(declare-fun bm!197488 () Bool)

(assert (=> bm!197488 (= call!197490 (simplify!250 (ite c!487018 (regOne!19011 (reg!9578 r!17423)) (regOne!19010 (reg!9578 r!17423)))))))

(declare-fun b!2968910 () Bool)

(declare-fun c!487013 () Bool)

(assert (=> b!2968910 (= c!487013 e!1868172)))

(declare-fun res!1224494 () Bool)

(assert (=> b!2968910 (=> res!1224494 e!1868172)))

(assert (=> b!2968910 (= res!1224494 call!197493)))

(assert (=> b!2968910 (= lt!1035786 call!197491)))

(assert (=> b!2968910 (= e!1868177 e!1868171)))

(declare-fun bm!197489 () Bool)

(assert (=> bm!197489 (= call!197492 call!197493)))

(declare-fun b!2968911 () Bool)

(assert (=> b!2968911 (= e!1868174 (Concat!14570 lt!1035785 lt!1035781))))

(declare-fun b!2968912 () Bool)

(assert (=> b!2968912 (= e!1868173 e!1868177)))

(assert (=> b!2968912 (= c!487021 ((_ is Star!9249) (reg!9578 r!17423)))))

(assert (= (and d!842546 c!487014) b!2968909))

(assert (= (and d!842546 (not c!487014)) b!2968896))

(assert (= (and b!2968896 c!487020) b!2968894))

(assert (= (and b!2968896 (not c!487020)) b!2968908))

(assert (= (and b!2968908 c!487011) b!2968905))

(assert (= (and b!2968908 (not c!487011)) b!2968912))

(assert (= (and b!2968912 c!487021) b!2968910))

(assert (= (and b!2968912 (not c!487021)) b!2968903))

(assert (= (and b!2968910 (not res!1224494)) b!2968891))

(assert (= (and b!2968910 c!487013) b!2968889))

(assert (= (and b!2968910 (not c!487013)) b!2968899))

(assert (= (and b!2968903 c!487018) b!2968897))

(assert (= (and b!2968903 (not c!487018)) b!2968906))

(assert (= (and b!2968897 c!487016) b!2968888))

(assert (= (and b!2968897 (not c!487016)) b!2968907))

(assert (= (and b!2968907 c!487012) b!2968898))

(assert (= (and b!2968907 (not c!487012)) b!2968893))

(assert (= (and b!2968906 (not res!1224492)) b!2968904))

(assert (= (and b!2968906 c!487019) b!2968895))

(assert (= (and b!2968906 (not c!487019)) b!2968890))

(assert (= (and b!2968890 c!487015) b!2968902))

(assert (= (and b!2968890 (not c!487015)) b!2968901))

(assert (= (and b!2968901 c!487017) b!2968892))

(assert (= (and b!2968901 (not c!487017)) b!2968911))

(assert (= (or b!2968897 b!2968906) bm!197487))

(assert (= (or b!2968897 b!2968906) bm!197488))

(assert (= (or b!2968897 b!2968906) bm!197484))

(assert (= (or b!2968907 b!2968904) bm!197489))

(assert (= (or b!2968891 b!2968901) bm!197483))

(assert (= (or b!2968910 bm!197487) bm!197486))

(assert (= (or b!2968910 bm!197489) bm!197485))

(assert (= (and d!842546 res!1224493) b!2968900))

(declare-fun m!3337501 () Bool)

(assert (=> b!2968900 m!3337501))

(assert (=> b!2968900 m!3337479))

(declare-fun m!3337503 () Bool)

(assert (=> bm!197488 m!3337503))

(declare-fun m!3337505 () Bool)

(assert (=> bm!197483 m!3337505))

(declare-fun m!3337507 () Bool)

(assert (=> b!2968890 m!3337507))

(declare-fun m!3337509 () Bool)

(assert (=> d!842546 m!3337509))

(assert (=> d!842546 m!3337367))

(declare-fun m!3337511 () Bool)

(assert (=> bm!197486 m!3337511))

(declare-fun m!3337513 () Bool)

(assert (=> bm!197484 m!3337513))

(declare-fun m!3337515 () Bool)

(assert (=> bm!197485 m!3337515))

(assert (=> b!2968417 d!842546))

(declare-fun b!2968923 () Bool)

(declare-fun e!1868182 () Bool)

(assert (=> b!2968923 (= e!1868182 tp_is_empty!16061)))

(declare-fun b!2968925 () Bool)

(declare-fun tp!946794 () Bool)

(assert (=> b!2968925 (= e!1868182 tp!946794)))

(declare-fun b!2968924 () Bool)

(declare-fun tp!946798 () Bool)

(declare-fun tp!946795 () Bool)

(assert (=> b!2968924 (= e!1868182 (and tp!946798 tp!946795))))

(declare-fun b!2968926 () Bool)

(declare-fun tp!946797 () Bool)

(declare-fun tp!946796 () Bool)

(assert (=> b!2968926 (= e!1868182 (and tp!946797 tp!946796))))

(assert (=> b!2968419 (= tp!946740 e!1868182)))

(assert (= (and b!2968419 ((_ is ElementMatch!9249) (regOne!19010 r!17423))) b!2968923))

(assert (= (and b!2968419 ((_ is Concat!14570) (regOne!19010 r!17423))) b!2968924))

(assert (= (and b!2968419 ((_ is Star!9249) (regOne!19010 r!17423))) b!2968925))

(assert (= (and b!2968419 ((_ is Union!9249) (regOne!19010 r!17423))) b!2968926))

(declare-fun b!2968927 () Bool)

(declare-fun e!1868183 () Bool)

(assert (=> b!2968927 (= e!1868183 tp_is_empty!16061)))

(declare-fun b!2968929 () Bool)

(declare-fun tp!946799 () Bool)

(assert (=> b!2968929 (= e!1868183 tp!946799)))

(declare-fun b!2968928 () Bool)

(declare-fun tp!946803 () Bool)

(declare-fun tp!946800 () Bool)

(assert (=> b!2968928 (= e!1868183 (and tp!946803 tp!946800))))

(declare-fun b!2968930 () Bool)

(declare-fun tp!946802 () Bool)

(declare-fun tp!946801 () Bool)

(assert (=> b!2968930 (= e!1868183 (and tp!946802 tp!946801))))

(assert (=> b!2968419 (= tp!946742 e!1868183)))

(assert (= (and b!2968419 ((_ is ElementMatch!9249) (regTwo!19010 r!17423))) b!2968927))

(assert (= (and b!2968419 ((_ is Concat!14570) (regTwo!19010 r!17423))) b!2968928))

(assert (= (and b!2968419 ((_ is Star!9249) (regTwo!19010 r!17423))) b!2968929))

(assert (= (and b!2968419 ((_ is Union!9249) (regTwo!19010 r!17423))) b!2968930))

(declare-fun b!2968935 () Bool)

(declare-fun e!1868186 () Bool)

(declare-fun tp!946806 () Bool)

(assert (=> b!2968935 (= e!1868186 (and tp_is_empty!16061 tp!946806))))

(assert (=> b!2968418 (= tp!946741 e!1868186)))

(assert (= (and b!2968418 ((_ is Cons!34990) (t!234179 s!11993))) b!2968935))

(declare-fun b!2968936 () Bool)

(declare-fun e!1868187 () Bool)

(assert (=> b!2968936 (= e!1868187 tp_is_empty!16061)))

(declare-fun b!2968938 () Bool)

(declare-fun tp!946807 () Bool)

(assert (=> b!2968938 (= e!1868187 tp!946807)))

(declare-fun b!2968937 () Bool)

(declare-fun tp!946811 () Bool)

(declare-fun tp!946808 () Bool)

(assert (=> b!2968937 (= e!1868187 (and tp!946811 tp!946808))))

(declare-fun b!2968939 () Bool)

(declare-fun tp!946810 () Bool)

(declare-fun tp!946809 () Bool)

(assert (=> b!2968939 (= e!1868187 (and tp!946810 tp!946809))))

(assert (=> b!2968414 (= tp!946743 e!1868187)))

(assert (= (and b!2968414 ((_ is ElementMatch!9249) (reg!9578 r!17423))) b!2968936))

(assert (= (and b!2968414 ((_ is Concat!14570) (reg!9578 r!17423))) b!2968937))

(assert (= (and b!2968414 ((_ is Star!9249) (reg!9578 r!17423))) b!2968938))

(assert (= (and b!2968414 ((_ is Union!9249) (reg!9578 r!17423))) b!2968939))

(declare-fun b!2968940 () Bool)

(declare-fun e!1868188 () Bool)

(assert (=> b!2968940 (= e!1868188 tp_is_empty!16061)))

(declare-fun b!2968942 () Bool)

(declare-fun tp!946812 () Bool)

(assert (=> b!2968942 (= e!1868188 tp!946812)))

(declare-fun b!2968941 () Bool)

(declare-fun tp!946816 () Bool)

(declare-fun tp!946813 () Bool)

(assert (=> b!2968941 (= e!1868188 (and tp!946816 tp!946813))))

(declare-fun b!2968943 () Bool)

(declare-fun tp!946815 () Bool)

(declare-fun tp!946814 () Bool)

(assert (=> b!2968943 (= e!1868188 (and tp!946815 tp!946814))))

(assert (=> b!2968416 (= tp!946745 e!1868188)))

(assert (= (and b!2968416 ((_ is ElementMatch!9249) (regOne!19011 r!17423))) b!2968940))

(assert (= (and b!2968416 ((_ is Concat!14570) (regOne!19011 r!17423))) b!2968941))

(assert (= (and b!2968416 ((_ is Star!9249) (regOne!19011 r!17423))) b!2968942))

(assert (= (and b!2968416 ((_ is Union!9249) (regOne!19011 r!17423))) b!2968943))

(declare-fun b!2968944 () Bool)

(declare-fun e!1868189 () Bool)

(assert (=> b!2968944 (= e!1868189 tp_is_empty!16061)))

(declare-fun b!2968946 () Bool)

(declare-fun tp!946817 () Bool)

(assert (=> b!2968946 (= e!1868189 tp!946817)))

(declare-fun b!2968945 () Bool)

(declare-fun tp!946821 () Bool)

(declare-fun tp!946818 () Bool)

(assert (=> b!2968945 (= e!1868189 (and tp!946821 tp!946818))))

(declare-fun b!2968947 () Bool)

(declare-fun tp!946820 () Bool)

(declare-fun tp!946819 () Bool)

(assert (=> b!2968947 (= e!1868189 (and tp!946820 tp!946819))))

(assert (=> b!2968416 (= tp!946744 e!1868189)))

(assert (= (and b!2968416 ((_ is ElementMatch!9249) (regTwo!19011 r!17423))) b!2968944))

(assert (= (and b!2968416 ((_ is Concat!14570) (regTwo!19011 r!17423))) b!2968945))

(assert (= (and b!2968416 ((_ is Star!9249) (regTwo!19011 r!17423))) b!2968946))

(assert (= (and b!2968416 ((_ is Union!9249) (regTwo!19011 r!17423))) b!2968947))

(check-sat (not b!2968938) (not b!2968768) (not bm!197464) (not b!2968807) (not d!842532) (not bm!197468) (not bm!197467) (not b!2968945) (not b!2968947) (not b!2968690) (not b!2968811) (not b!2968925) (not bm!197485) (not b!2968765) (not bm!197486) (not b!2968806) (not b!2968766) (not d!842530) (not b!2968939) (not b!2968935) (not d!842536) tp_is_empty!16061 (not b!2968770) (not b!2968801) (not b!2968820) (not b!2968830) (not bm!197454) (not b!2968824) (not bm!197488) (not bm!197463) (not d!842546) (not b!2968769) (not bm!197484) (not bm!197483) (not b!2968810) (not b!2968941) (not bm!197451) (not b!2968793) (not b!2968821) (not b!2968900) (not b!2968930) (not d!842540) (not b!2968825) (not bm!197465) (not b!2968929) (not bm!197462) (not b!2968924) (not b!2968890) (not b!2968928) (not b!2968946) (not d!842538) (not bm!197450) (not b!2968760) (not b!2968815) (not b!2968943) (not b!2968942) (not b!2968926) (not b!2968809) (not b!2968682) (not b!2968823) (not b!2968937))
(check-sat)
