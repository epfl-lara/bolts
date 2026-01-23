; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285356 () Bool)

(assert start!285356)

(declare-fun b!2936378 () Bool)

(declare-fun e!1851002 () Bool)

(declare-fun tp!940228 () Bool)

(assert (=> b!2936378 (= e!1851002 tp!940228)))

(declare-fun res!1212245 () Bool)

(declare-fun e!1851003 () Bool)

(assert (=> start!285356 (=> (not res!1212245) (not e!1851003))))

(declare-datatypes ((C!18332 0))(
  ( (C!18333 (val!11202 Int)) )
))
(declare-datatypes ((Regex!9073 0))(
  ( (ElementMatch!9073 (c!479803 C!18332)) (Concat!14394 (regOne!18658 Regex!9073) (regTwo!18658 Regex!9073)) (EmptyExpr!9073) (Star!9073 (reg!9402 Regex!9073)) (EmptyLang!9073) (Union!9073 (regOne!18659 Regex!9073) (regTwo!18659 Regex!9073)) )
))
(declare-fun r!17423 () Regex!9073)

(declare-fun validRegex!3806 (Regex!9073) Bool)

(assert (=> start!285356 (= res!1212245 (validRegex!3806 r!17423))))

(assert (=> start!285356 e!1851003))

(assert (=> start!285356 e!1851002))

(declare-fun e!1851005 () Bool)

(assert (=> start!285356 e!1851005))

(declare-fun b!2936379 () Bool)

(declare-fun res!1212246 () Bool)

(declare-fun e!1851004 () Bool)

(assert (=> b!2936379 (=> res!1212246 e!1851004)))

(declare-datatypes ((List!34938 0))(
  ( (Nil!34814) (Cons!34814 (h!40234 C!18332) (t!234003 List!34938)) )
))
(declare-fun s!11993 () List!34938)

(declare-fun isEmpty!19075 (List!34938) Bool)

(assert (=> b!2936379 (= res!1212246 (not (isEmpty!19075 s!11993)))))

(declare-fun b!2936380 () Bool)

(declare-fun tp_is_empty!15709 () Bool)

(assert (=> b!2936380 (= e!1851002 tp_is_empty!15709)))

(declare-fun b!2936381 () Bool)

(declare-fun tp!940230 () Bool)

(declare-fun tp!940231 () Bool)

(assert (=> b!2936381 (= e!1851002 (and tp!940230 tp!940231))))

(declare-fun b!2936382 () Bool)

(declare-fun tp!940233 () Bool)

(declare-fun tp!940229 () Bool)

(assert (=> b!2936382 (= e!1851002 (and tp!940233 tp!940229))))

(declare-fun b!2936383 () Bool)

(declare-fun tp!940232 () Bool)

(assert (=> b!2936383 (= e!1851005 (and tp_is_empty!15709 tp!940232))))

(declare-fun b!2936384 () Bool)

(declare-fun simplify!80 (Regex!9073) Regex!9073)

(assert (=> b!2936384 (= e!1851004 (validRegex!3806 (simplify!80 r!17423)))))

(declare-fun b!2936385 () Bool)

(assert (=> b!2936385 (= e!1851003 (not e!1851004))))

(declare-fun res!1212244 () Bool)

(assert (=> b!2936385 (=> res!1212244 e!1851004)))

(declare-fun lt!1029299 () Bool)

(get-info :version)

(assert (=> b!2936385 (= res!1212244 (or lt!1029299 (not ((_ is Concat!14394) r!17423))))))

(declare-fun matchRSpec!1210 (Regex!9073 List!34938) Bool)

(assert (=> b!2936385 (= lt!1029299 (matchRSpec!1210 r!17423 s!11993))))

(declare-fun matchR!3955 (Regex!9073 List!34938) Bool)

(assert (=> b!2936385 (= lt!1029299 (matchR!3955 r!17423 s!11993))))

(declare-datatypes ((Unit!48525 0))(
  ( (Unit!48526) )
))
(declare-fun lt!1029298 () Unit!48525)

(declare-fun mainMatchTheorem!1210 (Regex!9073 List!34938) Unit!48525)

(assert (=> b!2936385 (= lt!1029298 (mainMatchTheorem!1210 r!17423 s!11993))))

(assert (= (and start!285356 res!1212245) b!2936385))

(assert (= (and b!2936385 (not res!1212244)) b!2936379))

(assert (= (and b!2936379 (not res!1212246)) b!2936384))

(assert (= (and start!285356 ((_ is ElementMatch!9073) r!17423)) b!2936380))

(assert (= (and start!285356 ((_ is Concat!14394) r!17423)) b!2936381))

(assert (= (and start!285356 ((_ is Star!9073) r!17423)) b!2936378))

(assert (= (and start!285356 ((_ is Union!9073) r!17423)) b!2936382))

(assert (= (and start!285356 ((_ is Cons!34814) s!11993)) b!2936383))

(declare-fun m!3323839 () Bool)

(assert (=> start!285356 m!3323839))

(declare-fun m!3323841 () Bool)

(assert (=> b!2936379 m!3323841))

(declare-fun m!3323843 () Bool)

(assert (=> b!2936384 m!3323843))

(assert (=> b!2936384 m!3323843))

(declare-fun m!3323845 () Bool)

(assert (=> b!2936384 m!3323845))

(declare-fun m!3323847 () Bool)

(assert (=> b!2936385 m!3323847))

(declare-fun m!3323849 () Bool)

(assert (=> b!2936385 m!3323849))

(declare-fun m!3323851 () Bool)

(assert (=> b!2936385 m!3323851))

(check-sat (not b!2936384) (not b!2936385) (not b!2936381) (not start!285356) (not b!2936379) (not b!2936382) tp_is_empty!15709 (not b!2936378) (not b!2936383))
(check-sat)
(get-model)

(declare-fun b!2936431 () Bool)

(declare-fun e!1851047 () Bool)

(declare-fun call!192998 () Bool)

(assert (=> b!2936431 (= e!1851047 call!192998)))

(declare-fun bm!192993 () Bool)

(declare-fun call!192999 () Bool)

(assert (=> bm!192993 (= call!192998 call!192999)))

(declare-fun b!2936432 () Bool)

(declare-fun e!1851043 () Bool)

(declare-fun call!193000 () Bool)

(assert (=> b!2936432 (= e!1851043 call!193000)))

(declare-fun b!2936433 () Bool)

(declare-fun e!1851042 () Bool)

(assert (=> b!2936433 (= e!1851042 e!1851043)))

(declare-fun res!1212275 () Bool)

(assert (=> b!2936433 (=> (not res!1212275) (not e!1851043))))

(assert (=> b!2936433 (= res!1212275 call!192998)))

(declare-fun bm!192994 () Bool)

(declare-fun c!479814 () Bool)

(assert (=> bm!192994 (= call!193000 (validRegex!3806 (ite c!479814 (regOne!18659 (simplify!80 r!17423)) (regTwo!18658 (simplify!80 r!17423)))))))

(declare-fun b!2936434 () Bool)

(declare-fun e!1851044 () Bool)

(declare-fun e!1851041 () Bool)

(assert (=> b!2936434 (= e!1851044 e!1851041)))

(declare-fun res!1212272 () Bool)

(declare-fun nullable!2861 (Regex!9073) Bool)

(assert (=> b!2936434 (= res!1212272 (not (nullable!2861 (reg!9402 (simplify!80 r!17423)))))))

(assert (=> b!2936434 (=> (not res!1212272) (not e!1851041))))

(declare-fun b!2936435 () Bool)

(declare-fun e!1851046 () Bool)

(assert (=> b!2936435 (= e!1851044 e!1851046)))

(assert (=> b!2936435 (= c!479814 ((_ is Union!9073) (simplify!80 r!17423)))))

(declare-fun b!2936436 () Bool)

(assert (=> b!2936436 (= e!1851041 call!192999)))

(declare-fun b!2936437 () Bool)

(declare-fun res!1212273 () Bool)

(assert (=> b!2936437 (=> (not res!1212273) (not e!1851047))))

(assert (=> b!2936437 (= res!1212273 call!193000)))

(assert (=> b!2936437 (= e!1851046 e!1851047)))

(declare-fun b!2936438 () Bool)

(declare-fun res!1212276 () Bool)

(assert (=> b!2936438 (=> res!1212276 e!1851042)))

(assert (=> b!2936438 (= res!1212276 (not ((_ is Concat!14394) (simplify!80 r!17423))))))

(assert (=> b!2936438 (= e!1851046 e!1851042)))

(declare-fun b!2936439 () Bool)

(declare-fun e!1851045 () Bool)

(assert (=> b!2936439 (= e!1851045 e!1851044)))

(declare-fun c!479815 () Bool)

(assert (=> b!2936439 (= c!479815 ((_ is Star!9073) (simplify!80 r!17423)))))

(declare-fun bm!192995 () Bool)

(assert (=> bm!192995 (= call!192999 (validRegex!3806 (ite c!479815 (reg!9402 (simplify!80 r!17423)) (ite c!479814 (regTwo!18659 (simplify!80 r!17423)) (regOne!18658 (simplify!80 r!17423))))))))

(declare-fun d!839868 () Bool)

(declare-fun res!1212274 () Bool)

(assert (=> d!839868 (=> res!1212274 e!1851045)))

(assert (=> d!839868 (= res!1212274 ((_ is ElementMatch!9073) (simplify!80 r!17423)))))

(assert (=> d!839868 (= (validRegex!3806 (simplify!80 r!17423)) e!1851045)))

(assert (= (and d!839868 (not res!1212274)) b!2936439))

(assert (= (and b!2936439 c!479815) b!2936434))

(assert (= (and b!2936439 (not c!479815)) b!2936435))

(assert (= (and b!2936434 res!1212272) b!2936436))

(assert (= (and b!2936435 c!479814) b!2936437))

(assert (= (and b!2936435 (not c!479814)) b!2936438))

(assert (= (and b!2936437 res!1212273) b!2936431))

(assert (= (and b!2936438 (not res!1212276)) b!2936433))

(assert (= (and b!2936433 res!1212275) b!2936432))

(assert (= (or b!2936437 b!2936432) bm!192994))

(assert (= (or b!2936431 b!2936433) bm!192993))

(assert (= (or b!2936436 bm!192993) bm!192995))

(declare-fun m!3323859 () Bool)

(assert (=> bm!192994 m!3323859))

(declare-fun m!3323861 () Bool)

(assert (=> b!2936434 m!3323861))

(declare-fun m!3323863 () Bool)

(assert (=> bm!192995 m!3323863))

(assert (=> b!2936384 d!839868))

(declare-fun b!2936565 () Bool)

(declare-fun e!1851127 () Bool)

(declare-fun call!193041 () Bool)

(assert (=> b!2936565 (= e!1851127 call!193041)))

(declare-fun b!2936566 () Bool)

(declare-fun c!479880 () Bool)

(declare-fun lt!1029335 () Regex!9073)

(declare-fun isEmptyExpr!290 (Regex!9073) Bool)

(assert (=> b!2936566 (= c!479880 (isEmptyExpr!290 lt!1029335))))

(declare-fun e!1851119 () Regex!9073)

(declare-fun e!1851128 () Regex!9073)

(assert (=> b!2936566 (= e!1851119 e!1851128)))

(declare-fun b!2936567 () Bool)

(declare-fun e!1851118 () Regex!9073)

(declare-fun e!1851131 () Regex!9073)

(assert (=> b!2936567 (= e!1851118 e!1851131)))

(declare-fun c!479877 () Bool)

(assert (=> b!2936567 (= c!479877 ((_ is Star!9073) r!17423))))

(declare-fun b!2936568 () Bool)

(declare-fun e!1851121 () Bool)

(declare-fun lt!1029331 () Regex!9073)

(assert (=> b!2936568 (= e!1851121 (= (nullable!2861 lt!1029331) (nullable!2861 r!17423)))))

(declare-fun lt!1029333 () Regex!9073)

(declare-fun lt!1029334 () Regex!9073)

(declare-fun call!193036 () Bool)

(declare-fun c!479874 () Bool)

(declare-fun bm!193031 () Bool)

(declare-fun isEmptyLang!205 (Regex!9073) Bool)

(assert (=> bm!193031 (= call!193036 (isEmptyLang!205 (ite c!479877 lt!1029333 (ite c!479874 lt!1029334 lt!1029335))))))

(declare-fun call!193039 () Regex!9073)

(declare-fun bm!193032 () Bool)

(assert (=> bm!193032 (= call!193039 (simplify!80 (ite c!479877 (reg!9402 r!17423) (ite c!479874 (regTwo!18659 r!17423) (regTwo!18658 r!17423)))))))

(declare-fun b!2936569 () Bool)

(declare-fun lt!1029330 () Regex!9073)

(assert (=> b!2936569 (= e!1851128 lt!1029330)))

(declare-fun b!2936570 () Bool)

(declare-fun e!1851124 () Regex!9073)

(declare-fun e!1851125 () Regex!9073)

(assert (=> b!2936570 (= e!1851124 e!1851125)))

(declare-fun lt!1029332 () Regex!9073)

(declare-fun call!193037 () Regex!9073)

(assert (=> b!2936570 (= lt!1029332 call!193037)))

(declare-fun call!193042 () Regex!9073)

(assert (=> b!2936570 (= lt!1029334 call!193042)))

(declare-fun c!479879 () Bool)

(declare-fun call!193038 () Bool)

(assert (=> b!2936570 (= c!479879 call!193038)))

(declare-fun b!2936571 () Bool)

(declare-fun e!1851120 () Regex!9073)

(declare-fun e!1851126 () Regex!9073)

(assert (=> b!2936571 (= e!1851120 e!1851126)))

(declare-fun c!479871 () Bool)

(assert (=> b!2936571 (= c!479871 ((_ is ElementMatch!9073) r!17423))))

(declare-fun d!839872 () Bool)

(assert (=> d!839872 e!1851121))

(declare-fun res!1212293 () Bool)

(assert (=> d!839872 (=> (not res!1212293) (not e!1851121))))

(assert (=> d!839872 (= res!1212293 (validRegex!3806 lt!1029331))))

(assert (=> d!839872 (= lt!1029331 e!1851120)))

(declare-fun c!479875 () Bool)

(assert (=> d!839872 (= c!479875 ((_ is EmptyLang!9073) r!17423))))

(assert (=> d!839872 (validRegex!3806 r!17423)))

(assert (=> d!839872 (= (simplify!80 r!17423) lt!1029331)))

(declare-fun b!2936572 () Bool)

(declare-fun e!1851130 () Regex!9073)

(assert (=> b!2936572 (= e!1851130 EmptyExpr!9073)))

(declare-fun b!2936573 () Bool)

(assert (=> b!2936573 (= e!1851119 EmptyLang!9073)))

(declare-fun b!2936574 () Bool)

(declare-fun e!1851129 () Bool)

(assert (=> b!2936574 (= e!1851129 call!193038)))

(declare-fun b!2936575 () Bool)

(assert (=> b!2936575 (= e!1851130 (Star!9073 lt!1029333))))

(declare-fun b!2936576 () Bool)

(declare-fun e!1851123 () Regex!9073)

(assert (=> b!2936576 (= e!1851123 (Union!9073 lt!1029332 lt!1029334))))

(declare-fun b!2936577 () Bool)

(declare-fun c!479873 () Bool)

(assert (=> b!2936577 (= c!479873 e!1851127)))

(declare-fun res!1212292 () Bool)

(assert (=> b!2936577 (=> res!1212292 e!1851127)))

(assert (=> b!2936577 (= res!1212292 call!193036)))

(assert (=> b!2936577 (= lt!1029333 call!193039)))

(assert (=> b!2936577 (= e!1851131 e!1851130)))

(declare-fun bm!193033 () Bool)

(assert (=> bm!193033 (= call!193042 call!193039)))

(declare-fun bm!193034 () Bool)

(declare-fun call!193040 () Bool)

(assert (=> bm!193034 (= call!193040 call!193036)))

(declare-fun b!2936578 () Bool)

(assert (=> b!2936578 (= e!1851124 e!1851119)))

(assert (=> b!2936578 (= lt!1029335 call!193037)))

(assert (=> b!2936578 (= lt!1029330 call!193042)))

(declare-fun res!1212294 () Bool)

(assert (=> b!2936578 (= res!1212294 call!193040)))

(assert (=> b!2936578 (=> res!1212294 e!1851129)))

(declare-fun c!479876 () Bool)

(assert (=> b!2936578 (= c!479876 e!1851129)))

(declare-fun b!2936579 () Bool)

(assert (=> b!2936579 (= e!1851120 EmptyLang!9073)))

(declare-fun b!2936580 () Bool)

(declare-fun e!1851122 () Regex!9073)

(assert (=> b!2936580 (= e!1851122 (Concat!14394 lt!1029335 lt!1029330))))

(declare-fun b!2936581 () Bool)

(assert (=> b!2936581 (= e!1851128 e!1851122)))

(declare-fun c!479872 () Bool)

(assert (=> b!2936581 (= c!479872 call!193041)))

(declare-fun b!2936582 () Bool)

(assert (=> b!2936582 (= e!1851125 lt!1029334)))

(declare-fun bm!193035 () Bool)

(assert (=> bm!193035 (= call!193041 (isEmptyExpr!290 (ite c!479877 lt!1029333 lt!1029330)))))

(declare-fun b!2936583 () Bool)

(declare-fun c!479881 () Bool)

(assert (=> b!2936583 (= c!479881 ((_ is EmptyExpr!9073) r!17423))))

(assert (=> b!2936583 (= e!1851126 e!1851118)))

(declare-fun b!2936584 () Bool)

(declare-fun c!479878 () Bool)

(assert (=> b!2936584 (= c!479878 call!193040)))

(assert (=> b!2936584 (= e!1851125 e!1851123)))

(declare-fun b!2936585 () Bool)

(assert (=> b!2936585 (= e!1851122 lt!1029335)))

(declare-fun b!2936586 () Bool)

(assert (=> b!2936586 (= e!1851123 lt!1029332)))

(declare-fun b!2936587 () Bool)

(assert (=> b!2936587 (= c!479874 ((_ is Union!9073) r!17423))))

(assert (=> b!2936587 (= e!1851131 e!1851124)))

(declare-fun bm!193036 () Bool)

(assert (=> bm!193036 (= call!193037 (simplify!80 (ite c!479874 (regOne!18659 r!17423) (regOne!18658 r!17423))))))

(declare-fun b!2936588 () Bool)

(assert (=> b!2936588 (= e!1851118 EmptyExpr!9073)))

(declare-fun b!2936589 () Bool)

(assert (=> b!2936589 (= e!1851126 r!17423)))

(declare-fun bm!193037 () Bool)

(assert (=> bm!193037 (= call!193038 (isEmptyLang!205 (ite c!479874 lt!1029332 lt!1029330)))))

(assert (= (and d!839872 c!479875) b!2936579))

(assert (= (and d!839872 (not c!479875)) b!2936571))

(assert (= (and b!2936571 c!479871) b!2936589))

(assert (= (and b!2936571 (not c!479871)) b!2936583))

(assert (= (and b!2936583 c!479881) b!2936588))

(assert (= (and b!2936583 (not c!479881)) b!2936567))

(assert (= (and b!2936567 c!479877) b!2936577))

(assert (= (and b!2936567 (not c!479877)) b!2936587))

(assert (= (and b!2936577 (not res!1212292)) b!2936565))

(assert (= (and b!2936577 c!479873) b!2936572))

(assert (= (and b!2936577 (not c!479873)) b!2936575))

(assert (= (and b!2936587 c!479874) b!2936570))

(assert (= (and b!2936587 (not c!479874)) b!2936578))

(assert (= (and b!2936570 c!479879) b!2936582))

(assert (= (and b!2936570 (not c!479879)) b!2936584))

(assert (= (and b!2936584 c!479878) b!2936586))

(assert (= (and b!2936584 (not c!479878)) b!2936576))

(assert (= (and b!2936578 (not res!1212294)) b!2936574))

(assert (= (and b!2936578 c!479876) b!2936573))

(assert (= (and b!2936578 (not c!479876)) b!2936566))

(assert (= (and b!2936566 c!479880) b!2936569))

(assert (= (and b!2936566 (not c!479880)) b!2936581))

(assert (= (and b!2936581 c!479872) b!2936585))

(assert (= (and b!2936581 (not c!479872)) b!2936580))

(assert (= (or b!2936570 b!2936578) bm!193033))

(assert (= (or b!2936570 b!2936578) bm!193036))

(assert (= (or b!2936570 b!2936574) bm!193037))

(assert (= (or b!2936584 b!2936578) bm!193034))

(assert (= (or b!2936565 b!2936581) bm!193035))

(assert (= (or b!2936577 bm!193033) bm!193032))

(assert (= (or b!2936577 bm!193034) bm!193031))

(assert (= (and d!839872 res!1212293) b!2936568))

(declare-fun m!3323889 () Bool)

(assert (=> bm!193032 m!3323889))

(declare-fun m!3323891 () Bool)

(assert (=> d!839872 m!3323891))

(assert (=> d!839872 m!3323839))

(declare-fun m!3323893 () Bool)

(assert (=> bm!193035 m!3323893))

(declare-fun m!3323895 () Bool)

(assert (=> bm!193037 m!3323895))

(declare-fun m!3323897 () Bool)

(assert (=> b!2936568 m!3323897))

(declare-fun m!3323899 () Bool)

(assert (=> b!2936568 m!3323899))

(declare-fun m!3323901 () Bool)

(assert (=> bm!193031 m!3323901))

(declare-fun m!3323903 () Bool)

(assert (=> bm!193036 m!3323903))

(declare-fun m!3323905 () Bool)

(assert (=> b!2936566 m!3323905))

(assert (=> b!2936384 d!839872))

(declare-fun b!2936599 () Bool)

(declare-fun e!1851145 () Bool)

(declare-fun call!193046 () Bool)

(assert (=> b!2936599 (= e!1851145 call!193046)))

(declare-fun bm!193041 () Bool)

(declare-fun call!193047 () Bool)

(assert (=> bm!193041 (= call!193046 call!193047)))

(declare-fun b!2936600 () Bool)

(declare-fun e!1851141 () Bool)

(declare-fun call!193048 () Bool)

(assert (=> b!2936600 (= e!1851141 call!193048)))

(declare-fun b!2936601 () Bool)

(declare-fun e!1851140 () Bool)

(assert (=> b!2936601 (= e!1851140 e!1851141)))

(declare-fun res!1212303 () Bool)

(assert (=> b!2936601 (=> (not res!1212303) (not e!1851141))))

(assert (=> b!2936601 (= res!1212303 call!193046)))

(declare-fun bm!193042 () Bool)

(declare-fun c!479884 () Bool)

(assert (=> bm!193042 (= call!193048 (validRegex!3806 (ite c!479884 (regOne!18659 r!17423) (regTwo!18658 r!17423))))))

(declare-fun b!2936602 () Bool)

(declare-fun e!1851142 () Bool)

(declare-fun e!1851139 () Bool)

(assert (=> b!2936602 (= e!1851142 e!1851139)))

(declare-fun res!1212300 () Bool)

(assert (=> b!2936602 (= res!1212300 (not (nullable!2861 (reg!9402 r!17423))))))

(assert (=> b!2936602 (=> (not res!1212300) (not e!1851139))))

(declare-fun b!2936603 () Bool)

(declare-fun e!1851144 () Bool)

(assert (=> b!2936603 (= e!1851142 e!1851144)))

(assert (=> b!2936603 (= c!479884 ((_ is Union!9073) r!17423))))

(declare-fun b!2936604 () Bool)

(assert (=> b!2936604 (= e!1851139 call!193047)))

(declare-fun b!2936605 () Bool)

(declare-fun res!1212301 () Bool)

(assert (=> b!2936605 (=> (not res!1212301) (not e!1851145))))

(assert (=> b!2936605 (= res!1212301 call!193048)))

(assert (=> b!2936605 (= e!1851144 e!1851145)))

(declare-fun b!2936606 () Bool)

(declare-fun res!1212304 () Bool)

(assert (=> b!2936606 (=> res!1212304 e!1851140)))

(assert (=> b!2936606 (= res!1212304 (not ((_ is Concat!14394) r!17423)))))

(assert (=> b!2936606 (= e!1851144 e!1851140)))

(declare-fun b!2936607 () Bool)

(declare-fun e!1851143 () Bool)

(assert (=> b!2936607 (= e!1851143 e!1851142)))

(declare-fun c!479885 () Bool)

(assert (=> b!2936607 (= c!479885 ((_ is Star!9073) r!17423))))

(declare-fun bm!193043 () Bool)

(assert (=> bm!193043 (= call!193047 (validRegex!3806 (ite c!479885 (reg!9402 r!17423) (ite c!479884 (regTwo!18659 r!17423) (regOne!18658 r!17423)))))))

(declare-fun d!839880 () Bool)

(declare-fun res!1212302 () Bool)

(assert (=> d!839880 (=> res!1212302 e!1851143)))

(assert (=> d!839880 (= res!1212302 ((_ is ElementMatch!9073) r!17423))))

(assert (=> d!839880 (= (validRegex!3806 r!17423) e!1851143)))

(assert (= (and d!839880 (not res!1212302)) b!2936607))

(assert (= (and b!2936607 c!479885) b!2936602))

(assert (= (and b!2936607 (not c!479885)) b!2936603))

(assert (= (and b!2936602 res!1212300) b!2936604))

(assert (= (and b!2936603 c!479884) b!2936605))

(assert (= (and b!2936603 (not c!479884)) b!2936606))

(assert (= (and b!2936605 res!1212301) b!2936599))

(assert (= (and b!2936606 (not res!1212304)) b!2936601))

(assert (= (and b!2936601 res!1212303) b!2936600))

(assert (= (or b!2936605 b!2936600) bm!193042))

(assert (= (or b!2936599 b!2936601) bm!193041))

(assert (= (or b!2936604 bm!193041) bm!193043))

(declare-fun m!3323907 () Bool)

(assert (=> bm!193042 m!3323907))

(declare-fun m!3323909 () Bool)

(assert (=> b!2936602 m!3323909))

(declare-fun m!3323911 () Bool)

(assert (=> bm!193043 m!3323911))

(assert (=> start!285356 d!839880))

(declare-fun b!2936772 () Bool)

(assert (=> b!2936772 true))

(assert (=> b!2936772 true))

(declare-fun bs!525445 () Bool)

(declare-fun b!2936770 () Bool)

(assert (= bs!525445 (and b!2936770 b!2936772)))

(declare-fun lambda!109428 () Int)

(declare-fun lambda!109427 () Int)

(assert (=> bs!525445 (not (= lambda!109428 lambda!109427))))

(assert (=> b!2936770 true))

(assert (=> b!2936770 true))

(declare-fun b!2936764 () Bool)

(declare-fun e!1851223 () Bool)

(assert (=> b!2936764 (= e!1851223 (matchRSpec!1210 (regTwo!18659 r!17423) s!11993))))

(declare-fun b!2936765 () Bool)

(declare-fun c!479918 () Bool)

(assert (=> b!2936765 (= c!479918 ((_ is ElementMatch!9073) r!17423))))

(declare-fun e!1851224 () Bool)

(declare-fun e!1851225 () Bool)

(assert (=> b!2936765 (= e!1851224 e!1851225)))

(declare-fun bm!193057 () Bool)

(declare-fun call!193062 () Bool)

(declare-fun c!479917 () Bool)

(declare-fun Exists!1435 (Int) Bool)

(assert (=> bm!193057 (= call!193062 (Exists!1435 (ite c!479917 lambda!109427 lambda!109428)))))

(declare-fun b!2936767 () Bool)

(declare-fun e!1851222 () Bool)

(declare-fun call!193063 () Bool)

(assert (=> b!2936767 (= e!1851222 call!193063)))

(declare-fun bm!193058 () Bool)

(assert (=> bm!193058 (= call!193063 (isEmpty!19075 s!11993))))

(declare-fun b!2936768 () Bool)

(declare-fun res!1212366 () Bool)

(declare-fun e!1851226 () Bool)

(assert (=> b!2936768 (=> res!1212366 e!1851226)))

(assert (=> b!2936768 (= res!1212366 call!193063)))

(declare-fun e!1851221 () Bool)

(assert (=> b!2936768 (= e!1851221 e!1851226)))

(declare-fun b!2936769 () Bool)

(assert (=> b!2936769 (= e!1851225 (= s!11993 (Cons!34814 (c!479803 r!17423) Nil!34814)))))

(assert (=> b!2936770 (= e!1851221 call!193062)))

(declare-fun d!839882 () Bool)

(declare-fun c!479916 () Bool)

(assert (=> d!839882 (= c!479916 ((_ is EmptyExpr!9073) r!17423))))

(assert (=> d!839882 (= (matchRSpec!1210 r!17423 s!11993) e!1851222)))

(declare-fun b!2936766 () Bool)

(assert (=> b!2936766 (= e!1851222 e!1851224)))

(declare-fun res!1212365 () Bool)

(assert (=> b!2936766 (= res!1212365 (not ((_ is EmptyLang!9073) r!17423)))))

(assert (=> b!2936766 (=> (not res!1212365) (not e!1851224))))

(declare-fun b!2936771 () Bool)

(declare-fun e!1851220 () Bool)

(assert (=> b!2936771 (= e!1851220 e!1851223)))

(declare-fun res!1212364 () Bool)

(assert (=> b!2936771 (= res!1212364 (matchRSpec!1210 (regOne!18659 r!17423) s!11993))))

(assert (=> b!2936771 (=> res!1212364 e!1851223)))

(assert (=> b!2936772 (= e!1851226 call!193062)))

(declare-fun b!2936773 () Bool)

(assert (=> b!2936773 (= e!1851220 e!1851221)))

(assert (=> b!2936773 (= c!479917 ((_ is Star!9073) r!17423))))

(declare-fun b!2936774 () Bool)

(declare-fun c!479915 () Bool)

(assert (=> b!2936774 (= c!479915 ((_ is Union!9073) r!17423))))

(assert (=> b!2936774 (= e!1851225 e!1851220)))

(assert (= (and d!839882 c!479916) b!2936767))

(assert (= (and d!839882 (not c!479916)) b!2936766))

(assert (= (and b!2936766 res!1212365) b!2936765))

(assert (= (and b!2936765 c!479918) b!2936769))

(assert (= (and b!2936765 (not c!479918)) b!2936774))

(assert (= (and b!2936774 c!479915) b!2936771))

(assert (= (and b!2936774 (not c!479915)) b!2936773))

(assert (= (and b!2936771 (not res!1212364)) b!2936764))

(assert (= (and b!2936773 c!479917) b!2936768))

(assert (= (and b!2936773 (not c!479917)) b!2936770))

(assert (= (and b!2936768 (not res!1212366)) b!2936772))

(assert (= (or b!2936772 b!2936770) bm!193057))

(assert (= (or b!2936767 b!2936768) bm!193058))

(declare-fun m!3323931 () Bool)

(assert (=> b!2936764 m!3323931))

(declare-fun m!3323933 () Bool)

(assert (=> bm!193057 m!3323933))

(assert (=> bm!193058 m!3323841))

(declare-fun m!3323935 () Bool)

(assert (=> b!2936771 m!3323935))

(assert (=> b!2936385 d!839882))

(declare-fun b!2936807 () Bool)

(declare-fun res!1212385 () Bool)

(declare-fun e!1851247 () Bool)

(assert (=> b!2936807 (=> (not res!1212385) (not e!1851247))))

(declare-fun call!193066 () Bool)

(assert (=> b!2936807 (= res!1212385 (not call!193066))))

(declare-fun b!2936808 () Bool)

(declare-fun e!1851244 () Bool)

(declare-fun e!1851242 () Bool)

(assert (=> b!2936808 (= e!1851244 e!1851242)))

(declare-fun res!1212386 () Bool)

(assert (=> b!2936808 (=> res!1212386 e!1851242)))

(assert (=> b!2936808 (= res!1212386 call!193066)))

(declare-fun b!2936809 () Bool)

(declare-fun res!1212388 () Bool)

(assert (=> b!2936809 (=> res!1212388 e!1851242)))

(declare-fun tail!4757 (List!34938) List!34938)

(assert (=> b!2936809 (= res!1212388 (not (isEmpty!19075 (tail!4757 s!11993))))))

(declare-fun b!2936810 () Bool)

(declare-fun e!1851245 () Bool)

(declare-fun e!1851241 () Bool)

(assert (=> b!2936810 (= e!1851245 e!1851241)))

(declare-fun c!479927 () Bool)

(assert (=> b!2936810 (= c!479927 ((_ is EmptyLang!9073) r!17423))))

(declare-fun bm!193061 () Bool)

(assert (=> bm!193061 (= call!193066 (isEmpty!19075 s!11993))))

(declare-fun b!2936811 () Bool)

(declare-fun res!1212387 () Bool)

(assert (=> b!2936811 (=> (not res!1212387) (not e!1851247))))

(assert (=> b!2936811 (= res!1212387 (isEmpty!19075 (tail!4757 s!11993)))))

(declare-fun b!2936812 () Bool)

(declare-fun e!1851246 () Bool)

(assert (=> b!2936812 (= e!1851246 (nullable!2861 r!17423))))

(declare-fun b!2936813 () Bool)

(declare-fun e!1851243 () Bool)

(assert (=> b!2936813 (= e!1851243 e!1851244)))

(declare-fun res!1212384 () Bool)

(assert (=> b!2936813 (=> (not res!1212384) (not e!1851244))))

(declare-fun lt!1029344 () Bool)

(assert (=> b!2936813 (= res!1212384 (not lt!1029344))))

(declare-fun b!2936814 () Bool)

(declare-fun derivativeStep!2472 (Regex!9073 C!18332) Regex!9073)

(declare-fun head!6531 (List!34938) C!18332)

(assert (=> b!2936814 (= e!1851246 (matchR!3955 (derivativeStep!2472 r!17423 (head!6531 s!11993)) (tail!4757 s!11993)))))

(declare-fun b!2936815 () Bool)

(assert (=> b!2936815 (= e!1851241 (not lt!1029344))))

(declare-fun b!2936817 () Bool)

(assert (=> b!2936817 (= e!1851247 (= (head!6531 s!11993) (c!479803 r!17423)))))

(declare-fun b!2936818 () Bool)

(declare-fun res!1212390 () Bool)

(assert (=> b!2936818 (=> res!1212390 e!1851243)))

(assert (=> b!2936818 (= res!1212390 (not ((_ is ElementMatch!9073) r!17423)))))

(assert (=> b!2936818 (= e!1851241 e!1851243)))

(declare-fun b!2936819 () Bool)

(assert (=> b!2936819 (= e!1851245 (= lt!1029344 call!193066))))

(declare-fun b!2936820 () Bool)

(declare-fun res!1212383 () Bool)

(assert (=> b!2936820 (=> res!1212383 e!1851243)))

(assert (=> b!2936820 (= res!1212383 e!1851247)))

(declare-fun res!1212389 () Bool)

(assert (=> b!2936820 (=> (not res!1212389) (not e!1851247))))

(assert (=> b!2936820 (= res!1212389 lt!1029344)))

(declare-fun d!839888 () Bool)

(assert (=> d!839888 e!1851245))

(declare-fun c!479926 () Bool)

(assert (=> d!839888 (= c!479926 ((_ is EmptyExpr!9073) r!17423))))

(assert (=> d!839888 (= lt!1029344 e!1851246)))

(declare-fun c!479925 () Bool)

(assert (=> d!839888 (= c!479925 (isEmpty!19075 s!11993))))

(assert (=> d!839888 (validRegex!3806 r!17423)))

(assert (=> d!839888 (= (matchR!3955 r!17423 s!11993) lt!1029344)))

(declare-fun b!2936816 () Bool)

(assert (=> b!2936816 (= e!1851242 (not (= (head!6531 s!11993) (c!479803 r!17423))))))

(assert (= (and d!839888 c!479925) b!2936812))

(assert (= (and d!839888 (not c!479925)) b!2936814))

(assert (= (and d!839888 c!479926) b!2936819))

(assert (= (and d!839888 (not c!479926)) b!2936810))

(assert (= (and b!2936810 c!479927) b!2936815))

(assert (= (and b!2936810 (not c!479927)) b!2936818))

(assert (= (and b!2936818 (not res!1212390)) b!2936820))

(assert (= (and b!2936820 res!1212389) b!2936807))

(assert (= (and b!2936807 res!1212385) b!2936811))

(assert (= (and b!2936811 res!1212387) b!2936817))

(assert (= (and b!2936820 (not res!1212383)) b!2936813))

(assert (= (and b!2936813 res!1212384) b!2936808))

(assert (= (and b!2936808 (not res!1212386)) b!2936809))

(assert (= (and b!2936809 (not res!1212388)) b!2936816))

(assert (= (or b!2936819 b!2936807 b!2936808) bm!193061))

(declare-fun m!3323937 () Bool)

(assert (=> b!2936811 m!3323937))

(assert (=> b!2936811 m!3323937))

(declare-fun m!3323939 () Bool)

(assert (=> b!2936811 m!3323939))

(assert (=> b!2936809 m!3323937))

(assert (=> b!2936809 m!3323937))

(assert (=> b!2936809 m!3323939))

(declare-fun m!3323941 () Bool)

(assert (=> b!2936816 m!3323941))

(assert (=> d!839888 m!3323841))

(assert (=> d!839888 m!3323839))

(assert (=> b!2936817 m!3323941))

(assert (=> bm!193061 m!3323841))

(assert (=> b!2936814 m!3323941))

(assert (=> b!2936814 m!3323941))

(declare-fun m!3323943 () Bool)

(assert (=> b!2936814 m!3323943))

(assert (=> b!2936814 m!3323937))

(assert (=> b!2936814 m!3323943))

(assert (=> b!2936814 m!3323937))

(declare-fun m!3323945 () Bool)

(assert (=> b!2936814 m!3323945))

(assert (=> b!2936812 m!3323899))

(assert (=> b!2936385 d!839888))

(declare-fun d!839890 () Bool)

(assert (=> d!839890 (= (matchR!3955 r!17423 s!11993) (matchRSpec!1210 r!17423 s!11993))))

(declare-fun lt!1029347 () Unit!48525)

(declare-fun choose!17373 (Regex!9073 List!34938) Unit!48525)

(assert (=> d!839890 (= lt!1029347 (choose!17373 r!17423 s!11993))))

(assert (=> d!839890 (validRegex!3806 r!17423)))

(assert (=> d!839890 (= (mainMatchTheorem!1210 r!17423 s!11993) lt!1029347)))

(declare-fun bs!525446 () Bool)

(assert (= bs!525446 d!839890))

(assert (=> bs!525446 m!3323849))

(assert (=> bs!525446 m!3323847))

(declare-fun m!3323947 () Bool)

(assert (=> bs!525446 m!3323947))

(assert (=> bs!525446 m!3323839))

(assert (=> b!2936385 d!839890))

(declare-fun d!839892 () Bool)

(assert (=> d!839892 (= (isEmpty!19075 s!11993) ((_ is Nil!34814) s!11993))))

(assert (=> b!2936379 d!839892))

(declare-fun e!1851250 () Bool)

(assert (=> b!2936381 (= tp!940230 e!1851250)))

(declare-fun b!2936831 () Bool)

(assert (=> b!2936831 (= e!1851250 tp_is_empty!15709)))

(declare-fun b!2936832 () Bool)

(declare-fun tp!940286 () Bool)

(declare-fun tp!940283 () Bool)

(assert (=> b!2936832 (= e!1851250 (and tp!940286 tp!940283))))

(declare-fun b!2936833 () Bool)

(declare-fun tp!940282 () Bool)

(assert (=> b!2936833 (= e!1851250 tp!940282)))

(declare-fun b!2936834 () Bool)

(declare-fun tp!940285 () Bool)

(declare-fun tp!940284 () Bool)

(assert (=> b!2936834 (= e!1851250 (and tp!940285 tp!940284))))

(assert (= (and b!2936381 ((_ is ElementMatch!9073) (regOne!18658 r!17423))) b!2936831))

(assert (= (and b!2936381 ((_ is Concat!14394) (regOne!18658 r!17423))) b!2936832))

(assert (= (and b!2936381 ((_ is Star!9073) (regOne!18658 r!17423))) b!2936833))

(assert (= (and b!2936381 ((_ is Union!9073) (regOne!18658 r!17423))) b!2936834))

(declare-fun e!1851251 () Bool)

(assert (=> b!2936381 (= tp!940231 e!1851251)))

(declare-fun b!2936835 () Bool)

(assert (=> b!2936835 (= e!1851251 tp_is_empty!15709)))

(declare-fun b!2936836 () Bool)

(declare-fun tp!940291 () Bool)

(declare-fun tp!940288 () Bool)

(assert (=> b!2936836 (= e!1851251 (and tp!940291 tp!940288))))

(declare-fun b!2936837 () Bool)

(declare-fun tp!940287 () Bool)

(assert (=> b!2936837 (= e!1851251 tp!940287)))

(declare-fun b!2936838 () Bool)

(declare-fun tp!940290 () Bool)

(declare-fun tp!940289 () Bool)

(assert (=> b!2936838 (= e!1851251 (and tp!940290 tp!940289))))

(assert (= (and b!2936381 ((_ is ElementMatch!9073) (regTwo!18658 r!17423))) b!2936835))

(assert (= (and b!2936381 ((_ is Concat!14394) (regTwo!18658 r!17423))) b!2936836))

(assert (= (and b!2936381 ((_ is Star!9073) (regTwo!18658 r!17423))) b!2936837))

(assert (= (and b!2936381 ((_ is Union!9073) (regTwo!18658 r!17423))) b!2936838))

(declare-fun e!1851252 () Bool)

(assert (=> b!2936382 (= tp!940233 e!1851252)))

(declare-fun b!2936839 () Bool)

(assert (=> b!2936839 (= e!1851252 tp_is_empty!15709)))

(declare-fun b!2936840 () Bool)

(declare-fun tp!940296 () Bool)

(declare-fun tp!940293 () Bool)

(assert (=> b!2936840 (= e!1851252 (and tp!940296 tp!940293))))

(declare-fun b!2936841 () Bool)

(declare-fun tp!940292 () Bool)

(assert (=> b!2936841 (= e!1851252 tp!940292)))

(declare-fun b!2936842 () Bool)

(declare-fun tp!940295 () Bool)

(declare-fun tp!940294 () Bool)

(assert (=> b!2936842 (= e!1851252 (and tp!940295 tp!940294))))

(assert (= (and b!2936382 ((_ is ElementMatch!9073) (regOne!18659 r!17423))) b!2936839))

(assert (= (and b!2936382 ((_ is Concat!14394) (regOne!18659 r!17423))) b!2936840))

(assert (= (and b!2936382 ((_ is Star!9073) (regOne!18659 r!17423))) b!2936841))

(assert (= (and b!2936382 ((_ is Union!9073) (regOne!18659 r!17423))) b!2936842))

(declare-fun e!1851253 () Bool)

(assert (=> b!2936382 (= tp!940229 e!1851253)))

(declare-fun b!2936843 () Bool)

(assert (=> b!2936843 (= e!1851253 tp_is_empty!15709)))

(declare-fun b!2936844 () Bool)

(declare-fun tp!940301 () Bool)

(declare-fun tp!940298 () Bool)

(assert (=> b!2936844 (= e!1851253 (and tp!940301 tp!940298))))

(declare-fun b!2936845 () Bool)

(declare-fun tp!940297 () Bool)

(assert (=> b!2936845 (= e!1851253 tp!940297)))

(declare-fun b!2936846 () Bool)

(declare-fun tp!940300 () Bool)

(declare-fun tp!940299 () Bool)

(assert (=> b!2936846 (= e!1851253 (and tp!940300 tp!940299))))

(assert (= (and b!2936382 ((_ is ElementMatch!9073) (regTwo!18659 r!17423))) b!2936843))

(assert (= (and b!2936382 ((_ is Concat!14394) (regTwo!18659 r!17423))) b!2936844))

(assert (= (and b!2936382 ((_ is Star!9073) (regTwo!18659 r!17423))) b!2936845))

(assert (= (and b!2936382 ((_ is Union!9073) (regTwo!18659 r!17423))) b!2936846))

(declare-fun e!1851254 () Bool)

(assert (=> b!2936378 (= tp!940228 e!1851254)))

(declare-fun b!2936847 () Bool)

(assert (=> b!2936847 (= e!1851254 tp_is_empty!15709)))

(declare-fun b!2936848 () Bool)

(declare-fun tp!940306 () Bool)

(declare-fun tp!940303 () Bool)

(assert (=> b!2936848 (= e!1851254 (and tp!940306 tp!940303))))

(declare-fun b!2936849 () Bool)

(declare-fun tp!940302 () Bool)

(assert (=> b!2936849 (= e!1851254 tp!940302)))

(declare-fun b!2936850 () Bool)

(declare-fun tp!940305 () Bool)

(declare-fun tp!940304 () Bool)

(assert (=> b!2936850 (= e!1851254 (and tp!940305 tp!940304))))

(assert (= (and b!2936378 ((_ is ElementMatch!9073) (reg!9402 r!17423))) b!2936847))

(assert (= (and b!2936378 ((_ is Concat!14394) (reg!9402 r!17423))) b!2936848))

(assert (= (and b!2936378 ((_ is Star!9073) (reg!9402 r!17423))) b!2936849))

(assert (= (and b!2936378 ((_ is Union!9073) (reg!9402 r!17423))) b!2936850))

(declare-fun b!2936855 () Bool)

(declare-fun e!1851257 () Bool)

(declare-fun tp!940309 () Bool)

(assert (=> b!2936855 (= e!1851257 (and tp_is_empty!15709 tp!940309))))

(assert (=> b!2936383 (= tp!940232 e!1851257)))

(assert (= (and b!2936383 ((_ is Cons!34814) (t!234003 s!11993))) b!2936855))

(check-sat (not b!2936855) (not b!2936809) (not b!2936849) (not b!2936434) (not d!839890) (not b!2936836) tp_is_empty!15709 (not bm!193042) (not bm!193057) (not b!2936811) (not b!2936845) (not bm!192995) (not b!2936842) (not bm!193031) (not b!2936841) (not b!2936838) (not b!2936833) (not b!2936834) (not bm!193058) (not bm!193043) (not b!2936816) (not b!2936844) (not b!2936850) (not b!2936764) (not b!2936771) (not b!2936837) (not bm!193035) (not b!2936814) (not bm!193061) (not b!2936840) (not bm!192994) (not bm!193036) (not b!2936846) (not bm!193037) (not bm!193032) (not b!2936817) (not b!2936566) (not b!2936832) (not b!2936568) (not b!2936812) (not b!2936848) (not d!839872) (not d!839888) (not b!2936602))
(check-sat)
