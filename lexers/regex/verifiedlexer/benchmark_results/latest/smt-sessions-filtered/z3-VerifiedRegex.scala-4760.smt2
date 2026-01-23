; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245436 () Bool)

(assert start!245436)

(declare-fun res!1063845 () Bool)

(declare-fun e!1594538 () Bool)

(assert (=> start!245436 (=> (not res!1063845) (not e!1594538))))

(declare-datatypes ((C!15148 0))(
  ( (C!15149 (val!9226 Int)) )
))
(declare-datatypes ((Regex!7495 0))(
  ( (ElementMatch!7495 (c!401267 C!15148)) (Concat!12191 (regOne!15502 Regex!7495) (regTwo!15502 Regex!7495)) (EmptyExpr!7495) (Star!7495 (reg!7824 Regex!7495)) (EmptyLang!7495) (Union!7495 (regOne!15503 Regex!7495) (regTwo!15503 Regex!7495)) )
))
(declare-fun r!27340 () Regex!7495)

(declare-fun validRegex!3121 (Regex!7495) Bool)

(assert (=> start!245436 (= res!1063845 (validRegex!3121 r!27340))))

(assert (=> start!245436 e!1594538))

(declare-fun e!1594537 () Bool)

(assert (=> start!245436 e!1594537))

(declare-fun tp_is_empty!12845 () Bool)

(assert (=> start!245436 tp_is_empty!12845))

(declare-fun e!1594539 () Bool)

(assert (=> start!245436 e!1594539))

(declare-fun b!2517162 () Bool)

(declare-fun tp!804550 () Bool)

(declare-fun tp!804554 () Bool)

(assert (=> b!2517162 (= e!1594537 (and tp!804550 tp!804554))))

(declare-fun b!2517163 () Bool)

(declare-fun tp!804553 () Bool)

(assert (=> b!2517163 (= e!1594539 (and tp_is_empty!12845 tp!804553))))

(declare-fun lt!899044 () Regex!7495)

(declare-fun b!2517164 () Bool)

(declare-fun c!14016 () C!15148)

(declare-fun e!1594540 () Bool)

(get-info :version)

(assert (=> b!2517164 (= e!1594540 (and (not ((_ is EmptyExpr!7495) r!27340)) (not ((_ is EmptyLang!7495) r!27340)) ((_ is ElementMatch!7495) r!27340) (not (= c!14016 (c!401267 r!27340))) (not (= lt!899044 EmptyLang!7495))))))

(declare-fun b!2517165 () Bool)

(declare-fun tp!804549 () Bool)

(assert (=> b!2517165 (= e!1594537 tp!804549)))

(declare-fun b!2517166 () Bool)

(declare-fun tp!804551 () Bool)

(declare-fun tp!804552 () Bool)

(assert (=> b!2517166 (= e!1594537 (and tp!804551 tp!804552))))

(declare-fun b!2517167 () Bool)

(assert (=> b!2517167 (= e!1594538 e!1594540)))

(declare-fun res!1063846 () Bool)

(assert (=> b!2517167 (=> (not res!1063846) (not e!1594540))))

(declare-datatypes ((List!29560 0))(
  ( (Nil!29460) (Cons!29460 (h!34880 C!15148) (t!211259 List!29560)) )
))
(declare-fun tl!4068 () List!29560)

(declare-fun nullable!2412 (Regex!7495) Bool)

(declare-fun derivative!190 (Regex!7495 List!29560) Regex!7495)

(assert (=> b!2517167 (= res!1063846 (nullable!2412 (derivative!190 lt!899044 tl!4068)))))

(declare-fun derivativeStep!2064 (Regex!7495 C!15148) Regex!7495)

(assert (=> b!2517167 (= lt!899044 (derivativeStep!2064 r!27340 c!14016))))

(declare-fun b!2517168 () Bool)

(assert (=> b!2517168 (= e!1594537 tp_is_empty!12845)))

(assert (= (and start!245436 res!1063845) b!2517167))

(assert (= (and b!2517167 res!1063846) b!2517164))

(assert (= (and start!245436 ((_ is ElementMatch!7495) r!27340)) b!2517168))

(assert (= (and start!245436 ((_ is Concat!12191) r!27340)) b!2517166))

(assert (= (and start!245436 ((_ is Star!7495) r!27340)) b!2517165))

(assert (= (and start!245436 ((_ is Union!7495) r!27340)) b!2517162))

(assert (= (and start!245436 ((_ is Cons!29460) tl!4068)) b!2517163))

(declare-fun m!2873501 () Bool)

(assert (=> start!245436 m!2873501))

(declare-fun m!2873503 () Bool)

(assert (=> b!2517167 m!2873503))

(assert (=> b!2517167 m!2873503))

(declare-fun m!2873505 () Bool)

(assert (=> b!2517167 m!2873505))

(declare-fun m!2873507 () Bool)

(assert (=> b!2517167 m!2873507))

(check-sat (not b!2517163) (not b!2517166) tp_is_empty!12845 (not b!2517165) (not b!2517167) (not b!2517162) (not start!245436))
(check-sat)
(get-model)

(declare-fun b!2517205 () Bool)

(declare-fun e!1594572 () Bool)

(declare-fun e!1594569 () Bool)

(assert (=> b!2517205 (= e!1594572 e!1594569)))

(declare-fun res!1063868 () Bool)

(assert (=> b!2517205 (= res!1063868 (not (nullable!2412 (reg!7824 r!27340))))))

(assert (=> b!2517205 (=> (not res!1063868) (not e!1594569))))

(declare-fun d!717453 () Bool)

(declare-fun res!1063870 () Bool)

(declare-fun e!1594574 () Bool)

(assert (=> d!717453 (=> res!1063870 e!1594574)))

(assert (=> d!717453 (= res!1063870 ((_ is ElementMatch!7495) r!27340))))

(assert (=> d!717453 (= (validRegex!3121 r!27340) e!1594574)))

(declare-fun b!2517206 () Bool)

(assert (=> b!2517206 (= e!1594574 e!1594572)))

(declare-fun c!401276 () Bool)

(assert (=> b!2517206 (= c!401276 ((_ is Star!7495) r!27340))))

(declare-fun b!2517207 () Bool)

(declare-fun e!1594570 () Bool)

(assert (=> b!2517207 (= e!1594572 e!1594570)))

(declare-fun c!401277 () Bool)

(assert (=> b!2517207 (= c!401277 ((_ is Union!7495) r!27340))))

(declare-fun b!2517208 () Bool)

(declare-fun res!1063867 () Bool)

(declare-fun e!1594575 () Bool)

(assert (=> b!2517208 (=> (not res!1063867) (not e!1594575))))

(declare-fun call!156552 () Bool)

(assert (=> b!2517208 (= res!1063867 call!156552)))

(assert (=> b!2517208 (= e!1594570 e!1594575)))

(declare-fun b!2517209 () Bool)

(declare-fun e!1594571 () Bool)

(assert (=> b!2517209 (= e!1594571 call!156552)))

(declare-fun b!2517210 () Bool)

(declare-fun e!1594573 () Bool)

(assert (=> b!2517210 (= e!1594573 e!1594571)))

(declare-fun res!1063871 () Bool)

(assert (=> b!2517210 (=> (not res!1063871) (not e!1594571))))

(declare-fun call!156550 () Bool)

(assert (=> b!2517210 (= res!1063871 call!156550)))

(declare-fun b!2517211 () Bool)

(declare-fun call!156551 () Bool)

(assert (=> b!2517211 (= e!1594569 call!156551)))

(declare-fun b!2517212 () Bool)

(assert (=> b!2517212 (= e!1594575 call!156550)))

(declare-fun bm!156545 () Bool)

(assert (=> bm!156545 (= call!156550 (validRegex!3121 (ite c!401277 (regTwo!15503 r!27340) (regOne!15502 r!27340))))))

(declare-fun bm!156546 () Bool)

(assert (=> bm!156546 (= call!156552 call!156551)))

(declare-fun b!2517213 () Bool)

(declare-fun res!1063869 () Bool)

(assert (=> b!2517213 (=> res!1063869 e!1594573)))

(assert (=> b!2517213 (= res!1063869 (not ((_ is Concat!12191) r!27340)))))

(assert (=> b!2517213 (= e!1594570 e!1594573)))

(declare-fun bm!156547 () Bool)

(assert (=> bm!156547 (= call!156551 (validRegex!3121 (ite c!401276 (reg!7824 r!27340) (ite c!401277 (regOne!15503 r!27340) (regTwo!15502 r!27340)))))))

(assert (= (and d!717453 (not res!1063870)) b!2517206))

(assert (= (and b!2517206 c!401276) b!2517205))

(assert (= (and b!2517206 (not c!401276)) b!2517207))

(assert (= (and b!2517205 res!1063868) b!2517211))

(assert (= (and b!2517207 c!401277) b!2517208))

(assert (= (and b!2517207 (not c!401277)) b!2517213))

(assert (= (and b!2517208 res!1063867) b!2517212))

(assert (= (and b!2517213 (not res!1063869)) b!2517210))

(assert (= (and b!2517210 res!1063871) b!2517209))

(assert (= (or b!2517208 b!2517209) bm!156546))

(assert (= (or b!2517212 b!2517210) bm!156545))

(assert (= (or b!2517211 bm!156546) bm!156547))

(declare-fun m!2873509 () Bool)

(assert (=> b!2517205 m!2873509))

(declare-fun m!2873511 () Bool)

(assert (=> bm!156545 m!2873511))

(declare-fun m!2873513 () Bool)

(assert (=> bm!156547 m!2873513))

(assert (=> start!245436 d!717453))

(declare-fun d!717457 () Bool)

(declare-fun nullableFct!653 (Regex!7495) Bool)

(assert (=> d!717457 (= (nullable!2412 (derivative!190 lt!899044 tl!4068)) (nullableFct!653 (derivative!190 lt!899044 tl!4068)))))

(declare-fun bs!468912 () Bool)

(assert (= bs!468912 d!717457))

(assert (=> bs!468912 m!2873503))

(declare-fun m!2873521 () Bool)

(assert (=> bs!468912 m!2873521))

(assert (=> b!2517167 d!717457))

(declare-fun d!717461 () Bool)

(declare-fun lt!899049 () Regex!7495)

(assert (=> d!717461 (validRegex!3121 lt!899049)))

(declare-fun e!1594587 () Regex!7495)

(assert (=> d!717461 (= lt!899049 e!1594587)))

(declare-fun c!401284 () Bool)

(assert (=> d!717461 (= c!401284 ((_ is Cons!29460) tl!4068))))

(assert (=> d!717461 (validRegex!3121 lt!899044)))

(assert (=> d!717461 (= (derivative!190 lt!899044 tl!4068) lt!899049)))

(declare-fun b!2517231 () Bool)

(assert (=> b!2517231 (= e!1594587 (derivative!190 (derivativeStep!2064 lt!899044 (h!34880 tl!4068)) (t!211259 tl!4068)))))

(declare-fun b!2517232 () Bool)

(assert (=> b!2517232 (= e!1594587 lt!899044)))

(assert (= (and d!717461 c!401284) b!2517231))

(assert (= (and d!717461 (not c!401284)) b!2517232))

(declare-fun m!2873525 () Bool)

(assert (=> d!717461 m!2873525))

(declare-fun m!2873529 () Bool)

(assert (=> d!717461 m!2873529))

(declare-fun m!2873533 () Bool)

(assert (=> b!2517231 m!2873533))

(assert (=> b!2517231 m!2873533))

(declare-fun m!2873537 () Bool)

(assert (=> b!2517231 m!2873537))

(assert (=> b!2517167 d!717461))

(declare-fun bm!156571 () Bool)

(declare-fun call!156578 () Regex!7495)

(declare-fun c!401311 () Bool)

(assert (=> bm!156571 (= call!156578 (derivativeStep!2064 (ite c!401311 (regOne!15503 r!27340) (regTwo!15502 r!27340)) c!14016))))

(declare-fun b!2517285 () Bool)

(declare-fun e!1594614 () Regex!7495)

(declare-fun e!1594615 () Regex!7495)

(assert (=> b!2517285 (= e!1594614 e!1594615)))

(declare-fun c!401315 () Bool)

(assert (=> b!2517285 (= c!401315 ((_ is Star!7495) r!27340))))

(declare-fun b!2517286 () Bool)

(declare-fun call!156576 () Regex!7495)

(assert (=> b!2517286 (= e!1594614 (Union!7495 call!156578 call!156576))))

(declare-fun bm!156572 () Bool)

(assert (=> bm!156572 (= call!156576 (derivativeStep!2064 (ite c!401311 (regTwo!15503 r!27340) (ite c!401315 (reg!7824 r!27340) (regOne!15502 r!27340))) c!14016))))

(declare-fun b!2517287 () Bool)

(declare-fun call!156579 () Regex!7495)

(assert (=> b!2517287 (= e!1594615 (Concat!12191 call!156579 r!27340))))

(declare-fun b!2517288 () Bool)

(declare-fun e!1594616 () Regex!7495)

(declare-fun e!1594617 () Regex!7495)

(assert (=> b!2517288 (= e!1594616 e!1594617)))

(declare-fun c!401313 () Bool)

(assert (=> b!2517288 (= c!401313 ((_ is ElementMatch!7495) r!27340))))

(declare-fun d!717465 () Bool)

(declare-fun lt!899056 () Regex!7495)

(assert (=> d!717465 (validRegex!3121 lt!899056)))

(assert (=> d!717465 (= lt!899056 e!1594616)))

(declare-fun c!401314 () Bool)

(assert (=> d!717465 (= c!401314 (or ((_ is EmptyExpr!7495) r!27340) ((_ is EmptyLang!7495) r!27340)))))

(assert (=> d!717465 (validRegex!3121 r!27340)))

(assert (=> d!717465 (= (derivativeStep!2064 r!27340 c!14016) lt!899056)))

(declare-fun bm!156573 () Bool)

(declare-fun call!156577 () Regex!7495)

(assert (=> bm!156573 (= call!156577 call!156579)))

(declare-fun b!2517289 () Bool)

(assert (=> b!2517289 (= e!1594616 EmptyLang!7495)))

(declare-fun bm!156574 () Bool)

(assert (=> bm!156574 (= call!156579 call!156576)))

(declare-fun b!2517290 () Bool)

(declare-fun e!1594618 () Regex!7495)

(assert (=> b!2517290 (= e!1594618 (Union!7495 (Concat!12191 call!156577 (regTwo!15502 r!27340)) EmptyLang!7495))))

(declare-fun b!2517291 () Bool)

(assert (=> b!2517291 (= e!1594617 (ite (= c!14016 (c!401267 r!27340)) EmptyExpr!7495 EmptyLang!7495))))

(declare-fun b!2517292 () Bool)

(assert (=> b!2517292 (= e!1594618 (Union!7495 (Concat!12191 call!156577 (regTwo!15502 r!27340)) call!156578))))

(declare-fun b!2517293 () Bool)

(assert (=> b!2517293 (= c!401311 ((_ is Union!7495) r!27340))))

(assert (=> b!2517293 (= e!1594617 e!1594614)))

(declare-fun b!2517294 () Bool)

(declare-fun c!401312 () Bool)

(assert (=> b!2517294 (= c!401312 (nullable!2412 (regOne!15502 r!27340)))))

(assert (=> b!2517294 (= e!1594615 e!1594618)))

(assert (= (and d!717465 c!401314) b!2517289))

(assert (= (and d!717465 (not c!401314)) b!2517288))

(assert (= (and b!2517288 c!401313) b!2517291))

(assert (= (and b!2517288 (not c!401313)) b!2517293))

(assert (= (and b!2517293 c!401311) b!2517286))

(assert (= (and b!2517293 (not c!401311)) b!2517285))

(assert (= (and b!2517285 c!401315) b!2517287))

(assert (= (and b!2517285 (not c!401315)) b!2517294))

(assert (= (and b!2517294 c!401312) b!2517292))

(assert (= (and b!2517294 (not c!401312)) b!2517290))

(assert (= (or b!2517292 b!2517290) bm!156573))

(assert (= (or b!2517287 bm!156573) bm!156574))

(assert (= (or b!2517286 bm!156574) bm!156572))

(assert (= (or b!2517286 b!2517292) bm!156571))

(declare-fun m!2873543 () Bool)

(assert (=> bm!156571 m!2873543))

(declare-fun m!2873549 () Bool)

(assert (=> bm!156572 m!2873549))

(declare-fun m!2873553 () Bool)

(assert (=> d!717465 m!2873553))

(assert (=> d!717465 m!2873501))

(declare-fun m!2873555 () Bool)

(assert (=> b!2517294 m!2873555))

(assert (=> b!2517167 d!717465))

(declare-fun b!2517309 () Bool)

(declare-fun e!1594623 () Bool)

(declare-fun tp!804567 () Bool)

(assert (=> b!2517309 (= e!1594623 (and tp_is_empty!12845 tp!804567))))

(assert (=> b!2517163 (= tp!804553 e!1594623)))

(assert (= (and b!2517163 ((_ is Cons!29460) (t!211259 tl!4068))) b!2517309))

(declare-fun b!2517329 () Bool)

(declare-fun e!1594628 () Bool)

(declare-fun tp!804590 () Bool)

(declare-fun tp!804591 () Bool)

(assert (=> b!2517329 (= e!1594628 (and tp!804590 tp!804591))))

(assert (=> b!2517162 (= tp!804550 e!1594628)))

(declare-fun b!2517330 () Bool)

(declare-fun tp!804588 () Bool)

(assert (=> b!2517330 (= e!1594628 tp!804588)))

(declare-fun b!2517331 () Bool)

(declare-fun tp!804592 () Bool)

(declare-fun tp!804589 () Bool)

(assert (=> b!2517331 (= e!1594628 (and tp!804592 tp!804589))))

(declare-fun b!2517328 () Bool)

(assert (=> b!2517328 (= e!1594628 tp_is_empty!12845)))

(assert (= (and b!2517162 ((_ is ElementMatch!7495) (regOne!15503 r!27340))) b!2517328))

(assert (= (and b!2517162 ((_ is Concat!12191) (regOne!15503 r!27340))) b!2517329))

(assert (= (and b!2517162 ((_ is Star!7495) (regOne!15503 r!27340))) b!2517330))

(assert (= (and b!2517162 ((_ is Union!7495) (regOne!15503 r!27340))) b!2517331))

(declare-fun b!2517337 () Bool)

(declare-fun e!1594631 () Bool)

(declare-fun tp!804597 () Bool)

(declare-fun tp!804598 () Bool)

(assert (=> b!2517337 (= e!1594631 (and tp!804597 tp!804598))))

(assert (=> b!2517162 (= tp!804554 e!1594631)))

(declare-fun b!2517338 () Bool)

(declare-fun tp!804595 () Bool)

(assert (=> b!2517338 (= e!1594631 tp!804595)))

(declare-fun b!2517339 () Bool)

(declare-fun tp!804599 () Bool)

(declare-fun tp!804596 () Bool)

(assert (=> b!2517339 (= e!1594631 (and tp!804599 tp!804596))))

(declare-fun b!2517336 () Bool)

(assert (=> b!2517336 (= e!1594631 tp_is_empty!12845)))

(assert (= (and b!2517162 ((_ is ElementMatch!7495) (regTwo!15503 r!27340))) b!2517336))

(assert (= (and b!2517162 ((_ is Concat!12191) (regTwo!15503 r!27340))) b!2517337))

(assert (= (and b!2517162 ((_ is Star!7495) (regTwo!15503 r!27340))) b!2517338))

(assert (= (and b!2517162 ((_ is Union!7495) (regTwo!15503 r!27340))) b!2517339))

(declare-fun b!2517342 () Bool)

(declare-fun e!1594633 () Bool)

(declare-fun tp!804603 () Bool)

(declare-fun tp!804604 () Bool)

(assert (=> b!2517342 (= e!1594633 (and tp!804603 tp!804604))))

(assert (=> b!2517165 (= tp!804549 e!1594633)))

(declare-fun b!2517343 () Bool)

(declare-fun tp!804601 () Bool)

(assert (=> b!2517343 (= e!1594633 tp!804601)))

(declare-fun b!2517344 () Bool)

(declare-fun tp!804605 () Bool)

(declare-fun tp!804602 () Bool)

(assert (=> b!2517344 (= e!1594633 (and tp!804605 tp!804602))))

(declare-fun b!2517341 () Bool)

(assert (=> b!2517341 (= e!1594633 tp_is_empty!12845)))

(assert (= (and b!2517165 ((_ is ElementMatch!7495) (reg!7824 r!27340))) b!2517341))

(assert (= (and b!2517165 ((_ is Concat!12191) (reg!7824 r!27340))) b!2517342))

(assert (= (and b!2517165 ((_ is Star!7495) (reg!7824 r!27340))) b!2517343))

(assert (= (and b!2517165 ((_ is Union!7495) (reg!7824 r!27340))) b!2517344))

(declare-fun b!2517350 () Bool)

(declare-fun e!1594635 () Bool)

(declare-fun tp!804613 () Bool)

(declare-fun tp!804614 () Bool)

(assert (=> b!2517350 (= e!1594635 (and tp!804613 tp!804614))))

(assert (=> b!2517166 (= tp!804551 e!1594635)))

(declare-fun b!2517351 () Bool)

(declare-fun tp!804611 () Bool)

(assert (=> b!2517351 (= e!1594635 tp!804611)))

(declare-fun b!2517352 () Bool)

(declare-fun tp!804615 () Bool)

(declare-fun tp!804612 () Bool)

(assert (=> b!2517352 (= e!1594635 (and tp!804615 tp!804612))))

(declare-fun b!2517349 () Bool)

(assert (=> b!2517349 (= e!1594635 tp_is_empty!12845)))

(assert (= (and b!2517166 ((_ is ElementMatch!7495) (regOne!15502 r!27340))) b!2517349))

(assert (= (and b!2517166 ((_ is Concat!12191) (regOne!15502 r!27340))) b!2517350))

(assert (= (and b!2517166 ((_ is Star!7495) (regOne!15502 r!27340))) b!2517351))

(assert (= (and b!2517166 ((_ is Union!7495) (regOne!15502 r!27340))) b!2517352))

(declare-fun b!2517358 () Bool)

(declare-fun e!1594637 () Bool)

(declare-fun tp!804623 () Bool)

(declare-fun tp!804624 () Bool)

(assert (=> b!2517358 (= e!1594637 (and tp!804623 tp!804624))))

(assert (=> b!2517166 (= tp!804552 e!1594637)))

(declare-fun b!2517359 () Bool)

(declare-fun tp!804621 () Bool)

(assert (=> b!2517359 (= e!1594637 tp!804621)))

(declare-fun b!2517360 () Bool)

(declare-fun tp!804625 () Bool)

(declare-fun tp!804622 () Bool)

(assert (=> b!2517360 (= e!1594637 (and tp!804625 tp!804622))))

(declare-fun b!2517357 () Bool)

(assert (=> b!2517357 (= e!1594637 tp_is_empty!12845)))

(assert (= (and b!2517166 ((_ is ElementMatch!7495) (regTwo!15502 r!27340))) b!2517357))

(assert (= (and b!2517166 ((_ is Concat!12191) (regTwo!15502 r!27340))) b!2517358))

(assert (= (and b!2517166 ((_ is Star!7495) (regTwo!15502 r!27340))) b!2517359))

(assert (= (and b!2517166 ((_ is Union!7495) (regTwo!15502 r!27340))) b!2517360))

(check-sat (not bm!156545) (not b!2517294) (not d!717457) (not b!2517344) (not bm!156571) (not bm!156547) (not b!2517352) (not b!2517350) (not b!2517330) (not b!2517205) (not b!2517360) (not b!2517331) (not b!2517338) (not b!2517231) (not b!2517329) (not b!2517359) (not b!2517337) (not b!2517309) tp_is_empty!12845 (not bm!156572) (not b!2517342) (not b!2517339) (not d!717461) (not b!2517358) (not d!717465) (not b!2517343) (not b!2517351))
(check-sat)
