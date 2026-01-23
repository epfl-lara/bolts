; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287312 () Bool)

(assert start!287312)

(declare-fun b!2969161 () Bool)

(declare-fun e!1868332 () Bool)

(declare-datatypes ((C!18700 0))(
  ( (C!18701 (val!11386 Int)) )
))
(declare-datatypes ((Regex!9257 0))(
  ( (ElementMatch!9257 (c!487029 C!18700)) (Concat!14578 (regOne!19026 Regex!9257) (regTwo!19026 Regex!9257)) (EmptyExpr!9257) (Star!9257 (reg!9586 Regex!9257)) (EmptyLang!9257) (Union!9257 (regOne!19027 Regex!9257) (regTwo!19027 Regex!9257)) )
))
(declare-fun r!17423 () Regex!9257)

(declare-fun validRegex!3990 (Regex!9257) Bool)

(declare-fun simplify!258 (Regex!9257) Regex!9257)

(assert (=> b!2969161 (= e!1868332 (validRegex!3990 (simplify!258 r!17423)))))

(declare-fun b!2969162 () Bool)

(declare-fun e!1868330 () Bool)

(declare-fun tp_is_empty!16077 () Bool)

(declare-fun tp!946964 () Bool)

(assert (=> b!2969162 (= e!1868330 (and tp_is_empty!16077 tp!946964))))

(declare-fun b!2969163 () Bool)

(declare-fun e!1868331 () Bool)

(assert (=> b!2969163 (= e!1868331 tp_is_empty!16077)))

(declare-fun res!1224595 () Bool)

(declare-fun e!1868329 () Bool)

(assert (=> start!287312 (=> (not res!1224595) (not e!1868329))))

(assert (=> start!287312 (= res!1224595 (validRegex!3990 r!17423))))

(assert (=> start!287312 e!1868329))

(assert (=> start!287312 e!1868331))

(assert (=> start!287312 e!1868330))

(declare-fun b!2969164 () Bool)

(declare-fun e!1868333 () Bool)

(assert (=> b!2969164 (= e!1868333 e!1868332)))

(declare-fun res!1224596 () Bool)

(assert (=> b!2969164 (=> res!1224596 e!1868332)))

(declare-fun lt!1035914 () Bool)

(assert (=> b!2969164 (= res!1224596 lt!1035914)))

(declare-fun lt!1035918 () Regex!9257)

(declare-datatypes ((List!35122 0))(
  ( (Nil!34998) (Cons!34998 (h!40418 C!18700) (t!234187 List!35122)) )
))
(declare-fun s!11993 () List!35122)

(declare-fun matchR!4139 (Regex!9257 List!35122) Bool)

(assert (=> b!2969164 (= lt!1035914 (matchR!4139 lt!1035918 s!11993))))

(assert (=> b!2969164 (= lt!1035914 (matchR!4139 (reg!9586 r!17423) s!11993))))

(declare-datatypes ((Unit!48893 0))(
  ( (Unit!48894) )
))
(declare-fun lt!1035915 () Unit!48893)

(declare-fun lemmaSimplifySound!166 (Regex!9257 List!35122) Unit!48893)

(assert (=> b!2969164 (= lt!1035915 (lemmaSimplifySound!166 (reg!9586 r!17423) s!11993))))

(declare-fun b!2969165 () Bool)

(declare-fun tp!946961 () Bool)

(declare-fun tp!946965 () Bool)

(assert (=> b!2969165 (= e!1868331 (and tp!946961 tp!946965))))

(declare-fun b!2969166 () Bool)

(declare-fun tp!946962 () Bool)

(declare-fun tp!946960 () Bool)

(assert (=> b!2969166 (= e!1868331 (and tp!946962 tp!946960))))

(declare-fun b!2969167 () Bool)

(declare-fun e!1868328 () Bool)

(assert (=> b!2969167 (= e!1868328 e!1868333)))

(declare-fun res!1224594 () Bool)

(assert (=> b!2969167 (=> res!1224594 e!1868333)))

(declare-fun isEmptyLang!371 (Regex!9257) Bool)

(assert (=> b!2969167 (= res!1224594 (not (isEmptyLang!371 lt!1035918)))))

(assert (=> b!2969167 (= lt!1035918 (simplify!258 (reg!9586 r!17423)))))

(declare-fun b!2969168 () Bool)

(assert (=> b!2969168 (= e!1868329 (not e!1868328))))

(declare-fun res!1224593 () Bool)

(assert (=> b!2969168 (=> res!1224593 e!1868328)))

(declare-fun lt!1035917 () Bool)

(get-info :version)

(assert (=> b!2969168 (= res!1224593 (or lt!1035917 ((_ is Concat!14578) r!17423) ((_ is Union!9257) r!17423) (not ((_ is Star!9257) r!17423))))))

(declare-fun matchRSpec!1394 (Regex!9257 List!35122) Bool)

(assert (=> b!2969168 (= lt!1035917 (matchRSpec!1394 r!17423 s!11993))))

(assert (=> b!2969168 (= lt!1035917 (matchR!4139 r!17423 s!11993))))

(declare-fun lt!1035916 () Unit!48893)

(declare-fun mainMatchTheorem!1394 (Regex!9257 List!35122) Unit!48893)

(assert (=> b!2969168 (= lt!1035916 (mainMatchTheorem!1394 r!17423 s!11993))))

(declare-fun b!2969169 () Bool)

(declare-fun tp!946963 () Bool)

(assert (=> b!2969169 (= e!1868331 tp!946963)))

(assert (= (and start!287312 res!1224595) b!2969168))

(assert (= (and b!2969168 (not res!1224593)) b!2969167))

(assert (= (and b!2969167 (not res!1224594)) b!2969164))

(assert (= (and b!2969164 (not res!1224596)) b!2969161))

(assert (= (and start!287312 ((_ is ElementMatch!9257) r!17423)) b!2969163))

(assert (= (and start!287312 ((_ is Concat!14578) r!17423)) b!2969166))

(assert (= (and start!287312 ((_ is Star!9257) r!17423)) b!2969169))

(assert (= (and start!287312 ((_ is Union!9257) r!17423)) b!2969165))

(assert (= (and start!287312 ((_ is Cons!34998) s!11993)) b!2969162))

(declare-fun m!3337671 () Bool)

(assert (=> b!2969168 m!3337671))

(declare-fun m!3337673 () Bool)

(assert (=> b!2969168 m!3337673))

(declare-fun m!3337675 () Bool)

(assert (=> b!2969168 m!3337675))

(declare-fun m!3337677 () Bool)

(assert (=> b!2969161 m!3337677))

(assert (=> b!2969161 m!3337677))

(declare-fun m!3337679 () Bool)

(assert (=> b!2969161 m!3337679))

(declare-fun m!3337681 () Bool)

(assert (=> start!287312 m!3337681))

(declare-fun m!3337683 () Bool)

(assert (=> b!2969164 m!3337683))

(declare-fun m!3337685 () Bool)

(assert (=> b!2969164 m!3337685))

(declare-fun m!3337687 () Bool)

(assert (=> b!2969164 m!3337687))

(declare-fun m!3337689 () Bool)

(assert (=> b!2969167 m!3337689))

(declare-fun m!3337691 () Bool)

(assert (=> b!2969167 m!3337691))

(check-sat (not b!2969167) (not b!2969161) (not start!287312) (not b!2969169) (not b!2969162) tp_is_empty!16077 (not b!2969168) (not b!2969164) (not b!2969166) (not b!2969165))
(check-sat)
(get-model)

(declare-fun b!2969491 () Bool)

(assert (=> b!2969491 true))

(assert (=> b!2969491 true))

(declare-fun bs!526463 () Bool)

(declare-fun b!2969493 () Bool)

(assert (= bs!526463 (and b!2969493 b!2969491)))

(declare-fun lambda!110518 () Int)

(declare-fun lambda!110517 () Int)

(assert (=> bs!526463 (not (= lambda!110518 lambda!110517))))

(assert (=> b!2969493 true))

(assert (=> b!2969493 true))

(declare-fun d!842554 () Bool)

(declare-fun c!487119 () Bool)

(assert (=> d!842554 (= c!487119 ((_ is EmptyExpr!9257) r!17423))))

(declare-fun e!1868510 () Bool)

(assert (=> d!842554 (= (matchRSpec!1394 r!17423 s!11993) e!1868510)))

(declare-fun b!2969490 () Bool)

(declare-fun e!1868507 () Bool)

(assert (=> b!2969490 (= e!1868507 (= s!11993 (Cons!34998 (c!487029 r!17423) Nil!34998)))))

(declare-fun e!1868509 () Bool)

(declare-fun call!197550 () Bool)

(assert (=> b!2969491 (= e!1868509 call!197550)))

(declare-fun b!2969492 () Bool)

(declare-fun e!1868508 () Bool)

(assert (=> b!2969492 (= e!1868508 (matchRSpec!1394 (regTwo!19027 r!17423) s!11993))))

(declare-fun bm!197545 () Bool)

(declare-fun call!197551 () Bool)

(declare-fun isEmpty!19239 (List!35122) Bool)

(assert (=> bm!197545 (= call!197551 (isEmpty!19239 s!11993))))

(declare-fun e!1868511 () Bool)

(assert (=> b!2969493 (= e!1868511 call!197550)))

(declare-fun b!2969494 () Bool)

(assert (=> b!2969494 (= e!1868510 call!197551)))

(declare-fun b!2969495 () Bool)

(declare-fun e!1868506 () Bool)

(assert (=> b!2969495 (= e!1868506 e!1868508)))

(declare-fun res!1224704 () Bool)

(assert (=> b!2969495 (= res!1224704 (matchRSpec!1394 (regOne!19027 r!17423) s!11993))))

(assert (=> b!2969495 (=> res!1224704 e!1868508)))

(declare-fun b!2969496 () Bool)

(declare-fun res!1224705 () Bool)

(assert (=> b!2969496 (=> res!1224705 e!1868509)))

(assert (=> b!2969496 (= res!1224705 call!197551)))

(assert (=> b!2969496 (= e!1868511 e!1868509)))

(declare-fun b!2969497 () Bool)

(declare-fun c!487117 () Bool)

(assert (=> b!2969497 (= c!487117 ((_ is Union!9257) r!17423))))

(assert (=> b!2969497 (= e!1868507 e!1868506)))

(declare-fun b!2969498 () Bool)

(declare-fun e!1868512 () Bool)

(assert (=> b!2969498 (= e!1868510 e!1868512)))

(declare-fun res!1224706 () Bool)

(assert (=> b!2969498 (= res!1224706 (not ((_ is EmptyLang!9257) r!17423)))))

(assert (=> b!2969498 (=> (not res!1224706) (not e!1868512))))

(declare-fun c!487120 () Bool)

(declare-fun bm!197546 () Bool)

(declare-fun Exists!1543 (Int) Bool)

(assert (=> bm!197546 (= call!197550 (Exists!1543 (ite c!487120 lambda!110517 lambda!110518)))))

(declare-fun b!2969499 () Bool)

(declare-fun c!487118 () Bool)

(assert (=> b!2969499 (= c!487118 ((_ is ElementMatch!9257) r!17423))))

(assert (=> b!2969499 (= e!1868512 e!1868507)))

(declare-fun b!2969500 () Bool)

(assert (=> b!2969500 (= e!1868506 e!1868511)))

(assert (=> b!2969500 (= c!487120 ((_ is Star!9257) r!17423))))

(assert (= (and d!842554 c!487119) b!2969494))

(assert (= (and d!842554 (not c!487119)) b!2969498))

(assert (= (and b!2969498 res!1224706) b!2969499))

(assert (= (and b!2969499 c!487118) b!2969490))

(assert (= (and b!2969499 (not c!487118)) b!2969497))

(assert (= (and b!2969497 c!487117) b!2969495))

(assert (= (and b!2969497 (not c!487117)) b!2969500))

(assert (= (and b!2969495 (not res!1224704)) b!2969492))

(assert (= (and b!2969500 c!487120) b!2969496))

(assert (= (and b!2969500 (not c!487120)) b!2969493))

(assert (= (and b!2969496 (not res!1224705)) b!2969491))

(assert (= (or b!2969491 b!2969493) bm!197546))

(assert (= (or b!2969494 b!2969496) bm!197545))

(declare-fun m!3337777 () Bool)

(assert (=> b!2969492 m!3337777))

(declare-fun m!3337779 () Bool)

(assert (=> bm!197545 m!3337779))

(declare-fun m!3337781 () Bool)

(assert (=> b!2969495 m!3337781))

(declare-fun m!3337783 () Bool)

(assert (=> bm!197546 m!3337783))

(assert (=> b!2969168 d!842554))

(declare-fun b!2969533 () Bool)

(declare-fun e!1868532 () Bool)

(declare-fun lt!1035956 () Bool)

(declare-fun call!197554 () Bool)

(assert (=> b!2969533 (= e!1868532 (= lt!1035956 call!197554))))

(declare-fun b!2969534 () Bool)

(declare-fun e!1868527 () Bool)

(declare-fun head!6619 (List!35122) C!18700)

(assert (=> b!2969534 (= e!1868527 (= (head!6619 s!11993) (c!487029 r!17423)))))

(declare-fun b!2969535 () Bool)

(declare-fun e!1868530 () Bool)

(assert (=> b!2969535 (= e!1868532 e!1868530)))

(declare-fun c!487129 () Bool)

(assert (=> b!2969535 (= c!487129 ((_ is EmptyLang!9257) r!17423))))

(declare-fun bm!197549 () Bool)

(assert (=> bm!197549 (= call!197554 (isEmpty!19239 s!11993))))

(declare-fun b!2969536 () Bool)

(declare-fun e!1868528 () Bool)

(declare-fun nullable!2958 (Regex!9257) Bool)

(assert (=> b!2969536 (= e!1868528 (nullable!2958 r!17423))))

(declare-fun b!2969537 () Bool)

(declare-fun e!1868529 () Bool)

(declare-fun e!1868533 () Bool)

(assert (=> b!2969537 (= e!1868529 e!1868533)))

(declare-fun res!1224728 () Bool)

(assert (=> b!2969537 (=> res!1224728 e!1868533)))

(assert (=> b!2969537 (= res!1224728 call!197554)))

(declare-fun b!2969539 () Bool)

(declare-fun res!1224727 () Bool)

(declare-fun e!1868531 () Bool)

(assert (=> b!2969539 (=> res!1224727 e!1868531)))

(assert (=> b!2969539 (= res!1224727 (not ((_ is ElementMatch!9257) r!17423)))))

(assert (=> b!2969539 (= e!1868530 e!1868531)))

(declare-fun b!2969540 () Bool)

(declare-fun res!1224729 () Bool)

(assert (=> b!2969540 (=> (not res!1224729) (not e!1868527))))

(declare-fun tail!4845 (List!35122) List!35122)

(assert (=> b!2969540 (= res!1224729 (isEmpty!19239 (tail!4845 s!11993)))))

(declare-fun b!2969541 () Bool)

(declare-fun res!1224730 () Bool)

(assert (=> b!2969541 (=> res!1224730 e!1868533)))

(assert (=> b!2969541 (= res!1224730 (not (isEmpty!19239 (tail!4845 s!11993))))))

(declare-fun b!2969542 () Bool)

(declare-fun res!1224725 () Bool)

(assert (=> b!2969542 (=> res!1224725 e!1868531)))

(assert (=> b!2969542 (= res!1224725 e!1868527)))

(declare-fun res!1224726 () Bool)

(assert (=> b!2969542 (=> (not res!1224726) (not e!1868527))))

(assert (=> b!2969542 (= res!1224726 lt!1035956)))

(declare-fun d!842576 () Bool)

(assert (=> d!842576 e!1868532))

(declare-fun c!487127 () Bool)

(assert (=> d!842576 (= c!487127 ((_ is EmptyExpr!9257) r!17423))))

(assert (=> d!842576 (= lt!1035956 e!1868528)))

(declare-fun c!487128 () Bool)

(assert (=> d!842576 (= c!487128 (isEmpty!19239 s!11993))))

(assert (=> d!842576 (validRegex!3990 r!17423)))

(assert (=> d!842576 (= (matchR!4139 r!17423 s!11993) lt!1035956)))

(declare-fun b!2969538 () Bool)

(assert (=> b!2969538 (= e!1868530 (not lt!1035956))))

(declare-fun b!2969543 () Bool)

(declare-fun derivativeStep!2560 (Regex!9257 C!18700) Regex!9257)

(assert (=> b!2969543 (= e!1868528 (matchR!4139 (derivativeStep!2560 r!17423 (head!6619 s!11993)) (tail!4845 s!11993)))))

(declare-fun b!2969544 () Bool)

(assert (=> b!2969544 (= e!1868533 (not (= (head!6619 s!11993) (c!487029 r!17423))))))

(declare-fun b!2969545 () Bool)

(assert (=> b!2969545 (= e!1868531 e!1868529)))

(declare-fun res!1224723 () Bool)

(assert (=> b!2969545 (=> (not res!1224723) (not e!1868529))))

(assert (=> b!2969545 (= res!1224723 (not lt!1035956))))

(declare-fun b!2969546 () Bool)

(declare-fun res!1224724 () Bool)

(assert (=> b!2969546 (=> (not res!1224724) (not e!1868527))))

(assert (=> b!2969546 (= res!1224724 (not call!197554))))

(assert (= (and d!842576 c!487128) b!2969536))

(assert (= (and d!842576 (not c!487128)) b!2969543))

(assert (= (and d!842576 c!487127) b!2969533))

(assert (= (and d!842576 (not c!487127)) b!2969535))

(assert (= (and b!2969535 c!487129) b!2969538))

(assert (= (and b!2969535 (not c!487129)) b!2969539))

(assert (= (and b!2969539 (not res!1224727)) b!2969542))

(assert (= (and b!2969542 res!1224726) b!2969546))

(assert (= (and b!2969546 res!1224724) b!2969540))

(assert (= (and b!2969540 res!1224729) b!2969534))

(assert (= (and b!2969542 (not res!1224725)) b!2969545))

(assert (= (and b!2969545 res!1224723) b!2969537))

(assert (= (and b!2969537 (not res!1224728)) b!2969541))

(assert (= (and b!2969541 (not res!1224730)) b!2969544))

(assert (= (or b!2969533 b!2969537 b!2969546) bm!197549))

(declare-fun m!3337785 () Bool)

(assert (=> b!2969543 m!3337785))

(assert (=> b!2969543 m!3337785))

(declare-fun m!3337787 () Bool)

(assert (=> b!2969543 m!3337787))

(declare-fun m!3337789 () Bool)

(assert (=> b!2969543 m!3337789))

(assert (=> b!2969543 m!3337787))

(assert (=> b!2969543 m!3337789))

(declare-fun m!3337791 () Bool)

(assert (=> b!2969543 m!3337791))

(assert (=> b!2969534 m!3337785))

(assert (=> b!2969540 m!3337789))

(assert (=> b!2969540 m!3337789))

(declare-fun m!3337793 () Bool)

(assert (=> b!2969540 m!3337793))

(assert (=> b!2969544 m!3337785))

(declare-fun m!3337795 () Bool)

(assert (=> b!2969536 m!3337795))

(assert (=> d!842576 m!3337779))

(assert (=> d!842576 m!3337681))

(assert (=> b!2969541 m!3337789))

(assert (=> b!2969541 m!3337789))

(assert (=> b!2969541 m!3337793))

(assert (=> bm!197549 m!3337779))

(assert (=> b!2969168 d!842576))

(declare-fun d!842578 () Bool)

(assert (=> d!842578 (= (matchR!4139 r!17423 s!11993) (matchRSpec!1394 r!17423 s!11993))))

(declare-fun lt!1035959 () Unit!48893)

(declare-fun choose!17560 (Regex!9257 List!35122) Unit!48893)

(assert (=> d!842578 (= lt!1035959 (choose!17560 r!17423 s!11993))))

(assert (=> d!842578 (validRegex!3990 r!17423)))

(assert (=> d!842578 (= (mainMatchTheorem!1394 r!17423 s!11993) lt!1035959)))

(declare-fun bs!526464 () Bool)

(assert (= bs!526464 d!842578))

(assert (=> bs!526464 m!3337673))

(assert (=> bs!526464 m!3337671))

(declare-fun m!3337797 () Bool)

(assert (=> bs!526464 m!3337797))

(assert (=> bs!526464 m!3337681))

(assert (=> b!2969168 d!842578))

(declare-fun d!842580 () Bool)

(assert (=> d!842580 (= (isEmptyLang!371 lt!1035918) ((_ is EmptyLang!9257) lt!1035918))))

(assert (=> b!2969167 d!842580))

(declare-fun b!2969597 () Bool)

(declare-fun e!1868570 () Regex!9257)

(assert (=> b!2969597 (= e!1868570 (reg!9586 r!17423))))

(declare-fun b!2969598 () Bool)

(declare-fun e!1868563 () Regex!9257)

(declare-fun lt!1035973 () Regex!9257)

(declare-fun lt!1035977 () Regex!9257)

(assert (=> b!2969598 (= e!1868563 (Union!9257 lt!1035973 lt!1035977))))

(declare-fun bm!197564 () Bool)

(declare-fun call!197575 () Bool)

(declare-fun call!197569 () Bool)

(assert (=> bm!197564 (= call!197575 call!197569)))

(declare-fun b!2969599 () Bool)

(declare-fun c!487161 () Bool)

(assert (=> b!2969599 (= c!487161 ((_ is Union!9257) (reg!9586 r!17423)))))

(declare-fun e!1868562 () Regex!9257)

(declare-fun e!1868567 () Regex!9257)

(assert (=> b!2969599 (= e!1868562 e!1868567)))

(declare-fun b!2969600 () Bool)

(declare-fun e!1868574 () Bool)

(declare-fun lt!1035974 () Regex!9257)

(assert (=> b!2969600 (= e!1868574 (= (nullable!2958 lt!1035974) (nullable!2958 (reg!9586 r!17423))))))

(declare-fun b!2969601 () Bool)

(declare-fun e!1868565 () Regex!9257)

(declare-fun lt!1035975 () Regex!9257)

(assert (=> b!2969601 (= e!1868565 lt!1035975)))

(declare-fun b!2969602 () Bool)

(declare-fun e!1868568 () Regex!9257)

(declare-fun lt!1035972 () Regex!9257)

(assert (=> b!2969602 (= e!1868568 (Concat!14578 lt!1035972 lt!1035975))))

(declare-fun c!487155 () Bool)

(declare-fun bm!197565 () Bool)

(declare-fun call!197572 () Regex!9257)

(assert (=> bm!197565 (= call!197572 (simplify!258 (ite c!487155 (reg!9586 (reg!9586 r!17423)) (ite c!487161 (regTwo!19027 (reg!9586 r!17423)) (regOne!19026 (reg!9586 r!17423))))))))

(declare-fun b!2969603 () Bool)

(declare-fun c!487160 () Bool)

(declare-fun isEmptyExpr!414 (Regex!9257) Bool)

(assert (=> b!2969603 (= c!487160 (isEmptyExpr!414 lt!1035972))))

(declare-fun e!1868566 () Regex!9257)

(assert (=> b!2969603 (= e!1868566 e!1868565)))

(declare-fun b!2969604 () Bool)

(declare-fun c!487157 () Bool)

(declare-fun e!1868573 () Bool)

(assert (=> b!2969604 (= c!487157 e!1868573)))

(declare-fun res!1224737 () Bool)

(assert (=> b!2969604 (=> res!1224737 e!1868573)))

(assert (=> b!2969604 (= res!1224737 call!197569)))

(declare-fun lt!1035976 () Regex!9257)

(assert (=> b!2969604 (= lt!1035976 call!197572)))

(declare-fun e!1868569 () Regex!9257)

(assert (=> b!2969604 (= e!1868562 e!1868569)))

(declare-fun b!2969605 () Bool)

(declare-fun call!197573 () Bool)

(assert (=> b!2969605 (= e!1868573 call!197573)))

(declare-fun b!2969606 () Bool)

(declare-fun c!487156 () Bool)

(assert (=> b!2969606 (= c!487156 ((_ is EmptyExpr!9257) (reg!9586 r!17423)))))

(declare-fun e!1868575 () Regex!9257)

(assert (=> b!2969606 (= e!1868570 e!1868575)))

(declare-fun b!2969607 () Bool)

(declare-fun e!1868564 () Regex!9257)

(assert (=> b!2969607 (= e!1868567 e!1868564)))

(declare-fun call!197574 () Regex!9257)

(assert (=> b!2969607 (= lt!1035973 call!197574)))

(declare-fun call!197571 () Regex!9257)

(assert (=> b!2969607 (= lt!1035977 call!197571)))

(declare-fun c!487152 () Bool)

(assert (=> b!2969607 (= c!487152 call!197575)))

(declare-fun b!2969608 () Bool)

(assert (=> b!2969608 (= e!1868568 lt!1035972)))

(declare-fun bm!197566 () Bool)

(declare-fun call!197570 () Bool)

(assert (=> bm!197566 (= call!197570 (isEmptyLang!371 (ite c!487161 lt!1035977 lt!1035972)))))

(declare-fun b!2969609 () Bool)

(assert (=> b!2969609 (= e!1868564 lt!1035977)))

(declare-fun b!2969610 () Bool)

(declare-fun e!1868571 () Bool)

(assert (=> b!2969610 (= e!1868571 call!197575)))

(declare-fun bm!197567 () Bool)

(assert (=> bm!197567 (= call!197571 call!197572)))

(declare-fun b!2969611 () Bool)

(declare-fun e!1868572 () Regex!9257)

(assert (=> b!2969611 (= e!1868572 EmptyLang!9257)))

(declare-fun b!2969612 () Bool)

(assert (=> b!2969612 (= e!1868566 EmptyLang!9257)))

(declare-fun b!2969613 () Bool)

(assert (=> b!2969613 (= e!1868575 EmptyExpr!9257)))

(declare-fun b!2969614 () Bool)

(assert (=> b!2969614 (= e!1868567 e!1868566)))

(assert (=> b!2969614 (= lt!1035972 call!197571)))

(assert (=> b!2969614 (= lt!1035975 call!197574)))

(declare-fun res!1224739 () Bool)

(assert (=> b!2969614 (= res!1224739 call!197570)))

(assert (=> b!2969614 (=> res!1224739 e!1868571)))

(declare-fun c!487162 () Bool)

(assert (=> b!2969614 (= c!487162 e!1868571)))

(declare-fun bm!197568 () Bool)

(assert (=> bm!197568 (= call!197569 (isEmptyLang!371 (ite c!487155 lt!1035976 (ite c!487161 lt!1035973 lt!1035975))))))

(declare-fun b!2969615 () Bool)

(assert (=> b!2969615 (= e!1868563 lt!1035973)))

(declare-fun b!2969616 () Bool)

(assert (=> b!2969616 (= e!1868575 e!1868562)))

(assert (=> b!2969616 (= c!487155 ((_ is Star!9257) (reg!9586 r!17423)))))

(declare-fun b!2969617 () Bool)

(assert (=> b!2969617 (= e!1868572 e!1868570)))

(declare-fun c!487159 () Bool)

(assert (=> b!2969617 (= c!487159 ((_ is ElementMatch!9257) (reg!9586 r!17423)))))

(declare-fun b!2969618 () Bool)

(assert (=> b!2969618 (= e!1868569 (Star!9257 lt!1035976))))

(declare-fun b!2969619 () Bool)

(declare-fun c!487154 () Bool)

(assert (=> b!2969619 (= c!487154 call!197570)))

(assert (=> b!2969619 (= e!1868564 e!1868563)))

(declare-fun b!2969620 () Bool)

(assert (=> b!2969620 (= e!1868569 EmptyExpr!9257)))

(declare-fun b!2969621 () Bool)

(assert (=> b!2969621 (= e!1868565 e!1868568)))

(declare-fun c!487158 () Bool)

(assert (=> b!2969621 (= c!487158 call!197573)))

(declare-fun bm!197569 () Bool)

(assert (=> bm!197569 (= call!197574 (simplify!258 (ite c!487161 (regOne!19027 (reg!9586 r!17423)) (regTwo!19026 (reg!9586 r!17423)))))))

(declare-fun bm!197570 () Bool)

(assert (=> bm!197570 (= call!197573 (isEmptyExpr!414 (ite c!487155 lt!1035976 lt!1035975)))))

(declare-fun d!842582 () Bool)

(assert (=> d!842582 e!1868574))

(declare-fun res!1224738 () Bool)

(assert (=> d!842582 (=> (not res!1224738) (not e!1868574))))

(assert (=> d!842582 (= res!1224738 (validRegex!3990 lt!1035974))))

(assert (=> d!842582 (= lt!1035974 e!1868572)))

(declare-fun c!487153 () Bool)

(assert (=> d!842582 (= c!487153 ((_ is EmptyLang!9257) (reg!9586 r!17423)))))

(assert (=> d!842582 (validRegex!3990 (reg!9586 r!17423))))

(assert (=> d!842582 (= (simplify!258 (reg!9586 r!17423)) lt!1035974)))

(assert (= (and d!842582 c!487153) b!2969611))

(assert (= (and d!842582 (not c!487153)) b!2969617))

(assert (= (and b!2969617 c!487159) b!2969597))

(assert (= (and b!2969617 (not c!487159)) b!2969606))

(assert (= (and b!2969606 c!487156) b!2969613))

(assert (= (and b!2969606 (not c!487156)) b!2969616))

(assert (= (and b!2969616 c!487155) b!2969604))

(assert (= (and b!2969616 (not c!487155)) b!2969599))

(assert (= (and b!2969604 (not res!1224737)) b!2969605))

(assert (= (and b!2969604 c!487157) b!2969620))

(assert (= (and b!2969604 (not c!487157)) b!2969618))

(assert (= (and b!2969599 c!487161) b!2969607))

(assert (= (and b!2969599 (not c!487161)) b!2969614))

(assert (= (and b!2969607 c!487152) b!2969609))

(assert (= (and b!2969607 (not c!487152)) b!2969619))

(assert (= (and b!2969619 c!487154) b!2969615))

(assert (= (and b!2969619 (not c!487154)) b!2969598))

(assert (= (and b!2969614 (not res!1224739)) b!2969610))

(assert (= (and b!2969614 c!487162) b!2969612))

(assert (= (and b!2969614 (not c!487162)) b!2969603))

(assert (= (and b!2969603 c!487160) b!2969601))

(assert (= (and b!2969603 (not c!487160)) b!2969621))

(assert (= (and b!2969621 c!487158) b!2969608))

(assert (= (and b!2969621 (not c!487158)) b!2969602))

(assert (= (or b!2969607 b!2969614) bm!197569))

(assert (= (or b!2969607 b!2969614) bm!197567))

(assert (= (or b!2969619 b!2969614) bm!197566))

(assert (= (or b!2969607 b!2969610) bm!197564))

(assert (= (or b!2969605 b!2969621) bm!197570))

(assert (= (or b!2969604 bm!197567) bm!197565))

(assert (= (or b!2969604 bm!197564) bm!197568))

(assert (= (and d!842582 res!1224738) b!2969600))

(declare-fun m!3337799 () Bool)

(assert (=> bm!197566 m!3337799))

(declare-fun m!3337801 () Bool)

(assert (=> b!2969600 m!3337801))

(declare-fun m!3337803 () Bool)

(assert (=> b!2969600 m!3337803))

(declare-fun m!3337805 () Bool)

(assert (=> bm!197569 m!3337805))

(declare-fun m!3337807 () Bool)

(assert (=> bm!197570 m!3337807))

(declare-fun m!3337809 () Bool)

(assert (=> bm!197568 m!3337809))

(declare-fun m!3337811 () Bool)

(assert (=> b!2969603 m!3337811))

(declare-fun m!3337813 () Bool)

(assert (=> bm!197565 m!3337813))

(declare-fun m!3337815 () Bool)

(assert (=> d!842582 m!3337815))

(declare-fun m!3337817 () Bool)

(assert (=> d!842582 m!3337817))

(assert (=> b!2969167 d!842582))

(declare-fun b!2969640 () Bool)

(declare-fun res!1224752 () Bool)

(declare-fun e!1868592 () Bool)

(assert (=> b!2969640 (=> (not res!1224752) (not e!1868592))))

(declare-fun call!197582 () Bool)

(assert (=> b!2969640 (= res!1224752 call!197582)))

(declare-fun e!1868596 () Bool)

(assert (=> b!2969640 (= e!1868596 e!1868592)))

(declare-fun b!2969641 () Bool)

(declare-fun e!1868593 () Bool)

(declare-fun e!1868595 () Bool)

(assert (=> b!2969641 (= e!1868593 e!1868595)))

(declare-fun c!487168 () Bool)

(assert (=> b!2969641 (= c!487168 ((_ is Star!9257) (simplify!258 r!17423)))))

(declare-fun bm!197577 () Bool)

(declare-fun c!487167 () Bool)

(assert (=> bm!197577 (= call!197582 (validRegex!3990 (ite c!487167 (regOne!19027 (simplify!258 r!17423)) (regTwo!19026 (simplify!258 r!17423)))))))

(declare-fun b!2969642 () Bool)

(assert (=> b!2969642 (= e!1868595 e!1868596)))

(assert (=> b!2969642 (= c!487167 ((_ is Union!9257) (simplify!258 r!17423)))))

(declare-fun b!2969643 () Bool)

(declare-fun e!1868591 () Bool)

(assert (=> b!2969643 (= e!1868591 call!197582)))

(declare-fun b!2969645 () Bool)

(declare-fun call!197584 () Bool)

(assert (=> b!2969645 (= e!1868592 call!197584)))

(declare-fun b!2969646 () Bool)

(declare-fun e!1868590 () Bool)

(assert (=> b!2969646 (= e!1868595 e!1868590)))

(declare-fun res!1224750 () Bool)

(assert (=> b!2969646 (= res!1224750 (not (nullable!2958 (reg!9586 (simplify!258 r!17423)))))))

(assert (=> b!2969646 (=> (not res!1224750) (not e!1868590))))

(declare-fun bm!197578 () Bool)

(declare-fun call!197583 () Bool)

(assert (=> bm!197578 (= call!197583 (validRegex!3990 (ite c!487168 (reg!9586 (simplify!258 r!17423)) (ite c!487167 (regTwo!19027 (simplify!258 r!17423)) (regOne!19026 (simplify!258 r!17423))))))))

(declare-fun b!2969647 () Bool)

(declare-fun e!1868594 () Bool)

(assert (=> b!2969647 (= e!1868594 e!1868591)))

(declare-fun res!1224751 () Bool)

(assert (=> b!2969647 (=> (not res!1224751) (not e!1868591))))

(assert (=> b!2969647 (= res!1224751 call!197584)))

(declare-fun b!2969644 () Bool)

(assert (=> b!2969644 (= e!1868590 call!197583)))

(declare-fun d!842584 () Bool)

(declare-fun res!1224754 () Bool)

(assert (=> d!842584 (=> res!1224754 e!1868593)))

(assert (=> d!842584 (= res!1224754 ((_ is ElementMatch!9257) (simplify!258 r!17423)))))

(assert (=> d!842584 (= (validRegex!3990 (simplify!258 r!17423)) e!1868593)))

(declare-fun bm!197579 () Bool)

(assert (=> bm!197579 (= call!197584 call!197583)))

(declare-fun b!2969648 () Bool)

(declare-fun res!1224753 () Bool)

(assert (=> b!2969648 (=> res!1224753 e!1868594)))

(assert (=> b!2969648 (= res!1224753 (not ((_ is Concat!14578) (simplify!258 r!17423))))))

(assert (=> b!2969648 (= e!1868596 e!1868594)))

(assert (= (and d!842584 (not res!1224754)) b!2969641))

(assert (= (and b!2969641 c!487168) b!2969646))

(assert (= (and b!2969641 (not c!487168)) b!2969642))

(assert (= (and b!2969646 res!1224750) b!2969644))

(assert (= (and b!2969642 c!487167) b!2969640))

(assert (= (and b!2969642 (not c!487167)) b!2969648))

(assert (= (and b!2969640 res!1224752) b!2969645))

(assert (= (and b!2969648 (not res!1224753)) b!2969647))

(assert (= (and b!2969647 res!1224751) b!2969643))

(assert (= (or b!2969640 b!2969643) bm!197577))

(assert (= (or b!2969645 b!2969647) bm!197579))

(assert (= (or b!2969644 bm!197579) bm!197578))

(declare-fun m!3337819 () Bool)

(assert (=> bm!197577 m!3337819))

(declare-fun m!3337821 () Bool)

(assert (=> b!2969646 m!3337821))

(declare-fun m!3337823 () Bool)

(assert (=> bm!197578 m!3337823))

(assert (=> b!2969161 d!842584))

(declare-fun b!2969649 () Bool)

(declare-fun e!1868605 () Regex!9257)

(assert (=> b!2969649 (= e!1868605 r!17423)))

(declare-fun b!2969650 () Bool)

(declare-fun e!1868598 () Regex!9257)

(declare-fun lt!1035979 () Regex!9257)

(declare-fun lt!1035983 () Regex!9257)

(assert (=> b!2969650 (= e!1868598 (Union!9257 lt!1035979 lt!1035983))))

(declare-fun bm!197580 () Bool)

(declare-fun call!197591 () Bool)

(declare-fun call!197585 () Bool)

(assert (=> bm!197580 (= call!197591 call!197585)))

(declare-fun b!2969651 () Bool)

(declare-fun c!487178 () Bool)

(assert (=> b!2969651 (= c!487178 ((_ is Union!9257) r!17423))))

(declare-fun e!1868597 () Regex!9257)

(declare-fun e!1868602 () Regex!9257)

(assert (=> b!2969651 (= e!1868597 e!1868602)))

(declare-fun b!2969652 () Bool)

(declare-fun e!1868609 () Bool)

(declare-fun lt!1035980 () Regex!9257)

(assert (=> b!2969652 (= e!1868609 (= (nullable!2958 lt!1035980) (nullable!2958 r!17423)))))

(declare-fun b!2969653 () Bool)

(declare-fun e!1868600 () Regex!9257)

(declare-fun lt!1035981 () Regex!9257)

(assert (=> b!2969653 (= e!1868600 lt!1035981)))

(declare-fun b!2969654 () Bool)

(declare-fun e!1868603 () Regex!9257)

(declare-fun lt!1035978 () Regex!9257)

(assert (=> b!2969654 (= e!1868603 (Concat!14578 lt!1035978 lt!1035981))))

(declare-fun c!487172 () Bool)

(declare-fun call!197588 () Regex!9257)

(declare-fun bm!197581 () Bool)

(assert (=> bm!197581 (= call!197588 (simplify!258 (ite c!487172 (reg!9586 r!17423) (ite c!487178 (regTwo!19027 r!17423) (regOne!19026 r!17423)))))))

(declare-fun b!2969655 () Bool)

(declare-fun c!487177 () Bool)

(assert (=> b!2969655 (= c!487177 (isEmptyExpr!414 lt!1035978))))

(declare-fun e!1868601 () Regex!9257)

(assert (=> b!2969655 (= e!1868601 e!1868600)))

(declare-fun b!2969656 () Bool)

(declare-fun c!487174 () Bool)

(declare-fun e!1868608 () Bool)

(assert (=> b!2969656 (= c!487174 e!1868608)))

(declare-fun res!1224755 () Bool)

(assert (=> b!2969656 (=> res!1224755 e!1868608)))

(assert (=> b!2969656 (= res!1224755 call!197585)))

(declare-fun lt!1035982 () Regex!9257)

(assert (=> b!2969656 (= lt!1035982 call!197588)))

(declare-fun e!1868604 () Regex!9257)

(assert (=> b!2969656 (= e!1868597 e!1868604)))

(declare-fun b!2969657 () Bool)

(declare-fun call!197589 () Bool)

(assert (=> b!2969657 (= e!1868608 call!197589)))

(declare-fun b!2969658 () Bool)

(declare-fun c!487173 () Bool)

(assert (=> b!2969658 (= c!487173 ((_ is EmptyExpr!9257) r!17423))))

(declare-fun e!1868610 () Regex!9257)

(assert (=> b!2969658 (= e!1868605 e!1868610)))

(declare-fun b!2969659 () Bool)

(declare-fun e!1868599 () Regex!9257)

(assert (=> b!2969659 (= e!1868602 e!1868599)))

(declare-fun call!197590 () Regex!9257)

(assert (=> b!2969659 (= lt!1035979 call!197590)))

(declare-fun call!197587 () Regex!9257)

(assert (=> b!2969659 (= lt!1035983 call!197587)))

(declare-fun c!487169 () Bool)

(assert (=> b!2969659 (= c!487169 call!197591)))

(declare-fun b!2969660 () Bool)

(assert (=> b!2969660 (= e!1868603 lt!1035978)))

(declare-fun bm!197582 () Bool)

(declare-fun call!197586 () Bool)

(assert (=> bm!197582 (= call!197586 (isEmptyLang!371 (ite c!487178 lt!1035983 lt!1035978)))))

(declare-fun b!2969661 () Bool)

(assert (=> b!2969661 (= e!1868599 lt!1035983)))

(declare-fun b!2969662 () Bool)

(declare-fun e!1868606 () Bool)

(assert (=> b!2969662 (= e!1868606 call!197591)))

(declare-fun bm!197583 () Bool)

(assert (=> bm!197583 (= call!197587 call!197588)))

(declare-fun b!2969663 () Bool)

(declare-fun e!1868607 () Regex!9257)

(assert (=> b!2969663 (= e!1868607 EmptyLang!9257)))

(declare-fun b!2969664 () Bool)

(assert (=> b!2969664 (= e!1868601 EmptyLang!9257)))

(declare-fun b!2969665 () Bool)

(assert (=> b!2969665 (= e!1868610 EmptyExpr!9257)))

(declare-fun b!2969666 () Bool)

(assert (=> b!2969666 (= e!1868602 e!1868601)))

(assert (=> b!2969666 (= lt!1035978 call!197587)))

(assert (=> b!2969666 (= lt!1035981 call!197590)))

(declare-fun res!1224757 () Bool)

(assert (=> b!2969666 (= res!1224757 call!197586)))

(assert (=> b!2969666 (=> res!1224757 e!1868606)))

(declare-fun c!487179 () Bool)

(assert (=> b!2969666 (= c!487179 e!1868606)))

(declare-fun bm!197584 () Bool)

(assert (=> bm!197584 (= call!197585 (isEmptyLang!371 (ite c!487172 lt!1035982 (ite c!487178 lt!1035979 lt!1035981))))))

(declare-fun b!2969667 () Bool)

(assert (=> b!2969667 (= e!1868598 lt!1035979)))

(declare-fun b!2969668 () Bool)

(assert (=> b!2969668 (= e!1868610 e!1868597)))

(assert (=> b!2969668 (= c!487172 ((_ is Star!9257) r!17423))))

(declare-fun b!2969669 () Bool)

(assert (=> b!2969669 (= e!1868607 e!1868605)))

(declare-fun c!487176 () Bool)

(assert (=> b!2969669 (= c!487176 ((_ is ElementMatch!9257) r!17423))))

(declare-fun b!2969670 () Bool)

(assert (=> b!2969670 (= e!1868604 (Star!9257 lt!1035982))))

(declare-fun b!2969671 () Bool)

(declare-fun c!487171 () Bool)

(assert (=> b!2969671 (= c!487171 call!197586)))

(assert (=> b!2969671 (= e!1868599 e!1868598)))

(declare-fun b!2969672 () Bool)

(assert (=> b!2969672 (= e!1868604 EmptyExpr!9257)))

(declare-fun b!2969673 () Bool)

(assert (=> b!2969673 (= e!1868600 e!1868603)))

(declare-fun c!487175 () Bool)

(assert (=> b!2969673 (= c!487175 call!197589)))

(declare-fun bm!197585 () Bool)

(assert (=> bm!197585 (= call!197590 (simplify!258 (ite c!487178 (regOne!19027 r!17423) (regTwo!19026 r!17423))))))

(declare-fun bm!197586 () Bool)

(assert (=> bm!197586 (= call!197589 (isEmptyExpr!414 (ite c!487172 lt!1035982 lt!1035981)))))

(declare-fun d!842586 () Bool)

(assert (=> d!842586 e!1868609))

(declare-fun res!1224756 () Bool)

(assert (=> d!842586 (=> (not res!1224756) (not e!1868609))))

(assert (=> d!842586 (= res!1224756 (validRegex!3990 lt!1035980))))

(assert (=> d!842586 (= lt!1035980 e!1868607)))

(declare-fun c!487170 () Bool)

(assert (=> d!842586 (= c!487170 ((_ is EmptyLang!9257) r!17423))))

(assert (=> d!842586 (validRegex!3990 r!17423)))

(assert (=> d!842586 (= (simplify!258 r!17423) lt!1035980)))

(assert (= (and d!842586 c!487170) b!2969663))

(assert (= (and d!842586 (not c!487170)) b!2969669))

(assert (= (and b!2969669 c!487176) b!2969649))

(assert (= (and b!2969669 (not c!487176)) b!2969658))

(assert (= (and b!2969658 c!487173) b!2969665))

(assert (= (and b!2969658 (not c!487173)) b!2969668))

(assert (= (and b!2969668 c!487172) b!2969656))

(assert (= (and b!2969668 (not c!487172)) b!2969651))

(assert (= (and b!2969656 (not res!1224755)) b!2969657))

(assert (= (and b!2969656 c!487174) b!2969672))

(assert (= (and b!2969656 (not c!487174)) b!2969670))

(assert (= (and b!2969651 c!487178) b!2969659))

(assert (= (and b!2969651 (not c!487178)) b!2969666))

(assert (= (and b!2969659 c!487169) b!2969661))

(assert (= (and b!2969659 (not c!487169)) b!2969671))

(assert (= (and b!2969671 c!487171) b!2969667))

(assert (= (and b!2969671 (not c!487171)) b!2969650))

(assert (= (and b!2969666 (not res!1224757)) b!2969662))

(assert (= (and b!2969666 c!487179) b!2969664))

(assert (= (and b!2969666 (not c!487179)) b!2969655))

(assert (= (and b!2969655 c!487177) b!2969653))

(assert (= (and b!2969655 (not c!487177)) b!2969673))

(assert (= (and b!2969673 c!487175) b!2969660))

(assert (= (and b!2969673 (not c!487175)) b!2969654))

(assert (= (or b!2969659 b!2969666) bm!197585))

(assert (= (or b!2969659 b!2969666) bm!197583))

(assert (= (or b!2969671 b!2969666) bm!197582))

(assert (= (or b!2969659 b!2969662) bm!197580))

(assert (= (or b!2969657 b!2969673) bm!197586))

(assert (= (or b!2969656 bm!197583) bm!197581))

(assert (= (or b!2969656 bm!197580) bm!197584))

(assert (= (and d!842586 res!1224756) b!2969652))

(declare-fun m!3337825 () Bool)

(assert (=> bm!197582 m!3337825))

(declare-fun m!3337827 () Bool)

(assert (=> b!2969652 m!3337827))

(assert (=> b!2969652 m!3337795))

(declare-fun m!3337829 () Bool)

(assert (=> bm!197585 m!3337829))

(declare-fun m!3337831 () Bool)

(assert (=> bm!197586 m!3337831))

(declare-fun m!3337833 () Bool)

(assert (=> bm!197584 m!3337833))

(declare-fun m!3337835 () Bool)

(assert (=> b!2969655 m!3337835))

(declare-fun m!3337837 () Bool)

(assert (=> bm!197581 m!3337837))

(declare-fun m!3337839 () Bool)

(assert (=> d!842586 m!3337839))

(assert (=> d!842586 m!3337681))

(assert (=> b!2969161 d!842586))

(declare-fun b!2969674 () Bool)

(declare-fun res!1224760 () Bool)

(declare-fun e!1868613 () Bool)

(assert (=> b!2969674 (=> (not res!1224760) (not e!1868613))))

(declare-fun call!197592 () Bool)

(assert (=> b!2969674 (= res!1224760 call!197592)))

(declare-fun e!1868617 () Bool)

(assert (=> b!2969674 (= e!1868617 e!1868613)))

(declare-fun b!2969675 () Bool)

(declare-fun e!1868614 () Bool)

(declare-fun e!1868616 () Bool)

(assert (=> b!2969675 (= e!1868614 e!1868616)))

(declare-fun c!487181 () Bool)

(assert (=> b!2969675 (= c!487181 ((_ is Star!9257) r!17423))))

(declare-fun bm!197587 () Bool)

(declare-fun c!487180 () Bool)

(assert (=> bm!197587 (= call!197592 (validRegex!3990 (ite c!487180 (regOne!19027 r!17423) (regTwo!19026 r!17423))))))

(declare-fun b!2969676 () Bool)

(assert (=> b!2969676 (= e!1868616 e!1868617)))

(assert (=> b!2969676 (= c!487180 ((_ is Union!9257) r!17423))))

(declare-fun b!2969677 () Bool)

(declare-fun e!1868612 () Bool)

(assert (=> b!2969677 (= e!1868612 call!197592)))

(declare-fun b!2969679 () Bool)

(declare-fun call!197594 () Bool)

(assert (=> b!2969679 (= e!1868613 call!197594)))

(declare-fun b!2969680 () Bool)

(declare-fun e!1868611 () Bool)

(assert (=> b!2969680 (= e!1868616 e!1868611)))

(declare-fun res!1224758 () Bool)

(assert (=> b!2969680 (= res!1224758 (not (nullable!2958 (reg!9586 r!17423))))))

(assert (=> b!2969680 (=> (not res!1224758) (not e!1868611))))

(declare-fun bm!197588 () Bool)

(declare-fun call!197593 () Bool)

(assert (=> bm!197588 (= call!197593 (validRegex!3990 (ite c!487181 (reg!9586 r!17423) (ite c!487180 (regTwo!19027 r!17423) (regOne!19026 r!17423)))))))

(declare-fun b!2969681 () Bool)

(declare-fun e!1868615 () Bool)

(assert (=> b!2969681 (= e!1868615 e!1868612)))

(declare-fun res!1224759 () Bool)

(assert (=> b!2969681 (=> (not res!1224759) (not e!1868612))))

(assert (=> b!2969681 (= res!1224759 call!197594)))

(declare-fun b!2969678 () Bool)

(assert (=> b!2969678 (= e!1868611 call!197593)))

(declare-fun d!842588 () Bool)

(declare-fun res!1224762 () Bool)

(assert (=> d!842588 (=> res!1224762 e!1868614)))

(assert (=> d!842588 (= res!1224762 ((_ is ElementMatch!9257) r!17423))))

(assert (=> d!842588 (= (validRegex!3990 r!17423) e!1868614)))

(declare-fun bm!197589 () Bool)

(assert (=> bm!197589 (= call!197594 call!197593)))

(declare-fun b!2969682 () Bool)

(declare-fun res!1224761 () Bool)

(assert (=> b!2969682 (=> res!1224761 e!1868615)))

(assert (=> b!2969682 (= res!1224761 (not ((_ is Concat!14578) r!17423)))))

(assert (=> b!2969682 (= e!1868617 e!1868615)))

(assert (= (and d!842588 (not res!1224762)) b!2969675))

(assert (= (and b!2969675 c!487181) b!2969680))

(assert (= (and b!2969675 (not c!487181)) b!2969676))

(assert (= (and b!2969680 res!1224758) b!2969678))

(assert (= (and b!2969676 c!487180) b!2969674))

(assert (= (and b!2969676 (not c!487180)) b!2969682))

(assert (= (and b!2969674 res!1224760) b!2969679))

(assert (= (and b!2969682 (not res!1224761)) b!2969681))

(assert (= (and b!2969681 res!1224759) b!2969677))

(assert (= (or b!2969674 b!2969677) bm!197587))

(assert (= (or b!2969679 b!2969681) bm!197589))

(assert (= (or b!2969678 bm!197589) bm!197588))

(declare-fun m!3337841 () Bool)

(assert (=> bm!197587 m!3337841))

(assert (=> b!2969680 m!3337803))

(declare-fun m!3337843 () Bool)

(assert (=> bm!197588 m!3337843))

(assert (=> start!287312 d!842588))

(declare-fun b!2969683 () Bool)

(declare-fun e!1868623 () Bool)

(declare-fun lt!1035984 () Bool)

(declare-fun call!197595 () Bool)

(assert (=> b!2969683 (= e!1868623 (= lt!1035984 call!197595))))

(declare-fun b!2969684 () Bool)

(declare-fun e!1868618 () Bool)

(assert (=> b!2969684 (= e!1868618 (= (head!6619 s!11993) (c!487029 lt!1035918)))))

(declare-fun b!2969685 () Bool)

(declare-fun e!1868621 () Bool)

(assert (=> b!2969685 (= e!1868623 e!1868621)))

(declare-fun c!487184 () Bool)

(assert (=> b!2969685 (= c!487184 ((_ is EmptyLang!9257) lt!1035918))))

(declare-fun bm!197590 () Bool)

(assert (=> bm!197590 (= call!197595 (isEmpty!19239 s!11993))))

(declare-fun b!2969686 () Bool)

(declare-fun e!1868619 () Bool)

(assert (=> b!2969686 (= e!1868619 (nullable!2958 lt!1035918))))

(declare-fun b!2969687 () Bool)

(declare-fun e!1868620 () Bool)

(declare-fun e!1868624 () Bool)

(assert (=> b!2969687 (= e!1868620 e!1868624)))

(declare-fun res!1224768 () Bool)

(assert (=> b!2969687 (=> res!1224768 e!1868624)))

(assert (=> b!2969687 (= res!1224768 call!197595)))

(declare-fun b!2969689 () Bool)

(declare-fun res!1224767 () Bool)

(declare-fun e!1868622 () Bool)

(assert (=> b!2969689 (=> res!1224767 e!1868622)))

(assert (=> b!2969689 (= res!1224767 (not ((_ is ElementMatch!9257) lt!1035918)))))

(assert (=> b!2969689 (= e!1868621 e!1868622)))

(declare-fun b!2969690 () Bool)

(declare-fun res!1224769 () Bool)

(assert (=> b!2969690 (=> (not res!1224769) (not e!1868618))))

(assert (=> b!2969690 (= res!1224769 (isEmpty!19239 (tail!4845 s!11993)))))

(declare-fun b!2969691 () Bool)

(declare-fun res!1224770 () Bool)

(assert (=> b!2969691 (=> res!1224770 e!1868624)))

(assert (=> b!2969691 (= res!1224770 (not (isEmpty!19239 (tail!4845 s!11993))))))

(declare-fun b!2969692 () Bool)

(declare-fun res!1224765 () Bool)

(assert (=> b!2969692 (=> res!1224765 e!1868622)))

(assert (=> b!2969692 (= res!1224765 e!1868618)))

(declare-fun res!1224766 () Bool)

(assert (=> b!2969692 (=> (not res!1224766) (not e!1868618))))

(assert (=> b!2969692 (= res!1224766 lt!1035984)))

(declare-fun d!842590 () Bool)

(assert (=> d!842590 e!1868623))

(declare-fun c!487182 () Bool)

(assert (=> d!842590 (= c!487182 ((_ is EmptyExpr!9257) lt!1035918))))

(assert (=> d!842590 (= lt!1035984 e!1868619)))

(declare-fun c!487183 () Bool)

(assert (=> d!842590 (= c!487183 (isEmpty!19239 s!11993))))

(assert (=> d!842590 (validRegex!3990 lt!1035918)))

(assert (=> d!842590 (= (matchR!4139 lt!1035918 s!11993) lt!1035984)))

(declare-fun b!2969688 () Bool)

(assert (=> b!2969688 (= e!1868621 (not lt!1035984))))

(declare-fun b!2969693 () Bool)

(assert (=> b!2969693 (= e!1868619 (matchR!4139 (derivativeStep!2560 lt!1035918 (head!6619 s!11993)) (tail!4845 s!11993)))))

(declare-fun b!2969694 () Bool)

(assert (=> b!2969694 (= e!1868624 (not (= (head!6619 s!11993) (c!487029 lt!1035918))))))

(declare-fun b!2969695 () Bool)

(assert (=> b!2969695 (= e!1868622 e!1868620)))

(declare-fun res!1224763 () Bool)

(assert (=> b!2969695 (=> (not res!1224763) (not e!1868620))))

(assert (=> b!2969695 (= res!1224763 (not lt!1035984))))

(declare-fun b!2969696 () Bool)

(declare-fun res!1224764 () Bool)

(assert (=> b!2969696 (=> (not res!1224764) (not e!1868618))))

(assert (=> b!2969696 (= res!1224764 (not call!197595))))

(assert (= (and d!842590 c!487183) b!2969686))

(assert (= (and d!842590 (not c!487183)) b!2969693))

(assert (= (and d!842590 c!487182) b!2969683))

(assert (= (and d!842590 (not c!487182)) b!2969685))

(assert (= (and b!2969685 c!487184) b!2969688))

(assert (= (and b!2969685 (not c!487184)) b!2969689))

(assert (= (and b!2969689 (not res!1224767)) b!2969692))

(assert (= (and b!2969692 res!1224766) b!2969696))

(assert (= (and b!2969696 res!1224764) b!2969690))

(assert (= (and b!2969690 res!1224769) b!2969684))

(assert (= (and b!2969692 (not res!1224765)) b!2969695))

(assert (= (and b!2969695 res!1224763) b!2969687))

(assert (= (and b!2969687 (not res!1224768)) b!2969691))

(assert (= (and b!2969691 (not res!1224770)) b!2969694))

(assert (= (or b!2969683 b!2969687 b!2969696) bm!197590))

(assert (=> b!2969693 m!3337785))

(assert (=> b!2969693 m!3337785))

(declare-fun m!3337845 () Bool)

(assert (=> b!2969693 m!3337845))

(assert (=> b!2969693 m!3337789))

(assert (=> b!2969693 m!3337845))

(assert (=> b!2969693 m!3337789))

(declare-fun m!3337847 () Bool)

(assert (=> b!2969693 m!3337847))

(assert (=> b!2969684 m!3337785))

(assert (=> b!2969690 m!3337789))

(assert (=> b!2969690 m!3337789))

(assert (=> b!2969690 m!3337793))

(assert (=> b!2969694 m!3337785))

(declare-fun m!3337849 () Bool)

(assert (=> b!2969686 m!3337849))

(assert (=> d!842590 m!3337779))

(declare-fun m!3337851 () Bool)

(assert (=> d!842590 m!3337851))

(assert (=> b!2969691 m!3337789))

(assert (=> b!2969691 m!3337789))

(assert (=> b!2969691 m!3337793))

(assert (=> bm!197590 m!3337779))

(assert (=> b!2969164 d!842590))

(declare-fun b!2969697 () Bool)

(declare-fun e!1868630 () Bool)

(declare-fun lt!1035985 () Bool)

(declare-fun call!197596 () Bool)

(assert (=> b!2969697 (= e!1868630 (= lt!1035985 call!197596))))

(declare-fun b!2969698 () Bool)

(declare-fun e!1868625 () Bool)

(assert (=> b!2969698 (= e!1868625 (= (head!6619 s!11993) (c!487029 (reg!9586 r!17423))))))

(declare-fun b!2969699 () Bool)

(declare-fun e!1868628 () Bool)

(assert (=> b!2969699 (= e!1868630 e!1868628)))

(declare-fun c!487187 () Bool)

(assert (=> b!2969699 (= c!487187 ((_ is EmptyLang!9257) (reg!9586 r!17423)))))

(declare-fun bm!197591 () Bool)

(assert (=> bm!197591 (= call!197596 (isEmpty!19239 s!11993))))

(declare-fun b!2969700 () Bool)

(declare-fun e!1868626 () Bool)

(assert (=> b!2969700 (= e!1868626 (nullable!2958 (reg!9586 r!17423)))))

(declare-fun b!2969701 () Bool)

(declare-fun e!1868627 () Bool)

(declare-fun e!1868631 () Bool)

(assert (=> b!2969701 (= e!1868627 e!1868631)))

(declare-fun res!1224776 () Bool)

(assert (=> b!2969701 (=> res!1224776 e!1868631)))

(assert (=> b!2969701 (= res!1224776 call!197596)))

(declare-fun b!2969703 () Bool)

(declare-fun res!1224775 () Bool)

(declare-fun e!1868629 () Bool)

(assert (=> b!2969703 (=> res!1224775 e!1868629)))

(assert (=> b!2969703 (= res!1224775 (not ((_ is ElementMatch!9257) (reg!9586 r!17423))))))

(assert (=> b!2969703 (= e!1868628 e!1868629)))

(declare-fun b!2969704 () Bool)

(declare-fun res!1224777 () Bool)

(assert (=> b!2969704 (=> (not res!1224777) (not e!1868625))))

(assert (=> b!2969704 (= res!1224777 (isEmpty!19239 (tail!4845 s!11993)))))

(declare-fun b!2969705 () Bool)

(declare-fun res!1224778 () Bool)

(assert (=> b!2969705 (=> res!1224778 e!1868631)))

(assert (=> b!2969705 (= res!1224778 (not (isEmpty!19239 (tail!4845 s!11993))))))

(declare-fun b!2969706 () Bool)

(declare-fun res!1224773 () Bool)

(assert (=> b!2969706 (=> res!1224773 e!1868629)))

(assert (=> b!2969706 (= res!1224773 e!1868625)))

(declare-fun res!1224774 () Bool)

(assert (=> b!2969706 (=> (not res!1224774) (not e!1868625))))

(assert (=> b!2969706 (= res!1224774 lt!1035985)))

(declare-fun d!842592 () Bool)

(assert (=> d!842592 e!1868630))

(declare-fun c!487185 () Bool)

(assert (=> d!842592 (= c!487185 ((_ is EmptyExpr!9257) (reg!9586 r!17423)))))

(assert (=> d!842592 (= lt!1035985 e!1868626)))

(declare-fun c!487186 () Bool)

(assert (=> d!842592 (= c!487186 (isEmpty!19239 s!11993))))

(assert (=> d!842592 (validRegex!3990 (reg!9586 r!17423))))

(assert (=> d!842592 (= (matchR!4139 (reg!9586 r!17423) s!11993) lt!1035985)))

(declare-fun b!2969702 () Bool)

(assert (=> b!2969702 (= e!1868628 (not lt!1035985))))

(declare-fun b!2969707 () Bool)

(assert (=> b!2969707 (= e!1868626 (matchR!4139 (derivativeStep!2560 (reg!9586 r!17423) (head!6619 s!11993)) (tail!4845 s!11993)))))

(declare-fun b!2969708 () Bool)

(assert (=> b!2969708 (= e!1868631 (not (= (head!6619 s!11993) (c!487029 (reg!9586 r!17423)))))))

(declare-fun b!2969709 () Bool)

(assert (=> b!2969709 (= e!1868629 e!1868627)))

(declare-fun res!1224771 () Bool)

(assert (=> b!2969709 (=> (not res!1224771) (not e!1868627))))

(assert (=> b!2969709 (= res!1224771 (not lt!1035985))))

(declare-fun b!2969710 () Bool)

(declare-fun res!1224772 () Bool)

(assert (=> b!2969710 (=> (not res!1224772) (not e!1868625))))

(assert (=> b!2969710 (= res!1224772 (not call!197596))))

(assert (= (and d!842592 c!487186) b!2969700))

(assert (= (and d!842592 (not c!487186)) b!2969707))

(assert (= (and d!842592 c!487185) b!2969697))

(assert (= (and d!842592 (not c!487185)) b!2969699))

(assert (= (and b!2969699 c!487187) b!2969702))

(assert (= (and b!2969699 (not c!487187)) b!2969703))

(assert (= (and b!2969703 (not res!1224775)) b!2969706))

(assert (= (and b!2969706 res!1224774) b!2969710))

(assert (= (and b!2969710 res!1224772) b!2969704))

(assert (= (and b!2969704 res!1224777) b!2969698))

(assert (= (and b!2969706 (not res!1224773)) b!2969709))

(assert (= (and b!2969709 res!1224771) b!2969701))

(assert (= (and b!2969701 (not res!1224776)) b!2969705))

(assert (= (and b!2969705 (not res!1224778)) b!2969708))

(assert (= (or b!2969697 b!2969701 b!2969710) bm!197591))

(assert (=> b!2969707 m!3337785))

(assert (=> b!2969707 m!3337785))

(declare-fun m!3337853 () Bool)

(assert (=> b!2969707 m!3337853))

(assert (=> b!2969707 m!3337789))

(assert (=> b!2969707 m!3337853))

(assert (=> b!2969707 m!3337789))

(declare-fun m!3337855 () Bool)

(assert (=> b!2969707 m!3337855))

(assert (=> b!2969698 m!3337785))

(assert (=> b!2969704 m!3337789))

(assert (=> b!2969704 m!3337789))

(assert (=> b!2969704 m!3337793))

(assert (=> b!2969708 m!3337785))

(assert (=> b!2969700 m!3337803))

(assert (=> d!842592 m!3337779))

(assert (=> d!842592 m!3337817))

(assert (=> b!2969705 m!3337789))

(assert (=> b!2969705 m!3337789))

(assert (=> b!2969705 m!3337793))

(assert (=> bm!197591 m!3337779))

(assert (=> b!2969164 d!842592))

(declare-fun d!842594 () Bool)

(assert (=> d!842594 (= (matchR!4139 (reg!9586 r!17423) s!11993) (matchR!4139 (simplify!258 (reg!9586 r!17423)) s!11993))))

(declare-fun lt!1035988 () Unit!48893)

(declare-fun choose!17562 (Regex!9257 List!35122) Unit!48893)

(assert (=> d!842594 (= lt!1035988 (choose!17562 (reg!9586 r!17423) s!11993))))

(assert (=> d!842594 (validRegex!3990 (reg!9586 r!17423))))

(assert (=> d!842594 (= (lemmaSimplifySound!166 (reg!9586 r!17423) s!11993) lt!1035988)))

(declare-fun bs!526465 () Bool)

(assert (= bs!526465 d!842594))

(assert (=> bs!526465 m!3337685))

(assert (=> bs!526465 m!3337691))

(declare-fun m!3337857 () Bool)

(assert (=> bs!526465 m!3337857))

(assert (=> bs!526465 m!3337691))

(assert (=> bs!526465 m!3337817))

(declare-fun m!3337859 () Bool)

(assert (=> bs!526465 m!3337859))

(assert (=> b!2969164 d!842594))

(declare-fun b!2969715 () Bool)

(declare-fun e!1868634 () Bool)

(declare-fun tp!947006 () Bool)

(assert (=> b!2969715 (= e!1868634 (and tp_is_empty!16077 tp!947006))))

(assert (=> b!2969162 (= tp!946964 e!1868634)))

(assert (= (and b!2969162 ((_ is Cons!34998) (t!234187 s!11993))) b!2969715))

(declare-fun b!2969726 () Bool)

(declare-fun e!1868637 () Bool)

(assert (=> b!2969726 (= e!1868637 tp_is_empty!16077)))

(declare-fun b!2969729 () Bool)

(declare-fun tp!947019 () Bool)

(declare-fun tp!947021 () Bool)

(assert (=> b!2969729 (= e!1868637 (and tp!947019 tp!947021))))

(declare-fun b!2969728 () Bool)

(declare-fun tp!947020 () Bool)

(assert (=> b!2969728 (= e!1868637 tp!947020)))

(assert (=> b!2969166 (= tp!946962 e!1868637)))

(declare-fun b!2969727 () Bool)

(declare-fun tp!947018 () Bool)

(declare-fun tp!947017 () Bool)

(assert (=> b!2969727 (= e!1868637 (and tp!947018 tp!947017))))

(assert (= (and b!2969166 ((_ is ElementMatch!9257) (regOne!19026 r!17423))) b!2969726))

(assert (= (and b!2969166 ((_ is Concat!14578) (regOne!19026 r!17423))) b!2969727))

(assert (= (and b!2969166 ((_ is Star!9257) (regOne!19026 r!17423))) b!2969728))

(assert (= (and b!2969166 ((_ is Union!9257) (regOne!19026 r!17423))) b!2969729))

(declare-fun b!2969730 () Bool)

(declare-fun e!1868638 () Bool)

(assert (=> b!2969730 (= e!1868638 tp_is_empty!16077)))

(declare-fun b!2969733 () Bool)

(declare-fun tp!947024 () Bool)

(declare-fun tp!947026 () Bool)

(assert (=> b!2969733 (= e!1868638 (and tp!947024 tp!947026))))

(declare-fun b!2969732 () Bool)

(declare-fun tp!947025 () Bool)

(assert (=> b!2969732 (= e!1868638 tp!947025)))

(assert (=> b!2969166 (= tp!946960 e!1868638)))

(declare-fun b!2969731 () Bool)

(declare-fun tp!947023 () Bool)

(declare-fun tp!947022 () Bool)

(assert (=> b!2969731 (= e!1868638 (and tp!947023 tp!947022))))

(assert (= (and b!2969166 ((_ is ElementMatch!9257) (regTwo!19026 r!17423))) b!2969730))

(assert (= (and b!2969166 ((_ is Concat!14578) (regTwo!19026 r!17423))) b!2969731))

(assert (= (and b!2969166 ((_ is Star!9257) (regTwo!19026 r!17423))) b!2969732))

(assert (= (and b!2969166 ((_ is Union!9257) (regTwo!19026 r!17423))) b!2969733))

(declare-fun b!2969734 () Bool)

(declare-fun e!1868639 () Bool)

(assert (=> b!2969734 (= e!1868639 tp_is_empty!16077)))

(declare-fun b!2969737 () Bool)

(declare-fun tp!947029 () Bool)

(declare-fun tp!947031 () Bool)

(assert (=> b!2969737 (= e!1868639 (and tp!947029 tp!947031))))

(declare-fun b!2969736 () Bool)

(declare-fun tp!947030 () Bool)

(assert (=> b!2969736 (= e!1868639 tp!947030)))

(assert (=> b!2969165 (= tp!946961 e!1868639)))

(declare-fun b!2969735 () Bool)

(declare-fun tp!947028 () Bool)

(declare-fun tp!947027 () Bool)

(assert (=> b!2969735 (= e!1868639 (and tp!947028 tp!947027))))

(assert (= (and b!2969165 ((_ is ElementMatch!9257) (regOne!19027 r!17423))) b!2969734))

(assert (= (and b!2969165 ((_ is Concat!14578) (regOne!19027 r!17423))) b!2969735))

(assert (= (and b!2969165 ((_ is Star!9257) (regOne!19027 r!17423))) b!2969736))

(assert (= (and b!2969165 ((_ is Union!9257) (regOne!19027 r!17423))) b!2969737))

(declare-fun b!2969738 () Bool)

(declare-fun e!1868640 () Bool)

(assert (=> b!2969738 (= e!1868640 tp_is_empty!16077)))

(declare-fun b!2969741 () Bool)

(declare-fun tp!947034 () Bool)

(declare-fun tp!947036 () Bool)

(assert (=> b!2969741 (= e!1868640 (and tp!947034 tp!947036))))

(declare-fun b!2969740 () Bool)

(declare-fun tp!947035 () Bool)

(assert (=> b!2969740 (= e!1868640 tp!947035)))

(assert (=> b!2969165 (= tp!946965 e!1868640)))

(declare-fun b!2969739 () Bool)

(declare-fun tp!947033 () Bool)

(declare-fun tp!947032 () Bool)

(assert (=> b!2969739 (= e!1868640 (and tp!947033 tp!947032))))

(assert (= (and b!2969165 ((_ is ElementMatch!9257) (regTwo!19027 r!17423))) b!2969738))

(assert (= (and b!2969165 ((_ is Concat!14578) (regTwo!19027 r!17423))) b!2969739))

(assert (= (and b!2969165 ((_ is Star!9257) (regTwo!19027 r!17423))) b!2969740))

(assert (= (and b!2969165 ((_ is Union!9257) (regTwo!19027 r!17423))) b!2969741))

(declare-fun b!2969742 () Bool)

(declare-fun e!1868641 () Bool)

(assert (=> b!2969742 (= e!1868641 tp_is_empty!16077)))

(declare-fun b!2969745 () Bool)

(declare-fun tp!947039 () Bool)

(declare-fun tp!947041 () Bool)

(assert (=> b!2969745 (= e!1868641 (and tp!947039 tp!947041))))

(declare-fun b!2969744 () Bool)

(declare-fun tp!947040 () Bool)

(assert (=> b!2969744 (= e!1868641 tp!947040)))

(assert (=> b!2969169 (= tp!946963 e!1868641)))

(declare-fun b!2969743 () Bool)

(declare-fun tp!947038 () Bool)

(declare-fun tp!947037 () Bool)

(assert (=> b!2969743 (= e!1868641 (and tp!947038 tp!947037))))

(assert (= (and b!2969169 ((_ is ElementMatch!9257) (reg!9586 r!17423))) b!2969742))

(assert (= (and b!2969169 ((_ is Concat!14578) (reg!9586 r!17423))) b!2969743))

(assert (= (and b!2969169 ((_ is Star!9257) (reg!9586 r!17423))) b!2969744))

(assert (= (and b!2969169 ((_ is Union!9257) (reg!9586 r!17423))) b!2969745))

(check-sat (not b!2969736) (not b!2969740) (not b!2969731) (not b!2969708) (not b!2969733) (not bm!197587) (not b!2969728) (not bm!197566) (not b!2969543) (not bm!197549) (not b!2969680) (not b!2969745) (not bm!197565) (not b!2969744) (not d!842590) (not bm!197581) (not d!842576) (not bm!197582) (not b!2969691) (not bm!197591) (not b!2969694) (not b!2969600) (not b!2969743) (not b!2969541) (not b!2969698) (not b!2969739) (not d!842586) (not bm!197546) (not b!2969715) tp_is_empty!16077 (not b!2969732) (not d!842582) (not b!2969684) (not d!842594) (not b!2969737) (not b!2969700) (not b!2969603) (not b!2969690) (not b!2969536) (not bm!197545) (not bm!197577) (not b!2969707) (not b!2969704) (not b!2969540) (not bm!197588) (not b!2969646) (not bm!197590) (not b!2969652) (not b!2969534) (not b!2969495) (not b!2969492) (not bm!197578) (not b!2969655) (not bm!197569) (not b!2969686) (not bm!197584) (not b!2969741) (not b!2969705) (not bm!197570) (not d!842578) (not bm!197568) (not b!2969729) (not bm!197585) (not b!2969735) (not bm!197586) (not b!2969727) (not b!2969544) (not b!2969693) (not d!842592))
(check-sat)
