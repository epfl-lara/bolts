; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90268 () Bool)

(assert start!90268)

(declare-fun b!1037515 () Bool)

(assert (=> b!1037515 true))

(assert (=> b!1037515 true))

(declare-fun lambda!37408 () Int)

(declare-fun lambda!37407 () Int)

(assert (=> b!1037515 (not (= lambda!37408 lambda!37407))))

(assert (=> b!1037515 true))

(assert (=> b!1037515 true))

(declare-fun bs!247756 () Bool)

(declare-fun b!1037513 () Bool)

(assert (= bs!247756 (and b!1037513 b!1037515)))

(declare-datatypes ((C!6334 0))(
  ( (C!6335 (val!3415 Int)) )
))
(declare-datatypes ((Regex!2882 0))(
  ( (ElementMatch!2882 (c!172255 C!6334)) (Concat!4715 (regOne!6276 Regex!2882) (regTwo!6276 Regex!2882)) (EmptyExpr!2882) (Star!2882 (reg!3211 Regex!2882)) (EmptyLang!2882) (Union!2882 (regOne!6277 Regex!2882) (regTwo!6277 Regex!2882)) )
))
(declare-fun r!15766 () Regex!2882)

(declare-fun lambda!37409 () Int)

(declare-fun lt!357006 () Regex!2882)

(declare-fun lt!357003 () Regex!2882)

(assert (=> bs!247756 (= (and (= lt!357006 (regOne!6276 r!15766)) (= lt!357003 (regTwo!6276 r!15766))) (= lambda!37409 lambda!37407))))

(assert (=> bs!247756 (not (= lambda!37409 lambda!37408))))

(assert (=> b!1037513 true))

(assert (=> b!1037513 true))

(assert (=> b!1037513 true))

(declare-fun b!1037510 () Bool)

(declare-fun e!660682 () Bool)

(declare-fun e!660683 () Bool)

(assert (=> b!1037510 (= e!660682 e!660683)))

(declare-fun res!465986 () Bool)

(assert (=> b!1037510 (=> res!465986 e!660683)))

(declare-fun lt!357001 () Regex!2882)

(declare-datatypes ((List!10112 0))(
  ( (Nil!10096) (Cons!10096 (h!15497 C!6334) (t!101158 List!10112)) )
))
(declare-fun s!10566 () List!10112)

(declare-fun matchR!1418 (Regex!2882 List!10112) Bool)

(assert (=> b!1037510 (= res!465986 (not (matchR!1418 lt!357001 s!10566)))))

(assert (=> b!1037510 (= lt!357001 (Concat!4715 lt!357006 lt!357003))))

(declare-fun removeUselessConcat!431 (Regex!2882) Regex!2882)

(assert (=> b!1037510 (= lt!357003 (removeUselessConcat!431 (regTwo!6276 r!15766)))))

(assert (=> b!1037510 (= lt!357006 (removeUselessConcat!431 (regOne!6276 r!15766)))))

(declare-fun b!1037511 () Bool)

(declare-fun e!660685 () Bool)

(declare-fun tp_is_empty!5407 () Bool)

(assert (=> b!1037511 (= e!660685 tp_is_empty!5407)))

(declare-fun b!1037512 () Bool)

(declare-fun tp!313745 () Bool)

(declare-fun tp!313741 () Bool)

(assert (=> b!1037512 (= e!660685 (and tp!313745 tp!313741))))

(declare-fun validRegex!1351 (Regex!2882) Bool)

(assert (=> b!1037513 (= e!660683 (validRegex!1351 lt!357006))))

(declare-datatypes ((tuple2!11530 0))(
  ( (tuple2!11531 (_1!6591 List!10112) (_2!6591 List!10112)) )
))
(declare-datatypes ((Option!2407 0))(
  ( (None!2406) (Some!2406 (v!19823 tuple2!11530)) )
))
(declare-fun isDefined!2049 (Option!2407) Bool)

(declare-fun findConcatSeparation!513 (Regex!2882 Regex!2882 List!10112 List!10112 List!10112) Option!2407)

(declare-fun Exists!609 (Int) Bool)

(assert (=> b!1037513 (= (isDefined!2049 (findConcatSeparation!513 lt!357006 lt!357003 Nil!10096 s!10566 s!10566)) (Exists!609 lambda!37409))))

(declare-datatypes ((Unit!15439 0))(
  ( (Unit!15440) )
))
(declare-fun lt!357000 () Unit!15439)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!513 (Regex!2882 Regex!2882 List!10112) Unit!15439)

(assert (=> b!1037513 (= lt!357000 (lemmaFindConcatSeparationEquivalentToExists!513 lt!357006 lt!357003 s!10566))))

(declare-fun matchRSpec!681 (Regex!2882 List!10112) Bool)

(assert (=> b!1037513 (matchRSpec!681 lt!357001 s!10566)))

(declare-fun lt!357004 () Unit!15439)

(declare-fun mainMatchTheorem!681 (Regex!2882 List!10112) Unit!15439)

(assert (=> b!1037513 (= lt!357004 (mainMatchTheorem!681 lt!357001 s!10566))))

(declare-fun b!1037514 () Bool)

(declare-fun e!660684 () Bool)

(declare-fun e!660680 () Bool)

(assert (=> b!1037514 (= e!660684 (not e!660680))))

(declare-fun res!465984 () Bool)

(assert (=> b!1037514 (=> res!465984 e!660680)))

(declare-fun lt!357002 () Bool)

(assert (=> b!1037514 (= res!465984 (or lt!357002 (and (is-Concat!4715 r!15766) (is-EmptyExpr!2882 (regOne!6276 r!15766))) (and (is-Concat!4715 r!15766) (is-EmptyExpr!2882 (regTwo!6276 r!15766))) (not (is-Concat!4715 r!15766))))))

(assert (=> b!1037514 (= lt!357002 (matchRSpec!681 r!15766 s!10566))))

(assert (=> b!1037514 (= lt!357002 (matchR!1418 r!15766 s!10566))))

(declare-fun lt!357005 () Unit!15439)

(assert (=> b!1037514 (= lt!357005 (mainMatchTheorem!681 r!15766 s!10566))))

(declare-fun res!465983 () Bool)

(assert (=> start!90268 (=> (not res!465983) (not e!660684))))

(assert (=> start!90268 (= res!465983 (validRegex!1351 r!15766))))

(assert (=> start!90268 e!660684))

(assert (=> start!90268 e!660685))

(declare-fun e!660681 () Bool)

(assert (=> start!90268 e!660681))

(assert (=> b!1037515 (= e!660680 e!660682)))

(declare-fun res!465985 () Bool)

(assert (=> b!1037515 (=> res!465985 e!660682)))

(declare-fun isEmpty!6494 (List!10112) Bool)

(assert (=> b!1037515 (= res!465985 (isEmpty!6494 s!10566))))

(assert (=> b!1037515 (= (Exists!609 lambda!37407) (Exists!609 lambda!37408))))

(declare-fun lt!356999 () Unit!15439)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!297 (Regex!2882 Regex!2882 List!10112) Unit!15439)

(assert (=> b!1037515 (= lt!356999 (lemmaExistCutMatchRandMatchRSpecEquivalent!297 (regOne!6276 r!15766) (regTwo!6276 r!15766) s!10566))))

(assert (=> b!1037515 (= (isDefined!2049 (findConcatSeparation!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) Nil!10096 s!10566 s!10566)) (Exists!609 lambda!37407))))

(declare-fun lt!356998 () Unit!15439)

(assert (=> b!1037515 (= lt!356998 (lemmaFindConcatSeparationEquivalentToExists!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) s!10566))))

(declare-fun b!1037516 () Bool)

(declare-fun tp!313746 () Bool)

(assert (=> b!1037516 (= e!660685 tp!313746)))

(declare-fun b!1037517 () Bool)

(declare-fun tp!313742 () Bool)

(assert (=> b!1037517 (= e!660681 (and tp_is_empty!5407 tp!313742))))

(declare-fun b!1037518 () Bool)

(declare-fun tp!313743 () Bool)

(declare-fun tp!313744 () Bool)

(assert (=> b!1037518 (= e!660685 (and tp!313743 tp!313744))))

(assert (= (and start!90268 res!465983) b!1037514))

(assert (= (and b!1037514 (not res!465984)) b!1037515))

(assert (= (and b!1037515 (not res!465985)) b!1037510))

(assert (= (and b!1037510 (not res!465986)) b!1037513))

(assert (= (and start!90268 (is-ElementMatch!2882 r!15766)) b!1037511))

(assert (= (and start!90268 (is-Concat!4715 r!15766)) b!1037512))

(assert (= (and start!90268 (is-Star!2882 r!15766)) b!1037516))

(assert (= (and start!90268 (is-Union!2882 r!15766)) b!1037518))

(assert (= (and start!90268 (is-Cons!10096 s!10566)) b!1037517))

(declare-fun m!1207525 () Bool)

(assert (=> b!1037510 m!1207525))

(declare-fun m!1207527 () Bool)

(assert (=> b!1037510 m!1207527))

(declare-fun m!1207529 () Bool)

(assert (=> b!1037510 m!1207529))

(declare-fun m!1207531 () Bool)

(assert (=> b!1037514 m!1207531))

(declare-fun m!1207533 () Bool)

(assert (=> b!1037514 m!1207533))

(declare-fun m!1207535 () Bool)

(assert (=> b!1037514 m!1207535))

(declare-fun m!1207537 () Bool)

(assert (=> b!1037513 m!1207537))

(declare-fun m!1207539 () Bool)

(assert (=> b!1037513 m!1207539))

(declare-fun m!1207541 () Bool)

(assert (=> b!1037513 m!1207541))

(declare-fun m!1207543 () Bool)

(assert (=> b!1037513 m!1207543))

(assert (=> b!1037513 m!1207541))

(declare-fun m!1207545 () Bool)

(assert (=> b!1037513 m!1207545))

(declare-fun m!1207547 () Bool)

(assert (=> b!1037513 m!1207547))

(declare-fun m!1207549 () Bool)

(assert (=> b!1037513 m!1207549))

(declare-fun m!1207551 () Bool)

(assert (=> start!90268 m!1207551))

(declare-fun m!1207553 () Bool)

(assert (=> b!1037515 m!1207553))

(declare-fun m!1207555 () Bool)

(assert (=> b!1037515 m!1207555))

(declare-fun m!1207557 () Bool)

(assert (=> b!1037515 m!1207557))

(declare-fun m!1207559 () Bool)

(assert (=> b!1037515 m!1207559))

(declare-fun m!1207561 () Bool)

(assert (=> b!1037515 m!1207561))

(assert (=> b!1037515 m!1207553))

(declare-fun m!1207563 () Bool)

(assert (=> b!1037515 m!1207563))

(declare-fun m!1207565 () Bool)

(assert (=> b!1037515 m!1207565))

(assert (=> b!1037515 m!1207555))

(push 1)

(assert (not b!1037510))

(assert (not b!1037512))

(assert (not b!1037513))

(assert tp_is_empty!5407)

(assert (not b!1037514))

(assert (not b!1037515))

(assert (not b!1037518))

(assert (not b!1037516))

(assert (not b!1037517))

(assert (not start!90268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!247758 () Bool)

(declare-fun b!1037612 () Bool)

(assert (= bs!247758 (and b!1037612 b!1037515)))

(declare-fun lambda!37425 () Int)

(assert (=> bs!247758 (not (= lambda!37425 lambda!37407))))

(assert (=> bs!247758 (not (= lambda!37425 lambda!37408))))

(declare-fun bs!247759 () Bool)

(assert (= bs!247759 (and b!1037612 b!1037513)))

(assert (=> bs!247759 (not (= lambda!37425 lambda!37409))))

(assert (=> b!1037612 true))

(assert (=> b!1037612 true))

(declare-fun bs!247760 () Bool)

(declare-fun b!1037604 () Bool)

(assert (= bs!247760 (and b!1037604 b!1037515)))

(declare-fun lambda!37426 () Int)

(assert (=> bs!247760 (not (= lambda!37426 lambda!37407))))

(assert (=> bs!247760 (= lambda!37426 lambda!37408)))

(declare-fun bs!247761 () Bool)

(assert (= bs!247761 (and b!1037604 b!1037513)))

(assert (=> bs!247761 (not (= lambda!37426 lambda!37409))))

(declare-fun bs!247762 () Bool)

(assert (= bs!247762 (and b!1037604 b!1037612)))

(assert (=> bs!247762 (not (= lambda!37426 lambda!37425))))

(assert (=> b!1037604 true))

(assert (=> b!1037604 true))

(declare-fun b!1037602 () Bool)

(declare-fun e!660736 () Bool)

(declare-fun e!660731 () Bool)

(assert (=> b!1037602 (= e!660736 e!660731)))

(declare-fun res!466032 () Bool)

(assert (=> b!1037602 (= res!466032 (not (is-EmptyLang!2882 r!15766)))))

(assert (=> b!1037602 (=> (not res!466032) (not e!660731))))

(declare-fun d!296449 () Bool)

(declare-fun c!172267 () Bool)

(assert (=> d!296449 (= c!172267 (is-EmptyExpr!2882 r!15766))))

(assert (=> d!296449 (= (matchRSpec!681 r!15766 s!10566) e!660736)))

(declare-fun b!1037603 () Bool)

(declare-fun call!71881 () Bool)

(assert (=> b!1037603 (= e!660736 call!71881)))

(declare-fun bm!71875 () Bool)

(assert (=> bm!71875 (= call!71881 (isEmpty!6494 s!10566))))

(declare-fun e!660730 () Bool)

(declare-fun call!71880 () Bool)

(assert (=> b!1037604 (= e!660730 call!71880)))

(declare-fun b!1037605 () Bool)

(declare-fun c!172268 () Bool)

(assert (=> b!1037605 (= c!172268 (is-ElementMatch!2882 r!15766))))

(declare-fun e!660734 () Bool)

(assert (=> b!1037605 (= e!660731 e!660734)))

(declare-fun b!1037606 () Bool)

(declare-fun e!660733 () Bool)

(declare-fun e!660735 () Bool)

(assert (=> b!1037606 (= e!660733 e!660735)))

(declare-fun res!466033 () Bool)

(assert (=> b!1037606 (= res!466033 (matchRSpec!681 (regOne!6277 r!15766) s!10566))))

(assert (=> b!1037606 (=> res!466033 e!660735)))

(declare-fun b!1037607 () Bool)

(declare-fun res!466031 () Bool)

(declare-fun e!660732 () Bool)

(assert (=> b!1037607 (=> res!466031 e!660732)))

(assert (=> b!1037607 (= res!466031 call!71881)))

(assert (=> b!1037607 (= e!660730 e!660732)))

(declare-fun b!1037608 () Bool)

(assert (=> b!1037608 (= e!660733 e!660730)))

(declare-fun c!172265 () Bool)

(assert (=> b!1037608 (= c!172265 (is-Star!2882 r!15766))))

(declare-fun b!1037609 () Bool)

(assert (=> b!1037609 (= e!660734 (= s!10566 (Cons!10096 (c!172255 r!15766) Nil!10096)))))

(declare-fun bm!71876 () Bool)

(assert (=> bm!71876 (= call!71880 (Exists!609 (ite c!172265 lambda!37425 lambda!37426)))))

(declare-fun b!1037610 () Bool)

(declare-fun c!172266 () Bool)

(assert (=> b!1037610 (= c!172266 (is-Union!2882 r!15766))))

(assert (=> b!1037610 (= e!660734 e!660733)))

(declare-fun b!1037611 () Bool)

(assert (=> b!1037611 (= e!660735 (matchRSpec!681 (regTwo!6277 r!15766) s!10566))))

(assert (=> b!1037612 (= e!660732 call!71880)))

(assert (= (and d!296449 c!172267) b!1037603))

(assert (= (and d!296449 (not c!172267)) b!1037602))

(assert (= (and b!1037602 res!466032) b!1037605))

(assert (= (and b!1037605 c!172268) b!1037609))

(assert (= (and b!1037605 (not c!172268)) b!1037610))

(assert (= (and b!1037610 c!172266) b!1037606))

(assert (= (and b!1037610 (not c!172266)) b!1037608))

(assert (= (and b!1037606 (not res!466033)) b!1037611))

(assert (= (and b!1037608 c!172265) b!1037607))

(assert (= (and b!1037608 (not c!172265)) b!1037604))

(assert (= (and b!1037607 (not res!466031)) b!1037612))

(assert (= (or b!1037612 b!1037604) bm!71876))

(assert (= (or b!1037603 b!1037607) bm!71875))

(assert (=> bm!71875 m!1207561))

(declare-fun m!1207609 () Bool)

(assert (=> b!1037606 m!1207609))

(declare-fun m!1207611 () Bool)

(assert (=> bm!71876 m!1207611))

(declare-fun m!1207613 () Bool)

(assert (=> b!1037611 m!1207613))

(assert (=> b!1037514 d!296449))

(declare-fun b!1037641 () Bool)

(declare-fun e!660752 () Bool)

(declare-fun nullable!974 (Regex!2882) Bool)

(assert (=> b!1037641 (= e!660752 (nullable!974 r!15766))))

(declare-fun b!1037642 () Bool)

(declare-fun derivativeStep!774 (Regex!2882 C!6334) Regex!2882)

(declare-fun head!1929 (List!10112) C!6334)

(declare-fun tail!1491 (List!10112) List!10112)

(assert (=> b!1037642 (= e!660752 (matchR!1418 (derivativeStep!774 r!15766 (head!1929 s!10566)) (tail!1491 s!10566)))))

(declare-fun b!1037643 () Bool)

(declare-fun e!660756 () Bool)

(declare-fun e!660755 () Bool)

(assert (=> b!1037643 (= e!660756 e!660755)))

(declare-fun c!172276 () Bool)

(assert (=> b!1037643 (= c!172276 (is-EmptyLang!2882 r!15766))))

(declare-fun b!1037644 () Bool)

(declare-fun e!660753 () Bool)

(assert (=> b!1037644 (= e!660753 (not (= (head!1929 s!10566) (c!172255 r!15766))))))

(declare-fun d!296451 () Bool)

(assert (=> d!296451 e!660756))

(declare-fun c!172277 () Bool)

(assert (=> d!296451 (= c!172277 (is-EmptyExpr!2882 r!15766))))

(declare-fun lt!357036 () Bool)

(assert (=> d!296451 (= lt!357036 e!660752)))

(declare-fun c!172275 () Bool)

(assert (=> d!296451 (= c!172275 (isEmpty!6494 s!10566))))

(assert (=> d!296451 (validRegex!1351 r!15766)))

(assert (=> d!296451 (= (matchR!1418 r!15766 s!10566) lt!357036)))

(declare-fun b!1037645 () Bool)

(declare-fun e!660751 () Bool)

(assert (=> b!1037645 (= e!660751 (= (head!1929 s!10566) (c!172255 r!15766)))))

(declare-fun b!1037646 () Bool)

(declare-fun res!466051 () Bool)

(assert (=> b!1037646 (=> res!466051 e!660753)))

(assert (=> b!1037646 (= res!466051 (not (isEmpty!6494 (tail!1491 s!10566))))))

(declare-fun b!1037647 () Bool)

(declare-fun call!71884 () Bool)

(assert (=> b!1037647 (= e!660756 (= lt!357036 call!71884))))

(declare-fun b!1037648 () Bool)

(declare-fun res!466053 () Bool)

(assert (=> b!1037648 (=> (not res!466053) (not e!660751))))

(assert (=> b!1037648 (= res!466053 (isEmpty!6494 (tail!1491 s!10566)))))

(declare-fun bm!71879 () Bool)

(assert (=> bm!71879 (= call!71884 (isEmpty!6494 s!10566))))

(declare-fun b!1037649 () Bool)

(assert (=> b!1037649 (= e!660755 (not lt!357036))))

(declare-fun b!1037650 () Bool)

(declare-fun res!466050 () Bool)

(assert (=> b!1037650 (=> (not res!466050) (not e!660751))))

(assert (=> b!1037650 (= res!466050 (not call!71884))))

(declare-fun b!1037651 () Bool)

(declare-fun e!660757 () Bool)

(declare-fun e!660754 () Bool)

(assert (=> b!1037651 (= e!660757 e!660754)))

(declare-fun res!466056 () Bool)

(assert (=> b!1037651 (=> (not res!466056) (not e!660754))))

(assert (=> b!1037651 (= res!466056 (not lt!357036))))

(declare-fun b!1037652 () Bool)

(declare-fun res!466054 () Bool)

(assert (=> b!1037652 (=> res!466054 e!660757)))

(assert (=> b!1037652 (= res!466054 e!660751)))

(declare-fun res!466057 () Bool)

(assert (=> b!1037652 (=> (not res!466057) (not e!660751))))

(assert (=> b!1037652 (= res!466057 lt!357036)))

(declare-fun b!1037653 () Bool)

(declare-fun res!466055 () Bool)

(assert (=> b!1037653 (=> res!466055 e!660757)))

(assert (=> b!1037653 (= res!466055 (not (is-ElementMatch!2882 r!15766)))))

(assert (=> b!1037653 (= e!660755 e!660757)))

(declare-fun b!1037654 () Bool)

(assert (=> b!1037654 (= e!660754 e!660753)))

(declare-fun res!466052 () Bool)

(assert (=> b!1037654 (=> res!466052 e!660753)))

(assert (=> b!1037654 (= res!466052 call!71884)))

(assert (= (and d!296451 c!172275) b!1037641))

(assert (= (and d!296451 (not c!172275)) b!1037642))

(assert (= (and d!296451 c!172277) b!1037647))

(assert (= (and d!296451 (not c!172277)) b!1037643))

(assert (= (and b!1037643 c!172276) b!1037649))

(assert (= (and b!1037643 (not c!172276)) b!1037653))

(assert (= (and b!1037653 (not res!466055)) b!1037652))

(assert (= (and b!1037652 res!466057) b!1037650))

(assert (= (and b!1037650 res!466050) b!1037648))

(assert (= (and b!1037648 res!466053) b!1037645))

(assert (= (and b!1037652 (not res!466054)) b!1037651))

(assert (= (and b!1037651 res!466056) b!1037654))

(assert (= (and b!1037654 (not res!466052)) b!1037646))

(assert (= (and b!1037646 (not res!466051)) b!1037644))

(assert (= (or b!1037647 b!1037650 b!1037654) bm!71879))

(declare-fun m!1207615 () Bool)

(assert (=> b!1037641 m!1207615))

(assert (=> bm!71879 m!1207561))

(declare-fun m!1207617 () Bool)

(assert (=> b!1037648 m!1207617))

(assert (=> b!1037648 m!1207617))

(declare-fun m!1207619 () Bool)

(assert (=> b!1037648 m!1207619))

(assert (=> d!296451 m!1207561))

(assert (=> d!296451 m!1207551))

(declare-fun m!1207621 () Bool)

(assert (=> b!1037642 m!1207621))

(assert (=> b!1037642 m!1207621))

(declare-fun m!1207623 () Bool)

(assert (=> b!1037642 m!1207623))

(assert (=> b!1037642 m!1207617))

(assert (=> b!1037642 m!1207623))

(assert (=> b!1037642 m!1207617))

(declare-fun m!1207625 () Bool)

(assert (=> b!1037642 m!1207625))

(assert (=> b!1037645 m!1207621))

(assert (=> b!1037644 m!1207621))

(assert (=> b!1037646 m!1207617))

(assert (=> b!1037646 m!1207617))

(assert (=> b!1037646 m!1207619))

(assert (=> b!1037514 d!296451))

(declare-fun d!296455 () Bool)

(assert (=> d!296455 (= (matchR!1418 r!15766 s!10566) (matchRSpec!681 r!15766 s!10566))))

(declare-fun lt!357039 () Unit!15439)

(declare-fun choose!6629 (Regex!2882 List!10112) Unit!15439)

(assert (=> d!296455 (= lt!357039 (choose!6629 r!15766 s!10566))))

(assert (=> d!296455 (validRegex!1351 r!15766)))

(assert (=> d!296455 (= (mainMatchTheorem!681 r!15766 s!10566) lt!357039)))

(declare-fun bs!247763 () Bool)

(assert (= bs!247763 d!296455))

(assert (=> bs!247763 m!1207533))

(assert (=> bs!247763 m!1207531))

(declare-fun m!1207627 () Bool)

(assert (=> bs!247763 m!1207627))

(assert (=> bs!247763 m!1207551))

(assert (=> b!1037514 d!296455))

(declare-fun d!296457 () Bool)

(assert (=> d!296457 (= (isEmpty!6494 s!10566) (is-Nil!10096 s!10566))))

(assert (=> b!1037515 d!296457))

(declare-fun d!296459 () Bool)

(declare-fun isEmpty!6496 (Option!2407) Bool)

(assert (=> d!296459 (= (isDefined!2049 (findConcatSeparation!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) Nil!10096 s!10566 s!10566)) (not (isEmpty!6496 (findConcatSeparation!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) Nil!10096 s!10566 s!10566))))))

(declare-fun bs!247764 () Bool)

(assert (= bs!247764 d!296459))

(assert (=> bs!247764 m!1207555))

(declare-fun m!1207629 () Bool)

(assert (=> bs!247764 m!1207629))

(assert (=> b!1037515 d!296459))

(declare-fun d!296461 () Bool)

(declare-fun choose!6630 (Int) Bool)

(assert (=> d!296461 (= (Exists!609 lambda!37408) (choose!6630 lambda!37408))))

(declare-fun bs!247765 () Bool)

(assert (= bs!247765 d!296461))

(declare-fun m!1207631 () Bool)

(assert (=> bs!247765 m!1207631))

(assert (=> b!1037515 d!296461))

(declare-fun bs!247766 () Bool)

(declare-fun d!296463 () Bool)

(assert (= bs!247766 (and d!296463 b!1037515)))

(declare-fun lambda!37433 () Int)

(assert (=> bs!247766 (not (= lambda!37433 lambda!37408))))

(declare-fun bs!247767 () Bool)

(assert (= bs!247767 (and d!296463 b!1037612)))

(assert (=> bs!247767 (not (= lambda!37433 lambda!37425))))

(assert (=> bs!247766 (= lambda!37433 lambda!37407)))

(declare-fun bs!247768 () Bool)

(assert (= bs!247768 (and d!296463 b!1037513)))

(assert (=> bs!247768 (= (and (= (regOne!6276 r!15766) lt!357006) (= (regTwo!6276 r!15766) lt!357003)) (= lambda!37433 lambda!37409))))

(declare-fun bs!247769 () Bool)

(assert (= bs!247769 (and d!296463 b!1037604)))

(assert (=> bs!247769 (not (= lambda!37433 lambda!37426))))

(assert (=> d!296463 true))

(assert (=> d!296463 true))

(assert (=> d!296463 true))

(assert (=> d!296463 (= (isDefined!2049 (findConcatSeparation!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) Nil!10096 s!10566 s!10566)) (Exists!609 lambda!37433))))

(declare-fun lt!357042 () Unit!15439)

(declare-fun choose!6631 (Regex!2882 Regex!2882 List!10112) Unit!15439)

(assert (=> d!296463 (= lt!357042 (choose!6631 (regOne!6276 r!15766) (regTwo!6276 r!15766) s!10566))))

(assert (=> d!296463 (validRegex!1351 (regOne!6276 r!15766))))

(assert (=> d!296463 (= (lemmaFindConcatSeparationEquivalentToExists!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) s!10566) lt!357042)))

(declare-fun bs!247770 () Bool)

(assert (= bs!247770 d!296463))

(assert (=> bs!247770 m!1207555))

(assert (=> bs!247770 m!1207557))

(declare-fun m!1207633 () Bool)

(assert (=> bs!247770 m!1207633))

(declare-fun m!1207635 () Bool)

(assert (=> bs!247770 m!1207635))

(assert (=> bs!247770 m!1207555))

(declare-fun m!1207637 () Bool)

(assert (=> bs!247770 m!1207637))

(assert (=> b!1037515 d!296463))

(declare-fun b!1037720 () Bool)

(declare-fun e!660795 () Option!2407)

(assert (=> b!1037720 (= e!660795 (Some!2406 (tuple2!11531 Nil!10096 s!10566)))))

(declare-fun b!1037721 () Bool)

(declare-fun e!660796 () Option!2407)

(assert (=> b!1037721 (= e!660795 e!660796)))

(declare-fun c!172294 () Bool)

(assert (=> b!1037721 (= c!172294 (is-Nil!10096 s!10566))))

(declare-fun d!296465 () Bool)

(declare-fun e!660798 () Bool)

(assert (=> d!296465 e!660798))

(declare-fun res!466092 () Bool)

(assert (=> d!296465 (=> res!466092 e!660798)))

(declare-fun e!660797 () Bool)

(assert (=> d!296465 (= res!466092 e!660797)))

(declare-fun res!466093 () Bool)

(assert (=> d!296465 (=> (not res!466093) (not e!660797))))

(declare-fun lt!357050 () Option!2407)

(assert (=> d!296465 (= res!466093 (isDefined!2049 lt!357050))))

(assert (=> d!296465 (= lt!357050 e!660795)))

(declare-fun c!172295 () Bool)

(declare-fun e!660799 () Bool)

(assert (=> d!296465 (= c!172295 e!660799)))

(declare-fun res!466091 () Bool)

(assert (=> d!296465 (=> (not res!466091) (not e!660799))))

(assert (=> d!296465 (= res!466091 (matchR!1418 (regOne!6276 r!15766) Nil!10096))))

(assert (=> d!296465 (validRegex!1351 (regOne!6276 r!15766))))

(assert (=> d!296465 (= (findConcatSeparation!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) Nil!10096 s!10566 s!10566) lt!357050)))

(declare-fun b!1037722 () Bool)

(assert (=> b!1037722 (= e!660799 (matchR!1418 (regTwo!6276 r!15766) s!10566))))

(declare-fun b!1037723 () Bool)

(declare-fun res!466094 () Bool)

(assert (=> b!1037723 (=> (not res!466094) (not e!660797))))

(declare-fun get!3601 (Option!2407) tuple2!11530)

(assert (=> b!1037723 (= res!466094 (matchR!1418 (regTwo!6276 r!15766) (_2!6591 (get!3601 lt!357050))))))

(declare-fun b!1037724 () Bool)

(assert (=> b!1037724 (= e!660798 (not (isDefined!2049 lt!357050)))))

(declare-fun b!1037725 () Bool)

(declare-fun lt!357049 () Unit!15439)

(declare-fun lt!357051 () Unit!15439)

(assert (=> b!1037725 (= lt!357049 lt!357051)))

(declare-fun ++!2782 (List!10112 List!10112) List!10112)

(assert (=> b!1037725 (= (++!2782 (++!2782 Nil!10096 (Cons!10096 (h!15497 s!10566) Nil!10096)) (t!101158 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!375 (List!10112 C!6334 List!10112 List!10112) Unit!15439)

(assert (=> b!1037725 (= lt!357051 (lemmaMoveElementToOtherListKeepsConcatEq!375 Nil!10096 (h!15497 s!10566) (t!101158 s!10566) s!10566))))

(assert (=> b!1037725 (= e!660796 (findConcatSeparation!513 (regOne!6276 r!15766) (regTwo!6276 r!15766) (++!2782 Nil!10096 (Cons!10096 (h!15497 s!10566) Nil!10096)) (t!101158 s!10566) s!10566))))

(declare-fun b!1037726 () Bool)

(declare-fun res!466095 () Bool)

(assert (=> b!1037726 (=> (not res!466095) (not e!660797))))

(assert (=> b!1037726 (= res!466095 (matchR!1418 (regOne!6276 r!15766) (_1!6591 (get!3601 lt!357050))))))

(declare-fun b!1037727 () Bool)

(assert (=> b!1037727 (= e!660796 None!2406)))

(declare-fun b!1037728 () Bool)

(assert (=> b!1037728 (= e!660797 (= (++!2782 (_1!6591 (get!3601 lt!357050)) (_2!6591 (get!3601 lt!357050))) s!10566))))

(assert (= (and d!296465 res!466091) b!1037722))

(assert (= (and d!296465 c!172295) b!1037720))

(assert (= (and d!296465 (not c!172295)) b!1037721))

(assert (= (and b!1037721 c!172294) b!1037727))

(assert (= (and b!1037721 (not c!172294)) b!1037725))

(assert (= (and d!296465 res!466093) b!1037726))

(assert (= (and b!1037726 res!466095) b!1037723))

(assert (= (and b!1037723 res!466094) b!1037728))

(assert (= (and d!296465 (not res!466092)) b!1037724))

(declare-fun m!1207639 () Bool)

(assert (=> b!1037726 m!1207639))

(declare-fun m!1207641 () Bool)

(assert (=> b!1037726 m!1207641))

(assert (=> b!1037728 m!1207639))

(declare-fun m!1207643 () Bool)

(assert (=> b!1037728 m!1207643))

(declare-fun m!1207645 () Bool)

(assert (=> b!1037725 m!1207645))

(assert (=> b!1037725 m!1207645))

(declare-fun m!1207647 () Bool)

(assert (=> b!1037725 m!1207647))

(declare-fun m!1207649 () Bool)

(assert (=> b!1037725 m!1207649))

(assert (=> b!1037725 m!1207645))

(declare-fun m!1207651 () Bool)

(assert (=> b!1037725 m!1207651))

(declare-fun m!1207653 () Bool)

(assert (=> b!1037722 m!1207653))

(declare-fun m!1207655 () Bool)

(assert (=> d!296465 m!1207655))

(declare-fun m!1207657 () Bool)

(assert (=> d!296465 m!1207657))

(assert (=> d!296465 m!1207635))

(assert (=> b!1037724 m!1207655))

(assert (=> b!1037723 m!1207639))

(declare-fun m!1207659 () Bool)

(assert (=> b!1037723 m!1207659))

(assert (=> b!1037515 d!296465))

(declare-fun d!296467 () Bool)

(assert (=> d!296467 (= (Exists!609 lambda!37407) (choose!6630 lambda!37407))))

(declare-fun bs!247776 () Bool)

(assert (= bs!247776 d!296467))

(declare-fun m!1207661 () Bool)

(assert (=> bs!247776 m!1207661))

(assert (=> b!1037515 d!296467))

(declare-fun bs!247777 () Bool)

(declare-fun d!296469 () Bool)

(assert (= bs!247777 (and d!296469 b!1037515)))

(declare-fun lambda!37440 () Int)

(assert (=> bs!247777 (not (= lambda!37440 lambda!37408))))

(declare-fun bs!247778 () Bool)

(assert (= bs!247778 (and d!296469 b!1037612)))

(assert (=> bs!247778 (not (= lambda!37440 lambda!37425))))

(assert (=> bs!247777 (= lambda!37440 lambda!37407)))

(declare-fun bs!247779 () Bool)

(assert (= bs!247779 (and d!296469 b!1037513)))

(assert (=> bs!247779 (= (and (= (regOne!6276 r!15766) lt!357006) (= (regTwo!6276 r!15766) lt!357003)) (= lambda!37440 lambda!37409))))

(declare-fun bs!247780 () Bool)

(assert (= bs!247780 (and d!296469 b!1037604)))

(assert (=> bs!247780 (not (= lambda!37440 lambda!37426))))

(declare-fun bs!247781 () Bool)

(assert (= bs!247781 (and d!296469 d!296463)))

(assert (=> bs!247781 (= lambda!37440 lambda!37433)))

(assert (=> d!296469 true))

(assert (=> d!296469 true))

(assert (=> d!296469 true))

(declare-fun lambda!37441 () Int)

(assert (=> bs!247777 (= lambda!37441 lambda!37408)))

(assert (=> bs!247778 (not (= lambda!37441 lambda!37425))))

(assert (=> bs!247777 (not (= lambda!37441 lambda!37407))))

(assert (=> bs!247779 (not (= lambda!37441 lambda!37409))))

(declare-fun bs!247782 () Bool)

(assert (= bs!247782 d!296469))

(assert (=> bs!247782 (not (= lambda!37441 lambda!37440))))

(assert (=> bs!247780 (= lambda!37441 lambda!37426)))

(assert (=> bs!247781 (not (= lambda!37441 lambda!37433))))

(assert (=> d!296469 true))

(assert (=> d!296469 true))

(assert (=> d!296469 true))

(assert (=> d!296469 (= (Exists!609 lambda!37440) (Exists!609 lambda!37441))))

(declare-fun lt!357054 () Unit!15439)

(declare-fun choose!6632 (Regex!2882 Regex!2882 List!10112) Unit!15439)

(assert (=> d!296469 (= lt!357054 (choose!6632 (regOne!6276 r!15766) (regTwo!6276 r!15766) s!10566))))

(assert (=> d!296469 (validRegex!1351 (regOne!6276 r!15766))))

(assert (=> d!296469 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!297 (regOne!6276 r!15766) (regTwo!6276 r!15766) s!10566) lt!357054)))

(declare-fun m!1207669 () Bool)

(assert (=> bs!247782 m!1207669))

(declare-fun m!1207671 () Bool)

(assert (=> bs!247782 m!1207671))

(declare-fun m!1207673 () Bool)

(assert (=> bs!247782 m!1207673))

(assert (=> bs!247782 m!1207635))

(assert (=> b!1037515 d!296469))

(declare-fun b!1037783 () Bool)

(declare-fun e!660836 () Bool)

(declare-fun call!71899 () Bool)

(assert (=> b!1037783 (= e!660836 call!71899)))

(declare-fun b!1037784 () Bool)

(declare-fun e!660832 () Bool)

(assert (=> b!1037784 (= e!660832 e!660836)))

(declare-fun res!466131 () Bool)

(assert (=> b!1037784 (=> (not res!466131) (not e!660836))))

(declare-fun call!71901 () Bool)

(assert (=> b!1037784 (= res!466131 call!71901)))

(declare-fun b!1037785 () Bool)

(declare-fun e!660838 () Bool)

(declare-fun e!660833 () Bool)

(assert (=> b!1037785 (= e!660838 e!660833)))

(declare-fun res!466130 () Bool)

(assert (=> b!1037785 (= res!466130 (not (nullable!974 (reg!3211 r!15766))))))

(assert (=> b!1037785 (=> (not res!466130) (not e!660833))))

(declare-fun b!1037787 () Bool)

(declare-fun res!466133 () Bool)

(declare-fun e!660835 () Bool)

(assert (=> b!1037787 (=> (not res!466133) (not e!660835))))

(assert (=> b!1037787 (= res!466133 call!71901)))

(declare-fun e!660834 () Bool)

(assert (=> b!1037787 (= e!660834 e!660835)))

(declare-fun b!1037788 () Bool)

(assert (=> b!1037788 (= e!660838 e!660834)))

(declare-fun c!172306 () Bool)

(assert (=> b!1037788 (= c!172306 (is-Union!2882 r!15766))))

(declare-fun b!1037789 () Bool)

(declare-fun call!71900 () Bool)

(assert (=> b!1037789 (= e!660833 call!71900)))

(declare-fun b!1037790 () Bool)

(declare-fun e!660837 () Bool)

(assert (=> b!1037790 (= e!660837 e!660838)))

(declare-fun c!172307 () Bool)

(assert (=> b!1037790 (= c!172307 (is-Star!2882 r!15766))))

(declare-fun b!1037791 () Bool)

(declare-fun res!466132 () Bool)

(assert (=> b!1037791 (=> res!466132 e!660832)))

(assert (=> b!1037791 (= res!466132 (not (is-Concat!4715 r!15766)))))

(assert (=> b!1037791 (= e!660834 e!660832)))

(declare-fun bm!71894 () Bool)

(assert (=> bm!71894 (= call!71899 (validRegex!1351 (ite c!172306 (regTwo!6277 r!15766) (regTwo!6276 r!15766))))))

(declare-fun bm!71895 () Bool)

(assert (=> bm!71895 (= call!71901 call!71900)))

(declare-fun bm!71896 () Bool)

(assert (=> bm!71896 (= call!71900 (validRegex!1351 (ite c!172307 (reg!3211 r!15766) (ite c!172306 (regOne!6277 r!15766) (regOne!6276 r!15766)))))))

(declare-fun d!296473 () Bool)

(declare-fun res!466134 () Bool)

(assert (=> d!296473 (=> res!466134 e!660837)))

(assert (=> d!296473 (= res!466134 (is-ElementMatch!2882 r!15766))))

(assert (=> d!296473 (= (validRegex!1351 r!15766) e!660837)))

(declare-fun b!1037786 () Bool)

(assert (=> b!1037786 (= e!660835 call!71899)))

(assert (= (and d!296473 (not res!466134)) b!1037790))

(assert (= (and b!1037790 c!172307) b!1037785))

(assert (= (and b!1037790 (not c!172307)) b!1037788))

(assert (= (and b!1037785 res!466130) b!1037789))

(assert (= (and b!1037788 c!172306) b!1037787))

(assert (= (and b!1037788 (not c!172306)) b!1037791))

(assert (= (and b!1037787 res!466133) b!1037786))

(assert (= (and b!1037791 (not res!466132)) b!1037784))

(assert (= (and b!1037784 res!466131) b!1037783))

(assert (= (or b!1037786 b!1037783) bm!71894))

(assert (= (or b!1037787 b!1037784) bm!71895))

(assert (= (or b!1037789 bm!71895) bm!71896))

(declare-fun m!1207675 () Bool)

(assert (=> b!1037785 m!1207675))

(declare-fun m!1207677 () Bool)

(assert (=> bm!71894 m!1207677))

(declare-fun m!1207679 () Bool)

(assert (=> bm!71896 m!1207679))

(assert (=> start!90268 d!296473))

(declare-fun bs!247783 () Bool)

(declare-fun b!1037802 () Bool)

(assert (= bs!247783 (and b!1037802 b!1037515)))

(declare-fun lambda!37442 () Int)

(assert (=> bs!247783 (not (= lambda!37442 lambda!37408))))

(declare-fun bs!247784 () Bool)

(assert (= bs!247784 (and b!1037802 b!1037612)))

(assert (=> bs!247784 (= (and (= (reg!3211 lt!357001) (reg!3211 r!15766)) (= lt!357001 r!15766)) (= lambda!37442 lambda!37425))))

(assert (=> bs!247783 (not (= lambda!37442 lambda!37407))))

(declare-fun bs!247785 () Bool)

(assert (= bs!247785 (and b!1037802 b!1037513)))

(assert (=> bs!247785 (not (= lambda!37442 lambda!37409))))

(declare-fun bs!247786 () Bool)

(assert (= bs!247786 (and b!1037802 d!296469)))

(assert (=> bs!247786 (not (= lambda!37442 lambda!37440))))

(declare-fun bs!247787 () Bool)

(assert (= bs!247787 (and b!1037802 b!1037604)))

(assert (=> bs!247787 (not (= lambda!37442 lambda!37426))))

(assert (=> bs!247786 (not (= lambda!37442 lambda!37441))))

(declare-fun bs!247788 () Bool)

(assert (= bs!247788 (and b!1037802 d!296463)))

(assert (=> bs!247788 (not (= lambda!37442 lambda!37433))))

(assert (=> b!1037802 true))

(assert (=> b!1037802 true))

(declare-fun bs!247789 () Bool)

(declare-fun b!1037794 () Bool)

(assert (= bs!247789 (and b!1037794 b!1037515)))

(declare-fun lambda!37443 () Int)

(assert (=> bs!247789 (= (and (= (regOne!6276 lt!357001) (regOne!6276 r!15766)) (= (regTwo!6276 lt!357001) (regTwo!6276 r!15766))) (= lambda!37443 lambda!37408))))

(declare-fun bs!247790 () Bool)

(assert (= bs!247790 (and b!1037794 b!1037612)))

(assert (=> bs!247790 (not (= lambda!37443 lambda!37425))))

(assert (=> bs!247789 (not (= lambda!37443 lambda!37407))))

(declare-fun bs!247791 () Bool)

(assert (= bs!247791 (and b!1037794 d!296469)))

(assert (=> bs!247791 (not (= lambda!37443 lambda!37440))))

(declare-fun bs!247792 () Bool)

(assert (= bs!247792 (and b!1037794 b!1037604)))

(assert (=> bs!247792 (= (and (= (regOne!6276 lt!357001) (regOne!6276 r!15766)) (= (regTwo!6276 lt!357001) (regTwo!6276 r!15766))) (= lambda!37443 lambda!37426))))

(declare-fun bs!247793 () Bool)

(assert (= bs!247793 (and b!1037794 b!1037802)))

(assert (=> bs!247793 (not (= lambda!37443 lambda!37442))))

(declare-fun bs!247794 () Bool)

(assert (= bs!247794 (and b!1037794 b!1037513)))

(assert (=> bs!247794 (not (= lambda!37443 lambda!37409))))

(assert (=> bs!247791 (= (and (= (regOne!6276 lt!357001) (regOne!6276 r!15766)) (= (regTwo!6276 lt!357001) (regTwo!6276 r!15766))) (= lambda!37443 lambda!37441))))

(declare-fun bs!247795 () Bool)

(assert (= bs!247795 (and b!1037794 d!296463)))

(assert (=> bs!247795 (not (= lambda!37443 lambda!37433))))

(assert (=> b!1037794 true))

(assert (=> b!1037794 true))

(declare-fun b!1037792 () Bool)

(declare-fun e!660845 () Bool)

(declare-fun e!660840 () Bool)

(assert (=> b!1037792 (= e!660845 e!660840)))

(declare-fun res!466136 () Bool)

(assert (=> b!1037792 (= res!466136 (not (is-EmptyLang!2882 lt!357001)))))

(assert (=> b!1037792 (=> (not res!466136) (not e!660840))))

(declare-fun d!296475 () Bool)

(declare-fun c!172310 () Bool)

(assert (=> d!296475 (= c!172310 (is-EmptyExpr!2882 lt!357001))))

(assert (=> d!296475 (= (matchRSpec!681 lt!357001 s!10566) e!660845)))

(declare-fun b!1037793 () Bool)

(declare-fun call!71903 () Bool)

(assert (=> b!1037793 (= e!660845 call!71903)))

(declare-fun bm!71897 () Bool)

(assert (=> bm!71897 (= call!71903 (isEmpty!6494 s!10566))))

(declare-fun e!660839 () Bool)

(declare-fun call!71902 () Bool)

(assert (=> b!1037794 (= e!660839 call!71902)))

(declare-fun b!1037795 () Bool)

(declare-fun c!172311 () Bool)

(assert (=> b!1037795 (= c!172311 (is-ElementMatch!2882 lt!357001))))

(declare-fun e!660843 () Bool)

(assert (=> b!1037795 (= e!660840 e!660843)))

(declare-fun b!1037796 () Bool)

(declare-fun e!660842 () Bool)

(declare-fun e!660844 () Bool)

(assert (=> b!1037796 (= e!660842 e!660844)))

(declare-fun res!466137 () Bool)

(assert (=> b!1037796 (= res!466137 (matchRSpec!681 (regOne!6277 lt!357001) s!10566))))

(assert (=> b!1037796 (=> res!466137 e!660844)))

(declare-fun b!1037797 () Bool)

(declare-fun res!466135 () Bool)

(declare-fun e!660841 () Bool)

(assert (=> b!1037797 (=> res!466135 e!660841)))

(assert (=> b!1037797 (= res!466135 call!71903)))

(assert (=> b!1037797 (= e!660839 e!660841)))

(declare-fun b!1037798 () Bool)

(assert (=> b!1037798 (= e!660842 e!660839)))

(declare-fun c!172308 () Bool)

(assert (=> b!1037798 (= c!172308 (is-Star!2882 lt!357001))))

(declare-fun b!1037799 () Bool)

(assert (=> b!1037799 (= e!660843 (= s!10566 (Cons!10096 (c!172255 lt!357001) Nil!10096)))))

(declare-fun bm!71898 () Bool)

(assert (=> bm!71898 (= call!71902 (Exists!609 (ite c!172308 lambda!37442 lambda!37443)))))

(declare-fun b!1037800 () Bool)

(declare-fun c!172309 () Bool)

(assert (=> b!1037800 (= c!172309 (is-Union!2882 lt!357001))))

(assert (=> b!1037800 (= e!660843 e!660842)))

(declare-fun b!1037801 () Bool)

(assert (=> b!1037801 (= e!660844 (matchRSpec!681 (regTwo!6277 lt!357001) s!10566))))

(assert (=> b!1037802 (= e!660841 call!71902)))

(assert (= (and d!296475 c!172310) b!1037793))

(assert (= (and d!296475 (not c!172310)) b!1037792))

(assert (= (and b!1037792 res!466136) b!1037795))

(assert (= (and b!1037795 c!172311) b!1037799))

(assert (= (and b!1037795 (not c!172311)) b!1037800))

(assert (= (and b!1037800 c!172309) b!1037796))

(assert (= (and b!1037800 (not c!172309)) b!1037798))

(assert (= (and b!1037796 (not res!466137)) b!1037801))

(assert (= (and b!1037798 c!172308) b!1037797))

(assert (= (and b!1037798 (not c!172308)) b!1037794))

(assert (= (and b!1037797 (not res!466135)) b!1037802))

(assert (= (or b!1037802 b!1037794) bm!71898))

(assert (= (or b!1037793 b!1037797) bm!71897))

(assert (=> bm!71897 m!1207561))

(declare-fun m!1207681 () Bool)

(assert (=> b!1037796 m!1207681))

(declare-fun m!1207683 () Bool)

(assert (=> bm!71898 m!1207683))

(declare-fun m!1207685 () Bool)

(assert (=> b!1037801 m!1207685))

(assert (=> b!1037513 d!296475))

(declare-fun d!296477 () Bool)

(assert (=> d!296477 (= (Exists!609 lambda!37409) (choose!6630 lambda!37409))))

(declare-fun bs!247796 () Bool)

(assert (= bs!247796 d!296477))

(declare-fun m!1207687 () Bool)

(assert (=> bs!247796 m!1207687))

(assert (=> b!1037513 d!296477))

(declare-fun b!1037803 () Bool)

(declare-fun e!660850 () Bool)

(declare-fun call!71904 () Bool)

(assert (=> b!1037803 (= e!660850 call!71904)))

(declare-fun b!1037804 () Bool)

(declare-fun e!660846 () Bool)

(assert (=> b!1037804 (= e!660846 e!660850)))

(declare-fun res!466139 () Bool)

(assert (=> b!1037804 (=> (not res!466139) (not e!660850))))

(declare-fun call!71906 () Bool)

(assert (=> b!1037804 (= res!466139 call!71906)))

(declare-fun b!1037805 () Bool)

(declare-fun e!660852 () Bool)

(declare-fun e!660847 () Bool)

(assert (=> b!1037805 (= e!660852 e!660847)))

(declare-fun res!466138 () Bool)

(assert (=> b!1037805 (= res!466138 (not (nullable!974 (reg!3211 lt!357006))))))

(assert (=> b!1037805 (=> (not res!466138) (not e!660847))))

(declare-fun b!1037807 () Bool)

(declare-fun res!466141 () Bool)

(declare-fun e!660849 () Bool)

(assert (=> b!1037807 (=> (not res!466141) (not e!660849))))

(assert (=> b!1037807 (= res!466141 call!71906)))

(declare-fun e!660848 () Bool)

(assert (=> b!1037807 (= e!660848 e!660849)))

(declare-fun b!1037808 () Bool)

(assert (=> b!1037808 (= e!660852 e!660848)))

(declare-fun c!172312 () Bool)

(assert (=> b!1037808 (= c!172312 (is-Union!2882 lt!357006))))

(declare-fun b!1037809 () Bool)

(declare-fun call!71905 () Bool)

(assert (=> b!1037809 (= e!660847 call!71905)))

(declare-fun b!1037810 () Bool)

(declare-fun e!660851 () Bool)

(assert (=> b!1037810 (= e!660851 e!660852)))

(declare-fun c!172313 () Bool)

(assert (=> b!1037810 (= c!172313 (is-Star!2882 lt!357006))))

(declare-fun b!1037811 () Bool)

(declare-fun res!466140 () Bool)

(assert (=> b!1037811 (=> res!466140 e!660846)))

(assert (=> b!1037811 (= res!466140 (not (is-Concat!4715 lt!357006)))))

(assert (=> b!1037811 (= e!660848 e!660846)))

(declare-fun bm!71899 () Bool)

(assert (=> bm!71899 (= call!71904 (validRegex!1351 (ite c!172312 (regTwo!6277 lt!357006) (regTwo!6276 lt!357006))))))

(declare-fun bm!71900 () Bool)

(assert (=> bm!71900 (= call!71906 call!71905)))

(declare-fun bm!71901 () Bool)

(assert (=> bm!71901 (= call!71905 (validRegex!1351 (ite c!172313 (reg!3211 lt!357006) (ite c!172312 (regOne!6277 lt!357006) (regOne!6276 lt!357006)))))))

(declare-fun d!296479 () Bool)

(declare-fun res!466142 () Bool)

(assert (=> d!296479 (=> res!466142 e!660851)))

(assert (=> d!296479 (= res!466142 (is-ElementMatch!2882 lt!357006))))

(assert (=> d!296479 (= (validRegex!1351 lt!357006) e!660851)))

(declare-fun b!1037806 () Bool)

(assert (=> b!1037806 (= e!660849 call!71904)))

(assert (= (and d!296479 (not res!466142)) b!1037810))

(assert (= (and b!1037810 c!172313) b!1037805))

(assert (= (and b!1037810 (not c!172313)) b!1037808))

(assert (= (and b!1037805 res!466138) b!1037809))

(assert (= (and b!1037808 c!172312) b!1037807))

(assert (= (and b!1037808 (not c!172312)) b!1037811))

(assert (= (and b!1037807 res!466141) b!1037806))

(assert (= (and b!1037811 (not res!466140)) b!1037804))

(assert (= (and b!1037804 res!466139) b!1037803))

(assert (= (or b!1037806 b!1037803) bm!71899))

(assert (= (or b!1037807 b!1037804) bm!71900))

(assert (= (or b!1037809 bm!71900) bm!71901))

(declare-fun m!1207689 () Bool)

(assert (=> b!1037805 m!1207689))

(declare-fun m!1207691 () Bool)

(assert (=> bm!71899 m!1207691))

(declare-fun m!1207693 () Bool)

(assert (=> bm!71901 m!1207693))

(assert (=> b!1037513 d!296479))

(declare-fun b!1037812 () Bool)

(declare-fun e!660853 () Option!2407)

(assert (=> b!1037812 (= e!660853 (Some!2406 (tuple2!11531 Nil!10096 s!10566)))))

(declare-fun b!1037813 () Bool)

(declare-fun e!660854 () Option!2407)

(assert (=> b!1037813 (= e!660853 e!660854)))

(declare-fun c!172314 () Bool)

(assert (=> b!1037813 (= c!172314 (is-Nil!10096 s!10566))))

(declare-fun d!296481 () Bool)

(declare-fun e!660856 () Bool)

(assert (=> d!296481 e!660856))

(declare-fun res!466144 () Bool)

(assert (=> d!296481 (=> res!466144 e!660856)))

(declare-fun e!660855 () Bool)

(assert (=> d!296481 (= res!466144 e!660855)))

(declare-fun res!466145 () Bool)

(assert (=> d!296481 (=> (not res!466145) (not e!660855))))

(declare-fun lt!357058 () Option!2407)

(assert (=> d!296481 (= res!466145 (isDefined!2049 lt!357058))))

(assert (=> d!296481 (= lt!357058 e!660853)))

(declare-fun c!172315 () Bool)

(declare-fun e!660857 () Bool)

(assert (=> d!296481 (= c!172315 e!660857)))

(declare-fun res!466143 () Bool)

(assert (=> d!296481 (=> (not res!466143) (not e!660857))))

(assert (=> d!296481 (= res!466143 (matchR!1418 lt!357006 Nil!10096))))

(assert (=> d!296481 (validRegex!1351 lt!357006)))

(assert (=> d!296481 (= (findConcatSeparation!513 lt!357006 lt!357003 Nil!10096 s!10566 s!10566) lt!357058)))

(declare-fun b!1037814 () Bool)

(assert (=> b!1037814 (= e!660857 (matchR!1418 lt!357003 s!10566))))

(declare-fun b!1037815 () Bool)

(declare-fun res!466146 () Bool)

(assert (=> b!1037815 (=> (not res!466146) (not e!660855))))

(assert (=> b!1037815 (= res!466146 (matchR!1418 lt!357003 (_2!6591 (get!3601 lt!357058))))))

(declare-fun b!1037816 () Bool)

(assert (=> b!1037816 (= e!660856 (not (isDefined!2049 lt!357058)))))

(declare-fun b!1037817 () Bool)

(declare-fun lt!357057 () Unit!15439)

(declare-fun lt!357059 () Unit!15439)

(assert (=> b!1037817 (= lt!357057 lt!357059)))

(assert (=> b!1037817 (= (++!2782 (++!2782 Nil!10096 (Cons!10096 (h!15497 s!10566) Nil!10096)) (t!101158 s!10566)) s!10566)))

(assert (=> b!1037817 (= lt!357059 (lemmaMoveElementToOtherListKeepsConcatEq!375 Nil!10096 (h!15497 s!10566) (t!101158 s!10566) s!10566))))

(assert (=> b!1037817 (= e!660854 (findConcatSeparation!513 lt!357006 lt!357003 (++!2782 Nil!10096 (Cons!10096 (h!15497 s!10566) Nil!10096)) (t!101158 s!10566) s!10566))))

(declare-fun b!1037818 () Bool)

(declare-fun res!466147 () Bool)

(assert (=> b!1037818 (=> (not res!466147) (not e!660855))))

(assert (=> b!1037818 (= res!466147 (matchR!1418 lt!357006 (_1!6591 (get!3601 lt!357058))))))

(declare-fun b!1037819 () Bool)

(assert (=> b!1037819 (= e!660854 None!2406)))

(declare-fun b!1037820 () Bool)

(assert (=> b!1037820 (= e!660855 (= (++!2782 (_1!6591 (get!3601 lt!357058)) (_2!6591 (get!3601 lt!357058))) s!10566))))

(assert (= (and d!296481 res!466143) b!1037814))

(assert (= (and d!296481 c!172315) b!1037812))

(assert (= (and d!296481 (not c!172315)) b!1037813))

(assert (= (and b!1037813 c!172314) b!1037819))

(assert (= (and b!1037813 (not c!172314)) b!1037817))

(assert (= (and d!296481 res!466145) b!1037818))

(assert (= (and b!1037818 res!466147) b!1037815))

(assert (= (and b!1037815 res!466146) b!1037820))

(assert (= (and d!296481 (not res!466144)) b!1037816))

(declare-fun m!1207695 () Bool)

(assert (=> b!1037818 m!1207695))

(declare-fun m!1207697 () Bool)

(assert (=> b!1037818 m!1207697))

(assert (=> b!1037820 m!1207695))

(declare-fun m!1207699 () Bool)

(assert (=> b!1037820 m!1207699))

(assert (=> b!1037817 m!1207645))

(assert (=> b!1037817 m!1207645))

(assert (=> b!1037817 m!1207647))

(assert (=> b!1037817 m!1207649))

(assert (=> b!1037817 m!1207645))

(declare-fun m!1207701 () Bool)

(assert (=> b!1037817 m!1207701))

(declare-fun m!1207703 () Bool)

(assert (=> b!1037814 m!1207703))

(declare-fun m!1207705 () Bool)

(assert (=> d!296481 m!1207705))

(declare-fun m!1207707 () Bool)

(assert (=> d!296481 m!1207707))

(assert (=> d!296481 m!1207537))

(assert (=> b!1037816 m!1207705))

(assert (=> b!1037815 m!1207695))

(declare-fun m!1207709 () Bool)

(assert (=> b!1037815 m!1207709))

(assert (=> b!1037513 d!296481))

(declare-fun d!296483 () Bool)

(assert (=> d!296483 (= (isDefined!2049 (findConcatSeparation!513 lt!357006 lt!357003 Nil!10096 s!10566 s!10566)) (not (isEmpty!6496 (findConcatSeparation!513 lt!357006 lt!357003 Nil!10096 s!10566 s!10566))))))

(declare-fun bs!247797 () Bool)

(assert (= bs!247797 d!296483))

(assert (=> bs!247797 m!1207541))

(declare-fun m!1207711 () Bool)

(assert (=> bs!247797 m!1207711))

(assert (=> b!1037513 d!296483))

(declare-fun d!296485 () Bool)

(assert (=> d!296485 (= (matchR!1418 lt!357001 s!10566) (matchRSpec!681 lt!357001 s!10566))))

(declare-fun lt!357060 () Unit!15439)

(assert (=> d!296485 (= lt!357060 (choose!6629 lt!357001 s!10566))))

(assert (=> d!296485 (validRegex!1351 lt!357001)))

(assert (=> d!296485 (= (mainMatchTheorem!681 lt!357001 s!10566) lt!357060)))

(declare-fun bs!247798 () Bool)

(assert (= bs!247798 d!296485))

(assert (=> bs!247798 m!1207525))

(assert (=> bs!247798 m!1207545))

(declare-fun m!1207713 () Bool)

(assert (=> bs!247798 m!1207713))

(declare-fun m!1207715 () Bool)

(assert (=> bs!247798 m!1207715))

(assert (=> b!1037513 d!296485))

(declare-fun bs!247799 () Bool)

(declare-fun d!296487 () Bool)

(assert (= bs!247799 (and d!296487 b!1037515)))

(declare-fun lambda!37444 () Int)

(assert (=> bs!247799 (not (= lambda!37444 lambda!37408))))

(declare-fun bs!247800 () Bool)

(assert (= bs!247800 (and d!296487 b!1037612)))

(assert (=> bs!247800 (not (= lambda!37444 lambda!37425))))

(assert (=> bs!247799 (= (and (= lt!357006 (regOne!6276 r!15766)) (= lt!357003 (regTwo!6276 r!15766))) (= lambda!37444 lambda!37407))))

(declare-fun bs!247801 () Bool)

(assert (= bs!247801 (and d!296487 d!296469)))

(assert (=> bs!247801 (= (and (= lt!357006 (regOne!6276 r!15766)) (= lt!357003 (regTwo!6276 r!15766))) (= lambda!37444 lambda!37440))))

(declare-fun bs!247802 () Bool)

(assert (= bs!247802 (and d!296487 b!1037794)))

(assert (=> bs!247802 (not (= lambda!37444 lambda!37443))))

(declare-fun bs!247803 () Bool)

(assert (= bs!247803 (and d!296487 b!1037604)))

(assert (=> bs!247803 (not (= lambda!37444 lambda!37426))))

(declare-fun bs!247804 () Bool)

(assert (= bs!247804 (and d!296487 b!1037802)))

(assert (=> bs!247804 (not (= lambda!37444 lambda!37442))))

(declare-fun bs!247805 () Bool)

(assert (= bs!247805 (and d!296487 b!1037513)))

(assert (=> bs!247805 (= lambda!37444 lambda!37409)))

(assert (=> bs!247801 (not (= lambda!37444 lambda!37441))))

(declare-fun bs!247806 () Bool)

(assert (= bs!247806 (and d!296487 d!296463)))

(assert (=> bs!247806 (= (and (= lt!357006 (regOne!6276 r!15766)) (= lt!357003 (regTwo!6276 r!15766))) (= lambda!37444 lambda!37433))))

(assert (=> d!296487 true))

(assert (=> d!296487 true))

(assert (=> d!296487 true))

(assert (=> d!296487 (= (isDefined!2049 (findConcatSeparation!513 lt!357006 lt!357003 Nil!10096 s!10566 s!10566)) (Exists!609 lambda!37444))))

(declare-fun lt!357061 () Unit!15439)

(assert (=> d!296487 (= lt!357061 (choose!6631 lt!357006 lt!357003 s!10566))))

(assert (=> d!296487 (validRegex!1351 lt!357006)))

(assert (=> d!296487 (= (lemmaFindConcatSeparationEquivalentToExists!513 lt!357006 lt!357003 s!10566) lt!357061)))

(declare-fun bs!247807 () Bool)

(assert (= bs!247807 d!296487))

(assert (=> bs!247807 m!1207541))

(assert (=> bs!247807 m!1207543))

(declare-fun m!1207721 () Bool)

(assert (=> bs!247807 m!1207721))

(assert (=> bs!247807 m!1207537))

(assert (=> bs!247807 m!1207541))

(declare-fun m!1207723 () Bool)

(assert (=> bs!247807 m!1207723))

(assert (=> b!1037513 d!296487))

(declare-fun b!1037835 () Bool)

(declare-fun e!660866 () Bool)

(assert (=> b!1037835 (= e!660866 (nullable!974 lt!357001))))

(declare-fun b!1037836 () Bool)

(assert (=> b!1037836 (= e!660866 (matchR!1418 (derivativeStep!774 lt!357001 (head!1929 s!10566)) (tail!1491 s!10566)))))

(declare-fun b!1037837 () Bool)

(declare-fun e!660870 () Bool)

(declare-fun e!660869 () Bool)

(assert (=> b!1037837 (= e!660870 e!660869)))

(declare-fun c!172320 () Bool)

(assert (=> b!1037837 (= c!172320 (is-EmptyLang!2882 lt!357001))))

(declare-fun b!1037838 () Bool)

(declare-fun e!660867 () Bool)

(assert (=> b!1037838 (= e!660867 (not (= (head!1929 s!10566) (c!172255 lt!357001))))))

(declare-fun d!296489 () Bool)

(assert (=> d!296489 e!660870))

(declare-fun c!172321 () Bool)

(assert (=> d!296489 (= c!172321 (is-EmptyExpr!2882 lt!357001))))

(declare-fun lt!357063 () Bool)

(assert (=> d!296489 (= lt!357063 e!660866)))

(declare-fun c!172319 () Bool)

(assert (=> d!296489 (= c!172319 (isEmpty!6494 s!10566))))

(assert (=> d!296489 (validRegex!1351 lt!357001)))

(assert (=> d!296489 (= (matchR!1418 lt!357001 s!10566) lt!357063)))

(declare-fun b!1037839 () Bool)

(declare-fun e!660865 () Bool)

(assert (=> b!1037839 (= e!660865 (= (head!1929 s!10566) (c!172255 lt!357001)))))

(declare-fun b!1037840 () Bool)

(declare-fun res!466157 () Bool)

(assert (=> b!1037840 (=> res!466157 e!660867)))

(assert (=> b!1037840 (= res!466157 (not (isEmpty!6494 (tail!1491 s!10566))))))

(declare-fun b!1037841 () Bool)

(declare-fun call!71908 () Bool)

(assert (=> b!1037841 (= e!660870 (= lt!357063 call!71908))))

(declare-fun b!1037842 () Bool)

(declare-fun res!466159 () Bool)

(assert (=> b!1037842 (=> (not res!466159) (not e!660865))))

(assert (=> b!1037842 (= res!466159 (isEmpty!6494 (tail!1491 s!10566)))))

(declare-fun bm!71903 () Bool)

(assert (=> bm!71903 (= call!71908 (isEmpty!6494 s!10566))))

(declare-fun b!1037843 () Bool)

(assert (=> b!1037843 (= e!660869 (not lt!357063))))

(declare-fun b!1037844 () Bool)

(declare-fun res!466156 () Bool)

(assert (=> b!1037844 (=> (not res!466156) (not e!660865))))

(assert (=> b!1037844 (= res!466156 (not call!71908))))

(declare-fun b!1037845 () Bool)

(declare-fun e!660871 () Bool)

(declare-fun e!660868 () Bool)

(assert (=> b!1037845 (= e!660871 e!660868)))

(declare-fun res!466162 () Bool)

(assert (=> b!1037845 (=> (not res!466162) (not e!660868))))

(assert (=> b!1037845 (= res!466162 (not lt!357063))))

(declare-fun b!1037846 () Bool)

(declare-fun res!466160 () Bool)

(assert (=> b!1037846 (=> res!466160 e!660871)))

(assert (=> b!1037846 (= res!466160 e!660865)))

(declare-fun res!466163 () Bool)

(assert (=> b!1037846 (=> (not res!466163) (not e!660865))))

(assert (=> b!1037846 (= res!466163 lt!357063)))

(declare-fun b!1037847 () Bool)

(declare-fun res!466161 () Bool)

(assert (=> b!1037847 (=> res!466161 e!660871)))

(assert (=> b!1037847 (= res!466161 (not (is-ElementMatch!2882 lt!357001)))))

(assert (=> b!1037847 (= e!660869 e!660871)))

(declare-fun b!1037848 () Bool)

(assert (=> b!1037848 (= e!660868 e!660867)))

(declare-fun res!466158 () Bool)

(assert (=> b!1037848 (=> res!466158 e!660867)))

(assert (=> b!1037848 (= res!466158 call!71908)))

(assert (= (and d!296489 c!172319) b!1037835))

(assert (= (and d!296489 (not c!172319)) b!1037836))

(assert (= (and d!296489 c!172321) b!1037841))

(assert (= (and d!296489 (not c!172321)) b!1037837))

(assert (= (and b!1037837 c!172320) b!1037843))

(assert (= (and b!1037837 (not c!172320)) b!1037847))

(assert (= (and b!1037847 (not res!466161)) b!1037846))

(assert (= (and b!1037846 res!466163) b!1037844))

(assert (= (and b!1037844 res!466156) b!1037842))

(assert (= (and b!1037842 res!466159) b!1037839))

(assert (= (and b!1037846 (not res!466160)) b!1037845))

(assert (= (and b!1037845 res!466162) b!1037848))

(assert (= (and b!1037848 (not res!466158)) b!1037840))

(assert (= (and b!1037840 (not res!466157)) b!1037838))

(assert (= (or b!1037841 b!1037844 b!1037848) bm!71903))

(declare-fun m!1207733 () Bool)

(assert (=> b!1037835 m!1207733))

(assert (=> bm!71903 m!1207561))

(assert (=> b!1037842 m!1207617))

(assert (=> b!1037842 m!1207617))

(assert (=> b!1037842 m!1207619))

(assert (=> d!296489 m!1207561))

(assert (=> d!296489 m!1207715))

(assert (=> b!1037836 m!1207621))

(assert (=> b!1037836 m!1207621))

(declare-fun m!1207735 () Bool)

(assert (=> b!1037836 m!1207735))

(assert (=> b!1037836 m!1207617))

(assert (=> b!1037836 m!1207735))

(assert (=> b!1037836 m!1207617))

(declare-fun m!1207737 () Bool)

(assert (=> b!1037836 m!1207737))

(assert (=> b!1037839 m!1207621))

(assert (=> b!1037838 m!1207621))

(assert (=> b!1037840 m!1207617))

(assert (=> b!1037840 m!1207617))

(assert (=> b!1037840 m!1207619))

(assert (=> b!1037510 d!296489))

(declare-fun c!172336 () Bool)

(declare-fun c!172338 () Bool)

(declare-fun call!71923 () Regex!2882)

(declare-fun c!172339 () Bool)

(declare-fun c!172335 () Bool)

(declare-fun bm!71915 () Bool)

(assert (=> bm!71915 (= call!71923 (removeUselessConcat!431 (ite c!172335 (regTwo!6276 (regTwo!6276 r!15766)) (ite c!172339 (regOne!6276 (regTwo!6276 r!15766)) (ite c!172336 (regTwo!6276 (regTwo!6276 r!15766)) (ite c!172338 (regTwo!6277 (regTwo!6276 r!15766)) (reg!3211 (regTwo!6276 r!15766))))))))))

(declare-fun b!1037885 () Bool)

(declare-fun e!660893 () Regex!2882)

(declare-fun call!71921 () Regex!2882)

(assert (=> b!1037885 (= e!660893 (Star!2882 call!71921))))

(declare-fun d!296493 () Bool)

(declare-fun e!660892 () Bool)

(assert (=> d!296493 e!660892))

(declare-fun res!466174 () Bool)

(assert (=> d!296493 (=> (not res!466174) (not e!660892))))

(declare-fun lt!357070 () Regex!2882)

(assert (=> d!296493 (= res!466174 (validRegex!1351 lt!357070))))

(declare-fun e!660895 () Regex!2882)

(assert (=> d!296493 (= lt!357070 e!660895)))

(assert (=> d!296493 (= c!172335 (and (is-Concat!4715 (regTwo!6276 r!15766)) (is-EmptyExpr!2882 (regOne!6276 (regTwo!6276 r!15766)))))))

(assert (=> d!296493 (validRegex!1351 (regTwo!6276 r!15766))))

(assert (=> d!296493 (= (removeUselessConcat!431 (regTwo!6276 r!15766)) lt!357070)))

(declare-fun b!1037886 () Bool)

(assert (=> b!1037886 (= e!660895 call!71923)))

(declare-fun b!1037887 () Bool)

(assert (=> b!1037887 (= e!660892 (= (nullable!974 lt!357070) (nullable!974 (regTwo!6276 r!15766))))))

(declare-fun bm!71916 () Bool)

(declare-fun call!71920 () Regex!2882)

(assert (=> bm!71916 (= call!71921 call!71920)))

(declare-fun b!1037888 () Bool)

(declare-fun c!172337 () Bool)

(assert (=> b!1037888 (= c!172337 (is-Star!2882 (regTwo!6276 r!15766)))))

(declare-fun e!660896 () Regex!2882)

(assert (=> b!1037888 (= e!660896 e!660893)))

(declare-fun b!1037889 () Bool)

(declare-fun e!660894 () Regex!2882)

(declare-fun call!71924 () Regex!2882)

(assert (=> b!1037889 (= e!660894 (Concat!4715 call!71924 call!71920))))

(declare-fun b!1037890 () Bool)

(assert (=> b!1037890 (= e!660893 (regTwo!6276 r!15766))))

(declare-fun b!1037891 () Bool)

(assert (=> b!1037891 (= e!660894 e!660896)))

(assert (=> b!1037891 (= c!172338 (is-Union!2882 (regTwo!6276 r!15766)))))

(declare-fun bm!71917 () Bool)

(declare-fun call!71922 () Regex!2882)

(assert (=> bm!71917 (= call!71920 call!71922)))

(declare-fun b!1037892 () Bool)

(assert (=> b!1037892 (= e!660896 (Union!2882 call!71924 call!71921))))

(declare-fun b!1037893 () Bool)

(assert (=> b!1037893 (= c!172336 (is-Concat!4715 (regTwo!6276 r!15766)))))

(declare-fun e!660891 () Regex!2882)

(assert (=> b!1037893 (= e!660891 e!660894)))

(declare-fun bm!71918 () Bool)

(assert (=> bm!71918 (= call!71924 (removeUselessConcat!431 (ite c!172336 (regOne!6276 (regTwo!6276 r!15766)) (regOne!6277 (regTwo!6276 r!15766)))))))

(declare-fun b!1037894 () Bool)

(assert (=> b!1037894 (= e!660895 e!660891)))

(assert (=> b!1037894 (= c!172339 (and (is-Concat!4715 (regTwo!6276 r!15766)) (is-EmptyExpr!2882 (regTwo!6276 (regTwo!6276 r!15766)))))))

(declare-fun bm!71919 () Bool)

(assert (=> bm!71919 (= call!71922 call!71923)))

(declare-fun b!1037895 () Bool)

(assert (=> b!1037895 (= e!660891 call!71922)))

(assert (= (and d!296493 c!172335) b!1037886))

(assert (= (and d!296493 (not c!172335)) b!1037894))

(assert (= (and b!1037894 c!172339) b!1037895))

(assert (= (and b!1037894 (not c!172339)) b!1037893))

(assert (= (and b!1037893 c!172336) b!1037889))

(assert (= (and b!1037893 (not c!172336)) b!1037891))

(assert (= (and b!1037891 c!172338) b!1037892))

(assert (= (and b!1037891 (not c!172338)) b!1037888))

(assert (= (and b!1037888 c!172337) b!1037885))

(assert (= (and b!1037888 (not c!172337)) b!1037890))

(assert (= (or b!1037892 b!1037885) bm!71916))

(assert (= (or b!1037889 bm!71916) bm!71917))

(assert (= (or b!1037889 b!1037892) bm!71918))

(assert (= (or b!1037895 bm!71917) bm!71919))

(assert (= (or b!1037886 bm!71919) bm!71915))

(assert (= (and d!296493 res!466174) b!1037887))

(declare-fun m!1207749 () Bool)

(assert (=> bm!71915 m!1207749))

(declare-fun m!1207751 () Bool)

(assert (=> d!296493 m!1207751))

(declare-fun m!1207753 () Bool)

(assert (=> d!296493 m!1207753))

(declare-fun m!1207755 () Bool)

(assert (=> b!1037887 m!1207755))

(declare-fun m!1207757 () Bool)

(assert (=> b!1037887 m!1207757))

(declare-fun m!1207759 () Bool)

(assert (=> bm!71918 m!1207759))

(assert (=> b!1037510 d!296493))

(declare-fun bm!71920 () Bool)

(declare-fun c!172344 () Bool)

(declare-fun c!172341 () Bool)

(declare-fun c!172340 () Bool)

(declare-fun call!71928 () Regex!2882)

(declare-fun c!172343 () Bool)

(assert (=> bm!71920 (= call!71928 (removeUselessConcat!431 (ite c!172340 (regTwo!6276 (regOne!6276 r!15766)) (ite c!172344 (regOne!6276 (regOne!6276 r!15766)) (ite c!172341 (regTwo!6276 (regOne!6276 r!15766)) (ite c!172343 (regTwo!6277 (regOne!6276 r!15766)) (reg!3211 (regOne!6276 r!15766))))))))))

(declare-fun b!1037896 () Bool)

(declare-fun e!660899 () Regex!2882)

(declare-fun call!71926 () Regex!2882)

(assert (=> b!1037896 (= e!660899 (Star!2882 call!71926))))

(declare-fun d!296499 () Bool)

(declare-fun e!660898 () Bool)

(assert (=> d!296499 e!660898))

(declare-fun res!466175 () Bool)

(assert (=> d!296499 (=> (not res!466175) (not e!660898))))

(declare-fun lt!357071 () Regex!2882)

(assert (=> d!296499 (= res!466175 (validRegex!1351 lt!357071))))

(declare-fun e!660901 () Regex!2882)

(assert (=> d!296499 (= lt!357071 e!660901)))

(assert (=> d!296499 (= c!172340 (and (is-Concat!4715 (regOne!6276 r!15766)) (is-EmptyExpr!2882 (regOne!6276 (regOne!6276 r!15766)))))))

(assert (=> d!296499 (validRegex!1351 (regOne!6276 r!15766))))

(assert (=> d!296499 (= (removeUselessConcat!431 (regOne!6276 r!15766)) lt!357071)))

(declare-fun b!1037897 () Bool)

(assert (=> b!1037897 (= e!660901 call!71928)))

(declare-fun b!1037898 () Bool)

(assert (=> b!1037898 (= e!660898 (= (nullable!974 lt!357071) (nullable!974 (regOne!6276 r!15766))))))

(declare-fun bm!71921 () Bool)

(declare-fun call!71925 () Regex!2882)

(assert (=> bm!71921 (= call!71926 call!71925)))

(declare-fun b!1037899 () Bool)

(declare-fun c!172342 () Bool)

(assert (=> b!1037899 (= c!172342 (is-Star!2882 (regOne!6276 r!15766)))))

(declare-fun e!660902 () Regex!2882)

(assert (=> b!1037899 (= e!660902 e!660899)))

(declare-fun b!1037900 () Bool)

(declare-fun e!660900 () Regex!2882)

(declare-fun call!71929 () Regex!2882)

(assert (=> b!1037900 (= e!660900 (Concat!4715 call!71929 call!71925))))

(declare-fun b!1037901 () Bool)

(assert (=> b!1037901 (= e!660899 (regOne!6276 r!15766))))

(declare-fun b!1037902 () Bool)

(assert (=> b!1037902 (= e!660900 e!660902)))

(assert (=> b!1037902 (= c!172343 (is-Union!2882 (regOne!6276 r!15766)))))

(declare-fun bm!71922 () Bool)

(declare-fun call!71927 () Regex!2882)

(assert (=> bm!71922 (= call!71925 call!71927)))

(declare-fun b!1037903 () Bool)

(assert (=> b!1037903 (= e!660902 (Union!2882 call!71929 call!71926))))

(declare-fun b!1037904 () Bool)

(assert (=> b!1037904 (= c!172341 (is-Concat!4715 (regOne!6276 r!15766)))))

(declare-fun e!660897 () Regex!2882)

(assert (=> b!1037904 (= e!660897 e!660900)))

(declare-fun bm!71923 () Bool)

(assert (=> bm!71923 (= call!71929 (removeUselessConcat!431 (ite c!172341 (regOne!6276 (regOne!6276 r!15766)) (regOne!6277 (regOne!6276 r!15766)))))))

(declare-fun b!1037905 () Bool)

(assert (=> b!1037905 (= e!660901 e!660897)))

(assert (=> b!1037905 (= c!172344 (and (is-Concat!4715 (regOne!6276 r!15766)) (is-EmptyExpr!2882 (regTwo!6276 (regOne!6276 r!15766)))))))

(declare-fun bm!71924 () Bool)

(assert (=> bm!71924 (= call!71927 call!71928)))

(declare-fun b!1037906 () Bool)

(assert (=> b!1037906 (= e!660897 call!71927)))

(assert (= (and d!296499 c!172340) b!1037897))

(assert (= (and d!296499 (not c!172340)) b!1037905))

(assert (= (and b!1037905 c!172344) b!1037906))

(assert (= (and b!1037905 (not c!172344)) b!1037904))

(assert (= (and b!1037904 c!172341) b!1037900))

(assert (= (and b!1037904 (not c!172341)) b!1037902))

(assert (= (and b!1037902 c!172343) b!1037903))

(assert (= (and b!1037902 (not c!172343)) b!1037899))

(assert (= (and b!1037899 c!172342) b!1037896))

(assert (= (and b!1037899 (not c!172342)) b!1037901))

(assert (= (or b!1037903 b!1037896) bm!71921))

(assert (= (or b!1037900 bm!71921) bm!71922))

(assert (= (or b!1037900 b!1037903) bm!71923))

(assert (= (or b!1037906 bm!71922) bm!71924))

(assert (= (or b!1037897 bm!71924) bm!71920))

(assert (= (and d!296499 res!466175) b!1037898))

(declare-fun m!1207761 () Bool)

(assert (=> bm!71920 m!1207761))

(declare-fun m!1207763 () Bool)

(assert (=> d!296499 m!1207763))

(assert (=> d!296499 m!1207635))

(declare-fun m!1207765 () Bool)

(assert (=> b!1037898 m!1207765))

(declare-fun m!1207767 () Bool)

(assert (=> b!1037898 m!1207767))

(declare-fun m!1207769 () Bool)

(assert (=> bm!71923 m!1207769))

(assert (=> b!1037510 d!296499))

(declare-fun b!1037918 () Bool)

(declare-fun e!660905 () Bool)

(declare-fun tp!313778 () Bool)

(declare-fun tp!313776 () Bool)

(assert (=> b!1037918 (= e!660905 (and tp!313778 tp!313776))))

(declare-fun b!1037917 () Bool)

(assert (=> b!1037917 (= e!660905 tp_is_empty!5407)))

(declare-fun b!1037919 () Bool)

(declare-fun tp!313777 () Bool)

(assert (=> b!1037919 (= e!660905 tp!313777)))

(declare-fun b!1037920 () Bool)

(declare-fun tp!313775 () Bool)

(declare-fun tp!313779 () Bool)

(assert (=> b!1037920 (= e!660905 (and tp!313775 tp!313779))))

(assert (=> b!1037518 (= tp!313743 e!660905)))

(assert (= (and b!1037518 (is-ElementMatch!2882 (regOne!6277 r!15766))) b!1037917))

(assert (= (and b!1037518 (is-Concat!4715 (regOne!6277 r!15766))) b!1037918))

(assert (= (and b!1037518 (is-Star!2882 (regOne!6277 r!15766))) b!1037919))

(assert (= (and b!1037518 (is-Union!2882 (regOne!6277 r!15766))) b!1037920))

(declare-fun b!1037922 () Bool)

(declare-fun e!660906 () Bool)

(declare-fun tp!313783 () Bool)

(declare-fun tp!313781 () Bool)

(assert (=> b!1037922 (= e!660906 (and tp!313783 tp!313781))))

(declare-fun b!1037921 () Bool)

(assert (=> b!1037921 (= e!660906 tp_is_empty!5407)))

(declare-fun b!1037923 () Bool)

(declare-fun tp!313782 () Bool)

(assert (=> b!1037923 (= e!660906 tp!313782)))

(declare-fun b!1037924 () Bool)

(declare-fun tp!313780 () Bool)

(declare-fun tp!313784 () Bool)

(assert (=> b!1037924 (= e!660906 (and tp!313780 tp!313784))))

(assert (=> b!1037518 (= tp!313744 e!660906)))

(assert (= (and b!1037518 (is-ElementMatch!2882 (regTwo!6277 r!15766))) b!1037921))

(assert (= (and b!1037518 (is-Concat!4715 (regTwo!6277 r!15766))) b!1037922))

(assert (= (and b!1037518 (is-Star!2882 (regTwo!6277 r!15766))) b!1037923))

(assert (= (and b!1037518 (is-Union!2882 (regTwo!6277 r!15766))) b!1037924))

(declare-fun b!1037929 () Bool)

(declare-fun e!660909 () Bool)

(declare-fun tp!313787 () Bool)

(assert (=> b!1037929 (= e!660909 (and tp_is_empty!5407 tp!313787))))

(assert (=> b!1037517 (= tp!313742 e!660909)))

(assert (= (and b!1037517 (is-Cons!10096 (t!101158 s!10566))) b!1037929))

(declare-fun b!1037931 () Bool)

(declare-fun e!660910 () Bool)

(declare-fun tp!313791 () Bool)

(declare-fun tp!313789 () Bool)

(assert (=> b!1037931 (= e!660910 (and tp!313791 tp!313789))))

(declare-fun b!1037930 () Bool)

(assert (=> b!1037930 (= e!660910 tp_is_empty!5407)))

(declare-fun b!1037932 () Bool)

(declare-fun tp!313790 () Bool)

(assert (=> b!1037932 (= e!660910 tp!313790)))

(declare-fun b!1037933 () Bool)

(declare-fun tp!313788 () Bool)

(declare-fun tp!313792 () Bool)

(assert (=> b!1037933 (= e!660910 (and tp!313788 tp!313792))))

(assert (=> b!1037512 (= tp!313745 e!660910)))

(assert (= (and b!1037512 (is-ElementMatch!2882 (regOne!6276 r!15766))) b!1037930))

(assert (= (and b!1037512 (is-Concat!4715 (regOne!6276 r!15766))) b!1037931))

(assert (= (and b!1037512 (is-Star!2882 (regOne!6276 r!15766))) b!1037932))

(assert (= (and b!1037512 (is-Union!2882 (regOne!6276 r!15766))) b!1037933))

(declare-fun b!1037935 () Bool)

(declare-fun e!660911 () Bool)

(declare-fun tp!313796 () Bool)

(declare-fun tp!313794 () Bool)

(assert (=> b!1037935 (= e!660911 (and tp!313796 tp!313794))))

(declare-fun b!1037934 () Bool)

(assert (=> b!1037934 (= e!660911 tp_is_empty!5407)))

(declare-fun b!1037936 () Bool)

(declare-fun tp!313795 () Bool)

(assert (=> b!1037936 (= e!660911 tp!313795)))

(declare-fun b!1037937 () Bool)

(declare-fun tp!313793 () Bool)

(declare-fun tp!313797 () Bool)

(assert (=> b!1037937 (= e!660911 (and tp!313793 tp!313797))))

(assert (=> b!1037512 (= tp!313741 e!660911)))

(assert (= (and b!1037512 (is-ElementMatch!2882 (regTwo!6276 r!15766))) b!1037934))

(assert (= (and b!1037512 (is-Concat!4715 (regTwo!6276 r!15766))) b!1037935))

(assert (= (and b!1037512 (is-Star!2882 (regTwo!6276 r!15766))) b!1037936))

(assert (= (and b!1037512 (is-Union!2882 (regTwo!6276 r!15766))) b!1037937))

(declare-fun b!1037939 () Bool)

(declare-fun e!660912 () Bool)

(declare-fun tp!313801 () Bool)

(declare-fun tp!313799 () Bool)

(assert (=> b!1037939 (= e!660912 (and tp!313801 tp!313799))))

(declare-fun b!1037938 () Bool)

(assert (=> b!1037938 (= e!660912 tp_is_empty!5407)))

(declare-fun b!1037940 () Bool)

(declare-fun tp!313800 () Bool)

(assert (=> b!1037940 (= e!660912 tp!313800)))

(declare-fun b!1037941 () Bool)

(declare-fun tp!313798 () Bool)

(declare-fun tp!313802 () Bool)

(assert (=> b!1037941 (= e!660912 (and tp!313798 tp!313802))))

(assert (=> b!1037516 (= tp!313746 e!660912)))

(assert (= (and b!1037516 (is-ElementMatch!2882 (reg!3211 r!15766))) b!1037938))

(assert (= (and b!1037516 (is-Concat!4715 (reg!3211 r!15766))) b!1037939))

(assert (= (and b!1037516 (is-Star!2882 (reg!3211 r!15766))) b!1037940))

(assert (= (and b!1037516 (is-Union!2882 (reg!3211 r!15766))) b!1037941))

(push 1)

(assert (not d!296467))

(assert (not d!296477))

(assert (not b!1037645))

(assert (not b!1037835))

(assert (not b!1037922))

(assert (not b!1037842))

(assert (not b!1037642))

(assert (not b!1037785))

(assert (not b!1037924))

(assert (not b!1037836))

(assert (not b!1037805))

(assert (not d!296493))

(assert (not b!1037726))

(assert (not b!1037936))

(assert (not b!1037941))

(assert (not b!1037646))

(assert (not bm!71876))

(assert (not b!1037919))

(assert tp_is_empty!5407)

(assert (not b!1037933))

(assert (not b!1037918))

(assert (not b!1037611))

(assert (not b!1037898))

(assert (not d!296463))

(assert (not d!296459))

(assert (not b!1037724))

(assert (not bm!71915))

(assert (not b!1037838))

(assert (not b!1037939))

(assert (not b!1037641))

(assert (not d!296485))

(assert (not d!296451))

(assert (not bm!71897))

(assert (not b!1037929))

(assert (not bm!71918))

(assert (not bm!71896))

(assert (not bm!71894))

(assert (not b!1037840))

(assert (not d!296487))

(assert (not bm!71898))

(assert (not d!296481))

(assert (not d!296489))

(assert (not bm!71879))

(assert (not b!1037606))

(assert (not bm!71923))

(assert (not b!1037722))

(assert (not b!1037940))

(assert (not b!1037818))

(assert (not b!1037935))

(assert (not b!1037725))

(assert (not bm!71901))

(assert (not b!1037723))

(assert (not b!1037932))

(assert (not bm!71903))

(assert (not d!296469))

(assert (not b!1037814))

(assert (not d!296499))

(assert (not d!296465))

(assert (not bm!71875))

(assert (not d!296455))

(assert (not b!1037815))

(assert (not d!296461))

(assert (not b!1037644))

(assert (not b!1037816))

(assert (not bm!71920))

(assert (not bm!71899))

(assert (not b!1037728))

(assert (not d!296483))

(assert (not b!1037923))

(assert (not b!1037887))

(assert (not b!1037817))

(assert (not b!1037931))

(assert (not b!1037648))

(assert (not b!1037796))

(assert (not b!1037937))

(assert (not b!1037820))

(assert (not b!1037839))

(assert (not b!1037920))

(assert (not b!1037801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

