; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245756 () Bool)

(assert start!245756)

(declare-fun b!2521784 () Bool)

(declare-fun e!1596919 () Bool)

(declare-fun tp_is_empty!12873 () Bool)

(declare-fun tp!805838 () Bool)

(assert (=> b!2521784 (= e!1596919 (and tp_is_empty!12873 tp!805838))))

(declare-fun b!2521785 () Bool)

(declare-fun e!1596918 () Bool)

(declare-datatypes ((C!15176 0))(
  ( (C!15177 (val!9240 Int)) )
))
(declare-datatypes ((List!29574 0))(
  ( (Nil!29474) (Cons!29474 (h!34894 C!15176) (t!211273 List!29574)) )
))
(declare-datatypes ((tuple2!29520 0))(
  ( (tuple2!29521 (_1!17302 List!29574) (_2!17302 List!29574)) )
))
(declare-fun lt!899752 () tuple2!29520)

(declare-fun tl!4068 () List!29574)

(declare-fun ++!7230 (List!29574 List!29574) List!29574)

(assert (=> b!2521785 (= e!1596918 (= (++!7230 (_1!17302 lt!899752) (_2!17302 lt!899752)) tl!4068))))

(declare-datatypes ((Option!5880 0))(
  ( (None!5879) (Some!5879 (v!31812 tuple2!29520)) )
))
(declare-fun lt!899753 () Option!5880)

(declare-fun get!9213 (Option!5880) tuple2!29520)

(assert (=> b!2521785 (= lt!899752 (get!9213 lt!899753))))

(declare-fun isDefined!4702 (Option!5880) Bool)

(assert (=> b!2521785 (isDefined!4702 lt!899753)))

(declare-datatypes ((Regex!7509 0))(
  ( (ElementMatch!7509 (c!402275 C!15176)) (Concat!12205 (regOne!15530 Regex!7509) (regTwo!15530 Regex!7509)) (EmptyExpr!7509) (Star!7509 (reg!7838 Regex!7509)) (EmptyLang!7509) (Union!7509 (regOne!15531 Regex!7509) (regTwo!15531 Regex!7509)) )
))
(declare-fun lt!899746 () Regex!7509)

(declare-fun r!27340 () Regex!7509)

(declare-fun findConcatSeparation!902 (Regex!7509 Regex!7509 List!29574 List!29574 List!29574) Option!5880)

(assert (=> b!2521785 (= lt!899753 (findConcatSeparation!902 lt!899746 (regTwo!15530 r!27340) Nil!29474 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43243 0))(
  ( (Unit!43244) )
))
(declare-fun lt!899754 () Unit!43243)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!184 (Regex!7509 Regex!7509 List!29574) Unit!43243)

(assert (=> b!2521785 (= lt!899754 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!184 lt!899746 (regTwo!15530 r!27340) tl!4068))))

(declare-fun res!1065377 () Bool)

(declare-fun e!1596921 () Bool)

(assert (=> start!245756 (=> (not res!1065377) (not e!1596921))))

(declare-fun validRegex!3135 (Regex!7509) Bool)

(assert (=> start!245756 (= res!1065377 (validRegex!3135 r!27340))))

(assert (=> start!245756 e!1596921))

(declare-fun e!1596922 () Bool)

(assert (=> start!245756 e!1596922))

(assert (=> start!245756 tp_is_empty!12873))

(assert (=> start!245756 e!1596919))

(declare-fun b!2521786 () Bool)

(declare-fun res!1065378 () Bool)

(assert (=> b!2521786 (=> (not res!1065378) (not e!1596921))))

(declare-fun c!14016 () C!15176)

(declare-fun nullable!2426 (Regex!7509) Bool)

(declare-fun derivative!204 (Regex!7509 List!29574) Regex!7509)

(declare-fun derivativeStep!2078 (Regex!7509 C!15176) Regex!7509)

(assert (=> b!2521786 (= res!1065378 (nullable!2426 (derivative!204 (derivativeStep!2078 r!27340 c!14016) tl!4068)))))

(declare-fun b!2521787 () Bool)

(declare-fun tp!805837 () Bool)

(declare-fun tp!805840 () Bool)

(assert (=> b!2521787 (= e!1596922 (and tp!805837 tp!805840))))

(declare-fun b!2521788 () Bool)

(assert (=> b!2521788 (= e!1596922 tp_is_empty!12873)))

(declare-fun b!2521789 () Bool)

(declare-fun e!1596920 () Bool)

(declare-fun lt!899748 () Regex!7509)

(declare-fun matchR!3496 (Regex!7509 List!29574) Bool)

(assert (=> b!2521789 (= e!1596920 (matchR!3496 lt!899748 tl!4068))))

(declare-fun b!2521790 () Bool)

(declare-fun tp!805842 () Bool)

(assert (=> b!2521790 (= e!1596922 tp!805842)))

(declare-fun b!2521791 () Bool)

(declare-fun res!1065379 () Bool)

(assert (=> b!2521791 (=> (not res!1065379) (not e!1596921))))

(get-info :version)

(assert (=> b!2521791 (= res!1065379 (and (not ((_ is EmptyExpr!7509) r!27340)) (not ((_ is EmptyLang!7509) r!27340)) (not ((_ is ElementMatch!7509) r!27340)) (not ((_ is Union!7509) r!27340)) (not ((_ is Star!7509) r!27340))))))

(declare-fun b!2521792 () Bool)

(declare-fun res!1065376 () Bool)

(assert (=> b!2521792 (=> (not res!1065376) (not e!1596921))))

(assert (=> b!2521792 (= res!1065376 (nullable!2426 (regOne!15530 r!27340)))))

(declare-fun b!2521793 () Bool)

(assert (=> b!2521793 (= e!1596921 (not e!1596918))))

(declare-fun res!1065380 () Bool)

(assert (=> b!2521793 (=> res!1065380 e!1596918)))

(declare-fun lt!899749 () Bool)

(assert (=> b!2521793 (= res!1065380 (not lt!899749))))

(assert (=> b!2521793 e!1596920))

(declare-fun res!1065375 () Bool)

(assert (=> b!2521793 (=> res!1065375 e!1596920)))

(assert (=> b!2521793 (= res!1065375 lt!899749)))

(declare-fun lt!899745 () Regex!7509)

(assert (=> b!2521793 (= lt!899749 (matchR!3496 lt!899745 tl!4068))))

(declare-fun lt!899751 () Unit!43243)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!174 (Regex!7509 Regex!7509 List!29574) Unit!43243)

(assert (=> b!2521793 (= lt!899751 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!174 lt!899745 lt!899748 tl!4068))))

(declare-fun lt!899747 () Regex!7509)

(assert (=> b!2521793 (= (matchR!3496 lt!899747 tl!4068) (matchR!3496 (derivative!204 lt!899747 tl!4068) Nil!29474))))

(declare-fun lt!899750 () Unit!43243)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!142 (Regex!7509 List!29574) Unit!43243)

(assert (=> b!2521793 (= lt!899750 (lemmaMatchRIsSameAsWholeDerivativeAndNil!142 lt!899747 tl!4068))))

(assert (=> b!2521793 (= lt!899747 (Union!7509 lt!899745 lt!899748))))

(assert (=> b!2521793 (= lt!899748 (derivativeStep!2078 (regTwo!15530 r!27340) c!14016))))

(assert (=> b!2521793 (= lt!899745 (Concat!12205 lt!899746 (regTwo!15530 r!27340)))))

(assert (=> b!2521793 (= lt!899746 (derivativeStep!2078 (regOne!15530 r!27340) c!14016))))

(declare-fun b!2521794 () Bool)

(declare-fun tp!805841 () Bool)

(declare-fun tp!805839 () Bool)

(assert (=> b!2521794 (= e!1596922 (and tp!805841 tp!805839))))

(assert (= (and start!245756 res!1065377) b!2521786))

(assert (= (and b!2521786 res!1065378) b!2521791))

(assert (= (and b!2521791 res!1065379) b!2521792))

(assert (= (and b!2521792 res!1065376) b!2521793))

(assert (= (and b!2521793 (not res!1065375)) b!2521789))

(assert (= (and b!2521793 (not res!1065380)) b!2521785))

(assert (= (and start!245756 ((_ is ElementMatch!7509) r!27340)) b!2521788))

(assert (= (and start!245756 ((_ is Concat!12205) r!27340)) b!2521794))

(assert (= (and start!245756 ((_ is Star!7509) r!27340)) b!2521790))

(assert (= (and start!245756 ((_ is Union!7509) r!27340)) b!2521787))

(assert (= (and start!245756 ((_ is Cons!29474) tl!4068)) b!2521784))

(declare-fun m!2876319 () Bool)

(assert (=> b!2521793 m!2876319))

(declare-fun m!2876321 () Bool)

(assert (=> b!2521793 m!2876321))

(declare-fun m!2876323 () Bool)

(assert (=> b!2521793 m!2876323))

(declare-fun m!2876325 () Bool)

(assert (=> b!2521793 m!2876325))

(declare-fun m!2876327 () Bool)

(assert (=> b!2521793 m!2876327))

(declare-fun m!2876329 () Bool)

(assert (=> b!2521793 m!2876329))

(assert (=> b!2521793 m!2876323))

(declare-fun m!2876331 () Bool)

(assert (=> b!2521793 m!2876331))

(declare-fun m!2876333 () Bool)

(assert (=> b!2521793 m!2876333))

(declare-fun m!2876335 () Bool)

(assert (=> b!2521789 m!2876335))

(declare-fun m!2876337 () Bool)

(assert (=> b!2521786 m!2876337))

(assert (=> b!2521786 m!2876337))

(declare-fun m!2876339 () Bool)

(assert (=> b!2521786 m!2876339))

(assert (=> b!2521786 m!2876339))

(declare-fun m!2876341 () Bool)

(assert (=> b!2521786 m!2876341))

(declare-fun m!2876343 () Bool)

(assert (=> b!2521785 m!2876343))

(declare-fun m!2876345 () Bool)

(assert (=> b!2521785 m!2876345))

(declare-fun m!2876347 () Bool)

(assert (=> b!2521785 m!2876347))

(declare-fun m!2876349 () Bool)

(assert (=> b!2521785 m!2876349))

(declare-fun m!2876351 () Bool)

(assert (=> b!2521785 m!2876351))

(declare-fun m!2876353 () Bool)

(assert (=> b!2521792 m!2876353))

(declare-fun m!2876355 () Bool)

(assert (=> start!245756 m!2876355))

(check-sat (not b!2521784) (not b!2521789) (not b!2521794) (not b!2521792) (not b!2521786) (not start!245756) (not b!2521785) (not b!2521787) tp_is_empty!12873 (not b!2521790) (not b!2521793))
(check-sat)
(get-model)

(declare-fun b!2521831 () Bool)

(declare-fun e!1596957 () Bool)

(declare-fun e!1596954 () Bool)

(assert (=> b!2521831 (= e!1596957 e!1596954)))

(declare-fun c!402285 () Bool)

(assert (=> b!2521831 (= c!402285 ((_ is Union!7509) r!27340))))

(declare-fun b!2521832 () Bool)

(declare-fun e!1596956 () Bool)

(declare-fun e!1596951 () Bool)

(assert (=> b!2521832 (= e!1596956 e!1596951)))

(declare-fun res!1065405 () Bool)

(assert (=> b!2521832 (=> (not res!1065405) (not e!1596951))))

(declare-fun call!157252 () Bool)

(assert (=> b!2521832 (= res!1065405 call!157252)))

(declare-fun b!2521834 () Bool)

(declare-fun res!1065404 () Bool)

(assert (=> b!2521834 (=> res!1065404 e!1596956)))

(assert (=> b!2521834 (= res!1065404 (not ((_ is Concat!12205) r!27340)))))

(assert (=> b!2521834 (= e!1596954 e!1596956)))

(declare-fun b!2521835 () Bool)

(declare-fun e!1596955 () Bool)

(assert (=> b!2521835 (= e!1596957 e!1596955)))

(declare-fun res!1065402 () Bool)

(assert (=> b!2521835 (= res!1065402 (not (nullable!2426 (reg!7838 r!27340))))))

(assert (=> b!2521835 (=> (not res!1065402) (not e!1596955))))

(declare-fun b!2521836 () Bool)

(declare-fun call!157250 () Bool)

(assert (=> b!2521836 (= e!1596955 call!157250)))

(declare-fun bm!157245 () Bool)

(assert (=> bm!157245 (= call!157252 call!157250)))

(declare-fun b!2521837 () Bool)

(declare-fun e!1596952 () Bool)

(assert (=> b!2521837 (= e!1596952 call!157252)))

(declare-fun b!2521838 () Bool)

(declare-fun res!1065401 () Bool)

(assert (=> b!2521838 (=> (not res!1065401) (not e!1596952))))

(declare-fun call!157251 () Bool)

(assert (=> b!2521838 (= res!1065401 call!157251)))

(assert (=> b!2521838 (= e!1596954 e!1596952)))

(declare-fun bm!157246 () Bool)

(assert (=> bm!157246 (= call!157251 (validRegex!3135 (ite c!402285 (regOne!15531 r!27340) (regTwo!15530 r!27340))))))

(declare-fun bm!157247 () Bool)

(declare-fun c!402284 () Bool)

(assert (=> bm!157247 (= call!157250 (validRegex!3135 (ite c!402284 (reg!7838 r!27340) (ite c!402285 (regTwo!15531 r!27340) (regOne!15530 r!27340)))))))

(declare-fun b!2521839 () Bool)

(assert (=> b!2521839 (= e!1596951 call!157251)))

(declare-fun b!2521833 () Bool)

(declare-fun e!1596953 () Bool)

(assert (=> b!2521833 (= e!1596953 e!1596957)))

(assert (=> b!2521833 (= c!402284 ((_ is Star!7509) r!27340))))

(declare-fun d!718244 () Bool)

(declare-fun res!1065403 () Bool)

(assert (=> d!718244 (=> res!1065403 e!1596953)))

(assert (=> d!718244 (= res!1065403 ((_ is ElementMatch!7509) r!27340))))

(assert (=> d!718244 (= (validRegex!3135 r!27340) e!1596953)))

(assert (= (and d!718244 (not res!1065403)) b!2521833))

(assert (= (and b!2521833 c!402284) b!2521835))

(assert (= (and b!2521833 (not c!402284)) b!2521831))

(assert (= (and b!2521835 res!1065402) b!2521836))

(assert (= (and b!2521831 c!402285) b!2521838))

(assert (= (and b!2521831 (not c!402285)) b!2521834))

(assert (= (and b!2521838 res!1065401) b!2521837))

(assert (= (and b!2521834 (not res!1065404)) b!2521832))

(assert (= (and b!2521832 res!1065405) b!2521839))

(assert (= (or b!2521838 b!2521839) bm!157246))

(assert (= (or b!2521837 b!2521832) bm!157245))

(assert (= (or b!2521836 bm!157245) bm!157247))

(declare-fun m!2876359 () Bool)

(assert (=> b!2521835 m!2876359))

(declare-fun m!2876361 () Bool)

(assert (=> bm!157246 m!2876361))

(declare-fun m!2876363 () Bool)

(assert (=> bm!157247 m!2876363))

(assert (=> start!245756 d!718244))

(declare-fun d!718250 () Bool)

(assert (=> d!718250 (= (get!9213 lt!899753) (v!31812 lt!899753))))

(assert (=> b!2521785 d!718250))

(declare-fun b!2521860 () Bool)

(declare-fun e!1596969 () Bool)

(declare-fun lt!899757 () List!29574)

(assert (=> b!2521860 (= e!1596969 (or (not (= (_2!17302 lt!899752) Nil!29474)) (= lt!899757 (_1!17302 lt!899752))))))

(declare-fun b!2521857 () Bool)

(declare-fun e!1596970 () List!29574)

(assert (=> b!2521857 (= e!1596970 (_2!17302 lt!899752))))

(declare-fun b!2521858 () Bool)

(assert (=> b!2521858 (= e!1596970 (Cons!29474 (h!34894 (_1!17302 lt!899752)) (++!7230 (t!211273 (_1!17302 lt!899752)) (_2!17302 lt!899752))))))

(declare-fun d!718252 () Bool)

(assert (=> d!718252 e!1596969))

(declare-fun res!1065415 () Bool)

(assert (=> d!718252 (=> (not res!1065415) (not e!1596969))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4037 (List!29574) (InoxSet C!15176))

(assert (=> d!718252 (= res!1065415 (= (content!4037 lt!899757) ((_ map or) (content!4037 (_1!17302 lt!899752)) (content!4037 (_2!17302 lt!899752)))))))

(assert (=> d!718252 (= lt!899757 e!1596970)))

(declare-fun c!402290 () Bool)

(assert (=> d!718252 (= c!402290 ((_ is Nil!29474) (_1!17302 lt!899752)))))

(assert (=> d!718252 (= (++!7230 (_1!17302 lt!899752) (_2!17302 lt!899752)) lt!899757)))

(declare-fun b!2521859 () Bool)

(declare-fun res!1065416 () Bool)

(assert (=> b!2521859 (=> (not res!1065416) (not e!1596969))))

(declare-fun size!22919 (List!29574) Int)

(assert (=> b!2521859 (= res!1065416 (= (size!22919 lt!899757) (+ (size!22919 (_1!17302 lt!899752)) (size!22919 (_2!17302 lt!899752)))))))

(assert (= (and d!718252 c!402290) b!2521857))

(assert (= (and d!718252 (not c!402290)) b!2521858))

(assert (= (and d!718252 res!1065415) b!2521859))

(assert (= (and b!2521859 res!1065416) b!2521860))

(declare-fun m!2876371 () Bool)

(assert (=> b!2521858 m!2876371))

(declare-fun m!2876373 () Bool)

(assert (=> d!718252 m!2876373))

(declare-fun m!2876375 () Bool)

(assert (=> d!718252 m!2876375))

(declare-fun m!2876377 () Bool)

(assert (=> d!718252 m!2876377))

(declare-fun m!2876379 () Bool)

(assert (=> b!2521859 m!2876379))

(declare-fun m!2876381 () Bool)

(assert (=> b!2521859 m!2876381))

(declare-fun m!2876383 () Bool)

(assert (=> b!2521859 m!2876383))

(assert (=> b!2521785 d!718252))

(declare-fun d!718256 () Bool)

(declare-fun isEmpty!16940 (Option!5880) Bool)

(assert (=> d!718256 (= (isDefined!4702 lt!899753) (not (isEmpty!16940 lt!899753)))))

(declare-fun bs!469007 () Bool)

(assert (= bs!469007 d!718256))

(declare-fun m!2876385 () Bool)

(assert (=> bs!469007 m!2876385))

(assert (=> b!2521785 d!718256))

(declare-fun d!718258 () Bool)

(assert (=> d!718258 (isDefined!4702 (findConcatSeparation!902 lt!899746 (regTwo!15530 r!27340) Nil!29474 tl!4068 tl!4068))))

(declare-fun lt!899762 () Unit!43243)

(declare-fun choose!14945 (Regex!7509 Regex!7509 List!29574) Unit!43243)

(assert (=> d!718258 (= lt!899762 (choose!14945 lt!899746 (regTwo!15530 r!27340) tl!4068))))

(assert (=> d!718258 (validRegex!3135 lt!899746)))

(assert (=> d!718258 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!184 lt!899746 (regTwo!15530 r!27340) tl!4068) lt!899762)))

(declare-fun bs!469008 () Bool)

(assert (= bs!469008 d!718258))

(assert (=> bs!469008 m!2876347))

(assert (=> bs!469008 m!2876347))

(declare-fun m!2876387 () Bool)

(assert (=> bs!469008 m!2876387))

(declare-fun m!2876389 () Bool)

(assert (=> bs!469008 m!2876389))

(declare-fun m!2876391 () Bool)

(assert (=> bs!469008 m!2876391))

(assert (=> b!2521785 d!718258))

(declare-fun d!718260 () Bool)

(declare-fun e!1597026 () Bool)

(assert (=> d!718260 e!1597026))

(declare-fun res!1065469 () Bool)

(assert (=> d!718260 (=> res!1065469 e!1597026)))

(declare-fun e!1597025 () Bool)

(assert (=> d!718260 (= res!1065469 e!1597025)))

(declare-fun res!1065466 () Bool)

(assert (=> d!718260 (=> (not res!1065466) (not e!1597025))))

(declare-fun lt!899780 () Option!5880)

(assert (=> d!718260 (= res!1065466 (isDefined!4702 lt!899780))))

(declare-fun e!1597028 () Option!5880)

(assert (=> d!718260 (= lt!899780 e!1597028)))

(declare-fun c!402317 () Bool)

(declare-fun e!1597029 () Bool)

(assert (=> d!718260 (= c!402317 e!1597029)))

(declare-fun res!1065468 () Bool)

(assert (=> d!718260 (=> (not res!1065468) (not e!1597029))))

(assert (=> d!718260 (= res!1065468 (matchR!3496 lt!899746 Nil!29474))))

(assert (=> d!718260 (validRegex!3135 lt!899746)))

(assert (=> d!718260 (= (findConcatSeparation!902 lt!899746 (regTwo!15530 r!27340) Nil!29474 tl!4068 tl!4068) lt!899780)))

(declare-fun b!2521961 () Bool)

(assert (=> b!2521961 (= e!1597028 (Some!5879 (tuple2!29521 Nil!29474 tl!4068)))))

(declare-fun b!2521962 () Bool)

(declare-fun e!1597027 () Option!5880)

(assert (=> b!2521962 (= e!1597027 None!5879)))

(declare-fun b!2521963 () Bool)

(assert (=> b!2521963 (= e!1597028 e!1597027)))

(declare-fun c!402318 () Bool)

(assert (=> b!2521963 (= c!402318 ((_ is Nil!29474) tl!4068))))

(declare-fun b!2521964 () Bool)

(declare-fun lt!899781 () Unit!43243)

(declare-fun lt!899779 () Unit!43243)

(assert (=> b!2521964 (= lt!899781 lt!899779)))

(assert (=> b!2521964 (= (++!7230 (++!7230 Nil!29474 (Cons!29474 (h!34894 tl!4068) Nil!29474)) (t!211273 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!770 (List!29574 C!15176 List!29574 List!29574) Unit!43243)

(assert (=> b!2521964 (= lt!899779 (lemmaMoveElementToOtherListKeepsConcatEq!770 Nil!29474 (h!34894 tl!4068) (t!211273 tl!4068) tl!4068))))

(assert (=> b!2521964 (= e!1597027 (findConcatSeparation!902 lt!899746 (regTwo!15530 r!27340) (++!7230 Nil!29474 (Cons!29474 (h!34894 tl!4068) Nil!29474)) (t!211273 tl!4068) tl!4068))))

(declare-fun b!2521965 () Bool)

(declare-fun res!1065467 () Bool)

(assert (=> b!2521965 (=> (not res!1065467) (not e!1597025))))

(assert (=> b!2521965 (= res!1065467 (matchR!3496 lt!899746 (_1!17302 (get!9213 lt!899780))))))

(declare-fun b!2521966 () Bool)

(assert (=> b!2521966 (= e!1597026 (not (isDefined!4702 lt!899780)))))

(declare-fun b!2521967 () Bool)

(assert (=> b!2521967 (= e!1597029 (matchR!3496 (regTwo!15530 r!27340) tl!4068))))

(declare-fun b!2521968 () Bool)

(assert (=> b!2521968 (= e!1597025 (= (++!7230 (_1!17302 (get!9213 lt!899780)) (_2!17302 (get!9213 lt!899780))) tl!4068))))

(declare-fun b!2521969 () Bool)

(declare-fun res!1065465 () Bool)

(assert (=> b!2521969 (=> (not res!1065465) (not e!1597025))))

(assert (=> b!2521969 (= res!1065465 (matchR!3496 (regTwo!15530 r!27340) (_2!17302 (get!9213 lt!899780))))))

(assert (= (and d!718260 res!1065468) b!2521967))

(assert (= (and d!718260 c!402317) b!2521961))

(assert (= (and d!718260 (not c!402317)) b!2521963))

(assert (= (and b!2521963 c!402318) b!2521962))

(assert (= (and b!2521963 (not c!402318)) b!2521964))

(assert (= (and d!718260 res!1065466) b!2521965))

(assert (= (and b!2521965 res!1065467) b!2521969))

(assert (= (and b!2521969 res!1065465) b!2521968))

(assert (= (and d!718260 (not res!1065469)) b!2521966))

(declare-fun m!2876433 () Bool)

(assert (=> b!2521966 m!2876433))

(declare-fun m!2876435 () Bool)

(assert (=> b!2521964 m!2876435))

(assert (=> b!2521964 m!2876435))

(declare-fun m!2876437 () Bool)

(assert (=> b!2521964 m!2876437))

(declare-fun m!2876439 () Bool)

(assert (=> b!2521964 m!2876439))

(assert (=> b!2521964 m!2876435))

(declare-fun m!2876441 () Bool)

(assert (=> b!2521964 m!2876441))

(assert (=> d!718260 m!2876433))

(declare-fun m!2876443 () Bool)

(assert (=> d!718260 m!2876443))

(assert (=> d!718260 m!2876391))

(declare-fun m!2876445 () Bool)

(assert (=> b!2521969 m!2876445))

(declare-fun m!2876447 () Bool)

(assert (=> b!2521969 m!2876447))

(assert (=> b!2521968 m!2876445))

(declare-fun m!2876449 () Bool)

(assert (=> b!2521968 m!2876449))

(declare-fun m!2876451 () Bool)

(assert (=> b!2521967 m!2876451))

(assert (=> b!2521965 m!2876445))

(declare-fun m!2876453 () Bool)

(assert (=> b!2521965 m!2876453))

(assert (=> b!2521785 d!718260))

(declare-fun b!2522058 () Bool)

(declare-fun res!1065504 () Bool)

(declare-fun e!1597080 () Bool)

(assert (=> b!2522058 (=> res!1065504 e!1597080)))

(assert (=> b!2522058 (= res!1065504 (not ((_ is ElementMatch!7509) lt!899748)))))

(declare-fun e!1597074 () Bool)

(assert (=> b!2522058 (= e!1597074 e!1597080)))

(declare-fun d!718270 () Bool)

(declare-fun e!1597075 () Bool)

(assert (=> d!718270 e!1597075))

(declare-fun c!402351 () Bool)

(assert (=> d!718270 (= c!402351 ((_ is EmptyExpr!7509) lt!899748))))

(declare-fun lt!899794 () Bool)

(declare-fun e!1597077 () Bool)

(assert (=> d!718270 (= lt!899794 e!1597077)))

(declare-fun c!402349 () Bool)

(declare-fun isEmpty!16941 (List!29574) Bool)

(assert (=> d!718270 (= c!402349 (isEmpty!16941 tl!4068))))

(assert (=> d!718270 (validRegex!3135 lt!899748)))

(assert (=> d!718270 (= (matchR!3496 lt!899748 tl!4068) lt!899794)))

(declare-fun b!2522059 () Bool)

(assert (=> b!2522059 (= e!1597077 (nullable!2426 lt!899748))))

(declare-fun b!2522060 () Bool)

(declare-fun call!157283 () Bool)

(assert (=> b!2522060 (= e!1597075 (= lt!899794 call!157283))))

(declare-fun b!2522061 () Bool)

(declare-fun res!1065499 () Bool)

(declare-fun e!1597076 () Bool)

(assert (=> b!2522061 (=> (not res!1065499) (not e!1597076))))

(declare-fun tail!4035 (List!29574) List!29574)

(assert (=> b!2522061 (= res!1065499 (isEmpty!16941 (tail!4035 tl!4068)))))

(declare-fun b!2522062 () Bool)

(declare-fun res!1065498 () Bool)

(assert (=> b!2522062 (=> res!1065498 e!1597080)))

(assert (=> b!2522062 (= res!1065498 e!1597076)))

(declare-fun res!1065501 () Bool)

(assert (=> b!2522062 (=> (not res!1065501) (not e!1597076))))

(assert (=> b!2522062 (= res!1065501 lt!899794)))

(declare-fun bm!157278 () Bool)

(assert (=> bm!157278 (= call!157283 (isEmpty!16941 tl!4068))))

(declare-fun b!2522063 () Bool)

(declare-fun e!1597078 () Bool)

(declare-fun head!5758 (List!29574) C!15176)

(assert (=> b!2522063 (= e!1597078 (not (= (head!5758 tl!4068) (c!402275 lt!899748))))))

(declare-fun b!2522064 () Bool)

(declare-fun e!1597079 () Bool)

(assert (=> b!2522064 (= e!1597080 e!1597079)))

(declare-fun res!1065503 () Bool)

(assert (=> b!2522064 (=> (not res!1065503) (not e!1597079))))

(assert (=> b!2522064 (= res!1065503 (not lt!899794))))

(declare-fun b!2522065 () Bool)

(declare-fun res!1065500 () Bool)

(assert (=> b!2522065 (=> res!1065500 e!1597078)))

(assert (=> b!2522065 (= res!1065500 (not (isEmpty!16941 (tail!4035 tl!4068))))))

(declare-fun b!2522066 () Bool)

(declare-fun res!1065502 () Bool)

(assert (=> b!2522066 (=> (not res!1065502) (not e!1597076))))

(assert (=> b!2522066 (= res!1065502 (not call!157283))))

(declare-fun b!2522067 () Bool)

(assert (=> b!2522067 (= e!1597076 (= (head!5758 tl!4068) (c!402275 lt!899748)))))

(declare-fun b!2522068 () Bool)

(assert (=> b!2522068 (= e!1597077 (matchR!3496 (derivativeStep!2078 lt!899748 (head!5758 tl!4068)) (tail!4035 tl!4068)))))

(declare-fun b!2522069 () Bool)

(assert (=> b!2522069 (= e!1597075 e!1597074)))

(declare-fun c!402350 () Bool)

(assert (=> b!2522069 (= c!402350 ((_ is EmptyLang!7509) lt!899748))))

(declare-fun b!2522070 () Bool)

(assert (=> b!2522070 (= e!1597074 (not lt!899794))))

(declare-fun b!2522071 () Bool)

(assert (=> b!2522071 (= e!1597079 e!1597078)))

(declare-fun res!1065505 () Bool)

(assert (=> b!2522071 (=> res!1065505 e!1597078)))

(assert (=> b!2522071 (= res!1065505 call!157283)))

(assert (= (and d!718270 c!402349) b!2522059))

(assert (= (and d!718270 (not c!402349)) b!2522068))

(assert (= (and d!718270 c!402351) b!2522060))

(assert (= (and d!718270 (not c!402351)) b!2522069))

(assert (= (and b!2522069 c!402350) b!2522070))

(assert (= (and b!2522069 (not c!402350)) b!2522058))

(assert (= (and b!2522058 (not res!1065504)) b!2522062))

(assert (= (and b!2522062 res!1065501) b!2522066))

(assert (= (and b!2522066 res!1065502) b!2522061))

(assert (= (and b!2522061 res!1065499) b!2522067))

(assert (= (and b!2522062 (not res!1065498)) b!2522064))

(assert (= (and b!2522064 res!1065503) b!2522071))

(assert (= (and b!2522071 (not res!1065505)) b!2522065))

(assert (= (and b!2522065 (not res!1065500)) b!2522063))

(assert (= (or b!2522060 b!2522066 b!2522071) bm!157278))

(declare-fun m!2876517 () Bool)

(assert (=> bm!157278 m!2876517))

(assert (=> d!718270 m!2876517))

(declare-fun m!2876519 () Bool)

(assert (=> d!718270 m!2876519))

(declare-fun m!2876521 () Bool)

(assert (=> b!2522061 m!2876521))

(assert (=> b!2522061 m!2876521))

(declare-fun m!2876523 () Bool)

(assert (=> b!2522061 m!2876523))

(declare-fun m!2876525 () Bool)

(assert (=> b!2522067 m!2876525))

(assert (=> b!2522063 m!2876525))

(assert (=> b!2522068 m!2876525))

(assert (=> b!2522068 m!2876525))

(declare-fun m!2876527 () Bool)

(assert (=> b!2522068 m!2876527))

(assert (=> b!2522068 m!2876521))

(assert (=> b!2522068 m!2876527))

(assert (=> b!2522068 m!2876521))

(declare-fun m!2876529 () Bool)

(assert (=> b!2522068 m!2876529))

(assert (=> b!2522065 m!2876521))

(assert (=> b!2522065 m!2876521))

(assert (=> b!2522065 m!2876523))

(declare-fun m!2876531 () Bool)

(assert (=> b!2522059 m!2876531))

(assert (=> b!2521789 d!718270))

(declare-fun b!2522076 () Bool)

(declare-fun res!1065514 () Bool)

(declare-fun e!1597089 () Bool)

(assert (=> b!2522076 (=> res!1065514 e!1597089)))

(assert (=> b!2522076 (= res!1065514 (not ((_ is ElementMatch!7509) lt!899747)))))

(declare-fun e!1597083 () Bool)

(assert (=> b!2522076 (= e!1597083 e!1597089)))

(declare-fun d!718288 () Bool)

(declare-fun e!1597084 () Bool)

(assert (=> d!718288 e!1597084))

(declare-fun c!402355 () Bool)

(assert (=> d!718288 (= c!402355 ((_ is EmptyExpr!7509) lt!899747))))

(declare-fun lt!899796 () Bool)

(declare-fun e!1597086 () Bool)

(assert (=> d!718288 (= lt!899796 e!1597086)))

(declare-fun c!402353 () Bool)

(assert (=> d!718288 (= c!402353 (isEmpty!16941 tl!4068))))

(assert (=> d!718288 (validRegex!3135 lt!899747)))

(assert (=> d!718288 (= (matchR!3496 lt!899747 tl!4068) lt!899796)))

(declare-fun b!2522077 () Bool)

(assert (=> b!2522077 (= e!1597086 (nullable!2426 lt!899747))))

(declare-fun b!2522078 () Bool)

(declare-fun call!157284 () Bool)

(assert (=> b!2522078 (= e!1597084 (= lt!899796 call!157284))))

(declare-fun b!2522079 () Bool)

(declare-fun res!1065509 () Bool)

(declare-fun e!1597085 () Bool)

(assert (=> b!2522079 (=> (not res!1065509) (not e!1597085))))

(assert (=> b!2522079 (= res!1065509 (isEmpty!16941 (tail!4035 tl!4068)))))

(declare-fun b!2522080 () Bool)

(declare-fun res!1065508 () Bool)

(assert (=> b!2522080 (=> res!1065508 e!1597089)))

(assert (=> b!2522080 (= res!1065508 e!1597085)))

(declare-fun res!1065511 () Bool)

(assert (=> b!2522080 (=> (not res!1065511) (not e!1597085))))

(assert (=> b!2522080 (= res!1065511 lt!899796)))

(declare-fun bm!157279 () Bool)

(assert (=> bm!157279 (= call!157284 (isEmpty!16941 tl!4068))))

(declare-fun b!2522081 () Bool)

(declare-fun e!1597087 () Bool)

(assert (=> b!2522081 (= e!1597087 (not (= (head!5758 tl!4068) (c!402275 lt!899747))))))

(declare-fun b!2522082 () Bool)

(declare-fun e!1597088 () Bool)

(assert (=> b!2522082 (= e!1597089 e!1597088)))

(declare-fun res!1065513 () Bool)

(assert (=> b!2522082 (=> (not res!1065513) (not e!1597088))))

(assert (=> b!2522082 (= res!1065513 (not lt!899796))))

(declare-fun b!2522083 () Bool)

(declare-fun res!1065510 () Bool)

(assert (=> b!2522083 (=> res!1065510 e!1597087)))

(assert (=> b!2522083 (= res!1065510 (not (isEmpty!16941 (tail!4035 tl!4068))))))

(declare-fun b!2522084 () Bool)

(declare-fun res!1065512 () Bool)

(assert (=> b!2522084 (=> (not res!1065512) (not e!1597085))))

(assert (=> b!2522084 (= res!1065512 (not call!157284))))

(declare-fun b!2522085 () Bool)

(assert (=> b!2522085 (= e!1597085 (= (head!5758 tl!4068) (c!402275 lt!899747)))))

(declare-fun b!2522086 () Bool)

(assert (=> b!2522086 (= e!1597086 (matchR!3496 (derivativeStep!2078 lt!899747 (head!5758 tl!4068)) (tail!4035 tl!4068)))))

(declare-fun b!2522087 () Bool)

(assert (=> b!2522087 (= e!1597084 e!1597083)))

(declare-fun c!402354 () Bool)

(assert (=> b!2522087 (= c!402354 ((_ is EmptyLang!7509) lt!899747))))

(declare-fun b!2522088 () Bool)

(assert (=> b!2522088 (= e!1597083 (not lt!899796))))

(declare-fun b!2522089 () Bool)

(assert (=> b!2522089 (= e!1597088 e!1597087)))

(declare-fun res!1065515 () Bool)

(assert (=> b!2522089 (=> res!1065515 e!1597087)))

(assert (=> b!2522089 (= res!1065515 call!157284)))

(assert (= (and d!718288 c!402353) b!2522077))

(assert (= (and d!718288 (not c!402353)) b!2522086))

(assert (= (and d!718288 c!402355) b!2522078))

(assert (= (and d!718288 (not c!402355)) b!2522087))

(assert (= (and b!2522087 c!402354) b!2522088))

(assert (= (and b!2522087 (not c!402354)) b!2522076))

(assert (= (and b!2522076 (not res!1065514)) b!2522080))

(assert (= (and b!2522080 res!1065511) b!2522084))

(assert (= (and b!2522084 res!1065512) b!2522079))

(assert (= (and b!2522079 res!1065509) b!2522085))

(assert (= (and b!2522080 (not res!1065508)) b!2522082))

(assert (= (and b!2522082 res!1065513) b!2522089))

(assert (= (and b!2522089 (not res!1065515)) b!2522083))

(assert (= (and b!2522083 (not res!1065510)) b!2522081))

(assert (= (or b!2522078 b!2522084 b!2522089) bm!157279))

(assert (=> bm!157279 m!2876517))

(assert (=> d!718288 m!2876517))

(declare-fun m!2876533 () Bool)

(assert (=> d!718288 m!2876533))

(assert (=> b!2522079 m!2876521))

(assert (=> b!2522079 m!2876521))

(assert (=> b!2522079 m!2876523))

(assert (=> b!2522085 m!2876525))

(assert (=> b!2522081 m!2876525))

(assert (=> b!2522086 m!2876525))

(assert (=> b!2522086 m!2876525))

(declare-fun m!2876535 () Bool)

(assert (=> b!2522086 m!2876535))

(assert (=> b!2522086 m!2876521))

(assert (=> b!2522086 m!2876535))

(assert (=> b!2522086 m!2876521))

(declare-fun m!2876537 () Bool)

(assert (=> b!2522086 m!2876537))

(assert (=> b!2522083 m!2876521))

(assert (=> b!2522083 m!2876521))

(assert (=> b!2522083 m!2876523))

(declare-fun m!2876539 () Bool)

(assert (=> b!2522077 m!2876539))

(assert (=> b!2521793 d!718288))

(declare-fun b!2522090 () Bool)

(declare-fun res!1065522 () Bool)

(declare-fun e!1597096 () Bool)

(assert (=> b!2522090 (=> res!1065522 e!1597096)))

(assert (=> b!2522090 (= res!1065522 (not ((_ is ElementMatch!7509) (derivative!204 lt!899747 tl!4068))))))

(declare-fun e!1597090 () Bool)

(assert (=> b!2522090 (= e!1597090 e!1597096)))

(declare-fun d!718290 () Bool)

(declare-fun e!1597091 () Bool)

(assert (=> d!718290 e!1597091))

(declare-fun c!402358 () Bool)

(assert (=> d!718290 (= c!402358 ((_ is EmptyExpr!7509) (derivative!204 lt!899747 tl!4068)))))

(declare-fun lt!899797 () Bool)

(declare-fun e!1597093 () Bool)

(assert (=> d!718290 (= lt!899797 e!1597093)))

(declare-fun c!402356 () Bool)

(assert (=> d!718290 (= c!402356 (isEmpty!16941 Nil!29474))))

(assert (=> d!718290 (validRegex!3135 (derivative!204 lt!899747 tl!4068))))

(assert (=> d!718290 (= (matchR!3496 (derivative!204 lt!899747 tl!4068) Nil!29474) lt!899797)))

(declare-fun b!2522091 () Bool)

(assert (=> b!2522091 (= e!1597093 (nullable!2426 (derivative!204 lt!899747 tl!4068)))))

(declare-fun b!2522092 () Bool)

(declare-fun call!157285 () Bool)

(assert (=> b!2522092 (= e!1597091 (= lt!899797 call!157285))))

(declare-fun b!2522093 () Bool)

(declare-fun res!1065517 () Bool)

(declare-fun e!1597092 () Bool)

(assert (=> b!2522093 (=> (not res!1065517) (not e!1597092))))

(assert (=> b!2522093 (= res!1065517 (isEmpty!16941 (tail!4035 Nil!29474)))))

(declare-fun b!2522094 () Bool)

(declare-fun res!1065516 () Bool)

(assert (=> b!2522094 (=> res!1065516 e!1597096)))

(assert (=> b!2522094 (= res!1065516 e!1597092)))

(declare-fun res!1065519 () Bool)

(assert (=> b!2522094 (=> (not res!1065519) (not e!1597092))))

(assert (=> b!2522094 (= res!1065519 lt!899797)))

(declare-fun bm!157280 () Bool)

(assert (=> bm!157280 (= call!157285 (isEmpty!16941 Nil!29474))))

(declare-fun b!2522095 () Bool)

(declare-fun e!1597094 () Bool)

(assert (=> b!2522095 (= e!1597094 (not (= (head!5758 Nil!29474) (c!402275 (derivative!204 lt!899747 tl!4068)))))))

(declare-fun b!2522096 () Bool)

(declare-fun e!1597095 () Bool)

(assert (=> b!2522096 (= e!1597096 e!1597095)))

(declare-fun res!1065521 () Bool)

(assert (=> b!2522096 (=> (not res!1065521) (not e!1597095))))

(assert (=> b!2522096 (= res!1065521 (not lt!899797))))

(declare-fun b!2522097 () Bool)

(declare-fun res!1065518 () Bool)

(assert (=> b!2522097 (=> res!1065518 e!1597094)))

(assert (=> b!2522097 (= res!1065518 (not (isEmpty!16941 (tail!4035 Nil!29474))))))

(declare-fun b!2522098 () Bool)

(declare-fun res!1065520 () Bool)

(assert (=> b!2522098 (=> (not res!1065520) (not e!1597092))))

(assert (=> b!2522098 (= res!1065520 (not call!157285))))

(declare-fun b!2522099 () Bool)

(assert (=> b!2522099 (= e!1597092 (= (head!5758 Nil!29474) (c!402275 (derivative!204 lt!899747 tl!4068))))))

(declare-fun b!2522100 () Bool)

(assert (=> b!2522100 (= e!1597093 (matchR!3496 (derivativeStep!2078 (derivative!204 lt!899747 tl!4068) (head!5758 Nil!29474)) (tail!4035 Nil!29474)))))

(declare-fun b!2522101 () Bool)

(assert (=> b!2522101 (= e!1597091 e!1597090)))

(declare-fun c!402357 () Bool)

(assert (=> b!2522101 (= c!402357 ((_ is EmptyLang!7509) (derivative!204 lt!899747 tl!4068)))))

(declare-fun b!2522102 () Bool)

(assert (=> b!2522102 (= e!1597090 (not lt!899797))))

(declare-fun b!2522103 () Bool)

(assert (=> b!2522103 (= e!1597095 e!1597094)))

(declare-fun res!1065523 () Bool)

(assert (=> b!2522103 (=> res!1065523 e!1597094)))

(assert (=> b!2522103 (= res!1065523 call!157285)))

(assert (= (and d!718290 c!402356) b!2522091))

(assert (= (and d!718290 (not c!402356)) b!2522100))

(assert (= (and d!718290 c!402358) b!2522092))

(assert (= (and d!718290 (not c!402358)) b!2522101))

(assert (= (and b!2522101 c!402357) b!2522102))

(assert (= (and b!2522101 (not c!402357)) b!2522090))

(assert (= (and b!2522090 (not res!1065522)) b!2522094))

(assert (= (and b!2522094 res!1065519) b!2522098))

(assert (= (and b!2522098 res!1065520) b!2522093))

(assert (= (and b!2522093 res!1065517) b!2522099))

(assert (= (and b!2522094 (not res!1065516)) b!2522096))

(assert (= (and b!2522096 res!1065521) b!2522103))

(assert (= (and b!2522103 (not res!1065523)) b!2522097))

(assert (= (and b!2522097 (not res!1065518)) b!2522095))

(assert (= (or b!2522092 b!2522098 b!2522103) bm!157280))

(declare-fun m!2876541 () Bool)

(assert (=> bm!157280 m!2876541))

(assert (=> d!718290 m!2876541))

(assert (=> d!718290 m!2876323))

(declare-fun m!2876543 () Bool)

(assert (=> d!718290 m!2876543))

(declare-fun m!2876545 () Bool)

(assert (=> b!2522093 m!2876545))

(assert (=> b!2522093 m!2876545))

(declare-fun m!2876547 () Bool)

(assert (=> b!2522093 m!2876547))

(declare-fun m!2876549 () Bool)

(assert (=> b!2522099 m!2876549))

(assert (=> b!2522095 m!2876549))

(assert (=> b!2522100 m!2876549))

(assert (=> b!2522100 m!2876323))

(assert (=> b!2522100 m!2876549))

(declare-fun m!2876551 () Bool)

(assert (=> b!2522100 m!2876551))

(assert (=> b!2522100 m!2876545))

(assert (=> b!2522100 m!2876551))

(assert (=> b!2522100 m!2876545))

(declare-fun m!2876553 () Bool)

(assert (=> b!2522100 m!2876553))

(assert (=> b!2522097 m!2876545))

(assert (=> b!2522097 m!2876545))

(assert (=> b!2522097 m!2876547))

(assert (=> b!2522091 m!2876323))

(declare-fun m!2876555 () Bool)

(assert (=> b!2522091 m!2876555))

(assert (=> b!2521793 d!718290))

(declare-fun d!718292 () Bool)

(declare-fun lt!899803 () Regex!7509)

(assert (=> d!718292 (validRegex!3135 lt!899803)))

(declare-fun e!1597099 () Regex!7509)

(assert (=> d!718292 (= lt!899803 e!1597099)))

(declare-fun c!402361 () Bool)

(assert (=> d!718292 (= c!402361 ((_ is Cons!29474) tl!4068))))

(assert (=> d!718292 (validRegex!3135 lt!899747)))

(assert (=> d!718292 (= (derivative!204 lt!899747 tl!4068) lt!899803)))

(declare-fun b!2522108 () Bool)

(assert (=> b!2522108 (= e!1597099 (derivative!204 (derivativeStep!2078 lt!899747 (h!34894 tl!4068)) (t!211273 tl!4068)))))

(declare-fun b!2522109 () Bool)

(assert (=> b!2522109 (= e!1597099 lt!899747)))

(assert (= (and d!718292 c!402361) b!2522108))

(assert (= (and d!718292 (not c!402361)) b!2522109))

(declare-fun m!2876563 () Bool)

(assert (=> d!718292 m!2876563))

(assert (=> d!718292 m!2876533))

(declare-fun m!2876565 () Bool)

(assert (=> b!2522108 m!2876565))

(assert (=> b!2522108 m!2876565))

(declare-fun m!2876567 () Bool)

(assert (=> b!2522108 m!2876567))

(assert (=> b!2521793 d!718292))

(declare-fun d!718296 () Bool)

(assert (=> d!718296 (= (matchR!3496 lt!899747 tl!4068) (matchR!3496 (derivative!204 lt!899747 tl!4068) Nil!29474))))

(declare-fun lt!899812 () Unit!43243)

(declare-fun choose!14947 (Regex!7509 List!29574) Unit!43243)

(assert (=> d!718296 (= lt!899812 (choose!14947 lt!899747 tl!4068))))

(assert (=> d!718296 (validRegex!3135 lt!899747)))

(assert (=> d!718296 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!142 lt!899747 tl!4068) lt!899812)))

(declare-fun bs!469012 () Bool)

(assert (= bs!469012 d!718296))

(assert (=> bs!469012 m!2876329))

(assert (=> bs!469012 m!2876533))

(assert (=> bs!469012 m!2876323))

(assert (=> bs!469012 m!2876331))

(assert (=> bs!469012 m!2876323))

(declare-fun m!2876569 () Bool)

(assert (=> bs!469012 m!2876569))

(assert (=> b!2521793 d!718296))

(declare-fun d!718298 () Bool)

(declare-fun e!1597136 () Bool)

(assert (=> d!718298 e!1597136))

(declare-fun res!1065551 () Bool)

(assert (=> d!718298 (=> res!1065551 e!1597136)))

(assert (=> d!718298 (= res!1065551 (matchR!3496 lt!899745 tl!4068))))

(declare-fun lt!899819 () Unit!43243)

(declare-fun choose!14948 (Regex!7509 Regex!7509 List!29574) Unit!43243)

(assert (=> d!718298 (= lt!899819 (choose!14948 lt!899745 lt!899748 tl!4068))))

(declare-fun e!1597137 () Bool)

(assert (=> d!718298 e!1597137))

(declare-fun res!1065552 () Bool)

(assert (=> d!718298 (=> (not res!1065552) (not e!1597137))))

(assert (=> d!718298 (= res!1065552 (validRegex!3135 lt!899745))))

(assert (=> d!718298 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!174 lt!899745 lt!899748 tl!4068) lt!899819)))

(declare-fun b!2522190 () Bool)

(assert (=> b!2522190 (= e!1597137 (validRegex!3135 lt!899748))))

(declare-fun b!2522191 () Bool)

(assert (=> b!2522191 (= e!1597136 (matchR!3496 lt!899748 tl!4068))))

(assert (= (and d!718298 res!1065552) b!2522190))

(assert (= (and d!718298 (not res!1065551)) b!2522191))

(assert (=> d!718298 m!2876327))

(declare-fun m!2876601 () Bool)

(assert (=> d!718298 m!2876601))

(declare-fun m!2876603 () Bool)

(assert (=> d!718298 m!2876603))

(assert (=> b!2522190 m!2876519))

(assert (=> b!2522191 m!2876335))

(assert (=> b!2521793 d!718298))

(declare-fun b!2522192 () Bool)

(declare-fun res!1065559 () Bool)

(declare-fun e!1597144 () Bool)

(assert (=> b!2522192 (=> res!1065559 e!1597144)))

(assert (=> b!2522192 (= res!1065559 (not ((_ is ElementMatch!7509) lt!899745)))))

(declare-fun e!1597138 () Bool)

(assert (=> b!2522192 (= e!1597138 e!1597144)))

(declare-fun d!718306 () Bool)

(declare-fun e!1597139 () Bool)

(assert (=> d!718306 e!1597139))

(declare-fun c!402373 () Bool)

(assert (=> d!718306 (= c!402373 ((_ is EmptyExpr!7509) lt!899745))))

(declare-fun lt!899820 () Bool)

(declare-fun e!1597141 () Bool)

(assert (=> d!718306 (= lt!899820 e!1597141)))

(declare-fun c!402371 () Bool)

(assert (=> d!718306 (= c!402371 (isEmpty!16941 tl!4068))))

(assert (=> d!718306 (validRegex!3135 lt!899745)))

(assert (=> d!718306 (= (matchR!3496 lt!899745 tl!4068) lt!899820)))

(declare-fun b!2522193 () Bool)

(assert (=> b!2522193 (= e!1597141 (nullable!2426 lt!899745))))

(declare-fun b!2522194 () Bool)

(declare-fun call!157287 () Bool)

(assert (=> b!2522194 (= e!1597139 (= lt!899820 call!157287))))

(declare-fun b!2522195 () Bool)

(declare-fun res!1065554 () Bool)

(declare-fun e!1597140 () Bool)

(assert (=> b!2522195 (=> (not res!1065554) (not e!1597140))))

(assert (=> b!2522195 (= res!1065554 (isEmpty!16941 (tail!4035 tl!4068)))))

(declare-fun b!2522196 () Bool)

(declare-fun res!1065553 () Bool)

(assert (=> b!2522196 (=> res!1065553 e!1597144)))

(assert (=> b!2522196 (= res!1065553 e!1597140)))

(declare-fun res!1065556 () Bool)

(assert (=> b!2522196 (=> (not res!1065556) (not e!1597140))))

(assert (=> b!2522196 (= res!1065556 lt!899820)))

(declare-fun bm!157282 () Bool)

(assert (=> bm!157282 (= call!157287 (isEmpty!16941 tl!4068))))

(declare-fun b!2522197 () Bool)

(declare-fun e!1597142 () Bool)

(assert (=> b!2522197 (= e!1597142 (not (= (head!5758 tl!4068) (c!402275 lt!899745))))))

(declare-fun b!2522198 () Bool)

(declare-fun e!1597143 () Bool)

(assert (=> b!2522198 (= e!1597144 e!1597143)))

(declare-fun res!1065558 () Bool)

(assert (=> b!2522198 (=> (not res!1065558) (not e!1597143))))

(assert (=> b!2522198 (= res!1065558 (not lt!899820))))

(declare-fun b!2522199 () Bool)

(declare-fun res!1065555 () Bool)

(assert (=> b!2522199 (=> res!1065555 e!1597142)))

(assert (=> b!2522199 (= res!1065555 (not (isEmpty!16941 (tail!4035 tl!4068))))))

(declare-fun b!2522200 () Bool)

(declare-fun res!1065557 () Bool)

(assert (=> b!2522200 (=> (not res!1065557) (not e!1597140))))

(assert (=> b!2522200 (= res!1065557 (not call!157287))))

(declare-fun b!2522201 () Bool)

(assert (=> b!2522201 (= e!1597140 (= (head!5758 tl!4068) (c!402275 lt!899745)))))

(declare-fun b!2522202 () Bool)

(assert (=> b!2522202 (= e!1597141 (matchR!3496 (derivativeStep!2078 lt!899745 (head!5758 tl!4068)) (tail!4035 tl!4068)))))

(declare-fun b!2522203 () Bool)

(assert (=> b!2522203 (= e!1597139 e!1597138)))

(declare-fun c!402372 () Bool)

(assert (=> b!2522203 (= c!402372 ((_ is EmptyLang!7509) lt!899745))))

(declare-fun b!2522204 () Bool)

(assert (=> b!2522204 (= e!1597138 (not lt!899820))))

(declare-fun b!2522205 () Bool)

(assert (=> b!2522205 (= e!1597143 e!1597142)))

(declare-fun res!1065560 () Bool)

(assert (=> b!2522205 (=> res!1065560 e!1597142)))

(assert (=> b!2522205 (= res!1065560 call!157287)))

(assert (= (and d!718306 c!402371) b!2522193))

(assert (= (and d!718306 (not c!402371)) b!2522202))

(assert (= (and d!718306 c!402373) b!2522194))

(assert (= (and d!718306 (not c!402373)) b!2522203))

(assert (= (and b!2522203 c!402372) b!2522204))

(assert (= (and b!2522203 (not c!402372)) b!2522192))

(assert (= (and b!2522192 (not res!1065559)) b!2522196))

(assert (= (and b!2522196 res!1065556) b!2522200))

(assert (= (and b!2522200 res!1065557) b!2522195))

(assert (= (and b!2522195 res!1065554) b!2522201))

(assert (= (and b!2522196 (not res!1065553)) b!2522198))

(assert (= (and b!2522198 res!1065558) b!2522205))

(assert (= (and b!2522205 (not res!1065560)) b!2522199))

(assert (= (and b!2522199 (not res!1065555)) b!2522197))

(assert (= (or b!2522194 b!2522200 b!2522205) bm!157282))

(assert (=> bm!157282 m!2876517))

(assert (=> d!718306 m!2876517))

(assert (=> d!718306 m!2876603))

(assert (=> b!2522195 m!2876521))

(assert (=> b!2522195 m!2876521))

(assert (=> b!2522195 m!2876523))

(assert (=> b!2522201 m!2876525))

(assert (=> b!2522197 m!2876525))

(assert (=> b!2522202 m!2876525))

(assert (=> b!2522202 m!2876525))

(declare-fun m!2876605 () Bool)

(assert (=> b!2522202 m!2876605))

(assert (=> b!2522202 m!2876521))

(assert (=> b!2522202 m!2876605))

(assert (=> b!2522202 m!2876521))

(declare-fun m!2876607 () Bool)

(assert (=> b!2522202 m!2876607))

(assert (=> b!2522199 m!2876521))

(assert (=> b!2522199 m!2876521))

(assert (=> b!2522199 m!2876523))

(declare-fun m!2876609 () Bool)

(assert (=> b!2522193 m!2876609))

(assert (=> b!2521793 d!718306))

(declare-fun b!2522226 () Bool)

(declare-fun e!1597155 () Regex!7509)

(declare-fun call!157298 () Regex!7509)

(assert (=> b!2522226 (= e!1597155 (Union!7509 (Concat!12205 call!157298 (regTwo!15530 (regTwo!15530 r!27340))) EmptyLang!7509))))

(declare-fun b!2522227 () Bool)

(declare-fun e!1597157 () Regex!7509)

(declare-fun e!1597156 () Regex!7509)

(assert (=> b!2522227 (= e!1597157 e!1597156)))

(declare-fun c!402386 () Bool)

(assert (=> b!2522227 (= c!402386 ((_ is ElementMatch!7509) (regTwo!15530 r!27340)))))

(declare-fun b!2522228 () Bool)

(assert (=> b!2522228 (= e!1597156 (ite (= c!14016 (c!402275 (regTwo!15530 r!27340))) EmptyExpr!7509 EmptyLang!7509))))

(declare-fun call!157299 () Regex!7509)

(declare-fun b!2522229 () Bool)

(assert (=> b!2522229 (= e!1597155 (Union!7509 (Concat!12205 call!157298 (regTwo!15530 (regTwo!15530 r!27340))) call!157299))))

(declare-fun b!2522230 () Bool)

(declare-fun e!1597159 () Regex!7509)

(declare-fun call!157296 () Regex!7509)

(assert (=> b!2522230 (= e!1597159 (Union!7509 call!157299 call!157296))))

(declare-fun c!402388 () Bool)

(declare-fun c!402384 () Bool)

(declare-fun bm!157291 () Bool)

(assert (=> bm!157291 (= call!157296 (derivativeStep!2078 (ite c!402384 (regTwo!15531 (regTwo!15530 r!27340)) (ite c!402388 (reg!7838 (regTwo!15530 r!27340)) (regOne!15530 (regTwo!15530 r!27340)))) c!14016))))

(declare-fun b!2522231 () Bool)

(assert (=> b!2522231 (= c!402384 ((_ is Union!7509) (regTwo!15530 r!27340)))))

(assert (=> b!2522231 (= e!1597156 e!1597159)))

(declare-fun d!718308 () Bool)

(declare-fun lt!899823 () Regex!7509)

(assert (=> d!718308 (validRegex!3135 lt!899823)))

(assert (=> d!718308 (= lt!899823 e!1597157)))

(declare-fun c!402385 () Bool)

(assert (=> d!718308 (= c!402385 (or ((_ is EmptyExpr!7509) (regTwo!15530 r!27340)) ((_ is EmptyLang!7509) (regTwo!15530 r!27340))))))

(assert (=> d!718308 (validRegex!3135 (regTwo!15530 r!27340))))

(assert (=> d!718308 (= (derivativeStep!2078 (regTwo!15530 r!27340) c!14016) lt!899823)))

(declare-fun b!2522232 () Bool)

(declare-fun e!1597158 () Regex!7509)

(assert (=> b!2522232 (= e!1597159 e!1597158)))

(assert (=> b!2522232 (= c!402388 ((_ is Star!7509) (regTwo!15530 r!27340)))))

(declare-fun b!2522233 () Bool)

(assert (=> b!2522233 (= e!1597157 EmptyLang!7509)))

(declare-fun bm!157292 () Bool)

(declare-fun call!157297 () Regex!7509)

(assert (=> bm!157292 (= call!157297 call!157296)))

(declare-fun b!2522234 () Bool)

(assert (=> b!2522234 (= e!1597158 (Concat!12205 call!157297 (regTwo!15530 r!27340)))))

(declare-fun bm!157293 () Bool)

(assert (=> bm!157293 (= call!157299 (derivativeStep!2078 (ite c!402384 (regOne!15531 (regTwo!15530 r!27340)) (regTwo!15530 (regTwo!15530 r!27340))) c!14016))))

(declare-fun b!2522235 () Bool)

(declare-fun c!402387 () Bool)

(assert (=> b!2522235 (= c!402387 (nullable!2426 (regOne!15530 (regTwo!15530 r!27340))))))

(assert (=> b!2522235 (= e!1597158 e!1597155)))

(declare-fun bm!157294 () Bool)

(assert (=> bm!157294 (= call!157298 call!157297)))

(assert (= (and d!718308 c!402385) b!2522233))

(assert (= (and d!718308 (not c!402385)) b!2522227))

(assert (= (and b!2522227 c!402386) b!2522228))

(assert (= (and b!2522227 (not c!402386)) b!2522231))

(assert (= (and b!2522231 c!402384) b!2522230))

(assert (= (and b!2522231 (not c!402384)) b!2522232))

(assert (= (and b!2522232 c!402388) b!2522234))

(assert (= (and b!2522232 (not c!402388)) b!2522235))

(assert (= (and b!2522235 c!402387) b!2522229))

(assert (= (and b!2522235 (not c!402387)) b!2522226))

(assert (= (or b!2522229 b!2522226) bm!157294))

(assert (= (or b!2522234 bm!157294) bm!157292))

(assert (= (or b!2522230 bm!157292) bm!157291))

(assert (= (or b!2522230 b!2522229) bm!157293))

(declare-fun m!2876611 () Bool)

(assert (=> bm!157291 m!2876611))

(declare-fun m!2876613 () Bool)

(assert (=> d!718308 m!2876613))

(declare-fun m!2876615 () Bool)

(assert (=> d!718308 m!2876615))

(declare-fun m!2876617 () Bool)

(assert (=> bm!157293 m!2876617))

(declare-fun m!2876619 () Bool)

(assert (=> b!2522235 m!2876619))

(assert (=> b!2521793 d!718308))

(declare-fun b!2522236 () Bool)

(declare-fun e!1597160 () Regex!7509)

(declare-fun call!157302 () Regex!7509)

(assert (=> b!2522236 (= e!1597160 (Union!7509 (Concat!12205 call!157302 (regTwo!15530 (regOne!15530 r!27340))) EmptyLang!7509))))

(declare-fun b!2522237 () Bool)

(declare-fun e!1597162 () Regex!7509)

(declare-fun e!1597161 () Regex!7509)

(assert (=> b!2522237 (= e!1597162 e!1597161)))

(declare-fun c!402391 () Bool)

(assert (=> b!2522237 (= c!402391 ((_ is ElementMatch!7509) (regOne!15530 r!27340)))))

(declare-fun b!2522238 () Bool)

(assert (=> b!2522238 (= e!1597161 (ite (= c!14016 (c!402275 (regOne!15530 r!27340))) EmptyExpr!7509 EmptyLang!7509))))

(declare-fun b!2522239 () Bool)

(declare-fun call!157303 () Regex!7509)

(assert (=> b!2522239 (= e!1597160 (Union!7509 (Concat!12205 call!157302 (regTwo!15530 (regOne!15530 r!27340))) call!157303))))

(declare-fun b!2522240 () Bool)

(declare-fun e!1597164 () Regex!7509)

(declare-fun call!157300 () Regex!7509)

(assert (=> b!2522240 (= e!1597164 (Union!7509 call!157303 call!157300))))

(declare-fun bm!157295 () Bool)

(declare-fun c!402389 () Bool)

(declare-fun c!402393 () Bool)

(assert (=> bm!157295 (= call!157300 (derivativeStep!2078 (ite c!402389 (regTwo!15531 (regOne!15530 r!27340)) (ite c!402393 (reg!7838 (regOne!15530 r!27340)) (regOne!15530 (regOne!15530 r!27340)))) c!14016))))

(declare-fun b!2522241 () Bool)

(assert (=> b!2522241 (= c!402389 ((_ is Union!7509) (regOne!15530 r!27340)))))

(assert (=> b!2522241 (= e!1597161 e!1597164)))

(declare-fun d!718310 () Bool)

(declare-fun lt!899824 () Regex!7509)

(assert (=> d!718310 (validRegex!3135 lt!899824)))

(assert (=> d!718310 (= lt!899824 e!1597162)))

(declare-fun c!402390 () Bool)

(assert (=> d!718310 (= c!402390 (or ((_ is EmptyExpr!7509) (regOne!15530 r!27340)) ((_ is EmptyLang!7509) (regOne!15530 r!27340))))))

(assert (=> d!718310 (validRegex!3135 (regOne!15530 r!27340))))

(assert (=> d!718310 (= (derivativeStep!2078 (regOne!15530 r!27340) c!14016) lt!899824)))

(declare-fun b!2522242 () Bool)

(declare-fun e!1597163 () Regex!7509)

(assert (=> b!2522242 (= e!1597164 e!1597163)))

(assert (=> b!2522242 (= c!402393 ((_ is Star!7509) (regOne!15530 r!27340)))))

(declare-fun b!2522243 () Bool)

(assert (=> b!2522243 (= e!1597162 EmptyLang!7509)))

(declare-fun bm!157296 () Bool)

(declare-fun call!157301 () Regex!7509)

(assert (=> bm!157296 (= call!157301 call!157300)))

(declare-fun b!2522244 () Bool)

(assert (=> b!2522244 (= e!1597163 (Concat!12205 call!157301 (regOne!15530 r!27340)))))

(declare-fun bm!157297 () Bool)

(assert (=> bm!157297 (= call!157303 (derivativeStep!2078 (ite c!402389 (regOne!15531 (regOne!15530 r!27340)) (regTwo!15530 (regOne!15530 r!27340))) c!14016))))

(declare-fun b!2522245 () Bool)

(declare-fun c!402392 () Bool)

(assert (=> b!2522245 (= c!402392 (nullable!2426 (regOne!15530 (regOne!15530 r!27340))))))

(assert (=> b!2522245 (= e!1597163 e!1597160)))

(declare-fun bm!157298 () Bool)

(assert (=> bm!157298 (= call!157302 call!157301)))

(assert (= (and d!718310 c!402390) b!2522243))

(assert (= (and d!718310 (not c!402390)) b!2522237))

(assert (= (and b!2522237 c!402391) b!2522238))

(assert (= (and b!2522237 (not c!402391)) b!2522241))

(assert (= (and b!2522241 c!402389) b!2522240))

(assert (= (and b!2522241 (not c!402389)) b!2522242))

(assert (= (and b!2522242 c!402393) b!2522244))

(assert (= (and b!2522242 (not c!402393)) b!2522245))

(assert (= (and b!2522245 c!402392) b!2522239))

(assert (= (and b!2522245 (not c!402392)) b!2522236))

(assert (= (or b!2522239 b!2522236) bm!157298))

(assert (= (or b!2522244 bm!157298) bm!157296))

(assert (= (or b!2522240 bm!157296) bm!157295))

(assert (= (or b!2522240 b!2522239) bm!157297))

(declare-fun m!2876621 () Bool)

(assert (=> bm!157295 m!2876621))

(declare-fun m!2876623 () Bool)

(assert (=> d!718310 m!2876623))

(declare-fun m!2876625 () Bool)

(assert (=> d!718310 m!2876625))

(declare-fun m!2876627 () Bool)

(assert (=> bm!157297 m!2876627))

(declare-fun m!2876629 () Bool)

(assert (=> b!2522245 m!2876629))

(assert (=> b!2521793 d!718310))

(declare-fun d!718312 () Bool)

(declare-fun nullableFct!668 (Regex!7509) Bool)

(assert (=> d!718312 (= (nullable!2426 (derivative!204 (derivativeStep!2078 r!27340 c!14016) tl!4068)) (nullableFct!668 (derivative!204 (derivativeStep!2078 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469014 () Bool)

(assert (= bs!469014 d!718312))

(assert (=> bs!469014 m!2876339))

(declare-fun m!2876631 () Bool)

(assert (=> bs!469014 m!2876631))

(assert (=> b!2521786 d!718312))

(declare-fun d!718314 () Bool)

(declare-fun lt!899825 () Regex!7509)

(assert (=> d!718314 (validRegex!3135 lt!899825)))

(declare-fun e!1597165 () Regex!7509)

(assert (=> d!718314 (= lt!899825 e!1597165)))

(declare-fun c!402394 () Bool)

(assert (=> d!718314 (= c!402394 ((_ is Cons!29474) tl!4068))))

(assert (=> d!718314 (validRegex!3135 (derivativeStep!2078 r!27340 c!14016))))

(assert (=> d!718314 (= (derivative!204 (derivativeStep!2078 r!27340 c!14016) tl!4068) lt!899825)))

(declare-fun b!2522246 () Bool)

(assert (=> b!2522246 (= e!1597165 (derivative!204 (derivativeStep!2078 (derivativeStep!2078 r!27340 c!14016) (h!34894 tl!4068)) (t!211273 tl!4068)))))

(declare-fun b!2522247 () Bool)

(assert (=> b!2522247 (= e!1597165 (derivativeStep!2078 r!27340 c!14016))))

(assert (= (and d!718314 c!402394) b!2522246))

(assert (= (and d!718314 (not c!402394)) b!2522247))

(declare-fun m!2876633 () Bool)

(assert (=> d!718314 m!2876633))

(assert (=> d!718314 m!2876337))

(declare-fun m!2876635 () Bool)

(assert (=> d!718314 m!2876635))

(assert (=> b!2522246 m!2876337))

(declare-fun m!2876637 () Bool)

(assert (=> b!2522246 m!2876637))

(assert (=> b!2522246 m!2876637))

(declare-fun m!2876639 () Bool)

(assert (=> b!2522246 m!2876639))

(assert (=> b!2521786 d!718314))

(declare-fun b!2522248 () Bool)

(declare-fun e!1597166 () Regex!7509)

(declare-fun call!157306 () Regex!7509)

(assert (=> b!2522248 (= e!1597166 (Union!7509 (Concat!12205 call!157306 (regTwo!15530 r!27340)) EmptyLang!7509))))

(declare-fun b!2522249 () Bool)

(declare-fun e!1597168 () Regex!7509)

(declare-fun e!1597167 () Regex!7509)

(assert (=> b!2522249 (= e!1597168 e!1597167)))

(declare-fun c!402397 () Bool)

(assert (=> b!2522249 (= c!402397 ((_ is ElementMatch!7509) r!27340))))

(declare-fun b!2522250 () Bool)

(assert (=> b!2522250 (= e!1597167 (ite (= c!14016 (c!402275 r!27340)) EmptyExpr!7509 EmptyLang!7509))))

(declare-fun b!2522251 () Bool)

(declare-fun call!157307 () Regex!7509)

(assert (=> b!2522251 (= e!1597166 (Union!7509 (Concat!12205 call!157306 (regTwo!15530 r!27340)) call!157307))))

(declare-fun b!2522252 () Bool)

(declare-fun e!1597170 () Regex!7509)

(declare-fun call!157304 () Regex!7509)

(assert (=> b!2522252 (= e!1597170 (Union!7509 call!157307 call!157304))))

(declare-fun bm!157299 () Bool)

(declare-fun c!402399 () Bool)

(declare-fun c!402395 () Bool)

(assert (=> bm!157299 (= call!157304 (derivativeStep!2078 (ite c!402395 (regTwo!15531 r!27340) (ite c!402399 (reg!7838 r!27340) (regOne!15530 r!27340))) c!14016))))

(declare-fun b!2522253 () Bool)

(assert (=> b!2522253 (= c!402395 ((_ is Union!7509) r!27340))))

(assert (=> b!2522253 (= e!1597167 e!1597170)))

(declare-fun d!718316 () Bool)

(declare-fun lt!899826 () Regex!7509)

(assert (=> d!718316 (validRegex!3135 lt!899826)))

(assert (=> d!718316 (= lt!899826 e!1597168)))

(declare-fun c!402396 () Bool)

(assert (=> d!718316 (= c!402396 (or ((_ is EmptyExpr!7509) r!27340) ((_ is EmptyLang!7509) r!27340)))))

(assert (=> d!718316 (validRegex!3135 r!27340)))

(assert (=> d!718316 (= (derivativeStep!2078 r!27340 c!14016) lt!899826)))

(declare-fun b!2522254 () Bool)

(declare-fun e!1597169 () Regex!7509)

(assert (=> b!2522254 (= e!1597170 e!1597169)))

(assert (=> b!2522254 (= c!402399 ((_ is Star!7509) r!27340))))

(declare-fun b!2522255 () Bool)

(assert (=> b!2522255 (= e!1597168 EmptyLang!7509)))

(declare-fun bm!157300 () Bool)

(declare-fun call!157305 () Regex!7509)

(assert (=> bm!157300 (= call!157305 call!157304)))

(declare-fun b!2522256 () Bool)

(assert (=> b!2522256 (= e!1597169 (Concat!12205 call!157305 r!27340))))

(declare-fun bm!157301 () Bool)

(assert (=> bm!157301 (= call!157307 (derivativeStep!2078 (ite c!402395 (regOne!15531 r!27340) (regTwo!15530 r!27340)) c!14016))))

(declare-fun b!2522257 () Bool)

(declare-fun c!402398 () Bool)

(assert (=> b!2522257 (= c!402398 (nullable!2426 (regOne!15530 r!27340)))))

(assert (=> b!2522257 (= e!1597169 e!1597166)))

(declare-fun bm!157302 () Bool)

(assert (=> bm!157302 (= call!157306 call!157305)))

(assert (= (and d!718316 c!402396) b!2522255))

(assert (= (and d!718316 (not c!402396)) b!2522249))

(assert (= (and b!2522249 c!402397) b!2522250))

(assert (= (and b!2522249 (not c!402397)) b!2522253))

(assert (= (and b!2522253 c!402395) b!2522252))

(assert (= (and b!2522253 (not c!402395)) b!2522254))

(assert (= (and b!2522254 c!402399) b!2522256))

(assert (= (and b!2522254 (not c!402399)) b!2522257))

(assert (= (and b!2522257 c!402398) b!2522251))

(assert (= (and b!2522257 (not c!402398)) b!2522248))

(assert (= (or b!2522251 b!2522248) bm!157302))

(assert (= (or b!2522256 bm!157302) bm!157300))

(assert (= (or b!2522252 bm!157300) bm!157299))

(assert (= (or b!2522252 b!2522251) bm!157301))

(declare-fun m!2876641 () Bool)

(assert (=> bm!157299 m!2876641))

(declare-fun m!2876643 () Bool)

(assert (=> d!718316 m!2876643))

(assert (=> d!718316 m!2876355))

(declare-fun m!2876645 () Bool)

(assert (=> bm!157301 m!2876645))

(assert (=> b!2522257 m!2876353))

(assert (=> b!2521786 d!718316))

(declare-fun d!718318 () Bool)

(assert (=> d!718318 (= (nullable!2426 (regOne!15530 r!27340)) (nullableFct!668 (regOne!15530 r!27340)))))

(declare-fun bs!469015 () Bool)

(assert (= bs!469015 d!718318))

(declare-fun m!2876647 () Bool)

(assert (=> bs!469015 m!2876647))

(assert (=> b!2521792 d!718318))

(declare-fun b!2522270 () Bool)

(declare-fun e!1597173 () Bool)

(declare-fun tp!805894 () Bool)

(assert (=> b!2522270 (= e!1597173 tp!805894)))

(assert (=> b!2521790 (= tp!805842 e!1597173)))

(declare-fun b!2522268 () Bool)

(assert (=> b!2522268 (= e!1597173 tp_is_empty!12873)))

(declare-fun b!2522271 () Bool)

(declare-fun tp!805893 () Bool)

(declare-fun tp!805891 () Bool)

(assert (=> b!2522271 (= e!1597173 (and tp!805893 tp!805891))))

(declare-fun b!2522269 () Bool)

(declare-fun tp!805895 () Bool)

(declare-fun tp!805892 () Bool)

(assert (=> b!2522269 (= e!1597173 (and tp!805895 tp!805892))))

(assert (= (and b!2521790 ((_ is ElementMatch!7509) (reg!7838 r!27340))) b!2522268))

(assert (= (and b!2521790 ((_ is Concat!12205) (reg!7838 r!27340))) b!2522269))

(assert (= (and b!2521790 ((_ is Star!7509) (reg!7838 r!27340))) b!2522270))

(assert (= (and b!2521790 ((_ is Union!7509) (reg!7838 r!27340))) b!2522271))

(declare-fun b!2522274 () Bool)

(declare-fun e!1597174 () Bool)

(declare-fun tp!805899 () Bool)

(assert (=> b!2522274 (= e!1597174 tp!805899)))

(assert (=> b!2521794 (= tp!805841 e!1597174)))

(declare-fun b!2522272 () Bool)

(assert (=> b!2522272 (= e!1597174 tp_is_empty!12873)))

(declare-fun b!2522275 () Bool)

(declare-fun tp!805898 () Bool)

(declare-fun tp!805896 () Bool)

(assert (=> b!2522275 (= e!1597174 (and tp!805898 tp!805896))))

(declare-fun b!2522273 () Bool)

(declare-fun tp!805900 () Bool)

(declare-fun tp!805897 () Bool)

(assert (=> b!2522273 (= e!1597174 (and tp!805900 tp!805897))))

(assert (= (and b!2521794 ((_ is ElementMatch!7509) (regOne!15530 r!27340))) b!2522272))

(assert (= (and b!2521794 ((_ is Concat!12205) (regOne!15530 r!27340))) b!2522273))

(assert (= (and b!2521794 ((_ is Star!7509) (regOne!15530 r!27340))) b!2522274))

(assert (= (and b!2521794 ((_ is Union!7509) (regOne!15530 r!27340))) b!2522275))

(declare-fun b!2522278 () Bool)

(declare-fun e!1597175 () Bool)

(declare-fun tp!805904 () Bool)

(assert (=> b!2522278 (= e!1597175 tp!805904)))

(assert (=> b!2521794 (= tp!805839 e!1597175)))

(declare-fun b!2522276 () Bool)

(assert (=> b!2522276 (= e!1597175 tp_is_empty!12873)))

(declare-fun b!2522279 () Bool)

(declare-fun tp!805903 () Bool)

(declare-fun tp!805901 () Bool)

(assert (=> b!2522279 (= e!1597175 (and tp!805903 tp!805901))))

(declare-fun b!2522277 () Bool)

(declare-fun tp!805905 () Bool)

(declare-fun tp!805902 () Bool)

(assert (=> b!2522277 (= e!1597175 (and tp!805905 tp!805902))))

(assert (= (and b!2521794 ((_ is ElementMatch!7509) (regTwo!15530 r!27340))) b!2522276))

(assert (= (and b!2521794 ((_ is Concat!12205) (regTwo!15530 r!27340))) b!2522277))

(assert (= (and b!2521794 ((_ is Star!7509) (regTwo!15530 r!27340))) b!2522278))

(assert (= (and b!2521794 ((_ is Union!7509) (regTwo!15530 r!27340))) b!2522279))

(declare-fun b!2522284 () Bool)

(declare-fun e!1597178 () Bool)

(declare-fun tp!805908 () Bool)

(assert (=> b!2522284 (= e!1597178 (and tp_is_empty!12873 tp!805908))))

(assert (=> b!2521784 (= tp!805838 e!1597178)))

(assert (= (and b!2521784 ((_ is Cons!29474) (t!211273 tl!4068))) b!2522284))

(declare-fun b!2522287 () Bool)

(declare-fun e!1597179 () Bool)

(declare-fun tp!805912 () Bool)

(assert (=> b!2522287 (= e!1597179 tp!805912)))

(assert (=> b!2521787 (= tp!805837 e!1597179)))

(declare-fun b!2522285 () Bool)

(assert (=> b!2522285 (= e!1597179 tp_is_empty!12873)))

(declare-fun b!2522288 () Bool)

(declare-fun tp!805911 () Bool)

(declare-fun tp!805909 () Bool)

(assert (=> b!2522288 (= e!1597179 (and tp!805911 tp!805909))))

(declare-fun b!2522286 () Bool)

(declare-fun tp!805913 () Bool)

(declare-fun tp!805910 () Bool)

(assert (=> b!2522286 (= e!1597179 (and tp!805913 tp!805910))))

(assert (= (and b!2521787 ((_ is ElementMatch!7509) (regOne!15531 r!27340))) b!2522285))

(assert (= (and b!2521787 ((_ is Concat!12205) (regOne!15531 r!27340))) b!2522286))

(assert (= (and b!2521787 ((_ is Star!7509) (regOne!15531 r!27340))) b!2522287))

(assert (= (and b!2521787 ((_ is Union!7509) (regOne!15531 r!27340))) b!2522288))

(declare-fun b!2522291 () Bool)

(declare-fun e!1597180 () Bool)

(declare-fun tp!805917 () Bool)

(assert (=> b!2522291 (= e!1597180 tp!805917)))

(assert (=> b!2521787 (= tp!805840 e!1597180)))

(declare-fun b!2522289 () Bool)

(assert (=> b!2522289 (= e!1597180 tp_is_empty!12873)))

(declare-fun b!2522292 () Bool)

(declare-fun tp!805916 () Bool)

(declare-fun tp!805914 () Bool)

(assert (=> b!2522292 (= e!1597180 (and tp!805916 tp!805914))))

(declare-fun b!2522290 () Bool)

(declare-fun tp!805918 () Bool)

(declare-fun tp!805915 () Bool)

(assert (=> b!2522290 (= e!1597180 (and tp!805918 tp!805915))))

(assert (= (and b!2521787 ((_ is ElementMatch!7509) (regTwo!15531 r!27340))) b!2522289))

(assert (= (and b!2521787 ((_ is Concat!12205) (regTwo!15531 r!27340))) b!2522290))

(assert (= (and b!2521787 ((_ is Star!7509) (regTwo!15531 r!27340))) b!2522291))

(assert (= (and b!2521787 ((_ is Union!7509) (regTwo!15531 r!27340))) b!2522292))

(check-sat (not b!2522245) (not d!718314) (not b!2521835) (not b!2522257) (not b!2522086) (not b!2522063) (not d!718298) (not b!2522061) (not b!2521968) (not b!2522291) (not b!2522081) (not b!2522278) (not b!2522099) (not b!2522246) (not b!2522290) (not b!2522286) (not bm!157280) (not b!2522068) (not bm!157278) (not b!2522190) (not b!2522271) (not d!718306) (not b!2522235) (not bm!157297) (not b!2522085) (not b!2521966) (not b!2522199) (not b!2522202) (not b!2522287) (not b!2522275) (not bm!157247) (not b!2522201) (not d!718296) (not b!2522277) (not bm!157293) (not d!718252) (not b!2522091) (not d!718270) (not bm!157299) (not d!718310) (not b!2522100) (not d!718260) (not b!2522083) (not d!718312) (not b!2522284) (not d!718308) (not b!2522195) (not bm!157301) (not b!2522193) (not bm!157279) (not b!2522067) (not bm!157246) (not b!2521967) (not b!2521969) (not d!718256) (not b!2522077) (not bm!157291) (not b!2522095) (not d!718258) (not d!718288) (not d!718318) (not b!2522079) (not b!2521964) (not b!2522097) (not b!2522273) (not b!2522292) (not b!2521859) (not b!2522191) (not bm!157295) (not d!718316) (not b!2522065) (not d!718290) (not b!2522279) (not b!2521858) (not b!2522059) (not bm!157282) (not b!2522093) (not b!2522274) (not d!718292) (not b!2522108) (not b!2522269) (not b!2521965) tp_is_empty!12873 (not b!2522197) (not b!2522270) (not b!2522288))
(check-sat)
