; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80028 () Bool)

(assert start!80028)

(declare-fun b!885847 () Bool)

(assert (=> b!885847 true))

(assert (=> b!885847 true))

(declare-fun lambda!27362 () Int)

(declare-fun lambda!27361 () Int)

(assert (=> b!885847 (not (= lambda!27362 lambda!27361))))

(assert (=> b!885847 true))

(assert (=> b!885847 true))

(declare-fun b!885846 () Bool)

(declare-fun e!580933 () Bool)

(declare-fun tp!279326 () Bool)

(assert (=> b!885846 (= e!580933 tp!279326)))

(declare-fun b!885848 () Bool)

(declare-fun tp!279325 () Bool)

(declare-fun tp!279323 () Bool)

(assert (=> b!885848 (= e!580933 (and tp!279325 tp!279323))))

(declare-fun b!885849 () Bool)

(declare-fun e!580928 () Bool)

(declare-datatypes ((C!5130 0))(
  ( (C!5131 (val!2813 Int)) )
))
(declare-datatypes ((Regex!2280 0))(
  ( (ElementMatch!2280 (c!143229 C!5130)) (Concat!4113 (regOne!5072 Regex!2280) (regTwo!5072 Regex!2280)) (EmptyExpr!2280) (Star!2280 (reg!2609 Regex!2280)) (EmptyLang!2280) (Union!2280 (regOne!5073 Regex!2280) (regTwo!5073 Regex!2280)) )
))
(declare-fun lt!331493 () Regex!2280)

(declare-fun validRegex!749 (Regex!2280) Bool)

(assert (=> b!885849 (= e!580928 (validRegex!749 lt!331493))))

(declare-datatypes ((List!9510 0))(
  ( (Nil!9494) (Cons!9494 (h!14895 C!5130) (t!100556 List!9510)) )
))
(declare-datatypes ((tuple2!10646 0))(
  ( (tuple2!10647 (_1!6149 List!9510) (_2!6149 List!9510)) )
))
(declare-fun lt!331490 () tuple2!10646)

(declare-fun matchR!818 (Regex!2280 List!9510) Bool)

(assert (=> b!885849 (matchR!818 lt!331493 (_2!6149 lt!331490))))

(declare-fun r!15766 () Regex!2280)

(declare-fun removeUselessConcat!23 (Regex!2280) Regex!2280)

(assert (=> b!885849 (= lt!331493 (removeUselessConcat!23 (regTwo!5072 r!15766)))))

(declare-datatypes ((Unit!14139 0))(
  ( (Unit!14140) )
))
(declare-fun lt!331487 () Unit!14139)

(declare-fun lemmaRemoveUselessConcatSound!17 (Regex!2280 List!9510) Unit!14139)

(assert (=> b!885849 (= lt!331487 (lemmaRemoveUselessConcatSound!17 (regTwo!5072 r!15766) (_2!6149 lt!331490)))))

(assert (=> b!885849 (matchR!818 (removeUselessConcat!23 (regOne!5072 r!15766)) (_1!6149 lt!331490))))

(declare-fun lt!331492 () Unit!14139)

(assert (=> b!885849 (= lt!331492 (lemmaRemoveUselessConcatSound!17 (regOne!5072 r!15766) (_1!6149 lt!331490)))))

(declare-fun b!885850 () Bool)

(declare-fun e!580929 () Bool)

(declare-fun e!580932 () Bool)

(assert (=> b!885850 (= e!580929 (not e!580932))))

(declare-fun res!402901 () Bool)

(assert (=> b!885850 (=> res!402901 e!580932)))

(declare-fun lt!331486 () Bool)

(assert (=> b!885850 (= res!402901 (or (not lt!331486) (and (is-Concat!4113 r!15766) (is-EmptyExpr!2280 (regOne!5072 r!15766))) (and (is-Concat!4113 r!15766) (is-EmptyExpr!2280 (regTwo!5072 r!15766))) (not (is-Concat!4113 r!15766))))))

(declare-fun s!10566 () List!9510)

(declare-fun matchRSpec!81 (Regex!2280 List!9510) Bool)

(assert (=> b!885850 (= lt!331486 (matchRSpec!81 r!15766 s!10566))))

(assert (=> b!885850 (= lt!331486 (matchR!818 r!15766 s!10566))))

(declare-fun lt!331494 () Unit!14139)

(declare-fun mainMatchTheorem!81 (Regex!2280 List!9510) Unit!14139)

(assert (=> b!885850 (= lt!331494 (mainMatchTheorem!81 r!15766 s!10566))))

(declare-fun b!885851 () Bool)

(declare-fun e!580931 () Bool)

(declare-fun tp_is_empty!4203 () Bool)

(declare-fun tp!279322 () Bool)

(assert (=> b!885851 (= e!580931 (and tp_is_empty!4203 tp!279322))))

(declare-fun b!885852 () Bool)

(assert (=> b!885852 (= e!580933 tp_is_empty!4203)))

(declare-fun b!885853 () Bool)

(declare-fun res!402902 () Bool)

(assert (=> b!885853 (=> res!402902 e!580928)))

(assert (=> b!885853 (= res!402902 (not (matchR!818 (regTwo!5072 r!15766) (_2!6149 lt!331490))))))

(declare-fun b!885854 () Bool)

(declare-fun tp!279324 () Bool)

(declare-fun tp!279321 () Bool)

(assert (=> b!885854 (= e!580933 (and tp!279324 tp!279321))))

(declare-fun b!885855 () Bool)

(declare-fun e!580930 () Bool)

(assert (=> b!885855 (= e!580930 e!580928)))

(declare-fun res!402904 () Bool)

(assert (=> b!885855 (=> res!402904 e!580928)))

(assert (=> b!885855 (= res!402904 (not (matchR!818 (regOne!5072 r!15766) (_1!6149 lt!331490))))))

(declare-datatypes ((Option!1965 0))(
  ( (None!1964) (Some!1964 (v!19381 tuple2!10646)) )
))
(declare-fun lt!331491 () Option!1965)

(declare-fun get!2970 (Option!1965) tuple2!10646)

(assert (=> b!885855 (= lt!331490 (get!2970 lt!331491))))

(declare-fun res!402905 () Bool)

(assert (=> start!80028 (=> (not res!402905) (not e!580929))))

(assert (=> start!80028 (= res!402905 (validRegex!749 r!15766))))

(assert (=> start!80028 e!580929))

(assert (=> start!80028 e!580933))

(assert (=> start!80028 e!580931))

(assert (=> b!885847 (= e!580932 e!580930)))

(declare-fun res!402903 () Bool)

(assert (=> b!885847 (=> res!402903 e!580930)))

(declare-fun isEmpty!5701 (List!9510) Bool)

(assert (=> b!885847 (= res!402903 (isEmpty!5701 s!10566))))

(declare-fun Exists!75 (Int) Bool)

(assert (=> b!885847 (= (Exists!75 lambda!27361) (Exists!75 lambda!27362))))

(declare-fun lt!331488 () Unit!14139)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!65 (Regex!2280 Regex!2280 List!9510) Unit!14139)

(assert (=> b!885847 (= lt!331488 (lemmaExistCutMatchRandMatchRSpecEquivalent!65 (regOne!5072 r!15766) (regTwo!5072 r!15766) s!10566))))

(declare-fun isDefined!1607 (Option!1965) Bool)

(assert (=> b!885847 (= (isDefined!1607 lt!331491) (Exists!75 lambda!27361))))

(declare-fun findConcatSeparation!71 (Regex!2280 Regex!2280 List!9510 List!9510 List!9510) Option!1965)

(assert (=> b!885847 (= lt!331491 (findConcatSeparation!71 (regOne!5072 r!15766) (regTwo!5072 r!15766) Nil!9494 s!10566 s!10566))))

(declare-fun lt!331489 () Unit!14139)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!71 (Regex!2280 Regex!2280 List!9510) Unit!14139)

(assert (=> b!885847 (= lt!331489 (lemmaFindConcatSeparationEquivalentToExists!71 (regOne!5072 r!15766) (regTwo!5072 r!15766) s!10566))))

(assert (= (and start!80028 res!402905) b!885850))

(assert (= (and b!885850 (not res!402901)) b!885847))

(assert (= (and b!885847 (not res!402903)) b!885855))

(assert (= (and b!885855 (not res!402904)) b!885853))

(assert (= (and b!885853 (not res!402902)) b!885849))

(assert (= (and start!80028 (is-ElementMatch!2280 r!15766)) b!885852))

(assert (= (and start!80028 (is-Concat!4113 r!15766)) b!885854))

(assert (= (and start!80028 (is-Star!2280 r!15766)) b!885846))

(assert (= (and start!80028 (is-Union!2280 r!15766)) b!885848))

(assert (= (and start!80028 (is-Cons!9494 s!10566)) b!885851))

(declare-fun m!1131629 () Bool)

(assert (=> b!885850 m!1131629))

(declare-fun m!1131631 () Bool)

(assert (=> b!885850 m!1131631))

(declare-fun m!1131633 () Bool)

(assert (=> b!885850 m!1131633))

(declare-fun m!1131635 () Bool)

(assert (=> b!885849 m!1131635))

(declare-fun m!1131637 () Bool)

(assert (=> b!885849 m!1131637))

(declare-fun m!1131639 () Bool)

(assert (=> b!885849 m!1131639))

(declare-fun m!1131641 () Bool)

(assert (=> b!885849 m!1131641))

(declare-fun m!1131643 () Bool)

(assert (=> b!885849 m!1131643))

(declare-fun m!1131645 () Bool)

(assert (=> b!885849 m!1131645))

(declare-fun m!1131647 () Bool)

(assert (=> b!885849 m!1131647))

(assert (=> b!885849 m!1131639))

(declare-fun m!1131649 () Bool)

(assert (=> b!885853 m!1131649))

(declare-fun m!1131651 () Bool)

(assert (=> start!80028 m!1131651))

(declare-fun m!1131653 () Bool)

(assert (=> b!885847 m!1131653))

(declare-fun m!1131655 () Bool)

(assert (=> b!885847 m!1131655))

(declare-fun m!1131657 () Bool)

(assert (=> b!885847 m!1131657))

(declare-fun m!1131659 () Bool)

(assert (=> b!885847 m!1131659))

(assert (=> b!885847 m!1131659))

(declare-fun m!1131661 () Bool)

(assert (=> b!885847 m!1131661))

(declare-fun m!1131663 () Bool)

(assert (=> b!885847 m!1131663))

(declare-fun m!1131665 () Bool)

(assert (=> b!885847 m!1131665))

(declare-fun m!1131667 () Bool)

(assert (=> b!885855 m!1131667))

(declare-fun m!1131669 () Bool)

(assert (=> b!885855 m!1131669))

(push 1)

(assert (not b!885854))

(assert (not b!885850))

(assert (not b!885848))

(assert (not b!885853))

(assert (not b!885847))

(assert (not b!885846))

(assert (not b!885855))

(assert (not start!80028))

(assert (not b!885851))

(assert (not b!885849))

(assert tp_is_empty!4203)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!885934 () Bool)

(declare-fun e!580972 () Bool)

(declare-fun derivativeStep!398 (Regex!2280 C!5130) Regex!2280)

(declare-fun head!1551 (List!9510) C!5130)

(declare-fun tail!1113 (List!9510) List!9510)

(assert (=> b!885934 (= e!580972 (matchR!818 (derivativeStep!398 (regTwo!5072 r!15766) (head!1551 (_2!6149 lt!331490))) (tail!1113 (_2!6149 lt!331490))))))

(declare-fun b!885935 () Bool)

(declare-fun e!580974 () Bool)

(assert (=> b!885935 (= e!580974 (= (head!1551 (_2!6149 lt!331490)) (c!143229 (regTwo!5072 r!15766))))))

(declare-fun b!885936 () Bool)

(declare-fun e!580973 () Bool)

(assert (=> b!885936 (= e!580973 (not (= (head!1551 (_2!6149 lt!331490)) (c!143229 (regTwo!5072 r!15766)))))))

(declare-fun b!885937 () Bool)

(declare-fun res!402956 () Bool)

(assert (=> b!885937 (=> (not res!402956) (not e!580974))))

(declare-fun call!51932 () Bool)

(assert (=> b!885937 (= res!402956 (not call!51932))))

(declare-fun d!276880 () Bool)

(declare-fun e!580976 () Bool)

(assert (=> d!276880 e!580976))

(declare-fun c!143239 () Bool)

(assert (=> d!276880 (= c!143239 (is-EmptyExpr!2280 (regTwo!5072 r!15766)))))

(declare-fun lt!331524 () Bool)

(assert (=> d!276880 (= lt!331524 e!580972)))

(declare-fun c!143237 () Bool)

(assert (=> d!276880 (= c!143237 (isEmpty!5701 (_2!6149 lt!331490)))))

(assert (=> d!276880 (validRegex!749 (regTwo!5072 r!15766))))

(assert (=> d!276880 (= (matchR!818 (regTwo!5072 r!15766) (_2!6149 lt!331490)) lt!331524)))

(declare-fun b!885938 () Bool)

(declare-fun e!580975 () Bool)

(assert (=> b!885938 (= e!580976 e!580975)))

(declare-fun c!143238 () Bool)

(assert (=> b!885938 (= c!143238 (is-EmptyLang!2280 (regTwo!5072 r!15766)))))

(declare-fun b!885939 () Bool)

(declare-fun res!402955 () Bool)

(declare-fun e!580977 () Bool)

(assert (=> b!885939 (=> res!402955 e!580977)))

(assert (=> b!885939 (= res!402955 e!580974)))

(declare-fun res!402952 () Bool)

(assert (=> b!885939 (=> (not res!402952) (not e!580974))))

(assert (=> b!885939 (= res!402952 lt!331524)))

(declare-fun b!885940 () Bool)

(declare-fun e!580978 () Bool)

(assert (=> b!885940 (= e!580977 e!580978)))

(declare-fun res!402950 () Bool)

(assert (=> b!885940 (=> (not res!402950) (not e!580978))))

(assert (=> b!885940 (= res!402950 (not lt!331524))))

(declare-fun b!885941 () Bool)

(assert (=> b!885941 (= e!580978 e!580973)))

(declare-fun res!402953 () Bool)

(assert (=> b!885941 (=> res!402953 e!580973)))

(assert (=> b!885941 (= res!402953 call!51932)))

(declare-fun bm!51927 () Bool)

(assert (=> bm!51927 (= call!51932 (isEmpty!5701 (_2!6149 lt!331490)))))

(declare-fun b!885942 () Bool)

(assert (=> b!885942 (= e!580976 (= lt!331524 call!51932))))

(declare-fun b!885943 () Bool)

(declare-fun nullable!586 (Regex!2280) Bool)

(assert (=> b!885943 (= e!580972 (nullable!586 (regTwo!5072 r!15766)))))

(declare-fun b!885944 () Bool)

(declare-fun res!402949 () Bool)

(assert (=> b!885944 (=> res!402949 e!580977)))

(assert (=> b!885944 (= res!402949 (not (is-ElementMatch!2280 (regTwo!5072 r!15766))))))

(assert (=> b!885944 (= e!580975 e!580977)))

(declare-fun b!885945 () Bool)

(declare-fun res!402954 () Bool)

(assert (=> b!885945 (=> res!402954 e!580973)))

(assert (=> b!885945 (= res!402954 (not (isEmpty!5701 (tail!1113 (_2!6149 lt!331490)))))))

(declare-fun b!885946 () Bool)

(assert (=> b!885946 (= e!580975 (not lt!331524))))

(declare-fun b!885947 () Bool)

(declare-fun res!402951 () Bool)

(assert (=> b!885947 (=> (not res!402951) (not e!580974))))

(assert (=> b!885947 (= res!402951 (isEmpty!5701 (tail!1113 (_2!6149 lt!331490))))))

(assert (= (and d!276880 c!143237) b!885943))

(assert (= (and d!276880 (not c!143237)) b!885934))

(assert (= (and d!276880 c!143239) b!885942))

(assert (= (and d!276880 (not c!143239)) b!885938))

(assert (= (and b!885938 c!143238) b!885946))

(assert (= (and b!885938 (not c!143238)) b!885944))

(assert (= (and b!885944 (not res!402949)) b!885939))

(assert (= (and b!885939 res!402952) b!885937))

(assert (= (and b!885937 res!402956) b!885947))

(assert (= (and b!885947 res!402951) b!885935))

(assert (= (and b!885939 (not res!402955)) b!885940))

(assert (= (and b!885940 res!402950) b!885941))

(assert (= (and b!885941 (not res!402953)) b!885945))

(assert (= (and b!885945 (not res!402954)) b!885936))

(assert (= (or b!885942 b!885937 b!885941) bm!51927))

(declare-fun m!1131713 () Bool)

(assert (=> b!885947 m!1131713))

(assert (=> b!885947 m!1131713))

(declare-fun m!1131715 () Bool)

(assert (=> b!885947 m!1131715))

(declare-fun m!1131717 () Bool)

(assert (=> bm!51927 m!1131717))

(declare-fun m!1131719 () Bool)

(assert (=> b!885934 m!1131719))

(assert (=> b!885934 m!1131719))

(declare-fun m!1131721 () Bool)

(assert (=> b!885934 m!1131721))

(assert (=> b!885934 m!1131713))

(assert (=> b!885934 m!1131721))

(assert (=> b!885934 m!1131713))

(declare-fun m!1131723 () Bool)

(assert (=> b!885934 m!1131723))

(assert (=> b!885936 m!1131719))

(assert (=> d!276880 m!1131717))

(declare-fun m!1131725 () Bool)

(assert (=> d!276880 m!1131725))

(declare-fun m!1131727 () Bool)

(assert (=> b!885943 m!1131727))

(assert (=> b!885945 m!1131713))

(assert (=> b!885945 m!1131713))

(assert (=> b!885945 m!1131715))

(assert (=> b!885935 m!1131719))

(assert (=> b!885853 d!276880))

(declare-fun d!276882 () Bool)

(declare-fun choose!5272 (Int) Bool)

(assert (=> d!276882 (= (Exists!75 lambda!27361) (choose!5272 lambda!27361))))

(declare-fun bs!234699 () Bool)

(assert (= bs!234699 d!276882))

(declare-fun m!1131729 () Bool)

(assert (=> bs!234699 m!1131729))

(assert (=> b!885847 d!276882))

(declare-fun d!276884 () Bool)

(assert (=> d!276884 (= (isEmpty!5701 s!10566) (is-Nil!9494 s!10566))))

(assert (=> b!885847 d!276884))

(declare-fun d!276886 () Bool)

(assert (=> d!276886 (= (Exists!75 lambda!27362) (choose!5272 lambda!27362))))

(declare-fun bs!234700 () Bool)

(assert (= bs!234700 d!276886))

(declare-fun m!1131731 () Bool)

(assert (=> bs!234700 m!1131731))

(assert (=> b!885847 d!276886))

(declare-fun d!276888 () Bool)

(declare-fun isEmpty!5703 (Option!1965) Bool)

(assert (=> d!276888 (= (isDefined!1607 lt!331491) (not (isEmpty!5703 lt!331491)))))

(declare-fun bs!234701 () Bool)

(assert (= bs!234701 d!276888))

(declare-fun m!1131733 () Bool)

(assert (=> bs!234701 m!1131733))

(assert (=> b!885847 d!276888))

(declare-fun bs!234702 () Bool)

(declare-fun d!276892 () Bool)

(assert (= bs!234702 (and d!276892 b!885847)))

(declare-fun lambda!27373 () Int)

(assert (=> bs!234702 (= lambda!27373 lambda!27361)))

(assert (=> bs!234702 (not (= lambda!27373 lambda!27362))))

(assert (=> d!276892 true))

(assert (=> d!276892 true))

(assert (=> d!276892 true))

(assert (=> d!276892 (= (isDefined!1607 (findConcatSeparation!71 (regOne!5072 r!15766) (regTwo!5072 r!15766) Nil!9494 s!10566 s!10566)) (Exists!75 lambda!27373))))

(declare-fun lt!331527 () Unit!14139)

(declare-fun choose!5273 (Regex!2280 Regex!2280 List!9510) Unit!14139)

(assert (=> d!276892 (= lt!331527 (choose!5273 (regOne!5072 r!15766) (regTwo!5072 r!15766) s!10566))))

(assert (=> d!276892 (validRegex!749 (regOne!5072 r!15766))))

(assert (=> d!276892 (= (lemmaFindConcatSeparationEquivalentToExists!71 (regOne!5072 r!15766) (regTwo!5072 r!15766) s!10566) lt!331527)))

(declare-fun bs!234703 () Bool)

(assert (= bs!234703 d!276892))

(declare-fun m!1131735 () Bool)

(assert (=> bs!234703 m!1131735))

(assert (=> bs!234703 m!1131661))

(declare-fun m!1131737 () Bool)

(assert (=> bs!234703 m!1131737))

(declare-fun m!1131739 () Bool)

(assert (=> bs!234703 m!1131739))

(assert (=> bs!234703 m!1131661))

(declare-fun m!1131741 () Bool)

(assert (=> bs!234703 m!1131741))

(assert (=> b!885847 d!276892))

(declare-fun b!886002 () Bool)

(declare-fun e!581013 () Option!1965)

(assert (=> b!886002 (= e!581013 None!1964)))

(declare-fun b!886003 () Bool)

(declare-fun res!402987 () Bool)

(declare-fun e!581009 () Bool)

(assert (=> b!886003 (=> (not res!402987) (not e!581009))))

(declare-fun lt!331534 () Option!1965)

(assert (=> b!886003 (= res!402987 (matchR!818 (regTwo!5072 r!15766) (_2!6149 (get!2970 lt!331534))))))

(declare-fun b!886004 () Bool)

(declare-fun e!581012 () Option!1965)

(assert (=> b!886004 (= e!581012 e!581013)))

(declare-fun c!143252 () Bool)

(assert (=> b!886004 (= c!143252 (is-Nil!9494 s!10566))))

(declare-fun b!886006 () Bool)

(declare-fun res!402991 () Bool)

(assert (=> b!886006 (=> (not res!402991) (not e!581009))))

(assert (=> b!886006 (= res!402991 (matchR!818 (regOne!5072 r!15766) (_1!6149 (get!2970 lt!331534))))))

(declare-fun b!886007 () Bool)

(declare-fun lt!331535 () Unit!14139)

(declare-fun lt!331536 () Unit!14139)

(assert (=> b!886007 (= lt!331535 lt!331536)))

(declare-fun ++!2482 (List!9510 List!9510) List!9510)

(assert (=> b!886007 (= (++!2482 (++!2482 Nil!9494 (Cons!9494 (h!14895 s!10566) Nil!9494)) (t!100556 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!110 (List!9510 C!5130 List!9510 List!9510) Unit!14139)

(assert (=> b!886007 (= lt!331536 (lemmaMoveElementToOtherListKeepsConcatEq!110 Nil!9494 (h!14895 s!10566) (t!100556 s!10566) s!10566))))

(assert (=> b!886007 (= e!581013 (findConcatSeparation!71 (regOne!5072 r!15766) (regTwo!5072 r!15766) (++!2482 Nil!9494 (Cons!9494 (h!14895 s!10566) Nil!9494)) (t!100556 s!10566) s!10566))))

(declare-fun b!886008 () Bool)

(declare-fun e!581010 () Bool)

(assert (=> b!886008 (= e!581010 (matchR!818 (regTwo!5072 r!15766) s!10566))))

(declare-fun b!886005 () Bool)

(assert (=> b!886005 (= e!581009 (= (++!2482 (_1!6149 (get!2970 lt!331534)) (_2!6149 (get!2970 lt!331534))) s!10566))))

(declare-fun d!276894 () Bool)

(declare-fun e!581011 () Bool)

(assert (=> d!276894 e!581011))

(declare-fun res!402989 () Bool)

(assert (=> d!276894 (=> res!402989 e!581011)))

(assert (=> d!276894 (= res!402989 e!581009)))

(declare-fun res!402988 () Bool)

(assert (=> d!276894 (=> (not res!402988) (not e!581009))))

(assert (=> d!276894 (= res!402988 (isDefined!1607 lt!331534))))

(assert (=> d!276894 (= lt!331534 e!581012)))

(declare-fun c!143253 () Bool)

(assert (=> d!276894 (= c!143253 e!581010)))

(declare-fun res!402990 () Bool)

(assert (=> d!276894 (=> (not res!402990) (not e!581010))))

(assert (=> d!276894 (= res!402990 (matchR!818 (regOne!5072 r!15766) Nil!9494))))

(assert (=> d!276894 (validRegex!749 (regOne!5072 r!15766))))

(assert (=> d!276894 (= (findConcatSeparation!71 (regOne!5072 r!15766) (regTwo!5072 r!15766) Nil!9494 s!10566 s!10566) lt!331534)))

(declare-fun b!886009 () Bool)

(assert (=> b!886009 (= e!581011 (not (isDefined!1607 lt!331534)))))

(declare-fun b!886010 () Bool)

(assert (=> b!886010 (= e!581012 (Some!1964 (tuple2!10647 Nil!9494 s!10566)))))

(assert (= (and d!276894 res!402990) b!886008))

(assert (= (and d!276894 c!143253) b!886010))

(assert (= (and d!276894 (not c!143253)) b!886004))

(assert (= (and b!886004 c!143252) b!886002))

(assert (= (and b!886004 (not c!143252)) b!886007))

(assert (= (and d!276894 res!402988) b!886006))

(assert (= (and b!886006 res!402991) b!886003))

(assert (= (and b!886003 res!402987) b!886005))

(assert (= (and d!276894 (not res!402989)) b!886009))

(declare-fun m!1131743 () Bool)

(assert (=> d!276894 m!1131743))

(declare-fun m!1131745 () Bool)

(assert (=> d!276894 m!1131745))

(assert (=> d!276894 m!1131737))

(declare-fun m!1131747 () Bool)

(assert (=> b!886003 m!1131747))

(declare-fun m!1131749 () Bool)

(assert (=> b!886003 m!1131749))

(assert (=> b!886005 m!1131747))

(declare-fun m!1131751 () Bool)

(assert (=> b!886005 m!1131751))

(declare-fun m!1131753 () Bool)

(assert (=> b!886007 m!1131753))

(assert (=> b!886007 m!1131753))

(declare-fun m!1131755 () Bool)

(assert (=> b!886007 m!1131755))

(declare-fun m!1131757 () Bool)

(assert (=> b!886007 m!1131757))

(assert (=> b!886007 m!1131753))

(declare-fun m!1131759 () Bool)

(assert (=> b!886007 m!1131759))

(assert (=> b!886009 m!1131743))

(assert (=> b!886006 m!1131747))

(declare-fun m!1131761 () Bool)

(assert (=> b!886006 m!1131761))

(declare-fun m!1131763 () Bool)

(assert (=> b!886008 m!1131763))

(assert (=> b!885847 d!276894))

(declare-fun bs!234704 () Bool)

(declare-fun d!276896 () Bool)

(assert (= bs!234704 (and d!276896 b!885847)))

(declare-fun lambda!27382 () Int)

(assert (=> bs!234704 (= lambda!27382 lambda!27361)))

(assert (=> bs!234704 (not (= lambda!27382 lambda!27362))))

(declare-fun bs!234705 () Bool)

(assert (= bs!234705 (and d!276896 d!276892)))

(assert (=> bs!234705 (= lambda!27382 lambda!27373)))

(assert (=> d!276896 true))

(assert (=> d!276896 true))

(assert (=> d!276896 true))

(declare-fun lambda!27383 () Int)

(assert (=> bs!234704 (not (= lambda!27383 lambda!27361))))

(assert (=> bs!234704 (= lambda!27383 lambda!27362)))

(assert (=> bs!234705 (not (= lambda!27383 lambda!27373))))

(declare-fun bs!234706 () Bool)

(assert (= bs!234706 d!276896))

(assert (=> bs!234706 (not (= lambda!27383 lambda!27382))))

(assert (=> d!276896 true))

(assert (=> d!276896 true))

(assert (=> d!276896 true))

(assert (=> d!276896 (= (Exists!75 lambda!27382) (Exists!75 lambda!27383))))

(declare-fun lt!331539 () Unit!14139)

(declare-fun choose!5274 (Regex!2280 Regex!2280 List!9510) Unit!14139)

(assert (=> d!276896 (= lt!331539 (choose!5274 (regOne!5072 r!15766) (regTwo!5072 r!15766) s!10566))))

(assert (=> d!276896 (validRegex!749 (regOne!5072 r!15766))))

(assert (=> d!276896 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!65 (regOne!5072 r!15766) (regTwo!5072 r!15766) s!10566) lt!331539)))

(declare-fun m!1131765 () Bool)

(assert (=> bs!234706 m!1131765))

(declare-fun m!1131767 () Bool)

(assert (=> bs!234706 m!1131767))

(declare-fun m!1131769 () Bool)

(assert (=> bs!234706 m!1131769))

(assert (=> bs!234706 m!1131737))

(assert (=> b!885847 d!276896))

(declare-fun b!886048 () Bool)

(declare-fun e!581040 () Bool)

(declare-fun call!51947 () Bool)

(assert (=> b!886048 (= e!581040 call!51947)))

(declare-fun b!886049 () Bool)

(declare-fun e!581044 () Bool)

(declare-fun e!581042 () Bool)

(assert (=> b!886049 (= e!581044 e!581042)))

(declare-fun c!143262 () Bool)

(assert (=> b!886049 (= c!143262 (is-Star!2280 r!15766))))

(declare-fun bm!51940 () Bool)

(declare-fun call!51945 () Bool)

(declare-fun c!143263 () Bool)

(assert (=> bm!51940 (= call!51945 (validRegex!749 (ite c!143262 (reg!2609 r!15766) (ite c!143263 (regOne!5073 r!15766) (regOne!5072 r!15766)))))))

(declare-fun b!886050 () Bool)

(declare-fun e!581039 () Bool)

(assert (=> b!886050 (= e!581039 call!51945)))

(declare-fun bm!51941 () Bool)

(assert (=> bm!51941 (= call!51947 (validRegex!749 (ite c!143263 (regTwo!5073 r!15766) (regTwo!5072 r!15766))))))

(declare-fun b!886051 () Bool)

(declare-fun res!403013 () Bool)

(declare-fun e!581045 () Bool)

(assert (=> b!886051 (=> (not res!403013) (not e!581045))))

(declare-fun call!51946 () Bool)

(assert (=> b!886051 (= res!403013 call!51946)))

(declare-fun e!581043 () Bool)

(assert (=> b!886051 (= e!581043 e!581045)))

(declare-fun b!886052 () Bool)

(assert (=> b!886052 (= e!581045 call!51947)))

(declare-fun b!886054 () Bool)

(assert (=> b!886054 (= e!581042 e!581043)))

(assert (=> b!886054 (= c!143263 (is-Union!2280 r!15766))))

(declare-fun b!886055 () Bool)

(declare-fun e!581041 () Bool)

(assert (=> b!886055 (= e!581041 e!581040)))

(declare-fun res!403016 () Bool)

(assert (=> b!886055 (=> (not res!403016) (not e!581040))))

(assert (=> b!886055 (= res!403016 call!51946)))

(declare-fun b!886053 () Bool)

(assert (=> b!886053 (= e!581042 e!581039)))

(declare-fun res!403014 () Bool)

(assert (=> b!886053 (= res!403014 (not (nullable!586 (reg!2609 r!15766))))))

(assert (=> b!886053 (=> (not res!403014) (not e!581039))))

(declare-fun d!276898 () Bool)

(declare-fun res!403017 () Bool)

(assert (=> d!276898 (=> res!403017 e!581044)))

(assert (=> d!276898 (= res!403017 (is-ElementMatch!2280 r!15766))))

(assert (=> d!276898 (= (validRegex!749 r!15766) e!581044)))

(declare-fun bm!51942 () Bool)

(assert (=> bm!51942 (= call!51946 call!51945)))

(declare-fun b!886056 () Bool)

(declare-fun res!403015 () Bool)

(assert (=> b!886056 (=> res!403015 e!581041)))

(assert (=> b!886056 (= res!403015 (not (is-Concat!4113 r!15766)))))

(assert (=> b!886056 (= e!581043 e!581041)))

(assert (= (and d!276898 (not res!403017)) b!886049))

(assert (= (and b!886049 c!143262) b!886053))

(assert (= (and b!886049 (not c!143262)) b!886054))

(assert (= (and b!886053 res!403014) b!886050))

(assert (= (and b!886054 c!143263) b!886051))

(assert (= (and b!886054 (not c!143263)) b!886056))

(assert (= (and b!886051 res!403013) b!886052))

(assert (= (and b!886056 (not res!403015)) b!886055))

(assert (= (and b!886055 res!403016) b!886048))

(assert (= (or b!886052 b!886048) bm!51941))

(assert (= (or b!886051 b!886055) bm!51942))

(assert (= (or b!886050 bm!51942) bm!51940))

(declare-fun m!1131777 () Bool)

(assert (=> bm!51940 m!1131777))

(declare-fun m!1131779 () Bool)

(assert (=> bm!51941 m!1131779))

(declare-fun m!1131781 () Bool)

(assert (=> b!886053 m!1131781))

(assert (=> start!80028 d!276898))

(declare-fun bs!234710 () Bool)

(declare-fun b!886124 () Bool)

(assert (= bs!234710 (and b!886124 b!885847)))

(declare-fun lambda!27390 () Int)

(assert (=> bs!234710 (not (= lambda!27390 lambda!27361))))

(declare-fun bs!234711 () Bool)

(assert (= bs!234711 (and b!886124 d!276896)))

(assert (=> bs!234711 (not (= lambda!27390 lambda!27383))))

(declare-fun bs!234712 () Bool)

(assert (= bs!234712 (and b!886124 d!276892)))

(assert (=> bs!234712 (not (= lambda!27390 lambda!27373))))

(assert (=> bs!234710 (not (= lambda!27390 lambda!27362))))

(assert (=> bs!234711 (not (= lambda!27390 lambda!27382))))

(assert (=> b!886124 true))

(assert (=> b!886124 true))

(declare-fun bs!234713 () Bool)

(declare-fun b!886125 () Bool)

(assert (= bs!234713 (and b!886125 b!885847)))

(declare-fun lambda!27391 () Int)

(assert (=> bs!234713 (not (= lambda!27391 lambda!27361))))

(declare-fun bs!234714 () Bool)

(assert (= bs!234714 (and b!886125 d!276896)))

(assert (=> bs!234714 (= lambda!27391 lambda!27383)))

(declare-fun bs!234715 () Bool)

(assert (= bs!234715 (and b!886125 d!276892)))

(assert (=> bs!234715 (not (= lambda!27391 lambda!27373))))

(assert (=> bs!234713 (= lambda!27391 lambda!27362)))

(declare-fun bs!234716 () Bool)

(assert (= bs!234716 (and b!886125 b!886124)))

(assert (=> bs!234716 (not (= lambda!27391 lambda!27390))))

(assert (=> bs!234714 (not (= lambda!27391 lambda!27382))))

(assert (=> b!886125 true))

(assert (=> b!886125 true))

(declare-fun b!886117 () Bool)

(declare-fun e!581082 () Bool)

(assert (=> b!886117 (= e!581082 (= s!10566 (Cons!9494 (c!143229 r!15766) Nil!9494)))))

(declare-fun b!886118 () Bool)

(declare-fun c!143279 () Bool)

(assert (=> b!886118 (= c!143279 (is-Union!2280 r!15766))))

(declare-fun e!581083 () Bool)

(assert (=> b!886118 (= e!581082 e!581083)))

(declare-fun b!886119 () Bool)

(declare-fun e!581084 () Bool)

(assert (=> b!886119 (= e!581083 e!581084)))

(declare-fun res!403050 () Bool)

(assert (=> b!886119 (= res!403050 (matchRSpec!81 (regOne!5073 r!15766) s!10566))))

(assert (=> b!886119 (=> res!403050 e!581084)))

(declare-fun c!143280 () Bool)

(declare-fun bm!51947 () Bool)

(declare-fun call!51952 () Bool)

(assert (=> bm!51947 (= call!51952 (Exists!75 (ite c!143280 lambda!27390 lambda!27391)))))

(declare-fun b!886120 () Bool)

(assert (=> b!886120 (= e!581084 (matchRSpec!81 (regTwo!5073 r!15766) s!10566))))

(declare-fun b!886121 () Bool)

(declare-fun e!581081 () Bool)

(declare-fun call!51953 () Bool)

(assert (=> b!886121 (= e!581081 call!51953)))

(declare-fun b!886122 () Bool)

(declare-fun e!581078 () Bool)

(assert (=> b!886122 (= e!581083 e!581078)))

(assert (=> b!886122 (= c!143280 (is-Star!2280 r!15766))))

(declare-fun b!886123 () Bool)

(declare-fun res!403051 () Bool)

(declare-fun e!581080 () Bool)

(assert (=> b!886123 (=> res!403051 e!581080)))

(assert (=> b!886123 (= res!403051 call!51953)))

(assert (=> b!886123 (= e!581078 e!581080)))

(assert (=> b!886124 (= e!581080 call!51952)))

(declare-fun bm!51948 () Bool)

(assert (=> bm!51948 (= call!51953 (isEmpty!5701 s!10566))))

(assert (=> b!886125 (= e!581078 call!51952)))

(declare-fun d!276902 () Bool)

(declare-fun c!143278 () Bool)

(assert (=> d!276902 (= c!143278 (is-EmptyExpr!2280 r!15766))))

(assert (=> d!276902 (= (matchRSpec!81 r!15766 s!10566) e!581081)))

(declare-fun b!886126 () Bool)

(declare-fun c!143281 () Bool)

(assert (=> b!886126 (= c!143281 (is-ElementMatch!2280 r!15766))))

(declare-fun e!581079 () Bool)

(assert (=> b!886126 (= e!581079 e!581082)))

(declare-fun b!886127 () Bool)

(assert (=> b!886127 (= e!581081 e!581079)))

(declare-fun res!403052 () Bool)

(assert (=> b!886127 (= res!403052 (not (is-EmptyLang!2280 r!15766)))))

(assert (=> b!886127 (=> (not res!403052) (not e!581079))))

(assert (= (and d!276902 c!143278) b!886121))

(assert (= (and d!276902 (not c!143278)) b!886127))

(assert (= (and b!886127 res!403052) b!886126))

(assert (= (and b!886126 c!143281) b!886117))

(assert (= (and b!886126 (not c!143281)) b!886118))

(assert (= (and b!886118 c!143279) b!886119))

(assert (= (and b!886118 (not c!143279)) b!886122))

(assert (= (and b!886119 (not res!403050)) b!886120))

(assert (= (and b!886122 c!143280) b!886123))

(assert (= (and b!886122 (not c!143280)) b!886125))

(assert (= (and b!886123 (not res!403051)) b!886124))

(assert (= (or b!886124 b!886125) bm!51947))

(assert (= (or b!886121 b!886123) bm!51948))

(declare-fun m!1131783 () Bool)

(assert (=> b!886119 m!1131783))

(declare-fun m!1131785 () Bool)

(assert (=> bm!51947 m!1131785))

(declare-fun m!1131787 () Bool)

(assert (=> b!886120 m!1131787))

(assert (=> bm!51948 m!1131657))

(assert (=> b!885850 d!276902))

(declare-fun b!886128 () Bool)

(declare-fun e!581085 () Bool)

(assert (=> b!886128 (= e!581085 (matchR!818 (derivativeStep!398 r!15766 (head!1551 s!10566)) (tail!1113 s!10566)))))

(declare-fun b!886129 () Bool)

(declare-fun e!581087 () Bool)

(assert (=> b!886129 (= e!581087 (= (head!1551 s!10566) (c!143229 r!15766)))))

(declare-fun b!886130 () Bool)

(declare-fun e!581086 () Bool)

(assert (=> b!886130 (= e!581086 (not (= (head!1551 s!10566) (c!143229 r!15766))))))

(declare-fun b!886131 () Bool)

(declare-fun res!403060 () Bool)

(assert (=> b!886131 (=> (not res!403060) (not e!581087))))

(declare-fun call!51956 () Bool)

(assert (=> b!886131 (= res!403060 (not call!51956))))

(declare-fun d!276904 () Bool)

(declare-fun e!581089 () Bool)

(assert (=> d!276904 e!581089))

(declare-fun c!143284 () Bool)

(assert (=> d!276904 (= c!143284 (is-EmptyExpr!2280 r!15766))))

(declare-fun lt!331542 () Bool)

(assert (=> d!276904 (= lt!331542 e!581085)))

(declare-fun c!143282 () Bool)

(assert (=> d!276904 (= c!143282 (isEmpty!5701 s!10566))))

(assert (=> d!276904 (validRegex!749 r!15766)))

(assert (=> d!276904 (= (matchR!818 r!15766 s!10566) lt!331542)))

(declare-fun b!886132 () Bool)

(declare-fun e!581088 () Bool)

(assert (=> b!886132 (= e!581089 e!581088)))

(declare-fun c!143283 () Bool)

(assert (=> b!886132 (= c!143283 (is-EmptyLang!2280 r!15766))))

(declare-fun b!886133 () Bool)

(declare-fun res!403059 () Bool)

(declare-fun e!581090 () Bool)

(assert (=> b!886133 (=> res!403059 e!581090)))

(assert (=> b!886133 (= res!403059 e!581087)))

(declare-fun res!403056 () Bool)

(assert (=> b!886133 (=> (not res!403056) (not e!581087))))

(assert (=> b!886133 (= res!403056 lt!331542)))

(declare-fun b!886134 () Bool)

(declare-fun e!581091 () Bool)

(assert (=> b!886134 (= e!581090 e!581091)))

(declare-fun res!403054 () Bool)

(assert (=> b!886134 (=> (not res!403054) (not e!581091))))

(assert (=> b!886134 (= res!403054 (not lt!331542))))

(declare-fun b!886135 () Bool)

(assert (=> b!886135 (= e!581091 e!581086)))

(declare-fun res!403057 () Bool)

(assert (=> b!886135 (=> res!403057 e!581086)))

(assert (=> b!886135 (= res!403057 call!51956)))

(declare-fun bm!51951 () Bool)

(assert (=> bm!51951 (= call!51956 (isEmpty!5701 s!10566))))

(declare-fun b!886136 () Bool)

(assert (=> b!886136 (= e!581089 (= lt!331542 call!51956))))

(declare-fun b!886137 () Bool)

(assert (=> b!886137 (= e!581085 (nullable!586 r!15766))))

(declare-fun b!886138 () Bool)

(declare-fun res!403053 () Bool)

(assert (=> b!886138 (=> res!403053 e!581090)))

(assert (=> b!886138 (= res!403053 (not (is-ElementMatch!2280 r!15766)))))

(assert (=> b!886138 (= e!581088 e!581090)))

(declare-fun b!886139 () Bool)

(declare-fun res!403058 () Bool)

(assert (=> b!886139 (=> res!403058 e!581086)))

(assert (=> b!886139 (= res!403058 (not (isEmpty!5701 (tail!1113 s!10566))))))

(declare-fun b!886140 () Bool)

(assert (=> b!886140 (= e!581088 (not lt!331542))))

(declare-fun b!886141 () Bool)

(declare-fun res!403055 () Bool)

(assert (=> b!886141 (=> (not res!403055) (not e!581087))))

(assert (=> b!886141 (= res!403055 (isEmpty!5701 (tail!1113 s!10566)))))

(assert (= (and d!276904 c!143282) b!886137))

(assert (= (and d!276904 (not c!143282)) b!886128))

(assert (= (and d!276904 c!143284) b!886136))

(assert (= (and d!276904 (not c!143284)) b!886132))

(assert (= (and b!886132 c!143283) b!886140))

(assert (= (and b!886132 (not c!143283)) b!886138))

(assert (= (and b!886138 (not res!403053)) b!886133))

(assert (= (and b!886133 res!403056) b!886131))

(assert (= (and b!886131 res!403060) b!886141))

(assert (= (and b!886141 res!403055) b!886129))

(assert (= (and b!886133 (not res!403059)) b!886134))

(assert (= (and b!886134 res!403054) b!886135))

(assert (= (and b!886135 (not res!403057)) b!886139))

(assert (= (and b!886139 (not res!403058)) b!886130))

(assert (= (or b!886136 b!886131 b!886135) bm!51951))

(declare-fun m!1131789 () Bool)

(assert (=> b!886141 m!1131789))

(assert (=> b!886141 m!1131789))

(declare-fun m!1131791 () Bool)

(assert (=> b!886141 m!1131791))

(assert (=> bm!51951 m!1131657))

(declare-fun m!1131793 () Bool)

(assert (=> b!886128 m!1131793))

(assert (=> b!886128 m!1131793))

(declare-fun m!1131795 () Bool)

(assert (=> b!886128 m!1131795))

(assert (=> b!886128 m!1131789))

(assert (=> b!886128 m!1131795))

(assert (=> b!886128 m!1131789))

(declare-fun m!1131797 () Bool)

(assert (=> b!886128 m!1131797))

(assert (=> b!886130 m!1131793))

(assert (=> d!276904 m!1131657))

(assert (=> d!276904 m!1131651))

(declare-fun m!1131799 () Bool)

(assert (=> b!886137 m!1131799))

(assert (=> b!886139 m!1131789))

(assert (=> b!886139 m!1131789))

(assert (=> b!886139 m!1131791))

(assert (=> b!886129 m!1131793))

(assert (=> b!885850 d!276904))

(declare-fun d!276906 () Bool)

(assert (=> d!276906 (= (matchR!818 r!15766 s!10566) (matchRSpec!81 r!15766 s!10566))))

(declare-fun lt!331545 () Unit!14139)

(declare-fun choose!5275 (Regex!2280 List!9510) Unit!14139)

(assert (=> d!276906 (= lt!331545 (choose!5275 r!15766 s!10566))))

(assert (=> d!276906 (validRegex!749 r!15766)))

(assert (=> d!276906 (= (mainMatchTheorem!81 r!15766 s!10566) lt!331545)))

(declare-fun bs!234717 () Bool)

(assert (= bs!234717 d!276906))

(assert (=> bs!234717 m!1131631))

(assert (=> bs!234717 m!1131629))

(declare-fun m!1131801 () Bool)

(assert (=> bs!234717 m!1131801))

(assert (=> bs!234717 m!1131651))

(assert (=> b!885850 d!276906))

(declare-fun b!886142 () Bool)

(declare-fun e!581092 () Bool)

(assert (=> b!886142 (= e!581092 (matchR!818 (derivativeStep!398 (regOne!5072 r!15766) (head!1551 (_1!6149 lt!331490))) (tail!1113 (_1!6149 lt!331490))))))

(declare-fun b!886143 () Bool)

(declare-fun e!581094 () Bool)

(assert (=> b!886143 (= e!581094 (= (head!1551 (_1!6149 lt!331490)) (c!143229 (regOne!5072 r!15766))))))

(declare-fun b!886144 () Bool)

(declare-fun e!581093 () Bool)

(assert (=> b!886144 (= e!581093 (not (= (head!1551 (_1!6149 lt!331490)) (c!143229 (regOne!5072 r!15766)))))))

(declare-fun b!886145 () Bool)

(declare-fun res!403068 () Bool)

(assert (=> b!886145 (=> (not res!403068) (not e!581094))))

(declare-fun call!51957 () Bool)

(assert (=> b!886145 (= res!403068 (not call!51957))))

(declare-fun d!276908 () Bool)

(declare-fun e!581096 () Bool)

(assert (=> d!276908 e!581096))

(declare-fun c!143287 () Bool)

(assert (=> d!276908 (= c!143287 (is-EmptyExpr!2280 (regOne!5072 r!15766)))))

(declare-fun lt!331546 () Bool)

(assert (=> d!276908 (= lt!331546 e!581092)))

(declare-fun c!143285 () Bool)

(assert (=> d!276908 (= c!143285 (isEmpty!5701 (_1!6149 lt!331490)))))

(assert (=> d!276908 (validRegex!749 (regOne!5072 r!15766))))

(assert (=> d!276908 (= (matchR!818 (regOne!5072 r!15766) (_1!6149 lt!331490)) lt!331546)))

(declare-fun b!886146 () Bool)

(declare-fun e!581095 () Bool)

(assert (=> b!886146 (= e!581096 e!581095)))

(declare-fun c!143286 () Bool)

(assert (=> b!886146 (= c!143286 (is-EmptyLang!2280 (regOne!5072 r!15766)))))

(declare-fun b!886147 () Bool)

(declare-fun res!403067 () Bool)

(declare-fun e!581097 () Bool)

(assert (=> b!886147 (=> res!403067 e!581097)))

(assert (=> b!886147 (= res!403067 e!581094)))

(declare-fun res!403064 () Bool)

(assert (=> b!886147 (=> (not res!403064) (not e!581094))))

(assert (=> b!886147 (= res!403064 lt!331546)))

(declare-fun b!886148 () Bool)

(declare-fun e!581098 () Bool)

(assert (=> b!886148 (= e!581097 e!581098)))

(declare-fun res!403062 () Bool)

(assert (=> b!886148 (=> (not res!403062) (not e!581098))))

(assert (=> b!886148 (= res!403062 (not lt!331546))))

(declare-fun b!886149 () Bool)

(assert (=> b!886149 (= e!581098 e!581093)))

(declare-fun res!403065 () Bool)

(assert (=> b!886149 (=> res!403065 e!581093)))

(assert (=> b!886149 (= res!403065 call!51957)))

(declare-fun bm!51952 () Bool)

(assert (=> bm!51952 (= call!51957 (isEmpty!5701 (_1!6149 lt!331490)))))

(declare-fun b!886150 () Bool)

(assert (=> b!886150 (= e!581096 (= lt!331546 call!51957))))

(declare-fun b!886151 () Bool)

(assert (=> b!886151 (= e!581092 (nullable!586 (regOne!5072 r!15766)))))

(declare-fun b!886152 () Bool)

(declare-fun res!403061 () Bool)

(assert (=> b!886152 (=> res!403061 e!581097)))

(assert (=> b!886152 (= res!403061 (not (is-ElementMatch!2280 (regOne!5072 r!15766))))))

(assert (=> b!886152 (= e!581095 e!581097)))

(declare-fun b!886153 () Bool)

(declare-fun res!403066 () Bool)

(assert (=> b!886153 (=> res!403066 e!581093)))

(assert (=> b!886153 (= res!403066 (not (isEmpty!5701 (tail!1113 (_1!6149 lt!331490)))))))

(declare-fun b!886154 () Bool)

(assert (=> b!886154 (= e!581095 (not lt!331546))))

(declare-fun b!886155 () Bool)

(declare-fun res!403063 () Bool)

(assert (=> b!886155 (=> (not res!403063) (not e!581094))))

(assert (=> b!886155 (= res!403063 (isEmpty!5701 (tail!1113 (_1!6149 lt!331490))))))

(assert (= (and d!276908 c!143285) b!886151))

(assert (= (and d!276908 (not c!143285)) b!886142))

(assert (= (and d!276908 c!143287) b!886150))

(assert (= (and d!276908 (not c!143287)) b!886146))

(assert (= (and b!886146 c!143286) b!886154))

(assert (= (and b!886146 (not c!143286)) b!886152))

(assert (= (and b!886152 (not res!403061)) b!886147))

(assert (= (and b!886147 res!403064) b!886145))

(assert (= (and b!886145 res!403068) b!886155))

(assert (= (and b!886155 res!403063) b!886143))

(assert (= (and b!886147 (not res!403067)) b!886148))

(assert (= (and b!886148 res!403062) b!886149))

(assert (= (and b!886149 (not res!403065)) b!886153))

(assert (= (and b!886153 (not res!403066)) b!886144))

(assert (= (or b!886150 b!886145 b!886149) bm!51952))

(declare-fun m!1131803 () Bool)

(assert (=> b!886155 m!1131803))

(assert (=> b!886155 m!1131803))

(declare-fun m!1131805 () Bool)

(assert (=> b!886155 m!1131805))

(declare-fun m!1131807 () Bool)

(assert (=> bm!51952 m!1131807))

(declare-fun m!1131809 () Bool)

(assert (=> b!886142 m!1131809))

(assert (=> b!886142 m!1131809))

(declare-fun m!1131811 () Bool)

(assert (=> b!886142 m!1131811))

(assert (=> b!886142 m!1131803))

(assert (=> b!886142 m!1131811))

(assert (=> b!886142 m!1131803))

(declare-fun m!1131813 () Bool)

(assert (=> b!886142 m!1131813))

(assert (=> b!886144 m!1131809))

(assert (=> d!276908 m!1131807))

(assert (=> d!276908 m!1131737))

(declare-fun m!1131815 () Bool)

(assert (=> b!886151 m!1131815))

(assert (=> b!886153 m!1131803))

(assert (=> b!886153 m!1131803))

(assert (=> b!886153 m!1131805))

(assert (=> b!886143 m!1131809))

(assert (=> b!885855 d!276908))

(declare-fun d!276910 () Bool)

(assert (=> d!276910 (= (get!2970 lt!331491) (v!19381 lt!331491))))

(assert (=> b!885855 d!276910))

(declare-fun b!886156 () Bool)

(declare-fun e!581099 () Bool)

(assert (=> b!886156 (= e!581099 (matchR!818 (derivativeStep!398 (removeUselessConcat!23 (regOne!5072 r!15766)) (head!1551 (_1!6149 lt!331490))) (tail!1113 (_1!6149 lt!331490))))))

(declare-fun b!886157 () Bool)

(declare-fun e!581101 () Bool)

(assert (=> b!886157 (= e!581101 (= (head!1551 (_1!6149 lt!331490)) (c!143229 (removeUselessConcat!23 (regOne!5072 r!15766)))))))

(declare-fun b!886158 () Bool)

(declare-fun e!581100 () Bool)

(assert (=> b!886158 (= e!581100 (not (= (head!1551 (_1!6149 lt!331490)) (c!143229 (removeUselessConcat!23 (regOne!5072 r!15766))))))))

(declare-fun b!886159 () Bool)

(declare-fun res!403076 () Bool)

(assert (=> b!886159 (=> (not res!403076) (not e!581101))))

(declare-fun call!51958 () Bool)

(assert (=> b!886159 (= res!403076 (not call!51958))))

(declare-fun d!276912 () Bool)

(declare-fun e!581103 () Bool)

(assert (=> d!276912 e!581103))

(declare-fun c!143290 () Bool)

(assert (=> d!276912 (= c!143290 (is-EmptyExpr!2280 (removeUselessConcat!23 (regOne!5072 r!15766))))))

(declare-fun lt!331547 () Bool)

(assert (=> d!276912 (= lt!331547 e!581099)))

(declare-fun c!143288 () Bool)

(assert (=> d!276912 (= c!143288 (isEmpty!5701 (_1!6149 lt!331490)))))

(assert (=> d!276912 (validRegex!749 (removeUselessConcat!23 (regOne!5072 r!15766)))))

(assert (=> d!276912 (= (matchR!818 (removeUselessConcat!23 (regOne!5072 r!15766)) (_1!6149 lt!331490)) lt!331547)))

(declare-fun b!886160 () Bool)

(declare-fun e!581102 () Bool)

(assert (=> b!886160 (= e!581103 e!581102)))

(declare-fun c!143289 () Bool)

(assert (=> b!886160 (= c!143289 (is-EmptyLang!2280 (removeUselessConcat!23 (regOne!5072 r!15766))))))

(declare-fun b!886161 () Bool)

(declare-fun res!403075 () Bool)

(declare-fun e!581104 () Bool)

(assert (=> b!886161 (=> res!403075 e!581104)))

(assert (=> b!886161 (= res!403075 e!581101)))

(declare-fun res!403072 () Bool)

(assert (=> b!886161 (=> (not res!403072) (not e!581101))))

(assert (=> b!886161 (= res!403072 lt!331547)))

(declare-fun b!886162 () Bool)

(declare-fun e!581105 () Bool)

(assert (=> b!886162 (= e!581104 e!581105)))

(declare-fun res!403070 () Bool)

(assert (=> b!886162 (=> (not res!403070) (not e!581105))))

(assert (=> b!886162 (= res!403070 (not lt!331547))))

(declare-fun b!886163 () Bool)

(assert (=> b!886163 (= e!581105 e!581100)))

(declare-fun res!403073 () Bool)

(assert (=> b!886163 (=> res!403073 e!581100)))

(assert (=> b!886163 (= res!403073 call!51958)))

(declare-fun bm!51953 () Bool)

(assert (=> bm!51953 (= call!51958 (isEmpty!5701 (_1!6149 lt!331490)))))

(declare-fun b!886164 () Bool)

(assert (=> b!886164 (= e!581103 (= lt!331547 call!51958))))

(declare-fun b!886165 () Bool)

(assert (=> b!886165 (= e!581099 (nullable!586 (removeUselessConcat!23 (regOne!5072 r!15766))))))

(declare-fun b!886166 () Bool)

(declare-fun res!403069 () Bool)

(assert (=> b!886166 (=> res!403069 e!581104)))

(assert (=> b!886166 (= res!403069 (not (is-ElementMatch!2280 (removeUselessConcat!23 (regOne!5072 r!15766)))))))

(assert (=> b!886166 (= e!581102 e!581104)))

(declare-fun b!886167 () Bool)

(declare-fun res!403074 () Bool)

(assert (=> b!886167 (=> res!403074 e!581100)))

(assert (=> b!886167 (= res!403074 (not (isEmpty!5701 (tail!1113 (_1!6149 lt!331490)))))))

(declare-fun b!886168 () Bool)

(assert (=> b!886168 (= e!581102 (not lt!331547))))

(declare-fun b!886169 () Bool)

(declare-fun res!403071 () Bool)

(assert (=> b!886169 (=> (not res!403071) (not e!581101))))

(assert (=> b!886169 (= res!403071 (isEmpty!5701 (tail!1113 (_1!6149 lt!331490))))))

(assert (= (and d!276912 c!143288) b!886165))

(assert (= (and d!276912 (not c!143288)) b!886156))

(assert (= (and d!276912 c!143290) b!886164))

(assert (= (and d!276912 (not c!143290)) b!886160))

(assert (= (and b!886160 c!143289) b!886168))

(assert (= (and b!886160 (not c!143289)) b!886166))

(assert (= (and b!886166 (not res!403069)) b!886161))

(assert (= (and b!886161 res!403072) b!886159))

(assert (= (and b!886159 res!403076) b!886169))

(assert (= (and b!886169 res!403071) b!886157))

(assert (= (and b!886161 (not res!403075)) b!886162))

(assert (= (and b!886162 res!403070) b!886163))

(assert (= (and b!886163 (not res!403073)) b!886167))

(assert (= (and b!886167 (not res!403074)) b!886158))

(assert (= (or b!886164 b!886159 b!886163) bm!51953))

(assert (=> b!886169 m!1131803))

(assert (=> b!886169 m!1131803))

(assert (=> b!886169 m!1131805))

(assert (=> bm!51953 m!1131807))

(assert (=> b!886156 m!1131809))

(assert (=> b!886156 m!1131639))

(assert (=> b!886156 m!1131809))

(declare-fun m!1131817 () Bool)

(assert (=> b!886156 m!1131817))

(assert (=> b!886156 m!1131803))

(assert (=> b!886156 m!1131817))

(assert (=> b!886156 m!1131803))

(declare-fun m!1131819 () Bool)

(assert (=> b!886156 m!1131819))

(assert (=> b!886158 m!1131809))

(assert (=> d!276912 m!1131807))

(assert (=> d!276912 m!1131639))

(declare-fun m!1131821 () Bool)

(assert (=> d!276912 m!1131821))

(assert (=> b!886165 m!1131639))

(declare-fun m!1131823 () Bool)

(assert (=> b!886165 m!1131823))

(assert (=> b!886167 m!1131803))

(assert (=> b!886167 m!1131803))

(assert (=> b!886167 m!1131805))

(assert (=> b!886157 m!1131809))

(assert (=> b!885849 d!276912))

(declare-fun d!276914 () Bool)

(assert (=> d!276914 (= (matchR!818 (regOne!5072 r!15766) (_1!6149 lt!331490)) (matchR!818 (removeUselessConcat!23 (regOne!5072 r!15766)) (_1!6149 lt!331490)))))

(declare-fun lt!331551 () Unit!14139)

(declare-fun choose!5276 (Regex!2280 List!9510) Unit!14139)

(assert (=> d!276914 (= lt!331551 (choose!5276 (regOne!5072 r!15766) (_1!6149 lt!331490)))))

(assert (=> d!276914 (validRegex!749 (regOne!5072 r!15766))))

(assert (=> d!276914 (= (lemmaRemoveUselessConcatSound!17 (regOne!5072 r!15766) (_1!6149 lt!331490)) lt!331551)))

(declare-fun bs!234718 () Bool)

(assert (= bs!234718 d!276914))

(declare-fun m!1131837 () Bool)

(assert (=> bs!234718 m!1131837))

(assert (=> bs!234718 m!1131639))

(assert (=> bs!234718 m!1131737))

(assert (=> bs!234718 m!1131667))

(assert (=> bs!234718 m!1131639))

(assert (=> bs!234718 m!1131641))

(assert (=> b!885849 d!276914))

(declare-fun b!886184 () Bool)

(declare-fun e!581114 () Bool)

(declare-fun call!51962 () Bool)

(assert (=> b!886184 (= e!581114 call!51962)))

(declare-fun b!886185 () Bool)

(declare-fun e!581118 () Bool)

(declare-fun e!581116 () Bool)

(assert (=> b!886185 (= e!581118 e!581116)))

(declare-fun c!143294 () Bool)

(assert (=> b!886185 (= c!143294 (is-Star!2280 lt!331493))))

(declare-fun call!51960 () Bool)

(declare-fun c!143295 () Bool)

(declare-fun bm!51955 () Bool)

(assert (=> bm!51955 (= call!51960 (validRegex!749 (ite c!143294 (reg!2609 lt!331493) (ite c!143295 (regOne!5073 lt!331493) (regOne!5072 lt!331493)))))))

(declare-fun b!886186 () Bool)

(declare-fun e!581113 () Bool)

(assert (=> b!886186 (= e!581113 call!51960)))

(declare-fun bm!51956 () Bool)

(assert (=> bm!51956 (= call!51962 (validRegex!749 (ite c!143295 (regTwo!5073 lt!331493) (regTwo!5072 lt!331493))))))

(declare-fun b!886187 () Bool)

(declare-fun res!403085 () Bool)

(declare-fun e!581119 () Bool)

(assert (=> b!886187 (=> (not res!403085) (not e!581119))))

(declare-fun call!51961 () Bool)

(assert (=> b!886187 (= res!403085 call!51961)))

(declare-fun e!581117 () Bool)

(assert (=> b!886187 (= e!581117 e!581119)))

(declare-fun b!886188 () Bool)

(assert (=> b!886188 (= e!581119 call!51962)))

(declare-fun b!886190 () Bool)

(assert (=> b!886190 (= e!581116 e!581117)))

(assert (=> b!886190 (= c!143295 (is-Union!2280 lt!331493))))

(declare-fun b!886191 () Bool)

(declare-fun e!581115 () Bool)

(assert (=> b!886191 (= e!581115 e!581114)))

(declare-fun res!403088 () Bool)

(assert (=> b!886191 (=> (not res!403088) (not e!581114))))

(assert (=> b!886191 (= res!403088 call!51961)))

(declare-fun b!886189 () Bool)

(assert (=> b!886189 (= e!581116 e!581113)))

(declare-fun res!403086 () Bool)

(assert (=> b!886189 (= res!403086 (not (nullable!586 (reg!2609 lt!331493))))))

(assert (=> b!886189 (=> (not res!403086) (not e!581113))))

(declare-fun d!276918 () Bool)

(declare-fun res!403089 () Bool)

(assert (=> d!276918 (=> res!403089 e!581118)))

(assert (=> d!276918 (= res!403089 (is-ElementMatch!2280 lt!331493))))

(assert (=> d!276918 (= (validRegex!749 lt!331493) e!581118)))

(declare-fun bm!51957 () Bool)

(assert (=> bm!51957 (= call!51961 call!51960)))

(declare-fun b!886192 () Bool)

(declare-fun res!403087 () Bool)

(assert (=> b!886192 (=> res!403087 e!581115)))

(assert (=> b!886192 (= res!403087 (not (is-Concat!4113 lt!331493)))))

(assert (=> b!886192 (= e!581117 e!581115)))

(assert (= (and d!276918 (not res!403089)) b!886185))

(assert (= (and b!886185 c!143294) b!886189))

(assert (= (and b!886185 (not c!143294)) b!886190))

(assert (= (and b!886189 res!403086) b!886186))

(assert (= (and b!886190 c!143295) b!886187))

(assert (= (and b!886190 (not c!143295)) b!886192))

(assert (= (and b!886187 res!403085) b!886188))

(assert (= (and b!886192 (not res!403087)) b!886191))

(assert (= (and b!886191 res!403088) b!886184))

(assert (= (or b!886188 b!886184) bm!51956))

(assert (= (or b!886187 b!886191) bm!51957))

(assert (= (or b!886186 bm!51957) bm!51955))

(declare-fun m!1131839 () Bool)

(assert (=> bm!51955 m!1131839))

(declare-fun m!1131841 () Bool)

(assert (=> bm!51956 m!1131841))

(declare-fun m!1131843 () Bool)

(assert (=> b!886189 m!1131843))

(assert (=> b!885849 d!276918))

(declare-fun b!886193 () Bool)

(declare-fun e!581120 () Bool)

(assert (=> b!886193 (= e!581120 (matchR!818 (derivativeStep!398 lt!331493 (head!1551 (_2!6149 lt!331490))) (tail!1113 (_2!6149 lt!331490))))))

(declare-fun b!886194 () Bool)

(declare-fun e!581122 () Bool)

(assert (=> b!886194 (= e!581122 (= (head!1551 (_2!6149 lt!331490)) (c!143229 lt!331493)))))

(declare-fun b!886195 () Bool)

(declare-fun e!581121 () Bool)

(assert (=> b!886195 (= e!581121 (not (= (head!1551 (_2!6149 lt!331490)) (c!143229 lt!331493))))))

(declare-fun b!886196 () Bool)

(declare-fun res!403097 () Bool)

(assert (=> b!886196 (=> (not res!403097) (not e!581122))))

(declare-fun call!51963 () Bool)

(assert (=> b!886196 (= res!403097 (not call!51963))))

(declare-fun d!276920 () Bool)

(declare-fun e!581124 () Bool)

(assert (=> d!276920 e!581124))

(declare-fun c!143298 () Bool)

(assert (=> d!276920 (= c!143298 (is-EmptyExpr!2280 lt!331493))))

(declare-fun lt!331552 () Bool)

(assert (=> d!276920 (= lt!331552 e!581120)))

(declare-fun c!143296 () Bool)

(assert (=> d!276920 (= c!143296 (isEmpty!5701 (_2!6149 lt!331490)))))

(assert (=> d!276920 (validRegex!749 lt!331493)))

(assert (=> d!276920 (= (matchR!818 lt!331493 (_2!6149 lt!331490)) lt!331552)))

(declare-fun b!886197 () Bool)

(declare-fun e!581123 () Bool)

(assert (=> b!886197 (= e!581124 e!581123)))

(declare-fun c!143297 () Bool)

(assert (=> b!886197 (= c!143297 (is-EmptyLang!2280 lt!331493))))

(declare-fun b!886198 () Bool)

(declare-fun res!403096 () Bool)

(declare-fun e!581125 () Bool)

(assert (=> b!886198 (=> res!403096 e!581125)))

(assert (=> b!886198 (= res!403096 e!581122)))

(declare-fun res!403093 () Bool)

(assert (=> b!886198 (=> (not res!403093) (not e!581122))))

(assert (=> b!886198 (= res!403093 lt!331552)))

(declare-fun b!886199 () Bool)

(declare-fun e!581126 () Bool)

(assert (=> b!886199 (= e!581125 e!581126)))

(declare-fun res!403091 () Bool)

(assert (=> b!886199 (=> (not res!403091) (not e!581126))))

(assert (=> b!886199 (= res!403091 (not lt!331552))))

(declare-fun b!886200 () Bool)

(assert (=> b!886200 (= e!581126 e!581121)))

(declare-fun res!403094 () Bool)

(assert (=> b!886200 (=> res!403094 e!581121)))

(assert (=> b!886200 (= res!403094 call!51963)))

(declare-fun bm!51958 () Bool)

(assert (=> bm!51958 (= call!51963 (isEmpty!5701 (_2!6149 lt!331490)))))

(declare-fun b!886201 () Bool)

(assert (=> b!886201 (= e!581124 (= lt!331552 call!51963))))

(declare-fun b!886202 () Bool)

(assert (=> b!886202 (= e!581120 (nullable!586 lt!331493))))

(declare-fun b!886203 () Bool)

(declare-fun res!403090 () Bool)

(assert (=> b!886203 (=> res!403090 e!581125)))

(assert (=> b!886203 (= res!403090 (not (is-ElementMatch!2280 lt!331493)))))

(assert (=> b!886203 (= e!581123 e!581125)))

(declare-fun b!886204 () Bool)

(declare-fun res!403095 () Bool)

(assert (=> b!886204 (=> res!403095 e!581121)))

(assert (=> b!886204 (= res!403095 (not (isEmpty!5701 (tail!1113 (_2!6149 lt!331490)))))))

(declare-fun b!886205 () Bool)

(assert (=> b!886205 (= e!581123 (not lt!331552))))

(declare-fun b!886206 () Bool)

(declare-fun res!403092 () Bool)

(assert (=> b!886206 (=> (not res!403092) (not e!581122))))

(assert (=> b!886206 (= res!403092 (isEmpty!5701 (tail!1113 (_2!6149 lt!331490))))))

(assert (= (and d!276920 c!143296) b!886202))

(assert (= (and d!276920 (not c!143296)) b!886193))

(assert (= (and d!276920 c!143298) b!886201))

(assert (= (and d!276920 (not c!143298)) b!886197))

(assert (= (and b!886197 c!143297) b!886205))

(assert (= (and b!886197 (not c!143297)) b!886203))

(assert (= (and b!886203 (not res!403090)) b!886198))

(assert (= (and b!886198 res!403093) b!886196))

(assert (= (and b!886196 res!403097) b!886206))

(assert (= (and b!886206 res!403092) b!886194))

(assert (= (and b!886198 (not res!403096)) b!886199))

(assert (= (and b!886199 res!403091) b!886200))

(assert (= (and b!886200 (not res!403094)) b!886204))

(assert (= (and b!886204 (not res!403095)) b!886195))

(assert (= (or b!886201 b!886196 b!886200) bm!51958))

(assert (=> b!886206 m!1131713))

(assert (=> b!886206 m!1131713))

(assert (=> b!886206 m!1131715))

(assert (=> bm!51958 m!1131717))

(assert (=> b!886193 m!1131719))

(assert (=> b!886193 m!1131719))

(declare-fun m!1131845 () Bool)

(assert (=> b!886193 m!1131845))

(assert (=> b!886193 m!1131713))

(assert (=> b!886193 m!1131845))

(assert (=> b!886193 m!1131713))

(declare-fun m!1131847 () Bool)

(assert (=> b!886193 m!1131847))

(assert (=> b!886195 m!1131719))

(assert (=> d!276920 m!1131717))

(assert (=> d!276920 m!1131635))

(declare-fun m!1131849 () Bool)

(assert (=> b!886202 m!1131849))

(assert (=> b!886204 m!1131713))

(assert (=> b!886204 m!1131713))

(assert (=> b!886204 m!1131715))

(assert (=> b!886194 m!1131719))

(assert (=> b!885849 d!276920))

(declare-fun b!886243 () Bool)

(declare-fun e!581148 () Regex!2280)

(declare-fun e!581147 () Regex!2280)

(assert (=> b!886243 (= e!581148 e!581147)))

(declare-fun c!143315 () Bool)

(assert (=> b!886243 (= c!143315 (is-Union!2280 (regTwo!5072 r!15766)))))

(declare-fun b!886244 () Bool)

(declare-fun e!581146 () Bool)

(declare-fun lt!331559 () Regex!2280)

(assert (=> b!886244 (= e!581146 (= (nullable!586 lt!331559) (nullable!586 (regTwo!5072 r!15766))))))

(declare-fun b!886245 () Bool)

(declare-fun call!51979 () Regex!2280)

(declare-fun call!51976 () Regex!2280)

(assert (=> b!886245 (= e!581147 (Union!2280 call!51979 call!51976))))

(declare-fun b!886246 () Bool)

(declare-fun e!581150 () Regex!2280)

(assert (=> b!886246 (= e!581150 (Star!2280 call!51976))))

(declare-fun c!143313 () Bool)

(declare-fun bm!51970 () Bool)

(declare-fun c!143312 () Bool)

(declare-fun call!51975 () Regex!2280)

(assert (=> bm!51970 (= call!51975 (removeUselessConcat!23 (ite (or c!143312 c!143313) (regOne!5072 (regTwo!5072 r!15766)) (ite c!143315 (regTwo!5073 (regTwo!5072 r!15766)) (reg!2609 (regTwo!5072 r!15766))))))))

(declare-fun b!886247 () Bool)

(declare-fun call!51978 () Regex!2280)

(assert (=> b!886247 (= e!581148 (Concat!4113 call!51978 call!51979))))

(declare-fun bm!51971 () Bool)

(declare-fun call!51977 () Regex!2280)

(assert (=> bm!51971 (= call!51979 call!51977)))

(declare-fun d!276922 () Bool)

(assert (=> d!276922 e!581146))

(declare-fun res!403108 () Bool)

(assert (=> d!276922 (=> (not res!403108) (not e!581146))))

(assert (=> d!276922 (= res!403108 (validRegex!749 lt!331559))))

(declare-fun e!581151 () Regex!2280)

(assert (=> d!276922 (= lt!331559 e!581151)))

(declare-fun c!143314 () Bool)

(assert (=> d!276922 (= c!143314 (and (is-Concat!4113 (regTwo!5072 r!15766)) (is-EmptyExpr!2280 (regOne!5072 (regTwo!5072 r!15766)))))))

(assert (=> d!276922 (validRegex!749 (regTwo!5072 r!15766))))

(assert (=> d!276922 (= (removeUselessConcat!23 (regTwo!5072 r!15766)) lt!331559)))

(declare-fun b!886248 () Bool)

(declare-fun e!581149 () Regex!2280)

(assert (=> b!886248 (= e!581151 e!581149)))

(assert (=> b!886248 (= c!143312 (and (is-Concat!4113 (regTwo!5072 r!15766)) (is-EmptyExpr!2280 (regTwo!5072 (regTwo!5072 r!15766)))))))

(declare-fun b!886249 () Bool)

(assert (=> b!886249 (= e!581149 call!51975)))

(declare-fun bm!51972 () Bool)

(assert (=> bm!51972 (= call!51978 call!51975)))

(declare-fun b!886250 () Bool)

(assert (=> b!886250 (= e!581150 (regTwo!5072 r!15766))))

(declare-fun bm!51973 () Bool)

(assert (=> bm!51973 (= call!51976 call!51978)))

(declare-fun b!886251 () Bool)

(declare-fun c!143316 () Bool)

(assert (=> b!886251 (= c!143316 (is-Star!2280 (regTwo!5072 r!15766)))))

(assert (=> b!886251 (= e!581147 e!581150)))

(declare-fun b!886252 () Bool)

(assert (=> b!886252 (= e!581151 call!51977)))

(declare-fun b!886253 () Bool)

(assert (=> b!886253 (= c!143313 (is-Concat!4113 (regTwo!5072 r!15766)))))

(assert (=> b!886253 (= e!581149 e!581148)))

(declare-fun bm!51974 () Bool)

(assert (=> bm!51974 (= call!51977 (removeUselessConcat!23 (ite (or c!143314 c!143313) (regTwo!5072 (regTwo!5072 r!15766)) (regOne!5073 (regTwo!5072 r!15766)))))))

(assert (= (and d!276922 c!143314) b!886252))

(assert (= (and d!276922 (not c!143314)) b!886248))

(assert (= (and b!886248 c!143312) b!886249))

(assert (= (and b!886248 (not c!143312)) b!886253))

(assert (= (and b!886253 c!143313) b!886247))

(assert (= (and b!886253 (not c!143313)) b!886243))

(assert (= (and b!886243 c!143315) b!886245))

(assert (= (and b!886243 (not c!143315)) b!886251))

(assert (= (and b!886251 c!143316) b!886246))

(assert (= (and b!886251 (not c!143316)) b!886250))

(assert (= (or b!886245 b!886246) bm!51973))

(assert (= (or b!886247 b!886245) bm!51971))

(assert (= (or b!886247 bm!51973) bm!51972))

(assert (= (or b!886249 bm!51972) bm!51970))

(assert (= (or b!886252 bm!51971) bm!51974))

(assert (= (and d!276922 res!403108) b!886244))

(declare-fun m!1131869 () Bool)

(assert (=> b!886244 m!1131869))

(assert (=> b!886244 m!1131727))

(declare-fun m!1131871 () Bool)

(assert (=> bm!51970 m!1131871))

(declare-fun m!1131873 () Bool)

(assert (=> d!276922 m!1131873))

(assert (=> d!276922 m!1131725))

(declare-fun m!1131875 () Bool)

(assert (=> bm!51974 m!1131875))

(assert (=> b!885849 d!276922))

(declare-fun b!886268 () Bool)

(declare-fun e!581161 () Regex!2280)

(declare-fun e!581160 () Regex!2280)

(assert (=> b!886268 (= e!581161 e!581160)))

(declare-fun c!143323 () Bool)

(assert (=> b!886268 (= c!143323 (is-Union!2280 (regOne!5072 r!15766)))))

(declare-fun b!886269 () Bool)

(declare-fun e!581159 () Bool)

(declare-fun lt!331561 () Regex!2280)

(assert (=> b!886269 (= e!581159 (= (nullable!586 lt!331561) (nullable!586 (regOne!5072 r!15766))))))

(declare-fun b!886270 () Bool)

(declare-fun call!51985 () Regex!2280)

(declare-fun call!51982 () Regex!2280)

(assert (=> b!886270 (= e!581160 (Union!2280 call!51985 call!51982))))

(declare-fun b!886271 () Bool)

(declare-fun e!581163 () Regex!2280)

(assert (=> b!886271 (= e!581163 (Star!2280 call!51982))))

(declare-fun c!143320 () Bool)

(declare-fun c!143321 () Bool)

(declare-fun call!51981 () Regex!2280)

(declare-fun bm!51976 () Bool)

(assert (=> bm!51976 (= call!51981 (removeUselessConcat!23 (ite (or c!143320 c!143321) (regOne!5072 (regOne!5072 r!15766)) (ite c!143323 (regTwo!5073 (regOne!5072 r!15766)) (reg!2609 (regOne!5072 r!15766))))))))

(declare-fun b!886272 () Bool)

(declare-fun call!51984 () Regex!2280)

(assert (=> b!886272 (= e!581161 (Concat!4113 call!51984 call!51985))))

(declare-fun bm!51977 () Bool)

(declare-fun call!51983 () Regex!2280)

(assert (=> bm!51977 (= call!51985 call!51983)))

(declare-fun d!276930 () Bool)

(assert (=> d!276930 e!581159))

(declare-fun res!403117 () Bool)

(assert (=> d!276930 (=> (not res!403117) (not e!581159))))

(assert (=> d!276930 (= res!403117 (validRegex!749 lt!331561))))

(declare-fun e!581164 () Regex!2280)

(assert (=> d!276930 (= lt!331561 e!581164)))

(declare-fun c!143322 () Bool)

(assert (=> d!276930 (= c!143322 (and (is-Concat!4113 (regOne!5072 r!15766)) (is-EmptyExpr!2280 (regOne!5072 (regOne!5072 r!15766)))))))

(assert (=> d!276930 (validRegex!749 (regOne!5072 r!15766))))

(assert (=> d!276930 (= (removeUselessConcat!23 (regOne!5072 r!15766)) lt!331561)))

(declare-fun b!886273 () Bool)

(declare-fun e!581162 () Regex!2280)

(assert (=> b!886273 (= e!581164 e!581162)))

(assert (=> b!886273 (= c!143320 (and (is-Concat!4113 (regOne!5072 r!15766)) (is-EmptyExpr!2280 (regTwo!5072 (regOne!5072 r!15766)))))))

(declare-fun b!886274 () Bool)

(assert (=> b!886274 (= e!581162 call!51981)))

(declare-fun bm!51978 () Bool)

(assert (=> bm!51978 (= call!51984 call!51981)))

(declare-fun b!886275 () Bool)

(assert (=> b!886275 (= e!581163 (regOne!5072 r!15766))))

(declare-fun bm!51979 () Bool)

(assert (=> bm!51979 (= call!51982 call!51984)))

(declare-fun b!886276 () Bool)

(declare-fun c!143324 () Bool)

(assert (=> b!886276 (= c!143324 (is-Star!2280 (regOne!5072 r!15766)))))

(assert (=> b!886276 (= e!581160 e!581163)))

(declare-fun b!886277 () Bool)

(assert (=> b!886277 (= e!581164 call!51983)))

(declare-fun b!886278 () Bool)

(assert (=> b!886278 (= c!143321 (is-Concat!4113 (regOne!5072 r!15766)))))

(assert (=> b!886278 (= e!581162 e!581161)))

(declare-fun bm!51980 () Bool)

(assert (=> bm!51980 (= call!51983 (removeUselessConcat!23 (ite (or c!143322 c!143321) (regTwo!5072 (regOne!5072 r!15766)) (regOne!5073 (regOne!5072 r!15766)))))))

(assert (= (and d!276930 c!143322) b!886277))

(assert (= (and d!276930 (not c!143322)) b!886273))

(assert (= (and b!886273 c!143320) b!886274))

(assert (= (and b!886273 (not c!143320)) b!886278))

(assert (= (and b!886278 c!143321) b!886272))

(assert (= (and b!886278 (not c!143321)) b!886268))

(assert (= (and b!886268 c!143323) b!886270))

(assert (= (and b!886268 (not c!143323)) b!886276))

(assert (= (and b!886276 c!143324) b!886271))

(assert (= (and b!886276 (not c!143324)) b!886275))

(assert (= (or b!886270 b!886271) bm!51979))

(assert (= (or b!886272 b!886270) bm!51977))

(assert (= (or b!886272 bm!51979) bm!51978))

(assert (= (or b!886274 bm!51978) bm!51976))

(assert (= (or b!886277 bm!51977) bm!51980))

(assert (= (and d!276930 res!403117) b!886269))

(declare-fun m!1131877 () Bool)

(assert (=> b!886269 m!1131877))

(assert (=> b!886269 m!1131815))

(declare-fun m!1131879 () Bool)

(assert (=> bm!51976 m!1131879))

(declare-fun m!1131881 () Bool)

(assert (=> d!276930 m!1131881))

(assert (=> d!276930 m!1131737))

(declare-fun m!1131883 () Bool)

(assert (=> bm!51980 m!1131883))

(assert (=> b!885849 d!276930))

(declare-fun d!276932 () Bool)

(assert (=> d!276932 (= (matchR!818 (regTwo!5072 r!15766) (_2!6149 lt!331490)) (matchR!818 (removeUselessConcat!23 (regTwo!5072 r!15766)) (_2!6149 lt!331490)))))

(declare-fun lt!331562 () Unit!14139)

(assert (=> d!276932 (= lt!331562 (choose!5276 (regTwo!5072 r!15766) (_2!6149 lt!331490)))))

(assert (=> d!276932 (validRegex!749 (regTwo!5072 r!15766))))

(assert (=> d!276932 (= (lemmaRemoveUselessConcatSound!17 (regTwo!5072 r!15766) (_2!6149 lt!331490)) lt!331562)))

(declare-fun bs!234720 () Bool)

(assert (= bs!234720 d!276932))

(declare-fun m!1131885 () Bool)

(assert (=> bs!234720 m!1131885))

(assert (=> bs!234720 m!1131643))

(assert (=> bs!234720 m!1131725))

(assert (=> bs!234720 m!1131649))

(assert (=> bs!234720 m!1131643))

(declare-fun m!1131887 () Bool)

(assert (=> bs!234720 m!1131887))

(assert (=> b!885849 d!276932))

(declare-fun e!581167 () Bool)

(assert (=> b!885854 (= tp!279324 e!581167)))

(declare-fun b!886291 () Bool)

(declare-fun tp!279358 () Bool)

(assert (=> b!886291 (= e!581167 tp!279358)))

(declare-fun b!886292 () Bool)

(declare-fun tp!279359 () Bool)

(declare-fun tp!279355 () Bool)

(assert (=> b!886292 (= e!581167 (and tp!279359 tp!279355))))

(declare-fun b!886289 () Bool)

(assert (=> b!886289 (= e!581167 tp_is_empty!4203)))

(declare-fun b!886290 () Bool)

(declare-fun tp!279357 () Bool)

(declare-fun tp!279356 () Bool)

(assert (=> b!886290 (= e!581167 (and tp!279357 tp!279356))))

(assert (= (and b!885854 (is-ElementMatch!2280 (regOne!5072 r!15766))) b!886289))

(assert (= (and b!885854 (is-Concat!4113 (regOne!5072 r!15766))) b!886290))

(assert (= (and b!885854 (is-Star!2280 (regOne!5072 r!15766))) b!886291))

(assert (= (and b!885854 (is-Union!2280 (regOne!5072 r!15766))) b!886292))

(declare-fun e!581168 () Bool)

(assert (=> b!885854 (= tp!279321 e!581168)))

(declare-fun b!886295 () Bool)

(declare-fun tp!279363 () Bool)

(assert (=> b!886295 (= e!581168 tp!279363)))

(declare-fun b!886296 () Bool)

(declare-fun tp!279364 () Bool)

(declare-fun tp!279360 () Bool)

(assert (=> b!886296 (= e!581168 (and tp!279364 tp!279360))))

(declare-fun b!886293 () Bool)

(assert (=> b!886293 (= e!581168 tp_is_empty!4203)))

(declare-fun b!886294 () Bool)

(declare-fun tp!279362 () Bool)

(declare-fun tp!279361 () Bool)

(assert (=> b!886294 (= e!581168 (and tp!279362 tp!279361))))

(assert (= (and b!885854 (is-ElementMatch!2280 (regTwo!5072 r!15766))) b!886293))

(assert (= (and b!885854 (is-Concat!4113 (regTwo!5072 r!15766))) b!886294))

(assert (= (and b!885854 (is-Star!2280 (regTwo!5072 r!15766))) b!886295))

(assert (= (and b!885854 (is-Union!2280 (regTwo!5072 r!15766))) b!886296))

(declare-fun e!581169 () Bool)

(assert (=> b!885848 (= tp!279325 e!581169)))

(declare-fun b!886299 () Bool)

(declare-fun tp!279368 () Bool)

(assert (=> b!886299 (= e!581169 tp!279368)))

(declare-fun b!886300 () Bool)

(declare-fun tp!279369 () Bool)

(declare-fun tp!279365 () Bool)

(assert (=> b!886300 (= e!581169 (and tp!279369 tp!279365))))

(declare-fun b!886297 () Bool)

(assert (=> b!886297 (= e!581169 tp_is_empty!4203)))

(declare-fun b!886298 () Bool)

(declare-fun tp!279367 () Bool)

(declare-fun tp!279366 () Bool)

(assert (=> b!886298 (= e!581169 (and tp!279367 tp!279366))))

(assert (= (and b!885848 (is-ElementMatch!2280 (regOne!5073 r!15766))) b!886297))

(assert (= (and b!885848 (is-Concat!4113 (regOne!5073 r!15766))) b!886298))

(assert (= (and b!885848 (is-Star!2280 (regOne!5073 r!15766))) b!886299))

(assert (= (and b!885848 (is-Union!2280 (regOne!5073 r!15766))) b!886300))

(declare-fun e!581170 () Bool)

(assert (=> b!885848 (= tp!279323 e!581170)))

(declare-fun b!886303 () Bool)

(declare-fun tp!279373 () Bool)

(assert (=> b!886303 (= e!581170 tp!279373)))

(declare-fun b!886304 () Bool)

(declare-fun tp!279374 () Bool)

(declare-fun tp!279370 () Bool)

(assert (=> b!886304 (= e!581170 (and tp!279374 tp!279370))))

(declare-fun b!886301 () Bool)

(assert (=> b!886301 (= e!581170 tp_is_empty!4203)))

(declare-fun b!886302 () Bool)

(declare-fun tp!279372 () Bool)

(declare-fun tp!279371 () Bool)

(assert (=> b!886302 (= e!581170 (and tp!279372 tp!279371))))

(assert (= (and b!885848 (is-ElementMatch!2280 (regTwo!5073 r!15766))) b!886301))

(assert (= (and b!885848 (is-Concat!4113 (regTwo!5073 r!15766))) b!886302))

(assert (= (and b!885848 (is-Star!2280 (regTwo!5073 r!15766))) b!886303))

(assert (= (and b!885848 (is-Union!2280 (regTwo!5073 r!15766))) b!886304))

(declare-fun e!581171 () Bool)

(assert (=> b!885846 (= tp!279326 e!581171)))

(declare-fun b!886307 () Bool)

(declare-fun tp!279378 () Bool)

(assert (=> b!886307 (= e!581171 tp!279378)))

(declare-fun b!886308 () Bool)

(declare-fun tp!279379 () Bool)

(declare-fun tp!279375 () Bool)

(assert (=> b!886308 (= e!581171 (and tp!279379 tp!279375))))

(declare-fun b!886305 () Bool)

(assert (=> b!886305 (= e!581171 tp_is_empty!4203)))

(declare-fun b!886306 () Bool)

(declare-fun tp!279377 () Bool)

(declare-fun tp!279376 () Bool)

(assert (=> b!886306 (= e!581171 (and tp!279377 tp!279376))))

(assert (= (and b!885846 (is-ElementMatch!2280 (reg!2609 r!15766))) b!886305))

(assert (= (and b!885846 (is-Concat!4113 (reg!2609 r!15766))) b!886306))

(assert (= (and b!885846 (is-Star!2280 (reg!2609 r!15766))) b!886307))

(assert (= (and b!885846 (is-Union!2280 (reg!2609 r!15766))) b!886308))

(declare-fun b!886313 () Bool)

(declare-fun e!581174 () Bool)

(declare-fun tp!279382 () Bool)

(assert (=> b!886313 (= e!581174 (and tp_is_empty!4203 tp!279382))))

(assert (=> b!885851 (= tp!279322 e!581174)))

(assert (= (and b!885851 (is-Cons!9494 (t!100556 s!10566))) b!886313))

(push 1)

(assert (not d!276914))

(assert (not b!886290))

(assert (not b!886053))

(assert (not bm!51958))

(assert (not b!886204))

(assert (not b!886269))

(assert (not d!276896))

(assert (not b!886307))

(assert (not b!886143))

(assert (not b!886120))

(assert (not b!886300))

(assert (not b!886194))

(assert (not b!885945))

(assert (not d!276892))

(assert (not bm!51953))

(assert (not bm!51951))

(assert (not d!276920))

(assert (not bm!51948))

(assert (not b!886298))

(assert (not b!886304))

(assert (not bm!51956))

(assert (not bm!51941))

(assert (not b!886296))

(assert (not b!886128))

(assert (not b!886009))

(assert (not b!886294))

(assert (not b!886005))

(assert (not bm!51980))

(assert (not b!886202))

(assert (not d!276930))

(assert (not d!276882))

(assert (not b!886165))

(assert (not d!276906))

(assert (not b!886153))

(assert (not d!276894))

(assert (not b!886158))

(assert (not b!886141))

(assert (not b!886157))

(assert (not b!886244))

(assert (not d!276888))

(assert (not b!886292))

(assert (not bm!51955))

(assert (not b!886151))

(assert (not b!886167))

(assert (not b!886313))

(assert (not b!886155))

(assert (not b!886007))

(assert (not d!276886))

(assert (not b!886306))

(assert (not bm!51952))

(assert (not b!886139))

(assert (not b!886189))

(assert (not bm!51940))

(assert (not b!886003))

(assert (not b!886303))

(assert (not bm!51976))

(assert (not b!885947))

(assert (not b!886129))

(assert (not b!885935))

(assert (not b!885936))

(assert (not b!886193))

(assert (not b!886169))

(assert (not b!886299))

(assert (not bm!51970))

(assert (not b!886119))

(assert (not b!885943))

(assert (not b!886156))

(assert (not d!276922))

(assert (not b!886195))

(assert (not b!886006))

(assert (not d!276932))

(assert (not b!885934))

(assert (not b!886302))

(assert (not b!886291))

(assert (not b!886308))

(assert (not b!886137))

(assert tp_is_empty!4203)

(assert (not b!886144))

(assert (not d!276912))

(assert (not b!886130))

(assert (not b!886008))

(assert (not d!276904))

(assert (not b!886295))

(assert (not b!886206))

(assert (not bm!51947))

(assert (not bm!51974))

(assert (not b!886142))

(assert (not bm!51927))

(assert (not d!276880))

(assert (not d!276908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

