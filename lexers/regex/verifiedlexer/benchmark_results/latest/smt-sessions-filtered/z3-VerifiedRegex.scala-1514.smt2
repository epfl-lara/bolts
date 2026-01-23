; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80094 () Bool)

(assert start!80094)

(declare-fun b!886788 () Bool)

(assert (=> b!886788 true))

(assert (=> b!886788 true))

(declare-fun lambda!27448 () Int)

(declare-fun lambda!27447 () Int)

(assert (=> b!886788 (not (= lambda!27448 lambda!27447))))

(assert (=> b!886788 true))

(assert (=> b!886788 true))

(declare-fun b!886780 () Bool)

(declare-fun e!581421 () Bool)

(declare-fun tp!279527 () Bool)

(assert (=> b!886780 (= e!581421 tp!279527)))

(declare-fun b!886781 () Bool)

(declare-fun tp_is_empty!4217 () Bool)

(assert (=> b!886781 (= e!581421 tp_is_empty!4217)))

(declare-fun b!886782 () Bool)

(declare-fun e!581427 () Bool)

(declare-datatypes ((C!5144 0))(
  ( (C!5145 (val!2820 Int)) )
))
(declare-datatypes ((Regex!2287 0))(
  ( (ElementMatch!2287 (c!143370 C!5144)) (Concat!4120 (regOne!5086 Regex!2287) (regTwo!5086 Regex!2287)) (EmptyExpr!2287) (Star!2287 (reg!2616 Regex!2287)) (EmptyLang!2287) (Union!2287 (regOne!5087 Regex!2287) (regTwo!5087 Regex!2287)) )
))
(declare-fun r!15766 () Regex!2287)

(declare-fun validRegex!756 (Regex!2287) Bool)

(declare-fun removeUselessConcat!30 (Regex!2287) Regex!2287)

(assert (=> b!886782 (= e!581427 (validRegex!756 (removeUselessConcat!30 r!15766)))))

(declare-fun lt!331762 () Regex!2287)

(declare-fun lt!331760 () Regex!2287)

(declare-datatypes ((List!9517 0))(
  ( (Nil!9501) (Cons!9501 (h!14902 C!5144) (t!100563 List!9517)) )
))
(declare-datatypes ((tuple2!10660 0))(
  ( (tuple2!10661 (_1!6156 List!9517) (_2!6156 List!9517)) )
))
(declare-fun lt!331759 () tuple2!10660)

(declare-fun matchR!825 (Regex!2287 List!9517) Bool)

(declare-fun ++!2486 (List!9517 List!9517) List!9517)

(assert (=> b!886782 (matchR!825 (Concat!4120 lt!331762 lt!331760) (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759)))))

(declare-datatypes ((Unit!14153 0))(
  ( (Unit!14154) )
))
(declare-fun lt!331761 () Unit!14153)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!4 (Regex!2287 Regex!2287 List!9517 List!9517) Unit!14153)

(assert (=> b!886782 (= lt!331761 (lemmaTwoRegexMatchThenConcatMatchesConcatString!4 lt!331762 lt!331760 (_1!6156 lt!331759) (_2!6156 lt!331759)))))

(declare-fun b!886783 () Bool)

(declare-fun tp!279525 () Bool)

(declare-fun tp!279526 () Bool)

(assert (=> b!886783 (= e!581421 (and tp!279525 tp!279526))))

(declare-fun b!886784 () Bool)

(declare-fun res!403370 () Bool)

(declare-fun e!581422 () Bool)

(assert (=> b!886784 (=> res!403370 e!581422)))

(assert (=> b!886784 (= res!403370 (not (matchR!825 (regTwo!5086 r!15766) (_2!6156 lt!331759))))))

(declare-fun b!886785 () Bool)

(declare-fun res!403366 () Bool)

(assert (=> b!886785 (=> res!403366 e!581427)))

(assert (=> b!886785 (= res!403366 (not (validRegex!756 lt!331760)))))

(declare-fun res!403365 () Bool)

(declare-fun e!581426 () Bool)

(assert (=> start!80094 (=> (not res!403365) (not e!581426))))

(assert (=> start!80094 (= res!403365 (validRegex!756 r!15766))))

(assert (=> start!80094 e!581426))

(assert (=> start!80094 e!581421))

(declare-fun e!581425 () Bool)

(assert (=> start!80094 e!581425))

(declare-fun b!886786 () Bool)

(assert (=> b!886786 (= e!581422 e!581427)))

(declare-fun res!403364 () Bool)

(assert (=> b!886786 (=> res!403364 e!581427)))

(assert (=> b!886786 (= res!403364 (not (validRegex!756 lt!331762)))))

(assert (=> b!886786 (matchR!825 lt!331760 (_2!6156 lt!331759))))

(assert (=> b!886786 (= lt!331760 (removeUselessConcat!30 (regTwo!5086 r!15766)))))

(declare-fun lt!331763 () Unit!14153)

(declare-fun lemmaRemoveUselessConcatSound!24 (Regex!2287 List!9517) Unit!14153)

(assert (=> b!886786 (= lt!331763 (lemmaRemoveUselessConcatSound!24 (regTwo!5086 r!15766) (_2!6156 lt!331759)))))

(assert (=> b!886786 (matchR!825 lt!331762 (_1!6156 lt!331759))))

(assert (=> b!886786 (= lt!331762 (removeUselessConcat!30 (regOne!5086 r!15766)))))

(declare-fun lt!331758 () Unit!14153)

(assert (=> b!886786 (= lt!331758 (lemmaRemoveUselessConcatSound!24 (regOne!5086 r!15766) (_1!6156 lt!331759)))))

(declare-fun b!886787 () Bool)

(declare-fun tp!279524 () Bool)

(declare-fun tp!279528 () Bool)

(assert (=> b!886787 (= e!581421 (and tp!279524 tp!279528))))

(declare-fun e!581424 () Bool)

(declare-fun e!581423 () Bool)

(assert (=> b!886788 (= e!581424 e!581423)))

(declare-fun res!403369 () Bool)

(assert (=> b!886788 (=> res!403369 e!581423)))

(declare-fun s!10566 () List!9517)

(declare-fun isEmpty!5709 (List!9517) Bool)

(assert (=> b!886788 (= res!403369 (isEmpty!5709 s!10566))))

(declare-fun Exists!82 (Int) Bool)

(assert (=> b!886788 (= (Exists!82 lambda!27447) (Exists!82 lambda!27448))))

(declare-fun lt!331766 () Unit!14153)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!72 (Regex!2287 Regex!2287 List!9517) Unit!14153)

(assert (=> b!886788 (= lt!331766 (lemmaExistCutMatchRandMatchRSpecEquivalent!72 (regOne!5086 r!15766) (regTwo!5086 r!15766) s!10566))))

(declare-datatypes ((Option!1972 0))(
  ( (None!1971) (Some!1971 (v!19388 tuple2!10660)) )
))
(declare-fun lt!331757 () Option!1972)

(declare-fun isDefined!1614 (Option!1972) Bool)

(assert (=> b!886788 (= (isDefined!1614 lt!331757) (Exists!82 lambda!27447))))

(declare-fun findConcatSeparation!78 (Regex!2287 Regex!2287 List!9517 List!9517 List!9517) Option!1972)

(assert (=> b!886788 (= lt!331757 (findConcatSeparation!78 (regOne!5086 r!15766) (regTwo!5086 r!15766) Nil!9501 s!10566 s!10566))))

(declare-fun lt!331764 () Unit!14153)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!78 (Regex!2287 Regex!2287 List!9517) Unit!14153)

(assert (=> b!886788 (= lt!331764 (lemmaFindConcatSeparationEquivalentToExists!78 (regOne!5086 r!15766) (regTwo!5086 r!15766) s!10566))))

(declare-fun b!886789 () Bool)

(assert (=> b!886789 (= e!581426 (not e!581424))))

(declare-fun res!403367 () Bool)

(assert (=> b!886789 (=> res!403367 e!581424)))

(declare-fun lt!331765 () Bool)

(get-info :version)

(assert (=> b!886789 (= res!403367 (or (not lt!331765) (and ((_ is Concat!4120) r!15766) ((_ is EmptyExpr!2287) (regOne!5086 r!15766))) (and ((_ is Concat!4120) r!15766) ((_ is EmptyExpr!2287) (regTwo!5086 r!15766))) (not ((_ is Concat!4120) r!15766))))))

(declare-fun matchRSpec!88 (Regex!2287 List!9517) Bool)

(assert (=> b!886789 (= lt!331765 (matchRSpec!88 r!15766 s!10566))))

(assert (=> b!886789 (= lt!331765 (matchR!825 r!15766 s!10566))))

(declare-fun lt!331767 () Unit!14153)

(declare-fun mainMatchTheorem!88 (Regex!2287 List!9517) Unit!14153)

(assert (=> b!886789 (= lt!331767 (mainMatchTheorem!88 r!15766 s!10566))))

(declare-fun b!886790 () Bool)

(assert (=> b!886790 (= e!581423 e!581422)))

(declare-fun res!403368 () Bool)

(assert (=> b!886790 (=> res!403368 e!581422)))

(assert (=> b!886790 (= res!403368 (not (matchR!825 (regOne!5086 r!15766) (_1!6156 lt!331759))))))

(declare-fun get!2980 (Option!1972) tuple2!10660)

(assert (=> b!886790 (= lt!331759 (get!2980 lt!331757))))

(declare-fun b!886791 () Bool)

(declare-fun tp!279523 () Bool)

(assert (=> b!886791 (= e!581425 (and tp_is_empty!4217 tp!279523))))

(assert (= (and start!80094 res!403365) b!886789))

(assert (= (and b!886789 (not res!403367)) b!886788))

(assert (= (and b!886788 (not res!403369)) b!886790))

(assert (= (and b!886790 (not res!403368)) b!886784))

(assert (= (and b!886784 (not res!403370)) b!886786))

(assert (= (and b!886786 (not res!403364)) b!886785))

(assert (= (and b!886785 (not res!403366)) b!886782))

(assert (= (and start!80094 ((_ is ElementMatch!2287) r!15766)) b!886781))

(assert (= (and start!80094 ((_ is Concat!4120) r!15766)) b!886787))

(assert (= (and start!80094 ((_ is Star!2287) r!15766)) b!886780))

(assert (= (and start!80094 ((_ is Union!2287) r!15766)) b!886783))

(assert (= (and start!80094 ((_ is Cons!9501) s!10566)) b!886791))

(declare-fun m!1132227 () Bool)

(assert (=> b!886788 m!1132227))

(declare-fun m!1132229 () Bool)

(assert (=> b!886788 m!1132229))

(assert (=> b!886788 m!1132229))

(declare-fun m!1132231 () Bool)

(assert (=> b!886788 m!1132231))

(declare-fun m!1132233 () Bool)

(assert (=> b!886788 m!1132233))

(declare-fun m!1132235 () Bool)

(assert (=> b!886788 m!1132235))

(declare-fun m!1132237 () Bool)

(assert (=> b!886788 m!1132237))

(declare-fun m!1132239 () Bool)

(assert (=> b!886788 m!1132239))

(declare-fun m!1132241 () Bool)

(assert (=> b!886789 m!1132241))

(declare-fun m!1132243 () Bool)

(assert (=> b!886789 m!1132243))

(declare-fun m!1132245 () Bool)

(assert (=> b!886789 m!1132245))

(declare-fun m!1132247 () Bool)

(assert (=> b!886782 m!1132247))

(declare-fun m!1132249 () Bool)

(assert (=> b!886782 m!1132249))

(assert (=> b!886782 m!1132247))

(declare-fun m!1132251 () Bool)

(assert (=> b!886782 m!1132251))

(declare-fun m!1132253 () Bool)

(assert (=> b!886782 m!1132253))

(assert (=> b!886782 m!1132253))

(declare-fun m!1132255 () Bool)

(assert (=> b!886782 m!1132255))

(declare-fun m!1132257 () Bool)

(assert (=> b!886784 m!1132257))

(declare-fun m!1132259 () Bool)

(assert (=> b!886790 m!1132259))

(declare-fun m!1132261 () Bool)

(assert (=> b!886790 m!1132261))

(declare-fun m!1132263 () Bool)

(assert (=> start!80094 m!1132263))

(declare-fun m!1132265 () Bool)

(assert (=> b!886786 m!1132265))

(declare-fun m!1132267 () Bool)

(assert (=> b!886786 m!1132267))

(declare-fun m!1132269 () Bool)

(assert (=> b!886786 m!1132269))

(declare-fun m!1132271 () Bool)

(assert (=> b!886786 m!1132271))

(declare-fun m!1132273 () Bool)

(assert (=> b!886786 m!1132273))

(declare-fun m!1132275 () Bool)

(assert (=> b!886786 m!1132275))

(declare-fun m!1132277 () Bool)

(assert (=> b!886786 m!1132277))

(declare-fun m!1132279 () Bool)

(assert (=> b!886785 m!1132279))

(check-sat tp_is_empty!4217 (not b!886780) (not start!80094) (not b!886784) (not b!886787) (not b!886785) (not b!886782) (not b!886788) (not b!886789) (not b!886791) (not b!886786) (not b!886790) (not b!886783))
(check-sat)
(get-model)

(declare-fun bm!52021 () Bool)

(declare-fun call!52027 () Bool)

(declare-fun call!52026 () Bool)

(assert (=> bm!52021 (= call!52027 call!52026)))

(declare-fun b!886853 () Bool)

(declare-fun e!581465 () Bool)

(declare-fun e!581464 () Bool)

(assert (=> b!886853 (= e!581465 e!581464)))

(declare-fun res!403409 () Bool)

(assert (=> b!886853 (=> (not res!403409) (not e!581464))))

(assert (=> b!886853 (= res!403409 call!52027)))

(declare-fun b!886854 () Bool)

(declare-fun e!581466 () Bool)

(declare-fun e!581468 () Bool)

(assert (=> b!886854 (= e!581466 e!581468)))

(declare-fun res!403411 () Bool)

(declare-fun nullable!589 (Regex!2287) Bool)

(assert (=> b!886854 (= res!403411 (not (nullable!589 (reg!2616 lt!331760))))))

(assert (=> b!886854 (=> (not res!403411) (not e!581468))))

(declare-fun b!886855 () Bool)

(declare-fun call!52028 () Bool)

(assert (=> b!886855 (= e!581464 call!52028)))

(declare-fun b!886856 () Bool)

(declare-fun e!581467 () Bool)

(assert (=> b!886856 (= e!581467 e!581466)))

(declare-fun c!143382 () Bool)

(assert (=> b!886856 (= c!143382 ((_ is Star!2287) lt!331760))))

(declare-fun b!886857 () Bool)

(declare-fun e!581463 () Bool)

(assert (=> b!886857 (= e!581463 call!52028)))

(declare-fun bm!52022 () Bool)

(declare-fun c!143381 () Bool)

(assert (=> bm!52022 (= call!52028 (validRegex!756 (ite c!143381 (regTwo!5087 lt!331760) (regTwo!5086 lt!331760))))))

(declare-fun b!886858 () Bool)

(declare-fun res!403408 () Bool)

(assert (=> b!886858 (=> res!403408 e!581465)))

(assert (=> b!886858 (= res!403408 (not ((_ is Concat!4120) lt!331760)))))

(declare-fun e!581469 () Bool)

(assert (=> b!886858 (= e!581469 e!581465)))

(declare-fun bm!52023 () Bool)

(assert (=> bm!52023 (= call!52026 (validRegex!756 (ite c!143382 (reg!2616 lt!331760) (ite c!143381 (regOne!5087 lt!331760) (regOne!5086 lt!331760)))))))

(declare-fun b!886860 () Bool)

(assert (=> b!886860 (= e!581466 e!581469)))

(assert (=> b!886860 (= c!143381 ((_ is Union!2287) lt!331760))))

(declare-fun b!886861 () Bool)

(declare-fun res!403412 () Bool)

(assert (=> b!886861 (=> (not res!403412) (not e!581463))))

(assert (=> b!886861 (= res!403412 call!52027)))

(assert (=> b!886861 (= e!581469 e!581463)))

(declare-fun d!276977 () Bool)

(declare-fun res!403410 () Bool)

(assert (=> d!276977 (=> res!403410 e!581467)))

(assert (=> d!276977 (= res!403410 ((_ is ElementMatch!2287) lt!331760))))

(assert (=> d!276977 (= (validRegex!756 lt!331760) e!581467)))

(declare-fun b!886859 () Bool)

(assert (=> b!886859 (= e!581468 call!52026)))

(assert (= (and d!276977 (not res!403410)) b!886856))

(assert (= (and b!886856 c!143382) b!886854))

(assert (= (and b!886856 (not c!143382)) b!886860))

(assert (= (and b!886854 res!403411) b!886859))

(assert (= (and b!886860 c!143381) b!886861))

(assert (= (and b!886860 (not c!143381)) b!886858))

(assert (= (and b!886861 res!403412) b!886857))

(assert (= (and b!886858 (not res!403408)) b!886853))

(assert (= (and b!886853 res!403409) b!886855))

(assert (= (or b!886857 b!886855) bm!52022))

(assert (= (or b!886861 b!886853) bm!52021))

(assert (= (or b!886859 bm!52021) bm!52023))

(declare-fun m!1132317 () Bool)

(assert (=> b!886854 m!1132317))

(declare-fun m!1132319 () Bool)

(assert (=> bm!52022 m!1132319))

(declare-fun m!1132321 () Bool)

(assert (=> bm!52023 m!1132321))

(assert (=> b!886785 d!276977))

(declare-fun b!886965 () Bool)

(declare-fun e!581529 () Bool)

(declare-fun e!581526 () Bool)

(assert (=> b!886965 (= e!581529 e!581526)))

(declare-fun res!403461 () Bool)

(assert (=> b!886965 (=> (not res!403461) (not e!581526))))

(declare-fun lt!331794 () Bool)

(assert (=> b!886965 (= res!403461 (not lt!331794))))

(declare-fun b!886966 () Bool)

(declare-fun e!581527 () Bool)

(declare-fun derivativeStep!401 (Regex!2287 C!5144) Regex!2287)

(declare-fun head!1554 (List!9517) C!5144)

(declare-fun tail!1116 (List!9517) List!9517)

(assert (=> b!886966 (= e!581527 (matchR!825 (derivativeStep!401 (regOne!5086 r!15766) (head!1554 (_1!6156 lt!331759))) (tail!1116 (_1!6156 lt!331759))))))

(declare-fun b!886967 () Bool)

(declare-fun res!403456 () Bool)

(declare-fun e!581525 () Bool)

(assert (=> b!886967 (=> (not res!403456) (not e!581525))))

(assert (=> b!886967 (= res!403456 (isEmpty!5709 (tail!1116 (_1!6156 lt!331759))))))

(declare-fun d!276983 () Bool)

(declare-fun e!581528 () Bool)

(assert (=> d!276983 e!581528))

(declare-fun c!143414 () Bool)

(assert (=> d!276983 (= c!143414 ((_ is EmptyExpr!2287) (regOne!5086 r!15766)))))

(assert (=> d!276983 (= lt!331794 e!581527)))

(declare-fun c!143413 () Bool)

(assert (=> d!276983 (= c!143413 (isEmpty!5709 (_1!6156 lt!331759)))))

(assert (=> d!276983 (validRegex!756 (regOne!5086 r!15766))))

(assert (=> d!276983 (= (matchR!825 (regOne!5086 r!15766) (_1!6156 lt!331759)) lt!331794)))

(declare-fun b!886968 () Bool)

(declare-fun e!581524 () Bool)

(assert (=> b!886968 (= e!581526 e!581524)))

(declare-fun res!403462 () Bool)

(assert (=> b!886968 (=> res!403462 e!581524)))

(declare-fun call!52049 () Bool)

(assert (=> b!886968 (= res!403462 call!52049)))

(declare-fun b!886969 () Bool)

(declare-fun res!403459 () Bool)

(assert (=> b!886969 (=> res!403459 e!581524)))

(assert (=> b!886969 (= res!403459 (not (isEmpty!5709 (tail!1116 (_1!6156 lt!331759)))))))

(declare-fun b!886970 () Bool)

(assert (=> b!886970 (= e!581527 (nullable!589 (regOne!5086 r!15766)))))

(declare-fun bm!52044 () Bool)

(assert (=> bm!52044 (= call!52049 (isEmpty!5709 (_1!6156 lt!331759)))))

(declare-fun b!886971 () Bool)

(declare-fun res!403458 () Bool)

(assert (=> b!886971 (=> res!403458 e!581529)))

(assert (=> b!886971 (= res!403458 (not ((_ is ElementMatch!2287) (regOne!5086 r!15766))))))

(declare-fun e!581523 () Bool)

(assert (=> b!886971 (= e!581523 e!581529)))

(declare-fun b!886972 () Bool)

(assert (=> b!886972 (= e!581523 (not lt!331794))))

(declare-fun b!886973 () Bool)

(assert (=> b!886973 (= e!581525 (= (head!1554 (_1!6156 lt!331759)) (c!143370 (regOne!5086 r!15766))))))

(declare-fun b!886974 () Bool)

(declare-fun res!403457 () Bool)

(assert (=> b!886974 (=> (not res!403457) (not e!581525))))

(assert (=> b!886974 (= res!403457 (not call!52049))))

(declare-fun b!886975 () Bool)

(assert (=> b!886975 (= e!581528 (= lt!331794 call!52049))))

(declare-fun b!886976 () Bool)

(assert (=> b!886976 (= e!581528 e!581523)))

(declare-fun c!143415 () Bool)

(assert (=> b!886976 (= c!143415 ((_ is EmptyLang!2287) (regOne!5086 r!15766)))))

(declare-fun b!886977 () Bool)

(declare-fun res!403460 () Bool)

(assert (=> b!886977 (=> res!403460 e!581529)))

(assert (=> b!886977 (= res!403460 e!581525)))

(declare-fun res!403463 () Bool)

(assert (=> b!886977 (=> (not res!403463) (not e!581525))))

(assert (=> b!886977 (= res!403463 lt!331794)))

(declare-fun b!886978 () Bool)

(assert (=> b!886978 (= e!581524 (not (= (head!1554 (_1!6156 lt!331759)) (c!143370 (regOne!5086 r!15766)))))))

(assert (= (and d!276983 c!143413) b!886970))

(assert (= (and d!276983 (not c!143413)) b!886966))

(assert (= (and d!276983 c!143414) b!886975))

(assert (= (and d!276983 (not c!143414)) b!886976))

(assert (= (and b!886976 c!143415) b!886972))

(assert (= (and b!886976 (not c!143415)) b!886971))

(assert (= (and b!886971 (not res!403458)) b!886977))

(assert (= (and b!886977 res!403463) b!886974))

(assert (= (and b!886974 res!403457) b!886967))

(assert (= (and b!886967 res!403456) b!886973))

(assert (= (and b!886977 (not res!403460)) b!886965))

(assert (= (and b!886965 res!403461) b!886968))

(assert (= (and b!886968 (not res!403462)) b!886969))

(assert (= (and b!886969 (not res!403459)) b!886978))

(assert (= (or b!886975 b!886968 b!886974) bm!52044))

(declare-fun m!1132377 () Bool)

(assert (=> d!276983 m!1132377))

(declare-fun m!1132379 () Bool)

(assert (=> d!276983 m!1132379))

(declare-fun m!1132381 () Bool)

(assert (=> b!886967 m!1132381))

(assert (=> b!886967 m!1132381))

(declare-fun m!1132383 () Bool)

(assert (=> b!886967 m!1132383))

(assert (=> bm!52044 m!1132377))

(declare-fun m!1132385 () Bool)

(assert (=> b!886970 m!1132385))

(declare-fun m!1132387 () Bool)

(assert (=> b!886973 m!1132387))

(assert (=> b!886966 m!1132387))

(assert (=> b!886966 m!1132387))

(declare-fun m!1132397 () Bool)

(assert (=> b!886966 m!1132397))

(assert (=> b!886966 m!1132381))

(assert (=> b!886966 m!1132397))

(assert (=> b!886966 m!1132381))

(declare-fun m!1132401 () Bool)

(assert (=> b!886966 m!1132401))

(assert (=> b!886978 m!1132387))

(assert (=> b!886969 m!1132381))

(assert (=> b!886969 m!1132381))

(assert (=> b!886969 m!1132383))

(assert (=> b!886790 d!276983))

(declare-fun d!276999 () Bool)

(assert (=> d!276999 (= (get!2980 lt!331757) (v!19388 lt!331757))))

(assert (=> b!886790 d!276999))

(declare-fun bm!52051 () Bool)

(declare-fun call!52057 () Bool)

(declare-fun call!52056 () Bool)

(assert (=> bm!52051 (= call!52057 call!52056)))

(declare-fun b!887008 () Bool)

(declare-fun e!581547 () Bool)

(declare-fun e!581546 () Bool)

(assert (=> b!887008 (= e!581547 e!581546)))

(declare-fun res!403476 () Bool)

(assert (=> b!887008 (=> (not res!403476) (not e!581546))))

(assert (=> b!887008 (= res!403476 call!52057)))

(declare-fun b!887009 () Bool)

(declare-fun e!581548 () Bool)

(declare-fun e!581550 () Bool)

(assert (=> b!887009 (= e!581548 e!581550)))

(declare-fun res!403478 () Bool)

(assert (=> b!887009 (= res!403478 (not (nullable!589 (reg!2616 r!15766))))))

(assert (=> b!887009 (=> (not res!403478) (not e!581550))))

(declare-fun b!887011 () Bool)

(declare-fun call!52058 () Bool)

(assert (=> b!887011 (= e!581546 call!52058)))

(declare-fun b!887013 () Bool)

(declare-fun e!581549 () Bool)

(assert (=> b!887013 (= e!581549 e!581548)))

(declare-fun c!143425 () Bool)

(assert (=> b!887013 (= c!143425 ((_ is Star!2287) r!15766))))

(declare-fun b!887014 () Bool)

(declare-fun e!581545 () Bool)

(assert (=> b!887014 (= e!581545 call!52058)))

(declare-fun bm!52052 () Bool)

(declare-fun c!143424 () Bool)

(assert (=> bm!52052 (= call!52058 (validRegex!756 (ite c!143424 (regTwo!5087 r!15766) (regTwo!5086 r!15766))))))

(declare-fun b!887015 () Bool)

(declare-fun res!403475 () Bool)

(assert (=> b!887015 (=> res!403475 e!581547)))

(assert (=> b!887015 (= res!403475 (not ((_ is Concat!4120) r!15766)))))

(declare-fun e!581551 () Bool)

(assert (=> b!887015 (= e!581551 e!581547)))

(declare-fun bm!52053 () Bool)

(assert (=> bm!52053 (= call!52056 (validRegex!756 (ite c!143425 (reg!2616 r!15766) (ite c!143424 (regOne!5087 r!15766) (regOne!5086 r!15766)))))))

(declare-fun b!887017 () Bool)

(assert (=> b!887017 (= e!581548 e!581551)))

(assert (=> b!887017 (= c!143424 ((_ is Union!2287) r!15766))))

(declare-fun b!887018 () Bool)

(declare-fun res!403479 () Bool)

(assert (=> b!887018 (=> (not res!403479) (not e!581545))))

(assert (=> b!887018 (= res!403479 call!52057)))

(assert (=> b!887018 (= e!581551 e!581545)))

(declare-fun d!277001 () Bool)

(declare-fun res!403477 () Bool)

(assert (=> d!277001 (=> res!403477 e!581549)))

(assert (=> d!277001 (= res!403477 ((_ is ElementMatch!2287) r!15766))))

(assert (=> d!277001 (= (validRegex!756 r!15766) e!581549)))

(declare-fun b!887016 () Bool)

(assert (=> b!887016 (= e!581550 call!52056)))

(assert (= (and d!277001 (not res!403477)) b!887013))

(assert (= (and b!887013 c!143425) b!887009))

(assert (= (and b!887013 (not c!143425)) b!887017))

(assert (= (and b!887009 res!403478) b!887016))

(assert (= (and b!887017 c!143424) b!887018))

(assert (= (and b!887017 (not c!143424)) b!887015))

(assert (= (and b!887018 res!403479) b!887014))

(assert (= (and b!887015 (not res!403475)) b!887008))

(assert (= (and b!887008 res!403476) b!887011))

(assert (= (or b!887014 b!887011) bm!52052))

(assert (= (or b!887018 b!887008) bm!52051))

(assert (= (or b!887016 bm!52051) bm!52053))

(declare-fun m!1132403 () Bool)

(assert (=> b!887009 m!1132403))

(declare-fun m!1132405 () Bool)

(assert (=> bm!52052 m!1132405))

(declare-fun m!1132407 () Bool)

(assert (=> bm!52053 m!1132407))

(assert (=> start!80094 d!277001))

(declare-fun b!887031 () Bool)

(declare-fun e!581570 () Bool)

(declare-fun e!581567 () Bool)

(assert (=> b!887031 (= e!581570 e!581567)))

(declare-fun res!403493 () Bool)

(assert (=> b!887031 (=> (not res!403493) (not e!581567))))

(declare-fun lt!331798 () Bool)

(assert (=> b!887031 (= res!403493 (not lt!331798))))

(declare-fun b!887032 () Bool)

(declare-fun e!581568 () Bool)

(assert (=> b!887032 (= e!581568 (matchR!825 (derivativeStep!401 lt!331760 (head!1554 (_2!6156 lt!331759))) (tail!1116 (_2!6156 lt!331759))))))

(declare-fun b!887033 () Bool)

(declare-fun res!403488 () Bool)

(declare-fun e!581566 () Bool)

(assert (=> b!887033 (=> (not res!403488) (not e!581566))))

(assert (=> b!887033 (= res!403488 (isEmpty!5709 (tail!1116 (_2!6156 lt!331759))))))

(declare-fun d!277003 () Bool)

(declare-fun e!581569 () Bool)

(assert (=> d!277003 e!581569))

(declare-fun c!143431 () Bool)

(assert (=> d!277003 (= c!143431 ((_ is EmptyExpr!2287) lt!331760))))

(assert (=> d!277003 (= lt!331798 e!581568)))

(declare-fun c!143430 () Bool)

(assert (=> d!277003 (= c!143430 (isEmpty!5709 (_2!6156 lt!331759)))))

(assert (=> d!277003 (validRegex!756 lt!331760)))

(assert (=> d!277003 (= (matchR!825 lt!331760 (_2!6156 lt!331759)) lt!331798)))

(declare-fun b!887034 () Bool)

(declare-fun e!581565 () Bool)

(assert (=> b!887034 (= e!581567 e!581565)))

(declare-fun res!403494 () Bool)

(assert (=> b!887034 (=> res!403494 e!581565)))

(declare-fun call!52065 () Bool)

(assert (=> b!887034 (= res!403494 call!52065)))

(declare-fun b!887035 () Bool)

(declare-fun res!403491 () Bool)

(assert (=> b!887035 (=> res!403491 e!581565)))

(assert (=> b!887035 (= res!403491 (not (isEmpty!5709 (tail!1116 (_2!6156 lt!331759)))))))

(declare-fun b!887036 () Bool)

(assert (=> b!887036 (= e!581568 (nullable!589 lt!331760))))

(declare-fun bm!52060 () Bool)

(assert (=> bm!52060 (= call!52065 (isEmpty!5709 (_2!6156 lt!331759)))))

(declare-fun b!887037 () Bool)

(declare-fun res!403490 () Bool)

(assert (=> b!887037 (=> res!403490 e!581570)))

(assert (=> b!887037 (= res!403490 (not ((_ is ElementMatch!2287) lt!331760)))))

(declare-fun e!581564 () Bool)

(assert (=> b!887037 (= e!581564 e!581570)))

(declare-fun b!887038 () Bool)

(assert (=> b!887038 (= e!581564 (not lt!331798))))

(declare-fun b!887039 () Bool)

(assert (=> b!887039 (= e!581566 (= (head!1554 (_2!6156 lt!331759)) (c!143370 lt!331760)))))

(declare-fun b!887040 () Bool)

(declare-fun res!403489 () Bool)

(assert (=> b!887040 (=> (not res!403489) (not e!581566))))

(assert (=> b!887040 (= res!403489 (not call!52065))))

(declare-fun b!887041 () Bool)

(assert (=> b!887041 (= e!581569 (= lt!331798 call!52065))))

(declare-fun b!887042 () Bool)

(assert (=> b!887042 (= e!581569 e!581564)))

(declare-fun c!143432 () Bool)

(assert (=> b!887042 (= c!143432 ((_ is EmptyLang!2287) lt!331760))))

(declare-fun b!887043 () Bool)

(declare-fun res!403492 () Bool)

(assert (=> b!887043 (=> res!403492 e!581570)))

(assert (=> b!887043 (= res!403492 e!581566)))

(declare-fun res!403495 () Bool)

(assert (=> b!887043 (=> (not res!403495) (not e!581566))))

(assert (=> b!887043 (= res!403495 lt!331798)))

(declare-fun b!887044 () Bool)

(assert (=> b!887044 (= e!581565 (not (= (head!1554 (_2!6156 lt!331759)) (c!143370 lt!331760))))))

(assert (= (and d!277003 c!143430) b!887036))

(assert (= (and d!277003 (not c!143430)) b!887032))

(assert (= (and d!277003 c!143431) b!887041))

(assert (= (and d!277003 (not c!143431)) b!887042))

(assert (= (and b!887042 c!143432) b!887038))

(assert (= (and b!887042 (not c!143432)) b!887037))

(assert (= (and b!887037 (not res!403490)) b!887043))

(assert (= (and b!887043 res!403495) b!887040))

(assert (= (and b!887040 res!403489) b!887033))

(assert (= (and b!887033 res!403488) b!887039))

(assert (= (and b!887043 (not res!403492)) b!887031))

(assert (= (and b!887031 res!403493) b!887034))

(assert (= (and b!887034 (not res!403494)) b!887035))

(assert (= (and b!887035 (not res!403491)) b!887044))

(assert (= (or b!887041 b!887034 b!887040) bm!52060))

(declare-fun m!1132409 () Bool)

(assert (=> d!277003 m!1132409))

(assert (=> d!277003 m!1132279))

(declare-fun m!1132411 () Bool)

(assert (=> b!887033 m!1132411))

(assert (=> b!887033 m!1132411))

(declare-fun m!1132413 () Bool)

(assert (=> b!887033 m!1132413))

(assert (=> bm!52060 m!1132409))

(declare-fun m!1132415 () Bool)

(assert (=> b!887036 m!1132415))

(declare-fun m!1132417 () Bool)

(assert (=> b!887039 m!1132417))

(assert (=> b!887032 m!1132417))

(assert (=> b!887032 m!1132417))

(declare-fun m!1132419 () Bool)

(assert (=> b!887032 m!1132419))

(assert (=> b!887032 m!1132411))

(assert (=> b!887032 m!1132419))

(assert (=> b!887032 m!1132411))

(declare-fun m!1132421 () Bool)

(assert (=> b!887032 m!1132421))

(assert (=> b!887044 m!1132417))

(assert (=> b!887035 m!1132411))

(assert (=> b!887035 m!1132411))

(assert (=> b!887035 m!1132413))

(assert (=> b!886786 d!277003))

(declare-fun b!887054 () Bool)

(declare-fun e!581584 () Bool)

(declare-fun e!581581 () Bool)

(assert (=> b!887054 (= e!581584 e!581581)))

(declare-fun res!403506 () Bool)

(assert (=> b!887054 (=> (not res!403506) (not e!581581))))

(declare-fun lt!331799 () Bool)

(assert (=> b!887054 (= res!403506 (not lt!331799))))

(declare-fun b!887055 () Bool)

(declare-fun e!581582 () Bool)

(assert (=> b!887055 (= e!581582 (matchR!825 (derivativeStep!401 lt!331762 (head!1554 (_1!6156 lt!331759))) (tail!1116 (_1!6156 lt!331759))))))

(declare-fun b!887056 () Bool)

(declare-fun res!403501 () Bool)

(declare-fun e!581580 () Bool)

(assert (=> b!887056 (=> (not res!403501) (not e!581580))))

(assert (=> b!887056 (= res!403501 (isEmpty!5709 (tail!1116 (_1!6156 lt!331759))))))

(declare-fun d!277005 () Bool)

(declare-fun e!581583 () Bool)

(assert (=> d!277005 e!581583))

(declare-fun c!143436 () Bool)

(assert (=> d!277005 (= c!143436 ((_ is EmptyExpr!2287) lt!331762))))

(assert (=> d!277005 (= lt!331799 e!581582)))

(declare-fun c!143435 () Bool)

(assert (=> d!277005 (= c!143435 (isEmpty!5709 (_1!6156 lt!331759)))))

(assert (=> d!277005 (validRegex!756 lt!331762)))

(assert (=> d!277005 (= (matchR!825 lt!331762 (_1!6156 lt!331759)) lt!331799)))

(declare-fun b!887057 () Bool)

(declare-fun e!581579 () Bool)

(assert (=> b!887057 (= e!581581 e!581579)))

(declare-fun res!403507 () Bool)

(assert (=> b!887057 (=> res!403507 e!581579)))

(declare-fun call!52069 () Bool)

(assert (=> b!887057 (= res!403507 call!52069)))

(declare-fun b!887058 () Bool)

(declare-fun res!403504 () Bool)

(assert (=> b!887058 (=> res!403504 e!581579)))

(assert (=> b!887058 (= res!403504 (not (isEmpty!5709 (tail!1116 (_1!6156 lt!331759)))))))

(declare-fun b!887059 () Bool)

(assert (=> b!887059 (= e!581582 (nullable!589 lt!331762))))

(declare-fun bm!52064 () Bool)

(assert (=> bm!52064 (= call!52069 (isEmpty!5709 (_1!6156 lt!331759)))))

(declare-fun b!887060 () Bool)

(declare-fun res!403503 () Bool)

(assert (=> b!887060 (=> res!403503 e!581584)))

(assert (=> b!887060 (= res!403503 (not ((_ is ElementMatch!2287) lt!331762)))))

(declare-fun e!581578 () Bool)

(assert (=> b!887060 (= e!581578 e!581584)))

(declare-fun b!887061 () Bool)

(assert (=> b!887061 (= e!581578 (not lt!331799))))

(declare-fun b!887062 () Bool)

(assert (=> b!887062 (= e!581580 (= (head!1554 (_1!6156 lt!331759)) (c!143370 lt!331762)))))

(declare-fun b!887063 () Bool)

(declare-fun res!403502 () Bool)

(assert (=> b!887063 (=> (not res!403502) (not e!581580))))

(assert (=> b!887063 (= res!403502 (not call!52069))))

(declare-fun b!887064 () Bool)

(assert (=> b!887064 (= e!581583 (= lt!331799 call!52069))))

(declare-fun b!887065 () Bool)

(assert (=> b!887065 (= e!581583 e!581578)))

(declare-fun c!143437 () Bool)

(assert (=> b!887065 (= c!143437 ((_ is EmptyLang!2287) lt!331762))))

(declare-fun b!887066 () Bool)

(declare-fun res!403505 () Bool)

(assert (=> b!887066 (=> res!403505 e!581584)))

(assert (=> b!887066 (= res!403505 e!581580)))

(declare-fun res!403508 () Bool)

(assert (=> b!887066 (=> (not res!403508) (not e!581580))))

(assert (=> b!887066 (= res!403508 lt!331799)))

(declare-fun b!887067 () Bool)

(assert (=> b!887067 (= e!581579 (not (= (head!1554 (_1!6156 lt!331759)) (c!143370 lt!331762))))))

(assert (= (and d!277005 c!143435) b!887059))

(assert (= (and d!277005 (not c!143435)) b!887055))

(assert (= (and d!277005 c!143436) b!887064))

(assert (= (and d!277005 (not c!143436)) b!887065))

(assert (= (and b!887065 c!143437) b!887061))

(assert (= (and b!887065 (not c!143437)) b!887060))

(assert (= (and b!887060 (not res!403503)) b!887066))

(assert (= (and b!887066 res!403508) b!887063))

(assert (= (and b!887063 res!403502) b!887056))

(assert (= (and b!887056 res!403501) b!887062))

(assert (= (and b!887066 (not res!403505)) b!887054))

(assert (= (and b!887054 res!403506) b!887057))

(assert (= (and b!887057 (not res!403507)) b!887058))

(assert (= (and b!887058 (not res!403504)) b!887067))

(assert (= (or b!887064 b!887057 b!887063) bm!52064))

(assert (=> d!277005 m!1132377))

(assert (=> d!277005 m!1132273))

(assert (=> b!887056 m!1132381))

(assert (=> b!887056 m!1132381))

(assert (=> b!887056 m!1132383))

(assert (=> bm!52064 m!1132377))

(declare-fun m!1132433 () Bool)

(assert (=> b!887059 m!1132433))

(assert (=> b!887062 m!1132387))

(assert (=> b!887055 m!1132387))

(assert (=> b!887055 m!1132387))

(declare-fun m!1132435 () Bool)

(assert (=> b!887055 m!1132435))

(assert (=> b!887055 m!1132381))

(assert (=> b!887055 m!1132435))

(assert (=> b!887055 m!1132381))

(declare-fun m!1132447 () Bool)

(assert (=> b!887055 m!1132447))

(assert (=> b!887067 m!1132387))

(assert (=> b!887058 m!1132381))

(assert (=> b!887058 m!1132381))

(assert (=> b!887058 m!1132383))

(assert (=> b!886786 d!277005))

(declare-fun bm!52094 () Bool)

(declare-fun call!52097 () Regex!2287)

(declare-fun c!143480 () Bool)

(assert (=> bm!52094 (= call!52097 (removeUselessConcat!30 (ite c!143480 (regOne!5086 (regTwo!5086 r!15766)) (regOne!5087 (regTwo!5086 r!15766)))))))

(declare-fun b!887217 () Bool)

(declare-fun e!581676 () Regex!2287)

(declare-fun call!52102 () Regex!2287)

(assert (=> b!887217 (= e!581676 (Concat!4120 call!52097 call!52102))))

(declare-fun b!887218 () Bool)

(declare-fun e!581673 () Regex!2287)

(declare-fun call!52101 () Regex!2287)

(assert (=> b!887218 (= e!581673 (Star!2287 call!52101))))

(declare-fun b!887219 () Bool)

(declare-fun e!581672 () Regex!2287)

(assert (=> b!887219 (= e!581672 (Union!2287 call!52097 call!52101))))

(declare-fun b!887220 () Bool)

(declare-fun c!143482 () Bool)

(assert (=> b!887220 (= c!143482 ((_ is Star!2287) (regTwo!5086 r!15766)))))

(assert (=> b!887220 (= e!581672 e!581673)))

(declare-fun bm!52095 () Bool)

(assert (=> bm!52095 (= call!52101 call!52102)))

(declare-fun b!887221 () Bool)

(declare-fun e!581674 () Bool)

(declare-fun lt!331812 () Regex!2287)

(assert (=> b!887221 (= e!581674 (= (nullable!589 lt!331812) (nullable!589 (regTwo!5086 r!15766))))))

(declare-fun b!887222 () Bool)

(assert (=> b!887222 (= e!581676 e!581672)))

(declare-fun c!143481 () Bool)

(assert (=> b!887222 (= c!143481 ((_ is Union!2287) (regTwo!5086 r!15766)))))

(declare-fun b!887223 () Bool)

(assert (=> b!887223 (= c!143480 ((_ is Concat!4120) (regTwo!5086 r!15766)))))

(declare-fun e!581677 () Regex!2287)

(assert (=> b!887223 (= e!581677 e!581676)))

(declare-fun b!887225 () Bool)

(declare-fun e!581675 () Regex!2287)

(assert (=> b!887225 (= e!581675 e!581677)))

(declare-fun c!143483 () Bool)

(assert (=> b!887225 (= c!143483 (and ((_ is Concat!4120) (regTwo!5086 r!15766)) ((_ is EmptyExpr!2287) (regTwo!5086 (regTwo!5086 r!15766)))))))

(declare-fun b!887226 () Bool)

(assert (=> b!887226 (= e!581673 (regTwo!5086 r!15766))))

(declare-fun bm!52096 () Bool)

(declare-fun call!52103 () Regex!2287)

(declare-fun call!52100 () Regex!2287)

(assert (=> bm!52096 (= call!52103 call!52100)))

(declare-fun bm!52097 () Bool)

(assert (=> bm!52097 (= call!52102 call!52103)))

(declare-fun bm!52098 () Bool)

(declare-fun c!143479 () Bool)

(assert (=> bm!52098 (= call!52100 (removeUselessConcat!30 (ite c!143479 (regTwo!5086 (regTwo!5086 r!15766)) (ite c!143483 (regOne!5086 (regTwo!5086 r!15766)) (ite c!143480 (regTwo!5086 (regTwo!5086 r!15766)) (ite c!143481 (regTwo!5087 (regTwo!5086 r!15766)) (reg!2616 (regTwo!5086 r!15766))))))))))

(declare-fun b!887227 () Bool)

(assert (=> b!887227 (= e!581677 call!52103)))

(declare-fun b!887224 () Bool)

(assert (=> b!887224 (= e!581675 call!52100)))

(declare-fun d!277011 () Bool)

(assert (=> d!277011 e!581674))

(declare-fun res!403576 () Bool)

(assert (=> d!277011 (=> (not res!403576) (not e!581674))))

(assert (=> d!277011 (= res!403576 (validRegex!756 lt!331812))))

(assert (=> d!277011 (= lt!331812 e!581675)))

(assert (=> d!277011 (= c!143479 (and ((_ is Concat!4120) (regTwo!5086 r!15766)) ((_ is EmptyExpr!2287) (regOne!5086 (regTwo!5086 r!15766)))))))

(assert (=> d!277011 (validRegex!756 (regTwo!5086 r!15766))))

(assert (=> d!277011 (= (removeUselessConcat!30 (regTwo!5086 r!15766)) lt!331812)))

(assert (= (and d!277011 c!143479) b!887224))

(assert (= (and d!277011 (not c!143479)) b!887225))

(assert (= (and b!887225 c!143483) b!887227))

(assert (= (and b!887225 (not c!143483)) b!887223))

(assert (= (and b!887223 c!143480) b!887217))

(assert (= (and b!887223 (not c!143480)) b!887222))

(assert (= (and b!887222 c!143481) b!887219))

(assert (= (and b!887222 (not c!143481)) b!887220))

(assert (= (and b!887220 c!143482) b!887218))

(assert (= (and b!887220 (not c!143482)) b!887226))

(assert (= (or b!887219 b!887218) bm!52095))

(assert (= (or b!887217 bm!52095) bm!52097))

(assert (= (or b!887217 b!887219) bm!52094))

(assert (= (or b!887227 bm!52097) bm!52096))

(assert (= (or b!887224 bm!52096) bm!52098))

(assert (= (and d!277011 res!403576) b!887221))

(declare-fun m!1132503 () Bool)

(assert (=> bm!52094 m!1132503))

(declare-fun m!1132505 () Bool)

(assert (=> b!887221 m!1132505))

(declare-fun m!1132507 () Bool)

(assert (=> b!887221 m!1132507))

(declare-fun m!1132509 () Bool)

(assert (=> bm!52098 m!1132509))

(declare-fun m!1132511 () Bool)

(assert (=> d!277011 m!1132511))

(declare-fun m!1132513 () Bool)

(assert (=> d!277011 m!1132513))

(assert (=> b!886786 d!277011))

(declare-fun d!277031 () Bool)

(assert (=> d!277031 (= (matchR!825 (regTwo!5086 r!15766) (_2!6156 lt!331759)) (matchR!825 (removeUselessConcat!30 (regTwo!5086 r!15766)) (_2!6156 lt!331759)))))

(declare-fun lt!331816 () Unit!14153)

(declare-fun choose!5284 (Regex!2287 List!9517) Unit!14153)

(assert (=> d!277031 (= lt!331816 (choose!5284 (regTwo!5086 r!15766) (_2!6156 lt!331759)))))

(assert (=> d!277031 (validRegex!756 (regTwo!5086 r!15766))))

(assert (=> d!277031 (= (lemmaRemoveUselessConcatSound!24 (regTwo!5086 r!15766) (_2!6156 lt!331759)) lt!331816)))

(declare-fun bs!234758 () Bool)

(assert (= bs!234758 d!277031))

(assert (=> bs!234758 m!1132513))

(assert (=> bs!234758 m!1132269))

(declare-fun m!1132531 () Bool)

(assert (=> bs!234758 m!1132531))

(declare-fun m!1132533 () Bool)

(assert (=> bs!234758 m!1132533))

(assert (=> bs!234758 m!1132269))

(assert (=> bs!234758 m!1132257))

(assert (=> b!886786 d!277031))

(declare-fun d!277037 () Bool)

(assert (=> d!277037 (= (matchR!825 (regOne!5086 r!15766) (_1!6156 lt!331759)) (matchR!825 (removeUselessConcat!30 (regOne!5086 r!15766)) (_1!6156 lt!331759)))))

(declare-fun lt!331817 () Unit!14153)

(assert (=> d!277037 (= lt!331817 (choose!5284 (regOne!5086 r!15766) (_1!6156 lt!331759)))))

(assert (=> d!277037 (validRegex!756 (regOne!5086 r!15766))))

(assert (=> d!277037 (= (lemmaRemoveUselessConcatSound!24 (regOne!5086 r!15766) (_1!6156 lt!331759)) lt!331817)))

(declare-fun bs!234759 () Bool)

(assert (= bs!234759 d!277037))

(assert (=> bs!234759 m!1132379))

(assert (=> bs!234759 m!1132271))

(declare-fun m!1132535 () Bool)

(assert (=> bs!234759 m!1132535))

(declare-fun m!1132537 () Bool)

(assert (=> bs!234759 m!1132537))

(assert (=> bs!234759 m!1132271))

(assert (=> bs!234759 m!1132259))

(assert (=> b!886786 d!277037))

(declare-fun bm!52104 () Bool)

(declare-fun call!52109 () Regex!2287)

(declare-fun c!143492 () Bool)

(assert (=> bm!52104 (= call!52109 (removeUselessConcat!30 (ite c!143492 (regOne!5086 (regOne!5086 r!15766)) (regOne!5087 (regOne!5086 r!15766)))))))

(declare-fun b!887253 () Bool)

(declare-fun e!581696 () Regex!2287)

(declare-fun call!52112 () Regex!2287)

(assert (=> b!887253 (= e!581696 (Concat!4120 call!52109 call!52112))))

(declare-fun b!887254 () Bool)

(declare-fun e!581693 () Regex!2287)

(declare-fun call!52111 () Regex!2287)

(assert (=> b!887254 (= e!581693 (Star!2287 call!52111))))

(declare-fun b!887255 () Bool)

(declare-fun e!581692 () Regex!2287)

(assert (=> b!887255 (= e!581692 (Union!2287 call!52109 call!52111))))

(declare-fun b!887256 () Bool)

(declare-fun c!143494 () Bool)

(assert (=> b!887256 (= c!143494 ((_ is Star!2287) (regOne!5086 r!15766)))))

(assert (=> b!887256 (= e!581692 e!581693)))

(declare-fun bm!52105 () Bool)

(assert (=> bm!52105 (= call!52111 call!52112)))

(declare-fun b!887257 () Bool)

(declare-fun e!581694 () Bool)

(declare-fun lt!331821 () Regex!2287)

(assert (=> b!887257 (= e!581694 (= (nullable!589 lt!331821) (nullable!589 (regOne!5086 r!15766))))))

(declare-fun b!887258 () Bool)

(assert (=> b!887258 (= e!581696 e!581692)))

(declare-fun c!143493 () Bool)

(assert (=> b!887258 (= c!143493 ((_ is Union!2287) (regOne!5086 r!15766)))))

(declare-fun b!887259 () Bool)

(assert (=> b!887259 (= c!143492 ((_ is Concat!4120) (regOne!5086 r!15766)))))

(declare-fun e!581697 () Regex!2287)

(assert (=> b!887259 (= e!581697 e!581696)))

(declare-fun b!887261 () Bool)

(declare-fun e!581695 () Regex!2287)

(assert (=> b!887261 (= e!581695 e!581697)))

(declare-fun c!143495 () Bool)

(assert (=> b!887261 (= c!143495 (and ((_ is Concat!4120) (regOne!5086 r!15766)) ((_ is EmptyExpr!2287) (regTwo!5086 (regOne!5086 r!15766)))))))

(declare-fun b!887262 () Bool)

(assert (=> b!887262 (= e!581693 (regOne!5086 r!15766))))

(declare-fun bm!52106 () Bool)

(declare-fun call!52113 () Regex!2287)

(declare-fun call!52110 () Regex!2287)

(assert (=> bm!52106 (= call!52113 call!52110)))

(declare-fun bm!52107 () Bool)

(assert (=> bm!52107 (= call!52112 call!52113)))

(declare-fun bm!52108 () Bool)

(declare-fun c!143491 () Bool)

(assert (=> bm!52108 (= call!52110 (removeUselessConcat!30 (ite c!143491 (regTwo!5086 (regOne!5086 r!15766)) (ite c!143495 (regOne!5086 (regOne!5086 r!15766)) (ite c!143492 (regTwo!5086 (regOne!5086 r!15766)) (ite c!143493 (regTwo!5087 (regOne!5086 r!15766)) (reg!2616 (regOne!5086 r!15766))))))))))

(declare-fun b!887263 () Bool)

(assert (=> b!887263 (= e!581697 call!52113)))

(declare-fun b!887260 () Bool)

(assert (=> b!887260 (= e!581695 call!52110)))

(declare-fun d!277039 () Bool)

(assert (=> d!277039 e!581694))

(declare-fun res!403588 () Bool)

(assert (=> d!277039 (=> (not res!403588) (not e!581694))))

(assert (=> d!277039 (= res!403588 (validRegex!756 lt!331821))))

(assert (=> d!277039 (= lt!331821 e!581695)))

(assert (=> d!277039 (= c!143491 (and ((_ is Concat!4120) (regOne!5086 r!15766)) ((_ is EmptyExpr!2287) (regOne!5086 (regOne!5086 r!15766)))))))

(assert (=> d!277039 (validRegex!756 (regOne!5086 r!15766))))

(assert (=> d!277039 (= (removeUselessConcat!30 (regOne!5086 r!15766)) lt!331821)))

(assert (= (and d!277039 c!143491) b!887260))

(assert (= (and d!277039 (not c!143491)) b!887261))

(assert (= (and b!887261 c!143495) b!887263))

(assert (= (and b!887261 (not c!143495)) b!887259))

(assert (= (and b!887259 c!143492) b!887253))

(assert (= (and b!887259 (not c!143492)) b!887258))

(assert (= (and b!887258 c!143493) b!887255))

(assert (= (and b!887258 (not c!143493)) b!887256))

(assert (= (and b!887256 c!143494) b!887254))

(assert (= (and b!887256 (not c!143494)) b!887262))

(assert (= (or b!887255 b!887254) bm!52105))

(assert (= (or b!887253 bm!52105) bm!52107))

(assert (= (or b!887253 b!887255) bm!52104))

(assert (= (or b!887263 bm!52107) bm!52106))

(assert (= (or b!887260 bm!52106) bm!52108))

(assert (= (and d!277039 res!403588) b!887257))

(declare-fun m!1132541 () Bool)

(assert (=> bm!52104 m!1132541))

(declare-fun m!1132543 () Bool)

(assert (=> b!887257 m!1132543))

(assert (=> b!887257 m!1132385))

(declare-fun m!1132545 () Bool)

(assert (=> bm!52108 m!1132545))

(declare-fun m!1132547 () Bool)

(assert (=> d!277039 m!1132547))

(assert (=> d!277039 m!1132379))

(assert (=> b!886786 d!277039))

(declare-fun bm!52109 () Bool)

(declare-fun call!52115 () Bool)

(declare-fun call!52114 () Bool)

(assert (=> bm!52109 (= call!52115 call!52114)))

(declare-fun b!887294 () Bool)

(declare-fun e!581707 () Bool)

(declare-fun e!581706 () Bool)

(assert (=> b!887294 (= e!581707 e!581706)))

(declare-fun res!403590 () Bool)

(assert (=> b!887294 (=> (not res!403590) (not e!581706))))

(assert (=> b!887294 (= res!403590 call!52115)))

(declare-fun b!887295 () Bool)

(declare-fun e!581708 () Bool)

(declare-fun e!581710 () Bool)

(assert (=> b!887295 (= e!581708 e!581710)))

(declare-fun res!403592 () Bool)

(assert (=> b!887295 (= res!403592 (not (nullable!589 (reg!2616 lt!331762))))))

(assert (=> b!887295 (=> (not res!403592) (not e!581710))))

(declare-fun b!887296 () Bool)

(declare-fun call!52116 () Bool)

(assert (=> b!887296 (= e!581706 call!52116)))

(declare-fun b!887297 () Bool)

(declare-fun e!581709 () Bool)

(assert (=> b!887297 (= e!581709 e!581708)))

(declare-fun c!143497 () Bool)

(assert (=> b!887297 (= c!143497 ((_ is Star!2287) lt!331762))))

(declare-fun b!887298 () Bool)

(declare-fun e!581705 () Bool)

(assert (=> b!887298 (= e!581705 call!52116)))

(declare-fun bm!52110 () Bool)

(declare-fun c!143496 () Bool)

(assert (=> bm!52110 (= call!52116 (validRegex!756 (ite c!143496 (regTwo!5087 lt!331762) (regTwo!5086 lt!331762))))))

(declare-fun b!887299 () Bool)

(declare-fun res!403589 () Bool)

(assert (=> b!887299 (=> res!403589 e!581707)))

(assert (=> b!887299 (= res!403589 (not ((_ is Concat!4120) lt!331762)))))

(declare-fun e!581711 () Bool)

(assert (=> b!887299 (= e!581711 e!581707)))

(declare-fun bm!52111 () Bool)

(assert (=> bm!52111 (= call!52114 (validRegex!756 (ite c!143497 (reg!2616 lt!331762) (ite c!143496 (regOne!5087 lt!331762) (regOne!5086 lt!331762)))))))

(declare-fun b!887301 () Bool)

(assert (=> b!887301 (= e!581708 e!581711)))

(assert (=> b!887301 (= c!143496 ((_ is Union!2287) lt!331762))))

(declare-fun b!887302 () Bool)

(declare-fun res!403593 () Bool)

(assert (=> b!887302 (=> (not res!403593) (not e!581705))))

(assert (=> b!887302 (= res!403593 call!52115)))

(assert (=> b!887302 (= e!581711 e!581705)))

(declare-fun d!277041 () Bool)

(declare-fun res!403591 () Bool)

(assert (=> d!277041 (=> res!403591 e!581709)))

(assert (=> d!277041 (= res!403591 ((_ is ElementMatch!2287) lt!331762))))

(assert (=> d!277041 (= (validRegex!756 lt!331762) e!581709)))

(declare-fun b!887300 () Bool)

(assert (=> b!887300 (= e!581710 call!52114)))

(assert (= (and d!277041 (not res!403591)) b!887297))

(assert (= (and b!887297 c!143497) b!887295))

(assert (= (and b!887297 (not c!143497)) b!887301))

(assert (= (and b!887295 res!403592) b!887300))

(assert (= (and b!887301 c!143496) b!887302))

(assert (= (and b!887301 (not c!143496)) b!887299))

(assert (= (and b!887302 res!403593) b!887298))

(assert (= (and b!887299 (not res!403589)) b!887294))

(assert (= (and b!887294 res!403590) b!887296))

(assert (= (or b!887298 b!887296) bm!52110))

(assert (= (or b!887302 b!887294) bm!52109))

(assert (= (or b!887300 bm!52109) bm!52111))

(declare-fun m!1132549 () Bool)

(assert (=> b!887295 m!1132549))

(declare-fun m!1132551 () Bool)

(assert (=> bm!52110 m!1132551))

(declare-fun m!1132553 () Bool)

(assert (=> bm!52111 m!1132553))

(assert (=> b!886786 d!277041))

(declare-fun d!277043 () Bool)

(assert (=> d!277043 (= (isEmpty!5709 s!10566) ((_ is Nil!9501) s!10566))))

(assert (=> b!886788 d!277043))

(declare-fun d!277045 () Bool)

(declare-fun choose!5285 (Int) Bool)

(assert (=> d!277045 (= (Exists!82 lambda!27448) (choose!5285 lambda!27448))))

(declare-fun bs!234761 () Bool)

(assert (= bs!234761 d!277045))

(declare-fun m!1132555 () Bool)

(assert (=> bs!234761 m!1132555))

(assert (=> b!886788 d!277045))

(declare-fun bs!234762 () Bool)

(declare-fun d!277047 () Bool)

(assert (= bs!234762 (and d!277047 b!886788)))

(declare-fun lambda!27466 () Int)

(assert (=> bs!234762 (= lambda!27466 lambda!27447)))

(assert (=> bs!234762 (not (= lambda!27466 lambda!27448))))

(assert (=> d!277047 true))

(assert (=> d!277047 true))

(assert (=> d!277047 true))

(assert (=> d!277047 (= (isDefined!1614 (findConcatSeparation!78 (regOne!5086 r!15766) (regTwo!5086 r!15766) Nil!9501 s!10566 s!10566)) (Exists!82 lambda!27466))))

(declare-fun lt!331824 () Unit!14153)

(declare-fun choose!5287 (Regex!2287 Regex!2287 List!9517) Unit!14153)

(assert (=> d!277047 (= lt!331824 (choose!5287 (regOne!5086 r!15766) (regTwo!5086 r!15766) s!10566))))

(assert (=> d!277047 (validRegex!756 (regOne!5086 r!15766))))

(assert (=> d!277047 (= (lemmaFindConcatSeparationEquivalentToExists!78 (regOne!5086 r!15766) (regTwo!5086 r!15766) s!10566) lt!331824)))

(declare-fun bs!234763 () Bool)

(assert (= bs!234763 d!277047))

(assert (=> bs!234763 m!1132239))

(assert (=> bs!234763 m!1132239))

(declare-fun m!1132557 () Bool)

(assert (=> bs!234763 m!1132557))

(assert (=> bs!234763 m!1132379))

(declare-fun m!1132559 () Bool)

(assert (=> bs!234763 m!1132559))

(declare-fun m!1132561 () Bool)

(assert (=> bs!234763 m!1132561))

(assert (=> b!886788 d!277047))

(declare-fun d!277049 () Bool)

(assert (=> d!277049 (= (Exists!82 lambda!27447) (choose!5285 lambda!27447))))

(declare-fun bs!234764 () Bool)

(assert (= bs!234764 d!277049))

(declare-fun m!1132563 () Bool)

(assert (=> bs!234764 m!1132563))

(assert (=> b!886788 d!277049))

(declare-fun d!277051 () Bool)

(declare-fun e!581728 () Bool)

(assert (=> d!277051 e!581728))

(declare-fun res!403611 () Bool)

(assert (=> d!277051 (=> res!403611 e!581728)))

(declare-fun e!581729 () Bool)

(assert (=> d!277051 (= res!403611 e!581729)))

(declare-fun res!403608 () Bool)

(assert (=> d!277051 (=> (not res!403608) (not e!581729))))

(declare-fun lt!331831 () Option!1972)

(assert (=> d!277051 (= res!403608 (isDefined!1614 lt!331831))))

(declare-fun e!581727 () Option!1972)

(assert (=> d!277051 (= lt!331831 e!581727)))

(declare-fun c!143503 () Bool)

(declare-fun e!581731 () Bool)

(assert (=> d!277051 (= c!143503 e!581731)))

(declare-fun res!403609 () Bool)

(assert (=> d!277051 (=> (not res!403609) (not e!581731))))

(assert (=> d!277051 (= res!403609 (matchR!825 (regOne!5086 r!15766) Nil!9501))))

(assert (=> d!277051 (validRegex!756 (regOne!5086 r!15766))))

(assert (=> d!277051 (= (findConcatSeparation!78 (regOne!5086 r!15766) (regTwo!5086 r!15766) Nil!9501 s!10566 s!10566) lt!331831)))

(declare-fun b!887330 () Bool)

(declare-fun e!581730 () Option!1972)

(assert (=> b!887330 (= e!581730 None!1971)))

(declare-fun b!887331 () Bool)

(assert (=> b!887331 (= e!581729 (= (++!2486 (_1!6156 (get!2980 lt!331831)) (_2!6156 (get!2980 lt!331831))) s!10566))))

(declare-fun b!887332 () Bool)

(declare-fun res!403610 () Bool)

(assert (=> b!887332 (=> (not res!403610) (not e!581729))))

(assert (=> b!887332 (= res!403610 (matchR!825 (regOne!5086 r!15766) (_1!6156 (get!2980 lt!331831))))))

(declare-fun b!887333 () Bool)

(declare-fun res!403612 () Bool)

(assert (=> b!887333 (=> (not res!403612) (not e!581729))))

(assert (=> b!887333 (= res!403612 (matchR!825 (regTwo!5086 r!15766) (_2!6156 (get!2980 lt!331831))))))

(declare-fun b!887334 () Bool)

(assert (=> b!887334 (= e!581731 (matchR!825 (regTwo!5086 r!15766) s!10566))))

(declare-fun b!887335 () Bool)

(declare-fun lt!331833 () Unit!14153)

(declare-fun lt!331832 () Unit!14153)

(assert (=> b!887335 (= lt!331833 lt!331832)))

(assert (=> b!887335 (= (++!2486 (++!2486 Nil!9501 (Cons!9501 (h!14902 s!10566) Nil!9501)) (t!100563 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!112 (List!9517 C!5144 List!9517 List!9517) Unit!14153)

(assert (=> b!887335 (= lt!331832 (lemmaMoveElementToOtherListKeepsConcatEq!112 Nil!9501 (h!14902 s!10566) (t!100563 s!10566) s!10566))))

(assert (=> b!887335 (= e!581730 (findConcatSeparation!78 (regOne!5086 r!15766) (regTwo!5086 r!15766) (++!2486 Nil!9501 (Cons!9501 (h!14902 s!10566) Nil!9501)) (t!100563 s!10566) s!10566))))

(declare-fun b!887336 () Bool)

(assert (=> b!887336 (= e!581727 e!581730)))

(declare-fun c!143502 () Bool)

(assert (=> b!887336 (= c!143502 ((_ is Nil!9501) s!10566))))

(declare-fun b!887337 () Bool)

(assert (=> b!887337 (= e!581727 (Some!1971 (tuple2!10661 Nil!9501 s!10566)))))

(declare-fun b!887338 () Bool)

(assert (=> b!887338 (= e!581728 (not (isDefined!1614 lt!331831)))))

(assert (= (and d!277051 res!403609) b!887334))

(assert (= (and d!277051 c!143503) b!887337))

(assert (= (and d!277051 (not c!143503)) b!887336))

(assert (= (and b!887336 c!143502) b!887330))

(assert (= (and b!887336 (not c!143502)) b!887335))

(assert (= (and d!277051 res!403608) b!887332))

(assert (= (and b!887332 res!403610) b!887333))

(assert (= (and b!887333 res!403612) b!887331))

(assert (= (and d!277051 (not res!403611)) b!887338))

(declare-fun m!1132565 () Bool)

(assert (=> b!887335 m!1132565))

(assert (=> b!887335 m!1132565))

(declare-fun m!1132567 () Bool)

(assert (=> b!887335 m!1132567))

(declare-fun m!1132569 () Bool)

(assert (=> b!887335 m!1132569))

(assert (=> b!887335 m!1132565))

(declare-fun m!1132571 () Bool)

(assert (=> b!887335 m!1132571))

(declare-fun m!1132573 () Bool)

(assert (=> b!887331 m!1132573))

(declare-fun m!1132575 () Bool)

(assert (=> b!887331 m!1132575))

(assert (=> b!887333 m!1132573))

(declare-fun m!1132577 () Bool)

(assert (=> b!887333 m!1132577))

(declare-fun m!1132579 () Bool)

(assert (=> d!277051 m!1132579))

(declare-fun m!1132581 () Bool)

(assert (=> d!277051 m!1132581))

(assert (=> d!277051 m!1132379))

(assert (=> b!887338 m!1132579))

(assert (=> b!887332 m!1132573))

(declare-fun m!1132583 () Bool)

(assert (=> b!887332 m!1132583))

(declare-fun m!1132585 () Bool)

(assert (=> b!887334 m!1132585))

(assert (=> b!886788 d!277051))

(declare-fun d!277053 () Bool)

(declare-fun isEmpty!5711 (Option!1972) Bool)

(assert (=> d!277053 (= (isDefined!1614 lt!331757) (not (isEmpty!5711 lt!331757)))))

(declare-fun bs!234765 () Bool)

(assert (= bs!234765 d!277053))

(declare-fun m!1132587 () Bool)

(assert (=> bs!234765 m!1132587))

(assert (=> b!886788 d!277053))

(declare-fun bs!234766 () Bool)

(declare-fun d!277055 () Bool)

(assert (= bs!234766 (and d!277055 b!886788)))

(declare-fun lambda!27471 () Int)

(assert (=> bs!234766 (= lambda!27471 lambda!27447)))

(assert (=> bs!234766 (not (= lambda!27471 lambda!27448))))

(declare-fun bs!234767 () Bool)

(assert (= bs!234767 (and d!277055 d!277047)))

(assert (=> bs!234767 (= lambda!27471 lambda!27466)))

(assert (=> d!277055 true))

(assert (=> d!277055 true))

(assert (=> d!277055 true))

(declare-fun lambda!27472 () Int)

(assert (=> bs!234766 (not (= lambda!27472 lambda!27447))))

(assert (=> bs!234766 (= lambda!27472 lambda!27448)))

(assert (=> bs!234767 (not (= lambda!27472 lambda!27466))))

(declare-fun bs!234768 () Bool)

(assert (= bs!234768 d!277055))

(assert (=> bs!234768 (not (= lambda!27472 lambda!27471))))

(assert (=> d!277055 true))

(assert (=> d!277055 true))

(assert (=> d!277055 true))

(assert (=> d!277055 (= (Exists!82 lambda!27471) (Exists!82 lambda!27472))))

(declare-fun lt!331836 () Unit!14153)

(declare-fun choose!5288 (Regex!2287 Regex!2287 List!9517) Unit!14153)

(assert (=> d!277055 (= lt!331836 (choose!5288 (regOne!5086 r!15766) (regTwo!5086 r!15766) s!10566))))

(assert (=> d!277055 (validRegex!756 (regOne!5086 r!15766))))

(assert (=> d!277055 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!72 (regOne!5086 r!15766) (regTwo!5086 r!15766) s!10566) lt!331836)))

(declare-fun m!1132589 () Bool)

(assert (=> bs!234768 m!1132589))

(declare-fun m!1132591 () Bool)

(assert (=> bs!234768 m!1132591))

(declare-fun m!1132593 () Bool)

(assert (=> bs!234768 m!1132593))

(assert (=> bs!234768 m!1132379))

(assert (=> b!886788 d!277055))

(declare-fun b!887347 () Bool)

(declare-fun e!581742 () Bool)

(declare-fun e!581739 () Bool)

(assert (=> b!887347 (= e!581742 e!581739)))

(declare-fun res!403626 () Bool)

(assert (=> b!887347 (=> (not res!403626) (not e!581739))))

(declare-fun lt!331837 () Bool)

(assert (=> b!887347 (= res!403626 (not lt!331837))))

(declare-fun b!887348 () Bool)

(declare-fun e!581740 () Bool)

(assert (=> b!887348 (= e!581740 (matchR!825 (derivativeStep!401 (Concat!4120 lt!331762 lt!331760) (head!1554 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759)))) (tail!1116 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759)))))))

(declare-fun b!887349 () Bool)

(declare-fun res!403621 () Bool)

(declare-fun e!581738 () Bool)

(assert (=> b!887349 (=> (not res!403621) (not e!581738))))

(assert (=> b!887349 (= res!403621 (isEmpty!5709 (tail!1116 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759)))))))

(declare-fun d!277057 () Bool)

(declare-fun e!581741 () Bool)

(assert (=> d!277057 e!581741))

(declare-fun c!143505 () Bool)

(assert (=> d!277057 (= c!143505 ((_ is EmptyExpr!2287) (Concat!4120 lt!331762 lt!331760)))))

(assert (=> d!277057 (= lt!331837 e!581740)))

(declare-fun c!143504 () Bool)

(assert (=> d!277057 (= c!143504 (isEmpty!5709 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759))))))

(assert (=> d!277057 (validRegex!756 (Concat!4120 lt!331762 lt!331760))))

(assert (=> d!277057 (= (matchR!825 (Concat!4120 lt!331762 lt!331760) (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759))) lt!331837)))

(declare-fun b!887350 () Bool)

(declare-fun e!581737 () Bool)

(assert (=> b!887350 (= e!581739 e!581737)))

(declare-fun res!403627 () Bool)

(assert (=> b!887350 (=> res!403627 e!581737)))

(declare-fun call!52117 () Bool)

(assert (=> b!887350 (= res!403627 call!52117)))

(declare-fun b!887351 () Bool)

(declare-fun res!403624 () Bool)

(assert (=> b!887351 (=> res!403624 e!581737)))

(assert (=> b!887351 (= res!403624 (not (isEmpty!5709 (tail!1116 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759))))))))

(declare-fun b!887352 () Bool)

(assert (=> b!887352 (= e!581740 (nullable!589 (Concat!4120 lt!331762 lt!331760)))))

(declare-fun bm!52112 () Bool)

(assert (=> bm!52112 (= call!52117 (isEmpty!5709 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759))))))

(declare-fun b!887353 () Bool)

(declare-fun res!403623 () Bool)

(assert (=> b!887353 (=> res!403623 e!581742)))

(assert (=> b!887353 (= res!403623 (not ((_ is ElementMatch!2287) (Concat!4120 lt!331762 lt!331760))))))

(declare-fun e!581736 () Bool)

(assert (=> b!887353 (= e!581736 e!581742)))

(declare-fun b!887354 () Bool)

(assert (=> b!887354 (= e!581736 (not lt!331837))))

(declare-fun b!887355 () Bool)

(assert (=> b!887355 (= e!581738 (= (head!1554 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759))) (c!143370 (Concat!4120 lt!331762 lt!331760))))))

(declare-fun b!887356 () Bool)

(declare-fun res!403622 () Bool)

(assert (=> b!887356 (=> (not res!403622) (not e!581738))))

(assert (=> b!887356 (= res!403622 (not call!52117))))

(declare-fun b!887357 () Bool)

(assert (=> b!887357 (= e!581741 (= lt!331837 call!52117))))

(declare-fun b!887358 () Bool)

(assert (=> b!887358 (= e!581741 e!581736)))

(declare-fun c!143506 () Bool)

(assert (=> b!887358 (= c!143506 ((_ is EmptyLang!2287) (Concat!4120 lt!331762 lt!331760)))))

(declare-fun b!887359 () Bool)

(declare-fun res!403625 () Bool)

(assert (=> b!887359 (=> res!403625 e!581742)))

(assert (=> b!887359 (= res!403625 e!581738)))

(declare-fun res!403628 () Bool)

(assert (=> b!887359 (=> (not res!403628) (not e!581738))))

(assert (=> b!887359 (= res!403628 lt!331837)))

(declare-fun b!887360 () Bool)

(assert (=> b!887360 (= e!581737 (not (= (head!1554 (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759))) (c!143370 (Concat!4120 lt!331762 lt!331760)))))))

(assert (= (and d!277057 c!143504) b!887352))

(assert (= (and d!277057 (not c!143504)) b!887348))

(assert (= (and d!277057 c!143505) b!887357))

(assert (= (and d!277057 (not c!143505)) b!887358))

(assert (= (and b!887358 c!143506) b!887354))

(assert (= (and b!887358 (not c!143506)) b!887353))

(assert (= (and b!887353 (not res!403623)) b!887359))

(assert (= (and b!887359 res!403628) b!887356))

(assert (= (and b!887356 res!403622) b!887349))

(assert (= (and b!887349 res!403621) b!887355))

(assert (= (and b!887359 (not res!403625)) b!887347))

(assert (= (and b!887347 res!403626) b!887350))

(assert (= (and b!887350 (not res!403627)) b!887351))

(assert (= (and b!887351 (not res!403624)) b!887360))

(assert (= (or b!887357 b!887350 b!887356) bm!52112))

(assert (=> d!277057 m!1132253))

(declare-fun m!1132595 () Bool)

(assert (=> d!277057 m!1132595))

(declare-fun m!1132597 () Bool)

(assert (=> d!277057 m!1132597))

(assert (=> b!887349 m!1132253))

(declare-fun m!1132599 () Bool)

(assert (=> b!887349 m!1132599))

(assert (=> b!887349 m!1132599))

(declare-fun m!1132601 () Bool)

(assert (=> b!887349 m!1132601))

(assert (=> bm!52112 m!1132253))

(assert (=> bm!52112 m!1132595))

(declare-fun m!1132603 () Bool)

(assert (=> b!887352 m!1132603))

(assert (=> b!887355 m!1132253))

(declare-fun m!1132605 () Bool)

(assert (=> b!887355 m!1132605))

(assert (=> b!887348 m!1132253))

(assert (=> b!887348 m!1132605))

(assert (=> b!887348 m!1132605))

(declare-fun m!1132607 () Bool)

(assert (=> b!887348 m!1132607))

(assert (=> b!887348 m!1132253))

(assert (=> b!887348 m!1132599))

(assert (=> b!887348 m!1132607))

(assert (=> b!887348 m!1132599))

(declare-fun m!1132609 () Bool)

(assert (=> b!887348 m!1132609))

(assert (=> b!887360 m!1132253))

(assert (=> b!887360 m!1132605))

(assert (=> b!887351 m!1132253))

(assert (=> b!887351 m!1132599))

(assert (=> b!887351 m!1132599))

(assert (=> b!887351 m!1132601))

(assert (=> b!886782 d!277057))

(declare-fun d!277059 () Bool)

(assert (=> d!277059 (matchR!825 (Concat!4120 lt!331762 lt!331760) (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759)))))

(declare-fun lt!331840 () Unit!14153)

(declare-fun choose!5289 (Regex!2287 Regex!2287 List!9517 List!9517) Unit!14153)

(assert (=> d!277059 (= lt!331840 (choose!5289 lt!331762 lt!331760 (_1!6156 lt!331759) (_2!6156 lt!331759)))))

(declare-fun e!581745 () Bool)

(assert (=> d!277059 e!581745))

(declare-fun res!403631 () Bool)

(assert (=> d!277059 (=> (not res!403631) (not e!581745))))

(assert (=> d!277059 (= res!403631 (validRegex!756 lt!331762))))

(assert (=> d!277059 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!4 lt!331762 lt!331760 (_1!6156 lt!331759) (_2!6156 lt!331759)) lt!331840)))

(declare-fun b!887363 () Bool)

(assert (=> b!887363 (= e!581745 (validRegex!756 lt!331760))))

(assert (= (and d!277059 res!403631) b!887363))

(assert (=> d!277059 m!1132253))

(assert (=> d!277059 m!1132253))

(assert (=> d!277059 m!1132255))

(declare-fun m!1132611 () Bool)

(assert (=> d!277059 m!1132611))

(assert (=> d!277059 m!1132273))

(assert (=> b!887363 m!1132279))

(assert (=> b!886782 d!277059))

(declare-fun d!277061 () Bool)

(declare-fun e!581750 () Bool)

(assert (=> d!277061 e!581750))

(declare-fun res!403636 () Bool)

(assert (=> d!277061 (=> (not res!403636) (not e!581750))))

(declare-fun lt!331843 () List!9517)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1373 (List!9517) (InoxSet C!5144))

(assert (=> d!277061 (= res!403636 (= (content!1373 lt!331843) ((_ map or) (content!1373 (_1!6156 lt!331759)) (content!1373 (_2!6156 lt!331759)))))))

(declare-fun e!581751 () List!9517)

(assert (=> d!277061 (= lt!331843 e!581751)))

(declare-fun c!143509 () Bool)

(assert (=> d!277061 (= c!143509 ((_ is Nil!9501) (_1!6156 lt!331759)))))

(assert (=> d!277061 (= (++!2486 (_1!6156 lt!331759) (_2!6156 lt!331759)) lt!331843)))

(declare-fun b!887372 () Bool)

(assert (=> b!887372 (= e!581751 (_2!6156 lt!331759))))

(declare-fun b!887375 () Bool)

(assert (=> b!887375 (= e!581750 (or (not (= (_2!6156 lt!331759) Nil!9501)) (= lt!331843 (_1!6156 lt!331759))))))

(declare-fun b!887374 () Bool)

(declare-fun res!403637 () Bool)

(assert (=> b!887374 (=> (not res!403637) (not e!581750))))

(declare-fun size!7852 (List!9517) Int)

(assert (=> b!887374 (= res!403637 (= (size!7852 lt!331843) (+ (size!7852 (_1!6156 lt!331759)) (size!7852 (_2!6156 lt!331759)))))))

(declare-fun b!887373 () Bool)

(assert (=> b!887373 (= e!581751 (Cons!9501 (h!14902 (_1!6156 lt!331759)) (++!2486 (t!100563 (_1!6156 lt!331759)) (_2!6156 lt!331759))))))

(assert (= (and d!277061 c!143509) b!887372))

(assert (= (and d!277061 (not c!143509)) b!887373))

(assert (= (and d!277061 res!403636) b!887374))

(assert (= (and b!887374 res!403637) b!887375))

(declare-fun m!1132613 () Bool)

(assert (=> d!277061 m!1132613))

(declare-fun m!1132615 () Bool)

(assert (=> d!277061 m!1132615))

(declare-fun m!1132617 () Bool)

(assert (=> d!277061 m!1132617))

(declare-fun m!1132619 () Bool)

(assert (=> b!887374 m!1132619))

(declare-fun m!1132621 () Bool)

(assert (=> b!887374 m!1132621))

(declare-fun m!1132623 () Bool)

(assert (=> b!887374 m!1132623))

(declare-fun m!1132625 () Bool)

(assert (=> b!887373 m!1132625))

(assert (=> b!886782 d!277061))

(declare-fun bm!52113 () Bool)

(declare-fun call!52119 () Bool)

(declare-fun call!52118 () Bool)

(assert (=> bm!52113 (= call!52119 call!52118)))

(declare-fun b!887376 () Bool)

(declare-fun e!581754 () Bool)

(declare-fun e!581753 () Bool)

(assert (=> b!887376 (= e!581754 e!581753)))

(declare-fun res!403639 () Bool)

(assert (=> b!887376 (=> (not res!403639) (not e!581753))))

(assert (=> b!887376 (= res!403639 call!52119)))

(declare-fun b!887377 () Bool)

(declare-fun e!581755 () Bool)

(declare-fun e!581757 () Bool)

(assert (=> b!887377 (= e!581755 e!581757)))

(declare-fun res!403641 () Bool)

(assert (=> b!887377 (= res!403641 (not (nullable!589 (reg!2616 (removeUselessConcat!30 r!15766)))))))

(assert (=> b!887377 (=> (not res!403641) (not e!581757))))

(declare-fun b!887378 () Bool)

(declare-fun call!52120 () Bool)

(assert (=> b!887378 (= e!581753 call!52120)))

(declare-fun b!887379 () Bool)

(declare-fun e!581756 () Bool)

(assert (=> b!887379 (= e!581756 e!581755)))

(declare-fun c!143511 () Bool)

(assert (=> b!887379 (= c!143511 ((_ is Star!2287) (removeUselessConcat!30 r!15766)))))

(declare-fun b!887380 () Bool)

(declare-fun e!581752 () Bool)

(assert (=> b!887380 (= e!581752 call!52120)))

(declare-fun bm!52114 () Bool)

(declare-fun c!143510 () Bool)

(assert (=> bm!52114 (= call!52120 (validRegex!756 (ite c!143510 (regTwo!5087 (removeUselessConcat!30 r!15766)) (regTwo!5086 (removeUselessConcat!30 r!15766)))))))

(declare-fun b!887381 () Bool)

(declare-fun res!403638 () Bool)

(assert (=> b!887381 (=> res!403638 e!581754)))

(assert (=> b!887381 (= res!403638 (not ((_ is Concat!4120) (removeUselessConcat!30 r!15766))))))

(declare-fun e!581758 () Bool)

(assert (=> b!887381 (= e!581758 e!581754)))

(declare-fun bm!52115 () Bool)

(assert (=> bm!52115 (= call!52118 (validRegex!756 (ite c!143511 (reg!2616 (removeUselessConcat!30 r!15766)) (ite c!143510 (regOne!5087 (removeUselessConcat!30 r!15766)) (regOne!5086 (removeUselessConcat!30 r!15766))))))))

(declare-fun b!887383 () Bool)

(assert (=> b!887383 (= e!581755 e!581758)))

(assert (=> b!887383 (= c!143510 ((_ is Union!2287) (removeUselessConcat!30 r!15766)))))

(declare-fun b!887384 () Bool)

(declare-fun res!403642 () Bool)

(assert (=> b!887384 (=> (not res!403642) (not e!581752))))

(assert (=> b!887384 (= res!403642 call!52119)))

(assert (=> b!887384 (= e!581758 e!581752)))

(declare-fun d!277063 () Bool)

(declare-fun res!403640 () Bool)

(assert (=> d!277063 (=> res!403640 e!581756)))

(assert (=> d!277063 (= res!403640 ((_ is ElementMatch!2287) (removeUselessConcat!30 r!15766)))))

(assert (=> d!277063 (= (validRegex!756 (removeUselessConcat!30 r!15766)) e!581756)))

(declare-fun b!887382 () Bool)

(assert (=> b!887382 (= e!581757 call!52118)))

(assert (= (and d!277063 (not res!403640)) b!887379))

(assert (= (and b!887379 c!143511) b!887377))

(assert (= (and b!887379 (not c!143511)) b!887383))

(assert (= (and b!887377 res!403641) b!887382))

(assert (= (and b!887383 c!143510) b!887384))

(assert (= (and b!887383 (not c!143510)) b!887381))

(assert (= (and b!887384 res!403642) b!887380))

(assert (= (and b!887381 (not res!403638)) b!887376))

(assert (= (and b!887376 res!403639) b!887378))

(assert (= (or b!887380 b!887378) bm!52114))

(assert (= (or b!887384 b!887376) bm!52113))

(assert (= (or b!887382 bm!52113) bm!52115))

(declare-fun m!1132627 () Bool)

(assert (=> b!887377 m!1132627))

(declare-fun m!1132629 () Bool)

(assert (=> bm!52114 m!1132629))

(declare-fun m!1132631 () Bool)

(assert (=> bm!52115 m!1132631))

(assert (=> b!886782 d!277063))

(declare-fun bm!52116 () Bool)

(declare-fun call!52121 () Regex!2287)

(declare-fun c!143513 () Bool)

(assert (=> bm!52116 (= call!52121 (removeUselessConcat!30 (ite c!143513 (regOne!5086 r!15766) (regOne!5087 r!15766))))))

(declare-fun b!887385 () Bool)

(declare-fun e!581763 () Regex!2287)

(declare-fun call!52124 () Regex!2287)

(assert (=> b!887385 (= e!581763 (Concat!4120 call!52121 call!52124))))

(declare-fun b!887386 () Bool)

(declare-fun e!581760 () Regex!2287)

(declare-fun call!52123 () Regex!2287)

(assert (=> b!887386 (= e!581760 (Star!2287 call!52123))))

(declare-fun b!887387 () Bool)

(declare-fun e!581759 () Regex!2287)

(assert (=> b!887387 (= e!581759 (Union!2287 call!52121 call!52123))))

(declare-fun b!887388 () Bool)

(declare-fun c!143515 () Bool)

(assert (=> b!887388 (= c!143515 ((_ is Star!2287) r!15766))))

(assert (=> b!887388 (= e!581759 e!581760)))

(declare-fun bm!52117 () Bool)

(assert (=> bm!52117 (= call!52123 call!52124)))

(declare-fun b!887389 () Bool)

(declare-fun e!581761 () Bool)

(declare-fun lt!331844 () Regex!2287)

(assert (=> b!887389 (= e!581761 (= (nullable!589 lt!331844) (nullable!589 r!15766)))))

(declare-fun b!887390 () Bool)

(assert (=> b!887390 (= e!581763 e!581759)))

(declare-fun c!143514 () Bool)

(assert (=> b!887390 (= c!143514 ((_ is Union!2287) r!15766))))

(declare-fun b!887391 () Bool)

(assert (=> b!887391 (= c!143513 ((_ is Concat!4120) r!15766))))

(declare-fun e!581764 () Regex!2287)

(assert (=> b!887391 (= e!581764 e!581763)))

(declare-fun b!887393 () Bool)

(declare-fun e!581762 () Regex!2287)

(assert (=> b!887393 (= e!581762 e!581764)))

(declare-fun c!143516 () Bool)

(assert (=> b!887393 (= c!143516 (and ((_ is Concat!4120) r!15766) ((_ is EmptyExpr!2287) (regTwo!5086 r!15766))))))

(declare-fun b!887394 () Bool)

(assert (=> b!887394 (= e!581760 r!15766)))

(declare-fun bm!52118 () Bool)

(declare-fun call!52125 () Regex!2287)

(declare-fun call!52122 () Regex!2287)

(assert (=> bm!52118 (= call!52125 call!52122)))

(declare-fun bm!52119 () Bool)

(assert (=> bm!52119 (= call!52124 call!52125)))

(declare-fun c!143512 () Bool)

(declare-fun bm!52120 () Bool)

(assert (=> bm!52120 (= call!52122 (removeUselessConcat!30 (ite c!143512 (regTwo!5086 r!15766) (ite c!143516 (regOne!5086 r!15766) (ite c!143513 (regTwo!5086 r!15766) (ite c!143514 (regTwo!5087 r!15766) (reg!2616 r!15766)))))))))

(declare-fun b!887395 () Bool)

(assert (=> b!887395 (= e!581764 call!52125)))

(declare-fun b!887392 () Bool)

(assert (=> b!887392 (= e!581762 call!52122)))

(declare-fun d!277065 () Bool)

(assert (=> d!277065 e!581761))

(declare-fun res!403643 () Bool)

(assert (=> d!277065 (=> (not res!403643) (not e!581761))))

(assert (=> d!277065 (= res!403643 (validRegex!756 lt!331844))))

(assert (=> d!277065 (= lt!331844 e!581762)))

(assert (=> d!277065 (= c!143512 (and ((_ is Concat!4120) r!15766) ((_ is EmptyExpr!2287) (regOne!5086 r!15766))))))

(assert (=> d!277065 (validRegex!756 r!15766)))

(assert (=> d!277065 (= (removeUselessConcat!30 r!15766) lt!331844)))

(assert (= (and d!277065 c!143512) b!887392))

(assert (= (and d!277065 (not c!143512)) b!887393))

(assert (= (and b!887393 c!143516) b!887395))

(assert (= (and b!887393 (not c!143516)) b!887391))

(assert (= (and b!887391 c!143513) b!887385))

(assert (= (and b!887391 (not c!143513)) b!887390))

(assert (= (and b!887390 c!143514) b!887387))

(assert (= (and b!887390 (not c!143514)) b!887388))

(assert (= (and b!887388 c!143515) b!887386))

(assert (= (and b!887388 (not c!143515)) b!887394))

(assert (= (or b!887387 b!887386) bm!52117))

(assert (= (or b!887385 bm!52117) bm!52119))

(assert (= (or b!887385 b!887387) bm!52116))

(assert (= (or b!887395 bm!52119) bm!52118))

(assert (= (or b!887392 bm!52118) bm!52120))

(assert (= (and d!277065 res!403643) b!887389))

(declare-fun m!1132633 () Bool)

(assert (=> bm!52116 m!1132633))

(declare-fun m!1132635 () Bool)

(assert (=> b!887389 m!1132635))

(declare-fun m!1132637 () Bool)

(assert (=> b!887389 m!1132637))

(declare-fun m!1132639 () Bool)

(assert (=> bm!52120 m!1132639))

(declare-fun m!1132641 () Bool)

(assert (=> d!277065 m!1132641))

(assert (=> d!277065 m!1132263))

(assert (=> b!886782 d!277065))

(declare-fun b!887396 () Bool)

(declare-fun e!581771 () Bool)

(declare-fun e!581768 () Bool)

(assert (=> b!887396 (= e!581771 e!581768)))

(declare-fun res!403649 () Bool)

(assert (=> b!887396 (=> (not res!403649) (not e!581768))))

(declare-fun lt!331845 () Bool)

(assert (=> b!887396 (= res!403649 (not lt!331845))))

(declare-fun b!887397 () Bool)

(declare-fun e!581769 () Bool)

(assert (=> b!887397 (= e!581769 (matchR!825 (derivativeStep!401 (regTwo!5086 r!15766) (head!1554 (_2!6156 lt!331759))) (tail!1116 (_2!6156 lt!331759))))))

(declare-fun b!887398 () Bool)

(declare-fun res!403644 () Bool)

(declare-fun e!581767 () Bool)

(assert (=> b!887398 (=> (not res!403644) (not e!581767))))

(assert (=> b!887398 (= res!403644 (isEmpty!5709 (tail!1116 (_2!6156 lt!331759))))))

(declare-fun d!277067 () Bool)

(declare-fun e!581770 () Bool)

(assert (=> d!277067 e!581770))

(declare-fun c!143518 () Bool)

(assert (=> d!277067 (= c!143518 ((_ is EmptyExpr!2287) (regTwo!5086 r!15766)))))

(assert (=> d!277067 (= lt!331845 e!581769)))

(declare-fun c!143517 () Bool)

(assert (=> d!277067 (= c!143517 (isEmpty!5709 (_2!6156 lt!331759)))))

(assert (=> d!277067 (validRegex!756 (regTwo!5086 r!15766))))

(assert (=> d!277067 (= (matchR!825 (regTwo!5086 r!15766) (_2!6156 lt!331759)) lt!331845)))

(declare-fun b!887399 () Bool)

(declare-fun e!581766 () Bool)

(assert (=> b!887399 (= e!581768 e!581766)))

(declare-fun res!403650 () Bool)

(assert (=> b!887399 (=> res!403650 e!581766)))

(declare-fun call!52126 () Bool)

(assert (=> b!887399 (= res!403650 call!52126)))

(declare-fun b!887400 () Bool)

(declare-fun res!403647 () Bool)

(assert (=> b!887400 (=> res!403647 e!581766)))

(assert (=> b!887400 (= res!403647 (not (isEmpty!5709 (tail!1116 (_2!6156 lt!331759)))))))

(declare-fun b!887401 () Bool)

(assert (=> b!887401 (= e!581769 (nullable!589 (regTwo!5086 r!15766)))))

(declare-fun bm!52121 () Bool)

(assert (=> bm!52121 (= call!52126 (isEmpty!5709 (_2!6156 lt!331759)))))

(declare-fun b!887402 () Bool)

(declare-fun res!403646 () Bool)

(assert (=> b!887402 (=> res!403646 e!581771)))

(assert (=> b!887402 (= res!403646 (not ((_ is ElementMatch!2287) (regTwo!5086 r!15766))))))

(declare-fun e!581765 () Bool)

(assert (=> b!887402 (= e!581765 e!581771)))

(declare-fun b!887403 () Bool)

(assert (=> b!887403 (= e!581765 (not lt!331845))))

(declare-fun b!887404 () Bool)

(assert (=> b!887404 (= e!581767 (= (head!1554 (_2!6156 lt!331759)) (c!143370 (regTwo!5086 r!15766))))))

(declare-fun b!887405 () Bool)

(declare-fun res!403645 () Bool)

(assert (=> b!887405 (=> (not res!403645) (not e!581767))))

(assert (=> b!887405 (= res!403645 (not call!52126))))

(declare-fun b!887406 () Bool)

(assert (=> b!887406 (= e!581770 (= lt!331845 call!52126))))

(declare-fun b!887407 () Bool)

(assert (=> b!887407 (= e!581770 e!581765)))

(declare-fun c!143519 () Bool)

(assert (=> b!887407 (= c!143519 ((_ is EmptyLang!2287) (regTwo!5086 r!15766)))))

(declare-fun b!887408 () Bool)

(declare-fun res!403648 () Bool)

(assert (=> b!887408 (=> res!403648 e!581771)))

(assert (=> b!887408 (= res!403648 e!581767)))

(declare-fun res!403651 () Bool)

(assert (=> b!887408 (=> (not res!403651) (not e!581767))))

(assert (=> b!887408 (= res!403651 lt!331845)))

(declare-fun b!887409 () Bool)

(assert (=> b!887409 (= e!581766 (not (= (head!1554 (_2!6156 lt!331759)) (c!143370 (regTwo!5086 r!15766)))))))

(assert (= (and d!277067 c!143517) b!887401))

(assert (= (and d!277067 (not c!143517)) b!887397))

(assert (= (and d!277067 c!143518) b!887406))

(assert (= (and d!277067 (not c!143518)) b!887407))

(assert (= (and b!887407 c!143519) b!887403))

(assert (= (and b!887407 (not c!143519)) b!887402))

(assert (= (and b!887402 (not res!403646)) b!887408))

(assert (= (and b!887408 res!403651) b!887405))

(assert (= (and b!887405 res!403645) b!887398))

(assert (= (and b!887398 res!403644) b!887404))

(assert (= (and b!887408 (not res!403648)) b!887396))

(assert (= (and b!887396 res!403649) b!887399))

(assert (= (and b!887399 (not res!403650)) b!887400))

(assert (= (and b!887400 (not res!403647)) b!887409))

(assert (= (or b!887406 b!887399 b!887405) bm!52121))

(assert (=> d!277067 m!1132409))

(assert (=> d!277067 m!1132513))

(assert (=> b!887398 m!1132411))

(assert (=> b!887398 m!1132411))

(assert (=> b!887398 m!1132413))

(assert (=> bm!52121 m!1132409))

(assert (=> b!887401 m!1132507))

(assert (=> b!887404 m!1132417))

(assert (=> b!887397 m!1132417))

(assert (=> b!887397 m!1132417))

(declare-fun m!1132643 () Bool)

(assert (=> b!887397 m!1132643))

(assert (=> b!887397 m!1132411))

(assert (=> b!887397 m!1132643))

(assert (=> b!887397 m!1132411))

(declare-fun m!1132645 () Bool)

(assert (=> b!887397 m!1132645))

(assert (=> b!887409 m!1132417))

(assert (=> b!887400 m!1132411))

(assert (=> b!887400 m!1132411))

(assert (=> b!887400 m!1132413))

(assert (=> b!886784 d!277067))

(declare-fun bs!234769 () Bool)

(declare-fun b!887442 () Bool)

(assert (= bs!234769 (and b!887442 b!886788)))

(declare-fun lambda!27477 () Int)

(assert (=> bs!234769 (not (= lambda!27477 lambda!27448))))

(declare-fun bs!234770 () Bool)

(assert (= bs!234770 (and b!887442 d!277055)))

(assert (=> bs!234770 (not (= lambda!27477 lambda!27471))))

(assert (=> bs!234769 (not (= lambda!27477 lambda!27447))))

(declare-fun bs!234771 () Bool)

(assert (= bs!234771 (and b!887442 d!277047)))

(assert (=> bs!234771 (not (= lambda!27477 lambda!27466))))

(assert (=> bs!234770 (not (= lambda!27477 lambda!27472))))

(assert (=> b!887442 true))

(assert (=> b!887442 true))

(declare-fun bs!234772 () Bool)

(declare-fun b!887448 () Bool)

(assert (= bs!234772 (and b!887448 b!886788)))

(declare-fun lambda!27478 () Int)

(assert (=> bs!234772 (= lambda!27478 lambda!27448)))

(declare-fun bs!234773 () Bool)

(assert (= bs!234773 (and b!887448 d!277055)))

(assert (=> bs!234773 (not (= lambda!27478 lambda!27471))))

(declare-fun bs!234774 () Bool)

(assert (= bs!234774 (and b!887448 b!887442)))

(assert (=> bs!234774 (not (= lambda!27478 lambda!27477))))

(assert (=> bs!234772 (not (= lambda!27478 lambda!27447))))

(declare-fun bs!234775 () Bool)

(assert (= bs!234775 (and b!887448 d!277047)))

(assert (=> bs!234775 (not (= lambda!27478 lambda!27466))))

(assert (=> bs!234773 (= lambda!27478 lambda!27472)))

(assert (=> b!887448 true))

(assert (=> b!887448 true))

(declare-fun e!581794 () Bool)

(declare-fun call!52131 () Bool)

(assert (=> b!887442 (= e!581794 call!52131)))

(declare-fun b!887443 () Bool)

(declare-fun e!581792 () Bool)

(assert (=> b!887443 (= e!581792 (matchRSpec!88 (regTwo!5087 r!15766) s!10566))))

(declare-fun b!887444 () Bool)

(declare-fun e!581793 () Bool)

(declare-fun e!581796 () Bool)

(assert (=> b!887444 (= e!581793 e!581796)))

(declare-fun c!143531 () Bool)

(assert (=> b!887444 (= c!143531 ((_ is Star!2287) r!15766))))

(declare-fun b!887445 () Bool)

(declare-fun res!403670 () Bool)

(assert (=> b!887445 (=> res!403670 e!581794)))

(declare-fun call!52132 () Bool)

(assert (=> b!887445 (= res!403670 call!52132)))

(assert (=> b!887445 (= e!581796 e!581794)))

(declare-fun b!887446 () Bool)

(declare-fun c!143528 () Bool)

(assert (=> b!887446 (= c!143528 ((_ is ElementMatch!2287) r!15766))))

(declare-fun e!581795 () Bool)

(declare-fun e!581790 () Bool)

(assert (=> b!887446 (= e!581795 e!581790)))

(declare-fun b!887447 () Bool)

(declare-fun e!581791 () Bool)

(assert (=> b!887447 (= e!581791 e!581795)))

(declare-fun res!403668 () Bool)

(assert (=> b!887447 (= res!403668 (not ((_ is EmptyLang!2287) r!15766)))))

(assert (=> b!887447 (=> (not res!403668) (not e!581795))))

(declare-fun bm!52126 () Bool)

(assert (=> bm!52126 (= call!52131 (Exists!82 (ite c!143531 lambda!27477 lambda!27478)))))

(assert (=> b!887448 (= e!581796 call!52131)))

(declare-fun bm!52127 () Bool)

(assert (=> bm!52127 (= call!52132 (isEmpty!5709 s!10566))))

(declare-fun b!887449 () Bool)

(assert (=> b!887449 (= e!581790 (= s!10566 (Cons!9501 (c!143370 r!15766) Nil!9501)))))

(declare-fun d!277069 () Bool)

(declare-fun c!143530 () Bool)

(assert (=> d!277069 (= c!143530 ((_ is EmptyExpr!2287) r!15766))))

(assert (=> d!277069 (= (matchRSpec!88 r!15766 s!10566) e!581791)))

(declare-fun b!887450 () Bool)

(assert (=> b!887450 (= e!581793 e!581792)))

(declare-fun res!403669 () Bool)

(assert (=> b!887450 (= res!403669 (matchRSpec!88 (regOne!5087 r!15766) s!10566))))

(assert (=> b!887450 (=> res!403669 e!581792)))

(declare-fun b!887451 () Bool)

(assert (=> b!887451 (= e!581791 call!52132)))

(declare-fun b!887452 () Bool)

(declare-fun c!143529 () Bool)

(assert (=> b!887452 (= c!143529 ((_ is Union!2287) r!15766))))

(assert (=> b!887452 (= e!581790 e!581793)))

(assert (= (and d!277069 c!143530) b!887451))

(assert (= (and d!277069 (not c!143530)) b!887447))

(assert (= (and b!887447 res!403668) b!887446))

(assert (= (and b!887446 c!143528) b!887449))

(assert (= (and b!887446 (not c!143528)) b!887452))

(assert (= (and b!887452 c!143529) b!887450))

(assert (= (and b!887452 (not c!143529)) b!887444))

(assert (= (and b!887450 (not res!403669)) b!887443))

(assert (= (and b!887444 c!143531) b!887445))

(assert (= (and b!887444 (not c!143531)) b!887448))

(assert (= (and b!887445 (not res!403670)) b!887442))

(assert (= (or b!887442 b!887448) bm!52126))

(assert (= (or b!887451 b!887445) bm!52127))

(declare-fun m!1132647 () Bool)

(assert (=> b!887443 m!1132647))

(declare-fun m!1132649 () Bool)

(assert (=> bm!52126 m!1132649))

(assert (=> bm!52127 m!1132233))

(declare-fun m!1132651 () Bool)

(assert (=> b!887450 m!1132651))

(assert (=> b!886789 d!277069))

(declare-fun b!887453 () Bool)

(declare-fun e!581803 () Bool)

(declare-fun e!581800 () Bool)

(assert (=> b!887453 (= e!581803 e!581800)))

(declare-fun res!403676 () Bool)

(assert (=> b!887453 (=> (not res!403676) (not e!581800))))

(declare-fun lt!331846 () Bool)

(assert (=> b!887453 (= res!403676 (not lt!331846))))

(declare-fun b!887454 () Bool)

(declare-fun e!581801 () Bool)

(assert (=> b!887454 (= e!581801 (matchR!825 (derivativeStep!401 r!15766 (head!1554 s!10566)) (tail!1116 s!10566)))))

(declare-fun b!887455 () Bool)

(declare-fun res!403671 () Bool)

(declare-fun e!581799 () Bool)

(assert (=> b!887455 (=> (not res!403671) (not e!581799))))

(assert (=> b!887455 (= res!403671 (isEmpty!5709 (tail!1116 s!10566)))))

(declare-fun d!277071 () Bool)

(declare-fun e!581802 () Bool)

(assert (=> d!277071 e!581802))

(declare-fun c!143533 () Bool)

(assert (=> d!277071 (= c!143533 ((_ is EmptyExpr!2287) r!15766))))

(assert (=> d!277071 (= lt!331846 e!581801)))

(declare-fun c!143532 () Bool)

(assert (=> d!277071 (= c!143532 (isEmpty!5709 s!10566))))

(assert (=> d!277071 (validRegex!756 r!15766)))

(assert (=> d!277071 (= (matchR!825 r!15766 s!10566) lt!331846)))

(declare-fun b!887456 () Bool)

(declare-fun e!581798 () Bool)

(assert (=> b!887456 (= e!581800 e!581798)))

(declare-fun res!403677 () Bool)

(assert (=> b!887456 (=> res!403677 e!581798)))

(declare-fun call!52133 () Bool)

(assert (=> b!887456 (= res!403677 call!52133)))

(declare-fun b!887457 () Bool)

(declare-fun res!403674 () Bool)

(assert (=> b!887457 (=> res!403674 e!581798)))

(assert (=> b!887457 (= res!403674 (not (isEmpty!5709 (tail!1116 s!10566))))))

(declare-fun b!887458 () Bool)

(assert (=> b!887458 (= e!581801 (nullable!589 r!15766))))

(declare-fun bm!52128 () Bool)

(assert (=> bm!52128 (= call!52133 (isEmpty!5709 s!10566))))

(declare-fun b!887459 () Bool)

(declare-fun res!403673 () Bool)

(assert (=> b!887459 (=> res!403673 e!581803)))

(assert (=> b!887459 (= res!403673 (not ((_ is ElementMatch!2287) r!15766)))))

(declare-fun e!581797 () Bool)

(assert (=> b!887459 (= e!581797 e!581803)))

(declare-fun b!887460 () Bool)

(assert (=> b!887460 (= e!581797 (not lt!331846))))

(declare-fun b!887461 () Bool)

(assert (=> b!887461 (= e!581799 (= (head!1554 s!10566) (c!143370 r!15766)))))

(declare-fun b!887462 () Bool)

(declare-fun res!403672 () Bool)

(assert (=> b!887462 (=> (not res!403672) (not e!581799))))

(assert (=> b!887462 (= res!403672 (not call!52133))))

(declare-fun b!887463 () Bool)

(assert (=> b!887463 (= e!581802 (= lt!331846 call!52133))))

(declare-fun b!887464 () Bool)

(assert (=> b!887464 (= e!581802 e!581797)))

(declare-fun c!143534 () Bool)

(assert (=> b!887464 (= c!143534 ((_ is EmptyLang!2287) r!15766))))

(declare-fun b!887465 () Bool)

(declare-fun res!403675 () Bool)

(assert (=> b!887465 (=> res!403675 e!581803)))

(assert (=> b!887465 (= res!403675 e!581799)))

(declare-fun res!403678 () Bool)

(assert (=> b!887465 (=> (not res!403678) (not e!581799))))

(assert (=> b!887465 (= res!403678 lt!331846)))

(declare-fun b!887466 () Bool)

(assert (=> b!887466 (= e!581798 (not (= (head!1554 s!10566) (c!143370 r!15766))))))

(assert (= (and d!277071 c!143532) b!887458))

(assert (= (and d!277071 (not c!143532)) b!887454))

(assert (= (and d!277071 c!143533) b!887463))

(assert (= (and d!277071 (not c!143533)) b!887464))

(assert (= (and b!887464 c!143534) b!887460))

(assert (= (and b!887464 (not c!143534)) b!887459))

(assert (= (and b!887459 (not res!403673)) b!887465))

(assert (= (and b!887465 res!403678) b!887462))

(assert (= (and b!887462 res!403672) b!887455))

(assert (= (and b!887455 res!403671) b!887461))

(assert (= (and b!887465 (not res!403675)) b!887453))

(assert (= (and b!887453 res!403676) b!887456))

(assert (= (and b!887456 (not res!403677)) b!887457))

(assert (= (and b!887457 (not res!403674)) b!887466))

(assert (= (or b!887463 b!887456 b!887462) bm!52128))

(assert (=> d!277071 m!1132233))

(assert (=> d!277071 m!1132263))

(declare-fun m!1132653 () Bool)

(assert (=> b!887455 m!1132653))

(assert (=> b!887455 m!1132653))

(declare-fun m!1132655 () Bool)

(assert (=> b!887455 m!1132655))

(assert (=> bm!52128 m!1132233))

(assert (=> b!887458 m!1132637))

(declare-fun m!1132657 () Bool)

(assert (=> b!887461 m!1132657))

(assert (=> b!887454 m!1132657))

(assert (=> b!887454 m!1132657))

(declare-fun m!1132659 () Bool)

(assert (=> b!887454 m!1132659))

(assert (=> b!887454 m!1132653))

(assert (=> b!887454 m!1132659))

(assert (=> b!887454 m!1132653))

(declare-fun m!1132661 () Bool)

(assert (=> b!887454 m!1132661))

(assert (=> b!887466 m!1132657))

(assert (=> b!887457 m!1132653))

(assert (=> b!887457 m!1132653))

(assert (=> b!887457 m!1132655))

(assert (=> b!886789 d!277071))

(declare-fun d!277073 () Bool)

(assert (=> d!277073 (= (matchR!825 r!15766 s!10566) (matchRSpec!88 r!15766 s!10566))))

(declare-fun lt!331849 () Unit!14153)

(declare-fun choose!5290 (Regex!2287 List!9517) Unit!14153)

(assert (=> d!277073 (= lt!331849 (choose!5290 r!15766 s!10566))))

(assert (=> d!277073 (validRegex!756 r!15766)))

(assert (=> d!277073 (= (mainMatchTheorem!88 r!15766 s!10566) lt!331849)))

(declare-fun bs!234776 () Bool)

(assert (= bs!234776 d!277073))

(assert (=> bs!234776 m!1132243))

(assert (=> bs!234776 m!1132241))

(declare-fun m!1132663 () Bool)

(assert (=> bs!234776 m!1132663))

(assert (=> bs!234776 m!1132263))

(assert (=> b!886789 d!277073))

(declare-fun b!887471 () Bool)

(declare-fun e!581806 () Bool)

(declare-fun tp!279569 () Bool)

(assert (=> b!887471 (= e!581806 (and tp_is_empty!4217 tp!279569))))

(assert (=> b!886791 (= tp!279523 e!581806)))

(assert (= (and b!886791 ((_ is Cons!9501) (t!100563 s!10566))) b!887471))

(declare-fun b!887482 () Bool)

(declare-fun e!581809 () Bool)

(assert (=> b!887482 (= e!581809 tp_is_empty!4217)))

(assert (=> b!886780 (= tp!279527 e!581809)))

(declare-fun b!887483 () Bool)

(declare-fun tp!279581 () Bool)

(declare-fun tp!279580 () Bool)

(assert (=> b!887483 (= e!581809 (and tp!279581 tp!279580))))

(declare-fun b!887484 () Bool)

(declare-fun tp!279583 () Bool)

(assert (=> b!887484 (= e!581809 tp!279583)))

(declare-fun b!887485 () Bool)

(declare-fun tp!279582 () Bool)

(declare-fun tp!279584 () Bool)

(assert (=> b!887485 (= e!581809 (and tp!279582 tp!279584))))

(assert (= (and b!886780 ((_ is ElementMatch!2287) (reg!2616 r!15766))) b!887482))

(assert (= (and b!886780 ((_ is Concat!4120) (reg!2616 r!15766))) b!887483))

(assert (= (and b!886780 ((_ is Star!2287) (reg!2616 r!15766))) b!887484))

(assert (= (and b!886780 ((_ is Union!2287) (reg!2616 r!15766))) b!887485))

(declare-fun b!887486 () Bool)

(declare-fun e!581810 () Bool)

(assert (=> b!887486 (= e!581810 tp_is_empty!4217)))

(assert (=> b!886787 (= tp!279524 e!581810)))

(declare-fun b!887487 () Bool)

(declare-fun tp!279586 () Bool)

(declare-fun tp!279585 () Bool)

(assert (=> b!887487 (= e!581810 (and tp!279586 tp!279585))))

(declare-fun b!887488 () Bool)

(declare-fun tp!279588 () Bool)

(assert (=> b!887488 (= e!581810 tp!279588)))

(declare-fun b!887489 () Bool)

(declare-fun tp!279587 () Bool)

(declare-fun tp!279589 () Bool)

(assert (=> b!887489 (= e!581810 (and tp!279587 tp!279589))))

(assert (= (and b!886787 ((_ is ElementMatch!2287) (regOne!5086 r!15766))) b!887486))

(assert (= (and b!886787 ((_ is Concat!4120) (regOne!5086 r!15766))) b!887487))

(assert (= (and b!886787 ((_ is Star!2287) (regOne!5086 r!15766))) b!887488))

(assert (= (and b!886787 ((_ is Union!2287) (regOne!5086 r!15766))) b!887489))

(declare-fun b!887490 () Bool)

(declare-fun e!581811 () Bool)

(assert (=> b!887490 (= e!581811 tp_is_empty!4217)))

(assert (=> b!886787 (= tp!279528 e!581811)))

(declare-fun b!887491 () Bool)

(declare-fun tp!279591 () Bool)

(declare-fun tp!279590 () Bool)

(assert (=> b!887491 (= e!581811 (and tp!279591 tp!279590))))

(declare-fun b!887492 () Bool)

(declare-fun tp!279593 () Bool)

(assert (=> b!887492 (= e!581811 tp!279593)))

(declare-fun b!887493 () Bool)

(declare-fun tp!279592 () Bool)

(declare-fun tp!279594 () Bool)

(assert (=> b!887493 (= e!581811 (and tp!279592 tp!279594))))

(assert (= (and b!886787 ((_ is ElementMatch!2287) (regTwo!5086 r!15766))) b!887490))

(assert (= (and b!886787 ((_ is Concat!4120) (regTwo!5086 r!15766))) b!887491))

(assert (= (and b!886787 ((_ is Star!2287) (regTwo!5086 r!15766))) b!887492))

(assert (= (and b!886787 ((_ is Union!2287) (regTwo!5086 r!15766))) b!887493))

(declare-fun b!887494 () Bool)

(declare-fun e!581812 () Bool)

(assert (=> b!887494 (= e!581812 tp_is_empty!4217)))

(assert (=> b!886783 (= tp!279525 e!581812)))

(declare-fun b!887495 () Bool)

(declare-fun tp!279596 () Bool)

(declare-fun tp!279595 () Bool)

(assert (=> b!887495 (= e!581812 (and tp!279596 tp!279595))))

(declare-fun b!887496 () Bool)

(declare-fun tp!279598 () Bool)

(assert (=> b!887496 (= e!581812 tp!279598)))

(declare-fun b!887497 () Bool)

(declare-fun tp!279597 () Bool)

(declare-fun tp!279599 () Bool)

(assert (=> b!887497 (= e!581812 (and tp!279597 tp!279599))))

(assert (= (and b!886783 ((_ is ElementMatch!2287) (regOne!5087 r!15766))) b!887494))

(assert (= (and b!886783 ((_ is Concat!4120) (regOne!5087 r!15766))) b!887495))

(assert (= (and b!886783 ((_ is Star!2287) (regOne!5087 r!15766))) b!887496))

(assert (= (and b!886783 ((_ is Union!2287) (regOne!5087 r!15766))) b!887497))

(declare-fun b!887498 () Bool)

(declare-fun e!581813 () Bool)

(assert (=> b!887498 (= e!581813 tp_is_empty!4217)))

(assert (=> b!886783 (= tp!279526 e!581813)))

(declare-fun b!887499 () Bool)

(declare-fun tp!279601 () Bool)

(declare-fun tp!279600 () Bool)

(assert (=> b!887499 (= e!581813 (and tp!279601 tp!279600))))

(declare-fun b!887500 () Bool)

(declare-fun tp!279603 () Bool)

(assert (=> b!887500 (= e!581813 tp!279603)))

(declare-fun b!887501 () Bool)

(declare-fun tp!279602 () Bool)

(declare-fun tp!279604 () Bool)

(assert (=> b!887501 (= e!581813 (and tp!279602 tp!279604))))

(assert (= (and b!886783 ((_ is ElementMatch!2287) (regTwo!5087 r!15766))) b!887498))

(assert (= (and b!886783 ((_ is Concat!4120) (regTwo!5087 r!15766))) b!887499))

(assert (= (and b!886783 ((_ is Star!2287) (regTwo!5087 r!15766))) b!887500))

(assert (= (and b!886783 ((_ is Union!2287) (regTwo!5087 r!15766))) b!887501))

(check-sat (not bm!52044) (not d!277065) (not b!887501) (not b!887455) (not b!887044) (not b!887404) (not b!887032) (not b!887257) (not d!277049) (not b!887360) (not b!887067) (not b!887397) (not b!887351) (not bm!52120) (not d!277047) (not b!887457) (not bm!52060) (not b!887500) (not b!887487) (not b!887059) (not bm!52023) tp_is_empty!4217 (not bm!52114) (not b!887458) (not bm!52112) (not b!887035) (not d!277051) (not b!887332) (not b!886966) (not b!887443) (not bm!52098) (not bm!52121) (not d!277061) (not d!277011) (not b!887471) (not b!887499) (not b!887295) (not bm!52128) (not b!886970) (not b!886967) (not b!887495) (not b!887483) (not b!887333) (not b!887466) (not d!277037) (not b!887221) (not b!887450) (not b!887377) (not d!277045) (not bm!52053) (not bm!52110) (not b!887331) (not bm!52116) (not b!886969) (not d!277071) (not b!887009) (not b!887493) (not d!277005) (not b!887334) (not bm!52064) (not b!887355) (not b!887492) (not d!277053) (not b!887036) (not b!887039) (not d!277055) (not b!887488) (not b!887374) (not b!887056) (not bm!52022) (not b!887454) (not bm!52052) (not b!887363) (not b!887058) (not b!887401) (not b!887461) (not b!887398) (not bm!52104) (not b!887484) (not b!887496) (not b!887400) (not b!886978) (not b!887055) (not d!277073) (not d!277067) (not b!887348) (not b!887335) (not b!887485) (not b!887338) (not d!276983) (not bm!52126) (not bm!52094) (not b!887033) (not b!887352) (not bm!52111) (not b!887497) (not b!887409) (not d!277059) (not b!887373) (not b!887491) (not b!886973) (not b!887349) (not d!277039) (not b!887489) (not b!887062) (not b!886854) (not b!887389) (not d!277003) (not bm!52115) (not bm!52108) (not d!277031) (not bm!52127) (not d!277057))
(check-sat)
