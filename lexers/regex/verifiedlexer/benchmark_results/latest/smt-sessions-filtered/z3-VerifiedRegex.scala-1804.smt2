; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89966 () Bool)

(assert start!89966)

(declare-fun b!1033485 () Bool)

(declare-fun e!658507 () Bool)

(declare-fun tp_is_empty!5377 () Bool)

(assert (=> b!1033485 (= e!658507 tp_is_empty!5377)))

(declare-fun res!464276 () Bool)

(declare-fun e!658508 () Bool)

(assert (=> start!89966 (=> (not res!464276) (not e!658508))))

(declare-datatypes ((C!6304 0))(
  ( (C!6305 (val!3400 Int)) )
))
(declare-datatypes ((Regex!2867 0))(
  ( (ElementMatch!2867 (c!171506 C!6304)) (Concat!4700 (regOne!6246 Regex!2867) (regTwo!6246 Regex!2867)) (EmptyExpr!2867) (Star!2867 (reg!3196 Regex!2867)) (EmptyLang!2867) (Union!2867 (regOne!6247 Regex!2867) (regTwo!6247 Regex!2867)) )
))
(declare-fun r!15766 () Regex!2867)

(declare-fun validRegex!1336 (Regex!2867) Bool)

(assert (=> start!89966 (= res!464276 (validRegex!1336 r!15766))))

(assert (=> start!89966 e!658508))

(assert (=> start!89966 e!658507))

(declare-fun e!658509 () Bool)

(assert (=> start!89966 e!658509))

(declare-fun b!1033486 () Bool)

(declare-fun tp!312865 () Bool)

(declare-fun tp!312864 () Bool)

(assert (=> b!1033486 (= e!658507 (and tp!312865 tp!312864))))

(declare-fun b!1033487 () Bool)

(declare-fun e!658506 () Bool)

(assert (=> b!1033487 (= e!658508 (not e!658506))))

(declare-fun res!464275 () Bool)

(assert (=> b!1033487 (=> res!464275 e!658506)))

(declare-fun lt!356480 () Bool)

(get-info :version)

(assert (=> b!1033487 (= res!464275 (or lt!356480 (and ((_ is Concat!4700) r!15766) ((_ is EmptyExpr!2867) (regOne!6246 r!15766))) (and ((_ is Concat!4700) r!15766) ((_ is EmptyExpr!2867) (regTwo!6246 r!15766))) (not ((_ is Concat!4700) r!15766))))))

(declare-datatypes ((List!10097 0))(
  ( (Nil!10081) (Cons!10081 (h!15482 C!6304) (t!101143 List!10097)) )
))
(declare-fun s!10566 () List!10097)

(declare-fun matchRSpec!666 (Regex!2867 List!10097) Bool)

(assert (=> b!1033487 (= lt!356480 (matchRSpec!666 r!15766 s!10566))))

(declare-fun matchR!1403 (Regex!2867 List!10097) Bool)

(assert (=> b!1033487 (= lt!356480 (matchR!1403 r!15766 s!10566))))

(declare-datatypes ((Unit!15409 0))(
  ( (Unit!15410) )
))
(declare-fun lt!356481 () Unit!15409)

(declare-fun mainMatchTheorem!666 (Regex!2867 List!10097) Unit!15409)

(assert (=> b!1033487 (= lt!356481 (mainMatchTheorem!666 r!15766 s!10566))))

(declare-fun b!1033488 () Bool)

(declare-fun tp!312867 () Bool)

(assert (=> b!1033488 (= e!658509 (and tp_is_empty!5377 tp!312867))))

(declare-fun b!1033489 () Bool)

(assert (=> b!1033489 (= e!658506 (validRegex!1336 (regOne!6246 r!15766)))))

(declare-fun b!1033490 () Bool)

(declare-fun tp!312866 () Bool)

(declare-fun tp!312868 () Bool)

(assert (=> b!1033490 (= e!658507 (and tp!312866 tp!312868))))

(declare-fun b!1033491 () Bool)

(declare-fun tp!312863 () Bool)

(assert (=> b!1033491 (= e!658507 tp!312863)))

(assert (= (and start!89966 res!464276) b!1033487))

(assert (= (and b!1033487 (not res!464275)) b!1033489))

(assert (= (and start!89966 ((_ is ElementMatch!2867) r!15766)) b!1033485))

(assert (= (and start!89966 ((_ is Concat!4700) r!15766)) b!1033486))

(assert (= (and start!89966 ((_ is Star!2867) r!15766)) b!1033491))

(assert (= (and start!89966 ((_ is Union!2867) r!15766)) b!1033490))

(assert (= (and start!89966 ((_ is Cons!10081) s!10566)) b!1033488))

(declare-fun m!1205931 () Bool)

(assert (=> start!89966 m!1205931))

(declare-fun m!1205933 () Bool)

(assert (=> b!1033487 m!1205933))

(declare-fun m!1205935 () Bool)

(assert (=> b!1033487 m!1205935))

(declare-fun m!1205937 () Bool)

(assert (=> b!1033487 m!1205937))

(declare-fun m!1205939 () Bool)

(assert (=> b!1033489 m!1205939))

(check-sat (not b!1033488) (not b!1033491) (not b!1033486) (not start!89966) tp_is_empty!5377 (not b!1033490) (not b!1033487) (not b!1033489))
(check-sat)
(get-model)

(declare-fun b!1033656 () Bool)

(assert (=> b!1033656 true))

(assert (=> b!1033656 true))

(declare-fun bs!247518 () Bool)

(declare-fun b!1033658 () Bool)

(assert (= bs!247518 (and b!1033658 b!1033656)))

(declare-fun lambda!37146 () Int)

(declare-fun lambda!37145 () Int)

(assert (=> bs!247518 (not (= lambda!37146 lambda!37145))))

(assert (=> b!1033658 true))

(assert (=> b!1033658 true))

(declare-fun b!1033653 () Bool)

(declare-fun e!658604 () Bool)

(declare-fun call!71388 () Bool)

(assert (=> b!1033653 (= e!658604 call!71388)))

(declare-fun b!1033654 () Bool)

(declare-fun e!658606 () Bool)

(assert (=> b!1033654 (= e!658604 e!658606)))

(declare-fun res!464356 () Bool)

(assert (=> b!1033654 (= res!464356 (not ((_ is EmptyLang!2867) r!15766)))))

(assert (=> b!1033654 (=> (not res!464356) (not e!658606))))

(declare-fun b!1033655 () Bool)

(declare-fun e!658609 () Bool)

(declare-fun e!658610 () Bool)

(assert (=> b!1033655 (= e!658609 e!658610)))

(declare-fun c!171545 () Bool)

(assert (=> b!1033655 (= c!171545 ((_ is Star!2867) r!15766))))

(declare-fun e!658608 () Bool)

(declare-fun call!71387 () Bool)

(assert (=> b!1033656 (= e!658608 call!71387)))

(declare-fun b!1033657 () Bool)

(declare-fun c!171544 () Bool)

(assert (=> b!1033657 (= c!171544 ((_ is Union!2867) r!15766))))

(declare-fun e!658607 () Bool)

(assert (=> b!1033657 (= e!658607 e!658609)))

(assert (=> b!1033658 (= e!658610 call!71387)))

(declare-fun bm!71383 () Bool)

(declare-fun isEmpty!6469 (List!10097) Bool)

(assert (=> bm!71383 (= call!71388 (isEmpty!6469 s!10566))))

(declare-fun b!1033659 () Bool)

(declare-fun e!658605 () Bool)

(assert (=> b!1033659 (= e!658609 e!658605)))

(declare-fun res!464357 () Bool)

(assert (=> b!1033659 (= res!464357 (matchRSpec!666 (regOne!6247 r!15766) s!10566))))

(assert (=> b!1033659 (=> res!464357 e!658605)))

(declare-fun b!1033660 () Bool)

(assert (=> b!1033660 (= e!658605 (matchRSpec!666 (regTwo!6247 r!15766) s!10566))))

(declare-fun b!1033661 () Bool)

(declare-fun c!171547 () Bool)

(assert (=> b!1033661 (= c!171547 ((_ is ElementMatch!2867) r!15766))))

(assert (=> b!1033661 (= e!658606 e!658607)))

(declare-fun b!1033662 () Bool)

(declare-fun res!464358 () Bool)

(assert (=> b!1033662 (=> res!464358 e!658608)))

(assert (=> b!1033662 (= res!464358 call!71388)))

(assert (=> b!1033662 (= e!658610 e!658608)))

(declare-fun b!1033663 () Bool)

(assert (=> b!1033663 (= e!658607 (= s!10566 (Cons!10081 (c!171506 r!15766) Nil!10081)))))

(declare-fun bm!71382 () Bool)

(declare-fun Exists!594 (Int) Bool)

(assert (=> bm!71382 (= call!71387 (Exists!594 (ite c!171545 lambda!37145 lambda!37146)))))

(declare-fun d!296071 () Bool)

(declare-fun c!171546 () Bool)

(assert (=> d!296071 (= c!171546 ((_ is EmptyExpr!2867) r!15766))))

(assert (=> d!296071 (= (matchRSpec!666 r!15766 s!10566) e!658604)))

(assert (= (and d!296071 c!171546) b!1033653))

(assert (= (and d!296071 (not c!171546)) b!1033654))

(assert (= (and b!1033654 res!464356) b!1033661))

(assert (= (and b!1033661 c!171547) b!1033663))

(assert (= (and b!1033661 (not c!171547)) b!1033657))

(assert (= (and b!1033657 c!171544) b!1033659))

(assert (= (and b!1033657 (not c!171544)) b!1033655))

(assert (= (and b!1033659 (not res!464357)) b!1033660))

(assert (= (and b!1033655 c!171545) b!1033662))

(assert (= (and b!1033655 (not c!171545)) b!1033658))

(assert (= (and b!1033662 (not res!464358)) b!1033656))

(assert (= (or b!1033656 b!1033658) bm!71382))

(assert (= (or b!1033653 b!1033662) bm!71383))

(declare-fun m!1205975 () Bool)

(assert (=> bm!71383 m!1205975))

(declare-fun m!1205977 () Bool)

(assert (=> b!1033659 m!1205977))

(declare-fun m!1205979 () Bool)

(assert (=> b!1033660 m!1205979))

(declare-fun m!1205981 () Bool)

(assert (=> bm!71382 m!1205981))

(assert (=> b!1033487 d!296071))

(declare-fun b!1033727 () Bool)

(declare-fun res!464382 () Bool)

(declare-fun e!658634 () Bool)

(assert (=> b!1033727 (=> (not res!464382) (not e!658634))))

(declare-fun call!71391 () Bool)

(assert (=> b!1033727 (= res!464382 (not call!71391))))

(declare-fun b!1033728 () Bool)

(declare-fun e!658639 () Bool)

(declare-fun head!1914 (List!10097) C!6304)

(assert (=> b!1033728 (= e!658639 (not (= (head!1914 s!10566) (c!171506 r!15766))))))

(declare-fun b!1033729 () Bool)

(declare-fun e!658635 () Bool)

(assert (=> b!1033729 (= e!658635 e!658639)))

(declare-fun res!464380 () Bool)

(assert (=> b!1033729 (=> res!464380 e!658639)))

(assert (=> b!1033729 (= res!464380 call!71391)))

(declare-fun b!1033730 () Bool)

(declare-fun res!464381 () Bool)

(declare-fun e!658638 () Bool)

(assert (=> b!1033730 (=> res!464381 e!658638)))

(assert (=> b!1033730 (= res!464381 (not ((_ is ElementMatch!2867) r!15766)))))

(declare-fun e!658637 () Bool)

(assert (=> b!1033730 (= e!658637 e!658638)))

(declare-fun b!1033731 () Bool)

(assert (=> b!1033731 (= e!658634 (= (head!1914 s!10566) (c!171506 r!15766)))))

(declare-fun b!1033732 () Bool)

(declare-fun res!464376 () Bool)

(assert (=> b!1033732 (=> res!464376 e!658638)))

(assert (=> b!1033732 (= res!464376 e!658634)))

(declare-fun res!464378 () Bool)

(assert (=> b!1033732 (=> (not res!464378) (not e!658634))))

(declare-fun lt!356490 () Bool)

(assert (=> b!1033732 (= res!464378 lt!356490)))

(declare-fun b!1033733 () Bool)

(declare-fun e!658633 () Bool)

(assert (=> b!1033733 (= e!658633 (= lt!356490 call!71391))))

(declare-fun b!1033734 () Bool)

(assert (=> b!1033734 (= e!658633 e!658637)))

(declare-fun c!171555 () Bool)

(assert (=> b!1033734 (= c!171555 ((_ is EmptyLang!2867) r!15766))))

(declare-fun b!1033735 () Bool)

(declare-fun e!658636 () Bool)

(declare-fun derivativeStep!760 (Regex!2867 C!6304) Regex!2867)

(declare-fun tail!1477 (List!10097) List!10097)

(assert (=> b!1033735 (= e!658636 (matchR!1403 (derivativeStep!760 r!15766 (head!1914 s!10566)) (tail!1477 s!10566)))))

(declare-fun b!1033736 () Bool)

(declare-fun res!464375 () Bool)

(assert (=> b!1033736 (=> (not res!464375) (not e!658634))))

(assert (=> b!1033736 (= res!464375 (isEmpty!6469 (tail!1477 s!10566)))))

(declare-fun b!1033737 () Bool)

(declare-fun res!464379 () Bool)

(assert (=> b!1033737 (=> res!464379 e!658639)))

(assert (=> b!1033737 (= res!464379 (not (isEmpty!6469 (tail!1477 s!10566))))))

(declare-fun b!1033738 () Bool)

(assert (=> b!1033738 (= e!658637 (not lt!356490))))

(declare-fun d!296081 () Bool)

(assert (=> d!296081 e!658633))

(declare-fun c!171554 () Bool)

(assert (=> d!296081 (= c!171554 ((_ is EmptyExpr!2867) r!15766))))

(assert (=> d!296081 (= lt!356490 e!658636)))

(declare-fun c!171556 () Bool)

(assert (=> d!296081 (= c!171556 (isEmpty!6469 s!10566))))

(assert (=> d!296081 (validRegex!1336 r!15766)))

(assert (=> d!296081 (= (matchR!1403 r!15766 s!10566) lt!356490)))

(declare-fun bm!71386 () Bool)

(assert (=> bm!71386 (= call!71391 (isEmpty!6469 s!10566))))

(declare-fun b!1033739 () Bool)

(declare-fun nullable!960 (Regex!2867) Bool)

(assert (=> b!1033739 (= e!658636 (nullable!960 r!15766))))

(declare-fun b!1033740 () Bool)

(assert (=> b!1033740 (= e!658638 e!658635)))

(declare-fun res!464377 () Bool)

(assert (=> b!1033740 (=> (not res!464377) (not e!658635))))

(assert (=> b!1033740 (= res!464377 (not lt!356490))))

(assert (= (and d!296081 c!171556) b!1033739))

(assert (= (and d!296081 (not c!171556)) b!1033735))

(assert (= (and d!296081 c!171554) b!1033733))

(assert (= (and d!296081 (not c!171554)) b!1033734))

(assert (= (and b!1033734 c!171555) b!1033738))

(assert (= (and b!1033734 (not c!171555)) b!1033730))

(assert (= (and b!1033730 (not res!464381)) b!1033732))

(assert (= (and b!1033732 res!464378) b!1033727))

(assert (= (and b!1033727 res!464382) b!1033736))

(assert (= (and b!1033736 res!464375) b!1033731))

(assert (= (and b!1033732 (not res!464376)) b!1033740))

(assert (= (and b!1033740 res!464377) b!1033729))

(assert (= (and b!1033729 (not res!464380)) b!1033737))

(assert (= (and b!1033737 (not res!464379)) b!1033728))

(assert (= (or b!1033733 b!1033727 b!1033729) bm!71386))

(assert (=> d!296081 m!1205975))

(assert (=> d!296081 m!1205931))

(declare-fun m!1205983 () Bool)

(assert (=> b!1033728 m!1205983))

(declare-fun m!1205985 () Bool)

(assert (=> b!1033736 m!1205985))

(assert (=> b!1033736 m!1205985))

(declare-fun m!1205987 () Bool)

(assert (=> b!1033736 m!1205987))

(assert (=> bm!71386 m!1205975))

(assert (=> b!1033735 m!1205983))

(assert (=> b!1033735 m!1205983))

(declare-fun m!1205989 () Bool)

(assert (=> b!1033735 m!1205989))

(assert (=> b!1033735 m!1205985))

(assert (=> b!1033735 m!1205989))

(assert (=> b!1033735 m!1205985))

(declare-fun m!1205991 () Bool)

(assert (=> b!1033735 m!1205991))

(assert (=> b!1033731 m!1205983))

(declare-fun m!1205993 () Bool)

(assert (=> b!1033739 m!1205993))

(assert (=> b!1033737 m!1205985))

(assert (=> b!1033737 m!1205985))

(assert (=> b!1033737 m!1205987))

(assert (=> b!1033487 d!296081))

(declare-fun d!296083 () Bool)

(assert (=> d!296083 (= (matchR!1403 r!15766 s!10566) (matchRSpec!666 r!15766 s!10566))))

(declare-fun lt!356493 () Unit!15409)

(declare-fun choose!6592 (Regex!2867 List!10097) Unit!15409)

(assert (=> d!296083 (= lt!356493 (choose!6592 r!15766 s!10566))))

(assert (=> d!296083 (validRegex!1336 r!15766)))

(assert (=> d!296083 (= (mainMatchTheorem!666 r!15766 s!10566) lt!356493)))

(declare-fun bs!247519 () Bool)

(assert (= bs!247519 d!296083))

(assert (=> bs!247519 m!1205935))

(assert (=> bs!247519 m!1205933))

(declare-fun m!1205995 () Bool)

(assert (=> bs!247519 m!1205995))

(assert (=> bs!247519 m!1205931))

(assert (=> b!1033487 d!296083))

(declare-fun b!1033759 () Bool)

(declare-fun e!658654 () Bool)

(declare-fun e!658658 () Bool)

(assert (=> b!1033759 (= e!658654 e!658658)))

(declare-fun res!464393 () Bool)

(assert (=> b!1033759 (= res!464393 (not (nullable!960 (reg!3196 r!15766))))))

(assert (=> b!1033759 (=> (not res!464393) (not e!658658))))

(declare-fun b!1033760 () Bool)

(declare-fun e!658655 () Bool)

(assert (=> b!1033760 (= e!658654 e!658655)))

(declare-fun c!171561 () Bool)

(assert (=> b!1033760 (= c!171561 ((_ is Union!2867) r!15766))))

(declare-fun d!296085 () Bool)

(declare-fun res!464395 () Bool)

(declare-fun e!658660 () Bool)

(assert (=> d!296085 (=> res!464395 e!658660)))

(assert (=> d!296085 (= res!464395 ((_ is ElementMatch!2867) r!15766))))

(assert (=> d!296085 (= (validRegex!1336 r!15766) e!658660)))

(declare-fun bm!71393 () Bool)

(declare-fun call!71399 () Bool)

(declare-fun call!71400 () Bool)

(assert (=> bm!71393 (= call!71399 call!71400)))

(declare-fun bm!71394 () Bool)

(declare-fun call!71398 () Bool)

(assert (=> bm!71394 (= call!71398 (validRegex!1336 (ite c!171561 (regOne!6247 r!15766) (regOne!6246 r!15766))))))

(declare-fun c!171562 () Bool)

(declare-fun bm!71395 () Bool)

(assert (=> bm!71395 (= call!71400 (validRegex!1336 (ite c!171562 (reg!3196 r!15766) (ite c!171561 (regTwo!6247 r!15766) (regTwo!6246 r!15766)))))))

(declare-fun b!1033761 () Bool)

(declare-fun res!464394 () Bool)

(declare-fun e!658659 () Bool)

(assert (=> b!1033761 (=> (not res!464394) (not e!658659))))

(assert (=> b!1033761 (= res!464394 call!71398)))

(assert (=> b!1033761 (= e!658655 e!658659)))

(declare-fun b!1033762 () Bool)

(assert (=> b!1033762 (= e!658658 call!71400)))

(declare-fun b!1033763 () Bool)

(assert (=> b!1033763 (= e!658660 e!658654)))

(assert (=> b!1033763 (= c!171562 ((_ is Star!2867) r!15766))))

(declare-fun b!1033764 () Bool)

(declare-fun res!464397 () Bool)

(declare-fun e!658657 () Bool)

(assert (=> b!1033764 (=> res!464397 e!658657)))

(assert (=> b!1033764 (= res!464397 (not ((_ is Concat!4700) r!15766)))))

(assert (=> b!1033764 (= e!658655 e!658657)))

(declare-fun b!1033765 () Bool)

(declare-fun e!658656 () Bool)

(assert (=> b!1033765 (= e!658656 call!71399)))

(declare-fun b!1033766 () Bool)

(assert (=> b!1033766 (= e!658657 e!658656)))

(declare-fun res!464396 () Bool)

(assert (=> b!1033766 (=> (not res!464396) (not e!658656))))

(assert (=> b!1033766 (= res!464396 call!71398)))

(declare-fun b!1033767 () Bool)

(assert (=> b!1033767 (= e!658659 call!71399)))

(assert (= (and d!296085 (not res!464395)) b!1033763))

(assert (= (and b!1033763 c!171562) b!1033759))

(assert (= (and b!1033763 (not c!171562)) b!1033760))

(assert (= (and b!1033759 res!464393) b!1033762))

(assert (= (and b!1033760 c!171561) b!1033761))

(assert (= (and b!1033760 (not c!171561)) b!1033764))

(assert (= (and b!1033761 res!464394) b!1033767))

(assert (= (and b!1033764 (not res!464397)) b!1033766))

(assert (= (and b!1033766 res!464396) b!1033765))

(assert (= (or b!1033767 b!1033765) bm!71393))

(assert (= (or b!1033761 b!1033766) bm!71394))

(assert (= (or b!1033762 bm!71393) bm!71395))

(declare-fun m!1205997 () Bool)

(assert (=> b!1033759 m!1205997))

(declare-fun m!1205999 () Bool)

(assert (=> bm!71394 m!1205999))

(declare-fun m!1206001 () Bool)

(assert (=> bm!71395 m!1206001))

(assert (=> start!89966 d!296085))

(declare-fun b!1033768 () Bool)

(declare-fun e!658661 () Bool)

(declare-fun e!658665 () Bool)

(assert (=> b!1033768 (= e!658661 e!658665)))

(declare-fun res!464398 () Bool)

(assert (=> b!1033768 (= res!464398 (not (nullable!960 (reg!3196 (regOne!6246 r!15766)))))))

(assert (=> b!1033768 (=> (not res!464398) (not e!658665))))

(declare-fun b!1033769 () Bool)

(declare-fun e!658662 () Bool)

(assert (=> b!1033769 (= e!658661 e!658662)))

(declare-fun c!171563 () Bool)

(assert (=> b!1033769 (= c!171563 ((_ is Union!2867) (regOne!6246 r!15766)))))

(declare-fun d!296087 () Bool)

(declare-fun res!464400 () Bool)

(declare-fun e!658667 () Bool)

(assert (=> d!296087 (=> res!464400 e!658667)))

(assert (=> d!296087 (= res!464400 ((_ is ElementMatch!2867) (regOne!6246 r!15766)))))

(assert (=> d!296087 (= (validRegex!1336 (regOne!6246 r!15766)) e!658667)))

(declare-fun bm!71396 () Bool)

(declare-fun call!71402 () Bool)

(declare-fun call!71403 () Bool)

(assert (=> bm!71396 (= call!71402 call!71403)))

(declare-fun bm!71397 () Bool)

(declare-fun call!71401 () Bool)

(assert (=> bm!71397 (= call!71401 (validRegex!1336 (ite c!171563 (regOne!6247 (regOne!6246 r!15766)) (regOne!6246 (regOne!6246 r!15766)))))))

(declare-fun bm!71398 () Bool)

(declare-fun c!171564 () Bool)

(assert (=> bm!71398 (= call!71403 (validRegex!1336 (ite c!171564 (reg!3196 (regOne!6246 r!15766)) (ite c!171563 (regTwo!6247 (regOne!6246 r!15766)) (regTwo!6246 (regOne!6246 r!15766))))))))

(declare-fun b!1033770 () Bool)

(declare-fun res!464399 () Bool)

(declare-fun e!658666 () Bool)

(assert (=> b!1033770 (=> (not res!464399) (not e!658666))))

(assert (=> b!1033770 (= res!464399 call!71401)))

(assert (=> b!1033770 (= e!658662 e!658666)))

(declare-fun b!1033771 () Bool)

(assert (=> b!1033771 (= e!658665 call!71403)))

(declare-fun b!1033772 () Bool)

(assert (=> b!1033772 (= e!658667 e!658661)))

(assert (=> b!1033772 (= c!171564 ((_ is Star!2867) (regOne!6246 r!15766)))))

(declare-fun b!1033773 () Bool)

(declare-fun res!464402 () Bool)

(declare-fun e!658664 () Bool)

(assert (=> b!1033773 (=> res!464402 e!658664)))

(assert (=> b!1033773 (= res!464402 (not ((_ is Concat!4700) (regOne!6246 r!15766))))))

(assert (=> b!1033773 (= e!658662 e!658664)))

(declare-fun b!1033774 () Bool)

(declare-fun e!658663 () Bool)

(assert (=> b!1033774 (= e!658663 call!71402)))

(declare-fun b!1033775 () Bool)

(assert (=> b!1033775 (= e!658664 e!658663)))

(declare-fun res!464401 () Bool)

(assert (=> b!1033775 (=> (not res!464401) (not e!658663))))

(assert (=> b!1033775 (= res!464401 call!71401)))

(declare-fun b!1033776 () Bool)

(assert (=> b!1033776 (= e!658666 call!71402)))

(assert (= (and d!296087 (not res!464400)) b!1033772))

(assert (= (and b!1033772 c!171564) b!1033768))

(assert (= (and b!1033772 (not c!171564)) b!1033769))

(assert (= (and b!1033768 res!464398) b!1033771))

(assert (= (and b!1033769 c!171563) b!1033770))

(assert (= (and b!1033769 (not c!171563)) b!1033773))

(assert (= (and b!1033770 res!464399) b!1033776))

(assert (= (and b!1033773 (not res!464402)) b!1033775))

(assert (= (and b!1033775 res!464401) b!1033774))

(assert (= (or b!1033776 b!1033774) bm!71396))

(assert (= (or b!1033770 b!1033775) bm!71397))

(assert (= (or b!1033771 bm!71396) bm!71398))

(declare-fun m!1206003 () Bool)

(assert (=> b!1033768 m!1206003))

(declare-fun m!1206005 () Bool)

(assert (=> bm!71397 m!1206005))

(declare-fun m!1206007 () Bool)

(assert (=> bm!71398 m!1206007))

(assert (=> b!1033489 d!296087))

(declare-fun b!1033781 () Bool)

(declare-fun e!658670 () Bool)

(declare-fun tp!312909 () Bool)

(assert (=> b!1033781 (= e!658670 (and tp_is_empty!5377 tp!312909))))

(assert (=> b!1033488 (= tp!312867 e!658670)))

(assert (= (and b!1033488 ((_ is Cons!10081) (t!101143 s!10566))) b!1033781))

(declare-fun e!658673 () Bool)

(assert (=> b!1033491 (= tp!312863 e!658673)))

(declare-fun b!1033793 () Bool)

(declare-fun tp!312921 () Bool)

(declare-fun tp!312920 () Bool)

(assert (=> b!1033793 (= e!658673 (and tp!312921 tp!312920))))

(declare-fun b!1033794 () Bool)

(declare-fun tp!312922 () Bool)

(assert (=> b!1033794 (= e!658673 tp!312922)))

(declare-fun b!1033795 () Bool)

(declare-fun tp!312924 () Bool)

(declare-fun tp!312923 () Bool)

(assert (=> b!1033795 (= e!658673 (and tp!312924 tp!312923))))

(declare-fun b!1033792 () Bool)

(assert (=> b!1033792 (= e!658673 tp_is_empty!5377)))

(assert (= (and b!1033491 ((_ is ElementMatch!2867) (reg!3196 r!15766))) b!1033792))

(assert (= (and b!1033491 ((_ is Concat!4700) (reg!3196 r!15766))) b!1033793))

(assert (= (and b!1033491 ((_ is Star!2867) (reg!3196 r!15766))) b!1033794))

(assert (= (and b!1033491 ((_ is Union!2867) (reg!3196 r!15766))) b!1033795))

(declare-fun e!658674 () Bool)

(assert (=> b!1033486 (= tp!312865 e!658674)))

(declare-fun b!1033797 () Bool)

(declare-fun tp!312926 () Bool)

(declare-fun tp!312925 () Bool)

(assert (=> b!1033797 (= e!658674 (and tp!312926 tp!312925))))

(declare-fun b!1033798 () Bool)

(declare-fun tp!312927 () Bool)

(assert (=> b!1033798 (= e!658674 tp!312927)))

(declare-fun b!1033799 () Bool)

(declare-fun tp!312929 () Bool)

(declare-fun tp!312928 () Bool)

(assert (=> b!1033799 (= e!658674 (and tp!312929 tp!312928))))

(declare-fun b!1033796 () Bool)

(assert (=> b!1033796 (= e!658674 tp_is_empty!5377)))

(assert (= (and b!1033486 ((_ is ElementMatch!2867) (regOne!6246 r!15766))) b!1033796))

(assert (= (and b!1033486 ((_ is Concat!4700) (regOne!6246 r!15766))) b!1033797))

(assert (= (and b!1033486 ((_ is Star!2867) (regOne!6246 r!15766))) b!1033798))

(assert (= (and b!1033486 ((_ is Union!2867) (regOne!6246 r!15766))) b!1033799))

(declare-fun e!658675 () Bool)

(assert (=> b!1033486 (= tp!312864 e!658675)))

(declare-fun b!1033801 () Bool)

(declare-fun tp!312931 () Bool)

(declare-fun tp!312930 () Bool)

(assert (=> b!1033801 (= e!658675 (and tp!312931 tp!312930))))

(declare-fun b!1033802 () Bool)

(declare-fun tp!312932 () Bool)

(assert (=> b!1033802 (= e!658675 tp!312932)))

(declare-fun b!1033803 () Bool)

(declare-fun tp!312934 () Bool)

(declare-fun tp!312933 () Bool)

(assert (=> b!1033803 (= e!658675 (and tp!312934 tp!312933))))

(declare-fun b!1033800 () Bool)

(assert (=> b!1033800 (= e!658675 tp_is_empty!5377)))

(assert (= (and b!1033486 ((_ is ElementMatch!2867) (regTwo!6246 r!15766))) b!1033800))

(assert (= (and b!1033486 ((_ is Concat!4700) (regTwo!6246 r!15766))) b!1033801))

(assert (= (and b!1033486 ((_ is Star!2867) (regTwo!6246 r!15766))) b!1033802))

(assert (= (and b!1033486 ((_ is Union!2867) (regTwo!6246 r!15766))) b!1033803))

(declare-fun e!658676 () Bool)

(assert (=> b!1033490 (= tp!312866 e!658676)))

(declare-fun b!1033805 () Bool)

(declare-fun tp!312936 () Bool)

(declare-fun tp!312935 () Bool)

(assert (=> b!1033805 (= e!658676 (and tp!312936 tp!312935))))

(declare-fun b!1033806 () Bool)

(declare-fun tp!312937 () Bool)

(assert (=> b!1033806 (= e!658676 tp!312937)))

(declare-fun b!1033807 () Bool)

(declare-fun tp!312939 () Bool)

(declare-fun tp!312938 () Bool)

(assert (=> b!1033807 (= e!658676 (and tp!312939 tp!312938))))

(declare-fun b!1033804 () Bool)

(assert (=> b!1033804 (= e!658676 tp_is_empty!5377)))

(assert (= (and b!1033490 ((_ is ElementMatch!2867) (regOne!6247 r!15766))) b!1033804))

(assert (= (and b!1033490 ((_ is Concat!4700) (regOne!6247 r!15766))) b!1033805))

(assert (= (and b!1033490 ((_ is Star!2867) (regOne!6247 r!15766))) b!1033806))

(assert (= (and b!1033490 ((_ is Union!2867) (regOne!6247 r!15766))) b!1033807))

(declare-fun e!658677 () Bool)

(assert (=> b!1033490 (= tp!312868 e!658677)))

(declare-fun b!1033809 () Bool)

(declare-fun tp!312941 () Bool)

(declare-fun tp!312940 () Bool)

(assert (=> b!1033809 (= e!658677 (and tp!312941 tp!312940))))

(declare-fun b!1033810 () Bool)

(declare-fun tp!312942 () Bool)

(assert (=> b!1033810 (= e!658677 tp!312942)))

(declare-fun b!1033811 () Bool)

(declare-fun tp!312944 () Bool)

(declare-fun tp!312943 () Bool)

(assert (=> b!1033811 (= e!658677 (and tp!312944 tp!312943))))

(declare-fun b!1033808 () Bool)

(assert (=> b!1033808 (= e!658677 tp_is_empty!5377)))

(assert (= (and b!1033490 ((_ is ElementMatch!2867) (regTwo!6247 r!15766))) b!1033808))

(assert (= (and b!1033490 ((_ is Concat!4700) (regTwo!6247 r!15766))) b!1033809))

(assert (= (and b!1033490 ((_ is Star!2867) (regTwo!6247 r!15766))) b!1033810))

(assert (= (and b!1033490 ((_ is Union!2867) (regTwo!6247 r!15766))) b!1033811))

(check-sat (not b!1033735) (not bm!71382) (not b!1033728) (not bm!71397) (not b!1033807) (not bm!71395) (not b!1033736) (not b!1033731) (not bm!71398) (not b!1033768) (not b!1033795) (not d!296083) (not b!1033759) (not b!1033798) (not d!296081) (not b!1033739) (not b!1033803) (not b!1033660) (not b!1033809) (not b!1033805) (not b!1033810) (not b!1033797) (not bm!71394) (not b!1033781) (not bm!71383) (not b!1033793) (not b!1033659) (not b!1033802) (not b!1033799) tp_is_empty!5377 (not b!1033801) (not b!1033737) (not b!1033811) (not bm!71386) (not b!1033806) (not b!1033794))
(check-sat)
