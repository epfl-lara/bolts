; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243432 () Bool)

(assert start!243432)

(declare-fun b!2491473 () Bool)

(declare-fun e!1581516 () Bool)

(declare-datatypes ((C!14824 0))(
  ( (C!14825 (val!9064 Int)) )
))
(declare-datatypes ((Regex!7333 0))(
  ( (ElementMatch!7333 (c!396069 C!14824)) (Concat!12029 (regOne!15178 Regex!7333) (regTwo!15178 Regex!7333)) (EmptyExpr!7333) (Star!7333 (reg!7662 Regex!7333)) (EmptyLang!7333) (Union!7333 (regOne!15179 Regex!7333) (regTwo!15179 Regex!7333)) )
))
(declare-fun r!27340 () Regex!7333)

(declare-fun c!14016 () C!14824)

(declare-fun validRegex!2959 (Regex!7333) Bool)

(declare-fun derivativeStep!1902 (Regex!7333 C!14824) Regex!7333)

(assert (=> b!2491473 (= e!1581516 (not (validRegex!2959 (derivativeStep!1902 (regOne!15179 r!27340) c!14016))))))

(declare-fun b!2491474 () Bool)

(declare-fun res!1054158 () Bool)

(assert (=> b!2491474 (=> (not res!1054158) (not e!1581516))))

(declare-datatypes ((List!29398 0))(
  ( (Nil!29298) (Cons!29298 (h!34718 C!14824) (t!211097 List!29398)) )
))
(declare-fun tl!4068 () List!29398)

(declare-fun nullable!2250 (Regex!7333) Bool)

(declare-fun derivative!28 (Regex!7333 List!29398) Regex!7333)

(assert (=> b!2491474 (= res!1054158 (nullable!2250 (derivative!28 (derivativeStep!1902 r!27340 c!14016) tl!4068)))))

(declare-fun b!2491475 () Bool)

(declare-fun e!1581514 () Bool)

(declare-fun tp_is_empty!12521 () Bool)

(declare-fun tp!797837 () Bool)

(assert (=> b!2491475 (= e!1581514 (and tp_is_empty!12521 tp!797837))))

(declare-fun res!1054160 () Bool)

(assert (=> start!243432 (=> (not res!1054160) (not e!1581516))))

(assert (=> start!243432 (= res!1054160 (validRegex!2959 r!27340))))

(assert (=> start!243432 e!1581516))

(declare-fun e!1581515 () Bool)

(assert (=> start!243432 e!1581515))

(assert (=> start!243432 tp_is_empty!12521))

(assert (=> start!243432 e!1581514))

(declare-fun b!2491476 () Bool)

(declare-fun tp!797838 () Bool)

(declare-fun tp!797835 () Bool)

(assert (=> b!2491476 (= e!1581515 (and tp!797838 tp!797835))))

(declare-fun b!2491477 () Bool)

(declare-fun res!1054159 () Bool)

(assert (=> b!2491477 (=> (not res!1054159) (not e!1581516))))

(get-info :version)

(assert (=> b!2491477 (= res!1054159 (and (not ((_ is EmptyExpr!7333) r!27340)) (not ((_ is EmptyLang!7333) r!27340)) (not ((_ is ElementMatch!7333) r!27340)) ((_ is Union!7333) r!27340)))))

(declare-fun b!2491478 () Bool)

(assert (=> b!2491478 (= e!1581515 tp_is_empty!12521)))

(declare-fun b!2491479 () Bool)

(declare-fun tp!797834 () Bool)

(declare-fun tp!797833 () Bool)

(assert (=> b!2491479 (= e!1581515 (and tp!797834 tp!797833))))

(declare-fun b!2491480 () Bool)

(declare-fun tp!797836 () Bool)

(assert (=> b!2491480 (= e!1581515 tp!797836)))

(assert (= (and start!243432 res!1054160) b!2491474))

(assert (= (and b!2491474 res!1054158) b!2491477))

(assert (= (and b!2491477 res!1054159) b!2491473))

(assert (= (and start!243432 ((_ is ElementMatch!7333) r!27340)) b!2491478))

(assert (= (and start!243432 ((_ is Concat!12029) r!27340)) b!2491479))

(assert (= (and start!243432 ((_ is Star!7333) r!27340)) b!2491480))

(assert (= (and start!243432 ((_ is Union!7333) r!27340)) b!2491476))

(assert (= (and start!243432 ((_ is Cons!29298) tl!4068)) b!2491475))

(declare-fun m!2858129 () Bool)

(assert (=> b!2491473 m!2858129))

(assert (=> b!2491473 m!2858129))

(declare-fun m!2858131 () Bool)

(assert (=> b!2491473 m!2858131))

(declare-fun m!2858133 () Bool)

(assert (=> b!2491474 m!2858133))

(assert (=> b!2491474 m!2858133))

(declare-fun m!2858135 () Bool)

(assert (=> b!2491474 m!2858135))

(assert (=> b!2491474 m!2858135))

(declare-fun m!2858137 () Bool)

(assert (=> b!2491474 m!2858137))

(declare-fun m!2858139 () Bool)

(assert (=> start!243432 m!2858139))

(check-sat (not b!2491480) (not b!2491474) tp_is_empty!12521 (not b!2491475) (not b!2491476) (not b!2491473) (not b!2491479) (not start!243432))
(check-sat)
(get-model)

(declare-fun call!153211 () Bool)

(declare-fun bm!153204 () Bool)

(declare-fun c!396081 () Bool)

(declare-fun c!396080 () Bool)

(assert (=> bm!153204 (= call!153211 (validRegex!2959 (ite c!396081 (reg!7662 (derivativeStep!1902 (regOne!15179 r!27340) c!14016)) (ite c!396080 (regOne!15179 (derivativeStep!1902 (regOne!15179 r!27340) c!14016)) (regTwo!15178 (derivativeStep!1902 (regOne!15179 r!27340) c!14016))))))))

(declare-fun d!714454 () Bool)

(declare-fun res!1054186 () Bool)

(declare-fun e!1581553 () Bool)

(assert (=> d!714454 (=> res!1054186 e!1581553)))

(assert (=> d!714454 (= res!1054186 ((_ is ElementMatch!7333) (derivativeStep!1902 (regOne!15179 r!27340) c!14016)))))

(assert (=> d!714454 (= (validRegex!2959 (derivativeStep!1902 (regOne!15179 r!27340) c!14016)) e!1581553)))

(declare-fun b!2491526 () Bool)

(declare-fun e!1581557 () Bool)

(declare-fun e!1581555 () Bool)

(assert (=> b!2491526 (= e!1581557 e!1581555)))

(assert (=> b!2491526 (= c!396080 ((_ is Union!7333) (derivativeStep!1902 (regOne!15179 r!27340) c!14016)))))

(declare-fun b!2491527 () Bool)

(assert (=> b!2491527 (= e!1581553 e!1581557)))

(assert (=> b!2491527 (= c!396081 ((_ is Star!7333) (derivativeStep!1902 (regOne!15179 r!27340) c!14016)))))

(declare-fun b!2491528 () Bool)

(declare-fun res!1054189 () Bool)

(declare-fun e!1581552 () Bool)

(assert (=> b!2491528 (=> (not res!1054189) (not e!1581552))))

(declare-fun call!153210 () Bool)

(assert (=> b!2491528 (= res!1054189 call!153210)))

(assert (=> b!2491528 (= e!1581555 e!1581552)))

(declare-fun b!2491529 () Bool)

(declare-fun e!1581556 () Bool)

(assert (=> b!2491529 (= e!1581557 e!1581556)))

(declare-fun res!1054188 () Bool)

(assert (=> b!2491529 (= res!1054188 (not (nullable!2250 (reg!7662 (derivativeStep!1902 (regOne!15179 r!27340) c!14016)))))))

(assert (=> b!2491529 (=> (not res!1054188) (not e!1581556))))

(declare-fun call!153209 () Bool)

(declare-fun bm!153205 () Bool)

(assert (=> bm!153205 (= call!153209 (validRegex!2959 (ite c!396080 (regTwo!15179 (derivativeStep!1902 (regOne!15179 r!27340) c!14016)) (regOne!15178 (derivativeStep!1902 (regOne!15179 r!27340) c!14016)))))))

(declare-fun b!2491530 () Bool)

(declare-fun e!1581554 () Bool)

(declare-fun e!1581558 () Bool)

(assert (=> b!2491530 (= e!1581554 e!1581558)))

(declare-fun res!1054190 () Bool)

(assert (=> b!2491530 (=> (not res!1054190) (not e!1581558))))

(assert (=> b!2491530 (= res!1054190 call!153209)))

(declare-fun b!2491531 () Bool)

(assert (=> b!2491531 (= e!1581552 call!153209)))

(declare-fun b!2491532 () Bool)

(declare-fun res!1054187 () Bool)

(assert (=> b!2491532 (=> res!1054187 e!1581554)))

(assert (=> b!2491532 (= res!1054187 (not ((_ is Concat!12029) (derivativeStep!1902 (regOne!15179 r!27340) c!14016))))))

(assert (=> b!2491532 (= e!1581555 e!1581554)))

(declare-fun b!2491533 () Bool)

(assert (=> b!2491533 (= e!1581556 call!153211)))

(declare-fun bm!153206 () Bool)

(assert (=> bm!153206 (= call!153210 call!153211)))

(declare-fun b!2491534 () Bool)

(assert (=> b!2491534 (= e!1581558 call!153210)))

(assert (= (and d!714454 (not res!1054186)) b!2491527))

(assert (= (and b!2491527 c!396081) b!2491529))

(assert (= (and b!2491527 (not c!396081)) b!2491526))

(assert (= (and b!2491529 res!1054188) b!2491533))

(assert (= (and b!2491526 c!396080) b!2491528))

(assert (= (and b!2491526 (not c!396080)) b!2491532))

(assert (= (and b!2491528 res!1054189) b!2491531))

(assert (= (and b!2491532 (not res!1054187)) b!2491530))

(assert (= (and b!2491530 res!1054190) b!2491534))

(assert (= (or b!2491528 b!2491534) bm!153206))

(assert (= (or b!2491531 b!2491530) bm!153205))

(assert (= (or b!2491533 bm!153206) bm!153204))

(declare-fun m!2858147 () Bool)

(assert (=> bm!153204 m!2858147))

(declare-fun m!2858149 () Bool)

(assert (=> b!2491529 m!2858149))

(declare-fun m!2858151 () Bool)

(assert (=> bm!153205 m!2858151))

(assert (=> b!2491473 d!714454))

(declare-fun call!153235 () Regex!7333)

(declare-fun b!2491594 () Bool)

(declare-fun call!153238 () Regex!7333)

(declare-fun e!1581593 () Regex!7333)

(assert (=> b!2491594 (= e!1581593 (Union!7333 (Concat!12029 call!153238 (regTwo!15178 (regOne!15179 r!27340))) call!153235))))

(declare-fun bm!153230 () Bool)

(declare-fun call!153237 () Regex!7333)

(declare-fun call!153236 () Regex!7333)

(assert (=> bm!153230 (= call!153237 call!153236)))

(declare-fun d!714458 () Bool)

(declare-fun lt!893972 () Regex!7333)

(assert (=> d!714458 (validRegex!2959 lt!893972)))

(declare-fun e!1581595 () Regex!7333)

(assert (=> d!714458 (= lt!893972 e!1581595)))

(declare-fun c!396110 () Bool)

(assert (=> d!714458 (= c!396110 (or ((_ is EmptyExpr!7333) (regOne!15179 r!27340)) ((_ is EmptyLang!7333) (regOne!15179 r!27340))))))

(assert (=> d!714458 (validRegex!2959 (regOne!15179 r!27340))))

(assert (=> d!714458 (= (derivativeStep!1902 (regOne!15179 r!27340) c!14016) lt!893972)))

(declare-fun b!2491595 () Bool)

(declare-fun e!1581594 () Regex!7333)

(assert (=> b!2491595 (= e!1581594 (Union!7333 call!153235 call!153236))))

(declare-fun b!2491596 () Bool)

(assert (=> b!2491596 (= e!1581593 (Union!7333 (Concat!12029 call!153238 (regTwo!15178 (regOne!15179 r!27340))) EmptyLang!7333))))

(declare-fun b!2491597 () Bool)

(declare-fun e!1581592 () Regex!7333)

(assert (=> b!2491597 (= e!1581594 e!1581592)))

(declare-fun c!396113 () Bool)

(assert (=> b!2491597 (= c!396113 ((_ is Star!7333) (regOne!15179 r!27340)))))

(declare-fun c!396109 () Bool)

(declare-fun bm!153231 () Bool)

(assert (=> bm!153231 (= call!153235 (derivativeStep!1902 (ite c!396109 (regOne!15179 (regOne!15179 r!27340)) (regTwo!15178 (regOne!15179 r!27340))) c!14016))))

(declare-fun b!2491598 () Bool)

(declare-fun c!396111 () Bool)

(assert (=> b!2491598 (= c!396111 (nullable!2250 (regOne!15178 (regOne!15179 r!27340))))))

(assert (=> b!2491598 (= e!1581592 e!1581593)))

(declare-fun b!2491599 () Bool)

(declare-fun e!1581591 () Regex!7333)

(assert (=> b!2491599 (= e!1581591 (ite (= c!14016 (c!396069 (regOne!15179 r!27340))) EmptyExpr!7333 EmptyLang!7333))))

(declare-fun b!2491600 () Bool)

(assert (=> b!2491600 (= c!396109 ((_ is Union!7333) (regOne!15179 r!27340)))))

(assert (=> b!2491600 (= e!1581591 e!1581594)))

(declare-fun bm!153232 () Bool)

(assert (=> bm!153232 (= call!153238 call!153237)))

(declare-fun b!2491601 () Bool)

(assert (=> b!2491601 (= e!1581592 (Concat!12029 call!153237 (regOne!15179 r!27340)))))

(declare-fun b!2491602 () Bool)

(assert (=> b!2491602 (= e!1581595 e!1581591)))

(declare-fun c!396112 () Bool)

(assert (=> b!2491602 (= c!396112 ((_ is ElementMatch!7333) (regOne!15179 r!27340)))))

(declare-fun b!2491603 () Bool)

(assert (=> b!2491603 (= e!1581595 EmptyLang!7333)))

(declare-fun bm!153233 () Bool)

(assert (=> bm!153233 (= call!153236 (derivativeStep!1902 (ite c!396109 (regTwo!15179 (regOne!15179 r!27340)) (ite c!396113 (reg!7662 (regOne!15179 r!27340)) (regOne!15178 (regOne!15179 r!27340)))) c!14016))))

(assert (= (and d!714458 c!396110) b!2491603))

(assert (= (and d!714458 (not c!396110)) b!2491602))

(assert (= (and b!2491602 c!396112) b!2491599))

(assert (= (and b!2491602 (not c!396112)) b!2491600))

(assert (= (and b!2491600 c!396109) b!2491595))

(assert (= (and b!2491600 (not c!396109)) b!2491597))

(assert (= (and b!2491597 c!396113) b!2491601))

(assert (= (and b!2491597 (not c!396113)) b!2491598))

(assert (= (and b!2491598 c!396111) b!2491594))

(assert (= (and b!2491598 (not c!396111)) b!2491596))

(assert (= (or b!2491594 b!2491596) bm!153232))

(assert (= (or b!2491601 bm!153232) bm!153230))

(assert (= (or b!2491595 bm!153230) bm!153233))

(assert (= (or b!2491595 b!2491594) bm!153231))

(declare-fun m!2858169 () Bool)

(assert (=> d!714458 m!2858169))

(declare-fun m!2858171 () Bool)

(assert (=> d!714458 m!2858171))

(declare-fun m!2858173 () Bool)

(assert (=> bm!153231 m!2858173))

(declare-fun m!2858175 () Bool)

(assert (=> b!2491598 m!2858175))

(declare-fun m!2858177 () Bool)

(assert (=> bm!153233 m!2858177))

(assert (=> b!2491473 d!714458))

(declare-fun d!714464 () Bool)

(declare-fun nullableFct!554 (Regex!7333) Bool)

(assert (=> d!714464 (= (nullable!2250 (derivative!28 (derivativeStep!1902 r!27340 c!14016) tl!4068)) (nullableFct!554 (derivative!28 (derivativeStep!1902 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468369 () Bool)

(assert (= bs!468369 d!714464))

(assert (=> bs!468369 m!2858135))

(declare-fun m!2858181 () Bool)

(assert (=> bs!468369 m!2858181))

(assert (=> b!2491474 d!714464))

(declare-fun d!714468 () Bool)

(declare-fun lt!893979 () Regex!7333)

(assert (=> d!714468 (validRegex!2959 lt!893979)))

(declare-fun e!1581606 () Regex!7333)

(assert (=> d!714468 (= lt!893979 e!1581606)))

(declare-fun c!396124 () Bool)

(assert (=> d!714468 (= c!396124 ((_ is Cons!29298) tl!4068))))

(assert (=> d!714468 (validRegex!2959 (derivativeStep!1902 r!27340 c!14016))))

(assert (=> d!714468 (= (derivative!28 (derivativeStep!1902 r!27340 c!14016) tl!4068) lt!893979)))

(declare-fun b!2491624 () Bool)

(assert (=> b!2491624 (= e!1581606 (derivative!28 (derivativeStep!1902 (derivativeStep!1902 r!27340 c!14016) (h!34718 tl!4068)) (t!211097 tl!4068)))))

(declare-fun b!2491625 () Bool)

(assert (=> b!2491625 (= e!1581606 (derivativeStep!1902 r!27340 c!14016))))

(assert (= (and d!714468 c!396124) b!2491624))

(assert (= (and d!714468 (not c!396124)) b!2491625))

(declare-fun m!2858191 () Bool)

(assert (=> d!714468 m!2858191))

(assert (=> d!714468 m!2858133))

(declare-fun m!2858195 () Bool)

(assert (=> d!714468 m!2858195))

(assert (=> b!2491624 m!2858133))

(declare-fun m!2858199 () Bool)

(assert (=> b!2491624 m!2858199))

(assert (=> b!2491624 m!2858199))

(declare-fun m!2858205 () Bool)

(assert (=> b!2491624 m!2858205))

(assert (=> b!2491474 d!714468))

(declare-fun b!2491628 () Bool)

(declare-fun call!153246 () Regex!7333)

(declare-fun e!1581609 () Regex!7333)

(declare-fun call!153243 () Regex!7333)

(assert (=> b!2491628 (= e!1581609 (Union!7333 (Concat!12029 call!153246 (regTwo!15178 r!27340)) call!153243))))

(declare-fun bm!153238 () Bool)

(declare-fun call!153245 () Regex!7333)

(declare-fun call!153244 () Regex!7333)

(assert (=> bm!153238 (= call!153245 call!153244)))

(declare-fun d!714472 () Bool)

(declare-fun lt!893980 () Regex!7333)

(assert (=> d!714472 (validRegex!2959 lt!893980)))

(declare-fun e!1581611 () Regex!7333)

(assert (=> d!714472 (= lt!893980 e!1581611)))

(declare-fun c!396126 () Bool)

(assert (=> d!714472 (= c!396126 (or ((_ is EmptyExpr!7333) r!27340) ((_ is EmptyLang!7333) r!27340)))))

(assert (=> d!714472 (validRegex!2959 r!27340)))

(assert (=> d!714472 (= (derivativeStep!1902 r!27340 c!14016) lt!893980)))

(declare-fun b!2491631 () Bool)

(declare-fun e!1581610 () Regex!7333)

(assert (=> b!2491631 (= e!1581610 (Union!7333 call!153243 call!153244))))

(declare-fun b!2491632 () Bool)

(assert (=> b!2491632 (= e!1581609 (Union!7333 (Concat!12029 call!153246 (regTwo!15178 r!27340)) EmptyLang!7333))))

(declare-fun b!2491633 () Bool)

(declare-fun e!1581608 () Regex!7333)

(assert (=> b!2491633 (= e!1581610 e!1581608)))

(declare-fun c!396129 () Bool)

(assert (=> b!2491633 (= c!396129 ((_ is Star!7333) r!27340))))

(declare-fun c!396125 () Bool)

(declare-fun bm!153239 () Bool)

(assert (=> bm!153239 (= call!153243 (derivativeStep!1902 (ite c!396125 (regOne!15179 r!27340) (regTwo!15178 r!27340)) c!14016))))

(declare-fun b!2491634 () Bool)

(declare-fun c!396127 () Bool)

(assert (=> b!2491634 (= c!396127 (nullable!2250 (regOne!15178 r!27340)))))

(assert (=> b!2491634 (= e!1581608 e!1581609)))

(declare-fun b!2491635 () Bool)

(declare-fun e!1581607 () Regex!7333)

(assert (=> b!2491635 (= e!1581607 (ite (= c!14016 (c!396069 r!27340)) EmptyExpr!7333 EmptyLang!7333))))

(declare-fun b!2491636 () Bool)

(assert (=> b!2491636 (= c!396125 ((_ is Union!7333) r!27340))))

(assert (=> b!2491636 (= e!1581607 e!1581610)))

(declare-fun bm!153240 () Bool)

(assert (=> bm!153240 (= call!153246 call!153245)))

(declare-fun b!2491637 () Bool)

(assert (=> b!2491637 (= e!1581608 (Concat!12029 call!153245 r!27340))))

(declare-fun b!2491638 () Bool)

(assert (=> b!2491638 (= e!1581611 e!1581607)))

(declare-fun c!396128 () Bool)

(assert (=> b!2491638 (= c!396128 ((_ is ElementMatch!7333) r!27340))))

(declare-fun b!2491639 () Bool)

(assert (=> b!2491639 (= e!1581611 EmptyLang!7333)))

(declare-fun bm!153241 () Bool)

(assert (=> bm!153241 (= call!153244 (derivativeStep!1902 (ite c!396125 (regTwo!15179 r!27340) (ite c!396129 (reg!7662 r!27340) (regOne!15178 r!27340))) c!14016))))

(assert (= (and d!714472 c!396126) b!2491639))

(assert (= (and d!714472 (not c!396126)) b!2491638))

(assert (= (and b!2491638 c!396128) b!2491635))

(assert (= (and b!2491638 (not c!396128)) b!2491636))

(assert (= (and b!2491636 c!396125) b!2491631))

(assert (= (and b!2491636 (not c!396125)) b!2491633))

(assert (= (and b!2491633 c!396129) b!2491637))

(assert (= (and b!2491633 (not c!396129)) b!2491634))

(assert (= (and b!2491634 c!396127) b!2491628))

(assert (= (and b!2491634 (not c!396127)) b!2491632))

(assert (= (or b!2491628 b!2491632) bm!153240))

(assert (= (or b!2491637 bm!153240) bm!153238))

(assert (= (or b!2491631 bm!153238) bm!153241))

(assert (= (or b!2491631 b!2491628) bm!153239))

(declare-fun m!2858207 () Bool)

(assert (=> d!714472 m!2858207))

(assert (=> d!714472 m!2858139))

(declare-fun m!2858209 () Bool)

(assert (=> bm!153239 m!2858209))

(declare-fun m!2858211 () Bool)

(assert (=> b!2491634 m!2858211))

(declare-fun m!2858213 () Bool)

(assert (=> bm!153241 m!2858213))

(assert (=> b!2491474 d!714472))

(declare-fun bm!153242 () Bool)

(declare-fun c!396131 () Bool)

(declare-fun c!396130 () Bool)

(declare-fun call!153249 () Bool)

(assert (=> bm!153242 (= call!153249 (validRegex!2959 (ite c!396131 (reg!7662 r!27340) (ite c!396130 (regOne!15179 r!27340) (regTwo!15178 r!27340)))))))

(declare-fun d!714474 () Bool)

(declare-fun res!1054196 () Bool)

(declare-fun e!1581615 () Bool)

(assert (=> d!714474 (=> res!1054196 e!1581615)))

(assert (=> d!714474 (= res!1054196 ((_ is ElementMatch!7333) r!27340))))

(assert (=> d!714474 (= (validRegex!2959 r!27340) e!1581615)))

(declare-fun b!2491650 () Bool)

(declare-fun e!1581620 () Bool)

(declare-fun e!1581617 () Bool)

(assert (=> b!2491650 (= e!1581620 e!1581617)))

(assert (=> b!2491650 (= c!396130 ((_ is Union!7333) r!27340))))

(declare-fun b!2491651 () Bool)

(assert (=> b!2491651 (= e!1581615 e!1581620)))

(assert (=> b!2491651 (= c!396131 ((_ is Star!7333) r!27340))))

(declare-fun b!2491652 () Bool)

(declare-fun res!1054199 () Bool)

(declare-fun e!1581614 () Bool)

(assert (=> b!2491652 (=> (not res!1054199) (not e!1581614))))

(declare-fun call!153248 () Bool)

(assert (=> b!2491652 (= res!1054199 call!153248)))

(assert (=> b!2491652 (= e!1581617 e!1581614)))

(declare-fun b!2491653 () Bool)

(declare-fun e!1581618 () Bool)

(assert (=> b!2491653 (= e!1581620 e!1581618)))

(declare-fun res!1054198 () Bool)

(assert (=> b!2491653 (= res!1054198 (not (nullable!2250 (reg!7662 r!27340))))))

(assert (=> b!2491653 (=> (not res!1054198) (not e!1581618))))

(declare-fun bm!153243 () Bool)

(declare-fun call!153247 () Bool)

(assert (=> bm!153243 (= call!153247 (validRegex!2959 (ite c!396130 (regTwo!15179 r!27340) (regOne!15178 r!27340))))))

(declare-fun b!2491654 () Bool)

(declare-fun e!1581616 () Bool)

(declare-fun e!1581621 () Bool)

(assert (=> b!2491654 (= e!1581616 e!1581621)))

(declare-fun res!1054200 () Bool)

(assert (=> b!2491654 (=> (not res!1054200) (not e!1581621))))

(assert (=> b!2491654 (= res!1054200 call!153247)))

(declare-fun b!2491655 () Bool)

(assert (=> b!2491655 (= e!1581614 call!153247)))

(declare-fun b!2491656 () Bool)

(declare-fun res!1054197 () Bool)

(assert (=> b!2491656 (=> res!1054197 e!1581616)))

(assert (=> b!2491656 (= res!1054197 (not ((_ is Concat!12029) r!27340)))))

(assert (=> b!2491656 (= e!1581617 e!1581616)))

(declare-fun b!2491657 () Bool)

(assert (=> b!2491657 (= e!1581618 call!153249)))

(declare-fun bm!153244 () Bool)

(assert (=> bm!153244 (= call!153248 call!153249)))

(declare-fun b!2491658 () Bool)

(assert (=> b!2491658 (= e!1581621 call!153248)))

(assert (= (and d!714474 (not res!1054196)) b!2491651))

(assert (= (and b!2491651 c!396131) b!2491653))

(assert (= (and b!2491651 (not c!396131)) b!2491650))

(assert (= (and b!2491653 res!1054198) b!2491657))

(assert (= (and b!2491650 c!396130) b!2491652))

(assert (= (and b!2491650 (not c!396130)) b!2491656))

(assert (= (and b!2491652 res!1054199) b!2491655))

(assert (= (and b!2491656 (not res!1054197)) b!2491654))

(assert (= (and b!2491654 res!1054200) b!2491658))

(assert (= (or b!2491652 b!2491658) bm!153244))

(assert (= (or b!2491655 b!2491654) bm!153243))

(assert (= (or b!2491657 bm!153244) bm!153242))

(declare-fun m!2858215 () Bool)

(assert (=> bm!153242 m!2858215))

(declare-fun m!2858217 () Bool)

(assert (=> b!2491653 m!2858217))

(declare-fun m!2858219 () Bool)

(assert (=> bm!153243 m!2858219))

(assert (=> start!243432 d!714474))

(declare-fun e!1581631 () Bool)

(assert (=> b!2491480 (= tp!797836 e!1581631)))

(declare-fun b!2491690 () Bool)

(assert (=> b!2491690 (= e!1581631 tp_is_empty!12521)))

(declare-fun b!2491692 () Bool)

(declare-fun tp!797889 () Bool)

(assert (=> b!2491692 (= e!1581631 tp!797889)))

(declare-fun b!2491693 () Bool)

(declare-fun tp!797887 () Bool)

(declare-fun tp!797888 () Bool)

(assert (=> b!2491693 (= e!1581631 (and tp!797887 tp!797888))))

(declare-fun b!2491691 () Bool)

(declare-fun tp!797891 () Bool)

(declare-fun tp!797890 () Bool)

(assert (=> b!2491691 (= e!1581631 (and tp!797891 tp!797890))))

(assert (= (and b!2491480 ((_ is ElementMatch!7333) (reg!7662 r!27340))) b!2491690))

(assert (= (and b!2491480 ((_ is Concat!12029) (reg!7662 r!27340))) b!2491691))

(assert (= (and b!2491480 ((_ is Star!7333) (reg!7662 r!27340))) b!2491692))

(assert (= (and b!2491480 ((_ is Union!7333) (reg!7662 r!27340))) b!2491693))

(declare-fun e!1581632 () Bool)

(assert (=> b!2491479 (= tp!797834 e!1581632)))

(declare-fun b!2491694 () Bool)

(assert (=> b!2491694 (= e!1581632 tp_is_empty!12521)))

(declare-fun b!2491696 () Bool)

(declare-fun tp!797894 () Bool)

(assert (=> b!2491696 (= e!1581632 tp!797894)))

(declare-fun b!2491697 () Bool)

(declare-fun tp!797892 () Bool)

(declare-fun tp!797893 () Bool)

(assert (=> b!2491697 (= e!1581632 (and tp!797892 tp!797893))))

(declare-fun b!2491695 () Bool)

(declare-fun tp!797896 () Bool)

(declare-fun tp!797895 () Bool)

(assert (=> b!2491695 (= e!1581632 (and tp!797896 tp!797895))))

(assert (= (and b!2491479 ((_ is ElementMatch!7333) (regOne!15178 r!27340))) b!2491694))

(assert (= (and b!2491479 ((_ is Concat!12029) (regOne!15178 r!27340))) b!2491695))

(assert (= (and b!2491479 ((_ is Star!7333) (regOne!15178 r!27340))) b!2491696))

(assert (= (and b!2491479 ((_ is Union!7333) (regOne!15178 r!27340))) b!2491697))

(declare-fun e!1581633 () Bool)

(assert (=> b!2491479 (= tp!797833 e!1581633)))

(declare-fun b!2491698 () Bool)

(assert (=> b!2491698 (= e!1581633 tp_is_empty!12521)))

(declare-fun b!2491700 () Bool)

(declare-fun tp!797899 () Bool)

(assert (=> b!2491700 (= e!1581633 tp!797899)))

(declare-fun b!2491701 () Bool)

(declare-fun tp!797897 () Bool)

(declare-fun tp!797898 () Bool)

(assert (=> b!2491701 (= e!1581633 (and tp!797897 tp!797898))))

(declare-fun b!2491699 () Bool)

(declare-fun tp!797901 () Bool)

(declare-fun tp!797900 () Bool)

(assert (=> b!2491699 (= e!1581633 (and tp!797901 tp!797900))))

(assert (= (and b!2491479 ((_ is ElementMatch!7333) (regTwo!15178 r!27340))) b!2491698))

(assert (= (and b!2491479 ((_ is Concat!12029) (regTwo!15178 r!27340))) b!2491699))

(assert (= (and b!2491479 ((_ is Star!7333) (regTwo!15178 r!27340))) b!2491700))

(assert (= (and b!2491479 ((_ is Union!7333) (regTwo!15178 r!27340))) b!2491701))

(declare-fun e!1581634 () Bool)

(assert (=> b!2491476 (= tp!797838 e!1581634)))

(declare-fun b!2491702 () Bool)

(assert (=> b!2491702 (= e!1581634 tp_is_empty!12521)))

(declare-fun b!2491704 () Bool)

(declare-fun tp!797904 () Bool)

(assert (=> b!2491704 (= e!1581634 tp!797904)))

(declare-fun b!2491705 () Bool)

(declare-fun tp!797902 () Bool)

(declare-fun tp!797903 () Bool)

(assert (=> b!2491705 (= e!1581634 (and tp!797902 tp!797903))))

(declare-fun b!2491703 () Bool)

(declare-fun tp!797906 () Bool)

(declare-fun tp!797905 () Bool)

(assert (=> b!2491703 (= e!1581634 (and tp!797906 tp!797905))))

(assert (= (and b!2491476 ((_ is ElementMatch!7333) (regOne!15179 r!27340))) b!2491702))

(assert (= (and b!2491476 ((_ is Concat!12029) (regOne!15179 r!27340))) b!2491703))

(assert (= (and b!2491476 ((_ is Star!7333) (regOne!15179 r!27340))) b!2491704))

(assert (= (and b!2491476 ((_ is Union!7333) (regOne!15179 r!27340))) b!2491705))

(declare-fun e!1581635 () Bool)

(assert (=> b!2491476 (= tp!797835 e!1581635)))

(declare-fun b!2491706 () Bool)

(assert (=> b!2491706 (= e!1581635 tp_is_empty!12521)))

(declare-fun b!2491708 () Bool)

(declare-fun tp!797909 () Bool)

(assert (=> b!2491708 (= e!1581635 tp!797909)))

(declare-fun b!2491709 () Bool)

(declare-fun tp!797907 () Bool)

(declare-fun tp!797908 () Bool)

(assert (=> b!2491709 (= e!1581635 (and tp!797907 tp!797908))))

(declare-fun b!2491707 () Bool)

(declare-fun tp!797911 () Bool)

(declare-fun tp!797910 () Bool)

(assert (=> b!2491707 (= e!1581635 (and tp!797911 tp!797910))))

(assert (= (and b!2491476 ((_ is ElementMatch!7333) (regTwo!15179 r!27340))) b!2491706))

(assert (= (and b!2491476 ((_ is Concat!12029) (regTwo!15179 r!27340))) b!2491707))

(assert (= (and b!2491476 ((_ is Star!7333) (regTwo!15179 r!27340))) b!2491708))

(assert (= (and b!2491476 ((_ is Union!7333) (regTwo!15179 r!27340))) b!2491709))

(declare-fun b!2491714 () Bool)

(declare-fun e!1581638 () Bool)

(declare-fun tp!797914 () Bool)

(assert (=> b!2491714 (= e!1581638 (and tp_is_empty!12521 tp!797914))))

(assert (=> b!2491475 (= tp!797837 e!1581638)))

(assert (= (and b!2491475 ((_ is Cons!29298) (t!211097 tl!4068))) b!2491714))

(check-sat (not b!2491697) (not b!2491624) (not bm!153205) (not bm!153241) (not b!2491700) (not d!714472) (not b!2491714) (not b!2491705) (not bm!153204) (not b!2491634) (not b!2491692) (not bm!153239) (not b!2491695) (not b!2491701) (not b!2491704) (not b!2491708) (not b!2491653) (not b!2491707) (not bm!153243) (not bm!153242) (not b!2491709) (not bm!153233) (not d!714458) tp_is_empty!12521 (not b!2491691) (not b!2491598) (not b!2491699) (not b!2491703) (not b!2491529) (not d!714468) (not b!2491696) (not d!714464) (not bm!153231) (not b!2491693))
(check-sat)
