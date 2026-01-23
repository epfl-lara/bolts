; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90996 () Bool)

(assert start!90996)

(declare-fun b!1057168 () Bool)

(declare-fun e!671174 () Bool)

(declare-fun e!671171 () Bool)

(assert (=> b!1057168 (= e!671174 e!671171)))

(declare-fun res!472661 () Bool)

(assert (=> b!1057168 (=> res!472661 e!671171)))

(declare-fun lt!359198 () Bool)

(assert (=> b!1057168 (= res!472661 (not lt!359198))))

(declare-fun e!671172 () Bool)

(assert (=> b!1057168 e!671172))

(declare-fun res!472665 () Bool)

(assert (=> b!1057168 (=> res!472665 e!671172)))

(assert (=> b!1057168 (= res!472665 lt!359198)))

(declare-datatypes ((C!6382 0))(
  ( (C!6383 (val!3439 Int)) )
))
(declare-datatypes ((Regex!2906 0))(
  ( (ElementMatch!2906 (c!176943 C!6382)) (Concat!4739 (regOne!6324 Regex!2906) (regTwo!6324 Regex!2906)) (EmptyExpr!2906) (Star!2906 (reg!3235 Regex!2906)) (EmptyLang!2906) (Union!2906 (regOne!6325 Regex!2906) (regTwo!6325 Regex!2906)) )
))
(declare-fun lt!359200 () Regex!2906)

(declare-datatypes ((List!10136 0))(
  ( (Nil!10120) (Cons!10120 (h!15521 C!6382) (t!101182 List!10136)) )
))
(declare-fun s!10566 () List!10136)

(declare-fun matchR!1442 (Regex!2906 List!10136) Bool)

(assert (=> b!1057168 (= lt!359198 (matchR!1442 lt!359200 s!10566))))

(declare-datatypes ((Unit!15487 0))(
  ( (Unit!15488) )
))
(declare-fun lt!359203 () Unit!15487)

(declare-fun lt!359201 () Regex!2906)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!85 (Regex!2906 Regex!2906 List!10136) Unit!15487)

(assert (=> b!1057168 (= lt!359203 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!85 lt!359200 lt!359201 s!10566))))

(declare-fun lt!359197 () Regex!2906)

(declare-fun matchRSpec!705 (Regex!2906 List!10136) Bool)

(assert (=> b!1057168 (matchRSpec!705 lt!359197 s!10566)))

(declare-fun lt!359202 () Unit!15487)

(declare-fun mainMatchTheorem!705 (Regex!2906 List!10136) Unit!15487)

(assert (=> b!1057168 (= lt!359202 (mainMatchTheorem!705 lt!359197 s!10566))))

(declare-fun b!1057169 () Bool)

(declare-fun e!671169 () Bool)

(declare-fun tp!318095 () Bool)

(declare-fun tp!318097 () Bool)

(assert (=> b!1057169 (= e!671169 (and tp!318095 tp!318097))))

(declare-fun b!1057170 () Bool)

(declare-fun e!671168 () Bool)

(declare-fun e!671170 () Bool)

(assert (=> b!1057170 (= e!671168 (not e!671170))))

(declare-fun res!472662 () Bool)

(assert (=> b!1057170 (=> res!472662 e!671170)))

(declare-fun lt!359196 () Bool)

(declare-fun r!15766 () Regex!2906)

(assert (=> b!1057170 (= res!472662 (or lt!359196 (and (is-Concat!4739 r!15766) (is-EmptyExpr!2906 (regOne!6324 r!15766))) (and (is-Concat!4739 r!15766) (is-EmptyExpr!2906 (regTwo!6324 r!15766))) (is-Concat!4739 r!15766) (not (is-Union!2906 r!15766))))))

(assert (=> b!1057170 (= lt!359196 (matchRSpec!705 r!15766 s!10566))))

(assert (=> b!1057170 (= lt!359196 (matchR!1442 r!15766 s!10566))))

(declare-fun lt!359199 () Unit!15487)

(assert (=> b!1057170 (= lt!359199 (mainMatchTheorem!705 r!15766 s!10566))))

(declare-fun b!1057171 () Bool)

(declare-fun tp_is_empty!5455 () Bool)

(assert (=> b!1057171 (= e!671169 tp_is_empty!5455)))

(declare-fun b!1057172 () Bool)

(assert (=> b!1057172 (= e!671170 e!671174)))

(declare-fun res!472663 () Bool)

(assert (=> b!1057172 (=> res!472663 e!671174)))

(assert (=> b!1057172 (= res!472663 (not (matchR!1442 lt!359197 s!10566)))))

(assert (=> b!1057172 (= lt!359197 (Union!2906 lt!359200 lt!359201))))

(declare-fun removeUselessConcat!455 (Regex!2906) Regex!2906)

(assert (=> b!1057172 (= lt!359201 (removeUselessConcat!455 (regTwo!6325 r!15766)))))

(assert (=> b!1057172 (= lt!359200 (removeUselessConcat!455 (regOne!6325 r!15766)))))

(declare-fun b!1057173 () Bool)

(declare-fun tp!318098 () Bool)

(declare-fun tp!318093 () Bool)

(assert (=> b!1057173 (= e!671169 (and tp!318098 tp!318093))))

(declare-fun b!1057174 () Bool)

(declare-fun validRegex!1375 (Regex!2906) Bool)

(assert (=> b!1057174 (= e!671171 (validRegex!1375 (regOne!6325 r!15766)))))

(declare-fun res!472664 () Bool)

(assert (=> start!90996 (=> (not res!472664) (not e!671168))))

(assert (=> start!90996 (= res!472664 (validRegex!1375 r!15766))))

(assert (=> start!90996 e!671168))

(assert (=> start!90996 e!671169))

(declare-fun e!671173 () Bool)

(assert (=> start!90996 e!671173))

(declare-fun b!1057175 () Bool)

(declare-fun tp!318094 () Bool)

(assert (=> b!1057175 (= e!671169 tp!318094)))

(declare-fun b!1057176 () Bool)

(declare-fun tp!318096 () Bool)

(assert (=> b!1057176 (= e!671173 (and tp_is_empty!5455 tp!318096))))

(declare-fun b!1057177 () Bool)

(assert (=> b!1057177 (= e!671172 (matchR!1442 lt!359201 s!10566))))

(assert (= (and start!90996 res!472664) b!1057170))

(assert (= (and b!1057170 (not res!472662)) b!1057172))

(assert (= (and b!1057172 (not res!472663)) b!1057168))

(assert (= (and b!1057168 (not res!472665)) b!1057177))

(assert (= (and b!1057168 (not res!472661)) b!1057174))

(assert (= (and start!90996 (is-ElementMatch!2906 r!15766)) b!1057171))

(assert (= (and start!90996 (is-Concat!4739 r!15766)) b!1057173))

(assert (= (and start!90996 (is-Star!2906 r!15766)) b!1057175))

(assert (= (and start!90996 (is-Union!2906 r!15766)) b!1057169))

(assert (= (and start!90996 (is-Cons!10120 s!10566)) b!1057176))

(declare-fun m!1219473 () Bool)

(assert (=> b!1057177 m!1219473))

(declare-fun m!1219475 () Bool)

(assert (=> b!1057174 m!1219475))

(declare-fun m!1219477 () Bool)

(assert (=> start!90996 m!1219477))

(declare-fun m!1219479 () Bool)

(assert (=> b!1057172 m!1219479))

(declare-fun m!1219481 () Bool)

(assert (=> b!1057172 m!1219481))

(declare-fun m!1219483 () Bool)

(assert (=> b!1057172 m!1219483))

(declare-fun m!1219485 () Bool)

(assert (=> b!1057168 m!1219485))

(declare-fun m!1219487 () Bool)

(assert (=> b!1057168 m!1219487))

(declare-fun m!1219489 () Bool)

(assert (=> b!1057168 m!1219489))

(declare-fun m!1219491 () Bool)

(assert (=> b!1057168 m!1219491))

(declare-fun m!1219493 () Bool)

(assert (=> b!1057170 m!1219493))

(declare-fun m!1219495 () Bool)

(assert (=> b!1057170 m!1219495))

(declare-fun m!1219497 () Bool)

(assert (=> b!1057170 m!1219497))

(push 1)

(assert (not b!1057175))

(assert (not b!1057174))

(assert (not b!1057172))

(assert (not b!1057169))

(assert (not b!1057168))

(assert (not b!1057176))

(assert (not b!1057170))

(assert (not start!90996))

(assert tp_is_empty!5455)

(assert (not b!1057173))

(assert (not b!1057177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1057358 () Bool)

(assert (=> b!1057358 true))

(assert (=> b!1057358 true))

(declare-fun bs!251726 () Bool)

(declare-fun b!1057350 () Bool)

(assert (= bs!251726 (and b!1057350 b!1057358)))

(declare-fun lambda!38242 () Int)

(declare-fun lambda!38241 () Int)

(assert (=> bs!251726 (not (= lambda!38242 lambda!38241))))

(assert (=> b!1057350 true))

(assert (=> b!1057350 true))

(declare-fun d!300305 () Bool)

(declare-fun c!176992 () Bool)

(assert (=> d!300305 (= c!176992 (is-EmptyExpr!2906 r!15766))))

(declare-fun e!671273 () Bool)

(assert (=> d!300305 (= (matchRSpec!705 r!15766 s!10566) e!671273)))

(declare-fun b!1057348 () Bool)

(declare-fun e!671274 () Bool)

(declare-fun e!671275 () Bool)

(assert (=> b!1057348 (= e!671274 e!671275)))

(declare-fun res!472733 () Bool)

(assert (=> b!1057348 (= res!472733 (matchRSpec!705 (regOne!6325 r!15766) s!10566))))

(assert (=> b!1057348 (=> res!472733 e!671275)))

(declare-fun call!75630 () Bool)

(declare-fun bm!75624 () Bool)

(declare-fun c!176990 () Bool)

(declare-fun Exists!633 (Int) Bool)

(assert (=> bm!75624 (= call!75630 (Exists!633 (ite c!176990 lambda!38241 lambda!38242)))))

(declare-fun b!1057349 () Bool)

(declare-fun c!176991 () Bool)

(assert (=> b!1057349 (= c!176991 (is-ElementMatch!2906 r!15766))))

(declare-fun e!671276 () Bool)

(declare-fun e!671277 () Bool)

(assert (=> b!1057349 (= e!671276 e!671277)))

(declare-fun e!671279 () Bool)

(assert (=> b!1057350 (= e!671279 call!75630)))

(declare-fun b!1057351 () Bool)

(assert (=> b!1057351 (= e!671275 (matchRSpec!705 (regTwo!6325 r!15766) s!10566))))

(declare-fun b!1057352 () Bool)

(assert (=> b!1057352 (= e!671277 (= s!10566 (Cons!10120 (c!176943 r!15766) Nil!10120)))))

(declare-fun bm!75625 () Bool)

(declare-fun call!75629 () Bool)

(declare-fun isEmpty!6538 (List!10136) Bool)

(assert (=> bm!75625 (= call!75629 (isEmpty!6538 s!10566))))

(declare-fun b!1057353 () Bool)

(declare-fun res!472731 () Bool)

(declare-fun e!671278 () Bool)

(assert (=> b!1057353 (=> res!472731 e!671278)))

(assert (=> b!1057353 (= res!472731 call!75629)))

(assert (=> b!1057353 (= e!671279 e!671278)))

(declare-fun b!1057354 () Bool)

(assert (=> b!1057354 (= e!671273 e!671276)))

(declare-fun res!472732 () Bool)

(assert (=> b!1057354 (= res!472732 (not (is-EmptyLang!2906 r!15766)))))

(assert (=> b!1057354 (=> (not res!472732) (not e!671276))))

(declare-fun b!1057355 () Bool)

(declare-fun c!176993 () Bool)

(assert (=> b!1057355 (= c!176993 (is-Union!2906 r!15766))))

(assert (=> b!1057355 (= e!671277 e!671274)))

(declare-fun b!1057356 () Bool)

(assert (=> b!1057356 (= e!671273 call!75629)))

(declare-fun b!1057357 () Bool)

(assert (=> b!1057357 (= e!671274 e!671279)))

(assert (=> b!1057357 (= c!176990 (is-Star!2906 r!15766))))

(assert (=> b!1057358 (= e!671278 call!75630)))

(assert (= (and d!300305 c!176992) b!1057356))

(assert (= (and d!300305 (not c!176992)) b!1057354))

(assert (= (and b!1057354 res!472732) b!1057349))

(assert (= (and b!1057349 c!176991) b!1057352))

(assert (= (and b!1057349 (not c!176991)) b!1057355))

(assert (= (and b!1057355 c!176993) b!1057348))

(assert (= (and b!1057355 (not c!176993)) b!1057357))

(assert (= (and b!1057348 (not res!472733)) b!1057351))

(assert (= (and b!1057357 c!176990) b!1057353))

(assert (= (and b!1057357 (not c!176990)) b!1057350))

(assert (= (and b!1057353 (not res!472731)) b!1057358))

(assert (= (or b!1057358 b!1057350) bm!75624))

(assert (= (or b!1057356 b!1057353) bm!75625))

(declare-fun m!1219563 () Bool)

(assert (=> b!1057348 m!1219563))

(declare-fun m!1219565 () Bool)

(assert (=> bm!75624 m!1219565))

(declare-fun m!1219567 () Bool)

(assert (=> b!1057351 m!1219567))

(declare-fun m!1219569 () Bool)

(assert (=> bm!75625 m!1219569))

(assert (=> b!1057170 d!300305))

(declare-fun b!1057391 () Bool)

(declare-fun e!671295 () Bool)

(declare-fun e!671300 () Bool)

(assert (=> b!1057391 (= e!671295 e!671300)))

(declare-fun res!472757 () Bool)

(assert (=> b!1057391 (=> res!472757 e!671300)))

(declare-fun call!75633 () Bool)

(assert (=> b!1057391 (= res!472757 call!75633)))

(declare-fun b!1057392 () Bool)

(declare-fun e!671296 () Bool)

(declare-fun lt!359237 () Bool)

(assert (=> b!1057392 (= e!671296 (not lt!359237))))

(declare-fun b!1057393 () Bool)

(declare-fun head!1953 (List!10136) C!6382)

(assert (=> b!1057393 (= e!671300 (not (= (head!1953 s!10566) (c!176943 r!15766))))))

(declare-fun b!1057394 () Bool)

(declare-fun e!671299 () Bool)

(assert (=> b!1057394 (= e!671299 e!671296)))

(declare-fun c!177000 () Bool)

(assert (=> b!1057394 (= c!177000 (is-EmptyLang!2906 r!15766))))

(declare-fun b!1057395 () Bool)

(declare-fun e!671297 () Bool)

(assert (=> b!1057395 (= e!671297 e!671295)))

(declare-fun res!472753 () Bool)

(assert (=> b!1057395 (=> (not res!472753) (not e!671295))))

(assert (=> b!1057395 (= res!472753 (not lt!359237))))

(declare-fun b!1057396 () Bool)

(assert (=> b!1057396 (= e!671299 (= lt!359237 call!75633))))

(declare-fun b!1057397 () Bool)

(declare-fun res!472755 () Bool)

(declare-fun e!671298 () Bool)

(assert (=> b!1057397 (=> (not res!472755) (not e!671298))))

(assert (=> b!1057397 (= res!472755 (not call!75633))))

(declare-fun b!1057398 () Bool)

(declare-fun res!472754 () Bool)

(assert (=> b!1057398 (=> res!472754 e!671297)))

(assert (=> b!1057398 (= res!472754 (not (is-ElementMatch!2906 r!15766)))))

(assert (=> b!1057398 (= e!671296 e!671297)))

(declare-fun b!1057399 () Bool)

(declare-fun e!671294 () Bool)

(declare-fun derivativeStep!798 (Regex!2906 C!6382) Regex!2906)

(declare-fun tail!1515 (List!10136) List!10136)

(assert (=> b!1057399 (= e!671294 (matchR!1442 (derivativeStep!798 r!15766 (head!1953 s!10566)) (tail!1515 s!10566)))))

(declare-fun d!300315 () Bool)

(assert (=> d!300315 e!671299))

(declare-fun c!177001 () Bool)

(assert (=> d!300315 (= c!177001 (is-EmptyExpr!2906 r!15766))))

(assert (=> d!300315 (= lt!359237 e!671294)))

(declare-fun c!177002 () Bool)

(assert (=> d!300315 (= c!177002 (isEmpty!6538 s!10566))))

(assert (=> d!300315 (validRegex!1375 r!15766)))

(assert (=> d!300315 (= (matchR!1442 r!15766 s!10566) lt!359237)))

(declare-fun b!1057400 () Bool)

(declare-fun res!472756 () Bool)

(assert (=> b!1057400 (=> res!472756 e!671297)))

(assert (=> b!1057400 (= res!472756 e!671298)))

(declare-fun res!472751 () Bool)

(assert (=> b!1057400 (=> (not res!472751) (not e!671298))))

(assert (=> b!1057400 (= res!472751 lt!359237)))

(declare-fun b!1057401 () Bool)

(declare-fun res!472752 () Bool)

(assert (=> b!1057401 (=> (not res!472752) (not e!671298))))

(assert (=> b!1057401 (= res!472752 (isEmpty!6538 (tail!1515 s!10566)))))

(declare-fun b!1057402 () Bool)

(declare-fun res!472750 () Bool)

(assert (=> b!1057402 (=> res!472750 e!671300)))

(assert (=> b!1057402 (= res!472750 (not (isEmpty!6538 (tail!1515 s!10566))))))

(declare-fun bm!75628 () Bool)

(assert (=> bm!75628 (= call!75633 (isEmpty!6538 s!10566))))

(declare-fun b!1057403 () Bool)

(assert (=> b!1057403 (= e!671298 (= (head!1953 s!10566) (c!176943 r!15766)))))

(declare-fun b!1057404 () Bool)

(declare-fun nullable!998 (Regex!2906) Bool)

(assert (=> b!1057404 (= e!671294 (nullable!998 r!15766))))

(assert (= (and d!300315 c!177002) b!1057404))

(assert (= (and d!300315 (not c!177002)) b!1057399))

(assert (= (and d!300315 c!177001) b!1057396))

(assert (= (and d!300315 (not c!177001)) b!1057394))

(assert (= (and b!1057394 c!177000) b!1057392))

(assert (= (and b!1057394 (not c!177000)) b!1057398))

(assert (= (and b!1057398 (not res!472754)) b!1057400))

(assert (= (and b!1057400 res!472751) b!1057397))

(assert (= (and b!1057397 res!472755) b!1057401))

(assert (= (and b!1057401 res!472752) b!1057403))

(assert (= (and b!1057400 (not res!472756)) b!1057395))

(assert (= (and b!1057395 res!472753) b!1057391))

(assert (= (and b!1057391 (not res!472757)) b!1057402))

(assert (= (and b!1057402 (not res!472750)) b!1057393))

(assert (= (or b!1057396 b!1057391 b!1057397) bm!75628))

(assert (=> d!300315 m!1219569))

(assert (=> d!300315 m!1219477))

(declare-fun m!1219571 () Bool)

(assert (=> b!1057402 m!1219571))

(assert (=> b!1057402 m!1219571))

(declare-fun m!1219573 () Bool)

(assert (=> b!1057402 m!1219573))

(assert (=> bm!75628 m!1219569))

(declare-fun m!1219575 () Bool)

(assert (=> b!1057403 m!1219575))

(assert (=> b!1057401 m!1219571))

(assert (=> b!1057401 m!1219571))

(assert (=> b!1057401 m!1219573))

(declare-fun m!1219577 () Bool)

(assert (=> b!1057404 m!1219577))

(assert (=> b!1057399 m!1219575))

(assert (=> b!1057399 m!1219575))

(declare-fun m!1219579 () Bool)

(assert (=> b!1057399 m!1219579))

(assert (=> b!1057399 m!1219571))

(assert (=> b!1057399 m!1219579))

(assert (=> b!1057399 m!1219571))

(declare-fun m!1219581 () Bool)

(assert (=> b!1057399 m!1219581))

(assert (=> b!1057393 m!1219575))

(assert (=> b!1057170 d!300315))

(declare-fun d!300317 () Bool)

(assert (=> d!300317 (= (matchR!1442 r!15766 s!10566) (matchRSpec!705 r!15766 s!10566))))

(declare-fun lt!359240 () Unit!15487)

(declare-fun choose!6730 (Regex!2906 List!10136) Unit!15487)

(assert (=> d!300317 (= lt!359240 (choose!6730 r!15766 s!10566))))

(assert (=> d!300317 (validRegex!1375 r!15766)))

(assert (=> d!300317 (= (mainMatchTheorem!705 r!15766 s!10566) lt!359240)))

(declare-fun bs!251727 () Bool)

(assert (= bs!251727 d!300317))

(assert (=> bs!251727 m!1219495))

(assert (=> bs!251727 m!1219493))

(declare-fun m!1219583 () Bool)

(assert (=> bs!251727 m!1219583))

(assert (=> bs!251727 m!1219477))

(assert (=> b!1057170 d!300317))

(declare-fun b!1057423 () Bool)

(declare-fun e!671321 () Bool)

(declare-fun call!75641 () Bool)

(assert (=> b!1057423 (= e!671321 call!75641)))

(declare-fun d!300319 () Bool)

(declare-fun res!472770 () Bool)

(declare-fun e!671316 () Bool)

(assert (=> d!300319 (=> res!472770 e!671316)))

(assert (=> d!300319 (= res!472770 (is-ElementMatch!2906 (regOne!6325 r!15766)))))

(assert (=> d!300319 (= (validRegex!1375 (regOne!6325 r!15766)) e!671316)))

(declare-fun b!1057424 () Bool)

(declare-fun res!472772 () Bool)

(declare-fun e!671318 () Bool)

(assert (=> b!1057424 (=> res!472772 e!671318)))

(assert (=> b!1057424 (= res!472772 (not (is-Concat!4739 (regOne!6325 r!15766))))))

(declare-fun e!671315 () Bool)

(assert (=> b!1057424 (= e!671315 e!671318)))

(declare-fun c!177008 () Bool)

(declare-fun bm!75635 () Bool)

(declare-fun c!177007 () Bool)

(assert (=> bm!75635 (= call!75641 (validRegex!1375 (ite c!177008 (reg!3235 (regOne!6325 r!15766)) (ite c!177007 (regTwo!6325 (regOne!6325 r!15766)) (regTwo!6324 (regOne!6325 r!15766))))))))

(declare-fun b!1057425 () Bool)

(declare-fun e!671319 () Bool)

(assert (=> b!1057425 (= e!671319 e!671315)))

(assert (=> b!1057425 (= c!177007 (is-Union!2906 (regOne!6325 r!15766)))))

(declare-fun b!1057426 () Bool)

(assert (=> b!1057426 (= e!671319 e!671321)))

(declare-fun res!472768 () Bool)

(assert (=> b!1057426 (= res!472768 (not (nullable!998 (reg!3235 (regOne!6325 r!15766)))))))

(assert (=> b!1057426 (=> (not res!472768) (not e!671321))))

(declare-fun b!1057427 () Bool)

(declare-fun e!671317 () Bool)

(declare-fun call!75640 () Bool)

(assert (=> b!1057427 (= e!671317 call!75640)))

(declare-fun bm!75636 () Bool)

(assert (=> bm!75636 (= call!75640 call!75641)))

(declare-fun b!1057428 () Bool)

(declare-fun res!472769 () Bool)

(declare-fun e!671320 () Bool)

(assert (=> b!1057428 (=> (not res!472769) (not e!671320))))

(declare-fun call!75642 () Bool)

(assert (=> b!1057428 (= res!472769 call!75642)))

(assert (=> b!1057428 (= e!671315 e!671320)))

(declare-fun b!1057429 () Bool)

(assert (=> b!1057429 (= e!671320 call!75640)))

(declare-fun b!1057430 () Bool)

(assert (=> b!1057430 (= e!671318 e!671317)))

(declare-fun res!472771 () Bool)

(assert (=> b!1057430 (=> (not res!472771) (not e!671317))))

(assert (=> b!1057430 (= res!472771 call!75642)))

(declare-fun bm!75637 () Bool)

(assert (=> bm!75637 (= call!75642 (validRegex!1375 (ite c!177007 (regOne!6325 (regOne!6325 r!15766)) (regOne!6324 (regOne!6325 r!15766)))))))

(declare-fun b!1057431 () Bool)

(assert (=> b!1057431 (= e!671316 e!671319)))

(assert (=> b!1057431 (= c!177008 (is-Star!2906 (regOne!6325 r!15766)))))

(assert (= (and d!300319 (not res!472770)) b!1057431))

(assert (= (and b!1057431 c!177008) b!1057426))

(assert (= (and b!1057431 (not c!177008)) b!1057425))

(assert (= (and b!1057426 res!472768) b!1057423))

(assert (= (and b!1057425 c!177007) b!1057428))

(assert (= (and b!1057425 (not c!177007)) b!1057424))

(assert (= (and b!1057428 res!472769) b!1057429))

(assert (= (and b!1057424 (not res!472772)) b!1057430))

(assert (= (and b!1057430 res!472771) b!1057427))

(assert (= (or b!1057429 b!1057427) bm!75636))

(assert (= (or b!1057428 b!1057430) bm!75637))

(assert (= (or b!1057423 bm!75636) bm!75635))

(declare-fun m!1219585 () Bool)

(assert (=> bm!75635 m!1219585))

(declare-fun m!1219587 () Bool)

(assert (=> b!1057426 m!1219587))

(declare-fun m!1219589 () Bool)

(assert (=> bm!75637 m!1219589))

(assert (=> b!1057174 d!300319))

(declare-fun b!1057432 () Bool)

(declare-fun e!671328 () Bool)

(declare-fun call!75644 () Bool)

(assert (=> b!1057432 (= e!671328 call!75644)))

(declare-fun d!300321 () Bool)

(declare-fun res!472775 () Bool)

(declare-fun e!671323 () Bool)

(assert (=> d!300321 (=> res!472775 e!671323)))

(assert (=> d!300321 (= res!472775 (is-ElementMatch!2906 r!15766))))

(assert (=> d!300321 (= (validRegex!1375 r!15766) e!671323)))

(declare-fun b!1057433 () Bool)

(declare-fun res!472777 () Bool)

(declare-fun e!671325 () Bool)

(assert (=> b!1057433 (=> res!472777 e!671325)))

(assert (=> b!1057433 (= res!472777 (not (is-Concat!4739 r!15766)))))

(declare-fun e!671322 () Bool)

(assert (=> b!1057433 (= e!671322 e!671325)))

(declare-fun c!177010 () Bool)

(declare-fun c!177009 () Bool)

(declare-fun bm!75638 () Bool)

(assert (=> bm!75638 (= call!75644 (validRegex!1375 (ite c!177010 (reg!3235 r!15766) (ite c!177009 (regTwo!6325 r!15766) (regTwo!6324 r!15766)))))))

(declare-fun b!1057434 () Bool)

(declare-fun e!671326 () Bool)

(assert (=> b!1057434 (= e!671326 e!671322)))

(assert (=> b!1057434 (= c!177009 (is-Union!2906 r!15766))))

(declare-fun b!1057435 () Bool)

(assert (=> b!1057435 (= e!671326 e!671328)))

(declare-fun res!472773 () Bool)

(assert (=> b!1057435 (= res!472773 (not (nullable!998 (reg!3235 r!15766))))))

(assert (=> b!1057435 (=> (not res!472773) (not e!671328))))

(declare-fun b!1057436 () Bool)

(declare-fun e!671324 () Bool)

(declare-fun call!75643 () Bool)

(assert (=> b!1057436 (= e!671324 call!75643)))

(declare-fun bm!75639 () Bool)

(assert (=> bm!75639 (= call!75643 call!75644)))

(declare-fun b!1057437 () Bool)

(declare-fun res!472774 () Bool)

(declare-fun e!671327 () Bool)

(assert (=> b!1057437 (=> (not res!472774) (not e!671327))))

(declare-fun call!75645 () Bool)

(assert (=> b!1057437 (= res!472774 call!75645)))

(assert (=> b!1057437 (= e!671322 e!671327)))

(declare-fun b!1057438 () Bool)

(assert (=> b!1057438 (= e!671327 call!75643)))

(declare-fun b!1057439 () Bool)

(assert (=> b!1057439 (= e!671325 e!671324)))

(declare-fun res!472776 () Bool)

(assert (=> b!1057439 (=> (not res!472776) (not e!671324))))

(assert (=> b!1057439 (= res!472776 call!75645)))

(declare-fun bm!75640 () Bool)

(assert (=> bm!75640 (= call!75645 (validRegex!1375 (ite c!177009 (regOne!6325 r!15766) (regOne!6324 r!15766))))))

(declare-fun b!1057440 () Bool)

(assert (=> b!1057440 (= e!671323 e!671326)))

(assert (=> b!1057440 (= c!177010 (is-Star!2906 r!15766))))

(assert (= (and d!300321 (not res!472775)) b!1057440))

(assert (= (and b!1057440 c!177010) b!1057435))

(assert (= (and b!1057440 (not c!177010)) b!1057434))

(assert (= (and b!1057435 res!472773) b!1057432))

(assert (= (and b!1057434 c!177009) b!1057437))

(assert (= (and b!1057434 (not c!177009)) b!1057433))

(assert (= (and b!1057437 res!472774) b!1057438))

(assert (= (and b!1057433 (not res!472777)) b!1057439))

(assert (= (and b!1057439 res!472776) b!1057436))

(assert (= (or b!1057438 b!1057436) bm!75639))

(assert (= (or b!1057437 b!1057439) bm!75640))

(assert (= (or b!1057432 bm!75639) bm!75638))

(declare-fun m!1219591 () Bool)

(assert (=> bm!75638 m!1219591))

(declare-fun m!1219593 () Bool)

(assert (=> b!1057435 m!1219593))

(declare-fun m!1219595 () Bool)

(assert (=> bm!75640 m!1219595))

(assert (=> start!90996 d!300321))

(declare-fun b!1057441 () Bool)

(declare-fun e!671330 () Bool)

(declare-fun e!671335 () Bool)

(assert (=> b!1057441 (= e!671330 e!671335)))

(declare-fun res!472785 () Bool)

(assert (=> b!1057441 (=> res!472785 e!671335)))

(declare-fun call!75646 () Bool)

(assert (=> b!1057441 (= res!472785 call!75646)))

(declare-fun b!1057442 () Bool)

(declare-fun e!671331 () Bool)

(declare-fun lt!359241 () Bool)

(assert (=> b!1057442 (= e!671331 (not lt!359241))))

(declare-fun b!1057443 () Bool)

(assert (=> b!1057443 (= e!671335 (not (= (head!1953 s!10566) (c!176943 lt!359200))))))

(declare-fun b!1057444 () Bool)

(declare-fun e!671334 () Bool)

(assert (=> b!1057444 (= e!671334 e!671331)))

(declare-fun c!177011 () Bool)

(assert (=> b!1057444 (= c!177011 (is-EmptyLang!2906 lt!359200))))

(declare-fun b!1057445 () Bool)

(declare-fun e!671332 () Bool)

(assert (=> b!1057445 (= e!671332 e!671330)))

(declare-fun res!472781 () Bool)

(assert (=> b!1057445 (=> (not res!472781) (not e!671330))))

(assert (=> b!1057445 (= res!472781 (not lt!359241))))

(declare-fun b!1057446 () Bool)

(assert (=> b!1057446 (= e!671334 (= lt!359241 call!75646))))

(declare-fun b!1057447 () Bool)

(declare-fun res!472783 () Bool)

(declare-fun e!671333 () Bool)

(assert (=> b!1057447 (=> (not res!472783) (not e!671333))))

(assert (=> b!1057447 (= res!472783 (not call!75646))))

(declare-fun b!1057448 () Bool)

(declare-fun res!472782 () Bool)

(assert (=> b!1057448 (=> res!472782 e!671332)))

(assert (=> b!1057448 (= res!472782 (not (is-ElementMatch!2906 lt!359200)))))

(assert (=> b!1057448 (= e!671331 e!671332)))

(declare-fun b!1057449 () Bool)

(declare-fun e!671329 () Bool)

(assert (=> b!1057449 (= e!671329 (matchR!1442 (derivativeStep!798 lt!359200 (head!1953 s!10566)) (tail!1515 s!10566)))))

(declare-fun d!300323 () Bool)

(assert (=> d!300323 e!671334))

(declare-fun c!177012 () Bool)

(assert (=> d!300323 (= c!177012 (is-EmptyExpr!2906 lt!359200))))

(assert (=> d!300323 (= lt!359241 e!671329)))

(declare-fun c!177013 () Bool)

(assert (=> d!300323 (= c!177013 (isEmpty!6538 s!10566))))

(assert (=> d!300323 (validRegex!1375 lt!359200)))

(assert (=> d!300323 (= (matchR!1442 lt!359200 s!10566) lt!359241)))

(declare-fun b!1057450 () Bool)

(declare-fun res!472784 () Bool)

(assert (=> b!1057450 (=> res!472784 e!671332)))

(assert (=> b!1057450 (= res!472784 e!671333)))

(declare-fun res!472779 () Bool)

(assert (=> b!1057450 (=> (not res!472779) (not e!671333))))

(assert (=> b!1057450 (= res!472779 lt!359241)))

(declare-fun b!1057451 () Bool)

(declare-fun res!472780 () Bool)

(assert (=> b!1057451 (=> (not res!472780) (not e!671333))))

(assert (=> b!1057451 (= res!472780 (isEmpty!6538 (tail!1515 s!10566)))))

(declare-fun b!1057452 () Bool)

(declare-fun res!472778 () Bool)

(assert (=> b!1057452 (=> res!472778 e!671335)))

(assert (=> b!1057452 (= res!472778 (not (isEmpty!6538 (tail!1515 s!10566))))))

(declare-fun bm!75641 () Bool)

(assert (=> bm!75641 (= call!75646 (isEmpty!6538 s!10566))))

(declare-fun b!1057453 () Bool)

(assert (=> b!1057453 (= e!671333 (= (head!1953 s!10566) (c!176943 lt!359200)))))

(declare-fun b!1057454 () Bool)

(assert (=> b!1057454 (= e!671329 (nullable!998 lt!359200))))

(assert (= (and d!300323 c!177013) b!1057454))

(assert (= (and d!300323 (not c!177013)) b!1057449))

(assert (= (and d!300323 c!177012) b!1057446))

(assert (= (and d!300323 (not c!177012)) b!1057444))

(assert (= (and b!1057444 c!177011) b!1057442))

(assert (= (and b!1057444 (not c!177011)) b!1057448))

(assert (= (and b!1057448 (not res!472782)) b!1057450))

(assert (= (and b!1057450 res!472779) b!1057447))

(assert (= (and b!1057447 res!472783) b!1057451))

(assert (= (and b!1057451 res!472780) b!1057453))

(assert (= (and b!1057450 (not res!472784)) b!1057445))

(assert (= (and b!1057445 res!472781) b!1057441))

(assert (= (and b!1057441 (not res!472785)) b!1057452))

(assert (= (and b!1057452 (not res!472778)) b!1057443))

(assert (= (or b!1057446 b!1057441 b!1057447) bm!75641))

(assert (=> d!300323 m!1219569))

(declare-fun m!1219597 () Bool)

(assert (=> d!300323 m!1219597))

(assert (=> b!1057452 m!1219571))

(assert (=> b!1057452 m!1219571))

(assert (=> b!1057452 m!1219573))

(assert (=> bm!75641 m!1219569))

(assert (=> b!1057453 m!1219575))

(assert (=> b!1057451 m!1219571))

(assert (=> b!1057451 m!1219571))

(assert (=> b!1057451 m!1219573))

(declare-fun m!1219599 () Bool)

(assert (=> b!1057454 m!1219599))

(assert (=> b!1057449 m!1219575))

(assert (=> b!1057449 m!1219575))

(declare-fun m!1219601 () Bool)

(assert (=> b!1057449 m!1219601))

(assert (=> b!1057449 m!1219571))

(assert (=> b!1057449 m!1219601))

(assert (=> b!1057449 m!1219571))

(declare-fun m!1219603 () Bool)

(assert (=> b!1057449 m!1219603))

(assert (=> b!1057443 m!1219575))

(assert (=> b!1057168 d!300323))

(declare-fun d!300325 () Bool)

(declare-fun e!671340 () Bool)

(assert (=> d!300325 e!671340))

(declare-fun res!472790 () Bool)

(assert (=> d!300325 (=> res!472790 e!671340)))

(assert (=> d!300325 (= res!472790 (matchR!1442 lt!359200 s!10566))))

(declare-fun lt!359244 () Unit!15487)

(declare-fun choose!6731 (Regex!2906 Regex!2906 List!10136) Unit!15487)

(assert (=> d!300325 (= lt!359244 (choose!6731 lt!359200 lt!359201 s!10566))))

(declare-fun e!671341 () Bool)

(assert (=> d!300325 e!671341))

(declare-fun res!472791 () Bool)

(assert (=> d!300325 (=> (not res!472791) (not e!671341))))

(assert (=> d!300325 (= res!472791 (validRegex!1375 lt!359200))))

(assert (=> d!300325 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!85 lt!359200 lt!359201 s!10566) lt!359244)))

(declare-fun b!1057459 () Bool)

(assert (=> b!1057459 (= e!671341 (validRegex!1375 lt!359201))))

(declare-fun b!1057460 () Bool)

(assert (=> b!1057460 (= e!671340 (matchR!1442 lt!359201 s!10566))))

(assert (= (and d!300325 res!472791) b!1057459))

(assert (= (and d!300325 (not res!472790)) b!1057460))

(assert (=> d!300325 m!1219485))

(declare-fun m!1219605 () Bool)

(assert (=> d!300325 m!1219605))

(assert (=> d!300325 m!1219597))

(declare-fun m!1219607 () Bool)

(assert (=> b!1057459 m!1219607))

(assert (=> b!1057460 m!1219473))

(assert (=> b!1057168 d!300325))

(declare-fun bs!251728 () Bool)

(declare-fun b!1057471 () Bool)

(assert (= bs!251728 (and b!1057471 b!1057358)))

(declare-fun lambda!38243 () Int)

(assert (=> bs!251728 (= (and (= (reg!3235 lt!359197) (reg!3235 r!15766)) (= lt!359197 r!15766)) (= lambda!38243 lambda!38241))))

(declare-fun bs!251729 () Bool)

(assert (= bs!251729 (and b!1057471 b!1057350)))

(assert (=> bs!251729 (not (= lambda!38243 lambda!38242))))

(assert (=> b!1057471 true))

(assert (=> b!1057471 true))

(declare-fun bs!251730 () Bool)

(declare-fun b!1057463 () Bool)

(assert (= bs!251730 (and b!1057463 b!1057358)))

(declare-fun lambda!38244 () Int)

(assert (=> bs!251730 (not (= lambda!38244 lambda!38241))))

(declare-fun bs!251731 () Bool)

(assert (= bs!251731 (and b!1057463 b!1057350)))

(assert (=> bs!251731 (= (and (= (regOne!6324 lt!359197) (regOne!6324 r!15766)) (= (regTwo!6324 lt!359197) (regTwo!6324 r!15766))) (= lambda!38244 lambda!38242))))

(declare-fun bs!251732 () Bool)

(assert (= bs!251732 (and b!1057463 b!1057471)))

(assert (=> bs!251732 (not (= lambda!38244 lambda!38243))))

(assert (=> b!1057463 true))

(assert (=> b!1057463 true))

(declare-fun d!300327 () Bool)

(declare-fun c!177016 () Bool)

(assert (=> d!300327 (= c!177016 (is-EmptyExpr!2906 lt!359197))))

(declare-fun e!671342 () Bool)

(assert (=> d!300327 (= (matchRSpec!705 lt!359197 s!10566) e!671342)))

(declare-fun b!1057461 () Bool)

(declare-fun e!671343 () Bool)

(declare-fun e!671344 () Bool)

(assert (=> b!1057461 (= e!671343 e!671344)))

(declare-fun res!472794 () Bool)

(assert (=> b!1057461 (= res!472794 (matchRSpec!705 (regOne!6325 lt!359197) s!10566))))

(assert (=> b!1057461 (=> res!472794 e!671344)))

(declare-fun bm!75642 () Bool)

(declare-fun c!177014 () Bool)

(declare-fun call!75648 () Bool)

(assert (=> bm!75642 (= call!75648 (Exists!633 (ite c!177014 lambda!38243 lambda!38244)))))

(declare-fun b!1057462 () Bool)

(declare-fun c!177015 () Bool)

(assert (=> b!1057462 (= c!177015 (is-ElementMatch!2906 lt!359197))))

(declare-fun e!671345 () Bool)

(declare-fun e!671346 () Bool)

(assert (=> b!1057462 (= e!671345 e!671346)))

(declare-fun e!671348 () Bool)

(assert (=> b!1057463 (= e!671348 call!75648)))

(declare-fun b!1057464 () Bool)

(assert (=> b!1057464 (= e!671344 (matchRSpec!705 (regTwo!6325 lt!359197) s!10566))))

(declare-fun b!1057465 () Bool)

(assert (=> b!1057465 (= e!671346 (= s!10566 (Cons!10120 (c!176943 lt!359197) Nil!10120)))))

(declare-fun bm!75643 () Bool)

(declare-fun call!75647 () Bool)

(assert (=> bm!75643 (= call!75647 (isEmpty!6538 s!10566))))

(declare-fun b!1057466 () Bool)

(declare-fun res!472792 () Bool)

(declare-fun e!671347 () Bool)

(assert (=> b!1057466 (=> res!472792 e!671347)))

(assert (=> b!1057466 (= res!472792 call!75647)))

(assert (=> b!1057466 (= e!671348 e!671347)))

(declare-fun b!1057467 () Bool)

(assert (=> b!1057467 (= e!671342 e!671345)))

(declare-fun res!472793 () Bool)

(assert (=> b!1057467 (= res!472793 (not (is-EmptyLang!2906 lt!359197)))))

(assert (=> b!1057467 (=> (not res!472793) (not e!671345))))

(declare-fun b!1057468 () Bool)

(declare-fun c!177017 () Bool)

(assert (=> b!1057468 (= c!177017 (is-Union!2906 lt!359197))))

(assert (=> b!1057468 (= e!671346 e!671343)))

(declare-fun b!1057469 () Bool)

(assert (=> b!1057469 (= e!671342 call!75647)))

(declare-fun b!1057470 () Bool)

(assert (=> b!1057470 (= e!671343 e!671348)))

(assert (=> b!1057470 (= c!177014 (is-Star!2906 lt!359197))))

(assert (=> b!1057471 (= e!671347 call!75648)))

(assert (= (and d!300327 c!177016) b!1057469))

(assert (= (and d!300327 (not c!177016)) b!1057467))

(assert (= (and b!1057467 res!472793) b!1057462))

(assert (= (and b!1057462 c!177015) b!1057465))

(assert (= (and b!1057462 (not c!177015)) b!1057468))

(assert (= (and b!1057468 c!177017) b!1057461))

(assert (= (and b!1057468 (not c!177017)) b!1057470))

(assert (= (and b!1057461 (not res!472794)) b!1057464))

(assert (= (and b!1057470 c!177014) b!1057466))

(assert (= (and b!1057470 (not c!177014)) b!1057463))

(assert (= (and b!1057466 (not res!472792)) b!1057471))

(assert (= (or b!1057471 b!1057463) bm!75642))

(assert (= (or b!1057469 b!1057466) bm!75643))

(declare-fun m!1219609 () Bool)

(assert (=> b!1057461 m!1219609))

(declare-fun m!1219611 () Bool)

(assert (=> bm!75642 m!1219611))

(declare-fun m!1219613 () Bool)

(assert (=> b!1057464 m!1219613))

(assert (=> bm!75643 m!1219569))

(assert (=> b!1057168 d!300327))

(declare-fun d!300329 () Bool)

(assert (=> d!300329 (= (matchR!1442 lt!359197 s!10566) (matchRSpec!705 lt!359197 s!10566))))

(declare-fun lt!359245 () Unit!15487)

(assert (=> d!300329 (= lt!359245 (choose!6730 lt!359197 s!10566))))

(assert (=> d!300329 (validRegex!1375 lt!359197)))

(assert (=> d!300329 (= (mainMatchTheorem!705 lt!359197 s!10566) lt!359245)))

(declare-fun bs!251733 () Bool)

(assert (= bs!251733 d!300329))

(assert (=> bs!251733 m!1219479))

(assert (=> bs!251733 m!1219489))

(declare-fun m!1219615 () Bool)

(assert (=> bs!251733 m!1219615))

(declare-fun m!1219617 () Bool)

(assert (=> bs!251733 m!1219617))

(assert (=> b!1057168 d!300329))

(declare-fun b!1057472 () Bool)

(declare-fun e!671350 () Bool)

(declare-fun e!671355 () Bool)

(assert (=> b!1057472 (= e!671350 e!671355)))

(declare-fun res!472802 () Bool)

(assert (=> b!1057472 (=> res!472802 e!671355)))

(declare-fun call!75649 () Bool)

(assert (=> b!1057472 (= res!472802 call!75649)))

(declare-fun b!1057473 () Bool)

(declare-fun e!671351 () Bool)

(declare-fun lt!359246 () Bool)

(assert (=> b!1057473 (= e!671351 (not lt!359246))))

(declare-fun b!1057474 () Bool)

(assert (=> b!1057474 (= e!671355 (not (= (head!1953 s!10566) (c!176943 lt!359197))))))

(declare-fun b!1057475 () Bool)

(declare-fun e!671354 () Bool)

(assert (=> b!1057475 (= e!671354 e!671351)))

(declare-fun c!177018 () Bool)

(assert (=> b!1057475 (= c!177018 (is-EmptyLang!2906 lt!359197))))

(declare-fun b!1057476 () Bool)

(declare-fun e!671352 () Bool)

(assert (=> b!1057476 (= e!671352 e!671350)))

(declare-fun res!472798 () Bool)

(assert (=> b!1057476 (=> (not res!472798) (not e!671350))))

(assert (=> b!1057476 (= res!472798 (not lt!359246))))

(declare-fun b!1057477 () Bool)

(assert (=> b!1057477 (= e!671354 (= lt!359246 call!75649))))

(declare-fun b!1057478 () Bool)

(declare-fun res!472800 () Bool)

(declare-fun e!671353 () Bool)

(assert (=> b!1057478 (=> (not res!472800) (not e!671353))))

(assert (=> b!1057478 (= res!472800 (not call!75649))))

(declare-fun b!1057479 () Bool)

(declare-fun res!472799 () Bool)

(assert (=> b!1057479 (=> res!472799 e!671352)))

(assert (=> b!1057479 (= res!472799 (not (is-ElementMatch!2906 lt!359197)))))

(assert (=> b!1057479 (= e!671351 e!671352)))

(declare-fun b!1057480 () Bool)

(declare-fun e!671349 () Bool)

(assert (=> b!1057480 (= e!671349 (matchR!1442 (derivativeStep!798 lt!359197 (head!1953 s!10566)) (tail!1515 s!10566)))))

(declare-fun d!300331 () Bool)

(assert (=> d!300331 e!671354))

(declare-fun c!177019 () Bool)

(assert (=> d!300331 (= c!177019 (is-EmptyExpr!2906 lt!359197))))

(assert (=> d!300331 (= lt!359246 e!671349)))

(declare-fun c!177020 () Bool)

(assert (=> d!300331 (= c!177020 (isEmpty!6538 s!10566))))

(assert (=> d!300331 (validRegex!1375 lt!359197)))

(assert (=> d!300331 (= (matchR!1442 lt!359197 s!10566) lt!359246)))

(declare-fun b!1057481 () Bool)

(declare-fun res!472801 () Bool)

(assert (=> b!1057481 (=> res!472801 e!671352)))

(assert (=> b!1057481 (= res!472801 e!671353)))

(declare-fun res!472796 () Bool)

(assert (=> b!1057481 (=> (not res!472796) (not e!671353))))

(assert (=> b!1057481 (= res!472796 lt!359246)))

(declare-fun b!1057482 () Bool)

(declare-fun res!472797 () Bool)

(assert (=> b!1057482 (=> (not res!472797) (not e!671353))))

(assert (=> b!1057482 (= res!472797 (isEmpty!6538 (tail!1515 s!10566)))))

(declare-fun b!1057483 () Bool)

(declare-fun res!472795 () Bool)

(assert (=> b!1057483 (=> res!472795 e!671355)))

(assert (=> b!1057483 (= res!472795 (not (isEmpty!6538 (tail!1515 s!10566))))))

(declare-fun bm!75644 () Bool)

(assert (=> bm!75644 (= call!75649 (isEmpty!6538 s!10566))))

(declare-fun b!1057484 () Bool)

(assert (=> b!1057484 (= e!671353 (= (head!1953 s!10566) (c!176943 lt!359197)))))

(declare-fun b!1057485 () Bool)

(assert (=> b!1057485 (= e!671349 (nullable!998 lt!359197))))

(assert (= (and d!300331 c!177020) b!1057485))

(assert (= (and d!300331 (not c!177020)) b!1057480))

(assert (= (and d!300331 c!177019) b!1057477))

(assert (= (and d!300331 (not c!177019)) b!1057475))

(assert (= (and b!1057475 c!177018) b!1057473))

(assert (= (and b!1057475 (not c!177018)) b!1057479))

(assert (= (and b!1057479 (not res!472799)) b!1057481))

(assert (= (and b!1057481 res!472796) b!1057478))

(assert (= (and b!1057478 res!472800) b!1057482))

(assert (= (and b!1057482 res!472797) b!1057484))

(assert (= (and b!1057481 (not res!472801)) b!1057476))

(assert (= (and b!1057476 res!472798) b!1057472))

(assert (= (and b!1057472 (not res!472802)) b!1057483))

(assert (= (and b!1057483 (not res!472795)) b!1057474))

(assert (= (or b!1057477 b!1057472 b!1057478) bm!75644))

(assert (=> d!300331 m!1219569))

(assert (=> d!300331 m!1219617))

(assert (=> b!1057483 m!1219571))

(assert (=> b!1057483 m!1219571))

(assert (=> b!1057483 m!1219573))

(assert (=> bm!75644 m!1219569))

(assert (=> b!1057484 m!1219575))

(assert (=> b!1057482 m!1219571))

(assert (=> b!1057482 m!1219571))

(assert (=> b!1057482 m!1219573))

(declare-fun m!1219619 () Bool)

(assert (=> b!1057485 m!1219619))

(assert (=> b!1057480 m!1219575))

(assert (=> b!1057480 m!1219575))

(declare-fun m!1219621 () Bool)

(assert (=> b!1057480 m!1219621))

(assert (=> b!1057480 m!1219571))

(assert (=> b!1057480 m!1219621))

(assert (=> b!1057480 m!1219571))

(declare-fun m!1219623 () Bool)

(assert (=> b!1057480 m!1219623))

(assert (=> b!1057474 m!1219575))

(assert (=> b!1057172 d!300331))

(declare-fun bm!75655 () Bool)

(declare-fun call!75663 () Regex!2906)

(declare-fun call!75662 () Regex!2906)

(assert (=> bm!75655 (= call!75663 call!75662)))

(declare-fun b!1057508 () Bool)

(declare-fun c!177034 () Bool)

(assert (=> b!1057508 (= c!177034 (is-Star!2906 (regTwo!6325 r!15766)))))

(declare-fun e!671371 () Regex!2906)

(declare-fun e!671373 () Regex!2906)

(assert (=> b!1057508 (= e!671371 e!671373)))

(declare-fun b!1057509 () Bool)

(assert (=> b!1057509 (= e!671373 (regTwo!6325 r!15766))))

(declare-fun b!1057510 () Bool)

(declare-fun call!75661 () Regex!2906)

(declare-fun call!75664 () Regex!2906)

(assert (=> b!1057510 (= e!671371 (Union!2906 call!75661 call!75664))))

(declare-fun bm!75656 () Bool)

(assert (=> bm!75656 (= call!75664 call!75663)))

(declare-fun b!1057511 () Bool)

(assert (=> b!1057511 (= e!671373 (Star!2906 call!75664))))

(declare-fun c!177032 () Bool)

(declare-fun call!75660 () Regex!2906)

(declare-fun c!177035 () Bool)

(declare-fun bm!75657 () Bool)

(assert (=> bm!75657 (= call!75660 (removeUselessConcat!455 (ite (or c!177035 c!177032) (regTwo!6324 (regTwo!6325 r!15766)) (regOne!6325 (regTwo!6325 r!15766)))))))

(declare-fun b!1057512 () Bool)

(assert (=> b!1057512 (= c!177032 (is-Concat!4739 (regTwo!6325 r!15766)))))

(declare-fun e!671369 () Regex!2906)

(declare-fun e!671368 () Regex!2906)

(assert (=> b!1057512 (= e!671369 e!671368)))

(declare-fun d!300333 () Bool)

(declare-fun e!671370 () Bool)

(assert (=> d!300333 e!671370))

(declare-fun res!472805 () Bool)

(assert (=> d!300333 (=> (not res!472805) (not e!671370))))

(declare-fun lt!359249 () Regex!2906)

(assert (=> d!300333 (= res!472805 (validRegex!1375 lt!359249))))

(declare-fun e!671372 () Regex!2906)

(assert (=> d!300333 (= lt!359249 e!671372)))

(assert (=> d!300333 (= c!177035 (and (is-Concat!4739 (regTwo!6325 r!15766)) (is-EmptyExpr!2906 (regOne!6324 (regTwo!6325 r!15766)))))))

(assert (=> d!300333 (validRegex!1375 (regTwo!6325 r!15766))))

(assert (=> d!300333 (= (removeUselessConcat!455 (regTwo!6325 r!15766)) lt!359249)))

(declare-fun b!1057513 () Bool)

(assert (=> b!1057513 (= e!671372 e!671369)))

(declare-fun c!177031 () Bool)

(assert (=> b!1057513 (= c!177031 (and (is-Concat!4739 (regTwo!6325 r!15766)) (is-EmptyExpr!2906 (regTwo!6324 (regTwo!6325 r!15766)))))))

(declare-fun bm!75658 () Bool)

(assert (=> bm!75658 (= call!75661 call!75660)))

(declare-fun b!1057514 () Bool)

(assert (=> b!1057514 (= e!671369 call!75662)))

(declare-fun bm!75659 () Bool)

(declare-fun c!177033 () Bool)

(assert (=> bm!75659 (= call!75662 (removeUselessConcat!455 (ite (or c!177031 c!177032) (regOne!6324 (regTwo!6325 r!15766)) (ite c!177033 (regTwo!6325 (regTwo!6325 r!15766)) (reg!3235 (regTwo!6325 r!15766))))))))

(declare-fun b!1057515 () Bool)

(assert (=> b!1057515 (= e!671372 call!75660)))

(declare-fun b!1057516 () Bool)

(assert (=> b!1057516 (= e!671368 e!671371)))

(assert (=> b!1057516 (= c!177033 (is-Union!2906 (regTwo!6325 r!15766)))))

(declare-fun b!1057517 () Bool)

(assert (=> b!1057517 (= e!671370 (= (nullable!998 lt!359249) (nullable!998 (regTwo!6325 r!15766))))))

(declare-fun b!1057518 () Bool)

(assert (=> b!1057518 (= e!671368 (Concat!4739 call!75663 call!75661))))

(assert (= (and d!300333 c!177035) b!1057515))

(assert (= (and d!300333 (not c!177035)) b!1057513))

(assert (= (and b!1057513 c!177031) b!1057514))

(assert (= (and b!1057513 (not c!177031)) b!1057512))

(assert (= (and b!1057512 c!177032) b!1057518))

(assert (= (and b!1057512 (not c!177032)) b!1057516))

(assert (= (and b!1057516 c!177033) b!1057510))

(assert (= (and b!1057516 (not c!177033)) b!1057508))

(assert (= (and b!1057508 c!177034) b!1057511))

(assert (= (and b!1057508 (not c!177034)) b!1057509))

(assert (= (or b!1057510 b!1057511) bm!75656))

(assert (= (or b!1057518 b!1057510) bm!75658))

(assert (= (or b!1057518 bm!75656) bm!75655))

(assert (= (or b!1057514 bm!75655) bm!75659))

(assert (= (or b!1057515 bm!75658) bm!75657))

(assert (= (and d!300333 res!472805) b!1057517))

(declare-fun m!1219625 () Bool)

(assert (=> bm!75657 m!1219625))

(declare-fun m!1219627 () Bool)

(assert (=> d!300333 m!1219627))

(declare-fun m!1219629 () Bool)

(assert (=> d!300333 m!1219629))

(declare-fun m!1219631 () Bool)

(assert (=> bm!75659 m!1219631))

(declare-fun m!1219633 () Bool)

(assert (=> b!1057517 m!1219633))

(declare-fun m!1219635 () Bool)

(assert (=> b!1057517 m!1219635))

(assert (=> b!1057172 d!300333))

(declare-fun bm!75660 () Bool)

(declare-fun call!75668 () Regex!2906)

(declare-fun call!75667 () Regex!2906)

(assert (=> bm!75660 (= call!75668 call!75667)))

(declare-fun b!1057519 () Bool)

(declare-fun c!177039 () Bool)

(assert (=> b!1057519 (= c!177039 (is-Star!2906 (regOne!6325 r!15766)))))

(declare-fun e!671377 () Regex!2906)

(declare-fun e!671379 () Regex!2906)

(assert (=> b!1057519 (= e!671377 e!671379)))

(declare-fun b!1057520 () Bool)

(assert (=> b!1057520 (= e!671379 (regOne!6325 r!15766))))

(declare-fun b!1057521 () Bool)

(declare-fun call!75666 () Regex!2906)

(declare-fun call!75669 () Regex!2906)

(assert (=> b!1057521 (= e!671377 (Union!2906 call!75666 call!75669))))

(declare-fun bm!75661 () Bool)

(assert (=> bm!75661 (= call!75669 call!75668)))

(declare-fun b!1057522 () Bool)

(assert (=> b!1057522 (= e!671379 (Star!2906 call!75669))))

(declare-fun call!75665 () Regex!2906)

(declare-fun c!177040 () Bool)

(declare-fun bm!75662 () Bool)

(declare-fun c!177037 () Bool)

(assert (=> bm!75662 (= call!75665 (removeUselessConcat!455 (ite (or c!177040 c!177037) (regTwo!6324 (regOne!6325 r!15766)) (regOne!6325 (regOne!6325 r!15766)))))))

(declare-fun b!1057523 () Bool)

(assert (=> b!1057523 (= c!177037 (is-Concat!4739 (regOne!6325 r!15766)))))

(declare-fun e!671375 () Regex!2906)

(declare-fun e!671374 () Regex!2906)

(assert (=> b!1057523 (= e!671375 e!671374)))

(declare-fun d!300335 () Bool)

(declare-fun e!671376 () Bool)

(assert (=> d!300335 e!671376))

(declare-fun res!472806 () Bool)

(assert (=> d!300335 (=> (not res!472806) (not e!671376))))

(declare-fun lt!359250 () Regex!2906)

(assert (=> d!300335 (= res!472806 (validRegex!1375 lt!359250))))

(declare-fun e!671378 () Regex!2906)

(assert (=> d!300335 (= lt!359250 e!671378)))

(assert (=> d!300335 (= c!177040 (and (is-Concat!4739 (regOne!6325 r!15766)) (is-EmptyExpr!2906 (regOne!6324 (regOne!6325 r!15766)))))))

(assert (=> d!300335 (validRegex!1375 (regOne!6325 r!15766))))

(assert (=> d!300335 (= (removeUselessConcat!455 (regOne!6325 r!15766)) lt!359250)))

(declare-fun b!1057524 () Bool)

(assert (=> b!1057524 (= e!671378 e!671375)))

(declare-fun c!177036 () Bool)

(assert (=> b!1057524 (= c!177036 (and (is-Concat!4739 (regOne!6325 r!15766)) (is-EmptyExpr!2906 (regTwo!6324 (regOne!6325 r!15766)))))))

(declare-fun bm!75663 () Bool)

(assert (=> bm!75663 (= call!75666 call!75665)))

(declare-fun b!1057525 () Bool)

(assert (=> b!1057525 (= e!671375 call!75667)))

(declare-fun c!177038 () Bool)

(declare-fun bm!75664 () Bool)

(assert (=> bm!75664 (= call!75667 (removeUselessConcat!455 (ite (or c!177036 c!177037) (regOne!6324 (regOne!6325 r!15766)) (ite c!177038 (regTwo!6325 (regOne!6325 r!15766)) (reg!3235 (regOne!6325 r!15766))))))))

(declare-fun b!1057526 () Bool)

(assert (=> b!1057526 (= e!671378 call!75665)))

(declare-fun b!1057527 () Bool)

(assert (=> b!1057527 (= e!671374 e!671377)))

(assert (=> b!1057527 (= c!177038 (is-Union!2906 (regOne!6325 r!15766)))))

(declare-fun b!1057528 () Bool)

(assert (=> b!1057528 (= e!671376 (= (nullable!998 lt!359250) (nullable!998 (regOne!6325 r!15766))))))

(declare-fun b!1057529 () Bool)

(assert (=> b!1057529 (= e!671374 (Concat!4739 call!75668 call!75666))))

(assert (= (and d!300335 c!177040) b!1057526))

(assert (= (and d!300335 (not c!177040)) b!1057524))

(assert (= (and b!1057524 c!177036) b!1057525))

(assert (= (and b!1057524 (not c!177036)) b!1057523))

(assert (= (and b!1057523 c!177037) b!1057529))

(assert (= (and b!1057523 (not c!177037)) b!1057527))

(assert (= (and b!1057527 c!177038) b!1057521))

(assert (= (and b!1057527 (not c!177038)) b!1057519))

(assert (= (and b!1057519 c!177039) b!1057522))

(assert (= (and b!1057519 (not c!177039)) b!1057520))

(assert (= (or b!1057521 b!1057522) bm!75661))

(assert (= (or b!1057529 b!1057521) bm!75663))

(assert (= (or b!1057529 bm!75661) bm!75660))

(assert (= (or b!1057525 bm!75660) bm!75664))

(assert (= (or b!1057526 bm!75663) bm!75662))

(assert (= (and d!300335 res!472806) b!1057528))

(declare-fun m!1219637 () Bool)

(assert (=> bm!75662 m!1219637))

(declare-fun m!1219639 () Bool)

(assert (=> d!300335 m!1219639))

(assert (=> d!300335 m!1219475))

(declare-fun m!1219641 () Bool)

(assert (=> bm!75664 m!1219641))

(declare-fun m!1219643 () Bool)

(assert (=> b!1057528 m!1219643))

(declare-fun m!1219645 () Bool)

(assert (=> b!1057528 m!1219645))

(assert (=> b!1057172 d!300335))

(declare-fun b!1057530 () Bool)

(declare-fun e!671381 () Bool)

(declare-fun e!671386 () Bool)

(assert (=> b!1057530 (= e!671381 e!671386)))

(declare-fun res!472814 () Bool)

(assert (=> b!1057530 (=> res!472814 e!671386)))

(declare-fun call!75670 () Bool)

(assert (=> b!1057530 (= res!472814 call!75670)))

(declare-fun b!1057531 () Bool)

(declare-fun e!671382 () Bool)

(declare-fun lt!359251 () Bool)

(assert (=> b!1057531 (= e!671382 (not lt!359251))))

(declare-fun b!1057532 () Bool)

(assert (=> b!1057532 (= e!671386 (not (= (head!1953 s!10566) (c!176943 lt!359201))))))

(declare-fun b!1057533 () Bool)

(declare-fun e!671385 () Bool)

(assert (=> b!1057533 (= e!671385 e!671382)))

(declare-fun c!177041 () Bool)

(assert (=> b!1057533 (= c!177041 (is-EmptyLang!2906 lt!359201))))

(declare-fun b!1057534 () Bool)

(declare-fun e!671383 () Bool)

(assert (=> b!1057534 (= e!671383 e!671381)))

(declare-fun res!472810 () Bool)

(assert (=> b!1057534 (=> (not res!472810) (not e!671381))))

(assert (=> b!1057534 (= res!472810 (not lt!359251))))

(declare-fun b!1057535 () Bool)

(assert (=> b!1057535 (= e!671385 (= lt!359251 call!75670))))

(declare-fun b!1057536 () Bool)

(declare-fun res!472812 () Bool)

(declare-fun e!671384 () Bool)

(assert (=> b!1057536 (=> (not res!472812) (not e!671384))))

(assert (=> b!1057536 (= res!472812 (not call!75670))))

(declare-fun b!1057537 () Bool)

(declare-fun res!472811 () Bool)

(assert (=> b!1057537 (=> res!472811 e!671383)))

(assert (=> b!1057537 (= res!472811 (not (is-ElementMatch!2906 lt!359201)))))

(assert (=> b!1057537 (= e!671382 e!671383)))

(declare-fun b!1057538 () Bool)

(declare-fun e!671380 () Bool)

(assert (=> b!1057538 (= e!671380 (matchR!1442 (derivativeStep!798 lt!359201 (head!1953 s!10566)) (tail!1515 s!10566)))))

(declare-fun d!300337 () Bool)

(assert (=> d!300337 e!671385))

(declare-fun c!177042 () Bool)

(assert (=> d!300337 (= c!177042 (is-EmptyExpr!2906 lt!359201))))

(assert (=> d!300337 (= lt!359251 e!671380)))

(declare-fun c!177043 () Bool)

(assert (=> d!300337 (= c!177043 (isEmpty!6538 s!10566))))

(assert (=> d!300337 (validRegex!1375 lt!359201)))

(assert (=> d!300337 (= (matchR!1442 lt!359201 s!10566) lt!359251)))

(declare-fun b!1057539 () Bool)

(declare-fun res!472813 () Bool)

(assert (=> b!1057539 (=> res!472813 e!671383)))

(assert (=> b!1057539 (= res!472813 e!671384)))

(declare-fun res!472808 () Bool)

(assert (=> b!1057539 (=> (not res!472808) (not e!671384))))

(assert (=> b!1057539 (= res!472808 lt!359251)))

(declare-fun b!1057540 () Bool)

(declare-fun res!472809 () Bool)

(assert (=> b!1057540 (=> (not res!472809) (not e!671384))))

(assert (=> b!1057540 (= res!472809 (isEmpty!6538 (tail!1515 s!10566)))))

(declare-fun b!1057541 () Bool)

(declare-fun res!472807 () Bool)

(assert (=> b!1057541 (=> res!472807 e!671386)))

(assert (=> b!1057541 (= res!472807 (not (isEmpty!6538 (tail!1515 s!10566))))))

(declare-fun bm!75665 () Bool)

(assert (=> bm!75665 (= call!75670 (isEmpty!6538 s!10566))))

(declare-fun b!1057542 () Bool)

(assert (=> b!1057542 (= e!671384 (= (head!1953 s!10566) (c!176943 lt!359201)))))

(declare-fun b!1057543 () Bool)

(assert (=> b!1057543 (= e!671380 (nullable!998 lt!359201))))

(assert (= (and d!300337 c!177043) b!1057543))

(assert (= (and d!300337 (not c!177043)) b!1057538))

(assert (= (and d!300337 c!177042) b!1057535))

(assert (= (and d!300337 (not c!177042)) b!1057533))

(assert (= (and b!1057533 c!177041) b!1057531))

(assert (= (and b!1057533 (not c!177041)) b!1057537))

(assert (= (and b!1057537 (not res!472811)) b!1057539))

(assert (= (and b!1057539 res!472808) b!1057536))

(assert (= (and b!1057536 res!472812) b!1057540))

(assert (= (and b!1057540 res!472809) b!1057542))

(assert (= (and b!1057539 (not res!472813)) b!1057534))

(assert (= (and b!1057534 res!472810) b!1057530))

(assert (= (and b!1057530 (not res!472814)) b!1057541))

(assert (= (and b!1057541 (not res!472807)) b!1057532))

(assert (= (or b!1057535 b!1057530 b!1057536) bm!75665))

(assert (=> d!300337 m!1219569))

(assert (=> d!300337 m!1219607))

(assert (=> b!1057541 m!1219571))

(assert (=> b!1057541 m!1219571))

(assert (=> b!1057541 m!1219573))

(assert (=> bm!75665 m!1219569))

(assert (=> b!1057542 m!1219575))

(assert (=> b!1057540 m!1219571))

(assert (=> b!1057540 m!1219571))

(assert (=> b!1057540 m!1219573))

(declare-fun m!1219647 () Bool)

(assert (=> b!1057543 m!1219647))

(assert (=> b!1057538 m!1219575))

(assert (=> b!1057538 m!1219575))

(declare-fun m!1219649 () Bool)

(assert (=> b!1057538 m!1219649))

(assert (=> b!1057538 m!1219571))

(assert (=> b!1057538 m!1219649))

(assert (=> b!1057538 m!1219571))

(declare-fun m!1219651 () Bool)

(assert (=> b!1057538 m!1219651))

(assert (=> b!1057532 m!1219575))

(assert (=> b!1057177 d!300337))

(declare-fun b!1057548 () Bool)

(declare-fun e!671389 () Bool)

(declare-fun tp!318119 () Bool)

(assert (=> b!1057548 (= e!671389 (and tp_is_empty!5455 tp!318119))))

(assert (=> b!1057176 (= tp!318096 e!671389)))

(assert (= (and b!1057176 (is-Cons!10120 (t!101182 s!10566))) b!1057548))

(declare-fun b!1057559 () Bool)

(declare-fun e!671392 () Bool)

(assert (=> b!1057559 (= e!671392 tp_is_empty!5455)))

(declare-fun b!1057560 () Bool)

(declare-fun tp!318133 () Bool)

(declare-fun tp!318134 () Bool)

(assert (=> b!1057560 (= e!671392 (and tp!318133 tp!318134))))

(assert (=> b!1057175 (= tp!318094 e!671392)))

(declare-fun b!1057562 () Bool)

(declare-fun tp!318131 () Bool)

(declare-fun tp!318132 () Bool)

(assert (=> b!1057562 (= e!671392 (and tp!318131 tp!318132))))

(declare-fun b!1057561 () Bool)

(declare-fun tp!318130 () Bool)

(assert (=> b!1057561 (= e!671392 tp!318130)))

(assert (= (and b!1057175 (is-ElementMatch!2906 (reg!3235 r!15766))) b!1057559))

(assert (= (and b!1057175 (is-Concat!4739 (reg!3235 r!15766))) b!1057560))

(assert (= (and b!1057175 (is-Star!2906 (reg!3235 r!15766))) b!1057561))

(assert (= (and b!1057175 (is-Union!2906 (reg!3235 r!15766))) b!1057562))

(declare-fun b!1057563 () Bool)

(declare-fun e!671393 () Bool)

(assert (=> b!1057563 (= e!671393 tp_is_empty!5455)))

(declare-fun b!1057564 () Bool)

(declare-fun tp!318138 () Bool)

(declare-fun tp!318139 () Bool)

(assert (=> b!1057564 (= e!671393 (and tp!318138 tp!318139))))

(assert (=> b!1057169 (= tp!318095 e!671393)))

(declare-fun b!1057566 () Bool)

(declare-fun tp!318136 () Bool)

(declare-fun tp!318137 () Bool)

(assert (=> b!1057566 (= e!671393 (and tp!318136 tp!318137))))

(declare-fun b!1057565 () Bool)

(declare-fun tp!318135 () Bool)

(assert (=> b!1057565 (= e!671393 tp!318135)))

(assert (= (and b!1057169 (is-ElementMatch!2906 (regOne!6325 r!15766))) b!1057563))

(assert (= (and b!1057169 (is-Concat!4739 (regOne!6325 r!15766))) b!1057564))

(assert (= (and b!1057169 (is-Star!2906 (regOne!6325 r!15766))) b!1057565))

(assert (= (and b!1057169 (is-Union!2906 (regOne!6325 r!15766))) b!1057566))

(declare-fun b!1057567 () Bool)

(declare-fun e!671394 () Bool)

(assert (=> b!1057567 (= e!671394 tp_is_empty!5455)))

(declare-fun b!1057568 () Bool)

(declare-fun tp!318143 () Bool)

(declare-fun tp!318144 () Bool)

(assert (=> b!1057568 (= e!671394 (and tp!318143 tp!318144))))

(assert (=> b!1057169 (= tp!318097 e!671394)))

(declare-fun b!1057570 () Bool)

(declare-fun tp!318141 () Bool)

(declare-fun tp!318142 () Bool)

(assert (=> b!1057570 (= e!671394 (and tp!318141 tp!318142))))

(declare-fun b!1057569 () Bool)

(declare-fun tp!318140 () Bool)

(assert (=> b!1057569 (= e!671394 tp!318140)))

(assert (= (and b!1057169 (is-ElementMatch!2906 (regTwo!6325 r!15766))) b!1057567))

(assert (= (and b!1057169 (is-Concat!4739 (regTwo!6325 r!15766))) b!1057568))

(assert (= (and b!1057169 (is-Star!2906 (regTwo!6325 r!15766))) b!1057569))

(assert (= (and b!1057169 (is-Union!2906 (regTwo!6325 r!15766))) b!1057570))

(declare-fun b!1057571 () Bool)

(declare-fun e!671395 () Bool)

(assert (=> b!1057571 (= e!671395 tp_is_empty!5455)))

(declare-fun b!1057572 () Bool)

(declare-fun tp!318148 () Bool)

(declare-fun tp!318149 () Bool)

(assert (=> b!1057572 (= e!671395 (and tp!318148 tp!318149))))

(assert (=> b!1057173 (= tp!318098 e!671395)))

(declare-fun b!1057574 () Bool)

(declare-fun tp!318146 () Bool)

(declare-fun tp!318147 () Bool)

(assert (=> b!1057574 (= e!671395 (and tp!318146 tp!318147))))

(declare-fun b!1057573 () Bool)

(declare-fun tp!318145 () Bool)

(assert (=> b!1057573 (= e!671395 tp!318145)))

(assert (= (and b!1057173 (is-ElementMatch!2906 (regOne!6324 r!15766))) b!1057571))

(assert (= (and b!1057173 (is-Concat!4739 (regOne!6324 r!15766))) b!1057572))

(assert (= (and b!1057173 (is-Star!2906 (regOne!6324 r!15766))) b!1057573))

(assert (= (and b!1057173 (is-Union!2906 (regOne!6324 r!15766))) b!1057574))

(declare-fun b!1057575 () Bool)

(declare-fun e!671396 () Bool)

(assert (=> b!1057575 (= e!671396 tp_is_empty!5455)))

(declare-fun b!1057576 () Bool)

(declare-fun tp!318153 () Bool)

(declare-fun tp!318154 () Bool)

(assert (=> b!1057576 (= e!671396 (and tp!318153 tp!318154))))

(assert (=> b!1057173 (= tp!318093 e!671396)))

(declare-fun b!1057578 () Bool)

(declare-fun tp!318151 () Bool)

(declare-fun tp!318152 () Bool)

(assert (=> b!1057578 (= e!671396 (and tp!318151 tp!318152))))

(declare-fun b!1057577 () Bool)

(declare-fun tp!318150 () Bool)

(assert (=> b!1057577 (= e!671396 tp!318150)))

(assert (= (and b!1057173 (is-ElementMatch!2906 (regTwo!6324 r!15766))) b!1057575))

(assert (= (and b!1057173 (is-Concat!4739 (regTwo!6324 r!15766))) b!1057576))

(assert (= (and b!1057173 (is-Star!2906 (regTwo!6324 r!15766))) b!1057577))

(assert (= (and b!1057173 (is-Union!2906 (regTwo!6324 r!15766))) b!1057578))

(push 1)

(assert (not b!1057402))

(assert (not b!1057542))

(assert (not b!1057443))

(assert (not b!1057573))

(assert (not b!1057562))

(assert (not bm!75625))

(assert (not b!1057399))

(assert (not b!1057449))

(assert (not bm!75624))

(assert (not d!300335))

(assert (not b!1057483))

(assert (not b!1057578))

(assert (not bm!75665))

(assert (not bm!75664))

(assert (not d!300333))

(assert (not d!300325))

(assert (not b!1057453))

(assert (not bm!75659))

(assert (not b!1057426))

(assert (not d!300317))

(assert (not b!1057485))

(assert (not bm!75657))

(assert (not b!1057561))

(assert (not b!1057401))

(assert (not b!1057482))

(assert (not bm!75641))

(assert (not bm!75640))

(assert (not d!300323))

(assert (not b!1057348))

(assert (not bm!75662))

(assert (not bm!75628))

(assert (not b!1057393))

(assert (not b!1057548))

(assert (not b!1057564))

(assert (not b!1057538))

(assert (not d!300315))

(assert (not b!1057566))

(assert (not b!1057403))

(assert (not b!1057541))

(assert (not b!1057480))

(assert (not b!1057459))

(assert (not b!1057569))

(assert (not b!1057435))

(assert (not b!1057404))

(assert (not b!1057560))

(assert (not b!1057464))

(assert (not d!300329))

(assert (not b!1057576))

(assert (not b!1057570))

(assert (not bm!75635))

(assert (not d!300337))

(assert (not b!1057461))

(assert (not b!1057577))

(assert (not bm!75643))

(assert (not b!1057568))

(assert (not bm!75644))

(assert (not b!1057451))

(assert tp_is_empty!5455)

(assert (not b!1057517))

(assert (not b!1057474))

(assert (not b!1057543))

(assert (not b!1057532))

(assert (not b!1057460))

(assert (not b!1057351))

(assert (not b!1057484))

(assert (not bm!75637))

(assert (not b!1057452))

(assert (not b!1057565))

(assert (not b!1057572))

(assert (not bm!75642))

(assert (not b!1057454))

(assert (not b!1057540))

(assert (not bm!75638))

(assert (not b!1057528))

(assert (not d!300331))

(assert (not b!1057574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

