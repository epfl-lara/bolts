; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245572 () Bool)

(assert start!245572)

(declare-fun b!2519199 () Bool)

(declare-fun res!1064428 () Bool)

(declare-fun e!1595588 () Bool)

(assert (=> b!2519199 (=> (not res!1064428) (not e!1595588))))

(declare-datatypes ((C!15164 0))(
  ( (C!15165 (val!9234 Int)) )
))
(declare-datatypes ((Regex!7503 0))(
  ( (ElementMatch!7503 (c!401701 C!15164)) (Concat!12199 (regOne!15518 Regex!7503) (regTwo!15518 Regex!7503)) (EmptyExpr!7503) (Star!7503 (reg!7832 Regex!7503)) (EmptyLang!7503) (Union!7503 (regOne!15519 Regex!7503) (regTwo!15519 Regex!7503)) )
))
(declare-fun lt!899325 () Regex!7503)

(declare-datatypes ((List!29568 0))(
  ( (Nil!29468) (Cons!29468 (h!34888 C!15164) (t!211267 List!29568)) )
))
(declare-fun tl!4068 () List!29568)

(declare-fun nullable!2420 (Regex!7503) Bool)

(declare-fun derivative!198 (Regex!7503 List!29568) Regex!7503)

(assert (=> b!2519199 (= res!1064428 (not (nullable!2420 (derivative!198 lt!899325 tl!4068))))))

(declare-fun b!2519200 () Bool)

(declare-fun e!1595594 () Bool)

(declare-fun lt!899320 () Regex!7503)

(declare-datatypes ((tuple2!29508 0))(
  ( (tuple2!29509 (_1!17296 List!29568) (_2!17296 List!29568)) )
))
(declare-fun lt!899322 () tuple2!29508)

(declare-fun matchR!3490 (Regex!7503 List!29568) Bool)

(assert (=> b!2519200 (= e!1595594 (matchR!3490 lt!899320 (_2!17296 lt!899322)))))

(declare-fun b!2519201 () Bool)

(declare-fun res!1064431 () Bool)

(declare-fun e!1595593 () Bool)

(assert (=> b!2519201 (=> (not res!1064431) (not e!1595593))))

(declare-fun r!27340 () Regex!7503)

(get-info :version)

(assert (=> b!2519201 (= res!1064431 (and (not ((_ is EmptyExpr!7503) r!27340)) (not ((_ is EmptyLang!7503) r!27340)) (not ((_ is ElementMatch!7503) r!27340)) (not ((_ is Union!7503) r!27340)) ((_ is Star!7503) r!27340)))))

(declare-fun b!2519202 () Bool)

(assert (=> b!2519202 (= e!1595593 e!1595588)))

(declare-fun res!1064433 () Bool)

(assert (=> b!2519202 (=> (not res!1064433) (not e!1595588))))

(declare-fun lt!899323 () Regex!7503)

(assert (=> b!2519202 (= res!1064433 (= lt!899323 (Concat!12199 lt!899325 lt!899320)))))

(assert (=> b!2519202 (= lt!899320 (Star!7503 (reg!7832 r!27340)))))

(declare-fun c!14016 () C!15164)

(declare-fun derivativeStep!2072 (Regex!7503 C!15164) Regex!7503)

(assert (=> b!2519202 (= lt!899325 (derivativeStep!2072 (reg!7832 r!27340) c!14016))))

(declare-fun b!2519203 () Bool)

(declare-fun e!1595590 () Bool)

(declare-fun tp_is_empty!12861 () Bool)

(declare-fun tp!805252 () Bool)

(assert (=> b!2519203 (= e!1595590 (and tp_is_empty!12861 tp!805252))))

(declare-fun b!2519204 () Bool)

(declare-fun e!1595591 () Bool)

(declare-fun tp!805249 () Bool)

(declare-fun tp!805250 () Bool)

(assert (=> b!2519204 (= e!1595591 (and tp!805249 tp!805250))))

(declare-fun b!2519205 () Bool)

(declare-fun e!1595592 () Bool)

(assert (=> b!2519205 (= e!1595588 (not e!1595592))))

(declare-fun res!1064429 () Bool)

(assert (=> b!2519205 (=> res!1064429 e!1595592)))

(declare-fun lt!899324 () Bool)

(assert (=> b!2519205 (= res!1064429 (not lt!899324))))

(declare-fun lt!899326 () Regex!7503)

(assert (=> b!2519205 (= lt!899324 (matchR!3490 lt!899326 Nil!29468))))

(assert (=> b!2519205 (= lt!899324 (matchR!3490 lt!899323 tl!4068))))

(declare-datatypes ((Unit!43231 0))(
  ( (Unit!43232) )
))
(declare-fun lt!899319 () Unit!43231)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!136 (Regex!7503 List!29568) Unit!43231)

(assert (=> b!2519205 (= lt!899319 (lemmaMatchRIsSameAsWholeDerivativeAndNil!136 lt!899323 tl!4068))))

(declare-fun b!2519206 () Bool)

(declare-fun tp!805251 () Bool)

(declare-fun tp!805253 () Bool)

(assert (=> b!2519206 (= e!1595591 (and tp!805251 tp!805253))))

(declare-fun b!2519207 () Bool)

(assert (=> b!2519207 (= e!1595592 e!1595594)))

(declare-fun res!1064430 () Bool)

(assert (=> b!2519207 (=> res!1064430 e!1595594)))

(declare-fun ++!7224 (List!29568 List!29568) List!29568)

(assert (=> b!2519207 (= res!1064430 (not (= (++!7224 (_1!17296 lt!899322) (_2!17296 lt!899322)) tl!4068)))))

(declare-datatypes ((Option!5874 0))(
  ( (None!5873) (Some!5873 (v!31806 tuple2!29508)) )
))
(declare-fun lt!899318 () Option!5874)

(declare-fun get!9204 (Option!5874) tuple2!29508)

(assert (=> b!2519207 (= lt!899322 (get!9204 lt!899318))))

(declare-fun isDefined!4696 (Option!5874) Bool)

(assert (=> b!2519207 (isDefined!4696 lt!899318)))

(declare-fun findConcatSeparation!896 (Regex!7503 Regex!7503 List!29568 List!29568 List!29568) Option!5874)

(assert (=> b!2519207 (= lt!899318 (findConcatSeparation!896 lt!899325 lt!899320 Nil!29468 tl!4068 tl!4068))))

(declare-fun lt!899321 () Unit!43231)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!178 (Regex!7503 Regex!7503 List!29568) Unit!43231)

(assert (=> b!2519207 (= lt!899321 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!178 lt!899325 lt!899320 tl!4068))))

(declare-fun b!2519208 () Bool)

(declare-fun e!1595589 () Bool)

(assert (=> b!2519208 (= e!1595589 e!1595593)))

(declare-fun res!1064432 () Bool)

(assert (=> b!2519208 (=> (not res!1064432) (not e!1595593))))

(assert (=> b!2519208 (= res!1064432 (nullable!2420 lt!899326))))

(assert (=> b!2519208 (= lt!899326 (derivative!198 lt!899323 tl!4068))))

(assert (=> b!2519208 (= lt!899323 (derivativeStep!2072 r!27340 c!14016))))

(declare-fun res!1064434 () Bool)

(assert (=> start!245572 (=> (not res!1064434) (not e!1595589))))

(declare-fun validRegex!3129 (Regex!7503) Bool)

(assert (=> start!245572 (= res!1064434 (validRegex!3129 r!27340))))

(assert (=> start!245572 e!1595589))

(assert (=> start!245572 e!1595591))

(assert (=> start!245572 tp_is_empty!12861))

(assert (=> start!245572 e!1595590))

(declare-fun b!2519209 () Bool)

(assert (=> b!2519209 (= e!1595591 tp_is_empty!12861)))

(declare-fun b!2519210 () Bool)

(declare-fun tp!805254 () Bool)

(assert (=> b!2519210 (= e!1595591 tp!805254)))

(assert (= (and start!245572 res!1064434) b!2519208))

(assert (= (and b!2519208 res!1064432) b!2519201))

(assert (= (and b!2519201 res!1064431) b!2519202))

(assert (= (and b!2519202 res!1064433) b!2519199))

(assert (= (and b!2519199 res!1064428) b!2519205))

(assert (= (and b!2519205 (not res!1064429)) b!2519207))

(assert (= (and b!2519207 (not res!1064430)) b!2519200))

(assert (= (and start!245572 ((_ is ElementMatch!7503) r!27340)) b!2519209))

(assert (= (and start!245572 ((_ is Concat!12199) r!27340)) b!2519206))

(assert (= (and start!245572 ((_ is Star!7503) r!27340)) b!2519210))

(assert (= (and start!245572 ((_ is Union!7503) r!27340)) b!2519204))

(assert (= (and start!245572 ((_ is Cons!29468) tl!4068)) b!2519203))

(declare-fun m!2874517 () Bool)

(assert (=> b!2519208 m!2874517))

(declare-fun m!2874519 () Bool)

(assert (=> b!2519208 m!2874519))

(declare-fun m!2874521 () Bool)

(assert (=> b!2519208 m!2874521))

(declare-fun m!2874523 () Bool)

(assert (=> b!2519200 m!2874523))

(declare-fun m!2874525 () Bool)

(assert (=> start!245572 m!2874525))

(declare-fun m!2874527 () Bool)

(assert (=> b!2519205 m!2874527))

(declare-fun m!2874529 () Bool)

(assert (=> b!2519205 m!2874529))

(declare-fun m!2874531 () Bool)

(assert (=> b!2519205 m!2874531))

(declare-fun m!2874533 () Bool)

(assert (=> b!2519207 m!2874533))

(declare-fun m!2874535 () Bool)

(assert (=> b!2519207 m!2874535))

(declare-fun m!2874537 () Bool)

(assert (=> b!2519207 m!2874537))

(declare-fun m!2874539 () Bool)

(assert (=> b!2519207 m!2874539))

(declare-fun m!2874541 () Bool)

(assert (=> b!2519207 m!2874541))

(declare-fun m!2874543 () Bool)

(assert (=> b!2519199 m!2874543))

(assert (=> b!2519199 m!2874543))

(declare-fun m!2874545 () Bool)

(assert (=> b!2519199 m!2874545))

(declare-fun m!2874547 () Bool)

(assert (=> b!2519202 m!2874547))

(check-sat (not b!2519206) (not b!2519210) (not b!2519203) (not b!2519200) (not b!2519202) (not b!2519204) (not b!2519199) (not start!245572) (not b!2519208) (not b!2519207) tp_is_empty!12861 (not b!2519205))
(check-sat)
(get-model)

(declare-fun d!717745 () Bool)

(declare-fun nullableFct!662 (Regex!7503) Bool)

(assert (=> d!717745 (= (nullable!2420 lt!899326) (nullableFct!662 lt!899326))))

(declare-fun bs!468950 () Bool)

(assert (= bs!468950 d!717745))

(declare-fun m!2874549 () Bool)

(assert (=> bs!468950 m!2874549))

(assert (=> b!2519208 d!717745))

(declare-fun d!717747 () Bool)

(declare-fun lt!899329 () Regex!7503)

(assert (=> d!717747 (validRegex!3129 lt!899329)))

(declare-fun e!1595597 () Regex!7503)

(assert (=> d!717747 (= lt!899329 e!1595597)))

(declare-fun c!401704 () Bool)

(assert (=> d!717747 (= c!401704 ((_ is Cons!29468) tl!4068))))

(assert (=> d!717747 (validRegex!3129 lt!899323)))

(assert (=> d!717747 (= (derivative!198 lt!899323 tl!4068) lt!899329)))

(declare-fun b!2519215 () Bool)

(assert (=> b!2519215 (= e!1595597 (derivative!198 (derivativeStep!2072 lt!899323 (h!34888 tl!4068)) (t!211267 tl!4068)))))

(declare-fun b!2519216 () Bool)

(assert (=> b!2519216 (= e!1595597 lt!899323)))

(assert (= (and d!717747 c!401704) b!2519215))

(assert (= (and d!717747 (not c!401704)) b!2519216))

(declare-fun m!2874553 () Bool)

(assert (=> d!717747 m!2874553))

(declare-fun m!2874555 () Bool)

(assert (=> d!717747 m!2874555))

(declare-fun m!2874557 () Bool)

(assert (=> b!2519215 m!2874557))

(assert (=> b!2519215 m!2874557))

(declare-fun m!2874559 () Bool)

(assert (=> b!2519215 m!2874559))

(assert (=> b!2519208 d!717747))

(declare-fun b!2519265 () Bool)

(declare-fun e!1595625 () Regex!7503)

(declare-fun call!156900 () Regex!7503)

(assert (=> b!2519265 (= e!1595625 (Concat!12199 call!156900 r!27340))))

(declare-fun b!2519267 () Bool)

(declare-fun c!401731 () Bool)

(assert (=> b!2519267 (= c!401731 ((_ is Union!7503) r!27340))))

(declare-fun e!1595624 () Regex!7503)

(declare-fun e!1595626 () Regex!7503)

(assert (=> b!2519267 (= e!1595624 e!1595626)))

(declare-fun call!156901 () Regex!7503)

(declare-fun bm!156893 () Bool)

(assert (=> bm!156893 (= call!156901 (derivativeStep!2072 (ite c!401731 (regTwo!15519 r!27340) (regTwo!15518 r!27340)) c!14016))))

(declare-fun b!2519268 () Bool)

(declare-fun c!401732 () Bool)

(assert (=> b!2519268 (= c!401732 (nullable!2420 (regOne!15518 r!27340)))))

(declare-fun e!1595623 () Regex!7503)

(assert (=> b!2519268 (= e!1595625 e!1595623)))

(declare-fun b!2519269 () Bool)

(declare-fun e!1595622 () Regex!7503)

(assert (=> b!2519269 (= e!1595622 e!1595624)))

(declare-fun c!401730 () Bool)

(assert (=> b!2519269 (= c!401730 ((_ is ElementMatch!7503) r!27340))))

(declare-fun b!2519270 () Bool)

(declare-fun call!156899 () Regex!7503)

(assert (=> b!2519270 (= e!1595626 (Union!7503 call!156899 call!156901))))

(declare-fun bm!156894 () Bool)

(declare-fun call!156898 () Regex!7503)

(assert (=> bm!156894 (= call!156898 call!156900)))

(declare-fun c!401729 () Bool)

(declare-fun bm!156895 () Bool)

(assert (=> bm!156895 (= call!156899 (derivativeStep!2072 (ite c!401731 (regOne!15519 r!27340) (ite c!401729 (reg!7832 r!27340) (regOne!15518 r!27340))) c!14016))))

(declare-fun d!717753 () Bool)

(declare-fun lt!899338 () Regex!7503)

(assert (=> d!717753 (validRegex!3129 lt!899338)))

(assert (=> d!717753 (= lt!899338 e!1595622)))

(declare-fun c!401733 () Bool)

(assert (=> d!717753 (= c!401733 (or ((_ is EmptyExpr!7503) r!27340) ((_ is EmptyLang!7503) r!27340)))))

(assert (=> d!717753 (validRegex!3129 r!27340)))

(assert (=> d!717753 (= (derivativeStep!2072 r!27340 c!14016) lt!899338)))

(declare-fun b!2519266 () Bool)

(assert (=> b!2519266 (= e!1595626 e!1595625)))

(assert (=> b!2519266 (= c!401729 ((_ is Star!7503) r!27340))))

(declare-fun bm!156896 () Bool)

(assert (=> bm!156896 (= call!156900 call!156899)))

(declare-fun b!2519271 () Bool)

(assert (=> b!2519271 (= e!1595624 (ite (= c!14016 (c!401701 r!27340)) EmptyExpr!7503 EmptyLang!7503))))

(declare-fun b!2519272 () Bool)

(assert (=> b!2519272 (= e!1595623 (Union!7503 (Concat!12199 call!156898 (regTwo!15518 r!27340)) EmptyLang!7503))))

(declare-fun b!2519273 () Bool)

(assert (=> b!2519273 (= e!1595622 EmptyLang!7503)))

(declare-fun b!2519274 () Bool)

(assert (=> b!2519274 (= e!1595623 (Union!7503 (Concat!12199 call!156898 (regTwo!15518 r!27340)) call!156901))))

(assert (= (and d!717753 c!401733) b!2519273))

(assert (= (and d!717753 (not c!401733)) b!2519269))

(assert (= (and b!2519269 c!401730) b!2519271))

(assert (= (and b!2519269 (not c!401730)) b!2519267))

(assert (= (and b!2519267 c!401731) b!2519270))

(assert (= (and b!2519267 (not c!401731)) b!2519266))

(assert (= (and b!2519266 c!401729) b!2519265))

(assert (= (and b!2519266 (not c!401729)) b!2519268))

(assert (= (and b!2519268 c!401732) b!2519274))

(assert (= (and b!2519268 (not c!401732)) b!2519272))

(assert (= (or b!2519274 b!2519272) bm!156894))

(assert (= (or b!2519265 bm!156894) bm!156896))

(assert (= (or b!2519270 b!2519274) bm!156893))

(assert (= (or b!2519270 bm!156896) bm!156895))

(declare-fun m!2874579 () Bool)

(assert (=> bm!156893 m!2874579))

(declare-fun m!2874581 () Bool)

(assert (=> b!2519268 m!2874581))

(declare-fun m!2874583 () Bool)

(assert (=> bm!156895 m!2874583))

(declare-fun m!2874585 () Bool)

(assert (=> d!717753 m!2874585))

(assert (=> d!717753 m!2874525))

(assert (=> b!2519208 d!717753))

(declare-fun b!2519275 () Bool)

(declare-fun e!1595630 () Regex!7503)

(declare-fun call!156904 () Regex!7503)

(assert (=> b!2519275 (= e!1595630 (Concat!12199 call!156904 (reg!7832 r!27340)))))

(declare-fun b!2519277 () Bool)

(declare-fun c!401736 () Bool)

(assert (=> b!2519277 (= c!401736 ((_ is Union!7503) (reg!7832 r!27340)))))

(declare-fun e!1595629 () Regex!7503)

(declare-fun e!1595631 () Regex!7503)

(assert (=> b!2519277 (= e!1595629 e!1595631)))

(declare-fun bm!156897 () Bool)

(declare-fun call!156905 () Regex!7503)

(assert (=> bm!156897 (= call!156905 (derivativeStep!2072 (ite c!401736 (regTwo!15519 (reg!7832 r!27340)) (regTwo!15518 (reg!7832 r!27340))) c!14016))))

(declare-fun b!2519278 () Bool)

(declare-fun c!401737 () Bool)

(assert (=> b!2519278 (= c!401737 (nullable!2420 (regOne!15518 (reg!7832 r!27340))))))

(declare-fun e!1595628 () Regex!7503)

(assert (=> b!2519278 (= e!1595630 e!1595628)))

(declare-fun b!2519279 () Bool)

(declare-fun e!1595627 () Regex!7503)

(assert (=> b!2519279 (= e!1595627 e!1595629)))

(declare-fun c!401735 () Bool)

(assert (=> b!2519279 (= c!401735 ((_ is ElementMatch!7503) (reg!7832 r!27340)))))

(declare-fun b!2519280 () Bool)

(declare-fun call!156903 () Regex!7503)

(assert (=> b!2519280 (= e!1595631 (Union!7503 call!156903 call!156905))))

(declare-fun bm!156898 () Bool)

(declare-fun call!156902 () Regex!7503)

(assert (=> bm!156898 (= call!156902 call!156904)))

(declare-fun c!401734 () Bool)

(declare-fun bm!156899 () Bool)

(assert (=> bm!156899 (= call!156903 (derivativeStep!2072 (ite c!401736 (regOne!15519 (reg!7832 r!27340)) (ite c!401734 (reg!7832 (reg!7832 r!27340)) (regOne!15518 (reg!7832 r!27340)))) c!14016))))

(declare-fun d!717761 () Bool)

(declare-fun lt!899339 () Regex!7503)

(assert (=> d!717761 (validRegex!3129 lt!899339)))

(assert (=> d!717761 (= lt!899339 e!1595627)))

(declare-fun c!401738 () Bool)

(assert (=> d!717761 (= c!401738 (or ((_ is EmptyExpr!7503) (reg!7832 r!27340)) ((_ is EmptyLang!7503) (reg!7832 r!27340))))))

(assert (=> d!717761 (validRegex!3129 (reg!7832 r!27340))))

(assert (=> d!717761 (= (derivativeStep!2072 (reg!7832 r!27340) c!14016) lt!899339)))

(declare-fun b!2519276 () Bool)

(assert (=> b!2519276 (= e!1595631 e!1595630)))

(assert (=> b!2519276 (= c!401734 ((_ is Star!7503) (reg!7832 r!27340)))))

(declare-fun bm!156900 () Bool)

(assert (=> bm!156900 (= call!156904 call!156903)))

(declare-fun b!2519281 () Bool)

(assert (=> b!2519281 (= e!1595629 (ite (= c!14016 (c!401701 (reg!7832 r!27340))) EmptyExpr!7503 EmptyLang!7503))))

(declare-fun b!2519282 () Bool)

(assert (=> b!2519282 (= e!1595628 (Union!7503 (Concat!12199 call!156902 (regTwo!15518 (reg!7832 r!27340))) EmptyLang!7503))))

(declare-fun b!2519283 () Bool)

(assert (=> b!2519283 (= e!1595627 EmptyLang!7503)))

(declare-fun b!2519284 () Bool)

(assert (=> b!2519284 (= e!1595628 (Union!7503 (Concat!12199 call!156902 (regTwo!15518 (reg!7832 r!27340))) call!156905))))

(assert (= (and d!717761 c!401738) b!2519283))

(assert (= (and d!717761 (not c!401738)) b!2519279))

(assert (= (and b!2519279 c!401735) b!2519281))

(assert (= (and b!2519279 (not c!401735)) b!2519277))

(assert (= (and b!2519277 c!401736) b!2519280))

(assert (= (and b!2519277 (not c!401736)) b!2519276))

(assert (= (and b!2519276 c!401734) b!2519275))

(assert (= (and b!2519276 (not c!401734)) b!2519278))

(assert (= (and b!2519278 c!401737) b!2519284))

(assert (= (and b!2519278 (not c!401737)) b!2519282))

(assert (= (or b!2519284 b!2519282) bm!156898))

(assert (= (or b!2519275 bm!156898) bm!156900))

(assert (= (or b!2519280 b!2519284) bm!156897))

(assert (= (or b!2519280 bm!156900) bm!156899))

(declare-fun m!2874587 () Bool)

(assert (=> bm!156897 m!2874587))

(declare-fun m!2874589 () Bool)

(assert (=> b!2519278 m!2874589))

(declare-fun m!2874591 () Bool)

(assert (=> bm!156899 m!2874591))

(declare-fun m!2874593 () Bool)

(assert (=> d!717761 m!2874593))

(declare-fun m!2874595 () Bool)

(assert (=> d!717761 m!2874595))

(assert (=> b!2519202 d!717761))

(declare-fun b!2519313 () Bool)

(declare-fun e!1595651 () Bool)

(declare-fun call!156916 () Bool)

(assert (=> b!2519313 (= e!1595651 call!156916)))

(declare-fun b!2519314 () Bool)

(declare-fun res!1064447 () Bool)

(declare-fun e!1595657 () Bool)

(assert (=> b!2519314 (=> (not res!1064447) (not e!1595657))))

(assert (=> b!2519314 (= res!1064447 call!156916)))

(declare-fun e!1595655 () Bool)

(assert (=> b!2519314 (= e!1595655 e!1595657)))

(declare-fun b!2519315 () Bool)

(declare-fun call!156918 () Bool)

(assert (=> b!2519315 (= e!1595657 call!156918)))

(declare-fun bm!156911 () Bool)

(declare-fun call!156917 () Bool)

(assert (=> bm!156911 (= call!156918 call!156917)))

(declare-fun b!2519316 () Bool)

(declare-fun e!1595656 () Bool)

(assert (=> b!2519316 (= e!1595656 call!156917)))

(declare-fun d!717763 () Bool)

(declare-fun res!1064446 () Bool)

(declare-fun e!1595652 () Bool)

(assert (=> d!717763 (=> res!1064446 e!1595652)))

(assert (=> d!717763 (= res!1064446 ((_ is ElementMatch!7503) r!27340))))

(assert (=> d!717763 (= (validRegex!3129 r!27340) e!1595652)))

(declare-fun bm!156912 () Bool)

(declare-fun c!401749 () Bool)

(declare-fun c!401748 () Bool)

(assert (=> bm!156912 (= call!156917 (validRegex!3129 (ite c!401749 (reg!7832 r!27340) (ite c!401748 (regTwo!15519 r!27340) (regOne!15518 r!27340)))))))

(declare-fun bm!156913 () Bool)

(assert (=> bm!156913 (= call!156916 (validRegex!3129 (ite c!401748 (regOne!15519 r!27340) (regTwo!15518 r!27340))))))

(declare-fun b!2519317 () Bool)

(declare-fun e!1595653 () Bool)

(assert (=> b!2519317 (= e!1595652 e!1595653)))

(assert (=> b!2519317 (= c!401749 ((_ is Star!7503) r!27340))))

(declare-fun b!2519318 () Bool)

(declare-fun res!1064449 () Bool)

(declare-fun e!1595654 () Bool)

(assert (=> b!2519318 (=> res!1064449 e!1595654)))

(assert (=> b!2519318 (= res!1064449 (not ((_ is Concat!12199) r!27340)))))

(assert (=> b!2519318 (= e!1595655 e!1595654)))

(declare-fun b!2519319 () Bool)

(assert (=> b!2519319 (= e!1595653 e!1595656)))

(declare-fun res!1064445 () Bool)

(assert (=> b!2519319 (= res!1064445 (not (nullable!2420 (reg!7832 r!27340))))))

(assert (=> b!2519319 (=> (not res!1064445) (not e!1595656))))

(declare-fun b!2519320 () Bool)

(assert (=> b!2519320 (= e!1595653 e!1595655)))

(assert (=> b!2519320 (= c!401748 ((_ is Union!7503) r!27340))))

(declare-fun b!2519321 () Bool)

(assert (=> b!2519321 (= e!1595654 e!1595651)))

(declare-fun res!1064448 () Bool)

(assert (=> b!2519321 (=> (not res!1064448) (not e!1595651))))

(assert (=> b!2519321 (= res!1064448 call!156918)))

(assert (= (and d!717763 (not res!1064446)) b!2519317))

(assert (= (and b!2519317 c!401749) b!2519319))

(assert (= (and b!2519317 (not c!401749)) b!2519320))

(assert (= (and b!2519319 res!1064445) b!2519316))

(assert (= (and b!2519320 c!401748) b!2519314))

(assert (= (and b!2519320 (not c!401748)) b!2519318))

(assert (= (and b!2519314 res!1064447) b!2519315))

(assert (= (and b!2519318 (not res!1064449)) b!2519321))

(assert (= (and b!2519321 res!1064448) b!2519313))

(assert (= (or b!2519314 b!2519313) bm!156913))

(assert (= (or b!2519315 b!2519321) bm!156911))

(assert (= (or b!2519316 bm!156911) bm!156912))

(declare-fun m!2874605 () Bool)

(assert (=> bm!156912 m!2874605))

(declare-fun m!2874607 () Bool)

(assert (=> bm!156913 m!2874607))

(declare-fun m!2874609 () Bool)

(assert (=> b!2519319 m!2874609))

(assert (=> start!245572 d!717763))

(declare-fun b!2519394 () Bool)

(declare-fun e!1595698 () Option!5874)

(assert (=> b!2519394 (= e!1595698 (Some!5873 (tuple2!29509 Nil!29468 tl!4068)))))

(declare-fun b!2519395 () Bool)

(declare-fun lt!899356 () Unit!43231)

(declare-fun lt!899357 () Unit!43231)

(assert (=> b!2519395 (= lt!899356 lt!899357)))

(assert (=> b!2519395 (= (++!7224 (++!7224 Nil!29468 (Cons!29468 (h!34888 tl!4068) Nil!29468)) (t!211267 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!765 (List!29568 C!15164 List!29568 List!29568) Unit!43231)

(assert (=> b!2519395 (= lt!899357 (lemmaMoveElementToOtherListKeepsConcatEq!765 Nil!29468 (h!34888 tl!4068) (t!211267 tl!4068) tl!4068))))

(declare-fun e!1595695 () Option!5874)

(assert (=> b!2519395 (= e!1595695 (findConcatSeparation!896 lt!899325 lt!899320 (++!7224 Nil!29468 (Cons!29468 (h!34888 tl!4068) Nil!29468)) (t!211267 tl!4068) tl!4068))))

(declare-fun d!717767 () Bool)

(declare-fun e!1595696 () Bool)

(assert (=> d!717767 e!1595696))

(declare-fun res!1064490 () Bool)

(assert (=> d!717767 (=> res!1064490 e!1595696)))

(declare-fun e!1595697 () Bool)

(assert (=> d!717767 (= res!1064490 e!1595697)))

(declare-fun res!1064492 () Bool)

(assert (=> d!717767 (=> (not res!1064492) (not e!1595697))))

(declare-fun lt!899358 () Option!5874)

(assert (=> d!717767 (= res!1064492 (isDefined!4696 lt!899358))))

(assert (=> d!717767 (= lt!899358 e!1595698)))

(declare-fun c!401766 () Bool)

(declare-fun e!1595699 () Bool)

(assert (=> d!717767 (= c!401766 e!1595699)))

(declare-fun res!1064494 () Bool)

(assert (=> d!717767 (=> (not res!1064494) (not e!1595699))))

(assert (=> d!717767 (= res!1064494 (matchR!3490 lt!899325 Nil!29468))))

(assert (=> d!717767 (validRegex!3129 lt!899325)))

(assert (=> d!717767 (= (findConcatSeparation!896 lt!899325 lt!899320 Nil!29468 tl!4068 tl!4068) lt!899358)))

(declare-fun b!2519396 () Bool)

(assert (=> b!2519396 (= e!1595696 (not (isDefined!4696 lt!899358)))))

(declare-fun b!2519397 () Bool)

(declare-fun res!1064491 () Bool)

(assert (=> b!2519397 (=> (not res!1064491) (not e!1595697))))

(assert (=> b!2519397 (= res!1064491 (matchR!3490 lt!899320 (_2!17296 (get!9204 lt!899358))))))

(declare-fun b!2519398 () Bool)

(assert (=> b!2519398 (= e!1595699 (matchR!3490 lt!899320 tl!4068))))

(declare-fun b!2519399 () Bool)

(assert (=> b!2519399 (= e!1595695 None!5873)))

(declare-fun b!2519400 () Bool)

(declare-fun res!1064493 () Bool)

(assert (=> b!2519400 (=> (not res!1064493) (not e!1595697))))

(assert (=> b!2519400 (= res!1064493 (matchR!3490 lt!899325 (_1!17296 (get!9204 lt!899358))))))

(declare-fun b!2519401 () Bool)

(assert (=> b!2519401 (= e!1595698 e!1595695)))

(declare-fun c!401767 () Bool)

(assert (=> b!2519401 (= c!401767 ((_ is Nil!29468) tl!4068))))

(declare-fun b!2519402 () Bool)

(assert (=> b!2519402 (= e!1595697 (= (++!7224 (_1!17296 (get!9204 lt!899358)) (_2!17296 (get!9204 lt!899358))) tl!4068))))

(assert (= (and d!717767 res!1064494) b!2519398))

(assert (= (and d!717767 c!401766) b!2519394))

(assert (= (and d!717767 (not c!401766)) b!2519401))

(assert (= (and b!2519401 c!401767) b!2519399))

(assert (= (and b!2519401 (not c!401767)) b!2519395))

(assert (= (and d!717767 res!1064492) b!2519400))

(assert (= (and b!2519400 res!1064493) b!2519397))

(assert (= (and b!2519397 res!1064491) b!2519402))

(assert (= (and d!717767 (not res!1064490)) b!2519396))

(declare-fun m!2874647 () Bool)

(assert (=> b!2519402 m!2874647))

(declare-fun m!2874649 () Bool)

(assert (=> b!2519402 m!2874649))

(declare-fun m!2874651 () Bool)

(assert (=> b!2519398 m!2874651))

(declare-fun m!2874653 () Bool)

(assert (=> d!717767 m!2874653))

(declare-fun m!2874655 () Bool)

(assert (=> d!717767 m!2874655))

(declare-fun m!2874657 () Bool)

(assert (=> d!717767 m!2874657))

(declare-fun m!2874659 () Bool)

(assert (=> b!2519395 m!2874659))

(assert (=> b!2519395 m!2874659))

(declare-fun m!2874661 () Bool)

(assert (=> b!2519395 m!2874661))

(declare-fun m!2874663 () Bool)

(assert (=> b!2519395 m!2874663))

(assert (=> b!2519395 m!2874659))

(declare-fun m!2874665 () Bool)

(assert (=> b!2519395 m!2874665))

(assert (=> b!2519396 m!2874653))

(assert (=> b!2519400 m!2874647))

(declare-fun m!2874667 () Bool)

(assert (=> b!2519400 m!2874667))

(assert (=> b!2519397 m!2874647))

(declare-fun m!2874669 () Bool)

(assert (=> b!2519397 m!2874669))

(assert (=> b!2519207 d!717767))

(declare-fun d!717779 () Bool)

(declare-fun isEmpty!16929 (Option!5874) Bool)

(assert (=> d!717779 (= (isDefined!4696 lt!899318) (not (isEmpty!16929 lt!899318)))))

(declare-fun bs!468955 () Bool)

(assert (= bs!468955 d!717779))

(declare-fun m!2874671 () Bool)

(assert (=> bs!468955 m!2874671))

(assert (=> b!2519207 d!717779))

(declare-fun d!717781 () Bool)

(assert (=> d!717781 (= (get!9204 lt!899318) (v!31806 lt!899318))))

(assert (=> b!2519207 d!717781))

(declare-fun d!717783 () Bool)

(assert (=> d!717783 (isDefined!4696 (findConcatSeparation!896 lt!899325 lt!899320 Nil!29468 tl!4068 tl!4068))))

(declare-fun lt!899361 () Unit!43231)

(declare-fun choose!14930 (Regex!7503 Regex!7503 List!29568) Unit!43231)

(assert (=> d!717783 (= lt!899361 (choose!14930 lt!899325 lt!899320 tl!4068))))

(assert (=> d!717783 (validRegex!3129 lt!899325)))

(assert (=> d!717783 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!178 lt!899325 lt!899320 tl!4068) lt!899361)))

(declare-fun bs!468956 () Bool)

(assert (= bs!468956 d!717783))

(assert (=> bs!468956 m!2874539))

(assert (=> bs!468956 m!2874539))

(declare-fun m!2874673 () Bool)

(assert (=> bs!468956 m!2874673))

(declare-fun m!2874675 () Bool)

(assert (=> bs!468956 m!2874675))

(assert (=> bs!468956 m!2874657))

(assert (=> b!2519207 d!717783))

(declare-fun b!2519431 () Bool)

(declare-fun res!1064510 () Bool)

(declare-fun e!1595715 () Bool)

(assert (=> b!2519431 (=> (not res!1064510) (not e!1595715))))

(declare-fun lt!899370 () List!29568)

(declare-fun size!22914 (List!29568) Int)

(assert (=> b!2519431 (= res!1064510 (= (size!22914 lt!899370) (+ (size!22914 (_1!17296 lt!899322)) (size!22914 (_2!17296 lt!899322)))))))

(declare-fun b!2519432 () Bool)

(assert (=> b!2519432 (= e!1595715 (or (not (= (_2!17296 lt!899322) Nil!29468)) (= lt!899370 (_1!17296 lt!899322))))))

(declare-fun b!2519430 () Bool)

(declare-fun e!1595714 () List!29568)

(assert (=> b!2519430 (= e!1595714 (Cons!29468 (h!34888 (_1!17296 lt!899322)) (++!7224 (t!211267 (_1!17296 lt!899322)) (_2!17296 lt!899322))))))

(declare-fun d!717785 () Bool)

(assert (=> d!717785 e!1595715))

(declare-fun res!1064509 () Bool)

(assert (=> d!717785 (=> (not res!1064509) (not e!1595715))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4032 (List!29568) (InoxSet C!15164))

(assert (=> d!717785 (= res!1064509 (= (content!4032 lt!899370) ((_ map or) (content!4032 (_1!17296 lt!899322)) (content!4032 (_2!17296 lt!899322)))))))

(assert (=> d!717785 (= lt!899370 e!1595714)))

(declare-fun c!401774 () Bool)

(assert (=> d!717785 (= c!401774 ((_ is Nil!29468) (_1!17296 lt!899322)))))

(assert (=> d!717785 (= (++!7224 (_1!17296 lt!899322) (_2!17296 lt!899322)) lt!899370)))

(declare-fun b!2519429 () Bool)

(assert (=> b!2519429 (= e!1595714 (_2!17296 lt!899322))))

(assert (= (and d!717785 c!401774) b!2519429))

(assert (= (and d!717785 (not c!401774)) b!2519430))

(assert (= (and d!717785 res!1064509) b!2519431))

(assert (= (and b!2519431 res!1064510) b!2519432))

(declare-fun m!2874677 () Bool)

(assert (=> b!2519431 m!2874677))

(declare-fun m!2874679 () Bool)

(assert (=> b!2519431 m!2874679))

(declare-fun m!2874681 () Bool)

(assert (=> b!2519431 m!2874681))

(declare-fun m!2874683 () Bool)

(assert (=> b!2519430 m!2874683))

(declare-fun m!2874685 () Bool)

(assert (=> d!717785 m!2874685))

(declare-fun m!2874687 () Bool)

(assert (=> d!717785 m!2874687))

(declare-fun m!2874689 () Bool)

(assert (=> d!717785 m!2874689))

(assert (=> b!2519207 d!717785))

(declare-fun b!2519539 () Bool)

(declare-fun res!1064563 () Bool)

(declare-fun e!1595775 () Bool)

(assert (=> b!2519539 (=> (not res!1064563) (not e!1595775))))

(declare-fun isEmpty!16930 (List!29568) Bool)

(declare-fun tail!4029 (List!29568) List!29568)

(assert (=> b!2519539 (= res!1064563 (isEmpty!16930 (tail!4029 (_2!17296 lt!899322))))))

(declare-fun b!2519540 () Bool)

(declare-fun head!5752 (List!29568) C!15164)

(assert (=> b!2519540 (= e!1595775 (= (head!5752 (_2!17296 lt!899322)) (c!401701 lt!899320)))))

(declare-fun b!2519541 () Bool)

(declare-fun e!1595779 () Bool)

(assert (=> b!2519541 (= e!1595779 (nullable!2420 lt!899320))))

(declare-fun b!2519542 () Bool)

(declare-fun res!1064568 () Bool)

(assert (=> b!2519542 (=> (not res!1064568) (not e!1595775))))

(declare-fun call!156939 () Bool)

(assert (=> b!2519542 (= res!1064568 (not call!156939))))

(declare-fun d!717787 () Bool)

(declare-fun e!1595776 () Bool)

(assert (=> d!717787 e!1595776))

(declare-fun c!401801 () Bool)

(assert (=> d!717787 (= c!401801 ((_ is EmptyExpr!7503) lt!899320))))

(declare-fun lt!899382 () Bool)

(assert (=> d!717787 (= lt!899382 e!1595779)))

(declare-fun c!401802 () Bool)

(assert (=> d!717787 (= c!401802 (isEmpty!16930 (_2!17296 lt!899322)))))

(assert (=> d!717787 (validRegex!3129 lt!899320)))

(assert (=> d!717787 (= (matchR!3490 lt!899320 (_2!17296 lt!899322)) lt!899382)))

(declare-fun b!2519543 () Bool)

(declare-fun res!1064565 () Bool)

(declare-fun e!1595777 () Bool)

(assert (=> b!2519543 (=> res!1064565 e!1595777)))

(assert (=> b!2519543 (= res!1064565 (not (isEmpty!16930 (tail!4029 (_2!17296 lt!899322)))))))

(declare-fun b!2519544 () Bool)

(assert (=> b!2519544 (= e!1595779 (matchR!3490 (derivativeStep!2072 lt!899320 (head!5752 (_2!17296 lt!899322))) (tail!4029 (_2!17296 lt!899322))))))

(declare-fun b!2519545 () Bool)

(declare-fun e!1595783 () Bool)

(declare-fun e!1595782 () Bool)

(assert (=> b!2519545 (= e!1595783 e!1595782)))

(declare-fun res!1064567 () Bool)

(assert (=> b!2519545 (=> (not res!1064567) (not e!1595782))))

(assert (=> b!2519545 (= res!1064567 (not lt!899382))))

(declare-fun b!2519548 () Bool)

(assert (=> b!2519548 (= e!1595782 e!1595777)))

(declare-fun res!1064564 () Bool)

(assert (=> b!2519548 (=> res!1064564 e!1595777)))

(assert (=> b!2519548 (= res!1064564 call!156939)))

(declare-fun b!2519549 () Bool)

(assert (=> b!2519549 (= e!1595776 (= lt!899382 call!156939))))

(declare-fun b!2519550 () Bool)

(declare-fun e!1595778 () Bool)

(assert (=> b!2519550 (= e!1595776 e!1595778)))

(declare-fun c!401800 () Bool)

(assert (=> b!2519550 (= c!401800 ((_ is EmptyLang!7503) lt!899320))))

(declare-fun b!2519551 () Bool)

(declare-fun res!1064566 () Bool)

(assert (=> b!2519551 (=> res!1064566 e!1595783)))

(assert (=> b!2519551 (= res!1064566 e!1595775)))

(declare-fun res!1064570 () Bool)

(assert (=> b!2519551 (=> (not res!1064570) (not e!1595775))))

(assert (=> b!2519551 (= res!1064570 lt!899382)))

(declare-fun b!2519552 () Bool)

(assert (=> b!2519552 (= e!1595778 (not lt!899382))))

(declare-fun b!2519553 () Bool)

(assert (=> b!2519553 (= e!1595777 (not (= (head!5752 (_2!17296 lt!899322)) (c!401701 lt!899320))))))

(declare-fun b!2519554 () Bool)

(declare-fun res!1064569 () Bool)

(assert (=> b!2519554 (=> res!1064569 e!1595783)))

(assert (=> b!2519554 (= res!1064569 (not ((_ is ElementMatch!7503) lt!899320)))))

(assert (=> b!2519554 (= e!1595778 e!1595783)))

(declare-fun bm!156934 () Bool)

(assert (=> bm!156934 (= call!156939 (isEmpty!16930 (_2!17296 lt!899322)))))

(assert (= (and d!717787 c!401802) b!2519541))

(assert (= (and d!717787 (not c!401802)) b!2519544))

(assert (= (and d!717787 c!401801) b!2519549))

(assert (= (and d!717787 (not c!401801)) b!2519550))

(assert (= (and b!2519550 c!401800) b!2519552))

(assert (= (and b!2519550 (not c!401800)) b!2519554))

(assert (= (and b!2519554 (not res!1064569)) b!2519551))

(assert (= (and b!2519551 res!1064570) b!2519542))

(assert (= (and b!2519542 res!1064568) b!2519539))

(assert (= (and b!2519539 res!1064563) b!2519540))

(assert (= (and b!2519551 (not res!1064566)) b!2519545))

(assert (= (and b!2519545 res!1064567) b!2519548))

(assert (= (and b!2519548 (not res!1064564)) b!2519543))

(assert (= (and b!2519543 (not res!1064565)) b!2519553))

(assert (= (or b!2519549 b!2519542 b!2519548) bm!156934))

(declare-fun m!2874761 () Bool)

(assert (=> b!2519541 m!2874761))

(declare-fun m!2874763 () Bool)

(assert (=> b!2519539 m!2874763))

(assert (=> b!2519539 m!2874763))

(declare-fun m!2874765 () Bool)

(assert (=> b!2519539 m!2874765))

(declare-fun m!2874767 () Bool)

(assert (=> b!2519540 m!2874767))

(declare-fun m!2874769 () Bool)

(assert (=> d!717787 m!2874769))

(declare-fun m!2874771 () Bool)

(assert (=> d!717787 m!2874771))

(assert (=> bm!156934 m!2874769))

(assert (=> b!2519543 m!2874763))

(assert (=> b!2519543 m!2874763))

(assert (=> b!2519543 m!2874765))

(assert (=> b!2519544 m!2874767))

(assert (=> b!2519544 m!2874767))

(declare-fun m!2874773 () Bool)

(assert (=> b!2519544 m!2874773))

(assert (=> b!2519544 m!2874763))

(assert (=> b!2519544 m!2874773))

(assert (=> b!2519544 m!2874763))

(declare-fun m!2874775 () Bool)

(assert (=> b!2519544 m!2874775))

(assert (=> b!2519553 m!2874767))

(assert (=> b!2519200 d!717787))

(declare-fun b!2519584 () Bool)

(declare-fun res!1064571 () Bool)

(declare-fun e!1595792 () Bool)

(assert (=> b!2519584 (=> (not res!1064571) (not e!1595792))))

(assert (=> b!2519584 (= res!1064571 (isEmpty!16930 (tail!4029 Nil!29468)))))

(declare-fun b!2519585 () Bool)

(assert (=> b!2519585 (= e!1595792 (= (head!5752 Nil!29468) (c!401701 lt!899326)))))

(declare-fun b!2519586 () Bool)

(declare-fun e!1595796 () Bool)

(assert (=> b!2519586 (= e!1595796 (nullable!2420 lt!899326))))

(declare-fun b!2519587 () Bool)

(declare-fun res!1064576 () Bool)

(assert (=> b!2519587 (=> (not res!1064576) (not e!1595792))))

(declare-fun call!156940 () Bool)

(assert (=> b!2519587 (= res!1064576 (not call!156940))))

(declare-fun d!717799 () Bool)

(declare-fun e!1595793 () Bool)

(assert (=> d!717799 e!1595793))

(declare-fun c!401804 () Bool)

(assert (=> d!717799 (= c!401804 ((_ is EmptyExpr!7503) lt!899326))))

(declare-fun lt!899383 () Bool)

(assert (=> d!717799 (= lt!899383 e!1595796)))

(declare-fun c!401805 () Bool)

(assert (=> d!717799 (= c!401805 (isEmpty!16930 Nil!29468))))

(assert (=> d!717799 (validRegex!3129 lt!899326)))

(assert (=> d!717799 (= (matchR!3490 lt!899326 Nil!29468) lt!899383)))

(declare-fun b!2519588 () Bool)

(declare-fun res!1064573 () Bool)

(declare-fun e!1595794 () Bool)

(assert (=> b!2519588 (=> res!1064573 e!1595794)))

(assert (=> b!2519588 (= res!1064573 (not (isEmpty!16930 (tail!4029 Nil!29468))))))

(declare-fun b!2519589 () Bool)

(assert (=> b!2519589 (= e!1595796 (matchR!3490 (derivativeStep!2072 lt!899326 (head!5752 Nil!29468)) (tail!4029 Nil!29468)))))

(declare-fun b!2519590 () Bool)

(declare-fun e!1595798 () Bool)

(declare-fun e!1595797 () Bool)

(assert (=> b!2519590 (= e!1595798 e!1595797)))

(declare-fun res!1064575 () Bool)

(assert (=> b!2519590 (=> (not res!1064575) (not e!1595797))))

(assert (=> b!2519590 (= res!1064575 (not lt!899383))))

(declare-fun b!2519591 () Bool)

(assert (=> b!2519591 (= e!1595797 e!1595794)))

(declare-fun res!1064572 () Bool)

(assert (=> b!2519591 (=> res!1064572 e!1595794)))

(assert (=> b!2519591 (= res!1064572 call!156940)))

(declare-fun b!2519592 () Bool)

(assert (=> b!2519592 (= e!1595793 (= lt!899383 call!156940))))

(declare-fun b!2519593 () Bool)

(declare-fun e!1595795 () Bool)

(assert (=> b!2519593 (= e!1595793 e!1595795)))

(declare-fun c!401803 () Bool)

(assert (=> b!2519593 (= c!401803 ((_ is EmptyLang!7503) lt!899326))))

(declare-fun b!2519594 () Bool)

(declare-fun res!1064574 () Bool)

(assert (=> b!2519594 (=> res!1064574 e!1595798)))

(assert (=> b!2519594 (= res!1064574 e!1595792)))

(declare-fun res!1064578 () Bool)

(assert (=> b!2519594 (=> (not res!1064578) (not e!1595792))))

(assert (=> b!2519594 (= res!1064578 lt!899383)))

(declare-fun b!2519595 () Bool)

(assert (=> b!2519595 (= e!1595795 (not lt!899383))))

(declare-fun b!2519596 () Bool)

(assert (=> b!2519596 (= e!1595794 (not (= (head!5752 Nil!29468) (c!401701 lt!899326))))))

(declare-fun b!2519597 () Bool)

(declare-fun res!1064577 () Bool)

(assert (=> b!2519597 (=> res!1064577 e!1595798)))

(assert (=> b!2519597 (= res!1064577 (not ((_ is ElementMatch!7503) lt!899326)))))

(assert (=> b!2519597 (= e!1595795 e!1595798)))

(declare-fun bm!156935 () Bool)

(assert (=> bm!156935 (= call!156940 (isEmpty!16930 Nil!29468))))

(assert (= (and d!717799 c!401805) b!2519586))

(assert (= (and d!717799 (not c!401805)) b!2519589))

(assert (= (and d!717799 c!401804) b!2519592))

(assert (= (and d!717799 (not c!401804)) b!2519593))

(assert (= (and b!2519593 c!401803) b!2519595))

(assert (= (and b!2519593 (not c!401803)) b!2519597))

(assert (= (and b!2519597 (not res!1064577)) b!2519594))

(assert (= (and b!2519594 res!1064578) b!2519587))

(assert (= (and b!2519587 res!1064576) b!2519584))

(assert (= (and b!2519584 res!1064571) b!2519585))

(assert (= (and b!2519594 (not res!1064574)) b!2519590))

(assert (= (and b!2519590 res!1064575) b!2519591))

(assert (= (and b!2519591 (not res!1064572)) b!2519588))

(assert (= (and b!2519588 (not res!1064573)) b!2519596))

(assert (= (or b!2519592 b!2519587 b!2519591) bm!156935))

(assert (=> b!2519586 m!2874517))

(declare-fun m!2874777 () Bool)

(assert (=> b!2519584 m!2874777))

(assert (=> b!2519584 m!2874777))

(declare-fun m!2874779 () Bool)

(assert (=> b!2519584 m!2874779))

(declare-fun m!2874781 () Bool)

(assert (=> b!2519585 m!2874781))

(declare-fun m!2874783 () Bool)

(assert (=> d!717799 m!2874783))

(declare-fun m!2874785 () Bool)

(assert (=> d!717799 m!2874785))

(assert (=> bm!156935 m!2874783))

(assert (=> b!2519588 m!2874777))

(assert (=> b!2519588 m!2874777))

(assert (=> b!2519588 m!2874779))

(assert (=> b!2519589 m!2874781))

(assert (=> b!2519589 m!2874781))

(declare-fun m!2874787 () Bool)

(assert (=> b!2519589 m!2874787))

(assert (=> b!2519589 m!2874777))

(assert (=> b!2519589 m!2874787))

(assert (=> b!2519589 m!2874777))

(declare-fun m!2874789 () Bool)

(assert (=> b!2519589 m!2874789))

(assert (=> b!2519596 m!2874781))

(assert (=> b!2519205 d!717799))

(declare-fun b!2519598 () Bool)

(declare-fun res!1064579 () Bool)

(declare-fun e!1595799 () Bool)

(assert (=> b!2519598 (=> (not res!1064579) (not e!1595799))))

(assert (=> b!2519598 (= res!1064579 (isEmpty!16930 (tail!4029 tl!4068)))))

(declare-fun b!2519599 () Bool)

(assert (=> b!2519599 (= e!1595799 (= (head!5752 tl!4068) (c!401701 lt!899323)))))

(declare-fun b!2519600 () Bool)

(declare-fun e!1595803 () Bool)

(assert (=> b!2519600 (= e!1595803 (nullable!2420 lt!899323))))

(declare-fun b!2519601 () Bool)

(declare-fun res!1064584 () Bool)

(assert (=> b!2519601 (=> (not res!1064584) (not e!1595799))))

(declare-fun call!156941 () Bool)

(assert (=> b!2519601 (= res!1064584 (not call!156941))))

(declare-fun d!717801 () Bool)

(declare-fun e!1595800 () Bool)

(assert (=> d!717801 e!1595800))

(declare-fun c!401807 () Bool)

(assert (=> d!717801 (= c!401807 ((_ is EmptyExpr!7503) lt!899323))))

(declare-fun lt!899384 () Bool)

(assert (=> d!717801 (= lt!899384 e!1595803)))

(declare-fun c!401808 () Bool)

(assert (=> d!717801 (= c!401808 (isEmpty!16930 tl!4068))))

(assert (=> d!717801 (validRegex!3129 lt!899323)))

(assert (=> d!717801 (= (matchR!3490 lt!899323 tl!4068) lt!899384)))

(declare-fun b!2519602 () Bool)

(declare-fun res!1064581 () Bool)

(declare-fun e!1595801 () Bool)

(assert (=> b!2519602 (=> res!1064581 e!1595801)))

(assert (=> b!2519602 (= res!1064581 (not (isEmpty!16930 (tail!4029 tl!4068))))))

(declare-fun b!2519603 () Bool)

(assert (=> b!2519603 (= e!1595803 (matchR!3490 (derivativeStep!2072 lt!899323 (head!5752 tl!4068)) (tail!4029 tl!4068)))))

(declare-fun b!2519604 () Bool)

(declare-fun e!1595805 () Bool)

(declare-fun e!1595804 () Bool)

(assert (=> b!2519604 (= e!1595805 e!1595804)))

(declare-fun res!1064583 () Bool)

(assert (=> b!2519604 (=> (not res!1064583) (not e!1595804))))

(assert (=> b!2519604 (= res!1064583 (not lt!899384))))

(declare-fun b!2519605 () Bool)

(assert (=> b!2519605 (= e!1595804 e!1595801)))

(declare-fun res!1064580 () Bool)

(assert (=> b!2519605 (=> res!1064580 e!1595801)))

(assert (=> b!2519605 (= res!1064580 call!156941)))

(declare-fun b!2519606 () Bool)

(assert (=> b!2519606 (= e!1595800 (= lt!899384 call!156941))))

(declare-fun b!2519607 () Bool)

(declare-fun e!1595802 () Bool)

(assert (=> b!2519607 (= e!1595800 e!1595802)))

(declare-fun c!401806 () Bool)

(assert (=> b!2519607 (= c!401806 ((_ is EmptyLang!7503) lt!899323))))

(declare-fun b!2519608 () Bool)

(declare-fun res!1064582 () Bool)

(assert (=> b!2519608 (=> res!1064582 e!1595805)))

(assert (=> b!2519608 (= res!1064582 e!1595799)))

(declare-fun res!1064586 () Bool)

(assert (=> b!2519608 (=> (not res!1064586) (not e!1595799))))

(assert (=> b!2519608 (= res!1064586 lt!899384)))

(declare-fun b!2519609 () Bool)

(assert (=> b!2519609 (= e!1595802 (not lt!899384))))

(declare-fun b!2519610 () Bool)

(assert (=> b!2519610 (= e!1595801 (not (= (head!5752 tl!4068) (c!401701 lt!899323))))))

(declare-fun b!2519611 () Bool)

(declare-fun res!1064585 () Bool)

(assert (=> b!2519611 (=> res!1064585 e!1595805)))

(assert (=> b!2519611 (= res!1064585 (not ((_ is ElementMatch!7503) lt!899323)))))

(assert (=> b!2519611 (= e!1595802 e!1595805)))

(declare-fun bm!156936 () Bool)

(assert (=> bm!156936 (= call!156941 (isEmpty!16930 tl!4068))))

(assert (= (and d!717801 c!401808) b!2519600))

(assert (= (and d!717801 (not c!401808)) b!2519603))

(assert (= (and d!717801 c!401807) b!2519606))

(assert (= (and d!717801 (not c!401807)) b!2519607))

(assert (= (and b!2519607 c!401806) b!2519609))

(assert (= (and b!2519607 (not c!401806)) b!2519611))

(assert (= (and b!2519611 (not res!1064585)) b!2519608))

(assert (= (and b!2519608 res!1064586) b!2519601))

(assert (= (and b!2519601 res!1064584) b!2519598))

(assert (= (and b!2519598 res!1064579) b!2519599))

(assert (= (and b!2519608 (not res!1064582)) b!2519604))

(assert (= (and b!2519604 res!1064583) b!2519605))

(assert (= (and b!2519605 (not res!1064580)) b!2519602))

(assert (= (and b!2519602 (not res!1064581)) b!2519610))

(assert (= (or b!2519606 b!2519601 b!2519605) bm!156936))

(declare-fun m!2874791 () Bool)

(assert (=> b!2519600 m!2874791))

(declare-fun m!2874793 () Bool)

(assert (=> b!2519598 m!2874793))

(assert (=> b!2519598 m!2874793))

(declare-fun m!2874795 () Bool)

(assert (=> b!2519598 m!2874795))

(declare-fun m!2874797 () Bool)

(assert (=> b!2519599 m!2874797))

(declare-fun m!2874799 () Bool)

(assert (=> d!717801 m!2874799))

(assert (=> d!717801 m!2874555))

(assert (=> bm!156936 m!2874799))

(assert (=> b!2519602 m!2874793))

(assert (=> b!2519602 m!2874793))

(assert (=> b!2519602 m!2874795))

(assert (=> b!2519603 m!2874797))

(assert (=> b!2519603 m!2874797))

(declare-fun m!2874801 () Bool)

(assert (=> b!2519603 m!2874801))

(assert (=> b!2519603 m!2874793))

(assert (=> b!2519603 m!2874801))

(assert (=> b!2519603 m!2874793))

(declare-fun m!2874803 () Bool)

(assert (=> b!2519603 m!2874803))

(assert (=> b!2519610 m!2874797))

(assert (=> b!2519205 d!717801))

(declare-fun d!717803 () Bool)

(assert (=> d!717803 (= (matchR!3490 lt!899323 tl!4068) (matchR!3490 (derivative!198 lt!899323 tl!4068) Nil!29468))))

(declare-fun lt!899387 () Unit!43231)

(declare-fun choose!14932 (Regex!7503 List!29568) Unit!43231)

(assert (=> d!717803 (= lt!899387 (choose!14932 lt!899323 tl!4068))))

(assert (=> d!717803 (validRegex!3129 lt!899323)))

(assert (=> d!717803 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!136 lt!899323 tl!4068) lt!899387)))

(declare-fun bs!468958 () Bool)

(assert (= bs!468958 d!717803))

(assert (=> bs!468958 m!2874519))

(assert (=> bs!468958 m!2874519))

(declare-fun m!2874805 () Bool)

(assert (=> bs!468958 m!2874805))

(declare-fun m!2874807 () Bool)

(assert (=> bs!468958 m!2874807))

(assert (=> bs!468958 m!2874529))

(assert (=> bs!468958 m!2874555))

(assert (=> b!2519205 d!717803))

(declare-fun d!717805 () Bool)

(assert (=> d!717805 (= (nullable!2420 (derivative!198 lt!899325 tl!4068)) (nullableFct!662 (derivative!198 lt!899325 tl!4068)))))

(declare-fun bs!468959 () Bool)

(assert (= bs!468959 d!717805))

(assert (=> bs!468959 m!2874543))

(declare-fun m!2874809 () Bool)

(assert (=> bs!468959 m!2874809))

(assert (=> b!2519199 d!717805))

(declare-fun d!717807 () Bool)

(declare-fun lt!899388 () Regex!7503)

(assert (=> d!717807 (validRegex!3129 lt!899388)))

(declare-fun e!1595806 () Regex!7503)

(assert (=> d!717807 (= lt!899388 e!1595806)))

(declare-fun c!401809 () Bool)

(assert (=> d!717807 (= c!401809 ((_ is Cons!29468) tl!4068))))

(assert (=> d!717807 (validRegex!3129 lt!899325)))

(assert (=> d!717807 (= (derivative!198 lt!899325 tl!4068) lt!899388)))

(declare-fun b!2519612 () Bool)

(assert (=> b!2519612 (= e!1595806 (derivative!198 (derivativeStep!2072 lt!899325 (h!34888 tl!4068)) (t!211267 tl!4068)))))

(declare-fun b!2519613 () Bool)

(assert (=> b!2519613 (= e!1595806 lt!899325)))

(assert (= (and d!717807 c!401809) b!2519612))

(assert (= (and d!717807 (not c!401809)) b!2519613))

(declare-fun m!2874811 () Bool)

(assert (=> d!717807 m!2874811))

(assert (=> d!717807 m!2874657))

(declare-fun m!2874813 () Bool)

(assert (=> b!2519612 m!2874813))

(assert (=> b!2519612 m!2874813))

(declare-fun m!2874815 () Bool)

(assert (=> b!2519612 m!2874815))

(assert (=> b!2519199 d!717807))

(declare-fun b!2519618 () Bool)

(declare-fun e!1595809 () Bool)

(declare-fun tp!805295 () Bool)

(assert (=> b!2519618 (= e!1595809 (and tp_is_empty!12861 tp!805295))))

(assert (=> b!2519203 (= tp!805252 e!1595809)))

(assert (= (and b!2519203 ((_ is Cons!29468) (t!211267 tl!4068))) b!2519618))

(declare-fun b!2519630 () Bool)

(declare-fun e!1595812 () Bool)

(declare-fun tp!805310 () Bool)

(declare-fun tp!805307 () Bool)

(assert (=> b!2519630 (= e!1595812 (and tp!805310 tp!805307))))

(declare-fun b!2519632 () Bool)

(declare-fun tp!805308 () Bool)

(declare-fun tp!805309 () Bool)

(assert (=> b!2519632 (= e!1595812 (and tp!805308 tp!805309))))

(declare-fun b!2519631 () Bool)

(declare-fun tp!805306 () Bool)

(assert (=> b!2519631 (= e!1595812 tp!805306)))

(assert (=> b!2519206 (= tp!805251 e!1595812)))

(declare-fun b!2519629 () Bool)

(assert (=> b!2519629 (= e!1595812 tp_is_empty!12861)))

(assert (= (and b!2519206 ((_ is ElementMatch!7503) (regOne!15518 r!27340))) b!2519629))

(assert (= (and b!2519206 ((_ is Concat!12199) (regOne!15518 r!27340))) b!2519630))

(assert (= (and b!2519206 ((_ is Star!7503) (regOne!15518 r!27340))) b!2519631))

(assert (= (and b!2519206 ((_ is Union!7503) (regOne!15518 r!27340))) b!2519632))

(declare-fun b!2519634 () Bool)

(declare-fun e!1595813 () Bool)

(declare-fun tp!805315 () Bool)

(declare-fun tp!805312 () Bool)

(assert (=> b!2519634 (= e!1595813 (and tp!805315 tp!805312))))

(declare-fun b!2519636 () Bool)

(declare-fun tp!805313 () Bool)

(declare-fun tp!805314 () Bool)

(assert (=> b!2519636 (= e!1595813 (and tp!805313 tp!805314))))

(declare-fun b!2519635 () Bool)

(declare-fun tp!805311 () Bool)

(assert (=> b!2519635 (= e!1595813 tp!805311)))

(assert (=> b!2519206 (= tp!805253 e!1595813)))

(declare-fun b!2519633 () Bool)

(assert (=> b!2519633 (= e!1595813 tp_is_empty!12861)))

(assert (= (and b!2519206 ((_ is ElementMatch!7503) (regTwo!15518 r!27340))) b!2519633))

(assert (= (and b!2519206 ((_ is Concat!12199) (regTwo!15518 r!27340))) b!2519634))

(assert (= (and b!2519206 ((_ is Star!7503) (regTwo!15518 r!27340))) b!2519635))

(assert (= (and b!2519206 ((_ is Union!7503) (regTwo!15518 r!27340))) b!2519636))

(declare-fun b!2519638 () Bool)

(declare-fun e!1595814 () Bool)

(declare-fun tp!805320 () Bool)

(declare-fun tp!805317 () Bool)

(assert (=> b!2519638 (= e!1595814 (and tp!805320 tp!805317))))

(declare-fun b!2519640 () Bool)

(declare-fun tp!805318 () Bool)

(declare-fun tp!805319 () Bool)

(assert (=> b!2519640 (= e!1595814 (and tp!805318 tp!805319))))

(declare-fun b!2519639 () Bool)

(declare-fun tp!805316 () Bool)

(assert (=> b!2519639 (= e!1595814 tp!805316)))

(assert (=> b!2519210 (= tp!805254 e!1595814)))

(declare-fun b!2519637 () Bool)

(assert (=> b!2519637 (= e!1595814 tp_is_empty!12861)))

(assert (= (and b!2519210 ((_ is ElementMatch!7503) (reg!7832 r!27340))) b!2519637))

(assert (= (and b!2519210 ((_ is Concat!12199) (reg!7832 r!27340))) b!2519638))

(assert (= (and b!2519210 ((_ is Star!7503) (reg!7832 r!27340))) b!2519639))

(assert (= (and b!2519210 ((_ is Union!7503) (reg!7832 r!27340))) b!2519640))

(declare-fun b!2519642 () Bool)

(declare-fun e!1595815 () Bool)

(declare-fun tp!805325 () Bool)

(declare-fun tp!805322 () Bool)

(assert (=> b!2519642 (= e!1595815 (and tp!805325 tp!805322))))

(declare-fun b!2519644 () Bool)

(declare-fun tp!805323 () Bool)

(declare-fun tp!805324 () Bool)

(assert (=> b!2519644 (= e!1595815 (and tp!805323 tp!805324))))

(declare-fun b!2519643 () Bool)

(declare-fun tp!805321 () Bool)

(assert (=> b!2519643 (= e!1595815 tp!805321)))

(assert (=> b!2519204 (= tp!805249 e!1595815)))

(declare-fun b!2519641 () Bool)

(assert (=> b!2519641 (= e!1595815 tp_is_empty!12861)))

(assert (= (and b!2519204 ((_ is ElementMatch!7503) (regOne!15519 r!27340))) b!2519641))

(assert (= (and b!2519204 ((_ is Concat!12199) (regOne!15519 r!27340))) b!2519642))

(assert (= (and b!2519204 ((_ is Star!7503) (regOne!15519 r!27340))) b!2519643))

(assert (= (and b!2519204 ((_ is Union!7503) (regOne!15519 r!27340))) b!2519644))

(declare-fun b!2519646 () Bool)

(declare-fun e!1595816 () Bool)

(declare-fun tp!805330 () Bool)

(declare-fun tp!805327 () Bool)

(assert (=> b!2519646 (= e!1595816 (and tp!805330 tp!805327))))

(declare-fun b!2519648 () Bool)

(declare-fun tp!805328 () Bool)

(declare-fun tp!805329 () Bool)

(assert (=> b!2519648 (= e!1595816 (and tp!805328 tp!805329))))

(declare-fun b!2519647 () Bool)

(declare-fun tp!805326 () Bool)

(assert (=> b!2519647 (= e!1595816 tp!805326)))

(assert (=> b!2519204 (= tp!805250 e!1595816)))

(declare-fun b!2519645 () Bool)

(assert (=> b!2519645 (= e!1595816 tp_is_empty!12861)))

(assert (= (and b!2519204 ((_ is ElementMatch!7503) (regTwo!15519 r!27340))) b!2519645))

(assert (= (and b!2519204 ((_ is Concat!12199) (regTwo!15519 r!27340))) b!2519646))

(assert (= (and b!2519204 ((_ is Star!7503) (regTwo!15519 r!27340))) b!2519647))

(assert (= (and b!2519204 ((_ is Union!7503) (regTwo!15519 r!27340))) b!2519648))

(check-sat (not bm!156899) (not d!717805) (not b!2519430) (not b!2519643) (not b!2519598) (not bm!156893) (not b!2519398) (not bm!156936) (not b!2519647) (not bm!156935) (not d!717799) (not b!2519648) (not b!2519541) (not b!2519396) (not b!2519586) (not d!717787) (not d!717747) (not b!2519397) (not b!2519630) tp_is_empty!12861 (not b!2519610) (not d!717803) (not bm!156913) (not b!2519639) (not b!2519400) (not b!2519634) (not b!2519646) (not b!2519585) (not b!2519584) (not bm!156897) (not d!717745) (not bm!156912) (not b!2519602) (not b!2519589) (not b!2519642) (not b!2519544) (not d!717753) (not d!717767) (not b!2519600) (not bm!156934) (not bm!156895) (not b!2519636) (not b!2519543) (not b!2519319) (not b!2519596) (not b!2519618) (not b!2519632) (not b!2519553) (not b!2519278) (not b!2519215) (not b!2519268) (not b!2519395) (not b!2519540) (not b!2519612) (not d!717785) (not d!717801) (not b!2519603) (not b!2519539) (not b!2519588) (not b!2519599) (not b!2519631) (not b!2519635) (not b!2519644) (not b!2519640) (not d!717783) (not d!717779) (not b!2519402) (not d!717761) (not d!717807) (not b!2519431) (not b!2519638))
(check-sat)
