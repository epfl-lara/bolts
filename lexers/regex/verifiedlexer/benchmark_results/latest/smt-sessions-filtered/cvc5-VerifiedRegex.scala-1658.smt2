; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83836 () Bool)

(assert start!83836)

(declare-fun b!938639 () Bool)

(assert (=> b!938639 true))

(assert (=> b!938639 true))

(assert (=> b!938639 true))

(declare-fun lambda!31416 () Int)

(declare-fun lambda!31415 () Int)

(assert (=> b!938639 (not (= lambda!31416 lambda!31415))))

(assert (=> b!938639 true))

(assert (=> b!938639 true))

(assert (=> b!938639 true))

(declare-fun bs!238372 () Bool)

(declare-fun b!938643 () Bool)

(assert (= bs!238372 (and b!938643 b!938639)))

(declare-datatypes ((C!5718 0))(
  ( (C!5719 (val!3107 Int)) )
))
(declare-datatypes ((Regex!2574 0))(
  ( (ElementMatch!2574 (c!152695 C!5718)) (Concat!4407 (regOne!5660 Regex!2574) (regTwo!5660 Regex!2574)) (EmptyExpr!2574) (Star!2574 (reg!2903 Regex!2574)) (EmptyLang!2574) (Union!2574 (regOne!5661 Regex!2574) (regTwo!5661 Regex!2574)) )
))
(declare-fun lt!341857 () Regex!2574)

(declare-fun r!15766 () Regex!2574)

(declare-fun lt!341862 () Regex!2574)

(declare-fun lambda!31417 () Int)

(declare-fun lt!341854 () Regex!2574)

(assert (=> bs!238372 (= (and (= lt!341862 (reg!2903 r!15766)) (= lt!341857 lt!341854)) (= lambda!31417 lambda!31415))))

(assert (=> bs!238372 (not (= lambda!31417 lambda!31416))))

(assert (=> b!938643 true))

(assert (=> b!938643 true))

(assert (=> b!938643 true))

(declare-fun lambda!31418 () Int)

(assert (=> bs!238372 (not (= lambda!31418 lambda!31415))))

(assert (=> bs!238372 (= (and (= lt!341862 (reg!2903 r!15766)) (= lt!341857 lt!341854)) (= lambda!31418 lambda!31416))))

(assert (=> b!938643 (not (= lambda!31418 lambda!31417))))

(assert (=> b!938643 true))

(assert (=> b!938643 true))

(assert (=> b!938643 true))

(declare-fun b!938638 () Bool)

(declare-fun e!609203 () Bool)

(declare-fun e!609198 () Bool)

(assert (=> b!938638 (= e!609203 (not e!609198))))

(declare-fun res!426270 () Bool)

(assert (=> b!938638 (=> res!426270 e!609198)))

(declare-fun lt!341860 () Bool)

(assert (=> b!938638 (= res!426270 (or lt!341860 (and (is-Concat!4407 r!15766) (is-EmptyExpr!2574 (regOne!5660 r!15766))) (and (is-Concat!4407 r!15766) (is-EmptyExpr!2574 (regTwo!5660 r!15766))) (is-Concat!4407 r!15766) (is-Union!2574 r!15766) (not (is-Star!2574 r!15766))))))

(declare-datatypes ((List!9804 0))(
  ( (Nil!9788) (Cons!9788 (h!15189 C!5718) (t!100850 List!9804)) )
))
(declare-fun s!10566 () List!9804)

(declare-fun matchRSpec!375 (Regex!2574 List!9804) Bool)

(assert (=> b!938638 (= lt!341860 (matchRSpec!375 r!15766 s!10566))))

(declare-fun matchR!1112 (Regex!2574 List!9804) Bool)

(assert (=> b!938638 (= lt!341860 (matchR!1112 r!15766 s!10566))))

(declare-datatypes ((Unit!14767 0))(
  ( (Unit!14768) )
))
(declare-fun lt!341859 () Unit!14767)

(declare-fun mainMatchTheorem!375 (Regex!2574 List!9804) Unit!14767)

(assert (=> b!938638 (= lt!341859 (mainMatchTheorem!375 r!15766 s!10566))))

(declare-fun e!609199 () Bool)

(assert (=> b!938639 (= e!609198 e!609199)))

(declare-fun res!426271 () Bool)

(assert (=> b!938639 (=> res!426271 e!609199)))

(assert (=> b!938639 (= res!426271 (not (matchR!1112 lt!341857 s!10566)))))

(assert (=> b!938639 (= lt!341857 (Star!2574 lt!341862))))

(declare-fun removeUselessConcat!243 (Regex!2574) Regex!2574)

(assert (=> b!938639 (= lt!341862 (removeUselessConcat!243 (reg!2903 r!15766)))))

(declare-fun Exists!325 (Int) Bool)

(assert (=> b!938639 (= (Exists!325 lambda!31415) (Exists!325 lambda!31416))))

(declare-fun lt!341863 () Unit!14767)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!69 (Regex!2574 List!9804) Unit!14767)

(assert (=> b!938639 (= lt!341863 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!69 (reg!2903 r!15766) s!10566))))

(declare-datatypes ((tuple2!11046 0))(
  ( (tuple2!11047 (_1!6349 List!9804) (_2!6349 List!9804)) )
))
(declare-datatypes ((Option!2165 0))(
  ( (None!2164) (Some!2164 (v!19581 tuple2!11046)) )
))
(declare-fun isDefined!1807 (Option!2165) Bool)

(declare-fun findConcatSeparation!271 (Regex!2574 Regex!2574 List!9804 List!9804 List!9804) Option!2165)

(assert (=> b!938639 (= (isDefined!1807 (findConcatSeparation!271 (reg!2903 r!15766) lt!341854 Nil!9788 s!10566 s!10566)) (Exists!325 lambda!31415))))

(declare-fun lt!341856 () Unit!14767)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!271 (Regex!2574 Regex!2574 List!9804) Unit!14767)

(assert (=> b!938639 (= lt!341856 (lemmaFindConcatSeparationEquivalentToExists!271 (reg!2903 r!15766) lt!341854 s!10566))))

(assert (=> b!938639 (= lt!341854 (Star!2574 (reg!2903 r!15766)))))

(declare-fun b!938640 () Bool)

(declare-fun res!426272 () Bool)

(declare-fun e!609200 () Bool)

(assert (=> b!938640 (=> res!426272 e!609200)))

(declare-fun validRegex!1043 (Regex!2574) Bool)

(assert (=> b!938640 (= res!426272 (not (validRegex!1043 lt!341862)))))

(declare-fun b!938641 () Bool)

(declare-fun e!609202 () Bool)

(declare-fun tp!290773 () Bool)

(assert (=> b!938641 (= e!609202 tp!290773)))

(declare-fun b!938642 () Bool)

(declare-fun e!609201 () Bool)

(declare-fun tp_is_empty!4791 () Bool)

(declare-fun tp!290769 () Bool)

(assert (=> b!938642 (= e!609201 (and tp_is_empty!4791 tp!290769))))

(declare-fun res!426269 () Bool)

(assert (=> start!83836 (=> (not res!426269) (not e!609203))))

(assert (=> start!83836 (= res!426269 (validRegex!1043 r!15766))))

(assert (=> start!83836 e!609203))

(assert (=> start!83836 e!609202))

(assert (=> start!83836 e!609201))

(assert (=> b!938643 (= e!609199 e!609200)))

(declare-fun res!426273 () Bool)

(assert (=> b!938643 (=> res!426273 e!609200)))

(declare-fun isEmpty!6029 (List!9804) Bool)

(assert (=> b!938643 (= res!426273 (isEmpty!6029 s!10566))))

(assert (=> b!938643 (= (Exists!325 lambda!31417) (Exists!325 lambda!31418))))

(declare-fun lt!341858 () Unit!14767)

(assert (=> b!938643 (= lt!341858 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!69 lt!341862 s!10566))))

(assert (=> b!938643 (= (isDefined!1807 (findConcatSeparation!271 lt!341862 lt!341857 Nil!9788 s!10566 s!10566)) (Exists!325 lambda!31417))))

(declare-fun lt!341855 () Unit!14767)

(assert (=> b!938643 (= lt!341855 (lemmaFindConcatSeparationEquivalentToExists!271 lt!341862 lt!341857 s!10566))))

(assert (=> b!938643 (matchRSpec!375 lt!341857 s!10566)))

(declare-fun lt!341861 () Unit!14767)

(assert (=> b!938643 (= lt!341861 (mainMatchTheorem!375 lt!341857 s!10566))))

(declare-fun b!938644 () Bool)

(assert (=> b!938644 (= e!609200 (validRegex!1043 lt!341857))))

(declare-fun b!938645 () Bool)

(declare-fun tp!290774 () Bool)

(declare-fun tp!290771 () Bool)

(assert (=> b!938645 (= e!609202 (and tp!290774 tp!290771))))

(declare-fun b!938646 () Bool)

(assert (=> b!938646 (= e!609202 tp_is_empty!4791)))

(declare-fun b!938647 () Bool)

(declare-fun tp!290770 () Bool)

(declare-fun tp!290772 () Bool)

(assert (=> b!938647 (= e!609202 (and tp!290770 tp!290772))))

(assert (= (and start!83836 res!426269) b!938638))

(assert (= (and b!938638 (not res!426270)) b!938639))

(assert (= (and b!938639 (not res!426271)) b!938643))

(assert (= (and b!938643 (not res!426273)) b!938640))

(assert (= (and b!938640 (not res!426272)) b!938644))

(assert (= (and start!83836 (is-ElementMatch!2574 r!15766)) b!938646))

(assert (= (and start!83836 (is-Concat!4407 r!15766)) b!938647))

(assert (= (and start!83836 (is-Star!2574 r!15766)) b!938641))

(assert (= (and start!83836 (is-Union!2574 r!15766)) b!938645))

(assert (= (and start!83836 (is-Cons!9788 s!10566)) b!938642))

(declare-fun m!1156885 () Bool)

(assert (=> b!938639 m!1156885))

(declare-fun m!1156887 () Bool)

(assert (=> b!938639 m!1156887))

(declare-fun m!1156889 () Bool)

(assert (=> b!938639 m!1156889))

(declare-fun m!1156891 () Bool)

(assert (=> b!938639 m!1156891))

(declare-fun m!1156893 () Bool)

(assert (=> b!938639 m!1156893))

(declare-fun m!1156895 () Bool)

(assert (=> b!938639 m!1156895))

(declare-fun m!1156897 () Bool)

(assert (=> b!938639 m!1156897))

(declare-fun m!1156899 () Bool)

(assert (=> b!938639 m!1156899))

(assert (=> b!938639 m!1156899))

(assert (=> b!938639 m!1156893))

(declare-fun m!1156901 () Bool)

(assert (=> b!938638 m!1156901))

(declare-fun m!1156903 () Bool)

(assert (=> b!938638 m!1156903))

(declare-fun m!1156905 () Bool)

(assert (=> b!938638 m!1156905))

(declare-fun m!1156907 () Bool)

(assert (=> b!938644 m!1156907))

(declare-fun m!1156909 () Bool)

(assert (=> b!938640 m!1156909))

(declare-fun m!1156911 () Bool)

(assert (=> b!938643 m!1156911))

(declare-fun m!1156913 () Bool)

(assert (=> b!938643 m!1156913))

(declare-fun m!1156915 () Bool)

(assert (=> b!938643 m!1156915))

(declare-fun m!1156917 () Bool)

(assert (=> b!938643 m!1156917))

(declare-fun m!1156919 () Bool)

(assert (=> b!938643 m!1156919))

(assert (=> b!938643 m!1156913))

(declare-fun m!1156921 () Bool)

(assert (=> b!938643 m!1156921))

(declare-fun m!1156923 () Bool)

(assert (=> b!938643 m!1156923))

(assert (=> b!938643 m!1156917))

(declare-fun m!1156925 () Bool)

(assert (=> b!938643 m!1156925))

(declare-fun m!1156927 () Bool)

(assert (=> b!938643 m!1156927))

(declare-fun m!1156929 () Bool)

(assert (=> start!83836 m!1156929))

(push 1)

(assert (not b!938640))

(assert (not b!938642))

(assert tp_is_empty!4791)

(assert (not b!938644))

(assert (not start!83836))

(assert (not b!938645))

(assert (not b!938643))

(assert (not b!938641))

(assert (not b!938647))

(assert (not b!938638))

(assert (not b!938639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!938750 () Bool)

(declare-fun res!426337 () Bool)

(declare-fun e!609263 () Bool)

(assert (=> b!938750 (=> (not res!426337) (not e!609263))))

(declare-fun call!58342 () Bool)

(assert (=> b!938750 (= res!426337 call!58342)))

(declare-fun e!609268 () Bool)

(assert (=> b!938750 (= e!609268 e!609263)))

(declare-fun b!938751 () Bool)

(declare-fun e!609264 () Bool)

(declare-fun call!58344 () Bool)

(assert (=> b!938751 (= e!609264 call!58344)))

(declare-fun b!938752 () Bool)

(declare-fun e!609267 () Bool)

(declare-fun call!58343 () Bool)

(assert (=> b!938752 (= e!609267 call!58343)))

(declare-fun c!152706 () Bool)

(declare-fun bm!58337 () Bool)

(declare-fun c!152705 () Bool)

(assert (=> bm!58337 (= call!58344 (validRegex!1043 (ite c!152706 (reg!2903 lt!341862) (ite c!152705 (regOne!5661 lt!341862) (regOne!5660 lt!341862)))))))

(declare-fun b!938753 () Bool)

(assert (=> b!938753 (= e!609263 call!58343)))

(declare-fun bm!58338 () Bool)

(assert (=> bm!58338 (= call!58342 call!58344)))

(declare-fun b!938754 () Bool)

(declare-fun e!609266 () Bool)

(assert (=> b!938754 (= e!609266 e!609264)))

(declare-fun res!426341 () Bool)

(declare-fun nullable!744 (Regex!2574) Bool)

(assert (=> b!938754 (= res!426341 (not (nullable!744 (reg!2903 lt!341862))))))

(assert (=> b!938754 (=> (not res!426341) (not e!609264))))

(declare-fun d!282197 () Bool)

(declare-fun res!426338 () Bool)

(declare-fun e!609262 () Bool)

(assert (=> d!282197 (=> res!426338 e!609262)))

(assert (=> d!282197 (= res!426338 (is-ElementMatch!2574 lt!341862))))

(assert (=> d!282197 (= (validRegex!1043 lt!341862) e!609262)))

(declare-fun b!938755 () Bool)

(declare-fun e!609265 () Bool)

(assert (=> b!938755 (= e!609265 e!609267)))

(declare-fun res!426340 () Bool)

(assert (=> b!938755 (=> (not res!426340) (not e!609267))))

(assert (=> b!938755 (= res!426340 call!58342)))

(declare-fun bm!58339 () Bool)

(assert (=> bm!58339 (= call!58343 (validRegex!1043 (ite c!152705 (regTwo!5661 lt!341862) (regTwo!5660 lt!341862))))))

(declare-fun b!938756 () Bool)

(declare-fun res!426339 () Bool)

(assert (=> b!938756 (=> res!426339 e!609265)))

(assert (=> b!938756 (= res!426339 (not (is-Concat!4407 lt!341862)))))

(assert (=> b!938756 (= e!609268 e!609265)))

(declare-fun b!938757 () Bool)

(assert (=> b!938757 (= e!609262 e!609266)))

(assert (=> b!938757 (= c!152706 (is-Star!2574 lt!341862))))

(declare-fun b!938758 () Bool)

(assert (=> b!938758 (= e!609266 e!609268)))

(assert (=> b!938758 (= c!152705 (is-Union!2574 lt!341862))))

(assert (= (and d!282197 (not res!426338)) b!938757))

(assert (= (and b!938757 c!152706) b!938754))

(assert (= (and b!938757 (not c!152706)) b!938758))

(assert (= (and b!938754 res!426341) b!938751))

(assert (= (and b!938758 c!152705) b!938750))

(assert (= (and b!938758 (not c!152705)) b!938756))

(assert (= (and b!938750 res!426337) b!938753))

(assert (= (and b!938756 (not res!426339)) b!938755))

(assert (= (and b!938755 res!426340) b!938752))

(assert (= (or b!938753 b!938752) bm!58339))

(assert (= (or b!938750 b!938755) bm!58338))

(assert (= (or b!938751 bm!58338) bm!58337))

(declare-fun m!1156977 () Bool)

(assert (=> bm!58337 m!1156977))

(declare-fun m!1156979 () Bool)

(assert (=> b!938754 m!1156979))

(declare-fun m!1156981 () Bool)

(assert (=> bm!58339 m!1156981))

(assert (=> b!938640 d!282197))

(declare-fun d!282199 () Bool)

(declare-fun choose!5797 (Int) Bool)

(assert (=> d!282199 (= (Exists!325 lambda!31416) (choose!5797 lambda!31416))))

(declare-fun bs!238374 () Bool)

(assert (= bs!238374 d!282199))

(declare-fun m!1156983 () Bool)

(assert (=> bs!238374 m!1156983))

(assert (=> b!938639 d!282199))

(declare-fun d!282201 () Bool)

(declare-fun e!609294 () Bool)

(assert (=> d!282201 e!609294))

(declare-fun c!152717 () Bool)

(assert (=> d!282201 (= c!152717 (is-EmptyExpr!2574 lt!341857))))

(declare-fun lt!341896 () Bool)

(declare-fun e!609293 () Bool)

(assert (=> d!282201 (= lt!341896 e!609293)))

(declare-fun c!152715 () Bool)

(assert (=> d!282201 (= c!152715 (isEmpty!6029 s!10566))))

(assert (=> d!282201 (validRegex!1043 lt!341857)))

(assert (=> d!282201 (= (matchR!1112 lt!341857 s!10566) lt!341896)))

(declare-fun b!938796 () Bool)

(declare-fun derivativeStep!553 (Regex!2574 C!5718) Regex!2574)

(declare-fun head!1706 (List!9804) C!5718)

(declare-fun tail!1268 (List!9804) List!9804)

(assert (=> b!938796 (= e!609293 (matchR!1112 (derivativeStep!553 lt!341857 (head!1706 s!10566)) (tail!1268 s!10566)))))

(declare-fun b!938797 () Bool)

(declare-fun e!609295 () Bool)

(assert (=> b!938797 (= e!609295 (not lt!341896))))

(declare-fun b!938798 () Bool)

(declare-fun e!609296 () Bool)

(declare-fun e!609290 () Bool)

(assert (=> b!938798 (= e!609296 e!609290)))

(declare-fun res!426370 () Bool)

(assert (=> b!938798 (=> (not res!426370) (not e!609290))))

(assert (=> b!938798 (= res!426370 (not lt!341896))))

(declare-fun b!938799 () Bool)

(declare-fun res!426368 () Bool)

(declare-fun e!609292 () Bool)

(assert (=> b!938799 (=> (not res!426368) (not e!609292))))

(assert (=> b!938799 (= res!426368 (isEmpty!6029 (tail!1268 s!10566)))))

(declare-fun b!938800 () Bool)

(assert (=> b!938800 (= e!609294 e!609295)))

(declare-fun c!152716 () Bool)

(assert (=> b!938800 (= c!152716 (is-EmptyLang!2574 lt!341857))))

(declare-fun b!938801 () Bool)

(declare-fun res!426367 () Bool)

(declare-fun e!609291 () Bool)

(assert (=> b!938801 (=> res!426367 e!609291)))

(assert (=> b!938801 (= res!426367 (not (isEmpty!6029 (tail!1268 s!10566))))))

(declare-fun b!938802 () Bool)

(assert (=> b!938802 (= e!609291 (not (= (head!1706 s!10566) (c!152695 lt!341857))))))

(declare-fun b!938803 () Bool)

(declare-fun res!426369 () Bool)

(assert (=> b!938803 (=> res!426369 e!609296)))

(assert (=> b!938803 (= res!426369 (not (is-ElementMatch!2574 lt!341857)))))

(assert (=> b!938803 (= e!609295 e!609296)))

(declare-fun bm!58345 () Bool)

(declare-fun call!58350 () Bool)

(assert (=> bm!58345 (= call!58350 (isEmpty!6029 s!10566))))

(declare-fun b!938804 () Bool)

(assert (=> b!938804 (= e!609294 (= lt!341896 call!58350))))

(declare-fun b!938805 () Bool)

(declare-fun res!426365 () Bool)

(assert (=> b!938805 (=> (not res!426365) (not e!609292))))

(assert (=> b!938805 (= res!426365 (not call!58350))))

(declare-fun b!938806 () Bool)

(assert (=> b!938806 (= e!609293 (nullable!744 lt!341857))))

(declare-fun b!938807 () Bool)

(assert (=> b!938807 (= e!609292 (= (head!1706 s!10566) (c!152695 lt!341857)))))

(declare-fun b!938808 () Bool)

(assert (=> b!938808 (= e!609290 e!609291)))

(declare-fun res!426366 () Bool)

(assert (=> b!938808 (=> res!426366 e!609291)))

(assert (=> b!938808 (= res!426366 call!58350)))

(declare-fun b!938809 () Bool)

(declare-fun res!426363 () Bool)

(assert (=> b!938809 (=> res!426363 e!609296)))

(assert (=> b!938809 (= res!426363 e!609292)))

(declare-fun res!426364 () Bool)

(assert (=> b!938809 (=> (not res!426364) (not e!609292))))

(assert (=> b!938809 (= res!426364 lt!341896)))

(assert (= (and d!282201 c!152715) b!938806))

(assert (= (and d!282201 (not c!152715)) b!938796))

(assert (= (and d!282201 c!152717) b!938804))

(assert (= (and d!282201 (not c!152717)) b!938800))

(assert (= (and b!938800 c!152716) b!938797))

(assert (= (and b!938800 (not c!152716)) b!938803))

(assert (= (and b!938803 (not res!426369)) b!938809))

(assert (= (and b!938809 res!426364) b!938805))

(assert (= (and b!938805 res!426365) b!938799))

(assert (= (and b!938799 res!426368) b!938807))

(assert (= (and b!938809 (not res!426363)) b!938798))

(assert (= (and b!938798 res!426370) b!938808))

(assert (= (and b!938808 (not res!426366)) b!938801))

(assert (= (and b!938801 (not res!426367)) b!938802))

(assert (= (or b!938804 b!938805 b!938808) bm!58345))

(declare-fun m!1156991 () Bool)

(assert (=> b!938806 m!1156991))

(declare-fun m!1156993 () Bool)

(assert (=> b!938801 m!1156993))

(assert (=> b!938801 m!1156993))

(declare-fun m!1156995 () Bool)

(assert (=> b!938801 m!1156995))

(declare-fun m!1156997 () Bool)

(assert (=> b!938807 m!1156997))

(assert (=> b!938796 m!1156997))

(assert (=> b!938796 m!1156997))

(declare-fun m!1156999 () Bool)

(assert (=> b!938796 m!1156999))

(assert (=> b!938796 m!1156993))

(assert (=> b!938796 m!1156999))

(assert (=> b!938796 m!1156993))

(declare-fun m!1157001 () Bool)

(assert (=> b!938796 m!1157001))

(assert (=> d!282201 m!1156919))

(assert (=> d!282201 m!1156907))

(assert (=> bm!58345 m!1156919))

(assert (=> b!938802 m!1156997))

(assert (=> b!938799 m!1156993))

(assert (=> b!938799 m!1156993))

(assert (=> b!938799 m!1156995))

(assert (=> b!938639 d!282201))

(declare-fun bs!238375 () Bool)

(declare-fun d!282205 () Bool)

(assert (= bs!238375 (and d!282205 b!938639)))

(declare-fun lambda!31442 () Int)

(assert (=> bs!238375 (= (= (Star!2574 (reg!2903 r!15766)) lt!341854) (= lambda!31442 lambda!31415))))

(assert (=> bs!238375 (not (= lambda!31442 lambda!31416))))

(declare-fun bs!238376 () Bool)

(assert (= bs!238376 (and d!282205 b!938643)))

(assert (=> bs!238376 (= (and (= (reg!2903 r!15766) lt!341862) (= (Star!2574 (reg!2903 r!15766)) lt!341857)) (= lambda!31442 lambda!31417))))

(assert (=> bs!238376 (not (= lambda!31442 lambda!31418))))

(assert (=> d!282205 true))

(assert (=> d!282205 true))

(declare-fun lambda!31444 () Int)

(assert (=> bs!238376 (= (and (= (reg!2903 r!15766) lt!341862) (= (Star!2574 (reg!2903 r!15766)) lt!341857)) (= lambda!31444 lambda!31418))))

(assert (=> bs!238375 (not (= lambda!31444 lambda!31415))))

(assert (=> bs!238376 (not (= lambda!31444 lambda!31417))))

(assert (=> bs!238375 (= (= (Star!2574 (reg!2903 r!15766)) lt!341854) (= lambda!31444 lambda!31416))))

(declare-fun bs!238377 () Bool)

(assert (= bs!238377 d!282205))

(assert (=> bs!238377 (not (= lambda!31444 lambda!31442))))

(assert (=> d!282205 true))

(assert (=> d!282205 true))

(assert (=> d!282205 (= (Exists!325 lambda!31442) (Exists!325 lambda!31444))))

(declare-fun lt!341899 () Unit!14767)

(declare-fun choose!5798 (Regex!2574 List!9804) Unit!14767)

(assert (=> d!282205 (= lt!341899 (choose!5798 (reg!2903 r!15766) s!10566))))

(assert (=> d!282205 (validRegex!1043 (reg!2903 r!15766))))

(assert (=> d!282205 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!69 (reg!2903 r!15766) s!10566) lt!341899)))

(declare-fun m!1157003 () Bool)

(assert (=> bs!238377 m!1157003))

(declare-fun m!1157005 () Bool)

(assert (=> bs!238377 m!1157005))

(declare-fun m!1157007 () Bool)

(assert (=> bs!238377 m!1157007))

(declare-fun m!1157009 () Bool)

(assert (=> bs!238377 m!1157009))

(assert (=> b!938639 d!282205))

(declare-fun d!282207 () Bool)

(declare-fun isEmpty!6031 (Option!2165) Bool)

(assert (=> d!282207 (= (isDefined!1807 (findConcatSeparation!271 (reg!2903 r!15766) lt!341854 Nil!9788 s!10566 s!10566)) (not (isEmpty!6031 (findConcatSeparation!271 (reg!2903 r!15766) lt!341854 Nil!9788 s!10566 s!10566))))))

(declare-fun bs!238378 () Bool)

(assert (= bs!238378 d!282207))

(assert (=> bs!238378 m!1156893))

(declare-fun m!1157011 () Bool)

(assert (=> bs!238378 m!1157011))

(assert (=> b!938639 d!282207))

(declare-fun b!938885 () Bool)

(declare-fun e!609338 () Regex!2574)

(declare-fun call!58368 () Regex!2574)

(declare-fun call!58371 () Regex!2574)

(assert (=> b!938885 (= e!609338 (Union!2574 call!58368 call!58371))))

(declare-fun d!282209 () Bool)

(declare-fun e!609343 () Bool)

(assert (=> d!282209 e!609343))

(declare-fun res!426402 () Bool)

(assert (=> d!282209 (=> (not res!426402) (not e!609343))))

(declare-fun lt!341902 () Regex!2574)

(assert (=> d!282209 (= res!426402 (validRegex!1043 lt!341902))))

(declare-fun e!609340 () Regex!2574)

(assert (=> d!282209 (= lt!341902 e!609340)))

(declare-fun c!152742 () Bool)

(assert (=> d!282209 (= c!152742 (and (is-Concat!4407 (reg!2903 r!15766)) (is-EmptyExpr!2574 (regOne!5660 (reg!2903 r!15766)))))))

(assert (=> d!282209 (validRegex!1043 (reg!2903 r!15766))))

(assert (=> d!282209 (= (removeUselessConcat!243 (reg!2903 r!15766)) lt!341902)))

(declare-fun b!938886 () Bool)

(declare-fun e!609341 () Regex!2574)

(assert (=> b!938886 (= e!609341 e!609338)))

(declare-fun c!152740 () Bool)

(assert (=> b!938886 (= c!152740 (is-Union!2574 (reg!2903 r!15766)))))

(declare-fun b!938887 () Bool)

(assert (=> b!938887 (= e!609343 (= (nullable!744 lt!341902) (nullable!744 (reg!2903 r!15766))))))

(declare-fun b!938888 () Bool)

(declare-fun e!609342 () Regex!2574)

(assert (=> b!938888 (= e!609342 (Star!2574 call!58371))))

(declare-fun b!938889 () Bool)

(assert (=> b!938889 (= e!609342 (reg!2903 r!15766))))

(declare-fun b!938890 () Bool)

(declare-fun call!58369 () Regex!2574)

(assert (=> b!938890 (= e!609340 call!58369)))

(declare-fun bm!58362 () Bool)

(declare-fun call!58370 () Regex!2574)

(assert (=> bm!58362 (= call!58370 call!58369)))

(declare-fun b!938891 () Bool)

(declare-fun c!152743 () Bool)

(assert (=> b!938891 (= c!152743 (is-Concat!4407 (reg!2903 r!15766)))))

(declare-fun e!609339 () Regex!2574)

(assert (=> b!938891 (= e!609339 e!609341)))

(declare-fun b!938892 () Bool)

(assert (=> b!938892 (= e!609340 e!609339)))

(declare-fun c!152744 () Bool)

(assert (=> b!938892 (= c!152744 (and (is-Concat!4407 (reg!2903 r!15766)) (is-EmptyExpr!2574 (regTwo!5660 (reg!2903 r!15766)))))))

(declare-fun b!938893 () Bool)

(declare-fun c!152741 () Bool)

(assert (=> b!938893 (= c!152741 (is-Star!2574 (reg!2903 r!15766)))))

(assert (=> b!938893 (= e!609338 e!609342)))

(declare-fun b!938894 () Bool)

(declare-fun call!58367 () Regex!2574)

(assert (=> b!938894 (= e!609341 (Concat!4407 call!58368 call!58367))))

(declare-fun bm!58363 () Bool)

(assert (=> bm!58363 (= call!58367 (removeUselessConcat!243 (ite c!152743 (regTwo!5660 (reg!2903 r!15766)) (ite c!152740 (regTwo!5661 (reg!2903 r!15766)) (reg!2903 (reg!2903 r!15766))))))))

(declare-fun b!938895 () Bool)

(assert (=> b!938895 (= e!609339 call!58370)))

(declare-fun bm!58364 () Bool)

(assert (=> bm!58364 (= call!58368 call!58370)))

(declare-fun bm!58365 () Bool)

(assert (=> bm!58365 (= call!58371 call!58367)))

(declare-fun bm!58366 () Bool)

(assert (=> bm!58366 (= call!58369 (removeUselessConcat!243 (ite c!152742 (regTwo!5660 (reg!2903 r!15766)) (ite (or c!152744 c!152743) (regOne!5660 (reg!2903 r!15766)) (regOne!5661 (reg!2903 r!15766))))))))

(assert (= (and d!282209 c!152742) b!938890))

(assert (= (and d!282209 (not c!152742)) b!938892))

(assert (= (and b!938892 c!152744) b!938895))

(assert (= (and b!938892 (not c!152744)) b!938891))

(assert (= (and b!938891 c!152743) b!938894))

(assert (= (and b!938891 (not c!152743)) b!938886))

(assert (= (and b!938886 c!152740) b!938885))

(assert (= (and b!938886 (not c!152740)) b!938893))

(assert (= (and b!938893 c!152741) b!938888))

(assert (= (and b!938893 (not c!152741)) b!938889))

(assert (= (or b!938885 b!938888) bm!58365))

(assert (= (or b!938894 bm!58365) bm!58363))

(assert (= (or b!938894 b!938885) bm!58364))

(assert (= (or b!938895 bm!58364) bm!58362))

(assert (= (or b!938890 bm!58362) bm!58366))

(assert (= (and d!282209 res!426402) b!938887))

(declare-fun m!1157013 () Bool)

(assert (=> d!282209 m!1157013))

(assert (=> d!282209 m!1157009))

(declare-fun m!1157015 () Bool)

(assert (=> b!938887 m!1157015))

(declare-fun m!1157017 () Bool)

(assert (=> b!938887 m!1157017))

(declare-fun m!1157019 () Bool)

(assert (=> bm!58363 m!1157019))

(declare-fun m!1157021 () Bool)

(assert (=> bm!58366 m!1157021))

(assert (=> b!938639 d!282209))

(declare-fun b!938914 () Bool)

(declare-fun e!609358 () Bool)

(assert (=> b!938914 (= e!609358 (matchR!1112 lt!341854 s!10566))))

(declare-fun b!938915 () Bool)

(declare-fun e!609357 () Bool)

(declare-fun lt!341911 () Option!2165)

(declare-fun ++!2596 (List!9804 List!9804) List!9804)

(declare-fun get!3243 (Option!2165) tuple2!11046)

(assert (=> b!938915 (= e!609357 (= (++!2596 (_1!6349 (get!3243 lt!341911)) (_2!6349 (get!3243 lt!341911))) s!10566))))

(declare-fun b!938916 () Bool)

(declare-fun lt!341912 () Unit!14767)

(declare-fun lt!341913 () Unit!14767)

(assert (=> b!938916 (= lt!341912 lt!341913)))

(assert (=> b!938916 (= (++!2596 (++!2596 Nil!9788 (Cons!9788 (h!15189 s!10566) Nil!9788)) (t!100850 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!209 (List!9804 C!5718 List!9804 List!9804) Unit!14767)

(assert (=> b!938916 (= lt!341913 (lemmaMoveElementToOtherListKeepsConcatEq!209 Nil!9788 (h!15189 s!10566) (t!100850 s!10566) s!10566))))

(declare-fun e!609355 () Option!2165)

(assert (=> b!938916 (= e!609355 (findConcatSeparation!271 (reg!2903 r!15766) lt!341854 (++!2596 Nil!9788 (Cons!9788 (h!15189 s!10566) Nil!9788)) (t!100850 s!10566) s!10566))))

(declare-fun b!938917 () Bool)

(declare-fun e!609354 () Option!2165)

(assert (=> b!938917 (= e!609354 e!609355)))

(declare-fun c!152749 () Bool)

(assert (=> b!938917 (= c!152749 (is-Nil!9788 s!10566))))

(declare-fun b!938918 () Bool)

(assert (=> b!938918 (= e!609354 (Some!2164 (tuple2!11047 Nil!9788 s!10566)))))

(declare-fun d!282211 () Bool)

(declare-fun e!609356 () Bool)

(assert (=> d!282211 e!609356))

(declare-fun res!426417 () Bool)

(assert (=> d!282211 (=> res!426417 e!609356)))

(assert (=> d!282211 (= res!426417 e!609357)))

(declare-fun res!426414 () Bool)

(assert (=> d!282211 (=> (not res!426414) (not e!609357))))

(assert (=> d!282211 (= res!426414 (isDefined!1807 lt!341911))))

(assert (=> d!282211 (= lt!341911 e!609354)))

(declare-fun c!152750 () Bool)

(assert (=> d!282211 (= c!152750 e!609358)))

(declare-fun res!426413 () Bool)

(assert (=> d!282211 (=> (not res!426413) (not e!609358))))

(assert (=> d!282211 (= res!426413 (matchR!1112 (reg!2903 r!15766) Nil!9788))))

(assert (=> d!282211 (validRegex!1043 (reg!2903 r!15766))))

(assert (=> d!282211 (= (findConcatSeparation!271 (reg!2903 r!15766) lt!341854 Nil!9788 s!10566 s!10566) lt!341911)))

(declare-fun b!938919 () Bool)

(assert (=> b!938919 (= e!609356 (not (isDefined!1807 lt!341911)))))

(declare-fun b!938920 () Bool)

(declare-fun res!426416 () Bool)

(assert (=> b!938920 (=> (not res!426416) (not e!609357))))

(assert (=> b!938920 (= res!426416 (matchR!1112 (reg!2903 r!15766) (_1!6349 (get!3243 lt!341911))))))

(declare-fun b!938921 () Bool)

(declare-fun res!426415 () Bool)

(assert (=> b!938921 (=> (not res!426415) (not e!609357))))

(assert (=> b!938921 (= res!426415 (matchR!1112 lt!341854 (_2!6349 (get!3243 lt!341911))))))

(declare-fun b!938922 () Bool)

(assert (=> b!938922 (= e!609355 None!2164)))

(assert (= (and d!282211 res!426413) b!938914))

(assert (= (and d!282211 c!152750) b!938918))

(assert (= (and d!282211 (not c!152750)) b!938917))

(assert (= (and b!938917 c!152749) b!938922))

(assert (= (and b!938917 (not c!152749)) b!938916))

(assert (= (and d!282211 res!426414) b!938920))

(assert (= (and b!938920 res!426416) b!938921))

(assert (= (and b!938921 res!426415) b!938915))

(assert (= (and d!282211 (not res!426417)) b!938919))

(declare-fun m!1157031 () Bool)

(assert (=> b!938919 m!1157031))

(declare-fun m!1157033 () Bool)

(assert (=> b!938916 m!1157033))

(assert (=> b!938916 m!1157033))

(declare-fun m!1157035 () Bool)

(assert (=> b!938916 m!1157035))

(declare-fun m!1157037 () Bool)

(assert (=> b!938916 m!1157037))

(assert (=> b!938916 m!1157033))

(declare-fun m!1157039 () Bool)

(assert (=> b!938916 m!1157039))

(declare-fun m!1157041 () Bool)

(assert (=> b!938920 m!1157041))

(declare-fun m!1157043 () Bool)

(assert (=> b!938920 m!1157043))

(declare-fun m!1157045 () Bool)

(assert (=> b!938914 m!1157045))

(assert (=> d!282211 m!1157031))

(declare-fun m!1157047 () Bool)

(assert (=> d!282211 m!1157047))

(assert (=> d!282211 m!1157009))

(assert (=> b!938921 m!1157041))

(declare-fun m!1157049 () Bool)

(assert (=> b!938921 m!1157049))

(assert (=> b!938915 m!1157041))

(declare-fun m!1157051 () Bool)

(assert (=> b!938915 m!1157051))

(assert (=> b!938639 d!282211))

(declare-fun d!282217 () Bool)

(assert (=> d!282217 (= (Exists!325 lambda!31415) (choose!5797 lambda!31415))))

(declare-fun bs!238385 () Bool)

(assert (= bs!238385 d!282217))

(declare-fun m!1157053 () Bool)

(assert (=> bs!238385 m!1157053))

(assert (=> b!938639 d!282217))

(declare-fun bs!238386 () Bool)

(declare-fun d!282219 () Bool)

(assert (= bs!238386 (and d!282219 b!938643)))

(declare-fun lambda!31449 () Int)

(assert (=> bs!238386 (not (= lambda!31449 lambda!31418))))

(assert (=> bs!238386 (= (and (= (reg!2903 r!15766) lt!341862) (= lt!341854 lt!341857)) (= lambda!31449 lambda!31417))))

(declare-fun bs!238387 () Bool)

(assert (= bs!238387 (and d!282219 b!938639)))

(assert (=> bs!238387 (= lambda!31449 lambda!31415)))

(declare-fun bs!238388 () Bool)

(assert (= bs!238388 (and d!282219 d!282205)))

(assert (=> bs!238388 (not (= lambda!31449 lambda!31444))))

(assert (=> bs!238387 (not (= lambda!31449 lambda!31416))))

(assert (=> bs!238388 (= (= lt!341854 (Star!2574 (reg!2903 r!15766))) (= lambda!31449 lambda!31442))))

(assert (=> d!282219 true))

(assert (=> d!282219 true))

(assert (=> d!282219 true))

(assert (=> d!282219 (= (isDefined!1807 (findConcatSeparation!271 (reg!2903 r!15766) lt!341854 Nil!9788 s!10566 s!10566)) (Exists!325 lambda!31449))))

(declare-fun lt!341917 () Unit!14767)

(declare-fun choose!5799 (Regex!2574 Regex!2574 List!9804) Unit!14767)

(assert (=> d!282219 (= lt!341917 (choose!5799 (reg!2903 r!15766) lt!341854 s!10566))))

(assert (=> d!282219 (validRegex!1043 (reg!2903 r!15766))))

(assert (=> d!282219 (= (lemmaFindConcatSeparationEquivalentToExists!271 (reg!2903 r!15766) lt!341854 s!10566) lt!341917)))

(declare-fun bs!238389 () Bool)

(assert (= bs!238389 d!282219))

(declare-fun m!1157055 () Bool)

(assert (=> bs!238389 m!1157055))

(assert (=> bs!238389 m!1156893))

(assert (=> bs!238389 m!1156893))

(assert (=> bs!238389 m!1156895))

(assert (=> bs!238389 m!1157009))

(declare-fun m!1157057 () Bool)

(assert (=> bs!238389 m!1157057))

(assert (=> b!938639 d!282219))

(declare-fun b!938927 () Bool)

(declare-fun res!426422 () Bool)

(declare-fun e!609362 () Bool)

(assert (=> b!938927 (=> (not res!426422) (not e!609362))))

(declare-fun call!58372 () Bool)

(assert (=> b!938927 (= res!426422 call!58372)))

(declare-fun e!609367 () Bool)

(assert (=> b!938927 (= e!609367 e!609362)))

(declare-fun b!938928 () Bool)

(declare-fun e!609363 () Bool)

(declare-fun call!58374 () Bool)

(assert (=> b!938928 (= e!609363 call!58374)))

(declare-fun b!938929 () Bool)

(declare-fun e!609366 () Bool)

(declare-fun call!58373 () Bool)

(assert (=> b!938929 (= e!609366 call!58373)))

(declare-fun c!152751 () Bool)

(declare-fun c!152752 () Bool)

(declare-fun bm!58367 () Bool)

(assert (=> bm!58367 (= call!58374 (validRegex!1043 (ite c!152752 (reg!2903 r!15766) (ite c!152751 (regOne!5661 r!15766) (regOne!5660 r!15766)))))))

(declare-fun b!938930 () Bool)

(assert (=> b!938930 (= e!609362 call!58373)))

(declare-fun bm!58368 () Bool)

(assert (=> bm!58368 (= call!58372 call!58374)))

(declare-fun b!938931 () Bool)

(declare-fun e!609365 () Bool)

(assert (=> b!938931 (= e!609365 e!609363)))

(declare-fun res!426426 () Bool)

(assert (=> b!938931 (= res!426426 (not (nullable!744 (reg!2903 r!15766))))))

(assert (=> b!938931 (=> (not res!426426) (not e!609363))))

(declare-fun d!282221 () Bool)

(declare-fun res!426423 () Bool)

(declare-fun e!609361 () Bool)

(assert (=> d!282221 (=> res!426423 e!609361)))

(assert (=> d!282221 (= res!426423 (is-ElementMatch!2574 r!15766))))

(assert (=> d!282221 (= (validRegex!1043 r!15766) e!609361)))

(declare-fun b!938932 () Bool)

(declare-fun e!609364 () Bool)

(assert (=> b!938932 (= e!609364 e!609366)))

(declare-fun res!426425 () Bool)

(assert (=> b!938932 (=> (not res!426425) (not e!609366))))

(assert (=> b!938932 (= res!426425 call!58372)))

(declare-fun bm!58369 () Bool)

(assert (=> bm!58369 (= call!58373 (validRegex!1043 (ite c!152751 (regTwo!5661 r!15766) (regTwo!5660 r!15766))))))

(declare-fun b!938933 () Bool)

(declare-fun res!426424 () Bool)

(assert (=> b!938933 (=> res!426424 e!609364)))

(assert (=> b!938933 (= res!426424 (not (is-Concat!4407 r!15766)))))

(assert (=> b!938933 (= e!609367 e!609364)))

(declare-fun b!938934 () Bool)

(assert (=> b!938934 (= e!609361 e!609365)))

(assert (=> b!938934 (= c!152752 (is-Star!2574 r!15766))))

(declare-fun b!938935 () Bool)

(assert (=> b!938935 (= e!609365 e!609367)))

(assert (=> b!938935 (= c!152751 (is-Union!2574 r!15766))))

(assert (= (and d!282221 (not res!426423)) b!938934))

(assert (= (and b!938934 c!152752) b!938931))

(assert (= (and b!938934 (not c!152752)) b!938935))

(assert (= (and b!938931 res!426426) b!938928))

(assert (= (and b!938935 c!152751) b!938927))

(assert (= (and b!938935 (not c!152751)) b!938933))

(assert (= (and b!938927 res!426422) b!938930))

(assert (= (and b!938933 (not res!426424)) b!938932))

(assert (= (and b!938932 res!426425) b!938929))

(assert (= (or b!938930 b!938929) bm!58369))

(assert (= (or b!938927 b!938932) bm!58368))

(assert (= (or b!938928 bm!58368) bm!58367))

(declare-fun m!1157059 () Bool)

(assert (=> bm!58367 m!1157059))

(assert (=> b!938931 m!1157017))

(declare-fun m!1157061 () Bool)

(assert (=> bm!58369 m!1157061))

(assert (=> start!83836 d!282221))

(declare-fun b!938936 () Bool)

(declare-fun res!426427 () Bool)

(declare-fun e!609369 () Bool)

(assert (=> b!938936 (=> (not res!426427) (not e!609369))))

(declare-fun call!58375 () Bool)

(assert (=> b!938936 (= res!426427 call!58375)))

(declare-fun e!609374 () Bool)

(assert (=> b!938936 (= e!609374 e!609369)))

(declare-fun b!938937 () Bool)

(declare-fun e!609370 () Bool)

(declare-fun call!58377 () Bool)

(assert (=> b!938937 (= e!609370 call!58377)))

(declare-fun b!938938 () Bool)

(declare-fun e!609373 () Bool)

(declare-fun call!58376 () Bool)

(assert (=> b!938938 (= e!609373 call!58376)))

(declare-fun c!152754 () Bool)

(declare-fun bm!58370 () Bool)

(declare-fun c!152753 () Bool)

(assert (=> bm!58370 (= call!58377 (validRegex!1043 (ite c!152754 (reg!2903 lt!341857) (ite c!152753 (regOne!5661 lt!341857) (regOne!5660 lt!341857)))))))

(declare-fun b!938939 () Bool)

(assert (=> b!938939 (= e!609369 call!58376)))

(declare-fun bm!58371 () Bool)

(assert (=> bm!58371 (= call!58375 call!58377)))

(declare-fun b!938940 () Bool)

(declare-fun e!609372 () Bool)

(assert (=> b!938940 (= e!609372 e!609370)))

(declare-fun res!426431 () Bool)

(assert (=> b!938940 (= res!426431 (not (nullable!744 (reg!2903 lt!341857))))))

(assert (=> b!938940 (=> (not res!426431) (not e!609370))))

(declare-fun d!282223 () Bool)

(declare-fun res!426428 () Bool)

(declare-fun e!609368 () Bool)

(assert (=> d!282223 (=> res!426428 e!609368)))

(assert (=> d!282223 (= res!426428 (is-ElementMatch!2574 lt!341857))))

(assert (=> d!282223 (= (validRegex!1043 lt!341857) e!609368)))

(declare-fun b!938941 () Bool)

(declare-fun e!609371 () Bool)

(assert (=> b!938941 (= e!609371 e!609373)))

(declare-fun res!426430 () Bool)

(assert (=> b!938941 (=> (not res!426430) (not e!609373))))

(assert (=> b!938941 (= res!426430 call!58375)))

(declare-fun bm!58372 () Bool)

(assert (=> bm!58372 (= call!58376 (validRegex!1043 (ite c!152753 (regTwo!5661 lt!341857) (regTwo!5660 lt!341857))))))

(declare-fun b!938942 () Bool)

(declare-fun res!426429 () Bool)

(assert (=> b!938942 (=> res!426429 e!609371)))

(assert (=> b!938942 (= res!426429 (not (is-Concat!4407 lt!341857)))))

(assert (=> b!938942 (= e!609374 e!609371)))

(declare-fun b!938943 () Bool)

(assert (=> b!938943 (= e!609368 e!609372)))

(assert (=> b!938943 (= c!152754 (is-Star!2574 lt!341857))))

(declare-fun b!938944 () Bool)

(assert (=> b!938944 (= e!609372 e!609374)))

(assert (=> b!938944 (= c!152753 (is-Union!2574 lt!341857))))

(assert (= (and d!282223 (not res!426428)) b!938943))

(assert (= (and b!938943 c!152754) b!938940))

(assert (= (and b!938943 (not c!152754)) b!938944))

(assert (= (and b!938940 res!426431) b!938937))

(assert (= (and b!938944 c!152753) b!938936))

(assert (= (and b!938944 (not c!152753)) b!938942))

(assert (= (and b!938936 res!426427) b!938939))

(assert (= (and b!938942 (not res!426429)) b!938941))

(assert (= (and b!938941 res!426430) b!938938))

(assert (= (or b!938939 b!938938) bm!58372))

(assert (= (or b!938936 b!938941) bm!58371))

(assert (= (or b!938937 bm!58371) bm!58370))

(declare-fun m!1157063 () Bool)

(assert (=> bm!58370 m!1157063))

(declare-fun m!1157065 () Bool)

(assert (=> b!938940 m!1157065))

(declare-fun m!1157067 () Bool)

(assert (=> bm!58372 m!1157067))

(assert (=> b!938644 d!282223))

(declare-fun bs!238390 () Bool)

(declare-fun d!282225 () Bool)

(assert (= bs!238390 (and d!282225 b!938643)))

(declare-fun lambda!31450 () Int)

(assert (=> bs!238390 (not (= lambda!31450 lambda!31418))))

(assert (=> bs!238390 (= lambda!31450 lambda!31417)))

(declare-fun bs!238391 () Bool)

(assert (= bs!238391 (and d!282225 d!282219)))

(assert (=> bs!238391 (= (and (= lt!341862 (reg!2903 r!15766)) (= lt!341857 lt!341854)) (= lambda!31450 lambda!31449))))

(declare-fun bs!238392 () Bool)

(assert (= bs!238392 (and d!282225 b!938639)))

(assert (=> bs!238392 (= (and (= lt!341862 (reg!2903 r!15766)) (= lt!341857 lt!341854)) (= lambda!31450 lambda!31415))))

(declare-fun bs!238393 () Bool)

(assert (= bs!238393 (and d!282225 d!282205)))

(assert (=> bs!238393 (not (= lambda!31450 lambda!31444))))

(assert (=> bs!238392 (not (= lambda!31450 lambda!31416))))

(assert (=> bs!238393 (= (and (= lt!341862 (reg!2903 r!15766)) (= lt!341857 (Star!2574 (reg!2903 r!15766)))) (= lambda!31450 lambda!31442))))

(assert (=> d!282225 true))

(assert (=> d!282225 true))

(assert (=> d!282225 true))

(assert (=> d!282225 (= (isDefined!1807 (findConcatSeparation!271 lt!341862 lt!341857 Nil!9788 s!10566 s!10566)) (Exists!325 lambda!31450))))

(declare-fun lt!341918 () Unit!14767)

(assert (=> d!282225 (= lt!341918 (choose!5799 lt!341862 lt!341857 s!10566))))

(assert (=> d!282225 (validRegex!1043 lt!341862)))

(assert (=> d!282225 (= (lemmaFindConcatSeparationEquivalentToExists!271 lt!341862 lt!341857 s!10566) lt!341918)))

(declare-fun bs!238394 () Bool)

(assert (= bs!238394 d!282225))

(declare-fun m!1157069 () Bool)

(assert (=> bs!238394 m!1157069))

(assert (=> bs!238394 m!1156917))

(assert (=> bs!238394 m!1156917))

(assert (=> bs!238394 m!1156925))

(assert (=> bs!238394 m!1156909))

(declare-fun m!1157071 () Bool)

(assert (=> bs!238394 m!1157071))

(assert (=> b!938643 d!282225))

(declare-fun d!282227 () Bool)

(assert (=> d!282227 (= (isDefined!1807 (findConcatSeparation!271 lt!341862 lt!341857 Nil!9788 s!10566 s!10566)) (not (isEmpty!6031 (findConcatSeparation!271 lt!341862 lt!341857 Nil!9788 s!10566 s!10566))))))

(declare-fun bs!238395 () Bool)

(assert (= bs!238395 d!282227))

(assert (=> bs!238395 m!1156917))

(declare-fun m!1157073 () Bool)

(assert (=> bs!238395 m!1157073))

(assert (=> b!938643 d!282227))

(declare-fun bs!238400 () Bool)

(declare-fun b!938996 () Bool)

(assert (= bs!238400 (and b!938996 b!938643)))

(declare-fun lambda!31460 () Int)

(assert (=> bs!238400 (= (= (reg!2903 lt!341857) lt!341862) (= lambda!31460 lambda!31418))))

(assert (=> bs!238400 (not (= lambda!31460 lambda!31417))))

(declare-fun bs!238401 () Bool)

(assert (= bs!238401 (and b!938996 d!282225)))

(assert (=> bs!238401 (not (= lambda!31460 lambda!31450))))

(declare-fun bs!238402 () Bool)

(assert (= bs!238402 (and b!938996 d!282219)))

(assert (=> bs!238402 (not (= lambda!31460 lambda!31449))))

(declare-fun bs!238403 () Bool)

(assert (= bs!238403 (and b!938996 b!938639)))

(assert (=> bs!238403 (not (= lambda!31460 lambda!31415))))

(declare-fun bs!238404 () Bool)

(assert (= bs!238404 (and b!938996 d!282205)))

(assert (=> bs!238404 (= (and (= (reg!2903 lt!341857) (reg!2903 r!15766)) (= lt!341857 (Star!2574 (reg!2903 r!15766)))) (= lambda!31460 lambda!31444))))

(assert (=> bs!238403 (= (and (= (reg!2903 lt!341857) (reg!2903 r!15766)) (= lt!341857 lt!341854)) (= lambda!31460 lambda!31416))))

(assert (=> bs!238404 (not (= lambda!31460 lambda!31442))))

(assert (=> b!938996 true))

(assert (=> b!938996 true))

(declare-fun bs!238405 () Bool)

(declare-fun b!938997 () Bool)

(assert (= bs!238405 (and b!938997 b!938643)))

(declare-fun lambda!31462 () Int)

(assert (=> bs!238405 (not (= lambda!31462 lambda!31418))))

(declare-fun bs!238406 () Bool)

(assert (= bs!238406 (and b!938997 b!938996)))

(assert (=> bs!238406 (not (= lambda!31462 lambda!31460))))

(assert (=> bs!238405 (not (= lambda!31462 lambda!31417))))

(declare-fun bs!238407 () Bool)

(assert (= bs!238407 (and b!938997 d!282225)))

(assert (=> bs!238407 (not (= lambda!31462 lambda!31450))))

(declare-fun bs!238408 () Bool)

(assert (= bs!238408 (and b!938997 d!282219)))

(assert (=> bs!238408 (not (= lambda!31462 lambda!31449))))

(declare-fun bs!238409 () Bool)

(assert (= bs!238409 (and b!938997 b!938639)))

(assert (=> bs!238409 (not (= lambda!31462 lambda!31415))))

(declare-fun bs!238410 () Bool)

(assert (= bs!238410 (and b!938997 d!282205)))

(assert (=> bs!238410 (not (= lambda!31462 lambda!31444))))

(assert (=> bs!238409 (not (= lambda!31462 lambda!31416))))

(assert (=> bs!238410 (not (= lambda!31462 lambda!31442))))

(assert (=> b!938997 true))

(assert (=> b!938997 true))

(declare-fun b!938987 () Bool)

(declare-fun e!609401 () Bool)

(declare-fun e!609400 () Bool)

(assert (=> b!938987 (= e!609401 e!609400)))

(declare-fun res!426460 () Bool)

(assert (=> b!938987 (= res!426460 (matchRSpec!375 (regOne!5661 lt!341857) s!10566))))

(assert (=> b!938987 (=> res!426460 e!609400)))

(declare-fun b!938988 () Bool)

(declare-fun e!609397 () Bool)

(declare-fun e!609403 () Bool)

(assert (=> b!938988 (= e!609397 e!609403)))

(declare-fun res!426458 () Bool)

(assert (=> b!938988 (= res!426458 (not (is-EmptyLang!2574 lt!341857)))))

(assert (=> b!938988 (=> (not res!426458) (not e!609403))))

(declare-fun b!938989 () Bool)

(declare-fun c!152764 () Bool)

(assert (=> b!938989 (= c!152764 (is-ElementMatch!2574 lt!341857))))

(declare-fun e!609399 () Bool)

(assert (=> b!938989 (= e!609403 e!609399)))

(declare-fun b!938990 () Bool)

(declare-fun res!426459 () Bool)

(declare-fun e!609398 () Bool)

(assert (=> b!938990 (=> res!426459 e!609398)))

(declare-fun call!58382 () Bool)

(assert (=> b!938990 (= res!426459 call!58382)))

(declare-fun e!609402 () Bool)

(assert (=> b!938990 (= e!609402 e!609398)))

(declare-fun b!938991 () Bool)

(assert (=> b!938991 (= e!609397 call!58382)))

(declare-fun call!58383 () Bool)

(declare-fun bm!58377 () Bool)

(declare-fun c!152765 () Bool)

(assert (=> bm!58377 (= call!58383 (Exists!325 (ite c!152765 lambda!31460 lambda!31462)))))

(declare-fun b!938992 () Bool)

(assert (=> b!938992 (= e!609399 (= s!10566 (Cons!9788 (c!152695 lt!341857) Nil!9788)))))

(declare-fun b!938994 () Bool)

(assert (=> b!938994 (= e!609400 (matchRSpec!375 (regTwo!5661 lt!341857) s!10566))))

(declare-fun bm!58378 () Bool)

(assert (=> bm!58378 (= call!58382 (isEmpty!6029 s!10566))))

(declare-fun b!938995 () Bool)

(assert (=> b!938995 (= e!609401 e!609402)))

(assert (=> b!938995 (= c!152765 (is-Star!2574 lt!341857))))

(assert (=> b!938996 (= e!609398 call!58383)))

(assert (=> b!938997 (= e!609402 call!58383)))

(declare-fun b!938993 () Bool)

(declare-fun c!152766 () Bool)

(assert (=> b!938993 (= c!152766 (is-Union!2574 lt!341857))))

(assert (=> b!938993 (= e!609399 e!609401)))

(declare-fun d!282229 () Bool)

(declare-fun c!152763 () Bool)

(assert (=> d!282229 (= c!152763 (is-EmptyExpr!2574 lt!341857))))

(assert (=> d!282229 (= (matchRSpec!375 lt!341857 s!10566) e!609397)))

(assert (= (and d!282229 c!152763) b!938991))

(assert (= (and d!282229 (not c!152763)) b!938988))

(assert (= (and b!938988 res!426458) b!938989))

(assert (= (and b!938989 c!152764) b!938992))

(assert (= (and b!938989 (not c!152764)) b!938993))

(assert (= (and b!938993 c!152766) b!938987))

(assert (= (and b!938993 (not c!152766)) b!938995))

(assert (= (and b!938987 (not res!426460)) b!938994))

(assert (= (and b!938995 c!152765) b!938990))

(assert (= (and b!938995 (not c!152765)) b!938997))

(assert (= (and b!938990 (not res!426459)) b!938996))

(assert (= (or b!938996 b!938997) bm!58377))

(assert (= (or b!938991 b!938990) bm!58378))

(declare-fun m!1157075 () Bool)

(assert (=> b!938987 m!1157075))

(declare-fun m!1157077 () Bool)

(assert (=> bm!58377 m!1157077))

(declare-fun m!1157079 () Bool)

(assert (=> b!938994 m!1157079))

(assert (=> bm!58378 m!1156919))

(assert (=> b!938643 d!282229))

(declare-fun d!282231 () Bool)

(assert (=> d!282231 (= (Exists!325 lambda!31417) (choose!5797 lambda!31417))))

(declare-fun bs!238412 () Bool)

(assert (= bs!238412 d!282231))

(declare-fun m!1157081 () Bool)

(assert (=> bs!238412 m!1157081))

(assert (=> b!938643 d!282231))

(declare-fun b!938998 () Bool)

(declare-fun e!609408 () Bool)

(assert (=> b!938998 (= e!609408 (matchR!1112 lt!341857 s!10566))))

(declare-fun b!938999 () Bool)

(declare-fun e!609407 () Bool)

(declare-fun lt!341922 () Option!2165)

(assert (=> b!938999 (= e!609407 (= (++!2596 (_1!6349 (get!3243 lt!341922)) (_2!6349 (get!3243 lt!341922))) s!10566))))

(declare-fun b!939000 () Bool)

(declare-fun lt!341923 () Unit!14767)

(declare-fun lt!341924 () Unit!14767)

(assert (=> b!939000 (= lt!341923 lt!341924)))

(assert (=> b!939000 (= (++!2596 (++!2596 Nil!9788 (Cons!9788 (h!15189 s!10566) Nil!9788)) (t!100850 s!10566)) s!10566)))

(assert (=> b!939000 (= lt!341924 (lemmaMoveElementToOtherListKeepsConcatEq!209 Nil!9788 (h!15189 s!10566) (t!100850 s!10566) s!10566))))

(declare-fun e!609405 () Option!2165)

(assert (=> b!939000 (= e!609405 (findConcatSeparation!271 lt!341862 lt!341857 (++!2596 Nil!9788 (Cons!9788 (h!15189 s!10566) Nil!9788)) (t!100850 s!10566) s!10566))))

(declare-fun b!939001 () Bool)

(declare-fun e!609404 () Option!2165)

(assert (=> b!939001 (= e!609404 e!609405)))

(declare-fun c!152767 () Bool)

(assert (=> b!939001 (= c!152767 (is-Nil!9788 s!10566))))

(declare-fun b!939002 () Bool)

(assert (=> b!939002 (= e!609404 (Some!2164 (tuple2!11047 Nil!9788 s!10566)))))

(declare-fun d!282233 () Bool)

(declare-fun e!609406 () Bool)

(assert (=> d!282233 e!609406))

(declare-fun res!426465 () Bool)

(assert (=> d!282233 (=> res!426465 e!609406)))

(assert (=> d!282233 (= res!426465 e!609407)))

(declare-fun res!426462 () Bool)

(assert (=> d!282233 (=> (not res!426462) (not e!609407))))

(assert (=> d!282233 (= res!426462 (isDefined!1807 lt!341922))))

(assert (=> d!282233 (= lt!341922 e!609404)))

(declare-fun c!152768 () Bool)

(assert (=> d!282233 (= c!152768 e!609408)))

(declare-fun res!426461 () Bool)

(assert (=> d!282233 (=> (not res!426461) (not e!609408))))

(assert (=> d!282233 (= res!426461 (matchR!1112 lt!341862 Nil!9788))))

(assert (=> d!282233 (validRegex!1043 lt!341862)))

(assert (=> d!282233 (= (findConcatSeparation!271 lt!341862 lt!341857 Nil!9788 s!10566 s!10566) lt!341922)))

(declare-fun b!939003 () Bool)

(assert (=> b!939003 (= e!609406 (not (isDefined!1807 lt!341922)))))

(declare-fun b!939004 () Bool)

(declare-fun res!426464 () Bool)

(assert (=> b!939004 (=> (not res!426464) (not e!609407))))

(assert (=> b!939004 (= res!426464 (matchR!1112 lt!341862 (_1!6349 (get!3243 lt!341922))))))

(declare-fun b!939005 () Bool)

(declare-fun res!426463 () Bool)

(assert (=> b!939005 (=> (not res!426463) (not e!609407))))

(assert (=> b!939005 (= res!426463 (matchR!1112 lt!341857 (_2!6349 (get!3243 lt!341922))))))

(declare-fun b!939006 () Bool)

(assert (=> b!939006 (= e!609405 None!2164)))

(assert (= (and d!282233 res!426461) b!938998))

(assert (= (and d!282233 c!152768) b!939002))

(assert (= (and d!282233 (not c!152768)) b!939001))

(assert (= (and b!939001 c!152767) b!939006))

(assert (= (and b!939001 (not c!152767)) b!939000))

(assert (= (and d!282233 res!426462) b!939004))

(assert (= (and b!939004 res!426464) b!939005))

(assert (= (and b!939005 res!426463) b!938999))

(assert (= (and d!282233 (not res!426465)) b!939003))

(declare-fun m!1157089 () Bool)

(assert (=> b!939003 m!1157089))

(assert (=> b!939000 m!1157033))

(assert (=> b!939000 m!1157033))

(assert (=> b!939000 m!1157035))

(assert (=> b!939000 m!1157037))

(assert (=> b!939000 m!1157033))

(declare-fun m!1157091 () Bool)

(assert (=> b!939000 m!1157091))

(declare-fun m!1157093 () Bool)

(assert (=> b!939004 m!1157093))

(declare-fun m!1157095 () Bool)

(assert (=> b!939004 m!1157095))

(assert (=> b!938998 m!1156889))

(assert (=> d!282233 m!1157089))

(declare-fun m!1157097 () Bool)

(assert (=> d!282233 m!1157097))

(assert (=> d!282233 m!1156909))

(assert (=> b!939005 m!1157093))

(declare-fun m!1157099 () Bool)

(assert (=> b!939005 m!1157099))

(assert (=> b!938999 m!1157093))

(declare-fun m!1157101 () Bool)

(assert (=> b!938999 m!1157101))

(assert (=> b!938643 d!282233))

(declare-fun d!282237 () Bool)

(assert (=> d!282237 (= (Exists!325 lambda!31418) (choose!5797 lambda!31418))))

(declare-fun bs!238413 () Bool)

(assert (= bs!238413 d!282237))

(declare-fun m!1157103 () Bool)

(assert (=> bs!238413 m!1157103))

(assert (=> b!938643 d!282237))

(declare-fun d!282239 () Bool)

(assert (=> d!282239 (= (isEmpty!6029 s!10566) (is-Nil!9788 s!10566))))

(assert (=> b!938643 d!282239))

(declare-fun d!282241 () Bool)

(assert (=> d!282241 (= (matchR!1112 lt!341857 s!10566) (matchRSpec!375 lt!341857 s!10566))))

(declare-fun lt!341927 () Unit!14767)

(declare-fun choose!5800 (Regex!2574 List!9804) Unit!14767)

(assert (=> d!282241 (= lt!341927 (choose!5800 lt!341857 s!10566))))

(assert (=> d!282241 (validRegex!1043 lt!341857)))

(assert (=> d!282241 (= (mainMatchTheorem!375 lt!341857 s!10566) lt!341927)))

(declare-fun bs!238416 () Bool)

(assert (= bs!238416 d!282241))

(assert (=> bs!238416 m!1156889))

(assert (=> bs!238416 m!1156911))

(declare-fun m!1157109 () Bool)

(assert (=> bs!238416 m!1157109))

(assert (=> bs!238416 m!1156907))

(assert (=> b!938643 d!282241))

(declare-fun bs!238417 () Bool)

(declare-fun d!282249 () Bool)

(assert (= bs!238417 (and d!282249 b!938997)))

(declare-fun lambda!31463 () Int)

(assert (=> bs!238417 (not (= lambda!31463 lambda!31462))))

(declare-fun bs!238418 () Bool)

(assert (= bs!238418 (and d!282249 b!938643)))

(assert (=> bs!238418 (not (= lambda!31463 lambda!31418))))

(declare-fun bs!238419 () Bool)

(assert (= bs!238419 (and d!282249 b!938996)))

(assert (=> bs!238419 (not (= lambda!31463 lambda!31460))))

(assert (=> bs!238418 (= (= (Star!2574 lt!341862) lt!341857) (= lambda!31463 lambda!31417))))

(declare-fun bs!238420 () Bool)

(assert (= bs!238420 (and d!282249 d!282225)))

(assert (=> bs!238420 (= (= (Star!2574 lt!341862) lt!341857) (= lambda!31463 lambda!31450))))

(declare-fun bs!238421 () Bool)

(assert (= bs!238421 (and d!282249 d!282219)))

(assert (=> bs!238421 (= (and (= lt!341862 (reg!2903 r!15766)) (= (Star!2574 lt!341862) lt!341854)) (= lambda!31463 lambda!31449))))

(declare-fun bs!238422 () Bool)

(assert (= bs!238422 (and d!282249 b!938639)))

(assert (=> bs!238422 (= (and (= lt!341862 (reg!2903 r!15766)) (= (Star!2574 lt!341862) lt!341854)) (= lambda!31463 lambda!31415))))

(declare-fun bs!238423 () Bool)

(assert (= bs!238423 (and d!282249 d!282205)))

(assert (=> bs!238423 (not (= lambda!31463 lambda!31444))))

(assert (=> bs!238422 (not (= lambda!31463 lambda!31416))))

(assert (=> bs!238423 (= (and (= lt!341862 (reg!2903 r!15766)) (= (Star!2574 lt!341862) (Star!2574 (reg!2903 r!15766)))) (= lambda!31463 lambda!31442))))

(assert (=> d!282249 true))

(assert (=> d!282249 true))

(declare-fun lambda!31464 () Int)

(assert (=> bs!238417 (not (= lambda!31464 lambda!31462))))

(assert (=> bs!238418 (= (= (Star!2574 lt!341862) lt!341857) (= lambda!31464 lambda!31418))))

(declare-fun bs!238424 () Bool)

(assert (= bs!238424 d!282249))

(assert (=> bs!238424 (not (= lambda!31464 lambda!31463))))

(assert (=> bs!238419 (= (and (= lt!341862 (reg!2903 lt!341857)) (= (Star!2574 lt!341862) lt!341857)) (= lambda!31464 lambda!31460))))

(assert (=> bs!238418 (not (= lambda!31464 lambda!31417))))

(assert (=> bs!238420 (not (= lambda!31464 lambda!31450))))

(assert (=> bs!238421 (not (= lambda!31464 lambda!31449))))

(assert (=> bs!238422 (not (= lambda!31464 lambda!31415))))

(assert (=> bs!238423 (= (and (= lt!341862 (reg!2903 r!15766)) (= (Star!2574 lt!341862) (Star!2574 (reg!2903 r!15766)))) (= lambda!31464 lambda!31444))))

(assert (=> bs!238422 (= (and (= lt!341862 (reg!2903 r!15766)) (= (Star!2574 lt!341862) lt!341854)) (= lambda!31464 lambda!31416))))

(assert (=> bs!238423 (not (= lambda!31464 lambda!31442))))

(assert (=> d!282249 true))

(assert (=> d!282249 true))

(assert (=> d!282249 (= (Exists!325 lambda!31463) (Exists!325 lambda!31464))))

(declare-fun lt!341928 () Unit!14767)

(assert (=> d!282249 (= lt!341928 (choose!5798 lt!341862 s!10566))))

(assert (=> d!282249 (validRegex!1043 lt!341862)))

(assert (=> d!282249 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!69 lt!341862 s!10566) lt!341928)))

(declare-fun m!1157111 () Bool)

(assert (=> bs!238424 m!1157111))

(declare-fun m!1157113 () Bool)

(assert (=> bs!238424 m!1157113))

(declare-fun m!1157115 () Bool)

(assert (=> bs!238424 m!1157115))

(assert (=> bs!238424 m!1156909))

(assert (=> b!938643 d!282249))

(declare-fun bs!238425 () Bool)

(declare-fun b!939016 () Bool)

(assert (= bs!238425 (and b!939016 b!938997)))

(declare-fun lambda!31465 () Int)

(assert (=> bs!238425 (not (= lambda!31465 lambda!31462))))

(declare-fun bs!238426 () Bool)

(assert (= bs!238426 (and b!939016 b!938643)))

(assert (=> bs!238426 (= (and (= (reg!2903 r!15766) lt!341862) (= r!15766 lt!341857)) (= lambda!31465 lambda!31418))))

(declare-fun bs!238427 () Bool)

(assert (= bs!238427 (and b!939016 d!282249)))

(assert (=> bs!238427 (not (= lambda!31465 lambda!31463))))

(assert (=> bs!238426 (not (= lambda!31465 lambda!31417))))

(declare-fun bs!238428 () Bool)

(assert (= bs!238428 (and b!939016 d!282225)))

(assert (=> bs!238428 (not (= lambda!31465 lambda!31450))))

(declare-fun bs!238429 () Bool)

(assert (= bs!238429 (and b!939016 d!282219)))

(assert (=> bs!238429 (not (= lambda!31465 lambda!31449))))

(declare-fun bs!238430 () Bool)

(assert (= bs!238430 (and b!939016 b!938639)))

(assert (=> bs!238430 (not (= lambda!31465 lambda!31415))))

(declare-fun bs!238431 () Bool)

(assert (= bs!238431 (and b!939016 d!282205)))

(assert (=> bs!238431 (= (= r!15766 (Star!2574 (reg!2903 r!15766))) (= lambda!31465 lambda!31444))))

(assert (=> bs!238430 (= (= r!15766 lt!341854) (= lambda!31465 lambda!31416))))

(assert (=> bs!238431 (not (= lambda!31465 lambda!31442))))

(declare-fun bs!238432 () Bool)

(assert (= bs!238432 (and b!939016 b!938996)))

(assert (=> bs!238432 (= (and (= (reg!2903 r!15766) (reg!2903 lt!341857)) (= r!15766 lt!341857)) (= lambda!31465 lambda!31460))))

(assert (=> bs!238427 (= (and (= (reg!2903 r!15766) lt!341862) (= r!15766 (Star!2574 lt!341862))) (= lambda!31465 lambda!31464))))

(assert (=> b!939016 true))

(assert (=> b!939016 true))

(declare-fun bs!238433 () Bool)

(declare-fun b!939017 () Bool)

(assert (= bs!238433 (and b!939017 b!938997)))

(declare-fun lambda!31466 () Int)

(assert (=> bs!238433 (= (and (= (regOne!5660 r!15766) (regOne!5660 lt!341857)) (= (regTwo!5660 r!15766) (regTwo!5660 lt!341857))) (= lambda!31466 lambda!31462))))

(declare-fun bs!238434 () Bool)

(assert (= bs!238434 (and b!939017 b!938643)))

(assert (=> bs!238434 (not (= lambda!31466 lambda!31418))))

(declare-fun bs!238435 () Bool)

(assert (= bs!238435 (and b!939017 d!282249)))

(assert (=> bs!238435 (not (= lambda!31466 lambda!31463))))

(declare-fun bs!238436 () Bool)

(assert (= bs!238436 (and b!939017 b!939016)))

(assert (=> bs!238436 (not (= lambda!31466 lambda!31465))))

(assert (=> bs!238434 (not (= lambda!31466 lambda!31417))))

(declare-fun bs!238437 () Bool)

(assert (= bs!238437 (and b!939017 d!282225)))

(assert (=> bs!238437 (not (= lambda!31466 lambda!31450))))

(declare-fun bs!238438 () Bool)

(assert (= bs!238438 (and b!939017 d!282219)))

(assert (=> bs!238438 (not (= lambda!31466 lambda!31449))))

(declare-fun bs!238439 () Bool)

(assert (= bs!238439 (and b!939017 b!938639)))

(assert (=> bs!238439 (not (= lambda!31466 lambda!31415))))

(declare-fun bs!238440 () Bool)

(assert (= bs!238440 (and b!939017 d!282205)))

(assert (=> bs!238440 (not (= lambda!31466 lambda!31444))))

(assert (=> bs!238439 (not (= lambda!31466 lambda!31416))))

(assert (=> bs!238440 (not (= lambda!31466 lambda!31442))))

(declare-fun bs!238441 () Bool)

(assert (= bs!238441 (and b!939017 b!938996)))

(assert (=> bs!238441 (not (= lambda!31466 lambda!31460))))

(assert (=> bs!238435 (not (= lambda!31466 lambda!31464))))

(assert (=> b!939017 true))

(assert (=> b!939017 true))

(declare-fun b!939007 () Bool)

(declare-fun e!609413 () Bool)

(declare-fun e!609412 () Bool)

(assert (=> b!939007 (= e!609413 e!609412)))

(declare-fun res!426468 () Bool)

(assert (=> b!939007 (= res!426468 (matchRSpec!375 (regOne!5661 r!15766) s!10566))))

(assert (=> b!939007 (=> res!426468 e!609412)))

(declare-fun b!939008 () Bool)

(declare-fun e!609409 () Bool)

(declare-fun e!609415 () Bool)

(assert (=> b!939008 (= e!609409 e!609415)))

(declare-fun res!426466 () Bool)

(assert (=> b!939008 (= res!426466 (not (is-EmptyLang!2574 r!15766)))))

(assert (=> b!939008 (=> (not res!426466) (not e!609415))))

(declare-fun b!939009 () Bool)

(declare-fun c!152770 () Bool)

(assert (=> b!939009 (= c!152770 (is-ElementMatch!2574 r!15766))))

(declare-fun e!609411 () Bool)

(assert (=> b!939009 (= e!609415 e!609411)))

(declare-fun b!939010 () Bool)

(declare-fun res!426467 () Bool)

(declare-fun e!609410 () Bool)

(assert (=> b!939010 (=> res!426467 e!609410)))

(declare-fun call!58384 () Bool)

(assert (=> b!939010 (= res!426467 call!58384)))

(declare-fun e!609414 () Bool)

(assert (=> b!939010 (= e!609414 e!609410)))

(declare-fun b!939011 () Bool)

(assert (=> b!939011 (= e!609409 call!58384)))

(declare-fun c!152771 () Bool)

(declare-fun call!58385 () Bool)

(declare-fun bm!58379 () Bool)

(assert (=> bm!58379 (= call!58385 (Exists!325 (ite c!152771 lambda!31465 lambda!31466)))))

(declare-fun b!939012 () Bool)

(assert (=> b!939012 (= e!609411 (= s!10566 (Cons!9788 (c!152695 r!15766) Nil!9788)))))

(declare-fun b!939014 () Bool)

(assert (=> b!939014 (= e!609412 (matchRSpec!375 (regTwo!5661 r!15766) s!10566))))

(declare-fun bm!58380 () Bool)

(assert (=> bm!58380 (= call!58384 (isEmpty!6029 s!10566))))

(declare-fun b!939015 () Bool)

(assert (=> b!939015 (= e!609413 e!609414)))

(assert (=> b!939015 (= c!152771 (is-Star!2574 r!15766))))

(assert (=> b!939016 (= e!609410 call!58385)))

(assert (=> b!939017 (= e!609414 call!58385)))

(declare-fun b!939013 () Bool)

(declare-fun c!152772 () Bool)

(assert (=> b!939013 (= c!152772 (is-Union!2574 r!15766))))

(assert (=> b!939013 (= e!609411 e!609413)))

(declare-fun d!282251 () Bool)

(declare-fun c!152769 () Bool)

(assert (=> d!282251 (= c!152769 (is-EmptyExpr!2574 r!15766))))

(assert (=> d!282251 (= (matchRSpec!375 r!15766 s!10566) e!609409)))

(assert (= (and d!282251 c!152769) b!939011))

(assert (= (and d!282251 (not c!152769)) b!939008))

(assert (= (and b!939008 res!426466) b!939009))

(assert (= (and b!939009 c!152770) b!939012))

(assert (= (and b!939009 (not c!152770)) b!939013))

(assert (= (and b!939013 c!152772) b!939007))

(assert (= (and b!939013 (not c!152772)) b!939015))

(assert (= (and b!939007 (not res!426468)) b!939014))

(assert (= (and b!939015 c!152771) b!939010))

(assert (= (and b!939015 (not c!152771)) b!939017))

(assert (= (and b!939010 (not res!426467)) b!939016))

(assert (= (or b!939016 b!939017) bm!58379))

(assert (= (or b!939011 b!939010) bm!58380))

(declare-fun m!1157117 () Bool)

(assert (=> b!939007 m!1157117))

(declare-fun m!1157119 () Bool)

(assert (=> bm!58379 m!1157119))

(declare-fun m!1157121 () Bool)

(assert (=> b!939014 m!1157121))

(assert (=> bm!58380 m!1156919))

(assert (=> b!938638 d!282251))

(declare-fun d!282253 () Bool)

(declare-fun e!609420 () Bool)

(assert (=> d!282253 e!609420))

(declare-fun c!152775 () Bool)

(assert (=> d!282253 (= c!152775 (is-EmptyExpr!2574 r!15766))))

(declare-fun lt!341929 () Bool)

(declare-fun e!609419 () Bool)

(assert (=> d!282253 (= lt!341929 e!609419)))

(declare-fun c!152773 () Bool)

(assert (=> d!282253 (= c!152773 (isEmpty!6029 s!10566))))

(assert (=> d!282253 (validRegex!1043 r!15766)))

(assert (=> d!282253 (= (matchR!1112 r!15766 s!10566) lt!341929)))

(declare-fun b!939018 () Bool)

(assert (=> b!939018 (= e!609419 (matchR!1112 (derivativeStep!553 r!15766 (head!1706 s!10566)) (tail!1268 s!10566)))))

(declare-fun b!939019 () Bool)

(declare-fun e!609421 () Bool)

(assert (=> b!939019 (= e!609421 (not lt!341929))))

(declare-fun b!939020 () Bool)

(declare-fun e!609422 () Bool)

(declare-fun e!609416 () Bool)

(assert (=> b!939020 (= e!609422 e!609416)))

(declare-fun res!426476 () Bool)

(assert (=> b!939020 (=> (not res!426476) (not e!609416))))

(assert (=> b!939020 (= res!426476 (not lt!341929))))

(declare-fun b!939021 () Bool)

(declare-fun res!426474 () Bool)

(declare-fun e!609418 () Bool)

(assert (=> b!939021 (=> (not res!426474) (not e!609418))))

(assert (=> b!939021 (= res!426474 (isEmpty!6029 (tail!1268 s!10566)))))

(declare-fun b!939022 () Bool)

(assert (=> b!939022 (= e!609420 e!609421)))

(declare-fun c!152774 () Bool)

(assert (=> b!939022 (= c!152774 (is-EmptyLang!2574 r!15766))))

(declare-fun b!939023 () Bool)

(declare-fun res!426473 () Bool)

(declare-fun e!609417 () Bool)

(assert (=> b!939023 (=> res!426473 e!609417)))

(assert (=> b!939023 (= res!426473 (not (isEmpty!6029 (tail!1268 s!10566))))))

(declare-fun b!939024 () Bool)

(assert (=> b!939024 (= e!609417 (not (= (head!1706 s!10566) (c!152695 r!15766))))))

(declare-fun b!939025 () Bool)

(declare-fun res!426475 () Bool)

(assert (=> b!939025 (=> res!426475 e!609422)))

(assert (=> b!939025 (= res!426475 (not (is-ElementMatch!2574 r!15766)))))

(assert (=> b!939025 (= e!609421 e!609422)))

(declare-fun bm!58381 () Bool)

(declare-fun call!58386 () Bool)

(assert (=> bm!58381 (= call!58386 (isEmpty!6029 s!10566))))

(declare-fun b!939026 () Bool)

(assert (=> b!939026 (= e!609420 (= lt!341929 call!58386))))

(declare-fun b!939027 () Bool)

(declare-fun res!426471 () Bool)

(assert (=> b!939027 (=> (not res!426471) (not e!609418))))

(assert (=> b!939027 (= res!426471 (not call!58386))))

(declare-fun b!939028 () Bool)

(assert (=> b!939028 (= e!609419 (nullable!744 r!15766))))

(declare-fun b!939029 () Bool)

(assert (=> b!939029 (= e!609418 (= (head!1706 s!10566) (c!152695 r!15766)))))

(declare-fun b!939030 () Bool)

(assert (=> b!939030 (= e!609416 e!609417)))

(declare-fun res!426472 () Bool)

(assert (=> b!939030 (=> res!426472 e!609417)))

(assert (=> b!939030 (= res!426472 call!58386)))

(declare-fun b!939031 () Bool)

(declare-fun res!426469 () Bool)

(assert (=> b!939031 (=> res!426469 e!609422)))

(assert (=> b!939031 (= res!426469 e!609418)))

(declare-fun res!426470 () Bool)

(assert (=> b!939031 (=> (not res!426470) (not e!609418))))

(assert (=> b!939031 (= res!426470 lt!341929)))

(assert (= (and d!282253 c!152773) b!939028))

(assert (= (and d!282253 (not c!152773)) b!939018))

(assert (= (and d!282253 c!152775) b!939026))

(assert (= (and d!282253 (not c!152775)) b!939022))

(assert (= (and b!939022 c!152774) b!939019))

(assert (= (and b!939022 (not c!152774)) b!939025))

(assert (= (and b!939025 (not res!426475)) b!939031))

(assert (= (and b!939031 res!426470) b!939027))

(assert (= (and b!939027 res!426471) b!939021))

(assert (= (and b!939021 res!426474) b!939029))

(assert (= (and b!939031 (not res!426469)) b!939020))

(assert (= (and b!939020 res!426476) b!939030))

(assert (= (and b!939030 (not res!426472)) b!939023))

(assert (= (and b!939023 (not res!426473)) b!939024))

(assert (= (or b!939026 b!939027 b!939030) bm!58381))

(declare-fun m!1157123 () Bool)

(assert (=> b!939028 m!1157123))

(assert (=> b!939023 m!1156993))

(assert (=> b!939023 m!1156993))

(assert (=> b!939023 m!1156995))

(assert (=> b!939029 m!1156997))

(assert (=> b!939018 m!1156997))

(assert (=> b!939018 m!1156997))

(declare-fun m!1157125 () Bool)

(assert (=> b!939018 m!1157125))

(assert (=> b!939018 m!1156993))

(assert (=> b!939018 m!1157125))

(assert (=> b!939018 m!1156993))

(declare-fun m!1157127 () Bool)

(assert (=> b!939018 m!1157127))

(assert (=> d!282253 m!1156919))

(assert (=> d!282253 m!1156929))

(assert (=> bm!58381 m!1156919))

(assert (=> b!939024 m!1156997))

(assert (=> b!939021 m!1156993))

(assert (=> b!939021 m!1156993))

(assert (=> b!939021 m!1156995))

(assert (=> b!938638 d!282253))

(declare-fun d!282255 () Bool)

(assert (=> d!282255 (= (matchR!1112 r!15766 s!10566) (matchRSpec!375 r!15766 s!10566))))

(declare-fun lt!341930 () Unit!14767)

(assert (=> d!282255 (= lt!341930 (choose!5800 r!15766 s!10566))))

(assert (=> d!282255 (validRegex!1043 r!15766)))

(assert (=> d!282255 (= (mainMatchTheorem!375 r!15766 s!10566) lt!341930)))

(declare-fun bs!238442 () Bool)

(assert (= bs!238442 d!282255))

(assert (=> bs!238442 m!1156903))

(assert (=> bs!238442 m!1156901))

(declare-fun m!1157129 () Bool)

(assert (=> bs!238442 m!1157129))

(assert (=> bs!238442 m!1156929))

(assert (=> b!938638 d!282255))

(declare-fun e!609425 () Bool)

(assert (=> b!938641 (= tp!290773 e!609425)))

(declare-fun b!939043 () Bool)

(declare-fun tp!290807 () Bool)

(declare-fun tp!290805 () Bool)

(assert (=> b!939043 (= e!609425 (and tp!290807 tp!290805))))

(declare-fun b!939042 () Bool)

(assert (=> b!939042 (= e!609425 tp_is_empty!4791)))

(declare-fun b!939045 () Bool)

(declare-fun tp!290803 () Bool)

(declare-fun tp!290806 () Bool)

(assert (=> b!939045 (= e!609425 (and tp!290803 tp!290806))))

(declare-fun b!939044 () Bool)

(declare-fun tp!290804 () Bool)

(assert (=> b!939044 (= e!609425 tp!290804)))

(assert (= (and b!938641 (is-ElementMatch!2574 (reg!2903 r!15766))) b!939042))

(assert (= (and b!938641 (is-Concat!4407 (reg!2903 r!15766))) b!939043))

(assert (= (and b!938641 (is-Star!2574 (reg!2903 r!15766))) b!939044))

(assert (= (and b!938641 (is-Union!2574 (reg!2903 r!15766))) b!939045))

(declare-fun e!609426 () Bool)

(assert (=> b!938645 (= tp!290774 e!609426)))

(declare-fun b!939047 () Bool)

(declare-fun tp!290812 () Bool)

(declare-fun tp!290810 () Bool)

(assert (=> b!939047 (= e!609426 (and tp!290812 tp!290810))))

(declare-fun b!939046 () Bool)

(assert (=> b!939046 (= e!609426 tp_is_empty!4791)))

(declare-fun b!939049 () Bool)

(declare-fun tp!290808 () Bool)

(declare-fun tp!290811 () Bool)

(assert (=> b!939049 (= e!609426 (and tp!290808 tp!290811))))

(declare-fun b!939048 () Bool)

(declare-fun tp!290809 () Bool)

(assert (=> b!939048 (= e!609426 tp!290809)))

(assert (= (and b!938645 (is-ElementMatch!2574 (regOne!5661 r!15766))) b!939046))

(assert (= (and b!938645 (is-Concat!4407 (regOne!5661 r!15766))) b!939047))

(assert (= (and b!938645 (is-Star!2574 (regOne!5661 r!15766))) b!939048))

(assert (= (and b!938645 (is-Union!2574 (regOne!5661 r!15766))) b!939049))

(declare-fun e!609427 () Bool)

(assert (=> b!938645 (= tp!290771 e!609427)))

(declare-fun b!939051 () Bool)

(declare-fun tp!290817 () Bool)

(declare-fun tp!290815 () Bool)

(assert (=> b!939051 (= e!609427 (and tp!290817 tp!290815))))

(declare-fun b!939050 () Bool)

(assert (=> b!939050 (= e!609427 tp_is_empty!4791)))

(declare-fun b!939053 () Bool)

(declare-fun tp!290813 () Bool)

(declare-fun tp!290816 () Bool)

(assert (=> b!939053 (= e!609427 (and tp!290813 tp!290816))))

(declare-fun b!939052 () Bool)

(declare-fun tp!290814 () Bool)

(assert (=> b!939052 (= e!609427 tp!290814)))

(assert (= (and b!938645 (is-ElementMatch!2574 (regTwo!5661 r!15766))) b!939050))

(assert (= (and b!938645 (is-Concat!4407 (regTwo!5661 r!15766))) b!939051))

(assert (= (and b!938645 (is-Star!2574 (regTwo!5661 r!15766))) b!939052))

(assert (= (and b!938645 (is-Union!2574 (regTwo!5661 r!15766))) b!939053))

(declare-fun e!609428 () Bool)

(assert (=> b!938647 (= tp!290770 e!609428)))

(declare-fun b!939055 () Bool)

(declare-fun tp!290822 () Bool)

(declare-fun tp!290820 () Bool)

(assert (=> b!939055 (= e!609428 (and tp!290822 tp!290820))))

(declare-fun b!939054 () Bool)

(assert (=> b!939054 (= e!609428 tp_is_empty!4791)))

(declare-fun b!939057 () Bool)

(declare-fun tp!290818 () Bool)

(declare-fun tp!290821 () Bool)

(assert (=> b!939057 (= e!609428 (and tp!290818 tp!290821))))

(declare-fun b!939056 () Bool)

(declare-fun tp!290819 () Bool)

(assert (=> b!939056 (= e!609428 tp!290819)))

(assert (= (and b!938647 (is-ElementMatch!2574 (regOne!5660 r!15766))) b!939054))

(assert (= (and b!938647 (is-Concat!4407 (regOne!5660 r!15766))) b!939055))

(assert (= (and b!938647 (is-Star!2574 (regOne!5660 r!15766))) b!939056))

(assert (= (and b!938647 (is-Union!2574 (regOne!5660 r!15766))) b!939057))

(declare-fun e!609429 () Bool)

(assert (=> b!938647 (= tp!290772 e!609429)))

(declare-fun b!939059 () Bool)

(declare-fun tp!290827 () Bool)

(declare-fun tp!290825 () Bool)

(assert (=> b!939059 (= e!609429 (and tp!290827 tp!290825))))

(declare-fun b!939058 () Bool)

(assert (=> b!939058 (= e!609429 tp_is_empty!4791)))

(declare-fun b!939061 () Bool)

(declare-fun tp!290823 () Bool)

(declare-fun tp!290826 () Bool)

(assert (=> b!939061 (= e!609429 (and tp!290823 tp!290826))))

(declare-fun b!939060 () Bool)

(declare-fun tp!290824 () Bool)

(assert (=> b!939060 (= e!609429 tp!290824)))

(assert (= (and b!938647 (is-ElementMatch!2574 (regTwo!5660 r!15766))) b!939058))

(assert (= (and b!938647 (is-Concat!4407 (regTwo!5660 r!15766))) b!939059))

(assert (= (and b!938647 (is-Star!2574 (regTwo!5660 r!15766))) b!939060))

(assert (= (and b!938647 (is-Union!2574 (regTwo!5660 r!15766))) b!939061))

(declare-fun b!939066 () Bool)

(declare-fun e!609432 () Bool)

(declare-fun tp!290830 () Bool)

(assert (=> b!939066 (= e!609432 (and tp_is_empty!4791 tp!290830))))

(assert (=> b!938642 (= tp!290769 e!609432)))

(assert (= (and b!938642 (is-Cons!9788 (t!100850 s!10566))) b!939066))

(push 1)

(assert (not bm!58372))

(assert (not bm!58345))

(assert (not d!282253))

(assert (not d!282231))

(assert (not b!939056))

(assert (not b!939007))

(assert (not d!282207))

(assert (not b!939051))

(assert (not d!282205))

(assert (not b!939049))

(assert (not b!938806))

(assert (not b!939014))

(assert (not b!939066))

(assert (not bm!58366))

(assert (not b!939053))

(assert (not b!938916))

(assert (not b!939004))

(assert (not b!938987))

(assert (not b!939024))

(assert (not d!282217))

(assert (not b!938796))

(assert (not bm!58337))

(assert (not b!938998))

(assert (not b!938915))

(assert (not b!938999))

(assert (not b!938920))

(assert (not b!939023))

(assert (not bm!58369))

(assert (not b!938919))

(assert (not b!939005))

(assert (not b!939000))

(assert (not d!282233))

(assert tp_is_empty!4791)

(assert (not b!938799))

(assert (not b!939060))

(assert (not b!938754))

(assert (not b!939061))

(assert (not d!282225))

(assert (not b!939043))

(assert (not d!282219))

(assert (not bm!58377))

(assert (not b!939047))

(assert (not d!282211))

(assert (not d!282237))

(assert (not bm!58381))

(assert (not b!938994))

(assert (not bm!58380))

(assert (not b!939018))

(assert (not d!282249))

(assert (not bm!58378))

(assert (not b!939028))

(assert (not b!938801))

(assert (not d!282227))

(assert (not b!938887))

(assert (not b!938914))

(assert (not b!939057))

(assert (not d!282255))

(assert (not d!282209))

(assert (not b!938940))

(assert (not d!282241))

(assert (not b!938802))

(assert (not b!939021))

(assert (not b!938921))

(assert (not bm!58367))

(assert (not b!939052))

(assert (not d!282201))

(assert (not b!939048))

(assert (not b!938807))

(assert (not b!939044))

(assert (not b!939029))

(assert (not b!939055))

(assert (not b!939003))

(assert (not b!939059))

(assert (not b!939045))

(assert (not b!938931))

(assert (not bm!58370))

(assert (not d!282199))

(assert (not bm!58339))

(assert (not bm!58363))

(assert (not bm!58379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

