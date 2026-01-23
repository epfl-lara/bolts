; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244278 () Bool)

(assert start!244278)

(declare-fun b!2502993 () Bool)

(declare-fun e!1587305 () Bool)

(declare-datatypes ((C!14994 0))(
  ( (C!14995 (val!9149 Int)) )
))
(declare-datatypes ((Regex!7418 0))(
  ( (ElementMatch!7418 (c!398372 C!14994)) (Concat!12114 (regOne!15348 Regex!7418) (regTwo!15348 Regex!7418)) (EmptyExpr!7418) (Star!7418 (reg!7747 Regex!7418)) (EmptyLang!7418) (Union!7418 (regOne!15349 Regex!7418) (regTwo!15349 Regex!7418)) )
))
(declare-fun r!27340 () Regex!7418)

(declare-fun validRegex!3044 (Regex!7418) Bool)

(assert (=> b!2502993 (= e!1587305 (validRegex!3044 (regTwo!15348 r!27340)))))

(declare-fun b!2502994 () Bool)

(declare-fun e!1587309 () Bool)

(assert (=> b!2502994 (= e!1587309 e!1587305)))

(declare-fun res!1058293 () Bool)

(assert (=> b!2502994 (=> res!1058293 e!1587305)))

(declare-fun lt!896020 () Regex!7418)

(assert (=> b!2502994 (= res!1058293 (not (validRegex!3044 lt!896020)))))

(declare-datatypes ((List!29483 0))(
  ( (Nil!29383) (Cons!29383 (h!34803 C!14994) (t!211182 List!29483)) )
))
(declare-fun tl!4068 () List!29483)

(declare-datatypes ((tuple2!29414 0))(
  ( (tuple2!29415 (_1!17249 List!29483) (_2!17249 List!29483)) )
))
(declare-datatypes ((Option!5827 0))(
  ( (None!5826) (Some!5826 (v!31757 tuple2!29414)) )
))
(declare-fun isDefined!4649 (Option!5827) Bool)

(declare-fun findConcatSeparation!849 (Regex!7418 Regex!7418 List!29483 List!29483 List!29483) Option!5827)

(assert (=> b!2502994 (isDefined!4649 (findConcatSeparation!849 lt!896020 (regTwo!15348 r!27340) Nil!29383 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43093 0))(
  ( (Unit!43094) )
))
(declare-fun lt!896021 () Unit!43093)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!131 (Regex!7418 Regex!7418 List!29483) Unit!43093)

(assert (=> b!2502994 (= lt!896021 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!131 lt!896020 (regTwo!15348 r!27340) tl!4068))))

(declare-fun b!2502995 () Bool)

(declare-fun res!1058288 () Bool)

(declare-fun e!1587306 () Bool)

(assert (=> b!2502995 (=> (not res!1058288) (not e!1587306))))

(declare-fun nullable!2335 (Regex!7418) Bool)

(assert (=> b!2502995 (= res!1058288 (nullable!2335 (regOne!15348 r!27340)))))

(declare-fun b!2502997 () Bool)

(declare-fun e!1587308 () Bool)

(declare-fun tp_is_empty!12691 () Bool)

(declare-fun tp!801190 () Bool)

(assert (=> b!2502997 (= e!1587308 (and tp_is_empty!12691 tp!801190))))

(declare-fun b!2502998 () Bool)

(declare-fun e!1587310 () Bool)

(declare-fun lt!896019 () Regex!7418)

(declare-fun matchR!3421 (Regex!7418 List!29483) Bool)

(assert (=> b!2502998 (= e!1587310 (matchR!3421 lt!896019 tl!4068))))

(declare-fun b!2502999 () Bool)

(declare-fun res!1058291 () Bool)

(assert (=> b!2502999 (=> (not res!1058291) (not e!1587306))))

(declare-fun c!14016 () C!14994)

(declare-fun derivative!113 (Regex!7418 List!29483) Regex!7418)

(declare-fun derivativeStep!1987 (Regex!7418 C!14994) Regex!7418)

(assert (=> b!2502999 (= res!1058291 (nullable!2335 (derivative!113 (derivativeStep!1987 r!27340 c!14016) tl!4068)))))

(declare-fun b!2503000 () Bool)

(declare-fun e!1587307 () Bool)

(declare-fun tp!801187 () Bool)

(assert (=> b!2503000 (= e!1587307 tp!801187)))

(declare-fun b!2503001 () Bool)

(declare-fun res!1058287 () Bool)

(assert (=> b!2503001 (=> (not res!1058287) (not e!1587306))))

(assert (=> b!2503001 (= res!1058287 (and (not (is-EmptyExpr!7418 r!27340)) (not (is-EmptyLang!7418 r!27340)) (not (is-ElementMatch!7418 r!27340)) (not (is-Union!7418 r!27340)) (not (is-Star!7418 r!27340))))))

(declare-fun b!2503002 () Bool)

(assert (=> b!2503002 (= e!1587306 (not e!1587309))))

(declare-fun res!1058292 () Bool)

(assert (=> b!2503002 (=> res!1058292 e!1587309)))

(declare-fun lt!896025 () Bool)

(assert (=> b!2503002 (= res!1058292 (not lt!896025))))

(assert (=> b!2503002 e!1587310))

(declare-fun res!1058290 () Bool)

(assert (=> b!2503002 (=> res!1058290 e!1587310)))

(assert (=> b!2503002 (= res!1058290 lt!896025)))

(declare-fun lt!896026 () Regex!7418)

(assert (=> b!2503002 (= lt!896025 (matchR!3421 lt!896026 tl!4068))))

(declare-fun lt!896022 () Unit!43093)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!113 (Regex!7418 Regex!7418 List!29483) Unit!43093)

(assert (=> b!2503002 (= lt!896022 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!113 lt!896026 lt!896019 tl!4068))))

(declare-fun lt!896024 () Regex!7418)

(assert (=> b!2503002 (= (matchR!3421 lt!896024 tl!4068) (matchR!3421 (derivative!113 lt!896024 tl!4068) Nil!29383))))

(declare-fun lt!896023 () Unit!43093)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!67 (Regex!7418 List!29483) Unit!43093)

(assert (=> b!2503002 (= lt!896023 (lemmaMatchRIsSameAsWholeDerivativeAndNil!67 lt!896024 tl!4068))))

(assert (=> b!2503002 (= lt!896024 (Union!7418 lt!896026 lt!896019))))

(assert (=> b!2503002 (= lt!896019 (derivativeStep!1987 (regTwo!15348 r!27340) c!14016))))

(assert (=> b!2503002 (= lt!896026 (Concat!12114 lt!896020 (regTwo!15348 r!27340)))))

(assert (=> b!2503002 (= lt!896020 (derivativeStep!1987 (regOne!15348 r!27340) c!14016))))

(declare-fun b!2503003 () Bool)

(assert (=> b!2503003 (= e!1587307 tp_is_empty!12691)))

(declare-fun b!2503004 () Bool)

(declare-fun tp!801188 () Bool)

(declare-fun tp!801189 () Bool)

(assert (=> b!2503004 (= e!1587307 (and tp!801188 tp!801189))))

(declare-fun b!2502996 () Bool)

(declare-fun tp!801191 () Bool)

(declare-fun tp!801192 () Bool)

(assert (=> b!2502996 (= e!1587307 (and tp!801191 tp!801192))))

(declare-fun res!1058289 () Bool)

(assert (=> start!244278 (=> (not res!1058289) (not e!1587306))))

(assert (=> start!244278 (= res!1058289 (validRegex!3044 r!27340))))

(assert (=> start!244278 e!1587306))

(assert (=> start!244278 e!1587307))

(assert (=> start!244278 tp_is_empty!12691))

(assert (=> start!244278 e!1587308))

(assert (= (and start!244278 res!1058289) b!2502999))

(assert (= (and b!2502999 res!1058291) b!2503001))

(assert (= (and b!2503001 res!1058287) b!2502995))

(assert (= (and b!2502995 res!1058288) b!2503002))

(assert (= (and b!2503002 (not res!1058290)) b!2502998))

(assert (= (and b!2503002 (not res!1058292)) b!2502994))

(assert (= (and b!2502994 (not res!1058293)) b!2502993))

(assert (= (and start!244278 (is-ElementMatch!7418 r!27340)) b!2503003))

(assert (= (and start!244278 (is-Concat!12114 r!27340)) b!2502996))

(assert (= (and start!244278 (is-Star!7418 r!27340)) b!2503000))

(assert (= (and start!244278 (is-Union!7418 r!27340)) b!2503004))

(assert (= (and start!244278 (is-Cons!29383 tl!4068)) b!2502997))

(declare-fun m!2864653 () Bool)

(assert (=> b!2502993 m!2864653))

(declare-fun m!2864655 () Bool)

(assert (=> b!2503002 m!2864655))

(declare-fun m!2864657 () Bool)

(assert (=> b!2503002 m!2864657))

(declare-fun m!2864659 () Bool)

(assert (=> b!2503002 m!2864659))

(declare-fun m!2864661 () Bool)

(assert (=> b!2503002 m!2864661))

(declare-fun m!2864663 () Bool)

(assert (=> b!2503002 m!2864663))

(declare-fun m!2864665 () Bool)

(assert (=> b!2503002 m!2864665))

(declare-fun m!2864667 () Bool)

(assert (=> b!2503002 m!2864667))

(assert (=> b!2503002 m!2864663))

(declare-fun m!2864669 () Bool)

(assert (=> b!2503002 m!2864669))

(declare-fun m!2864671 () Bool)

(assert (=> b!2502999 m!2864671))

(assert (=> b!2502999 m!2864671))

(declare-fun m!2864673 () Bool)

(assert (=> b!2502999 m!2864673))

(assert (=> b!2502999 m!2864673))

(declare-fun m!2864675 () Bool)

(assert (=> b!2502999 m!2864675))

(declare-fun m!2864677 () Bool)

(assert (=> start!244278 m!2864677))

(declare-fun m!2864679 () Bool)

(assert (=> b!2502994 m!2864679))

(declare-fun m!2864681 () Bool)

(assert (=> b!2502994 m!2864681))

(assert (=> b!2502994 m!2864681))

(declare-fun m!2864683 () Bool)

(assert (=> b!2502994 m!2864683))

(declare-fun m!2864685 () Bool)

(assert (=> b!2502994 m!2864685))

(declare-fun m!2864687 () Bool)

(assert (=> b!2502995 m!2864687))

(declare-fun m!2864689 () Bool)

(assert (=> b!2502998 m!2864689))

(push 1)

(assert (not b!2503002))

(assert tp_is_empty!12691)

(assert (not b!2502999))

(assert (not b!2502994))

(assert (not start!244278))

(assert (not b!2502997))

(assert (not b!2502993))

(assert (not b!2502995))

(assert (not b!2502996))

(assert (not b!2502998))

(assert (not b!2503004))

(assert (not b!2503000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!154757 () Bool)

(declare-fun call!154763 () Bool)

(declare-fun c!398379 () Bool)

(assert (=> bm!154757 (= call!154763 (validRegex!3044 (ite c!398379 (regTwo!15349 lt!896020) (regOne!15348 lt!896020))))))

(declare-fun b!2503059 () Bool)

(declare-fun res!1058327 () Bool)

(declare-fun e!1587345 () Bool)

(assert (=> b!2503059 (=> (not res!1058327) (not e!1587345))))

(declare-fun call!154764 () Bool)

(assert (=> b!2503059 (= res!1058327 call!154764)))

(declare-fun e!1587348 () Bool)

(assert (=> b!2503059 (= e!1587348 e!1587345)))

(declare-fun b!2503060 () Bool)

(declare-fun res!1058329 () Bool)

(declare-fun e!1587347 () Bool)

(assert (=> b!2503060 (=> res!1058329 e!1587347)))

(assert (=> b!2503060 (= res!1058329 (not (is-Concat!12114 lt!896020)))))

(assert (=> b!2503060 (= e!1587348 e!1587347)))

(declare-fun b!2503061 () Bool)

(assert (=> b!2503061 (= e!1587345 call!154763)))

(declare-fun b!2503062 () Bool)

(declare-fun e!1587344 () Bool)

(assert (=> b!2503062 (= e!1587344 e!1587348)))

(assert (=> b!2503062 (= c!398379 (is-Union!7418 lt!896020))))

(declare-fun b!2503063 () Bool)

(declare-fun e!1587349 () Bool)

(assert (=> b!2503063 (= e!1587349 call!154764)))

(declare-fun b!2503064 () Bool)

(assert (=> b!2503064 (= e!1587347 e!1587349)))

(declare-fun res!1058325 () Bool)

(assert (=> b!2503064 (=> (not res!1058325) (not e!1587349))))

(assert (=> b!2503064 (= res!1058325 call!154763)))

(declare-fun d!715679 () Bool)

(declare-fun res!1058328 () Bool)

(declare-fun e!1587343 () Bool)

(assert (=> d!715679 (=> res!1058328 e!1587343)))

(assert (=> d!715679 (= res!1058328 (is-ElementMatch!7418 lt!896020))))

(assert (=> d!715679 (= (validRegex!3044 lt!896020) e!1587343)))

(declare-fun call!154762 () Bool)

(declare-fun c!398378 () Bool)

(declare-fun bm!154758 () Bool)

(assert (=> bm!154758 (= call!154762 (validRegex!3044 (ite c!398378 (reg!7747 lt!896020) (ite c!398379 (regOne!15349 lt!896020) (regTwo!15348 lt!896020)))))))

(declare-fun b!2503065 () Bool)

(assert (=> b!2503065 (= e!1587343 e!1587344)))

(assert (=> b!2503065 (= c!398378 (is-Star!7418 lt!896020))))

(declare-fun b!2503066 () Bool)

(declare-fun e!1587346 () Bool)

(assert (=> b!2503066 (= e!1587346 call!154762)))

(declare-fun bm!154759 () Bool)

(assert (=> bm!154759 (= call!154764 call!154762)))

(declare-fun b!2503067 () Bool)

(assert (=> b!2503067 (= e!1587344 e!1587346)))

(declare-fun res!1058326 () Bool)

(assert (=> b!2503067 (= res!1058326 (not (nullable!2335 (reg!7747 lt!896020))))))

(assert (=> b!2503067 (=> (not res!1058326) (not e!1587346))))

(assert (= (and d!715679 (not res!1058328)) b!2503065))

(assert (= (and b!2503065 c!398378) b!2503067))

(assert (= (and b!2503065 (not c!398378)) b!2503062))

(assert (= (and b!2503067 res!1058326) b!2503066))

(assert (= (and b!2503062 c!398379) b!2503059))

(assert (= (and b!2503062 (not c!398379)) b!2503060))

(assert (= (and b!2503059 res!1058327) b!2503061))

(assert (= (and b!2503060 (not res!1058329)) b!2503064))

(assert (= (and b!2503064 res!1058325) b!2503063))

(assert (= (or b!2503059 b!2503063) bm!154759))

(assert (= (or b!2503061 b!2503064) bm!154757))

(assert (= (or b!2503066 bm!154759) bm!154758))

(declare-fun m!2864731 () Bool)

(assert (=> bm!154757 m!2864731))

(declare-fun m!2864733 () Bool)

(assert (=> bm!154758 m!2864733))

(declare-fun m!2864735 () Bool)

(assert (=> b!2503067 m!2864735))

(assert (=> b!2502994 d!715679))

(declare-fun d!715685 () Bool)

(declare-fun isEmpty!16845 (Option!5827) Bool)

(assert (=> d!715685 (= (isDefined!4649 (findConcatSeparation!849 lt!896020 (regTwo!15348 r!27340) Nil!29383 tl!4068 tl!4068)) (not (isEmpty!16845 (findConcatSeparation!849 lt!896020 (regTwo!15348 r!27340) Nil!29383 tl!4068 tl!4068))))))

(declare-fun bs!468611 () Bool)

(assert (= bs!468611 d!715685))

(assert (=> bs!468611 m!2864681))

(declare-fun m!2864737 () Bool)

(assert (=> bs!468611 m!2864737))

(assert (=> b!2502994 d!715685))

(declare-fun b!2503150 () Bool)

(declare-fun e!1587404 () Option!5827)

(assert (=> b!2503150 (= e!1587404 None!5826)))

(declare-fun b!2503151 () Bool)

(declare-fun res!1058376 () Bool)

(declare-fun e!1587405 () Bool)

(assert (=> b!2503151 (=> (not res!1058376) (not e!1587405))))

(declare-fun lt!896061 () Option!5827)

(declare-fun get!9119 (Option!5827) tuple2!29414)

(assert (=> b!2503151 (= res!1058376 (matchR!3421 lt!896020 (_1!17249 (get!9119 lt!896061))))))

(declare-fun d!715687 () Bool)

(declare-fun e!1587403 () Bool)

(assert (=> d!715687 e!1587403))

(declare-fun res!1058379 () Bool)

(assert (=> d!715687 (=> res!1058379 e!1587403)))

(assert (=> d!715687 (= res!1058379 e!1587405)))

(declare-fun res!1058380 () Bool)

(assert (=> d!715687 (=> (not res!1058380) (not e!1587405))))

(assert (=> d!715687 (= res!1058380 (isDefined!4649 lt!896061))))

(declare-fun e!1587402 () Option!5827)

(assert (=> d!715687 (= lt!896061 e!1587402)))

(declare-fun c!398399 () Bool)

(declare-fun e!1587406 () Bool)

(assert (=> d!715687 (= c!398399 e!1587406)))

(declare-fun res!1058377 () Bool)

(assert (=> d!715687 (=> (not res!1058377) (not e!1587406))))

(assert (=> d!715687 (= res!1058377 (matchR!3421 lt!896020 Nil!29383))))

(assert (=> d!715687 (validRegex!3044 lt!896020)))

(assert (=> d!715687 (= (findConcatSeparation!849 lt!896020 (regTwo!15348 r!27340) Nil!29383 tl!4068 tl!4068) lt!896061)))

(declare-fun b!2503152 () Bool)

(declare-fun res!1058378 () Bool)

(assert (=> b!2503152 (=> (not res!1058378) (not e!1587405))))

(assert (=> b!2503152 (= res!1058378 (matchR!3421 (regTwo!15348 r!27340) (_2!17249 (get!9119 lt!896061))))))

(declare-fun b!2503153 () Bool)

(assert (=> b!2503153 (= e!1587402 e!1587404)))

(declare-fun c!398398 () Bool)

(assert (=> b!2503153 (= c!398398 (is-Nil!29383 tl!4068))))

(declare-fun b!2503154 () Bool)

(assert (=> b!2503154 (= e!1587402 (Some!5826 (tuple2!29415 Nil!29383 tl!4068)))))

(declare-fun b!2503155 () Bool)

(assert (=> b!2503155 (= e!1587406 (matchR!3421 (regTwo!15348 r!27340) tl!4068))))

(declare-fun b!2503156 () Bool)

(declare-fun lt!896059 () Unit!43093)

(declare-fun lt!896060 () Unit!43093)

(assert (=> b!2503156 (= lt!896059 lt!896060)))

(declare-fun ++!7180 (List!29483 List!29483) List!29483)

(assert (=> b!2503156 (= (++!7180 (++!7180 Nil!29383 (Cons!29383 (h!34803 tl!4068) Nil!29383)) (t!211182 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!730 (List!29483 C!14994 List!29483 List!29483) Unit!43093)

(assert (=> b!2503156 (= lt!896060 (lemmaMoveElementToOtherListKeepsConcatEq!730 Nil!29383 (h!34803 tl!4068) (t!211182 tl!4068) tl!4068))))

(assert (=> b!2503156 (= e!1587404 (findConcatSeparation!849 lt!896020 (regTwo!15348 r!27340) (++!7180 Nil!29383 (Cons!29383 (h!34803 tl!4068) Nil!29383)) (t!211182 tl!4068) tl!4068))))

(declare-fun b!2503157 () Bool)

(assert (=> b!2503157 (= e!1587403 (not (isDefined!4649 lt!896061)))))

(declare-fun b!2503158 () Bool)

(assert (=> b!2503158 (= e!1587405 (= (++!7180 (_1!17249 (get!9119 lt!896061)) (_2!17249 (get!9119 lt!896061))) tl!4068))))

(assert (= (and d!715687 res!1058377) b!2503155))

(assert (= (and d!715687 c!398399) b!2503154))

(assert (= (and d!715687 (not c!398399)) b!2503153))

(assert (= (and b!2503153 c!398398) b!2503150))

(assert (= (and b!2503153 (not c!398398)) b!2503156))

(assert (= (and d!715687 res!1058380) b!2503151))

(assert (= (and b!2503151 res!1058376) b!2503152))

(assert (= (and b!2503152 res!1058378) b!2503158))

(assert (= (and d!715687 (not res!1058379)) b!2503157))

(declare-fun m!2864751 () Bool)

(assert (=> b!2503151 m!2864751))

(declare-fun m!2864753 () Bool)

(assert (=> b!2503151 m!2864753))

(declare-fun m!2864755 () Bool)

(assert (=> b!2503156 m!2864755))

(assert (=> b!2503156 m!2864755))

(declare-fun m!2864757 () Bool)

(assert (=> b!2503156 m!2864757))

(declare-fun m!2864759 () Bool)

(assert (=> b!2503156 m!2864759))

(assert (=> b!2503156 m!2864755))

(declare-fun m!2864761 () Bool)

(assert (=> b!2503156 m!2864761))

(assert (=> b!2503158 m!2864751))

(declare-fun m!2864763 () Bool)

(assert (=> b!2503158 m!2864763))

(assert (=> b!2503152 m!2864751))

(declare-fun m!2864765 () Bool)

(assert (=> b!2503152 m!2864765))

(declare-fun m!2864767 () Bool)

(assert (=> b!2503155 m!2864767))

(declare-fun m!2864769 () Bool)

(assert (=> d!715687 m!2864769))

(declare-fun m!2864771 () Bool)

(assert (=> d!715687 m!2864771))

(assert (=> d!715687 m!2864679))

(assert (=> b!2503157 m!2864769))

(assert (=> b!2502994 d!715687))

(declare-fun d!715693 () Bool)

(assert (=> d!715693 (isDefined!4649 (findConcatSeparation!849 lt!896020 (regTwo!15348 r!27340) Nil!29383 tl!4068 tl!4068))))

(declare-fun lt!896065 () Unit!43093)

(declare-fun choose!14785 (Regex!7418 Regex!7418 List!29483) Unit!43093)

(assert (=> d!715693 (= lt!896065 (choose!14785 lt!896020 (regTwo!15348 r!27340) tl!4068))))

(assert (=> d!715693 (validRegex!3044 lt!896020)))

(assert (=> d!715693 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!131 lt!896020 (regTwo!15348 r!27340) tl!4068) lt!896065)))

(declare-fun bs!468612 () Bool)

(assert (= bs!468612 d!715693))

(assert (=> bs!468612 m!2864681))

(assert (=> bs!468612 m!2864681))

(assert (=> bs!468612 m!2864683))

(declare-fun m!2864789 () Bool)

(assert (=> bs!468612 m!2864789))

(assert (=> bs!468612 m!2864679))

(assert (=> b!2502994 d!715693))

(declare-fun d!715695 () Bool)

(declare-fun nullableFct!601 (Regex!7418) Bool)

(assert (=> d!715695 (= (nullable!2335 (derivative!113 (derivativeStep!1987 r!27340 c!14016) tl!4068)) (nullableFct!601 (derivative!113 (derivativeStep!1987 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468613 () Bool)

(assert (= bs!468613 d!715695))

(assert (=> bs!468613 m!2864673))

(declare-fun m!2864791 () Bool)

(assert (=> bs!468613 m!2864791))

(assert (=> b!2502999 d!715695))

(declare-fun d!715699 () Bool)

(declare-fun lt!896069 () Regex!7418)

(assert (=> d!715699 (validRegex!3044 lt!896069)))

(declare-fun e!1587423 () Regex!7418)

(assert (=> d!715699 (= lt!896069 e!1587423)))

(declare-fun c!398408 () Bool)

(assert (=> d!715699 (= c!398408 (is-Cons!29383 tl!4068))))

(assert (=> d!715699 (validRegex!3044 (derivativeStep!1987 r!27340 c!14016))))

(assert (=> d!715699 (= (derivative!113 (derivativeStep!1987 r!27340 c!14016) tl!4068) lt!896069)))

(declare-fun b!2503191 () Bool)

(assert (=> b!2503191 (= e!1587423 (derivative!113 (derivativeStep!1987 (derivativeStep!1987 r!27340 c!14016) (h!34803 tl!4068)) (t!211182 tl!4068)))))

(declare-fun b!2503192 () Bool)

(assert (=> b!2503192 (= e!1587423 (derivativeStep!1987 r!27340 c!14016))))

(assert (= (and d!715699 c!398408) b!2503191))

(assert (= (and d!715699 (not c!398408)) b!2503192))

(declare-fun m!2864801 () Bool)

(assert (=> d!715699 m!2864801))

(assert (=> d!715699 m!2864671))

(declare-fun m!2864803 () Bool)

(assert (=> d!715699 m!2864803))

(assert (=> b!2503191 m!2864671))

(declare-fun m!2864805 () Bool)

(assert (=> b!2503191 m!2864805))

(assert (=> b!2503191 m!2864805))

(declare-fun m!2864807 () Bool)

(assert (=> b!2503191 m!2864807))

(assert (=> b!2502999 d!715699))

(declare-fun c!398423 () Bool)

(declare-fun call!154789 () Regex!7418)

(declare-fun bm!154784 () Bool)

(assert (=> bm!154784 (= call!154789 (derivativeStep!1987 (ite c!398423 (regOne!15349 r!27340) (regTwo!15348 r!27340)) c!14016))))

(declare-fun bm!154785 () Bool)

(declare-fun call!154791 () Regex!7418)

(declare-fun call!154790 () Regex!7418)

(assert (=> bm!154785 (= call!154791 call!154790)))

(declare-fun b!2503221 () Bool)

(declare-fun e!1587444 () Regex!7418)

(assert (=> b!2503221 (= e!1587444 (ite (= c!14016 (c!398372 r!27340)) EmptyExpr!7418 EmptyLang!7418))))

(declare-fun bm!154786 () Bool)

(declare-fun call!154792 () Regex!7418)

(assert (=> bm!154786 (= call!154792 call!154791)))

(declare-fun b!2503225 () Bool)

(declare-fun e!1587442 () Regex!7418)

(assert (=> b!2503225 (= e!1587442 (Union!7418 call!154789 call!154790))))

(declare-fun c!398420 () Bool)

(declare-fun bm!154787 () Bool)

(assert (=> bm!154787 (= call!154790 (derivativeStep!1987 (ite c!398423 (regTwo!15349 r!27340) (ite c!398420 (reg!7747 r!27340) (regOne!15348 r!27340))) c!14016))))

(declare-fun b!2503226 () Bool)

(declare-fun e!1587440 () Regex!7418)

(assert (=> b!2503226 (= e!1587440 (Concat!12114 call!154791 r!27340))))

(declare-fun b!2503227 () Bool)

(assert (=> b!2503227 (= c!398423 (is-Union!7418 r!27340))))

(assert (=> b!2503227 (= e!1587444 e!1587442)))

(declare-fun b!2503228 () Bool)

(declare-fun e!1587443 () Regex!7418)

(assert (=> b!2503228 (= e!1587443 (Union!7418 (Concat!12114 call!154792 (regTwo!15348 r!27340)) EmptyLang!7418))))

(declare-fun b!2503224 () Bool)

(declare-fun e!1587441 () Regex!7418)

(assert (=> b!2503224 (= e!1587441 e!1587444)))

(declare-fun c!398419 () Bool)

(assert (=> b!2503224 (= c!398419 (is-ElementMatch!7418 r!27340))))

(declare-fun d!715703 () Bool)

(declare-fun lt!896078 () Regex!7418)

(assert (=> d!715703 (validRegex!3044 lt!896078)))

(assert (=> d!715703 (= lt!896078 e!1587441)))

(declare-fun c!398422 () Bool)

(assert (=> d!715703 (= c!398422 (or (is-EmptyExpr!7418 r!27340) (is-EmptyLang!7418 r!27340)))))

(assert (=> d!715703 (validRegex!3044 r!27340)))

(assert (=> d!715703 (= (derivativeStep!1987 r!27340 c!14016) lt!896078)))

(declare-fun b!2503229 () Bool)

(assert (=> b!2503229 (= e!1587442 e!1587440)))

(assert (=> b!2503229 (= c!398420 (is-Star!7418 r!27340))))

(declare-fun b!2503230 () Bool)

(assert (=> b!2503230 (= e!1587443 (Union!7418 (Concat!12114 call!154792 (regTwo!15348 r!27340)) call!154789))))

(declare-fun b!2503231 () Bool)

(declare-fun c!398421 () Bool)

(assert (=> b!2503231 (= c!398421 (nullable!2335 (regOne!15348 r!27340)))))

(assert (=> b!2503231 (= e!1587440 e!1587443)))

(declare-fun b!2503232 () Bool)

(assert (=> b!2503232 (= e!1587441 EmptyLang!7418)))

(assert (= (and d!715703 c!398422) b!2503232))

(assert (= (and d!715703 (not c!398422)) b!2503224))

(assert (= (and b!2503224 c!398419) b!2503221))

(assert (= (and b!2503224 (not c!398419)) b!2503227))

(assert (= (and b!2503227 c!398423) b!2503225))

(assert (= (and b!2503227 (not c!398423)) b!2503229))

(assert (= (and b!2503229 c!398420) b!2503226))

(assert (= (and b!2503229 (not c!398420)) b!2503231))

(assert (= (and b!2503231 c!398421) b!2503230))

(assert (= (and b!2503231 (not c!398421)) b!2503228))

(assert (= (or b!2503230 b!2503228) bm!154786))

(assert (= (or b!2503226 bm!154786) bm!154785))

(assert (= (or b!2503225 bm!154785) bm!154787))

(assert (= (or b!2503225 b!2503230) bm!154784))

(declare-fun m!2864815 () Bool)

(assert (=> bm!154784 m!2864815))

(declare-fun m!2864817 () Bool)

(assert (=> bm!154787 m!2864817))

(declare-fun m!2864819 () Bool)

(assert (=> d!715703 m!2864819))

(assert (=> d!715703 m!2864677))

(assert (=> b!2503231 m!2864687))

(assert (=> b!2502999 d!715703))

(declare-fun d!715709 () Bool)

(declare-fun e!1587477 () Bool)

(assert (=> d!715709 e!1587477))

(declare-fun c!398439 () Bool)

(assert (=> d!715709 (= c!398439 (is-EmptyExpr!7418 lt!896019))))

(declare-fun lt!896086 () Bool)

(declare-fun e!1587480 () Bool)

(assert (=> d!715709 (= lt!896086 e!1587480)))

(declare-fun c!398441 () Bool)

(declare-fun isEmpty!16846 (List!29483) Bool)

(assert (=> d!715709 (= c!398441 (isEmpty!16846 tl!4068))))

(assert (=> d!715709 (validRegex!3044 lt!896019)))

(assert (=> d!715709 (= (matchR!3421 lt!896019 tl!4068) lt!896086)))

(declare-fun b!2503291 () Bool)

(declare-fun call!154797 () Bool)

(assert (=> b!2503291 (= e!1587477 (= lt!896086 call!154797))))

(declare-fun b!2503292 () Bool)

(declare-fun res!1058439 () Bool)

(declare-fun e!1587481 () Bool)

(assert (=> b!2503292 (=> res!1058439 e!1587481)))

(declare-fun e!1587476 () Bool)

(assert (=> b!2503292 (= res!1058439 e!1587476)))

(declare-fun res!1058440 () Bool)

(assert (=> b!2503292 (=> (not res!1058440) (not e!1587476))))

(assert (=> b!2503292 (= res!1058440 lt!896086)))

(declare-fun bm!154792 () Bool)

(assert (=> bm!154792 (= call!154797 (isEmpty!16846 tl!4068))))

(declare-fun b!2503293 () Bool)

(declare-fun res!1058435 () Bool)

(assert (=> b!2503293 (=> (not res!1058435) (not e!1587476))))

(declare-fun tail!3982 (List!29483) List!29483)

(assert (=> b!2503293 (= res!1058435 (isEmpty!16846 (tail!3982 tl!4068)))))

(declare-fun b!2503294 () Bool)

(declare-fun e!1587479 () Bool)

(assert (=> b!2503294 (= e!1587481 e!1587479)))

(declare-fun res!1058437 () Bool)

(assert (=> b!2503294 (=> (not res!1058437) (not e!1587479))))

(assert (=> b!2503294 (= res!1058437 (not lt!896086))))

(declare-fun b!2503295 () Bool)

(declare-fun res!1058442 () Bool)

(declare-fun e!1587478 () Bool)

(assert (=> b!2503295 (=> res!1058442 e!1587478)))

(assert (=> b!2503295 (= res!1058442 (not (isEmpty!16846 (tail!3982 tl!4068))))))

(declare-fun b!2503296 () Bool)

(declare-fun head!5705 (List!29483) C!14994)

(assert (=> b!2503296 (= e!1587478 (not (= (head!5705 tl!4068) (c!398372 lt!896019))))))

(declare-fun b!2503297 () Bool)

(assert (=> b!2503297 (= e!1587479 e!1587478)))

(declare-fun res!1058438 () Bool)

(assert (=> b!2503297 (=> res!1058438 e!1587478)))

(assert (=> b!2503297 (= res!1058438 call!154797)))

(declare-fun b!2503298 () Bool)

(declare-fun res!1058436 () Bool)

(assert (=> b!2503298 (=> (not res!1058436) (not e!1587476))))

(assert (=> b!2503298 (= res!1058436 (not call!154797))))

(declare-fun b!2503299 () Bool)

(declare-fun res!1058441 () Bool)

(assert (=> b!2503299 (=> res!1058441 e!1587481)))

(assert (=> b!2503299 (= res!1058441 (not (is-ElementMatch!7418 lt!896019)))))

(declare-fun e!1587482 () Bool)

(assert (=> b!2503299 (= e!1587482 e!1587481)))

(declare-fun b!2503300 () Bool)

(assert (=> b!2503300 (= e!1587480 (matchR!3421 (derivativeStep!1987 lt!896019 (head!5705 tl!4068)) (tail!3982 tl!4068)))))

(declare-fun b!2503301 () Bool)

(assert (=> b!2503301 (= e!1587477 e!1587482)))

(declare-fun c!398440 () Bool)

(assert (=> b!2503301 (= c!398440 (is-EmptyLang!7418 lt!896019))))

(declare-fun b!2503302 () Bool)

(assert (=> b!2503302 (= e!1587480 (nullable!2335 lt!896019))))

(declare-fun b!2503303 () Bool)

(assert (=> b!2503303 (= e!1587476 (= (head!5705 tl!4068) (c!398372 lt!896019)))))

(declare-fun b!2503304 () Bool)

(assert (=> b!2503304 (= e!1587482 (not lt!896086))))

(assert (= (and d!715709 c!398441) b!2503302))

(assert (= (and d!715709 (not c!398441)) b!2503300))

(assert (= (and d!715709 c!398439) b!2503291))

(assert (= (and d!715709 (not c!398439)) b!2503301))

(assert (= (and b!2503301 c!398440) b!2503304))

(assert (= (and b!2503301 (not c!398440)) b!2503299))

(assert (= (and b!2503299 (not res!1058441)) b!2503292))

(assert (= (and b!2503292 res!1058440) b!2503298))

(assert (= (and b!2503298 res!1058436) b!2503293))

(assert (= (and b!2503293 res!1058435) b!2503303))

(assert (= (and b!2503292 (not res!1058439)) b!2503294))

(assert (= (and b!2503294 res!1058437) b!2503297))

(assert (= (and b!2503297 (not res!1058438)) b!2503295))

(assert (= (and b!2503295 (not res!1058442)) b!2503296))

(assert (= (or b!2503291 b!2503297 b!2503298) bm!154792))

(declare-fun m!2864849 () Bool)

(assert (=> b!2503300 m!2864849))

(assert (=> b!2503300 m!2864849))

(declare-fun m!2864851 () Bool)

(assert (=> b!2503300 m!2864851))

(declare-fun m!2864853 () Bool)

(assert (=> b!2503300 m!2864853))

(assert (=> b!2503300 m!2864851))

(assert (=> b!2503300 m!2864853))

(declare-fun m!2864855 () Bool)

(assert (=> b!2503300 m!2864855))

(assert (=> b!2503296 m!2864849))

(declare-fun m!2864857 () Bool)

(assert (=> d!715709 m!2864857))

(declare-fun m!2864859 () Bool)

(assert (=> d!715709 m!2864859))

(assert (=> bm!154792 m!2864857))

(declare-fun m!2864861 () Bool)

(assert (=> b!2503302 m!2864861))

(assert (=> b!2503303 m!2864849))

(assert (=> b!2503295 m!2864853))

(assert (=> b!2503295 m!2864853))

(declare-fun m!2864863 () Bool)

(assert (=> b!2503295 m!2864863))

(assert (=> b!2503293 m!2864853))

(assert (=> b!2503293 m!2864853))

(assert (=> b!2503293 m!2864863))

(assert (=> b!2502998 d!715709))

(declare-fun bm!154793 () Bool)

(declare-fun call!154799 () Bool)

(declare-fun c!398443 () Bool)

(assert (=> bm!154793 (= call!154799 (validRegex!3044 (ite c!398443 (regTwo!15349 (regTwo!15348 r!27340)) (regOne!15348 (regTwo!15348 r!27340)))))))

(declare-fun b!2503305 () Bool)

(declare-fun res!1058445 () Bool)

(declare-fun e!1587485 () Bool)

(assert (=> b!2503305 (=> (not res!1058445) (not e!1587485))))

(declare-fun call!154800 () Bool)

(assert (=> b!2503305 (= res!1058445 call!154800)))

(declare-fun e!1587488 () Bool)

(assert (=> b!2503305 (= e!1587488 e!1587485)))

(declare-fun b!2503306 () Bool)

(declare-fun res!1058447 () Bool)

(declare-fun e!1587487 () Bool)

(assert (=> b!2503306 (=> res!1058447 e!1587487)))

(assert (=> b!2503306 (= res!1058447 (not (is-Concat!12114 (regTwo!15348 r!27340))))))

(assert (=> b!2503306 (= e!1587488 e!1587487)))

(declare-fun b!2503307 () Bool)

(assert (=> b!2503307 (= e!1587485 call!154799)))

(declare-fun b!2503308 () Bool)

(declare-fun e!1587484 () Bool)

(assert (=> b!2503308 (= e!1587484 e!1587488)))

(assert (=> b!2503308 (= c!398443 (is-Union!7418 (regTwo!15348 r!27340)))))

(declare-fun b!2503309 () Bool)

(declare-fun e!1587489 () Bool)

(assert (=> b!2503309 (= e!1587489 call!154800)))

(declare-fun b!2503310 () Bool)

(assert (=> b!2503310 (= e!1587487 e!1587489)))

(declare-fun res!1058443 () Bool)

(assert (=> b!2503310 (=> (not res!1058443) (not e!1587489))))

(assert (=> b!2503310 (= res!1058443 call!154799)))

(declare-fun d!715717 () Bool)

(declare-fun res!1058446 () Bool)

(declare-fun e!1587483 () Bool)

(assert (=> d!715717 (=> res!1058446 e!1587483)))

(assert (=> d!715717 (= res!1058446 (is-ElementMatch!7418 (regTwo!15348 r!27340)))))

(assert (=> d!715717 (= (validRegex!3044 (regTwo!15348 r!27340)) e!1587483)))

(declare-fun c!398442 () Bool)

(declare-fun bm!154794 () Bool)

(declare-fun call!154798 () Bool)

(assert (=> bm!154794 (= call!154798 (validRegex!3044 (ite c!398442 (reg!7747 (regTwo!15348 r!27340)) (ite c!398443 (regOne!15349 (regTwo!15348 r!27340)) (regTwo!15348 (regTwo!15348 r!27340))))))))

(declare-fun b!2503311 () Bool)

(assert (=> b!2503311 (= e!1587483 e!1587484)))

(assert (=> b!2503311 (= c!398442 (is-Star!7418 (regTwo!15348 r!27340)))))

(declare-fun b!2503312 () Bool)

(declare-fun e!1587486 () Bool)

(assert (=> b!2503312 (= e!1587486 call!154798)))

(declare-fun bm!154795 () Bool)

(assert (=> bm!154795 (= call!154800 call!154798)))

(declare-fun b!2503313 () Bool)

(assert (=> b!2503313 (= e!1587484 e!1587486)))

(declare-fun res!1058444 () Bool)

(assert (=> b!2503313 (= res!1058444 (not (nullable!2335 (reg!7747 (regTwo!15348 r!27340)))))))

(assert (=> b!2503313 (=> (not res!1058444) (not e!1587486))))

(assert (= (and d!715717 (not res!1058446)) b!2503311))

(assert (= (and b!2503311 c!398442) b!2503313))

(assert (= (and b!2503311 (not c!398442)) b!2503308))

(assert (= (and b!2503313 res!1058444) b!2503312))

(assert (= (and b!2503308 c!398443) b!2503305))

(assert (= (and b!2503308 (not c!398443)) b!2503306))

(assert (= (and b!2503305 res!1058445) b!2503307))

(assert (= (and b!2503306 (not res!1058447)) b!2503310))

(assert (= (and b!2503310 res!1058443) b!2503309))

(assert (= (or b!2503305 b!2503309) bm!154795))

(assert (= (or b!2503307 b!2503310) bm!154793))

(assert (= (or b!2503312 bm!154795) bm!154794))

(declare-fun m!2864865 () Bool)

(assert (=> bm!154793 m!2864865))

(declare-fun m!2864867 () Bool)

(assert (=> bm!154794 m!2864867))

(declare-fun m!2864869 () Bool)

(assert (=> b!2503313 m!2864869))

(assert (=> b!2502993 d!715717))

(declare-fun d!715719 () Bool)

(declare-fun lt!896089 () Regex!7418)

(assert (=> d!715719 (validRegex!3044 lt!896089)))

(declare-fun e!1587492 () Regex!7418)

(assert (=> d!715719 (= lt!896089 e!1587492)))

(declare-fun c!398446 () Bool)

(assert (=> d!715719 (= c!398446 (is-Cons!29383 tl!4068))))

(assert (=> d!715719 (validRegex!3044 lt!896024)))

(assert (=> d!715719 (= (derivative!113 lt!896024 tl!4068) lt!896089)))

(declare-fun b!2503318 () Bool)

(assert (=> b!2503318 (= e!1587492 (derivative!113 (derivativeStep!1987 lt!896024 (h!34803 tl!4068)) (t!211182 tl!4068)))))

(declare-fun b!2503319 () Bool)

(assert (=> b!2503319 (= e!1587492 lt!896024)))

(assert (= (and d!715719 c!398446) b!2503318))

(assert (= (and d!715719 (not c!398446)) b!2503319))

(declare-fun m!2864871 () Bool)

(assert (=> d!715719 m!2864871))

(declare-fun m!2864873 () Bool)

(assert (=> d!715719 m!2864873))

(declare-fun m!2864875 () Bool)

(assert (=> b!2503318 m!2864875))

(assert (=> b!2503318 m!2864875))

(declare-fun m!2864877 () Bool)

(assert (=> b!2503318 m!2864877))

(assert (=> b!2503002 d!715719))

(declare-fun d!715721 () Bool)

(declare-fun e!1587496 () Bool)

(assert (=> d!715721 e!1587496))

(declare-fun c!398449 () Bool)

(assert (=> d!715721 (= c!398449 (is-EmptyExpr!7418 (derivative!113 lt!896024 tl!4068)))))

(declare-fun lt!896090 () Bool)

(declare-fun e!1587499 () Bool)

(assert (=> d!715721 (= lt!896090 e!1587499)))

(declare-fun c!398451 () Bool)

(assert (=> d!715721 (= c!398451 (isEmpty!16846 Nil!29383))))

(assert (=> d!715721 (validRegex!3044 (derivative!113 lt!896024 tl!4068))))

(assert (=> d!715721 (= (matchR!3421 (derivative!113 lt!896024 tl!4068) Nil!29383) lt!896090)))

(declare-fun b!2503324 () Bool)

(declare-fun call!154801 () Bool)

(assert (=> b!2503324 (= e!1587496 (= lt!896090 call!154801))))

(declare-fun b!2503325 () Bool)

(declare-fun res!1058452 () Bool)

(declare-fun e!1587500 () Bool)

(assert (=> b!2503325 (=> res!1058452 e!1587500)))

(declare-fun e!1587495 () Bool)

(assert (=> b!2503325 (= res!1058452 e!1587495)))

(declare-fun res!1058453 () Bool)

(assert (=> b!2503325 (=> (not res!1058453) (not e!1587495))))

(assert (=> b!2503325 (= res!1058453 lt!896090)))

(declare-fun bm!154796 () Bool)

(assert (=> bm!154796 (= call!154801 (isEmpty!16846 Nil!29383))))

(declare-fun b!2503329 () Bool)

(declare-fun res!1058448 () Bool)

(assert (=> b!2503329 (=> (not res!1058448) (not e!1587495))))

(assert (=> b!2503329 (= res!1058448 (isEmpty!16846 (tail!3982 Nil!29383)))))

(declare-fun b!2503331 () Bool)

(declare-fun e!1587498 () Bool)

(assert (=> b!2503331 (= e!1587500 e!1587498)))

(declare-fun res!1058450 () Bool)

(assert (=> b!2503331 (=> (not res!1058450) (not e!1587498))))

(assert (=> b!2503331 (= res!1058450 (not lt!896090))))

(declare-fun b!2503332 () Bool)

(declare-fun res!1058455 () Bool)

(declare-fun e!1587497 () Bool)

(assert (=> b!2503332 (=> res!1058455 e!1587497)))

(assert (=> b!2503332 (= res!1058455 (not (isEmpty!16846 (tail!3982 Nil!29383))))))

(declare-fun b!2503333 () Bool)

(assert (=> b!2503333 (= e!1587497 (not (= (head!5705 Nil!29383) (c!398372 (derivative!113 lt!896024 tl!4068)))))))

(declare-fun b!2503334 () Bool)

(assert (=> b!2503334 (= e!1587498 e!1587497)))

(declare-fun res!1058451 () Bool)

(assert (=> b!2503334 (=> res!1058451 e!1587497)))

(assert (=> b!2503334 (= res!1058451 call!154801)))

(declare-fun b!2503335 () Bool)

(declare-fun res!1058449 () Bool)

(assert (=> b!2503335 (=> (not res!1058449) (not e!1587495))))

(assert (=> b!2503335 (= res!1058449 (not call!154801))))

(declare-fun b!2503336 () Bool)

(declare-fun res!1058454 () Bool)

(assert (=> b!2503336 (=> res!1058454 e!1587500)))

(assert (=> b!2503336 (= res!1058454 (not (is-ElementMatch!7418 (derivative!113 lt!896024 tl!4068))))))

(declare-fun e!1587501 () Bool)

(assert (=> b!2503336 (= e!1587501 e!1587500)))

(declare-fun b!2503337 () Bool)

(assert (=> b!2503337 (= e!1587499 (matchR!3421 (derivativeStep!1987 (derivative!113 lt!896024 tl!4068) (head!5705 Nil!29383)) (tail!3982 Nil!29383)))))

(declare-fun b!2503338 () Bool)

(assert (=> b!2503338 (= e!1587496 e!1587501)))

(declare-fun c!398450 () Bool)

(assert (=> b!2503338 (= c!398450 (is-EmptyLang!7418 (derivative!113 lt!896024 tl!4068)))))

(declare-fun b!2503339 () Bool)

(assert (=> b!2503339 (= e!1587499 (nullable!2335 (derivative!113 lt!896024 tl!4068)))))

(declare-fun b!2503340 () Bool)

(assert (=> b!2503340 (= e!1587495 (= (head!5705 Nil!29383) (c!398372 (derivative!113 lt!896024 tl!4068))))))

(declare-fun b!2503341 () Bool)

(assert (=> b!2503341 (= e!1587501 (not lt!896090))))

(assert (= (and d!715721 c!398451) b!2503339))

(assert (= (and d!715721 (not c!398451)) b!2503337))

(assert (= (and d!715721 c!398449) b!2503324))

(assert (= (and d!715721 (not c!398449)) b!2503338))

(assert (= (and b!2503338 c!398450) b!2503341))

(assert (= (and b!2503338 (not c!398450)) b!2503336))

(assert (= (and b!2503336 (not res!1058454)) b!2503325))

(assert (= (and b!2503325 res!1058453) b!2503335))

(assert (= (and b!2503335 res!1058449) b!2503329))

(assert (= (and b!2503329 res!1058448) b!2503340))

(assert (= (and b!2503325 (not res!1058452)) b!2503331))

(assert (= (and b!2503331 res!1058450) b!2503334))

(assert (= (and b!2503334 (not res!1058451)) b!2503332))

(assert (= (and b!2503332 (not res!1058455)) b!2503333))

(assert (= (or b!2503324 b!2503334 b!2503335) bm!154796))

(declare-fun m!2864879 () Bool)

(assert (=> b!2503337 m!2864879))

(assert (=> b!2503337 m!2864663))

(assert (=> b!2503337 m!2864879))

(declare-fun m!2864881 () Bool)

(assert (=> b!2503337 m!2864881))

(declare-fun m!2864883 () Bool)

(assert (=> b!2503337 m!2864883))

(assert (=> b!2503337 m!2864881))

(assert (=> b!2503337 m!2864883))

(declare-fun m!2864885 () Bool)

(assert (=> b!2503337 m!2864885))

(assert (=> b!2503333 m!2864879))

(declare-fun m!2864887 () Bool)

(assert (=> d!715721 m!2864887))

(assert (=> d!715721 m!2864663))

(declare-fun m!2864889 () Bool)

(assert (=> d!715721 m!2864889))

(assert (=> bm!154796 m!2864887))

(assert (=> b!2503339 m!2864663))

(declare-fun m!2864891 () Bool)

(assert (=> b!2503339 m!2864891))

(assert (=> b!2503340 m!2864879))

(assert (=> b!2503332 m!2864883))

(assert (=> b!2503332 m!2864883))

(declare-fun m!2864893 () Bool)

(assert (=> b!2503332 m!2864893))

(assert (=> b!2503329 m!2864883))

(assert (=> b!2503329 m!2864883))

(assert (=> b!2503329 m!2864893))

(assert (=> b!2503002 d!715721))

(declare-fun d!715723 () Bool)

(declare-fun e!1587512 () Bool)

(assert (=> d!715723 e!1587512))

(declare-fun res!1058460 () Bool)

(assert (=> d!715723 (=> res!1058460 e!1587512)))

(assert (=> d!715723 (= res!1058460 (matchR!3421 lt!896026 tl!4068))))

(declare-fun lt!896093 () Unit!43093)

(declare-fun choose!14786 (Regex!7418 Regex!7418 List!29483) Unit!43093)

(assert (=> d!715723 (= lt!896093 (choose!14786 lt!896026 lt!896019 tl!4068))))

(declare-fun e!1587513 () Bool)

(assert (=> d!715723 e!1587513))

(declare-fun res!1058461 () Bool)

(assert (=> d!715723 (=> (not res!1058461) (not e!1587513))))

(assert (=> d!715723 (= res!1058461 (validRegex!3044 lt!896026))))

(assert (=> d!715723 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!113 lt!896026 lt!896019 tl!4068) lt!896093)))

(declare-fun b!2503354 () Bool)

(assert (=> b!2503354 (= e!1587513 (validRegex!3044 lt!896019))))

(declare-fun b!2503355 () Bool)

(assert (=> b!2503355 (= e!1587512 (matchR!3421 lt!896019 tl!4068))))

(assert (= (and d!715723 res!1058461) b!2503354))

(assert (= (and d!715723 (not res!1058460)) b!2503355))

(assert (=> d!715723 m!2864661))

(declare-fun m!2864895 () Bool)

(assert (=> d!715723 m!2864895))

(declare-fun m!2864897 () Bool)

(assert (=> d!715723 m!2864897))

(assert (=> b!2503354 m!2864859))

(assert (=> b!2503355 m!2864689))

(assert (=> b!2503002 d!715723))

(declare-fun d!715725 () Bool)

(declare-fun e!1587515 () Bool)

(assert (=> d!715725 e!1587515))

(declare-fun c!398458 () Bool)

(assert (=> d!715725 (= c!398458 (is-EmptyExpr!7418 lt!896026))))

(declare-fun lt!896094 () Bool)

(declare-fun e!1587518 () Bool)

(assert (=> d!715725 (= lt!896094 e!1587518)))

(declare-fun c!398460 () Bool)

(assert (=> d!715725 (= c!398460 (isEmpty!16846 tl!4068))))

(assert (=> d!715725 (validRegex!3044 lt!896026)))

(assert (=> d!715725 (= (matchR!3421 lt!896026 tl!4068) lt!896094)))

(declare-fun b!2503356 () Bool)

(declare-fun call!154810 () Bool)

(assert (=> b!2503356 (= e!1587515 (= lt!896094 call!154810))))

(declare-fun b!2503357 () Bool)

(declare-fun res!1058466 () Bool)

(declare-fun e!1587519 () Bool)

(assert (=> b!2503357 (=> res!1058466 e!1587519)))

(declare-fun e!1587514 () Bool)

(assert (=> b!2503357 (= res!1058466 e!1587514)))

(declare-fun res!1058467 () Bool)

(assert (=> b!2503357 (=> (not res!1058467) (not e!1587514))))

(assert (=> b!2503357 (= res!1058467 lt!896094)))

(declare-fun bm!154805 () Bool)

(assert (=> bm!154805 (= call!154810 (isEmpty!16846 tl!4068))))

(declare-fun b!2503358 () Bool)

(declare-fun res!1058462 () Bool)

(assert (=> b!2503358 (=> (not res!1058462) (not e!1587514))))

(assert (=> b!2503358 (= res!1058462 (isEmpty!16846 (tail!3982 tl!4068)))))

(declare-fun b!2503359 () Bool)

(declare-fun e!1587517 () Bool)

(assert (=> b!2503359 (= e!1587519 e!1587517)))

(declare-fun res!1058464 () Bool)

(assert (=> b!2503359 (=> (not res!1058464) (not e!1587517))))

(assert (=> b!2503359 (= res!1058464 (not lt!896094))))

(declare-fun b!2503360 () Bool)

(declare-fun res!1058469 () Bool)

(declare-fun e!1587516 () Bool)

(assert (=> b!2503360 (=> res!1058469 e!1587516)))

(assert (=> b!2503360 (= res!1058469 (not (isEmpty!16846 (tail!3982 tl!4068))))))

(declare-fun b!2503361 () Bool)

(assert (=> b!2503361 (= e!1587516 (not (= (head!5705 tl!4068) (c!398372 lt!896026))))))

(declare-fun b!2503362 () Bool)

(assert (=> b!2503362 (= e!1587517 e!1587516)))

(declare-fun res!1058465 () Bool)

(assert (=> b!2503362 (=> res!1058465 e!1587516)))

(assert (=> b!2503362 (= res!1058465 call!154810)))

(declare-fun b!2503363 () Bool)

(declare-fun res!1058463 () Bool)

(assert (=> b!2503363 (=> (not res!1058463) (not e!1587514))))

(assert (=> b!2503363 (= res!1058463 (not call!154810))))

(declare-fun b!2503364 () Bool)

(declare-fun res!1058468 () Bool)

(assert (=> b!2503364 (=> res!1058468 e!1587519)))

(assert (=> b!2503364 (= res!1058468 (not (is-ElementMatch!7418 lt!896026)))))

(declare-fun e!1587520 () Bool)

(assert (=> b!2503364 (= e!1587520 e!1587519)))

(declare-fun b!2503365 () Bool)

(assert (=> b!2503365 (= e!1587518 (matchR!3421 (derivativeStep!1987 lt!896026 (head!5705 tl!4068)) (tail!3982 tl!4068)))))

(declare-fun b!2503366 () Bool)

(assert (=> b!2503366 (= e!1587515 e!1587520)))

(declare-fun c!398459 () Bool)

(assert (=> b!2503366 (= c!398459 (is-EmptyLang!7418 lt!896026))))

(declare-fun b!2503367 () Bool)

(assert (=> b!2503367 (= e!1587518 (nullable!2335 lt!896026))))

(declare-fun b!2503368 () Bool)

(assert (=> b!2503368 (= e!1587514 (= (head!5705 tl!4068) (c!398372 lt!896026)))))

(declare-fun b!2503369 () Bool)

(assert (=> b!2503369 (= e!1587520 (not lt!896094))))

(assert (= (and d!715725 c!398460) b!2503367))

(assert (= (and d!715725 (not c!398460)) b!2503365))

(assert (= (and d!715725 c!398458) b!2503356))

(assert (= (and d!715725 (not c!398458)) b!2503366))

(assert (= (and b!2503366 c!398459) b!2503369))

(assert (= (and b!2503366 (not c!398459)) b!2503364))

(assert (= (and b!2503364 (not res!1058468)) b!2503357))

(assert (= (and b!2503357 res!1058467) b!2503363))

(assert (= (and b!2503363 res!1058463) b!2503358))

(assert (= (and b!2503358 res!1058462) b!2503368))

(assert (= (and b!2503357 (not res!1058466)) b!2503359))

(assert (= (and b!2503359 res!1058464) b!2503362))

(assert (= (and b!2503362 (not res!1058465)) b!2503360))

(assert (= (and b!2503360 (not res!1058469)) b!2503361))

(assert (= (or b!2503356 b!2503362 b!2503363) bm!154805))

(assert (=> b!2503365 m!2864849))

(assert (=> b!2503365 m!2864849))

(declare-fun m!2864899 () Bool)

(assert (=> b!2503365 m!2864899))

(assert (=> b!2503365 m!2864853))

(assert (=> b!2503365 m!2864899))

(assert (=> b!2503365 m!2864853))

(declare-fun m!2864901 () Bool)

(assert (=> b!2503365 m!2864901))

(assert (=> b!2503361 m!2864849))

(assert (=> d!715725 m!2864857))

(assert (=> d!715725 m!2864897))

(assert (=> bm!154805 m!2864857))

(declare-fun m!2864903 () Bool)

(assert (=> b!2503367 m!2864903))

(assert (=> b!2503368 m!2864849))

(assert (=> b!2503360 m!2864853))

(assert (=> b!2503360 m!2864853))

(assert (=> b!2503360 m!2864863))

(assert (=> b!2503358 m!2864853))

(assert (=> b!2503358 m!2864853))

(assert (=> b!2503358 m!2864863))

(assert (=> b!2503002 d!715725))

(declare-fun call!154811 () Regex!7418)

(declare-fun bm!154806 () Bool)

(declare-fun c!398465 () Bool)

(assert (=> bm!154806 (= call!154811 (derivativeStep!1987 (ite c!398465 (regOne!15349 (regTwo!15348 r!27340)) (regTwo!15348 (regTwo!15348 r!27340))) c!14016))))

(declare-fun bm!154807 () Bool)

(declare-fun call!154813 () Regex!7418)

(declare-fun call!154812 () Regex!7418)

(assert (=> bm!154807 (= call!154813 call!154812)))

(declare-fun b!2503370 () Bool)

(declare-fun e!1587525 () Regex!7418)

(assert (=> b!2503370 (= e!1587525 (ite (= c!14016 (c!398372 (regTwo!15348 r!27340))) EmptyExpr!7418 EmptyLang!7418))))

(declare-fun bm!154808 () Bool)

(declare-fun call!154814 () Regex!7418)

(assert (=> bm!154808 (= call!154814 call!154813)))

(declare-fun b!2503372 () Bool)

(declare-fun e!1587523 () Regex!7418)

(assert (=> b!2503372 (= e!1587523 (Union!7418 call!154811 call!154812))))

(declare-fun bm!154809 () Bool)

(declare-fun c!398462 () Bool)

(assert (=> bm!154809 (= call!154812 (derivativeStep!1987 (ite c!398465 (regTwo!15349 (regTwo!15348 r!27340)) (ite c!398462 (reg!7747 (regTwo!15348 r!27340)) (regOne!15348 (regTwo!15348 r!27340)))) c!14016))))

(declare-fun b!2503373 () Bool)

(declare-fun e!1587521 () Regex!7418)

(assert (=> b!2503373 (= e!1587521 (Concat!12114 call!154813 (regTwo!15348 r!27340)))))

(declare-fun b!2503374 () Bool)

(assert (=> b!2503374 (= c!398465 (is-Union!7418 (regTwo!15348 r!27340)))))

(assert (=> b!2503374 (= e!1587525 e!1587523)))

(declare-fun b!2503375 () Bool)

(declare-fun e!1587524 () Regex!7418)

(assert (=> b!2503375 (= e!1587524 (Union!7418 (Concat!12114 call!154814 (regTwo!15348 (regTwo!15348 r!27340))) EmptyLang!7418))))

(declare-fun b!2503371 () Bool)

(declare-fun e!1587522 () Regex!7418)

(assert (=> b!2503371 (= e!1587522 e!1587525)))

(declare-fun c!398461 () Bool)

(assert (=> b!2503371 (= c!398461 (is-ElementMatch!7418 (regTwo!15348 r!27340)))))

(declare-fun d!715727 () Bool)

(declare-fun lt!896095 () Regex!7418)

(assert (=> d!715727 (validRegex!3044 lt!896095)))

(assert (=> d!715727 (= lt!896095 e!1587522)))

(declare-fun c!398464 () Bool)

(assert (=> d!715727 (= c!398464 (or (is-EmptyExpr!7418 (regTwo!15348 r!27340)) (is-EmptyLang!7418 (regTwo!15348 r!27340))))))

(assert (=> d!715727 (validRegex!3044 (regTwo!15348 r!27340))))

(assert (=> d!715727 (= (derivativeStep!1987 (regTwo!15348 r!27340) c!14016) lt!896095)))

(declare-fun b!2503376 () Bool)

(assert (=> b!2503376 (= e!1587523 e!1587521)))

(assert (=> b!2503376 (= c!398462 (is-Star!7418 (regTwo!15348 r!27340)))))

(declare-fun b!2503377 () Bool)

(assert (=> b!2503377 (= e!1587524 (Union!7418 (Concat!12114 call!154814 (regTwo!15348 (regTwo!15348 r!27340))) call!154811))))

(declare-fun b!2503378 () Bool)

(declare-fun c!398463 () Bool)

(assert (=> b!2503378 (= c!398463 (nullable!2335 (regOne!15348 (regTwo!15348 r!27340))))))

(assert (=> b!2503378 (= e!1587521 e!1587524)))

(declare-fun b!2503379 () Bool)

(assert (=> b!2503379 (= e!1587522 EmptyLang!7418)))

(assert (= (and d!715727 c!398464) b!2503379))

(assert (= (and d!715727 (not c!398464)) b!2503371))

(assert (= (and b!2503371 c!398461) b!2503370))

(assert (= (and b!2503371 (not c!398461)) b!2503374))

(assert (= (and b!2503374 c!398465) b!2503372))

(assert (= (and b!2503374 (not c!398465)) b!2503376))

(assert (= (and b!2503376 c!398462) b!2503373))

(assert (= (and b!2503376 (not c!398462)) b!2503378))

(assert (= (and b!2503378 c!398463) b!2503377))

(assert (= (and b!2503378 (not c!398463)) b!2503375))

(assert (= (or b!2503377 b!2503375) bm!154808))

(assert (= (or b!2503373 bm!154808) bm!154807))

(assert (= (or b!2503372 bm!154807) bm!154809))

(assert (= (or b!2503372 b!2503377) bm!154806))

(declare-fun m!2864905 () Bool)

(assert (=> bm!154806 m!2864905))

(declare-fun m!2864907 () Bool)

(assert (=> bm!154809 m!2864907))

(declare-fun m!2864909 () Bool)

(assert (=> d!715727 m!2864909))

(assert (=> d!715727 m!2864653))

(declare-fun m!2864911 () Bool)

(assert (=> b!2503378 m!2864911))

(assert (=> b!2503002 d!715727))

(declare-fun c!398470 () Bool)

(declare-fun call!154815 () Regex!7418)

(declare-fun bm!154810 () Bool)

(assert (=> bm!154810 (= call!154815 (derivativeStep!1987 (ite c!398470 (regOne!15349 (regOne!15348 r!27340)) (regTwo!15348 (regOne!15348 r!27340))) c!14016))))

(declare-fun bm!154811 () Bool)

(declare-fun call!154817 () Regex!7418)

(declare-fun call!154816 () Regex!7418)

(assert (=> bm!154811 (= call!154817 call!154816)))

(declare-fun b!2503380 () Bool)

(declare-fun e!1587530 () Regex!7418)

(assert (=> b!2503380 (= e!1587530 (ite (= c!14016 (c!398372 (regOne!15348 r!27340))) EmptyExpr!7418 EmptyLang!7418))))

(declare-fun bm!154812 () Bool)

(declare-fun call!154818 () Regex!7418)

(assert (=> bm!154812 (= call!154818 call!154817)))

(declare-fun b!2503382 () Bool)

(declare-fun e!1587528 () Regex!7418)

(assert (=> b!2503382 (= e!1587528 (Union!7418 call!154815 call!154816))))

(declare-fun bm!154813 () Bool)

(declare-fun c!398467 () Bool)

(assert (=> bm!154813 (= call!154816 (derivativeStep!1987 (ite c!398470 (regTwo!15349 (regOne!15348 r!27340)) (ite c!398467 (reg!7747 (regOne!15348 r!27340)) (regOne!15348 (regOne!15348 r!27340)))) c!14016))))

(declare-fun b!2503383 () Bool)

(declare-fun e!1587526 () Regex!7418)

(assert (=> b!2503383 (= e!1587526 (Concat!12114 call!154817 (regOne!15348 r!27340)))))

(declare-fun b!2503384 () Bool)

(assert (=> b!2503384 (= c!398470 (is-Union!7418 (regOne!15348 r!27340)))))

(assert (=> b!2503384 (= e!1587530 e!1587528)))

(declare-fun b!2503385 () Bool)

(declare-fun e!1587529 () Regex!7418)

(assert (=> b!2503385 (= e!1587529 (Union!7418 (Concat!12114 call!154818 (regTwo!15348 (regOne!15348 r!27340))) EmptyLang!7418))))

(declare-fun b!2503381 () Bool)

(declare-fun e!1587527 () Regex!7418)

(assert (=> b!2503381 (= e!1587527 e!1587530)))

(declare-fun c!398466 () Bool)

(assert (=> b!2503381 (= c!398466 (is-ElementMatch!7418 (regOne!15348 r!27340)))))

(declare-fun d!715729 () Bool)

(declare-fun lt!896096 () Regex!7418)

(assert (=> d!715729 (validRegex!3044 lt!896096)))

(assert (=> d!715729 (= lt!896096 e!1587527)))

(declare-fun c!398469 () Bool)

(assert (=> d!715729 (= c!398469 (or (is-EmptyExpr!7418 (regOne!15348 r!27340)) (is-EmptyLang!7418 (regOne!15348 r!27340))))))

(assert (=> d!715729 (validRegex!3044 (regOne!15348 r!27340))))

(assert (=> d!715729 (= (derivativeStep!1987 (regOne!15348 r!27340) c!14016) lt!896096)))

(declare-fun b!2503386 () Bool)

(assert (=> b!2503386 (= e!1587528 e!1587526)))

(assert (=> b!2503386 (= c!398467 (is-Star!7418 (regOne!15348 r!27340)))))

(declare-fun b!2503387 () Bool)

(assert (=> b!2503387 (= e!1587529 (Union!7418 (Concat!12114 call!154818 (regTwo!15348 (regOne!15348 r!27340))) call!154815))))

(declare-fun b!2503388 () Bool)

(declare-fun c!398468 () Bool)

(assert (=> b!2503388 (= c!398468 (nullable!2335 (regOne!15348 (regOne!15348 r!27340))))))

(assert (=> b!2503388 (= e!1587526 e!1587529)))

(declare-fun b!2503389 () Bool)

(assert (=> b!2503389 (= e!1587527 EmptyLang!7418)))

(assert (= (and d!715729 c!398469) b!2503389))

(assert (= (and d!715729 (not c!398469)) b!2503381))

(assert (= (and b!2503381 c!398466) b!2503380))

(assert (= (and b!2503381 (not c!398466)) b!2503384))

(assert (= (and b!2503384 c!398470) b!2503382))

(assert (= (and b!2503384 (not c!398470)) b!2503386))

(assert (= (and b!2503386 c!398467) b!2503383))

(assert (= (and b!2503386 (not c!398467)) b!2503388))

(assert (= (and b!2503388 c!398468) b!2503387))

(assert (= (and b!2503388 (not c!398468)) b!2503385))

(assert (= (or b!2503387 b!2503385) bm!154812))

(assert (= (or b!2503383 bm!154812) bm!154811))

(assert (= (or b!2503382 bm!154811) bm!154813))

(assert (= (or b!2503382 b!2503387) bm!154810))

(declare-fun m!2864913 () Bool)

(assert (=> bm!154810 m!2864913))

(declare-fun m!2864915 () Bool)

(assert (=> bm!154813 m!2864915))

(declare-fun m!2864917 () Bool)

(assert (=> d!715729 m!2864917))

(declare-fun m!2864919 () Bool)

(assert (=> d!715729 m!2864919))

(declare-fun m!2864921 () Bool)

(assert (=> b!2503388 m!2864921))

(assert (=> b!2503002 d!715729))

(declare-fun d!715731 () Bool)

(declare-fun e!1587532 () Bool)

(assert (=> d!715731 e!1587532))

(declare-fun c!398471 () Bool)

(assert (=> d!715731 (= c!398471 (is-EmptyExpr!7418 lt!896024))))

(declare-fun lt!896097 () Bool)

(declare-fun e!1587535 () Bool)

(assert (=> d!715731 (= lt!896097 e!1587535)))

(declare-fun c!398473 () Bool)

(assert (=> d!715731 (= c!398473 (isEmpty!16846 tl!4068))))

(assert (=> d!715731 (validRegex!3044 lt!896024)))

(assert (=> d!715731 (= (matchR!3421 lt!896024 tl!4068) lt!896097)))

(declare-fun b!2503390 () Bool)

(declare-fun call!154819 () Bool)

(assert (=> b!2503390 (= e!1587532 (= lt!896097 call!154819))))

(declare-fun b!2503391 () Bool)

(declare-fun res!1058474 () Bool)

(declare-fun e!1587536 () Bool)

(assert (=> b!2503391 (=> res!1058474 e!1587536)))

(declare-fun e!1587531 () Bool)

(assert (=> b!2503391 (= res!1058474 e!1587531)))

(declare-fun res!1058475 () Bool)

(assert (=> b!2503391 (=> (not res!1058475) (not e!1587531))))

(assert (=> b!2503391 (= res!1058475 lt!896097)))

(declare-fun bm!154814 () Bool)

(assert (=> bm!154814 (= call!154819 (isEmpty!16846 tl!4068))))

(declare-fun b!2503392 () Bool)

(declare-fun res!1058470 () Bool)

(assert (=> b!2503392 (=> (not res!1058470) (not e!1587531))))

(assert (=> b!2503392 (= res!1058470 (isEmpty!16846 (tail!3982 tl!4068)))))

(declare-fun b!2503393 () Bool)

(declare-fun e!1587534 () Bool)

(assert (=> b!2503393 (= e!1587536 e!1587534)))

(declare-fun res!1058472 () Bool)

(assert (=> b!2503393 (=> (not res!1058472) (not e!1587534))))

(assert (=> b!2503393 (= res!1058472 (not lt!896097))))

(declare-fun b!2503394 () Bool)

(declare-fun res!1058477 () Bool)

(declare-fun e!1587533 () Bool)

(assert (=> b!2503394 (=> res!1058477 e!1587533)))

(assert (=> b!2503394 (= res!1058477 (not (isEmpty!16846 (tail!3982 tl!4068))))))

(declare-fun b!2503395 () Bool)

(assert (=> b!2503395 (= e!1587533 (not (= (head!5705 tl!4068) (c!398372 lt!896024))))))

(declare-fun b!2503396 () Bool)

(assert (=> b!2503396 (= e!1587534 e!1587533)))

(declare-fun res!1058473 () Bool)

(assert (=> b!2503396 (=> res!1058473 e!1587533)))

(assert (=> b!2503396 (= res!1058473 call!154819)))

(declare-fun b!2503397 () Bool)

(declare-fun res!1058471 () Bool)

(assert (=> b!2503397 (=> (not res!1058471) (not e!1587531))))

(assert (=> b!2503397 (= res!1058471 (not call!154819))))

(declare-fun b!2503398 () Bool)

(declare-fun res!1058476 () Bool)

(assert (=> b!2503398 (=> res!1058476 e!1587536)))

(assert (=> b!2503398 (= res!1058476 (not (is-ElementMatch!7418 lt!896024)))))

(declare-fun e!1587537 () Bool)

(assert (=> b!2503398 (= e!1587537 e!1587536)))

(declare-fun b!2503399 () Bool)

(assert (=> b!2503399 (= e!1587535 (matchR!3421 (derivativeStep!1987 lt!896024 (head!5705 tl!4068)) (tail!3982 tl!4068)))))

(declare-fun b!2503400 () Bool)

(assert (=> b!2503400 (= e!1587532 e!1587537)))

(declare-fun c!398472 () Bool)

(assert (=> b!2503400 (= c!398472 (is-EmptyLang!7418 lt!896024))))

(declare-fun b!2503401 () Bool)

(assert (=> b!2503401 (= e!1587535 (nullable!2335 lt!896024))))

(declare-fun b!2503402 () Bool)

(assert (=> b!2503402 (= e!1587531 (= (head!5705 tl!4068) (c!398372 lt!896024)))))

(declare-fun b!2503403 () Bool)

(assert (=> b!2503403 (= e!1587537 (not lt!896097))))

(assert (= (and d!715731 c!398473) b!2503401))

(assert (= (and d!715731 (not c!398473)) b!2503399))

(assert (= (and d!715731 c!398471) b!2503390))

(assert (= (and d!715731 (not c!398471)) b!2503400))

(assert (= (and b!2503400 c!398472) b!2503403))

(assert (= (and b!2503400 (not c!398472)) b!2503398))

(assert (= (and b!2503398 (not res!1058476)) b!2503391))

(assert (= (and b!2503391 res!1058475) b!2503397))

(assert (= (and b!2503397 res!1058471) b!2503392))

(assert (= (and b!2503392 res!1058470) b!2503402))

(assert (= (and b!2503391 (not res!1058474)) b!2503393))

(assert (= (and b!2503393 res!1058472) b!2503396))

(assert (= (and b!2503396 (not res!1058473)) b!2503394))

(assert (= (and b!2503394 (not res!1058477)) b!2503395))

(assert (= (or b!2503390 b!2503396 b!2503397) bm!154814))

(assert (=> b!2503399 m!2864849))

(assert (=> b!2503399 m!2864849))

(declare-fun m!2864923 () Bool)

(assert (=> b!2503399 m!2864923))

(assert (=> b!2503399 m!2864853))

(assert (=> b!2503399 m!2864923))

(assert (=> b!2503399 m!2864853))

(declare-fun m!2864925 () Bool)

(assert (=> b!2503399 m!2864925))

(assert (=> b!2503395 m!2864849))

(assert (=> d!715731 m!2864857))

(assert (=> d!715731 m!2864873))

(assert (=> bm!154814 m!2864857))

(declare-fun m!2864927 () Bool)

(assert (=> b!2503401 m!2864927))

(assert (=> b!2503402 m!2864849))

(assert (=> b!2503394 m!2864853))

(assert (=> b!2503394 m!2864853))

(assert (=> b!2503394 m!2864863))

(assert (=> b!2503392 m!2864853))

(assert (=> b!2503392 m!2864853))

(assert (=> b!2503392 m!2864863))

(assert (=> b!2503002 d!715731))

(declare-fun d!715733 () Bool)

(assert (=> d!715733 (= (matchR!3421 lt!896024 tl!4068) (matchR!3421 (derivative!113 lt!896024 tl!4068) Nil!29383))))

(declare-fun lt!896100 () Unit!43093)

(declare-fun choose!14789 (Regex!7418 List!29483) Unit!43093)

(assert (=> d!715733 (= lt!896100 (choose!14789 lt!896024 tl!4068))))

(assert (=> d!715733 (validRegex!3044 lt!896024)))

(assert (=> d!715733 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!67 lt!896024 tl!4068) lt!896100)))

(declare-fun bs!468615 () Bool)

(assert (= bs!468615 d!715733))

(assert (=> bs!468615 m!2864663))

(assert (=> bs!468615 m!2864665))

(assert (=> bs!468615 m!2864669))

(assert (=> bs!468615 m!2864663))

(assert (=> bs!468615 m!2864873))

(declare-fun m!2864929 () Bool)

(assert (=> bs!468615 m!2864929))

(assert (=> b!2503002 d!715733))

(declare-fun bm!154815 () Bool)

(declare-fun call!154821 () Bool)

(declare-fun c!398475 () Bool)

(assert (=> bm!154815 (= call!154821 (validRegex!3044 (ite c!398475 (regTwo!15349 r!27340) (regOne!15348 r!27340))))))

(declare-fun b!2503404 () Bool)

(declare-fun res!1058480 () Bool)

(declare-fun e!1587540 () Bool)

(assert (=> b!2503404 (=> (not res!1058480) (not e!1587540))))

(declare-fun call!154822 () Bool)

(assert (=> b!2503404 (= res!1058480 call!154822)))

(declare-fun e!1587543 () Bool)

(assert (=> b!2503404 (= e!1587543 e!1587540)))

(declare-fun b!2503405 () Bool)

(declare-fun res!1058482 () Bool)

(declare-fun e!1587542 () Bool)

(assert (=> b!2503405 (=> res!1058482 e!1587542)))

(assert (=> b!2503405 (= res!1058482 (not (is-Concat!12114 r!27340)))))

(assert (=> b!2503405 (= e!1587543 e!1587542)))

(declare-fun b!2503406 () Bool)

(assert (=> b!2503406 (= e!1587540 call!154821)))

(declare-fun b!2503407 () Bool)

(declare-fun e!1587539 () Bool)

(assert (=> b!2503407 (= e!1587539 e!1587543)))

(assert (=> b!2503407 (= c!398475 (is-Union!7418 r!27340))))

(declare-fun b!2503408 () Bool)

(declare-fun e!1587544 () Bool)

(assert (=> b!2503408 (= e!1587544 call!154822)))

(declare-fun b!2503409 () Bool)

(assert (=> b!2503409 (= e!1587542 e!1587544)))

(declare-fun res!1058478 () Bool)

(assert (=> b!2503409 (=> (not res!1058478) (not e!1587544))))

(assert (=> b!2503409 (= res!1058478 call!154821)))

(declare-fun d!715735 () Bool)

(declare-fun res!1058481 () Bool)

(declare-fun e!1587538 () Bool)

(assert (=> d!715735 (=> res!1058481 e!1587538)))

(assert (=> d!715735 (= res!1058481 (is-ElementMatch!7418 r!27340))))

(assert (=> d!715735 (= (validRegex!3044 r!27340) e!1587538)))

(declare-fun call!154820 () Bool)

(declare-fun bm!154816 () Bool)

(declare-fun c!398474 () Bool)

(assert (=> bm!154816 (= call!154820 (validRegex!3044 (ite c!398474 (reg!7747 r!27340) (ite c!398475 (regOne!15349 r!27340) (regTwo!15348 r!27340)))))))

(declare-fun b!2503410 () Bool)

(assert (=> b!2503410 (= e!1587538 e!1587539)))

(assert (=> b!2503410 (= c!398474 (is-Star!7418 r!27340))))

(declare-fun b!2503411 () Bool)

(declare-fun e!1587541 () Bool)

(assert (=> b!2503411 (= e!1587541 call!154820)))

(declare-fun bm!154817 () Bool)

(assert (=> bm!154817 (= call!154822 call!154820)))

(declare-fun b!2503412 () Bool)

(assert (=> b!2503412 (= e!1587539 e!1587541)))

(declare-fun res!1058479 () Bool)

(assert (=> b!2503412 (= res!1058479 (not (nullable!2335 (reg!7747 r!27340))))))

(assert (=> b!2503412 (=> (not res!1058479) (not e!1587541))))

(assert (= (and d!715735 (not res!1058481)) b!2503410))

(assert (= (and b!2503410 c!398474) b!2503412))

(assert (= (and b!2503410 (not c!398474)) b!2503407))

(assert (= (and b!2503412 res!1058479) b!2503411))

(assert (= (and b!2503407 c!398475) b!2503404))

(assert (= (and b!2503407 (not c!398475)) b!2503405))

(assert (= (and b!2503404 res!1058480) b!2503406))

(assert (= (and b!2503405 (not res!1058482)) b!2503409))

(assert (= (and b!2503409 res!1058478) b!2503408))

(assert (= (or b!2503404 b!2503408) bm!154817))

(assert (= (or b!2503406 b!2503409) bm!154815))

(assert (= (or b!2503411 bm!154817) bm!154816))

(declare-fun m!2864931 () Bool)

(assert (=> bm!154815 m!2864931))

(declare-fun m!2864933 () Bool)

(assert (=> bm!154816 m!2864933))

(declare-fun m!2864935 () Bool)

(assert (=> b!2503412 m!2864935))

(assert (=> start!244278 d!715735))

(declare-fun d!715737 () Bool)

(assert (=> d!715737 (= (nullable!2335 (regOne!15348 r!27340)) (nullableFct!601 (regOne!15348 r!27340)))))

(declare-fun bs!468616 () Bool)

(assert (= bs!468616 d!715737))

(declare-fun m!2864937 () Bool)

(assert (=> bs!468616 m!2864937))

(assert (=> b!2502995 d!715737))

(declare-fun b!2503433 () Bool)

(declare-fun e!1587552 () Bool)

(assert (=> b!2503433 (= e!1587552 tp_is_empty!12691)))

(declare-fun b!2503434 () Bool)

(declare-fun tp!801224 () Bool)

(declare-fun tp!801222 () Bool)

(assert (=> b!2503434 (= e!1587552 (and tp!801224 tp!801222))))

(assert (=> b!2503000 (= tp!801187 e!1587552)))

(declare-fun b!2503435 () Bool)

(declare-fun tp!801223 () Bool)

(assert (=> b!2503435 (= e!1587552 tp!801223)))

(declare-fun b!2503436 () Bool)

(declare-fun tp!801225 () Bool)

(declare-fun tp!801221 () Bool)

(assert (=> b!2503436 (= e!1587552 (and tp!801225 tp!801221))))

(assert (= (and b!2503000 (is-ElementMatch!7418 (reg!7747 r!27340))) b!2503433))

(assert (= (and b!2503000 (is-Concat!12114 (reg!7747 r!27340))) b!2503434))

(assert (= (and b!2503000 (is-Star!7418 (reg!7747 r!27340))) b!2503435))

(assert (= (and b!2503000 (is-Union!7418 (reg!7747 r!27340))) b!2503436))

(declare-fun b!2503437 () Bool)

(declare-fun e!1587553 () Bool)

(assert (=> b!2503437 (= e!1587553 tp_is_empty!12691)))

(declare-fun b!2503438 () Bool)

(declare-fun tp!801229 () Bool)

(declare-fun tp!801227 () Bool)

(assert (=> b!2503438 (= e!1587553 (and tp!801229 tp!801227))))

(assert (=> b!2503004 (= tp!801188 e!1587553)))

(declare-fun b!2503439 () Bool)

(declare-fun tp!801228 () Bool)

(assert (=> b!2503439 (= e!1587553 tp!801228)))

(declare-fun b!2503440 () Bool)

(declare-fun tp!801230 () Bool)

(declare-fun tp!801226 () Bool)

(assert (=> b!2503440 (= e!1587553 (and tp!801230 tp!801226))))

(assert (= (and b!2503004 (is-ElementMatch!7418 (regOne!15349 r!27340))) b!2503437))

(assert (= (and b!2503004 (is-Concat!12114 (regOne!15349 r!27340))) b!2503438))

(assert (= (and b!2503004 (is-Star!7418 (regOne!15349 r!27340))) b!2503439))

(assert (= (and b!2503004 (is-Union!7418 (regOne!15349 r!27340))) b!2503440))

(declare-fun b!2503441 () Bool)

(declare-fun e!1587554 () Bool)

(assert (=> b!2503441 (= e!1587554 tp_is_empty!12691)))

(declare-fun b!2503442 () Bool)

(declare-fun tp!801234 () Bool)

(declare-fun tp!801232 () Bool)

(assert (=> b!2503442 (= e!1587554 (and tp!801234 tp!801232))))

(assert (=> b!2503004 (= tp!801189 e!1587554)))

(declare-fun b!2503443 () Bool)

(declare-fun tp!801233 () Bool)

(assert (=> b!2503443 (= e!1587554 tp!801233)))

(declare-fun b!2503444 () Bool)

(declare-fun tp!801235 () Bool)

(declare-fun tp!801231 () Bool)

(assert (=> b!2503444 (= e!1587554 (and tp!801235 tp!801231))))

(assert (= (and b!2503004 (is-ElementMatch!7418 (regTwo!15349 r!27340))) b!2503441))

(assert (= (and b!2503004 (is-Concat!12114 (regTwo!15349 r!27340))) b!2503442))

(assert (= (and b!2503004 (is-Star!7418 (regTwo!15349 r!27340))) b!2503443))

(assert (= (and b!2503004 (is-Union!7418 (regTwo!15349 r!27340))) b!2503444))

(declare-fun b!2503449 () Bool)

(declare-fun e!1587557 () Bool)

(declare-fun tp!801238 () Bool)

(assert (=> b!2503449 (= e!1587557 (and tp_is_empty!12691 tp!801238))))

(assert (=> b!2502997 (= tp!801190 e!1587557)))

(assert (= (and b!2502997 (is-Cons!29383 (t!211182 tl!4068))) b!2503449))

(declare-fun b!2503450 () Bool)

(declare-fun e!1587558 () Bool)

(assert (=> b!2503450 (= e!1587558 tp_is_empty!12691)))

(declare-fun b!2503451 () Bool)

(declare-fun tp!801242 () Bool)

(declare-fun tp!801240 () Bool)

(assert (=> b!2503451 (= e!1587558 (and tp!801242 tp!801240))))

(assert (=> b!2502996 (= tp!801191 e!1587558)))

(declare-fun b!2503452 () Bool)

(declare-fun tp!801241 () Bool)

(assert (=> b!2503452 (= e!1587558 tp!801241)))

(declare-fun b!2503453 () Bool)

(declare-fun tp!801243 () Bool)

(declare-fun tp!801239 () Bool)

(assert (=> b!2503453 (= e!1587558 (and tp!801243 tp!801239))))

(assert (= (and b!2502996 (is-ElementMatch!7418 (regOne!15348 r!27340))) b!2503450))

(assert (= (and b!2502996 (is-Concat!12114 (regOne!15348 r!27340))) b!2503451))

(assert (= (and b!2502996 (is-Star!7418 (regOne!15348 r!27340))) b!2503452))

(assert (= (and b!2502996 (is-Union!7418 (regOne!15348 r!27340))) b!2503453))

(declare-fun b!2503454 () Bool)

(declare-fun e!1587559 () Bool)

(assert (=> b!2503454 (= e!1587559 tp_is_empty!12691)))

(declare-fun b!2503455 () Bool)

(declare-fun tp!801247 () Bool)

(declare-fun tp!801245 () Bool)

(assert (=> b!2503455 (= e!1587559 (and tp!801247 tp!801245))))

(assert (=> b!2502996 (= tp!801192 e!1587559)))

(declare-fun b!2503456 () Bool)

(declare-fun tp!801246 () Bool)

(assert (=> b!2503456 (= e!1587559 tp!801246)))

(declare-fun b!2503457 () Bool)

(declare-fun tp!801248 () Bool)

(declare-fun tp!801244 () Bool)

(assert (=> b!2503457 (= e!1587559 (and tp!801248 tp!801244))))

(assert (= (and b!2502996 (is-ElementMatch!7418 (regTwo!15348 r!27340))) b!2503454))

(assert (= (and b!2502996 (is-Concat!12114 (regTwo!15348 r!27340))) b!2503455))

(assert (= (and b!2502996 (is-Star!7418 (regTwo!15348 r!27340))) b!2503456))

(assert (= (and b!2502996 (is-Union!7418 (regTwo!15348 r!27340))) b!2503457))

(push 1)

(assert (not bm!154758))

(assert (not b!2503365))

(assert (not b!2503157))

(assert (not b!2503303))

(assert (not b!2503067))

(assert (not bm!154816))

(assert (not d!715723))

(assert (not b!2503368))

(assert (not b!2503296))

(assert (not bm!154796))

(assert (not bm!154792))

(assert (not b!2503152))

(assert (not b!2503302))

(assert (not bm!154787))

(assert (not b!2503293))

(assert (not b!2503295))

(assert (not b!2503442))

(assert (not b!2503329))

(assert (not bm!154810))

(assert (not b!2503355))

(assert (not bm!154814))

(assert (not bm!154805))

(assert (not b!2503155))

(assert (not b!2503395))

(assert (not b!2503452))

(assert (not b!2503318))

(assert (not bm!154815))

(assert (not b!2503453))

(assert (not bm!154806))

(assert (not b!2503394))

(assert (not b!2503402))

(assert (not d!715695))

(assert (not b!2503401))

(assert (not b!2503449))

(assert (not b!2503392))

(assert tp_is_empty!12691)

(assert (not b!2503361))

(assert (not d!715709))

(assert (not b!2503231))

(assert (not d!715729))

(assert (not b!2503333))

(assert (not b!2503378))

(assert (not b!2503436))

(assert (not b!2503435))

(assert (not d!715721))

(assert (not d!715737))

(assert (not bm!154794))

(assert (not d!715693))

(assert (not b!2503300))

(assert (not d!715733))

(assert (not b!2503388))

(assert (not d!715685))

(assert (not b!2503439))

(assert (not b!2503434))

(assert (not bm!154784))

(assert (not b!2503151))

(assert (not bm!154813))

(assert (not b!2503360))

(assert (not b!2503337))

(assert (not b!2503456))

(assert (not d!715687))

(assert (not b!2503339))

(assert (not b!2503457))

(assert (not b!2503443))

(assert (not b!2503313))

(assert (not b!2503354))

(assert (not b!2503399))

(assert (not d!715719))

(assert (not b!2503440))

(assert (not bm!154793))

(assert (not bm!154757))

(assert (not b!2503340))

(assert (not d!715727))

(assert (not b!2503332))

(assert (not b!2503412))

(assert (not b!2503158))

(assert (not b!2503358))

(assert (not b!2503455))

(assert (not b!2503444))

(assert (not d!715731))

(assert (not b!2503191))

(assert (not b!2503451))

(assert (not b!2503438))

(assert (not d!715725))

(assert (not d!715699))

(assert (not b!2503367))

(assert (not b!2503156))

(assert (not d!715703))

(assert (not bm!154809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

