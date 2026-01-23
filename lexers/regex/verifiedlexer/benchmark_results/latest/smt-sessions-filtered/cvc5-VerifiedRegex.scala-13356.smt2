; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724240 () Bool)

(assert start!724240)

(declare-fun b!7469844 () Bool)

(assert (=> b!7469844 true))

(assert (=> b!7469844 true))

(assert (=> b!7469844 true))

(declare-fun lambda!462549 () Int)

(declare-fun lambda!462548 () Int)

(assert (=> b!7469844 (not (= lambda!462549 lambda!462548))))

(assert (=> b!7469844 true))

(assert (=> b!7469844 true))

(assert (=> b!7469844 true))

(declare-fun bs!1930952 () Bool)

(declare-fun b!7469857 () Bool)

(assert (= bs!1930952 (and b!7469857 b!7469844)))

(declare-datatypes ((C!39422 0))(
  ( (C!39423 (val!30109 Int)) )
))
(declare-datatypes ((Regex!19574 0))(
  ( (ElementMatch!19574 (c!1380305 C!39422)) (Concat!28419 (regOne!39660 Regex!19574) (regTwo!39660 Regex!19574)) (EmptyExpr!19574) (Star!19574 (reg!19903 Regex!19574)) (EmptyLang!19574) (Union!19574 (regOne!39661 Regex!19574) (regTwo!39661 Regex!19574)) )
))
(declare-fun r2!5783 () Regex!19574)

(declare-fun lambda!462550 () Int)

(declare-fun lt!2625372 () Regex!19574)

(assert (=> bs!1930952 (= (= r2!5783 lt!2625372) (= lambda!462550 lambda!462548))))

(assert (=> bs!1930952 (not (= lambda!462550 lambda!462549))))

(assert (=> b!7469857 true))

(assert (=> b!7469857 true))

(assert (=> b!7469857 true))

(declare-fun lambda!462551 () Int)

(assert (=> bs!1930952 (not (= lambda!462551 lambda!462548))))

(assert (=> bs!1930952 (= (= r2!5783 lt!2625372) (= lambda!462551 lambda!462549))))

(assert (=> b!7469857 (not (= lambda!462551 lambda!462550))))

(assert (=> b!7469857 true))

(assert (=> b!7469857 true))

(assert (=> b!7469857 true))

(declare-fun e!4456844 () Bool)

(declare-fun e!4456845 () Bool)

(assert (=> b!7469844 (= e!4456844 e!4456845)))

(declare-fun res!2996621 () Bool)

(assert (=> b!7469844 (=> res!2996621 e!4456845)))

(declare-fun lt!2625379 () Bool)

(declare-fun lt!2625386 () Bool)

(assert (=> b!7469844 (= res!2996621 (or lt!2625379 (not lt!2625386)))))

(declare-fun Exists!4193 (Int) Bool)

(assert (=> b!7469844 (= (Exists!4193 lambda!462548) (Exists!4193 lambda!462549))))

(declare-datatypes ((List!72290 0))(
  ( (Nil!72166) (Cons!72166 (h!78614 C!39422) (t!386859 List!72290)) )
))
(declare-fun s!13591 () List!72290)

(declare-datatypes ((Unit!165983 0))(
  ( (Unit!165984) )
))
(declare-fun lt!2625380 () Unit!165983)

(declare-fun rTail!78 () Regex!19574)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2527 (Regex!19574 Regex!19574 List!72290) Unit!165983)

(assert (=> b!7469844 (= lt!2625380 (lemmaExistCutMatchRandMatchRSpecEquivalent!2527 lt!2625372 rTail!78 s!13591))))

(assert (=> b!7469844 (= lt!2625379 (Exists!4193 lambda!462548))))

(declare-datatypes ((tuple2!68598 0))(
  ( (tuple2!68599 (_1!37602 List!72290) (_2!37602 List!72290)) )
))
(declare-datatypes ((Option!17131 0))(
  ( (None!17130) (Some!17130 (v!54259 tuple2!68598)) )
))
(declare-fun isDefined!13820 (Option!17131) Bool)

(declare-fun findConcatSeparation!3253 (Regex!19574 Regex!19574 List!72290 List!72290 List!72290) Option!17131)

(assert (=> b!7469844 (= lt!2625379 (isDefined!13820 (findConcatSeparation!3253 lt!2625372 rTail!78 Nil!72166 s!13591 s!13591)))))

(declare-fun lt!2625390 () Unit!165983)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3011 (Regex!19574 Regex!19574 List!72290) Unit!165983)

(assert (=> b!7469844 (= lt!2625390 (lemmaFindConcatSeparationEquivalentToExists!3011 lt!2625372 rTail!78 s!13591))))

(declare-fun b!7469845 () Bool)

(declare-fun e!4456850 () Bool)

(declare-fun tp!2165866 () Bool)

(declare-fun tp!2165860 () Bool)

(assert (=> b!7469845 (= e!4456850 (and tp!2165866 tp!2165860))))

(declare-fun b!7469846 () Bool)

(declare-fun e!4456847 () Bool)

(declare-fun tp!2165864 () Bool)

(declare-fun tp!2165863 () Bool)

(assert (=> b!7469846 (= e!4456847 (and tp!2165864 tp!2165863))))

(declare-fun b!7469847 () Bool)

(declare-fun e!4456843 () Bool)

(declare-fun tp!2165855 () Bool)

(declare-fun tp!2165858 () Bool)

(assert (=> b!7469847 (= e!4456843 (and tp!2165855 tp!2165858))))

(declare-fun b!7469848 () Bool)

(declare-fun res!2996622 () Bool)

(declare-fun e!4456849 () Bool)

(assert (=> b!7469848 (=> (not res!2996622) (not e!4456849))))

(declare-fun validRegex!10088 (Regex!19574) Bool)

(assert (=> b!7469848 (= res!2996622 (validRegex!10088 rTail!78))))

(declare-fun b!7469849 () Bool)

(declare-fun e!4456846 () Bool)

(declare-fun tp_is_empty!49437 () Bool)

(declare-fun tp!2165854 () Bool)

(assert (=> b!7469849 (= e!4456846 (and tp_is_empty!49437 tp!2165854))))

(declare-fun b!7469850 () Bool)

(declare-fun tp!2165853 () Bool)

(declare-fun tp!2165856 () Bool)

(assert (=> b!7469850 (= e!4456843 (and tp!2165853 tp!2165856))))

(declare-fun b!7469851 () Bool)

(declare-fun tp!2165859 () Bool)

(declare-fun tp!2165857 () Bool)

(assert (=> b!7469851 (= e!4456850 (and tp!2165859 tp!2165857))))

(declare-fun b!7469852 () Bool)

(declare-fun res!2996626 () Bool)

(assert (=> b!7469852 (=> (not res!2996626) (not e!4456849))))

(assert (=> b!7469852 (= res!2996626 (validRegex!10088 r2!5783))))

(declare-fun b!7469854 () Bool)

(declare-fun tp!2165852 () Bool)

(assert (=> b!7469854 (= e!4456843 tp!2165852)))

(declare-fun b!7469853 () Bool)

(assert (=> b!7469853 (= e!4456849 (not e!4456844))))

(declare-fun res!2996624 () Bool)

(assert (=> b!7469853 (=> res!2996624 e!4456844)))

(declare-fun lt!2625389 () Bool)

(assert (=> b!7469853 (= res!2996624 lt!2625389)))

(declare-fun lt!2625373 () Regex!19574)

(declare-fun matchRSpec!4253 (Regex!19574 List!72290) Bool)

(assert (=> b!7469853 (= lt!2625386 (matchRSpec!4253 lt!2625373 s!13591))))

(declare-fun matchR!9338 (Regex!19574 List!72290) Bool)

(assert (=> b!7469853 (= lt!2625386 (matchR!9338 lt!2625373 s!13591))))

(declare-fun lt!2625385 () Unit!165983)

(declare-fun mainMatchTheorem!4247 (Regex!19574 List!72290) Unit!165983)

(assert (=> b!7469853 (= lt!2625385 (mainMatchTheorem!4247 lt!2625373 s!13591))))

(declare-fun lt!2625377 () Regex!19574)

(assert (=> b!7469853 (= lt!2625389 (matchRSpec!4253 lt!2625377 s!13591))))

(assert (=> b!7469853 (= lt!2625389 (matchR!9338 lt!2625377 s!13591))))

(declare-fun lt!2625384 () Unit!165983)

(assert (=> b!7469853 (= lt!2625384 (mainMatchTheorem!4247 lt!2625377 s!13591))))

(declare-fun lt!2625388 () Regex!19574)

(declare-fun lt!2625376 () Regex!19574)

(assert (=> b!7469853 (= lt!2625373 (Union!19574 lt!2625388 lt!2625376))))

(assert (=> b!7469853 (= lt!2625376 (Concat!28419 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19574)

(assert (=> b!7469853 (= lt!2625388 (Concat!28419 r1!5845 rTail!78))))

(assert (=> b!7469853 (= lt!2625377 (Concat!28419 lt!2625372 rTail!78))))

(assert (=> b!7469853 (= lt!2625372 (Union!19574 r1!5845 r2!5783))))

(declare-fun res!2996623 () Bool)

(assert (=> start!724240 (=> (not res!2996623) (not e!4456849))))

(assert (=> start!724240 (= res!2996623 (validRegex!10088 r1!5845))))

(assert (=> start!724240 e!4456849))

(assert (=> start!724240 e!4456850))

(assert (=> start!724240 e!4456847))

(assert (=> start!724240 e!4456843))

(assert (=> start!724240 e!4456846))

(declare-fun b!7469855 () Bool)

(declare-fun tp!2165861 () Bool)

(assert (=> b!7469855 (= e!4456847 tp!2165861)))

(declare-fun b!7469856 () Bool)

(assert (=> b!7469856 (= e!4456847 tp_is_empty!49437)))

(declare-fun e!4456848 () Bool)

(declare-fun lt!2625374 () Bool)

(assert (=> b!7469857 (= e!4456848 lt!2625374)))

(assert (=> b!7469857 (= (Exists!4193 lambda!462550) (Exists!4193 lambda!462551))))

(declare-fun lt!2625383 () Unit!165983)

(assert (=> b!7469857 (= lt!2625383 (lemmaExistCutMatchRandMatchRSpecEquivalent!2527 r2!5783 rTail!78 s!13591))))

(assert (=> b!7469857 (= lt!2625374 (Exists!4193 lambda!462550))))

(assert (=> b!7469857 (= lt!2625374 (isDefined!13820 (findConcatSeparation!3253 r2!5783 rTail!78 Nil!72166 s!13591 s!13591)))))

(declare-fun lt!2625378 () Unit!165983)

(assert (=> b!7469857 (= lt!2625378 (lemmaFindConcatSeparationEquivalentToExists!3011 r2!5783 rTail!78 s!13591))))

(declare-fun b!7469858 () Bool)

(assert (=> b!7469858 (= e!4456850 tp_is_empty!49437)))

(declare-fun b!7469859 () Bool)

(assert (=> b!7469859 (= e!4456843 tp_is_empty!49437)))

(declare-fun b!7469860 () Bool)

(declare-fun tp!2165865 () Bool)

(assert (=> b!7469860 (= e!4456850 tp!2165865)))

(declare-fun b!7469861 () Bool)

(declare-fun tp!2165862 () Bool)

(declare-fun tp!2165867 () Bool)

(assert (=> b!7469861 (= e!4456847 (and tp!2165862 tp!2165867))))

(declare-fun b!7469862 () Bool)

(assert (=> b!7469862 (= e!4456845 e!4456848)))

(declare-fun res!2996625 () Bool)

(assert (=> b!7469862 (=> res!2996625 e!4456848)))

(declare-fun lt!2625381 () Bool)

(declare-fun lt!2625375 () Bool)

(assert (=> b!7469862 (= res!2996625 (or (and (not lt!2625381) (not lt!2625375)) lt!2625381))))

(assert (=> b!7469862 (= lt!2625375 (matchRSpec!4253 lt!2625376 s!13591))))

(assert (=> b!7469862 (= lt!2625375 (matchR!9338 lt!2625376 s!13591))))

(declare-fun lt!2625382 () Unit!165983)

(assert (=> b!7469862 (= lt!2625382 (mainMatchTheorem!4247 lt!2625376 s!13591))))

(assert (=> b!7469862 (= lt!2625381 (matchRSpec!4253 lt!2625388 s!13591))))

(assert (=> b!7469862 (= lt!2625381 (matchR!9338 lt!2625388 s!13591))))

(declare-fun lt!2625387 () Unit!165983)

(assert (=> b!7469862 (= lt!2625387 (mainMatchTheorem!4247 lt!2625388 s!13591))))

(assert (= (and start!724240 res!2996623) b!7469852))

(assert (= (and b!7469852 res!2996626) b!7469848))

(assert (= (and b!7469848 res!2996622) b!7469853))

(assert (= (and b!7469853 (not res!2996624)) b!7469844))

(assert (= (and b!7469844 (not res!2996621)) b!7469862))

(assert (= (and b!7469862 (not res!2996625)) b!7469857))

(assert (= (and start!724240 (is-ElementMatch!19574 r1!5845)) b!7469858))

(assert (= (and start!724240 (is-Concat!28419 r1!5845)) b!7469845))

(assert (= (and start!724240 (is-Star!19574 r1!5845)) b!7469860))

(assert (= (and start!724240 (is-Union!19574 r1!5845)) b!7469851))

(assert (= (and start!724240 (is-ElementMatch!19574 r2!5783)) b!7469856))

(assert (= (and start!724240 (is-Concat!28419 r2!5783)) b!7469846))

(assert (= (and start!724240 (is-Star!19574 r2!5783)) b!7469855))

(assert (= (and start!724240 (is-Union!19574 r2!5783)) b!7469861))

(assert (= (and start!724240 (is-ElementMatch!19574 rTail!78)) b!7469859))

(assert (= (and start!724240 (is-Concat!28419 rTail!78)) b!7469850))

(assert (= (and start!724240 (is-Star!19574 rTail!78)) b!7469854))

(assert (= (and start!724240 (is-Union!19574 rTail!78)) b!7469847))

(assert (= (and start!724240 (is-Cons!72166 s!13591)) b!7469849))

(declare-fun m!8067252 () Bool)

(assert (=> start!724240 m!8067252))

(declare-fun m!8067254 () Bool)

(assert (=> b!7469862 m!8067254))

(declare-fun m!8067256 () Bool)

(assert (=> b!7469862 m!8067256))

(declare-fun m!8067258 () Bool)

(assert (=> b!7469862 m!8067258))

(declare-fun m!8067260 () Bool)

(assert (=> b!7469862 m!8067260))

(declare-fun m!8067262 () Bool)

(assert (=> b!7469862 m!8067262))

(declare-fun m!8067264 () Bool)

(assert (=> b!7469862 m!8067264))

(declare-fun m!8067266 () Bool)

(assert (=> b!7469852 m!8067266))

(declare-fun m!8067268 () Bool)

(assert (=> b!7469848 m!8067268))

(declare-fun m!8067270 () Bool)

(assert (=> b!7469853 m!8067270))

(declare-fun m!8067272 () Bool)

(assert (=> b!7469853 m!8067272))

(declare-fun m!8067274 () Bool)

(assert (=> b!7469853 m!8067274))

(declare-fun m!8067276 () Bool)

(assert (=> b!7469853 m!8067276))

(declare-fun m!8067278 () Bool)

(assert (=> b!7469853 m!8067278))

(declare-fun m!8067280 () Bool)

(assert (=> b!7469853 m!8067280))

(declare-fun m!8067282 () Bool)

(assert (=> b!7469844 m!8067282))

(declare-fun m!8067284 () Bool)

(assert (=> b!7469844 m!8067284))

(declare-fun m!8067286 () Bool)

(assert (=> b!7469844 m!8067286))

(declare-fun m!8067288 () Bool)

(assert (=> b!7469844 m!8067288))

(declare-fun m!8067290 () Bool)

(assert (=> b!7469844 m!8067290))

(assert (=> b!7469844 m!8067286))

(declare-fun m!8067292 () Bool)

(assert (=> b!7469844 m!8067292))

(assert (=> b!7469844 m!8067288))

(declare-fun m!8067294 () Bool)

(assert (=> b!7469857 m!8067294))

(declare-fun m!8067296 () Bool)

(assert (=> b!7469857 m!8067296))

(assert (=> b!7469857 m!8067296))

(declare-fun m!8067298 () Bool)

(assert (=> b!7469857 m!8067298))

(declare-fun m!8067300 () Bool)

(assert (=> b!7469857 m!8067300))

(declare-fun m!8067302 () Bool)

(assert (=> b!7469857 m!8067302))

(assert (=> b!7469857 m!8067300))

(declare-fun m!8067304 () Bool)

(assert (=> b!7469857 m!8067304))

(push 1)

(assert (not b!7469853))

(assert (not b!7469846))

(assert (not b!7469860))

(assert (not b!7469854))

(assert (not b!7469851))

(assert (not start!724240))

(assert (not b!7469847))

(assert (not b!7469848))

(assert (not b!7469857))

(assert (not b!7469850))

(assert (not b!7469849))

(assert (not b!7469862))

(assert (not b!7469861))

(assert (not b!7469844))

(assert (not b!7469855))

(assert (not b!7469852))

(assert (not b!7469845))

(assert tp_is_empty!49437)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2298923 () Bool)

(declare-fun choose!57738 (Int) Bool)

(assert (=> d!2298923 (= (Exists!4193 lambda!462549) (choose!57738 lambda!462549))))

(declare-fun bs!1930954 () Bool)

(assert (= bs!1930954 d!2298923))

(declare-fun m!8067360 () Bool)

(assert (=> bs!1930954 m!8067360))

(assert (=> b!7469844 d!2298923))

(declare-fun d!2298925 () Bool)

(assert (=> d!2298925 (= (Exists!4193 lambda!462548) (choose!57738 lambda!462548))))

(declare-fun bs!1930955 () Bool)

(assert (= bs!1930955 d!2298925))

(declare-fun m!8067362 () Bool)

(assert (=> bs!1930955 m!8067362))

(assert (=> b!7469844 d!2298925))

(declare-fun d!2298927 () Bool)

(declare-fun isEmpty!41167 (Option!17131) Bool)

(assert (=> d!2298927 (= (isDefined!13820 (findConcatSeparation!3253 lt!2625372 rTail!78 Nil!72166 s!13591 s!13591)) (not (isEmpty!41167 (findConcatSeparation!3253 lt!2625372 rTail!78 Nil!72166 s!13591 s!13591))))))

(declare-fun bs!1930956 () Bool)

(assert (= bs!1930956 d!2298927))

(assert (=> bs!1930956 m!8067288))

(declare-fun m!8067364 () Bool)

(assert (=> bs!1930956 m!8067364))

(assert (=> b!7469844 d!2298927))

(declare-fun bs!1930958 () Bool)

(declare-fun d!2298929 () Bool)

(assert (= bs!1930958 (and d!2298929 b!7469844)))

(declare-fun lambda!462572 () Int)

(assert (=> bs!1930958 (= lambda!462572 lambda!462548)))

(assert (=> bs!1930958 (not (= lambda!462572 lambda!462549))))

(declare-fun bs!1930959 () Bool)

(assert (= bs!1930959 (and d!2298929 b!7469857)))

(assert (=> bs!1930959 (= (= lt!2625372 r2!5783) (= lambda!462572 lambda!462550))))

(assert (=> bs!1930959 (not (= lambda!462572 lambda!462551))))

(assert (=> d!2298929 true))

(assert (=> d!2298929 true))

(assert (=> d!2298929 true))

(declare-fun lambda!462573 () Int)

(assert (=> bs!1930958 (= lambda!462573 lambda!462549)))

(assert (=> bs!1930959 (= (= lt!2625372 r2!5783) (= lambda!462573 lambda!462551))))

(assert (=> bs!1930959 (not (= lambda!462573 lambda!462550))))

(assert (=> bs!1930958 (not (= lambda!462573 lambda!462548))))

(declare-fun bs!1930960 () Bool)

(assert (= bs!1930960 d!2298929))

(assert (=> bs!1930960 (not (= lambda!462573 lambda!462572))))

(assert (=> d!2298929 true))

(assert (=> d!2298929 true))

(assert (=> d!2298929 true))

(assert (=> d!2298929 (= (Exists!4193 lambda!462572) (Exists!4193 lambda!462573))))

(declare-fun lt!2625453 () Unit!165983)

(declare-fun choose!57739 (Regex!19574 Regex!19574 List!72290) Unit!165983)

(assert (=> d!2298929 (= lt!2625453 (choose!57739 lt!2625372 rTail!78 s!13591))))

(assert (=> d!2298929 (validRegex!10088 lt!2625372)))

(assert (=> d!2298929 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2527 lt!2625372 rTail!78 s!13591) lt!2625453)))

(declare-fun m!8067370 () Bool)

(assert (=> bs!1930960 m!8067370))

(declare-fun m!8067372 () Bool)

(assert (=> bs!1930960 m!8067372))

(declare-fun m!8067374 () Bool)

(assert (=> bs!1930960 m!8067374))

(declare-fun m!8067376 () Bool)

(assert (=> bs!1930960 m!8067376))

(assert (=> b!7469844 d!2298929))

(declare-fun b!7470010 () Bool)

(declare-fun res!2996704 () Bool)

(declare-fun e!4456921 () Bool)

(assert (=> b!7470010 (=> (not res!2996704) (not e!4456921))))

(declare-fun lt!2625460 () Option!17131)

(declare-fun get!25225 (Option!17131) tuple2!68598)

(assert (=> b!7470010 (= res!2996704 (matchR!9338 lt!2625372 (_1!37602 (get!25225 lt!2625460))))))

(declare-fun b!7470011 () Bool)

(declare-fun e!4456922 () Option!17131)

(assert (=> b!7470011 (= e!4456922 (Some!17130 (tuple2!68599 Nil!72166 s!13591)))))

(declare-fun b!7470012 () Bool)

(declare-fun lt!2625462 () Unit!165983)

(declare-fun lt!2625461 () Unit!165983)

(assert (=> b!7470012 (= lt!2625462 lt!2625461)))

(declare-fun ++!17200 (List!72290 List!72290) List!72290)

(assert (=> b!7470012 (= (++!17200 (++!17200 Nil!72166 (Cons!72166 (h!78614 s!13591) Nil!72166)) (t!386859 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3078 (List!72290 C!39422 List!72290 List!72290) Unit!165983)

(assert (=> b!7470012 (= lt!2625461 (lemmaMoveElementToOtherListKeepsConcatEq!3078 Nil!72166 (h!78614 s!13591) (t!386859 s!13591) s!13591))))

(declare-fun e!4456919 () Option!17131)

(assert (=> b!7470012 (= e!4456919 (findConcatSeparation!3253 lt!2625372 rTail!78 (++!17200 Nil!72166 (Cons!72166 (h!78614 s!13591) Nil!72166)) (t!386859 s!13591) s!13591))))

(declare-fun d!2298933 () Bool)

(declare-fun e!4456920 () Bool)

(assert (=> d!2298933 e!4456920))

(declare-fun res!2996705 () Bool)

(assert (=> d!2298933 (=> res!2996705 e!4456920)))

(assert (=> d!2298933 (= res!2996705 e!4456921)))

(declare-fun res!2996703 () Bool)

(assert (=> d!2298933 (=> (not res!2996703) (not e!4456921))))

(assert (=> d!2298933 (= res!2996703 (isDefined!13820 lt!2625460))))

(assert (=> d!2298933 (= lt!2625460 e!4456922)))

(declare-fun c!1380320 () Bool)

(declare-fun e!4456923 () Bool)

(assert (=> d!2298933 (= c!1380320 e!4456923)))

(declare-fun res!2996706 () Bool)

(assert (=> d!2298933 (=> (not res!2996706) (not e!4456923))))

(assert (=> d!2298933 (= res!2996706 (matchR!9338 lt!2625372 Nil!72166))))

(assert (=> d!2298933 (validRegex!10088 lt!2625372)))

(assert (=> d!2298933 (= (findConcatSeparation!3253 lt!2625372 rTail!78 Nil!72166 s!13591 s!13591) lt!2625460)))

(declare-fun b!7470013 () Bool)

(assert (=> b!7470013 (= e!4456923 (matchR!9338 rTail!78 s!13591))))

(declare-fun b!7470014 () Bool)

(assert (=> b!7470014 (= e!4456921 (= (++!17200 (_1!37602 (get!25225 lt!2625460)) (_2!37602 (get!25225 lt!2625460))) s!13591))))

(declare-fun b!7470015 () Bool)

(assert (=> b!7470015 (= e!4456922 e!4456919)))

(declare-fun c!1380319 () Bool)

(assert (=> b!7470015 (= c!1380319 (is-Nil!72166 s!13591))))

(declare-fun b!7470016 () Bool)

(declare-fun res!2996707 () Bool)

(assert (=> b!7470016 (=> (not res!2996707) (not e!4456921))))

(assert (=> b!7470016 (= res!2996707 (matchR!9338 rTail!78 (_2!37602 (get!25225 lt!2625460))))))

(declare-fun b!7470017 () Bool)

(assert (=> b!7470017 (= e!4456919 None!17130)))

(declare-fun b!7470018 () Bool)

(assert (=> b!7470018 (= e!4456920 (not (isDefined!13820 lt!2625460)))))

(assert (= (and d!2298933 res!2996706) b!7470013))

(assert (= (and d!2298933 c!1380320) b!7470011))

(assert (= (and d!2298933 (not c!1380320)) b!7470015))

(assert (= (and b!7470015 c!1380319) b!7470017))

(assert (= (and b!7470015 (not c!1380319)) b!7470012))

(assert (= (and d!2298933 res!2996703) b!7470010))

(assert (= (and b!7470010 res!2996704) b!7470016))

(assert (= (and b!7470016 res!2996707) b!7470014))

(assert (= (and d!2298933 (not res!2996705)) b!7470018))

(declare-fun m!8067378 () Bool)

(assert (=> d!2298933 m!8067378))

(declare-fun m!8067380 () Bool)

(assert (=> d!2298933 m!8067380))

(assert (=> d!2298933 m!8067376))

(declare-fun m!8067382 () Bool)

(assert (=> b!7470012 m!8067382))

(assert (=> b!7470012 m!8067382))

(declare-fun m!8067384 () Bool)

(assert (=> b!7470012 m!8067384))

(declare-fun m!8067386 () Bool)

(assert (=> b!7470012 m!8067386))

(assert (=> b!7470012 m!8067382))

(declare-fun m!8067388 () Bool)

(assert (=> b!7470012 m!8067388))

(declare-fun m!8067390 () Bool)

(assert (=> b!7470010 m!8067390))

(declare-fun m!8067392 () Bool)

(assert (=> b!7470010 m!8067392))

(assert (=> b!7470014 m!8067390))

(declare-fun m!8067394 () Bool)

(assert (=> b!7470014 m!8067394))

(declare-fun m!8067396 () Bool)

(assert (=> b!7470013 m!8067396))

(assert (=> b!7470016 m!8067390))

(declare-fun m!8067398 () Bool)

(assert (=> b!7470016 m!8067398))

(assert (=> b!7470018 m!8067378))

(assert (=> b!7469844 d!2298933))

(declare-fun bs!1930961 () Bool)

(declare-fun d!2298935 () Bool)

(assert (= bs!1930961 (and d!2298935 b!7469844)))

(declare-fun lambda!462580 () Int)

(assert (=> bs!1930961 (not (= lambda!462580 lambda!462549))))

(declare-fun bs!1930962 () Bool)

(assert (= bs!1930962 (and d!2298935 b!7469857)))

(assert (=> bs!1930962 (not (= lambda!462580 lambda!462551))))

(assert (=> bs!1930962 (= (= lt!2625372 r2!5783) (= lambda!462580 lambda!462550))))

(assert (=> bs!1930961 (= lambda!462580 lambda!462548)))

(declare-fun bs!1930963 () Bool)

(assert (= bs!1930963 (and d!2298935 d!2298929)))

(assert (=> bs!1930963 (= lambda!462580 lambda!462572)))

(assert (=> bs!1930963 (not (= lambda!462580 lambda!462573))))

(assert (=> d!2298935 true))

(assert (=> d!2298935 true))

(assert (=> d!2298935 true))

(assert (=> d!2298935 (= (isDefined!13820 (findConcatSeparation!3253 lt!2625372 rTail!78 Nil!72166 s!13591 s!13591)) (Exists!4193 lambda!462580))))

(declare-fun lt!2625465 () Unit!165983)

(declare-fun choose!57740 (Regex!19574 Regex!19574 List!72290) Unit!165983)

(assert (=> d!2298935 (= lt!2625465 (choose!57740 lt!2625372 rTail!78 s!13591))))

(assert (=> d!2298935 (validRegex!10088 lt!2625372)))

(assert (=> d!2298935 (= (lemmaFindConcatSeparationEquivalentToExists!3011 lt!2625372 rTail!78 s!13591) lt!2625465)))

(declare-fun bs!1930964 () Bool)

(assert (= bs!1930964 d!2298935))

(declare-fun m!8067400 () Bool)

(assert (=> bs!1930964 m!8067400))

(assert (=> bs!1930964 m!8067376))

(declare-fun m!8067402 () Bool)

(assert (=> bs!1930964 m!8067402))

(assert (=> bs!1930964 m!8067288))

(assert (=> bs!1930964 m!8067290))

(assert (=> bs!1930964 m!8067288))

(assert (=> b!7469844 d!2298935))

(declare-fun b!7470062 () Bool)

(declare-fun e!4456951 () Bool)

(declare-fun e!4456952 () Bool)

(assert (=> b!7470062 (= e!4456951 e!4456952)))

(declare-fun c!1380333 () Bool)

(assert (=> b!7470062 (= c!1380333 (is-EmptyLang!19574 lt!2625373))))

(declare-fun b!7470063 () Bool)

(declare-fun res!2996737 () Bool)

(declare-fun e!4456947 () Bool)

(assert (=> b!7470063 (=> (not res!2996737) (not e!4456947))))

(declare-fun call!685959 () Bool)

(assert (=> b!7470063 (= res!2996737 (not call!685959))))

(declare-fun b!7470064 () Bool)

(declare-fun e!4456949 () Bool)

(declare-fun head!15325 (List!72290) C!39422)

(assert (=> b!7470064 (= e!4456949 (not (= (head!15325 s!13591) (c!1380305 lt!2625373))))))

(declare-fun b!7470065 () Bool)

(declare-fun e!4456953 () Bool)

(assert (=> b!7470065 (= e!4456953 e!4456949)))

(declare-fun res!2996736 () Bool)

(assert (=> b!7470065 (=> res!2996736 e!4456949)))

(assert (=> b!7470065 (= res!2996736 call!685959)))

(declare-fun b!7470066 () Bool)

(declare-fun res!2996738 () Bool)

(declare-fun e!4456950 () Bool)

(assert (=> b!7470066 (=> res!2996738 e!4456950)))

(assert (=> b!7470066 (= res!2996738 e!4456947)))

(declare-fun res!2996735 () Bool)

(assert (=> b!7470066 (=> (not res!2996735) (not e!4456947))))

(declare-fun lt!2625469 () Bool)

(assert (=> b!7470066 (= res!2996735 lt!2625469)))

(declare-fun b!7470067 () Bool)

(assert (=> b!7470067 (= e!4456952 (not lt!2625469))))

(declare-fun b!7470069 () Bool)

(declare-fun e!4456948 () Bool)

(declare-fun derivativeStep!5585 (Regex!19574 C!39422) Regex!19574)

(declare-fun tail!14894 (List!72290) List!72290)

(assert (=> b!7470069 (= e!4456948 (matchR!9338 (derivativeStep!5585 lt!2625373 (head!15325 s!13591)) (tail!14894 s!13591)))))

(declare-fun b!7470070 () Bool)

(assert (=> b!7470070 (= e!4456951 (= lt!2625469 call!685959))))

(declare-fun b!7470071 () Bool)

(declare-fun nullable!8526 (Regex!19574) Bool)

(assert (=> b!7470071 (= e!4456948 (nullable!8526 lt!2625373))))

(declare-fun b!7470072 () Bool)

(declare-fun res!2996732 () Bool)

(assert (=> b!7470072 (=> res!2996732 e!4456949)))

(declare-fun isEmpty!41168 (List!72290) Bool)

(assert (=> b!7470072 (= res!2996732 (not (isEmpty!41168 (tail!14894 s!13591))))))

(declare-fun bm!685954 () Bool)

(assert (=> bm!685954 (= call!685959 (isEmpty!41168 s!13591))))

(declare-fun b!7470073 () Bool)

(declare-fun res!2996734 () Bool)

(assert (=> b!7470073 (=> res!2996734 e!4456950)))

(assert (=> b!7470073 (= res!2996734 (not (is-ElementMatch!19574 lt!2625373)))))

(assert (=> b!7470073 (= e!4456952 e!4456950)))

(declare-fun b!7470074 () Bool)

(declare-fun res!2996733 () Bool)

(assert (=> b!7470074 (=> (not res!2996733) (not e!4456947))))

(assert (=> b!7470074 (= res!2996733 (isEmpty!41168 (tail!14894 s!13591)))))

(declare-fun b!7470075 () Bool)

(assert (=> b!7470075 (= e!4456947 (= (head!15325 s!13591) (c!1380305 lt!2625373)))))

(declare-fun b!7470068 () Bool)

(assert (=> b!7470068 (= e!4456950 e!4456953)))

(declare-fun res!2996731 () Bool)

(assert (=> b!7470068 (=> (not res!2996731) (not e!4456953))))

(assert (=> b!7470068 (= res!2996731 (not lt!2625469))))

(declare-fun d!2298937 () Bool)

(assert (=> d!2298937 e!4456951))

(declare-fun c!1380332 () Bool)

(assert (=> d!2298937 (= c!1380332 (is-EmptyExpr!19574 lt!2625373))))

(assert (=> d!2298937 (= lt!2625469 e!4456948)))

(declare-fun c!1380331 () Bool)

(assert (=> d!2298937 (= c!1380331 (isEmpty!41168 s!13591))))

(assert (=> d!2298937 (validRegex!10088 lt!2625373)))

(assert (=> d!2298937 (= (matchR!9338 lt!2625373 s!13591) lt!2625469)))

(assert (= (and d!2298937 c!1380331) b!7470071))

(assert (= (and d!2298937 (not c!1380331)) b!7470069))

(assert (= (and d!2298937 c!1380332) b!7470070))

(assert (= (and d!2298937 (not c!1380332)) b!7470062))

(assert (= (and b!7470062 c!1380333) b!7470067))

(assert (= (and b!7470062 (not c!1380333)) b!7470073))

(assert (= (and b!7470073 (not res!2996734)) b!7470066))

(assert (= (and b!7470066 res!2996735) b!7470063))

(assert (= (and b!7470063 res!2996737) b!7470074))

(assert (= (and b!7470074 res!2996733) b!7470075))

(assert (= (and b!7470066 (not res!2996738)) b!7470068))

(assert (= (and b!7470068 res!2996731) b!7470065))

(assert (= (and b!7470065 (not res!2996736)) b!7470072))

(assert (= (and b!7470072 (not res!2996732)) b!7470064))

(assert (= (or b!7470070 b!7470063 b!7470065) bm!685954))

(declare-fun m!8067416 () Bool)

(assert (=> d!2298937 m!8067416))

(declare-fun m!8067418 () Bool)

(assert (=> d!2298937 m!8067418))

(declare-fun m!8067420 () Bool)

(assert (=> b!7470064 m!8067420))

(assert (=> bm!685954 m!8067416))

(declare-fun m!8067422 () Bool)

(assert (=> b!7470074 m!8067422))

(assert (=> b!7470074 m!8067422))

(declare-fun m!8067424 () Bool)

(assert (=> b!7470074 m!8067424))

(assert (=> b!7470072 m!8067422))

(assert (=> b!7470072 m!8067422))

(assert (=> b!7470072 m!8067424))

(assert (=> b!7470069 m!8067420))

(assert (=> b!7470069 m!8067420))

(declare-fun m!8067426 () Bool)

(assert (=> b!7470069 m!8067426))

(assert (=> b!7470069 m!8067422))

(assert (=> b!7470069 m!8067426))

(assert (=> b!7470069 m!8067422))

(declare-fun m!8067428 () Bool)

(assert (=> b!7470069 m!8067428))

(assert (=> b!7470075 m!8067420))

(declare-fun m!8067430 () Bool)

(assert (=> b!7470071 m!8067430))

(assert (=> b!7469853 d!2298937))

(declare-fun bs!1930971 () Bool)

(declare-fun b!7470141 () Bool)

(assert (= bs!1930971 (and b!7470141 b!7469844)))

(declare-fun lambda!462587 () Int)

(assert (=> bs!1930971 (not (= lambda!462587 lambda!462549))))

(declare-fun bs!1930972 () Bool)

(assert (= bs!1930972 (and b!7470141 b!7469857)))

(assert (=> bs!1930972 (not (= lambda!462587 lambda!462551))))

(assert (=> bs!1930972 (not (= lambda!462587 lambda!462550))))

(assert (=> bs!1930971 (not (= lambda!462587 lambda!462548))))

(declare-fun bs!1930973 () Bool)

(assert (= bs!1930973 (and b!7470141 d!2298929)))

(assert (=> bs!1930973 (not (= lambda!462587 lambda!462572))))

(declare-fun bs!1930974 () Bool)

(assert (= bs!1930974 (and b!7470141 d!2298935)))

(assert (=> bs!1930974 (not (= lambda!462587 lambda!462580))))

(assert (=> bs!1930973 (not (= lambda!462587 lambda!462573))))

(assert (=> b!7470141 true))

(assert (=> b!7470141 true))

(declare-fun bs!1930975 () Bool)

(declare-fun b!7470137 () Bool)

(assert (= bs!1930975 (and b!7470137 b!7469844)))

(declare-fun lambda!462588 () Int)

(assert (=> bs!1930975 (= (and (= (regOne!39660 lt!2625377) lt!2625372) (= (regTwo!39660 lt!2625377) rTail!78)) (= lambda!462588 lambda!462549))))

(declare-fun bs!1930976 () Bool)

(assert (= bs!1930976 (and b!7470137 b!7469857)))

(assert (=> bs!1930976 (= (and (= (regOne!39660 lt!2625377) r2!5783) (= (regTwo!39660 lt!2625377) rTail!78)) (= lambda!462588 lambda!462551))))

(assert (=> bs!1930976 (not (= lambda!462588 lambda!462550))))

(assert (=> bs!1930975 (not (= lambda!462588 lambda!462548))))

(declare-fun bs!1930977 () Bool)

(assert (= bs!1930977 (and b!7470137 d!2298929)))

(assert (=> bs!1930977 (not (= lambda!462588 lambda!462572))))

(declare-fun bs!1930978 () Bool)

(assert (= bs!1930978 (and b!7470137 b!7470141)))

(assert (=> bs!1930978 (not (= lambda!462588 lambda!462587))))

(declare-fun bs!1930979 () Bool)

(assert (= bs!1930979 (and b!7470137 d!2298935)))

(assert (=> bs!1930979 (not (= lambda!462588 lambda!462580))))

(assert (=> bs!1930977 (= (and (= (regOne!39660 lt!2625377) lt!2625372) (= (regTwo!39660 lt!2625377) rTail!78)) (= lambda!462588 lambda!462573))))

(assert (=> b!7470137 true))

(assert (=> b!7470137 true))

(declare-fun b!7470136 () Bool)

(declare-fun e!4456987 () Bool)

(assert (=> b!7470136 (= e!4456987 (= s!13591 (Cons!72166 (c!1380305 lt!2625377) Nil!72166)))))

(declare-fun bm!685961 () Bool)

(declare-fun c!1380351 () Bool)

(declare-fun call!685966 () Bool)

(assert (=> bm!685961 (= call!685966 (Exists!4193 (ite c!1380351 lambda!462587 lambda!462588)))))

(declare-fun d!2298943 () Bool)

(declare-fun c!1380348 () Bool)

(assert (=> d!2298943 (= c!1380348 (is-EmptyExpr!19574 lt!2625377))))

(declare-fun e!4456986 () Bool)

(assert (=> d!2298943 (= (matchRSpec!4253 lt!2625377 s!13591) e!4456986)))

(declare-fun e!4456990 () Bool)

(assert (=> b!7470137 (= e!4456990 call!685966)))

(declare-fun b!7470138 () Bool)

(declare-fun call!685967 () Bool)

(assert (=> b!7470138 (= e!4456986 call!685967)))

(declare-fun b!7470139 () Bool)

(declare-fun res!2996773 () Bool)

(declare-fun e!4456992 () Bool)

(assert (=> b!7470139 (=> res!2996773 e!4456992)))

(assert (=> b!7470139 (= res!2996773 call!685967)))

(assert (=> b!7470139 (= e!4456990 e!4456992)))

(declare-fun b!7470140 () Bool)

(declare-fun e!4456988 () Bool)

(assert (=> b!7470140 (= e!4456988 e!4456990)))

(assert (=> b!7470140 (= c!1380351 (is-Star!19574 lt!2625377))))

(assert (=> b!7470141 (= e!4456992 call!685966)))

(declare-fun bm!685962 () Bool)

(assert (=> bm!685962 (= call!685967 (isEmpty!41168 s!13591))))

(declare-fun b!7470142 () Bool)

(declare-fun e!4456989 () Bool)

(assert (=> b!7470142 (= e!4456989 (matchRSpec!4253 (regTwo!39661 lt!2625377) s!13591))))

(declare-fun b!7470143 () Bool)

(declare-fun e!4456991 () Bool)

(assert (=> b!7470143 (= e!4456986 e!4456991)))

(declare-fun res!2996772 () Bool)

(assert (=> b!7470143 (= res!2996772 (not (is-EmptyLang!19574 lt!2625377)))))

(assert (=> b!7470143 (=> (not res!2996772) (not e!4456991))))

(declare-fun b!7470144 () Bool)

(declare-fun c!1380349 () Bool)

(assert (=> b!7470144 (= c!1380349 (is-Union!19574 lt!2625377))))

(assert (=> b!7470144 (= e!4456987 e!4456988)))

(declare-fun b!7470145 () Bool)

(declare-fun c!1380350 () Bool)

(assert (=> b!7470145 (= c!1380350 (is-ElementMatch!19574 lt!2625377))))

(assert (=> b!7470145 (= e!4456991 e!4456987)))

(declare-fun b!7470146 () Bool)

(assert (=> b!7470146 (= e!4456988 e!4456989)))

(declare-fun res!2996771 () Bool)

(assert (=> b!7470146 (= res!2996771 (matchRSpec!4253 (regOne!39661 lt!2625377) s!13591))))

(assert (=> b!7470146 (=> res!2996771 e!4456989)))

(assert (= (and d!2298943 c!1380348) b!7470138))

(assert (= (and d!2298943 (not c!1380348)) b!7470143))

(assert (= (and b!7470143 res!2996772) b!7470145))

(assert (= (and b!7470145 c!1380350) b!7470136))

(assert (= (and b!7470145 (not c!1380350)) b!7470144))

(assert (= (and b!7470144 c!1380349) b!7470146))

(assert (= (and b!7470144 (not c!1380349)) b!7470140))

(assert (= (and b!7470146 (not res!2996771)) b!7470142))

(assert (= (and b!7470140 c!1380351) b!7470139))

(assert (= (and b!7470140 (not c!1380351)) b!7470137))

(assert (= (and b!7470139 (not res!2996773)) b!7470141))

(assert (= (or b!7470141 b!7470137) bm!685961))

(assert (= (or b!7470138 b!7470139) bm!685962))

(declare-fun m!8067432 () Bool)

(assert (=> bm!685961 m!8067432))

(assert (=> bm!685962 m!8067416))

(declare-fun m!8067434 () Bool)

(assert (=> b!7470142 m!8067434))

(declare-fun m!8067436 () Bool)

(assert (=> b!7470146 m!8067436))

(assert (=> b!7469853 d!2298943))

(declare-fun bs!1930980 () Bool)

(declare-fun b!7470152 () Bool)

(assert (= bs!1930980 (and b!7470152 b!7469844)))

(declare-fun lambda!462589 () Int)

(assert (=> bs!1930980 (not (= lambda!462589 lambda!462549))))

(declare-fun bs!1930981 () Bool)

(assert (= bs!1930981 (and b!7470152 b!7469857)))

(assert (=> bs!1930981 (not (= lambda!462589 lambda!462551))))

(assert (=> bs!1930981 (not (= lambda!462589 lambda!462550))))

(assert (=> bs!1930980 (not (= lambda!462589 lambda!462548))))

(declare-fun bs!1930982 () Bool)

(assert (= bs!1930982 (and b!7470152 d!2298929)))

(assert (=> bs!1930982 (not (= lambda!462589 lambda!462572))))

(declare-fun bs!1930983 () Bool)

(assert (= bs!1930983 (and b!7470152 b!7470137)))

(assert (=> bs!1930983 (not (= lambda!462589 lambda!462588))))

(declare-fun bs!1930984 () Bool)

(assert (= bs!1930984 (and b!7470152 b!7470141)))

(assert (=> bs!1930984 (= (and (= (reg!19903 lt!2625373) (reg!19903 lt!2625377)) (= lt!2625373 lt!2625377)) (= lambda!462589 lambda!462587))))

(declare-fun bs!1930985 () Bool)

(assert (= bs!1930985 (and b!7470152 d!2298935)))

(assert (=> bs!1930985 (not (= lambda!462589 lambda!462580))))

(assert (=> bs!1930982 (not (= lambda!462589 lambda!462573))))

(assert (=> b!7470152 true))

(assert (=> b!7470152 true))

(declare-fun bs!1930986 () Bool)

(declare-fun b!7470148 () Bool)

(assert (= bs!1930986 (and b!7470148 b!7469844)))

(declare-fun lambda!462590 () Int)

(assert (=> bs!1930986 (= (and (= (regOne!39660 lt!2625373) lt!2625372) (= (regTwo!39660 lt!2625373) rTail!78)) (= lambda!462590 lambda!462549))))

(declare-fun bs!1930987 () Bool)

(assert (= bs!1930987 (and b!7470148 b!7469857)))

(assert (=> bs!1930987 (= (and (= (regOne!39660 lt!2625373) r2!5783) (= (regTwo!39660 lt!2625373) rTail!78)) (= lambda!462590 lambda!462551))))

(declare-fun bs!1930988 () Bool)

(assert (= bs!1930988 (and b!7470148 b!7470152)))

(assert (=> bs!1930988 (not (= lambda!462590 lambda!462589))))

(assert (=> bs!1930987 (not (= lambda!462590 lambda!462550))))

(assert (=> bs!1930986 (not (= lambda!462590 lambda!462548))))

(declare-fun bs!1930989 () Bool)

(assert (= bs!1930989 (and b!7470148 d!2298929)))

(assert (=> bs!1930989 (not (= lambda!462590 lambda!462572))))

(declare-fun bs!1930990 () Bool)

(assert (= bs!1930990 (and b!7470148 b!7470137)))

(assert (=> bs!1930990 (= (and (= (regOne!39660 lt!2625373) (regOne!39660 lt!2625377)) (= (regTwo!39660 lt!2625373) (regTwo!39660 lt!2625377))) (= lambda!462590 lambda!462588))))

(declare-fun bs!1930991 () Bool)

(assert (= bs!1930991 (and b!7470148 b!7470141)))

(assert (=> bs!1930991 (not (= lambda!462590 lambda!462587))))

(declare-fun bs!1930992 () Bool)

(assert (= bs!1930992 (and b!7470148 d!2298935)))

(assert (=> bs!1930992 (not (= lambda!462590 lambda!462580))))

(assert (=> bs!1930989 (= (and (= (regOne!39660 lt!2625373) lt!2625372) (= (regTwo!39660 lt!2625373) rTail!78)) (= lambda!462590 lambda!462573))))

(assert (=> b!7470148 true))

(assert (=> b!7470148 true))

(declare-fun b!7470147 () Bool)

(declare-fun e!4456994 () Bool)

(assert (=> b!7470147 (= e!4456994 (= s!13591 (Cons!72166 (c!1380305 lt!2625373) Nil!72166)))))

(declare-fun bm!685963 () Bool)

(declare-fun c!1380355 () Bool)

(declare-fun call!685968 () Bool)

(assert (=> bm!685963 (= call!685968 (Exists!4193 (ite c!1380355 lambda!462589 lambda!462590)))))

(declare-fun d!2298945 () Bool)

(declare-fun c!1380352 () Bool)

(assert (=> d!2298945 (= c!1380352 (is-EmptyExpr!19574 lt!2625373))))

(declare-fun e!4456993 () Bool)

(assert (=> d!2298945 (= (matchRSpec!4253 lt!2625373 s!13591) e!4456993)))

(declare-fun e!4456997 () Bool)

(assert (=> b!7470148 (= e!4456997 call!685968)))

(declare-fun b!7470149 () Bool)

(declare-fun call!685969 () Bool)

(assert (=> b!7470149 (= e!4456993 call!685969)))

(declare-fun b!7470150 () Bool)

(declare-fun res!2996776 () Bool)

(declare-fun e!4456999 () Bool)

(assert (=> b!7470150 (=> res!2996776 e!4456999)))

(assert (=> b!7470150 (= res!2996776 call!685969)))

(assert (=> b!7470150 (= e!4456997 e!4456999)))

(declare-fun b!7470151 () Bool)

(declare-fun e!4456995 () Bool)

(assert (=> b!7470151 (= e!4456995 e!4456997)))

(assert (=> b!7470151 (= c!1380355 (is-Star!19574 lt!2625373))))

(assert (=> b!7470152 (= e!4456999 call!685968)))

(declare-fun bm!685964 () Bool)

(assert (=> bm!685964 (= call!685969 (isEmpty!41168 s!13591))))

(declare-fun b!7470153 () Bool)

(declare-fun e!4456996 () Bool)

(assert (=> b!7470153 (= e!4456996 (matchRSpec!4253 (regTwo!39661 lt!2625373) s!13591))))

(declare-fun b!7470154 () Bool)

(declare-fun e!4456998 () Bool)

(assert (=> b!7470154 (= e!4456993 e!4456998)))

(declare-fun res!2996775 () Bool)

(assert (=> b!7470154 (= res!2996775 (not (is-EmptyLang!19574 lt!2625373)))))

(assert (=> b!7470154 (=> (not res!2996775) (not e!4456998))))

(declare-fun b!7470155 () Bool)

(declare-fun c!1380353 () Bool)

(assert (=> b!7470155 (= c!1380353 (is-Union!19574 lt!2625373))))

(assert (=> b!7470155 (= e!4456994 e!4456995)))

(declare-fun b!7470156 () Bool)

(declare-fun c!1380354 () Bool)

(assert (=> b!7470156 (= c!1380354 (is-ElementMatch!19574 lt!2625373))))

(assert (=> b!7470156 (= e!4456998 e!4456994)))

(declare-fun b!7470157 () Bool)

(assert (=> b!7470157 (= e!4456995 e!4456996)))

(declare-fun res!2996774 () Bool)

(assert (=> b!7470157 (= res!2996774 (matchRSpec!4253 (regOne!39661 lt!2625373) s!13591))))

(assert (=> b!7470157 (=> res!2996774 e!4456996)))

(assert (= (and d!2298945 c!1380352) b!7470149))

(assert (= (and d!2298945 (not c!1380352)) b!7470154))

(assert (= (and b!7470154 res!2996775) b!7470156))

(assert (= (and b!7470156 c!1380354) b!7470147))

(assert (= (and b!7470156 (not c!1380354)) b!7470155))

(assert (= (and b!7470155 c!1380353) b!7470157))

(assert (= (and b!7470155 (not c!1380353)) b!7470151))

(assert (= (and b!7470157 (not res!2996774)) b!7470153))

(assert (= (and b!7470151 c!1380355) b!7470150))

(assert (= (and b!7470151 (not c!1380355)) b!7470148))

(assert (= (and b!7470150 (not res!2996776)) b!7470152))

(assert (= (or b!7470152 b!7470148) bm!685963))

(assert (= (or b!7470149 b!7470150) bm!685964))

(declare-fun m!8067438 () Bool)

(assert (=> bm!685963 m!8067438))

(assert (=> bm!685964 m!8067416))

(declare-fun m!8067440 () Bool)

(assert (=> b!7470153 m!8067440))

(declare-fun m!8067442 () Bool)

(assert (=> b!7470157 m!8067442))

(assert (=> b!7469853 d!2298945))

(declare-fun d!2298947 () Bool)

(assert (=> d!2298947 (= (matchR!9338 lt!2625373 s!13591) (matchRSpec!4253 lt!2625373 s!13591))))

(declare-fun lt!2625475 () Unit!165983)

(declare-fun choose!57741 (Regex!19574 List!72290) Unit!165983)

(assert (=> d!2298947 (= lt!2625475 (choose!57741 lt!2625373 s!13591))))

(assert (=> d!2298947 (validRegex!10088 lt!2625373)))

(assert (=> d!2298947 (= (mainMatchTheorem!4247 lt!2625373 s!13591) lt!2625475)))

(declare-fun bs!1930993 () Bool)

(assert (= bs!1930993 d!2298947))

(assert (=> bs!1930993 m!8067276))

(assert (=> bs!1930993 m!8067274))

(declare-fun m!8067456 () Bool)

(assert (=> bs!1930993 m!8067456))

(assert (=> bs!1930993 m!8067418))

(assert (=> b!7469853 d!2298947))

(declare-fun b!7470183 () Bool)

(declare-fun e!4457018 () Bool)

(declare-fun e!4457019 () Bool)

(assert (=> b!7470183 (= e!4457018 e!4457019)))

(declare-fun c!1380365 () Bool)

(assert (=> b!7470183 (= c!1380365 (is-EmptyLang!19574 lt!2625377))))

(declare-fun b!7470184 () Bool)

(declare-fun res!2996794 () Bool)

(declare-fun e!4457014 () Bool)

(assert (=> b!7470184 (=> (not res!2996794) (not e!4457014))))

(declare-fun call!685973 () Bool)

(assert (=> b!7470184 (= res!2996794 (not call!685973))))

(declare-fun b!7470185 () Bool)

(declare-fun e!4457016 () Bool)

(assert (=> b!7470185 (= e!4457016 (not (= (head!15325 s!13591) (c!1380305 lt!2625377))))))

(declare-fun b!7470186 () Bool)

(declare-fun e!4457020 () Bool)

(assert (=> b!7470186 (= e!4457020 e!4457016)))

(declare-fun res!2996793 () Bool)

(assert (=> b!7470186 (=> res!2996793 e!4457016)))

(assert (=> b!7470186 (= res!2996793 call!685973)))

(declare-fun b!7470187 () Bool)

(declare-fun res!2996795 () Bool)

(declare-fun e!4457017 () Bool)

(assert (=> b!7470187 (=> res!2996795 e!4457017)))

(assert (=> b!7470187 (= res!2996795 e!4457014)))

(declare-fun res!2996792 () Bool)

(assert (=> b!7470187 (=> (not res!2996792) (not e!4457014))))

(declare-fun lt!2625476 () Bool)

(assert (=> b!7470187 (= res!2996792 lt!2625476)))

(declare-fun b!7470188 () Bool)

(assert (=> b!7470188 (= e!4457019 (not lt!2625476))))

(declare-fun b!7470190 () Bool)

(declare-fun e!4457015 () Bool)

(assert (=> b!7470190 (= e!4457015 (matchR!9338 (derivativeStep!5585 lt!2625377 (head!15325 s!13591)) (tail!14894 s!13591)))))

(declare-fun b!7470191 () Bool)

(assert (=> b!7470191 (= e!4457018 (= lt!2625476 call!685973))))

(declare-fun b!7470192 () Bool)

(assert (=> b!7470192 (= e!4457015 (nullable!8526 lt!2625377))))

(declare-fun b!7470193 () Bool)

(declare-fun res!2996789 () Bool)

(assert (=> b!7470193 (=> res!2996789 e!4457016)))

(assert (=> b!7470193 (= res!2996789 (not (isEmpty!41168 (tail!14894 s!13591))))))

(declare-fun bm!685968 () Bool)

(assert (=> bm!685968 (= call!685973 (isEmpty!41168 s!13591))))

(declare-fun b!7470194 () Bool)

(declare-fun res!2996791 () Bool)

(assert (=> b!7470194 (=> res!2996791 e!4457017)))

(assert (=> b!7470194 (= res!2996791 (not (is-ElementMatch!19574 lt!2625377)))))

(assert (=> b!7470194 (= e!4457019 e!4457017)))

(declare-fun b!7470195 () Bool)

(declare-fun res!2996790 () Bool)

(assert (=> b!7470195 (=> (not res!2996790) (not e!4457014))))

(assert (=> b!7470195 (= res!2996790 (isEmpty!41168 (tail!14894 s!13591)))))

(declare-fun b!7470196 () Bool)

(assert (=> b!7470196 (= e!4457014 (= (head!15325 s!13591) (c!1380305 lt!2625377)))))

(declare-fun b!7470189 () Bool)

(assert (=> b!7470189 (= e!4457017 e!4457020)))

(declare-fun res!2996788 () Bool)

(assert (=> b!7470189 (=> (not res!2996788) (not e!4457020))))

(assert (=> b!7470189 (= res!2996788 (not lt!2625476))))

(declare-fun d!2298951 () Bool)

(assert (=> d!2298951 e!4457018))

(declare-fun c!1380364 () Bool)

(assert (=> d!2298951 (= c!1380364 (is-EmptyExpr!19574 lt!2625377))))

(assert (=> d!2298951 (= lt!2625476 e!4457015)))

(declare-fun c!1380363 () Bool)

(assert (=> d!2298951 (= c!1380363 (isEmpty!41168 s!13591))))

(assert (=> d!2298951 (validRegex!10088 lt!2625377)))

(assert (=> d!2298951 (= (matchR!9338 lt!2625377 s!13591) lt!2625476)))

(assert (= (and d!2298951 c!1380363) b!7470192))

(assert (= (and d!2298951 (not c!1380363)) b!7470190))

(assert (= (and d!2298951 c!1380364) b!7470191))

(assert (= (and d!2298951 (not c!1380364)) b!7470183))

(assert (= (and b!7470183 c!1380365) b!7470188))

(assert (= (and b!7470183 (not c!1380365)) b!7470194))

(assert (= (and b!7470194 (not res!2996791)) b!7470187))

(assert (= (and b!7470187 res!2996792) b!7470184))

(assert (= (and b!7470184 res!2996794) b!7470195))

(assert (= (and b!7470195 res!2996790) b!7470196))

(assert (= (and b!7470187 (not res!2996795)) b!7470189))

(assert (= (and b!7470189 res!2996788) b!7470186))

(assert (= (and b!7470186 (not res!2996793)) b!7470193))

(assert (= (and b!7470193 (not res!2996789)) b!7470185))

(assert (= (or b!7470191 b!7470184 b!7470186) bm!685968))

(assert (=> d!2298951 m!8067416))

(declare-fun m!8067458 () Bool)

(assert (=> d!2298951 m!8067458))

(assert (=> b!7470185 m!8067420))

(assert (=> bm!685968 m!8067416))

(assert (=> b!7470195 m!8067422))

(assert (=> b!7470195 m!8067422))

(assert (=> b!7470195 m!8067424))

(assert (=> b!7470193 m!8067422))

(assert (=> b!7470193 m!8067422))

(assert (=> b!7470193 m!8067424))

(assert (=> b!7470190 m!8067420))

(assert (=> b!7470190 m!8067420))

(declare-fun m!8067460 () Bool)

(assert (=> b!7470190 m!8067460))

(assert (=> b!7470190 m!8067422))

(assert (=> b!7470190 m!8067460))

(assert (=> b!7470190 m!8067422))

(declare-fun m!8067462 () Bool)

(assert (=> b!7470190 m!8067462))

(assert (=> b!7470196 m!8067420))

(declare-fun m!8067464 () Bool)

(assert (=> b!7470192 m!8067464))

(assert (=> b!7469853 d!2298951))

(declare-fun d!2298953 () Bool)

(assert (=> d!2298953 (= (matchR!9338 lt!2625377 s!13591) (matchRSpec!4253 lt!2625377 s!13591))))

(declare-fun lt!2625477 () Unit!165983)

(assert (=> d!2298953 (= lt!2625477 (choose!57741 lt!2625377 s!13591))))

(assert (=> d!2298953 (validRegex!10088 lt!2625377)))

(assert (=> d!2298953 (= (mainMatchTheorem!4247 lt!2625377 s!13591) lt!2625477)))

(declare-fun bs!1930997 () Bool)

(assert (= bs!1930997 d!2298953))

(assert (=> bs!1930997 m!8067272))

(assert (=> bs!1930997 m!8067280))

(declare-fun m!8067466 () Bool)

(assert (=> bs!1930997 m!8067466))

(assert (=> bs!1930997 m!8067458))

(assert (=> b!7469853 d!2298953))

(declare-fun b!7470215 () Bool)

(declare-fun e!4457038 () Bool)

(declare-fun e!4457040 () Bool)

(assert (=> b!7470215 (= e!4457038 e!4457040)))

(declare-fun c!1380371 () Bool)

(assert (=> b!7470215 (= c!1380371 (is-Union!19574 rTail!78))))

(declare-fun d!2298955 () Bool)

(declare-fun res!2996809 () Bool)

(declare-fun e!4457037 () Bool)

(assert (=> d!2298955 (=> res!2996809 e!4457037)))

(assert (=> d!2298955 (= res!2996809 (is-ElementMatch!19574 rTail!78))))

(assert (=> d!2298955 (= (validRegex!10088 rTail!78) e!4457037)))

(declare-fun b!7470216 () Bool)

(declare-fun res!2996806 () Bool)

(declare-fun e!4457041 () Bool)

(assert (=> b!7470216 (=> res!2996806 e!4457041)))

(assert (=> b!7470216 (= res!2996806 (not (is-Concat!28419 rTail!78)))))

(assert (=> b!7470216 (= e!4457040 e!4457041)))

(declare-fun b!7470217 () Bool)

(declare-fun e!4457035 () Bool)

(declare-fun call!685982 () Bool)

(assert (=> b!7470217 (= e!4457035 call!685982)))

(declare-fun b!7470218 () Bool)

(assert (=> b!7470218 (= e!4457037 e!4457038)))

(declare-fun c!1380370 () Bool)

(assert (=> b!7470218 (= c!1380370 (is-Star!19574 rTail!78))))

(declare-fun b!7470219 () Bool)

(declare-fun e!4457039 () Bool)

(assert (=> b!7470219 (= e!4457041 e!4457039)))

(declare-fun res!2996810 () Bool)

(assert (=> b!7470219 (=> (not res!2996810) (not e!4457039))))

(declare-fun call!685981 () Bool)

(assert (=> b!7470219 (= res!2996810 call!685981)))

(declare-fun b!7470220 () Bool)

(declare-fun res!2996807 () Bool)

(assert (=> b!7470220 (=> (not res!2996807) (not e!4457035))))

(assert (=> b!7470220 (= res!2996807 call!685981)))

(assert (=> b!7470220 (= e!4457040 e!4457035)))

(declare-fun b!7470221 () Bool)

(declare-fun e!4457036 () Bool)

(assert (=> b!7470221 (= e!4457038 e!4457036)))

(declare-fun res!2996808 () Bool)

(assert (=> b!7470221 (= res!2996808 (not (nullable!8526 (reg!19903 rTail!78))))))

(assert (=> b!7470221 (=> (not res!2996808) (not e!4457036))))

(declare-fun bm!685975 () Bool)

(assert (=> bm!685975 (= call!685981 (validRegex!10088 (ite c!1380371 (regOne!39661 rTail!78) (regOne!39660 rTail!78))))))

(declare-fun b!7470222 () Bool)

(declare-fun call!685980 () Bool)

(assert (=> b!7470222 (= e!4457036 call!685980)))

(declare-fun bm!685976 () Bool)

(assert (=> bm!685976 (= call!685980 (validRegex!10088 (ite c!1380370 (reg!19903 rTail!78) (ite c!1380371 (regTwo!39661 rTail!78) (regTwo!39660 rTail!78)))))))

(declare-fun bm!685977 () Bool)

(assert (=> bm!685977 (= call!685982 call!685980)))

(declare-fun b!7470223 () Bool)

(assert (=> b!7470223 (= e!4457039 call!685982)))

(assert (= (and d!2298955 (not res!2996809)) b!7470218))

(assert (= (and b!7470218 c!1380370) b!7470221))

(assert (= (and b!7470218 (not c!1380370)) b!7470215))

(assert (= (and b!7470221 res!2996808) b!7470222))

(assert (= (and b!7470215 c!1380371) b!7470220))

(assert (= (and b!7470215 (not c!1380371)) b!7470216))

(assert (= (and b!7470220 res!2996807) b!7470217))

(assert (= (and b!7470216 (not res!2996806)) b!7470219))

(assert (= (and b!7470219 res!2996810) b!7470223))

(assert (= (or b!7470217 b!7470223) bm!685977))

(assert (= (or b!7470220 b!7470219) bm!685975))

(assert (= (or b!7470222 bm!685977) bm!685976))

(declare-fun m!8067474 () Bool)

(assert (=> b!7470221 m!8067474))

(declare-fun m!8067476 () Bool)

(assert (=> bm!685975 m!8067476))

(declare-fun m!8067478 () Bool)

(assert (=> bm!685976 m!8067478))

(assert (=> b!7469848 d!2298955))

(declare-fun b!7470238 () Bool)

(declare-fun e!4457052 () Bool)

(declare-fun e!4457054 () Bool)

(assert (=> b!7470238 (= e!4457052 e!4457054)))

(declare-fun c!1380376 () Bool)

(assert (=> b!7470238 (= c!1380376 (is-Union!19574 r1!5845))))

(declare-fun d!2298959 () Bool)

(declare-fun res!2996822 () Bool)

(declare-fun e!4457051 () Bool)

(assert (=> d!2298959 (=> res!2996822 e!4457051)))

(assert (=> d!2298959 (= res!2996822 (is-ElementMatch!19574 r1!5845))))

(assert (=> d!2298959 (= (validRegex!10088 r1!5845) e!4457051)))

(declare-fun b!7470239 () Bool)

(declare-fun res!2996819 () Bool)

(declare-fun e!4457055 () Bool)

(assert (=> b!7470239 (=> res!2996819 e!4457055)))

(assert (=> b!7470239 (= res!2996819 (not (is-Concat!28419 r1!5845)))))

(assert (=> b!7470239 (= e!4457054 e!4457055)))

(declare-fun b!7470240 () Bool)

(declare-fun e!4457049 () Bool)

(declare-fun call!685986 () Bool)

(assert (=> b!7470240 (= e!4457049 call!685986)))

(declare-fun b!7470241 () Bool)

(assert (=> b!7470241 (= e!4457051 e!4457052)))

(declare-fun c!1380375 () Bool)

(assert (=> b!7470241 (= c!1380375 (is-Star!19574 r1!5845))))

(declare-fun b!7470242 () Bool)

(declare-fun e!4457053 () Bool)

(assert (=> b!7470242 (= e!4457055 e!4457053)))

(declare-fun res!2996823 () Bool)

(assert (=> b!7470242 (=> (not res!2996823) (not e!4457053))))

(declare-fun call!685985 () Bool)

(assert (=> b!7470242 (= res!2996823 call!685985)))

(declare-fun b!7470243 () Bool)

(declare-fun res!2996820 () Bool)

(assert (=> b!7470243 (=> (not res!2996820) (not e!4457049))))

(assert (=> b!7470243 (= res!2996820 call!685985)))

(assert (=> b!7470243 (= e!4457054 e!4457049)))

(declare-fun b!7470244 () Bool)

(declare-fun e!4457050 () Bool)

(assert (=> b!7470244 (= e!4457052 e!4457050)))

(declare-fun res!2996821 () Bool)

(assert (=> b!7470244 (= res!2996821 (not (nullable!8526 (reg!19903 r1!5845))))))

(assert (=> b!7470244 (=> (not res!2996821) (not e!4457050))))

(declare-fun bm!685979 () Bool)

(assert (=> bm!685979 (= call!685985 (validRegex!10088 (ite c!1380376 (regOne!39661 r1!5845) (regOne!39660 r1!5845))))))

(declare-fun b!7470245 () Bool)

(declare-fun call!685984 () Bool)

(assert (=> b!7470245 (= e!4457050 call!685984)))

(declare-fun bm!685980 () Bool)

(assert (=> bm!685980 (= call!685984 (validRegex!10088 (ite c!1380375 (reg!19903 r1!5845) (ite c!1380376 (regTwo!39661 r1!5845) (regTwo!39660 r1!5845)))))))

(declare-fun bm!685981 () Bool)

(assert (=> bm!685981 (= call!685986 call!685984)))

(declare-fun b!7470246 () Bool)

(assert (=> b!7470246 (= e!4457053 call!685986)))

(assert (= (and d!2298959 (not res!2996822)) b!7470241))

(assert (= (and b!7470241 c!1380375) b!7470244))

(assert (= (and b!7470241 (not c!1380375)) b!7470238))

(assert (= (and b!7470244 res!2996821) b!7470245))

(assert (= (and b!7470238 c!1380376) b!7470243))

(assert (= (and b!7470238 (not c!1380376)) b!7470239))

(assert (= (and b!7470243 res!2996820) b!7470240))

(assert (= (and b!7470239 (not res!2996819)) b!7470242))

(assert (= (and b!7470242 res!2996823) b!7470246))

(assert (= (or b!7470240 b!7470246) bm!685981))

(assert (= (or b!7470243 b!7470242) bm!685979))

(assert (= (or b!7470245 bm!685981) bm!685980))

(declare-fun m!8067480 () Bool)

(assert (=> b!7470244 m!8067480))

(declare-fun m!8067482 () Bool)

(assert (=> bm!685979 m!8067482))

(declare-fun m!8067484 () Bool)

(assert (=> bm!685980 m!8067484))

(assert (=> start!724240 d!2298959))

(declare-fun bs!1931004 () Bool)

(declare-fun d!2298961 () Bool)

(assert (= bs!1931004 (and d!2298961 b!7469844)))

(declare-fun lambda!462593 () Int)

(assert (=> bs!1931004 (not (= lambda!462593 lambda!462549))))

(declare-fun bs!1931005 () Bool)

(assert (= bs!1931005 (and d!2298961 b!7469857)))

(assert (=> bs!1931005 (not (= lambda!462593 lambda!462551))))

(declare-fun bs!1931006 () Bool)

(assert (= bs!1931006 (and d!2298961 b!7470152)))

(assert (=> bs!1931006 (not (= lambda!462593 lambda!462589))))

(assert (=> bs!1931005 (= lambda!462593 lambda!462550)))

(declare-fun bs!1931007 () Bool)

(assert (= bs!1931007 (and d!2298961 b!7470148)))

(assert (=> bs!1931007 (not (= lambda!462593 lambda!462590))))

(assert (=> bs!1931004 (= (= r2!5783 lt!2625372) (= lambda!462593 lambda!462548))))

(declare-fun bs!1931008 () Bool)

(assert (= bs!1931008 (and d!2298961 d!2298929)))

(assert (=> bs!1931008 (= (= r2!5783 lt!2625372) (= lambda!462593 lambda!462572))))

(declare-fun bs!1931009 () Bool)

(assert (= bs!1931009 (and d!2298961 b!7470137)))

(assert (=> bs!1931009 (not (= lambda!462593 lambda!462588))))

(declare-fun bs!1931010 () Bool)

(assert (= bs!1931010 (and d!2298961 b!7470141)))

(assert (=> bs!1931010 (not (= lambda!462593 lambda!462587))))

(declare-fun bs!1931011 () Bool)

(assert (= bs!1931011 (and d!2298961 d!2298935)))

(assert (=> bs!1931011 (= (= r2!5783 lt!2625372) (= lambda!462593 lambda!462580))))

(assert (=> bs!1931008 (not (= lambda!462593 lambda!462573))))

(assert (=> d!2298961 true))

(assert (=> d!2298961 true))

(assert (=> d!2298961 true))

(declare-fun lambda!462594 () Int)

(assert (=> bs!1931004 (= (= r2!5783 lt!2625372) (= lambda!462594 lambda!462549))))

(assert (=> bs!1931005 (= lambda!462594 lambda!462551)))

(assert (=> bs!1931006 (not (= lambda!462594 lambda!462589))))

(assert (=> bs!1931005 (not (= lambda!462594 lambda!462550))))

(assert (=> bs!1931007 (= (and (= r2!5783 (regOne!39660 lt!2625373)) (= rTail!78 (regTwo!39660 lt!2625373))) (= lambda!462594 lambda!462590))))

(declare-fun bs!1931012 () Bool)

(assert (= bs!1931012 d!2298961))

(assert (=> bs!1931012 (not (= lambda!462594 lambda!462593))))

(assert (=> bs!1931004 (not (= lambda!462594 lambda!462548))))

(assert (=> bs!1931008 (not (= lambda!462594 lambda!462572))))

(assert (=> bs!1931009 (= (and (= r2!5783 (regOne!39660 lt!2625377)) (= rTail!78 (regTwo!39660 lt!2625377))) (= lambda!462594 lambda!462588))))

(assert (=> bs!1931010 (not (= lambda!462594 lambda!462587))))

(assert (=> bs!1931011 (not (= lambda!462594 lambda!462580))))

(assert (=> bs!1931008 (= (= r2!5783 lt!2625372) (= lambda!462594 lambda!462573))))

(assert (=> d!2298961 true))

(assert (=> d!2298961 true))

(assert (=> d!2298961 true))

(assert (=> d!2298961 (= (Exists!4193 lambda!462593) (Exists!4193 lambda!462594))))

(declare-fun lt!2625479 () Unit!165983)

(assert (=> d!2298961 (= lt!2625479 (choose!57739 r2!5783 rTail!78 s!13591))))

(assert (=> d!2298961 (validRegex!10088 r2!5783)))

(assert (=> d!2298961 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2527 r2!5783 rTail!78 s!13591) lt!2625479)))

(declare-fun m!8067494 () Bool)

(assert (=> bs!1931012 m!8067494))

(declare-fun m!8067496 () Bool)

(assert (=> bs!1931012 m!8067496))

(declare-fun m!8067498 () Bool)

(assert (=> bs!1931012 m!8067498))

(assert (=> bs!1931012 m!8067266))

(assert (=> b!7469857 d!2298961))

(declare-fun d!2298967 () Bool)

(assert (=> d!2298967 (= (Exists!4193 lambda!462551) (choose!57738 lambda!462551))))

(declare-fun bs!1931014 () Bool)

(assert (= bs!1931014 d!2298967))

(declare-fun m!8067500 () Bool)

(assert (=> bs!1931014 m!8067500))

(assert (=> b!7469857 d!2298967))

(declare-fun d!2298969 () Bool)

(assert (=> d!2298969 (= (Exists!4193 lambda!462550) (choose!57738 lambda!462550))))

(declare-fun bs!1931015 () Bool)

(assert (= bs!1931015 d!2298969))

(declare-fun m!8067502 () Bool)

(assert (=> bs!1931015 m!8067502))

(assert (=> b!7469857 d!2298969))

(declare-fun bs!1931016 () Bool)

(declare-fun d!2298971 () Bool)

(assert (= bs!1931016 (and d!2298971 b!7469844)))

(declare-fun lambda!462595 () Int)

(assert (=> bs!1931016 (not (= lambda!462595 lambda!462549))))

(declare-fun bs!1931017 () Bool)

(assert (= bs!1931017 (and d!2298971 b!7470152)))

(assert (=> bs!1931017 (not (= lambda!462595 lambda!462589))))

(declare-fun bs!1931018 () Bool)

(assert (= bs!1931018 (and d!2298971 b!7469857)))

(assert (=> bs!1931018 (= lambda!462595 lambda!462550)))

(declare-fun bs!1931019 () Bool)

(assert (= bs!1931019 (and d!2298971 b!7470148)))

(assert (=> bs!1931019 (not (= lambda!462595 lambda!462590))))

(declare-fun bs!1931020 () Bool)

(assert (= bs!1931020 (and d!2298971 d!2298961)))

(assert (=> bs!1931020 (= lambda!462595 lambda!462593)))

(assert (=> bs!1931016 (= (= r2!5783 lt!2625372) (= lambda!462595 lambda!462548))))

(declare-fun bs!1931021 () Bool)

(assert (= bs!1931021 (and d!2298971 d!2298929)))

(assert (=> bs!1931021 (= (= r2!5783 lt!2625372) (= lambda!462595 lambda!462572))))

(declare-fun bs!1931022 () Bool)

(assert (= bs!1931022 (and d!2298971 b!7470137)))

(assert (=> bs!1931022 (not (= lambda!462595 lambda!462588))))

(declare-fun bs!1931023 () Bool)

(assert (= bs!1931023 (and d!2298971 b!7470141)))

(assert (=> bs!1931023 (not (= lambda!462595 lambda!462587))))

(declare-fun bs!1931024 () Bool)

(assert (= bs!1931024 (and d!2298971 d!2298935)))

(assert (=> bs!1931024 (= (= r2!5783 lt!2625372) (= lambda!462595 lambda!462580))))

(assert (=> bs!1931021 (not (= lambda!462595 lambda!462573))))

(assert (=> bs!1931020 (not (= lambda!462595 lambda!462594))))

(assert (=> bs!1931018 (not (= lambda!462595 lambda!462551))))

(assert (=> d!2298971 true))

(assert (=> d!2298971 true))

(assert (=> d!2298971 true))

(assert (=> d!2298971 (= (isDefined!13820 (findConcatSeparation!3253 r2!5783 rTail!78 Nil!72166 s!13591 s!13591)) (Exists!4193 lambda!462595))))

(declare-fun lt!2625480 () Unit!165983)

(assert (=> d!2298971 (= lt!2625480 (choose!57740 r2!5783 rTail!78 s!13591))))

(assert (=> d!2298971 (validRegex!10088 r2!5783)))

(assert (=> d!2298971 (= (lemmaFindConcatSeparationEquivalentToExists!3011 r2!5783 rTail!78 s!13591) lt!2625480)))

(declare-fun bs!1931025 () Bool)

(assert (= bs!1931025 d!2298971))

(declare-fun m!8067504 () Bool)

(assert (=> bs!1931025 m!8067504))

(assert (=> bs!1931025 m!8067266))

(declare-fun m!8067506 () Bool)

(assert (=> bs!1931025 m!8067506))

(assert (=> bs!1931025 m!8067300))

(assert (=> bs!1931025 m!8067304))

(assert (=> bs!1931025 m!8067300))

(assert (=> b!7469857 d!2298971))

(declare-fun d!2298973 () Bool)

(assert (=> d!2298973 (= (isDefined!13820 (findConcatSeparation!3253 r2!5783 rTail!78 Nil!72166 s!13591 s!13591)) (not (isEmpty!41167 (findConcatSeparation!3253 r2!5783 rTail!78 Nil!72166 s!13591 s!13591))))))

(declare-fun bs!1931026 () Bool)

(assert (= bs!1931026 d!2298973))

(assert (=> bs!1931026 m!8067300))

(declare-fun m!8067508 () Bool)

(assert (=> bs!1931026 m!8067508))

(assert (=> b!7469857 d!2298973))

(declare-fun b!7470247 () Bool)

(declare-fun res!2996825 () Bool)

(declare-fun e!4457058 () Bool)

(assert (=> b!7470247 (=> (not res!2996825) (not e!4457058))))

(declare-fun lt!2625481 () Option!17131)

(assert (=> b!7470247 (= res!2996825 (matchR!9338 r2!5783 (_1!37602 (get!25225 lt!2625481))))))

(declare-fun b!7470248 () Bool)

(declare-fun e!4457059 () Option!17131)

(assert (=> b!7470248 (= e!4457059 (Some!17130 (tuple2!68599 Nil!72166 s!13591)))))

(declare-fun b!7470249 () Bool)

(declare-fun lt!2625483 () Unit!165983)

(declare-fun lt!2625482 () Unit!165983)

(assert (=> b!7470249 (= lt!2625483 lt!2625482)))

(assert (=> b!7470249 (= (++!17200 (++!17200 Nil!72166 (Cons!72166 (h!78614 s!13591) Nil!72166)) (t!386859 s!13591)) s!13591)))

(assert (=> b!7470249 (= lt!2625482 (lemmaMoveElementToOtherListKeepsConcatEq!3078 Nil!72166 (h!78614 s!13591) (t!386859 s!13591) s!13591))))

(declare-fun e!4457056 () Option!17131)

(assert (=> b!7470249 (= e!4457056 (findConcatSeparation!3253 r2!5783 rTail!78 (++!17200 Nil!72166 (Cons!72166 (h!78614 s!13591) Nil!72166)) (t!386859 s!13591) s!13591))))

(declare-fun d!2298975 () Bool)

(declare-fun e!4457057 () Bool)

(assert (=> d!2298975 e!4457057))

(declare-fun res!2996826 () Bool)

(assert (=> d!2298975 (=> res!2996826 e!4457057)))

(assert (=> d!2298975 (= res!2996826 e!4457058)))

(declare-fun res!2996824 () Bool)

(assert (=> d!2298975 (=> (not res!2996824) (not e!4457058))))

(assert (=> d!2298975 (= res!2996824 (isDefined!13820 lt!2625481))))

(assert (=> d!2298975 (= lt!2625481 e!4457059)))

(declare-fun c!1380378 () Bool)

(declare-fun e!4457060 () Bool)

(assert (=> d!2298975 (= c!1380378 e!4457060)))

(declare-fun res!2996827 () Bool)

(assert (=> d!2298975 (=> (not res!2996827) (not e!4457060))))

(assert (=> d!2298975 (= res!2996827 (matchR!9338 r2!5783 Nil!72166))))

(assert (=> d!2298975 (validRegex!10088 r2!5783)))

(assert (=> d!2298975 (= (findConcatSeparation!3253 r2!5783 rTail!78 Nil!72166 s!13591 s!13591) lt!2625481)))

(declare-fun b!7470250 () Bool)

(assert (=> b!7470250 (= e!4457060 (matchR!9338 rTail!78 s!13591))))

(declare-fun b!7470251 () Bool)

(assert (=> b!7470251 (= e!4457058 (= (++!17200 (_1!37602 (get!25225 lt!2625481)) (_2!37602 (get!25225 lt!2625481))) s!13591))))

(declare-fun b!7470252 () Bool)

(assert (=> b!7470252 (= e!4457059 e!4457056)))

(declare-fun c!1380377 () Bool)

(assert (=> b!7470252 (= c!1380377 (is-Nil!72166 s!13591))))

(declare-fun b!7470253 () Bool)

(declare-fun res!2996828 () Bool)

(assert (=> b!7470253 (=> (not res!2996828) (not e!4457058))))

(assert (=> b!7470253 (= res!2996828 (matchR!9338 rTail!78 (_2!37602 (get!25225 lt!2625481))))))

(declare-fun b!7470254 () Bool)

(assert (=> b!7470254 (= e!4457056 None!17130)))

(declare-fun b!7470255 () Bool)

(assert (=> b!7470255 (= e!4457057 (not (isDefined!13820 lt!2625481)))))

(assert (= (and d!2298975 res!2996827) b!7470250))

(assert (= (and d!2298975 c!1380378) b!7470248))

(assert (= (and d!2298975 (not c!1380378)) b!7470252))

(assert (= (and b!7470252 c!1380377) b!7470254))

(assert (= (and b!7470252 (not c!1380377)) b!7470249))

(assert (= (and d!2298975 res!2996824) b!7470247))

(assert (= (and b!7470247 res!2996825) b!7470253))

(assert (= (and b!7470253 res!2996828) b!7470251))

(assert (= (and d!2298975 (not res!2996826)) b!7470255))

(declare-fun m!8067510 () Bool)

(assert (=> d!2298975 m!8067510))

(declare-fun m!8067512 () Bool)

(assert (=> d!2298975 m!8067512))

(assert (=> d!2298975 m!8067266))

(assert (=> b!7470249 m!8067382))

(assert (=> b!7470249 m!8067382))

(assert (=> b!7470249 m!8067384))

(assert (=> b!7470249 m!8067386))

(assert (=> b!7470249 m!8067382))

(declare-fun m!8067514 () Bool)

(assert (=> b!7470249 m!8067514))

(declare-fun m!8067516 () Bool)

(assert (=> b!7470247 m!8067516))

(declare-fun m!8067518 () Bool)

(assert (=> b!7470247 m!8067518))

(assert (=> b!7470251 m!8067516))

(declare-fun m!8067520 () Bool)

(assert (=> b!7470251 m!8067520))

(assert (=> b!7470250 m!8067396))

(assert (=> b!7470253 m!8067516))

(declare-fun m!8067522 () Bool)

(assert (=> b!7470253 m!8067522))

(assert (=> b!7470255 m!8067510))

(assert (=> b!7469857 d!2298975))

(declare-fun b!7470256 () Bool)

(declare-fun e!4457064 () Bool)

(declare-fun e!4457066 () Bool)

(assert (=> b!7470256 (= e!4457064 e!4457066)))

(declare-fun c!1380380 () Bool)

(assert (=> b!7470256 (= c!1380380 (is-Union!19574 r2!5783))))

(declare-fun d!2298977 () Bool)

(declare-fun res!2996832 () Bool)

(declare-fun e!4457063 () Bool)

(assert (=> d!2298977 (=> res!2996832 e!4457063)))

(assert (=> d!2298977 (= res!2996832 (is-ElementMatch!19574 r2!5783))))

(assert (=> d!2298977 (= (validRegex!10088 r2!5783) e!4457063)))

(declare-fun b!7470257 () Bool)

(declare-fun res!2996829 () Bool)

(declare-fun e!4457067 () Bool)

(assert (=> b!7470257 (=> res!2996829 e!4457067)))

(assert (=> b!7470257 (= res!2996829 (not (is-Concat!28419 r2!5783)))))

(assert (=> b!7470257 (= e!4457066 e!4457067)))

(declare-fun b!7470258 () Bool)

(declare-fun e!4457061 () Bool)

(declare-fun call!685989 () Bool)

(assert (=> b!7470258 (= e!4457061 call!685989)))

(declare-fun b!7470259 () Bool)

(assert (=> b!7470259 (= e!4457063 e!4457064)))

(declare-fun c!1380379 () Bool)

(assert (=> b!7470259 (= c!1380379 (is-Star!19574 r2!5783))))

(declare-fun b!7470260 () Bool)

(declare-fun e!4457065 () Bool)

(assert (=> b!7470260 (= e!4457067 e!4457065)))

(declare-fun res!2996833 () Bool)

(assert (=> b!7470260 (=> (not res!2996833) (not e!4457065))))

(declare-fun call!685988 () Bool)

(assert (=> b!7470260 (= res!2996833 call!685988)))

(declare-fun b!7470261 () Bool)

(declare-fun res!2996830 () Bool)

(assert (=> b!7470261 (=> (not res!2996830) (not e!4457061))))

(assert (=> b!7470261 (= res!2996830 call!685988)))

(assert (=> b!7470261 (= e!4457066 e!4457061)))

(declare-fun b!7470262 () Bool)

(declare-fun e!4457062 () Bool)

(assert (=> b!7470262 (= e!4457064 e!4457062)))

(declare-fun res!2996831 () Bool)

(assert (=> b!7470262 (= res!2996831 (not (nullable!8526 (reg!19903 r2!5783))))))

(assert (=> b!7470262 (=> (not res!2996831) (not e!4457062))))

(declare-fun bm!685982 () Bool)

(assert (=> bm!685982 (= call!685988 (validRegex!10088 (ite c!1380380 (regOne!39661 r2!5783) (regOne!39660 r2!5783))))))

(declare-fun b!7470263 () Bool)

(declare-fun call!685987 () Bool)

(assert (=> b!7470263 (= e!4457062 call!685987)))

(declare-fun bm!685983 () Bool)

(assert (=> bm!685983 (= call!685987 (validRegex!10088 (ite c!1380379 (reg!19903 r2!5783) (ite c!1380380 (regTwo!39661 r2!5783) (regTwo!39660 r2!5783)))))))

(declare-fun bm!685984 () Bool)

(assert (=> bm!685984 (= call!685989 call!685987)))

(declare-fun b!7470264 () Bool)

(assert (=> b!7470264 (= e!4457065 call!685989)))

(assert (= (and d!2298977 (not res!2996832)) b!7470259))

(assert (= (and b!7470259 c!1380379) b!7470262))

(assert (= (and b!7470259 (not c!1380379)) b!7470256))

(assert (= (and b!7470262 res!2996831) b!7470263))

(assert (= (and b!7470256 c!1380380) b!7470261))

(assert (= (and b!7470256 (not c!1380380)) b!7470257))

(assert (= (and b!7470261 res!2996830) b!7470258))

(assert (= (and b!7470257 (not res!2996829)) b!7470260))

(assert (= (and b!7470260 res!2996833) b!7470264))

(assert (= (or b!7470258 b!7470264) bm!685984))

(assert (= (or b!7470261 b!7470260) bm!685982))

(assert (= (or b!7470263 bm!685984) bm!685983))

(declare-fun m!8067524 () Bool)

(assert (=> b!7470262 m!8067524))

(declare-fun m!8067526 () Bool)

(assert (=> bm!685982 m!8067526))

(declare-fun m!8067528 () Bool)

(assert (=> bm!685983 m!8067528))

(assert (=> b!7469852 d!2298977))

(declare-fun b!7470265 () Bool)

(declare-fun e!4457072 () Bool)

(declare-fun e!4457073 () Bool)

(assert (=> b!7470265 (= e!4457072 e!4457073)))

(declare-fun c!1380383 () Bool)

(assert (=> b!7470265 (= c!1380383 (is-EmptyLang!19574 lt!2625376))))

(declare-fun b!7470266 () Bool)

(declare-fun res!2996840 () Bool)

(declare-fun e!4457068 () Bool)

(assert (=> b!7470266 (=> (not res!2996840) (not e!4457068))))

(declare-fun call!685990 () Bool)

(assert (=> b!7470266 (= res!2996840 (not call!685990))))

(declare-fun b!7470267 () Bool)

(declare-fun e!4457070 () Bool)

(assert (=> b!7470267 (= e!4457070 (not (= (head!15325 s!13591) (c!1380305 lt!2625376))))))

(declare-fun b!7470268 () Bool)

(declare-fun e!4457074 () Bool)

(assert (=> b!7470268 (= e!4457074 e!4457070)))

(declare-fun res!2996839 () Bool)

(assert (=> b!7470268 (=> res!2996839 e!4457070)))

(assert (=> b!7470268 (= res!2996839 call!685990)))

(declare-fun b!7470269 () Bool)

(declare-fun res!2996841 () Bool)

(declare-fun e!4457071 () Bool)

(assert (=> b!7470269 (=> res!2996841 e!4457071)))

(assert (=> b!7470269 (= res!2996841 e!4457068)))

(declare-fun res!2996838 () Bool)

(assert (=> b!7470269 (=> (not res!2996838) (not e!4457068))))

(declare-fun lt!2625484 () Bool)

(assert (=> b!7470269 (= res!2996838 lt!2625484)))

(declare-fun b!7470270 () Bool)

(assert (=> b!7470270 (= e!4457073 (not lt!2625484))))

(declare-fun b!7470272 () Bool)

(declare-fun e!4457069 () Bool)

(assert (=> b!7470272 (= e!4457069 (matchR!9338 (derivativeStep!5585 lt!2625376 (head!15325 s!13591)) (tail!14894 s!13591)))))

(declare-fun b!7470273 () Bool)

(assert (=> b!7470273 (= e!4457072 (= lt!2625484 call!685990))))

(declare-fun b!7470274 () Bool)

(assert (=> b!7470274 (= e!4457069 (nullable!8526 lt!2625376))))

(declare-fun b!7470275 () Bool)

(declare-fun res!2996835 () Bool)

(assert (=> b!7470275 (=> res!2996835 e!4457070)))

(assert (=> b!7470275 (= res!2996835 (not (isEmpty!41168 (tail!14894 s!13591))))))

(declare-fun bm!685985 () Bool)

(assert (=> bm!685985 (= call!685990 (isEmpty!41168 s!13591))))

(declare-fun b!7470276 () Bool)

(declare-fun res!2996837 () Bool)

(assert (=> b!7470276 (=> res!2996837 e!4457071)))

(assert (=> b!7470276 (= res!2996837 (not (is-ElementMatch!19574 lt!2625376)))))

(assert (=> b!7470276 (= e!4457073 e!4457071)))

(declare-fun b!7470277 () Bool)

(declare-fun res!2996836 () Bool)

(assert (=> b!7470277 (=> (not res!2996836) (not e!4457068))))

(assert (=> b!7470277 (= res!2996836 (isEmpty!41168 (tail!14894 s!13591)))))

(declare-fun b!7470278 () Bool)

(assert (=> b!7470278 (= e!4457068 (= (head!15325 s!13591) (c!1380305 lt!2625376)))))

(declare-fun b!7470271 () Bool)

(assert (=> b!7470271 (= e!4457071 e!4457074)))

(declare-fun res!2996834 () Bool)

(assert (=> b!7470271 (=> (not res!2996834) (not e!4457074))))

(assert (=> b!7470271 (= res!2996834 (not lt!2625484))))

(declare-fun d!2298979 () Bool)

(assert (=> d!2298979 e!4457072))

(declare-fun c!1380382 () Bool)

(assert (=> d!2298979 (= c!1380382 (is-EmptyExpr!19574 lt!2625376))))

(assert (=> d!2298979 (= lt!2625484 e!4457069)))

(declare-fun c!1380381 () Bool)

(assert (=> d!2298979 (= c!1380381 (isEmpty!41168 s!13591))))

(assert (=> d!2298979 (validRegex!10088 lt!2625376)))

(assert (=> d!2298979 (= (matchR!9338 lt!2625376 s!13591) lt!2625484)))

(assert (= (and d!2298979 c!1380381) b!7470274))

(assert (= (and d!2298979 (not c!1380381)) b!7470272))

(assert (= (and d!2298979 c!1380382) b!7470273))

(assert (= (and d!2298979 (not c!1380382)) b!7470265))

(assert (= (and b!7470265 c!1380383) b!7470270))

(assert (= (and b!7470265 (not c!1380383)) b!7470276))

(assert (= (and b!7470276 (not res!2996837)) b!7470269))

(assert (= (and b!7470269 res!2996838) b!7470266))

(assert (= (and b!7470266 res!2996840) b!7470277))

(assert (= (and b!7470277 res!2996836) b!7470278))

(assert (= (and b!7470269 (not res!2996841)) b!7470271))

(assert (= (and b!7470271 res!2996834) b!7470268))

(assert (= (and b!7470268 (not res!2996839)) b!7470275))

(assert (= (and b!7470275 (not res!2996835)) b!7470267))

(assert (= (or b!7470273 b!7470266 b!7470268) bm!685985))

(assert (=> d!2298979 m!8067416))

(declare-fun m!8067530 () Bool)

(assert (=> d!2298979 m!8067530))

(assert (=> b!7470267 m!8067420))

(assert (=> bm!685985 m!8067416))

(assert (=> b!7470277 m!8067422))

(assert (=> b!7470277 m!8067422))

(assert (=> b!7470277 m!8067424))

(assert (=> b!7470275 m!8067422))

(assert (=> b!7470275 m!8067422))

(assert (=> b!7470275 m!8067424))

(assert (=> b!7470272 m!8067420))

(assert (=> b!7470272 m!8067420))

(declare-fun m!8067532 () Bool)

(assert (=> b!7470272 m!8067532))

(assert (=> b!7470272 m!8067422))

(assert (=> b!7470272 m!8067532))

(assert (=> b!7470272 m!8067422))

(declare-fun m!8067534 () Bool)

(assert (=> b!7470272 m!8067534))

(assert (=> b!7470278 m!8067420))

(declare-fun m!8067536 () Bool)

(assert (=> b!7470274 m!8067536))

(assert (=> b!7469862 d!2298979))

(declare-fun d!2298981 () Bool)

(assert (=> d!2298981 (= (matchR!9338 lt!2625376 s!13591) (matchRSpec!4253 lt!2625376 s!13591))))

(declare-fun lt!2625485 () Unit!165983)

(assert (=> d!2298981 (= lt!2625485 (choose!57741 lt!2625376 s!13591))))

(assert (=> d!2298981 (validRegex!10088 lt!2625376)))

(assert (=> d!2298981 (= (mainMatchTheorem!4247 lt!2625376 s!13591) lt!2625485)))

(declare-fun bs!1931027 () Bool)

(assert (= bs!1931027 d!2298981))

(assert (=> bs!1931027 m!8067260))

(assert (=> bs!1931027 m!8067256))

(declare-fun m!8067538 () Bool)

(assert (=> bs!1931027 m!8067538))

(assert (=> bs!1931027 m!8067530))

(assert (=> b!7469862 d!2298981))

(declare-fun bs!1931028 () Bool)

(declare-fun b!7470284 () Bool)

(assert (= bs!1931028 (and b!7470284 b!7469844)))

(declare-fun lambda!462596 () Int)

(assert (=> bs!1931028 (not (= lambda!462596 lambda!462549))))

(declare-fun bs!1931029 () Bool)

(assert (= bs!1931029 (and b!7470284 b!7470152)))

(assert (=> bs!1931029 (= (and (= (reg!19903 lt!2625388) (reg!19903 lt!2625373)) (= lt!2625388 lt!2625373)) (= lambda!462596 lambda!462589))))

(declare-fun bs!1931030 () Bool)

(assert (= bs!1931030 (and b!7470284 b!7469857)))

(assert (=> bs!1931030 (not (= lambda!462596 lambda!462550))))

(declare-fun bs!1931031 () Bool)

(assert (= bs!1931031 (and b!7470284 b!7470148)))

(assert (=> bs!1931031 (not (= lambda!462596 lambda!462590))))

(declare-fun bs!1931032 () Bool)

(assert (= bs!1931032 (and b!7470284 d!2298961)))

(assert (=> bs!1931032 (not (= lambda!462596 lambda!462593))))

(assert (=> bs!1931028 (not (= lambda!462596 lambda!462548))))

(declare-fun bs!1931033 () Bool)

(assert (= bs!1931033 (and b!7470284 d!2298929)))

(assert (=> bs!1931033 (not (= lambda!462596 lambda!462572))))

(declare-fun bs!1931034 () Bool)

(assert (= bs!1931034 (and b!7470284 b!7470137)))

(assert (=> bs!1931034 (not (= lambda!462596 lambda!462588))))

(declare-fun bs!1931035 () Bool)

(assert (= bs!1931035 (and b!7470284 b!7470141)))

(assert (=> bs!1931035 (= (and (= (reg!19903 lt!2625388) (reg!19903 lt!2625377)) (= lt!2625388 lt!2625377)) (= lambda!462596 lambda!462587))))

(declare-fun bs!1931036 () Bool)

(assert (= bs!1931036 (and b!7470284 d!2298935)))

(assert (=> bs!1931036 (not (= lambda!462596 lambda!462580))))

(assert (=> bs!1931032 (not (= lambda!462596 lambda!462594))))

(assert (=> bs!1931030 (not (= lambda!462596 lambda!462551))))

(assert (=> bs!1931033 (not (= lambda!462596 lambda!462573))))

(declare-fun bs!1931037 () Bool)

(assert (= bs!1931037 (and b!7470284 d!2298971)))

(assert (=> bs!1931037 (not (= lambda!462596 lambda!462595))))

(assert (=> b!7470284 true))

(assert (=> b!7470284 true))

(declare-fun bs!1931038 () Bool)

(declare-fun b!7470280 () Bool)

(assert (= bs!1931038 (and b!7470280 b!7470284)))

(declare-fun lambda!462597 () Int)

(assert (=> bs!1931038 (not (= lambda!462597 lambda!462596))))

(declare-fun bs!1931039 () Bool)

(assert (= bs!1931039 (and b!7470280 b!7469844)))

(assert (=> bs!1931039 (= (and (= (regOne!39660 lt!2625388) lt!2625372) (= (regTwo!39660 lt!2625388) rTail!78)) (= lambda!462597 lambda!462549))))

(declare-fun bs!1931040 () Bool)

(assert (= bs!1931040 (and b!7470280 b!7470152)))

(assert (=> bs!1931040 (not (= lambda!462597 lambda!462589))))

(declare-fun bs!1931041 () Bool)

(assert (= bs!1931041 (and b!7470280 b!7469857)))

(assert (=> bs!1931041 (not (= lambda!462597 lambda!462550))))

(declare-fun bs!1931042 () Bool)

(assert (= bs!1931042 (and b!7470280 b!7470148)))

(assert (=> bs!1931042 (= (and (= (regOne!39660 lt!2625388) (regOne!39660 lt!2625373)) (= (regTwo!39660 lt!2625388) (regTwo!39660 lt!2625373))) (= lambda!462597 lambda!462590))))

(declare-fun bs!1931043 () Bool)

(assert (= bs!1931043 (and b!7470280 d!2298961)))

(assert (=> bs!1931043 (not (= lambda!462597 lambda!462593))))

(assert (=> bs!1931039 (not (= lambda!462597 lambda!462548))))

(declare-fun bs!1931044 () Bool)

(assert (= bs!1931044 (and b!7470280 d!2298929)))

(assert (=> bs!1931044 (not (= lambda!462597 lambda!462572))))

(declare-fun bs!1931045 () Bool)

(assert (= bs!1931045 (and b!7470280 b!7470137)))

(assert (=> bs!1931045 (= (and (= (regOne!39660 lt!2625388) (regOne!39660 lt!2625377)) (= (regTwo!39660 lt!2625388) (regTwo!39660 lt!2625377))) (= lambda!462597 lambda!462588))))

(declare-fun bs!1931046 () Bool)

(assert (= bs!1931046 (and b!7470280 b!7470141)))

(assert (=> bs!1931046 (not (= lambda!462597 lambda!462587))))

(declare-fun bs!1931047 () Bool)

(assert (= bs!1931047 (and b!7470280 d!2298935)))

(assert (=> bs!1931047 (not (= lambda!462597 lambda!462580))))

(assert (=> bs!1931043 (= (and (= (regOne!39660 lt!2625388) r2!5783) (= (regTwo!39660 lt!2625388) rTail!78)) (= lambda!462597 lambda!462594))))

(assert (=> bs!1931041 (= (and (= (regOne!39660 lt!2625388) r2!5783) (= (regTwo!39660 lt!2625388) rTail!78)) (= lambda!462597 lambda!462551))))

(assert (=> bs!1931044 (= (and (= (regOne!39660 lt!2625388) lt!2625372) (= (regTwo!39660 lt!2625388) rTail!78)) (= lambda!462597 lambda!462573))))

(declare-fun bs!1931048 () Bool)

(assert (= bs!1931048 (and b!7470280 d!2298971)))

(assert (=> bs!1931048 (not (= lambda!462597 lambda!462595))))

(assert (=> b!7470280 true))

(assert (=> b!7470280 true))

(declare-fun b!7470279 () Bool)

(declare-fun e!4457076 () Bool)

(assert (=> b!7470279 (= e!4457076 (= s!13591 (Cons!72166 (c!1380305 lt!2625388) Nil!72166)))))

(declare-fun call!685991 () Bool)

(declare-fun c!1380387 () Bool)

(declare-fun bm!685986 () Bool)

(assert (=> bm!685986 (= call!685991 (Exists!4193 (ite c!1380387 lambda!462596 lambda!462597)))))

(declare-fun d!2298983 () Bool)

(declare-fun c!1380384 () Bool)

(assert (=> d!2298983 (= c!1380384 (is-EmptyExpr!19574 lt!2625388))))

(declare-fun e!4457075 () Bool)

(assert (=> d!2298983 (= (matchRSpec!4253 lt!2625388 s!13591) e!4457075)))

(declare-fun e!4457079 () Bool)

(assert (=> b!7470280 (= e!4457079 call!685991)))

(declare-fun b!7470281 () Bool)

(declare-fun call!685992 () Bool)

(assert (=> b!7470281 (= e!4457075 call!685992)))

(declare-fun b!7470282 () Bool)

(declare-fun res!2996844 () Bool)

(declare-fun e!4457081 () Bool)

(assert (=> b!7470282 (=> res!2996844 e!4457081)))

(assert (=> b!7470282 (= res!2996844 call!685992)))

(assert (=> b!7470282 (= e!4457079 e!4457081)))

(declare-fun b!7470283 () Bool)

(declare-fun e!4457077 () Bool)

(assert (=> b!7470283 (= e!4457077 e!4457079)))

(assert (=> b!7470283 (= c!1380387 (is-Star!19574 lt!2625388))))

(assert (=> b!7470284 (= e!4457081 call!685991)))

(declare-fun bm!685987 () Bool)

(assert (=> bm!685987 (= call!685992 (isEmpty!41168 s!13591))))

(declare-fun b!7470285 () Bool)

(declare-fun e!4457078 () Bool)

(assert (=> b!7470285 (= e!4457078 (matchRSpec!4253 (regTwo!39661 lt!2625388) s!13591))))

(declare-fun b!7470286 () Bool)

(declare-fun e!4457080 () Bool)

(assert (=> b!7470286 (= e!4457075 e!4457080)))

(declare-fun res!2996843 () Bool)

(assert (=> b!7470286 (= res!2996843 (not (is-EmptyLang!19574 lt!2625388)))))

(assert (=> b!7470286 (=> (not res!2996843) (not e!4457080))))

(declare-fun b!7470287 () Bool)

(declare-fun c!1380385 () Bool)

(assert (=> b!7470287 (= c!1380385 (is-Union!19574 lt!2625388))))

(assert (=> b!7470287 (= e!4457076 e!4457077)))

(declare-fun b!7470288 () Bool)

(declare-fun c!1380386 () Bool)

(assert (=> b!7470288 (= c!1380386 (is-ElementMatch!19574 lt!2625388))))

(assert (=> b!7470288 (= e!4457080 e!4457076)))

(declare-fun b!7470289 () Bool)

(assert (=> b!7470289 (= e!4457077 e!4457078)))

(declare-fun res!2996842 () Bool)

(assert (=> b!7470289 (= res!2996842 (matchRSpec!4253 (regOne!39661 lt!2625388) s!13591))))

(assert (=> b!7470289 (=> res!2996842 e!4457078)))

(assert (= (and d!2298983 c!1380384) b!7470281))

(assert (= (and d!2298983 (not c!1380384)) b!7470286))

(assert (= (and b!7470286 res!2996843) b!7470288))

(assert (= (and b!7470288 c!1380386) b!7470279))

(assert (= (and b!7470288 (not c!1380386)) b!7470287))

(assert (= (and b!7470287 c!1380385) b!7470289))

(assert (= (and b!7470287 (not c!1380385)) b!7470283))

(assert (= (and b!7470289 (not res!2996842)) b!7470285))

(assert (= (and b!7470283 c!1380387) b!7470282))

(assert (= (and b!7470283 (not c!1380387)) b!7470280))

(assert (= (and b!7470282 (not res!2996844)) b!7470284))

(assert (= (or b!7470284 b!7470280) bm!685986))

(assert (= (or b!7470281 b!7470282) bm!685987))

(declare-fun m!8067540 () Bool)

(assert (=> bm!685986 m!8067540))

(assert (=> bm!685987 m!8067416))

(declare-fun m!8067542 () Bool)

(assert (=> b!7470285 m!8067542))

(declare-fun m!8067544 () Bool)

(assert (=> b!7470289 m!8067544))

(assert (=> b!7469862 d!2298983))

(declare-fun d!2298985 () Bool)

(assert (=> d!2298985 (= (matchR!9338 lt!2625388 s!13591) (matchRSpec!4253 lt!2625388 s!13591))))

(declare-fun lt!2625488 () Unit!165983)

(assert (=> d!2298985 (= lt!2625488 (choose!57741 lt!2625388 s!13591))))

(assert (=> d!2298985 (validRegex!10088 lt!2625388)))

(assert (=> d!2298985 (= (mainMatchTheorem!4247 lt!2625388 s!13591) lt!2625488)))

(declare-fun bs!1931049 () Bool)

(assert (= bs!1931049 d!2298985))

(assert (=> bs!1931049 m!8067262))

(assert (=> bs!1931049 m!8067258))

(declare-fun m!8067546 () Bool)

(assert (=> bs!1931049 m!8067546))

(declare-fun m!8067548 () Bool)

(assert (=> bs!1931049 m!8067548))

(assert (=> b!7469862 d!2298985))

(declare-fun bs!1931050 () Bool)

(declare-fun b!7470299 () Bool)

(assert (= bs!1931050 (and b!7470299 b!7470284)))

(declare-fun lambda!462600 () Int)

(assert (=> bs!1931050 (= (and (= (reg!19903 lt!2625376) (reg!19903 lt!2625388)) (= lt!2625376 lt!2625388)) (= lambda!462600 lambda!462596))))

(declare-fun bs!1931051 () Bool)

(assert (= bs!1931051 (and b!7470299 b!7469844)))

(assert (=> bs!1931051 (not (= lambda!462600 lambda!462549))))

(declare-fun bs!1931052 () Bool)

(assert (= bs!1931052 (and b!7470299 b!7470152)))

(assert (=> bs!1931052 (= (and (= (reg!19903 lt!2625376) (reg!19903 lt!2625373)) (= lt!2625376 lt!2625373)) (= lambda!462600 lambda!462589))))

(declare-fun bs!1931053 () Bool)

(assert (= bs!1931053 (and b!7470299 b!7470280)))

(assert (=> bs!1931053 (not (= lambda!462600 lambda!462597))))

(declare-fun bs!1931054 () Bool)

(assert (= bs!1931054 (and b!7470299 b!7469857)))

(assert (=> bs!1931054 (not (= lambda!462600 lambda!462550))))

(declare-fun bs!1931055 () Bool)

(assert (= bs!1931055 (and b!7470299 b!7470148)))

(assert (=> bs!1931055 (not (= lambda!462600 lambda!462590))))

(declare-fun bs!1931056 () Bool)

(assert (= bs!1931056 (and b!7470299 d!2298961)))

(assert (=> bs!1931056 (not (= lambda!462600 lambda!462593))))

(assert (=> bs!1931051 (not (= lambda!462600 lambda!462548))))

(declare-fun bs!1931057 () Bool)

(assert (= bs!1931057 (and b!7470299 d!2298929)))

(assert (=> bs!1931057 (not (= lambda!462600 lambda!462572))))

(declare-fun bs!1931058 () Bool)

(assert (= bs!1931058 (and b!7470299 b!7470137)))

(assert (=> bs!1931058 (not (= lambda!462600 lambda!462588))))

(declare-fun bs!1931059 () Bool)

(assert (= bs!1931059 (and b!7470299 b!7470141)))

(assert (=> bs!1931059 (= (and (= (reg!19903 lt!2625376) (reg!19903 lt!2625377)) (= lt!2625376 lt!2625377)) (= lambda!462600 lambda!462587))))

(declare-fun bs!1931060 () Bool)

(assert (= bs!1931060 (and b!7470299 d!2298935)))

(assert (=> bs!1931060 (not (= lambda!462600 lambda!462580))))

(assert (=> bs!1931056 (not (= lambda!462600 lambda!462594))))

(assert (=> bs!1931054 (not (= lambda!462600 lambda!462551))))

(assert (=> bs!1931057 (not (= lambda!462600 lambda!462573))))

(declare-fun bs!1931061 () Bool)

(assert (= bs!1931061 (and b!7470299 d!2298971)))

(assert (=> bs!1931061 (not (= lambda!462600 lambda!462595))))

(assert (=> b!7470299 true))

(assert (=> b!7470299 true))

(declare-fun bs!1931062 () Bool)

(declare-fun b!7470295 () Bool)

(assert (= bs!1931062 (and b!7470295 b!7470284)))

(declare-fun lambda!462601 () Int)

(assert (=> bs!1931062 (not (= lambda!462601 lambda!462596))))

(declare-fun bs!1931063 () Bool)

(assert (= bs!1931063 (and b!7470295 b!7469844)))

(assert (=> bs!1931063 (= (and (= (regOne!39660 lt!2625376) lt!2625372) (= (regTwo!39660 lt!2625376) rTail!78)) (= lambda!462601 lambda!462549))))

(declare-fun bs!1931064 () Bool)

(assert (= bs!1931064 (and b!7470295 b!7470152)))

(assert (=> bs!1931064 (not (= lambda!462601 lambda!462589))))

(declare-fun bs!1931065 () Bool)

(assert (= bs!1931065 (and b!7470295 b!7470280)))

(assert (=> bs!1931065 (= (and (= (regOne!39660 lt!2625376) (regOne!39660 lt!2625388)) (= (regTwo!39660 lt!2625376) (regTwo!39660 lt!2625388))) (= lambda!462601 lambda!462597))))

(declare-fun bs!1931066 () Bool)

(assert (= bs!1931066 (and b!7470295 b!7469857)))

(assert (=> bs!1931066 (not (= lambda!462601 lambda!462550))))

(declare-fun bs!1931067 () Bool)

(assert (= bs!1931067 (and b!7470295 b!7470148)))

(assert (=> bs!1931067 (= (and (= (regOne!39660 lt!2625376) (regOne!39660 lt!2625373)) (= (regTwo!39660 lt!2625376) (regTwo!39660 lt!2625373))) (= lambda!462601 lambda!462590))))

(declare-fun bs!1931068 () Bool)

(assert (= bs!1931068 (and b!7470295 d!2298961)))

(assert (=> bs!1931068 (not (= lambda!462601 lambda!462593))))

(assert (=> bs!1931063 (not (= lambda!462601 lambda!462548))))

(declare-fun bs!1931069 () Bool)

(assert (= bs!1931069 (and b!7470295 d!2298929)))

(assert (=> bs!1931069 (not (= lambda!462601 lambda!462572))))

(declare-fun bs!1931070 () Bool)

(assert (= bs!1931070 (and b!7470295 b!7470137)))

(assert (=> bs!1931070 (= (and (= (regOne!39660 lt!2625376) (regOne!39660 lt!2625377)) (= (regTwo!39660 lt!2625376) (regTwo!39660 lt!2625377))) (= lambda!462601 lambda!462588))))

(declare-fun bs!1931071 () Bool)

(assert (= bs!1931071 (and b!7470295 b!7470141)))

(assert (=> bs!1931071 (not (= lambda!462601 lambda!462587))))

(declare-fun bs!1931072 () Bool)

(assert (= bs!1931072 (and b!7470295 b!7470299)))

(assert (=> bs!1931072 (not (= lambda!462601 lambda!462600))))

(declare-fun bs!1931073 () Bool)

(assert (= bs!1931073 (and b!7470295 d!2298935)))

(assert (=> bs!1931073 (not (= lambda!462601 lambda!462580))))

(assert (=> bs!1931068 (= (and (= (regOne!39660 lt!2625376) r2!5783) (= (regTwo!39660 lt!2625376) rTail!78)) (= lambda!462601 lambda!462594))))

(assert (=> bs!1931066 (= (and (= (regOne!39660 lt!2625376) r2!5783) (= (regTwo!39660 lt!2625376) rTail!78)) (= lambda!462601 lambda!462551))))

(assert (=> bs!1931069 (= (and (= (regOne!39660 lt!2625376) lt!2625372) (= (regTwo!39660 lt!2625376) rTail!78)) (= lambda!462601 lambda!462573))))

(declare-fun bs!1931075 () Bool)

(assert (= bs!1931075 (and b!7470295 d!2298971)))

(assert (=> bs!1931075 (not (= lambda!462601 lambda!462595))))

(assert (=> b!7470295 true))

(assert (=> b!7470295 true))

(declare-fun b!7470294 () Bool)

(declare-fun e!4457085 () Bool)

(assert (=> b!7470294 (= e!4457085 (= s!13591 (Cons!72166 (c!1380305 lt!2625376) Nil!72166)))))

(declare-fun c!1380391 () Bool)

(declare-fun bm!685988 () Bool)

(declare-fun call!685993 () Bool)

(assert (=> bm!685988 (= call!685993 (Exists!4193 (ite c!1380391 lambda!462600 lambda!462601)))))

(declare-fun d!2298987 () Bool)

(declare-fun c!1380388 () Bool)

(assert (=> d!2298987 (= c!1380388 (is-EmptyExpr!19574 lt!2625376))))

(declare-fun e!4457084 () Bool)

(assert (=> d!2298987 (= (matchRSpec!4253 lt!2625376 s!13591) e!4457084)))

(declare-fun e!4457088 () Bool)

(assert (=> b!7470295 (= e!4457088 call!685993)))

(declare-fun b!7470296 () Bool)

(declare-fun call!685994 () Bool)

(assert (=> b!7470296 (= e!4457084 call!685994)))

(declare-fun b!7470297 () Bool)

(declare-fun res!2996851 () Bool)

(declare-fun e!4457090 () Bool)

(assert (=> b!7470297 (=> res!2996851 e!4457090)))

(assert (=> b!7470297 (= res!2996851 call!685994)))

(assert (=> b!7470297 (= e!4457088 e!4457090)))

(declare-fun b!7470298 () Bool)

(declare-fun e!4457086 () Bool)

(assert (=> b!7470298 (= e!4457086 e!4457088)))

(assert (=> b!7470298 (= c!1380391 (is-Star!19574 lt!2625376))))

(assert (=> b!7470299 (= e!4457090 call!685993)))

(declare-fun bm!685989 () Bool)

(assert (=> bm!685989 (= call!685994 (isEmpty!41168 s!13591))))

(declare-fun b!7470300 () Bool)

(declare-fun e!4457087 () Bool)

(assert (=> b!7470300 (= e!4457087 (matchRSpec!4253 (regTwo!39661 lt!2625376) s!13591))))

(declare-fun b!7470301 () Bool)

(declare-fun e!4457089 () Bool)

(assert (=> b!7470301 (= e!4457084 e!4457089)))

(declare-fun res!2996850 () Bool)

(assert (=> b!7470301 (= res!2996850 (not (is-EmptyLang!19574 lt!2625376)))))

(assert (=> b!7470301 (=> (not res!2996850) (not e!4457089))))

(declare-fun b!7470302 () Bool)

(declare-fun c!1380389 () Bool)

(assert (=> b!7470302 (= c!1380389 (is-Union!19574 lt!2625376))))

(assert (=> b!7470302 (= e!4457085 e!4457086)))

(declare-fun b!7470303 () Bool)

(declare-fun c!1380390 () Bool)

(assert (=> b!7470303 (= c!1380390 (is-ElementMatch!19574 lt!2625376))))

(assert (=> b!7470303 (= e!4457089 e!4457085)))

(declare-fun b!7470304 () Bool)

(assert (=> b!7470304 (= e!4457086 e!4457087)))

(declare-fun res!2996849 () Bool)

(assert (=> b!7470304 (= res!2996849 (matchRSpec!4253 (regOne!39661 lt!2625376) s!13591))))

(assert (=> b!7470304 (=> res!2996849 e!4457087)))

(assert (= (and d!2298987 c!1380388) b!7470296))

(assert (= (and d!2298987 (not c!1380388)) b!7470301))

(assert (= (and b!7470301 res!2996850) b!7470303))

(assert (= (and b!7470303 c!1380390) b!7470294))

(assert (= (and b!7470303 (not c!1380390)) b!7470302))

(assert (= (and b!7470302 c!1380389) b!7470304))

(assert (= (and b!7470302 (not c!1380389)) b!7470298))

(assert (= (and b!7470304 (not res!2996849)) b!7470300))

(assert (= (and b!7470298 c!1380391) b!7470297))

(assert (= (and b!7470298 (not c!1380391)) b!7470295))

(assert (= (and b!7470297 (not res!2996851)) b!7470299))

(assert (= (or b!7470299 b!7470295) bm!685988))

(assert (= (or b!7470296 b!7470297) bm!685989))

(declare-fun m!8067550 () Bool)

(assert (=> bm!685988 m!8067550))

(assert (=> bm!685989 m!8067416))

(declare-fun m!8067552 () Bool)

(assert (=> b!7470300 m!8067552))

(declare-fun m!8067554 () Bool)

(assert (=> b!7470304 m!8067554))

(assert (=> b!7469862 d!2298987))

(declare-fun b!7470305 () Bool)

(declare-fun e!4457095 () Bool)

(declare-fun e!4457096 () Bool)

(assert (=> b!7470305 (= e!4457095 e!4457096)))

(declare-fun c!1380394 () Bool)

(assert (=> b!7470305 (= c!1380394 (is-EmptyLang!19574 lt!2625388))))

(declare-fun b!7470306 () Bool)

(declare-fun res!2996858 () Bool)

(declare-fun e!4457091 () Bool)

(assert (=> b!7470306 (=> (not res!2996858) (not e!4457091))))

(declare-fun call!685995 () Bool)

(assert (=> b!7470306 (= res!2996858 (not call!685995))))

(declare-fun b!7470307 () Bool)

(declare-fun e!4457093 () Bool)

(assert (=> b!7470307 (= e!4457093 (not (= (head!15325 s!13591) (c!1380305 lt!2625388))))))

(declare-fun b!7470308 () Bool)

(declare-fun e!4457097 () Bool)

(assert (=> b!7470308 (= e!4457097 e!4457093)))

(declare-fun res!2996857 () Bool)

(assert (=> b!7470308 (=> res!2996857 e!4457093)))

(assert (=> b!7470308 (= res!2996857 call!685995)))

(declare-fun b!7470309 () Bool)

(declare-fun res!2996859 () Bool)

(declare-fun e!4457094 () Bool)

(assert (=> b!7470309 (=> res!2996859 e!4457094)))

(assert (=> b!7470309 (= res!2996859 e!4457091)))

(declare-fun res!2996856 () Bool)

(assert (=> b!7470309 (=> (not res!2996856) (not e!4457091))))

(declare-fun lt!2625490 () Bool)

(assert (=> b!7470309 (= res!2996856 lt!2625490)))

(declare-fun b!7470310 () Bool)

(assert (=> b!7470310 (= e!4457096 (not lt!2625490))))

(declare-fun b!7470312 () Bool)

(declare-fun e!4457092 () Bool)

(assert (=> b!7470312 (= e!4457092 (matchR!9338 (derivativeStep!5585 lt!2625388 (head!15325 s!13591)) (tail!14894 s!13591)))))

(declare-fun b!7470313 () Bool)

(assert (=> b!7470313 (= e!4457095 (= lt!2625490 call!685995))))

(declare-fun b!7470314 () Bool)

(assert (=> b!7470314 (= e!4457092 (nullable!8526 lt!2625388))))

(declare-fun b!7470315 () Bool)

(declare-fun res!2996853 () Bool)

(assert (=> b!7470315 (=> res!2996853 e!4457093)))

(assert (=> b!7470315 (= res!2996853 (not (isEmpty!41168 (tail!14894 s!13591))))))

(declare-fun bm!685990 () Bool)

(assert (=> bm!685990 (= call!685995 (isEmpty!41168 s!13591))))

(declare-fun b!7470316 () Bool)

(declare-fun res!2996855 () Bool)

(assert (=> b!7470316 (=> res!2996855 e!4457094)))

(assert (=> b!7470316 (= res!2996855 (not (is-ElementMatch!19574 lt!2625388)))))

(assert (=> b!7470316 (= e!4457096 e!4457094)))

(declare-fun b!7470317 () Bool)

(declare-fun res!2996854 () Bool)

(assert (=> b!7470317 (=> (not res!2996854) (not e!4457091))))

(assert (=> b!7470317 (= res!2996854 (isEmpty!41168 (tail!14894 s!13591)))))

(declare-fun b!7470318 () Bool)

(assert (=> b!7470318 (= e!4457091 (= (head!15325 s!13591) (c!1380305 lt!2625388)))))

(declare-fun b!7470311 () Bool)

(assert (=> b!7470311 (= e!4457094 e!4457097)))

(declare-fun res!2996852 () Bool)

(assert (=> b!7470311 (=> (not res!2996852) (not e!4457097))))

(assert (=> b!7470311 (= res!2996852 (not lt!2625490))))

(declare-fun d!2298989 () Bool)

(assert (=> d!2298989 e!4457095))

(declare-fun c!1380393 () Bool)

(assert (=> d!2298989 (= c!1380393 (is-EmptyExpr!19574 lt!2625388))))

(assert (=> d!2298989 (= lt!2625490 e!4457092)))

(declare-fun c!1380392 () Bool)

(assert (=> d!2298989 (= c!1380392 (isEmpty!41168 s!13591))))

(assert (=> d!2298989 (validRegex!10088 lt!2625388)))

(assert (=> d!2298989 (= (matchR!9338 lt!2625388 s!13591) lt!2625490)))

(assert (= (and d!2298989 c!1380392) b!7470314))

(assert (= (and d!2298989 (not c!1380392)) b!7470312))

(assert (= (and d!2298989 c!1380393) b!7470313))

(assert (= (and d!2298989 (not c!1380393)) b!7470305))

(assert (= (and b!7470305 c!1380394) b!7470310))

(assert (= (and b!7470305 (not c!1380394)) b!7470316))

(assert (= (and b!7470316 (not res!2996855)) b!7470309))

(assert (= (and b!7470309 res!2996856) b!7470306))

(assert (= (and b!7470306 res!2996858) b!7470317))

(assert (= (and b!7470317 res!2996854) b!7470318))

(assert (= (and b!7470309 (not res!2996859)) b!7470311))

(assert (= (and b!7470311 res!2996852) b!7470308))

(assert (= (and b!7470308 (not res!2996857)) b!7470315))

(assert (= (and b!7470315 (not res!2996853)) b!7470307))

(assert (= (or b!7470313 b!7470306 b!7470308) bm!685990))

(assert (=> d!2298989 m!8067416))

(assert (=> d!2298989 m!8067548))

(assert (=> b!7470307 m!8067420))

(assert (=> bm!685990 m!8067416))

(assert (=> b!7470317 m!8067422))

(assert (=> b!7470317 m!8067422))

(assert (=> b!7470317 m!8067424))

(assert (=> b!7470315 m!8067422))

(assert (=> b!7470315 m!8067422))

(assert (=> b!7470315 m!8067424))

(assert (=> b!7470312 m!8067420))

(assert (=> b!7470312 m!8067420))

(declare-fun m!8067556 () Bool)

(assert (=> b!7470312 m!8067556))

(assert (=> b!7470312 m!8067422))

(assert (=> b!7470312 m!8067556))

(assert (=> b!7470312 m!8067422))

(declare-fun m!8067558 () Bool)

(assert (=> b!7470312 m!8067558))

(assert (=> b!7470318 m!8067420))

(declare-fun m!8067560 () Bool)

(assert (=> b!7470314 m!8067560))

(assert (=> b!7469862 d!2298989))

(declare-fun b!7470323 () Bool)

(declare-fun e!4457100 () Bool)

(declare-fun tp!2165918 () Bool)

(assert (=> b!7470323 (= e!4457100 (and tp_is_empty!49437 tp!2165918))))

(assert (=> b!7469849 (= tp!2165854 e!4457100)))

(assert (= (and b!7469849 (is-Cons!72166 (t!386859 s!13591))) b!7470323))

(declare-fun b!7470336 () Bool)

(declare-fun e!4457103 () Bool)

(declare-fun tp!2165932 () Bool)

(assert (=> b!7470336 (= e!4457103 tp!2165932)))

(declare-fun b!7470335 () Bool)

(declare-fun tp!2165930 () Bool)

(declare-fun tp!2165933 () Bool)

(assert (=> b!7470335 (= e!4457103 (and tp!2165930 tp!2165933))))

(declare-fun b!7470334 () Bool)

(assert (=> b!7470334 (= e!4457103 tp_is_empty!49437)))

(declare-fun b!7470337 () Bool)

(declare-fun tp!2165931 () Bool)

(declare-fun tp!2165929 () Bool)

(assert (=> b!7470337 (= e!4457103 (and tp!2165931 tp!2165929))))

(assert (=> b!7469860 (= tp!2165865 e!4457103)))

(assert (= (and b!7469860 (is-ElementMatch!19574 (reg!19903 r1!5845))) b!7470334))

(assert (= (and b!7469860 (is-Concat!28419 (reg!19903 r1!5845))) b!7470335))

(assert (= (and b!7469860 (is-Star!19574 (reg!19903 r1!5845))) b!7470336))

(assert (= (and b!7469860 (is-Union!19574 (reg!19903 r1!5845))) b!7470337))

(declare-fun b!7470340 () Bool)

(declare-fun e!4457104 () Bool)

(declare-fun tp!2165937 () Bool)

(assert (=> b!7470340 (= e!4457104 tp!2165937)))

(declare-fun b!7470339 () Bool)

(declare-fun tp!2165935 () Bool)

(declare-fun tp!2165938 () Bool)

(assert (=> b!7470339 (= e!4457104 (and tp!2165935 tp!2165938))))

(declare-fun b!7470338 () Bool)

(assert (=> b!7470338 (= e!4457104 tp_is_empty!49437)))

(declare-fun b!7470341 () Bool)

(declare-fun tp!2165936 () Bool)

(declare-fun tp!2165934 () Bool)

(assert (=> b!7470341 (= e!4457104 (and tp!2165936 tp!2165934))))

(assert (=> b!7469855 (= tp!2165861 e!4457104)))

(assert (= (and b!7469855 (is-ElementMatch!19574 (reg!19903 r2!5783))) b!7470338))

(assert (= (and b!7469855 (is-Concat!28419 (reg!19903 r2!5783))) b!7470339))

(assert (= (and b!7469855 (is-Star!19574 (reg!19903 r2!5783))) b!7470340))

(assert (= (and b!7469855 (is-Union!19574 (reg!19903 r2!5783))) b!7470341))

(declare-fun b!7470344 () Bool)

(declare-fun e!4457105 () Bool)

(declare-fun tp!2165942 () Bool)

(assert (=> b!7470344 (= e!4457105 tp!2165942)))

(declare-fun b!7470343 () Bool)

(declare-fun tp!2165940 () Bool)

(declare-fun tp!2165943 () Bool)

(assert (=> b!7470343 (= e!4457105 (and tp!2165940 tp!2165943))))

(declare-fun b!7470342 () Bool)

(assert (=> b!7470342 (= e!4457105 tp_is_empty!49437)))

(declare-fun b!7470345 () Bool)

(declare-fun tp!2165941 () Bool)

(declare-fun tp!2165939 () Bool)

(assert (=> b!7470345 (= e!4457105 (and tp!2165941 tp!2165939))))

(assert (=> b!7469850 (= tp!2165853 e!4457105)))

(assert (= (and b!7469850 (is-ElementMatch!19574 (regOne!39660 rTail!78))) b!7470342))

(assert (= (and b!7469850 (is-Concat!28419 (regOne!39660 rTail!78))) b!7470343))

(assert (= (and b!7469850 (is-Star!19574 (regOne!39660 rTail!78))) b!7470344))

(assert (= (and b!7469850 (is-Union!19574 (regOne!39660 rTail!78))) b!7470345))

(declare-fun b!7470348 () Bool)

(declare-fun e!4457106 () Bool)

(declare-fun tp!2165947 () Bool)

(assert (=> b!7470348 (= e!4457106 tp!2165947)))

(declare-fun b!7470347 () Bool)

(declare-fun tp!2165945 () Bool)

(declare-fun tp!2165948 () Bool)

(assert (=> b!7470347 (= e!4457106 (and tp!2165945 tp!2165948))))

(declare-fun b!7470346 () Bool)

(assert (=> b!7470346 (= e!4457106 tp_is_empty!49437)))

(declare-fun b!7470349 () Bool)

(declare-fun tp!2165946 () Bool)

(declare-fun tp!2165944 () Bool)

(assert (=> b!7470349 (= e!4457106 (and tp!2165946 tp!2165944))))

(assert (=> b!7469850 (= tp!2165856 e!4457106)))

(assert (= (and b!7469850 (is-ElementMatch!19574 (regTwo!39660 rTail!78))) b!7470346))

(assert (= (and b!7469850 (is-Concat!28419 (regTwo!39660 rTail!78))) b!7470347))

(assert (= (and b!7469850 (is-Star!19574 (regTwo!39660 rTail!78))) b!7470348))

(assert (= (and b!7469850 (is-Union!19574 (regTwo!39660 rTail!78))) b!7470349))

(declare-fun b!7470352 () Bool)

(declare-fun e!4457107 () Bool)

(declare-fun tp!2165952 () Bool)

(assert (=> b!7470352 (= e!4457107 tp!2165952)))

(declare-fun b!7470351 () Bool)

(declare-fun tp!2165950 () Bool)

(declare-fun tp!2165953 () Bool)

(assert (=> b!7470351 (= e!4457107 (and tp!2165950 tp!2165953))))

(declare-fun b!7470350 () Bool)

(assert (=> b!7470350 (= e!4457107 tp_is_empty!49437)))

(declare-fun b!7470353 () Bool)

(declare-fun tp!2165951 () Bool)

(declare-fun tp!2165949 () Bool)

(assert (=> b!7470353 (= e!4457107 (and tp!2165951 tp!2165949))))

(assert (=> b!7469854 (= tp!2165852 e!4457107)))

(assert (= (and b!7469854 (is-ElementMatch!19574 (reg!19903 rTail!78))) b!7470350))

(assert (= (and b!7469854 (is-Concat!28419 (reg!19903 rTail!78))) b!7470351))

(assert (= (and b!7469854 (is-Star!19574 (reg!19903 rTail!78))) b!7470352))

(assert (= (and b!7469854 (is-Union!19574 (reg!19903 rTail!78))) b!7470353))

(declare-fun b!7470356 () Bool)

(declare-fun e!4457108 () Bool)

(declare-fun tp!2165957 () Bool)

(assert (=> b!7470356 (= e!4457108 tp!2165957)))

(declare-fun b!7470355 () Bool)

(declare-fun tp!2165955 () Bool)

(declare-fun tp!2165958 () Bool)

(assert (=> b!7470355 (= e!4457108 (and tp!2165955 tp!2165958))))

(declare-fun b!7470354 () Bool)

(assert (=> b!7470354 (= e!4457108 tp_is_empty!49437)))

(declare-fun b!7470357 () Bool)

(declare-fun tp!2165956 () Bool)

(declare-fun tp!2165954 () Bool)

(assert (=> b!7470357 (= e!4457108 (and tp!2165956 tp!2165954))))

(assert (=> b!7469847 (= tp!2165855 e!4457108)))

(assert (= (and b!7469847 (is-ElementMatch!19574 (regOne!39661 rTail!78))) b!7470354))

(assert (= (and b!7469847 (is-Concat!28419 (regOne!39661 rTail!78))) b!7470355))

(assert (= (and b!7469847 (is-Star!19574 (regOne!39661 rTail!78))) b!7470356))

(assert (= (and b!7469847 (is-Union!19574 (regOne!39661 rTail!78))) b!7470357))

(declare-fun b!7470360 () Bool)

(declare-fun e!4457109 () Bool)

(declare-fun tp!2165962 () Bool)

(assert (=> b!7470360 (= e!4457109 tp!2165962)))

(declare-fun b!7470359 () Bool)

(declare-fun tp!2165960 () Bool)

(declare-fun tp!2165963 () Bool)

(assert (=> b!7470359 (= e!4457109 (and tp!2165960 tp!2165963))))

(declare-fun b!7470358 () Bool)

(assert (=> b!7470358 (= e!4457109 tp_is_empty!49437)))

(declare-fun b!7470361 () Bool)

(declare-fun tp!2165961 () Bool)

(declare-fun tp!2165959 () Bool)

(assert (=> b!7470361 (= e!4457109 (and tp!2165961 tp!2165959))))

(assert (=> b!7469847 (= tp!2165858 e!4457109)))

(assert (= (and b!7469847 (is-ElementMatch!19574 (regTwo!39661 rTail!78))) b!7470358))

(assert (= (and b!7469847 (is-Concat!28419 (regTwo!39661 rTail!78))) b!7470359))

(assert (= (and b!7469847 (is-Star!19574 (regTwo!39661 rTail!78))) b!7470360))

(assert (= (and b!7469847 (is-Union!19574 (regTwo!39661 rTail!78))) b!7470361))

(declare-fun b!7470364 () Bool)

(declare-fun e!4457110 () Bool)

(declare-fun tp!2165967 () Bool)

(assert (=> b!7470364 (= e!4457110 tp!2165967)))

(declare-fun b!7470363 () Bool)

(declare-fun tp!2165965 () Bool)

(declare-fun tp!2165968 () Bool)

(assert (=> b!7470363 (= e!4457110 (and tp!2165965 tp!2165968))))

(declare-fun b!7470362 () Bool)

(assert (=> b!7470362 (= e!4457110 tp_is_empty!49437)))

(declare-fun b!7470365 () Bool)

(declare-fun tp!2165966 () Bool)

(declare-fun tp!2165964 () Bool)

(assert (=> b!7470365 (= e!4457110 (and tp!2165966 tp!2165964))))

(assert (=> b!7469845 (= tp!2165866 e!4457110)))

(assert (= (and b!7469845 (is-ElementMatch!19574 (regOne!39660 r1!5845))) b!7470362))

(assert (= (and b!7469845 (is-Concat!28419 (regOne!39660 r1!5845))) b!7470363))

(assert (= (and b!7469845 (is-Star!19574 (regOne!39660 r1!5845))) b!7470364))

(assert (= (and b!7469845 (is-Union!19574 (regOne!39660 r1!5845))) b!7470365))

(declare-fun b!7470368 () Bool)

(declare-fun e!4457111 () Bool)

(declare-fun tp!2165972 () Bool)

(assert (=> b!7470368 (= e!4457111 tp!2165972)))

(declare-fun b!7470367 () Bool)

(declare-fun tp!2165970 () Bool)

(declare-fun tp!2165973 () Bool)

(assert (=> b!7470367 (= e!4457111 (and tp!2165970 tp!2165973))))

(declare-fun b!7470366 () Bool)

(assert (=> b!7470366 (= e!4457111 tp_is_empty!49437)))

(declare-fun b!7470369 () Bool)

(declare-fun tp!2165971 () Bool)

(declare-fun tp!2165969 () Bool)

(assert (=> b!7470369 (= e!4457111 (and tp!2165971 tp!2165969))))

(assert (=> b!7469845 (= tp!2165860 e!4457111)))

(assert (= (and b!7469845 (is-ElementMatch!19574 (regTwo!39660 r1!5845))) b!7470366))

(assert (= (and b!7469845 (is-Concat!28419 (regTwo!39660 r1!5845))) b!7470367))

(assert (= (and b!7469845 (is-Star!19574 (regTwo!39660 r1!5845))) b!7470368))

(assert (= (and b!7469845 (is-Union!19574 (regTwo!39660 r1!5845))) b!7470369))

(declare-fun b!7470372 () Bool)

(declare-fun e!4457112 () Bool)

(declare-fun tp!2165977 () Bool)

(assert (=> b!7470372 (= e!4457112 tp!2165977)))

(declare-fun b!7470371 () Bool)

(declare-fun tp!2165975 () Bool)

(declare-fun tp!2165978 () Bool)

(assert (=> b!7470371 (= e!4457112 (and tp!2165975 tp!2165978))))

(declare-fun b!7470370 () Bool)

(assert (=> b!7470370 (= e!4457112 tp_is_empty!49437)))

(declare-fun b!7470373 () Bool)

(declare-fun tp!2165976 () Bool)

(declare-fun tp!2165974 () Bool)

(assert (=> b!7470373 (= e!4457112 (and tp!2165976 tp!2165974))))

(assert (=> b!7469861 (= tp!2165862 e!4457112)))

(assert (= (and b!7469861 (is-ElementMatch!19574 (regOne!39661 r2!5783))) b!7470370))

(assert (= (and b!7469861 (is-Concat!28419 (regOne!39661 r2!5783))) b!7470371))

(assert (= (and b!7469861 (is-Star!19574 (regOne!39661 r2!5783))) b!7470372))

(assert (= (and b!7469861 (is-Union!19574 (regOne!39661 r2!5783))) b!7470373))

(declare-fun b!7470376 () Bool)

(declare-fun e!4457113 () Bool)

(declare-fun tp!2165982 () Bool)

(assert (=> b!7470376 (= e!4457113 tp!2165982)))

(declare-fun b!7470375 () Bool)

(declare-fun tp!2165980 () Bool)

(declare-fun tp!2165983 () Bool)

(assert (=> b!7470375 (= e!4457113 (and tp!2165980 tp!2165983))))

(declare-fun b!7470374 () Bool)

(assert (=> b!7470374 (= e!4457113 tp_is_empty!49437)))

(declare-fun b!7470377 () Bool)

(declare-fun tp!2165981 () Bool)

(declare-fun tp!2165979 () Bool)

(assert (=> b!7470377 (= e!4457113 (and tp!2165981 tp!2165979))))

(assert (=> b!7469861 (= tp!2165867 e!4457113)))

(assert (= (and b!7469861 (is-ElementMatch!19574 (regTwo!39661 r2!5783))) b!7470374))

(assert (= (and b!7469861 (is-Concat!28419 (regTwo!39661 r2!5783))) b!7470375))

(assert (= (and b!7469861 (is-Star!19574 (regTwo!39661 r2!5783))) b!7470376))

(assert (= (and b!7469861 (is-Union!19574 (regTwo!39661 r2!5783))) b!7470377))

(declare-fun b!7470380 () Bool)

(declare-fun e!4457114 () Bool)

(declare-fun tp!2165987 () Bool)

(assert (=> b!7470380 (= e!4457114 tp!2165987)))

(declare-fun b!7470379 () Bool)

(declare-fun tp!2165985 () Bool)

(declare-fun tp!2165988 () Bool)

(assert (=> b!7470379 (= e!4457114 (and tp!2165985 tp!2165988))))

(declare-fun b!7470378 () Bool)

(assert (=> b!7470378 (= e!4457114 tp_is_empty!49437)))

(declare-fun b!7470381 () Bool)

(declare-fun tp!2165986 () Bool)

(declare-fun tp!2165984 () Bool)

(assert (=> b!7470381 (= e!4457114 (and tp!2165986 tp!2165984))))

(assert (=> b!7469851 (= tp!2165859 e!4457114)))

(assert (= (and b!7469851 (is-ElementMatch!19574 (regOne!39661 r1!5845))) b!7470378))

(assert (= (and b!7469851 (is-Concat!28419 (regOne!39661 r1!5845))) b!7470379))

(assert (= (and b!7469851 (is-Star!19574 (regOne!39661 r1!5845))) b!7470380))

(assert (= (and b!7469851 (is-Union!19574 (regOne!39661 r1!5845))) b!7470381))

(declare-fun b!7470384 () Bool)

(declare-fun e!4457115 () Bool)

(declare-fun tp!2165992 () Bool)

(assert (=> b!7470384 (= e!4457115 tp!2165992)))

(declare-fun b!7470383 () Bool)

(declare-fun tp!2165990 () Bool)

(declare-fun tp!2165993 () Bool)

(assert (=> b!7470383 (= e!4457115 (and tp!2165990 tp!2165993))))

(declare-fun b!7470382 () Bool)

(assert (=> b!7470382 (= e!4457115 tp_is_empty!49437)))

(declare-fun b!7470385 () Bool)

(declare-fun tp!2165991 () Bool)

(declare-fun tp!2165989 () Bool)

(assert (=> b!7470385 (= e!4457115 (and tp!2165991 tp!2165989))))

(assert (=> b!7469851 (= tp!2165857 e!4457115)))

(assert (= (and b!7469851 (is-ElementMatch!19574 (regTwo!39661 r1!5845))) b!7470382))

(assert (= (and b!7469851 (is-Concat!28419 (regTwo!39661 r1!5845))) b!7470383))

(assert (= (and b!7469851 (is-Star!19574 (regTwo!39661 r1!5845))) b!7470384))

(assert (= (and b!7469851 (is-Union!19574 (regTwo!39661 r1!5845))) b!7470385))

(declare-fun b!7470388 () Bool)

(declare-fun e!4457116 () Bool)

(declare-fun tp!2165997 () Bool)

(assert (=> b!7470388 (= e!4457116 tp!2165997)))

(declare-fun b!7470387 () Bool)

(declare-fun tp!2165995 () Bool)

(declare-fun tp!2165998 () Bool)

(assert (=> b!7470387 (= e!4457116 (and tp!2165995 tp!2165998))))

(declare-fun b!7470386 () Bool)

(assert (=> b!7470386 (= e!4457116 tp_is_empty!49437)))

(declare-fun b!7470389 () Bool)

(declare-fun tp!2165996 () Bool)

(declare-fun tp!2165994 () Bool)

(assert (=> b!7470389 (= e!4457116 (and tp!2165996 tp!2165994))))

(assert (=> b!7469846 (= tp!2165864 e!4457116)))

(assert (= (and b!7469846 (is-ElementMatch!19574 (regOne!39660 r2!5783))) b!7470386))

(assert (= (and b!7469846 (is-Concat!28419 (regOne!39660 r2!5783))) b!7470387))

(assert (= (and b!7469846 (is-Star!19574 (regOne!39660 r2!5783))) b!7470388))

(assert (= (and b!7469846 (is-Union!19574 (regOne!39660 r2!5783))) b!7470389))

(declare-fun b!7470392 () Bool)

(declare-fun e!4457117 () Bool)

(declare-fun tp!2166002 () Bool)

(assert (=> b!7470392 (= e!4457117 tp!2166002)))

(declare-fun b!7470391 () Bool)

(declare-fun tp!2166000 () Bool)

(declare-fun tp!2166003 () Bool)

(assert (=> b!7470391 (= e!4457117 (and tp!2166000 tp!2166003))))

(declare-fun b!7470390 () Bool)

(assert (=> b!7470390 (= e!4457117 tp_is_empty!49437)))

(declare-fun b!7470393 () Bool)

(declare-fun tp!2166001 () Bool)

(declare-fun tp!2165999 () Bool)

(assert (=> b!7470393 (= e!4457117 (and tp!2166001 tp!2165999))))

(assert (=> b!7469846 (= tp!2165863 e!4457117)))

(assert (= (and b!7469846 (is-ElementMatch!19574 (regTwo!39660 r2!5783))) b!7470390))

(assert (= (and b!7469846 (is-Concat!28419 (regTwo!39660 r2!5783))) b!7470391))

(assert (= (and b!7469846 (is-Star!19574 (regTwo!39660 r2!5783))) b!7470392))

(assert (= (and b!7469846 (is-Union!19574 (regTwo!39660 r2!5783))) b!7470393))

(push 1)

(assert (not b!7470190))

(assert (not b!7470339))

(assert (not b!7470069))

(assert (not b!7470253))

(assert (not b!7470393))

(assert (not d!2298937))

(assert (not b!7470285))

(assert (not b!7470193))

(assert (not b!7470392))

(assert (not bm!685985))

(assert (not d!2298961))

(assert (not bm!685954))

(assert (not bm!685968))

(assert (not b!7470142))

(assert (not b!7470255))

(assert (not bm!685988))

(assert (not b!7470383))

(assert (not b!7470010))

(assert (not b!7470380))

(assert (not b!7470244))

(assert (not b!7470375))

(assert (not d!2298953))

(assert (not b!7470315))

(assert (not b!7470247))

(assert (not b!7470361))

(assert (not d!2298951))

(assert (not b!7470157))

(assert (not b!7470352))

(assert (not bm!685987))

(assert (not b!7470357))

(assert (not bm!685982))

(assert (not b!7470318))

(assert (not b!7470196))

(assert (not b!7470351))

(assert (not b!7470359))

(assert (not d!2298933))

(assert (not b!7470360))

(assert (not b!7470372))

(assert (not b!7470274))

(assert (not b!7470377))

(assert (not b!7470307))

(assert (not b!7470349))

(assert (not b!7470275))

(assert (not b!7470381))

(assert (not b!7470074))

(assert (not b!7470278))

(assert (not b!7470277))

(assert (not b!7470262))

(assert (not b!7470343))

(assert (not b!7470312))

(assert (not b!7470340))

(assert (not bm!685986))

(assert (not b!7470388))

(assert (not b!7470071))

(assert (not b!7470153))

(assert (not b!7470367))

(assert (not b!7470075))

(assert (not b!7470379))

(assert (not d!2298985))

(assert (not d!2298927))

(assert (not b!7470356))

(assert (not b!7470012))

(assert (not b!7470365))

(assert (not b!7470014))

(assert (not b!7470341))

(assert (not b!7470353))

(assert (not d!2298967))

(assert (not b!7470251))

(assert (not b!7470072))

(assert (not b!7470300))

(assert (not bm!685963))

(assert (not b!7470385))

(assert (not b!7470371))

(assert (not d!2298975))

(assert (not d!2298923))

(assert (not b!7470221))

(assert (not b!7470289))

(assert (not b!7470249))

(assert (not b!7470013))

(assert (not d!2298971))

(assert (not b!7470272))

(assert (not b!7470364))

(assert (not d!2298989))

(assert (not b!7470317))

(assert (not b!7470347))

(assert (not b!7470304))

(assert (not b!7470391))

(assert (not b!7470348))

(assert (not d!2298981))

(assert (not bm!685980))

(assert (not b!7470146))

(assert (not b!7470337))

(assert (not b!7470064))

(assert (not bm!685964))

(assert (not b!7470355))

(assert (not b!7470345))

(assert (not bm!685975))

(assert (not b!7470250))

(assert (not bm!685979))

(assert (not b!7470018))

(assert (not b!7470336))

(assert (not b!7470335))

(assert (not b!7470314))

(assert (not b!7470384))

(assert (not bm!685989))

(assert (not bm!685961))

(assert (not b!7470344))

(assert (not b!7470373))

(assert (not b!7470323))

(assert (not d!2298969))

(assert (not b!7470368))

(assert (not d!2298947))

(assert (not bm!685976))

(assert tp_is_empty!49437)

(assert (not b!7470016))

(assert (not b!7470363))

(assert (not b!7470369))

(assert (not b!7470192))

(assert (not b!7470376))

(assert (not b!7470185))

(assert (not b!7470267))

(assert (not d!2298929))

(assert (not d!2298973))

(assert (not b!7470387))

(assert (not b!7470195))

(assert (not bm!685990))

(assert (not d!2298979))

(assert (not bm!685962))

(assert (not d!2298935))

(assert (not b!7470389))

(assert (not bm!685983))

(assert (not d!2298925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

