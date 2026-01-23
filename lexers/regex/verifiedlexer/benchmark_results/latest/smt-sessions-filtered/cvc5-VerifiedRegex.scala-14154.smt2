; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743144 () Bool)

(assert start!743144)

(declare-fun b!7849175 () Bool)

(declare-fun e!4640032 () Bool)

(declare-fun tp_is_empty!52559 () Bool)

(assert (=> b!7849175 (= e!4640032 tp_is_empty!52559)))

(declare-fun b!7849176 () Bool)

(declare-fun e!4640028 () Bool)

(assert (=> b!7849176 (= e!4640028 tp_is_empty!52559)))

(declare-fun b!7849177 () Bool)

(declare-fun res!3121456 () Bool)

(declare-fun e!4640033 () Bool)

(assert (=> b!7849177 (=> (not res!3121456) (not e!4640033))))

(declare-datatypes ((C!42486 0))(
  ( (C!42487 (val!31705 Int)) )
))
(declare-datatypes ((Regex!21080 0))(
  ( (ElementMatch!21080 (c!1442652 C!42486)) (Concat!29925 (regOne!42672 Regex!21080) (regTwo!42672 Regex!21080)) (EmptyExpr!21080) (Star!21080 (reg!21409 Regex!21080)) (EmptyLang!21080) (Union!21080 (regOne!42673 Regex!21080) (regTwo!42673 Regex!21080)) )
))
(declare-fun r1!6227 () Regex!21080)

(declare-datatypes ((List!73939 0))(
  ( (Nil!73815) (Cons!73815 (h!80263 C!42486) (t!388674 List!73939)) )
))
(declare-fun s1!4084 () List!73939)

(declare-fun matchR!10516 (Regex!21080 List!73939) Bool)

(assert (=> b!7849177 (= res!3121456 (matchR!10516 r1!6227 s1!4084))))

(declare-fun b!7849178 () Bool)

(declare-fun e!4640029 () Bool)

(assert (=> b!7849178 (= e!4640033 (not e!4640029))))

(declare-fun res!3121458 () Bool)

(assert (=> b!7849178 (=> res!3121458 e!4640029)))

(declare-fun nullable!9352 (Regex!21080) Bool)

(assert (=> b!7849178 (= res!3121458 (not (nullable!9352 r1!6227)))))

(declare-fun lt!2679536 () Regex!21080)

(declare-fun s2!3706 () List!73939)

(declare-fun ++!18088 (List!73939 List!73939) List!73939)

(assert (=> b!7849178 (matchR!10516 lt!2679536 (++!18088 (t!388674 s1!4084) s2!3706))))

(declare-fun lt!2679535 () Regex!21080)

(declare-fun r2!6165 () Regex!21080)

(assert (=> b!7849178 (= lt!2679536 (Concat!29925 lt!2679535 r2!6165))))

(declare-datatypes ((Unit!168902 0))(
  ( (Unit!168903) )
))
(declare-fun lt!2679534 () Unit!168902)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!447 (Regex!21080 Regex!21080 List!73939 List!73939) Unit!168902)

(assert (=> b!7849178 (= lt!2679534 (lemmaTwoRegexMatchThenConcatMatchesConcatString!447 lt!2679535 r2!6165 (t!388674 s1!4084) s2!3706))))

(declare-fun derivativeStep!6315 (Regex!21080 C!42486) Regex!21080)

(assert (=> b!7849178 (= lt!2679535 (derivativeStep!6315 r1!6227 (h!80263 s1!4084)))))

(declare-fun res!3121455 () Bool)

(assert (=> start!743144 (=> (not res!3121455) (not e!4640033))))

(declare-fun validRegex!11490 (Regex!21080) Bool)

(assert (=> start!743144 (= res!3121455 (validRegex!11490 r1!6227))))

(assert (=> start!743144 e!4640033))

(assert (=> start!743144 e!4640028))

(assert (=> start!743144 e!4640032))

(declare-fun e!4640031 () Bool)

(assert (=> start!743144 e!4640031))

(declare-fun e!4640030 () Bool)

(assert (=> start!743144 e!4640030))

(declare-fun b!7849179 () Bool)

(assert (=> b!7849179 (= e!4640029 (= (derivativeStep!6315 (Concat!29925 r1!6227 r2!6165) (h!80263 s1!4084)) (Union!21080 lt!2679536 (derivativeStep!6315 r2!6165 (h!80263 s1!4084)))))))

(declare-fun b!7849180 () Bool)

(declare-fun res!3121454 () Bool)

(assert (=> b!7849180 (=> (not res!3121454) (not e!4640033))))

(assert (=> b!7849180 (= res!3121454 (validRegex!11490 r2!6165))))

(declare-fun b!7849181 () Bool)

(declare-fun tp!2324322 () Bool)

(declare-fun tp!2324327 () Bool)

(assert (=> b!7849181 (= e!4640028 (and tp!2324322 tp!2324327))))

(declare-fun b!7849182 () Bool)

(declare-fun tp!2324317 () Bool)

(assert (=> b!7849182 (= e!4640032 tp!2324317)))

(declare-fun b!7849183 () Bool)

(declare-fun tp!2324323 () Bool)

(declare-fun tp!2324328 () Bool)

(assert (=> b!7849183 (= e!4640028 (and tp!2324323 tp!2324328))))

(declare-fun b!7849184 () Bool)

(declare-fun res!3121457 () Bool)

(assert (=> b!7849184 (=> (not res!3121457) (not e!4640033))))

(assert (=> b!7849184 (= res!3121457 (is-Cons!73815 s1!4084))))

(declare-fun b!7849185 () Bool)

(declare-fun tp!2324325 () Bool)

(declare-fun tp!2324318 () Bool)

(assert (=> b!7849185 (= e!4640032 (and tp!2324325 tp!2324318))))

(declare-fun b!7849186 () Bool)

(declare-fun tp!2324321 () Bool)

(assert (=> b!7849186 (= e!4640031 (and tp_is_empty!52559 tp!2324321))))

(declare-fun b!7849187 () Bool)

(declare-fun tp!2324319 () Bool)

(assert (=> b!7849187 (= e!4640030 (and tp_is_empty!52559 tp!2324319))))

(declare-fun b!7849188 () Bool)

(declare-fun tp!2324326 () Bool)

(declare-fun tp!2324324 () Bool)

(assert (=> b!7849188 (= e!4640032 (and tp!2324326 tp!2324324))))

(declare-fun b!7849189 () Bool)

(declare-fun res!3121453 () Bool)

(assert (=> b!7849189 (=> (not res!3121453) (not e!4640033))))

(assert (=> b!7849189 (= res!3121453 (matchR!10516 r2!6165 s2!3706))))

(declare-fun b!7849190 () Bool)

(declare-fun tp!2324320 () Bool)

(assert (=> b!7849190 (= e!4640028 tp!2324320)))

(assert (= (and start!743144 res!3121455) b!7849180))

(assert (= (and b!7849180 res!3121454) b!7849177))

(assert (= (and b!7849177 res!3121456) b!7849189))

(assert (= (and b!7849189 res!3121453) b!7849184))

(assert (= (and b!7849184 res!3121457) b!7849178))

(assert (= (and b!7849178 (not res!3121458)) b!7849179))

(assert (= (and start!743144 (is-ElementMatch!21080 r1!6227)) b!7849176))

(assert (= (and start!743144 (is-Concat!29925 r1!6227)) b!7849183))

(assert (= (and start!743144 (is-Star!21080 r1!6227)) b!7849190))

(assert (= (and start!743144 (is-Union!21080 r1!6227)) b!7849181))

(assert (= (and start!743144 (is-ElementMatch!21080 r2!6165)) b!7849175))

(assert (= (and start!743144 (is-Concat!29925 r2!6165)) b!7849185))

(assert (= (and start!743144 (is-Star!21080 r2!6165)) b!7849182))

(assert (= (and start!743144 (is-Union!21080 r2!6165)) b!7849188))

(assert (= (and start!743144 (is-Cons!73815 s1!4084)) b!7849186))

(assert (= (and start!743144 (is-Cons!73815 s2!3706)) b!7849187))

(declare-fun m!8257380 () Bool)

(assert (=> start!743144 m!8257380))

(declare-fun m!8257382 () Bool)

(assert (=> b!7849189 m!8257382))

(declare-fun m!8257384 () Bool)

(assert (=> b!7849177 m!8257384))

(declare-fun m!8257386 () Bool)

(assert (=> b!7849179 m!8257386))

(declare-fun m!8257388 () Bool)

(assert (=> b!7849179 m!8257388))

(declare-fun m!8257390 () Bool)

(assert (=> b!7849180 m!8257390))

(declare-fun m!8257392 () Bool)

(assert (=> b!7849178 m!8257392))

(declare-fun m!8257394 () Bool)

(assert (=> b!7849178 m!8257394))

(declare-fun m!8257396 () Bool)

(assert (=> b!7849178 m!8257396))

(declare-fun m!8257398 () Bool)

(assert (=> b!7849178 m!8257398))

(assert (=> b!7849178 m!8257398))

(declare-fun m!8257400 () Bool)

(assert (=> b!7849178 m!8257400))

(push 1)

(assert (not b!7849179))

(assert (not b!7849182))

(assert (not b!7849183))

(assert (not b!7849188))

(assert (not b!7849177))

(assert (not b!7849181))

(assert (not b!7849190))

(assert (not b!7849185))

(assert (not b!7849187))

(assert (not b!7849178))

(assert tp_is_empty!52559)

(assert (not b!7849186))

(assert (not start!743144))

(assert (not b!7849189))

(assert (not b!7849180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7849295 () Bool)

(declare-fun e!4640080 () Bool)

(declare-fun head!16037 (List!73939) C!42486)

(assert (=> b!7849295 (= e!4640080 (= (head!16037 s2!3706) (c!1442652 r2!6165)))))

(declare-fun d!2353057 () Bool)

(declare-fun e!4640084 () Bool)

(assert (=> d!2353057 e!4640084))

(declare-fun c!1442667 () Bool)

(assert (=> d!2353057 (= c!1442667 (is-EmptyExpr!21080 r2!6165))))

(declare-fun lt!2679550 () Bool)

(declare-fun e!4640085 () Bool)

(assert (=> d!2353057 (= lt!2679550 e!4640085)))

(declare-fun c!1442666 () Bool)

(declare-fun isEmpty!42326 (List!73939) Bool)

(assert (=> d!2353057 (= c!1442666 (isEmpty!42326 s2!3706))))

(assert (=> d!2353057 (validRegex!11490 r2!6165)))

(assert (=> d!2353057 (= (matchR!10516 r2!6165 s2!3706) lt!2679550)))

(declare-fun b!7849296 () Bool)

(declare-fun e!4640086 () Bool)

(declare-fun e!4640083 () Bool)

(assert (=> b!7849296 (= e!4640086 e!4640083)))

(declare-fun res!3121509 () Bool)

(assert (=> b!7849296 (=> (not res!3121509) (not e!4640083))))

(assert (=> b!7849296 (= res!3121509 (not lt!2679550))))

(declare-fun b!7849297 () Bool)

(declare-fun e!4640081 () Bool)

(assert (=> b!7849297 (= e!4640084 e!4640081)))

(declare-fun c!1442668 () Bool)

(assert (=> b!7849297 (= c!1442668 (is-EmptyLang!21080 r2!6165))))

(declare-fun b!7849298 () Bool)

(declare-fun res!3121513 () Bool)

(assert (=> b!7849298 (=> res!3121513 e!4640086)))

(assert (=> b!7849298 (= res!3121513 e!4640080)))

(declare-fun res!3121511 () Bool)

(assert (=> b!7849298 (=> (not res!3121511) (not e!4640080))))

(assert (=> b!7849298 (= res!3121511 lt!2679550)))

(declare-fun b!7849299 () Bool)

(declare-fun tail!15580 (List!73939) List!73939)

(assert (=> b!7849299 (= e!4640085 (matchR!10516 (derivativeStep!6315 r2!6165 (head!16037 s2!3706)) (tail!15580 s2!3706)))))

(declare-fun b!7849300 () Bool)

(declare-fun call!727365 () Bool)

(assert (=> b!7849300 (= e!4640084 (= lt!2679550 call!727365))))

(declare-fun b!7849301 () Bool)

(declare-fun res!3121515 () Bool)

(declare-fun e!4640082 () Bool)

(assert (=> b!7849301 (=> res!3121515 e!4640082)))

(assert (=> b!7849301 (= res!3121515 (not (isEmpty!42326 (tail!15580 s2!3706))))))

(declare-fun b!7849302 () Bool)

(declare-fun res!3121516 () Bool)

(assert (=> b!7849302 (=> (not res!3121516) (not e!4640080))))

(assert (=> b!7849302 (= res!3121516 (not call!727365))))

(declare-fun b!7849303 () Bool)

(declare-fun res!3121512 () Bool)

(assert (=> b!7849303 (=> (not res!3121512) (not e!4640080))))

(assert (=> b!7849303 (= res!3121512 (isEmpty!42326 (tail!15580 s2!3706)))))

(declare-fun b!7849304 () Bool)

(assert (=> b!7849304 (= e!4640083 e!4640082)))

(declare-fun res!3121510 () Bool)

(assert (=> b!7849304 (=> res!3121510 e!4640082)))

(assert (=> b!7849304 (= res!3121510 call!727365)))

(declare-fun b!7849305 () Bool)

(assert (=> b!7849305 (= e!4640082 (not (= (head!16037 s2!3706) (c!1442652 r2!6165))))))

(declare-fun bm!727360 () Bool)

(assert (=> bm!727360 (= call!727365 (isEmpty!42326 s2!3706))))

(declare-fun b!7849306 () Bool)

(declare-fun res!3121514 () Bool)

(assert (=> b!7849306 (=> res!3121514 e!4640086)))

(assert (=> b!7849306 (= res!3121514 (not (is-ElementMatch!21080 r2!6165)))))

(assert (=> b!7849306 (= e!4640081 e!4640086)))

(declare-fun b!7849307 () Bool)

(assert (=> b!7849307 (= e!4640085 (nullable!9352 r2!6165))))

(declare-fun b!7849308 () Bool)

(assert (=> b!7849308 (= e!4640081 (not lt!2679550))))

(assert (= (and d!2353057 c!1442666) b!7849307))

(assert (= (and d!2353057 (not c!1442666)) b!7849299))

(assert (= (and d!2353057 c!1442667) b!7849300))

(assert (= (and d!2353057 (not c!1442667)) b!7849297))

(assert (= (and b!7849297 c!1442668) b!7849308))

(assert (= (and b!7849297 (not c!1442668)) b!7849306))

(assert (= (and b!7849306 (not res!3121514)) b!7849298))

(assert (= (and b!7849298 res!3121511) b!7849302))

(assert (= (and b!7849302 res!3121516) b!7849303))

(assert (= (and b!7849303 res!3121512) b!7849295))

(assert (= (and b!7849298 (not res!3121513)) b!7849296))

(assert (= (and b!7849296 res!3121509) b!7849304))

(assert (= (and b!7849304 (not res!3121510)) b!7849301))

(assert (= (and b!7849301 (not res!3121515)) b!7849305))

(assert (= (or b!7849300 b!7849302 b!7849304) bm!727360))

(declare-fun m!8257424 () Bool)

(assert (=> b!7849295 m!8257424))

(declare-fun m!8257426 () Bool)

(assert (=> b!7849303 m!8257426))

(assert (=> b!7849303 m!8257426))

(declare-fun m!8257428 () Bool)

(assert (=> b!7849303 m!8257428))

(assert (=> b!7849305 m!8257424))

(assert (=> b!7849299 m!8257424))

(assert (=> b!7849299 m!8257424))

(declare-fun m!8257430 () Bool)

(assert (=> b!7849299 m!8257430))

(assert (=> b!7849299 m!8257426))

(assert (=> b!7849299 m!8257430))

(assert (=> b!7849299 m!8257426))

(declare-fun m!8257432 () Bool)

(assert (=> b!7849299 m!8257432))

(declare-fun m!8257434 () Bool)

(assert (=> bm!727360 m!8257434))

(assert (=> b!7849301 m!8257426))

(assert (=> b!7849301 m!8257426))

(assert (=> b!7849301 m!8257428))

(assert (=> d!2353057 m!8257434))

(assert (=> d!2353057 m!8257390))

(declare-fun m!8257436 () Bool)

(assert (=> b!7849307 m!8257436))

(assert (=> b!7849189 d!2353057))

(declare-fun b!7849343 () Bool)

(declare-fun e!4640106 () Regex!21080)

(assert (=> b!7849343 (= e!4640106 EmptyLang!21080)))

(declare-fun b!7849344 () Bool)

(declare-fun c!1442685 () Bool)

(assert (=> b!7849344 (= c!1442685 (is-Union!21080 (Concat!29925 r1!6227 r2!6165)))))

(declare-fun e!4640108 () Regex!21080)

(declare-fun e!4640105 () Regex!21080)

(assert (=> b!7849344 (= e!4640108 e!4640105)))

(declare-fun b!7849345 () Bool)

(assert (=> b!7849345 (= e!4640106 e!4640108)))

(declare-fun c!1442684 () Bool)

(assert (=> b!7849345 (= c!1442684 (is-ElementMatch!21080 (Concat!29925 r1!6227 r2!6165)))))

(declare-fun e!4640104 () Regex!21080)

(declare-fun b!7849346 () Bool)

(declare-fun call!727378 () Regex!21080)

(assert (=> b!7849346 (= e!4640104 (Concat!29925 call!727378 (Concat!29925 r1!6227 r2!6165)))))

(declare-fun bm!727370 () Bool)

(declare-fun call!727376 () Regex!21080)

(declare-fun call!727375 () Regex!21080)

(assert (=> bm!727370 (= call!727376 call!727375)))

(declare-fun bm!727371 () Bool)

(declare-fun call!727377 () Regex!21080)

(assert (=> bm!727371 (= call!727378 call!727377)))

(declare-fun bm!727372 () Bool)

(declare-fun c!1442683 () Bool)

(assert (=> bm!727372 (= call!727377 (derivativeStep!6315 (ite c!1442685 (regTwo!42673 (Concat!29925 r1!6227 r2!6165)) (ite c!1442683 (reg!21409 (Concat!29925 r1!6227 r2!6165)) (regOne!42672 (Concat!29925 r1!6227 r2!6165)))) (h!80263 s1!4084)))))

(declare-fun b!7849347 () Bool)

(assert (=> b!7849347 (= e!4640105 (Union!21080 call!727375 call!727377))))

(declare-fun b!7849348 () Bool)

(declare-fun c!1442686 () Bool)

(assert (=> b!7849348 (= c!1442686 (nullable!9352 (regOne!42672 (Concat!29925 r1!6227 r2!6165))))))

(declare-fun e!4640107 () Regex!21080)

(assert (=> b!7849348 (= e!4640104 e!4640107)))

(declare-fun bm!727373 () Bool)

(assert (=> bm!727373 (= call!727375 (derivativeStep!6315 (ite c!1442685 (regOne!42673 (Concat!29925 r1!6227 r2!6165)) (ite c!1442686 (regTwo!42672 (Concat!29925 r1!6227 r2!6165)) (regOne!42672 (Concat!29925 r1!6227 r2!6165)))) (h!80263 s1!4084)))))

(declare-fun b!7849349 () Bool)

(assert (=> b!7849349 (= e!4640107 (Union!21080 (Concat!29925 call!727378 (regTwo!42672 (Concat!29925 r1!6227 r2!6165))) call!727376))))

(declare-fun b!7849350 () Bool)

(assert (=> b!7849350 (= e!4640105 e!4640104)))

(assert (=> b!7849350 (= c!1442683 (is-Star!21080 (Concat!29925 r1!6227 r2!6165)))))

(declare-fun d!2353059 () Bool)

(declare-fun lt!2679554 () Regex!21080)

(assert (=> d!2353059 (validRegex!11490 lt!2679554)))

(assert (=> d!2353059 (= lt!2679554 e!4640106)))

(declare-fun c!1442682 () Bool)

(assert (=> d!2353059 (= c!1442682 (or (is-EmptyExpr!21080 (Concat!29925 r1!6227 r2!6165)) (is-EmptyLang!21080 (Concat!29925 r1!6227 r2!6165))))))

(assert (=> d!2353059 (validRegex!11490 (Concat!29925 r1!6227 r2!6165))))

(assert (=> d!2353059 (= (derivativeStep!6315 (Concat!29925 r1!6227 r2!6165) (h!80263 s1!4084)) lt!2679554)))

(declare-fun b!7849351 () Bool)

(assert (=> b!7849351 (= e!4640107 (Union!21080 (Concat!29925 call!727376 (regTwo!42672 (Concat!29925 r1!6227 r2!6165))) EmptyLang!21080))))

(declare-fun b!7849352 () Bool)

(assert (=> b!7849352 (= e!4640108 (ite (= (h!80263 s1!4084) (c!1442652 (Concat!29925 r1!6227 r2!6165))) EmptyExpr!21080 EmptyLang!21080))))

(assert (= (and d!2353059 c!1442682) b!7849343))

(assert (= (and d!2353059 (not c!1442682)) b!7849345))

(assert (= (and b!7849345 c!1442684) b!7849352))

(assert (= (and b!7849345 (not c!1442684)) b!7849344))

(assert (= (and b!7849344 c!1442685) b!7849347))

(assert (= (and b!7849344 (not c!1442685)) b!7849350))

(assert (= (and b!7849350 c!1442683) b!7849346))

(assert (= (and b!7849350 (not c!1442683)) b!7849348))

(assert (= (and b!7849348 c!1442686) b!7849349))

(assert (= (and b!7849348 (not c!1442686)) b!7849351))

(assert (= (or b!7849349 b!7849351) bm!727370))

(assert (= (or b!7849346 b!7849349) bm!727371))

(assert (= (or b!7849347 bm!727371) bm!727372))

(assert (= (or b!7849347 bm!727370) bm!727373))

(declare-fun m!8257450 () Bool)

(assert (=> bm!727372 m!8257450))

(declare-fun m!8257452 () Bool)

(assert (=> b!7849348 m!8257452))

(declare-fun m!8257454 () Bool)

(assert (=> bm!727373 m!8257454))

(declare-fun m!8257456 () Bool)

(assert (=> d!2353059 m!8257456))

(declare-fun m!8257458 () Bool)

(assert (=> d!2353059 m!8257458))

(assert (=> b!7849179 d!2353059))

(declare-fun b!7849353 () Bool)

(declare-fun e!4640111 () Regex!21080)

(assert (=> b!7849353 (= e!4640111 EmptyLang!21080)))

(declare-fun b!7849354 () Bool)

(declare-fun c!1442690 () Bool)

(assert (=> b!7849354 (= c!1442690 (is-Union!21080 r2!6165))))

(declare-fun e!4640113 () Regex!21080)

(declare-fun e!4640110 () Regex!21080)

(assert (=> b!7849354 (= e!4640113 e!4640110)))

(declare-fun b!7849355 () Bool)

(assert (=> b!7849355 (= e!4640111 e!4640113)))

(declare-fun c!1442689 () Bool)

(assert (=> b!7849355 (= c!1442689 (is-ElementMatch!21080 r2!6165))))

(declare-fun b!7849356 () Bool)

(declare-fun e!4640109 () Regex!21080)

(declare-fun call!727382 () Regex!21080)

(assert (=> b!7849356 (= e!4640109 (Concat!29925 call!727382 r2!6165))))

(declare-fun bm!727374 () Bool)

(declare-fun call!727380 () Regex!21080)

(declare-fun call!727379 () Regex!21080)

(assert (=> bm!727374 (= call!727380 call!727379)))

(declare-fun bm!727375 () Bool)

(declare-fun call!727381 () Regex!21080)

(assert (=> bm!727375 (= call!727382 call!727381)))

(declare-fun bm!727376 () Bool)

(declare-fun c!1442688 () Bool)

(assert (=> bm!727376 (= call!727381 (derivativeStep!6315 (ite c!1442690 (regTwo!42673 r2!6165) (ite c!1442688 (reg!21409 r2!6165) (regOne!42672 r2!6165))) (h!80263 s1!4084)))))

(declare-fun b!7849357 () Bool)

(assert (=> b!7849357 (= e!4640110 (Union!21080 call!727379 call!727381))))

(declare-fun b!7849358 () Bool)

(declare-fun c!1442691 () Bool)

(assert (=> b!7849358 (= c!1442691 (nullable!9352 (regOne!42672 r2!6165)))))

(declare-fun e!4640112 () Regex!21080)

(assert (=> b!7849358 (= e!4640109 e!4640112)))

(declare-fun bm!727377 () Bool)

(assert (=> bm!727377 (= call!727379 (derivativeStep!6315 (ite c!1442690 (regOne!42673 r2!6165) (ite c!1442691 (regTwo!42672 r2!6165) (regOne!42672 r2!6165))) (h!80263 s1!4084)))))

(declare-fun b!7849359 () Bool)

(assert (=> b!7849359 (= e!4640112 (Union!21080 (Concat!29925 call!727382 (regTwo!42672 r2!6165)) call!727380))))

(declare-fun b!7849360 () Bool)

(assert (=> b!7849360 (= e!4640110 e!4640109)))

(assert (=> b!7849360 (= c!1442688 (is-Star!21080 r2!6165))))

(declare-fun d!2353063 () Bool)

(declare-fun lt!2679555 () Regex!21080)

(assert (=> d!2353063 (validRegex!11490 lt!2679555)))

(assert (=> d!2353063 (= lt!2679555 e!4640111)))

(declare-fun c!1442687 () Bool)

(assert (=> d!2353063 (= c!1442687 (or (is-EmptyExpr!21080 r2!6165) (is-EmptyLang!21080 r2!6165)))))

(assert (=> d!2353063 (validRegex!11490 r2!6165)))

(assert (=> d!2353063 (= (derivativeStep!6315 r2!6165 (h!80263 s1!4084)) lt!2679555)))

(declare-fun b!7849361 () Bool)

(assert (=> b!7849361 (= e!4640112 (Union!21080 (Concat!29925 call!727380 (regTwo!42672 r2!6165)) EmptyLang!21080))))

(declare-fun b!7849362 () Bool)

(assert (=> b!7849362 (= e!4640113 (ite (= (h!80263 s1!4084) (c!1442652 r2!6165)) EmptyExpr!21080 EmptyLang!21080))))

(assert (= (and d!2353063 c!1442687) b!7849353))

(assert (= (and d!2353063 (not c!1442687)) b!7849355))

(assert (= (and b!7849355 c!1442689) b!7849362))

(assert (= (and b!7849355 (not c!1442689)) b!7849354))

(assert (= (and b!7849354 c!1442690) b!7849357))

(assert (= (and b!7849354 (not c!1442690)) b!7849360))

(assert (= (and b!7849360 c!1442688) b!7849356))

(assert (= (and b!7849360 (not c!1442688)) b!7849358))

(assert (= (and b!7849358 c!1442691) b!7849359))

(assert (= (and b!7849358 (not c!1442691)) b!7849361))

(assert (= (or b!7849359 b!7849361) bm!727374))

(assert (= (or b!7849356 b!7849359) bm!727375))

(assert (= (or b!7849357 bm!727375) bm!727376))

(assert (= (or b!7849357 bm!727374) bm!727377))

(declare-fun m!8257460 () Bool)

(assert (=> bm!727376 m!8257460))

(declare-fun m!8257462 () Bool)

(assert (=> b!7849358 m!8257462))

(declare-fun m!8257464 () Bool)

(assert (=> bm!727377 m!8257464))

(declare-fun m!8257466 () Bool)

(assert (=> d!2353063 m!8257466))

(assert (=> d!2353063 m!8257390))

(assert (=> b!7849179 d!2353063))

(declare-fun b!7849363 () Bool)

(declare-fun e!4640114 () Bool)

(assert (=> b!7849363 (= e!4640114 (= (head!16037 s1!4084) (c!1442652 r1!6227)))))

(declare-fun d!2353065 () Bool)

(declare-fun e!4640118 () Bool)

(assert (=> d!2353065 e!4640118))

(declare-fun c!1442693 () Bool)

(assert (=> d!2353065 (= c!1442693 (is-EmptyExpr!21080 r1!6227))))

(declare-fun lt!2679556 () Bool)

(declare-fun e!4640119 () Bool)

(assert (=> d!2353065 (= lt!2679556 e!4640119)))

(declare-fun c!1442692 () Bool)

(assert (=> d!2353065 (= c!1442692 (isEmpty!42326 s1!4084))))

(assert (=> d!2353065 (validRegex!11490 r1!6227)))

(assert (=> d!2353065 (= (matchR!10516 r1!6227 s1!4084) lt!2679556)))

(declare-fun b!7849364 () Bool)

(declare-fun e!4640120 () Bool)

(declare-fun e!4640117 () Bool)

(assert (=> b!7849364 (= e!4640120 e!4640117)))

(declare-fun res!3121525 () Bool)

(assert (=> b!7849364 (=> (not res!3121525) (not e!4640117))))

(assert (=> b!7849364 (= res!3121525 (not lt!2679556))))

(declare-fun b!7849365 () Bool)

(declare-fun e!4640115 () Bool)

(assert (=> b!7849365 (= e!4640118 e!4640115)))

(declare-fun c!1442694 () Bool)

(assert (=> b!7849365 (= c!1442694 (is-EmptyLang!21080 r1!6227))))

(declare-fun b!7849366 () Bool)

(declare-fun res!3121529 () Bool)

(assert (=> b!7849366 (=> res!3121529 e!4640120)))

(assert (=> b!7849366 (= res!3121529 e!4640114)))

(declare-fun res!3121527 () Bool)

(assert (=> b!7849366 (=> (not res!3121527) (not e!4640114))))

(assert (=> b!7849366 (= res!3121527 lt!2679556)))

(declare-fun b!7849367 () Bool)

(assert (=> b!7849367 (= e!4640119 (matchR!10516 (derivativeStep!6315 r1!6227 (head!16037 s1!4084)) (tail!15580 s1!4084)))))

(declare-fun b!7849368 () Bool)

(declare-fun call!727383 () Bool)

(assert (=> b!7849368 (= e!4640118 (= lt!2679556 call!727383))))

(declare-fun b!7849369 () Bool)

(declare-fun res!3121531 () Bool)

(declare-fun e!4640116 () Bool)

(assert (=> b!7849369 (=> res!3121531 e!4640116)))

(assert (=> b!7849369 (= res!3121531 (not (isEmpty!42326 (tail!15580 s1!4084))))))

(declare-fun b!7849370 () Bool)

(declare-fun res!3121532 () Bool)

(assert (=> b!7849370 (=> (not res!3121532) (not e!4640114))))

(assert (=> b!7849370 (= res!3121532 (not call!727383))))

(declare-fun b!7849371 () Bool)

(declare-fun res!3121528 () Bool)

(assert (=> b!7849371 (=> (not res!3121528) (not e!4640114))))

(assert (=> b!7849371 (= res!3121528 (isEmpty!42326 (tail!15580 s1!4084)))))

(declare-fun b!7849372 () Bool)

(assert (=> b!7849372 (= e!4640117 e!4640116)))

(declare-fun res!3121526 () Bool)

(assert (=> b!7849372 (=> res!3121526 e!4640116)))

(assert (=> b!7849372 (= res!3121526 call!727383)))

(declare-fun b!7849373 () Bool)

(assert (=> b!7849373 (= e!4640116 (not (= (head!16037 s1!4084) (c!1442652 r1!6227))))))

(declare-fun bm!727378 () Bool)

(assert (=> bm!727378 (= call!727383 (isEmpty!42326 s1!4084))))

(declare-fun b!7849374 () Bool)

(declare-fun res!3121530 () Bool)

(assert (=> b!7849374 (=> res!3121530 e!4640120)))

(assert (=> b!7849374 (= res!3121530 (not (is-ElementMatch!21080 r1!6227)))))

(assert (=> b!7849374 (= e!4640115 e!4640120)))

(declare-fun b!7849375 () Bool)

(assert (=> b!7849375 (= e!4640119 (nullable!9352 r1!6227))))

(declare-fun b!7849376 () Bool)

(assert (=> b!7849376 (= e!4640115 (not lt!2679556))))

(assert (= (and d!2353065 c!1442692) b!7849375))

(assert (= (and d!2353065 (not c!1442692)) b!7849367))

(assert (= (and d!2353065 c!1442693) b!7849368))

(assert (= (and d!2353065 (not c!1442693)) b!7849365))

(assert (= (and b!7849365 c!1442694) b!7849376))

(assert (= (and b!7849365 (not c!1442694)) b!7849374))

(assert (= (and b!7849374 (not res!3121530)) b!7849366))

(assert (= (and b!7849366 res!3121527) b!7849370))

(assert (= (and b!7849370 res!3121532) b!7849371))

(assert (= (and b!7849371 res!3121528) b!7849363))

(assert (= (and b!7849366 (not res!3121529)) b!7849364))

(assert (= (and b!7849364 res!3121525) b!7849372))

(assert (= (and b!7849372 (not res!3121526)) b!7849369))

(assert (= (and b!7849369 (not res!3121531)) b!7849373))

(assert (= (or b!7849368 b!7849370 b!7849372) bm!727378))

(declare-fun m!8257468 () Bool)

(assert (=> b!7849363 m!8257468))

(declare-fun m!8257470 () Bool)

(assert (=> b!7849371 m!8257470))

(assert (=> b!7849371 m!8257470))

(declare-fun m!8257472 () Bool)

(assert (=> b!7849371 m!8257472))

(assert (=> b!7849373 m!8257468))

(assert (=> b!7849367 m!8257468))

(assert (=> b!7849367 m!8257468))

(declare-fun m!8257474 () Bool)

(assert (=> b!7849367 m!8257474))

(assert (=> b!7849367 m!8257470))

(assert (=> b!7849367 m!8257474))

(assert (=> b!7849367 m!8257470))

(declare-fun m!8257476 () Bool)

(assert (=> b!7849367 m!8257476))

(declare-fun m!8257478 () Bool)

(assert (=> bm!727378 m!8257478))

(assert (=> b!7849369 m!8257470))

(assert (=> b!7849369 m!8257470))

(assert (=> b!7849369 m!8257472))

(assert (=> d!2353065 m!8257478))

(assert (=> d!2353065 m!8257380))

(assert (=> b!7849375 m!8257392))

(assert (=> b!7849177 d!2353065))

(declare-fun d!2353067 () Bool)

(declare-fun nullableFct!3684 (Regex!21080) Bool)

(assert (=> d!2353067 (= (nullable!9352 r1!6227) (nullableFct!3684 r1!6227))))

(declare-fun bs!1967063 () Bool)

(assert (= bs!1967063 d!2353067))

(declare-fun m!8257480 () Bool)

(assert (=> bs!1967063 m!8257480))

(assert (=> b!7849178 d!2353067))

(declare-fun b!7849389 () Bool)

(declare-fun e!4640131 () Regex!21080)

(assert (=> b!7849389 (= e!4640131 EmptyLang!21080)))

(declare-fun b!7849390 () Bool)

(declare-fun c!1442702 () Bool)

(assert (=> b!7849390 (= c!1442702 (is-Union!21080 r1!6227))))

(declare-fun e!4640133 () Regex!21080)

(declare-fun e!4640130 () Regex!21080)

(assert (=> b!7849390 (= e!4640133 e!4640130)))

(declare-fun b!7849391 () Bool)

(assert (=> b!7849391 (= e!4640131 e!4640133)))

(declare-fun c!1442701 () Bool)

(assert (=> b!7849391 (= c!1442701 (is-ElementMatch!21080 r1!6227))))

(declare-fun b!7849392 () Bool)

(declare-fun e!4640128 () Regex!21080)

(declare-fun call!727387 () Regex!21080)

(assert (=> b!7849392 (= e!4640128 (Concat!29925 call!727387 r1!6227))))

(declare-fun bm!727379 () Bool)

(declare-fun call!727385 () Regex!21080)

(declare-fun call!727384 () Regex!21080)

(assert (=> bm!727379 (= call!727385 call!727384)))

(declare-fun bm!727380 () Bool)

(declare-fun call!727386 () Regex!21080)

(assert (=> bm!727380 (= call!727387 call!727386)))

(declare-fun bm!727381 () Bool)

(declare-fun c!1442700 () Bool)

(assert (=> bm!727381 (= call!727386 (derivativeStep!6315 (ite c!1442702 (regTwo!42673 r1!6227) (ite c!1442700 (reg!21409 r1!6227) (regOne!42672 r1!6227))) (h!80263 s1!4084)))))

(declare-fun b!7849393 () Bool)

(assert (=> b!7849393 (= e!4640130 (Union!21080 call!727384 call!727386))))

(declare-fun b!7849394 () Bool)

(declare-fun c!1442703 () Bool)

(assert (=> b!7849394 (= c!1442703 (nullable!9352 (regOne!42672 r1!6227)))))

(declare-fun e!4640132 () Regex!21080)

(assert (=> b!7849394 (= e!4640128 e!4640132)))

(declare-fun bm!727382 () Bool)

(assert (=> bm!727382 (= call!727384 (derivativeStep!6315 (ite c!1442702 (regOne!42673 r1!6227) (ite c!1442703 (regTwo!42672 r1!6227) (regOne!42672 r1!6227))) (h!80263 s1!4084)))))

(declare-fun b!7849395 () Bool)

(assert (=> b!7849395 (= e!4640132 (Union!21080 (Concat!29925 call!727387 (regTwo!42672 r1!6227)) call!727385))))

(declare-fun b!7849396 () Bool)

(assert (=> b!7849396 (= e!4640130 e!4640128)))

(assert (=> b!7849396 (= c!1442700 (is-Star!21080 r1!6227))))

(declare-fun d!2353069 () Bool)

(declare-fun lt!2679557 () Regex!21080)

(assert (=> d!2353069 (validRegex!11490 lt!2679557)))

(assert (=> d!2353069 (= lt!2679557 e!4640131)))

(declare-fun c!1442699 () Bool)

(assert (=> d!2353069 (= c!1442699 (or (is-EmptyExpr!21080 r1!6227) (is-EmptyLang!21080 r1!6227)))))

(assert (=> d!2353069 (validRegex!11490 r1!6227)))

(assert (=> d!2353069 (= (derivativeStep!6315 r1!6227 (h!80263 s1!4084)) lt!2679557)))

(declare-fun b!7849397 () Bool)

(assert (=> b!7849397 (= e!4640132 (Union!21080 (Concat!29925 call!727385 (regTwo!42672 r1!6227)) EmptyLang!21080))))

(declare-fun b!7849398 () Bool)

(assert (=> b!7849398 (= e!4640133 (ite (= (h!80263 s1!4084) (c!1442652 r1!6227)) EmptyExpr!21080 EmptyLang!21080))))

(assert (= (and d!2353069 c!1442699) b!7849389))

(assert (= (and d!2353069 (not c!1442699)) b!7849391))

(assert (= (and b!7849391 c!1442701) b!7849398))

(assert (= (and b!7849391 (not c!1442701)) b!7849390))

(assert (= (and b!7849390 c!1442702) b!7849393))

(assert (= (and b!7849390 (not c!1442702)) b!7849396))

(assert (= (and b!7849396 c!1442700) b!7849392))

(assert (= (and b!7849396 (not c!1442700)) b!7849394))

(assert (= (and b!7849394 c!1442703) b!7849395))

(assert (= (and b!7849394 (not c!1442703)) b!7849397))

(assert (= (or b!7849395 b!7849397) bm!727379))

(assert (= (or b!7849392 b!7849395) bm!727380))

(assert (= (or b!7849393 bm!727380) bm!727381))

(assert (= (or b!7849393 bm!727379) bm!727382))

(declare-fun m!8257482 () Bool)

(assert (=> bm!727381 m!8257482))

(declare-fun m!8257484 () Bool)

(assert (=> b!7849394 m!8257484))

(declare-fun m!8257486 () Bool)

(assert (=> bm!727382 m!8257486))

(declare-fun m!8257488 () Bool)

(assert (=> d!2353069 m!8257488))

(assert (=> d!2353069 m!8257380))

(assert (=> b!7849178 d!2353069))

(declare-fun d!2353071 () Bool)

(assert (=> d!2353071 (matchR!10516 (Concat!29925 lt!2679535 r2!6165) (++!18088 (t!388674 s1!4084) s2!3706))))

(declare-fun lt!2679560 () Unit!168902)

(declare-fun choose!59647 (Regex!21080 Regex!21080 List!73939 List!73939) Unit!168902)

(assert (=> d!2353071 (= lt!2679560 (choose!59647 lt!2679535 r2!6165 (t!388674 s1!4084) s2!3706))))

(declare-fun e!4640142 () Bool)

(assert (=> d!2353071 e!4640142))

(declare-fun res!3121545 () Bool)

(assert (=> d!2353071 (=> (not res!3121545) (not e!4640142))))

(assert (=> d!2353071 (= res!3121545 (validRegex!11490 lt!2679535))))

(assert (=> d!2353071 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!447 lt!2679535 r2!6165 (t!388674 s1!4084) s2!3706) lt!2679560)))

(declare-fun b!7849407 () Bool)

(assert (=> b!7849407 (= e!4640142 (validRegex!11490 r2!6165))))

(assert (= (and d!2353071 res!3121545) b!7849407))

(assert (=> d!2353071 m!8257398))

(assert (=> d!2353071 m!8257398))

(declare-fun m!8257490 () Bool)

(assert (=> d!2353071 m!8257490))

(declare-fun m!8257492 () Bool)

(assert (=> d!2353071 m!8257492))

(declare-fun m!8257494 () Bool)

(assert (=> d!2353071 m!8257494))

(assert (=> b!7849407 m!8257390))

(assert (=> b!7849178 d!2353071))

(declare-fun e!4640143 () Bool)

(declare-fun b!7849408 () Bool)

(assert (=> b!7849408 (= e!4640143 (= (head!16037 (++!18088 (t!388674 s1!4084) s2!3706)) (c!1442652 lt!2679536)))))

(declare-fun d!2353073 () Bool)

(declare-fun e!4640147 () Bool)

(assert (=> d!2353073 e!4640147))

(declare-fun c!1442705 () Bool)

(assert (=> d!2353073 (= c!1442705 (is-EmptyExpr!21080 lt!2679536))))

(declare-fun lt!2679561 () Bool)

(declare-fun e!4640148 () Bool)

(assert (=> d!2353073 (= lt!2679561 e!4640148)))

(declare-fun c!1442704 () Bool)

(assert (=> d!2353073 (= c!1442704 (isEmpty!42326 (++!18088 (t!388674 s1!4084) s2!3706)))))

(assert (=> d!2353073 (validRegex!11490 lt!2679536)))

(assert (=> d!2353073 (= (matchR!10516 lt!2679536 (++!18088 (t!388674 s1!4084) s2!3706)) lt!2679561)))

(declare-fun b!7849409 () Bool)

(declare-fun e!4640149 () Bool)

(declare-fun e!4640146 () Bool)

(assert (=> b!7849409 (= e!4640149 e!4640146)))

(declare-fun res!3121546 () Bool)

(assert (=> b!7849409 (=> (not res!3121546) (not e!4640146))))

(assert (=> b!7849409 (= res!3121546 (not lt!2679561))))

(declare-fun b!7849410 () Bool)

(declare-fun e!4640144 () Bool)

(assert (=> b!7849410 (= e!4640147 e!4640144)))

(declare-fun c!1442706 () Bool)

(assert (=> b!7849410 (= c!1442706 (is-EmptyLang!21080 lt!2679536))))

(declare-fun b!7849411 () Bool)

(declare-fun res!3121550 () Bool)

(assert (=> b!7849411 (=> res!3121550 e!4640149)))

(assert (=> b!7849411 (= res!3121550 e!4640143)))

(declare-fun res!3121548 () Bool)

(assert (=> b!7849411 (=> (not res!3121548) (not e!4640143))))

(assert (=> b!7849411 (= res!3121548 lt!2679561)))

(declare-fun b!7849412 () Bool)

(assert (=> b!7849412 (= e!4640148 (matchR!10516 (derivativeStep!6315 lt!2679536 (head!16037 (++!18088 (t!388674 s1!4084) s2!3706))) (tail!15580 (++!18088 (t!388674 s1!4084) s2!3706))))))

(declare-fun b!7849413 () Bool)

(declare-fun call!727394 () Bool)

(assert (=> b!7849413 (= e!4640147 (= lt!2679561 call!727394))))

(declare-fun b!7849414 () Bool)

(declare-fun res!3121552 () Bool)

(declare-fun e!4640145 () Bool)

(assert (=> b!7849414 (=> res!3121552 e!4640145)))

(assert (=> b!7849414 (= res!3121552 (not (isEmpty!42326 (tail!15580 (++!18088 (t!388674 s1!4084) s2!3706)))))))

(declare-fun b!7849415 () Bool)

(declare-fun res!3121553 () Bool)

(assert (=> b!7849415 (=> (not res!3121553) (not e!4640143))))

(assert (=> b!7849415 (= res!3121553 (not call!727394))))

(declare-fun b!7849416 () Bool)

(declare-fun res!3121549 () Bool)

(assert (=> b!7849416 (=> (not res!3121549) (not e!4640143))))

(assert (=> b!7849416 (= res!3121549 (isEmpty!42326 (tail!15580 (++!18088 (t!388674 s1!4084) s2!3706))))))

(declare-fun b!7849417 () Bool)

(assert (=> b!7849417 (= e!4640146 e!4640145)))

(declare-fun res!3121547 () Bool)

(assert (=> b!7849417 (=> res!3121547 e!4640145)))

(assert (=> b!7849417 (= res!3121547 call!727394)))

(declare-fun b!7849418 () Bool)

(assert (=> b!7849418 (= e!4640145 (not (= (head!16037 (++!18088 (t!388674 s1!4084) s2!3706)) (c!1442652 lt!2679536))))))

(declare-fun bm!727389 () Bool)

(assert (=> bm!727389 (= call!727394 (isEmpty!42326 (++!18088 (t!388674 s1!4084) s2!3706)))))

(declare-fun b!7849419 () Bool)

(declare-fun res!3121551 () Bool)

(assert (=> b!7849419 (=> res!3121551 e!4640149)))

(assert (=> b!7849419 (= res!3121551 (not (is-ElementMatch!21080 lt!2679536)))))

(assert (=> b!7849419 (= e!4640144 e!4640149)))

(declare-fun b!7849420 () Bool)

(assert (=> b!7849420 (= e!4640148 (nullable!9352 lt!2679536))))

(declare-fun b!7849421 () Bool)

(assert (=> b!7849421 (= e!4640144 (not lt!2679561))))

(assert (= (and d!2353073 c!1442704) b!7849420))

(assert (= (and d!2353073 (not c!1442704)) b!7849412))

(assert (= (and d!2353073 c!1442705) b!7849413))

(assert (= (and d!2353073 (not c!1442705)) b!7849410))

(assert (= (and b!7849410 c!1442706) b!7849421))

(assert (= (and b!7849410 (not c!1442706)) b!7849419))

(assert (= (and b!7849419 (not res!3121551)) b!7849411))

(assert (= (and b!7849411 res!3121548) b!7849415))

(assert (= (and b!7849415 res!3121553) b!7849416))

(assert (= (and b!7849416 res!3121549) b!7849408))

(assert (= (and b!7849411 (not res!3121550)) b!7849409))

(assert (= (and b!7849409 res!3121546) b!7849417))

(assert (= (and b!7849417 (not res!3121547)) b!7849414))

(assert (= (and b!7849414 (not res!3121552)) b!7849418))

(assert (= (or b!7849413 b!7849415 b!7849417) bm!727389))

(assert (=> b!7849408 m!8257398))

(declare-fun m!8257496 () Bool)

(assert (=> b!7849408 m!8257496))

(assert (=> b!7849416 m!8257398))

(declare-fun m!8257498 () Bool)

(assert (=> b!7849416 m!8257498))

(assert (=> b!7849416 m!8257498))

(declare-fun m!8257500 () Bool)

(assert (=> b!7849416 m!8257500))

(assert (=> b!7849418 m!8257398))

(assert (=> b!7849418 m!8257496))

(assert (=> b!7849412 m!8257398))

(assert (=> b!7849412 m!8257496))

(assert (=> b!7849412 m!8257496))

(declare-fun m!8257502 () Bool)

(assert (=> b!7849412 m!8257502))

(assert (=> b!7849412 m!8257398))

(assert (=> b!7849412 m!8257498))

(assert (=> b!7849412 m!8257502))

(assert (=> b!7849412 m!8257498))

(declare-fun m!8257504 () Bool)

(assert (=> b!7849412 m!8257504))

(assert (=> bm!727389 m!8257398))

(declare-fun m!8257506 () Bool)

(assert (=> bm!727389 m!8257506))

(assert (=> b!7849414 m!8257398))

(assert (=> b!7849414 m!8257498))

(assert (=> b!7849414 m!8257498))

(assert (=> b!7849414 m!8257500))

(assert (=> d!2353073 m!8257398))

(assert (=> d!2353073 m!8257506))

(declare-fun m!8257508 () Bool)

(assert (=> d!2353073 m!8257508))

(declare-fun m!8257510 () Bool)

(assert (=> b!7849420 m!8257510))

(assert (=> b!7849178 d!2353073))

(declare-fun b!7849450 () Bool)

(declare-fun res!3121569 () Bool)

(declare-fun e!4640168 () Bool)

(assert (=> b!7849450 (=> (not res!3121569) (not e!4640168))))

(declare-fun lt!2679564 () List!73939)

(declare-fun size!42825 (List!73939) Int)

(assert (=> b!7849450 (= res!3121569 (= (size!42825 lt!2679564) (+ (size!42825 (t!388674 s1!4084)) (size!42825 s2!3706))))))

(declare-fun b!7849449 () Bool)

(declare-fun e!4640169 () List!73939)

(assert (=> b!7849449 (= e!4640169 (Cons!73815 (h!80263 (t!388674 s1!4084)) (++!18088 (t!388674 (t!388674 s1!4084)) s2!3706)))))

(declare-fun b!7849448 () Bool)

(assert (=> b!7849448 (= e!4640169 s2!3706)))

(declare-fun d!2353075 () Bool)

(assert (=> d!2353075 e!4640168))

(declare-fun res!3121568 () Bool)

(assert (=> d!2353075 (=> (not res!3121568) (not e!4640168))))

(declare-fun content!15672 (List!73939) (Set C!42486))

(assert (=> d!2353075 (= res!3121568 (= (content!15672 lt!2679564) (set.union (content!15672 (t!388674 s1!4084)) (content!15672 s2!3706))))))

(assert (=> d!2353075 (= lt!2679564 e!4640169)))

(declare-fun c!1442713 () Bool)

(assert (=> d!2353075 (= c!1442713 (is-Nil!73815 (t!388674 s1!4084)))))

(assert (=> d!2353075 (= (++!18088 (t!388674 s1!4084) s2!3706) lt!2679564)))

(declare-fun b!7849451 () Bool)

(assert (=> b!7849451 (= e!4640168 (or (not (= s2!3706 Nil!73815)) (= lt!2679564 (t!388674 s1!4084))))))

(assert (= (and d!2353075 c!1442713) b!7849448))

(assert (= (and d!2353075 (not c!1442713)) b!7849449))

(assert (= (and d!2353075 res!3121568) b!7849450))

(assert (= (and b!7849450 res!3121569) b!7849451))

(declare-fun m!8257518 () Bool)

(assert (=> b!7849450 m!8257518))

(declare-fun m!8257520 () Bool)

(assert (=> b!7849450 m!8257520))

(declare-fun m!8257522 () Bool)

(assert (=> b!7849450 m!8257522))

(declare-fun m!8257524 () Bool)

(assert (=> b!7849449 m!8257524))

(declare-fun m!8257526 () Bool)

(assert (=> d!2353075 m!8257526))

(declare-fun m!8257528 () Bool)

(assert (=> d!2353075 m!8257528))

(declare-fun m!8257530 () Bool)

(assert (=> d!2353075 m!8257530))

(assert (=> b!7849178 d!2353075))

(declare-fun b!7849484 () Bool)

(declare-fun res!3121590 () Bool)

(declare-fun e!4640195 () Bool)

(assert (=> b!7849484 (=> (not res!3121590) (not e!4640195))))

(declare-fun call!727410 () Bool)

(assert (=> b!7849484 (= res!3121590 call!727410)))

(declare-fun e!4640192 () Bool)

(assert (=> b!7849484 (= e!4640192 e!4640195)))

(declare-fun b!7849485 () Bool)

(declare-fun e!4640193 () Bool)

(declare-fun e!4640194 () Bool)

(assert (=> b!7849485 (= e!4640193 e!4640194)))

(declare-fun c!1442721 () Bool)

(assert (=> b!7849485 (= c!1442721 (is-Star!21080 r1!6227))))

(declare-fun bm!727403 () Bool)

(declare-fun call!727408 () Bool)

(declare-fun c!1442722 () Bool)

(assert (=> bm!727403 (= call!727408 (validRegex!11490 (ite c!1442722 (regTwo!42673 r1!6227) (regOne!42672 r1!6227))))))

(declare-fun b!7849486 () Bool)

(assert (=> b!7849486 (= e!4640194 e!4640192)))

(assert (=> b!7849486 (= c!1442722 (is-Union!21080 r1!6227))))

(declare-fun b!7849487 () Bool)

(declare-fun e!4640196 () Bool)

(declare-fun call!727409 () Bool)

(assert (=> b!7849487 (= e!4640196 call!727409)))

(declare-fun bm!727404 () Bool)

(assert (=> bm!727404 (= call!727410 call!727409)))

(declare-fun b!7849488 () Bool)

(declare-fun res!3121592 () Bool)

(declare-fun e!4640197 () Bool)

(assert (=> b!7849488 (=> res!3121592 e!4640197)))

(assert (=> b!7849488 (= res!3121592 (not (is-Concat!29925 r1!6227)))))

(assert (=> b!7849488 (= e!4640192 e!4640197)))

(declare-fun d!2353079 () Bool)

(declare-fun res!3121589 () Bool)

(assert (=> d!2353079 (=> res!3121589 e!4640193)))

(assert (=> d!2353079 (= res!3121589 (is-ElementMatch!21080 r1!6227))))

(assert (=> d!2353079 (= (validRegex!11490 r1!6227) e!4640193)))

(declare-fun b!7849489 () Bool)

(assert (=> b!7849489 (= e!4640195 call!727408)))

(declare-fun b!7849490 () Bool)

(assert (=> b!7849490 (= e!4640194 e!4640196)))

(declare-fun res!3121591 () Bool)

(assert (=> b!7849490 (= res!3121591 (not (nullable!9352 (reg!21409 r1!6227))))))

(assert (=> b!7849490 (=> (not res!3121591) (not e!4640196))))

(declare-fun b!7849491 () Bool)

(declare-fun e!4640191 () Bool)

(assert (=> b!7849491 (= e!4640191 call!727410)))

(declare-fun b!7849492 () Bool)

(assert (=> b!7849492 (= e!4640197 e!4640191)))

(declare-fun res!3121588 () Bool)

(assert (=> b!7849492 (=> (not res!3121588) (not e!4640191))))

(assert (=> b!7849492 (= res!3121588 call!727408)))

(declare-fun bm!727405 () Bool)

(assert (=> bm!727405 (= call!727409 (validRegex!11490 (ite c!1442721 (reg!21409 r1!6227) (ite c!1442722 (regOne!42673 r1!6227) (regTwo!42672 r1!6227)))))))

(assert (= (and d!2353079 (not res!3121589)) b!7849485))

(assert (= (and b!7849485 c!1442721) b!7849490))

(assert (= (and b!7849485 (not c!1442721)) b!7849486))

(assert (= (and b!7849490 res!3121591) b!7849487))

(assert (= (and b!7849486 c!1442722) b!7849484))

(assert (= (and b!7849486 (not c!1442722)) b!7849488))

(assert (= (and b!7849484 res!3121590) b!7849489))

(assert (= (and b!7849488 (not res!3121592)) b!7849492))

(assert (= (and b!7849492 res!3121588) b!7849491))

(assert (= (or b!7849484 b!7849491) bm!727404))

(assert (= (or b!7849489 b!7849492) bm!727403))

(assert (= (or b!7849487 bm!727404) bm!727405))

(declare-fun m!8257552 () Bool)

(assert (=> bm!727403 m!8257552))

(declare-fun m!8257554 () Bool)

(assert (=> b!7849490 m!8257554))

(declare-fun m!8257556 () Bool)

(assert (=> bm!727405 m!8257556))

(assert (=> start!743144 d!2353079))

(declare-fun b!7849493 () Bool)

(declare-fun res!3121595 () Bool)

(declare-fun e!4640202 () Bool)

(assert (=> b!7849493 (=> (not res!3121595) (not e!4640202))))

(declare-fun call!727413 () Bool)

(assert (=> b!7849493 (= res!3121595 call!727413)))

(declare-fun e!4640199 () Bool)

(assert (=> b!7849493 (= e!4640199 e!4640202)))

(declare-fun b!7849494 () Bool)

(declare-fun e!4640200 () Bool)

(declare-fun e!4640201 () Bool)

(assert (=> b!7849494 (= e!4640200 e!4640201)))

(declare-fun c!1442723 () Bool)

(assert (=> b!7849494 (= c!1442723 (is-Star!21080 r2!6165))))

(declare-fun bm!727406 () Bool)

(declare-fun call!727411 () Bool)

(declare-fun c!1442724 () Bool)

(assert (=> bm!727406 (= call!727411 (validRegex!11490 (ite c!1442724 (regTwo!42673 r2!6165) (regOne!42672 r2!6165))))))

(declare-fun b!7849495 () Bool)

(assert (=> b!7849495 (= e!4640201 e!4640199)))

(assert (=> b!7849495 (= c!1442724 (is-Union!21080 r2!6165))))

(declare-fun b!7849496 () Bool)

(declare-fun e!4640203 () Bool)

(declare-fun call!727412 () Bool)

(assert (=> b!7849496 (= e!4640203 call!727412)))

(declare-fun bm!727407 () Bool)

(assert (=> bm!727407 (= call!727413 call!727412)))

(declare-fun b!7849497 () Bool)

(declare-fun res!3121597 () Bool)

(declare-fun e!4640204 () Bool)

(assert (=> b!7849497 (=> res!3121597 e!4640204)))

(assert (=> b!7849497 (= res!3121597 (not (is-Concat!29925 r2!6165)))))

(assert (=> b!7849497 (= e!4640199 e!4640204)))

(declare-fun d!2353085 () Bool)

(declare-fun res!3121594 () Bool)

(assert (=> d!2353085 (=> res!3121594 e!4640200)))

(assert (=> d!2353085 (= res!3121594 (is-ElementMatch!21080 r2!6165))))

(assert (=> d!2353085 (= (validRegex!11490 r2!6165) e!4640200)))

(declare-fun b!7849498 () Bool)

(assert (=> b!7849498 (= e!4640202 call!727411)))

(declare-fun b!7849499 () Bool)

(assert (=> b!7849499 (= e!4640201 e!4640203)))

(declare-fun res!3121596 () Bool)

(assert (=> b!7849499 (= res!3121596 (not (nullable!9352 (reg!21409 r2!6165))))))

(assert (=> b!7849499 (=> (not res!3121596) (not e!4640203))))

(declare-fun b!7849500 () Bool)

(declare-fun e!4640198 () Bool)

(assert (=> b!7849500 (= e!4640198 call!727413)))

(declare-fun b!7849501 () Bool)

(assert (=> b!7849501 (= e!4640204 e!4640198)))

(declare-fun res!3121593 () Bool)

(assert (=> b!7849501 (=> (not res!3121593) (not e!4640198))))

(assert (=> b!7849501 (= res!3121593 call!727411)))

(declare-fun bm!727408 () Bool)

(assert (=> bm!727408 (= call!727412 (validRegex!11490 (ite c!1442723 (reg!21409 r2!6165) (ite c!1442724 (regOne!42673 r2!6165) (regTwo!42672 r2!6165)))))))

(assert (= (and d!2353085 (not res!3121594)) b!7849494))

(assert (= (and b!7849494 c!1442723) b!7849499))

(assert (= (and b!7849494 (not c!1442723)) b!7849495))

(assert (= (and b!7849499 res!3121596) b!7849496))

(assert (= (and b!7849495 c!1442724) b!7849493))

(assert (= (and b!7849495 (not c!1442724)) b!7849497))

(assert (= (and b!7849493 res!3121595) b!7849498))

(assert (= (and b!7849497 (not res!3121597)) b!7849501))

(assert (= (and b!7849501 res!3121593) b!7849500))

(assert (= (or b!7849493 b!7849500) bm!727407))

(assert (= (or b!7849498 b!7849501) bm!727406))

(assert (= (or b!7849496 bm!727407) bm!727408))

(declare-fun m!8257558 () Bool)

(assert (=> bm!727406 m!8257558))

(declare-fun m!8257560 () Bool)

(assert (=> b!7849499 m!8257560))

(declare-fun m!8257562 () Bool)

(assert (=> bm!727408 m!8257562))

(assert (=> b!7849180 d!2353085))

(declare-fun b!7849512 () Bool)

(declare-fun e!4640207 () Bool)

(assert (=> b!7849512 (= e!4640207 tp_is_empty!52559)))

(assert (=> b!7849190 (= tp!2324320 e!4640207)))

(declare-fun b!7849513 () Bool)

(declare-fun tp!2324377 () Bool)

(declare-fun tp!2324379 () Bool)

(assert (=> b!7849513 (= e!4640207 (and tp!2324377 tp!2324379))))

(declare-fun b!7849514 () Bool)

(declare-fun tp!2324378 () Bool)

(assert (=> b!7849514 (= e!4640207 tp!2324378)))

(declare-fun b!7849515 () Bool)

(declare-fun tp!2324376 () Bool)

(declare-fun tp!2324375 () Bool)

(assert (=> b!7849515 (= e!4640207 (and tp!2324376 tp!2324375))))

(assert (= (and b!7849190 (is-ElementMatch!21080 (reg!21409 r1!6227))) b!7849512))

(assert (= (and b!7849190 (is-Concat!29925 (reg!21409 r1!6227))) b!7849513))

(assert (= (and b!7849190 (is-Star!21080 (reg!21409 r1!6227))) b!7849514))

(assert (= (and b!7849190 (is-Union!21080 (reg!21409 r1!6227))) b!7849515))

(declare-fun b!7849516 () Bool)

(declare-fun e!4640208 () Bool)

(assert (=> b!7849516 (= e!4640208 tp_is_empty!52559)))

(assert (=> b!7849188 (= tp!2324326 e!4640208)))

(declare-fun b!7849517 () Bool)

(declare-fun tp!2324382 () Bool)

(declare-fun tp!2324384 () Bool)

(assert (=> b!7849517 (= e!4640208 (and tp!2324382 tp!2324384))))

(declare-fun b!7849518 () Bool)

(declare-fun tp!2324383 () Bool)

(assert (=> b!7849518 (= e!4640208 tp!2324383)))

(declare-fun b!7849519 () Bool)

(declare-fun tp!2324381 () Bool)

(declare-fun tp!2324380 () Bool)

(assert (=> b!7849519 (= e!4640208 (and tp!2324381 tp!2324380))))

(assert (= (and b!7849188 (is-ElementMatch!21080 (regOne!42673 r2!6165))) b!7849516))

(assert (= (and b!7849188 (is-Concat!29925 (regOne!42673 r2!6165))) b!7849517))

(assert (= (and b!7849188 (is-Star!21080 (regOne!42673 r2!6165))) b!7849518))

(assert (= (and b!7849188 (is-Union!21080 (regOne!42673 r2!6165))) b!7849519))

(declare-fun b!7849520 () Bool)

(declare-fun e!4640209 () Bool)

(assert (=> b!7849520 (= e!4640209 tp_is_empty!52559)))

(assert (=> b!7849188 (= tp!2324324 e!4640209)))

(declare-fun b!7849521 () Bool)

(declare-fun tp!2324387 () Bool)

(declare-fun tp!2324389 () Bool)

(assert (=> b!7849521 (= e!4640209 (and tp!2324387 tp!2324389))))

(declare-fun b!7849522 () Bool)

(declare-fun tp!2324388 () Bool)

(assert (=> b!7849522 (= e!4640209 tp!2324388)))

(declare-fun b!7849523 () Bool)

(declare-fun tp!2324386 () Bool)

(declare-fun tp!2324385 () Bool)

(assert (=> b!7849523 (= e!4640209 (and tp!2324386 tp!2324385))))

(assert (= (and b!7849188 (is-ElementMatch!21080 (regTwo!42673 r2!6165))) b!7849520))

(assert (= (and b!7849188 (is-Concat!29925 (regTwo!42673 r2!6165))) b!7849521))

(assert (= (and b!7849188 (is-Star!21080 (regTwo!42673 r2!6165))) b!7849522))

(assert (= (and b!7849188 (is-Union!21080 (regTwo!42673 r2!6165))) b!7849523))

(declare-fun b!7849524 () Bool)

(declare-fun e!4640210 () Bool)

(assert (=> b!7849524 (= e!4640210 tp_is_empty!52559)))

(assert (=> b!7849183 (= tp!2324323 e!4640210)))

(declare-fun b!7849525 () Bool)

(declare-fun tp!2324392 () Bool)

(declare-fun tp!2324394 () Bool)

(assert (=> b!7849525 (= e!4640210 (and tp!2324392 tp!2324394))))

(declare-fun b!7849526 () Bool)

(declare-fun tp!2324393 () Bool)

(assert (=> b!7849526 (= e!4640210 tp!2324393)))

(declare-fun b!7849527 () Bool)

(declare-fun tp!2324391 () Bool)

(declare-fun tp!2324390 () Bool)

(assert (=> b!7849527 (= e!4640210 (and tp!2324391 tp!2324390))))

(assert (= (and b!7849183 (is-ElementMatch!21080 (regOne!42672 r1!6227))) b!7849524))

(assert (= (and b!7849183 (is-Concat!29925 (regOne!42672 r1!6227))) b!7849525))

(assert (= (and b!7849183 (is-Star!21080 (regOne!42672 r1!6227))) b!7849526))

(assert (= (and b!7849183 (is-Union!21080 (regOne!42672 r1!6227))) b!7849527))

(declare-fun b!7849528 () Bool)

(declare-fun e!4640211 () Bool)

(assert (=> b!7849528 (= e!4640211 tp_is_empty!52559)))

(assert (=> b!7849183 (= tp!2324328 e!4640211)))

(declare-fun b!7849529 () Bool)

(declare-fun tp!2324397 () Bool)

(declare-fun tp!2324399 () Bool)

(assert (=> b!7849529 (= e!4640211 (and tp!2324397 tp!2324399))))

(declare-fun b!7849530 () Bool)

(declare-fun tp!2324398 () Bool)

(assert (=> b!7849530 (= e!4640211 tp!2324398)))

(declare-fun b!7849531 () Bool)

(declare-fun tp!2324396 () Bool)

(declare-fun tp!2324395 () Bool)

(assert (=> b!7849531 (= e!4640211 (and tp!2324396 tp!2324395))))

(assert (= (and b!7849183 (is-ElementMatch!21080 (regTwo!42672 r1!6227))) b!7849528))

(assert (= (and b!7849183 (is-Concat!29925 (regTwo!42672 r1!6227))) b!7849529))

(assert (= (and b!7849183 (is-Star!21080 (regTwo!42672 r1!6227))) b!7849530))

(assert (= (and b!7849183 (is-Union!21080 (regTwo!42672 r1!6227))) b!7849531))

(declare-fun b!7849532 () Bool)

(declare-fun e!4640212 () Bool)

(assert (=> b!7849532 (= e!4640212 tp_is_empty!52559)))

(assert (=> b!7849181 (= tp!2324322 e!4640212)))

(declare-fun b!7849533 () Bool)

(declare-fun tp!2324402 () Bool)

(declare-fun tp!2324404 () Bool)

(assert (=> b!7849533 (= e!4640212 (and tp!2324402 tp!2324404))))

(declare-fun b!7849534 () Bool)

(declare-fun tp!2324403 () Bool)

(assert (=> b!7849534 (= e!4640212 tp!2324403)))

(declare-fun b!7849535 () Bool)

(declare-fun tp!2324401 () Bool)

(declare-fun tp!2324400 () Bool)

(assert (=> b!7849535 (= e!4640212 (and tp!2324401 tp!2324400))))

(assert (= (and b!7849181 (is-ElementMatch!21080 (regOne!42673 r1!6227))) b!7849532))

(assert (= (and b!7849181 (is-Concat!29925 (regOne!42673 r1!6227))) b!7849533))

(assert (= (and b!7849181 (is-Star!21080 (regOne!42673 r1!6227))) b!7849534))

(assert (= (and b!7849181 (is-Union!21080 (regOne!42673 r1!6227))) b!7849535))

(declare-fun b!7849536 () Bool)

(declare-fun e!4640213 () Bool)

(assert (=> b!7849536 (= e!4640213 tp_is_empty!52559)))

(assert (=> b!7849181 (= tp!2324327 e!4640213)))

(declare-fun b!7849537 () Bool)

(declare-fun tp!2324407 () Bool)

(declare-fun tp!2324409 () Bool)

(assert (=> b!7849537 (= e!4640213 (and tp!2324407 tp!2324409))))

(declare-fun b!7849538 () Bool)

(declare-fun tp!2324408 () Bool)

(assert (=> b!7849538 (= e!4640213 tp!2324408)))

(declare-fun b!7849539 () Bool)

(declare-fun tp!2324406 () Bool)

(declare-fun tp!2324405 () Bool)

(assert (=> b!7849539 (= e!4640213 (and tp!2324406 tp!2324405))))

(assert (= (and b!7849181 (is-ElementMatch!21080 (regTwo!42673 r1!6227))) b!7849536))

(assert (= (and b!7849181 (is-Concat!29925 (regTwo!42673 r1!6227))) b!7849537))

(assert (= (and b!7849181 (is-Star!21080 (regTwo!42673 r1!6227))) b!7849538))

(assert (= (and b!7849181 (is-Union!21080 (regTwo!42673 r1!6227))) b!7849539))

(declare-fun b!7849544 () Bool)

(declare-fun e!4640216 () Bool)

(declare-fun tp!2324412 () Bool)

(assert (=> b!7849544 (= e!4640216 (and tp_is_empty!52559 tp!2324412))))

(assert (=> b!7849187 (= tp!2324319 e!4640216)))

(assert (= (and b!7849187 (is-Cons!73815 (t!388674 s2!3706))) b!7849544))

(declare-fun b!7849545 () Bool)

(declare-fun e!4640217 () Bool)

(assert (=> b!7849545 (= e!4640217 tp_is_empty!52559)))

(assert (=> b!7849182 (= tp!2324317 e!4640217)))

(declare-fun b!7849546 () Bool)

(declare-fun tp!2324415 () Bool)

(declare-fun tp!2324417 () Bool)

(assert (=> b!7849546 (= e!4640217 (and tp!2324415 tp!2324417))))

(declare-fun b!7849547 () Bool)

(declare-fun tp!2324416 () Bool)

(assert (=> b!7849547 (= e!4640217 tp!2324416)))

(declare-fun b!7849548 () Bool)

(declare-fun tp!2324414 () Bool)

(declare-fun tp!2324413 () Bool)

(assert (=> b!7849548 (= e!4640217 (and tp!2324414 tp!2324413))))

(assert (= (and b!7849182 (is-ElementMatch!21080 (reg!21409 r2!6165))) b!7849545))

(assert (= (and b!7849182 (is-Concat!29925 (reg!21409 r2!6165))) b!7849546))

(assert (= (and b!7849182 (is-Star!21080 (reg!21409 r2!6165))) b!7849547))

(assert (= (and b!7849182 (is-Union!21080 (reg!21409 r2!6165))) b!7849548))

(declare-fun b!7849549 () Bool)

(declare-fun e!4640218 () Bool)

(assert (=> b!7849549 (= e!4640218 tp_is_empty!52559)))

(assert (=> b!7849185 (= tp!2324325 e!4640218)))

(declare-fun b!7849550 () Bool)

(declare-fun tp!2324420 () Bool)

(declare-fun tp!2324422 () Bool)

(assert (=> b!7849550 (= e!4640218 (and tp!2324420 tp!2324422))))

(declare-fun b!7849551 () Bool)

(declare-fun tp!2324421 () Bool)

(assert (=> b!7849551 (= e!4640218 tp!2324421)))

(declare-fun b!7849552 () Bool)

(declare-fun tp!2324419 () Bool)

(declare-fun tp!2324418 () Bool)

(assert (=> b!7849552 (= e!4640218 (and tp!2324419 tp!2324418))))

(assert (= (and b!7849185 (is-ElementMatch!21080 (regOne!42672 r2!6165))) b!7849549))

(assert (= (and b!7849185 (is-Concat!29925 (regOne!42672 r2!6165))) b!7849550))

(assert (= (and b!7849185 (is-Star!21080 (regOne!42672 r2!6165))) b!7849551))

(assert (= (and b!7849185 (is-Union!21080 (regOne!42672 r2!6165))) b!7849552))

(declare-fun b!7849553 () Bool)

(declare-fun e!4640219 () Bool)

(assert (=> b!7849553 (= e!4640219 tp_is_empty!52559)))

(assert (=> b!7849185 (= tp!2324318 e!4640219)))

(declare-fun b!7849554 () Bool)

(declare-fun tp!2324425 () Bool)

(declare-fun tp!2324427 () Bool)

(assert (=> b!7849554 (= e!4640219 (and tp!2324425 tp!2324427))))

(declare-fun b!7849555 () Bool)

(declare-fun tp!2324426 () Bool)

(assert (=> b!7849555 (= e!4640219 tp!2324426)))

(declare-fun b!7849556 () Bool)

(declare-fun tp!2324424 () Bool)

(declare-fun tp!2324423 () Bool)

(assert (=> b!7849556 (= e!4640219 (and tp!2324424 tp!2324423))))

(assert (= (and b!7849185 (is-ElementMatch!21080 (regTwo!42672 r2!6165))) b!7849553))

(assert (= (and b!7849185 (is-Concat!29925 (regTwo!42672 r2!6165))) b!7849554))

(assert (= (and b!7849185 (is-Star!21080 (regTwo!42672 r2!6165))) b!7849555))

(assert (= (and b!7849185 (is-Union!21080 (regTwo!42672 r2!6165))) b!7849556))

(declare-fun b!7849557 () Bool)

(declare-fun e!4640220 () Bool)

(declare-fun tp!2324428 () Bool)

(assert (=> b!7849557 (= e!4640220 (and tp_is_empty!52559 tp!2324428))))

(assert (=> b!7849186 (= tp!2324321 e!4640220)))

(assert (= (and b!7849186 (is-Cons!73815 (t!388674 s1!4084))) b!7849557))

(push 1)

(assert (not d!2353073))

(assert (not b!7849295))

(assert (not b!7849523))

(assert (not b!7849394))

(assert (not b!7849529))

(assert (not b!7849526))

(assert (not b!7849375))

(assert (not b!7849546))

(assert (not bm!727372))

(assert (not b!7849305))

(assert (not b!7849522))

(assert (not b!7849557))

(assert (not b!7849358))

(assert (not b!7849525))

(assert (not b!7849519))

(assert (not b!7849552))

(assert (not b!7849450))

(assert (not d!2353071))

(assert (not b!7849518))

(assert (not b!7849307))

(assert (not bm!727381))

(assert (not b!7849303))

(assert (not b!7849537))

(assert (not b!7849513))

(assert (not b!7849547))

(assert (not bm!727389))

(assert (not bm!727373))

(assert (not b!7849555))

(assert (not b!7849550))

(assert (not b!7849420))

(assert (not b!7849534))

(assert (not b!7849499))

(assert (not b!7849449))

(assert (not b!7849556))

(assert (not bm!727360))

(assert (not b!7849527))

(assert (not b!7849369))

(assert (not bm!727377))

(assert (not bm!727378))

(assert (not b!7849551))

(assert (not b!7849416))

(assert (not b!7849533))

(assert (not b!7849515))

(assert (not b!7849412))

(assert (not b!7849548))

(assert (not bm!727376))

(assert (not d!2353075))

(assert (not b!7849514))

(assert (not bm!727408))

(assert (not b!7849554))

(assert (not b!7849371))

(assert (not b!7849418))

(assert (not d!2353059))

(assert (not bm!727403))

(assert (not bm!727405))

(assert (not d!2353063))

(assert (not b!7849539))

(assert (not b!7849373))

(assert (not b!7849348))

(assert (not b!7849521))

(assert (not b!7849538))

(assert (not b!7849535))

(assert (not d!2353067))

(assert (not b!7849530))

(assert (not b!7849490))

(assert (not b!7849414))

(assert (not b!7849299))

(assert (not d!2353065))

(assert (not bm!727382))

(assert (not b!7849367))

(assert tp_is_empty!52559)

(assert (not b!7849517))

(assert (not d!2353057))

(assert (not b!7849408))

(assert (not b!7849301))

(assert (not d!2353069))

(assert (not b!7849531))

(assert (not b!7849407))

(assert (not b!7849363))

(assert (not bm!727406))

(assert (not b!7849544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

