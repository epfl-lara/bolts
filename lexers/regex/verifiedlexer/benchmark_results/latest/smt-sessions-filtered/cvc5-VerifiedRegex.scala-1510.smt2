; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79972 () Bool)

(assert start!79972)

(declare-fun b!885168 () Bool)

(assert (=> b!885168 true))

(assert (=> b!885168 true))

(declare-fun lambda!27316 () Int)

(declare-fun lambda!27315 () Int)

(assert (=> b!885168 (not (= lambda!27316 lambda!27315))))

(assert (=> b!885168 true))

(assert (=> b!885168 true))

(declare-fun b!885164 () Bool)

(declare-fun e!580567 () Bool)

(declare-fun e!580571 () Bool)

(assert (=> b!885164 (= e!580567 e!580571)))

(declare-fun res!402596 () Bool)

(assert (=> b!885164 (=> res!402596 e!580571)))

(declare-datatypes ((C!5126 0))(
  ( (C!5127 (val!2811 Int)) )
))
(declare-datatypes ((Regex!2278 0))(
  ( (ElementMatch!2278 (c!143093 C!5126)) (Concat!4111 (regOne!5068 Regex!2278) (regTwo!5068 Regex!2278)) (EmptyExpr!2278) (Star!2278 (reg!2607 Regex!2278)) (EmptyLang!2278) (Union!2278 (regOne!5069 Regex!2278) (regTwo!5069 Regex!2278)) )
))
(declare-fun r!15766 () Regex!2278)

(declare-datatypes ((List!9508 0))(
  ( (Nil!9492) (Cons!9492 (h!14893 C!5126) (t!100554 List!9508)) )
))
(declare-datatypes ((tuple2!10642 0))(
  ( (tuple2!10643 (_1!6147 List!9508) (_2!6147 List!9508)) )
))
(declare-fun lt!331376 () tuple2!10642)

(declare-fun matchR!816 (Regex!2278 List!9508) Bool)

(assert (=> b!885164 (= res!402596 (not (matchR!816 (regOne!5068 r!15766) (_1!6147 lt!331376))))))

(declare-datatypes ((Option!1963 0))(
  ( (None!1962) (Some!1962 (v!19379 tuple2!10642)) )
))
(declare-fun lt!331373 () Option!1963)

(declare-fun get!2967 (Option!1963) tuple2!10642)

(assert (=> b!885164 (= lt!331376 (get!2967 lt!331373))))

(declare-fun res!402597 () Bool)

(declare-fun e!580568 () Bool)

(assert (=> start!79972 (=> (not res!402597) (not e!580568))))

(declare-fun validRegex!747 (Regex!2278) Bool)

(assert (=> start!79972 (= res!402597 (validRegex!747 r!15766))))

(assert (=> start!79972 e!580568))

(declare-fun e!580566 () Bool)

(assert (=> start!79972 e!580566))

(declare-fun e!580569 () Bool)

(assert (=> start!79972 e!580569))

(declare-fun b!885165 () Bool)

(declare-fun tp_is_empty!4199 () Bool)

(declare-fun tp!279209 () Bool)

(assert (=> b!885165 (= e!580569 (and tp_is_empty!4199 tp!279209))))

(declare-fun b!885166 () Bool)

(declare-fun tp!279214 () Bool)

(assert (=> b!885166 (= e!580566 tp!279214)))

(declare-fun b!885167 () Bool)

(assert (=> b!885167 (= e!580571 (validRegex!747 (regTwo!5068 r!15766)))))

(declare-fun removeUselessConcat!21 (Regex!2278) Regex!2278)

(assert (=> b!885167 (matchR!816 (removeUselessConcat!21 (regTwo!5068 r!15766)) (_2!6147 lt!331376))))

(declare-datatypes ((Unit!14135 0))(
  ( (Unit!14136) )
))
(declare-fun lt!331371 () Unit!14135)

(declare-fun lemmaRemoveUselessConcatSound!15 (Regex!2278 List!9508) Unit!14135)

(assert (=> b!885167 (= lt!331371 (lemmaRemoveUselessConcatSound!15 (regTwo!5068 r!15766) (_2!6147 lt!331376)))))

(assert (=> b!885167 (matchR!816 (removeUselessConcat!21 (regOne!5068 r!15766)) (_1!6147 lt!331376))))

(declare-fun lt!331370 () Unit!14135)

(assert (=> b!885167 (= lt!331370 (lemmaRemoveUselessConcatSound!15 (regOne!5068 r!15766) (_1!6147 lt!331376)))))

(declare-fun e!580570 () Bool)

(assert (=> b!885168 (= e!580570 e!580567)))

(declare-fun res!402599 () Bool)

(assert (=> b!885168 (=> res!402599 e!580567)))

(declare-fun s!10566 () List!9508)

(declare-fun isEmpty!5697 (List!9508) Bool)

(assert (=> b!885168 (= res!402599 (isEmpty!5697 s!10566))))

(declare-fun Exists!73 (Int) Bool)

(assert (=> b!885168 (= (Exists!73 lambda!27315) (Exists!73 lambda!27316))))

(declare-fun lt!331372 () Unit!14135)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!63 (Regex!2278 Regex!2278 List!9508) Unit!14135)

(assert (=> b!885168 (= lt!331372 (lemmaExistCutMatchRandMatchRSpecEquivalent!63 (regOne!5068 r!15766) (regTwo!5068 r!15766) s!10566))))

(declare-fun isDefined!1605 (Option!1963) Bool)

(assert (=> b!885168 (= (isDefined!1605 lt!331373) (Exists!73 lambda!27315))))

(declare-fun findConcatSeparation!69 (Regex!2278 Regex!2278 List!9508 List!9508 List!9508) Option!1963)

(assert (=> b!885168 (= lt!331373 (findConcatSeparation!69 (regOne!5068 r!15766) (regTwo!5068 r!15766) Nil!9492 s!10566 s!10566))))

(declare-fun lt!331374 () Unit!14135)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!69 (Regex!2278 Regex!2278 List!9508) Unit!14135)

(assert (=> b!885168 (= lt!331374 (lemmaFindConcatSeparationEquivalentToExists!69 (regOne!5068 r!15766) (regTwo!5068 r!15766) s!10566))))

(declare-fun b!885169 () Bool)

(assert (=> b!885169 (= e!580568 (not e!580570))))

(declare-fun res!402598 () Bool)

(assert (=> b!885169 (=> res!402598 e!580570)))

(declare-fun lt!331377 () Bool)

(assert (=> b!885169 (= res!402598 (or (not lt!331377) (and (is-Concat!4111 r!15766) (is-EmptyExpr!2278 (regOne!5068 r!15766))) (and (is-Concat!4111 r!15766) (is-EmptyExpr!2278 (regTwo!5068 r!15766))) (not (is-Concat!4111 r!15766))))))

(declare-fun matchRSpec!79 (Regex!2278 List!9508) Bool)

(assert (=> b!885169 (= lt!331377 (matchRSpec!79 r!15766 s!10566))))

(assert (=> b!885169 (= lt!331377 (matchR!816 r!15766 s!10566))))

(declare-fun lt!331375 () Unit!14135)

(declare-fun mainMatchTheorem!79 (Regex!2278 List!9508) Unit!14135)

(assert (=> b!885169 (= lt!331375 (mainMatchTheorem!79 r!15766 s!10566))))

(declare-fun b!885170 () Bool)

(assert (=> b!885170 (= e!580566 tp_is_empty!4199)))

(declare-fun b!885171 () Bool)

(declare-fun res!402595 () Bool)

(assert (=> b!885171 (=> res!402595 e!580571)))

(assert (=> b!885171 (= res!402595 (not (matchR!816 (regTwo!5068 r!15766) (_2!6147 lt!331376))))))

(declare-fun b!885172 () Bool)

(declare-fun tp!279213 () Bool)

(declare-fun tp!279212 () Bool)

(assert (=> b!885172 (= e!580566 (and tp!279213 tp!279212))))

(declare-fun b!885173 () Bool)

(declare-fun tp!279210 () Bool)

(declare-fun tp!279211 () Bool)

(assert (=> b!885173 (= e!580566 (and tp!279210 tp!279211))))

(assert (= (and start!79972 res!402597) b!885169))

(assert (= (and b!885169 (not res!402598)) b!885168))

(assert (= (and b!885168 (not res!402599)) b!885164))

(assert (= (and b!885164 (not res!402596)) b!885171))

(assert (= (and b!885171 (not res!402595)) b!885167))

(assert (= (and start!79972 (is-ElementMatch!2278 r!15766)) b!885170))

(assert (= (and start!79972 (is-Concat!4111 r!15766)) b!885172))

(assert (= (and start!79972 (is-Star!2278 r!15766)) b!885166))

(assert (= (and start!79972 (is-Union!2278 r!15766)) b!885173))

(assert (= (and start!79972 (is-Cons!9492 s!10566)) b!885165))

(declare-fun m!1131269 () Bool)

(assert (=> b!885169 m!1131269))

(declare-fun m!1131271 () Bool)

(assert (=> b!885169 m!1131271))

(declare-fun m!1131273 () Bool)

(assert (=> b!885169 m!1131273))

(declare-fun m!1131275 () Bool)

(assert (=> b!885168 m!1131275))

(declare-fun m!1131277 () Bool)

(assert (=> b!885168 m!1131277))

(assert (=> b!885168 m!1131275))

(declare-fun m!1131279 () Bool)

(assert (=> b!885168 m!1131279))

(declare-fun m!1131281 () Bool)

(assert (=> b!885168 m!1131281))

(declare-fun m!1131283 () Bool)

(assert (=> b!885168 m!1131283))

(declare-fun m!1131285 () Bool)

(assert (=> b!885168 m!1131285))

(declare-fun m!1131287 () Bool)

(assert (=> b!885168 m!1131287))

(declare-fun m!1131289 () Bool)

(assert (=> b!885164 m!1131289))

(declare-fun m!1131291 () Bool)

(assert (=> b!885164 m!1131291))

(declare-fun m!1131293 () Bool)

(assert (=> b!885171 m!1131293))

(declare-fun m!1131295 () Bool)

(assert (=> b!885167 m!1131295))

(declare-fun m!1131297 () Bool)

(assert (=> b!885167 m!1131297))

(declare-fun m!1131299 () Bool)

(assert (=> b!885167 m!1131299))

(declare-fun m!1131301 () Bool)

(assert (=> b!885167 m!1131301))

(declare-fun m!1131303 () Bool)

(assert (=> b!885167 m!1131303))

(assert (=> b!885167 m!1131297))

(declare-fun m!1131305 () Bool)

(assert (=> b!885167 m!1131305))

(assert (=> b!885167 m!1131299))

(declare-fun m!1131307 () Bool)

(assert (=> b!885167 m!1131307))

(declare-fun m!1131309 () Bool)

(assert (=> start!79972 m!1131309))

(push 1)

(assert (not b!885167))

(assert (not start!79972))

(assert (not b!885165))

(assert tp_is_empty!4199)

(assert (not b!885164))

(assert (not b!885173))

(assert (not b!885171))

(assert (not b!885169))

(assert (not b!885166))

(assert (not b!885168))

(assert (not b!885172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!276795 () Bool)

(declare-fun res!402640 () Bool)

(declare-fun e!580615 () Bool)

(assert (=> d!276795 (=> res!402640 e!580615)))

(assert (=> d!276795 (= res!402640 (is-ElementMatch!2278 (regTwo!5068 r!15766)))))

(assert (=> d!276795 (= (validRegex!747 (regTwo!5068 r!15766)) e!580615)))

(declare-fun b!885242 () Bool)

(declare-fun e!580611 () Bool)

(declare-fun e!580612 () Bool)

(assert (=> b!885242 (= e!580611 e!580612)))

(declare-fun res!402639 () Bool)

(declare-fun nullable!584 (Regex!2278) Bool)

(assert (=> b!885242 (= res!402639 (not (nullable!584 (reg!2607 (regTwo!5068 r!15766)))))))

(assert (=> b!885242 (=> (not res!402639) (not e!580612))))

(declare-fun b!885243 () Bool)

(assert (=> b!885243 (= e!580615 e!580611)))

(declare-fun c!143100 () Bool)

(assert (=> b!885243 (= c!143100 (is-Star!2278 (regTwo!5068 r!15766)))))

(declare-fun bm!51841 () Bool)

(declare-fun call!51846 () Bool)

(declare-fun call!51847 () Bool)

(assert (=> bm!51841 (= call!51846 call!51847)))

(declare-fun b!885244 () Bool)

(declare-fun e!580613 () Bool)

(assert (=> b!885244 (= e!580611 e!580613)))

(declare-fun c!143099 () Bool)

(assert (=> b!885244 (= c!143099 (is-Union!2278 (regTwo!5068 r!15766)))))

(declare-fun b!885245 () Bool)

(declare-fun e!580614 () Bool)

(assert (=> b!885245 (= e!580614 call!51846)))

(declare-fun b!885246 () Bool)

(declare-fun res!402641 () Bool)

(declare-fun e!580616 () Bool)

(assert (=> b!885246 (=> res!402641 e!580616)))

(assert (=> b!885246 (= res!402641 (not (is-Concat!4111 (regTwo!5068 r!15766))))))

(assert (=> b!885246 (= e!580613 e!580616)))

(declare-fun b!885247 () Bool)

(assert (=> b!885247 (= e!580612 call!51847)))

(declare-fun b!885248 () Bool)

(assert (=> b!885248 (= e!580616 e!580614)))

(declare-fun res!402638 () Bool)

(assert (=> b!885248 (=> (not res!402638) (not e!580614))))

(declare-fun call!51848 () Bool)

(assert (=> b!885248 (= res!402638 call!51848)))

(declare-fun bm!51842 () Bool)

(assert (=> bm!51842 (= call!51847 (validRegex!747 (ite c!143100 (reg!2607 (regTwo!5068 r!15766)) (ite c!143099 (regTwo!5069 (regTwo!5068 r!15766)) (regTwo!5068 (regTwo!5068 r!15766))))))))

(declare-fun b!885249 () Bool)

(declare-fun e!580610 () Bool)

(assert (=> b!885249 (= e!580610 call!51846)))

(declare-fun b!885250 () Bool)

(declare-fun res!402637 () Bool)

(assert (=> b!885250 (=> (not res!402637) (not e!580610))))

(assert (=> b!885250 (= res!402637 call!51848)))

(assert (=> b!885250 (= e!580613 e!580610)))

(declare-fun bm!51843 () Bool)

(assert (=> bm!51843 (= call!51848 (validRegex!747 (ite c!143099 (regOne!5069 (regTwo!5068 r!15766)) (regOne!5068 (regTwo!5068 r!15766)))))))

(assert (= (and d!276795 (not res!402640)) b!885243))

(assert (= (and b!885243 c!143100) b!885242))

(assert (= (and b!885243 (not c!143100)) b!885244))

(assert (= (and b!885242 res!402639) b!885247))

(assert (= (and b!885244 c!143099) b!885250))

(assert (= (and b!885244 (not c!143099)) b!885246))

(assert (= (and b!885250 res!402637) b!885249))

(assert (= (and b!885246 (not res!402641)) b!885248))

(assert (= (and b!885248 res!402638) b!885245))

(assert (= (or b!885249 b!885245) bm!51841))

(assert (= (or b!885250 b!885248) bm!51843))

(assert (= (or b!885247 bm!51841) bm!51842))

(declare-fun m!1131353 () Bool)

(assert (=> b!885242 m!1131353))

(declare-fun m!1131355 () Bool)

(assert (=> bm!51842 m!1131355))

(declare-fun m!1131357 () Bool)

(assert (=> bm!51843 m!1131357))

(assert (=> b!885167 d!276795))

(declare-fun d!276799 () Bool)

(assert (=> d!276799 (= (matchR!816 (regTwo!5068 r!15766) (_2!6147 lt!331376)) (matchR!816 (removeUselessConcat!21 (regTwo!5068 r!15766)) (_2!6147 lt!331376)))))

(declare-fun lt!331404 () Unit!14135)

(declare-fun choose!5263 (Regex!2278 List!9508) Unit!14135)

(assert (=> d!276799 (= lt!331404 (choose!5263 (regTwo!5068 r!15766) (_2!6147 lt!331376)))))

(assert (=> d!276799 (validRegex!747 (regTwo!5068 r!15766))))

(assert (=> d!276799 (= (lemmaRemoveUselessConcatSound!15 (regTwo!5068 r!15766) (_2!6147 lt!331376)) lt!331404)))

(declare-fun bs!234661 () Bool)

(assert (= bs!234661 d!276799))

(assert (=> bs!234661 m!1131295))

(assert (=> bs!234661 m!1131297))

(assert (=> bs!234661 m!1131305))

(assert (=> bs!234661 m!1131297))

(assert (=> bs!234661 m!1131293))

(declare-fun m!1131359 () Bool)

(assert (=> bs!234661 m!1131359))

(assert (=> b!885167 d!276799))

(declare-fun d!276801 () Bool)

(assert (=> d!276801 (= (matchR!816 (regOne!5068 r!15766) (_1!6147 lt!331376)) (matchR!816 (removeUselessConcat!21 (regOne!5068 r!15766)) (_1!6147 lt!331376)))))

(declare-fun lt!331405 () Unit!14135)

(assert (=> d!276801 (= lt!331405 (choose!5263 (regOne!5068 r!15766) (_1!6147 lt!331376)))))

(assert (=> d!276801 (validRegex!747 (regOne!5068 r!15766))))

(assert (=> d!276801 (= (lemmaRemoveUselessConcatSound!15 (regOne!5068 r!15766) (_1!6147 lt!331376)) lt!331405)))

(declare-fun bs!234662 () Bool)

(assert (= bs!234662 d!276801))

(declare-fun m!1131361 () Bool)

(assert (=> bs!234662 m!1131361))

(assert (=> bs!234662 m!1131299))

(assert (=> bs!234662 m!1131307))

(assert (=> bs!234662 m!1131299))

(assert (=> bs!234662 m!1131289))

(declare-fun m!1131363 () Bool)

(assert (=> bs!234662 m!1131363))

(assert (=> b!885167 d!276801))

(declare-fun d!276803 () Bool)

(declare-fun e!580647 () Bool)

(assert (=> d!276803 e!580647))

(declare-fun res!402660 () Bool)

(assert (=> d!276803 (=> (not res!402660) (not e!580647))))

(declare-fun lt!331410 () Regex!2278)

(assert (=> d!276803 (= res!402660 (validRegex!747 lt!331410))))

(declare-fun e!580643 () Regex!2278)

(assert (=> d!276803 (= lt!331410 e!580643)))

(declare-fun c!143119 () Bool)

(assert (=> d!276803 (= c!143119 (and (is-Concat!4111 (regOne!5068 r!15766)) (is-EmptyExpr!2278 (regOne!5068 (regOne!5068 r!15766)))))))

(assert (=> d!276803 (validRegex!747 (regOne!5068 r!15766))))

(assert (=> d!276803 (= (removeUselessConcat!21 (regOne!5068 r!15766)) lt!331410)))

(declare-fun b!885301 () Bool)

(declare-fun e!580644 () Regex!2278)

(declare-fun call!51862 () Regex!2278)

(declare-fun call!51864 () Regex!2278)

(assert (=> b!885301 (= e!580644 (Union!2278 call!51862 call!51864))))

(declare-fun b!885302 () Bool)

(declare-fun e!580645 () Regex!2278)

(assert (=> b!885302 (= e!580645 (regOne!5068 r!15766))))

(declare-fun b!885303 () Bool)

(assert (=> b!885303 (= e!580647 (= (nullable!584 lt!331410) (nullable!584 (regOne!5068 r!15766))))))

(declare-fun call!51861 () Regex!2278)

(declare-fun c!143121 () Bool)

(declare-fun c!143120 () Bool)

(declare-fun bm!51856 () Bool)

(assert (=> bm!51856 (= call!51861 (removeUselessConcat!21 (ite c!143120 (regOne!5068 (regOne!5068 r!15766)) (ite c!143121 (regTwo!5069 (regOne!5068 r!15766)) (reg!2607 (regOne!5068 r!15766))))))))

(declare-fun b!885304 () Bool)

(declare-fun e!580648 () Regex!2278)

(assert (=> b!885304 (= e!580648 (Concat!4111 call!51861 call!51862))))

(declare-fun b!885305 () Bool)

(assert (=> b!885305 (= e!580645 (Star!2278 call!51864))))

(declare-fun bm!51857 () Bool)

(assert (=> bm!51857 (= call!51864 call!51861)))

(declare-fun b!885306 () Bool)

(assert (=> b!885306 (= e!580648 e!580644)))

(assert (=> b!885306 (= c!143121 (is-Union!2278 (regOne!5068 r!15766)))))

(declare-fun b!885307 () Bool)

(declare-fun c!143117 () Bool)

(assert (=> b!885307 (= c!143117 (is-Star!2278 (regOne!5068 r!15766)))))

(assert (=> b!885307 (= e!580644 e!580645)))

(declare-fun c!143118 () Bool)

(declare-fun call!51865 () Regex!2278)

(declare-fun bm!51858 () Bool)

(assert (=> bm!51858 (= call!51865 (removeUselessConcat!21 (ite c!143119 (regTwo!5068 (regOne!5068 r!15766)) (ite c!143118 (regOne!5068 (regOne!5068 r!15766)) (ite c!143120 (regTwo!5068 (regOne!5068 r!15766)) (regOne!5069 (regOne!5068 r!15766)))))))))

(declare-fun b!885308 () Bool)

(assert (=> b!885308 (= e!580643 call!51865)))

(declare-fun b!885309 () Bool)

(declare-fun e!580646 () Regex!2278)

(declare-fun call!51863 () Regex!2278)

(assert (=> b!885309 (= e!580646 call!51863)))

(declare-fun bm!51859 () Bool)

(assert (=> bm!51859 (= call!51862 call!51863)))

(declare-fun bm!51860 () Bool)

(assert (=> bm!51860 (= call!51863 call!51865)))

(declare-fun b!885310 () Bool)

(assert (=> b!885310 (= e!580643 e!580646)))

(assert (=> b!885310 (= c!143118 (and (is-Concat!4111 (regOne!5068 r!15766)) (is-EmptyExpr!2278 (regTwo!5068 (regOne!5068 r!15766)))))))

(declare-fun b!885311 () Bool)

(assert (=> b!885311 (= c!143120 (is-Concat!4111 (regOne!5068 r!15766)))))

(assert (=> b!885311 (= e!580646 e!580648)))

(assert (= (and d!276803 c!143119) b!885308))

(assert (= (and d!276803 (not c!143119)) b!885310))

(assert (= (and b!885310 c!143118) b!885309))

(assert (= (and b!885310 (not c!143118)) b!885311))

(assert (= (and b!885311 c!143120) b!885304))

(assert (= (and b!885311 (not c!143120)) b!885306))

(assert (= (and b!885306 c!143121) b!885301))

(assert (= (and b!885306 (not c!143121)) b!885307))

(assert (= (and b!885307 c!143117) b!885305))

(assert (= (and b!885307 (not c!143117)) b!885302))

(assert (= (or b!885301 b!885305) bm!51857))

(assert (= (or b!885304 b!885301) bm!51859))

(assert (= (or b!885304 bm!51857) bm!51856))

(assert (= (or b!885309 bm!51859) bm!51860))

(assert (= (or b!885308 bm!51860) bm!51858))

(assert (= (and d!276803 res!402660) b!885303))

(declare-fun m!1131365 () Bool)

(assert (=> d!276803 m!1131365))

(assert (=> d!276803 m!1131361))

(declare-fun m!1131367 () Bool)

(assert (=> b!885303 m!1131367))

(declare-fun m!1131369 () Bool)

(assert (=> b!885303 m!1131369))

(declare-fun m!1131371 () Bool)

(assert (=> bm!51856 m!1131371))

(declare-fun m!1131373 () Bool)

(assert (=> bm!51858 m!1131373))

(assert (=> b!885167 d!276803))

(declare-fun b!885354 () Bool)

(declare-fun e!580673 () Bool)

(declare-fun head!1549 (List!9508) C!5126)

(assert (=> b!885354 (= e!580673 (= (head!1549 (_2!6147 lt!331376)) (c!143093 (removeUselessConcat!21 (regTwo!5068 r!15766)))))))

(declare-fun b!885355 () Bool)

(declare-fun res!402685 () Bool)

(assert (=> b!885355 (=> (not res!402685) (not e!580673))))

(declare-fun call!51869 () Bool)

(assert (=> b!885355 (= res!402685 (not call!51869))))

(declare-fun b!885356 () Bool)

(declare-fun e!580674 () Bool)

(declare-fun derivativeStep!396 (Regex!2278 C!5126) Regex!2278)

(declare-fun tail!1111 (List!9508) List!9508)

(assert (=> b!885356 (= e!580674 (matchR!816 (derivativeStep!396 (removeUselessConcat!21 (regTwo!5068 r!15766)) (head!1549 (_2!6147 lt!331376))) (tail!1111 (_2!6147 lt!331376))))))

(declare-fun b!885357 () Bool)

(declare-fun e!580676 () Bool)

(declare-fun e!580675 () Bool)

(assert (=> b!885357 (= e!580676 e!580675)))

(declare-fun res!402686 () Bool)

(assert (=> b!885357 (=> (not res!402686) (not e!580675))))

(declare-fun lt!331414 () Bool)

(assert (=> b!885357 (= res!402686 (not lt!331414))))

(declare-fun bm!51864 () Bool)

(assert (=> bm!51864 (= call!51869 (isEmpty!5697 (_2!6147 lt!331376)))))

(declare-fun b!885358 () Bool)

(declare-fun res!402692 () Bool)

(assert (=> b!885358 (=> res!402692 e!580676)))

(assert (=> b!885358 (= res!402692 (not (is-ElementMatch!2278 (removeUselessConcat!21 (regTwo!5068 r!15766)))))))

(declare-fun e!580670 () Bool)

(assert (=> b!885358 (= e!580670 e!580676)))

(declare-fun b!885360 () Bool)

(declare-fun e!580671 () Bool)

(assert (=> b!885360 (= e!580671 (not (= (head!1549 (_2!6147 lt!331376)) (c!143093 (removeUselessConcat!21 (regTwo!5068 r!15766))))))))

(declare-fun b!885361 () Bool)

(declare-fun res!402688 () Bool)

(assert (=> b!885361 (=> (not res!402688) (not e!580673))))

(assert (=> b!885361 (= res!402688 (isEmpty!5697 (tail!1111 (_2!6147 lt!331376))))))

(declare-fun b!885362 () Bool)

(declare-fun e!580672 () Bool)

(assert (=> b!885362 (= e!580672 e!580670)))

(declare-fun c!143131 () Bool)

(assert (=> b!885362 (= c!143131 (is-EmptyLang!2278 (removeUselessConcat!21 (regTwo!5068 r!15766))))))

(declare-fun b!885363 () Bool)

(assert (=> b!885363 (= e!580674 (nullable!584 (removeUselessConcat!21 (regTwo!5068 r!15766))))))

(declare-fun b!885364 () Bool)

(assert (=> b!885364 (= e!580675 e!580671)))

(declare-fun res!402687 () Bool)

(assert (=> b!885364 (=> res!402687 e!580671)))

(assert (=> b!885364 (= res!402687 call!51869)))

(declare-fun b!885359 () Bool)

(assert (=> b!885359 (= e!580670 (not lt!331414))))

(declare-fun d!276805 () Bool)

(assert (=> d!276805 e!580672))

(declare-fun c!143133 () Bool)

(assert (=> d!276805 (= c!143133 (is-EmptyExpr!2278 (removeUselessConcat!21 (regTwo!5068 r!15766))))))

(assert (=> d!276805 (= lt!331414 e!580674)))

(declare-fun c!143132 () Bool)

(assert (=> d!276805 (= c!143132 (isEmpty!5697 (_2!6147 lt!331376)))))

(assert (=> d!276805 (validRegex!747 (removeUselessConcat!21 (regTwo!5068 r!15766)))))

(assert (=> d!276805 (= (matchR!816 (removeUselessConcat!21 (regTwo!5068 r!15766)) (_2!6147 lt!331376)) lt!331414)))

(declare-fun b!885365 () Bool)

(declare-fun res!402689 () Bool)

(assert (=> b!885365 (=> res!402689 e!580671)))

(assert (=> b!885365 (= res!402689 (not (isEmpty!5697 (tail!1111 (_2!6147 lt!331376)))))))

(declare-fun b!885366 () Bool)

(declare-fun res!402690 () Bool)

(assert (=> b!885366 (=> res!402690 e!580676)))

(assert (=> b!885366 (= res!402690 e!580673)))

(declare-fun res!402691 () Bool)

(assert (=> b!885366 (=> (not res!402691) (not e!580673))))

(assert (=> b!885366 (= res!402691 lt!331414)))

(declare-fun b!885367 () Bool)

(assert (=> b!885367 (= e!580672 (= lt!331414 call!51869))))

(assert (= (and d!276805 c!143132) b!885363))

(assert (= (and d!276805 (not c!143132)) b!885356))

(assert (= (and d!276805 c!143133) b!885367))

(assert (= (and d!276805 (not c!143133)) b!885362))

(assert (= (and b!885362 c!143131) b!885359))

(assert (= (and b!885362 (not c!143131)) b!885358))

(assert (= (and b!885358 (not res!402692)) b!885366))

(assert (= (and b!885366 res!402691) b!885355))

(assert (= (and b!885355 res!402685) b!885361))

(assert (= (and b!885361 res!402688) b!885354))

(assert (= (and b!885366 (not res!402690)) b!885357))

(assert (= (and b!885357 res!402686) b!885364))

(assert (= (and b!885364 (not res!402687)) b!885365))

(assert (= (and b!885365 (not res!402689)) b!885360))

(assert (= (or b!885367 b!885355 b!885364) bm!51864))

(declare-fun m!1131391 () Bool)

(assert (=> b!885356 m!1131391))

(assert (=> b!885356 m!1131297))

(assert (=> b!885356 m!1131391))

(declare-fun m!1131393 () Bool)

(assert (=> b!885356 m!1131393))

(declare-fun m!1131395 () Bool)

(assert (=> b!885356 m!1131395))

(assert (=> b!885356 m!1131393))

(assert (=> b!885356 m!1131395))

(declare-fun m!1131397 () Bool)

(assert (=> b!885356 m!1131397))

(declare-fun m!1131399 () Bool)

(assert (=> bm!51864 m!1131399))

(assert (=> b!885361 m!1131395))

(assert (=> b!885361 m!1131395))

(declare-fun m!1131401 () Bool)

(assert (=> b!885361 m!1131401))

(assert (=> b!885354 m!1131391))

(assert (=> b!885360 m!1131391))

(assert (=> d!276805 m!1131399))

(assert (=> d!276805 m!1131297))

(declare-fun m!1131403 () Bool)

(assert (=> d!276805 m!1131403))

(assert (=> b!885363 m!1131297))

(declare-fun m!1131405 () Bool)

(assert (=> b!885363 m!1131405))

(assert (=> b!885365 m!1131395))

(assert (=> b!885365 m!1131395))

(assert (=> b!885365 m!1131401))

(assert (=> b!885167 d!276805))

(declare-fun d!276811 () Bool)

(declare-fun e!580681 () Bool)

(assert (=> d!276811 e!580681))

(declare-fun res!402693 () Bool)

(assert (=> d!276811 (=> (not res!402693) (not e!580681))))

(declare-fun lt!331415 () Regex!2278)

(assert (=> d!276811 (= res!402693 (validRegex!747 lt!331415))))

(declare-fun e!580677 () Regex!2278)

(assert (=> d!276811 (= lt!331415 e!580677)))

(declare-fun c!143136 () Bool)

(assert (=> d!276811 (= c!143136 (and (is-Concat!4111 (regTwo!5068 r!15766)) (is-EmptyExpr!2278 (regOne!5068 (regTwo!5068 r!15766)))))))

(assert (=> d!276811 (validRegex!747 (regTwo!5068 r!15766))))

(assert (=> d!276811 (= (removeUselessConcat!21 (regTwo!5068 r!15766)) lt!331415)))

(declare-fun b!885368 () Bool)

(declare-fun e!580678 () Regex!2278)

(declare-fun call!51871 () Regex!2278)

(declare-fun call!51873 () Regex!2278)

(assert (=> b!885368 (= e!580678 (Union!2278 call!51871 call!51873))))

(declare-fun b!885369 () Bool)

(declare-fun e!580679 () Regex!2278)

(assert (=> b!885369 (= e!580679 (regTwo!5068 r!15766))))

(declare-fun b!885370 () Bool)

(assert (=> b!885370 (= e!580681 (= (nullable!584 lt!331415) (nullable!584 (regTwo!5068 r!15766))))))

(declare-fun bm!51865 () Bool)

(declare-fun call!51870 () Regex!2278)

(declare-fun c!143138 () Bool)

(declare-fun c!143137 () Bool)

(assert (=> bm!51865 (= call!51870 (removeUselessConcat!21 (ite c!143137 (regOne!5068 (regTwo!5068 r!15766)) (ite c!143138 (regTwo!5069 (regTwo!5068 r!15766)) (reg!2607 (regTwo!5068 r!15766))))))))

(declare-fun b!885371 () Bool)

(declare-fun e!580682 () Regex!2278)

(assert (=> b!885371 (= e!580682 (Concat!4111 call!51870 call!51871))))

(declare-fun b!885372 () Bool)

(assert (=> b!885372 (= e!580679 (Star!2278 call!51873))))

(declare-fun bm!51866 () Bool)

(assert (=> bm!51866 (= call!51873 call!51870)))

(declare-fun b!885373 () Bool)

(assert (=> b!885373 (= e!580682 e!580678)))

(assert (=> b!885373 (= c!143138 (is-Union!2278 (regTwo!5068 r!15766)))))

(declare-fun b!885374 () Bool)

(declare-fun c!143134 () Bool)

(assert (=> b!885374 (= c!143134 (is-Star!2278 (regTwo!5068 r!15766)))))

(assert (=> b!885374 (= e!580678 e!580679)))

(declare-fun call!51874 () Regex!2278)

(declare-fun c!143135 () Bool)

(declare-fun bm!51867 () Bool)

(assert (=> bm!51867 (= call!51874 (removeUselessConcat!21 (ite c!143136 (regTwo!5068 (regTwo!5068 r!15766)) (ite c!143135 (regOne!5068 (regTwo!5068 r!15766)) (ite c!143137 (regTwo!5068 (regTwo!5068 r!15766)) (regOne!5069 (regTwo!5068 r!15766)))))))))

(declare-fun b!885375 () Bool)

(assert (=> b!885375 (= e!580677 call!51874)))

(declare-fun b!885376 () Bool)

(declare-fun e!580680 () Regex!2278)

(declare-fun call!51872 () Regex!2278)

(assert (=> b!885376 (= e!580680 call!51872)))

(declare-fun bm!51868 () Bool)

(assert (=> bm!51868 (= call!51871 call!51872)))

(declare-fun bm!51869 () Bool)

(assert (=> bm!51869 (= call!51872 call!51874)))

(declare-fun b!885377 () Bool)

(assert (=> b!885377 (= e!580677 e!580680)))

(assert (=> b!885377 (= c!143135 (and (is-Concat!4111 (regTwo!5068 r!15766)) (is-EmptyExpr!2278 (regTwo!5068 (regTwo!5068 r!15766)))))))

(declare-fun b!885378 () Bool)

(assert (=> b!885378 (= c!143137 (is-Concat!4111 (regTwo!5068 r!15766)))))

(assert (=> b!885378 (= e!580680 e!580682)))

(assert (= (and d!276811 c!143136) b!885375))

(assert (= (and d!276811 (not c!143136)) b!885377))

(assert (= (and b!885377 c!143135) b!885376))

(assert (= (and b!885377 (not c!143135)) b!885378))

(assert (= (and b!885378 c!143137) b!885371))

(assert (= (and b!885378 (not c!143137)) b!885373))

(assert (= (and b!885373 c!143138) b!885368))

(assert (= (and b!885373 (not c!143138)) b!885374))

(assert (= (and b!885374 c!143134) b!885372))

(assert (= (and b!885374 (not c!143134)) b!885369))

(assert (= (or b!885368 b!885372) bm!51866))

(assert (= (or b!885371 b!885368) bm!51868))

(assert (= (or b!885371 bm!51866) bm!51865))

(assert (= (or b!885376 bm!51868) bm!51869))

(assert (= (or b!885375 bm!51869) bm!51867))

(assert (= (and d!276811 res!402693) b!885370))

(declare-fun m!1131407 () Bool)

(assert (=> d!276811 m!1131407))

(assert (=> d!276811 m!1131295))

(declare-fun m!1131409 () Bool)

(assert (=> b!885370 m!1131409))

(declare-fun m!1131411 () Bool)

(assert (=> b!885370 m!1131411))

(declare-fun m!1131413 () Bool)

(assert (=> bm!51865 m!1131413))

(declare-fun m!1131415 () Bool)

(assert (=> bm!51867 m!1131415))

(assert (=> b!885167 d!276811))

(declare-fun b!885379 () Bool)

(declare-fun e!580686 () Bool)

(assert (=> b!885379 (= e!580686 (= (head!1549 (_1!6147 lt!331376)) (c!143093 (removeUselessConcat!21 (regOne!5068 r!15766)))))))

(declare-fun b!885380 () Bool)

(declare-fun res!402694 () Bool)

(assert (=> b!885380 (=> (not res!402694) (not e!580686))))

(declare-fun call!51875 () Bool)

(assert (=> b!885380 (= res!402694 (not call!51875))))

(declare-fun b!885381 () Bool)

(declare-fun e!580687 () Bool)

(assert (=> b!885381 (= e!580687 (matchR!816 (derivativeStep!396 (removeUselessConcat!21 (regOne!5068 r!15766)) (head!1549 (_1!6147 lt!331376))) (tail!1111 (_1!6147 lt!331376))))))

(declare-fun b!885382 () Bool)

(declare-fun e!580689 () Bool)

(declare-fun e!580688 () Bool)

(assert (=> b!885382 (= e!580689 e!580688)))

(declare-fun res!402695 () Bool)

(assert (=> b!885382 (=> (not res!402695) (not e!580688))))

(declare-fun lt!331416 () Bool)

(assert (=> b!885382 (= res!402695 (not lt!331416))))

(declare-fun bm!51870 () Bool)

(assert (=> bm!51870 (= call!51875 (isEmpty!5697 (_1!6147 lt!331376)))))

(declare-fun b!885383 () Bool)

(declare-fun res!402701 () Bool)

(assert (=> b!885383 (=> res!402701 e!580689)))

(assert (=> b!885383 (= res!402701 (not (is-ElementMatch!2278 (removeUselessConcat!21 (regOne!5068 r!15766)))))))

(declare-fun e!580683 () Bool)

(assert (=> b!885383 (= e!580683 e!580689)))

(declare-fun b!885385 () Bool)

(declare-fun e!580684 () Bool)

(assert (=> b!885385 (= e!580684 (not (= (head!1549 (_1!6147 lt!331376)) (c!143093 (removeUselessConcat!21 (regOne!5068 r!15766))))))))

(declare-fun b!885386 () Bool)

(declare-fun res!402697 () Bool)

(assert (=> b!885386 (=> (not res!402697) (not e!580686))))

(assert (=> b!885386 (= res!402697 (isEmpty!5697 (tail!1111 (_1!6147 lt!331376))))))

(declare-fun b!885387 () Bool)

(declare-fun e!580685 () Bool)

(assert (=> b!885387 (= e!580685 e!580683)))

(declare-fun c!143139 () Bool)

(assert (=> b!885387 (= c!143139 (is-EmptyLang!2278 (removeUselessConcat!21 (regOne!5068 r!15766))))))

(declare-fun b!885388 () Bool)

(assert (=> b!885388 (= e!580687 (nullable!584 (removeUselessConcat!21 (regOne!5068 r!15766))))))

(declare-fun b!885389 () Bool)

(assert (=> b!885389 (= e!580688 e!580684)))

(declare-fun res!402696 () Bool)

(assert (=> b!885389 (=> res!402696 e!580684)))

(assert (=> b!885389 (= res!402696 call!51875)))

(declare-fun b!885384 () Bool)

(assert (=> b!885384 (= e!580683 (not lt!331416))))

(declare-fun d!276813 () Bool)

(assert (=> d!276813 e!580685))

(declare-fun c!143141 () Bool)

(assert (=> d!276813 (= c!143141 (is-EmptyExpr!2278 (removeUselessConcat!21 (regOne!5068 r!15766))))))

(assert (=> d!276813 (= lt!331416 e!580687)))

(declare-fun c!143140 () Bool)

(assert (=> d!276813 (= c!143140 (isEmpty!5697 (_1!6147 lt!331376)))))

(assert (=> d!276813 (validRegex!747 (removeUselessConcat!21 (regOne!5068 r!15766)))))

(assert (=> d!276813 (= (matchR!816 (removeUselessConcat!21 (regOne!5068 r!15766)) (_1!6147 lt!331376)) lt!331416)))

(declare-fun b!885390 () Bool)

(declare-fun res!402698 () Bool)

(assert (=> b!885390 (=> res!402698 e!580684)))

(assert (=> b!885390 (= res!402698 (not (isEmpty!5697 (tail!1111 (_1!6147 lt!331376)))))))

(declare-fun b!885391 () Bool)

(declare-fun res!402699 () Bool)

(assert (=> b!885391 (=> res!402699 e!580689)))

(assert (=> b!885391 (= res!402699 e!580686)))

(declare-fun res!402700 () Bool)

(assert (=> b!885391 (=> (not res!402700) (not e!580686))))

(assert (=> b!885391 (= res!402700 lt!331416)))

(declare-fun b!885392 () Bool)

(assert (=> b!885392 (= e!580685 (= lt!331416 call!51875))))

(assert (= (and d!276813 c!143140) b!885388))

(assert (= (and d!276813 (not c!143140)) b!885381))

(assert (= (and d!276813 c!143141) b!885392))

(assert (= (and d!276813 (not c!143141)) b!885387))

(assert (= (and b!885387 c!143139) b!885384))

(assert (= (and b!885387 (not c!143139)) b!885383))

(assert (= (and b!885383 (not res!402701)) b!885391))

(assert (= (and b!885391 res!402700) b!885380))

(assert (= (and b!885380 res!402694) b!885386))

(assert (= (and b!885386 res!402697) b!885379))

(assert (= (and b!885391 (not res!402699)) b!885382))

(assert (= (and b!885382 res!402695) b!885389))

(assert (= (and b!885389 (not res!402696)) b!885390))

(assert (= (and b!885390 (not res!402698)) b!885385))

(assert (= (or b!885392 b!885380 b!885389) bm!51870))

(declare-fun m!1131417 () Bool)

(assert (=> b!885381 m!1131417))

(assert (=> b!885381 m!1131299))

(assert (=> b!885381 m!1131417))

(declare-fun m!1131419 () Bool)

(assert (=> b!885381 m!1131419))

(declare-fun m!1131421 () Bool)

(assert (=> b!885381 m!1131421))

(assert (=> b!885381 m!1131419))

(assert (=> b!885381 m!1131421))

(declare-fun m!1131423 () Bool)

(assert (=> b!885381 m!1131423))

(declare-fun m!1131425 () Bool)

(assert (=> bm!51870 m!1131425))

(assert (=> b!885386 m!1131421))

(assert (=> b!885386 m!1131421))

(declare-fun m!1131427 () Bool)

(assert (=> b!885386 m!1131427))

(assert (=> b!885379 m!1131417))

(assert (=> b!885385 m!1131417))

(assert (=> d!276813 m!1131425))

(assert (=> d!276813 m!1131299))

(declare-fun m!1131429 () Bool)

(assert (=> d!276813 m!1131429))

(assert (=> b!885388 m!1131299))

(declare-fun m!1131431 () Bool)

(assert (=> b!885388 m!1131431))

(assert (=> b!885390 m!1131421))

(assert (=> b!885390 m!1131421))

(assert (=> b!885390 m!1131427))

(assert (=> b!885167 d!276813))

(declare-fun d!276815 () Bool)

(declare-fun choose!5264 (Int) Bool)

(assert (=> d!276815 (= (Exists!73 lambda!27315) (choose!5264 lambda!27315))))

(declare-fun bs!234663 () Bool)

(assert (= bs!234663 d!276815))

(declare-fun m!1131433 () Bool)

(assert (=> bs!234663 m!1131433))

(assert (=> b!885168 d!276815))

(declare-fun d!276817 () Bool)

(assert (=> d!276817 (= (isEmpty!5697 s!10566) (is-Nil!9492 s!10566))))

(assert (=> b!885168 d!276817))

(declare-fun d!276819 () Bool)

(declare-fun isEmpty!5699 (Option!1963) Bool)

(assert (=> d!276819 (= (isDefined!1605 lt!331373) (not (isEmpty!5699 lt!331373)))))

(declare-fun bs!234664 () Bool)

(assert (= bs!234664 d!276819))

(declare-fun m!1131435 () Bool)

(assert (=> bs!234664 m!1131435))

(assert (=> b!885168 d!276819))

(declare-fun bs!234665 () Bool)

(declare-fun d!276821 () Bool)

(assert (= bs!234665 (and d!276821 b!885168)))

(declare-fun lambda!27327 () Int)

(assert (=> bs!234665 (= lambda!27327 lambda!27315)))

(assert (=> bs!234665 (not (= lambda!27327 lambda!27316))))

(assert (=> d!276821 true))

(assert (=> d!276821 true))

(assert (=> d!276821 true))

(assert (=> d!276821 (= (isDefined!1605 (findConcatSeparation!69 (regOne!5068 r!15766) (regTwo!5068 r!15766) Nil!9492 s!10566 s!10566)) (Exists!73 lambda!27327))))

(declare-fun lt!331419 () Unit!14135)

(declare-fun choose!5265 (Regex!2278 Regex!2278 List!9508) Unit!14135)

(assert (=> d!276821 (= lt!331419 (choose!5265 (regOne!5068 r!15766) (regTwo!5068 r!15766) s!10566))))

(assert (=> d!276821 (validRegex!747 (regOne!5068 r!15766))))

(assert (=> d!276821 (= (lemmaFindConcatSeparationEquivalentToExists!69 (regOne!5068 r!15766) (regTwo!5068 r!15766) s!10566) lt!331419)))

(declare-fun bs!234666 () Bool)

(assert (= bs!234666 d!276821))

(assert (=> bs!234666 m!1131361))

(assert (=> bs!234666 m!1131283))

(declare-fun m!1131437 () Bool)

(assert (=> bs!234666 m!1131437))

(declare-fun m!1131439 () Bool)

(assert (=> bs!234666 m!1131439))

(assert (=> bs!234666 m!1131283))

(declare-fun m!1131441 () Bool)

(assert (=> bs!234666 m!1131441))

(assert (=> b!885168 d!276821))

(declare-fun b!885442 () Bool)

(declare-fun res!402735 () Bool)

(declare-fun e!580725 () Bool)

(assert (=> b!885442 (=> (not res!402735) (not e!580725))))

(declare-fun lt!331426 () Option!1963)

(assert (=> b!885442 (= res!402735 (matchR!816 (regOne!5068 r!15766) (_1!6147 (get!2967 lt!331426))))))

(declare-fun b!885443 () Bool)

(declare-fun e!580727 () Option!1963)

(declare-fun e!580724 () Option!1963)

(assert (=> b!885443 (= e!580727 e!580724)))

(declare-fun c!143152 () Bool)

(assert (=> b!885443 (= c!143152 (is-Nil!9492 s!10566))))

(declare-fun b!885444 () Bool)

(assert (=> b!885444 (= e!580727 (Some!1962 (tuple2!10643 Nil!9492 s!10566)))))

(declare-fun b!885445 () Bool)

(declare-fun ++!2480 (List!9508 List!9508) List!9508)

(assert (=> b!885445 (= e!580725 (= (++!2480 (_1!6147 (get!2967 lt!331426)) (_2!6147 (get!2967 lt!331426))) s!10566))))

(declare-fun b!885446 () Bool)

(assert (=> b!885446 (= e!580724 None!1962)))

(declare-fun b!885447 () Bool)

(declare-fun e!580726 () Bool)

(assert (=> b!885447 (= e!580726 (not (isDefined!1605 lt!331426)))))

(declare-fun b!885448 () Bool)

(declare-fun e!580723 () Bool)

(assert (=> b!885448 (= e!580723 (matchR!816 (regTwo!5068 r!15766) s!10566))))

(declare-fun d!276823 () Bool)

(assert (=> d!276823 e!580726))

(declare-fun res!402734 () Bool)

(assert (=> d!276823 (=> res!402734 e!580726)))

(assert (=> d!276823 (= res!402734 e!580725)))

(declare-fun res!402731 () Bool)

(assert (=> d!276823 (=> (not res!402731) (not e!580725))))

(assert (=> d!276823 (= res!402731 (isDefined!1605 lt!331426))))

(assert (=> d!276823 (= lt!331426 e!580727)))

(declare-fun c!143153 () Bool)

(assert (=> d!276823 (= c!143153 e!580723)))

(declare-fun res!402733 () Bool)

(assert (=> d!276823 (=> (not res!402733) (not e!580723))))

(assert (=> d!276823 (= res!402733 (matchR!816 (regOne!5068 r!15766) Nil!9492))))

(assert (=> d!276823 (validRegex!747 (regOne!5068 r!15766))))

(assert (=> d!276823 (= (findConcatSeparation!69 (regOne!5068 r!15766) (regTwo!5068 r!15766) Nil!9492 s!10566 s!10566) lt!331426)))

(declare-fun b!885449 () Bool)

(declare-fun lt!331428 () Unit!14135)

(declare-fun lt!331427 () Unit!14135)

(assert (=> b!885449 (= lt!331428 lt!331427)))

(assert (=> b!885449 (= (++!2480 (++!2480 Nil!9492 (Cons!9492 (h!14893 s!10566) Nil!9492)) (t!100554 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!108 (List!9508 C!5126 List!9508 List!9508) Unit!14135)

(assert (=> b!885449 (= lt!331427 (lemmaMoveElementToOtherListKeepsConcatEq!108 Nil!9492 (h!14893 s!10566) (t!100554 s!10566) s!10566))))

(assert (=> b!885449 (= e!580724 (findConcatSeparation!69 (regOne!5068 r!15766) (regTwo!5068 r!15766) (++!2480 Nil!9492 (Cons!9492 (h!14893 s!10566) Nil!9492)) (t!100554 s!10566) s!10566))))

(declare-fun b!885450 () Bool)

(declare-fun res!402732 () Bool)

(assert (=> b!885450 (=> (not res!402732) (not e!580725))))

(assert (=> b!885450 (= res!402732 (matchR!816 (regTwo!5068 r!15766) (_2!6147 (get!2967 lt!331426))))))

(assert (= (and d!276823 res!402733) b!885448))

(assert (= (and d!276823 c!143153) b!885444))

(assert (= (and d!276823 (not c!143153)) b!885443))

(assert (= (and b!885443 c!143152) b!885446))

(assert (= (and b!885443 (not c!143152)) b!885449))

(assert (= (and d!276823 res!402731) b!885442))

(assert (= (and b!885442 res!402735) b!885450))

(assert (= (and b!885450 res!402732) b!885445))

(assert (= (and d!276823 (not res!402734)) b!885447))

(declare-fun m!1131453 () Bool)

(assert (=> b!885442 m!1131453))

(declare-fun m!1131455 () Bool)

(assert (=> b!885442 m!1131455))

(declare-fun m!1131457 () Bool)

(assert (=> d!276823 m!1131457))

(declare-fun m!1131459 () Bool)

(assert (=> d!276823 m!1131459))

(assert (=> d!276823 m!1131361))

(declare-fun m!1131461 () Bool)

(assert (=> b!885449 m!1131461))

(assert (=> b!885449 m!1131461))

(declare-fun m!1131463 () Bool)

(assert (=> b!885449 m!1131463))

(declare-fun m!1131465 () Bool)

(assert (=> b!885449 m!1131465))

(assert (=> b!885449 m!1131461))

(declare-fun m!1131467 () Bool)

(assert (=> b!885449 m!1131467))

(assert (=> b!885447 m!1131457))

(declare-fun m!1131469 () Bool)

(assert (=> b!885448 m!1131469))

(assert (=> b!885450 m!1131453))

(declare-fun m!1131471 () Bool)

(assert (=> b!885450 m!1131471))

(assert (=> b!885445 m!1131453))

(declare-fun m!1131473 () Bool)

(assert (=> b!885445 m!1131473))

(assert (=> b!885168 d!276823))

(declare-fun bs!234671 () Bool)

(declare-fun d!276833 () Bool)

(assert (= bs!234671 (and d!276833 b!885168)))

(declare-fun lambda!27335 () Int)

(assert (=> bs!234671 (= lambda!27335 lambda!27315)))

(assert (=> bs!234671 (not (= lambda!27335 lambda!27316))))

(declare-fun bs!234672 () Bool)

(assert (= bs!234672 (and d!276833 d!276821)))

(assert (=> bs!234672 (= lambda!27335 lambda!27327)))

(assert (=> d!276833 true))

(assert (=> d!276833 true))

(assert (=> d!276833 true))

(declare-fun lambda!27336 () Int)

(assert (=> bs!234671 (not (= lambda!27336 lambda!27315))))

(assert (=> bs!234671 (= lambda!27336 lambda!27316)))

(assert (=> bs!234672 (not (= lambda!27336 lambda!27327))))

(declare-fun bs!234673 () Bool)

(assert (= bs!234673 d!276833))

(assert (=> bs!234673 (not (= lambda!27336 lambda!27335))))

(assert (=> d!276833 true))

(assert (=> d!276833 true))

(assert (=> d!276833 true))

(assert (=> d!276833 (= (Exists!73 lambda!27335) (Exists!73 lambda!27336))))

(declare-fun lt!331434 () Unit!14135)

(declare-fun choose!5266 (Regex!2278 Regex!2278 List!9508) Unit!14135)

(assert (=> d!276833 (= lt!331434 (choose!5266 (regOne!5068 r!15766) (regTwo!5068 r!15766) s!10566))))

(assert (=> d!276833 (validRegex!747 (regOne!5068 r!15766))))

(assert (=> d!276833 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!63 (regOne!5068 r!15766) (regTwo!5068 r!15766) s!10566) lt!331434)))

(declare-fun m!1131481 () Bool)

(assert (=> bs!234673 m!1131481))

(declare-fun m!1131483 () Bool)

(assert (=> bs!234673 m!1131483))

(declare-fun m!1131485 () Bool)

(assert (=> bs!234673 m!1131485))

(assert (=> bs!234673 m!1131361))

(assert (=> b!885168 d!276833))

(declare-fun d!276837 () Bool)

(assert (=> d!276837 (= (Exists!73 lambda!27316) (choose!5264 lambda!27316))))

(declare-fun bs!234674 () Bool)

(assert (= bs!234674 d!276837))

(declare-fun m!1131487 () Bool)

(assert (=> bs!234674 m!1131487))

(assert (=> b!885168 d!276837))

(declare-fun b!885463 () Bool)

(declare-fun e!580737 () Bool)

(assert (=> b!885463 (= e!580737 (= (head!1549 (_1!6147 lt!331376)) (c!143093 (regOne!5068 r!15766))))))

(declare-fun b!885464 () Bool)

(declare-fun res!402748 () Bool)

(assert (=> b!885464 (=> (not res!402748) (not e!580737))))

(declare-fun call!51885 () Bool)

(assert (=> b!885464 (= res!402748 (not call!51885))))

(declare-fun b!885465 () Bool)

(declare-fun e!580738 () Bool)

(assert (=> b!885465 (= e!580738 (matchR!816 (derivativeStep!396 (regOne!5068 r!15766) (head!1549 (_1!6147 lt!331376))) (tail!1111 (_1!6147 lt!331376))))))

(declare-fun b!885466 () Bool)

(declare-fun e!580740 () Bool)

(declare-fun e!580739 () Bool)

(assert (=> b!885466 (= e!580740 e!580739)))

(declare-fun res!402749 () Bool)

(assert (=> b!885466 (=> (not res!402749) (not e!580739))))

(declare-fun lt!331435 () Bool)

(assert (=> b!885466 (= res!402749 (not lt!331435))))

(declare-fun bm!51880 () Bool)

(assert (=> bm!51880 (= call!51885 (isEmpty!5697 (_1!6147 lt!331376)))))

(declare-fun b!885467 () Bool)

(declare-fun res!402755 () Bool)

(assert (=> b!885467 (=> res!402755 e!580740)))

(assert (=> b!885467 (= res!402755 (not (is-ElementMatch!2278 (regOne!5068 r!15766))))))

(declare-fun e!580734 () Bool)

(assert (=> b!885467 (= e!580734 e!580740)))

(declare-fun b!885469 () Bool)

(declare-fun e!580735 () Bool)

(assert (=> b!885469 (= e!580735 (not (= (head!1549 (_1!6147 lt!331376)) (c!143093 (regOne!5068 r!15766)))))))

(declare-fun b!885470 () Bool)

(declare-fun res!402751 () Bool)

(assert (=> b!885470 (=> (not res!402751) (not e!580737))))

(assert (=> b!885470 (= res!402751 (isEmpty!5697 (tail!1111 (_1!6147 lt!331376))))))

(declare-fun b!885471 () Bool)

(declare-fun e!580736 () Bool)

(assert (=> b!885471 (= e!580736 e!580734)))

(declare-fun c!143154 () Bool)

(assert (=> b!885471 (= c!143154 (is-EmptyLang!2278 (regOne!5068 r!15766)))))

(declare-fun b!885472 () Bool)

(assert (=> b!885472 (= e!580738 (nullable!584 (regOne!5068 r!15766)))))

(declare-fun b!885473 () Bool)

(assert (=> b!885473 (= e!580739 e!580735)))

(declare-fun res!402750 () Bool)

(assert (=> b!885473 (=> res!402750 e!580735)))

(assert (=> b!885473 (= res!402750 call!51885)))

(declare-fun b!885468 () Bool)

(assert (=> b!885468 (= e!580734 (not lt!331435))))

(declare-fun d!276839 () Bool)

(assert (=> d!276839 e!580736))

(declare-fun c!143156 () Bool)

(assert (=> d!276839 (= c!143156 (is-EmptyExpr!2278 (regOne!5068 r!15766)))))

(assert (=> d!276839 (= lt!331435 e!580738)))

(declare-fun c!143155 () Bool)

(assert (=> d!276839 (= c!143155 (isEmpty!5697 (_1!6147 lt!331376)))))

(assert (=> d!276839 (validRegex!747 (regOne!5068 r!15766))))

(assert (=> d!276839 (= (matchR!816 (regOne!5068 r!15766) (_1!6147 lt!331376)) lt!331435)))

(declare-fun b!885474 () Bool)

(declare-fun res!402752 () Bool)

(assert (=> b!885474 (=> res!402752 e!580735)))

(assert (=> b!885474 (= res!402752 (not (isEmpty!5697 (tail!1111 (_1!6147 lt!331376)))))))

(declare-fun b!885475 () Bool)

(declare-fun res!402753 () Bool)

(assert (=> b!885475 (=> res!402753 e!580740)))

(assert (=> b!885475 (= res!402753 e!580737)))

(declare-fun res!402754 () Bool)

(assert (=> b!885475 (=> (not res!402754) (not e!580737))))

(assert (=> b!885475 (= res!402754 lt!331435)))

(declare-fun b!885476 () Bool)

(assert (=> b!885476 (= e!580736 (= lt!331435 call!51885))))

(assert (= (and d!276839 c!143155) b!885472))

(assert (= (and d!276839 (not c!143155)) b!885465))

(assert (= (and d!276839 c!143156) b!885476))

(assert (= (and d!276839 (not c!143156)) b!885471))

(assert (= (and b!885471 c!143154) b!885468))

(assert (= (and b!885471 (not c!143154)) b!885467))

(assert (= (and b!885467 (not res!402755)) b!885475))

(assert (= (and b!885475 res!402754) b!885464))

(assert (= (and b!885464 res!402748) b!885470))

(assert (= (and b!885470 res!402751) b!885463))

(assert (= (and b!885475 (not res!402753)) b!885466))

(assert (= (and b!885466 res!402749) b!885473))

(assert (= (and b!885473 (not res!402750)) b!885474))

(assert (= (and b!885474 (not res!402752)) b!885469))

(assert (= (or b!885476 b!885464 b!885473) bm!51880))

(assert (=> b!885465 m!1131417))

(assert (=> b!885465 m!1131417))

(declare-fun m!1131489 () Bool)

(assert (=> b!885465 m!1131489))

(assert (=> b!885465 m!1131421))

(assert (=> b!885465 m!1131489))

(assert (=> b!885465 m!1131421))

(declare-fun m!1131491 () Bool)

(assert (=> b!885465 m!1131491))

(assert (=> bm!51880 m!1131425))

(assert (=> b!885470 m!1131421))

(assert (=> b!885470 m!1131421))

(assert (=> b!885470 m!1131427))

(assert (=> b!885463 m!1131417))

(assert (=> b!885469 m!1131417))

(assert (=> d!276839 m!1131425))

(assert (=> d!276839 m!1131361))

(assert (=> b!885472 m!1131369))

(assert (=> b!885474 m!1131421))

(assert (=> b!885474 m!1131421))

(assert (=> b!885474 m!1131427))

(assert (=> b!885164 d!276839))

(declare-fun d!276841 () Bool)

(assert (=> d!276841 (= (get!2967 lt!331373) (v!19379 lt!331373))))

(assert (=> b!885164 d!276841))

(declare-fun bs!234675 () Bool)

(declare-fun b!885513 () Bool)

(assert (= bs!234675 (and b!885513 b!885168)))

(declare-fun lambda!27341 () Int)

(assert (=> bs!234675 (not (= lambda!27341 lambda!27316))))

(declare-fun bs!234676 () Bool)

(assert (= bs!234676 (and b!885513 d!276833)))

(assert (=> bs!234676 (not (= lambda!27341 lambda!27336))))

(assert (=> bs!234676 (not (= lambda!27341 lambda!27335))))

(assert (=> bs!234675 (not (= lambda!27341 lambda!27315))))

(declare-fun bs!234677 () Bool)

(assert (= bs!234677 (and b!885513 d!276821)))

(assert (=> bs!234677 (not (= lambda!27341 lambda!27327))))

(assert (=> b!885513 true))

(assert (=> b!885513 true))

(declare-fun bs!234678 () Bool)

(declare-fun b!885516 () Bool)

(assert (= bs!234678 (and b!885516 d!276833)))

(declare-fun lambda!27342 () Int)

(assert (=> bs!234678 (= lambda!27342 lambda!27336)))

(assert (=> bs!234678 (not (= lambda!27342 lambda!27335))))

(declare-fun bs!234679 () Bool)

(assert (= bs!234679 (and b!885516 b!885168)))

(assert (=> bs!234679 (not (= lambda!27342 lambda!27315))))

(declare-fun bs!234680 () Bool)

(assert (= bs!234680 (and b!885516 d!276821)))

(assert (=> bs!234680 (not (= lambda!27342 lambda!27327))))

(assert (=> bs!234679 (= lambda!27342 lambda!27316)))

(declare-fun bs!234681 () Bool)

(assert (= bs!234681 (and b!885516 b!885513)))

(assert (=> bs!234681 (not (= lambda!27342 lambda!27341))))

(assert (=> b!885516 true))

(assert (=> b!885516 true))

(declare-fun b!885509 () Bool)

(declare-fun e!580763 () Bool)

(declare-fun call!51890 () Bool)

(assert (=> b!885509 (= e!580763 call!51890)))

(declare-fun b!885510 () Bool)

(declare-fun e!580765 () Bool)

(assert (=> b!885510 (= e!580765 (matchRSpec!79 (regTwo!5069 r!15766) s!10566))))

(declare-fun b!885511 () Bool)

(declare-fun res!402774 () Bool)

(declare-fun e!580759 () Bool)

(assert (=> b!885511 (=> res!402774 e!580759)))

(assert (=> b!885511 (= res!402774 call!51890)))

(declare-fun e!580764 () Bool)

(assert (=> b!885511 (= e!580764 e!580759)))

(declare-fun b!885512 () Bool)

(declare-fun e!580761 () Bool)

(assert (=> b!885512 (= e!580761 e!580765)))

(declare-fun res!402772 () Bool)

(assert (=> b!885512 (= res!402772 (matchRSpec!79 (regOne!5069 r!15766) s!10566))))

(assert (=> b!885512 (=> res!402772 e!580765)))

(declare-fun d!276843 () Bool)

(declare-fun c!143168 () Bool)

(assert (=> d!276843 (= c!143168 (is-EmptyExpr!2278 r!15766))))

(assert (=> d!276843 (= (matchRSpec!79 r!15766 s!10566) e!580763)))

(declare-fun call!51891 () Bool)

(assert (=> b!885513 (= e!580759 call!51891)))

(declare-fun b!885514 () Bool)

(declare-fun e!580760 () Bool)

(assert (=> b!885514 (= e!580763 e!580760)))

(declare-fun res!402773 () Bool)

(assert (=> b!885514 (= res!402773 (not (is-EmptyLang!2278 r!15766)))))

(assert (=> b!885514 (=> (not res!402773) (not e!580760))))

(declare-fun c!143167 () Bool)

(declare-fun bm!51885 () Bool)

(assert (=> bm!51885 (= call!51891 (Exists!73 (ite c!143167 lambda!27341 lambda!27342)))))

(declare-fun b!885515 () Bool)

(declare-fun e!580762 () Bool)

(assert (=> b!885515 (= e!580762 (= s!10566 (Cons!9492 (c!143093 r!15766) Nil!9492)))))

(assert (=> b!885516 (= e!580764 call!51891)))

(declare-fun b!885517 () Bool)

(assert (=> b!885517 (= e!580761 e!580764)))

(assert (=> b!885517 (= c!143167 (is-Star!2278 r!15766))))

(declare-fun bm!51886 () Bool)

(assert (=> bm!51886 (= call!51890 (isEmpty!5697 s!10566))))

(declare-fun b!885518 () Bool)

(declare-fun c!143165 () Bool)

(assert (=> b!885518 (= c!143165 (is-Union!2278 r!15766))))

(assert (=> b!885518 (= e!580762 e!580761)))

(declare-fun b!885519 () Bool)

(declare-fun c!143166 () Bool)

(assert (=> b!885519 (= c!143166 (is-ElementMatch!2278 r!15766))))

(assert (=> b!885519 (= e!580760 e!580762)))

(assert (= (and d!276843 c!143168) b!885509))

(assert (= (and d!276843 (not c!143168)) b!885514))

(assert (= (and b!885514 res!402773) b!885519))

(assert (= (and b!885519 c!143166) b!885515))

(assert (= (and b!885519 (not c!143166)) b!885518))

(assert (= (and b!885518 c!143165) b!885512))

(assert (= (and b!885518 (not c!143165)) b!885517))

(assert (= (and b!885512 (not res!402772)) b!885510))

(assert (= (and b!885517 c!143167) b!885511))

(assert (= (and b!885517 (not c!143167)) b!885516))

(assert (= (and b!885511 (not res!402774)) b!885513))

(assert (= (or b!885513 b!885516) bm!51885))

(assert (= (or b!885509 b!885511) bm!51886))

(declare-fun m!1131493 () Bool)

(assert (=> b!885510 m!1131493))

(declare-fun m!1131495 () Bool)

(assert (=> b!885512 m!1131495))

(declare-fun m!1131497 () Bool)

(assert (=> bm!51885 m!1131497))

(assert (=> bm!51886 m!1131277))

(assert (=> b!885169 d!276843))

(declare-fun b!885520 () Bool)

(declare-fun e!580769 () Bool)

(assert (=> b!885520 (= e!580769 (= (head!1549 s!10566) (c!143093 r!15766)))))

(declare-fun b!885521 () Bool)

(declare-fun res!402775 () Bool)

(assert (=> b!885521 (=> (not res!402775) (not e!580769))))

(declare-fun call!51892 () Bool)

(assert (=> b!885521 (= res!402775 (not call!51892))))

(declare-fun b!885522 () Bool)

(declare-fun e!580770 () Bool)

(assert (=> b!885522 (= e!580770 (matchR!816 (derivativeStep!396 r!15766 (head!1549 s!10566)) (tail!1111 s!10566)))))

(declare-fun b!885523 () Bool)

(declare-fun e!580772 () Bool)

(declare-fun e!580771 () Bool)

(assert (=> b!885523 (= e!580772 e!580771)))

(declare-fun res!402776 () Bool)

(assert (=> b!885523 (=> (not res!402776) (not e!580771))))

(declare-fun lt!331436 () Bool)

(assert (=> b!885523 (= res!402776 (not lt!331436))))

(declare-fun bm!51887 () Bool)

(assert (=> bm!51887 (= call!51892 (isEmpty!5697 s!10566))))

(declare-fun b!885524 () Bool)

(declare-fun res!402782 () Bool)

(assert (=> b!885524 (=> res!402782 e!580772)))

(assert (=> b!885524 (= res!402782 (not (is-ElementMatch!2278 r!15766)))))

(declare-fun e!580766 () Bool)

(assert (=> b!885524 (= e!580766 e!580772)))

(declare-fun b!885526 () Bool)

(declare-fun e!580767 () Bool)

(assert (=> b!885526 (= e!580767 (not (= (head!1549 s!10566) (c!143093 r!15766))))))

(declare-fun b!885527 () Bool)

(declare-fun res!402778 () Bool)

(assert (=> b!885527 (=> (not res!402778) (not e!580769))))

(assert (=> b!885527 (= res!402778 (isEmpty!5697 (tail!1111 s!10566)))))

(declare-fun b!885528 () Bool)

(declare-fun e!580768 () Bool)

(assert (=> b!885528 (= e!580768 e!580766)))

(declare-fun c!143169 () Bool)

(assert (=> b!885528 (= c!143169 (is-EmptyLang!2278 r!15766))))

(declare-fun b!885529 () Bool)

(assert (=> b!885529 (= e!580770 (nullable!584 r!15766))))

(declare-fun b!885530 () Bool)

(assert (=> b!885530 (= e!580771 e!580767)))

(declare-fun res!402777 () Bool)

(assert (=> b!885530 (=> res!402777 e!580767)))

(assert (=> b!885530 (= res!402777 call!51892)))

(declare-fun b!885525 () Bool)

(assert (=> b!885525 (= e!580766 (not lt!331436))))

(declare-fun d!276845 () Bool)

(assert (=> d!276845 e!580768))

(declare-fun c!143171 () Bool)

(assert (=> d!276845 (= c!143171 (is-EmptyExpr!2278 r!15766))))

(assert (=> d!276845 (= lt!331436 e!580770)))

(declare-fun c!143170 () Bool)

(assert (=> d!276845 (= c!143170 (isEmpty!5697 s!10566))))

(assert (=> d!276845 (validRegex!747 r!15766)))

(assert (=> d!276845 (= (matchR!816 r!15766 s!10566) lt!331436)))

(declare-fun b!885531 () Bool)

(declare-fun res!402779 () Bool)

(assert (=> b!885531 (=> res!402779 e!580767)))

(assert (=> b!885531 (= res!402779 (not (isEmpty!5697 (tail!1111 s!10566))))))

(declare-fun b!885532 () Bool)

(declare-fun res!402780 () Bool)

(assert (=> b!885532 (=> res!402780 e!580772)))

(assert (=> b!885532 (= res!402780 e!580769)))

(declare-fun res!402781 () Bool)

(assert (=> b!885532 (=> (not res!402781) (not e!580769))))

(assert (=> b!885532 (= res!402781 lt!331436)))

(declare-fun b!885533 () Bool)

(assert (=> b!885533 (= e!580768 (= lt!331436 call!51892))))

(assert (= (and d!276845 c!143170) b!885529))

(assert (= (and d!276845 (not c!143170)) b!885522))

(assert (= (and d!276845 c!143171) b!885533))

(assert (= (and d!276845 (not c!143171)) b!885528))

(assert (= (and b!885528 c!143169) b!885525))

(assert (= (and b!885528 (not c!143169)) b!885524))

(assert (= (and b!885524 (not res!402782)) b!885532))

(assert (= (and b!885532 res!402781) b!885521))

(assert (= (and b!885521 res!402775) b!885527))

(assert (= (and b!885527 res!402778) b!885520))

(assert (= (and b!885532 (not res!402780)) b!885523))

(assert (= (and b!885523 res!402776) b!885530))

(assert (= (and b!885530 (not res!402777)) b!885531))

(assert (= (and b!885531 (not res!402779)) b!885526))

(assert (= (or b!885533 b!885521 b!885530) bm!51887))

(declare-fun m!1131499 () Bool)

(assert (=> b!885522 m!1131499))

(assert (=> b!885522 m!1131499))

(declare-fun m!1131501 () Bool)

(assert (=> b!885522 m!1131501))

(declare-fun m!1131503 () Bool)

(assert (=> b!885522 m!1131503))

(assert (=> b!885522 m!1131501))

(assert (=> b!885522 m!1131503))

(declare-fun m!1131505 () Bool)

(assert (=> b!885522 m!1131505))

(assert (=> bm!51887 m!1131277))

(assert (=> b!885527 m!1131503))

(assert (=> b!885527 m!1131503))

(declare-fun m!1131507 () Bool)

(assert (=> b!885527 m!1131507))

(assert (=> b!885520 m!1131499))

(assert (=> b!885526 m!1131499))

(assert (=> d!276845 m!1131277))

(assert (=> d!276845 m!1131309))

(declare-fun m!1131509 () Bool)

(assert (=> b!885529 m!1131509))

(assert (=> b!885531 m!1131503))

(assert (=> b!885531 m!1131503))

(assert (=> b!885531 m!1131507))

(assert (=> b!885169 d!276845))

(declare-fun d!276847 () Bool)

(assert (=> d!276847 (= (matchR!816 r!15766 s!10566) (matchRSpec!79 r!15766 s!10566))))

(declare-fun lt!331445 () Unit!14135)

(declare-fun choose!5267 (Regex!2278 List!9508) Unit!14135)

(assert (=> d!276847 (= lt!331445 (choose!5267 r!15766 s!10566))))

(assert (=> d!276847 (validRegex!747 r!15766)))

(assert (=> d!276847 (= (mainMatchTheorem!79 r!15766 s!10566) lt!331445)))

(declare-fun bs!234682 () Bool)

(assert (= bs!234682 d!276847))

(assert (=> bs!234682 m!1131271))

(assert (=> bs!234682 m!1131269))

(declare-fun m!1131511 () Bool)

(assert (=> bs!234682 m!1131511))

(assert (=> bs!234682 m!1131309))

(assert (=> b!885169 d!276847))

(declare-fun d!276849 () Bool)

(declare-fun res!402796 () Bool)

(declare-fun e!580788 () Bool)

(assert (=> d!276849 (=> res!402796 e!580788)))

(assert (=> d!276849 (= res!402796 (is-ElementMatch!2278 r!15766))))

(assert (=> d!276849 (= (validRegex!747 r!15766) e!580788)))

(declare-fun b!885552 () Bool)

(declare-fun e!580784 () Bool)

(declare-fun e!580785 () Bool)

(assert (=> b!885552 (= e!580784 e!580785)))

(declare-fun res!402795 () Bool)

(assert (=> b!885552 (= res!402795 (not (nullable!584 (reg!2607 r!15766))))))

(assert (=> b!885552 (=> (not res!402795) (not e!580785))))

(declare-fun b!885553 () Bool)

(assert (=> b!885553 (= e!580788 e!580784)))

(declare-fun c!143177 () Bool)

(assert (=> b!885553 (= c!143177 (is-Star!2278 r!15766))))

(declare-fun bm!51888 () Bool)

(declare-fun call!51893 () Bool)

(declare-fun call!51894 () Bool)

(assert (=> bm!51888 (= call!51893 call!51894)))

(declare-fun b!885554 () Bool)

(declare-fun e!580786 () Bool)

(assert (=> b!885554 (= e!580784 e!580786)))

(declare-fun c!143176 () Bool)

(assert (=> b!885554 (= c!143176 (is-Union!2278 r!15766))))

(declare-fun b!885555 () Bool)

(declare-fun e!580787 () Bool)

(assert (=> b!885555 (= e!580787 call!51893)))

(declare-fun b!885556 () Bool)

(declare-fun res!402797 () Bool)

(declare-fun e!580789 () Bool)

(assert (=> b!885556 (=> res!402797 e!580789)))

(assert (=> b!885556 (= res!402797 (not (is-Concat!4111 r!15766)))))

(assert (=> b!885556 (= e!580786 e!580789)))

(declare-fun b!885557 () Bool)

(assert (=> b!885557 (= e!580785 call!51894)))

(declare-fun b!885558 () Bool)

(assert (=> b!885558 (= e!580789 e!580787)))

(declare-fun res!402794 () Bool)

(assert (=> b!885558 (=> (not res!402794) (not e!580787))))

(declare-fun call!51895 () Bool)

(assert (=> b!885558 (= res!402794 call!51895)))

(declare-fun bm!51889 () Bool)

(assert (=> bm!51889 (= call!51894 (validRegex!747 (ite c!143177 (reg!2607 r!15766) (ite c!143176 (regTwo!5069 r!15766) (regTwo!5068 r!15766)))))))

(declare-fun b!885559 () Bool)

(declare-fun e!580783 () Bool)

(assert (=> b!885559 (= e!580783 call!51893)))

(declare-fun b!885560 () Bool)

(declare-fun res!402793 () Bool)

(assert (=> b!885560 (=> (not res!402793) (not e!580783))))

(assert (=> b!885560 (= res!402793 call!51895)))

(assert (=> b!885560 (= e!580786 e!580783)))

(declare-fun bm!51890 () Bool)

(assert (=> bm!51890 (= call!51895 (validRegex!747 (ite c!143176 (regOne!5069 r!15766) (regOne!5068 r!15766))))))

(assert (= (and d!276849 (not res!402796)) b!885553))

(assert (= (and b!885553 c!143177) b!885552))

(assert (= (and b!885553 (not c!143177)) b!885554))

(assert (= (and b!885552 res!402795) b!885557))

(assert (= (and b!885554 c!143176) b!885560))

(assert (= (and b!885554 (not c!143176)) b!885556))

(assert (= (and b!885560 res!402793) b!885559))

(assert (= (and b!885556 (not res!402797)) b!885558))

(assert (= (and b!885558 res!402794) b!885555))

(assert (= (or b!885559 b!885555) bm!51888))

(assert (= (or b!885560 b!885558) bm!51890))

(assert (= (or b!885557 bm!51888) bm!51889))

(declare-fun m!1131513 () Bool)

(assert (=> b!885552 m!1131513))

(declare-fun m!1131515 () Bool)

(assert (=> bm!51889 m!1131515))

(declare-fun m!1131517 () Bool)

(assert (=> bm!51890 m!1131517))

(assert (=> start!79972 d!276849))

(declare-fun b!885561 () Bool)

(declare-fun e!580793 () Bool)

(assert (=> b!885561 (= e!580793 (= (head!1549 (_2!6147 lt!331376)) (c!143093 (regTwo!5068 r!15766))))))

(declare-fun b!885562 () Bool)

(declare-fun res!402798 () Bool)

(assert (=> b!885562 (=> (not res!402798) (not e!580793))))

(declare-fun call!51896 () Bool)

(assert (=> b!885562 (= res!402798 (not call!51896))))

(declare-fun b!885563 () Bool)

(declare-fun e!580794 () Bool)

(assert (=> b!885563 (= e!580794 (matchR!816 (derivativeStep!396 (regTwo!5068 r!15766) (head!1549 (_2!6147 lt!331376))) (tail!1111 (_2!6147 lt!331376))))))

(declare-fun b!885564 () Bool)

(declare-fun e!580796 () Bool)

(declare-fun e!580795 () Bool)

(assert (=> b!885564 (= e!580796 e!580795)))

(declare-fun res!402799 () Bool)

(assert (=> b!885564 (=> (not res!402799) (not e!580795))))

(declare-fun lt!331446 () Bool)

(assert (=> b!885564 (= res!402799 (not lt!331446))))

(declare-fun bm!51891 () Bool)

(assert (=> bm!51891 (= call!51896 (isEmpty!5697 (_2!6147 lt!331376)))))

(declare-fun b!885565 () Bool)

(declare-fun res!402805 () Bool)

(assert (=> b!885565 (=> res!402805 e!580796)))

(assert (=> b!885565 (= res!402805 (not (is-ElementMatch!2278 (regTwo!5068 r!15766))))))

(declare-fun e!580790 () Bool)

(assert (=> b!885565 (= e!580790 e!580796)))

(declare-fun b!885567 () Bool)

(declare-fun e!580791 () Bool)

(assert (=> b!885567 (= e!580791 (not (= (head!1549 (_2!6147 lt!331376)) (c!143093 (regTwo!5068 r!15766)))))))

(declare-fun b!885568 () Bool)

(declare-fun res!402801 () Bool)

(assert (=> b!885568 (=> (not res!402801) (not e!580793))))

(assert (=> b!885568 (= res!402801 (isEmpty!5697 (tail!1111 (_2!6147 lt!331376))))))

(declare-fun b!885569 () Bool)

(declare-fun e!580792 () Bool)

(assert (=> b!885569 (= e!580792 e!580790)))

(declare-fun c!143178 () Bool)

(assert (=> b!885569 (= c!143178 (is-EmptyLang!2278 (regTwo!5068 r!15766)))))

(declare-fun b!885570 () Bool)

(assert (=> b!885570 (= e!580794 (nullable!584 (regTwo!5068 r!15766)))))

(declare-fun b!885571 () Bool)

(assert (=> b!885571 (= e!580795 e!580791)))

(declare-fun res!402800 () Bool)

(assert (=> b!885571 (=> res!402800 e!580791)))

(assert (=> b!885571 (= res!402800 call!51896)))

(declare-fun b!885566 () Bool)

(assert (=> b!885566 (= e!580790 (not lt!331446))))

(declare-fun d!276851 () Bool)

(assert (=> d!276851 e!580792))

(declare-fun c!143180 () Bool)

(assert (=> d!276851 (= c!143180 (is-EmptyExpr!2278 (regTwo!5068 r!15766)))))

(assert (=> d!276851 (= lt!331446 e!580794)))

(declare-fun c!143179 () Bool)

(assert (=> d!276851 (= c!143179 (isEmpty!5697 (_2!6147 lt!331376)))))

(assert (=> d!276851 (validRegex!747 (regTwo!5068 r!15766))))

(assert (=> d!276851 (= (matchR!816 (regTwo!5068 r!15766) (_2!6147 lt!331376)) lt!331446)))

(declare-fun b!885572 () Bool)

(declare-fun res!402802 () Bool)

(assert (=> b!885572 (=> res!402802 e!580791)))

(assert (=> b!885572 (= res!402802 (not (isEmpty!5697 (tail!1111 (_2!6147 lt!331376)))))))

(declare-fun b!885573 () Bool)

(declare-fun res!402803 () Bool)

(assert (=> b!885573 (=> res!402803 e!580796)))

(assert (=> b!885573 (= res!402803 e!580793)))

(declare-fun res!402804 () Bool)

(assert (=> b!885573 (=> (not res!402804) (not e!580793))))

(assert (=> b!885573 (= res!402804 lt!331446)))

(declare-fun b!885574 () Bool)

(assert (=> b!885574 (= e!580792 (= lt!331446 call!51896))))

(assert (= (and d!276851 c!143179) b!885570))

(assert (= (and d!276851 (not c!143179)) b!885563))

(assert (= (and d!276851 c!143180) b!885574))

(assert (= (and d!276851 (not c!143180)) b!885569))

(assert (= (and b!885569 c!143178) b!885566))

(assert (= (and b!885569 (not c!143178)) b!885565))

(assert (= (and b!885565 (not res!402805)) b!885573))

(assert (= (and b!885573 res!402804) b!885562))

(assert (= (and b!885562 res!402798) b!885568))

(assert (= (and b!885568 res!402801) b!885561))

(assert (= (and b!885573 (not res!402803)) b!885564))

(assert (= (and b!885564 res!402799) b!885571))

(assert (= (and b!885571 (not res!402800)) b!885572))

(assert (= (and b!885572 (not res!402802)) b!885567))

(assert (= (or b!885574 b!885562 b!885571) bm!51891))

(assert (=> b!885563 m!1131391))

(assert (=> b!885563 m!1131391))

(declare-fun m!1131519 () Bool)

(assert (=> b!885563 m!1131519))

(assert (=> b!885563 m!1131395))

(assert (=> b!885563 m!1131519))

(assert (=> b!885563 m!1131395))

(declare-fun m!1131521 () Bool)

(assert (=> b!885563 m!1131521))

(assert (=> bm!51891 m!1131399))

(assert (=> b!885568 m!1131395))

(assert (=> b!885568 m!1131395))

(assert (=> b!885568 m!1131401))

(assert (=> b!885561 m!1131391))

(assert (=> b!885567 m!1131391))

(assert (=> d!276851 m!1131399))

(assert (=> d!276851 m!1131295))

(assert (=> b!885570 m!1131411))

(assert (=> b!885572 m!1131395))

(assert (=> b!885572 m!1131395))

(assert (=> b!885572 m!1131401))

(assert (=> b!885171 d!276851))

(declare-fun e!580799 () Bool)

(assert (=> b!885172 (= tp!279213 e!580799)))

(declare-fun b!885585 () Bool)

(assert (=> b!885585 (= e!580799 tp_is_empty!4199)))

(declare-fun b!885586 () Bool)

(declare-fun tp!279245 () Bool)

(declare-fun tp!279247 () Bool)

(assert (=> b!885586 (= e!580799 (and tp!279245 tp!279247))))

(declare-fun b!885587 () Bool)

(declare-fun tp!279246 () Bool)

(assert (=> b!885587 (= e!580799 tp!279246)))

(declare-fun b!885588 () Bool)

(declare-fun tp!279243 () Bool)

(declare-fun tp!279244 () Bool)

(assert (=> b!885588 (= e!580799 (and tp!279243 tp!279244))))

(assert (= (and b!885172 (is-ElementMatch!2278 (regOne!5068 r!15766))) b!885585))

(assert (= (and b!885172 (is-Concat!4111 (regOne!5068 r!15766))) b!885586))

(assert (= (and b!885172 (is-Star!2278 (regOne!5068 r!15766))) b!885587))

(assert (= (and b!885172 (is-Union!2278 (regOne!5068 r!15766))) b!885588))

(declare-fun e!580800 () Bool)

(assert (=> b!885172 (= tp!279212 e!580800)))

(declare-fun b!885589 () Bool)

(assert (=> b!885589 (= e!580800 tp_is_empty!4199)))

(declare-fun b!885590 () Bool)

(declare-fun tp!279250 () Bool)

(declare-fun tp!279252 () Bool)

(assert (=> b!885590 (= e!580800 (and tp!279250 tp!279252))))

(declare-fun b!885591 () Bool)

(declare-fun tp!279251 () Bool)

(assert (=> b!885591 (= e!580800 tp!279251)))

(declare-fun b!885592 () Bool)

(declare-fun tp!279248 () Bool)

(declare-fun tp!279249 () Bool)

(assert (=> b!885592 (= e!580800 (and tp!279248 tp!279249))))

(assert (= (and b!885172 (is-ElementMatch!2278 (regTwo!5068 r!15766))) b!885589))

(assert (= (and b!885172 (is-Concat!4111 (regTwo!5068 r!15766))) b!885590))

(assert (= (and b!885172 (is-Star!2278 (regTwo!5068 r!15766))) b!885591))

(assert (= (and b!885172 (is-Union!2278 (regTwo!5068 r!15766))) b!885592))

(declare-fun e!580801 () Bool)

(assert (=> b!885173 (= tp!279210 e!580801)))

(declare-fun b!885593 () Bool)

(assert (=> b!885593 (= e!580801 tp_is_empty!4199)))

(declare-fun b!885594 () Bool)

(declare-fun tp!279255 () Bool)

(declare-fun tp!279257 () Bool)

(assert (=> b!885594 (= e!580801 (and tp!279255 tp!279257))))

(declare-fun b!885595 () Bool)

(declare-fun tp!279256 () Bool)

(assert (=> b!885595 (= e!580801 tp!279256)))

(declare-fun b!885596 () Bool)

(declare-fun tp!279253 () Bool)

(declare-fun tp!279254 () Bool)

(assert (=> b!885596 (= e!580801 (and tp!279253 tp!279254))))

(assert (= (and b!885173 (is-ElementMatch!2278 (regOne!5069 r!15766))) b!885593))

(assert (= (and b!885173 (is-Concat!4111 (regOne!5069 r!15766))) b!885594))

(assert (= (and b!885173 (is-Star!2278 (regOne!5069 r!15766))) b!885595))

(assert (= (and b!885173 (is-Union!2278 (regOne!5069 r!15766))) b!885596))

(declare-fun e!580802 () Bool)

(assert (=> b!885173 (= tp!279211 e!580802)))

(declare-fun b!885597 () Bool)

(assert (=> b!885597 (= e!580802 tp_is_empty!4199)))

(declare-fun b!885598 () Bool)

(declare-fun tp!279260 () Bool)

(declare-fun tp!279262 () Bool)

(assert (=> b!885598 (= e!580802 (and tp!279260 tp!279262))))

(declare-fun b!885599 () Bool)

(declare-fun tp!279261 () Bool)

(assert (=> b!885599 (= e!580802 tp!279261)))

(declare-fun b!885600 () Bool)

(declare-fun tp!279258 () Bool)

(declare-fun tp!279259 () Bool)

(assert (=> b!885600 (= e!580802 (and tp!279258 tp!279259))))

(assert (= (and b!885173 (is-ElementMatch!2278 (regTwo!5069 r!15766))) b!885597))

(assert (= (and b!885173 (is-Concat!4111 (regTwo!5069 r!15766))) b!885598))

(assert (= (and b!885173 (is-Star!2278 (regTwo!5069 r!15766))) b!885599))

(assert (= (and b!885173 (is-Union!2278 (regTwo!5069 r!15766))) b!885600))

(declare-fun b!885605 () Bool)

(declare-fun e!580805 () Bool)

(declare-fun tp!279265 () Bool)

(assert (=> b!885605 (= e!580805 (and tp_is_empty!4199 tp!279265))))

(assert (=> b!885165 (= tp!279209 e!580805)))

(assert (= (and b!885165 (is-Cons!9492 (t!100554 s!10566))) b!885605))

(declare-fun e!580806 () Bool)

(assert (=> b!885166 (= tp!279214 e!580806)))

(declare-fun b!885606 () Bool)

(assert (=> b!885606 (= e!580806 tp_is_empty!4199)))

(declare-fun b!885607 () Bool)

(declare-fun tp!279268 () Bool)

(declare-fun tp!279270 () Bool)

(assert (=> b!885607 (= e!580806 (and tp!279268 tp!279270))))

(declare-fun b!885608 () Bool)

(declare-fun tp!279269 () Bool)

(assert (=> b!885608 (= e!580806 tp!279269)))

(declare-fun b!885609 () Bool)

(declare-fun tp!279266 () Bool)

(declare-fun tp!279267 () Bool)

(assert (=> b!885609 (= e!580806 (and tp!279266 tp!279267))))

(assert (= (and b!885166 (is-ElementMatch!2278 (reg!2607 r!15766))) b!885606))

(assert (= (and b!885166 (is-Concat!4111 (reg!2607 r!15766))) b!885607))

(assert (= (and b!885166 (is-Star!2278 (reg!2607 r!15766))) b!885608))

(assert (= (and b!885166 (is-Union!2278 (reg!2607 r!15766))) b!885609))

(push 1)

(assert (not b!885442))

(assert (not bm!51843))

(assert tp_is_empty!4199)

(assert (not d!276823))

(assert (not bm!51880))

(assert (not b!885363))

(assert (not b!885303))

(assert (not d!276811))

(assert (not b!885465))

(assert (not b!885361))

(assert (not b!885590))

(assert (not b!885463))

(assert (not b!885381))

(assert (not b!885608))

(assert (not b!885472))

(assert (not b!885561))

(assert (not b!885450))

(assert (not d!276833))

(assert (not b!885445))

(assert (not b!885531))

(assert (not b!885470))

(assert (not bm!51865))

(assert (not bm!51856))

(assert (not d!276803))

(assert (not bm!51887))

(assert (not b!885242))

(assert (not d!276815))

(assert (not b!885586))

(assert (not b!885390))

(assert (not d!276819))

(assert (not b!885527))

(assert (not b!885354))

(assert (not bm!51867))

(assert (not b!885596))

(assert (not b!885448))

(assert (not b!885449))

(assert (not b!885356))

(assert (not d!276845))

(assert (not b!885379))

(assert (not d!276821))

(assert (not b!885552))

(assert (not b!885512))

(assert (not b!885595))

(assert (not bm!51890))

(assert (not b!885607))

(assert (not b!885594))

(assert (not b!885588))

(assert (not d!276837))

(assert (not bm!51885))

(assert (not b!885599))

(assert (not b!885563))

(assert (not b!885522))

(assert (not b!885567))

(assert (not b!885600))

(assert (not d!276839))

(assert (not b!885605))

(assert (not b!885385))

(assert (not b!885469))

(assert (not b!885370))

(assert (not d!276851))

(assert (not d!276799))

(assert (not bm!51864))

(assert (not bm!51889))

(assert (not b!885526))

(assert (not b!885568))

(assert (not b!885572))

(assert (not bm!51858))

(assert (not b!885447))

(assert (not b!885587))

(assert (not b!885529))

(assert (not b!885360))

(assert (not b!885474))

(assert (not d!276801))

(assert (not b!885365))

(assert (not b!885388))

(assert (not b!885520))

(assert (not d!276805))

(assert (not bm!51886))

(assert (not b!885609))

(assert (not d!276813))

(assert (not b!885598))

(assert (not b!885386))

(assert (not b!885592))

(assert (not b!885570))

(assert (not bm!51842))

(assert (not bm!51870))

(assert (not b!885591))

(assert (not b!885510))

(assert (not d!276847))

(assert (not bm!51891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

