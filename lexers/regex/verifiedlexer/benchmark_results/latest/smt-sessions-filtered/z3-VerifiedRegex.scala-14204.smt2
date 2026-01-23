; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744230 () Bool)

(assert start!744230)

(declare-fun b!7879263 () Bool)

(declare-fun res!3129274 () Bool)

(declare-fun e!4653263 () Bool)

(assert (=> b!7879263 (=> (not res!3129274) (not e!4653263))))

(declare-datatypes ((C!42688 0))(
  ( (C!42689 (val!31806 Int)) )
))
(declare-datatypes ((Regex!21181 0))(
  ( (ElementMatch!21181 (c!1446965 C!42688)) (Concat!30026 (regOne!42874 Regex!21181) (regTwo!42874 Regex!21181)) (EmptyExpr!21181) (Star!21181 (reg!21510 Regex!21181)) (EmptyLang!21181) (Union!21181 (regOne!42875 Regex!21181) (regTwo!42875 Regex!21181)) )
))
(declare-fun r2!6150 () Regex!21181)

(declare-fun validRegex!11591 (Regex!21181) Bool)

(assert (=> b!7879263 (= res!3129274 (validRegex!11591 r2!6150))))

(declare-fun res!3129273 () Bool)

(assert (=> start!744230 (=> (not res!3129273) (not e!4653263))))

(declare-fun r1!6212 () Regex!21181)

(assert (=> start!744230 (= res!3129273 (validRegex!11591 r1!6212))))

(assert (=> start!744230 e!4653263))

(declare-fun e!4653262 () Bool)

(assert (=> start!744230 e!4653262))

(declare-fun e!4653261 () Bool)

(assert (=> start!744230 e!4653261))

(declare-fun e!4653264 () Bool)

(assert (=> start!744230 e!4653264))

(declare-fun b!7879264 () Bool)

(declare-fun tp_is_empty!52761 () Bool)

(assert (=> b!7879264 (= e!4653261 tp_is_empty!52761)))

(declare-fun b!7879265 () Bool)

(declare-fun tp!2341095 () Bool)

(declare-fun tp!2341098 () Bool)

(assert (=> b!7879265 (= e!4653261 (and tp!2341095 tp!2341098))))

(declare-fun b!7879266 () Bool)

(declare-fun res!3129272 () Bool)

(assert (=> b!7879266 (=> (not res!3129272) (not e!4653263))))

(declare-datatypes ((List!74040 0))(
  ( (Nil!73916) (Cons!73916 (h!80364 C!42688) (t!388775 List!74040)) )
))
(declare-fun s!14231 () List!74040)

(get-info :version)

(assert (=> b!7879266 (= res!3129272 ((_ is Cons!73916) s!14231))))

(declare-fun b!7879267 () Bool)

(declare-fun res!3129275 () Bool)

(assert (=> b!7879267 (=> (not res!3129275) (not e!4653263))))

(declare-fun matchR!10617 (Regex!21181 List!74040) Bool)

(assert (=> b!7879267 (= res!3129275 (matchR!10617 (Union!21181 r1!6212 r2!6150) s!14231))))

(declare-fun b!7879268 () Bool)

(declare-fun tp!2341094 () Bool)

(declare-fun tp!2341100 () Bool)

(assert (=> b!7879268 (= e!4653261 (and tp!2341094 tp!2341100))))

(declare-fun b!7879269 () Bool)

(assert (=> b!7879269 (= e!4653262 tp_is_empty!52761)))

(declare-fun b!7879270 () Bool)

(declare-fun tp!2341092 () Bool)

(assert (=> b!7879270 (= e!4653262 tp!2341092)))

(declare-fun b!7879271 () Bool)

(declare-fun tp!2341099 () Bool)

(assert (=> b!7879271 (= e!4653264 (and tp_is_empty!52761 tp!2341099))))

(declare-fun b!7879272 () Bool)

(declare-fun e!4653265 () Bool)

(assert (=> b!7879272 (= e!4653263 (not e!4653265))))

(declare-fun res!3129276 () Bool)

(assert (=> b!7879272 (=> res!3129276 e!4653265)))

(declare-fun lt!2681197 () Regex!21181)

(assert (=> b!7879272 (= res!3129276 (not (matchR!10617 lt!2681197 s!14231)))))

(assert (=> b!7879272 (= lt!2681197 (Union!21181 r2!6150 r1!6212))))

(declare-fun lt!2681198 () Regex!21181)

(declare-fun lt!2681196 () Regex!21181)

(assert (=> b!7879272 (matchR!10617 (Union!21181 lt!2681198 lt!2681196) (t!388775 s!14231))))

(declare-datatypes ((Unit!168992 0))(
  ( (Unit!168993) )
))
(declare-fun lt!2681199 () Unit!168992)

(declare-fun lemmaReversedUnionAcceptsSameString!54 (Regex!21181 Regex!21181 List!74040) Unit!168992)

(assert (=> b!7879272 (= lt!2681199 (lemmaReversedUnionAcceptsSameString!54 lt!2681196 lt!2681198 (t!388775 s!14231)))))

(declare-fun derivativeStep!6410 (Regex!21181 C!42688) Regex!21181)

(assert (=> b!7879272 (= lt!2681198 (derivativeStep!6410 r2!6150 (h!80364 s!14231)))))

(assert (=> b!7879272 (= lt!2681196 (derivativeStep!6410 r1!6212 (h!80364 s!14231)))))

(declare-fun b!7879273 () Bool)

(assert (=> b!7879273 (= e!4653265 (validRegex!11591 lt!2681197))))

(declare-fun b!7879274 () Bool)

(declare-fun tp!2341093 () Bool)

(declare-fun tp!2341096 () Bool)

(assert (=> b!7879274 (= e!4653262 (and tp!2341093 tp!2341096))))

(declare-fun b!7879275 () Bool)

(declare-fun tp!2341097 () Bool)

(assert (=> b!7879275 (= e!4653261 tp!2341097)))

(declare-fun b!7879276 () Bool)

(declare-fun tp!2341090 () Bool)

(declare-fun tp!2341091 () Bool)

(assert (=> b!7879276 (= e!4653262 (and tp!2341090 tp!2341091))))

(assert (= (and start!744230 res!3129273) b!7879263))

(assert (= (and b!7879263 res!3129274) b!7879267))

(assert (= (and b!7879267 res!3129275) b!7879266))

(assert (= (and b!7879266 res!3129272) b!7879272))

(assert (= (and b!7879272 (not res!3129276)) b!7879273))

(assert (= (and start!744230 ((_ is ElementMatch!21181) r1!6212)) b!7879269))

(assert (= (and start!744230 ((_ is Concat!30026) r1!6212)) b!7879276))

(assert (= (and start!744230 ((_ is Star!21181) r1!6212)) b!7879270))

(assert (= (and start!744230 ((_ is Union!21181) r1!6212)) b!7879274))

(assert (= (and start!744230 ((_ is ElementMatch!21181) r2!6150)) b!7879264))

(assert (= (and start!744230 ((_ is Concat!30026) r2!6150)) b!7879265))

(assert (= (and start!744230 ((_ is Star!21181) r2!6150)) b!7879275))

(assert (= (and start!744230 ((_ is Union!21181) r2!6150)) b!7879268))

(assert (= (and start!744230 ((_ is Cons!73916) s!14231)) b!7879271))

(declare-fun m!8267462 () Bool)

(assert (=> b!7879273 m!8267462))

(declare-fun m!8267464 () Bool)

(assert (=> start!744230 m!8267464))

(declare-fun m!8267466 () Bool)

(assert (=> b!7879263 m!8267466))

(declare-fun m!8267468 () Bool)

(assert (=> b!7879272 m!8267468))

(declare-fun m!8267470 () Bool)

(assert (=> b!7879272 m!8267470))

(declare-fun m!8267472 () Bool)

(assert (=> b!7879272 m!8267472))

(declare-fun m!8267474 () Bool)

(assert (=> b!7879272 m!8267474))

(declare-fun m!8267476 () Bool)

(assert (=> b!7879272 m!8267476))

(declare-fun m!8267478 () Bool)

(assert (=> b!7879267 m!8267478))

(check-sat (not b!7879265) (not b!7879267) (not b!7879273) (not b!7879270) tp_is_empty!52761 (not start!744230) (not b!7879263) (not b!7879272) (not b!7879275) (not b!7879268) (not b!7879274) (not b!7879271) (not b!7879276))
(check-sat)
(get-model)

(declare-fun d!2355941 () Bool)

(declare-fun res!3129300 () Bool)

(declare-fun e!4653300 () Bool)

(assert (=> d!2355941 (=> res!3129300 e!4653300)))

(assert (=> d!2355941 (= res!3129300 ((_ is ElementMatch!21181) lt!2681197))))

(assert (=> d!2355941 (= (validRegex!11591 lt!2681197) e!4653300)))

(declare-fun b!7879313 () Bool)

(declare-fun e!4653298 () Bool)

(declare-fun e!4653297 () Bool)

(assert (=> b!7879313 (= e!4653298 e!4653297)))

(declare-fun res!3129297 () Bool)

(declare-fun nullable!9440 (Regex!21181) Bool)

(assert (=> b!7879313 (= res!3129297 (not (nullable!9440 (reg!21510 lt!2681197))))))

(assert (=> b!7879313 (=> (not res!3129297) (not e!4653297))))

(declare-fun b!7879314 () Bool)

(declare-fun e!4653299 () Bool)

(declare-fun e!4653294 () Bool)

(assert (=> b!7879314 (= e!4653299 e!4653294)))

(declare-fun res!3129301 () Bool)

(assert (=> b!7879314 (=> (not res!3129301) (not e!4653294))))

(declare-fun call!730825 () Bool)

(assert (=> b!7879314 (= res!3129301 call!730825)))

(declare-fun b!7879315 () Bool)

(declare-fun res!3129299 () Bool)

(declare-fun e!4653295 () Bool)

(assert (=> b!7879315 (=> (not res!3129299) (not e!4653295))))

(declare-fun call!730827 () Bool)

(assert (=> b!7879315 (= res!3129299 call!730827)))

(declare-fun e!4653296 () Bool)

(assert (=> b!7879315 (= e!4653296 e!4653295)))

(declare-fun b!7879316 () Bool)

(declare-fun call!730826 () Bool)

(assert (=> b!7879316 (= e!4653297 call!730826)))

(declare-fun b!7879317 () Bool)

(assert (=> b!7879317 (= e!4653300 e!4653298)))

(declare-fun c!1446974 () Bool)

(assert (=> b!7879317 (= c!1446974 ((_ is Star!21181) lt!2681197))))

(declare-fun b!7879318 () Bool)

(assert (=> b!7879318 (= e!4653298 e!4653296)))

(declare-fun c!1446975 () Bool)

(assert (=> b!7879318 (= c!1446975 ((_ is Union!21181) lt!2681197))))

(declare-fun bm!730820 () Bool)

(assert (=> bm!730820 (= call!730826 (validRegex!11591 (ite c!1446974 (reg!21510 lt!2681197) (ite c!1446975 (regTwo!42875 lt!2681197) (regOne!42874 lt!2681197)))))))

(declare-fun bm!730821 () Bool)

(assert (=> bm!730821 (= call!730827 (validRegex!11591 (ite c!1446975 (regOne!42875 lt!2681197) (regTwo!42874 lt!2681197))))))

(declare-fun b!7879319 () Bool)

(declare-fun res!3129298 () Bool)

(assert (=> b!7879319 (=> res!3129298 e!4653299)))

(assert (=> b!7879319 (= res!3129298 (not ((_ is Concat!30026) lt!2681197)))))

(assert (=> b!7879319 (= e!4653296 e!4653299)))

(declare-fun b!7879320 () Bool)

(assert (=> b!7879320 (= e!4653294 call!730827)))

(declare-fun bm!730822 () Bool)

(assert (=> bm!730822 (= call!730825 call!730826)))

(declare-fun b!7879321 () Bool)

(assert (=> b!7879321 (= e!4653295 call!730825)))

(assert (= (and d!2355941 (not res!3129300)) b!7879317))

(assert (= (and b!7879317 c!1446974) b!7879313))

(assert (= (and b!7879317 (not c!1446974)) b!7879318))

(assert (= (and b!7879313 res!3129297) b!7879316))

(assert (= (and b!7879318 c!1446975) b!7879315))

(assert (= (and b!7879318 (not c!1446975)) b!7879319))

(assert (= (and b!7879315 res!3129299) b!7879321))

(assert (= (and b!7879319 (not res!3129298)) b!7879314))

(assert (= (and b!7879314 res!3129301) b!7879320))

(assert (= (or b!7879321 b!7879314) bm!730822))

(assert (= (or b!7879315 b!7879320) bm!730821))

(assert (= (or b!7879316 bm!730822) bm!730820))

(declare-fun m!8267480 () Bool)

(assert (=> b!7879313 m!8267480))

(declare-fun m!8267482 () Bool)

(assert (=> bm!730820 m!8267482))

(declare-fun m!8267484 () Bool)

(assert (=> bm!730821 m!8267484))

(assert (=> b!7879273 d!2355941))

(declare-fun d!2355945 () Bool)

(declare-fun res!3129305 () Bool)

(declare-fun e!4653307 () Bool)

(assert (=> d!2355945 (=> res!3129305 e!4653307)))

(assert (=> d!2355945 (= res!3129305 ((_ is ElementMatch!21181) r2!6150))))

(assert (=> d!2355945 (= (validRegex!11591 r2!6150) e!4653307)))

(declare-fun b!7879322 () Bool)

(declare-fun e!4653305 () Bool)

(declare-fun e!4653304 () Bool)

(assert (=> b!7879322 (= e!4653305 e!4653304)))

(declare-fun res!3129302 () Bool)

(assert (=> b!7879322 (= res!3129302 (not (nullable!9440 (reg!21510 r2!6150))))))

(assert (=> b!7879322 (=> (not res!3129302) (not e!4653304))))

(declare-fun b!7879323 () Bool)

(declare-fun e!4653306 () Bool)

(declare-fun e!4653301 () Bool)

(assert (=> b!7879323 (= e!4653306 e!4653301)))

(declare-fun res!3129306 () Bool)

(assert (=> b!7879323 (=> (not res!3129306) (not e!4653301))))

(declare-fun call!730830 () Bool)

(assert (=> b!7879323 (= res!3129306 call!730830)))

(declare-fun b!7879324 () Bool)

(declare-fun res!3129304 () Bool)

(declare-fun e!4653302 () Bool)

(assert (=> b!7879324 (=> (not res!3129304) (not e!4653302))))

(declare-fun call!730832 () Bool)

(assert (=> b!7879324 (= res!3129304 call!730832)))

(declare-fun e!4653303 () Bool)

(assert (=> b!7879324 (= e!4653303 e!4653302)))

(declare-fun b!7879325 () Bool)

(declare-fun call!730831 () Bool)

(assert (=> b!7879325 (= e!4653304 call!730831)))

(declare-fun b!7879326 () Bool)

(assert (=> b!7879326 (= e!4653307 e!4653305)))

(declare-fun c!1446976 () Bool)

(assert (=> b!7879326 (= c!1446976 ((_ is Star!21181) r2!6150))))

(declare-fun b!7879327 () Bool)

(assert (=> b!7879327 (= e!4653305 e!4653303)))

(declare-fun c!1446977 () Bool)

(assert (=> b!7879327 (= c!1446977 ((_ is Union!21181) r2!6150))))

(declare-fun bm!730825 () Bool)

(assert (=> bm!730825 (= call!730831 (validRegex!11591 (ite c!1446976 (reg!21510 r2!6150) (ite c!1446977 (regTwo!42875 r2!6150) (regOne!42874 r2!6150)))))))

(declare-fun bm!730826 () Bool)

(assert (=> bm!730826 (= call!730832 (validRegex!11591 (ite c!1446977 (regOne!42875 r2!6150) (regTwo!42874 r2!6150))))))

(declare-fun b!7879328 () Bool)

(declare-fun res!3129303 () Bool)

(assert (=> b!7879328 (=> res!3129303 e!4653306)))

(assert (=> b!7879328 (= res!3129303 (not ((_ is Concat!30026) r2!6150)))))

(assert (=> b!7879328 (= e!4653303 e!4653306)))

(declare-fun b!7879329 () Bool)

(assert (=> b!7879329 (= e!4653301 call!730832)))

(declare-fun bm!730827 () Bool)

(assert (=> bm!730827 (= call!730830 call!730831)))

(declare-fun b!7879330 () Bool)

(assert (=> b!7879330 (= e!4653302 call!730830)))

(assert (= (and d!2355945 (not res!3129305)) b!7879326))

(assert (= (and b!7879326 c!1446976) b!7879322))

(assert (= (and b!7879326 (not c!1446976)) b!7879327))

(assert (= (and b!7879322 res!3129302) b!7879325))

(assert (= (and b!7879327 c!1446977) b!7879324))

(assert (= (and b!7879327 (not c!1446977)) b!7879328))

(assert (= (and b!7879324 res!3129304) b!7879330))

(assert (= (and b!7879328 (not res!3129303)) b!7879323))

(assert (= (and b!7879323 res!3129306) b!7879329))

(assert (= (or b!7879330 b!7879323) bm!730827))

(assert (= (or b!7879324 b!7879329) bm!730826))

(assert (= (or b!7879325 bm!730827) bm!730825))

(declare-fun m!8267486 () Bool)

(assert (=> b!7879322 m!8267486))

(declare-fun m!8267488 () Bool)

(assert (=> bm!730825 m!8267488))

(declare-fun m!8267490 () Bool)

(assert (=> bm!730826 m!8267490))

(assert (=> b!7879263 d!2355945))

(declare-fun b!7879388 () Bool)

(declare-fun c!1446999 () Bool)

(assert (=> b!7879388 (= c!1446999 ((_ is Union!21181) r1!6212))))

(declare-fun e!4653339 () Regex!21181)

(declare-fun e!4653341 () Regex!21181)

(assert (=> b!7879388 (= e!4653339 e!4653341)))

(declare-fun call!730849 () Regex!21181)

(declare-fun bm!730841 () Bool)

(assert (=> bm!730841 (= call!730849 (derivativeStep!6410 (ite c!1446999 (regOne!42875 r1!6212) (regTwo!42874 r1!6212)) (h!80364 s!14231)))))

(declare-fun b!7879389 () Bool)

(declare-fun e!4653340 () Regex!21181)

(declare-fun call!730848 () Regex!21181)

(assert (=> b!7879389 (= e!4653340 (Concat!30026 call!730848 r1!6212))))

(declare-fun b!7879390 () Bool)

(declare-fun call!730847 () Regex!21181)

(assert (=> b!7879390 (= e!4653341 (Union!21181 call!730849 call!730847))))

(declare-fun b!7879391 () Bool)

(assert (=> b!7879391 (= e!4653341 e!4653340)))

(declare-fun c!1446996 () Bool)

(assert (=> b!7879391 (= c!1446996 ((_ is Star!21181) r1!6212))))

(declare-fun bm!730843 () Bool)

(assert (=> bm!730843 (= call!730848 call!730847)))

(declare-fun b!7879392 () Bool)

(declare-fun c!1446997 () Bool)

(assert (=> b!7879392 (= c!1446997 (nullable!9440 (regOne!42874 r1!6212)))))

(declare-fun e!4653342 () Regex!21181)

(assert (=> b!7879392 (= e!4653340 e!4653342)))

(declare-fun bm!730844 () Bool)

(assert (=> bm!730844 (= call!730847 (derivativeStep!6410 (ite c!1446999 (regTwo!42875 r1!6212) (ite c!1446996 (reg!21510 r1!6212) (regOne!42874 r1!6212))) (h!80364 s!14231)))))

(declare-fun b!7879393 () Bool)

(declare-fun call!730846 () Regex!21181)

(assert (=> b!7879393 (= e!4653342 (Union!21181 (Concat!30026 call!730846 (regTwo!42874 r1!6212)) EmptyLang!21181))))

(declare-fun b!7879394 () Bool)

(assert (=> b!7879394 (= e!4653339 (ite (= (h!80364 s!14231) (c!1446965 r1!6212)) EmptyExpr!21181 EmptyLang!21181))))

(declare-fun b!7879395 () Bool)

(declare-fun e!4653343 () Regex!21181)

(assert (=> b!7879395 (= e!4653343 EmptyLang!21181)))

(declare-fun d!2355947 () Bool)

(declare-fun lt!2681204 () Regex!21181)

(assert (=> d!2355947 (validRegex!11591 lt!2681204)))

(assert (=> d!2355947 (= lt!2681204 e!4653343)))

(declare-fun c!1447000 () Bool)

(assert (=> d!2355947 (= c!1447000 (or ((_ is EmptyExpr!21181) r1!6212) ((_ is EmptyLang!21181) r1!6212)))))

(assert (=> d!2355947 (validRegex!11591 r1!6212)))

(assert (=> d!2355947 (= (derivativeStep!6410 r1!6212 (h!80364 s!14231)) lt!2681204)))

(declare-fun bm!730842 () Bool)

(assert (=> bm!730842 (= call!730846 call!730848)))

(declare-fun b!7879396 () Bool)

(assert (=> b!7879396 (= e!4653343 e!4653339)))

(declare-fun c!1446998 () Bool)

(assert (=> b!7879396 (= c!1446998 ((_ is ElementMatch!21181) r1!6212))))

(declare-fun b!7879397 () Bool)

(assert (=> b!7879397 (= e!4653342 (Union!21181 (Concat!30026 call!730846 (regTwo!42874 r1!6212)) call!730849))))

(assert (= (and d!2355947 c!1447000) b!7879395))

(assert (= (and d!2355947 (not c!1447000)) b!7879396))

(assert (= (and b!7879396 c!1446998) b!7879394))

(assert (= (and b!7879396 (not c!1446998)) b!7879388))

(assert (= (and b!7879388 c!1446999) b!7879390))

(assert (= (and b!7879388 (not c!1446999)) b!7879391))

(assert (= (and b!7879391 c!1446996) b!7879389))

(assert (= (and b!7879391 (not c!1446996)) b!7879392))

(assert (= (and b!7879392 c!1446997) b!7879397))

(assert (= (and b!7879392 (not c!1446997)) b!7879393))

(assert (= (or b!7879397 b!7879393) bm!730842))

(assert (= (or b!7879389 bm!730842) bm!730843))

(assert (= (or b!7879390 bm!730843) bm!730844))

(assert (= (or b!7879390 b!7879397) bm!730841))

(declare-fun m!8267498 () Bool)

(assert (=> bm!730841 m!8267498))

(declare-fun m!8267500 () Bool)

(assert (=> b!7879392 m!8267500))

(declare-fun m!8267502 () Bool)

(assert (=> bm!730844 m!8267502))

(declare-fun m!8267504 () Bool)

(assert (=> d!2355947 m!8267504))

(assert (=> d!2355947 m!8267464))

(assert (=> b!7879272 d!2355947))

(declare-fun b!7879469 () Bool)

(declare-fun e!4653382 () Bool)

(declare-fun lt!2681210 () Bool)

(declare-fun call!730864 () Bool)

(assert (=> b!7879469 (= e!4653382 (= lt!2681210 call!730864))))

(declare-fun b!7879470 () Bool)

(declare-fun e!4653383 () Bool)

(declare-fun e!4653387 () Bool)

(assert (=> b!7879470 (= e!4653383 e!4653387)))

(declare-fun res!3129361 () Bool)

(assert (=> b!7879470 (=> (not res!3129361) (not e!4653387))))

(assert (=> b!7879470 (= res!3129361 (not lt!2681210))))

(declare-fun d!2355951 () Bool)

(assert (=> d!2355951 e!4653382))

(declare-fun c!1447023 () Bool)

(assert (=> d!2355951 (= c!1447023 ((_ is EmptyExpr!21181) (Union!21181 lt!2681198 lt!2681196)))))

(declare-fun e!4653386 () Bool)

(assert (=> d!2355951 (= lt!2681210 e!4653386)))

(declare-fun c!1447024 () Bool)

(declare-fun isEmpty!42408 (List!74040) Bool)

(assert (=> d!2355951 (= c!1447024 (isEmpty!42408 (t!388775 s!14231)))))

(assert (=> d!2355951 (validRegex!11591 (Union!21181 lt!2681198 lt!2681196))))

(assert (=> d!2355951 (= (matchR!10617 (Union!21181 lt!2681198 lt!2681196) (t!388775 s!14231)) lt!2681210)))

(declare-fun b!7879471 () Bool)

(declare-fun res!3129358 () Bool)

(assert (=> b!7879471 (=> res!3129358 e!4653383)))

(assert (=> b!7879471 (= res!3129358 (not ((_ is ElementMatch!21181) (Union!21181 lt!2681198 lt!2681196))))))

(declare-fun e!4653388 () Bool)

(assert (=> b!7879471 (= e!4653388 e!4653383)))

(declare-fun b!7879472 () Bool)

(declare-fun res!3129357 () Bool)

(assert (=> b!7879472 (=> res!3129357 e!4653383)))

(declare-fun e!4653384 () Bool)

(assert (=> b!7879472 (= res!3129357 e!4653384)))

(declare-fun res!3129364 () Bool)

(assert (=> b!7879472 (=> (not res!3129364) (not e!4653384))))

(assert (=> b!7879472 (= res!3129364 lt!2681210)))

(declare-fun b!7879473 () Bool)

(declare-fun e!4653385 () Bool)

(assert (=> b!7879473 (= e!4653387 e!4653385)))

(declare-fun res!3129360 () Bool)

(assert (=> b!7879473 (=> res!3129360 e!4653385)))

(assert (=> b!7879473 (= res!3129360 call!730864)))

(declare-fun bm!730859 () Bool)

(assert (=> bm!730859 (= call!730864 (isEmpty!42408 (t!388775 s!14231)))))

(declare-fun b!7879474 () Bool)

(assert (=> b!7879474 (= e!4653386 (nullable!9440 (Union!21181 lt!2681198 lt!2681196)))))

(declare-fun b!7879475 () Bool)

(assert (=> b!7879475 (= e!4653388 (not lt!2681210))))

(declare-fun b!7879476 () Bool)

(assert (=> b!7879476 (= e!4653382 e!4653388)))

(declare-fun c!1447022 () Bool)

(assert (=> b!7879476 (= c!1447022 ((_ is EmptyLang!21181) (Union!21181 lt!2681198 lt!2681196)))))

(declare-fun b!7879477 () Bool)

(declare-fun head!16119 (List!74040) C!42688)

(assert (=> b!7879477 (= e!4653384 (= (head!16119 (t!388775 s!14231)) (c!1446965 (Union!21181 lt!2681198 lt!2681196))))))

(declare-fun b!7879478 () Bool)

(declare-fun tail!15662 (List!74040) List!74040)

(assert (=> b!7879478 (= e!4653386 (matchR!10617 (derivativeStep!6410 (Union!21181 lt!2681198 lt!2681196) (head!16119 (t!388775 s!14231))) (tail!15662 (t!388775 s!14231))))))

(declare-fun b!7879479 () Bool)

(declare-fun res!3129359 () Bool)

(assert (=> b!7879479 (=> (not res!3129359) (not e!4653384))))

(assert (=> b!7879479 (= res!3129359 (isEmpty!42408 (tail!15662 (t!388775 s!14231))))))

(declare-fun b!7879480 () Bool)

(declare-fun res!3129362 () Bool)

(assert (=> b!7879480 (=> res!3129362 e!4653385)))

(assert (=> b!7879480 (= res!3129362 (not (isEmpty!42408 (tail!15662 (t!388775 s!14231)))))))

(declare-fun b!7879481 () Bool)

(assert (=> b!7879481 (= e!4653385 (not (= (head!16119 (t!388775 s!14231)) (c!1446965 (Union!21181 lt!2681198 lt!2681196)))))))

(declare-fun b!7879482 () Bool)

(declare-fun res!3129363 () Bool)

(assert (=> b!7879482 (=> (not res!3129363) (not e!4653384))))

(assert (=> b!7879482 (= res!3129363 (not call!730864))))

(assert (= (and d!2355951 c!1447024) b!7879474))

(assert (= (and d!2355951 (not c!1447024)) b!7879478))

(assert (= (and d!2355951 c!1447023) b!7879469))

(assert (= (and d!2355951 (not c!1447023)) b!7879476))

(assert (= (and b!7879476 c!1447022) b!7879475))

(assert (= (and b!7879476 (not c!1447022)) b!7879471))

(assert (= (and b!7879471 (not res!3129358)) b!7879472))

(assert (= (and b!7879472 res!3129364) b!7879482))

(assert (= (and b!7879482 res!3129363) b!7879479))

(assert (= (and b!7879479 res!3129359) b!7879477))

(assert (= (and b!7879472 (not res!3129357)) b!7879470))

(assert (= (and b!7879470 res!3129361) b!7879473))

(assert (= (and b!7879473 (not res!3129360)) b!7879480))

(assert (= (and b!7879480 (not res!3129362)) b!7879481))

(assert (= (or b!7879469 b!7879473 b!7879482) bm!730859))

(declare-fun m!8267528 () Bool)

(assert (=> b!7879474 m!8267528))

(declare-fun m!8267530 () Bool)

(assert (=> b!7879479 m!8267530))

(assert (=> b!7879479 m!8267530))

(declare-fun m!8267532 () Bool)

(assert (=> b!7879479 m!8267532))

(assert (=> b!7879480 m!8267530))

(assert (=> b!7879480 m!8267530))

(assert (=> b!7879480 m!8267532))

(declare-fun m!8267534 () Bool)

(assert (=> b!7879481 m!8267534))

(declare-fun m!8267536 () Bool)

(assert (=> bm!730859 m!8267536))

(assert (=> d!2355951 m!8267536))

(declare-fun m!8267538 () Bool)

(assert (=> d!2355951 m!8267538))

(assert (=> b!7879478 m!8267534))

(assert (=> b!7879478 m!8267534))

(declare-fun m!8267540 () Bool)

(assert (=> b!7879478 m!8267540))

(assert (=> b!7879478 m!8267530))

(assert (=> b!7879478 m!8267540))

(assert (=> b!7879478 m!8267530))

(declare-fun m!8267542 () Bool)

(assert (=> b!7879478 m!8267542))

(assert (=> b!7879477 m!8267534))

(assert (=> b!7879272 d!2355951))

(declare-fun b!7879483 () Bool)

(declare-fun e!4653389 () Bool)

(declare-fun lt!2681211 () Bool)

(declare-fun call!730865 () Bool)

(assert (=> b!7879483 (= e!4653389 (= lt!2681211 call!730865))))

(declare-fun b!7879484 () Bool)

(declare-fun e!4653390 () Bool)

(declare-fun e!4653394 () Bool)

(assert (=> b!7879484 (= e!4653390 e!4653394)))

(declare-fun res!3129369 () Bool)

(assert (=> b!7879484 (=> (not res!3129369) (not e!4653394))))

(assert (=> b!7879484 (= res!3129369 (not lt!2681211))))

(declare-fun d!2355957 () Bool)

(assert (=> d!2355957 e!4653389))

(declare-fun c!1447026 () Bool)

(assert (=> d!2355957 (= c!1447026 ((_ is EmptyExpr!21181) lt!2681197))))

(declare-fun e!4653393 () Bool)

(assert (=> d!2355957 (= lt!2681211 e!4653393)))

(declare-fun c!1447027 () Bool)

(assert (=> d!2355957 (= c!1447027 (isEmpty!42408 s!14231))))

(assert (=> d!2355957 (validRegex!11591 lt!2681197)))

(assert (=> d!2355957 (= (matchR!10617 lt!2681197 s!14231) lt!2681211)))

(declare-fun b!7879485 () Bool)

(declare-fun res!3129366 () Bool)

(assert (=> b!7879485 (=> res!3129366 e!4653390)))

(assert (=> b!7879485 (= res!3129366 (not ((_ is ElementMatch!21181) lt!2681197)))))

(declare-fun e!4653395 () Bool)

(assert (=> b!7879485 (= e!4653395 e!4653390)))

(declare-fun b!7879486 () Bool)

(declare-fun res!3129365 () Bool)

(assert (=> b!7879486 (=> res!3129365 e!4653390)))

(declare-fun e!4653391 () Bool)

(assert (=> b!7879486 (= res!3129365 e!4653391)))

(declare-fun res!3129372 () Bool)

(assert (=> b!7879486 (=> (not res!3129372) (not e!4653391))))

(assert (=> b!7879486 (= res!3129372 lt!2681211)))

(declare-fun b!7879487 () Bool)

(declare-fun e!4653392 () Bool)

(assert (=> b!7879487 (= e!4653394 e!4653392)))

(declare-fun res!3129368 () Bool)

(assert (=> b!7879487 (=> res!3129368 e!4653392)))

(assert (=> b!7879487 (= res!3129368 call!730865)))

(declare-fun bm!730860 () Bool)

(assert (=> bm!730860 (= call!730865 (isEmpty!42408 s!14231))))

(declare-fun b!7879488 () Bool)

(assert (=> b!7879488 (= e!4653393 (nullable!9440 lt!2681197))))

(declare-fun b!7879489 () Bool)

(assert (=> b!7879489 (= e!4653395 (not lt!2681211))))

(declare-fun b!7879490 () Bool)

(assert (=> b!7879490 (= e!4653389 e!4653395)))

(declare-fun c!1447025 () Bool)

(assert (=> b!7879490 (= c!1447025 ((_ is EmptyLang!21181) lt!2681197))))

(declare-fun b!7879491 () Bool)

(assert (=> b!7879491 (= e!4653391 (= (head!16119 s!14231) (c!1446965 lt!2681197)))))

(declare-fun b!7879492 () Bool)

(assert (=> b!7879492 (= e!4653393 (matchR!10617 (derivativeStep!6410 lt!2681197 (head!16119 s!14231)) (tail!15662 s!14231)))))

(declare-fun b!7879493 () Bool)

(declare-fun res!3129367 () Bool)

(assert (=> b!7879493 (=> (not res!3129367) (not e!4653391))))

(assert (=> b!7879493 (= res!3129367 (isEmpty!42408 (tail!15662 s!14231)))))

(declare-fun b!7879494 () Bool)

(declare-fun res!3129370 () Bool)

(assert (=> b!7879494 (=> res!3129370 e!4653392)))

(assert (=> b!7879494 (= res!3129370 (not (isEmpty!42408 (tail!15662 s!14231))))))

(declare-fun b!7879495 () Bool)

(assert (=> b!7879495 (= e!4653392 (not (= (head!16119 s!14231) (c!1446965 lt!2681197))))))

(declare-fun b!7879496 () Bool)

(declare-fun res!3129371 () Bool)

(assert (=> b!7879496 (=> (not res!3129371) (not e!4653391))))

(assert (=> b!7879496 (= res!3129371 (not call!730865))))

(assert (= (and d!2355957 c!1447027) b!7879488))

(assert (= (and d!2355957 (not c!1447027)) b!7879492))

(assert (= (and d!2355957 c!1447026) b!7879483))

(assert (= (and d!2355957 (not c!1447026)) b!7879490))

(assert (= (and b!7879490 c!1447025) b!7879489))

(assert (= (and b!7879490 (not c!1447025)) b!7879485))

(assert (= (and b!7879485 (not res!3129366)) b!7879486))

(assert (= (and b!7879486 res!3129372) b!7879496))

(assert (= (and b!7879496 res!3129371) b!7879493))

(assert (= (and b!7879493 res!3129367) b!7879491))

(assert (= (and b!7879486 (not res!3129365)) b!7879484))

(assert (= (and b!7879484 res!3129369) b!7879487))

(assert (= (and b!7879487 (not res!3129368)) b!7879494))

(assert (= (and b!7879494 (not res!3129370)) b!7879495))

(assert (= (or b!7879483 b!7879487 b!7879496) bm!730860))

(declare-fun m!8267544 () Bool)

(assert (=> b!7879488 m!8267544))

(declare-fun m!8267546 () Bool)

(assert (=> b!7879493 m!8267546))

(assert (=> b!7879493 m!8267546))

(declare-fun m!8267548 () Bool)

(assert (=> b!7879493 m!8267548))

(assert (=> b!7879494 m!8267546))

(assert (=> b!7879494 m!8267546))

(assert (=> b!7879494 m!8267548))

(declare-fun m!8267550 () Bool)

(assert (=> b!7879495 m!8267550))

(declare-fun m!8267552 () Bool)

(assert (=> bm!730860 m!8267552))

(assert (=> d!2355957 m!8267552))

(assert (=> d!2355957 m!8267462))

(assert (=> b!7879492 m!8267550))

(assert (=> b!7879492 m!8267550))

(declare-fun m!8267554 () Bool)

(assert (=> b!7879492 m!8267554))

(assert (=> b!7879492 m!8267546))

(assert (=> b!7879492 m!8267554))

(assert (=> b!7879492 m!8267546))

(declare-fun m!8267556 () Bool)

(assert (=> b!7879492 m!8267556))

(assert (=> b!7879491 m!8267550))

(assert (=> b!7879272 d!2355957))

(declare-fun b!7879497 () Bool)

(declare-fun c!1447031 () Bool)

(assert (=> b!7879497 (= c!1447031 ((_ is Union!21181) r2!6150))))

(declare-fun e!4653396 () Regex!21181)

(declare-fun e!4653398 () Regex!21181)

(assert (=> b!7879497 (= e!4653396 e!4653398)))

(declare-fun call!730869 () Regex!21181)

(declare-fun bm!730861 () Bool)

(assert (=> bm!730861 (= call!730869 (derivativeStep!6410 (ite c!1447031 (regOne!42875 r2!6150) (regTwo!42874 r2!6150)) (h!80364 s!14231)))))

(declare-fun b!7879498 () Bool)

(declare-fun e!4653397 () Regex!21181)

(declare-fun call!730868 () Regex!21181)

(assert (=> b!7879498 (= e!4653397 (Concat!30026 call!730868 r2!6150))))

(declare-fun b!7879499 () Bool)

(declare-fun call!730867 () Regex!21181)

(assert (=> b!7879499 (= e!4653398 (Union!21181 call!730869 call!730867))))

(declare-fun b!7879500 () Bool)

(assert (=> b!7879500 (= e!4653398 e!4653397)))

(declare-fun c!1447028 () Bool)

(assert (=> b!7879500 (= c!1447028 ((_ is Star!21181) r2!6150))))

(declare-fun bm!730863 () Bool)

(assert (=> bm!730863 (= call!730868 call!730867)))

(declare-fun b!7879501 () Bool)

(declare-fun c!1447029 () Bool)

(assert (=> b!7879501 (= c!1447029 (nullable!9440 (regOne!42874 r2!6150)))))

(declare-fun e!4653399 () Regex!21181)

(assert (=> b!7879501 (= e!4653397 e!4653399)))

(declare-fun bm!730864 () Bool)

(assert (=> bm!730864 (= call!730867 (derivativeStep!6410 (ite c!1447031 (regTwo!42875 r2!6150) (ite c!1447028 (reg!21510 r2!6150) (regOne!42874 r2!6150))) (h!80364 s!14231)))))

(declare-fun b!7879502 () Bool)

(declare-fun call!730866 () Regex!21181)

(assert (=> b!7879502 (= e!4653399 (Union!21181 (Concat!30026 call!730866 (regTwo!42874 r2!6150)) EmptyLang!21181))))

(declare-fun b!7879503 () Bool)

(assert (=> b!7879503 (= e!4653396 (ite (= (h!80364 s!14231) (c!1446965 r2!6150)) EmptyExpr!21181 EmptyLang!21181))))

(declare-fun b!7879504 () Bool)

(declare-fun e!4653400 () Regex!21181)

(assert (=> b!7879504 (= e!4653400 EmptyLang!21181)))

(declare-fun d!2355959 () Bool)

(declare-fun lt!2681212 () Regex!21181)

(assert (=> d!2355959 (validRegex!11591 lt!2681212)))

(assert (=> d!2355959 (= lt!2681212 e!4653400)))

(declare-fun c!1447032 () Bool)

(assert (=> d!2355959 (= c!1447032 (or ((_ is EmptyExpr!21181) r2!6150) ((_ is EmptyLang!21181) r2!6150)))))

(assert (=> d!2355959 (validRegex!11591 r2!6150)))

(assert (=> d!2355959 (= (derivativeStep!6410 r2!6150 (h!80364 s!14231)) lt!2681212)))

(declare-fun bm!730862 () Bool)

(assert (=> bm!730862 (= call!730866 call!730868)))

(declare-fun b!7879505 () Bool)

(assert (=> b!7879505 (= e!4653400 e!4653396)))

(declare-fun c!1447030 () Bool)

(assert (=> b!7879505 (= c!1447030 ((_ is ElementMatch!21181) r2!6150))))

(declare-fun b!7879506 () Bool)

(assert (=> b!7879506 (= e!4653399 (Union!21181 (Concat!30026 call!730866 (regTwo!42874 r2!6150)) call!730869))))

(assert (= (and d!2355959 c!1447032) b!7879504))

(assert (= (and d!2355959 (not c!1447032)) b!7879505))

(assert (= (and b!7879505 c!1447030) b!7879503))

(assert (= (and b!7879505 (not c!1447030)) b!7879497))

(assert (= (and b!7879497 c!1447031) b!7879499))

(assert (= (and b!7879497 (not c!1447031)) b!7879500))

(assert (= (and b!7879500 c!1447028) b!7879498))

(assert (= (and b!7879500 (not c!1447028)) b!7879501))

(assert (= (and b!7879501 c!1447029) b!7879506))

(assert (= (and b!7879501 (not c!1447029)) b!7879502))

(assert (= (or b!7879506 b!7879502) bm!730862))

(assert (= (or b!7879498 bm!730862) bm!730863))

(assert (= (or b!7879499 bm!730863) bm!730864))

(assert (= (or b!7879499 b!7879506) bm!730861))

(declare-fun m!8267558 () Bool)

(assert (=> bm!730861 m!8267558))

(declare-fun m!8267560 () Bool)

(assert (=> b!7879501 m!8267560))

(declare-fun m!8267562 () Bool)

(assert (=> bm!730864 m!8267562))

(declare-fun m!8267564 () Bool)

(assert (=> d!2355959 m!8267564))

(assert (=> d!2355959 m!8267466))

(assert (=> b!7879272 d!2355959))

(declare-fun d!2355961 () Bool)

(assert (=> d!2355961 (matchR!10617 (Union!21181 lt!2681198 lt!2681196) (t!388775 s!14231))))

(declare-fun lt!2681219 () Unit!168992)

(declare-fun choose!59693 (Regex!21181 Regex!21181 List!74040) Unit!168992)

(assert (=> d!2355961 (= lt!2681219 (choose!59693 lt!2681196 lt!2681198 (t!388775 s!14231)))))

(declare-fun e!4653427 () Bool)

(assert (=> d!2355961 e!4653427))

(declare-fun res!3129391 () Bool)

(assert (=> d!2355961 (=> (not res!3129391) (not e!4653427))))

(assert (=> d!2355961 (= res!3129391 (validRegex!11591 lt!2681196))))

(assert (=> d!2355961 (= (lemmaReversedUnionAcceptsSameString!54 lt!2681196 lt!2681198 (t!388775 s!14231)) lt!2681219)))

(declare-fun b!7879557 () Bool)

(assert (=> b!7879557 (= e!4653427 (validRegex!11591 lt!2681198))))

(assert (= (and d!2355961 res!3129391) b!7879557))

(assert (=> d!2355961 m!8267470))

(declare-fun m!8267598 () Bool)

(assert (=> d!2355961 m!8267598))

(declare-fun m!8267600 () Bool)

(assert (=> d!2355961 m!8267600))

(declare-fun m!8267602 () Bool)

(assert (=> b!7879557 m!8267602))

(assert (=> b!7879272 d!2355961))

(declare-fun b!7879558 () Bool)

(declare-fun e!4653428 () Bool)

(declare-fun lt!2681220 () Bool)

(declare-fun call!730880 () Bool)

(assert (=> b!7879558 (= e!4653428 (= lt!2681220 call!730880))))

(declare-fun b!7879559 () Bool)

(declare-fun e!4653429 () Bool)

(declare-fun e!4653433 () Bool)

(assert (=> b!7879559 (= e!4653429 e!4653433)))

(declare-fun res!3129396 () Bool)

(assert (=> b!7879559 (=> (not res!3129396) (not e!4653433))))

(assert (=> b!7879559 (= res!3129396 (not lt!2681220))))

(declare-fun d!2355969 () Bool)

(assert (=> d!2355969 e!4653428))

(declare-fun c!1447050 () Bool)

(assert (=> d!2355969 (= c!1447050 ((_ is EmptyExpr!21181) (Union!21181 r1!6212 r2!6150)))))

(declare-fun e!4653432 () Bool)

(assert (=> d!2355969 (= lt!2681220 e!4653432)))

(declare-fun c!1447051 () Bool)

(assert (=> d!2355969 (= c!1447051 (isEmpty!42408 s!14231))))

(assert (=> d!2355969 (validRegex!11591 (Union!21181 r1!6212 r2!6150))))

(assert (=> d!2355969 (= (matchR!10617 (Union!21181 r1!6212 r2!6150) s!14231) lt!2681220)))

(declare-fun b!7879560 () Bool)

(declare-fun res!3129393 () Bool)

(assert (=> b!7879560 (=> res!3129393 e!4653429)))

(assert (=> b!7879560 (= res!3129393 (not ((_ is ElementMatch!21181) (Union!21181 r1!6212 r2!6150))))))

(declare-fun e!4653434 () Bool)

(assert (=> b!7879560 (= e!4653434 e!4653429)))

(declare-fun b!7879561 () Bool)

(declare-fun res!3129392 () Bool)

(assert (=> b!7879561 (=> res!3129392 e!4653429)))

(declare-fun e!4653430 () Bool)

(assert (=> b!7879561 (= res!3129392 e!4653430)))

(declare-fun res!3129399 () Bool)

(assert (=> b!7879561 (=> (not res!3129399) (not e!4653430))))

(assert (=> b!7879561 (= res!3129399 lt!2681220)))

(declare-fun b!7879562 () Bool)

(declare-fun e!4653431 () Bool)

(assert (=> b!7879562 (= e!4653433 e!4653431)))

(declare-fun res!3129395 () Bool)

(assert (=> b!7879562 (=> res!3129395 e!4653431)))

(assert (=> b!7879562 (= res!3129395 call!730880)))

(declare-fun bm!730875 () Bool)

(assert (=> bm!730875 (= call!730880 (isEmpty!42408 s!14231))))

(declare-fun b!7879563 () Bool)

(assert (=> b!7879563 (= e!4653432 (nullable!9440 (Union!21181 r1!6212 r2!6150)))))

(declare-fun b!7879564 () Bool)

(assert (=> b!7879564 (= e!4653434 (not lt!2681220))))

(declare-fun b!7879565 () Bool)

(assert (=> b!7879565 (= e!4653428 e!4653434)))

(declare-fun c!1447049 () Bool)

(assert (=> b!7879565 (= c!1447049 ((_ is EmptyLang!21181) (Union!21181 r1!6212 r2!6150)))))

(declare-fun b!7879566 () Bool)

(assert (=> b!7879566 (= e!4653430 (= (head!16119 s!14231) (c!1446965 (Union!21181 r1!6212 r2!6150))))))

(declare-fun b!7879567 () Bool)

(assert (=> b!7879567 (= e!4653432 (matchR!10617 (derivativeStep!6410 (Union!21181 r1!6212 r2!6150) (head!16119 s!14231)) (tail!15662 s!14231)))))

(declare-fun b!7879568 () Bool)

(declare-fun res!3129394 () Bool)

(assert (=> b!7879568 (=> (not res!3129394) (not e!4653430))))

(assert (=> b!7879568 (= res!3129394 (isEmpty!42408 (tail!15662 s!14231)))))

(declare-fun b!7879569 () Bool)

(declare-fun res!3129397 () Bool)

(assert (=> b!7879569 (=> res!3129397 e!4653431)))

(assert (=> b!7879569 (= res!3129397 (not (isEmpty!42408 (tail!15662 s!14231))))))

(declare-fun b!7879570 () Bool)

(assert (=> b!7879570 (= e!4653431 (not (= (head!16119 s!14231) (c!1446965 (Union!21181 r1!6212 r2!6150)))))))

(declare-fun b!7879571 () Bool)

(declare-fun res!3129398 () Bool)

(assert (=> b!7879571 (=> (not res!3129398) (not e!4653430))))

(assert (=> b!7879571 (= res!3129398 (not call!730880))))

(assert (= (and d!2355969 c!1447051) b!7879563))

(assert (= (and d!2355969 (not c!1447051)) b!7879567))

(assert (= (and d!2355969 c!1447050) b!7879558))

(assert (= (and d!2355969 (not c!1447050)) b!7879565))

(assert (= (and b!7879565 c!1447049) b!7879564))

(assert (= (and b!7879565 (not c!1447049)) b!7879560))

(assert (= (and b!7879560 (not res!3129393)) b!7879561))

(assert (= (and b!7879561 res!3129399) b!7879571))

(assert (= (and b!7879571 res!3129398) b!7879568))

(assert (= (and b!7879568 res!3129394) b!7879566))

(assert (= (and b!7879561 (not res!3129392)) b!7879559))

(assert (= (and b!7879559 res!3129396) b!7879562))

(assert (= (and b!7879562 (not res!3129395)) b!7879569))

(assert (= (and b!7879569 (not res!3129397)) b!7879570))

(assert (= (or b!7879558 b!7879562 b!7879571) bm!730875))

(declare-fun m!8267610 () Bool)

(assert (=> b!7879563 m!8267610))

(assert (=> b!7879568 m!8267546))

(assert (=> b!7879568 m!8267546))

(assert (=> b!7879568 m!8267548))

(assert (=> b!7879569 m!8267546))

(assert (=> b!7879569 m!8267546))

(assert (=> b!7879569 m!8267548))

(assert (=> b!7879570 m!8267550))

(assert (=> bm!730875 m!8267552))

(assert (=> d!2355969 m!8267552))

(declare-fun m!8267612 () Bool)

(assert (=> d!2355969 m!8267612))

(assert (=> b!7879567 m!8267550))

(assert (=> b!7879567 m!8267550))

(declare-fun m!8267614 () Bool)

(assert (=> b!7879567 m!8267614))

(assert (=> b!7879567 m!8267546))

(assert (=> b!7879567 m!8267614))

(assert (=> b!7879567 m!8267546))

(declare-fun m!8267616 () Bool)

(assert (=> b!7879567 m!8267616))

(assert (=> b!7879566 m!8267550))

(assert (=> b!7879267 d!2355969))

(declare-fun d!2355973 () Bool)

(declare-fun res!3129403 () Bool)

(declare-fun e!4653441 () Bool)

(assert (=> d!2355973 (=> res!3129403 e!4653441)))

(assert (=> d!2355973 (= res!3129403 ((_ is ElementMatch!21181) r1!6212))))

(assert (=> d!2355973 (= (validRegex!11591 r1!6212) e!4653441)))

(declare-fun b!7879572 () Bool)

(declare-fun e!4653439 () Bool)

(declare-fun e!4653438 () Bool)

(assert (=> b!7879572 (= e!4653439 e!4653438)))

(declare-fun res!3129400 () Bool)

(assert (=> b!7879572 (= res!3129400 (not (nullable!9440 (reg!21510 r1!6212))))))

(assert (=> b!7879572 (=> (not res!3129400) (not e!4653438))))

(declare-fun b!7879573 () Bool)

(declare-fun e!4653440 () Bool)

(declare-fun e!4653435 () Bool)

(assert (=> b!7879573 (= e!4653440 e!4653435)))

(declare-fun res!3129404 () Bool)

(assert (=> b!7879573 (=> (not res!3129404) (not e!4653435))))

(declare-fun call!730881 () Bool)

(assert (=> b!7879573 (= res!3129404 call!730881)))

(declare-fun b!7879574 () Bool)

(declare-fun res!3129402 () Bool)

(declare-fun e!4653436 () Bool)

(assert (=> b!7879574 (=> (not res!3129402) (not e!4653436))))

(declare-fun call!730883 () Bool)

(assert (=> b!7879574 (= res!3129402 call!730883)))

(declare-fun e!4653437 () Bool)

(assert (=> b!7879574 (= e!4653437 e!4653436)))

(declare-fun b!7879575 () Bool)

(declare-fun call!730882 () Bool)

(assert (=> b!7879575 (= e!4653438 call!730882)))

(declare-fun b!7879576 () Bool)

(assert (=> b!7879576 (= e!4653441 e!4653439)))

(declare-fun c!1447052 () Bool)

(assert (=> b!7879576 (= c!1447052 ((_ is Star!21181) r1!6212))))

(declare-fun b!7879577 () Bool)

(assert (=> b!7879577 (= e!4653439 e!4653437)))

(declare-fun c!1447053 () Bool)

(assert (=> b!7879577 (= c!1447053 ((_ is Union!21181) r1!6212))))

(declare-fun bm!730876 () Bool)

(assert (=> bm!730876 (= call!730882 (validRegex!11591 (ite c!1447052 (reg!21510 r1!6212) (ite c!1447053 (regTwo!42875 r1!6212) (regOne!42874 r1!6212)))))))

(declare-fun bm!730877 () Bool)

(assert (=> bm!730877 (= call!730883 (validRegex!11591 (ite c!1447053 (regOne!42875 r1!6212) (regTwo!42874 r1!6212))))))

(declare-fun b!7879578 () Bool)

(declare-fun res!3129401 () Bool)

(assert (=> b!7879578 (=> res!3129401 e!4653440)))

(assert (=> b!7879578 (= res!3129401 (not ((_ is Concat!30026) r1!6212)))))

(assert (=> b!7879578 (= e!4653437 e!4653440)))

(declare-fun b!7879579 () Bool)

(assert (=> b!7879579 (= e!4653435 call!730883)))

(declare-fun bm!730878 () Bool)

(assert (=> bm!730878 (= call!730881 call!730882)))

(declare-fun b!7879580 () Bool)

(assert (=> b!7879580 (= e!4653436 call!730881)))

(assert (= (and d!2355973 (not res!3129403)) b!7879576))

(assert (= (and b!7879576 c!1447052) b!7879572))

(assert (= (and b!7879576 (not c!1447052)) b!7879577))

(assert (= (and b!7879572 res!3129400) b!7879575))

(assert (= (and b!7879577 c!1447053) b!7879574))

(assert (= (and b!7879577 (not c!1447053)) b!7879578))

(assert (= (and b!7879574 res!3129402) b!7879580))

(assert (= (and b!7879578 (not res!3129401)) b!7879573))

(assert (= (and b!7879573 res!3129404) b!7879579))

(assert (= (or b!7879580 b!7879573) bm!730878))

(assert (= (or b!7879574 b!7879579) bm!730877))

(assert (= (or b!7879575 bm!730878) bm!730876))

(declare-fun m!8267618 () Bool)

(assert (=> b!7879572 m!8267618))

(declare-fun m!8267620 () Bool)

(assert (=> bm!730876 m!8267620))

(declare-fun m!8267622 () Bool)

(assert (=> bm!730877 m!8267622))

(assert (=> start!744230 d!2355973))

(declare-fun b!7879596 () Bool)

(declare-fun e!4653447 () Bool)

(declare-fun tp!2341115 () Bool)

(assert (=> b!7879596 (= e!4653447 tp!2341115)))

(declare-fun b!7879597 () Bool)

(declare-fun tp!2341112 () Bool)

(declare-fun tp!2341113 () Bool)

(assert (=> b!7879597 (= e!4653447 (and tp!2341112 tp!2341113))))

(declare-fun b!7879594 () Bool)

(assert (=> b!7879594 (= e!4653447 tp_is_empty!52761)))

(assert (=> b!7879268 (= tp!2341094 e!4653447)))

(declare-fun b!7879595 () Bool)

(declare-fun tp!2341114 () Bool)

(declare-fun tp!2341111 () Bool)

(assert (=> b!7879595 (= e!4653447 (and tp!2341114 tp!2341111))))

(assert (= (and b!7879268 ((_ is ElementMatch!21181) (regOne!42875 r2!6150))) b!7879594))

(assert (= (and b!7879268 ((_ is Concat!30026) (regOne!42875 r2!6150))) b!7879595))

(assert (= (and b!7879268 ((_ is Star!21181) (regOne!42875 r2!6150))) b!7879596))

(assert (= (and b!7879268 ((_ is Union!21181) (regOne!42875 r2!6150))) b!7879597))

(declare-fun b!7879609 () Bool)

(declare-fun e!4653455 () Bool)

(declare-fun tp!2341120 () Bool)

(assert (=> b!7879609 (= e!4653455 tp!2341120)))

(declare-fun b!7879610 () Bool)

(declare-fun tp!2341117 () Bool)

(declare-fun tp!2341118 () Bool)

(assert (=> b!7879610 (= e!4653455 (and tp!2341117 tp!2341118))))

(declare-fun b!7879607 () Bool)

(assert (=> b!7879607 (= e!4653455 tp_is_empty!52761)))

(assert (=> b!7879268 (= tp!2341100 e!4653455)))

(declare-fun b!7879608 () Bool)

(declare-fun tp!2341119 () Bool)

(declare-fun tp!2341116 () Bool)

(assert (=> b!7879608 (= e!4653455 (and tp!2341119 tp!2341116))))

(assert (= (and b!7879268 ((_ is ElementMatch!21181) (regTwo!42875 r2!6150))) b!7879607))

(assert (= (and b!7879268 ((_ is Concat!30026) (regTwo!42875 r2!6150))) b!7879608))

(assert (= (and b!7879268 ((_ is Star!21181) (regTwo!42875 r2!6150))) b!7879609))

(assert (= (and b!7879268 ((_ is Union!21181) (regTwo!42875 r2!6150))) b!7879610))

(declare-fun b!7879613 () Bool)

(declare-fun e!4653456 () Bool)

(declare-fun tp!2341125 () Bool)

(assert (=> b!7879613 (= e!4653456 tp!2341125)))

(declare-fun b!7879614 () Bool)

(declare-fun tp!2341122 () Bool)

(declare-fun tp!2341123 () Bool)

(assert (=> b!7879614 (= e!4653456 (and tp!2341122 tp!2341123))))

(declare-fun b!7879611 () Bool)

(assert (=> b!7879611 (= e!4653456 tp_is_empty!52761)))

(assert (=> b!7879270 (= tp!2341092 e!4653456)))

(declare-fun b!7879612 () Bool)

(declare-fun tp!2341124 () Bool)

(declare-fun tp!2341121 () Bool)

(assert (=> b!7879612 (= e!4653456 (and tp!2341124 tp!2341121))))

(assert (= (and b!7879270 ((_ is ElementMatch!21181) (reg!21510 r1!6212))) b!7879611))

(assert (= (and b!7879270 ((_ is Concat!30026) (reg!21510 r1!6212))) b!7879612))

(assert (= (and b!7879270 ((_ is Star!21181) (reg!21510 r1!6212))) b!7879613))

(assert (= (and b!7879270 ((_ is Union!21181) (reg!21510 r1!6212))) b!7879614))

(declare-fun b!7879617 () Bool)

(declare-fun e!4653457 () Bool)

(declare-fun tp!2341130 () Bool)

(assert (=> b!7879617 (= e!4653457 tp!2341130)))

(declare-fun b!7879618 () Bool)

(declare-fun tp!2341127 () Bool)

(declare-fun tp!2341128 () Bool)

(assert (=> b!7879618 (= e!4653457 (and tp!2341127 tp!2341128))))

(declare-fun b!7879615 () Bool)

(assert (=> b!7879615 (= e!4653457 tp_is_empty!52761)))

(assert (=> b!7879265 (= tp!2341095 e!4653457)))

(declare-fun b!7879616 () Bool)

(declare-fun tp!2341129 () Bool)

(declare-fun tp!2341126 () Bool)

(assert (=> b!7879616 (= e!4653457 (and tp!2341129 tp!2341126))))

(assert (= (and b!7879265 ((_ is ElementMatch!21181) (regOne!42874 r2!6150))) b!7879615))

(assert (= (and b!7879265 ((_ is Concat!30026) (regOne!42874 r2!6150))) b!7879616))

(assert (= (and b!7879265 ((_ is Star!21181) (regOne!42874 r2!6150))) b!7879617))

(assert (= (and b!7879265 ((_ is Union!21181) (regOne!42874 r2!6150))) b!7879618))

(declare-fun b!7879627 () Bool)

(declare-fun e!4653460 () Bool)

(declare-fun tp!2341137 () Bool)

(assert (=> b!7879627 (= e!4653460 tp!2341137)))

(declare-fun b!7879628 () Bool)

(declare-fun tp!2341134 () Bool)

(declare-fun tp!2341135 () Bool)

(assert (=> b!7879628 (= e!4653460 (and tp!2341134 tp!2341135))))

(declare-fun b!7879625 () Bool)

(assert (=> b!7879625 (= e!4653460 tp_is_empty!52761)))

(assert (=> b!7879265 (= tp!2341098 e!4653460)))

(declare-fun b!7879626 () Bool)

(declare-fun tp!2341136 () Bool)

(declare-fun tp!2341133 () Bool)

(assert (=> b!7879626 (= e!4653460 (and tp!2341136 tp!2341133))))

(assert (= (and b!7879265 ((_ is ElementMatch!21181) (regTwo!42874 r2!6150))) b!7879625))

(assert (= (and b!7879265 ((_ is Concat!30026) (regTwo!42874 r2!6150))) b!7879626))

(assert (= (and b!7879265 ((_ is Star!21181) (regTwo!42874 r2!6150))) b!7879627))

(assert (= (and b!7879265 ((_ is Union!21181) (regTwo!42874 r2!6150))) b!7879628))

(declare-fun b!7879635 () Bool)

(declare-fun e!4653461 () Bool)

(declare-fun tp!2341148 () Bool)

(assert (=> b!7879635 (= e!4653461 tp!2341148)))

(declare-fun b!7879636 () Bool)

(declare-fun tp!2341145 () Bool)

(declare-fun tp!2341146 () Bool)

(assert (=> b!7879636 (= e!4653461 (and tp!2341145 tp!2341146))))

(declare-fun b!7879633 () Bool)

(assert (=> b!7879633 (= e!4653461 tp_is_empty!52761)))

(assert (=> b!7879276 (= tp!2341090 e!4653461)))

(declare-fun b!7879634 () Bool)

(declare-fun tp!2341147 () Bool)

(declare-fun tp!2341144 () Bool)

(assert (=> b!7879634 (= e!4653461 (and tp!2341147 tp!2341144))))

(assert (= (and b!7879276 ((_ is ElementMatch!21181) (regOne!42874 r1!6212))) b!7879633))

(assert (= (and b!7879276 ((_ is Concat!30026) (regOne!42874 r1!6212))) b!7879634))

(assert (= (and b!7879276 ((_ is Star!21181) (regOne!42874 r1!6212))) b!7879635))

(assert (= (and b!7879276 ((_ is Union!21181) (regOne!42874 r1!6212))) b!7879636))

(declare-fun b!7879639 () Bool)

(declare-fun e!4653462 () Bool)

(declare-fun tp!2341155 () Bool)

(assert (=> b!7879639 (= e!4653462 tp!2341155)))

(declare-fun b!7879640 () Bool)

(declare-fun tp!2341152 () Bool)

(declare-fun tp!2341153 () Bool)

(assert (=> b!7879640 (= e!4653462 (and tp!2341152 tp!2341153))))

(declare-fun b!7879637 () Bool)

(assert (=> b!7879637 (= e!4653462 tp_is_empty!52761)))

(assert (=> b!7879276 (= tp!2341091 e!4653462)))

(declare-fun b!7879638 () Bool)

(declare-fun tp!2341154 () Bool)

(declare-fun tp!2341151 () Bool)

(assert (=> b!7879638 (= e!4653462 (and tp!2341154 tp!2341151))))

(assert (= (and b!7879276 ((_ is ElementMatch!21181) (regTwo!42874 r1!6212))) b!7879637))

(assert (= (and b!7879276 ((_ is Concat!30026) (regTwo!42874 r1!6212))) b!7879638))

(assert (= (and b!7879276 ((_ is Star!21181) (regTwo!42874 r1!6212))) b!7879639))

(assert (= (and b!7879276 ((_ is Union!21181) (regTwo!42874 r1!6212))) b!7879640))

(declare-fun b!7879649 () Bool)

(declare-fun e!4653466 () Bool)

(declare-fun tp!2341163 () Bool)

(assert (=> b!7879649 (= e!4653466 (and tp_is_empty!52761 tp!2341163))))

(assert (=> b!7879271 (= tp!2341099 e!4653466)))

(assert (= (and b!7879271 ((_ is Cons!73916) (t!388775 s!14231))) b!7879649))

(declare-fun b!7879656 () Bool)

(declare-fun e!4653468 () Bool)

(declare-fun tp!2341173 () Bool)

(assert (=> b!7879656 (= e!4653468 tp!2341173)))

(declare-fun b!7879657 () Bool)

(declare-fun tp!2341170 () Bool)

(declare-fun tp!2341171 () Bool)

(assert (=> b!7879657 (= e!4653468 (and tp!2341170 tp!2341171))))

(declare-fun b!7879654 () Bool)

(assert (=> b!7879654 (= e!4653468 tp_is_empty!52761)))

(assert (=> b!7879274 (= tp!2341093 e!4653468)))

(declare-fun b!7879655 () Bool)

(declare-fun tp!2341172 () Bool)

(declare-fun tp!2341169 () Bool)

(assert (=> b!7879655 (= e!4653468 (and tp!2341172 tp!2341169))))

(assert (= (and b!7879274 ((_ is ElementMatch!21181) (regOne!42875 r1!6212))) b!7879654))

(assert (= (and b!7879274 ((_ is Concat!30026) (regOne!42875 r1!6212))) b!7879655))

(assert (= (and b!7879274 ((_ is Star!21181) (regOne!42875 r1!6212))) b!7879656))

(assert (= (and b!7879274 ((_ is Union!21181) (regOne!42875 r1!6212))) b!7879657))

(declare-fun b!7879668 () Bool)

(declare-fun e!4653471 () Bool)

(declare-fun tp!2341188 () Bool)

(assert (=> b!7879668 (= e!4653471 tp!2341188)))

(declare-fun b!7879669 () Bool)

(declare-fun tp!2341185 () Bool)

(declare-fun tp!2341186 () Bool)

(assert (=> b!7879669 (= e!4653471 (and tp!2341185 tp!2341186))))

(declare-fun b!7879666 () Bool)

(assert (=> b!7879666 (= e!4653471 tp_is_empty!52761)))

(assert (=> b!7879274 (= tp!2341096 e!4653471)))

(declare-fun b!7879667 () Bool)

(declare-fun tp!2341187 () Bool)

(declare-fun tp!2341184 () Bool)

(assert (=> b!7879667 (= e!4653471 (and tp!2341187 tp!2341184))))

(assert (= (and b!7879274 ((_ is ElementMatch!21181) (regTwo!42875 r1!6212))) b!7879666))

(assert (= (and b!7879274 ((_ is Concat!30026) (regTwo!42875 r1!6212))) b!7879667))

(assert (= (and b!7879274 ((_ is Star!21181) (regTwo!42875 r1!6212))) b!7879668))

(assert (= (and b!7879274 ((_ is Union!21181) (regTwo!42875 r1!6212))) b!7879669))

(declare-fun b!7879676 () Bool)

(declare-fun e!4653473 () Bool)

(declare-fun tp!2341198 () Bool)

(assert (=> b!7879676 (= e!4653473 tp!2341198)))

(declare-fun b!7879677 () Bool)

(declare-fun tp!2341195 () Bool)

(declare-fun tp!2341196 () Bool)

(assert (=> b!7879677 (= e!4653473 (and tp!2341195 tp!2341196))))

(declare-fun b!7879674 () Bool)

(assert (=> b!7879674 (= e!4653473 tp_is_empty!52761)))

(assert (=> b!7879275 (= tp!2341097 e!4653473)))

(declare-fun b!7879675 () Bool)

(declare-fun tp!2341197 () Bool)

(declare-fun tp!2341194 () Bool)

(assert (=> b!7879675 (= e!4653473 (and tp!2341197 tp!2341194))))

(assert (= (and b!7879275 ((_ is ElementMatch!21181) (reg!21510 r2!6150))) b!7879674))

(assert (= (and b!7879275 ((_ is Concat!30026) (reg!21510 r2!6150))) b!7879675))

(assert (= (and b!7879275 ((_ is Star!21181) (reg!21510 r2!6150))) b!7879676))

(assert (= (and b!7879275 ((_ is Union!21181) (reg!21510 r2!6150))) b!7879677))

(check-sat (not b!7879493) (not b!7879636) (not b!7879675) (not bm!730825) (not b!7879479) (not bm!730864) (not b!7879501) (not b!7879676) (not bm!730820) (not b!7879635) (not bm!730877) (not b!7879478) (not bm!730876) (not b!7879614) (not b!7879474) (not d!2355951) (not d!2355959) (not b!7879568) (not b!7879494) (not b!7879668) (not b!7879488) (not b!7879639) (not b!7879492) (not d!2355969) (not bm!730875) (not b!7879628) (not d!2355961) (not b!7879609) (not b!7879572) (not b!7879638) (not b!7879612) (not b!7879480) (not b!7879627) tp_is_empty!52761 (not b!7879596) (not b!7879495) (not b!7879569) (not b!7879477) (not bm!730826) (not b!7879322) (not b!7879657) (not b!7879667) (not b!7879313) (not b!7879392) (not d!2355947) (not b!7879617) (not bm!730860) (not b!7879608) (not b!7879570) (not b!7879616) (not b!7879595) (not b!7879649) (not b!7879618) (not bm!730859) (not b!7879567) (not d!2355957) (not b!7879597) (not b!7879481) (not b!7879557) (not b!7879634) (not b!7879613) (not bm!730844) (not b!7879640) (not b!7879626) (not b!7879566) (not b!7879656) (not b!7879669) (not b!7879491) (not b!7879563) (not bm!730841) (not b!7879655) (not b!7879610) (not bm!730861) (not b!7879677) (not bm!730821))
(check-sat)
