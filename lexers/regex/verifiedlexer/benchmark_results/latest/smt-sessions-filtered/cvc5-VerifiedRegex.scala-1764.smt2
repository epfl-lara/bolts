; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88064 () Bool)

(assert start!88064)

(declare-fun b!1003461 () Bool)

(assert (=> b!1003461 true))

(assert (=> b!1003461 true))

(assert (=> b!1003461 true))

(declare-fun lambda!35618 () Int)

(declare-fun lambda!35617 () Int)

(assert (=> b!1003461 (not (= lambda!35618 lambda!35617))))

(assert (=> b!1003461 true))

(assert (=> b!1003461 true))

(assert (=> b!1003461 true))

(declare-fun b!1003456 () Bool)

(declare-fun e!643016 () Bool)

(declare-fun tp_is_empty!5215 () Bool)

(assert (=> b!1003456 (= e!643016 tp_is_empty!5215)))

(declare-fun b!1003457 () Bool)

(declare-fun e!643012 () Bool)

(declare-datatypes ((C!6142 0))(
  ( (C!6143 (val!3319 Int)) )
))
(declare-datatypes ((Regex!2786 0))(
  ( (ElementMatch!2786 (c!165289 C!6142)) (Concat!4619 (regOne!6084 Regex!2786) (regTwo!6084 Regex!2786)) (EmptyExpr!2786) (Star!2786 (reg!3115 Regex!2786)) (EmptyLang!2786) (Union!2786 (regOne!6085 Regex!2786) (regTwo!6085 Regex!2786)) )
))
(declare-fun r!15766 () Regex!2786)

(declare-datatypes ((List!10016 0))(
  ( (Nil!10000) (Cons!10000 (h!15401 C!6142) (t!101062 List!10016)) )
))
(declare-fun s!10566 () List!10016)

(declare-fun matchR!1322 (Regex!2786 List!10016) Bool)

(declare-fun removeUselessConcat!371 (Regex!2786) Regex!2786)

(assert (=> b!1003457 (= e!643012 (matchR!1322 (removeUselessConcat!371 r!15766) s!10566))))

(declare-fun b!1003458 () Bool)

(declare-fun tp!305537 () Bool)

(declare-fun tp!305542 () Bool)

(assert (=> b!1003458 (= e!643016 (and tp!305537 tp!305542))))

(declare-fun b!1003459 () Bool)

(declare-fun e!643014 () Bool)

(declare-fun tp!305538 () Bool)

(assert (=> b!1003459 (= e!643014 (and tp_is_empty!5215 tp!305538))))

(declare-fun b!1003460 () Bool)

(declare-fun tp!305541 () Bool)

(assert (=> b!1003460 (= e!643016 tp!305541)))

(declare-fun res!452977 () Bool)

(declare-fun e!643015 () Bool)

(assert (=> start!88064 (=> (not res!452977) (not e!643015))))

(declare-fun validRegex!1255 (Regex!2786) Bool)

(assert (=> start!88064 (= res!452977 (validRegex!1255 r!15766))))

(assert (=> start!88064 e!643015))

(assert (=> start!88064 e!643016))

(assert (=> start!88064 e!643014))

(declare-fun e!643013 () Bool)

(assert (=> b!1003461 (= e!643013 e!643012)))

(declare-fun res!452975 () Bool)

(assert (=> b!1003461 (=> res!452975 e!643012)))

(declare-fun isEmpty!6339 (List!10016) Bool)

(assert (=> b!1003461 (= res!452975 (not (isEmpty!6339 s!10566)))))

(declare-fun Exists!519 (Int) Bool)

(assert (=> b!1003461 (= (Exists!519 lambda!35617) (Exists!519 lambda!35618))))

(declare-datatypes ((Unit!15231 0))(
  ( (Unit!15232) )
))
(declare-fun lt!352347 () Unit!15231)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!157 (Regex!2786 List!10016) Unit!15231)

(assert (=> b!1003461 (= lt!352347 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!157 (reg!3115 r!15766) s!10566))))

(declare-fun lt!352350 () Regex!2786)

(declare-datatypes ((tuple2!11366 0))(
  ( (tuple2!11367 (_1!6509 List!10016) (_2!6509 List!10016)) )
))
(declare-datatypes ((Option!2325 0))(
  ( (None!2324) (Some!2324 (v!19741 tuple2!11366)) )
))
(declare-fun isDefined!1967 (Option!2325) Bool)

(declare-fun findConcatSeparation!431 (Regex!2786 Regex!2786 List!10016 List!10016 List!10016) Option!2325)

(assert (=> b!1003461 (= (isDefined!1967 (findConcatSeparation!431 (reg!3115 r!15766) lt!352350 Nil!10000 s!10566 s!10566)) (Exists!519 lambda!35617))))

(declare-fun lt!352349 () Unit!15231)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!431 (Regex!2786 Regex!2786 List!10016) Unit!15231)

(assert (=> b!1003461 (= lt!352349 (lemmaFindConcatSeparationEquivalentToExists!431 (reg!3115 r!15766) lt!352350 s!10566))))

(assert (=> b!1003461 (= lt!352350 (Star!2786 (reg!3115 r!15766)))))

(declare-fun b!1003462 () Bool)

(assert (=> b!1003462 (= e!643015 (not e!643013))))

(declare-fun res!452976 () Bool)

(assert (=> b!1003462 (=> res!452976 e!643013)))

(declare-fun lt!352346 () Bool)

(assert (=> b!1003462 (= res!452976 (or (not lt!352346) (and (is-Concat!4619 r!15766) (is-EmptyExpr!2786 (regOne!6084 r!15766))) (and (is-Concat!4619 r!15766) (is-EmptyExpr!2786 (regTwo!6084 r!15766))) (is-Concat!4619 r!15766) (is-Union!2786 r!15766) (not (is-Star!2786 r!15766))))))

(declare-fun matchRSpec!585 (Regex!2786 List!10016) Bool)

(assert (=> b!1003462 (= lt!352346 (matchRSpec!585 r!15766 s!10566))))

(assert (=> b!1003462 (= lt!352346 (matchR!1322 r!15766 s!10566))))

(declare-fun lt!352348 () Unit!15231)

(declare-fun mainMatchTheorem!585 (Regex!2786 List!10016) Unit!15231)

(assert (=> b!1003462 (= lt!352348 (mainMatchTheorem!585 r!15766 s!10566))))

(declare-fun b!1003463 () Bool)

(declare-fun tp!305539 () Bool)

(declare-fun tp!305540 () Bool)

(assert (=> b!1003463 (= e!643016 (and tp!305539 tp!305540))))

(assert (= (and start!88064 res!452977) b!1003462))

(assert (= (and b!1003462 (not res!452976)) b!1003461))

(assert (= (and b!1003461 (not res!452975)) b!1003457))

(assert (= (and start!88064 (is-ElementMatch!2786 r!15766)) b!1003456))

(assert (= (and start!88064 (is-Concat!4619 r!15766)) b!1003463))

(assert (= (and start!88064 (is-Star!2786 r!15766)) b!1003460))

(assert (= (and start!88064 (is-Union!2786 r!15766)) b!1003458))

(assert (= (and start!88064 (is-Cons!10000 s!10566)) b!1003459))

(declare-fun m!1190925 () Bool)

(assert (=> b!1003457 m!1190925))

(assert (=> b!1003457 m!1190925))

(declare-fun m!1190927 () Bool)

(assert (=> b!1003457 m!1190927))

(declare-fun m!1190929 () Bool)

(assert (=> start!88064 m!1190929))

(declare-fun m!1190931 () Bool)

(assert (=> b!1003461 m!1190931))

(assert (=> b!1003461 m!1190931))

(declare-fun m!1190933 () Bool)

(assert (=> b!1003461 m!1190933))

(declare-fun m!1190935 () Bool)

(assert (=> b!1003461 m!1190935))

(declare-fun m!1190937 () Bool)

(assert (=> b!1003461 m!1190937))

(declare-fun m!1190939 () Bool)

(assert (=> b!1003461 m!1190939))

(assert (=> b!1003461 m!1190939))

(declare-fun m!1190941 () Bool)

(assert (=> b!1003461 m!1190941))

(declare-fun m!1190943 () Bool)

(assert (=> b!1003461 m!1190943))

(declare-fun m!1190945 () Bool)

(assert (=> b!1003462 m!1190945))

(declare-fun m!1190947 () Bool)

(assert (=> b!1003462 m!1190947))

(declare-fun m!1190949 () Bool)

(assert (=> b!1003462 m!1190949))

(push 1)

(assert (not b!1003460))

(assert (not b!1003462))

(assert (not start!88064))

(assert (not b!1003457))

(assert (not b!1003458))

(assert tp_is_empty!5215)

(assert (not b!1003459))

(assert (not b!1003461))

(assert (not b!1003463))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1003538 () Bool)

(declare-fun res!453017 () Bool)

(declare-fun e!643054 () Bool)

(assert (=> b!1003538 (=> res!453017 e!643054)))

(declare-fun tail!1418 (List!10016) List!10016)

(assert (=> b!1003538 (= res!453017 (not (isEmpty!6339 (tail!1418 s!10566))))))

(declare-fun b!1003539 () Bool)

(declare-fun res!453024 () Bool)

(declare-fun e!643056 () Bool)

(assert (=> b!1003539 (=> res!453024 e!643056)))

(assert (=> b!1003539 (= res!453024 (not (is-ElementMatch!2786 (removeUselessConcat!371 r!15766))))))

(declare-fun e!643057 () Bool)

(assert (=> b!1003539 (= e!643057 e!643056)))

(declare-fun b!1003540 () Bool)

(declare-fun e!643058 () Bool)

(declare-fun head!1856 (List!10016) C!6142)

(assert (=> b!1003540 (= e!643058 (= (head!1856 s!10566) (c!165289 (removeUselessConcat!371 r!15766))))))

(declare-fun b!1003541 () Bool)

(declare-fun e!643052 () Bool)

(assert (=> b!1003541 (= e!643052 e!643057)))

(declare-fun c!165298 () Bool)

(assert (=> b!1003541 (= c!165298 (is-EmptyLang!2786 (removeUselessConcat!371 r!15766)))))

(declare-fun b!1003542 () Bool)

(declare-fun e!643055 () Bool)

(assert (=> b!1003542 (= e!643055 e!643054)))

(declare-fun res!453021 () Bool)

(assert (=> b!1003542 (=> res!453021 e!643054)))

(declare-fun call!66864 () Bool)

(assert (=> b!1003542 (= res!453021 call!66864)))

(declare-fun b!1003543 () Bool)

(declare-fun lt!352368 () Bool)

(assert (=> b!1003543 (= e!643057 (not lt!352368))))

(declare-fun b!1003544 () Bool)

(declare-fun e!643053 () Bool)

(declare-fun derivativeStep!702 (Regex!2786 C!6142) Regex!2786)

(assert (=> b!1003544 (= e!643053 (matchR!1322 (derivativeStep!702 (removeUselessConcat!371 r!15766) (head!1856 s!10566)) (tail!1418 s!10566)))))

(declare-fun d!291525 () Bool)

(assert (=> d!291525 e!643052))

(declare-fun c!165299 () Bool)

(assert (=> d!291525 (= c!165299 (is-EmptyExpr!2786 (removeUselessConcat!371 r!15766)))))

(assert (=> d!291525 (= lt!352368 e!643053)))

(declare-fun c!165297 () Bool)

(assert (=> d!291525 (= c!165297 (isEmpty!6339 s!10566))))

(assert (=> d!291525 (validRegex!1255 (removeUselessConcat!371 r!15766))))

(assert (=> d!291525 (= (matchR!1322 (removeUselessConcat!371 r!15766) s!10566) lt!352368)))

(declare-fun bm!66859 () Bool)

(assert (=> bm!66859 (= call!66864 (isEmpty!6339 s!10566))))

(declare-fun b!1003545 () Bool)

(declare-fun res!453022 () Bool)

(assert (=> b!1003545 (=> (not res!453022) (not e!643058))))

(assert (=> b!1003545 (= res!453022 (isEmpty!6339 (tail!1418 s!10566)))))

(declare-fun b!1003546 () Bool)

(assert (=> b!1003546 (= e!643054 (not (= (head!1856 s!10566) (c!165289 (removeUselessConcat!371 r!15766)))))))

(declare-fun b!1003547 () Bool)

(declare-fun res!453020 () Bool)

(assert (=> b!1003547 (=> (not res!453020) (not e!643058))))

(assert (=> b!1003547 (= res!453020 (not call!66864))))

(declare-fun b!1003548 () Bool)

(declare-fun res!453018 () Bool)

(assert (=> b!1003548 (=> res!453018 e!643056)))

(assert (=> b!1003548 (= res!453018 e!643058)))

(declare-fun res!453019 () Bool)

(assert (=> b!1003548 (=> (not res!453019) (not e!643058))))

(assert (=> b!1003548 (= res!453019 lt!352368)))

(declare-fun b!1003549 () Bool)

(declare-fun nullable!898 (Regex!2786) Bool)

(assert (=> b!1003549 (= e!643053 (nullable!898 (removeUselessConcat!371 r!15766)))))

(declare-fun b!1003550 () Bool)

(assert (=> b!1003550 (= e!643052 (= lt!352368 call!66864))))

(declare-fun b!1003551 () Bool)

(assert (=> b!1003551 (= e!643056 e!643055)))

(declare-fun res!453023 () Bool)

(assert (=> b!1003551 (=> (not res!453023) (not e!643055))))

(assert (=> b!1003551 (= res!453023 (not lt!352368))))

(assert (= (and d!291525 c!165297) b!1003549))

(assert (= (and d!291525 (not c!165297)) b!1003544))

(assert (= (and d!291525 c!165299) b!1003550))

(assert (= (and d!291525 (not c!165299)) b!1003541))

(assert (= (and b!1003541 c!165298) b!1003543))

(assert (= (and b!1003541 (not c!165298)) b!1003539))

(assert (= (and b!1003539 (not res!453024)) b!1003548))

(assert (= (and b!1003548 res!453019) b!1003547))

(assert (= (and b!1003547 res!453020) b!1003545))

(assert (= (and b!1003545 res!453022) b!1003540))

(assert (= (and b!1003548 (not res!453018)) b!1003551))

(assert (= (and b!1003551 res!453023) b!1003542))

(assert (= (and b!1003542 (not res!453021)) b!1003538))

(assert (= (and b!1003538 (not res!453017)) b!1003546))

(assert (= (or b!1003550 b!1003542 b!1003547) bm!66859))

(assert (=> b!1003549 m!1190925))

(declare-fun m!1190977 () Bool)

(assert (=> b!1003549 m!1190977))

(declare-fun m!1190979 () Bool)

(assert (=> b!1003540 m!1190979))

(assert (=> d!291525 m!1190943))

(assert (=> d!291525 m!1190925))

(declare-fun m!1190981 () Bool)

(assert (=> d!291525 m!1190981))

(assert (=> b!1003544 m!1190979))

(assert (=> b!1003544 m!1190925))

(assert (=> b!1003544 m!1190979))

(declare-fun m!1190983 () Bool)

(assert (=> b!1003544 m!1190983))

(declare-fun m!1190985 () Bool)

(assert (=> b!1003544 m!1190985))

(assert (=> b!1003544 m!1190983))

(assert (=> b!1003544 m!1190985))

(declare-fun m!1190987 () Bool)

(assert (=> b!1003544 m!1190987))

(assert (=> b!1003545 m!1190985))

(assert (=> b!1003545 m!1190985))

(declare-fun m!1190989 () Bool)

(assert (=> b!1003545 m!1190989))

(assert (=> b!1003538 m!1190985))

(assert (=> b!1003538 m!1190985))

(assert (=> b!1003538 m!1190989))

(assert (=> bm!66859 m!1190943))

(assert (=> b!1003546 m!1190979))

(assert (=> b!1003457 d!291525))

(declare-fun bm!66870 () Bool)

(declare-fun call!66878 () Regex!2786)

(declare-fun call!66877 () Regex!2786)

(assert (=> bm!66870 (= call!66878 call!66877)))

(declare-fun b!1003579 () Bool)

(declare-fun e!643076 () Regex!2786)

(declare-fun call!66879 () Regex!2786)

(assert (=> b!1003579 (= e!643076 (Concat!4619 call!66878 call!66879))))

(declare-fun b!1003580 () Bool)

(declare-fun e!643074 () Bool)

(declare-fun lt!352371 () Regex!2786)

(assert (=> b!1003580 (= e!643074 (= (nullable!898 lt!352371) (nullable!898 r!15766)))))

(declare-fun b!1003581 () Bool)

(declare-fun e!643077 () Regex!2786)

(assert (=> b!1003581 (= e!643077 call!66877)))

(declare-fun b!1003582 () Bool)

(declare-fun c!165315 () Bool)

(assert (=> b!1003582 (= c!165315 (is-Star!2786 r!15766))))

(declare-fun e!643078 () Regex!2786)

(declare-fun e!643075 () Regex!2786)

(assert (=> b!1003582 (= e!643078 e!643075)))

(declare-fun bm!66871 () Bool)

(declare-fun call!66875 () Regex!2786)

(assert (=> bm!66871 (= call!66879 call!66875)))

(declare-fun c!165314 () Bool)

(declare-fun c!165313 () Bool)

(declare-fun c!165316 () Bool)

(declare-fun bm!66872 () Bool)

(assert (=> bm!66872 (= call!66877 (removeUselessConcat!371 (ite c!165313 (regTwo!6084 r!15766) (ite c!165316 (regOne!6084 r!15766) (ite c!165314 (regTwo!6085 r!15766) (reg!3115 r!15766))))))))

(declare-fun b!1003583 () Bool)

(declare-fun call!66876 () Regex!2786)

(assert (=> b!1003583 (= e!643075 (Star!2786 call!66876))))

(declare-fun b!1003584 () Bool)

(assert (=> b!1003584 (= e!643078 (Union!2786 call!66879 call!66876))))

(declare-fun d!291529 () Bool)

(assert (=> d!291529 e!643074))

(declare-fun res!453027 () Bool)

(assert (=> d!291529 (=> (not res!453027) (not e!643074))))

(assert (=> d!291529 (= res!453027 (validRegex!1255 lt!352371))))

(assert (=> d!291529 (= lt!352371 e!643077)))

(assert (=> d!291529 (= c!165313 (and (is-Concat!4619 r!15766) (is-EmptyExpr!2786 (regOne!6084 r!15766))))))

(assert (=> d!291529 (validRegex!1255 r!15766)))

(assert (=> d!291529 (= (removeUselessConcat!371 r!15766) lt!352371)))

(declare-fun b!1003578 () Bool)

(assert (=> b!1003578 (= c!165316 (is-Concat!4619 r!15766))))

(declare-fun e!643073 () Regex!2786)

(assert (=> b!1003578 (= e!643073 e!643076)))

(declare-fun b!1003585 () Bool)

(assert (=> b!1003585 (= e!643076 e!643078)))

(assert (=> b!1003585 (= c!165314 (is-Union!2786 r!15766))))

(declare-fun b!1003586 () Bool)

(assert (=> b!1003586 (= e!643075 r!15766)))

(declare-fun bm!66873 () Bool)

(declare-fun c!165312 () Bool)

(assert (=> bm!66873 (= call!66875 (removeUselessConcat!371 (ite c!165312 (regOne!6084 r!15766) (ite c!165316 (regTwo!6084 r!15766) (regOne!6085 r!15766)))))))

(declare-fun b!1003587 () Bool)

(assert (=> b!1003587 (= e!643073 call!66875)))

(declare-fun b!1003588 () Bool)

(assert (=> b!1003588 (= e!643077 e!643073)))

(assert (=> b!1003588 (= c!165312 (and (is-Concat!4619 r!15766) (is-EmptyExpr!2786 (regTwo!6084 r!15766))))))

(declare-fun bm!66874 () Bool)

(assert (=> bm!66874 (= call!66876 call!66878)))

(assert (= (and d!291529 c!165313) b!1003581))

(assert (= (and d!291529 (not c!165313)) b!1003588))

(assert (= (and b!1003588 c!165312) b!1003587))

(assert (= (and b!1003588 (not c!165312)) b!1003578))

(assert (= (and b!1003578 c!165316) b!1003579))

(assert (= (and b!1003578 (not c!165316)) b!1003585))

(assert (= (and b!1003585 c!165314) b!1003584))

(assert (= (and b!1003585 (not c!165314)) b!1003582))

(assert (= (and b!1003582 c!165315) b!1003583))

(assert (= (and b!1003582 (not c!165315)) b!1003586))

(assert (= (or b!1003584 b!1003583) bm!66874))

(assert (= (or b!1003579 b!1003584) bm!66871))

(assert (= (or b!1003579 bm!66874) bm!66870))

(assert (= (or b!1003587 bm!66871) bm!66873))

(assert (= (or b!1003581 bm!66870) bm!66872))

(assert (= (and d!291529 res!453027) b!1003580))

(declare-fun m!1190991 () Bool)

(assert (=> b!1003580 m!1190991))

(declare-fun m!1190993 () Bool)

(assert (=> b!1003580 m!1190993))

(declare-fun m!1190995 () Bool)

(assert (=> bm!66872 m!1190995))

(declare-fun m!1190997 () Bool)

(assert (=> d!291529 m!1190997))

(assert (=> d!291529 m!1190929))

(declare-fun m!1190999 () Bool)

(assert (=> bm!66873 m!1190999))

(assert (=> b!1003457 d!291529))

(declare-fun bs!245168 () Bool)

(declare-fun b!1003659 () Bool)

(assert (= bs!245168 (and b!1003659 b!1003461)))

(declare-fun lambda!35635 () Int)

(assert (=> bs!245168 (not (= lambda!35635 lambda!35617))))

(assert (=> bs!245168 (= (= r!15766 lt!352350) (= lambda!35635 lambda!35618))))

(assert (=> b!1003659 true))

(assert (=> b!1003659 true))

(declare-fun bs!245169 () Bool)

(declare-fun b!1003650 () Bool)

(assert (= bs!245169 (and b!1003650 b!1003461)))

(declare-fun lambda!35636 () Int)

(assert (=> bs!245169 (not (= lambda!35636 lambda!35617))))

(assert (=> bs!245169 (not (= lambda!35636 lambda!35618))))

(declare-fun bs!245170 () Bool)

(assert (= bs!245170 (and b!1003650 b!1003659)))

(assert (=> bs!245170 (not (= lambda!35636 lambda!35635))))

(assert (=> b!1003650 true))

(assert (=> b!1003650 true))

(declare-fun b!1003649 () Bool)

(declare-fun c!165332 () Bool)

(assert (=> b!1003649 (= c!165332 (is-Union!2786 r!15766))))

(declare-fun e!643119 () Bool)

(declare-fun e!643115 () Bool)

(assert (=> b!1003649 (= e!643119 e!643115)))

(declare-fun e!643117 () Bool)

(declare-fun call!66887 () Bool)

(assert (=> b!1003650 (= e!643117 call!66887)))

(declare-fun b!1003651 () Bool)

(declare-fun c!165334 () Bool)

(assert (=> b!1003651 (= c!165334 (is-ElementMatch!2786 r!15766))))

(declare-fun e!643114 () Bool)

(assert (=> b!1003651 (= e!643114 e!643119)))

(declare-fun b!1003652 () Bool)

(assert (=> b!1003652 (= e!643119 (= s!10566 (Cons!10000 (c!165289 r!15766) Nil!10000)))))

(declare-fun b!1003653 () Bool)

(declare-fun e!643116 () Bool)

(declare-fun call!66886 () Bool)

(assert (=> b!1003653 (= e!643116 call!66886)))

(declare-fun b!1003654 () Bool)

(declare-fun e!643113 () Bool)

(assert (=> b!1003654 (= e!643115 e!643113)))

(declare-fun res!453060 () Bool)

(assert (=> b!1003654 (= res!453060 (matchRSpec!585 (regOne!6085 r!15766) s!10566))))

(assert (=> b!1003654 (=> res!453060 e!643113)))

(declare-fun b!1003656 () Bool)

(assert (=> b!1003656 (= e!643113 (matchRSpec!585 (regTwo!6085 r!15766) s!10566))))

(declare-fun bm!66881 () Bool)

(assert (=> bm!66881 (= call!66886 (isEmpty!6339 s!10566))))

(declare-fun b!1003657 () Bool)

(declare-fun res!453062 () Bool)

(declare-fun e!643118 () Bool)

(assert (=> b!1003657 (=> res!453062 e!643118)))

(assert (=> b!1003657 (= res!453062 call!66886)))

(assert (=> b!1003657 (= e!643117 e!643118)))

(declare-fun c!165331 () Bool)

(declare-fun bm!66882 () Bool)

(assert (=> bm!66882 (= call!66887 (Exists!519 (ite c!165331 lambda!35635 lambda!35636)))))

(declare-fun b!1003655 () Bool)

(assert (=> b!1003655 (= e!643115 e!643117)))

(assert (=> b!1003655 (= c!165331 (is-Star!2786 r!15766))))

(declare-fun d!291531 () Bool)

(declare-fun c!165333 () Bool)

(assert (=> d!291531 (= c!165333 (is-EmptyExpr!2786 r!15766))))

(assert (=> d!291531 (= (matchRSpec!585 r!15766 s!10566) e!643116)))

(declare-fun b!1003658 () Bool)

(assert (=> b!1003658 (= e!643116 e!643114)))

(declare-fun res!453061 () Bool)

(assert (=> b!1003658 (= res!453061 (not (is-EmptyLang!2786 r!15766)))))

(assert (=> b!1003658 (=> (not res!453061) (not e!643114))))

(assert (=> b!1003659 (= e!643118 call!66887)))

(assert (= (and d!291531 c!165333) b!1003653))

(assert (= (and d!291531 (not c!165333)) b!1003658))

(assert (= (and b!1003658 res!453061) b!1003651))

(assert (= (and b!1003651 c!165334) b!1003652))

(assert (= (and b!1003651 (not c!165334)) b!1003649))

(assert (= (and b!1003649 c!165332) b!1003654))

(assert (= (and b!1003649 (not c!165332)) b!1003655))

(assert (= (and b!1003654 (not res!453060)) b!1003656))

(assert (= (and b!1003655 c!165331) b!1003657))

(assert (= (and b!1003655 (not c!165331)) b!1003650))

(assert (= (and b!1003657 (not res!453062)) b!1003659))

(assert (= (or b!1003659 b!1003650) bm!66882))

(assert (= (or b!1003653 b!1003657) bm!66881))

(declare-fun m!1191001 () Bool)

(assert (=> b!1003654 m!1191001))

(declare-fun m!1191003 () Bool)

(assert (=> b!1003656 m!1191003))

(assert (=> bm!66881 m!1190943))

(declare-fun m!1191005 () Bool)

(assert (=> bm!66882 m!1191005))

(assert (=> b!1003462 d!291531))

(declare-fun b!1003660 () Bool)

(declare-fun res!453063 () Bool)

(declare-fun e!643122 () Bool)

(assert (=> b!1003660 (=> res!453063 e!643122)))

(assert (=> b!1003660 (= res!453063 (not (isEmpty!6339 (tail!1418 s!10566))))))

(declare-fun b!1003661 () Bool)

(declare-fun res!453070 () Bool)

(declare-fun e!643124 () Bool)

(assert (=> b!1003661 (=> res!453070 e!643124)))

(assert (=> b!1003661 (= res!453070 (not (is-ElementMatch!2786 r!15766)))))

(declare-fun e!643125 () Bool)

(assert (=> b!1003661 (= e!643125 e!643124)))

(declare-fun b!1003662 () Bool)

(declare-fun e!643126 () Bool)

(assert (=> b!1003662 (= e!643126 (= (head!1856 s!10566) (c!165289 r!15766)))))

(declare-fun b!1003663 () Bool)

(declare-fun e!643120 () Bool)

(assert (=> b!1003663 (= e!643120 e!643125)))

(declare-fun c!165336 () Bool)

(assert (=> b!1003663 (= c!165336 (is-EmptyLang!2786 r!15766))))

(declare-fun b!1003664 () Bool)

(declare-fun e!643123 () Bool)

(assert (=> b!1003664 (= e!643123 e!643122)))

(declare-fun res!453067 () Bool)

(assert (=> b!1003664 (=> res!453067 e!643122)))

(declare-fun call!66890 () Bool)

(assert (=> b!1003664 (= res!453067 call!66890)))

(declare-fun b!1003665 () Bool)

(declare-fun lt!352372 () Bool)

(assert (=> b!1003665 (= e!643125 (not lt!352372))))

(declare-fun b!1003666 () Bool)

(declare-fun e!643121 () Bool)

(assert (=> b!1003666 (= e!643121 (matchR!1322 (derivativeStep!702 r!15766 (head!1856 s!10566)) (tail!1418 s!10566)))))

(declare-fun d!291533 () Bool)

(assert (=> d!291533 e!643120))

(declare-fun c!165337 () Bool)

(assert (=> d!291533 (= c!165337 (is-EmptyExpr!2786 r!15766))))

(assert (=> d!291533 (= lt!352372 e!643121)))

(declare-fun c!165335 () Bool)

(assert (=> d!291533 (= c!165335 (isEmpty!6339 s!10566))))

(assert (=> d!291533 (validRegex!1255 r!15766)))

(assert (=> d!291533 (= (matchR!1322 r!15766 s!10566) lt!352372)))

(declare-fun bm!66885 () Bool)

(assert (=> bm!66885 (= call!66890 (isEmpty!6339 s!10566))))

(declare-fun b!1003667 () Bool)

(declare-fun res!453068 () Bool)

(assert (=> b!1003667 (=> (not res!453068) (not e!643126))))

(assert (=> b!1003667 (= res!453068 (isEmpty!6339 (tail!1418 s!10566)))))

(declare-fun b!1003668 () Bool)

(assert (=> b!1003668 (= e!643122 (not (= (head!1856 s!10566) (c!165289 r!15766))))))

(declare-fun b!1003669 () Bool)

(declare-fun res!453066 () Bool)

(assert (=> b!1003669 (=> (not res!453066) (not e!643126))))

(assert (=> b!1003669 (= res!453066 (not call!66890))))

(declare-fun b!1003670 () Bool)

(declare-fun res!453064 () Bool)

(assert (=> b!1003670 (=> res!453064 e!643124)))

(assert (=> b!1003670 (= res!453064 e!643126)))

(declare-fun res!453065 () Bool)

(assert (=> b!1003670 (=> (not res!453065) (not e!643126))))

(assert (=> b!1003670 (= res!453065 lt!352372)))

(declare-fun b!1003671 () Bool)

(assert (=> b!1003671 (= e!643121 (nullable!898 r!15766))))

(declare-fun b!1003672 () Bool)

(assert (=> b!1003672 (= e!643120 (= lt!352372 call!66890))))

(declare-fun b!1003673 () Bool)

(assert (=> b!1003673 (= e!643124 e!643123)))

(declare-fun res!453069 () Bool)

(assert (=> b!1003673 (=> (not res!453069) (not e!643123))))

(assert (=> b!1003673 (= res!453069 (not lt!352372))))

(assert (= (and d!291533 c!165335) b!1003671))

(assert (= (and d!291533 (not c!165335)) b!1003666))

(assert (= (and d!291533 c!165337) b!1003672))

(assert (= (and d!291533 (not c!165337)) b!1003663))

(assert (= (and b!1003663 c!165336) b!1003665))

(assert (= (and b!1003663 (not c!165336)) b!1003661))

(assert (= (and b!1003661 (not res!453070)) b!1003670))

(assert (= (and b!1003670 res!453065) b!1003669))

(assert (= (and b!1003669 res!453066) b!1003667))

(assert (= (and b!1003667 res!453068) b!1003662))

(assert (= (and b!1003670 (not res!453064)) b!1003673))

(assert (= (and b!1003673 res!453069) b!1003664))

(assert (= (and b!1003664 (not res!453067)) b!1003660))

(assert (= (and b!1003660 (not res!453063)) b!1003668))

(assert (= (or b!1003672 b!1003664 b!1003669) bm!66885))

(assert (=> b!1003671 m!1190993))

(assert (=> b!1003662 m!1190979))

(assert (=> d!291533 m!1190943))

(assert (=> d!291533 m!1190929))

(assert (=> b!1003666 m!1190979))

(assert (=> b!1003666 m!1190979))

(declare-fun m!1191007 () Bool)

(assert (=> b!1003666 m!1191007))

(assert (=> b!1003666 m!1190985))

(assert (=> b!1003666 m!1191007))

(assert (=> b!1003666 m!1190985))

(declare-fun m!1191009 () Bool)

(assert (=> b!1003666 m!1191009))

(assert (=> b!1003667 m!1190985))

(assert (=> b!1003667 m!1190985))

(assert (=> b!1003667 m!1190989))

(assert (=> b!1003660 m!1190985))

(assert (=> b!1003660 m!1190985))

(assert (=> b!1003660 m!1190989))

(assert (=> bm!66885 m!1190943))

(assert (=> b!1003668 m!1190979))

(assert (=> b!1003462 d!291533))

(declare-fun d!291535 () Bool)

(assert (=> d!291535 (= (matchR!1322 r!15766 s!10566) (matchRSpec!585 r!15766 s!10566))))

(declare-fun lt!352375 () Unit!15231)

(declare-fun choose!6365 (Regex!2786 List!10016) Unit!15231)

(assert (=> d!291535 (= lt!352375 (choose!6365 r!15766 s!10566))))

(assert (=> d!291535 (validRegex!1255 r!15766)))

(assert (=> d!291535 (= (mainMatchTheorem!585 r!15766 s!10566) lt!352375)))

(declare-fun bs!245171 () Bool)

(assert (= bs!245171 d!291535))

(assert (=> bs!245171 m!1190947))

(assert (=> bs!245171 m!1190945))

(declare-fun m!1191011 () Bool)

(assert (=> bs!245171 m!1191011))

(assert (=> bs!245171 m!1190929))

(assert (=> b!1003462 d!291535))

(declare-fun d!291537 () Bool)

(declare-fun isEmpty!6341 (Option!2325) Bool)

(assert (=> d!291537 (= (isDefined!1967 (findConcatSeparation!431 (reg!3115 r!15766) lt!352350 Nil!10000 s!10566 s!10566)) (not (isEmpty!6341 (findConcatSeparation!431 (reg!3115 r!15766) lt!352350 Nil!10000 s!10566 s!10566))))))

(declare-fun bs!245172 () Bool)

(assert (= bs!245172 d!291537))

(assert (=> bs!245172 m!1190939))

(declare-fun m!1191013 () Bool)

(assert (=> bs!245172 m!1191013))

(assert (=> b!1003461 d!291537))

(declare-fun d!291539 () Bool)

(assert (=> d!291539 (= (isEmpty!6339 s!10566) (is-Nil!10000 s!10566))))

(assert (=> b!1003461 d!291539))

(declare-fun d!291541 () Bool)

(declare-fun choose!6366 (Int) Bool)

(assert (=> d!291541 (= (Exists!519 lambda!35617) (choose!6366 lambda!35617))))

(declare-fun bs!245173 () Bool)

(assert (= bs!245173 d!291541))

(declare-fun m!1191015 () Bool)

(assert (=> bs!245173 m!1191015))

(assert (=> b!1003461 d!291541))

(declare-fun b!1003703 () Bool)

(declare-fun res!453088 () Bool)

(declare-fun e!643148 () Bool)

(assert (=> b!1003703 (=> (not res!453088) (not e!643148))))

(declare-fun lt!352383 () Option!2325)

(declare-fun get!3495 (Option!2325) tuple2!11366)

(assert (=> b!1003703 (= res!453088 (matchR!1322 (reg!3115 r!15766) (_1!6509 (get!3495 lt!352383))))))

(declare-fun b!1003704 () Bool)

(declare-fun lt!352382 () Unit!15231)

(declare-fun lt!352384 () Unit!15231)

(assert (=> b!1003704 (= lt!352382 lt!352384)))

(declare-fun ++!2720 (List!10016 List!10016) List!10016)

(assert (=> b!1003704 (= (++!2720 (++!2720 Nil!10000 (Cons!10000 (h!15401 s!10566) Nil!10000)) (t!101062 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!320 (List!10016 C!6142 List!10016 List!10016) Unit!15231)

(assert (=> b!1003704 (= lt!352384 (lemmaMoveElementToOtherListKeepsConcatEq!320 Nil!10000 (h!15401 s!10566) (t!101062 s!10566) s!10566))))

(declare-fun e!643144 () Option!2325)

(assert (=> b!1003704 (= e!643144 (findConcatSeparation!431 (reg!3115 r!15766) lt!352350 (++!2720 Nil!10000 (Cons!10000 (h!15401 s!10566) Nil!10000)) (t!101062 s!10566) s!10566))))

(declare-fun b!1003705 () Bool)

(declare-fun e!643145 () Bool)

(assert (=> b!1003705 (= e!643145 (not (isDefined!1967 lt!352383)))))

(declare-fun b!1003706 () Bool)

(assert (=> b!1003706 (= e!643144 None!2324)))

(declare-fun b!1003707 () Bool)

(declare-fun res!453087 () Bool)

(assert (=> b!1003707 (=> (not res!453087) (not e!643148))))

(assert (=> b!1003707 (= res!453087 (matchR!1322 lt!352350 (_2!6509 (get!3495 lt!352383))))))

(declare-fun b!1003708 () Bool)

(declare-fun e!643146 () Option!2325)

(assert (=> b!1003708 (= e!643146 e!643144)))

(declare-fun c!165346 () Bool)

(assert (=> b!1003708 (= c!165346 (is-Nil!10000 s!10566))))

(declare-fun d!291543 () Bool)

(assert (=> d!291543 e!643145))

(declare-fun res!453085 () Bool)

(assert (=> d!291543 (=> res!453085 e!643145)))

(assert (=> d!291543 (= res!453085 e!643148)))

(declare-fun res!453084 () Bool)

(assert (=> d!291543 (=> (not res!453084) (not e!643148))))

(assert (=> d!291543 (= res!453084 (isDefined!1967 lt!352383))))

(assert (=> d!291543 (= lt!352383 e!643146)))

(declare-fun c!165347 () Bool)

(declare-fun e!643147 () Bool)

(assert (=> d!291543 (= c!165347 e!643147)))

(declare-fun res!453086 () Bool)

(assert (=> d!291543 (=> (not res!453086) (not e!643147))))

(assert (=> d!291543 (= res!453086 (matchR!1322 (reg!3115 r!15766) Nil!10000))))

(assert (=> d!291543 (validRegex!1255 (reg!3115 r!15766))))

(assert (=> d!291543 (= (findConcatSeparation!431 (reg!3115 r!15766) lt!352350 Nil!10000 s!10566 s!10566) lt!352383)))

(declare-fun b!1003709 () Bool)

(assert (=> b!1003709 (= e!643148 (= (++!2720 (_1!6509 (get!3495 lt!352383)) (_2!6509 (get!3495 lt!352383))) s!10566))))

(declare-fun b!1003710 () Bool)

(assert (=> b!1003710 (= e!643146 (Some!2324 (tuple2!11367 Nil!10000 s!10566)))))

(declare-fun b!1003711 () Bool)

(assert (=> b!1003711 (= e!643147 (matchR!1322 lt!352350 s!10566))))

(assert (= (and d!291543 res!453086) b!1003711))

(assert (= (and d!291543 c!165347) b!1003710))

(assert (= (and d!291543 (not c!165347)) b!1003708))

(assert (= (and b!1003708 c!165346) b!1003706))

(assert (= (and b!1003708 (not c!165346)) b!1003704))

(assert (= (and d!291543 res!453084) b!1003703))

(assert (= (and b!1003703 res!453088) b!1003707))

(assert (= (and b!1003707 res!453087) b!1003709))

(assert (= (and d!291543 (not res!453085)) b!1003705))

(declare-fun m!1191023 () Bool)

(assert (=> b!1003705 m!1191023))

(declare-fun m!1191025 () Bool)

(assert (=> b!1003704 m!1191025))

(assert (=> b!1003704 m!1191025))

(declare-fun m!1191027 () Bool)

(assert (=> b!1003704 m!1191027))

(declare-fun m!1191029 () Bool)

(assert (=> b!1003704 m!1191029))

(assert (=> b!1003704 m!1191025))

(declare-fun m!1191031 () Bool)

(assert (=> b!1003704 m!1191031))

(declare-fun m!1191033 () Bool)

(assert (=> b!1003707 m!1191033))

(declare-fun m!1191035 () Bool)

(assert (=> b!1003707 m!1191035))

(assert (=> b!1003703 m!1191033))

(declare-fun m!1191037 () Bool)

(assert (=> b!1003703 m!1191037))

(assert (=> d!291543 m!1191023))

(declare-fun m!1191039 () Bool)

(assert (=> d!291543 m!1191039))

(declare-fun m!1191041 () Bool)

(assert (=> d!291543 m!1191041))

(assert (=> b!1003709 m!1191033))

(declare-fun m!1191043 () Bool)

(assert (=> b!1003709 m!1191043))

(declare-fun m!1191045 () Bool)

(assert (=> b!1003711 m!1191045))

(assert (=> b!1003461 d!291543))

(declare-fun d!291547 () Bool)

(assert (=> d!291547 (= (Exists!519 lambda!35618) (choose!6366 lambda!35618))))

(declare-fun bs!245177 () Bool)

(assert (= bs!245177 d!291547))

(declare-fun m!1191047 () Bool)

(assert (=> bs!245177 m!1191047))

(assert (=> b!1003461 d!291547))

(declare-fun bs!245178 () Bool)

(declare-fun d!291549 () Bool)

(assert (= bs!245178 (and d!291549 b!1003461)))

(declare-fun lambda!35641 () Int)

(assert (=> bs!245178 (= lambda!35641 lambda!35617)))

(assert (=> bs!245178 (not (= lambda!35641 lambda!35618))))

(declare-fun bs!245179 () Bool)

(assert (= bs!245179 (and d!291549 b!1003659)))

(assert (=> bs!245179 (not (= lambda!35641 lambda!35635))))

(declare-fun bs!245180 () Bool)

(assert (= bs!245180 (and d!291549 b!1003650)))

(assert (=> bs!245180 (not (= lambda!35641 lambda!35636))))

(assert (=> d!291549 true))

(assert (=> d!291549 true))

(assert (=> d!291549 true))

(assert (=> d!291549 (= (isDefined!1967 (findConcatSeparation!431 (reg!3115 r!15766) lt!352350 Nil!10000 s!10566 s!10566)) (Exists!519 lambda!35641))))

(declare-fun lt!352389 () Unit!15231)

(declare-fun choose!6367 (Regex!2786 Regex!2786 List!10016) Unit!15231)

(assert (=> d!291549 (= lt!352389 (choose!6367 (reg!3115 r!15766) lt!352350 s!10566))))

(assert (=> d!291549 (validRegex!1255 (reg!3115 r!15766))))

(assert (=> d!291549 (= (lemmaFindConcatSeparationEquivalentToExists!431 (reg!3115 r!15766) lt!352350 s!10566) lt!352389)))

(declare-fun bs!245181 () Bool)

(assert (= bs!245181 d!291549))

(assert (=> bs!245181 m!1190939))

(declare-fun m!1191049 () Bool)

(assert (=> bs!245181 m!1191049))

(declare-fun m!1191051 () Bool)

(assert (=> bs!245181 m!1191051))

(assert (=> bs!245181 m!1191041))

(assert (=> bs!245181 m!1190939))

(assert (=> bs!245181 m!1190941))

(assert (=> b!1003461 d!291549))

(declare-fun bs!245182 () Bool)

(declare-fun d!291551 () Bool)

(assert (= bs!245182 (and d!291551 d!291549)))

(declare-fun lambda!35646 () Int)

(assert (=> bs!245182 (= (= (Star!2786 (reg!3115 r!15766)) lt!352350) (= lambda!35646 lambda!35641))))

(declare-fun bs!245183 () Bool)

(assert (= bs!245183 (and d!291551 b!1003659)))

(assert (=> bs!245183 (not (= lambda!35646 lambda!35635))))

(declare-fun bs!245184 () Bool)

(assert (= bs!245184 (and d!291551 b!1003650)))

(assert (=> bs!245184 (not (= lambda!35646 lambda!35636))))

(declare-fun bs!245185 () Bool)

(assert (= bs!245185 (and d!291551 b!1003461)))

(assert (=> bs!245185 (= (= (Star!2786 (reg!3115 r!15766)) lt!352350) (= lambda!35646 lambda!35617))))

(assert (=> bs!245185 (not (= lambda!35646 lambda!35618))))

(assert (=> d!291551 true))

(assert (=> d!291551 true))

(declare-fun bs!245186 () Bool)

(assert (= bs!245186 d!291551))

(declare-fun lambda!35647 () Int)

(assert (=> bs!245186 (not (= lambda!35647 lambda!35646))))

(assert (=> bs!245182 (not (= lambda!35647 lambda!35641))))

(assert (=> bs!245183 (= (= (Star!2786 (reg!3115 r!15766)) r!15766) (= lambda!35647 lambda!35635))))

(assert (=> bs!245184 (not (= lambda!35647 lambda!35636))))

(assert (=> bs!245185 (not (= lambda!35647 lambda!35617))))

(assert (=> bs!245185 (= (= (Star!2786 (reg!3115 r!15766)) lt!352350) (= lambda!35647 lambda!35618))))

(assert (=> d!291551 true))

(assert (=> d!291551 true))

(assert (=> d!291551 (= (Exists!519 lambda!35646) (Exists!519 lambda!35647))))

(declare-fun lt!352393 () Unit!15231)

(declare-fun choose!6368 (Regex!2786 List!10016) Unit!15231)

(assert (=> d!291551 (= lt!352393 (choose!6368 (reg!3115 r!15766) s!10566))))

(assert (=> d!291551 (validRegex!1255 (reg!3115 r!15766))))

(assert (=> d!291551 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!157 (reg!3115 r!15766) s!10566) lt!352393)))

(declare-fun m!1191065 () Bool)

(assert (=> bs!245186 m!1191065))

(declare-fun m!1191067 () Bool)

(assert (=> bs!245186 m!1191067))

(declare-fun m!1191069 () Bool)

(assert (=> bs!245186 m!1191069))

(assert (=> bs!245186 m!1191041))

(assert (=> b!1003461 d!291551))

(declare-fun b!1003786 () Bool)

(declare-fun e!643195 () Bool)

(declare-fun call!66903 () Bool)

(assert (=> b!1003786 (= e!643195 call!66903)))

(declare-fun b!1003787 () Bool)

(declare-fun e!643190 () Bool)

(declare-fun e!643196 () Bool)

(assert (=> b!1003787 (= e!643190 e!643196)))

(declare-fun c!165361 () Bool)

(assert (=> b!1003787 (= c!165361 (is-Star!2786 r!15766))))

(declare-fun b!1003788 () Bool)

(declare-fun e!643192 () Bool)

(declare-fun call!66902 () Bool)

(assert (=> b!1003788 (= e!643192 call!66902)))

(declare-fun b!1003789 () Bool)

(declare-fun e!643191 () Bool)

(declare-fun e!643193 () Bool)

(assert (=> b!1003789 (= e!643191 e!643193)))

(declare-fun res!453138 () Bool)

(assert (=> b!1003789 (=> (not res!453138) (not e!643193))))

(declare-fun call!66904 () Bool)

(assert (=> b!1003789 (= res!453138 call!66904)))

(declare-fun d!291555 () Bool)

(declare-fun res!453141 () Bool)

(assert (=> d!291555 (=> res!453141 e!643190)))

(assert (=> d!291555 (= res!453141 (is-ElementMatch!2786 r!15766))))

(assert (=> d!291555 (= (validRegex!1255 r!15766) e!643190)))

(declare-fun b!1003790 () Bool)

(assert (=> b!1003790 (= e!643196 e!643195)))

(declare-fun res!453140 () Bool)

(assert (=> b!1003790 (= res!453140 (not (nullable!898 (reg!3115 r!15766))))))

(assert (=> b!1003790 (=> (not res!453140) (not e!643195))))

(declare-fun c!165362 () Bool)

(declare-fun bm!66897 () Bool)

(assert (=> bm!66897 (= call!66903 (validRegex!1255 (ite c!165361 (reg!3115 r!15766) (ite c!165362 (regOne!6085 r!15766) (regOne!6084 r!15766)))))))

(declare-fun b!1003791 () Bool)

(declare-fun res!453139 () Bool)

(assert (=> b!1003791 (=> res!453139 e!643191)))

(assert (=> b!1003791 (= res!453139 (not (is-Concat!4619 r!15766)))))

(declare-fun e!643194 () Bool)

(assert (=> b!1003791 (= e!643194 e!643191)))

(declare-fun bm!66898 () Bool)

(assert (=> bm!66898 (= call!66904 call!66903)))

(declare-fun b!1003792 () Bool)

(assert (=> b!1003792 (= e!643196 e!643194)))

(assert (=> b!1003792 (= c!165362 (is-Union!2786 r!15766))))

(declare-fun b!1003793 () Bool)

(assert (=> b!1003793 (= e!643193 call!66902)))

(declare-fun b!1003794 () Bool)

(declare-fun res!453137 () Bool)

(assert (=> b!1003794 (=> (not res!453137) (not e!643192))))

(assert (=> b!1003794 (= res!453137 call!66904)))

(assert (=> b!1003794 (= e!643194 e!643192)))

(declare-fun bm!66899 () Bool)

(assert (=> bm!66899 (= call!66902 (validRegex!1255 (ite c!165362 (regTwo!6085 r!15766) (regTwo!6084 r!15766))))))

(assert (= (and d!291555 (not res!453141)) b!1003787))

(assert (= (and b!1003787 c!165361) b!1003790))

(assert (= (and b!1003787 (not c!165361)) b!1003792))

(assert (= (and b!1003790 res!453140) b!1003786))

(assert (= (and b!1003792 c!165362) b!1003794))

(assert (= (and b!1003792 (not c!165362)) b!1003791))

(assert (= (and b!1003794 res!453137) b!1003788))

(assert (= (and b!1003791 (not res!453139)) b!1003789))

(assert (= (and b!1003789 res!453138) b!1003793))

(assert (= (or b!1003788 b!1003793) bm!66899))

(assert (= (or b!1003794 b!1003789) bm!66898))

(assert (= (or b!1003786 bm!66898) bm!66897))

(declare-fun m!1191071 () Bool)

(assert (=> b!1003790 m!1191071))

(declare-fun m!1191073 () Bool)

(assert (=> bm!66897 m!1191073))

(declare-fun m!1191075 () Bool)

(assert (=> bm!66899 m!1191075))

(assert (=> start!88064 d!291555))

(declare-fun b!1003808 () Bool)

(declare-fun e!643199 () Bool)

(declare-fun tp!305572 () Bool)

(declare-fun tp!305575 () Bool)

(assert (=> b!1003808 (= e!643199 (and tp!305572 tp!305575))))

(assert (=> b!1003460 (= tp!305541 e!643199)))

(declare-fun b!1003807 () Bool)

(declare-fun tp!305574 () Bool)

(assert (=> b!1003807 (= e!643199 tp!305574)))

(declare-fun b!1003805 () Bool)

(assert (=> b!1003805 (= e!643199 tp_is_empty!5215)))

(declare-fun b!1003806 () Bool)

(declare-fun tp!305573 () Bool)

(declare-fun tp!305571 () Bool)

(assert (=> b!1003806 (= e!643199 (and tp!305573 tp!305571))))

(assert (= (and b!1003460 (is-ElementMatch!2786 (reg!3115 r!15766))) b!1003805))

(assert (= (and b!1003460 (is-Concat!4619 (reg!3115 r!15766))) b!1003806))

(assert (= (and b!1003460 (is-Star!2786 (reg!3115 r!15766))) b!1003807))

(assert (= (and b!1003460 (is-Union!2786 (reg!3115 r!15766))) b!1003808))

(declare-fun b!1003813 () Bool)

(declare-fun e!643202 () Bool)

(declare-fun tp!305578 () Bool)

(assert (=> b!1003813 (= e!643202 (and tp_is_empty!5215 tp!305578))))

(assert (=> b!1003459 (= tp!305538 e!643202)))

(assert (= (and b!1003459 (is-Cons!10000 (t!101062 s!10566))) b!1003813))

(declare-fun b!1003817 () Bool)

(declare-fun e!643203 () Bool)

(declare-fun tp!305580 () Bool)

(declare-fun tp!305583 () Bool)

(assert (=> b!1003817 (= e!643203 (and tp!305580 tp!305583))))

(assert (=> b!1003463 (= tp!305539 e!643203)))

(declare-fun b!1003816 () Bool)

(declare-fun tp!305582 () Bool)

(assert (=> b!1003816 (= e!643203 tp!305582)))

(declare-fun b!1003814 () Bool)

(assert (=> b!1003814 (= e!643203 tp_is_empty!5215)))

(declare-fun b!1003815 () Bool)

(declare-fun tp!305581 () Bool)

(declare-fun tp!305579 () Bool)

(assert (=> b!1003815 (= e!643203 (and tp!305581 tp!305579))))

(assert (= (and b!1003463 (is-ElementMatch!2786 (regOne!6084 r!15766))) b!1003814))

(assert (= (and b!1003463 (is-Concat!4619 (regOne!6084 r!15766))) b!1003815))

(assert (= (and b!1003463 (is-Star!2786 (regOne!6084 r!15766))) b!1003816))

(assert (= (and b!1003463 (is-Union!2786 (regOne!6084 r!15766))) b!1003817))

(declare-fun b!1003821 () Bool)

(declare-fun e!643204 () Bool)

(declare-fun tp!305585 () Bool)

(declare-fun tp!305588 () Bool)

(assert (=> b!1003821 (= e!643204 (and tp!305585 tp!305588))))

(assert (=> b!1003463 (= tp!305540 e!643204)))

(declare-fun b!1003820 () Bool)

(declare-fun tp!305587 () Bool)

(assert (=> b!1003820 (= e!643204 tp!305587)))

(declare-fun b!1003818 () Bool)

(assert (=> b!1003818 (= e!643204 tp_is_empty!5215)))

(declare-fun b!1003819 () Bool)

(declare-fun tp!305586 () Bool)

(declare-fun tp!305584 () Bool)

(assert (=> b!1003819 (= e!643204 (and tp!305586 tp!305584))))

(assert (= (and b!1003463 (is-ElementMatch!2786 (regTwo!6084 r!15766))) b!1003818))

(assert (= (and b!1003463 (is-Concat!4619 (regTwo!6084 r!15766))) b!1003819))

(assert (= (and b!1003463 (is-Star!2786 (regTwo!6084 r!15766))) b!1003820))

(assert (= (and b!1003463 (is-Union!2786 (regTwo!6084 r!15766))) b!1003821))

(declare-fun b!1003825 () Bool)

(declare-fun e!643205 () Bool)

(declare-fun tp!305590 () Bool)

(declare-fun tp!305593 () Bool)

(assert (=> b!1003825 (= e!643205 (and tp!305590 tp!305593))))

(assert (=> b!1003458 (= tp!305537 e!643205)))

(declare-fun b!1003824 () Bool)

(declare-fun tp!305592 () Bool)

(assert (=> b!1003824 (= e!643205 tp!305592)))

(declare-fun b!1003822 () Bool)

(assert (=> b!1003822 (= e!643205 tp_is_empty!5215)))

(declare-fun b!1003823 () Bool)

(declare-fun tp!305591 () Bool)

(declare-fun tp!305589 () Bool)

(assert (=> b!1003823 (= e!643205 (and tp!305591 tp!305589))))

(assert (= (and b!1003458 (is-ElementMatch!2786 (regOne!6085 r!15766))) b!1003822))

(assert (= (and b!1003458 (is-Concat!4619 (regOne!6085 r!15766))) b!1003823))

(assert (= (and b!1003458 (is-Star!2786 (regOne!6085 r!15766))) b!1003824))

(assert (= (and b!1003458 (is-Union!2786 (regOne!6085 r!15766))) b!1003825))

(declare-fun b!1003829 () Bool)

(declare-fun e!643206 () Bool)

(declare-fun tp!305595 () Bool)

(declare-fun tp!305598 () Bool)

(assert (=> b!1003829 (= e!643206 (and tp!305595 tp!305598))))

(assert (=> b!1003458 (= tp!305542 e!643206)))

(declare-fun b!1003828 () Bool)

(declare-fun tp!305597 () Bool)

(assert (=> b!1003828 (= e!643206 tp!305597)))

(declare-fun b!1003826 () Bool)

(assert (=> b!1003826 (= e!643206 tp_is_empty!5215)))

(declare-fun b!1003827 () Bool)

(declare-fun tp!305596 () Bool)

(declare-fun tp!305594 () Bool)

(assert (=> b!1003827 (= e!643206 (and tp!305596 tp!305594))))

(assert (= (and b!1003458 (is-ElementMatch!2786 (regTwo!6085 r!15766))) b!1003826))

(assert (= (and b!1003458 (is-Concat!4619 (regTwo!6085 r!15766))) b!1003827))

(assert (= (and b!1003458 (is-Star!2786 (regTwo!6085 r!15766))) b!1003828))

(assert (= (and b!1003458 (is-Union!2786 (regTwo!6085 r!15766))) b!1003829))

(push 1)

(assert (not b!1003705))

(assert (not b!1003667))

(assert (not d!291529))

(assert (not b!1003816))

(assert (not bm!66859))

(assert (not bm!66873))

(assert (not b!1003544))

(assert (not b!1003540))

(assert tp_is_empty!5215)

(assert (not b!1003654))

(assert (not d!291547))

(assert (not bm!66881))

(assert (not b!1003825))

(assert (not d!291537))

(assert (not b!1003538))

(assert (not b!1003703))

(assert (not b!1003828))

(assert (not b!1003546))

(assert (not b!1003817))

(assert (not b!1003821))

(assert (not bm!66897))

(assert (not bm!66882))

(assert (not b!1003545))

(assert (not b!1003549))

(assert (not b!1003671))

(assert (not b!1003790))

(assert (not b!1003829))

(assert (not d!291525))

(assert (not bm!66899))

(assert (not d!291533))

(assert (not d!291551))

(assert (not b!1003668))

(assert (not d!291543))

(assert (not b!1003824))

(assert (not b!1003660))

(assert (not d!291541))

(assert (not b!1003707))

(assert (not b!1003815))

(assert (not b!1003819))

(assert (not d!291535))

(assert (not b!1003666))

(assert (not b!1003580))

(assert (not b!1003704))

(assert (not b!1003656))

(assert (not d!291549))

(assert (not b!1003711))

(assert (not b!1003662))

(assert (not b!1003823))

(assert (not b!1003813))

(assert (not b!1003827))

(assert (not b!1003808))

(assert (not b!1003820))

(assert (not b!1003806))

(assert (not bm!66885))

(assert (not b!1003807))

(assert (not bm!66872))

(assert (not b!1003709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

