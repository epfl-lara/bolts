; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742944 () Bool)

(assert start!742944)

(declare-fun b!7845197 () Bool)

(declare-fun e!4638157 () Bool)

(declare-fun tp_is_empty!52511 () Bool)

(assert (=> b!7845197 (= e!4638157 tp_is_empty!52511)))

(declare-fun b!7845198 () Bool)

(declare-fun e!4638152 () Bool)

(declare-fun tp!2322689 () Bool)

(declare-fun tp!2322686 () Bool)

(assert (=> b!7845198 (= e!4638152 (and tp!2322689 tp!2322686))))

(declare-fun b!7845199 () Bool)

(declare-fun res!3119999 () Bool)

(declare-fun e!4638156 () Bool)

(assert (=> b!7845199 (=> (not res!3119999) (not e!4638156))))

(declare-datatypes ((C!42438 0))(
  ( (C!42439 (val!31681 Int)) )
))
(declare-datatypes ((Regex!21056 0))(
  ( (ElementMatch!21056 (c!1442064 C!42438)) (Concat!29901 (regOne!42624 Regex!21056) (regTwo!42624 Regex!21056)) (EmptyExpr!21056) (Star!21056 (reg!21385 Regex!21056)) (EmptyLang!21056) (Union!21056 (regOne!42625 Regex!21056) (regTwo!42625 Regex!21056)) )
))
(declare-fun r2!6165 () Regex!21056)

(declare-datatypes ((List!73915 0))(
  ( (Nil!73791) (Cons!73791 (h!80239 C!42438) (t!388650 List!73915)) )
))
(declare-fun s2!3706 () List!73915)

(declare-fun matchR!10492 (Regex!21056 List!73915) Bool)

(assert (=> b!7845199 (= res!3119999 (matchR!10492 r2!6165 s2!3706))))

(declare-fun res!3119996 () Bool)

(assert (=> start!742944 (=> (not res!3119996) (not e!4638156))))

(declare-fun r1!6227 () Regex!21056)

(declare-fun validRegex!11466 (Regex!21056) Bool)

(assert (=> start!742944 (= res!3119996 (validRegex!11466 r1!6227))))

(assert (=> start!742944 e!4638156))

(assert (=> start!742944 e!4638157))

(assert (=> start!742944 e!4638152))

(declare-fun e!4638155 () Bool)

(assert (=> start!742944 e!4638155))

(declare-fun e!4638153 () Bool)

(assert (=> start!742944 e!4638153))

(declare-fun b!7845200 () Bool)

(declare-fun e!4638154 () Bool)

(assert (=> b!7845200 (= e!4638156 (not e!4638154))))

(declare-fun res!3120000 () Bool)

(assert (=> b!7845200 (=> res!3120000 e!4638154)))

(declare-fun nullable!9332 (Regex!21056) Bool)

(assert (=> b!7845200 (= res!3120000 (not (nullable!9332 r1!6227)))))

(declare-fun s1!4084 () List!73915)

(declare-fun lt!2679054 () Regex!21056)

(declare-fun ++!18066 (List!73915 List!73915) List!73915)

(assert (=> b!7845200 (matchR!10492 (Concat!29901 lt!2679054 r2!6165) (++!18066 (t!388650 s1!4084) s2!3706))))

(declare-datatypes ((Unit!168858 0))(
  ( (Unit!168859) )
))
(declare-fun lt!2679055 () Unit!168858)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!427 (Regex!21056 Regex!21056 List!73915 List!73915) Unit!168858)

(assert (=> b!7845200 (= lt!2679055 (lemmaTwoRegexMatchThenConcatMatchesConcatString!427 lt!2679054 r2!6165 (t!388650 s1!4084) s2!3706))))

(declare-fun derivativeStep!6293 (Regex!21056 C!42438) Regex!21056)

(assert (=> b!7845200 (= lt!2679054 (derivativeStep!6293 r1!6227 (h!80239 s1!4084)))))

(declare-fun b!7845201 () Bool)

(declare-fun tp!2322692 () Bool)

(declare-fun tp!2322687 () Bool)

(assert (=> b!7845201 (= e!4638157 (and tp!2322692 tp!2322687))))

(declare-fun b!7845202 () Bool)

(declare-fun tp!2322685 () Bool)

(assert (=> b!7845202 (= e!4638155 (and tp_is_empty!52511 tp!2322685))))

(declare-fun b!7845203 () Bool)

(declare-fun tp!2322691 () Bool)

(assert (=> b!7845203 (= e!4638152 tp!2322691)))

(declare-fun b!7845204 () Bool)

(declare-fun tp!2322694 () Bool)

(assert (=> b!7845204 (= e!4638153 (and tp_is_empty!52511 tp!2322694))))

(declare-fun b!7845205 () Bool)

(declare-fun res!3119998 () Bool)

(assert (=> b!7845205 (=> (not res!3119998) (not e!4638156))))

(assert (=> b!7845205 (= res!3119998 (validRegex!11466 r2!6165))))

(declare-fun b!7845206 () Bool)

(declare-fun tp!2322693 () Bool)

(declare-fun tp!2322688 () Bool)

(assert (=> b!7845206 (= e!4638157 (and tp!2322693 tp!2322688))))

(declare-fun b!7845207 () Bool)

(declare-fun tp!2322690 () Bool)

(assert (=> b!7845207 (= e!4638157 tp!2322690)))

(declare-fun b!7845208 () Bool)

(assert (=> b!7845208 (= e!4638152 tp_is_empty!52511)))

(declare-fun b!7845209 () Bool)

(declare-fun res!3119997 () Bool)

(assert (=> b!7845209 (=> (not res!3119997) (not e!4638156))))

(assert (=> b!7845209 (= res!3119997 (is-Cons!73791 s1!4084))))

(declare-fun b!7845210 () Bool)

(declare-fun tp!2322695 () Bool)

(declare-fun tp!2322696 () Bool)

(assert (=> b!7845210 (= e!4638152 (and tp!2322695 tp!2322696))))

(declare-fun b!7845211 () Bool)

(assert (=> b!7845211 (= e!4638154 (validRegex!11466 (Concat!29901 r1!6227 r2!6165)))))

(declare-fun b!7845212 () Bool)

(declare-fun res!3119995 () Bool)

(assert (=> b!7845212 (=> (not res!3119995) (not e!4638156))))

(assert (=> b!7845212 (= res!3119995 (matchR!10492 r1!6227 s1!4084))))

(assert (= (and start!742944 res!3119996) b!7845205))

(assert (= (and b!7845205 res!3119998) b!7845212))

(assert (= (and b!7845212 res!3119995) b!7845199))

(assert (= (and b!7845199 res!3119999) b!7845209))

(assert (= (and b!7845209 res!3119997) b!7845200))

(assert (= (and b!7845200 (not res!3120000)) b!7845211))

(assert (= (and start!742944 (is-ElementMatch!21056 r1!6227)) b!7845197))

(assert (= (and start!742944 (is-Concat!29901 r1!6227)) b!7845201))

(assert (= (and start!742944 (is-Star!21056 r1!6227)) b!7845207))

(assert (= (and start!742944 (is-Union!21056 r1!6227)) b!7845206))

(assert (= (and start!742944 (is-ElementMatch!21056 r2!6165)) b!7845208))

(assert (= (and start!742944 (is-Concat!29901 r2!6165)) b!7845210))

(assert (= (and start!742944 (is-Star!21056 r2!6165)) b!7845203))

(assert (= (and start!742944 (is-Union!21056 r2!6165)) b!7845198))

(assert (= (and start!742944 (is-Cons!73791 s1!4084)) b!7845202))

(assert (= (and start!742944 (is-Cons!73791 s2!3706)) b!7845204))

(declare-fun m!8255592 () Bool)

(assert (=> b!7845211 m!8255592))

(declare-fun m!8255594 () Bool)

(assert (=> b!7845199 m!8255594))

(declare-fun m!8255596 () Bool)

(assert (=> b!7845212 m!8255596))

(declare-fun m!8255598 () Bool)

(assert (=> b!7845205 m!8255598))

(declare-fun m!8255600 () Bool)

(assert (=> start!742944 m!8255600))

(declare-fun m!8255602 () Bool)

(assert (=> b!7845200 m!8255602))

(declare-fun m!8255604 () Bool)

(assert (=> b!7845200 m!8255604))

(declare-fun m!8255606 () Bool)

(assert (=> b!7845200 m!8255606))

(assert (=> b!7845200 m!8255606))

(declare-fun m!8255608 () Bool)

(assert (=> b!7845200 m!8255608))

(declare-fun m!8255610 () Bool)

(assert (=> b!7845200 m!8255610))

(push 1)

(assert (not b!7845207))

(assert (not b!7845211))

(assert (not b!7845202))

(assert (not b!7845199))

(assert (not start!742944))

(assert (not b!7845203))

(assert (not b!7845206))

(assert (not b!7845205))

(assert (not b!7845204))

(assert (not b!7845198))

(assert (not b!7845200))

(assert tp_is_empty!52511)

(assert (not b!7845201))

(assert (not b!7845210))

(assert (not b!7845212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!726952 () Bool)

(declare-fun call!726957 () Bool)

(declare-fun isEmpty!42314 (List!73915) Bool)

(assert (=> bm!726952 (= call!726957 (isEmpty!42314 s2!3706))))

(declare-fun b!7845307 () Bool)

(declare-fun res!3120051 () Bool)

(declare-fun e!4638210 () Bool)

(assert (=> b!7845307 (=> res!3120051 e!4638210)))

(assert (=> b!7845307 (= res!3120051 (not (is-ElementMatch!21056 r2!6165)))))

(declare-fun e!4638206 () Bool)

(assert (=> b!7845307 (= e!4638206 e!4638210)))

(declare-fun b!7845308 () Bool)

(declare-fun res!3120045 () Bool)

(declare-fun e!4638207 () Bool)

(assert (=> b!7845308 (=> res!3120045 e!4638207)))

(declare-fun tail!15568 (List!73915) List!73915)

(assert (=> b!7845308 (= res!3120045 (not (isEmpty!42314 (tail!15568 s2!3706))))))

(declare-fun b!7845309 () Bool)

(declare-fun e!4638205 () Bool)

(assert (=> b!7845309 (= e!4638205 e!4638206)))

(declare-fun c!1442078 () Bool)

(assert (=> b!7845309 (= c!1442078 (is-EmptyLang!21056 r2!6165))))

(declare-fun d!2352743 () Bool)

(assert (=> d!2352743 e!4638205))

(declare-fun c!1442076 () Bool)

(assert (=> d!2352743 (= c!1442076 (is-EmptyExpr!21056 r2!6165))))

(declare-fun lt!2679064 () Bool)

(declare-fun e!4638204 () Bool)

(assert (=> d!2352743 (= lt!2679064 e!4638204)))

(declare-fun c!1442077 () Bool)

(assert (=> d!2352743 (= c!1442077 (isEmpty!42314 s2!3706))))

(assert (=> d!2352743 (validRegex!11466 r2!6165)))

(assert (=> d!2352743 (= (matchR!10492 r2!6165 s2!3706) lt!2679064)))

(declare-fun b!7845310 () Bool)

(declare-fun head!16025 (List!73915) C!42438)

(assert (=> b!7845310 (= e!4638204 (matchR!10492 (derivativeStep!6293 r2!6165 (head!16025 s2!3706)) (tail!15568 s2!3706)))))

(declare-fun b!7845311 () Bool)

(declare-fun e!4638209 () Bool)

(assert (=> b!7845311 (= e!4638210 e!4638209)))

(declare-fun res!3120049 () Bool)

(assert (=> b!7845311 (=> (not res!3120049) (not e!4638209))))

(assert (=> b!7845311 (= res!3120049 (not lt!2679064))))

(declare-fun b!7845312 () Bool)

(assert (=> b!7845312 (= e!4638204 (nullable!9332 r2!6165))))

(declare-fun b!7845313 () Bool)

(declare-fun e!4638208 () Bool)

(assert (=> b!7845313 (= e!4638208 (= (head!16025 s2!3706) (c!1442064 r2!6165)))))

(declare-fun b!7845314 () Bool)

(assert (=> b!7845314 (= e!4638209 e!4638207)))

(declare-fun res!3120046 () Bool)

(assert (=> b!7845314 (=> res!3120046 e!4638207)))

(assert (=> b!7845314 (= res!3120046 call!726957)))

(declare-fun b!7845315 () Bool)

(declare-fun res!3120048 () Bool)

(assert (=> b!7845315 (=> (not res!3120048) (not e!4638208))))

(assert (=> b!7845315 (= res!3120048 (isEmpty!42314 (tail!15568 s2!3706)))))

(declare-fun b!7845316 () Bool)

(declare-fun res!3120047 () Bool)

(assert (=> b!7845316 (=> res!3120047 e!4638210)))

(assert (=> b!7845316 (= res!3120047 e!4638208)))

(declare-fun res!3120050 () Bool)

(assert (=> b!7845316 (=> (not res!3120050) (not e!4638208))))

(assert (=> b!7845316 (= res!3120050 lt!2679064)))

(declare-fun b!7845317 () Bool)

(assert (=> b!7845317 (= e!4638207 (not (= (head!16025 s2!3706) (c!1442064 r2!6165))))))

(declare-fun b!7845318 () Bool)

(assert (=> b!7845318 (= e!4638206 (not lt!2679064))))

(declare-fun b!7845319 () Bool)

(declare-fun res!3120052 () Bool)

(assert (=> b!7845319 (=> (not res!3120052) (not e!4638208))))

(assert (=> b!7845319 (= res!3120052 (not call!726957))))

(declare-fun b!7845320 () Bool)

(assert (=> b!7845320 (= e!4638205 (= lt!2679064 call!726957))))

(assert (= (and d!2352743 c!1442077) b!7845312))

(assert (= (and d!2352743 (not c!1442077)) b!7845310))

(assert (= (and d!2352743 c!1442076) b!7845320))

(assert (= (and d!2352743 (not c!1442076)) b!7845309))

(assert (= (and b!7845309 c!1442078) b!7845318))

(assert (= (and b!7845309 (not c!1442078)) b!7845307))

(assert (= (and b!7845307 (not res!3120051)) b!7845316))

(assert (= (and b!7845316 res!3120050) b!7845319))

(assert (= (and b!7845319 res!3120052) b!7845315))

(assert (= (and b!7845315 res!3120048) b!7845313))

(assert (= (and b!7845316 (not res!3120047)) b!7845311))

(assert (= (and b!7845311 res!3120049) b!7845314))

(assert (= (and b!7845314 (not res!3120046)) b!7845308))

(assert (= (and b!7845308 (not res!3120045)) b!7845317))

(assert (= (or b!7845320 b!7845319 b!7845314) bm!726952))

(declare-fun m!8255632 () Bool)

(assert (=> b!7845317 m!8255632))

(declare-fun m!8255634 () Bool)

(assert (=> bm!726952 m!8255634))

(assert (=> b!7845313 m!8255632))

(assert (=> d!2352743 m!8255634))

(assert (=> d!2352743 m!8255598))

(assert (=> b!7845310 m!8255632))

(assert (=> b!7845310 m!8255632))

(declare-fun m!8255636 () Bool)

(assert (=> b!7845310 m!8255636))

(declare-fun m!8255638 () Bool)

(assert (=> b!7845310 m!8255638))

(assert (=> b!7845310 m!8255636))

(assert (=> b!7845310 m!8255638))

(declare-fun m!8255640 () Bool)

(assert (=> b!7845310 m!8255640))

(declare-fun m!8255642 () Bool)

(assert (=> b!7845312 m!8255642))

(assert (=> b!7845315 m!8255638))

(assert (=> b!7845315 m!8255638))

(declare-fun m!8255644 () Bool)

(assert (=> b!7845315 m!8255644))

(assert (=> b!7845308 m!8255638))

(assert (=> b!7845308 m!8255638))

(assert (=> b!7845308 m!8255644))

(assert (=> b!7845199 d!2352743))

(declare-fun b!7845357 () Bool)

(declare-fun e!4638239 () Bool)

(declare-fun call!726972 () Bool)

(assert (=> b!7845357 (= e!4638239 call!726972)))

(declare-fun bm!726965 () Bool)

(declare-fun call!726971 () Bool)

(assert (=> bm!726965 (= call!726972 call!726971)))

(declare-fun b!7845358 () Bool)

(declare-fun e!4638243 () Bool)

(declare-fun e!4638241 () Bool)

(assert (=> b!7845358 (= e!4638243 e!4638241)))

(declare-fun c!1442088 () Bool)

(assert (=> b!7845358 (= c!1442088 (is-Union!21056 (Concat!29901 r1!6227 r2!6165)))))

(declare-fun b!7845359 () Bool)

(declare-fun res!3120077 () Bool)

(declare-fun e!4638245 () Bool)

(assert (=> b!7845359 (=> res!3120077 e!4638245)))

(assert (=> b!7845359 (= res!3120077 (not (is-Concat!29901 (Concat!29901 r1!6227 r2!6165))))))

(assert (=> b!7845359 (= e!4638241 e!4638245)))

(declare-fun b!7845360 () Bool)

(declare-fun e!4638242 () Bool)

(assert (=> b!7845360 (= e!4638242 call!726971)))

(declare-fun b!7845362 () Bool)

(declare-fun e!4638240 () Bool)

(assert (=> b!7845362 (= e!4638240 e!4638243)))

(declare-fun c!1442087 () Bool)

(assert (=> b!7845362 (= c!1442087 (is-Star!21056 (Concat!29901 r1!6227 r2!6165)))))

(declare-fun call!726970 () Bool)

(declare-fun bm!726966 () Bool)

(assert (=> bm!726966 (= call!726970 (validRegex!11466 (ite c!1442088 (regOne!42625 (Concat!29901 r1!6227 r2!6165)) (regTwo!42624 (Concat!29901 r1!6227 r2!6165)))))))

(declare-fun d!2352747 () Bool)

(declare-fun res!3120074 () Bool)

(assert (=> d!2352747 (=> res!3120074 e!4638240)))

(assert (=> d!2352747 (= res!3120074 (is-ElementMatch!21056 (Concat!29901 r1!6227 r2!6165)))))

(assert (=> d!2352747 (= (validRegex!11466 (Concat!29901 r1!6227 r2!6165)) e!4638240)))

(declare-fun b!7845361 () Bool)

(declare-fun e!4638244 () Bool)

(assert (=> b!7845361 (= e!4638244 call!726970)))

(declare-fun bm!726967 () Bool)

(assert (=> bm!726967 (= call!726971 (validRegex!11466 (ite c!1442087 (reg!21385 (Concat!29901 r1!6227 r2!6165)) (ite c!1442088 (regTwo!42625 (Concat!29901 r1!6227 r2!6165)) (regOne!42624 (Concat!29901 r1!6227 r2!6165))))))))

(declare-fun b!7845363 () Bool)

(assert (=> b!7845363 (= e!4638243 e!4638242)))

(declare-fun res!3120073 () Bool)

(assert (=> b!7845363 (= res!3120073 (not (nullable!9332 (reg!21385 (Concat!29901 r1!6227 r2!6165)))))))

(assert (=> b!7845363 (=> (not res!3120073) (not e!4638242))))

(declare-fun b!7845364 () Bool)

(declare-fun res!3120076 () Bool)

(assert (=> b!7845364 (=> (not res!3120076) (not e!4638239))))

(assert (=> b!7845364 (= res!3120076 call!726970)))

(assert (=> b!7845364 (= e!4638241 e!4638239)))

(declare-fun b!7845365 () Bool)

(assert (=> b!7845365 (= e!4638245 e!4638244)))

(declare-fun res!3120075 () Bool)

(assert (=> b!7845365 (=> (not res!3120075) (not e!4638244))))

(assert (=> b!7845365 (= res!3120075 call!726972)))

(assert (= (and d!2352747 (not res!3120074)) b!7845362))

(assert (= (and b!7845362 c!1442087) b!7845363))

(assert (= (and b!7845362 (not c!1442087)) b!7845358))

(assert (= (and b!7845363 res!3120073) b!7845360))

(assert (= (and b!7845358 c!1442088) b!7845364))

(assert (= (and b!7845358 (not c!1442088)) b!7845359))

(assert (= (and b!7845364 res!3120076) b!7845357))

(assert (= (and b!7845359 (not res!3120077)) b!7845365))

(assert (= (and b!7845365 res!3120075) b!7845361))

(assert (= (or b!7845364 b!7845361) bm!726966))

(assert (= (or b!7845357 b!7845365) bm!726965))

(assert (= (or b!7845360 bm!726965) bm!726967))

(declare-fun m!8255652 () Bool)

(assert (=> bm!726966 m!8255652))

(declare-fun m!8255654 () Bool)

(assert (=> bm!726967 m!8255654))

(declare-fun m!8255656 () Bool)

(assert (=> b!7845363 m!8255656))

(assert (=> b!7845211 d!2352747))

(declare-fun b!7845366 () Bool)

(declare-fun e!4638246 () Bool)

(declare-fun call!726975 () Bool)

(assert (=> b!7845366 (= e!4638246 call!726975)))

(declare-fun bm!726968 () Bool)

(declare-fun call!726974 () Bool)

(assert (=> bm!726968 (= call!726975 call!726974)))

(declare-fun b!7845367 () Bool)

(declare-fun e!4638250 () Bool)

(declare-fun e!4638248 () Bool)

(assert (=> b!7845367 (= e!4638250 e!4638248)))

(declare-fun c!1442090 () Bool)

(assert (=> b!7845367 (= c!1442090 (is-Union!21056 r2!6165))))

(declare-fun b!7845368 () Bool)

(declare-fun res!3120082 () Bool)

(declare-fun e!4638252 () Bool)

(assert (=> b!7845368 (=> res!3120082 e!4638252)))

(assert (=> b!7845368 (= res!3120082 (not (is-Concat!29901 r2!6165)))))

(assert (=> b!7845368 (= e!4638248 e!4638252)))

(declare-fun b!7845369 () Bool)

(declare-fun e!4638249 () Bool)

(assert (=> b!7845369 (= e!4638249 call!726974)))

(declare-fun b!7845371 () Bool)

(declare-fun e!4638247 () Bool)

(assert (=> b!7845371 (= e!4638247 e!4638250)))

(declare-fun c!1442089 () Bool)

(assert (=> b!7845371 (= c!1442089 (is-Star!21056 r2!6165))))

(declare-fun bm!726969 () Bool)

(declare-fun call!726973 () Bool)

(assert (=> bm!726969 (= call!726973 (validRegex!11466 (ite c!1442090 (regOne!42625 r2!6165) (regTwo!42624 r2!6165))))))

(declare-fun d!2352751 () Bool)

(declare-fun res!3120079 () Bool)

(assert (=> d!2352751 (=> res!3120079 e!4638247)))

(assert (=> d!2352751 (= res!3120079 (is-ElementMatch!21056 r2!6165))))

(assert (=> d!2352751 (= (validRegex!11466 r2!6165) e!4638247)))

(declare-fun b!7845370 () Bool)

(declare-fun e!4638251 () Bool)

(assert (=> b!7845370 (= e!4638251 call!726973)))

(declare-fun bm!726970 () Bool)

(assert (=> bm!726970 (= call!726974 (validRegex!11466 (ite c!1442089 (reg!21385 r2!6165) (ite c!1442090 (regTwo!42625 r2!6165) (regOne!42624 r2!6165)))))))

(declare-fun b!7845372 () Bool)

(assert (=> b!7845372 (= e!4638250 e!4638249)))

(declare-fun res!3120078 () Bool)

(assert (=> b!7845372 (= res!3120078 (not (nullable!9332 (reg!21385 r2!6165))))))

(assert (=> b!7845372 (=> (not res!3120078) (not e!4638249))))

(declare-fun b!7845373 () Bool)

(declare-fun res!3120081 () Bool)

(assert (=> b!7845373 (=> (not res!3120081) (not e!4638246))))

(assert (=> b!7845373 (= res!3120081 call!726973)))

(assert (=> b!7845373 (= e!4638248 e!4638246)))

(declare-fun b!7845374 () Bool)

(assert (=> b!7845374 (= e!4638252 e!4638251)))

(declare-fun res!3120080 () Bool)

(assert (=> b!7845374 (=> (not res!3120080) (not e!4638251))))

(assert (=> b!7845374 (= res!3120080 call!726975)))

(assert (= (and d!2352751 (not res!3120079)) b!7845371))

(assert (= (and b!7845371 c!1442089) b!7845372))

(assert (= (and b!7845371 (not c!1442089)) b!7845367))

(assert (= (and b!7845372 res!3120078) b!7845369))

(assert (= (and b!7845367 c!1442090) b!7845373))

(assert (= (and b!7845367 (not c!1442090)) b!7845368))

(assert (= (and b!7845373 res!3120081) b!7845366))

(assert (= (and b!7845368 (not res!3120082)) b!7845374))

(assert (= (and b!7845374 res!3120080) b!7845370))

(assert (= (or b!7845373 b!7845370) bm!726969))

(assert (= (or b!7845366 b!7845374) bm!726968))

(assert (= (or b!7845369 bm!726968) bm!726970))

(declare-fun m!8255664 () Bool)

(assert (=> bm!726969 m!8255664))

(declare-fun m!8255666 () Bool)

(assert (=> bm!726970 m!8255666))

(declare-fun m!8255668 () Bool)

(assert (=> b!7845372 m!8255668))

(assert (=> b!7845205 d!2352751))

(declare-fun d!2352755 () Bool)

(assert (=> d!2352755 (matchR!10492 (Concat!29901 lt!2679054 r2!6165) (++!18066 (t!388650 s1!4084) s2!3706))))

(declare-fun lt!2679067 () Unit!168858)

(declare-fun choose!59630 (Regex!21056 Regex!21056 List!73915 List!73915) Unit!168858)

(assert (=> d!2352755 (= lt!2679067 (choose!59630 lt!2679054 r2!6165 (t!388650 s1!4084) s2!3706))))

(declare-fun e!4638255 () Bool)

(assert (=> d!2352755 e!4638255))

(declare-fun res!3120085 () Bool)

(assert (=> d!2352755 (=> (not res!3120085) (not e!4638255))))

(assert (=> d!2352755 (= res!3120085 (validRegex!11466 lt!2679054))))

(assert (=> d!2352755 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!427 lt!2679054 r2!6165 (t!388650 s1!4084) s2!3706) lt!2679067)))

(declare-fun b!7845377 () Bool)

(assert (=> b!7845377 (= e!4638255 (validRegex!11466 r2!6165))))

(assert (= (and d!2352755 res!3120085) b!7845377))

(assert (=> d!2352755 m!8255606))

(assert (=> d!2352755 m!8255606))

(assert (=> d!2352755 m!8255608))

(declare-fun m!8255670 () Bool)

(assert (=> d!2352755 m!8255670))

(declare-fun m!8255672 () Bool)

(assert (=> d!2352755 m!8255672))

(assert (=> b!7845377 m!8255598))

(assert (=> b!7845200 d!2352755))

(declare-fun bm!726971 () Bool)

(declare-fun call!726976 () Bool)

(assert (=> bm!726971 (= call!726976 (isEmpty!42314 (++!18066 (t!388650 s1!4084) s2!3706)))))

(declare-fun b!7845378 () Bool)

(declare-fun res!3120092 () Bool)

(declare-fun e!4638262 () Bool)

(assert (=> b!7845378 (=> res!3120092 e!4638262)))

(assert (=> b!7845378 (= res!3120092 (not (is-ElementMatch!21056 (Concat!29901 lt!2679054 r2!6165))))))

(declare-fun e!4638258 () Bool)

(assert (=> b!7845378 (= e!4638258 e!4638262)))

(declare-fun b!7845379 () Bool)

(declare-fun res!3120086 () Bool)

(declare-fun e!4638259 () Bool)

(assert (=> b!7845379 (=> res!3120086 e!4638259)))

(assert (=> b!7845379 (= res!3120086 (not (isEmpty!42314 (tail!15568 (++!18066 (t!388650 s1!4084) s2!3706)))))))

(declare-fun b!7845380 () Bool)

(declare-fun e!4638257 () Bool)

(assert (=> b!7845380 (= e!4638257 e!4638258)))

(declare-fun c!1442093 () Bool)

(assert (=> b!7845380 (= c!1442093 (is-EmptyLang!21056 (Concat!29901 lt!2679054 r2!6165)))))

(declare-fun d!2352757 () Bool)

(assert (=> d!2352757 e!4638257))

(declare-fun c!1442091 () Bool)

(assert (=> d!2352757 (= c!1442091 (is-EmptyExpr!21056 (Concat!29901 lt!2679054 r2!6165)))))

(declare-fun lt!2679068 () Bool)

(declare-fun e!4638256 () Bool)

(assert (=> d!2352757 (= lt!2679068 e!4638256)))

(declare-fun c!1442092 () Bool)

(assert (=> d!2352757 (= c!1442092 (isEmpty!42314 (++!18066 (t!388650 s1!4084) s2!3706)))))

(assert (=> d!2352757 (validRegex!11466 (Concat!29901 lt!2679054 r2!6165))))

(assert (=> d!2352757 (= (matchR!10492 (Concat!29901 lt!2679054 r2!6165) (++!18066 (t!388650 s1!4084) s2!3706)) lt!2679068)))

(declare-fun b!7845381 () Bool)

(assert (=> b!7845381 (= e!4638256 (matchR!10492 (derivativeStep!6293 (Concat!29901 lt!2679054 r2!6165) (head!16025 (++!18066 (t!388650 s1!4084) s2!3706))) (tail!15568 (++!18066 (t!388650 s1!4084) s2!3706))))))

(declare-fun b!7845382 () Bool)

(declare-fun e!4638261 () Bool)

(assert (=> b!7845382 (= e!4638262 e!4638261)))

(declare-fun res!3120090 () Bool)

(assert (=> b!7845382 (=> (not res!3120090) (not e!4638261))))

(assert (=> b!7845382 (= res!3120090 (not lt!2679068))))

(declare-fun b!7845383 () Bool)

(assert (=> b!7845383 (= e!4638256 (nullable!9332 (Concat!29901 lt!2679054 r2!6165)))))

(declare-fun e!4638260 () Bool)

(declare-fun b!7845384 () Bool)

(assert (=> b!7845384 (= e!4638260 (= (head!16025 (++!18066 (t!388650 s1!4084) s2!3706)) (c!1442064 (Concat!29901 lt!2679054 r2!6165))))))

(declare-fun b!7845385 () Bool)

(assert (=> b!7845385 (= e!4638261 e!4638259)))

(declare-fun res!3120087 () Bool)

(assert (=> b!7845385 (=> res!3120087 e!4638259)))

(assert (=> b!7845385 (= res!3120087 call!726976)))

(declare-fun b!7845386 () Bool)

(declare-fun res!3120089 () Bool)

(assert (=> b!7845386 (=> (not res!3120089) (not e!4638260))))

(assert (=> b!7845386 (= res!3120089 (isEmpty!42314 (tail!15568 (++!18066 (t!388650 s1!4084) s2!3706))))))

(declare-fun b!7845387 () Bool)

(declare-fun res!3120088 () Bool)

(assert (=> b!7845387 (=> res!3120088 e!4638262)))

(assert (=> b!7845387 (= res!3120088 e!4638260)))

(declare-fun res!3120091 () Bool)

(assert (=> b!7845387 (=> (not res!3120091) (not e!4638260))))

(assert (=> b!7845387 (= res!3120091 lt!2679068)))

(declare-fun b!7845388 () Bool)

(assert (=> b!7845388 (= e!4638259 (not (= (head!16025 (++!18066 (t!388650 s1!4084) s2!3706)) (c!1442064 (Concat!29901 lt!2679054 r2!6165)))))))

(declare-fun b!7845389 () Bool)

(assert (=> b!7845389 (= e!4638258 (not lt!2679068))))

(declare-fun b!7845390 () Bool)

(declare-fun res!3120093 () Bool)

(assert (=> b!7845390 (=> (not res!3120093) (not e!4638260))))

(assert (=> b!7845390 (= res!3120093 (not call!726976))))

(declare-fun b!7845391 () Bool)

(assert (=> b!7845391 (= e!4638257 (= lt!2679068 call!726976))))

(assert (= (and d!2352757 c!1442092) b!7845383))

(assert (= (and d!2352757 (not c!1442092)) b!7845381))

(assert (= (and d!2352757 c!1442091) b!7845391))

(assert (= (and d!2352757 (not c!1442091)) b!7845380))

(assert (= (and b!7845380 c!1442093) b!7845389))

(assert (= (and b!7845380 (not c!1442093)) b!7845378))

(assert (= (and b!7845378 (not res!3120092)) b!7845387))

(assert (= (and b!7845387 res!3120091) b!7845390))

(assert (= (and b!7845390 res!3120093) b!7845386))

(assert (= (and b!7845386 res!3120089) b!7845384))

(assert (= (and b!7845387 (not res!3120088)) b!7845382))

(assert (= (and b!7845382 res!3120090) b!7845385))

(assert (= (and b!7845385 (not res!3120087)) b!7845379))

(assert (= (and b!7845379 (not res!3120086)) b!7845388))

(assert (= (or b!7845391 b!7845390 b!7845385) bm!726971))

(assert (=> b!7845388 m!8255606))

(declare-fun m!8255674 () Bool)

(assert (=> b!7845388 m!8255674))

(assert (=> bm!726971 m!8255606))

(declare-fun m!8255676 () Bool)

(assert (=> bm!726971 m!8255676))

(assert (=> b!7845384 m!8255606))

(assert (=> b!7845384 m!8255674))

(assert (=> d!2352757 m!8255606))

(assert (=> d!2352757 m!8255676))

(declare-fun m!8255678 () Bool)

(assert (=> d!2352757 m!8255678))

(assert (=> b!7845381 m!8255606))

(assert (=> b!7845381 m!8255674))

(assert (=> b!7845381 m!8255674))

(declare-fun m!8255680 () Bool)

(assert (=> b!7845381 m!8255680))

(assert (=> b!7845381 m!8255606))

(declare-fun m!8255682 () Bool)

(assert (=> b!7845381 m!8255682))

(assert (=> b!7845381 m!8255680))

(assert (=> b!7845381 m!8255682))

(declare-fun m!8255684 () Bool)

(assert (=> b!7845381 m!8255684))

(declare-fun m!8255686 () Bool)

(assert (=> b!7845383 m!8255686))

(assert (=> b!7845386 m!8255606))

(assert (=> b!7845386 m!8255682))

(assert (=> b!7845386 m!8255682))

(declare-fun m!8255688 () Bool)

(assert (=> b!7845386 m!8255688))

(assert (=> b!7845379 m!8255606))

(assert (=> b!7845379 m!8255682))

(assert (=> b!7845379 m!8255682))

(assert (=> b!7845379 m!8255688))

(assert (=> b!7845200 d!2352757))

(declare-fun d!2352759 () Bool)

(declare-fun nullableFct!3673 (Regex!21056) Bool)

(assert (=> d!2352759 (= (nullable!9332 r1!6227) (nullableFct!3673 r1!6227))))

(declare-fun bs!1967025 () Bool)

(assert (= bs!1967025 d!2352759))

(declare-fun m!8255690 () Bool)

(assert (=> bs!1967025 m!8255690))

(assert (=> b!7845200 d!2352759))

(declare-fun b!7845440 () Bool)

(declare-fun e!4638291 () Regex!21056)

(declare-fun call!726989 () Regex!21056)

(declare-fun call!726987 () Regex!21056)

(assert (=> b!7845440 (= e!4638291 (Union!21056 call!726989 call!726987))))

(declare-fun e!4638290 () Regex!21056)

(declare-fun b!7845441 () Bool)

(declare-fun call!726990 () Regex!21056)

(declare-fun call!726988 () Regex!21056)

(assert (=> b!7845441 (= e!4638290 (Union!21056 (Concat!29901 call!726988 (regTwo!42624 r1!6227)) call!726990))))

(declare-fun c!1442110 () Bool)

(declare-fun bm!726982 () Bool)

(declare-fun c!1442112 () Bool)

(assert (=> bm!726982 (= call!726989 (derivativeStep!6293 (ite c!1442112 (regOne!42625 r1!6227) (ite c!1442110 (reg!21385 r1!6227) (regOne!42624 r1!6227))) (h!80239 s1!4084)))))

(declare-fun b!7845442 () Bool)

(declare-fun e!4638289 () Regex!21056)

(assert (=> b!7845442 (= e!4638289 (Concat!29901 call!726988 r1!6227))))

(declare-fun bm!726983 () Bool)

(assert (=> bm!726983 (= call!726988 call!726989)))

(declare-fun bm!726984 () Bool)

(assert (=> bm!726984 (= call!726990 call!726987)))

(declare-fun b!7845443 () Bool)

(declare-fun e!4638288 () Regex!21056)

(assert (=> b!7845443 (= e!4638288 (ite (= (h!80239 s1!4084) (c!1442064 r1!6227)) EmptyExpr!21056 EmptyLang!21056))))

(declare-fun d!2352761 () Bool)

(declare-fun lt!2679073 () Regex!21056)

(assert (=> d!2352761 (validRegex!11466 lt!2679073)))

(declare-fun e!4638287 () Regex!21056)

(assert (=> d!2352761 (= lt!2679073 e!4638287)))

(declare-fun c!1442113 () Bool)

(assert (=> d!2352761 (= c!1442113 (or (is-EmptyExpr!21056 r1!6227) (is-EmptyLang!21056 r1!6227)))))

(assert (=> d!2352761 (validRegex!11466 r1!6227)))

(assert (=> d!2352761 (= (derivativeStep!6293 r1!6227 (h!80239 s1!4084)) lt!2679073)))

(declare-fun b!7845444 () Bool)

(assert (=> b!7845444 (= c!1442112 (is-Union!21056 r1!6227))))

(assert (=> b!7845444 (= e!4638288 e!4638291)))

(declare-fun b!7845445 () Bool)

(assert (=> b!7845445 (= e!4638287 e!4638288)))

(declare-fun c!1442111 () Bool)

(assert (=> b!7845445 (= c!1442111 (is-ElementMatch!21056 r1!6227))))

(declare-fun b!7845446 () Bool)

(declare-fun c!1442114 () Bool)

(assert (=> b!7845446 (= c!1442114 (nullable!9332 (regOne!42624 r1!6227)))))

(assert (=> b!7845446 (= e!4638289 e!4638290)))

(declare-fun b!7845447 () Bool)

(assert (=> b!7845447 (= e!4638290 (Union!21056 (Concat!29901 call!726990 (regTwo!42624 r1!6227)) EmptyLang!21056))))

(declare-fun bm!726985 () Bool)

(assert (=> bm!726985 (= call!726987 (derivativeStep!6293 (ite c!1442112 (regTwo!42625 r1!6227) (ite c!1442114 (regTwo!42624 r1!6227) (regOne!42624 r1!6227))) (h!80239 s1!4084)))))

(declare-fun b!7845448 () Bool)

(assert (=> b!7845448 (= e!4638291 e!4638289)))

(assert (=> b!7845448 (= c!1442110 (is-Star!21056 r1!6227))))

(declare-fun b!7845449 () Bool)

(assert (=> b!7845449 (= e!4638287 EmptyLang!21056)))

(assert (= (and d!2352761 c!1442113) b!7845449))

(assert (= (and d!2352761 (not c!1442113)) b!7845445))

(assert (= (and b!7845445 c!1442111) b!7845443))

(assert (= (and b!7845445 (not c!1442111)) b!7845444))

(assert (= (and b!7845444 c!1442112) b!7845440))

(assert (= (and b!7845444 (not c!1442112)) b!7845448))

(assert (= (and b!7845448 c!1442110) b!7845442))

(assert (= (and b!7845448 (not c!1442110)) b!7845446))

(assert (= (and b!7845446 c!1442114) b!7845441))

(assert (= (and b!7845446 (not c!1442114)) b!7845447))

(assert (= (or b!7845441 b!7845447) bm!726984))

(assert (= (or b!7845442 b!7845441) bm!726983))

(assert (= (or b!7845440 bm!726984) bm!726985))

(assert (= (or b!7845440 bm!726983) bm!726982))

(declare-fun m!8255692 () Bool)

(assert (=> bm!726982 m!8255692))

(declare-fun m!8255694 () Bool)

(assert (=> d!2352761 m!8255694))

(assert (=> d!2352761 m!8255600))

(declare-fun m!8255696 () Bool)

(assert (=> b!7845446 m!8255696))

(declare-fun m!8255698 () Bool)

(assert (=> bm!726985 m!8255698))

(assert (=> b!7845200 d!2352761))

(declare-fun b!7845458 () Bool)

(declare-fun e!4638297 () List!73915)

(assert (=> b!7845458 (= e!4638297 s2!3706)))

(declare-fun d!2352763 () Bool)

(declare-fun e!4638296 () Bool)

(assert (=> d!2352763 e!4638296))

(declare-fun res!3120115 () Bool)

(assert (=> d!2352763 (=> (not res!3120115) (not e!4638296))))

(declare-fun lt!2679076 () List!73915)

(declare-fun content!15661 (List!73915) (Set C!42438))

(assert (=> d!2352763 (= res!3120115 (= (content!15661 lt!2679076) (set.union (content!15661 (t!388650 s1!4084)) (content!15661 s2!3706))))))

(assert (=> d!2352763 (= lt!2679076 e!4638297)))

(declare-fun c!1442117 () Bool)

(assert (=> d!2352763 (= c!1442117 (is-Nil!73791 (t!388650 s1!4084)))))

(assert (=> d!2352763 (= (++!18066 (t!388650 s1!4084) s2!3706) lt!2679076)))

(declare-fun b!7845460 () Bool)

(declare-fun res!3120114 () Bool)

(assert (=> b!7845460 (=> (not res!3120114) (not e!4638296))))

(declare-fun size!42814 (List!73915) Int)

(assert (=> b!7845460 (= res!3120114 (= (size!42814 lt!2679076) (+ (size!42814 (t!388650 s1!4084)) (size!42814 s2!3706))))))

(declare-fun b!7845459 () Bool)

(assert (=> b!7845459 (= e!4638297 (Cons!73791 (h!80239 (t!388650 s1!4084)) (++!18066 (t!388650 (t!388650 s1!4084)) s2!3706)))))

(declare-fun b!7845461 () Bool)

(assert (=> b!7845461 (= e!4638296 (or (not (= s2!3706 Nil!73791)) (= lt!2679076 (t!388650 s1!4084))))))

(assert (= (and d!2352763 c!1442117) b!7845458))

(assert (= (and d!2352763 (not c!1442117)) b!7845459))

(assert (= (and d!2352763 res!3120115) b!7845460))

(assert (= (and b!7845460 res!3120114) b!7845461))

(declare-fun m!8255700 () Bool)

(assert (=> d!2352763 m!8255700))

(declare-fun m!8255702 () Bool)

(assert (=> d!2352763 m!8255702))

(declare-fun m!8255704 () Bool)

(assert (=> d!2352763 m!8255704))

(declare-fun m!8255706 () Bool)

(assert (=> b!7845460 m!8255706))

(declare-fun m!8255708 () Bool)

(assert (=> b!7845460 m!8255708))

(declare-fun m!8255710 () Bool)

(assert (=> b!7845460 m!8255710))

(declare-fun m!8255712 () Bool)

(assert (=> b!7845459 m!8255712))

(assert (=> b!7845200 d!2352763))

(declare-fun bm!726986 () Bool)

(declare-fun call!726991 () Bool)

(assert (=> bm!726986 (= call!726991 (isEmpty!42314 s1!4084))))

(declare-fun b!7845462 () Bool)

(declare-fun res!3120122 () Bool)

(declare-fun e!4638304 () Bool)

(assert (=> b!7845462 (=> res!3120122 e!4638304)))

(assert (=> b!7845462 (= res!3120122 (not (is-ElementMatch!21056 r1!6227)))))

(declare-fun e!4638300 () Bool)

(assert (=> b!7845462 (= e!4638300 e!4638304)))

(declare-fun b!7845463 () Bool)

(declare-fun res!3120116 () Bool)

(declare-fun e!4638301 () Bool)

(assert (=> b!7845463 (=> res!3120116 e!4638301)))

(assert (=> b!7845463 (= res!3120116 (not (isEmpty!42314 (tail!15568 s1!4084))))))

(declare-fun b!7845464 () Bool)

(declare-fun e!4638299 () Bool)

(assert (=> b!7845464 (= e!4638299 e!4638300)))

(declare-fun c!1442120 () Bool)

(assert (=> b!7845464 (= c!1442120 (is-EmptyLang!21056 r1!6227))))

(declare-fun d!2352765 () Bool)

(assert (=> d!2352765 e!4638299))

(declare-fun c!1442118 () Bool)

(assert (=> d!2352765 (= c!1442118 (is-EmptyExpr!21056 r1!6227))))

(declare-fun lt!2679077 () Bool)

(declare-fun e!4638298 () Bool)

(assert (=> d!2352765 (= lt!2679077 e!4638298)))

(declare-fun c!1442119 () Bool)

(assert (=> d!2352765 (= c!1442119 (isEmpty!42314 s1!4084))))

(assert (=> d!2352765 (validRegex!11466 r1!6227)))

(assert (=> d!2352765 (= (matchR!10492 r1!6227 s1!4084) lt!2679077)))

(declare-fun b!7845465 () Bool)

(assert (=> b!7845465 (= e!4638298 (matchR!10492 (derivativeStep!6293 r1!6227 (head!16025 s1!4084)) (tail!15568 s1!4084)))))

(declare-fun b!7845466 () Bool)

(declare-fun e!4638303 () Bool)

(assert (=> b!7845466 (= e!4638304 e!4638303)))

(declare-fun res!3120120 () Bool)

(assert (=> b!7845466 (=> (not res!3120120) (not e!4638303))))

(assert (=> b!7845466 (= res!3120120 (not lt!2679077))))

(declare-fun b!7845467 () Bool)

(assert (=> b!7845467 (= e!4638298 (nullable!9332 r1!6227))))

(declare-fun b!7845468 () Bool)

(declare-fun e!4638302 () Bool)

(assert (=> b!7845468 (= e!4638302 (= (head!16025 s1!4084) (c!1442064 r1!6227)))))

(declare-fun b!7845469 () Bool)

(assert (=> b!7845469 (= e!4638303 e!4638301)))

(declare-fun res!3120117 () Bool)

(assert (=> b!7845469 (=> res!3120117 e!4638301)))

(assert (=> b!7845469 (= res!3120117 call!726991)))

(declare-fun b!7845470 () Bool)

(declare-fun res!3120119 () Bool)

(assert (=> b!7845470 (=> (not res!3120119) (not e!4638302))))

(assert (=> b!7845470 (= res!3120119 (isEmpty!42314 (tail!15568 s1!4084)))))

(declare-fun b!7845471 () Bool)

(declare-fun res!3120118 () Bool)

(assert (=> b!7845471 (=> res!3120118 e!4638304)))

(assert (=> b!7845471 (= res!3120118 e!4638302)))

(declare-fun res!3120121 () Bool)

(assert (=> b!7845471 (=> (not res!3120121) (not e!4638302))))

(assert (=> b!7845471 (= res!3120121 lt!2679077)))

(declare-fun b!7845472 () Bool)

(assert (=> b!7845472 (= e!4638301 (not (= (head!16025 s1!4084) (c!1442064 r1!6227))))))

(declare-fun b!7845473 () Bool)

(assert (=> b!7845473 (= e!4638300 (not lt!2679077))))

(declare-fun b!7845474 () Bool)

(declare-fun res!3120123 () Bool)

(assert (=> b!7845474 (=> (not res!3120123) (not e!4638302))))

(assert (=> b!7845474 (= res!3120123 (not call!726991))))

(declare-fun b!7845475 () Bool)

(assert (=> b!7845475 (= e!4638299 (= lt!2679077 call!726991))))

(assert (= (and d!2352765 c!1442119) b!7845467))

(assert (= (and d!2352765 (not c!1442119)) b!7845465))

(assert (= (and d!2352765 c!1442118) b!7845475))

(assert (= (and d!2352765 (not c!1442118)) b!7845464))

(assert (= (and b!7845464 c!1442120) b!7845473))

(assert (= (and b!7845464 (not c!1442120)) b!7845462))

(assert (= (and b!7845462 (not res!3120122)) b!7845471))

(assert (= (and b!7845471 res!3120121) b!7845474))

(assert (= (and b!7845474 res!3120123) b!7845470))

(assert (= (and b!7845470 res!3120119) b!7845468))

(assert (= (and b!7845471 (not res!3120118)) b!7845466))

(assert (= (and b!7845466 res!3120120) b!7845469))

(assert (= (and b!7845469 (not res!3120117)) b!7845463))

(assert (= (and b!7845463 (not res!3120116)) b!7845472))

(assert (= (or b!7845475 b!7845474 b!7845469) bm!726986))

(declare-fun m!8255714 () Bool)

(assert (=> b!7845472 m!8255714))

(declare-fun m!8255716 () Bool)

(assert (=> bm!726986 m!8255716))

(assert (=> b!7845468 m!8255714))

(assert (=> d!2352765 m!8255716))

(assert (=> d!2352765 m!8255600))

(assert (=> b!7845465 m!8255714))

(assert (=> b!7845465 m!8255714))

(declare-fun m!8255718 () Bool)

(assert (=> b!7845465 m!8255718))

(declare-fun m!8255720 () Bool)

(assert (=> b!7845465 m!8255720))

(assert (=> b!7845465 m!8255718))

(assert (=> b!7845465 m!8255720))

(declare-fun m!8255722 () Bool)

(assert (=> b!7845465 m!8255722))

(assert (=> b!7845467 m!8255602))

(assert (=> b!7845470 m!8255720))

(assert (=> b!7845470 m!8255720))

(declare-fun m!8255724 () Bool)

(assert (=> b!7845470 m!8255724))

(assert (=> b!7845463 m!8255720))

(assert (=> b!7845463 m!8255720))

(assert (=> b!7845463 m!8255724))

(assert (=> b!7845212 d!2352765))

(declare-fun b!7845476 () Bool)

(declare-fun e!4638305 () Bool)

(declare-fun call!726994 () Bool)

(assert (=> b!7845476 (= e!4638305 call!726994)))

(declare-fun bm!726987 () Bool)

(declare-fun call!726993 () Bool)

(assert (=> bm!726987 (= call!726994 call!726993)))

(declare-fun b!7845477 () Bool)

(declare-fun e!4638309 () Bool)

(declare-fun e!4638307 () Bool)

(assert (=> b!7845477 (= e!4638309 e!4638307)))

(declare-fun c!1442122 () Bool)

(assert (=> b!7845477 (= c!1442122 (is-Union!21056 r1!6227))))

(declare-fun b!7845478 () Bool)

(declare-fun res!3120128 () Bool)

(declare-fun e!4638311 () Bool)

(assert (=> b!7845478 (=> res!3120128 e!4638311)))

(assert (=> b!7845478 (= res!3120128 (not (is-Concat!29901 r1!6227)))))

(assert (=> b!7845478 (= e!4638307 e!4638311)))

(declare-fun b!7845479 () Bool)

(declare-fun e!4638308 () Bool)

(assert (=> b!7845479 (= e!4638308 call!726993)))

(declare-fun b!7845481 () Bool)

(declare-fun e!4638306 () Bool)

(assert (=> b!7845481 (= e!4638306 e!4638309)))

(declare-fun c!1442121 () Bool)

(assert (=> b!7845481 (= c!1442121 (is-Star!21056 r1!6227))))

(declare-fun bm!726988 () Bool)

(declare-fun call!726992 () Bool)

(assert (=> bm!726988 (= call!726992 (validRegex!11466 (ite c!1442122 (regOne!42625 r1!6227) (regTwo!42624 r1!6227))))))

(declare-fun d!2352767 () Bool)

(declare-fun res!3120125 () Bool)

(assert (=> d!2352767 (=> res!3120125 e!4638306)))

(assert (=> d!2352767 (= res!3120125 (is-ElementMatch!21056 r1!6227))))

(assert (=> d!2352767 (= (validRegex!11466 r1!6227) e!4638306)))

(declare-fun b!7845480 () Bool)

(declare-fun e!4638310 () Bool)

(assert (=> b!7845480 (= e!4638310 call!726992)))

(declare-fun bm!726989 () Bool)

(assert (=> bm!726989 (= call!726993 (validRegex!11466 (ite c!1442121 (reg!21385 r1!6227) (ite c!1442122 (regTwo!42625 r1!6227) (regOne!42624 r1!6227)))))))

(declare-fun b!7845482 () Bool)

(assert (=> b!7845482 (= e!4638309 e!4638308)))

(declare-fun res!3120124 () Bool)

(assert (=> b!7845482 (= res!3120124 (not (nullable!9332 (reg!21385 r1!6227))))))

(assert (=> b!7845482 (=> (not res!3120124) (not e!4638308))))

(declare-fun b!7845483 () Bool)

(declare-fun res!3120127 () Bool)

(assert (=> b!7845483 (=> (not res!3120127) (not e!4638305))))

(assert (=> b!7845483 (= res!3120127 call!726992)))

(assert (=> b!7845483 (= e!4638307 e!4638305)))

(declare-fun b!7845484 () Bool)

(assert (=> b!7845484 (= e!4638311 e!4638310)))

(declare-fun res!3120126 () Bool)

(assert (=> b!7845484 (=> (not res!3120126) (not e!4638310))))

(assert (=> b!7845484 (= res!3120126 call!726994)))

(assert (= (and d!2352767 (not res!3120125)) b!7845481))

(assert (= (and b!7845481 c!1442121) b!7845482))

(assert (= (and b!7845481 (not c!1442121)) b!7845477))

(assert (= (and b!7845482 res!3120124) b!7845479))

(assert (= (and b!7845477 c!1442122) b!7845483))

(assert (= (and b!7845477 (not c!1442122)) b!7845478))

(assert (= (and b!7845483 res!3120127) b!7845476))

(assert (= (and b!7845478 (not res!3120128)) b!7845484))

(assert (= (and b!7845484 res!3120126) b!7845480))

(assert (= (or b!7845483 b!7845480) bm!726988))

(assert (= (or b!7845476 b!7845484) bm!726987))

(assert (= (or b!7845479 bm!726987) bm!726989))

(declare-fun m!8255726 () Bool)

(assert (=> bm!726988 m!8255726))

(declare-fun m!8255728 () Bool)

(assert (=> bm!726989 m!8255728))

(declare-fun m!8255730 () Bool)

(assert (=> b!7845482 m!8255730))

(assert (=> start!742944 d!2352767))

(declare-fun b!7845510 () Bool)

(declare-fun e!4638321 () Bool)

(declare-fun tp!2322747 () Bool)

(declare-fun tp!2322744 () Bool)

(assert (=> b!7845510 (= e!4638321 (and tp!2322747 tp!2322744))))

(declare-fun b!7845511 () Bool)

(declare-fun tp!2322746 () Bool)

(assert (=> b!7845511 (= e!4638321 tp!2322746)))

(declare-fun b!7845512 () Bool)

(declare-fun tp!2322745 () Bool)

(declare-fun tp!2322743 () Bool)

(assert (=> b!7845512 (= e!4638321 (and tp!2322745 tp!2322743))))

(assert (=> b!7845210 (= tp!2322695 e!4638321)))

(declare-fun b!7845509 () Bool)

(assert (=> b!7845509 (= e!4638321 tp_is_empty!52511)))

(assert (= (and b!7845210 (is-ElementMatch!21056 (regOne!42624 r2!6165))) b!7845509))

(assert (= (and b!7845210 (is-Concat!29901 (regOne!42624 r2!6165))) b!7845510))

(assert (= (and b!7845210 (is-Star!21056 (regOne!42624 r2!6165))) b!7845511))

(assert (= (and b!7845210 (is-Union!21056 (regOne!42624 r2!6165))) b!7845512))

(declare-fun b!7845514 () Bool)

(declare-fun e!4638322 () Bool)

(declare-fun tp!2322752 () Bool)

(declare-fun tp!2322749 () Bool)

(assert (=> b!7845514 (= e!4638322 (and tp!2322752 tp!2322749))))

(declare-fun b!7845515 () Bool)

(declare-fun tp!2322751 () Bool)

(assert (=> b!7845515 (= e!4638322 tp!2322751)))

(declare-fun b!7845516 () Bool)

(declare-fun tp!2322750 () Bool)

(declare-fun tp!2322748 () Bool)

(assert (=> b!7845516 (= e!4638322 (and tp!2322750 tp!2322748))))

(assert (=> b!7845210 (= tp!2322696 e!4638322)))

(declare-fun b!7845513 () Bool)

(assert (=> b!7845513 (= e!4638322 tp_is_empty!52511)))

(assert (= (and b!7845210 (is-ElementMatch!21056 (regTwo!42624 r2!6165))) b!7845513))

(assert (= (and b!7845210 (is-Concat!29901 (regTwo!42624 r2!6165))) b!7845514))

(assert (= (and b!7845210 (is-Star!21056 (regTwo!42624 r2!6165))) b!7845515))

(assert (= (and b!7845210 (is-Union!21056 (regTwo!42624 r2!6165))) b!7845516))

(declare-fun b!7845521 () Bool)

(declare-fun e!4638325 () Bool)

(declare-fun tp!2322755 () Bool)

(assert (=> b!7845521 (= e!4638325 (and tp_is_empty!52511 tp!2322755))))

(assert (=> b!7845204 (= tp!2322694 e!4638325)))

(assert (= (and b!7845204 (is-Cons!73791 (t!388650 s2!3706))) b!7845521))

(declare-fun b!7845523 () Bool)

(declare-fun e!4638326 () Bool)

(declare-fun tp!2322760 () Bool)

(declare-fun tp!2322757 () Bool)

(assert (=> b!7845523 (= e!4638326 (and tp!2322760 tp!2322757))))

(declare-fun b!7845524 () Bool)

(declare-fun tp!2322759 () Bool)

(assert (=> b!7845524 (= e!4638326 tp!2322759)))

(declare-fun b!7845525 () Bool)

(declare-fun tp!2322758 () Bool)

(declare-fun tp!2322756 () Bool)

(assert (=> b!7845525 (= e!4638326 (and tp!2322758 tp!2322756))))

(assert (=> b!7845206 (= tp!2322693 e!4638326)))

(declare-fun b!7845522 () Bool)

(assert (=> b!7845522 (= e!4638326 tp_is_empty!52511)))

(assert (= (and b!7845206 (is-ElementMatch!21056 (regOne!42625 r1!6227))) b!7845522))

(assert (= (and b!7845206 (is-Concat!29901 (regOne!42625 r1!6227))) b!7845523))

(assert (= (and b!7845206 (is-Star!21056 (regOne!42625 r1!6227))) b!7845524))

(assert (= (and b!7845206 (is-Union!21056 (regOne!42625 r1!6227))) b!7845525))

(declare-fun b!7845527 () Bool)

(declare-fun e!4638327 () Bool)

(declare-fun tp!2322765 () Bool)

(declare-fun tp!2322762 () Bool)

(assert (=> b!7845527 (= e!4638327 (and tp!2322765 tp!2322762))))

(declare-fun b!7845528 () Bool)

(declare-fun tp!2322764 () Bool)

(assert (=> b!7845528 (= e!4638327 tp!2322764)))

(declare-fun b!7845529 () Bool)

(declare-fun tp!2322763 () Bool)

(declare-fun tp!2322761 () Bool)

(assert (=> b!7845529 (= e!4638327 (and tp!2322763 tp!2322761))))

(assert (=> b!7845206 (= tp!2322688 e!4638327)))

(declare-fun b!7845526 () Bool)

(assert (=> b!7845526 (= e!4638327 tp_is_empty!52511)))

(assert (= (and b!7845206 (is-ElementMatch!21056 (regTwo!42625 r1!6227))) b!7845526))

(assert (= (and b!7845206 (is-Concat!29901 (regTwo!42625 r1!6227))) b!7845527))

(assert (= (and b!7845206 (is-Star!21056 (regTwo!42625 r1!6227))) b!7845528))

(assert (= (and b!7845206 (is-Union!21056 (regTwo!42625 r1!6227))) b!7845529))

(declare-fun b!7845531 () Bool)

(declare-fun e!4638328 () Bool)

(declare-fun tp!2322770 () Bool)

(declare-fun tp!2322767 () Bool)

(assert (=> b!7845531 (= e!4638328 (and tp!2322770 tp!2322767))))

(declare-fun b!7845532 () Bool)

(declare-fun tp!2322769 () Bool)

(assert (=> b!7845532 (= e!4638328 tp!2322769)))

(declare-fun b!7845533 () Bool)

(declare-fun tp!2322768 () Bool)

(declare-fun tp!2322766 () Bool)

(assert (=> b!7845533 (= e!4638328 (and tp!2322768 tp!2322766))))

(assert (=> b!7845207 (= tp!2322690 e!4638328)))

(declare-fun b!7845530 () Bool)

(assert (=> b!7845530 (= e!4638328 tp_is_empty!52511)))

(assert (= (and b!7845207 (is-ElementMatch!21056 (reg!21385 r1!6227))) b!7845530))

(assert (= (and b!7845207 (is-Concat!29901 (reg!21385 r1!6227))) b!7845531))

(assert (= (and b!7845207 (is-Star!21056 (reg!21385 r1!6227))) b!7845532))

(assert (= (and b!7845207 (is-Union!21056 (reg!21385 r1!6227))) b!7845533))

(declare-fun b!7845534 () Bool)

(declare-fun e!4638330 () Bool)

(declare-fun tp!2322771 () Bool)

(assert (=> b!7845534 (= e!4638330 (and tp_is_empty!52511 tp!2322771))))

(assert (=> b!7845202 (= tp!2322685 e!4638330)))

(assert (= (and b!7845202 (is-Cons!73791 (t!388650 s1!4084))) b!7845534))

(declare-fun b!7845542 () Bool)

(declare-fun e!4638337 () Bool)

(declare-fun tp!2322776 () Bool)

(declare-fun tp!2322773 () Bool)

(assert (=> b!7845542 (= e!4638337 (and tp!2322776 tp!2322773))))

(declare-fun b!7845544 () Bool)

(declare-fun tp!2322775 () Bool)

(assert (=> b!7845544 (= e!4638337 tp!2322775)))

(declare-fun b!7845546 () Bool)

(declare-fun tp!2322774 () Bool)

(declare-fun tp!2322772 () Bool)

(assert (=> b!7845546 (= e!4638337 (and tp!2322774 tp!2322772))))

(assert (=> b!7845201 (= tp!2322692 e!4638337)))

(declare-fun b!7845541 () Bool)

(assert (=> b!7845541 (= e!4638337 tp_is_empty!52511)))

(assert (= (and b!7845201 (is-ElementMatch!21056 (regOne!42624 r1!6227))) b!7845541))

(assert (= (and b!7845201 (is-Concat!29901 (regOne!42624 r1!6227))) b!7845542))

(assert (= (and b!7845201 (is-Star!21056 (regOne!42624 r1!6227))) b!7845544))

(assert (= (and b!7845201 (is-Union!21056 (regOne!42624 r1!6227))) b!7845546))

(declare-fun b!7845554 () Bool)

(declare-fun e!4638338 () Bool)

(declare-fun tp!2322781 () Bool)

(declare-fun tp!2322778 () Bool)

(assert (=> b!7845554 (= e!4638338 (and tp!2322781 tp!2322778))))

(declare-fun b!7845555 () Bool)

(declare-fun tp!2322780 () Bool)

(assert (=> b!7845555 (= e!4638338 tp!2322780)))

(declare-fun b!7845556 () Bool)

(declare-fun tp!2322779 () Bool)

(declare-fun tp!2322777 () Bool)

(assert (=> b!7845556 (= e!4638338 (and tp!2322779 tp!2322777))))

(assert (=> b!7845201 (= tp!2322687 e!4638338)))

(declare-fun b!7845553 () Bool)

(assert (=> b!7845553 (= e!4638338 tp_is_empty!52511)))

(assert (= (and b!7845201 (is-ElementMatch!21056 (regTwo!42624 r1!6227))) b!7845553))

(assert (= (and b!7845201 (is-Concat!29901 (regTwo!42624 r1!6227))) b!7845554))

(assert (= (and b!7845201 (is-Star!21056 (regTwo!42624 r1!6227))) b!7845555))

(assert (= (and b!7845201 (is-Union!21056 (regTwo!42624 r1!6227))) b!7845556))

(declare-fun b!7845558 () Bool)

(declare-fun e!4638339 () Bool)

(declare-fun tp!2322786 () Bool)

(declare-fun tp!2322783 () Bool)

(assert (=> b!7845558 (= e!4638339 (and tp!2322786 tp!2322783))))

(declare-fun b!7845559 () Bool)

(declare-fun tp!2322785 () Bool)

(assert (=> b!7845559 (= e!4638339 tp!2322785)))

(declare-fun b!7845560 () Bool)

(declare-fun tp!2322784 () Bool)

(declare-fun tp!2322782 () Bool)

(assert (=> b!7845560 (= e!4638339 (and tp!2322784 tp!2322782))))

(assert (=> b!7845203 (= tp!2322691 e!4638339)))

(declare-fun b!7845557 () Bool)

(assert (=> b!7845557 (= e!4638339 tp_is_empty!52511)))

(assert (= (and b!7845203 (is-ElementMatch!21056 (reg!21385 r2!6165))) b!7845557))

(assert (= (and b!7845203 (is-Concat!29901 (reg!21385 r2!6165))) b!7845558))

(assert (= (and b!7845203 (is-Star!21056 (reg!21385 r2!6165))) b!7845559))

(assert (= (and b!7845203 (is-Union!21056 (reg!21385 r2!6165))) b!7845560))

(declare-fun b!7845562 () Bool)

(declare-fun e!4638340 () Bool)

(declare-fun tp!2322791 () Bool)

(declare-fun tp!2322788 () Bool)

(assert (=> b!7845562 (= e!4638340 (and tp!2322791 tp!2322788))))

(declare-fun b!7845563 () Bool)

(declare-fun tp!2322790 () Bool)

(assert (=> b!7845563 (= e!4638340 tp!2322790)))

(declare-fun b!7845564 () Bool)

(declare-fun tp!2322789 () Bool)

(declare-fun tp!2322787 () Bool)

(assert (=> b!7845564 (= e!4638340 (and tp!2322789 tp!2322787))))

(assert (=> b!7845198 (= tp!2322689 e!4638340)))

(declare-fun b!7845561 () Bool)

(assert (=> b!7845561 (= e!4638340 tp_is_empty!52511)))

(assert (= (and b!7845198 (is-ElementMatch!21056 (regOne!42625 r2!6165))) b!7845561))

(assert (= (and b!7845198 (is-Concat!29901 (regOne!42625 r2!6165))) b!7845562))

(assert (= (and b!7845198 (is-Star!21056 (regOne!42625 r2!6165))) b!7845563))

(assert (= (and b!7845198 (is-Union!21056 (regOne!42625 r2!6165))) b!7845564))

(declare-fun b!7845566 () Bool)

(declare-fun e!4638341 () Bool)

(declare-fun tp!2322796 () Bool)

(declare-fun tp!2322793 () Bool)

(assert (=> b!7845566 (= e!4638341 (and tp!2322796 tp!2322793))))

(declare-fun b!7845567 () Bool)

(declare-fun tp!2322795 () Bool)

(assert (=> b!7845567 (= e!4638341 tp!2322795)))

(declare-fun b!7845568 () Bool)

(declare-fun tp!2322794 () Bool)

(declare-fun tp!2322792 () Bool)

(assert (=> b!7845568 (= e!4638341 (and tp!2322794 tp!2322792))))

(assert (=> b!7845198 (= tp!2322686 e!4638341)))

(declare-fun b!7845565 () Bool)

(assert (=> b!7845565 (= e!4638341 tp_is_empty!52511)))

(assert (= (and b!7845198 (is-ElementMatch!21056 (regTwo!42625 r2!6165))) b!7845565))

(assert (= (and b!7845198 (is-Concat!29901 (regTwo!42625 r2!6165))) b!7845566))

(assert (= (and b!7845198 (is-Star!21056 (regTwo!42625 r2!6165))) b!7845567))

(assert (= (and b!7845198 (is-Union!21056 (regTwo!42625 r2!6165))) b!7845568))

(push 1)

(assert (not bm!726988))

(assert (not b!7845381))

(assert (not b!7845568))

(assert (not b!7845554))

(assert (not bm!726967))

(assert (not bm!726970))

(assert (not d!2352755))

(assert (not d!2352757))

(assert (not b!7845524))

(assert (not b!7845558))

(assert (not b!7845529))

(assert (not b!7845559))

(assert (not b!7845463))

(assert (not b!7845546))

(assert (not d!2352763))

(assert (not bm!726986))

(assert (not b!7845528))

(assert (not d!2352759))

(assert (not b!7845468))

(assert (not b!7845563))

(assert (not b!7845379))

(assert (not bm!726952))

(assert (not b!7845459))

(assert (not b!7845465))

(assert (not b!7845511))

(assert (not b!7845534))

(assert (not b!7845562))

(assert (not b!7845564))

(assert (not b!7845523))

(assert (not bm!726971))

(assert (not b!7845512))

(assert (not b!7845527))

(assert (not b!7845566))

(assert (not b!7845384))

(assert (not b!7845308))

(assert (not b!7845310))

(assert (not b!7845516))

(assert (not b!7845467))

(assert (not b!7845386))

(assert (not d!2352761))

(assert (not b!7845315))

(assert (not b!7845446))

(assert (not b!7845482))

(assert (not b!7845510))

(assert (not b!7845544))

(assert (not bm!726985))

(assert (not b!7845472))

(assert (not b!7845515))

(assert (not d!2352743))

(assert (not b!7845460))

(assert (not b!7845363))

(assert (not b!7845470))

(assert (not b!7845555))

(assert (not b!7845531))

(assert (not b!7845532))

(assert (not b!7845383))

(assert (not b!7845533))

(assert (not b!7845542))

(assert (not b!7845514))

(assert tp_is_empty!52511)

(assert (not b!7845313))

(assert (not b!7845377))

(assert (not b!7845372))

(assert (not b!7845560))

(assert (not b!7845567))

(assert (not d!2352765))

(assert (not b!7845525))

(assert (not bm!726989))

(assert (not b!7845317))

(assert (not b!7845521))

(assert (not bm!726982))

(assert (not b!7845388))

(assert (not b!7845556))

(assert (not bm!726966))

(assert (not b!7845312))

(assert (not bm!726969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

