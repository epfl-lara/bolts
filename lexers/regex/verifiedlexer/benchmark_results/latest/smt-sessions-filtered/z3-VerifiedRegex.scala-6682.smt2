; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350670 () Bool)

(assert start!350670)

(declare-fun b!3724202 () Bool)

(declare-fun e!2305045 () Bool)

(declare-fun tp!1132784 () Bool)

(assert (=> b!3724202 (= e!2305045 tp!1132784)))

(declare-fun res!1513219 () Bool)

(declare-fun e!2305046 () Bool)

(assert (=> start!350670 (=> (not res!1513219) (not e!2305046))))

(declare-datatypes ((C!21992 0))(
  ( (C!21993 (val!13044 Int)) )
))
(declare-datatypes ((Regex!10903 0))(
  ( (ElementMatch!10903 (c!644263 C!21992)) (Concat!17174 (regOne!22318 Regex!10903) (regTwo!22318 Regex!10903)) (EmptyExpr!10903) (Star!10903 (reg!11232 Regex!10903)) (EmptyLang!10903) (Union!10903 (regOne!22319 Regex!10903) (regTwo!22319 Regex!10903)) )
))
(declare-fun r!26968 () Regex!10903)

(declare-fun validRegex!5010 (Regex!10903) Bool)

(assert (=> start!350670 (= res!1513219 (validRegex!5010 r!26968))))

(assert (=> start!350670 e!2305046))

(assert (=> start!350670 e!2305045))

(declare-fun tp_is_empty!18821 () Bool)

(assert (=> start!350670 tp_is_empty!18821))

(declare-fun b!3724203 () Bool)

(declare-fun tp!1132783 () Bool)

(declare-fun tp!1132780 () Bool)

(assert (=> b!3724203 (= e!2305045 (and tp!1132783 tp!1132780))))

(declare-fun b!3724204 () Bool)

(assert (=> b!3724204 (= e!2305045 tp_is_empty!18821)))

(declare-fun b!3724205 () Bool)

(declare-fun res!1513220 () Bool)

(assert (=> b!3724205 (=> (not res!1513220) (not e!2305046))))

(declare-fun cNot!42 () C!21992)

(declare-datatypes ((List!39784 0))(
  ( (Nil!39660) (Cons!39660 (h!45080 C!21992) (t!302467 List!39784)) )
))
(declare-fun contains!7996 (List!39784 C!21992) Bool)

(declare-fun usedCharacters!1166 (Regex!10903) List!39784)

(assert (=> b!3724205 (= res!1513220 (not (contains!7996 (usedCharacters!1166 r!26968) cNot!42)))))

(declare-fun b!3724206 () Bool)

(declare-fun res!1513218 () Bool)

(assert (=> b!3724206 (=> (not res!1513218) (not e!2305046))))

(get-info :version)

(assert (=> b!3724206 (= res!1513218 (and (not ((_ is EmptyExpr!10903) r!26968)) (not ((_ is EmptyLang!10903) r!26968)) (not ((_ is ElementMatch!10903) r!26968)) ((_ is Union!10903) r!26968)))))

(declare-fun b!3724207 () Bool)

(declare-fun tp!1132781 () Bool)

(declare-fun tp!1132782 () Bool)

(assert (=> b!3724207 (= e!2305045 (and tp!1132781 tp!1132782))))

(declare-fun b!3724208 () Bool)

(assert (=> b!3724208 (= e!2305046 (not (validRegex!5010 (regOne!22319 r!26968))))))

(assert (= (and start!350670 res!1513219) b!3724205))

(assert (= (and b!3724205 res!1513220) b!3724206))

(assert (= (and b!3724206 res!1513218) b!3724208))

(assert (= (and start!350670 ((_ is ElementMatch!10903) r!26968)) b!3724204))

(assert (= (and start!350670 ((_ is Concat!17174) r!26968)) b!3724207))

(assert (= (and start!350670 ((_ is Star!10903) r!26968)) b!3724202))

(assert (= (and start!350670 ((_ is Union!10903) r!26968)) b!3724203))

(declare-fun m!4226993 () Bool)

(assert (=> start!350670 m!4226993))

(declare-fun m!4226995 () Bool)

(assert (=> b!3724205 m!4226995))

(assert (=> b!3724205 m!4226995))

(declare-fun m!4226997 () Bool)

(assert (=> b!3724205 m!4226997))

(declare-fun m!4226999 () Bool)

(assert (=> b!3724208 m!4226999))

(check-sat (not b!3724207) (not b!3724208) (not start!350670) (not b!3724205) (not b!3724203) (not b!3724202) tp_is_empty!18821)
(check-sat)
(get-model)

(declare-fun d!1089647 () Bool)

(declare-fun lt!1298295 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5759 (List!39784) (InoxSet C!21992))

(assert (=> d!1089647 (= lt!1298295 (select (content!5759 (usedCharacters!1166 r!26968)) cNot!42))))

(declare-fun e!2305066 () Bool)

(assert (=> d!1089647 (= lt!1298295 e!2305066)))

(declare-fun res!1513236 () Bool)

(assert (=> d!1089647 (=> (not res!1513236) (not e!2305066))))

(assert (=> d!1089647 (= res!1513236 ((_ is Cons!39660) (usedCharacters!1166 r!26968)))))

(assert (=> d!1089647 (= (contains!7996 (usedCharacters!1166 r!26968) cNot!42) lt!1298295)))

(declare-fun b!3724231 () Bool)

(declare-fun e!2305065 () Bool)

(assert (=> b!3724231 (= e!2305066 e!2305065)))

(declare-fun res!1513235 () Bool)

(assert (=> b!3724231 (=> res!1513235 e!2305065)))

(assert (=> b!3724231 (= res!1513235 (= (h!45080 (usedCharacters!1166 r!26968)) cNot!42))))

(declare-fun b!3724232 () Bool)

(assert (=> b!3724232 (= e!2305065 (contains!7996 (t!302467 (usedCharacters!1166 r!26968)) cNot!42))))

(assert (= (and d!1089647 res!1513236) b!3724231))

(assert (= (and b!3724231 (not res!1513235)) b!3724232))

(assert (=> d!1089647 m!4226995))

(declare-fun m!4227001 () Bool)

(assert (=> d!1089647 m!4227001))

(declare-fun m!4227003 () Bool)

(assert (=> d!1089647 m!4227003))

(declare-fun m!4227005 () Bool)

(assert (=> b!3724232 m!4227005))

(assert (=> b!3724205 d!1089647))

(declare-fun d!1089649 () Bool)

(declare-fun c!644282 () Bool)

(assert (=> d!1089649 (= c!644282 (or ((_ is EmptyExpr!10903) r!26968) ((_ is EmptyLang!10903) r!26968)))))

(declare-fun e!2305097 () List!39784)

(assert (=> d!1089649 (= (usedCharacters!1166 r!26968) e!2305097)))

(declare-fun b!3724273 () Bool)

(declare-fun e!2305095 () List!39784)

(declare-fun call!271062 () List!39784)

(assert (=> b!3724273 (= e!2305095 call!271062)))

(declare-fun b!3724274 () Bool)

(assert (=> b!3724274 (= e!2305095 call!271062)))

(declare-fun c!644280 () Bool)

(declare-fun bm!271054 () Bool)

(declare-fun call!271061 () List!39784)

(declare-fun call!271059 () List!39784)

(declare-fun ++!9826 (List!39784 List!39784) List!39784)

(assert (=> bm!271054 (= call!271062 (++!9826 (ite c!644280 call!271061 call!271059) (ite c!644280 call!271059 call!271061)))))

(declare-fun b!3724275 () Bool)

(declare-fun e!2305096 () List!39784)

(assert (=> b!3724275 (= e!2305096 (Cons!39660 (c!644263 r!26968) Nil!39660))))

(declare-fun b!3724276 () Bool)

(declare-fun e!2305098 () List!39784)

(declare-fun call!271060 () List!39784)

(assert (=> b!3724276 (= e!2305098 call!271060)))

(declare-fun bm!271055 () Bool)

(assert (=> bm!271055 (= call!271061 (usedCharacters!1166 (ite c!644280 (regOne!22319 r!26968) (regTwo!22318 r!26968))))))

(declare-fun b!3724277 () Bool)

(declare-fun c!644283 () Bool)

(assert (=> b!3724277 (= c!644283 ((_ is Star!10903) r!26968))))

(assert (=> b!3724277 (= e!2305096 e!2305098)))

(declare-fun b!3724278 () Bool)

(assert (=> b!3724278 (= e!2305098 e!2305095)))

(assert (=> b!3724278 (= c!644280 ((_ is Union!10903) r!26968))))

(declare-fun b!3724279 () Bool)

(assert (=> b!3724279 (= e!2305097 e!2305096)))

(declare-fun c!644281 () Bool)

(assert (=> b!3724279 (= c!644281 ((_ is ElementMatch!10903) r!26968))))

(declare-fun b!3724280 () Bool)

(assert (=> b!3724280 (= e!2305097 Nil!39660)))

(declare-fun bm!271056 () Bool)

(assert (=> bm!271056 (= call!271060 (usedCharacters!1166 (ite c!644283 (reg!11232 r!26968) (ite c!644280 (regTwo!22319 r!26968) (regOne!22318 r!26968)))))))

(declare-fun bm!271057 () Bool)

(assert (=> bm!271057 (= call!271059 call!271060)))

(assert (= (and d!1089649 c!644282) b!3724280))

(assert (= (and d!1089649 (not c!644282)) b!3724279))

(assert (= (and b!3724279 c!644281) b!3724275))

(assert (= (and b!3724279 (not c!644281)) b!3724277))

(assert (= (and b!3724277 c!644283) b!3724276))

(assert (= (and b!3724277 (not c!644283)) b!3724278))

(assert (= (and b!3724278 c!644280) b!3724273))

(assert (= (and b!3724278 (not c!644280)) b!3724274))

(assert (= (or b!3724273 b!3724274) bm!271055))

(assert (= (or b!3724273 b!3724274) bm!271057))

(assert (= (or b!3724273 b!3724274) bm!271054))

(assert (= (or b!3724276 bm!271057) bm!271056))

(declare-fun m!4227025 () Bool)

(assert (=> bm!271054 m!4227025))

(declare-fun m!4227027 () Bool)

(assert (=> bm!271055 m!4227027))

(declare-fun m!4227029 () Bool)

(assert (=> bm!271056 m!4227029))

(assert (=> b!3724205 d!1089649))

(declare-fun b!3724333 () Bool)

(declare-fun res!1513264 () Bool)

(declare-fun e!2305129 () Bool)

(assert (=> b!3724333 (=> res!1513264 e!2305129)))

(assert (=> b!3724333 (= res!1513264 (not ((_ is Concat!17174) (regOne!22319 r!26968))))))

(declare-fun e!2305127 () Bool)

(assert (=> b!3724333 (= e!2305127 e!2305129)))

(declare-fun b!3724334 () Bool)

(declare-fun e!2305130 () Bool)

(declare-fun e!2305132 () Bool)

(assert (=> b!3724334 (= e!2305130 e!2305132)))

(declare-fun c!644300 () Bool)

(assert (=> b!3724334 (= c!644300 ((_ is Star!10903) (regOne!22319 r!26968)))))

(declare-fun b!3724335 () Bool)

(declare-fun res!1513267 () Bool)

(declare-fun e!2305131 () Bool)

(assert (=> b!3724335 (=> (not res!1513267) (not e!2305131))))

(declare-fun call!271081 () Bool)

(assert (=> b!3724335 (= res!1513267 call!271081)))

(assert (=> b!3724335 (= e!2305127 e!2305131)))

(declare-fun bm!271076 () Bool)

(declare-fun call!271082 () Bool)

(declare-fun call!271083 () Bool)

(assert (=> bm!271076 (= call!271082 call!271083)))

(declare-fun b!3724336 () Bool)

(declare-fun e!2305133 () Bool)

(assert (=> b!3724336 (= e!2305133 call!271082)))

(declare-fun bm!271077 () Bool)

(declare-fun c!644301 () Bool)

(assert (=> bm!271077 (= call!271083 (validRegex!5010 (ite c!644300 (reg!11232 (regOne!22319 r!26968)) (ite c!644301 (regTwo!22319 (regOne!22319 r!26968)) (regTwo!22318 (regOne!22319 r!26968))))))))

(declare-fun b!3724337 () Bool)

(declare-fun e!2305128 () Bool)

(assert (=> b!3724337 (= e!2305128 call!271083)))

(declare-fun d!1089657 () Bool)

(declare-fun res!1513263 () Bool)

(assert (=> d!1089657 (=> res!1513263 e!2305130)))

(assert (=> d!1089657 (= res!1513263 ((_ is ElementMatch!10903) (regOne!22319 r!26968)))))

(assert (=> d!1089657 (= (validRegex!5010 (regOne!22319 r!26968)) e!2305130)))

(declare-fun b!3724338 () Bool)

(assert (=> b!3724338 (= e!2305132 e!2305127)))

(assert (=> b!3724338 (= c!644301 ((_ is Union!10903) (regOne!22319 r!26968)))))

(declare-fun b!3724339 () Bool)

(assert (=> b!3724339 (= e!2305132 e!2305128)))

(declare-fun res!1513266 () Bool)

(declare-fun nullable!3811 (Regex!10903) Bool)

(assert (=> b!3724339 (= res!1513266 (not (nullable!3811 (reg!11232 (regOne!22319 r!26968)))))))

(assert (=> b!3724339 (=> (not res!1513266) (not e!2305128))))

(declare-fun b!3724340 () Bool)

(assert (=> b!3724340 (= e!2305129 e!2305133)))

(declare-fun res!1513265 () Bool)

(assert (=> b!3724340 (=> (not res!1513265) (not e!2305133))))

(assert (=> b!3724340 (= res!1513265 call!271081)))

(declare-fun b!3724341 () Bool)

(assert (=> b!3724341 (= e!2305131 call!271082)))

(declare-fun bm!271078 () Bool)

(assert (=> bm!271078 (= call!271081 (validRegex!5010 (ite c!644301 (regOne!22319 (regOne!22319 r!26968)) (regOne!22318 (regOne!22319 r!26968)))))))

(assert (= (and d!1089657 (not res!1513263)) b!3724334))

(assert (= (and b!3724334 c!644300) b!3724339))

(assert (= (and b!3724334 (not c!644300)) b!3724338))

(assert (= (and b!3724339 res!1513266) b!3724337))

(assert (= (and b!3724338 c!644301) b!3724335))

(assert (= (and b!3724338 (not c!644301)) b!3724333))

(assert (= (and b!3724335 res!1513267) b!3724341))

(assert (= (and b!3724333 (not res!1513264)) b!3724340))

(assert (= (and b!3724340 res!1513265) b!3724336))

(assert (= (or b!3724341 b!3724336) bm!271076))

(assert (= (or b!3724335 b!3724340) bm!271078))

(assert (= (or b!3724337 bm!271076) bm!271077))

(declare-fun m!4227037 () Bool)

(assert (=> bm!271077 m!4227037))

(declare-fun m!4227039 () Bool)

(assert (=> b!3724339 m!4227039))

(declare-fun m!4227041 () Bool)

(assert (=> bm!271078 m!4227041))

(assert (=> b!3724208 d!1089657))

(declare-fun b!3724346 () Bool)

(declare-fun res!1513269 () Bool)

(declare-fun e!2305137 () Bool)

(assert (=> b!3724346 (=> res!1513269 e!2305137)))

(assert (=> b!3724346 (= res!1513269 (not ((_ is Concat!17174) r!26968)))))

(declare-fun e!2305135 () Bool)

(assert (=> b!3724346 (= e!2305135 e!2305137)))

(declare-fun b!3724347 () Bool)

(declare-fun e!2305138 () Bool)

(declare-fun e!2305140 () Bool)

(assert (=> b!3724347 (= e!2305138 e!2305140)))

(declare-fun c!644302 () Bool)

(assert (=> b!3724347 (= c!644302 ((_ is Star!10903) r!26968))))

(declare-fun b!3724348 () Bool)

(declare-fun res!1513272 () Bool)

(declare-fun e!2305139 () Bool)

(assert (=> b!3724348 (=> (not res!1513272) (not e!2305139))))

(declare-fun call!271084 () Bool)

(assert (=> b!3724348 (= res!1513272 call!271084)))

(assert (=> b!3724348 (= e!2305135 e!2305139)))

(declare-fun bm!271079 () Bool)

(declare-fun call!271085 () Bool)

(declare-fun call!271086 () Bool)

(assert (=> bm!271079 (= call!271085 call!271086)))

(declare-fun b!3724349 () Bool)

(declare-fun e!2305141 () Bool)

(assert (=> b!3724349 (= e!2305141 call!271085)))

(declare-fun bm!271080 () Bool)

(declare-fun c!644303 () Bool)

(assert (=> bm!271080 (= call!271086 (validRegex!5010 (ite c!644302 (reg!11232 r!26968) (ite c!644303 (regTwo!22319 r!26968) (regTwo!22318 r!26968)))))))

(declare-fun b!3724350 () Bool)

(declare-fun e!2305136 () Bool)

(assert (=> b!3724350 (= e!2305136 call!271086)))

(declare-fun d!1089659 () Bool)

(declare-fun res!1513268 () Bool)

(assert (=> d!1089659 (=> res!1513268 e!2305138)))

(assert (=> d!1089659 (= res!1513268 ((_ is ElementMatch!10903) r!26968))))

(assert (=> d!1089659 (= (validRegex!5010 r!26968) e!2305138)))

(declare-fun b!3724351 () Bool)

(assert (=> b!3724351 (= e!2305140 e!2305135)))

(assert (=> b!3724351 (= c!644303 ((_ is Union!10903) r!26968))))

(declare-fun b!3724352 () Bool)

(assert (=> b!3724352 (= e!2305140 e!2305136)))

(declare-fun res!1513271 () Bool)

(assert (=> b!3724352 (= res!1513271 (not (nullable!3811 (reg!11232 r!26968))))))

(assert (=> b!3724352 (=> (not res!1513271) (not e!2305136))))

(declare-fun b!3724353 () Bool)

(assert (=> b!3724353 (= e!2305137 e!2305141)))

(declare-fun res!1513270 () Bool)

(assert (=> b!3724353 (=> (not res!1513270) (not e!2305141))))

(assert (=> b!3724353 (= res!1513270 call!271084)))

(declare-fun b!3724354 () Bool)

(assert (=> b!3724354 (= e!2305139 call!271085)))

(declare-fun bm!271081 () Bool)

(assert (=> bm!271081 (= call!271084 (validRegex!5010 (ite c!644303 (regOne!22319 r!26968) (regOne!22318 r!26968))))))

(assert (= (and d!1089659 (not res!1513268)) b!3724347))

(assert (= (and b!3724347 c!644302) b!3724352))

(assert (= (and b!3724347 (not c!644302)) b!3724351))

(assert (= (and b!3724352 res!1513271) b!3724350))

(assert (= (and b!3724351 c!644303) b!3724348))

(assert (= (and b!3724351 (not c!644303)) b!3724346))

(assert (= (and b!3724348 res!1513272) b!3724354))

(assert (= (and b!3724346 (not res!1513269)) b!3724353))

(assert (= (and b!3724353 res!1513270) b!3724349))

(assert (= (or b!3724354 b!3724349) bm!271079))

(assert (= (or b!3724348 b!3724353) bm!271081))

(assert (= (or b!3724350 bm!271079) bm!271080))

(declare-fun m!4227043 () Bool)

(assert (=> bm!271080 m!4227043))

(declare-fun m!4227045 () Bool)

(assert (=> b!3724352 m!4227045))

(declare-fun m!4227047 () Bool)

(assert (=> bm!271081 m!4227047))

(assert (=> start!350670 d!1089659))

(declare-fun b!3724384 () Bool)

(declare-fun e!2305148 () Bool)

(declare-fun tp!1132831 () Bool)

(declare-fun tp!1132834 () Bool)

(assert (=> b!3724384 (= e!2305148 (and tp!1132831 tp!1132834))))

(assert (=> b!3724202 (= tp!1132784 e!2305148)))

(declare-fun b!3724382 () Bool)

(declare-fun tp!1132833 () Bool)

(declare-fun tp!1132830 () Bool)

(assert (=> b!3724382 (= e!2305148 (and tp!1132833 tp!1132830))))

(declare-fun b!3724381 () Bool)

(assert (=> b!3724381 (= e!2305148 tp_is_empty!18821)))

(declare-fun b!3724383 () Bool)

(declare-fun tp!1132832 () Bool)

(assert (=> b!3724383 (= e!2305148 tp!1132832)))

(assert (= (and b!3724202 ((_ is ElementMatch!10903) (reg!11232 r!26968))) b!3724381))

(assert (= (and b!3724202 ((_ is Concat!17174) (reg!11232 r!26968))) b!3724382))

(assert (= (and b!3724202 ((_ is Star!10903) (reg!11232 r!26968))) b!3724383))

(assert (= (and b!3724202 ((_ is Union!10903) (reg!11232 r!26968))) b!3724384))

(declare-fun b!3724388 () Bool)

(declare-fun e!2305149 () Bool)

(declare-fun tp!1132836 () Bool)

(declare-fun tp!1132839 () Bool)

(assert (=> b!3724388 (= e!2305149 (and tp!1132836 tp!1132839))))

(assert (=> b!3724207 (= tp!1132781 e!2305149)))

(declare-fun b!3724386 () Bool)

(declare-fun tp!1132838 () Bool)

(declare-fun tp!1132835 () Bool)

(assert (=> b!3724386 (= e!2305149 (and tp!1132838 tp!1132835))))

(declare-fun b!3724385 () Bool)

(assert (=> b!3724385 (= e!2305149 tp_is_empty!18821)))

(declare-fun b!3724387 () Bool)

(declare-fun tp!1132837 () Bool)

(assert (=> b!3724387 (= e!2305149 tp!1132837)))

(assert (= (and b!3724207 ((_ is ElementMatch!10903) (regOne!22318 r!26968))) b!3724385))

(assert (= (and b!3724207 ((_ is Concat!17174) (regOne!22318 r!26968))) b!3724386))

(assert (= (and b!3724207 ((_ is Star!10903) (regOne!22318 r!26968))) b!3724387))

(assert (= (and b!3724207 ((_ is Union!10903) (regOne!22318 r!26968))) b!3724388))

(declare-fun b!3724392 () Bool)

(declare-fun e!2305150 () Bool)

(declare-fun tp!1132841 () Bool)

(declare-fun tp!1132844 () Bool)

(assert (=> b!3724392 (= e!2305150 (and tp!1132841 tp!1132844))))

(assert (=> b!3724207 (= tp!1132782 e!2305150)))

(declare-fun b!3724390 () Bool)

(declare-fun tp!1132843 () Bool)

(declare-fun tp!1132840 () Bool)

(assert (=> b!3724390 (= e!2305150 (and tp!1132843 tp!1132840))))

(declare-fun b!3724389 () Bool)

(assert (=> b!3724389 (= e!2305150 tp_is_empty!18821)))

(declare-fun b!3724391 () Bool)

(declare-fun tp!1132842 () Bool)

(assert (=> b!3724391 (= e!2305150 tp!1132842)))

(assert (= (and b!3724207 ((_ is ElementMatch!10903) (regTwo!22318 r!26968))) b!3724389))

(assert (= (and b!3724207 ((_ is Concat!17174) (regTwo!22318 r!26968))) b!3724390))

(assert (= (and b!3724207 ((_ is Star!10903) (regTwo!22318 r!26968))) b!3724391))

(assert (= (and b!3724207 ((_ is Union!10903) (regTwo!22318 r!26968))) b!3724392))

(declare-fun b!3724396 () Bool)

(declare-fun e!2305151 () Bool)

(declare-fun tp!1132846 () Bool)

(declare-fun tp!1132849 () Bool)

(assert (=> b!3724396 (= e!2305151 (and tp!1132846 tp!1132849))))

(assert (=> b!3724203 (= tp!1132783 e!2305151)))

(declare-fun b!3724394 () Bool)

(declare-fun tp!1132848 () Bool)

(declare-fun tp!1132845 () Bool)

(assert (=> b!3724394 (= e!2305151 (and tp!1132848 tp!1132845))))

(declare-fun b!3724393 () Bool)

(assert (=> b!3724393 (= e!2305151 tp_is_empty!18821)))

(declare-fun b!3724395 () Bool)

(declare-fun tp!1132847 () Bool)

(assert (=> b!3724395 (= e!2305151 tp!1132847)))

(assert (= (and b!3724203 ((_ is ElementMatch!10903) (regOne!22319 r!26968))) b!3724393))

(assert (= (and b!3724203 ((_ is Concat!17174) (regOne!22319 r!26968))) b!3724394))

(assert (= (and b!3724203 ((_ is Star!10903) (regOne!22319 r!26968))) b!3724395))

(assert (= (and b!3724203 ((_ is Union!10903) (regOne!22319 r!26968))) b!3724396))

(declare-fun b!3724400 () Bool)

(declare-fun e!2305152 () Bool)

(declare-fun tp!1132851 () Bool)

(declare-fun tp!1132854 () Bool)

(assert (=> b!3724400 (= e!2305152 (and tp!1132851 tp!1132854))))

(assert (=> b!3724203 (= tp!1132780 e!2305152)))

(declare-fun b!3724398 () Bool)

(declare-fun tp!1132853 () Bool)

(declare-fun tp!1132850 () Bool)

(assert (=> b!3724398 (= e!2305152 (and tp!1132853 tp!1132850))))

(declare-fun b!3724397 () Bool)

(assert (=> b!3724397 (= e!2305152 tp_is_empty!18821)))

(declare-fun b!3724399 () Bool)

(declare-fun tp!1132852 () Bool)

(assert (=> b!3724399 (= e!2305152 tp!1132852)))

(assert (= (and b!3724203 ((_ is ElementMatch!10903) (regTwo!22319 r!26968))) b!3724397))

(assert (= (and b!3724203 ((_ is Concat!17174) (regTwo!22319 r!26968))) b!3724398))

(assert (= (and b!3724203 ((_ is Star!10903) (regTwo!22319 r!26968))) b!3724399))

(assert (= (and b!3724203 ((_ is Union!10903) (regTwo!22319 r!26968))) b!3724400))

(check-sat (not b!3724390) (not b!3724386) (not b!3724382) (not b!3724339) (not b!3724395) (not bm!271078) (not b!3724400) tp_is_empty!18821 (not b!3724232) (not bm!271054) (not b!3724399) (not b!3724352) (not bm!271056) (not bm!271055) (not b!3724398) (not b!3724391) (not d!1089647) (not b!3724394) (not bm!271080) (not b!3724383) (not bm!271081) (not bm!271077) (not b!3724392) (not b!3724396) (not b!3724387) (not b!3724384) (not b!3724388))
(check-sat)
