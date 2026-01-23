; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666078 () Bool)

(assert start!666078)

(declare-fun b!6930772 () Bool)

(assert (=> b!6930772 true))

(assert (=> b!6930772 true))

(assert (=> b!6930772 true))

(declare-fun lambda!394388 () Int)

(declare-fun lambda!394387 () Int)

(assert (=> b!6930772 (not (= lambda!394388 lambda!394387))))

(assert (=> b!6930772 true))

(assert (=> b!6930772 true))

(assert (=> b!6930772 true))

(declare-fun b!6930758 () Bool)

(declare-fun e!4170346 () Bool)

(declare-fun e!4170349 () Bool)

(assert (=> b!6930758 (= e!4170346 (not e!4170349))))

(declare-fun res!2826569 () Bool)

(assert (=> b!6930758 (=> res!2826569 e!4170349)))

(declare-fun lt!2473060 () Bool)

(assert (=> b!6930758 (= res!2826569 lt!2473060)))

(declare-datatypes ((C!34160 0))(
  ( (C!34161 (val!26782 Int)) )
))
(declare-datatypes ((Regex!16945 0))(
  ( (ElementMatch!16945 (c!1286319 C!34160)) (Concat!25790 (regOne!34402 Regex!16945) (regTwo!34402 Regex!16945)) (EmptyExpr!16945) (Star!16945 (reg!17274 Regex!16945)) (EmptyLang!16945) (Union!16945 (regOne!34403 Regex!16945) (regTwo!34403 Regex!16945)) )
))
(declare-fun lt!2473061 () Regex!16945)

(declare-datatypes ((List!66698 0))(
  ( (Nil!66574) (Cons!66574 (h!73022 C!34160) (t!380441 List!66698)) )
))
(declare-fun s!14361 () List!66698)

(declare-fun matchR!9084 (Regex!16945 List!66698) Bool)

(declare-fun matchRSpec!4002 (Regex!16945 List!66698) Bool)

(assert (=> b!6930758 (= (matchR!9084 lt!2473061 s!14361) (matchRSpec!4002 lt!2473061 s!14361))))

(declare-datatypes ((Unit!160614 0))(
  ( (Unit!160615) )
))
(declare-fun lt!2473064 () Unit!160614)

(declare-fun mainMatchTheorem!4002 (Regex!16945 List!66698) Unit!160614)

(assert (=> b!6930758 (= lt!2473064 (mainMatchTheorem!4002 lt!2473061 s!14361))))

(declare-fun lt!2473068 () Regex!16945)

(assert (=> b!6930758 (= lt!2473060 (matchRSpec!4002 lt!2473068 s!14361))))

(assert (=> b!6930758 (= lt!2473060 (matchR!9084 lt!2473068 s!14361))))

(declare-fun lt!2473062 () Unit!160614)

(assert (=> b!6930758 (= lt!2473062 (mainMatchTheorem!4002 lt!2473068 s!14361))))

(declare-fun r1!6342 () Regex!16945)

(declare-fun lt!2473067 () Regex!16945)

(assert (=> b!6930758 (= lt!2473061 (Concat!25790 r1!6342 lt!2473067))))

(declare-fun r2!6280 () Regex!16945)

(declare-fun r3!135 () Regex!16945)

(assert (=> b!6930758 (= lt!2473067 (Concat!25790 r2!6280 r3!135))))

(assert (=> b!6930758 (= lt!2473068 (Concat!25790 (Concat!25790 r1!6342 r2!6280) r3!135))))

(declare-fun b!6930759 () Bool)

(declare-fun e!4170345 () Bool)

(declare-fun tp!1910636 () Bool)

(declare-fun tp!1910641 () Bool)

(assert (=> b!6930759 (= e!4170345 (and tp!1910636 tp!1910641))))

(declare-fun b!6930760 () Bool)

(declare-fun tp_is_empty!43115 () Bool)

(assert (=> b!6930760 (= e!4170345 tp_is_empty!43115)))

(declare-fun b!6930761 () Bool)

(declare-fun e!4170348 () Bool)

(assert (=> b!6930761 (= e!4170348 tp_is_empty!43115)))

(declare-fun b!6930762 () Bool)

(declare-fun e!4170347 () Bool)

(declare-fun tp!1910638 () Bool)

(declare-fun tp!1910640 () Bool)

(assert (=> b!6930762 (= e!4170347 (and tp!1910638 tp!1910640))))

(declare-fun b!6930763 () Bool)

(declare-fun tp!1910628 () Bool)

(assert (=> b!6930763 (= e!4170348 tp!1910628)))

(declare-fun b!6930764 () Bool)

(declare-fun tp!1910639 () Bool)

(declare-fun tp!1910629 () Bool)

(assert (=> b!6930764 (= e!4170345 (and tp!1910639 tp!1910629))))

(declare-fun b!6930765 () Bool)

(declare-fun tp!1910634 () Bool)

(declare-fun tp!1910632 () Bool)

(assert (=> b!6930765 (= e!4170348 (and tp!1910634 tp!1910632))))

(declare-fun b!6930766 () Bool)

(declare-fun tp!1910630 () Bool)

(declare-fun tp!1910637 () Bool)

(assert (=> b!6930766 (= e!4170348 (and tp!1910630 tp!1910637))))

(declare-fun b!6930767 () Bool)

(assert (=> b!6930767 (= e!4170347 tp_is_empty!43115)))

(declare-fun b!6930768 () Bool)

(declare-fun e!4170344 () Bool)

(declare-fun validRegex!8651 (Regex!16945) Bool)

(assert (=> b!6930768 (= e!4170344 (validRegex!8651 lt!2473067))))

(declare-fun b!6930769 () Bool)

(declare-fun tp!1910635 () Bool)

(declare-fun tp!1910633 () Bool)

(assert (=> b!6930769 (= e!4170347 (and tp!1910635 tp!1910633))))

(declare-fun b!6930770 () Bool)

(declare-fun tp!1910631 () Bool)

(assert (=> b!6930770 (= e!4170347 tp!1910631)))

(declare-fun b!6930771 () Bool)

(declare-fun e!4170343 () Bool)

(declare-fun tp!1910643 () Bool)

(assert (=> b!6930771 (= e!4170343 (and tp_is_empty!43115 tp!1910643))))

(declare-fun e!4170350 () Bool)

(assert (=> b!6930772 (= e!4170350 e!4170344)))

(declare-fun res!2826571 () Bool)

(assert (=> b!6930772 (=> res!2826571 e!4170344)))

(declare-fun lt!2473065 () Bool)

(assert (=> b!6930772 (= res!2826571 (not lt!2473065))))

(declare-datatypes ((tuple2!67604 0))(
  ( (tuple2!67605 (_1!37105 List!66698) (_2!37105 List!66698)) )
))
(declare-fun lt!2473066 () tuple2!67604)

(assert (=> b!6930772 (= lt!2473065 (matchRSpec!4002 r1!6342 (_1!37105 lt!2473066)))))

(assert (=> b!6930772 (= lt!2473065 (matchR!9084 r1!6342 (_1!37105 lt!2473066)))))

(declare-fun lt!2473058 () Unit!160614)

(assert (=> b!6930772 (= lt!2473058 (mainMatchTheorem!4002 r1!6342 (_1!37105 lt!2473066)))))

(declare-datatypes ((Option!16714 0))(
  ( (None!16713) (Some!16713 (v!52985 tuple2!67604)) )
))
(declare-fun lt!2473063 () Option!16714)

(declare-fun get!23354 (Option!16714) tuple2!67604)

(assert (=> b!6930772 (= lt!2473066 (get!23354 lt!2473063))))

(declare-fun Exists!3945 (Int) Bool)

(assert (=> b!6930772 (= (Exists!3945 lambda!394387) (Exists!3945 lambda!394388))))

(declare-fun lt!2473059 () Unit!160614)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2406 (Regex!16945 Regex!16945 List!66698) Unit!160614)

(assert (=> b!6930772 (= lt!2473059 (lemmaExistCutMatchRandMatchRSpecEquivalent!2406 r1!6342 lt!2473067 s!14361))))

(assert (=> b!6930772 (Exists!3945 lambda!394387)))

(declare-fun lt!2473069 () Unit!160614)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2886 (Regex!16945 Regex!16945 List!66698) Unit!160614)

(assert (=> b!6930772 (= lt!2473069 (lemmaFindConcatSeparationEquivalentToExists!2886 r1!6342 lt!2473067 s!14361))))

(declare-fun b!6930773 () Bool)

(assert (=> b!6930773 (= e!4170349 e!4170350)))

(declare-fun res!2826572 () Bool)

(assert (=> b!6930773 (=> res!2826572 e!4170350)))

(declare-fun isDefined!13415 (Option!16714) Bool)

(assert (=> b!6930773 (= res!2826572 (not (isDefined!13415 lt!2473063)))))

(declare-fun findConcatSeparation!3128 (Regex!16945 Regex!16945 List!66698 List!66698 List!66698) Option!16714)

(assert (=> b!6930773 (= lt!2473063 (findConcatSeparation!3128 r1!6342 lt!2473067 Nil!66574 s!14361 s!14361))))

(declare-fun b!6930774 () Bool)

(declare-fun res!2826566 () Bool)

(assert (=> b!6930774 (=> res!2826566 e!4170344)))

(assert (=> b!6930774 (= res!2826566 (not (matchR!9084 lt!2473067 (_2!37105 lt!2473066))))))

(declare-fun res!2826568 () Bool)

(assert (=> start!666078 (=> (not res!2826568) (not e!4170346))))

(assert (=> start!666078 (= res!2826568 (validRegex!8651 r1!6342))))

(assert (=> start!666078 e!4170346))

(assert (=> start!666078 e!4170347))

(assert (=> start!666078 e!4170348))

(assert (=> start!666078 e!4170345))

(assert (=> start!666078 e!4170343))

(declare-fun b!6930775 () Bool)

(declare-fun res!2826567 () Bool)

(assert (=> b!6930775 (=> (not res!2826567) (not e!4170346))))

(assert (=> b!6930775 (= res!2826567 (validRegex!8651 r2!6280))))

(declare-fun b!6930776 () Bool)

(declare-fun tp!1910642 () Bool)

(assert (=> b!6930776 (= e!4170345 tp!1910642)))

(declare-fun b!6930777 () Bool)

(declare-fun res!2826570 () Bool)

(assert (=> b!6930777 (=> (not res!2826570) (not e!4170346))))

(assert (=> b!6930777 (= res!2826570 (validRegex!8651 r3!135))))

(assert (= (and start!666078 res!2826568) b!6930775))

(assert (= (and b!6930775 res!2826567) b!6930777))

(assert (= (and b!6930777 res!2826570) b!6930758))

(assert (= (and b!6930758 (not res!2826569)) b!6930773))

(assert (= (and b!6930773 (not res!2826572)) b!6930772))

(assert (= (and b!6930772 (not res!2826571)) b!6930774))

(assert (= (and b!6930774 (not res!2826566)) b!6930768))

(get-info :version)

(assert (= (and start!666078 ((_ is ElementMatch!16945) r1!6342)) b!6930767))

(assert (= (and start!666078 ((_ is Concat!25790) r1!6342)) b!6930762))

(assert (= (and start!666078 ((_ is Star!16945) r1!6342)) b!6930770))

(assert (= (and start!666078 ((_ is Union!16945) r1!6342)) b!6930769))

(assert (= (and start!666078 ((_ is ElementMatch!16945) r2!6280)) b!6930761))

(assert (= (and start!666078 ((_ is Concat!25790) r2!6280)) b!6930766))

(assert (= (and start!666078 ((_ is Star!16945) r2!6280)) b!6930763))

(assert (= (and start!666078 ((_ is Union!16945) r2!6280)) b!6930765))

(assert (= (and start!666078 ((_ is ElementMatch!16945) r3!135)) b!6930760))

(assert (= (and start!666078 ((_ is Concat!25790) r3!135)) b!6930764))

(assert (= (and start!666078 ((_ is Star!16945) r3!135)) b!6930776))

(assert (= (and start!666078 ((_ is Union!16945) r3!135)) b!6930759))

(assert (= (and start!666078 ((_ is Cons!66574) s!14361)) b!6930771))

(declare-fun m!7638042 () Bool)

(assert (=> b!6930772 m!7638042))

(declare-fun m!7638044 () Bool)

(assert (=> b!6930772 m!7638044))

(declare-fun m!7638046 () Bool)

(assert (=> b!6930772 m!7638046))

(declare-fun m!7638048 () Bool)

(assert (=> b!6930772 m!7638048))

(declare-fun m!7638050 () Bool)

(assert (=> b!6930772 m!7638050))

(declare-fun m!7638052 () Bool)

(assert (=> b!6930772 m!7638052))

(assert (=> b!6930772 m!7638052))

(declare-fun m!7638054 () Bool)

(assert (=> b!6930772 m!7638054))

(declare-fun m!7638056 () Bool)

(assert (=> b!6930772 m!7638056))

(declare-fun m!7638058 () Bool)

(assert (=> b!6930775 m!7638058))

(declare-fun m!7638060 () Bool)

(assert (=> start!666078 m!7638060))

(declare-fun m!7638062 () Bool)

(assert (=> b!6930773 m!7638062))

(declare-fun m!7638064 () Bool)

(assert (=> b!6930773 m!7638064))

(declare-fun m!7638066 () Bool)

(assert (=> b!6930777 m!7638066))

(declare-fun m!7638068 () Bool)

(assert (=> b!6930768 m!7638068))

(declare-fun m!7638070 () Bool)

(assert (=> b!6930774 m!7638070))

(declare-fun m!7638072 () Bool)

(assert (=> b!6930758 m!7638072))

(declare-fun m!7638074 () Bool)

(assert (=> b!6930758 m!7638074))

(declare-fun m!7638076 () Bool)

(assert (=> b!6930758 m!7638076))

(declare-fun m!7638078 () Bool)

(assert (=> b!6930758 m!7638078))

(declare-fun m!7638080 () Bool)

(assert (=> b!6930758 m!7638080))

(declare-fun m!7638082 () Bool)

(assert (=> b!6930758 m!7638082))

(check-sat (not b!6930763) (not b!6930771) (not b!6930765) (not b!6930772) (not b!6930773) (not b!6930762) (not b!6930759) (not b!6930776) (not b!6930766) (not b!6930774) (not b!6930768) (not b!6930769) (not b!6930777) (not start!666078) (not b!6930775) tp_is_empty!43115 (not b!6930764) (not b!6930758) (not b!6930770))
(check-sat)
(get-model)

(declare-fun d!2166008 () Bool)

(assert (=> d!2166008 (= (matchR!9084 r1!6342 (_1!37105 lt!2473066)) (matchRSpec!4002 r1!6342 (_1!37105 lt!2473066)))))

(declare-fun lt!2473072 () Unit!160614)

(declare-fun choose!51614 (Regex!16945 List!66698) Unit!160614)

(assert (=> d!2166008 (= lt!2473072 (choose!51614 r1!6342 (_1!37105 lt!2473066)))))

(assert (=> d!2166008 (validRegex!8651 r1!6342)))

(assert (=> d!2166008 (= (mainMatchTheorem!4002 r1!6342 (_1!37105 lt!2473066)) lt!2473072)))

(declare-fun bs!1850382 () Bool)

(assert (= bs!1850382 d!2166008))

(assert (=> bs!1850382 m!7638048))

(assert (=> bs!1850382 m!7638044))

(declare-fun m!7638084 () Bool)

(assert (=> bs!1850382 m!7638084))

(assert (=> bs!1850382 m!7638060))

(assert (=> b!6930772 d!2166008))

(declare-fun bs!1850383 () Bool)

(declare-fun b!6930856 () Bool)

(assert (= bs!1850383 (and b!6930856 b!6930772)))

(declare-fun lambda!394393 () Int)

(assert (=> bs!1850383 (not (= lambda!394393 lambda!394387))))

(assert (=> bs!1850383 (not (= lambda!394393 lambda!394388))))

(assert (=> b!6930856 true))

(assert (=> b!6930856 true))

(declare-fun bs!1850384 () Bool)

(declare-fun b!6930859 () Bool)

(assert (= bs!1850384 (and b!6930859 b!6930772)))

(declare-fun lambda!394394 () Int)

(assert (=> bs!1850384 (not (= lambda!394394 lambda!394387))))

(assert (=> bs!1850384 (= (and (= (_1!37105 lt!2473066) s!14361) (= (regOne!34402 r1!6342) r1!6342) (= (regTwo!34402 r1!6342) lt!2473067)) (= lambda!394394 lambda!394388))))

(declare-fun bs!1850385 () Bool)

(assert (= bs!1850385 (and b!6930859 b!6930856)))

(assert (=> bs!1850385 (not (= lambda!394394 lambda!394393))))

(assert (=> b!6930859 true))

(assert (=> b!6930859 true))

(declare-fun bm!629804 () Bool)

(declare-fun call!629809 () Bool)

(declare-fun isEmpty!38833 (List!66698) Bool)

(assert (=> bm!629804 (= call!629809 (isEmpty!38833 (_1!37105 lt!2473066)))))

(declare-fun d!2166010 () Bool)

(declare-fun c!1286339 () Bool)

(assert (=> d!2166010 (= c!1286339 ((_ is EmptyExpr!16945) r1!6342))))

(declare-fun e!4170390 () Bool)

(assert (=> d!2166010 (= (matchRSpec!4002 r1!6342 (_1!37105 lt!2473066)) e!4170390)))

(declare-fun e!4170392 () Bool)

(declare-fun call!629810 () Bool)

(assert (=> b!6930856 (= e!4170392 call!629810)))

(declare-fun b!6930857 () Bool)

(declare-fun c!1286337 () Bool)

(assert (=> b!6930857 (= c!1286337 ((_ is ElementMatch!16945) r1!6342))))

(declare-fun e!4170396 () Bool)

(declare-fun e!4170395 () Bool)

(assert (=> b!6930857 (= e!4170396 e!4170395)))

(declare-fun b!6930858 () Bool)

(declare-fun e!4170393 () Bool)

(assert (=> b!6930858 (= e!4170393 (matchRSpec!4002 (regTwo!34403 r1!6342) (_1!37105 lt!2473066)))))

(declare-fun bm!629805 () Bool)

(declare-fun c!1286340 () Bool)

(assert (=> bm!629805 (= call!629810 (Exists!3945 (ite c!1286340 lambda!394393 lambda!394394)))))

(declare-fun e!4170391 () Bool)

(assert (=> b!6930859 (= e!4170391 call!629810)))

(declare-fun b!6930860 () Bool)

(assert (=> b!6930860 (= e!4170390 e!4170396)))

(declare-fun res!2826614 () Bool)

(assert (=> b!6930860 (= res!2826614 (not ((_ is EmptyLang!16945) r1!6342)))))

(assert (=> b!6930860 (=> (not res!2826614) (not e!4170396))))

(declare-fun b!6930861 () Bool)

(assert (=> b!6930861 (= e!4170395 (= (_1!37105 lt!2473066) (Cons!66574 (c!1286319 r1!6342) Nil!66574)))))

(declare-fun b!6930862 () Bool)

(declare-fun e!4170394 () Bool)

(assert (=> b!6930862 (= e!4170394 e!4170393)))

(declare-fun res!2826615 () Bool)

(assert (=> b!6930862 (= res!2826615 (matchRSpec!4002 (regOne!34403 r1!6342) (_1!37105 lt!2473066)))))

(assert (=> b!6930862 (=> res!2826615 e!4170393)))

(declare-fun b!6930863 () Bool)

(declare-fun c!1286338 () Bool)

(assert (=> b!6930863 (= c!1286338 ((_ is Union!16945) r1!6342))))

(assert (=> b!6930863 (= e!4170395 e!4170394)))

(declare-fun b!6930864 () Bool)

(declare-fun res!2826613 () Bool)

(assert (=> b!6930864 (=> res!2826613 e!4170392)))

(assert (=> b!6930864 (= res!2826613 call!629809)))

(assert (=> b!6930864 (= e!4170391 e!4170392)))

(declare-fun b!6930865 () Bool)

(assert (=> b!6930865 (= e!4170390 call!629809)))

(declare-fun b!6930866 () Bool)

(assert (=> b!6930866 (= e!4170394 e!4170391)))

(assert (=> b!6930866 (= c!1286340 ((_ is Star!16945) r1!6342))))

(assert (= (and d!2166010 c!1286339) b!6930865))

(assert (= (and d!2166010 (not c!1286339)) b!6930860))

(assert (= (and b!6930860 res!2826614) b!6930857))

(assert (= (and b!6930857 c!1286337) b!6930861))

(assert (= (and b!6930857 (not c!1286337)) b!6930863))

(assert (= (and b!6930863 c!1286338) b!6930862))

(assert (= (and b!6930863 (not c!1286338)) b!6930866))

(assert (= (and b!6930862 (not res!2826615)) b!6930858))

(assert (= (and b!6930866 c!1286340) b!6930864))

(assert (= (and b!6930866 (not c!1286340)) b!6930859))

(assert (= (and b!6930864 (not res!2826613)) b!6930856))

(assert (= (or b!6930856 b!6930859) bm!629805))

(assert (= (or b!6930865 b!6930864) bm!629804))

(declare-fun m!7638102 () Bool)

(assert (=> bm!629804 m!7638102))

(declare-fun m!7638104 () Bool)

(assert (=> b!6930858 m!7638104))

(declare-fun m!7638106 () Bool)

(assert (=> bm!629805 m!7638106))

(declare-fun m!7638108 () Bool)

(assert (=> b!6930862 m!7638108))

(assert (=> b!6930772 d!2166010))

(declare-fun bs!1850389 () Bool)

(declare-fun d!2166016 () Bool)

(assert (= bs!1850389 (and d!2166016 b!6930772)))

(declare-fun lambda!394403 () Int)

(assert (=> bs!1850389 (= lambda!394403 lambda!394387)))

(assert (=> bs!1850389 (not (= lambda!394403 lambda!394388))))

(declare-fun bs!1850390 () Bool)

(assert (= bs!1850390 (and d!2166016 b!6930856)))

(assert (=> bs!1850390 (not (= lambda!394403 lambda!394393))))

(declare-fun bs!1850391 () Bool)

(assert (= bs!1850391 (and d!2166016 b!6930859)))

(assert (=> bs!1850391 (not (= lambda!394403 lambda!394394))))

(assert (=> d!2166016 true))

(assert (=> d!2166016 true))

(assert (=> d!2166016 true))

(assert (=> d!2166016 (= (isDefined!13415 (findConcatSeparation!3128 r1!6342 lt!2473067 Nil!66574 s!14361 s!14361)) (Exists!3945 lambda!394403))))

(declare-fun lt!2473078 () Unit!160614)

(declare-fun choose!51616 (Regex!16945 Regex!16945 List!66698) Unit!160614)

(assert (=> d!2166016 (= lt!2473078 (choose!51616 r1!6342 lt!2473067 s!14361))))

(assert (=> d!2166016 (validRegex!8651 r1!6342)))

(assert (=> d!2166016 (= (lemmaFindConcatSeparationEquivalentToExists!2886 r1!6342 lt!2473067 s!14361) lt!2473078)))

(declare-fun bs!1850392 () Bool)

(assert (= bs!1850392 d!2166016))

(assert (=> bs!1850392 m!7638064))

(declare-fun m!7638116 () Bool)

(assert (=> bs!1850392 m!7638116))

(declare-fun m!7638118 () Bool)

(assert (=> bs!1850392 m!7638118))

(assert (=> bs!1850392 m!7638060))

(assert (=> bs!1850392 m!7638064))

(declare-fun m!7638120 () Bool)

(assert (=> bs!1850392 m!7638120))

(assert (=> b!6930772 d!2166016))

(declare-fun d!2166020 () Bool)

(assert (=> d!2166020 (= (get!23354 lt!2473063) (v!52985 lt!2473063))))

(assert (=> b!6930772 d!2166020))

(declare-fun d!2166022 () Bool)

(declare-fun choose!51617 (Int) Bool)

(assert (=> d!2166022 (= (Exists!3945 lambda!394388) (choose!51617 lambda!394388))))

(declare-fun bs!1850393 () Bool)

(assert (= bs!1850393 d!2166022))

(declare-fun m!7638122 () Bool)

(assert (=> bs!1850393 m!7638122))

(assert (=> b!6930772 d!2166022))

(declare-fun bs!1850404 () Bool)

(declare-fun d!2166024 () Bool)

(assert (= bs!1850404 (and d!2166024 b!6930856)))

(declare-fun lambda!394410 () Int)

(assert (=> bs!1850404 (not (= lambda!394410 lambda!394393))))

(declare-fun bs!1850405 () Bool)

(assert (= bs!1850405 (and d!2166024 b!6930772)))

(assert (=> bs!1850405 (= lambda!394410 lambda!394387)))

(assert (=> bs!1850405 (not (= lambda!394410 lambda!394388))))

(declare-fun bs!1850406 () Bool)

(assert (= bs!1850406 (and d!2166024 d!2166016)))

(assert (=> bs!1850406 (= lambda!394410 lambda!394403)))

(declare-fun bs!1850407 () Bool)

(assert (= bs!1850407 (and d!2166024 b!6930859)))

(assert (=> bs!1850407 (not (= lambda!394410 lambda!394394))))

(assert (=> d!2166024 true))

(assert (=> d!2166024 true))

(assert (=> d!2166024 true))

(declare-fun bs!1850408 () Bool)

(assert (= bs!1850408 d!2166024))

(declare-fun lambda!394411 () Int)

(assert (=> bs!1850408 (not (= lambda!394411 lambda!394410))))

(assert (=> bs!1850404 (not (= lambda!394411 lambda!394393))))

(assert (=> bs!1850405 (not (= lambda!394411 lambda!394387))))

(assert (=> bs!1850405 (= lambda!394411 lambda!394388)))

(assert (=> bs!1850406 (not (= lambda!394411 lambda!394403))))

(assert (=> bs!1850407 (= (and (= s!14361 (_1!37105 lt!2473066)) (= r1!6342 (regOne!34402 r1!6342)) (= lt!2473067 (regTwo!34402 r1!6342))) (= lambda!394411 lambda!394394))))

(assert (=> d!2166024 true))

(assert (=> d!2166024 true))

(assert (=> d!2166024 true))

(assert (=> d!2166024 (= (Exists!3945 lambda!394410) (Exists!3945 lambda!394411))))

(declare-fun lt!2473086 () Unit!160614)

(declare-fun choose!51618 (Regex!16945 Regex!16945 List!66698) Unit!160614)

(assert (=> d!2166024 (= lt!2473086 (choose!51618 r1!6342 lt!2473067 s!14361))))

(assert (=> d!2166024 (validRegex!8651 r1!6342)))

(assert (=> d!2166024 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2406 r1!6342 lt!2473067 s!14361) lt!2473086)))

(declare-fun m!7638144 () Bool)

(assert (=> bs!1850408 m!7638144))

(declare-fun m!7638146 () Bool)

(assert (=> bs!1850408 m!7638146))

(declare-fun m!7638148 () Bool)

(assert (=> bs!1850408 m!7638148))

(assert (=> bs!1850408 m!7638060))

(assert (=> b!6930772 d!2166024))

(declare-fun d!2166036 () Bool)

(assert (=> d!2166036 (= (Exists!3945 lambda!394387) (choose!51617 lambda!394387))))

(declare-fun bs!1850409 () Bool)

(assert (= bs!1850409 d!2166036))

(declare-fun m!7638150 () Bool)

(assert (=> bs!1850409 m!7638150))

(assert (=> b!6930772 d!2166036))

(declare-fun b!6931038 () Bool)

(declare-fun e!4170501 () Bool)

(declare-fun e!4170503 () Bool)

(assert (=> b!6931038 (= e!4170501 e!4170503)))

(declare-fun res!2826715 () Bool)

(assert (=> b!6931038 (=> res!2826715 e!4170503)))

(declare-fun call!629834 () Bool)

(assert (=> b!6931038 (= res!2826715 call!629834)))

(declare-fun b!6931039 () Bool)

(declare-fun e!4170502 () Bool)

(assert (=> b!6931039 (= e!4170502 e!4170501)))

(declare-fun res!2826716 () Bool)

(assert (=> b!6931039 (=> (not res!2826716) (not e!4170501))))

(declare-fun lt!2473099 () Bool)

(assert (=> b!6931039 (= res!2826716 (not lt!2473099))))

(declare-fun d!2166038 () Bool)

(declare-fun e!4170505 () Bool)

(assert (=> d!2166038 e!4170505))

(declare-fun c!1286382 () Bool)

(assert (=> d!2166038 (= c!1286382 ((_ is EmptyExpr!16945) r1!6342))))

(declare-fun e!4170499 () Bool)

(assert (=> d!2166038 (= lt!2473099 e!4170499)))

(declare-fun c!1286381 () Bool)

(assert (=> d!2166038 (= c!1286381 (isEmpty!38833 (_1!37105 lt!2473066)))))

(assert (=> d!2166038 (validRegex!8651 r1!6342)))

(assert (=> d!2166038 (= (matchR!9084 r1!6342 (_1!37105 lt!2473066)) lt!2473099)))

(declare-fun b!6931040 () Bool)

(declare-fun res!2826709 () Bool)

(assert (=> b!6931040 (=> res!2826709 e!4170502)))

(assert (=> b!6931040 (= res!2826709 (not ((_ is ElementMatch!16945) r1!6342)))))

(declare-fun e!4170500 () Bool)

(assert (=> b!6931040 (= e!4170500 e!4170502)))

(declare-fun b!6931041 () Bool)

(declare-fun res!2826713 () Bool)

(declare-fun e!4170504 () Bool)

(assert (=> b!6931041 (=> (not res!2826713) (not e!4170504))))

(assert (=> b!6931041 (= res!2826713 (not call!629834))))

(declare-fun b!6931042 () Bool)

(declare-fun head!13894 (List!66698) C!34160)

(assert (=> b!6931042 (= e!4170504 (= (head!13894 (_1!37105 lt!2473066)) (c!1286319 r1!6342)))))

(declare-fun b!6931043 () Bool)

(assert (=> b!6931043 (= e!4170505 (= lt!2473099 call!629834))))

(declare-fun b!6931044 () Bool)

(declare-fun res!2826711 () Bool)

(assert (=> b!6931044 (=> res!2826711 e!4170502)))

(assert (=> b!6931044 (= res!2826711 e!4170504)))

(declare-fun res!2826712 () Bool)

(assert (=> b!6931044 (=> (not res!2826712) (not e!4170504))))

(assert (=> b!6931044 (= res!2826712 lt!2473099)))

(declare-fun b!6931045 () Bool)

(declare-fun res!2826710 () Bool)

(assert (=> b!6931045 (=> res!2826710 e!4170503)))

(declare-fun tail!12946 (List!66698) List!66698)

(assert (=> b!6931045 (= res!2826710 (not (isEmpty!38833 (tail!12946 (_1!37105 lt!2473066)))))))

(declare-fun b!6931046 () Bool)

(assert (=> b!6931046 (= e!4170500 (not lt!2473099))))

(declare-fun bm!629829 () Bool)

(assert (=> bm!629829 (= call!629834 (isEmpty!38833 (_1!37105 lt!2473066)))))

(declare-fun b!6931047 () Bool)

(declare-fun res!2826714 () Bool)

(assert (=> b!6931047 (=> (not res!2826714) (not e!4170504))))

(assert (=> b!6931047 (= res!2826714 (isEmpty!38833 (tail!12946 (_1!37105 lt!2473066))))))

(declare-fun b!6931048 () Bool)

(assert (=> b!6931048 (= e!4170503 (not (= (head!13894 (_1!37105 lt!2473066)) (c!1286319 r1!6342))))))

(declare-fun b!6931049 () Bool)

(declare-fun derivativeStep!5441 (Regex!16945 C!34160) Regex!16945)

(assert (=> b!6931049 (= e!4170499 (matchR!9084 (derivativeStep!5441 r1!6342 (head!13894 (_1!37105 lt!2473066))) (tail!12946 (_1!37105 lt!2473066))))))

(declare-fun b!6931050 () Bool)

(assert (=> b!6931050 (= e!4170505 e!4170500)))

(declare-fun c!1286380 () Bool)

(assert (=> b!6931050 (= c!1286380 ((_ is EmptyLang!16945) r1!6342))))

(declare-fun b!6931051 () Bool)

(declare-fun nullable!6766 (Regex!16945) Bool)

(assert (=> b!6931051 (= e!4170499 (nullable!6766 r1!6342))))

(assert (= (and d!2166038 c!1286381) b!6931051))

(assert (= (and d!2166038 (not c!1286381)) b!6931049))

(assert (= (and d!2166038 c!1286382) b!6931043))

(assert (= (and d!2166038 (not c!1286382)) b!6931050))

(assert (= (and b!6931050 c!1286380) b!6931046))

(assert (= (and b!6931050 (not c!1286380)) b!6931040))

(assert (= (and b!6931040 (not res!2826709)) b!6931044))

(assert (= (and b!6931044 res!2826712) b!6931041))

(assert (= (and b!6931041 res!2826713) b!6931047))

(assert (= (and b!6931047 res!2826714) b!6931042))

(assert (= (and b!6931044 (not res!2826711)) b!6931039))

(assert (= (and b!6931039 res!2826716) b!6931038))

(assert (= (and b!6931038 (not res!2826715)) b!6931045))

(assert (= (and b!6931045 (not res!2826710)) b!6931048))

(assert (= (or b!6931043 b!6931038 b!6931041) bm!629829))

(declare-fun m!7638190 () Bool)

(assert (=> b!6931042 m!7638190))

(declare-fun m!7638192 () Bool)

(assert (=> b!6931051 m!7638192))

(assert (=> b!6931049 m!7638190))

(assert (=> b!6931049 m!7638190))

(declare-fun m!7638194 () Bool)

(assert (=> b!6931049 m!7638194))

(declare-fun m!7638196 () Bool)

(assert (=> b!6931049 m!7638196))

(assert (=> b!6931049 m!7638194))

(assert (=> b!6931049 m!7638196))

(declare-fun m!7638198 () Bool)

(assert (=> b!6931049 m!7638198))

(assert (=> b!6931048 m!7638190))

(assert (=> b!6931047 m!7638196))

(assert (=> b!6931047 m!7638196))

(declare-fun m!7638200 () Bool)

(assert (=> b!6931047 m!7638200))

(assert (=> d!2166038 m!7638102))

(assert (=> d!2166038 m!7638060))

(assert (=> b!6931045 m!7638196))

(assert (=> b!6931045 m!7638196))

(assert (=> b!6931045 m!7638200))

(assert (=> bm!629829 m!7638102))

(assert (=> b!6930772 d!2166038))

(declare-fun bm!629838 () Bool)

(declare-fun call!629844 () Bool)

(declare-fun call!629845 () Bool)

(assert (=> bm!629838 (= call!629844 call!629845)))

(declare-fun b!6931085 () Bool)

(declare-fun e!4170535 () Bool)

(declare-fun e!4170529 () Bool)

(assert (=> b!6931085 (= e!4170535 e!4170529)))

(declare-fun c!1286391 () Bool)

(assert (=> b!6931085 (= c!1286391 ((_ is Star!16945) r3!135))))

(declare-fun b!6931086 () Bool)

(declare-fun e!4170533 () Bool)

(assert (=> b!6931086 (= e!4170533 call!629845)))

(declare-fun b!6931087 () Bool)

(declare-fun res!2826734 () Bool)

(declare-fun e!4170534 () Bool)

(assert (=> b!6931087 (=> (not res!2826734) (not e!4170534))))

(declare-fun call!629843 () Bool)

(assert (=> b!6931087 (= res!2826734 call!629843)))

(declare-fun e!4170531 () Bool)

(assert (=> b!6931087 (= e!4170531 e!4170534)))

(declare-fun bm!629839 () Bool)

(declare-fun c!1286392 () Bool)

(assert (=> bm!629839 (= call!629843 (validRegex!8651 (ite c!1286392 (regOne!34403 r3!135) (regTwo!34402 r3!135))))))

(declare-fun b!6931088 () Bool)

(assert (=> b!6931088 (= e!4170529 e!4170531)))

(assert (=> b!6931088 (= c!1286392 ((_ is Union!16945) r3!135))))

(declare-fun d!2166050 () Bool)

(declare-fun res!2826737 () Bool)

(assert (=> d!2166050 (=> res!2826737 e!4170535)))

(assert (=> d!2166050 (= res!2826737 ((_ is ElementMatch!16945) r3!135))))

(assert (=> d!2166050 (= (validRegex!8651 r3!135) e!4170535)))

(declare-fun bm!629840 () Bool)

(assert (=> bm!629840 (= call!629845 (validRegex!8651 (ite c!1286391 (reg!17274 r3!135) (ite c!1286392 (regTwo!34403 r3!135) (regOne!34402 r3!135)))))))

(declare-fun b!6931089 () Bool)

(declare-fun e!4170530 () Bool)

(declare-fun e!4170532 () Bool)

(assert (=> b!6931089 (= e!4170530 e!4170532)))

(declare-fun res!2826735 () Bool)

(assert (=> b!6931089 (=> (not res!2826735) (not e!4170532))))

(assert (=> b!6931089 (= res!2826735 call!629844)))

(declare-fun b!6931090 () Bool)

(assert (=> b!6931090 (= e!4170529 e!4170533)))

(declare-fun res!2826736 () Bool)

(assert (=> b!6931090 (= res!2826736 (not (nullable!6766 (reg!17274 r3!135))))))

(assert (=> b!6931090 (=> (not res!2826736) (not e!4170533))))

(declare-fun b!6931091 () Bool)

(assert (=> b!6931091 (= e!4170532 call!629843)))

(declare-fun b!6931092 () Bool)

(assert (=> b!6931092 (= e!4170534 call!629844)))

(declare-fun b!6931093 () Bool)

(declare-fun res!2826738 () Bool)

(assert (=> b!6931093 (=> res!2826738 e!4170530)))

(assert (=> b!6931093 (= res!2826738 (not ((_ is Concat!25790) r3!135)))))

(assert (=> b!6931093 (= e!4170531 e!4170530)))

(assert (= (and d!2166050 (not res!2826737)) b!6931085))

(assert (= (and b!6931085 c!1286391) b!6931090))

(assert (= (and b!6931085 (not c!1286391)) b!6931088))

(assert (= (and b!6931090 res!2826736) b!6931086))

(assert (= (and b!6931088 c!1286392) b!6931087))

(assert (= (and b!6931088 (not c!1286392)) b!6931093))

(assert (= (and b!6931087 res!2826734) b!6931092))

(assert (= (and b!6931093 (not res!2826738)) b!6931089))

(assert (= (and b!6931089 res!2826735) b!6931091))

(assert (= (or b!6931087 b!6931091) bm!629839))

(assert (= (or b!6931092 b!6931089) bm!629838))

(assert (= (or b!6931086 bm!629838) bm!629840))

(declare-fun m!7638208 () Bool)

(assert (=> bm!629839 m!7638208))

(declare-fun m!7638210 () Bool)

(assert (=> bm!629840 m!7638210))

(declare-fun m!7638212 () Bool)

(assert (=> b!6931090 m!7638212))

(assert (=> b!6930777 d!2166050))

(declare-fun bm!629841 () Bool)

(declare-fun call!629847 () Bool)

(declare-fun call!629848 () Bool)

(assert (=> bm!629841 (= call!629847 call!629848)))

(declare-fun b!6931094 () Bool)

(declare-fun e!4170542 () Bool)

(declare-fun e!4170536 () Bool)

(assert (=> b!6931094 (= e!4170542 e!4170536)))

(declare-fun c!1286393 () Bool)

(assert (=> b!6931094 (= c!1286393 ((_ is Star!16945) lt!2473067))))

(declare-fun b!6931095 () Bool)

(declare-fun e!4170540 () Bool)

(assert (=> b!6931095 (= e!4170540 call!629848)))

(declare-fun b!6931096 () Bool)

(declare-fun res!2826739 () Bool)

(declare-fun e!4170541 () Bool)

(assert (=> b!6931096 (=> (not res!2826739) (not e!4170541))))

(declare-fun call!629846 () Bool)

(assert (=> b!6931096 (= res!2826739 call!629846)))

(declare-fun e!4170538 () Bool)

(assert (=> b!6931096 (= e!4170538 e!4170541)))

(declare-fun bm!629842 () Bool)

(declare-fun c!1286394 () Bool)

(assert (=> bm!629842 (= call!629846 (validRegex!8651 (ite c!1286394 (regOne!34403 lt!2473067) (regTwo!34402 lt!2473067))))))

(declare-fun b!6931097 () Bool)

(assert (=> b!6931097 (= e!4170536 e!4170538)))

(assert (=> b!6931097 (= c!1286394 ((_ is Union!16945) lt!2473067))))

(declare-fun d!2166056 () Bool)

(declare-fun res!2826742 () Bool)

(assert (=> d!2166056 (=> res!2826742 e!4170542)))

(assert (=> d!2166056 (= res!2826742 ((_ is ElementMatch!16945) lt!2473067))))

(assert (=> d!2166056 (= (validRegex!8651 lt!2473067) e!4170542)))

(declare-fun bm!629843 () Bool)

(assert (=> bm!629843 (= call!629848 (validRegex!8651 (ite c!1286393 (reg!17274 lt!2473067) (ite c!1286394 (regTwo!34403 lt!2473067) (regOne!34402 lt!2473067)))))))

(declare-fun b!6931098 () Bool)

(declare-fun e!4170537 () Bool)

(declare-fun e!4170539 () Bool)

(assert (=> b!6931098 (= e!4170537 e!4170539)))

(declare-fun res!2826740 () Bool)

(assert (=> b!6931098 (=> (not res!2826740) (not e!4170539))))

(assert (=> b!6931098 (= res!2826740 call!629847)))

(declare-fun b!6931099 () Bool)

(assert (=> b!6931099 (= e!4170536 e!4170540)))

(declare-fun res!2826741 () Bool)

(assert (=> b!6931099 (= res!2826741 (not (nullable!6766 (reg!17274 lt!2473067))))))

(assert (=> b!6931099 (=> (not res!2826741) (not e!4170540))))

(declare-fun b!6931100 () Bool)

(assert (=> b!6931100 (= e!4170539 call!629846)))

(declare-fun b!6931101 () Bool)

(assert (=> b!6931101 (= e!4170541 call!629847)))

(declare-fun b!6931102 () Bool)

(declare-fun res!2826743 () Bool)

(assert (=> b!6931102 (=> res!2826743 e!4170537)))

(assert (=> b!6931102 (= res!2826743 (not ((_ is Concat!25790) lt!2473067)))))

(assert (=> b!6931102 (= e!4170538 e!4170537)))

(assert (= (and d!2166056 (not res!2826742)) b!6931094))

(assert (= (and b!6931094 c!1286393) b!6931099))

(assert (= (and b!6931094 (not c!1286393)) b!6931097))

(assert (= (and b!6931099 res!2826741) b!6931095))

(assert (= (and b!6931097 c!1286394) b!6931096))

(assert (= (and b!6931097 (not c!1286394)) b!6931102))

(assert (= (and b!6931096 res!2826739) b!6931101))

(assert (= (and b!6931102 (not res!2826743)) b!6931098))

(assert (= (and b!6931098 res!2826740) b!6931100))

(assert (= (or b!6931096 b!6931100) bm!629842))

(assert (= (or b!6931101 b!6931098) bm!629841))

(assert (= (or b!6931095 bm!629841) bm!629843))

(declare-fun m!7638224 () Bool)

(assert (=> bm!629842 m!7638224))

(declare-fun m!7638226 () Bool)

(assert (=> bm!629843 m!7638226))

(declare-fun m!7638228 () Bool)

(assert (=> b!6931099 m!7638228))

(assert (=> b!6930768 d!2166056))

(declare-fun d!2166062 () Bool)

(declare-fun isEmpty!38835 (Option!16714) Bool)

(assert (=> d!2166062 (= (isDefined!13415 lt!2473063) (not (isEmpty!38835 lt!2473063)))))

(declare-fun bs!1850432 () Bool)

(assert (= bs!1850432 d!2166062))

(declare-fun m!7638236 () Bool)

(assert (=> bs!1850432 m!7638236))

(assert (=> b!6930773 d!2166062))

(declare-fun b!6931238 () Bool)

(declare-fun e!4170603 () Option!16714)

(assert (=> b!6931238 (= e!4170603 (Some!16713 (tuple2!67605 Nil!66574 s!14361)))))

(declare-fun b!6931239 () Bool)

(declare-fun lt!2473115 () Unit!160614)

(declare-fun lt!2473114 () Unit!160614)

(assert (=> b!6931239 (= lt!2473115 lt!2473114)))

(declare-fun ++!14984 (List!66698 List!66698) List!66698)

(assert (=> b!6931239 (= (++!14984 (++!14984 Nil!66574 (Cons!66574 (h!73022 s!14361) Nil!66574)) (t!380441 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2845 (List!66698 C!34160 List!66698 List!66698) Unit!160614)

(assert (=> b!6931239 (= lt!2473114 (lemmaMoveElementToOtherListKeepsConcatEq!2845 Nil!66574 (h!73022 s!14361) (t!380441 s!14361) s!14361))))

(declare-fun e!4170605 () Option!16714)

(assert (=> b!6931239 (= e!4170605 (findConcatSeparation!3128 r1!6342 lt!2473067 (++!14984 Nil!66574 (Cons!66574 (h!73022 s!14361) Nil!66574)) (t!380441 s!14361) s!14361))))

(declare-fun b!6931240 () Bool)

(assert (=> b!6931240 (= e!4170605 None!16713)))

(declare-fun b!6931241 () Bool)

(declare-fun e!4170602 () Bool)

(declare-fun lt!2473116 () Option!16714)

(assert (=> b!6931241 (= e!4170602 (not (isDefined!13415 lt!2473116)))))

(declare-fun b!6931242 () Bool)

(declare-fun res!2826790 () Bool)

(declare-fun e!4170606 () Bool)

(assert (=> b!6931242 (=> (not res!2826790) (not e!4170606))))

(assert (=> b!6931242 (= res!2826790 (matchR!9084 r1!6342 (_1!37105 (get!23354 lt!2473116))))))

(declare-fun b!6931244 () Bool)

(assert (=> b!6931244 (= e!4170603 e!4170605)))

(declare-fun c!1286410 () Bool)

(assert (=> b!6931244 (= c!1286410 ((_ is Nil!66574) s!14361))))

(declare-fun b!6931245 () Bool)

(assert (=> b!6931245 (= e!4170606 (= (++!14984 (_1!37105 (get!23354 lt!2473116)) (_2!37105 (get!23354 lt!2473116))) s!14361))))

(declare-fun b!6931246 () Bool)

(declare-fun e!4170604 () Bool)

(assert (=> b!6931246 (= e!4170604 (matchR!9084 lt!2473067 s!14361))))

(declare-fun d!2166064 () Bool)

(assert (=> d!2166064 e!4170602))

(declare-fun res!2826792 () Bool)

(assert (=> d!2166064 (=> res!2826792 e!4170602)))

(assert (=> d!2166064 (= res!2826792 e!4170606)))

(declare-fun res!2826791 () Bool)

(assert (=> d!2166064 (=> (not res!2826791) (not e!4170606))))

(assert (=> d!2166064 (= res!2826791 (isDefined!13415 lt!2473116))))

(assert (=> d!2166064 (= lt!2473116 e!4170603)))

(declare-fun c!1286409 () Bool)

(assert (=> d!2166064 (= c!1286409 e!4170604)))

(declare-fun res!2826789 () Bool)

(assert (=> d!2166064 (=> (not res!2826789) (not e!4170604))))

(assert (=> d!2166064 (= res!2826789 (matchR!9084 r1!6342 Nil!66574))))

(assert (=> d!2166064 (validRegex!8651 r1!6342)))

(assert (=> d!2166064 (= (findConcatSeparation!3128 r1!6342 lt!2473067 Nil!66574 s!14361 s!14361) lt!2473116)))

(declare-fun b!6931243 () Bool)

(declare-fun res!2826788 () Bool)

(assert (=> b!6931243 (=> (not res!2826788) (not e!4170606))))

(assert (=> b!6931243 (= res!2826788 (matchR!9084 lt!2473067 (_2!37105 (get!23354 lt!2473116))))))

(assert (= (and d!2166064 res!2826789) b!6931246))

(assert (= (and d!2166064 c!1286409) b!6931238))

(assert (= (and d!2166064 (not c!1286409)) b!6931244))

(assert (= (and b!6931244 c!1286410) b!6931240))

(assert (= (and b!6931244 (not c!1286410)) b!6931239))

(assert (= (and d!2166064 res!2826791) b!6931242))

(assert (= (and b!6931242 res!2826790) b!6931243))

(assert (= (and b!6931243 res!2826788) b!6931245))

(assert (= (and d!2166064 (not res!2826792)) b!6931241))

(declare-fun m!7638276 () Bool)

(assert (=> b!6931242 m!7638276))

(declare-fun m!7638278 () Bool)

(assert (=> b!6931242 m!7638278))

(declare-fun m!7638280 () Bool)

(assert (=> d!2166064 m!7638280))

(declare-fun m!7638282 () Bool)

(assert (=> d!2166064 m!7638282))

(assert (=> d!2166064 m!7638060))

(assert (=> b!6931241 m!7638280))

(declare-fun m!7638284 () Bool)

(assert (=> b!6931239 m!7638284))

(assert (=> b!6931239 m!7638284))

(declare-fun m!7638286 () Bool)

(assert (=> b!6931239 m!7638286))

(declare-fun m!7638288 () Bool)

(assert (=> b!6931239 m!7638288))

(assert (=> b!6931239 m!7638284))

(declare-fun m!7638290 () Bool)

(assert (=> b!6931239 m!7638290))

(assert (=> b!6931245 m!7638276))

(declare-fun m!7638292 () Bool)

(assert (=> b!6931245 m!7638292))

(assert (=> b!6931243 m!7638276))

(declare-fun m!7638294 () Bool)

(assert (=> b!6931243 m!7638294))

(declare-fun m!7638296 () Bool)

(assert (=> b!6931246 m!7638296))

(assert (=> b!6930773 d!2166064))

(declare-fun bm!629852 () Bool)

(declare-fun call!629858 () Bool)

(declare-fun call!629859 () Bool)

(assert (=> bm!629852 (= call!629858 call!629859)))

(declare-fun b!6931259 () Bool)

(declare-fun e!4170616 () Bool)

(declare-fun e!4170610 () Bool)

(assert (=> b!6931259 (= e!4170616 e!4170610)))

(declare-fun c!1286411 () Bool)

(assert (=> b!6931259 (= c!1286411 ((_ is Star!16945) r2!6280))))

(declare-fun b!6931260 () Bool)

(declare-fun e!4170614 () Bool)

(assert (=> b!6931260 (= e!4170614 call!629859)))

(declare-fun b!6931261 () Bool)

(declare-fun res!2826793 () Bool)

(declare-fun e!4170615 () Bool)

(assert (=> b!6931261 (=> (not res!2826793) (not e!4170615))))

(declare-fun call!629857 () Bool)

(assert (=> b!6931261 (= res!2826793 call!629857)))

(declare-fun e!4170612 () Bool)

(assert (=> b!6931261 (= e!4170612 e!4170615)))

(declare-fun bm!629853 () Bool)

(declare-fun c!1286412 () Bool)

(assert (=> bm!629853 (= call!629857 (validRegex!8651 (ite c!1286412 (regOne!34403 r2!6280) (regTwo!34402 r2!6280))))))

(declare-fun b!6931262 () Bool)

(assert (=> b!6931262 (= e!4170610 e!4170612)))

(assert (=> b!6931262 (= c!1286412 ((_ is Union!16945) r2!6280))))

(declare-fun d!2166074 () Bool)

(declare-fun res!2826796 () Bool)

(assert (=> d!2166074 (=> res!2826796 e!4170616)))

(assert (=> d!2166074 (= res!2826796 ((_ is ElementMatch!16945) r2!6280))))

(assert (=> d!2166074 (= (validRegex!8651 r2!6280) e!4170616)))

(declare-fun bm!629854 () Bool)

(assert (=> bm!629854 (= call!629859 (validRegex!8651 (ite c!1286411 (reg!17274 r2!6280) (ite c!1286412 (regTwo!34403 r2!6280) (regOne!34402 r2!6280)))))))

(declare-fun b!6931263 () Bool)

(declare-fun e!4170611 () Bool)

(declare-fun e!4170613 () Bool)

(assert (=> b!6931263 (= e!4170611 e!4170613)))

(declare-fun res!2826794 () Bool)

(assert (=> b!6931263 (=> (not res!2826794) (not e!4170613))))

(assert (=> b!6931263 (= res!2826794 call!629858)))

(declare-fun b!6931264 () Bool)

(assert (=> b!6931264 (= e!4170610 e!4170614)))

(declare-fun res!2826795 () Bool)

(assert (=> b!6931264 (= res!2826795 (not (nullable!6766 (reg!17274 r2!6280))))))

(assert (=> b!6931264 (=> (not res!2826795) (not e!4170614))))

(declare-fun b!6931265 () Bool)

(assert (=> b!6931265 (= e!4170613 call!629857)))

(declare-fun b!6931266 () Bool)

(assert (=> b!6931266 (= e!4170615 call!629858)))

(declare-fun b!6931267 () Bool)

(declare-fun res!2826797 () Bool)

(assert (=> b!6931267 (=> res!2826797 e!4170611)))

(assert (=> b!6931267 (= res!2826797 (not ((_ is Concat!25790) r2!6280)))))

(assert (=> b!6931267 (= e!4170612 e!4170611)))

(assert (= (and d!2166074 (not res!2826796)) b!6931259))

(assert (= (and b!6931259 c!1286411) b!6931264))

(assert (= (and b!6931259 (not c!1286411)) b!6931262))

(assert (= (and b!6931264 res!2826795) b!6931260))

(assert (= (and b!6931262 c!1286412) b!6931261))

(assert (= (and b!6931262 (not c!1286412)) b!6931267))

(assert (= (and b!6931261 res!2826793) b!6931266))

(assert (= (and b!6931267 (not res!2826797)) b!6931263))

(assert (= (and b!6931263 res!2826794) b!6931265))

(assert (= (or b!6931261 b!6931265) bm!629853))

(assert (= (or b!6931266 b!6931263) bm!629852))

(assert (= (or b!6931260 bm!629852) bm!629854))

(declare-fun m!7638298 () Bool)

(assert (=> bm!629853 m!7638298))

(declare-fun m!7638300 () Bool)

(assert (=> bm!629854 m!7638300))

(declare-fun m!7638302 () Bool)

(assert (=> b!6931264 m!7638302))

(assert (=> b!6930775 d!2166074))

(declare-fun b!6931268 () Bool)

(declare-fun e!4170619 () Bool)

(declare-fun e!4170621 () Bool)

(assert (=> b!6931268 (= e!4170619 e!4170621)))

(declare-fun res!2826804 () Bool)

(assert (=> b!6931268 (=> res!2826804 e!4170621)))

(declare-fun call!629860 () Bool)

(assert (=> b!6931268 (= res!2826804 call!629860)))

(declare-fun b!6931269 () Bool)

(declare-fun e!4170620 () Bool)

(assert (=> b!6931269 (= e!4170620 e!4170619)))

(declare-fun res!2826805 () Bool)

(assert (=> b!6931269 (=> (not res!2826805) (not e!4170619))))

(declare-fun lt!2473117 () Bool)

(assert (=> b!6931269 (= res!2826805 (not lt!2473117))))

(declare-fun d!2166076 () Bool)

(declare-fun e!4170623 () Bool)

(assert (=> d!2166076 e!4170623))

(declare-fun c!1286415 () Bool)

(assert (=> d!2166076 (= c!1286415 ((_ is EmptyExpr!16945) lt!2473067))))

(declare-fun e!4170617 () Bool)

(assert (=> d!2166076 (= lt!2473117 e!4170617)))

(declare-fun c!1286414 () Bool)

(assert (=> d!2166076 (= c!1286414 (isEmpty!38833 (_2!37105 lt!2473066)))))

(assert (=> d!2166076 (validRegex!8651 lt!2473067)))

(assert (=> d!2166076 (= (matchR!9084 lt!2473067 (_2!37105 lt!2473066)) lt!2473117)))

(declare-fun b!6931270 () Bool)

(declare-fun res!2826798 () Bool)

(assert (=> b!6931270 (=> res!2826798 e!4170620)))

(assert (=> b!6931270 (= res!2826798 (not ((_ is ElementMatch!16945) lt!2473067)))))

(declare-fun e!4170618 () Bool)

(assert (=> b!6931270 (= e!4170618 e!4170620)))

(declare-fun b!6931271 () Bool)

(declare-fun res!2826802 () Bool)

(declare-fun e!4170622 () Bool)

(assert (=> b!6931271 (=> (not res!2826802) (not e!4170622))))

(assert (=> b!6931271 (= res!2826802 (not call!629860))))

(declare-fun b!6931272 () Bool)

(assert (=> b!6931272 (= e!4170622 (= (head!13894 (_2!37105 lt!2473066)) (c!1286319 lt!2473067)))))

(declare-fun b!6931273 () Bool)

(assert (=> b!6931273 (= e!4170623 (= lt!2473117 call!629860))))

(declare-fun b!6931274 () Bool)

(declare-fun res!2826800 () Bool)

(assert (=> b!6931274 (=> res!2826800 e!4170620)))

(assert (=> b!6931274 (= res!2826800 e!4170622)))

(declare-fun res!2826801 () Bool)

(assert (=> b!6931274 (=> (not res!2826801) (not e!4170622))))

(assert (=> b!6931274 (= res!2826801 lt!2473117)))

(declare-fun b!6931275 () Bool)

(declare-fun res!2826799 () Bool)

(assert (=> b!6931275 (=> res!2826799 e!4170621)))

(assert (=> b!6931275 (= res!2826799 (not (isEmpty!38833 (tail!12946 (_2!37105 lt!2473066)))))))

(declare-fun b!6931276 () Bool)

(assert (=> b!6931276 (= e!4170618 (not lt!2473117))))

(declare-fun bm!629855 () Bool)

(assert (=> bm!629855 (= call!629860 (isEmpty!38833 (_2!37105 lt!2473066)))))

(declare-fun b!6931277 () Bool)

(declare-fun res!2826803 () Bool)

(assert (=> b!6931277 (=> (not res!2826803) (not e!4170622))))

(assert (=> b!6931277 (= res!2826803 (isEmpty!38833 (tail!12946 (_2!37105 lt!2473066))))))

(declare-fun b!6931278 () Bool)

(assert (=> b!6931278 (= e!4170621 (not (= (head!13894 (_2!37105 lt!2473066)) (c!1286319 lt!2473067))))))

(declare-fun b!6931279 () Bool)

(assert (=> b!6931279 (= e!4170617 (matchR!9084 (derivativeStep!5441 lt!2473067 (head!13894 (_2!37105 lt!2473066))) (tail!12946 (_2!37105 lt!2473066))))))

(declare-fun b!6931280 () Bool)

(assert (=> b!6931280 (= e!4170623 e!4170618)))

(declare-fun c!1286413 () Bool)

(assert (=> b!6931280 (= c!1286413 ((_ is EmptyLang!16945) lt!2473067))))

(declare-fun b!6931281 () Bool)

(assert (=> b!6931281 (= e!4170617 (nullable!6766 lt!2473067))))

(assert (= (and d!2166076 c!1286414) b!6931281))

(assert (= (and d!2166076 (not c!1286414)) b!6931279))

(assert (= (and d!2166076 c!1286415) b!6931273))

(assert (= (and d!2166076 (not c!1286415)) b!6931280))

(assert (= (and b!6931280 c!1286413) b!6931276))

(assert (= (and b!6931280 (not c!1286413)) b!6931270))

(assert (= (and b!6931270 (not res!2826798)) b!6931274))

(assert (= (and b!6931274 res!2826801) b!6931271))

(assert (= (and b!6931271 res!2826802) b!6931277))

(assert (= (and b!6931277 res!2826803) b!6931272))

(assert (= (and b!6931274 (not res!2826800)) b!6931269))

(assert (= (and b!6931269 res!2826805) b!6931268))

(assert (= (and b!6931268 (not res!2826804)) b!6931275))

(assert (= (and b!6931275 (not res!2826799)) b!6931278))

(assert (= (or b!6931273 b!6931268 b!6931271) bm!629855))

(declare-fun m!7638304 () Bool)

(assert (=> b!6931272 m!7638304))

(declare-fun m!7638306 () Bool)

(assert (=> b!6931281 m!7638306))

(assert (=> b!6931279 m!7638304))

(assert (=> b!6931279 m!7638304))

(declare-fun m!7638308 () Bool)

(assert (=> b!6931279 m!7638308))

(declare-fun m!7638310 () Bool)

(assert (=> b!6931279 m!7638310))

(assert (=> b!6931279 m!7638308))

(assert (=> b!6931279 m!7638310))

(declare-fun m!7638312 () Bool)

(assert (=> b!6931279 m!7638312))

(assert (=> b!6931278 m!7638304))

(assert (=> b!6931277 m!7638310))

(assert (=> b!6931277 m!7638310))

(declare-fun m!7638314 () Bool)

(assert (=> b!6931277 m!7638314))

(declare-fun m!7638316 () Bool)

(assert (=> d!2166076 m!7638316))

(assert (=> d!2166076 m!7638068))

(assert (=> b!6931275 m!7638310))

(assert (=> b!6931275 m!7638310))

(assert (=> b!6931275 m!7638314))

(assert (=> bm!629855 m!7638316))

(assert (=> b!6930774 d!2166076))

(declare-fun d!2166078 () Bool)

(assert (=> d!2166078 (= (matchR!9084 lt!2473068 s!14361) (matchRSpec!4002 lt!2473068 s!14361))))

(declare-fun lt!2473118 () Unit!160614)

(assert (=> d!2166078 (= lt!2473118 (choose!51614 lt!2473068 s!14361))))

(assert (=> d!2166078 (validRegex!8651 lt!2473068)))

(assert (=> d!2166078 (= (mainMatchTheorem!4002 lt!2473068 s!14361) lt!2473118)))

(declare-fun bs!1850442 () Bool)

(assert (= bs!1850442 d!2166078))

(assert (=> bs!1850442 m!7638072))

(assert (=> bs!1850442 m!7638080))

(declare-fun m!7638318 () Bool)

(assert (=> bs!1850442 m!7638318))

(declare-fun m!7638320 () Bool)

(assert (=> bs!1850442 m!7638320))

(assert (=> b!6930758 d!2166078))

(declare-fun b!6931282 () Bool)

(declare-fun e!4170626 () Bool)

(declare-fun e!4170628 () Bool)

(assert (=> b!6931282 (= e!4170626 e!4170628)))

(declare-fun res!2826812 () Bool)

(assert (=> b!6931282 (=> res!2826812 e!4170628)))

(declare-fun call!629861 () Bool)

(assert (=> b!6931282 (= res!2826812 call!629861)))

(declare-fun b!6931283 () Bool)

(declare-fun e!4170627 () Bool)

(assert (=> b!6931283 (= e!4170627 e!4170626)))

(declare-fun res!2826813 () Bool)

(assert (=> b!6931283 (=> (not res!2826813) (not e!4170626))))

(declare-fun lt!2473119 () Bool)

(assert (=> b!6931283 (= res!2826813 (not lt!2473119))))

(declare-fun d!2166080 () Bool)

(declare-fun e!4170630 () Bool)

(assert (=> d!2166080 e!4170630))

(declare-fun c!1286418 () Bool)

(assert (=> d!2166080 (= c!1286418 ((_ is EmptyExpr!16945) lt!2473068))))

(declare-fun e!4170624 () Bool)

(assert (=> d!2166080 (= lt!2473119 e!4170624)))

(declare-fun c!1286417 () Bool)

(assert (=> d!2166080 (= c!1286417 (isEmpty!38833 s!14361))))

(assert (=> d!2166080 (validRegex!8651 lt!2473068)))

(assert (=> d!2166080 (= (matchR!9084 lt!2473068 s!14361) lt!2473119)))

(declare-fun b!6931284 () Bool)

(declare-fun res!2826806 () Bool)

(assert (=> b!6931284 (=> res!2826806 e!4170627)))

(assert (=> b!6931284 (= res!2826806 (not ((_ is ElementMatch!16945) lt!2473068)))))

(declare-fun e!4170625 () Bool)

(assert (=> b!6931284 (= e!4170625 e!4170627)))

(declare-fun b!6931285 () Bool)

(declare-fun res!2826810 () Bool)

(declare-fun e!4170629 () Bool)

(assert (=> b!6931285 (=> (not res!2826810) (not e!4170629))))

(assert (=> b!6931285 (= res!2826810 (not call!629861))))

(declare-fun b!6931286 () Bool)

(assert (=> b!6931286 (= e!4170629 (= (head!13894 s!14361) (c!1286319 lt!2473068)))))

(declare-fun b!6931287 () Bool)

(assert (=> b!6931287 (= e!4170630 (= lt!2473119 call!629861))))

(declare-fun b!6931288 () Bool)

(declare-fun res!2826808 () Bool)

(assert (=> b!6931288 (=> res!2826808 e!4170627)))

(assert (=> b!6931288 (= res!2826808 e!4170629)))

(declare-fun res!2826809 () Bool)

(assert (=> b!6931288 (=> (not res!2826809) (not e!4170629))))

(assert (=> b!6931288 (= res!2826809 lt!2473119)))

(declare-fun b!6931289 () Bool)

(declare-fun res!2826807 () Bool)

(assert (=> b!6931289 (=> res!2826807 e!4170628)))

(assert (=> b!6931289 (= res!2826807 (not (isEmpty!38833 (tail!12946 s!14361))))))

(declare-fun b!6931290 () Bool)

(assert (=> b!6931290 (= e!4170625 (not lt!2473119))))

(declare-fun bm!629856 () Bool)

(assert (=> bm!629856 (= call!629861 (isEmpty!38833 s!14361))))

(declare-fun b!6931291 () Bool)

(declare-fun res!2826811 () Bool)

(assert (=> b!6931291 (=> (not res!2826811) (not e!4170629))))

(assert (=> b!6931291 (= res!2826811 (isEmpty!38833 (tail!12946 s!14361)))))

(declare-fun b!6931292 () Bool)

(assert (=> b!6931292 (= e!4170628 (not (= (head!13894 s!14361) (c!1286319 lt!2473068))))))

(declare-fun b!6931293 () Bool)

(assert (=> b!6931293 (= e!4170624 (matchR!9084 (derivativeStep!5441 lt!2473068 (head!13894 s!14361)) (tail!12946 s!14361)))))

(declare-fun b!6931294 () Bool)

(assert (=> b!6931294 (= e!4170630 e!4170625)))

(declare-fun c!1286416 () Bool)

(assert (=> b!6931294 (= c!1286416 ((_ is EmptyLang!16945) lt!2473068))))

(declare-fun b!6931295 () Bool)

(assert (=> b!6931295 (= e!4170624 (nullable!6766 lt!2473068))))

(assert (= (and d!2166080 c!1286417) b!6931295))

(assert (= (and d!2166080 (not c!1286417)) b!6931293))

(assert (= (and d!2166080 c!1286418) b!6931287))

(assert (= (and d!2166080 (not c!1286418)) b!6931294))

(assert (= (and b!6931294 c!1286416) b!6931290))

(assert (= (and b!6931294 (not c!1286416)) b!6931284))

(assert (= (and b!6931284 (not res!2826806)) b!6931288))

(assert (= (and b!6931288 res!2826809) b!6931285))

(assert (= (and b!6931285 res!2826810) b!6931291))

(assert (= (and b!6931291 res!2826811) b!6931286))

(assert (= (and b!6931288 (not res!2826808)) b!6931283))

(assert (= (and b!6931283 res!2826813) b!6931282))

(assert (= (and b!6931282 (not res!2826812)) b!6931289))

(assert (= (and b!6931289 (not res!2826807)) b!6931292))

(assert (= (or b!6931287 b!6931282 b!6931285) bm!629856))

(declare-fun m!7638322 () Bool)

(assert (=> b!6931286 m!7638322))

(declare-fun m!7638324 () Bool)

(assert (=> b!6931295 m!7638324))

(assert (=> b!6931293 m!7638322))

(assert (=> b!6931293 m!7638322))

(declare-fun m!7638326 () Bool)

(assert (=> b!6931293 m!7638326))

(declare-fun m!7638328 () Bool)

(assert (=> b!6931293 m!7638328))

(assert (=> b!6931293 m!7638326))

(assert (=> b!6931293 m!7638328))

(declare-fun m!7638330 () Bool)

(assert (=> b!6931293 m!7638330))

(assert (=> b!6931292 m!7638322))

(assert (=> b!6931291 m!7638328))

(assert (=> b!6931291 m!7638328))

(declare-fun m!7638332 () Bool)

(assert (=> b!6931291 m!7638332))

(declare-fun m!7638334 () Bool)

(assert (=> d!2166080 m!7638334))

(assert (=> d!2166080 m!7638320))

(assert (=> b!6931289 m!7638328))

(assert (=> b!6931289 m!7638328))

(assert (=> b!6931289 m!7638332))

(assert (=> bm!629856 m!7638334))

(assert (=> b!6930758 d!2166080))

(declare-fun d!2166082 () Bool)

(assert (=> d!2166082 (= (matchR!9084 lt!2473061 s!14361) (matchRSpec!4002 lt!2473061 s!14361))))

(declare-fun lt!2473120 () Unit!160614)

(assert (=> d!2166082 (= lt!2473120 (choose!51614 lt!2473061 s!14361))))

(assert (=> d!2166082 (validRegex!8651 lt!2473061)))

(assert (=> d!2166082 (= (mainMatchTheorem!4002 lt!2473061 s!14361) lt!2473120)))

(declare-fun bs!1850443 () Bool)

(assert (= bs!1850443 d!2166082))

(assert (=> bs!1850443 m!7638082))

(assert (=> bs!1850443 m!7638076))

(declare-fun m!7638336 () Bool)

(assert (=> bs!1850443 m!7638336))

(declare-fun m!7638338 () Bool)

(assert (=> bs!1850443 m!7638338))

(assert (=> b!6930758 d!2166082))

(declare-fun bs!1850444 () Bool)

(declare-fun b!6931296 () Bool)

(assert (= bs!1850444 (and b!6931296 d!2166024)))

(declare-fun lambda!394423 () Int)

(assert (=> bs!1850444 (not (= lambda!394423 lambda!394410))))

(assert (=> bs!1850444 (not (= lambda!394423 lambda!394411))))

(declare-fun bs!1850445 () Bool)

(assert (= bs!1850445 (and b!6931296 b!6930856)))

(assert (=> bs!1850445 (= (and (= s!14361 (_1!37105 lt!2473066)) (= (reg!17274 lt!2473061) (reg!17274 r1!6342)) (= lt!2473061 r1!6342)) (= lambda!394423 lambda!394393))))

(declare-fun bs!1850446 () Bool)

(assert (= bs!1850446 (and b!6931296 b!6930772)))

(assert (=> bs!1850446 (not (= lambda!394423 lambda!394387))))

(assert (=> bs!1850446 (not (= lambda!394423 lambda!394388))))

(declare-fun bs!1850447 () Bool)

(assert (= bs!1850447 (and b!6931296 d!2166016)))

(assert (=> bs!1850447 (not (= lambda!394423 lambda!394403))))

(declare-fun bs!1850448 () Bool)

(assert (= bs!1850448 (and b!6931296 b!6930859)))

(assert (=> bs!1850448 (not (= lambda!394423 lambda!394394))))

(assert (=> b!6931296 true))

(assert (=> b!6931296 true))

(declare-fun bs!1850449 () Bool)

(declare-fun b!6931299 () Bool)

(assert (= bs!1850449 (and b!6931299 b!6931296)))

(declare-fun lambda!394424 () Int)

(assert (=> bs!1850449 (not (= lambda!394424 lambda!394423))))

(declare-fun bs!1850450 () Bool)

(assert (= bs!1850450 (and b!6931299 d!2166024)))

(assert (=> bs!1850450 (not (= lambda!394424 lambda!394410))))

(assert (=> bs!1850450 (= (and (= (regOne!34402 lt!2473061) r1!6342) (= (regTwo!34402 lt!2473061) lt!2473067)) (= lambda!394424 lambda!394411))))

(declare-fun bs!1850451 () Bool)

(assert (= bs!1850451 (and b!6931299 b!6930856)))

(assert (=> bs!1850451 (not (= lambda!394424 lambda!394393))))

(declare-fun bs!1850452 () Bool)

(assert (= bs!1850452 (and b!6931299 b!6930772)))

(assert (=> bs!1850452 (not (= lambda!394424 lambda!394387))))

(assert (=> bs!1850452 (= (and (= (regOne!34402 lt!2473061) r1!6342) (= (regTwo!34402 lt!2473061) lt!2473067)) (= lambda!394424 lambda!394388))))

(declare-fun bs!1850453 () Bool)

(assert (= bs!1850453 (and b!6931299 d!2166016)))

(assert (=> bs!1850453 (not (= lambda!394424 lambda!394403))))

(declare-fun bs!1850454 () Bool)

(assert (= bs!1850454 (and b!6931299 b!6930859)))

(assert (=> bs!1850454 (= (and (= s!14361 (_1!37105 lt!2473066)) (= (regOne!34402 lt!2473061) (regOne!34402 r1!6342)) (= (regTwo!34402 lt!2473061) (regTwo!34402 r1!6342))) (= lambda!394424 lambda!394394))))

(assert (=> b!6931299 true))

(assert (=> b!6931299 true))

(declare-fun bm!629857 () Bool)

(declare-fun call!629862 () Bool)

(assert (=> bm!629857 (= call!629862 (isEmpty!38833 s!14361))))

(declare-fun d!2166084 () Bool)

(declare-fun c!1286421 () Bool)

(assert (=> d!2166084 (= c!1286421 ((_ is EmptyExpr!16945) lt!2473061))))

(declare-fun e!4170631 () Bool)

(assert (=> d!2166084 (= (matchRSpec!4002 lt!2473061 s!14361) e!4170631)))

(declare-fun e!4170633 () Bool)

(declare-fun call!629863 () Bool)

(assert (=> b!6931296 (= e!4170633 call!629863)))

(declare-fun b!6931297 () Bool)

(declare-fun c!1286419 () Bool)

(assert (=> b!6931297 (= c!1286419 ((_ is ElementMatch!16945) lt!2473061))))

(declare-fun e!4170637 () Bool)

(declare-fun e!4170636 () Bool)

(assert (=> b!6931297 (= e!4170637 e!4170636)))

(declare-fun b!6931298 () Bool)

(declare-fun e!4170634 () Bool)

(assert (=> b!6931298 (= e!4170634 (matchRSpec!4002 (regTwo!34403 lt!2473061) s!14361))))

(declare-fun c!1286422 () Bool)

(declare-fun bm!629858 () Bool)

(assert (=> bm!629858 (= call!629863 (Exists!3945 (ite c!1286422 lambda!394423 lambda!394424)))))

(declare-fun e!4170632 () Bool)

(assert (=> b!6931299 (= e!4170632 call!629863)))

(declare-fun b!6931300 () Bool)

(assert (=> b!6931300 (= e!4170631 e!4170637)))

(declare-fun res!2826815 () Bool)

(assert (=> b!6931300 (= res!2826815 (not ((_ is EmptyLang!16945) lt!2473061)))))

(assert (=> b!6931300 (=> (not res!2826815) (not e!4170637))))

(declare-fun b!6931301 () Bool)

(assert (=> b!6931301 (= e!4170636 (= s!14361 (Cons!66574 (c!1286319 lt!2473061) Nil!66574)))))

(declare-fun b!6931302 () Bool)

(declare-fun e!4170635 () Bool)

(assert (=> b!6931302 (= e!4170635 e!4170634)))

(declare-fun res!2826816 () Bool)

(assert (=> b!6931302 (= res!2826816 (matchRSpec!4002 (regOne!34403 lt!2473061) s!14361))))

(assert (=> b!6931302 (=> res!2826816 e!4170634)))

(declare-fun b!6931303 () Bool)

(declare-fun c!1286420 () Bool)

(assert (=> b!6931303 (= c!1286420 ((_ is Union!16945) lt!2473061))))

(assert (=> b!6931303 (= e!4170636 e!4170635)))

(declare-fun b!6931304 () Bool)

(declare-fun res!2826814 () Bool)

(assert (=> b!6931304 (=> res!2826814 e!4170633)))

(assert (=> b!6931304 (= res!2826814 call!629862)))

(assert (=> b!6931304 (= e!4170632 e!4170633)))

(declare-fun b!6931305 () Bool)

(assert (=> b!6931305 (= e!4170631 call!629862)))

(declare-fun b!6931306 () Bool)

(assert (=> b!6931306 (= e!4170635 e!4170632)))

(assert (=> b!6931306 (= c!1286422 ((_ is Star!16945) lt!2473061))))

(assert (= (and d!2166084 c!1286421) b!6931305))

(assert (= (and d!2166084 (not c!1286421)) b!6931300))

(assert (= (and b!6931300 res!2826815) b!6931297))

(assert (= (and b!6931297 c!1286419) b!6931301))

(assert (= (and b!6931297 (not c!1286419)) b!6931303))

(assert (= (and b!6931303 c!1286420) b!6931302))

(assert (= (and b!6931303 (not c!1286420)) b!6931306))

(assert (= (and b!6931302 (not res!2826816)) b!6931298))

(assert (= (and b!6931306 c!1286422) b!6931304))

(assert (= (and b!6931306 (not c!1286422)) b!6931299))

(assert (= (and b!6931304 (not res!2826814)) b!6931296))

(assert (= (or b!6931296 b!6931299) bm!629858))

(assert (= (or b!6931305 b!6931304) bm!629857))

(assert (=> bm!629857 m!7638334))

(declare-fun m!7638340 () Bool)

(assert (=> b!6931298 m!7638340))

(declare-fun m!7638342 () Bool)

(assert (=> bm!629858 m!7638342))

(declare-fun m!7638344 () Bool)

(assert (=> b!6931302 m!7638344))

(assert (=> b!6930758 d!2166084))

(declare-fun bs!1850455 () Bool)

(declare-fun b!6931307 () Bool)

(assert (= bs!1850455 (and b!6931307 b!6931296)))

(declare-fun lambda!394425 () Int)

(assert (=> bs!1850455 (= (and (= (reg!17274 lt!2473068) (reg!17274 lt!2473061)) (= lt!2473068 lt!2473061)) (= lambda!394425 lambda!394423))))

(declare-fun bs!1850456 () Bool)

(assert (= bs!1850456 (and b!6931307 d!2166024)))

(assert (=> bs!1850456 (not (= lambda!394425 lambda!394410))))

(assert (=> bs!1850456 (not (= lambda!394425 lambda!394411))))

(declare-fun bs!1850457 () Bool)

(assert (= bs!1850457 (and b!6931307 b!6930856)))

(assert (=> bs!1850457 (= (and (= s!14361 (_1!37105 lt!2473066)) (= (reg!17274 lt!2473068) (reg!17274 r1!6342)) (= lt!2473068 r1!6342)) (= lambda!394425 lambda!394393))))

(declare-fun bs!1850458 () Bool)

(assert (= bs!1850458 (and b!6931307 b!6930772)))

(assert (=> bs!1850458 (not (= lambda!394425 lambda!394387))))

(assert (=> bs!1850458 (not (= lambda!394425 lambda!394388))))

(declare-fun bs!1850459 () Bool)

(assert (= bs!1850459 (and b!6931307 b!6931299)))

(assert (=> bs!1850459 (not (= lambda!394425 lambda!394424))))

(declare-fun bs!1850460 () Bool)

(assert (= bs!1850460 (and b!6931307 d!2166016)))

(assert (=> bs!1850460 (not (= lambda!394425 lambda!394403))))

(declare-fun bs!1850461 () Bool)

(assert (= bs!1850461 (and b!6931307 b!6930859)))

(assert (=> bs!1850461 (not (= lambda!394425 lambda!394394))))

(assert (=> b!6931307 true))

(assert (=> b!6931307 true))

(declare-fun bs!1850462 () Bool)

(declare-fun b!6931310 () Bool)

(assert (= bs!1850462 (and b!6931310 b!6931296)))

(declare-fun lambda!394426 () Int)

(assert (=> bs!1850462 (not (= lambda!394426 lambda!394423))))

(declare-fun bs!1850463 () Bool)

(assert (= bs!1850463 (and b!6931310 d!2166024)))

(assert (=> bs!1850463 (not (= lambda!394426 lambda!394410))))

(declare-fun bs!1850464 () Bool)

(assert (= bs!1850464 (and b!6931310 b!6930856)))

(assert (=> bs!1850464 (not (= lambda!394426 lambda!394393))))

(declare-fun bs!1850465 () Bool)

(assert (= bs!1850465 (and b!6931310 b!6930772)))

(assert (=> bs!1850465 (not (= lambda!394426 lambda!394387))))

(assert (=> bs!1850465 (= (and (= (regOne!34402 lt!2473068) r1!6342) (= (regTwo!34402 lt!2473068) lt!2473067)) (= lambda!394426 lambda!394388))))

(declare-fun bs!1850466 () Bool)

(assert (= bs!1850466 (and b!6931310 b!6931299)))

(assert (=> bs!1850466 (= (and (= (regOne!34402 lt!2473068) (regOne!34402 lt!2473061)) (= (regTwo!34402 lt!2473068) (regTwo!34402 lt!2473061))) (= lambda!394426 lambda!394424))))

(declare-fun bs!1850467 () Bool)

(assert (= bs!1850467 (and b!6931310 d!2166016)))

(assert (=> bs!1850467 (not (= lambda!394426 lambda!394403))))

(declare-fun bs!1850468 () Bool)

(assert (= bs!1850468 (and b!6931310 b!6930859)))

(assert (=> bs!1850468 (= (and (= s!14361 (_1!37105 lt!2473066)) (= (regOne!34402 lt!2473068) (regOne!34402 r1!6342)) (= (regTwo!34402 lt!2473068) (regTwo!34402 r1!6342))) (= lambda!394426 lambda!394394))))

(declare-fun bs!1850469 () Bool)

(assert (= bs!1850469 (and b!6931310 b!6931307)))

(assert (=> bs!1850469 (not (= lambda!394426 lambda!394425))))

(assert (=> bs!1850463 (= (and (= (regOne!34402 lt!2473068) r1!6342) (= (regTwo!34402 lt!2473068) lt!2473067)) (= lambda!394426 lambda!394411))))

(assert (=> b!6931310 true))

(assert (=> b!6931310 true))

(declare-fun bm!629859 () Bool)

(declare-fun call!629864 () Bool)

(assert (=> bm!629859 (= call!629864 (isEmpty!38833 s!14361))))

(declare-fun d!2166086 () Bool)

(declare-fun c!1286425 () Bool)

(assert (=> d!2166086 (= c!1286425 ((_ is EmptyExpr!16945) lt!2473068))))

(declare-fun e!4170638 () Bool)

(assert (=> d!2166086 (= (matchRSpec!4002 lt!2473068 s!14361) e!4170638)))

(declare-fun e!4170640 () Bool)

(declare-fun call!629865 () Bool)

(assert (=> b!6931307 (= e!4170640 call!629865)))

(declare-fun b!6931308 () Bool)

(declare-fun c!1286423 () Bool)

(assert (=> b!6931308 (= c!1286423 ((_ is ElementMatch!16945) lt!2473068))))

(declare-fun e!4170644 () Bool)

(declare-fun e!4170643 () Bool)

(assert (=> b!6931308 (= e!4170644 e!4170643)))

(declare-fun b!6931309 () Bool)

(declare-fun e!4170641 () Bool)

(assert (=> b!6931309 (= e!4170641 (matchRSpec!4002 (regTwo!34403 lt!2473068) s!14361))))

(declare-fun c!1286426 () Bool)

(declare-fun bm!629860 () Bool)

(assert (=> bm!629860 (= call!629865 (Exists!3945 (ite c!1286426 lambda!394425 lambda!394426)))))

(declare-fun e!4170639 () Bool)

(assert (=> b!6931310 (= e!4170639 call!629865)))

(declare-fun b!6931311 () Bool)

(assert (=> b!6931311 (= e!4170638 e!4170644)))

(declare-fun res!2826818 () Bool)

(assert (=> b!6931311 (= res!2826818 (not ((_ is EmptyLang!16945) lt!2473068)))))

(assert (=> b!6931311 (=> (not res!2826818) (not e!4170644))))

(declare-fun b!6931312 () Bool)

(assert (=> b!6931312 (= e!4170643 (= s!14361 (Cons!66574 (c!1286319 lt!2473068) Nil!66574)))))

(declare-fun b!6931313 () Bool)

(declare-fun e!4170642 () Bool)

(assert (=> b!6931313 (= e!4170642 e!4170641)))

(declare-fun res!2826819 () Bool)

(assert (=> b!6931313 (= res!2826819 (matchRSpec!4002 (regOne!34403 lt!2473068) s!14361))))

(assert (=> b!6931313 (=> res!2826819 e!4170641)))

(declare-fun b!6931314 () Bool)

(declare-fun c!1286424 () Bool)

(assert (=> b!6931314 (= c!1286424 ((_ is Union!16945) lt!2473068))))

(assert (=> b!6931314 (= e!4170643 e!4170642)))

(declare-fun b!6931315 () Bool)

(declare-fun res!2826817 () Bool)

(assert (=> b!6931315 (=> res!2826817 e!4170640)))

(assert (=> b!6931315 (= res!2826817 call!629864)))

(assert (=> b!6931315 (= e!4170639 e!4170640)))

(declare-fun b!6931316 () Bool)

(assert (=> b!6931316 (= e!4170638 call!629864)))

(declare-fun b!6931317 () Bool)

(assert (=> b!6931317 (= e!4170642 e!4170639)))

(assert (=> b!6931317 (= c!1286426 ((_ is Star!16945) lt!2473068))))

(assert (= (and d!2166086 c!1286425) b!6931316))

(assert (= (and d!2166086 (not c!1286425)) b!6931311))

(assert (= (and b!6931311 res!2826818) b!6931308))

(assert (= (and b!6931308 c!1286423) b!6931312))

(assert (= (and b!6931308 (not c!1286423)) b!6931314))

(assert (= (and b!6931314 c!1286424) b!6931313))

(assert (= (and b!6931314 (not c!1286424)) b!6931317))

(assert (= (and b!6931313 (not res!2826819)) b!6931309))

(assert (= (and b!6931317 c!1286426) b!6931315))

(assert (= (and b!6931317 (not c!1286426)) b!6931310))

(assert (= (and b!6931315 (not res!2826817)) b!6931307))

(assert (= (or b!6931307 b!6931310) bm!629860))

(assert (= (or b!6931316 b!6931315) bm!629859))

(assert (=> bm!629859 m!7638334))

(declare-fun m!7638346 () Bool)

(assert (=> b!6931309 m!7638346))

(declare-fun m!7638348 () Bool)

(assert (=> bm!629860 m!7638348))

(declare-fun m!7638350 () Bool)

(assert (=> b!6931313 m!7638350))

(assert (=> b!6930758 d!2166086))

(declare-fun b!6931318 () Bool)

(declare-fun e!4170647 () Bool)

(declare-fun e!4170649 () Bool)

(assert (=> b!6931318 (= e!4170647 e!4170649)))

(declare-fun res!2826826 () Bool)

(assert (=> b!6931318 (=> res!2826826 e!4170649)))

(declare-fun call!629866 () Bool)

(assert (=> b!6931318 (= res!2826826 call!629866)))

(declare-fun b!6931319 () Bool)

(declare-fun e!4170648 () Bool)

(assert (=> b!6931319 (= e!4170648 e!4170647)))

(declare-fun res!2826827 () Bool)

(assert (=> b!6931319 (=> (not res!2826827) (not e!4170647))))

(declare-fun lt!2473121 () Bool)

(assert (=> b!6931319 (= res!2826827 (not lt!2473121))))

(declare-fun d!2166088 () Bool)

(declare-fun e!4170651 () Bool)

(assert (=> d!2166088 e!4170651))

(declare-fun c!1286429 () Bool)

(assert (=> d!2166088 (= c!1286429 ((_ is EmptyExpr!16945) lt!2473061))))

(declare-fun e!4170645 () Bool)

(assert (=> d!2166088 (= lt!2473121 e!4170645)))

(declare-fun c!1286428 () Bool)

(assert (=> d!2166088 (= c!1286428 (isEmpty!38833 s!14361))))

(assert (=> d!2166088 (validRegex!8651 lt!2473061)))

(assert (=> d!2166088 (= (matchR!9084 lt!2473061 s!14361) lt!2473121)))

(declare-fun b!6931320 () Bool)

(declare-fun res!2826820 () Bool)

(assert (=> b!6931320 (=> res!2826820 e!4170648)))

(assert (=> b!6931320 (= res!2826820 (not ((_ is ElementMatch!16945) lt!2473061)))))

(declare-fun e!4170646 () Bool)

(assert (=> b!6931320 (= e!4170646 e!4170648)))

(declare-fun b!6931321 () Bool)

(declare-fun res!2826824 () Bool)

(declare-fun e!4170650 () Bool)

(assert (=> b!6931321 (=> (not res!2826824) (not e!4170650))))

(assert (=> b!6931321 (= res!2826824 (not call!629866))))

(declare-fun b!6931322 () Bool)

(assert (=> b!6931322 (= e!4170650 (= (head!13894 s!14361) (c!1286319 lt!2473061)))))

(declare-fun b!6931323 () Bool)

(assert (=> b!6931323 (= e!4170651 (= lt!2473121 call!629866))))

(declare-fun b!6931324 () Bool)

(declare-fun res!2826822 () Bool)

(assert (=> b!6931324 (=> res!2826822 e!4170648)))

(assert (=> b!6931324 (= res!2826822 e!4170650)))

(declare-fun res!2826823 () Bool)

(assert (=> b!6931324 (=> (not res!2826823) (not e!4170650))))

(assert (=> b!6931324 (= res!2826823 lt!2473121)))

(declare-fun b!6931325 () Bool)

(declare-fun res!2826821 () Bool)

(assert (=> b!6931325 (=> res!2826821 e!4170649)))

(assert (=> b!6931325 (= res!2826821 (not (isEmpty!38833 (tail!12946 s!14361))))))

(declare-fun b!6931326 () Bool)

(assert (=> b!6931326 (= e!4170646 (not lt!2473121))))

(declare-fun bm!629861 () Bool)

(assert (=> bm!629861 (= call!629866 (isEmpty!38833 s!14361))))

(declare-fun b!6931327 () Bool)

(declare-fun res!2826825 () Bool)

(assert (=> b!6931327 (=> (not res!2826825) (not e!4170650))))

(assert (=> b!6931327 (= res!2826825 (isEmpty!38833 (tail!12946 s!14361)))))

(declare-fun b!6931328 () Bool)

(assert (=> b!6931328 (= e!4170649 (not (= (head!13894 s!14361) (c!1286319 lt!2473061))))))

(declare-fun b!6931329 () Bool)

(assert (=> b!6931329 (= e!4170645 (matchR!9084 (derivativeStep!5441 lt!2473061 (head!13894 s!14361)) (tail!12946 s!14361)))))

(declare-fun b!6931330 () Bool)

(assert (=> b!6931330 (= e!4170651 e!4170646)))

(declare-fun c!1286427 () Bool)

(assert (=> b!6931330 (= c!1286427 ((_ is EmptyLang!16945) lt!2473061))))

(declare-fun b!6931331 () Bool)

(assert (=> b!6931331 (= e!4170645 (nullable!6766 lt!2473061))))

(assert (= (and d!2166088 c!1286428) b!6931331))

(assert (= (and d!2166088 (not c!1286428)) b!6931329))

(assert (= (and d!2166088 c!1286429) b!6931323))

(assert (= (and d!2166088 (not c!1286429)) b!6931330))

(assert (= (and b!6931330 c!1286427) b!6931326))

(assert (= (and b!6931330 (not c!1286427)) b!6931320))

(assert (= (and b!6931320 (not res!2826820)) b!6931324))

(assert (= (and b!6931324 res!2826823) b!6931321))

(assert (= (and b!6931321 res!2826824) b!6931327))

(assert (= (and b!6931327 res!2826825) b!6931322))

(assert (= (and b!6931324 (not res!2826822)) b!6931319))

(assert (= (and b!6931319 res!2826827) b!6931318))

(assert (= (and b!6931318 (not res!2826826)) b!6931325))

(assert (= (and b!6931325 (not res!2826821)) b!6931328))

(assert (= (or b!6931323 b!6931318 b!6931321) bm!629861))

(assert (=> b!6931322 m!7638322))

(declare-fun m!7638352 () Bool)

(assert (=> b!6931331 m!7638352))

(assert (=> b!6931329 m!7638322))

(assert (=> b!6931329 m!7638322))

(declare-fun m!7638354 () Bool)

(assert (=> b!6931329 m!7638354))

(assert (=> b!6931329 m!7638328))

(assert (=> b!6931329 m!7638354))

(assert (=> b!6931329 m!7638328))

(declare-fun m!7638356 () Bool)

(assert (=> b!6931329 m!7638356))

(assert (=> b!6931328 m!7638322))

(assert (=> b!6931327 m!7638328))

(assert (=> b!6931327 m!7638328))

(assert (=> b!6931327 m!7638332))

(assert (=> d!2166088 m!7638334))

(assert (=> d!2166088 m!7638338))

(assert (=> b!6931325 m!7638328))

(assert (=> b!6931325 m!7638328))

(assert (=> b!6931325 m!7638332))

(assert (=> bm!629861 m!7638334))

(assert (=> b!6930758 d!2166088))

(declare-fun bm!629862 () Bool)

(declare-fun call!629868 () Bool)

(declare-fun call!629869 () Bool)

(assert (=> bm!629862 (= call!629868 call!629869)))

(declare-fun b!6931332 () Bool)

(declare-fun e!4170658 () Bool)

(declare-fun e!4170652 () Bool)

(assert (=> b!6931332 (= e!4170658 e!4170652)))

(declare-fun c!1286430 () Bool)

(assert (=> b!6931332 (= c!1286430 ((_ is Star!16945) r1!6342))))

(declare-fun b!6931333 () Bool)

(declare-fun e!4170656 () Bool)

(assert (=> b!6931333 (= e!4170656 call!629869)))

(declare-fun b!6931334 () Bool)

(declare-fun res!2826828 () Bool)

(declare-fun e!4170657 () Bool)

(assert (=> b!6931334 (=> (not res!2826828) (not e!4170657))))

(declare-fun call!629867 () Bool)

(assert (=> b!6931334 (= res!2826828 call!629867)))

(declare-fun e!4170654 () Bool)

(assert (=> b!6931334 (= e!4170654 e!4170657)))

(declare-fun bm!629863 () Bool)

(declare-fun c!1286431 () Bool)

(assert (=> bm!629863 (= call!629867 (validRegex!8651 (ite c!1286431 (regOne!34403 r1!6342) (regTwo!34402 r1!6342))))))

(declare-fun b!6931335 () Bool)

(assert (=> b!6931335 (= e!4170652 e!4170654)))

(assert (=> b!6931335 (= c!1286431 ((_ is Union!16945) r1!6342))))

(declare-fun d!2166090 () Bool)

(declare-fun res!2826831 () Bool)

(assert (=> d!2166090 (=> res!2826831 e!4170658)))

(assert (=> d!2166090 (= res!2826831 ((_ is ElementMatch!16945) r1!6342))))

(assert (=> d!2166090 (= (validRegex!8651 r1!6342) e!4170658)))

(declare-fun bm!629864 () Bool)

(assert (=> bm!629864 (= call!629869 (validRegex!8651 (ite c!1286430 (reg!17274 r1!6342) (ite c!1286431 (regTwo!34403 r1!6342) (regOne!34402 r1!6342)))))))

(declare-fun b!6931336 () Bool)

(declare-fun e!4170653 () Bool)

(declare-fun e!4170655 () Bool)

(assert (=> b!6931336 (= e!4170653 e!4170655)))

(declare-fun res!2826829 () Bool)

(assert (=> b!6931336 (=> (not res!2826829) (not e!4170655))))

(assert (=> b!6931336 (= res!2826829 call!629868)))

(declare-fun b!6931337 () Bool)

(assert (=> b!6931337 (= e!4170652 e!4170656)))

(declare-fun res!2826830 () Bool)

(assert (=> b!6931337 (= res!2826830 (not (nullable!6766 (reg!17274 r1!6342))))))

(assert (=> b!6931337 (=> (not res!2826830) (not e!4170656))))

(declare-fun b!6931338 () Bool)

(assert (=> b!6931338 (= e!4170655 call!629867)))

(declare-fun b!6931339 () Bool)

(assert (=> b!6931339 (= e!4170657 call!629868)))

(declare-fun b!6931340 () Bool)

(declare-fun res!2826832 () Bool)

(assert (=> b!6931340 (=> res!2826832 e!4170653)))

(assert (=> b!6931340 (= res!2826832 (not ((_ is Concat!25790) r1!6342)))))

(assert (=> b!6931340 (= e!4170654 e!4170653)))

(assert (= (and d!2166090 (not res!2826831)) b!6931332))

(assert (= (and b!6931332 c!1286430) b!6931337))

(assert (= (and b!6931332 (not c!1286430)) b!6931335))

(assert (= (and b!6931337 res!2826830) b!6931333))

(assert (= (and b!6931335 c!1286431) b!6931334))

(assert (= (and b!6931335 (not c!1286431)) b!6931340))

(assert (= (and b!6931334 res!2826828) b!6931339))

(assert (= (and b!6931340 (not res!2826832)) b!6931336))

(assert (= (and b!6931336 res!2826829) b!6931338))

(assert (= (or b!6931334 b!6931338) bm!629863))

(assert (= (or b!6931339 b!6931336) bm!629862))

(assert (= (or b!6931333 bm!629862) bm!629864))

(declare-fun m!7638358 () Bool)

(assert (=> bm!629863 m!7638358))

(declare-fun m!7638360 () Bool)

(assert (=> bm!629864 m!7638360))

(declare-fun m!7638362 () Bool)

(assert (=> b!6931337 m!7638362))

(assert (=> start!666078 d!2166090))

(declare-fun b!6931352 () Bool)

(declare-fun e!4170661 () Bool)

(declare-fun tp!1910744 () Bool)

(declare-fun tp!1910745 () Bool)

(assert (=> b!6931352 (= e!4170661 (and tp!1910744 tp!1910745))))

(declare-fun b!6931351 () Bool)

(assert (=> b!6931351 (= e!4170661 tp_is_empty!43115)))

(declare-fun b!6931354 () Bool)

(declare-fun tp!1910746 () Bool)

(declare-fun tp!1910743 () Bool)

(assert (=> b!6931354 (= e!4170661 (and tp!1910746 tp!1910743))))

(assert (=> b!6930766 (= tp!1910630 e!4170661)))

(declare-fun b!6931353 () Bool)

(declare-fun tp!1910742 () Bool)

(assert (=> b!6931353 (= e!4170661 tp!1910742)))

(assert (= (and b!6930766 ((_ is ElementMatch!16945) (regOne!34402 r2!6280))) b!6931351))

(assert (= (and b!6930766 ((_ is Concat!25790) (regOne!34402 r2!6280))) b!6931352))

(assert (= (and b!6930766 ((_ is Star!16945) (regOne!34402 r2!6280))) b!6931353))

(assert (= (and b!6930766 ((_ is Union!16945) (regOne!34402 r2!6280))) b!6931354))

(declare-fun b!6931356 () Bool)

(declare-fun e!4170662 () Bool)

(declare-fun tp!1910749 () Bool)

(declare-fun tp!1910750 () Bool)

(assert (=> b!6931356 (= e!4170662 (and tp!1910749 tp!1910750))))

(declare-fun b!6931355 () Bool)

(assert (=> b!6931355 (= e!4170662 tp_is_empty!43115)))

(declare-fun b!6931358 () Bool)

(declare-fun tp!1910751 () Bool)

(declare-fun tp!1910748 () Bool)

(assert (=> b!6931358 (= e!4170662 (and tp!1910751 tp!1910748))))

(assert (=> b!6930766 (= tp!1910637 e!4170662)))

(declare-fun b!6931357 () Bool)

(declare-fun tp!1910747 () Bool)

(assert (=> b!6931357 (= e!4170662 tp!1910747)))

(assert (= (and b!6930766 ((_ is ElementMatch!16945) (regTwo!34402 r2!6280))) b!6931355))

(assert (= (and b!6930766 ((_ is Concat!25790) (regTwo!34402 r2!6280))) b!6931356))

(assert (= (and b!6930766 ((_ is Star!16945) (regTwo!34402 r2!6280))) b!6931357))

(assert (= (and b!6930766 ((_ is Union!16945) (regTwo!34402 r2!6280))) b!6931358))

(declare-fun b!6931360 () Bool)

(declare-fun e!4170663 () Bool)

(declare-fun tp!1910754 () Bool)

(declare-fun tp!1910755 () Bool)

(assert (=> b!6931360 (= e!4170663 (and tp!1910754 tp!1910755))))

(declare-fun b!6931359 () Bool)

(assert (=> b!6931359 (= e!4170663 tp_is_empty!43115)))

(declare-fun b!6931362 () Bool)

(declare-fun tp!1910756 () Bool)

(declare-fun tp!1910753 () Bool)

(assert (=> b!6931362 (= e!4170663 (and tp!1910756 tp!1910753))))

(assert (=> b!6930763 (= tp!1910628 e!4170663)))

(declare-fun b!6931361 () Bool)

(declare-fun tp!1910752 () Bool)

(assert (=> b!6931361 (= e!4170663 tp!1910752)))

(assert (= (and b!6930763 ((_ is ElementMatch!16945) (reg!17274 r2!6280))) b!6931359))

(assert (= (and b!6930763 ((_ is Concat!25790) (reg!17274 r2!6280))) b!6931360))

(assert (= (and b!6930763 ((_ is Star!16945) (reg!17274 r2!6280))) b!6931361))

(assert (= (and b!6930763 ((_ is Union!16945) (reg!17274 r2!6280))) b!6931362))

(declare-fun b!6931364 () Bool)

(declare-fun e!4170664 () Bool)

(declare-fun tp!1910759 () Bool)

(declare-fun tp!1910760 () Bool)

(assert (=> b!6931364 (= e!4170664 (and tp!1910759 tp!1910760))))

(declare-fun b!6931363 () Bool)

(assert (=> b!6931363 (= e!4170664 tp_is_empty!43115)))

(declare-fun b!6931366 () Bool)

(declare-fun tp!1910761 () Bool)

(declare-fun tp!1910758 () Bool)

(assert (=> b!6931366 (= e!4170664 (and tp!1910761 tp!1910758))))

(assert (=> b!6930762 (= tp!1910638 e!4170664)))

(declare-fun b!6931365 () Bool)

(declare-fun tp!1910757 () Bool)

(assert (=> b!6931365 (= e!4170664 tp!1910757)))

(assert (= (and b!6930762 ((_ is ElementMatch!16945) (regOne!34402 r1!6342))) b!6931363))

(assert (= (and b!6930762 ((_ is Concat!25790) (regOne!34402 r1!6342))) b!6931364))

(assert (= (and b!6930762 ((_ is Star!16945) (regOne!34402 r1!6342))) b!6931365))

(assert (= (and b!6930762 ((_ is Union!16945) (regOne!34402 r1!6342))) b!6931366))

(declare-fun b!6931368 () Bool)

(declare-fun e!4170665 () Bool)

(declare-fun tp!1910764 () Bool)

(declare-fun tp!1910765 () Bool)

(assert (=> b!6931368 (= e!4170665 (and tp!1910764 tp!1910765))))

(declare-fun b!6931367 () Bool)

(assert (=> b!6931367 (= e!4170665 tp_is_empty!43115)))

(declare-fun b!6931370 () Bool)

(declare-fun tp!1910766 () Bool)

(declare-fun tp!1910763 () Bool)

(assert (=> b!6931370 (= e!4170665 (and tp!1910766 tp!1910763))))

(assert (=> b!6930762 (= tp!1910640 e!4170665)))

(declare-fun b!6931369 () Bool)

(declare-fun tp!1910762 () Bool)

(assert (=> b!6931369 (= e!4170665 tp!1910762)))

(assert (= (and b!6930762 ((_ is ElementMatch!16945) (regTwo!34402 r1!6342))) b!6931367))

(assert (= (and b!6930762 ((_ is Concat!25790) (regTwo!34402 r1!6342))) b!6931368))

(assert (= (and b!6930762 ((_ is Star!16945) (regTwo!34402 r1!6342))) b!6931369))

(assert (= (and b!6930762 ((_ is Union!16945) (regTwo!34402 r1!6342))) b!6931370))

(declare-fun b!6931372 () Bool)

(declare-fun e!4170666 () Bool)

(declare-fun tp!1910769 () Bool)

(declare-fun tp!1910770 () Bool)

(assert (=> b!6931372 (= e!4170666 (and tp!1910769 tp!1910770))))

(declare-fun b!6931371 () Bool)

(assert (=> b!6931371 (= e!4170666 tp_is_empty!43115)))

(declare-fun b!6931374 () Bool)

(declare-fun tp!1910771 () Bool)

(declare-fun tp!1910768 () Bool)

(assert (=> b!6931374 (= e!4170666 (and tp!1910771 tp!1910768))))

(assert (=> b!6930764 (= tp!1910639 e!4170666)))

(declare-fun b!6931373 () Bool)

(declare-fun tp!1910767 () Bool)

(assert (=> b!6931373 (= e!4170666 tp!1910767)))

(assert (= (and b!6930764 ((_ is ElementMatch!16945) (regOne!34402 r3!135))) b!6931371))

(assert (= (and b!6930764 ((_ is Concat!25790) (regOne!34402 r3!135))) b!6931372))

(assert (= (and b!6930764 ((_ is Star!16945) (regOne!34402 r3!135))) b!6931373))

(assert (= (and b!6930764 ((_ is Union!16945) (regOne!34402 r3!135))) b!6931374))

(declare-fun b!6931376 () Bool)

(declare-fun e!4170667 () Bool)

(declare-fun tp!1910774 () Bool)

(declare-fun tp!1910775 () Bool)

(assert (=> b!6931376 (= e!4170667 (and tp!1910774 tp!1910775))))

(declare-fun b!6931375 () Bool)

(assert (=> b!6931375 (= e!4170667 tp_is_empty!43115)))

(declare-fun b!6931378 () Bool)

(declare-fun tp!1910776 () Bool)

(declare-fun tp!1910773 () Bool)

(assert (=> b!6931378 (= e!4170667 (and tp!1910776 tp!1910773))))

(assert (=> b!6930764 (= tp!1910629 e!4170667)))

(declare-fun b!6931377 () Bool)

(declare-fun tp!1910772 () Bool)

(assert (=> b!6931377 (= e!4170667 tp!1910772)))

(assert (= (and b!6930764 ((_ is ElementMatch!16945) (regTwo!34402 r3!135))) b!6931375))

(assert (= (and b!6930764 ((_ is Concat!25790) (regTwo!34402 r3!135))) b!6931376))

(assert (= (and b!6930764 ((_ is Star!16945) (regTwo!34402 r3!135))) b!6931377))

(assert (= (and b!6930764 ((_ is Union!16945) (regTwo!34402 r3!135))) b!6931378))

(declare-fun b!6931380 () Bool)

(declare-fun e!4170668 () Bool)

(declare-fun tp!1910779 () Bool)

(declare-fun tp!1910780 () Bool)

(assert (=> b!6931380 (= e!4170668 (and tp!1910779 tp!1910780))))

(declare-fun b!6931379 () Bool)

(assert (=> b!6931379 (= e!4170668 tp_is_empty!43115)))

(declare-fun b!6931382 () Bool)

(declare-fun tp!1910781 () Bool)

(declare-fun tp!1910778 () Bool)

(assert (=> b!6931382 (= e!4170668 (and tp!1910781 tp!1910778))))

(assert (=> b!6930759 (= tp!1910636 e!4170668)))

(declare-fun b!6931381 () Bool)

(declare-fun tp!1910777 () Bool)

(assert (=> b!6931381 (= e!4170668 tp!1910777)))

(assert (= (and b!6930759 ((_ is ElementMatch!16945) (regOne!34403 r3!135))) b!6931379))

(assert (= (and b!6930759 ((_ is Concat!25790) (regOne!34403 r3!135))) b!6931380))

(assert (= (and b!6930759 ((_ is Star!16945) (regOne!34403 r3!135))) b!6931381))

(assert (= (and b!6930759 ((_ is Union!16945) (regOne!34403 r3!135))) b!6931382))

(declare-fun b!6931384 () Bool)

(declare-fun e!4170669 () Bool)

(declare-fun tp!1910784 () Bool)

(declare-fun tp!1910785 () Bool)

(assert (=> b!6931384 (= e!4170669 (and tp!1910784 tp!1910785))))

(declare-fun b!6931383 () Bool)

(assert (=> b!6931383 (= e!4170669 tp_is_empty!43115)))

(declare-fun b!6931386 () Bool)

(declare-fun tp!1910786 () Bool)

(declare-fun tp!1910783 () Bool)

(assert (=> b!6931386 (= e!4170669 (and tp!1910786 tp!1910783))))

(assert (=> b!6930759 (= tp!1910641 e!4170669)))

(declare-fun b!6931385 () Bool)

(declare-fun tp!1910782 () Bool)

(assert (=> b!6931385 (= e!4170669 tp!1910782)))

(assert (= (and b!6930759 ((_ is ElementMatch!16945) (regTwo!34403 r3!135))) b!6931383))

(assert (= (and b!6930759 ((_ is Concat!25790) (regTwo!34403 r3!135))) b!6931384))

(assert (= (and b!6930759 ((_ is Star!16945) (regTwo!34403 r3!135))) b!6931385))

(assert (= (and b!6930759 ((_ is Union!16945) (regTwo!34403 r3!135))) b!6931386))

(declare-fun b!6931388 () Bool)

(declare-fun e!4170670 () Bool)

(declare-fun tp!1910789 () Bool)

(declare-fun tp!1910790 () Bool)

(assert (=> b!6931388 (= e!4170670 (and tp!1910789 tp!1910790))))

(declare-fun b!6931387 () Bool)

(assert (=> b!6931387 (= e!4170670 tp_is_empty!43115)))

(declare-fun b!6931390 () Bool)

(declare-fun tp!1910791 () Bool)

(declare-fun tp!1910788 () Bool)

(assert (=> b!6931390 (= e!4170670 (and tp!1910791 tp!1910788))))

(assert (=> b!6930769 (= tp!1910635 e!4170670)))

(declare-fun b!6931389 () Bool)

(declare-fun tp!1910787 () Bool)

(assert (=> b!6931389 (= e!4170670 tp!1910787)))

(assert (= (and b!6930769 ((_ is ElementMatch!16945) (regOne!34403 r1!6342))) b!6931387))

(assert (= (and b!6930769 ((_ is Concat!25790) (regOne!34403 r1!6342))) b!6931388))

(assert (= (and b!6930769 ((_ is Star!16945) (regOne!34403 r1!6342))) b!6931389))

(assert (= (and b!6930769 ((_ is Union!16945) (regOne!34403 r1!6342))) b!6931390))

(declare-fun b!6931392 () Bool)

(declare-fun e!4170671 () Bool)

(declare-fun tp!1910794 () Bool)

(declare-fun tp!1910795 () Bool)

(assert (=> b!6931392 (= e!4170671 (and tp!1910794 tp!1910795))))

(declare-fun b!6931391 () Bool)

(assert (=> b!6931391 (= e!4170671 tp_is_empty!43115)))

(declare-fun b!6931394 () Bool)

(declare-fun tp!1910796 () Bool)

(declare-fun tp!1910793 () Bool)

(assert (=> b!6931394 (= e!4170671 (and tp!1910796 tp!1910793))))

(assert (=> b!6930769 (= tp!1910633 e!4170671)))

(declare-fun b!6931393 () Bool)

(declare-fun tp!1910792 () Bool)

(assert (=> b!6931393 (= e!4170671 tp!1910792)))

(assert (= (and b!6930769 ((_ is ElementMatch!16945) (regTwo!34403 r1!6342))) b!6931391))

(assert (= (and b!6930769 ((_ is Concat!25790) (regTwo!34403 r1!6342))) b!6931392))

(assert (= (and b!6930769 ((_ is Star!16945) (regTwo!34403 r1!6342))) b!6931393))

(assert (= (and b!6930769 ((_ is Union!16945) (regTwo!34403 r1!6342))) b!6931394))

(declare-fun b!6931396 () Bool)

(declare-fun e!4170672 () Bool)

(declare-fun tp!1910799 () Bool)

(declare-fun tp!1910800 () Bool)

(assert (=> b!6931396 (= e!4170672 (and tp!1910799 tp!1910800))))

(declare-fun b!6931395 () Bool)

(assert (=> b!6931395 (= e!4170672 tp_is_empty!43115)))

(declare-fun b!6931398 () Bool)

(declare-fun tp!1910801 () Bool)

(declare-fun tp!1910798 () Bool)

(assert (=> b!6931398 (= e!4170672 (and tp!1910801 tp!1910798))))

(assert (=> b!6930776 (= tp!1910642 e!4170672)))

(declare-fun b!6931397 () Bool)

(declare-fun tp!1910797 () Bool)

(assert (=> b!6931397 (= e!4170672 tp!1910797)))

(assert (= (and b!6930776 ((_ is ElementMatch!16945) (reg!17274 r3!135))) b!6931395))

(assert (= (and b!6930776 ((_ is Concat!25790) (reg!17274 r3!135))) b!6931396))

(assert (= (and b!6930776 ((_ is Star!16945) (reg!17274 r3!135))) b!6931397))

(assert (= (and b!6930776 ((_ is Union!16945) (reg!17274 r3!135))) b!6931398))

(declare-fun b!6931403 () Bool)

(declare-fun e!4170675 () Bool)

(declare-fun tp!1910804 () Bool)

(assert (=> b!6931403 (= e!4170675 (and tp_is_empty!43115 tp!1910804))))

(assert (=> b!6930771 (= tp!1910643 e!4170675)))

(assert (= (and b!6930771 ((_ is Cons!66574) (t!380441 s!14361))) b!6931403))

(declare-fun b!6931405 () Bool)

(declare-fun e!4170676 () Bool)

(declare-fun tp!1910807 () Bool)

(declare-fun tp!1910808 () Bool)

(assert (=> b!6931405 (= e!4170676 (and tp!1910807 tp!1910808))))

(declare-fun b!6931404 () Bool)

(assert (=> b!6931404 (= e!4170676 tp_is_empty!43115)))

(declare-fun b!6931407 () Bool)

(declare-fun tp!1910809 () Bool)

(declare-fun tp!1910806 () Bool)

(assert (=> b!6931407 (= e!4170676 (and tp!1910809 tp!1910806))))

(assert (=> b!6930770 (= tp!1910631 e!4170676)))

(declare-fun b!6931406 () Bool)

(declare-fun tp!1910805 () Bool)

(assert (=> b!6931406 (= e!4170676 tp!1910805)))

(assert (= (and b!6930770 ((_ is ElementMatch!16945) (reg!17274 r1!6342))) b!6931404))

(assert (= (and b!6930770 ((_ is Concat!25790) (reg!17274 r1!6342))) b!6931405))

(assert (= (and b!6930770 ((_ is Star!16945) (reg!17274 r1!6342))) b!6931406))

(assert (= (and b!6930770 ((_ is Union!16945) (reg!17274 r1!6342))) b!6931407))

(declare-fun b!6931409 () Bool)

(declare-fun e!4170677 () Bool)

(declare-fun tp!1910812 () Bool)

(declare-fun tp!1910813 () Bool)

(assert (=> b!6931409 (= e!4170677 (and tp!1910812 tp!1910813))))

(declare-fun b!6931408 () Bool)

(assert (=> b!6931408 (= e!4170677 tp_is_empty!43115)))

(declare-fun b!6931411 () Bool)

(declare-fun tp!1910814 () Bool)

(declare-fun tp!1910811 () Bool)

(assert (=> b!6931411 (= e!4170677 (and tp!1910814 tp!1910811))))

(assert (=> b!6930765 (= tp!1910634 e!4170677)))

(declare-fun b!6931410 () Bool)

(declare-fun tp!1910810 () Bool)

(assert (=> b!6931410 (= e!4170677 tp!1910810)))

(assert (= (and b!6930765 ((_ is ElementMatch!16945) (regOne!34403 r2!6280))) b!6931408))

(assert (= (and b!6930765 ((_ is Concat!25790) (regOne!34403 r2!6280))) b!6931409))

(assert (= (and b!6930765 ((_ is Star!16945) (regOne!34403 r2!6280))) b!6931410))

(assert (= (and b!6930765 ((_ is Union!16945) (regOne!34403 r2!6280))) b!6931411))

(declare-fun b!6931413 () Bool)

(declare-fun e!4170678 () Bool)

(declare-fun tp!1910817 () Bool)

(declare-fun tp!1910818 () Bool)

(assert (=> b!6931413 (= e!4170678 (and tp!1910817 tp!1910818))))

(declare-fun b!6931412 () Bool)

(assert (=> b!6931412 (= e!4170678 tp_is_empty!43115)))

(declare-fun b!6931415 () Bool)

(declare-fun tp!1910819 () Bool)

(declare-fun tp!1910816 () Bool)

(assert (=> b!6931415 (= e!4170678 (and tp!1910819 tp!1910816))))

(assert (=> b!6930765 (= tp!1910632 e!4170678)))

(declare-fun b!6931414 () Bool)

(declare-fun tp!1910815 () Bool)

(assert (=> b!6931414 (= e!4170678 tp!1910815)))

(assert (= (and b!6930765 ((_ is ElementMatch!16945) (regTwo!34403 r2!6280))) b!6931412))

(assert (= (and b!6930765 ((_ is Concat!25790) (regTwo!34403 r2!6280))) b!6931413))

(assert (= (and b!6930765 ((_ is Star!16945) (regTwo!34403 r2!6280))) b!6931414))

(assert (= (and b!6930765 ((_ is Union!16945) (regTwo!34403 r2!6280))) b!6931415))

(check-sat (not bm!629855) (not bm!629854) (not b!6931364) (not d!2166036) (not d!2166082) (not b!6931325) (not b!6931313) (not b!6931302) (not bm!629858) (not b!6931365) (not bm!629863) (not b!6931352) (not b!6931327) (not b!6931414) (not d!2166076) (not b!6931353) (not b!6931243) (not d!2166008) (not b!6931264) (not b!6931396) (not b!6931368) (not bm!629857) (not b!6931357) (not d!2166062) (not b!6931331) (not bm!629859) (not b!6931047) (not b!6931241) (not b!6931309) (not b!6930858) (not b!6931415) (not b!6931322) (not bm!629829) (not bm!629856) (not b!6931381) (not b!6931361) (not b!6931286) (not b!6931356) (not b!6931405) (not b!6931406) (not b!6931295) (not b!6931385) (not b!6931369) (not b!6931245) (not bm!629864) (not bm!629861) (not b!6931390) (not b!6931051) (not b!6931377) (not b!6931380) (not b!6931376) (not b!6931366) (not b!6931386) (not b!6931382) tp_is_empty!43115 (not b!6931394) (not b!6931410) (not b!6931354) (not b!6931374) (not b!6931272) (not b!6931292) (not b!6930862) (not d!2166078) (not b!6931407) (not b!6931413) (not b!6931279) (not b!6931411) (not b!6931048) (not b!6931090) (not d!2166024) (not d!2166022) (not b!6931275) (not bm!629860) (not b!6931362) (not b!6931291) (not b!6931360) (not b!6931289) (not d!2166080) (not b!6931239) (not b!6931403) (not b!6931337) (not b!6931329) (not bm!629840) (not d!2166064) (not b!6931384) (not b!6931328) (not b!6931392) (not b!6931389) (not d!2166038) (not b!6931277) (not b!6931372) (not b!6931358) (not b!6931281) (not b!6931370) (not bm!629842) (not b!6931298) (not b!6931293) (not b!6931378) (not b!6931388) (not b!6931397) (not b!6931099) (not b!6931393) (not b!6931049) (not bm!629839) (not bm!629804) (not bm!629843) (not b!6931278) (not b!6931373) (not d!2166016) (not b!6931409) (not b!6931398) (not b!6931246) (not bm!629853) (not b!6931242) (not bm!629805) (not d!2166088) (not b!6931045) (not b!6931042))
(check-sat)
