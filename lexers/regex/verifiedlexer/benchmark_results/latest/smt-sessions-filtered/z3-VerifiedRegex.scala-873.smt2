; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46416 () Bool)

(assert start!46416)

(declare-fun b!512452 () Bool)

(declare-fun e!306163 () Bool)

(declare-datatypes ((C!3308 0))(
  ( (C!3309 (val!1690 Int)) )
))
(declare-datatypes ((Regex!1193 0))(
  ( (ElementMatch!1193 (c!99581 C!3308)) (Concat!2093 (regOne!2898 Regex!1193) (regTwo!2898 Regex!1193)) (EmptyExpr!1193) (Star!1193 (reg!1522 Regex!1193)) (EmptyLang!1193) (Union!1193 (regOne!2899 Regex!1193) (regTwo!2899 Regex!1193)) )
))
(declare-fun r!24842 () Regex!1193)

(declare-fun d!1636 () C!3308)

(declare-datatypes ((List!4656 0))(
  ( (Nil!4646) (Cons!4646 (h!10043 C!3308) (t!73178 List!4656)) )
))
(declare-fun matchR!431 (Regex!1193 List!4656) Bool)

(assert (=> b!512452 (= e!306163 (matchR!431 r!24842 (Cons!4646 d!1636 Nil!4646)))))

(declare-fun res!217438 () Bool)

(declare-fun e!306164 () Bool)

(assert (=> start!46416 (=> (not res!217438) (not e!306164))))

(get-info :version)

(assert (=> start!46416 (= res!217438 ((_ is ElementMatch!1193) r!24842))))

(assert (=> start!46416 e!306164))

(declare-fun e!306165 () Bool)

(assert (=> start!46416 e!306165))

(declare-fun tp_is_empty!2483 () Bool)

(assert (=> start!46416 tp_is_empty!2483))

(declare-fun b!512453 () Bool)

(assert (=> b!512453 (= e!306165 tp_is_empty!2483)))

(declare-fun b!512454 () Bool)

(assert (=> b!512454 (= e!306164 e!306163)))

(declare-fun res!217441 () Bool)

(assert (=> b!512454 (=> res!217441 e!306163)))

(declare-fun c!13017 () C!3308)

(assert (=> b!512454 (= res!217441 (not (matchR!431 r!24842 (Cons!4646 c!13017 Nil!4646))))))

(declare-fun b!512455 () Bool)

(declare-fun tp!159322 () Bool)

(declare-fun tp!159321 () Bool)

(assert (=> b!512455 (= e!306165 (and tp!159322 tp!159321))))

(declare-fun b!512456 () Bool)

(declare-fun tp!159320 () Bool)

(declare-fun tp!159319 () Bool)

(assert (=> b!512456 (= e!306165 (and tp!159320 tp!159319))))

(declare-fun b!512457 () Bool)

(declare-fun res!217439 () Bool)

(assert (=> b!512457 (=> (not res!217439) (not e!306164))))

(declare-fun validRegex!419 (Regex!1193) Bool)

(assert (=> b!512457 (= res!217439 (validRegex!419 r!24842))))

(declare-fun b!512458 () Bool)

(declare-fun res!217440 () Bool)

(assert (=> b!512458 (=> (not res!217440) (not e!306164))))

(assert (=> b!512458 (= res!217440 (and (= r!24842 (ElementMatch!1193 c!13017)) (not (= c!13017 d!1636))))))

(declare-fun b!512459 () Bool)

(declare-fun tp!159323 () Bool)

(assert (=> b!512459 (= e!306165 tp!159323)))

(assert (= (and start!46416 res!217438) b!512457))

(assert (= (and b!512457 res!217439) b!512458))

(assert (= (and b!512458 res!217440) b!512454))

(assert (= (and b!512454 (not res!217441)) b!512452))

(assert (= (and start!46416 ((_ is ElementMatch!1193) r!24842)) b!512453))

(assert (= (and start!46416 ((_ is Concat!2093) r!24842)) b!512455))

(assert (= (and start!46416 ((_ is Star!1193) r!24842)) b!512459))

(assert (= (and start!46416 ((_ is Union!1193) r!24842)) b!512456))

(declare-fun m!759139 () Bool)

(assert (=> b!512452 m!759139))

(declare-fun m!759141 () Bool)

(assert (=> b!512454 m!759141))

(declare-fun m!759143 () Bool)

(assert (=> b!512457 m!759143))

(check-sat (not b!512452) (not b!512455) (not b!512454) (not b!512457) (not b!512456) tp_is_empty!2483 (not b!512459))
(check-sat)
(get-model)

(declare-fun b!512496 () Bool)

(declare-fun e!306196 () Bool)

(declare-fun e!306197 () Bool)

(assert (=> b!512496 (= e!306196 e!306197)))

(declare-fun res!217462 () Bool)

(assert (=> b!512496 (=> (not res!217462) (not e!306197))))

(declare-fun call!37209 () Bool)

(assert (=> b!512496 (= res!217462 call!37209)))

(declare-fun b!512497 () Bool)

(declare-fun e!306198 () Bool)

(declare-fun call!37210 () Bool)

(assert (=> b!512497 (= e!306198 call!37210)))

(declare-fun b!512498 () Bool)

(declare-fun res!217463 () Bool)

(declare-fun e!306194 () Bool)

(assert (=> b!512498 (=> (not res!217463) (not e!306194))))

(declare-fun call!37208 () Bool)

(assert (=> b!512498 (= res!217463 call!37208)))

(declare-fun e!306200 () Bool)

(assert (=> b!512498 (= e!306200 e!306194)))

(declare-fun bm!37204 () Bool)

(declare-fun c!99591 () Bool)

(assert (=> bm!37204 (= call!37209 (validRegex!419 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))))))

(declare-fun b!512499 () Bool)

(assert (=> b!512499 (= e!306197 call!37208)))

(declare-fun b!512500 () Bool)

(declare-fun res!217465 () Bool)

(assert (=> b!512500 (=> res!217465 e!306196)))

(assert (=> b!512500 (= res!217465 (not ((_ is Concat!2093) r!24842)))))

(assert (=> b!512500 (= e!306200 e!306196)))

(declare-fun b!512501 () Bool)

(assert (=> b!512501 (= e!306194 call!37209)))

(declare-fun b!512502 () Bool)

(declare-fun e!306199 () Bool)

(assert (=> b!512502 (= e!306199 e!306200)))

(assert (=> b!512502 (= c!99591 ((_ is Union!1193) r!24842))))

(declare-fun b!512503 () Bool)

(declare-fun e!306195 () Bool)

(assert (=> b!512503 (= e!306195 e!306199)))

(declare-fun c!99590 () Bool)

(assert (=> b!512503 (= c!99590 ((_ is Star!1193) r!24842))))

(declare-fun d!184090 () Bool)

(declare-fun res!217464 () Bool)

(assert (=> d!184090 (=> res!217464 e!306195)))

(assert (=> d!184090 (= res!217464 ((_ is ElementMatch!1193) r!24842))))

(assert (=> d!184090 (= (validRegex!419 r!24842) e!306195)))

(declare-fun bm!37203 () Bool)

(assert (=> bm!37203 (= call!37208 call!37210)))

(declare-fun b!512504 () Bool)

(assert (=> b!512504 (= e!306199 e!306198)))

(declare-fun res!217466 () Bool)

(declare-fun nullable!324 (Regex!1193) Bool)

(assert (=> b!512504 (= res!217466 (not (nullable!324 (reg!1522 r!24842))))))

(assert (=> b!512504 (=> (not res!217466) (not e!306198))))

(declare-fun bm!37205 () Bool)

(assert (=> bm!37205 (= call!37210 (validRegex!419 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))))))

(assert (= (and d!184090 (not res!217464)) b!512503))

(assert (= (and b!512503 c!99590) b!512504))

(assert (= (and b!512503 (not c!99590)) b!512502))

(assert (= (and b!512504 res!217466) b!512497))

(assert (= (and b!512502 c!99591) b!512498))

(assert (= (and b!512502 (not c!99591)) b!512500))

(assert (= (and b!512498 res!217463) b!512501))

(assert (= (and b!512500 (not res!217465)) b!512496))

(assert (= (and b!512496 res!217462) b!512499))

(assert (= (or b!512501 b!512496) bm!37204))

(assert (= (or b!512498 b!512499) bm!37203))

(assert (= (or b!512497 bm!37203) bm!37205))

(declare-fun m!759145 () Bool)

(assert (=> bm!37204 m!759145))

(declare-fun m!759147 () Bool)

(assert (=> b!512504 m!759147))

(declare-fun m!759149 () Bool)

(assert (=> bm!37205 m!759149))

(assert (=> b!512457 d!184090))

(declare-fun b!512570 () Bool)

(declare-fun e!306238 () Bool)

(assert (=> b!512570 (= e!306238 (nullable!324 r!24842))))

(declare-fun b!512571 () Bool)

(declare-fun derivativeStep!256 (Regex!1193 C!3308) Regex!1193)

(declare-fun head!1163 (List!4656) C!3308)

(declare-fun tail!693 (List!4656) List!4656)

(assert (=> b!512571 (= e!306238 (matchR!431 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646))) (tail!693 (Cons!4646 d!1636 Nil!4646))))))

(declare-fun b!512572 () Bool)

(declare-fun e!306236 () Bool)

(declare-fun e!306239 () Bool)

(assert (=> b!512572 (= e!306236 e!306239)))

(declare-fun res!217510 () Bool)

(assert (=> b!512572 (=> (not res!217510) (not e!306239))))

(declare-fun lt!212239 () Bool)

(assert (=> b!512572 (= res!217510 (not lt!212239))))

(declare-fun bm!37213 () Bool)

(declare-fun call!37218 () Bool)

(declare-fun isEmpty!3575 (List!4656) Bool)

(assert (=> bm!37213 (= call!37218 (isEmpty!3575 (Cons!4646 d!1636 Nil!4646)))))

(declare-fun b!512573 () Bool)

(declare-fun res!217507 () Bool)

(declare-fun e!306237 () Bool)

(assert (=> b!512573 (=> res!217507 e!306237)))

(assert (=> b!512573 (= res!217507 (not (isEmpty!3575 (tail!693 (Cons!4646 d!1636 Nil!4646)))))))

(declare-fun b!512574 () Bool)

(declare-fun res!217504 () Bool)

(declare-fun e!306242 () Bool)

(assert (=> b!512574 (=> (not res!217504) (not e!306242))))

(assert (=> b!512574 (= res!217504 (isEmpty!3575 (tail!693 (Cons!4646 d!1636 Nil!4646))))))

(declare-fun b!512575 () Bool)

(assert (=> b!512575 (= e!306237 (not (= (head!1163 (Cons!4646 d!1636 Nil!4646)) (c!99581 r!24842))))))

(declare-fun b!512576 () Bool)

(declare-fun res!217506 () Bool)

(assert (=> b!512576 (=> res!217506 e!306236)))

(assert (=> b!512576 (= res!217506 (not ((_ is ElementMatch!1193) r!24842)))))

(declare-fun e!306240 () Bool)

(assert (=> b!512576 (= e!306240 e!306236)))

(declare-fun b!512578 () Bool)

(declare-fun res!217505 () Bool)

(assert (=> b!512578 (=> res!217505 e!306236)))

(assert (=> b!512578 (= res!217505 e!306242)))

(declare-fun res!217509 () Bool)

(assert (=> b!512578 (=> (not res!217509) (not e!306242))))

(assert (=> b!512578 (= res!217509 lt!212239)))

(declare-fun b!512579 () Bool)

(declare-fun res!217511 () Bool)

(assert (=> b!512579 (=> (not res!217511) (not e!306242))))

(assert (=> b!512579 (= res!217511 (not call!37218))))

(declare-fun b!512580 () Bool)

(assert (=> b!512580 (= e!306240 (not lt!212239))))

(declare-fun b!512581 () Bool)

(declare-fun e!306241 () Bool)

(assert (=> b!512581 (= e!306241 (= lt!212239 call!37218))))

(declare-fun b!512582 () Bool)

(assert (=> b!512582 (= e!306241 e!306240)))

(declare-fun c!99606 () Bool)

(assert (=> b!512582 (= c!99606 ((_ is EmptyLang!1193) r!24842))))

(declare-fun b!512583 () Bool)

(assert (=> b!512583 (= e!306239 e!306237)))

(declare-fun res!217508 () Bool)

(assert (=> b!512583 (=> res!217508 e!306237)))

(assert (=> b!512583 (= res!217508 call!37218)))

(declare-fun b!512577 () Bool)

(assert (=> b!512577 (= e!306242 (= (head!1163 (Cons!4646 d!1636 Nil!4646)) (c!99581 r!24842)))))

(declare-fun d!184094 () Bool)

(assert (=> d!184094 e!306241))

(declare-fun c!99608 () Bool)

(assert (=> d!184094 (= c!99608 ((_ is EmptyExpr!1193) r!24842))))

(assert (=> d!184094 (= lt!212239 e!306238)))

(declare-fun c!99607 () Bool)

(assert (=> d!184094 (= c!99607 (isEmpty!3575 (Cons!4646 d!1636 Nil!4646)))))

(assert (=> d!184094 (validRegex!419 r!24842)))

(assert (=> d!184094 (= (matchR!431 r!24842 (Cons!4646 d!1636 Nil!4646)) lt!212239)))

(assert (= (and d!184094 c!99607) b!512570))

(assert (= (and d!184094 (not c!99607)) b!512571))

(assert (= (and d!184094 c!99608) b!512581))

(assert (= (and d!184094 (not c!99608)) b!512582))

(assert (= (and b!512582 c!99606) b!512580))

(assert (= (and b!512582 (not c!99606)) b!512576))

(assert (= (and b!512576 (not res!217506)) b!512578))

(assert (= (and b!512578 res!217509) b!512579))

(assert (= (and b!512579 res!217511) b!512574))

(assert (= (and b!512574 res!217504) b!512577))

(assert (= (and b!512578 (not res!217505)) b!512572))

(assert (= (and b!512572 res!217510) b!512583))

(assert (= (and b!512583 (not res!217508)) b!512573))

(assert (= (and b!512573 (not res!217507)) b!512575))

(assert (= (or b!512581 b!512579 b!512583) bm!37213))

(declare-fun m!759157 () Bool)

(assert (=> b!512573 m!759157))

(assert (=> b!512573 m!759157))

(declare-fun m!759159 () Bool)

(assert (=> b!512573 m!759159))

(declare-fun m!759161 () Bool)

(assert (=> b!512570 m!759161))

(declare-fun m!759163 () Bool)

(assert (=> bm!37213 m!759163))

(declare-fun m!759165 () Bool)

(assert (=> b!512571 m!759165))

(assert (=> b!512571 m!759165))

(declare-fun m!759167 () Bool)

(assert (=> b!512571 m!759167))

(assert (=> b!512571 m!759157))

(assert (=> b!512571 m!759167))

(assert (=> b!512571 m!759157))

(declare-fun m!759169 () Bool)

(assert (=> b!512571 m!759169))

(assert (=> b!512577 m!759165))

(assert (=> b!512575 m!759165))

(assert (=> b!512574 m!759157))

(assert (=> b!512574 m!759157))

(assert (=> b!512574 m!759159))

(assert (=> d!184094 m!759163))

(assert (=> d!184094 m!759143))

(assert (=> b!512452 d!184094))

(declare-fun b!512584 () Bool)

(declare-fun e!306245 () Bool)

(assert (=> b!512584 (= e!306245 (nullable!324 r!24842))))

(declare-fun b!512585 () Bool)

(assert (=> b!512585 (= e!306245 (matchR!431 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646))) (tail!693 (Cons!4646 c!13017 Nil!4646))))))

(declare-fun b!512586 () Bool)

(declare-fun e!306243 () Bool)

(declare-fun e!306246 () Bool)

(assert (=> b!512586 (= e!306243 e!306246)))

(declare-fun res!217518 () Bool)

(assert (=> b!512586 (=> (not res!217518) (not e!306246))))

(declare-fun lt!212240 () Bool)

(assert (=> b!512586 (= res!217518 (not lt!212240))))

(declare-fun bm!37214 () Bool)

(declare-fun call!37219 () Bool)

(assert (=> bm!37214 (= call!37219 (isEmpty!3575 (Cons!4646 c!13017 Nil!4646)))))

(declare-fun b!512587 () Bool)

(declare-fun res!217515 () Bool)

(declare-fun e!306244 () Bool)

(assert (=> b!512587 (=> res!217515 e!306244)))

(assert (=> b!512587 (= res!217515 (not (isEmpty!3575 (tail!693 (Cons!4646 c!13017 Nil!4646)))))))

(declare-fun b!512588 () Bool)

(declare-fun res!217512 () Bool)

(declare-fun e!306249 () Bool)

(assert (=> b!512588 (=> (not res!217512) (not e!306249))))

(assert (=> b!512588 (= res!217512 (isEmpty!3575 (tail!693 (Cons!4646 c!13017 Nil!4646))))))

(declare-fun b!512589 () Bool)

(assert (=> b!512589 (= e!306244 (not (= (head!1163 (Cons!4646 c!13017 Nil!4646)) (c!99581 r!24842))))))

(declare-fun b!512590 () Bool)

(declare-fun res!217514 () Bool)

(assert (=> b!512590 (=> res!217514 e!306243)))

(assert (=> b!512590 (= res!217514 (not ((_ is ElementMatch!1193) r!24842)))))

(declare-fun e!306247 () Bool)

(assert (=> b!512590 (= e!306247 e!306243)))

(declare-fun b!512592 () Bool)

(declare-fun res!217513 () Bool)

(assert (=> b!512592 (=> res!217513 e!306243)))

(assert (=> b!512592 (= res!217513 e!306249)))

(declare-fun res!217517 () Bool)

(assert (=> b!512592 (=> (not res!217517) (not e!306249))))

(assert (=> b!512592 (= res!217517 lt!212240)))

(declare-fun b!512593 () Bool)

(declare-fun res!217519 () Bool)

(assert (=> b!512593 (=> (not res!217519) (not e!306249))))

(assert (=> b!512593 (= res!217519 (not call!37219))))

(declare-fun b!512594 () Bool)

(assert (=> b!512594 (= e!306247 (not lt!212240))))

(declare-fun b!512595 () Bool)

(declare-fun e!306248 () Bool)

(assert (=> b!512595 (= e!306248 (= lt!212240 call!37219))))

(declare-fun b!512596 () Bool)

(assert (=> b!512596 (= e!306248 e!306247)))

(declare-fun c!99609 () Bool)

(assert (=> b!512596 (= c!99609 ((_ is EmptyLang!1193) r!24842))))

(declare-fun b!512597 () Bool)

(assert (=> b!512597 (= e!306246 e!306244)))

(declare-fun res!217516 () Bool)

(assert (=> b!512597 (=> res!217516 e!306244)))

(assert (=> b!512597 (= res!217516 call!37219)))

(declare-fun b!512591 () Bool)

(assert (=> b!512591 (= e!306249 (= (head!1163 (Cons!4646 c!13017 Nil!4646)) (c!99581 r!24842)))))

(declare-fun d!184098 () Bool)

(assert (=> d!184098 e!306248))

(declare-fun c!99611 () Bool)

(assert (=> d!184098 (= c!99611 ((_ is EmptyExpr!1193) r!24842))))

(assert (=> d!184098 (= lt!212240 e!306245)))

(declare-fun c!99610 () Bool)

(assert (=> d!184098 (= c!99610 (isEmpty!3575 (Cons!4646 c!13017 Nil!4646)))))

(assert (=> d!184098 (validRegex!419 r!24842)))

(assert (=> d!184098 (= (matchR!431 r!24842 (Cons!4646 c!13017 Nil!4646)) lt!212240)))

(assert (= (and d!184098 c!99610) b!512584))

(assert (= (and d!184098 (not c!99610)) b!512585))

(assert (= (and d!184098 c!99611) b!512595))

(assert (= (and d!184098 (not c!99611)) b!512596))

(assert (= (and b!512596 c!99609) b!512594))

(assert (= (and b!512596 (not c!99609)) b!512590))

(assert (= (and b!512590 (not res!217514)) b!512592))

(assert (= (and b!512592 res!217517) b!512593))

(assert (= (and b!512593 res!217519) b!512588))

(assert (= (and b!512588 res!217512) b!512591))

(assert (= (and b!512592 (not res!217513)) b!512586))

(assert (= (and b!512586 res!217518) b!512597))

(assert (= (and b!512597 (not res!217516)) b!512587))

(assert (= (and b!512587 (not res!217515)) b!512589))

(assert (= (or b!512595 b!512593 b!512597) bm!37214))

(declare-fun m!759171 () Bool)

(assert (=> b!512587 m!759171))

(assert (=> b!512587 m!759171))

(declare-fun m!759173 () Bool)

(assert (=> b!512587 m!759173))

(assert (=> b!512584 m!759161))

(declare-fun m!759175 () Bool)

(assert (=> bm!37214 m!759175))

(declare-fun m!759177 () Bool)

(assert (=> b!512585 m!759177))

(assert (=> b!512585 m!759177))

(declare-fun m!759179 () Bool)

(assert (=> b!512585 m!759179))

(assert (=> b!512585 m!759171))

(assert (=> b!512585 m!759179))

(assert (=> b!512585 m!759171))

(declare-fun m!759181 () Bool)

(assert (=> b!512585 m!759181))

(assert (=> b!512591 m!759177))

(assert (=> b!512589 m!759177))

(assert (=> b!512588 m!759171))

(assert (=> b!512588 m!759171))

(assert (=> b!512588 m!759173))

(assert (=> d!184098 m!759175))

(assert (=> d!184098 m!759143))

(assert (=> b!512454 d!184098))

(declare-fun b!512638 () Bool)

(declare-fun e!306266 () Bool)

(declare-fun tp!159338 () Bool)

(assert (=> b!512638 (= e!306266 tp!159338)))

(assert (=> b!512455 (= tp!159322 e!306266)))

(declare-fun b!512637 () Bool)

(declare-fun tp!159337 () Bool)

(declare-fun tp!159334 () Bool)

(assert (=> b!512637 (= e!306266 (and tp!159337 tp!159334))))

(declare-fun b!512639 () Bool)

(declare-fun tp!159336 () Bool)

(declare-fun tp!159335 () Bool)

(assert (=> b!512639 (= e!306266 (and tp!159336 tp!159335))))

(declare-fun b!512636 () Bool)

(assert (=> b!512636 (= e!306266 tp_is_empty!2483)))

(assert (= (and b!512455 ((_ is ElementMatch!1193) (regOne!2898 r!24842))) b!512636))

(assert (= (and b!512455 ((_ is Concat!2093) (regOne!2898 r!24842))) b!512637))

(assert (= (and b!512455 ((_ is Star!1193) (regOne!2898 r!24842))) b!512638))

(assert (= (and b!512455 ((_ is Union!1193) (regOne!2898 r!24842))) b!512639))

(declare-fun b!512642 () Bool)

(declare-fun e!306267 () Bool)

(declare-fun tp!159343 () Bool)

(assert (=> b!512642 (= e!306267 tp!159343)))

(assert (=> b!512455 (= tp!159321 e!306267)))

(declare-fun b!512641 () Bool)

(declare-fun tp!159342 () Bool)

(declare-fun tp!159339 () Bool)

(assert (=> b!512641 (= e!306267 (and tp!159342 tp!159339))))

(declare-fun b!512643 () Bool)

(declare-fun tp!159341 () Bool)

(declare-fun tp!159340 () Bool)

(assert (=> b!512643 (= e!306267 (and tp!159341 tp!159340))))

(declare-fun b!512640 () Bool)

(assert (=> b!512640 (= e!306267 tp_is_empty!2483)))

(assert (= (and b!512455 ((_ is ElementMatch!1193) (regTwo!2898 r!24842))) b!512640))

(assert (= (and b!512455 ((_ is Concat!2093) (regTwo!2898 r!24842))) b!512641))

(assert (= (and b!512455 ((_ is Star!1193) (regTwo!2898 r!24842))) b!512642))

(assert (= (and b!512455 ((_ is Union!1193) (regTwo!2898 r!24842))) b!512643))

(declare-fun b!512646 () Bool)

(declare-fun e!306268 () Bool)

(declare-fun tp!159348 () Bool)

(assert (=> b!512646 (= e!306268 tp!159348)))

(assert (=> b!512456 (= tp!159320 e!306268)))

(declare-fun b!512645 () Bool)

(declare-fun tp!159347 () Bool)

(declare-fun tp!159344 () Bool)

(assert (=> b!512645 (= e!306268 (and tp!159347 tp!159344))))

(declare-fun b!512647 () Bool)

(declare-fun tp!159346 () Bool)

(declare-fun tp!159345 () Bool)

(assert (=> b!512647 (= e!306268 (and tp!159346 tp!159345))))

(declare-fun b!512644 () Bool)

(assert (=> b!512644 (= e!306268 tp_is_empty!2483)))

(assert (= (and b!512456 ((_ is ElementMatch!1193) (regOne!2899 r!24842))) b!512644))

(assert (= (and b!512456 ((_ is Concat!2093) (regOne!2899 r!24842))) b!512645))

(assert (= (and b!512456 ((_ is Star!1193) (regOne!2899 r!24842))) b!512646))

(assert (= (and b!512456 ((_ is Union!1193) (regOne!2899 r!24842))) b!512647))

(declare-fun b!512656 () Bool)

(declare-fun e!306271 () Bool)

(declare-fun tp!159353 () Bool)

(assert (=> b!512656 (= e!306271 tp!159353)))

(assert (=> b!512456 (= tp!159319 e!306271)))

(declare-fun b!512655 () Bool)

(declare-fun tp!159352 () Bool)

(declare-fun tp!159349 () Bool)

(assert (=> b!512655 (= e!306271 (and tp!159352 tp!159349))))

(declare-fun b!512657 () Bool)

(declare-fun tp!159351 () Bool)

(declare-fun tp!159350 () Bool)

(assert (=> b!512657 (= e!306271 (and tp!159351 tp!159350))))

(declare-fun b!512654 () Bool)

(assert (=> b!512654 (= e!306271 tp_is_empty!2483)))

(assert (= (and b!512456 ((_ is ElementMatch!1193) (regTwo!2899 r!24842))) b!512654))

(assert (= (and b!512456 ((_ is Concat!2093) (regTwo!2899 r!24842))) b!512655))

(assert (= (and b!512456 ((_ is Star!1193) (regTwo!2899 r!24842))) b!512656))

(assert (= (and b!512456 ((_ is Union!1193) (regTwo!2899 r!24842))) b!512657))

(declare-fun b!512662 () Bool)

(declare-fun e!306272 () Bool)

(declare-fun tp!159364 () Bool)

(assert (=> b!512662 (= e!306272 tp!159364)))

(assert (=> b!512459 (= tp!159323 e!306272)))

(declare-fun b!512661 () Bool)

(declare-fun tp!159363 () Bool)

(declare-fun tp!159359 () Bool)

(assert (=> b!512661 (= e!306272 (and tp!159363 tp!159359))))

(declare-fun b!512663 () Bool)

(declare-fun tp!159362 () Bool)

(declare-fun tp!159361 () Bool)

(assert (=> b!512663 (= e!306272 (and tp!159362 tp!159361))))

(declare-fun b!512660 () Bool)

(assert (=> b!512660 (= e!306272 tp_is_empty!2483)))

(assert (= (and b!512459 ((_ is ElementMatch!1193) (reg!1522 r!24842))) b!512660))

(assert (= (and b!512459 ((_ is Concat!2093) (reg!1522 r!24842))) b!512661))

(assert (= (and b!512459 ((_ is Star!1193) (reg!1522 r!24842))) b!512662))

(assert (= (and b!512459 ((_ is Union!1193) (reg!1522 r!24842))) b!512663))

(check-sat (not bm!37205) (not b!512662) (not b!512639) (not b!512571) (not d!184094) (not b!512504) (not bm!37204) (not b!512647) (not b!512637) tp_is_empty!2483 (not bm!37214) (not b!512655) (not b!512643) (not b!512638) (not b!512657) (not b!512641) (not b!512570) (not b!512588) (not b!512656) (not b!512663) (not b!512585) (not b!512587) (not b!512646) (not b!512661) (not b!512577) (not b!512645) (not d!184098) (not b!512574) (not b!512573) (not b!512591) (not b!512575) (not b!512589) (not bm!37213) (not b!512584) (not b!512642))
(check-sat)
(get-model)

(declare-fun d!184102 () Bool)

(assert (=> d!184102 (= (isEmpty!3575 (tail!693 (Cons!4646 d!1636 Nil!4646))) ((_ is Nil!4646) (tail!693 (Cons!4646 d!1636 Nil!4646))))))

(assert (=> b!512574 d!184102))

(declare-fun d!184104 () Bool)

(assert (=> d!184104 (= (tail!693 (Cons!4646 d!1636 Nil!4646)) (t!73178 (Cons!4646 d!1636 Nil!4646)))))

(assert (=> b!512574 d!184104))

(declare-fun d!184106 () Bool)

(assert (=> d!184106 (= (head!1163 (Cons!4646 c!13017 Nil!4646)) (h!10043 (Cons!4646 c!13017 Nil!4646)))))

(assert (=> b!512591 d!184106))

(assert (=> b!512589 d!184106))

(assert (=> b!512573 d!184102))

(assert (=> b!512573 d!184104))

(declare-fun d!184108 () Bool)

(assert (=> d!184108 (= (isEmpty!3575 (Cons!4646 d!1636 Nil!4646)) ((_ is Nil!4646) (Cons!4646 d!1636 Nil!4646)))))

(assert (=> d!184094 d!184108))

(assert (=> d!184094 d!184090))

(declare-fun d!184110 () Bool)

(assert (=> d!184110 (= (head!1163 (Cons!4646 d!1636 Nil!4646)) (h!10043 (Cons!4646 d!1636 Nil!4646)))))

(assert (=> b!512577 d!184110))

(declare-fun d!184112 () Bool)

(declare-fun nullableFct!126 (Regex!1193) Bool)

(assert (=> d!184112 (= (nullable!324 r!24842) (nullableFct!126 r!24842))))

(declare-fun bs!59361 () Bool)

(assert (= bs!59361 d!184112))

(declare-fun m!759209 () Bool)

(assert (=> bs!59361 m!759209))

(assert (=> b!512584 d!184112))

(assert (=> b!512575 d!184110))

(declare-fun b!512686 () Bool)

(declare-fun e!306280 () Bool)

(declare-fun e!306281 () Bool)

(assert (=> b!512686 (= e!306280 e!306281)))

(declare-fun res!217536 () Bool)

(assert (=> b!512686 (=> (not res!217536) (not e!306281))))

(declare-fun call!37223 () Bool)

(assert (=> b!512686 (= res!217536 call!37223)))

(declare-fun b!512687 () Bool)

(declare-fun e!306282 () Bool)

(declare-fun call!37224 () Bool)

(assert (=> b!512687 (= e!306282 call!37224)))

(declare-fun b!512688 () Bool)

(declare-fun res!217537 () Bool)

(declare-fun e!306278 () Bool)

(assert (=> b!512688 (=> (not res!217537) (not e!306278))))

(declare-fun call!37222 () Bool)

(assert (=> b!512688 (= res!217537 call!37222)))

(declare-fun e!306284 () Bool)

(assert (=> b!512688 (= e!306284 e!306278)))

(declare-fun c!99619 () Bool)

(declare-fun bm!37218 () Bool)

(assert (=> bm!37218 (= call!37223 (validRegex!419 (ite c!99619 (regTwo!2899 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))) (regOne!2898 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))))))))

(declare-fun b!512689 () Bool)

(assert (=> b!512689 (= e!306281 call!37222)))

(declare-fun b!512690 () Bool)

(declare-fun res!217539 () Bool)

(assert (=> b!512690 (=> res!217539 e!306280)))

(assert (=> b!512690 (= res!217539 (not ((_ is Concat!2093) (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842))))))))

(assert (=> b!512690 (= e!306284 e!306280)))

(declare-fun b!512691 () Bool)

(assert (=> b!512691 (= e!306278 call!37223)))

(declare-fun b!512692 () Bool)

(declare-fun e!306283 () Bool)

(assert (=> b!512692 (= e!306283 e!306284)))

(assert (=> b!512692 (= c!99619 ((_ is Union!1193) (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))))))

(declare-fun b!512693 () Bool)

(declare-fun e!306279 () Bool)

(assert (=> b!512693 (= e!306279 e!306283)))

(declare-fun c!99618 () Bool)

(assert (=> b!512693 (= c!99618 ((_ is Star!1193) (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))))))

(declare-fun d!184114 () Bool)

(declare-fun res!217538 () Bool)

(assert (=> d!184114 (=> res!217538 e!306279)))

(assert (=> d!184114 (= res!217538 ((_ is ElementMatch!1193) (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))))))

(assert (=> d!184114 (= (validRegex!419 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))) e!306279)))

(declare-fun bm!37217 () Bool)

(assert (=> bm!37217 (= call!37222 call!37224)))

(declare-fun b!512694 () Bool)

(assert (=> b!512694 (= e!306283 e!306282)))

(declare-fun res!217540 () Bool)

(assert (=> b!512694 (= res!217540 (not (nullable!324 (reg!1522 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))))))))

(assert (=> b!512694 (=> (not res!217540) (not e!306282))))

(declare-fun bm!37219 () Bool)

(assert (=> bm!37219 (= call!37224 (validRegex!419 (ite c!99618 (reg!1522 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))) (ite c!99619 (regOne!2899 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842)))) (regTwo!2898 (ite c!99590 (reg!1522 r!24842) (ite c!99591 (regOne!2899 r!24842) (regTwo!2898 r!24842))))))))))

(assert (= (and d!184114 (not res!217538)) b!512693))

(assert (= (and b!512693 c!99618) b!512694))

(assert (= (and b!512693 (not c!99618)) b!512692))

(assert (= (and b!512694 res!217540) b!512687))

(assert (= (and b!512692 c!99619) b!512688))

(assert (= (and b!512692 (not c!99619)) b!512690))

(assert (= (and b!512688 res!217537) b!512691))

(assert (= (and b!512690 (not res!217539)) b!512686))

(assert (= (and b!512686 res!217536) b!512689))

(assert (= (or b!512691 b!512686) bm!37218))

(assert (= (or b!512688 b!512689) bm!37217))

(assert (= (or b!512687 bm!37217) bm!37219))

(declare-fun m!759211 () Bool)

(assert (=> bm!37218 m!759211))

(declare-fun m!759213 () Bool)

(assert (=> b!512694 m!759213))

(declare-fun m!759215 () Bool)

(assert (=> bm!37219 m!759215))

(assert (=> bm!37205 d!184114))

(assert (=> b!512570 d!184112))

(declare-fun d!184116 () Bool)

(assert (=> d!184116 (= (isEmpty!3575 (Cons!4646 c!13017 Nil!4646)) ((_ is Nil!4646) (Cons!4646 c!13017 Nil!4646)))))

(assert (=> d!184098 d!184116))

(assert (=> d!184098 d!184090))

(declare-fun d!184118 () Bool)

(assert (=> d!184118 (= (nullable!324 (reg!1522 r!24842)) (nullableFct!126 (reg!1522 r!24842)))))

(declare-fun bs!59362 () Bool)

(assert (= bs!59362 d!184118))

(declare-fun m!759217 () Bool)

(assert (=> bs!59362 m!759217))

(assert (=> b!512504 d!184118))

(declare-fun b!512695 () Bool)

(declare-fun e!306287 () Bool)

(assert (=> b!512695 (= e!306287 (nullable!324 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646)))))))

(declare-fun b!512696 () Bool)

(assert (=> b!512696 (= e!306287 (matchR!431 (derivativeStep!256 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646))) (head!1163 (tail!693 (Cons!4646 c!13017 Nil!4646)))) (tail!693 (tail!693 (Cons!4646 c!13017 Nil!4646)))))))

(declare-fun b!512697 () Bool)

(declare-fun e!306285 () Bool)

(declare-fun e!306288 () Bool)

(assert (=> b!512697 (= e!306285 e!306288)))

(declare-fun res!217547 () Bool)

(assert (=> b!512697 (=> (not res!217547) (not e!306288))))

(declare-fun lt!212243 () Bool)

(assert (=> b!512697 (= res!217547 (not lt!212243))))

(declare-fun bm!37220 () Bool)

(declare-fun call!37225 () Bool)

(assert (=> bm!37220 (= call!37225 (isEmpty!3575 (tail!693 (Cons!4646 c!13017 Nil!4646))))))

(declare-fun b!512698 () Bool)

(declare-fun res!217544 () Bool)

(declare-fun e!306286 () Bool)

(assert (=> b!512698 (=> res!217544 e!306286)))

(assert (=> b!512698 (= res!217544 (not (isEmpty!3575 (tail!693 (tail!693 (Cons!4646 c!13017 Nil!4646))))))))

(declare-fun b!512699 () Bool)

(declare-fun res!217541 () Bool)

(declare-fun e!306291 () Bool)

(assert (=> b!512699 (=> (not res!217541) (not e!306291))))

(assert (=> b!512699 (= res!217541 (isEmpty!3575 (tail!693 (tail!693 (Cons!4646 c!13017 Nil!4646)))))))

(declare-fun b!512700 () Bool)

(assert (=> b!512700 (= e!306286 (not (= (head!1163 (tail!693 (Cons!4646 c!13017 Nil!4646))) (c!99581 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646)))))))))

(declare-fun b!512701 () Bool)

(declare-fun res!217543 () Bool)

(assert (=> b!512701 (=> res!217543 e!306285)))

(assert (=> b!512701 (= res!217543 (not ((_ is ElementMatch!1193) (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646))))))))

(declare-fun e!306289 () Bool)

(assert (=> b!512701 (= e!306289 e!306285)))

(declare-fun b!512703 () Bool)

(declare-fun res!217542 () Bool)

(assert (=> b!512703 (=> res!217542 e!306285)))

(assert (=> b!512703 (= res!217542 e!306291)))

(declare-fun res!217546 () Bool)

(assert (=> b!512703 (=> (not res!217546) (not e!306291))))

(assert (=> b!512703 (= res!217546 lt!212243)))

(declare-fun b!512704 () Bool)

(declare-fun res!217548 () Bool)

(assert (=> b!512704 (=> (not res!217548) (not e!306291))))

(assert (=> b!512704 (= res!217548 (not call!37225))))

(declare-fun b!512705 () Bool)

(assert (=> b!512705 (= e!306289 (not lt!212243))))

(declare-fun b!512706 () Bool)

(declare-fun e!306290 () Bool)

(assert (=> b!512706 (= e!306290 (= lt!212243 call!37225))))

(declare-fun b!512707 () Bool)

(assert (=> b!512707 (= e!306290 e!306289)))

(declare-fun c!99620 () Bool)

(assert (=> b!512707 (= c!99620 ((_ is EmptyLang!1193) (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646)))))))

(declare-fun b!512708 () Bool)

(assert (=> b!512708 (= e!306288 e!306286)))

(declare-fun res!217545 () Bool)

(assert (=> b!512708 (=> res!217545 e!306286)))

(assert (=> b!512708 (= res!217545 call!37225)))

(declare-fun b!512702 () Bool)

(assert (=> b!512702 (= e!306291 (= (head!1163 (tail!693 (Cons!4646 c!13017 Nil!4646))) (c!99581 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646))))))))

(declare-fun d!184120 () Bool)

(assert (=> d!184120 e!306290))

(declare-fun c!99622 () Bool)

(assert (=> d!184120 (= c!99622 ((_ is EmptyExpr!1193) (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646)))))))

(assert (=> d!184120 (= lt!212243 e!306287)))

(declare-fun c!99621 () Bool)

(assert (=> d!184120 (= c!99621 (isEmpty!3575 (tail!693 (Cons!4646 c!13017 Nil!4646))))))

(assert (=> d!184120 (validRegex!419 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646))))))

(assert (=> d!184120 (= (matchR!431 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646))) (tail!693 (Cons!4646 c!13017 Nil!4646))) lt!212243)))

(assert (= (and d!184120 c!99621) b!512695))

(assert (= (and d!184120 (not c!99621)) b!512696))

(assert (= (and d!184120 c!99622) b!512706))

(assert (= (and d!184120 (not c!99622)) b!512707))

(assert (= (and b!512707 c!99620) b!512705))

(assert (= (and b!512707 (not c!99620)) b!512701))

(assert (= (and b!512701 (not res!217543)) b!512703))

(assert (= (and b!512703 res!217546) b!512704))

(assert (= (and b!512704 res!217548) b!512699))

(assert (= (and b!512699 res!217541) b!512702))

(assert (= (and b!512703 (not res!217542)) b!512697))

(assert (= (and b!512697 res!217547) b!512708))

(assert (= (and b!512708 (not res!217545)) b!512698))

(assert (= (and b!512698 (not res!217544)) b!512700))

(assert (= (or b!512706 b!512704 b!512708) bm!37220))

(assert (=> b!512698 m!759171))

(declare-fun m!759219 () Bool)

(assert (=> b!512698 m!759219))

(assert (=> b!512698 m!759219))

(declare-fun m!759221 () Bool)

(assert (=> b!512698 m!759221))

(assert (=> b!512695 m!759179))

(declare-fun m!759223 () Bool)

(assert (=> b!512695 m!759223))

(assert (=> bm!37220 m!759171))

(assert (=> bm!37220 m!759173))

(assert (=> b!512696 m!759171))

(declare-fun m!759225 () Bool)

(assert (=> b!512696 m!759225))

(assert (=> b!512696 m!759179))

(assert (=> b!512696 m!759225))

(declare-fun m!759227 () Bool)

(assert (=> b!512696 m!759227))

(assert (=> b!512696 m!759171))

(assert (=> b!512696 m!759219))

(assert (=> b!512696 m!759227))

(assert (=> b!512696 m!759219))

(declare-fun m!759229 () Bool)

(assert (=> b!512696 m!759229))

(assert (=> b!512702 m!759171))

(assert (=> b!512702 m!759225))

(assert (=> b!512700 m!759171))

(assert (=> b!512700 m!759225))

(assert (=> b!512699 m!759171))

(assert (=> b!512699 m!759219))

(assert (=> b!512699 m!759219))

(assert (=> b!512699 m!759221))

(assert (=> d!184120 m!759171))

(assert (=> d!184120 m!759173))

(assert (=> d!184120 m!759179))

(declare-fun m!759231 () Bool)

(assert (=> d!184120 m!759231))

(assert (=> b!512585 d!184120))

(declare-fun b!512729 () Bool)

(declare-fun c!99635 () Bool)

(assert (=> b!512729 (= c!99635 ((_ is Union!1193) r!24842))))

(declare-fun e!306306 () Regex!1193)

(declare-fun e!306303 () Regex!1193)

(assert (=> b!512729 (= e!306306 e!306303)))

(declare-fun b!512730 () Bool)

(declare-fun e!306302 () Regex!1193)

(declare-fun call!37237 () Regex!1193)

(assert (=> b!512730 (= e!306302 (Union!1193 (Concat!2093 call!37237 (regTwo!2898 r!24842)) EmptyLang!1193))))

(declare-fun d!184122 () Bool)

(declare-fun lt!212246 () Regex!1193)

(assert (=> d!184122 (validRegex!419 lt!212246)))

(declare-fun e!306305 () Regex!1193)

(assert (=> d!184122 (= lt!212246 e!306305)))

(declare-fun c!99634 () Bool)

(assert (=> d!184122 (= c!99634 (or ((_ is EmptyExpr!1193) r!24842) ((_ is EmptyLang!1193) r!24842)))))

(assert (=> d!184122 (validRegex!419 r!24842)))

(assert (=> d!184122 (= (derivativeStep!256 r!24842 (head!1163 (Cons!4646 c!13017 Nil!4646))) lt!212246)))

(declare-fun b!512731 () Bool)

(declare-fun e!306304 () Regex!1193)

(declare-fun call!37236 () Regex!1193)

(assert (=> b!512731 (= e!306304 (Concat!2093 call!37236 r!24842))))

(declare-fun b!512732 () Bool)

(assert (=> b!512732 (= e!306306 (ite (= (head!1163 (Cons!4646 c!13017 Nil!4646)) (c!99581 r!24842)) EmptyExpr!1193 EmptyLang!1193))))

(declare-fun bm!37229 () Bool)

(assert (=> bm!37229 (= call!37237 call!37236)))

(declare-fun b!512733 () Bool)

(assert (=> b!512733 (= e!306305 e!306306)))

(declare-fun c!99636 () Bool)

(assert (=> b!512733 (= c!99636 ((_ is ElementMatch!1193) r!24842))))

(declare-fun b!512734 () Bool)

(assert (=> b!512734 (= e!306305 EmptyLang!1193)))

(declare-fun call!37235 () Regex!1193)

(declare-fun b!512735 () Bool)

(assert (=> b!512735 (= e!306302 (Union!1193 (Concat!2093 call!37237 (regTwo!2898 r!24842)) call!37235))))

(declare-fun bm!37230 () Bool)

(assert (=> bm!37230 (= call!37235 (derivativeStep!256 (ite c!99635 (regTwo!2899 r!24842) (regTwo!2898 r!24842)) (head!1163 (Cons!4646 c!13017 Nil!4646))))))

(declare-fun b!512736 () Bool)

(declare-fun call!37234 () Regex!1193)

(assert (=> b!512736 (= e!306303 (Union!1193 call!37234 call!37235))))

(declare-fun b!512737 () Bool)

(assert (=> b!512737 (= e!306303 e!306304)))

(declare-fun c!99633 () Bool)

(assert (=> b!512737 (= c!99633 ((_ is Star!1193) r!24842))))

(declare-fun bm!37231 () Bool)

(assert (=> bm!37231 (= call!37236 call!37234)))

(declare-fun b!512738 () Bool)

(declare-fun c!99637 () Bool)

(assert (=> b!512738 (= c!99637 (nullable!324 (regOne!2898 r!24842)))))

(assert (=> b!512738 (= e!306304 e!306302)))

(declare-fun bm!37232 () Bool)

(assert (=> bm!37232 (= call!37234 (derivativeStep!256 (ite c!99635 (regOne!2899 r!24842) (ite c!99633 (reg!1522 r!24842) (regOne!2898 r!24842))) (head!1163 (Cons!4646 c!13017 Nil!4646))))))

(assert (= (and d!184122 c!99634) b!512734))

(assert (= (and d!184122 (not c!99634)) b!512733))

(assert (= (and b!512733 c!99636) b!512732))

(assert (= (and b!512733 (not c!99636)) b!512729))

(assert (= (and b!512729 c!99635) b!512736))

(assert (= (and b!512729 (not c!99635)) b!512737))

(assert (= (and b!512737 c!99633) b!512731))

(assert (= (and b!512737 (not c!99633)) b!512738))

(assert (= (and b!512738 c!99637) b!512735))

(assert (= (and b!512738 (not c!99637)) b!512730))

(assert (= (or b!512735 b!512730) bm!37229))

(assert (= (or b!512731 bm!37229) bm!37231))

(assert (= (or b!512736 bm!37231) bm!37232))

(assert (= (or b!512736 b!512735) bm!37230))

(declare-fun m!759233 () Bool)

(assert (=> d!184122 m!759233))

(assert (=> d!184122 m!759143))

(assert (=> bm!37230 m!759177))

(declare-fun m!759235 () Bool)

(assert (=> bm!37230 m!759235))

(declare-fun m!759237 () Bool)

(assert (=> b!512738 m!759237))

(assert (=> bm!37232 m!759177))

(declare-fun m!759239 () Bool)

(assert (=> bm!37232 m!759239))

(assert (=> b!512585 d!184122))

(assert (=> b!512585 d!184106))

(declare-fun d!184124 () Bool)

(assert (=> d!184124 (= (tail!693 (Cons!4646 c!13017 Nil!4646)) (t!73178 (Cons!4646 c!13017 Nil!4646)))))

(assert (=> b!512585 d!184124))

(declare-fun d!184126 () Bool)

(assert (=> d!184126 (= (isEmpty!3575 (tail!693 (Cons!4646 c!13017 Nil!4646))) ((_ is Nil!4646) (tail!693 (Cons!4646 c!13017 Nil!4646))))))

(assert (=> b!512588 d!184126))

(assert (=> b!512588 d!184124))

(assert (=> bm!37213 d!184108))

(declare-fun b!512739 () Bool)

(declare-fun e!306309 () Bool)

(declare-fun e!306310 () Bool)

(assert (=> b!512739 (= e!306309 e!306310)))

(declare-fun res!217549 () Bool)

(assert (=> b!512739 (=> (not res!217549) (not e!306310))))

(declare-fun call!37239 () Bool)

(assert (=> b!512739 (= res!217549 call!37239)))

(declare-fun b!512740 () Bool)

(declare-fun e!306311 () Bool)

(declare-fun call!37240 () Bool)

(assert (=> b!512740 (= e!306311 call!37240)))

(declare-fun b!512741 () Bool)

(declare-fun res!217550 () Bool)

(declare-fun e!306307 () Bool)

(assert (=> b!512741 (=> (not res!217550) (not e!306307))))

(declare-fun call!37238 () Bool)

(assert (=> b!512741 (= res!217550 call!37238)))

(declare-fun e!306313 () Bool)

(assert (=> b!512741 (= e!306313 e!306307)))

(declare-fun c!99639 () Bool)

(declare-fun bm!37234 () Bool)

(assert (=> bm!37234 (= call!37239 (validRegex!419 (ite c!99639 (regTwo!2899 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))) (regOne!2898 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))))))))

(declare-fun b!512742 () Bool)

(assert (=> b!512742 (= e!306310 call!37238)))

(declare-fun b!512743 () Bool)

(declare-fun res!217552 () Bool)

(assert (=> b!512743 (=> res!217552 e!306309)))

(assert (=> b!512743 (= res!217552 (not ((_ is Concat!2093) (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842)))))))

(assert (=> b!512743 (= e!306313 e!306309)))

(declare-fun b!512744 () Bool)

(assert (=> b!512744 (= e!306307 call!37239)))

(declare-fun b!512745 () Bool)

(declare-fun e!306312 () Bool)

(assert (=> b!512745 (= e!306312 e!306313)))

(assert (=> b!512745 (= c!99639 ((_ is Union!1193) (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))))))

(declare-fun b!512746 () Bool)

(declare-fun e!306308 () Bool)

(assert (=> b!512746 (= e!306308 e!306312)))

(declare-fun c!99638 () Bool)

(assert (=> b!512746 (= c!99638 ((_ is Star!1193) (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))))))

(declare-fun d!184128 () Bool)

(declare-fun res!217551 () Bool)

(assert (=> d!184128 (=> res!217551 e!306308)))

(assert (=> d!184128 (= res!217551 ((_ is ElementMatch!1193) (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))))))

(assert (=> d!184128 (= (validRegex!419 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))) e!306308)))

(declare-fun bm!37233 () Bool)

(assert (=> bm!37233 (= call!37238 call!37240)))

(declare-fun b!512747 () Bool)

(assert (=> b!512747 (= e!306312 e!306311)))

(declare-fun res!217553 () Bool)

(assert (=> b!512747 (= res!217553 (not (nullable!324 (reg!1522 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))))))))

(assert (=> b!512747 (=> (not res!217553) (not e!306311))))

(declare-fun bm!37235 () Bool)

(assert (=> bm!37235 (= call!37240 (validRegex!419 (ite c!99638 (reg!1522 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))) (ite c!99639 (regOne!2899 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842))) (regTwo!2898 (ite c!99591 (regTwo!2899 r!24842) (regOne!2898 r!24842)))))))))

(assert (= (and d!184128 (not res!217551)) b!512746))

(assert (= (and b!512746 c!99638) b!512747))

(assert (= (and b!512746 (not c!99638)) b!512745))

(assert (= (and b!512747 res!217553) b!512740))

(assert (= (and b!512745 c!99639) b!512741))

(assert (= (and b!512745 (not c!99639)) b!512743))

(assert (= (and b!512741 res!217550) b!512744))

(assert (= (and b!512743 (not res!217552)) b!512739))

(assert (= (and b!512739 res!217549) b!512742))

(assert (= (or b!512744 b!512739) bm!37234))

(assert (= (or b!512741 b!512742) bm!37233))

(assert (= (or b!512740 bm!37233) bm!37235))

(declare-fun m!759241 () Bool)

(assert (=> bm!37234 m!759241))

(declare-fun m!759243 () Bool)

(assert (=> b!512747 m!759243))

(declare-fun m!759245 () Bool)

(assert (=> bm!37235 m!759245))

(assert (=> bm!37204 d!184128))

(assert (=> bm!37214 d!184116))

(declare-fun b!512748 () Bool)

(declare-fun e!306316 () Bool)

(assert (=> b!512748 (= e!306316 (nullable!324 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646)))))))

(declare-fun b!512749 () Bool)

(assert (=> b!512749 (= e!306316 (matchR!431 (derivativeStep!256 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646))) (head!1163 (tail!693 (Cons!4646 d!1636 Nil!4646)))) (tail!693 (tail!693 (Cons!4646 d!1636 Nil!4646)))))))

(declare-fun b!512750 () Bool)

(declare-fun e!306314 () Bool)

(declare-fun e!306317 () Bool)

(assert (=> b!512750 (= e!306314 e!306317)))

(declare-fun res!217560 () Bool)

(assert (=> b!512750 (=> (not res!217560) (not e!306317))))

(declare-fun lt!212247 () Bool)

(assert (=> b!512750 (= res!217560 (not lt!212247))))

(declare-fun bm!37236 () Bool)

(declare-fun call!37241 () Bool)

(assert (=> bm!37236 (= call!37241 (isEmpty!3575 (tail!693 (Cons!4646 d!1636 Nil!4646))))))

(declare-fun b!512751 () Bool)

(declare-fun res!217557 () Bool)

(declare-fun e!306315 () Bool)

(assert (=> b!512751 (=> res!217557 e!306315)))

(assert (=> b!512751 (= res!217557 (not (isEmpty!3575 (tail!693 (tail!693 (Cons!4646 d!1636 Nil!4646))))))))

(declare-fun b!512752 () Bool)

(declare-fun res!217554 () Bool)

(declare-fun e!306320 () Bool)

(assert (=> b!512752 (=> (not res!217554) (not e!306320))))

(assert (=> b!512752 (= res!217554 (isEmpty!3575 (tail!693 (tail!693 (Cons!4646 d!1636 Nil!4646)))))))

(declare-fun b!512753 () Bool)

(assert (=> b!512753 (= e!306315 (not (= (head!1163 (tail!693 (Cons!4646 d!1636 Nil!4646))) (c!99581 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646)))))))))

(declare-fun b!512754 () Bool)

(declare-fun res!217556 () Bool)

(assert (=> b!512754 (=> res!217556 e!306314)))

(assert (=> b!512754 (= res!217556 (not ((_ is ElementMatch!1193) (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646))))))))

(declare-fun e!306318 () Bool)

(assert (=> b!512754 (= e!306318 e!306314)))

(declare-fun b!512756 () Bool)

(declare-fun res!217555 () Bool)

(assert (=> b!512756 (=> res!217555 e!306314)))

(assert (=> b!512756 (= res!217555 e!306320)))

(declare-fun res!217559 () Bool)

(assert (=> b!512756 (=> (not res!217559) (not e!306320))))

(assert (=> b!512756 (= res!217559 lt!212247)))

(declare-fun b!512757 () Bool)

(declare-fun res!217561 () Bool)

(assert (=> b!512757 (=> (not res!217561) (not e!306320))))

(assert (=> b!512757 (= res!217561 (not call!37241))))

(declare-fun b!512758 () Bool)

(assert (=> b!512758 (= e!306318 (not lt!212247))))

(declare-fun b!512759 () Bool)

(declare-fun e!306319 () Bool)

(assert (=> b!512759 (= e!306319 (= lt!212247 call!37241))))

(declare-fun b!512760 () Bool)

(assert (=> b!512760 (= e!306319 e!306318)))

(declare-fun c!99640 () Bool)

(assert (=> b!512760 (= c!99640 ((_ is EmptyLang!1193) (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646)))))))

(declare-fun b!512761 () Bool)

(assert (=> b!512761 (= e!306317 e!306315)))

(declare-fun res!217558 () Bool)

(assert (=> b!512761 (=> res!217558 e!306315)))

(assert (=> b!512761 (= res!217558 call!37241)))

(declare-fun b!512755 () Bool)

(assert (=> b!512755 (= e!306320 (= (head!1163 (tail!693 (Cons!4646 d!1636 Nil!4646))) (c!99581 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646))))))))

(declare-fun d!184130 () Bool)

(assert (=> d!184130 e!306319))

(declare-fun c!99642 () Bool)

(assert (=> d!184130 (= c!99642 ((_ is EmptyExpr!1193) (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646)))))))

(assert (=> d!184130 (= lt!212247 e!306316)))

(declare-fun c!99641 () Bool)

(assert (=> d!184130 (= c!99641 (isEmpty!3575 (tail!693 (Cons!4646 d!1636 Nil!4646))))))

(assert (=> d!184130 (validRegex!419 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646))))))

(assert (=> d!184130 (= (matchR!431 (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646))) (tail!693 (Cons!4646 d!1636 Nil!4646))) lt!212247)))

(assert (= (and d!184130 c!99641) b!512748))

(assert (= (and d!184130 (not c!99641)) b!512749))

(assert (= (and d!184130 c!99642) b!512759))

(assert (= (and d!184130 (not c!99642)) b!512760))

(assert (= (and b!512760 c!99640) b!512758))

(assert (= (and b!512760 (not c!99640)) b!512754))

(assert (= (and b!512754 (not res!217556)) b!512756))

(assert (= (and b!512756 res!217559) b!512757))

(assert (= (and b!512757 res!217561) b!512752))

(assert (= (and b!512752 res!217554) b!512755))

(assert (= (and b!512756 (not res!217555)) b!512750))

(assert (= (and b!512750 res!217560) b!512761))

(assert (= (and b!512761 (not res!217558)) b!512751))

(assert (= (and b!512751 (not res!217557)) b!512753))

(assert (= (or b!512759 b!512757 b!512761) bm!37236))

(assert (=> b!512751 m!759157))

(declare-fun m!759247 () Bool)

(assert (=> b!512751 m!759247))

(assert (=> b!512751 m!759247))

(declare-fun m!759249 () Bool)

(assert (=> b!512751 m!759249))

(assert (=> b!512748 m!759167))

(declare-fun m!759251 () Bool)

(assert (=> b!512748 m!759251))

(assert (=> bm!37236 m!759157))

(assert (=> bm!37236 m!759159))

(assert (=> b!512749 m!759157))

(declare-fun m!759253 () Bool)

(assert (=> b!512749 m!759253))

(assert (=> b!512749 m!759167))

(assert (=> b!512749 m!759253))

(declare-fun m!759255 () Bool)

(assert (=> b!512749 m!759255))

(assert (=> b!512749 m!759157))

(assert (=> b!512749 m!759247))

(assert (=> b!512749 m!759255))

(assert (=> b!512749 m!759247))

(declare-fun m!759257 () Bool)

(assert (=> b!512749 m!759257))

(assert (=> b!512755 m!759157))

(assert (=> b!512755 m!759253))

(assert (=> b!512753 m!759157))

(assert (=> b!512753 m!759253))

(assert (=> b!512752 m!759157))

(assert (=> b!512752 m!759247))

(assert (=> b!512752 m!759247))

(assert (=> b!512752 m!759249))

(assert (=> d!184130 m!759157))

(assert (=> d!184130 m!759159))

(assert (=> d!184130 m!759167))

(declare-fun m!759259 () Bool)

(assert (=> d!184130 m!759259))

(assert (=> b!512571 d!184130))

(declare-fun b!512762 () Bool)

(declare-fun c!99645 () Bool)

(assert (=> b!512762 (= c!99645 ((_ is Union!1193) r!24842))))

(declare-fun e!306325 () Regex!1193)

(declare-fun e!306322 () Regex!1193)

(assert (=> b!512762 (= e!306325 e!306322)))

(declare-fun b!512763 () Bool)

(declare-fun e!306321 () Regex!1193)

(declare-fun call!37245 () Regex!1193)

(assert (=> b!512763 (= e!306321 (Union!1193 (Concat!2093 call!37245 (regTwo!2898 r!24842)) EmptyLang!1193))))

(declare-fun d!184132 () Bool)

(declare-fun lt!212248 () Regex!1193)

(assert (=> d!184132 (validRegex!419 lt!212248)))

(declare-fun e!306324 () Regex!1193)

(assert (=> d!184132 (= lt!212248 e!306324)))

(declare-fun c!99644 () Bool)

(assert (=> d!184132 (= c!99644 (or ((_ is EmptyExpr!1193) r!24842) ((_ is EmptyLang!1193) r!24842)))))

(assert (=> d!184132 (validRegex!419 r!24842)))

(assert (=> d!184132 (= (derivativeStep!256 r!24842 (head!1163 (Cons!4646 d!1636 Nil!4646))) lt!212248)))

(declare-fun b!512764 () Bool)

(declare-fun e!306323 () Regex!1193)

(declare-fun call!37244 () Regex!1193)

(assert (=> b!512764 (= e!306323 (Concat!2093 call!37244 r!24842))))

(declare-fun b!512765 () Bool)

(assert (=> b!512765 (= e!306325 (ite (= (head!1163 (Cons!4646 d!1636 Nil!4646)) (c!99581 r!24842)) EmptyExpr!1193 EmptyLang!1193))))

(declare-fun bm!37237 () Bool)

(assert (=> bm!37237 (= call!37245 call!37244)))

(declare-fun b!512766 () Bool)

(assert (=> b!512766 (= e!306324 e!306325)))

(declare-fun c!99646 () Bool)

(assert (=> b!512766 (= c!99646 ((_ is ElementMatch!1193) r!24842))))

(declare-fun b!512767 () Bool)

(assert (=> b!512767 (= e!306324 EmptyLang!1193)))

(declare-fun call!37243 () Regex!1193)

(declare-fun b!512768 () Bool)

(assert (=> b!512768 (= e!306321 (Union!1193 (Concat!2093 call!37245 (regTwo!2898 r!24842)) call!37243))))

(declare-fun bm!37238 () Bool)

(assert (=> bm!37238 (= call!37243 (derivativeStep!256 (ite c!99645 (regTwo!2899 r!24842) (regTwo!2898 r!24842)) (head!1163 (Cons!4646 d!1636 Nil!4646))))))

(declare-fun b!512769 () Bool)

(declare-fun call!37242 () Regex!1193)

(assert (=> b!512769 (= e!306322 (Union!1193 call!37242 call!37243))))

(declare-fun b!512770 () Bool)

(assert (=> b!512770 (= e!306322 e!306323)))

(declare-fun c!99643 () Bool)

(assert (=> b!512770 (= c!99643 ((_ is Star!1193) r!24842))))

(declare-fun bm!37239 () Bool)

(assert (=> bm!37239 (= call!37244 call!37242)))

(declare-fun b!512771 () Bool)

(declare-fun c!99647 () Bool)

(assert (=> b!512771 (= c!99647 (nullable!324 (regOne!2898 r!24842)))))

(assert (=> b!512771 (= e!306323 e!306321)))

(declare-fun bm!37240 () Bool)

(assert (=> bm!37240 (= call!37242 (derivativeStep!256 (ite c!99645 (regOne!2899 r!24842) (ite c!99643 (reg!1522 r!24842) (regOne!2898 r!24842))) (head!1163 (Cons!4646 d!1636 Nil!4646))))))

(assert (= (and d!184132 c!99644) b!512767))

(assert (= (and d!184132 (not c!99644)) b!512766))

(assert (= (and b!512766 c!99646) b!512765))

(assert (= (and b!512766 (not c!99646)) b!512762))

(assert (= (and b!512762 c!99645) b!512769))

(assert (= (and b!512762 (not c!99645)) b!512770))

(assert (= (and b!512770 c!99643) b!512764))

(assert (= (and b!512770 (not c!99643)) b!512771))

(assert (= (and b!512771 c!99647) b!512768))

(assert (= (and b!512771 (not c!99647)) b!512763))

(assert (= (or b!512768 b!512763) bm!37237))

(assert (= (or b!512764 bm!37237) bm!37239))

(assert (= (or b!512769 bm!37239) bm!37240))

(assert (= (or b!512769 b!512768) bm!37238))

(declare-fun m!759261 () Bool)

(assert (=> d!184132 m!759261))

(assert (=> d!184132 m!759143))

(assert (=> bm!37238 m!759165))

(declare-fun m!759263 () Bool)

(assert (=> bm!37238 m!759263))

(assert (=> b!512771 m!759237))

(assert (=> bm!37240 m!759165))

(declare-fun m!759265 () Bool)

(assert (=> bm!37240 m!759265))

(assert (=> b!512571 d!184132))

(assert (=> b!512571 d!184110))

(assert (=> b!512571 d!184104))

(assert (=> b!512587 d!184126))

(assert (=> b!512587 d!184124))

(declare-fun b!512774 () Bool)

(declare-fun e!306326 () Bool)

(declare-fun tp!159398 () Bool)

(assert (=> b!512774 (= e!306326 tp!159398)))

(assert (=> b!512645 (= tp!159347 e!306326)))

(declare-fun b!512773 () Bool)

(declare-fun tp!159397 () Bool)

(declare-fun tp!159394 () Bool)

(assert (=> b!512773 (= e!306326 (and tp!159397 tp!159394))))

(declare-fun b!512775 () Bool)

(declare-fun tp!159396 () Bool)

(declare-fun tp!159395 () Bool)

(assert (=> b!512775 (= e!306326 (and tp!159396 tp!159395))))

(declare-fun b!512772 () Bool)

(assert (=> b!512772 (= e!306326 tp_is_empty!2483)))

(assert (= (and b!512645 ((_ is ElementMatch!1193) (regOne!2898 (regOne!2899 r!24842)))) b!512772))

(assert (= (and b!512645 ((_ is Concat!2093) (regOne!2898 (regOne!2899 r!24842)))) b!512773))

(assert (= (and b!512645 ((_ is Star!1193) (regOne!2898 (regOne!2899 r!24842)))) b!512774))

(assert (= (and b!512645 ((_ is Union!1193) (regOne!2898 (regOne!2899 r!24842)))) b!512775))

(declare-fun b!512778 () Bool)

(declare-fun e!306327 () Bool)

(declare-fun tp!159403 () Bool)

(assert (=> b!512778 (= e!306327 tp!159403)))

(assert (=> b!512645 (= tp!159344 e!306327)))

(declare-fun b!512777 () Bool)

(declare-fun tp!159402 () Bool)

(declare-fun tp!159399 () Bool)

(assert (=> b!512777 (= e!306327 (and tp!159402 tp!159399))))

(declare-fun b!512779 () Bool)

(declare-fun tp!159401 () Bool)

(declare-fun tp!159400 () Bool)

(assert (=> b!512779 (= e!306327 (and tp!159401 tp!159400))))

(declare-fun b!512776 () Bool)

(assert (=> b!512776 (= e!306327 tp_is_empty!2483)))

(assert (= (and b!512645 ((_ is ElementMatch!1193) (regTwo!2898 (regOne!2899 r!24842)))) b!512776))

(assert (= (and b!512645 ((_ is Concat!2093) (regTwo!2898 (regOne!2899 r!24842)))) b!512777))

(assert (= (and b!512645 ((_ is Star!1193) (regTwo!2898 (regOne!2899 r!24842)))) b!512778))

(assert (= (and b!512645 ((_ is Union!1193) (regTwo!2898 (regOne!2899 r!24842)))) b!512779))

(declare-fun b!512782 () Bool)

(declare-fun e!306328 () Bool)

(declare-fun tp!159408 () Bool)

(assert (=> b!512782 (= e!306328 tp!159408)))

(assert (=> b!512637 (= tp!159337 e!306328)))

(declare-fun b!512781 () Bool)

(declare-fun tp!159407 () Bool)

(declare-fun tp!159404 () Bool)

(assert (=> b!512781 (= e!306328 (and tp!159407 tp!159404))))

(declare-fun b!512783 () Bool)

(declare-fun tp!159406 () Bool)

(declare-fun tp!159405 () Bool)

(assert (=> b!512783 (= e!306328 (and tp!159406 tp!159405))))

(declare-fun b!512780 () Bool)

(assert (=> b!512780 (= e!306328 tp_is_empty!2483)))

(assert (= (and b!512637 ((_ is ElementMatch!1193) (regOne!2898 (regOne!2898 r!24842)))) b!512780))

(assert (= (and b!512637 ((_ is Concat!2093) (regOne!2898 (regOne!2898 r!24842)))) b!512781))

(assert (= (and b!512637 ((_ is Star!1193) (regOne!2898 (regOne!2898 r!24842)))) b!512782))

(assert (= (and b!512637 ((_ is Union!1193) (regOne!2898 (regOne!2898 r!24842)))) b!512783))

(declare-fun b!512786 () Bool)

(declare-fun e!306329 () Bool)

(declare-fun tp!159413 () Bool)

(assert (=> b!512786 (= e!306329 tp!159413)))

(assert (=> b!512637 (= tp!159334 e!306329)))

(declare-fun b!512785 () Bool)

(declare-fun tp!159412 () Bool)

(declare-fun tp!159409 () Bool)

(assert (=> b!512785 (= e!306329 (and tp!159412 tp!159409))))

(declare-fun b!512787 () Bool)

(declare-fun tp!159411 () Bool)

(declare-fun tp!159410 () Bool)

(assert (=> b!512787 (= e!306329 (and tp!159411 tp!159410))))

(declare-fun b!512784 () Bool)

(assert (=> b!512784 (= e!306329 tp_is_empty!2483)))

(assert (= (and b!512637 ((_ is ElementMatch!1193) (regTwo!2898 (regOne!2898 r!24842)))) b!512784))

(assert (= (and b!512637 ((_ is Concat!2093) (regTwo!2898 (regOne!2898 r!24842)))) b!512785))

(assert (= (and b!512637 ((_ is Star!1193) (regTwo!2898 (regOne!2898 r!24842)))) b!512786))

(assert (= (and b!512637 ((_ is Union!1193) (regTwo!2898 (regOne!2898 r!24842)))) b!512787))

(declare-fun b!512790 () Bool)

(declare-fun e!306330 () Bool)

(declare-fun tp!159418 () Bool)

(assert (=> b!512790 (= e!306330 tp!159418)))

(assert (=> b!512655 (= tp!159352 e!306330)))

(declare-fun b!512789 () Bool)

(declare-fun tp!159417 () Bool)

(declare-fun tp!159414 () Bool)

(assert (=> b!512789 (= e!306330 (and tp!159417 tp!159414))))

(declare-fun b!512791 () Bool)

(declare-fun tp!159416 () Bool)

(declare-fun tp!159415 () Bool)

(assert (=> b!512791 (= e!306330 (and tp!159416 tp!159415))))

(declare-fun b!512788 () Bool)

(assert (=> b!512788 (= e!306330 tp_is_empty!2483)))

(assert (= (and b!512655 ((_ is ElementMatch!1193) (regOne!2898 (regTwo!2899 r!24842)))) b!512788))

(assert (= (and b!512655 ((_ is Concat!2093) (regOne!2898 (regTwo!2899 r!24842)))) b!512789))

(assert (= (and b!512655 ((_ is Star!1193) (regOne!2898 (regTwo!2899 r!24842)))) b!512790))

(assert (= (and b!512655 ((_ is Union!1193) (regOne!2898 (regTwo!2899 r!24842)))) b!512791))

(declare-fun b!512794 () Bool)

(declare-fun e!306331 () Bool)

(declare-fun tp!159423 () Bool)

(assert (=> b!512794 (= e!306331 tp!159423)))

(assert (=> b!512655 (= tp!159349 e!306331)))

(declare-fun b!512793 () Bool)

(declare-fun tp!159422 () Bool)

(declare-fun tp!159419 () Bool)

(assert (=> b!512793 (= e!306331 (and tp!159422 tp!159419))))

(declare-fun b!512795 () Bool)

(declare-fun tp!159421 () Bool)

(declare-fun tp!159420 () Bool)

(assert (=> b!512795 (= e!306331 (and tp!159421 tp!159420))))

(declare-fun b!512792 () Bool)

(assert (=> b!512792 (= e!306331 tp_is_empty!2483)))

(assert (= (and b!512655 ((_ is ElementMatch!1193) (regTwo!2898 (regTwo!2899 r!24842)))) b!512792))

(assert (= (and b!512655 ((_ is Concat!2093) (regTwo!2898 (regTwo!2899 r!24842)))) b!512793))

(assert (= (and b!512655 ((_ is Star!1193) (regTwo!2898 (regTwo!2899 r!24842)))) b!512794))

(assert (= (and b!512655 ((_ is Union!1193) (regTwo!2898 (regTwo!2899 r!24842)))) b!512795))

(declare-fun b!512798 () Bool)

(declare-fun e!306332 () Bool)

(declare-fun tp!159428 () Bool)

(assert (=> b!512798 (= e!306332 tp!159428)))

(assert (=> b!512662 (= tp!159364 e!306332)))

(declare-fun b!512797 () Bool)

(declare-fun tp!159427 () Bool)

(declare-fun tp!159424 () Bool)

(assert (=> b!512797 (= e!306332 (and tp!159427 tp!159424))))

(declare-fun b!512799 () Bool)

(declare-fun tp!159426 () Bool)

(declare-fun tp!159425 () Bool)

(assert (=> b!512799 (= e!306332 (and tp!159426 tp!159425))))

(declare-fun b!512796 () Bool)

(assert (=> b!512796 (= e!306332 tp_is_empty!2483)))

(assert (= (and b!512662 ((_ is ElementMatch!1193) (reg!1522 (reg!1522 r!24842)))) b!512796))

(assert (= (and b!512662 ((_ is Concat!2093) (reg!1522 (reg!1522 r!24842)))) b!512797))

(assert (= (and b!512662 ((_ is Star!1193) (reg!1522 (reg!1522 r!24842)))) b!512798))

(assert (= (and b!512662 ((_ is Union!1193) (reg!1522 (reg!1522 r!24842)))) b!512799))

(declare-fun b!512802 () Bool)

(declare-fun e!306333 () Bool)

(declare-fun tp!159433 () Bool)

(assert (=> b!512802 (= e!306333 tp!159433)))

(assert (=> b!512663 (= tp!159362 e!306333)))

(declare-fun b!512801 () Bool)

(declare-fun tp!159432 () Bool)

(declare-fun tp!159429 () Bool)

(assert (=> b!512801 (= e!306333 (and tp!159432 tp!159429))))

(declare-fun b!512803 () Bool)

(declare-fun tp!159431 () Bool)

(declare-fun tp!159430 () Bool)

(assert (=> b!512803 (= e!306333 (and tp!159431 tp!159430))))

(declare-fun b!512800 () Bool)

(assert (=> b!512800 (= e!306333 tp_is_empty!2483)))

(assert (= (and b!512663 ((_ is ElementMatch!1193) (regOne!2899 (reg!1522 r!24842)))) b!512800))

(assert (= (and b!512663 ((_ is Concat!2093) (regOne!2899 (reg!1522 r!24842)))) b!512801))

(assert (= (and b!512663 ((_ is Star!1193) (regOne!2899 (reg!1522 r!24842)))) b!512802))

(assert (= (and b!512663 ((_ is Union!1193) (regOne!2899 (reg!1522 r!24842)))) b!512803))

(declare-fun b!512806 () Bool)

(declare-fun e!306334 () Bool)

(declare-fun tp!159438 () Bool)

(assert (=> b!512806 (= e!306334 tp!159438)))

(assert (=> b!512663 (= tp!159361 e!306334)))

(declare-fun b!512805 () Bool)

(declare-fun tp!159437 () Bool)

(declare-fun tp!159434 () Bool)

(assert (=> b!512805 (= e!306334 (and tp!159437 tp!159434))))

(declare-fun b!512807 () Bool)

(declare-fun tp!159436 () Bool)

(declare-fun tp!159435 () Bool)

(assert (=> b!512807 (= e!306334 (and tp!159436 tp!159435))))

(declare-fun b!512804 () Bool)

(assert (=> b!512804 (= e!306334 tp_is_empty!2483)))

(assert (= (and b!512663 ((_ is ElementMatch!1193) (regTwo!2899 (reg!1522 r!24842)))) b!512804))

(assert (= (and b!512663 ((_ is Concat!2093) (regTwo!2899 (reg!1522 r!24842)))) b!512805))

(assert (= (and b!512663 ((_ is Star!1193) (regTwo!2899 (reg!1522 r!24842)))) b!512806))

(assert (= (and b!512663 ((_ is Union!1193) (regTwo!2899 (reg!1522 r!24842)))) b!512807))

(declare-fun b!512810 () Bool)

(declare-fun e!306335 () Bool)

(declare-fun tp!159443 () Bool)

(assert (=> b!512810 (= e!306335 tp!159443)))

(assert (=> b!512656 (= tp!159353 e!306335)))

(declare-fun b!512809 () Bool)

(declare-fun tp!159442 () Bool)

(declare-fun tp!159439 () Bool)

(assert (=> b!512809 (= e!306335 (and tp!159442 tp!159439))))

(declare-fun b!512811 () Bool)

(declare-fun tp!159441 () Bool)

(declare-fun tp!159440 () Bool)

(assert (=> b!512811 (= e!306335 (and tp!159441 tp!159440))))

(declare-fun b!512808 () Bool)

(assert (=> b!512808 (= e!306335 tp_is_empty!2483)))

(assert (= (and b!512656 ((_ is ElementMatch!1193) (reg!1522 (regTwo!2899 r!24842)))) b!512808))

(assert (= (and b!512656 ((_ is Concat!2093) (reg!1522 (regTwo!2899 r!24842)))) b!512809))

(assert (= (and b!512656 ((_ is Star!1193) (reg!1522 (regTwo!2899 r!24842)))) b!512810))

(assert (= (and b!512656 ((_ is Union!1193) (reg!1522 (regTwo!2899 r!24842)))) b!512811))

(declare-fun b!512814 () Bool)

(declare-fun e!306336 () Bool)

(declare-fun tp!159448 () Bool)

(assert (=> b!512814 (= e!306336 tp!159448)))

(assert (=> b!512646 (= tp!159348 e!306336)))

(declare-fun b!512813 () Bool)

(declare-fun tp!159447 () Bool)

(declare-fun tp!159444 () Bool)

(assert (=> b!512813 (= e!306336 (and tp!159447 tp!159444))))

(declare-fun b!512815 () Bool)

(declare-fun tp!159446 () Bool)

(declare-fun tp!159445 () Bool)

(assert (=> b!512815 (= e!306336 (and tp!159446 tp!159445))))

(declare-fun b!512812 () Bool)

(assert (=> b!512812 (= e!306336 tp_is_empty!2483)))

(assert (= (and b!512646 ((_ is ElementMatch!1193) (reg!1522 (regOne!2899 r!24842)))) b!512812))

(assert (= (and b!512646 ((_ is Concat!2093) (reg!1522 (regOne!2899 r!24842)))) b!512813))

(assert (= (and b!512646 ((_ is Star!1193) (reg!1522 (regOne!2899 r!24842)))) b!512814))

(assert (= (and b!512646 ((_ is Union!1193) (reg!1522 (regOne!2899 r!24842)))) b!512815))

(declare-fun b!512818 () Bool)

(declare-fun e!306337 () Bool)

(declare-fun tp!159453 () Bool)

(assert (=> b!512818 (= e!306337 tp!159453)))

(assert (=> b!512638 (= tp!159338 e!306337)))

(declare-fun b!512817 () Bool)

(declare-fun tp!159452 () Bool)

(declare-fun tp!159449 () Bool)

(assert (=> b!512817 (= e!306337 (and tp!159452 tp!159449))))

(declare-fun b!512819 () Bool)

(declare-fun tp!159451 () Bool)

(declare-fun tp!159450 () Bool)

(assert (=> b!512819 (= e!306337 (and tp!159451 tp!159450))))

(declare-fun b!512816 () Bool)

(assert (=> b!512816 (= e!306337 tp_is_empty!2483)))

(assert (= (and b!512638 ((_ is ElementMatch!1193) (reg!1522 (regOne!2898 r!24842)))) b!512816))

(assert (= (and b!512638 ((_ is Concat!2093) (reg!1522 (regOne!2898 r!24842)))) b!512817))

(assert (= (and b!512638 ((_ is Star!1193) (reg!1522 (regOne!2898 r!24842)))) b!512818))

(assert (= (and b!512638 ((_ is Union!1193) (reg!1522 (regOne!2898 r!24842)))) b!512819))

(declare-fun b!512822 () Bool)

(declare-fun e!306338 () Bool)

(declare-fun tp!159458 () Bool)

(assert (=> b!512822 (= e!306338 tp!159458)))

(assert (=> b!512647 (= tp!159346 e!306338)))

(declare-fun b!512821 () Bool)

(declare-fun tp!159457 () Bool)

(declare-fun tp!159454 () Bool)

(assert (=> b!512821 (= e!306338 (and tp!159457 tp!159454))))

(declare-fun b!512823 () Bool)

(declare-fun tp!159456 () Bool)

(declare-fun tp!159455 () Bool)

(assert (=> b!512823 (= e!306338 (and tp!159456 tp!159455))))

(declare-fun b!512820 () Bool)

(assert (=> b!512820 (= e!306338 tp_is_empty!2483)))

(assert (= (and b!512647 ((_ is ElementMatch!1193) (regOne!2899 (regOne!2899 r!24842)))) b!512820))

(assert (= (and b!512647 ((_ is Concat!2093) (regOne!2899 (regOne!2899 r!24842)))) b!512821))

(assert (= (and b!512647 ((_ is Star!1193) (regOne!2899 (regOne!2899 r!24842)))) b!512822))

(assert (= (and b!512647 ((_ is Union!1193) (regOne!2899 (regOne!2899 r!24842)))) b!512823))

(declare-fun b!512826 () Bool)

(declare-fun e!306339 () Bool)

(declare-fun tp!159463 () Bool)

(assert (=> b!512826 (= e!306339 tp!159463)))

(assert (=> b!512647 (= tp!159345 e!306339)))

(declare-fun b!512825 () Bool)

(declare-fun tp!159462 () Bool)

(declare-fun tp!159459 () Bool)

(assert (=> b!512825 (= e!306339 (and tp!159462 tp!159459))))

(declare-fun b!512827 () Bool)

(declare-fun tp!159461 () Bool)

(declare-fun tp!159460 () Bool)

(assert (=> b!512827 (= e!306339 (and tp!159461 tp!159460))))

(declare-fun b!512824 () Bool)

(assert (=> b!512824 (= e!306339 tp_is_empty!2483)))

(assert (= (and b!512647 ((_ is ElementMatch!1193) (regTwo!2899 (regOne!2899 r!24842)))) b!512824))

(assert (= (and b!512647 ((_ is Concat!2093) (regTwo!2899 (regOne!2899 r!24842)))) b!512825))

(assert (= (and b!512647 ((_ is Star!1193) (regTwo!2899 (regOne!2899 r!24842)))) b!512826))

(assert (= (and b!512647 ((_ is Union!1193) (regTwo!2899 (regOne!2899 r!24842)))) b!512827))

(declare-fun b!512830 () Bool)

(declare-fun e!306340 () Bool)

(declare-fun tp!159468 () Bool)

(assert (=> b!512830 (= e!306340 tp!159468)))

(assert (=> b!512639 (= tp!159336 e!306340)))

(declare-fun b!512829 () Bool)

(declare-fun tp!159467 () Bool)

(declare-fun tp!159464 () Bool)

(assert (=> b!512829 (= e!306340 (and tp!159467 tp!159464))))

(declare-fun b!512831 () Bool)

(declare-fun tp!159466 () Bool)

(declare-fun tp!159465 () Bool)

(assert (=> b!512831 (= e!306340 (and tp!159466 tp!159465))))

(declare-fun b!512828 () Bool)

(assert (=> b!512828 (= e!306340 tp_is_empty!2483)))

(assert (= (and b!512639 ((_ is ElementMatch!1193) (regOne!2899 (regOne!2898 r!24842)))) b!512828))

(assert (= (and b!512639 ((_ is Concat!2093) (regOne!2899 (regOne!2898 r!24842)))) b!512829))

(assert (= (and b!512639 ((_ is Star!1193) (regOne!2899 (regOne!2898 r!24842)))) b!512830))

(assert (= (and b!512639 ((_ is Union!1193) (regOne!2899 (regOne!2898 r!24842)))) b!512831))

(declare-fun b!512834 () Bool)

(declare-fun e!306341 () Bool)

(declare-fun tp!159473 () Bool)

(assert (=> b!512834 (= e!306341 tp!159473)))

(assert (=> b!512639 (= tp!159335 e!306341)))

(declare-fun b!512833 () Bool)

(declare-fun tp!159472 () Bool)

(declare-fun tp!159469 () Bool)

(assert (=> b!512833 (= e!306341 (and tp!159472 tp!159469))))

(declare-fun b!512835 () Bool)

(declare-fun tp!159471 () Bool)

(declare-fun tp!159470 () Bool)

(assert (=> b!512835 (= e!306341 (and tp!159471 tp!159470))))

(declare-fun b!512832 () Bool)

(assert (=> b!512832 (= e!306341 tp_is_empty!2483)))

(assert (= (and b!512639 ((_ is ElementMatch!1193) (regTwo!2899 (regOne!2898 r!24842)))) b!512832))

(assert (= (and b!512639 ((_ is Concat!2093) (regTwo!2899 (regOne!2898 r!24842)))) b!512833))

(assert (= (and b!512639 ((_ is Star!1193) (regTwo!2899 (regOne!2898 r!24842)))) b!512834))

(assert (= (and b!512639 ((_ is Union!1193) (regTwo!2899 (regOne!2898 r!24842)))) b!512835))

(declare-fun b!512838 () Bool)

(declare-fun e!306342 () Bool)

(declare-fun tp!159478 () Bool)

(assert (=> b!512838 (= e!306342 tp!159478)))

(assert (=> b!512641 (= tp!159342 e!306342)))

(declare-fun b!512837 () Bool)

(declare-fun tp!159477 () Bool)

(declare-fun tp!159474 () Bool)

(assert (=> b!512837 (= e!306342 (and tp!159477 tp!159474))))

(declare-fun b!512839 () Bool)

(declare-fun tp!159476 () Bool)

(declare-fun tp!159475 () Bool)

(assert (=> b!512839 (= e!306342 (and tp!159476 tp!159475))))

(declare-fun b!512836 () Bool)

(assert (=> b!512836 (= e!306342 tp_is_empty!2483)))

(assert (= (and b!512641 ((_ is ElementMatch!1193) (regOne!2898 (regTwo!2898 r!24842)))) b!512836))

(assert (= (and b!512641 ((_ is Concat!2093) (regOne!2898 (regTwo!2898 r!24842)))) b!512837))

(assert (= (and b!512641 ((_ is Star!1193) (regOne!2898 (regTwo!2898 r!24842)))) b!512838))

(assert (= (and b!512641 ((_ is Union!1193) (regOne!2898 (regTwo!2898 r!24842)))) b!512839))

(declare-fun b!512842 () Bool)

(declare-fun e!306343 () Bool)

(declare-fun tp!159483 () Bool)

(assert (=> b!512842 (= e!306343 tp!159483)))

(assert (=> b!512641 (= tp!159339 e!306343)))

(declare-fun b!512841 () Bool)

(declare-fun tp!159482 () Bool)

(declare-fun tp!159479 () Bool)

(assert (=> b!512841 (= e!306343 (and tp!159482 tp!159479))))

(declare-fun b!512843 () Bool)

(declare-fun tp!159481 () Bool)

(declare-fun tp!159480 () Bool)

(assert (=> b!512843 (= e!306343 (and tp!159481 tp!159480))))

(declare-fun b!512840 () Bool)

(assert (=> b!512840 (= e!306343 tp_is_empty!2483)))

(assert (= (and b!512641 ((_ is ElementMatch!1193) (regTwo!2898 (regTwo!2898 r!24842)))) b!512840))

(assert (= (and b!512641 ((_ is Concat!2093) (regTwo!2898 (regTwo!2898 r!24842)))) b!512841))

(assert (= (and b!512641 ((_ is Star!1193) (regTwo!2898 (regTwo!2898 r!24842)))) b!512842))

(assert (= (and b!512641 ((_ is Union!1193) (regTwo!2898 (regTwo!2898 r!24842)))) b!512843))

(declare-fun b!512846 () Bool)

(declare-fun e!306344 () Bool)

(declare-fun tp!159488 () Bool)

(assert (=> b!512846 (= e!306344 tp!159488)))

(assert (=> b!512657 (= tp!159351 e!306344)))

(declare-fun b!512845 () Bool)

(declare-fun tp!159487 () Bool)

(declare-fun tp!159484 () Bool)

(assert (=> b!512845 (= e!306344 (and tp!159487 tp!159484))))

(declare-fun b!512847 () Bool)

(declare-fun tp!159486 () Bool)

(declare-fun tp!159485 () Bool)

(assert (=> b!512847 (= e!306344 (and tp!159486 tp!159485))))

(declare-fun b!512844 () Bool)

(assert (=> b!512844 (= e!306344 tp_is_empty!2483)))

(assert (= (and b!512657 ((_ is ElementMatch!1193) (regOne!2899 (regTwo!2899 r!24842)))) b!512844))

(assert (= (and b!512657 ((_ is Concat!2093) (regOne!2899 (regTwo!2899 r!24842)))) b!512845))

(assert (= (and b!512657 ((_ is Star!1193) (regOne!2899 (regTwo!2899 r!24842)))) b!512846))

(assert (= (and b!512657 ((_ is Union!1193) (regOne!2899 (regTwo!2899 r!24842)))) b!512847))

(declare-fun b!512850 () Bool)

(declare-fun e!306345 () Bool)

(declare-fun tp!159493 () Bool)

(assert (=> b!512850 (= e!306345 tp!159493)))

(assert (=> b!512657 (= tp!159350 e!306345)))

(declare-fun b!512849 () Bool)

(declare-fun tp!159492 () Bool)

(declare-fun tp!159489 () Bool)

(assert (=> b!512849 (= e!306345 (and tp!159492 tp!159489))))

(declare-fun b!512851 () Bool)

(declare-fun tp!159491 () Bool)

(declare-fun tp!159490 () Bool)

(assert (=> b!512851 (= e!306345 (and tp!159491 tp!159490))))

(declare-fun b!512848 () Bool)

(assert (=> b!512848 (= e!306345 tp_is_empty!2483)))

(assert (= (and b!512657 ((_ is ElementMatch!1193) (regTwo!2899 (regTwo!2899 r!24842)))) b!512848))

(assert (= (and b!512657 ((_ is Concat!2093) (regTwo!2899 (regTwo!2899 r!24842)))) b!512849))

(assert (= (and b!512657 ((_ is Star!1193) (regTwo!2899 (regTwo!2899 r!24842)))) b!512850))

(assert (= (and b!512657 ((_ is Union!1193) (regTwo!2899 (regTwo!2899 r!24842)))) b!512851))

(declare-fun b!512854 () Bool)

(declare-fun e!306346 () Bool)

(declare-fun tp!159498 () Bool)

(assert (=> b!512854 (= e!306346 tp!159498)))

(assert (=> b!512661 (= tp!159363 e!306346)))

(declare-fun b!512853 () Bool)

(declare-fun tp!159497 () Bool)

(declare-fun tp!159494 () Bool)

(assert (=> b!512853 (= e!306346 (and tp!159497 tp!159494))))

(declare-fun b!512855 () Bool)

(declare-fun tp!159496 () Bool)

(declare-fun tp!159495 () Bool)

(assert (=> b!512855 (= e!306346 (and tp!159496 tp!159495))))

(declare-fun b!512852 () Bool)

(assert (=> b!512852 (= e!306346 tp_is_empty!2483)))

(assert (= (and b!512661 ((_ is ElementMatch!1193) (regOne!2898 (reg!1522 r!24842)))) b!512852))

(assert (= (and b!512661 ((_ is Concat!2093) (regOne!2898 (reg!1522 r!24842)))) b!512853))

(assert (= (and b!512661 ((_ is Star!1193) (regOne!2898 (reg!1522 r!24842)))) b!512854))

(assert (= (and b!512661 ((_ is Union!1193) (regOne!2898 (reg!1522 r!24842)))) b!512855))

(declare-fun b!512872 () Bool)

(declare-fun e!306354 () Bool)

(declare-fun tp!159503 () Bool)

(assert (=> b!512872 (= e!306354 tp!159503)))

(assert (=> b!512661 (= tp!159359 e!306354)))

(declare-fun b!512871 () Bool)

(declare-fun tp!159502 () Bool)

(declare-fun tp!159499 () Bool)

(assert (=> b!512871 (= e!306354 (and tp!159502 tp!159499))))

(declare-fun b!512873 () Bool)

(declare-fun tp!159501 () Bool)

(declare-fun tp!159500 () Bool)

(assert (=> b!512873 (= e!306354 (and tp!159501 tp!159500))))

(declare-fun b!512870 () Bool)

(assert (=> b!512870 (= e!306354 tp_is_empty!2483)))

(assert (= (and b!512661 ((_ is ElementMatch!1193) (regTwo!2898 (reg!1522 r!24842)))) b!512870))

(assert (= (and b!512661 ((_ is Concat!2093) (regTwo!2898 (reg!1522 r!24842)))) b!512871))

(assert (= (and b!512661 ((_ is Star!1193) (regTwo!2898 (reg!1522 r!24842)))) b!512872))

(assert (= (and b!512661 ((_ is Union!1193) (regTwo!2898 (reg!1522 r!24842)))) b!512873))

(declare-fun b!512876 () Bool)

(declare-fun e!306355 () Bool)

(declare-fun tp!159508 () Bool)

(assert (=> b!512876 (= e!306355 tp!159508)))

(assert (=> b!512642 (= tp!159343 e!306355)))

(declare-fun b!512875 () Bool)

(declare-fun tp!159507 () Bool)

(declare-fun tp!159504 () Bool)

(assert (=> b!512875 (= e!306355 (and tp!159507 tp!159504))))

(declare-fun b!512877 () Bool)

(declare-fun tp!159506 () Bool)

(declare-fun tp!159505 () Bool)

(assert (=> b!512877 (= e!306355 (and tp!159506 tp!159505))))

(declare-fun b!512874 () Bool)

(assert (=> b!512874 (= e!306355 tp_is_empty!2483)))

(assert (= (and b!512642 ((_ is ElementMatch!1193) (reg!1522 (regTwo!2898 r!24842)))) b!512874))

(assert (= (and b!512642 ((_ is Concat!2093) (reg!1522 (regTwo!2898 r!24842)))) b!512875))

(assert (= (and b!512642 ((_ is Star!1193) (reg!1522 (regTwo!2898 r!24842)))) b!512876))

(assert (= (and b!512642 ((_ is Union!1193) (reg!1522 (regTwo!2898 r!24842)))) b!512877))

(declare-fun b!512880 () Bool)

(declare-fun e!306356 () Bool)

(declare-fun tp!159513 () Bool)

(assert (=> b!512880 (= e!306356 tp!159513)))

(assert (=> b!512643 (= tp!159341 e!306356)))

(declare-fun b!512879 () Bool)

(declare-fun tp!159512 () Bool)

(declare-fun tp!159509 () Bool)

(assert (=> b!512879 (= e!306356 (and tp!159512 tp!159509))))

(declare-fun b!512881 () Bool)

(declare-fun tp!159511 () Bool)

(declare-fun tp!159510 () Bool)

(assert (=> b!512881 (= e!306356 (and tp!159511 tp!159510))))

(declare-fun b!512878 () Bool)

(assert (=> b!512878 (= e!306356 tp_is_empty!2483)))

(assert (= (and b!512643 ((_ is ElementMatch!1193) (regOne!2899 (regTwo!2898 r!24842)))) b!512878))

(assert (= (and b!512643 ((_ is Concat!2093) (regOne!2899 (regTwo!2898 r!24842)))) b!512879))

(assert (= (and b!512643 ((_ is Star!1193) (regOne!2899 (regTwo!2898 r!24842)))) b!512880))

(assert (= (and b!512643 ((_ is Union!1193) (regOne!2899 (regTwo!2898 r!24842)))) b!512881))

(declare-fun b!512884 () Bool)

(declare-fun e!306357 () Bool)

(declare-fun tp!159518 () Bool)

(assert (=> b!512884 (= e!306357 tp!159518)))

(assert (=> b!512643 (= tp!159340 e!306357)))

(declare-fun b!512883 () Bool)

(declare-fun tp!159517 () Bool)

(declare-fun tp!159514 () Bool)

(assert (=> b!512883 (= e!306357 (and tp!159517 tp!159514))))

(declare-fun b!512885 () Bool)

(declare-fun tp!159516 () Bool)

(declare-fun tp!159515 () Bool)

(assert (=> b!512885 (= e!306357 (and tp!159516 tp!159515))))

(declare-fun b!512882 () Bool)

(assert (=> b!512882 (= e!306357 tp_is_empty!2483)))

(assert (= (and b!512643 ((_ is ElementMatch!1193) (regTwo!2899 (regTwo!2898 r!24842)))) b!512882))

(assert (= (and b!512643 ((_ is Concat!2093) (regTwo!2899 (regTwo!2898 r!24842)))) b!512883))

(assert (= (and b!512643 ((_ is Star!1193) (regTwo!2899 (regTwo!2898 r!24842)))) b!512884))

(assert (= (and b!512643 ((_ is Union!1193) (regTwo!2899 (regTwo!2898 r!24842)))) b!512885))

(check-sat (not b!512871) (not b!512695) (not b!512823) (not d!184130) (not b!512855) (not b!512873) (not b!512797) (not b!512827) (not b!512821) (not b!512755) (not b!512793) (not b!512752) (not b!512786) (not b!512833) (not b!512815) (not b!512698) (not b!512791) (not b!512845) (not b!512839) (not d!184122) (not b!512775) (not b!512811) (not b!512778) (not b!512773) (not b!512781) (not b!512838) (not bm!37218) (not b!512814) (not b!512810) (not bm!37220) (not d!184112) (not b!512875) (not b!512831) (not bm!37240) (not b!512699) (not b!512853) (not b!512872) (not b!512789) (not b!512830) (not b!512806) (not b!512849) (not b!512753) (not b!512846) (not bm!37232) (not b!512802) (not b!512777) (not b!512880) (not b!512854) (not b!512825) (not b!512843) (not b!512702) (not b!512818) (not b!512842) (not b!512700) (not b!512879) (not b!512807) (not b!512738) (not b!512876) (not b!512774) (not bm!37230) (not b!512783) (not b!512877) (not b!512835) (not b!512850) (not b!512790) (not b!512803) (not b!512696) (not bm!37235) (not b!512826) (not b!512787) (not b!512779) (not b!512819) (not b!512751) (not b!512847) (not b!512805) (not b!512822) (not b!512747) (not b!512771) (not b!512694) (not bm!37236) (not b!512884) (not b!512798) (not b!512799) (not b!512881) (not bm!37234) (not b!512749) (not b!512885) (not b!512841) (not d!184120) (not b!512851) (not bm!37238) (not b!512817) (not b!512801) (not b!512883) (not d!184132) (not b!512834) (not b!512785) (not b!512782) (not d!184118) (not bm!37219) tp_is_empty!2483 (not b!512829) (not b!512748) (not b!512794) (not b!512795) (not b!512837) (not b!512809) (not b!512813))
(check-sat)
