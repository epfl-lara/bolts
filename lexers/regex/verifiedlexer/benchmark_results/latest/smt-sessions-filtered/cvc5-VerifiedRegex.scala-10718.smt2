; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548964 () Bool)

(assert start!548964)

(declare-fun res!2201731 () Bool)

(declare-fun e!3229348 () Bool)

(assert (=> start!548964 (=> (not res!2201731) (not e!3229348))))

(declare-datatypes ((C!29634 0))(
  ( (C!29635 (val!24519 Int)) )
))
(declare-datatypes ((Regex!14682 0))(
  ( (ElementMatch!14682 (c!893383 C!29634)) (Concat!23527 (regOne!29876 Regex!14682) (regTwo!29876 Regex!14682)) (EmptyExpr!14682) (Star!14682 (reg!15011 Regex!14682)) (EmptyLang!14682) (Union!14682 (regOne!29877 Regex!14682) (regTwo!29877 Regex!14682)) )
))
(declare-fun r!7292 () Regex!14682)

(declare-fun validRegex!6418 (Regex!14682) Bool)

(assert (=> start!548964 (= res!2201731 (validRegex!6418 r!7292))))

(assert (=> start!548964 e!3229348))

(declare-fun e!3229349 () Bool)

(assert (=> start!548964 e!3229349))

(declare-fun condSetEmpty!32587 () Bool)

(declare-datatypes ((List!60345 0))(
  ( (Nil!60221) (Cons!60221 (h!66669 Regex!14682) (t!373498 List!60345)) )
))
(declare-datatypes ((Context!8132 0))(
  ( (Context!8133 (exprs!4566 List!60345)) )
))
(declare-fun z!1189 () (Set Context!8132))

(assert (=> start!548964 (= condSetEmpty!32587 (= z!1189 (as set.empty (Set Context!8132))))))

(declare-fun setRes!32587 () Bool)

(assert (=> start!548964 setRes!32587))

(declare-fun e!3229344 () Bool)

(assert (=> start!548964 e!3229344))

(declare-fun e!3229350 () Bool)

(assert (=> start!548964 e!3229350))

(declare-fun b!5183268 () Bool)

(declare-fun tp_is_empty!38617 () Bool)

(assert (=> b!5183268 (= e!3229349 tp_is_empty!38617)))

(declare-fun b!5183269 () Bool)

(declare-fun res!2201725 () Bool)

(declare-fun e!3229345 () Bool)

(assert (=> b!5183269 (=> res!2201725 e!3229345)))

(declare-datatypes ((List!60346 0))(
  ( (Nil!60222) (Cons!60222 (h!66670 Context!8132) (t!373499 List!60346)) )
))
(declare-fun zl!343 () List!60346)

(assert (=> b!5183269 (= res!2201725 (not (is-Cons!60221 (exprs!4566 (h!66670 zl!343)))))))

(declare-fun b!5183270 () Bool)

(declare-fun tp!1453955 () Bool)

(declare-fun e!3229346 () Bool)

(declare-fun inv!79953 (Context!8132) Bool)

(assert (=> b!5183270 (= e!3229344 (and (inv!79953 (h!66670 zl!343)) e!3229346 tp!1453955))))

(declare-fun b!5183271 () Bool)

(declare-fun res!2201728 () Bool)

(assert (=> b!5183271 (=> (not res!2201728) (not e!3229348))))

(declare-fun unfocusZipper!424 (List!60346) Regex!14682)

(assert (=> b!5183271 (= res!2201728 (= r!7292 (unfocusZipper!424 zl!343)))))

(declare-fun b!5183272 () Bool)

(declare-fun res!2201727 () Bool)

(assert (=> b!5183272 (=> res!2201727 e!3229345)))

(declare-fun generalisedConcat!351 (List!60345) Regex!14682)

(assert (=> b!5183272 (= res!2201727 (not (= r!7292 (generalisedConcat!351 (exprs!4566 (h!66670 zl!343))))))))

(declare-fun b!5183273 () Bool)

(declare-fun lambda!259160 () Int)

(declare-fun forall!14193 (List!60345 Int) Bool)

(declare-fun unfocusZipperList!124 (List!60346) List!60345)

(assert (=> b!5183273 (= e!3229345 (forall!14193 (unfocusZipperList!124 zl!343) lambda!259160))))

(declare-fun b!5183274 () Bool)

(declare-fun tp!1453950 () Bool)

(assert (=> b!5183274 (= e!3229349 tp!1453950)))

(declare-fun b!5183275 () Bool)

(declare-fun e!3229347 () Bool)

(declare-fun tp!1453958 () Bool)

(assert (=> b!5183275 (= e!3229347 tp!1453958)))

(declare-fun b!5183276 () Bool)

(declare-fun tp!1453959 () Bool)

(assert (=> b!5183276 (= e!3229346 tp!1453959)))

(declare-fun b!5183277 () Bool)

(declare-fun tp!1453951 () Bool)

(assert (=> b!5183277 (= e!3229350 (and tp_is_empty!38617 tp!1453951))))

(declare-fun setIsEmpty!32587 () Bool)

(assert (=> setIsEmpty!32587 setRes!32587))

(declare-fun b!5183278 () Bool)

(declare-fun tp!1453954 () Bool)

(declare-fun tp!1453956 () Bool)

(assert (=> b!5183278 (= e!3229349 (and tp!1453954 tp!1453956))))

(declare-fun b!5183279 () Bool)

(declare-fun res!2201726 () Bool)

(assert (=> b!5183279 (=> res!2201726 e!3229345)))

(declare-fun isEmpty!32230 (List!60346) Bool)

(assert (=> b!5183279 (= res!2201726 (not (isEmpty!32230 (t!373499 zl!343))))))

(declare-fun b!5183280 () Bool)

(declare-fun res!2201730 () Bool)

(assert (=> b!5183280 (=> (not res!2201730) (not e!3229348))))

(declare-fun toList!8466 ((Set Context!8132)) List!60346)

(assert (=> b!5183280 (= res!2201730 (= (toList!8466 z!1189) zl!343))))

(declare-fun b!5183281 () Bool)

(declare-fun tp!1453952 () Bool)

(declare-fun tp!1453957 () Bool)

(assert (=> b!5183281 (= e!3229349 (and tp!1453952 tp!1453957))))

(declare-fun setElem!32587 () Context!8132)

(declare-fun tp!1453953 () Bool)

(declare-fun setNonEmpty!32587 () Bool)

(assert (=> setNonEmpty!32587 (= setRes!32587 (and tp!1453953 (inv!79953 setElem!32587) e!3229347))))

(declare-fun setRest!32587 () (Set Context!8132))

(assert (=> setNonEmpty!32587 (= z!1189 (set.union (set.insert setElem!32587 (as set.empty (Set Context!8132))) setRest!32587))))

(declare-fun b!5183282 () Bool)

(assert (=> b!5183282 (= e!3229348 (not e!3229345))))

(declare-fun res!2201729 () Bool)

(assert (=> b!5183282 (=> res!2201729 e!3229345)))

(assert (=> b!5183282 (= res!2201729 (not (is-Cons!60222 zl!343)))))

(declare-datatypes ((List!60347 0))(
  ( (Nil!60223) (Cons!60223 (h!66671 C!29634) (t!373500 List!60347)) )
))
(declare-fun s!2326 () List!60347)

(declare-fun matchR!6867 (Regex!14682 List!60347) Bool)

(declare-fun matchRSpec!1785 (Regex!14682 List!60347) Bool)

(assert (=> b!5183282 (= (matchR!6867 r!7292 s!2326) (matchRSpec!1785 r!7292 s!2326))))

(declare-datatypes ((Unit!152198 0))(
  ( (Unit!152199) )
))
(declare-fun lt!2136136 () Unit!152198)

(declare-fun mainMatchTheorem!1785 (Regex!14682 List!60347) Unit!152198)

(assert (=> b!5183282 (= lt!2136136 (mainMatchTheorem!1785 r!7292 s!2326))))

(assert (= (and start!548964 res!2201731) b!5183280))

(assert (= (and b!5183280 res!2201730) b!5183271))

(assert (= (and b!5183271 res!2201728) b!5183282))

(assert (= (and b!5183282 (not res!2201729)) b!5183279))

(assert (= (and b!5183279 (not res!2201726)) b!5183272))

(assert (= (and b!5183272 (not res!2201727)) b!5183269))

(assert (= (and b!5183269 (not res!2201725)) b!5183273))

(assert (= (and start!548964 (is-ElementMatch!14682 r!7292)) b!5183268))

(assert (= (and start!548964 (is-Concat!23527 r!7292)) b!5183281))

(assert (= (and start!548964 (is-Star!14682 r!7292)) b!5183274))

(assert (= (and start!548964 (is-Union!14682 r!7292)) b!5183278))

(assert (= (and start!548964 condSetEmpty!32587) setIsEmpty!32587))

(assert (= (and start!548964 (not condSetEmpty!32587)) setNonEmpty!32587))

(assert (= setNonEmpty!32587 b!5183275))

(assert (= b!5183270 b!5183276))

(assert (= (and start!548964 (is-Cons!60222 zl!343)) b!5183270))

(assert (= (and start!548964 (is-Cons!60223 s!2326)) b!5183277))

(declare-fun m!6243078 () Bool)

(assert (=> b!5183280 m!6243078))

(declare-fun m!6243080 () Bool)

(assert (=> b!5183282 m!6243080))

(declare-fun m!6243082 () Bool)

(assert (=> b!5183282 m!6243082))

(declare-fun m!6243084 () Bool)

(assert (=> b!5183282 m!6243084))

(declare-fun m!6243086 () Bool)

(assert (=> b!5183271 m!6243086))

(declare-fun m!6243088 () Bool)

(assert (=> b!5183270 m!6243088))

(declare-fun m!6243090 () Bool)

(assert (=> start!548964 m!6243090))

(declare-fun m!6243092 () Bool)

(assert (=> b!5183272 m!6243092))

(declare-fun m!6243094 () Bool)

(assert (=> setNonEmpty!32587 m!6243094))

(declare-fun m!6243096 () Bool)

(assert (=> b!5183273 m!6243096))

(assert (=> b!5183273 m!6243096))

(declare-fun m!6243098 () Bool)

(assert (=> b!5183273 m!6243098))

(declare-fun m!6243100 () Bool)

(assert (=> b!5183279 m!6243100))

(push 1)

(assert (not b!5183277))

(assert (not b!5183274))

(assert (not setNonEmpty!32587))

(assert tp_is_empty!38617)

(assert (not b!5183275))

(assert (not b!5183270))

(assert (not b!5183280))

(assert (not b!5183273))

(assert (not b!5183279))

(assert (not b!5183276))

(assert (not start!548964))

(assert (not b!5183272))

(assert (not b!5183278))

(assert (not b!5183281))

(assert (not b!5183282))

(assert (not b!5183271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1208098 () Bool)

(declare-fun d!1676013 () Bool)

(assert (= bs!1208098 (and d!1676013 b!5183273)))

(declare-fun lambda!259166 () Int)

(assert (=> bs!1208098 (= lambda!259166 lambda!259160)))

(assert (=> d!1676013 (= (inv!79953 (h!66670 zl!343)) (forall!14193 (exprs!4566 (h!66670 zl!343)) lambda!259166))))

(declare-fun bs!1208099 () Bool)

(assert (= bs!1208099 d!1676013))

(declare-fun m!6243126 () Bool)

(assert (=> bs!1208099 m!6243126))

(assert (=> b!5183270 d!1676013))

(declare-fun d!1676015 () Bool)

(declare-fun e!3229374 () Bool)

(assert (=> d!1676015 e!3229374))

(declare-fun res!2201755 () Bool)

(assert (=> d!1676015 (=> (not res!2201755) (not e!3229374))))

(declare-fun lt!2136142 () List!60346)

(declare-fun noDuplicate!1143 (List!60346) Bool)

(assert (=> d!1676015 (= res!2201755 (noDuplicate!1143 lt!2136142))))

(declare-fun choose!38526 ((Set Context!8132)) List!60346)

(assert (=> d!1676015 (= lt!2136142 (choose!38526 z!1189))))

(assert (=> d!1676015 (= (toList!8466 z!1189) lt!2136142)))

(declare-fun b!5183330 () Bool)

(declare-fun content!10679 (List!60346) (Set Context!8132))

(assert (=> b!5183330 (= e!3229374 (= (content!10679 lt!2136142) z!1189))))

(assert (= (and d!1676015 res!2201755) b!5183330))

(declare-fun m!6243128 () Bool)

(assert (=> d!1676015 m!6243128))

(declare-fun m!6243130 () Bool)

(assert (=> d!1676015 m!6243130))

(declare-fun m!6243132 () Bool)

(assert (=> b!5183330 m!6243132))

(assert (=> b!5183280 d!1676015))

(declare-fun d!1676017 () Bool)

(declare-fun lt!2136145 () Regex!14682)

(assert (=> d!1676017 (validRegex!6418 lt!2136145)))

(declare-fun generalisedUnion!611 (List!60345) Regex!14682)

(assert (=> d!1676017 (= lt!2136145 (generalisedUnion!611 (unfocusZipperList!124 zl!343)))))

(assert (=> d!1676017 (= (unfocusZipper!424 zl!343) lt!2136145)))

(declare-fun bs!1208100 () Bool)

(assert (= bs!1208100 d!1676017))

(declare-fun m!6243134 () Bool)

(assert (=> bs!1208100 m!6243134))

(assert (=> bs!1208100 m!6243096))

(assert (=> bs!1208100 m!6243096))

(declare-fun m!6243136 () Bool)

(assert (=> bs!1208100 m!6243136))

(assert (=> b!5183271 d!1676017))

(declare-fun b!5183349 () Bool)

(declare-fun e!3229395 () Bool)

(declare-fun e!3229393 () Bool)

(assert (=> b!5183349 (= e!3229395 e!3229393)))

(declare-fun res!2201766 () Bool)

(assert (=> b!5183349 (=> (not res!2201766) (not e!3229393))))

(declare-fun call!364278 () Bool)

(assert (=> b!5183349 (= res!2201766 call!364278)))

(declare-fun b!5183350 () Bool)

(declare-fun res!2201768 () Bool)

(assert (=> b!5183350 (=> res!2201768 e!3229395)))

(assert (=> b!5183350 (= res!2201768 (not (is-Concat!23527 r!7292)))))

(declare-fun e!3229390 () Bool)

(assert (=> b!5183350 (= e!3229390 e!3229395)))

(declare-fun b!5183351 () Bool)

(declare-fun res!2201769 () Bool)

(declare-fun e!3229389 () Bool)

(assert (=> b!5183351 (=> (not res!2201769) (not e!3229389))))

(assert (=> b!5183351 (= res!2201769 call!364278)))

(assert (=> b!5183351 (= e!3229390 e!3229389)))

(declare-fun b!5183352 () Bool)

(declare-fun e!3229394 () Bool)

(declare-fun e!3229391 () Bool)

(assert (=> b!5183352 (= e!3229394 e!3229391)))

(declare-fun res!2201770 () Bool)

(declare-fun nullable!4901 (Regex!14682) Bool)

(assert (=> b!5183352 (= res!2201770 (not (nullable!4901 (reg!15011 r!7292))))))

(assert (=> b!5183352 (=> (not res!2201770) (not e!3229391))))

(declare-fun bm!364273 () Bool)

(declare-fun call!364280 () Bool)

(assert (=> bm!364273 (= call!364278 call!364280)))

(declare-fun b!5183353 () Bool)

(assert (=> b!5183353 (= e!3229391 call!364280)))

(declare-fun b!5183354 () Bool)

(declare-fun call!364279 () Bool)

(assert (=> b!5183354 (= e!3229393 call!364279)))

(declare-fun b!5183355 () Bool)

(declare-fun e!3229392 () Bool)

(assert (=> b!5183355 (= e!3229392 e!3229394)))

(declare-fun c!893390 () Bool)

(assert (=> b!5183355 (= c!893390 (is-Star!14682 r!7292))))

(declare-fun bm!364275 () Bool)

(declare-fun c!893389 () Bool)

(assert (=> bm!364275 (= call!364279 (validRegex!6418 (ite c!893389 (regTwo!29877 r!7292) (regTwo!29876 r!7292))))))

(declare-fun b!5183356 () Bool)

(assert (=> b!5183356 (= e!3229389 call!364279)))

(declare-fun b!5183357 () Bool)

(assert (=> b!5183357 (= e!3229394 e!3229390)))

(assert (=> b!5183357 (= c!893389 (is-Union!14682 r!7292))))

(declare-fun bm!364274 () Bool)

(assert (=> bm!364274 (= call!364280 (validRegex!6418 (ite c!893390 (reg!15011 r!7292) (ite c!893389 (regOne!29877 r!7292) (regOne!29876 r!7292)))))))

(declare-fun d!1676021 () Bool)

(declare-fun res!2201767 () Bool)

(assert (=> d!1676021 (=> res!2201767 e!3229392)))

(assert (=> d!1676021 (= res!2201767 (is-ElementMatch!14682 r!7292))))

(assert (=> d!1676021 (= (validRegex!6418 r!7292) e!3229392)))

(assert (= (and d!1676021 (not res!2201767)) b!5183355))

(assert (= (and b!5183355 c!893390) b!5183352))

(assert (= (and b!5183355 (not c!893390)) b!5183357))

(assert (= (and b!5183352 res!2201770) b!5183353))

(assert (= (and b!5183357 c!893389) b!5183351))

(assert (= (and b!5183357 (not c!893389)) b!5183350))

(assert (= (and b!5183351 res!2201769) b!5183356))

(assert (= (and b!5183350 (not res!2201768)) b!5183349))

(assert (= (and b!5183349 res!2201766) b!5183354))

(assert (= (or b!5183356 b!5183354) bm!364275))

(assert (= (or b!5183351 b!5183349) bm!364273))

(assert (= (or b!5183353 bm!364273) bm!364274))

(declare-fun m!6243142 () Bool)

(assert (=> b!5183352 m!6243142))

(declare-fun m!6243144 () Bool)

(assert (=> bm!364275 m!6243144))

(declare-fun m!6243146 () Bool)

(assert (=> bm!364274 m!6243146))

(assert (=> start!548964 d!1676021))

(declare-fun d!1676025 () Bool)

(assert (=> d!1676025 (= (isEmpty!32230 (t!373499 zl!343)) (is-Nil!60222 (t!373499 zl!343)))))

(assert (=> b!5183279 d!1676025))

(declare-fun d!1676027 () Bool)

(declare-fun res!2201775 () Bool)

(declare-fun e!3229400 () Bool)

(assert (=> d!1676027 (=> res!2201775 e!3229400)))

(assert (=> d!1676027 (= res!2201775 (is-Nil!60221 (unfocusZipperList!124 zl!343)))))

(assert (=> d!1676027 (= (forall!14193 (unfocusZipperList!124 zl!343) lambda!259160) e!3229400)))

(declare-fun b!5183362 () Bool)

(declare-fun e!3229401 () Bool)

(assert (=> b!5183362 (= e!3229400 e!3229401)))

(declare-fun res!2201776 () Bool)

(assert (=> b!5183362 (=> (not res!2201776) (not e!3229401))))

(declare-fun dynLambda!23897 (Int Regex!14682) Bool)

(assert (=> b!5183362 (= res!2201776 (dynLambda!23897 lambda!259160 (h!66669 (unfocusZipperList!124 zl!343))))))

(declare-fun b!5183363 () Bool)

(assert (=> b!5183363 (= e!3229401 (forall!14193 (t!373498 (unfocusZipperList!124 zl!343)) lambda!259160))))

(assert (= (and d!1676027 (not res!2201775)) b!5183362))

(assert (= (and b!5183362 res!2201776) b!5183363))

(declare-fun b_lambda!201149 () Bool)

(assert (=> (not b_lambda!201149) (not b!5183362)))

(declare-fun m!6243148 () Bool)

(assert (=> b!5183362 m!6243148))

(declare-fun m!6243150 () Bool)

(assert (=> b!5183363 m!6243150))

(assert (=> b!5183273 d!1676027))

(declare-fun bs!1208102 () Bool)

(declare-fun d!1676029 () Bool)

(assert (= bs!1208102 (and d!1676029 b!5183273)))

(declare-fun lambda!259169 () Int)

(assert (=> bs!1208102 (= lambda!259169 lambda!259160)))

(declare-fun bs!1208103 () Bool)

(assert (= bs!1208103 (and d!1676029 d!1676013)))

(assert (=> bs!1208103 (= lambda!259169 lambda!259166)))

(declare-fun lt!2136151 () List!60345)

(assert (=> d!1676029 (forall!14193 lt!2136151 lambda!259169)))

(declare-fun e!3229404 () List!60345)

(assert (=> d!1676029 (= lt!2136151 e!3229404)))

(declare-fun c!893393 () Bool)

(assert (=> d!1676029 (= c!893393 (is-Cons!60222 zl!343))))

(assert (=> d!1676029 (= (unfocusZipperList!124 zl!343) lt!2136151)))

(declare-fun b!5183368 () Bool)

(assert (=> b!5183368 (= e!3229404 (Cons!60221 (generalisedConcat!351 (exprs!4566 (h!66670 zl!343))) (unfocusZipperList!124 (t!373499 zl!343))))))

(declare-fun b!5183369 () Bool)

(assert (=> b!5183369 (= e!3229404 Nil!60221)))

(assert (= (and d!1676029 c!893393) b!5183368))

(assert (= (and d!1676029 (not c!893393)) b!5183369))

(declare-fun m!6243152 () Bool)

(assert (=> d!1676029 m!6243152))

(assert (=> b!5183368 m!6243092))

(declare-fun m!6243154 () Bool)

(assert (=> b!5183368 m!6243154))

(assert (=> b!5183273 d!1676029))

(declare-fun b!5183418 () Bool)

(declare-fun res!2201804 () Bool)

(declare-fun e!3229434 () Bool)

(assert (=> b!5183418 (=> (not res!2201804) (not e!3229434))))

(declare-fun isEmpty!32232 (List!60347) Bool)

(declare-fun tail!10185 (List!60347) List!60347)

(assert (=> b!5183418 (= res!2201804 (isEmpty!32232 (tail!10185 s!2326)))))

(declare-fun b!5183419 () Bool)

(declare-fun e!3229431 () Bool)

(declare-fun e!3229435 () Bool)

(assert (=> b!5183419 (= e!3229431 e!3229435)))

(declare-fun res!2201801 () Bool)

(assert (=> b!5183419 (=> res!2201801 e!3229435)))

(declare-fun call!364283 () Bool)

(assert (=> b!5183419 (= res!2201801 call!364283)))

(declare-fun b!5183420 () Bool)

(declare-fun head!11086 (List!60347) C!29634)

(assert (=> b!5183420 (= e!3229435 (not (= (head!11086 s!2326) (c!893383 r!7292))))))

(declare-fun b!5183422 () Bool)

(declare-fun e!3229432 () Bool)

(declare-fun derivativeStep!4008 (Regex!14682 C!29634) Regex!14682)

(assert (=> b!5183422 (= e!3229432 (matchR!6867 (derivativeStep!4008 r!7292 (head!11086 s!2326)) (tail!10185 s!2326)))))

(declare-fun b!5183423 () Bool)

(declare-fun e!3229433 () Bool)

(assert (=> b!5183423 (= e!3229433 e!3229431)))

(declare-fun res!2201802 () Bool)

(assert (=> b!5183423 (=> (not res!2201802) (not e!3229431))))

(declare-fun lt!2136156 () Bool)

(assert (=> b!5183423 (= res!2201802 (not lt!2136156))))

(declare-fun b!5183424 () Bool)

(declare-fun res!2201800 () Bool)

(assert (=> b!5183424 (=> res!2201800 e!3229433)))

(assert (=> b!5183424 (= res!2201800 (not (is-ElementMatch!14682 r!7292)))))

(declare-fun e!3229436 () Bool)

(assert (=> b!5183424 (= e!3229436 e!3229433)))

(declare-fun b!5183425 () Bool)

(declare-fun e!3229437 () Bool)

(assert (=> b!5183425 (= e!3229437 (= lt!2136156 call!364283))))

(declare-fun b!5183426 () Bool)

(declare-fun res!2201803 () Bool)

(assert (=> b!5183426 (=> res!2201803 e!3229435)))

(assert (=> b!5183426 (= res!2201803 (not (isEmpty!32232 (tail!10185 s!2326))))))

(declare-fun b!5183427 () Bool)

(assert (=> b!5183427 (= e!3229436 (not lt!2136156))))

(declare-fun b!5183428 () Bool)

(assert (=> b!5183428 (= e!3229434 (= (head!11086 s!2326) (c!893383 r!7292)))))

(declare-fun b!5183421 () Bool)

(assert (=> b!5183421 (= e!3229437 e!3229436)))

(declare-fun c!893409 () Bool)

(assert (=> b!5183421 (= c!893409 (is-EmptyLang!14682 r!7292))))

(declare-fun d!1676031 () Bool)

(assert (=> d!1676031 e!3229437))

(declare-fun c!893410 () Bool)

(assert (=> d!1676031 (= c!893410 (is-EmptyExpr!14682 r!7292))))

(assert (=> d!1676031 (= lt!2136156 e!3229432)))

(declare-fun c!893408 () Bool)

(assert (=> d!1676031 (= c!893408 (isEmpty!32232 s!2326))))

(assert (=> d!1676031 (validRegex!6418 r!7292)))

(assert (=> d!1676031 (= (matchR!6867 r!7292 s!2326) lt!2136156)))

(declare-fun bm!364278 () Bool)

(assert (=> bm!364278 (= call!364283 (isEmpty!32232 s!2326))))

(declare-fun b!5183429 () Bool)

(assert (=> b!5183429 (= e!3229432 (nullable!4901 r!7292))))

(declare-fun b!5183430 () Bool)

(declare-fun res!2201798 () Bool)

(assert (=> b!5183430 (=> res!2201798 e!3229433)))

(assert (=> b!5183430 (= res!2201798 e!3229434)))

(declare-fun res!2201799 () Bool)

(assert (=> b!5183430 (=> (not res!2201799) (not e!3229434))))

(assert (=> b!5183430 (= res!2201799 lt!2136156)))

(declare-fun b!5183431 () Bool)

(declare-fun res!2201797 () Bool)

(assert (=> b!5183431 (=> (not res!2201797) (not e!3229434))))

(assert (=> b!5183431 (= res!2201797 (not call!364283))))

(assert (= (and d!1676031 c!893408) b!5183429))

(assert (= (and d!1676031 (not c!893408)) b!5183422))

(assert (= (and d!1676031 c!893410) b!5183425))

(assert (= (and d!1676031 (not c!893410)) b!5183421))

(assert (= (and b!5183421 c!893409) b!5183427))

(assert (= (and b!5183421 (not c!893409)) b!5183424))

(assert (= (and b!5183424 (not res!2201800)) b!5183430))

(assert (= (and b!5183430 res!2201799) b!5183431))

(assert (= (and b!5183431 res!2201797) b!5183418))

(assert (= (and b!5183418 res!2201804) b!5183428))

(assert (= (and b!5183430 (not res!2201798)) b!5183423))

(assert (= (and b!5183423 res!2201802) b!5183419))

(assert (= (and b!5183419 (not res!2201801)) b!5183426))

(assert (= (and b!5183426 (not res!2201803)) b!5183420))

(assert (= (or b!5183425 b!5183419 b!5183431) bm!364278))

(declare-fun m!6243156 () Bool)

(assert (=> bm!364278 m!6243156))

(declare-fun m!6243158 () Bool)

(assert (=> b!5183429 m!6243158))

(declare-fun m!6243160 () Bool)

(assert (=> b!5183426 m!6243160))

(assert (=> b!5183426 m!6243160))

(declare-fun m!6243162 () Bool)

(assert (=> b!5183426 m!6243162))

(assert (=> d!1676031 m!6243156))

(assert (=> d!1676031 m!6243090))

(declare-fun m!6243164 () Bool)

(assert (=> b!5183422 m!6243164))

(assert (=> b!5183422 m!6243164))

(declare-fun m!6243166 () Bool)

(assert (=> b!5183422 m!6243166))

(assert (=> b!5183422 m!6243160))

(assert (=> b!5183422 m!6243166))

(assert (=> b!5183422 m!6243160))

(declare-fun m!6243168 () Bool)

(assert (=> b!5183422 m!6243168))

(assert (=> b!5183420 m!6243164))

(assert (=> b!5183428 m!6243164))

(assert (=> b!5183418 m!6243160))

(assert (=> b!5183418 m!6243160))

(assert (=> b!5183418 m!6243162))

(assert (=> b!5183282 d!1676031))

(declare-fun b!5183496 () Bool)

(assert (=> b!5183496 true))

(assert (=> b!5183496 true))

(declare-fun bs!1208108 () Bool)

(declare-fun b!5183497 () Bool)

(assert (= bs!1208108 (and b!5183497 b!5183496)))

(declare-fun lambda!259181 () Int)

(declare-fun lambda!259180 () Int)

(assert (=> bs!1208108 (not (= lambda!259181 lambda!259180))))

(assert (=> b!5183497 true))

(assert (=> b!5183497 true))

(declare-fun b!5183492 () Bool)

(declare-fun c!893429 () Bool)

(assert (=> b!5183492 (= c!893429 (is-ElementMatch!14682 r!7292))))

(declare-fun e!3229480 () Bool)

(declare-fun e!3229477 () Bool)

(assert (=> b!5183492 (= e!3229480 e!3229477)))

(declare-fun b!5183493 () Bool)

(declare-fun c!893430 () Bool)

(assert (=> b!5183493 (= c!893430 (is-Union!14682 r!7292))))

(declare-fun e!3229482 () Bool)

(assert (=> b!5183493 (= e!3229477 e!3229482)))

(declare-fun b!5183494 () Bool)

(declare-fun e!3229481 () Bool)

(assert (=> b!5183494 (= e!3229481 (matchRSpec!1785 (regTwo!29877 r!7292) s!2326))))

(declare-fun b!5183495 () Bool)

(declare-fun e!3229476 () Bool)

(assert (=> b!5183495 (= e!3229476 e!3229480)))

(declare-fun res!2201834 () Bool)

(assert (=> b!5183495 (= res!2201834 (not (is-EmptyLang!14682 r!7292)))))

(assert (=> b!5183495 (=> (not res!2201834) (not e!3229480))))

(declare-fun e!3229478 () Bool)

(declare-fun call!364295 () Bool)

(assert (=> b!5183496 (= e!3229478 call!364295)))

(declare-fun e!3229479 () Bool)

(assert (=> b!5183497 (= e!3229479 call!364295)))

(declare-fun b!5183499 () Bool)

(assert (=> b!5183499 (= e!3229482 e!3229479)))

(declare-fun c!893427 () Bool)

(assert (=> b!5183499 (= c!893427 (is-Star!14682 r!7292))))

(declare-fun b!5183500 () Bool)

(assert (=> b!5183500 (= e!3229477 (= s!2326 (Cons!60223 (c!893383 r!7292) Nil!60223)))))

(declare-fun bm!364289 () Bool)

(declare-fun call!364294 () Bool)

(assert (=> bm!364289 (= call!364294 (isEmpty!32232 s!2326))))

(declare-fun bm!364290 () Bool)

(declare-fun Exists!1902 (Int) Bool)

(assert (=> bm!364290 (= call!364295 (Exists!1902 (ite c!893427 lambda!259180 lambda!259181)))))

(declare-fun b!5183501 () Bool)

(assert (=> b!5183501 (= e!3229482 e!3229481)))

(declare-fun res!2201833 () Bool)

(assert (=> b!5183501 (= res!2201833 (matchRSpec!1785 (regOne!29877 r!7292) s!2326))))

(assert (=> b!5183501 (=> res!2201833 e!3229481)))

(declare-fun b!5183502 () Bool)

(declare-fun res!2201835 () Bool)

(assert (=> b!5183502 (=> res!2201835 e!3229478)))

(assert (=> b!5183502 (= res!2201835 call!364294)))

(assert (=> b!5183502 (= e!3229479 e!3229478)))

(declare-fun b!5183498 () Bool)

(assert (=> b!5183498 (= e!3229476 call!364294)))

(declare-fun d!1676033 () Bool)

(declare-fun c!893428 () Bool)

(assert (=> d!1676033 (= c!893428 (is-EmptyExpr!14682 r!7292))))

(assert (=> d!1676033 (= (matchRSpec!1785 r!7292 s!2326) e!3229476)))

(assert (= (and d!1676033 c!893428) b!5183498))

(assert (= (and d!1676033 (not c!893428)) b!5183495))

(assert (= (and b!5183495 res!2201834) b!5183492))

(assert (= (and b!5183492 c!893429) b!5183500))

(assert (= (and b!5183492 (not c!893429)) b!5183493))

(assert (= (and b!5183493 c!893430) b!5183501))

(assert (= (and b!5183493 (not c!893430)) b!5183499))

(assert (= (and b!5183501 (not res!2201833)) b!5183494))

(assert (= (and b!5183499 c!893427) b!5183502))

(assert (= (and b!5183499 (not c!893427)) b!5183497))

(assert (= (and b!5183502 (not res!2201835)) b!5183496))

(assert (= (or b!5183496 b!5183497) bm!364290))

(assert (= (or b!5183498 b!5183502) bm!364289))

(declare-fun m!6243192 () Bool)

(assert (=> b!5183494 m!6243192))

(assert (=> bm!364289 m!6243156))

(declare-fun m!6243194 () Bool)

(assert (=> bm!364290 m!6243194))

(declare-fun m!6243196 () Bool)

(assert (=> b!5183501 m!6243196))

(assert (=> b!5183282 d!1676033))

(declare-fun d!1676039 () Bool)

(assert (=> d!1676039 (= (matchR!6867 r!7292 s!2326) (matchRSpec!1785 r!7292 s!2326))))

(declare-fun lt!2136160 () Unit!152198)

(declare-fun choose!38527 (Regex!14682 List!60347) Unit!152198)

(assert (=> d!1676039 (= lt!2136160 (choose!38527 r!7292 s!2326))))

(assert (=> d!1676039 (validRegex!6418 r!7292)))

(assert (=> d!1676039 (= (mainMatchTheorem!1785 r!7292 s!2326) lt!2136160)))

(declare-fun bs!1208109 () Bool)

(assert (= bs!1208109 d!1676039))

(assert (=> bs!1208109 m!6243080))

(assert (=> bs!1208109 m!6243082))

(declare-fun m!6243198 () Bool)

(assert (=> bs!1208109 m!6243198))

(assert (=> bs!1208109 m!6243090))

(assert (=> b!5183282 d!1676039))

(declare-fun bs!1208110 () Bool)

(declare-fun d!1676041 () Bool)

(assert (= bs!1208110 (and d!1676041 b!5183273)))

(declare-fun lambda!259184 () Int)

(assert (=> bs!1208110 (= lambda!259184 lambda!259160)))

(declare-fun bs!1208111 () Bool)

(assert (= bs!1208111 (and d!1676041 d!1676013)))

(assert (=> bs!1208111 (= lambda!259184 lambda!259166)))

(declare-fun bs!1208112 () Bool)

(assert (= bs!1208112 (and d!1676041 d!1676029)))

(assert (=> bs!1208112 (= lambda!259184 lambda!259169)))

(declare-fun e!3229506 () Bool)

(assert (=> d!1676041 e!3229506))

(declare-fun res!2201849 () Bool)

(assert (=> d!1676041 (=> (not res!2201849) (not e!3229506))))

(declare-fun lt!2136166 () Regex!14682)

(assert (=> d!1676041 (= res!2201849 (validRegex!6418 lt!2136166))))

(declare-fun e!3229507 () Regex!14682)

(assert (=> d!1676041 (= lt!2136166 e!3229507)))

(declare-fun c!893442 () Bool)

(declare-fun e!3229508 () Bool)

(assert (=> d!1676041 (= c!893442 e!3229508)))

(declare-fun res!2201848 () Bool)

(assert (=> d!1676041 (=> (not res!2201848) (not e!3229508))))

(assert (=> d!1676041 (= res!2201848 (is-Cons!60221 (exprs!4566 (h!66670 zl!343))))))

(assert (=> d!1676041 (forall!14193 (exprs!4566 (h!66670 zl!343)) lambda!259184)))

(assert (=> d!1676041 (= (generalisedConcat!351 (exprs!4566 (h!66670 zl!343))) lt!2136166)))

(declare-fun b!5183539 () Bool)

(declare-fun e!3229509 () Bool)

(declare-fun isEmptyExpr!721 (Regex!14682) Bool)

(assert (=> b!5183539 (= e!3229509 (isEmptyExpr!721 lt!2136166))))

(declare-fun b!5183540 () Bool)

(assert (=> b!5183540 (= e!3229507 (h!66669 (exprs!4566 (h!66670 zl!343))))))

(declare-fun b!5183541 () Bool)

(declare-fun e!3229505 () Bool)

(declare-fun isConcat!244 (Regex!14682) Bool)

(assert (=> b!5183541 (= e!3229505 (isConcat!244 lt!2136166))))

(declare-fun b!5183542 () Bool)

(assert (=> b!5183542 (= e!3229509 e!3229505)))

(declare-fun c!893444 () Bool)

(declare-fun isEmpty!32233 (List!60345) Bool)

(declare-fun tail!10186 (List!60345) List!60345)

(assert (=> b!5183542 (= c!893444 (isEmpty!32233 (tail!10186 (exprs!4566 (h!66670 zl!343)))))))

(declare-fun b!5183543 () Bool)

(declare-fun e!3229510 () Regex!14682)

(assert (=> b!5183543 (= e!3229510 (Concat!23527 (h!66669 (exprs!4566 (h!66670 zl!343))) (generalisedConcat!351 (t!373498 (exprs!4566 (h!66670 zl!343))))))))

(declare-fun b!5183544 () Bool)

(assert (=> b!5183544 (= e!3229506 e!3229509)))

(declare-fun c!893441 () Bool)

(assert (=> b!5183544 (= c!893441 (isEmpty!32233 (exprs!4566 (h!66670 zl!343))))))

(declare-fun b!5183545 () Bool)

(assert (=> b!5183545 (= e!3229510 EmptyExpr!14682)))

(declare-fun b!5183546 () Bool)

(assert (=> b!5183546 (= e!3229508 (isEmpty!32233 (t!373498 (exprs!4566 (h!66670 zl!343)))))))

(declare-fun b!5183547 () Bool)

(declare-fun head!11087 (List!60345) Regex!14682)

(assert (=> b!5183547 (= e!3229505 (= lt!2136166 (head!11087 (exprs!4566 (h!66670 zl!343)))))))

(declare-fun b!5183548 () Bool)

(assert (=> b!5183548 (= e!3229507 e!3229510)))

(declare-fun c!893443 () Bool)

(assert (=> b!5183548 (= c!893443 (is-Cons!60221 (exprs!4566 (h!66670 zl!343))))))

(assert (= (and d!1676041 res!2201848) b!5183546))

(assert (= (and d!1676041 c!893442) b!5183540))

(assert (= (and d!1676041 (not c!893442)) b!5183548))

(assert (= (and b!5183548 c!893443) b!5183543))

(assert (= (and b!5183548 (not c!893443)) b!5183545))

(assert (= (and d!1676041 res!2201849) b!5183544))

(assert (= (and b!5183544 c!893441) b!5183539))

(assert (= (and b!5183544 (not c!893441)) b!5183542))

(assert (= (and b!5183542 c!893444) b!5183547))

(assert (= (and b!5183542 (not c!893444)) b!5183541))

(declare-fun m!6243212 () Bool)

(assert (=> b!5183541 m!6243212))

(declare-fun m!6243214 () Bool)

(assert (=> b!5183547 m!6243214))

(declare-fun m!6243216 () Bool)

(assert (=> b!5183542 m!6243216))

(assert (=> b!5183542 m!6243216))

(declare-fun m!6243218 () Bool)

(assert (=> b!5183542 m!6243218))

(declare-fun m!6243220 () Bool)

(assert (=> b!5183546 m!6243220))

(declare-fun m!6243222 () Bool)

(assert (=> d!1676041 m!6243222))

(declare-fun m!6243224 () Bool)

(assert (=> d!1676041 m!6243224))

(declare-fun m!6243226 () Bool)

(assert (=> b!5183543 m!6243226))

(declare-fun m!6243228 () Bool)

(assert (=> b!5183544 m!6243228))

(declare-fun m!6243230 () Bool)

(assert (=> b!5183539 m!6243230))

(assert (=> b!5183272 d!1676041))

(declare-fun bs!1208113 () Bool)

(declare-fun d!1676047 () Bool)

(assert (= bs!1208113 (and d!1676047 b!5183273)))

(declare-fun lambda!259185 () Int)

(assert (=> bs!1208113 (= lambda!259185 lambda!259160)))

(declare-fun bs!1208114 () Bool)

(assert (= bs!1208114 (and d!1676047 d!1676013)))

(assert (=> bs!1208114 (= lambda!259185 lambda!259166)))

(declare-fun bs!1208115 () Bool)

(assert (= bs!1208115 (and d!1676047 d!1676029)))

(assert (=> bs!1208115 (= lambda!259185 lambda!259169)))

(declare-fun bs!1208116 () Bool)

(assert (= bs!1208116 (and d!1676047 d!1676041)))

(assert (=> bs!1208116 (= lambda!259185 lambda!259184)))

(assert (=> d!1676047 (= (inv!79953 setElem!32587) (forall!14193 (exprs!4566 setElem!32587) lambda!259185))))

(declare-fun bs!1208117 () Bool)

(assert (= bs!1208117 d!1676047))

(declare-fun m!6243232 () Bool)

(assert (=> bs!1208117 m!6243232))

(assert (=> setNonEmpty!32587 d!1676047))

(declare-fun b!5183556 () Bool)

(declare-fun e!3229516 () Bool)

(declare-fun tp!1453994 () Bool)

(assert (=> b!5183556 (= e!3229516 tp!1453994)))

(declare-fun e!3229515 () Bool)

(declare-fun b!5183555 () Bool)

(declare-fun tp!1453995 () Bool)

(assert (=> b!5183555 (= e!3229515 (and (inv!79953 (h!66670 (t!373499 zl!343))) e!3229516 tp!1453995))))

(assert (=> b!5183270 (= tp!1453955 e!3229515)))

(assert (= b!5183555 b!5183556))

(assert (= (and b!5183270 (is-Cons!60222 (t!373499 zl!343))) b!5183555))

(declare-fun m!6243234 () Bool)

(assert (=> b!5183555 m!6243234))

(declare-fun b!5183561 () Bool)

(declare-fun e!3229519 () Bool)

(declare-fun tp!1454000 () Bool)

(declare-fun tp!1454001 () Bool)

(assert (=> b!5183561 (= e!3229519 (and tp!1454000 tp!1454001))))

(assert (=> b!5183276 (= tp!1453959 e!3229519)))

(assert (= (and b!5183276 (is-Cons!60221 (exprs!4566 (h!66670 zl!343)))) b!5183561))

(declare-fun b!5183574 () Bool)

(declare-fun e!3229522 () Bool)

(declare-fun tp!1454012 () Bool)

(assert (=> b!5183574 (= e!3229522 tp!1454012)))

(declare-fun b!5183573 () Bool)

(declare-fun tp!1454016 () Bool)

(declare-fun tp!1454013 () Bool)

(assert (=> b!5183573 (= e!3229522 (and tp!1454016 tp!1454013))))

(declare-fun b!5183575 () Bool)

(declare-fun tp!1454014 () Bool)

(declare-fun tp!1454015 () Bool)

(assert (=> b!5183575 (= e!3229522 (and tp!1454014 tp!1454015))))

(assert (=> b!5183274 (= tp!1453950 e!3229522)))

(declare-fun b!5183572 () Bool)

(assert (=> b!5183572 (= e!3229522 tp_is_empty!38617)))

(assert (= (and b!5183274 (is-ElementMatch!14682 (reg!15011 r!7292))) b!5183572))

(assert (= (and b!5183274 (is-Concat!23527 (reg!15011 r!7292))) b!5183573))

(assert (= (and b!5183274 (is-Star!14682 (reg!15011 r!7292))) b!5183574))

(assert (= (and b!5183274 (is-Union!14682 (reg!15011 r!7292))) b!5183575))

(declare-fun b!5183576 () Bool)

(declare-fun e!3229523 () Bool)

(declare-fun tp!1454017 () Bool)

(declare-fun tp!1454018 () Bool)

(assert (=> b!5183576 (= e!3229523 (and tp!1454017 tp!1454018))))

(assert (=> b!5183275 (= tp!1453958 e!3229523)))

(assert (= (and b!5183275 (is-Cons!60221 (exprs!4566 setElem!32587))) b!5183576))

(declare-fun b!5183579 () Bool)

(declare-fun e!3229524 () Bool)

(declare-fun tp!1454019 () Bool)

(assert (=> b!5183579 (= e!3229524 tp!1454019)))

(declare-fun b!5183578 () Bool)

(declare-fun tp!1454023 () Bool)

(declare-fun tp!1454020 () Bool)

(assert (=> b!5183578 (= e!3229524 (and tp!1454023 tp!1454020))))

(declare-fun b!5183580 () Bool)

(declare-fun tp!1454021 () Bool)

(declare-fun tp!1454022 () Bool)

(assert (=> b!5183580 (= e!3229524 (and tp!1454021 tp!1454022))))

(assert (=> b!5183278 (= tp!1453954 e!3229524)))

(declare-fun b!5183577 () Bool)

(assert (=> b!5183577 (= e!3229524 tp_is_empty!38617)))

(assert (= (and b!5183278 (is-ElementMatch!14682 (regOne!29877 r!7292))) b!5183577))

(assert (= (and b!5183278 (is-Concat!23527 (regOne!29877 r!7292))) b!5183578))

(assert (= (and b!5183278 (is-Star!14682 (regOne!29877 r!7292))) b!5183579))

(assert (= (and b!5183278 (is-Union!14682 (regOne!29877 r!7292))) b!5183580))

(declare-fun b!5183583 () Bool)

(declare-fun e!3229525 () Bool)

(declare-fun tp!1454024 () Bool)

(assert (=> b!5183583 (= e!3229525 tp!1454024)))

(declare-fun b!5183582 () Bool)

(declare-fun tp!1454028 () Bool)

(declare-fun tp!1454025 () Bool)

(assert (=> b!5183582 (= e!3229525 (and tp!1454028 tp!1454025))))

(declare-fun b!5183584 () Bool)

(declare-fun tp!1454026 () Bool)

(declare-fun tp!1454027 () Bool)

(assert (=> b!5183584 (= e!3229525 (and tp!1454026 tp!1454027))))

(assert (=> b!5183278 (= tp!1453956 e!3229525)))

(declare-fun b!5183581 () Bool)

(assert (=> b!5183581 (= e!3229525 tp_is_empty!38617)))

(assert (= (and b!5183278 (is-ElementMatch!14682 (regTwo!29877 r!7292))) b!5183581))

(assert (= (and b!5183278 (is-Concat!23527 (regTwo!29877 r!7292))) b!5183582))

(assert (= (and b!5183278 (is-Star!14682 (regTwo!29877 r!7292))) b!5183583))

(assert (= (and b!5183278 (is-Union!14682 (regTwo!29877 r!7292))) b!5183584))

(declare-fun b!5183587 () Bool)

(declare-fun e!3229526 () Bool)

(declare-fun tp!1454029 () Bool)

(assert (=> b!5183587 (= e!3229526 tp!1454029)))

(declare-fun b!5183586 () Bool)

(declare-fun tp!1454033 () Bool)

(declare-fun tp!1454030 () Bool)

(assert (=> b!5183586 (= e!3229526 (and tp!1454033 tp!1454030))))

(declare-fun b!5183588 () Bool)

(declare-fun tp!1454031 () Bool)

(declare-fun tp!1454032 () Bool)

(assert (=> b!5183588 (= e!3229526 (and tp!1454031 tp!1454032))))

(assert (=> b!5183281 (= tp!1453952 e!3229526)))

(declare-fun b!5183585 () Bool)

(assert (=> b!5183585 (= e!3229526 tp_is_empty!38617)))

(assert (= (and b!5183281 (is-ElementMatch!14682 (regOne!29876 r!7292))) b!5183585))

(assert (= (and b!5183281 (is-Concat!23527 (regOne!29876 r!7292))) b!5183586))

(assert (= (and b!5183281 (is-Star!14682 (regOne!29876 r!7292))) b!5183587))

(assert (= (and b!5183281 (is-Union!14682 (regOne!29876 r!7292))) b!5183588))

(declare-fun b!5183591 () Bool)

(declare-fun e!3229527 () Bool)

(declare-fun tp!1454034 () Bool)

(assert (=> b!5183591 (= e!3229527 tp!1454034)))

(declare-fun b!5183590 () Bool)

(declare-fun tp!1454038 () Bool)

(declare-fun tp!1454035 () Bool)

(assert (=> b!5183590 (= e!3229527 (and tp!1454038 tp!1454035))))

(declare-fun b!5183592 () Bool)

(declare-fun tp!1454036 () Bool)

(declare-fun tp!1454037 () Bool)

(assert (=> b!5183592 (= e!3229527 (and tp!1454036 tp!1454037))))

(assert (=> b!5183281 (= tp!1453957 e!3229527)))

(declare-fun b!5183589 () Bool)

(assert (=> b!5183589 (= e!3229527 tp_is_empty!38617)))

(assert (= (and b!5183281 (is-ElementMatch!14682 (regTwo!29876 r!7292))) b!5183589))

(assert (= (and b!5183281 (is-Concat!23527 (regTwo!29876 r!7292))) b!5183590))

(assert (= (and b!5183281 (is-Star!14682 (regTwo!29876 r!7292))) b!5183591))

(assert (= (and b!5183281 (is-Union!14682 (regTwo!29876 r!7292))) b!5183592))

(declare-fun b!5183597 () Bool)

(declare-fun e!3229530 () Bool)

(declare-fun tp!1454041 () Bool)

(assert (=> b!5183597 (= e!3229530 (and tp_is_empty!38617 tp!1454041))))

(assert (=> b!5183277 (= tp!1453951 e!3229530)))

(assert (= (and b!5183277 (is-Cons!60223 (t!373500 s!2326))) b!5183597))

(declare-fun condSetEmpty!32593 () Bool)

(assert (=> setNonEmpty!32587 (= condSetEmpty!32593 (= setRest!32587 (as set.empty (Set Context!8132))))))

(declare-fun setRes!32593 () Bool)

(assert (=> setNonEmpty!32587 (= tp!1453953 setRes!32593)))

(declare-fun setIsEmpty!32593 () Bool)

(assert (=> setIsEmpty!32593 setRes!32593))

(declare-fun setElem!32593 () Context!8132)

(declare-fun setNonEmpty!32593 () Bool)

(declare-fun e!3229533 () Bool)

(declare-fun tp!1454047 () Bool)

(assert (=> setNonEmpty!32593 (= setRes!32593 (and tp!1454047 (inv!79953 setElem!32593) e!3229533))))

(declare-fun setRest!32593 () (Set Context!8132))

(assert (=> setNonEmpty!32593 (= setRest!32587 (set.union (set.insert setElem!32593 (as set.empty (Set Context!8132))) setRest!32593))))

(declare-fun b!5183602 () Bool)

(declare-fun tp!1454046 () Bool)

(assert (=> b!5183602 (= e!3229533 tp!1454046)))

(assert (= (and setNonEmpty!32587 condSetEmpty!32593) setIsEmpty!32593))

(assert (= (and setNonEmpty!32587 (not condSetEmpty!32593)) setNonEmpty!32593))

(assert (= setNonEmpty!32593 b!5183602))

(declare-fun m!6243236 () Bool)

(assert (=> setNonEmpty!32593 m!6243236))

(declare-fun b_lambda!201151 () Bool)

(assert (= b_lambda!201149 (or b!5183273 b_lambda!201151)))

(declare-fun bs!1208118 () Bool)

(declare-fun d!1676049 () Bool)

(assert (= bs!1208118 (and d!1676049 b!5183273)))

(assert (=> bs!1208118 (= (dynLambda!23897 lambda!259160 (h!66669 (unfocusZipperList!124 zl!343))) (validRegex!6418 (h!66669 (unfocusZipperList!124 zl!343))))))

(declare-fun m!6243238 () Bool)

(assert (=> bs!1208118 m!6243238))

(assert (=> b!5183362 d!1676049))

(push 1)

(assert (not b!5183543))

(assert (not b!5183587))

(assert (not setNonEmpty!32593))

(assert (not b!5183547))

(assert (not b!5183544))

(assert (not b!5183597))

(assert (not b!5183420))

(assert (not b!5183556))

(assert (not b!5183590))

(assert (not b!5183573))

(assert (not d!1676015))

(assert (not bm!364289))

(assert (not bm!364290))

(assert (not bm!364278))

(assert (not bm!364275))

(assert (not b!5183580))

(assert (not b!5183574))

(assert (not b!5183330))

(assert (not b!5183426))

(assert (not d!1676031))

(assert (not b!5183575))

(assert (not bm!364274))

(assert (not b!5183582))

(assert (not b!5183352))

(assert (not b!5183539))

(assert (not b!5183494))

(assert (not b!5183555))

(assert (not b!5183583))

(assert (not d!1676029))

(assert (not b!5183579))

(assert tp_is_empty!38617)

(assert (not b!5183592))

(assert (not b!5183578))

(assert (not b!5183418))

(assert (not bs!1208118))

(assert (not b!5183541))

(assert (not b!5183546))

(assert (not b!5183368))

(assert (not b!5183586))

(assert (not b!5183542))

(assert (not b!5183591))

(assert (not d!1676041))

(assert (not b!5183363))

(assert (not b!5183428))

(assert (not d!1676047))

(assert (not d!1676013))

(assert (not b!5183429))

(assert (not b!5183501))

(assert (not b!5183588))

(assert (not b!5183602))

(assert (not b_lambda!201151))

(assert (not b!5183584))

(assert (not d!1676039))

(assert (not b!5183422))

(assert (not b!5183561))

(assert (not b!5183576))

(assert (not d!1676017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

