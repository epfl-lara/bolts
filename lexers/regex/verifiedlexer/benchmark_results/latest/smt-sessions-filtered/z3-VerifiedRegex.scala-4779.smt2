; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246376 () Bool)

(assert start!246376)

(declare-fun b!2530427 () Bool)

(declare-fun e!1601374 () Bool)

(declare-fun tp_is_empty!12921 () Bool)

(assert (=> b!2530427 (= e!1601374 tp_is_empty!12921)))

(declare-fun b!2530428 () Bool)

(declare-fun e!1601376 () Bool)

(assert (=> b!2530428 (= e!1601376 (not false))))

(declare-datatypes ((C!15224 0))(
  ( (C!15225 (val!9264 Int)) )
))
(declare-datatypes ((Regex!7533 0))(
  ( (ElementMatch!7533 (c!404209 C!15224)) (Concat!12229 (regOne!15578 Regex!7533) (regTwo!15578 Regex!7533)) (EmptyExpr!7533) (Star!7533 (reg!7862 Regex!7533)) (EmptyLang!7533) (Union!7533 (regOne!15579 Regex!7533) (regTwo!15579 Regex!7533)) )
))
(declare-fun lt!901144 () Regex!7533)

(declare-fun lt!901142 () Regex!7533)

(assert (=> b!2530428 (= lt!901144 lt!901142)))

(declare-datatypes ((Unit!43287 0))(
  ( (Unit!43288) )
))
(declare-fun lt!901143 () Unit!43287)

(declare-datatypes ((List!29598 0))(
  ( (Nil!29498) (Cons!29498 (h!34918 C!15224) (t!211297 List!29598)) )
))
(declare-fun tl!4068 () List!29598)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!48 (Regex!7533 List!29598) Unit!43287)

(assert (=> b!2530428 (= lt!901143 (lemmaEmptyLangDerivativeIsAFixPoint!48 lt!901142 tl!4068))))

(declare-fun b!2530429 () Bool)

(declare-fun tp!807862 () Bool)

(assert (=> b!2530429 (= e!1601374 tp!807862)))

(declare-fun b!2530430 () Bool)

(declare-fun e!1601375 () Bool)

(declare-fun tp!807866 () Bool)

(assert (=> b!2530430 (= e!1601375 (and tp_is_empty!12921 tp!807866))))

(declare-fun b!2530431 () Bool)

(declare-fun tp!807863 () Bool)

(declare-fun tp!807865 () Bool)

(assert (=> b!2530431 (= e!1601374 (and tp!807863 tp!807865))))

(declare-fun res!1068463 () Bool)

(declare-fun e!1601373 () Bool)

(assert (=> start!246376 (=> (not res!1068463) (not e!1601373))))

(declare-fun r!27340 () Regex!7533)

(declare-fun validRegex!3159 (Regex!7533) Bool)

(assert (=> start!246376 (= res!1068463 (validRegex!3159 r!27340))))

(assert (=> start!246376 e!1601373))

(assert (=> start!246376 e!1601374))

(assert (=> start!246376 tp_is_empty!12921))

(assert (=> start!246376 e!1601375))

(declare-fun b!2530432 () Bool)

(declare-fun res!1068462 () Bool)

(assert (=> b!2530432 (=> (not res!1068462) (not e!1601376))))

(get-info :version)

(assert (=> b!2530432 (= res!1068462 (and (not ((_ is EmptyExpr!7533) r!27340)) ((_ is EmptyLang!7533) r!27340) (= lt!901142 EmptyLang!7533)))))

(declare-fun b!2530433 () Bool)

(assert (=> b!2530433 (= e!1601373 e!1601376)))

(declare-fun res!1068464 () Bool)

(assert (=> b!2530433 (=> (not res!1068464) (not e!1601376))))

(declare-fun nullable!2450 (Regex!7533) Bool)

(assert (=> b!2530433 (= res!1068464 (nullable!2450 lt!901144))))

(declare-fun derivative!228 (Regex!7533 List!29598) Regex!7533)

(assert (=> b!2530433 (= lt!901144 (derivative!228 lt!901142 tl!4068))))

(declare-fun c!14016 () C!15224)

(declare-fun derivativeStep!2102 (Regex!7533 C!15224) Regex!7533)

(assert (=> b!2530433 (= lt!901142 (derivativeStep!2102 r!27340 c!14016))))

(declare-fun b!2530434 () Bool)

(declare-fun tp!807864 () Bool)

(declare-fun tp!807861 () Bool)

(assert (=> b!2530434 (= e!1601374 (and tp!807864 tp!807861))))

(assert (= (and start!246376 res!1068463) b!2530433))

(assert (= (and b!2530433 res!1068464) b!2530432))

(assert (= (and b!2530432 res!1068462) b!2530428))

(assert (= (and start!246376 ((_ is ElementMatch!7533) r!27340)) b!2530427))

(assert (= (and start!246376 ((_ is Concat!12229) r!27340)) b!2530434))

(assert (= (and start!246376 ((_ is Star!7533) r!27340)) b!2530429))

(assert (= (and start!246376 ((_ is Union!7533) r!27340)) b!2530431))

(assert (= (and start!246376 ((_ is Cons!29498) tl!4068)) b!2530430))

(declare-fun m!2881967 () Bool)

(assert (=> b!2530428 m!2881967))

(declare-fun m!2881969 () Bool)

(assert (=> start!246376 m!2881969))

(declare-fun m!2881971 () Bool)

(assert (=> b!2530433 m!2881971))

(declare-fun m!2881973 () Bool)

(assert (=> b!2530433 m!2881973))

(declare-fun m!2881975 () Bool)

(assert (=> b!2530433 m!2881975))

(check-sat (not b!2530430) (not b!2530428) (not start!246376) (not b!2530434) (not b!2530431) (not b!2530433) (not b!2530429) tp_is_empty!12921)
(check-sat)
(get-model)

(declare-fun b!2530480 () Bool)

(declare-fun e!1601414 () Bool)

(declare-fun call!158498 () Bool)

(assert (=> b!2530480 (= e!1601414 call!158498)))

(declare-fun b!2530481 () Bool)

(declare-fun e!1601416 () Bool)

(declare-fun call!158497 () Bool)

(assert (=> b!2530481 (= e!1601416 call!158497)))

(declare-fun b!2530482 () Bool)

(declare-fun e!1601412 () Bool)

(declare-fun call!158499 () Bool)

(assert (=> b!2530482 (= e!1601412 call!158499)))

(declare-fun b!2530483 () Bool)

(declare-fun e!1601417 () Bool)

(assert (=> b!2530483 (= e!1601417 e!1601412)))

(declare-fun res!1068490 () Bool)

(assert (=> b!2530483 (=> (not res!1068490) (not e!1601412))))

(assert (=> b!2530483 (= res!1068490 call!158497)))

(declare-fun b!2530484 () Bool)

(declare-fun res!1068494 () Bool)

(assert (=> b!2530484 (=> (not res!1068494) (not e!1601416))))

(assert (=> b!2530484 (= res!1068494 call!158499)))

(declare-fun e!1601415 () Bool)

(assert (=> b!2530484 (= e!1601415 e!1601416)))

(declare-fun c!404220 () Bool)

(declare-fun bm!158492 () Bool)

(declare-fun c!404221 () Bool)

(assert (=> bm!158492 (= call!158498 (validRegex!3159 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))))))

(declare-fun d!719824 () Bool)

(declare-fun res!1068493 () Bool)

(declare-fun e!1601418 () Bool)

(assert (=> d!719824 (=> res!1068493 e!1601418)))

(assert (=> d!719824 (= res!1068493 ((_ is ElementMatch!7533) r!27340))))

(assert (=> d!719824 (= (validRegex!3159 r!27340) e!1601418)))

(declare-fun b!2530485 () Bool)

(declare-fun e!1601413 () Bool)

(assert (=> b!2530485 (= e!1601413 e!1601415)))

(assert (=> b!2530485 (= c!404221 ((_ is Union!7533) r!27340))))

(declare-fun bm!158493 () Bool)

(assert (=> bm!158493 (= call!158499 (validRegex!3159 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(declare-fun b!2530486 () Bool)

(assert (=> b!2530486 (= e!1601418 e!1601413)))

(assert (=> b!2530486 (= c!404220 ((_ is Star!7533) r!27340))))

(declare-fun b!2530487 () Bool)

(assert (=> b!2530487 (= e!1601413 e!1601414)))

(declare-fun res!1068491 () Bool)

(assert (=> b!2530487 (= res!1068491 (not (nullable!2450 (reg!7862 r!27340))))))

(assert (=> b!2530487 (=> (not res!1068491) (not e!1601414))))

(declare-fun bm!158494 () Bool)

(assert (=> bm!158494 (= call!158497 call!158498)))

(declare-fun b!2530488 () Bool)

(declare-fun res!1068492 () Bool)

(assert (=> b!2530488 (=> res!1068492 e!1601417)))

(assert (=> b!2530488 (= res!1068492 (not ((_ is Concat!12229) r!27340)))))

(assert (=> b!2530488 (= e!1601415 e!1601417)))

(assert (= (and d!719824 (not res!1068493)) b!2530486))

(assert (= (and b!2530486 c!404220) b!2530487))

(assert (= (and b!2530486 (not c!404220)) b!2530485))

(assert (= (and b!2530487 res!1068491) b!2530480))

(assert (= (and b!2530485 c!404221) b!2530484))

(assert (= (and b!2530485 (not c!404221)) b!2530488))

(assert (= (and b!2530484 res!1068494) b!2530481))

(assert (= (and b!2530488 (not res!1068492)) b!2530483))

(assert (= (and b!2530483 res!1068490) b!2530482))

(assert (= (or b!2530484 b!2530482) bm!158493))

(assert (= (or b!2530481 b!2530483) bm!158494))

(assert (= (or b!2530480 bm!158494) bm!158492))

(declare-fun m!2881987 () Bool)

(assert (=> bm!158492 m!2881987))

(declare-fun m!2881989 () Bool)

(assert (=> bm!158493 m!2881989))

(declare-fun m!2881991 () Bool)

(assert (=> b!2530487 m!2881991))

(assert (=> start!246376 d!719824))

(declare-fun d!719834 () Bool)

(assert (=> d!719834 (= (derivative!228 lt!901142 tl!4068) lt!901142)))

(declare-fun lt!901153 () Unit!43287)

(declare-fun choose!15007 (Regex!7533 List!29598) Unit!43287)

(assert (=> d!719834 (= lt!901153 (choose!15007 lt!901142 tl!4068))))

(assert (=> d!719834 (= lt!901142 EmptyLang!7533)))

(assert (=> d!719834 (= (lemmaEmptyLangDerivativeIsAFixPoint!48 lt!901142 tl!4068) lt!901153)))

(declare-fun bs!469194 () Bool)

(assert (= bs!469194 d!719834))

(assert (=> bs!469194 m!2881973))

(declare-fun m!2882001 () Bool)

(assert (=> bs!469194 m!2882001))

(assert (=> b!2530428 d!719834))

(declare-fun d!719838 () Bool)

(declare-fun nullableFct!688 (Regex!7533) Bool)

(assert (=> d!719838 (= (nullable!2450 lt!901144) (nullableFct!688 lt!901144))))

(declare-fun bs!469195 () Bool)

(assert (= bs!469195 d!719838))

(declare-fun m!2882003 () Bool)

(assert (=> bs!469195 m!2882003))

(assert (=> b!2530433 d!719838))

(declare-fun d!719840 () Bool)

(declare-fun lt!901158 () Regex!7533)

(assert (=> d!719840 (validRegex!3159 lt!901158)))

(declare-fun e!1601434 () Regex!7533)

(assert (=> d!719840 (= lt!901158 e!1601434)))

(declare-fun c!404237 () Bool)

(assert (=> d!719840 (= c!404237 ((_ is Cons!29498) tl!4068))))

(assert (=> d!719840 (validRegex!3159 lt!901142)))

(assert (=> d!719840 (= (derivative!228 lt!901142 tl!4068) lt!901158)))

(declare-fun b!2530519 () Bool)

(assert (=> b!2530519 (= e!1601434 (derivative!228 (derivativeStep!2102 lt!901142 (h!34918 tl!4068)) (t!211297 tl!4068)))))

(declare-fun b!2530520 () Bool)

(assert (=> b!2530520 (= e!1601434 lt!901142)))

(assert (= (and d!719840 c!404237) b!2530519))

(assert (= (and d!719840 (not c!404237)) b!2530520))

(declare-fun m!2882005 () Bool)

(assert (=> d!719840 m!2882005))

(declare-fun m!2882007 () Bool)

(assert (=> d!719840 m!2882007))

(declare-fun m!2882009 () Bool)

(assert (=> b!2530519 m!2882009))

(assert (=> b!2530519 m!2882009))

(declare-fun m!2882011 () Bool)

(assert (=> b!2530519 m!2882011))

(assert (=> b!2530433 d!719840))

(declare-fun b!2530586 () Bool)

(declare-fun c!404256 () Bool)

(assert (=> b!2530586 (= c!404256 (nullable!2450 (regOne!15578 r!27340)))))

(declare-fun e!1601461 () Regex!7533)

(declare-fun e!1601460 () Regex!7533)

(assert (=> b!2530586 (= e!1601461 e!1601460)))

(declare-fun b!2530587 () Bool)

(declare-fun e!1601463 () Regex!7533)

(declare-fun call!158520 () Regex!7533)

(declare-fun call!158523 () Regex!7533)

(assert (=> b!2530587 (= e!1601463 (Union!7533 call!158520 call!158523))))

(declare-fun bm!158515 () Bool)

(declare-fun call!158522 () Regex!7533)

(assert (=> bm!158515 (= call!158522 call!158523)))

(declare-fun b!2530588 () Bool)

(assert (=> b!2530588 (= e!1601461 (Concat!12229 call!158522 r!27340))))

(declare-fun b!2530589 () Bool)

(declare-fun e!1601462 () Regex!7533)

(assert (=> b!2530589 (= e!1601462 EmptyLang!7533)))

(declare-fun b!2530590 () Bool)

(declare-fun c!404254 () Bool)

(assert (=> b!2530590 (= c!404254 ((_ is Union!7533) r!27340))))

(declare-fun e!1601464 () Regex!7533)

(assert (=> b!2530590 (= e!1601464 e!1601463)))

(declare-fun b!2530591 () Bool)

(declare-fun call!158521 () Regex!7533)

(assert (=> b!2530591 (= e!1601460 (Union!7533 (Concat!12229 call!158521 (regTwo!15578 r!27340)) EmptyLang!7533))))

(declare-fun b!2530592 () Bool)

(assert (=> b!2530592 (= e!1601462 e!1601464)))

(declare-fun c!404253 () Bool)

(assert (=> b!2530592 (= c!404253 ((_ is ElementMatch!7533) r!27340))))

(declare-fun d!719842 () Bool)

(declare-fun lt!901162 () Regex!7533)

(assert (=> d!719842 (validRegex!3159 lt!901162)))

(assert (=> d!719842 (= lt!901162 e!1601462)))

(declare-fun c!404257 () Bool)

(assert (=> d!719842 (= c!404257 (or ((_ is EmptyExpr!7533) r!27340) ((_ is EmptyLang!7533) r!27340)))))

(assert (=> d!719842 (validRegex!3159 r!27340)))

(assert (=> d!719842 (= (derivativeStep!2102 r!27340 c!14016) lt!901162)))

(declare-fun b!2530593 () Bool)

(assert (=> b!2530593 (= e!1601463 e!1601461)))

(declare-fun c!404255 () Bool)

(assert (=> b!2530593 (= c!404255 ((_ is Star!7533) r!27340))))

(declare-fun bm!158516 () Bool)

(assert (=> bm!158516 (= call!158521 call!158522)))

(declare-fun b!2530594 () Bool)

(assert (=> b!2530594 (= e!1601460 (Union!7533 (Concat!12229 call!158521 (regTwo!15578 r!27340)) call!158520))))

(declare-fun bm!158517 () Bool)

(assert (=> bm!158517 (= call!158520 (derivativeStep!2102 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)) c!14016))))

(declare-fun bm!158518 () Bool)

(assert (=> bm!158518 (= call!158523 (derivativeStep!2102 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))) c!14016))))

(declare-fun b!2530595 () Bool)

(assert (=> b!2530595 (= e!1601464 (ite (= c!14016 (c!404209 r!27340)) EmptyExpr!7533 EmptyLang!7533))))

(assert (= (and d!719842 c!404257) b!2530589))

(assert (= (and d!719842 (not c!404257)) b!2530592))

(assert (= (and b!2530592 c!404253) b!2530595))

(assert (= (and b!2530592 (not c!404253)) b!2530590))

(assert (= (and b!2530590 c!404254) b!2530587))

(assert (= (and b!2530590 (not c!404254)) b!2530593))

(assert (= (and b!2530593 c!404255) b!2530588))

(assert (= (and b!2530593 (not c!404255)) b!2530586))

(assert (= (and b!2530586 c!404256) b!2530594))

(assert (= (and b!2530586 (not c!404256)) b!2530591))

(assert (= (or b!2530594 b!2530591) bm!158516))

(assert (= (or b!2530588 bm!158516) bm!158515))

(assert (= (or b!2530587 bm!158515) bm!158518))

(assert (= (or b!2530587 b!2530594) bm!158517))

(declare-fun m!2882021 () Bool)

(assert (=> b!2530586 m!2882021))

(declare-fun m!2882023 () Bool)

(assert (=> d!719842 m!2882023))

(assert (=> d!719842 m!2881969))

(declare-fun m!2882025 () Bool)

(assert (=> bm!158517 m!2882025))

(declare-fun m!2882027 () Bool)

(assert (=> bm!158518 m!2882027))

(assert (=> b!2530433 d!719842))

(declare-fun b!2530609 () Bool)

(declare-fun e!1601467 () Bool)

(declare-fun tp!807915 () Bool)

(declare-fun tp!807918 () Bool)

(assert (=> b!2530609 (= e!1601467 (and tp!807915 tp!807918))))

(assert (=> b!2530429 (= tp!807862 e!1601467)))

(declare-fun b!2530608 () Bool)

(declare-fun tp!807916 () Bool)

(assert (=> b!2530608 (= e!1601467 tp!807916)))

(declare-fun b!2530606 () Bool)

(assert (=> b!2530606 (= e!1601467 tp_is_empty!12921)))

(declare-fun b!2530607 () Bool)

(declare-fun tp!807917 () Bool)

(declare-fun tp!807919 () Bool)

(assert (=> b!2530607 (= e!1601467 (and tp!807917 tp!807919))))

(assert (= (and b!2530429 ((_ is ElementMatch!7533) (reg!7862 r!27340))) b!2530606))

(assert (= (and b!2530429 ((_ is Concat!12229) (reg!7862 r!27340))) b!2530607))

(assert (= (and b!2530429 ((_ is Star!7533) (reg!7862 r!27340))) b!2530608))

(assert (= (and b!2530429 ((_ is Union!7533) (reg!7862 r!27340))) b!2530609))

(declare-fun b!2530613 () Bool)

(declare-fun e!1601468 () Bool)

(declare-fun tp!807920 () Bool)

(declare-fun tp!807923 () Bool)

(assert (=> b!2530613 (= e!1601468 (and tp!807920 tp!807923))))

(assert (=> b!2530434 (= tp!807864 e!1601468)))

(declare-fun b!2530612 () Bool)

(declare-fun tp!807921 () Bool)

(assert (=> b!2530612 (= e!1601468 tp!807921)))

(declare-fun b!2530610 () Bool)

(assert (=> b!2530610 (= e!1601468 tp_is_empty!12921)))

(declare-fun b!2530611 () Bool)

(declare-fun tp!807922 () Bool)

(declare-fun tp!807924 () Bool)

(assert (=> b!2530611 (= e!1601468 (and tp!807922 tp!807924))))

(assert (= (and b!2530434 ((_ is ElementMatch!7533) (regOne!15578 r!27340))) b!2530610))

(assert (= (and b!2530434 ((_ is Concat!12229) (regOne!15578 r!27340))) b!2530611))

(assert (= (and b!2530434 ((_ is Star!7533) (regOne!15578 r!27340))) b!2530612))

(assert (= (and b!2530434 ((_ is Union!7533) (regOne!15578 r!27340))) b!2530613))

(declare-fun b!2530617 () Bool)

(declare-fun e!1601469 () Bool)

(declare-fun tp!807925 () Bool)

(declare-fun tp!807928 () Bool)

(assert (=> b!2530617 (= e!1601469 (and tp!807925 tp!807928))))

(assert (=> b!2530434 (= tp!807861 e!1601469)))

(declare-fun b!2530616 () Bool)

(declare-fun tp!807926 () Bool)

(assert (=> b!2530616 (= e!1601469 tp!807926)))

(declare-fun b!2530614 () Bool)

(assert (=> b!2530614 (= e!1601469 tp_is_empty!12921)))

(declare-fun b!2530615 () Bool)

(declare-fun tp!807927 () Bool)

(declare-fun tp!807929 () Bool)

(assert (=> b!2530615 (= e!1601469 (and tp!807927 tp!807929))))

(assert (= (and b!2530434 ((_ is ElementMatch!7533) (regTwo!15578 r!27340))) b!2530614))

(assert (= (and b!2530434 ((_ is Concat!12229) (regTwo!15578 r!27340))) b!2530615))

(assert (= (and b!2530434 ((_ is Star!7533) (regTwo!15578 r!27340))) b!2530616))

(assert (= (and b!2530434 ((_ is Union!7533) (regTwo!15578 r!27340))) b!2530617))

(declare-fun b!2530621 () Bool)

(declare-fun e!1601470 () Bool)

(declare-fun tp!807930 () Bool)

(declare-fun tp!807933 () Bool)

(assert (=> b!2530621 (= e!1601470 (and tp!807930 tp!807933))))

(assert (=> b!2530431 (= tp!807863 e!1601470)))

(declare-fun b!2530620 () Bool)

(declare-fun tp!807931 () Bool)

(assert (=> b!2530620 (= e!1601470 tp!807931)))

(declare-fun b!2530618 () Bool)

(assert (=> b!2530618 (= e!1601470 tp_is_empty!12921)))

(declare-fun b!2530619 () Bool)

(declare-fun tp!807932 () Bool)

(declare-fun tp!807934 () Bool)

(assert (=> b!2530619 (= e!1601470 (and tp!807932 tp!807934))))

(assert (= (and b!2530431 ((_ is ElementMatch!7533) (regOne!15579 r!27340))) b!2530618))

(assert (= (and b!2530431 ((_ is Concat!12229) (regOne!15579 r!27340))) b!2530619))

(assert (= (and b!2530431 ((_ is Star!7533) (regOne!15579 r!27340))) b!2530620))

(assert (= (and b!2530431 ((_ is Union!7533) (regOne!15579 r!27340))) b!2530621))

(declare-fun b!2530625 () Bool)

(declare-fun e!1601471 () Bool)

(declare-fun tp!807935 () Bool)

(declare-fun tp!807938 () Bool)

(assert (=> b!2530625 (= e!1601471 (and tp!807935 tp!807938))))

(assert (=> b!2530431 (= tp!807865 e!1601471)))

(declare-fun b!2530624 () Bool)

(declare-fun tp!807936 () Bool)

(assert (=> b!2530624 (= e!1601471 tp!807936)))

(declare-fun b!2530622 () Bool)

(assert (=> b!2530622 (= e!1601471 tp_is_empty!12921)))

(declare-fun b!2530623 () Bool)

(declare-fun tp!807937 () Bool)

(declare-fun tp!807939 () Bool)

(assert (=> b!2530623 (= e!1601471 (and tp!807937 tp!807939))))

(assert (= (and b!2530431 ((_ is ElementMatch!7533) (regTwo!15579 r!27340))) b!2530622))

(assert (= (and b!2530431 ((_ is Concat!12229) (regTwo!15579 r!27340))) b!2530623))

(assert (= (and b!2530431 ((_ is Star!7533) (regTwo!15579 r!27340))) b!2530624))

(assert (= (and b!2530431 ((_ is Union!7533) (regTwo!15579 r!27340))) b!2530625))

(declare-fun b!2530630 () Bool)

(declare-fun e!1601474 () Bool)

(declare-fun tp!807942 () Bool)

(assert (=> b!2530630 (= e!1601474 (and tp_is_empty!12921 tp!807942))))

(assert (=> b!2530430 (= tp!807866 e!1601474)))

(assert (= (and b!2530430 ((_ is Cons!29498) (t!211297 tl!4068))) b!2530630))

(check-sat (not b!2530609) (not b!2530487) (not d!719838) (not b!2530613) (not b!2530625) (not b!2530624) (not d!719840) (not b!2530617) (not bm!158517) (not b!2530623) (not b!2530619) (not b!2530519) (not b!2530620) (not b!2530611) (not b!2530630) (not b!2530616) (not bm!158492) (not b!2530612) (not b!2530608) (not bm!158493) (not b!2530586) (not d!719842) (not b!2530621) (not b!2530615) (not d!719834) tp_is_empty!12921 (not bm!158518) (not b!2530607))
(check-sat)
(get-model)

(declare-fun b!2530844 () Bool)

(declare-fun e!1601587 () Bool)

(declare-fun e!1601584 () Bool)

(assert (=> b!2530844 (= e!1601587 e!1601584)))

(declare-fun res!1068548 () Bool)

(assert (=> b!2530844 (=> res!1068548 e!1601584)))

(assert (=> b!2530844 (= res!1068548 ((_ is Star!7533) lt!901144))))

(declare-fun bm!158556 () Bool)

(declare-fun call!158561 () Bool)

(declare-fun c!404289 () Bool)

(assert (=> bm!158556 (= call!158561 (nullable!2450 (ite c!404289 (regOne!15579 lt!901144) (regTwo!15578 lt!901144))))))

(declare-fun b!2530845 () Bool)

(declare-fun e!1601583 () Bool)

(declare-fun e!1601585 () Bool)

(assert (=> b!2530845 (= e!1601583 e!1601585)))

(declare-fun res!1068546 () Bool)

(declare-fun call!158562 () Bool)

(assert (=> b!2530845 (= res!1068546 call!158562)))

(assert (=> b!2530845 (=> (not res!1068546) (not e!1601585))))

(declare-fun b!2530847 () Bool)

(declare-fun e!1601582 () Bool)

(assert (=> b!2530847 (= e!1601582 e!1601587)))

(declare-fun res!1068549 () Bool)

(assert (=> b!2530847 (=> (not res!1068549) (not e!1601587))))

(assert (=> b!2530847 (= res!1068549 (and (not ((_ is EmptyLang!7533) lt!901144)) (not ((_ is ElementMatch!7533) lt!901144))))))

(declare-fun b!2530848 () Bool)

(declare-fun e!1601586 () Bool)

(assert (=> b!2530848 (= e!1601583 e!1601586)))

(declare-fun res!1068545 () Bool)

(assert (=> b!2530848 (= res!1068545 call!158561)))

(assert (=> b!2530848 (=> res!1068545 e!1601586)))

(declare-fun bm!158557 () Bool)

(assert (=> bm!158557 (= call!158562 (nullable!2450 (ite c!404289 (regTwo!15579 lt!901144) (regOne!15578 lt!901144))))))

(declare-fun b!2530849 () Bool)

(assert (=> b!2530849 (= e!1601586 call!158562)))

(declare-fun b!2530850 () Bool)

(assert (=> b!2530850 (= e!1601585 call!158561)))

(declare-fun d!719862 () Bool)

(declare-fun res!1068547 () Bool)

(assert (=> d!719862 (=> res!1068547 e!1601582)))

(assert (=> d!719862 (= res!1068547 ((_ is EmptyExpr!7533) lt!901144))))

(assert (=> d!719862 (= (nullableFct!688 lt!901144) e!1601582)))

(declare-fun b!2530846 () Bool)

(assert (=> b!2530846 (= e!1601584 e!1601583)))

(assert (=> b!2530846 (= c!404289 ((_ is Union!7533) lt!901144))))

(assert (= (and d!719862 (not res!1068547)) b!2530847))

(assert (= (and b!2530847 res!1068549) b!2530844))

(assert (= (and b!2530844 (not res!1068548)) b!2530846))

(assert (= (and b!2530846 c!404289) b!2530848))

(assert (= (and b!2530846 (not c!404289)) b!2530845))

(assert (= (and b!2530848 (not res!1068545)) b!2530849))

(assert (= (and b!2530845 res!1068546) b!2530850))

(assert (= (or b!2530849 b!2530845) bm!158557))

(assert (= (or b!2530848 b!2530850) bm!158556))

(declare-fun m!2882103 () Bool)

(assert (=> bm!158556 m!2882103))

(declare-fun m!2882105 () Bool)

(assert (=> bm!158557 m!2882105))

(assert (=> d!719838 d!719862))

(declare-fun d!719872 () Bool)

(assert (=> d!719872 (= (nullable!2450 (reg!7862 r!27340)) (nullableFct!688 (reg!7862 r!27340)))))

(declare-fun bs!469199 () Bool)

(assert (= bs!469199 d!719872))

(declare-fun m!2882107 () Bool)

(assert (=> bs!469199 m!2882107))

(assert (=> b!2530487 d!719872))

(assert (=> d!719834 d!719840))

(declare-fun d!719874 () Bool)

(assert (=> d!719874 (= (derivative!228 lt!901142 tl!4068) lt!901142)))

(assert (=> d!719874 true))

(declare-fun _$134!162 () Unit!43287)

(assert (=> d!719874 (= (choose!15007 lt!901142 tl!4068) _$134!162)))

(declare-fun bs!469200 () Bool)

(assert (= bs!469200 d!719874))

(assert (=> bs!469200 m!2881973))

(assert (=> d!719834 d!719874))

(declare-fun b!2530851 () Bool)

(declare-fun c!404293 () Bool)

(assert (=> b!2530851 (= c!404293 (nullable!2450 (regOne!15578 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)))))))

(declare-fun e!1601589 () Regex!7533)

(declare-fun e!1601588 () Regex!7533)

(assert (=> b!2530851 (= e!1601589 e!1601588)))

(declare-fun b!2530852 () Bool)

(declare-fun e!1601591 () Regex!7533)

(declare-fun call!158563 () Regex!7533)

(declare-fun call!158566 () Regex!7533)

(assert (=> b!2530852 (= e!1601591 (Union!7533 call!158563 call!158566))))

(declare-fun bm!158558 () Bool)

(declare-fun call!158565 () Regex!7533)

(assert (=> bm!158558 (= call!158565 call!158566)))

(declare-fun b!2530853 () Bool)

(assert (=> b!2530853 (= e!1601589 (Concat!12229 call!158565 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(declare-fun b!2530854 () Bool)

(declare-fun e!1601590 () Regex!7533)

(assert (=> b!2530854 (= e!1601590 EmptyLang!7533)))

(declare-fun b!2530855 () Bool)

(declare-fun c!404291 () Bool)

(assert (=> b!2530855 (= c!404291 ((_ is Union!7533) (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(declare-fun e!1601592 () Regex!7533)

(assert (=> b!2530855 (= e!1601592 e!1601591)))

(declare-fun call!158564 () Regex!7533)

(declare-fun b!2530856 () Bool)

(assert (=> b!2530856 (= e!1601588 (Union!7533 (Concat!12229 call!158564 (regTwo!15578 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)))) EmptyLang!7533))))

(declare-fun b!2530857 () Bool)

(assert (=> b!2530857 (= e!1601590 e!1601592)))

(declare-fun c!404290 () Bool)

(assert (=> b!2530857 (= c!404290 ((_ is ElementMatch!7533) (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(declare-fun d!719876 () Bool)

(declare-fun lt!901167 () Regex!7533)

(assert (=> d!719876 (validRegex!3159 lt!901167)))

(assert (=> d!719876 (= lt!901167 e!1601590)))

(declare-fun c!404294 () Bool)

(assert (=> d!719876 (= c!404294 (or ((_ is EmptyExpr!7533) (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))) ((_ is EmptyLang!7533) (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)))))))

(assert (=> d!719876 (validRegex!3159 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)))))

(assert (=> d!719876 (= (derivativeStep!2102 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)) c!14016) lt!901167)))

(declare-fun b!2530858 () Bool)

(assert (=> b!2530858 (= e!1601591 e!1601589)))

(declare-fun c!404292 () Bool)

(assert (=> b!2530858 (= c!404292 ((_ is Star!7533) (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(declare-fun bm!158559 () Bool)

(assert (=> bm!158559 (= call!158564 call!158565)))

(declare-fun b!2530859 () Bool)

(assert (=> b!2530859 (= e!1601588 (Union!7533 (Concat!12229 call!158564 (regTwo!15578 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)))) call!158563))))

(declare-fun bm!158560 () Bool)

(assert (=> bm!158560 (= call!158563 (derivativeStep!2102 (ite c!404291 (regOne!15579 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))) (regTwo!15578 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)))) c!14016))))

(declare-fun bm!158561 () Bool)

(assert (=> bm!158561 (= call!158566 (derivativeStep!2102 (ite c!404291 (regTwo!15579 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))) (ite c!404292 (reg!7862 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))) (regOne!15578 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340))))) c!14016))))

(declare-fun b!2530860 () Bool)

(assert (=> b!2530860 (= e!1601592 (ite (= c!14016 (c!404209 (ite c!404254 (regOne!15579 r!27340) (regTwo!15578 r!27340)))) EmptyExpr!7533 EmptyLang!7533))))

(assert (= (and d!719876 c!404294) b!2530854))

(assert (= (and d!719876 (not c!404294)) b!2530857))

(assert (= (and b!2530857 c!404290) b!2530860))

(assert (= (and b!2530857 (not c!404290)) b!2530855))

(assert (= (and b!2530855 c!404291) b!2530852))

(assert (= (and b!2530855 (not c!404291)) b!2530858))

(assert (= (and b!2530858 c!404292) b!2530853))

(assert (= (and b!2530858 (not c!404292)) b!2530851))

(assert (= (and b!2530851 c!404293) b!2530859))

(assert (= (and b!2530851 (not c!404293)) b!2530856))

(assert (= (or b!2530859 b!2530856) bm!158559))

(assert (= (or b!2530853 bm!158559) bm!158558))

(assert (= (or b!2530852 bm!158558) bm!158561))

(assert (= (or b!2530852 b!2530859) bm!158560))

(declare-fun m!2882109 () Bool)

(assert (=> b!2530851 m!2882109))

(declare-fun m!2882111 () Bool)

(assert (=> d!719876 m!2882111))

(declare-fun m!2882113 () Bool)

(assert (=> d!719876 m!2882113))

(declare-fun m!2882115 () Bool)

(assert (=> bm!158560 m!2882115))

(declare-fun m!2882117 () Bool)

(assert (=> bm!158561 m!2882117))

(assert (=> bm!158517 d!719876))

(declare-fun b!2530861 () Bool)

(declare-fun e!1601595 () Bool)

(declare-fun call!158568 () Bool)

(assert (=> b!2530861 (= e!1601595 call!158568)))

(declare-fun b!2530862 () Bool)

(declare-fun e!1601597 () Bool)

(declare-fun call!158567 () Bool)

(assert (=> b!2530862 (= e!1601597 call!158567)))

(declare-fun b!2530863 () Bool)

(declare-fun e!1601593 () Bool)

(declare-fun call!158569 () Bool)

(assert (=> b!2530863 (= e!1601593 call!158569)))

(declare-fun b!2530864 () Bool)

(declare-fun e!1601598 () Bool)

(assert (=> b!2530864 (= e!1601598 e!1601593)))

(declare-fun res!1068550 () Bool)

(assert (=> b!2530864 (=> (not res!1068550) (not e!1601593))))

(assert (=> b!2530864 (= res!1068550 call!158567)))

(declare-fun b!2530865 () Bool)

(declare-fun res!1068554 () Bool)

(assert (=> b!2530865 (=> (not res!1068554) (not e!1601597))))

(assert (=> b!2530865 (= res!1068554 call!158569)))

(declare-fun e!1601596 () Bool)

(assert (=> b!2530865 (= e!1601596 e!1601597)))

(declare-fun c!404296 () Bool)

(declare-fun bm!158562 () Bool)

(declare-fun c!404295 () Bool)

(assert (=> bm!158562 (= call!158568 (validRegex!3159 (ite c!404295 (reg!7862 lt!901162) (ite c!404296 (regTwo!15579 lt!901162) (regOne!15578 lt!901162)))))))

(declare-fun d!719878 () Bool)

(declare-fun res!1068553 () Bool)

(declare-fun e!1601599 () Bool)

(assert (=> d!719878 (=> res!1068553 e!1601599)))

(assert (=> d!719878 (= res!1068553 ((_ is ElementMatch!7533) lt!901162))))

(assert (=> d!719878 (= (validRegex!3159 lt!901162) e!1601599)))

(declare-fun b!2530866 () Bool)

(declare-fun e!1601594 () Bool)

(assert (=> b!2530866 (= e!1601594 e!1601596)))

(assert (=> b!2530866 (= c!404296 ((_ is Union!7533) lt!901162))))

(declare-fun bm!158563 () Bool)

(assert (=> bm!158563 (= call!158569 (validRegex!3159 (ite c!404296 (regOne!15579 lt!901162) (regTwo!15578 lt!901162))))))

(declare-fun b!2530867 () Bool)

(assert (=> b!2530867 (= e!1601599 e!1601594)))

(assert (=> b!2530867 (= c!404295 ((_ is Star!7533) lt!901162))))

(declare-fun b!2530868 () Bool)

(assert (=> b!2530868 (= e!1601594 e!1601595)))

(declare-fun res!1068551 () Bool)

(assert (=> b!2530868 (= res!1068551 (not (nullable!2450 (reg!7862 lt!901162))))))

(assert (=> b!2530868 (=> (not res!1068551) (not e!1601595))))

(declare-fun bm!158564 () Bool)

(assert (=> bm!158564 (= call!158567 call!158568)))

(declare-fun b!2530869 () Bool)

(declare-fun res!1068552 () Bool)

(assert (=> b!2530869 (=> res!1068552 e!1601598)))

(assert (=> b!2530869 (= res!1068552 (not ((_ is Concat!12229) lt!901162)))))

(assert (=> b!2530869 (= e!1601596 e!1601598)))

(assert (= (and d!719878 (not res!1068553)) b!2530867))

(assert (= (and b!2530867 c!404295) b!2530868))

(assert (= (and b!2530867 (not c!404295)) b!2530866))

(assert (= (and b!2530868 res!1068551) b!2530861))

(assert (= (and b!2530866 c!404296) b!2530865))

(assert (= (and b!2530866 (not c!404296)) b!2530869))

(assert (= (and b!2530865 res!1068554) b!2530862))

(assert (= (and b!2530869 (not res!1068552)) b!2530864))

(assert (= (and b!2530864 res!1068550) b!2530863))

(assert (= (or b!2530865 b!2530863) bm!158563))

(assert (= (or b!2530862 b!2530864) bm!158564))

(assert (= (or b!2530861 bm!158564) bm!158562))

(declare-fun m!2882119 () Bool)

(assert (=> bm!158562 m!2882119))

(declare-fun m!2882121 () Bool)

(assert (=> bm!158563 m!2882121))

(declare-fun m!2882123 () Bool)

(assert (=> b!2530868 m!2882123))

(assert (=> d!719842 d!719878))

(assert (=> d!719842 d!719824))

(declare-fun b!2530870 () Bool)

(declare-fun e!1601602 () Bool)

(declare-fun call!158571 () Bool)

(assert (=> b!2530870 (= e!1601602 call!158571)))

(declare-fun b!2530871 () Bool)

(declare-fun e!1601604 () Bool)

(declare-fun call!158570 () Bool)

(assert (=> b!2530871 (= e!1601604 call!158570)))

(declare-fun b!2530872 () Bool)

(declare-fun e!1601600 () Bool)

(declare-fun call!158572 () Bool)

(assert (=> b!2530872 (= e!1601600 call!158572)))

(declare-fun b!2530873 () Bool)

(declare-fun e!1601605 () Bool)

(assert (=> b!2530873 (= e!1601605 e!1601600)))

(declare-fun res!1068555 () Bool)

(assert (=> b!2530873 (=> (not res!1068555) (not e!1601600))))

(assert (=> b!2530873 (= res!1068555 call!158570)))

(declare-fun b!2530874 () Bool)

(declare-fun res!1068559 () Bool)

(assert (=> b!2530874 (=> (not res!1068559) (not e!1601604))))

(assert (=> b!2530874 (= res!1068559 call!158572)))

(declare-fun e!1601603 () Bool)

(assert (=> b!2530874 (= e!1601603 e!1601604)))

(declare-fun bm!158565 () Bool)

(declare-fun c!404297 () Bool)

(declare-fun c!404298 () Bool)

(assert (=> bm!158565 (= call!158571 (validRegex!3159 (ite c!404297 (reg!7862 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))) (ite c!404298 (regTwo!15579 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))) (regOne!15578 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340)))))))))

(declare-fun d!719880 () Bool)

(declare-fun res!1068558 () Bool)

(declare-fun e!1601606 () Bool)

(assert (=> d!719880 (=> res!1068558 e!1601606)))

(assert (=> d!719880 (= res!1068558 ((_ is ElementMatch!7533) (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(assert (=> d!719880 (= (validRegex!3159 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))) e!1601606)))

(declare-fun b!2530875 () Bool)

(declare-fun e!1601601 () Bool)

(assert (=> b!2530875 (= e!1601601 e!1601603)))

(assert (=> b!2530875 (= c!404298 ((_ is Union!7533) (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(declare-fun bm!158566 () Bool)

(assert (=> bm!158566 (= call!158572 (validRegex!3159 (ite c!404298 (regOne!15579 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))) (regTwo!15578 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))))

(declare-fun b!2530876 () Bool)

(assert (=> b!2530876 (= e!1601606 e!1601601)))

(assert (=> b!2530876 (= c!404297 ((_ is Star!7533) (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))

(declare-fun b!2530877 () Bool)

(assert (=> b!2530877 (= e!1601601 e!1601602)))

(declare-fun res!1068556 () Bool)

(assert (=> b!2530877 (= res!1068556 (not (nullable!2450 (reg!7862 (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340))))))))

(assert (=> b!2530877 (=> (not res!1068556) (not e!1601602))))

(declare-fun bm!158567 () Bool)

(assert (=> bm!158567 (= call!158570 call!158571)))

(declare-fun b!2530878 () Bool)

(declare-fun res!1068557 () Bool)

(assert (=> b!2530878 (=> res!1068557 e!1601605)))

(assert (=> b!2530878 (= res!1068557 (not ((_ is Concat!12229) (ite c!404221 (regOne!15579 r!27340) (regTwo!15578 r!27340)))))))

(assert (=> b!2530878 (= e!1601603 e!1601605)))

(assert (= (and d!719880 (not res!1068558)) b!2530876))

(assert (= (and b!2530876 c!404297) b!2530877))

(assert (= (and b!2530876 (not c!404297)) b!2530875))

(assert (= (and b!2530877 res!1068556) b!2530870))

(assert (= (and b!2530875 c!404298) b!2530874))

(assert (= (and b!2530875 (not c!404298)) b!2530878))

(assert (= (and b!2530874 res!1068559) b!2530871))

(assert (= (and b!2530878 (not res!1068557)) b!2530873))

(assert (= (and b!2530873 res!1068555) b!2530872))

(assert (= (or b!2530874 b!2530872) bm!158566))

(assert (= (or b!2530871 b!2530873) bm!158567))

(assert (= (or b!2530870 bm!158567) bm!158565))

(declare-fun m!2882125 () Bool)

(assert (=> bm!158565 m!2882125))

(declare-fun m!2882127 () Bool)

(assert (=> bm!158566 m!2882127))

(declare-fun m!2882129 () Bool)

(assert (=> b!2530877 m!2882129))

(assert (=> bm!158493 d!719880))

(declare-fun d!719882 () Bool)

(assert (=> d!719882 (= (nullable!2450 (regOne!15578 r!27340)) (nullableFct!688 (regOne!15578 r!27340)))))

(declare-fun bs!469201 () Bool)

(assert (= bs!469201 d!719882))

(declare-fun m!2882131 () Bool)

(assert (=> bs!469201 m!2882131))

(assert (=> b!2530586 d!719882))

(declare-fun d!719884 () Bool)

(declare-fun lt!901168 () Regex!7533)

(assert (=> d!719884 (validRegex!3159 lt!901168)))

(declare-fun e!1601607 () Regex!7533)

(assert (=> d!719884 (= lt!901168 e!1601607)))

(declare-fun c!404299 () Bool)

(assert (=> d!719884 (= c!404299 ((_ is Cons!29498) (t!211297 tl!4068)))))

(assert (=> d!719884 (validRegex!3159 (derivativeStep!2102 lt!901142 (h!34918 tl!4068)))))

(assert (=> d!719884 (= (derivative!228 (derivativeStep!2102 lt!901142 (h!34918 tl!4068)) (t!211297 tl!4068)) lt!901168)))

(declare-fun b!2530879 () Bool)

(assert (=> b!2530879 (= e!1601607 (derivative!228 (derivativeStep!2102 (derivativeStep!2102 lt!901142 (h!34918 tl!4068)) (h!34918 (t!211297 tl!4068))) (t!211297 (t!211297 tl!4068))))))

(declare-fun b!2530880 () Bool)

(assert (=> b!2530880 (= e!1601607 (derivativeStep!2102 lt!901142 (h!34918 tl!4068)))))

(assert (= (and d!719884 c!404299) b!2530879))

(assert (= (and d!719884 (not c!404299)) b!2530880))

(declare-fun m!2882133 () Bool)

(assert (=> d!719884 m!2882133))

(assert (=> d!719884 m!2882009))

(declare-fun m!2882135 () Bool)

(assert (=> d!719884 m!2882135))

(assert (=> b!2530879 m!2882009))

(declare-fun m!2882137 () Bool)

(assert (=> b!2530879 m!2882137))

(assert (=> b!2530879 m!2882137))

(declare-fun m!2882139 () Bool)

(assert (=> b!2530879 m!2882139))

(assert (=> b!2530519 d!719884))

(declare-fun b!2530881 () Bool)

(declare-fun c!404303 () Bool)

(assert (=> b!2530881 (= c!404303 (nullable!2450 (regOne!15578 lt!901142)))))

(declare-fun e!1601609 () Regex!7533)

(declare-fun e!1601608 () Regex!7533)

(assert (=> b!2530881 (= e!1601609 e!1601608)))

(declare-fun b!2530882 () Bool)

(declare-fun e!1601611 () Regex!7533)

(declare-fun call!158573 () Regex!7533)

(declare-fun call!158576 () Regex!7533)

(assert (=> b!2530882 (= e!1601611 (Union!7533 call!158573 call!158576))))

(declare-fun bm!158568 () Bool)

(declare-fun call!158575 () Regex!7533)

(assert (=> bm!158568 (= call!158575 call!158576)))

(declare-fun b!2530883 () Bool)

(assert (=> b!2530883 (= e!1601609 (Concat!12229 call!158575 lt!901142))))

(declare-fun b!2530884 () Bool)

(declare-fun e!1601610 () Regex!7533)

(assert (=> b!2530884 (= e!1601610 EmptyLang!7533)))

(declare-fun b!2530885 () Bool)

(declare-fun c!404301 () Bool)

(assert (=> b!2530885 (= c!404301 ((_ is Union!7533) lt!901142))))

(declare-fun e!1601612 () Regex!7533)

(assert (=> b!2530885 (= e!1601612 e!1601611)))

(declare-fun b!2530886 () Bool)

(declare-fun call!158574 () Regex!7533)

(assert (=> b!2530886 (= e!1601608 (Union!7533 (Concat!12229 call!158574 (regTwo!15578 lt!901142)) EmptyLang!7533))))

(declare-fun b!2530887 () Bool)

(assert (=> b!2530887 (= e!1601610 e!1601612)))

(declare-fun c!404300 () Bool)

(assert (=> b!2530887 (= c!404300 ((_ is ElementMatch!7533) lt!901142))))

(declare-fun d!719886 () Bool)

(declare-fun lt!901169 () Regex!7533)

(assert (=> d!719886 (validRegex!3159 lt!901169)))

(assert (=> d!719886 (= lt!901169 e!1601610)))

(declare-fun c!404304 () Bool)

(assert (=> d!719886 (= c!404304 (or ((_ is EmptyExpr!7533) lt!901142) ((_ is EmptyLang!7533) lt!901142)))))

(assert (=> d!719886 (validRegex!3159 lt!901142)))

(assert (=> d!719886 (= (derivativeStep!2102 lt!901142 (h!34918 tl!4068)) lt!901169)))

(declare-fun b!2530888 () Bool)

(assert (=> b!2530888 (= e!1601611 e!1601609)))

(declare-fun c!404302 () Bool)

(assert (=> b!2530888 (= c!404302 ((_ is Star!7533) lt!901142))))

(declare-fun bm!158569 () Bool)

(assert (=> bm!158569 (= call!158574 call!158575)))

(declare-fun b!2530889 () Bool)

(assert (=> b!2530889 (= e!1601608 (Union!7533 (Concat!12229 call!158574 (regTwo!15578 lt!901142)) call!158573))))

(declare-fun bm!158570 () Bool)

(assert (=> bm!158570 (= call!158573 (derivativeStep!2102 (ite c!404301 (regOne!15579 lt!901142) (regTwo!15578 lt!901142)) (h!34918 tl!4068)))))

(declare-fun bm!158571 () Bool)

(assert (=> bm!158571 (= call!158576 (derivativeStep!2102 (ite c!404301 (regTwo!15579 lt!901142) (ite c!404302 (reg!7862 lt!901142) (regOne!15578 lt!901142))) (h!34918 tl!4068)))))

(declare-fun b!2530890 () Bool)

(assert (=> b!2530890 (= e!1601612 (ite (= (h!34918 tl!4068) (c!404209 lt!901142)) EmptyExpr!7533 EmptyLang!7533))))

(assert (= (and d!719886 c!404304) b!2530884))

(assert (= (and d!719886 (not c!404304)) b!2530887))

(assert (= (and b!2530887 c!404300) b!2530890))

(assert (= (and b!2530887 (not c!404300)) b!2530885))

(assert (= (and b!2530885 c!404301) b!2530882))

(assert (= (and b!2530885 (not c!404301)) b!2530888))

(assert (= (and b!2530888 c!404302) b!2530883))

(assert (= (and b!2530888 (not c!404302)) b!2530881))

(assert (= (and b!2530881 c!404303) b!2530889))

(assert (= (and b!2530881 (not c!404303)) b!2530886))

(assert (= (or b!2530889 b!2530886) bm!158569))

(assert (= (or b!2530883 bm!158569) bm!158568))

(assert (= (or b!2530882 bm!158568) bm!158571))

(assert (= (or b!2530882 b!2530889) bm!158570))

(declare-fun m!2882141 () Bool)

(assert (=> b!2530881 m!2882141))

(declare-fun m!2882143 () Bool)

(assert (=> d!719886 m!2882143))

(assert (=> d!719886 m!2882007))

(declare-fun m!2882145 () Bool)

(assert (=> bm!158570 m!2882145))

(declare-fun m!2882147 () Bool)

(assert (=> bm!158571 m!2882147))

(assert (=> b!2530519 d!719886))

(declare-fun b!2530891 () Bool)

(declare-fun e!1601615 () Bool)

(declare-fun call!158578 () Bool)

(assert (=> b!2530891 (= e!1601615 call!158578)))

(declare-fun b!2530892 () Bool)

(declare-fun e!1601617 () Bool)

(declare-fun call!158577 () Bool)

(assert (=> b!2530892 (= e!1601617 call!158577)))

(declare-fun b!2530893 () Bool)

(declare-fun e!1601613 () Bool)

(declare-fun call!158579 () Bool)

(assert (=> b!2530893 (= e!1601613 call!158579)))

(declare-fun b!2530894 () Bool)

(declare-fun e!1601618 () Bool)

(assert (=> b!2530894 (= e!1601618 e!1601613)))

(declare-fun res!1068560 () Bool)

(assert (=> b!2530894 (=> (not res!1068560) (not e!1601613))))

(assert (=> b!2530894 (= res!1068560 call!158577)))

(declare-fun b!2530895 () Bool)

(declare-fun res!1068564 () Bool)

(assert (=> b!2530895 (=> (not res!1068564) (not e!1601617))))

(assert (=> b!2530895 (= res!1068564 call!158579)))

(declare-fun e!1601616 () Bool)

(assert (=> b!2530895 (= e!1601616 e!1601617)))

(declare-fun c!404306 () Bool)

(declare-fun bm!158572 () Bool)

(declare-fun c!404305 () Bool)

(assert (=> bm!158572 (= call!158578 (validRegex!3159 (ite c!404305 (reg!7862 lt!901158) (ite c!404306 (regTwo!15579 lt!901158) (regOne!15578 lt!901158)))))))

(declare-fun d!719888 () Bool)

(declare-fun res!1068563 () Bool)

(declare-fun e!1601619 () Bool)

(assert (=> d!719888 (=> res!1068563 e!1601619)))

(assert (=> d!719888 (= res!1068563 ((_ is ElementMatch!7533) lt!901158))))

(assert (=> d!719888 (= (validRegex!3159 lt!901158) e!1601619)))

(declare-fun b!2530896 () Bool)

(declare-fun e!1601614 () Bool)

(assert (=> b!2530896 (= e!1601614 e!1601616)))

(assert (=> b!2530896 (= c!404306 ((_ is Union!7533) lt!901158))))

(declare-fun bm!158573 () Bool)

(assert (=> bm!158573 (= call!158579 (validRegex!3159 (ite c!404306 (regOne!15579 lt!901158) (regTwo!15578 lt!901158))))))

(declare-fun b!2530897 () Bool)

(assert (=> b!2530897 (= e!1601619 e!1601614)))

(assert (=> b!2530897 (= c!404305 ((_ is Star!7533) lt!901158))))

(declare-fun b!2530898 () Bool)

(assert (=> b!2530898 (= e!1601614 e!1601615)))

(declare-fun res!1068561 () Bool)

(assert (=> b!2530898 (= res!1068561 (not (nullable!2450 (reg!7862 lt!901158))))))

(assert (=> b!2530898 (=> (not res!1068561) (not e!1601615))))

(declare-fun bm!158574 () Bool)

(assert (=> bm!158574 (= call!158577 call!158578)))

(declare-fun b!2530899 () Bool)

(declare-fun res!1068562 () Bool)

(assert (=> b!2530899 (=> res!1068562 e!1601618)))

(assert (=> b!2530899 (= res!1068562 (not ((_ is Concat!12229) lt!901158)))))

(assert (=> b!2530899 (= e!1601616 e!1601618)))

(assert (= (and d!719888 (not res!1068563)) b!2530897))

(assert (= (and b!2530897 c!404305) b!2530898))

(assert (= (and b!2530897 (not c!404305)) b!2530896))

(assert (= (and b!2530898 res!1068561) b!2530891))

(assert (= (and b!2530896 c!404306) b!2530895))

(assert (= (and b!2530896 (not c!404306)) b!2530899))

(assert (= (and b!2530895 res!1068564) b!2530892))

(assert (= (and b!2530899 (not res!1068562)) b!2530894))

(assert (= (and b!2530894 res!1068560) b!2530893))

(assert (= (or b!2530895 b!2530893) bm!158573))

(assert (= (or b!2530892 b!2530894) bm!158574))

(assert (= (or b!2530891 bm!158574) bm!158572))

(declare-fun m!2882149 () Bool)

(assert (=> bm!158572 m!2882149))

(declare-fun m!2882151 () Bool)

(assert (=> bm!158573 m!2882151))

(declare-fun m!2882153 () Bool)

(assert (=> b!2530898 m!2882153))

(assert (=> d!719840 d!719888))

(declare-fun b!2530900 () Bool)

(declare-fun e!1601622 () Bool)

(declare-fun call!158581 () Bool)

(assert (=> b!2530900 (= e!1601622 call!158581)))

(declare-fun b!2530901 () Bool)

(declare-fun e!1601624 () Bool)

(declare-fun call!158580 () Bool)

(assert (=> b!2530901 (= e!1601624 call!158580)))

(declare-fun b!2530902 () Bool)

(declare-fun e!1601620 () Bool)

(declare-fun call!158582 () Bool)

(assert (=> b!2530902 (= e!1601620 call!158582)))

(declare-fun b!2530903 () Bool)

(declare-fun e!1601625 () Bool)

(assert (=> b!2530903 (= e!1601625 e!1601620)))

(declare-fun res!1068565 () Bool)

(assert (=> b!2530903 (=> (not res!1068565) (not e!1601620))))

(assert (=> b!2530903 (= res!1068565 call!158580)))

(declare-fun b!2530904 () Bool)

(declare-fun res!1068569 () Bool)

(assert (=> b!2530904 (=> (not res!1068569) (not e!1601624))))

(assert (=> b!2530904 (= res!1068569 call!158582)))

(declare-fun e!1601623 () Bool)

(assert (=> b!2530904 (= e!1601623 e!1601624)))

(declare-fun c!404308 () Bool)

(declare-fun bm!158575 () Bool)

(declare-fun c!404307 () Bool)

(assert (=> bm!158575 (= call!158581 (validRegex!3159 (ite c!404307 (reg!7862 lt!901142) (ite c!404308 (regTwo!15579 lt!901142) (regOne!15578 lt!901142)))))))

(declare-fun d!719890 () Bool)

(declare-fun res!1068568 () Bool)

(declare-fun e!1601626 () Bool)

(assert (=> d!719890 (=> res!1068568 e!1601626)))

(assert (=> d!719890 (= res!1068568 ((_ is ElementMatch!7533) lt!901142))))

(assert (=> d!719890 (= (validRegex!3159 lt!901142) e!1601626)))

(declare-fun b!2530905 () Bool)

(declare-fun e!1601621 () Bool)

(assert (=> b!2530905 (= e!1601621 e!1601623)))

(assert (=> b!2530905 (= c!404308 ((_ is Union!7533) lt!901142))))

(declare-fun bm!158576 () Bool)

(assert (=> bm!158576 (= call!158582 (validRegex!3159 (ite c!404308 (regOne!15579 lt!901142) (regTwo!15578 lt!901142))))))

(declare-fun b!2530906 () Bool)

(assert (=> b!2530906 (= e!1601626 e!1601621)))

(assert (=> b!2530906 (= c!404307 ((_ is Star!7533) lt!901142))))

(declare-fun b!2530907 () Bool)

(assert (=> b!2530907 (= e!1601621 e!1601622)))

(declare-fun res!1068566 () Bool)

(assert (=> b!2530907 (= res!1068566 (not (nullable!2450 (reg!7862 lt!901142))))))

(assert (=> b!2530907 (=> (not res!1068566) (not e!1601622))))

(declare-fun bm!158577 () Bool)

(assert (=> bm!158577 (= call!158580 call!158581)))

(declare-fun b!2530908 () Bool)

(declare-fun res!1068567 () Bool)

(assert (=> b!2530908 (=> res!1068567 e!1601625)))

(assert (=> b!2530908 (= res!1068567 (not ((_ is Concat!12229) lt!901142)))))

(assert (=> b!2530908 (= e!1601623 e!1601625)))

(assert (= (and d!719890 (not res!1068568)) b!2530906))

(assert (= (and b!2530906 c!404307) b!2530907))

(assert (= (and b!2530906 (not c!404307)) b!2530905))

(assert (= (and b!2530907 res!1068566) b!2530900))

(assert (= (and b!2530905 c!404308) b!2530904))

(assert (= (and b!2530905 (not c!404308)) b!2530908))

(assert (= (and b!2530904 res!1068569) b!2530901))

(assert (= (and b!2530908 (not res!1068567)) b!2530903))

(assert (= (and b!2530903 res!1068565) b!2530902))

(assert (= (or b!2530904 b!2530902) bm!158576))

(assert (= (or b!2530901 b!2530903) bm!158577))

(assert (= (or b!2530900 bm!158577) bm!158575))

(declare-fun m!2882155 () Bool)

(assert (=> bm!158575 m!2882155))

(declare-fun m!2882157 () Bool)

(assert (=> bm!158576 m!2882157))

(declare-fun m!2882159 () Bool)

(assert (=> b!2530907 m!2882159))

(assert (=> d!719840 d!719890))

(declare-fun b!2530909 () Bool)

(declare-fun e!1601629 () Bool)

(declare-fun call!158584 () Bool)

(assert (=> b!2530909 (= e!1601629 call!158584)))

(declare-fun b!2530910 () Bool)

(declare-fun e!1601631 () Bool)

(declare-fun call!158583 () Bool)

(assert (=> b!2530910 (= e!1601631 call!158583)))

(declare-fun b!2530911 () Bool)

(declare-fun e!1601627 () Bool)

(declare-fun call!158585 () Bool)

(assert (=> b!2530911 (= e!1601627 call!158585)))

(declare-fun b!2530912 () Bool)

(declare-fun e!1601632 () Bool)

(assert (=> b!2530912 (= e!1601632 e!1601627)))

(declare-fun res!1068570 () Bool)

(assert (=> b!2530912 (=> (not res!1068570) (not e!1601627))))

(assert (=> b!2530912 (= res!1068570 call!158583)))

(declare-fun b!2530913 () Bool)

(declare-fun res!1068574 () Bool)

(assert (=> b!2530913 (=> (not res!1068574) (not e!1601631))))

(assert (=> b!2530913 (= res!1068574 call!158585)))

(declare-fun e!1601630 () Bool)

(assert (=> b!2530913 (= e!1601630 e!1601631)))

(declare-fun c!404310 () Bool)

(declare-fun bm!158578 () Bool)

(declare-fun c!404309 () Bool)

(assert (=> bm!158578 (= call!158584 (validRegex!3159 (ite c!404309 (reg!7862 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))) (ite c!404310 (regTwo!15579 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))) (regOne!15578 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340))))))))))

(declare-fun d!719892 () Bool)

(declare-fun res!1068573 () Bool)

(declare-fun e!1601633 () Bool)

(assert (=> d!719892 (=> res!1068573 e!1601633)))

(assert (=> d!719892 (= res!1068573 ((_ is ElementMatch!7533) (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))))))

(assert (=> d!719892 (= (validRegex!3159 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))) e!1601633)))

(declare-fun b!2530914 () Bool)

(declare-fun e!1601628 () Bool)

(assert (=> b!2530914 (= e!1601628 e!1601630)))

(assert (=> b!2530914 (= c!404310 ((_ is Union!7533) (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))))))

(declare-fun bm!158579 () Bool)

(assert (=> bm!158579 (= call!158585 (validRegex!3159 (ite c!404310 (regOne!15579 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))) (regTwo!15578 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))))))))

(declare-fun b!2530915 () Bool)

(assert (=> b!2530915 (= e!1601633 e!1601628)))

(assert (=> b!2530915 (= c!404309 ((_ is Star!7533) (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))))))

(declare-fun b!2530916 () Bool)

(assert (=> b!2530916 (= e!1601628 e!1601629)))

(declare-fun res!1068571 () Bool)

(assert (=> b!2530916 (= res!1068571 (not (nullable!2450 (reg!7862 (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340)))))))))

(assert (=> b!2530916 (=> (not res!1068571) (not e!1601629))))

(declare-fun bm!158580 () Bool)

(assert (=> bm!158580 (= call!158583 call!158584)))

(declare-fun b!2530917 () Bool)

(declare-fun res!1068572 () Bool)

(assert (=> b!2530917 (=> res!1068572 e!1601632)))

(assert (=> b!2530917 (= res!1068572 (not ((_ is Concat!12229) (ite c!404220 (reg!7862 r!27340) (ite c!404221 (regTwo!15579 r!27340) (regOne!15578 r!27340))))))))

(assert (=> b!2530917 (= e!1601630 e!1601632)))

(assert (= (and d!719892 (not res!1068573)) b!2530915))

(assert (= (and b!2530915 c!404309) b!2530916))

(assert (= (and b!2530915 (not c!404309)) b!2530914))

(assert (= (and b!2530916 res!1068571) b!2530909))

(assert (= (and b!2530914 c!404310) b!2530913))

(assert (= (and b!2530914 (not c!404310)) b!2530917))

(assert (= (and b!2530913 res!1068574) b!2530910))

(assert (= (and b!2530917 (not res!1068572)) b!2530912))

(assert (= (and b!2530912 res!1068570) b!2530911))

(assert (= (or b!2530913 b!2530911) bm!158579))

(assert (= (or b!2530910 b!2530912) bm!158580))

(assert (= (or b!2530909 bm!158580) bm!158578))

(declare-fun m!2882161 () Bool)

(assert (=> bm!158578 m!2882161))

(declare-fun m!2882163 () Bool)

(assert (=> bm!158579 m!2882163))

(declare-fun m!2882165 () Bool)

(assert (=> b!2530916 m!2882165))

(assert (=> bm!158492 d!719892))

(declare-fun b!2530918 () Bool)

(declare-fun c!404314 () Bool)

(assert (=> b!2530918 (= c!404314 (nullable!2450 (regOne!15578 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))))))))

(declare-fun e!1601635 () Regex!7533)

(declare-fun e!1601634 () Regex!7533)

(assert (=> b!2530918 (= e!1601635 e!1601634)))

(declare-fun b!2530919 () Bool)

(declare-fun e!1601637 () Regex!7533)

(declare-fun call!158586 () Regex!7533)

(declare-fun call!158589 () Regex!7533)

(assert (=> b!2530919 (= e!1601637 (Union!7533 call!158586 call!158589))))

(declare-fun bm!158581 () Bool)

(declare-fun call!158588 () Regex!7533)

(assert (=> bm!158581 (= call!158588 call!158589)))

(declare-fun b!2530920 () Bool)

(assert (=> b!2530920 (= e!1601635 (Concat!12229 call!158588 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))))))

(declare-fun b!2530921 () Bool)

(declare-fun e!1601636 () Regex!7533)

(assert (=> b!2530921 (= e!1601636 EmptyLang!7533)))

(declare-fun c!404312 () Bool)

(declare-fun b!2530922 () Bool)

(assert (=> b!2530922 (= c!404312 ((_ is Union!7533) (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))))))

(declare-fun e!1601638 () Regex!7533)

(assert (=> b!2530922 (= e!1601638 e!1601637)))

(declare-fun b!2530923 () Bool)

(declare-fun call!158587 () Regex!7533)

(assert (=> b!2530923 (= e!1601634 (Union!7533 (Concat!12229 call!158587 (regTwo!15578 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))))) EmptyLang!7533))))

(declare-fun b!2530924 () Bool)

(assert (=> b!2530924 (= e!1601636 e!1601638)))

(declare-fun c!404311 () Bool)

(assert (=> b!2530924 (= c!404311 ((_ is ElementMatch!7533) (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))))))

(declare-fun d!719894 () Bool)

(declare-fun lt!901170 () Regex!7533)

(assert (=> d!719894 (validRegex!3159 lt!901170)))

(assert (=> d!719894 (= lt!901170 e!1601636)))

(declare-fun c!404315 () Bool)

(assert (=> d!719894 (= c!404315 (or ((_ is EmptyExpr!7533) (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))) ((_ is EmptyLang!7533) (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))))))))

(assert (=> d!719894 (validRegex!3159 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))))))

(assert (=> d!719894 (= (derivativeStep!2102 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))) c!14016) lt!901170)))

(declare-fun b!2530925 () Bool)

(assert (=> b!2530925 (= e!1601637 e!1601635)))

(declare-fun c!404313 () Bool)

(assert (=> b!2530925 (= c!404313 ((_ is Star!7533) (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))))))

(declare-fun bm!158582 () Bool)

(assert (=> bm!158582 (= call!158587 call!158588)))

(declare-fun b!2530926 () Bool)

(assert (=> b!2530926 (= e!1601634 (Union!7533 (Concat!12229 call!158587 (regTwo!15578 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))))) call!158586))))

(declare-fun bm!158583 () Bool)

(assert (=> bm!158583 (= call!158586 (derivativeStep!2102 (ite c!404312 (regOne!15579 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))) (regTwo!15578 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))))) c!14016))))

(declare-fun bm!158584 () Bool)

(assert (=> bm!158584 (= call!158589 (derivativeStep!2102 (ite c!404312 (regTwo!15579 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))) (ite c!404313 (reg!7862 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))) (regOne!15578 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340)))))) c!14016))))

(declare-fun b!2530927 () Bool)

(assert (=> b!2530927 (= e!1601638 (ite (= c!14016 (c!404209 (ite c!404254 (regTwo!15579 r!27340) (ite c!404255 (reg!7862 r!27340) (regOne!15578 r!27340))))) EmptyExpr!7533 EmptyLang!7533))))

(assert (= (and d!719894 c!404315) b!2530921))

(assert (= (and d!719894 (not c!404315)) b!2530924))

(assert (= (and b!2530924 c!404311) b!2530927))

(assert (= (and b!2530924 (not c!404311)) b!2530922))

(assert (= (and b!2530922 c!404312) b!2530919))

(assert (= (and b!2530922 (not c!404312)) b!2530925))

(assert (= (and b!2530925 c!404313) b!2530920))

(assert (= (and b!2530925 (not c!404313)) b!2530918))

(assert (= (and b!2530918 c!404314) b!2530926))

(assert (= (and b!2530918 (not c!404314)) b!2530923))

(assert (= (or b!2530926 b!2530923) bm!158582))

(assert (= (or b!2530920 bm!158582) bm!158581))

(assert (= (or b!2530919 bm!158581) bm!158584))

(assert (= (or b!2530919 b!2530926) bm!158583))

(declare-fun m!2882167 () Bool)

(assert (=> b!2530918 m!2882167))

(declare-fun m!2882169 () Bool)

(assert (=> d!719894 m!2882169))

(declare-fun m!2882171 () Bool)

(assert (=> d!719894 m!2882171))

(declare-fun m!2882173 () Bool)

(assert (=> bm!158583 m!2882173))

(declare-fun m!2882175 () Bool)

(assert (=> bm!158584 m!2882175))

(assert (=> bm!158518 d!719894))

(declare-fun b!2530931 () Bool)

(declare-fun e!1601639 () Bool)

(declare-fun tp!808069 () Bool)

(declare-fun tp!808072 () Bool)

(assert (=> b!2530931 (= e!1601639 (and tp!808069 tp!808072))))

(assert (=> b!2530613 (= tp!807920 e!1601639)))

(declare-fun b!2530930 () Bool)

(declare-fun tp!808070 () Bool)

(assert (=> b!2530930 (= e!1601639 tp!808070)))

(declare-fun b!2530928 () Bool)

(assert (=> b!2530928 (= e!1601639 tp_is_empty!12921)))

(declare-fun b!2530929 () Bool)

(declare-fun tp!808071 () Bool)

(declare-fun tp!808073 () Bool)

(assert (=> b!2530929 (= e!1601639 (and tp!808071 tp!808073))))

(assert (= (and b!2530613 ((_ is ElementMatch!7533) (regOne!15579 (regOne!15578 r!27340)))) b!2530928))

(assert (= (and b!2530613 ((_ is Concat!12229) (regOne!15579 (regOne!15578 r!27340)))) b!2530929))

(assert (= (and b!2530613 ((_ is Star!7533) (regOne!15579 (regOne!15578 r!27340)))) b!2530930))

(assert (= (and b!2530613 ((_ is Union!7533) (regOne!15579 (regOne!15578 r!27340)))) b!2530931))

(declare-fun b!2530935 () Bool)

(declare-fun e!1601640 () Bool)

(declare-fun tp!808074 () Bool)

(declare-fun tp!808077 () Bool)

(assert (=> b!2530935 (= e!1601640 (and tp!808074 tp!808077))))

(assert (=> b!2530613 (= tp!807923 e!1601640)))

(declare-fun b!2530934 () Bool)

(declare-fun tp!808075 () Bool)

(assert (=> b!2530934 (= e!1601640 tp!808075)))

(declare-fun b!2530932 () Bool)

(assert (=> b!2530932 (= e!1601640 tp_is_empty!12921)))

(declare-fun b!2530933 () Bool)

(declare-fun tp!808076 () Bool)

(declare-fun tp!808078 () Bool)

(assert (=> b!2530933 (= e!1601640 (and tp!808076 tp!808078))))

(assert (= (and b!2530613 ((_ is ElementMatch!7533) (regTwo!15579 (regOne!15578 r!27340)))) b!2530932))

(assert (= (and b!2530613 ((_ is Concat!12229) (regTwo!15579 (regOne!15578 r!27340)))) b!2530933))

(assert (= (and b!2530613 ((_ is Star!7533) (regTwo!15579 (regOne!15578 r!27340)))) b!2530934))

(assert (= (and b!2530613 ((_ is Union!7533) (regTwo!15579 (regOne!15578 r!27340)))) b!2530935))

(declare-fun b!2530939 () Bool)

(declare-fun e!1601641 () Bool)

(declare-fun tp!808079 () Bool)

(declare-fun tp!808082 () Bool)

(assert (=> b!2530939 (= e!1601641 (and tp!808079 tp!808082))))

(assert (=> b!2530608 (= tp!807916 e!1601641)))

(declare-fun b!2530938 () Bool)

(declare-fun tp!808080 () Bool)

(assert (=> b!2530938 (= e!1601641 tp!808080)))

(declare-fun b!2530936 () Bool)

(assert (=> b!2530936 (= e!1601641 tp_is_empty!12921)))

(declare-fun b!2530937 () Bool)

(declare-fun tp!808081 () Bool)

(declare-fun tp!808083 () Bool)

(assert (=> b!2530937 (= e!1601641 (and tp!808081 tp!808083))))

(assert (= (and b!2530608 ((_ is ElementMatch!7533) (reg!7862 (reg!7862 r!27340)))) b!2530936))

(assert (= (and b!2530608 ((_ is Concat!12229) (reg!7862 (reg!7862 r!27340)))) b!2530937))

(assert (= (and b!2530608 ((_ is Star!7533) (reg!7862 (reg!7862 r!27340)))) b!2530938))

(assert (= (and b!2530608 ((_ is Union!7533) (reg!7862 (reg!7862 r!27340)))) b!2530939))

(declare-fun b!2530943 () Bool)

(declare-fun e!1601642 () Bool)

(declare-fun tp!808084 () Bool)

(declare-fun tp!808087 () Bool)

(assert (=> b!2530943 (= e!1601642 (and tp!808084 tp!808087))))

(assert (=> b!2530617 (= tp!807925 e!1601642)))

(declare-fun b!2530942 () Bool)

(declare-fun tp!808085 () Bool)

(assert (=> b!2530942 (= e!1601642 tp!808085)))

(declare-fun b!2530940 () Bool)

(assert (=> b!2530940 (= e!1601642 tp_is_empty!12921)))

(declare-fun b!2530941 () Bool)

(declare-fun tp!808086 () Bool)

(declare-fun tp!808088 () Bool)

(assert (=> b!2530941 (= e!1601642 (and tp!808086 tp!808088))))

(assert (= (and b!2530617 ((_ is ElementMatch!7533) (regOne!15579 (regTwo!15578 r!27340)))) b!2530940))

(assert (= (and b!2530617 ((_ is Concat!12229) (regOne!15579 (regTwo!15578 r!27340)))) b!2530941))

(assert (= (and b!2530617 ((_ is Star!7533) (regOne!15579 (regTwo!15578 r!27340)))) b!2530942))

(assert (= (and b!2530617 ((_ is Union!7533) (regOne!15579 (regTwo!15578 r!27340)))) b!2530943))

(declare-fun b!2530947 () Bool)

(declare-fun e!1601643 () Bool)

(declare-fun tp!808089 () Bool)

(declare-fun tp!808092 () Bool)

(assert (=> b!2530947 (= e!1601643 (and tp!808089 tp!808092))))

(assert (=> b!2530617 (= tp!807928 e!1601643)))

(declare-fun b!2530946 () Bool)

(declare-fun tp!808090 () Bool)

(assert (=> b!2530946 (= e!1601643 tp!808090)))

(declare-fun b!2530944 () Bool)

(assert (=> b!2530944 (= e!1601643 tp_is_empty!12921)))

(declare-fun b!2530945 () Bool)

(declare-fun tp!808091 () Bool)

(declare-fun tp!808093 () Bool)

(assert (=> b!2530945 (= e!1601643 (and tp!808091 tp!808093))))

(assert (= (and b!2530617 ((_ is ElementMatch!7533) (regTwo!15579 (regTwo!15578 r!27340)))) b!2530944))

(assert (= (and b!2530617 ((_ is Concat!12229) (regTwo!15579 (regTwo!15578 r!27340)))) b!2530945))

(assert (= (and b!2530617 ((_ is Star!7533) (regTwo!15579 (regTwo!15578 r!27340)))) b!2530946))

(assert (= (and b!2530617 ((_ is Union!7533) (regTwo!15579 (regTwo!15578 r!27340)))) b!2530947))

(declare-fun b!2530951 () Bool)

(declare-fun e!1601644 () Bool)

(declare-fun tp!808094 () Bool)

(declare-fun tp!808097 () Bool)

(assert (=> b!2530951 (= e!1601644 (and tp!808094 tp!808097))))

(assert (=> b!2530612 (= tp!807921 e!1601644)))

(declare-fun b!2530950 () Bool)

(declare-fun tp!808095 () Bool)

(assert (=> b!2530950 (= e!1601644 tp!808095)))

(declare-fun b!2530948 () Bool)

(assert (=> b!2530948 (= e!1601644 tp_is_empty!12921)))

(declare-fun b!2530949 () Bool)

(declare-fun tp!808096 () Bool)

(declare-fun tp!808098 () Bool)

(assert (=> b!2530949 (= e!1601644 (and tp!808096 tp!808098))))

(assert (= (and b!2530612 ((_ is ElementMatch!7533) (reg!7862 (regOne!15578 r!27340)))) b!2530948))

(assert (= (and b!2530612 ((_ is Concat!12229) (reg!7862 (regOne!15578 r!27340)))) b!2530949))

(assert (= (and b!2530612 ((_ is Star!7533) (reg!7862 (regOne!15578 r!27340)))) b!2530950))

(assert (= (and b!2530612 ((_ is Union!7533) (reg!7862 (regOne!15578 r!27340)))) b!2530951))

(declare-fun b!2530955 () Bool)

(declare-fun e!1601645 () Bool)

(declare-fun tp!808099 () Bool)

(declare-fun tp!808102 () Bool)

(assert (=> b!2530955 (= e!1601645 (and tp!808099 tp!808102))))

(assert (=> b!2530609 (= tp!807915 e!1601645)))

(declare-fun b!2530954 () Bool)

(declare-fun tp!808100 () Bool)

(assert (=> b!2530954 (= e!1601645 tp!808100)))

(declare-fun b!2530952 () Bool)

(assert (=> b!2530952 (= e!1601645 tp_is_empty!12921)))

(declare-fun b!2530953 () Bool)

(declare-fun tp!808101 () Bool)

(declare-fun tp!808103 () Bool)

(assert (=> b!2530953 (= e!1601645 (and tp!808101 tp!808103))))

(assert (= (and b!2530609 ((_ is ElementMatch!7533) (regOne!15579 (reg!7862 r!27340)))) b!2530952))

(assert (= (and b!2530609 ((_ is Concat!12229) (regOne!15579 (reg!7862 r!27340)))) b!2530953))

(assert (= (and b!2530609 ((_ is Star!7533) (regOne!15579 (reg!7862 r!27340)))) b!2530954))

(assert (= (and b!2530609 ((_ is Union!7533) (regOne!15579 (reg!7862 r!27340)))) b!2530955))

(declare-fun b!2530959 () Bool)

(declare-fun e!1601646 () Bool)

(declare-fun tp!808104 () Bool)

(declare-fun tp!808107 () Bool)

(assert (=> b!2530959 (= e!1601646 (and tp!808104 tp!808107))))

(assert (=> b!2530609 (= tp!807918 e!1601646)))

(declare-fun b!2530958 () Bool)

(declare-fun tp!808105 () Bool)

(assert (=> b!2530958 (= e!1601646 tp!808105)))

(declare-fun b!2530956 () Bool)

(assert (=> b!2530956 (= e!1601646 tp_is_empty!12921)))

(declare-fun b!2530957 () Bool)

(declare-fun tp!808106 () Bool)

(declare-fun tp!808108 () Bool)

(assert (=> b!2530957 (= e!1601646 (and tp!808106 tp!808108))))

(assert (= (and b!2530609 ((_ is ElementMatch!7533) (regTwo!15579 (reg!7862 r!27340)))) b!2530956))

(assert (= (and b!2530609 ((_ is Concat!12229) (regTwo!15579 (reg!7862 r!27340)))) b!2530957))

(assert (= (and b!2530609 ((_ is Star!7533) (regTwo!15579 (reg!7862 r!27340)))) b!2530958))

(assert (= (and b!2530609 ((_ is Union!7533) (regTwo!15579 (reg!7862 r!27340)))) b!2530959))

(declare-fun b!2530963 () Bool)

(declare-fun e!1601647 () Bool)

(declare-fun tp!808109 () Bool)

(declare-fun tp!808112 () Bool)

(assert (=> b!2530963 (= e!1601647 (and tp!808109 tp!808112))))

(assert (=> b!2530615 (= tp!807927 e!1601647)))

(declare-fun b!2530962 () Bool)

(declare-fun tp!808110 () Bool)

(assert (=> b!2530962 (= e!1601647 tp!808110)))

(declare-fun b!2530960 () Bool)

(assert (=> b!2530960 (= e!1601647 tp_is_empty!12921)))

(declare-fun b!2530961 () Bool)

(declare-fun tp!808111 () Bool)

(declare-fun tp!808113 () Bool)

(assert (=> b!2530961 (= e!1601647 (and tp!808111 tp!808113))))

(assert (= (and b!2530615 ((_ is ElementMatch!7533) (regOne!15578 (regTwo!15578 r!27340)))) b!2530960))

(assert (= (and b!2530615 ((_ is Concat!12229) (regOne!15578 (regTwo!15578 r!27340)))) b!2530961))

(assert (= (and b!2530615 ((_ is Star!7533) (regOne!15578 (regTwo!15578 r!27340)))) b!2530962))

(assert (= (and b!2530615 ((_ is Union!7533) (regOne!15578 (regTwo!15578 r!27340)))) b!2530963))

(declare-fun b!2530967 () Bool)

(declare-fun e!1601648 () Bool)

(declare-fun tp!808114 () Bool)

(declare-fun tp!808117 () Bool)

(assert (=> b!2530967 (= e!1601648 (and tp!808114 tp!808117))))

(assert (=> b!2530615 (= tp!807929 e!1601648)))

(declare-fun b!2530966 () Bool)

(declare-fun tp!808115 () Bool)

(assert (=> b!2530966 (= e!1601648 tp!808115)))

(declare-fun b!2530964 () Bool)

(assert (=> b!2530964 (= e!1601648 tp_is_empty!12921)))

(declare-fun b!2530965 () Bool)

(declare-fun tp!808116 () Bool)

(declare-fun tp!808118 () Bool)

(assert (=> b!2530965 (= e!1601648 (and tp!808116 tp!808118))))

(assert (= (and b!2530615 ((_ is ElementMatch!7533) (regTwo!15578 (regTwo!15578 r!27340)))) b!2530964))

(assert (= (and b!2530615 ((_ is Concat!12229) (regTwo!15578 (regTwo!15578 r!27340)))) b!2530965))

(assert (= (and b!2530615 ((_ is Star!7533) (regTwo!15578 (regTwo!15578 r!27340)))) b!2530966))

(assert (= (and b!2530615 ((_ is Union!7533) (regTwo!15578 (regTwo!15578 r!27340)))) b!2530967))

(declare-fun b!2530971 () Bool)

(declare-fun e!1601649 () Bool)

(declare-fun tp!808119 () Bool)

(declare-fun tp!808122 () Bool)

(assert (=> b!2530971 (= e!1601649 (and tp!808119 tp!808122))))

(assert (=> b!2530624 (= tp!807936 e!1601649)))

(declare-fun b!2530970 () Bool)

(declare-fun tp!808120 () Bool)

(assert (=> b!2530970 (= e!1601649 tp!808120)))

(declare-fun b!2530968 () Bool)

(assert (=> b!2530968 (= e!1601649 tp_is_empty!12921)))

(declare-fun b!2530969 () Bool)

(declare-fun tp!808121 () Bool)

(declare-fun tp!808123 () Bool)

(assert (=> b!2530969 (= e!1601649 (and tp!808121 tp!808123))))

(assert (= (and b!2530624 ((_ is ElementMatch!7533) (reg!7862 (regTwo!15579 r!27340)))) b!2530968))

(assert (= (and b!2530624 ((_ is Concat!12229) (reg!7862 (regTwo!15579 r!27340)))) b!2530969))

(assert (= (and b!2530624 ((_ is Star!7533) (reg!7862 (regTwo!15579 r!27340)))) b!2530970))

(assert (= (and b!2530624 ((_ is Union!7533) (reg!7862 (regTwo!15579 r!27340)))) b!2530971))

(declare-fun b!2530975 () Bool)

(declare-fun e!1601650 () Bool)

(declare-fun tp!808124 () Bool)

(declare-fun tp!808127 () Bool)

(assert (=> b!2530975 (= e!1601650 (and tp!808124 tp!808127))))

(assert (=> b!2530619 (= tp!807932 e!1601650)))

(declare-fun b!2530974 () Bool)

(declare-fun tp!808125 () Bool)

(assert (=> b!2530974 (= e!1601650 tp!808125)))

(declare-fun b!2530972 () Bool)

(assert (=> b!2530972 (= e!1601650 tp_is_empty!12921)))

(declare-fun b!2530973 () Bool)

(declare-fun tp!808126 () Bool)

(declare-fun tp!808128 () Bool)

(assert (=> b!2530973 (= e!1601650 (and tp!808126 tp!808128))))

(assert (= (and b!2530619 ((_ is ElementMatch!7533) (regOne!15578 (regOne!15579 r!27340)))) b!2530972))

(assert (= (and b!2530619 ((_ is Concat!12229) (regOne!15578 (regOne!15579 r!27340)))) b!2530973))

(assert (= (and b!2530619 ((_ is Star!7533) (regOne!15578 (regOne!15579 r!27340)))) b!2530974))

(assert (= (and b!2530619 ((_ is Union!7533) (regOne!15578 (regOne!15579 r!27340)))) b!2530975))

(declare-fun b!2530979 () Bool)

(declare-fun e!1601651 () Bool)

(declare-fun tp!808129 () Bool)

(declare-fun tp!808132 () Bool)

(assert (=> b!2530979 (= e!1601651 (and tp!808129 tp!808132))))

(assert (=> b!2530619 (= tp!807934 e!1601651)))

(declare-fun b!2530978 () Bool)

(declare-fun tp!808130 () Bool)

(assert (=> b!2530978 (= e!1601651 tp!808130)))

(declare-fun b!2530976 () Bool)

(assert (=> b!2530976 (= e!1601651 tp_is_empty!12921)))

(declare-fun b!2530977 () Bool)

(declare-fun tp!808131 () Bool)

(declare-fun tp!808133 () Bool)

(assert (=> b!2530977 (= e!1601651 (and tp!808131 tp!808133))))

(assert (= (and b!2530619 ((_ is ElementMatch!7533) (regTwo!15578 (regOne!15579 r!27340)))) b!2530976))

(assert (= (and b!2530619 ((_ is Concat!12229) (regTwo!15578 (regOne!15579 r!27340)))) b!2530977))

(assert (= (and b!2530619 ((_ is Star!7533) (regTwo!15578 (regOne!15579 r!27340)))) b!2530978))

(assert (= (and b!2530619 ((_ is Union!7533) (regTwo!15578 (regOne!15579 r!27340)))) b!2530979))

(declare-fun b!2530983 () Bool)

(declare-fun e!1601652 () Bool)

(declare-fun tp!808134 () Bool)

(declare-fun tp!808137 () Bool)

(assert (=> b!2530983 (= e!1601652 (and tp!808134 tp!808137))))

(assert (=> b!2530607 (= tp!807917 e!1601652)))

(declare-fun b!2530982 () Bool)

(declare-fun tp!808135 () Bool)

(assert (=> b!2530982 (= e!1601652 tp!808135)))

(declare-fun b!2530980 () Bool)

(assert (=> b!2530980 (= e!1601652 tp_is_empty!12921)))

(declare-fun b!2530981 () Bool)

(declare-fun tp!808136 () Bool)

(declare-fun tp!808138 () Bool)

(assert (=> b!2530981 (= e!1601652 (and tp!808136 tp!808138))))

(assert (= (and b!2530607 ((_ is ElementMatch!7533) (regOne!15578 (reg!7862 r!27340)))) b!2530980))

(assert (= (and b!2530607 ((_ is Concat!12229) (regOne!15578 (reg!7862 r!27340)))) b!2530981))

(assert (= (and b!2530607 ((_ is Star!7533) (regOne!15578 (reg!7862 r!27340)))) b!2530982))

(assert (= (and b!2530607 ((_ is Union!7533) (regOne!15578 (reg!7862 r!27340)))) b!2530983))

(declare-fun b!2530987 () Bool)

(declare-fun e!1601653 () Bool)

(declare-fun tp!808139 () Bool)

(declare-fun tp!808142 () Bool)

(assert (=> b!2530987 (= e!1601653 (and tp!808139 tp!808142))))

(assert (=> b!2530607 (= tp!807919 e!1601653)))

(declare-fun b!2530986 () Bool)

(declare-fun tp!808140 () Bool)

(assert (=> b!2530986 (= e!1601653 tp!808140)))

(declare-fun b!2530984 () Bool)

(assert (=> b!2530984 (= e!1601653 tp_is_empty!12921)))

(declare-fun b!2530985 () Bool)

(declare-fun tp!808141 () Bool)

(declare-fun tp!808143 () Bool)

(assert (=> b!2530985 (= e!1601653 (and tp!808141 tp!808143))))

(assert (= (and b!2530607 ((_ is ElementMatch!7533) (regTwo!15578 (reg!7862 r!27340)))) b!2530984))

(assert (= (and b!2530607 ((_ is Concat!12229) (regTwo!15578 (reg!7862 r!27340)))) b!2530985))

(assert (= (and b!2530607 ((_ is Star!7533) (regTwo!15578 (reg!7862 r!27340)))) b!2530986))

(assert (= (and b!2530607 ((_ is Union!7533) (regTwo!15578 (reg!7862 r!27340)))) b!2530987))

(declare-fun b!2530991 () Bool)

(declare-fun e!1601654 () Bool)

(declare-fun tp!808144 () Bool)

(declare-fun tp!808147 () Bool)

(assert (=> b!2530991 (= e!1601654 (and tp!808144 tp!808147))))

(assert (=> b!2530621 (= tp!807930 e!1601654)))

(declare-fun b!2530990 () Bool)

(declare-fun tp!808145 () Bool)

(assert (=> b!2530990 (= e!1601654 tp!808145)))

(declare-fun b!2530988 () Bool)

(assert (=> b!2530988 (= e!1601654 tp_is_empty!12921)))

(declare-fun b!2530989 () Bool)

(declare-fun tp!808146 () Bool)

(declare-fun tp!808148 () Bool)

(assert (=> b!2530989 (= e!1601654 (and tp!808146 tp!808148))))

(assert (= (and b!2530621 ((_ is ElementMatch!7533) (regOne!15579 (regOne!15579 r!27340)))) b!2530988))

(assert (= (and b!2530621 ((_ is Concat!12229) (regOne!15579 (regOne!15579 r!27340)))) b!2530989))

(assert (= (and b!2530621 ((_ is Star!7533) (regOne!15579 (regOne!15579 r!27340)))) b!2530990))

(assert (= (and b!2530621 ((_ is Union!7533) (regOne!15579 (regOne!15579 r!27340)))) b!2530991))

(declare-fun b!2530995 () Bool)

(declare-fun e!1601655 () Bool)

(declare-fun tp!808149 () Bool)

(declare-fun tp!808152 () Bool)

(assert (=> b!2530995 (= e!1601655 (and tp!808149 tp!808152))))

(assert (=> b!2530621 (= tp!807933 e!1601655)))

(declare-fun b!2530994 () Bool)

(declare-fun tp!808150 () Bool)

(assert (=> b!2530994 (= e!1601655 tp!808150)))

(declare-fun b!2530992 () Bool)

(assert (=> b!2530992 (= e!1601655 tp_is_empty!12921)))

(declare-fun b!2530993 () Bool)

(declare-fun tp!808151 () Bool)

(declare-fun tp!808153 () Bool)

(assert (=> b!2530993 (= e!1601655 (and tp!808151 tp!808153))))

(assert (= (and b!2530621 ((_ is ElementMatch!7533) (regTwo!15579 (regOne!15579 r!27340)))) b!2530992))

(assert (= (and b!2530621 ((_ is Concat!12229) (regTwo!15579 (regOne!15579 r!27340)))) b!2530993))

(assert (= (and b!2530621 ((_ is Star!7533) (regTwo!15579 (regOne!15579 r!27340)))) b!2530994))

(assert (= (and b!2530621 ((_ is Union!7533) (regTwo!15579 (regOne!15579 r!27340)))) b!2530995))

(declare-fun b!2530999 () Bool)

(declare-fun e!1601656 () Bool)

(declare-fun tp!808154 () Bool)

(declare-fun tp!808157 () Bool)

(assert (=> b!2530999 (= e!1601656 (and tp!808154 tp!808157))))

(assert (=> b!2530616 (= tp!807926 e!1601656)))

(declare-fun b!2530998 () Bool)

(declare-fun tp!808155 () Bool)

(assert (=> b!2530998 (= e!1601656 tp!808155)))

(declare-fun b!2530996 () Bool)

(assert (=> b!2530996 (= e!1601656 tp_is_empty!12921)))

(declare-fun b!2530997 () Bool)

(declare-fun tp!808156 () Bool)

(declare-fun tp!808158 () Bool)

(assert (=> b!2530997 (= e!1601656 (and tp!808156 tp!808158))))

(assert (= (and b!2530616 ((_ is ElementMatch!7533) (reg!7862 (regTwo!15578 r!27340)))) b!2530996))

(assert (= (and b!2530616 ((_ is Concat!12229) (reg!7862 (regTwo!15578 r!27340)))) b!2530997))

(assert (= (and b!2530616 ((_ is Star!7533) (reg!7862 (regTwo!15578 r!27340)))) b!2530998))

(assert (= (and b!2530616 ((_ is Union!7533) (reg!7862 (regTwo!15578 r!27340)))) b!2530999))

(declare-fun b!2531003 () Bool)

(declare-fun e!1601657 () Bool)

(declare-fun tp!808159 () Bool)

(declare-fun tp!808162 () Bool)

(assert (=> b!2531003 (= e!1601657 (and tp!808159 tp!808162))))

(assert (=> b!2530611 (= tp!807922 e!1601657)))

(declare-fun b!2531002 () Bool)

(declare-fun tp!808160 () Bool)

(assert (=> b!2531002 (= e!1601657 tp!808160)))

(declare-fun b!2531000 () Bool)

(assert (=> b!2531000 (= e!1601657 tp_is_empty!12921)))

(declare-fun b!2531001 () Bool)

(declare-fun tp!808161 () Bool)

(declare-fun tp!808163 () Bool)

(assert (=> b!2531001 (= e!1601657 (and tp!808161 tp!808163))))

(assert (= (and b!2530611 ((_ is ElementMatch!7533) (regOne!15578 (regOne!15578 r!27340)))) b!2531000))

(assert (= (and b!2530611 ((_ is Concat!12229) (regOne!15578 (regOne!15578 r!27340)))) b!2531001))

(assert (= (and b!2530611 ((_ is Star!7533) (regOne!15578 (regOne!15578 r!27340)))) b!2531002))

(assert (= (and b!2530611 ((_ is Union!7533) (regOne!15578 (regOne!15578 r!27340)))) b!2531003))

(declare-fun b!2531007 () Bool)

(declare-fun e!1601658 () Bool)

(declare-fun tp!808164 () Bool)

(declare-fun tp!808167 () Bool)

(assert (=> b!2531007 (= e!1601658 (and tp!808164 tp!808167))))

(assert (=> b!2530611 (= tp!807924 e!1601658)))

(declare-fun b!2531006 () Bool)

(declare-fun tp!808165 () Bool)

(assert (=> b!2531006 (= e!1601658 tp!808165)))

(declare-fun b!2531004 () Bool)

(assert (=> b!2531004 (= e!1601658 tp_is_empty!12921)))

(declare-fun b!2531005 () Bool)

(declare-fun tp!808166 () Bool)

(declare-fun tp!808168 () Bool)

(assert (=> b!2531005 (= e!1601658 (and tp!808166 tp!808168))))

(assert (= (and b!2530611 ((_ is ElementMatch!7533) (regTwo!15578 (regOne!15578 r!27340)))) b!2531004))

(assert (= (and b!2530611 ((_ is Concat!12229) (regTwo!15578 (regOne!15578 r!27340)))) b!2531005))

(assert (= (and b!2530611 ((_ is Star!7533) (regTwo!15578 (regOne!15578 r!27340)))) b!2531006))

(assert (= (and b!2530611 ((_ is Union!7533) (regTwo!15578 (regOne!15578 r!27340)))) b!2531007))

(declare-fun b!2531011 () Bool)

(declare-fun e!1601659 () Bool)

(declare-fun tp!808169 () Bool)

(declare-fun tp!808172 () Bool)

(assert (=> b!2531011 (= e!1601659 (and tp!808169 tp!808172))))

(assert (=> b!2530625 (= tp!807935 e!1601659)))

(declare-fun b!2531010 () Bool)

(declare-fun tp!808170 () Bool)

(assert (=> b!2531010 (= e!1601659 tp!808170)))

(declare-fun b!2531008 () Bool)

(assert (=> b!2531008 (= e!1601659 tp_is_empty!12921)))

(declare-fun b!2531009 () Bool)

(declare-fun tp!808171 () Bool)

(declare-fun tp!808173 () Bool)

(assert (=> b!2531009 (= e!1601659 (and tp!808171 tp!808173))))

(assert (= (and b!2530625 ((_ is ElementMatch!7533) (regOne!15579 (regTwo!15579 r!27340)))) b!2531008))

(assert (= (and b!2530625 ((_ is Concat!12229) (regOne!15579 (regTwo!15579 r!27340)))) b!2531009))

(assert (= (and b!2530625 ((_ is Star!7533) (regOne!15579 (regTwo!15579 r!27340)))) b!2531010))

(assert (= (and b!2530625 ((_ is Union!7533) (regOne!15579 (regTwo!15579 r!27340)))) b!2531011))

(declare-fun b!2531015 () Bool)

(declare-fun e!1601660 () Bool)

(declare-fun tp!808174 () Bool)

(declare-fun tp!808177 () Bool)

(assert (=> b!2531015 (= e!1601660 (and tp!808174 tp!808177))))

(assert (=> b!2530625 (= tp!807938 e!1601660)))

(declare-fun b!2531014 () Bool)

(declare-fun tp!808175 () Bool)

(assert (=> b!2531014 (= e!1601660 tp!808175)))

(declare-fun b!2531012 () Bool)

(assert (=> b!2531012 (= e!1601660 tp_is_empty!12921)))

(declare-fun b!2531013 () Bool)

(declare-fun tp!808176 () Bool)

(declare-fun tp!808178 () Bool)

(assert (=> b!2531013 (= e!1601660 (and tp!808176 tp!808178))))

(assert (= (and b!2530625 ((_ is ElementMatch!7533) (regTwo!15579 (regTwo!15579 r!27340)))) b!2531012))

(assert (= (and b!2530625 ((_ is Concat!12229) (regTwo!15579 (regTwo!15579 r!27340)))) b!2531013))

(assert (= (and b!2530625 ((_ is Star!7533) (regTwo!15579 (regTwo!15579 r!27340)))) b!2531014))

(assert (= (and b!2530625 ((_ is Union!7533) (regTwo!15579 (regTwo!15579 r!27340)))) b!2531015))

(declare-fun b!2531019 () Bool)

(declare-fun e!1601661 () Bool)

(declare-fun tp!808179 () Bool)

(declare-fun tp!808182 () Bool)

(assert (=> b!2531019 (= e!1601661 (and tp!808179 tp!808182))))

(assert (=> b!2530620 (= tp!807931 e!1601661)))

(declare-fun b!2531018 () Bool)

(declare-fun tp!808180 () Bool)

(assert (=> b!2531018 (= e!1601661 tp!808180)))

(declare-fun b!2531016 () Bool)

(assert (=> b!2531016 (= e!1601661 tp_is_empty!12921)))

(declare-fun b!2531017 () Bool)

(declare-fun tp!808181 () Bool)

(declare-fun tp!808183 () Bool)

(assert (=> b!2531017 (= e!1601661 (and tp!808181 tp!808183))))

(assert (= (and b!2530620 ((_ is ElementMatch!7533) (reg!7862 (regOne!15579 r!27340)))) b!2531016))

(assert (= (and b!2530620 ((_ is Concat!12229) (reg!7862 (regOne!15579 r!27340)))) b!2531017))

(assert (= (and b!2530620 ((_ is Star!7533) (reg!7862 (regOne!15579 r!27340)))) b!2531018))

(assert (= (and b!2530620 ((_ is Union!7533) (reg!7862 (regOne!15579 r!27340)))) b!2531019))

(declare-fun b!2531023 () Bool)

(declare-fun e!1601662 () Bool)

(declare-fun tp!808184 () Bool)

(declare-fun tp!808187 () Bool)

(assert (=> b!2531023 (= e!1601662 (and tp!808184 tp!808187))))

(assert (=> b!2530623 (= tp!807937 e!1601662)))

(declare-fun b!2531022 () Bool)

(declare-fun tp!808185 () Bool)

(assert (=> b!2531022 (= e!1601662 tp!808185)))

(declare-fun b!2531020 () Bool)

(assert (=> b!2531020 (= e!1601662 tp_is_empty!12921)))

(declare-fun b!2531021 () Bool)

(declare-fun tp!808186 () Bool)

(declare-fun tp!808188 () Bool)

(assert (=> b!2531021 (= e!1601662 (and tp!808186 tp!808188))))

(assert (= (and b!2530623 ((_ is ElementMatch!7533) (regOne!15578 (regTwo!15579 r!27340)))) b!2531020))

(assert (= (and b!2530623 ((_ is Concat!12229) (regOne!15578 (regTwo!15579 r!27340)))) b!2531021))

(assert (= (and b!2530623 ((_ is Star!7533) (regOne!15578 (regTwo!15579 r!27340)))) b!2531022))

(assert (= (and b!2530623 ((_ is Union!7533) (regOne!15578 (regTwo!15579 r!27340)))) b!2531023))

(declare-fun b!2531027 () Bool)

(declare-fun e!1601663 () Bool)

(declare-fun tp!808189 () Bool)

(declare-fun tp!808192 () Bool)

(assert (=> b!2531027 (= e!1601663 (and tp!808189 tp!808192))))

(assert (=> b!2530623 (= tp!807939 e!1601663)))

(declare-fun b!2531026 () Bool)

(declare-fun tp!808190 () Bool)

(assert (=> b!2531026 (= e!1601663 tp!808190)))

(declare-fun b!2531024 () Bool)

(assert (=> b!2531024 (= e!1601663 tp_is_empty!12921)))

(declare-fun b!2531025 () Bool)

(declare-fun tp!808191 () Bool)

(declare-fun tp!808193 () Bool)

(assert (=> b!2531025 (= e!1601663 (and tp!808191 tp!808193))))

(assert (= (and b!2530623 ((_ is ElementMatch!7533) (regTwo!15578 (regTwo!15579 r!27340)))) b!2531024))

(assert (= (and b!2530623 ((_ is Concat!12229) (regTwo!15578 (regTwo!15579 r!27340)))) b!2531025))

(assert (= (and b!2530623 ((_ is Star!7533) (regTwo!15578 (regTwo!15579 r!27340)))) b!2531026))

(assert (= (and b!2530623 ((_ is Union!7533) (regTwo!15578 (regTwo!15579 r!27340)))) b!2531027))

(declare-fun b!2531028 () Bool)

(declare-fun e!1601664 () Bool)

(declare-fun tp!808194 () Bool)

(assert (=> b!2531028 (= e!1601664 (and tp_is_empty!12921 tp!808194))))

(assert (=> b!2530630 (= tp!807942 e!1601664)))

(assert (= (and b!2530630 ((_ is Cons!29498) (t!211297 (t!211297 tl!4068)))) b!2531028))

(check-sat (not b!2530954) (not b!2530934) (not b!2530998) (not b!2530943) (not b!2530967) (not bm!158557) (not bm!158575) (not bm!158572) (not b!2530907) (not d!719872) (not b!2530951) (not d!719894) (not b!2530947) (not b!2530916) (not b!2530868) (not bm!158584) (not bm!158566) (not b!2530935) (not b!2530977) (not b!2530950) (not b!2531013) (not b!2531010) (not b!2530970) (not bm!158579) (not b!2530959) (not b!2530975) (not b!2531011) (not bm!158583) (not b!2531025) (not b!2530881) (not b!2530966) (not bm!158578) (not b!2530965) (not b!2530991) (not b!2531018) (not b!2530918) (not d!719882) (not b!2530946) (not b!2530879) (not b!2530957) (not b!2531015) (not b!2530973) (not b!2530982) (not b!2530978) (not bm!158573) (not bm!158556) (not b!2530942) (not b!2530851) (not b!2530939) (not b!2530994) (not b!2531001) (not b!2530989) (not b!2531005) (not bm!158570) (not b!2530983) (not b!2531028) (not d!719876) (not b!2530938) (not b!2530995) (not b!2530930) (not b!2530997) (not b!2530949) (not bm!158562) (not b!2531026) (not b!2530969) (not bm!158571) (not b!2531021) (not b!2530929) (not b!2530962) (not b!2531002) (not b!2530999) (not b!2531007) (not b!2531014) (not bm!158561) (not bm!158563) (not b!2530945) (not b!2530993) (not b!2531017) (not b!2530974) (not b!2530963) (not bm!158565) (not b!2530981) (not b!2530987) (not b!2530958) (not b!2531027) (not b!2531023) (not b!2531006) (not b!2530955) (not bm!158560) (not b!2530941) (not d!719886) (not b!2530877) (not b!2530937) (not b!2531019) (not b!2530990) (not d!719874) (not b!2530953) (not b!2530986) tp_is_empty!12921 (not b!2530971) (not b!2530961) (not d!719884) (not bm!158576) (not b!2531003) (not b!2530979) (not b!2530985) (not b!2530898) (not b!2531009) (not b!2530933) (not b!2531022) (not b!2530931))
(check-sat)
