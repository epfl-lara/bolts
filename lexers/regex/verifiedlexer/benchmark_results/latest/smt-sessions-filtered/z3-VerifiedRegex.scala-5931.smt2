; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290492 () Bool)

(assert start!290492)

(declare-fun b!3025307 () Bool)

(assert (=> b!3025307 true))

(assert (=> b!3025307 true))

(declare-fun lambda!113028 () Int)

(declare-fun lambda!113027 () Int)

(assert (=> b!3025307 (not (= lambda!113028 lambda!113027))))

(assert (=> b!3025307 true))

(assert (=> b!3025307 true))

(declare-fun b!3025303 () Bool)

(declare-fun e!1897874 () Bool)

(declare-fun e!1897875 () Bool)

(assert (=> b!3025303 (= e!1897874 (not e!1897875))))

(declare-fun res!1245017 () Bool)

(assert (=> b!3025303 (=> res!1245017 e!1897875)))

(declare-fun lt!1045179 () Bool)

(declare-datatypes ((C!19012 0))(
  ( (C!19013 (val!11542 Int)) )
))
(declare-datatypes ((Regex!9413 0))(
  ( (ElementMatch!9413 (c!499425 C!19012)) (Concat!14734 (regOne!19338 Regex!9413) (regTwo!19338 Regex!9413)) (EmptyExpr!9413) (Star!9413 (reg!9742 Regex!9413)) (EmptyLang!9413) (Union!9413 (regOne!19339 Regex!9413) (regTwo!19339 Regex!9413)) )
))
(declare-fun r!17423 () Regex!9413)

(get-info :version)

(assert (=> b!3025303 (= res!1245017 (or (not lt!1045179) (not ((_ is Concat!14734) r!17423))))))

(declare-datatypes ((List!35278 0))(
  ( (Nil!35154) (Cons!35154 (h!40574 C!19012) (t!234343 List!35278)) )
))
(declare-fun s!11993 () List!35278)

(declare-fun matchRSpec!1550 (Regex!9413 List!35278) Bool)

(assert (=> b!3025303 (= lt!1045179 (matchRSpec!1550 r!17423 s!11993))))

(declare-fun matchR!4295 (Regex!9413 List!35278) Bool)

(assert (=> b!3025303 (= lt!1045179 (matchR!4295 r!17423 s!11993))))

(declare-datatypes ((Unit!49249 0))(
  ( (Unit!49250) )
))
(declare-fun lt!1045177 () Unit!49249)

(declare-fun mainMatchTheorem!1550 (Regex!9413 List!35278) Unit!49249)

(assert (=> b!3025303 (= lt!1045177 (mainMatchTheorem!1550 r!17423 s!11993))))

(declare-fun b!3025304 () Bool)

(declare-fun e!1897870 () Bool)

(declare-fun e!1897872 () Bool)

(assert (=> b!3025304 (= e!1897870 e!1897872)))

(declare-fun res!1245019 () Bool)

(assert (=> b!3025304 (=> (not res!1245019) (not e!1897872))))

(declare-fun lt!1045180 () Regex!9413)

(declare-fun validRegex!4146 (Regex!9413) Bool)

(assert (=> b!3025304 (= res!1245019 (validRegex!4146 lt!1045180))))

(declare-fun lt!1045176 () Regex!9413)

(declare-datatypes ((tuple2!34108 0))(
  ( (tuple2!34109 (_1!20186 List!35278) (_2!20186 List!35278)) )
))
(declare-fun lt!1045184 () tuple2!34108)

(assert (=> b!3025304 (matchR!4295 lt!1045176 (_2!20186 lt!1045184))))

(declare-fun simplify!392 (Regex!9413) Regex!9413)

(assert (=> b!3025304 (= lt!1045176 (simplify!392 (regTwo!19338 r!17423)))))

(declare-fun lt!1045182 () Unit!49249)

(declare-fun lemmaSimplifySound!240 (Regex!9413 List!35278) Unit!49249)

(assert (=> b!3025304 (= lt!1045182 (lemmaSimplifySound!240 (regTwo!19338 r!17423) (_2!20186 lt!1045184)))))

(assert (=> b!3025304 (matchR!4295 lt!1045180 (_1!20186 lt!1045184))))

(assert (=> b!3025304 (= lt!1045180 (simplify!392 (regOne!19338 r!17423)))))

(declare-fun lt!1045181 () Unit!49249)

(assert (=> b!3025304 (= lt!1045181 (lemmaSimplifySound!240 (regOne!19338 r!17423) (_1!20186 lt!1045184)))))

(declare-fun b!3025305 () Bool)

(declare-fun e!1897873 () Bool)

(declare-fun tp!959649 () Bool)

(declare-fun tp!959648 () Bool)

(assert (=> b!3025305 (= e!1897873 (and tp!959649 tp!959648))))

(declare-fun b!3025306 () Bool)

(assert (=> b!3025306 (= e!1897872 (validRegex!4146 lt!1045176))))

(assert (=> b!3025307 (= e!1897875 e!1897870)))

(declare-fun res!1245015 () Bool)

(assert (=> b!3025307 (=> res!1245015 e!1897870)))

(assert (=> b!3025307 (= res!1245015 (not (matchR!4295 (regOne!19338 r!17423) (_1!20186 lt!1045184))))))

(declare-datatypes ((Option!6786 0))(
  ( (None!6785) (Some!6785 (v!34919 tuple2!34108)) )
))
(declare-fun lt!1045178 () Option!6786)

(declare-fun get!10959 (Option!6786) tuple2!34108)

(assert (=> b!3025307 (= lt!1045184 (get!10959 lt!1045178))))

(declare-fun Exists!1681 (Int) Bool)

(assert (=> b!3025307 (= (Exists!1681 lambda!113027) (Exists!1681 lambda!113028))))

(declare-fun lt!1045175 () Unit!49249)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!554 (Regex!9413 Regex!9413 List!35278) Unit!49249)

(assert (=> b!3025307 (= lt!1045175 (lemmaExistCutMatchRandMatchRSpecEquivalent!554 (regOne!19338 r!17423) (regTwo!19338 r!17423) s!11993))))

(declare-fun isDefined!5337 (Option!6786) Bool)

(assert (=> b!3025307 (= (isDefined!5337 lt!1045178) (Exists!1681 lambda!113027))))

(declare-fun findConcatSeparation!1180 (Regex!9413 Regex!9413 List!35278 List!35278 List!35278) Option!6786)

(assert (=> b!3025307 (= lt!1045178 (findConcatSeparation!1180 (regOne!19338 r!17423) (regTwo!19338 r!17423) Nil!35154 s!11993 s!11993))))

(declare-fun lt!1045183 () Unit!49249)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!958 (Regex!9413 Regex!9413 List!35278) Unit!49249)

(assert (=> b!3025307 (= lt!1045183 (lemmaFindConcatSeparationEquivalentToExists!958 (regOne!19338 r!17423) (regTwo!19338 r!17423) s!11993))))

(declare-fun b!3025308 () Bool)

(declare-fun res!1245018 () Bool)

(assert (=> b!3025308 (=> res!1245018 e!1897875)))

(declare-fun isEmpty!19452 (List!35278) Bool)

(assert (=> b!3025308 (= res!1245018 (isEmpty!19452 s!11993))))

(declare-fun res!1245020 () Bool)

(assert (=> start!290492 (=> (not res!1245020) (not e!1897874))))

(assert (=> start!290492 (= res!1245020 (validRegex!4146 r!17423))))

(assert (=> start!290492 e!1897874))

(assert (=> start!290492 e!1897873))

(declare-fun e!1897871 () Bool)

(assert (=> start!290492 e!1897871))

(declare-fun b!3025309 () Bool)

(declare-fun tp!959647 () Bool)

(assert (=> b!3025309 (= e!1897873 tp!959647)))

(declare-fun b!3025310 () Bool)

(declare-fun res!1245016 () Bool)

(assert (=> b!3025310 (=> res!1245016 e!1897870)))

(assert (=> b!3025310 (= res!1245016 (not (matchR!4295 (regTwo!19338 r!17423) (_2!20186 lt!1045184))))))

(declare-fun b!3025311 () Bool)

(declare-fun tp!959644 () Bool)

(declare-fun tp!959646 () Bool)

(assert (=> b!3025311 (= e!1897873 (and tp!959644 tp!959646))))

(declare-fun b!3025312 () Bool)

(declare-fun tp_is_empty!16389 () Bool)

(declare-fun tp!959645 () Bool)

(assert (=> b!3025312 (= e!1897871 (and tp_is_empty!16389 tp!959645))))

(declare-fun b!3025313 () Bool)

(assert (=> b!3025313 (= e!1897873 tp_is_empty!16389)))

(assert (= (and start!290492 res!1245020) b!3025303))

(assert (= (and b!3025303 (not res!1245017)) b!3025308))

(assert (= (and b!3025308 (not res!1245018)) b!3025307))

(assert (= (and b!3025307 (not res!1245015)) b!3025310))

(assert (= (and b!3025310 (not res!1245016)) b!3025304))

(assert (= (and b!3025304 res!1245019) b!3025306))

(assert (= (and start!290492 ((_ is ElementMatch!9413) r!17423)) b!3025313))

(assert (= (and start!290492 ((_ is Concat!14734) r!17423)) b!3025305))

(assert (= (and start!290492 ((_ is Star!9413) r!17423)) b!3025309))

(assert (= (and start!290492 ((_ is Union!9413) r!17423)) b!3025311))

(assert (= (and start!290492 ((_ is Cons!35154) s!11993)) b!3025312))

(declare-fun m!3364941 () Bool)

(assert (=> b!3025307 m!3364941))

(declare-fun m!3364943 () Bool)

(assert (=> b!3025307 m!3364943))

(declare-fun m!3364945 () Bool)

(assert (=> b!3025307 m!3364945))

(assert (=> b!3025307 m!3364943))

(declare-fun m!3364947 () Bool)

(assert (=> b!3025307 m!3364947))

(declare-fun m!3364949 () Bool)

(assert (=> b!3025307 m!3364949))

(declare-fun m!3364951 () Bool)

(assert (=> b!3025307 m!3364951))

(declare-fun m!3364953 () Bool)

(assert (=> b!3025307 m!3364953))

(declare-fun m!3364955 () Bool)

(assert (=> b!3025307 m!3364955))

(declare-fun m!3364957 () Bool)

(assert (=> b!3025304 m!3364957))

(declare-fun m!3364959 () Bool)

(assert (=> b!3025304 m!3364959))

(declare-fun m!3364961 () Bool)

(assert (=> b!3025304 m!3364961))

(declare-fun m!3364963 () Bool)

(assert (=> b!3025304 m!3364963))

(declare-fun m!3364965 () Bool)

(assert (=> b!3025304 m!3364965))

(declare-fun m!3364967 () Bool)

(assert (=> b!3025304 m!3364967))

(declare-fun m!3364969 () Bool)

(assert (=> b!3025304 m!3364969))

(declare-fun m!3364971 () Bool)

(assert (=> b!3025306 m!3364971))

(declare-fun m!3364973 () Bool)

(assert (=> b!3025308 m!3364973))

(declare-fun m!3364975 () Bool)

(assert (=> start!290492 m!3364975))

(declare-fun m!3364977 () Bool)

(assert (=> b!3025310 m!3364977))

(declare-fun m!3364979 () Bool)

(assert (=> b!3025303 m!3364979))

(declare-fun m!3364981 () Bool)

(assert (=> b!3025303 m!3364981))

(declare-fun m!3364983 () Bool)

(assert (=> b!3025303 m!3364983))

(check-sat (not b!3025308) (not start!290492) (not b!3025303) tp_is_empty!16389 (not b!3025311) (not b!3025312) (not b!3025304) (not b!3025306) (not b!3025305) (not b!3025309) (not b!3025307) (not b!3025310))
(check-sat)
(get-model)

(declare-fun d!850264 () Bool)

(assert (=> d!850264 (= (matchR!4295 (regOne!19338 r!17423) (_1!20186 lt!1045184)) (matchR!4295 (simplify!392 (regOne!19338 r!17423)) (_1!20186 lt!1045184)))))

(declare-fun lt!1045187 () Unit!49249)

(declare-fun choose!17936 (Regex!9413 List!35278) Unit!49249)

(assert (=> d!850264 (= lt!1045187 (choose!17936 (regOne!19338 r!17423) (_1!20186 lt!1045184)))))

(assert (=> d!850264 (validRegex!4146 (regOne!19338 r!17423))))

(assert (=> d!850264 (= (lemmaSimplifySound!240 (regOne!19338 r!17423) (_1!20186 lt!1045184)) lt!1045187)))

(declare-fun bs!530584 () Bool)

(assert (= bs!530584 d!850264))

(declare-fun m!3364985 () Bool)

(assert (=> bs!530584 m!3364985))

(assert (=> bs!530584 m!3364965))

(declare-fun m!3364987 () Bool)

(assert (=> bs!530584 m!3364987))

(declare-fun m!3364989 () Bool)

(assert (=> bs!530584 m!3364989))

(assert (=> bs!530584 m!3364965))

(assert (=> bs!530584 m!3364949))

(assert (=> b!3025304 d!850264))

(declare-fun b!3025502 () Bool)

(declare-fun c!499483 () Bool)

(declare-fun e!1897977 () Bool)

(assert (=> b!3025502 (= c!499483 e!1897977)))

(declare-fun res!1245103 () Bool)

(assert (=> b!3025502 (=> res!1245103 e!1897977)))

(declare-fun call!205581 () Bool)

(assert (=> b!3025502 (= res!1245103 call!205581)))

(declare-fun lt!1045223 () Regex!9413)

(declare-fun call!205585 () Regex!9413)

(assert (=> b!3025502 (= lt!1045223 call!205585)))

(declare-fun e!1897981 () Regex!9413)

(declare-fun e!1897983 () Regex!9413)

(assert (=> b!3025502 (= e!1897981 e!1897983)))

(declare-fun b!3025503 () Bool)

(declare-fun e!1897982 () Regex!9413)

(assert (=> b!3025503 (= e!1897982 (regTwo!19338 r!17423))))

(declare-fun b!3025504 () Bool)

(declare-fun c!499478 () Bool)

(assert (=> b!3025504 (= c!499478 ((_ is EmptyExpr!9413) (regTwo!19338 r!17423)))))

(declare-fun e!1897987 () Regex!9413)

(assert (=> b!3025504 (= e!1897982 e!1897987)))

(declare-fun lt!1045219 () Regex!9413)

(declare-fun c!499487 () Bool)

(declare-fun call!205580 () Bool)

(declare-fun bm!205574 () Bool)

(declare-fun isEmptyExpr!496 (Regex!9413) Bool)

(assert (=> bm!205574 (= call!205580 (isEmptyExpr!496 (ite c!499487 lt!1045223 lt!1045219)))))

(declare-fun bm!205575 () Bool)

(declare-fun call!205582 () Bool)

(assert (=> bm!205575 (= call!205582 call!205581)))

(declare-fun b!3025505 () Bool)

(declare-fun e!1897976 () Bool)

(declare-fun lt!1045220 () Regex!9413)

(declare-fun nullable!3065 (Regex!9413) Bool)

(assert (=> b!3025505 (= e!1897976 (= (nullable!3065 lt!1045220) (nullable!3065 (regTwo!19338 r!17423))))))

(declare-fun bm!205576 () Bool)

(declare-fun lt!1045222 () Regex!9413)

(declare-fun c!499481 () Bool)

(declare-fun isEmptyLang!490 (Regex!9413) Bool)

(assert (=> bm!205576 (= call!205581 (isEmptyLang!490 (ite c!499487 lt!1045223 (ite c!499481 lt!1045222 lt!1045219))))))

(declare-fun b!3025506 () Bool)

(declare-fun e!1897985 () Regex!9413)

(assert (=> b!3025506 (= e!1897985 e!1897982)))

(declare-fun c!499480 () Bool)

(assert (=> b!3025506 (= c!499480 ((_ is ElementMatch!9413) (regTwo!19338 r!17423)))))

(declare-fun bm!205577 () Bool)

(declare-fun call!205584 () Regex!9413)

(assert (=> bm!205577 (= call!205584 (simplify!392 (ite c!499481 (regOne!19339 (regTwo!19338 r!17423)) (regTwo!19338 (regTwo!19338 r!17423)))))))

(declare-fun b!3025508 () Bool)

(declare-fun e!1897989 () Regex!9413)

(declare-fun e!1897978 () Regex!9413)

(assert (=> b!3025508 (= e!1897989 e!1897978)))

(declare-fun lt!1045221 () Regex!9413)

(assert (=> b!3025508 (= lt!1045221 call!205584)))

(declare-fun call!205583 () Regex!9413)

(assert (=> b!3025508 (= lt!1045222 call!205583)))

(declare-fun c!499488 () Bool)

(declare-fun call!205579 () Bool)

(assert (=> b!3025508 (= c!499488 call!205579)))

(declare-fun b!3025509 () Bool)

(assert (=> b!3025509 (= e!1897987 e!1897981)))

(assert (=> b!3025509 (= c!499487 ((_ is Star!9413) (regTwo!19338 r!17423)))))

(declare-fun b!3025510 () Bool)

(assert (=> b!3025510 (= e!1897977 call!205580)))

(declare-fun bm!205578 () Bool)

(assert (=> bm!205578 (= call!205585 (simplify!392 (ite c!499487 (reg!9742 (regTwo!19338 r!17423)) (ite c!499481 (regTwo!19339 (regTwo!19338 r!17423)) (regOne!19338 (regTwo!19338 r!17423))))))))

(declare-fun b!3025511 () Bool)

(assert (=> b!3025511 (= e!1897987 EmptyExpr!9413)))

(declare-fun b!3025512 () Bool)

(declare-fun e!1897986 () Regex!9413)

(assert (=> b!3025512 (= e!1897986 (Union!9413 lt!1045221 lt!1045222))))

(declare-fun b!3025513 () Bool)

(declare-fun c!499485 () Bool)

(assert (=> b!3025513 (= c!499485 call!205580)))

(declare-fun e!1897979 () Regex!9413)

(declare-fun e!1897988 () Regex!9413)

(assert (=> b!3025513 (= e!1897979 e!1897988)))

(declare-fun b!3025514 () Bool)

(declare-fun lt!1045224 () Regex!9413)

(assert (=> b!3025514 (= e!1897988 lt!1045224)))

(declare-fun b!3025515 () Bool)

(declare-fun e!1897984 () Bool)

(assert (=> b!3025515 (= e!1897984 call!205579)))

(declare-fun b!3025516 () Bool)

(assert (=> b!3025516 (= e!1897983 (Star!9413 lt!1045223))))

(declare-fun b!3025517 () Bool)

(assert (=> b!3025517 (= e!1897989 e!1897979)))

(assert (=> b!3025517 (= lt!1045219 call!205583)))

(assert (=> b!3025517 (= lt!1045224 call!205584)))

(declare-fun res!1245101 () Bool)

(assert (=> b!3025517 (= res!1245101 call!205582)))

(assert (=> b!3025517 (=> res!1245101 e!1897984)))

(declare-fun c!499484 () Bool)

(assert (=> b!3025517 (= c!499484 e!1897984)))

(declare-fun b!3025518 () Bool)

(assert (=> b!3025518 (= e!1897979 EmptyLang!9413)))

(declare-fun b!3025519 () Bool)

(declare-fun e!1897980 () Regex!9413)

(assert (=> b!3025519 (= e!1897980 (Concat!14734 lt!1045219 lt!1045224))))

(declare-fun b!3025520 () Bool)

(assert (=> b!3025520 (= c!499481 ((_ is Union!9413) (regTwo!19338 r!17423)))))

(assert (=> b!3025520 (= e!1897981 e!1897989)))

(declare-fun b!3025521 () Bool)

(assert (=> b!3025521 (= e!1897978 lt!1045222)))

(declare-fun b!3025522 () Bool)

(declare-fun c!499479 () Bool)

(assert (=> b!3025522 (= c!499479 call!205582)))

(assert (=> b!3025522 (= e!1897978 e!1897986)))

(declare-fun bm!205579 () Bool)

(assert (=> bm!205579 (= call!205583 call!205585)))

(declare-fun d!850266 () Bool)

(assert (=> d!850266 e!1897976))

(declare-fun res!1245102 () Bool)

(assert (=> d!850266 (=> (not res!1245102) (not e!1897976))))

(assert (=> d!850266 (= res!1245102 (validRegex!4146 lt!1045220))))

(assert (=> d!850266 (= lt!1045220 e!1897985)))

(declare-fun c!499482 () Bool)

(assert (=> d!850266 (= c!499482 ((_ is EmptyLang!9413) (regTwo!19338 r!17423)))))

(assert (=> d!850266 (validRegex!4146 (regTwo!19338 r!17423))))

(assert (=> d!850266 (= (simplify!392 (regTwo!19338 r!17423)) lt!1045220)))

(declare-fun b!3025507 () Bool)

(assert (=> b!3025507 (= e!1897986 lt!1045221)))

(declare-fun b!3025523 () Bool)

(assert (=> b!3025523 (= e!1897985 EmptyLang!9413)))

(declare-fun bm!205580 () Bool)

(assert (=> bm!205580 (= call!205579 (isEmptyLang!490 (ite c!499481 lt!1045221 lt!1045224)))))

(declare-fun b!3025524 () Bool)

(assert (=> b!3025524 (= e!1897988 e!1897980)))

(declare-fun c!499486 () Bool)

(assert (=> b!3025524 (= c!499486 (isEmptyExpr!496 lt!1045224))))

(declare-fun b!3025525 () Bool)

(assert (=> b!3025525 (= e!1897980 lt!1045219)))

(declare-fun b!3025526 () Bool)

(assert (=> b!3025526 (= e!1897983 EmptyExpr!9413)))

(assert (= (and d!850266 c!499482) b!3025523))

(assert (= (and d!850266 (not c!499482)) b!3025506))

(assert (= (and b!3025506 c!499480) b!3025503))

(assert (= (and b!3025506 (not c!499480)) b!3025504))

(assert (= (and b!3025504 c!499478) b!3025511))

(assert (= (and b!3025504 (not c!499478)) b!3025509))

(assert (= (and b!3025509 c!499487) b!3025502))

(assert (= (and b!3025509 (not c!499487)) b!3025520))

(assert (= (and b!3025502 (not res!1245103)) b!3025510))

(assert (= (and b!3025502 c!499483) b!3025526))

(assert (= (and b!3025502 (not c!499483)) b!3025516))

(assert (= (and b!3025520 c!499481) b!3025508))

(assert (= (and b!3025520 (not c!499481)) b!3025517))

(assert (= (and b!3025508 c!499488) b!3025521))

(assert (= (and b!3025508 (not c!499488)) b!3025522))

(assert (= (and b!3025522 c!499479) b!3025507))

(assert (= (and b!3025522 (not c!499479)) b!3025512))

(assert (= (and b!3025517 (not res!1245101)) b!3025515))

(assert (= (and b!3025517 c!499484) b!3025518))

(assert (= (and b!3025517 (not c!499484)) b!3025513))

(assert (= (and b!3025513 c!499485) b!3025514))

(assert (= (and b!3025513 (not c!499485)) b!3025524))

(assert (= (and b!3025524 c!499486) b!3025525))

(assert (= (and b!3025524 (not c!499486)) b!3025519))

(assert (= (or b!3025508 b!3025517) bm!205577))

(assert (= (or b!3025508 b!3025517) bm!205579))

(assert (= (or b!3025508 b!3025515) bm!205580))

(assert (= (or b!3025522 b!3025517) bm!205575))

(assert (= (or b!3025510 b!3025513) bm!205574))

(assert (= (or b!3025502 bm!205579) bm!205578))

(assert (= (or b!3025502 bm!205575) bm!205576))

(assert (= (and d!850266 res!1245102) b!3025505))

(declare-fun m!3365061 () Bool)

(assert (=> d!850266 m!3365061))

(declare-fun m!3365063 () Bool)

(assert (=> d!850266 m!3365063))

(declare-fun m!3365065 () Bool)

(assert (=> bm!205574 m!3365065))

(declare-fun m!3365067 () Bool)

(assert (=> bm!205580 m!3365067))

(declare-fun m!3365069 () Bool)

(assert (=> b!3025524 m!3365069))

(declare-fun m!3365071 () Bool)

(assert (=> bm!205577 m!3365071))

(declare-fun m!3365073 () Bool)

(assert (=> bm!205578 m!3365073))

(declare-fun m!3365075 () Bool)

(assert (=> b!3025505 m!3365075))

(declare-fun m!3365077 () Bool)

(assert (=> b!3025505 m!3365077))

(declare-fun m!3365079 () Bool)

(assert (=> bm!205576 m!3365079))

(assert (=> b!3025304 d!850266))

(declare-fun b!3025611 () Bool)

(declare-fun e!1898041 () Bool)

(declare-fun call!205603 () Bool)

(assert (=> b!3025611 (= e!1898041 call!205603)))

(declare-fun b!3025612 () Bool)

(declare-fun e!1898039 () Bool)

(declare-fun call!205601 () Bool)

(assert (=> b!3025612 (= e!1898039 call!205601)))

(declare-fun c!499518 () Bool)

(declare-fun bm!205596 () Bool)

(declare-fun c!499519 () Bool)

(assert (=> bm!205596 (= call!205603 (validRegex!4146 (ite c!499518 (reg!9742 lt!1045180) (ite c!499519 (regOne!19339 lt!1045180) (regTwo!19338 lt!1045180)))))))

(declare-fun b!3025613 () Bool)

(declare-fun e!1898043 () Bool)

(declare-fun call!205602 () Bool)

(assert (=> b!3025613 (= e!1898043 call!205602)))

(declare-fun b!3025614 () Bool)

(declare-fun e!1898040 () Bool)

(assert (=> b!3025614 (= e!1898040 e!1898041)))

(declare-fun res!1245132 () Bool)

(assert (=> b!3025614 (= res!1245132 (not (nullable!3065 (reg!9742 lt!1045180))))))

(assert (=> b!3025614 (=> (not res!1245132) (not e!1898041))))

(declare-fun b!3025615 () Bool)

(declare-fun res!1245133 () Bool)

(assert (=> b!3025615 (=> (not res!1245133) (not e!1898039))))

(assert (=> b!3025615 (= res!1245133 call!205602)))

(declare-fun e!1898044 () Bool)

(assert (=> b!3025615 (= e!1898044 e!1898039)))

(declare-fun b!3025616 () Bool)

(declare-fun e!1898045 () Bool)

(assert (=> b!3025616 (= e!1898045 e!1898043)))

(declare-fun res!1245134 () Bool)

(assert (=> b!3025616 (=> (not res!1245134) (not e!1898043))))

(assert (=> b!3025616 (= res!1245134 call!205601)))

(declare-fun bm!205597 () Bool)

(assert (=> bm!205597 (= call!205602 call!205603)))

(declare-fun bm!205598 () Bool)

(assert (=> bm!205598 (= call!205601 (validRegex!4146 (ite c!499519 (regTwo!19339 lt!1045180) (regOne!19338 lt!1045180))))))

(declare-fun b!3025617 () Bool)

(declare-fun e!1898042 () Bool)

(assert (=> b!3025617 (= e!1898042 e!1898040)))

(assert (=> b!3025617 (= c!499518 ((_ is Star!9413) lt!1045180))))

(declare-fun d!850288 () Bool)

(declare-fun res!1245131 () Bool)

(assert (=> d!850288 (=> res!1245131 e!1898042)))

(assert (=> d!850288 (= res!1245131 ((_ is ElementMatch!9413) lt!1045180))))

(assert (=> d!850288 (= (validRegex!4146 lt!1045180) e!1898042)))

(declare-fun b!3025618 () Bool)

(assert (=> b!3025618 (= e!1898040 e!1898044)))

(assert (=> b!3025618 (= c!499519 ((_ is Union!9413) lt!1045180))))

(declare-fun b!3025619 () Bool)

(declare-fun res!1245130 () Bool)

(assert (=> b!3025619 (=> res!1245130 e!1898045)))

(assert (=> b!3025619 (= res!1245130 (not ((_ is Concat!14734) lt!1045180)))))

(assert (=> b!3025619 (= e!1898044 e!1898045)))

(assert (= (and d!850288 (not res!1245131)) b!3025617))

(assert (= (and b!3025617 c!499518) b!3025614))

(assert (= (and b!3025617 (not c!499518)) b!3025618))

(assert (= (and b!3025614 res!1245132) b!3025611))

(assert (= (and b!3025618 c!499519) b!3025615))

(assert (= (and b!3025618 (not c!499519)) b!3025619))

(assert (= (and b!3025615 res!1245133) b!3025612))

(assert (= (and b!3025619 (not res!1245130)) b!3025616))

(assert (= (and b!3025616 res!1245134) b!3025613))

(assert (= (or b!3025615 b!3025613) bm!205597))

(assert (= (or b!3025612 b!3025616) bm!205598))

(assert (= (or b!3025611 bm!205597) bm!205596))

(declare-fun m!3365101 () Bool)

(assert (=> bm!205596 m!3365101))

(declare-fun m!3365103 () Bool)

(assert (=> b!3025614 m!3365103))

(declare-fun m!3365105 () Bool)

(assert (=> bm!205598 m!3365105))

(assert (=> b!3025304 d!850288))

(declare-fun b!3025791 () Bool)

(declare-fun e!1898146 () Bool)

(declare-fun e!1898145 () Bool)

(assert (=> b!3025791 (= e!1898146 e!1898145)))

(declare-fun c!499565 () Bool)

(assert (=> b!3025791 (= c!499565 ((_ is EmptyLang!9413) lt!1045176))))

(declare-fun b!3025792 () Bool)

(declare-fun res!1245201 () Bool)

(declare-fun e!1898147 () Bool)

(assert (=> b!3025792 (=> res!1245201 e!1898147)))

(assert (=> b!3025792 (= res!1245201 (not ((_ is ElementMatch!9413) lt!1045176)))))

(assert (=> b!3025792 (= e!1898145 e!1898147)))

(declare-fun b!3025793 () Bool)

(declare-fun lt!1045261 () Bool)

(assert (=> b!3025793 (= e!1898145 (not lt!1045261))))

(declare-fun b!3025794 () Bool)

(declare-fun res!1245204 () Bool)

(declare-fun e!1898144 () Bool)

(assert (=> b!3025794 (=> (not res!1245204) (not e!1898144))))

(declare-fun call!205643 () Bool)

(assert (=> b!3025794 (= res!1245204 (not call!205643))))

(declare-fun b!3025796 () Bool)

(declare-fun e!1898149 () Bool)

(declare-fun derivativeStep!2662 (Regex!9413 C!19012) Regex!9413)

(declare-fun head!6721 (List!35278) C!19012)

(declare-fun tail!4947 (List!35278) List!35278)

(assert (=> b!3025796 (= e!1898149 (matchR!4295 (derivativeStep!2662 lt!1045176 (head!6721 (_2!20186 lt!1045184))) (tail!4947 (_2!20186 lt!1045184))))))

(declare-fun b!3025797 () Bool)

(declare-fun e!1898148 () Bool)

(declare-fun e!1898143 () Bool)

(assert (=> b!3025797 (= e!1898148 e!1898143)))

(declare-fun res!1245207 () Bool)

(assert (=> b!3025797 (=> res!1245207 e!1898143)))

(assert (=> b!3025797 (= res!1245207 call!205643)))

(declare-fun b!3025798 () Bool)

(declare-fun res!1245202 () Bool)

(assert (=> b!3025798 (=> res!1245202 e!1898143)))

(assert (=> b!3025798 (= res!1245202 (not (isEmpty!19452 (tail!4947 (_2!20186 lt!1045184)))))))

(declare-fun d!850294 () Bool)

(assert (=> d!850294 e!1898146))

(declare-fun c!499566 () Bool)

(assert (=> d!850294 (= c!499566 ((_ is EmptyExpr!9413) lt!1045176))))

(assert (=> d!850294 (= lt!1045261 e!1898149)))

(declare-fun c!499564 () Bool)

(assert (=> d!850294 (= c!499564 (isEmpty!19452 (_2!20186 lt!1045184)))))

(assert (=> d!850294 (validRegex!4146 lt!1045176)))

(assert (=> d!850294 (= (matchR!4295 lt!1045176 (_2!20186 lt!1045184)) lt!1045261)))

(declare-fun b!3025795 () Bool)

(declare-fun res!1245203 () Bool)

(assert (=> b!3025795 (=> res!1245203 e!1898147)))

(assert (=> b!3025795 (= res!1245203 e!1898144)))

(declare-fun res!1245206 () Bool)

(assert (=> b!3025795 (=> (not res!1245206) (not e!1898144))))

(assert (=> b!3025795 (= res!1245206 lt!1045261)))

(declare-fun b!3025799 () Bool)

(assert (=> b!3025799 (= e!1898144 (= (head!6721 (_2!20186 lt!1045184)) (c!499425 lt!1045176)))))

(declare-fun b!3025800 () Bool)

(assert (=> b!3025800 (= e!1898147 e!1898148)))

(declare-fun res!1245200 () Bool)

(assert (=> b!3025800 (=> (not res!1245200) (not e!1898148))))

(assert (=> b!3025800 (= res!1245200 (not lt!1045261))))

(declare-fun b!3025801 () Bool)

(assert (=> b!3025801 (= e!1898143 (not (= (head!6721 (_2!20186 lt!1045184)) (c!499425 lt!1045176))))))

(declare-fun bm!205638 () Bool)

(assert (=> bm!205638 (= call!205643 (isEmpty!19452 (_2!20186 lt!1045184)))))

(declare-fun b!3025802 () Bool)

(declare-fun res!1245205 () Bool)

(assert (=> b!3025802 (=> (not res!1245205) (not e!1898144))))

(assert (=> b!3025802 (= res!1245205 (isEmpty!19452 (tail!4947 (_2!20186 lt!1045184))))))

(declare-fun b!3025803 () Bool)

(assert (=> b!3025803 (= e!1898149 (nullable!3065 lt!1045176))))

(declare-fun b!3025804 () Bool)

(assert (=> b!3025804 (= e!1898146 (= lt!1045261 call!205643))))

(assert (= (and d!850294 c!499564) b!3025803))

(assert (= (and d!850294 (not c!499564)) b!3025796))

(assert (= (and d!850294 c!499566) b!3025804))

(assert (= (and d!850294 (not c!499566)) b!3025791))

(assert (= (and b!3025791 c!499565) b!3025793))

(assert (= (and b!3025791 (not c!499565)) b!3025792))

(assert (= (and b!3025792 (not res!1245201)) b!3025795))

(assert (= (and b!3025795 res!1245206) b!3025794))

(assert (= (and b!3025794 res!1245204) b!3025802))

(assert (= (and b!3025802 res!1245205) b!3025799))

(assert (= (and b!3025795 (not res!1245203)) b!3025800))

(assert (= (and b!3025800 res!1245200) b!3025797))

(assert (= (and b!3025797 (not res!1245207)) b!3025798))

(assert (= (and b!3025798 (not res!1245202)) b!3025801))

(assert (= (or b!3025804 b!3025794 b!3025797) bm!205638))

(declare-fun m!3365179 () Bool)

(assert (=> b!3025802 m!3365179))

(assert (=> b!3025802 m!3365179))

(declare-fun m!3365181 () Bool)

(assert (=> b!3025802 m!3365181))

(declare-fun m!3365183 () Bool)

(assert (=> b!3025803 m!3365183))

(declare-fun m!3365185 () Bool)

(assert (=> b!3025799 m!3365185))

(assert (=> b!3025796 m!3365185))

(assert (=> b!3025796 m!3365185))

(declare-fun m!3365187 () Bool)

(assert (=> b!3025796 m!3365187))

(assert (=> b!3025796 m!3365179))

(assert (=> b!3025796 m!3365187))

(assert (=> b!3025796 m!3365179))

(declare-fun m!3365189 () Bool)

(assert (=> b!3025796 m!3365189))

(assert (=> b!3025798 m!3365179))

(assert (=> b!3025798 m!3365179))

(assert (=> b!3025798 m!3365181))

(declare-fun m!3365191 () Bool)

(assert (=> bm!205638 m!3365191))

(assert (=> b!3025801 m!3365185))

(assert (=> d!850294 m!3365191))

(assert (=> d!850294 m!3364971))

(assert (=> b!3025304 d!850294))

(declare-fun b!3025822 () Bool)

(declare-fun e!1898159 () Bool)

(declare-fun e!1898158 () Bool)

(assert (=> b!3025822 (= e!1898159 e!1898158)))

(declare-fun c!499568 () Bool)

(assert (=> b!3025822 (= c!499568 ((_ is EmptyLang!9413) lt!1045180))))

(declare-fun b!3025823 () Bool)

(declare-fun res!1245209 () Bool)

(declare-fun e!1898160 () Bool)

(assert (=> b!3025823 (=> res!1245209 e!1898160)))

(assert (=> b!3025823 (= res!1245209 (not ((_ is ElementMatch!9413) lt!1045180)))))

(assert (=> b!3025823 (= e!1898158 e!1898160)))

(declare-fun b!3025824 () Bool)

(declare-fun lt!1045262 () Bool)

(assert (=> b!3025824 (= e!1898158 (not lt!1045262))))

(declare-fun b!3025825 () Bool)

(declare-fun res!1245212 () Bool)

(declare-fun e!1898157 () Bool)

(assert (=> b!3025825 (=> (not res!1245212) (not e!1898157))))

(declare-fun call!205644 () Bool)

(assert (=> b!3025825 (= res!1245212 (not call!205644))))

(declare-fun b!3025827 () Bool)

(declare-fun e!1898162 () Bool)

(assert (=> b!3025827 (= e!1898162 (matchR!4295 (derivativeStep!2662 lt!1045180 (head!6721 (_1!20186 lt!1045184))) (tail!4947 (_1!20186 lt!1045184))))))

(declare-fun b!3025828 () Bool)

(declare-fun e!1898161 () Bool)

(declare-fun e!1898156 () Bool)

(assert (=> b!3025828 (= e!1898161 e!1898156)))

(declare-fun res!1245215 () Bool)

(assert (=> b!3025828 (=> res!1245215 e!1898156)))

(assert (=> b!3025828 (= res!1245215 call!205644)))

(declare-fun b!3025829 () Bool)

(declare-fun res!1245210 () Bool)

(assert (=> b!3025829 (=> res!1245210 e!1898156)))

(assert (=> b!3025829 (= res!1245210 (not (isEmpty!19452 (tail!4947 (_1!20186 lt!1045184)))))))

(declare-fun d!850314 () Bool)

(assert (=> d!850314 e!1898159))

(declare-fun c!499569 () Bool)

(assert (=> d!850314 (= c!499569 ((_ is EmptyExpr!9413) lt!1045180))))

(assert (=> d!850314 (= lt!1045262 e!1898162)))

(declare-fun c!499567 () Bool)

(assert (=> d!850314 (= c!499567 (isEmpty!19452 (_1!20186 lt!1045184)))))

(assert (=> d!850314 (validRegex!4146 lt!1045180)))

(assert (=> d!850314 (= (matchR!4295 lt!1045180 (_1!20186 lt!1045184)) lt!1045262)))

(declare-fun b!3025826 () Bool)

(declare-fun res!1245211 () Bool)

(assert (=> b!3025826 (=> res!1245211 e!1898160)))

(assert (=> b!3025826 (= res!1245211 e!1898157)))

(declare-fun res!1245214 () Bool)

(assert (=> b!3025826 (=> (not res!1245214) (not e!1898157))))

(assert (=> b!3025826 (= res!1245214 lt!1045262)))

(declare-fun b!3025830 () Bool)

(assert (=> b!3025830 (= e!1898157 (= (head!6721 (_1!20186 lt!1045184)) (c!499425 lt!1045180)))))

(declare-fun b!3025831 () Bool)

(assert (=> b!3025831 (= e!1898160 e!1898161)))

(declare-fun res!1245208 () Bool)

(assert (=> b!3025831 (=> (not res!1245208) (not e!1898161))))

(assert (=> b!3025831 (= res!1245208 (not lt!1045262))))

(declare-fun b!3025832 () Bool)

(assert (=> b!3025832 (= e!1898156 (not (= (head!6721 (_1!20186 lt!1045184)) (c!499425 lt!1045180))))))

(declare-fun bm!205639 () Bool)

(assert (=> bm!205639 (= call!205644 (isEmpty!19452 (_1!20186 lt!1045184)))))

(declare-fun b!3025833 () Bool)

(declare-fun res!1245213 () Bool)

(assert (=> b!3025833 (=> (not res!1245213) (not e!1898157))))

(assert (=> b!3025833 (= res!1245213 (isEmpty!19452 (tail!4947 (_1!20186 lt!1045184))))))

(declare-fun b!3025834 () Bool)

(assert (=> b!3025834 (= e!1898162 (nullable!3065 lt!1045180))))

(declare-fun b!3025835 () Bool)

(assert (=> b!3025835 (= e!1898159 (= lt!1045262 call!205644))))

(assert (= (and d!850314 c!499567) b!3025834))

(assert (= (and d!850314 (not c!499567)) b!3025827))

(assert (= (and d!850314 c!499569) b!3025835))

(assert (= (and d!850314 (not c!499569)) b!3025822))

(assert (= (and b!3025822 c!499568) b!3025824))

(assert (= (and b!3025822 (not c!499568)) b!3025823))

(assert (= (and b!3025823 (not res!1245209)) b!3025826))

(assert (= (and b!3025826 res!1245214) b!3025825))

(assert (= (and b!3025825 res!1245212) b!3025833))

(assert (= (and b!3025833 res!1245213) b!3025830))

(assert (= (and b!3025826 (not res!1245211)) b!3025831))

(assert (= (and b!3025831 res!1245208) b!3025828))

(assert (= (and b!3025828 (not res!1245215)) b!3025829))

(assert (= (and b!3025829 (not res!1245210)) b!3025832))

(assert (= (or b!3025835 b!3025825 b!3025828) bm!205639))

(declare-fun m!3365193 () Bool)

(assert (=> b!3025833 m!3365193))

(assert (=> b!3025833 m!3365193))

(declare-fun m!3365195 () Bool)

(assert (=> b!3025833 m!3365195))

(declare-fun m!3365197 () Bool)

(assert (=> b!3025834 m!3365197))

(declare-fun m!3365199 () Bool)

(assert (=> b!3025830 m!3365199))

(assert (=> b!3025827 m!3365199))

(assert (=> b!3025827 m!3365199))

(declare-fun m!3365201 () Bool)

(assert (=> b!3025827 m!3365201))

(assert (=> b!3025827 m!3365193))

(assert (=> b!3025827 m!3365201))

(assert (=> b!3025827 m!3365193))

(declare-fun m!3365203 () Bool)

(assert (=> b!3025827 m!3365203))

(assert (=> b!3025829 m!3365193))

(assert (=> b!3025829 m!3365193))

(assert (=> b!3025829 m!3365195))

(declare-fun m!3365205 () Bool)

(assert (=> bm!205639 m!3365205))

(assert (=> b!3025832 m!3365199))

(assert (=> d!850314 m!3365205))

(assert (=> d!850314 m!3364961))

(assert (=> b!3025304 d!850314))

(declare-fun b!3025836 () Bool)

(declare-fun c!499575 () Bool)

(declare-fun e!1898164 () Bool)

(assert (=> b!3025836 (= c!499575 e!1898164)))

(declare-fun res!1245218 () Bool)

(assert (=> b!3025836 (=> res!1245218 e!1898164)))

(declare-fun call!205647 () Bool)

(assert (=> b!3025836 (= res!1245218 call!205647)))

(declare-fun lt!1045267 () Regex!9413)

(declare-fun call!205651 () Regex!9413)

(assert (=> b!3025836 (= lt!1045267 call!205651)))

(declare-fun e!1898168 () Regex!9413)

(declare-fun e!1898170 () Regex!9413)

(assert (=> b!3025836 (= e!1898168 e!1898170)))

(declare-fun b!3025837 () Bool)

(declare-fun e!1898169 () Regex!9413)

(assert (=> b!3025837 (= e!1898169 (regOne!19338 r!17423))))

(declare-fun b!3025838 () Bool)

(declare-fun c!499570 () Bool)

(assert (=> b!3025838 (= c!499570 ((_ is EmptyExpr!9413) (regOne!19338 r!17423)))))

(declare-fun e!1898174 () Regex!9413)

(assert (=> b!3025838 (= e!1898169 e!1898174)))

(declare-fun c!499579 () Bool)

(declare-fun call!205646 () Bool)

(declare-fun bm!205640 () Bool)

(declare-fun lt!1045263 () Regex!9413)

(assert (=> bm!205640 (= call!205646 (isEmptyExpr!496 (ite c!499579 lt!1045267 lt!1045263)))))

(declare-fun bm!205641 () Bool)

(declare-fun call!205648 () Bool)

(assert (=> bm!205641 (= call!205648 call!205647)))

(declare-fun b!3025839 () Bool)

(declare-fun e!1898163 () Bool)

(declare-fun lt!1045264 () Regex!9413)

(assert (=> b!3025839 (= e!1898163 (= (nullable!3065 lt!1045264) (nullable!3065 (regOne!19338 r!17423))))))

(declare-fun lt!1045266 () Regex!9413)

(declare-fun c!499573 () Bool)

(declare-fun bm!205642 () Bool)

(assert (=> bm!205642 (= call!205647 (isEmptyLang!490 (ite c!499579 lt!1045267 (ite c!499573 lt!1045266 lt!1045263))))))

(declare-fun b!3025840 () Bool)

(declare-fun e!1898172 () Regex!9413)

(assert (=> b!3025840 (= e!1898172 e!1898169)))

(declare-fun c!499572 () Bool)

(assert (=> b!3025840 (= c!499572 ((_ is ElementMatch!9413) (regOne!19338 r!17423)))))

(declare-fun bm!205643 () Bool)

(declare-fun call!205650 () Regex!9413)

(assert (=> bm!205643 (= call!205650 (simplify!392 (ite c!499573 (regOne!19339 (regOne!19338 r!17423)) (regTwo!19338 (regOne!19338 r!17423)))))))

(declare-fun b!3025842 () Bool)

(declare-fun e!1898176 () Regex!9413)

(declare-fun e!1898165 () Regex!9413)

(assert (=> b!3025842 (= e!1898176 e!1898165)))

(declare-fun lt!1045265 () Regex!9413)

(assert (=> b!3025842 (= lt!1045265 call!205650)))

(declare-fun call!205649 () Regex!9413)

(assert (=> b!3025842 (= lt!1045266 call!205649)))

(declare-fun c!499580 () Bool)

(declare-fun call!205645 () Bool)

(assert (=> b!3025842 (= c!499580 call!205645)))

(declare-fun b!3025843 () Bool)

(assert (=> b!3025843 (= e!1898174 e!1898168)))

(assert (=> b!3025843 (= c!499579 ((_ is Star!9413) (regOne!19338 r!17423)))))

(declare-fun b!3025844 () Bool)

(assert (=> b!3025844 (= e!1898164 call!205646)))

(declare-fun bm!205644 () Bool)

(assert (=> bm!205644 (= call!205651 (simplify!392 (ite c!499579 (reg!9742 (regOne!19338 r!17423)) (ite c!499573 (regTwo!19339 (regOne!19338 r!17423)) (regOne!19338 (regOne!19338 r!17423))))))))

(declare-fun b!3025845 () Bool)

(assert (=> b!3025845 (= e!1898174 EmptyExpr!9413)))

(declare-fun b!3025846 () Bool)

(declare-fun e!1898173 () Regex!9413)

(assert (=> b!3025846 (= e!1898173 (Union!9413 lt!1045265 lt!1045266))))

(declare-fun b!3025847 () Bool)

(declare-fun c!499577 () Bool)

(assert (=> b!3025847 (= c!499577 call!205646)))

(declare-fun e!1898166 () Regex!9413)

(declare-fun e!1898175 () Regex!9413)

(assert (=> b!3025847 (= e!1898166 e!1898175)))

(declare-fun b!3025848 () Bool)

(declare-fun lt!1045268 () Regex!9413)

(assert (=> b!3025848 (= e!1898175 lt!1045268)))

(declare-fun b!3025849 () Bool)

(declare-fun e!1898171 () Bool)

(assert (=> b!3025849 (= e!1898171 call!205645)))

(declare-fun b!3025850 () Bool)

(assert (=> b!3025850 (= e!1898170 (Star!9413 lt!1045267))))

(declare-fun b!3025851 () Bool)

(assert (=> b!3025851 (= e!1898176 e!1898166)))

(assert (=> b!3025851 (= lt!1045263 call!205649)))

(assert (=> b!3025851 (= lt!1045268 call!205650)))

(declare-fun res!1245216 () Bool)

(assert (=> b!3025851 (= res!1245216 call!205648)))

(assert (=> b!3025851 (=> res!1245216 e!1898171)))

(declare-fun c!499576 () Bool)

(assert (=> b!3025851 (= c!499576 e!1898171)))

(declare-fun b!3025852 () Bool)

(assert (=> b!3025852 (= e!1898166 EmptyLang!9413)))

(declare-fun b!3025853 () Bool)

(declare-fun e!1898167 () Regex!9413)

(assert (=> b!3025853 (= e!1898167 (Concat!14734 lt!1045263 lt!1045268))))

(declare-fun b!3025854 () Bool)

(assert (=> b!3025854 (= c!499573 ((_ is Union!9413) (regOne!19338 r!17423)))))

(assert (=> b!3025854 (= e!1898168 e!1898176)))

(declare-fun b!3025855 () Bool)

(assert (=> b!3025855 (= e!1898165 lt!1045266)))

(declare-fun b!3025856 () Bool)

(declare-fun c!499571 () Bool)

(assert (=> b!3025856 (= c!499571 call!205648)))

(assert (=> b!3025856 (= e!1898165 e!1898173)))

(declare-fun bm!205645 () Bool)

(assert (=> bm!205645 (= call!205649 call!205651)))

(declare-fun d!850316 () Bool)

(assert (=> d!850316 e!1898163))

(declare-fun res!1245217 () Bool)

(assert (=> d!850316 (=> (not res!1245217) (not e!1898163))))

(assert (=> d!850316 (= res!1245217 (validRegex!4146 lt!1045264))))

(assert (=> d!850316 (= lt!1045264 e!1898172)))

(declare-fun c!499574 () Bool)

(assert (=> d!850316 (= c!499574 ((_ is EmptyLang!9413) (regOne!19338 r!17423)))))

(assert (=> d!850316 (validRegex!4146 (regOne!19338 r!17423))))

(assert (=> d!850316 (= (simplify!392 (regOne!19338 r!17423)) lt!1045264)))

(declare-fun b!3025841 () Bool)

(assert (=> b!3025841 (= e!1898173 lt!1045265)))

(declare-fun b!3025857 () Bool)

(assert (=> b!3025857 (= e!1898172 EmptyLang!9413)))

(declare-fun bm!205646 () Bool)

(assert (=> bm!205646 (= call!205645 (isEmptyLang!490 (ite c!499573 lt!1045265 lt!1045268)))))

(declare-fun b!3025858 () Bool)

(assert (=> b!3025858 (= e!1898175 e!1898167)))

(declare-fun c!499578 () Bool)

(assert (=> b!3025858 (= c!499578 (isEmptyExpr!496 lt!1045268))))

(declare-fun b!3025859 () Bool)

(assert (=> b!3025859 (= e!1898167 lt!1045263)))

(declare-fun b!3025860 () Bool)

(assert (=> b!3025860 (= e!1898170 EmptyExpr!9413)))

(assert (= (and d!850316 c!499574) b!3025857))

(assert (= (and d!850316 (not c!499574)) b!3025840))

(assert (= (and b!3025840 c!499572) b!3025837))

(assert (= (and b!3025840 (not c!499572)) b!3025838))

(assert (= (and b!3025838 c!499570) b!3025845))

(assert (= (and b!3025838 (not c!499570)) b!3025843))

(assert (= (and b!3025843 c!499579) b!3025836))

(assert (= (and b!3025843 (not c!499579)) b!3025854))

(assert (= (and b!3025836 (not res!1245218)) b!3025844))

(assert (= (and b!3025836 c!499575) b!3025860))

(assert (= (and b!3025836 (not c!499575)) b!3025850))

(assert (= (and b!3025854 c!499573) b!3025842))

(assert (= (and b!3025854 (not c!499573)) b!3025851))

(assert (= (and b!3025842 c!499580) b!3025855))

(assert (= (and b!3025842 (not c!499580)) b!3025856))

(assert (= (and b!3025856 c!499571) b!3025841))

(assert (= (and b!3025856 (not c!499571)) b!3025846))

(assert (= (and b!3025851 (not res!1245216)) b!3025849))

(assert (= (and b!3025851 c!499576) b!3025852))

(assert (= (and b!3025851 (not c!499576)) b!3025847))

(assert (= (and b!3025847 c!499577) b!3025848))

(assert (= (and b!3025847 (not c!499577)) b!3025858))

(assert (= (and b!3025858 c!499578) b!3025859))

(assert (= (and b!3025858 (not c!499578)) b!3025853))

(assert (= (or b!3025842 b!3025851) bm!205643))

(assert (= (or b!3025842 b!3025851) bm!205645))

(assert (= (or b!3025842 b!3025849) bm!205646))

(assert (= (or b!3025856 b!3025851) bm!205641))

(assert (= (or b!3025844 b!3025847) bm!205640))

(assert (= (or b!3025836 bm!205645) bm!205644))

(assert (= (or b!3025836 bm!205641) bm!205642))

(assert (= (and d!850316 res!1245217) b!3025839))

(declare-fun m!3365207 () Bool)

(assert (=> d!850316 m!3365207))

(assert (=> d!850316 m!3364985))

(declare-fun m!3365209 () Bool)

(assert (=> bm!205640 m!3365209))

(declare-fun m!3365211 () Bool)

(assert (=> bm!205646 m!3365211))

(declare-fun m!3365213 () Bool)

(assert (=> b!3025858 m!3365213))

(declare-fun m!3365215 () Bool)

(assert (=> bm!205643 m!3365215))

(declare-fun m!3365217 () Bool)

(assert (=> bm!205644 m!3365217))

(declare-fun m!3365219 () Bool)

(assert (=> b!3025839 m!3365219))

(declare-fun m!3365221 () Bool)

(assert (=> b!3025839 m!3365221))

(declare-fun m!3365223 () Bool)

(assert (=> bm!205642 m!3365223))

(assert (=> b!3025304 d!850316))

(declare-fun d!850318 () Bool)

(assert (=> d!850318 (= (matchR!4295 (regTwo!19338 r!17423) (_2!20186 lt!1045184)) (matchR!4295 (simplify!392 (regTwo!19338 r!17423)) (_2!20186 lt!1045184)))))

(declare-fun lt!1045269 () Unit!49249)

(assert (=> d!850318 (= lt!1045269 (choose!17936 (regTwo!19338 r!17423) (_2!20186 lt!1045184)))))

(assert (=> d!850318 (validRegex!4146 (regTwo!19338 r!17423))))

(assert (=> d!850318 (= (lemmaSimplifySound!240 (regTwo!19338 r!17423) (_2!20186 lt!1045184)) lt!1045269)))

(declare-fun bs!530603 () Bool)

(assert (= bs!530603 d!850318))

(assert (=> bs!530603 m!3365063))

(assert (=> bs!530603 m!3364959))

(declare-fun m!3365225 () Bool)

(assert (=> bs!530603 m!3365225))

(declare-fun m!3365227 () Bool)

(assert (=> bs!530603 m!3365227))

(assert (=> bs!530603 m!3364959))

(assert (=> bs!530603 m!3364977))

(assert (=> b!3025304 d!850318))

(declare-fun b!3025861 () Bool)

(declare-fun e!1898180 () Bool)

(declare-fun e!1898179 () Bool)

(assert (=> b!3025861 (= e!1898180 e!1898179)))

(declare-fun c!499582 () Bool)

(assert (=> b!3025861 (= c!499582 ((_ is EmptyLang!9413) (regTwo!19338 r!17423)))))

(declare-fun b!3025862 () Bool)

(declare-fun res!1245220 () Bool)

(declare-fun e!1898181 () Bool)

(assert (=> b!3025862 (=> res!1245220 e!1898181)))

(assert (=> b!3025862 (= res!1245220 (not ((_ is ElementMatch!9413) (regTwo!19338 r!17423))))))

(assert (=> b!3025862 (= e!1898179 e!1898181)))

(declare-fun b!3025863 () Bool)

(declare-fun lt!1045270 () Bool)

(assert (=> b!3025863 (= e!1898179 (not lt!1045270))))

(declare-fun b!3025864 () Bool)

(declare-fun res!1245223 () Bool)

(declare-fun e!1898178 () Bool)

(assert (=> b!3025864 (=> (not res!1245223) (not e!1898178))))

(declare-fun call!205652 () Bool)

(assert (=> b!3025864 (= res!1245223 (not call!205652))))

(declare-fun b!3025866 () Bool)

(declare-fun e!1898183 () Bool)

(assert (=> b!3025866 (= e!1898183 (matchR!4295 (derivativeStep!2662 (regTwo!19338 r!17423) (head!6721 (_2!20186 lt!1045184))) (tail!4947 (_2!20186 lt!1045184))))))

(declare-fun b!3025867 () Bool)

(declare-fun e!1898182 () Bool)

(declare-fun e!1898177 () Bool)

(assert (=> b!3025867 (= e!1898182 e!1898177)))

(declare-fun res!1245226 () Bool)

(assert (=> b!3025867 (=> res!1245226 e!1898177)))

(assert (=> b!3025867 (= res!1245226 call!205652)))

(declare-fun b!3025868 () Bool)

(declare-fun res!1245221 () Bool)

(assert (=> b!3025868 (=> res!1245221 e!1898177)))

(assert (=> b!3025868 (= res!1245221 (not (isEmpty!19452 (tail!4947 (_2!20186 lt!1045184)))))))

(declare-fun d!850320 () Bool)

(assert (=> d!850320 e!1898180))

(declare-fun c!499583 () Bool)

(assert (=> d!850320 (= c!499583 ((_ is EmptyExpr!9413) (regTwo!19338 r!17423)))))

(assert (=> d!850320 (= lt!1045270 e!1898183)))

(declare-fun c!499581 () Bool)

(assert (=> d!850320 (= c!499581 (isEmpty!19452 (_2!20186 lt!1045184)))))

(assert (=> d!850320 (validRegex!4146 (regTwo!19338 r!17423))))

(assert (=> d!850320 (= (matchR!4295 (regTwo!19338 r!17423) (_2!20186 lt!1045184)) lt!1045270)))

(declare-fun b!3025865 () Bool)

(declare-fun res!1245222 () Bool)

(assert (=> b!3025865 (=> res!1245222 e!1898181)))

(assert (=> b!3025865 (= res!1245222 e!1898178)))

(declare-fun res!1245225 () Bool)

(assert (=> b!3025865 (=> (not res!1245225) (not e!1898178))))

(assert (=> b!3025865 (= res!1245225 lt!1045270)))

(declare-fun b!3025869 () Bool)

(assert (=> b!3025869 (= e!1898178 (= (head!6721 (_2!20186 lt!1045184)) (c!499425 (regTwo!19338 r!17423))))))

(declare-fun b!3025870 () Bool)

(assert (=> b!3025870 (= e!1898181 e!1898182)))

(declare-fun res!1245219 () Bool)

(assert (=> b!3025870 (=> (not res!1245219) (not e!1898182))))

(assert (=> b!3025870 (= res!1245219 (not lt!1045270))))

(declare-fun b!3025871 () Bool)

(assert (=> b!3025871 (= e!1898177 (not (= (head!6721 (_2!20186 lt!1045184)) (c!499425 (regTwo!19338 r!17423)))))))

(declare-fun bm!205647 () Bool)

(assert (=> bm!205647 (= call!205652 (isEmpty!19452 (_2!20186 lt!1045184)))))

(declare-fun b!3025872 () Bool)

(declare-fun res!1245224 () Bool)

(assert (=> b!3025872 (=> (not res!1245224) (not e!1898178))))

(assert (=> b!3025872 (= res!1245224 (isEmpty!19452 (tail!4947 (_2!20186 lt!1045184))))))

(declare-fun b!3025873 () Bool)

(assert (=> b!3025873 (= e!1898183 (nullable!3065 (regTwo!19338 r!17423)))))

(declare-fun b!3025874 () Bool)

(assert (=> b!3025874 (= e!1898180 (= lt!1045270 call!205652))))

(assert (= (and d!850320 c!499581) b!3025873))

(assert (= (and d!850320 (not c!499581)) b!3025866))

(assert (= (and d!850320 c!499583) b!3025874))

(assert (= (and d!850320 (not c!499583)) b!3025861))

(assert (= (and b!3025861 c!499582) b!3025863))

(assert (= (and b!3025861 (not c!499582)) b!3025862))

(assert (= (and b!3025862 (not res!1245220)) b!3025865))

(assert (= (and b!3025865 res!1245225) b!3025864))

(assert (= (and b!3025864 res!1245223) b!3025872))

(assert (= (and b!3025872 res!1245224) b!3025869))

(assert (= (and b!3025865 (not res!1245222)) b!3025870))

(assert (= (and b!3025870 res!1245219) b!3025867))

(assert (= (and b!3025867 (not res!1245226)) b!3025868))

(assert (= (and b!3025868 (not res!1245221)) b!3025871))

(assert (= (or b!3025874 b!3025864 b!3025867) bm!205647))

(assert (=> b!3025872 m!3365179))

(assert (=> b!3025872 m!3365179))

(assert (=> b!3025872 m!3365181))

(assert (=> b!3025873 m!3365077))

(assert (=> b!3025869 m!3365185))

(assert (=> b!3025866 m!3365185))

(assert (=> b!3025866 m!3365185))

(declare-fun m!3365229 () Bool)

(assert (=> b!3025866 m!3365229))

(assert (=> b!3025866 m!3365179))

(assert (=> b!3025866 m!3365229))

(assert (=> b!3025866 m!3365179))

(declare-fun m!3365231 () Bool)

(assert (=> b!3025866 m!3365231))

(assert (=> b!3025868 m!3365179))

(assert (=> b!3025868 m!3365179))

(assert (=> b!3025868 m!3365181))

(assert (=> bm!205647 m!3365191))

(assert (=> b!3025871 m!3365185))

(assert (=> d!850320 m!3365191))

(assert (=> d!850320 m!3365063))

(assert (=> b!3025310 d!850320))

(declare-fun b!3025875 () Bool)

(declare-fun e!1898186 () Bool)

(declare-fun call!205655 () Bool)

(assert (=> b!3025875 (= e!1898186 call!205655)))

(declare-fun b!3025876 () Bool)

(declare-fun e!1898184 () Bool)

(declare-fun call!205653 () Bool)

(assert (=> b!3025876 (= e!1898184 call!205653)))

(declare-fun bm!205648 () Bool)

(declare-fun c!499584 () Bool)

(declare-fun c!499585 () Bool)

(assert (=> bm!205648 (= call!205655 (validRegex!4146 (ite c!499584 (reg!9742 r!17423) (ite c!499585 (regOne!19339 r!17423) (regTwo!19338 r!17423)))))))

(declare-fun b!3025877 () Bool)

(declare-fun e!1898188 () Bool)

(declare-fun call!205654 () Bool)

(assert (=> b!3025877 (= e!1898188 call!205654)))

(declare-fun b!3025878 () Bool)

(declare-fun e!1898185 () Bool)

(assert (=> b!3025878 (= e!1898185 e!1898186)))

(declare-fun res!1245229 () Bool)

(assert (=> b!3025878 (= res!1245229 (not (nullable!3065 (reg!9742 r!17423))))))

(assert (=> b!3025878 (=> (not res!1245229) (not e!1898186))))

(declare-fun b!3025879 () Bool)

(declare-fun res!1245230 () Bool)

(assert (=> b!3025879 (=> (not res!1245230) (not e!1898184))))

(assert (=> b!3025879 (= res!1245230 call!205654)))

(declare-fun e!1898189 () Bool)

(assert (=> b!3025879 (= e!1898189 e!1898184)))

(declare-fun b!3025880 () Bool)

(declare-fun e!1898190 () Bool)

(assert (=> b!3025880 (= e!1898190 e!1898188)))

(declare-fun res!1245231 () Bool)

(assert (=> b!3025880 (=> (not res!1245231) (not e!1898188))))

(assert (=> b!3025880 (= res!1245231 call!205653)))

(declare-fun bm!205649 () Bool)

(assert (=> bm!205649 (= call!205654 call!205655)))

(declare-fun bm!205650 () Bool)

(assert (=> bm!205650 (= call!205653 (validRegex!4146 (ite c!499585 (regTwo!19339 r!17423) (regOne!19338 r!17423))))))

(declare-fun b!3025881 () Bool)

(declare-fun e!1898187 () Bool)

(assert (=> b!3025881 (= e!1898187 e!1898185)))

(assert (=> b!3025881 (= c!499584 ((_ is Star!9413) r!17423))))

(declare-fun d!850322 () Bool)

(declare-fun res!1245228 () Bool)

(assert (=> d!850322 (=> res!1245228 e!1898187)))

(assert (=> d!850322 (= res!1245228 ((_ is ElementMatch!9413) r!17423))))

(assert (=> d!850322 (= (validRegex!4146 r!17423) e!1898187)))

(declare-fun b!3025882 () Bool)

(assert (=> b!3025882 (= e!1898185 e!1898189)))

(assert (=> b!3025882 (= c!499585 ((_ is Union!9413) r!17423))))

(declare-fun b!3025883 () Bool)

(declare-fun res!1245227 () Bool)

(assert (=> b!3025883 (=> res!1245227 e!1898190)))

(assert (=> b!3025883 (= res!1245227 (not ((_ is Concat!14734) r!17423)))))

(assert (=> b!3025883 (= e!1898189 e!1898190)))

(assert (= (and d!850322 (not res!1245228)) b!3025881))

(assert (= (and b!3025881 c!499584) b!3025878))

(assert (= (and b!3025881 (not c!499584)) b!3025882))

(assert (= (and b!3025878 res!1245229) b!3025875))

(assert (= (and b!3025882 c!499585) b!3025879))

(assert (= (and b!3025882 (not c!499585)) b!3025883))

(assert (= (and b!3025879 res!1245230) b!3025876))

(assert (= (and b!3025883 (not res!1245227)) b!3025880))

(assert (= (and b!3025880 res!1245231) b!3025877))

(assert (= (or b!3025879 b!3025877) bm!205649))

(assert (= (or b!3025876 b!3025880) bm!205650))

(assert (= (or b!3025875 bm!205649) bm!205648))

(declare-fun m!3365233 () Bool)

(assert (=> bm!205648 m!3365233))

(declare-fun m!3365235 () Bool)

(assert (=> b!3025878 m!3365235))

(declare-fun m!3365237 () Bool)

(assert (=> bm!205650 m!3365237))

(assert (=> start!290492 d!850322))

(declare-fun d!850324 () Bool)

(assert (=> d!850324 (= (isEmpty!19452 s!11993) ((_ is Nil!35154) s!11993))))

(assert (=> b!3025308 d!850324))

(declare-fun bs!530604 () Bool)

(declare-fun b!3025926 () Bool)

(assert (= bs!530604 (and b!3025926 b!3025307)))

(declare-fun lambda!113048 () Int)

(assert (=> bs!530604 (not (= lambda!113048 lambda!113027))))

(assert (=> bs!530604 (not (= lambda!113048 lambda!113028))))

(assert (=> b!3025926 true))

(assert (=> b!3025926 true))

(declare-fun bs!530605 () Bool)

(declare-fun b!3025916 () Bool)

(assert (= bs!530605 (and b!3025916 b!3025307)))

(declare-fun lambda!113049 () Int)

(assert (=> bs!530605 (not (= lambda!113049 lambda!113027))))

(assert (=> bs!530605 (= lambda!113049 lambda!113028)))

(declare-fun bs!530606 () Bool)

(assert (= bs!530606 (and b!3025916 b!3025926)))

(assert (=> bs!530606 (not (= lambda!113049 lambda!113048))))

(assert (=> b!3025916 true))

(assert (=> b!3025916 true))

(declare-fun e!1898209 () Bool)

(declare-fun call!205660 () Bool)

(assert (=> b!3025916 (= e!1898209 call!205660)))

(declare-fun bm!205655 () Bool)

(declare-fun call!205661 () Bool)

(assert (=> bm!205655 (= call!205661 (isEmpty!19452 s!11993))))

(declare-fun b!3025917 () Bool)

(declare-fun e!1898215 () Bool)

(declare-fun e!1898213 () Bool)

(assert (=> b!3025917 (= e!1898215 e!1898213)))

(declare-fun res!1245250 () Bool)

(assert (=> b!3025917 (= res!1245250 (not ((_ is EmptyLang!9413) r!17423)))))

(assert (=> b!3025917 (=> (not res!1245250) (not e!1898213))))

(declare-fun b!3025918 () Bool)

(declare-fun e!1898211 () Bool)

(assert (=> b!3025918 (= e!1898211 (matchRSpec!1550 (regTwo!19339 r!17423) s!11993))))

(declare-fun d!850326 () Bool)

(declare-fun c!499597 () Bool)

(assert (=> d!850326 (= c!499597 ((_ is EmptyExpr!9413) r!17423))))

(assert (=> d!850326 (= (matchRSpec!1550 r!17423 s!11993) e!1898215)))

(declare-fun b!3025919 () Bool)

(declare-fun e!1898210 () Bool)

(assert (=> b!3025919 (= e!1898210 e!1898211)))

(declare-fun res!1245248 () Bool)

(assert (=> b!3025919 (= res!1245248 (matchRSpec!1550 (regOne!19339 r!17423) s!11993))))

(assert (=> b!3025919 (=> res!1245248 e!1898211)))

(declare-fun b!3025920 () Bool)

(declare-fun c!499594 () Bool)

(assert (=> b!3025920 (= c!499594 ((_ is Union!9413) r!17423))))

(declare-fun e!1898212 () Bool)

(assert (=> b!3025920 (= e!1898212 e!1898210)))

(declare-fun b!3025921 () Bool)

(assert (=> b!3025921 (= e!1898215 call!205661)))

(declare-fun b!3025922 () Bool)

(declare-fun res!1245249 () Bool)

(declare-fun e!1898214 () Bool)

(assert (=> b!3025922 (=> res!1245249 e!1898214)))

(assert (=> b!3025922 (= res!1245249 call!205661)))

(assert (=> b!3025922 (= e!1898209 e!1898214)))

(declare-fun b!3025923 () Bool)

(assert (=> b!3025923 (= e!1898212 (= s!11993 (Cons!35154 (c!499425 r!17423) Nil!35154)))))

(declare-fun bm!205656 () Bool)

(declare-fun c!499596 () Bool)

(assert (=> bm!205656 (= call!205660 (Exists!1681 (ite c!499596 lambda!113048 lambda!113049)))))

(declare-fun b!3025924 () Bool)

(declare-fun c!499595 () Bool)

(assert (=> b!3025924 (= c!499595 ((_ is ElementMatch!9413) r!17423))))

(assert (=> b!3025924 (= e!1898213 e!1898212)))

(declare-fun b!3025925 () Bool)

(assert (=> b!3025925 (= e!1898210 e!1898209)))

(assert (=> b!3025925 (= c!499596 ((_ is Star!9413) r!17423))))

(assert (=> b!3025926 (= e!1898214 call!205660)))

(assert (= (and d!850326 c!499597) b!3025921))

(assert (= (and d!850326 (not c!499597)) b!3025917))

(assert (= (and b!3025917 res!1245250) b!3025924))

(assert (= (and b!3025924 c!499595) b!3025923))

(assert (= (and b!3025924 (not c!499595)) b!3025920))

(assert (= (and b!3025920 c!499594) b!3025919))

(assert (= (and b!3025920 (not c!499594)) b!3025925))

(assert (= (and b!3025919 (not res!1245248)) b!3025918))

(assert (= (and b!3025925 c!499596) b!3025922))

(assert (= (and b!3025925 (not c!499596)) b!3025916))

(assert (= (and b!3025922 (not res!1245249)) b!3025926))

(assert (= (or b!3025926 b!3025916) bm!205656))

(assert (= (or b!3025921 b!3025922) bm!205655))

(assert (=> bm!205655 m!3364973))

(declare-fun m!3365239 () Bool)

(assert (=> b!3025918 m!3365239))

(declare-fun m!3365241 () Bool)

(assert (=> b!3025919 m!3365241))

(declare-fun m!3365243 () Bool)

(assert (=> bm!205656 m!3365243))

(assert (=> b!3025303 d!850326))

(declare-fun b!3025927 () Bool)

(declare-fun e!1898219 () Bool)

(declare-fun e!1898218 () Bool)

(assert (=> b!3025927 (= e!1898219 e!1898218)))

(declare-fun c!499599 () Bool)

(assert (=> b!3025927 (= c!499599 ((_ is EmptyLang!9413) r!17423))))

(declare-fun b!3025928 () Bool)

(declare-fun res!1245252 () Bool)

(declare-fun e!1898220 () Bool)

(assert (=> b!3025928 (=> res!1245252 e!1898220)))

(assert (=> b!3025928 (= res!1245252 (not ((_ is ElementMatch!9413) r!17423)))))

(assert (=> b!3025928 (= e!1898218 e!1898220)))

(declare-fun b!3025929 () Bool)

(declare-fun lt!1045271 () Bool)

(assert (=> b!3025929 (= e!1898218 (not lt!1045271))))

(declare-fun b!3025930 () Bool)

(declare-fun res!1245255 () Bool)

(declare-fun e!1898217 () Bool)

(assert (=> b!3025930 (=> (not res!1245255) (not e!1898217))))

(declare-fun call!205662 () Bool)

(assert (=> b!3025930 (= res!1245255 (not call!205662))))

(declare-fun b!3025932 () Bool)

(declare-fun e!1898222 () Bool)

(assert (=> b!3025932 (= e!1898222 (matchR!4295 (derivativeStep!2662 r!17423 (head!6721 s!11993)) (tail!4947 s!11993)))))

(declare-fun b!3025933 () Bool)

(declare-fun e!1898221 () Bool)

(declare-fun e!1898216 () Bool)

(assert (=> b!3025933 (= e!1898221 e!1898216)))

(declare-fun res!1245258 () Bool)

(assert (=> b!3025933 (=> res!1245258 e!1898216)))

(assert (=> b!3025933 (= res!1245258 call!205662)))

(declare-fun b!3025934 () Bool)

(declare-fun res!1245253 () Bool)

(assert (=> b!3025934 (=> res!1245253 e!1898216)))

(assert (=> b!3025934 (= res!1245253 (not (isEmpty!19452 (tail!4947 s!11993))))))

(declare-fun d!850328 () Bool)

(assert (=> d!850328 e!1898219))

(declare-fun c!499600 () Bool)

(assert (=> d!850328 (= c!499600 ((_ is EmptyExpr!9413) r!17423))))

(assert (=> d!850328 (= lt!1045271 e!1898222)))

(declare-fun c!499598 () Bool)

(assert (=> d!850328 (= c!499598 (isEmpty!19452 s!11993))))

(assert (=> d!850328 (validRegex!4146 r!17423)))

(assert (=> d!850328 (= (matchR!4295 r!17423 s!11993) lt!1045271)))

(declare-fun b!3025931 () Bool)

(declare-fun res!1245254 () Bool)

(assert (=> b!3025931 (=> res!1245254 e!1898220)))

(assert (=> b!3025931 (= res!1245254 e!1898217)))

(declare-fun res!1245257 () Bool)

(assert (=> b!3025931 (=> (not res!1245257) (not e!1898217))))

(assert (=> b!3025931 (= res!1245257 lt!1045271)))

(declare-fun b!3025935 () Bool)

(assert (=> b!3025935 (= e!1898217 (= (head!6721 s!11993) (c!499425 r!17423)))))

(declare-fun b!3025936 () Bool)

(assert (=> b!3025936 (= e!1898220 e!1898221)))

(declare-fun res!1245251 () Bool)

(assert (=> b!3025936 (=> (not res!1245251) (not e!1898221))))

(assert (=> b!3025936 (= res!1245251 (not lt!1045271))))

(declare-fun b!3025937 () Bool)

(assert (=> b!3025937 (= e!1898216 (not (= (head!6721 s!11993) (c!499425 r!17423))))))

(declare-fun bm!205657 () Bool)

(assert (=> bm!205657 (= call!205662 (isEmpty!19452 s!11993))))

(declare-fun b!3025938 () Bool)

(declare-fun res!1245256 () Bool)

(assert (=> b!3025938 (=> (not res!1245256) (not e!1898217))))

(assert (=> b!3025938 (= res!1245256 (isEmpty!19452 (tail!4947 s!11993)))))

(declare-fun b!3025939 () Bool)

(assert (=> b!3025939 (= e!1898222 (nullable!3065 r!17423))))

(declare-fun b!3025940 () Bool)

(assert (=> b!3025940 (= e!1898219 (= lt!1045271 call!205662))))

(assert (= (and d!850328 c!499598) b!3025939))

(assert (= (and d!850328 (not c!499598)) b!3025932))

(assert (= (and d!850328 c!499600) b!3025940))

(assert (= (and d!850328 (not c!499600)) b!3025927))

(assert (= (and b!3025927 c!499599) b!3025929))

(assert (= (and b!3025927 (not c!499599)) b!3025928))

(assert (= (and b!3025928 (not res!1245252)) b!3025931))

(assert (= (and b!3025931 res!1245257) b!3025930))

(assert (= (and b!3025930 res!1245255) b!3025938))

(assert (= (and b!3025938 res!1245256) b!3025935))

(assert (= (and b!3025931 (not res!1245254)) b!3025936))

(assert (= (and b!3025936 res!1245251) b!3025933))

(assert (= (and b!3025933 (not res!1245258)) b!3025934))

(assert (= (and b!3025934 (not res!1245253)) b!3025937))

(assert (= (or b!3025940 b!3025930 b!3025933) bm!205657))

(declare-fun m!3365245 () Bool)

(assert (=> b!3025938 m!3365245))

(assert (=> b!3025938 m!3365245))

(declare-fun m!3365247 () Bool)

(assert (=> b!3025938 m!3365247))

(declare-fun m!3365249 () Bool)

(assert (=> b!3025939 m!3365249))

(declare-fun m!3365251 () Bool)

(assert (=> b!3025935 m!3365251))

(assert (=> b!3025932 m!3365251))

(assert (=> b!3025932 m!3365251))

(declare-fun m!3365253 () Bool)

(assert (=> b!3025932 m!3365253))

(assert (=> b!3025932 m!3365245))

(assert (=> b!3025932 m!3365253))

(assert (=> b!3025932 m!3365245))

(declare-fun m!3365255 () Bool)

(assert (=> b!3025932 m!3365255))

(assert (=> b!3025934 m!3365245))

(assert (=> b!3025934 m!3365245))

(assert (=> b!3025934 m!3365247))

(assert (=> bm!205657 m!3364973))

(assert (=> b!3025937 m!3365251))

(assert (=> d!850328 m!3364973))

(assert (=> d!850328 m!3364975))

(assert (=> b!3025303 d!850328))

(declare-fun d!850330 () Bool)

(assert (=> d!850330 (= (matchR!4295 r!17423 s!11993) (matchRSpec!1550 r!17423 s!11993))))

(declare-fun lt!1045274 () Unit!49249)

(declare-fun choose!17938 (Regex!9413 List!35278) Unit!49249)

(assert (=> d!850330 (= lt!1045274 (choose!17938 r!17423 s!11993))))

(assert (=> d!850330 (validRegex!4146 r!17423)))

(assert (=> d!850330 (= (mainMatchTheorem!1550 r!17423 s!11993) lt!1045274)))

(declare-fun bs!530607 () Bool)

(assert (= bs!530607 d!850330))

(assert (=> bs!530607 m!3364981))

(assert (=> bs!530607 m!3364979))

(declare-fun m!3365257 () Bool)

(assert (=> bs!530607 m!3365257))

(assert (=> bs!530607 m!3364975))

(assert (=> b!3025303 d!850330))

(declare-fun bs!530608 () Bool)

(declare-fun d!850332 () Bool)

(assert (= bs!530608 (and d!850332 b!3025307)))

(declare-fun lambda!113054 () Int)

(assert (=> bs!530608 (= lambda!113054 lambda!113027)))

(assert (=> bs!530608 (not (= lambda!113054 lambda!113028))))

(declare-fun bs!530609 () Bool)

(assert (= bs!530609 (and d!850332 b!3025926)))

(assert (=> bs!530609 (not (= lambda!113054 lambda!113048))))

(declare-fun bs!530610 () Bool)

(assert (= bs!530610 (and d!850332 b!3025916)))

(assert (=> bs!530610 (not (= lambda!113054 lambda!113049))))

(assert (=> d!850332 true))

(assert (=> d!850332 true))

(assert (=> d!850332 true))

(declare-fun lambda!113055 () Int)

(assert (=> bs!530608 (not (= lambda!113055 lambda!113027))))

(assert (=> bs!530610 (= lambda!113055 lambda!113049)))

(assert (=> bs!530609 (not (= lambda!113055 lambda!113048))))

(declare-fun bs!530611 () Bool)

(assert (= bs!530611 d!850332))

(assert (=> bs!530611 (not (= lambda!113055 lambda!113054))))

(assert (=> bs!530608 (= lambda!113055 lambda!113028)))

(assert (=> d!850332 true))

(assert (=> d!850332 true))

(assert (=> d!850332 true))

(assert (=> d!850332 (= (Exists!1681 lambda!113054) (Exists!1681 lambda!113055))))

(declare-fun lt!1045277 () Unit!49249)

(declare-fun choose!17939 (Regex!9413 Regex!9413 List!35278) Unit!49249)

(assert (=> d!850332 (= lt!1045277 (choose!17939 (regOne!19338 r!17423) (regTwo!19338 r!17423) s!11993))))

(assert (=> d!850332 (validRegex!4146 (regOne!19338 r!17423))))

(assert (=> d!850332 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!554 (regOne!19338 r!17423) (regTwo!19338 r!17423) s!11993) lt!1045277)))

(declare-fun m!3365259 () Bool)

(assert (=> bs!530611 m!3365259))

(declare-fun m!3365261 () Bool)

(assert (=> bs!530611 m!3365261))

(declare-fun m!3365263 () Bool)

(assert (=> bs!530611 m!3365263))

(assert (=> bs!530611 m!3364985))

(assert (=> b!3025307 d!850332))

(declare-fun d!850334 () Bool)

(declare-fun isEmpty!19454 (Option!6786) Bool)

(assert (=> d!850334 (= (isDefined!5337 lt!1045178) (not (isEmpty!19454 lt!1045178)))))

(declare-fun bs!530612 () Bool)

(assert (= bs!530612 d!850334))

(declare-fun m!3365265 () Bool)

(assert (=> bs!530612 m!3365265))

(assert (=> b!3025307 d!850334))

(declare-fun d!850336 () Bool)

(assert (=> d!850336 (= (get!10959 lt!1045178) (v!34919 lt!1045178))))

(assert (=> b!3025307 d!850336))

(declare-fun d!850338 () Bool)

(declare-fun choose!17940 (Int) Bool)

(assert (=> d!850338 (= (Exists!1681 lambda!113027) (choose!17940 lambda!113027))))

(declare-fun bs!530613 () Bool)

(assert (= bs!530613 d!850338))

(declare-fun m!3365267 () Bool)

(assert (=> bs!530613 m!3365267))

(assert (=> b!3025307 d!850338))

(declare-fun b!3025949 () Bool)

(declare-fun e!1898230 () Bool)

(declare-fun e!1898229 () Bool)

(assert (=> b!3025949 (= e!1898230 e!1898229)))

(declare-fun c!499602 () Bool)

(assert (=> b!3025949 (= c!499602 ((_ is EmptyLang!9413) (regOne!19338 r!17423)))))

(declare-fun b!3025950 () Bool)

(declare-fun res!1245268 () Bool)

(declare-fun e!1898231 () Bool)

(assert (=> b!3025950 (=> res!1245268 e!1898231)))

(assert (=> b!3025950 (= res!1245268 (not ((_ is ElementMatch!9413) (regOne!19338 r!17423))))))

(assert (=> b!3025950 (= e!1898229 e!1898231)))

(declare-fun b!3025951 () Bool)

(declare-fun lt!1045278 () Bool)

(assert (=> b!3025951 (= e!1898229 (not lt!1045278))))

(declare-fun b!3025952 () Bool)

(declare-fun res!1245271 () Bool)

(declare-fun e!1898228 () Bool)

(assert (=> b!3025952 (=> (not res!1245271) (not e!1898228))))

(declare-fun call!205663 () Bool)

(assert (=> b!3025952 (= res!1245271 (not call!205663))))

(declare-fun b!3025954 () Bool)

(declare-fun e!1898233 () Bool)

(assert (=> b!3025954 (= e!1898233 (matchR!4295 (derivativeStep!2662 (regOne!19338 r!17423) (head!6721 (_1!20186 lt!1045184))) (tail!4947 (_1!20186 lt!1045184))))))

(declare-fun b!3025955 () Bool)

(declare-fun e!1898232 () Bool)

(declare-fun e!1898227 () Bool)

(assert (=> b!3025955 (= e!1898232 e!1898227)))

(declare-fun res!1245274 () Bool)

(assert (=> b!3025955 (=> res!1245274 e!1898227)))

(assert (=> b!3025955 (= res!1245274 call!205663)))

(declare-fun b!3025956 () Bool)

(declare-fun res!1245269 () Bool)

(assert (=> b!3025956 (=> res!1245269 e!1898227)))

(assert (=> b!3025956 (= res!1245269 (not (isEmpty!19452 (tail!4947 (_1!20186 lt!1045184)))))))

(declare-fun d!850340 () Bool)

(assert (=> d!850340 e!1898230))

(declare-fun c!499603 () Bool)

(assert (=> d!850340 (= c!499603 ((_ is EmptyExpr!9413) (regOne!19338 r!17423)))))

(assert (=> d!850340 (= lt!1045278 e!1898233)))

(declare-fun c!499601 () Bool)

(assert (=> d!850340 (= c!499601 (isEmpty!19452 (_1!20186 lt!1045184)))))

(assert (=> d!850340 (validRegex!4146 (regOne!19338 r!17423))))

(assert (=> d!850340 (= (matchR!4295 (regOne!19338 r!17423) (_1!20186 lt!1045184)) lt!1045278)))

(declare-fun b!3025953 () Bool)

(declare-fun res!1245270 () Bool)

(assert (=> b!3025953 (=> res!1245270 e!1898231)))

(assert (=> b!3025953 (= res!1245270 e!1898228)))

(declare-fun res!1245273 () Bool)

(assert (=> b!3025953 (=> (not res!1245273) (not e!1898228))))

(assert (=> b!3025953 (= res!1245273 lt!1045278)))

(declare-fun b!3025957 () Bool)

(assert (=> b!3025957 (= e!1898228 (= (head!6721 (_1!20186 lt!1045184)) (c!499425 (regOne!19338 r!17423))))))

(declare-fun b!3025958 () Bool)

(assert (=> b!3025958 (= e!1898231 e!1898232)))

(declare-fun res!1245267 () Bool)

(assert (=> b!3025958 (=> (not res!1245267) (not e!1898232))))

(assert (=> b!3025958 (= res!1245267 (not lt!1045278))))

(declare-fun b!3025959 () Bool)

(assert (=> b!3025959 (= e!1898227 (not (= (head!6721 (_1!20186 lt!1045184)) (c!499425 (regOne!19338 r!17423)))))))

(declare-fun bm!205658 () Bool)

(assert (=> bm!205658 (= call!205663 (isEmpty!19452 (_1!20186 lt!1045184)))))

(declare-fun b!3025960 () Bool)

(declare-fun res!1245272 () Bool)

(assert (=> b!3025960 (=> (not res!1245272) (not e!1898228))))

(assert (=> b!3025960 (= res!1245272 (isEmpty!19452 (tail!4947 (_1!20186 lt!1045184))))))

(declare-fun b!3025961 () Bool)

(assert (=> b!3025961 (= e!1898233 (nullable!3065 (regOne!19338 r!17423)))))

(declare-fun b!3025962 () Bool)

(assert (=> b!3025962 (= e!1898230 (= lt!1045278 call!205663))))

(assert (= (and d!850340 c!499601) b!3025961))

(assert (= (and d!850340 (not c!499601)) b!3025954))

(assert (= (and d!850340 c!499603) b!3025962))

(assert (= (and d!850340 (not c!499603)) b!3025949))

(assert (= (and b!3025949 c!499602) b!3025951))

(assert (= (and b!3025949 (not c!499602)) b!3025950))

(assert (= (and b!3025950 (not res!1245268)) b!3025953))

(assert (= (and b!3025953 res!1245273) b!3025952))

(assert (= (and b!3025952 res!1245271) b!3025960))

(assert (= (and b!3025960 res!1245272) b!3025957))

(assert (= (and b!3025953 (not res!1245270)) b!3025958))

(assert (= (and b!3025958 res!1245267) b!3025955))

(assert (= (and b!3025955 (not res!1245274)) b!3025956))

(assert (= (and b!3025956 (not res!1245269)) b!3025959))

(assert (= (or b!3025962 b!3025952 b!3025955) bm!205658))

(assert (=> b!3025960 m!3365193))

(assert (=> b!3025960 m!3365193))

(assert (=> b!3025960 m!3365195))

(assert (=> b!3025961 m!3365221))

(assert (=> b!3025957 m!3365199))

(assert (=> b!3025954 m!3365199))

(assert (=> b!3025954 m!3365199))

(declare-fun m!3365269 () Bool)

(assert (=> b!3025954 m!3365269))

(assert (=> b!3025954 m!3365193))

(assert (=> b!3025954 m!3365269))

(assert (=> b!3025954 m!3365193))

(declare-fun m!3365271 () Bool)

(assert (=> b!3025954 m!3365271))

(assert (=> b!3025956 m!3365193))

(assert (=> b!3025956 m!3365193))

(assert (=> b!3025956 m!3365195))

(assert (=> bm!205658 m!3365205))

(assert (=> b!3025959 m!3365199))

(assert (=> d!850340 m!3365205))

(assert (=> d!850340 m!3364985))

(assert (=> b!3025307 d!850340))

(declare-fun d!850342 () Bool)

(assert (=> d!850342 (= (Exists!1681 lambda!113028) (choose!17940 lambda!113028))))

(declare-fun bs!530614 () Bool)

(assert (= bs!530614 d!850342))

(declare-fun m!3365273 () Bool)

(assert (=> bs!530614 m!3365273))

(assert (=> b!3025307 d!850342))

(declare-fun b!3025981 () Bool)

(declare-fun e!1898248 () Option!6786)

(declare-fun e!1898244 () Option!6786)

(assert (=> b!3025981 (= e!1898248 e!1898244)))

(declare-fun c!499608 () Bool)

(assert (=> b!3025981 (= c!499608 ((_ is Nil!35154) s!11993))))

(declare-fun b!3025982 () Bool)

(declare-fun e!1898246 () Bool)

(declare-fun lt!1045287 () Option!6786)

(assert (=> b!3025982 (= e!1898246 (not (isDefined!5337 lt!1045287)))))

(declare-fun b!3025983 () Bool)

(declare-fun lt!1045285 () Unit!49249)

(declare-fun lt!1045286 () Unit!49249)

(assert (=> b!3025983 (= lt!1045285 lt!1045286)))

(declare-fun ++!8432 (List!35278 List!35278) List!35278)

(assert (=> b!3025983 (= (++!8432 (++!8432 Nil!35154 (Cons!35154 (h!40574 s!11993) Nil!35154)) (t!234343 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1039 (List!35278 C!19012 List!35278 List!35278) Unit!49249)

(assert (=> b!3025983 (= lt!1045286 (lemmaMoveElementToOtherListKeepsConcatEq!1039 Nil!35154 (h!40574 s!11993) (t!234343 s!11993) s!11993))))

(assert (=> b!3025983 (= e!1898244 (findConcatSeparation!1180 (regOne!19338 r!17423) (regTwo!19338 r!17423) (++!8432 Nil!35154 (Cons!35154 (h!40574 s!11993) Nil!35154)) (t!234343 s!11993) s!11993))))

(declare-fun b!3025984 () Bool)

(declare-fun e!1898245 () Bool)

(assert (=> b!3025984 (= e!1898245 (= (++!8432 (_1!20186 (get!10959 lt!1045287)) (_2!20186 (get!10959 lt!1045287))) s!11993))))

(declare-fun b!3025985 () Bool)

(assert (=> b!3025985 (= e!1898244 None!6785)))

(declare-fun d!850344 () Bool)

(assert (=> d!850344 e!1898246))

(declare-fun res!1245285 () Bool)

(assert (=> d!850344 (=> res!1245285 e!1898246)))

(assert (=> d!850344 (= res!1245285 e!1898245)))

(declare-fun res!1245287 () Bool)

(assert (=> d!850344 (=> (not res!1245287) (not e!1898245))))

(assert (=> d!850344 (= res!1245287 (isDefined!5337 lt!1045287))))

(assert (=> d!850344 (= lt!1045287 e!1898248)))

(declare-fun c!499609 () Bool)

(declare-fun e!1898247 () Bool)

(assert (=> d!850344 (= c!499609 e!1898247)))

(declare-fun res!1245286 () Bool)

(assert (=> d!850344 (=> (not res!1245286) (not e!1898247))))

(assert (=> d!850344 (= res!1245286 (matchR!4295 (regOne!19338 r!17423) Nil!35154))))

(assert (=> d!850344 (validRegex!4146 (regOne!19338 r!17423))))

(assert (=> d!850344 (= (findConcatSeparation!1180 (regOne!19338 r!17423) (regTwo!19338 r!17423) Nil!35154 s!11993 s!11993) lt!1045287)))

(declare-fun b!3025986 () Bool)

(declare-fun res!1245288 () Bool)

(assert (=> b!3025986 (=> (not res!1245288) (not e!1898245))))

(assert (=> b!3025986 (= res!1245288 (matchR!4295 (regOne!19338 r!17423) (_1!20186 (get!10959 lt!1045287))))))

(declare-fun b!3025987 () Bool)

(assert (=> b!3025987 (= e!1898247 (matchR!4295 (regTwo!19338 r!17423) s!11993))))

(declare-fun b!3025988 () Bool)

(assert (=> b!3025988 (= e!1898248 (Some!6785 (tuple2!34109 Nil!35154 s!11993)))))

(declare-fun b!3025989 () Bool)

(declare-fun res!1245289 () Bool)

(assert (=> b!3025989 (=> (not res!1245289) (not e!1898245))))

(assert (=> b!3025989 (= res!1245289 (matchR!4295 (regTwo!19338 r!17423) (_2!20186 (get!10959 lt!1045287))))))

(assert (= (and d!850344 res!1245286) b!3025987))

(assert (= (and d!850344 c!499609) b!3025988))

(assert (= (and d!850344 (not c!499609)) b!3025981))

(assert (= (and b!3025981 c!499608) b!3025985))

(assert (= (and b!3025981 (not c!499608)) b!3025983))

(assert (= (and d!850344 res!1245287) b!3025986))

(assert (= (and b!3025986 res!1245288) b!3025989))

(assert (= (and b!3025989 res!1245289) b!3025984))

(assert (= (and d!850344 (not res!1245285)) b!3025982))

(declare-fun m!3365275 () Bool)

(assert (=> b!3025983 m!3365275))

(assert (=> b!3025983 m!3365275))

(declare-fun m!3365277 () Bool)

(assert (=> b!3025983 m!3365277))

(declare-fun m!3365279 () Bool)

(assert (=> b!3025983 m!3365279))

(assert (=> b!3025983 m!3365275))

(declare-fun m!3365281 () Bool)

(assert (=> b!3025983 m!3365281))

(declare-fun m!3365283 () Bool)

(assert (=> d!850344 m!3365283))

(declare-fun m!3365285 () Bool)

(assert (=> d!850344 m!3365285))

(assert (=> d!850344 m!3364985))

(assert (=> b!3025982 m!3365283))

(declare-fun m!3365287 () Bool)

(assert (=> b!3025986 m!3365287))

(declare-fun m!3365289 () Bool)

(assert (=> b!3025986 m!3365289))

(declare-fun m!3365291 () Bool)

(assert (=> b!3025987 m!3365291))

(assert (=> b!3025984 m!3365287))

(declare-fun m!3365293 () Bool)

(assert (=> b!3025984 m!3365293))

(assert (=> b!3025989 m!3365287))

(declare-fun m!3365295 () Bool)

(assert (=> b!3025989 m!3365295))

(assert (=> b!3025307 d!850344))

(declare-fun bs!530615 () Bool)

(declare-fun d!850346 () Bool)

(assert (= bs!530615 (and d!850346 b!3025307)))

(declare-fun lambda!113058 () Int)

(assert (=> bs!530615 (= lambda!113058 lambda!113027)))

(declare-fun bs!530616 () Bool)

(assert (= bs!530616 (and d!850346 d!850332)))

(assert (=> bs!530616 (not (= lambda!113058 lambda!113055))))

(declare-fun bs!530617 () Bool)

(assert (= bs!530617 (and d!850346 b!3025916)))

(assert (=> bs!530617 (not (= lambda!113058 lambda!113049))))

(declare-fun bs!530618 () Bool)

(assert (= bs!530618 (and d!850346 b!3025926)))

(assert (=> bs!530618 (not (= lambda!113058 lambda!113048))))

(assert (=> bs!530616 (= lambda!113058 lambda!113054)))

(assert (=> bs!530615 (not (= lambda!113058 lambda!113028))))

(assert (=> d!850346 true))

(assert (=> d!850346 true))

(assert (=> d!850346 true))

(assert (=> d!850346 (= (isDefined!5337 (findConcatSeparation!1180 (regOne!19338 r!17423) (regTwo!19338 r!17423) Nil!35154 s!11993 s!11993)) (Exists!1681 lambda!113058))))

(declare-fun lt!1045290 () Unit!49249)

(declare-fun choose!17941 (Regex!9413 Regex!9413 List!35278) Unit!49249)

(assert (=> d!850346 (= lt!1045290 (choose!17941 (regOne!19338 r!17423) (regTwo!19338 r!17423) s!11993))))

(assert (=> d!850346 (validRegex!4146 (regOne!19338 r!17423))))

(assert (=> d!850346 (= (lemmaFindConcatSeparationEquivalentToExists!958 (regOne!19338 r!17423) (regTwo!19338 r!17423) s!11993) lt!1045290)))

(declare-fun bs!530619 () Bool)

(assert (= bs!530619 d!850346))

(declare-fun m!3365297 () Bool)

(assert (=> bs!530619 m!3365297))

(assert (=> bs!530619 m!3364947))

(declare-fun m!3365299 () Bool)

(assert (=> bs!530619 m!3365299))

(assert (=> bs!530619 m!3364947))

(declare-fun m!3365301 () Bool)

(assert (=> bs!530619 m!3365301))

(assert (=> bs!530619 m!3364985))

(assert (=> b!3025307 d!850346))

(declare-fun b!3025994 () Bool)

(declare-fun e!1898253 () Bool)

(declare-fun call!205666 () Bool)

(assert (=> b!3025994 (= e!1898253 call!205666)))

(declare-fun b!3025995 () Bool)

(declare-fun e!1898251 () Bool)

(declare-fun call!205664 () Bool)

(assert (=> b!3025995 (= e!1898251 call!205664)))

(declare-fun c!499611 () Bool)

(declare-fun c!499610 () Bool)

(declare-fun bm!205659 () Bool)

(assert (=> bm!205659 (= call!205666 (validRegex!4146 (ite c!499610 (reg!9742 lt!1045176) (ite c!499611 (regOne!19339 lt!1045176) (regTwo!19338 lt!1045176)))))))

(declare-fun b!3025996 () Bool)

(declare-fun e!1898255 () Bool)

(declare-fun call!205665 () Bool)

(assert (=> b!3025996 (= e!1898255 call!205665)))

(declare-fun b!3025997 () Bool)

(declare-fun e!1898252 () Bool)

(assert (=> b!3025997 (= e!1898252 e!1898253)))

(declare-fun res!1245296 () Bool)

(assert (=> b!3025997 (= res!1245296 (not (nullable!3065 (reg!9742 lt!1045176))))))

(assert (=> b!3025997 (=> (not res!1245296) (not e!1898253))))

(declare-fun b!3025998 () Bool)

(declare-fun res!1245297 () Bool)

(assert (=> b!3025998 (=> (not res!1245297) (not e!1898251))))

(assert (=> b!3025998 (= res!1245297 call!205665)))

(declare-fun e!1898256 () Bool)

(assert (=> b!3025998 (= e!1898256 e!1898251)))

(declare-fun b!3025999 () Bool)

(declare-fun e!1898257 () Bool)

(assert (=> b!3025999 (= e!1898257 e!1898255)))

(declare-fun res!1245298 () Bool)

(assert (=> b!3025999 (=> (not res!1245298) (not e!1898255))))

(assert (=> b!3025999 (= res!1245298 call!205664)))

(declare-fun bm!205660 () Bool)

(assert (=> bm!205660 (= call!205665 call!205666)))

(declare-fun bm!205661 () Bool)

(assert (=> bm!205661 (= call!205664 (validRegex!4146 (ite c!499611 (regTwo!19339 lt!1045176) (regOne!19338 lt!1045176))))))

(declare-fun b!3026000 () Bool)

(declare-fun e!1898254 () Bool)

(assert (=> b!3026000 (= e!1898254 e!1898252)))

(assert (=> b!3026000 (= c!499610 ((_ is Star!9413) lt!1045176))))

(declare-fun d!850348 () Bool)

(declare-fun res!1245295 () Bool)

(assert (=> d!850348 (=> res!1245295 e!1898254)))

(assert (=> d!850348 (= res!1245295 ((_ is ElementMatch!9413) lt!1045176))))

(assert (=> d!850348 (= (validRegex!4146 lt!1045176) e!1898254)))

(declare-fun b!3026001 () Bool)

(assert (=> b!3026001 (= e!1898252 e!1898256)))

(assert (=> b!3026001 (= c!499611 ((_ is Union!9413) lt!1045176))))

(declare-fun b!3026002 () Bool)

(declare-fun res!1245294 () Bool)

(assert (=> b!3026002 (=> res!1245294 e!1898257)))

(assert (=> b!3026002 (= res!1245294 (not ((_ is Concat!14734) lt!1045176)))))

(assert (=> b!3026002 (= e!1898256 e!1898257)))

(assert (= (and d!850348 (not res!1245295)) b!3026000))

(assert (= (and b!3026000 c!499610) b!3025997))

(assert (= (and b!3026000 (not c!499610)) b!3026001))

(assert (= (and b!3025997 res!1245296) b!3025994))

(assert (= (and b!3026001 c!499611) b!3025998))

(assert (= (and b!3026001 (not c!499611)) b!3026002))

(assert (= (and b!3025998 res!1245297) b!3025995))

(assert (= (and b!3026002 (not res!1245294)) b!3025999))

(assert (= (and b!3025999 res!1245298) b!3025996))

(assert (= (or b!3025998 b!3025996) bm!205660))

(assert (= (or b!3025995 b!3025999) bm!205661))

(assert (= (or b!3025994 bm!205660) bm!205659))

(declare-fun m!3365303 () Bool)

(assert (=> bm!205659 m!3365303))

(declare-fun m!3365305 () Bool)

(assert (=> b!3025997 m!3365305))

(declare-fun m!3365307 () Bool)

(assert (=> bm!205661 m!3365307))

(assert (=> b!3025306 d!850348))

(declare-fun e!1898260 () Bool)

(assert (=> b!3025309 (= tp!959647 e!1898260)))

(declare-fun b!3026013 () Bool)

(assert (=> b!3026013 (= e!1898260 tp_is_empty!16389)))

(declare-fun b!3026015 () Bool)

(declare-fun tp!959702 () Bool)

(assert (=> b!3026015 (= e!1898260 tp!959702)))

(declare-fun b!3026014 () Bool)

(declare-fun tp!959699 () Bool)

(declare-fun tp!959698 () Bool)

(assert (=> b!3026014 (= e!1898260 (and tp!959699 tp!959698))))

(declare-fun b!3026016 () Bool)

(declare-fun tp!959701 () Bool)

(declare-fun tp!959700 () Bool)

(assert (=> b!3026016 (= e!1898260 (and tp!959701 tp!959700))))

(assert (= (and b!3025309 ((_ is ElementMatch!9413) (reg!9742 r!17423))) b!3026013))

(assert (= (and b!3025309 ((_ is Concat!14734) (reg!9742 r!17423))) b!3026014))

(assert (= (and b!3025309 ((_ is Star!9413) (reg!9742 r!17423))) b!3026015))

(assert (= (and b!3025309 ((_ is Union!9413) (reg!9742 r!17423))) b!3026016))

(declare-fun b!3026021 () Bool)

(declare-fun e!1898263 () Bool)

(declare-fun tp!959705 () Bool)

(assert (=> b!3026021 (= e!1898263 (and tp_is_empty!16389 tp!959705))))

(assert (=> b!3025312 (= tp!959645 e!1898263)))

(assert (= (and b!3025312 ((_ is Cons!35154) (t!234343 s!11993))) b!3026021))

(declare-fun e!1898264 () Bool)

(assert (=> b!3025305 (= tp!959649 e!1898264)))

(declare-fun b!3026022 () Bool)

(assert (=> b!3026022 (= e!1898264 tp_is_empty!16389)))

(declare-fun b!3026024 () Bool)

(declare-fun tp!959710 () Bool)

(assert (=> b!3026024 (= e!1898264 tp!959710)))

(declare-fun b!3026023 () Bool)

(declare-fun tp!959707 () Bool)

(declare-fun tp!959706 () Bool)

(assert (=> b!3026023 (= e!1898264 (and tp!959707 tp!959706))))

(declare-fun b!3026025 () Bool)

(declare-fun tp!959709 () Bool)

(declare-fun tp!959708 () Bool)

(assert (=> b!3026025 (= e!1898264 (and tp!959709 tp!959708))))

(assert (= (and b!3025305 ((_ is ElementMatch!9413) (regOne!19338 r!17423))) b!3026022))

(assert (= (and b!3025305 ((_ is Concat!14734) (regOne!19338 r!17423))) b!3026023))

(assert (= (and b!3025305 ((_ is Star!9413) (regOne!19338 r!17423))) b!3026024))

(assert (= (and b!3025305 ((_ is Union!9413) (regOne!19338 r!17423))) b!3026025))

(declare-fun e!1898265 () Bool)

(assert (=> b!3025305 (= tp!959648 e!1898265)))

(declare-fun b!3026026 () Bool)

(assert (=> b!3026026 (= e!1898265 tp_is_empty!16389)))

(declare-fun b!3026028 () Bool)

(declare-fun tp!959715 () Bool)

(assert (=> b!3026028 (= e!1898265 tp!959715)))

(declare-fun b!3026027 () Bool)

(declare-fun tp!959712 () Bool)

(declare-fun tp!959711 () Bool)

(assert (=> b!3026027 (= e!1898265 (and tp!959712 tp!959711))))

(declare-fun b!3026029 () Bool)

(declare-fun tp!959714 () Bool)

(declare-fun tp!959713 () Bool)

(assert (=> b!3026029 (= e!1898265 (and tp!959714 tp!959713))))

(assert (= (and b!3025305 ((_ is ElementMatch!9413) (regTwo!19338 r!17423))) b!3026026))

(assert (= (and b!3025305 ((_ is Concat!14734) (regTwo!19338 r!17423))) b!3026027))

(assert (= (and b!3025305 ((_ is Star!9413) (regTwo!19338 r!17423))) b!3026028))

(assert (= (and b!3025305 ((_ is Union!9413) (regTwo!19338 r!17423))) b!3026029))

(declare-fun e!1898266 () Bool)

(assert (=> b!3025311 (= tp!959644 e!1898266)))

(declare-fun b!3026030 () Bool)

(assert (=> b!3026030 (= e!1898266 tp_is_empty!16389)))

(declare-fun b!3026032 () Bool)

(declare-fun tp!959720 () Bool)

(assert (=> b!3026032 (= e!1898266 tp!959720)))

(declare-fun b!3026031 () Bool)

(declare-fun tp!959717 () Bool)

(declare-fun tp!959716 () Bool)

(assert (=> b!3026031 (= e!1898266 (and tp!959717 tp!959716))))

(declare-fun b!3026033 () Bool)

(declare-fun tp!959719 () Bool)

(declare-fun tp!959718 () Bool)

(assert (=> b!3026033 (= e!1898266 (and tp!959719 tp!959718))))

(assert (= (and b!3025311 ((_ is ElementMatch!9413) (regOne!19339 r!17423))) b!3026030))

(assert (= (and b!3025311 ((_ is Concat!14734) (regOne!19339 r!17423))) b!3026031))

(assert (= (and b!3025311 ((_ is Star!9413) (regOne!19339 r!17423))) b!3026032))

(assert (= (and b!3025311 ((_ is Union!9413) (regOne!19339 r!17423))) b!3026033))

(declare-fun e!1898267 () Bool)

(assert (=> b!3025311 (= tp!959646 e!1898267)))

(declare-fun b!3026034 () Bool)

(assert (=> b!3026034 (= e!1898267 tp_is_empty!16389)))

(declare-fun b!3026036 () Bool)

(declare-fun tp!959725 () Bool)

(assert (=> b!3026036 (= e!1898267 tp!959725)))

(declare-fun b!3026035 () Bool)

(declare-fun tp!959722 () Bool)

(declare-fun tp!959721 () Bool)

(assert (=> b!3026035 (= e!1898267 (and tp!959722 tp!959721))))

(declare-fun b!3026037 () Bool)

(declare-fun tp!959724 () Bool)

(declare-fun tp!959723 () Bool)

(assert (=> b!3026037 (= e!1898267 (and tp!959724 tp!959723))))

(assert (= (and b!3025311 ((_ is ElementMatch!9413) (regTwo!19339 r!17423))) b!3026034))

(assert (= (and b!3025311 ((_ is Concat!14734) (regTwo!19339 r!17423))) b!3026035))

(assert (= (and b!3025311 ((_ is Star!9413) (regTwo!19339 r!17423))) b!3026036))

(assert (= (and b!3025311 ((_ is Union!9413) (regTwo!19339 r!17423))) b!3026037))

(check-sat (not b!3025832) (not b!3026028) (not bm!205576) (not b!3025959) (not b!3026035) (not b!3025934) (not b!3025938) (not b!3025919) (not b!3025798) (not b!3025834) (not b!3025830) (not b!3026037) (not b!3026033) (not bm!205650) (not b!3026032) (not d!850338) (not b!3026036) (not bm!205656) (not d!850314) (not d!850264) (not b!3026021) (not b!3026014) (not b!3025937) (not bm!205578) (not b!3026023) (not b!3025987) (not b!3025982) (not b!3025918) (not bm!205596) (not d!850316) (not b!3025505) (not b!3025997) (not d!850344) (not b!3026015) (not d!850332) (not bm!205659) (not b!3025983) (not b!3025829) (not b!3025801) (not b!3025796) (not d!850320) (not b!3025984) (not d!850328) (not b!3025803) (not b!3025827) (not bm!205646) (not d!850294) (not b!3025871) (not d!850330) (not bm!205580) (not b!3025839) (not b!3026016) (not b!3025957) (not b!3025878) (not bm!205640) (not bm!205648) (not bm!205639) (not b!3025986) tp_is_empty!16389 (not b!3026025) (not bm!205638) (not b!3025939) (not d!850266) (not d!850334) (not b!3025869) (not bm!205577) (not b!3025873) (not b!3025932) (not bm!205643) (not b!3025956) (not b!3026031) (not b!3025802) (not bm!205647) (not bm!205661) (not bm!205644) (not d!850318) (not d!850340) (not b!3025960) (not bm!205655) (not bm!205598) (not bm!205658) (not b!3025524) (not bm!205642) (not b!3025961) (not b!3026027) (not b!3025935) (not b!3026024) (not b!3025866) (not b!3026029) (not b!3025872) (not bm!205574) (not d!850346) (not b!3025954) (not d!850342) (not b!3025833) (not b!3025799) (not bm!205657) (not b!3025614) (not b!3025989) (not b!3025868) (not b!3025858))
(check-sat)
