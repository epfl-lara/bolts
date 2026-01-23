; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88538 () Bool)

(assert start!88538)

(declare-fun b!1016781 () Bool)

(assert (=> b!1016781 true))

(assert (=> b!1016781 true))

(assert (=> b!1016781 true))

(declare-fun lambda!36018 () Int)

(declare-fun lambda!36017 () Int)

(assert (=> b!1016781 (not (= lambda!36018 lambda!36017))))

(assert (=> b!1016781 true))

(assert (=> b!1016781 true))

(assert (=> b!1016781 true))

(declare-fun b!1016776 () Bool)

(declare-fun e!649795 () Bool)

(declare-fun tp!309273 () Bool)

(declare-fun tp!309271 () Bool)

(assert (=> b!1016776 (= e!649795 (and tp!309273 tp!309271))))

(declare-fun b!1016777 () Bool)

(declare-fun res!457000 () Bool)

(declare-fun e!649796 () Bool)

(assert (=> b!1016777 (=> res!457000 e!649796)))

(declare-datatypes ((C!6172 0))(
  ( (C!6173 (val!3334 Int)) )
))
(declare-datatypes ((Regex!2801 0))(
  ( (ElementMatch!2801 (c!168414 C!6172)) (Concat!4634 (regOne!6114 Regex!2801) (regTwo!6114 Regex!2801)) (EmptyExpr!2801) (Star!2801 (reg!3130 Regex!2801)) (EmptyLang!2801) (Union!2801 (regOne!6115 Regex!2801) (regTwo!6115 Regex!2801)) )
))
(declare-fun lt!353698 () Regex!2801)

(declare-datatypes ((List!10031 0))(
  ( (Nil!10015) (Cons!10015 (h!15416 C!6172) (t!101077 List!10031)) )
))
(declare-datatypes ((tuple2!11396 0))(
  ( (tuple2!11397 (_1!6524 List!10031) (_2!6524 List!10031)) )
))
(declare-fun lt!353708 () tuple2!11396)

(declare-fun matchR!1337 (Regex!2801 List!10031) Bool)

(assert (=> b!1016777 (= res!457000 (not (matchR!1337 lt!353698 (_2!6524 lt!353708))))))

(declare-fun b!1016778 () Bool)

(declare-fun e!649797 () Bool)

(declare-fun tp_is_empty!5245 () Bool)

(declare-fun tp!309274 () Bool)

(assert (=> b!1016778 (= e!649797 (and tp_is_empty!5245 tp!309274))))

(declare-fun b!1016779 () Bool)

(declare-fun e!649794 () Bool)

(assert (=> b!1016779 (= e!649794 e!649796)))

(declare-fun res!456994 () Bool)

(assert (=> b!1016779 (=> res!456994 e!649796)))

(declare-fun lt!353707 () Regex!2801)

(assert (=> b!1016779 (= res!456994 (not (= lt!353707 lt!353698)))))

(declare-fun lt!353712 () Regex!2801)

(assert (=> b!1016779 (= lt!353698 (Star!2801 lt!353712))))

(assert (=> b!1016779 (matchR!1337 lt!353707 (_2!6524 lt!353708))))

(declare-fun lt!353703 () Regex!2801)

(declare-fun removeUselessConcat!382 (Regex!2801) Regex!2801)

(assert (=> b!1016779 (= lt!353707 (removeUselessConcat!382 lt!353703))))

(declare-datatypes ((Unit!15275 0))(
  ( (Unit!15276) )
))
(declare-fun lt!353702 () Unit!15275)

(declare-fun lemmaRemoveUselessConcatSound!226 (Regex!2801 List!10031) Unit!15275)

(assert (=> b!1016779 (= lt!353702 (lemmaRemoveUselessConcatSound!226 lt!353703 (_2!6524 lt!353708)))))

(declare-fun lt!353713 () Unit!15275)

(declare-fun e!649792 () Unit!15275)

(assert (=> b!1016779 (= lt!353713 e!649792)))

(declare-fun c!168413 () Bool)

(declare-fun s!10566 () List!10031)

(declare-fun size!7977 (List!10031) Int)

(assert (=> b!1016779 (= c!168413 (= (size!7977 (_2!6524 lt!353708)) (size!7977 s!10566)))))

(assert (=> b!1016779 (matchR!1337 lt!353712 (_1!6524 lt!353708))))

(declare-fun r!15766 () Regex!2801)

(assert (=> b!1016779 (= lt!353712 (removeUselessConcat!382 (reg!3130 r!15766)))))

(declare-fun lt!353704 () Unit!15275)

(assert (=> b!1016779 (= lt!353704 (lemmaRemoveUselessConcatSound!226 (reg!3130 r!15766) (_1!6524 lt!353708)))))

(declare-fun b!1016780 () Bool)

(assert (=> b!1016780 (= e!649795 tp_is_empty!5245)))

(declare-fun e!649793 () Bool)

(declare-fun e!649790 () Bool)

(assert (=> b!1016781 (= e!649793 e!649790)))

(declare-fun res!456992 () Bool)

(assert (=> b!1016781 (=> res!456992 e!649790)))

(declare-fun isEmpty!6364 (List!10031) Bool)

(assert (=> b!1016781 (= res!456992 (isEmpty!6364 s!10566))))

(declare-fun Exists!534 (Int) Bool)

(assert (=> b!1016781 (= (Exists!534 lambda!36017) (Exists!534 lambda!36018))))

(declare-fun lt!353706 () Unit!15275)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!172 (Regex!2801 List!10031) Unit!15275)

(assert (=> b!1016781 (= lt!353706 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!172 (reg!3130 r!15766) s!10566))))

(declare-fun lt!353700 () Bool)

(assert (=> b!1016781 (= lt!353700 (Exists!534 lambda!36017))))

(declare-datatypes ((Option!2340 0))(
  ( (None!2339) (Some!2339 (v!19756 tuple2!11396)) )
))
(declare-fun lt!353701 () Option!2340)

(declare-fun isDefined!1982 (Option!2340) Bool)

(assert (=> b!1016781 (= lt!353700 (isDefined!1982 lt!353701))))

(declare-fun findConcatSeparation!446 (Regex!2801 Regex!2801 List!10031 List!10031 List!10031) Option!2340)

(assert (=> b!1016781 (= lt!353701 (findConcatSeparation!446 (reg!3130 r!15766) lt!353703 Nil!10015 s!10566 s!10566))))

(declare-fun lt!353699 () Unit!15275)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!446 (Regex!2801 Regex!2801 List!10031) Unit!15275)

(assert (=> b!1016781 (= lt!353699 (lemmaFindConcatSeparationEquivalentToExists!446 (reg!3130 r!15766) lt!353703 s!10566))))

(assert (=> b!1016781 (= lt!353703 (Star!2801 (reg!3130 r!15766)))))

(declare-fun res!456997 () Bool)

(declare-fun e!649791 () Bool)

(assert (=> start!88538 (=> (not res!456997) (not e!649791))))

(declare-fun validRegex!1270 (Regex!2801) Bool)

(assert (=> start!88538 (= res!456997 (validRegex!1270 r!15766))))

(assert (=> start!88538 e!649791))

(assert (=> start!88538 e!649795))

(assert (=> start!88538 e!649797))

(declare-fun b!1016782 () Bool)

(assert (=> b!1016782 (= e!649790 e!649794)))

(declare-fun res!456996 () Bool)

(assert (=> b!1016782 (=> res!456996 e!649794)))

(assert (=> b!1016782 (= res!456996 (not (matchR!1337 (reg!3130 r!15766) (_1!6524 lt!353708))))))

(declare-fun get!3516 (Option!2340) tuple2!11396)

(assert (=> b!1016782 (= lt!353708 (get!3516 lt!353701))))

(declare-fun b!1016783 () Bool)

(declare-fun Unit!15277 () Unit!15275)

(assert (=> b!1016783 (= e!649792 Unit!15277)))

(declare-fun b!1016784 () Bool)

(declare-fun res!456993 () Bool)

(assert (=> b!1016784 (=> res!456993 e!649790)))

(assert (=> b!1016784 (= res!456993 (not lt!353700))))

(declare-fun b!1016785 () Bool)

(assert (=> b!1016785 (= e!649791 (not e!649793))))

(declare-fun res!456998 () Bool)

(assert (=> b!1016785 (=> res!456998 e!649793)))

(declare-fun lt!353705 () Bool)

(get-info :version)

(assert (=> b!1016785 (= res!456998 (or (not lt!353705) (and ((_ is Concat!4634) r!15766) ((_ is EmptyExpr!2801) (regOne!6114 r!15766))) (and ((_ is Concat!4634) r!15766) ((_ is EmptyExpr!2801) (regTwo!6114 r!15766))) ((_ is Concat!4634) r!15766) ((_ is Union!2801) r!15766) (not ((_ is Star!2801) r!15766))))))

(declare-fun matchRSpec!600 (Regex!2801 List!10031) Bool)

(assert (=> b!1016785 (= lt!353705 (matchRSpec!600 r!15766 s!10566))))

(assert (=> b!1016785 (= lt!353705 (matchR!1337 r!15766 s!10566))))

(declare-fun lt!353709 () Unit!15275)

(declare-fun mainMatchTheorem!600 (Regex!2801 List!10031) Unit!15275)

(assert (=> b!1016785 (= lt!353709 (mainMatchTheorem!600 r!15766 s!10566))))

(declare-fun b!1016786 () Bool)

(assert (=> b!1016786 (= e!649796 (matchR!1337 (removeUselessConcat!382 r!15766) s!10566))))

(declare-fun ++!2732 (List!10031 List!10031) List!10031)

(assert (=> b!1016786 (matchR!1337 lt!353698 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708)))))

(declare-fun lt!353710 () Unit!15275)

(declare-fun lemmaStarApp!10 (Regex!2801 List!10031 List!10031) Unit!15275)

(assert (=> b!1016786 (= lt!353710 (lemmaStarApp!10 lt!353712 (_1!6524 lt!353708) (_2!6524 lt!353708)))))

(declare-fun b!1016787 () Bool)

(declare-fun tp!309272 () Bool)

(assert (=> b!1016787 (= e!649795 tp!309272)))

(declare-fun b!1016788 () Bool)

(declare-fun tp!309275 () Bool)

(declare-fun tp!309276 () Bool)

(assert (=> b!1016788 (= e!649795 (and tp!309275 tp!309276))))

(declare-fun b!1016789 () Bool)

(declare-fun Unit!15278 () Unit!15275)

(assert (=> b!1016789 (= e!649792 Unit!15278)))

(declare-fun lt!353711 () Unit!15275)

(assert (=> b!1016789 (= lt!353711 (mainMatchTheorem!600 (reg!3130 r!15766) (_1!6524 lt!353708)))))

(assert (=> b!1016789 false))

(declare-fun b!1016790 () Bool)

(declare-fun res!456995 () Bool)

(assert (=> b!1016790 (=> res!456995 e!649794)))

(assert (=> b!1016790 (= res!456995 (not (matchR!1337 lt!353703 (_2!6524 lt!353708))))))

(declare-fun b!1016791 () Bool)

(declare-fun res!456999 () Bool)

(assert (=> b!1016791 (=> res!456999 e!649796)))

(assert (=> b!1016791 (= res!456999 (not (validRegex!1270 lt!353698)))))

(assert (= (and start!88538 res!456997) b!1016785))

(assert (= (and b!1016785 (not res!456998)) b!1016781))

(assert (= (and b!1016781 (not res!456992)) b!1016784))

(assert (= (and b!1016784 (not res!456993)) b!1016782))

(assert (= (and b!1016782 (not res!456996)) b!1016790))

(assert (= (and b!1016790 (not res!456995)) b!1016779))

(assert (= (and b!1016779 c!168413) b!1016789))

(assert (= (and b!1016779 (not c!168413)) b!1016783))

(assert (= (and b!1016779 (not res!456994)) b!1016777))

(assert (= (and b!1016777 (not res!457000)) b!1016791))

(assert (= (and b!1016791 (not res!456999)) b!1016786))

(assert (= (and start!88538 ((_ is ElementMatch!2801) r!15766)) b!1016780))

(assert (= (and start!88538 ((_ is Concat!4634) r!15766)) b!1016788))

(assert (= (and start!88538 ((_ is Star!2801) r!15766)) b!1016787))

(assert (= (and start!88538 ((_ is Union!2801) r!15766)) b!1016776))

(assert (= (and start!88538 ((_ is Cons!10015) s!10566)) b!1016778))

(declare-fun m!1198229 () Bool)

(assert (=> start!88538 m!1198229))

(declare-fun m!1198231 () Bool)

(assert (=> b!1016785 m!1198231))

(declare-fun m!1198233 () Bool)

(assert (=> b!1016785 m!1198233))

(declare-fun m!1198235 () Bool)

(assert (=> b!1016785 m!1198235))

(declare-fun m!1198237 () Bool)

(assert (=> b!1016777 m!1198237))

(declare-fun m!1198239 () Bool)

(assert (=> b!1016779 m!1198239))

(declare-fun m!1198241 () Bool)

(assert (=> b!1016779 m!1198241))

(declare-fun m!1198243 () Bool)

(assert (=> b!1016779 m!1198243))

(declare-fun m!1198245 () Bool)

(assert (=> b!1016779 m!1198245))

(declare-fun m!1198247 () Bool)

(assert (=> b!1016779 m!1198247))

(declare-fun m!1198249 () Bool)

(assert (=> b!1016779 m!1198249))

(declare-fun m!1198251 () Bool)

(assert (=> b!1016779 m!1198251))

(declare-fun m!1198253 () Bool)

(assert (=> b!1016779 m!1198253))

(declare-fun m!1198255 () Bool)

(assert (=> b!1016786 m!1198255))

(assert (=> b!1016786 m!1198255))

(declare-fun m!1198257 () Bool)

(assert (=> b!1016786 m!1198257))

(declare-fun m!1198259 () Bool)

(assert (=> b!1016786 m!1198259))

(declare-fun m!1198261 () Bool)

(assert (=> b!1016786 m!1198261))

(assert (=> b!1016786 m!1198259))

(declare-fun m!1198263 () Bool)

(assert (=> b!1016786 m!1198263))

(declare-fun m!1198265 () Bool)

(assert (=> b!1016791 m!1198265))

(declare-fun m!1198267 () Bool)

(assert (=> b!1016789 m!1198267))

(declare-fun m!1198269 () Bool)

(assert (=> b!1016782 m!1198269))

(declare-fun m!1198271 () Bool)

(assert (=> b!1016782 m!1198271))

(declare-fun m!1198273 () Bool)

(assert (=> b!1016781 m!1198273))

(declare-fun m!1198275 () Bool)

(assert (=> b!1016781 m!1198275))

(declare-fun m!1198277 () Bool)

(assert (=> b!1016781 m!1198277))

(declare-fun m!1198279 () Bool)

(assert (=> b!1016781 m!1198279))

(declare-fun m!1198281 () Bool)

(assert (=> b!1016781 m!1198281))

(declare-fun m!1198283 () Bool)

(assert (=> b!1016781 m!1198283))

(declare-fun m!1198285 () Bool)

(assert (=> b!1016781 m!1198285))

(assert (=> b!1016781 m!1198279))

(declare-fun m!1198287 () Bool)

(assert (=> b!1016790 m!1198287))

(check-sat (not b!1016786) (not b!1016791) (not b!1016782) (not b!1016790) (not b!1016776) (not b!1016778) (not b!1016787) (not b!1016781) (not b!1016789) (not start!88538) (not b!1016777) (not b!1016788) (not b!1016785) tp_is_empty!5245 (not b!1016779))
(check-sat)
(get-model)

(declare-fun call!69394 () Bool)

(declare-fun bm!69389 () Bool)

(declare-fun c!168434 () Bool)

(declare-fun c!168435 () Bool)

(assert (=> bm!69389 (= call!69394 (validRegex!1270 (ite c!168435 (reg!3130 lt!353698) (ite c!168434 (regOne!6115 lt!353698) (regOne!6114 lt!353698)))))))

(declare-fun bm!69390 () Bool)

(declare-fun call!69395 () Bool)

(assert (=> bm!69390 (= call!69395 call!69394)))

(declare-fun b!1016883 () Bool)

(declare-fun e!649855 () Bool)

(declare-fun e!649856 () Bool)

(assert (=> b!1016883 (= e!649855 e!649856)))

(assert (=> b!1016883 (= c!168434 ((_ is Union!2801) lt!353698))))

(declare-fun d!293974 () Bool)

(declare-fun res!457054 () Bool)

(declare-fun e!649859 () Bool)

(assert (=> d!293974 (=> res!457054 e!649859)))

(assert (=> d!293974 (= res!457054 ((_ is ElementMatch!2801) lt!353698))))

(assert (=> d!293974 (= (validRegex!1270 lt!353698) e!649859)))

(declare-fun b!1016884 () Bool)

(declare-fun res!457050 () Bool)

(declare-fun e!649854 () Bool)

(assert (=> b!1016884 (=> res!457050 e!649854)))

(assert (=> b!1016884 (= res!457050 (not ((_ is Concat!4634) lt!353698)))))

(assert (=> b!1016884 (= e!649856 e!649854)))

(declare-fun b!1016885 () Bool)

(declare-fun e!649858 () Bool)

(assert (=> b!1016885 (= e!649858 call!69394)))

(declare-fun b!1016886 () Bool)

(declare-fun res!457053 () Bool)

(declare-fun e!649860 () Bool)

(assert (=> b!1016886 (=> (not res!457053) (not e!649860))))

(assert (=> b!1016886 (= res!457053 call!69395)))

(assert (=> b!1016886 (= e!649856 e!649860)))

(declare-fun b!1016887 () Bool)

(declare-fun e!649857 () Bool)

(declare-fun call!69396 () Bool)

(assert (=> b!1016887 (= e!649857 call!69396)))

(declare-fun b!1016888 () Bool)

(assert (=> b!1016888 (= e!649860 call!69396)))

(declare-fun b!1016889 () Bool)

(assert (=> b!1016889 (= e!649854 e!649857)))

(declare-fun res!457052 () Bool)

(assert (=> b!1016889 (=> (not res!457052) (not e!649857))))

(assert (=> b!1016889 (= res!457052 call!69395)))

(declare-fun b!1016890 () Bool)

(assert (=> b!1016890 (= e!649855 e!649858)))

(declare-fun res!457051 () Bool)

(declare-fun nullable!911 (Regex!2801) Bool)

(assert (=> b!1016890 (= res!457051 (not (nullable!911 (reg!3130 lt!353698))))))

(assert (=> b!1016890 (=> (not res!457051) (not e!649858))))

(declare-fun bm!69391 () Bool)

(assert (=> bm!69391 (= call!69396 (validRegex!1270 (ite c!168434 (regTwo!6115 lt!353698) (regTwo!6114 lt!353698))))))

(declare-fun b!1016891 () Bool)

(assert (=> b!1016891 (= e!649859 e!649855)))

(assert (=> b!1016891 (= c!168435 ((_ is Star!2801) lt!353698))))

(assert (= (and d!293974 (not res!457054)) b!1016891))

(assert (= (and b!1016891 c!168435) b!1016890))

(assert (= (and b!1016891 (not c!168435)) b!1016883))

(assert (= (and b!1016890 res!457051) b!1016885))

(assert (= (and b!1016883 c!168434) b!1016886))

(assert (= (and b!1016883 (not c!168434)) b!1016884))

(assert (= (and b!1016886 res!457053) b!1016888))

(assert (= (and b!1016884 (not res!457050)) b!1016889))

(assert (= (and b!1016889 res!457052) b!1016887))

(assert (= (or b!1016888 b!1016887) bm!69391))

(assert (= (or b!1016886 b!1016889) bm!69390))

(assert (= (or b!1016885 bm!69390) bm!69389))

(declare-fun m!1198309 () Bool)

(assert (=> bm!69389 m!1198309))

(declare-fun m!1198311 () Bool)

(assert (=> b!1016890 m!1198311))

(declare-fun m!1198313 () Bool)

(assert (=> bm!69391 m!1198313))

(assert (=> b!1016791 d!293974))

(declare-fun d!293982 () Bool)

(assert (=> d!293982 (= (isEmpty!6364 s!10566) ((_ is Nil!10015) s!10566))))

(assert (=> b!1016781 d!293982))

(declare-fun d!293984 () Bool)

(declare-fun isEmpty!6366 (Option!2340) Bool)

(assert (=> d!293984 (= (isDefined!1982 lt!353701) (not (isEmpty!6366 lt!353701)))))

(declare-fun bs!246472 () Bool)

(assert (= bs!246472 d!293984))

(declare-fun m!1198315 () Bool)

(assert (=> bs!246472 m!1198315))

(assert (=> b!1016781 d!293984))

(declare-fun bs!246478 () Bool)

(declare-fun d!293986 () Bool)

(assert (= bs!246478 (and d!293986 b!1016781)))

(declare-fun lambda!36029 () Int)

(assert (=> bs!246478 (= (= (Star!2801 (reg!3130 r!15766)) lt!353703) (= lambda!36029 lambda!36017))))

(assert (=> bs!246478 (not (= lambda!36029 lambda!36018))))

(assert (=> d!293986 true))

(assert (=> d!293986 true))

(declare-fun lambda!36032 () Int)

(assert (=> bs!246478 (not (= lambda!36032 lambda!36017))))

(assert (=> bs!246478 (= (= (Star!2801 (reg!3130 r!15766)) lt!353703) (= lambda!36032 lambda!36018))))

(declare-fun bs!246480 () Bool)

(assert (= bs!246480 d!293986))

(assert (=> bs!246480 (not (= lambda!36032 lambda!36029))))

(assert (=> d!293986 true))

(assert (=> d!293986 true))

(assert (=> d!293986 (= (Exists!534 lambda!36029) (Exists!534 lambda!36032))))

(declare-fun lt!353731 () Unit!15275)

(declare-fun choose!6422 (Regex!2801 List!10031) Unit!15275)

(assert (=> d!293986 (= lt!353731 (choose!6422 (reg!3130 r!15766) s!10566))))

(assert (=> d!293986 (validRegex!1270 (reg!3130 r!15766))))

(assert (=> d!293986 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!172 (reg!3130 r!15766) s!10566) lt!353731)))

(declare-fun m!1198353 () Bool)

(assert (=> bs!246480 m!1198353))

(declare-fun m!1198357 () Bool)

(assert (=> bs!246480 m!1198357))

(declare-fun m!1198361 () Bool)

(assert (=> bs!246480 m!1198361))

(declare-fun m!1198363 () Bool)

(assert (=> bs!246480 m!1198363))

(assert (=> b!1016781 d!293986))

(declare-fun b!1017129 () Bool)

(declare-fun e!649989 () Option!2340)

(assert (=> b!1017129 (= e!649989 (Some!2339 (tuple2!11397 Nil!10015 s!10566)))))

(declare-fun b!1017130 () Bool)

(declare-fun e!649988 () Bool)

(declare-fun lt!353771 () Option!2340)

(assert (=> b!1017130 (= e!649988 (not (isDefined!1982 lt!353771)))))

(declare-fun b!1017131 () Bool)

(declare-fun res!457168 () Bool)

(declare-fun e!649987 () Bool)

(assert (=> b!1017131 (=> (not res!457168) (not e!649987))))

(assert (=> b!1017131 (= res!457168 (matchR!1337 (reg!3130 r!15766) (_1!6524 (get!3516 lt!353771))))))

(declare-fun b!1017132 () Bool)

(declare-fun res!457169 () Bool)

(assert (=> b!1017132 (=> (not res!457169) (not e!649987))))

(assert (=> b!1017132 (= res!457169 (matchR!1337 lt!353703 (_2!6524 (get!3516 lt!353771))))))

(declare-fun b!1017133 () Bool)

(declare-fun lt!353770 () Unit!15275)

(declare-fun lt!353769 () Unit!15275)

(assert (=> b!1017133 (= lt!353770 lt!353769)))

(assert (=> b!1017133 (= (++!2732 (++!2732 Nil!10015 (Cons!10015 (h!15416 s!10566) Nil!10015)) (t!101077 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!332 (List!10031 C!6172 List!10031 List!10031) Unit!15275)

(assert (=> b!1017133 (= lt!353769 (lemmaMoveElementToOtherListKeepsConcatEq!332 Nil!10015 (h!15416 s!10566) (t!101077 s!10566) s!10566))))

(declare-fun e!649986 () Option!2340)

(assert (=> b!1017133 (= e!649986 (findConcatSeparation!446 (reg!3130 r!15766) lt!353703 (++!2732 Nil!10015 (Cons!10015 (h!15416 s!10566) Nil!10015)) (t!101077 s!10566) s!10566))))

(declare-fun d!294002 () Bool)

(assert (=> d!294002 e!649988))

(declare-fun res!457171 () Bool)

(assert (=> d!294002 (=> res!457171 e!649988)))

(assert (=> d!294002 (= res!457171 e!649987)))

(declare-fun res!457172 () Bool)

(assert (=> d!294002 (=> (not res!457172) (not e!649987))))

(assert (=> d!294002 (= res!457172 (isDefined!1982 lt!353771))))

(assert (=> d!294002 (= lt!353771 e!649989)))

(declare-fun c!168498 () Bool)

(declare-fun e!649985 () Bool)

(assert (=> d!294002 (= c!168498 e!649985)))

(declare-fun res!457170 () Bool)

(assert (=> d!294002 (=> (not res!457170) (not e!649985))))

(assert (=> d!294002 (= res!457170 (matchR!1337 (reg!3130 r!15766) Nil!10015))))

(assert (=> d!294002 (validRegex!1270 (reg!3130 r!15766))))

(assert (=> d!294002 (= (findConcatSeparation!446 (reg!3130 r!15766) lt!353703 Nil!10015 s!10566 s!10566) lt!353771)))

(declare-fun b!1017134 () Bool)

(assert (=> b!1017134 (= e!649989 e!649986)))

(declare-fun c!168499 () Bool)

(assert (=> b!1017134 (= c!168499 ((_ is Nil!10015) s!10566))))

(declare-fun b!1017135 () Bool)

(assert (=> b!1017135 (= e!649986 None!2339)))

(declare-fun b!1017136 () Bool)

(assert (=> b!1017136 (= e!649985 (matchR!1337 lt!353703 s!10566))))

(declare-fun b!1017137 () Bool)

(assert (=> b!1017137 (= e!649987 (= (++!2732 (_1!6524 (get!3516 lt!353771)) (_2!6524 (get!3516 lt!353771))) s!10566))))

(assert (= (and d!294002 res!457170) b!1017136))

(assert (= (and d!294002 c!168498) b!1017129))

(assert (= (and d!294002 (not c!168498)) b!1017134))

(assert (= (and b!1017134 c!168499) b!1017135))

(assert (= (and b!1017134 (not c!168499)) b!1017133))

(assert (= (and d!294002 res!457172) b!1017131))

(assert (= (and b!1017131 res!457168) b!1017132))

(assert (= (and b!1017132 res!457169) b!1017137))

(assert (= (and d!294002 (not res!457171)) b!1017130))

(declare-fun m!1198495 () Bool)

(assert (=> b!1017137 m!1198495))

(declare-fun m!1198497 () Bool)

(assert (=> b!1017137 m!1198497))

(declare-fun m!1198499 () Bool)

(assert (=> b!1017136 m!1198499))

(declare-fun m!1198501 () Bool)

(assert (=> b!1017130 m!1198501))

(assert (=> b!1017132 m!1198495))

(declare-fun m!1198503 () Bool)

(assert (=> b!1017132 m!1198503))

(assert (=> b!1017131 m!1198495))

(declare-fun m!1198505 () Bool)

(assert (=> b!1017131 m!1198505))

(declare-fun m!1198507 () Bool)

(assert (=> b!1017133 m!1198507))

(assert (=> b!1017133 m!1198507))

(declare-fun m!1198509 () Bool)

(assert (=> b!1017133 m!1198509))

(declare-fun m!1198511 () Bool)

(assert (=> b!1017133 m!1198511))

(assert (=> b!1017133 m!1198507))

(declare-fun m!1198513 () Bool)

(assert (=> b!1017133 m!1198513))

(assert (=> d!294002 m!1198501))

(declare-fun m!1198515 () Bool)

(assert (=> d!294002 m!1198515))

(assert (=> d!294002 m!1198363))

(assert (=> b!1016781 d!294002))

(declare-fun d!294038 () Bool)

(declare-fun choose!6423 (Int) Bool)

(assert (=> d!294038 (= (Exists!534 lambda!36017) (choose!6423 lambda!36017))))

(declare-fun bs!246487 () Bool)

(assert (= bs!246487 d!294038))

(declare-fun m!1198517 () Bool)

(assert (=> bs!246487 m!1198517))

(assert (=> b!1016781 d!294038))

(declare-fun d!294040 () Bool)

(assert (=> d!294040 (= (Exists!534 lambda!36018) (choose!6423 lambda!36018))))

(declare-fun bs!246488 () Bool)

(assert (= bs!246488 d!294040))

(declare-fun m!1198519 () Bool)

(assert (=> bs!246488 m!1198519))

(assert (=> b!1016781 d!294040))

(declare-fun bs!246497 () Bool)

(declare-fun d!294042 () Bool)

(assert (= bs!246497 (and d!294042 b!1016781)))

(declare-fun lambda!36042 () Int)

(assert (=> bs!246497 (= lambda!36042 lambda!36017)))

(assert (=> bs!246497 (not (= lambda!36042 lambda!36018))))

(declare-fun bs!246498 () Bool)

(assert (= bs!246498 (and d!294042 d!293986)))

(assert (=> bs!246498 (= (= lt!353703 (Star!2801 (reg!3130 r!15766))) (= lambda!36042 lambda!36029))))

(assert (=> bs!246498 (not (= lambda!36042 lambda!36032))))

(assert (=> d!294042 true))

(assert (=> d!294042 true))

(assert (=> d!294042 true))

(assert (=> d!294042 (= (isDefined!1982 (findConcatSeparation!446 (reg!3130 r!15766) lt!353703 Nil!10015 s!10566 s!10566)) (Exists!534 lambda!36042))))

(declare-fun lt!353776 () Unit!15275)

(declare-fun choose!6424 (Regex!2801 Regex!2801 List!10031) Unit!15275)

(assert (=> d!294042 (= lt!353776 (choose!6424 (reg!3130 r!15766) lt!353703 s!10566))))

(assert (=> d!294042 (validRegex!1270 (reg!3130 r!15766))))

(assert (=> d!294042 (= (lemmaFindConcatSeparationEquivalentToExists!446 (reg!3130 r!15766) lt!353703 s!10566) lt!353776)))

(declare-fun bs!246499 () Bool)

(assert (= bs!246499 d!294042))

(declare-fun m!1198533 () Bool)

(assert (=> bs!246499 m!1198533))

(assert (=> bs!246499 m!1198283))

(assert (=> bs!246499 m!1198283))

(declare-fun m!1198535 () Bool)

(assert (=> bs!246499 m!1198535))

(declare-fun m!1198537 () Bool)

(assert (=> bs!246499 m!1198537))

(assert (=> bs!246499 m!1198363))

(assert (=> b!1016781 d!294042))

(declare-fun c!168515 () Bool)

(declare-fun bm!69433 () Bool)

(declare-fun c!168516 () Bool)

(declare-fun call!69438 () Bool)

(assert (=> bm!69433 (= call!69438 (validRegex!1270 (ite c!168516 (reg!3130 r!15766) (ite c!168515 (regOne!6115 r!15766) (regOne!6114 r!15766)))))))

(declare-fun bm!69434 () Bool)

(declare-fun call!69439 () Bool)

(assert (=> bm!69434 (= call!69439 call!69438)))

(declare-fun b!1017234 () Bool)

(declare-fun e!650035 () Bool)

(declare-fun e!650036 () Bool)

(assert (=> b!1017234 (= e!650035 e!650036)))

(assert (=> b!1017234 (= c!168515 ((_ is Union!2801) r!15766))))

(declare-fun d!294048 () Bool)

(declare-fun res!457208 () Bool)

(declare-fun e!650039 () Bool)

(assert (=> d!294048 (=> res!457208 e!650039)))

(assert (=> d!294048 (= res!457208 ((_ is ElementMatch!2801) r!15766))))

(assert (=> d!294048 (= (validRegex!1270 r!15766) e!650039)))

(declare-fun b!1017235 () Bool)

(declare-fun res!457204 () Bool)

(declare-fun e!650034 () Bool)

(assert (=> b!1017235 (=> res!457204 e!650034)))

(assert (=> b!1017235 (= res!457204 (not ((_ is Concat!4634) r!15766)))))

(assert (=> b!1017235 (= e!650036 e!650034)))

(declare-fun b!1017236 () Bool)

(declare-fun e!650038 () Bool)

(assert (=> b!1017236 (= e!650038 call!69438)))

(declare-fun b!1017237 () Bool)

(declare-fun res!457207 () Bool)

(declare-fun e!650040 () Bool)

(assert (=> b!1017237 (=> (not res!457207) (not e!650040))))

(assert (=> b!1017237 (= res!457207 call!69439)))

(assert (=> b!1017237 (= e!650036 e!650040)))

(declare-fun b!1017238 () Bool)

(declare-fun e!650037 () Bool)

(declare-fun call!69440 () Bool)

(assert (=> b!1017238 (= e!650037 call!69440)))

(declare-fun b!1017239 () Bool)

(assert (=> b!1017239 (= e!650040 call!69440)))

(declare-fun b!1017240 () Bool)

(assert (=> b!1017240 (= e!650034 e!650037)))

(declare-fun res!457206 () Bool)

(assert (=> b!1017240 (=> (not res!457206) (not e!650037))))

(assert (=> b!1017240 (= res!457206 call!69439)))

(declare-fun b!1017241 () Bool)

(assert (=> b!1017241 (= e!650035 e!650038)))

(declare-fun res!457205 () Bool)

(assert (=> b!1017241 (= res!457205 (not (nullable!911 (reg!3130 r!15766))))))

(assert (=> b!1017241 (=> (not res!457205) (not e!650038))))

(declare-fun bm!69435 () Bool)

(assert (=> bm!69435 (= call!69440 (validRegex!1270 (ite c!168515 (regTwo!6115 r!15766) (regTwo!6114 r!15766))))))

(declare-fun b!1017242 () Bool)

(assert (=> b!1017242 (= e!650039 e!650035)))

(assert (=> b!1017242 (= c!168516 ((_ is Star!2801) r!15766))))

(assert (= (and d!294048 (not res!457208)) b!1017242))

(assert (= (and b!1017242 c!168516) b!1017241))

(assert (= (and b!1017242 (not c!168516)) b!1017234))

(assert (= (and b!1017241 res!457205) b!1017236))

(assert (= (and b!1017234 c!168515) b!1017237))

(assert (= (and b!1017234 (not c!168515)) b!1017235))

(assert (= (and b!1017237 res!457207) b!1017239))

(assert (= (and b!1017235 (not res!457204)) b!1017240))

(assert (= (and b!1017240 res!457206) b!1017238))

(assert (= (or b!1017239 b!1017238) bm!69435))

(assert (= (or b!1017237 b!1017240) bm!69434))

(assert (= (or b!1017236 bm!69434) bm!69433))

(declare-fun m!1198539 () Bool)

(assert (=> bm!69433 m!1198539))

(declare-fun m!1198541 () Bool)

(assert (=> b!1017241 m!1198541))

(declare-fun m!1198543 () Bool)

(assert (=> bm!69435 m!1198543))

(assert (=> start!88538 d!294048))

(declare-fun bm!69446 () Bool)

(declare-fun call!69451 () Regex!2801)

(declare-fun c!168529 () Bool)

(assert (=> bm!69446 (= call!69451 (removeUselessConcat!382 (ite c!168529 (regOne!6114 r!15766) (regOne!6115 r!15766))))))

(declare-fun b!1017266 () Bool)

(declare-fun c!168530 () Bool)

(assert (=> b!1017266 (= c!168530 ((_ is Star!2801) r!15766))))

(declare-fun e!650058 () Regex!2801)

(declare-fun e!650054 () Regex!2801)

(assert (=> b!1017266 (= e!650058 e!650054)))

(declare-fun b!1017267 () Bool)

(declare-fun e!650056 () Bool)

(declare-fun lt!353779 () Regex!2801)

(assert (=> b!1017267 (= e!650056 (= (nullable!911 lt!353779) (nullable!911 r!15766)))))

(declare-fun b!1017268 () Bool)

(declare-fun call!69453 () Regex!2801)

(assert (=> b!1017268 (= e!650054 (Star!2801 call!69453))))

(declare-fun bm!69447 () Bool)

(declare-fun call!69455 () Regex!2801)

(assert (=> bm!69447 (= call!69453 call!69455)))

(declare-fun b!1017269 () Bool)

(declare-fun e!650057 () Regex!2801)

(assert (=> b!1017269 (= e!650057 (Concat!4634 call!69451 call!69455))))

(declare-fun bm!69448 () Bool)

(declare-fun call!69452 () Regex!2801)

(declare-fun call!69454 () Regex!2801)

(assert (=> bm!69448 (= call!69452 call!69454)))

(declare-fun b!1017270 () Bool)

(assert (=> b!1017270 (= c!168529 ((_ is Concat!4634) r!15766))))

(declare-fun e!650053 () Regex!2801)

(assert (=> b!1017270 (= e!650053 e!650057)))

(declare-fun b!1017265 () Bool)

(assert (=> b!1017265 (= e!650053 call!69452)))

(declare-fun d!294050 () Bool)

(assert (=> d!294050 e!650056))

(declare-fun res!457211 () Bool)

(assert (=> d!294050 (=> (not res!457211) (not e!650056))))

(assert (=> d!294050 (= res!457211 (validRegex!1270 lt!353779))))

(declare-fun e!650055 () Regex!2801)

(assert (=> d!294050 (= lt!353779 e!650055)))

(declare-fun c!168531 () Bool)

(assert (=> d!294050 (= c!168531 (and ((_ is Concat!4634) r!15766) ((_ is EmptyExpr!2801) (regOne!6114 r!15766))))))

(assert (=> d!294050 (validRegex!1270 r!15766)))

(assert (=> d!294050 (= (removeUselessConcat!382 r!15766) lt!353779)))

(declare-fun c!168528 () Bool)

(declare-fun bm!69449 () Bool)

(declare-fun c!168527 () Bool)

(assert (=> bm!69449 (= call!69454 (removeUselessConcat!382 (ite c!168531 (regTwo!6114 r!15766) (ite c!168528 (regOne!6114 r!15766) (ite c!168529 (regTwo!6114 r!15766) (ite c!168527 (regTwo!6115 r!15766) (reg!3130 r!15766)))))))))

(declare-fun b!1017271 () Bool)

(assert (=> b!1017271 (= e!650058 (Union!2801 call!69451 call!69453))))

(declare-fun b!1017272 () Bool)

(assert (=> b!1017272 (= e!650057 e!650058)))

(assert (=> b!1017272 (= c!168527 ((_ is Union!2801) r!15766))))

(declare-fun b!1017273 () Bool)

(assert (=> b!1017273 (= e!650055 e!650053)))

(assert (=> b!1017273 (= c!168528 (and ((_ is Concat!4634) r!15766) ((_ is EmptyExpr!2801) (regTwo!6114 r!15766))))))

(declare-fun bm!69450 () Bool)

(assert (=> bm!69450 (= call!69455 call!69452)))

(declare-fun b!1017274 () Bool)

(assert (=> b!1017274 (= e!650055 call!69454)))

(declare-fun b!1017275 () Bool)

(assert (=> b!1017275 (= e!650054 r!15766)))

(assert (= (and d!294050 c!168531) b!1017274))

(assert (= (and d!294050 (not c!168531)) b!1017273))

(assert (= (and b!1017273 c!168528) b!1017265))

(assert (= (and b!1017273 (not c!168528)) b!1017270))

(assert (= (and b!1017270 c!168529) b!1017269))

(assert (= (and b!1017270 (not c!168529)) b!1017272))

(assert (= (and b!1017272 c!168527) b!1017271))

(assert (= (and b!1017272 (not c!168527)) b!1017266))

(assert (= (and b!1017266 c!168530) b!1017268))

(assert (= (and b!1017266 (not c!168530)) b!1017275))

(assert (= (or b!1017271 b!1017268) bm!69447))

(assert (= (or b!1017269 bm!69447) bm!69450))

(assert (= (or b!1017269 b!1017271) bm!69446))

(assert (= (or b!1017265 bm!69450) bm!69448))

(assert (= (or b!1017274 bm!69448) bm!69449))

(assert (= (and d!294050 res!457211) b!1017267))

(declare-fun m!1198545 () Bool)

(assert (=> bm!69446 m!1198545))

(declare-fun m!1198547 () Bool)

(assert (=> b!1017267 m!1198547))

(declare-fun m!1198549 () Bool)

(assert (=> b!1017267 m!1198549))

(declare-fun m!1198551 () Bool)

(assert (=> d!294050 m!1198551))

(assert (=> d!294050 m!1198229))

(declare-fun m!1198553 () Bool)

(assert (=> bm!69449 m!1198553))

(assert (=> b!1016786 d!294050))

(declare-fun d!294052 () Bool)

(assert (=> d!294052 (matchR!1337 (Star!2801 lt!353712) (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708)))))

(declare-fun lt!353782 () Unit!15275)

(declare-fun choose!6425 (Regex!2801 List!10031 List!10031) Unit!15275)

(assert (=> d!294052 (= lt!353782 (choose!6425 lt!353712 (_1!6524 lt!353708) (_2!6524 lt!353708)))))

(assert (=> d!294052 (validRegex!1270 (Star!2801 lt!353712))))

(assert (=> d!294052 (= (lemmaStarApp!10 lt!353712 (_1!6524 lt!353708) (_2!6524 lt!353708)) lt!353782)))

(declare-fun bs!246500 () Bool)

(assert (= bs!246500 d!294052))

(assert (=> bs!246500 m!1198259))

(assert (=> bs!246500 m!1198259))

(declare-fun m!1198555 () Bool)

(assert (=> bs!246500 m!1198555))

(declare-fun m!1198557 () Bool)

(assert (=> bs!246500 m!1198557))

(declare-fun m!1198559 () Bool)

(assert (=> bs!246500 m!1198559))

(assert (=> b!1016786 d!294052))

(declare-fun b!1017286 () Bool)

(declare-fun res!457217 () Bool)

(declare-fun e!650064 () Bool)

(assert (=> b!1017286 (=> (not res!457217) (not e!650064))))

(declare-fun lt!353785 () List!10031)

(assert (=> b!1017286 (= res!457217 (= (size!7977 lt!353785) (+ (size!7977 (_1!6524 lt!353708)) (size!7977 (_2!6524 lt!353708)))))))

(declare-fun b!1017284 () Bool)

(declare-fun e!650063 () List!10031)

(assert (=> b!1017284 (= e!650063 (_2!6524 lt!353708))))

(declare-fun d!294054 () Bool)

(assert (=> d!294054 e!650064))

(declare-fun res!457216 () Bool)

(assert (=> d!294054 (=> (not res!457216) (not e!650064))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1435 (List!10031) (InoxSet C!6172))

(assert (=> d!294054 (= res!457216 (= (content!1435 lt!353785) ((_ map or) (content!1435 (_1!6524 lt!353708)) (content!1435 (_2!6524 lt!353708)))))))

(assert (=> d!294054 (= lt!353785 e!650063)))

(declare-fun c!168534 () Bool)

(assert (=> d!294054 (= c!168534 ((_ is Nil!10015) (_1!6524 lt!353708)))))

(assert (=> d!294054 (= (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708)) lt!353785)))

(declare-fun b!1017285 () Bool)

(assert (=> b!1017285 (= e!650063 (Cons!10015 (h!15416 (_1!6524 lt!353708)) (++!2732 (t!101077 (_1!6524 lt!353708)) (_2!6524 lt!353708))))))

(declare-fun b!1017287 () Bool)

(assert (=> b!1017287 (= e!650064 (or (not (= (_2!6524 lt!353708) Nil!10015)) (= lt!353785 (_1!6524 lt!353708))))))

(assert (= (and d!294054 c!168534) b!1017284))

(assert (= (and d!294054 (not c!168534)) b!1017285))

(assert (= (and d!294054 res!457216) b!1017286))

(assert (= (and b!1017286 res!457217) b!1017287))

(declare-fun m!1198561 () Bool)

(assert (=> b!1017286 m!1198561))

(declare-fun m!1198563 () Bool)

(assert (=> b!1017286 m!1198563))

(assert (=> b!1017286 m!1198243))

(declare-fun m!1198565 () Bool)

(assert (=> d!294054 m!1198565))

(declare-fun m!1198567 () Bool)

(assert (=> d!294054 m!1198567))

(declare-fun m!1198569 () Bool)

(assert (=> d!294054 m!1198569))

(declare-fun m!1198571 () Bool)

(assert (=> b!1017285 m!1198571))

(assert (=> b!1016786 d!294054))

(declare-fun b!1017316 () Bool)

(declare-fun e!650085 () Bool)

(assert (=> b!1017316 (= e!650085 (nullable!911 lt!353698))))

(declare-fun b!1017317 () Bool)

(declare-fun res!457241 () Bool)

(declare-fun e!650080 () Bool)

(assert (=> b!1017317 (=> (not res!457241) (not e!650080))))

(declare-fun tail!1431 (List!10031) List!10031)

(assert (=> b!1017317 (= res!457241 (isEmpty!6364 (tail!1431 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708)))))))

(declare-fun b!1017318 () Bool)

(declare-fun res!457235 () Bool)

(assert (=> b!1017318 (=> (not res!457235) (not e!650080))))

(declare-fun call!69458 () Bool)

(assert (=> b!1017318 (= res!457235 (not call!69458))))

(declare-fun b!1017319 () Bool)

(declare-fun e!650082 () Bool)

(declare-fun e!650079 () Bool)

(assert (=> b!1017319 (= e!650082 e!650079)))

(declare-fun res!457239 () Bool)

(assert (=> b!1017319 (=> (not res!457239) (not e!650079))))

(declare-fun lt!353788 () Bool)

(assert (=> b!1017319 (= res!457239 (not lt!353788))))

(declare-fun b!1017320 () Bool)

(declare-fun e!650084 () Bool)

(declare-fun head!1869 (List!10031) C!6172)

(assert (=> b!1017320 (= e!650084 (not (= (head!1869 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708))) (c!168414 lt!353698))))))

(declare-fun b!1017321 () Bool)

(declare-fun e!650081 () Bool)

(assert (=> b!1017321 (= e!650081 (= lt!353788 call!69458))))

(declare-fun b!1017322 () Bool)

(declare-fun derivativeStep!715 (Regex!2801 C!6172) Regex!2801)

(assert (=> b!1017322 (= e!650085 (matchR!1337 (derivativeStep!715 lt!353698 (head!1869 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708)))) (tail!1431 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708)))))))

(declare-fun b!1017323 () Bool)

(assert (=> b!1017323 (= e!650080 (= (head!1869 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708))) (c!168414 lt!353698)))))

(declare-fun d!294056 () Bool)

(assert (=> d!294056 e!650081))

(declare-fun c!168542 () Bool)

(assert (=> d!294056 (= c!168542 ((_ is EmptyExpr!2801) lt!353698))))

(assert (=> d!294056 (= lt!353788 e!650085)))

(declare-fun c!168541 () Bool)

(assert (=> d!294056 (= c!168541 (isEmpty!6364 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708))))))

(assert (=> d!294056 (validRegex!1270 lt!353698)))

(assert (=> d!294056 (= (matchR!1337 lt!353698 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708))) lt!353788)))

(declare-fun bm!69453 () Bool)

(assert (=> bm!69453 (= call!69458 (isEmpty!6364 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708))))))

(declare-fun b!1017324 () Bool)

(declare-fun e!650083 () Bool)

(assert (=> b!1017324 (= e!650081 e!650083)))

(declare-fun c!168543 () Bool)

(assert (=> b!1017324 (= c!168543 ((_ is EmptyLang!2801) lt!353698))))

(declare-fun b!1017325 () Bool)

(assert (=> b!1017325 (= e!650079 e!650084)))

(declare-fun res!457236 () Bool)

(assert (=> b!1017325 (=> res!457236 e!650084)))

(assert (=> b!1017325 (= res!457236 call!69458)))

(declare-fun b!1017326 () Bool)

(declare-fun res!457234 () Bool)

(assert (=> b!1017326 (=> res!457234 e!650084)))

(assert (=> b!1017326 (= res!457234 (not (isEmpty!6364 (tail!1431 (++!2732 (_1!6524 lt!353708) (_2!6524 lt!353708))))))))

(declare-fun b!1017327 () Bool)

(declare-fun res!457237 () Bool)

(assert (=> b!1017327 (=> res!457237 e!650082)))

(assert (=> b!1017327 (= res!457237 e!650080)))

(declare-fun res!457240 () Bool)

(assert (=> b!1017327 (=> (not res!457240) (not e!650080))))

(assert (=> b!1017327 (= res!457240 lt!353788)))

(declare-fun b!1017328 () Bool)

(assert (=> b!1017328 (= e!650083 (not lt!353788))))

(declare-fun b!1017329 () Bool)

(declare-fun res!457238 () Bool)

(assert (=> b!1017329 (=> res!457238 e!650082)))

(assert (=> b!1017329 (= res!457238 (not ((_ is ElementMatch!2801) lt!353698)))))

(assert (=> b!1017329 (= e!650083 e!650082)))

(assert (= (and d!294056 c!168541) b!1017316))

(assert (= (and d!294056 (not c!168541)) b!1017322))

(assert (= (and d!294056 c!168542) b!1017321))

(assert (= (and d!294056 (not c!168542)) b!1017324))

(assert (= (and b!1017324 c!168543) b!1017328))

(assert (= (and b!1017324 (not c!168543)) b!1017329))

(assert (= (and b!1017329 (not res!457238)) b!1017327))

(assert (= (and b!1017327 res!457240) b!1017318))

(assert (= (and b!1017318 res!457235) b!1017317))

(assert (= (and b!1017317 res!457241) b!1017323))

(assert (= (and b!1017327 (not res!457237)) b!1017319))

(assert (= (and b!1017319 res!457239) b!1017325))

(assert (= (and b!1017325 (not res!457236)) b!1017326))

(assert (= (and b!1017326 (not res!457234)) b!1017320))

(assert (= (or b!1017321 b!1017318 b!1017325) bm!69453))

(assert (=> b!1017317 m!1198259))

(declare-fun m!1198573 () Bool)

(assert (=> b!1017317 m!1198573))

(assert (=> b!1017317 m!1198573))

(declare-fun m!1198575 () Bool)

(assert (=> b!1017317 m!1198575))

(assert (=> bm!69453 m!1198259))

(declare-fun m!1198577 () Bool)

(assert (=> bm!69453 m!1198577))

(assert (=> d!294056 m!1198259))

(assert (=> d!294056 m!1198577))

(assert (=> d!294056 m!1198265))

(assert (=> b!1017323 m!1198259))

(declare-fun m!1198579 () Bool)

(assert (=> b!1017323 m!1198579))

(declare-fun m!1198581 () Bool)

(assert (=> b!1017316 m!1198581))

(assert (=> b!1017326 m!1198259))

(assert (=> b!1017326 m!1198573))

(assert (=> b!1017326 m!1198573))

(assert (=> b!1017326 m!1198575))

(assert (=> b!1017322 m!1198259))

(assert (=> b!1017322 m!1198579))

(assert (=> b!1017322 m!1198579))

(declare-fun m!1198583 () Bool)

(assert (=> b!1017322 m!1198583))

(assert (=> b!1017322 m!1198259))

(assert (=> b!1017322 m!1198573))

(assert (=> b!1017322 m!1198583))

(assert (=> b!1017322 m!1198573))

(declare-fun m!1198585 () Bool)

(assert (=> b!1017322 m!1198585))

(assert (=> b!1017320 m!1198259))

(assert (=> b!1017320 m!1198579))

(assert (=> b!1016786 d!294056))

(declare-fun b!1017330 () Bool)

(declare-fun e!650092 () Bool)

(assert (=> b!1017330 (= e!650092 (nullable!911 (removeUselessConcat!382 r!15766)))))

(declare-fun b!1017331 () Bool)

(declare-fun res!457249 () Bool)

(declare-fun e!650087 () Bool)

(assert (=> b!1017331 (=> (not res!457249) (not e!650087))))

(assert (=> b!1017331 (= res!457249 (isEmpty!6364 (tail!1431 s!10566)))))

(declare-fun b!1017332 () Bool)

(declare-fun res!457243 () Bool)

(assert (=> b!1017332 (=> (not res!457243) (not e!650087))))

(declare-fun call!69459 () Bool)

(assert (=> b!1017332 (= res!457243 (not call!69459))))

(declare-fun b!1017333 () Bool)

(declare-fun e!650089 () Bool)

(declare-fun e!650086 () Bool)

(assert (=> b!1017333 (= e!650089 e!650086)))

(declare-fun res!457247 () Bool)

(assert (=> b!1017333 (=> (not res!457247) (not e!650086))))

(declare-fun lt!353789 () Bool)

(assert (=> b!1017333 (= res!457247 (not lt!353789))))

(declare-fun b!1017334 () Bool)

(declare-fun e!650091 () Bool)

(assert (=> b!1017334 (= e!650091 (not (= (head!1869 s!10566) (c!168414 (removeUselessConcat!382 r!15766)))))))

(declare-fun b!1017335 () Bool)

(declare-fun e!650088 () Bool)

(assert (=> b!1017335 (= e!650088 (= lt!353789 call!69459))))

(declare-fun b!1017336 () Bool)

(assert (=> b!1017336 (= e!650092 (matchR!1337 (derivativeStep!715 (removeUselessConcat!382 r!15766) (head!1869 s!10566)) (tail!1431 s!10566)))))

(declare-fun b!1017337 () Bool)

(assert (=> b!1017337 (= e!650087 (= (head!1869 s!10566) (c!168414 (removeUselessConcat!382 r!15766))))))

(declare-fun d!294058 () Bool)

(assert (=> d!294058 e!650088))

(declare-fun c!168545 () Bool)

(assert (=> d!294058 (= c!168545 ((_ is EmptyExpr!2801) (removeUselessConcat!382 r!15766)))))

(assert (=> d!294058 (= lt!353789 e!650092)))

(declare-fun c!168544 () Bool)

(assert (=> d!294058 (= c!168544 (isEmpty!6364 s!10566))))

(assert (=> d!294058 (validRegex!1270 (removeUselessConcat!382 r!15766))))

(assert (=> d!294058 (= (matchR!1337 (removeUselessConcat!382 r!15766) s!10566) lt!353789)))

(declare-fun bm!69454 () Bool)

(assert (=> bm!69454 (= call!69459 (isEmpty!6364 s!10566))))

(declare-fun b!1017338 () Bool)

(declare-fun e!650090 () Bool)

(assert (=> b!1017338 (= e!650088 e!650090)))

(declare-fun c!168546 () Bool)

(assert (=> b!1017338 (= c!168546 ((_ is EmptyLang!2801) (removeUselessConcat!382 r!15766)))))

(declare-fun b!1017339 () Bool)

(assert (=> b!1017339 (= e!650086 e!650091)))

(declare-fun res!457244 () Bool)

(assert (=> b!1017339 (=> res!457244 e!650091)))

(assert (=> b!1017339 (= res!457244 call!69459)))

(declare-fun b!1017340 () Bool)

(declare-fun res!457242 () Bool)

(assert (=> b!1017340 (=> res!457242 e!650091)))

(assert (=> b!1017340 (= res!457242 (not (isEmpty!6364 (tail!1431 s!10566))))))

(declare-fun b!1017341 () Bool)

(declare-fun res!457245 () Bool)

(assert (=> b!1017341 (=> res!457245 e!650089)))

(assert (=> b!1017341 (= res!457245 e!650087)))

(declare-fun res!457248 () Bool)

(assert (=> b!1017341 (=> (not res!457248) (not e!650087))))

(assert (=> b!1017341 (= res!457248 lt!353789)))

(declare-fun b!1017342 () Bool)

(assert (=> b!1017342 (= e!650090 (not lt!353789))))

(declare-fun b!1017343 () Bool)

(declare-fun res!457246 () Bool)

(assert (=> b!1017343 (=> res!457246 e!650089)))

(assert (=> b!1017343 (= res!457246 (not ((_ is ElementMatch!2801) (removeUselessConcat!382 r!15766))))))

(assert (=> b!1017343 (= e!650090 e!650089)))

(assert (= (and d!294058 c!168544) b!1017330))

(assert (= (and d!294058 (not c!168544)) b!1017336))

(assert (= (and d!294058 c!168545) b!1017335))

(assert (= (and d!294058 (not c!168545)) b!1017338))

(assert (= (and b!1017338 c!168546) b!1017342))

(assert (= (and b!1017338 (not c!168546)) b!1017343))

(assert (= (and b!1017343 (not res!457246)) b!1017341))

(assert (= (and b!1017341 res!457248) b!1017332))

(assert (= (and b!1017332 res!457243) b!1017331))

(assert (= (and b!1017331 res!457249) b!1017337))

(assert (= (and b!1017341 (not res!457245)) b!1017333))

(assert (= (and b!1017333 res!457247) b!1017339))

(assert (= (and b!1017339 (not res!457244)) b!1017340))

(assert (= (and b!1017340 (not res!457242)) b!1017334))

(assert (= (or b!1017335 b!1017332 b!1017339) bm!69454))

(declare-fun m!1198587 () Bool)

(assert (=> b!1017331 m!1198587))

(assert (=> b!1017331 m!1198587))

(declare-fun m!1198589 () Bool)

(assert (=> b!1017331 m!1198589))

(assert (=> bm!69454 m!1198285))

(assert (=> d!294058 m!1198285))

(assert (=> d!294058 m!1198255))

(declare-fun m!1198591 () Bool)

(assert (=> d!294058 m!1198591))

(declare-fun m!1198593 () Bool)

(assert (=> b!1017337 m!1198593))

(assert (=> b!1017330 m!1198255))

(declare-fun m!1198595 () Bool)

(assert (=> b!1017330 m!1198595))

(assert (=> b!1017340 m!1198587))

(assert (=> b!1017340 m!1198587))

(assert (=> b!1017340 m!1198589))

(assert (=> b!1017336 m!1198593))

(assert (=> b!1017336 m!1198255))

(assert (=> b!1017336 m!1198593))

(declare-fun m!1198597 () Bool)

(assert (=> b!1017336 m!1198597))

(assert (=> b!1017336 m!1198587))

(assert (=> b!1017336 m!1198597))

(assert (=> b!1017336 m!1198587))

(declare-fun m!1198599 () Bool)

(assert (=> b!1017336 m!1198599))

(assert (=> b!1017334 m!1198593))

(assert (=> b!1016786 d!294058))

(declare-fun bm!69455 () Bool)

(declare-fun call!69460 () Regex!2801)

(declare-fun c!168549 () Bool)

(assert (=> bm!69455 (= call!69460 (removeUselessConcat!382 (ite c!168549 (regOne!6114 lt!353703) (regOne!6115 lt!353703))))))

(declare-fun b!1017345 () Bool)

(declare-fun c!168550 () Bool)

(assert (=> b!1017345 (= c!168550 ((_ is Star!2801) lt!353703))))

(declare-fun e!650098 () Regex!2801)

(declare-fun e!650094 () Regex!2801)

(assert (=> b!1017345 (= e!650098 e!650094)))

(declare-fun b!1017346 () Bool)

(declare-fun e!650096 () Bool)

(declare-fun lt!353790 () Regex!2801)

(assert (=> b!1017346 (= e!650096 (= (nullable!911 lt!353790) (nullable!911 lt!353703)))))

(declare-fun b!1017347 () Bool)

(declare-fun call!69462 () Regex!2801)

(assert (=> b!1017347 (= e!650094 (Star!2801 call!69462))))

(declare-fun bm!69456 () Bool)

(declare-fun call!69464 () Regex!2801)

(assert (=> bm!69456 (= call!69462 call!69464)))

(declare-fun b!1017348 () Bool)

(declare-fun e!650097 () Regex!2801)

(assert (=> b!1017348 (= e!650097 (Concat!4634 call!69460 call!69464))))

(declare-fun bm!69457 () Bool)

(declare-fun call!69461 () Regex!2801)

(declare-fun call!69463 () Regex!2801)

(assert (=> bm!69457 (= call!69461 call!69463)))

(declare-fun b!1017349 () Bool)

(assert (=> b!1017349 (= c!168549 ((_ is Concat!4634) lt!353703))))

(declare-fun e!650093 () Regex!2801)

(assert (=> b!1017349 (= e!650093 e!650097)))

(declare-fun b!1017344 () Bool)

(assert (=> b!1017344 (= e!650093 call!69461)))

(declare-fun d!294060 () Bool)

(assert (=> d!294060 e!650096))

(declare-fun res!457250 () Bool)

(assert (=> d!294060 (=> (not res!457250) (not e!650096))))

(assert (=> d!294060 (= res!457250 (validRegex!1270 lt!353790))))

(declare-fun e!650095 () Regex!2801)

(assert (=> d!294060 (= lt!353790 e!650095)))

(declare-fun c!168551 () Bool)

(assert (=> d!294060 (= c!168551 (and ((_ is Concat!4634) lt!353703) ((_ is EmptyExpr!2801) (regOne!6114 lt!353703))))))

(assert (=> d!294060 (validRegex!1270 lt!353703)))

(assert (=> d!294060 (= (removeUselessConcat!382 lt!353703) lt!353790)))

(declare-fun c!168547 () Bool)

(declare-fun c!168548 () Bool)

(declare-fun bm!69458 () Bool)

(assert (=> bm!69458 (= call!69463 (removeUselessConcat!382 (ite c!168551 (regTwo!6114 lt!353703) (ite c!168548 (regOne!6114 lt!353703) (ite c!168549 (regTwo!6114 lt!353703) (ite c!168547 (regTwo!6115 lt!353703) (reg!3130 lt!353703)))))))))

(declare-fun b!1017350 () Bool)

(assert (=> b!1017350 (= e!650098 (Union!2801 call!69460 call!69462))))

(declare-fun b!1017351 () Bool)

(assert (=> b!1017351 (= e!650097 e!650098)))

(assert (=> b!1017351 (= c!168547 ((_ is Union!2801) lt!353703))))

(declare-fun b!1017352 () Bool)

(assert (=> b!1017352 (= e!650095 e!650093)))

(assert (=> b!1017352 (= c!168548 (and ((_ is Concat!4634) lt!353703) ((_ is EmptyExpr!2801) (regTwo!6114 lt!353703))))))

(declare-fun bm!69459 () Bool)

(assert (=> bm!69459 (= call!69464 call!69461)))

(declare-fun b!1017353 () Bool)

(assert (=> b!1017353 (= e!650095 call!69463)))

(declare-fun b!1017354 () Bool)

(assert (=> b!1017354 (= e!650094 lt!353703)))

(assert (= (and d!294060 c!168551) b!1017353))

(assert (= (and d!294060 (not c!168551)) b!1017352))

(assert (= (and b!1017352 c!168548) b!1017344))

(assert (= (and b!1017352 (not c!168548)) b!1017349))

(assert (= (and b!1017349 c!168549) b!1017348))

(assert (= (and b!1017349 (not c!168549)) b!1017351))

(assert (= (and b!1017351 c!168547) b!1017350))

(assert (= (and b!1017351 (not c!168547)) b!1017345))

(assert (= (and b!1017345 c!168550) b!1017347))

(assert (= (and b!1017345 (not c!168550)) b!1017354))

(assert (= (or b!1017350 b!1017347) bm!69456))

(assert (= (or b!1017348 bm!69456) bm!69459))

(assert (= (or b!1017348 b!1017350) bm!69455))

(assert (= (or b!1017344 bm!69459) bm!69457))

(assert (= (or b!1017353 bm!69457) bm!69458))

(assert (= (and d!294060 res!457250) b!1017346))

(declare-fun m!1198601 () Bool)

(assert (=> bm!69455 m!1198601))

(declare-fun m!1198603 () Bool)

(assert (=> b!1017346 m!1198603))

(declare-fun m!1198605 () Bool)

(assert (=> b!1017346 m!1198605))

(declare-fun m!1198607 () Bool)

(assert (=> d!294060 m!1198607))

(declare-fun m!1198609 () Bool)

(assert (=> d!294060 m!1198609))

(declare-fun m!1198611 () Bool)

(assert (=> bm!69458 m!1198611))

(assert (=> b!1016779 d!294060))

(declare-fun d!294062 () Bool)

(declare-fun lt!353793 () Int)

(assert (=> d!294062 (>= lt!353793 0)))

(declare-fun e!650101 () Int)

(assert (=> d!294062 (= lt!353793 e!650101)))

(declare-fun c!168554 () Bool)

(assert (=> d!294062 (= c!168554 ((_ is Nil!10015) s!10566))))

(assert (=> d!294062 (= (size!7977 s!10566) lt!353793)))

(declare-fun b!1017359 () Bool)

(assert (=> b!1017359 (= e!650101 0)))

(declare-fun b!1017360 () Bool)

(assert (=> b!1017360 (= e!650101 (+ 1 (size!7977 (t!101077 s!10566))))))

(assert (= (and d!294062 c!168554) b!1017359))

(assert (= (and d!294062 (not c!168554)) b!1017360))

(declare-fun m!1198613 () Bool)

(assert (=> b!1017360 m!1198613))

(assert (=> b!1016779 d!294062))

(declare-fun d!294064 () Bool)

(assert (=> d!294064 (= (matchR!1337 lt!353703 (_2!6524 lt!353708)) (matchR!1337 (removeUselessConcat!382 lt!353703) (_2!6524 lt!353708)))))

(declare-fun lt!353796 () Unit!15275)

(declare-fun choose!6427 (Regex!2801 List!10031) Unit!15275)

(assert (=> d!294064 (= lt!353796 (choose!6427 lt!353703 (_2!6524 lt!353708)))))

(assert (=> d!294064 (validRegex!1270 lt!353703)))

(assert (=> d!294064 (= (lemmaRemoveUselessConcatSound!226 lt!353703 (_2!6524 lt!353708)) lt!353796)))

(declare-fun bs!246501 () Bool)

(assert (= bs!246501 d!294064))

(declare-fun m!1198615 () Bool)

(assert (=> bs!246501 m!1198615))

(assert (=> bs!246501 m!1198241))

(assert (=> bs!246501 m!1198241))

(declare-fun m!1198617 () Bool)

(assert (=> bs!246501 m!1198617))

(assert (=> bs!246501 m!1198287))

(assert (=> bs!246501 m!1198609))

(assert (=> b!1016779 d!294064))

(declare-fun b!1017361 () Bool)

(declare-fun e!650108 () Bool)

(assert (=> b!1017361 (= e!650108 (nullable!911 lt!353707))))

(declare-fun b!1017362 () Bool)

(declare-fun res!457258 () Bool)

(declare-fun e!650103 () Bool)

(assert (=> b!1017362 (=> (not res!457258) (not e!650103))))

(assert (=> b!1017362 (= res!457258 (isEmpty!6364 (tail!1431 (_2!6524 lt!353708))))))

(declare-fun b!1017363 () Bool)

(declare-fun res!457252 () Bool)

(assert (=> b!1017363 (=> (not res!457252) (not e!650103))))

(declare-fun call!69465 () Bool)

(assert (=> b!1017363 (= res!457252 (not call!69465))))

(declare-fun b!1017364 () Bool)

(declare-fun e!650105 () Bool)

(declare-fun e!650102 () Bool)

(assert (=> b!1017364 (= e!650105 e!650102)))

(declare-fun res!457256 () Bool)

(assert (=> b!1017364 (=> (not res!457256) (not e!650102))))

(declare-fun lt!353797 () Bool)

(assert (=> b!1017364 (= res!457256 (not lt!353797))))

(declare-fun b!1017365 () Bool)

(declare-fun e!650107 () Bool)

(assert (=> b!1017365 (= e!650107 (not (= (head!1869 (_2!6524 lt!353708)) (c!168414 lt!353707))))))

(declare-fun b!1017366 () Bool)

(declare-fun e!650104 () Bool)

(assert (=> b!1017366 (= e!650104 (= lt!353797 call!69465))))

(declare-fun b!1017367 () Bool)

(assert (=> b!1017367 (= e!650108 (matchR!1337 (derivativeStep!715 lt!353707 (head!1869 (_2!6524 lt!353708))) (tail!1431 (_2!6524 lt!353708))))))

(declare-fun b!1017368 () Bool)

(assert (=> b!1017368 (= e!650103 (= (head!1869 (_2!6524 lt!353708)) (c!168414 lt!353707)))))

(declare-fun d!294066 () Bool)

(assert (=> d!294066 e!650104))

(declare-fun c!168556 () Bool)

(assert (=> d!294066 (= c!168556 ((_ is EmptyExpr!2801) lt!353707))))

(assert (=> d!294066 (= lt!353797 e!650108)))

(declare-fun c!168555 () Bool)

(assert (=> d!294066 (= c!168555 (isEmpty!6364 (_2!6524 lt!353708)))))

(assert (=> d!294066 (validRegex!1270 lt!353707)))

(assert (=> d!294066 (= (matchR!1337 lt!353707 (_2!6524 lt!353708)) lt!353797)))

(declare-fun bm!69460 () Bool)

(assert (=> bm!69460 (= call!69465 (isEmpty!6364 (_2!6524 lt!353708)))))

(declare-fun b!1017369 () Bool)

(declare-fun e!650106 () Bool)

(assert (=> b!1017369 (= e!650104 e!650106)))

(declare-fun c!168557 () Bool)

(assert (=> b!1017369 (= c!168557 ((_ is EmptyLang!2801) lt!353707))))

(declare-fun b!1017370 () Bool)

(assert (=> b!1017370 (= e!650102 e!650107)))

(declare-fun res!457253 () Bool)

(assert (=> b!1017370 (=> res!457253 e!650107)))

(assert (=> b!1017370 (= res!457253 call!69465)))

(declare-fun b!1017371 () Bool)

(declare-fun res!457251 () Bool)

(assert (=> b!1017371 (=> res!457251 e!650107)))

(assert (=> b!1017371 (= res!457251 (not (isEmpty!6364 (tail!1431 (_2!6524 lt!353708)))))))

(declare-fun b!1017372 () Bool)

(declare-fun res!457254 () Bool)

(assert (=> b!1017372 (=> res!457254 e!650105)))

(assert (=> b!1017372 (= res!457254 e!650103)))

(declare-fun res!457257 () Bool)

(assert (=> b!1017372 (=> (not res!457257) (not e!650103))))

(assert (=> b!1017372 (= res!457257 lt!353797)))

(declare-fun b!1017373 () Bool)

(assert (=> b!1017373 (= e!650106 (not lt!353797))))

(declare-fun b!1017374 () Bool)

(declare-fun res!457255 () Bool)

(assert (=> b!1017374 (=> res!457255 e!650105)))

(assert (=> b!1017374 (= res!457255 (not ((_ is ElementMatch!2801) lt!353707)))))

(assert (=> b!1017374 (= e!650106 e!650105)))

(assert (= (and d!294066 c!168555) b!1017361))

(assert (= (and d!294066 (not c!168555)) b!1017367))

(assert (= (and d!294066 c!168556) b!1017366))

(assert (= (and d!294066 (not c!168556)) b!1017369))

(assert (= (and b!1017369 c!168557) b!1017373))

(assert (= (and b!1017369 (not c!168557)) b!1017374))

(assert (= (and b!1017374 (not res!457255)) b!1017372))

(assert (= (and b!1017372 res!457257) b!1017363))

(assert (= (and b!1017363 res!457252) b!1017362))

(assert (= (and b!1017362 res!457258) b!1017368))

(assert (= (and b!1017372 (not res!457254)) b!1017364))

(assert (= (and b!1017364 res!457256) b!1017370))

(assert (= (and b!1017370 (not res!457253)) b!1017371))

(assert (= (and b!1017371 (not res!457251)) b!1017365))

(assert (= (or b!1017366 b!1017363 b!1017370) bm!69460))

(declare-fun m!1198619 () Bool)

(assert (=> b!1017362 m!1198619))

(assert (=> b!1017362 m!1198619))

(declare-fun m!1198621 () Bool)

(assert (=> b!1017362 m!1198621))

(declare-fun m!1198623 () Bool)

(assert (=> bm!69460 m!1198623))

(assert (=> d!294066 m!1198623))

(declare-fun m!1198625 () Bool)

(assert (=> d!294066 m!1198625))

(declare-fun m!1198627 () Bool)

(assert (=> b!1017368 m!1198627))

(declare-fun m!1198629 () Bool)

(assert (=> b!1017361 m!1198629))

(assert (=> b!1017371 m!1198619))

(assert (=> b!1017371 m!1198619))

(assert (=> b!1017371 m!1198621))

(assert (=> b!1017367 m!1198627))

(assert (=> b!1017367 m!1198627))

(declare-fun m!1198631 () Bool)

(assert (=> b!1017367 m!1198631))

(assert (=> b!1017367 m!1198619))

(assert (=> b!1017367 m!1198631))

(assert (=> b!1017367 m!1198619))

(declare-fun m!1198633 () Bool)

(assert (=> b!1017367 m!1198633))

(assert (=> b!1017365 m!1198627))

(assert (=> b!1016779 d!294066))

(declare-fun b!1017375 () Bool)

(declare-fun e!650115 () Bool)

(assert (=> b!1017375 (= e!650115 (nullable!911 lt!353712))))

(declare-fun b!1017376 () Bool)

(declare-fun res!457266 () Bool)

(declare-fun e!650110 () Bool)

(assert (=> b!1017376 (=> (not res!457266) (not e!650110))))

(assert (=> b!1017376 (= res!457266 (isEmpty!6364 (tail!1431 (_1!6524 lt!353708))))))

(declare-fun b!1017377 () Bool)

(declare-fun res!457260 () Bool)

(assert (=> b!1017377 (=> (not res!457260) (not e!650110))))

(declare-fun call!69466 () Bool)

(assert (=> b!1017377 (= res!457260 (not call!69466))))

(declare-fun b!1017378 () Bool)

(declare-fun e!650112 () Bool)

(declare-fun e!650109 () Bool)

(assert (=> b!1017378 (= e!650112 e!650109)))

(declare-fun res!457264 () Bool)

(assert (=> b!1017378 (=> (not res!457264) (not e!650109))))

(declare-fun lt!353798 () Bool)

(assert (=> b!1017378 (= res!457264 (not lt!353798))))

(declare-fun b!1017379 () Bool)

(declare-fun e!650114 () Bool)

(assert (=> b!1017379 (= e!650114 (not (= (head!1869 (_1!6524 lt!353708)) (c!168414 lt!353712))))))

(declare-fun b!1017380 () Bool)

(declare-fun e!650111 () Bool)

(assert (=> b!1017380 (= e!650111 (= lt!353798 call!69466))))

(declare-fun b!1017381 () Bool)

(assert (=> b!1017381 (= e!650115 (matchR!1337 (derivativeStep!715 lt!353712 (head!1869 (_1!6524 lt!353708))) (tail!1431 (_1!6524 lt!353708))))))

(declare-fun b!1017382 () Bool)

(assert (=> b!1017382 (= e!650110 (= (head!1869 (_1!6524 lt!353708)) (c!168414 lt!353712)))))

(declare-fun d!294068 () Bool)

(assert (=> d!294068 e!650111))

(declare-fun c!168559 () Bool)

(assert (=> d!294068 (= c!168559 ((_ is EmptyExpr!2801) lt!353712))))

(assert (=> d!294068 (= lt!353798 e!650115)))

(declare-fun c!168558 () Bool)

(assert (=> d!294068 (= c!168558 (isEmpty!6364 (_1!6524 lt!353708)))))

(assert (=> d!294068 (validRegex!1270 lt!353712)))

(assert (=> d!294068 (= (matchR!1337 lt!353712 (_1!6524 lt!353708)) lt!353798)))

(declare-fun bm!69461 () Bool)

(assert (=> bm!69461 (= call!69466 (isEmpty!6364 (_1!6524 lt!353708)))))

(declare-fun b!1017383 () Bool)

(declare-fun e!650113 () Bool)

(assert (=> b!1017383 (= e!650111 e!650113)))

(declare-fun c!168560 () Bool)

(assert (=> b!1017383 (= c!168560 ((_ is EmptyLang!2801) lt!353712))))

(declare-fun b!1017384 () Bool)

(assert (=> b!1017384 (= e!650109 e!650114)))

(declare-fun res!457261 () Bool)

(assert (=> b!1017384 (=> res!457261 e!650114)))

(assert (=> b!1017384 (= res!457261 call!69466)))

(declare-fun b!1017385 () Bool)

(declare-fun res!457259 () Bool)

(assert (=> b!1017385 (=> res!457259 e!650114)))

(assert (=> b!1017385 (= res!457259 (not (isEmpty!6364 (tail!1431 (_1!6524 lt!353708)))))))

(declare-fun b!1017386 () Bool)

(declare-fun res!457262 () Bool)

(assert (=> b!1017386 (=> res!457262 e!650112)))

(assert (=> b!1017386 (= res!457262 e!650110)))

(declare-fun res!457265 () Bool)

(assert (=> b!1017386 (=> (not res!457265) (not e!650110))))

(assert (=> b!1017386 (= res!457265 lt!353798)))

(declare-fun b!1017387 () Bool)

(assert (=> b!1017387 (= e!650113 (not lt!353798))))

(declare-fun b!1017388 () Bool)

(declare-fun res!457263 () Bool)

(assert (=> b!1017388 (=> res!457263 e!650112)))

(assert (=> b!1017388 (= res!457263 (not ((_ is ElementMatch!2801) lt!353712)))))

(assert (=> b!1017388 (= e!650113 e!650112)))

(assert (= (and d!294068 c!168558) b!1017375))

(assert (= (and d!294068 (not c!168558)) b!1017381))

(assert (= (and d!294068 c!168559) b!1017380))

(assert (= (and d!294068 (not c!168559)) b!1017383))

(assert (= (and b!1017383 c!168560) b!1017387))

(assert (= (and b!1017383 (not c!168560)) b!1017388))

(assert (= (and b!1017388 (not res!457263)) b!1017386))

(assert (= (and b!1017386 res!457265) b!1017377))

(assert (= (and b!1017377 res!457260) b!1017376))

(assert (= (and b!1017376 res!457266) b!1017382))

(assert (= (and b!1017386 (not res!457262)) b!1017378))

(assert (= (and b!1017378 res!457264) b!1017384))

(assert (= (and b!1017384 (not res!457261)) b!1017385))

(assert (= (and b!1017385 (not res!457259)) b!1017379))

(assert (= (or b!1017380 b!1017377 b!1017384) bm!69461))

(declare-fun m!1198635 () Bool)

(assert (=> b!1017376 m!1198635))

(assert (=> b!1017376 m!1198635))

(declare-fun m!1198637 () Bool)

(assert (=> b!1017376 m!1198637))

(declare-fun m!1198639 () Bool)

(assert (=> bm!69461 m!1198639))

(assert (=> d!294068 m!1198639))

(declare-fun m!1198641 () Bool)

(assert (=> d!294068 m!1198641))

(declare-fun m!1198643 () Bool)

(assert (=> b!1017382 m!1198643))

(declare-fun m!1198645 () Bool)

(assert (=> b!1017375 m!1198645))

(assert (=> b!1017385 m!1198635))

(assert (=> b!1017385 m!1198635))

(assert (=> b!1017385 m!1198637))

(assert (=> b!1017381 m!1198643))

(assert (=> b!1017381 m!1198643))

(declare-fun m!1198647 () Bool)

(assert (=> b!1017381 m!1198647))

(assert (=> b!1017381 m!1198635))

(assert (=> b!1017381 m!1198647))

(assert (=> b!1017381 m!1198635))

(declare-fun m!1198649 () Bool)

(assert (=> b!1017381 m!1198649))

(assert (=> b!1017379 m!1198643))

(assert (=> b!1016779 d!294068))

(declare-fun bm!69462 () Bool)

(declare-fun call!69467 () Regex!2801)

(declare-fun c!168563 () Bool)

(assert (=> bm!69462 (= call!69467 (removeUselessConcat!382 (ite c!168563 (regOne!6114 (reg!3130 r!15766)) (regOne!6115 (reg!3130 r!15766)))))))

(declare-fun b!1017390 () Bool)

(declare-fun c!168564 () Bool)

(assert (=> b!1017390 (= c!168564 ((_ is Star!2801) (reg!3130 r!15766)))))

(declare-fun e!650121 () Regex!2801)

(declare-fun e!650117 () Regex!2801)

(assert (=> b!1017390 (= e!650121 e!650117)))

(declare-fun b!1017391 () Bool)

(declare-fun e!650119 () Bool)

(declare-fun lt!353799 () Regex!2801)

(assert (=> b!1017391 (= e!650119 (= (nullable!911 lt!353799) (nullable!911 (reg!3130 r!15766))))))

(declare-fun b!1017392 () Bool)

(declare-fun call!69469 () Regex!2801)

(assert (=> b!1017392 (= e!650117 (Star!2801 call!69469))))

(declare-fun bm!69463 () Bool)

(declare-fun call!69471 () Regex!2801)

(assert (=> bm!69463 (= call!69469 call!69471)))

(declare-fun b!1017393 () Bool)

(declare-fun e!650120 () Regex!2801)

(assert (=> b!1017393 (= e!650120 (Concat!4634 call!69467 call!69471))))

(declare-fun bm!69464 () Bool)

(declare-fun call!69468 () Regex!2801)

(declare-fun call!69470 () Regex!2801)

(assert (=> bm!69464 (= call!69468 call!69470)))

(declare-fun b!1017394 () Bool)

(assert (=> b!1017394 (= c!168563 ((_ is Concat!4634) (reg!3130 r!15766)))))

(declare-fun e!650116 () Regex!2801)

(assert (=> b!1017394 (= e!650116 e!650120)))

(declare-fun b!1017389 () Bool)

(assert (=> b!1017389 (= e!650116 call!69468)))

(declare-fun d!294070 () Bool)

(assert (=> d!294070 e!650119))

(declare-fun res!457267 () Bool)

(assert (=> d!294070 (=> (not res!457267) (not e!650119))))

(assert (=> d!294070 (= res!457267 (validRegex!1270 lt!353799))))

(declare-fun e!650118 () Regex!2801)

(assert (=> d!294070 (= lt!353799 e!650118)))

(declare-fun c!168565 () Bool)

(assert (=> d!294070 (= c!168565 (and ((_ is Concat!4634) (reg!3130 r!15766)) ((_ is EmptyExpr!2801) (regOne!6114 (reg!3130 r!15766)))))))

(assert (=> d!294070 (validRegex!1270 (reg!3130 r!15766))))

(assert (=> d!294070 (= (removeUselessConcat!382 (reg!3130 r!15766)) lt!353799)))

(declare-fun bm!69465 () Bool)

(declare-fun c!168562 () Bool)

(declare-fun c!168561 () Bool)

(assert (=> bm!69465 (= call!69470 (removeUselessConcat!382 (ite c!168565 (regTwo!6114 (reg!3130 r!15766)) (ite c!168562 (regOne!6114 (reg!3130 r!15766)) (ite c!168563 (regTwo!6114 (reg!3130 r!15766)) (ite c!168561 (regTwo!6115 (reg!3130 r!15766)) (reg!3130 (reg!3130 r!15766))))))))))

(declare-fun b!1017395 () Bool)

(assert (=> b!1017395 (= e!650121 (Union!2801 call!69467 call!69469))))

(declare-fun b!1017396 () Bool)

(assert (=> b!1017396 (= e!650120 e!650121)))

(assert (=> b!1017396 (= c!168561 ((_ is Union!2801) (reg!3130 r!15766)))))

(declare-fun b!1017397 () Bool)

(assert (=> b!1017397 (= e!650118 e!650116)))

(assert (=> b!1017397 (= c!168562 (and ((_ is Concat!4634) (reg!3130 r!15766)) ((_ is EmptyExpr!2801) (regTwo!6114 (reg!3130 r!15766)))))))

(declare-fun bm!69466 () Bool)

(assert (=> bm!69466 (= call!69471 call!69468)))

(declare-fun b!1017398 () Bool)

(assert (=> b!1017398 (= e!650118 call!69470)))

(declare-fun b!1017399 () Bool)

(assert (=> b!1017399 (= e!650117 (reg!3130 r!15766))))

(assert (= (and d!294070 c!168565) b!1017398))

(assert (= (and d!294070 (not c!168565)) b!1017397))

(assert (= (and b!1017397 c!168562) b!1017389))

(assert (= (and b!1017397 (not c!168562)) b!1017394))

(assert (= (and b!1017394 c!168563) b!1017393))

(assert (= (and b!1017394 (not c!168563)) b!1017396))

(assert (= (and b!1017396 c!168561) b!1017395))

(assert (= (and b!1017396 (not c!168561)) b!1017390))

(assert (= (and b!1017390 c!168564) b!1017392))

(assert (= (and b!1017390 (not c!168564)) b!1017399))

(assert (= (or b!1017395 b!1017392) bm!69463))

(assert (= (or b!1017393 bm!69463) bm!69466))

(assert (= (or b!1017393 b!1017395) bm!69462))

(assert (= (or b!1017389 bm!69466) bm!69464))

(assert (= (or b!1017398 bm!69464) bm!69465))

(assert (= (and d!294070 res!457267) b!1017391))

(declare-fun m!1198651 () Bool)

(assert (=> bm!69462 m!1198651))

(declare-fun m!1198653 () Bool)

(assert (=> b!1017391 m!1198653))

(assert (=> b!1017391 m!1198541))

(declare-fun m!1198655 () Bool)

(assert (=> d!294070 m!1198655))

(assert (=> d!294070 m!1198363))

(declare-fun m!1198657 () Bool)

(assert (=> bm!69465 m!1198657))

(assert (=> b!1016779 d!294070))

(declare-fun d!294072 () Bool)

(declare-fun lt!353800 () Int)

(assert (=> d!294072 (>= lt!353800 0)))

(declare-fun e!650122 () Int)

(assert (=> d!294072 (= lt!353800 e!650122)))

(declare-fun c!168566 () Bool)

(assert (=> d!294072 (= c!168566 ((_ is Nil!10015) (_2!6524 lt!353708)))))

(assert (=> d!294072 (= (size!7977 (_2!6524 lt!353708)) lt!353800)))

(declare-fun b!1017400 () Bool)

(assert (=> b!1017400 (= e!650122 0)))

(declare-fun b!1017401 () Bool)

(assert (=> b!1017401 (= e!650122 (+ 1 (size!7977 (t!101077 (_2!6524 lt!353708)))))))

(assert (= (and d!294072 c!168566) b!1017400))

(assert (= (and d!294072 (not c!168566)) b!1017401))

(declare-fun m!1198659 () Bool)

(assert (=> b!1017401 m!1198659))

(assert (=> b!1016779 d!294072))

(declare-fun d!294074 () Bool)

(assert (=> d!294074 (= (matchR!1337 (reg!3130 r!15766) (_1!6524 lt!353708)) (matchR!1337 (removeUselessConcat!382 (reg!3130 r!15766)) (_1!6524 lt!353708)))))

(declare-fun lt!353801 () Unit!15275)

(assert (=> d!294074 (= lt!353801 (choose!6427 (reg!3130 r!15766) (_1!6524 lt!353708)))))

(assert (=> d!294074 (validRegex!1270 (reg!3130 r!15766))))

(assert (=> d!294074 (= (lemmaRemoveUselessConcatSound!226 (reg!3130 r!15766) (_1!6524 lt!353708)) lt!353801)))

(declare-fun bs!246502 () Bool)

(assert (= bs!246502 d!294074))

(declare-fun m!1198661 () Bool)

(assert (=> bs!246502 m!1198661))

(assert (=> bs!246502 m!1198239))

(assert (=> bs!246502 m!1198239))

(declare-fun m!1198663 () Bool)

(assert (=> bs!246502 m!1198663))

(assert (=> bs!246502 m!1198269))

(assert (=> bs!246502 m!1198363))

(assert (=> b!1016779 d!294074))

(declare-fun bs!246503 () Bool)

(declare-fun b!1017441 () Bool)

(assert (= bs!246503 (and b!1017441 d!294042)))

(declare-fun lambda!36047 () Int)

(assert (=> bs!246503 (not (= lambda!36047 lambda!36042))))

(declare-fun bs!246504 () Bool)

(assert (= bs!246504 (and b!1017441 d!293986)))

(assert (=> bs!246504 (not (= lambda!36047 lambda!36029))))

(declare-fun bs!246505 () Bool)

(assert (= bs!246505 (and b!1017441 b!1016781)))

(assert (=> bs!246505 (not (= lambda!36047 lambda!36017))))

(assert (=> bs!246504 (= (= r!15766 (Star!2801 (reg!3130 r!15766))) (= lambda!36047 lambda!36032))))

(assert (=> bs!246505 (= (= r!15766 lt!353703) (= lambda!36047 lambda!36018))))

(assert (=> b!1017441 true))

(assert (=> b!1017441 true))

(declare-fun bs!246506 () Bool)

(declare-fun b!1017436 () Bool)

(assert (= bs!246506 (and b!1017436 d!294042)))

(declare-fun lambda!36048 () Int)

(assert (=> bs!246506 (not (= lambda!36048 lambda!36042))))

(declare-fun bs!246507 () Bool)

(assert (= bs!246507 (and b!1017436 b!1016781)))

(assert (=> bs!246507 (not (= lambda!36048 lambda!36017))))

(declare-fun bs!246508 () Bool)

(assert (= bs!246508 (and b!1017436 d!293986)))

(assert (=> bs!246508 (not (= lambda!36048 lambda!36032))))

(assert (=> bs!246507 (not (= lambda!36048 lambda!36018))))

(declare-fun bs!246509 () Bool)

(assert (= bs!246509 (and b!1017436 b!1017441)))

(assert (=> bs!246509 (not (= lambda!36048 lambda!36047))))

(assert (=> bs!246508 (not (= lambda!36048 lambda!36029))))

(assert (=> b!1017436 true))

(assert (=> b!1017436 true))

(declare-fun b!1017434 () Bool)

(declare-fun res!457284 () Bool)

(declare-fun e!650145 () Bool)

(assert (=> b!1017434 (=> res!457284 e!650145)))

(declare-fun call!69476 () Bool)

(assert (=> b!1017434 (= res!457284 call!69476)))

(declare-fun e!650144 () Bool)

(assert (=> b!1017434 (= e!650144 e!650145)))

(declare-fun b!1017435 () Bool)

(declare-fun c!168578 () Bool)

(assert (=> b!1017435 (= c!168578 ((_ is Union!2801) r!15766))))

(declare-fun e!650146 () Bool)

(declare-fun e!650147 () Bool)

(assert (=> b!1017435 (= e!650146 e!650147)))

(declare-fun call!69477 () Bool)

(assert (=> b!1017436 (= e!650144 call!69477)))

(declare-fun b!1017437 () Bool)

(assert (=> b!1017437 (= e!650146 (= s!10566 (Cons!10015 (c!168414 r!15766) Nil!10015)))))

(declare-fun c!168576 () Bool)

(declare-fun bm!69471 () Bool)

(assert (=> bm!69471 (= call!69477 (Exists!534 (ite c!168576 lambda!36047 lambda!36048)))))

(declare-fun b!1017438 () Bool)

(declare-fun e!650143 () Bool)

(assert (=> b!1017438 (= e!650143 call!69476)))

(declare-fun b!1017439 () Bool)

(declare-fun c!168577 () Bool)

(assert (=> b!1017439 (= c!168577 ((_ is ElementMatch!2801) r!15766))))

(declare-fun e!650142 () Bool)

(assert (=> b!1017439 (= e!650142 e!650146)))

(declare-fun b!1017440 () Bool)

(assert (=> b!1017440 (= e!650147 e!650144)))

(assert (=> b!1017440 (= c!168576 ((_ is Star!2801) r!15766))))

(assert (=> b!1017441 (= e!650145 call!69477)))

(declare-fun b!1017442 () Bool)

(declare-fun e!650141 () Bool)

(assert (=> b!1017442 (= e!650141 (matchRSpec!600 (regTwo!6115 r!15766) s!10566))))

(declare-fun b!1017443 () Bool)

(assert (=> b!1017443 (= e!650147 e!650141)))

(declare-fun res!457285 () Bool)

(assert (=> b!1017443 (= res!457285 (matchRSpec!600 (regOne!6115 r!15766) s!10566))))

(assert (=> b!1017443 (=> res!457285 e!650141)))

(declare-fun b!1017444 () Bool)

(assert (=> b!1017444 (= e!650143 e!650142)))

(declare-fun res!457286 () Bool)

(assert (=> b!1017444 (= res!457286 (not ((_ is EmptyLang!2801) r!15766)))))

(assert (=> b!1017444 (=> (not res!457286) (not e!650142))))

(declare-fun d!294076 () Bool)

(declare-fun c!168575 () Bool)

(assert (=> d!294076 (= c!168575 ((_ is EmptyExpr!2801) r!15766))))

(assert (=> d!294076 (= (matchRSpec!600 r!15766 s!10566) e!650143)))

(declare-fun bm!69472 () Bool)

(assert (=> bm!69472 (= call!69476 (isEmpty!6364 s!10566))))

(assert (= (and d!294076 c!168575) b!1017438))

(assert (= (and d!294076 (not c!168575)) b!1017444))

(assert (= (and b!1017444 res!457286) b!1017439))

(assert (= (and b!1017439 c!168577) b!1017437))

(assert (= (and b!1017439 (not c!168577)) b!1017435))

(assert (= (and b!1017435 c!168578) b!1017443))

(assert (= (and b!1017435 (not c!168578)) b!1017440))

(assert (= (and b!1017443 (not res!457285)) b!1017442))

(assert (= (and b!1017440 c!168576) b!1017434))

(assert (= (and b!1017440 (not c!168576)) b!1017436))

(assert (= (and b!1017434 (not res!457284)) b!1017441))

(assert (= (or b!1017441 b!1017436) bm!69471))

(assert (= (or b!1017438 b!1017434) bm!69472))

(declare-fun m!1198665 () Bool)

(assert (=> bm!69471 m!1198665))

(declare-fun m!1198667 () Bool)

(assert (=> b!1017442 m!1198667))

(declare-fun m!1198669 () Bool)

(assert (=> b!1017443 m!1198669))

(assert (=> bm!69472 m!1198285))

(assert (=> b!1016785 d!294076))

(declare-fun b!1017445 () Bool)

(declare-fun e!650154 () Bool)

(assert (=> b!1017445 (= e!650154 (nullable!911 r!15766))))

(declare-fun b!1017446 () Bool)

(declare-fun res!457294 () Bool)

(declare-fun e!650149 () Bool)

(assert (=> b!1017446 (=> (not res!457294) (not e!650149))))

(assert (=> b!1017446 (= res!457294 (isEmpty!6364 (tail!1431 s!10566)))))

(declare-fun b!1017447 () Bool)

(declare-fun res!457288 () Bool)

(assert (=> b!1017447 (=> (not res!457288) (not e!650149))))

(declare-fun call!69478 () Bool)

(assert (=> b!1017447 (= res!457288 (not call!69478))))

(declare-fun b!1017448 () Bool)

(declare-fun e!650151 () Bool)

(declare-fun e!650148 () Bool)

(assert (=> b!1017448 (= e!650151 e!650148)))

(declare-fun res!457292 () Bool)

(assert (=> b!1017448 (=> (not res!457292) (not e!650148))))

(declare-fun lt!353802 () Bool)

(assert (=> b!1017448 (= res!457292 (not lt!353802))))

(declare-fun b!1017449 () Bool)

(declare-fun e!650153 () Bool)

(assert (=> b!1017449 (= e!650153 (not (= (head!1869 s!10566) (c!168414 r!15766))))))

(declare-fun b!1017450 () Bool)

(declare-fun e!650150 () Bool)

(assert (=> b!1017450 (= e!650150 (= lt!353802 call!69478))))

(declare-fun b!1017451 () Bool)

(assert (=> b!1017451 (= e!650154 (matchR!1337 (derivativeStep!715 r!15766 (head!1869 s!10566)) (tail!1431 s!10566)))))

(declare-fun b!1017452 () Bool)

(assert (=> b!1017452 (= e!650149 (= (head!1869 s!10566) (c!168414 r!15766)))))

(declare-fun d!294078 () Bool)

(assert (=> d!294078 e!650150))

(declare-fun c!168580 () Bool)

(assert (=> d!294078 (= c!168580 ((_ is EmptyExpr!2801) r!15766))))

(assert (=> d!294078 (= lt!353802 e!650154)))

(declare-fun c!168579 () Bool)

(assert (=> d!294078 (= c!168579 (isEmpty!6364 s!10566))))

(assert (=> d!294078 (validRegex!1270 r!15766)))

(assert (=> d!294078 (= (matchR!1337 r!15766 s!10566) lt!353802)))

(declare-fun bm!69473 () Bool)

(assert (=> bm!69473 (= call!69478 (isEmpty!6364 s!10566))))

(declare-fun b!1017453 () Bool)

(declare-fun e!650152 () Bool)

(assert (=> b!1017453 (= e!650150 e!650152)))

(declare-fun c!168581 () Bool)

(assert (=> b!1017453 (= c!168581 ((_ is EmptyLang!2801) r!15766))))

(declare-fun b!1017454 () Bool)

(assert (=> b!1017454 (= e!650148 e!650153)))

(declare-fun res!457289 () Bool)

(assert (=> b!1017454 (=> res!457289 e!650153)))

(assert (=> b!1017454 (= res!457289 call!69478)))

(declare-fun b!1017455 () Bool)

(declare-fun res!457287 () Bool)

(assert (=> b!1017455 (=> res!457287 e!650153)))

(assert (=> b!1017455 (= res!457287 (not (isEmpty!6364 (tail!1431 s!10566))))))

(declare-fun b!1017456 () Bool)

(declare-fun res!457290 () Bool)

(assert (=> b!1017456 (=> res!457290 e!650151)))

(assert (=> b!1017456 (= res!457290 e!650149)))

(declare-fun res!457293 () Bool)

(assert (=> b!1017456 (=> (not res!457293) (not e!650149))))

(assert (=> b!1017456 (= res!457293 lt!353802)))

(declare-fun b!1017457 () Bool)

(assert (=> b!1017457 (= e!650152 (not lt!353802))))

(declare-fun b!1017458 () Bool)

(declare-fun res!457291 () Bool)

(assert (=> b!1017458 (=> res!457291 e!650151)))

(assert (=> b!1017458 (= res!457291 (not ((_ is ElementMatch!2801) r!15766)))))

(assert (=> b!1017458 (= e!650152 e!650151)))

(assert (= (and d!294078 c!168579) b!1017445))

(assert (= (and d!294078 (not c!168579)) b!1017451))

(assert (= (and d!294078 c!168580) b!1017450))

(assert (= (and d!294078 (not c!168580)) b!1017453))

(assert (= (and b!1017453 c!168581) b!1017457))

(assert (= (and b!1017453 (not c!168581)) b!1017458))

(assert (= (and b!1017458 (not res!457291)) b!1017456))

(assert (= (and b!1017456 res!457293) b!1017447))

(assert (= (and b!1017447 res!457288) b!1017446))

(assert (= (and b!1017446 res!457294) b!1017452))

(assert (= (and b!1017456 (not res!457290)) b!1017448))

(assert (= (and b!1017448 res!457292) b!1017454))

(assert (= (and b!1017454 (not res!457289)) b!1017455))

(assert (= (and b!1017455 (not res!457287)) b!1017449))

(assert (= (or b!1017450 b!1017447 b!1017454) bm!69473))

(assert (=> b!1017446 m!1198587))

(assert (=> b!1017446 m!1198587))

(assert (=> b!1017446 m!1198589))

(assert (=> bm!69473 m!1198285))

(assert (=> d!294078 m!1198285))

(assert (=> d!294078 m!1198229))

(assert (=> b!1017452 m!1198593))

(assert (=> b!1017445 m!1198549))

(assert (=> b!1017455 m!1198587))

(assert (=> b!1017455 m!1198587))

(assert (=> b!1017455 m!1198589))

(assert (=> b!1017451 m!1198593))

(assert (=> b!1017451 m!1198593))

(declare-fun m!1198671 () Bool)

(assert (=> b!1017451 m!1198671))

(assert (=> b!1017451 m!1198587))

(assert (=> b!1017451 m!1198671))

(assert (=> b!1017451 m!1198587))

(declare-fun m!1198673 () Bool)

(assert (=> b!1017451 m!1198673))

(assert (=> b!1017449 m!1198593))

(assert (=> b!1016785 d!294078))

(declare-fun d!294080 () Bool)

(assert (=> d!294080 (= (matchR!1337 r!15766 s!10566) (matchRSpec!600 r!15766 s!10566))))

(declare-fun lt!353805 () Unit!15275)

(declare-fun choose!6428 (Regex!2801 List!10031) Unit!15275)

(assert (=> d!294080 (= lt!353805 (choose!6428 r!15766 s!10566))))

(assert (=> d!294080 (validRegex!1270 r!15766)))

(assert (=> d!294080 (= (mainMatchTheorem!600 r!15766 s!10566) lt!353805)))

(declare-fun bs!246510 () Bool)

(assert (= bs!246510 d!294080))

(assert (=> bs!246510 m!1198233))

(assert (=> bs!246510 m!1198231))

(declare-fun m!1198675 () Bool)

(assert (=> bs!246510 m!1198675))

(assert (=> bs!246510 m!1198229))

(assert (=> b!1016785 d!294080))

(declare-fun b!1017459 () Bool)

(declare-fun e!650161 () Bool)

(assert (=> b!1017459 (= e!650161 (nullable!911 lt!353703))))

(declare-fun b!1017460 () Bool)

(declare-fun res!457302 () Bool)

(declare-fun e!650156 () Bool)

(assert (=> b!1017460 (=> (not res!457302) (not e!650156))))

(assert (=> b!1017460 (= res!457302 (isEmpty!6364 (tail!1431 (_2!6524 lt!353708))))))

(declare-fun b!1017461 () Bool)

(declare-fun res!457296 () Bool)

(assert (=> b!1017461 (=> (not res!457296) (not e!650156))))

(declare-fun call!69479 () Bool)

(assert (=> b!1017461 (= res!457296 (not call!69479))))

(declare-fun b!1017462 () Bool)

(declare-fun e!650158 () Bool)

(declare-fun e!650155 () Bool)

(assert (=> b!1017462 (= e!650158 e!650155)))

(declare-fun res!457300 () Bool)

(assert (=> b!1017462 (=> (not res!457300) (not e!650155))))

(declare-fun lt!353806 () Bool)

(assert (=> b!1017462 (= res!457300 (not lt!353806))))

(declare-fun b!1017463 () Bool)

(declare-fun e!650160 () Bool)

(assert (=> b!1017463 (= e!650160 (not (= (head!1869 (_2!6524 lt!353708)) (c!168414 lt!353703))))))

(declare-fun b!1017464 () Bool)

(declare-fun e!650157 () Bool)

(assert (=> b!1017464 (= e!650157 (= lt!353806 call!69479))))

(declare-fun b!1017465 () Bool)

(assert (=> b!1017465 (= e!650161 (matchR!1337 (derivativeStep!715 lt!353703 (head!1869 (_2!6524 lt!353708))) (tail!1431 (_2!6524 lt!353708))))))

(declare-fun b!1017466 () Bool)

(assert (=> b!1017466 (= e!650156 (= (head!1869 (_2!6524 lt!353708)) (c!168414 lt!353703)))))

(declare-fun d!294082 () Bool)

(assert (=> d!294082 e!650157))

(declare-fun c!168583 () Bool)

(assert (=> d!294082 (= c!168583 ((_ is EmptyExpr!2801) lt!353703))))

(assert (=> d!294082 (= lt!353806 e!650161)))

(declare-fun c!168582 () Bool)

(assert (=> d!294082 (= c!168582 (isEmpty!6364 (_2!6524 lt!353708)))))

(assert (=> d!294082 (validRegex!1270 lt!353703)))

(assert (=> d!294082 (= (matchR!1337 lt!353703 (_2!6524 lt!353708)) lt!353806)))

(declare-fun bm!69474 () Bool)

(assert (=> bm!69474 (= call!69479 (isEmpty!6364 (_2!6524 lt!353708)))))

(declare-fun b!1017467 () Bool)

(declare-fun e!650159 () Bool)

(assert (=> b!1017467 (= e!650157 e!650159)))

(declare-fun c!168584 () Bool)

(assert (=> b!1017467 (= c!168584 ((_ is EmptyLang!2801) lt!353703))))

(declare-fun b!1017468 () Bool)

(assert (=> b!1017468 (= e!650155 e!650160)))

(declare-fun res!457297 () Bool)

(assert (=> b!1017468 (=> res!457297 e!650160)))

(assert (=> b!1017468 (= res!457297 call!69479)))

(declare-fun b!1017469 () Bool)

(declare-fun res!457295 () Bool)

(assert (=> b!1017469 (=> res!457295 e!650160)))

(assert (=> b!1017469 (= res!457295 (not (isEmpty!6364 (tail!1431 (_2!6524 lt!353708)))))))

(declare-fun b!1017470 () Bool)

(declare-fun res!457298 () Bool)

(assert (=> b!1017470 (=> res!457298 e!650158)))

(assert (=> b!1017470 (= res!457298 e!650156)))

(declare-fun res!457301 () Bool)

(assert (=> b!1017470 (=> (not res!457301) (not e!650156))))

(assert (=> b!1017470 (= res!457301 lt!353806)))

(declare-fun b!1017471 () Bool)

(assert (=> b!1017471 (= e!650159 (not lt!353806))))

(declare-fun b!1017472 () Bool)

(declare-fun res!457299 () Bool)

(assert (=> b!1017472 (=> res!457299 e!650158)))

(assert (=> b!1017472 (= res!457299 (not ((_ is ElementMatch!2801) lt!353703)))))

(assert (=> b!1017472 (= e!650159 e!650158)))

(assert (= (and d!294082 c!168582) b!1017459))

(assert (= (and d!294082 (not c!168582)) b!1017465))

(assert (= (and d!294082 c!168583) b!1017464))

(assert (= (and d!294082 (not c!168583)) b!1017467))

(assert (= (and b!1017467 c!168584) b!1017471))

(assert (= (and b!1017467 (not c!168584)) b!1017472))

(assert (= (and b!1017472 (not res!457299)) b!1017470))

(assert (= (and b!1017470 res!457301) b!1017461))

(assert (= (and b!1017461 res!457296) b!1017460))

(assert (= (and b!1017460 res!457302) b!1017466))

(assert (= (and b!1017470 (not res!457298)) b!1017462))

(assert (= (and b!1017462 res!457300) b!1017468))

(assert (= (and b!1017468 (not res!457297)) b!1017469))

(assert (= (and b!1017469 (not res!457295)) b!1017463))

(assert (= (or b!1017464 b!1017461 b!1017468) bm!69474))

(assert (=> b!1017460 m!1198619))

(assert (=> b!1017460 m!1198619))

(assert (=> b!1017460 m!1198621))

(assert (=> bm!69474 m!1198623))

(assert (=> d!294082 m!1198623))

(assert (=> d!294082 m!1198609))

(assert (=> b!1017466 m!1198627))

(assert (=> b!1017459 m!1198605))

(assert (=> b!1017469 m!1198619))

(assert (=> b!1017469 m!1198619))

(assert (=> b!1017469 m!1198621))

(assert (=> b!1017465 m!1198627))

(assert (=> b!1017465 m!1198627))

(declare-fun m!1198677 () Bool)

(assert (=> b!1017465 m!1198677))

(assert (=> b!1017465 m!1198619))

(assert (=> b!1017465 m!1198677))

(assert (=> b!1017465 m!1198619))

(declare-fun m!1198679 () Bool)

(assert (=> b!1017465 m!1198679))

(assert (=> b!1017463 m!1198627))

(assert (=> b!1016790 d!294082))

(declare-fun d!294084 () Bool)

(assert (=> d!294084 (= (matchR!1337 (reg!3130 r!15766) (_1!6524 lt!353708)) (matchRSpec!600 (reg!3130 r!15766) (_1!6524 lt!353708)))))

(declare-fun lt!353807 () Unit!15275)

(assert (=> d!294084 (= lt!353807 (choose!6428 (reg!3130 r!15766) (_1!6524 lt!353708)))))

(assert (=> d!294084 (validRegex!1270 (reg!3130 r!15766))))

(assert (=> d!294084 (= (mainMatchTheorem!600 (reg!3130 r!15766) (_1!6524 lt!353708)) lt!353807)))

(declare-fun bs!246511 () Bool)

(assert (= bs!246511 d!294084))

(assert (=> bs!246511 m!1198269))

(declare-fun m!1198681 () Bool)

(assert (=> bs!246511 m!1198681))

(declare-fun m!1198683 () Bool)

(assert (=> bs!246511 m!1198683))

(assert (=> bs!246511 m!1198363))

(assert (=> b!1016789 d!294084))

(declare-fun b!1017473 () Bool)

(declare-fun e!650168 () Bool)

(assert (=> b!1017473 (= e!650168 (nullable!911 lt!353698))))

(declare-fun b!1017474 () Bool)

(declare-fun res!457310 () Bool)

(declare-fun e!650163 () Bool)

(assert (=> b!1017474 (=> (not res!457310) (not e!650163))))

(assert (=> b!1017474 (= res!457310 (isEmpty!6364 (tail!1431 (_2!6524 lt!353708))))))

(declare-fun b!1017475 () Bool)

(declare-fun res!457304 () Bool)

(assert (=> b!1017475 (=> (not res!457304) (not e!650163))))

(declare-fun call!69480 () Bool)

(assert (=> b!1017475 (= res!457304 (not call!69480))))

(declare-fun b!1017476 () Bool)

(declare-fun e!650165 () Bool)

(declare-fun e!650162 () Bool)

(assert (=> b!1017476 (= e!650165 e!650162)))

(declare-fun res!457308 () Bool)

(assert (=> b!1017476 (=> (not res!457308) (not e!650162))))

(declare-fun lt!353808 () Bool)

(assert (=> b!1017476 (= res!457308 (not lt!353808))))

(declare-fun b!1017477 () Bool)

(declare-fun e!650167 () Bool)

(assert (=> b!1017477 (= e!650167 (not (= (head!1869 (_2!6524 lt!353708)) (c!168414 lt!353698))))))

(declare-fun b!1017478 () Bool)

(declare-fun e!650164 () Bool)

(assert (=> b!1017478 (= e!650164 (= lt!353808 call!69480))))

(declare-fun b!1017479 () Bool)

(assert (=> b!1017479 (= e!650168 (matchR!1337 (derivativeStep!715 lt!353698 (head!1869 (_2!6524 lt!353708))) (tail!1431 (_2!6524 lt!353708))))))

(declare-fun b!1017480 () Bool)

(assert (=> b!1017480 (= e!650163 (= (head!1869 (_2!6524 lt!353708)) (c!168414 lt!353698)))))

(declare-fun d!294086 () Bool)

(assert (=> d!294086 e!650164))

(declare-fun c!168586 () Bool)

(assert (=> d!294086 (= c!168586 ((_ is EmptyExpr!2801) lt!353698))))

(assert (=> d!294086 (= lt!353808 e!650168)))

(declare-fun c!168585 () Bool)

(assert (=> d!294086 (= c!168585 (isEmpty!6364 (_2!6524 lt!353708)))))

(assert (=> d!294086 (validRegex!1270 lt!353698)))

(assert (=> d!294086 (= (matchR!1337 lt!353698 (_2!6524 lt!353708)) lt!353808)))

(declare-fun bm!69475 () Bool)

(assert (=> bm!69475 (= call!69480 (isEmpty!6364 (_2!6524 lt!353708)))))

(declare-fun b!1017481 () Bool)

(declare-fun e!650166 () Bool)

(assert (=> b!1017481 (= e!650164 e!650166)))

(declare-fun c!168587 () Bool)

(assert (=> b!1017481 (= c!168587 ((_ is EmptyLang!2801) lt!353698))))

(declare-fun b!1017482 () Bool)

(assert (=> b!1017482 (= e!650162 e!650167)))

(declare-fun res!457305 () Bool)

(assert (=> b!1017482 (=> res!457305 e!650167)))

(assert (=> b!1017482 (= res!457305 call!69480)))

(declare-fun b!1017483 () Bool)

(declare-fun res!457303 () Bool)

(assert (=> b!1017483 (=> res!457303 e!650167)))

(assert (=> b!1017483 (= res!457303 (not (isEmpty!6364 (tail!1431 (_2!6524 lt!353708)))))))

(declare-fun b!1017484 () Bool)

(declare-fun res!457306 () Bool)

(assert (=> b!1017484 (=> res!457306 e!650165)))

(assert (=> b!1017484 (= res!457306 e!650163)))

(declare-fun res!457309 () Bool)

(assert (=> b!1017484 (=> (not res!457309) (not e!650163))))

(assert (=> b!1017484 (= res!457309 lt!353808)))

(declare-fun b!1017485 () Bool)

(assert (=> b!1017485 (= e!650166 (not lt!353808))))

(declare-fun b!1017486 () Bool)

(declare-fun res!457307 () Bool)

(assert (=> b!1017486 (=> res!457307 e!650165)))

(assert (=> b!1017486 (= res!457307 (not ((_ is ElementMatch!2801) lt!353698)))))

(assert (=> b!1017486 (= e!650166 e!650165)))

(assert (= (and d!294086 c!168585) b!1017473))

(assert (= (and d!294086 (not c!168585)) b!1017479))

(assert (= (and d!294086 c!168586) b!1017478))

(assert (= (and d!294086 (not c!168586)) b!1017481))

(assert (= (and b!1017481 c!168587) b!1017485))

(assert (= (and b!1017481 (not c!168587)) b!1017486))

(assert (= (and b!1017486 (not res!457307)) b!1017484))

(assert (= (and b!1017484 res!457309) b!1017475))

(assert (= (and b!1017475 res!457304) b!1017474))

(assert (= (and b!1017474 res!457310) b!1017480))

(assert (= (and b!1017484 (not res!457306)) b!1017476))

(assert (= (and b!1017476 res!457308) b!1017482))

(assert (= (and b!1017482 (not res!457305)) b!1017483))

(assert (= (and b!1017483 (not res!457303)) b!1017477))

(assert (= (or b!1017478 b!1017475 b!1017482) bm!69475))

(assert (=> b!1017474 m!1198619))

(assert (=> b!1017474 m!1198619))

(assert (=> b!1017474 m!1198621))

(assert (=> bm!69475 m!1198623))

(assert (=> d!294086 m!1198623))

(assert (=> d!294086 m!1198265))

(assert (=> b!1017480 m!1198627))

(assert (=> b!1017473 m!1198581))

(assert (=> b!1017483 m!1198619))

(assert (=> b!1017483 m!1198619))

(assert (=> b!1017483 m!1198621))

(assert (=> b!1017479 m!1198627))

(assert (=> b!1017479 m!1198627))

(declare-fun m!1198685 () Bool)

(assert (=> b!1017479 m!1198685))

(assert (=> b!1017479 m!1198619))

(assert (=> b!1017479 m!1198685))

(assert (=> b!1017479 m!1198619))

(declare-fun m!1198687 () Bool)

(assert (=> b!1017479 m!1198687))

(assert (=> b!1017477 m!1198627))

(assert (=> b!1016777 d!294086))

(declare-fun b!1017487 () Bool)

(declare-fun e!650175 () Bool)

(assert (=> b!1017487 (= e!650175 (nullable!911 (reg!3130 r!15766)))))

(declare-fun b!1017488 () Bool)

(declare-fun res!457318 () Bool)

(declare-fun e!650170 () Bool)

(assert (=> b!1017488 (=> (not res!457318) (not e!650170))))

(assert (=> b!1017488 (= res!457318 (isEmpty!6364 (tail!1431 (_1!6524 lt!353708))))))

(declare-fun b!1017489 () Bool)

(declare-fun res!457312 () Bool)

(assert (=> b!1017489 (=> (not res!457312) (not e!650170))))

(declare-fun call!69481 () Bool)

(assert (=> b!1017489 (= res!457312 (not call!69481))))

(declare-fun b!1017490 () Bool)

(declare-fun e!650172 () Bool)

(declare-fun e!650169 () Bool)

(assert (=> b!1017490 (= e!650172 e!650169)))

(declare-fun res!457316 () Bool)

(assert (=> b!1017490 (=> (not res!457316) (not e!650169))))

(declare-fun lt!353809 () Bool)

(assert (=> b!1017490 (= res!457316 (not lt!353809))))

(declare-fun b!1017491 () Bool)

(declare-fun e!650174 () Bool)

(assert (=> b!1017491 (= e!650174 (not (= (head!1869 (_1!6524 lt!353708)) (c!168414 (reg!3130 r!15766)))))))

(declare-fun b!1017492 () Bool)

(declare-fun e!650171 () Bool)

(assert (=> b!1017492 (= e!650171 (= lt!353809 call!69481))))

(declare-fun b!1017493 () Bool)

(assert (=> b!1017493 (= e!650175 (matchR!1337 (derivativeStep!715 (reg!3130 r!15766) (head!1869 (_1!6524 lt!353708))) (tail!1431 (_1!6524 lt!353708))))))

(declare-fun b!1017494 () Bool)

(assert (=> b!1017494 (= e!650170 (= (head!1869 (_1!6524 lt!353708)) (c!168414 (reg!3130 r!15766))))))

(declare-fun d!294088 () Bool)

(assert (=> d!294088 e!650171))

(declare-fun c!168589 () Bool)

(assert (=> d!294088 (= c!168589 ((_ is EmptyExpr!2801) (reg!3130 r!15766)))))

(assert (=> d!294088 (= lt!353809 e!650175)))

(declare-fun c!168588 () Bool)

(assert (=> d!294088 (= c!168588 (isEmpty!6364 (_1!6524 lt!353708)))))

(assert (=> d!294088 (validRegex!1270 (reg!3130 r!15766))))

(assert (=> d!294088 (= (matchR!1337 (reg!3130 r!15766) (_1!6524 lt!353708)) lt!353809)))

(declare-fun bm!69476 () Bool)

(assert (=> bm!69476 (= call!69481 (isEmpty!6364 (_1!6524 lt!353708)))))

(declare-fun b!1017495 () Bool)

(declare-fun e!650173 () Bool)

(assert (=> b!1017495 (= e!650171 e!650173)))

(declare-fun c!168590 () Bool)

(assert (=> b!1017495 (= c!168590 ((_ is EmptyLang!2801) (reg!3130 r!15766)))))

(declare-fun b!1017496 () Bool)

(assert (=> b!1017496 (= e!650169 e!650174)))

(declare-fun res!457313 () Bool)

(assert (=> b!1017496 (=> res!457313 e!650174)))

(assert (=> b!1017496 (= res!457313 call!69481)))

(declare-fun b!1017497 () Bool)

(declare-fun res!457311 () Bool)

(assert (=> b!1017497 (=> res!457311 e!650174)))

(assert (=> b!1017497 (= res!457311 (not (isEmpty!6364 (tail!1431 (_1!6524 lt!353708)))))))

(declare-fun b!1017498 () Bool)

(declare-fun res!457314 () Bool)

(assert (=> b!1017498 (=> res!457314 e!650172)))

(assert (=> b!1017498 (= res!457314 e!650170)))

(declare-fun res!457317 () Bool)

(assert (=> b!1017498 (=> (not res!457317) (not e!650170))))

(assert (=> b!1017498 (= res!457317 lt!353809)))

(declare-fun b!1017499 () Bool)

(assert (=> b!1017499 (= e!650173 (not lt!353809))))

(declare-fun b!1017500 () Bool)

(declare-fun res!457315 () Bool)

(assert (=> b!1017500 (=> res!457315 e!650172)))

(assert (=> b!1017500 (= res!457315 (not ((_ is ElementMatch!2801) (reg!3130 r!15766))))))

(assert (=> b!1017500 (= e!650173 e!650172)))

(assert (= (and d!294088 c!168588) b!1017487))

(assert (= (and d!294088 (not c!168588)) b!1017493))

(assert (= (and d!294088 c!168589) b!1017492))

(assert (= (and d!294088 (not c!168589)) b!1017495))

(assert (= (and b!1017495 c!168590) b!1017499))

(assert (= (and b!1017495 (not c!168590)) b!1017500))

(assert (= (and b!1017500 (not res!457315)) b!1017498))

(assert (= (and b!1017498 res!457317) b!1017489))

(assert (= (and b!1017489 res!457312) b!1017488))

(assert (= (and b!1017488 res!457318) b!1017494))

(assert (= (and b!1017498 (not res!457314)) b!1017490))

(assert (= (and b!1017490 res!457316) b!1017496))

(assert (= (and b!1017496 (not res!457313)) b!1017497))

(assert (= (and b!1017497 (not res!457311)) b!1017491))

(assert (= (or b!1017492 b!1017489 b!1017496) bm!69476))

(assert (=> b!1017488 m!1198635))

(assert (=> b!1017488 m!1198635))

(assert (=> b!1017488 m!1198637))

(assert (=> bm!69476 m!1198639))

(assert (=> d!294088 m!1198639))

(assert (=> d!294088 m!1198363))

(assert (=> b!1017494 m!1198643))

(assert (=> b!1017487 m!1198541))

(assert (=> b!1017497 m!1198635))

(assert (=> b!1017497 m!1198635))

(assert (=> b!1017497 m!1198637))

(assert (=> b!1017493 m!1198643))

(assert (=> b!1017493 m!1198643))

(declare-fun m!1198689 () Bool)

(assert (=> b!1017493 m!1198689))

(assert (=> b!1017493 m!1198635))

(assert (=> b!1017493 m!1198689))

(assert (=> b!1017493 m!1198635))

(declare-fun m!1198691 () Bool)

(assert (=> b!1017493 m!1198691))

(assert (=> b!1017491 m!1198643))

(assert (=> b!1016782 d!294088))

(declare-fun d!294090 () Bool)

(assert (=> d!294090 (= (get!3516 lt!353701) (v!19756 lt!353701))))

(assert (=> b!1016782 d!294090))

(declare-fun b!1017514 () Bool)

(declare-fun e!650178 () Bool)

(declare-fun tp!309328 () Bool)

(declare-fun tp!309329 () Bool)

(assert (=> b!1017514 (= e!650178 (and tp!309328 tp!309329))))

(assert (=> b!1016788 (= tp!309275 e!650178)))

(declare-fun b!1017511 () Bool)

(assert (=> b!1017511 (= e!650178 tp_is_empty!5245)))

(declare-fun b!1017512 () Bool)

(declare-fun tp!309327 () Bool)

(declare-fun tp!309326 () Bool)

(assert (=> b!1017512 (= e!650178 (and tp!309327 tp!309326))))

(declare-fun b!1017513 () Bool)

(declare-fun tp!309325 () Bool)

(assert (=> b!1017513 (= e!650178 tp!309325)))

(assert (= (and b!1016788 ((_ is ElementMatch!2801) (regOne!6114 r!15766))) b!1017511))

(assert (= (and b!1016788 ((_ is Concat!4634) (regOne!6114 r!15766))) b!1017512))

(assert (= (and b!1016788 ((_ is Star!2801) (regOne!6114 r!15766))) b!1017513))

(assert (= (and b!1016788 ((_ is Union!2801) (regOne!6114 r!15766))) b!1017514))

(declare-fun b!1017518 () Bool)

(declare-fun e!650179 () Bool)

(declare-fun tp!309333 () Bool)

(declare-fun tp!309334 () Bool)

(assert (=> b!1017518 (= e!650179 (and tp!309333 tp!309334))))

(assert (=> b!1016788 (= tp!309276 e!650179)))

(declare-fun b!1017515 () Bool)

(assert (=> b!1017515 (= e!650179 tp_is_empty!5245)))

(declare-fun b!1017516 () Bool)

(declare-fun tp!309332 () Bool)

(declare-fun tp!309331 () Bool)

(assert (=> b!1017516 (= e!650179 (and tp!309332 tp!309331))))

(declare-fun b!1017517 () Bool)

(declare-fun tp!309330 () Bool)

(assert (=> b!1017517 (= e!650179 tp!309330)))

(assert (= (and b!1016788 ((_ is ElementMatch!2801) (regTwo!6114 r!15766))) b!1017515))

(assert (= (and b!1016788 ((_ is Concat!4634) (regTwo!6114 r!15766))) b!1017516))

(assert (= (and b!1016788 ((_ is Star!2801) (regTwo!6114 r!15766))) b!1017517))

(assert (= (and b!1016788 ((_ is Union!2801) (regTwo!6114 r!15766))) b!1017518))

(declare-fun b!1017523 () Bool)

(declare-fun e!650182 () Bool)

(declare-fun tp!309337 () Bool)

(assert (=> b!1017523 (= e!650182 (and tp_is_empty!5245 tp!309337))))

(assert (=> b!1016778 (= tp!309274 e!650182)))

(assert (= (and b!1016778 ((_ is Cons!10015) (t!101077 s!10566))) b!1017523))

(declare-fun b!1017527 () Bool)

(declare-fun e!650183 () Bool)

(declare-fun tp!309341 () Bool)

(declare-fun tp!309342 () Bool)

(assert (=> b!1017527 (= e!650183 (and tp!309341 tp!309342))))

(assert (=> b!1016787 (= tp!309272 e!650183)))

(declare-fun b!1017524 () Bool)

(assert (=> b!1017524 (= e!650183 tp_is_empty!5245)))

(declare-fun b!1017525 () Bool)

(declare-fun tp!309340 () Bool)

(declare-fun tp!309339 () Bool)

(assert (=> b!1017525 (= e!650183 (and tp!309340 tp!309339))))

(declare-fun b!1017526 () Bool)

(declare-fun tp!309338 () Bool)

(assert (=> b!1017526 (= e!650183 tp!309338)))

(assert (= (and b!1016787 ((_ is ElementMatch!2801) (reg!3130 r!15766))) b!1017524))

(assert (= (and b!1016787 ((_ is Concat!4634) (reg!3130 r!15766))) b!1017525))

(assert (= (and b!1016787 ((_ is Star!2801) (reg!3130 r!15766))) b!1017526))

(assert (= (and b!1016787 ((_ is Union!2801) (reg!3130 r!15766))) b!1017527))

(declare-fun b!1017531 () Bool)

(declare-fun e!650184 () Bool)

(declare-fun tp!309346 () Bool)

(declare-fun tp!309347 () Bool)

(assert (=> b!1017531 (= e!650184 (and tp!309346 tp!309347))))

(assert (=> b!1016776 (= tp!309273 e!650184)))

(declare-fun b!1017528 () Bool)

(assert (=> b!1017528 (= e!650184 tp_is_empty!5245)))

(declare-fun b!1017529 () Bool)

(declare-fun tp!309345 () Bool)

(declare-fun tp!309344 () Bool)

(assert (=> b!1017529 (= e!650184 (and tp!309345 tp!309344))))

(declare-fun b!1017530 () Bool)

(declare-fun tp!309343 () Bool)

(assert (=> b!1017530 (= e!650184 tp!309343)))

(assert (= (and b!1016776 ((_ is ElementMatch!2801) (regOne!6115 r!15766))) b!1017528))

(assert (= (and b!1016776 ((_ is Concat!4634) (regOne!6115 r!15766))) b!1017529))

(assert (= (and b!1016776 ((_ is Star!2801) (regOne!6115 r!15766))) b!1017530))

(assert (= (and b!1016776 ((_ is Union!2801) (regOne!6115 r!15766))) b!1017531))

(declare-fun b!1017535 () Bool)

(declare-fun e!650185 () Bool)

(declare-fun tp!309351 () Bool)

(declare-fun tp!309352 () Bool)

(assert (=> b!1017535 (= e!650185 (and tp!309351 tp!309352))))

(assert (=> b!1016776 (= tp!309271 e!650185)))

(declare-fun b!1017532 () Bool)

(assert (=> b!1017532 (= e!650185 tp_is_empty!5245)))

(declare-fun b!1017533 () Bool)

(declare-fun tp!309350 () Bool)

(declare-fun tp!309349 () Bool)

(assert (=> b!1017533 (= e!650185 (and tp!309350 tp!309349))))

(declare-fun b!1017534 () Bool)

(declare-fun tp!309348 () Bool)

(assert (=> b!1017534 (= e!650185 tp!309348)))

(assert (= (and b!1016776 ((_ is ElementMatch!2801) (regTwo!6115 r!15766))) b!1017532))

(assert (= (and b!1016776 ((_ is Concat!4634) (regTwo!6115 r!15766))) b!1017533))

(assert (= (and b!1016776 ((_ is Star!2801) (regTwo!6115 r!15766))) b!1017534))

(assert (= (and b!1016776 ((_ is Union!2801) (regTwo!6115 r!15766))) b!1017535))

(check-sat (not b!1017483) (not b!1017446) (not bm!69446) (not b!1017340) (not bm!69454) (not d!294038) (not bm!69453) (not b!1016890) (not b!1017443) (not b!1017346) (not b!1017320) (not b!1017488) (not d!294078) (not b!1017360) (not d!294068) (not b!1017371) (not b!1017455) (not d!294088) (not b!1017401) (not b!1017452) (not b!1017375) (not b!1017391) (not b!1017133) (not bm!69391) (not b!1017534) (not d!294052) (not b!1017445) (not b!1017285) (not d!294086) (not d!294054) tp_is_empty!5245 (not d!294082) (not bm!69461) (not bm!69472) (not bm!69458) (not b!1017535) (not b!1017376) (not b!1017323) (not b!1017469) (not d!294084) (not b!1017362) (not d!294042) (not b!1017317) (not b!1017368) (not bm!69474) (not b!1017379) (not bm!69471) (not bm!69462) (not b!1017518) (not b!1017473) (not d!294058) (not bm!69473) (not b!1017465) (not b!1017530) (not b!1017516) (not b!1017331) (not b!1017480) (not b!1017449) (not b!1017487) (not b!1017533) (not b!1017442) (not bm!69435) (not b!1017474) (not bm!69465) (not d!294056) (not b!1017460) (not d!294002) (not b!1017336) (not b!1017381) (not bm!69455) (not d!293984) (not b!1017326) (not b!1017477) (not b!1017463) (not b!1017136) (not b!1017514) (not b!1017330) (not d!294064) (not b!1017523) (not b!1017466) (not b!1017531) (not b!1017494) (not bm!69449) (not b!1017525) (not d!294060) (not bm!69460) (not b!1017316) (not b!1017130) (not d!294050) (not b!1017365) (not b!1017493) (not d!294070) (not b!1017382) (not b!1017513) (not b!1017367) (not d!294080) (not bm!69389) (not b!1017334) (not b!1017361) (not d!294066) (not b!1017241) (not bm!69476) (not d!293986) (not b!1017527) (not b!1017286) (not b!1017497) (not b!1017322) (not bm!69475) (not b!1017491) (not b!1017517) (not bm!69433) (not b!1017459) (not b!1017451) (not b!1017529) (not b!1017337) (not b!1017131) (not b!1017137) (not b!1017512) (not b!1017479) (not d!294074) (not b!1017132) (not b!1017526) (not b!1017385) (not b!1017267) (not d!294040))
(check-sat)
