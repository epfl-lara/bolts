; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350918 () Bool)

(assert start!350918)

(declare-fun res!1514264 () Bool)

(declare-fun e!2307382 () Bool)

(assert (=> start!350918 (=> (not res!1514264) (not e!2307382))))

(declare-datatypes ((C!22028 0))(
  ( (C!22029 (val!13062 Int)) )
))
(declare-datatypes ((Regex!10921 0))(
  ( (ElementMatch!10921 (c!645395 C!22028)) (Concat!17192 (regOne!22354 Regex!10921) (regTwo!22354 Regex!10921)) (EmptyExpr!10921) (Star!10921 (reg!11250 Regex!10921)) (EmptyLang!10921) (Union!10921 (regOne!22355 Regex!10921) (regTwo!22355 Regex!10921)) )
))
(declare-fun r!26968 () Regex!10921)

(declare-fun validRegex!5028 (Regex!10921) Bool)

(assert (=> start!350918 (= res!1514264 (validRegex!5028 r!26968))))

(assert (=> start!350918 e!2307382))

(declare-fun e!2307381 () Bool)

(assert (=> start!350918 e!2307381))

(declare-fun tp_is_empty!18857 () Bool)

(assert (=> start!350918 tp_is_empty!18857))

(declare-fun b!3729008 () Bool)

(declare-fun RegexPrimitiveSize!143 (Regex!10921) Int)

(assert (=> b!3729008 (= e!2307382 (>= (RegexPrimitiveSize!143 (reg!11250 r!26968)) (RegexPrimitiveSize!143 r!26968)))))

(declare-fun b!3729009 () Bool)

(declare-fun res!1514266 () Bool)

(assert (=> b!3729009 (=> (not res!1514266) (not e!2307382))))

(declare-fun cNot!42 () C!22028)

(declare-datatypes ((List!39802 0))(
  ( (Nil!39678) (Cons!39678 (h!45098 C!22028) (t!302485 List!39802)) )
))
(declare-fun contains!8014 (List!39802 C!22028) Bool)

(declare-fun usedCharacters!1184 (Regex!10921) List!39802)

(assert (=> b!3729009 (= res!1514266 (not (contains!8014 (usedCharacters!1184 (reg!11250 r!26968)) cNot!42)))))

(declare-fun b!3729010 () Bool)

(declare-fun tp!1134681 () Bool)

(declare-fun tp!1134684 () Bool)

(assert (=> b!3729010 (= e!2307381 (and tp!1134681 tp!1134684))))

(declare-fun b!3729011 () Bool)

(declare-fun tp!1134680 () Bool)

(assert (=> b!3729011 (= e!2307381 tp!1134680)))

(declare-fun b!3729012 () Bool)

(assert (=> b!3729012 (= e!2307381 tp_is_empty!18857)))

(declare-fun b!3729013 () Bool)

(declare-fun tp!1134682 () Bool)

(declare-fun tp!1134683 () Bool)

(assert (=> b!3729013 (= e!2307381 (and tp!1134682 tp!1134683))))

(declare-fun b!3729014 () Bool)

(declare-fun res!1514262 () Bool)

(assert (=> b!3729014 (=> (not res!1514262) (not e!2307382))))

(assert (=> b!3729014 (= res!1514262 (validRegex!5028 (reg!11250 r!26968)))))

(declare-fun b!3729015 () Bool)

(declare-fun res!1514265 () Bool)

(assert (=> b!3729015 (=> (not res!1514265) (not e!2307382))))

(get-info :version)

(assert (=> b!3729015 (= res!1514265 (and (not ((_ is EmptyExpr!10921) r!26968)) (not ((_ is EmptyLang!10921) r!26968)) (not ((_ is ElementMatch!10921) r!26968)) (not ((_ is Union!10921) r!26968)) ((_ is Star!10921) r!26968)))))

(declare-fun b!3729016 () Bool)

(declare-fun res!1514263 () Bool)

(assert (=> b!3729016 (=> (not res!1514263) (not e!2307382))))

(assert (=> b!3729016 (= res!1514263 (not (contains!8014 (usedCharacters!1184 r!26968) cNot!42)))))

(assert (= (and start!350918 res!1514264) b!3729016))

(assert (= (and b!3729016 res!1514263) b!3729015))

(assert (= (and b!3729015 res!1514265) b!3729014))

(assert (= (and b!3729014 res!1514262) b!3729009))

(assert (= (and b!3729009 res!1514266) b!3729008))

(assert (= (and start!350918 ((_ is ElementMatch!10921) r!26968)) b!3729012))

(assert (= (and start!350918 ((_ is Concat!17192) r!26968)) b!3729010))

(assert (= (and start!350918 ((_ is Star!10921) r!26968)) b!3729011))

(assert (= (and start!350918 ((_ is Union!10921) r!26968)) b!3729013))

(declare-fun m!4229301 () Bool)

(assert (=> b!3729014 m!4229301))

(declare-fun m!4229303 () Bool)

(assert (=> start!350918 m!4229303))

(declare-fun m!4229305 () Bool)

(assert (=> b!3729009 m!4229305))

(assert (=> b!3729009 m!4229305))

(declare-fun m!4229307 () Bool)

(assert (=> b!3729009 m!4229307))

(declare-fun m!4229309 () Bool)

(assert (=> b!3729008 m!4229309))

(declare-fun m!4229311 () Bool)

(assert (=> b!3729008 m!4229311))

(declare-fun m!4229313 () Bool)

(assert (=> b!3729016 m!4229313))

(assert (=> b!3729016 m!4229313))

(declare-fun m!4229315 () Bool)

(assert (=> b!3729016 m!4229315))

(check-sat (not b!3729008) (not b!3729014) (not b!3729011) tp_is_empty!18857 (not b!3729016) (not b!3729010) (not b!3729009) (not start!350918) (not b!3729013))
(check-sat)
(get-model)

(declare-fun b!3729055 () Bool)

(declare-fun e!2307407 () Bool)

(declare-fun e!2307409 () Bool)

(assert (=> b!3729055 (= e!2307407 e!2307409)))

(declare-fun c!645410 () Bool)

(assert (=> b!3729055 (= c!645410 ((_ is Star!10921) r!26968))))

(declare-fun b!3729056 () Bool)

(declare-fun res!1514280 () Bool)

(declare-fun e!2307411 () Bool)

(assert (=> b!3729056 (=> (not res!1514280) (not e!2307411))))

(declare-fun call!272087 () Bool)

(assert (=> b!3729056 (= res!1514280 call!272087)))

(declare-fun e!2307408 () Bool)

(assert (=> b!3729056 (= e!2307408 e!2307411)))

(declare-fun b!3729057 () Bool)

(declare-fun e!2307412 () Bool)

(declare-fun call!272085 () Bool)

(assert (=> b!3729057 (= e!2307412 call!272085)))

(declare-fun c!645411 () Bool)

(declare-fun bm!272080 () Bool)

(assert (=> bm!272080 (= call!272085 (validRegex!5028 (ite c!645410 (reg!11250 r!26968) (ite c!645411 (regTwo!22355 r!26968) (regTwo!22354 r!26968)))))))

(declare-fun bm!272081 () Bool)

(assert (=> bm!272081 (= call!272087 (validRegex!5028 (ite c!645411 (regOne!22355 r!26968) (regOne!22354 r!26968))))))

(declare-fun bm!272082 () Bool)

(declare-fun call!272086 () Bool)

(assert (=> bm!272082 (= call!272086 call!272085)))

(declare-fun b!3729058 () Bool)

(declare-fun e!2307413 () Bool)

(assert (=> b!3729058 (= e!2307413 call!272086)))

(declare-fun b!3729059 () Bool)

(declare-fun e!2307410 () Bool)

(assert (=> b!3729059 (= e!2307410 e!2307413)))

(declare-fun res!1514279 () Bool)

(assert (=> b!3729059 (=> (not res!1514279) (not e!2307413))))

(assert (=> b!3729059 (= res!1514279 call!272087)))

(declare-fun b!3729061 () Bool)

(assert (=> b!3729061 (= e!2307409 e!2307412)))

(declare-fun res!1514281 () Bool)

(declare-fun nullable!3828 (Regex!10921) Bool)

(assert (=> b!3729061 (= res!1514281 (not (nullable!3828 (reg!11250 r!26968))))))

(assert (=> b!3729061 (=> (not res!1514281) (not e!2307412))))

(declare-fun b!3729062 () Bool)

(assert (=> b!3729062 (= e!2307409 e!2307408)))

(assert (=> b!3729062 (= c!645411 ((_ is Union!10921) r!26968))))

(declare-fun b!3729063 () Bool)

(declare-fun res!1514277 () Bool)

(assert (=> b!3729063 (=> res!1514277 e!2307410)))

(assert (=> b!3729063 (= res!1514277 (not ((_ is Concat!17192) r!26968)))))

(assert (=> b!3729063 (= e!2307408 e!2307410)))

(declare-fun d!1090330 () Bool)

(declare-fun res!1514278 () Bool)

(assert (=> d!1090330 (=> res!1514278 e!2307407)))

(assert (=> d!1090330 (= res!1514278 ((_ is ElementMatch!10921) r!26968))))

(assert (=> d!1090330 (= (validRegex!5028 r!26968) e!2307407)))

(declare-fun b!3729060 () Bool)

(assert (=> b!3729060 (= e!2307411 call!272086)))

(assert (= (and d!1090330 (not res!1514278)) b!3729055))

(assert (= (and b!3729055 c!645410) b!3729061))

(assert (= (and b!3729055 (not c!645410)) b!3729062))

(assert (= (and b!3729061 res!1514281) b!3729057))

(assert (= (and b!3729062 c!645411) b!3729056))

(assert (= (and b!3729062 (not c!645411)) b!3729063))

(assert (= (and b!3729056 res!1514280) b!3729060))

(assert (= (and b!3729063 (not res!1514277)) b!3729059))

(assert (= (and b!3729059 res!1514279) b!3729058))

(assert (= (or b!3729060 b!3729058) bm!272082))

(assert (= (or b!3729056 b!3729059) bm!272081))

(assert (= (or b!3729057 bm!272082) bm!272080))

(declare-fun m!4229317 () Bool)

(assert (=> bm!272080 m!4229317))

(declare-fun m!4229319 () Bool)

(assert (=> bm!272081 m!4229319))

(declare-fun m!4229321 () Bool)

(assert (=> b!3729061 m!4229321))

(assert (=> start!350918 d!1090330))

(declare-fun d!1090334 () Bool)

(declare-fun lt!1298589 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5777 (List!39802) (InoxSet C!22028))

(assert (=> d!1090334 (= lt!1298589 (select (content!5777 (usedCharacters!1184 r!26968)) cNot!42))))

(declare-fun e!2307430 () Bool)

(assert (=> d!1090334 (= lt!1298589 e!2307430)))

(declare-fun res!1514289 () Bool)

(assert (=> d!1090334 (=> (not res!1514289) (not e!2307430))))

(assert (=> d!1090334 (= res!1514289 ((_ is Cons!39678) (usedCharacters!1184 r!26968)))))

(assert (=> d!1090334 (= (contains!8014 (usedCharacters!1184 r!26968) cNot!42) lt!1298589)))

(declare-fun b!3729090 () Bool)

(declare-fun e!2307431 () Bool)

(assert (=> b!3729090 (= e!2307430 e!2307431)))

(declare-fun res!1514288 () Bool)

(assert (=> b!3729090 (=> res!1514288 e!2307431)))

(assert (=> b!3729090 (= res!1514288 (= (h!45098 (usedCharacters!1184 r!26968)) cNot!42))))

(declare-fun b!3729091 () Bool)

(assert (=> b!3729091 (= e!2307431 (contains!8014 (t!302485 (usedCharacters!1184 r!26968)) cNot!42))))

(assert (= (and d!1090334 res!1514289) b!3729090))

(assert (= (and b!3729090 (not res!1514288)) b!3729091))

(assert (=> d!1090334 m!4229313))

(declare-fun m!4229331 () Bool)

(assert (=> d!1090334 m!4229331))

(declare-fun m!4229333 () Bool)

(assert (=> d!1090334 m!4229333))

(declare-fun m!4229335 () Bool)

(assert (=> b!3729091 m!4229335))

(assert (=> b!3729016 d!1090334))

(declare-fun b!3729128 () Bool)

(declare-fun e!2307453 () List!39802)

(declare-fun call!272111 () List!39802)

(assert (=> b!3729128 (= e!2307453 call!272111)))

(declare-fun bm!272105 () Bool)

(declare-fun call!272110 () List!39802)

(declare-fun call!272112 () List!39802)

(assert (=> bm!272105 (= call!272110 call!272112)))

(declare-fun b!3729129 () Bool)

(declare-fun e!2307455 () List!39802)

(assert (=> b!3729129 (= e!2307455 call!272112)))

(declare-fun b!3729130 () Bool)

(declare-fun e!2307454 () List!39802)

(declare-fun e!2307452 () List!39802)

(assert (=> b!3729130 (= e!2307454 e!2307452)))

(declare-fun c!645439 () Bool)

(assert (=> b!3729130 (= c!645439 ((_ is ElementMatch!10921) r!26968))))

(declare-fun b!3729131 () Bool)

(assert (=> b!3729131 (= e!2307454 Nil!39678)))

(declare-fun b!3729132 () Bool)

(assert (=> b!3729132 (= e!2307455 e!2307453)))

(declare-fun c!645441 () Bool)

(assert (=> b!3729132 (= c!645441 ((_ is Union!10921) r!26968))))

(declare-fun b!3729133 () Bool)

(assert (=> b!3729133 (= e!2307452 (Cons!39678 (c!645395 r!26968) Nil!39678))))

(declare-fun bm!272106 () Bool)

(declare-fun call!272113 () List!39802)

(assert (=> bm!272106 (= call!272113 (usedCharacters!1184 (ite c!645441 (regOne!22355 r!26968) (regTwo!22354 r!26968))))))

(declare-fun d!1090340 () Bool)

(declare-fun c!645440 () Bool)

(assert (=> d!1090340 (= c!645440 (or ((_ is EmptyExpr!10921) r!26968) ((_ is EmptyLang!10921) r!26968)))))

(assert (=> d!1090340 (= (usedCharacters!1184 r!26968) e!2307454)))

(declare-fun b!3729134 () Bool)

(assert (=> b!3729134 (= e!2307453 call!272111)))

(declare-fun b!3729135 () Bool)

(declare-fun c!645438 () Bool)

(assert (=> b!3729135 (= c!645438 ((_ is Star!10921) r!26968))))

(assert (=> b!3729135 (= e!2307452 e!2307455)))

(declare-fun bm!272107 () Bool)

(assert (=> bm!272107 (= call!272112 (usedCharacters!1184 (ite c!645438 (reg!11250 r!26968) (ite c!645441 (regTwo!22355 r!26968) (regOne!22354 r!26968)))))))

(declare-fun bm!272108 () Bool)

(declare-fun ++!9844 (List!39802 List!39802) List!39802)

(assert (=> bm!272108 (= call!272111 (++!9844 (ite c!645441 call!272113 call!272110) (ite c!645441 call!272110 call!272113)))))

(assert (= (and d!1090340 c!645440) b!3729131))

(assert (= (and d!1090340 (not c!645440)) b!3729130))

(assert (= (and b!3729130 c!645439) b!3729133))

(assert (= (and b!3729130 (not c!645439)) b!3729135))

(assert (= (and b!3729135 c!645438) b!3729129))

(assert (= (and b!3729135 (not c!645438)) b!3729132))

(assert (= (and b!3729132 c!645441) b!3729128))

(assert (= (and b!3729132 (not c!645441)) b!3729134))

(assert (= (or b!3729128 b!3729134) bm!272106))

(assert (= (or b!3729128 b!3729134) bm!272105))

(assert (= (or b!3729128 b!3729134) bm!272108))

(assert (= (or b!3729129 bm!272105) bm!272107))

(declare-fun m!4229343 () Bool)

(assert (=> bm!272106 m!4229343))

(declare-fun m!4229345 () Bool)

(assert (=> bm!272107 m!4229345))

(declare-fun m!4229347 () Bool)

(assert (=> bm!272108 m!4229347))

(assert (=> b!3729016 d!1090340))

(declare-fun bm!272125 () Bool)

(declare-fun call!272132 () Int)

(declare-fun c!645463 () Bool)

(assert (=> bm!272125 (= call!272132 (RegexPrimitiveSize!143 (ite c!645463 (regTwo!22354 (reg!11250 r!26968)) (regTwo!22355 (reg!11250 r!26968)))))))

(declare-fun b!3729182 () Bool)

(declare-fun e!2307487 () Int)

(assert (=> b!3729182 (= e!2307487 1)))

(declare-fun b!3729183 () Bool)

(declare-fun c!645460 () Bool)

(assert (=> b!3729183 (= c!645460 ((_ is EmptyExpr!10921) (reg!11250 r!26968)))))

(declare-fun e!2307485 () Int)

(declare-fun e!2307484 () Int)

(assert (=> b!3729183 (= e!2307485 e!2307484)))

(declare-fun d!1090344 () Bool)

(declare-fun lt!1298593 () Int)

(assert (=> d!1090344 (>= lt!1298593 0)))

(assert (=> d!1090344 (= lt!1298593 e!2307487)))

(declare-fun c!645461 () Bool)

(assert (=> d!1090344 (= c!645461 ((_ is ElementMatch!10921) (reg!11250 r!26968)))))

(assert (=> d!1090344 (= (RegexPrimitiveSize!143 (reg!11250 r!26968)) lt!1298593)))

(declare-fun b!3729184 () Bool)

(declare-fun e!2307488 () Int)

(declare-fun call!272130 () Int)

(assert (=> b!3729184 (= e!2307488 (+ 1 call!272130))))

(declare-fun b!3729185 () Bool)

(assert (=> b!3729185 (= e!2307484 e!2307488)))

(declare-fun c!645464 () Bool)

(assert (=> b!3729185 (= c!645464 ((_ is Star!10921) (reg!11250 r!26968)))))

(declare-fun b!3729186 () Bool)

(assert (=> b!3729186 (= e!2307487 e!2307485)))

(assert (=> b!3729186 (= c!645463 ((_ is Concat!17192) (reg!11250 r!26968)))))

(declare-fun b!3729187 () Bool)

(assert (=> b!3729187 (= e!2307484 0)))

(declare-fun b!3729188 () Bool)

(declare-fun e!2307486 () Int)

(assert (=> b!3729188 (= e!2307486 (+ 1 call!272130 call!272132))))

(declare-fun b!3729189 () Bool)

(declare-fun call!272131 () Int)

(assert (=> b!3729189 (= e!2307485 (+ 1 call!272131 call!272132))))

(declare-fun bm!272126 () Bool)

(assert (=> bm!272126 (= call!272130 call!272131)))

(declare-fun b!3729190 () Bool)

(assert (=> b!3729190 (= e!2307486 0)))

(declare-fun bm!272127 () Bool)

(assert (=> bm!272127 (= call!272131 (RegexPrimitiveSize!143 (ite c!645463 (regOne!22354 (reg!11250 r!26968)) (ite c!645464 (reg!11250 (reg!11250 r!26968)) (regOne!22355 (reg!11250 r!26968))))))))

(declare-fun b!3729191 () Bool)

(declare-fun c!645462 () Bool)

(assert (=> b!3729191 (= c!645462 ((_ is EmptyLang!10921) (reg!11250 r!26968)))))

(assert (=> b!3729191 (= e!2307488 e!2307486)))

(assert (= (and d!1090344 c!645461) b!3729182))

(assert (= (and d!1090344 (not c!645461)) b!3729186))

(assert (= (and b!3729186 c!645463) b!3729189))

(assert (= (and b!3729186 (not c!645463)) b!3729183))

(assert (= (and b!3729183 c!645460) b!3729187))

(assert (= (and b!3729183 (not c!645460)) b!3729185))

(assert (= (and b!3729185 c!645464) b!3729184))

(assert (= (and b!3729185 (not c!645464)) b!3729191))

(assert (= (and b!3729191 c!645462) b!3729190))

(assert (= (and b!3729191 (not c!645462)) b!3729188))

(assert (= (or b!3729184 b!3729188) bm!272126))

(assert (= (or b!3729189 bm!272126) bm!272127))

(assert (= (or b!3729189 b!3729188) bm!272125))

(declare-fun m!4229355 () Bool)

(assert (=> bm!272125 m!4229355))

(declare-fun m!4229357 () Bool)

(assert (=> bm!272127 m!4229357))

(assert (=> b!3729008 d!1090344))

(declare-fun bm!272131 () Bool)

(declare-fun call!272138 () Int)

(declare-fun c!645470 () Bool)

(assert (=> bm!272131 (= call!272138 (RegexPrimitiveSize!143 (ite c!645470 (regTwo!22354 r!26968) (regTwo!22355 r!26968))))))

(declare-fun b!3729201 () Bool)

(declare-fun e!2307499 () Int)

(assert (=> b!3729201 (= e!2307499 1)))

(declare-fun b!3729202 () Bool)

(declare-fun c!645467 () Bool)

(assert (=> b!3729202 (= c!645467 ((_ is EmptyExpr!10921) r!26968))))

(declare-fun e!2307497 () Int)

(declare-fun e!2307496 () Int)

(assert (=> b!3729202 (= e!2307497 e!2307496)))

(declare-fun d!1090348 () Bool)

(declare-fun lt!1298594 () Int)

(assert (=> d!1090348 (>= lt!1298594 0)))

(assert (=> d!1090348 (= lt!1298594 e!2307499)))

(declare-fun c!645468 () Bool)

(assert (=> d!1090348 (= c!645468 ((_ is ElementMatch!10921) r!26968))))

(assert (=> d!1090348 (= (RegexPrimitiveSize!143 r!26968) lt!1298594)))

(declare-fun b!3729203 () Bool)

(declare-fun e!2307500 () Int)

(declare-fun call!272136 () Int)

(assert (=> b!3729203 (= e!2307500 (+ 1 call!272136))))

(declare-fun b!3729204 () Bool)

(assert (=> b!3729204 (= e!2307496 e!2307500)))

(declare-fun c!645471 () Bool)

(assert (=> b!3729204 (= c!645471 ((_ is Star!10921) r!26968))))

(declare-fun b!3729205 () Bool)

(assert (=> b!3729205 (= e!2307499 e!2307497)))

(assert (=> b!3729205 (= c!645470 ((_ is Concat!17192) r!26968))))

(declare-fun b!3729206 () Bool)

(assert (=> b!3729206 (= e!2307496 0)))

(declare-fun b!3729207 () Bool)

(declare-fun e!2307498 () Int)

(assert (=> b!3729207 (= e!2307498 (+ 1 call!272136 call!272138))))

(declare-fun b!3729208 () Bool)

(declare-fun call!272137 () Int)

(assert (=> b!3729208 (= e!2307497 (+ 1 call!272137 call!272138))))

(declare-fun bm!272132 () Bool)

(assert (=> bm!272132 (= call!272136 call!272137)))

(declare-fun b!3729209 () Bool)

(assert (=> b!3729209 (= e!2307498 0)))

(declare-fun bm!272133 () Bool)

(assert (=> bm!272133 (= call!272137 (RegexPrimitiveSize!143 (ite c!645470 (regOne!22354 r!26968) (ite c!645471 (reg!11250 r!26968) (regOne!22355 r!26968)))))))

(declare-fun b!3729210 () Bool)

(declare-fun c!645469 () Bool)

(assert (=> b!3729210 (= c!645469 ((_ is EmptyLang!10921) r!26968))))

(assert (=> b!3729210 (= e!2307500 e!2307498)))

(assert (= (and d!1090348 c!645468) b!3729201))

(assert (= (and d!1090348 (not c!645468)) b!3729205))

(assert (= (and b!3729205 c!645470) b!3729208))

(assert (= (and b!3729205 (not c!645470)) b!3729202))

(assert (= (and b!3729202 c!645467) b!3729206))

(assert (= (and b!3729202 (not c!645467)) b!3729204))

(assert (= (and b!3729204 c!645471) b!3729203))

(assert (= (and b!3729204 (not c!645471)) b!3729210))

(assert (= (and b!3729210 c!645469) b!3729209))

(assert (= (and b!3729210 (not c!645469)) b!3729207))

(assert (= (or b!3729203 b!3729207) bm!272132))

(assert (= (or b!3729208 bm!272132) bm!272133))

(assert (= (or b!3729208 b!3729207) bm!272131))

(declare-fun m!4229359 () Bool)

(assert (=> bm!272131 m!4229359))

(declare-fun m!4229363 () Bool)

(assert (=> bm!272133 m!4229363))

(assert (=> b!3729008 d!1090348))

(declare-fun b!3729211 () Bool)

(declare-fun e!2307501 () Bool)

(declare-fun e!2307503 () Bool)

(assert (=> b!3729211 (= e!2307501 e!2307503)))

(declare-fun c!645472 () Bool)

(assert (=> b!3729211 (= c!645472 ((_ is Star!10921) (reg!11250 r!26968)))))

(declare-fun b!3729212 () Bool)

(declare-fun res!1514312 () Bool)

(declare-fun e!2307505 () Bool)

(assert (=> b!3729212 (=> (not res!1514312) (not e!2307505))))

(declare-fun call!272141 () Bool)

(assert (=> b!3729212 (= res!1514312 call!272141)))

(declare-fun e!2307502 () Bool)

(assert (=> b!3729212 (= e!2307502 e!2307505)))

(declare-fun b!3729213 () Bool)

(declare-fun e!2307506 () Bool)

(declare-fun call!272139 () Bool)

(assert (=> b!3729213 (= e!2307506 call!272139)))

(declare-fun bm!272134 () Bool)

(declare-fun c!645473 () Bool)

(assert (=> bm!272134 (= call!272139 (validRegex!5028 (ite c!645472 (reg!11250 (reg!11250 r!26968)) (ite c!645473 (regTwo!22355 (reg!11250 r!26968)) (regTwo!22354 (reg!11250 r!26968))))))))

(declare-fun bm!272135 () Bool)

(assert (=> bm!272135 (= call!272141 (validRegex!5028 (ite c!645473 (regOne!22355 (reg!11250 r!26968)) (regOne!22354 (reg!11250 r!26968)))))))

(declare-fun bm!272136 () Bool)

(declare-fun call!272140 () Bool)

(assert (=> bm!272136 (= call!272140 call!272139)))

(declare-fun b!3729214 () Bool)

(declare-fun e!2307507 () Bool)

(assert (=> b!3729214 (= e!2307507 call!272140)))

(declare-fun b!3729215 () Bool)

(declare-fun e!2307504 () Bool)

(assert (=> b!3729215 (= e!2307504 e!2307507)))

(declare-fun res!1514311 () Bool)

(assert (=> b!3729215 (=> (not res!1514311) (not e!2307507))))

(assert (=> b!3729215 (= res!1514311 call!272141)))

(declare-fun b!3729217 () Bool)

(assert (=> b!3729217 (= e!2307503 e!2307506)))

(declare-fun res!1514313 () Bool)

(assert (=> b!3729217 (= res!1514313 (not (nullable!3828 (reg!11250 (reg!11250 r!26968)))))))

(assert (=> b!3729217 (=> (not res!1514313) (not e!2307506))))

(declare-fun b!3729218 () Bool)

(assert (=> b!3729218 (= e!2307503 e!2307502)))

(assert (=> b!3729218 (= c!645473 ((_ is Union!10921) (reg!11250 r!26968)))))

(declare-fun b!3729219 () Bool)

(declare-fun res!1514309 () Bool)

(assert (=> b!3729219 (=> res!1514309 e!2307504)))

(assert (=> b!3729219 (= res!1514309 (not ((_ is Concat!17192) (reg!11250 r!26968))))))

(assert (=> b!3729219 (= e!2307502 e!2307504)))

(declare-fun d!1090350 () Bool)

(declare-fun res!1514310 () Bool)

(assert (=> d!1090350 (=> res!1514310 e!2307501)))

(assert (=> d!1090350 (= res!1514310 ((_ is ElementMatch!10921) (reg!11250 r!26968)))))

(assert (=> d!1090350 (= (validRegex!5028 (reg!11250 r!26968)) e!2307501)))

(declare-fun b!3729216 () Bool)

(assert (=> b!3729216 (= e!2307505 call!272140)))

(assert (= (and d!1090350 (not res!1514310)) b!3729211))

(assert (= (and b!3729211 c!645472) b!3729217))

(assert (= (and b!3729211 (not c!645472)) b!3729218))

(assert (= (and b!3729217 res!1514313) b!3729213))

(assert (= (and b!3729218 c!645473) b!3729212))

(assert (= (and b!3729218 (not c!645473)) b!3729219))

(assert (= (and b!3729212 res!1514312) b!3729216))

(assert (= (and b!3729219 (not res!1514309)) b!3729215))

(assert (= (and b!3729215 res!1514311) b!3729214))

(assert (= (or b!3729216 b!3729214) bm!272136))

(assert (= (or b!3729212 b!3729215) bm!272135))

(assert (= (or b!3729213 bm!272136) bm!272134))

(declare-fun m!4229375 () Bool)

(assert (=> bm!272134 m!4229375))

(declare-fun m!4229377 () Bool)

(assert (=> bm!272135 m!4229377))

(declare-fun m!4229379 () Bool)

(assert (=> b!3729217 m!4229379))

(assert (=> b!3729014 d!1090350))

(declare-fun d!1090356 () Bool)

(declare-fun lt!1298596 () Bool)

(assert (=> d!1090356 (= lt!1298596 (select (content!5777 (usedCharacters!1184 (reg!11250 r!26968))) cNot!42))))

(declare-fun e!2307514 () Bool)

(assert (=> d!1090356 (= lt!1298596 e!2307514)))

(declare-fun res!1514317 () Bool)

(assert (=> d!1090356 (=> (not res!1514317) (not e!2307514))))

(assert (=> d!1090356 (= res!1514317 ((_ is Cons!39678) (usedCharacters!1184 (reg!11250 r!26968))))))

(assert (=> d!1090356 (= (contains!8014 (usedCharacters!1184 (reg!11250 r!26968)) cNot!42) lt!1298596)))

(declare-fun b!3729230 () Bool)

(declare-fun e!2307515 () Bool)

(assert (=> b!3729230 (= e!2307514 e!2307515)))

(declare-fun res!1514316 () Bool)

(assert (=> b!3729230 (=> res!1514316 e!2307515)))

(assert (=> b!3729230 (= res!1514316 (= (h!45098 (usedCharacters!1184 (reg!11250 r!26968))) cNot!42))))

(declare-fun b!3729231 () Bool)

(assert (=> b!3729231 (= e!2307515 (contains!8014 (t!302485 (usedCharacters!1184 (reg!11250 r!26968))) cNot!42))))

(assert (= (and d!1090356 res!1514317) b!3729230))

(assert (= (and b!3729230 (not res!1514316)) b!3729231))

(assert (=> d!1090356 m!4229305))

(declare-fun m!4229381 () Bool)

(assert (=> d!1090356 m!4229381))

(declare-fun m!4229383 () Bool)

(assert (=> d!1090356 m!4229383))

(declare-fun m!4229387 () Bool)

(assert (=> b!3729231 m!4229387))

(assert (=> b!3729009 d!1090356))

(declare-fun b!3729232 () Bool)

(declare-fun e!2307517 () List!39802)

(declare-fun call!272147 () List!39802)

(assert (=> b!3729232 (= e!2307517 call!272147)))

(declare-fun bm!272141 () Bool)

(declare-fun call!272146 () List!39802)

(declare-fun call!272148 () List!39802)

(assert (=> bm!272141 (= call!272146 call!272148)))

(declare-fun b!3729233 () Bool)

(declare-fun e!2307519 () List!39802)

(assert (=> b!3729233 (= e!2307519 call!272148)))

(declare-fun b!3729234 () Bool)

(declare-fun e!2307518 () List!39802)

(declare-fun e!2307516 () List!39802)

(assert (=> b!3729234 (= e!2307518 e!2307516)))

(declare-fun c!645479 () Bool)

(assert (=> b!3729234 (= c!645479 ((_ is ElementMatch!10921) (reg!11250 r!26968)))))

(declare-fun b!3729235 () Bool)

(assert (=> b!3729235 (= e!2307518 Nil!39678)))

(declare-fun b!3729236 () Bool)

(assert (=> b!3729236 (= e!2307519 e!2307517)))

(declare-fun c!645481 () Bool)

(assert (=> b!3729236 (= c!645481 ((_ is Union!10921) (reg!11250 r!26968)))))

(declare-fun b!3729237 () Bool)

(assert (=> b!3729237 (= e!2307516 (Cons!39678 (c!645395 (reg!11250 r!26968)) Nil!39678))))

(declare-fun bm!272142 () Bool)

(declare-fun call!272149 () List!39802)

(assert (=> bm!272142 (= call!272149 (usedCharacters!1184 (ite c!645481 (regOne!22355 (reg!11250 r!26968)) (regTwo!22354 (reg!11250 r!26968)))))))

(declare-fun d!1090358 () Bool)

(declare-fun c!645480 () Bool)

(assert (=> d!1090358 (= c!645480 (or ((_ is EmptyExpr!10921) (reg!11250 r!26968)) ((_ is EmptyLang!10921) (reg!11250 r!26968))))))

(assert (=> d!1090358 (= (usedCharacters!1184 (reg!11250 r!26968)) e!2307518)))

(declare-fun b!3729238 () Bool)

(assert (=> b!3729238 (= e!2307517 call!272147)))

(declare-fun b!3729239 () Bool)

(declare-fun c!645478 () Bool)

(assert (=> b!3729239 (= c!645478 ((_ is Star!10921) (reg!11250 r!26968)))))

(assert (=> b!3729239 (= e!2307516 e!2307519)))

(declare-fun bm!272143 () Bool)

(assert (=> bm!272143 (= call!272148 (usedCharacters!1184 (ite c!645478 (reg!11250 (reg!11250 r!26968)) (ite c!645481 (regTwo!22355 (reg!11250 r!26968)) (regOne!22354 (reg!11250 r!26968))))))))

(declare-fun bm!272144 () Bool)

(assert (=> bm!272144 (= call!272147 (++!9844 (ite c!645481 call!272149 call!272146) (ite c!645481 call!272146 call!272149)))))

(assert (= (and d!1090358 c!645480) b!3729235))

(assert (= (and d!1090358 (not c!645480)) b!3729234))

(assert (= (and b!3729234 c!645479) b!3729237))

(assert (= (and b!3729234 (not c!645479)) b!3729239))

(assert (= (and b!3729239 c!645478) b!3729233))

(assert (= (and b!3729239 (not c!645478)) b!3729236))

(assert (= (and b!3729236 c!645481) b!3729232))

(assert (= (and b!3729236 (not c!645481)) b!3729238))

(assert (= (or b!3729232 b!3729238) bm!272142))

(assert (= (or b!3729232 b!3729238) bm!272141))

(assert (= (or b!3729232 b!3729238) bm!272144))

(assert (= (or b!3729233 bm!272141) bm!272143))

(declare-fun m!4229393 () Bool)

(assert (=> bm!272142 m!4229393))

(declare-fun m!4229397 () Bool)

(assert (=> bm!272143 m!4229397))

(declare-fun m!4229401 () Bool)

(assert (=> bm!272144 m!4229401))

(assert (=> b!3729009 d!1090358))

(declare-fun b!3729276 () Bool)

(declare-fun e!2307532 () Bool)

(declare-fun tp!1134714 () Bool)

(declare-fun tp!1134712 () Bool)

(assert (=> b!3729276 (= e!2307532 (and tp!1134714 tp!1134712))))

(assert (=> b!3729010 (= tp!1134681 e!2307532)))

(declare-fun b!3729273 () Bool)

(assert (=> b!3729273 (= e!2307532 tp_is_empty!18857)))

(declare-fun b!3729274 () Bool)

(declare-fun tp!1134713 () Bool)

(declare-fun tp!1134710 () Bool)

(assert (=> b!3729274 (= e!2307532 (and tp!1134713 tp!1134710))))

(declare-fun b!3729275 () Bool)

(declare-fun tp!1134711 () Bool)

(assert (=> b!3729275 (= e!2307532 tp!1134711)))

(assert (= (and b!3729010 ((_ is ElementMatch!10921) (regOne!22354 r!26968))) b!3729273))

(assert (= (and b!3729010 ((_ is Concat!17192) (regOne!22354 r!26968))) b!3729274))

(assert (= (and b!3729010 ((_ is Star!10921) (regOne!22354 r!26968))) b!3729275))

(assert (= (and b!3729010 ((_ is Union!10921) (regOne!22354 r!26968))) b!3729276))

(declare-fun b!3729284 () Bool)

(declare-fun e!2307534 () Bool)

(declare-fun tp!1134724 () Bool)

(declare-fun tp!1134722 () Bool)

(assert (=> b!3729284 (= e!2307534 (and tp!1134724 tp!1134722))))

(assert (=> b!3729010 (= tp!1134684 e!2307534)))

(declare-fun b!3729281 () Bool)

(assert (=> b!3729281 (= e!2307534 tp_is_empty!18857)))

(declare-fun b!3729282 () Bool)

(declare-fun tp!1134723 () Bool)

(declare-fun tp!1134720 () Bool)

(assert (=> b!3729282 (= e!2307534 (and tp!1134723 tp!1134720))))

(declare-fun b!3729283 () Bool)

(declare-fun tp!1134721 () Bool)

(assert (=> b!3729283 (= e!2307534 tp!1134721)))

(assert (= (and b!3729010 ((_ is ElementMatch!10921) (regTwo!22354 r!26968))) b!3729281))

(assert (= (and b!3729010 ((_ is Concat!17192) (regTwo!22354 r!26968))) b!3729282))

(assert (= (and b!3729010 ((_ is Star!10921) (regTwo!22354 r!26968))) b!3729283))

(assert (= (and b!3729010 ((_ is Union!10921) (regTwo!22354 r!26968))) b!3729284))

(declare-fun b!3729292 () Bool)

(declare-fun e!2307536 () Bool)

(declare-fun tp!1134734 () Bool)

(declare-fun tp!1134732 () Bool)

(assert (=> b!3729292 (= e!2307536 (and tp!1134734 tp!1134732))))

(assert (=> b!3729011 (= tp!1134680 e!2307536)))

(declare-fun b!3729289 () Bool)

(assert (=> b!3729289 (= e!2307536 tp_is_empty!18857)))

(declare-fun b!3729290 () Bool)

(declare-fun tp!1134733 () Bool)

(declare-fun tp!1134730 () Bool)

(assert (=> b!3729290 (= e!2307536 (and tp!1134733 tp!1134730))))

(declare-fun b!3729291 () Bool)

(declare-fun tp!1134731 () Bool)

(assert (=> b!3729291 (= e!2307536 tp!1134731)))

(assert (= (and b!3729011 ((_ is ElementMatch!10921) (reg!11250 r!26968))) b!3729289))

(assert (= (and b!3729011 ((_ is Concat!17192) (reg!11250 r!26968))) b!3729290))

(assert (= (and b!3729011 ((_ is Star!10921) (reg!11250 r!26968))) b!3729291))

(assert (= (and b!3729011 ((_ is Union!10921) (reg!11250 r!26968))) b!3729292))

(declare-fun b!3729300 () Bool)

(declare-fun e!2307538 () Bool)

(declare-fun tp!1134744 () Bool)

(declare-fun tp!1134742 () Bool)

(assert (=> b!3729300 (= e!2307538 (and tp!1134744 tp!1134742))))

(assert (=> b!3729013 (= tp!1134682 e!2307538)))

(declare-fun b!3729297 () Bool)

(assert (=> b!3729297 (= e!2307538 tp_is_empty!18857)))

(declare-fun b!3729298 () Bool)

(declare-fun tp!1134743 () Bool)

(declare-fun tp!1134740 () Bool)

(assert (=> b!3729298 (= e!2307538 (and tp!1134743 tp!1134740))))

(declare-fun b!3729299 () Bool)

(declare-fun tp!1134741 () Bool)

(assert (=> b!3729299 (= e!2307538 tp!1134741)))

(assert (= (and b!3729013 ((_ is ElementMatch!10921) (regOne!22355 r!26968))) b!3729297))

(assert (= (and b!3729013 ((_ is Concat!17192) (regOne!22355 r!26968))) b!3729298))

(assert (= (and b!3729013 ((_ is Star!10921) (regOne!22355 r!26968))) b!3729299))

(assert (= (and b!3729013 ((_ is Union!10921) (regOne!22355 r!26968))) b!3729300))

(declare-fun b!3729308 () Bool)

(declare-fun e!2307540 () Bool)

(declare-fun tp!1134754 () Bool)

(declare-fun tp!1134752 () Bool)

(assert (=> b!3729308 (= e!2307540 (and tp!1134754 tp!1134752))))

(assert (=> b!3729013 (= tp!1134683 e!2307540)))

(declare-fun b!3729305 () Bool)

(assert (=> b!3729305 (= e!2307540 tp_is_empty!18857)))

(declare-fun b!3729306 () Bool)

(declare-fun tp!1134753 () Bool)

(declare-fun tp!1134750 () Bool)

(assert (=> b!3729306 (= e!2307540 (and tp!1134753 tp!1134750))))

(declare-fun b!3729307 () Bool)

(declare-fun tp!1134751 () Bool)

(assert (=> b!3729307 (= e!2307540 tp!1134751)))

(assert (= (and b!3729013 ((_ is ElementMatch!10921) (regTwo!22355 r!26968))) b!3729305))

(assert (= (and b!3729013 ((_ is Concat!17192) (regTwo!22355 r!26968))) b!3729306))

(assert (= (and b!3729013 ((_ is Star!10921) (regTwo!22355 r!26968))) b!3729307))

(assert (= (and b!3729013 ((_ is Union!10921) (regTwo!22355 r!26968))) b!3729308))

(check-sat (not b!3729298) (not b!3729308) (not bm!272135) (not b!3729276) (not b!3729274) (not bm!272081) (not bm!272144) (not b!3729275) (not b!3729307) (not d!1090334) (not b!3729292) (not d!1090356) (not b!3729061) (not b!3729290) (not bm!272108) (not b!3729299) (not b!3729283) (not b!3729217) (not b!3729282) (not bm!272131) (not b!3729291) (not bm!272143) (not bm!272127) (not b!3729306) (not bm!272134) (not bm!272107) (not b!3729091) (not bm!272142) (not bm!272106) (not b!3729300) (not b!3729231) (not bm!272080) tp_is_empty!18857 (not b!3729284) (not bm!272125) (not bm!272133))
(check-sat)
