; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350546 () Bool)

(assert start!350546)

(declare-fun b!3722479 () Bool)

(declare-fun e!2304243 () Bool)

(declare-datatypes ((C!21956 0))(
  ( (C!21957 (val!13026 Int)) )
))
(declare-datatypes ((Regex!10885 0))(
  ( (ElementMatch!10885 (c!643859 C!21956)) (Concat!17156 (regOne!22282 Regex!10885) (regTwo!22282 Regex!10885)) (EmptyExpr!10885) (Star!10885 (reg!11214 Regex!10885)) (EmptyLang!10885) (Union!10885 (regOne!22283 Regex!10885) (regTwo!22283 Regex!10885)) )
))
(declare-fun r!26968 () Regex!10885)

(declare-fun validRegex!4992 (Regex!10885) Bool)

(assert (=> b!3722479 (= e!2304243 (not (validRegex!4992 (regTwo!22282 r!26968))))))

(declare-fun c!13797 () C!21956)

(declare-fun cNot!42 () C!21956)

(declare-datatypes ((List!39766 0))(
  ( (Nil!39642) (Cons!39642 (h!45062 C!21956) (t!302449 List!39766)) )
))
(declare-fun contains!7978 (List!39766 C!21956) Bool)

(declare-fun usedCharacters!1148 (Regex!10885) List!39766)

(declare-fun derivativeStep!3342 (Regex!10885 C!21956) Regex!10885)

(assert (=> b!3722479 (not (contains!7978 (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57552 0))(
  ( (Unit!57553) )
))
(declare-fun lt!1298158 () Unit!57552)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!32 (Regex!10885 C!21956 C!21956) Unit!57552)

(assert (=> b!3722479 (= lt!1298158 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!32 (regTwo!22282 r!26968) c!13797 cNot!42))))

(assert (=> b!3722479 (not (contains!7978 (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298157 () Unit!57552)

(assert (=> b!3722479 (= lt!1298157 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!32 (regOne!22282 r!26968) c!13797 cNot!42))))

(declare-fun b!3722480 () Bool)

(declare-fun res!1512780 () Bool)

(assert (=> b!3722480 (=> (not res!1512780) (not e!2304243))))

(declare-fun nullable!3793 (Regex!10885) Bool)

(assert (=> b!3722480 (= res!1512780 (nullable!3793 (regOne!22282 r!26968)))))

(declare-fun b!3722481 () Bool)

(declare-fun res!1512779 () Bool)

(assert (=> b!3722481 (=> (not res!1512779) (not e!2304243))))

(assert (=> b!3722481 (= res!1512779 (not (contains!7978 (usedCharacters!1148 r!26968) cNot!42)))))

(declare-fun b!3722482 () Bool)

(declare-fun e!2304244 () Bool)

(declare-fun tp!1132163 () Bool)

(assert (=> b!3722482 (= e!2304244 tp!1132163)))

(declare-fun res!1512781 () Bool)

(assert (=> start!350546 (=> (not res!1512781) (not e!2304243))))

(assert (=> start!350546 (= res!1512781 (validRegex!4992 r!26968))))

(assert (=> start!350546 e!2304243))

(assert (=> start!350546 e!2304244))

(declare-fun tp_is_empty!18785 () Bool)

(assert (=> start!350546 tp_is_empty!18785))

(declare-fun b!3722483 () Bool)

(assert (=> b!3722483 (= e!2304244 tp_is_empty!18785)))

(declare-fun b!3722484 () Bool)

(declare-fun res!1512782 () Bool)

(assert (=> b!3722484 (=> (not res!1512782) (not e!2304243))))

(get-info :version)

(assert (=> b!3722484 (= res!1512782 (and (not ((_ is EmptyExpr!10885) r!26968)) (not ((_ is EmptyLang!10885) r!26968)) (not ((_ is ElementMatch!10885) r!26968)) (not ((_ is Union!10885) r!26968)) (not ((_ is Star!10885) r!26968))))))

(declare-fun b!3722485 () Bool)

(declare-fun tp!1132162 () Bool)

(declare-fun tp!1132161 () Bool)

(assert (=> b!3722485 (= e!2304244 (and tp!1132162 tp!1132161))))

(declare-fun b!3722486 () Bool)

(declare-fun tp!1132160 () Bool)

(declare-fun tp!1132164 () Bool)

(assert (=> b!3722486 (= e!2304244 (and tp!1132160 tp!1132164))))

(assert (= (and start!350546 res!1512781) b!3722481))

(assert (= (and b!3722481 res!1512779) b!3722484))

(assert (= (and b!3722484 res!1512782) b!3722480))

(assert (= (and b!3722480 res!1512780) b!3722479))

(assert (= (and start!350546 ((_ is ElementMatch!10885) r!26968)) b!3722483))

(assert (= (and start!350546 ((_ is Concat!17156) r!26968)) b!3722486))

(assert (= (and start!350546 ((_ is Star!10885) r!26968)) b!3722482))

(assert (= (and start!350546 ((_ is Union!10885) r!26968)) b!3722485))

(declare-fun m!4226275 () Bool)

(assert (=> b!3722479 m!4226275))

(declare-fun m!4226277 () Bool)

(assert (=> b!3722479 m!4226277))

(declare-fun m!4226279 () Bool)

(assert (=> b!3722479 m!4226279))

(declare-fun m!4226281 () Bool)

(assert (=> b!3722479 m!4226281))

(declare-fun m!4226283 () Bool)

(assert (=> b!3722479 m!4226283))

(assert (=> b!3722479 m!4226281))

(assert (=> b!3722479 m!4226277))

(declare-fun m!4226285 () Bool)

(assert (=> b!3722479 m!4226285))

(assert (=> b!3722479 m!4226285))

(declare-fun m!4226287 () Bool)

(assert (=> b!3722479 m!4226287))

(assert (=> b!3722479 m!4226287))

(declare-fun m!4226289 () Bool)

(assert (=> b!3722479 m!4226289))

(declare-fun m!4226291 () Bool)

(assert (=> b!3722479 m!4226291))

(declare-fun m!4226293 () Bool)

(assert (=> b!3722480 m!4226293))

(declare-fun m!4226295 () Bool)

(assert (=> b!3722481 m!4226295))

(assert (=> b!3722481 m!4226295))

(declare-fun m!4226297 () Bool)

(assert (=> b!3722481 m!4226297))

(declare-fun m!4226299 () Bool)

(assert (=> start!350546 m!4226299))

(check-sat (not b!3722481) (not b!3722486) (not start!350546) tp_is_empty!18785 (not b!3722480) (not b!3722485) (not b!3722482) (not b!3722479))
(check-sat)
(get-model)

(declare-fun bm!270676 () Bool)

(declare-fun call!270684 () Regex!10885)

(declare-fun call!270683 () Regex!10885)

(assert (=> bm!270676 (= call!270684 call!270683)))

(declare-fun b!3722537 () Bool)

(declare-fun c!643884 () Bool)

(assert (=> b!3722537 (= c!643884 ((_ is Union!10885) (regOne!22282 r!26968)))))

(declare-fun e!2304277 () Regex!10885)

(declare-fun e!2304275 () Regex!10885)

(assert (=> b!3722537 (= e!2304277 e!2304275)))

(declare-fun b!3722538 () Bool)

(declare-fun call!270682 () Regex!10885)

(assert (=> b!3722538 (= e!2304275 (Union!10885 call!270683 call!270682))))

(declare-fun b!3722539 () Bool)

(declare-fun e!2304273 () Regex!10885)

(assert (=> b!3722539 (= e!2304273 EmptyLang!10885)))

(declare-fun b!3722540 () Bool)

(declare-fun c!643882 () Bool)

(assert (=> b!3722540 (= c!643882 (nullable!3793 (regOne!22282 (regOne!22282 r!26968))))))

(declare-fun e!2304276 () Regex!10885)

(declare-fun e!2304274 () Regex!10885)

(assert (=> b!3722540 (= e!2304276 e!2304274)))

(declare-fun b!3722541 () Bool)

(declare-fun call!270681 () Regex!10885)

(assert (=> b!3722541 (= e!2304274 (Union!10885 (Concat!17156 call!270681 (regTwo!22282 (regOne!22282 r!26968))) EmptyLang!10885))))

(declare-fun b!3722542 () Bool)

(assert (=> b!3722542 (= e!2304275 e!2304276)))

(declare-fun c!643883 () Bool)

(assert (=> b!3722542 (= c!643883 ((_ is Star!10885) (regOne!22282 r!26968)))))

(declare-fun bm!270677 () Bool)

(assert (=> bm!270677 (= call!270683 (derivativeStep!3342 (ite c!643884 (regOne!22283 (regOne!22282 r!26968)) (ite c!643883 (reg!11214 (regOne!22282 r!26968)) (ite c!643882 (regTwo!22282 (regOne!22282 r!26968)) (regOne!22282 (regOne!22282 r!26968))))) c!13797))))

(declare-fun b!3722543 () Bool)

(assert (=> b!3722543 (= e!2304276 (Concat!17156 call!270684 (regOne!22282 r!26968)))))

(declare-fun d!1089496 () Bool)

(declare-fun lt!1298164 () Regex!10885)

(assert (=> d!1089496 (validRegex!4992 lt!1298164)))

(assert (=> d!1089496 (= lt!1298164 e!2304273)))

(declare-fun c!643885 () Bool)

(assert (=> d!1089496 (= c!643885 (or ((_ is EmptyExpr!10885) (regOne!22282 r!26968)) ((_ is EmptyLang!10885) (regOne!22282 r!26968))))))

(assert (=> d!1089496 (validRegex!4992 (regOne!22282 r!26968))))

(assert (=> d!1089496 (= (derivativeStep!3342 (regOne!22282 r!26968) c!13797) lt!1298164)))

(declare-fun b!3722544 () Bool)

(assert (=> b!3722544 (= e!2304274 (Union!10885 (Concat!17156 call!270682 (regTwo!22282 (regOne!22282 r!26968))) call!270681))))

(declare-fun bm!270678 () Bool)

(assert (=> bm!270678 (= call!270682 (derivativeStep!3342 (ite c!643884 (regTwo!22283 (regOne!22282 r!26968)) (regOne!22282 (regOne!22282 r!26968))) c!13797))))

(declare-fun b!3722545 () Bool)

(assert (=> b!3722545 (= e!2304273 e!2304277)))

(declare-fun c!643886 () Bool)

(assert (=> b!3722545 (= c!643886 ((_ is ElementMatch!10885) (regOne!22282 r!26968)))))

(declare-fun bm!270679 () Bool)

(assert (=> bm!270679 (= call!270681 call!270684)))

(declare-fun b!3722546 () Bool)

(assert (=> b!3722546 (= e!2304277 (ite (= c!13797 (c!643859 (regOne!22282 r!26968))) EmptyExpr!10885 EmptyLang!10885))))

(assert (= (and d!1089496 c!643885) b!3722539))

(assert (= (and d!1089496 (not c!643885)) b!3722545))

(assert (= (and b!3722545 c!643886) b!3722546))

(assert (= (and b!3722545 (not c!643886)) b!3722537))

(assert (= (and b!3722537 c!643884) b!3722538))

(assert (= (and b!3722537 (not c!643884)) b!3722542))

(assert (= (and b!3722542 c!643883) b!3722543))

(assert (= (and b!3722542 (not c!643883)) b!3722540))

(assert (= (and b!3722540 c!643882) b!3722544))

(assert (= (and b!3722540 (not c!643882)) b!3722541))

(assert (= (or b!3722544 b!3722541) bm!270679))

(assert (= (or b!3722543 bm!270679) bm!270676))

(assert (= (or b!3722538 bm!270676) bm!270677))

(assert (= (or b!3722538 b!3722544) bm!270678))

(declare-fun m!4226315 () Bool)

(assert (=> b!3722540 m!4226315))

(declare-fun m!4226317 () Bool)

(assert (=> bm!270677 m!4226317))

(declare-fun m!4226319 () Bool)

(assert (=> d!1089496 m!4226319))

(declare-fun m!4226321 () Bool)

(assert (=> d!1089496 m!4226321))

(declare-fun m!4226323 () Bool)

(assert (=> bm!270678 m!4226323))

(assert (=> b!3722479 d!1089496))

(declare-fun b!3722583 () Bool)

(declare-fun e!2304299 () List!39766)

(declare-fun e!2304298 () List!39766)

(assert (=> b!3722583 (= e!2304299 e!2304298)))

(declare-fun c!643906 () Bool)

(assert (=> b!3722583 (= c!643906 ((_ is ElementMatch!10885) (derivativeStep!3342 (regOne!22282 r!26968) c!13797)))))

(declare-fun b!3722584 () Bool)

(declare-fun c!643908 () Bool)

(assert (=> b!3722584 (= c!643908 ((_ is Star!10885) (derivativeStep!3342 (regOne!22282 r!26968) c!13797)))))

(declare-fun e!2304296 () List!39766)

(assert (=> b!3722584 (= e!2304298 e!2304296)))

(declare-fun b!3722586 () Bool)

(declare-fun e!2304297 () List!39766)

(assert (=> b!3722586 (= e!2304296 e!2304297)))

(declare-fun c!643905 () Bool)

(assert (=> b!3722586 (= c!643905 ((_ is Union!10885) (derivativeStep!3342 (regOne!22282 r!26968) c!13797)))))

(declare-fun bm!270694 () Bool)

(declare-fun call!270700 () List!39766)

(declare-fun call!270699 () List!39766)

(assert (=> bm!270694 (= call!270700 call!270699)))

(declare-fun b!3722587 () Bool)

(assert (=> b!3722587 (= e!2304298 (Cons!39642 (c!643859 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) Nil!39642))))

(declare-fun call!270701 () List!39766)

(declare-fun bm!270695 () Bool)

(assert (=> bm!270695 (= call!270701 (usedCharacters!1148 (ite c!643905 (regOne!22283 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) (regTwo!22282 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)))))))

(declare-fun bm!270696 () Bool)

(assert (=> bm!270696 (= call!270699 (usedCharacters!1148 (ite c!643908 (reg!11214 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) (ite c!643905 (regTwo!22283 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) (regOne!22282 (derivativeStep!3342 (regOne!22282 r!26968) c!13797))))))))

(declare-fun b!3722588 () Bool)

(declare-fun call!270702 () List!39766)

(assert (=> b!3722588 (= e!2304297 call!270702)))

(declare-fun b!3722585 () Bool)

(assert (=> b!3722585 (= e!2304297 call!270702)))

(declare-fun d!1089506 () Bool)

(declare-fun c!643907 () Bool)

(assert (=> d!1089506 (= c!643907 (or ((_ is EmptyExpr!10885) (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) ((_ is EmptyLang!10885) (derivativeStep!3342 (regOne!22282 r!26968) c!13797))))))

(assert (=> d!1089506 (= (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) e!2304299)))

(declare-fun b!3722589 () Bool)

(assert (=> b!3722589 (= e!2304296 call!270699)))

(declare-fun bm!270697 () Bool)

(declare-fun ++!9815 (List!39766 List!39766) List!39766)

(assert (=> bm!270697 (= call!270702 (++!9815 (ite c!643905 call!270701 call!270700) (ite c!643905 call!270700 call!270701)))))

(declare-fun b!3722590 () Bool)

(assert (=> b!3722590 (= e!2304299 Nil!39642)))

(assert (= (and d!1089506 c!643907) b!3722590))

(assert (= (and d!1089506 (not c!643907)) b!3722583))

(assert (= (and b!3722583 c!643906) b!3722587))

(assert (= (and b!3722583 (not c!643906)) b!3722584))

(assert (= (and b!3722584 c!643908) b!3722589))

(assert (= (and b!3722584 (not c!643908)) b!3722586))

(assert (= (and b!3722586 c!643905) b!3722588))

(assert (= (and b!3722586 (not c!643905)) b!3722585))

(assert (= (or b!3722588 b!3722585) bm!270695))

(assert (= (or b!3722588 b!3722585) bm!270694))

(assert (= (or b!3722588 b!3722585) bm!270697))

(assert (= (or b!3722589 bm!270694) bm!270696))

(declare-fun m!4226325 () Bool)

(assert (=> bm!270695 m!4226325))

(declare-fun m!4226327 () Bool)

(assert (=> bm!270696 m!4226327))

(declare-fun m!4226329 () Bool)

(assert (=> bm!270697 m!4226329))

(assert (=> b!3722479 d!1089506))

(declare-fun d!1089508 () Bool)

(assert (=> d!1089508 (not (contains!7978 (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298169 () Unit!57552)

(declare-fun choose!22218 (Regex!10885 C!21956 C!21956) Unit!57552)

(assert (=> d!1089508 (= lt!1298169 (choose!22218 (regTwo!22282 r!26968) c!13797 cNot!42))))

(assert (=> d!1089508 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!32 (regTwo!22282 r!26968) c!13797 cNot!42) lt!1298169)))

(declare-fun bs!574993 () Bool)

(assert (= bs!574993 d!1089508))

(assert (=> bs!574993 m!4226285))

(assert (=> bs!574993 m!4226285))

(assert (=> bs!574993 m!4226287))

(assert (=> bs!574993 m!4226287))

(assert (=> bs!574993 m!4226289))

(declare-fun m!4226331 () Bool)

(assert (=> bs!574993 m!4226331))

(assert (=> b!3722479 d!1089508))

(declare-fun b!3722591 () Bool)

(declare-fun e!2304303 () List!39766)

(declare-fun e!2304302 () List!39766)

(assert (=> b!3722591 (= e!2304303 e!2304302)))

(declare-fun c!643911 () Bool)

(assert (=> b!3722591 (= c!643911 ((_ is ElementMatch!10885) (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)))))

(declare-fun b!3722592 () Bool)

(declare-fun c!643913 () Bool)

(assert (=> b!3722592 (= c!643913 ((_ is Star!10885) (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)))))

(declare-fun e!2304300 () List!39766)

(assert (=> b!3722592 (= e!2304302 e!2304300)))

(declare-fun b!3722594 () Bool)

(declare-fun e!2304301 () List!39766)

(assert (=> b!3722594 (= e!2304300 e!2304301)))

(declare-fun c!643910 () Bool)

(assert (=> b!3722594 (= c!643910 ((_ is Union!10885) (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)))))

(declare-fun bm!270700 () Bool)

(declare-fun call!270706 () List!39766)

(declare-fun call!270705 () List!39766)

(assert (=> bm!270700 (= call!270706 call!270705)))

(declare-fun b!3722595 () Bool)

(assert (=> b!3722595 (= e!2304302 (Cons!39642 (c!643859 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) Nil!39642))))

(declare-fun bm!270701 () Bool)

(declare-fun call!270707 () List!39766)

(assert (=> bm!270701 (= call!270707 (usedCharacters!1148 (ite c!643910 (regOne!22283 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) (regTwo!22282 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)))))))

(declare-fun bm!270702 () Bool)

(assert (=> bm!270702 (= call!270705 (usedCharacters!1148 (ite c!643913 (reg!11214 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) (ite c!643910 (regTwo!22283 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) (regOne!22282 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797))))))))

(declare-fun b!3722596 () Bool)

(declare-fun call!270708 () List!39766)

(assert (=> b!3722596 (= e!2304301 call!270708)))

(declare-fun b!3722593 () Bool)

(assert (=> b!3722593 (= e!2304301 call!270708)))

(declare-fun d!1089510 () Bool)

(declare-fun c!643912 () Bool)

(assert (=> d!1089510 (= c!643912 (or ((_ is EmptyExpr!10885) (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) ((_ is EmptyLang!10885) (derivativeStep!3342 (regTwo!22282 r!26968) c!13797))))))

(assert (=> d!1089510 (= (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) e!2304303)))

(declare-fun b!3722597 () Bool)

(assert (=> b!3722597 (= e!2304300 call!270705)))

(declare-fun bm!270703 () Bool)

(assert (=> bm!270703 (= call!270708 (++!9815 (ite c!643910 call!270707 call!270706) (ite c!643910 call!270706 call!270707)))))

(declare-fun b!3722598 () Bool)

(assert (=> b!3722598 (= e!2304303 Nil!39642)))

(assert (= (and d!1089510 c!643912) b!3722598))

(assert (= (and d!1089510 (not c!643912)) b!3722591))

(assert (= (and b!3722591 c!643911) b!3722595))

(assert (= (and b!3722591 (not c!643911)) b!3722592))

(assert (= (and b!3722592 c!643913) b!3722597))

(assert (= (and b!3722592 (not c!643913)) b!3722594))

(assert (= (and b!3722594 c!643910) b!3722596))

(assert (= (and b!3722594 (not c!643910)) b!3722593))

(assert (= (or b!3722596 b!3722593) bm!270701))

(assert (= (or b!3722596 b!3722593) bm!270700))

(assert (= (or b!3722596 b!3722593) bm!270703))

(assert (= (or b!3722597 bm!270700) bm!270702))

(declare-fun m!4226333 () Bool)

(assert (=> bm!270701 m!4226333))

(declare-fun m!4226335 () Bool)

(assert (=> bm!270702 m!4226335))

(declare-fun m!4226337 () Bool)

(assert (=> bm!270703 m!4226337))

(assert (=> b!3722479 d!1089510))

(declare-fun b!3722643 () Bool)

(declare-fun e!2304331 () Bool)

(declare-fun e!2304335 () Bool)

(assert (=> b!3722643 (= e!2304331 e!2304335)))

(declare-fun res!1512802 () Bool)

(assert (=> b!3722643 (=> (not res!1512802) (not e!2304335))))

(declare-fun call!270729 () Bool)

(assert (=> b!3722643 (= res!1512802 call!270729)))

(declare-fun b!3722644 () Bool)

(declare-fun e!2304336 () Bool)

(declare-fun e!2304333 () Bool)

(assert (=> b!3722644 (= e!2304336 e!2304333)))

(declare-fun c!643932 () Bool)

(assert (=> b!3722644 (= c!643932 ((_ is Star!10885) (regTwo!22282 r!26968)))))

(declare-fun d!1089512 () Bool)

(declare-fun res!1512801 () Bool)

(assert (=> d!1089512 (=> res!1512801 e!2304336)))

(assert (=> d!1089512 (= res!1512801 ((_ is ElementMatch!10885) (regTwo!22282 r!26968)))))

(assert (=> d!1089512 (= (validRegex!4992 (regTwo!22282 r!26968)) e!2304336)))

(declare-fun bm!270722 () Bool)

(declare-fun call!270727 () Bool)

(declare-fun c!643933 () Bool)

(assert (=> bm!270722 (= call!270727 (validRegex!4992 (ite c!643933 (regTwo!22283 (regTwo!22282 r!26968)) (regTwo!22282 (regTwo!22282 r!26968)))))))

(declare-fun b!3722645 () Bool)

(declare-fun e!2304334 () Bool)

(assert (=> b!3722645 (= e!2304333 e!2304334)))

(assert (=> b!3722645 (= c!643933 ((_ is Union!10885) (regTwo!22282 r!26968)))))

(declare-fun bm!270723 () Bool)

(declare-fun call!270728 () Bool)

(assert (=> bm!270723 (= call!270729 call!270728)))

(declare-fun b!3722646 () Bool)

(declare-fun e!2304337 () Bool)

(assert (=> b!3722646 (= e!2304337 call!270728)))

(declare-fun b!3722647 () Bool)

(declare-fun res!1512799 () Bool)

(declare-fun e!2304332 () Bool)

(assert (=> b!3722647 (=> (not res!1512799) (not e!2304332))))

(assert (=> b!3722647 (= res!1512799 call!270729)))

(assert (=> b!3722647 (= e!2304334 e!2304332)))

(declare-fun bm!270724 () Bool)

(assert (=> bm!270724 (= call!270728 (validRegex!4992 (ite c!643932 (reg!11214 (regTwo!22282 r!26968)) (ite c!643933 (regOne!22283 (regTwo!22282 r!26968)) (regOne!22282 (regTwo!22282 r!26968))))))))

(declare-fun b!3722648 () Bool)

(assert (=> b!3722648 (= e!2304332 call!270727)))

(declare-fun b!3722649 () Bool)

(assert (=> b!3722649 (= e!2304333 e!2304337)))

(declare-fun res!1512803 () Bool)

(assert (=> b!3722649 (= res!1512803 (not (nullable!3793 (reg!11214 (regTwo!22282 r!26968)))))))

(assert (=> b!3722649 (=> (not res!1512803) (not e!2304337))))

(declare-fun b!3722650 () Bool)

(declare-fun res!1512800 () Bool)

(assert (=> b!3722650 (=> res!1512800 e!2304331)))

(assert (=> b!3722650 (= res!1512800 (not ((_ is Concat!17156) (regTwo!22282 r!26968))))))

(assert (=> b!3722650 (= e!2304334 e!2304331)))

(declare-fun b!3722651 () Bool)

(assert (=> b!3722651 (= e!2304335 call!270727)))

(assert (= (and d!1089512 (not res!1512801)) b!3722644))

(assert (= (and b!3722644 c!643932) b!3722649))

(assert (= (and b!3722644 (not c!643932)) b!3722645))

(assert (= (and b!3722649 res!1512803) b!3722646))

(assert (= (and b!3722645 c!643933) b!3722647))

(assert (= (and b!3722645 (not c!643933)) b!3722650))

(assert (= (and b!3722647 res!1512799) b!3722648))

(assert (= (and b!3722650 (not res!1512800)) b!3722643))

(assert (= (and b!3722643 res!1512802) b!3722651))

(assert (= (or b!3722648 b!3722651) bm!270722))

(assert (= (or b!3722647 b!3722643) bm!270723))

(assert (= (or b!3722646 bm!270723) bm!270724))

(declare-fun m!4226363 () Bool)

(assert (=> bm!270722 m!4226363))

(declare-fun m!4226365 () Bool)

(assert (=> bm!270724 m!4226365))

(declare-fun m!4226367 () Bool)

(assert (=> b!3722649 m!4226367))

(assert (=> b!3722479 d!1089512))

(declare-fun d!1089522 () Bool)

(assert (=> d!1089522 (not (contains!7978 (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298174 () Unit!57552)

(assert (=> d!1089522 (= lt!1298174 (choose!22218 (regOne!22282 r!26968) c!13797 cNot!42))))

(assert (=> d!1089522 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!32 (regOne!22282 r!26968) c!13797 cNot!42) lt!1298174)))

(declare-fun bs!574995 () Bool)

(assert (= bs!574995 d!1089522))

(assert (=> bs!574995 m!4226281))

(assert (=> bs!574995 m!4226281))

(assert (=> bs!574995 m!4226277))

(assert (=> bs!574995 m!4226277))

(assert (=> bs!574995 m!4226279))

(declare-fun m!4226369 () Bool)

(assert (=> bs!574995 m!4226369))

(assert (=> b!3722479 d!1089522))

(declare-fun lt!1298177 () Bool)

(declare-fun d!1089524 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5750 (List!39766) (InoxSet C!21956))

(assert (=> d!1089524 (= lt!1298177 (select (content!5750 (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797))) cNot!42))))

(declare-fun e!2304357 () Bool)

(assert (=> d!1089524 (= lt!1298177 e!2304357)))

(declare-fun res!1512818 () Bool)

(assert (=> d!1089524 (=> (not res!1512818) (not e!2304357))))

(assert (=> d!1089524 (= res!1512818 ((_ is Cons!39642) (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797))))))

(assert (=> d!1089524 (= (contains!7978 (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797)) cNot!42) lt!1298177)))

(declare-fun b!3722674 () Bool)

(declare-fun e!2304356 () Bool)

(assert (=> b!3722674 (= e!2304357 e!2304356)))

(declare-fun res!1512819 () Bool)

(assert (=> b!3722674 (=> res!1512819 e!2304356)))

(assert (=> b!3722674 (= res!1512819 (= (h!45062 (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797))) cNot!42))))

(declare-fun b!3722675 () Bool)

(assert (=> b!3722675 (= e!2304356 (contains!7978 (t!302449 (usedCharacters!1148 (derivativeStep!3342 (regOne!22282 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089524 res!1512818) b!3722674))

(assert (= (and b!3722674 (not res!1512819)) b!3722675))

(assert (=> d!1089524 m!4226277))

(declare-fun m!4226371 () Bool)

(assert (=> d!1089524 m!4226371))

(declare-fun m!4226373 () Bool)

(assert (=> d!1089524 m!4226373))

(declare-fun m!4226375 () Bool)

(assert (=> b!3722675 m!4226375))

(assert (=> b!3722479 d!1089524))

(declare-fun d!1089526 () Bool)

(declare-fun lt!1298178 () Bool)

(assert (=> d!1089526 (= lt!1298178 (select (content!5750 (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797))) cNot!42))))

(declare-fun e!2304359 () Bool)

(assert (=> d!1089526 (= lt!1298178 e!2304359)))

(declare-fun res!1512820 () Bool)

(assert (=> d!1089526 (=> (not res!1512820) (not e!2304359))))

(assert (=> d!1089526 (= res!1512820 ((_ is Cons!39642) (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797))))))

(assert (=> d!1089526 (= (contains!7978 (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797)) cNot!42) lt!1298178)))

(declare-fun b!3722676 () Bool)

(declare-fun e!2304358 () Bool)

(assert (=> b!3722676 (= e!2304359 e!2304358)))

(declare-fun res!1512821 () Bool)

(assert (=> b!3722676 (=> res!1512821 e!2304358)))

(assert (=> b!3722676 (= res!1512821 (= (h!45062 (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797))) cNot!42))))

(declare-fun b!3722677 () Bool)

(assert (=> b!3722677 (= e!2304358 (contains!7978 (t!302449 (usedCharacters!1148 (derivativeStep!3342 (regTwo!22282 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089526 res!1512820) b!3722676))

(assert (= (and b!3722676 (not res!1512821)) b!3722677))

(assert (=> d!1089526 m!4226287))

(declare-fun m!4226377 () Bool)

(assert (=> d!1089526 m!4226377))

(declare-fun m!4226379 () Bool)

(assert (=> d!1089526 m!4226379))

(declare-fun m!4226381 () Bool)

(assert (=> b!3722677 m!4226381))

(assert (=> b!3722479 d!1089526))

(declare-fun bm!270731 () Bool)

(declare-fun call!270739 () Regex!10885)

(declare-fun call!270738 () Regex!10885)

(assert (=> bm!270731 (= call!270739 call!270738)))

(declare-fun b!3722678 () Bool)

(declare-fun c!643940 () Bool)

(assert (=> b!3722678 (= c!643940 ((_ is Union!10885) (regTwo!22282 r!26968)))))

(declare-fun e!2304364 () Regex!10885)

(declare-fun e!2304362 () Regex!10885)

(assert (=> b!3722678 (= e!2304364 e!2304362)))

(declare-fun b!3722679 () Bool)

(declare-fun call!270737 () Regex!10885)

(assert (=> b!3722679 (= e!2304362 (Union!10885 call!270738 call!270737))))

(declare-fun b!3722680 () Bool)

(declare-fun e!2304360 () Regex!10885)

(assert (=> b!3722680 (= e!2304360 EmptyLang!10885)))

(declare-fun b!3722681 () Bool)

(declare-fun c!643938 () Bool)

(assert (=> b!3722681 (= c!643938 (nullable!3793 (regOne!22282 (regTwo!22282 r!26968))))))

(declare-fun e!2304363 () Regex!10885)

(declare-fun e!2304361 () Regex!10885)

(assert (=> b!3722681 (= e!2304363 e!2304361)))

(declare-fun b!3722682 () Bool)

(declare-fun call!270736 () Regex!10885)

(assert (=> b!3722682 (= e!2304361 (Union!10885 (Concat!17156 call!270736 (regTwo!22282 (regTwo!22282 r!26968))) EmptyLang!10885))))

(declare-fun b!3722683 () Bool)

(assert (=> b!3722683 (= e!2304362 e!2304363)))

(declare-fun c!643939 () Bool)

(assert (=> b!3722683 (= c!643939 ((_ is Star!10885) (regTwo!22282 r!26968)))))

(declare-fun bm!270732 () Bool)

(assert (=> bm!270732 (= call!270738 (derivativeStep!3342 (ite c!643940 (regOne!22283 (regTwo!22282 r!26968)) (ite c!643939 (reg!11214 (regTwo!22282 r!26968)) (ite c!643938 (regTwo!22282 (regTwo!22282 r!26968)) (regOne!22282 (regTwo!22282 r!26968))))) c!13797))))

(declare-fun b!3722684 () Bool)

(assert (=> b!3722684 (= e!2304363 (Concat!17156 call!270739 (regTwo!22282 r!26968)))))

(declare-fun d!1089528 () Bool)

(declare-fun lt!1298179 () Regex!10885)

(assert (=> d!1089528 (validRegex!4992 lt!1298179)))

(assert (=> d!1089528 (= lt!1298179 e!2304360)))

(declare-fun c!643941 () Bool)

(assert (=> d!1089528 (= c!643941 (or ((_ is EmptyExpr!10885) (regTwo!22282 r!26968)) ((_ is EmptyLang!10885) (regTwo!22282 r!26968))))))

(assert (=> d!1089528 (validRegex!4992 (regTwo!22282 r!26968))))

(assert (=> d!1089528 (= (derivativeStep!3342 (regTwo!22282 r!26968) c!13797) lt!1298179)))

(declare-fun b!3722685 () Bool)

(assert (=> b!3722685 (= e!2304361 (Union!10885 (Concat!17156 call!270737 (regTwo!22282 (regTwo!22282 r!26968))) call!270736))))

(declare-fun bm!270733 () Bool)

(assert (=> bm!270733 (= call!270737 (derivativeStep!3342 (ite c!643940 (regTwo!22283 (regTwo!22282 r!26968)) (regOne!22282 (regTwo!22282 r!26968))) c!13797))))

(declare-fun b!3722686 () Bool)

(assert (=> b!3722686 (= e!2304360 e!2304364)))

(declare-fun c!643942 () Bool)

(assert (=> b!3722686 (= c!643942 ((_ is ElementMatch!10885) (regTwo!22282 r!26968)))))

(declare-fun bm!270734 () Bool)

(assert (=> bm!270734 (= call!270736 call!270739)))

(declare-fun b!3722687 () Bool)

(assert (=> b!3722687 (= e!2304364 (ite (= c!13797 (c!643859 (regTwo!22282 r!26968))) EmptyExpr!10885 EmptyLang!10885))))

(assert (= (and d!1089528 c!643941) b!3722680))

(assert (= (and d!1089528 (not c!643941)) b!3722686))

(assert (= (and b!3722686 c!643942) b!3722687))

(assert (= (and b!3722686 (not c!643942)) b!3722678))

(assert (= (and b!3722678 c!643940) b!3722679))

(assert (= (and b!3722678 (not c!643940)) b!3722683))

(assert (= (and b!3722683 c!643939) b!3722684))

(assert (= (and b!3722683 (not c!643939)) b!3722681))

(assert (= (and b!3722681 c!643938) b!3722685))

(assert (= (and b!3722681 (not c!643938)) b!3722682))

(assert (= (or b!3722685 b!3722682) bm!270734))

(assert (= (or b!3722684 bm!270734) bm!270731))

(assert (= (or b!3722679 bm!270731) bm!270732))

(assert (= (or b!3722679 b!3722685) bm!270733))

(declare-fun m!4226383 () Bool)

(assert (=> b!3722681 m!4226383))

(declare-fun m!4226385 () Bool)

(assert (=> bm!270732 m!4226385))

(declare-fun m!4226387 () Bool)

(assert (=> d!1089528 m!4226387))

(assert (=> d!1089528 m!4226275))

(declare-fun m!4226389 () Bool)

(assert (=> bm!270733 m!4226389))

(assert (=> b!3722479 d!1089528))

(declare-fun b!3722697 () Bool)

(declare-fun e!2304372 () Bool)

(declare-fun e!2304376 () Bool)

(assert (=> b!3722697 (= e!2304372 e!2304376)))

(declare-fun res!1512830 () Bool)

(assert (=> b!3722697 (=> (not res!1512830) (not e!2304376))))

(declare-fun call!270745 () Bool)

(assert (=> b!3722697 (= res!1512830 call!270745)))

(declare-fun b!3722698 () Bool)

(declare-fun e!2304377 () Bool)

(declare-fun e!2304374 () Bool)

(assert (=> b!3722698 (= e!2304377 e!2304374)))

(declare-fun c!643945 () Bool)

(assert (=> b!3722698 (= c!643945 ((_ is Star!10885) r!26968))))

(declare-fun d!1089530 () Bool)

(declare-fun res!1512829 () Bool)

(assert (=> d!1089530 (=> res!1512829 e!2304377)))

(assert (=> d!1089530 (= res!1512829 ((_ is ElementMatch!10885) r!26968))))

(assert (=> d!1089530 (= (validRegex!4992 r!26968) e!2304377)))

(declare-fun bm!270738 () Bool)

(declare-fun call!270743 () Bool)

(declare-fun c!643946 () Bool)

(assert (=> bm!270738 (= call!270743 (validRegex!4992 (ite c!643946 (regTwo!22283 r!26968) (regTwo!22282 r!26968))))))

(declare-fun b!3722699 () Bool)

(declare-fun e!2304375 () Bool)

(assert (=> b!3722699 (= e!2304374 e!2304375)))

(assert (=> b!3722699 (= c!643946 ((_ is Union!10885) r!26968))))

(declare-fun bm!270739 () Bool)

(declare-fun call!270744 () Bool)

(assert (=> bm!270739 (= call!270745 call!270744)))

(declare-fun b!3722700 () Bool)

(declare-fun e!2304378 () Bool)

(assert (=> b!3722700 (= e!2304378 call!270744)))

(declare-fun b!3722701 () Bool)

(declare-fun res!1512827 () Bool)

(declare-fun e!2304373 () Bool)

(assert (=> b!3722701 (=> (not res!1512827) (not e!2304373))))

(assert (=> b!3722701 (= res!1512827 call!270745)))

(assert (=> b!3722701 (= e!2304375 e!2304373)))

(declare-fun bm!270740 () Bool)

(assert (=> bm!270740 (= call!270744 (validRegex!4992 (ite c!643945 (reg!11214 r!26968) (ite c!643946 (regOne!22283 r!26968) (regOne!22282 r!26968)))))))

(declare-fun b!3722702 () Bool)

(assert (=> b!3722702 (= e!2304373 call!270743)))

(declare-fun b!3722703 () Bool)

(assert (=> b!3722703 (= e!2304374 e!2304378)))

(declare-fun res!1512831 () Bool)

(assert (=> b!3722703 (= res!1512831 (not (nullable!3793 (reg!11214 r!26968))))))

(assert (=> b!3722703 (=> (not res!1512831) (not e!2304378))))

(declare-fun b!3722704 () Bool)

(declare-fun res!1512828 () Bool)

(assert (=> b!3722704 (=> res!1512828 e!2304372)))

(assert (=> b!3722704 (= res!1512828 (not ((_ is Concat!17156) r!26968)))))

(assert (=> b!3722704 (= e!2304375 e!2304372)))

(declare-fun b!3722705 () Bool)

(assert (=> b!3722705 (= e!2304376 call!270743)))

(assert (= (and d!1089530 (not res!1512829)) b!3722698))

(assert (= (and b!3722698 c!643945) b!3722703))

(assert (= (and b!3722698 (not c!643945)) b!3722699))

(assert (= (and b!3722703 res!1512831) b!3722700))

(assert (= (and b!3722699 c!643946) b!3722701))

(assert (= (and b!3722699 (not c!643946)) b!3722704))

(assert (= (and b!3722701 res!1512827) b!3722702))

(assert (= (and b!3722704 (not res!1512828)) b!3722697))

(assert (= (and b!3722697 res!1512830) b!3722705))

(assert (= (or b!3722702 b!3722705) bm!270738))

(assert (= (or b!3722701 b!3722697) bm!270739))

(assert (= (or b!3722700 bm!270739) bm!270740))

(declare-fun m!4226397 () Bool)

(assert (=> bm!270738 m!4226397))

(declare-fun m!4226399 () Bool)

(assert (=> bm!270740 m!4226399))

(declare-fun m!4226401 () Bool)

(assert (=> b!3722703 m!4226401))

(assert (=> start!350546 d!1089530))

(declare-fun d!1089534 () Bool)

(declare-fun nullableFct!1075 (Regex!10885) Bool)

(assert (=> d!1089534 (= (nullable!3793 (regOne!22282 r!26968)) (nullableFct!1075 (regOne!22282 r!26968)))))

(declare-fun bs!574997 () Bool)

(assert (= bs!574997 d!1089534))

(declare-fun m!4226411 () Bool)

(assert (=> bs!574997 m!4226411))

(assert (=> b!3722480 d!1089534))

(declare-fun d!1089540 () Bool)

(declare-fun lt!1298183 () Bool)

(assert (=> d!1089540 (= lt!1298183 (select (content!5750 (usedCharacters!1148 r!26968)) cNot!42))))

(declare-fun e!2304384 () Bool)

(assert (=> d!1089540 (= lt!1298183 e!2304384)))

(declare-fun res!1512836 () Bool)

(assert (=> d!1089540 (=> (not res!1512836) (not e!2304384))))

(assert (=> d!1089540 (= res!1512836 ((_ is Cons!39642) (usedCharacters!1148 r!26968)))))

(assert (=> d!1089540 (= (contains!7978 (usedCharacters!1148 r!26968) cNot!42) lt!1298183)))

(declare-fun b!3722710 () Bool)

(declare-fun e!2304383 () Bool)

(assert (=> b!3722710 (= e!2304384 e!2304383)))

(declare-fun res!1512837 () Bool)

(assert (=> b!3722710 (=> res!1512837 e!2304383)))

(assert (=> b!3722710 (= res!1512837 (= (h!45062 (usedCharacters!1148 r!26968)) cNot!42))))

(declare-fun b!3722711 () Bool)

(assert (=> b!3722711 (= e!2304383 (contains!7978 (t!302449 (usedCharacters!1148 r!26968)) cNot!42))))

(assert (= (and d!1089540 res!1512836) b!3722710))

(assert (= (and b!3722710 (not res!1512837)) b!3722711))

(assert (=> d!1089540 m!4226295))

(declare-fun m!4226419 () Bool)

(assert (=> d!1089540 m!4226419))

(declare-fun m!4226421 () Bool)

(assert (=> d!1089540 m!4226421))

(declare-fun m!4226423 () Bool)

(assert (=> b!3722711 m!4226423))

(assert (=> b!3722481 d!1089540))

(declare-fun b!3722722 () Bool)

(declare-fun e!2304393 () List!39766)

(declare-fun e!2304392 () List!39766)

(assert (=> b!3722722 (= e!2304393 e!2304392)))

(declare-fun c!643953 () Bool)

(assert (=> b!3722722 (= c!643953 ((_ is ElementMatch!10885) r!26968))))

(declare-fun b!3722723 () Bool)

(declare-fun c!643955 () Bool)

(assert (=> b!3722723 (= c!643955 ((_ is Star!10885) r!26968))))

(declare-fun e!2304390 () List!39766)

(assert (=> b!3722723 (= e!2304392 e!2304390)))

(declare-fun b!3722725 () Bool)

(declare-fun e!2304391 () List!39766)

(assert (=> b!3722725 (= e!2304390 e!2304391)))

(declare-fun c!643952 () Bool)

(assert (=> b!3722725 (= c!643952 ((_ is Union!10885) r!26968))))

(declare-fun bm!270745 () Bool)

(declare-fun call!270751 () List!39766)

(declare-fun call!270750 () List!39766)

(assert (=> bm!270745 (= call!270751 call!270750)))

(declare-fun b!3722726 () Bool)

(assert (=> b!3722726 (= e!2304392 (Cons!39642 (c!643859 r!26968) Nil!39642))))

(declare-fun bm!270746 () Bool)

(declare-fun call!270752 () List!39766)

(assert (=> bm!270746 (= call!270752 (usedCharacters!1148 (ite c!643952 (regOne!22283 r!26968) (regTwo!22282 r!26968))))))

(declare-fun bm!270747 () Bool)

(assert (=> bm!270747 (= call!270750 (usedCharacters!1148 (ite c!643955 (reg!11214 r!26968) (ite c!643952 (regTwo!22283 r!26968) (regOne!22282 r!26968)))))))

(declare-fun b!3722727 () Bool)

(declare-fun call!270753 () List!39766)

(assert (=> b!3722727 (= e!2304391 call!270753)))

(declare-fun b!3722724 () Bool)

(assert (=> b!3722724 (= e!2304391 call!270753)))

(declare-fun d!1089544 () Bool)

(declare-fun c!643954 () Bool)

(assert (=> d!1089544 (= c!643954 (or ((_ is EmptyExpr!10885) r!26968) ((_ is EmptyLang!10885) r!26968)))))

(assert (=> d!1089544 (= (usedCharacters!1148 r!26968) e!2304393)))

(declare-fun b!3722728 () Bool)

(assert (=> b!3722728 (= e!2304390 call!270750)))

(declare-fun bm!270748 () Bool)

(assert (=> bm!270748 (= call!270753 (++!9815 (ite c!643952 call!270752 call!270751) (ite c!643952 call!270751 call!270752)))))

(declare-fun b!3722729 () Bool)

(assert (=> b!3722729 (= e!2304393 Nil!39642)))

(assert (= (and d!1089544 c!643954) b!3722729))

(assert (= (and d!1089544 (not c!643954)) b!3722722))

(assert (= (and b!3722722 c!643953) b!3722726))

(assert (= (and b!3722722 (not c!643953)) b!3722723))

(assert (= (and b!3722723 c!643955) b!3722728))

(assert (= (and b!3722723 (not c!643955)) b!3722725))

(assert (= (and b!3722725 c!643952) b!3722727))

(assert (= (and b!3722725 (not c!643952)) b!3722724))

(assert (= (or b!3722727 b!3722724) bm!270746))

(assert (= (or b!3722727 b!3722724) bm!270745))

(assert (= (or b!3722727 b!3722724) bm!270748))

(assert (= (or b!3722728 bm!270745) bm!270747))

(declare-fun m!4226425 () Bool)

(assert (=> bm!270746 m!4226425))

(declare-fun m!4226427 () Bool)

(assert (=> bm!270747 m!4226427))

(declare-fun m!4226431 () Bool)

(assert (=> bm!270748 m!4226431))

(assert (=> b!3722481 d!1089544))

(declare-fun b!3722756 () Bool)

(declare-fun e!2304405 () Bool)

(declare-fun tp!1132180 () Bool)

(declare-fun tp!1132179 () Bool)

(assert (=> b!3722756 (= e!2304405 (and tp!1132180 tp!1132179))))

(assert (=> b!3722482 (= tp!1132163 e!2304405)))

(declare-fun b!3722755 () Bool)

(assert (=> b!3722755 (= e!2304405 tp_is_empty!18785)))

(declare-fun b!3722757 () Bool)

(declare-fun tp!1132183 () Bool)

(assert (=> b!3722757 (= e!2304405 tp!1132183)))

(declare-fun b!3722758 () Bool)

(declare-fun tp!1132181 () Bool)

(declare-fun tp!1132182 () Bool)

(assert (=> b!3722758 (= e!2304405 (and tp!1132181 tp!1132182))))

(assert (= (and b!3722482 ((_ is ElementMatch!10885) (reg!11214 r!26968))) b!3722755))

(assert (= (and b!3722482 ((_ is Concat!17156) (reg!11214 r!26968))) b!3722756))

(assert (= (and b!3722482 ((_ is Star!10885) (reg!11214 r!26968))) b!3722757))

(assert (= (and b!3722482 ((_ is Union!10885) (reg!11214 r!26968))) b!3722758))

(declare-fun b!3722764 () Bool)

(declare-fun e!2304406 () Bool)

(declare-fun tp!1132191 () Bool)

(declare-fun tp!1132190 () Bool)

(assert (=> b!3722764 (= e!2304406 (and tp!1132191 tp!1132190))))

(assert (=> b!3722485 (= tp!1132162 e!2304406)))

(declare-fun b!3722763 () Bool)

(assert (=> b!3722763 (= e!2304406 tp_is_empty!18785)))

(declare-fun b!3722765 () Bool)

(declare-fun tp!1132194 () Bool)

(assert (=> b!3722765 (= e!2304406 tp!1132194)))

(declare-fun b!3722766 () Bool)

(declare-fun tp!1132192 () Bool)

(declare-fun tp!1132193 () Bool)

(assert (=> b!3722766 (= e!2304406 (and tp!1132192 tp!1132193))))

(assert (= (and b!3722485 ((_ is ElementMatch!10885) (regOne!22283 r!26968))) b!3722763))

(assert (= (and b!3722485 ((_ is Concat!17156) (regOne!22283 r!26968))) b!3722764))

(assert (= (and b!3722485 ((_ is Star!10885) (regOne!22283 r!26968))) b!3722765))

(assert (= (and b!3722485 ((_ is Union!10885) (regOne!22283 r!26968))) b!3722766))

(declare-fun b!3722768 () Bool)

(declare-fun e!2304407 () Bool)

(declare-fun tp!1132196 () Bool)

(declare-fun tp!1132195 () Bool)

(assert (=> b!3722768 (= e!2304407 (and tp!1132196 tp!1132195))))

(assert (=> b!3722485 (= tp!1132161 e!2304407)))

(declare-fun b!3722767 () Bool)

(assert (=> b!3722767 (= e!2304407 tp_is_empty!18785)))

(declare-fun b!3722769 () Bool)

(declare-fun tp!1132199 () Bool)

(assert (=> b!3722769 (= e!2304407 tp!1132199)))

(declare-fun b!3722770 () Bool)

(declare-fun tp!1132197 () Bool)

(declare-fun tp!1132198 () Bool)

(assert (=> b!3722770 (= e!2304407 (and tp!1132197 tp!1132198))))

(assert (= (and b!3722485 ((_ is ElementMatch!10885) (regTwo!22283 r!26968))) b!3722767))

(assert (= (and b!3722485 ((_ is Concat!17156) (regTwo!22283 r!26968))) b!3722768))

(assert (= (and b!3722485 ((_ is Star!10885) (regTwo!22283 r!26968))) b!3722769))

(assert (= (and b!3722485 ((_ is Union!10885) (regTwo!22283 r!26968))) b!3722770))

(declare-fun b!3722772 () Bool)

(declare-fun e!2304408 () Bool)

(declare-fun tp!1132201 () Bool)

(declare-fun tp!1132200 () Bool)

(assert (=> b!3722772 (= e!2304408 (and tp!1132201 tp!1132200))))

(assert (=> b!3722486 (= tp!1132160 e!2304408)))

(declare-fun b!3722771 () Bool)

(assert (=> b!3722771 (= e!2304408 tp_is_empty!18785)))

(declare-fun b!3722773 () Bool)

(declare-fun tp!1132204 () Bool)

(assert (=> b!3722773 (= e!2304408 tp!1132204)))

(declare-fun b!3722774 () Bool)

(declare-fun tp!1132202 () Bool)

(declare-fun tp!1132203 () Bool)

(assert (=> b!3722774 (= e!2304408 (and tp!1132202 tp!1132203))))

(assert (= (and b!3722486 ((_ is ElementMatch!10885) (regOne!22282 r!26968))) b!3722771))

(assert (= (and b!3722486 ((_ is Concat!17156) (regOne!22282 r!26968))) b!3722772))

(assert (= (and b!3722486 ((_ is Star!10885) (regOne!22282 r!26968))) b!3722773))

(assert (= (and b!3722486 ((_ is Union!10885) (regOne!22282 r!26968))) b!3722774))

(declare-fun b!3722778 () Bool)

(declare-fun e!2304409 () Bool)

(declare-fun tp!1132208 () Bool)

(declare-fun tp!1132206 () Bool)

(assert (=> b!3722778 (= e!2304409 (and tp!1132208 tp!1132206))))

(assert (=> b!3722486 (= tp!1132164 e!2304409)))

(declare-fun b!3722776 () Bool)

(assert (=> b!3722776 (= e!2304409 tp_is_empty!18785)))

(declare-fun b!3722780 () Bool)

(declare-fun tp!1132214 () Bool)

(assert (=> b!3722780 (= e!2304409 tp!1132214)))

(declare-fun b!3722782 () Bool)

(declare-fun tp!1132210 () Bool)

(declare-fun tp!1132212 () Bool)

(assert (=> b!3722782 (= e!2304409 (and tp!1132210 tp!1132212))))

(assert (= (and b!3722486 ((_ is ElementMatch!10885) (regTwo!22282 r!26968))) b!3722776))

(assert (= (and b!3722486 ((_ is Concat!17156) (regTwo!22282 r!26968))) b!3722778))

(assert (= (and b!3722486 ((_ is Star!10885) (regTwo!22282 r!26968))) b!3722780))

(assert (= (and b!3722486 ((_ is Union!10885) (regTwo!22282 r!26968))) b!3722782))

(check-sat (not d!1089528) (not bm!270697) (not bm!270703) (not b!3722681) (not b!3722782) (not b!3722764) (not b!3722758) (not bm!270722) (not b!3722778) (not bm!270748) (not b!3722649) (not b!3722703) tp_is_empty!18785 (not bm!270695) (not b!3722770) (not bm!270678) (not bm!270747) (not d!1089496) (not d!1089534) (not b!3722769) (not b!3722765) (not bm!270701) (not b!3722780) (not b!3722768) (not bm!270696) (not bm!270677) (not d!1089522) (not b!3722756) (not b!3722675) (not b!3722540) (not bm!270732) (not bm!270740) (not b!3722766) (not d!1089524) (not bm!270724) (not b!3722677) (not d!1089526) (not b!3722757) (not bm!270733) (not b!3722774) (not d!1089508) (not bm!270746) (not b!3722711) (not b!3722772) (not d!1089540) (not bm!270738) (not bm!270702) (not b!3722773))
(check-sat)
