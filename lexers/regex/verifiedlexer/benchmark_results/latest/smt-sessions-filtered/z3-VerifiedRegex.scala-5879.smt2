; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288176 () Bool)

(assert start!288176)

(declare-fun b!2982029 () Bool)

(assert (=> b!2982029 true))

(assert (=> b!2982029 true))

(assert (=> b!2982029 true))

(declare-fun lambda!111250 () Int)

(declare-fun lambda!111249 () Int)

(assert (=> b!2982029 (not (= lambda!111250 lambda!111249))))

(assert (=> b!2982029 true))

(assert (=> b!2982029 true))

(assert (=> b!2982029 true))

(declare-fun b!2982021 () Bool)

(declare-fun e!1875390 () Bool)

(declare-fun tp!949264 () Bool)

(declare-fun tp!949268 () Bool)

(assert (=> b!2982021 (= e!1875390 (and tp!949264 tp!949268))))

(declare-fun b!2982022 () Bool)

(declare-fun tp!949265 () Bool)

(declare-fun tp!949267 () Bool)

(assert (=> b!2982022 (= e!1875390 (and tp!949265 tp!949267))))

(declare-fun b!2982023 () Bool)

(declare-fun e!1875388 () Bool)

(declare-datatypes ((C!18804 0))(
  ( (C!18805 (val!11438 Int)) )
))
(declare-datatypes ((Regex!9309 0))(
  ( (ElementMatch!9309 (c!489801 C!18804)) (Concat!14630 (regOne!19130 Regex!9309) (regTwo!19130 Regex!9309)) (EmptyExpr!9309) (Star!9309 (reg!9638 Regex!9309)) (EmptyLang!9309) (Union!9309 (regOne!19131 Regex!9309) (regTwo!19131 Regex!9309)) )
))
(declare-fun r!17423 () Regex!9309)

(declare-fun validRegex!4042 (Regex!9309) Bool)

(assert (=> b!2982023 (= e!1875388 (validRegex!4042 (reg!9638 r!17423)))))

(declare-fun lt!1038415 () Regex!9309)

(declare-datatypes ((List!35174 0))(
  ( (Nil!35050) (Cons!35050 (h!40470 C!18804) (t!234239 List!35174)) )
))
(declare-datatypes ((tuple2!33956 0))(
  ( (tuple2!33957 (_1!20110 List!35174) (_2!20110 List!35174)) )
))
(declare-fun lt!1038420 () tuple2!33956)

(declare-fun matchR!4191 (Regex!9309 List!35174) Bool)

(declare-fun simplify!310 (Regex!9309) Regex!9309)

(assert (=> b!2982023 (= (matchR!4191 lt!1038415 (_2!20110 lt!1038420)) (matchR!4191 (simplify!310 lt!1038415) (_2!20110 lt!1038420)))))

(declare-datatypes ((Unit!49003 0))(
  ( (Unit!49004) )
))
(declare-fun lt!1038423 () Unit!49003)

(declare-fun lemmaSimplifySound!174 (Regex!9309 List!35174) Unit!49003)

(assert (=> b!2982023 (= lt!1038423 (lemmaSimplifySound!174 lt!1038415 (_2!20110 lt!1038420)))))

(assert (=> b!2982023 (= lt!1038415 (Star!9309 (reg!9638 r!17423)))))

(declare-fun lt!1038422 () Unit!49003)

(declare-fun e!1875384 () Unit!49003)

(assert (=> b!2982023 (= lt!1038422 e!1875384)))

(declare-fun c!489800 () Bool)

(declare-fun s!11993 () List!35174)

(declare-fun size!26481 (List!35174) Int)

(assert (=> b!2982023 (= c!489800 (= (size!26481 (_2!20110 lt!1038420)) (size!26481 s!11993)))))

(assert (=> b!2982023 (matchR!4191 (reg!9638 r!17423) (_1!20110 lt!1038420))))

(declare-fun lt!1038421 () Unit!49003)

(assert (=> b!2982023 (= lt!1038421 (lemmaSimplifySound!174 (reg!9638 r!17423) (_1!20110 lt!1038420)))))

(declare-fun b!2982024 () Bool)

(declare-fun e!1875389 () Bool)

(declare-fun e!1875383 () Bool)

(assert (=> b!2982024 (= e!1875389 (not e!1875383))))

(declare-fun res!1229789 () Bool)

(assert (=> b!2982024 (=> res!1229789 e!1875383)))

(declare-fun lt!1038417 () Bool)

(get-info :version)

(assert (=> b!2982024 (= res!1229789 (or lt!1038417 ((_ is Concat!14630) r!17423) ((_ is Union!9309) r!17423) (not ((_ is Star!9309) r!17423))))))

(declare-fun matchRSpec!1446 (Regex!9309 List!35174) Bool)

(assert (=> b!2982024 (= lt!1038417 (matchRSpec!1446 r!17423 s!11993))))

(assert (=> b!2982024 (= lt!1038417 (matchR!4191 r!17423 s!11993))))

(declare-fun lt!1038419 () Unit!49003)

(declare-fun mainMatchTheorem!1446 (Regex!9309 List!35174) Unit!49003)

(assert (=> b!2982024 (= lt!1038419 (mainMatchTheorem!1446 r!17423 s!11993))))

(declare-fun b!2982025 () Bool)

(declare-fun res!1229791 () Bool)

(assert (=> b!2982025 (=> res!1229791 e!1875388)))

(declare-fun lt!1038416 () Regex!9309)

(assert (=> b!2982025 (= res!1229791 (not (matchR!4191 lt!1038416 (_2!20110 lt!1038420))))))

(declare-fun b!2982026 () Bool)

(declare-fun e!1875387 () Bool)

(assert (=> b!2982026 (= e!1875383 e!1875387)))

(declare-fun res!1229790 () Bool)

(assert (=> b!2982026 (=> res!1229790 e!1875387)))

(declare-fun lt!1038424 () Regex!9309)

(declare-fun isEmptyLang!423 (Regex!9309) Bool)

(assert (=> b!2982026 (= res!1229790 (isEmptyLang!423 lt!1038424))))

(assert (=> b!2982026 (= lt!1038424 (simplify!310 (reg!9638 r!17423)))))

(declare-fun b!2982027 () Bool)

(declare-fun e!1875382 () Bool)

(declare-fun e!1875386 () Bool)

(assert (=> b!2982027 (= e!1875382 e!1875386)))

(declare-fun res!1229788 () Bool)

(assert (=> b!2982027 (=> res!1229788 e!1875386)))

(declare-fun isEmpty!19309 (List!35174) Bool)

(assert (=> b!2982027 (= res!1229788 (isEmpty!19309 s!11993))))

(assert (=> b!2982027 (matchRSpec!1446 lt!1038416 s!11993)))

(declare-fun lt!1038414 () Unit!49003)

(assert (=> b!2982027 (= lt!1038414 (mainMatchTheorem!1446 lt!1038416 s!11993))))

(declare-fun b!2982028 () Bool)

(declare-fun tp!949269 () Bool)

(assert (=> b!2982028 (= e!1875390 tp!949269)))

(declare-fun e!1875385 () Bool)

(assert (=> b!2982029 (= e!1875386 e!1875385)))

(declare-fun res!1229787 () Bool)

(assert (=> b!2982029 (=> res!1229787 e!1875385)))

(declare-fun lt!1038412 () Bool)

(assert (=> b!2982029 (= res!1229787 (not lt!1038412))))

(declare-fun Exists!1589 (Int) Bool)

(assert (=> b!2982029 (= (Exists!1589 lambda!111249) (Exists!1589 lambda!111250))))

(declare-fun lt!1038410 () Unit!49003)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!274 (Regex!9309 List!35174) Unit!49003)

(assert (=> b!2982029 (= lt!1038410 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!274 lt!1038424 s!11993))))

(assert (=> b!2982029 (= lt!1038412 (Exists!1589 lambda!111249))))

(declare-datatypes ((Option!6710 0))(
  ( (None!6709) (Some!6709 (v!34843 tuple2!33956)) )
))
(declare-fun lt!1038413 () Option!6710)

(declare-fun isDefined!5261 (Option!6710) Bool)

(assert (=> b!2982029 (= lt!1038412 (isDefined!5261 lt!1038413))))

(declare-fun findConcatSeparation!1104 (Regex!9309 Regex!9309 List!35174 List!35174 List!35174) Option!6710)

(assert (=> b!2982029 (= lt!1038413 (findConcatSeparation!1104 lt!1038424 lt!1038416 Nil!35050 s!11993 s!11993))))

(declare-fun lt!1038411 () Unit!49003)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!882 (Regex!9309 Regex!9309 List!35174) Unit!49003)

(assert (=> b!2982029 (= lt!1038411 (lemmaFindConcatSeparationEquivalentToExists!882 lt!1038424 lt!1038416 s!11993))))

(declare-fun b!2982031 () Bool)

(declare-fun e!1875391 () Bool)

(declare-fun tp_is_empty!16181 () Bool)

(declare-fun tp!949266 () Bool)

(assert (=> b!2982031 (= e!1875391 (and tp_is_empty!16181 tp!949266))))

(declare-fun b!2982032 () Bool)

(assert (=> b!2982032 (= e!1875387 e!1875382)))

(declare-fun res!1229793 () Bool)

(assert (=> b!2982032 (=> res!1229793 e!1875382)))

(assert (=> b!2982032 (= res!1229793 (not (matchR!4191 lt!1038416 s!11993)))))

(assert (=> b!2982032 (= lt!1038416 (Star!9309 lt!1038424))))

(declare-fun b!2982033 () Bool)

(declare-fun Unit!49005 () Unit!49003)

(assert (=> b!2982033 (= e!1875384 Unit!49005)))

(declare-fun lt!1038418 () Unit!49003)

(assert (=> b!2982033 (= lt!1038418 (mainMatchTheorem!1446 (reg!9638 r!17423) (_1!20110 lt!1038420)))))

(assert (=> b!2982033 false))

(declare-fun b!2982034 () Bool)

(assert (=> b!2982034 (= e!1875390 tp_is_empty!16181)))

(declare-fun b!2982035 () Bool)

(declare-fun Unit!49006 () Unit!49003)

(assert (=> b!2982035 (= e!1875384 Unit!49006)))

(declare-fun b!2982030 () Bool)

(assert (=> b!2982030 (= e!1875385 e!1875388)))

(declare-fun res!1229794 () Bool)

(assert (=> b!2982030 (=> res!1229794 e!1875388)))

(assert (=> b!2982030 (= res!1229794 (not (matchR!4191 lt!1038424 (_1!20110 lt!1038420))))))

(declare-fun get!10832 (Option!6710) tuple2!33956)

(assert (=> b!2982030 (= lt!1038420 (get!10832 lt!1038413))))

(declare-fun res!1229792 () Bool)

(assert (=> start!288176 (=> (not res!1229792) (not e!1875389))))

(assert (=> start!288176 (= res!1229792 (validRegex!4042 r!17423))))

(assert (=> start!288176 e!1875389))

(assert (=> start!288176 e!1875390))

(assert (=> start!288176 e!1875391))

(assert (= (and start!288176 res!1229792) b!2982024))

(assert (= (and b!2982024 (not res!1229789)) b!2982026))

(assert (= (and b!2982026 (not res!1229790)) b!2982032))

(assert (= (and b!2982032 (not res!1229793)) b!2982027))

(assert (= (and b!2982027 (not res!1229788)) b!2982029))

(assert (= (and b!2982029 (not res!1229787)) b!2982030))

(assert (= (and b!2982030 (not res!1229794)) b!2982025))

(assert (= (and b!2982025 (not res!1229791)) b!2982023))

(assert (= (and b!2982023 c!489800) b!2982033))

(assert (= (and b!2982023 (not c!489800)) b!2982035))

(assert (= (and start!288176 ((_ is ElementMatch!9309) r!17423)) b!2982034))

(assert (= (and start!288176 ((_ is Concat!14630) r!17423)) b!2982021))

(assert (= (and start!288176 ((_ is Star!9309) r!17423)) b!2982028))

(assert (= (and start!288176 ((_ is Union!9309) r!17423)) b!2982022))

(assert (= (and start!288176 ((_ is Cons!35050) s!11993)) b!2982031))

(declare-fun m!3342775 () Bool)

(assert (=> b!2982027 m!3342775))

(declare-fun m!3342777 () Bool)

(assert (=> b!2982027 m!3342777))

(declare-fun m!3342779 () Bool)

(assert (=> b!2982027 m!3342779))

(declare-fun m!3342781 () Bool)

(assert (=> b!2982024 m!3342781))

(declare-fun m!3342783 () Bool)

(assert (=> b!2982024 m!3342783))

(declare-fun m!3342785 () Bool)

(assert (=> b!2982024 m!3342785))

(declare-fun m!3342787 () Bool)

(assert (=> b!2982023 m!3342787))

(declare-fun m!3342789 () Bool)

(assert (=> b!2982023 m!3342789))

(declare-fun m!3342791 () Bool)

(assert (=> b!2982023 m!3342791))

(declare-fun m!3342793 () Bool)

(assert (=> b!2982023 m!3342793))

(assert (=> b!2982023 m!3342791))

(declare-fun m!3342795 () Bool)

(assert (=> b!2982023 m!3342795))

(declare-fun m!3342797 () Bool)

(assert (=> b!2982023 m!3342797))

(declare-fun m!3342799 () Bool)

(assert (=> b!2982023 m!3342799))

(declare-fun m!3342801 () Bool)

(assert (=> b!2982023 m!3342801))

(declare-fun m!3342803 () Bool)

(assert (=> b!2982023 m!3342803))

(declare-fun m!3342805 () Bool)

(assert (=> b!2982026 m!3342805))

(declare-fun m!3342807 () Bool)

(assert (=> b!2982026 m!3342807))

(declare-fun m!3342809 () Bool)

(assert (=> b!2982032 m!3342809))

(declare-fun m!3342811 () Bool)

(assert (=> b!2982030 m!3342811))

(declare-fun m!3342813 () Bool)

(assert (=> b!2982030 m!3342813))

(declare-fun m!3342815 () Bool)

(assert (=> b!2982025 m!3342815))

(declare-fun m!3342817 () Bool)

(assert (=> b!2982033 m!3342817))

(declare-fun m!3342819 () Bool)

(assert (=> start!288176 m!3342819))

(declare-fun m!3342821 () Bool)

(assert (=> b!2982029 m!3342821))

(declare-fun m!3342823 () Bool)

(assert (=> b!2982029 m!3342823))

(declare-fun m!3342825 () Bool)

(assert (=> b!2982029 m!3342825))

(assert (=> b!2982029 m!3342823))

(declare-fun m!3342827 () Bool)

(assert (=> b!2982029 m!3342827))

(declare-fun m!3342829 () Bool)

(assert (=> b!2982029 m!3342829))

(declare-fun m!3342831 () Bool)

(assert (=> b!2982029 m!3342831))

(check-sat (not start!288176) (not b!2982033) (not b!2982024) (not b!2982022) (not b!2982032) (not b!2982026) (not b!2982027) (not b!2982025) (not b!2982031) (not b!2982021) (not b!2982023) tp_is_empty!16181 (not b!2982030) (not b!2982029) (not b!2982028))
(check-sat)
(get-model)

(declare-fun d!843692 () Bool)

(assert (=> d!843692 (= (isEmpty!19309 s!11993) ((_ is Nil!35050) s!11993))))

(assert (=> b!2982027 d!843692))

(declare-fun bs!527224 () Bool)

(declare-fun b!2982164 () Bool)

(assert (= bs!527224 (and b!2982164 b!2982029)))

(declare-fun lambda!111263 () Int)

(assert (=> bs!527224 (not (= lambda!111263 lambda!111249))))

(assert (=> bs!527224 (= (= (reg!9638 lt!1038416) lt!1038424) (= lambda!111263 lambda!111250))))

(assert (=> b!2982164 true))

(assert (=> b!2982164 true))

(declare-fun bs!527226 () Bool)

(declare-fun b!2982166 () Bool)

(assert (= bs!527226 (and b!2982166 b!2982029)))

(declare-fun lambda!111266 () Int)

(assert (=> bs!527226 (not (= lambda!111266 lambda!111249))))

(assert (=> bs!527226 (not (= lambda!111266 lambda!111250))))

(declare-fun bs!527229 () Bool)

(assert (= bs!527229 (and b!2982166 b!2982164)))

(assert (=> bs!527229 (not (= lambda!111266 lambda!111263))))

(assert (=> b!2982166 true))

(assert (=> b!2982166 true))

(declare-fun d!843694 () Bool)

(declare-fun c!489831 () Bool)

(assert (=> d!843694 (= c!489831 ((_ is EmptyExpr!9309) lt!1038416))))

(declare-fun e!1875460 () Bool)

(assert (=> d!843694 (= (matchRSpec!1446 lt!1038416 s!11993) e!1875460)))

(declare-fun b!2982161 () Bool)

(declare-fun e!1875458 () Bool)

(declare-fun e!1875464 () Bool)

(assert (=> b!2982161 (= e!1875458 e!1875464)))

(declare-fun c!489834 () Bool)

(assert (=> b!2982161 (= c!489834 ((_ is Star!9309) lt!1038416))))

(declare-fun bm!199167 () Bool)

(declare-fun call!199172 () Bool)

(assert (=> bm!199167 (= call!199172 (isEmpty!19309 s!11993))))

(declare-fun b!2982162 () Bool)

(assert (=> b!2982162 (= e!1875460 call!199172)))

(declare-fun call!199173 () Bool)

(declare-fun bm!199168 () Bool)

(assert (=> bm!199168 (= call!199173 (Exists!1589 (ite c!489834 lambda!111263 lambda!111266)))))

(declare-fun b!2982163 () Bool)

(declare-fun e!1875461 () Bool)

(assert (=> b!2982163 (= e!1875460 e!1875461)))

(declare-fun res!1229858 () Bool)

(assert (=> b!2982163 (= res!1229858 (not ((_ is EmptyLang!9309) lt!1038416)))))

(assert (=> b!2982163 (=> (not res!1229858) (not e!1875461))))

(declare-fun e!1875463 () Bool)

(assert (=> b!2982164 (= e!1875463 call!199173)))

(declare-fun b!2982165 () Bool)

(declare-fun e!1875459 () Bool)

(assert (=> b!2982165 (= e!1875459 (= s!11993 (Cons!35050 (c!489801 lt!1038416) Nil!35050)))))

(assert (=> b!2982166 (= e!1875464 call!199173)))

(declare-fun b!2982167 () Bool)

(declare-fun res!1229859 () Bool)

(assert (=> b!2982167 (=> res!1229859 e!1875463)))

(assert (=> b!2982167 (= res!1229859 call!199172)))

(assert (=> b!2982167 (= e!1875464 e!1875463)))

(declare-fun b!2982168 () Bool)

(declare-fun c!489833 () Bool)

(assert (=> b!2982168 (= c!489833 ((_ is ElementMatch!9309) lt!1038416))))

(assert (=> b!2982168 (= e!1875461 e!1875459)))

(declare-fun b!2982169 () Bool)

(declare-fun e!1875462 () Bool)

(assert (=> b!2982169 (= e!1875462 (matchRSpec!1446 (regTwo!19131 lt!1038416) s!11993))))

(declare-fun b!2982170 () Bool)

(assert (=> b!2982170 (= e!1875458 e!1875462)))

(declare-fun res!1229860 () Bool)

(assert (=> b!2982170 (= res!1229860 (matchRSpec!1446 (regOne!19131 lt!1038416) s!11993))))

(assert (=> b!2982170 (=> res!1229860 e!1875462)))

(declare-fun b!2982171 () Bool)

(declare-fun c!489832 () Bool)

(assert (=> b!2982171 (= c!489832 ((_ is Union!9309) lt!1038416))))

(assert (=> b!2982171 (= e!1875459 e!1875458)))

(assert (= (and d!843694 c!489831) b!2982162))

(assert (= (and d!843694 (not c!489831)) b!2982163))

(assert (= (and b!2982163 res!1229858) b!2982168))

(assert (= (and b!2982168 c!489833) b!2982165))

(assert (= (and b!2982168 (not c!489833)) b!2982171))

(assert (= (and b!2982171 c!489832) b!2982170))

(assert (= (and b!2982171 (not c!489832)) b!2982161))

(assert (= (and b!2982170 (not res!1229860)) b!2982169))

(assert (= (and b!2982161 c!489834) b!2982167))

(assert (= (and b!2982161 (not c!489834)) b!2982166))

(assert (= (and b!2982167 (not res!1229859)) b!2982164))

(assert (= (or b!2982164 b!2982166) bm!199168))

(assert (= (or b!2982162 b!2982167) bm!199167))

(assert (=> bm!199167 m!3342775))

(declare-fun m!3342861 () Bool)

(assert (=> bm!199168 m!3342861))

(declare-fun m!3342863 () Bool)

(assert (=> b!2982169 m!3342863))

(declare-fun m!3342865 () Bool)

(assert (=> b!2982170 m!3342865))

(assert (=> b!2982027 d!843694))

(declare-fun d!843704 () Bool)

(assert (=> d!843704 (= (matchR!4191 lt!1038416 s!11993) (matchRSpec!1446 lt!1038416 s!11993))))

(declare-fun lt!1038436 () Unit!49003)

(declare-fun choose!17670 (Regex!9309 List!35174) Unit!49003)

(assert (=> d!843704 (= lt!1038436 (choose!17670 lt!1038416 s!11993))))

(assert (=> d!843704 (validRegex!4042 lt!1038416)))

(assert (=> d!843704 (= (mainMatchTheorem!1446 lt!1038416 s!11993) lt!1038436)))

(declare-fun bs!527231 () Bool)

(assert (= bs!527231 d!843704))

(assert (=> bs!527231 m!3342809))

(assert (=> bs!527231 m!3342777))

(declare-fun m!3342867 () Bool)

(assert (=> bs!527231 m!3342867))

(declare-fun m!3342869 () Bool)

(assert (=> bs!527231 m!3342869))

(assert (=> b!2982027 d!843704))

(declare-fun b!2982285 () Bool)

(declare-fun res!1229912 () Bool)

(declare-fun e!1875529 () Bool)

(assert (=> b!2982285 (=> (not res!1229912) (not e!1875529))))

(declare-fun tail!4879 (List!35174) List!35174)

(assert (=> b!2982285 (= res!1229912 (isEmpty!19309 (tail!4879 s!11993)))))

(declare-fun b!2982286 () Bool)

(declare-fun e!1875526 () Bool)

(declare-fun lt!1038463 () Bool)

(declare-fun call!199176 () Bool)

(assert (=> b!2982286 (= e!1875526 (= lt!1038463 call!199176))))

(declare-fun b!2982287 () Bool)

(declare-fun e!1875530 () Bool)

(declare-fun head!6653 (List!35174) C!18804)

(assert (=> b!2982287 (= e!1875530 (not (= (head!6653 s!11993) (c!489801 lt!1038416))))))

(declare-fun b!2982288 () Bool)

(declare-fun res!1229910 () Bool)

(assert (=> b!2982288 (=> (not res!1229910) (not e!1875529))))

(assert (=> b!2982288 (= res!1229910 (not call!199176))))

(declare-fun b!2982290 () Bool)

(declare-fun e!1875524 () Bool)

(declare-fun nullable!2994 (Regex!9309) Bool)

(assert (=> b!2982290 (= e!1875524 (nullable!2994 lt!1038416))))

(declare-fun b!2982291 () Bool)

(declare-fun e!1875525 () Bool)

(assert (=> b!2982291 (= e!1875525 (not lt!1038463))))

(declare-fun b!2982292 () Bool)

(declare-fun res!1229911 () Bool)

(assert (=> b!2982292 (=> res!1229911 e!1875530)))

(assert (=> b!2982292 (= res!1229911 (not (isEmpty!19309 (tail!4879 s!11993))))))

(declare-fun bm!199171 () Bool)

(assert (=> bm!199171 (= call!199176 (isEmpty!19309 s!11993))))

(declare-fun b!2982289 () Bool)

(declare-fun derivativeStep!2594 (Regex!9309 C!18804) Regex!9309)

(assert (=> b!2982289 (= e!1875524 (matchR!4191 (derivativeStep!2594 lt!1038416 (head!6653 s!11993)) (tail!4879 s!11993)))))

(declare-fun d!843706 () Bool)

(assert (=> d!843706 e!1875526))

(declare-fun c!489870 () Bool)

(assert (=> d!843706 (= c!489870 ((_ is EmptyExpr!9309) lt!1038416))))

(assert (=> d!843706 (= lt!1038463 e!1875524)))

(declare-fun c!489871 () Bool)

(assert (=> d!843706 (= c!489871 (isEmpty!19309 s!11993))))

(assert (=> d!843706 (validRegex!4042 lt!1038416)))

(assert (=> d!843706 (= (matchR!4191 lt!1038416 s!11993) lt!1038463)))

(declare-fun b!2982293 () Bool)

(assert (=> b!2982293 (= e!1875526 e!1875525)))

(declare-fun c!489869 () Bool)

(assert (=> b!2982293 (= c!489869 ((_ is EmptyLang!9309) lt!1038416))))

(declare-fun b!2982294 () Bool)

(declare-fun res!1229906 () Bool)

(declare-fun e!1875528 () Bool)

(assert (=> b!2982294 (=> res!1229906 e!1875528)))

(assert (=> b!2982294 (= res!1229906 e!1875529)))

(declare-fun res!1229913 () Bool)

(assert (=> b!2982294 (=> (not res!1229913) (not e!1875529))))

(assert (=> b!2982294 (= res!1229913 lt!1038463)))

(declare-fun b!2982295 () Bool)

(assert (=> b!2982295 (= e!1875529 (= (head!6653 s!11993) (c!489801 lt!1038416)))))

(declare-fun b!2982296 () Bool)

(declare-fun e!1875527 () Bool)

(assert (=> b!2982296 (= e!1875527 e!1875530)))

(declare-fun res!1229907 () Bool)

(assert (=> b!2982296 (=> res!1229907 e!1875530)))

(assert (=> b!2982296 (= res!1229907 call!199176)))

(declare-fun b!2982297 () Bool)

(declare-fun res!1229909 () Bool)

(assert (=> b!2982297 (=> res!1229909 e!1875528)))

(assert (=> b!2982297 (= res!1229909 (not ((_ is ElementMatch!9309) lt!1038416)))))

(assert (=> b!2982297 (= e!1875525 e!1875528)))

(declare-fun b!2982298 () Bool)

(assert (=> b!2982298 (= e!1875528 e!1875527)))

(declare-fun res!1229908 () Bool)

(assert (=> b!2982298 (=> (not res!1229908) (not e!1875527))))

(assert (=> b!2982298 (= res!1229908 (not lt!1038463))))

(assert (= (and d!843706 c!489871) b!2982290))

(assert (= (and d!843706 (not c!489871)) b!2982289))

(assert (= (and d!843706 c!489870) b!2982286))

(assert (= (and d!843706 (not c!489870)) b!2982293))

(assert (= (and b!2982293 c!489869) b!2982291))

(assert (= (and b!2982293 (not c!489869)) b!2982297))

(assert (= (and b!2982297 (not res!1229909)) b!2982294))

(assert (= (and b!2982294 res!1229913) b!2982288))

(assert (= (and b!2982288 res!1229910) b!2982285))

(assert (= (and b!2982285 res!1229912) b!2982295))

(assert (= (and b!2982294 (not res!1229906)) b!2982298))

(assert (= (and b!2982298 res!1229908) b!2982296))

(assert (= (and b!2982296 (not res!1229907)) b!2982292))

(assert (= (and b!2982292 (not res!1229911)) b!2982287))

(assert (= (or b!2982286 b!2982288 b!2982296) bm!199171))

(declare-fun m!3342903 () Bool)

(assert (=> b!2982290 m!3342903))

(declare-fun m!3342905 () Bool)

(assert (=> b!2982295 m!3342905))

(declare-fun m!3342907 () Bool)

(assert (=> b!2982285 m!3342907))

(assert (=> b!2982285 m!3342907))

(declare-fun m!3342909 () Bool)

(assert (=> b!2982285 m!3342909))

(assert (=> b!2982289 m!3342905))

(assert (=> b!2982289 m!3342905))

(declare-fun m!3342911 () Bool)

(assert (=> b!2982289 m!3342911))

(assert (=> b!2982289 m!3342907))

(assert (=> b!2982289 m!3342911))

(assert (=> b!2982289 m!3342907))

(declare-fun m!3342913 () Bool)

(assert (=> b!2982289 m!3342913))

(assert (=> d!843706 m!3342775))

(assert (=> d!843706 m!3342869))

(assert (=> bm!199171 m!3342775))

(assert (=> b!2982287 m!3342905))

(assert (=> b!2982292 m!3342907))

(assert (=> b!2982292 m!3342907))

(assert (=> b!2982292 m!3342909))

(assert (=> b!2982032 d!843706))

(declare-fun d!843720 () Bool)

(assert (=> d!843720 (= (isEmptyLang!423 lt!1038424) ((_ is EmptyLang!9309) lt!1038424))))

(assert (=> b!2982026 d!843720))

(declare-fun b!2982575 () Bool)

(declare-fun c!489950 () Bool)

(declare-fun lt!1038506 () Regex!9309)

(declare-fun isEmptyExpr!448 (Regex!9309) Bool)

(assert (=> b!2982575 (= c!489950 (isEmptyExpr!448 lt!1038506))))

(declare-fun e!1875680 () Regex!9309)

(declare-fun e!1875691 () Regex!9309)

(assert (=> b!2982575 (= e!1875680 e!1875691)))

(declare-fun b!2982576 () Bool)

(declare-fun c!489954 () Bool)

(assert (=> b!2982576 (= c!489954 ((_ is EmptyExpr!9309) (reg!9638 r!17423)))))

(declare-fun e!1875687 () Regex!9309)

(declare-fun e!1875693 () Regex!9309)

(assert (=> b!2982576 (= e!1875687 e!1875693)))

(declare-fun b!2982577 () Bool)

(declare-fun e!1875683 () Regex!9309)

(declare-fun e!1875684 () Regex!9309)

(assert (=> b!2982577 (= e!1875683 e!1875684)))

(declare-fun lt!1038505 () Regex!9309)

(declare-fun call!199241 () Regex!9309)

(assert (=> b!2982577 (= lt!1038505 call!199241)))

(declare-fun lt!1038509 () Regex!9309)

(declare-fun call!199239 () Regex!9309)

(assert (=> b!2982577 (= lt!1038509 call!199239)))

(declare-fun c!489957 () Bool)

(declare-fun call!199243 () Bool)

(assert (=> b!2982577 (= c!489957 call!199243)))

(declare-fun b!2982578 () Bool)

(declare-fun e!1875682 () Regex!9309)

(assert (=> b!2982578 (= e!1875682 EmptyExpr!9309)))

(declare-fun b!2982579 () Bool)

(declare-fun e!1875686 () Regex!9309)

(assert (=> b!2982579 (= e!1875686 (Union!9309 lt!1038505 lt!1038509))))

(declare-fun d!843722 () Bool)

(declare-fun e!1875690 () Bool)

(assert (=> d!843722 e!1875690))

(declare-fun res!1229999 () Bool)

(assert (=> d!843722 (=> (not res!1229999) (not e!1875690))))

(declare-fun lt!1038508 () Regex!9309)

(assert (=> d!843722 (= res!1229999 (validRegex!4042 lt!1038508))))

(declare-fun e!1875681 () Regex!9309)

(assert (=> d!843722 (= lt!1038508 e!1875681)))

(declare-fun c!489952 () Bool)

(assert (=> d!843722 (= c!489952 ((_ is EmptyLang!9309) (reg!9638 r!17423)))))

(assert (=> d!843722 (validRegex!4042 (reg!9638 r!17423))))

(assert (=> d!843722 (= (simplify!310 (reg!9638 r!17423)) lt!1038508)))

(declare-fun b!2982580 () Bool)

(assert (=> b!2982580 (= e!1875683 e!1875680)))

(assert (=> b!2982580 (= lt!1038506 call!199239)))

(declare-fun lt!1038504 () Regex!9309)

(assert (=> b!2982580 (= lt!1038504 call!199241)))

(declare-fun res!1230001 () Bool)

(declare-fun call!199245 () Bool)

(assert (=> b!2982580 (= res!1230001 call!199245)))

(declare-fun e!1875692 () Bool)

(assert (=> b!2982580 (=> res!1230001 e!1875692)))

(declare-fun c!489960 () Bool)

(assert (=> b!2982580 (= c!489960 e!1875692)))

(declare-fun b!2982581 () Bool)

(declare-fun c!489953 () Bool)

(assert (=> b!2982581 (= c!489953 ((_ is Union!9309) (reg!9638 r!17423)))))

(declare-fun e!1875688 () Regex!9309)

(assert (=> b!2982581 (= e!1875688 e!1875683)))

(declare-fun bm!199234 () Bool)

(declare-fun c!489951 () Bool)

(declare-fun call!199242 () Bool)

(declare-fun lt!1038507 () Regex!9309)

(assert (=> bm!199234 (= call!199242 (isEmptyExpr!448 (ite c!489951 lt!1038507 lt!1038504)))))

(declare-fun b!2982582 () Bool)

(assert (=> b!2982582 (= e!1875687 (reg!9638 r!17423))))

(declare-fun b!2982583 () Bool)

(declare-fun e!1875685 () Regex!9309)

(assert (=> b!2982583 (= e!1875685 (Concat!14630 lt!1038506 lt!1038504))))

(declare-fun b!2982584 () Bool)

(assert (=> b!2982584 (= e!1875691 lt!1038504)))

(declare-fun b!2982585 () Bool)

(assert (=> b!2982585 (= e!1875690 (= (nullable!2994 lt!1038508) (nullable!2994 (reg!9638 r!17423))))))

(declare-fun b!2982586 () Bool)

(assert (=> b!2982586 (= e!1875692 call!199243)))

(declare-fun bm!199235 () Bool)

(assert (=> bm!199235 (= call!199245 (isEmptyLang!423 (ite c!489953 lt!1038509 lt!1038506)))))

(declare-fun b!2982587 () Bool)

(assert (=> b!2982587 (= e!1875693 e!1875688)))

(assert (=> b!2982587 (= c!489951 ((_ is Star!9309) (reg!9638 r!17423)))))

(declare-fun b!2982588 () Bool)

(assert (=> b!2982588 (= e!1875691 e!1875685)))

(declare-fun c!489956 () Bool)

(assert (=> b!2982588 (= c!489956 call!199242)))

(declare-fun b!2982589 () Bool)

(assert (=> b!2982589 (= e!1875686 lt!1038505)))

(declare-fun bm!199236 () Bool)

(assert (=> bm!199236 (= call!199239 (simplify!310 (ite c!489953 (regTwo!19131 (reg!9638 r!17423)) (regOne!19130 (reg!9638 r!17423)))))))

(declare-fun b!2982590 () Bool)

(declare-fun c!489955 () Bool)

(declare-fun e!1875689 () Bool)

(assert (=> b!2982590 (= c!489955 e!1875689)))

(declare-fun res!1230000 () Bool)

(assert (=> b!2982590 (=> res!1230000 e!1875689)))

(declare-fun call!199244 () Bool)

(assert (=> b!2982590 (= res!1230000 call!199244)))

(declare-fun call!199240 () Regex!9309)

(assert (=> b!2982590 (= lt!1038507 call!199240)))

(assert (=> b!2982590 (= e!1875688 e!1875682)))

(declare-fun bm!199237 () Bool)

(assert (=> bm!199237 (= call!199241 call!199240)))

(declare-fun bm!199238 () Bool)

(assert (=> bm!199238 (= call!199244 (isEmptyLang!423 (ite c!489951 lt!1038507 (ite c!489953 lt!1038505 lt!1038504))))))

(declare-fun bm!199239 () Bool)

(assert (=> bm!199239 (= call!199240 (simplify!310 (ite c!489951 (reg!9638 (reg!9638 r!17423)) (ite c!489953 (regOne!19131 (reg!9638 r!17423)) (regTwo!19130 (reg!9638 r!17423))))))))

(declare-fun b!2982591 () Bool)

(assert (=> b!2982591 (= e!1875680 EmptyLang!9309)))

(declare-fun b!2982592 () Bool)

(assert (=> b!2982592 (= e!1875681 EmptyLang!9309)))

(declare-fun b!2982593 () Bool)

(assert (=> b!2982593 (= e!1875693 EmptyExpr!9309)))

(declare-fun b!2982594 () Bool)

(declare-fun c!489959 () Bool)

(assert (=> b!2982594 (= c!489959 call!199245)))

(assert (=> b!2982594 (= e!1875684 e!1875686)))

(declare-fun b!2982595 () Bool)

(assert (=> b!2982595 (= e!1875685 lt!1038506)))

(declare-fun b!2982596 () Bool)

(assert (=> b!2982596 (= e!1875681 e!1875687)))

(declare-fun c!489958 () Bool)

(assert (=> b!2982596 (= c!489958 ((_ is ElementMatch!9309) (reg!9638 r!17423)))))

(declare-fun bm!199240 () Bool)

(assert (=> bm!199240 (= call!199243 call!199244)))

(declare-fun b!2982597 () Bool)

(assert (=> b!2982597 (= e!1875684 lt!1038509)))

(declare-fun b!2982598 () Bool)

(assert (=> b!2982598 (= e!1875682 (Star!9309 lt!1038507))))

(declare-fun b!2982599 () Bool)

(assert (=> b!2982599 (= e!1875689 call!199242)))

(assert (= (and d!843722 c!489952) b!2982592))

(assert (= (and d!843722 (not c!489952)) b!2982596))

(assert (= (and b!2982596 c!489958) b!2982582))

(assert (= (and b!2982596 (not c!489958)) b!2982576))

(assert (= (and b!2982576 c!489954) b!2982593))

(assert (= (and b!2982576 (not c!489954)) b!2982587))

(assert (= (and b!2982587 c!489951) b!2982590))

(assert (= (and b!2982587 (not c!489951)) b!2982581))

(assert (= (and b!2982590 (not res!1230000)) b!2982599))

(assert (= (and b!2982590 c!489955) b!2982578))

(assert (= (and b!2982590 (not c!489955)) b!2982598))

(assert (= (and b!2982581 c!489953) b!2982577))

(assert (= (and b!2982581 (not c!489953)) b!2982580))

(assert (= (and b!2982577 c!489957) b!2982597))

(assert (= (and b!2982577 (not c!489957)) b!2982594))

(assert (= (and b!2982594 c!489959) b!2982589))

(assert (= (and b!2982594 (not c!489959)) b!2982579))

(assert (= (and b!2982580 (not res!1230001)) b!2982586))

(assert (= (and b!2982580 c!489960) b!2982591))

(assert (= (and b!2982580 (not c!489960)) b!2982575))

(assert (= (and b!2982575 c!489950) b!2982584))

(assert (= (and b!2982575 (not c!489950)) b!2982588))

(assert (= (and b!2982588 c!489956) b!2982595))

(assert (= (and b!2982588 (not c!489956)) b!2982583))

(assert (= (or b!2982577 b!2982580) bm!199237))

(assert (= (or b!2982577 b!2982580) bm!199236))

(assert (= (or b!2982577 b!2982586) bm!199240))

(assert (= (or b!2982594 b!2982580) bm!199235))

(assert (= (or b!2982599 b!2982588) bm!199234))

(assert (= (or b!2982590 bm!199237) bm!199239))

(assert (= (or b!2982590 bm!199240) bm!199238))

(assert (= (and d!843722 res!1229999) b!2982585))

(declare-fun m!3343035 () Bool)

(assert (=> bm!199234 m!3343035))

(declare-fun m!3343037 () Bool)

(assert (=> bm!199235 m!3343037))

(declare-fun m!3343039 () Bool)

(assert (=> d!843722 m!3343039))

(assert (=> d!843722 m!3342789))

(declare-fun m!3343041 () Bool)

(assert (=> bm!199236 m!3343041))

(declare-fun m!3343043 () Bool)

(assert (=> b!2982575 m!3343043))

(declare-fun m!3343045 () Bool)

(assert (=> bm!199238 m!3343045))

(declare-fun m!3343047 () Bool)

(assert (=> b!2982585 m!3343047))

(declare-fun m!3343049 () Bool)

(assert (=> b!2982585 m!3343049))

(declare-fun m!3343051 () Bool)

(assert (=> bm!199239 m!3343051))

(assert (=> b!2982026 d!843722))

(declare-fun b!2982600 () Bool)

(declare-fun res!1230008 () Bool)

(declare-fun e!1875699 () Bool)

(assert (=> b!2982600 (=> (not res!1230008) (not e!1875699))))

(assert (=> b!2982600 (= res!1230008 (isEmpty!19309 (tail!4879 (_2!20110 lt!1038420))))))

(declare-fun b!2982601 () Bool)

(declare-fun e!1875696 () Bool)

(declare-fun lt!1038510 () Bool)

(declare-fun call!199246 () Bool)

(assert (=> b!2982601 (= e!1875696 (= lt!1038510 call!199246))))

(declare-fun b!2982602 () Bool)

(declare-fun e!1875700 () Bool)

(assert (=> b!2982602 (= e!1875700 (not (= (head!6653 (_2!20110 lt!1038420)) (c!489801 lt!1038416))))))

(declare-fun b!2982603 () Bool)

(declare-fun res!1230006 () Bool)

(assert (=> b!2982603 (=> (not res!1230006) (not e!1875699))))

(assert (=> b!2982603 (= res!1230006 (not call!199246))))

(declare-fun b!2982605 () Bool)

(declare-fun e!1875694 () Bool)

(assert (=> b!2982605 (= e!1875694 (nullable!2994 lt!1038416))))

(declare-fun b!2982606 () Bool)

(declare-fun e!1875695 () Bool)

(assert (=> b!2982606 (= e!1875695 (not lt!1038510))))

(declare-fun b!2982607 () Bool)

(declare-fun res!1230007 () Bool)

(assert (=> b!2982607 (=> res!1230007 e!1875700)))

(assert (=> b!2982607 (= res!1230007 (not (isEmpty!19309 (tail!4879 (_2!20110 lt!1038420)))))))

(declare-fun bm!199241 () Bool)

(assert (=> bm!199241 (= call!199246 (isEmpty!19309 (_2!20110 lt!1038420)))))

(declare-fun b!2982604 () Bool)

(assert (=> b!2982604 (= e!1875694 (matchR!4191 (derivativeStep!2594 lt!1038416 (head!6653 (_2!20110 lt!1038420))) (tail!4879 (_2!20110 lt!1038420))))))

(declare-fun d!843760 () Bool)

(assert (=> d!843760 e!1875696))

(declare-fun c!489962 () Bool)

(assert (=> d!843760 (= c!489962 ((_ is EmptyExpr!9309) lt!1038416))))

(assert (=> d!843760 (= lt!1038510 e!1875694)))

(declare-fun c!489963 () Bool)

(assert (=> d!843760 (= c!489963 (isEmpty!19309 (_2!20110 lt!1038420)))))

(assert (=> d!843760 (validRegex!4042 lt!1038416)))

(assert (=> d!843760 (= (matchR!4191 lt!1038416 (_2!20110 lt!1038420)) lt!1038510)))

(declare-fun b!2982608 () Bool)

(assert (=> b!2982608 (= e!1875696 e!1875695)))

(declare-fun c!489961 () Bool)

(assert (=> b!2982608 (= c!489961 ((_ is EmptyLang!9309) lt!1038416))))

(declare-fun b!2982609 () Bool)

(declare-fun res!1230002 () Bool)

(declare-fun e!1875698 () Bool)

(assert (=> b!2982609 (=> res!1230002 e!1875698)))

(assert (=> b!2982609 (= res!1230002 e!1875699)))

(declare-fun res!1230009 () Bool)

(assert (=> b!2982609 (=> (not res!1230009) (not e!1875699))))

(assert (=> b!2982609 (= res!1230009 lt!1038510)))

(declare-fun b!2982610 () Bool)

(assert (=> b!2982610 (= e!1875699 (= (head!6653 (_2!20110 lt!1038420)) (c!489801 lt!1038416)))))

(declare-fun b!2982611 () Bool)

(declare-fun e!1875697 () Bool)

(assert (=> b!2982611 (= e!1875697 e!1875700)))

(declare-fun res!1230003 () Bool)

(assert (=> b!2982611 (=> res!1230003 e!1875700)))

(assert (=> b!2982611 (= res!1230003 call!199246)))

(declare-fun b!2982612 () Bool)

(declare-fun res!1230005 () Bool)

(assert (=> b!2982612 (=> res!1230005 e!1875698)))

(assert (=> b!2982612 (= res!1230005 (not ((_ is ElementMatch!9309) lt!1038416)))))

(assert (=> b!2982612 (= e!1875695 e!1875698)))

(declare-fun b!2982613 () Bool)

(assert (=> b!2982613 (= e!1875698 e!1875697)))

(declare-fun res!1230004 () Bool)

(assert (=> b!2982613 (=> (not res!1230004) (not e!1875697))))

(assert (=> b!2982613 (= res!1230004 (not lt!1038510))))

(assert (= (and d!843760 c!489963) b!2982605))

(assert (= (and d!843760 (not c!489963)) b!2982604))

(assert (= (and d!843760 c!489962) b!2982601))

(assert (= (and d!843760 (not c!489962)) b!2982608))

(assert (= (and b!2982608 c!489961) b!2982606))

(assert (= (and b!2982608 (not c!489961)) b!2982612))

(assert (= (and b!2982612 (not res!1230005)) b!2982609))

(assert (= (and b!2982609 res!1230009) b!2982603))

(assert (= (and b!2982603 res!1230006) b!2982600))

(assert (= (and b!2982600 res!1230008) b!2982610))

(assert (= (and b!2982609 (not res!1230002)) b!2982613))

(assert (= (and b!2982613 res!1230004) b!2982611))

(assert (= (and b!2982611 (not res!1230003)) b!2982607))

(assert (= (and b!2982607 (not res!1230007)) b!2982602))

(assert (= (or b!2982601 b!2982603 b!2982611) bm!199241))

(assert (=> b!2982605 m!3342903))

(declare-fun m!3343053 () Bool)

(assert (=> b!2982610 m!3343053))

(declare-fun m!3343055 () Bool)

(assert (=> b!2982600 m!3343055))

(assert (=> b!2982600 m!3343055))

(declare-fun m!3343057 () Bool)

(assert (=> b!2982600 m!3343057))

(assert (=> b!2982604 m!3343053))

(assert (=> b!2982604 m!3343053))

(declare-fun m!3343059 () Bool)

(assert (=> b!2982604 m!3343059))

(assert (=> b!2982604 m!3343055))

(assert (=> b!2982604 m!3343059))

(assert (=> b!2982604 m!3343055))

(declare-fun m!3343061 () Bool)

(assert (=> b!2982604 m!3343061))

(declare-fun m!3343063 () Bool)

(assert (=> d!843760 m!3343063))

(assert (=> d!843760 m!3342869))

(assert (=> bm!199241 m!3343063))

(assert (=> b!2982602 m!3343053))

(assert (=> b!2982607 m!3343055))

(assert (=> b!2982607 m!3343055))

(assert (=> b!2982607 m!3343057))

(assert (=> b!2982025 d!843760))

(declare-fun b!2982614 () Bool)

(declare-fun res!1230016 () Bool)

(declare-fun e!1875706 () Bool)

(assert (=> b!2982614 (=> (not res!1230016) (not e!1875706))))

(assert (=> b!2982614 (= res!1230016 (isEmpty!19309 (tail!4879 (_1!20110 lt!1038420))))))

(declare-fun b!2982615 () Bool)

(declare-fun e!1875703 () Bool)

(declare-fun lt!1038511 () Bool)

(declare-fun call!199247 () Bool)

(assert (=> b!2982615 (= e!1875703 (= lt!1038511 call!199247))))

(declare-fun b!2982616 () Bool)

(declare-fun e!1875707 () Bool)

(assert (=> b!2982616 (= e!1875707 (not (= (head!6653 (_1!20110 lt!1038420)) (c!489801 lt!1038424))))))

(declare-fun b!2982617 () Bool)

(declare-fun res!1230014 () Bool)

(assert (=> b!2982617 (=> (not res!1230014) (not e!1875706))))

(assert (=> b!2982617 (= res!1230014 (not call!199247))))

(declare-fun b!2982619 () Bool)

(declare-fun e!1875701 () Bool)

(assert (=> b!2982619 (= e!1875701 (nullable!2994 lt!1038424))))

(declare-fun b!2982620 () Bool)

(declare-fun e!1875702 () Bool)

(assert (=> b!2982620 (= e!1875702 (not lt!1038511))))

(declare-fun b!2982621 () Bool)

(declare-fun res!1230015 () Bool)

(assert (=> b!2982621 (=> res!1230015 e!1875707)))

(assert (=> b!2982621 (= res!1230015 (not (isEmpty!19309 (tail!4879 (_1!20110 lt!1038420)))))))

(declare-fun bm!199242 () Bool)

(assert (=> bm!199242 (= call!199247 (isEmpty!19309 (_1!20110 lt!1038420)))))

(declare-fun b!2982618 () Bool)

(assert (=> b!2982618 (= e!1875701 (matchR!4191 (derivativeStep!2594 lt!1038424 (head!6653 (_1!20110 lt!1038420))) (tail!4879 (_1!20110 lt!1038420))))))

(declare-fun d!843762 () Bool)

(assert (=> d!843762 e!1875703))

(declare-fun c!489965 () Bool)

(assert (=> d!843762 (= c!489965 ((_ is EmptyExpr!9309) lt!1038424))))

(assert (=> d!843762 (= lt!1038511 e!1875701)))

(declare-fun c!489966 () Bool)

(assert (=> d!843762 (= c!489966 (isEmpty!19309 (_1!20110 lt!1038420)))))

(assert (=> d!843762 (validRegex!4042 lt!1038424)))

(assert (=> d!843762 (= (matchR!4191 lt!1038424 (_1!20110 lt!1038420)) lt!1038511)))

(declare-fun b!2982622 () Bool)

(assert (=> b!2982622 (= e!1875703 e!1875702)))

(declare-fun c!489964 () Bool)

(assert (=> b!2982622 (= c!489964 ((_ is EmptyLang!9309) lt!1038424))))

(declare-fun b!2982623 () Bool)

(declare-fun res!1230010 () Bool)

(declare-fun e!1875705 () Bool)

(assert (=> b!2982623 (=> res!1230010 e!1875705)))

(assert (=> b!2982623 (= res!1230010 e!1875706)))

(declare-fun res!1230017 () Bool)

(assert (=> b!2982623 (=> (not res!1230017) (not e!1875706))))

(assert (=> b!2982623 (= res!1230017 lt!1038511)))

(declare-fun b!2982624 () Bool)

(assert (=> b!2982624 (= e!1875706 (= (head!6653 (_1!20110 lt!1038420)) (c!489801 lt!1038424)))))

(declare-fun b!2982625 () Bool)

(declare-fun e!1875704 () Bool)

(assert (=> b!2982625 (= e!1875704 e!1875707)))

(declare-fun res!1230011 () Bool)

(assert (=> b!2982625 (=> res!1230011 e!1875707)))

(assert (=> b!2982625 (= res!1230011 call!199247)))

(declare-fun b!2982626 () Bool)

(declare-fun res!1230013 () Bool)

(assert (=> b!2982626 (=> res!1230013 e!1875705)))

(assert (=> b!2982626 (= res!1230013 (not ((_ is ElementMatch!9309) lt!1038424)))))

(assert (=> b!2982626 (= e!1875702 e!1875705)))

(declare-fun b!2982627 () Bool)

(assert (=> b!2982627 (= e!1875705 e!1875704)))

(declare-fun res!1230012 () Bool)

(assert (=> b!2982627 (=> (not res!1230012) (not e!1875704))))

(assert (=> b!2982627 (= res!1230012 (not lt!1038511))))

(assert (= (and d!843762 c!489966) b!2982619))

(assert (= (and d!843762 (not c!489966)) b!2982618))

(assert (= (and d!843762 c!489965) b!2982615))

(assert (= (and d!843762 (not c!489965)) b!2982622))

(assert (= (and b!2982622 c!489964) b!2982620))

(assert (= (and b!2982622 (not c!489964)) b!2982626))

(assert (= (and b!2982626 (not res!1230013)) b!2982623))

(assert (= (and b!2982623 res!1230017) b!2982617))

(assert (= (and b!2982617 res!1230014) b!2982614))

(assert (= (and b!2982614 res!1230016) b!2982624))

(assert (= (and b!2982623 (not res!1230010)) b!2982627))

(assert (= (and b!2982627 res!1230012) b!2982625))

(assert (= (and b!2982625 (not res!1230011)) b!2982621))

(assert (= (and b!2982621 (not res!1230015)) b!2982616))

(assert (= (or b!2982615 b!2982617 b!2982625) bm!199242))

(declare-fun m!3343065 () Bool)

(assert (=> b!2982619 m!3343065))

(declare-fun m!3343067 () Bool)

(assert (=> b!2982624 m!3343067))

(declare-fun m!3343069 () Bool)

(assert (=> b!2982614 m!3343069))

(assert (=> b!2982614 m!3343069))

(declare-fun m!3343071 () Bool)

(assert (=> b!2982614 m!3343071))

(assert (=> b!2982618 m!3343067))

(assert (=> b!2982618 m!3343067))

(declare-fun m!3343073 () Bool)

(assert (=> b!2982618 m!3343073))

(assert (=> b!2982618 m!3343069))

(assert (=> b!2982618 m!3343073))

(assert (=> b!2982618 m!3343069))

(declare-fun m!3343075 () Bool)

(assert (=> b!2982618 m!3343075))

(declare-fun m!3343077 () Bool)

(assert (=> d!843762 m!3343077))

(declare-fun m!3343079 () Bool)

(assert (=> d!843762 m!3343079))

(assert (=> bm!199242 m!3343077))

(assert (=> b!2982616 m!3343067))

(assert (=> b!2982621 m!3343069))

(assert (=> b!2982621 m!3343069))

(assert (=> b!2982621 m!3343071))

(assert (=> b!2982030 d!843762))

(declare-fun d!843764 () Bool)

(assert (=> d!843764 (= (get!10832 lt!1038413) (v!34843 lt!1038413))))

(assert (=> b!2982030 d!843764))

(declare-fun bs!527255 () Bool)

(declare-fun b!2982631 () Bool)

(assert (= bs!527255 (and b!2982631 b!2982029)))

(declare-fun lambda!111274 () Int)

(assert (=> bs!527255 (not (= lambda!111274 lambda!111249))))

(assert (=> bs!527255 (= (and (= (reg!9638 r!17423) lt!1038424) (= r!17423 lt!1038416)) (= lambda!111274 lambda!111250))))

(declare-fun bs!527256 () Bool)

(assert (= bs!527256 (and b!2982631 b!2982164)))

(assert (=> bs!527256 (= (and (= (reg!9638 r!17423) (reg!9638 lt!1038416)) (= r!17423 lt!1038416)) (= lambda!111274 lambda!111263))))

(declare-fun bs!527257 () Bool)

(assert (= bs!527257 (and b!2982631 b!2982166)))

(assert (=> bs!527257 (not (= lambda!111274 lambda!111266))))

(assert (=> b!2982631 true))

(assert (=> b!2982631 true))

(declare-fun bs!527258 () Bool)

(declare-fun b!2982633 () Bool)

(assert (= bs!527258 (and b!2982633 b!2982166)))

(declare-fun lambda!111275 () Int)

(assert (=> bs!527258 (= (and (= (regOne!19130 r!17423) (regOne!19130 lt!1038416)) (= (regTwo!19130 r!17423) (regTwo!19130 lt!1038416))) (= lambda!111275 lambda!111266))))

(declare-fun bs!527259 () Bool)

(assert (= bs!527259 (and b!2982633 b!2982029)))

(assert (=> bs!527259 (not (= lambda!111275 lambda!111249))))

(assert (=> bs!527259 (not (= lambda!111275 lambda!111250))))

(declare-fun bs!527260 () Bool)

(assert (= bs!527260 (and b!2982633 b!2982631)))

(assert (=> bs!527260 (not (= lambda!111275 lambda!111274))))

(declare-fun bs!527261 () Bool)

(assert (= bs!527261 (and b!2982633 b!2982164)))

(assert (=> bs!527261 (not (= lambda!111275 lambda!111263))))

(assert (=> b!2982633 true))

(assert (=> b!2982633 true))

(declare-fun d!843766 () Bool)

(declare-fun c!489967 () Bool)

(assert (=> d!843766 (= c!489967 ((_ is EmptyExpr!9309) r!17423))))

(declare-fun e!1875710 () Bool)

(assert (=> d!843766 (= (matchRSpec!1446 r!17423 s!11993) e!1875710)))

(declare-fun b!2982628 () Bool)

(declare-fun e!1875708 () Bool)

(declare-fun e!1875714 () Bool)

(assert (=> b!2982628 (= e!1875708 e!1875714)))

(declare-fun c!489970 () Bool)

(assert (=> b!2982628 (= c!489970 ((_ is Star!9309) r!17423))))

(declare-fun bm!199243 () Bool)

(declare-fun call!199248 () Bool)

(assert (=> bm!199243 (= call!199248 (isEmpty!19309 s!11993))))

(declare-fun b!2982629 () Bool)

(assert (=> b!2982629 (= e!1875710 call!199248)))

(declare-fun bm!199244 () Bool)

(declare-fun call!199249 () Bool)

(assert (=> bm!199244 (= call!199249 (Exists!1589 (ite c!489970 lambda!111274 lambda!111275)))))

(declare-fun b!2982630 () Bool)

(declare-fun e!1875711 () Bool)

(assert (=> b!2982630 (= e!1875710 e!1875711)))

(declare-fun res!1230018 () Bool)

(assert (=> b!2982630 (= res!1230018 (not ((_ is EmptyLang!9309) r!17423)))))

(assert (=> b!2982630 (=> (not res!1230018) (not e!1875711))))

(declare-fun e!1875713 () Bool)

(assert (=> b!2982631 (= e!1875713 call!199249)))

(declare-fun b!2982632 () Bool)

(declare-fun e!1875709 () Bool)

(assert (=> b!2982632 (= e!1875709 (= s!11993 (Cons!35050 (c!489801 r!17423) Nil!35050)))))

(assert (=> b!2982633 (= e!1875714 call!199249)))

(declare-fun b!2982634 () Bool)

(declare-fun res!1230019 () Bool)

(assert (=> b!2982634 (=> res!1230019 e!1875713)))

(assert (=> b!2982634 (= res!1230019 call!199248)))

(assert (=> b!2982634 (= e!1875714 e!1875713)))

(declare-fun b!2982635 () Bool)

(declare-fun c!489969 () Bool)

(assert (=> b!2982635 (= c!489969 ((_ is ElementMatch!9309) r!17423))))

(assert (=> b!2982635 (= e!1875711 e!1875709)))

(declare-fun b!2982636 () Bool)

(declare-fun e!1875712 () Bool)

(assert (=> b!2982636 (= e!1875712 (matchRSpec!1446 (regTwo!19131 r!17423) s!11993))))

(declare-fun b!2982637 () Bool)

(assert (=> b!2982637 (= e!1875708 e!1875712)))

(declare-fun res!1230020 () Bool)

(assert (=> b!2982637 (= res!1230020 (matchRSpec!1446 (regOne!19131 r!17423) s!11993))))

(assert (=> b!2982637 (=> res!1230020 e!1875712)))

(declare-fun b!2982638 () Bool)

(declare-fun c!489968 () Bool)

(assert (=> b!2982638 (= c!489968 ((_ is Union!9309) r!17423))))

(assert (=> b!2982638 (= e!1875709 e!1875708)))

(assert (= (and d!843766 c!489967) b!2982629))

(assert (= (and d!843766 (not c!489967)) b!2982630))

(assert (= (and b!2982630 res!1230018) b!2982635))

(assert (= (and b!2982635 c!489969) b!2982632))

(assert (= (and b!2982635 (not c!489969)) b!2982638))

(assert (= (and b!2982638 c!489968) b!2982637))

(assert (= (and b!2982638 (not c!489968)) b!2982628))

(assert (= (and b!2982637 (not res!1230020)) b!2982636))

(assert (= (and b!2982628 c!489970) b!2982634))

(assert (= (and b!2982628 (not c!489970)) b!2982633))

(assert (= (and b!2982634 (not res!1230019)) b!2982631))

(assert (= (or b!2982631 b!2982633) bm!199244))

(assert (= (or b!2982629 b!2982634) bm!199243))

(assert (=> bm!199243 m!3342775))

(declare-fun m!3343081 () Bool)

(assert (=> bm!199244 m!3343081))

(declare-fun m!3343083 () Bool)

(assert (=> b!2982636 m!3343083))

(declare-fun m!3343085 () Bool)

(assert (=> b!2982637 m!3343085))

(assert (=> b!2982024 d!843766))

(declare-fun b!2982639 () Bool)

(declare-fun res!1230027 () Bool)

(declare-fun e!1875720 () Bool)

(assert (=> b!2982639 (=> (not res!1230027) (not e!1875720))))

(assert (=> b!2982639 (= res!1230027 (isEmpty!19309 (tail!4879 s!11993)))))

(declare-fun b!2982640 () Bool)

(declare-fun e!1875717 () Bool)

(declare-fun lt!1038512 () Bool)

(declare-fun call!199250 () Bool)

(assert (=> b!2982640 (= e!1875717 (= lt!1038512 call!199250))))

(declare-fun b!2982641 () Bool)

(declare-fun e!1875721 () Bool)

(assert (=> b!2982641 (= e!1875721 (not (= (head!6653 s!11993) (c!489801 r!17423))))))

(declare-fun b!2982642 () Bool)

(declare-fun res!1230025 () Bool)

(assert (=> b!2982642 (=> (not res!1230025) (not e!1875720))))

(assert (=> b!2982642 (= res!1230025 (not call!199250))))

(declare-fun b!2982644 () Bool)

(declare-fun e!1875715 () Bool)

(assert (=> b!2982644 (= e!1875715 (nullable!2994 r!17423))))

(declare-fun b!2982645 () Bool)

(declare-fun e!1875716 () Bool)

(assert (=> b!2982645 (= e!1875716 (not lt!1038512))))

(declare-fun b!2982646 () Bool)

(declare-fun res!1230026 () Bool)

(assert (=> b!2982646 (=> res!1230026 e!1875721)))

(assert (=> b!2982646 (= res!1230026 (not (isEmpty!19309 (tail!4879 s!11993))))))

(declare-fun bm!199245 () Bool)

(assert (=> bm!199245 (= call!199250 (isEmpty!19309 s!11993))))

(declare-fun b!2982643 () Bool)

(assert (=> b!2982643 (= e!1875715 (matchR!4191 (derivativeStep!2594 r!17423 (head!6653 s!11993)) (tail!4879 s!11993)))))

(declare-fun d!843768 () Bool)

(assert (=> d!843768 e!1875717))

(declare-fun c!489972 () Bool)

(assert (=> d!843768 (= c!489972 ((_ is EmptyExpr!9309) r!17423))))

(assert (=> d!843768 (= lt!1038512 e!1875715)))

(declare-fun c!489973 () Bool)

(assert (=> d!843768 (= c!489973 (isEmpty!19309 s!11993))))

(assert (=> d!843768 (validRegex!4042 r!17423)))

(assert (=> d!843768 (= (matchR!4191 r!17423 s!11993) lt!1038512)))

(declare-fun b!2982647 () Bool)

(assert (=> b!2982647 (= e!1875717 e!1875716)))

(declare-fun c!489971 () Bool)

(assert (=> b!2982647 (= c!489971 ((_ is EmptyLang!9309) r!17423))))

(declare-fun b!2982648 () Bool)

(declare-fun res!1230021 () Bool)

(declare-fun e!1875719 () Bool)

(assert (=> b!2982648 (=> res!1230021 e!1875719)))

(assert (=> b!2982648 (= res!1230021 e!1875720)))

(declare-fun res!1230028 () Bool)

(assert (=> b!2982648 (=> (not res!1230028) (not e!1875720))))

(assert (=> b!2982648 (= res!1230028 lt!1038512)))

(declare-fun b!2982649 () Bool)

(assert (=> b!2982649 (= e!1875720 (= (head!6653 s!11993) (c!489801 r!17423)))))

(declare-fun b!2982650 () Bool)

(declare-fun e!1875718 () Bool)

(assert (=> b!2982650 (= e!1875718 e!1875721)))

(declare-fun res!1230022 () Bool)

(assert (=> b!2982650 (=> res!1230022 e!1875721)))

(assert (=> b!2982650 (= res!1230022 call!199250)))

(declare-fun b!2982651 () Bool)

(declare-fun res!1230024 () Bool)

(assert (=> b!2982651 (=> res!1230024 e!1875719)))

(assert (=> b!2982651 (= res!1230024 (not ((_ is ElementMatch!9309) r!17423)))))

(assert (=> b!2982651 (= e!1875716 e!1875719)))

(declare-fun b!2982652 () Bool)

(assert (=> b!2982652 (= e!1875719 e!1875718)))

(declare-fun res!1230023 () Bool)

(assert (=> b!2982652 (=> (not res!1230023) (not e!1875718))))

(assert (=> b!2982652 (= res!1230023 (not lt!1038512))))

(assert (= (and d!843768 c!489973) b!2982644))

(assert (= (and d!843768 (not c!489973)) b!2982643))

(assert (= (and d!843768 c!489972) b!2982640))

(assert (= (and d!843768 (not c!489972)) b!2982647))

(assert (= (and b!2982647 c!489971) b!2982645))

(assert (= (and b!2982647 (not c!489971)) b!2982651))

(assert (= (and b!2982651 (not res!1230024)) b!2982648))

(assert (= (and b!2982648 res!1230028) b!2982642))

(assert (= (and b!2982642 res!1230025) b!2982639))

(assert (= (and b!2982639 res!1230027) b!2982649))

(assert (= (and b!2982648 (not res!1230021)) b!2982652))

(assert (= (and b!2982652 res!1230023) b!2982650))

(assert (= (and b!2982650 (not res!1230022)) b!2982646))

(assert (= (and b!2982646 (not res!1230026)) b!2982641))

(assert (= (or b!2982640 b!2982642 b!2982650) bm!199245))

(declare-fun m!3343087 () Bool)

(assert (=> b!2982644 m!3343087))

(assert (=> b!2982649 m!3342905))

(assert (=> b!2982639 m!3342907))

(assert (=> b!2982639 m!3342907))

(assert (=> b!2982639 m!3342909))

(assert (=> b!2982643 m!3342905))

(assert (=> b!2982643 m!3342905))

(declare-fun m!3343089 () Bool)

(assert (=> b!2982643 m!3343089))

(assert (=> b!2982643 m!3342907))

(assert (=> b!2982643 m!3343089))

(assert (=> b!2982643 m!3342907))

(declare-fun m!3343091 () Bool)

(assert (=> b!2982643 m!3343091))

(assert (=> d!843768 m!3342775))

(assert (=> d!843768 m!3342819))

(assert (=> bm!199245 m!3342775))

(assert (=> b!2982641 m!3342905))

(assert (=> b!2982646 m!3342907))

(assert (=> b!2982646 m!3342907))

(assert (=> b!2982646 m!3342909))

(assert (=> b!2982024 d!843768))

(declare-fun d!843770 () Bool)

(assert (=> d!843770 (= (matchR!4191 r!17423 s!11993) (matchRSpec!1446 r!17423 s!11993))))

(declare-fun lt!1038513 () Unit!49003)

(assert (=> d!843770 (= lt!1038513 (choose!17670 r!17423 s!11993))))

(assert (=> d!843770 (validRegex!4042 r!17423)))

(assert (=> d!843770 (= (mainMatchTheorem!1446 r!17423 s!11993) lt!1038513)))

(declare-fun bs!527262 () Bool)

(assert (= bs!527262 d!843770))

(assert (=> bs!527262 m!3342783))

(assert (=> bs!527262 m!3342781))

(declare-fun m!3343093 () Bool)

(assert (=> bs!527262 m!3343093))

(assert (=> bs!527262 m!3342819))

(assert (=> b!2982024 d!843770))

(declare-fun d!843772 () Bool)

(declare-fun choose!17672 (Int) Bool)

(assert (=> d!843772 (= (Exists!1589 lambda!111250) (choose!17672 lambda!111250))))

(declare-fun bs!527263 () Bool)

(assert (= bs!527263 d!843772))

(declare-fun m!3343095 () Bool)

(assert (=> bs!527263 m!3343095))

(assert (=> b!2982029 d!843772))

(declare-fun d!843774 () Bool)

(assert (=> d!843774 (= (Exists!1589 lambda!111249) (choose!17672 lambda!111249))))

(declare-fun bs!527264 () Bool)

(assert (= bs!527264 d!843774))

(declare-fun m!3343097 () Bool)

(assert (=> bs!527264 m!3343097))

(assert (=> b!2982029 d!843774))

(declare-fun d!843776 () Bool)

(declare-fun e!1875734 () Bool)

(assert (=> d!843776 e!1875734))

(declare-fun res!1230040 () Bool)

(assert (=> d!843776 (=> res!1230040 e!1875734)))

(declare-fun e!1875735 () Bool)

(assert (=> d!843776 (= res!1230040 e!1875735)))

(declare-fun res!1230041 () Bool)

(assert (=> d!843776 (=> (not res!1230041) (not e!1875735))))

(declare-fun lt!1038522 () Option!6710)

(assert (=> d!843776 (= res!1230041 (isDefined!5261 lt!1038522))))

(declare-fun e!1875736 () Option!6710)

(assert (=> d!843776 (= lt!1038522 e!1875736)))

(declare-fun c!489978 () Bool)

(declare-fun e!1875732 () Bool)

(assert (=> d!843776 (= c!489978 e!1875732)))

(declare-fun res!1230043 () Bool)

(assert (=> d!843776 (=> (not res!1230043) (not e!1875732))))

(assert (=> d!843776 (= res!1230043 (matchR!4191 lt!1038424 Nil!35050))))

(assert (=> d!843776 (validRegex!4042 lt!1038424)))

(assert (=> d!843776 (= (findConcatSeparation!1104 lt!1038424 lt!1038416 Nil!35050 s!11993 s!11993) lt!1038522)))

(declare-fun b!2982671 () Bool)

(assert (=> b!2982671 (= e!1875734 (not (isDefined!5261 lt!1038522)))))

(declare-fun b!2982672 () Bool)

(declare-fun ++!8371 (List!35174 List!35174) List!35174)

(assert (=> b!2982672 (= e!1875735 (= (++!8371 (_1!20110 (get!10832 lt!1038522)) (_2!20110 (get!10832 lt!1038522))) s!11993))))

(declare-fun b!2982673 () Bool)

(declare-fun res!1230039 () Bool)

(assert (=> b!2982673 (=> (not res!1230039) (not e!1875735))))

(assert (=> b!2982673 (= res!1230039 (matchR!4191 lt!1038416 (_2!20110 (get!10832 lt!1038522))))))

(declare-fun b!2982674 () Bool)

(declare-fun e!1875733 () Option!6710)

(assert (=> b!2982674 (= e!1875736 e!1875733)))

(declare-fun c!489979 () Bool)

(assert (=> b!2982674 (= c!489979 ((_ is Nil!35050) s!11993))))

(declare-fun b!2982675 () Bool)

(declare-fun res!1230042 () Bool)

(assert (=> b!2982675 (=> (not res!1230042) (not e!1875735))))

(assert (=> b!2982675 (= res!1230042 (matchR!4191 lt!1038424 (_1!20110 (get!10832 lt!1038522))))))

(declare-fun b!2982676 () Bool)

(declare-fun lt!1038521 () Unit!49003)

(declare-fun lt!1038520 () Unit!49003)

(assert (=> b!2982676 (= lt!1038521 lt!1038520)))

(assert (=> b!2982676 (= (++!8371 (++!8371 Nil!35050 (Cons!35050 (h!40470 s!11993) Nil!35050)) (t!234239 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!988 (List!35174 C!18804 List!35174 List!35174) Unit!49003)

(assert (=> b!2982676 (= lt!1038520 (lemmaMoveElementToOtherListKeepsConcatEq!988 Nil!35050 (h!40470 s!11993) (t!234239 s!11993) s!11993))))

(assert (=> b!2982676 (= e!1875733 (findConcatSeparation!1104 lt!1038424 lt!1038416 (++!8371 Nil!35050 (Cons!35050 (h!40470 s!11993) Nil!35050)) (t!234239 s!11993) s!11993))))

(declare-fun b!2982677 () Bool)

(assert (=> b!2982677 (= e!1875732 (matchR!4191 lt!1038416 s!11993))))

(declare-fun b!2982678 () Bool)

(assert (=> b!2982678 (= e!1875736 (Some!6709 (tuple2!33957 Nil!35050 s!11993)))))

(declare-fun b!2982679 () Bool)

(assert (=> b!2982679 (= e!1875733 None!6709)))

(assert (= (and d!843776 res!1230043) b!2982677))

(assert (= (and d!843776 c!489978) b!2982678))

(assert (= (and d!843776 (not c!489978)) b!2982674))

(assert (= (and b!2982674 c!489979) b!2982679))

(assert (= (and b!2982674 (not c!489979)) b!2982676))

(assert (= (and d!843776 res!1230041) b!2982675))

(assert (= (and b!2982675 res!1230042) b!2982673))

(assert (= (and b!2982673 res!1230039) b!2982672))

(assert (= (and d!843776 (not res!1230040)) b!2982671))

(declare-fun m!3343099 () Bool)

(assert (=> b!2982672 m!3343099))

(declare-fun m!3343101 () Bool)

(assert (=> b!2982672 m!3343101))

(declare-fun m!3343103 () Bool)

(assert (=> b!2982676 m!3343103))

(assert (=> b!2982676 m!3343103))

(declare-fun m!3343105 () Bool)

(assert (=> b!2982676 m!3343105))

(declare-fun m!3343107 () Bool)

(assert (=> b!2982676 m!3343107))

(assert (=> b!2982676 m!3343103))

(declare-fun m!3343109 () Bool)

(assert (=> b!2982676 m!3343109))

(assert (=> b!2982677 m!3342809))

(assert (=> b!2982673 m!3343099))

(declare-fun m!3343111 () Bool)

(assert (=> b!2982673 m!3343111))

(declare-fun m!3343113 () Bool)

(assert (=> d!843776 m!3343113))

(declare-fun m!3343115 () Bool)

(assert (=> d!843776 m!3343115))

(assert (=> d!843776 m!3343079))

(assert (=> b!2982675 m!3343099))

(declare-fun m!3343117 () Bool)

(assert (=> b!2982675 m!3343117))

(assert (=> b!2982671 m!3343113))

(assert (=> b!2982029 d!843776))

(declare-fun bs!527265 () Bool)

(declare-fun d!843778 () Bool)

(assert (= bs!527265 (and d!843778 b!2982633)))

(declare-fun lambda!111280 () Int)

(assert (=> bs!527265 (not (= lambda!111280 lambda!111275))))

(declare-fun bs!527266 () Bool)

(assert (= bs!527266 (and d!843778 b!2982166)))

(assert (=> bs!527266 (not (= lambda!111280 lambda!111266))))

(declare-fun bs!527267 () Bool)

(assert (= bs!527267 (and d!843778 b!2982029)))

(assert (=> bs!527267 (= (= (Star!9309 lt!1038424) lt!1038416) (= lambda!111280 lambda!111249))))

(assert (=> bs!527267 (not (= lambda!111280 lambda!111250))))

(declare-fun bs!527268 () Bool)

(assert (= bs!527268 (and d!843778 b!2982631)))

(assert (=> bs!527268 (not (= lambda!111280 lambda!111274))))

(declare-fun bs!527269 () Bool)

(assert (= bs!527269 (and d!843778 b!2982164)))

(assert (=> bs!527269 (not (= lambda!111280 lambda!111263))))

(assert (=> d!843778 true))

(assert (=> d!843778 true))

(declare-fun lambda!111281 () Int)

(assert (=> bs!527265 (not (= lambda!111281 lambda!111275))))

(assert (=> bs!527266 (not (= lambda!111281 lambda!111266))))

(assert (=> bs!527267 (not (= lambda!111281 lambda!111249))))

(assert (=> bs!527267 (= (= (Star!9309 lt!1038424) lt!1038416) (= lambda!111281 lambda!111250))))

(declare-fun bs!527270 () Bool)

(assert (= bs!527270 d!843778))

(assert (=> bs!527270 (not (= lambda!111281 lambda!111280))))

(assert (=> bs!527268 (= (and (= lt!1038424 (reg!9638 r!17423)) (= (Star!9309 lt!1038424) r!17423)) (= lambda!111281 lambda!111274))))

(assert (=> bs!527269 (= (and (= lt!1038424 (reg!9638 lt!1038416)) (= (Star!9309 lt!1038424) lt!1038416)) (= lambda!111281 lambda!111263))))

(assert (=> d!843778 true))

(assert (=> d!843778 true))

(assert (=> d!843778 (= (Exists!1589 lambda!111280) (Exists!1589 lambda!111281))))

(declare-fun lt!1038525 () Unit!49003)

(declare-fun choose!17673 (Regex!9309 List!35174) Unit!49003)

(assert (=> d!843778 (= lt!1038525 (choose!17673 lt!1038424 s!11993))))

(assert (=> d!843778 (validRegex!4042 lt!1038424)))

(assert (=> d!843778 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!274 lt!1038424 s!11993) lt!1038525)))

(declare-fun m!3343119 () Bool)

(assert (=> bs!527270 m!3343119))

(declare-fun m!3343121 () Bool)

(assert (=> bs!527270 m!3343121))

(declare-fun m!3343123 () Bool)

(assert (=> bs!527270 m!3343123))

(assert (=> bs!527270 m!3343079))

(assert (=> b!2982029 d!843778))

(declare-fun d!843780 () Bool)

(declare-fun isEmpty!19311 (Option!6710) Bool)

(assert (=> d!843780 (= (isDefined!5261 lt!1038413) (not (isEmpty!19311 lt!1038413)))))

(declare-fun bs!527271 () Bool)

(assert (= bs!527271 d!843780))

(declare-fun m!3343125 () Bool)

(assert (=> bs!527271 m!3343125))

(assert (=> b!2982029 d!843780))

(declare-fun bs!527272 () Bool)

(declare-fun d!843782 () Bool)

(assert (= bs!527272 (and d!843782 b!2982633)))

(declare-fun lambda!111284 () Int)

(assert (=> bs!527272 (not (= lambda!111284 lambda!111275))))

(declare-fun bs!527273 () Bool)

(assert (= bs!527273 (and d!843782 b!2982166)))

(assert (=> bs!527273 (not (= lambda!111284 lambda!111266))))

(declare-fun bs!527274 () Bool)

(assert (= bs!527274 (and d!843782 b!2982029)))

(assert (=> bs!527274 (= lambda!111284 lambda!111249)))

(assert (=> bs!527274 (not (= lambda!111284 lambda!111250))))

(declare-fun bs!527275 () Bool)

(assert (= bs!527275 (and d!843782 d!843778)))

(assert (=> bs!527275 (not (= lambda!111284 lambda!111281))))

(assert (=> bs!527275 (= (= lt!1038416 (Star!9309 lt!1038424)) (= lambda!111284 lambda!111280))))

(declare-fun bs!527276 () Bool)

(assert (= bs!527276 (and d!843782 b!2982631)))

(assert (=> bs!527276 (not (= lambda!111284 lambda!111274))))

(declare-fun bs!527277 () Bool)

(assert (= bs!527277 (and d!843782 b!2982164)))

(assert (=> bs!527277 (not (= lambda!111284 lambda!111263))))

(assert (=> d!843782 true))

(assert (=> d!843782 true))

(assert (=> d!843782 true))

(assert (=> d!843782 (= (isDefined!5261 (findConcatSeparation!1104 lt!1038424 lt!1038416 Nil!35050 s!11993 s!11993)) (Exists!1589 lambda!111284))))

(declare-fun lt!1038528 () Unit!49003)

(declare-fun choose!17674 (Regex!9309 Regex!9309 List!35174) Unit!49003)

(assert (=> d!843782 (= lt!1038528 (choose!17674 lt!1038424 lt!1038416 s!11993))))

(assert (=> d!843782 (validRegex!4042 lt!1038424)))

(assert (=> d!843782 (= (lemmaFindConcatSeparationEquivalentToExists!882 lt!1038424 lt!1038416 s!11993) lt!1038528)))

(declare-fun bs!527278 () Bool)

(assert (= bs!527278 d!843782))

(declare-fun m!3343127 () Bool)

(assert (=> bs!527278 m!3343127))

(assert (=> bs!527278 m!3343079))

(declare-fun m!3343129 () Bool)

(assert (=> bs!527278 m!3343129))

(assert (=> bs!527278 m!3342825))

(declare-fun m!3343131 () Bool)

(assert (=> bs!527278 m!3343131))

(assert (=> bs!527278 m!3342825))

(assert (=> b!2982029 d!843782))

(declare-fun b!2982694 () Bool)

(declare-fun res!1230064 () Bool)

(declare-fun e!1875748 () Bool)

(assert (=> b!2982694 (=> (not res!1230064) (not e!1875748))))

(assert (=> b!2982694 (= res!1230064 (isEmpty!19309 (tail!4879 (_1!20110 lt!1038420))))))

(declare-fun b!2982695 () Bool)

(declare-fun e!1875745 () Bool)

(declare-fun lt!1038529 () Bool)

(declare-fun call!199251 () Bool)

(assert (=> b!2982695 (= e!1875745 (= lt!1038529 call!199251))))

(declare-fun b!2982696 () Bool)

(declare-fun e!1875749 () Bool)

(assert (=> b!2982696 (= e!1875749 (not (= (head!6653 (_1!20110 lt!1038420)) (c!489801 (reg!9638 r!17423)))))))

(declare-fun b!2982697 () Bool)

(declare-fun res!1230062 () Bool)

(assert (=> b!2982697 (=> (not res!1230062) (not e!1875748))))

(assert (=> b!2982697 (= res!1230062 (not call!199251))))

(declare-fun b!2982699 () Bool)

(declare-fun e!1875743 () Bool)

(assert (=> b!2982699 (= e!1875743 (nullable!2994 (reg!9638 r!17423)))))

(declare-fun b!2982700 () Bool)

(declare-fun e!1875744 () Bool)

(assert (=> b!2982700 (= e!1875744 (not lt!1038529))))

(declare-fun b!2982701 () Bool)

(declare-fun res!1230063 () Bool)

(assert (=> b!2982701 (=> res!1230063 e!1875749)))

(assert (=> b!2982701 (= res!1230063 (not (isEmpty!19309 (tail!4879 (_1!20110 lt!1038420)))))))

(declare-fun bm!199246 () Bool)

(assert (=> bm!199246 (= call!199251 (isEmpty!19309 (_1!20110 lt!1038420)))))

(declare-fun b!2982698 () Bool)

(assert (=> b!2982698 (= e!1875743 (matchR!4191 (derivativeStep!2594 (reg!9638 r!17423) (head!6653 (_1!20110 lt!1038420))) (tail!4879 (_1!20110 lt!1038420))))))

(declare-fun d!843784 () Bool)

(assert (=> d!843784 e!1875745))

(declare-fun c!489981 () Bool)

(assert (=> d!843784 (= c!489981 ((_ is EmptyExpr!9309) (reg!9638 r!17423)))))

(assert (=> d!843784 (= lt!1038529 e!1875743)))

(declare-fun c!489982 () Bool)

(assert (=> d!843784 (= c!489982 (isEmpty!19309 (_1!20110 lt!1038420)))))

(assert (=> d!843784 (validRegex!4042 (reg!9638 r!17423))))

(assert (=> d!843784 (= (matchR!4191 (reg!9638 r!17423) (_1!20110 lt!1038420)) lt!1038529)))

(declare-fun b!2982702 () Bool)

(assert (=> b!2982702 (= e!1875745 e!1875744)))

(declare-fun c!489980 () Bool)

(assert (=> b!2982702 (= c!489980 ((_ is EmptyLang!9309) (reg!9638 r!17423)))))

(declare-fun b!2982703 () Bool)

(declare-fun res!1230058 () Bool)

(declare-fun e!1875747 () Bool)

(assert (=> b!2982703 (=> res!1230058 e!1875747)))

(assert (=> b!2982703 (= res!1230058 e!1875748)))

(declare-fun res!1230065 () Bool)

(assert (=> b!2982703 (=> (not res!1230065) (not e!1875748))))

(assert (=> b!2982703 (= res!1230065 lt!1038529)))

(declare-fun b!2982704 () Bool)

(assert (=> b!2982704 (= e!1875748 (= (head!6653 (_1!20110 lt!1038420)) (c!489801 (reg!9638 r!17423))))))

(declare-fun b!2982705 () Bool)

(declare-fun e!1875746 () Bool)

(assert (=> b!2982705 (= e!1875746 e!1875749)))

(declare-fun res!1230059 () Bool)

(assert (=> b!2982705 (=> res!1230059 e!1875749)))

(assert (=> b!2982705 (= res!1230059 call!199251)))

(declare-fun b!2982706 () Bool)

(declare-fun res!1230061 () Bool)

(assert (=> b!2982706 (=> res!1230061 e!1875747)))

(assert (=> b!2982706 (= res!1230061 (not ((_ is ElementMatch!9309) (reg!9638 r!17423))))))

(assert (=> b!2982706 (= e!1875744 e!1875747)))

(declare-fun b!2982707 () Bool)

(assert (=> b!2982707 (= e!1875747 e!1875746)))

(declare-fun res!1230060 () Bool)

(assert (=> b!2982707 (=> (not res!1230060) (not e!1875746))))

(assert (=> b!2982707 (= res!1230060 (not lt!1038529))))

(assert (= (and d!843784 c!489982) b!2982699))

(assert (= (and d!843784 (not c!489982)) b!2982698))

(assert (= (and d!843784 c!489981) b!2982695))

(assert (= (and d!843784 (not c!489981)) b!2982702))

(assert (= (and b!2982702 c!489980) b!2982700))

(assert (= (and b!2982702 (not c!489980)) b!2982706))

(assert (= (and b!2982706 (not res!1230061)) b!2982703))

(assert (= (and b!2982703 res!1230065) b!2982697))

(assert (= (and b!2982697 res!1230062) b!2982694))

(assert (= (and b!2982694 res!1230064) b!2982704))

(assert (= (and b!2982703 (not res!1230058)) b!2982707))

(assert (= (and b!2982707 res!1230060) b!2982705))

(assert (= (and b!2982705 (not res!1230059)) b!2982701))

(assert (= (and b!2982701 (not res!1230063)) b!2982696))

(assert (= (or b!2982695 b!2982697 b!2982705) bm!199246))

(assert (=> b!2982699 m!3343049))

(assert (=> b!2982704 m!3343067))

(assert (=> b!2982694 m!3343069))

(assert (=> b!2982694 m!3343069))

(assert (=> b!2982694 m!3343071))

(assert (=> b!2982698 m!3343067))

(assert (=> b!2982698 m!3343067))

(declare-fun m!3343133 () Bool)

(assert (=> b!2982698 m!3343133))

(assert (=> b!2982698 m!3343069))

(assert (=> b!2982698 m!3343133))

(assert (=> b!2982698 m!3343069))

(declare-fun m!3343135 () Bool)

(assert (=> b!2982698 m!3343135))

(assert (=> d!843784 m!3343077))

(assert (=> d!843784 m!3342789))

(assert (=> bm!199246 m!3343077))

(assert (=> b!2982696 m!3343067))

(assert (=> b!2982701 m!3343069))

(assert (=> b!2982701 m!3343069))

(assert (=> b!2982701 m!3343071))

(assert (=> b!2982023 d!843784))

(declare-fun d!843786 () Bool)

(declare-fun lt!1038532 () Int)

(assert (=> d!843786 (>= lt!1038532 0)))

(declare-fun e!1875752 () Int)

(assert (=> d!843786 (= lt!1038532 e!1875752)))

(declare-fun c!489985 () Bool)

(assert (=> d!843786 (= c!489985 ((_ is Nil!35050) s!11993))))

(assert (=> d!843786 (= (size!26481 s!11993) lt!1038532)))

(declare-fun b!2982712 () Bool)

(assert (=> b!2982712 (= e!1875752 0)))

(declare-fun b!2982713 () Bool)

(assert (=> b!2982713 (= e!1875752 (+ 1 (size!26481 (t!234239 s!11993))))))

(assert (= (and d!843786 c!489985) b!2982712))

(assert (= (and d!843786 (not c!489985)) b!2982713))

(declare-fun m!3343137 () Bool)

(assert (=> b!2982713 m!3343137))

(assert (=> b!2982023 d!843786))

(declare-fun b!2982732 () Bool)

(declare-fun e!1875773 () Bool)

(declare-fun call!199258 () Bool)

(assert (=> b!2982732 (= e!1875773 call!199258)))

(declare-fun b!2982733 () Bool)

(declare-fun e!1875770 () Bool)

(declare-fun e!1875767 () Bool)

(assert (=> b!2982733 (= e!1875770 e!1875767)))

(declare-fun c!489991 () Bool)

(assert (=> b!2982733 (= c!489991 ((_ is Star!9309) (reg!9638 r!17423)))))

(declare-fun b!2982734 () Bool)

(declare-fun e!1875768 () Bool)

(assert (=> b!2982734 (= e!1875767 e!1875768)))

(declare-fun c!489990 () Bool)

(assert (=> b!2982734 (= c!489990 ((_ is Union!9309) (reg!9638 r!17423)))))

(declare-fun b!2982735 () Bool)

(assert (=> b!2982735 (= e!1875767 e!1875773)))

(declare-fun res!1230078 () Bool)

(assert (=> b!2982735 (= res!1230078 (not (nullable!2994 (reg!9638 (reg!9638 r!17423)))))))

(assert (=> b!2982735 (=> (not res!1230078) (not e!1875773))))

(declare-fun d!843788 () Bool)

(declare-fun res!1230080 () Bool)

(assert (=> d!843788 (=> res!1230080 e!1875770)))

(assert (=> d!843788 (= res!1230080 ((_ is ElementMatch!9309) (reg!9638 r!17423)))))

(assert (=> d!843788 (= (validRegex!4042 (reg!9638 r!17423)) e!1875770)))

(declare-fun b!2982736 () Bool)

(declare-fun res!1230076 () Bool)

(declare-fun e!1875769 () Bool)

(assert (=> b!2982736 (=> (not res!1230076) (not e!1875769))))

(declare-fun call!199259 () Bool)

(assert (=> b!2982736 (= res!1230076 call!199259)))

(assert (=> b!2982736 (= e!1875768 e!1875769)))

(declare-fun bm!199253 () Bool)

(assert (=> bm!199253 (= call!199259 (validRegex!4042 (ite c!489990 (regOne!19131 (reg!9638 r!17423)) (regTwo!19130 (reg!9638 r!17423)))))))

(declare-fun bm!199254 () Bool)

(declare-fun call!199260 () Bool)

(assert (=> bm!199254 (= call!199260 call!199258)))

(declare-fun b!2982737 () Bool)

(assert (=> b!2982737 (= e!1875769 call!199260)))

(declare-fun b!2982738 () Bool)

(declare-fun e!1875772 () Bool)

(declare-fun e!1875771 () Bool)

(assert (=> b!2982738 (= e!1875772 e!1875771)))

(declare-fun res!1230077 () Bool)

(assert (=> b!2982738 (=> (not res!1230077) (not e!1875771))))

(assert (=> b!2982738 (= res!1230077 call!199260)))

(declare-fun bm!199255 () Bool)

(assert (=> bm!199255 (= call!199258 (validRegex!4042 (ite c!489991 (reg!9638 (reg!9638 r!17423)) (ite c!489990 (regTwo!19131 (reg!9638 r!17423)) (regOne!19130 (reg!9638 r!17423))))))))

(declare-fun b!2982739 () Bool)

(assert (=> b!2982739 (= e!1875771 call!199259)))

(declare-fun b!2982740 () Bool)

(declare-fun res!1230079 () Bool)

(assert (=> b!2982740 (=> res!1230079 e!1875772)))

(assert (=> b!2982740 (= res!1230079 (not ((_ is Concat!14630) (reg!9638 r!17423))))))

(assert (=> b!2982740 (= e!1875768 e!1875772)))

(assert (= (and d!843788 (not res!1230080)) b!2982733))

(assert (= (and b!2982733 c!489991) b!2982735))

(assert (= (and b!2982733 (not c!489991)) b!2982734))

(assert (= (and b!2982735 res!1230078) b!2982732))

(assert (= (and b!2982734 c!489990) b!2982736))

(assert (= (and b!2982734 (not c!489990)) b!2982740))

(assert (= (and b!2982736 res!1230076) b!2982737))

(assert (= (and b!2982740 (not res!1230079)) b!2982738))

(assert (= (and b!2982738 res!1230077) b!2982739))

(assert (= (or b!2982736 b!2982739) bm!199253))

(assert (= (or b!2982737 b!2982738) bm!199254))

(assert (= (or b!2982732 bm!199254) bm!199255))

(declare-fun m!3343139 () Bool)

(assert (=> b!2982735 m!3343139))

(declare-fun m!3343141 () Bool)

(assert (=> bm!199253 m!3343141))

(declare-fun m!3343143 () Bool)

(assert (=> bm!199255 m!3343143))

(assert (=> b!2982023 d!843788))

(declare-fun d!843790 () Bool)

(assert (=> d!843790 (= (matchR!4191 (reg!9638 r!17423) (_1!20110 lt!1038420)) (matchR!4191 (simplify!310 (reg!9638 r!17423)) (_1!20110 lt!1038420)))))

(declare-fun lt!1038535 () Unit!49003)

(declare-fun choose!17675 (Regex!9309 List!35174) Unit!49003)

(assert (=> d!843790 (= lt!1038535 (choose!17675 (reg!9638 r!17423) (_1!20110 lt!1038420)))))

(assert (=> d!843790 (validRegex!4042 (reg!9638 r!17423))))

(assert (=> d!843790 (= (lemmaSimplifySound!174 (reg!9638 r!17423) (_1!20110 lt!1038420)) lt!1038535)))

(declare-fun bs!527279 () Bool)

(assert (= bs!527279 d!843790))

(assert (=> bs!527279 m!3342789))

(assert (=> bs!527279 m!3342795))

(declare-fun m!3343145 () Bool)

(assert (=> bs!527279 m!3343145))

(assert (=> bs!527279 m!3342807))

(assert (=> bs!527279 m!3342807))

(declare-fun m!3343147 () Bool)

(assert (=> bs!527279 m!3343147))

(assert (=> b!2982023 d!843790))

(declare-fun d!843792 () Bool)

(assert (=> d!843792 (= (matchR!4191 lt!1038415 (_2!20110 lt!1038420)) (matchR!4191 (simplify!310 lt!1038415) (_2!20110 lt!1038420)))))

(declare-fun lt!1038536 () Unit!49003)

(assert (=> d!843792 (= lt!1038536 (choose!17675 lt!1038415 (_2!20110 lt!1038420)))))

(assert (=> d!843792 (validRegex!4042 lt!1038415)))

(assert (=> d!843792 (= (lemmaSimplifySound!174 lt!1038415 (_2!20110 lt!1038420)) lt!1038536)))

(declare-fun bs!527280 () Bool)

(assert (= bs!527280 d!843792))

(declare-fun m!3343149 () Bool)

(assert (=> bs!527280 m!3343149))

(assert (=> bs!527280 m!3342787))

(declare-fun m!3343151 () Bool)

(assert (=> bs!527280 m!3343151))

(assert (=> bs!527280 m!3342791))

(assert (=> bs!527280 m!3342791))

(assert (=> bs!527280 m!3342793))

(assert (=> b!2982023 d!843792))

(declare-fun b!2982741 () Bool)

(declare-fun c!489992 () Bool)

(declare-fun lt!1038539 () Regex!9309)

(assert (=> b!2982741 (= c!489992 (isEmptyExpr!448 lt!1038539))))

(declare-fun e!1875774 () Regex!9309)

(declare-fun e!1875785 () Regex!9309)

(assert (=> b!2982741 (= e!1875774 e!1875785)))

(declare-fun b!2982742 () Bool)

(declare-fun c!489996 () Bool)

(assert (=> b!2982742 (= c!489996 ((_ is EmptyExpr!9309) lt!1038415))))

(declare-fun e!1875781 () Regex!9309)

(declare-fun e!1875787 () Regex!9309)

(assert (=> b!2982742 (= e!1875781 e!1875787)))

(declare-fun b!2982743 () Bool)

(declare-fun e!1875777 () Regex!9309)

(declare-fun e!1875778 () Regex!9309)

(assert (=> b!2982743 (= e!1875777 e!1875778)))

(declare-fun lt!1038538 () Regex!9309)

(declare-fun call!199263 () Regex!9309)

(assert (=> b!2982743 (= lt!1038538 call!199263)))

(declare-fun lt!1038542 () Regex!9309)

(declare-fun call!199261 () Regex!9309)

(assert (=> b!2982743 (= lt!1038542 call!199261)))

(declare-fun c!489999 () Bool)

(declare-fun call!199265 () Bool)

(assert (=> b!2982743 (= c!489999 call!199265)))

(declare-fun b!2982744 () Bool)

(declare-fun e!1875776 () Regex!9309)

(assert (=> b!2982744 (= e!1875776 EmptyExpr!9309)))

(declare-fun b!2982745 () Bool)

(declare-fun e!1875780 () Regex!9309)

(assert (=> b!2982745 (= e!1875780 (Union!9309 lt!1038538 lt!1038542))))

(declare-fun d!843794 () Bool)

(declare-fun e!1875784 () Bool)

(assert (=> d!843794 e!1875784))

(declare-fun res!1230081 () Bool)

(assert (=> d!843794 (=> (not res!1230081) (not e!1875784))))

(declare-fun lt!1038541 () Regex!9309)

(assert (=> d!843794 (= res!1230081 (validRegex!4042 lt!1038541))))

(declare-fun e!1875775 () Regex!9309)

(assert (=> d!843794 (= lt!1038541 e!1875775)))

(declare-fun c!489994 () Bool)

(assert (=> d!843794 (= c!489994 ((_ is EmptyLang!9309) lt!1038415))))

(assert (=> d!843794 (validRegex!4042 lt!1038415)))

(assert (=> d!843794 (= (simplify!310 lt!1038415) lt!1038541)))

(declare-fun b!2982746 () Bool)

(assert (=> b!2982746 (= e!1875777 e!1875774)))

(assert (=> b!2982746 (= lt!1038539 call!199261)))

(declare-fun lt!1038537 () Regex!9309)

(assert (=> b!2982746 (= lt!1038537 call!199263)))

(declare-fun res!1230083 () Bool)

(declare-fun call!199267 () Bool)

(assert (=> b!2982746 (= res!1230083 call!199267)))

(declare-fun e!1875786 () Bool)

(assert (=> b!2982746 (=> res!1230083 e!1875786)))

(declare-fun c!490002 () Bool)

(assert (=> b!2982746 (= c!490002 e!1875786)))

(declare-fun b!2982747 () Bool)

(declare-fun c!489995 () Bool)

(assert (=> b!2982747 (= c!489995 ((_ is Union!9309) lt!1038415))))

(declare-fun e!1875782 () Regex!9309)

(assert (=> b!2982747 (= e!1875782 e!1875777)))

(declare-fun call!199264 () Bool)

(declare-fun c!489993 () Bool)

(declare-fun bm!199256 () Bool)

(declare-fun lt!1038540 () Regex!9309)

(assert (=> bm!199256 (= call!199264 (isEmptyExpr!448 (ite c!489993 lt!1038540 lt!1038537)))))

(declare-fun b!2982748 () Bool)

(assert (=> b!2982748 (= e!1875781 lt!1038415)))

(declare-fun b!2982749 () Bool)

(declare-fun e!1875779 () Regex!9309)

(assert (=> b!2982749 (= e!1875779 (Concat!14630 lt!1038539 lt!1038537))))

(declare-fun b!2982750 () Bool)

(assert (=> b!2982750 (= e!1875785 lt!1038537)))

(declare-fun b!2982751 () Bool)

(assert (=> b!2982751 (= e!1875784 (= (nullable!2994 lt!1038541) (nullable!2994 lt!1038415)))))

(declare-fun b!2982752 () Bool)

(assert (=> b!2982752 (= e!1875786 call!199265)))

(declare-fun bm!199257 () Bool)

(assert (=> bm!199257 (= call!199267 (isEmptyLang!423 (ite c!489995 lt!1038542 lt!1038539)))))

(declare-fun b!2982753 () Bool)

(assert (=> b!2982753 (= e!1875787 e!1875782)))

(assert (=> b!2982753 (= c!489993 ((_ is Star!9309) lt!1038415))))

(declare-fun b!2982754 () Bool)

(assert (=> b!2982754 (= e!1875785 e!1875779)))

(declare-fun c!489998 () Bool)

(assert (=> b!2982754 (= c!489998 call!199264)))

(declare-fun b!2982755 () Bool)

(assert (=> b!2982755 (= e!1875780 lt!1038538)))

(declare-fun bm!199258 () Bool)

(assert (=> bm!199258 (= call!199261 (simplify!310 (ite c!489995 (regTwo!19131 lt!1038415) (regOne!19130 lt!1038415))))))

(declare-fun b!2982756 () Bool)

(declare-fun c!489997 () Bool)

(declare-fun e!1875783 () Bool)

(assert (=> b!2982756 (= c!489997 e!1875783)))

(declare-fun res!1230082 () Bool)

(assert (=> b!2982756 (=> res!1230082 e!1875783)))

(declare-fun call!199266 () Bool)

(assert (=> b!2982756 (= res!1230082 call!199266)))

(declare-fun call!199262 () Regex!9309)

(assert (=> b!2982756 (= lt!1038540 call!199262)))

(assert (=> b!2982756 (= e!1875782 e!1875776)))

(declare-fun bm!199259 () Bool)

(assert (=> bm!199259 (= call!199263 call!199262)))

(declare-fun bm!199260 () Bool)

(assert (=> bm!199260 (= call!199266 (isEmptyLang!423 (ite c!489993 lt!1038540 (ite c!489995 lt!1038538 lt!1038537))))))

(declare-fun bm!199261 () Bool)

(assert (=> bm!199261 (= call!199262 (simplify!310 (ite c!489993 (reg!9638 lt!1038415) (ite c!489995 (regOne!19131 lt!1038415) (regTwo!19130 lt!1038415)))))))

(declare-fun b!2982757 () Bool)

(assert (=> b!2982757 (= e!1875774 EmptyLang!9309)))

(declare-fun b!2982758 () Bool)

(assert (=> b!2982758 (= e!1875775 EmptyLang!9309)))

(declare-fun b!2982759 () Bool)

(assert (=> b!2982759 (= e!1875787 EmptyExpr!9309)))

(declare-fun b!2982760 () Bool)

(declare-fun c!490001 () Bool)

(assert (=> b!2982760 (= c!490001 call!199267)))

(assert (=> b!2982760 (= e!1875778 e!1875780)))

(declare-fun b!2982761 () Bool)

(assert (=> b!2982761 (= e!1875779 lt!1038539)))

(declare-fun b!2982762 () Bool)

(assert (=> b!2982762 (= e!1875775 e!1875781)))

(declare-fun c!490000 () Bool)

(assert (=> b!2982762 (= c!490000 ((_ is ElementMatch!9309) lt!1038415))))

(declare-fun bm!199262 () Bool)

(assert (=> bm!199262 (= call!199265 call!199266)))

(declare-fun b!2982763 () Bool)

(assert (=> b!2982763 (= e!1875778 lt!1038542)))

(declare-fun b!2982764 () Bool)

(assert (=> b!2982764 (= e!1875776 (Star!9309 lt!1038540))))

(declare-fun b!2982765 () Bool)

(assert (=> b!2982765 (= e!1875783 call!199264)))

(assert (= (and d!843794 c!489994) b!2982758))

(assert (= (and d!843794 (not c!489994)) b!2982762))

(assert (= (and b!2982762 c!490000) b!2982748))

(assert (= (and b!2982762 (not c!490000)) b!2982742))

(assert (= (and b!2982742 c!489996) b!2982759))

(assert (= (and b!2982742 (not c!489996)) b!2982753))

(assert (= (and b!2982753 c!489993) b!2982756))

(assert (= (and b!2982753 (not c!489993)) b!2982747))

(assert (= (and b!2982756 (not res!1230082)) b!2982765))

(assert (= (and b!2982756 c!489997) b!2982744))

(assert (= (and b!2982756 (not c!489997)) b!2982764))

(assert (= (and b!2982747 c!489995) b!2982743))

(assert (= (and b!2982747 (not c!489995)) b!2982746))

(assert (= (and b!2982743 c!489999) b!2982763))

(assert (= (and b!2982743 (not c!489999)) b!2982760))

(assert (= (and b!2982760 c!490001) b!2982755))

(assert (= (and b!2982760 (not c!490001)) b!2982745))

(assert (= (and b!2982746 (not res!1230083)) b!2982752))

(assert (= (and b!2982746 c!490002) b!2982757))

(assert (= (and b!2982746 (not c!490002)) b!2982741))

(assert (= (and b!2982741 c!489992) b!2982750))

(assert (= (and b!2982741 (not c!489992)) b!2982754))

(assert (= (and b!2982754 c!489998) b!2982761))

(assert (= (and b!2982754 (not c!489998)) b!2982749))

(assert (= (or b!2982743 b!2982746) bm!199259))

(assert (= (or b!2982743 b!2982746) bm!199258))

(assert (= (or b!2982743 b!2982752) bm!199262))

(assert (= (or b!2982760 b!2982746) bm!199257))

(assert (= (or b!2982765 b!2982754) bm!199256))

(assert (= (or b!2982756 bm!199259) bm!199261))

(assert (= (or b!2982756 bm!199262) bm!199260))

(assert (= (and d!843794 res!1230081) b!2982751))

(declare-fun m!3343153 () Bool)

(assert (=> bm!199256 m!3343153))

(declare-fun m!3343155 () Bool)

(assert (=> bm!199257 m!3343155))

(declare-fun m!3343157 () Bool)

(assert (=> d!843794 m!3343157))

(assert (=> d!843794 m!3343149))

(declare-fun m!3343159 () Bool)

(assert (=> bm!199258 m!3343159))

(declare-fun m!3343161 () Bool)

(assert (=> b!2982741 m!3343161))

(declare-fun m!3343163 () Bool)

(assert (=> bm!199260 m!3343163))

(declare-fun m!3343165 () Bool)

(assert (=> b!2982751 m!3343165))

(declare-fun m!3343167 () Bool)

(assert (=> b!2982751 m!3343167))

(declare-fun m!3343169 () Bool)

(assert (=> bm!199261 m!3343169))

(assert (=> b!2982023 d!843794))

(declare-fun b!2982766 () Bool)

(declare-fun res!1230090 () Bool)

(declare-fun e!1875793 () Bool)

(assert (=> b!2982766 (=> (not res!1230090) (not e!1875793))))

(assert (=> b!2982766 (= res!1230090 (isEmpty!19309 (tail!4879 (_2!20110 lt!1038420))))))

(declare-fun b!2982767 () Bool)

(declare-fun e!1875790 () Bool)

(declare-fun lt!1038543 () Bool)

(declare-fun call!199268 () Bool)

(assert (=> b!2982767 (= e!1875790 (= lt!1038543 call!199268))))

(declare-fun b!2982768 () Bool)

(declare-fun e!1875794 () Bool)

(assert (=> b!2982768 (= e!1875794 (not (= (head!6653 (_2!20110 lt!1038420)) (c!489801 (simplify!310 lt!1038415)))))))

(declare-fun b!2982769 () Bool)

(declare-fun res!1230088 () Bool)

(assert (=> b!2982769 (=> (not res!1230088) (not e!1875793))))

(assert (=> b!2982769 (= res!1230088 (not call!199268))))

(declare-fun b!2982771 () Bool)

(declare-fun e!1875788 () Bool)

(assert (=> b!2982771 (= e!1875788 (nullable!2994 (simplify!310 lt!1038415)))))

(declare-fun b!2982772 () Bool)

(declare-fun e!1875789 () Bool)

(assert (=> b!2982772 (= e!1875789 (not lt!1038543))))

(declare-fun b!2982773 () Bool)

(declare-fun res!1230089 () Bool)

(assert (=> b!2982773 (=> res!1230089 e!1875794)))

(assert (=> b!2982773 (= res!1230089 (not (isEmpty!19309 (tail!4879 (_2!20110 lt!1038420)))))))

(declare-fun bm!199263 () Bool)

(assert (=> bm!199263 (= call!199268 (isEmpty!19309 (_2!20110 lt!1038420)))))

(declare-fun b!2982770 () Bool)

(assert (=> b!2982770 (= e!1875788 (matchR!4191 (derivativeStep!2594 (simplify!310 lt!1038415) (head!6653 (_2!20110 lt!1038420))) (tail!4879 (_2!20110 lt!1038420))))))

(declare-fun d!843796 () Bool)

(assert (=> d!843796 e!1875790))

(declare-fun c!490004 () Bool)

(assert (=> d!843796 (= c!490004 ((_ is EmptyExpr!9309) (simplify!310 lt!1038415)))))

(assert (=> d!843796 (= lt!1038543 e!1875788)))

(declare-fun c!490005 () Bool)

(assert (=> d!843796 (= c!490005 (isEmpty!19309 (_2!20110 lt!1038420)))))

(assert (=> d!843796 (validRegex!4042 (simplify!310 lt!1038415))))

(assert (=> d!843796 (= (matchR!4191 (simplify!310 lt!1038415) (_2!20110 lt!1038420)) lt!1038543)))

(declare-fun b!2982774 () Bool)

(assert (=> b!2982774 (= e!1875790 e!1875789)))

(declare-fun c!490003 () Bool)

(assert (=> b!2982774 (= c!490003 ((_ is EmptyLang!9309) (simplify!310 lt!1038415)))))

(declare-fun b!2982775 () Bool)

(declare-fun res!1230084 () Bool)

(declare-fun e!1875792 () Bool)

(assert (=> b!2982775 (=> res!1230084 e!1875792)))

(assert (=> b!2982775 (= res!1230084 e!1875793)))

(declare-fun res!1230091 () Bool)

(assert (=> b!2982775 (=> (not res!1230091) (not e!1875793))))

(assert (=> b!2982775 (= res!1230091 lt!1038543)))

(declare-fun b!2982776 () Bool)

(assert (=> b!2982776 (= e!1875793 (= (head!6653 (_2!20110 lt!1038420)) (c!489801 (simplify!310 lt!1038415))))))

(declare-fun b!2982777 () Bool)

(declare-fun e!1875791 () Bool)

(assert (=> b!2982777 (= e!1875791 e!1875794)))

(declare-fun res!1230085 () Bool)

(assert (=> b!2982777 (=> res!1230085 e!1875794)))

(assert (=> b!2982777 (= res!1230085 call!199268)))

(declare-fun b!2982778 () Bool)

(declare-fun res!1230087 () Bool)

(assert (=> b!2982778 (=> res!1230087 e!1875792)))

(assert (=> b!2982778 (= res!1230087 (not ((_ is ElementMatch!9309) (simplify!310 lt!1038415))))))

(assert (=> b!2982778 (= e!1875789 e!1875792)))

(declare-fun b!2982779 () Bool)

(assert (=> b!2982779 (= e!1875792 e!1875791)))

(declare-fun res!1230086 () Bool)

(assert (=> b!2982779 (=> (not res!1230086) (not e!1875791))))

(assert (=> b!2982779 (= res!1230086 (not lt!1038543))))

(assert (= (and d!843796 c!490005) b!2982771))

(assert (= (and d!843796 (not c!490005)) b!2982770))

(assert (= (and d!843796 c!490004) b!2982767))

(assert (= (and d!843796 (not c!490004)) b!2982774))

(assert (= (and b!2982774 c!490003) b!2982772))

(assert (= (and b!2982774 (not c!490003)) b!2982778))

(assert (= (and b!2982778 (not res!1230087)) b!2982775))

(assert (= (and b!2982775 res!1230091) b!2982769))

(assert (= (and b!2982769 res!1230088) b!2982766))

(assert (= (and b!2982766 res!1230090) b!2982776))

(assert (= (and b!2982775 (not res!1230084)) b!2982779))

(assert (= (and b!2982779 res!1230086) b!2982777))

(assert (= (and b!2982777 (not res!1230085)) b!2982773))

(assert (= (and b!2982773 (not res!1230089)) b!2982768))

(assert (= (or b!2982767 b!2982769 b!2982777) bm!199263))

(assert (=> b!2982771 m!3342791))

(declare-fun m!3343171 () Bool)

(assert (=> b!2982771 m!3343171))

(assert (=> b!2982776 m!3343053))

(assert (=> b!2982766 m!3343055))

(assert (=> b!2982766 m!3343055))

(assert (=> b!2982766 m!3343057))

(assert (=> b!2982770 m!3343053))

(assert (=> b!2982770 m!3342791))

(assert (=> b!2982770 m!3343053))

(declare-fun m!3343173 () Bool)

(assert (=> b!2982770 m!3343173))

(assert (=> b!2982770 m!3343055))

(assert (=> b!2982770 m!3343173))

(assert (=> b!2982770 m!3343055))

(declare-fun m!3343175 () Bool)

(assert (=> b!2982770 m!3343175))

(assert (=> d!843796 m!3343063))

(assert (=> d!843796 m!3342791))

(declare-fun m!3343177 () Bool)

(assert (=> d!843796 m!3343177))

(assert (=> bm!199263 m!3343063))

(assert (=> b!2982768 m!3343053))

(assert (=> b!2982773 m!3343055))

(assert (=> b!2982773 m!3343055))

(assert (=> b!2982773 m!3343057))

(assert (=> b!2982023 d!843796))

(declare-fun d!843798 () Bool)

(declare-fun lt!1038544 () Int)

(assert (=> d!843798 (>= lt!1038544 0)))

(declare-fun e!1875795 () Int)

(assert (=> d!843798 (= lt!1038544 e!1875795)))

(declare-fun c!490006 () Bool)

(assert (=> d!843798 (= c!490006 ((_ is Nil!35050) (_2!20110 lt!1038420)))))

(assert (=> d!843798 (= (size!26481 (_2!20110 lt!1038420)) lt!1038544)))

(declare-fun b!2982780 () Bool)

(assert (=> b!2982780 (= e!1875795 0)))

(declare-fun b!2982781 () Bool)

(assert (=> b!2982781 (= e!1875795 (+ 1 (size!26481 (t!234239 (_2!20110 lt!1038420)))))))

(assert (= (and d!843798 c!490006) b!2982780))

(assert (= (and d!843798 (not c!490006)) b!2982781))

(declare-fun m!3343179 () Bool)

(assert (=> b!2982781 m!3343179))

(assert (=> b!2982023 d!843798))

(declare-fun b!2982782 () Bool)

(declare-fun res!1230098 () Bool)

(declare-fun e!1875801 () Bool)

(assert (=> b!2982782 (=> (not res!1230098) (not e!1875801))))

(assert (=> b!2982782 (= res!1230098 (isEmpty!19309 (tail!4879 (_2!20110 lt!1038420))))))

(declare-fun b!2982783 () Bool)

(declare-fun e!1875798 () Bool)

(declare-fun lt!1038545 () Bool)

(declare-fun call!199269 () Bool)

(assert (=> b!2982783 (= e!1875798 (= lt!1038545 call!199269))))

(declare-fun b!2982784 () Bool)

(declare-fun e!1875802 () Bool)

(assert (=> b!2982784 (= e!1875802 (not (= (head!6653 (_2!20110 lt!1038420)) (c!489801 lt!1038415))))))

(declare-fun b!2982785 () Bool)

(declare-fun res!1230096 () Bool)

(assert (=> b!2982785 (=> (not res!1230096) (not e!1875801))))

(assert (=> b!2982785 (= res!1230096 (not call!199269))))

(declare-fun b!2982787 () Bool)

(declare-fun e!1875796 () Bool)

(assert (=> b!2982787 (= e!1875796 (nullable!2994 lt!1038415))))

(declare-fun b!2982788 () Bool)

(declare-fun e!1875797 () Bool)

(assert (=> b!2982788 (= e!1875797 (not lt!1038545))))

(declare-fun b!2982789 () Bool)

(declare-fun res!1230097 () Bool)

(assert (=> b!2982789 (=> res!1230097 e!1875802)))

(assert (=> b!2982789 (= res!1230097 (not (isEmpty!19309 (tail!4879 (_2!20110 lt!1038420)))))))

(declare-fun bm!199264 () Bool)

(assert (=> bm!199264 (= call!199269 (isEmpty!19309 (_2!20110 lt!1038420)))))

(declare-fun b!2982786 () Bool)

(assert (=> b!2982786 (= e!1875796 (matchR!4191 (derivativeStep!2594 lt!1038415 (head!6653 (_2!20110 lt!1038420))) (tail!4879 (_2!20110 lt!1038420))))))

(declare-fun d!843800 () Bool)

(assert (=> d!843800 e!1875798))

(declare-fun c!490008 () Bool)

(assert (=> d!843800 (= c!490008 ((_ is EmptyExpr!9309) lt!1038415))))

(assert (=> d!843800 (= lt!1038545 e!1875796)))

(declare-fun c!490009 () Bool)

(assert (=> d!843800 (= c!490009 (isEmpty!19309 (_2!20110 lt!1038420)))))

(assert (=> d!843800 (validRegex!4042 lt!1038415)))

(assert (=> d!843800 (= (matchR!4191 lt!1038415 (_2!20110 lt!1038420)) lt!1038545)))

(declare-fun b!2982790 () Bool)

(assert (=> b!2982790 (= e!1875798 e!1875797)))

(declare-fun c!490007 () Bool)

(assert (=> b!2982790 (= c!490007 ((_ is EmptyLang!9309) lt!1038415))))

(declare-fun b!2982791 () Bool)

(declare-fun res!1230092 () Bool)

(declare-fun e!1875800 () Bool)

(assert (=> b!2982791 (=> res!1230092 e!1875800)))

(assert (=> b!2982791 (= res!1230092 e!1875801)))

(declare-fun res!1230099 () Bool)

(assert (=> b!2982791 (=> (not res!1230099) (not e!1875801))))

(assert (=> b!2982791 (= res!1230099 lt!1038545)))

(declare-fun b!2982792 () Bool)

(assert (=> b!2982792 (= e!1875801 (= (head!6653 (_2!20110 lt!1038420)) (c!489801 lt!1038415)))))

(declare-fun b!2982793 () Bool)

(declare-fun e!1875799 () Bool)

(assert (=> b!2982793 (= e!1875799 e!1875802)))

(declare-fun res!1230093 () Bool)

(assert (=> b!2982793 (=> res!1230093 e!1875802)))

(assert (=> b!2982793 (= res!1230093 call!199269)))

(declare-fun b!2982794 () Bool)

(declare-fun res!1230095 () Bool)

(assert (=> b!2982794 (=> res!1230095 e!1875800)))

(assert (=> b!2982794 (= res!1230095 (not ((_ is ElementMatch!9309) lt!1038415)))))

(assert (=> b!2982794 (= e!1875797 e!1875800)))

(declare-fun b!2982795 () Bool)

(assert (=> b!2982795 (= e!1875800 e!1875799)))

(declare-fun res!1230094 () Bool)

(assert (=> b!2982795 (=> (not res!1230094) (not e!1875799))))

(assert (=> b!2982795 (= res!1230094 (not lt!1038545))))

(assert (= (and d!843800 c!490009) b!2982787))

(assert (= (and d!843800 (not c!490009)) b!2982786))

(assert (= (and d!843800 c!490008) b!2982783))

(assert (= (and d!843800 (not c!490008)) b!2982790))

(assert (= (and b!2982790 c!490007) b!2982788))

(assert (= (and b!2982790 (not c!490007)) b!2982794))

(assert (= (and b!2982794 (not res!1230095)) b!2982791))

(assert (= (and b!2982791 res!1230099) b!2982785))

(assert (= (and b!2982785 res!1230096) b!2982782))

(assert (= (and b!2982782 res!1230098) b!2982792))

(assert (= (and b!2982791 (not res!1230092)) b!2982795))

(assert (= (and b!2982795 res!1230094) b!2982793))

(assert (= (and b!2982793 (not res!1230093)) b!2982789))

(assert (= (and b!2982789 (not res!1230097)) b!2982784))

(assert (= (or b!2982783 b!2982785 b!2982793) bm!199264))

(assert (=> b!2982787 m!3343167))

(assert (=> b!2982792 m!3343053))

(assert (=> b!2982782 m!3343055))

(assert (=> b!2982782 m!3343055))

(assert (=> b!2982782 m!3343057))

(assert (=> b!2982786 m!3343053))

(assert (=> b!2982786 m!3343053))

(declare-fun m!3343181 () Bool)

(assert (=> b!2982786 m!3343181))

(assert (=> b!2982786 m!3343055))

(assert (=> b!2982786 m!3343181))

(assert (=> b!2982786 m!3343055))

(declare-fun m!3343183 () Bool)

(assert (=> b!2982786 m!3343183))

(assert (=> d!843800 m!3343063))

(assert (=> d!843800 m!3343149))

(assert (=> bm!199264 m!3343063))

(assert (=> b!2982784 m!3343053))

(assert (=> b!2982789 m!3343055))

(assert (=> b!2982789 m!3343055))

(assert (=> b!2982789 m!3343057))

(assert (=> b!2982023 d!843800))

(declare-fun b!2982796 () Bool)

(declare-fun e!1875809 () Bool)

(declare-fun call!199270 () Bool)

(assert (=> b!2982796 (= e!1875809 call!199270)))

(declare-fun b!2982797 () Bool)

(declare-fun e!1875806 () Bool)

(declare-fun e!1875803 () Bool)

(assert (=> b!2982797 (= e!1875806 e!1875803)))

(declare-fun c!490011 () Bool)

(assert (=> b!2982797 (= c!490011 ((_ is Star!9309) r!17423))))

(declare-fun b!2982798 () Bool)

(declare-fun e!1875804 () Bool)

(assert (=> b!2982798 (= e!1875803 e!1875804)))

(declare-fun c!490010 () Bool)

(assert (=> b!2982798 (= c!490010 ((_ is Union!9309) r!17423))))

(declare-fun b!2982799 () Bool)

(assert (=> b!2982799 (= e!1875803 e!1875809)))

(declare-fun res!1230102 () Bool)

(assert (=> b!2982799 (= res!1230102 (not (nullable!2994 (reg!9638 r!17423))))))

(assert (=> b!2982799 (=> (not res!1230102) (not e!1875809))))

(declare-fun d!843802 () Bool)

(declare-fun res!1230104 () Bool)

(assert (=> d!843802 (=> res!1230104 e!1875806)))

(assert (=> d!843802 (= res!1230104 ((_ is ElementMatch!9309) r!17423))))

(assert (=> d!843802 (= (validRegex!4042 r!17423) e!1875806)))

(declare-fun b!2982800 () Bool)

(declare-fun res!1230100 () Bool)

(declare-fun e!1875805 () Bool)

(assert (=> b!2982800 (=> (not res!1230100) (not e!1875805))))

(declare-fun call!199271 () Bool)

(assert (=> b!2982800 (= res!1230100 call!199271)))

(assert (=> b!2982800 (= e!1875804 e!1875805)))

(declare-fun bm!199265 () Bool)

(assert (=> bm!199265 (= call!199271 (validRegex!4042 (ite c!490010 (regOne!19131 r!17423) (regTwo!19130 r!17423))))))

(declare-fun bm!199266 () Bool)

(declare-fun call!199272 () Bool)

(assert (=> bm!199266 (= call!199272 call!199270)))

(declare-fun b!2982801 () Bool)

(assert (=> b!2982801 (= e!1875805 call!199272)))

(declare-fun b!2982802 () Bool)

(declare-fun e!1875808 () Bool)

(declare-fun e!1875807 () Bool)

(assert (=> b!2982802 (= e!1875808 e!1875807)))

(declare-fun res!1230101 () Bool)

(assert (=> b!2982802 (=> (not res!1230101) (not e!1875807))))

(assert (=> b!2982802 (= res!1230101 call!199272)))

(declare-fun bm!199267 () Bool)

(assert (=> bm!199267 (= call!199270 (validRegex!4042 (ite c!490011 (reg!9638 r!17423) (ite c!490010 (regTwo!19131 r!17423) (regOne!19130 r!17423)))))))

(declare-fun b!2982803 () Bool)

(assert (=> b!2982803 (= e!1875807 call!199271)))

(declare-fun b!2982804 () Bool)

(declare-fun res!1230103 () Bool)

(assert (=> b!2982804 (=> res!1230103 e!1875808)))

(assert (=> b!2982804 (= res!1230103 (not ((_ is Concat!14630) r!17423)))))

(assert (=> b!2982804 (= e!1875804 e!1875808)))

(assert (= (and d!843802 (not res!1230104)) b!2982797))

(assert (= (and b!2982797 c!490011) b!2982799))

(assert (= (and b!2982797 (not c!490011)) b!2982798))

(assert (= (and b!2982799 res!1230102) b!2982796))

(assert (= (and b!2982798 c!490010) b!2982800))

(assert (= (and b!2982798 (not c!490010)) b!2982804))

(assert (= (and b!2982800 res!1230100) b!2982801))

(assert (= (and b!2982804 (not res!1230103)) b!2982802))

(assert (= (and b!2982802 res!1230101) b!2982803))

(assert (= (or b!2982800 b!2982803) bm!199265))

(assert (= (or b!2982801 b!2982802) bm!199266))

(assert (= (or b!2982796 bm!199266) bm!199267))

(assert (=> b!2982799 m!3343049))

(declare-fun m!3343185 () Bool)

(assert (=> bm!199265 m!3343185))

(declare-fun m!3343187 () Bool)

(assert (=> bm!199267 m!3343187))

(assert (=> start!288176 d!843802))

(declare-fun d!843804 () Bool)

(assert (=> d!843804 (= (matchR!4191 (reg!9638 r!17423) (_1!20110 lt!1038420)) (matchRSpec!1446 (reg!9638 r!17423) (_1!20110 lt!1038420)))))

(declare-fun lt!1038546 () Unit!49003)

(assert (=> d!843804 (= lt!1038546 (choose!17670 (reg!9638 r!17423) (_1!20110 lt!1038420)))))

(assert (=> d!843804 (validRegex!4042 (reg!9638 r!17423))))

(assert (=> d!843804 (= (mainMatchTheorem!1446 (reg!9638 r!17423) (_1!20110 lt!1038420)) lt!1038546)))

(declare-fun bs!527281 () Bool)

(assert (= bs!527281 d!843804))

(assert (=> bs!527281 m!3342795))

(declare-fun m!3343189 () Bool)

(assert (=> bs!527281 m!3343189))

(declare-fun m!3343191 () Bool)

(assert (=> bs!527281 m!3343191))

(assert (=> bs!527281 m!3342789))

(assert (=> b!2982033 d!843804))

(declare-fun b!2982817 () Bool)

(declare-fun e!1875812 () Bool)

(declare-fun tp!949321 () Bool)

(assert (=> b!2982817 (= e!1875812 tp!949321)))

(declare-fun b!2982818 () Bool)

(declare-fun tp!949318 () Bool)

(declare-fun tp!949319 () Bool)

(assert (=> b!2982818 (= e!1875812 (and tp!949318 tp!949319))))

(assert (=> b!2982022 (= tp!949265 e!1875812)))

(declare-fun b!2982815 () Bool)

(assert (=> b!2982815 (= e!1875812 tp_is_empty!16181)))

(declare-fun b!2982816 () Bool)

(declare-fun tp!949320 () Bool)

(declare-fun tp!949322 () Bool)

(assert (=> b!2982816 (= e!1875812 (and tp!949320 tp!949322))))

(assert (= (and b!2982022 ((_ is ElementMatch!9309) (regOne!19131 r!17423))) b!2982815))

(assert (= (and b!2982022 ((_ is Concat!14630) (regOne!19131 r!17423))) b!2982816))

(assert (= (and b!2982022 ((_ is Star!9309) (regOne!19131 r!17423))) b!2982817))

(assert (= (and b!2982022 ((_ is Union!9309) (regOne!19131 r!17423))) b!2982818))

(declare-fun b!2982821 () Bool)

(declare-fun e!1875813 () Bool)

(declare-fun tp!949326 () Bool)

(assert (=> b!2982821 (= e!1875813 tp!949326)))

(declare-fun b!2982822 () Bool)

(declare-fun tp!949323 () Bool)

(declare-fun tp!949324 () Bool)

(assert (=> b!2982822 (= e!1875813 (and tp!949323 tp!949324))))

(assert (=> b!2982022 (= tp!949267 e!1875813)))

(declare-fun b!2982819 () Bool)

(assert (=> b!2982819 (= e!1875813 tp_is_empty!16181)))

(declare-fun b!2982820 () Bool)

(declare-fun tp!949325 () Bool)

(declare-fun tp!949327 () Bool)

(assert (=> b!2982820 (= e!1875813 (and tp!949325 tp!949327))))

(assert (= (and b!2982022 ((_ is ElementMatch!9309) (regTwo!19131 r!17423))) b!2982819))

(assert (= (and b!2982022 ((_ is Concat!14630) (regTwo!19131 r!17423))) b!2982820))

(assert (= (and b!2982022 ((_ is Star!9309) (regTwo!19131 r!17423))) b!2982821))

(assert (= (and b!2982022 ((_ is Union!9309) (regTwo!19131 r!17423))) b!2982822))

(declare-fun b!2982825 () Bool)

(declare-fun e!1875814 () Bool)

(declare-fun tp!949331 () Bool)

(assert (=> b!2982825 (= e!1875814 tp!949331)))

(declare-fun b!2982826 () Bool)

(declare-fun tp!949328 () Bool)

(declare-fun tp!949329 () Bool)

(assert (=> b!2982826 (= e!1875814 (and tp!949328 tp!949329))))

(assert (=> b!2982021 (= tp!949264 e!1875814)))

(declare-fun b!2982823 () Bool)

(assert (=> b!2982823 (= e!1875814 tp_is_empty!16181)))

(declare-fun b!2982824 () Bool)

(declare-fun tp!949330 () Bool)

(declare-fun tp!949332 () Bool)

(assert (=> b!2982824 (= e!1875814 (and tp!949330 tp!949332))))

(assert (= (and b!2982021 ((_ is ElementMatch!9309) (regOne!19130 r!17423))) b!2982823))

(assert (= (and b!2982021 ((_ is Concat!14630) (regOne!19130 r!17423))) b!2982824))

(assert (= (and b!2982021 ((_ is Star!9309) (regOne!19130 r!17423))) b!2982825))

(assert (= (and b!2982021 ((_ is Union!9309) (regOne!19130 r!17423))) b!2982826))

(declare-fun b!2982829 () Bool)

(declare-fun e!1875815 () Bool)

(declare-fun tp!949336 () Bool)

(assert (=> b!2982829 (= e!1875815 tp!949336)))

(declare-fun b!2982830 () Bool)

(declare-fun tp!949333 () Bool)

(declare-fun tp!949334 () Bool)

(assert (=> b!2982830 (= e!1875815 (and tp!949333 tp!949334))))

(assert (=> b!2982021 (= tp!949268 e!1875815)))

(declare-fun b!2982827 () Bool)

(assert (=> b!2982827 (= e!1875815 tp_is_empty!16181)))

(declare-fun b!2982828 () Bool)

(declare-fun tp!949335 () Bool)

(declare-fun tp!949337 () Bool)

(assert (=> b!2982828 (= e!1875815 (and tp!949335 tp!949337))))

(assert (= (and b!2982021 ((_ is ElementMatch!9309) (regTwo!19130 r!17423))) b!2982827))

(assert (= (and b!2982021 ((_ is Concat!14630) (regTwo!19130 r!17423))) b!2982828))

(assert (= (and b!2982021 ((_ is Star!9309) (regTwo!19130 r!17423))) b!2982829))

(assert (= (and b!2982021 ((_ is Union!9309) (regTwo!19130 r!17423))) b!2982830))

(declare-fun b!2982835 () Bool)

(declare-fun e!1875818 () Bool)

(declare-fun tp!949340 () Bool)

(assert (=> b!2982835 (= e!1875818 (and tp_is_empty!16181 tp!949340))))

(assert (=> b!2982031 (= tp!949266 e!1875818)))

(assert (= (and b!2982031 ((_ is Cons!35050) (t!234239 s!11993))) b!2982835))

(declare-fun b!2982838 () Bool)

(declare-fun e!1875819 () Bool)

(declare-fun tp!949344 () Bool)

(assert (=> b!2982838 (= e!1875819 tp!949344)))

(declare-fun b!2982839 () Bool)

(declare-fun tp!949341 () Bool)

(declare-fun tp!949342 () Bool)

(assert (=> b!2982839 (= e!1875819 (and tp!949341 tp!949342))))

(assert (=> b!2982028 (= tp!949269 e!1875819)))

(declare-fun b!2982836 () Bool)

(assert (=> b!2982836 (= e!1875819 tp_is_empty!16181)))

(declare-fun b!2982837 () Bool)

(declare-fun tp!949343 () Bool)

(declare-fun tp!949345 () Bool)

(assert (=> b!2982837 (= e!1875819 (and tp!949343 tp!949345))))

(assert (= (and b!2982028 ((_ is ElementMatch!9309) (reg!9638 r!17423))) b!2982836))

(assert (= (and b!2982028 ((_ is Concat!14630) (reg!9638 r!17423))) b!2982837))

(assert (= (and b!2982028 ((_ is Star!9309) (reg!9638 r!17423))) b!2982838))

(assert (= (and b!2982028 ((_ is Union!9309) (reg!9638 r!17423))) b!2982839))

(check-sat (not d!843722) (not b!2982822) (not d!843770) (not bm!199267) (not d!843796) (not b!2982835) (not b!2982821) (not b!2982295) (not b!2982169) (not b!2982290) (not d!843768) (not b!2982671) (not bm!199244) (not b!2982637) (not b!2982771) (not bm!199242) (not d!843792) (not b!2982575) (not b!2982289) (not b!2982677) (not b!2982646) (not d!843706) (not b!2982776) (not b!2982818) (not bm!199253) tp_is_empty!16181 (not bm!199264) (not bm!199261) (not b!2982698) (not b!2982610) (not b!2982614) (not b!2982799) (not b!2982829) (not b!2982624) (not b!2982699) (not b!2982781) (not b!2982585) (not b!2982170) (not b!2982768) (not d!843782) (not b!2982837) (not b!2982636) (not b!2982616) (not b!2982285) (not b!2982824) (not b!2982605) (not b!2982696) (not bm!199234) (not b!2982649) (not b!2982786) (not b!2982704) (not bm!199246) (not b!2982641) (not b!2982292) (not b!2982826) (not d!843760) (not d!843804) (not b!2982287) (not bm!199238) (not b!2982675) (not b!2982825) (not bm!199258) (not b!2982789) (not d!843772) (not bm!199255) (not b!2982751) (not b!2982643) (not b!2982621) (not b!2982784) (not b!2982694) (not bm!199171) (not b!2982770) (not bm!199239) (not bm!199245) (not b!2982817) (not bm!199256) (not b!2982792) (not b!2982839) (not bm!199257) (not b!2982701) (not bm!199243) (not b!2982816) (not b!2982673) (not bm!199260) (not bm!199168) (not b!2982741) (not b!2982787) (not b!2982782) (not b!2982838) (not bm!199265) (not b!2982607) (not b!2982619) (not b!2982618) (not b!2982830) (not d!843774) (not b!2982644) (not d!843784) (not b!2982828) (not b!2982820) (not bm!199167) (not bm!199236) (not d!843704) (not d!843780) (not d!843800) (not d!843762) (not b!2982604) (not b!2982676) (not d!843790) (not b!2982600) (not b!2982639) (not b!2982602) (not b!2982735) (not bm!199235) (not bm!199241) (not d!843776) (not b!2982713) (not b!2982672) (not d!843778) (not d!843794) (not bm!199263) (not b!2982773) (not b!2982766))
(check-sat)
