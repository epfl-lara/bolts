; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!293186 () Bool)

(assert start!293186)

(declare-fun b!3076823 () Bool)

(assert (=> b!3076823 true))

(assert (=> b!3076823 true))

(declare-fun b!3076818 () Bool)

(declare-fun res!1262515 () Bool)

(declare-fun e!1925032 () Bool)

(assert (=> b!3076818 (=> res!1262515 e!1925032)))

(declare-datatypes ((C!19238 0))(
  ( (C!19239 (val!11655 Int)) )
))
(declare-datatypes ((List!35391 0))(
  ( (Nil!35267) (Cons!35267 (h!40687 C!19238) (t!234456 List!35391)) )
))
(declare-fun s!11993 () List!35391)

(declare-fun isEmpty!19596 (List!35391) Bool)

(assert (=> b!3076818 (= res!1262515 (isEmpty!19596 s!11993))))

(declare-fun b!3076819 () Bool)

(declare-fun e!1925036 () Bool)

(declare-fun e!1925034 () Bool)

(assert (=> b!3076819 (= e!1925036 e!1925034)))

(declare-fun res!1262511 () Bool)

(assert (=> b!3076819 (=> res!1262511 e!1925034)))

(declare-fun lt!1052482 () Bool)

(assert (=> b!3076819 (= res!1262511 (not lt!1052482))))

(declare-datatypes ((Regex!9526 0))(
  ( (ElementMatch!9526 (c!512002 C!19238)) (Concat!14847 (regOne!19564 Regex!9526) (regTwo!19564 Regex!9526)) (EmptyExpr!9526) (Star!9526 (reg!9855 Regex!9526)) (EmptyLang!9526) (Union!9526 (regOne!19565 Regex!9526) (regTwo!19565 Regex!9526)) )
))
(declare-fun r!17423 () Regex!9526)

(declare-fun lt!1052486 () Regex!9526)

(declare-fun matchR!4408 (Regex!9526 List!35391) Bool)

(assert (=> b!3076819 (= (matchR!4408 (regTwo!19564 r!17423) Nil!35267) (matchR!4408 lt!1052486 Nil!35267))))

(declare-datatypes ((Unit!49491 0))(
  ( (Unit!49492) )
))
(declare-fun lt!1052480 () Unit!49491)

(declare-fun lemmaSimplifySound!307 (Regex!9526 List!35391) Unit!49491)

(assert (=> b!3076819 (= lt!1052480 (lemmaSimplifySound!307 (regTwo!19564 r!17423) Nil!35267))))

(declare-fun lt!1052481 () Regex!9526)

(assert (=> b!3076819 (= lt!1052482 (matchR!4408 lt!1052481 s!11993))))

(assert (=> b!3076819 (= lt!1052482 (matchR!4408 (regOne!19564 r!17423) s!11993))))

(declare-fun lt!1052484 () Unit!49491)

(assert (=> b!3076819 (= lt!1052484 (lemmaSimplifySound!307 (regOne!19564 r!17423) s!11993))))

(declare-fun b!3076820 () Bool)

(declare-fun e!1925033 () Bool)

(declare-fun tp_is_empty!16615 () Bool)

(declare-fun tp!969802 () Bool)

(assert (=> b!3076820 (= e!1925033 (and tp_is_empty!16615 tp!969802))))

(declare-fun b!3076821 () Bool)

(declare-fun e!1925035 () Bool)

(declare-fun tp!969801 () Bool)

(declare-fun tp!969799 () Bool)

(assert (=> b!3076821 (= e!1925035 (and tp!969801 tp!969799))))

(declare-fun b!3076822 () Bool)

(declare-fun e!1925037 () Bool)

(assert (=> b!3076822 (= e!1925037 (not e!1925032))))

(declare-fun res!1262512 () Bool)

(assert (=> b!3076822 (=> res!1262512 e!1925032)))

(declare-fun lt!1052483 () Bool)

(assert (=> b!3076822 (= res!1262512 (or lt!1052483 (not (is-Concat!14847 r!17423))))))

(declare-fun matchRSpec!1663 (Regex!9526 List!35391) Bool)

(assert (=> b!3076822 (= lt!1052483 (matchRSpec!1663 r!17423 s!11993))))

(assert (=> b!3076822 (= lt!1052483 (matchR!4408 r!17423 s!11993))))

(declare-fun lt!1052487 () Unit!49491)

(declare-fun mainMatchTheorem!1663 (Regex!9526 List!35391) Unit!49491)

(assert (=> b!3076822 (= lt!1052487 (mainMatchTheorem!1663 r!17423 s!11993))))

(declare-fun validRegex!4259 (Regex!9526) Bool)

(assert (=> b!3076823 (= e!1925034 (validRegex!4259 (regOne!19564 r!17423)))))

(declare-fun lambda!114183 () Int)

(declare-fun Exists!1789 (Int) Bool)

(assert (=> b!3076823 (Exists!1789 lambda!114183)))

(declare-fun lt!1052485 () Unit!49491)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!985 (Regex!9526 Regex!9526 List!35391) Unit!49491)

(assert (=> b!3076823 (= lt!1052485 (lemmaFindConcatSeparationEquivalentToExists!985 (regOne!19564 r!17423) (regTwo!19564 r!17423) s!11993))))

(declare-datatypes ((tuple2!34178 0))(
  ( (tuple2!34179 (_1!20221 List!35391) (_2!20221 List!35391)) )
))
(declare-datatypes ((Option!6821 0))(
  ( (None!6820) (Some!6820 (v!34954 tuple2!34178)) )
))
(declare-fun isDefined!5372 (Option!6821) Bool)

(declare-fun findConcatSeparation!1215 (Regex!9526 Regex!9526 List!35391 List!35391 List!35391) Option!6821)

(assert (=> b!3076823 (isDefined!5372 (findConcatSeparation!1215 (regOne!19564 r!17423) (regTwo!19564 r!17423) Nil!35267 s!11993 s!11993))))

(declare-fun lt!1052479 () Unit!49491)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!35 (Regex!9526 Regex!9526 List!35391 List!35391 List!35391 List!35391 List!35391) Unit!49491)

(assert (=> b!3076823 (= lt!1052479 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!35 (regOne!19564 r!17423) (regTwo!19564 r!17423) s!11993 Nil!35267 s!11993 Nil!35267 s!11993))))

(declare-fun b!3076825 () Bool)

(assert (=> b!3076825 (= e!1925035 tp_is_empty!16615)))

(declare-fun b!3076826 () Bool)

(declare-fun res!1262517 () Bool)

(assert (=> b!3076826 (=> res!1262517 e!1925036)))

(declare-fun isEmptyExpr!583 (Regex!9526) Bool)

(assert (=> b!3076826 (= res!1262517 (not (isEmptyExpr!583 lt!1052486)))))

(declare-fun b!3076827 () Bool)

(declare-fun res!1262518 () Bool)

(assert (=> b!3076827 (=> res!1262518 e!1925036)))

(declare-fun isEmptyLang!577 (Regex!9526) Bool)

(assert (=> b!3076827 (= res!1262518 (isEmptyLang!577 lt!1052486))))

(declare-fun b!3076828 () Bool)

(declare-fun tp!969803 () Bool)

(declare-fun tp!969798 () Bool)

(assert (=> b!3076828 (= e!1925035 (and tp!969803 tp!969798))))

(declare-fun b!3076829 () Bool)

(declare-fun tp!969800 () Bool)

(assert (=> b!3076829 (= e!1925035 tp!969800)))

(declare-fun b!3076830 () Bool)

(assert (=> b!3076830 (= e!1925032 e!1925036)))

(declare-fun res!1262513 () Bool)

(assert (=> b!3076830 (=> res!1262513 e!1925036)))

(assert (=> b!3076830 (= res!1262513 (isEmptyLang!577 lt!1052481))))

(declare-fun simplify!481 (Regex!9526) Regex!9526)

(assert (=> b!3076830 (= lt!1052486 (simplify!481 (regTwo!19564 r!17423)))))

(assert (=> b!3076830 (= lt!1052481 (simplify!481 (regOne!19564 r!17423)))))

(declare-fun res!1262514 () Bool)

(assert (=> start!293186 (=> (not res!1262514) (not e!1925037))))

(assert (=> start!293186 (= res!1262514 (validRegex!4259 r!17423))))

(assert (=> start!293186 e!1925037))

(assert (=> start!293186 e!1925035))

(assert (=> start!293186 e!1925033))

(declare-fun b!3076824 () Bool)

(declare-fun res!1262516 () Bool)

(assert (=> b!3076824 (=> res!1262516 e!1925036)))

(assert (=> b!3076824 (= res!1262516 (isEmptyExpr!583 lt!1052481))))

(assert (= (and start!293186 res!1262514) b!3076822))

(assert (= (and b!3076822 (not res!1262512)) b!3076818))

(assert (= (and b!3076818 (not res!1262515)) b!3076830))

(assert (= (and b!3076830 (not res!1262513)) b!3076827))

(assert (= (and b!3076827 (not res!1262518)) b!3076824))

(assert (= (and b!3076824 (not res!1262516)) b!3076826))

(assert (= (and b!3076826 (not res!1262517)) b!3076819))

(assert (= (and b!3076819 (not res!1262511)) b!3076823))

(assert (= (and start!293186 (is-ElementMatch!9526 r!17423)) b!3076825))

(assert (= (and start!293186 (is-Concat!14847 r!17423)) b!3076828))

(assert (= (and start!293186 (is-Star!9526 r!17423)) b!3076829))

(assert (= (and start!293186 (is-Union!9526 r!17423)) b!3076821))

(assert (= (and start!293186 (is-Cons!35267 s!11993)) b!3076820))

(declare-fun m!3388297 () Bool)

(assert (=> b!3076827 m!3388297))

(declare-fun m!3388299 () Bool)

(assert (=> b!3076830 m!3388299))

(declare-fun m!3388301 () Bool)

(assert (=> b!3076830 m!3388301))

(declare-fun m!3388303 () Bool)

(assert (=> b!3076830 m!3388303))

(declare-fun m!3388305 () Bool)

(assert (=> start!293186 m!3388305))

(declare-fun m!3388307 () Bool)

(assert (=> b!3076824 m!3388307))

(declare-fun m!3388309 () Bool)

(assert (=> b!3076819 m!3388309))

(declare-fun m!3388311 () Bool)

(assert (=> b!3076819 m!3388311))

(declare-fun m!3388313 () Bool)

(assert (=> b!3076819 m!3388313))

(declare-fun m!3388315 () Bool)

(assert (=> b!3076819 m!3388315))

(declare-fun m!3388317 () Bool)

(assert (=> b!3076819 m!3388317))

(declare-fun m!3388319 () Bool)

(assert (=> b!3076819 m!3388319))

(declare-fun m!3388321 () Bool)

(assert (=> b!3076823 m!3388321))

(declare-fun m!3388323 () Bool)

(assert (=> b!3076823 m!3388323))

(declare-fun m!3388325 () Bool)

(assert (=> b!3076823 m!3388325))

(declare-fun m!3388327 () Bool)

(assert (=> b!3076823 m!3388327))

(assert (=> b!3076823 m!3388325))

(declare-fun m!3388329 () Bool)

(assert (=> b!3076823 m!3388329))

(declare-fun m!3388331 () Bool)

(assert (=> b!3076823 m!3388331))

(declare-fun m!3388333 () Bool)

(assert (=> b!3076822 m!3388333))

(declare-fun m!3388335 () Bool)

(assert (=> b!3076822 m!3388335))

(declare-fun m!3388337 () Bool)

(assert (=> b!3076822 m!3388337))

(declare-fun m!3388339 () Bool)

(assert (=> b!3076826 m!3388339))

(declare-fun m!3388341 () Bool)

(assert (=> b!3076818 m!3388341))

(push 1)

(assert (not b!3076818))

(assert (not b!3076826))

(assert (not b!3076830))

(assert (not b!3076829))

(assert (not b!3076819))

(assert (not b!3076822))

(assert (not b!3076828))

(assert tp_is_empty!16615)

(assert (not start!293186))

(assert (not b!3076821))

(assert (not b!3076823))

(assert (not b!3076820))

(assert (not b!3076827))

(assert (not b!3076824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!857051 () Bool)

(assert (=> d!857051 (= (isEmptyLang!577 lt!1052486) (is-EmptyLang!9526 lt!1052486))))

(assert (=> b!3076827 d!857051))

(declare-fun bs!532778 () Bool)

(declare-fun b!3076924 () Bool)

(assert (= bs!532778 (and b!3076924 b!3076823)))

(declare-fun lambda!114191 () Int)

(assert (=> bs!532778 (not (= lambda!114191 lambda!114183))))

(assert (=> b!3076924 true))

(assert (=> b!3076924 true))

(declare-fun bs!532779 () Bool)

(declare-fun b!3076914 () Bool)

(assert (= bs!532779 (and b!3076914 b!3076823)))

(declare-fun lambda!114192 () Int)

(assert (=> bs!532779 (not (= lambda!114192 lambda!114183))))

(declare-fun bs!532780 () Bool)

(assert (= bs!532780 (and b!3076914 b!3076924)))

(assert (=> bs!532780 (not (= lambda!114192 lambda!114191))))

(assert (=> b!3076914 true))

(assert (=> b!3076914 true))

(declare-fun e!1925077 () Bool)

(declare-fun call!214139 () Bool)

(assert (=> b!3076914 (= e!1925077 call!214139)))

(declare-fun b!3076915 () Bool)

(declare-fun e!1925079 () Bool)

(declare-fun e!1925082 () Bool)

(assert (=> b!3076915 (= e!1925079 e!1925082)))

(declare-fun res!1262565 () Bool)

(assert (=> b!3076915 (= res!1262565 (matchRSpec!1663 (regOne!19565 r!17423) s!11993))))

(assert (=> b!3076915 (=> res!1262565 e!1925082)))

(declare-fun b!3076916 () Bool)

(declare-fun e!1925078 () Bool)

(declare-fun e!1925081 () Bool)

(assert (=> b!3076916 (= e!1925078 e!1925081)))

(declare-fun res!1262563 () Bool)

(assert (=> b!3076916 (= res!1262563 (not (is-EmptyLang!9526 r!17423)))))

(assert (=> b!3076916 (=> (not res!1262563) (not e!1925081))))

(declare-fun b!3076917 () Bool)

(declare-fun e!1925080 () Bool)

(assert (=> b!3076917 (= e!1925080 (= s!11993 (Cons!35267 (c!512002 r!17423) Nil!35267)))))

(declare-fun c!512013 () Bool)

(declare-fun bm!214134 () Bool)

(assert (=> bm!214134 (= call!214139 (Exists!1789 (ite c!512013 lambda!114191 lambda!114192)))))

(declare-fun bm!214135 () Bool)

(declare-fun call!214140 () Bool)

(assert (=> bm!214135 (= call!214140 (isEmpty!19596 s!11993))))

(declare-fun b!3076918 () Bool)

(assert (=> b!3076918 (= e!1925078 call!214140)))

(declare-fun b!3076919 () Bool)

(assert (=> b!3076919 (= e!1925082 (matchRSpec!1663 (regTwo!19565 r!17423) s!11993))))

(declare-fun b!3076920 () Bool)

(declare-fun c!512012 () Bool)

(assert (=> b!3076920 (= c!512012 (is-ElementMatch!9526 r!17423))))

(assert (=> b!3076920 (= e!1925081 e!1925080)))

(declare-fun b!3076921 () Bool)

(declare-fun res!1262564 () Bool)

(declare-fun e!1925076 () Bool)

(assert (=> b!3076921 (=> res!1262564 e!1925076)))

(assert (=> b!3076921 (= res!1262564 call!214140)))

(assert (=> b!3076921 (= e!1925077 e!1925076)))

(declare-fun d!857053 () Bool)

(declare-fun c!512015 () Bool)

(assert (=> d!857053 (= c!512015 (is-EmptyExpr!9526 r!17423))))

(assert (=> d!857053 (= (matchRSpec!1663 r!17423 s!11993) e!1925078)))

(declare-fun b!3076922 () Bool)

(assert (=> b!3076922 (= e!1925079 e!1925077)))

(assert (=> b!3076922 (= c!512013 (is-Star!9526 r!17423))))

(declare-fun b!3076923 () Bool)

(declare-fun c!512014 () Bool)

(assert (=> b!3076923 (= c!512014 (is-Union!9526 r!17423))))

(assert (=> b!3076923 (= e!1925080 e!1925079)))

(assert (=> b!3076924 (= e!1925076 call!214139)))

(assert (= (and d!857053 c!512015) b!3076918))

(assert (= (and d!857053 (not c!512015)) b!3076916))

(assert (= (and b!3076916 res!1262563) b!3076920))

(assert (= (and b!3076920 c!512012) b!3076917))

(assert (= (and b!3076920 (not c!512012)) b!3076923))

(assert (= (and b!3076923 c!512014) b!3076915))

(assert (= (and b!3076923 (not c!512014)) b!3076922))

(assert (= (and b!3076915 (not res!1262565)) b!3076919))

(assert (= (and b!3076922 c!512013) b!3076921))

(assert (= (and b!3076922 (not c!512013)) b!3076914))

(assert (= (and b!3076921 (not res!1262564)) b!3076924))

(assert (= (or b!3076924 b!3076914) bm!214134))

(assert (= (or b!3076918 b!3076921) bm!214135))

(declare-fun m!3388389 () Bool)

(assert (=> b!3076915 m!3388389))

(declare-fun m!3388391 () Bool)

(assert (=> bm!214134 m!3388391))

(assert (=> bm!214135 m!3388341))

(declare-fun m!3388393 () Bool)

(assert (=> b!3076919 m!3388393))

(assert (=> b!3076822 d!857053))

(declare-fun b!3076953 () Bool)

(declare-fun res!1262583 () Bool)

(declare-fun e!1925102 () Bool)

(assert (=> b!3076953 (=> (not res!1262583) (not e!1925102))))

(declare-fun call!214143 () Bool)

(assert (=> b!3076953 (= res!1262583 (not call!214143))))

(declare-fun b!3076954 () Bool)

(declare-fun res!1262585 () Bool)

(declare-fun e!1925101 () Bool)

(assert (=> b!3076954 (=> res!1262585 e!1925101)))

(declare-fun tail!5053 (List!35391) List!35391)

(assert (=> b!3076954 (= res!1262585 (not (isEmpty!19596 (tail!5053 s!11993))))))

(declare-fun b!3076955 () Bool)

(declare-fun head!6827 (List!35391) C!19238)

(assert (=> b!3076955 (= e!1925101 (not (= (head!6827 s!11993) (c!512002 r!17423))))))

(declare-fun b!3076956 () Bool)

(declare-fun e!1925100 () Bool)

(declare-fun e!1925097 () Bool)

(assert (=> b!3076956 (= e!1925100 e!1925097)))

(declare-fun res!1262582 () Bool)

(assert (=> b!3076956 (=> (not res!1262582) (not e!1925097))))

(declare-fun lt!1052521 () Bool)

(assert (=> b!3076956 (= res!1262582 (not lt!1052521))))

(declare-fun d!857057 () Bool)

(declare-fun e!1925099 () Bool)

(assert (=> d!857057 e!1925099))

(declare-fun c!512022 () Bool)

(assert (=> d!857057 (= c!512022 (is-EmptyExpr!9526 r!17423))))

(declare-fun e!1925098 () Bool)

(assert (=> d!857057 (= lt!1052521 e!1925098)))

(declare-fun c!512023 () Bool)

(assert (=> d!857057 (= c!512023 (isEmpty!19596 s!11993))))

(assert (=> d!857057 (validRegex!4259 r!17423)))

(assert (=> d!857057 (= (matchR!4408 r!17423 s!11993) lt!1052521)))

(declare-fun b!3076957 () Bool)

(declare-fun derivativeStep!2768 (Regex!9526 C!19238) Regex!9526)

(assert (=> b!3076957 (= e!1925098 (matchR!4408 (derivativeStep!2768 r!17423 (head!6827 s!11993)) (tail!5053 s!11993)))))

(declare-fun b!3076958 () Bool)

(declare-fun e!1925103 () Bool)

(assert (=> b!3076958 (= e!1925099 e!1925103)))

(declare-fun c!512024 () Bool)

(assert (=> b!3076958 (= c!512024 (is-EmptyLang!9526 r!17423))))

(declare-fun b!3076959 () Bool)

(assert (=> b!3076959 (= e!1925099 (= lt!1052521 call!214143))))

(declare-fun b!3076960 () Bool)

(assert (=> b!3076960 (= e!1925102 (= (head!6827 s!11993) (c!512002 r!17423)))))

(declare-fun b!3076961 () Bool)

(declare-fun res!1262587 () Bool)

(assert (=> b!3076961 (=> res!1262587 e!1925100)))

(assert (=> b!3076961 (= res!1262587 (not (is-ElementMatch!9526 r!17423)))))

(assert (=> b!3076961 (= e!1925103 e!1925100)))

(declare-fun bm!214138 () Bool)

(assert (=> bm!214138 (= call!214143 (isEmpty!19596 s!11993))))

(declare-fun b!3076962 () Bool)

(declare-fun res!1262589 () Bool)

(assert (=> b!3076962 (=> (not res!1262589) (not e!1925102))))

(assert (=> b!3076962 (= res!1262589 (isEmpty!19596 (tail!5053 s!11993)))))

(declare-fun b!3076963 () Bool)

(assert (=> b!3076963 (= e!1925097 e!1925101)))

(declare-fun res!1262584 () Bool)

(assert (=> b!3076963 (=> res!1262584 e!1925101)))

(assert (=> b!3076963 (= res!1262584 call!214143)))

(declare-fun b!3076964 () Bool)

(declare-fun res!1262588 () Bool)

(assert (=> b!3076964 (=> res!1262588 e!1925100)))

(assert (=> b!3076964 (= res!1262588 e!1925102)))

(declare-fun res!1262586 () Bool)

(assert (=> b!3076964 (=> (not res!1262586) (not e!1925102))))

(assert (=> b!3076964 (= res!1262586 lt!1052521)))

(declare-fun b!3076965 () Bool)

(assert (=> b!3076965 (= e!1925103 (not lt!1052521))))

(declare-fun b!3076966 () Bool)

(declare-fun nullable!3172 (Regex!9526) Bool)

(assert (=> b!3076966 (= e!1925098 (nullable!3172 r!17423))))

(assert (= (and d!857057 c!512023) b!3076966))

(assert (= (and d!857057 (not c!512023)) b!3076957))

(assert (= (and d!857057 c!512022) b!3076959))

(assert (= (and d!857057 (not c!512022)) b!3076958))

(assert (= (and b!3076958 c!512024) b!3076965))

(assert (= (and b!3076958 (not c!512024)) b!3076961))

(assert (= (and b!3076961 (not res!1262587)) b!3076964))

(assert (= (and b!3076964 res!1262586) b!3076953))

(assert (= (and b!3076953 res!1262583) b!3076962))

(assert (= (and b!3076962 res!1262589) b!3076960))

(assert (= (and b!3076964 (not res!1262588)) b!3076956))

(assert (= (and b!3076956 res!1262582) b!3076963))

(assert (= (and b!3076963 (not res!1262584)) b!3076954))

(assert (= (and b!3076954 (not res!1262585)) b!3076955))

(assert (= (or b!3076959 b!3076953 b!3076963) bm!214138))

(declare-fun m!3388405 () Bool)

(assert (=> b!3076954 m!3388405))

(assert (=> b!3076954 m!3388405))

(declare-fun m!3388407 () Bool)

(assert (=> b!3076954 m!3388407))

(assert (=> d!857057 m!3388341))

(assert (=> d!857057 m!3388305))

(declare-fun m!3388409 () Bool)

(assert (=> b!3076957 m!3388409))

(assert (=> b!3076957 m!3388409))

(declare-fun m!3388411 () Bool)

(assert (=> b!3076957 m!3388411))

(assert (=> b!3076957 m!3388405))

(assert (=> b!3076957 m!3388411))

(assert (=> b!3076957 m!3388405))

(declare-fun m!3388413 () Bool)

(assert (=> b!3076957 m!3388413))

(assert (=> b!3076962 m!3388405))

(assert (=> b!3076962 m!3388405))

(assert (=> b!3076962 m!3388407))

(declare-fun m!3388415 () Bool)

(assert (=> b!3076966 m!3388415))

(assert (=> b!3076955 m!3388409))

(assert (=> bm!214138 m!3388341))

(assert (=> b!3076960 m!3388409))

(assert (=> b!3076822 d!857057))

(declare-fun d!857063 () Bool)

(assert (=> d!857063 (= (matchR!4408 r!17423 s!11993) (matchRSpec!1663 r!17423 s!11993))))

(declare-fun lt!1052524 () Unit!49491)

(declare-fun choose!18227 (Regex!9526 List!35391) Unit!49491)

(assert (=> d!857063 (= lt!1052524 (choose!18227 r!17423 s!11993))))

(assert (=> d!857063 (validRegex!4259 r!17423)))

(assert (=> d!857063 (= (mainMatchTheorem!1663 r!17423 s!11993) lt!1052524)))

(declare-fun bs!532783 () Bool)

(assert (= bs!532783 d!857063))

(assert (=> bs!532783 m!3388335))

(assert (=> bs!532783 m!3388333))

(declare-fun m!3388417 () Bool)

(assert (=> bs!532783 m!3388417))

(assert (=> bs!532783 m!3388305))

(assert (=> b!3076822 d!857063))

(declare-fun d!857065 () Bool)

(assert (=> d!857065 (= (isEmptyExpr!583 lt!1052486) (is-EmptyExpr!9526 lt!1052486))))

(assert (=> b!3076826 d!857065))

(declare-fun b!3077013 () Bool)

(declare-fun e!1925135 () Bool)

(declare-fun call!214151 () Bool)

(assert (=> b!3077013 (= e!1925135 call!214151)))

(declare-fun b!3077014 () Bool)

(declare-fun e!1925136 () Bool)

(declare-fun call!214150 () Bool)

(assert (=> b!3077014 (= e!1925136 call!214150)))

(declare-fun b!3077015 () Bool)

(declare-fun e!1925133 () Bool)

(declare-fun e!1925132 () Bool)

(assert (=> b!3077015 (= e!1925133 e!1925132)))

(declare-fun c!512035 () Bool)

(assert (=> b!3077015 (= c!512035 (is-Star!9526 r!17423))))

(declare-fun call!214152 () Bool)

(declare-fun bm!214145 () Bool)

(declare-fun c!512036 () Bool)

(assert (=> bm!214145 (= call!214152 (validRegex!4259 (ite c!512035 (reg!9855 r!17423) (ite c!512036 (regTwo!19565 r!17423) (regOne!19564 r!17423)))))))

(declare-fun b!3077016 () Bool)

(declare-fun res!1262619 () Bool)

(assert (=> b!3077016 (=> (not res!1262619) (not e!1925135))))

(assert (=> b!3077016 (= res!1262619 call!214150)))

(declare-fun e!1925138 () Bool)

(assert (=> b!3077016 (= e!1925138 e!1925135)))

(declare-fun b!3077017 () Bool)

(declare-fun res!1262620 () Bool)

(declare-fun e!1925137 () Bool)

(assert (=> b!3077017 (=> res!1262620 e!1925137)))

(assert (=> b!3077017 (= res!1262620 (not (is-Concat!14847 r!17423)))))

(assert (=> b!3077017 (= e!1925138 e!1925137)))

(declare-fun b!3077018 () Bool)

(declare-fun e!1925134 () Bool)

(assert (=> b!3077018 (= e!1925132 e!1925134)))

(declare-fun res!1262618 () Bool)

(assert (=> b!3077018 (= res!1262618 (not (nullable!3172 (reg!9855 r!17423))))))

(assert (=> b!3077018 (=> (not res!1262618) (not e!1925134))))

(declare-fun b!3077019 () Bool)

(assert (=> b!3077019 (= e!1925137 e!1925136)))

(declare-fun res!1262616 () Bool)

(assert (=> b!3077019 (=> (not res!1262616) (not e!1925136))))

(assert (=> b!3077019 (= res!1262616 call!214151)))

(declare-fun b!3077020 () Bool)

(assert (=> b!3077020 (= e!1925132 e!1925138)))

(assert (=> b!3077020 (= c!512036 (is-Union!9526 r!17423))))

(declare-fun d!857067 () Bool)

(declare-fun res!1262617 () Bool)

(assert (=> d!857067 (=> res!1262617 e!1925133)))

(assert (=> d!857067 (= res!1262617 (is-ElementMatch!9526 r!17423))))

(assert (=> d!857067 (= (validRegex!4259 r!17423) e!1925133)))

(declare-fun bm!214146 () Bool)

(assert (=> bm!214146 (= call!214150 (validRegex!4259 (ite c!512036 (regOne!19565 r!17423) (regTwo!19564 r!17423))))))

(declare-fun b!3077021 () Bool)

(assert (=> b!3077021 (= e!1925134 call!214152)))

(declare-fun bm!214147 () Bool)

(assert (=> bm!214147 (= call!214151 call!214152)))

(assert (= (and d!857067 (not res!1262617)) b!3077015))

(assert (= (and b!3077015 c!512035) b!3077018))

(assert (= (and b!3077015 (not c!512035)) b!3077020))

(assert (= (and b!3077018 res!1262618) b!3077021))

(assert (= (and b!3077020 c!512036) b!3077016))

(assert (= (and b!3077020 (not c!512036)) b!3077017))

(assert (= (and b!3077016 res!1262619) b!3077013))

(assert (= (and b!3077017 (not res!1262620)) b!3077019))

(assert (= (and b!3077019 res!1262616) b!3077014))

(assert (= (or b!3077016 b!3077014) bm!214146))

(assert (= (or b!3077013 b!3077019) bm!214147))

(assert (= (or b!3077021 bm!214147) bm!214145))

(declare-fun m!3388419 () Bool)

(assert (=> bm!214145 m!3388419))

(declare-fun m!3388421 () Bool)

(assert (=> b!3077018 m!3388421))

(declare-fun m!3388423 () Bool)

(assert (=> bm!214146 m!3388423))

(assert (=> start!293186 d!857067))

(declare-fun d!857069 () Bool)

(assert (=> d!857069 (= (matchR!4408 (regTwo!19564 r!17423) Nil!35267) (matchR!4408 (simplify!481 (regTwo!19564 r!17423)) Nil!35267))))

(declare-fun lt!1052529 () Unit!49491)

(declare-fun choose!18228 (Regex!9526 List!35391) Unit!49491)

(assert (=> d!857069 (= lt!1052529 (choose!18228 (regTwo!19564 r!17423) Nil!35267))))

(assert (=> d!857069 (validRegex!4259 (regTwo!19564 r!17423))))

(assert (=> d!857069 (= (lemmaSimplifySound!307 (regTwo!19564 r!17423) Nil!35267) lt!1052529)))

(declare-fun bs!532784 () Bool)

(assert (= bs!532784 d!857069))

(assert (=> bs!532784 m!3388301))

(declare-fun m!3388425 () Bool)

(assert (=> bs!532784 m!3388425))

(declare-fun m!3388427 () Bool)

(assert (=> bs!532784 m!3388427))

(assert (=> bs!532784 m!3388315))

(declare-fun m!3388429 () Bool)

(assert (=> bs!532784 m!3388429))

(assert (=> bs!532784 m!3388301))

(assert (=> b!3076819 d!857069))

(declare-fun d!857071 () Bool)

(assert (=> d!857071 (= (matchR!4408 (regOne!19564 r!17423) s!11993) (matchR!4408 (simplify!481 (regOne!19564 r!17423)) s!11993))))

(declare-fun lt!1052530 () Unit!49491)

(assert (=> d!857071 (= lt!1052530 (choose!18228 (regOne!19564 r!17423) s!11993))))

(assert (=> d!857071 (validRegex!4259 (regOne!19564 r!17423))))

(assert (=> d!857071 (= (lemmaSimplifySound!307 (regOne!19564 r!17423) s!11993) lt!1052530)))

(declare-fun bs!532785 () Bool)

(assert (= bs!532785 d!857071))

(assert (=> bs!532785 m!3388303))

(declare-fun m!3388431 () Bool)

(assert (=> bs!532785 m!3388431))

(declare-fun m!3388433 () Bool)

(assert (=> bs!532785 m!3388433))

(assert (=> bs!532785 m!3388311))

(assert (=> bs!532785 m!3388323))

(assert (=> bs!532785 m!3388303))

(assert (=> b!3076819 d!857071))

(declare-fun b!3077022 () Bool)

(declare-fun res!1262622 () Bool)

(declare-fun e!1925144 () Bool)

(assert (=> b!3077022 (=> (not res!1262622) (not e!1925144))))

(declare-fun call!214155 () Bool)

(assert (=> b!3077022 (= res!1262622 (not call!214155))))

(declare-fun b!3077023 () Bool)

(declare-fun res!1262624 () Bool)

(declare-fun e!1925143 () Bool)

(assert (=> b!3077023 (=> res!1262624 e!1925143)))

(assert (=> b!3077023 (= res!1262624 (not (isEmpty!19596 (tail!5053 s!11993))))))

(declare-fun b!3077024 () Bool)

(assert (=> b!3077024 (= e!1925143 (not (= (head!6827 s!11993) (c!512002 (regOne!19564 r!17423)))))))

(declare-fun b!3077025 () Bool)

(declare-fun e!1925142 () Bool)

(declare-fun e!1925139 () Bool)

(assert (=> b!3077025 (= e!1925142 e!1925139)))

(declare-fun res!1262621 () Bool)

(assert (=> b!3077025 (=> (not res!1262621) (not e!1925139))))

(declare-fun lt!1052531 () Bool)

(assert (=> b!3077025 (= res!1262621 (not lt!1052531))))

(declare-fun d!857073 () Bool)

(declare-fun e!1925141 () Bool)

(assert (=> d!857073 e!1925141))

(declare-fun c!512037 () Bool)

(assert (=> d!857073 (= c!512037 (is-EmptyExpr!9526 (regOne!19564 r!17423)))))

(declare-fun e!1925140 () Bool)

(assert (=> d!857073 (= lt!1052531 e!1925140)))

(declare-fun c!512038 () Bool)

(assert (=> d!857073 (= c!512038 (isEmpty!19596 s!11993))))

(assert (=> d!857073 (validRegex!4259 (regOne!19564 r!17423))))

(assert (=> d!857073 (= (matchR!4408 (regOne!19564 r!17423) s!11993) lt!1052531)))

(declare-fun b!3077026 () Bool)

(assert (=> b!3077026 (= e!1925140 (matchR!4408 (derivativeStep!2768 (regOne!19564 r!17423) (head!6827 s!11993)) (tail!5053 s!11993)))))

(declare-fun b!3077027 () Bool)

(declare-fun e!1925145 () Bool)

(assert (=> b!3077027 (= e!1925141 e!1925145)))

(declare-fun c!512039 () Bool)

(assert (=> b!3077027 (= c!512039 (is-EmptyLang!9526 (regOne!19564 r!17423)))))

(declare-fun b!3077028 () Bool)

(assert (=> b!3077028 (= e!1925141 (= lt!1052531 call!214155))))

(declare-fun b!3077029 () Bool)

(assert (=> b!3077029 (= e!1925144 (= (head!6827 s!11993) (c!512002 (regOne!19564 r!17423))))))

(declare-fun b!3077030 () Bool)

(declare-fun res!1262626 () Bool)

(assert (=> b!3077030 (=> res!1262626 e!1925142)))

(assert (=> b!3077030 (= res!1262626 (not (is-ElementMatch!9526 (regOne!19564 r!17423))))))

(assert (=> b!3077030 (= e!1925145 e!1925142)))

(declare-fun bm!214150 () Bool)

(assert (=> bm!214150 (= call!214155 (isEmpty!19596 s!11993))))

(declare-fun b!3077031 () Bool)

(declare-fun res!1262628 () Bool)

(assert (=> b!3077031 (=> (not res!1262628) (not e!1925144))))

(assert (=> b!3077031 (= res!1262628 (isEmpty!19596 (tail!5053 s!11993)))))

(declare-fun b!3077032 () Bool)

(assert (=> b!3077032 (= e!1925139 e!1925143)))

(declare-fun res!1262623 () Bool)

(assert (=> b!3077032 (=> res!1262623 e!1925143)))

(assert (=> b!3077032 (= res!1262623 call!214155)))

(declare-fun b!3077033 () Bool)

(declare-fun res!1262627 () Bool)

(assert (=> b!3077033 (=> res!1262627 e!1925142)))

(assert (=> b!3077033 (= res!1262627 e!1925144)))

(declare-fun res!1262625 () Bool)

(assert (=> b!3077033 (=> (not res!1262625) (not e!1925144))))

(assert (=> b!3077033 (= res!1262625 lt!1052531)))

(declare-fun b!3077034 () Bool)

(assert (=> b!3077034 (= e!1925145 (not lt!1052531))))

(declare-fun b!3077035 () Bool)

(assert (=> b!3077035 (= e!1925140 (nullable!3172 (regOne!19564 r!17423)))))

(assert (= (and d!857073 c!512038) b!3077035))

(assert (= (and d!857073 (not c!512038)) b!3077026))

(assert (= (and d!857073 c!512037) b!3077028))

(assert (= (and d!857073 (not c!512037)) b!3077027))

(assert (= (and b!3077027 c!512039) b!3077034))

(assert (= (and b!3077027 (not c!512039)) b!3077030))

(assert (= (and b!3077030 (not res!1262626)) b!3077033))

(assert (= (and b!3077033 res!1262625) b!3077022))

(assert (= (and b!3077022 res!1262622) b!3077031))

(assert (= (and b!3077031 res!1262628) b!3077029))

(assert (= (and b!3077033 (not res!1262627)) b!3077025))

(assert (= (and b!3077025 res!1262621) b!3077032))

(assert (= (and b!3077032 (not res!1262623)) b!3077023))

(assert (= (and b!3077023 (not res!1262624)) b!3077024))

(assert (= (or b!3077028 b!3077022 b!3077032) bm!214150))

(assert (=> b!3077023 m!3388405))

(assert (=> b!3077023 m!3388405))

(assert (=> b!3077023 m!3388407))

(assert (=> d!857073 m!3388341))

(assert (=> d!857073 m!3388323))

(assert (=> b!3077026 m!3388409))

(assert (=> b!3077026 m!3388409))

(declare-fun m!3388435 () Bool)

(assert (=> b!3077026 m!3388435))

(assert (=> b!3077026 m!3388405))

(assert (=> b!3077026 m!3388435))

(assert (=> b!3077026 m!3388405))

(declare-fun m!3388437 () Bool)

(assert (=> b!3077026 m!3388437))

(assert (=> b!3077031 m!3388405))

(assert (=> b!3077031 m!3388405))

(assert (=> b!3077031 m!3388407))

(declare-fun m!3388439 () Bool)

(assert (=> b!3077035 m!3388439))

(assert (=> b!3077024 m!3388409))

(assert (=> bm!214150 m!3388341))

(assert (=> b!3077029 m!3388409))

(assert (=> b!3076819 d!857073))

(declare-fun b!3077036 () Bool)

(declare-fun res!1262630 () Bool)

(declare-fun e!1925151 () Bool)

(assert (=> b!3077036 (=> (not res!1262630) (not e!1925151))))

(declare-fun call!214156 () Bool)

(assert (=> b!3077036 (= res!1262630 (not call!214156))))

(declare-fun b!3077037 () Bool)

(declare-fun res!1262632 () Bool)

(declare-fun e!1925150 () Bool)

(assert (=> b!3077037 (=> res!1262632 e!1925150)))

(assert (=> b!3077037 (= res!1262632 (not (isEmpty!19596 (tail!5053 s!11993))))))

(declare-fun b!3077038 () Bool)

(assert (=> b!3077038 (= e!1925150 (not (= (head!6827 s!11993) (c!512002 lt!1052481))))))

(declare-fun b!3077039 () Bool)

(declare-fun e!1925149 () Bool)

(declare-fun e!1925146 () Bool)

(assert (=> b!3077039 (= e!1925149 e!1925146)))

(declare-fun res!1262629 () Bool)

(assert (=> b!3077039 (=> (not res!1262629) (not e!1925146))))

(declare-fun lt!1052532 () Bool)

(assert (=> b!3077039 (= res!1262629 (not lt!1052532))))

(declare-fun d!857075 () Bool)

(declare-fun e!1925148 () Bool)

(assert (=> d!857075 e!1925148))

(declare-fun c!512040 () Bool)

(assert (=> d!857075 (= c!512040 (is-EmptyExpr!9526 lt!1052481))))

(declare-fun e!1925147 () Bool)

(assert (=> d!857075 (= lt!1052532 e!1925147)))

(declare-fun c!512041 () Bool)

(assert (=> d!857075 (= c!512041 (isEmpty!19596 s!11993))))

(assert (=> d!857075 (validRegex!4259 lt!1052481)))

(assert (=> d!857075 (= (matchR!4408 lt!1052481 s!11993) lt!1052532)))

(declare-fun b!3077040 () Bool)

(assert (=> b!3077040 (= e!1925147 (matchR!4408 (derivativeStep!2768 lt!1052481 (head!6827 s!11993)) (tail!5053 s!11993)))))

(declare-fun b!3077041 () Bool)

(declare-fun e!1925152 () Bool)

(assert (=> b!3077041 (= e!1925148 e!1925152)))

(declare-fun c!512042 () Bool)

(assert (=> b!3077041 (= c!512042 (is-EmptyLang!9526 lt!1052481))))

(declare-fun b!3077042 () Bool)

(assert (=> b!3077042 (= e!1925148 (= lt!1052532 call!214156))))

(declare-fun b!3077043 () Bool)

(assert (=> b!3077043 (= e!1925151 (= (head!6827 s!11993) (c!512002 lt!1052481)))))

(declare-fun b!3077044 () Bool)

(declare-fun res!1262634 () Bool)

(assert (=> b!3077044 (=> res!1262634 e!1925149)))

(assert (=> b!3077044 (= res!1262634 (not (is-ElementMatch!9526 lt!1052481)))))

(assert (=> b!3077044 (= e!1925152 e!1925149)))

(declare-fun bm!214151 () Bool)

(assert (=> bm!214151 (= call!214156 (isEmpty!19596 s!11993))))

(declare-fun b!3077045 () Bool)

(declare-fun res!1262636 () Bool)

(assert (=> b!3077045 (=> (not res!1262636) (not e!1925151))))

(assert (=> b!3077045 (= res!1262636 (isEmpty!19596 (tail!5053 s!11993)))))

(declare-fun b!3077046 () Bool)

(assert (=> b!3077046 (= e!1925146 e!1925150)))

(declare-fun res!1262631 () Bool)

(assert (=> b!3077046 (=> res!1262631 e!1925150)))

(assert (=> b!3077046 (= res!1262631 call!214156)))

(declare-fun b!3077047 () Bool)

(declare-fun res!1262635 () Bool)

(assert (=> b!3077047 (=> res!1262635 e!1925149)))

(assert (=> b!3077047 (= res!1262635 e!1925151)))

(declare-fun res!1262633 () Bool)

(assert (=> b!3077047 (=> (not res!1262633) (not e!1925151))))

(assert (=> b!3077047 (= res!1262633 lt!1052532)))

(declare-fun b!3077048 () Bool)

(assert (=> b!3077048 (= e!1925152 (not lt!1052532))))

(declare-fun b!3077049 () Bool)

(assert (=> b!3077049 (= e!1925147 (nullable!3172 lt!1052481))))

(assert (= (and d!857075 c!512041) b!3077049))

(assert (= (and d!857075 (not c!512041)) b!3077040))

(assert (= (and d!857075 c!512040) b!3077042))

(assert (= (and d!857075 (not c!512040)) b!3077041))

(assert (= (and b!3077041 c!512042) b!3077048))

(assert (= (and b!3077041 (not c!512042)) b!3077044))

(assert (= (and b!3077044 (not res!1262634)) b!3077047))

(assert (= (and b!3077047 res!1262633) b!3077036))

(assert (= (and b!3077036 res!1262630) b!3077045))

(assert (= (and b!3077045 res!1262636) b!3077043))

(assert (= (and b!3077047 (not res!1262635)) b!3077039))

(assert (= (and b!3077039 res!1262629) b!3077046))

(assert (= (and b!3077046 (not res!1262631)) b!3077037))

(assert (= (and b!3077037 (not res!1262632)) b!3077038))

(assert (= (or b!3077042 b!3077036 b!3077046) bm!214151))

(assert (=> b!3077037 m!3388405))

(assert (=> b!3077037 m!3388405))

(assert (=> b!3077037 m!3388407))

(assert (=> d!857075 m!3388341))

(declare-fun m!3388441 () Bool)

(assert (=> d!857075 m!3388441))

(assert (=> b!3077040 m!3388409))

(assert (=> b!3077040 m!3388409))

(declare-fun m!3388443 () Bool)

(assert (=> b!3077040 m!3388443))

(assert (=> b!3077040 m!3388405))

(assert (=> b!3077040 m!3388443))

(assert (=> b!3077040 m!3388405))

(declare-fun m!3388445 () Bool)

(assert (=> b!3077040 m!3388445))

(assert (=> b!3077045 m!3388405))

(assert (=> b!3077045 m!3388405))

(assert (=> b!3077045 m!3388407))

(declare-fun m!3388447 () Bool)

(assert (=> b!3077049 m!3388447))

(assert (=> b!3077038 m!3388409))

(assert (=> bm!214151 m!3388341))

(assert (=> b!3077043 m!3388409))

(assert (=> b!3076819 d!857075))

(declare-fun b!3077050 () Bool)

(declare-fun res!1262638 () Bool)

(declare-fun e!1925158 () Bool)

(assert (=> b!3077050 (=> (not res!1262638) (not e!1925158))))

(declare-fun call!214157 () Bool)

(assert (=> b!3077050 (= res!1262638 (not call!214157))))

(declare-fun b!3077051 () Bool)

(declare-fun res!1262640 () Bool)

(declare-fun e!1925157 () Bool)

(assert (=> b!3077051 (=> res!1262640 e!1925157)))

(assert (=> b!3077051 (= res!1262640 (not (isEmpty!19596 (tail!5053 Nil!35267))))))

(declare-fun b!3077052 () Bool)

(assert (=> b!3077052 (= e!1925157 (not (= (head!6827 Nil!35267) (c!512002 (regTwo!19564 r!17423)))))))

(declare-fun b!3077053 () Bool)

(declare-fun e!1925156 () Bool)

(declare-fun e!1925153 () Bool)

(assert (=> b!3077053 (= e!1925156 e!1925153)))

(declare-fun res!1262637 () Bool)

(assert (=> b!3077053 (=> (not res!1262637) (not e!1925153))))

(declare-fun lt!1052533 () Bool)

(assert (=> b!3077053 (= res!1262637 (not lt!1052533))))

(declare-fun d!857077 () Bool)

(declare-fun e!1925155 () Bool)

(assert (=> d!857077 e!1925155))

(declare-fun c!512043 () Bool)

(assert (=> d!857077 (= c!512043 (is-EmptyExpr!9526 (regTwo!19564 r!17423)))))

(declare-fun e!1925154 () Bool)

(assert (=> d!857077 (= lt!1052533 e!1925154)))

(declare-fun c!512044 () Bool)

(assert (=> d!857077 (= c!512044 (isEmpty!19596 Nil!35267))))

(assert (=> d!857077 (validRegex!4259 (regTwo!19564 r!17423))))

(assert (=> d!857077 (= (matchR!4408 (regTwo!19564 r!17423) Nil!35267) lt!1052533)))

(declare-fun b!3077054 () Bool)

(assert (=> b!3077054 (= e!1925154 (matchR!4408 (derivativeStep!2768 (regTwo!19564 r!17423) (head!6827 Nil!35267)) (tail!5053 Nil!35267)))))

(declare-fun b!3077055 () Bool)

(declare-fun e!1925159 () Bool)

(assert (=> b!3077055 (= e!1925155 e!1925159)))

(declare-fun c!512045 () Bool)

(assert (=> b!3077055 (= c!512045 (is-EmptyLang!9526 (regTwo!19564 r!17423)))))

(declare-fun b!3077056 () Bool)

(assert (=> b!3077056 (= e!1925155 (= lt!1052533 call!214157))))

(declare-fun b!3077057 () Bool)

(assert (=> b!3077057 (= e!1925158 (= (head!6827 Nil!35267) (c!512002 (regTwo!19564 r!17423))))))

(declare-fun b!3077058 () Bool)

(declare-fun res!1262642 () Bool)

(assert (=> b!3077058 (=> res!1262642 e!1925156)))

(assert (=> b!3077058 (= res!1262642 (not (is-ElementMatch!9526 (regTwo!19564 r!17423))))))

(assert (=> b!3077058 (= e!1925159 e!1925156)))

(declare-fun bm!214152 () Bool)

(assert (=> bm!214152 (= call!214157 (isEmpty!19596 Nil!35267))))

(declare-fun b!3077059 () Bool)

(declare-fun res!1262644 () Bool)

(assert (=> b!3077059 (=> (not res!1262644) (not e!1925158))))

(assert (=> b!3077059 (= res!1262644 (isEmpty!19596 (tail!5053 Nil!35267)))))

(declare-fun b!3077060 () Bool)

(assert (=> b!3077060 (= e!1925153 e!1925157)))

(declare-fun res!1262639 () Bool)

(assert (=> b!3077060 (=> res!1262639 e!1925157)))

(assert (=> b!3077060 (= res!1262639 call!214157)))

(declare-fun b!3077061 () Bool)

(declare-fun res!1262643 () Bool)

(assert (=> b!3077061 (=> res!1262643 e!1925156)))

(assert (=> b!3077061 (= res!1262643 e!1925158)))

(declare-fun res!1262641 () Bool)

(assert (=> b!3077061 (=> (not res!1262641) (not e!1925158))))

(assert (=> b!3077061 (= res!1262641 lt!1052533)))

(declare-fun b!3077062 () Bool)

(assert (=> b!3077062 (= e!1925159 (not lt!1052533))))

(declare-fun b!3077063 () Bool)

(assert (=> b!3077063 (= e!1925154 (nullable!3172 (regTwo!19564 r!17423)))))

(assert (= (and d!857077 c!512044) b!3077063))

(assert (= (and d!857077 (not c!512044)) b!3077054))

(assert (= (and d!857077 c!512043) b!3077056))

(assert (= (and d!857077 (not c!512043)) b!3077055))

(assert (= (and b!3077055 c!512045) b!3077062))

(assert (= (and b!3077055 (not c!512045)) b!3077058))

(assert (= (and b!3077058 (not res!1262642)) b!3077061))

(assert (= (and b!3077061 res!1262641) b!3077050))

(assert (= (and b!3077050 res!1262638) b!3077059))

(assert (= (and b!3077059 res!1262644) b!3077057))

(assert (= (and b!3077061 (not res!1262643)) b!3077053))

(assert (= (and b!3077053 res!1262637) b!3077060))

(assert (= (and b!3077060 (not res!1262639)) b!3077051))

(assert (= (and b!3077051 (not res!1262640)) b!3077052))

(assert (= (or b!3077056 b!3077050 b!3077060) bm!214152))

(declare-fun m!3388449 () Bool)

(assert (=> b!3077051 m!3388449))

(assert (=> b!3077051 m!3388449))

(declare-fun m!3388451 () Bool)

(assert (=> b!3077051 m!3388451))

(declare-fun m!3388453 () Bool)

(assert (=> d!857077 m!3388453))

(assert (=> d!857077 m!3388429))

(declare-fun m!3388455 () Bool)

(assert (=> b!3077054 m!3388455))

(assert (=> b!3077054 m!3388455))

(declare-fun m!3388457 () Bool)

(assert (=> b!3077054 m!3388457))

(assert (=> b!3077054 m!3388449))

(assert (=> b!3077054 m!3388457))

(assert (=> b!3077054 m!3388449))

(declare-fun m!3388459 () Bool)

(assert (=> b!3077054 m!3388459))

(assert (=> b!3077059 m!3388449))

(assert (=> b!3077059 m!3388449))

(assert (=> b!3077059 m!3388451))

(declare-fun m!3388461 () Bool)

(assert (=> b!3077063 m!3388461))

(assert (=> b!3077052 m!3388455))

(assert (=> bm!214152 m!3388453))

(assert (=> b!3077057 m!3388455))

(assert (=> b!3076819 d!857077))

(declare-fun b!3077064 () Bool)

(declare-fun res!1262646 () Bool)

(declare-fun e!1925165 () Bool)

(assert (=> b!3077064 (=> (not res!1262646) (not e!1925165))))

(declare-fun call!214158 () Bool)

(assert (=> b!3077064 (= res!1262646 (not call!214158))))

(declare-fun b!3077065 () Bool)

(declare-fun res!1262648 () Bool)

(declare-fun e!1925164 () Bool)

(assert (=> b!3077065 (=> res!1262648 e!1925164)))

(assert (=> b!3077065 (= res!1262648 (not (isEmpty!19596 (tail!5053 Nil!35267))))))

(declare-fun b!3077066 () Bool)

(assert (=> b!3077066 (= e!1925164 (not (= (head!6827 Nil!35267) (c!512002 lt!1052486))))))

(declare-fun b!3077067 () Bool)

(declare-fun e!1925163 () Bool)

(declare-fun e!1925160 () Bool)

(assert (=> b!3077067 (= e!1925163 e!1925160)))

(declare-fun res!1262645 () Bool)

(assert (=> b!3077067 (=> (not res!1262645) (not e!1925160))))

(declare-fun lt!1052534 () Bool)

(assert (=> b!3077067 (= res!1262645 (not lt!1052534))))

(declare-fun d!857079 () Bool)

(declare-fun e!1925162 () Bool)

(assert (=> d!857079 e!1925162))

(declare-fun c!512046 () Bool)

(assert (=> d!857079 (= c!512046 (is-EmptyExpr!9526 lt!1052486))))

(declare-fun e!1925161 () Bool)

(assert (=> d!857079 (= lt!1052534 e!1925161)))

(declare-fun c!512047 () Bool)

(assert (=> d!857079 (= c!512047 (isEmpty!19596 Nil!35267))))

(assert (=> d!857079 (validRegex!4259 lt!1052486)))

(assert (=> d!857079 (= (matchR!4408 lt!1052486 Nil!35267) lt!1052534)))

(declare-fun b!3077068 () Bool)

(assert (=> b!3077068 (= e!1925161 (matchR!4408 (derivativeStep!2768 lt!1052486 (head!6827 Nil!35267)) (tail!5053 Nil!35267)))))

(declare-fun b!3077069 () Bool)

(declare-fun e!1925166 () Bool)

(assert (=> b!3077069 (= e!1925162 e!1925166)))

(declare-fun c!512048 () Bool)

(assert (=> b!3077069 (= c!512048 (is-EmptyLang!9526 lt!1052486))))

(declare-fun b!3077070 () Bool)

(assert (=> b!3077070 (= e!1925162 (= lt!1052534 call!214158))))

(declare-fun b!3077071 () Bool)

(assert (=> b!3077071 (= e!1925165 (= (head!6827 Nil!35267) (c!512002 lt!1052486)))))

(declare-fun b!3077072 () Bool)

(declare-fun res!1262650 () Bool)

(assert (=> b!3077072 (=> res!1262650 e!1925163)))

(assert (=> b!3077072 (= res!1262650 (not (is-ElementMatch!9526 lt!1052486)))))

(assert (=> b!3077072 (= e!1925166 e!1925163)))

(declare-fun bm!214153 () Bool)

(assert (=> bm!214153 (= call!214158 (isEmpty!19596 Nil!35267))))

(declare-fun b!3077073 () Bool)

(declare-fun res!1262652 () Bool)

(assert (=> b!3077073 (=> (not res!1262652) (not e!1925165))))

(assert (=> b!3077073 (= res!1262652 (isEmpty!19596 (tail!5053 Nil!35267)))))

(declare-fun b!3077074 () Bool)

(assert (=> b!3077074 (= e!1925160 e!1925164)))

(declare-fun res!1262647 () Bool)

(assert (=> b!3077074 (=> res!1262647 e!1925164)))

(assert (=> b!3077074 (= res!1262647 call!214158)))

(declare-fun b!3077075 () Bool)

(declare-fun res!1262651 () Bool)

(assert (=> b!3077075 (=> res!1262651 e!1925163)))

(assert (=> b!3077075 (= res!1262651 e!1925165)))

(declare-fun res!1262649 () Bool)

(assert (=> b!3077075 (=> (not res!1262649) (not e!1925165))))

(assert (=> b!3077075 (= res!1262649 lt!1052534)))

(declare-fun b!3077076 () Bool)

(assert (=> b!3077076 (= e!1925166 (not lt!1052534))))

(declare-fun b!3077077 () Bool)

(assert (=> b!3077077 (= e!1925161 (nullable!3172 lt!1052486))))

(assert (= (and d!857079 c!512047) b!3077077))

(assert (= (and d!857079 (not c!512047)) b!3077068))

(assert (= (and d!857079 c!512046) b!3077070))

(assert (= (and d!857079 (not c!512046)) b!3077069))

(assert (= (and b!3077069 c!512048) b!3077076))

(assert (= (and b!3077069 (not c!512048)) b!3077072))

(assert (= (and b!3077072 (not res!1262650)) b!3077075))

(assert (= (and b!3077075 res!1262649) b!3077064))

(assert (= (and b!3077064 res!1262646) b!3077073))

(assert (= (and b!3077073 res!1262652) b!3077071))

(assert (= (and b!3077075 (not res!1262651)) b!3077067))

(assert (= (and b!3077067 res!1262645) b!3077074))

(assert (= (and b!3077074 (not res!1262647)) b!3077065))

(assert (= (and b!3077065 (not res!1262648)) b!3077066))

(assert (= (or b!3077070 b!3077064 b!3077074) bm!214153))

(assert (=> b!3077065 m!3388449))

(assert (=> b!3077065 m!3388449))

(assert (=> b!3077065 m!3388451))

(assert (=> d!857079 m!3388453))

(declare-fun m!3388463 () Bool)

(assert (=> d!857079 m!3388463))

(assert (=> b!3077068 m!3388455))

(assert (=> b!3077068 m!3388455))

(declare-fun m!3388465 () Bool)

(assert (=> b!3077068 m!3388465))

(assert (=> b!3077068 m!3388449))

(assert (=> b!3077068 m!3388465))

(assert (=> b!3077068 m!3388449))

(declare-fun m!3388467 () Bool)

(assert (=> b!3077068 m!3388467))

(assert (=> b!3077073 m!3388449))

(assert (=> b!3077073 m!3388449))

(assert (=> b!3077073 m!3388451))

(declare-fun m!3388469 () Bool)

(assert (=> b!3077077 m!3388469))

(assert (=> b!3077066 m!3388455))

(assert (=> bm!214153 m!3388453))

(assert (=> b!3077071 m!3388455))

(assert (=> b!3076819 d!857079))

(declare-fun d!857081 () Bool)

(assert (=> d!857081 (= (isEmptyLang!577 lt!1052481) (is-EmptyLang!9526 lt!1052481))))

(assert (=> b!3076830 d!857081))

(declare-fun b!3077198 () Bool)

(declare-fun e!1925240 () Regex!9526)

(assert (=> b!3077198 (= e!1925240 EmptyLang!9526)))

(declare-fun b!3077199 () Bool)

(declare-fun c!512091 () Bool)

(assert (=> b!3077199 (= c!512091 (is-EmptyExpr!9526 (regTwo!19564 r!17423)))))

(declare-fun e!1925239 () Regex!9526)

(declare-fun e!1925236 () Regex!9526)

(assert (=> b!3077199 (= e!1925239 e!1925236)))

(declare-fun b!3077200 () Bool)

(assert (=> b!3077200 (= e!1925240 e!1925239)))

(declare-fun c!512095 () Bool)

(assert (=> b!3077200 (= c!512095 (is-ElementMatch!9526 (regTwo!19564 r!17423)))))

(declare-fun b!3077201 () Bool)

(declare-fun e!1925235 () Regex!9526)

(declare-fun lt!1052555 () Regex!9526)

(assert (=> b!3077201 (= e!1925235 lt!1052555)))

(declare-fun call!214183 () Regex!9526)

(declare-fun c!512092 () Bool)

(declare-fun bm!214172 () Bool)

(declare-fun c!512088 () Bool)

(assert (=> bm!214172 (= call!214183 (simplify!481 (ite c!512088 (reg!9855 (regTwo!19564 r!17423)) (ite c!512092 (regOne!19565 (regTwo!19564 r!17423)) (regTwo!19564 (regTwo!19564 r!17423))))))))

(declare-fun d!857083 () Bool)

(declare-fun e!1925243 () Bool)

(assert (=> d!857083 e!1925243))

(declare-fun res!1262697 () Bool)

(assert (=> d!857083 (=> (not res!1262697) (not e!1925243))))

(declare-fun lt!1052554 () Regex!9526)

(assert (=> d!857083 (= res!1262697 (validRegex!4259 lt!1052554))))

(assert (=> d!857083 (= lt!1052554 e!1925240)))

(declare-fun c!512096 () Bool)

(assert (=> d!857083 (= c!512096 (is-EmptyLang!9526 (regTwo!19564 r!17423)))))

(assert (=> d!857083 (validRegex!4259 (regTwo!19564 r!17423))))

(assert (=> d!857083 (= (simplify!481 (regTwo!19564 r!17423)) lt!1052554)))

(declare-fun bm!214173 () Bool)

(declare-fun lt!1052553 () Regex!9526)

(declare-fun call!214182 () Bool)

(declare-fun lt!1052551 () Regex!9526)

(assert (=> bm!214173 (= call!214182 (isEmptyLang!577 (ite c!512092 lt!1052551 lt!1052553)))))

(declare-fun b!3077202 () Bool)

(declare-fun e!1925242 () Regex!9526)

(declare-fun lt!1052556 () Regex!9526)

(assert (=> b!3077202 (= e!1925242 lt!1052556)))

(declare-fun b!3077203 () Bool)

(assert (=> b!3077203 (= c!512092 (is-Union!9526 (regTwo!19564 r!17423)))))

(declare-fun e!1925238 () Regex!9526)

(declare-fun e!1925246 () Regex!9526)

(assert (=> b!3077203 (= e!1925238 e!1925246)))

(declare-fun b!3077204 () Bool)

(declare-fun e!1925234 () Regex!9526)

(assert (=> b!3077204 (= e!1925234 lt!1052553)))

(declare-fun b!3077205 () Bool)

(declare-fun e!1925244 () Regex!9526)

(assert (=> b!3077205 (= e!1925244 lt!1052551)))

(declare-fun b!3077206 () Bool)

(assert (=> b!3077206 (= e!1925242 (Union!9526 lt!1052556 lt!1052551))))

(declare-fun b!3077207 () Bool)

(assert (=> b!3077207 (= e!1925243 (= (nullable!3172 lt!1052554) (nullable!3172 (regTwo!19564 r!17423))))))

(declare-fun b!3077208 () Bool)

(assert (=> b!3077208 (= e!1925236 EmptyExpr!9526)))

(declare-fun b!3077209 () Bool)

(declare-fun c!512093 () Bool)

(assert (=> b!3077209 (= c!512093 call!214182)))

(assert (=> b!3077209 (= e!1925244 e!1925242)))

(declare-fun b!3077210 () Bool)

(assert (=> b!3077210 (= e!1925236 e!1925238)))

(assert (=> b!3077210 (= c!512088 (is-Star!9526 (regTwo!19564 r!17423)))))

(declare-fun b!3077211 () Bool)

(assert (=> b!3077211 (= e!1925246 e!1925244)))

(declare-fun call!214181 () Regex!9526)

(assert (=> b!3077211 (= lt!1052556 call!214181)))

(declare-fun call!214179 () Regex!9526)

(assert (=> b!3077211 (= lt!1052551 call!214179)))

(declare-fun c!512090 () Bool)

(declare-fun call!214180 () Bool)

(assert (=> b!3077211 (= c!512090 call!214180)))

(declare-fun lt!1052552 () Regex!9526)

(declare-fun bm!214174 () Bool)

(declare-fun call!214178 () Bool)

(assert (=> bm!214174 (= call!214178 (isEmptyLang!577 (ite c!512088 lt!1052552 (ite c!512092 lt!1052556 lt!1052555))))))

(declare-fun bm!214175 () Bool)

(assert (=> bm!214175 (= call!214181 call!214183)))

(declare-fun b!3077214 () Bool)

(assert (=> b!3077214 (= e!1925235 e!1925234)))

(declare-fun c!512089 () Bool)

(assert (=> b!3077214 (= c!512089 (isEmptyExpr!583 lt!1052555))))

(declare-fun bm!214176 () Bool)

(assert (=> bm!214176 (= call!214179 (simplify!481 (ite c!512092 (regTwo!19565 (regTwo!19564 r!17423)) (regOne!19564 (regTwo!19564 r!17423)))))))

(declare-fun b!3077215 () Bool)

(declare-fun e!1925237 () Bool)

(assert (=> b!3077215 (= e!1925237 call!214180)))

(declare-fun b!3077216 () Bool)

(assert (=> b!3077216 (= e!1925239 (regTwo!19564 r!17423))))

(declare-fun b!3077217 () Bool)

(declare-fun e!1925233 () Regex!9526)

(assert (=> b!3077217 (= e!1925233 EmptyExpr!9526)))

(declare-fun b!3077218 () Bool)

(declare-fun e!1925245 () Regex!9526)

(assert (=> b!3077218 (= e!1925245 EmptyLang!9526)))

(declare-fun b!3077219 () Bool)

(declare-fun e!1925241 () Bool)

(declare-fun call!214177 () Bool)

(assert (=> b!3077219 (= e!1925241 call!214177)))

(declare-fun b!3077220 () Bool)

(assert (=> b!3077220 (= e!1925246 e!1925245)))

(assert (=> b!3077220 (= lt!1052553 call!214179)))

(assert (=> b!3077220 (= lt!1052555 call!214181)))

(declare-fun res!1262698 () Bool)

(assert (=> b!3077220 (= res!1262698 call!214182)))

(assert (=> b!3077220 (=> res!1262698 e!1925237)))

(declare-fun c!512097 () Bool)

(assert (=> b!3077220 (= c!512097 e!1925237)))

(declare-fun bm!214177 () Bool)

(assert (=> bm!214177 (= call!214177 (isEmptyExpr!583 (ite c!512088 lt!1052552 lt!1052553)))))

(declare-fun b!3077221 () Bool)

(declare-fun c!512087 () Bool)

(assert (=> b!3077221 (= c!512087 e!1925241)))

(declare-fun res!1262699 () Bool)

(assert (=> b!3077221 (=> res!1262699 e!1925241)))

(assert (=> b!3077221 (= res!1262699 call!214178)))

(assert (=> b!3077221 (= lt!1052552 call!214183)))

(assert (=> b!3077221 (= e!1925238 e!1925233)))

(declare-fun b!3077222 () Bool)

(declare-fun c!512094 () Bool)

(assert (=> b!3077222 (= c!512094 call!214177)))

(assert (=> b!3077222 (= e!1925245 e!1925235)))

(declare-fun b!3077223 () Bool)

(assert (=> b!3077223 (= e!1925233 (Star!9526 lt!1052552))))

(declare-fun b!3077224 () Bool)

(assert (=> b!3077224 (= e!1925234 (Concat!14847 lt!1052553 lt!1052555))))

(declare-fun bm!214178 () Bool)

(assert (=> bm!214178 (= call!214180 call!214178)))

(assert (= (and d!857083 c!512096) b!3077198))

(assert (= (and d!857083 (not c!512096)) b!3077200))

(assert (= (and b!3077200 c!512095) b!3077216))

(assert (= (and b!3077200 (not c!512095)) b!3077199))

(assert (= (and b!3077199 c!512091) b!3077208))

(assert (= (and b!3077199 (not c!512091)) b!3077210))

(assert (= (and b!3077210 c!512088) b!3077221))

(assert (= (and b!3077210 (not c!512088)) b!3077203))

(assert (= (and b!3077221 (not res!1262699)) b!3077219))

(assert (= (and b!3077221 c!512087) b!3077217))

(assert (= (and b!3077221 (not c!512087)) b!3077223))

(assert (= (and b!3077203 c!512092) b!3077211))

(assert (= (and b!3077203 (not c!512092)) b!3077220))

(assert (= (and b!3077211 c!512090) b!3077205))

(assert (= (and b!3077211 (not c!512090)) b!3077209))

(assert (= (and b!3077209 c!512093) b!3077202))

(assert (= (and b!3077209 (not c!512093)) b!3077206))

(assert (= (and b!3077220 (not res!1262698)) b!3077215))

(assert (= (and b!3077220 c!512097) b!3077218))

(assert (= (and b!3077220 (not c!512097)) b!3077222))

(assert (= (and b!3077222 c!512094) b!3077201))

(assert (= (and b!3077222 (not c!512094)) b!3077214))

(assert (= (and b!3077214 c!512089) b!3077204))

(assert (= (and b!3077214 (not c!512089)) b!3077224))

(assert (= (or b!3077211 b!3077220) bm!214175))

(assert (= (or b!3077211 b!3077220) bm!214176))

(assert (= (or b!3077211 b!3077215) bm!214178))

(assert (= (or b!3077209 b!3077220) bm!214173))

(assert (= (or b!3077219 b!3077222) bm!214177))

(assert (= (or b!3077221 bm!214175) bm!214172))

(assert (= (or b!3077221 bm!214178) bm!214174))

(assert (= (and d!857083 res!1262697) b!3077207))

(declare-fun m!3388513 () Bool)

(assert (=> bm!214176 m!3388513))

(declare-fun m!3388515 () Bool)

(assert (=> b!3077214 m!3388515))

(declare-fun m!3388517 () Bool)

(assert (=> bm!214173 m!3388517))

(declare-fun m!3388519 () Bool)

(assert (=> b!3077207 m!3388519))

(assert (=> b!3077207 m!3388461))

(declare-fun m!3388521 () Bool)

(assert (=> bm!214172 m!3388521))

(declare-fun m!3388523 () Bool)

(assert (=> d!857083 m!3388523))

(assert (=> d!857083 m!3388429))

(declare-fun m!3388525 () Bool)

(assert (=> bm!214174 m!3388525))

(declare-fun m!3388527 () Bool)

(assert (=> bm!214177 m!3388527))

(assert (=> b!3076830 d!857083))

(declare-fun b!3077227 () Bool)

(declare-fun e!1925258 () Regex!9526)

(assert (=> b!3077227 (= e!1925258 EmptyLang!9526)))

(declare-fun b!3077228 () Bool)

(declare-fun c!512102 () Bool)

(assert (=> b!3077228 (= c!512102 (is-EmptyExpr!9526 (regOne!19564 r!17423)))))

(declare-fun e!1925257 () Regex!9526)

(declare-fun e!1925254 () Regex!9526)

(assert (=> b!3077228 (= e!1925257 e!1925254)))

(declare-fun b!3077229 () Bool)

(assert (=> b!3077229 (= e!1925258 e!1925257)))

(declare-fun c!512106 () Bool)

(assert (=> b!3077229 (= c!512106 (is-ElementMatch!9526 (regOne!19564 r!17423)))))

(declare-fun b!3077230 () Bool)

(declare-fun e!1925253 () Regex!9526)

(declare-fun lt!1052561 () Regex!9526)

(assert (=> b!3077230 (= e!1925253 lt!1052561)))

(declare-fun call!214194 () Regex!9526)

(declare-fun c!512103 () Bool)

(declare-fun bm!214183 () Bool)

(declare-fun c!512099 () Bool)

(assert (=> bm!214183 (= call!214194 (simplify!481 (ite c!512099 (reg!9855 (regOne!19564 r!17423)) (ite c!512103 (regOne!19565 (regOne!19564 r!17423)) (regTwo!19564 (regOne!19564 r!17423))))))))

(declare-fun d!857093 () Bool)

(declare-fun e!1925261 () Bool)

(assert (=> d!857093 e!1925261))

(declare-fun res!1262704 () Bool)

(assert (=> d!857093 (=> (not res!1262704) (not e!1925261))))

(declare-fun lt!1052560 () Regex!9526)

(assert (=> d!857093 (= res!1262704 (validRegex!4259 lt!1052560))))

(assert (=> d!857093 (= lt!1052560 e!1925258)))

(declare-fun c!512107 () Bool)

(assert (=> d!857093 (= c!512107 (is-EmptyLang!9526 (regOne!19564 r!17423)))))

(assert (=> d!857093 (validRegex!4259 (regOne!19564 r!17423))))

(assert (=> d!857093 (= (simplify!481 (regOne!19564 r!17423)) lt!1052560)))

(declare-fun bm!214184 () Bool)

(declare-fun lt!1052559 () Regex!9526)

(declare-fun lt!1052557 () Regex!9526)

(declare-fun call!214193 () Bool)

(assert (=> bm!214184 (= call!214193 (isEmptyLang!577 (ite c!512103 lt!1052557 lt!1052559)))))

(declare-fun b!3077231 () Bool)

(declare-fun e!1925260 () Regex!9526)

(declare-fun lt!1052562 () Regex!9526)

(assert (=> b!3077231 (= e!1925260 lt!1052562)))

(declare-fun b!3077232 () Bool)

(assert (=> b!3077232 (= c!512103 (is-Union!9526 (regOne!19564 r!17423)))))

(declare-fun e!1925256 () Regex!9526)

(declare-fun e!1925264 () Regex!9526)

(assert (=> b!3077232 (= e!1925256 e!1925264)))

(declare-fun b!3077233 () Bool)

(declare-fun e!1925252 () Regex!9526)

(assert (=> b!3077233 (= e!1925252 lt!1052559)))

(declare-fun b!3077234 () Bool)

(declare-fun e!1925262 () Regex!9526)

(assert (=> b!3077234 (= e!1925262 lt!1052557)))

(declare-fun b!3077235 () Bool)

(assert (=> b!3077235 (= e!1925260 (Union!9526 lt!1052562 lt!1052557))))

(declare-fun b!3077236 () Bool)

(assert (=> b!3077236 (= e!1925261 (= (nullable!3172 lt!1052560) (nullable!3172 (regOne!19564 r!17423))))))

(declare-fun b!3077237 () Bool)

(assert (=> b!3077237 (= e!1925254 EmptyExpr!9526)))

(declare-fun b!3077238 () Bool)

(declare-fun c!512104 () Bool)

(assert (=> b!3077238 (= c!512104 call!214193)))

(assert (=> b!3077238 (= e!1925262 e!1925260)))

(declare-fun b!3077239 () Bool)

(assert (=> b!3077239 (= e!1925254 e!1925256)))

(assert (=> b!3077239 (= c!512099 (is-Star!9526 (regOne!19564 r!17423)))))

(declare-fun b!3077240 () Bool)

(assert (=> b!3077240 (= e!1925264 e!1925262)))

(declare-fun call!214192 () Regex!9526)

(assert (=> b!3077240 (= lt!1052562 call!214192)))

(declare-fun call!214190 () Regex!9526)

(assert (=> b!3077240 (= lt!1052557 call!214190)))

(declare-fun c!512101 () Bool)

(declare-fun call!214191 () Bool)

(assert (=> b!3077240 (= c!512101 call!214191)))

(declare-fun bm!214185 () Bool)

(declare-fun call!214189 () Bool)

(declare-fun lt!1052558 () Regex!9526)

(assert (=> bm!214185 (= call!214189 (isEmptyLang!577 (ite c!512099 lt!1052558 (ite c!512103 lt!1052562 lt!1052561))))))

(declare-fun bm!214186 () Bool)

(assert (=> bm!214186 (= call!214192 call!214194)))

(declare-fun b!3077241 () Bool)

(assert (=> b!3077241 (= e!1925253 e!1925252)))

(declare-fun c!512100 () Bool)

(assert (=> b!3077241 (= c!512100 (isEmptyExpr!583 lt!1052561))))

(declare-fun bm!214187 () Bool)

(assert (=> bm!214187 (= call!214190 (simplify!481 (ite c!512103 (regTwo!19565 (regOne!19564 r!17423)) (regOne!19564 (regOne!19564 r!17423)))))))

(declare-fun b!3077242 () Bool)

(declare-fun e!1925255 () Bool)

(assert (=> b!3077242 (= e!1925255 call!214191)))

(declare-fun b!3077243 () Bool)

(assert (=> b!3077243 (= e!1925257 (regOne!19564 r!17423))))

(declare-fun b!3077244 () Bool)

(declare-fun e!1925251 () Regex!9526)

(assert (=> b!3077244 (= e!1925251 EmptyExpr!9526)))

(declare-fun b!3077245 () Bool)

(declare-fun e!1925263 () Regex!9526)

(assert (=> b!3077245 (= e!1925263 EmptyLang!9526)))

(declare-fun b!3077246 () Bool)

(declare-fun e!1925259 () Bool)

(declare-fun call!214188 () Bool)

(assert (=> b!3077246 (= e!1925259 call!214188)))

(declare-fun b!3077247 () Bool)

(assert (=> b!3077247 (= e!1925264 e!1925263)))

(assert (=> b!3077247 (= lt!1052559 call!214190)))

(assert (=> b!3077247 (= lt!1052561 call!214192)))

(declare-fun res!1262705 () Bool)

(assert (=> b!3077247 (= res!1262705 call!214193)))

(assert (=> b!3077247 (=> res!1262705 e!1925255)))

(declare-fun c!512108 () Bool)

(assert (=> b!3077247 (= c!512108 e!1925255)))

(declare-fun bm!214188 () Bool)

(assert (=> bm!214188 (= call!214188 (isEmptyExpr!583 (ite c!512099 lt!1052558 lt!1052559)))))

(declare-fun b!3077248 () Bool)

(declare-fun c!512098 () Bool)

(assert (=> b!3077248 (= c!512098 e!1925259)))

(declare-fun res!1262706 () Bool)

(assert (=> b!3077248 (=> res!1262706 e!1925259)))

(assert (=> b!3077248 (= res!1262706 call!214189)))

(assert (=> b!3077248 (= lt!1052558 call!214194)))

(assert (=> b!3077248 (= e!1925256 e!1925251)))

(declare-fun b!3077249 () Bool)

(declare-fun c!512105 () Bool)

(assert (=> b!3077249 (= c!512105 call!214188)))

(assert (=> b!3077249 (= e!1925263 e!1925253)))

(declare-fun b!3077250 () Bool)

(assert (=> b!3077250 (= e!1925251 (Star!9526 lt!1052558))))

(declare-fun b!3077251 () Bool)

(assert (=> b!3077251 (= e!1925252 (Concat!14847 lt!1052559 lt!1052561))))

(declare-fun bm!214189 () Bool)

(assert (=> bm!214189 (= call!214191 call!214189)))

(assert (= (and d!857093 c!512107) b!3077227))

(assert (= (and d!857093 (not c!512107)) b!3077229))

(assert (= (and b!3077229 c!512106) b!3077243))

(assert (= (and b!3077229 (not c!512106)) b!3077228))

(assert (= (and b!3077228 c!512102) b!3077237))

(assert (= (and b!3077228 (not c!512102)) b!3077239))

(assert (= (and b!3077239 c!512099) b!3077248))

(assert (= (and b!3077239 (not c!512099)) b!3077232))

(assert (= (and b!3077248 (not res!1262706)) b!3077246))

(assert (= (and b!3077248 c!512098) b!3077244))

(assert (= (and b!3077248 (not c!512098)) b!3077250))

(assert (= (and b!3077232 c!512103) b!3077240))

(assert (= (and b!3077232 (not c!512103)) b!3077247))

(assert (= (and b!3077240 c!512101) b!3077234))

(assert (= (and b!3077240 (not c!512101)) b!3077238))

(assert (= (and b!3077238 c!512104) b!3077231))

(assert (= (and b!3077238 (not c!512104)) b!3077235))

(assert (= (and b!3077247 (not res!1262705)) b!3077242))

(assert (= (and b!3077247 c!512108) b!3077245))

(assert (= (and b!3077247 (not c!512108)) b!3077249))

(assert (= (and b!3077249 c!512105) b!3077230))

(assert (= (and b!3077249 (not c!512105)) b!3077241))

(assert (= (and b!3077241 c!512100) b!3077233))

(assert (= (and b!3077241 (not c!512100)) b!3077251))

(assert (= (or b!3077240 b!3077247) bm!214186))

(assert (= (or b!3077240 b!3077247) bm!214187))

(assert (= (or b!3077240 b!3077242) bm!214189))

(assert (= (or b!3077238 b!3077247) bm!214184))

(assert (= (or b!3077246 b!3077249) bm!214188))

(assert (= (or b!3077248 bm!214186) bm!214183))

(assert (= (or b!3077248 bm!214189) bm!214185))

(assert (= (and d!857093 res!1262704) b!3077236))

(declare-fun m!3388529 () Bool)

(assert (=> bm!214187 m!3388529))

(declare-fun m!3388531 () Bool)

(assert (=> b!3077241 m!3388531))

(declare-fun m!3388533 () Bool)

(assert (=> bm!214184 m!3388533))

(declare-fun m!3388535 () Bool)

(assert (=> b!3077236 m!3388535))

(assert (=> b!3077236 m!3388439))

(declare-fun m!3388537 () Bool)

(assert (=> bm!214183 m!3388537))

(declare-fun m!3388539 () Bool)

(assert (=> d!857093 m!3388539))

(assert (=> d!857093 m!3388323))

(declare-fun m!3388541 () Bool)

(assert (=> bm!214185 m!3388541))

(declare-fun m!3388543 () Bool)

(assert (=> bm!214188 m!3388543))

(assert (=> b!3076830 d!857093))

(declare-fun d!857095 () Bool)

(assert (=> d!857095 (= (isEmptyExpr!583 lt!1052481) (is-EmptyExpr!9526 lt!1052481))))

(assert (=> b!3076824 d!857095))

(declare-fun d!857097 () Bool)

(assert (=> d!857097 (isDefined!5372 (findConcatSeparation!1215 (regOne!19564 r!17423) (regTwo!19564 r!17423) Nil!35267 s!11993 s!11993))))

(declare-fun lt!1052565 () Unit!49491)

(declare-fun choose!18230 (Regex!9526 Regex!9526 List!35391 List!35391 List!35391 List!35391 List!35391) Unit!49491)

(assert (=> d!857097 (= lt!1052565 (choose!18230 (regOne!19564 r!17423) (regTwo!19564 r!17423) s!11993 Nil!35267 s!11993 Nil!35267 s!11993))))

(assert (=> d!857097 (validRegex!4259 (regOne!19564 r!17423))))

(assert (=> d!857097 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!35 (regOne!19564 r!17423) (regTwo!19564 r!17423) s!11993 Nil!35267 s!11993 Nil!35267 s!11993) lt!1052565)))

(declare-fun bs!532786 () Bool)

(assert (= bs!532786 d!857097))

(assert (=> bs!532786 m!3388325))

(assert (=> bs!532786 m!3388325))

(assert (=> bs!532786 m!3388327))

(declare-fun m!3388545 () Bool)

(assert (=> bs!532786 m!3388545))

(assert (=> bs!532786 m!3388323))

(assert (=> b!3076823 d!857097))

(declare-fun b!3077252 () Bool)

(declare-fun e!1925268 () Bool)

(declare-fun call!214198 () Bool)

(assert (=> b!3077252 (= e!1925268 call!214198)))

(declare-fun b!3077253 () Bool)

(declare-fun e!1925269 () Bool)

(declare-fun call!214197 () Bool)

(assert (=> b!3077253 (= e!1925269 call!214197)))

(declare-fun b!3077254 () Bool)

(declare-fun e!1925266 () Bool)

(declare-fun e!1925265 () Bool)

(assert (=> b!3077254 (= e!1925266 e!1925265)))

(declare-fun c!512109 () Bool)

(assert (=> b!3077254 (= c!512109 (is-Star!9526 (regOne!19564 r!17423)))))

(declare-fun call!214199 () Bool)

(declare-fun c!512110 () Bool)

(declare-fun bm!214192 () Bool)

(assert (=> bm!214192 (= call!214199 (validRegex!4259 (ite c!512109 (reg!9855 (regOne!19564 r!17423)) (ite c!512110 (regTwo!19565 (regOne!19564 r!17423)) (regOne!19564 (regOne!19564 r!17423))))))))

(declare-fun b!3077255 () Bool)

(declare-fun res!1262710 () Bool)

(assert (=> b!3077255 (=> (not res!1262710) (not e!1925268))))

(assert (=> b!3077255 (= res!1262710 call!214197)))

(declare-fun e!1925271 () Bool)

(assert (=> b!3077255 (= e!1925271 e!1925268)))

(declare-fun b!3077256 () Bool)

(declare-fun res!1262711 () Bool)

(declare-fun e!1925270 () Bool)

(assert (=> b!3077256 (=> res!1262711 e!1925270)))

(assert (=> b!3077256 (= res!1262711 (not (is-Concat!14847 (regOne!19564 r!17423))))))

(assert (=> b!3077256 (= e!1925271 e!1925270)))

(declare-fun b!3077257 () Bool)

(declare-fun e!1925267 () Bool)

(assert (=> b!3077257 (= e!1925265 e!1925267)))

(declare-fun res!1262709 () Bool)

(assert (=> b!3077257 (= res!1262709 (not (nullable!3172 (reg!9855 (regOne!19564 r!17423)))))))

(assert (=> b!3077257 (=> (not res!1262709) (not e!1925267))))

(declare-fun b!3077258 () Bool)

(assert (=> b!3077258 (= e!1925270 e!1925269)))

(declare-fun res!1262707 () Bool)

(assert (=> b!3077258 (=> (not res!1262707) (not e!1925269))))

(assert (=> b!3077258 (= res!1262707 call!214198)))

(declare-fun b!3077259 () Bool)

(assert (=> b!3077259 (= e!1925265 e!1925271)))

(assert (=> b!3077259 (= c!512110 (is-Union!9526 (regOne!19564 r!17423)))))

(declare-fun d!857099 () Bool)

(declare-fun res!1262708 () Bool)

(assert (=> d!857099 (=> res!1262708 e!1925266)))

(assert (=> d!857099 (= res!1262708 (is-ElementMatch!9526 (regOne!19564 r!17423)))))

(assert (=> d!857099 (= (validRegex!4259 (regOne!19564 r!17423)) e!1925266)))

(declare-fun bm!214193 () Bool)

(assert (=> bm!214193 (= call!214197 (validRegex!4259 (ite c!512110 (regOne!19565 (regOne!19564 r!17423)) (regTwo!19564 (regOne!19564 r!17423)))))))

(declare-fun b!3077260 () Bool)

(assert (=> b!3077260 (= e!1925267 call!214199)))

(declare-fun bm!214194 () Bool)

(assert (=> bm!214194 (= call!214198 call!214199)))

(assert (= (and d!857099 (not res!1262708)) b!3077254))

(assert (= (and b!3077254 c!512109) b!3077257))

(assert (= (and b!3077254 (not c!512109)) b!3077259))

(assert (= (and b!3077257 res!1262709) b!3077260))

(assert (= (and b!3077259 c!512110) b!3077255))

(assert (= (and b!3077259 (not c!512110)) b!3077256))

(assert (= (and b!3077255 res!1262710) b!3077252))

(assert (= (and b!3077256 (not res!1262711)) b!3077258))

(assert (= (and b!3077258 res!1262707) b!3077253))

(assert (= (or b!3077255 b!3077253) bm!214193))

(assert (= (or b!3077252 b!3077258) bm!214194))

(assert (= (or b!3077260 bm!214194) bm!214192))

(declare-fun m!3388547 () Bool)

(assert (=> bm!214192 m!3388547))

(declare-fun m!3388549 () Bool)

(assert (=> b!3077257 m!3388549))

(declare-fun m!3388551 () Bool)

(assert (=> bm!214193 m!3388551))

(assert (=> b!3076823 d!857099))

(declare-fun d!857101 () Bool)

(declare-fun choose!18231 (Int) Bool)

(assert (=> d!857101 (= (Exists!1789 lambda!114183) (choose!18231 lambda!114183))))

(declare-fun bs!532787 () Bool)

(assert (= bs!532787 d!857101))

(declare-fun m!3388553 () Bool)

(assert (=> bs!532787 m!3388553))

(assert (=> b!3076823 d!857101))

(declare-fun d!857103 () Bool)

(declare-fun isEmpty!19598 (Option!6821) Bool)

(assert (=> d!857103 (= (isDefined!5372 (findConcatSeparation!1215 (regOne!19564 r!17423) (regTwo!19564 r!17423) Nil!35267 s!11993 s!11993)) (not (isEmpty!19598 (findConcatSeparation!1215 (regOne!19564 r!17423) (regTwo!19564 r!17423) Nil!35267 s!11993 s!11993))))))

(declare-fun bs!532788 () Bool)

(assert (= bs!532788 d!857103))

(assert (=> bs!532788 m!3388325))

(declare-fun m!3388555 () Bool)

(assert (=> bs!532788 m!3388555))

(assert (=> b!3076823 d!857103))

(declare-fun d!857105 () Bool)

(declare-fun e!1925291 () Bool)

(assert (=> d!857105 e!1925291))

(declare-fun res!1262727 () Bool)

(assert (=> d!857105 (=> res!1262727 e!1925291)))

(declare-fun e!1925290 () Bool)

(assert (=> d!857105 (= res!1262727 e!1925290)))

(declare-fun res!1262731 () Bool)

(assert (=> d!857105 (=> (not res!1262731) (not e!1925290))))

(declare-fun lt!1052576 () Option!6821)

(assert (=> d!857105 (= res!1262731 (isDefined!5372 lt!1052576))))

(declare-fun e!1925289 () Option!6821)

(assert (=> d!857105 (= lt!1052576 e!1925289)))

(declare-fun c!512117 () Bool)

(declare-fun e!1925293 () Bool)

(assert (=> d!857105 (= c!512117 e!1925293)))

(declare-fun res!1262728 () Bool)

(assert (=> d!857105 (=> (not res!1262728) (not e!1925293))))

(assert (=> d!857105 (= res!1262728 (matchR!4408 (regOne!19564 r!17423) Nil!35267))))

(assert (=> d!857105 (validRegex!4259 (regOne!19564 r!17423))))

(assert (=> d!857105 (= (findConcatSeparation!1215 (regOne!19564 r!17423) (regTwo!19564 r!17423) Nil!35267 s!11993 s!11993) lt!1052576)))

(declare-fun b!3077288 () Bool)

(declare-fun e!1925292 () Option!6821)

(assert (=> b!3077288 (= e!1925292 None!6820)))

(declare-fun b!3077289 () Bool)

(assert (=> b!3077289 (= e!1925289 (Some!6820 (tuple2!34179 Nil!35267 s!11993)))))

(declare-fun b!3077290 () Bool)

(declare-fun lt!1052575 () Unit!49491)

(declare-fun lt!1052574 () Unit!49491)

(assert (=> b!3077290 (= lt!1052575 lt!1052574)))

(declare-fun ++!8477 (List!35391 List!35391) List!35391)

(assert (=> b!3077290 (= (++!8477 (++!8477 Nil!35267 (Cons!35267 (h!40687 s!11993) Nil!35267)) (t!234456 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1072 (List!35391 C!19238 List!35391 List!35391) Unit!49491)

(assert (=> b!3077290 (= lt!1052574 (lemmaMoveElementToOtherListKeepsConcatEq!1072 Nil!35267 (h!40687 s!11993) (t!234456 s!11993) s!11993))))

(assert (=> b!3077290 (= e!1925292 (findConcatSeparation!1215 (regOne!19564 r!17423) (regTwo!19564 r!17423) (++!8477 Nil!35267 (Cons!35267 (h!40687 s!11993) Nil!35267)) (t!234456 s!11993) s!11993))))

(declare-fun b!3077291 () Bool)

(declare-fun res!1262730 () Bool)

(assert (=> b!3077291 (=> (not res!1262730) (not e!1925290))))

(declare-fun get!11051 (Option!6821) tuple2!34178)

(assert (=> b!3077291 (= res!1262730 (matchR!4408 (regTwo!19564 r!17423) (_2!20221 (get!11051 lt!1052576))))))

(declare-fun b!3077292 () Bool)

(declare-fun res!1262729 () Bool)

(assert (=> b!3077292 (=> (not res!1262729) (not e!1925290))))

(assert (=> b!3077292 (= res!1262729 (matchR!4408 (regOne!19564 r!17423) (_1!20221 (get!11051 lt!1052576))))))

(declare-fun b!3077293 () Bool)

(assert (=> b!3077293 (= e!1925290 (= (++!8477 (_1!20221 (get!11051 lt!1052576)) (_2!20221 (get!11051 lt!1052576))) s!11993))))

(declare-fun b!3077294 () Bool)

(assert (=> b!3077294 (= e!1925289 e!1925292)))

(declare-fun c!512118 () Bool)

(assert (=> b!3077294 (= c!512118 (is-Nil!35267 s!11993))))

(declare-fun b!3077295 () Bool)

(assert (=> b!3077295 (= e!1925291 (not (isDefined!5372 lt!1052576)))))

(declare-fun b!3077296 () Bool)

(assert (=> b!3077296 (= e!1925293 (matchR!4408 (regTwo!19564 r!17423) s!11993))))

(assert (= (and d!857105 res!1262728) b!3077296))

(assert (= (and d!857105 c!512117) b!3077289))

(assert (= (and d!857105 (not c!512117)) b!3077294))

(assert (= (and b!3077294 c!512118) b!3077288))

(assert (= (and b!3077294 (not c!512118)) b!3077290))

(assert (= (and d!857105 res!1262731) b!3077292))

(assert (= (and b!3077292 res!1262729) b!3077291))

(assert (= (and b!3077291 res!1262730) b!3077293))

(assert (= (and d!857105 (not res!1262727)) b!3077295))

(declare-fun m!3388567 () Bool)

(assert (=> b!3077293 m!3388567))

(declare-fun m!3388569 () Bool)

(assert (=> b!3077293 m!3388569))

(assert (=> b!3077292 m!3388567))

(declare-fun m!3388571 () Bool)

(assert (=> b!3077292 m!3388571))

(assert (=> b!3077291 m!3388567))

(declare-fun m!3388573 () Bool)

(assert (=> b!3077291 m!3388573))

(declare-fun m!3388575 () Bool)

(assert (=> b!3077295 m!3388575))

(declare-fun m!3388577 () Bool)

(assert (=> b!3077296 m!3388577))

(declare-fun m!3388579 () Bool)

(assert (=> b!3077290 m!3388579))

(assert (=> b!3077290 m!3388579))

(declare-fun m!3388583 () Bool)

(assert (=> b!3077290 m!3388583))

(declare-fun m!3388585 () Bool)

(assert (=> b!3077290 m!3388585))

(assert (=> b!3077290 m!3388579))

(declare-fun m!3388587 () Bool)

(assert (=> b!3077290 m!3388587))

(assert (=> d!857105 m!3388575))

(declare-fun m!3388589 () Bool)

(assert (=> d!857105 m!3388589))

(assert (=> d!857105 m!3388323))

(assert (=> b!3076823 d!857105))

(declare-fun bs!532792 () Bool)

(declare-fun d!857115 () Bool)

(assert (= bs!532792 (and d!857115 b!3076823)))

(declare-fun lambda!114195 () Int)

(assert (=> bs!532792 (= lambda!114195 lambda!114183)))

(declare-fun bs!532793 () Bool)

(assert (= bs!532793 (and d!857115 b!3076924)))

(assert (=> bs!532793 (not (= lambda!114195 lambda!114191))))

(declare-fun bs!532794 () Bool)

(assert (= bs!532794 (and d!857115 b!3076914)))

(assert (=> bs!532794 (not (= lambda!114195 lambda!114192))))

(assert (=> d!857115 true))

(assert (=> d!857115 true))

(assert (=> d!857115 true))

(assert (=> d!857115 (= (isDefined!5372 (findConcatSeparation!1215 (regOne!19564 r!17423) (regTwo!19564 r!17423) Nil!35267 s!11993 s!11993)) (Exists!1789 lambda!114195))))

(declare-fun lt!1052580 () Unit!49491)

(declare-fun choose!18232 (Regex!9526 Regex!9526 List!35391) Unit!49491)

(assert (=> d!857115 (= lt!1052580 (choose!18232 (regOne!19564 r!17423) (regTwo!19564 r!17423) s!11993))))

(assert (=> d!857115 (validRegex!4259 (regOne!19564 r!17423))))

(assert (=> d!857115 (= (lemmaFindConcatSeparationEquivalentToExists!985 (regOne!19564 r!17423) (regTwo!19564 r!17423) s!11993) lt!1052580)))

(declare-fun bs!532795 () Bool)

(assert (= bs!532795 d!857115))

(assert (=> bs!532795 m!3388323))

(assert (=> bs!532795 m!3388325))

(assert (=> bs!532795 m!3388325))

(assert (=> bs!532795 m!3388327))

(declare-fun m!3388591 () Bool)

(assert (=> bs!532795 m!3388591))

(declare-fun m!3388593 () Bool)

(assert (=> bs!532795 m!3388593))

(assert (=> b!3076823 d!857115))

(declare-fun d!857117 () Bool)

(assert (=> d!857117 (= (isEmpty!19596 s!11993) (is-Nil!35267 s!11993))))

(assert (=> b!3076818 d!857117))

(declare-fun b!3077314 () Bool)

(declare-fun e!1925298 () Bool)

(declare-fun tp!969836 () Bool)

(declare-fun tp!969832 () Bool)

(assert (=> b!3077314 (= e!1925298 (and tp!969836 tp!969832))))

(declare-fun b!3077312 () Bool)

(declare-fun tp!969835 () Bool)

(declare-fun tp!969834 () Bool)

(assert (=> b!3077312 (= e!1925298 (and tp!969835 tp!969834))))

(declare-fun b!3077313 () Bool)

(declare-fun tp!969833 () Bool)

(assert (=> b!3077313 (= e!1925298 tp!969833)))

(assert (=> b!3076821 (= tp!969801 e!1925298)))

(declare-fun b!3077311 () Bool)

(assert (=> b!3077311 (= e!1925298 tp_is_empty!16615)))

(assert (= (and b!3076821 (is-ElementMatch!9526 (regOne!19565 r!17423))) b!3077311))

(assert (= (and b!3076821 (is-Concat!14847 (regOne!19565 r!17423))) b!3077312))

(assert (= (and b!3076821 (is-Star!9526 (regOne!19565 r!17423))) b!3077313))

(assert (= (and b!3076821 (is-Union!9526 (regOne!19565 r!17423))) b!3077314))

(declare-fun b!3077318 () Bool)

(declare-fun e!1925299 () Bool)

(declare-fun tp!969841 () Bool)

(declare-fun tp!969837 () Bool)

(assert (=> b!3077318 (= e!1925299 (and tp!969841 tp!969837))))

(declare-fun b!3077316 () Bool)

(declare-fun tp!969840 () Bool)

(declare-fun tp!969839 () Bool)

(assert (=> b!3077316 (= e!1925299 (and tp!969840 tp!969839))))

(declare-fun b!3077317 () Bool)

(declare-fun tp!969838 () Bool)

(assert (=> b!3077317 (= e!1925299 tp!969838)))

(assert (=> b!3076821 (= tp!969799 e!1925299)))

(declare-fun b!3077315 () Bool)

(assert (=> b!3077315 (= e!1925299 tp_is_empty!16615)))

(assert (= (and b!3076821 (is-ElementMatch!9526 (regTwo!19565 r!17423))) b!3077315))

(assert (= (and b!3076821 (is-Concat!14847 (regTwo!19565 r!17423))) b!3077316))

(assert (= (and b!3076821 (is-Star!9526 (regTwo!19565 r!17423))) b!3077317))

(assert (= (and b!3076821 (is-Union!9526 (regTwo!19565 r!17423))) b!3077318))

(declare-fun b!3077323 () Bool)

(declare-fun e!1925302 () Bool)

(declare-fun tp!969844 () Bool)

(assert (=> b!3077323 (= e!1925302 (and tp_is_empty!16615 tp!969844))))

(assert (=> b!3076820 (= tp!969802 e!1925302)))

(assert (= (and b!3076820 (is-Cons!35267 (t!234456 s!11993))) b!3077323))

(declare-fun b!3077327 () Bool)

(declare-fun e!1925303 () Bool)

(declare-fun tp!969849 () Bool)

(declare-fun tp!969845 () Bool)

(assert (=> b!3077327 (= e!1925303 (and tp!969849 tp!969845))))

(declare-fun b!3077325 () Bool)

(declare-fun tp!969848 () Bool)

(declare-fun tp!969847 () Bool)

(assert (=> b!3077325 (= e!1925303 (and tp!969848 tp!969847))))

(declare-fun b!3077326 () Bool)

(declare-fun tp!969846 () Bool)

(assert (=> b!3077326 (= e!1925303 tp!969846)))

(assert (=> b!3076829 (= tp!969800 e!1925303)))

(declare-fun b!3077324 () Bool)

(assert (=> b!3077324 (= e!1925303 tp_is_empty!16615)))

(assert (= (and b!3076829 (is-ElementMatch!9526 (reg!9855 r!17423))) b!3077324))

(assert (= (and b!3076829 (is-Concat!14847 (reg!9855 r!17423))) b!3077325))

(assert (= (and b!3076829 (is-Star!9526 (reg!9855 r!17423))) b!3077326))

(assert (= (and b!3076829 (is-Union!9526 (reg!9855 r!17423))) b!3077327))

(declare-fun b!3077331 () Bool)

(declare-fun e!1925304 () Bool)

(declare-fun tp!969854 () Bool)

(declare-fun tp!969850 () Bool)

(assert (=> b!3077331 (= e!1925304 (and tp!969854 tp!969850))))

(declare-fun b!3077329 () Bool)

(declare-fun tp!969853 () Bool)

(declare-fun tp!969852 () Bool)

(assert (=> b!3077329 (= e!1925304 (and tp!969853 tp!969852))))

(declare-fun b!3077330 () Bool)

(declare-fun tp!969851 () Bool)

(assert (=> b!3077330 (= e!1925304 tp!969851)))

(assert (=> b!3076828 (= tp!969803 e!1925304)))

(declare-fun b!3077328 () Bool)

(assert (=> b!3077328 (= e!1925304 tp_is_empty!16615)))

(assert (= (and b!3076828 (is-ElementMatch!9526 (regOne!19564 r!17423))) b!3077328))

(assert (= (and b!3076828 (is-Concat!14847 (regOne!19564 r!17423))) b!3077329))

(assert (= (and b!3076828 (is-Star!9526 (regOne!19564 r!17423))) b!3077330))

(assert (= (and b!3076828 (is-Union!9526 (regOne!19564 r!17423))) b!3077331))

(declare-fun b!3077335 () Bool)

(declare-fun e!1925305 () Bool)

(declare-fun tp!969859 () Bool)

(declare-fun tp!969855 () Bool)

(assert (=> b!3077335 (= e!1925305 (and tp!969859 tp!969855))))

(declare-fun b!3077333 () Bool)

(declare-fun tp!969858 () Bool)

(declare-fun tp!969857 () Bool)

(assert (=> b!3077333 (= e!1925305 (and tp!969858 tp!969857))))

(declare-fun b!3077334 () Bool)

(declare-fun tp!969856 () Bool)

(assert (=> b!3077334 (= e!1925305 tp!969856)))

(assert (=> b!3076828 (= tp!969798 e!1925305)))

(declare-fun b!3077332 () Bool)

(assert (=> b!3077332 (= e!1925305 tp_is_empty!16615)))

(assert (= (and b!3076828 (is-ElementMatch!9526 (regTwo!19564 r!17423))) b!3077332))

(assert (= (and b!3076828 (is-Concat!14847 (regTwo!19564 r!17423))) b!3077333))

(assert (= (and b!3076828 (is-Star!9526 (regTwo!19564 r!17423))) b!3077334))

(assert (= (and b!3076828 (is-Union!9526 (regTwo!19564 r!17423))) b!3077335))

(push 1)

(assert (not b!3077292))

(assert (not b!3077023))

(assert (not b!3077018))

(assert (not bm!214173))

(assert (not d!857093))

(assert (not b!3077051))

(assert (not bm!214187))

(assert (not b!3077065))

(assert (not bm!214192))

(assert (not b!3077026))

(assert (not b!3077037))

(assert (not b!3076919))

(assert (not d!857077))

(assert (not b!3077038))

(assert (not b!3077043))

(assert (not bm!214146))

(assert (not b!3077073))

(assert (not b!3077295))

(assert (not d!857079))

(assert (not d!857063))

(assert (not b!3077323))

(assert (not d!857083))

(assert (not bm!214153))

(assert (not b!3076957))

(assert (not bm!214172))

(assert (not bm!214185))

(assert (not b!3077063))

(assert (not b!3077029))

(assert (not b!3077330))

(assert (not b!3077031))

(assert (not b!3077257))

(assert (not b!3077057))

(assert (not b!3077059))

(assert (not bm!214174))

(assert (not b!3077024))

(assert (not b!3076960))

(assert (not d!857103))

(assert (not b!3076954))

(assert (not bm!214183))

(assert (not b!3077207))

(assert (not bm!214135))

(assert (not bm!214176))

(assert (not d!857057))

(assert (not b!3077325))

(assert (not b!3077333))

(assert (not b!3077291))

(assert (not b!3077214))

(assert (not b!3077334))

(assert (not bm!214145))

(assert (not d!857071))

(assert (not bm!214150))

(assert (not b!3077035))

(assert (not d!857073))

(assert (not b!3076955))

(assert (not b!3076966))

(assert (not bm!214152))

(assert (not b!3077068))

(assert (not b!3077335))

(assert (not d!857097))

(assert (not d!857069))

(assert (not b!3077293))

(assert (not b!3076915))

(assert (not bm!214188))

(assert (not b!3077317))

(assert (not b!3077054))

(assert (not b!3077236))

(assert (not bm!214134))

(assert (not b!3077241))

(assert (not b!3077318))

(assert (not b!3077331))

(assert (not bm!214177))

(assert (not d!857101))

(assert (not b!3077049))

(assert (not b!3077071))

(assert (not b!3077316))

(assert (not b!3077052))

(assert (not b!3077066))

(assert (not b!3077045))

(assert (not bm!214184))

(assert (not bm!214151))

(assert (not b!3077312))

(assert (not bm!214138))

(assert (not b!3077040))

(assert (not b!3077326))

(assert (not b!3077327))

(assert (not d!857115))

(assert (not d!857075))

(assert (not b!3077314))

(assert (not bm!214193))

(assert (not b!3077313))

(assert (not b!3077329))

(assert (not b!3077077))

(assert (not b!3077290))

(assert (not d!857105))

(assert tp_is_empty!16615)

(assert (not b!3076962))

(assert (not b!3077296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

