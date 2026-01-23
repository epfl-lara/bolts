; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286332 () Bool)

(assert start!286332)

(declare-fun b!2952756 () Bool)

(assert (=> b!2952756 true))

(assert (=> b!2952756 true))

(assert (=> b!2952756 true))

(declare-fun lambda!109874 () Int)

(declare-fun lambda!109873 () Int)

(assert (=> b!2952756 (not (= lambda!109874 lambda!109873))))

(assert (=> b!2952756 true))

(assert (=> b!2952756 true))

(assert (=> b!2952756 true))

(declare-fun b!2952749 () Bool)

(declare-fun e!1859507 () Bool)

(declare-fun tp!943527 () Bool)

(assert (=> b!2952749 (= e!1859507 tp!943527)))

(declare-fun b!2952750 () Bool)

(declare-fun res!1218310 () Bool)

(declare-fun e!1859508 () Bool)

(assert (=> b!2952750 (=> res!1218310 e!1859508)))

(declare-datatypes ((C!18504 0))(
  ( (C!18505 (val!11288 Int)) )
))
(declare-datatypes ((List!35024 0))(
  ( (Nil!34900) (Cons!34900 (h!40320 C!18504) (t!234089 List!35024)) )
))
(declare-fun s!11993 () List!35024)

(declare-fun isEmpty!19168 (List!35024) Bool)

(assert (=> b!2952750 (= res!1218310 (isEmpty!19168 s!11993))))

(declare-fun res!1218311 () Bool)

(declare-fun e!1859511 () Bool)

(assert (=> start!286332 (=> (not res!1218311) (not e!1859511))))

(declare-datatypes ((Regex!9159 0))(
  ( (ElementMatch!9159 (c!483479 C!18504)) (Concat!14480 (regOne!18830 Regex!9159) (regTwo!18830 Regex!9159)) (EmptyExpr!9159) (Star!9159 (reg!9488 Regex!9159)) (EmptyLang!9159) (Union!9159 (regOne!18831 Regex!9159) (regTwo!18831 Regex!9159)) )
))
(declare-fun r!17423 () Regex!9159)

(declare-fun validRegex!3892 (Regex!9159) Bool)

(assert (=> start!286332 (= res!1218311 (validRegex!3892 r!17423))))

(assert (=> start!286332 e!1859511))

(assert (=> start!286332 e!1859507))

(declare-fun e!1859510 () Bool)

(assert (=> start!286332 e!1859510))

(declare-fun b!2952751 () Bool)

(declare-fun res!1218312 () Bool)

(declare-fun e!1859506 () Bool)

(assert (=> b!2952751 (=> res!1218312 e!1859506)))

(declare-fun lt!1032401 () Regex!9159)

(declare-fun isEmptyLang!281 (Regex!9159) Bool)

(assert (=> b!2952751 (= res!1218312 (isEmptyLang!281 lt!1032401))))

(declare-fun b!2952752 () Bool)

(declare-fun tp!943525 () Bool)

(declare-fun tp!943528 () Bool)

(assert (=> b!2952752 (= e!1859507 (and tp!943525 tp!943528))))

(declare-fun b!2952753 () Bool)

(assert (=> b!2952753 (= e!1859508 e!1859506)))

(declare-fun res!1218308 () Bool)

(assert (=> b!2952753 (=> res!1218308 e!1859506)))

(declare-fun lt!1032398 () Regex!9159)

(assert (=> b!2952753 (= res!1218308 (isEmptyLang!281 lt!1032398))))

(declare-fun simplify!164 (Regex!9159) Regex!9159)

(assert (=> b!2952753 (= lt!1032401 (simplify!164 (regTwo!18830 r!17423)))))

(assert (=> b!2952753 (= lt!1032398 (simplify!164 (regOne!18830 r!17423)))))

(declare-fun b!2952754 () Bool)

(declare-fun tp_is_empty!15881 () Bool)

(assert (=> b!2952754 (= e!1859507 tp_is_empty!15881)))

(declare-fun b!2952755 () Bool)

(declare-fun tp!943526 () Bool)

(declare-fun tp!943524 () Bool)

(assert (=> b!2952755 (= e!1859507 (and tp!943526 tp!943524))))

(declare-fun e!1859509 () Bool)

(assert (=> b!2952756 (= e!1859509 (validRegex!3892 lt!1032398))))

(declare-fun Exists!1491 (Int) Bool)

(assert (=> b!2952756 (= (Exists!1491 lambda!109873) (Exists!1491 lambda!109874))))

(declare-datatypes ((Unit!48697 0))(
  ( (Unit!48698) )
))
(declare-fun lt!1032403 () Unit!48697)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!512 (Regex!9159 Regex!9159 List!35024) Unit!48697)

(assert (=> b!2952756 (= lt!1032403 (lemmaExistCutMatchRandMatchRSpecEquivalent!512 lt!1032398 lt!1032401 s!11993))))

(declare-datatypes ((tuple2!33836 0))(
  ( (tuple2!33837 (_1!20050 List!35024) (_2!20050 List!35024)) )
))
(declare-datatypes ((Option!6650 0))(
  ( (None!6649) (Some!6649 (v!34783 tuple2!33836)) )
))
(declare-fun isDefined!5201 (Option!6650) Bool)

(declare-fun findConcatSeparation!1044 (Regex!9159 Regex!9159 List!35024 List!35024 List!35024) Option!6650)

(assert (=> b!2952756 (= (isDefined!5201 (findConcatSeparation!1044 lt!1032398 lt!1032401 Nil!34900 s!11993 s!11993)) (Exists!1491 lambda!109873))))

(declare-fun lt!1032404 () Unit!48697)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!822 (Regex!9159 Regex!9159 List!35024) Unit!48697)

(assert (=> b!2952756 (= lt!1032404 (lemmaFindConcatSeparationEquivalentToExists!822 lt!1032398 lt!1032401 s!11993))))

(declare-fun lt!1032400 () Regex!9159)

(declare-fun matchRSpec!1296 (Regex!9159 List!35024) Bool)

(assert (=> b!2952756 (matchRSpec!1296 lt!1032400 s!11993)))

(declare-fun lt!1032405 () Unit!48697)

(declare-fun mainMatchTheorem!1296 (Regex!9159 List!35024) Unit!48697)

(assert (=> b!2952756 (= lt!1032405 (mainMatchTheorem!1296 lt!1032400 s!11993))))

(declare-fun b!2952757 () Bool)

(assert (=> b!2952757 (= e!1859511 (not e!1859508))))

(declare-fun res!1218313 () Bool)

(assert (=> b!2952757 (=> res!1218313 e!1859508)))

(declare-fun lt!1032402 () Bool)

(get-info :version)

(assert (=> b!2952757 (= res!1218313 (or lt!1032402 (not ((_ is Concat!14480) r!17423))))))

(assert (=> b!2952757 (= lt!1032402 (matchRSpec!1296 r!17423 s!11993))))

(declare-fun matchR!4041 (Regex!9159 List!35024) Bool)

(assert (=> b!2952757 (= lt!1032402 (matchR!4041 r!17423 s!11993))))

(declare-fun lt!1032399 () Unit!48697)

(assert (=> b!2952757 (= lt!1032399 (mainMatchTheorem!1296 r!17423 s!11993))))

(declare-fun b!2952758 () Bool)

(declare-fun res!1218307 () Bool)

(assert (=> b!2952758 (=> res!1218307 e!1859506)))

(declare-fun isEmptyExpr!362 (Regex!9159) Bool)

(assert (=> b!2952758 (= res!1218307 (isEmptyExpr!362 lt!1032401))))

(declare-fun b!2952759 () Bool)

(declare-fun res!1218314 () Bool)

(assert (=> b!2952759 (=> res!1218314 e!1859506)))

(assert (=> b!2952759 (= res!1218314 (isEmptyExpr!362 lt!1032398))))

(declare-fun b!2952760 () Bool)

(assert (=> b!2952760 (= e!1859506 e!1859509)))

(declare-fun res!1218309 () Bool)

(assert (=> b!2952760 (=> res!1218309 e!1859509)))

(assert (=> b!2952760 (= res!1218309 (not (matchR!4041 lt!1032400 s!11993)))))

(assert (=> b!2952760 (= lt!1032400 (Concat!14480 lt!1032398 lt!1032401))))

(declare-fun b!2952761 () Bool)

(declare-fun tp!943529 () Bool)

(assert (=> b!2952761 (= e!1859510 (and tp_is_empty!15881 tp!943529))))

(assert (= (and start!286332 res!1218311) b!2952757))

(assert (= (and b!2952757 (not res!1218313)) b!2952750))

(assert (= (and b!2952750 (not res!1218310)) b!2952753))

(assert (= (and b!2952753 (not res!1218308)) b!2952751))

(assert (= (and b!2952751 (not res!1218312)) b!2952759))

(assert (= (and b!2952759 (not res!1218314)) b!2952758))

(assert (= (and b!2952758 (not res!1218307)) b!2952760))

(assert (= (and b!2952760 (not res!1218309)) b!2952756))

(assert (= (and start!286332 ((_ is ElementMatch!9159) r!17423)) b!2952754))

(assert (= (and start!286332 ((_ is Concat!14480) r!17423)) b!2952752))

(assert (= (and start!286332 ((_ is Star!9159) r!17423)) b!2952749))

(assert (= (and start!286332 ((_ is Union!9159) r!17423)) b!2952755))

(assert (= (and start!286332 ((_ is Cons!34900) s!11993)) b!2952761))

(declare-fun m!3330499 () Bool)

(assert (=> b!2952750 m!3330499))

(declare-fun m!3330501 () Bool)

(assert (=> b!2952757 m!3330501))

(declare-fun m!3330503 () Bool)

(assert (=> b!2952757 m!3330503))

(declare-fun m!3330505 () Bool)

(assert (=> b!2952757 m!3330505))

(declare-fun m!3330507 () Bool)

(assert (=> start!286332 m!3330507))

(declare-fun m!3330509 () Bool)

(assert (=> b!2952756 m!3330509))

(declare-fun m!3330511 () Bool)

(assert (=> b!2952756 m!3330511))

(declare-fun m!3330513 () Bool)

(assert (=> b!2952756 m!3330513))

(declare-fun m!3330515 () Bool)

(assert (=> b!2952756 m!3330515))

(declare-fun m!3330517 () Bool)

(assert (=> b!2952756 m!3330517))

(declare-fun m!3330519 () Bool)

(assert (=> b!2952756 m!3330519))

(assert (=> b!2952756 m!3330511))

(assert (=> b!2952756 m!3330509))

(declare-fun m!3330521 () Bool)

(assert (=> b!2952756 m!3330521))

(declare-fun m!3330523 () Bool)

(assert (=> b!2952756 m!3330523))

(declare-fun m!3330525 () Bool)

(assert (=> b!2952756 m!3330525))

(declare-fun m!3330527 () Bool)

(assert (=> b!2952760 m!3330527))

(declare-fun m!3330529 () Bool)

(assert (=> b!2952758 m!3330529))

(declare-fun m!3330531 () Bool)

(assert (=> b!2952753 m!3330531))

(declare-fun m!3330533 () Bool)

(assert (=> b!2952753 m!3330533))

(declare-fun m!3330535 () Bool)

(assert (=> b!2952753 m!3330535))

(declare-fun m!3330537 () Bool)

(assert (=> b!2952759 m!3330537))

(declare-fun m!3330539 () Bool)

(assert (=> b!2952751 m!3330539))

(check-sat (not b!2952755) tp_is_empty!15881 (not b!2952751) (not b!2952749) (not b!2952756) (not b!2952757) (not b!2952752) (not b!2952753) (not b!2952759) (not b!2952761) (not b!2952758) (not b!2952760) (not start!286332) (not b!2952750))
(check-sat)
(get-model)

(declare-fun d!841213 () Bool)

(assert (=> d!841213 (= (isEmptyExpr!362 lt!1032398) ((_ is EmptyExpr!9159) lt!1032398))))

(assert (=> b!2952759 d!841213))

(declare-fun d!841215 () Bool)

(assert (=> d!841215 (= (isEmptyLang!281 lt!1032398) ((_ is EmptyLang!9159) lt!1032398))))

(assert (=> b!2952753 d!841215))

(declare-fun c!483572 () Bool)

(declare-fun lt!1032446 () Regex!9159)

(declare-fun bm!195345 () Bool)

(declare-fun call!195356 () Bool)

(declare-fun lt!1032447 () Regex!9159)

(assert (=> bm!195345 (= call!195356 (isEmptyExpr!362 (ite c!483572 lt!1032447 lt!1032446)))))

(declare-fun b!2953008 () Bool)

(declare-fun e!1859659 () Regex!9159)

(assert (=> b!2953008 (= e!1859659 EmptyExpr!9159)))

(declare-fun b!2953009 () Bool)

(declare-fun e!1859660 () Regex!9159)

(assert (=> b!2953009 (= e!1859659 e!1859660)))

(assert (=> b!2953009 (= c!483572 ((_ is Star!9159) (regTwo!18830 r!17423)))))

(declare-fun bm!195346 () Bool)

(declare-fun lt!1032449 () Regex!9159)

(declare-fun c!483579 () Bool)

(declare-fun call!195355 () Bool)

(assert (=> bm!195346 (= call!195355 (isEmptyLang!281 (ite c!483579 lt!1032449 lt!1032446)))))

(declare-fun b!2953012 () Bool)

(declare-fun e!1859665 () Regex!9159)

(assert (=> b!2953012 (= e!1859665 (regTwo!18830 r!17423))))

(declare-fun b!2953013 () Bool)

(declare-fun e!1859654 () Regex!9159)

(declare-fun lt!1032450 () Regex!9159)

(assert (=> b!2953013 (= e!1859654 (Union!9159 lt!1032449 lt!1032450))))

(declare-fun b!2953014 () Bool)

(declare-fun e!1859656 () Bool)

(declare-fun lt!1032445 () Regex!9159)

(declare-fun nullable!2915 (Regex!9159) Bool)

(assert (=> b!2953014 (= e!1859656 (= (nullable!2915 lt!1032445) (nullable!2915 (regTwo!18830 r!17423))))))

(declare-fun b!2953015 () Bool)

(declare-fun c!483571 () Bool)

(declare-fun e!1859651 () Bool)

(assert (=> b!2953015 (= c!483571 e!1859651)))

(declare-fun res!1218381 () Bool)

(assert (=> b!2953015 (=> res!1218381 e!1859651)))

(declare-fun call!195352 () Bool)

(assert (=> b!2953015 (= res!1218381 call!195352)))

(declare-fun call!195353 () Regex!9159)

(assert (=> b!2953015 (= lt!1032447 call!195353)))

(declare-fun e!1859649 () Regex!9159)

(assert (=> b!2953015 (= e!1859660 e!1859649)))

(declare-fun bm!195347 () Bool)

(declare-fun call!195350 () Bool)

(assert (=> bm!195347 (= call!195350 call!195352)))

(declare-fun b!2953016 () Bool)

(declare-fun e!1859653 () Regex!9159)

(declare-fun lt!1032448 () Regex!9159)

(assert (=> b!2953016 (= e!1859653 (Concat!14480 lt!1032448 lt!1032446))))

(declare-fun b!2953017 () Bool)

(assert (=> b!2953017 (= e!1859654 lt!1032449)))

(declare-fun bm!195348 () Bool)

(declare-fun call!195351 () Regex!9159)

(assert (=> bm!195348 (= call!195351 call!195353)))

(declare-fun b!2953018 () Bool)

(declare-fun e!1859658 () Regex!9159)

(declare-fun e!1859661 () Regex!9159)

(assert (=> b!2953018 (= e!1859658 e!1859661)))

(declare-fun call!195354 () Regex!9159)

(assert (=> b!2953018 (= lt!1032448 call!195354)))

(assert (=> b!2953018 (= lt!1032446 call!195351)))

(declare-fun res!1218379 () Bool)

(assert (=> b!2953018 (= res!1218379 call!195350)))

(declare-fun e!1859650 () Bool)

(assert (=> b!2953018 (=> res!1218379 e!1859650)))

(declare-fun c!483569 () Bool)

(assert (=> b!2953018 (= c!483569 e!1859650)))

(declare-fun b!2953019 () Bool)

(declare-fun e!1859657 () Regex!9159)

(assert (=> b!2953019 (= e!1859657 e!1859665)))

(declare-fun c!483574 () Bool)

(assert (=> b!2953019 (= c!483574 ((_ is ElementMatch!9159) (regTwo!18830 r!17423)))))

(declare-fun b!2953020 () Bool)

(assert (=> b!2953020 (= e!1859649 EmptyExpr!9159)))

(declare-fun b!2953021 () Bool)

(declare-fun c!483570 () Bool)

(assert (=> b!2953021 (= c!483570 (isEmptyExpr!362 lt!1032448))))

(declare-fun e!1859663 () Regex!9159)

(assert (=> b!2953021 (= e!1859661 e!1859663)))

(declare-fun bm!195349 () Bool)

(assert (=> bm!195349 (= call!195353 (simplify!164 (ite c!483572 (reg!9488 (regTwo!18830 r!17423)) (ite c!483579 (regOne!18831 (regTwo!18830 r!17423)) (regTwo!18830 (regTwo!18830 r!17423))))))))

(declare-fun b!2953022 () Bool)

(assert (=> b!2953022 (= e!1859651 call!195356)))

(declare-fun b!2953023 () Bool)

(assert (=> b!2953023 (= e!1859663 e!1859653)))

(declare-fun c!483577 () Bool)

(assert (=> b!2953023 (= c!483577 call!195356)))

(declare-fun bm!195350 () Bool)

(assert (=> bm!195350 (= call!195354 (simplify!164 (ite c!483579 (regTwo!18831 (regTwo!18830 r!17423)) (regOne!18830 (regTwo!18830 r!17423)))))))

(declare-fun b!2953024 () Bool)

(assert (=> b!2953024 (= e!1859661 EmptyLang!9159)))

(declare-fun b!2953029 () Bool)

(assert (=> b!2953029 (= e!1859657 EmptyLang!9159)))

(declare-fun b!2953030 () Bool)

(declare-fun e!1859666 () Regex!9159)

(assert (=> b!2953030 (= e!1859658 e!1859666)))

(assert (=> b!2953030 (= lt!1032449 call!195351)))

(assert (=> b!2953030 (= lt!1032450 call!195354)))

(declare-fun c!483565 () Bool)

(assert (=> b!2953030 (= c!483565 call!195355)))

(declare-fun b!2953031 () Bool)

(declare-fun c!483568 () Bool)

(assert (=> b!2953031 (= c!483568 call!195350)))

(assert (=> b!2953031 (= e!1859666 e!1859654)))

(declare-fun b!2953032 () Bool)

(declare-fun c!483578 () Bool)

(assert (=> b!2953032 (= c!483578 ((_ is EmptyExpr!9159) (regTwo!18830 r!17423)))))

(assert (=> b!2953032 (= e!1859665 e!1859659)))

(declare-fun b!2953033 () Bool)

(assert (=> b!2953033 (= e!1859649 (Star!9159 lt!1032447))))

(declare-fun b!2953034 () Bool)

(assert (=> b!2953034 (= e!1859663 lt!1032446)))

(declare-fun bm!195351 () Bool)

(assert (=> bm!195351 (= call!195352 (isEmptyLang!281 (ite c!483572 lt!1032447 (ite c!483579 lt!1032450 lt!1032448))))))

(declare-fun b!2953035 () Bool)

(assert (=> b!2953035 (= e!1859650 call!195355)))

(declare-fun b!2953036 () Bool)

(assert (=> b!2953036 (= c!483579 ((_ is Union!9159) (regTwo!18830 r!17423)))))

(assert (=> b!2953036 (= e!1859660 e!1859658)))

(declare-fun b!2953037 () Bool)

(assert (=> b!2953037 (= e!1859653 lt!1032448)))

(declare-fun b!2953038 () Bool)

(assert (=> b!2953038 (= e!1859666 lt!1032450)))

(declare-fun d!841217 () Bool)

(assert (=> d!841217 e!1859656))

(declare-fun res!1218380 () Bool)

(assert (=> d!841217 (=> (not res!1218380) (not e!1859656))))

(assert (=> d!841217 (= res!1218380 (validRegex!3892 lt!1032445))))

(assert (=> d!841217 (= lt!1032445 e!1859657)))

(declare-fun c!483573 () Bool)

(assert (=> d!841217 (= c!483573 ((_ is EmptyLang!9159) (regTwo!18830 r!17423)))))

(assert (=> d!841217 (validRegex!3892 (regTwo!18830 r!17423))))

(assert (=> d!841217 (= (simplify!164 (regTwo!18830 r!17423)) lt!1032445)))

(assert (= (and d!841217 c!483573) b!2953029))

(assert (= (and d!841217 (not c!483573)) b!2953019))

(assert (= (and b!2953019 c!483574) b!2953012))

(assert (= (and b!2953019 (not c!483574)) b!2953032))

(assert (= (and b!2953032 c!483578) b!2953008))

(assert (= (and b!2953032 (not c!483578)) b!2953009))

(assert (= (and b!2953009 c!483572) b!2953015))

(assert (= (and b!2953009 (not c!483572)) b!2953036))

(assert (= (and b!2953015 (not res!1218381)) b!2953022))

(assert (= (and b!2953015 c!483571) b!2953020))

(assert (= (and b!2953015 (not c!483571)) b!2953033))

(assert (= (and b!2953036 c!483579) b!2953030))

(assert (= (and b!2953036 (not c!483579)) b!2953018))

(assert (= (and b!2953030 c!483565) b!2953038))

(assert (= (and b!2953030 (not c!483565)) b!2953031))

(assert (= (and b!2953031 c!483568) b!2953017))

(assert (= (and b!2953031 (not c!483568)) b!2953013))

(assert (= (and b!2953018 (not res!1218379)) b!2953035))

(assert (= (and b!2953018 c!483569) b!2953024))

(assert (= (and b!2953018 (not c!483569)) b!2953021))

(assert (= (and b!2953021 c!483570) b!2953034))

(assert (= (and b!2953021 (not c!483570)) b!2953023))

(assert (= (and b!2953023 c!483577) b!2953037))

(assert (= (and b!2953023 (not c!483577)) b!2953016))

(assert (= (or b!2953030 b!2953018) bm!195348))

(assert (= (or b!2953030 b!2953018) bm!195350))

(assert (= (or b!2953030 b!2953035) bm!195346))

(assert (= (or b!2953031 b!2953018) bm!195347))

(assert (= (or b!2953022 b!2953023) bm!195345))

(assert (= (or b!2953015 bm!195348) bm!195349))

(assert (= (or b!2953015 bm!195347) bm!195351))

(assert (= (and d!841217 res!1218380) b!2953014))

(declare-fun m!3330613 () Bool)

(assert (=> d!841217 m!3330613))

(declare-fun m!3330615 () Bool)

(assert (=> d!841217 m!3330615))

(declare-fun m!3330617 () Bool)

(assert (=> bm!195346 m!3330617))

(declare-fun m!3330619 () Bool)

(assert (=> bm!195345 m!3330619))

(declare-fun m!3330621 () Bool)

(assert (=> bm!195350 m!3330621))

(declare-fun m!3330623 () Bool)

(assert (=> b!2953021 m!3330623))

(declare-fun m!3330625 () Bool)

(assert (=> bm!195351 m!3330625))

(declare-fun m!3330627 () Bool)

(assert (=> bm!195349 m!3330627))

(declare-fun m!3330629 () Bool)

(assert (=> b!2953014 m!3330629))

(declare-fun m!3330631 () Bool)

(assert (=> b!2953014 m!3330631))

(assert (=> b!2952753 d!841217))

(declare-fun c!483587 () Bool)

(declare-fun lt!1032452 () Regex!9159)

(declare-fun call!195363 () Bool)

(declare-fun lt!1032453 () Regex!9159)

(declare-fun bm!195352 () Bool)

(assert (=> bm!195352 (= call!195363 (isEmptyExpr!362 (ite c!483587 lt!1032453 lt!1032452)))))

(declare-fun b!2953051 () Bool)

(declare-fun e!1859685 () Regex!9159)

(assert (=> b!2953051 (= e!1859685 EmptyExpr!9159)))

(declare-fun b!2953052 () Bool)

(declare-fun e!1859686 () Regex!9159)

(assert (=> b!2953052 (= e!1859685 e!1859686)))

(assert (=> b!2953052 (= c!483587 ((_ is Star!9159) (regOne!18830 r!17423)))))

(declare-fun bm!195353 () Bool)

(declare-fun lt!1032455 () Regex!9159)

(declare-fun c!483592 () Bool)

(declare-fun call!195362 () Bool)

(assert (=> bm!195353 (= call!195362 (isEmptyLang!281 (ite c!483592 lt!1032455 lt!1032452)))))

(declare-fun b!2953053 () Bool)

(declare-fun e!1859689 () Regex!9159)

(assert (=> b!2953053 (= e!1859689 (regOne!18830 r!17423))))

(declare-fun b!2953054 () Bool)

(declare-fun e!1859681 () Regex!9159)

(declare-fun lt!1032456 () Regex!9159)

(assert (=> b!2953054 (= e!1859681 (Union!9159 lt!1032455 lt!1032456))))

(declare-fun b!2953055 () Bool)

(declare-fun e!1859682 () Bool)

(declare-fun lt!1032451 () Regex!9159)

(assert (=> b!2953055 (= e!1859682 (= (nullable!2915 lt!1032451) (nullable!2915 (regOne!18830 r!17423))))))

(declare-fun b!2953056 () Bool)

(declare-fun c!483586 () Bool)

(declare-fun e!1859679 () Bool)

(assert (=> b!2953056 (= c!483586 e!1859679)))

(declare-fun res!1218398 () Bool)

(assert (=> b!2953056 (=> res!1218398 e!1859679)))

(declare-fun call!195359 () Bool)

(assert (=> b!2953056 (= res!1218398 call!195359)))

(declare-fun call!195360 () Regex!9159)

(assert (=> b!2953056 (= lt!1032453 call!195360)))

(declare-fun e!1859677 () Regex!9159)

(assert (=> b!2953056 (= e!1859686 e!1859677)))

(declare-fun bm!195354 () Bool)

(declare-fun call!195357 () Bool)

(assert (=> bm!195354 (= call!195357 call!195359)))

(declare-fun b!2953057 () Bool)

(declare-fun e!1859680 () Regex!9159)

(declare-fun lt!1032454 () Regex!9159)

(assert (=> b!2953057 (= e!1859680 (Concat!14480 lt!1032454 lt!1032452))))

(declare-fun b!2953058 () Bool)

(assert (=> b!2953058 (= e!1859681 lt!1032455)))

(declare-fun bm!195355 () Bool)

(declare-fun call!195358 () Regex!9159)

(assert (=> bm!195355 (= call!195358 call!195360)))

(declare-fun b!2953059 () Bool)

(declare-fun e!1859684 () Regex!9159)

(declare-fun e!1859687 () Regex!9159)

(assert (=> b!2953059 (= e!1859684 e!1859687)))

(declare-fun call!195361 () Regex!9159)

(assert (=> b!2953059 (= lt!1032454 call!195361)))

(assert (=> b!2953059 (= lt!1032452 call!195358)))

(declare-fun res!1218396 () Bool)

(assert (=> b!2953059 (= res!1218396 call!195357)))

(declare-fun e!1859678 () Bool)

(assert (=> b!2953059 (=> res!1218396 e!1859678)))

(declare-fun c!483584 () Bool)

(assert (=> b!2953059 (= c!483584 e!1859678)))

(declare-fun b!2953060 () Bool)

(declare-fun e!1859683 () Regex!9159)

(assert (=> b!2953060 (= e!1859683 e!1859689)))

(declare-fun c!483589 () Bool)

(assert (=> b!2953060 (= c!483589 ((_ is ElementMatch!9159) (regOne!18830 r!17423)))))

(declare-fun b!2953061 () Bool)

(assert (=> b!2953061 (= e!1859677 EmptyExpr!9159)))

(declare-fun b!2953062 () Bool)

(declare-fun c!483585 () Bool)

(assert (=> b!2953062 (= c!483585 (isEmptyExpr!362 lt!1032454))))

(declare-fun e!1859688 () Regex!9159)

(assert (=> b!2953062 (= e!1859687 e!1859688)))

(declare-fun bm!195356 () Bool)

(assert (=> bm!195356 (= call!195360 (simplify!164 (ite c!483587 (reg!9488 (regOne!18830 r!17423)) (ite c!483592 (regOne!18831 (regOne!18830 r!17423)) (regTwo!18830 (regOne!18830 r!17423))))))))

(declare-fun b!2953063 () Bool)

(assert (=> b!2953063 (= e!1859679 call!195363)))

(declare-fun b!2953064 () Bool)

(assert (=> b!2953064 (= e!1859688 e!1859680)))

(declare-fun c!483590 () Bool)

(assert (=> b!2953064 (= c!483590 call!195363)))

(declare-fun bm!195357 () Bool)

(assert (=> bm!195357 (= call!195361 (simplify!164 (ite c!483592 (regTwo!18831 (regOne!18830 r!17423)) (regOne!18830 (regOne!18830 r!17423)))))))

(declare-fun b!2953065 () Bool)

(assert (=> b!2953065 (= e!1859687 EmptyLang!9159)))

(declare-fun b!2953066 () Bool)

(assert (=> b!2953066 (= e!1859683 EmptyLang!9159)))

(declare-fun b!2953067 () Bool)

(declare-fun e!1859690 () Regex!9159)

(assert (=> b!2953067 (= e!1859684 e!1859690)))

(assert (=> b!2953067 (= lt!1032455 call!195358)))

(assert (=> b!2953067 (= lt!1032456 call!195361)))

(declare-fun c!483582 () Bool)

(assert (=> b!2953067 (= c!483582 call!195362)))

(declare-fun b!2953068 () Bool)

(declare-fun c!483583 () Bool)

(assert (=> b!2953068 (= c!483583 call!195357)))

(assert (=> b!2953068 (= e!1859690 e!1859681)))

(declare-fun b!2953069 () Bool)

(declare-fun c!483591 () Bool)

(assert (=> b!2953069 (= c!483591 ((_ is EmptyExpr!9159) (regOne!18830 r!17423)))))

(assert (=> b!2953069 (= e!1859689 e!1859685)))

(declare-fun b!2953070 () Bool)

(assert (=> b!2953070 (= e!1859677 (Star!9159 lt!1032453))))

(declare-fun b!2953071 () Bool)

(assert (=> b!2953071 (= e!1859688 lt!1032452)))

(declare-fun bm!195358 () Bool)

(assert (=> bm!195358 (= call!195359 (isEmptyLang!281 (ite c!483587 lt!1032453 (ite c!483592 lt!1032456 lt!1032454))))))

(declare-fun b!2953072 () Bool)

(assert (=> b!2953072 (= e!1859678 call!195362)))

(declare-fun b!2953073 () Bool)

(assert (=> b!2953073 (= c!483592 ((_ is Union!9159) (regOne!18830 r!17423)))))

(assert (=> b!2953073 (= e!1859686 e!1859684)))

(declare-fun b!2953074 () Bool)

(assert (=> b!2953074 (= e!1859680 lt!1032454)))

(declare-fun b!2953075 () Bool)

(assert (=> b!2953075 (= e!1859690 lt!1032456)))

(declare-fun d!841239 () Bool)

(assert (=> d!841239 e!1859682))

(declare-fun res!1218397 () Bool)

(assert (=> d!841239 (=> (not res!1218397) (not e!1859682))))

(assert (=> d!841239 (= res!1218397 (validRegex!3892 lt!1032451))))

(assert (=> d!841239 (= lt!1032451 e!1859683)))

(declare-fun c!483588 () Bool)

(assert (=> d!841239 (= c!483588 ((_ is EmptyLang!9159) (regOne!18830 r!17423)))))

(assert (=> d!841239 (validRegex!3892 (regOne!18830 r!17423))))

(assert (=> d!841239 (= (simplify!164 (regOne!18830 r!17423)) lt!1032451)))

(assert (= (and d!841239 c!483588) b!2953066))

(assert (= (and d!841239 (not c!483588)) b!2953060))

(assert (= (and b!2953060 c!483589) b!2953053))

(assert (= (and b!2953060 (not c!483589)) b!2953069))

(assert (= (and b!2953069 c!483591) b!2953051))

(assert (= (and b!2953069 (not c!483591)) b!2953052))

(assert (= (and b!2953052 c!483587) b!2953056))

(assert (= (and b!2953052 (not c!483587)) b!2953073))

(assert (= (and b!2953056 (not res!1218398)) b!2953063))

(assert (= (and b!2953056 c!483586) b!2953061))

(assert (= (and b!2953056 (not c!483586)) b!2953070))

(assert (= (and b!2953073 c!483592) b!2953067))

(assert (= (and b!2953073 (not c!483592)) b!2953059))

(assert (= (and b!2953067 c!483582) b!2953075))

(assert (= (and b!2953067 (not c!483582)) b!2953068))

(assert (= (and b!2953068 c!483583) b!2953058))

(assert (= (and b!2953068 (not c!483583)) b!2953054))

(assert (= (and b!2953059 (not res!1218396)) b!2953072))

(assert (= (and b!2953059 c!483584) b!2953065))

(assert (= (and b!2953059 (not c!483584)) b!2953062))

(assert (= (and b!2953062 c!483585) b!2953071))

(assert (= (and b!2953062 (not c!483585)) b!2953064))

(assert (= (and b!2953064 c!483590) b!2953074))

(assert (= (and b!2953064 (not c!483590)) b!2953057))

(assert (= (or b!2953067 b!2953059) bm!195355))

(assert (= (or b!2953067 b!2953059) bm!195357))

(assert (= (or b!2953067 b!2953072) bm!195353))

(assert (= (or b!2953068 b!2953059) bm!195354))

(assert (= (or b!2953063 b!2953064) bm!195352))

(assert (= (or b!2953056 bm!195355) bm!195356))

(assert (= (or b!2953056 bm!195354) bm!195358))

(assert (= (and d!841239 res!1218397) b!2953055))

(declare-fun m!3330633 () Bool)

(assert (=> d!841239 m!3330633))

(declare-fun m!3330635 () Bool)

(assert (=> d!841239 m!3330635))

(declare-fun m!3330637 () Bool)

(assert (=> bm!195353 m!3330637))

(declare-fun m!3330639 () Bool)

(assert (=> bm!195352 m!3330639))

(declare-fun m!3330641 () Bool)

(assert (=> bm!195357 m!3330641))

(declare-fun m!3330643 () Bool)

(assert (=> b!2953062 m!3330643))

(declare-fun m!3330645 () Bool)

(assert (=> bm!195358 m!3330645))

(declare-fun m!3330647 () Bool)

(assert (=> bm!195356 m!3330647))

(declare-fun m!3330649 () Bool)

(assert (=> b!2953055 m!3330649))

(declare-fun m!3330651 () Bool)

(assert (=> b!2953055 m!3330651))

(assert (=> b!2952753 d!841239))

(declare-fun d!841241 () Bool)

(assert (=> d!841241 (= (isEmptyExpr!362 lt!1032401) ((_ is EmptyExpr!9159) lt!1032401))))

(assert (=> b!2952758 d!841241))

(declare-fun bs!525861 () Bool)

(declare-fun b!2953140 () Bool)

(assert (= bs!525861 (and b!2953140 b!2952756)))

(declare-fun lambda!109894 () Int)

(assert (=> bs!525861 (not (= lambda!109894 lambda!109873))))

(assert (=> bs!525861 (not (= lambda!109894 lambda!109874))))

(assert (=> b!2953140 true))

(assert (=> b!2953140 true))

(declare-fun bs!525862 () Bool)

(declare-fun b!2953137 () Bool)

(assert (= bs!525862 (and b!2953137 b!2952756)))

(declare-fun lambda!109895 () Int)

(assert (=> bs!525862 (not (= lambda!109895 lambda!109873))))

(assert (=> bs!525862 (= (and (= (regOne!18830 r!17423) lt!1032398) (= (regTwo!18830 r!17423) lt!1032401)) (= lambda!109895 lambda!109874))))

(declare-fun bs!525863 () Bool)

(assert (= bs!525863 (and b!2953137 b!2953140)))

(assert (=> bs!525863 (not (= lambda!109895 lambda!109894))))

(assert (=> b!2953137 true))

(assert (=> b!2953137 true))

(declare-fun b!2953131 () Bool)

(declare-fun c!483608 () Bool)

(assert (=> b!2953131 (= c!483608 ((_ is Union!9159) r!17423))))

(declare-fun e!1859726 () Bool)

(declare-fun e!1859723 () Bool)

(assert (=> b!2953131 (= e!1859726 e!1859723)))

(declare-fun b!2953132 () Bool)

(declare-fun e!1859722 () Bool)

(assert (=> b!2953132 (= e!1859723 e!1859722)))

(declare-fun res!1218431 () Bool)

(assert (=> b!2953132 (= res!1218431 (matchRSpec!1296 (regOne!18831 r!17423) s!11993))))

(assert (=> b!2953132 (=> res!1218431 e!1859722)))

(declare-fun b!2953133 () Bool)

(declare-fun e!1859728 () Bool)

(assert (=> b!2953133 (= e!1859723 e!1859728)))

(declare-fun c!483607 () Bool)

(assert (=> b!2953133 (= c!483607 ((_ is Star!9159) r!17423))))

(declare-fun b!2953134 () Bool)

(assert (=> b!2953134 (= e!1859726 (= s!11993 (Cons!34900 (c!483479 r!17423) Nil!34900)))))

(declare-fun b!2953135 () Bool)

(declare-fun e!1859724 () Bool)

(declare-fun call!195375 () Bool)

(assert (=> b!2953135 (= e!1859724 call!195375)))

(declare-fun b!2953136 () Bool)

(assert (=> b!2953136 (= e!1859722 (matchRSpec!1296 (regTwo!18831 r!17423) s!11993))))

(declare-fun call!195374 () Bool)

(assert (=> b!2953137 (= e!1859728 call!195374)))

(declare-fun b!2953138 () Bool)

(declare-fun c!483605 () Bool)

(assert (=> b!2953138 (= c!483605 ((_ is ElementMatch!9159) r!17423))))

(declare-fun e!1859727 () Bool)

(assert (=> b!2953138 (= e!1859727 e!1859726)))

(declare-fun b!2953139 () Bool)

(declare-fun res!1218432 () Bool)

(declare-fun e!1859725 () Bool)

(assert (=> b!2953139 (=> res!1218432 e!1859725)))

(assert (=> b!2953139 (= res!1218432 call!195375)))

(assert (=> b!2953139 (= e!1859728 e!1859725)))

(assert (=> b!2953140 (= e!1859725 call!195374)))

(declare-fun b!2953141 () Bool)

(assert (=> b!2953141 (= e!1859724 e!1859727)))

(declare-fun res!1218430 () Bool)

(assert (=> b!2953141 (= res!1218430 (not ((_ is EmptyLang!9159) r!17423)))))

(assert (=> b!2953141 (=> (not res!1218430) (not e!1859727))))

(declare-fun bm!195370 () Bool)

(assert (=> bm!195370 (= call!195374 (Exists!1491 (ite c!483607 lambda!109894 lambda!109895)))))

(declare-fun d!841243 () Bool)

(declare-fun c!483606 () Bool)

(assert (=> d!841243 (= c!483606 ((_ is EmptyExpr!9159) r!17423))))

(assert (=> d!841243 (= (matchRSpec!1296 r!17423 s!11993) e!1859724)))

(declare-fun bm!195369 () Bool)

(assert (=> bm!195369 (= call!195375 (isEmpty!19168 s!11993))))

(assert (= (and d!841243 c!483606) b!2953135))

(assert (= (and d!841243 (not c!483606)) b!2953141))

(assert (= (and b!2953141 res!1218430) b!2953138))

(assert (= (and b!2953138 c!483605) b!2953134))

(assert (= (and b!2953138 (not c!483605)) b!2953131))

(assert (= (and b!2953131 c!483608) b!2953132))

(assert (= (and b!2953131 (not c!483608)) b!2953133))

(assert (= (and b!2953132 (not res!1218431)) b!2953136))

(assert (= (and b!2953133 c!483607) b!2953139))

(assert (= (and b!2953133 (not c!483607)) b!2953137))

(assert (= (and b!2953139 (not res!1218432)) b!2953140))

(assert (= (or b!2953140 b!2953137) bm!195370))

(assert (= (or b!2953135 b!2953139) bm!195369))

(declare-fun m!3330671 () Bool)

(assert (=> b!2953132 m!3330671))

(declare-fun m!3330673 () Bool)

(assert (=> b!2953136 m!3330673))

(declare-fun m!3330675 () Bool)

(assert (=> bm!195370 m!3330675))

(assert (=> bm!195369 m!3330499))

(assert (=> b!2952757 d!841243))

(declare-fun b!2953257 () Bool)

(declare-fun e!1859784 () Bool)

(declare-fun lt!1032479 () Bool)

(declare-fun call!195381 () Bool)

(assert (=> b!2953257 (= e!1859784 (= lt!1032479 call!195381))))

(declare-fun b!2953258 () Bool)

(declare-fun e!1859783 () Bool)

(declare-fun derivativeStep!2517 (Regex!9159 C!18504) Regex!9159)

(declare-fun head!6576 (List!35024) C!18504)

(declare-fun tail!4802 (List!35024) List!35024)

(assert (=> b!2953258 (= e!1859783 (matchR!4041 (derivativeStep!2517 r!17423 (head!6576 s!11993)) (tail!4802 s!11993)))))

(declare-fun b!2953259 () Bool)

(declare-fun e!1859786 () Bool)

(assert (=> b!2953259 (= e!1859786 (not lt!1032479))))

(declare-fun b!2953260 () Bool)

(assert (=> b!2953260 (= e!1859784 e!1859786)))

(declare-fun c!483629 () Bool)

(assert (=> b!2953260 (= c!483629 ((_ is EmptyLang!9159) r!17423))))

(declare-fun b!2953261 () Bool)

(declare-fun e!1859787 () Bool)

(assert (=> b!2953261 (= e!1859787 (not (= (head!6576 s!11993) (c!483479 r!17423))))))

(declare-fun b!2953262 () Bool)

(declare-fun e!1859782 () Bool)

(assert (=> b!2953262 (= e!1859782 e!1859787)))

(declare-fun res!1218476 () Bool)

(assert (=> b!2953262 (=> res!1218476 e!1859787)))

(assert (=> b!2953262 (= res!1218476 call!195381)))

(declare-fun b!2953263 () Bool)

(declare-fun e!1859788 () Bool)

(assert (=> b!2953263 (= e!1859788 (= (head!6576 s!11993) (c!483479 r!17423)))))

(declare-fun b!2953264 () Bool)

(declare-fun e!1859785 () Bool)

(assert (=> b!2953264 (= e!1859785 e!1859782)))

(declare-fun res!1218480 () Bool)

(assert (=> b!2953264 (=> (not res!1218480) (not e!1859782))))

(assert (=> b!2953264 (= res!1218480 (not lt!1032479))))

(declare-fun b!2953265 () Bool)

(declare-fun res!1218475 () Bool)

(assert (=> b!2953265 (=> (not res!1218475) (not e!1859788))))

(assert (=> b!2953265 (= res!1218475 (isEmpty!19168 (tail!4802 s!11993)))))

(declare-fun d!841253 () Bool)

(assert (=> d!841253 e!1859784))

(declare-fun c!483630 () Bool)

(assert (=> d!841253 (= c!483630 ((_ is EmptyExpr!9159) r!17423))))

(assert (=> d!841253 (= lt!1032479 e!1859783)))

(declare-fun c!483628 () Bool)

(assert (=> d!841253 (= c!483628 (isEmpty!19168 s!11993))))

(assert (=> d!841253 (validRegex!3892 r!17423)))

(assert (=> d!841253 (= (matchR!4041 r!17423 s!11993) lt!1032479)))

(declare-fun b!2953266 () Bool)

(declare-fun res!1218479 () Bool)

(assert (=> b!2953266 (=> res!1218479 e!1859785)))

(assert (=> b!2953266 (= res!1218479 (not ((_ is ElementMatch!9159) r!17423)))))

(assert (=> b!2953266 (= e!1859786 e!1859785)))

(declare-fun b!2953267 () Bool)

(declare-fun res!1218481 () Bool)

(assert (=> b!2953267 (=> res!1218481 e!1859785)))

(assert (=> b!2953267 (= res!1218481 e!1859788)))

(declare-fun res!1218477 () Bool)

(assert (=> b!2953267 (=> (not res!1218477) (not e!1859788))))

(assert (=> b!2953267 (= res!1218477 lt!1032479)))

(declare-fun bm!195376 () Bool)

(assert (=> bm!195376 (= call!195381 (isEmpty!19168 s!11993))))

(declare-fun b!2953268 () Bool)

(declare-fun res!1218482 () Bool)

(assert (=> b!2953268 (=> (not res!1218482) (not e!1859788))))

(assert (=> b!2953268 (= res!1218482 (not call!195381))))

(declare-fun b!2953269 () Bool)

(assert (=> b!2953269 (= e!1859783 (nullable!2915 r!17423))))

(declare-fun b!2953270 () Bool)

(declare-fun res!1218478 () Bool)

(assert (=> b!2953270 (=> res!1218478 e!1859787)))

(assert (=> b!2953270 (= res!1218478 (not (isEmpty!19168 (tail!4802 s!11993))))))

(assert (= (and d!841253 c!483628) b!2953269))

(assert (= (and d!841253 (not c!483628)) b!2953258))

(assert (= (and d!841253 c!483630) b!2953257))

(assert (= (and d!841253 (not c!483630)) b!2953260))

(assert (= (and b!2953260 c!483629) b!2953259))

(assert (= (and b!2953260 (not c!483629)) b!2953266))

(assert (= (and b!2953266 (not res!1218479)) b!2953267))

(assert (= (and b!2953267 res!1218477) b!2953268))

(assert (= (and b!2953268 res!1218482) b!2953265))

(assert (= (and b!2953265 res!1218475) b!2953263))

(assert (= (and b!2953267 (not res!1218481)) b!2953264))

(assert (= (and b!2953264 res!1218480) b!2953262))

(assert (= (and b!2953262 (not res!1218476)) b!2953270))

(assert (= (and b!2953270 (not res!1218478)) b!2953261))

(assert (= (or b!2953257 b!2953268 b!2953262) bm!195376))

(declare-fun m!3330713 () Bool)

(assert (=> b!2953270 m!3330713))

(assert (=> b!2953270 m!3330713))

(declare-fun m!3330715 () Bool)

(assert (=> b!2953270 m!3330715))

(declare-fun m!3330717 () Bool)

(assert (=> b!2953269 m!3330717))

(declare-fun m!3330719 () Bool)

(assert (=> b!2953261 m!3330719))

(assert (=> bm!195376 m!3330499))

(assert (=> b!2953263 m!3330719))

(assert (=> b!2953258 m!3330719))

(assert (=> b!2953258 m!3330719))

(declare-fun m!3330721 () Bool)

(assert (=> b!2953258 m!3330721))

(assert (=> b!2953258 m!3330713))

(assert (=> b!2953258 m!3330721))

(assert (=> b!2953258 m!3330713))

(declare-fun m!3330723 () Bool)

(assert (=> b!2953258 m!3330723))

(assert (=> b!2953265 m!3330713))

(assert (=> b!2953265 m!3330713))

(assert (=> b!2953265 m!3330715))

(assert (=> d!841253 m!3330499))

(assert (=> d!841253 m!3330507))

(assert (=> b!2952757 d!841253))

(declare-fun d!841265 () Bool)

(assert (=> d!841265 (= (matchR!4041 r!17423 s!11993) (matchRSpec!1296 r!17423 s!11993))))

(declare-fun lt!1032482 () Unit!48697)

(declare-fun choose!17453 (Regex!9159 List!35024) Unit!48697)

(assert (=> d!841265 (= lt!1032482 (choose!17453 r!17423 s!11993))))

(assert (=> d!841265 (validRegex!3892 r!17423)))

(assert (=> d!841265 (= (mainMatchTheorem!1296 r!17423 s!11993) lt!1032482)))

(declare-fun bs!525876 () Bool)

(assert (= bs!525876 d!841265))

(assert (=> bs!525876 m!3330503))

(assert (=> bs!525876 m!3330501))

(declare-fun m!3330725 () Bool)

(assert (=> bs!525876 m!3330725))

(assert (=> bs!525876 m!3330507))

(assert (=> b!2952757 d!841265))

(declare-fun bm!195383 () Bool)

(declare-fun call!195389 () Bool)

(declare-fun c!483636 () Bool)

(assert (=> bm!195383 (= call!195389 (validRegex!3892 (ite c!483636 (regTwo!18831 r!17423) (regOne!18830 r!17423))))))

(declare-fun b!2953289 () Bool)

(declare-fun res!1218494 () Bool)

(declare-fun e!1859807 () Bool)

(assert (=> b!2953289 (=> (not res!1218494) (not e!1859807))))

(declare-fun call!195390 () Bool)

(assert (=> b!2953289 (= res!1218494 call!195390)))

(declare-fun e!1859809 () Bool)

(assert (=> b!2953289 (= e!1859809 e!1859807)))

(declare-fun b!2953290 () Bool)

(assert (=> b!2953290 (= e!1859807 call!195389)))

(declare-fun b!2953291 () Bool)

(declare-fun e!1859804 () Bool)

(declare-fun call!195388 () Bool)

(assert (=> b!2953291 (= e!1859804 call!195388)))

(declare-fun b!2953292 () Bool)

(declare-fun e!1859806 () Bool)

(declare-fun e!1859805 () Bool)

(assert (=> b!2953292 (= e!1859806 e!1859805)))

(declare-fun c!483635 () Bool)

(assert (=> b!2953292 (= c!483635 ((_ is Star!9159) r!17423))))

(declare-fun b!2953293 () Bool)

(declare-fun e!1859803 () Bool)

(declare-fun e!1859808 () Bool)

(assert (=> b!2953293 (= e!1859803 e!1859808)))

(declare-fun res!1218495 () Bool)

(assert (=> b!2953293 (=> (not res!1218495) (not e!1859808))))

(assert (=> b!2953293 (= res!1218495 call!195389)))

(declare-fun bm!195384 () Bool)

(assert (=> bm!195384 (= call!195388 (validRegex!3892 (ite c!483635 (reg!9488 r!17423) (ite c!483636 (regOne!18831 r!17423) (regTwo!18830 r!17423)))))))

(declare-fun b!2953294 () Bool)

(declare-fun res!1218493 () Bool)

(assert (=> b!2953294 (=> res!1218493 e!1859803)))

(assert (=> b!2953294 (= res!1218493 (not ((_ is Concat!14480) r!17423)))))

(assert (=> b!2953294 (= e!1859809 e!1859803)))

(declare-fun b!2953295 () Bool)

(assert (=> b!2953295 (= e!1859808 call!195390)))

(declare-fun d!841267 () Bool)

(declare-fun res!1218496 () Bool)

(assert (=> d!841267 (=> res!1218496 e!1859806)))

(assert (=> d!841267 (= res!1218496 ((_ is ElementMatch!9159) r!17423))))

(assert (=> d!841267 (= (validRegex!3892 r!17423) e!1859806)))

(declare-fun b!2953296 () Bool)

(assert (=> b!2953296 (= e!1859805 e!1859809)))

(assert (=> b!2953296 (= c!483636 ((_ is Union!9159) r!17423))))

(declare-fun b!2953297 () Bool)

(assert (=> b!2953297 (= e!1859805 e!1859804)))

(declare-fun res!1218497 () Bool)

(assert (=> b!2953297 (= res!1218497 (not (nullable!2915 (reg!9488 r!17423))))))

(assert (=> b!2953297 (=> (not res!1218497) (not e!1859804))))

(declare-fun bm!195385 () Bool)

(assert (=> bm!195385 (= call!195390 call!195388)))

(assert (= (and d!841267 (not res!1218496)) b!2953292))

(assert (= (and b!2953292 c!483635) b!2953297))

(assert (= (and b!2953292 (not c!483635)) b!2953296))

(assert (= (and b!2953297 res!1218497) b!2953291))

(assert (= (and b!2953296 c!483636) b!2953289))

(assert (= (and b!2953296 (not c!483636)) b!2953294))

(assert (= (and b!2953289 res!1218494) b!2953290))

(assert (= (and b!2953294 (not res!1218493)) b!2953293))

(assert (= (and b!2953293 res!1218495) b!2953295))

(assert (= (or b!2953289 b!2953295) bm!195385))

(assert (= (or b!2953290 b!2953293) bm!195383))

(assert (= (or b!2953291 bm!195385) bm!195384))

(declare-fun m!3330727 () Bool)

(assert (=> bm!195383 m!3330727))

(declare-fun m!3330729 () Bool)

(assert (=> bm!195384 m!3330729))

(declare-fun m!3330731 () Bool)

(assert (=> b!2953297 m!3330731))

(assert (=> start!286332 d!841267))

(declare-fun d!841269 () Bool)

(assert (=> d!841269 (= (isEmptyLang!281 lt!1032401) ((_ is EmptyLang!9159) lt!1032401))))

(assert (=> b!2952751 d!841269))

(declare-fun d!841271 () Bool)

(declare-fun choose!17454 (Int) Bool)

(assert (=> d!841271 (= (Exists!1491 lambda!109873) (choose!17454 lambda!109873))))

(declare-fun bs!525877 () Bool)

(assert (= bs!525877 d!841271))

(declare-fun m!3330733 () Bool)

(assert (=> bs!525877 m!3330733))

(assert (=> b!2952756 d!841271))

(declare-fun bs!525878 () Bool)

(declare-fun b!2953307 () Bool)

(assert (= bs!525878 (and b!2953307 b!2952756)))

(declare-fun lambda!109898 () Int)

(assert (=> bs!525878 (not (= lambda!109898 lambda!109873))))

(assert (=> bs!525878 (not (= lambda!109898 lambda!109874))))

(declare-fun bs!525879 () Bool)

(assert (= bs!525879 (and b!2953307 b!2953140)))

(assert (=> bs!525879 (= (and (= (reg!9488 lt!1032400) (reg!9488 r!17423)) (= lt!1032400 r!17423)) (= lambda!109898 lambda!109894))))

(declare-fun bs!525880 () Bool)

(assert (= bs!525880 (and b!2953307 b!2953137)))

(assert (=> bs!525880 (not (= lambda!109898 lambda!109895))))

(assert (=> b!2953307 true))

(assert (=> b!2953307 true))

(declare-fun bs!525881 () Bool)

(declare-fun b!2953304 () Bool)

(assert (= bs!525881 (and b!2953304 b!2953140)))

(declare-fun lambda!109899 () Int)

(assert (=> bs!525881 (not (= lambda!109899 lambda!109894))))

(declare-fun bs!525882 () Bool)

(assert (= bs!525882 (and b!2953304 b!2953137)))

(assert (=> bs!525882 (= (and (= (regOne!18830 lt!1032400) (regOne!18830 r!17423)) (= (regTwo!18830 lt!1032400) (regTwo!18830 r!17423))) (= lambda!109899 lambda!109895))))

(declare-fun bs!525883 () Bool)

(assert (= bs!525883 (and b!2953304 b!2953307)))

(assert (=> bs!525883 (not (= lambda!109899 lambda!109898))))

(declare-fun bs!525884 () Bool)

(assert (= bs!525884 (and b!2953304 b!2952756)))

(assert (=> bs!525884 (not (= lambda!109899 lambda!109873))))

(assert (=> bs!525884 (= (and (= (regOne!18830 lt!1032400) lt!1032398) (= (regTwo!18830 lt!1032400) lt!1032401)) (= lambda!109899 lambda!109874))))

(assert (=> b!2953304 true))

(assert (=> b!2953304 true))

(declare-fun b!2953298 () Bool)

(declare-fun c!483640 () Bool)

(assert (=> b!2953298 (= c!483640 ((_ is Union!9159) lt!1032400))))

(declare-fun e!1859814 () Bool)

(declare-fun e!1859811 () Bool)

(assert (=> b!2953298 (= e!1859814 e!1859811)))

(declare-fun b!2953299 () Bool)

(declare-fun e!1859810 () Bool)

(assert (=> b!2953299 (= e!1859811 e!1859810)))

(declare-fun res!1218499 () Bool)

(assert (=> b!2953299 (= res!1218499 (matchRSpec!1296 (regOne!18831 lt!1032400) s!11993))))

(assert (=> b!2953299 (=> res!1218499 e!1859810)))

(declare-fun b!2953300 () Bool)

(declare-fun e!1859816 () Bool)

(assert (=> b!2953300 (= e!1859811 e!1859816)))

(declare-fun c!483639 () Bool)

(assert (=> b!2953300 (= c!483639 ((_ is Star!9159) lt!1032400))))

(declare-fun b!2953301 () Bool)

(assert (=> b!2953301 (= e!1859814 (= s!11993 (Cons!34900 (c!483479 lt!1032400) Nil!34900)))))

(declare-fun b!2953302 () Bool)

(declare-fun e!1859812 () Bool)

(declare-fun call!195392 () Bool)

(assert (=> b!2953302 (= e!1859812 call!195392)))

(declare-fun b!2953303 () Bool)

(assert (=> b!2953303 (= e!1859810 (matchRSpec!1296 (regTwo!18831 lt!1032400) s!11993))))

(declare-fun call!195391 () Bool)

(assert (=> b!2953304 (= e!1859816 call!195391)))

(declare-fun b!2953305 () Bool)

(declare-fun c!483637 () Bool)

(assert (=> b!2953305 (= c!483637 ((_ is ElementMatch!9159) lt!1032400))))

(declare-fun e!1859815 () Bool)

(assert (=> b!2953305 (= e!1859815 e!1859814)))

(declare-fun b!2953306 () Bool)

(declare-fun res!1218500 () Bool)

(declare-fun e!1859813 () Bool)

(assert (=> b!2953306 (=> res!1218500 e!1859813)))

(assert (=> b!2953306 (= res!1218500 call!195392)))

(assert (=> b!2953306 (= e!1859816 e!1859813)))

(assert (=> b!2953307 (= e!1859813 call!195391)))

(declare-fun b!2953308 () Bool)

(assert (=> b!2953308 (= e!1859812 e!1859815)))

(declare-fun res!1218498 () Bool)

(assert (=> b!2953308 (= res!1218498 (not ((_ is EmptyLang!9159) lt!1032400)))))

(assert (=> b!2953308 (=> (not res!1218498) (not e!1859815))))

(declare-fun bm!195387 () Bool)

(assert (=> bm!195387 (= call!195391 (Exists!1491 (ite c!483639 lambda!109898 lambda!109899)))))

(declare-fun d!841273 () Bool)

(declare-fun c!483638 () Bool)

(assert (=> d!841273 (= c!483638 ((_ is EmptyExpr!9159) lt!1032400))))

(assert (=> d!841273 (= (matchRSpec!1296 lt!1032400 s!11993) e!1859812)))

(declare-fun bm!195386 () Bool)

(assert (=> bm!195386 (= call!195392 (isEmpty!19168 s!11993))))

(assert (= (and d!841273 c!483638) b!2953302))

(assert (= (and d!841273 (not c!483638)) b!2953308))

(assert (= (and b!2953308 res!1218498) b!2953305))

(assert (= (and b!2953305 c!483637) b!2953301))

(assert (= (and b!2953305 (not c!483637)) b!2953298))

(assert (= (and b!2953298 c!483640) b!2953299))

(assert (= (and b!2953298 (not c!483640)) b!2953300))

(assert (= (and b!2953299 (not res!1218499)) b!2953303))

(assert (= (and b!2953300 c!483639) b!2953306))

(assert (= (and b!2953300 (not c!483639)) b!2953304))

(assert (= (and b!2953306 (not res!1218500)) b!2953307))

(assert (= (or b!2953307 b!2953304) bm!195387))

(assert (= (or b!2953302 b!2953306) bm!195386))

(declare-fun m!3330735 () Bool)

(assert (=> b!2953299 m!3330735))

(declare-fun m!3330737 () Bool)

(assert (=> b!2953303 m!3330737))

(declare-fun m!3330739 () Bool)

(assert (=> bm!195387 m!3330739))

(assert (=> bm!195386 m!3330499))

(assert (=> b!2952756 d!841273))

(declare-fun b!2953327 () Bool)

(declare-fun e!1859828 () Bool)

(declare-fun lt!1032491 () Option!6650)

(declare-fun ++!8326 (List!35024 List!35024) List!35024)

(declare-fun get!10706 (Option!6650) tuple2!33836)

(assert (=> b!2953327 (= e!1859828 (= (++!8326 (_1!20050 (get!10706 lt!1032491)) (_2!20050 (get!10706 lt!1032491))) s!11993))))

(declare-fun d!841275 () Bool)

(declare-fun e!1859829 () Bool)

(assert (=> d!841275 e!1859829))

(declare-fun res!1218512 () Bool)

(assert (=> d!841275 (=> res!1218512 e!1859829)))

(assert (=> d!841275 (= res!1218512 e!1859828)))

(declare-fun res!1218513 () Bool)

(assert (=> d!841275 (=> (not res!1218513) (not e!1859828))))

(assert (=> d!841275 (= res!1218513 (isDefined!5201 lt!1032491))))

(declare-fun e!1859830 () Option!6650)

(assert (=> d!841275 (= lt!1032491 e!1859830)))

(declare-fun c!483645 () Bool)

(declare-fun e!1859827 () Bool)

(assert (=> d!841275 (= c!483645 e!1859827)))

(declare-fun res!1218515 () Bool)

(assert (=> d!841275 (=> (not res!1218515) (not e!1859827))))

(assert (=> d!841275 (= res!1218515 (matchR!4041 lt!1032398 Nil!34900))))

(assert (=> d!841275 (validRegex!3892 lt!1032398)))

(assert (=> d!841275 (= (findConcatSeparation!1044 lt!1032398 lt!1032401 Nil!34900 s!11993 s!11993) lt!1032491)))

(declare-fun b!2953328 () Bool)

(declare-fun res!1218511 () Bool)

(assert (=> b!2953328 (=> (not res!1218511) (not e!1859828))))

(assert (=> b!2953328 (= res!1218511 (matchR!4041 lt!1032398 (_1!20050 (get!10706 lt!1032491))))))

(declare-fun b!2953329 () Bool)

(declare-fun lt!1032489 () Unit!48697)

(declare-fun lt!1032490 () Unit!48697)

(assert (=> b!2953329 (= lt!1032489 lt!1032490)))

(assert (=> b!2953329 (= (++!8326 (++!8326 Nil!34900 (Cons!34900 (h!40320 s!11993) Nil!34900)) (t!234089 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!949 (List!35024 C!18504 List!35024 List!35024) Unit!48697)

(assert (=> b!2953329 (= lt!1032490 (lemmaMoveElementToOtherListKeepsConcatEq!949 Nil!34900 (h!40320 s!11993) (t!234089 s!11993) s!11993))))

(declare-fun e!1859831 () Option!6650)

(assert (=> b!2953329 (= e!1859831 (findConcatSeparation!1044 lt!1032398 lt!1032401 (++!8326 Nil!34900 (Cons!34900 (h!40320 s!11993) Nil!34900)) (t!234089 s!11993) s!11993))))

(declare-fun b!2953330 () Bool)

(assert (=> b!2953330 (= e!1859830 e!1859831)))

(declare-fun c!483646 () Bool)

(assert (=> b!2953330 (= c!483646 ((_ is Nil!34900) s!11993))))

(declare-fun b!2953331 () Bool)

(declare-fun res!1218514 () Bool)

(assert (=> b!2953331 (=> (not res!1218514) (not e!1859828))))

(assert (=> b!2953331 (= res!1218514 (matchR!4041 lt!1032401 (_2!20050 (get!10706 lt!1032491))))))

(declare-fun b!2953332 () Bool)

(assert (=> b!2953332 (= e!1859830 (Some!6649 (tuple2!33837 Nil!34900 s!11993)))))

(declare-fun b!2953333 () Bool)

(assert (=> b!2953333 (= e!1859831 None!6649)))

(declare-fun b!2953334 () Bool)

(assert (=> b!2953334 (= e!1859827 (matchR!4041 lt!1032401 s!11993))))

(declare-fun b!2953335 () Bool)

(assert (=> b!2953335 (= e!1859829 (not (isDefined!5201 lt!1032491)))))

(assert (= (and d!841275 res!1218515) b!2953334))

(assert (= (and d!841275 c!483645) b!2953332))

(assert (= (and d!841275 (not c!483645)) b!2953330))

(assert (= (and b!2953330 c!483646) b!2953333))

(assert (= (and b!2953330 (not c!483646)) b!2953329))

(assert (= (and d!841275 res!1218513) b!2953328))

(assert (= (and b!2953328 res!1218511) b!2953331))

(assert (= (and b!2953331 res!1218514) b!2953327))

(assert (= (and d!841275 (not res!1218512)) b!2953335))

(declare-fun m!3330741 () Bool)

(assert (=> b!2953328 m!3330741))

(declare-fun m!3330743 () Bool)

(assert (=> b!2953328 m!3330743))

(declare-fun m!3330745 () Bool)

(assert (=> b!2953335 m!3330745))

(declare-fun m!3330747 () Bool)

(assert (=> b!2953329 m!3330747))

(assert (=> b!2953329 m!3330747))

(declare-fun m!3330749 () Bool)

(assert (=> b!2953329 m!3330749))

(declare-fun m!3330751 () Bool)

(assert (=> b!2953329 m!3330751))

(assert (=> b!2953329 m!3330747))

(declare-fun m!3330753 () Bool)

(assert (=> b!2953329 m!3330753))

(declare-fun m!3330755 () Bool)

(assert (=> b!2953334 m!3330755))

(assert (=> b!2953327 m!3330741))

(declare-fun m!3330757 () Bool)

(assert (=> b!2953327 m!3330757))

(assert (=> b!2953331 m!3330741))

(declare-fun m!3330759 () Bool)

(assert (=> b!2953331 m!3330759))

(assert (=> d!841275 m!3330745))

(declare-fun m!3330761 () Bool)

(assert (=> d!841275 m!3330761))

(assert (=> d!841275 m!3330515))

(assert (=> b!2952756 d!841275))

(declare-fun d!841277 () Bool)

(assert (=> d!841277 (= (Exists!1491 lambda!109874) (choose!17454 lambda!109874))))

(declare-fun bs!525885 () Bool)

(assert (= bs!525885 d!841277))

(declare-fun m!3330763 () Bool)

(assert (=> bs!525885 m!3330763))

(assert (=> b!2952756 d!841277))

(declare-fun d!841279 () Bool)

(assert (=> d!841279 (= (matchR!4041 lt!1032400 s!11993) (matchRSpec!1296 lt!1032400 s!11993))))

(declare-fun lt!1032492 () Unit!48697)

(assert (=> d!841279 (= lt!1032492 (choose!17453 lt!1032400 s!11993))))

(assert (=> d!841279 (validRegex!3892 lt!1032400)))

(assert (=> d!841279 (= (mainMatchTheorem!1296 lt!1032400 s!11993) lt!1032492)))

(declare-fun bs!525886 () Bool)

(assert (= bs!525886 d!841279))

(assert (=> bs!525886 m!3330527))

(assert (=> bs!525886 m!3330517))

(declare-fun m!3330765 () Bool)

(assert (=> bs!525886 m!3330765))

(declare-fun m!3330767 () Bool)

(assert (=> bs!525886 m!3330767))

(assert (=> b!2952756 d!841279))

(declare-fun bm!195388 () Bool)

(declare-fun call!195394 () Bool)

(declare-fun c!483648 () Bool)

(assert (=> bm!195388 (= call!195394 (validRegex!3892 (ite c!483648 (regTwo!18831 lt!1032398) (regOne!18830 lt!1032398))))))

(declare-fun b!2953336 () Bool)

(declare-fun res!1218517 () Bool)

(declare-fun e!1859836 () Bool)

(assert (=> b!2953336 (=> (not res!1218517) (not e!1859836))))

(declare-fun call!195395 () Bool)

(assert (=> b!2953336 (= res!1218517 call!195395)))

(declare-fun e!1859838 () Bool)

(assert (=> b!2953336 (= e!1859838 e!1859836)))

(declare-fun b!2953337 () Bool)

(assert (=> b!2953337 (= e!1859836 call!195394)))

(declare-fun b!2953338 () Bool)

(declare-fun e!1859833 () Bool)

(declare-fun call!195393 () Bool)

(assert (=> b!2953338 (= e!1859833 call!195393)))

(declare-fun b!2953339 () Bool)

(declare-fun e!1859835 () Bool)

(declare-fun e!1859834 () Bool)

(assert (=> b!2953339 (= e!1859835 e!1859834)))

(declare-fun c!483647 () Bool)

(assert (=> b!2953339 (= c!483647 ((_ is Star!9159) lt!1032398))))

(declare-fun b!2953340 () Bool)

(declare-fun e!1859832 () Bool)

(declare-fun e!1859837 () Bool)

(assert (=> b!2953340 (= e!1859832 e!1859837)))

(declare-fun res!1218518 () Bool)

(assert (=> b!2953340 (=> (not res!1218518) (not e!1859837))))

(assert (=> b!2953340 (= res!1218518 call!195394)))

(declare-fun bm!195389 () Bool)

(assert (=> bm!195389 (= call!195393 (validRegex!3892 (ite c!483647 (reg!9488 lt!1032398) (ite c!483648 (regOne!18831 lt!1032398) (regTwo!18830 lt!1032398)))))))

(declare-fun b!2953341 () Bool)

(declare-fun res!1218516 () Bool)

(assert (=> b!2953341 (=> res!1218516 e!1859832)))

(assert (=> b!2953341 (= res!1218516 (not ((_ is Concat!14480) lt!1032398)))))

(assert (=> b!2953341 (= e!1859838 e!1859832)))

(declare-fun b!2953342 () Bool)

(assert (=> b!2953342 (= e!1859837 call!195395)))

(declare-fun d!841281 () Bool)

(declare-fun res!1218519 () Bool)

(assert (=> d!841281 (=> res!1218519 e!1859835)))

(assert (=> d!841281 (= res!1218519 ((_ is ElementMatch!9159) lt!1032398))))

(assert (=> d!841281 (= (validRegex!3892 lt!1032398) e!1859835)))

(declare-fun b!2953343 () Bool)

(assert (=> b!2953343 (= e!1859834 e!1859838)))

(assert (=> b!2953343 (= c!483648 ((_ is Union!9159) lt!1032398))))

(declare-fun b!2953344 () Bool)

(assert (=> b!2953344 (= e!1859834 e!1859833)))

(declare-fun res!1218520 () Bool)

(assert (=> b!2953344 (= res!1218520 (not (nullable!2915 (reg!9488 lt!1032398))))))

(assert (=> b!2953344 (=> (not res!1218520) (not e!1859833))))

(declare-fun bm!195390 () Bool)

(assert (=> bm!195390 (= call!195395 call!195393)))

(assert (= (and d!841281 (not res!1218519)) b!2953339))

(assert (= (and b!2953339 c!483647) b!2953344))

(assert (= (and b!2953339 (not c!483647)) b!2953343))

(assert (= (and b!2953344 res!1218520) b!2953338))

(assert (= (and b!2953343 c!483648) b!2953336))

(assert (= (and b!2953343 (not c!483648)) b!2953341))

(assert (= (and b!2953336 res!1218517) b!2953337))

(assert (= (and b!2953341 (not res!1218516)) b!2953340))

(assert (= (and b!2953340 res!1218518) b!2953342))

(assert (= (or b!2953336 b!2953342) bm!195390))

(assert (= (or b!2953337 b!2953340) bm!195388))

(assert (= (or b!2953338 bm!195390) bm!195389))

(declare-fun m!3330769 () Bool)

(assert (=> bm!195388 m!3330769))

(declare-fun m!3330771 () Bool)

(assert (=> bm!195389 m!3330771))

(declare-fun m!3330773 () Bool)

(assert (=> b!2953344 m!3330773))

(assert (=> b!2952756 d!841281))

(declare-fun d!841283 () Bool)

(declare-fun isEmpty!19170 (Option!6650) Bool)

(assert (=> d!841283 (= (isDefined!5201 (findConcatSeparation!1044 lt!1032398 lt!1032401 Nil!34900 s!11993 s!11993)) (not (isEmpty!19170 (findConcatSeparation!1044 lt!1032398 lt!1032401 Nil!34900 s!11993 s!11993))))))

(declare-fun bs!525887 () Bool)

(assert (= bs!525887 d!841283))

(assert (=> bs!525887 m!3330511))

(declare-fun m!3330775 () Bool)

(assert (=> bs!525887 m!3330775))

(assert (=> b!2952756 d!841283))

(declare-fun bs!525888 () Bool)

(declare-fun d!841285 () Bool)

(assert (= bs!525888 (and d!841285 b!2953140)))

(declare-fun lambda!109904 () Int)

(assert (=> bs!525888 (not (= lambda!109904 lambda!109894))))

(declare-fun bs!525889 () Bool)

(assert (= bs!525889 (and d!841285 b!2953137)))

(assert (=> bs!525889 (not (= lambda!109904 lambda!109895))))

(declare-fun bs!525890 () Bool)

(assert (= bs!525890 (and d!841285 b!2953304)))

(assert (=> bs!525890 (not (= lambda!109904 lambda!109899))))

(declare-fun bs!525891 () Bool)

(assert (= bs!525891 (and d!841285 b!2953307)))

(assert (=> bs!525891 (not (= lambda!109904 lambda!109898))))

(declare-fun bs!525892 () Bool)

(assert (= bs!525892 (and d!841285 b!2952756)))

(assert (=> bs!525892 (= lambda!109904 lambda!109873)))

(assert (=> bs!525892 (not (= lambda!109904 lambda!109874))))

(assert (=> d!841285 true))

(assert (=> d!841285 true))

(assert (=> d!841285 true))

(declare-fun bs!525893 () Bool)

(assert (= bs!525893 d!841285))

(declare-fun lambda!109905 () Int)

(assert (=> bs!525893 (not (= lambda!109905 lambda!109904))))

(assert (=> bs!525888 (not (= lambda!109905 lambda!109894))))

(assert (=> bs!525889 (= (and (= lt!1032398 (regOne!18830 r!17423)) (= lt!1032401 (regTwo!18830 r!17423))) (= lambda!109905 lambda!109895))))

(assert (=> bs!525890 (= (and (= lt!1032398 (regOne!18830 lt!1032400)) (= lt!1032401 (regTwo!18830 lt!1032400))) (= lambda!109905 lambda!109899))))

(assert (=> bs!525891 (not (= lambda!109905 lambda!109898))))

(assert (=> bs!525892 (not (= lambda!109905 lambda!109873))))

(assert (=> bs!525892 (= lambda!109905 lambda!109874)))

(assert (=> d!841285 true))

(assert (=> d!841285 true))

(assert (=> d!841285 true))

(assert (=> d!841285 (= (Exists!1491 lambda!109904) (Exists!1491 lambda!109905))))

(declare-fun lt!1032495 () Unit!48697)

(declare-fun choose!17455 (Regex!9159 Regex!9159 List!35024) Unit!48697)

(assert (=> d!841285 (= lt!1032495 (choose!17455 lt!1032398 lt!1032401 s!11993))))

(assert (=> d!841285 (validRegex!3892 lt!1032398)))

(assert (=> d!841285 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!512 lt!1032398 lt!1032401 s!11993) lt!1032495)))

(declare-fun m!3330777 () Bool)

(assert (=> bs!525893 m!3330777))

(declare-fun m!3330779 () Bool)

(assert (=> bs!525893 m!3330779))

(declare-fun m!3330781 () Bool)

(assert (=> bs!525893 m!3330781))

(assert (=> bs!525893 m!3330515))

(assert (=> b!2952756 d!841285))

(declare-fun bs!525894 () Bool)

(declare-fun d!841287 () Bool)

(assert (= bs!525894 (and d!841287 d!841285)))

(declare-fun lambda!109908 () Int)

(assert (=> bs!525894 (= lambda!109908 lambda!109904)))

(declare-fun bs!525895 () Bool)

(assert (= bs!525895 (and d!841287 b!2953140)))

(assert (=> bs!525895 (not (= lambda!109908 lambda!109894))))

(declare-fun bs!525896 () Bool)

(assert (= bs!525896 (and d!841287 b!2953137)))

(assert (=> bs!525896 (not (= lambda!109908 lambda!109895))))

(declare-fun bs!525897 () Bool)

(assert (= bs!525897 (and d!841287 b!2953304)))

(assert (=> bs!525897 (not (= lambda!109908 lambda!109899))))

(declare-fun bs!525898 () Bool)

(assert (= bs!525898 (and d!841287 b!2953307)))

(assert (=> bs!525898 (not (= lambda!109908 lambda!109898))))

(declare-fun bs!525899 () Bool)

(assert (= bs!525899 (and d!841287 b!2952756)))

(assert (=> bs!525899 (= lambda!109908 lambda!109873)))

(assert (=> bs!525894 (not (= lambda!109908 lambda!109905))))

(assert (=> bs!525899 (not (= lambda!109908 lambda!109874))))

(assert (=> d!841287 true))

(assert (=> d!841287 true))

(assert (=> d!841287 true))

(assert (=> d!841287 (= (isDefined!5201 (findConcatSeparation!1044 lt!1032398 lt!1032401 Nil!34900 s!11993 s!11993)) (Exists!1491 lambda!109908))))

(declare-fun lt!1032498 () Unit!48697)

(declare-fun choose!17456 (Regex!9159 Regex!9159 List!35024) Unit!48697)

(assert (=> d!841287 (= lt!1032498 (choose!17456 lt!1032398 lt!1032401 s!11993))))

(assert (=> d!841287 (validRegex!3892 lt!1032398)))

(assert (=> d!841287 (= (lemmaFindConcatSeparationEquivalentToExists!822 lt!1032398 lt!1032401 s!11993) lt!1032498)))

(declare-fun bs!525900 () Bool)

(assert (= bs!525900 d!841287))

(assert (=> bs!525900 m!3330515))

(assert (=> bs!525900 m!3330511))

(declare-fun m!3330783 () Bool)

(assert (=> bs!525900 m!3330783))

(declare-fun m!3330785 () Bool)

(assert (=> bs!525900 m!3330785))

(assert (=> bs!525900 m!3330511))

(assert (=> bs!525900 m!3330513))

(assert (=> b!2952756 d!841287))

(declare-fun d!841289 () Bool)

(assert (=> d!841289 (= (isEmpty!19168 s!11993) ((_ is Nil!34900) s!11993))))

(assert (=> b!2952750 d!841289))

(declare-fun b!2953357 () Bool)

(declare-fun e!1859847 () Bool)

(declare-fun lt!1032499 () Bool)

(declare-fun call!195396 () Bool)

(assert (=> b!2953357 (= e!1859847 (= lt!1032499 call!195396))))

(declare-fun b!2953358 () Bool)

(declare-fun e!1859846 () Bool)

(assert (=> b!2953358 (= e!1859846 (matchR!4041 (derivativeStep!2517 lt!1032400 (head!6576 s!11993)) (tail!4802 s!11993)))))

(declare-fun b!2953359 () Bool)

(declare-fun e!1859849 () Bool)

(assert (=> b!2953359 (= e!1859849 (not lt!1032499))))

(declare-fun b!2953360 () Bool)

(assert (=> b!2953360 (= e!1859847 e!1859849)))

(declare-fun c!483650 () Bool)

(assert (=> b!2953360 (= c!483650 ((_ is EmptyLang!9159) lt!1032400))))

(declare-fun b!2953361 () Bool)

(declare-fun e!1859850 () Bool)

(assert (=> b!2953361 (= e!1859850 (not (= (head!6576 s!11993) (c!483479 lt!1032400))))))

(declare-fun b!2953362 () Bool)

(declare-fun e!1859845 () Bool)

(assert (=> b!2953362 (= e!1859845 e!1859850)))

(declare-fun res!1218534 () Bool)

(assert (=> b!2953362 (=> res!1218534 e!1859850)))

(assert (=> b!2953362 (= res!1218534 call!195396)))

(declare-fun b!2953363 () Bool)

(declare-fun e!1859851 () Bool)

(assert (=> b!2953363 (= e!1859851 (= (head!6576 s!11993) (c!483479 lt!1032400)))))

(declare-fun b!2953364 () Bool)

(declare-fun e!1859848 () Bool)

(assert (=> b!2953364 (= e!1859848 e!1859845)))

(declare-fun res!1218538 () Bool)

(assert (=> b!2953364 (=> (not res!1218538) (not e!1859845))))

(assert (=> b!2953364 (= res!1218538 (not lt!1032499))))

(declare-fun b!2953365 () Bool)

(declare-fun res!1218533 () Bool)

(assert (=> b!2953365 (=> (not res!1218533) (not e!1859851))))

(assert (=> b!2953365 (= res!1218533 (isEmpty!19168 (tail!4802 s!11993)))))

(declare-fun d!841291 () Bool)

(assert (=> d!841291 e!1859847))

(declare-fun c!483651 () Bool)

(assert (=> d!841291 (= c!483651 ((_ is EmptyExpr!9159) lt!1032400))))

(assert (=> d!841291 (= lt!1032499 e!1859846)))

(declare-fun c!483649 () Bool)

(assert (=> d!841291 (= c!483649 (isEmpty!19168 s!11993))))

(assert (=> d!841291 (validRegex!3892 lt!1032400)))

(assert (=> d!841291 (= (matchR!4041 lt!1032400 s!11993) lt!1032499)))

(declare-fun b!2953366 () Bool)

(declare-fun res!1218537 () Bool)

(assert (=> b!2953366 (=> res!1218537 e!1859848)))

(assert (=> b!2953366 (= res!1218537 (not ((_ is ElementMatch!9159) lt!1032400)))))

(assert (=> b!2953366 (= e!1859849 e!1859848)))

(declare-fun b!2953367 () Bool)

(declare-fun res!1218539 () Bool)

(assert (=> b!2953367 (=> res!1218539 e!1859848)))

(assert (=> b!2953367 (= res!1218539 e!1859851)))

(declare-fun res!1218535 () Bool)

(assert (=> b!2953367 (=> (not res!1218535) (not e!1859851))))

(assert (=> b!2953367 (= res!1218535 lt!1032499)))

(declare-fun bm!195391 () Bool)

(assert (=> bm!195391 (= call!195396 (isEmpty!19168 s!11993))))

(declare-fun b!2953368 () Bool)

(declare-fun res!1218540 () Bool)

(assert (=> b!2953368 (=> (not res!1218540) (not e!1859851))))

(assert (=> b!2953368 (= res!1218540 (not call!195396))))

(declare-fun b!2953369 () Bool)

(assert (=> b!2953369 (= e!1859846 (nullable!2915 lt!1032400))))

(declare-fun b!2953370 () Bool)

(declare-fun res!1218536 () Bool)

(assert (=> b!2953370 (=> res!1218536 e!1859850)))

(assert (=> b!2953370 (= res!1218536 (not (isEmpty!19168 (tail!4802 s!11993))))))

(assert (= (and d!841291 c!483649) b!2953369))

(assert (= (and d!841291 (not c!483649)) b!2953358))

(assert (= (and d!841291 c!483651) b!2953357))

(assert (= (and d!841291 (not c!483651)) b!2953360))

(assert (= (and b!2953360 c!483650) b!2953359))

(assert (= (and b!2953360 (not c!483650)) b!2953366))

(assert (= (and b!2953366 (not res!1218537)) b!2953367))

(assert (= (and b!2953367 res!1218535) b!2953368))

(assert (= (and b!2953368 res!1218540) b!2953365))

(assert (= (and b!2953365 res!1218533) b!2953363))

(assert (= (and b!2953367 (not res!1218539)) b!2953364))

(assert (= (and b!2953364 res!1218538) b!2953362))

(assert (= (and b!2953362 (not res!1218534)) b!2953370))

(assert (= (and b!2953370 (not res!1218536)) b!2953361))

(assert (= (or b!2953357 b!2953368 b!2953362) bm!195391))

(assert (=> b!2953370 m!3330713))

(assert (=> b!2953370 m!3330713))

(assert (=> b!2953370 m!3330715))

(declare-fun m!3330787 () Bool)

(assert (=> b!2953369 m!3330787))

(assert (=> b!2953361 m!3330719))

(assert (=> bm!195391 m!3330499))

(assert (=> b!2953363 m!3330719))

(assert (=> b!2953358 m!3330719))

(assert (=> b!2953358 m!3330719))

(declare-fun m!3330789 () Bool)

(assert (=> b!2953358 m!3330789))

(assert (=> b!2953358 m!3330713))

(assert (=> b!2953358 m!3330789))

(assert (=> b!2953358 m!3330713))

(declare-fun m!3330791 () Bool)

(assert (=> b!2953358 m!3330791))

(assert (=> b!2953365 m!3330713))

(assert (=> b!2953365 m!3330713))

(assert (=> b!2953365 m!3330715))

(assert (=> d!841291 m!3330499))

(assert (=> d!841291 m!3330767))

(assert (=> b!2952760 d!841291))

(declare-fun b!2953381 () Bool)

(declare-fun e!1859854 () Bool)

(assert (=> b!2953381 (= e!1859854 tp_is_empty!15881)))

(declare-fun b!2953382 () Bool)

(declare-fun tp!943579 () Bool)

(declare-fun tp!943578 () Bool)

(assert (=> b!2953382 (= e!1859854 (and tp!943579 tp!943578))))

(declare-fun b!2953384 () Bool)

(declare-fun tp!943582 () Bool)

(declare-fun tp!943580 () Bool)

(assert (=> b!2953384 (= e!1859854 (and tp!943582 tp!943580))))

(assert (=> b!2952752 (= tp!943525 e!1859854)))

(declare-fun b!2953383 () Bool)

(declare-fun tp!943581 () Bool)

(assert (=> b!2953383 (= e!1859854 tp!943581)))

(assert (= (and b!2952752 ((_ is ElementMatch!9159) (regOne!18830 r!17423))) b!2953381))

(assert (= (and b!2952752 ((_ is Concat!14480) (regOne!18830 r!17423))) b!2953382))

(assert (= (and b!2952752 ((_ is Star!9159) (regOne!18830 r!17423))) b!2953383))

(assert (= (and b!2952752 ((_ is Union!9159) (regOne!18830 r!17423))) b!2953384))

(declare-fun b!2953385 () Bool)

(declare-fun e!1859855 () Bool)

(assert (=> b!2953385 (= e!1859855 tp_is_empty!15881)))

(declare-fun b!2953386 () Bool)

(declare-fun tp!943584 () Bool)

(declare-fun tp!943583 () Bool)

(assert (=> b!2953386 (= e!1859855 (and tp!943584 tp!943583))))

(declare-fun b!2953388 () Bool)

(declare-fun tp!943587 () Bool)

(declare-fun tp!943585 () Bool)

(assert (=> b!2953388 (= e!1859855 (and tp!943587 tp!943585))))

(assert (=> b!2952752 (= tp!943528 e!1859855)))

(declare-fun b!2953387 () Bool)

(declare-fun tp!943586 () Bool)

(assert (=> b!2953387 (= e!1859855 tp!943586)))

(assert (= (and b!2952752 ((_ is ElementMatch!9159) (regTwo!18830 r!17423))) b!2953385))

(assert (= (and b!2952752 ((_ is Concat!14480) (regTwo!18830 r!17423))) b!2953386))

(assert (= (and b!2952752 ((_ is Star!9159) (regTwo!18830 r!17423))) b!2953387))

(assert (= (and b!2952752 ((_ is Union!9159) (regTwo!18830 r!17423))) b!2953388))

(declare-fun b!2953393 () Bool)

(declare-fun e!1859858 () Bool)

(declare-fun tp!943590 () Bool)

(assert (=> b!2953393 (= e!1859858 (and tp_is_empty!15881 tp!943590))))

(assert (=> b!2952761 (= tp!943529 e!1859858)))

(assert (= (and b!2952761 ((_ is Cons!34900) (t!234089 s!11993))) b!2953393))

(declare-fun b!2953394 () Bool)

(declare-fun e!1859859 () Bool)

(assert (=> b!2953394 (= e!1859859 tp_is_empty!15881)))

(declare-fun b!2953395 () Bool)

(declare-fun tp!943592 () Bool)

(declare-fun tp!943591 () Bool)

(assert (=> b!2953395 (= e!1859859 (and tp!943592 tp!943591))))

(declare-fun b!2953397 () Bool)

(declare-fun tp!943595 () Bool)

(declare-fun tp!943593 () Bool)

(assert (=> b!2953397 (= e!1859859 (and tp!943595 tp!943593))))

(assert (=> b!2952755 (= tp!943526 e!1859859)))

(declare-fun b!2953396 () Bool)

(declare-fun tp!943594 () Bool)

(assert (=> b!2953396 (= e!1859859 tp!943594)))

(assert (= (and b!2952755 ((_ is ElementMatch!9159) (regOne!18831 r!17423))) b!2953394))

(assert (= (and b!2952755 ((_ is Concat!14480) (regOne!18831 r!17423))) b!2953395))

(assert (= (and b!2952755 ((_ is Star!9159) (regOne!18831 r!17423))) b!2953396))

(assert (= (and b!2952755 ((_ is Union!9159) (regOne!18831 r!17423))) b!2953397))

(declare-fun b!2953398 () Bool)

(declare-fun e!1859860 () Bool)

(assert (=> b!2953398 (= e!1859860 tp_is_empty!15881)))

(declare-fun b!2953399 () Bool)

(declare-fun tp!943597 () Bool)

(declare-fun tp!943596 () Bool)

(assert (=> b!2953399 (= e!1859860 (and tp!943597 tp!943596))))

(declare-fun b!2953401 () Bool)

(declare-fun tp!943600 () Bool)

(declare-fun tp!943598 () Bool)

(assert (=> b!2953401 (= e!1859860 (and tp!943600 tp!943598))))

(assert (=> b!2952755 (= tp!943524 e!1859860)))

(declare-fun b!2953400 () Bool)

(declare-fun tp!943599 () Bool)

(assert (=> b!2953400 (= e!1859860 tp!943599)))

(assert (= (and b!2952755 ((_ is ElementMatch!9159) (regTwo!18831 r!17423))) b!2953398))

(assert (= (and b!2952755 ((_ is Concat!14480) (regTwo!18831 r!17423))) b!2953399))

(assert (= (and b!2952755 ((_ is Star!9159) (regTwo!18831 r!17423))) b!2953400))

(assert (= (and b!2952755 ((_ is Union!9159) (regTwo!18831 r!17423))) b!2953401))

(declare-fun b!2953402 () Bool)

(declare-fun e!1859861 () Bool)

(assert (=> b!2953402 (= e!1859861 tp_is_empty!15881)))

(declare-fun b!2953403 () Bool)

(declare-fun tp!943602 () Bool)

(declare-fun tp!943601 () Bool)

(assert (=> b!2953403 (= e!1859861 (and tp!943602 tp!943601))))

(declare-fun b!2953405 () Bool)

(declare-fun tp!943605 () Bool)

(declare-fun tp!943603 () Bool)

(assert (=> b!2953405 (= e!1859861 (and tp!943605 tp!943603))))

(assert (=> b!2952749 (= tp!943527 e!1859861)))

(declare-fun b!2953404 () Bool)

(declare-fun tp!943604 () Bool)

(assert (=> b!2953404 (= e!1859861 tp!943604)))

(assert (= (and b!2952749 ((_ is ElementMatch!9159) (reg!9488 r!17423))) b!2953402))

(assert (= (and b!2952749 ((_ is Concat!14480) (reg!9488 r!17423))) b!2953403))

(assert (= (and b!2952749 ((_ is Star!9159) (reg!9488 r!17423))) b!2953404))

(assert (= (and b!2952749 ((_ is Union!9159) (reg!9488 r!17423))) b!2953405))

(check-sat (not b!2953395) (not b!2953393) (not d!841291) (not b!2953388) (not b!2953363) (not d!841283) (not b!2953401) (not b!2953132) (not d!841265) (not b!2953329) (not bm!195383) (not b!2953021) (not b!2953370) (not bm!195387) (not b!2953261) (not b!2953331) (not bm!195376) (not b!2953270) (not b!2953136) (not d!841279) (not d!841287) (not b!2953263) (not b!2953014) (not bm!195356) (not b!2953386) (not b!2953361) (not b!2953382) (not bm!195370) tp_is_empty!15881 (not bm!195384) (not b!2953265) (not bm!195388) (not b!2953404) (not bm!195345) (not bm!195389) (not b!2953269) (not b!2953403) (not bm!195351) (not b!2953387) (not b!2953303) (not d!841285) (not b!2953055) (not b!2953358) (not bm!195358) (not b!2953334) (not b!2953405) (not bm!195369) (not b!2953328) (not bm!195391) (not b!2953062) (not d!841253) (not d!841217) (not b!2953327) (not b!2953299) (not b!2953399) (not b!2953383) (not bm!195350) (not d!841277) (not b!2953335) (not bm!195353) (not b!2953397) (not b!2953396) (not b!2953297) (not b!2953258) (not d!841271) (not bm!195346) (not b!2953369) (not bm!195349) (not b!2953384) (not b!2953365) (not d!841239) (not b!2953400) (not bm!195386) (not bm!195357) (not b!2953344) (not d!841275) (not bm!195352))
(check-sat)
