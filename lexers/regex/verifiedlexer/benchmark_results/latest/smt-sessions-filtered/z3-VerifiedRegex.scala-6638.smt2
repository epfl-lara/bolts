; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349610 () Bool)

(assert start!349610)

(declare-fun b!3707011 () Bool)

(declare-fun e!2296295 () Bool)

(declare-fun tp!1127866 () Bool)

(declare-fun tp!1127867 () Bool)

(assert (=> b!3707011 (= e!2296295 (and tp!1127866 tp!1127867))))

(declare-fun b!3707012 () Bool)

(declare-fun res!1507974 () Bool)

(declare-fun e!2296296 () Bool)

(assert (=> b!3707012 (=> (not res!1507974) (not e!2296296))))

(declare-datatypes ((C!21816 0))(
  ( (C!21817 (val!12956 Int)) )
))
(declare-datatypes ((Regex!10815 0))(
  ( (ElementMatch!10815 (c!640225 C!21816)) (Concat!17086 (regOne!22142 Regex!10815) (regTwo!22142 Regex!10815)) (EmptyExpr!10815) (Star!10815 (reg!11144 Regex!10815)) (EmptyLang!10815) (Union!10815 (regOne!22143 Regex!10815) (regTwo!22143 Regex!10815)) )
))
(declare-fun r!25965 () Regex!10815)

(declare-fun c!13398 () C!21816)

(declare-datatypes ((List!39696 0))(
  ( (Nil!39572) (Cons!39572 (h!44992 C!21816) (t!302379 List!39696)) )
))
(declare-fun contains!7908 (List!39696 C!21816) Bool)

(declare-fun usedCharacters!1078 (Regex!10815) List!39696)

(assert (=> b!3707012 (= res!1507974 (not (contains!7908 (usedCharacters!1078 r!25965) c!13398)))))

(declare-fun b!3707013 () Bool)

(declare-fun res!1507973 () Bool)

(assert (=> b!3707013 (=> (not res!1507973) (not e!2296296))))

(declare-fun s!14922 () List!39696)

(assert (=> b!3707013 (= res!1507973 (contains!7908 s!14922 c!13398))))

(declare-fun res!1507975 () Bool)

(assert (=> start!349610 (=> (not res!1507975) (not e!2296296))))

(declare-fun validRegex!4922 (Regex!10815) Bool)

(assert (=> start!349610 (= res!1507975 (validRegex!4922 r!25965))))

(assert (=> start!349610 e!2296296))

(assert (=> start!349610 e!2296295))

(declare-fun e!2296293 () Bool)

(assert (=> start!349610 e!2296293))

(declare-fun tp_is_empty!18645 () Bool)

(assert (=> start!349610 tp_is_empty!18645))

(declare-fun b!3707014 () Bool)

(declare-fun tp!1127864 () Bool)

(declare-fun tp!1127865 () Bool)

(assert (=> b!3707014 (= e!2296295 (and tp!1127864 tp!1127865))))

(declare-fun b!3707015 () Bool)

(declare-fun e!2296294 () Bool)

(assert (=> b!3707015 (= e!2296294 (contains!7908 (t!302379 s!14922) c!13398))))

(declare-fun b!3707016 () Bool)

(declare-fun tp!1127863 () Bool)

(assert (=> b!3707016 (= e!2296293 (and tp_is_empty!18645 tp!1127863))))

(declare-fun b!3707017 () Bool)

(declare-fun res!1507976 () Bool)

(assert (=> b!3707017 (=> (not res!1507976) (not e!2296296))))

(get-info :version)

(assert (=> b!3707017 (= res!1507976 (and (or (not ((_ is Cons!39572) s!14922)) (not (= (h!44992 s!14922) c!13398))) ((_ is Cons!39572) s!14922) (not (= (h!44992 s!14922) c!13398))))))

(declare-fun b!3707018 () Bool)

(assert (=> b!3707018 (= e!2296295 tp_is_empty!18645)))

(declare-fun b!3707019 () Bool)

(assert (=> b!3707019 (= e!2296296 (not e!2296294))))

(declare-fun res!1507972 () Bool)

(assert (=> b!3707019 (=> res!1507972 e!2296294)))

(declare-fun lt!1296509 () Regex!10815)

(assert (=> b!3707019 (= res!1507972 (not (validRegex!4922 lt!1296509)))))

(assert (=> b!3707019 (not (contains!7908 (usedCharacters!1078 lt!1296509) c!13398))))

(declare-fun derivativeStep!3294 (Regex!10815 C!21816) Regex!10815)

(assert (=> b!3707019 (= lt!1296509 (derivativeStep!3294 r!25965 (h!44992 s!14922)))))

(declare-datatypes ((Unit!57460 0))(
  ( (Unit!57461) )
))
(declare-fun lt!1296510 () Unit!57460)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!10 (Regex!10815 C!21816 C!21816) Unit!57460)

(assert (=> b!3707019 (= lt!1296510 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!10 r!25965 (h!44992 s!14922) c!13398))))

(declare-fun b!3707020 () Bool)

(declare-fun tp!1127868 () Bool)

(assert (=> b!3707020 (= e!2296295 tp!1127868)))

(assert (= (and start!349610 res!1507975) b!3707013))

(assert (= (and b!3707013 res!1507973) b!3707012))

(assert (= (and b!3707012 res!1507974) b!3707017))

(assert (= (and b!3707017 res!1507976) b!3707019))

(assert (= (and b!3707019 (not res!1507972)) b!3707015))

(assert (= (and start!349610 ((_ is ElementMatch!10815) r!25965)) b!3707018))

(assert (= (and start!349610 ((_ is Concat!17086) r!25965)) b!3707011))

(assert (= (and start!349610 ((_ is Star!10815) r!25965)) b!3707020))

(assert (= (and start!349610 ((_ is Union!10815) r!25965)) b!3707014))

(assert (= (and start!349610 ((_ is Cons!39572) s!14922)) b!3707016))

(declare-fun m!4216505 () Bool)

(assert (=> b!3707019 m!4216505))

(declare-fun m!4216507 () Bool)

(assert (=> b!3707019 m!4216507))

(declare-fun m!4216509 () Bool)

(assert (=> b!3707019 m!4216509))

(declare-fun m!4216511 () Bool)

(assert (=> b!3707019 m!4216511))

(assert (=> b!3707019 m!4216505))

(declare-fun m!4216513 () Bool)

(assert (=> b!3707019 m!4216513))

(declare-fun m!4216515 () Bool)

(assert (=> b!3707015 m!4216515))

(declare-fun m!4216517 () Bool)

(assert (=> b!3707012 m!4216517))

(assert (=> b!3707012 m!4216517))

(declare-fun m!4216519 () Bool)

(assert (=> b!3707012 m!4216519))

(declare-fun m!4216521 () Bool)

(assert (=> b!3707013 m!4216521))

(declare-fun m!4216523 () Bool)

(assert (=> start!349610 m!4216523))

(check-sat (not b!3707019) (not b!3707011) (not b!3707015) (not b!3707012) (not b!3707013) tp_is_empty!18645 (not b!3707016) (not b!3707014) (not b!3707020) (not start!349610))
(check-sat)
(get-model)

(declare-fun d!1086535 () Bool)

(declare-fun lt!1296516 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5715 (List!39696) (InoxSet C!21816))

(assert (=> d!1086535 (= lt!1296516 (select (content!5715 s!14922) c!13398))))

(declare-fun e!2296308 () Bool)

(assert (=> d!1086535 (= lt!1296516 e!2296308)))

(declare-fun res!1507988 () Bool)

(assert (=> d!1086535 (=> (not res!1507988) (not e!2296308))))

(assert (=> d!1086535 (= res!1507988 ((_ is Cons!39572) s!14922))))

(assert (=> d!1086535 (= (contains!7908 s!14922 c!13398) lt!1296516)))

(declare-fun b!3707031 () Bool)

(declare-fun e!2296307 () Bool)

(assert (=> b!3707031 (= e!2296308 e!2296307)))

(declare-fun res!1507987 () Bool)

(assert (=> b!3707031 (=> res!1507987 e!2296307)))

(assert (=> b!3707031 (= res!1507987 (= (h!44992 s!14922) c!13398))))

(declare-fun b!3707032 () Bool)

(assert (=> b!3707032 (= e!2296307 (contains!7908 (t!302379 s!14922) c!13398))))

(assert (= (and d!1086535 res!1507988) b!3707031))

(assert (= (and b!3707031 (not res!1507987)) b!3707032))

(declare-fun m!4216531 () Bool)

(assert (=> d!1086535 m!4216531))

(declare-fun m!4216533 () Bool)

(assert (=> d!1086535 m!4216533))

(assert (=> b!3707032 m!4216515))

(assert (=> b!3707013 d!1086535))

(declare-fun bm!267702 () Bool)

(declare-fun call!267707 () Regex!10815)

(declare-fun c!640253 () Bool)

(assert (=> bm!267702 (= call!267707 (derivativeStep!3294 (ite c!640253 (regOne!22143 r!25965) (regTwo!22142 r!25965)) (h!44992 s!14922)))))

(declare-fun bm!267703 () Bool)

(declare-fun call!267709 () Regex!10815)

(declare-fun call!267710 () Regex!10815)

(assert (=> bm!267703 (= call!267709 call!267710)))

(declare-fun c!640254 () Bool)

(declare-fun bm!267704 () Bool)

(assert (=> bm!267704 (= call!267710 (derivativeStep!3294 (ite c!640253 (regTwo!22143 r!25965) (ite c!640254 (reg!11144 r!25965) (regOne!22142 r!25965))) (h!44992 s!14922)))))

(declare-fun e!2296347 () Regex!10815)

(declare-fun b!3707095 () Bool)

(declare-fun call!267708 () Regex!10815)

(assert (=> b!3707095 (= e!2296347 (Union!10815 (Concat!17086 call!267708 (regTwo!22142 r!25965)) call!267707))))

(declare-fun bm!267705 () Bool)

(assert (=> bm!267705 (= call!267708 call!267709)))

(declare-fun b!3707096 () Bool)

(declare-fun e!2296346 () Regex!10815)

(assert (=> b!3707096 (= e!2296346 (ite (= (h!44992 s!14922) (c!640225 r!25965)) EmptyExpr!10815 EmptyLang!10815))))

(declare-fun d!1086539 () Bool)

(declare-fun lt!1296519 () Regex!10815)

(assert (=> d!1086539 (validRegex!4922 lt!1296519)))

(declare-fun e!2296349 () Regex!10815)

(assert (=> d!1086539 (= lt!1296519 e!2296349)))

(declare-fun c!640255 () Bool)

(assert (=> d!1086539 (= c!640255 (or ((_ is EmptyExpr!10815) r!25965) ((_ is EmptyLang!10815) r!25965)))))

(assert (=> d!1086539 (validRegex!4922 r!25965)))

(assert (=> d!1086539 (= (derivativeStep!3294 r!25965 (h!44992 s!14922)) lt!1296519)))

(declare-fun b!3707097 () Bool)

(assert (=> b!3707097 (= e!2296349 EmptyLang!10815)))

(declare-fun b!3707098 () Bool)

(declare-fun e!2296345 () Regex!10815)

(declare-fun e!2296348 () Regex!10815)

(assert (=> b!3707098 (= e!2296345 e!2296348)))

(assert (=> b!3707098 (= c!640254 ((_ is Star!10815) r!25965))))

(declare-fun b!3707099 () Bool)

(declare-fun c!640252 () Bool)

(declare-fun nullable!3749 (Regex!10815) Bool)

(assert (=> b!3707099 (= c!640252 (nullable!3749 (regOne!22142 r!25965)))))

(assert (=> b!3707099 (= e!2296348 e!2296347)))

(declare-fun b!3707100 () Bool)

(assert (=> b!3707100 (= c!640253 ((_ is Union!10815) r!25965))))

(assert (=> b!3707100 (= e!2296346 e!2296345)))

(declare-fun b!3707101 () Bool)

(assert (=> b!3707101 (= e!2296348 (Concat!17086 call!267709 r!25965))))

(declare-fun b!3707102 () Bool)

(assert (=> b!3707102 (= e!2296347 (Union!10815 (Concat!17086 call!267708 (regTwo!22142 r!25965)) EmptyLang!10815))))

(declare-fun b!3707103 () Bool)

(assert (=> b!3707103 (= e!2296345 (Union!10815 call!267707 call!267710))))

(declare-fun b!3707104 () Bool)

(assert (=> b!3707104 (= e!2296349 e!2296346)))

(declare-fun c!640256 () Bool)

(assert (=> b!3707104 (= c!640256 ((_ is ElementMatch!10815) r!25965))))

(assert (= (and d!1086539 c!640255) b!3707097))

(assert (= (and d!1086539 (not c!640255)) b!3707104))

(assert (= (and b!3707104 c!640256) b!3707096))

(assert (= (and b!3707104 (not c!640256)) b!3707100))

(assert (= (and b!3707100 c!640253) b!3707103))

(assert (= (and b!3707100 (not c!640253)) b!3707098))

(assert (= (and b!3707098 c!640254) b!3707101))

(assert (= (and b!3707098 (not c!640254)) b!3707099))

(assert (= (and b!3707099 c!640252) b!3707095))

(assert (= (and b!3707099 (not c!640252)) b!3707102))

(assert (= (or b!3707095 b!3707102) bm!267705))

(assert (= (or b!3707101 bm!267705) bm!267703))

(assert (= (or b!3707103 b!3707095) bm!267702))

(assert (= (or b!3707103 bm!267703) bm!267704))

(declare-fun m!4216541 () Bool)

(assert (=> bm!267702 m!4216541))

(declare-fun m!4216543 () Bool)

(assert (=> bm!267704 m!4216543))

(declare-fun m!4216545 () Bool)

(assert (=> d!1086539 m!4216545))

(assert (=> d!1086539 m!4216523))

(declare-fun m!4216547 () Bool)

(assert (=> b!3707099 m!4216547))

(assert (=> b!3707019 d!1086539))

(declare-fun d!1086543 () Bool)

(declare-fun lt!1296520 () Bool)

(assert (=> d!1086543 (= lt!1296520 (select (content!5715 (usedCharacters!1078 lt!1296509)) c!13398))))

(declare-fun e!2296358 () Bool)

(assert (=> d!1086543 (= lt!1296520 e!2296358)))

(declare-fun res!1508005 () Bool)

(assert (=> d!1086543 (=> (not res!1508005) (not e!2296358))))

(assert (=> d!1086543 (= res!1508005 ((_ is Cons!39572) (usedCharacters!1078 lt!1296509)))))

(assert (=> d!1086543 (= (contains!7908 (usedCharacters!1078 lt!1296509) c!13398) lt!1296520)))

(declare-fun b!3707114 () Bool)

(declare-fun e!2296357 () Bool)

(assert (=> b!3707114 (= e!2296358 e!2296357)))

(declare-fun res!1508004 () Bool)

(assert (=> b!3707114 (=> res!1508004 e!2296357)))

(assert (=> b!3707114 (= res!1508004 (= (h!44992 (usedCharacters!1078 lt!1296509)) c!13398))))

(declare-fun b!3707115 () Bool)

(assert (=> b!3707115 (= e!2296357 (contains!7908 (t!302379 (usedCharacters!1078 lt!1296509)) c!13398))))

(assert (= (and d!1086543 res!1508005) b!3707114))

(assert (= (and b!3707114 (not res!1508004)) b!3707115))

(assert (=> d!1086543 m!4216505))

(declare-fun m!4216549 () Bool)

(assert (=> d!1086543 m!4216549))

(declare-fun m!4216551 () Bool)

(assert (=> d!1086543 m!4216551))

(declare-fun m!4216553 () Bool)

(assert (=> b!3707115 m!4216553))

(assert (=> b!3707019 d!1086543))

(declare-fun b!3707151 () Bool)

(declare-fun e!2296382 () List!39696)

(declare-fun call!267732 () List!39696)

(assert (=> b!3707151 (= e!2296382 call!267732)))

(declare-fun c!640274 () Bool)

(declare-fun call!267729 () List!39696)

(declare-fun call!267730 () List!39696)

(declare-fun call!267731 () List!39696)

(declare-fun bm!267724 () Bool)

(declare-fun ++!9778 (List!39696 List!39696) List!39696)

(assert (=> bm!267724 (= call!267729 (++!9778 (ite c!640274 call!267731 call!267730) (ite c!640274 call!267730 call!267731)))))

(declare-fun b!3707152 () Bool)

(declare-fun e!2296383 () List!39696)

(assert (=> b!3707152 (= e!2296382 e!2296383)))

(assert (=> b!3707152 (= c!640274 ((_ is Union!10815) lt!1296509))))

(declare-fun bm!267725 () Bool)

(declare-fun c!640275 () Bool)

(assert (=> bm!267725 (= call!267732 (usedCharacters!1078 (ite c!640275 (reg!11144 lt!1296509) (ite c!640274 (regTwo!22143 lt!1296509) (regOne!22142 lt!1296509)))))))

(declare-fun b!3707153 () Bool)

(declare-fun e!2296380 () List!39696)

(assert (=> b!3707153 (= e!2296380 (Cons!39572 (c!640225 lt!1296509) Nil!39572))))

(declare-fun b!3707154 () Bool)

(assert (=> b!3707154 (= e!2296383 call!267729)))

(declare-fun b!3707156 () Bool)

(assert (=> b!3707156 (= c!640275 ((_ is Star!10815) lt!1296509))))

(assert (=> b!3707156 (= e!2296380 e!2296382)))

(declare-fun b!3707157 () Bool)

(declare-fun e!2296381 () List!39696)

(assert (=> b!3707157 (= e!2296381 e!2296380)))

(declare-fun c!640277 () Bool)

(assert (=> b!3707157 (= c!640277 ((_ is ElementMatch!10815) lt!1296509))))

(declare-fun b!3707158 () Bool)

(assert (=> b!3707158 (= e!2296383 call!267729)))

(declare-fun bm!267726 () Bool)

(assert (=> bm!267726 (= call!267731 (usedCharacters!1078 (ite c!640274 (regOne!22143 lt!1296509) (regTwo!22142 lt!1296509))))))

(declare-fun bm!267727 () Bool)

(assert (=> bm!267727 (= call!267730 call!267732)))

(declare-fun b!3707155 () Bool)

(assert (=> b!3707155 (= e!2296381 Nil!39572)))

(declare-fun d!1086545 () Bool)

(declare-fun c!640276 () Bool)

(assert (=> d!1086545 (= c!640276 (or ((_ is EmptyExpr!10815) lt!1296509) ((_ is EmptyLang!10815) lt!1296509)))))

(assert (=> d!1086545 (= (usedCharacters!1078 lt!1296509) e!2296381)))

(assert (= (and d!1086545 c!640276) b!3707155))

(assert (= (and d!1086545 (not c!640276)) b!3707157))

(assert (= (and b!3707157 c!640277) b!3707153))

(assert (= (and b!3707157 (not c!640277)) b!3707156))

(assert (= (and b!3707156 c!640275) b!3707151))

(assert (= (and b!3707156 (not c!640275)) b!3707152))

(assert (= (and b!3707152 c!640274) b!3707158))

(assert (= (and b!3707152 (not c!640274)) b!3707154))

(assert (= (or b!3707158 b!3707154) bm!267726))

(assert (= (or b!3707158 b!3707154) bm!267727))

(assert (= (or b!3707158 b!3707154) bm!267724))

(assert (= (or b!3707151 bm!267727) bm!267725))

(declare-fun m!4216585 () Bool)

(assert (=> bm!267724 m!4216585))

(declare-fun m!4216587 () Bool)

(assert (=> bm!267725 m!4216587))

(declare-fun m!4216589 () Bool)

(assert (=> bm!267726 m!4216589))

(assert (=> b!3707019 d!1086545))

(declare-fun d!1086557 () Bool)

(assert (=> d!1086557 (not (contains!7908 (usedCharacters!1078 (derivativeStep!3294 r!25965 (h!44992 s!14922))) c!13398))))

(declare-fun lt!1296529 () Unit!57460)

(declare-fun choose!22161 (Regex!10815 C!21816 C!21816) Unit!57460)

(assert (=> d!1086557 (= lt!1296529 (choose!22161 r!25965 (h!44992 s!14922) c!13398))))

(assert (=> d!1086557 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!10 r!25965 (h!44992 s!14922) c!13398) lt!1296529)))

(declare-fun bs!574675 () Bool)

(assert (= bs!574675 d!1086557))

(assert (=> bs!574675 m!4216511))

(assert (=> bs!574675 m!4216511))

(declare-fun m!4216591 () Bool)

(assert (=> bs!574675 m!4216591))

(assert (=> bs!574675 m!4216591))

(declare-fun m!4216593 () Bool)

(assert (=> bs!574675 m!4216593))

(declare-fun m!4216595 () Bool)

(assert (=> bs!574675 m!4216595))

(assert (=> b!3707019 d!1086557))

(declare-fun b!3707211 () Bool)

(declare-fun e!2296417 () Bool)

(declare-fun call!267752 () Bool)

(assert (=> b!3707211 (= e!2296417 call!267752)))

(declare-fun bm!267746 () Bool)

(declare-fun call!267751 () Bool)

(declare-fun call!267753 () Bool)

(assert (=> bm!267746 (= call!267751 call!267753)))

(declare-fun b!3707212 () Bool)

(declare-fun e!2296419 () Bool)

(assert (=> b!3707212 (= e!2296419 call!267753)))

(declare-fun c!640299 () Bool)

(declare-fun bm!267747 () Bool)

(declare-fun c!640298 () Bool)

(assert (=> bm!267747 (= call!267753 (validRegex!4922 (ite c!640299 (reg!11144 lt!1296509) (ite c!640298 (regOne!22143 lt!1296509) (regOne!22142 lt!1296509)))))))

(declare-fun b!3707213 () Bool)

(declare-fun e!2296422 () Bool)

(declare-fun e!2296421 () Bool)

(assert (=> b!3707213 (= e!2296422 e!2296421)))

(assert (=> b!3707213 (= c!640298 ((_ is Union!10815) lt!1296509))))

(declare-fun d!1086559 () Bool)

(declare-fun res!1508030 () Bool)

(declare-fun e!2296418 () Bool)

(assert (=> d!1086559 (=> res!1508030 e!2296418)))

(assert (=> d!1086559 (= res!1508030 ((_ is ElementMatch!10815) lt!1296509))))

(assert (=> d!1086559 (= (validRegex!4922 lt!1296509) e!2296418)))

(declare-fun b!3707214 () Bool)

(declare-fun e!2296420 () Bool)

(assert (=> b!3707214 (= e!2296420 call!267752)))

(declare-fun b!3707215 () Bool)

(declare-fun e!2296423 () Bool)

(assert (=> b!3707215 (= e!2296423 e!2296420)))

(declare-fun res!1508029 () Bool)

(assert (=> b!3707215 (=> (not res!1508029) (not e!2296420))))

(assert (=> b!3707215 (= res!1508029 call!267751)))

(declare-fun b!3707216 () Bool)

(assert (=> b!3707216 (= e!2296418 e!2296422)))

(assert (=> b!3707216 (= c!640299 ((_ is Star!10815) lt!1296509))))

(declare-fun b!3707217 () Bool)

(assert (=> b!3707217 (= e!2296422 e!2296419)))

(declare-fun res!1508028 () Bool)

(assert (=> b!3707217 (= res!1508028 (not (nullable!3749 (reg!11144 lt!1296509))))))

(assert (=> b!3707217 (=> (not res!1508028) (not e!2296419))))

(declare-fun bm!267748 () Bool)

(assert (=> bm!267748 (= call!267752 (validRegex!4922 (ite c!640298 (regTwo!22143 lt!1296509) (regTwo!22142 lt!1296509))))))

(declare-fun b!3707218 () Bool)

(declare-fun res!1508027 () Bool)

(assert (=> b!3707218 (=> res!1508027 e!2296423)))

(assert (=> b!3707218 (= res!1508027 (not ((_ is Concat!17086) lt!1296509)))))

(assert (=> b!3707218 (= e!2296421 e!2296423)))

(declare-fun b!3707219 () Bool)

(declare-fun res!1508031 () Bool)

(assert (=> b!3707219 (=> (not res!1508031) (not e!2296417))))

(assert (=> b!3707219 (= res!1508031 call!267751)))

(assert (=> b!3707219 (= e!2296421 e!2296417)))

(assert (= (and d!1086559 (not res!1508030)) b!3707216))

(assert (= (and b!3707216 c!640299) b!3707217))

(assert (= (and b!3707216 (not c!640299)) b!3707213))

(assert (= (and b!3707217 res!1508028) b!3707212))

(assert (= (and b!3707213 c!640298) b!3707219))

(assert (= (and b!3707213 (not c!640298)) b!3707218))

(assert (= (and b!3707219 res!1508031) b!3707211))

(assert (= (and b!3707218 (not res!1508027)) b!3707215))

(assert (= (and b!3707215 res!1508029) b!3707214))

(assert (= (or b!3707219 b!3707215) bm!267746))

(assert (= (or b!3707211 b!3707214) bm!267748))

(assert (= (or b!3707212 bm!267746) bm!267747))

(declare-fun m!4216615 () Bool)

(assert (=> bm!267747 m!4216615))

(declare-fun m!4216617 () Bool)

(assert (=> b!3707217 m!4216617))

(declare-fun m!4216619 () Bool)

(assert (=> bm!267748 m!4216619))

(assert (=> b!3707019 d!1086559))

(declare-fun b!3707230 () Bool)

(declare-fun e!2296426 () Bool)

(declare-fun call!267755 () Bool)

(assert (=> b!3707230 (= e!2296426 call!267755)))

(declare-fun bm!267749 () Bool)

(declare-fun call!267754 () Bool)

(declare-fun call!267756 () Bool)

(assert (=> bm!267749 (= call!267754 call!267756)))

(declare-fun b!3707231 () Bool)

(declare-fun e!2296428 () Bool)

(assert (=> b!3707231 (= e!2296428 call!267756)))

(declare-fun c!640301 () Bool)

(declare-fun bm!267750 () Bool)

(declare-fun c!640300 () Bool)

(assert (=> bm!267750 (= call!267756 (validRegex!4922 (ite c!640301 (reg!11144 r!25965) (ite c!640300 (regOne!22143 r!25965) (regOne!22142 r!25965)))))))

(declare-fun b!3707232 () Bool)

(declare-fun e!2296431 () Bool)

(declare-fun e!2296430 () Bool)

(assert (=> b!3707232 (= e!2296431 e!2296430)))

(assert (=> b!3707232 (= c!640300 ((_ is Union!10815) r!25965))))

(declare-fun d!1086565 () Bool)

(declare-fun res!1508035 () Bool)

(declare-fun e!2296427 () Bool)

(assert (=> d!1086565 (=> res!1508035 e!2296427)))

(assert (=> d!1086565 (= res!1508035 ((_ is ElementMatch!10815) r!25965))))

(assert (=> d!1086565 (= (validRegex!4922 r!25965) e!2296427)))

(declare-fun b!3707233 () Bool)

(declare-fun e!2296429 () Bool)

(assert (=> b!3707233 (= e!2296429 call!267755)))

(declare-fun b!3707234 () Bool)

(declare-fun e!2296432 () Bool)

(assert (=> b!3707234 (= e!2296432 e!2296429)))

(declare-fun res!1508034 () Bool)

(assert (=> b!3707234 (=> (not res!1508034) (not e!2296429))))

(assert (=> b!3707234 (= res!1508034 call!267754)))

(declare-fun b!3707235 () Bool)

(assert (=> b!3707235 (= e!2296427 e!2296431)))

(assert (=> b!3707235 (= c!640301 ((_ is Star!10815) r!25965))))

(declare-fun b!3707236 () Bool)

(assert (=> b!3707236 (= e!2296431 e!2296428)))

(declare-fun res!1508033 () Bool)

(assert (=> b!3707236 (= res!1508033 (not (nullable!3749 (reg!11144 r!25965))))))

(assert (=> b!3707236 (=> (not res!1508033) (not e!2296428))))

(declare-fun bm!267751 () Bool)

(assert (=> bm!267751 (= call!267755 (validRegex!4922 (ite c!640300 (regTwo!22143 r!25965) (regTwo!22142 r!25965))))))

(declare-fun b!3707237 () Bool)

(declare-fun res!1508032 () Bool)

(assert (=> b!3707237 (=> res!1508032 e!2296432)))

(assert (=> b!3707237 (= res!1508032 (not ((_ is Concat!17086) r!25965)))))

(assert (=> b!3707237 (= e!2296430 e!2296432)))

(declare-fun b!3707238 () Bool)

(declare-fun res!1508036 () Bool)

(assert (=> b!3707238 (=> (not res!1508036) (not e!2296426))))

(assert (=> b!3707238 (= res!1508036 call!267754)))

(assert (=> b!3707238 (= e!2296430 e!2296426)))

(assert (= (and d!1086565 (not res!1508035)) b!3707235))

(assert (= (and b!3707235 c!640301) b!3707236))

(assert (= (and b!3707235 (not c!640301)) b!3707232))

(assert (= (and b!3707236 res!1508033) b!3707231))

(assert (= (and b!3707232 c!640300) b!3707238))

(assert (= (and b!3707232 (not c!640300)) b!3707237))

(assert (= (and b!3707238 res!1508036) b!3707230))

(assert (= (and b!3707237 (not res!1508032)) b!3707234))

(assert (= (and b!3707234 res!1508034) b!3707233))

(assert (= (or b!3707238 b!3707234) bm!267749))

(assert (= (or b!3707230 b!3707233) bm!267751))

(assert (= (or b!3707231 bm!267749) bm!267750))

(declare-fun m!4216621 () Bool)

(assert (=> bm!267750 m!4216621))

(declare-fun m!4216623 () Bool)

(assert (=> b!3707236 m!4216623))

(declare-fun m!4216625 () Bool)

(assert (=> bm!267751 m!4216625))

(assert (=> start!349610 d!1086565))

(declare-fun d!1086567 () Bool)

(declare-fun lt!1296533 () Bool)

(assert (=> d!1086567 (= lt!1296533 (select (content!5715 (usedCharacters!1078 r!25965)) c!13398))))

(declare-fun e!2296438 () Bool)

(assert (=> d!1086567 (= lt!1296533 e!2296438)))

(declare-fun res!1508038 () Bool)

(assert (=> d!1086567 (=> (not res!1508038) (not e!2296438))))

(assert (=> d!1086567 (= res!1508038 ((_ is Cons!39572) (usedCharacters!1078 r!25965)))))

(assert (=> d!1086567 (= (contains!7908 (usedCharacters!1078 r!25965) c!13398) lt!1296533)))

(declare-fun b!3707255 () Bool)

(declare-fun e!2296437 () Bool)

(assert (=> b!3707255 (= e!2296438 e!2296437)))

(declare-fun res!1508037 () Bool)

(assert (=> b!3707255 (=> res!1508037 e!2296437)))

(assert (=> b!3707255 (= res!1508037 (= (h!44992 (usedCharacters!1078 r!25965)) c!13398))))

(declare-fun b!3707256 () Bool)

(assert (=> b!3707256 (= e!2296437 (contains!7908 (t!302379 (usedCharacters!1078 r!25965)) c!13398))))

(assert (= (and d!1086567 res!1508038) b!3707255))

(assert (= (and b!3707255 (not res!1508037)) b!3707256))

(assert (=> d!1086567 m!4216517))

(declare-fun m!4216627 () Bool)

(assert (=> d!1086567 m!4216627))

(declare-fun m!4216629 () Bool)

(assert (=> d!1086567 m!4216629))

(declare-fun m!4216631 () Bool)

(assert (=> b!3707256 m!4216631))

(assert (=> b!3707012 d!1086567))

(declare-fun b!3707265 () Bool)

(declare-fun e!2296444 () List!39696)

(declare-fun call!267760 () List!39696)

(assert (=> b!3707265 (= e!2296444 call!267760)))

(declare-fun bm!267752 () Bool)

(declare-fun c!640302 () Bool)

(declare-fun call!267758 () List!39696)

(declare-fun call!267759 () List!39696)

(declare-fun call!267757 () List!39696)

(assert (=> bm!267752 (= call!267757 (++!9778 (ite c!640302 call!267759 call!267758) (ite c!640302 call!267758 call!267759)))))

(declare-fun b!3707266 () Bool)

(declare-fun e!2296445 () List!39696)

(assert (=> b!3707266 (= e!2296444 e!2296445)))

(assert (=> b!3707266 (= c!640302 ((_ is Union!10815) r!25965))))

(declare-fun bm!267753 () Bool)

(declare-fun c!640303 () Bool)

(assert (=> bm!267753 (= call!267760 (usedCharacters!1078 (ite c!640303 (reg!11144 r!25965) (ite c!640302 (regTwo!22143 r!25965) (regOne!22142 r!25965)))))))

(declare-fun b!3707267 () Bool)

(declare-fun e!2296442 () List!39696)

(assert (=> b!3707267 (= e!2296442 (Cons!39572 (c!640225 r!25965) Nil!39572))))

(declare-fun b!3707268 () Bool)

(assert (=> b!3707268 (= e!2296445 call!267757)))

(declare-fun b!3707270 () Bool)

(assert (=> b!3707270 (= c!640303 ((_ is Star!10815) r!25965))))

(assert (=> b!3707270 (= e!2296442 e!2296444)))

(declare-fun b!3707271 () Bool)

(declare-fun e!2296443 () List!39696)

(assert (=> b!3707271 (= e!2296443 e!2296442)))

(declare-fun c!640305 () Bool)

(assert (=> b!3707271 (= c!640305 ((_ is ElementMatch!10815) r!25965))))

(declare-fun b!3707272 () Bool)

(assert (=> b!3707272 (= e!2296445 call!267757)))

(declare-fun bm!267754 () Bool)

(assert (=> bm!267754 (= call!267759 (usedCharacters!1078 (ite c!640302 (regOne!22143 r!25965) (regTwo!22142 r!25965))))))

(declare-fun bm!267755 () Bool)

(assert (=> bm!267755 (= call!267758 call!267760)))

(declare-fun b!3707269 () Bool)

(assert (=> b!3707269 (= e!2296443 Nil!39572)))

(declare-fun d!1086569 () Bool)

(declare-fun c!640304 () Bool)

(assert (=> d!1086569 (= c!640304 (or ((_ is EmptyExpr!10815) r!25965) ((_ is EmptyLang!10815) r!25965)))))

(assert (=> d!1086569 (= (usedCharacters!1078 r!25965) e!2296443)))

(assert (= (and d!1086569 c!640304) b!3707269))

(assert (= (and d!1086569 (not c!640304)) b!3707271))

(assert (= (and b!3707271 c!640305) b!3707267))

(assert (= (and b!3707271 (not c!640305)) b!3707270))

(assert (= (and b!3707270 c!640303) b!3707265))

(assert (= (and b!3707270 (not c!640303)) b!3707266))

(assert (= (and b!3707266 c!640302) b!3707272))

(assert (= (and b!3707266 (not c!640302)) b!3707268))

(assert (= (or b!3707272 b!3707268) bm!267754))

(assert (= (or b!3707272 b!3707268) bm!267755))

(assert (= (or b!3707272 b!3707268) bm!267752))

(assert (= (or b!3707265 bm!267755) bm!267753))

(declare-fun m!4216633 () Bool)

(assert (=> bm!267752 m!4216633))

(declare-fun m!4216635 () Bool)

(assert (=> bm!267753 m!4216635))

(declare-fun m!4216637 () Bool)

(assert (=> bm!267754 m!4216637))

(assert (=> b!3707012 d!1086569))

(declare-fun d!1086571 () Bool)

(declare-fun lt!1296534 () Bool)

(assert (=> d!1086571 (= lt!1296534 (select (content!5715 (t!302379 s!14922)) c!13398))))

(declare-fun e!2296448 () Bool)

(assert (=> d!1086571 (= lt!1296534 e!2296448)))

(declare-fun res!1508040 () Bool)

(assert (=> d!1086571 (=> (not res!1508040) (not e!2296448))))

(assert (=> d!1086571 (= res!1508040 ((_ is Cons!39572) (t!302379 s!14922)))))

(assert (=> d!1086571 (= (contains!7908 (t!302379 s!14922) c!13398) lt!1296534)))

(declare-fun b!3707274 () Bool)

(declare-fun e!2296447 () Bool)

(assert (=> b!3707274 (= e!2296448 e!2296447)))

(declare-fun res!1508039 () Bool)

(assert (=> b!3707274 (=> res!1508039 e!2296447)))

(assert (=> b!3707274 (= res!1508039 (= (h!44992 (t!302379 s!14922)) c!13398))))

(declare-fun b!3707275 () Bool)

(assert (=> b!3707275 (= e!2296447 (contains!7908 (t!302379 (t!302379 s!14922)) c!13398))))

(assert (= (and d!1086571 res!1508040) b!3707274))

(assert (= (and b!3707274 (not res!1508039)) b!3707275))

(declare-fun m!4216639 () Bool)

(assert (=> d!1086571 m!4216639))

(declare-fun m!4216641 () Bool)

(assert (=> d!1086571 m!4216641))

(declare-fun m!4216643 () Bool)

(assert (=> b!3707275 m!4216643))

(assert (=> b!3707015 d!1086571))

(declare-fun b!3707280 () Bool)

(declare-fun e!2296451 () Bool)

(declare-fun tp!1127909 () Bool)

(assert (=> b!3707280 (= e!2296451 (and tp_is_empty!18645 tp!1127909))))

(assert (=> b!3707016 (= tp!1127863 e!2296451)))

(assert (= (and b!3707016 ((_ is Cons!39572) (t!302379 s!14922))) b!3707280))

(declare-fun e!2296454 () Bool)

(assert (=> b!3707011 (= tp!1127866 e!2296454)))

(declare-fun b!3707291 () Bool)

(assert (=> b!3707291 (= e!2296454 tp_is_empty!18645)))

(declare-fun b!3707292 () Bool)

(declare-fun tp!1127920 () Bool)

(declare-fun tp!1127923 () Bool)

(assert (=> b!3707292 (= e!2296454 (and tp!1127920 tp!1127923))))

(declare-fun b!3707293 () Bool)

(declare-fun tp!1127921 () Bool)

(assert (=> b!3707293 (= e!2296454 tp!1127921)))

(declare-fun b!3707294 () Bool)

(declare-fun tp!1127924 () Bool)

(declare-fun tp!1127922 () Bool)

(assert (=> b!3707294 (= e!2296454 (and tp!1127924 tp!1127922))))

(assert (= (and b!3707011 ((_ is ElementMatch!10815) (regOne!22142 r!25965))) b!3707291))

(assert (= (and b!3707011 ((_ is Concat!17086) (regOne!22142 r!25965))) b!3707292))

(assert (= (and b!3707011 ((_ is Star!10815) (regOne!22142 r!25965))) b!3707293))

(assert (= (and b!3707011 ((_ is Union!10815) (regOne!22142 r!25965))) b!3707294))

(declare-fun e!2296455 () Bool)

(assert (=> b!3707011 (= tp!1127867 e!2296455)))

(declare-fun b!3707295 () Bool)

(assert (=> b!3707295 (= e!2296455 tp_is_empty!18645)))

(declare-fun b!3707296 () Bool)

(declare-fun tp!1127925 () Bool)

(declare-fun tp!1127928 () Bool)

(assert (=> b!3707296 (= e!2296455 (and tp!1127925 tp!1127928))))

(declare-fun b!3707297 () Bool)

(declare-fun tp!1127926 () Bool)

(assert (=> b!3707297 (= e!2296455 tp!1127926)))

(declare-fun b!3707298 () Bool)

(declare-fun tp!1127929 () Bool)

(declare-fun tp!1127927 () Bool)

(assert (=> b!3707298 (= e!2296455 (and tp!1127929 tp!1127927))))

(assert (= (and b!3707011 ((_ is ElementMatch!10815) (regTwo!22142 r!25965))) b!3707295))

(assert (= (and b!3707011 ((_ is Concat!17086) (regTwo!22142 r!25965))) b!3707296))

(assert (= (and b!3707011 ((_ is Star!10815) (regTwo!22142 r!25965))) b!3707297))

(assert (= (and b!3707011 ((_ is Union!10815) (regTwo!22142 r!25965))) b!3707298))

(declare-fun e!2296456 () Bool)

(assert (=> b!3707014 (= tp!1127864 e!2296456)))

(declare-fun b!3707299 () Bool)

(assert (=> b!3707299 (= e!2296456 tp_is_empty!18645)))

(declare-fun b!3707300 () Bool)

(declare-fun tp!1127930 () Bool)

(declare-fun tp!1127933 () Bool)

(assert (=> b!3707300 (= e!2296456 (and tp!1127930 tp!1127933))))

(declare-fun b!3707301 () Bool)

(declare-fun tp!1127931 () Bool)

(assert (=> b!3707301 (= e!2296456 tp!1127931)))

(declare-fun b!3707302 () Bool)

(declare-fun tp!1127934 () Bool)

(declare-fun tp!1127932 () Bool)

(assert (=> b!3707302 (= e!2296456 (and tp!1127934 tp!1127932))))

(assert (= (and b!3707014 ((_ is ElementMatch!10815) (regOne!22143 r!25965))) b!3707299))

(assert (= (and b!3707014 ((_ is Concat!17086) (regOne!22143 r!25965))) b!3707300))

(assert (= (and b!3707014 ((_ is Star!10815) (regOne!22143 r!25965))) b!3707301))

(assert (= (and b!3707014 ((_ is Union!10815) (regOne!22143 r!25965))) b!3707302))

(declare-fun e!2296457 () Bool)

(assert (=> b!3707014 (= tp!1127865 e!2296457)))

(declare-fun b!3707303 () Bool)

(assert (=> b!3707303 (= e!2296457 tp_is_empty!18645)))

(declare-fun b!3707304 () Bool)

(declare-fun tp!1127935 () Bool)

(declare-fun tp!1127938 () Bool)

(assert (=> b!3707304 (= e!2296457 (and tp!1127935 tp!1127938))))

(declare-fun b!3707305 () Bool)

(declare-fun tp!1127936 () Bool)

(assert (=> b!3707305 (= e!2296457 tp!1127936)))

(declare-fun b!3707306 () Bool)

(declare-fun tp!1127939 () Bool)

(declare-fun tp!1127937 () Bool)

(assert (=> b!3707306 (= e!2296457 (and tp!1127939 tp!1127937))))

(assert (= (and b!3707014 ((_ is ElementMatch!10815) (regTwo!22143 r!25965))) b!3707303))

(assert (= (and b!3707014 ((_ is Concat!17086) (regTwo!22143 r!25965))) b!3707304))

(assert (= (and b!3707014 ((_ is Star!10815) (regTwo!22143 r!25965))) b!3707305))

(assert (= (and b!3707014 ((_ is Union!10815) (regTwo!22143 r!25965))) b!3707306))

(declare-fun e!2296458 () Bool)

(assert (=> b!3707020 (= tp!1127868 e!2296458)))

(declare-fun b!3707307 () Bool)

(assert (=> b!3707307 (= e!2296458 tp_is_empty!18645)))

(declare-fun b!3707308 () Bool)

(declare-fun tp!1127940 () Bool)

(declare-fun tp!1127943 () Bool)

(assert (=> b!3707308 (= e!2296458 (and tp!1127940 tp!1127943))))

(declare-fun b!3707309 () Bool)

(declare-fun tp!1127941 () Bool)

(assert (=> b!3707309 (= e!2296458 tp!1127941)))

(declare-fun b!3707310 () Bool)

(declare-fun tp!1127944 () Bool)

(declare-fun tp!1127942 () Bool)

(assert (=> b!3707310 (= e!2296458 (and tp!1127944 tp!1127942))))

(assert (= (and b!3707020 ((_ is ElementMatch!10815) (reg!11144 r!25965))) b!3707307))

(assert (= (and b!3707020 ((_ is Concat!17086) (reg!11144 r!25965))) b!3707308))

(assert (= (and b!3707020 ((_ is Star!10815) (reg!11144 r!25965))) b!3707309))

(assert (= (and b!3707020 ((_ is Union!10815) (reg!11144 r!25965))) b!3707310))

(check-sat (not bm!267747) (not b!3707275) (not b!3707305) (not b!3707308) (not bm!267754) (not d!1086539) (not b!3707032) (not b!3707217) (not b!3707300) (not b!3707115) (not b!3707306) (not b!3707099) (not d!1086567) (not bm!267724) (not bm!267702) (not bm!267725) (not d!1086557) (not b!3707294) (not b!3707236) (not b!3707293) (not bm!267751) (not b!3707292) (not b!3707298) (not bm!267704) (not bm!267753) (not b!3707309) (not b!3707297) (not bm!267752) (not b!3707256) (not b!3707296) (not d!1086543) (not b!3707280) (not bm!267726) (not d!1086535) (not b!3707304) (not bm!267748) (not b!3707301) (not b!3707302) (not b!3707310) tp_is_empty!18645 (not d!1086571) (not bm!267750))
(check-sat)
