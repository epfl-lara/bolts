; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737486 () Bool)

(assert start!737486)

(declare-fun b!7718963 () Bool)

(assert (=> b!7718963 true))

(assert (=> b!7718963 true))

(declare-fun bs!1962977 () Bool)

(declare-fun b!7718972 () Bool)

(assert (= bs!1962977 (and b!7718972 b!7718963)))

(declare-fun lambda!471049 () Int)

(declare-fun lambda!471048 () Int)

(assert (=> bs!1962977 (not (= lambda!471049 lambda!471048))))

(assert (=> b!7718972 true))

(assert (=> b!7718972 true))

(declare-fun b!7718960 () Bool)

(declare-datatypes ((Unit!168160 0))(
  ( (Unit!168161) )
))
(declare-fun e!4578730 () Unit!168160)

(declare-fun Unit!168162 () Unit!168160)

(assert (=> b!7718960 (= e!4578730 Unit!168162)))

(declare-fun b!7718961 () Bool)

(declare-fun Unit!168163 () Unit!168160)

(assert (=> b!7718961 (= e!4578730 Unit!168163)))

(declare-fun lt!2666138 () Unit!168160)

(declare-datatypes ((C!41410 0))(
  ( (C!41411 (val!31145 Int)) )
))
(declare-datatypes ((Regex!20542 0))(
  ( (ElementMatch!20542 (c!1422818 C!41410)) (Concat!29387 (regOne!41596 Regex!20542) (regTwo!41596 Regex!20542)) (EmptyExpr!20542) (Star!20542 (reg!20871 Regex!20542)) (EmptyLang!20542) (Union!20542 (regOne!41597 Regex!20542) (regTwo!41597 Regex!20542)) )
))
(declare-fun r!14126 () Regex!20542)

(declare-datatypes ((List!73393 0))(
  ( (Nil!73269) (Cons!73269 (h!79717 C!41410) (t!388128 List!73393)) )
))
(declare-fun s!9605 () List!73393)

(declare-fun lemmaStarAppConcat!57 (Regex!20542 List!73393) Unit!168160)

(assert (=> b!7718961 (= lt!2666138 (lemmaStarAppConcat!57 (reg!20871 r!14126) s!9605))))

(declare-fun matchR!10038 (Regex!20542 List!73393) Bool)

(assert (=> b!7718961 (matchR!10038 (Concat!29387 (reg!20871 r!14126) r!14126) s!9605)))

(declare-fun lt!2666134 () Unit!168160)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!315 (Regex!20542 Regex!20542 List!73393) Unit!168160)

(assert (=> b!7718961 (= lt!2666134 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!315 (reg!20871 r!14126) r!14126 s!9605))))

(assert (=> b!7718961 false))

(declare-fun b!7718962 () Bool)

(declare-fun res!3080087 () Bool)

(declare-fun e!4578733 () Bool)

(assert (=> b!7718962 (=> (not res!3080087) (not e!4578733))))

(assert (=> b!7718962 (= res!3080087 (and (not (is-EmptyExpr!20542 r!14126)) (not (is-EmptyLang!20542 r!14126)) (not (is-ElementMatch!20542 r!14126)) (not (is-Union!20542 r!14126)) (is-Star!20542 r!14126)))))

(declare-fun res!3080088 () Bool)

(assert (=> start!737486 (=> (not res!3080088) (not e!4578733))))

(declare-fun validRegex!10960 (Regex!20542) Bool)

(assert (=> start!737486 (= res!3080088 (validRegex!10960 r!14126))))

(assert (=> start!737486 e!4578733))

(declare-fun e!4578735 () Bool)

(assert (=> start!737486 e!4578735))

(declare-fun e!4578731 () Bool)

(assert (=> start!737486 e!4578731))

(declare-fun e!4578734 () Bool)

(assert (=> b!7718963 (= e!4578733 (not e!4578734))))

(declare-fun res!3080086 () Bool)

(assert (=> b!7718963 (=> res!3080086 e!4578734)))

(declare-fun lt!2666137 () Bool)

(assert (=> b!7718963 (= res!3080086 lt!2666137)))

(declare-fun Exists!4667 (Int) Bool)

(assert (=> b!7718963 (= lt!2666137 (Exists!4667 lambda!471048))))

(declare-datatypes ((tuple2!69546 0))(
  ( (tuple2!69547 (_1!38076 List!73393) (_2!38076 List!73393)) )
))
(declare-datatypes ((Option!17567 0))(
  ( (None!17566) (Some!17566 (v!54701 tuple2!69546)) )
))
(declare-fun isDefined!14183 (Option!17567) Bool)

(declare-fun findConcatSeparation!3597 (Regex!20542 Regex!20542 List!73393 List!73393 List!73393) Option!17567)

(assert (=> b!7718963 (= lt!2666137 (isDefined!14183 (findConcatSeparation!3597 (reg!20871 r!14126) r!14126 Nil!73269 s!9605 s!9605)))))

(declare-fun lt!2666133 () Unit!168160)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3355 (Regex!20542 Regex!20542 List!73393) Unit!168160)

(assert (=> b!7718963 (= lt!2666133 (lemmaFindConcatSeparationEquivalentToExists!3355 (reg!20871 r!14126) r!14126 s!9605))))

(declare-fun b!7718964 () Bool)

(declare-fun tp!2264499 () Bool)

(assert (=> b!7718964 (= e!4578735 tp!2264499)))

(declare-fun b!7718965 () Bool)

(declare-fun e!4578732 () Bool)

(assert (=> b!7718965 (= e!4578734 e!4578732)))

(declare-fun res!3080083 () Bool)

(assert (=> b!7718965 (=> res!3080083 e!4578732)))

(assert (=> b!7718965 (= res!3080083 (Exists!4667 lambda!471048))))

(declare-fun lt!2666136 () Unit!168160)

(assert (=> b!7718965 (= lt!2666136 e!4578730)))

(declare-fun c!1422817 () Bool)

(declare-fun lt!2666135 () Bool)

(assert (=> b!7718965 (= c!1422817 lt!2666135)))

(assert (=> b!7718965 (= lt!2666135 (matchR!10038 r!14126 s!9605))))

(declare-fun b!7718966 () Bool)

(declare-fun tp!2264498 () Bool)

(declare-fun tp!2264500 () Bool)

(assert (=> b!7718966 (= e!4578735 (and tp!2264498 tp!2264500))))

(declare-fun b!7718967 () Bool)

(declare-fun res!3080085 () Bool)

(assert (=> b!7718967 (=> (not res!3080085) (not e!4578733))))

(declare-fun isEmpty!41932 (List!73393) Bool)

(assert (=> b!7718967 (= res!3080085 (not (isEmpty!41932 s!9605)))))

(declare-fun b!7718968 () Bool)

(declare-fun matchRSpec!4632 (Regex!20542 List!73393) Bool)

(assert (=> b!7718968 (= e!4578732 (= lt!2666135 (matchRSpec!4632 r!14126 s!9605)))))

(declare-fun b!7718969 () Bool)

(declare-fun tp!2264503 () Bool)

(declare-fun tp!2264501 () Bool)

(assert (=> b!7718969 (= e!4578735 (and tp!2264503 tp!2264501))))

(declare-fun b!7718970 () Bool)

(declare-fun tp_is_empty!51439 () Bool)

(assert (=> b!7718970 (= e!4578735 tp_is_empty!51439)))

(declare-fun b!7718971 () Bool)

(declare-fun tp!2264502 () Bool)

(assert (=> b!7718971 (= e!4578731 (and tp_is_empty!51439 tp!2264502))))

(declare-fun res!3080084 () Bool)

(assert (=> b!7718972 (=> res!3080084 e!4578732)))

(assert (=> b!7718972 (= res!3080084 (Exists!4667 lambda!471049))))

(assert (= (and start!737486 res!3080088) b!7718962))

(assert (= (and b!7718962 res!3080087) b!7718967))

(assert (= (and b!7718967 res!3080085) b!7718963))

(assert (= (and b!7718963 (not res!3080086)) b!7718965))

(assert (= (and b!7718965 c!1422817) b!7718961))

(assert (= (and b!7718965 (not c!1422817)) b!7718960))

(assert (= (and b!7718965 (not res!3080083)) b!7718972))

(assert (= (and b!7718972 (not res!3080084)) b!7718968))

(assert (= (and start!737486 (is-ElementMatch!20542 r!14126)) b!7718970))

(assert (= (and start!737486 (is-Concat!29387 r!14126)) b!7718969))

(assert (= (and start!737486 (is-Star!20542 r!14126)) b!7718964))

(assert (= (and start!737486 (is-Union!20542 r!14126)) b!7718966))

(assert (= (and start!737486 (is-Cons!73269 s!9605)) b!7718971))

(declare-fun m!8199298 () Bool)

(assert (=> b!7718968 m!8199298))

(declare-fun m!8199300 () Bool)

(assert (=> start!737486 m!8199300))

(declare-fun m!8199302 () Bool)

(assert (=> b!7718961 m!8199302))

(declare-fun m!8199304 () Bool)

(assert (=> b!7718961 m!8199304))

(declare-fun m!8199306 () Bool)

(assert (=> b!7718961 m!8199306))

(declare-fun m!8199308 () Bool)

(assert (=> b!7718972 m!8199308))

(declare-fun m!8199310 () Bool)

(assert (=> b!7718963 m!8199310))

(declare-fun m!8199312 () Bool)

(assert (=> b!7718963 m!8199312))

(assert (=> b!7718963 m!8199312))

(declare-fun m!8199314 () Bool)

(assert (=> b!7718963 m!8199314))

(declare-fun m!8199316 () Bool)

(assert (=> b!7718963 m!8199316))

(assert (=> b!7718965 m!8199310))

(declare-fun m!8199318 () Bool)

(assert (=> b!7718965 m!8199318))

(declare-fun m!8199320 () Bool)

(assert (=> b!7718967 m!8199320))

(push 1)

(assert (not start!737486))

(assert (not b!7718965))

(assert (not b!7718971))

(assert (not b!7718969))

(assert (not b!7718964))

(assert (not b!7718966))

(assert (not b!7718972))

(assert (not b!7718963))

(assert (not b!7718967))

(assert (not b!7718968))

(assert (not b!7718961))

(assert tp_is_empty!51439)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2337441 () Bool)

(declare-fun choose!59250 (Int) Bool)

(assert (=> d!2337441 (= (Exists!4667 lambda!471049) (choose!59250 lambda!471049))))

(declare-fun bs!1962979 () Bool)

(assert (= bs!1962979 d!2337441))

(declare-fun m!8199346 () Bool)

(assert (=> bs!1962979 m!8199346))

(assert (=> b!7718972 d!2337441))

(declare-fun d!2337443 () Bool)

(declare-fun e!4578765 () Bool)

(assert (=> d!2337443 e!4578765))

(declare-fun res!3080126 () Bool)

(assert (=> d!2337443 (=> res!3080126 e!4578765)))

(assert (=> d!2337443 (= res!3080126 (isEmpty!41932 s!9605))))

(declare-fun lt!2666162 () Unit!168160)

(declare-fun choose!59251 (Regex!20542 List!73393) Unit!168160)

(assert (=> d!2337443 (= lt!2666162 (choose!59251 (reg!20871 r!14126) s!9605))))

(assert (=> d!2337443 (validRegex!10960 (Star!20542 (reg!20871 r!14126)))))

(assert (=> d!2337443 (= (lemmaStarAppConcat!57 (reg!20871 r!14126) s!9605) lt!2666162)))

(declare-fun b!7719039 () Bool)

(assert (=> b!7719039 (= e!4578765 (matchR!10038 (Concat!29387 (reg!20871 r!14126) (Star!20542 (reg!20871 r!14126))) s!9605))))

(assert (= (and d!2337443 (not res!3080126)) b!7719039))

(assert (=> d!2337443 m!8199320))

(declare-fun m!8199354 () Bool)

(assert (=> d!2337443 m!8199354))

(declare-fun m!8199356 () Bool)

(assert (=> d!2337443 m!8199356))

(declare-fun m!8199358 () Bool)

(assert (=> b!7719039 m!8199358))

(assert (=> b!7718961 d!2337443))

(declare-fun b!7719096 () Bool)

(declare-fun e!4578798 () Bool)

(declare-fun head!15784 (List!73393) C!41410)

(assert (=> b!7719096 (= e!4578798 (not (= (head!15784 s!9605) (c!1422818 (Concat!29387 (reg!20871 r!14126) r!14126)))))))

(declare-fun d!2337447 () Bool)

(declare-fun e!4578797 () Bool)

(assert (=> d!2337447 e!4578797))

(declare-fun c!1422837 () Bool)

(assert (=> d!2337447 (= c!1422837 (is-EmptyExpr!20542 (Concat!29387 (reg!20871 r!14126) r!14126)))))

(declare-fun lt!2666167 () Bool)

(declare-fun e!4578800 () Bool)

(assert (=> d!2337447 (= lt!2666167 e!4578800)))

(declare-fun c!1422835 () Bool)

(assert (=> d!2337447 (= c!1422835 (isEmpty!41932 s!9605))))

(assert (=> d!2337447 (validRegex!10960 (Concat!29387 (reg!20871 r!14126) r!14126))))

(assert (=> d!2337447 (= (matchR!10038 (Concat!29387 (reg!20871 r!14126) r!14126) s!9605) lt!2666167)))

(declare-fun b!7719097 () Bool)

(declare-fun res!3080165 () Bool)

(assert (=> b!7719097 (=> res!3080165 e!4578798)))

(declare-fun tail!15324 (List!73393) List!73393)

(assert (=> b!7719097 (= res!3080165 (not (isEmpty!41932 (tail!15324 s!9605))))))

(declare-fun b!7719098 () Bool)

(declare-fun res!3080162 () Bool)

(declare-fun e!4578799 () Bool)

(assert (=> b!7719098 (=> res!3080162 e!4578799)))

(assert (=> b!7719098 (= res!3080162 (not (is-ElementMatch!20542 (Concat!29387 (reg!20871 r!14126) r!14126))))))

(declare-fun e!4578794 () Bool)

(assert (=> b!7719098 (= e!4578794 e!4578799)))

(declare-fun b!7719099 () Bool)

(assert (=> b!7719099 (= e!4578797 e!4578794)))

(declare-fun c!1422836 () Bool)

(assert (=> b!7719099 (= c!1422836 (is-EmptyLang!20542 (Concat!29387 (reg!20871 r!14126) r!14126)))))

(declare-fun b!7719100 () Bool)

(declare-fun nullable!9019 (Regex!20542) Bool)

(assert (=> b!7719100 (= e!4578800 (nullable!9019 (Concat!29387 (reg!20871 r!14126) r!14126)))))

(declare-fun b!7719101 () Bool)

(declare-fun res!3080166 () Bool)

(declare-fun e!4578795 () Bool)

(assert (=> b!7719101 (=> (not res!3080166) (not e!4578795))))

(declare-fun call!713403 () Bool)

(assert (=> b!7719101 (= res!3080166 (not call!713403))))

(declare-fun b!7719102 () Bool)

(assert (=> b!7719102 (= e!4578797 (= lt!2666167 call!713403))))

(declare-fun b!7719103 () Bool)

(declare-fun e!4578796 () Bool)

(assert (=> b!7719103 (= e!4578796 e!4578798)))

(declare-fun res!3080160 () Bool)

(assert (=> b!7719103 (=> res!3080160 e!4578798)))

(assert (=> b!7719103 (= res!3080160 call!713403)))

(declare-fun b!7719104 () Bool)

(declare-fun res!3080161 () Bool)

(assert (=> b!7719104 (=> res!3080161 e!4578799)))

(assert (=> b!7719104 (= res!3080161 e!4578795)))

(declare-fun res!3080163 () Bool)

(assert (=> b!7719104 (=> (not res!3080163) (not e!4578795))))

(assert (=> b!7719104 (= res!3080163 lt!2666167)))

(declare-fun b!7719105 () Bool)

(declare-fun derivativeStep!5984 (Regex!20542 C!41410) Regex!20542)

(assert (=> b!7719105 (= e!4578800 (matchR!10038 (derivativeStep!5984 (Concat!29387 (reg!20871 r!14126) r!14126) (head!15784 s!9605)) (tail!15324 s!9605)))))

(declare-fun b!7719106 () Bool)

(assert (=> b!7719106 (= e!4578799 e!4578796)))

(declare-fun res!3080164 () Bool)

(assert (=> b!7719106 (=> (not res!3080164) (not e!4578796))))

(assert (=> b!7719106 (= res!3080164 (not lt!2666167))))

(declare-fun bm!713398 () Bool)

(assert (=> bm!713398 (= call!713403 (isEmpty!41932 s!9605))))

(declare-fun b!7719107 () Bool)

(declare-fun res!3080159 () Bool)

(assert (=> b!7719107 (=> (not res!3080159) (not e!4578795))))

(assert (=> b!7719107 (= res!3080159 (isEmpty!41932 (tail!15324 s!9605)))))

(declare-fun b!7719108 () Bool)

(assert (=> b!7719108 (= e!4578795 (= (head!15784 s!9605) (c!1422818 (Concat!29387 (reg!20871 r!14126) r!14126))))))

(declare-fun b!7719109 () Bool)

(assert (=> b!7719109 (= e!4578794 (not lt!2666167))))

(assert (= (and d!2337447 c!1422835) b!7719100))

(assert (= (and d!2337447 (not c!1422835)) b!7719105))

(assert (= (and d!2337447 c!1422837) b!7719102))

(assert (= (and d!2337447 (not c!1422837)) b!7719099))

(assert (= (and b!7719099 c!1422836) b!7719109))

(assert (= (and b!7719099 (not c!1422836)) b!7719098))

(assert (= (and b!7719098 (not res!3080162)) b!7719104))

(assert (= (and b!7719104 res!3080163) b!7719101))

(assert (= (and b!7719101 res!3080166) b!7719107))

(assert (= (and b!7719107 res!3080159) b!7719108))

(assert (= (and b!7719104 (not res!3080161)) b!7719106))

(assert (= (and b!7719106 res!3080164) b!7719103))

(assert (= (and b!7719103 (not res!3080160)) b!7719097))

(assert (= (and b!7719097 (not res!3080165)) b!7719096))

(assert (= (or b!7719102 b!7719101 b!7719103) bm!713398))

(declare-fun m!8199360 () Bool)

(assert (=> b!7719096 m!8199360))

(assert (=> bm!713398 m!8199320))

(declare-fun m!8199362 () Bool)

(assert (=> b!7719100 m!8199362))

(assert (=> b!7719105 m!8199360))

(assert (=> b!7719105 m!8199360))

(declare-fun m!8199364 () Bool)

(assert (=> b!7719105 m!8199364))

(declare-fun m!8199366 () Bool)

(assert (=> b!7719105 m!8199366))

(assert (=> b!7719105 m!8199364))

(assert (=> b!7719105 m!8199366))

(declare-fun m!8199368 () Bool)

(assert (=> b!7719105 m!8199368))

(assert (=> b!7719097 m!8199366))

(assert (=> b!7719097 m!8199366))

(declare-fun m!8199370 () Bool)

(assert (=> b!7719097 m!8199370))

(assert (=> b!7719107 m!8199366))

(assert (=> b!7719107 m!8199366))

(assert (=> b!7719107 m!8199370))

(assert (=> d!2337447 m!8199320))

(declare-fun m!8199372 () Bool)

(assert (=> d!2337447 m!8199372))

(assert (=> b!7719108 m!8199360))

(assert (=> b!7718961 d!2337447))

(declare-fun d!2337449 () Bool)

(assert (=> d!2337449 (isDefined!14183 (findConcatSeparation!3597 (reg!20871 r!14126) r!14126 Nil!73269 s!9605 s!9605))))

(declare-fun lt!2666170 () Unit!168160)

(declare-fun choose!59252 (Regex!20542 Regex!20542 List!73393) Unit!168160)

(assert (=> d!2337449 (= lt!2666170 (choose!59252 (reg!20871 r!14126) r!14126 s!9605))))

(assert (=> d!2337449 (validRegex!10960 (reg!20871 r!14126))))

(assert (=> d!2337449 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!315 (reg!20871 r!14126) r!14126 s!9605) lt!2666170)))

(declare-fun bs!1962980 () Bool)

(assert (= bs!1962980 d!2337449))

(assert (=> bs!1962980 m!8199312))

(assert (=> bs!1962980 m!8199312))

(assert (=> bs!1962980 m!8199314))

(declare-fun m!8199374 () Bool)

(assert (=> bs!1962980 m!8199374))

(declare-fun m!8199376 () Bool)

(assert (=> bs!1962980 m!8199376))

(assert (=> b!7718961 d!2337449))

(declare-fun d!2337451 () Bool)

(assert (=> d!2337451 (= (isEmpty!41932 s!9605) (is-Nil!73269 s!9605))))

(assert (=> b!7718967 d!2337451))

(declare-fun d!2337453 () Bool)

(assert (=> d!2337453 (= (Exists!4667 lambda!471048) (choose!59250 lambda!471048))))

(declare-fun bs!1962981 () Bool)

(assert (= bs!1962981 d!2337453))

(declare-fun m!8199378 () Bool)

(assert (=> bs!1962981 m!8199378))

(assert (=> b!7718965 d!2337453))

(declare-fun b!7719110 () Bool)

(declare-fun e!4578805 () Bool)

(assert (=> b!7719110 (= e!4578805 (not (= (head!15784 s!9605) (c!1422818 r!14126))))))

(declare-fun d!2337455 () Bool)

(declare-fun e!4578804 () Bool)

(assert (=> d!2337455 e!4578804))

(declare-fun c!1422840 () Bool)

(assert (=> d!2337455 (= c!1422840 (is-EmptyExpr!20542 r!14126))))

(declare-fun lt!2666171 () Bool)

(declare-fun e!4578807 () Bool)

(assert (=> d!2337455 (= lt!2666171 e!4578807)))

(declare-fun c!1422838 () Bool)

(assert (=> d!2337455 (= c!1422838 (isEmpty!41932 s!9605))))

(assert (=> d!2337455 (validRegex!10960 r!14126)))

(assert (=> d!2337455 (= (matchR!10038 r!14126 s!9605) lt!2666171)))

(declare-fun b!7719111 () Bool)

(declare-fun res!3080173 () Bool)

(assert (=> b!7719111 (=> res!3080173 e!4578805)))

(assert (=> b!7719111 (= res!3080173 (not (isEmpty!41932 (tail!15324 s!9605))))))

(declare-fun b!7719112 () Bool)

(declare-fun res!3080170 () Bool)

(declare-fun e!4578806 () Bool)

(assert (=> b!7719112 (=> res!3080170 e!4578806)))

(assert (=> b!7719112 (= res!3080170 (not (is-ElementMatch!20542 r!14126)))))

(declare-fun e!4578801 () Bool)

(assert (=> b!7719112 (= e!4578801 e!4578806)))

(declare-fun b!7719113 () Bool)

(assert (=> b!7719113 (= e!4578804 e!4578801)))

(declare-fun c!1422839 () Bool)

(assert (=> b!7719113 (= c!1422839 (is-EmptyLang!20542 r!14126))))

(declare-fun b!7719114 () Bool)

(assert (=> b!7719114 (= e!4578807 (nullable!9019 r!14126))))

(declare-fun b!7719115 () Bool)

(declare-fun res!3080174 () Bool)

(declare-fun e!4578802 () Bool)

(assert (=> b!7719115 (=> (not res!3080174) (not e!4578802))))

(declare-fun call!713406 () Bool)

(assert (=> b!7719115 (= res!3080174 (not call!713406))))

(declare-fun b!7719116 () Bool)

(assert (=> b!7719116 (= e!4578804 (= lt!2666171 call!713406))))

(declare-fun b!7719117 () Bool)

(declare-fun e!4578803 () Bool)

(assert (=> b!7719117 (= e!4578803 e!4578805)))

(declare-fun res!3080168 () Bool)

(assert (=> b!7719117 (=> res!3080168 e!4578805)))

(assert (=> b!7719117 (= res!3080168 call!713406)))

(declare-fun b!7719118 () Bool)

(declare-fun res!3080169 () Bool)

(assert (=> b!7719118 (=> res!3080169 e!4578806)))

(assert (=> b!7719118 (= res!3080169 e!4578802)))

(declare-fun res!3080171 () Bool)

(assert (=> b!7719118 (=> (not res!3080171) (not e!4578802))))

(assert (=> b!7719118 (= res!3080171 lt!2666171)))

(declare-fun b!7719119 () Bool)

(assert (=> b!7719119 (= e!4578807 (matchR!10038 (derivativeStep!5984 r!14126 (head!15784 s!9605)) (tail!15324 s!9605)))))

(declare-fun b!7719120 () Bool)

(assert (=> b!7719120 (= e!4578806 e!4578803)))

(declare-fun res!3080172 () Bool)

(assert (=> b!7719120 (=> (not res!3080172) (not e!4578803))))

(assert (=> b!7719120 (= res!3080172 (not lt!2666171))))

(declare-fun bm!713401 () Bool)

(assert (=> bm!713401 (= call!713406 (isEmpty!41932 s!9605))))

(declare-fun b!7719121 () Bool)

(declare-fun res!3080167 () Bool)

(assert (=> b!7719121 (=> (not res!3080167) (not e!4578802))))

(assert (=> b!7719121 (= res!3080167 (isEmpty!41932 (tail!15324 s!9605)))))

(declare-fun b!7719122 () Bool)

(assert (=> b!7719122 (= e!4578802 (= (head!15784 s!9605) (c!1422818 r!14126)))))

(declare-fun b!7719123 () Bool)

(assert (=> b!7719123 (= e!4578801 (not lt!2666171))))

(assert (= (and d!2337455 c!1422838) b!7719114))

(assert (= (and d!2337455 (not c!1422838)) b!7719119))

(assert (= (and d!2337455 c!1422840) b!7719116))

(assert (= (and d!2337455 (not c!1422840)) b!7719113))

(assert (= (and b!7719113 c!1422839) b!7719123))

(assert (= (and b!7719113 (not c!1422839)) b!7719112))

(assert (= (and b!7719112 (not res!3080170)) b!7719118))

(assert (= (and b!7719118 res!3080171) b!7719115))

(assert (= (and b!7719115 res!3080174) b!7719121))

(assert (= (and b!7719121 res!3080167) b!7719122))

(assert (= (and b!7719118 (not res!3080169)) b!7719120))

(assert (= (and b!7719120 res!3080172) b!7719117))

(assert (= (and b!7719117 (not res!3080168)) b!7719111))

(assert (= (and b!7719111 (not res!3080173)) b!7719110))

(assert (= (or b!7719116 b!7719115 b!7719117) bm!713401))

(assert (=> b!7719110 m!8199360))

(assert (=> bm!713401 m!8199320))

(declare-fun m!8199380 () Bool)

(assert (=> b!7719114 m!8199380))

(assert (=> b!7719119 m!8199360))

(assert (=> b!7719119 m!8199360))

(declare-fun m!8199382 () Bool)

(assert (=> b!7719119 m!8199382))

(assert (=> b!7719119 m!8199366))

(assert (=> b!7719119 m!8199382))

(assert (=> b!7719119 m!8199366))

(declare-fun m!8199384 () Bool)

(assert (=> b!7719119 m!8199384))

(assert (=> b!7719111 m!8199366))

(assert (=> b!7719111 m!8199366))

(assert (=> b!7719111 m!8199370))

(assert (=> b!7719121 m!8199366))

(assert (=> b!7719121 m!8199366))

(assert (=> b!7719121 m!8199370))

(assert (=> d!2337455 m!8199320))

(assert (=> d!2337455 m!8199300))

(assert (=> b!7719122 m!8199360))

(assert (=> b!7718965 d!2337455))

(declare-fun bs!1962983 () Bool)

(declare-fun b!7719180 () Bool)

(assert (= bs!1962983 (and b!7719180 b!7718963)))

(declare-fun lambda!471062 () Int)

(assert (=> bs!1962983 (not (= lambda!471062 lambda!471048))))

(declare-fun bs!1962984 () Bool)

(assert (= bs!1962984 (and b!7719180 b!7718972)))

(assert (=> bs!1962984 (= lambda!471062 lambda!471049)))

(assert (=> b!7719180 true))

(assert (=> b!7719180 true))

(declare-fun bs!1962985 () Bool)

(declare-fun b!7719175 () Bool)

(assert (= bs!1962985 (and b!7719175 b!7718963)))

(declare-fun lambda!471063 () Int)

(assert (=> bs!1962985 (not (= lambda!471063 lambda!471048))))

(declare-fun bs!1962986 () Bool)

(assert (= bs!1962986 (and b!7719175 b!7718972)))

(assert (=> bs!1962986 (not (= lambda!471063 lambda!471049))))

(declare-fun bs!1962987 () Bool)

(assert (= bs!1962987 (and b!7719175 b!7719180)))

(assert (=> bs!1962987 (not (= lambda!471063 lambda!471062))))

(assert (=> b!7719175 true))

(assert (=> b!7719175 true))

(declare-fun b!7719170 () Bool)

(declare-fun e!4578838 () Bool)

(assert (=> b!7719170 (= e!4578838 (matchRSpec!4632 (regTwo!41597 r!14126) s!9605))))

(declare-fun b!7719171 () Bool)

(declare-fun res!3080201 () Bool)

(declare-fun e!4578835 () Bool)

(assert (=> b!7719171 (=> res!3080201 e!4578835)))

(declare-fun call!713412 () Bool)

(assert (=> b!7719171 (= res!3080201 call!713412)))

(declare-fun e!4578836 () Bool)

(assert (=> b!7719171 (= e!4578836 e!4578835)))

(declare-fun b!7719172 () Bool)

(declare-fun e!4578839 () Bool)

(assert (=> b!7719172 (= e!4578839 e!4578838)))

(declare-fun res!3080200 () Bool)

(assert (=> b!7719172 (= res!3080200 (matchRSpec!4632 (regOne!41597 r!14126) s!9605))))

(assert (=> b!7719172 (=> res!3080200 e!4578838)))

(declare-fun b!7719173 () Bool)

(declare-fun e!4578833 () Bool)

(declare-fun e!4578837 () Bool)

(assert (=> b!7719173 (= e!4578833 e!4578837)))

(declare-fun res!3080199 () Bool)

(assert (=> b!7719173 (= res!3080199 (not (is-EmptyLang!20542 r!14126)))))

(assert (=> b!7719173 (=> (not res!3080199) (not e!4578837))))

(declare-fun b!7719174 () Bool)

(assert (=> b!7719174 (= e!4578839 e!4578836)))

(declare-fun c!1422855 () Bool)

(assert (=> b!7719174 (= c!1422855 (is-Star!20542 r!14126))))

(declare-fun bm!713407 () Bool)

(assert (=> bm!713407 (= call!713412 (isEmpty!41932 s!9605))))

(declare-fun call!713413 () Bool)

(assert (=> b!7719175 (= e!4578836 call!713413)))

(declare-fun d!2337457 () Bool)

(declare-fun c!1422854 () Bool)

(assert (=> d!2337457 (= c!1422854 (is-EmptyExpr!20542 r!14126))))

(assert (=> d!2337457 (= (matchRSpec!4632 r!14126 s!9605) e!4578833)))

(declare-fun b!7719176 () Bool)

(assert (=> b!7719176 (= e!4578833 call!713412)))

(declare-fun b!7719177 () Bool)

(declare-fun c!1422853 () Bool)

(assert (=> b!7719177 (= c!1422853 (is-Union!20542 r!14126))))

(declare-fun e!4578834 () Bool)

(assert (=> b!7719177 (= e!4578834 e!4578839)))

(declare-fun b!7719178 () Bool)

(declare-fun c!1422852 () Bool)

(assert (=> b!7719178 (= c!1422852 (is-ElementMatch!20542 r!14126))))

(assert (=> b!7719178 (= e!4578837 e!4578834)))

(declare-fun bm!713408 () Bool)

(assert (=> bm!713408 (= call!713413 (Exists!4667 (ite c!1422855 lambda!471062 lambda!471063)))))

(declare-fun b!7719179 () Bool)

(assert (=> b!7719179 (= e!4578834 (= s!9605 (Cons!73269 (c!1422818 r!14126) Nil!73269)))))

(assert (=> b!7719180 (= e!4578835 call!713413)))

(assert (= (and d!2337457 c!1422854) b!7719176))

(assert (= (and d!2337457 (not c!1422854)) b!7719173))

(assert (= (and b!7719173 res!3080199) b!7719178))

(assert (= (and b!7719178 c!1422852) b!7719179))

(assert (= (and b!7719178 (not c!1422852)) b!7719177))

(assert (= (and b!7719177 c!1422853) b!7719172))

(assert (= (and b!7719177 (not c!1422853)) b!7719174))

(assert (= (and b!7719172 (not res!3080200)) b!7719170))

(assert (= (and b!7719174 c!1422855) b!7719171))

(assert (= (and b!7719174 (not c!1422855)) b!7719175))

(assert (= (and b!7719171 (not res!3080201)) b!7719180))

(assert (= (or b!7719180 b!7719175) bm!713408))

(assert (= (or b!7719176 b!7719171) bm!713407))

(declare-fun m!8199404 () Bool)

(assert (=> b!7719170 m!8199404))

(declare-fun m!8199406 () Bool)

(assert (=> b!7719172 m!8199406))

(assert (=> bm!713407 m!8199320))

(declare-fun m!8199408 () Bool)

(assert (=> bm!713408 m!8199408))

(assert (=> b!7718968 d!2337457))

(declare-fun b!7719227 () Bool)

(declare-fun e!4578876 () Bool)

(declare-fun call!713420 () Bool)

(assert (=> b!7719227 (= e!4578876 call!713420)))

(declare-fun b!7719228 () Bool)

(declare-fun res!3080225 () Bool)

(assert (=> b!7719228 (=> (not res!3080225) (not e!4578876))))

(declare-fun call!713422 () Bool)

(assert (=> b!7719228 (= res!3080225 call!713422)))

(declare-fun e!4578873 () Bool)

(assert (=> b!7719228 (= e!4578873 e!4578876)))

(declare-fun b!7719229 () Bool)

(declare-fun e!4578870 () Bool)

(declare-fun e!4578874 () Bool)

(assert (=> b!7719229 (= e!4578870 e!4578874)))

(declare-fun res!3080228 () Bool)

(assert (=> b!7719229 (= res!3080228 (not (nullable!9019 (reg!20871 r!14126))))))

(assert (=> b!7719229 (=> (not res!3080228) (not e!4578874))))

(declare-fun b!7719230 () Bool)

(declare-fun e!4578875 () Bool)

(assert (=> b!7719230 (= e!4578875 call!713420)))

(declare-fun d!2337463 () Bool)

(declare-fun res!3080224 () Bool)

(declare-fun e!4578871 () Bool)

(assert (=> d!2337463 (=> res!3080224 e!4578871)))

(assert (=> d!2337463 (= res!3080224 (is-ElementMatch!20542 r!14126))))

(assert (=> d!2337463 (= (validRegex!10960 r!14126) e!4578871)))

(declare-fun b!7719231 () Bool)

(assert (=> b!7719231 (= e!4578871 e!4578870)))

(declare-fun c!1422868 () Bool)

(assert (=> b!7719231 (= c!1422868 (is-Star!20542 r!14126))))

(declare-fun bm!713415 () Bool)

(declare-fun c!1422869 () Bool)

(assert (=> bm!713415 (= call!713422 (validRegex!10960 (ite c!1422869 (regOne!41597 r!14126) (regOne!41596 r!14126))))))

(declare-fun bm!713416 () Bool)

(declare-fun call!713421 () Bool)

(assert (=> bm!713416 (= call!713420 call!713421)))

(declare-fun bm!713417 () Bool)

(assert (=> bm!713417 (= call!713421 (validRegex!10960 (ite c!1422868 (reg!20871 r!14126) (ite c!1422869 (regTwo!41597 r!14126) (regTwo!41596 r!14126)))))))

(declare-fun b!7719232 () Bool)

(declare-fun e!4578872 () Bool)

(assert (=> b!7719232 (= e!4578872 e!4578875)))

(declare-fun res!3080226 () Bool)

(assert (=> b!7719232 (=> (not res!3080226) (not e!4578875))))

(assert (=> b!7719232 (= res!3080226 call!713422)))

(declare-fun b!7719233 () Bool)

(assert (=> b!7719233 (= e!4578870 e!4578873)))

(assert (=> b!7719233 (= c!1422869 (is-Union!20542 r!14126))))

(declare-fun b!7719234 () Bool)

(declare-fun res!3080227 () Bool)

(assert (=> b!7719234 (=> res!3080227 e!4578872)))

(assert (=> b!7719234 (= res!3080227 (not (is-Concat!29387 r!14126)))))

(assert (=> b!7719234 (= e!4578873 e!4578872)))

(declare-fun b!7719235 () Bool)

(assert (=> b!7719235 (= e!4578874 call!713421)))

(assert (= (and d!2337463 (not res!3080224)) b!7719231))

(assert (= (and b!7719231 c!1422868) b!7719229))

(assert (= (and b!7719231 (not c!1422868)) b!7719233))

(assert (= (and b!7719229 res!3080228) b!7719235))

(assert (= (and b!7719233 c!1422869) b!7719228))

(assert (= (and b!7719233 (not c!1422869)) b!7719234))

(assert (= (and b!7719228 res!3080225) b!7719227))

(assert (= (and b!7719234 (not res!3080227)) b!7719232))

(assert (= (and b!7719232 res!3080226) b!7719230))

(assert (= (or b!7719228 b!7719232) bm!713415))

(assert (= (or b!7719227 b!7719230) bm!713416))

(assert (= (or b!7719235 bm!713416) bm!713417))

(declare-fun m!8199410 () Bool)

(assert (=> b!7719229 m!8199410))

(declare-fun m!8199412 () Bool)

(assert (=> bm!713415 m!8199412))

(declare-fun m!8199414 () Bool)

(assert (=> bm!713417 m!8199414))

(assert (=> start!737486 d!2337463))

(assert (=> b!7718963 d!2337453))

(declare-fun d!2337465 () Bool)

(declare-fun isEmpty!41934 (Option!17567) Bool)

(assert (=> d!2337465 (= (isDefined!14183 (findConcatSeparation!3597 (reg!20871 r!14126) r!14126 Nil!73269 s!9605 s!9605)) (not (isEmpty!41934 (findConcatSeparation!3597 (reg!20871 r!14126) r!14126 Nil!73269 s!9605 s!9605))))))

(declare-fun bs!1962988 () Bool)

(assert (= bs!1962988 d!2337465))

(assert (=> bs!1962988 m!8199312))

(declare-fun m!8199416 () Bool)

(assert (=> bs!1962988 m!8199416))

(assert (=> b!7718963 d!2337465))

(declare-fun b!7719269 () Bool)

(declare-fun res!3080250 () Bool)

(declare-fun e!4578899 () Bool)

(assert (=> b!7719269 (=> (not res!3080250) (not e!4578899))))

(declare-fun lt!2666183 () Option!17567)

(declare-fun get!26011 (Option!17567) tuple2!69546)

(assert (=> b!7719269 (= res!3080250 (matchR!10038 (reg!20871 r!14126) (_1!38076 (get!26011 lt!2666183))))))

(declare-fun b!7719270 () Bool)

(declare-fun e!4578898 () Option!17567)

(declare-fun e!4578896 () Option!17567)

(assert (=> b!7719270 (= e!4578898 e!4578896)))

(declare-fun c!1422879 () Bool)

(assert (=> b!7719270 (= c!1422879 (is-Nil!73269 s!9605))))

(declare-fun b!7719271 () Bool)

(assert (=> b!7719271 (= e!4578896 None!17566)))

(declare-fun b!7719272 () Bool)

(declare-fun lt!2666182 () Unit!168160)

(declare-fun lt!2666184 () Unit!168160)

(assert (=> b!7719272 (= lt!2666182 lt!2666184)))

(declare-fun ++!17750 (List!73393 List!73393) List!73393)

(assert (=> b!7719272 (= (++!17750 (++!17750 Nil!73269 (Cons!73269 (h!79717 s!9605) Nil!73269)) (t!388128 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3301 (List!73393 C!41410 List!73393 List!73393) Unit!168160)

(assert (=> b!7719272 (= lt!2666184 (lemmaMoveElementToOtherListKeepsConcatEq!3301 Nil!73269 (h!79717 s!9605) (t!388128 s!9605) s!9605))))

(assert (=> b!7719272 (= e!4578896 (findConcatSeparation!3597 (reg!20871 r!14126) r!14126 (++!17750 Nil!73269 (Cons!73269 (h!79717 s!9605) Nil!73269)) (t!388128 s!9605) s!9605))))

(declare-fun b!7719273 () Bool)

(declare-fun e!4578897 () Bool)

(assert (=> b!7719273 (= e!4578897 (not (isDefined!14183 lt!2666183)))))

(declare-fun d!2337467 () Bool)

(assert (=> d!2337467 e!4578897))

(declare-fun res!3080247 () Bool)

(assert (=> d!2337467 (=> res!3080247 e!4578897)))

(assert (=> d!2337467 (= res!3080247 e!4578899)))

(declare-fun res!3080248 () Bool)

(assert (=> d!2337467 (=> (not res!3080248) (not e!4578899))))

(assert (=> d!2337467 (= res!3080248 (isDefined!14183 lt!2666183))))

(assert (=> d!2337467 (= lt!2666183 e!4578898)))

(declare-fun c!1422878 () Bool)

(declare-fun e!4578900 () Bool)

(assert (=> d!2337467 (= c!1422878 e!4578900)))

(declare-fun res!3080246 () Bool)

(assert (=> d!2337467 (=> (not res!3080246) (not e!4578900))))

(assert (=> d!2337467 (= res!3080246 (matchR!10038 (reg!20871 r!14126) Nil!73269))))

(assert (=> d!2337467 (validRegex!10960 (reg!20871 r!14126))))

(assert (=> d!2337467 (= (findConcatSeparation!3597 (reg!20871 r!14126) r!14126 Nil!73269 s!9605 s!9605) lt!2666183)))

(declare-fun b!7719274 () Bool)

(assert (=> b!7719274 (= e!4578898 (Some!17566 (tuple2!69547 Nil!73269 s!9605)))))

(declare-fun b!7719275 () Bool)

(assert (=> b!7719275 (= e!4578900 (matchR!10038 r!14126 s!9605))))

(declare-fun b!7719276 () Bool)

(declare-fun res!3080249 () Bool)

(assert (=> b!7719276 (=> (not res!3080249) (not e!4578899))))

(assert (=> b!7719276 (= res!3080249 (matchR!10038 r!14126 (_2!38076 (get!26011 lt!2666183))))))

(declare-fun b!7719277 () Bool)

(assert (=> b!7719277 (= e!4578899 (= (++!17750 (_1!38076 (get!26011 lt!2666183)) (_2!38076 (get!26011 lt!2666183))) s!9605))))

(assert (= (and d!2337467 res!3080246) b!7719275))

(assert (= (and d!2337467 c!1422878) b!7719274))

(assert (= (and d!2337467 (not c!1422878)) b!7719270))

(assert (= (and b!7719270 c!1422879) b!7719271))

(assert (= (and b!7719270 (not c!1422879)) b!7719272))

(assert (= (and d!2337467 res!3080248) b!7719269))

(assert (= (and b!7719269 res!3080250) b!7719276))

(assert (= (and b!7719276 res!3080249) b!7719277))

(assert (= (and d!2337467 (not res!3080247)) b!7719273))

(declare-fun m!8199426 () Bool)

(assert (=> d!2337467 m!8199426))

(declare-fun m!8199428 () Bool)

(assert (=> d!2337467 m!8199428))

(assert (=> d!2337467 m!8199376))

(declare-fun m!8199430 () Bool)

(assert (=> b!7719276 m!8199430))

(declare-fun m!8199432 () Bool)

(assert (=> b!7719276 m!8199432))

(assert (=> b!7719269 m!8199430))

(declare-fun m!8199434 () Bool)

(assert (=> b!7719269 m!8199434))

(declare-fun m!8199436 () Bool)

(assert (=> b!7719272 m!8199436))

(assert (=> b!7719272 m!8199436))

(declare-fun m!8199438 () Bool)

(assert (=> b!7719272 m!8199438))

(declare-fun m!8199440 () Bool)

(assert (=> b!7719272 m!8199440))

(assert (=> b!7719272 m!8199436))

(declare-fun m!8199442 () Bool)

(assert (=> b!7719272 m!8199442))

(assert (=> b!7719273 m!8199426))

(assert (=> b!7719275 m!8199318))

(assert (=> b!7719277 m!8199430))

(declare-fun m!8199444 () Bool)

(assert (=> b!7719277 m!8199444))

(assert (=> b!7718963 d!2337467))

(declare-fun bs!1962996 () Bool)

(declare-fun d!2337473 () Bool)

(assert (= bs!1962996 (and d!2337473 b!7718963)))

(declare-fun lambda!471072 () Int)

(assert (=> bs!1962996 (= lambda!471072 lambda!471048)))

(declare-fun bs!1962997 () Bool)

(assert (= bs!1962997 (and d!2337473 b!7718972)))

(assert (=> bs!1962997 (not (= lambda!471072 lambda!471049))))

(declare-fun bs!1962998 () Bool)

(assert (= bs!1962998 (and d!2337473 b!7719180)))

(assert (=> bs!1962998 (not (= lambda!471072 lambda!471062))))

(declare-fun bs!1962999 () Bool)

(assert (= bs!1962999 (and d!2337473 b!7719175)))

(assert (=> bs!1962999 (not (= lambda!471072 lambda!471063))))

(assert (=> d!2337473 true))

(assert (=> d!2337473 true))

(assert (=> d!2337473 true))

(assert (=> d!2337473 (= (isDefined!14183 (findConcatSeparation!3597 (reg!20871 r!14126) r!14126 Nil!73269 s!9605 s!9605)) (Exists!4667 lambda!471072))))

(declare-fun lt!2666187 () Unit!168160)

(declare-fun choose!59254 (Regex!20542 Regex!20542 List!73393) Unit!168160)

(assert (=> d!2337473 (= lt!2666187 (choose!59254 (reg!20871 r!14126) r!14126 s!9605))))

(assert (=> d!2337473 (validRegex!10960 (reg!20871 r!14126))))

(assert (=> d!2337473 (= (lemmaFindConcatSeparationEquivalentToExists!3355 (reg!20871 r!14126) r!14126 s!9605) lt!2666187)))

(declare-fun bs!1963000 () Bool)

(assert (= bs!1963000 d!2337473))

(assert (=> bs!1963000 m!8199376))

(assert (=> bs!1963000 m!8199312))

(declare-fun m!8199448 () Bool)

(assert (=> bs!1963000 m!8199448))

(declare-fun m!8199450 () Bool)

(assert (=> bs!1963000 m!8199450))

(assert (=> bs!1963000 m!8199312))

(assert (=> bs!1963000 m!8199314))

(assert (=> b!7718963 d!2337473))

(declare-fun b!7719293 () Bool)

(declare-fun e!4578905 () Bool)

(declare-fun tp!2264532 () Bool)

(declare-fun tp!2264533 () Bool)

(assert (=> b!7719293 (= e!4578905 (and tp!2264532 tp!2264533))))

(declare-fun b!7719295 () Bool)

(declare-fun tp!2264536 () Bool)

(declare-fun tp!2264534 () Bool)

(assert (=> b!7719295 (= e!4578905 (and tp!2264536 tp!2264534))))

(assert (=> b!7718966 (= tp!2264498 e!4578905)))

(declare-fun b!7719294 () Bool)

(declare-fun tp!2264535 () Bool)

(assert (=> b!7719294 (= e!4578905 tp!2264535)))

(declare-fun b!7719292 () Bool)

(assert (=> b!7719292 (= e!4578905 tp_is_empty!51439)))

(assert (= (and b!7718966 (is-ElementMatch!20542 (regOne!41597 r!14126))) b!7719292))

(assert (= (and b!7718966 (is-Concat!29387 (regOne!41597 r!14126))) b!7719293))

(assert (= (and b!7718966 (is-Star!20542 (regOne!41597 r!14126))) b!7719294))

(assert (= (and b!7718966 (is-Union!20542 (regOne!41597 r!14126))) b!7719295))

(declare-fun b!7719297 () Bool)

(declare-fun e!4578906 () Bool)

(declare-fun tp!2264537 () Bool)

(declare-fun tp!2264538 () Bool)

(assert (=> b!7719297 (= e!4578906 (and tp!2264537 tp!2264538))))

(declare-fun b!7719299 () Bool)

(declare-fun tp!2264541 () Bool)

(declare-fun tp!2264539 () Bool)

(assert (=> b!7719299 (= e!4578906 (and tp!2264541 tp!2264539))))

(assert (=> b!7718966 (= tp!2264500 e!4578906)))

(declare-fun b!7719298 () Bool)

(declare-fun tp!2264540 () Bool)

(assert (=> b!7719298 (= e!4578906 tp!2264540)))

(declare-fun b!7719296 () Bool)

(assert (=> b!7719296 (= e!4578906 tp_is_empty!51439)))

(assert (= (and b!7718966 (is-ElementMatch!20542 (regTwo!41597 r!14126))) b!7719296))

(assert (= (and b!7718966 (is-Concat!29387 (regTwo!41597 r!14126))) b!7719297))

(assert (= (and b!7718966 (is-Star!20542 (regTwo!41597 r!14126))) b!7719298))

(assert (= (and b!7718966 (is-Union!20542 (regTwo!41597 r!14126))) b!7719299))

(declare-fun b!7719304 () Bool)

(declare-fun e!4578909 () Bool)

(declare-fun tp!2264544 () Bool)

(assert (=> b!7719304 (= e!4578909 (and tp_is_empty!51439 tp!2264544))))

(assert (=> b!7718971 (= tp!2264502 e!4578909)))

(assert (= (and b!7718971 (is-Cons!73269 (t!388128 s!9605))) b!7719304))

(declare-fun b!7719306 () Bool)

(declare-fun e!4578910 () Bool)

(declare-fun tp!2264545 () Bool)

(declare-fun tp!2264546 () Bool)

(assert (=> b!7719306 (= e!4578910 (and tp!2264545 tp!2264546))))

(declare-fun b!7719308 () Bool)

(declare-fun tp!2264549 () Bool)

(declare-fun tp!2264547 () Bool)

(assert (=> b!7719308 (= e!4578910 (and tp!2264549 tp!2264547))))

(assert (=> b!7718964 (= tp!2264499 e!4578910)))

(declare-fun b!7719307 () Bool)

(declare-fun tp!2264548 () Bool)

(assert (=> b!7719307 (= e!4578910 tp!2264548)))

(declare-fun b!7719305 () Bool)

(assert (=> b!7719305 (= e!4578910 tp_is_empty!51439)))

(assert (= (and b!7718964 (is-ElementMatch!20542 (reg!20871 r!14126))) b!7719305))

(assert (= (and b!7718964 (is-Concat!29387 (reg!20871 r!14126))) b!7719306))

(assert (= (and b!7718964 (is-Star!20542 (reg!20871 r!14126))) b!7719307))

(assert (= (and b!7718964 (is-Union!20542 (reg!20871 r!14126))) b!7719308))

(declare-fun b!7719310 () Bool)

(declare-fun e!4578911 () Bool)

(declare-fun tp!2264550 () Bool)

(declare-fun tp!2264551 () Bool)

(assert (=> b!7719310 (= e!4578911 (and tp!2264550 tp!2264551))))

(declare-fun b!7719312 () Bool)

(declare-fun tp!2264554 () Bool)

(declare-fun tp!2264552 () Bool)

(assert (=> b!7719312 (= e!4578911 (and tp!2264554 tp!2264552))))

(assert (=> b!7718969 (= tp!2264503 e!4578911)))

(declare-fun b!7719311 () Bool)

(declare-fun tp!2264553 () Bool)

(assert (=> b!7719311 (= e!4578911 tp!2264553)))

(declare-fun b!7719309 () Bool)

(assert (=> b!7719309 (= e!4578911 tp_is_empty!51439)))

(assert (= (and b!7718969 (is-ElementMatch!20542 (regOne!41596 r!14126))) b!7719309))

(assert (= (and b!7718969 (is-Concat!29387 (regOne!41596 r!14126))) b!7719310))

(assert (= (and b!7718969 (is-Star!20542 (regOne!41596 r!14126))) b!7719311))

(assert (= (and b!7718969 (is-Union!20542 (regOne!41596 r!14126))) b!7719312))

(declare-fun b!7719314 () Bool)

(declare-fun e!4578912 () Bool)

(declare-fun tp!2264555 () Bool)

(declare-fun tp!2264556 () Bool)

(assert (=> b!7719314 (= e!4578912 (and tp!2264555 tp!2264556))))

(declare-fun b!7719316 () Bool)

(declare-fun tp!2264559 () Bool)

(declare-fun tp!2264557 () Bool)

(assert (=> b!7719316 (= e!4578912 (and tp!2264559 tp!2264557))))

(assert (=> b!7718969 (= tp!2264501 e!4578912)))

(declare-fun b!7719315 () Bool)

(declare-fun tp!2264558 () Bool)

(assert (=> b!7719315 (= e!4578912 tp!2264558)))

(declare-fun b!7719313 () Bool)

(assert (=> b!7719313 (= e!4578912 tp_is_empty!51439)))

(assert (= (and b!7718969 (is-ElementMatch!20542 (regTwo!41596 r!14126))) b!7719313))

(assert (= (and b!7718969 (is-Concat!29387 (regTwo!41596 r!14126))) b!7719314))

(assert (= (and b!7718969 (is-Star!20542 (regTwo!41596 r!14126))) b!7719315))

(assert (= (and b!7718969 (is-Union!20542 (regTwo!41596 r!14126))) b!7719316))

(push 1)

(assert (not b!7719229))

(assert (not b!7719306))

(assert (not b!7719295))

(assert (not b!7719107))

(assert (not b!7719297))

(assert (not b!7719310))

(assert (not b!7719105))

(assert (not d!2337453))

(assert (not d!2337441))

(assert (not d!2337447))

(assert (not d!2337467))

(assert (not b!7719294))

(assert (not b!7719100))

(assert (not bm!713415))

(assert (not b!7719316))

(assert (not bm!713398))

(assert (not b!7719304))

(assert (not b!7719311))

(assert (not bm!713417))

(assert (not d!2337465))

(assert (not bm!713407))

(assert (not d!2337443))

(assert (not b!7719039))

(assert (not d!2337455))

(assert (not b!7719110))

(assert (not b!7719276))

(assert (not b!7719272))

(assert (not bm!713408))

(assert (not b!7719121))

(assert (not b!7719119))

(assert (not b!7719277))

(assert (not b!7719307))

(assert (not b!7719275))

(assert (not b!7719170))

(assert (not b!7719097))

(assert (not b!7719298))

(assert (not b!7719315))

(assert (not b!7719308))

(assert (not d!2337449))

(assert (not b!7719269))

(assert (not b!7719122))

(assert (not b!7719114))

(assert (not b!7719172))

(assert (not b!7719108))

(assert tp_is_empty!51439)

(assert (not b!7719314))

(assert (not bm!713401))

(assert (not d!2337473))

(assert (not b!7719293))

(assert (not b!7719096))

(assert (not b!7719273))

(assert (not b!7719299))

(assert (not b!7719312))

(assert (not b!7719111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

