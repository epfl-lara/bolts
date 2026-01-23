; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285812 () Bool)

(assert start!285812)

(declare-fun b!2944451 () Bool)

(declare-fun e!1855166 () Bool)

(declare-fun tp!942073 () Bool)

(declare-fun tp!942076 () Bool)

(assert (=> b!2944451 (= e!1855166 (and tp!942073 tp!942076))))

(declare-fun res!1215293 () Bool)

(declare-fun e!1855165 () Bool)

(assert (=> start!285812 (=> (not res!1215293) (not e!1855165))))

(declare-datatypes ((C!18444 0))(
  ( (C!18445 (val!11258 Int)) )
))
(declare-datatypes ((Regex!9129 0))(
  ( (ElementMatch!9129 (c!481507 C!18444)) (Concat!14450 (regOne!18770 Regex!9129) (regTwo!18770 Regex!9129)) (EmptyExpr!9129) (Star!9129 (reg!9458 Regex!9129)) (EmptyLang!9129) (Union!9129 (regOne!18771 Regex!9129) (regTwo!18771 Regex!9129)) )
))
(declare-fun r!17423 () Regex!9129)

(declare-fun validRegex!3862 (Regex!9129) Bool)

(assert (=> start!285812 (= res!1215293 (validRegex!3862 r!17423))))

(assert (=> start!285812 e!1855165))

(assert (=> start!285812 e!1855166))

(declare-fun e!1855167 () Bool)

(assert (=> start!285812 e!1855167))

(declare-fun b!2944452 () Bool)

(declare-fun tp!942072 () Bool)

(declare-fun tp!942077 () Bool)

(assert (=> b!2944452 (= e!1855166 (and tp!942072 tp!942077))))

(declare-fun b!2944453 () Bool)

(declare-fun e!1855164 () Bool)

(declare-fun e!1855163 () Bool)

(assert (=> b!2944453 (= e!1855164 e!1855163)))

(declare-fun res!1215298 () Bool)

(assert (=> b!2944453 (=> res!1215298 e!1855163)))

(declare-fun lt!1030994 () Regex!9129)

(declare-fun isEmptyLang!251 (Regex!9129) Bool)

(assert (=> b!2944453 (= res!1215298 (isEmptyLang!251 lt!1030994))))

(declare-fun lt!1030995 () Regex!9129)

(declare-fun simplify!134 (Regex!9129) Regex!9129)

(assert (=> b!2944453 (= lt!1030995 (simplify!134 (regTwo!18770 r!17423)))))

(assert (=> b!2944453 (= lt!1030994 (simplify!134 (regOne!18770 r!17423)))))

(declare-fun b!2944454 () Bool)

(declare-fun res!1215294 () Bool)

(assert (=> b!2944454 (=> res!1215294 e!1855164)))

(declare-datatypes ((List!34994 0))(
  ( (Nil!34870) (Cons!34870 (h!40290 C!18444) (t!234059 List!34994)) )
))
(declare-fun s!11993 () List!34994)

(declare-fun isEmpty!19131 (List!34994) Bool)

(assert (=> b!2944454 (= res!1215294 (isEmpty!19131 s!11993))))

(declare-fun b!2944455 () Bool)

(declare-fun e!1855162 () Bool)

(assert (=> b!2944455 (= e!1855162 (validRegex!3862 (simplify!134 r!17423)))))

(declare-fun b!2944456 () Bool)

(declare-fun tp_is_empty!15821 () Bool)

(declare-fun tp!942075 () Bool)

(assert (=> b!2944456 (= e!1855167 (and tp_is_empty!15821 tp!942075))))

(declare-fun b!2944457 () Bool)

(declare-fun tp!942074 () Bool)

(assert (=> b!2944457 (= e!1855166 tp!942074)))

(declare-fun b!2944458 () Bool)

(assert (=> b!2944458 (= e!1855163 e!1855162)))

(declare-fun res!1215296 () Bool)

(assert (=> b!2944458 (=> res!1215296 e!1855162)))

(declare-fun lt!1030998 () Bool)

(assert (=> b!2944458 (= res!1215296 lt!1030998)))

(declare-fun matchR!4011 (Regex!9129 List!34994) Bool)

(assert (=> b!2944458 (= (matchR!4011 (regTwo!18770 r!17423) Nil!34870) (matchR!4011 lt!1030995 Nil!34870))))

(declare-datatypes ((Unit!48637 0))(
  ( (Unit!48638) )
))
(declare-fun lt!1030999 () Unit!48637)

(declare-fun lemmaSimplifySound!116 (Regex!9129 List!34994) Unit!48637)

(assert (=> b!2944458 (= lt!1030999 (lemmaSimplifySound!116 (regTwo!18770 r!17423) Nil!34870))))

(assert (=> b!2944458 (= lt!1030998 (matchR!4011 lt!1030994 s!11993))))

(assert (=> b!2944458 (= lt!1030998 (matchR!4011 (regOne!18770 r!17423) s!11993))))

(declare-fun lt!1030996 () Unit!48637)

(assert (=> b!2944458 (= lt!1030996 (lemmaSimplifySound!116 (regOne!18770 r!17423) s!11993))))

(declare-fun b!2944459 () Bool)

(assert (=> b!2944459 (= e!1855165 (not e!1855164))))

(declare-fun res!1215291 () Bool)

(assert (=> b!2944459 (=> res!1215291 e!1855164)))

(declare-fun lt!1030997 () Bool)

(get-info :version)

(assert (=> b!2944459 (= res!1215291 (or lt!1030997 (not ((_ is Concat!14450) r!17423))))))

(declare-fun matchRSpec!1266 (Regex!9129 List!34994) Bool)

(assert (=> b!2944459 (= lt!1030997 (matchRSpec!1266 r!17423 s!11993))))

(assert (=> b!2944459 (= lt!1030997 (matchR!4011 r!17423 s!11993))))

(declare-fun lt!1030993 () Unit!48637)

(declare-fun mainMatchTheorem!1266 (Regex!9129 List!34994) Unit!48637)

(assert (=> b!2944459 (= lt!1030993 (mainMatchTheorem!1266 r!17423 s!11993))))

(declare-fun b!2944460 () Bool)

(declare-fun res!1215295 () Bool)

(assert (=> b!2944460 (=> res!1215295 e!1855163)))

(declare-fun isEmptyExpr!332 (Regex!9129) Bool)

(assert (=> b!2944460 (= res!1215295 (isEmptyExpr!332 lt!1030994))))

(declare-fun b!2944461 () Bool)

(assert (=> b!2944461 (= e!1855166 tp_is_empty!15821)))

(declare-fun b!2944462 () Bool)

(declare-fun res!1215297 () Bool)

(assert (=> b!2944462 (=> res!1215297 e!1855163)))

(assert (=> b!2944462 (= res!1215297 (isEmptyLang!251 lt!1030995))))

(declare-fun b!2944463 () Bool)

(declare-fun res!1215292 () Bool)

(assert (=> b!2944463 (=> res!1215292 e!1855163)))

(assert (=> b!2944463 (= res!1215292 (not (isEmptyExpr!332 lt!1030995)))))

(assert (= (and start!285812 res!1215293) b!2944459))

(assert (= (and b!2944459 (not res!1215291)) b!2944454))

(assert (= (and b!2944454 (not res!1215294)) b!2944453))

(assert (= (and b!2944453 (not res!1215298)) b!2944462))

(assert (= (and b!2944462 (not res!1215297)) b!2944460))

(assert (= (and b!2944460 (not res!1215295)) b!2944463))

(assert (= (and b!2944463 (not res!1215292)) b!2944458))

(assert (= (and b!2944458 (not res!1215296)) b!2944455))

(assert (= (and start!285812 ((_ is ElementMatch!9129) r!17423)) b!2944461))

(assert (= (and start!285812 ((_ is Concat!14450) r!17423)) b!2944451))

(assert (= (and start!285812 ((_ is Star!9129) r!17423)) b!2944457))

(assert (= (and start!285812 ((_ is Union!9129) r!17423)) b!2944452))

(assert (= (and start!285812 ((_ is Cons!34870) s!11993)) b!2944456))

(declare-fun m!3327243 () Bool)

(assert (=> start!285812 m!3327243))

(declare-fun m!3327245 () Bool)

(assert (=> b!2944460 m!3327245))

(declare-fun m!3327247 () Bool)

(assert (=> b!2944459 m!3327247))

(declare-fun m!3327249 () Bool)

(assert (=> b!2944459 m!3327249))

(declare-fun m!3327251 () Bool)

(assert (=> b!2944459 m!3327251))

(declare-fun m!3327253 () Bool)

(assert (=> b!2944454 m!3327253))

(declare-fun m!3327255 () Bool)

(assert (=> b!2944463 m!3327255))

(declare-fun m!3327257 () Bool)

(assert (=> b!2944458 m!3327257))

(declare-fun m!3327259 () Bool)

(assert (=> b!2944458 m!3327259))

(declare-fun m!3327261 () Bool)

(assert (=> b!2944458 m!3327261))

(declare-fun m!3327263 () Bool)

(assert (=> b!2944458 m!3327263))

(declare-fun m!3327265 () Bool)

(assert (=> b!2944458 m!3327265))

(declare-fun m!3327267 () Bool)

(assert (=> b!2944458 m!3327267))

(declare-fun m!3327269 () Bool)

(assert (=> b!2944455 m!3327269))

(assert (=> b!2944455 m!3327269))

(declare-fun m!3327271 () Bool)

(assert (=> b!2944455 m!3327271))

(declare-fun m!3327273 () Bool)

(assert (=> b!2944462 m!3327273))

(declare-fun m!3327275 () Bool)

(assert (=> b!2944453 m!3327275))

(declare-fun m!3327277 () Bool)

(assert (=> b!2944453 m!3327277))

(declare-fun m!3327279 () Bool)

(assert (=> b!2944453 m!3327279))

(check-sat (not b!2944460) (not b!2944455) tp_is_empty!15821 (not b!2944451) (not b!2944457) (not b!2944453) (not start!285812) (not b!2944462) (not b!2944459) (not b!2944458) (not b!2944456) (not b!2944452) (not b!2944463) (not b!2944454))
(check-sat)
(get-model)

(declare-fun b!2944482 () Bool)

(declare-fun res!1215309 () Bool)

(declare-fun e!1855184 () Bool)

(assert (=> b!2944482 (=> (not res!1215309) (not e!1855184))))

(declare-fun call!194062 () Bool)

(assert (=> b!2944482 (= res!1215309 call!194062)))

(declare-fun e!1855185 () Bool)

(assert (=> b!2944482 (= e!1855185 e!1855184)))

(declare-fun b!2944483 () Bool)

(declare-fun e!1855183 () Bool)

(declare-fun call!194063 () Bool)

(assert (=> b!2944483 (= e!1855183 call!194063)))

(declare-fun b!2944484 () Bool)

(declare-fun e!1855186 () Bool)

(assert (=> b!2944484 (= e!1855186 call!194062)))

(declare-fun bm!194056 () Bool)

(declare-fun call!194061 () Bool)

(declare-fun c!481512 () Bool)

(assert (=> bm!194056 (= call!194061 (validRegex!3862 (ite c!481512 (regTwo!18771 (simplify!134 r!17423)) (regOne!18770 (simplify!134 r!17423)))))))

(declare-fun bm!194057 () Bool)

(declare-fun c!481513 () Bool)

(assert (=> bm!194057 (= call!194063 (validRegex!3862 (ite c!481513 (reg!9458 (simplify!134 r!17423)) (ite c!481512 (regOne!18771 (simplify!134 r!17423)) (regTwo!18770 (simplify!134 r!17423))))))))

(declare-fun b!2944485 () Bool)

(declare-fun e!1855182 () Bool)

(declare-fun e!1855187 () Bool)

(assert (=> b!2944485 (= e!1855182 e!1855187)))

(assert (=> b!2944485 (= c!481513 ((_ is Star!9129) (simplify!134 r!17423)))))

(declare-fun d!840430 () Bool)

(declare-fun res!1215312 () Bool)

(assert (=> d!840430 (=> res!1215312 e!1855182)))

(assert (=> d!840430 (= res!1215312 ((_ is ElementMatch!9129) (simplify!134 r!17423)))))

(assert (=> d!840430 (= (validRegex!3862 (simplify!134 r!17423)) e!1855182)))

(declare-fun b!2944486 () Bool)

(declare-fun res!1215310 () Bool)

(declare-fun e!1855188 () Bool)

(assert (=> b!2944486 (=> res!1215310 e!1855188)))

(assert (=> b!2944486 (= res!1215310 (not ((_ is Concat!14450) (simplify!134 r!17423))))))

(assert (=> b!2944486 (= e!1855185 e!1855188)))

(declare-fun b!2944487 () Bool)

(assert (=> b!2944487 (= e!1855188 e!1855186)))

(declare-fun res!1215313 () Bool)

(assert (=> b!2944487 (=> (not res!1215313) (not e!1855186))))

(assert (=> b!2944487 (= res!1215313 call!194061)))

(declare-fun b!2944488 () Bool)

(assert (=> b!2944488 (= e!1855187 e!1855183)))

(declare-fun res!1215311 () Bool)

(declare-fun nullable!2891 (Regex!9129) Bool)

(assert (=> b!2944488 (= res!1215311 (not (nullable!2891 (reg!9458 (simplify!134 r!17423)))))))

(assert (=> b!2944488 (=> (not res!1215311) (not e!1855183))))

(declare-fun b!2944489 () Bool)

(assert (=> b!2944489 (= e!1855187 e!1855185)))

(assert (=> b!2944489 (= c!481512 ((_ is Union!9129) (simplify!134 r!17423)))))

(declare-fun b!2944490 () Bool)

(assert (=> b!2944490 (= e!1855184 call!194061)))

(declare-fun bm!194058 () Bool)

(assert (=> bm!194058 (= call!194062 call!194063)))

(assert (= (and d!840430 (not res!1215312)) b!2944485))

(assert (= (and b!2944485 c!481513) b!2944488))

(assert (= (and b!2944485 (not c!481513)) b!2944489))

(assert (= (and b!2944488 res!1215311) b!2944483))

(assert (= (and b!2944489 c!481512) b!2944482))

(assert (= (and b!2944489 (not c!481512)) b!2944486))

(assert (= (and b!2944482 res!1215309) b!2944490))

(assert (= (and b!2944486 (not res!1215310)) b!2944487))

(assert (= (and b!2944487 res!1215313) b!2944484))

(assert (= (or b!2944482 b!2944484) bm!194058))

(assert (= (or b!2944490 b!2944487) bm!194056))

(assert (= (or b!2944483 bm!194058) bm!194057))

(declare-fun m!3327281 () Bool)

(assert (=> bm!194056 m!3327281))

(declare-fun m!3327283 () Bool)

(assert (=> bm!194057 m!3327283))

(declare-fun m!3327285 () Bool)

(assert (=> b!2944488 m!3327285))

(assert (=> b!2944455 d!840430))

(declare-fun b!2944563 () Bool)

(declare-fun e!1855243 () Bool)

(declare-fun call!194081 () Bool)

(assert (=> b!2944563 (= e!1855243 call!194081)))

(declare-fun b!2944564 () Bool)

(declare-fun c!481544 () Bool)

(assert (=> b!2944564 (= c!481544 ((_ is Union!9129) r!17423))))

(declare-fun e!1855233 () Regex!9129)

(declare-fun e!1855239 () Regex!9129)

(assert (=> b!2944564 (= e!1855233 e!1855239)))

(declare-fun b!2944565 () Bool)

(declare-fun e!1855235 () Regex!9129)

(declare-fun e!1855244 () Regex!9129)

(assert (=> b!2944565 (= e!1855235 e!1855244)))

(declare-fun c!481549 () Bool)

(declare-fun call!194082 () Bool)

(assert (=> b!2944565 (= c!481549 call!194082)))

(declare-fun lt!1031015 () Regex!9129)

(declare-fun lt!1031013 () Regex!9129)

(declare-fun bm!194073 () Bool)

(declare-fun c!481552 () Bool)

(assert (=> bm!194073 (= call!194082 (isEmptyExpr!332 (ite c!481552 lt!1031015 lt!1031013)))))

(declare-fun b!2944566 () Bool)

(declare-fun c!481553 () Bool)

(assert (=> b!2944566 (= c!481553 ((_ is EmptyExpr!9129) r!17423))))

(declare-fun e!1855237 () Regex!9129)

(declare-fun e!1855236 () Regex!9129)

(assert (=> b!2944566 (= e!1855237 e!1855236)))

(declare-fun bm!194074 () Bool)

(declare-fun call!194078 () Regex!9129)

(declare-fun call!194079 () Regex!9129)

(assert (=> bm!194074 (= call!194078 call!194079)))

(declare-fun b!2944567 () Bool)

(declare-fun e!1855238 () Regex!9129)

(assert (=> b!2944567 (= e!1855239 e!1855238)))

(declare-fun lt!1031012 () Regex!9129)

(assert (=> b!2944567 (= lt!1031012 call!194078)))

(declare-fun lt!1031016 () Regex!9129)

(declare-fun call!194084 () Regex!9129)

(assert (=> b!2944567 (= lt!1031016 call!194084)))

(declare-fun c!481554 () Bool)

(assert (=> b!2944567 (= c!481554 call!194081)))

(declare-fun b!2944569 () Bool)

(assert (=> b!2944569 (= e!1855235 lt!1031013)))

(declare-fun b!2944570 () Bool)

(declare-fun lt!1031017 () Regex!9129)

(assert (=> b!2944570 (= e!1855244 lt!1031017)))

(declare-fun b!2944571 () Bool)

(assert (=> b!2944571 (= e!1855238 lt!1031016)))

(declare-fun b!2944572 () Bool)

(declare-fun e!1855231 () Regex!9129)

(assert (=> b!2944572 (= e!1855231 (Star!9129 lt!1031015))))

(declare-fun b!2944573 () Bool)

(assert (=> b!2944573 (= e!1855231 EmptyExpr!9129)))

(declare-fun b!2944574 () Bool)

(assert (=> b!2944574 (= e!1855244 (Concat!14450 lt!1031017 lt!1031013))))

(declare-fun b!2944575 () Bool)

(declare-fun c!481545 () Bool)

(declare-fun call!194083 () Bool)

(assert (=> b!2944575 (= c!481545 call!194083)))

(declare-fun e!1855242 () Regex!9129)

(assert (=> b!2944575 (= e!1855238 e!1855242)))

(declare-fun bm!194075 () Bool)

(assert (=> bm!194075 (= call!194079 (simplify!134 (ite c!481552 (reg!9458 r!17423) (ite c!481544 (regOne!18771 r!17423) (regTwo!18770 r!17423)))))))

(declare-fun bm!194076 () Bool)

(assert (=> bm!194076 (= call!194084 (simplify!134 (ite c!481544 (regTwo!18771 r!17423) (regOne!18770 r!17423))))))

(declare-fun b!2944576 () Bool)

(assert (=> b!2944576 (= e!1855242 lt!1031012)))

(declare-fun bm!194077 () Bool)

(assert (=> bm!194077 (= call!194081 (isEmptyLang!251 (ite c!481544 lt!1031012 lt!1031013)))))

(declare-fun b!2944577 () Bool)

(declare-fun c!481548 () Bool)

(declare-fun e!1855232 () Bool)

(assert (=> b!2944577 (= c!481548 e!1855232)))

(declare-fun res!1215326 () Bool)

(assert (=> b!2944577 (=> res!1215326 e!1855232)))

(declare-fun call!194080 () Bool)

(assert (=> b!2944577 (= res!1215326 call!194080)))

(assert (=> b!2944577 (= lt!1031015 call!194079)))

(assert (=> b!2944577 (= e!1855233 e!1855231)))

(declare-fun b!2944578 () Bool)

(assert (=> b!2944578 (= e!1855236 EmptyExpr!9129)))

(declare-fun b!2944579 () Bool)

(declare-fun e!1855240 () Regex!9129)

(assert (=> b!2944579 (= e!1855240 e!1855237)))

(declare-fun c!481546 () Bool)

(assert (=> b!2944579 (= c!481546 ((_ is ElementMatch!9129) r!17423))))

(declare-fun bm!194078 () Bool)

(assert (=> bm!194078 (= call!194083 call!194080)))

(declare-fun b!2944580 () Bool)

(assert (=> b!2944580 (= e!1855232 call!194082)))

(declare-fun b!2944568 () Bool)

(declare-fun e!1855241 () Regex!9129)

(assert (=> b!2944568 (= e!1855239 e!1855241)))

(assert (=> b!2944568 (= lt!1031017 call!194084)))

(assert (=> b!2944568 (= lt!1031013 call!194078)))

(declare-fun res!1215328 () Bool)

(assert (=> b!2944568 (= res!1215328 call!194083)))

(assert (=> b!2944568 (=> res!1215328 e!1855243)))

(declare-fun c!481550 () Bool)

(assert (=> b!2944568 (= c!481550 e!1855243)))

(declare-fun d!840434 () Bool)

(declare-fun e!1855234 () Bool)

(assert (=> d!840434 e!1855234))

(declare-fun res!1215327 () Bool)

(assert (=> d!840434 (=> (not res!1215327) (not e!1855234))))

(declare-fun lt!1031014 () Regex!9129)

(assert (=> d!840434 (= res!1215327 (validRegex!3862 lt!1031014))))

(assert (=> d!840434 (= lt!1031014 e!1855240)))

(declare-fun c!481547 () Bool)

(assert (=> d!840434 (= c!481547 ((_ is EmptyLang!9129) r!17423))))

(assert (=> d!840434 (validRegex!3862 r!17423)))

(assert (=> d!840434 (= (simplify!134 r!17423) lt!1031014)))

(declare-fun b!2944581 () Bool)

(assert (=> b!2944581 (= e!1855237 r!17423)))

(declare-fun b!2944582 () Bool)

(assert (=> b!2944582 (= e!1855242 (Union!9129 lt!1031012 lt!1031016))))

(declare-fun b!2944583 () Bool)

(assert (=> b!2944583 (= e!1855240 EmptyLang!9129)))

(declare-fun b!2944584 () Bool)

(declare-fun c!481551 () Bool)

(assert (=> b!2944584 (= c!481551 (isEmptyExpr!332 lt!1031017))))

(assert (=> b!2944584 (= e!1855241 e!1855235)))

(declare-fun bm!194079 () Bool)

(assert (=> bm!194079 (= call!194080 (isEmptyLang!251 (ite c!481552 lt!1031015 (ite c!481544 lt!1031016 lt!1031017))))))

(declare-fun b!2944585 () Bool)

(assert (=> b!2944585 (= e!1855241 EmptyLang!9129)))

(declare-fun b!2944586 () Bool)

(assert (=> b!2944586 (= e!1855236 e!1855233)))

(assert (=> b!2944586 (= c!481552 ((_ is Star!9129) r!17423))))

(declare-fun b!2944587 () Bool)

(assert (=> b!2944587 (= e!1855234 (= (nullable!2891 lt!1031014) (nullable!2891 r!17423)))))

(assert (= (and d!840434 c!481547) b!2944583))

(assert (= (and d!840434 (not c!481547)) b!2944579))

(assert (= (and b!2944579 c!481546) b!2944581))

(assert (= (and b!2944579 (not c!481546)) b!2944566))

(assert (= (and b!2944566 c!481553) b!2944578))

(assert (= (and b!2944566 (not c!481553)) b!2944586))

(assert (= (and b!2944586 c!481552) b!2944577))

(assert (= (and b!2944586 (not c!481552)) b!2944564))

(assert (= (and b!2944577 (not res!1215326)) b!2944580))

(assert (= (and b!2944577 c!481548) b!2944573))

(assert (= (and b!2944577 (not c!481548)) b!2944572))

(assert (= (and b!2944564 c!481544) b!2944567))

(assert (= (and b!2944564 (not c!481544)) b!2944568))

(assert (= (and b!2944567 c!481554) b!2944571))

(assert (= (and b!2944567 (not c!481554)) b!2944575))

(assert (= (and b!2944575 c!481545) b!2944576))

(assert (= (and b!2944575 (not c!481545)) b!2944582))

(assert (= (and b!2944568 (not res!1215328)) b!2944563))

(assert (= (and b!2944568 c!481550) b!2944585))

(assert (= (and b!2944568 (not c!481550)) b!2944584))

(assert (= (and b!2944584 c!481551) b!2944569))

(assert (= (and b!2944584 (not c!481551)) b!2944565))

(assert (= (and b!2944565 c!481549) b!2944570))

(assert (= (and b!2944565 (not c!481549)) b!2944574))

(assert (= (or b!2944567 b!2944568) bm!194074))

(assert (= (or b!2944567 b!2944568) bm!194076))

(assert (= (or b!2944575 b!2944568) bm!194078))

(assert (= (or b!2944567 b!2944563) bm!194077))

(assert (= (or b!2944580 b!2944565) bm!194073))

(assert (= (or b!2944577 bm!194074) bm!194075))

(assert (= (or b!2944577 bm!194078) bm!194079))

(assert (= (and d!840434 res!1215327) b!2944587))

(declare-fun m!3327287 () Bool)

(assert (=> b!2944587 m!3327287))

(declare-fun m!3327289 () Bool)

(assert (=> b!2944587 m!3327289))

(declare-fun m!3327291 () Bool)

(assert (=> d!840434 m!3327291))

(assert (=> d!840434 m!3327243))

(declare-fun m!3327293 () Bool)

(assert (=> bm!194075 m!3327293))

(declare-fun m!3327295 () Bool)

(assert (=> bm!194079 m!3327295))

(declare-fun m!3327297 () Bool)

(assert (=> bm!194077 m!3327297))

(declare-fun m!3327299 () Bool)

(assert (=> bm!194076 m!3327299))

(declare-fun m!3327301 () Bool)

(assert (=> b!2944584 m!3327301))

(declare-fun m!3327303 () Bool)

(assert (=> bm!194073 m!3327303))

(assert (=> b!2944455 d!840434))

(declare-fun d!840436 () Bool)

(assert (=> d!840436 (= (isEmptyExpr!332 lt!1030994) ((_ is EmptyExpr!9129) lt!1030994))))

(assert (=> b!2944460 d!840436))

(declare-fun b!2944940 () Bool)

(assert (=> b!2944940 true))

(assert (=> b!2944940 true))

(declare-fun bs!525567 () Bool)

(declare-fun b!2944947 () Bool)

(assert (= bs!525567 (and b!2944947 b!2944940)))

(declare-fun lambda!109604 () Int)

(declare-fun lambda!109603 () Int)

(assert (=> bs!525567 (not (= lambda!109604 lambda!109603))))

(assert (=> b!2944947 true))

(assert (=> b!2944947 true))

(declare-fun b!2944939 () Bool)

(declare-fun e!1855432 () Bool)

(declare-fun e!1855436 () Bool)

(assert (=> b!2944939 (= e!1855432 e!1855436)))

(declare-fun c!481654 () Bool)

(assert (=> b!2944939 (= c!481654 ((_ is Star!9129) r!17423))))

(declare-fun e!1855435 () Bool)

(declare-fun call!194149 () Bool)

(assert (=> b!2944940 (= e!1855435 call!194149)))

(declare-fun b!2944941 () Bool)

(declare-fun e!1855434 () Bool)

(assert (=> b!2944941 (= e!1855432 e!1855434)))

(declare-fun res!1215451 () Bool)

(assert (=> b!2944941 (= res!1215451 (matchRSpec!1266 (regOne!18771 r!17423) s!11993))))

(assert (=> b!2944941 (=> res!1215451 e!1855434)))

(declare-fun bm!194145 () Bool)

(declare-fun Exists!1465 (Int) Bool)

(assert (=> bm!194145 (= call!194149 (Exists!1465 (ite c!481654 lambda!109603 lambda!109604)))))

(declare-fun b!2944942 () Bool)

(declare-fun res!1215449 () Bool)

(assert (=> b!2944942 (=> res!1215449 e!1855435)))

(declare-fun call!194150 () Bool)

(assert (=> b!2944942 (= res!1215449 call!194150)))

(assert (=> b!2944942 (= e!1855436 e!1855435)))

(declare-fun b!2944943 () Bool)

(declare-fun c!481652 () Bool)

(assert (=> b!2944943 (= c!481652 ((_ is Union!9129) r!17423))))

(declare-fun e!1855433 () Bool)

(assert (=> b!2944943 (= e!1855433 e!1855432)))

(declare-fun b!2944944 () Bool)

(declare-fun e!1855431 () Bool)

(declare-fun e!1855437 () Bool)

(assert (=> b!2944944 (= e!1855431 e!1855437)))

(declare-fun res!1215450 () Bool)

(assert (=> b!2944944 (= res!1215450 (not ((_ is EmptyLang!9129) r!17423)))))

(assert (=> b!2944944 (=> (not res!1215450) (not e!1855437))))

(declare-fun b!2944945 () Bool)

(assert (=> b!2944945 (= e!1855434 (matchRSpec!1266 (regTwo!18771 r!17423) s!11993))))

(declare-fun bm!194144 () Bool)

(assert (=> bm!194144 (= call!194150 (isEmpty!19131 s!11993))))

(declare-fun d!840438 () Bool)

(declare-fun c!481653 () Bool)

(assert (=> d!840438 (= c!481653 ((_ is EmptyExpr!9129) r!17423))))

(assert (=> d!840438 (= (matchRSpec!1266 r!17423 s!11993) e!1855431)))

(declare-fun b!2944946 () Bool)

(declare-fun c!481651 () Bool)

(assert (=> b!2944946 (= c!481651 ((_ is ElementMatch!9129) r!17423))))

(assert (=> b!2944946 (= e!1855437 e!1855433)))

(assert (=> b!2944947 (= e!1855436 call!194149)))

(declare-fun b!2944948 () Bool)

(assert (=> b!2944948 (= e!1855433 (= s!11993 (Cons!34870 (c!481507 r!17423) Nil!34870)))))

(declare-fun b!2944949 () Bool)

(assert (=> b!2944949 (= e!1855431 call!194150)))

(assert (= (and d!840438 c!481653) b!2944949))

(assert (= (and d!840438 (not c!481653)) b!2944944))

(assert (= (and b!2944944 res!1215450) b!2944946))

(assert (= (and b!2944946 c!481651) b!2944948))

(assert (= (and b!2944946 (not c!481651)) b!2944943))

(assert (= (and b!2944943 c!481652) b!2944941))

(assert (= (and b!2944943 (not c!481652)) b!2944939))

(assert (= (and b!2944941 (not res!1215451)) b!2944945))

(assert (= (and b!2944939 c!481654) b!2944942))

(assert (= (and b!2944939 (not c!481654)) b!2944947))

(assert (= (and b!2944942 (not res!1215449)) b!2944940))

(assert (= (or b!2944940 b!2944947) bm!194145))

(assert (= (or b!2944949 b!2944942) bm!194144))

(declare-fun m!3327433 () Bool)

(assert (=> b!2944941 m!3327433))

(declare-fun m!3327435 () Bool)

(assert (=> bm!194145 m!3327435))

(declare-fun m!3327437 () Bool)

(assert (=> b!2944945 m!3327437))

(assert (=> bm!194144 m!3327253))

(assert (=> b!2944459 d!840438))

(declare-fun b!2944982 () Bool)

(declare-fun e!1855456 () Bool)

(declare-fun lt!1031064 () Bool)

(declare-fun call!194153 () Bool)

(assert (=> b!2944982 (= e!1855456 (= lt!1031064 call!194153))))

(declare-fun b!2944983 () Bool)

(declare-fun res!1215473 () Bool)

(declare-fun e!1855457 () Bool)

(assert (=> b!2944983 (=> res!1215473 e!1855457)))

(declare-fun e!1855454 () Bool)

(assert (=> b!2944983 (= res!1215473 e!1855454)))

(declare-fun res!1215471 () Bool)

(assert (=> b!2944983 (=> (not res!1215471) (not e!1855454))))

(assert (=> b!2944983 (= res!1215471 lt!1031064)))

(declare-fun b!2944984 () Bool)

(declare-fun e!1855455 () Bool)

(assert (=> b!2944984 (= e!1855455 (nullable!2891 r!17423))))

(declare-fun b!2944985 () Bool)

(declare-fun derivativeStep!2494 (Regex!9129 C!18444) Regex!9129)

(declare-fun head!6553 (List!34994) C!18444)

(declare-fun tail!4779 (List!34994) List!34994)

(assert (=> b!2944985 (= e!1855455 (matchR!4011 (derivativeStep!2494 r!17423 (head!6553 s!11993)) (tail!4779 s!11993)))))

(declare-fun b!2944986 () Bool)

(declare-fun res!1215472 () Bool)

(assert (=> b!2944986 (=> (not res!1215472) (not e!1855454))))

(assert (=> b!2944986 (= res!1215472 (isEmpty!19131 (tail!4779 s!11993)))))

(declare-fun b!2944987 () Bool)

(declare-fun res!1215474 () Bool)

(declare-fun e!1855452 () Bool)

(assert (=> b!2944987 (=> res!1215474 e!1855452)))

(assert (=> b!2944987 (= res!1215474 (not (isEmpty!19131 (tail!4779 s!11993))))))

(declare-fun b!2944988 () Bool)

(declare-fun e!1855453 () Bool)

(assert (=> b!2944988 (= e!1855457 e!1855453)))

(declare-fun res!1215470 () Bool)

(assert (=> b!2944988 (=> (not res!1215470) (not e!1855453))))

(assert (=> b!2944988 (= res!1215470 (not lt!1031064))))

(declare-fun bm!194148 () Bool)

(assert (=> bm!194148 (= call!194153 (isEmpty!19131 s!11993))))

(declare-fun b!2944989 () Bool)

(declare-fun e!1855458 () Bool)

(assert (=> b!2944989 (= e!1855458 (not lt!1031064))))

(declare-fun b!2944990 () Bool)

(assert (=> b!2944990 (= e!1855452 (not (= (head!6553 s!11993) (c!481507 r!17423))))))

(declare-fun d!840476 () Bool)

(assert (=> d!840476 e!1855456))

(declare-fun c!481661 () Bool)

(assert (=> d!840476 (= c!481661 ((_ is EmptyExpr!9129) r!17423))))

(assert (=> d!840476 (= lt!1031064 e!1855455)))

(declare-fun c!481663 () Bool)

(assert (=> d!840476 (= c!481663 (isEmpty!19131 s!11993))))

(assert (=> d!840476 (validRegex!3862 r!17423)))

(assert (=> d!840476 (= (matchR!4011 r!17423 s!11993) lt!1031064)))

(declare-fun b!2944991 () Bool)

(declare-fun res!1215475 () Bool)

(assert (=> b!2944991 (=> res!1215475 e!1855457)))

(assert (=> b!2944991 (= res!1215475 (not ((_ is ElementMatch!9129) r!17423)))))

(assert (=> b!2944991 (= e!1855458 e!1855457)))

(declare-fun b!2944992 () Bool)

(assert (=> b!2944992 (= e!1855456 e!1855458)))

(declare-fun c!481662 () Bool)

(assert (=> b!2944992 (= c!481662 ((_ is EmptyLang!9129) r!17423))))

(declare-fun b!2944993 () Bool)

(assert (=> b!2944993 (= e!1855454 (= (head!6553 s!11993) (c!481507 r!17423)))))

(declare-fun b!2944994 () Bool)

(declare-fun res!1215469 () Bool)

(assert (=> b!2944994 (=> (not res!1215469) (not e!1855454))))

(assert (=> b!2944994 (= res!1215469 (not call!194153))))

(declare-fun b!2944995 () Bool)

(assert (=> b!2944995 (= e!1855453 e!1855452)))

(declare-fun res!1215468 () Bool)

(assert (=> b!2944995 (=> res!1215468 e!1855452)))

(assert (=> b!2944995 (= res!1215468 call!194153)))

(assert (= (and d!840476 c!481663) b!2944984))

(assert (= (and d!840476 (not c!481663)) b!2944985))

(assert (= (and d!840476 c!481661) b!2944982))

(assert (= (and d!840476 (not c!481661)) b!2944992))

(assert (= (and b!2944992 c!481662) b!2944989))

(assert (= (and b!2944992 (not c!481662)) b!2944991))

(assert (= (and b!2944991 (not res!1215475)) b!2944983))

(assert (= (and b!2944983 res!1215471) b!2944994))

(assert (= (and b!2944994 res!1215469) b!2944986))

(assert (= (and b!2944986 res!1215472) b!2944993))

(assert (= (and b!2944983 (not res!1215473)) b!2944988))

(assert (= (and b!2944988 res!1215470) b!2944995))

(assert (= (and b!2944995 (not res!1215468)) b!2944987))

(assert (= (and b!2944987 (not res!1215474)) b!2944990))

(assert (= (or b!2944982 b!2944994 b!2944995) bm!194148))

(assert (=> b!2944984 m!3327289))

(assert (=> d!840476 m!3327253))

(assert (=> d!840476 m!3327243))

(declare-fun m!3327439 () Bool)

(assert (=> b!2944993 m!3327439))

(assert (=> bm!194148 m!3327253))

(declare-fun m!3327441 () Bool)

(assert (=> b!2944986 m!3327441))

(assert (=> b!2944986 m!3327441))

(declare-fun m!3327443 () Bool)

(assert (=> b!2944986 m!3327443))

(assert (=> b!2944985 m!3327439))

(assert (=> b!2944985 m!3327439))

(declare-fun m!3327445 () Bool)

(assert (=> b!2944985 m!3327445))

(assert (=> b!2944985 m!3327441))

(assert (=> b!2944985 m!3327445))

(assert (=> b!2944985 m!3327441))

(declare-fun m!3327447 () Bool)

(assert (=> b!2944985 m!3327447))

(assert (=> b!2944990 m!3327439))

(assert (=> b!2944987 m!3327441))

(assert (=> b!2944987 m!3327441))

(assert (=> b!2944987 m!3327443))

(assert (=> b!2944459 d!840476))

(declare-fun d!840478 () Bool)

(assert (=> d!840478 (= (matchR!4011 r!17423 s!11993) (matchRSpec!1266 r!17423 s!11993))))

(declare-fun lt!1031067 () Unit!48637)

(declare-fun choose!17408 (Regex!9129 List!34994) Unit!48637)

(assert (=> d!840478 (= lt!1031067 (choose!17408 r!17423 s!11993))))

(assert (=> d!840478 (validRegex!3862 r!17423)))

(assert (=> d!840478 (= (mainMatchTheorem!1266 r!17423 s!11993) lt!1031067)))

(declare-fun bs!525568 () Bool)

(assert (= bs!525568 d!840478))

(assert (=> bs!525568 m!3327249))

(assert (=> bs!525568 m!3327247))

(declare-fun m!3327449 () Bool)

(assert (=> bs!525568 m!3327449))

(assert (=> bs!525568 m!3327243))

(assert (=> b!2944459 d!840478))

(declare-fun d!840480 () Bool)

(assert (=> d!840480 (= (isEmpty!19131 s!11993) ((_ is Nil!34870) s!11993))))

(assert (=> b!2944454 d!840480))

(declare-fun d!840482 () Bool)

(assert (=> d!840482 (= (isEmptyExpr!332 lt!1030995) ((_ is EmptyExpr!9129) lt!1030995))))

(assert (=> b!2944463 d!840482))

(declare-fun d!840484 () Bool)

(assert (=> d!840484 (= (isEmptyLang!251 lt!1030994) ((_ is EmptyLang!9129) lt!1030994))))

(assert (=> b!2944453 d!840484))

(declare-fun b!2944996 () Bool)

(declare-fun e!1855471 () Bool)

(declare-fun call!194157 () Bool)

(assert (=> b!2944996 (= e!1855471 call!194157)))

(declare-fun b!2944997 () Bool)

(declare-fun c!481664 () Bool)

(assert (=> b!2944997 (= c!481664 ((_ is Union!9129) (regTwo!18770 r!17423)))))

(declare-fun e!1855461 () Regex!9129)

(declare-fun e!1855467 () Regex!9129)

(assert (=> b!2944997 (= e!1855461 e!1855467)))

(declare-fun b!2944998 () Bool)

(declare-fun e!1855463 () Regex!9129)

(declare-fun e!1855472 () Regex!9129)

(assert (=> b!2944998 (= e!1855463 e!1855472)))

(declare-fun c!481669 () Bool)

(declare-fun call!194158 () Bool)

(assert (=> b!2944998 (= c!481669 call!194158)))

(declare-fun c!481672 () Bool)

(declare-fun lt!1031069 () Regex!9129)

(declare-fun lt!1031071 () Regex!9129)

(declare-fun bm!194149 () Bool)

(assert (=> bm!194149 (= call!194158 (isEmptyExpr!332 (ite c!481672 lt!1031071 lt!1031069)))))

(declare-fun b!2944999 () Bool)

(declare-fun c!481673 () Bool)

(assert (=> b!2944999 (= c!481673 ((_ is EmptyExpr!9129) (regTwo!18770 r!17423)))))

(declare-fun e!1855465 () Regex!9129)

(declare-fun e!1855464 () Regex!9129)

(assert (=> b!2944999 (= e!1855465 e!1855464)))

(declare-fun bm!194150 () Bool)

(declare-fun call!194154 () Regex!9129)

(declare-fun call!194155 () Regex!9129)

(assert (=> bm!194150 (= call!194154 call!194155)))

(declare-fun b!2945000 () Bool)

(declare-fun e!1855466 () Regex!9129)

(assert (=> b!2945000 (= e!1855467 e!1855466)))

(declare-fun lt!1031068 () Regex!9129)

(assert (=> b!2945000 (= lt!1031068 call!194154)))

(declare-fun lt!1031072 () Regex!9129)

(declare-fun call!194160 () Regex!9129)

(assert (=> b!2945000 (= lt!1031072 call!194160)))

(declare-fun c!481674 () Bool)

(assert (=> b!2945000 (= c!481674 call!194157)))

(declare-fun b!2945002 () Bool)

(assert (=> b!2945002 (= e!1855463 lt!1031069)))

(declare-fun b!2945003 () Bool)

(declare-fun lt!1031073 () Regex!9129)

(assert (=> b!2945003 (= e!1855472 lt!1031073)))

(declare-fun b!2945004 () Bool)

(assert (=> b!2945004 (= e!1855466 lt!1031072)))

(declare-fun b!2945005 () Bool)

(declare-fun e!1855459 () Regex!9129)

(assert (=> b!2945005 (= e!1855459 (Star!9129 lt!1031071))))

(declare-fun b!2945006 () Bool)

(assert (=> b!2945006 (= e!1855459 EmptyExpr!9129)))

(declare-fun b!2945007 () Bool)

(assert (=> b!2945007 (= e!1855472 (Concat!14450 lt!1031073 lt!1031069))))

(declare-fun b!2945008 () Bool)

(declare-fun c!481665 () Bool)

(declare-fun call!194159 () Bool)

(assert (=> b!2945008 (= c!481665 call!194159)))

(declare-fun e!1855470 () Regex!9129)

(assert (=> b!2945008 (= e!1855466 e!1855470)))

(declare-fun bm!194151 () Bool)

(assert (=> bm!194151 (= call!194155 (simplify!134 (ite c!481672 (reg!9458 (regTwo!18770 r!17423)) (ite c!481664 (regOne!18771 (regTwo!18770 r!17423)) (regTwo!18770 (regTwo!18770 r!17423))))))))

(declare-fun bm!194152 () Bool)

(assert (=> bm!194152 (= call!194160 (simplify!134 (ite c!481664 (regTwo!18771 (regTwo!18770 r!17423)) (regOne!18770 (regTwo!18770 r!17423)))))))

(declare-fun b!2945009 () Bool)

(assert (=> b!2945009 (= e!1855470 lt!1031068)))

(declare-fun bm!194153 () Bool)

(assert (=> bm!194153 (= call!194157 (isEmptyLang!251 (ite c!481664 lt!1031068 lt!1031069)))))

(declare-fun b!2945010 () Bool)

(declare-fun c!481668 () Bool)

(declare-fun e!1855460 () Bool)

(assert (=> b!2945010 (= c!481668 e!1855460)))

(declare-fun res!1215476 () Bool)

(assert (=> b!2945010 (=> res!1215476 e!1855460)))

(declare-fun call!194156 () Bool)

(assert (=> b!2945010 (= res!1215476 call!194156)))

(assert (=> b!2945010 (= lt!1031071 call!194155)))

(assert (=> b!2945010 (= e!1855461 e!1855459)))

(declare-fun b!2945011 () Bool)

(assert (=> b!2945011 (= e!1855464 EmptyExpr!9129)))

(declare-fun b!2945012 () Bool)

(declare-fun e!1855468 () Regex!9129)

(assert (=> b!2945012 (= e!1855468 e!1855465)))

(declare-fun c!481666 () Bool)

(assert (=> b!2945012 (= c!481666 ((_ is ElementMatch!9129) (regTwo!18770 r!17423)))))

(declare-fun bm!194154 () Bool)

(assert (=> bm!194154 (= call!194159 call!194156)))

(declare-fun b!2945013 () Bool)

(assert (=> b!2945013 (= e!1855460 call!194158)))

(declare-fun b!2945001 () Bool)

(declare-fun e!1855469 () Regex!9129)

(assert (=> b!2945001 (= e!1855467 e!1855469)))

(assert (=> b!2945001 (= lt!1031073 call!194160)))

(assert (=> b!2945001 (= lt!1031069 call!194154)))

(declare-fun res!1215478 () Bool)

(assert (=> b!2945001 (= res!1215478 call!194159)))

(assert (=> b!2945001 (=> res!1215478 e!1855471)))

(declare-fun c!481670 () Bool)

(assert (=> b!2945001 (= c!481670 e!1855471)))

(declare-fun d!840486 () Bool)

(declare-fun e!1855462 () Bool)

(assert (=> d!840486 e!1855462))

(declare-fun res!1215477 () Bool)

(assert (=> d!840486 (=> (not res!1215477) (not e!1855462))))

(declare-fun lt!1031070 () Regex!9129)

(assert (=> d!840486 (= res!1215477 (validRegex!3862 lt!1031070))))

(assert (=> d!840486 (= lt!1031070 e!1855468)))

(declare-fun c!481667 () Bool)

(assert (=> d!840486 (= c!481667 ((_ is EmptyLang!9129) (regTwo!18770 r!17423)))))

(assert (=> d!840486 (validRegex!3862 (regTwo!18770 r!17423))))

(assert (=> d!840486 (= (simplify!134 (regTwo!18770 r!17423)) lt!1031070)))

(declare-fun b!2945014 () Bool)

(assert (=> b!2945014 (= e!1855465 (regTwo!18770 r!17423))))

(declare-fun b!2945015 () Bool)

(assert (=> b!2945015 (= e!1855470 (Union!9129 lt!1031068 lt!1031072))))

(declare-fun b!2945016 () Bool)

(assert (=> b!2945016 (= e!1855468 EmptyLang!9129)))

(declare-fun b!2945017 () Bool)

(declare-fun c!481671 () Bool)

(assert (=> b!2945017 (= c!481671 (isEmptyExpr!332 lt!1031073))))

(assert (=> b!2945017 (= e!1855469 e!1855463)))

(declare-fun bm!194155 () Bool)

(assert (=> bm!194155 (= call!194156 (isEmptyLang!251 (ite c!481672 lt!1031071 (ite c!481664 lt!1031072 lt!1031073))))))

(declare-fun b!2945018 () Bool)

(assert (=> b!2945018 (= e!1855469 EmptyLang!9129)))

(declare-fun b!2945019 () Bool)

(assert (=> b!2945019 (= e!1855464 e!1855461)))

(assert (=> b!2945019 (= c!481672 ((_ is Star!9129) (regTwo!18770 r!17423)))))

(declare-fun b!2945020 () Bool)

(assert (=> b!2945020 (= e!1855462 (= (nullable!2891 lt!1031070) (nullable!2891 (regTwo!18770 r!17423))))))

(assert (= (and d!840486 c!481667) b!2945016))

(assert (= (and d!840486 (not c!481667)) b!2945012))

(assert (= (and b!2945012 c!481666) b!2945014))

(assert (= (and b!2945012 (not c!481666)) b!2944999))

(assert (= (and b!2944999 c!481673) b!2945011))

(assert (= (and b!2944999 (not c!481673)) b!2945019))

(assert (= (and b!2945019 c!481672) b!2945010))

(assert (= (and b!2945019 (not c!481672)) b!2944997))

(assert (= (and b!2945010 (not res!1215476)) b!2945013))

(assert (= (and b!2945010 c!481668) b!2945006))

(assert (= (and b!2945010 (not c!481668)) b!2945005))

(assert (= (and b!2944997 c!481664) b!2945000))

(assert (= (and b!2944997 (not c!481664)) b!2945001))

(assert (= (and b!2945000 c!481674) b!2945004))

(assert (= (and b!2945000 (not c!481674)) b!2945008))

(assert (= (and b!2945008 c!481665) b!2945009))

(assert (= (and b!2945008 (not c!481665)) b!2945015))

(assert (= (and b!2945001 (not res!1215478)) b!2944996))

(assert (= (and b!2945001 c!481670) b!2945018))

(assert (= (and b!2945001 (not c!481670)) b!2945017))

(assert (= (and b!2945017 c!481671) b!2945002))

(assert (= (and b!2945017 (not c!481671)) b!2944998))

(assert (= (and b!2944998 c!481669) b!2945003))

(assert (= (and b!2944998 (not c!481669)) b!2945007))

(assert (= (or b!2945000 b!2945001) bm!194150))

(assert (= (or b!2945000 b!2945001) bm!194152))

(assert (= (or b!2945008 b!2945001) bm!194154))

(assert (= (or b!2945000 b!2944996) bm!194153))

(assert (= (or b!2945013 b!2944998) bm!194149))

(assert (= (or b!2945010 bm!194150) bm!194151))

(assert (= (or b!2945010 bm!194154) bm!194155))

(assert (= (and d!840486 res!1215477) b!2945020))

(declare-fun m!3327451 () Bool)

(assert (=> b!2945020 m!3327451))

(declare-fun m!3327453 () Bool)

(assert (=> b!2945020 m!3327453))

(declare-fun m!3327455 () Bool)

(assert (=> d!840486 m!3327455))

(declare-fun m!3327457 () Bool)

(assert (=> d!840486 m!3327457))

(declare-fun m!3327459 () Bool)

(assert (=> bm!194151 m!3327459))

(declare-fun m!3327461 () Bool)

(assert (=> bm!194155 m!3327461))

(declare-fun m!3327463 () Bool)

(assert (=> bm!194153 m!3327463))

(declare-fun m!3327465 () Bool)

(assert (=> bm!194152 m!3327465))

(declare-fun m!3327467 () Bool)

(assert (=> b!2945017 m!3327467))

(declare-fun m!3327469 () Bool)

(assert (=> bm!194149 m!3327469))

(assert (=> b!2944453 d!840486))

(declare-fun b!2945021 () Bool)

(declare-fun e!1855485 () Bool)

(declare-fun call!194164 () Bool)

(assert (=> b!2945021 (= e!1855485 call!194164)))

(declare-fun b!2945022 () Bool)

(declare-fun c!481675 () Bool)

(assert (=> b!2945022 (= c!481675 ((_ is Union!9129) (regOne!18770 r!17423)))))

(declare-fun e!1855475 () Regex!9129)

(declare-fun e!1855481 () Regex!9129)

(assert (=> b!2945022 (= e!1855475 e!1855481)))

(declare-fun b!2945023 () Bool)

(declare-fun e!1855477 () Regex!9129)

(declare-fun e!1855486 () Regex!9129)

(assert (=> b!2945023 (= e!1855477 e!1855486)))

(declare-fun c!481680 () Bool)

(declare-fun call!194165 () Bool)

(assert (=> b!2945023 (= c!481680 call!194165)))

(declare-fun lt!1031077 () Regex!9129)

(declare-fun lt!1031075 () Regex!9129)

(declare-fun c!481683 () Bool)

(declare-fun bm!194156 () Bool)

(assert (=> bm!194156 (= call!194165 (isEmptyExpr!332 (ite c!481683 lt!1031077 lt!1031075)))))

(declare-fun b!2945024 () Bool)

(declare-fun c!481684 () Bool)

(assert (=> b!2945024 (= c!481684 ((_ is EmptyExpr!9129) (regOne!18770 r!17423)))))

(declare-fun e!1855479 () Regex!9129)

(declare-fun e!1855478 () Regex!9129)

(assert (=> b!2945024 (= e!1855479 e!1855478)))

(declare-fun bm!194157 () Bool)

(declare-fun call!194161 () Regex!9129)

(declare-fun call!194162 () Regex!9129)

(assert (=> bm!194157 (= call!194161 call!194162)))

(declare-fun b!2945025 () Bool)

(declare-fun e!1855480 () Regex!9129)

(assert (=> b!2945025 (= e!1855481 e!1855480)))

(declare-fun lt!1031074 () Regex!9129)

(assert (=> b!2945025 (= lt!1031074 call!194161)))

(declare-fun lt!1031078 () Regex!9129)

(declare-fun call!194167 () Regex!9129)

(assert (=> b!2945025 (= lt!1031078 call!194167)))

(declare-fun c!481685 () Bool)

(assert (=> b!2945025 (= c!481685 call!194164)))

(declare-fun b!2945027 () Bool)

(assert (=> b!2945027 (= e!1855477 lt!1031075)))

(declare-fun b!2945028 () Bool)

(declare-fun lt!1031079 () Regex!9129)

(assert (=> b!2945028 (= e!1855486 lt!1031079)))

(declare-fun b!2945029 () Bool)

(assert (=> b!2945029 (= e!1855480 lt!1031078)))

(declare-fun b!2945030 () Bool)

(declare-fun e!1855473 () Regex!9129)

(assert (=> b!2945030 (= e!1855473 (Star!9129 lt!1031077))))

(declare-fun b!2945031 () Bool)

(assert (=> b!2945031 (= e!1855473 EmptyExpr!9129)))

(declare-fun b!2945032 () Bool)

(assert (=> b!2945032 (= e!1855486 (Concat!14450 lt!1031079 lt!1031075))))

(declare-fun b!2945033 () Bool)

(declare-fun c!481676 () Bool)

(declare-fun call!194166 () Bool)

(assert (=> b!2945033 (= c!481676 call!194166)))

(declare-fun e!1855484 () Regex!9129)

(assert (=> b!2945033 (= e!1855480 e!1855484)))

(declare-fun bm!194158 () Bool)

(assert (=> bm!194158 (= call!194162 (simplify!134 (ite c!481683 (reg!9458 (regOne!18770 r!17423)) (ite c!481675 (regOne!18771 (regOne!18770 r!17423)) (regTwo!18770 (regOne!18770 r!17423))))))))

(declare-fun bm!194159 () Bool)

(assert (=> bm!194159 (= call!194167 (simplify!134 (ite c!481675 (regTwo!18771 (regOne!18770 r!17423)) (regOne!18770 (regOne!18770 r!17423)))))))

(declare-fun b!2945034 () Bool)

(assert (=> b!2945034 (= e!1855484 lt!1031074)))

(declare-fun bm!194160 () Bool)

(assert (=> bm!194160 (= call!194164 (isEmptyLang!251 (ite c!481675 lt!1031074 lt!1031075)))))

(declare-fun b!2945035 () Bool)

(declare-fun c!481679 () Bool)

(declare-fun e!1855474 () Bool)

(assert (=> b!2945035 (= c!481679 e!1855474)))

(declare-fun res!1215479 () Bool)

(assert (=> b!2945035 (=> res!1215479 e!1855474)))

(declare-fun call!194163 () Bool)

(assert (=> b!2945035 (= res!1215479 call!194163)))

(assert (=> b!2945035 (= lt!1031077 call!194162)))

(assert (=> b!2945035 (= e!1855475 e!1855473)))

(declare-fun b!2945036 () Bool)

(assert (=> b!2945036 (= e!1855478 EmptyExpr!9129)))

(declare-fun b!2945037 () Bool)

(declare-fun e!1855482 () Regex!9129)

(assert (=> b!2945037 (= e!1855482 e!1855479)))

(declare-fun c!481677 () Bool)

(assert (=> b!2945037 (= c!481677 ((_ is ElementMatch!9129) (regOne!18770 r!17423)))))

(declare-fun bm!194161 () Bool)

(assert (=> bm!194161 (= call!194166 call!194163)))

(declare-fun b!2945038 () Bool)

(assert (=> b!2945038 (= e!1855474 call!194165)))

(declare-fun b!2945026 () Bool)

(declare-fun e!1855483 () Regex!9129)

(assert (=> b!2945026 (= e!1855481 e!1855483)))

(assert (=> b!2945026 (= lt!1031079 call!194167)))

(assert (=> b!2945026 (= lt!1031075 call!194161)))

(declare-fun res!1215481 () Bool)

(assert (=> b!2945026 (= res!1215481 call!194166)))

(assert (=> b!2945026 (=> res!1215481 e!1855485)))

(declare-fun c!481681 () Bool)

(assert (=> b!2945026 (= c!481681 e!1855485)))

(declare-fun d!840488 () Bool)

(declare-fun e!1855476 () Bool)

(assert (=> d!840488 e!1855476))

(declare-fun res!1215480 () Bool)

(assert (=> d!840488 (=> (not res!1215480) (not e!1855476))))

(declare-fun lt!1031076 () Regex!9129)

(assert (=> d!840488 (= res!1215480 (validRegex!3862 lt!1031076))))

(assert (=> d!840488 (= lt!1031076 e!1855482)))

(declare-fun c!481678 () Bool)

(assert (=> d!840488 (= c!481678 ((_ is EmptyLang!9129) (regOne!18770 r!17423)))))

(assert (=> d!840488 (validRegex!3862 (regOne!18770 r!17423))))

(assert (=> d!840488 (= (simplify!134 (regOne!18770 r!17423)) lt!1031076)))

(declare-fun b!2945039 () Bool)

(assert (=> b!2945039 (= e!1855479 (regOne!18770 r!17423))))

(declare-fun b!2945040 () Bool)

(assert (=> b!2945040 (= e!1855484 (Union!9129 lt!1031074 lt!1031078))))

(declare-fun b!2945041 () Bool)

(assert (=> b!2945041 (= e!1855482 EmptyLang!9129)))

(declare-fun b!2945042 () Bool)

(declare-fun c!481682 () Bool)

(assert (=> b!2945042 (= c!481682 (isEmptyExpr!332 lt!1031079))))

(assert (=> b!2945042 (= e!1855483 e!1855477)))

(declare-fun bm!194162 () Bool)

(assert (=> bm!194162 (= call!194163 (isEmptyLang!251 (ite c!481683 lt!1031077 (ite c!481675 lt!1031078 lt!1031079))))))

(declare-fun b!2945043 () Bool)

(assert (=> b!2945043 (= e!1855483 EmptyLang!9129)))

(declare-fun b!2945044 () Bool)

(assert (=> b!2945044 (= e!1855478 e!1855475)))

(assert (=> b!2945044 (= c!481683 ((_ is Star!9129) (regOne!18770 r!17423)))))

(declare-fun b!2945045 () Bool)

(assert (=> b!2945045 (= e!1855476 (= (nullable!2891 lt!1031076) (nullable!2891 (regOne!18770 r!17423))))))

(assert (= (and d!840488 c!481678) b!2945041))

(assert (= (and d!840488 (not c!481678)) b!2945037))

(assert (= (and b!2945037 c!481677) b!2945039))

(assert (= (and b!2945037 (not c!481677)) b!2945024))

(assert (= (and b!2945024 c!481684) b!2945036))

(assert (= (and b!2945024 (not c!481684)) b!2945044))

(assert (= (and b!2945044 c!481683) b!2945035))

(assert (= (and b!2945044 (not c!481683)) b!2945022))

(assert (= (and b!2945035 (not res!1215479)) b!2945038))

(assert (= (and b!2945035 c!481679) b!2945031))

(assert (= (and b!2945035 (not c!481679)) b!2945030))

(assert (= (and b!2945022 c!481675) b!2945025))

(assert (= (and b!2945022 (not c!481675)) b!2945026))

(assert (= (and b!2945025 c!481685) b!2945029))

(assert (= (and b!2945025 (not c!481685)) b!2945033))

(assert (= (and b!2945033 c!481676) b!2945034))

(assert (= (and b!2945033 (not c!481676)) b!2945040))

(assert (= (and b!2945026 (not res!1215481)) b!2945021))

(assert (= (and b!2945026 c!481681) b!2945043))

(assert (= (and b!2945026 (not c!481681)) b!2945042))

(assert (= (and b!2945042 c!481682) b!2945027))

(assert (= (and b!2945042 (not c!481682)) b!2945023))

(assert (= (and b!2945023 c!481680) b!2945028))

(assert (= (and b!2945023 (not c!481680)) b!2945032))

(assert (= (or b!2945025 b!2945026) bm!194157))

(assert (= (or b!2945025 b!2945026) bm!194159))

(assert (= (or b!2945033 b!2945026) bm!194161))

(assert (= (or b!2945025 b!2945021) bm!194160))

(assert (= (or b!2945038 b!2945023) bm!194156))

(assert (= (or b!2945035 bm!194157) bm!194158))

(assert (= (or b!2945035 bm!194161) bm!194162))

(assert (= (and d!840488 res!1215480) b!2945045))

(declare-fun m!3327471 () Bool)

(assert (=> b!2945045 m!3327471))

(declare-fun m!3327473 () Bool)

(assert (=> b!2945045 m!3327473))

(declare-fun m!3327475 () Bool)

(assert (=> d!840488 m!3327475))

(declare-fun m!3327477 () Bool)

(assert (=> d!840488 m!3327477))

(declare-fun m!3327479 () Bool)

(assert (=> bm!194158 m!3327479))

(declare-fun m!3327481 () Bool)

(assert (=> bm!194162 m!3327481))

(declare-fun m!3327483 () Bool)

(assert (=> bm!194160 m!3327483))

(declare-fun m!3327485 () Bool)

(assert (=> bm!194159 m!3327485))

(declare-fun m!3327487 () Bool)

(assert (=> b!2945042 m!3327487))

(declare-fun m!3327489 () Bool)

(assert (=> bm!194156 m!3327489))

(assert (=> b!2944453 d!840488))

(declare-fun b!2945046 () Bool)

(declare-fun res!1215482 () Bool)

(declare-fun e!1855489 () Bool)

(assert (=> b!2945046 (=> (not res!1215482) (not e!1855489))))

(declare-fun call!194169 () Bool)

(assert (=> b!2945046 (= res!1215482 call!194169)))

(declare-fun e!1855490 () Bool)

(assert (=> b!2945046 (= e!1855490 e!1855489)))

(declare-fun b!2945047 () Bool)

(declare-fun e!1855488 () Bool)

(declare-fun call!194170 () Bool)

(assert (=> b!2945047 (= e!1855488 call!194170)))

(declare-fun b!2945048 () Bool)

(declare-fun e!1855491 () Bool)

(assert (=> b!2945048 (= e!1855491 call!194169)))

(declare-fun bm!194163 () Bool)

(declare-fun call!194168 () Bool)

(declare-fun c!481686 () Bool)

(assert (=> bm!194163 (= call!194168 (validRegex!3862 (ite c!481686 (regTwo!18771 r!17423) (regOne!18770 r!17423))))))

(declare-fun c!481687 () Bool)

(declare-fun bm!194164 () Bool)

(assert (=> bm!194164 (= call!194170 (validRegex!3862 (ite c!481687 (reg!9458 r!17423) (ite c!481686 (regOne!18771 r!17423) (regTwo!18770 r!17423)))))))

(declare-fun b!2945049 () Bool)

(declare-fun e!1855487 () Bool)

(declare-fun e!1855492 () Bool)

(assert (=> b!2945049 (= e!1855487 e!1855492)))

(assert (=> b!2945049 (= c!481687 ((_ is Star!9129) r!17423))))

(declare-fun d!840490 () Bool)

(declare-fun res!1215485 () Bool)

(assert (=> d!840490 (=> res!1215485 e!1855487)))

(assert (=> d!840490 (= res!1215485 ((_ is ElementMatch!9129) r!17423))))

(assert (=> d!840490 (= (validRegex!3862 r!17423) e!1855487)))

(declare-fun b!2945050 () Bool)

(declare-fun res!1215483 () Bool)

(declare-fun e!1855493 () Bool)

(assert (=> b!2945050 (=> res!1215483 e!1855493)))

(assert (=> b!2945050 (= res!1215483 (not ((_ is Concat!14450) r!17423)))))

(assert (=> b!2945050 (= e!1855490 e!1855493)))

(declare-fun b!2945051 () Bool)

(assert (=> b!2945051 (= e!1855493 e!1855491)))

(declare-fun res!1215486 () Bool)

(assert (=> b!2945051 (=> (not res!1215486) (not e!1855491))))

(assert (=> b!2945051 (= res!1215486 call!194168)))

(declare-fun b!2945052 () Bool)

(assert (=> b!2945052 (= e!1855492 e!1855488)))

(declare-fun res!1215484 () Bool)

(assert (=> b!2945052 (= res!1215484 (not (nullable!2891 (reg!9458 r!17423))))))

(assert (=> b!2945052 (=> (not res!1215484) (not e!1855488))))

(declare-fun b!2945053 () Bool)

(assert (=> b!2945053 (= e!1855492 e!1855490)))

(assert (=> b!2945053 (= c!481686 ((_ is Union!9129) r!17423))))

(declare-fun b!2945054 () Bool)

(assert (=> b!2945054 (= e!1855489 call!194168)))

(declare-fun bm!194165 () Bool)

(assert (=> bm!194165 (= call!194169 call!194170)))

(assert (= (and d!840490 (not res!1215485)) b!2945049))

(assert (= (and b!2945049 c!481687) b!2945052))

(assert (= (and b!2945049 (not c!481687)) b!2945053))

(assert (= (and b!2945052 res!1215484) b!2945047))

(assert (= (and b!2945053 c!481686) b!2945046))

(assert (= (and b!2945053 (not c!481686)) b!2945050))

(assert (= (and b!2945046 res!1215482) b!2945054))

(assert (= (and b!2945050 (not res!1215483)) b!2945051))

(assert (= (and b!2945051 res!1215486) b!2945048))

(assert (= (or b!2945046 b!2945048) bm!194165))

(assert (= (or b!2945054 b!2945051) bm!194163))

(assert (= (or b!2945047 bm!194165) bm!194164))

(declare-fun m!3327491 () Bool)

(assert (=> bm!194163 m!3327491))

(declare-fun m!3327493 () Bool)

(assert (=> bm!194164 m!3327493))

(declare-fun m!3327495 () Bool)

(assert (=> b!2945052 m!3327495))

(assert (=> start!285812 d!840490))

(declare-fun d!840492 () Bool)

(assert (=> d!840492 (= (matchR!4011 (regTwo!18770 r!17423) Nil!34870) (matchR!4011 (simplify!134 (regTwo!18770 r!17423)) Nil!34870))))

(declare-fun lt!1031082 () Unit!48637)

(declare-fun choose!17409 (Regex!9129 List!34994) Unit!48637)

(assert (=> d!840492 (= lt!1031082 (choose!17409 (regTwo!18770 r!17423) Nil!34870))))

(assert (=> d!840492 (validRegex!3862 (regTwo!18770 r!17423))))

(assert (=> d!840492 (= (lemmaSimplifySound!116 (regTwo!18770 r!17423) Nil!34870) lt!1031082)))

(declare-fun bs!525569 () Bool)

(assert (= bs!525569 d!840492))

(assert (=> bs!525569 m!3327277))

(assert (=> bs!525569 m!3327277))

(declare-fun m!3327497 () Bool)

(assert (=> bs!525569 m!3327497))

(assert (=> bs!525569 m!3327265))

(assert (=> bs!525569 m!3327457))

(declare-fun m!3327499 () Bool)

(assert (=> bs!525569 m!3327499))

(assert (=> b!2944458 d!840492))

(declare-fun d!840494 () Bool)

(assert (=> d!840494 (= (matchR!4011 (regOne!18770 r!17423) s!11993) (matchR!4011 (simplify!134 (regOne!18770 r!17423)) s!11993))))

(declare-fun lt!1031083 () Unit!48637)

(assert (=> d!840494 (= lt!1031083 (choose!17409 (regOne!18770 r!17423) s!11993))))

(assert (=> d!840494 (validRegex!3862 (regOne!18770 r!17423))))

(assert (=> d!840494 (= (lemmaSimplifySound!116 (regOne!18770 r!17423) s!11993) lt!1031083)))

(declare-fun bs!525570 () Bool)

(assert (= bs!525570 d!840494))

(assert (=> bs!525570 m!3327279))

(assert (=> bs!525570 m!3327279))

(declare-fun m!3327501 () Bool)

(assert (=> bs!525570 m!3327501))

(assert (=> bs!525570 m!3327259))

(assert (=> bs!525570 m!3327477))

(declare-fun m!3327503 () Bool)

(assert (=> bs!525570 m!3327503))

(assert (=> b!2944458 d!840494))

(declare-fun b!2945055 () Bool)

(declare-fun e!1855498 () Bool)

(declare-fun lt!1031084 () Bool)

(declare-fun call!194171 () Bool)

(assert (=> b!2945055 (= e!1855498 (= lt!1031084 call!194171))))

(declare-fun b!2945056 () Bool)

(declare-fun res!1215492 () Bool)

(declare-fun e!1855499 () Bool)

(assert (=> b!2945056 (=> res!1215492 e!1855499)))

(declare-fun e!1855496 () Bool)

(assert (=> b!2945056 (= res!1215492 e!1855496)))

(declare-fun res!1215490 () Bool)

(assert (=> b!2945056 (=> (not res!1215490) (not e!1855496))))

(assert (=> b!2945056 (= res!1215490 lt!1031084)))

(declare-fun b!2945057 () Bool)

(declare-fun e!1855497 () Bool)

(assert (=> b!2945057 (= e!1855497 (nullable!2891 (regOne!18770 r!17423)))))

(declare-fun b!2945058 () Bool)

(assert (=> b!2945058 (= e!1855497 (matchR!4011 (derivativeStep!2494 (regOne!18770 r!17423) (head!6553 s!11993)) (tail!4779 s!11993)))))

(declare-fun b!2945059 () Bool)

(declare-fun res!1215491 () Bool)

(assert (=> b!2945059 (=> (not res!1215491) (not e!1855496))))

(assert (=> b!2945059 (= res!1215491 (isEmpty!19131 (tail!4779 s!11993)))))

(declare-fun b!2945060 () Bool)

(declare-fun res!1215493 () Bool)

(declare-fun e!1855494 () Bool)

(assert (=> b!2945060 (=> res!1215493 e!1855494)))

(assert (=> b!2945060 (= res!1215493 (not (isEmpty!19131 (tail!4779 s!11993))))))

(declare-fun b!2945061 () Bool)

(declare-fun e!1855495 () Bool)

(assert (=> b!2945061 (= e!1855499 e!1855495)))

(declare-fun res!1215489 () Bool)

(assert (=> b!2945061 (=> (not res!1215489) (not e!1855495))))

(assert (=> b!2945061 (= res!1215489 (not lt!1031084))))

(declare-fun bm!194166 () Bool)

(assert (=> bm!194166 (= call!194171 (isEmpty!19131 s!11993))))

(declare-fun b!2945062 () Bool)

(declare-fun e!1855500 () Bool)

(assert (=> b!2945062 (= e!1855500 (not lt!1031084))))

(declare-fun b!2945063 () Bool)

(assert (=> b!2945063 (= e!1855494 (not (= (head!6553 s!11993) (c!481507 (regOne!18770 r!17423)))))))

(declare-fun d!840496 () Bool)

(assert (=> d!840496 e!1855498))

(declare-fun c!481688 () Bool)

(assert (=> d!840496 (= c!481688 ((_ is EmptyExpr!9129) (regOne!18770 r!17423)))))

(assert (=> d!840496 (= lt!1031084 e!1855497)))

(declare-fun c!481690 () Bool)

(assert (=> d!840496 (= c!481690 (isEmpty!19131 s!11993))))

(assert (=> d!840496 (validRegex!3862 (regOne!18770 r!17423))))

(assert (=> d!840496 (= (matchR!4011 (regOne!18770 r!17423) s!11993) lt!1031084)))

(declare-fun b!2945064 () Bool)

(declare-fun res!1215494 () Bool)

(assert (=> b!2945064 (=> res!1215494 e!1855499)))

(assert (=> b!2945064 (= res!1215494 (not ((_ is ElementMatch!9129) (regOne!18770 r!17423))))))

(assert (=> b!2945064 (= e!1855500 e!1855499)))

(declare-fun b!2945065 () Bool)

(assert (=> b!2945065 (= e!1855498 e!1855500)))

(declare-fun c!481689 () Bool)

(assert (=> b!2945065 (= c!481689 ((_ is EmptyLang!9129) (regOne!18770 r!17423)))))

(declare-fun b!2945066 () Bool)

(assert (=> b!2945066 (= e!1855496 (= (head!6553 s!11993) (c!481507 (regOne!18770 r!17423))))))

(declare-fun b!2945067 () Bool)

(declare-fun res!1215488 () Bool)

(assert (=> b!2945067 (=> (not res!1215488) (not e!1855496))))

(assert (=> b!2945067 (= res!1215488 (not call!194171))))

(declare-fun b!2945068 () Bool)

(assert (=> b!2945068 (= e!1855495 e!1855494)))

(declare-fun res!1215487 () Bool)

(assert (=> b!2945068 (=> res!1215487 e!1855494)))

(assert (=> b!2945068 (= res!1215487 call!194171)))

(assert (= (and d!840496 c!481690) b!2945057))

(assert (= (and d!840496 (not c!481690)) b!2945058))

(assert (= (and d!840496 c!481688) b!2945055))

(assert (= (and d!840496 (not c!481688)) b!2945065))

(assert (= (and b!2945065 c!481689) b!2945062))

(assert (= (and b!2945065 (not c!481689)) b!2945064))

(assert (= (and b!2945064 (not res!1215494)) b!2945056))

(assert (= (and b!2945056 res!1215490) b!2945067))

(assert (= (and b!2945067 res!1215488) b!2945059))

(assert (= (and b!2945059 res!1215491) b!2945066))

(assert (= (and b!2945056 (not res!1215492)) b!2945061))

(assert (= (and b!2945061 res!1215489) b!2945068))

(assert (= (and b!2945068 (not res!1215487)) b!2945060))

(assert (= (and b!2945060 (not res!1215493)) b!2945063))

(assert (= (or b!2945055 b!2945067 b!2945068) bm!194166))

(assert (=> b!2945057 m!3327473))

(assert (=> d!840496 m!3327253))

(assert (=> d!840496 m!3327477))

(assert (=> b!2945066 m!3327439))

(assert (=> bm!194166 m!3327253))

(assert (=> b!2945059 m!3327441))

(assert (=> b!2945059 m!3327441))

(assert (=> b!2945059 m!3327443))

(assert (=> b!2945058 m!3327439))

(assert (=> b!2945058 m!3327439))

(declare-fun m!3327505 () Bool)

(assert (=> b!2945058 m!3327505))

(assert (=> b!2945058 m!3327441))

(assert (=> b!2945058 m!3327505))

(assert (=> b!2945058 m!3327441))

(declare-fun m!3327507 () Bool)

(assert (=> b!2945058 m!3327507))

(assert (=> b!2945063 m!3327439))

(assert (=> b!2945060 m!3327441))

(assert (=> b!2945060 m!3327441))

(assert (=> b!2945060 m!3327443))

(assert (=> b!2944458 d!840496))

(declare-fun b!2945069 () Bool)

(declare-fun e!1855505 () Bool)

(declare-fun lt!1031085 () Bool)

(declare-fun call!194172 () Bool)

(assert (=> b!2945069 (= e!1855505 (= lt!1031085 call!194172))))

(declare-fun b!2945070 () Bool)

(declare-fun res!1215500 () Bool)

(declare-fun e!1855506 () Bool)

(assert (=> b!2945070 (=> res!1215500 e!1855506)))

(declare-fun e!1855503 () Bool)

(assert (=> b!2945070 (= res!1215500 e!1855503)))

(declare-fun res!1215498 () Bool)

(assert (=> b!2945070 (=> (not res!1215498) (not e!1855503))))

(assert (=> b!2945070 (= res!1215498 lt!1031085)))

(declare-fun b!2945071 () Bool)

(declare-fun e!1855504 () Bool)

(assert (=> b!2945071 (= e!1855504 (nullable!2891 (regTwo!18770 r!17423)))))

(declare-fun b!2945072 () Bool)

(assert (=> b!2945072 (= e!1855504 (matchR!4011 (derivativeStep!2494 (regTwo!18770 r!17423) (head!6553 Nil!34870)) (tail!4779 Nil!34870)))))

(declare-fun b!2945073 () Bool)

(declare-fun res!1215499 () Bool)

(assert (=> b!2945073 (=> (not res!1215499) (not e!1855503))))

(assert (=> b!2945073 (= res!1215499 (isEmpty!19131 (tail!4779 Nil!34870)))))

(declare-fun b!2945074 () Bool)

(declare-fun res!1215501 () Bool)

(declare-fun e!1855501 () Bool)

(assert (=> b!2945074 (=> res!1215501 e!1855501)))

(assert (=> b!2945074 (= res!1215501 (not (isEmpty!19131 (tail!4779 Nil!34870))))))

(declare-fun b!2945075 () Bool)

(declare-fun e!1855502 () Bool)

(assert (=> b!2945075 (= e!1855506 e!1855502)))

(declare-fun res!1215497 () Bool)

(assert (=> b!2945075 (=> (not res!1215497) (not e!1855502))))

(assert (=> b!2945075 (= res!1215497 (not lt!1031085))))

(declare-fun bm!194167 () Bool)

(assert (=> bm!194167 (= call!194172 (isEmpty!19131 Nil!34870))))

(declare-fun b!2945076 () Bool)

(declare-fun e!1855507 () Bool)

(assert (=> b!2945076 (= e!1855507 (not lt!1031085))))

(declare-fun b!2945077 () Bool)

(assert (=> b!2945077 (= e!1855501 (not (= (head!6553 Nil!34870) (c!481507 (regTwo!18770 r!17423)))))))

(declare-fun d!840498 () Bool)

(assert (=> d!840498 e!1855505))

(declare-fun c!481691 () Bool)

(assert (=> d!840498 (= c!481691 ((_ is EmptyExpr!9129) (regTwo!18770 r!17423)))))

(assert (=> d!840498 (= lt!1031085 e!1855504)))

(declare-fun c!481693 () Bool)

(assert (=> d!840498 (= c!481693 (isEmpty!19131 Nil!34870))))

(assert (=> d!840498 (validRegex!3862 (regTwo!18770 r!17423))))

(assert (=> d!840498 (= (matchR!4011 (regTwo!18770 r!17423) Nil!34870) lt!1031085)))

(declare-fun b!2945078 () Bool)

(declare-fun res!1215502 () Bool)

(assert (=> b!2945078 (=> res!1215502 e!1855506)))

(assert (=> b!2945078 (= res!1215502 (not ((_ is ElementMatch!9129) (regTwo!18770 r!17423))))))

(assert (=> b!2945078 (= e!1855507 e!1855506)))

(declare-fun b!2945079 () Bool)

(assert (=> b!2945079 (= e!1855505 e!1855507)))

(declare-fun c!481692 () Bool)

(assert (=> b!2945079 (= c!481692 ((_ is EmptyLang!9129) (regTwo!18770 r!17423)))))

(declare-fun b!2945080 () Bool)

(assert (=> b!2945080 (= e!1855503 (= (head!6553 Nil!34870) (c!481507 (regTwo!18770 r!17423))))))

(declare-fun b!2945081 () Bool)

(declare-fun res!1215496 () Bool)

(assert (=> b!2945081 (=> (not res!1215496) (not e!1855503))))

(assert (=> b!2945081 (= res!1215496 (not call!194172))))

(declare-fun b!2945082 () Bool)

(assert (=> b!2945082 (= e!1855502 e!1855501)))

(declare-fun res!1215495 () Bool)

(assert (=> b!2945082 (=> res!1215495 e!1855501)))

(assert (=> b!2945082 (= res!1215495 call!194172)))

(assert (= (and d!840498 c!481693) b!2945071))

(assert (= (and d!840498 (not c!481693)) b!2945072))

(assert (= (and d!840498 c!481691) b!2945069))

(assert (= (and d!840498 (not c!481691)) b!2945079))

(assert (= (and b!2945079 c!481692) b!2945076))

(assert (= (and b!2945079 (not c!481692)) b!2945078))

(assert (= (and b!2945078 (not res!1215502)) b!2945070))

(assert (= (and b!2945070 res!1215498) b!2945081))

(assert (= (and b!2945081 res!1215496) b!2945073))

(assert (= (and b!2945073 res!1215499) b!2945080))

(assert (= (and b!2945070 (not res!1215500)) b!2945075))

(assert (= (and b!2945075 res!1215497) b!2945082))

(assert (= (and b!2945082 (not res!1215495)) b!2945074))

(assert (= (and b!2945074 (not res!1215501)) b!2945077))

(assert (= (or b!2945069 b!2945081 b!2945082) bm!194167))

(assert (=> b!2945071 m!3327453))

(declare-fun m!3327509 () Bool)

(assert (=> d!840498 m!3327509))

(assert (=> d!840498 m!3327457))

(declare-fun m!3327511 () Bool)

(assert (=> b!2945080 m!3327511))

(assert (=> bm!194167 m!3327509))

(declare-fun m!3327513 () Bool)

(assert (=> b!2945073 m!3327513))

(assert (=> b!2945073 m!3327513))

(declare-fun m!3327515 () Bool)

(assert (=> b!2945073 m!3327515))

(assert (=> b!2945072 m!3327511))

(assert (=> b!2945072 m!3327511))

(declare-fun m!3327517 () Bool)

(assert (=> b!2945072 m!3327517))

(assert (=> b!2945072 m!3327513))

(assert (=> b!2945072 m!3327517))

(assert (=> b!2945072 m!3327513))

(declare-fun m!3327519 () Bool)

(assert (=> b!2945072 m!3327519))

(assert (=> b!2945077 m!3327511))

(assert (=> b!2945074 m!3327513))

(assert (=> b!2945074 m!3327513))

(assert (=> b!2945074 m!3327515))

(assert (=> b!2944458 d!840498))

(declare-fun b!2945083 () Bool)

(declare-fun e!1855512 () Bool)

(declare-fun lt!1031086 () Bool)

(declare-fun call!194173 () Bool)

(assert (=> b!2945083 (= e!1855512 (= lt!1031086 call!194173))))

(declare-fun b!2945084 () Bool)

(declare-fun res!1215508 () Bool)

(declare-fun e!1855513 () Bool)

(assert (=> b!2945084 (=> res!1215508 e!1855513)))

(declare-fun e!1855510 () Bool)

(assert (=> b!2945084 (= res!1215508 e!1855510)))

(declare-fun res!1215506 () Bool)

(assert (=> b!2945084 (=> (not res!1215506) (not e!1855510))))

(assert (=> b!2945084 (= res!1215506 lt!1031086)))

(declare-fun b!2945085 () Bool)

(declare-fun e!1855511 () Bool)

(assert (=> b!2945085 (= e!1855511 (nullable!2891 lt!1030995))))

(declare-fun b!2945086 () Bool)

(assert (=> b!2945086 (= e!1855511 (matchR!4011 (derivativeStep!2494 lt!1030995 (head!6553 Nil!34870)) (tail!4779 Nil!34870)))))

(declare-fun b!2945087 () Bool)

(declare-fun res!1215507 () Bool)

(assert (=> b!2945087 (=> (not res!1215507) (not e!1855510))))

(assert (=> b!2945087 (= res!1215507 (isEmpty!19131 (tail!4779 Nil!34870)))))

(declare-fun b!2945088 () Bool)

(declare-fun res!1215509 () Bool)

(declare-fun e!1855508 () Bool)

(assert (=> b!2945088 (=> res!1215509 e!1855508)))

(assert (=> b!2945088 (= res!1215509 (not (isEmpty!19131 (tail!4779 Nil!34870))))))

(declare-fun b!2945089 () Bool)

(declare-fun e!1855509 () Bool)

(assert (=> b!2945089 (= e!1855513 e!1855509)))

(declare-fun res!1215505 () Bool)

(assert (=> b!2945089 (=> (not res!1215505) (not e!1855509))))

(assert (=> b!2945089 (= res!1215505 (not lt!1031086))))

(declare-fun bm!194168 () Bool)

(assert (=> bm!194168 (= call!194173 (isEmpty!19131 Nil!34870))))

(declare-fun b!2945090 () Bool)

(declare-fun e!1855514 () Bool)

(assert (=> b!2945090 (= e!1855514 (not lt!1031086))))

(declare-fun b!2945091 () Bool)

(assert (=> b!2945091 (= e!1855508 (not (= (head!6553 Nil!34870) (c!481507 lt!1030995))))))

(declare-fun d!840500 () Bool)

(assert (=> d!840500 e!1855512))

(declare-fun c!481694 () Bool)

(assert (=> d!840500 (= c!481694 ((_ is EmptyExpr!9129) lt!1030995))))

(assert (=> d!840500 (= lt!1031086 e!1855511)))

(declare-fun c!481696 () Bool)

(assert (=> d!840500 (= c!481696 (isEmpty!19131 Nil!34870))))

(assert (=> d!840500 (validRegex!3862 lt!1030995)))

(assert (=> d!840500 (= (matchR!4011 lt!1030995 Nil!34870) lt!1031086)))

(declare-fun b!2945092 () Bool)

(declare-fun res!1215510 () Bool)

(assert (=> b!2945092 (=> res!1215510 e!1855513)))

(assert (=> b!2945092 (= res!1215510 (not ((_ is ElementMatch!9129) lt!1030995)))))

(assert (=> b!2945092 (= e!1855514 e!1855513)))

(declare-fun b!2945093 () Bool)

(assert (=> b!2945093 (= e!1855512 e!1855514)))

(declare-fun c!481695 () Bool)

(assert (=> b!2945093 (= c!481695 ((_ is EmptyLang!9129) lt!1030995))))

(declare-fun b!2945094 () Bool)

(assert (=> b!2945094 (= e!1855510 (= (head!6553 Nil!34870) (c!481507 lt!1030995)))))

(declare-fun b!2945095 () Bool)

(declare-fun res!1215504 () Bool)

(assert (=> b!2945095 (=> (not res!1215504) (not e!1855510))))

(assert (=> b!2945095 (= res!1215504 (not call!194173))))

(declare-fun b!2945096 () Bool)

(assert (=> b!2945096 (= e!1855509 e!1855508)))

(declare-fun res!1215503 () Bool)

(assert (=> b!2945096 (=> res!1215503 e!1855508)))

(assert (=> b!2945096 (= res!1215503 call!194173)))

(assert (= (and d!840500 c!481696) b!2945085))

(assert (= (and d!840500 (not c!481696)) b!2945086))

(assert (= (and d!840500 c!481694) b!2945083))

(assert (= (and d!840500 (not c!481694)) b!2945093))

(assert (= (and b!2945093 c!481695) b!2945090))

(assert (= (and b!2945093 (not c!481695)) b!2945092))

(assert (= (and b!2945092 (not res!1215510)) b!2945084))

(assert (= (and b!2945084 res!1215506) b!2945095))

(assert (= (and b!2945095 res!1215504) b!2945087))

(assert (= (and b!2945087 res!1215507) b!2945094))

(assert (= (and b!2945084 (not res!1215508)) b!2945089))

(assert (= (and b!2945089 res!1215505) b!2945096))

(assert (= (and b!2945096 (not res!1215503)) b!2945088))

(assert (= (and b!2945088 (not res!1215509)) b!2945091))

(assert (= (or b!2945083 b!2945095 b!2945096) bm!194168))

(declare-fun m!3327521 () Bool)

(assert (=> b!2945085 m!3327521))

(assert (=> d!840500 m!3327509))

(declare-fun m!3327523 () Bool)

(assert (=> d!840500 m!3327523))

(assert (=> b!2945094 m!3327511))

(assert (=> bm!194168 m!3327509))

(assert (=> b!2945087 m!3327513))

(assert (=> b!2945087 m!3327513))

(assert (=> b!2945087 m!3327515))

(assert (=> b!2945086 m!3327511))

(assert (=> b!2945086 m!3327511))

(declare-fun m!3327525 () Bool)

(assert (=> b!2945086 m!3327525))

(assert (=> b!2945086 m!3327513))

(assert (=> b!2945086 m!3327525))

(assert (=> b!2945086 m!3327513))

(declare-fun m!3327527 () Bool)

(assert (=> b!2945086 m!3327527))

(assert (=> b!2945091 m!3327511))

(assert (=> b!2945088 m!3327513))

(assert (=> b!2945088 m!3327513))

(assert (=> b!2945088 m!3327515))

(assert (=> b!2944458 d!840500))

(declare-fun b!2945097 () Bool)

(declare-fun e!1855519 () Bool)

(declare-fun lt!1031087 () Bool)

(declare-fun call!194174 () Bool)

(assert (=> b!2945097 (= e!1855519 (= lt!1031087 call!194174))))

(declare-fun b!2945098 () Bool)

(declare-fun res!1215516 () Bool)

(declare-fun e!1855520 () Bool)

(assert (=> b!2945098 (=> res!1215516 e!1855520)))

(declare-fun e!1855517 () Bool)

(assert (=> b!2945098 (= res!1215516 e!1855517)))

(declare-fun res!1215514 () Bool)

(assert (=> b!2945098 (=> (not res!1215514) (not e!1855517))))

(assert (=> b!2945098 (= res!1215514 lt!1031087)))

(declare-fun b!2945099 () Bool)

(declare-fun e!1855518 () Bool)

(assert (=> b!2945099 (= e!1855518 (nullable!2891 lt!1030994))))

(declare-fun b!2945100 () Bool)

(assert (=> b!2945100 (= e!1855518 (matchR!4011 (derivativeStep!2494 lt!1030994 (head!6553 s!11993)) (tail!4779 s!11993)))))

(declare-fun b!2945101 () Bool)

(declare-fun res!1215515 () Bool)

(assert (=> b!2945101 (=> (not res!1215515) (not e!1855517))))

(assert (=> b!2945101 (= res!1215515 (isEmpty!19131 (tail!4779 s!11993)))))

(declare-fun b!2945102 () Bool)

(declare-fun res!1215517 () Bool)

(declare-fun e!1855515 () Bool)

(assert (=> b!2945102 (=> res!1215517 e!1855515)))

(assert (=> b!2945102 (= res!1215517 (not (isEmpty!19131 (tail!4779 s!11993))))))

(declare-fun b!2945103 () Bool)

(declare-fun e!1855516 () Bool)

(assert (=> b!2945103 (= e!1855520 e!1855516)))

(declare-fun res!1215513 () Bool)

(assert (=> b!2945103 (=> (not res!1215513) (not e!1855516))))

(assert (=> b!2945103 (= res!1215513 (not lt!1031087))))

(declare-fun bm!194169 () Bool)

(assert (=> bm!194169 (= call!194174 (isEmpty!19131 s!11993))))

(declare-fun b!2945104 () Bool)

(declare-fun e!1855521 () Bool)

(assert (=> b!2945104 (= e!1855521 (not lt!1031087))))

(declare-fun b!2945105 () Bool)

(assert (=> b!2945105 (= e!1855515 (not (= (head!6553 s!11993) (c!481507 lt!1030994))))))

(declare-fun d!840502 () Bool)

(assert (=> d!840502 e!1855519))

(declare-fun c!481697 () Bool)

(assert (=> d!840502 (= c!481697 ((_ is EmptyExpr!9129) lt!1030994))))

(assert (=> d!840502 (= lt!1031087 e!1855518)))

(declare-fun c!481699 () Bool)

(assert (=> d!840502 (= c!481699 (isEmpty!19131 s!11993))))

(assert (=> d!840502 (validRegex!3862 lt!1030994)))

(assert (=> d!840502 (= (matchR!4011 lt!1030994 s!11993) lt!1031087)))

(declare-fun b!2945106 () Bool)

(declare-fun res!1215518 () Bool)

(assert (=> b!2945106 (=> res!1215518 e!1855520)))

(assert (=> b!2945106 (= res!1215518 (not ((_ is ElementMatch!9129) lt!1030994)))))

(assert (=> b!2945106 (= e!1855521 e!1855520)))

(declare-fun b!2945107 () Bool)

(assert (=> b!2945107 (= e!1855519 e!1855521)))

(declare-fun c!481698 () Bool)

(assert (=> b!2945107 (= c!481698 ((_ is EmptyLang!9129) lt!1030994))))

(declare-fun b!2945108 () Bool)

(assert (=> b!2945108 (= e!1855517 (= (head!6553 s!11993) (c!481507 lt!1030994)))))

(declare-fun b!2945109 () Bool)

(declare-fun res!1215512 () Bool)

(assert (=> b!2945109 (=> (not res!1215512) (not e!1855517))))

(assert (=> b!2945109 (= res!1215512 (not call!194174))))

(declare-fun b!2945110 () Bool)

(assert (=> b!2945110 (= e!1855516 e!1855515)))

(declare-fun res!1215511 () Bool)

(assert (=> b!2945110 (=> res!1215511 e!1855515)))

(assert (=> b!2945110 (= res!1215511 call!194174)))

(assert (= (and d!840502 c!481699) b!2945099))

(assert (= (and d!840502 (not c!481699)) b!2945100))

(assert (= (and d!840502 c!481697) b!2945097))

(assert (= (and d!840502 (not c!481697)) b!2945107))

(assert (= (and b!2945107 c!481698) b!2945104))

(assert (= (and b!2945107 (not c!481698)) b!2945106))

(assert (= (and b!2945106 (not res!1215518)) b!2945098))

(assert (= (and b!2945098 res!1215514) b!2945109))

(assert (= (and b!2945109 res!1215512) b!2945101))

(assert (= (and b!2945101 res!1215515) b!2945108))

(assert (= (and b!2945098 (not res!1215516)) b!2945103))

(assert (= (and b!2945103 res!1215513) b!2945110))

(assert (= (and b!2945110 (not res!1215511)) b!2945102))

(assert (= (and b!2945102 (not res!1215517)) b!2945105))

(assert (= (or b!2945097 b!2945109 b!2945110) bm!194169))

(declare-fun m!3327529 () Bool)

(assert (=> b!2945099 m!3327529))

(assert (=> d!840502 m!3327253))

(declare-fun m!3327531 () Bool)

(assert (=> d!840502 m!3327531))

(assert (=> b!2945108 m!3327439))

(assert (=> bm!194169 m!3327253))

(assert (=> b!2945101 m!3327441))

(assert (=> b!2945101 m!3327441))

(assert (=> b!2945101 m!3327443))

(assert (=> b!2945100 m!3327439))

(assert (=> b!2945100 m!3327439))

(declare-fun m!3327533 () Bool)

(assert (=> b!2945100 m!3327533))

(assert (=> b!2945100 m!3327441))

(assert (=> b!2945100 m!3327533))

(assert (=> b!2945100 m!3327441))

(declare-fun m!3327535 () Bool)

(assert (=> b!2945100 m!3327535))

(assert (=> b!2945105 m!3327439))

(assert (=> b!2945102 m!3327441))

(assert (=> b!2945102 m!3327441))

(assert (=> b!2945102 m!3327443))

(assert (=> b!2944458 d!840502))

(declare-fun d!840504 () Bool)

(assert (=> d!840504 (= (isEmptyLang!251 lt!1030995) ((_ is EmptyLang!9129) lt!1030995))))

(assert (=> b!2944462 d!840504))

(declare-fun b!2945121 () Bool)

(declare-fun e!1855524 () Bool)

(assert (=> b!2945121 (= e!1855524 tp_is_empty!15821)))

(assert (=> b!2944452 (= tp!942072 e!1855524)))

(declare-fun b!2945122 () Bool)

(declare-fun tp!942130 () Bool)

(declare-fun tp!942128 () Bool)

(assert (=> b!2945122 (= e!1855524 (and tp!942130 tp!942128))))

(declare-fun b!2945123 () Bool)

(declare-fun tp!942129 () Bool)

(assert (=> b!2945123 (= e!1855524 tp!942129)))

(declare-fun b!2945124 () Bool)

(declare-fun tp!942126 () Bool)

(declare-fun tp!942127 () Bool)

(assert (=> b!2945124 (= e!1855524 (and tp!942126 tp!942127))))

(assert (= (and b!2944452 ((_ is ElementMatch!9129) (regOne!18771 r!17423))) b!2945121))

(assert (= (and b!2944452 ((_ is Concat!14450) (regOne!18771 r!17423))) b!2945122))

(assert (= (and b!2944452 ((_ is Star!9129) (regOne!18771 r!17423))) b!2945123))

(assert (= (and b!2944452 ((_ is Union!9129) (regOne!18771 r!17423))) b!2945124))

(declare-fun b!2945125 () Bool)

(declare-fun e!1855525 () Bool)

(assert (=> b!2945125 (= e!1855525 tp_is_empty!15821)))

(assert (=> b!2944452 (= tp!942077 e!1855525)))

(declare-fun b!2945126 () Bool)

(declare-fun tp!942135 () Bool)

(declare-fun tp!942133 () Bool)

(assert (=> b!2945126 (= e!1855525 (and tp!942135 tp!942133))))

(declare-fun b!2945127 () Bool)

(declare-fun tp!942134 () Bool)

(assert (=> b!2945127 (= e!1855525 tp!942134)))

(declare-fun b!2945128 () Bool)

(declare-fun tp!942131 () Bool)

(declare-fun tp!942132 () Bool)

(assert (=> b!2945128 (= e!1855525 (and tp!942131 tp!942132))))

(assert (= (and b!2944452 ((_ is ElementMatch!9129) (regTwo!18771 r!17423))) b!2945125))

(assert (= (and b!2944452 ((_ is Concat!14450) (regTwo!18771 r!17423))) b!2945126))

(assert (= (and b!2944452 ((_ is Star!9129) (regTwo!18771 r!17423))) b!2945127))

(assert (= (and b!2944452 ((_ is Union!9129) (regTwo!18771 r!17423))) b!2945128))

(declare-fun b!2945129 () Bool)

(declare-fun e!1855526 () Bool)

(assert (=> b!2945129 (= e!1855526 tp_is_empty!15821)))

(assert (=> b!2944451 (= tp!942073 e!1855526)))

(declare-fun b!2945130 () Bool)

(declare-fun tp!942140 () Bool)

(declare-fun tp!942138 () Bool)

(assert (=> b!2945130 (= e!1855526 (and tp!942140 tp!942138))))

(declare-fun b!2945131 () Bool)

(declare-fun tp!942139 () Bool)

(assert (=> b!2945131 (= e!1855526 tp!942139)))

(declare-fun b!2945132 () Bool)

(declare-fun tp!942136 () Bool)

(declare-fun tp!942137 () Bool)

(assert (=> b!2945132 (= e!1855526 (and tp!942136 tp!942137))))

(assert (= (and b!2944451 ((_ is ElementMatch!9129) (regOne!18770 r!17423))) b!2945129))

(assert (= (and b!2944451 ((_ is Concat!14450) (regOne!18770 r!17423))) b!2945130))

(assert (= (and b!2944451 ((_ is Star!9129) (regOne!18770 r!17423))) b!2945131))

(assert (= (and b!2944451 ((_ is Union!9129) (regOne!18770 r!17423))) b!2945132))

(declare-fun b!2945133 () Bool)

(declare-fun e!1855527 () Bool)

(assert (=> b!2945133 (= e!1855527 tp_is_empty!15821)))

(assert (=> b!2944451 (= tp!942076 e!1855527)))

(declare-fun b!2945134 () Bool)

(declare-fun tp!942145 () Bool)

(declare-fun tp!942143 () Bool)

(assert (=> b!2945134 (= e!1855527 (and tp!942145 tp!942143))))

(declare-fun b!2945135 () Bool)

(declare-fun tp!942144 () Bool)

(assert (=> b!2945135 (= e!1855527 tp!942144)))

(declare-fun b!2945136 () Bool)

(declare-fun tp!942141 () Bool)

(declare-fun tp!942142 () Bool)

(assert (=> b!2945136 (= e!1855527 (and tp!942141 tp!942142))))

(assert (= (and b!2944451 ((_ is ElementMatch!9129) (regTwo!18770 r!17423))) b!2945133))

(assert (= (and b!2944451 ((_ is Concat!14450) (regTwo!18770 r!17423))) b!2945134))

(assert (= (and b!2944451 ((_ is Star!9129) (regTwo!18770 r!17423))) b!2945135))

(assert (= (and b!2944451 ((_ is Union!9129) (regTwo!18770 r!17423))) b!2945136))

(declare-fun b!2945141 () Bool)

(declare-fun e!1855530 () Bool)

(declare-fun tp!942148 () Bool)

(assert (=> b!2945141 (= e!1855530 (and tp_is_empty!15821 tp!942148))))

(assert (=> b!2944456 (= tp!942075 e!1855530)))

(assert (= (and b!2944456 ((_ is Cons!34870) (t!234059 s!11993))) b!2945141))

(declare-fun b!2945142 () Bool)

(declare-fun e!1855531 () Bool)

(assert (=> b!2945142 (= e!1855531 tp_is_empty!15821)))

(assert (=> b!2944457 (= tp!942074 e!1855531)))

(declare-fun b!2945143 () Bool)

(declare-fun tp!942153 () Bool)

(declare-fun tp!942151 () Bool)

(assert (=> b!2945143 (= e!1855531 (and tp!942153 tp!942151))))

(declare-fun b!2945144 () Bool)

(declare-fun tp!942152 () Bool)

(assert (=> b!2945144 (= e!1855531 tp!942152)))

(declare-fun b!2945145 () Bool)

(declare-fun tp!942149 () Bool)

(declare-fun tp!942150 () Bool)

(assert (=> b!2945145 (= e!1855531 (and tp!942149 tp!942150))))

(assert (= (and b!2944457 ((_ is ElementMatch!9129) (reg!9458 r!17423))) b!2945142))

(assert (= (and b!2944457 ((_ is Concat!14450) (reg!9458 r!17423))) b!2945143))

(assert (= (and b!2944457 ((_ is Star!9129) (reg!9458 r!17423))) b!2945144))

(assert (= (and b!2944457 ((_ is Union!9129) (reg!9458 r!17423))) b!2945145))

(check-sat (not b!2945058) (not b!2945091) (not d!840494) (not b!2944984) (not b!2944941) (not b!2944986) (not b!2945074) (not b!2944587) (not bm!194077) (not d!840434) (not b!2945132) (not b!2945141) (not d!840500) (not b!2945088) (not bm!194079) (not b!2945124) (not b!2945102) (not bm!194166) (not b!2945071) (not bm!194159) (not b!2945144) (not b!2945131) (not b!2945134) (not bm!194073) (not b!2945085) (not b!2945087) (not bm!194075) (not d!840492) (not b!2945101) (not b!2945045) (not b!2945066) (not b!2944488) (not b!2945127) (not bm!194145) (not b!2945128) (not bm!194144) tp_is_empty!15821 (not b!2945099) (not b!2945086) (not bm!194168) (not d!840498) (not b!2945135) (not d!840496) (not b!2945060) (not d!840478) (not bm!194056) (not b!2945080) (not bm!194167) (not bm!194156) (not b!2945073) (not b!2944945) (not b!2945052) (not b!2945063) (not b!2945017) (not bm!194152) (not d!840502) (not b!2945145) (not bm!194164) (not bm!194149) (not bm!194169) (not bm!194153) (not b!2944987) (not bm!194162) (not bm!194163) (not b!2945072) (not b!2945077) (not b!2945136) (not bm!194160) (not b!2944584) (not bm!194148) (not bm!194057) (not bm!194158) (not bm!194151) (not b!2945123) (not d!840488) (not b!2945059) (not bm!194076) (not b!2945143) (not b!2945105) (not bm!194155) (not b!2945094) (not b!2945042) (not b!2944990) (not b!2945130) (not b!2945100) (not b!2945108) (not d!840476) (not b!2945122) (not b!2945126) (not b!2944993) (not b!2945020) (not b!2944985) (not b!2945057) (not d!840486))
(check-sat)
