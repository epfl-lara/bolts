; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291960 () Bool)

(assert start!291960)

(declare-fun b!3057487 () Bool)

(declare-fun res!1255467 () Bool)

(declare-fun e!1914886 () Bool)

(assert (=> b!3057487 (=> res!1255467 e!1914886)))

(declare-datatypes ((C!19140 0))(
  ( (C!19141 (val!11606 Int)) )
))
(declare-datatypes ((Regex!9477 0))(
  ( (ElementMatch!9477 (c!507253 C!19140)) (Concat!14798 (regOne!19466 Regex!9477) (regTwo!19466 Regex!9477)) (EmptyExpr!9477) (Star!9477 (reg!9806 Regex!9477)) (EmptyLang!9477) (Union!9477 (regOne!19467 Regex!9477) (regTwo!19467 Regex!9477)) )
))
(declare-fun lt!1049325 () Regex!9477)

(declare-fun isEmptyLang!528 (Regex!9477) Bool)

(assert (=> b!3057487 (= res!1255467 (not (isEmptyLang!528 lt!1049325)))))

(declare-fun b!3057488 () Bool)

(declare-fun e!1914887 () Bool)

(assert (=> b!3057488 (= e!1914886 e!1914887)))

(declare-fun res!1255471 () Bool)

(assert (=> b!3057488 (=> res!1255471 e!1914887)))

(declare-fun lt!1049322 () Bool)

(assert (=> b!3057488 (= res!1255471 lt!1049322)))

(declare-datatypes ((List!35342 0))(
  ( (Nil!35218) (Cons!35218 (h!40638 C!19140) (t!234407 List!35342)) )
))
(declare-fun s!11993 () List!35342)

(declare-fun matchR!4359 (Regex!9477 List!35342) Bool)

(assert (=> b!3057488 (= lt!1049322 (matchR!4359 lt!1049325 s!11993))))

(declare-fun r!17423 () Regex!9477)

(assert (=> b!3057488 (= lt!1049322 (matchR!4359 (regTwo!19466 r!17423) s!11993))))

(declare-datatypes ((Unit!49393 0))(
  ( (Unit!49394) )
))
(declare-fun lt!1049324 () Unit!49393)

(declare-fun lemmaSimplifySound!266 (Regex!9477 List!35342) Unit!49393)

(assert (=> b!3057488 (= lt!1049324 (lemmaSimplifySound!266 (regTwo!19466 r!17423) s!11993))))

(declare-fun b!3057489 () Bool)

(declare-fun e!1914888 () Bool)

(declare-fun tp!966765 () Bool)

(assert (=> b!3057489 (= e!1914888 tp!966765)))

(declare-fun res!1255468 () Bool)

(declare-fun e!1914891 () Bool)

(assert (=> start!291960 (=> (not res!1255468) (not e!1914891))))

(declare-fun validRegex!4210 (Regex!9477) Bool)

(assert (=> start!291960 (= res!1255468 (validRegex!4210 r!17423))))

(assert (=> start!291960 e!1914891))

(assert (=> start!291960 e!1914888))

(declare-fun e!1914890 () Bool)

(assert (=> start!291960 e!1914890))

(declare-fun b!3057490 () Bool)

(declare-fun e!1914889 () Bool)

(assert (=> b!3057490 (= e!1914889 e!1914886)))

(declare-fun res!1255470 () Bool)

(assert (=> b!3057490 (=> res!1255470 e!1914886)))

(declare-fun lt!1049323 () Regex!9477)

(assert (=> b!3057490 (= res!1255470 (isEmptyLang!528 lt!1049323))))

(declare-fun simplify!432 (Regex!9477) Regex!9477)

(assert (=> b!3057490 (= lt!1049325 (simplify!432 (regTwo!19466 r!17423)))))

(assert (=> b!3057490 (= lt!1049323 (simplify!432 (regOne!19466 r!17423)))))

(declare-fun b!3057491 () Bool)

(assert (=> b!3057491 (= e!1914887 (not (matchR!4359 (simplify!432 r!17423) s!11993)))))

(declare-fun b!3057492 () Bool)

(assert (=> b!3057492 (= e!1914891 (not e!1914889))))

(declare-fun res!1255472 () Bool)

(assert (=> b!3057492 (=> res!1255472 e!1914889)))

(declare-fun lt!1049321 () Bool)

(get-info :version)

(assert (=> b!3057492 (= res!1255472 (or lt!1049321 (not ((_ is Concat!14798) r!17423))))))

(declare-fun matchRSpec!1614 (Regex!9477 List!35342) Bool)

(assert (=> b!3057492 (= lt!1049321 (matchRSpec!1614 r!17423 s!11993))))

(assert (=> b!3057492 (= lt!1049321 (matchR!4359 r!17423 s!11993))))

(declare-fun lt!1049326 () Unit!49393)

(declare-fun mainMatchTheorem!1614 (Regex!9477 List!35342) Unit!49393)

(assert (=> b!3057492 (= lt!1049326 (mainMatchTheorem!1614 r!17423 s!11993))))

(declare-fun b!3057493 () Bool)

(declare-fun tp!966766 () Bool)

(declare-fun tp!966764 () Bool)

(assert (=> b!3057493 (= e!1914888 (and tp!966766 tp!966764))))

(declare-fun b!3057494 () Bool)

(declare-fun tp_is_empty!16517 () Bool)

(declare-fun tp!966769 () Bool)

(assert (=> b!3057494 (= e!1914890 (and tp_is_empty!16517 tp!966769))))

(declare-fun b!3057495 () Bool)

(assert (=> b!3057495 (= e!1914888 tp_is_empty!16517)))

(declare-fun b!3057496 () Bool)

(declare-fun tp!966767 () Bool)

(declare-fun tp!966768 () Bool)

(assert (=> b!3057496 (= e!1914888 (and tp!966767 tp!966768))))

(declare-fun b!3057497 () Bool)

(declare-fun res!1255469 () Bool)

(assert (=> b!3057497 (=> res!1255469 e!1914889)))

(declare-fun isEmpty!19533 (List!35342) Bool)

(assert (=> b!3057497 (= res!1255469 (isEmpty!19533 s!11993))))

(assert (= (and start!291960 res!1255468) b!3057492))

(assert (= (and b!3057492 (not res!1255472)) b!3057497))

(assert (= (and b!3057497 (not res!1255469)) b!3057490))

(assert (= (and b!3057490 (not res!1255470)) b!3057487))

(assert (= (and b!3057487 (not res!1255467)) b!3057488))

(assert (= (and b!3057488 (not res!1255471)) b!3057491))

(assert (= (and start!291960 ((_ is ElementMatch!9477) r!17423)) b!3057495))

(assert (= (and start!291960 ((_ is Concat!14798) r!17423)) b!3057496))

(assert (= (and start!291960 ((_ is Star!9477) r!17423)) b!3057489))

(assert (= (and start!291960 ((_ is Union!9477) r!17423)) b!3057493))

(assert (= (and start!291960 ((_ is Cons!35218) s!11993)) b!3057494))

(declare-fun m!3380321 () Bool)

(assert (=> b!3057490 m!3380321))

(declare-fun m!3380323 () Bool)

(assert (=> b!3057490 m!3380323))

(declare-fun m!3380325 () Bool)

(assert (=> b!3057490 m!3380325))

(declare-fun m!3380327 () Bool)

(assert (=> b!3057497 m!3380327))

(declare-fun m!3380329 () Bool)

(assert (=> b!3057491 m!3380329))

(assert (=> b!3057491 m!3380329))

(declare-fun m!3380331 () Bool)

(assert (=> b!3057491 m!3380331))

(declare-fun m!3380333 () Bool)

(assert (=> start!291960 m!3380333))

(declare-fun m!3380335 () Bool)

(assert (=> b!3057487 m!3380335))

(declare-fun m!3380337 () Bool)

(assert (=> b!3057492 m!3380337))

(declare-fun m!3380339 () Bool)

(assert (=> b!3057492 m!3380339))

(declare-fun m!3380341 () Bool)

(assert (=> b!3057492 m!3380341))

(declare-fun m!3380343 () Bool)

(assert (=> b!3057488 m!3380343))

(declare-fun m!3380345 () Bool)

(assert (=> b!3057488 m!3380345))

(declare-fun m!3380347 () Bool)

(assert (=> b!3057488 m!3380347))

(check-sat (not b!3057489) (not b!3057487) tp_is_empty!16517 (not start!291960) (not b!3057491) (not b!3057493) (not b!3057490) (not b!3057496) (not b!3057492) (not b!3057494) (not b!3057488) (not b!3057497))
(check-sat)
(get-model)

(declare-fun b!3057609 () Bool)

(declare-fun e!1914958 () Bool)

(declare-fun e!1914955 () Bool)

(assert (=> b!3057609 (= e!1914958 e!1914955)))

(declare-fun res!1255540 () Bool)

(assert (=> b!3057609 (=> (not res!1255540) (not e!1914955))))

(declare-fun lt!1049336 () Bool)

(assert (=> b!3057609 (= res!1255540 (not lt!1049336))))

(declare-fun b!3057610 () Bool)

(declare-fun e!1914957 () Bool)

(assert (=> b!3057610 (= e!1914957 (not lt!1049336))))

(declare-fun b!3057611 () Bool)

(declare-fun res!1255542 () Bool)

(declare-fun e!1914961 () Bool)

(assert (=> b!3057611 (=> res!1255542 e!1914961)))

(declare-fun tail!5004 (List!35342) List!35342)

(assert (=> b!3057611 (= res!1255542 (not (isEmpty!19533 (tail!5004 s!11993))))))

(declare-fun b!3057612 () Bool)

(declare-fun res!1255539 () Bool)

(declare-fun e!1914959 () Bool)

(assert (=> b!3057612 (=> (not res!1255539) (not e!1914959))))

(assert (=> b!3057612 (= res!1255539 (isEmpty!19533 (tail!5004 s!11993)))))

(declare-fun b!3057613 () Bool)

(declare-fun res!1255536 () Bool)

(assert (=> b!3057613 (=> res!1255536 e!1914958)))

(assert (=> b!3057613 (= res!1255536 (not ((_ is ElementMatch!9477) lt!1049325)))))

(assert (=> b!3057613 (= e!1914957 e!1914958)))

(declare-fun b!3057614 () Bool)

(declare-fun e!1914956 () Bool)

(assert (=> b!3057614 (= e!1914956 e!1914957)))

(declare-fun c!507280 () Bool)

(assert (=> b!3057614 (= c!507280 ((_ is EmptyLang!9477) lt!1049325))))

(declare-fun b!3057615 () Bool)

(declare-fun res!1255538 () Bool)

(assert (=> b!3057615 (=> (not res!1255538) (not e!1914959))))

(declare-fun call!211144 () Bool)

(assert (=> b!3057615 (= res!1255538 (not call!211144))))

(declare-fun b!3057616 () Bool)

(declare-fun head!6778 (List!35342) C!19140)

(assert (=> b!3057616 (= e!1914961 (not (= (head!6778 s!11993) (c!507253 lt!1049325))))))

(declare-fun d!854942 () Bool)

(assert (=> d!854942 e!1914956))

(declare-fun c!507279 () Bool)

(assert (=> d!854942 (= c!507279 ((_ is EmptyExpr!9477) lt!1049325))))

(declare-fun e!1914960 () Bool)

(assert (=> d!854942 (= lt!1049336 e!1914960)))

(declare-fun c!507278 () Bool)

(assert (=> d!854942 (= c!507278 (isEmpty!19533 s!11993))))

(assert (=> d!854942 (validRegex!4210 lt!1049325)))

(assert (=> d!854942 (= (matchR!4359 lt!1049325 s!11993) lt!1049336)))

(declare-fun b!3057617 () Bool)

(assert (=> b!3057617 (= e!1914955 e!1914961)))

(declare-fun res!1255537 () Bool)

(assert (=> b!3057617 (=> res!1255537 e!1914961)))

(assert (=> b!3057617 (= res!1255537 call!211144)))

(declare-fun b!3057618 () Bool)

(declare-fun res!1255543 () Bool)

(assert (=> b!3057618 (=> res!1255543 e!1914958)))

(assert (=> b!3057618 (= res!1255543 e!1914959)))

(declare-fun res!1255541 () Bool)

(assert (=> b!3057618 (=> (not res!1255541) (not e!1914959))))

(assert (=> b!3057618 (= res!1255541 lt!1049336)))

(declare-fun b!3057619 () Bool)

(declare-fun nullable!3123 (Regex!9477) Bool)

(assert (=> b!3057619 (= e!1914960 (nullable!3123 lt!1049325))))

(declare-fun b!3057620 () Bool)

(assert (=> b!3057620 (= e!1914959 (= (head!6778 s!11993) (c!507253 lt!1049325)))))

(declare-fun b!3057621 () Bool)

(declare-fun derivativeStep!2719 (Regex!9477 C!19140) Regex!9477)

(assert (=> b!3057621 (= e!1914960 (matchR!4359 (derivativeStep!2719 lt!1049325 (head!6778 s!11993)) (tail!5004 s!11993)))))

(declare-fun b!3057622 () Bool)

(assert (=> b!3057622 (= e!1914956 (= lt!1049336 call!211144))))

(declare-fun bm!211139 () Bool)

(assert (=> bm!211139 (= call!211144 (isEmpty!19533 s!11993))))

(assert (= (and d!854942 c!507278) b!3057619))

(assert (= (and d!854942 (not c!507278)) b!3057621))

(assert (= (and d!854942 c!507279) b!3057622))

(assert (= (and d!854942 (not c!507279)) b!3057614))

(assert (= (and b!3057614 c!507280) b!3057610))

(assert (= (and b!3057614 (not c!507280)) b!3057613))

(assert (= (and b!3057613 (not res!1255536)) b!3057618))

(assert (= (and b!3057618 res!1255541) b!3057615))

(assert (= (and b!3057615 res!1255538) b!3057612))

(assert (= (and b!3057612 res!1255539) b!3057620))

(assert (= (and b!3057618 (not res!1255543)) b!3057609))

(assert (= (and b!3057609 res!1255540) b!3057617))

(assert (= (and b!3057617 (not res!1255537)) b!3057611))

(assert (= (and b!3057611 (not res!1255542)) b!3057616))

(assert (= (or b!3057622 b!3057615 b!3057617) bm!211139))

(declare-fun m!3380381 () Bool)

(assert (=> b!3057621 m!3380381))

(assert (=> b!3057621 m!3380381))

(declare-fun m!3380383 () Bool)

(assert (=> b!3057621 m!3380383))

(declare-fun m!3380385 () Bool)

(assert (=> b!3057621 m!3380385))

(assert (=> b!3057621 m!3380383))

(assert (=> b!3057621 m!3380385))

(declare-fun m!3380387 () Bool)

(assert (=> b!3057621 m!3380387))

(assert (=> b!3057611 m!3380385))

(assert (=> b!3057611 m!3380385))

(declare-fun m!3380389 () Bool)

(assert (=> b!3057611 m!3380389))

(assert (=> b!3057620 m!3380381))

(assert (=> b!3057612 m!3380385))

(assert (=> b!3057612 m!3380385))

(assert (=> b!3057612 m!3380389))

(declare-fun m!3380391 () Bool)

(assert (=> b!3057619 m!3380391))

(assert (=> b!3057616 m!3380381))

(assert (=> d!854942 m!3380327))

(declare-fun m!3380393 () Bool)

(assert (=> d!854942 m!3380393))

(assert (=> bm!211139 m!3380327))

(assert (=> b!3057488 d!854942))

(declare-fun b!3057625 () Bool)

(declare-fun e!1914965 () Bool)

(declare-fun e!1914962 () Bool)

(assert (=> b!3057625 (= e!1914965 e!1914962)))

(declare-fun res!1255548 () Bool)

(assert (=> b!3057625 (=> (not res!1255548) (not e!1914962))))

(declare-fun lt!1049339 () Bool)

(assert (=> b!3057625 (= res!1255548 (not lt!1049339))))

(declare-fun b!3057626 () Bool)

(declare-fun e!1914964 () Bool)

(assert (=> b!3057626 (= e!1914964 (not lt!1049339))))

(declare-fun b!3057627 () Bool)

(declare-fun res!1255550 () Bool)

(declare-fun e!1914968 () Bool)

(assert (=> b!3057627 (=> res!1255550 e!1914968)))

(assert (=> b!3057627 (= res!1255550 (not (isEmpty!19533 (tail!5004 s!11993))))))

(declare-fun b!3057628 () Bool)

(declare-fun res!1255547 () Bool)

(declare-fun e!1914966 () Bool)

(assert (=> b!3057628 (=> (not res!1255547) (not e!1914966))))

(assert (=> b!3057628 (= res!1255547 (isEmpty!19533 (tail!5004 s!11993)))))

(declare-fun b!3057629 () Bool)

(declare-fun res!1255544 () Bool)

(assert (=> b!3057629 (=> res!1255544 e!1914965)))

(assert (=> b!3057629 (= res!1255544 (not ((_ is ElementMatch!9477) (regTwo!19466 r!17423))))))

(assert (=> b!3057629 (= e!1914964 e!1914965)))

(declare-fun b!3057630 () Bool)

(declare-fun e!1914963 () Bool)

(assert (=> b!3057630 (= e!1914963 e!1914964)))

(declare-fun c!507283 () Bool)

(assert (=> b!3057630 (= c!507283 ((_ is EmptyLang!9477) (regTwo!19466 r!17423)))))

(declare-fun b!3057631 () Bool)

(declare-fun res!1255546 () Bool)

(assert (=> b!3057631 (=> (not res!1255546) (not e!1914966))))

(declare-fun call!211145 () Bool)

(assert (=> b!3057631 (= res!1255546 (not call!211145))))

(declare-fun b!3057632 () Bool)

(assert (=> b!3057632 (= e!1914968 (not (= (head!6778 s!11993) (c!507253 (regTwo!19466 r!17423)))))))

(declare-fun d!854954 () Bool)

(assert (=> d!854954 e!1914963))

(declare-fun c!507282 () Bool)

(assert (=> d!854954 (= c!507282 ((_ is EmptyExpr!9477) (regTwo!19466 r!17423)))))

(declare-fun e!1914967 () Bool)

(assert (=> d!854954 (= lt!1049339 e!1914967)))

(declare-fun c!507281 () Bool)

(assert (=> d!854954 (= c!507281 (isEmpty!19533 s!11993))))

(assert (=> d!854954 (validRegex!4210 (regTwo!19466 r!17423))))

(assert (=> d!854954 (= (matchR!4359 (regTwo!19466 r!17423) s!11993) lt!1049339)))

(declare-fun b!3057633 () Bool)

(assert (=> b!3057633 (= e!1914962 e!1914968)))

(declare-fun res!1255545 () Bool)

(assert (=> b!3057633 (=> res!1255545 e!1914968)))

(assert (=> b!3057633 (= res!1255545 call!211145)))

(declare-fun b!3057634 () Bool)

(declare-fun res!1255551 () Bool)

(assert (=> b!3057634 (=> res!1255551 e!1914965)))

(assert (=> b!3057634 (= res!1255551 e!1914966)))

(declare-fun res!1255549 () Bool)

(assert (=> b!3057634 (=> (not res!1255549) (not e!1914966))))

(assert (=> b!3057634 (= res!1255549 lt!1049339)))

(declare-fun b!3057635 () Bool)

(assert (=> b!3057635 (= e!1914967 (nullable!3123 (regTwo!19466 r!17423)))))

(declare-fun b!3057636 () Bool)

(assert (=> b!3057636 (= e!1914966 (= (head!6778 s!11993) (c!507253 (regTwo!19466 r!17423))))))

(declare-fun b!3057637 () Bool)

(assert (=> b!3057637 (= e!1914967 (matchR!4359 (derivativeStep!2719 (regTwo!19466 r!17423) (head!6778 s!11993)) (tail!5004 s!11993)))))

(declare-fun b!3057638 () Bool)

(assert (=> b!3057638 (= e!1914963 (= lt!1049339 call!211145))))

(declare-fun bm!211140 () Bool)

(assert (=> bm!211140 (= call!211145 (isEmpty!19533 s!11993))))

(assert (= (and d!854954 c!507281) b!3057635))

(assert (= (and d!854954 (not c!507281)) b!3057637))

(assert (= (and d!854954 c!507282) b!3057638))

(assert (= (and d!854954 (not c!507282)) b!3057630))

(assert (= (and b!3057630 c!507283) b!3057626))

(assert (= (and b!3057630 (not c!507283)) b!3057629))

(assert (= (and b!3057629 (not res!1255544)) b!3057634))

(assert (= (and b!3057634 res!1255549) b!3057631))

(assert (= (and b!3057631 res!1255546) b!3057628))

(assert (= (and b!3057628 res!1255547) b!3057636))

(assert (= (and b!3057634 (not res!1255551)) b!3057625))

(assert (= (and b!3057625 res!1255548) b!3057633))

(assert (= (and b!3057633 (not res!1255545)) b!3057627))

(assert (= (and b!3057627 (not res!1255550)) b!3057632))

(assert (= (or b!3057638 b!3057631 b!3057633) bm!211140))

(assert (=> b!3057637 m!3380381))

(assert (=> b!3057637 m!3380381))

(declare-fun m!3380395 () Bool)

(assert (=> b!3057637 m!3380395))

(assert (=> b!3057637 m!3380385))

(assert (=> b!3057637 m!3380395))

(assert (=> b!3057637 m!3380385))

(declare-fun m!3380397 () Bool)

(assert (=> b!3057637 m!3380397))

(assert (=> b!3057627 m!3380385))

(assert (=> b!3057627 m!3380385))

(assert (=> b!3057627 m!3380389))

(assert (=> b!3057636 m!3380381))

(assert (=> b!3057628 m!3380385))

(assert (=> b!3057628 m!3380385))

(assert (=> b!3057628 m!3380389))

(declare-fun m!3380399 () Bool)

(assert (=> b!3057635 m!3380399))

(assert (=> b!3057632 m!3380381))

(assert (=> d!854954 m!3380327))

(declare-fun m!3380401 () Bool)

(assert (=> d!854954 m!3380401))

(assert (=> bm!211140 m!3380327))

(assert (=> b!3057488 d!854954))

(declare-fun d!854956 () Bool)

(assert (=> d!854956 (= (matchR!4359 (regTwo!19466 r!17423) s!11993) (matchR!4359 (simplify!432 (regTwo!19466 r!17423)) s!11993))))

(declare-fun lt!1049352 () Unit!49393)

(declare-fun choose!18109 (Regex!9477 List!35342) Unit!49393)

(assert (=> d!854956 (= lt!1049352 (choose!18109 (regTwo!19466 r!17423) s!11993))))

(assert (=> d!854956 (validRegex!4210 (regTwo!19466 r!17423))))

(assert (=> d!854956 (= (lemmaSimplifySound!266 (regTwo!19466 r!17423) s!11993) lt!1049352)))

(declare-fun bs!532415 () Bool)

(assert (= bs!532415 d!854956))

(assert (=> bs!532415 m!3380323))

(assert (=> bs!532415 m!3380401))

(assert (=> bs!532415 m!3380345))

(declare-fun m!3380403 () Bool)

(assert (=> bs!532415 m!3380403))

(assert (=> bs!532415 m!3380323))

(declare-fun m!3380405 () Bool)

(assert (=> bs!532415 m!3380405))

(assert (=> b!3057488 d!854956))

(declare-fun d!854958 () Bool)

(assert (=> d!854958 (= (isEmptyLang!528 lt!1049323) ((_ is EmptyLang!9477) lt!1049323))))

(assert (=> b!3057490 d!854958))

(declare-fun bm!211191 () Bool)

(declare-fun call!211197 () Regex!9477)

(declare-fun call!211201 () Regex!9477)

(assert (=> bm!211191 (= call!211197 call!211201)))

(declare-fun b!3057848 () Bool)

(declare-fun e!1915095 () Regex!9477)

(declare-fun e!1915099 () Regex!9477)

(assert (=> b!3057848 (= e!1915095 e!1915099)))

(declare-fun c!507376 () Bool)

(assert (=> b!3057848 (= c!507376 ((_ is Star!9477) (regTwo!19466 r!17423)))))

(declare-fun bm!211192 () Bool)

(declare-fun call!211202 () Bool)

(declare-fun call!211196 () Bool)

(assert (=> bm!211192 (= call!211202 call!211196)))

(declare-fun b!3057849 () Bool)

(declare-fun c!507373 () Bool)

(assert (=> b!3057849 (= c!507373 ((_ is Union!9477) (regTwo!19466 r!17423)))))

(declare-fun e!1915089 () Regex!9477)

(assert (=> b!3057849 (= e!1915099 e!1915089)))

(declare-fun d!854960 () Bool)

(declare-fun e!1915101 () Bool)

(assert (=> d!854960 e!1915101))

(declare-fun res!1255588 () Bool)

(assert (=> d!854960 (=> (not res!1255588) (not e!1915101))))

(declare-fun lt!1049388 () Regex!9477)

(assert (=> d!854960 (= res!1255588 (validRegex!4210 lt!1049388))))

(declare-fun e!1915090 () Regex!9477)

(assert (=> d!854960 (= lt!1049388 e!1915090)))

(declare-fun c!507379 () Bool)

(assert (=> d!854960 (= c!507379 ((_ is EmptyLang!9477) (regTwo!19466 r!17423)))))

(assert (=> d!854960 (validRegex!4210 (regTwo!19466 r!17423))))

(assert (=> d!854960 (= (simplify!432 (regTwo!19466 r!17423)) lt!1049388)))

(declare-fun b!3057850 () Bool)

(declare-fun c!507372 () Bool)

(declare-fun lt!1049384 () Regex!9477)

(declare-fun isEmptyExpr!534 (Regex!9477) Bool)

(assert (=> b!3057850 (= c!507372 (isEmptyExpr!534 lt!1049384))))

(declare-fun e!1915098 () Regex!9477)

(declare-fun e!1915093 () Regex!9477)

(assert (=> b!3057850 (= e!1915098 e!1915093)))

(declare-fun b!3057851 () Bool)

(declare-fun e!1915094 () Regex!9477)

(declare-fun lt!1049389 () Regex!9477)

(assert (=> b!3057851 (= e!1915094 lt!1049389)))

(declare-fun b!3057852 () Bool)

(declare-fun c!507377 () Bool)

(assert (=> b!3057852 (= c!507377 ((_ is EmptyExpr!9477) (regTwo!19466 r!17423)))))

(declare-fun e!1915096 () Regex!9477)

(assert (=> b!3057852 (= e!1915096 e!1915095)))

(declare-fun bm!211193 () Bool)

(assert (=> bm!211193 (= call!211201 (simplify!432 (ite c!507376 (reg!9806 (regTwo!19466 r!17423)) (ite c!507373 (regOne!19467 (regTwo!19466 r!17423)) (regTwo!19466 (regTwo!19466 r!17423))))))))

(declare-fun b!3057853 () Bool)

(declare-fun e!1915100 () Regex!9477)

(declare-fun lt!1049387 () Regex!9477)

(assert (=> b!3057853 (= e!1915100 (Union!9477 lt!1049387 lt!1049389))))

(declare-fun b!3057854 () Bool)

(assert (=> b!3057854 (= e!1915090 e!1915096)))

(declare-fun c!507378 () Bool)

(assert (=> b!3057854 (= c!507378 ((_ is ElementMatch!9477) (regTwo!19466 r!17423)))))

(declare-fun bm!211194 () Bool)

(declare-fun call!211198 () Regex!9477)

(assert (=> bm!211194 (= call!211198 (simplify!432 (ite c!507373 (regTwo!19467 (regTwo!19466 r!17423)) (regOne!19466 (regTwo!19466 r!17423)))))))

(declare-fun b!3057855 () Bool)

(assert (=> b!3057855 (= e!1915096 (regTwo!19466 r!17423))))

(declare-fun b!3057856 () Bool)

(declare-fun e!1915092 () Bool)

(declare-fun call!211199 () Bool)

(assert (=> b!3057856 (= e!1915092 call!211199)))

(declare-fun b!3057857 () Bool)

(declare-fun e!1915097 () Regex!9477)

(assert (=> b!3057857 (= e!1915097 EmptyExpr!9477)))

(declare-fun b!3057858 () Bool)

(declare-fun e!1915088 () Regex!9477)

(assert (=> b!3057858 (= e!1915088 lt!1049384)))

(declare-fun b!3057859 () Bool)

(assert (=> b!3057859 (= e!1915095 EmptyExpr!9477)))

(declare-fun b!3057860 () Bool)

(assert (=> b!3057860 (= e!1915089 e!1915094)))

(assert (=> b!3057860 (= lt!1049387 call!211197)))

(assert (=> b!3057860 (= lt!1049389 call!211198)))

(declare-fun c!507382 () Bool)

(assert (=> b!3057860 (= c!507382 call!211202)))

(declare-fun call!211200 () Bool)

(declare-fun lt!1049386 () Regex!9477)

(declare-fun bm!211195 () Bool)

(declare-fun lt!1049385 () Regex!9477)

(assert (=> bm!211195 (= call!211200 (isEmptyExpr!534 (ite c!507376 lt!1049386 lt!1049385)))))

(declare-fun b!3057861 () Bool)

(assert (=> b!3057861 (= e!1915100 lt!1049387)))

(declare-fun b!3057862 () Bool)

(declare-fun c!507374 () Bool)

(declare-fun e!1915091 () Bool)

(assert (=> b!3057862 (= c!507374 e!1915091)))

(declare-fun res!1255587 () Bool)

(assert (=> b!3057862 (=> res!1255587 e!1915091)))

(assert (=> b!3057862 (= res!1255587 call!211196)))

(assert (=> b!3057862 (= lt!1049386 call!211201)))

(assert (=> b!3057862 (= e!1915099 e!1915097)))

(declare-fun b!3057863 () Bool)

(assert (=> b!3057863 (= e!1915090 EmptyLang!9477)))

(declare-fun b!3057864 () Bool)

(assert (=> b!3057864 (= e!1915098 EmptyLang!9477)))

(declare-fun b!3057865 () Bool)

(assert (=> b!3057865 (= e!1915093 lt!1049385)))

(declare-fun b!3057866 () Bool)

(assert (=> b!3057866 (= e!1915093 e!1915088)))

(declare-fun c!507380 () Bool)

(assert (=> b!3057866 (= c!507380 call!211200)))

(declare-fun b!3057867 () Bool)

(assert (=> b!3057867 (= e!1915089 e!1915098)))

(assert (=> b!3057867 (= lt!1049384 call!211198)))

(assert (=> b!3057867 (= lt!1049385 call!211197)))

(declare-fun res!1255589 () Bool)

(assert (=> b!3057867 (= res!1255589 call!211202)))

(assert (=> b!3057867 (=> res!1255589 e!1915092)))

(declare-fun c!507375 () Bool)

(assert (=> b!3057867 (= c!507375 e!1915092)))

(declare-fun b!3057868 () Bool)

(assert (=> b!3057868 (= e!1915097 (Star!9477 lt!1049386))))

(declare-fun b!3057869 () Bool)

(assert (=> b!3057869 (= e!1915091 call!211200)))

(declare-fun bm!211196 () Bool)

(assert (=> bm!211196 (= call!211199 (isEmptyLang!528 (ite c!507373 lt!1049389 lt!1049385)))))

(declare-fun b!3057870 () Bool)

(declare-fun c!507381 () Bool)

(assert (=> b!3057870 (= c!507381 call!211199)))

(assert (=> b!3057870 (= e!1915094 e!1915100)))

(declare-fun b!3057871 () Bool)

(assert (=> b!3057871 (= e!1915088 (Concat!14798 lt!1049384 lt!1049385))))

(declare-fun b!3057872 () Bool)

(assert (=> b!3057872 (= e!1915101 (= (nullable!3123 lt!1049388) (nullable!3123 (regTwo!19466 r!17423))))))

(declare-fun bm!211197 () Bool)

(assert (=> bm!211197 (= call!211196 (isEmptyLang!528 (ite c!507376 lt!1049386 (ite c!507373 lt!1049387 lt!1049384))))))

(assert (= (and d!854960 c!507379) b!3057863))

(assert (= (and d!854960 (not c!507379)) b!3057854))

(assert (= (and b!3057854 c!507378) b!3057855))

(assert (= (and b!3057854 (not c!507378)) b!3057852))

(assert (= (and b!3057852 c!507377) b!3057859))

(assert (= (and b!3057852 (not c!507377)) b!3057848))

(assert (= (and b!3057848 c!507376) b!3057862))

(assert (= (and b!3057848 (not c!507376)) b!3057849))

(assert (= (and b!3057862 (not res!1255587)) b!3057869))

(assert (= (and b!3057862 c!507374) b!3057857))

(assert (= (and b!3057862 (not c!507374)) b!3057868))

(assert (= (and b!3057849 c!507373) b!3057860))

(assert (= (and b!3057849 (not c!507373)) b!3057867))

(assert (= (and b!3057860 c!507382) b!3057851))

(assert (= (and b!3057860 (not c!507382)) b!3057870))

(assert (= (and b!3057870 c!507381) b!3057861))

(assert (= (and b!3057870 (not c!507381)) b!3057853))

(assert (= (and b!3057867 (not res!1255589)) b!3057856))

(assert (= (and b!3057867 c!507375) b!3057864))

(assert (= (and b!3057867 (not c!507375)) b!3057850))

(assert (= (and b!3057850 c!507372) b!3057865))

(assert (= (and b!3057850 (not c!507372)) b!3057866))

(assert (= (and b!3057866 c!507380) b!3057858))

(assert (= (and b!3057866 (not c!507380)) b!3057871))

(assert (= (or b!3057860 b!3057867) bm!211191))

(assert (= (or b!3057860 b!3057867) bm!211194))

(assert (= (or b!3057860 b!3057867) bm!211192))

(assert (= (or b!3057870 b!3057856) bm!211196))

(assert (= (or b!3057869 b!3057866) bm!211195))

(assert (= (or b!3057862 bm!211191) bm!211193))

(assert (= (or b!3057862 bm!211192) bm!211197))

(assert (= (and d!854960 res!1255588) b!3057872))

(declare-fun m!3380469 () Bool)

(assert (=> bm!211193 m!3380469))

(declare-fun m!3380471 () Bool)

(assert (=> b!3057872 m!3380471))

(assert (=> b!3057872 m!3380399))

(declare-fun m!3380473 () Bool)

(assert (=> bm!211197 m!3380473))

(declare-fun m!3380475 () Bool)

(assert (=> d!854960 m!3380475))

(assert (=> d!854960 m!3380401))

(declare-fun m!3380477 () Bool)

(assert (=> b!3057850 m!3380477))

(declare-fun m!3380479 () Bool)

(assert (=> bm!211195 m!3380479))

(declare-fun m!3380481 () Bool)

(assert (=> bm!211194 m!3380481))

(declare-fun m!3380483 () Bool)

(assert (=> bm!211196 m!3380483))

(assert (=> b!3057490 d!854960))

(declare-fun bm!211198 () Bool)

(declare-fun call!211204 () Regex!9477)

(declare-fun call!211208 () Regex!9477)

(assert (=> bm!211198 (= call!211204 call!211208)))

(declare-fun b!3057873 () Bool)

(declare-fun e!1915109 () Regex!9477)

(declare-fun e!1915113 () Regex!9477)

(assert (=> b!3057873 (= e!1915109 e!1915113)))

(declare-fun c!507387 () Bool)

(assert (=> b!3057873 (= c!507387 ((_ is Star!9477) (regOne!19466 r!17423)))))

(declare-fun bm!211199 () Bool)

(declare-fun call!211209 () Bool)

(declare-fun call!211203 () Bool)

(assert (=> bm!211199 (= call!211209 call!211203)))

(declare-fun b!3057874 () Bool)

(declare-fun c!507384 () Bool)

(assert (=> b!3057874 (= c!507384 ((_ is Union!9477) (regOne!19466 r!17423)))))

(declare-fun e!1915103 () Regex!9477)

(assert (=> b!3057874 (= e!1915113 e!1915103)))

(declare-fun d!854972 () Bool)

(declare-fun e!1915115 () Bool)

(assert (=> d!854972 e!1915115))

(declare-fun res!1255591 () Bool)

(assert (=> d!854972 (=> (not res!1255591) (not e!1915115))))

(declare-fun lt!1049394 () Regex!9477)

(assert (=> d!854972 (= res!1255591 (validRegex!4210 lt!1049394))))

(declare-fun e!1915104 () Regex!9477)

(assert (=> d!854972 (= lt!1049394 e!1915104)))

(declare-fun c!507390 () Bool)

(assert (=> d!854972 (= c!507390 ((_ is EmptyLang!9477) (regOne!19466 r!17423)))))

(assert (=> d!854972 (validRegex!4210 (regOne!19466 r!17423))))

(assert (=> d!854972 (= (simplify!432 (regOne!19466 r!17423)) lt!1049394)))

(declare-fun b!3057875 () Bool)

(declare-fun c!507383 () Bool)

(declare-fun lt!1049390 () Regex!9477)

(assert (=> b!3057875 (= c!507383 (isEmptyExpr!534 lt!1049390))))

(declare-fun e!1915112 () Regex!9477)

(declare-fun e!1915107 () Regex!9477)

(assert (=> b!3057875 (= e!1915112 e!1915107)))

(declare-fun b!3057876 () Bool)

(declare-fun e!1915108 () Regex!9477)

(declare-fun lt!1049395 () Regex!9477)

(assert (=> b!3057876 (= e!1915108 lt!1049395)))

(declare-fun b!3057877 () Bool)

(declare-fun c!507388 () Bool)

(assert (=> b!3057877 (= c!507388 ((_ is EmptyExpr!9477) (regOne!19466 r!17423)))))

(declare-fun e!1915110 () Regex!9477)

(assert (=> b!3057877 (= e!1915110 e!1915109)))

(declare-fun bm!211200 () Bool)

(assert (=> bm!211200 (= call!211208 (simplify!432 (ite c!507387 (reg!9806 (regOne!19466 r!17423)) (ite c!507384 (regOne!19467 (regOne!19466 r!17423)) (regTwo!19466 (regOne!19466 r!17423))))))))

(declare-fun b!3057878 () Bool)

(declare-fun e!1915114 () Regex!9477)

(declare-fun lt!1049393 () Regex!9477)

(assert (=> b!3057878 (= e!1915114 (Union!9477 lt!1049393 lt!1049395))))

(declare-fun b!3057879 () Bool)

(assert (=> b!3057879 (= e!1915104 e!1915110)))

(declare-fun c!507389 () Bool)

(assert (=> b!3057879 (= c!507389 ((_ is ElementMatch!9477) (regOne!19466 r!17423)))))

(declare-fun bm!211201 () Bool)

(declare-fun call!211205 () Regex!9477)

(assert (=> bm!211201 (= call!211205 (simplify!432 (ite c!507384 (regTwo!19467 (regOne!19466 r!17423)) (regOne!19466 (regOne!19466 r!17423)))))))

(declare-fun b!3057880 () Bool)

(assert (=> b!3057880 (= e!1915110 (regOne!19466 r!17423))))

(declare-fun b!3057881 () Bool)

(declare-fun e!1915106 () Bool)

(declare-fun call!211206 () Bool)

(assert (=> b!3057881 (= e!1915106 call!211206)))

(declare-fun b!3057882 () Bool)

(declare-fun e!1915111 () Regex!9477)

(assert (=> b!3057882 (= e!1915111 EmptyExpr!9477)))

(declare-fun b!3057883 () Bool)

(declare-fun e!1915102 () Regex!9477)

(assert (=> b!3057883 (= e!1915102 lt!1049390)))

(declare-fun b!3057884 () Bool)

(assert (=> b!3057884 (= e!1915109 EmptyExpr!9477)))

(declare-fun b!3057885 () Bool)

(assert (=> b!3057885 (= e!1915103 e!1915108)))

(assert (=> b!3057885 (= lt!1049393 call!211204)))

(assert (=> b!3057885 (= lt!1049395 call!211205)))

(declare-fun c!507393 () Bool)

(assert (=> b!3057885 (= c!507393 call!211209)))

(declare-fun bm!211202 () Bool)

(declare-fun call!211207 () Bool)

(declare-fun lt!1049391 () Regex!9477)

(declare-fun lt!1049392 () Regex!9477)

(assert (=> bm!211202 (= call!211207 (isEmptyExpr!534 (ite c!507387 lt!1049392 lt!1049391)))))

(declare-fun b!3057886 () Bool)

(assert (=> b!3057886 (= e!1915114 lt!1049393)))

(declare-fun b!3057887 () Bool)

(declare-fun c!507385 () Bool)

(declare-fun e!1915105 () Bool)

(assert (=> b!3057887 (= c!507385 e!1915105)))

(declare-fun res!1255590 () Bool)

(assert (=> b!3057887 (=> res!1255590 e!1915105)))

(assert (=> b!3057887 (= res!1255590 call!211203)))

(assert (=> b!3057887 (= lt!1049392 call!211208)))

(assert (=> b!3057887 (= e!1915113 e!1915111)))

(declare-fun b!3057888 () Bool)

(assert (=> b!3057888 (= e!1915104 EmptyLang!9477)))

(declare-fun b!3057889 () Bool)

(assert (=> b!3057889 (= e!1915112 EmptyLang!9477)))

(declare-fun b!3057890 () Bool)

(assert (=> b!3057890 (= e!1915107 lt!1049391)))

(declare-fun b!3057891 () Bool)

(assert (=> b!3057891 (= e!1915107 e!1915102)))

(declare-fun c!507391 () Bool)

(assert (=> b!3057891 (= c!507391 call!211207)))

(declare-fun b!3057892 () Bool)

(assert (=> b!3057892 (= e!1915103 e!1915112)))

(assert (=> b!3057892 (= lt!1049390 call!211205)))

(assert (=> b!3057892 (= lt!1049391 call!211204)))

(declare-fun res!1255592 () Bool)

(assert (=> b!3057892 (= res!1255592 call!211209)))

(assert (=> b!3057892 (=> res!1255592 e!1915106)))

(declare-fun c!507386 () Bool)

(assert (=> b!3057892 (= c!507386 e!1915106)))

(declare-fun b!3057893 () Bool)

(assert (=> b!3057893 (= e!1915111 (Star!9477 lt!1049392))))

(declare-fun b!3057894 () Bool)

(assert (=> b!3057894 (= e!1915105 call!211207)))

(declare-fun bm!211203 () Bool)

(assert (=> bm!211203 (= call!211206 (isEmptyLang!528 (ite c!507384 lt!1049395 lt!1049391)))))

(declare-fun b!3057895 () Bool)

(declare-fun c!507392 () Bool)

(assert (=> b!3057895 (= c!507392 call!211206)))

(assert (=> b!3057895 (= e!1915108 e!1915114)))

(declare-fun b!3057896 () Bool)

(assert (=> b!3057896 (= e!1915102 (Concat!14798 lt!1049390 lt!1049391))))

(declare-fun b!3057897 () Bool)

(assert (=> b!3057897 (= e!1915115 (= (nullable!3123 lt!1049394) (nullable!3123 (regOne!19466 r!17423))))))

(declare-fun bm!211204 () Bool)

(assert (=> bm!211204 (= call!211203 (isEmptyLang!528 (ite c!507387 lt!1049392 (ite c!507384 lt!1049393 lt!1049390))))))

(assert (= (and d!854972 c!507390) b!3057888))

(assert (= (and d!854972 (not c!507390)) b!3057879))

(assert (= (and b!3057879 c!507389) b!3057880))

(assert (= (and b!3057879 (not c!507389)) b!3057877))

(assert (= (and b!3057877 c!507388) b!3057884))

(assert (= (and b!3057877 (not c!507388)) b!3057873))

(assert (= (and b!3057873 c!507387) b!3057887))

(assert (= (and b!3057873 (not c!507387)) b!3057874))

(assert (= (and b!3057887 (not res!1255590)) b!3057894))

(assert (= (and b!3057887 c!507385) b!3057882))

(assert (= (and b!3057887 (not c!507385)) b!3057893))

(assert (= (and b!3057874 c!507384) b!3057885))

(assert (= (and b!3057874 (not c!507384)) b!3057892))

(assert (= (and b!3057885 c!507393) b!3057876))

(assert (= (and b!3057885 (not c!507393)) b!3057895))

(assert (= (and b!3057895 c!507392) b!3057886))

(assert (= (and b!3057895 (not c!507392)) b!3057878))

(assert (= (and b!3057892 (not res!1255592)) b!3057881))

(assert (= (and b!3057892 c!507386) b!3057889))

(assert (= (and b!3057892 (not c!507386)) b!3057875))

(assert (= (and b!3057875 c!507383) b!3057890))

(assert (= (and b!3057875 (not c!507383)) b!3057891))

(assert (= (and b!3057891 c!507391) b!3057883))

(assert (= (and b!3057891 (not c!507391)) b!3057896))

(assert (= (or b!3057885 b!3057892) bm!211198))

(assert (= (or b!3057885 b!3057892) bm!211201))

(assert (= (or b!3057885 b!3057892) bm!211199))

(assert (= (or b!3057895 b!3057881) bm!211203))

(assert (= (or b!3057894 b!3057891) bm!211202))

(assert (= (or b!3057887 bm!211198) bm!211200))

(assert (= (or b!3057887 bm!211199) bm!211204))

(assert (= (and d!854972 res!1255591) b!3057897))

(declare-fun m!3380485 () Bool)

(assert (=> bm!211200 m!3380485))

(declare-fun m!3380487 () Bool)

(assert (=> b!3057897 m!3380487))

(declare-fun m!3380489 () Bool)

(assert (=> b!3057897 m!3380489))

(declare-fun m!3380491 () Bool)

(assert (=> bm!211204 m!3380491))

(declare-fun m!3380493 () Bool)

(assert (=> d!854972 m!3380493))

(declare-fun m!3380495 () Bool)

(assert (=> d!854972 m!3380495))

(declare-fun m!3380497 () Bool)

(assert (=> b!3057875 m!3380497))

(declare-fun m!3380499 () Bool)

(assert (=> bm!211202 m!3380499))

(declare-fun m!3380501 () Bool)

(assert (=> bm!211201 m!3380501))

(declare-fun m!3380503 () Bool)

(assert (=> bm!211203 m!3380503))

(assert (=> b!3057490 d!854972))

(declare-fun b!3057898 () Bool)

(declare-fun e!1915119 () Bool)

(declare-fun e!1915116 () Bool)

(assert (=> b!3057898 (= e!1915119 e!1915116)))

(declare-fun res!1255597 () Bool)

(assert (=> b!3057898 (=> (not res!1255597) (not e!1915116))))

(declare-fun lt!1049396 () Bool)

(assert (=> b!3057898 (= res!1255597 (not lt!1049396))))

(declare-fun b!3057899 () Bool)

(declare-fun e!1915118 () Bool)

(assert (=> b!3057899 (= e!1915118 (not lt!1049396))))

(declare-fun b!3057900 () Bool)

(declare-fun res!1255599 () Bool)

(declare-fun e!1915122 () Bool)

(assert (=> b!3057900 (=> res!1255599 e!1915122)))

(assert (=> b!3057900 (= res!1255599 (not (isEmpty!19533 (tail!5004 s!11993))))))

(declare-fun b!3057901 () Bool)

(declare-fun res!1255596 () Bool)

(declare-fun e!1915120 () Bool)

(assert (=> b!3057901 (=> (not res!1255596) (not e!1915120))))

(assert (=> b!3057901 (= res!1255596 (isEmpty!19533 (tail!5004 s!11993)))))

(declare-fun b!3057902 () Bool)

(declare-fun res!1255593 () Bool)

(assert (=> b!3057902 (=> res!1255593 e!1915119)))

(assert (=> b!3057902 (= res!1255593 (not ((_ is ElementMatch!9477) (simplify!432 r!17423))))))

(assert (=> b!3057902 (= e!1915118 e!1915119)))

(declare-fun b!3057903 () Bool)

(declare-fun e!1915117 () Bool)

(assert (=> b!3057903 (= e!1915117 e!1915118)))

(declare-fun c!507396 () Bool)

(assert (=> b!3057903 (= c!507396 ((_ is EmptyLang!9477) (simplify!432 r!17423)))))

(declare-fun b!3057904 () Bool)

(declare-fun res!1255595 () Bool)

(assert (=> b!3057904 (=> (not res!1255595) (not e!1915120))))

(declare-fun call!211210 () Bool)

(assert (=> b!3057904 (= res!1255595 (not call!211210))))

(declare-fun b!3057905 () Bool)

(assert (=> b!3057905 (= e!1915122 (not (= (head!6778 s!11993) (c!507253 (simplify!432 r!17423)))))))

(declare-fun d!854974 () Bool)

(assert (=> d!854974 e!1915117))

(declare-fun c!507395 () Bool)

(assert (=> d!854974 (= c!507395 ((_ is EmptyExpr!9477) (simplify!432 r!17423)))))

(declare-fun e!1915121 () Bool)

(assert (=> d!854974 (= lt!1049396 e!1915121)))

(declare-fun c!507394 () Bool)

(assert (=> d!854974 (= c!507394 (isEmpty!19533 s!11993))))

(assert (=> d!854974 (validRegex!4210 (simplify!432 r!17423))))

(assert (=> d!854974 (= (matchR!4359 (simplify!432 r!17423) s!11993) lt!1049396)))

(declare-fun b!3057906 () Bool)

(assert (=> b!3057906 (= e!1915116 e!1915122)))

(declare-fun res!1255594 () Bool)

(assert (=> b!3057906 (=> res!1255594 e!1915122)))

(assert (=> b!3057906 (= res!1255594 call!211210)))

(declare-fun b!3057907 () Bool)

(declare-fun res!1255600 () Bool)

(assert (=> b!3057907 (=> res!1255600 e!1915119)))

(assert (=> b!3057907 (= res!1255600 e!1915120)))

(declare-fun res!1255598 () Bool)

(assert (=> b!3057907 (=> (not res!1255598) (not e!1915120))))

(assert (=> b!3057907 (= res!1255598 lt!1049396)))

(declare-fun b!3057908 () Bool)

(assert (=> b!3057908 (= e!1915121 (nullable!3123 (simplify!432 r!17423)))))

(declare-fun b!3057909 () Bool)

(assert (=> b!3057909 (= e!1915120 (= (head!6778 s!11993) (c!507253 (simplify!432 r!17423))))))

(declare-fun b!3057910 () Bool)

(assert (=> b!3057910 (= e!1915121 (matchR!4359 (derivativeStep!2719 (simplify!432 r!17423) (head!6778 s!11993)) (tail!5004 s!11993)))))

(declare-fun b!3057911 () Bool)

(assert (=> b!3057911 (= e!1915117 (= lt!1049396 call!211210))))

(declare-fun bm!211205 () Bool)

(assert (=> bm!211205 (= call!211210 (isEmpty!19533 s!11993))))

(assert (= (and d!854974 c!507394) b!3057908))

(assert (= (and d!854974 (not c!507394)) b!3057910))

(assert (= (and d!854974 c!507395) b!3057911))

(assert (= (and d!854974 (not c!507395)) b!3057903))

(assert (= (and b!3057903 c!507396) b!3057899))

(assert (= (and b!3057903 (not c!507396)) b!3057902))

(assert (= (and b!3057902 (not res!1255593)) b!3057907))

(assert (= (and b!3057907 res!1255598) b!3057904))

(assert (= (and b!3057904 res!1255595) b!3057901))

(assert (= (and b!3057901 res!1255596) b!3057909))

(assert (= (and b!3057907 (not res!1255600)) b!3057898))

(assert (= (and b!3057898 res!1255597) b!3057906))

(assert (= (and b!3057906 (not res!1255594)) b!3057900))

(assert (= (and b!3057900 (not res!1255599)) b!3057905))

(assert (= (or b!3057911 b!3057904 b!3057906) bm!211205))

(assert (=> b!3057910 m!3380381))

(assert (=> b!3057910 m!3380329))

(assert (=> b!3057910 m!3380381))

(declare-fun m!3380505 () Bool)

(assert (=> b!3057910 m!3380505))

(assert (=> b!3057910 m!3380385))

(assert (=> b!3057910 m!3380505))

(assert (=> b!3057910 m!3380385))

(declare-fun m!3380507 () Bool)

(assert (=> b!3057910 m!3380507))

(assert (=> b!3057900 m!3380385))

(assert (=> b!3057900 m!3380385))

(assert (=> b!3057900 m!3380389))

(assert (=> b!3057909 m!3380381))

(assert (=> b!3057901 m!3380385))

(assert (=> b!3057901 m!3380385))

(assert (=> b!3057901 m!3380389))

(assert (=> b!3057908 m!3380329))

(declare-fun m!3380509 () Bool)

(assert (=> b!3057908 m!3380509))

(assert (=> b!3057905 m!3380381))

(assert (=> d!854974 m!3380327))

(assert (=> d!854974 m!3380329))

(declare-fun m!3380511 () Bool)

(assert (=> d!854974 m!3380511))

(assert (=> bm!211205 m!3380327))

(assert (=> b!3057491 d!854974))

(declare-fun bm!211206 () Bool)

(declare-fun call!211212 () Regex!9477)

(declare-fun call!211216 () Regex!9477)

(assert (=> bm!211206 (= call!211212 call!211216)))

(declare-fun b!3057912 () Bool)

(declare-fun e!1915130 () Regex!9477)

(declare-fun e!1915134 () Regex!9477)

(assert (=> b!3057912 (= e!1915130 e!1915134)))

(declare-fun c!507401 () Bool)

(assert (=> b!3057912 (= c!507401 ((_ is Star!9477) r!17423))))

(declare-fun bm!211207 () Bool)

(declare-fun call!211217 () Bool)

(declare-fun call!211211 () Bool)

(assert (=> bm!211207 (= call!211217 call!211211)))

(declare-fun b!3057913 () Bool)

(declare-fun c!507398 () Bool)

(assert (=> b!3057913 (= c!507398 ((_ is Union!9477) r!17423))))

(declare-fun e!1915124 () Regex!9477)

(assert (=> b!3057913 (= e!1915134 e!1915124)))

(declare-fun d!854976 () Bool)

(declare-fun e!1915136 () Bool)

(assert (=> d!854976 e!1915136))

(declare-fun res!1255602 () Bool)

(assert (=> d!854976 (=> (not res!1255602) (not e!1915136))))

(declare-fun lt!1049401 () Regex!9477)

(assert (=> d!854976 (= res!1255602 (validRegex!4210 lt!1049401))))

(declare-fun e!1915125 () Regex!9477)

(assert (=> d!854976 (= lt!1049401 e!1915125)))

(declare-fun c!507404 () Bool)

(assert (=> d!854976 (= c!507404 ((_ is EmptyLang!9477) r!17423))))

(assert (=> d!854976 (validRegex!4210 r!17423)))

(assert (=> d!854976 (= (simplify!432 r!17423) lt!1049401)))

(declare-fun b!3057914 () Bool)

(declare-fun c!507397 () Bool)

(declare-fun lt!1049397 () Regex!9477)

(assert (=> b!3057914 (= c!507397 (isEmptyExpr!534 lt!1049397))))

(declare-fun e!1915133 () Regex!9477)

(declare-fun e!1915128 () Regex!9477)

(assert (=> b!3057914 (= e!1915133 e!1915128)))

(declare-fun b!3057915 () Bool)

(declare-fun e!1915129 () Regex!9477)

(declare-fun lt!1049402 () Regex!9477)

(assert (=> b!3057915 (= e!1915129 lt!1049402)))

(declare-fun b!3057916 () Bool)

(declare-fun c!507402 () Bool)

(assert (=> b!3057916 (= c!507402 ((_ is EmptyExpr!9477) r!17423))))

(declare-fun e!1915131 () Regex!9477)

(assert (=> b!3057916 (= e!1915131 e!1915130)))

(declare-fun bm!211208 () Bool)

(assert (=> bm!211208 (= call!211216 (simplify!432 (ite c!507401 (reg!9806 r!17423) (ite c!507398 (regOne!19467 r!17423) (regTwo!19466 r!17423)))))))

(declare-fun b!3057917 () Bool)

(declare-fun e!1915135 () Regex!9477)

(declare-fun lt!1049400 () Regex!9477)

(assert (=> b!3057917 (= e!1915135 (Union!9477 lt!1049400 lt!1049402))))

(declare-fun b!3057918 () Bool)

(assert (=> b!3057918 (= e!1915125 e!1915131)))

(declare-fun c!507403 () Bool)

(assert (=> b!3057918 (= c!507403 ((_ is ElementMatch!9477) r!17423))))

(declare-fun bm!211209 () Bool)

(declare-fun call!211213 () Regex!9477)

(assert (=> bm!211209 (= call!211213 (simplify!432 (ite c!507398 (regTwo!19467 r!17423) (regOne!19466 r!17423))))))

(declare-fun b!3057919 () Bool)

(assert (=> b!3057919 (= e!1915131 r!17423)))

(declare-fun b!3057920 () Bool)

(declare-fun e!1915127 () Bool)

(declare-fun call!211214 () Bool)

(assert (=> b!3057920 (= e!1915127 call!211214)))

(declare-fun b!3057921 () Bool)

(declare-fun e!1915132 () Regex!9477)

(assert (=> b!3057921 (= e!1915132 EmptyExpr!9477)))

(declare-fun b!3057922 () Bool)

(declare-fun e!1915123 () Regex!9477)

(assert (=> b!3057922 (= e!1915123 lt!1049397)))

(declare-fun b!3057923 () Bool)

(assert (=> b!3057923 (= e!1915130 EmptyExpr!9477)))

(declare-fun b!3057924 () Bool)

(assert (=> b!3057924 (= e!1915124 e!1915129)))

(assert (=> b!3057924 (= lt!1049400 call!211212)))

(assert (=> b!3057924 (= lt!1049402 call!211213)))

(declare-fun c!507407 () Bool)

(assert (=> b!3057924 (= c!507407 call!211217)))

(declare-fun lt!1049398 () Regex!9477)

(declare-fun call!211215 () Bool)

(declare-fun lt!1049399 () Regex!9477)

(declare-fun bm!211210 () Bool)

(assert (=> bm!211210 (= call!211215 (isEmptyExpr!534 (ite c!507401 lt!1049399 lt!1049398)))))

(declare-fun b!3057925 () Bool)

(assert (=> b!3057925 (= e!1915135 lt!1049400)))

(declare-fun b!3057926 () Bool)

(declare-fun c!507399 () Bool)

(declare-fun e!1915126 () Bool)

(assert (=> b!3057926 (= c!507399 e!1915126)))

(declare-fun res!1255601 () Bool)

(assert (=> b!3057926 (=> res!1255601 e!1915126)))

(assert (=> b!3057926 (= res!1255601 call!211211)))

(assert (=> b!3057926 (= lt!1049399 call!211216)))

(assert (=> b!3057926 (= e!1915134 e!1915132)))

(declare-fun b!3057927 () Bool)

(assert (=> b!3057927 (= e!1915125 EmptyLang!9477)))

(declare-fun b!3057928 () Bool)

(assert (=> b!3057928 (= e!1915133 EmptyLang!9477)))

(declare-fun b!3057929 () Bool)

(assert (=> b!3057929 (= e!1915128 lt!1049398)))

(declare-fun b!3057930 () Bool)

(assert (=> b!3057930 (= e!1915128 e!1915123)))

(declare-fun c!507405 () Bool)

(assert (=> b!3057930 (= c!507405 call!211215)))

(declare-fun b!3057931 () Bool)

(assert (=> b!3057931 (= e!1915124 e!1915133)))

(assert (=> b!3057931 (= lt!1049397 call!211213)))

(assert (=> b!3057931 (= lt!1049398 call!211212)))

(declare-fun res!1255603 () Bool)

(assert (=> b!3057931 (= res!1255603 call!211217)))

(assert (=> b!3057931 (=> res!1255603 e!1915127)))

(declare-fun c!507400 () Bool)

(assert (=> b!3057931 (= c!507400 e!1915127)))

(declare-fun b!3057932 () Bool)

(assert (=> b!3057932 (= e!1915132 (Star!9477 lt!1049399))))

(declare-fun b!3057933 () Bool)

(assert (=> b!3057933 (= e!1915126 call!211215)))

(declare-fun bm!211211 () Bool)

(assert (=> bm!211211 (= call!211214 (isEmptyLang!528 (ite c!507398 lt!1049402 lt!1049398)))))

(declare-fun b!3057934 () Bool)

(declare-fun c!507406 () Bool)

(assert (=> b!3057934 (= c!507406 call!211214)))

(assert (=> b!3057934 (= e!1915129 e!1915135)))

(declare-fun b!3057935 () Bool)

(assert (=> b!3057935 (= e!1915123 (Concat!14798 lt!1049397 lt!1049398))))

(declare-fun b!3057936 () Bool)

(assert (=> b!3057936 (= e!1915136 (= (nullable!3123 lt!1049401) (nullable!3123 r!17423)))))

(declare-fun bm!211212 () Bool)

(assert (=> bm!211212 (= call!211211 (isEmptyLang!528 (ite c!507401 lt!1049399 (ite c!507398 lt!1049400 lt!1049397))))))

(assert (= (and d!854976 c!507404) b!3057927))

(assert (= (and d!854976 (not c!507404)) b!3057918))

(assert (= (and b!3057918 c!507403) b!3057919))

(assert (= (and b!3057918 (not c!507403)) b!3057916))

(assert (= (and b!3057916 c!507402) b!3057923))

(assert (= (and b!3057916 (not c!507402)) b!3057912))

(assert (= (and b!3057912 c!507401) b!3057926))

(assert (= (and b!3057912 (not c!507401)) b!3057913))

(assert (= (and b!3057926 (not res!1255601)) b!3057933))

(assert (= (and b!3057926 c!507399) b!3057921))

(assert (= (and b!3057926 (not c!507399)) b!3057932))

(assert (= (and b!3057913 c!507398) b!3057924))

(assert (= (and b!3057913 (not c!507398)) b!3057931))

(assert (= (and b!3057924 c!507407) b!3057915))

(assert (= (and b!3057924 (not c!507407)) b!3057934))

(assert (= (and b!3057934 c!507406) b!3057925))

(assert (= (and b!3057934 (not c!507406)) b!3057917))

(assert (= (and b!3057931 (not res!1255603)) b!3057920))

(assert (= (and b!3057931 c!507400) b!3057928))

(assert (= (and b!3057931 (not c!507400)) b!3057914))

(assert (= (and b!3057914 c!507397) b!3057929))

(assert (= (and b!3057914 (not c!507397)) b!3057930))

(assert (= (and b!3057930 c!507405) b!3057922))

(assert (= (and b!3057930 (not c!507405)) b!3057935))

(assert (= (or b!3057924 b!3057931) bm!211206))

(assert (= (or b!3057924 b!3057931) bm!211209))

(assert (= (or b!3057924 b!3057931) bm!211207))

(assert (= (or b!3057934 b!3057920) bm!211211))

(assert (= (or b!3057933 b!3057930) bm!211210))

(assert (= (or b!3057926 bm!211206) bm!211208))

(assert (= (or b!3057926 bm!211207) bm!211212))

(assert (= (and d!854976 res!1255602) b!3057936))

(declare-fun m!3380513 () Bool)

(assert (=> bm!211208 m!3380513))

(declare-fun m!3380515 () Bool)

(assert (=> b!3057936 m!3380515))

(declare-fun m!3380517 () Bool)

(assert (=> b!3057936 m!3380517))

(declare-fun m!3380519 () Bool)

(assert (=> bm!211212 m!3380519))

(declare-fun m!3380521 () Bool)

(assert (=> d!854976 m!3380521))

(assert (=> d!854976 m!3380333))

(declare-fun m!3380523 () Bool)

(assert (=> b!3057914 m!3380523))

(declare-fun m!3380525 () Bool)

(assert (=> bm!211210 m!3380525))

(declare-fun m!3380527 () Bool)

(assert (=> bm!211209 m!3380527))

(declare-fun m!3380529 () Bool)

(assert (=> bm!211211 m!3380529))

(assert (=> b!3057491 d!854976))

(declare-fun d!854978 () Bool)

(assert (=> d!854978 (= (isEmpty!19533 s!11993) ((_ is Nil!35218) s!11993))))

(assert (=> b!3057497 d!854978))

(declare-fun b!3057955 () Bool)

(declare-fun res!1255615 () Bool)

(declare-fun e!1915151 () Bool)

(assert (=> b!3057955 (=> res!1255615 e!1915151)))

(assert (=> b!3057955 (= res!1255615 (not ((_ is Concat!14798) r!17423)))))

(declare-fun e!1915152 () Bool)

(assert (=> b!3057955 (= e!1915152 e!1915151)))

(declare-fun bm!211219 () Bool)

(declare-fun call!211224 () Bool)

(declare-fun call!211225 () Bool)

(assert (=> bm!211219 (= call!211224 call!211225)))

(declare-fun b!3057956 () Bool)

(declare-fun e!1915155 () Bool)

(assert (=> b!3057956 (= e!1915155 call!211225)))

(declare-fun b!3057957 () Bool)

(declare-fun e!1915154 () Bool)

(assert (=> b!3057957 (= e!1915151 e!1915154)))

(declare-fun res!1255617 () Bool)

(assert (=> b!3057957 (=> (not res!1255617) (not e!1915154))))

(declare-fun call!211226 () Bool)

(assert (=> b!3057957 (= res!1255617 call!211226)))

(declare-fun c!507412 () Bool)

(declare-fun bm!211220 () Bool)

(declare-fun c!507413 () Bool)

(assert (=> bm!211220 (= call!211225 (validRegex!4210 (ite c!507412 (reg!9806 r!17423) (ite c!507413 (regOne!19467 r!17423) (regTwo!19466 r!17423)))))))

(declare-fun b!3057959 () Bool)

(declare-fun e!1915157 () Bool)

(declare-fun e!1915153 () Bool)

(assert (=> b!3057959 (= e!1915157 e!1915153)))

(assert (=> b!3057959 (= c!507412 ((_ is Star!9477) r!17423))))

(declare-fun b!3057960 () Bool)

(declare-fun res!1255618 () Bool)

(declare-fun e!1915156 () Bool)

(assert (=> b!3057960 (=> (not res!1255618) (not e!1915156))))

(assert (=> b!3057960 (= res!1255618 call!211224)))

(assert (=> b!3057960 (= e!1915152 e!1915156)))

(declare-fun b!3057958 () Bool)

(assert (=> b!3057958 (= e!1915153 e!1915155)))

(declare-fun res!1255614 () Bool)

(assert (=> b!3057958 (= res!1255614 (not (nullable!3123 (reg!9806 r!17423))))))

(assert (=> b!3057958 (=> (not res!1255614) (not e!1915155))))

(declare-fun d!854980 () Bool)

(declare-fun res!1255616 () Bool)

(assert (=> d!854980 (=> res!1255616 e!1915157)))

(assert (=> d!854980 (= res!1255616 ((_ is ElementMatch!9477) r!17423))))

(assert (=> d!854980 (= (validRegex!4210 r!17423) e!1915157)))

(declare-fun b!3057961 () Bool)

(assert (=> b!3057961 (= e!1915154 call!211224)))

(declare-fun b!3057962 () Bool)

(assert (=> b!3057962 (= e!1915153 e!1915152)))

(assert (=> b!3057962 (= c!507413 ((_ is Union!9477) r!17423))))

(declare-fun bm!211221 () Bool)

(assert (=> bm!211221 (= call!211226 (validRegex!4210 (ite c!507413 (regTwo!19467 r!17423) (regOne!19466 r!17423))))))

(declare-fun b!3057963 () Bool)

(assert (=> b!3057963 (= e!1915156 call!211226)))

(assert (= (and d!854980 (not res!1255616)) b!3057959))

(assert (= (and b!3057959 c!507412) b!3057958))

(assert (= (and b!3057959 (not c!507412)) b!3057962))

(assert (= (and b!3057958 res!1255614) b!3057956))

(assert (= (and b!3057962 c!507413) b!3057960))

(assert (= (and b!3057962 (not c!507413)) b!3057955))

(assert (= (and b!3057960 res!1255618) b!3057963))

(assert (= (and b!3057955 (not res!1255615)) b!3057957))

(assert (= (and b!3057957 res!1255617) b!3057961))

(assert (= (or b!3057960 b!3057961) bm!211219))

(assert (= (or b!3057963 b!3057957) bm!211221))

(assert (= (or b!3057956 bm!211219) bm!211220))

(declare-fun m!3380531 () Bool)

(assert (=> bm!211220 m!3380531))

(declare-fun m!3380533 () Bool)

(assert (=> b!3057958 m!3380533))

(declare-fun m!3380535 () Bool)

(assert (=> bm!211221 m!3380535))

(assert (=> start!291960 d!854980))

(declare-fun d!854982 () Bool)

(assert (=> d!854982 (= (isEmptyLang!528 lt!1049325) ((_ is EmptyLang!9477) lt!1049325))))

(assert (=> b!3057487 d!854982))

(declare-fun b!3058071 () Bool)

(assert (=> b!3058071 true))

(assert (=> b!3058071 true))

(declare-fun bs!532418 () Bool)

(declare-fun b!3058074 () Bool)

(assert (= bs!532418 (and b!3058074 b!3058071)))

(declare-fun lambda!113826 () Int)

(declare-fun lambda!113825 () Int)

(assert (=> bs!532418 (not (= lambda!113826 lambda!113825))))

(assert (=> b!3058074 true))

(assert (=> b!3058074 true))

(declare-fun b!3058070 () Bool)

(declare-fun e!1915205 () Bool)

(declare-fun e!1915206 () Bool)

(assert (=> b!3058070 (= e!1915205 e!1915206)))

(declare-fun c!507429 () Bool)

(assert (=> b!3058070 (= c!507429 ((_ is Star!9477) r!17423))))

(declare-fun e!1915208 () Bool)

(declare-fun call!211238 () Bool)

(assert (=> b!3058071 (= e!1915208 call!211238)))

(declare-fun b!3058072 () Bool)

(declare-fun e!1915210 () Bool)

(assert (=> b!3058072 (= e!1915210 (= s!11993 (Cons!35218 (c!507253 r!17423) Nil!35218)))))

(declare-fun bm!211233 () Bool)

(declare-fun Exists!1740 (Int) Bool)

(assert (=> bm!211233 (= call!211238 (Exists!1740 (ite c!507429 lambda!113825 lambda!113826)))))

(declare-fun b!3058073 () Bool)

(declare-fun c!507432 () Bool)

(assert (=> b!3058073 (= c!507432 ((_ is Union!9477) r!17423))))

(assert (=> b!3058073 (= e!1915210 e!1915205)))

(declare-fun bm!211234 () Bool)

(declare-fun call!211239 () Bool)

(assert (=> bm!211234 (= call!211239 (isEmpty!19533 s!11993))))

(assert (=> b!3058074 (= e!1915206 call!211238)))

(declare-fun b!3058076 () Bool)

(declare-fun c!507430 () Bool)

(assert (=> b!3058076 (= c!507430 ((_ is ElementMatch!9477) r!17423))))

(declare-fun e!1915207 () Bool)

(assert (=> b!3058076 (= e!1915207 e!1915210)))

(declare-fun b!3058077 () Bool)

(declare-fun e!1915204 () Bool)

(assert (=> b!3058077 (= e!1915205 e!1915204)))

(declare-fun res!1255658 () Bool)

(assert (=> b!3058077 (= res!1255658 (matchRSpec!1614 (regOne!19467 r!17423) s!11993))))

(assert (=> b!3058077 (=> res!1255658 e!1915204)))

(declare-fun b!3058078 () Bool)

(declare-fun e!1915209 () Bool)

(assert (=> b!3058078 (= e!1915209 call!211239)))

(declare-fun b!3058079 () Bool)

(declare-fun res!1255656 () Bool)

(assert (=> b!3058079 (=> res!1255656 e!1915208)))

(assert (=> b!3058079 (= res!1255656 call!211239)))

(assert (=> b!3058079 (= e!1915206 e!1915208)))

(declare-fun b!3058080 () Bool)

(assert (=> b!3058080 (= e!1915209 e!1915207)))

(declare-fun res!1255657 () Bool)

(assert (=> b!3058080 (= res!1255657 (not ((_ is EmptyLang!9477) r!17423)))))

(assert (=> b!3058080 (=> (not res!1255657) (not e!1915207))))

(declare-fun d!854984 () Bool)

(declare-fun c!507431 () Bool)

(assert (=> d!854984 (= c!507431 ((_ is EmptyExpr!9477) r!17423))))

(assert (=> d!854984 (= (matchRSpec!1614 r!17423 s!11993) e!1915209)))

(declare-fun b!3058075 () Bool)

(assert (=> b!3058075 (= e!1915204 (matchRSpec!1614 (regTwo!19467 r!17423) s!11993))))

(assert (= (and d!854984 c!507431) b!3058078))

(assert (= (and d!854984 (not c!507431)) b!3058080))

(assert (= (and b!3058080 res!1255657) b!3058076))

(assert (= (and b!3058076 c!507430) b!3058072))

(assert (= (and b!3058076 (not c!507430)) b!3058073))

(assert (= (and b!3058073 c!507432) b!3058077))

(assert (= (and b!3058073 (not c!507432)) b!3058070))

(assert (= (and b!3058077 (not res!1255658)) b!3058075))

(assert (= (and b!3058070 c!507429) b!3058079))

(assert (= (and b!3058070 (not c!507429)) b!3058074))

(assert (= (and b!3058079 (not res!1255656)) b!3058071))

(assert (= (or b!3058071 b!3058074) bm!211233))

(assert (= (or b!3058078 b!3058079) bm!211234))

(declare-fun m!3380549 () Bool)

(assert (=> bm!211233 m!3380549))

(assert (=> bm!211234 m!3380327))

(declare-fun m!3380551 () Bool)

(assert (=> b!3058077 m!3380551))

(declare-fun m!3380553 () Bool)

(assert (=> b!3058075 m!3380553))

(assert (=> b!3057492 d!854984))

(declare-fun b!3058085 () Bool)

(declare-fun e!1915214 () Bool)

(declare-fun e!1915211 () Bool)

(assert (=> b!3058085 (= e!1915214 e!1915211)))

(declare-fun res!1255663 () Bool)

(assert (=> b!3058085 (=> (not res!1255663) (not e!1915211))))

(declare-fun lt!1049407 () Bool)

(assert (=> b!3058085 (= res!1255663 (not lt!1049407))))

(declare-fun b!3058086 () Bool)

(declare-fun e!1915213 () Bool)

(assert (=> b!3058086 (= e!1915213 (not lt!1049407))))

(declare-fun b!3058087 () Bool)

(declare-fun res!1255665 () Bool)

(declare-fun e!1915217 () Bool)

(assert (=> b!3058087 (=> res!1255665 e!1915217)))

(assert (=> b!3058087 (= res!1255665 (not (isEmpty!19533 (tail!5004 s!11993))))))

(declare-fun b!3058088 () Bool)

(declare-fun res!1255662 () Bool)

(declare-fun e!1915215 () Bool)

(assert (=> b!3058088 (=> (not res!1255662) (not e!1915215))))

(assert (=> b!3058088 (= res!1255662 (isEmpty!19533 (tail!5004 s!11993)))))

(declare-fun b!3058089 () Bool)

(declare-fun res!1255659 () Bool)

(assert (=> b!3058089 (=> res!1255659 e!1915214)))

(assert (=> b!3058089 (= res!1255659 (not ((_ is ElementMatch!9477) r!17423)))))

(assert (=> b!3058089 (= e!1915213 e!1915214)))

(declare-fun b!3058090 () Bool)

(declare-fun e!1915212 () Bool)

(assert (=> b!3058090 (= e!1915212 e!1915213)))

(declare-fun c!507435 () Bool)

(assert (=> b!3058090 (= c!507435 ((_ is EmptyLang!9477) r!17423))))

(declare-fun b!3058091 () Bool)

(declare-fun res!1255661 () Bool)

(assert (=> b!3058091 (=> (not res!1255661) (not e!1915215))))

(declare-fun call!211240 () Bool)

(assert (=> b!3058091 (= res!1255661 (not call!211240))))

(declare-fun b!3058092 () Bool)

(assert (=> b!3058092 (= e!1915217 (not (= (head!6778 s!11993) (c!507253 r!17423))))))

(declare-fun d!854990 () Bool)

(assert (=> d!854990 e!1915212))

(declare-fun c!507434 () Bool)

(assert (=> d!854990 (= c!507434 ((_ is EmptyExpr!9477) r!17423))))

(declare-fun e!1915216 () Bool)

(assert (=> d!854990 (= lt!1049407 e!1915216)))

(declare-fun c!507433 () Bool)

(assert (=> d!854990 (= c!507433 (isEmpty!19533 s!11993))))

(assert (=> d!854990 (validRegex!4210 r!17423)))

(assert (=> d!854990 (= (matchR!4359 r!17423 s!11993) lt!1049407)))

(declare-fun b!3058093 () Bool)

(assert (=> b!3058093 (= e!1915211 e!1915217)))

(declare-fun res!1255660 () Bool)

(assert (=> b!3058093 (=> res!1255660 e!1915217)))

(assert (=> b!3058093 (= res!1255660 call!211240)))

(declare-fun b!3058094 () Bool)

(declare-fun res!1255666 () Bool)

(assert (=> b!3058094 (=> res!1255666 e!1915214)))

(assert (=> b!3058094 (= res!1255666 e!1915215)))

(declare-fun res!1255664 () Bool)

(assert (=> b!3058094 (=> (not res!1255664) (not e!1915215))))

(assert (=> b!3058094 (= res!1255664 lt!1049407)))

(declare-fun b!3058095 () Bool)

(assert (=> b!3058095 (= e!1915216 (nullable!3123 r!17423))))

(declare-fun b!3058096 () Bool)

(assert (=> b!3058096 (= e!1915215 (= (head!6778 s!11993) (c!507253 r!17423)))))

(declare-fun b!3058097 () Bool)

(assert (=> b!3058097 (= e!1915216 (matchR!4359 (derivativeStep!2719 r!17423 (head!6778 s!11993)) (tail!5004 s!11993)))))

(declare-fun b!3058098 () Bool)

(assert (=> b!3058098 (= e!1915212 (= lt!1049407 call!211240))))

(declare-fun bm!211235 () Bool)

(assert (=> bm!211235 (= call!211240 (isEmpty!19533 s!11993))))

(assert (= (and d!854990 c!507433) b!3058095))

(assert (= (and d!854990 (not c!507433)) b!3058097))

(assert (= (and d!854990 c!507434) b!3058098))

(assert (= (and d!854990 (not c!507434)) b!3058090))

(assert (= (and b!3058090 c!507435) b!3058086))

(assert (= (and b!3058090 (not c!507435)) b!3058089))

(assert (= (and b!3058089 (not res!1255659)) b!3058094))

(assert (= (and b!3058094 res!1255664) b!3058091))

(assert (= (and b!3058091 res!1255661) b!3058088))

(assert (= (and b!3058088 res!1255662) b!3058096))

(assert (= (and b!3058094 (not res!1255666)) b!3058085))

(assert (= (and b!3058085 res!1255663) b!3058093))

(assert (= (and b!3058093 (not res!1255660)) b!3058087))

(assert (= (and b!3058087 (not res!1255665)) b!3058092))

(assert (= (or b!3058098 b!3058091 b!3058093) bm!211235))

(assert (=> b!3058097 m!3380381))

(assert (=> b!3058097 m!3380381))

(declare-fun m!3380555 () Bool)

(assert (=> b!3058097 m!3380555))

(assert (=> b!3058097 m!3380385))

(assert (=> b!3058097 m!3380555))

(assert (=> b!3058097 m!3380385))

(declare-fun m!3380557 () Bool)

(assert (=> b!3058097 m!3380557))

(assert (=> b!3058087 m!3380385))

(assert (=> b!3058087 m!3380385))

(assert (=> b!3058087 m!3380389))

(assert (=> b!3058096 m!3380381))

(assert (=> b!3058088 m!3380385))

(assert (=> b!3058088 m!3380385))

(assert (=> b!3058088 m!3380389))

(assert (=> b!3058095 m!3380517))

(assert (=> b!3058092 m!3380381))

(assert (=> d!854990 m!3380327))

(assert (=> d!854990 m!3380333))

(assert (=> bm!211235 m!3380327))

(assert (=> b!3057492 d!854990))

(declare-fun d!854992 () Bool)

(assert (=> d!854992 (= (matchR!4359 r!17423 s!11993) (matchRSpec!1614 r!17423 s!11993))))

(declare-fun lt!1049410 () Unit!49393)

(declare-fun choose!18111 (Regex!9477 List!35342) Unit!49393)

(assert (=> d!854992 (= lt!1049410 (choose!18111 r!17423 s!11993))))

(assert (=> d!854992 (validRegex!4210 r!17423)))

(assert (=> d!854992 (= (mainMatchTheorem!1614 r!17423 s!11993) lt!1049410)))

(declare-fun bs!532419 () Bool)

(assert (= bs!532419 d!854992))

(assert (=> bs!532419 m!3380339))

(assert (=> bs!532419 m!3380337))

(declare-fun m!3380559 () Bool)

(assert (=> bs!532419 m!3380559))

(assert (=> bs!532419 m!3380333))

(assert (=> b!3057492 d!854992))

(declare-fun b!3058112 () Bool)

(declare-fun e!1915220 () Bool)

(declare-fun tp!966822 () Bool)

(declare-fun tp!966819 () Bool)

(assert (=> b!3058112 (= e!1915220 (and tp!966822 tp!966819))))

(assert (=> b!3057489 (= tp!966765 e!1915220)))

(declare-fun b!3058110 () Bool)

(declare-fun tp!966818 () Bool)

(declare-fun tp!966821 () Bool)

(assert (=> b!3058110 (= e!1915220 (and tp!966818 tp!966821))))

(declare-fun b!3058111 () Bool)

(declare-fun tp!966820 () Bool)

(assert (=> b!3058111 (= e!1915220 tp!966820)))

(declare-fun b!3058109 () Bool)

(assert (=> b!3058109 (= e!1915220 tp_is_empty!16517)))

(assert (= (and b!3057489 ((_ is ElementMatch!9477) (reg!9806 r!17423))) b!3058109))

(assert (= (and b!3057489 ((_ is Concat!14798) (reg!9806 r!17423))) b!3058110))

(assert (= (and b!3057489 ((_ is Star!9477) (reg!9806 r!17423))) b!3058111))

(assert (= (and b!3057489 ((_ is Union!9477) (reg!9806 r!17423))) b!3058112))

(declare-fun b!3058117 () Bool)

(declare-fun e!1915223 () Bool)

(declare-fun tp!966825 () Bool)

(assert (=> b!3058117 (= e!1915223 (and tp_is_empty!16517 tp!966825))))

(assert (=> b!3057494 (= tp!966769 e!1915223)))

(assert (= (and b!3057494 ((_ is Cons!35218) (t!234407 s!11993))) b!3058117))

(declare-fun b!3058121 () Bool)

(declare-fun e!1915224 () Bool)

(declare-fun tp!966830 () Bool)

(declare-fun tp!966827 () Bool)

(assert (=> b!3058121 (= e!1915224 (and tp!966830 tp!966827))))

(assert (=> b!3057496 (= tp!966767 e!1915224)))

(declare-fun b!3058119 () Bool)

(declare-fun tp!966826 () Bool)

(declare-fun tp!966829 () Bool)

(assert (=> b!3058119 (= e!1915224 (and tp!966826 tp!966829))))

(declare-fun b!3058120 () Bool)

(declare-fun tp!966828 () Bool)

(assert (=> b!3058120 (= e!1915224 tp!966828)))

(declare-fun b!3058118 () Bool)

(assert (=> b!3058118 (= e!1915224 tp_is_empty!16517)))

(assert (= (and b!3057496 ((_ is ElementMatch!9477) (regOne!19466 r!17423))) b!3058118))

(assert (= (and b!3057496 ((_ is Concat!14798) (regOne!19466 r!17423))) b!3058119))

(assert (= (and b!3057496 ((_ is Star!9477) (regOne!19466 r!17423))) b!3058120))

(assert (= (and b!3057496 ((_ is Union!9477) (regOne!19466 r!17423))) b!3058121))

(declare-fun b!3058125 () Bool)

(declare-fun e!1915225 () Bool)

(declare-fun tp!966835 () Bool)

(declare-fun tp!966832 () Bool)

(assert (=> b!3058125 (= e!1915225 (and tp!966835 tp!966832))))

(assert (=> b!3057496 (= tp!966768 e!1915225)))

(declare-fun b!3058123 () Bool)

(declare-fun tp!966831 () Bool)

(declare-fun tp!966834 () Bool)

(assert (=> b!3058123 (= e!1915225 (and tp!966831 tp!966834))))

(declare-fun b!3058124 () Bool)

(declare-fun tp!966833 () Bool)

(assert (=> b!3058124 (= e!1915225 tp!966833)))

(declare-fun b!3058122 () Bool)

(assert (=> b!3058122 (= e!1915225 tp_is_empty!16517)))

(assert (= (and b!3057496 ((_ is ElementMatch!9477) (regTwo!19466 r!17423))) b!3058122))

(assert (= (and b!3057496 ((_ is Concat!14798) (regTwo!19466 r!17423))) b!3058123))

(assert (= (and b!3057496 ((_ is Star!9477) (regTwo!19466 r!17423))) b!3058124))

(assert (= (and b!3057496 ((_ is Union!9477) (regTwo!19466 r!17423))) b!3058125))

(declare-fun b!3058129 () Bool)

(declare-fun e!1915226 () Bool)

(declare-fun tp!966840 () Bool)

(declare-fun tp!966837 () Bool)

(assert (=> b!3058129 (= e!1915226 (and tp!966840 tp!966837))))

(assert (=> b!3057493 (= tp!966766 e!1915226)))

(declare-fun b!3058127 () Bool)

(declare-fun tp!966836 () Bool)

(declare-fun tp!966839 () Bool)

(assert (=> b!3058127 (= e!1915226 (and tp!966836 tp!966839))))

(declare-fun b!3058128 () Bool)

(declare-fun tp!966838 () Bool)

(assert (=> b!3058128 (= e!1915226 tp!966838)))

(declare-fun b!3058126 () Bool)

(assert (=> b!3058126 (= e!1915226 tp_is_empty!16517)))

(assert (= (and b!3057493 ((_ is ElementMatch!9477) (regOne!19467 r!17423))) b!3058126))

(assert (= (and b!3057493 ((_ is Concat!14798) (regOne!19467 r!17423))) b!3058127))

(assert (= (and b!3057493 ((_ is Star!9477) (regOne!19467 r!17423))) b!3058128))

(assert (= (and b!3057493 ((_ is Union!9477) (regOne!19467 r!17423))) b!3058129))

(declare-fun b!3058133 () Bool)

(declare-fun e!1915227 () Bool)

(declare-fun tp!966845 () Bool)

(declare-fun tp!966842 () Bool)

(assert (=> b!3058133 (= e!1915227 (and tp!966845 tp!966842))))

(assert (=> b!3057493 (= tp!966764 e!1915227)))

(declare-fun b!3058131 () Bool)

(declare-fun tp!966841 () Bool)

(declare-fun tp!966844 () Bool)

(assert (=> b!3058131 (= e!1915227 (and tp!966841 tp!966844))))

(declare-fun b!3058132 () Bool)

(declare-fun tp!966843 () Bool)

(assert (=> b!3058132 (= e!1915227 tp!966843)))

(declare-fun b!3058130 () Bool)

(assert (=> b!3058130 (= e!1915227 tp_is_empty!16517)))

(assert (= (and b!3057493 ((_ is ElementMatch!9477) (regTwo!19467 r!17423))) b!3058130))

(assert (= (and b!3057493 ((_ is Concat!14798) (regTwo!19467 r!17423))) b!3058131))

(assert (= (and b!3057493 ((_ is Star!9477) (regTwo!19467 r!17423))) b!3058132))

(assert (= (and b!3057493 ((_ is Union!9477) (regTwo!19467 r!17423))) b!3058133))

(check-sat (not b!3058075) (not d!854942) (not b!3058088) (not b!3057612) (not b!3057620) (not b!3058124) (not b!3057636) (not bm!211195) (not bm!211210) (not b!3057875) (not b!3057632) (not bm!211204) (not bm!211196) (not b!3058112) (not b!3057611) tp_is_empty!16517 (not bm!211193) (not d!854960) (not d!854954) (not b!3057872) (not bm!211211) (not b!3057910) (not b!3058110) (not b!3057958) (not b!3058111) (not d!854990) (not b!3058119) (not b!3057850) (not b!3057908) (not b!3058129) (not bm!211208) (not bm!211234) (not b!3057901) (not b!3057900) (not b!3058117) (not d!854992) (not b!3058087) (not b!3058121) (not b!3057936) (not b!3058131) (not bm!211202) (not b!3057914) (not b!3058095) (not b!3057628) (not bm!211203) (not b!3057627) (not bm!211205) (not b!3057909) (not d!854972) (not b!3058128) (not bm!211140) (not b!3057619) (not bm!211212) (not b!3058077) (not d!854974) (not b!3058132) (not bm!211220) (not b!3057635) (not bm!211197) (not d!854976) (not d!854956) (not bm!211194) (not b!3058123) (not b!3057637) (not b!3057905) (not bm!211233) (not b!3058096) (not bm!211221) (not bm!211200) (not b!3058092) (not b!3057621) (not b!3058120) (not b!3058125) (not b!3058127) (not bm!211209) (not b!3058133) (not bm!211201) (not b!3058097) (not bm!211235) (not bm!211139) (not b!3057616) (not b!3057897))
(check-sat)
