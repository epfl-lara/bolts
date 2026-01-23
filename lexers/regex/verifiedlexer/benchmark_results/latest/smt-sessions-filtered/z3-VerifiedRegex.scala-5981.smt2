; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292820 () Bool)

(assert start!292820)

(declare-fun b!3070474 () Bool)

(declare-fun e!1921706 () Bool)

(declare-fun tp!968784 () Bool)

(declare-fun tp!968781 () Bool)

(assert (=> b!3070474 (= e!1921706 (and tp!968784 tp!968781))))

(declare-fun b!3070475 () Bool)

(declare-fun tp!968780 () Bool)

(assert (=> b!3070475 (= e!1921706 tp!968780)))

(declare-fun b!3070476 () Bool)

(declare-fun e!1921708 () Bool)

(declare-fun tp_is_empty!16589 () Bool)

(declare-fun tp!968782 () Bool)

(assert (=> b!3070476 (= e!1921708 (and tp_is_empty!16589 tp!968782))))

(declare-fun b!3070477 () Bool)

(declare-fun e!1921710 () Bool)

(declare-datatypes ((C!19212 0))(
  ( (C!19213 (val!11642 Int)) )
))
(declare-datatypes ((Regex!9513 0))(
  ( (ElementMatch!9513 (c!510475 C!19212)) (Concat!14834 (regOne!19538 Regex!9513) (regTwo!19538 Regex!9513)) (EmptyExpr!9513) (Star!9513 (reg!9842 Regex!9513)) (EmptyLang!9513) (Union!9513 (regOne!19539 Regex!9513) (regTwo!19539 Regex!9513)) )
))
(declare-fun r!17423 () Regex!9513)

(declare-fun validRegex!4246 (Regex!9513) Bool)

(assert (=> b!3070477 (= e!1921710 (validRegex!4246 (regTwo!19538 r!17423)))))

(declare-fun b!3070478 () Bool)

(declare-fun e!1921707 () Bool)

(declare-fun e!1921709 () Bool)

(assert (=> b!3070478 (= e!1921707 e!1921709)))

(declare-fun res!1260143 () Bool)

(assert (=> b!3070478 (=> res!1260143 e!1921709)))

(declare-fun lt!1051481 () Regex!9513)

(declare-fun isEmptyLang!564 (Regex!9513) Bool)

(assert (=> b!3070478 (= res!1260143 (isEmptyLang!564 lt!1051481))))

(declare-fun lt!1051480 () Regex!9513)

(declare-fun simplify!468 (Regex!9513) Regex!9513)

(assert (=> b!3070478 (= lt!1051480 (simplify!468 (regTwo!19538 r!17423)))))

(assert (=> b!3070478 (= lt!1051481 (simplify!468 (regOne!19538 r!17423)))))

(declare-fun res!1260141 () Bool)

(declare-fun e!1921711 () Bool)

(assert (=> start!292820 (=> (not res!1260141) (not e!1921711))))

(assert (=> start!292820 (= res!1260141 (validRegex!4246 r!17423))))

(assert (=> start!292820 e!1921711))

(assert (=> start!292820 e!1921706))

(assert (=> start!292820 e!1921708))

(declare-fun b!3070479 () Bool)

(assert (=> b!3070479 (= e!1921706 tp_is_empty!16589)))

(declare-fun b!3070480 () Bool)

(declare-fun res!1260146 () Bool)

(assert (=> b!3070480 (=> res!1260146 e!1921709)))

(declare-fun isEmptyExpr!570 (Regex!9513) Bool)

(assert (=> b!3070480 (= res!1260146 (not (isEmptyExpr!570 lt!1051480)))))

(declare-fun b!3070481 () Bool)

(assert (=> b!3070481 (= e!1921711 (not e!1921707))))

(declare-fun res!1260139 () Bool)

(assert (=> b!3070481 (=> res!1260139 e!1921707)))

(declare-fun lt!1051476 () Bool)

(get-info :version)

(assert (=> b!3070481 (= res!1260139 (or lt!1051476 (not ((_ is Concat!14834) r!17423))))))

(declare-datatypes ((List!35378 0))(
  ( (Nil!35254) (Cons!35254 (h!40674 C!19212) (t!234443 List!35378)) )
))
(declare-fun s!11993 () List!35378)

(declare-fun matchRSpec!1650 (Regex!9513 List!35378) Bool)

(assert (=> b!3070481 (= lt!1051476 (matchRSpec!1650 r!17423 s!11993))))

(declare-fun matchR!4395 (Regex!9513 List!35378) Bool)

(assert (=> b!3070481 (= lt!1051476 (matchR!4395 r!17423 s!11993))))

(declare-datatypes ((Unit!49465 0))(
  ( (Unit!49466) )
))
(declare-fun lt!1051478 () Unit!49465)

(declare-fun mainMatchTheorem!1650 (Regex!9513 List!35378) Unit!49465)

(assert (=> b!3070481 (= lt!1051478 (mainMatchTheorem!1650 r!17423 s!11993))))

(declare-fun b!3070482 () Bool)

(declare-fun res!1260142 () Bool)

(assert (=> b!3070482 (=> res!1260142 e!1921709)))

(assert (=> b!3070482 (= res!1260142 (isEmptyLang!564 lt!1051480))))

(declare-fun b!3070483 () Bool)

(declare-fun tp!968785 () Bool)

(declare-fun tp!968783 () Bool)

(assert (=> b!3070483 (= e!1921706 (and tp!968785 tp!968783))))

(declare-fun b!3070484 () Bool)

(declare-fun res!1260138 () Bool)

(assert (=> b!3070484 (=> res!1260138 e!1921709)))

(assert (=> b!3070484 (= res!1260138 (isEmptyExpr!570 lt!1051481))))

(declare-fun b!3070485 () Bool)

(declare-fun res!1260145 () Bool)

(assert (=> b!3070485 (=> res!1260145 e!1921707)))

(declare-fun isEmpty!19579 (List!35378) Bool)

(assert (=> b!3070485 (= res!1260145 (isEmpty!19579 s!11993))))

(declare-fun b!3070486 () Bool)

(assert (=> b!3070486 (= e!1921709 e!1921710)))

(declare-fun res!1260140 () Bool)

(assert (=> b!3070486 (=> res!1260140 e!1921710)))

(declare-fun lt!1051477 () Bool)

(assert (=> b!3070486 (= res!1260140 (not lt!1051477))))

(assert (=> b!3070486 (= (matchR!4395 (regTwo!19538 r!17423) Nil!35254) (matchR!4395 lt!1051480 Nil!35254))))

(declare-fun lt!1051479 () Unit!49465)

(declare-fun lemmaSimplifySound!294 (Regex!9513 List!35378) Unit!49465)

(assert (=> b!3070486 (= lt!1051479 (lemmaSimplifySound!294 (regTwo!19538 r!17423) Nil!35254))))

(assert (=> b!3070486 (= lt!1051477 (matchR!4395 lt!1051481 s!11993))))

(assert (=> b!3070486 (= lt!1051477 (matchR!4395 (regOne!19538 r!17423) s!11993))))

(declare-fun lt!1051482 () Unit!49465)

(assert (=> b!3070486 (= lt!1051482 (lemmaSimplifySound!294 (regOne!19538 r!17423) s!11993))))

(declare-fun b!3070487 () Bool)

(declare-fun res!1260144 () Bool)

(assert (=> b!3070487 (=> res!1260144 e!1921710)))

(assert (=> b!3070487 (= res!1260144 (not (validRegex!4246 (regOne!19538 r!17423))))))

(assert (= (and start!292820 res!1260141) b!3070481))

(assert (= (and b!3070481 (not res!1260139)) b!3070485))

(assert (= (and b!3070485 (not res!1260145)) b!3070478))

(assert (= (and b!3070478 (not res!1260143)) b!3070482))

(assert (= (and b!3070482 (not res!1260142)) b!3070484))

(assert (= (and b!3070484 (not res!1260138)) b!3070480))

(assert (= (and b!3070480 (not res!1260146)) b!3070486))

(assert (= (and b!3070486 (not res!1260140)) b!3070487))

(assert (= (and b!3070487 (not res!1260144)) b!3070477))

(assert (= (and start!292820 ((_ is ElementMatch!9513) r!17423)) b!3070479))

(assert (= (and start!292820 ((_ is Concat!14834) r!17423)) b!3070483))

(assert (= (and start!292820 ((_ is Star!9513) r!17423)) b!3070475))

(assert (= (and start!292820 ((_ is Union!9513) r!17423)) b!3070474))

(assert (= (and start!292820 ((_ is Cons!35254) s!11993)) b!3070476))

(declare-fun m!3385371 () Bool)

(assert (=> start!292820 m!3385371))

(declare-fun m!3385373 () Bool)

(assert (=> b!3070477 m!3385373))

(declare-fun m!3385375 () Bool)

(assert (=> b!3070481 m!3385375))

(declare-fun m!3385377 () Bool)

(assert (=> b!3070481 m!3385377))

(declare-fun m!3385379 () Bool)

(assert (=> b!3070481 m!3385379))

(declare-fun m!3385381 () Bool)

(assert (=> b!3070478 m!3385381))

(declare-fun m!3385383 () Bool)

(assert (=> b!3070478 m!3385383))

(declare-fun m!3385385 () Bool)

(assert (=> b!3070478 m!3385385))

(declare-fun m!3385387 () Bool)

(assert (=> b!3070485 m!3385387))

(declare-fun m!3385389 () Bool)

(assert (=> b!3070482 m!3385389))

(declare-fun m!3385391 () Bool)

(assert (=> b!3070484 m!3385391))

(declare-fun m!3385393 () Bool)

(assert (=> b!3070480 m!3385393))

(declare-fun m!3385395 () Bool)

(assert (=> b!3070486 m!3385395))

(declare-fun m!3385397 () Bool)

(assert (=> b!3070486 m!3385397))

(declare-fun m!3385399 () Bool)

(assert (=> b!3070486 m!3385399))

(declare-fun m!3385401 () Bool)

(assert (=> b!3070486 m!3385401))

(declare-fun m!3385403 () Bool)

(assert (=> b!3070486 m!3385403))

(declare-fun m!3385405 () Bool)

(assert (=> b!3070486 m!3385405))

(declare-fun m!3385407 () Bool)

(assert (=> b!3070487 m!3385407))

(check-sat (not b!3070485) (not b!3070483) (not b!3070474) (not b!3070481) (not b!3070477) tp_is_empty!16589 (not start!292820) (not b!3070484) (not b!3070476) (not b!3070478) (not b!3070482) (not b!3070486) (not b!3070475) (not b!3070480) (not b!3070487))
(check-sat)
(get-model)

(declare-fun b!3070558 () Bool)

(declare-fun e!1921750 () Bool)

(declare-fun e!1921752 () Bool)

(assert (=> b!3070558 (= e!1921750 e!1921752)))

(declare-fun res!1260188 () Bool)

(assert (=> b!3070558 (=> res!1260188 e!1921752)))

(declare-fun call!213188 () Bool)

(assert (=> b!3070558 (= res!1260188 call!213188)))

(declare-fun d!856190 () Bool)

(declare-fun e!1921751 () Bool)

(assert (=> d!856190 e!1921751))

(declare-fun c!510492 () Bool)

(assert (=> d!856190 (= c!510492 ((_ is EmptyExpr!9513) lt!1051481))))

(declare-fun lt!1051490 () Bool)

(declare-fun e!1921749 () Bool)

(assert (=> d!856190 (= lt!1051490 e!1921749)))

(declare-fun c!510493 () Bool)

(assert (=> d!856190 (= c!510493 (isEmpty!19579 s!11993))))

(assert (=> d!856190 (validRegex!4246 lt!1051481)))

(assert (=> d!856190 (= (matchR!4395 lt!1051481 s!11993) lt!1051490)))

(declare-fun b!3070559 () Bool)

(declare-fun e!1921748 () Bool)

(declare-fun head!6814 (List!35378) C!19212)

(assert (=> b!3070559 (= e!1921748 (= (head!6814 s!11993) (c!510475 lt!1051481)))))

(declare-fun b!3070560 () Bool)

(declare-fun res!1260189 () Bool)

(declare-fun e!1921753 () Bool)

(assert (=> b!3070560 (=> res!1260189 e!1921753)))

(assert (=> b!3070560 (= res!1260189 e!1921748)))

(declare-fun res!1260190 () Bool)

(assert (=> b!3070560 (=> (not res!1260190) (not e!1921748))))

(assert (=> b!3070560 (= res!1260190 lt!1051490)))

(declare-fun b!3070561 () Bool)

(declare-fun e!1921747 () Bool)

(assert (=> b!3070561 (= e!1921751 e!1921747)))

(declare-fun c!510491 () Bool)

(assert (=> b!3070561 (= c!510491 ((_ is EmptyLang!9513) lt!1051481))))

(declare-fun b!3070562 () Bool)

(assert (=> b!3070562 (= e!1921747 (not lt!1051490))))

(declare-fun b!3070563 () Bool)

(declare-fun derivativeStep!2755 (Regex!9513 C!19212) Regex!9513)

(declare-fun tail!5040 (List!35378) List!35378)

(assert (=> b!3070563 (= e!1921749 (matchR!4395 (derivativeStep!2755 lt!1051481 (head!6814 s!11993)) (tail!5040 s!11993)))))

(declare-fun b!3070564 () Bool)

(declare-fun res!1260194 () Bool)

(assert (=> b!3070564 (=> res!1260194 e!1921752)))

(assert (=> b!3070564 (= res!1260194 (not (isEmpty!19579 (tail!5040 s!11993))))))

(declare-fun b!3070565 () Bool)

(declare-fun res!1260192 () Bool)

(assert (=> b!3070565 (=> (not res!1260192) (not e!1921748))))

(assert (=> b!3070565 (= res!1260192 (not call!213188))))

(declare-fun b!3070566 () Bool)

(declare-fun res!1260187 () Bool)

(assert (=> b!3070566 (=> res!1260187 e!1921753)))

(assert (=> b!3070566 (= res!1260187 (not ((_ is ElementMatch!9513) lt!1051481)))))

(assert (=> b!3070566 (= e!1921747 e!1921753)))

(declare-fun b!3070567 () Bool)

(assert (=> b!3070567 (= e!1921753 e!1921750)))

(declare-fun res!1260191 () Bool)

(assert (=> b!3070567 (=> (not res!1260191) (not e!1921750))))

(assert (=> b!3070567 (= res!1260191 (not lt!1051490))))

(declare-fun b!3070568 () Bool)

(declare-fun res!1260193 () Bool)

(assert (=> b!3070568 (=> (not res!1260193) (not e!1921748))))

(assert (=> b!3070568 (= res!1260193 (isEmpty!19579 (tail!5040 s!11993)))))

(declare-fun b!3070569 () Bool)

(assert (=> b!3070569 (= e!1921752 (not (= (head!6814 s!11993) (c!510475 lt!1051481))))))

(declare-fun bm!213183 () Bool)

(assert (=> bm!213183 (= call!213188 (isEmpty!19579 s!11993))))

(declare-fun b!3070570 () Bool)

(declare-fun nullable!3159 (Regex!9513) Bool)

(assert (=> b!3070570 (= e!1921749 (nullable!3159 lt!1051481))))

(declare-fun b!3070571 () Bool)

(assert (=> b!3070571 (= e!1921751 (= lt!1051490 call!213188))))

(assert (= (and d!856190 c!510493) b!3070570))

(assert (= (and d!856190 (not c!510493)) b!3070563))

(assert (= (and d!856190 c!510492) b!3070571))

(assert (= (and d!856190 (not c!510492)) b!3070561))

(assert (= (and b!3070561 c!510491) b!3070562))

(assert (= (and b!3070561 (not c!510491)) b!3070566))

(assert (= (and b!3070566 (not res!1260187)) b!3070560))

(assert (= (and b!3070560 res!1260190) b!3070565))

(assert (= (and b!3070565 res!1260192) b!3070568))

(assert (= (and b!3070568 res!1260193) b!3070559))

(assert (= (and b!3070560 (not res!1260189)) b!3070567))

(assert (= (and b!3070567 res!1260191) b!3070558))

(assert (= (and b!3070558 (not res!1260188)) b!3070564))

(assert (= (and b!3070564 (not res!1260194)) b!3070569))

(assert (= (or b!3070571 b!3070558 b!3070565) bm!213183))

(assert (=> d!856190 m!3385387))

(declare-fun m!3385427 () Bool)

(assert (=> d!856190 m!3385427))

(declare-fun m!3385429 () Bool)

(assert (=> b!3070569 m!3385429))

(declare-fun m!3385431 () Bool)

(assert (=> b!3070568 m!3385431))

(assert (=> b!3070568 m!3385431))

(declare-fun m!3385435 () Bool)

(assert (=> b!3070568 m!3385435))

(assert (=> b!3070559 m!3385429))

(assert (=> bm!213183 m!3385387))

(assert (=> b!3070563 m!3385429))

(assert (=> b!3070563 m!3385429))

(declare-fun m!3385439 () Bool)

(assert (=> b!3070563 m!3385439))

(assert (=> b!3070563 m!3385431))

(assert (=> b!3070563 m!3385439))

(assert (=> b!3070563 m!3385431))

(declare-fun m!3385441 () Bool)

(assert (=> b!3070563 m!3385441))

(declare-fun m!3385443 () Bool)

(assert (=> b!3070570 m!3385443))

(assert (=> b!3070564 m!3385431))

(assert (=> b!3070564 m!3385431))

(assert (=> b!3070564 m!3385435))

(assert (=> b!3070486 d!856190))

(declare-fun d!856198 () Bool)

(assert (=> d!856198 (= (matchR!4395 (regTwo!19538 r!17423) Nil!35254) (matchR!4395 (simplify!468 (regTwo!19538 r!17423)) Nil!35254))))

(declare-fun lt!1051498 () Unit!49465)

(declare-fun choose!18194 (Regex!9513 List!35378) Unit!49465)

(assert (=> d!856198 (= lt!1051498 (choose!18194 (regTwo!19538 r!17423) Nil!35254))))

(assert (=> d!856198 (validRegex!4246 (regTwo!19538 r!17423))))

(assert (=> d!856198 (= (lemmaSimplifySound!294 (regTwo!19538 r!17423) Nil!35254) lt!1051498)))

(declare-fun bs!532646 () Bool)

(assert (= bs!532646 d!856198))

(declare-fun m!3385473 () Bool)

(assert (=> bs!532646 m!3385473))

(assert (=> bs!532646 m!3385401))

(assert (=> bs!532646 m!3385383))

(declare-fun m!3385475 () Bool)

(assert (=> bs!532646 m!3385475))

(assert (=> bs!532646 m!3385373))

(assert (=> bs!532646 m!3385383))

(assert (=> b!3070486 d!856198))

(declare-fun d!856206 () Bool)

(assert (=> d!856206 (= (matchR!4395 (regOne!19538 r!17423) s!11993) (matchR!4395 (simplify!468 (regOne!19538 r!17423)) s!11993))))

(declare-fun lt!1051499 () Unit!49465)

(assert (=> d!856206 (= lt!1051499 (choose!18194 (regOne!19538 r!17423) s!11993))))

(assert (=> d!856206 (validRegex!4246 (regOne!19538 r!17423))))

(assert (=> d!856206 (= (lemmaSimplifySound!294 (regOne!19538 r!17423) s!11993) lt!1051499)))

(declare-fun bs!532647 () Bool)

(assert (= bs!532647 d!856206))

(declare-fun m!3385477 () Bool)

(assert (=> bs!532647 m!3385477))

(assert (=> bs!532647 m!3385395))

(assert (=> bs!532647 m!3385385))

(declare-fun m!3385479 () Bool)

(assert (=> bs!532647 m!3385479))

(assert (=> bs!532647 m!3385407))

(assert (=> bs!532647 m!3385385))

(assert (=> b!3070486 d!856206))

(declare-fun b!3070616 () Bool)

(declare-fun e!1921780 () Bool)

(declare-fun e!1921782 () Bool)

(assert (=> b!3070616 (= e!1921780 e!1921782)))

(declare-fun res!1260222 () Bool)

(assert (=> b!3070616 (=> res!1260222 e!1921782)))

(declare-fun call!213192 () Bool)

(assert (=> b!3070616 (= res!1260222 call!213192)))

(declare-fun d!856208 () Bool)

(declare-fun e!1921781 () Bool)

(assert (=> d!856208 e!1921781))

(declare-fun c!510504 () Bool)

(assert (=> d!856208 (= c!510504 ((_ is EmptyExpr!9513) (regOne!19538 r!17423)))))

(declare-fun lt!1051500 () Bool)

(declare-fun e!1921779 () Bool)

(assert (=> d!856208 (= lt!1051500 e!1921779)))

(declare-fun c!510505 () Bool)

(assert (=> d!856208 (= c!510505 (isEmpty!19579 s!11993))))

(assert (=> d!856208 (validRegex!4246 (regOne!19538 r!17423))))

(assert (=> d!856208 (= (matchR!4395 (regOne!19538 r!17423) s!11993) lt!1051500)))

(declare-fun b!3070619 () Bool)

(declare-fun e!1921778 () Bool)

(assert (=> b!3070619 (= e!1921778 (= (head!6814 s!11993) (c!510475 (regOne!19538 r!17423))))))

(declare-fun b!3070620 () Bool)

(declare-fun res!1260223 () Bool)

(declare-fun e!1921783 () Bool)

(assert (=> b!3070620 (=> res!1260223 e!1921783)))

(assert (=> b!3070620 (= res!1260223 e!1921778)))

(declare-fun res!1260224 () Bool)

(assert (=> b!3070620 (=> (not res!1260224) (not e!1921778))))

(assert (=> b!3070620 (= res!1260224 lt!1051500)))

(declare-fun b!3070621 () Bool)

(declare-fun e!1921777 () Bool)

(assert (=> b!3070621 (= e!1921781 e!1921777)))

(declare-fun c!510503 () Bool)

(assert (=> b!3070621 (= c!510503 ((_ is EmptyLang!9513) (regOne!19538 r!17423)))))

(declare-fun b!3070622 () Bool)

(assert (=> b!3070622 (= e!1921777 (not lt!1051500))))

(declare-fun b!3070623 () Bool)

(assert (=> b!3070623 (= e!1921779 (matchR!4395 (derivativeStep!2755 (regOne!19538 r!17423) (head!6814 s!11993)) (tail!5040 s!11993)))))

(declare-fun b!3070624 () Bool)

(declare-fun res!1260228 () Bool)

(assert (=> b!3070624 (=> res!1260228 e!1921782)))

(assert (=> b!3070624 (= res!1260228 (not (isEmpty!19579 (tail!5040 s!11993))))))

(declare-fun b!3070625 () Bool)

(declare-fun res!1260226 () Bool)

(assert (=> b!3070625 (=> (not res!1260226) (not e!1921778))))

(assert (=> b!3070625 (= res!1260226 (not call!213192))))

(declare-fun b!3070626 () Bool)

(declare-fun res!1260221 () Bool)

(assert (=> b!3070626 (=> res!1260221 e!1921783)))

(assert (=> b!3070626 (= res!1260221 (not ((_ is ElementMatch!9513) (regOne!19538 r!17423))))))

(assert (=> b!3070626 (= e!1921777 e!1921783)))

(declare-fun b!3070627 () Bool)

(assert (=> b!3070627 (= e!1921783 e!1921780)))

(declare-fun res!1260225 () Bool)

(assert (=> b!3070627 (=> (not res!1260225) (not e!1921780))))

(assert (=> b!3070627 (= res!1260225 (not lt!1051500))))

(declare-fun b!3070628 () Bool)

(declare-fun res!1260227 () Bool)

(assert (=> b!3070628 (=> (not res!1260227) (not e!1921778))))

(assert (=> b!3070628 (= res!1260227 (isEmpty!19579 (tail!5040 s!11993)))))

(declare-fun b!3070629 () Bool)

(assert (=> b!3070629 (= e!1921782 (not (= (head!6814 s!11993) (c!510475 (regOne!19538 r!17423)))))))

(declare-fun bm!213187 () Bool)

(assert (=> bm!213187 (= call!213192 (isEmpty!19579 s!11993))))

(declare-fun b!3070630 () Bool)

(assert (=> b!3070630 (= e!1921779 (nullable!3159 (regOne!19538 r!17423)))))

(declare-fun b!3070631 () Bool)

(assert (=> b!3070631 (= e!1921781 (= lt!1051500 call!213192))))

(assert (= (and d!856208 c!510505) b!3070630))

(assert (= (and d!856208 (not c!510505)) b!3070623))

(assert (= (and d!856208 c!510504) b!3070631))

(assert (= (and d!856208 (not c!510504)) b!3070621))

(assert (= (and b!3070621 c!510503) b!3070622))

(assert (= (and b!3070621 (not c!510503)) b!3070626))

(assert (= (and b!3070626 (not res!1260221)) b!3070620))

(assert (= (and b!3070620 res!1260224) b!3070625))

(assert (= (and b!3070625 res!1260226) b!3070628))

(assert (= (and b!3070628 res!1260227) b!3070619))

(assert (= (and b!3070620 (not res!1260223)) b!3070627))

(assert (= (and b!3070627 res!1260225) b!3070616))

(assert (= (and b!3070616 (not res!1260222)) b!3070624))

(assert (= (and b!3070624 (not res!1260228)) b!3070629))

(assert (= (or b!3070631 b!3070616 b!3070625) bm!213187))

(assert (=> d!856208 m!3385387))

(assert (=> d!856208 m!3385407))

(assert (=> b!3070629 m!3385429))

(assert (=> b!3070628 m!3385431))

(assert (=> b!3070628 m!3385431))

(assert (=> b!3070628 m!3385435))

(assert (=> b!3070619 m!3385429))

(assert (=> bm!213187 m!3385387))

(assert (=> b!3070623 m!3385429))

(assert (=> b!3070623 m!3385429))

(declare-fun m!3385481 () Bool)

(assert (=> b!3070623 m!3385481))

(assert (=> b!3070623 m!3385431))

(assert (=> b!3070623 m!3385481))

(assert (=> b!3070623 m!3385431))

(declare-fun m!3385483 () Bool)

(assert (=> b!3070623 m!3385483))

(declare-fun m!3385485 () Bool)

(assert (=> b!3070630 m!3385485))

(assert (=> b!3070624 m!3385431))

(assert (=> b!3070624 m!3385431))

(assert (=> b!3070624 m!3385435))

(assert (=> b!3070486 d!856208))

(declare-fun b!3070646 () Bool)

(declare-fun e!1921799 () Bool)

(declare-fun e!1921801 () Bool)

(assert (=> b!3070646 (= e!1921799 e!1921801)))

(declare-fun res!1260238 () Bool)

(assert (=> b!3070646 (=> res!1260238 e!1921801)))

(declare-fun call!213199 () Bool)

(assert (=> b!3070646 (= res!1260238 call!213199)))

(declare-fun d!856210 () Bool)

(declare-fun e!1921800 () Bool)

(assert (=> d!856210 e!1921800))

(declare-fun c!510511 () Bool)

(assert (=> d!856210 (= c!510511 ((_ is EmptyExpr!9513) (regTwo!19538 r!17423)))))

(declare-fun lt!1051501 () Bool)

(declare-fun e!1921798 () Bool)

(assert (=> d!856210 (= lt!1051501 e!1921798)))

(declare-fun c!510512 () Bool)

(assert (=> d!856210 (= c!510512 (isEmpty!19579 Nil!35254))))

(assert (=> d!856210 (validRegex!4246 (regTwo!19538 r!17423))))

(assert (=> d!856210 (= (matchR!4395 (regTwo!19538 r!17423) Nil!35254) lt!1051501)))

(declare-fun b!3070647 () Bool)

(declare-fun e!1921797 () Bool)

(assert (=> b!3070647 (= e!1921797 (= (head!6814 Nil!35254) (c!510475 (regTwo!19538 r!17423))))))

(declare-fun b!3070648 () Bool)

(declare-fun res!1260239 () Bool)

(declare-fun e!1921802 () Bool)

(assert (=> b!3070648 (=> res!1260239 e!1921802)))

(assert (=> b!3070648 (= res!1260239 e!1921797)))

(declare-fun res!1260240 () Bool)

(assert (=> b!3070648 (=> (not res!1260240) (not e!1921797))))

(assert (=> b!3070648 (= res!1260240 lt!1051501)))

(declare-fun b!3070649 () Bool)

(declare-fun e!1921796 () Bool)

(assert (=> b!3070649 (= e!1921800 e!1921796)))

(declare-fun c!510510 () Bool)

(assert (=> b!3070649 (= c!510510 ((_ is EmptyLang!9513) (regTwo!19538 r!17423)))))

(declare-fun b!3070650 () Bool)

(assert (=> b!3070650 (= e!1921796 (not lt!1051501))))

(declare-fun b!3070651 () Bool)

(assert (=> b!3070651 (= e!1921798 (matchR!4395 (derivativeStep!2755 (regTwo!19538 r!17423) (head!6814 Nil!35254)) (tail!5040 Nil!35254)))))

(declare-fun b!3070652 () Bool)

(declare-fun res!1260244 () Bool)

(assert (=> b!3070652 (=> res!1260244 e!1921801)))

(assert (=> b!3070652 (= res!1260244 (not (isEmpty!19579 (tail!5040 Nil!35254))))))

(declare-fun b!3070653 () Bool)

(declare-fun res!1260242 () Bool)

(assert (=> b!3070653 (=> (not res!1260242) (not e!1921797))))

(assert (=> b!3070653 (= res!1260242 (not call!213199))))

(declare-fun b!3070654 () Bool)

(declare-fun res!1260237 () Bool)

(assert (=> b!3070654 (=> res!1260237 e!1921802)))

(assert (=> b!3070654 (= res!1260237 (not ((_ is ElementMatch!9513) (regTwo!19538 r!17423))))))

(assert (=> b!3070654 (= e!1921796 e!1921802)))

(declare-fun b!3070655 () Bool)

(assert (=> b!3070655 (= e!1921802 e!1921799)))

(declare-fun res!1260241 () Bool)

(assert (=> b!3070655 (=> (not res!1260241) (not e!1921799))))

(assert (=> b!3070655 (= res!1260241 (not lt!1051501))))

(declare-fun b!3070656 () Bool)

(declare-fun res!1260243 () Bool)

(assert (=> b!3070656 (=> (not res!1260243) (not e!1921797))))

(assert (=> b!3070656 (= res!1260243 (isEmpty!19579 (tail!5040 Nil!35254)))))

(declare-fun b!3070657 () Bool)

(assert (=> b!3070657 (= e!1921801 (not (= (head!6814 Nil!35254) (c!510475 (regTwo!19538 r!17423)))))))

(declare-fun bm!213194 () Bool)

(assert (=> bm!213194 (= call!213199 (isEmpty!19579 Nil!35254))))

(declare-fun b!3070658 () Bool)

(assert (=> b!3070658 (= e!1921798 (nullable!3159 (regTwo!19538 r!17423)))))

(declare-fun b!3070659 () Bool)

(assert (=> b!3070659 (= e!1921800 (= lt!1051501 call!213199))))

(assert (= (and d!856210 c!510512) b!3070658))

(assert (= (and d!856210 (not c!510512)) b!3070651))

(assert (= (and d!856210 c!510511) b!3070659))

(assert (= (and d!856210 (not c!510511)) b!3070649))

(assert (= (and b!3070649 c!510510) b!3070650))

(assert (= (and b!3070649 (not c!510510)) b!3070654))

(assert (= (and b!3070654 (not res!1260237)) b!3070648))

(assert (= (and b!3070648 res!1260240) b!3070653))

(assert (= (and b!3070653 res!1260242) b!3070656))

(assert (= (and b!3070656 res!1260243) b!3070647))

(assert (= (and b!3070648 (not res!1260239)) b!3070655))

(assert (= (and b!3070655 res!1260241) b!3070646))

(assert (= (and b!3070646 (not res!1260238)) b!3070652))

(assert (= (and b!3070652 (not res!1260244)) b!3070657))

(assert (= (or b!3070659 b!3070646 b!3070653) bm!213194))

(declare-fun m!3385487 () Bool)

(assert (=> d!856210 m!3385487))

(assert (=> d!856210 m!3385373))

(declare-fun m!3385489 () Bool)

(assert (=> b!3070657 m!3385489))

(declare-fun m!3385491 () Bool)

(assert (=> b!3070656 m!3385491))

(assert (=> b!3070656 m!3385491))

(declare-fun m!3385493 () Bool)

(assert (=> b!3070656 m!3385493))

(assert (=> b!3070647 m!3385489))

(assert (=> bm!213194 m!3385487))

(assert (=> b!3070651 m!3385489))

(assert (=> b!3070651 m!3385489))

(declare-fun m!3385495 () Bool)

(assert (=> b!3070651 m!3385495))

(assert (=> b!3070651 m!3385491))

(assert (=> b!3070651 m!3385495))

(assert (=> b!3070651 m!3385491))

(declare-fun m!3385497 () Bool)

(assert (=> b!3070651 m!3385497))

(declare-fun m!3385499 () Bool)

(assert (=> b!3070658 m!3385499))

(assert (=> b!3070652 m!3385491))

(assert (=> b!3070652 m!3385491))

(assert (=> b!3070652 m!3385493))

(assert (=> b!3070486 d!856210))

(declare-fun b!3070660 () Bool)

(declare-fun e!1921806 () Bool)

(declare-fun e!1921808 () Bool)

(assert (=> b!3070660 (= e!1921806 e!1921808)))

(declare-fun res!1260246 () Bool)

(assert (=> b!3070660 (=> res!1260246 e!1921808)))

(declare-fun call!213200 () Bool)

(assert (=> b!3070660 (= res!1260246 call!213200)))

(declare-fun d!856212 () Bool)

(declare-fun e!1921807 () Bool)

(assert (=> d!856212 e!1921807))

(declare-fun c!510514 () Bool)

(assert (=> d!856212 (= c!510514 ((_ is EmptyExpr!9513) lt!1051480))))

(declare-fun lt!1051502 () Bool)

(declare-fun e!1921805 () Bool)

(assert (=> d!856212 (= lt!1051502 e!1921805)))

(declare-fun c!510515 () Bool)

(assert (=> d!856212 (= c!510515 (isEmpty!19579 Nil!35254))))

(assert (=> d!856212 (validRegex!4246 lt!1051480)))

(assert (=> d!856212 (= (matchR!4395 lt!1051480 Nil!35254) lt!1051502)))

(declare-fun b!3070661 () Bool)

(declare-fun e!1921804 () Bool)

(assert (=> b!3070661 (= e!1921804 (= (head!6814 Nil!35254) (c!510475 lt!1051480)))))

(declare-fun b!3070662 () Bool)

(declare-fun res!1260247 () Bool)

(declare-fun e!1921809 () Bool)

(assert (=> b!3070662 (=> res!1260247 e!1921809)))

(assert (=> b!3070662 (= res!1260247 e!1921804)))

(declare-fun res!1260248 () Bool)

(assert (=> b!3070662 (=> (not res!1260248) (not e!1921804))))

(assert (=> b!3070662 (= res!1260248 lt!1051502)))

(declare-fun b!3070663 () Bool)

(declare-fun e!1921803 () Bool)

(assert (=> b!3070663 (= e!1921807 e!1921803)))

(declare-fun c!510513 () Bool)

(assert (=> b!3070663 (= c!510513 ((_ is EmptyLang!9513) lt!1051480))))

(declare-fun b!3070664 () Bool)

(assert (=> b!3070664 (= e!1921803 (not lt!1051502))))

(declare-fun b!3070665 () Bool)

(assert (=> b!3070665 (= e!1921805 (matchR!4395 (derivativeStep!2755 lt!1051480 (head!6814 Nil!35254)) (tail!5040 Nil!35254)))))

(declare-fun b!3070666 () Bool)

(declare-fun res!1260252 () Bool)

(assert (=> b!3070666 (=> res!1260252 e!1921808)))

(assert (=> b!3070666 (= res!1260252 (not (isEmpty!19579 (tail!5040 Nil!35254))))))

(declare-fun b!3070667 () Bool)

(declare-fun res!1260250 () Bool)

(assert (=> b!3070667 (=> (not res!1260250) (not e!1921804))))

(assert (=> b!3070667 (= res!1260250 (not call!213200))))

(declare-fun b!3070668 () Bool)

(declare-fun res!1260245 () Bool)

(assert (=> b!3070668 (=> res!1260245 e!1921809)))

(assert (=> b!3070668 (= res!1260245 (not ((_ is ElementMatch!9513) lt!1051480)))))

(assert (=> b!3070668 (= e!1921803 e!1921809)))

(declare-fun b!3070669 () Bool)

(assert (=> b!3070669 (= e!1921809 e!1921806)))

(declare-fun res!1260249 () Bool)

(assert (=> b!3070669 (=> (not res!1260249) (not e!1921806))))

(assert (=> b!3070669 (= res!1260249 (not lt!1051502))))

(declare-fun b!3070670 () Bool)

(declare-fun res!1260251 () Bool)

(assert (=> b!3070670 (=> (not res!1260251) (not e!1921804))))

(assert (=> b!3070670 (= res!1260251 (isEmpty!19579 (tail!5040 Nil!35254)))))

(declare-fun b!3070671 () Bool)

(assert (=> b!3070671 (= e!1921808 (not (= (head!6814 Nil!35254) (c!510475 lt!1051480))))))

(declare-fun bm!213195 () Bool)

(assert (=> bm!213195 (= call!213200 (isEmpty!19579 Nil!35254))))

(declare-fun b!3070672 () Bool)

(assert (=> b!3070672 (= e!1921805 (nullable!3159 lt!1051480))))

(declare-fun b!3070673 () Bool)

(assert (=> b!3070673 (= e!1921807 (= lt!1051502 call!213200))))

(assert (= (and d!856212 c!510515) b!3070672))

(assert (= (and d!856212 (not c!510515)) b!3070665))

(assert (= (and d!856212 c!510514) b!3070673))

(assert (= (and d!856212 (not c!510514)) b!3070663))

(assert (= (and b!3070663 c!510513) b!3070664))

(assert (= (and b!3070663 (not c!510513)) b!3070668))

(assert (= (and b!3070668 (not res!1260245)) b!3070662))

(assert (= (and b!3070662 res!1260248) b!3070667))

(assert (= (and b!3070667 res!1260250) b!3070670))

(assert (= (and b!3070670 res!1260251) b!3070661))

(assert (= (and b!3070662 (not res!1260247)) b!3070669))

(assert (= (and b!3070669 res!1260249) b!3070660))

(assert (= (and b!3070660 (not res!1260246)) b!3070666))

(assert (= (and b!3070666 (not res!1260252)) b!3070671))

(assert (= (or b!3070673 b!3070660 b!3070667) bm!213195))

(assert (=> d!856212 m!3385487))

(declare-fun m!3385501 () Bool)

(assert (=> d!856212 m!3385501))

(assert (=> b!3070671 m!3385489))

(assert (=> b!3070670 m!3385491))

(assert (=> b!3070670 m!3385491))

(assert (=> b!3070670 m!3385493))

(assert (=> b!3070661 m!3385489))

(assert (=> bm!213195 m!3385487))

(assert (=> b!3070665 m!3385489))

(assert (=> b!3070665 m!3385489))

(declare-fun m!3385503 () Bool)

(assert (=> b!3070665 m!3385503))

(assert (=> b!3070665 m!3385491))

(assert (=> b!3070665 m!3385503))

(assert (=> b!3070665 m!3385491))

(declare-fun m!3385505 () Bool)

(assert (=> b!3070665 m!3385505))

(declare-fun m!3385509 () Bool)

(assert (=> b!3070672 m!3385509))

(assert (=> b!3070666 m!3385491))

(assert (=> b!3070666 m!3385491))

(assert (=> b!3070666 m!3385493))

(assert (=> b!3070486 d!856212))

(declare-fun b!3070934 () Bool)

(assert (=> b!3070934 true))

(assert (=> b!3070934 true))

(declare-fun bs!532650 () Bool)

(declare-fun b!3070935 () Bool)

(assert (= bs!532650 (and b!3070935 b!3070934)))

(declare-fun lambda!114100 () Int)

(declare-fun lambda!114099 () Int)

(assert (=> bs!532650 (not (= lambda!114100 lambda!114099))))

(assert (=> b!3070935 true))

(assert (=> b!3070935 true))

(declare-fun b!3070929 () Bool)

(declare-fun e!1921947 () Bool)

(declare-fun e!1921953 () Bool)

(assert (=> b!3070929 (= e!1921947 e!1921953)))

(declare-fun res!1260323 () Bool)

(assert (=> b!3070929 (= res!1260323 (matchRSpec!1650 (regOne!19539 r!17423) s!11993))))

(assert (=> b!3070929 (=> res!1260323 e!1921953)))

(declare-fun b!3070930 () Bool)

(declare-fun res!1260324 () Bool)

(declare-fun e!1921950 () Bool)

(assert (=> b!3070930 (=> res!1260324 e!1921950)))

(declare-fun call!213249 () Bool)

(assert (=> b!3070930 (= res!1260324 call!213249)))

(declare-fun e!1921949 () Bool)

(assert (=> b!3070930 (= e!1921949 e!1921950)))

(declare-fun b!3070931 () Bool)

(declare-fun e!1921951 () Bool)

(declare-fun e!1921948 () Bool)

(assert (=> b!3070931 (= e!1921951 e!1921948)))

(declare-fun res!1260325 () Bool)

(assert (=> b!3070931 (= res!1260325 (not ((_ is EmptyLang!9513) r!17423)))))

(assert (=> b!3070931 (=> (not res!1260325) (not e!1921948))))

(declare-fun b!3070932 () Bool)

(declare-fun e!1921952 () Bool)

(assert (=> b!3070932 (= e!1921952 (= s!11993 (Cons!35254 (c!510475 r!17423) Nil!35254)))))

(declare-fun bm!213244 () Bool)

(declare-fun c!510590 () Bool)

(declare-fun call!213250 () Bool)

(declare-fun Exists!1775 (Int) Bool)

(assert (=> bm!213244 (= call!213250 (Exists!1775 (ite c!510590 lambda!114099 lambda!114100)))))

(declare-fun bm!213245 () Bool)

(assert (=> bm!213245 (= call!213249 (isEmpty!19579 s!11993))))

(assert (=> b!3070934 (= e!1921950 call!213250)))

(assert (=> b!3070935 (= e!1921949 call!213250)))

(declare-fun b!3070936 () Bool)

(declare-fun c!510589 () Bool)

(assert (=> b!3070936 (= c!510589 ((_ is Union!9513) r!17423))))

(assert (=> b!3070936 (= e!1921952 e!1921947)))

(declare-fun b!3070937 () Bool)

(assert (=> b!3070937 (= e!1921953 (matchRSpec!1650 (regTwo!19539 r!17423) s!11993))))

(declare-fun b!3070938 () Bool)

(declare-fun c!510591 () Bool)

(assert (=> b!3070938 (= c!510591 ((_ is ElementMatch!9513) r!17423))))

(assert (=> b!3070938 (= e!1921948 e!1921952)))

(declare-fun b!3070939 () Bool)

(assert (=> b!3070939 (= e!1921947 e!1921949)))

(assert (=> b!3070939 (= c!510590 ((_ is Star!9513) r!17423))))

(declare-fun b!3070933 () Bool)

(assert (=> b!3070933 (= e!1921951 call!213249)))

(declare-fun d!856214 () Bool)

(declare-fun c!510592 () Bool)

(assert (=> d!856214 (= c!510592 ((_ is EmptyExpr!9513) r!17423))))

(assert (=> d!856214 (= (matchRSpec!1650 r!17423 s!11993) e!1921951)))

(assert (= (and d!856214 c!510592) b!3070933))

(assert (= (and d!856214 (not c!510592)) b!3070931))

(assert (= (and b!3070931 res!1260325) b!3070938))

(assert (= (and b!3070938 c!510591) b!3070932))

(assert (= (and b!3070938 (not c!510591)) b!3070936))

(assert (= (and b!3070936 c!510589) b!3070929))

(assert (= (and b!3070936 (not c!510589)) b!3070939))

(assert (= (and b!3070929 (not res!1260323)) b!3070937))

(assert (= (and b!3070939 c!510590) b!3070930))

(assert (= (and b!3070939 (not c!510590)) b!3070935))

(assert (= (and b!3070930 (not res!1260324)) b!3070934))

(assert (= (or b!3070934 b!3070935) bm!213244))

(assert (= (or b!3070933 b!3070930) bm!213245))

(declare-fun m!3385573 () Bool)

(assert (=> b!3070929 m!3385573))

(declare-fun m!3385575 () Bool)

(assert (=> bm!213244 m!3385575))

(assert (=> bm!213245 m!3385387))

(declare-fun m!3385577 () Bool)

(assert (=> b!3070937 m!3385577))

(assert (=> b!3070481 d!856214))

(declare-fun b!3070944 () Bool)

(declare-fun e!1921957 () Bool)

(declare-fun e!1921959 () Bool)

(assert (=> b!3070944 (= e!1921957 e!1921959)))

(declare-fun res!1260327 () Bool)

(assert (=> b!3070944 (=> res!1260327 e!1921959)))

(declare-fun call!213251 () Bool)

(assert (=> b!3070944 (= res!1260327 call!213251)))

(declare-fun d!856236 () Bool)

(declare-fun e!1921958 () Bool)

(assert (=> d!856236 e!1921958))

(declare-fun c!510594 () Bool)

(assert (=> d!856236 (= c!510594 ((_ is EmptyExpr!9513) r!17423))))

(declare-fun lt!1051531 () Bool)

(declare-fun e!1921956 () Bool)

(assert (=> d!856236 (= lt!1051531 e!1921956)))

(declare-fun c!510595 () Bool)

(assert (=> d!856236 (= c!510595 (isEmpty!19579 s!11993))))

(assert (=> d!856236 (validRegex!4246 r!17423)))

(assert (=> d!856236 (= (matchR!4395 r!17423 s!11993) lt!1051531)))

(declare-fun b!3070945 () Bool)

(declare-fun e!1921955 () Bool)

(assert (=> b!3070945 (= e!1921955 (= (head!6814 s!11993) (c!510475 r!17423)))))

(declare-fun b!3070946 () Bool)

(declare-fun res!1260328 () Bool)

(declare-fun e!1921960 () Bool)

(assert (=> b!3070946 (=> res!1260328 e!1921960)))

(assert (=> b!3070946 (= res!1260328 e!1921955)))

(declare-fun res!1260329 () Bool)

(assert (=> b!3070946 (=> (not res!1260329) (not e!1921955))))

(assert (=> b!3070946 (= res!1260329 lt!1051531)))

(declare-fun b!3070947 () Bool)

(declare-fun e!1921954 () Bool)

(assert (=> b!3070947 (= e!1921958 e!1921954)))

(declare-fun c!510593 () Bool)

(assert (=> b!3070947 (= c!510593 ((_ is EmptyLang!9513) r!17423))))

(declare-fun b!3070948 () Bool)

(assert (=> b!3070948 (= e!1921954 (not lt!1051531))))

(declare-fun b!3070949 () Bool)

(assert (=> b!3070949 (= e!1921956 (matchR!4395 (derivativeStep!2755 r!17423 (head!6814 s!11993)) (tail!5040 s!11993)))))

(declare-fun b!3070950 () Bool)

(declare-fun res!1260333 () Bool)

(assert (=> b!3070950 (=> res!1260333 e!1921959)))

(assert (=> b!3070950 (= res!1260333 (not (isEmpty!19579 (tail!5040 s!11993))))))

(declare-fun b!3070951 () Bool)

(declare-fun res!1260331 () Bool)

(assert (=> b!3070951 (=> (not res!1260331) (not e!1921955))))

(assert (=> b!3070951 (= res!1260331 (not call!213251))))

(declare-fun b!3070952 () Bool)

(declare-fun res!1260326 () Bool)

(assert (=> b!3070952 (=> res!1260326 e!1921960)))

(assert (=> b!3070952 (= res!1260326 (not ((_ is ElementMatch!9513) r!17423)))))

(assert (=> b!3070952 (= e!1921954 e!1921960)))

(declare-fun b!3070953 () Bool)

(assert (=> b!3070953 (= e!1921960 e!1921957)))

(declare-fun res!1260330 () Bool)

(assert (=> b!3070953 (=> (not res!1260330) (not e!1921957))))

(assert (=> b!3070953 (= res!1260330 (not lt!1051531))))

(declare-fun b!3070954 () Bool)

(declare-fun res!1260332 () Bool)

(assert (=> b!3070954 (=> (not res!1260332) (not e!1921955))))

(assert (=> b!3070954 (= res!1260332 (isEmpty!19579 (tail!5040 s!11993)))))

(declare-fun b!3070955 () Bool)

(assert (=> b!3070955 (= e!1921959 (not (= (head!6814 s!11993) (c!510475 r!17423))))))

(declare-fun bm!213246 () Bool)

(assert (=> bm!213246 (= call!213251 (isEmpty!19579 s!11993))))

(declare-fun b!3070956 () Bool)

(assert (=> b!3070956 (= e!1921956 (nullable!3159 r!17423))))

(declare-fun b!3070957 () Bool)

(assert (=> b!3070957 (= e!1921958 (= lt!1051531 call!213251))))

(assert (= (and d!856236 c!510595) b!3070956))

(assert (= (and d!856236 (not c!510595)) b!3070949))

(assert (= (and d!856236 c!510594) b!3070957))

(assert (= (and d!856236 (not c!510594)) b!3070947))

(assert (= (and b!3070947 c!510593) b!3070948))

(assert (= (and b!3070947 (not c!510593)) b!3070952))

(assert (= (and b!3070952 (not res!1260326)) b!3070946))

(assert (= (and b!3070946 res!1260329) b!3070951))

(assert (= (and b!3070951 res!1260331) b!3070954))

(assert (= (and b!3070954 res!1260332) b!3070945))

(assert (= (and b!3070946 (not res!1260328)) b!3070953))

(assert (= (and b!3070953 res!1260330) b!3070944))

(assert (= (and b!3070944 (not res!1260327)) b!3070950))

(assert (= (and b!3070950 (not res!1260333)) b!3070955))

(assert (= (or b!3070957 b!3070944 b!3070951) bm!213246))

(assert (=> d!856236 m!3385387))

(assert (=> d!856236 m!3385371))

(assert (=> b!3070955 m!3385429))

(assert (=> b!3070954 m!3385431))

(assert (=> b!3070954 m!3385431))

(assert (=> b!3070954 m!3385435))

(assert (=> b!3070945 m!3385429))

(assert (=> bm!213246 m!3385387))

(assert (=> b!3070949 m!3385429))

(assert (=> b!3070949 m!3385429))

(declare-fun m!3385579 () Bool)

(assert (=> b!3070949 m!3385579))

(assert (=> b!3070949 m!3385431))

(assert (=> b!3070949 m!3385579))

(assert (=> b!3070949 m!3385431))

(declare-fun m!3385581 () Bool)

(assert (=> b!3070949 m!3385581))

(declare-fun m!3385583 () Bool)

(assert (=> b!3070956 m!3385583))

(assert (=> b!3070950 m!3385431))

(assert (=> b!3070950 m!3385431))

(assert (=> b!3070950 m!3385435))

(assert (=> b!3070481 d!856236))

(declare-fun d!856238 () Bool)

(assert (=> d!856238 (= (matchR!4395 r!17423 s!11993) (matchRSpec!1650 r!17423 s!11993))))

(declare-fun lt!1051534 () Unit!49465)

(declare-fun choose!18195 (Regex!9513 List!35378) Unit!49465)

(assert (=> d!856238 (= lt!1051534 (choose!18195 r!17423 s!11993))))

(assert (=> d!856238 (validRegex!4246 r!17423)))

(assert (=> d!856238 (= (mainMatchTheorem!1650 r!17423 s!11993) lt!1051534)))

(declare-fun bs!532651 () Bool)

(assert (= bs!532651 d!856238))

(assert (=> bs!532651 m!3385377))

(assert (=> bs!532651 m!3385375))

(declare-fun m!3385585 () Bool)

(assert (=> bs!532651 m!3385585))

(assert (=> bs!532651 m!3385371))

(assert (=> b!3070481 d!856238))

(declare-fun d!856240 () Bool)

(assert (=> d!856240 (= (isEmpty!19579 s!11993) ((_ is Nil!35254) s!11993))))

(assert (=> b!3070485 d!856240))

(declare-fun d!856242 () Bool)

(assert (=> d!856242 (= (isEmptyExpr!570 lt!1051480) ((_ is EmptyExpr!9513) lt!1051480))))

(assert (=> b!3070480 d!856242))

(declare-fun d!856244 () Bool)

(assert (=> d!856244 (= (isEmptyLang!564 lt!1051481) ((_ is EmptyLang!9513) lt!1051481))))

(assert (=> b!3070478 d!856244))

(declare-fun call!213268 () Regex!9513)

(declare-fun c!510622 () Bool)

(declare-fun c!510620 () Bool)

(declare-fun bm!213261 () Bool)

(assert (=> bm!213261 (= call!213268 (simplify!468 (ite c!510622 (reg!9842 (regTwo!19538 r!17423)) (ite c!510620 (regOne!19539 (regTwo!19538 r!17423)) (regTwo!19538 (regTwo!19538 r!17423))))))))

(declare-fun b!3071008 () Bool)

(declare-fun c!510624 () Bool)

(declare-fun lt!1051552 () Regex!9513)

(assert (=> b!3071008 (= c!510624 (isEmptyExpr!570 lt!1051552))))

(declare-fun e!1921997 () Regex!9513)

(declare-fun e!1921990 () Regex!9513)

(assert (=> b!3071008 (= e!1921997 e!1921990)))

(declare-fun b!3071009 () Bool)

(declare-fun e!1922002 () Regex!9513)

(declare-fun e!1922001 () Regex!9513)

(assert (=> b!3071009 (= e!1922002 e!1922001)))

(assert (=> b!3071009 (= c!510622 ((_ is Star!9513) (regTwo!19538 r!17423)))))

(declare-fun lt!1051550 () Regex!9513)

(declare-fun call!213271 () Bool)

(declare-fun lt!1051548 () Regex!9513)

(declare-fun bm!213262 () Bool)

(assert (=> bm!213262 (= call!213271 (isEmptyExpr!570 (ite c!510622 lt!1051550 lt!1051548)))))

(declare-fun b!3071010 () Bool)

(declare-fun e!1921996 () Regex!9513)

(assert (=> b!3071010 (= e!1921996 e!1921997)))

(declare-fun call!213266 () Regex!9513)

(assert (=> b!3071010 (= lt!1051552 call!213266)))

(declare-fun call!213270 () Regex!9513)

(assert (=> b!3071010 (= lt!1051548 call!213270)))

(declare-fun res!1260341 () Bool)

(declare-fun call!213272 () Bool)

(assert (=> b!3071010 (= res!1260341 call!213272)))

(declare-fun e!1921995 () Bool)

(assert (=> b!3071010 (=> res!1260341 e!1921995)))

(declare-fun c!510628 () Bool)

(assert (=> b!3071010 (= c!510628 e!1921995)))

(declare-fun b!3071011 () Bool)

(declare-fun e!1921998 () Bool)

(assert (=> b!3071011 (= e!1921998 call!213271)))

(declare-fun d!856246 () Bool)

(declare-fun e!1922000 () Bool)

(assert (=> d!856246 e!1922000))

(declare-fun res!1260342 () Bool)

(assert (=> d!856246 (=> (not res!1260342) (not e!1922000))))

(declare-fun lt!1051549 () Regex!9513)

(assert (=> d!856246 (= res!1260342 (validRegex!4246 lt!1051549))))

(declare-fun e!1921991 () Regex!9513)

(assert (=> d!856246 (= lt!1051549 e!1921991)))

(declare-fun c!510618 () Bool)

(assert (=> d!856246 (= c!510618 ((_ is EmptyLang!9513) (regTwo!19538 r!17423)))))

(assert (=> d!856246 (validRegex!4246 (regTwo!19538 r!17423))))

(assert (=> d!856246 (= (simplify!468 (regTwo!19538 r!17423)) lt!1051549)))

(declare-fun b!3071012 () Bool)

(declare-fun e!1921989 () Regex!9513)

(assert (=> b!3071012 (= e!1921991 e!1921989)))

(declare-fun c!510625 () Bool)

(assert (=> b!3071012 (= c!510625 ((_ is ElementMatch!9513) (regTwo!19538 r!17423)))))

(declare-fun b!3071013 () Bool)

(declare-fun call!213267 () Bool)

(assert (=> b!3071013 (= e!1921995 call!213267)))

(declare-fun b!3071014 () Bool)

(declare-fun e!1921993 () Regex!9513)

(declare-fun lt!1051551 () Regex!9513)

(assert (=> b!3071014 (= e!1921993 lt!1051551)))

(declare-fun b!3071015 () Bool)

(assert (=> b!3071015 (= e!1922002 EmptyExpr!9513)))

(declare-fun b!3071016 () Bool)

(declare-fun e!1921999 () Regex!9513)

(assert (=> b!3071016 (= e!1921999 (Star!9513 lt!1051550))))

(declare-fun b!3071017 () Bool)

(assert (=> b!3071017 (= e!1921991 EmptyLang!9513)))

(declare-fun b!3071018 () Bool)

(assert (=> b!3071018 (= e!1921989 (regTwo!19538 r!17423))))

(declare-fun b!3071019 () Bool)

(declare-fun lt!1051547 () Regex!9513)

(assert (=> b!3071019 (= e!1921993 (Union!9513 lt!1051551 lt!1051547))))

(declare-fun b!3071020 () Bool)

(declare-fun c!510619 () Bool)

(assert (=> b!3071020 (= c!510619 call!213267)))

(declare-fun e!1921992 () Regex!9513)

(assert (=> b!3071020 (= e!1921992 e!1921993)))

(declare-fun bm!213263 () Bool)

(assert (=> bm!213263 (= call!213272 (isEmptyLang!564 (ite c!510620 lt!1051551 lt!1051552)))))

(declare-fun b!3071021 () Bool)

(assert (=> b!3071021 (= e!1921992 lt!1051547)))

(declare-fun call!213269 () Bool)

(declare-fun bm!213264 () Bool)

(assert (=> bm!213264 (= call!213269 (isEmptyLang!564 (ite c!510622 lt!1051550 (ite c!510620 lt!1051547 lt!1051548))))))

(declare-fun b!3071022 () Bool)

(declare-fun e!1921994 () Regex!9513)

(assert (=> b!3071022 (= e!1921994 lt!1051552)))

(declare-fun b!3071023 () Bool)

(assert (=> b!3071023 (= e!1921997 EmptyLang!9513)))

(declare-fun b!3071024 () Bool)

(declare-fun c!510627 () Bool)

(assert (=> b!3071024 (= c!510627 e!1921998)))

(declare-fun res!1260340 () Bool)

(assert (=> b!3071024 (=> res!1260340 e!1921998)))

(assert (=> b!3071024 (= res!1260340 call!213269)))

(assert (=> b!3071024 (= lt!1051550 call!213268)))

(assert (=> b!3071024 (= e!1922001 e!1921999)))

(declare-fun b!3071025 () Bool)

(assert (=> b!3071025 (= e!1921996 e!1921992)))

(assert (=> b!3071025 (= lt!1051551 call!213270)))

(assert (=> b!3071025 (= lt!1051547 call!213266)))

(declare-fun c!510626 () Bool)

(assert (=> b!3071025 (= c!510626 call!213272)))

(declare-fun b!3071026 () Bool)

(assert (=> b!3071026 (= c!510620 ((_ is Union!9513) (regTwo!19538 r!17423)))))

(assert (=> b!3071026 (= e!1922001 e!1921996)))

(declare-fun bm!213265 () Bool)

(assert (=> bm!213265 (= call!213270 call!213268)))

(declare-fun bm!213266 () Bool)

(assert (=> bm!213266 (= call!213267 call!213269)))

(declare-fun b!3071027 () Bool)

(assert (=> b!3071027 (= e!1921994 (Concat!14834 lt!1051552 lt!1051548))))

(declare-fun b!3071028 () Bool)

(assert (=> b!3071028 (= e!1921990 e!1921994)))

(declare-fun c!510623 () Bool)

(assert (=> b!3071028 (= c!510623 call!213271)))

(declare-fun b!3071029 () Bool)

(declare-fun c!510621 () Bool)

(assert (=> b!3071029 (= c!510621 ((_ is EmptyExpr!9513) (regTwo!19538 r!17423)))))

(assert (=> b!3071029 (= e!1921989 e!1922002)))

(declare-fun b!3071030 () Bool)

(assert (=> b!3071030 (= e!1921990 lt!1051548)))

(declare-fun b!3071031 () Bool)

(assert (=> b!3071031 (= e!1921999 EmptyExpr!9513)))

(declare-fun bm!213267 () Bool)

(assert (=> bm!213267 (= call!213266 (simplify!468 (ite c!510620 (regTwo!19539 (regTwo!19538 r!17423)) (regOne!19538 (regTwo!19538 r!17423)))))))

(declare-fun b!3071032 () Bool)

(assert (=> b!3071032 (= e!1922000 (= (nullable!3159 lt!1051549) (nullable!3159 (regTwo!19538 r!17423))))))

(assert (= (and d!856246 c!510618) b!3071017))

(assert (= (and d!856246 (not c!510618)) b!3071012))

(assert (= (and b!3071012 c!510625) b!3071018))

(assert (= (and b!3071012 (not c!510625)) b!3071029))

(assert (= (and b!3071029 c!510621) b!3071015))

(assert (= (and b!3071029 (not c!510621)) b!3071009))

(assert (= (and b!3071009 c!510622) b!3071024))

(assert (= (and b!3071009 (not c!510622)) b!3071026))

(assert (= (and b!3071024 (not res!1260340)) b!3071011))

(assert (= (and b!3071024 c!510627) b!3071031))

(assert (= (and b!3071024 (not c!510627)) b!3071016))

(assert (= (and b!3071026 c!510620) b!3071025))

(assert (= (and b!3071026 (not c!510620)) b!3071010))

(assert (= (and b!3071025 c!510626) b!3071021))

(assert (= (and b!3071025 (not c!510626)) b!3071020))

(assert (= (and b!3071020 c!510619) b!3071014))

(assert (= (and b!3071020 (not c!510619)) b!3071019))

(assert (= (and b!3071010 (not res!1260341)) b!3071013))

(assert (= (and b!3071010 c!510628) b!3071023))

(assert (= (and b!3071010 (not c!510628)) b!3071008))

(assert (= (and b!3071008 c!510624) b!3071030))

(assert (= (and b!3071008 (not c!510624)) b!3071028))

(assert (= (and b!3071028 c!510623) b!3071022))

(assert (= (and b!3071028 (not c!510623)) b!3071027))

(assert (= (or b!3071025 b!3071010) bm!213265))

(assert (= (or b!3071025 b!3071010) bm!213267))

(assert (= (or b!3071020 b!3071013) bm!213266))

(assert (= (or b!3071025 b!3071010) bm!213263))

(assert (= (or b!3071011 b!3071028) bm!213262))

(assert (= (or b!3071024 bm!213265) bm!213261))

(assert (= (or b!3071024 bm!213266) bm!213264))

(assert (= (and d!856246 res!1260342) b!3071032))

(declare-fun m!3385587 () Bool)

(assert (=> bm!213267 m!3385587))

(declare-fun m!3385589 () Bool)

(assert (=> bm!213262 m!3385589))

(declare-fun m!3385591 () Bool)

(assert (=> bm!213264 m!3385591))

(declare-fun m!3385593 () Bool)

(assert (=> b!3071032 m!3385593))

(assert (=> b!3071032 m!3385499))

(declare-fun m!3385595 () Bool)

(assert (=> b!3071008 m!3385595))

(declare-fun m!3385597 () Bool)

(assert (=> bm!213263 m!3385597))

(declare-fun m!3385599 () Bool)

(assert (=> d!856246 m!3385599))

(assert (=> d!856246 m!3385373))

(declare-fun m!3385601 () Bool)

(assert (=> bm!213261 m!3385601))

(assert (=> b!3070478 d!856246))

(declare-fun c!510633 () Bool)

(declare-fun bm!213268 () Bool)

(declare-fun call!213275 () Regex!9513)

(declare-fun c!510631 () Bool)

(assert (=> bm!213268 (= call!213275 (simplify!468 (ite c!510633 (reg!9842 (regOne!19538 r!17423)) (ite c!510631 (regOne!19539 (regOne!19538 r!17423)) (regTwo!19538 (regOne!19538 r!17423))))))))

(declare-fun b!3071033 () Bool)

(declare-fun c!510635 () Bool)

(declare-fun lt!1051558 () Regex!9513)

(assert (=> b!3071033 (= c!510635 (isEmptyExpr!570 lt!1051558))))

(declare-fun e!1922011 () Regex!9513)

(declare-fun e!1922004 () Regex!9513)

(assert (=> b!3071033 (= e!1922011 e!1922004)))

(declare-fun b!3071034 () Bool)

(declare-fun e!1922016 () Regex!9513)

(declare-fun e!1922015 () Regex!9513)

(assert (=> b!3071034 (= e!1922016 e!1922015)))

(assert (=> b!3071034 (= c!510633 ((_ is Star!9513) (regOne!19538 r!17423)))))

(declare-fun bm!213269 () Bool)

(declare-fun lt!1051556 () Regex!9513)

(declare-fun call!213278 () Bool)

(declare-fun lt!1051554 () Regex!9513)

(assert (=> bm!213269 (= call!213278 (isEmptyExpr!570 (ite c!510633 lt!1051556 lt!1051554)))))

(declare-fun b!3071035 () Bool)

(declare-fun e!1922010 () Regex!9513)

(assert (=> b!3071035 (= e!1922010 e!1922011)))

(declare-fun call!213273 () Regex!9513)

(assert (=> b!3071035 (= lt!1051558 call!213273)))

(declare-fun call!213277 () Regex!9513)

(assert (=> b!3071035 (= lt!1051554 call!213277)))

(declare-fun res!1260344 () Bool)

(declare-fun call!213279 () Bool)

(assert (=> b!3071035 (= res!1260344 call!213279)))

(declare-fun e!1922009 () Bool)

(assert (=> b!3071035 (=> res!1260344 e!1922009)))

(declare-fun c!510639 () Bool)

(assert (=> b!3071035 (= c!510639 e!1922009)))

(declare-fun b!3071036 () Bool)

(declare-fun e!1922012 () Bool)

(assert (=> b!3071036 (= e!1922012 call!213278)))

(declare-fun d!856248 () Bool)

(declare-fun e!1922014 () Bool)

(assert (=> d!856248 e!1922014))

(declare-fun res!1260345 () Bool)

(assert (=> d!856248 (=> (not res!1260345) (not e!1922014))))

(declare-fun lt!1051555 () Regex!9513)

(assert (=> d!856248 (= res!1260345 (validRegex!4246 lt!1051555))))

(declare-fun e!1922005 () Regex!9513)

(assert (=> d!856248 (= lt!1051555 e!1922005)))

(declare-fun c!510629 () Bool)

(assert (=> d!856248 (= c!510629 ((_ is EmptyLang!9513) (regOne!19538 r!17423)))))

(assert (=> d!856248 (validRegex!4246 (regOne!19538 r!17423))))

(assert (=> d!856248 (= (simplify!468 (regOne!19538 r!17423)) lt!1051555)))

(declare-fun b!3071037 () Bool)

(declare-fun e!1922003 () Regex!9513)

(assert (=> b!3071037 (= e!1922005 e!1922003)))

(declare-fun c!510636 () Bool)

(assert (=> b!3071037 (= c!510636 ((_ is ElementMatch!9513) (regOne!19538 r!17423)))))

(declare-fun b!3071038 () Bool)

(declare-fun call!213274 () Bool)

(assert (=> b!3071038 (= e!1922009 call!213274)))

(declare-fun b!3071039 () Bool)

(declare-fun e!1922007 () Regex!9513)

(declare-fun lt!1051557 () Regex!9513)

(assert (=> b!3071039 (= e!1922007 lt!1051557)))

(declare-fun b!3071040 () Bool)

(assert (=> b!3071040 (= e!1922016 EmptyExpr!9513)))

(declare-fun b!3071041 () Bool)

(declare-fun e!1922013 () Regex!9513)

(assert (=> b!3071041 (= e!1922013 (Star!9513 lt!1051556))))

(declare-fun b!3071042 () Bool)

(assert (=> b!3071042 (= e!1922005 EmptyLang!9513)))

(declare-fun b!3071043 () Bool)

(assert (=> b!3071043 (= e!1922003 (regOne!19538 r!17423))))

(declare-fun b!3071044 () Bool)

(declare-fun lt!1051553 () Regex!9513)

(assert (=> b!3071044 (= e!1922007 (Union!9513 lt!1051557 lt!1051553))))

(declare-fun b!3071045 () Bool)

(declare-fun c!510630 () Bool)

(assert (=> b!3071045 (= c!510630 call!213274)))

(declare-fun e!1922006 () Regex!9513)

(assert (=> b!3071045 (= e!1922006 e!1922007)))

(declare-fun bm!213270 () Bool)

(assert (=> bm!213270 (= call!213279 (isEmptyLang!564 (ite c!510631 lt!1051557 lt!1051558)))))

(declare-fun b!3071046 () Bool)

(assert (=> b!3071046 (= e!1922006 lt!1051553)))

(declare-fun call!213276 () Bool)

(declare-fun bm!213271 () Bool)

(assert (=> bm!213271 (= call!213276 (isEmptyLang!564 (ite c!510633 lt!1051556 (ite c!510631 lt!1051553 lt!1051554))))))

(declare-fun b!3071047 () Bool)

(declare-fun e!1922008 () Regex!9513)

(assert (=> b!3071047 (= e!1922008 lt!1051558)))

(declare-fun b!3071048 () Bool)

(assert (=> b!3071048 (= e!1922011 EmptyLang!9513)))

(declare-fun b!3071049 () Bool)

(declare-fun c!510638 () Bool)

(assert (=> b!3071049 (= c!510638 e!1922012)))

(declare-fun res!1260343 () Bool)

(assert (=> b!3071049 (=> res!1260343 e!1922012)))

(assert (=> b!3071049 (= res!1260343 call!213276)))

(assert (=> b!3071049 (= lt!1051556 call!213275)))

(assert (=> b!3071049 (= e!1922015 e!1922013)))

(declare-fun b!3071050 () Bool)

(assert (=> b!3071050 (= e!1922010 e!1922006)))

(assert (=> b!3071050 (= lt!1051557 call!213277)))

(assert (=> b!3071050 (= lt!1051553 call!213273)))

(declare-fun c!510637 () Bool)

(assert (=> b!3071050 (= c!510637 call!213279)))

(declare-fun b!3071051 () Bool)

(assert (=> b!3071051 (= c!510631 ((_ is Union!9513) (regOne!19538 r!17423)))))

(assert (=> b!3071051 (= e!1922015 e!1922010)))

(declare-fun bm!213272 () Bool)

(assert (=> bm!213272 (= call!213277 call!213275)))

(declare-fun bm!213273 () Bool)

(assert (=> bm!213273 (= call!213274 call!213276)))

(declare-fun b!3071052 () Bool)

(assert (=> b!3071052 (= e!1922008 (Concat!14834 lt!1051558 lt!1051554))))

(declare-fun b!3071053 () Bool)

(assert (=> b!3071053 (= e!1922004 e!1922008)))

(declare-fun c!510634 () Bool)

(assert (=> b!3071053 (= c!510634 call!213278)))

(declare-fun b!3071054 () Bool)

(declare-fun c!510632 () Bool)

(assert (=> b!3071054 (= c!510632 ((_ is EmptyExpr!9513) (regOne!19538 r!17423)))))

(assert (=> b!3071054 (= e!1922003 e!1922016)))

(declare-fun b!3071055 () Bool)

(assert (=> b!3071055 (= e!1922004 lt!1051554)))

(declare-fun b!3071056 () Bool)

(assert (=> b!3071056 (= e!1922013 EmptyExpr!9513)))

(declare-fun bm!213274 () Bool)

(assert (=> bm!213274 (= call!213273 (simplify!468 (ite c!510631 (regTwo!19539 (regOne!19538 r!17423)) (regOne!19538 (regOne!19538 r!17423)))))))

(declare-fun b!3071057 () Bool)

(assert (=> b!3071057 (= e!1922014 (= (nullable!3159 lt!1051555) (nullable!3159 (regOne!19538 r!17423))))))

(assert (= (and d!856248 c!510629) b!3071042))

(assert (= (and d!856248 (not c!510629)) b!3071037))

(assert (= (and b!3071037 c!510636) b!3071043))

(assert (= (and b!3071037 (not c!510636)) b!3071054))

(assert (= (and b!3071054 c!510632) b!3071040))

(assert (= (and b!3071054 (not c!510632)) b!3071034))

(assert (= (and b!3071034 c!510633) b!3071049))

(assert (= (and b!3071034 (not c!510633)) b!3071051))

(assert (= (and b!3071049 (not res!1260343)) b!3071036))

(assert (= (and b!3071049 c!510638) b!3071056))

(assert (= (and b!3071049 (not c!510638)) b!3071041))

(assert (= (and b!3071051 c!510631) b!3071050))

(assert (= (and b!3071051 (not c!510631)) b!3071035))

(assert (= (and b!3071050 c!510637) b!3071046))

(assert (= (and b!3071050 (not c!510637)) b!3071045))

(assert (= (and b!3071045 c!510630) b!3071039))

(assert (= (and b!3071045 (not c!510630)) b!3071044))

(assert (= (and b!3071035 (not res!1260344)) b!3071038))

(assert (= (and b!3071035 c!510639) b!3071048))

(assert (= (and b!3071035 (not c!510639)) b!3071033))

(assert (= (and b!3071033 c!510635) b!3071055))

(assert (= (and b!3071033 (not c!510635)) b!3071053))

(assert (= (and b!3071053 c!510634) b!3071047))

(assert (= (and b!3071053 (not c!510634)) b!3071052))

(assert (= (or b!3071050 b!3071035) bm!213272))

(assert (= (or b!3071050 b!3071035) bm!213274))

(assert (= (or b!3071045 b!3071038) bm!213273))

(assert (= (or b!3071050 b!3071035) bm!213270))

(assert (= (or b!3071036 b!3071053) bm!213269))

(assert (= (or b!3071049 bm!213272) bm!213268))

(assert (= (or b!3071049 bm!213273) bm!213271))

(assert (= (and d!856248 res!1260345) b!3071057))

(declare-fun m!3385603 () Bool)

(assert (=> bm!213274 m!3385603))

(declare-fun m!3385605 () Bool)

(assert (=> bm!213269 m!3385605))

(declare-fun m!3385607 () Bool)

(assert (=> bm!213271 m!3385607))

(declare-fun m!3385609 () Bool)

(assert (=> b!3071057 m!3385609))

(assert (=> b!3071057 m!3385485))

(declare-fun m!3385611 () Bool)

(assert (=> b!3071033 m!3385611))

(declare-fun m!3385613 () Bool)

(assert (=> bm!213270 m!3385613))

(declare-fun m!3385615 () Bool)

(assert (=> d!856248 m!3385615))

(assert (=> d!856248 m!3385407))

(declare-fun m!3385617 () Bool)

(assert (=> bm!213268 m!3385617))

(assert (=> b!3070478 d!856248))

(declare-fun d!856250 () Bool)

(assert (=> d!856250 (= (isEmptyExpr!570 lt!1051481) ((_ is EmptyExpr!9513) lt!1051481))))

(assert (=> b!3070484 d!856250))

(declare-fun b!3071076 () Bool)

(declare-fun e!1922034 () Bool)

(declare-fun call!213287 () Bool)

(assert (=> b!3071076 (= e!1922034 call!213287)))

(declare-fun b!3071077 () Bool)

(declare-fun e!1922037 () Bool)

(declare-fun e!1922031 () Bool)

(assert (=> b!3071077 (= e!1922037 e!1922031)))

(declare-fun c!510644 () Bool)

(assert (=> b!3071077 (= c!510644 ((_ is Star!9513) (regOne!19538 r!17423)))))

(declare-fun b!3071078 () Bool)

(declare-fun res!1260359 () Bool)

(declare-fun e!1922036 () Bool)

(assert (=> b!3071078 (=> res!1260359 e!1922036)))

(assert (=> b!3071078 (= res!1260359 (not ((_ is Concat!14834) (regOne!19538 r!17423))))))

(declare-fun e!1922035 () Bool)

(assert (=> b!3071078 (= e!1922035 e!1922036)))

(declare-fun bm!213281 () Bool)

(declare-fun call!213286 () Bool)

(declare-fun c!510645 () Bool)

(assert (=> bm!213281 (= call!213286 (validRegex!4246 (ite c!510645 (regTwo!19539 (regOne!19538 r!17423)) (regOne!19538 (regOne!19538 r!17423)))))))

(declare-fun d!856252 () Bool)

(declare-fun res!1260360 () Bool)

(assert (=> d!856252 (=> res!1260360 e!1922037)))

(assert (=> d!856252 (= res!1260360 ((_ is ElementMatch!9513) (regOne!19538 r!17423)))))

(assert (=> d!856252 (= (validRegex!4246 (regOne!19538 r!17423)) e!1922037)))

(declare-fun bm!213282 () Bool)

(declare-fun call!213288 () Bool)

(assert (=> bm!213282 (= call!213287 call!213288)))

(declare-fun b!3071079 () Bool)

(declare-fun e!1922033 () Bool)

(assert (=> b!3071079 (= e!1922031 e!1922033)))

(declare-fun res!1260358 () Bool)

(assert (=> b!3071079 (= res!1260358 (not (nullable!3159 (reg!9842 (regOne!19538 r!17423)))))))

(assert (=> b!3071079 (=> (not res!1260358) (not e!1922033))))

(declare-fun b!3071080 () Bool)

(declare-fun e!1922032 () Bool)

(assert (=> b!3071080 (= e!1922032 call!213286)))

(declare-fun b!3071081 () Bool)

(assert (=> b!3071081 (= e!1922036 e!1922034)))

(declare-fun res!1260356 () Bool)

(assert (=> b!3071081 (=> (not res!1260356) (not e!1922034))))

(assert (=> b!3071081 (= res!1260356 call!213286)))

(declare-fun b!3071082 () Bool)

(assert (=> b!3071082 (= e!1922033 call!213288)))

(declare-fun bm!213283 () Bool)

(assert (=> bm!213283 (= call!213288 (validRegex!4246 (ite c!510644 (reg!9842 (regOne!19538 r!17423)) (ite c!510645 (regOne!19539 (regOne!19538 r!17423)) (regTwo!19538 (regOne!19538 r!17423))))))))

(declare-fun b!3071083 () Bool)

(assert (=> b!3071083 (= e!1922031 e!1922035)))

(assert (=> b!3071083 (= c!510645 ((_ is Union!9513) (regOne!19538 r!17423)))))

(declare-fun b!3071084 () Bool)

(declare-fun res!1260357 () Bool)

(assert (=> b!3071084 (=> (not res!1260357) (not e!1922032))))

(assert (=> b!3071084 (= res!1260357 call!213287)))

(assert (=> b!3071084 (= e!1922035 e!1922032)))

(assert (= (and d!856252 (not res!1260360)) b!3071077))

(assert (= (and b!3071077 c!510644) b!3071079))

(assert (= (and b!3071077 (not c!510644)) b!3071083))

(assert (= (and b!3071079 res!1260358) b!3071082))

(assert (= (and b!3071083 c!510645) b!3071084))

(assert (= (and b!3071083 (not c!510645)) b!3071078))

(assert (= (and b!3071084 res!1260357) b!3071080))

(assert (= (and b!3071078 (not res!1260359)) b!3071081))

(assert (= (and b!3071081 res!1260356) b!3071076))

(assert (= (or b!3071084 b!3071076) bm!213282))

(assert (= (or b!3071080 b!3071081) bm!213281))

(assert (= (or b!3071082 bm!213282) bm!213283))

(declare-fun m!3385619 () Bool)

(assert (=> bm!213281 m!3385619))

(declare-fun m!3385621 () Bool)

(assert (=> b!3071079 m!3385621))

(declare-fun m!3385623 () Bool)

(assert (=> bm!213283 m!3385623))

(assert (=> b!3070487 d!856252))

(declare-fun b!3071085 () Bool)

(declare-fun e!1922041 () Bool)

(declare-fun call!213290 () Bool)

(assert (=> b!3071085 (= e!1922041 call!213290)))

(declare-fun b!3071086 () Bool)

(declare-fun e!1922044 () Bool)

(declare-fun e!1922038 () Bool)

(assert (=> b!3071086 (= e!1922044 e!1922038)))

(declare-fun c!510646 () Bool)

(assert (=> b!3071086 (= c!510646 ((_ is Star!9513) r!17423))))

(declare-fun b!3071087 () Bool)

(declare-fun res!1260364 () Bool)

(declare-fun e!1922043 () Bool)

(assert (=> b!3071087 (=> res!1260364 e!1922043)))

(assert (=> b!3071087 (= res!1260364 (not ((_ is Concat!14834) r!17423)))))

(declare-fun e!1922042 () Bool)

(assert (=> b!3071087 (= e!1922042 e!1922043)))

(declare-fun bm!213284 () Bool)

(declare-fun call!213289 () Bool)

(declare-fun c!510647 () Bool)

(assert (=> bm!213284 (= call!213289 (validRegex!4246 (ite c!510647 (regTwo!19539 r!17423) (regOne!19538 r!17423))))))

(declare-fun d!856254 () Bool)

(declare-fun res!1260365 () Bool)

(assert (=> d!856254 (=> res!1260365 e!1922044)))

(assert (=> d!856254 (= res!1260365 ((_ is ElementMatch!9513) r!17423))))

(assert (=> d!856254 (= (validRegex!4246 r!17423) e!1922044)))

(declare-fun bm!213285 () Bool)

(declare-fun call!213291 () Bool)

(assert (=> bm!213285 (= call!213290 call!213291)))

(declare-fun b!3071088 () Bool)

(declare-fun e!1922040 () Bool)

(assert (=> b!3071088 (= e!1922038 e!1922040)))

(declare-fun res!1260363 () Bool)

(assert (=> b!3071088 (= res!1260363 (not (nullable!3159 (reg!9842 r!17423))))))

(assert (=> b!3071088 (=> (not res!1260363) (not e!1922040))))

(declare-fun b!3071089 () Bool)

(declare-fun e!1922039 () Bool)

(assert (=> b!3071089 (= e!1922039 call!213289)))

(declare-fun b!3071090 () Bool)

(assert (=> b!3071090 (= e!1922043 e!1922041)))

(declare-fun res!1260361 () Bool)

(assert (=> b!3071090 (=> (not res!1260361) (not e!1922041))))

(assert (=> b!3071090 (= res!1260361 call!213289)))

(declare-fun b!3071091 () Bool)

(assert (=> b!3071091 (= e!1922040 call!213291)))

(declare-fun bm!213286 () Bool)

(assert (=> bm!213286 (= call!213291 (validRegex!4246 (ite c!510646 (reg!9842 r!17423) (ite c!510647 (regOne!19539 r!17423) (regTwo!19538 r!17423)))))))

(declare-fun b!3071092 () Bool)

(assert (=> b!3071092 (= e!1922038 e!1922042)))

(assert (=> b!3071092 (= c!510647 ((_ is Union!9513) r!17423))))

(declare-fun b!3071093 () Bool)

(declare-fun res!1260362 () Bool)

(assert (=> b!3071093 (=> (not res!1260362) (not e!1922039))))

(assert (=> b!3071093 (= res!1260362 call!213290)))

(assert (=> b!3071093 (= e!1922042 e!1922039)))

(assert (= (and d!856254 (not res!1260365)) b!3071086))

(assert (= (and b!3071086 c!510646) b!3071088))

(assert (= (and b!3071086 (not c!510646)) b!3071092))

(assert (= (and b!3071088 res!1260363) b!3071091))

(assert (= (and b!3071092 c!510647) b!3071093))

(assert (= (and b!3071092 (not c!510647)) b!3071087))

(assert (= (and b!3071093 res!1260362) b!3071089))

(assert (= (and b!3071087 (not res!1260364)) b!3071090))

(assert (= (and b!3071090 res!1260361) b!3071085))

(assert (= (or b!3071093 b!3071085) bm!213285))

(assert (= (or b!3071089 b!3071090) bm!213284))

(assert (= (or b!3071091 bm!213285) bm!213286))

(declare-fun m!3385625 () Bool)

(assert (=> bm!213284 m!3385625))

(declare-fun m!3385627 () Bool)

(assert (=> b!3071088 m!3385627))

(declare-fun m!3385629 () Bool)

(assert (=> bm!213286 m!3385629))

(assert (=> start!292820 d!856254))

(declare-fun d!856256 () Bool)

(assert (=> d!856256 (= (isEmptyLang!564 lt!1051480) ((_ is EmptyLang!9513) lt!1051480))))

(assert (=> b!3070482 d!856256))

(declare-fun b!3071094 () Bool)

(declare-fun e!1922048 () Bool)

(declare-fun call!213293 () Bool)

(assert (=> b!3071094 (= e!1922048 call!213293)))

(declare-fun b!3071095 () Bool)

(declare-fun e!1922051 () Bool)

(declare-fun e!1922045 () Bool)

(assert (=> b!3071095 (= e!1922051 e!1922045)))

(declare-fun c!510648 () Bool)

(assert (=> b!3071095 (= c!510648 ((_ is Star!9513) (regTwo!19538 r!17423)))))

(declare-fun b!3071096 () Bool)

(declare-fun res!1260369 () Bool)

(declare-fun e!1922050 () Bool)

(assert (=> b!3071096 (=> res!1260369 e!1922050)))

(assert (=> b!3071096 (= res!1260369 (not ((_ is Concat!14834) (regTwo!19538 r!17423))))))

(declare-fun e!1922049 () Bool)

(assert (=> b!3071096 (= e!1922049 e!1922050)))

(declare-fun bm!213287 () Bool)

(declare-fun call!213292 () Bool)

(declare-fun c!510649 () Bool)

(assert (=> bm!213287 (= call!213292 (validRegex!4246 (ite c!510649 (regTwo!19539 (regTwo!19538 r!17423)) (regOne!19538 (regTwo!19538 r!17423)))))))

(declare-fun d!856258 () Bool)

(declare-fun res!1260370 () Bool)

(assert (=> d!856258 (=> res!1260370 e!1922051)))

(assert (=> d!856258 (= res!1260370 ((_ is ElementMatch!9513) (regTwo!19538 r!17423)))))

(assert (=> d!856258 (= (validRegex!4246 (regTwo!19538 r!17423)) e!1922051)))

(declare-fun bm!213288 () Bool)

(declare-fun call!213294 () Bool)

(assert (=> bm!213288 (= call!213293 call!213294)))

(declare-fun b!3071097 () Bool)

(declare-fun e!1922047 () Bool)

(assert (=> b!3071097 (= e!1922045 e!1922047)))

(declare-fun res!1260368 () Bool)

(assert (=> b!3071097 (= res!1260368 (not (nullable!3159 (reg!9842 (regTwo!19538 r!17423)))))))

(assert (=> b!3071097 (=> (not res!1260368) (not e!1922047))))

(declare-fun b!3071098 () Bool)

(declare-fun e!1922046 () Bool)

(assert (=> b!3071098 (= e!1922046 call!213292)))

(declare-fun b!3071099 () Bool)

(assert (=> b!3071099 (= e!1922050 e!1922048)))

(declare-fun res!1260366 () Bool)

(assert (=> b!3071099 (=> (not res!1260366) (not e!1922048))))

(assert (=> b!3071099 (= res!1260366 call!213292)))

(declare-fun b!3071100 () Bool)

(assert (=> b!3071100 (= e!1922047 call!213294)))

(declare-fun bm!213289 () Bool)

(assert (=> bm!213289 (= call!213294 (validRegex!4246 (ite c!510648 (reg!9842 (regTwo!19538 r!17423)) (ite c!510649 (regOne!19539 (regTwo!19538 r!17423)) (regTwo!19538 (regTwo!19538 r!17423))))))))

(declare-fun b!3071101 () Bool)

(assert (=> b!3071101 (= e!1922045 e!1922049)))

(assert (=> b!3071101 (= c!510649 ((_ is Union!9513) (regTwo!19538 r!17423)))))

(declare-fun b!3071102 () Bool)

(declare-fun res!1260367 () Bool)

(assert (=> b!3071102 (=> (not res!1260367) (not e!1922046))))

(assert (=> b!3071102 (= res!1260367 call!213293)))

(assert (=> b!3071102 (= e!1922049 e!1922046)))

(assert (= (and d!856258 (not res!1260370)) b!3071095))

(assert (= (and b!3071095 c!510648) b!3071097))

(assert (= (and b!3071095 (not c!510648)) b!3071101))

(assert (= (and b!3071097 res!1260368) b!3071100))

(assert (= (and b!3071101 c!510649) b!3071102))

(assert (= (and b!3071101 (not c!510649)) b!3071096))

(assert (= (and b!3071102 res!1260367) b!3071098))

(assert (= (and b!3071096 (not res!1260369)) b!3071099))

(assert (= (and b!3071099 res!1260366) b!3071094))

(assert (= (or b!3071102 b!3071094) bm!213288))

(assert (= (or b!3071098 b!3071099) bm!213287))

(assert (= (or b!3071100 bm!213288) bm!213289))

(declare-fun m!3385631 () Bool)

(assert (=> bm!213287 m!3385631))

(declare-fun m!3385633 () Bool)

(assert (=> b!3071097 m!3385633))

(declare-fun m!3385635 () Bool)

(assert (=> bm!213289 m!3385635))

(assert (=> b!3070477 d!856258))

(declare-fun b!3071114 () Bool)

(declare-fun e!1922054 () Bool)

(declare-fun tp!968835 () Bool)

(declare-fun tp!968834 () Bool)

(assert (=> b!3071114 (= e!1922054 (and tp!968835 tp!968834))))

(declare-fun b!3071115 () Bool)

(declare-fun tp!968836 () Bool)

(assert (=> b!3071115 (= e!1922054 tp!968836)))

(declare-fun b!3071116 () Bool)

(declare-fun tp!968838 () Bool)

(declare-fun tp!968837 () Bool)

(assert (=> b!3071116 (= e!1922054 (and tp!968838 tp!968837))))

(assert (=> b!3070475 (= tp!968780 e!1922054)))

(declare-fun b!3071113 () Bool)

(assert (=> b!3071113 (= e!1922054 tp_is_empty!16589)))

(assert (= (and b!3070475 ((_ is ElementMatch!9513) (reg!9842 r!17423))) b!3071113))

(assert (= (and b!3070475 ((_ is Concat!14834) (reg!9842 r!17423))) b!3071114))

(assert (= (and b!3070475 ((_ is Star!9513) (reg!9842 r!17423))) b!3071115))

(assert (= (and b!3070475 ((_ is Union!9513) (reg!9842 r!17423))) b!3071116))

(declare-fun b!3071121 () Bool)

(declare-fun e!1922057 () Bool)

(declare-fun tp!968841 () Bool)

(assert (=> b!3071121 (= e!1922057 (and tp_is_empty!16589 tp!968841))))

(assert (=> b!3070476 (= tp!968782 e!1922057)))

(assert (= (and b!3070476 ((_ is Cons!35254) (t!234443 s!11993))) b!3071121))

(declare-fun b!3071123 () Bool)

(declare-fun e!1922058 () Bool)

(declare-fun tp!968843 () Bool)

(declare-fun tp!968842 () Bool)

(assert (=> b!3071123 (= e!1922058 (and tp!968843 tp!968842))))

(declare-fun b!3071124 () Bool)

(declare-fun tp!968844 () Bool)

(assert (=> b!3071124 (= e!1922058 tp!968844)))

(declare-fun b!3071125 () Bool)

(declare-fun tp!968846 () Bool)

(declare-fun tp!968845 () Bool)

(assert (=> b!3071125 (= e!1922058 (and tp!968846 tp!968845))))

(assert (=> b!3070474 (= tp!968784 e!1922058)))

(declare-fun b!3071122 () Bool)

(assert (=> b!3071122 (= e!1922058 tp_is_empty!16589)))

(assert (= (and b!3070474 ((_ is ElementMatch!9513) (regOne!19539 r!17423))) b!3071122))

(assert (= (and b!3070474 ((_ is Concat!14834) (regOne!19539 r!17423))) b!3071123))

(assert (= (and b!3070474 ((_ is Star!9513) (regOne!19539 r!17423))) b!3071124))

(assert (= (and b!3070474 ((_ is Union!9513) (regOne!19539 r!17423))) b!3071125))

(declare-fun b!3071127 () Bool)

(declare-fun e!1922059 () Bool)

(declare-fun tp!968848 () Bool)

(declare-fun tp!968847 () Bool)

(assert (=> b!3071127 (= e!1922059 (and tp!968848 tp!968847))))

(declare-fun b!3071128 () Bool)

(declare-fun tp!968849 () Bool)

(assert (=> b!3071128 (= e!1922059 tp!968849)))

(declare-fun b!3071129 () Bool)

(declare-fun tp!968851 () Bool)

(declare-fun tp!968850 () Bool)

(assert (=> b!3071129 (= e!1922059 (and tp!968851 tp!968850))))

(assert (=> b!3070474 (= tp!968781 e!1922059)))

(declare-fun b!3071126 () Bool)

(assert (=> b!3071126 (= e!1922059 tp_is_empty!16589)))

(assert (= (and b!3070474 ((_ is ElementMatch!9513) (regTwo!19539 r!17423))) b!3071126))

(assert (= (and b!3070474 ((_ is Concat!14834) (regTwo!19539 r!17423))) b!3071127))

(assert (= (and b!3070474 ((_ is Star!9513) (regTwo!19539 r!17423))) b!3071128))

(assert (= (and b!3070474 ((_ is Union!9513) (regTwo!19539 r!17423))) b!3071129))

(declare-fun b!3071131 () Bool)

(declare-fun e!1922060 () Bool)

(declare-fun tp!968853 () Bool)

(declare-fun tp!968852 () Bool)

(assert (=> b!3071131 (= e!1922060 (and tp!968853 tp!968852))))

(declare-fun b!3071132 () Bool)

(declare-fun tp!968854 () Bool)

(assert (=> b!3071132 (= e!1922060 tp!968854)))

(declare-fun b!3071133 () Bool)

(declare-fun tp!968856 () Bool)

(declare-fun tp!968855 () Bool)

(assert (=> b!3071133 (= e!1922060 (and tp!968856 tp!968855))))

(assert (=> b!3070483 (= tp!968785 e!1922060)))

(declare-fun b!3071130 () Bool)

(assert (=> b!3071130 (= e!1922060 tp_is_empty!16589)))

(assert (= (and b!3070483 ((_ is ElementMatch!9513) (regOne!19538 r!17423))) b!3071130))

(assert (= (and b!3070483 ((_ is Concat!14834) (regOne!19538 r!17423))) b!3071131))

(assert (= (and b!3070483 ((_ is Star!9513) (regOne!19538 r!17423))) b!3071132))

(assert (= (and b!3070483 ((_ is Union!9513) (regOne!19538 r!17423))) b!3071133))

(declare-fun b!3071135 () Bool)

(declare-fun e!1922061 () Bool)

(declare-fun tp!968858 () Bool)

(declare-fun tp!968857 () Bool)

(assert (=> b!3071135 (= e!1922061 (and tp!968858 tp!968857))))

(declare-fun b!3071136 () Bool)

(declare-fun tp!968859 () Bool)

(assert (=> b!3071136 (= e!1922061 tp!968859)))

(declare-fun b!3071137 () Bool)

(declare-fun tp!968861 () Bool)

(declare-fun tp!968860 () Bool)

(assert (=> b!3071137 (= e!1922061 (and tp!968861 tp!968860))))

(assert (=> b!3070483 (= tp!968783 e!1922061)))

(declare-fun b!3071134 () Bool)

(assert (=> b!3071134 (= e!1922061 tp_is_empty!16589)))

(assert (= (and b!3070483 ((_ is ElementMatch!9513) (regTwo!19538 r!17423))) b!3071134))

(assert (= (and b!3070483 ((_ is Concat!14834) (regTwo!19538 r!17423))) b!3071135))

(assert (= (and b!3070483 ((_ is Star!9513) (regTwo!19538 r!17423))) b!3071136))

(assert (= (and b!3070483 ((_ is Union!9513) (regTwo!19538 r!17423))) b!3071137))

(check-sat (not bm!213289) (not b!3070950) (not bm!213263) (not bm!213267) (not d!856246) (not b!3070630) (not b!3070652) (not b!3070954) (not b!3070564) (not bm!213271) (not bm!213287) (not d!856190) (not b!3071123) (not b!3071133) (not b!3071125) (not b!3071121) (not bm!213281) (not b!3070651) (not bm!213283) (not bm!213274) (not d!856212) (not bm!213246) (not b!3070656) (not b!3070661) (not b!3070629) (not b!3071135) (not b!3071033) (not bm!213284) (not bm!213245) (not b!3071128) (not b!3071116) (not b!3071088) (not b!3071127) (not bm!213194) (not b!3071057) (not d!856236) (not d!856208) (not b!3070628) (not bm!213261) (not bm!213183) (not b!3071079) (not b!3070666) (not bm!213244) (not b!3070569) (not d!856210) (not b!3070670) (not b!3071115) (not b!3070945) (not b!3071131) (not b!3070568) (not b!3070665) (not b!3070955) (not bm!213269) (not b!3070937) (not bm!213270) (not b!3070570) tp_is_empty!16589 (not bm!213195) (not bm!213262) (not b!3070671) (not b!3070658) (not b!3070559) (not bm!213264) (not d!856238) (not d!856206) (not b!3070657) (not b!3071137) (not bm!213286) (not d!856248) (not d!856198) (not b!3070929) (not b!3070619) (not b!3071114) (not b!3071032) (not b!3071129) (not b!3070623) (not b!3070647) (not b!3071097) (not b!3070672) (not b!3070563) (not b!3070624) (not b!3071132) (not b!3070949) (not b!3071136) (not b!3070956) (not b!3071124) (not bm!213187) (not b!3071008) (not bm!213268))
(check-sat)
