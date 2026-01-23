; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248448 () Bool)

(assert start!248448)

(declare-fun b!2570475 () Bool)

(declare-fun e!1622337 () Bool)

(declare-datatypes ((C!15436 0))(
  ( (C!15437 (val!9370 Int)) )
))
(declare-datatypes ((List!29704 0))(
  ( (Nil!29604) (Cons!29604 (h!35024 C!15436) (t!211403 List!29704)) )
))
(declare-fun tl!4068 () List!29704)

(declare-datatypes ((Regex!7639 0))(
  ( (ElementMatch!7639 (c!413611 C!15436)) (Concat!12335 (regOne!15790 Regex!7639) (regTwo!15790 Regex!7639)) (EmptyExpr!7639) (Star!7639 (reg!7968 Regex!7639)) (EmptyLang!7639) (Union!7639 (regOne!15791 Regex!7639) (regTwo!15791 Regex!7639)) )
))
(declare-fun matchR!3582 (Regex!7639 List!29704) Bool)

(assert (=> b!2570475 (= e!1622337 (matchR!3582 EmptyLang!7639 tl!4068))))

(declare-fun b!2570476 () Bool)

(declare-fun e!1622340 () Bool)

(declare-fun tp_is_empty!13133 () Bool)

(declare-fun tp!817877 () Bool)

(assert (=> b!2570476 (= e!1622340 (and tp_is_empty!13133 tp!817877))))

(declare-fun b!2570477 () Bool)

(declare-fun e!1622339 () Bool)

(assert (=> b!2570477 (= e!1622339 tp_is_empty!13133)))

(declare-fun b!2570478 () Bool)

(declare-fun e!1622341 () Bool)

(declare-fun e!1622342 () Bool)

(assert (=> b!2570478 (= e!1622341 e!1622342)))

(declare-fun res!1081445 () Bool)

(assert (=> b!2570478 (=> res!1081445 e!1622342)))

(declare-datatypes ((tuple2!29600 0))(
  ( (tuple2!29601 (_1!17342 List!29704) (_2!17342 List!29704)) )
))
(declare-fun lt!905927 () tuple2!29600)

(declare-fun ++!7278 (List!29704 List!29704) List!29704)

(assert (=> b!2570478 (= res!1081445 (not (= (++!7278 (_1!17342 lt!905927) (_2!17342 lt!905927)) tl!4068)))))

(declare-datatypes ((Option!5920 0))(
  ( (None!5919) (Some!5919 (v!31864 tuple2!29600)) )
))
(declare-fun lt!905924 () Option!5920)

(declare-fun get!9318 (Option!5920) tuple2!29600)

(assert (=> b!2570478 (= lt!905927 (get!9318 lt!905924))))

(declare-fun isDefined!4742 (Option!5920) Bool)

(assert (=> b!2570478 (isDefined!4742 lt!905924)))

(declare-fun lt!905930 () Regex!7639)

(declare-fun r!27340 () Regex!7639)

(declare-fun findConcatSeparation!942 (Regex!7639 Regex!7639 List!29704 List!29704 List!29704) Option!5920)

(assert (=> b!2570478 (= lt!905924 (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) Nil!29604 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43459 0))(
  ( (Unit!43460) )
))
(declare-fun lt!905929 () Unit!43459)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!224 (Regex!7639 Regex!7639 List!29704) Unit!43459)

(assert (=> b!2570478 (= lt!905929 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!224 lt!905930 (regTwo!15790 r!27340) tl!4068))))

(declare-fun b!2570479 () Bool)

(declare-fun tp!817881 () Bool)

(declare-fun tp!817878 () Bool)

(assert (=> b!2570479 (= e!1622339 (and tp!817881 tp!817878))))

(declare-fun b!2570480 () Bool)

(declare-fun tp!817879 () Bool)

(declare-fun tp!817880 () Bool)

(assert (=> b!2570480 (= e!1622339 (and tp!817879 tp!817880))))

(declare-fun res!1081444 () Bool)

(declare-fun e!1622338 () Bool)

(assert (=> start!248448 (=> (not res!1081444) (not e!1622338))))

(declare-fun validRegex!3265 (Regex!7639) Bool)

(assert (=> start!248448 (= res!1081444 (validRegex!3265 r!27340))))

(assert (=> start!248448 e!1622338))

(assert (=> start!248448 e!1622339))

(assert (=> start!248448 tp_is_empty!13133))

(assert (=> start!248448 e!1622340))

(declare-fun b!2570481 () Bool)

(declare-fun e!1622336 () Bool)

(declare-fun lt!905920 () Regex!7639)

(declare-fun nullable!2556 (Regex!7639) Bool)

(assert (=> b!2570481 (= e!1622336 (nullable!2556 lt!905920))))

(declare-fun b!2570482 () Bool)

(assert (=> b!2570482 (= e!1622338 (not e!1622341))))

(declare-fun res!1081447 () Bool)

(assert (=> b!2570482 (=> res!1081447 e!1622341)))

(declare-fun lt!905922 () Bool)

(assert (=> b!2570482 (= res!1081447 (not lt!905922))))

(declare-fun derivative!334 (Regex!7639 List!29704) Regex!7639)

(assert (=> b!2570482 (= (derivative!334 EmptyLang!7639 tl!4068) EmptyLang!7639)))

(declare-fun lt!905923 () Unit!43459)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!68 (Regex!7639 List!29704) Unit!43459)

(assert (=> b!2570482 (= lt!905923 (lemmaEmptyLangDerivativeIsAFixPoint!68 EmptyLang!7639 tl!4068))))

(assert (=> b!2570482 e!1622337))

(declare-fun res!1081443 () Bool)

(assert (=> b!2570482 (=> res!1081443 e!1622337)))

(assert (=> b!2570482 (= res!1081443 lt!905922)))

(declare-fun lt!905925 () Regex!7639)

(assert (=> b!2570482 (= lt!905922 (matchR!3582 lt!905925 tl!4068))))

(declare-fun lt!905921 () Unit!43459)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!228 (Regex!7639 Regex!7639 List!29704) Unit!43459)

(assert (=> b!2570482 (= lt!905921 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!228 lt!905925 EmptyLang!7639 tl!4068))))

(declare-fun lt!905919 () Regex!7639)

(assert (=> b!2570482 (= (matchR!3582 lt!905919 tl!4068) (matchR!3582 (derivative!334 lt!905919 tl!4068) Nil!29604))))

(declare-fun lt!905926 () Unit!43459)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!228 (Regex!7639 List!29704) Unit!43459)

(assert (=> b!2570482 (= lt!905926 (lemmaMatchRIsSameAsWholeDerivativeAndNil!228 lt!905919 tl!4068))))

(assert (=> b!2570482 (= lt!905919 (Union!7639 lt!905925 EmptyLang!7639))))

(assert (=> b!2570482 (= lt!905925 (Concat!12335 lt!905930 (regTwo!15790 r!27340)))))

(declare-fun c!14016 () C!15436)

(declare-fun derivativeStep!2208 (Regex!7639 C!15436) Regex!7639)

(assert (=> b!2570482 (= lt!905930 (derivativeStep!2208 (regOne!15790 r!27340) c!14016))))

(declare-fun b!2570483 () Bool)

(declare-fun res!1081448 () Bool)

(assert (=> b!2570483 (=> res!1081448 e!1622342)))

(assert (=> b!2570483 (= res!1081448 (not (matchR!3582 (regOne!15790 r!27340) (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(declare-fun b!2570484 () Bool)

(declare-fun res!1081451 () Bool)

(assert (=> b!2570484 (=> res!1081451 e!1622342)))

(assert (=> b!2570484 (= res!1081451 (not (matchR!3582 (regTwo!15790 r!27340) (_2!17342 lt!905927))))))

(declare-fun b!2570485 () Bool)

(assert (=> b!2570485 (= e!1622342 e!1622336)))

(declare-fun res!1081442 () Bool)

(assert (=> b!2570485 (=> res!1081442 e!1622336)))

(assert (=> b!2570485 (= res!1081442 (not (validRegex!3265 (regOne!15790 r!27340))))))

(assert (=> b!2570485 (matchR!3582 lt!905920 Nil!29604)))

(assert (=> b!2570485 (= lt!905920 (derivative!334 lt!905930 (_1!17342 lt!905927)))))

(declare-fun lt!905928 () Unit!43459)

(assert (=> b!2570485 (= lt!905928 (lemmaMatchRIsSameAsWholeDerivativeAndNil!228 lt!905930 (_1!17342 lt!905927)))))

(declare-fun b!2570486 () Bool)

(declare-fun res!1081446 () Bool)

(assert (=> b!2570486 (=> (not res!1081446) (not e!1622338))))

(get-info :version)

(assert (=> b!2570486 (= res!1081446 (and (not ((_ is EmptyExpr!7639) r!27340)) (not ((_ is EmptyLang!7639) r!27340)) (not ((_ is ElementMatch!7639) r!27340)) (not ((_ is Union!7639) r!27340)) (not ((_ is Star!7639) r!27340))))))

(declare-fun b!2570487 () Bool)

(declare-fun res!1081450 () Bool)

(assert (=> b!2570487 (=> (not res!1081450) (not e!1622338))))

(assert (=> b!2570487 (= res!1081450 (nullable!2556 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))

(declare-fun b!2570488 () Bool)

(declare-fun tp!817882 () Bool)

(assert (=> b!2570488 (= e!1622339 tp!817882)))

(declare-fun b!2570489 () Bool)

(declare-fun res!1081452 () Bool)

(assert (=> b!2570489 (=> (not res!1081452) (not e!1622338))))

(assert (=> b!2570489 (= res!1081452 (not (nullable!2556 (regOne!15790 r!27340))))))

(declare-fun b!2570490 () Bool)

(declare-fun res!1081449 () Bool)

(assert (=> b!2570490 (=> res!1081449 e!1622342)))

(assert (=> b!2570490 (= res!1081449 (not (matchR!3582 lt!905930 (_1!17342 lt!905927))))))

(assert (= (and start!248448 res!1081444) b!2570487))

(assert (= (and b!2570487 res!1081450) b!2570486))

(assert (= (and b!2570486 res!1081446) b!2570489))

(assert (= (and b!2570489 res!1081452) b!2570482))

(assert (= (and b!2570482 (not res!1081443)) b!2570475))

(assert (= (and b!2570482 (not res!1081447)) b!2570478))

(assert (= (and b!2570478 (not res!1081445)) b!2570490))

(assert (= (and b!2570490 (not res!1081449)) b!2570484))

(assert (= (and b!2570484 (not res!1081451)) b!2570483))

(assert (= (and b!2570483 (not res!1081448)) b!2570485))

(assert (= (and b!2570485 (not res!1081442)) b!2570481))

(assert (= (and start!248448 ((_ is ElementMatch!7639) r!27340)) b!2570477))

(assert (= (and start!248448 ((_ is Concat!12335) r!27340)) b!2570479))

(assert (= (and start!248448 ((_ is Star!7639) r!27340)) b!2570488))

(assert (= (and start!248448 ((_ is Union!7639) r!27340)) b!2570480))

(assert (= (and start!248448 ((_ is Cons!29604) tl!4068)) b!2570476))

(declare-fun m!2906909 () Bool)

(assert (=> b!2570490 m!2906909))

(declare-fun m!2906911 () Bool)

(assert (=> b!2570485 m!2906911))

(declare-fun m!2906913 () Bool)

(assert (=> b!2570485 m!2906913))

(declare-fun m!2906915 () Bool)

(assert (=> b!2570485 m!2906915))

(declare-fun m!2906917 () Bool)

(assert (=> b!2570485 m!2906917))

(declare-fun m!2906919 () Bool)

(assert (=> start!248448 m!2906919))

(declare-fun m!2906921 () Bool)

(assert (=> b!2570487 m!2906921))

(assert (=> b!2570487 m!2906921))

(declare-fun m!2906923 () Bool)

(assert (=> b!2570487 m!2906923))

(assert (=> b!2570487 m!2906923))

(declare-fun m!2906925 () Bool)

(assert (=> b!2570487 m!2906925))

(declare-fun m!2906927 () Bool)

(assert (=> b!2570482 m!2906927))

(declare-fun m!2906929 () Bool)

(assert (=> b!2570482 m!2906929))

(declare-fun m!2906931 () Bool)

(assert (=> b!2570482 m!2906931))

(declare-fun m!2906933 () Bool)

(assert (=> b!2570482 m!2906933))

(declare-fun m!2906935 () Bool)

(assert (=> b!2570482 m!2906935))

(declare-fun m!2906937 () Bool)

(assert (=> b!2570482 m!2906937))

(declare-fun m!2906939 () Bool)

(assert (=> b!2570482 m!2906939))

(assert (=> b!2570482 m!2906937))

(declare-fun m!2906941 () Bool)

(assert (=> b!2570482 m!2906941))

(declare-fun m!2906943 () Bool)

(assert (=> b!2570482 m!2906943))

(declare-fun m!2906945 () Bool)

(assert (=> b!2570484 m!2906945))

(declare-fun m!2906947 () Bool)

(assert (=> b!2570481 m!2906947))

(declare-fun m!2906949 () Bool)

(assert (=> b!2570475 m!2906949))

(declare-fun m!2906951 () Bool)

(assert (=> b!2570489 m!2906951))

(declare-fun m!2906953 () Bool)

(assert (=> b!2570478 m!2906953))

(declare-fun m!2906955 () Bool)

(assert (=> b!2570478 m!2906955))

(declare-fun m!2906957 () Bool)

(assert (=> b!2570478 m!2906957))

(declare-fun m!2906959 () Bool)

(assert (=> b!2570478 m!2906959))

(declare-fun m!2906961 () Bool)

(assert (=> b!2570478 m!2906961))

(declare-fun m!2906963 () Bool)

(assert (=> b!2570483 m!2906963))

(check-sat (not start!248448) tp_is_empty!13133 (not b!2570485) (not b!2570476) (not b!2570478) (not b!2570487) (not b!2570488) (not b!2570479) (not b!2570484) (not b!2570475) (not b!2570480) (not b!2570483) (not b!2570481) (not b!2570490) (not b!2570489) (not b!2570482))
(check-sat)
(get-model)

(declare-fun bm!165783 () Bool)

(declare-fun call!165788 () Bool)

(declare-fun isEmpty!17064 (List!29704) Bool)

(assert (=> bm!165783 (= call!165788 (isEmpty!17064 (Cons!29604 c!14016 (_1!17342 lt!905927))))))

(declare-fun b!2570539 () Bool)

(declare-fun e!1622369 () Bool)

(assert (=> b!2570539 (= e!1622369 (nullable!2556 (regOne!15790 r!27340)))))

(declare-fun e!1622370 () Bool)

(declare-fun b!2570540 () Bool)

(declare-fun head!5844 (List!29704) C!15436)

(assert (=> b!2570540 (= e!1622370 (= (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))) (c!413611 (regOne!15790 r!27340))))))

(declare-fun b!2570541 () Bool)

(declare-fun res!1081474 () Bool)

(declare-fun e!1622371 () Bool)

(assert (=> b!2570541 (=> res!1081474 e!1622371)))

(declare-fun tail!4119 (List!29704) List!29704)

(assert (=> b!2570541 (= res!1081474 (not (isEmpty!17064 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927))))))))

(declare-fun b!2570543 () Bool)

(assert (=> b!2570543 (= e!1622371 (not (= (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))) (c!413611 (regOne!15790 r!27340)))))))

(declare-fun b!2570544 () Bool)

(declare-fun res!1081476 () Bool)

(declare-fun e!1622373 () Bool)

(assert (=> b!2570544 (=> res!1081476 e!1622373)))

(assert (=> b!2570544 (= res!1081476 e!1622370)))

(declare-fun res!1081469 () Bool)

(assert (=> b!2570544 (=> (not res!1081469) (not e!1622370))))

(declare-fun lt!905935 () Bool)

(assert (=> b!2570544 (= res!1081469 lt!905935)))

(declare-fun b!2570545 () Bool)

(declare-fun res!1081470 () Bool)

(assert (=> b!2570545 (=> res!1081470 e!1622373)))

(assert (=> b!2570545 (= res!1081470 (not ((_ is ElementMatch!7639) (regOne!15790 r!27340))))))

(declare-fun e!1622368 () Bool)

(assert (=> b!2570545 (= e!1622368 e!1622373)))

(declare-fun b!2570546 () Bool)

(assert (=> b!2570546 (= e!1622368 (not lt!905935))))

(declare-fun b!2570547 () Bool)

(declare-fun e!1622367 () Bool)

(assert (=> b!2570547 (= e!1622373 e!1622367)))

(declare-fun res!1081472 () Bool)

(assert (=> b!2570547 (=> (not res!1081472) (not e!1622367))))

(assert (=> b!2570547 (= res!1081472 (not lt!905935))))

(declare-fun b!2570548 () Bool)

(assert (=> b!2570548 (= e!1622367 e!1622371)))

(declare-fun res!1081475 () Bool)

(assert (=> b!2570548 (=> res!1081475 e!1622371)))

(assert (=> b!2570548 (= res!1081475 call!165788)))

(declare-fun b!2570542 () Bool)

(declare-fun res!1081473 () Bool)

(assert (=> b!2570542 (=> (not res!1081473) (not e!1622370))))

(assert (=> b!2570542 (= res!1081473 (not call!165788))))

(declare-fun d!727225 () Bool)

(declare-fun e!1622372 () Bool)

(assert (=> d!727225 e!1622372))

(declare-fun c!413630 () Bool)

(assert (=> d!727225 (= c!413630 ((_ is EmptyExpr!7639) (regOne!15790 r!27340)))))

(assert (=> d!727225 (= lt!905935 e!1622369)))

(declare-fun c!413628 () Bool)

(assert (=> d!727225 (= c!413628 (isEmpty!17064 (Cons!29604 c!14016 (_1!17342 lt!905927))))))

(assert (=> d!727225 (validRegex!3265 (regOne!15790 r!27340))))

(assert (=> d!727225 (= (matchR!3582 (regOne!15790 r!27340) (Cons!29604 c!14016 (_1!17342 lt!905927))) lt!905935)))

(declare-fun b!2570549 () Bool)

(assert (=> b!2570549 (= e!1622369 (matchR!3582 (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))) (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(declare-fun b!2570550 () Bool)

(declare-fun res!1081471 () Bool)

(assert (=> b!2570550 (=> (not res!1081471) (not e!1622370))))

(assert (=> b!2570550 (= res!1081471 (isEmpty!17064 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(declare-fun b!2570551 () Bool)

(assert (=> b!2570551 (= e!1622372 e!1622368)))

(declare-fun c!413629 () Bool)

(assert (=> b!2570551 (= c!413629 ((_ is EmptyLang!7639) (regOne!15790 r!27340)))))

(declare-fun b!2570552 () Bool)

(assert (=> b!2570552 (= e!1622372 (= lt!905935 call!165788))))

(assert (= (and d!727225 c!413628) b!2570539))

(assert (= (and d!727225 (not c!413628)) b!2570549))

(assert (= (and d!727225 c!413630) b!2570552))

(assert (= (and d!727225 (not c!413630)) b!2570551))

(assert (= (and b!2570551 c!413629) b!2570546))

(assert (= (and b!2570551 (not c!413629)) b!2570545))

(assert (= (and b!2570545 (not res!1081470)) b!2570544))

(assert (= (and b!2570544 res!1081469) b!2570542))

(assert (= (and b!2570542 res!1081473) b!2570550))

(assert (= (and b!2570550 res!1081471) b!2570540))

(assert (= (and b!2570544 (not res!1081476)) b!2570547))

(assert (= (and b!2570547 res!1081472) b!2570548))

(assert (= (and b!2570548 (not res!1081475)) b!2570541))

(assert (= (and b!2570541 (not res!1081474)) b!2570543))

(assert (= (or b!2570552 b!2570542 b!2570548) bm!165783))

(declare-fun m!2906967 () Bool)

(assert (=> b!2570540 m!2906967))

(declare-fun m!2906969 () Bool)

(assert (=> bm!165783 m!2906969))

(declare-fun m!2906971 () Bool)

(assert (=> b!2570550 m!2906971))

(assert (=> b!2570550 m!2906971))

(declare-fun m!2906973 () Bool)

(assert (=> b!2570550 m!2906973))

(assert (=> b!2570549 m!2906967))

(assert (=> b!2570549 m!2906967))

(declare-fun m!2906975 () Bool)

(assert (=> b!2570549 m!2906975))

(assert (=> b!2570549 m!2906971))

(assert (=> b!2570549 m!2906975))

(assert (=> b!2570549 m!2906971))

(declare-fun m!2906977 () Bool)

(assert (=> b!2570549 m!2906977))

(assert (=> b!2570541 m!2906971))

(assert (=> b!2570541 m!2906971))

(assert (=> b!2570541 m!2906973))

(assert (=> d!727225 m!2906969))

(assert (=> d!727225 m!2906911))

(assert (=> b!2570539 m!2906951))

(assert (=> b!2570543 m!2906967))

(assert (=> b!2570483 d!727225))

(declare-fun b!2570579 () Bool)

(declare-fun res!1081482 () Bool)

(declare-fun e!1622386 () Bool)

(assert (=> b!2570579 (=> (not res!1081482) (not e!1622386))))

(declare-fun lt!905942 () List!29704)

(declare-fun size!22963 (List!29704) Int)

(assert (=> b!2570579 (= res!1081482 (= (size!22963 lt!905942) (+ (size!22963 (_1!17342 lt!905927)) (size!22963 (_2!17342 lt!905927)))))))

(declare-fun d!727231 () Bool)

(assert (=> d!727231 e!1622386))

(declare-fun res!1081481 () Bool)

(assert (=> d!727231 (=> (not res!1081481) (not e!1622386))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4083 (List!29704) (InoxSet C!15436))

(assert (=> d!727231 (= res!1081481 (= (content!4083 lt!905942) ((_ map or) (content!4083 (_1!17342 lt!905927)) (content!4083 (_2!17342 lt!905927)))))))

(declare-fun e!1622387 () List!29704)

(assert (=> d!727231 (= lt!905942 e!1622387)))

(declare-fun c!413641 () Bool)

(assert (=> d!727231 (= c!413641 ((_ is Nil!29604) (_1!17342 lt!905927)))))

(assert (=> d!727231 (= (++!7278 (_1!17342 lt!905927) (_2!17342 lt!905927)) lt!905942)))

(declare-fun b!2570580 () Bool)

(assert (=> b!2570580 (= e!1622386 (or (not (= (_2!17342 lt!905927) Nil!29604)) (= lt!905942 (_1!17342 lt!905927))))))

(declare-fun b!2570577 () Bool)

(assert (=> b!2570577 (= e!1622387 (_2!17342 lt!905927))))

(declare-fun b!2570578 () Bool)

(assert (=> b!2570578 (= e!1622387 (Cons!29604 (h!35024 (_1!17342 lt!905927)) (++!7278 (t!211403 (_1!17342 lt!905927)) (_2!17342 lt!905927))))))

(assert (= (and d!727231 c!413641) b!2570577))

(assert (= (and d!727231 (not c!413641)) b!2570578))

(assert (= (and d!727231 res!1081481) b!2570579))

(assert (= (and b!2570579 res!1081482) b!2570580))

(declare-fun m!2906995 () Bool)

(assert (=> b!2570579 m!2906995))

(declare-fun m!2906997 () Bool)

(assert (=> b!2570579 m!2906997))

(declare-fun m!2906999 () Bool)

(assert (=> b!2570579 m!2906999))

(declare-fun m!2907001 () Bool)

(assert (=> d!727231 m!2907001))

(declare-fun m!2907003 () Bool)

(assert (=> d!727231 m!2907003))

(declare-fun m!2907005 () Bool)

(assert (=> d!727231 m!2907005))

(declare-fun m!2907007 () Bool)

(assert (=> b!2570578 m!2907007))

(assert (=> b!2570478 d!727231))

(declare-fun d!727237 () Bool)

(assert (=> d!727237 (= (get!9318 lt!905924) (v!31864 lt!905924))))

(assert (=> b!2570478 d!727237))

(declare-fun d!727239 () Bool)

(assert (=> d!727239 (isDefined!4742 (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) Nil!29604 tl!4068 tl!4068))))

(declare-fun lt!905948 () Unit!43459)

(declare-fun choose!15163 (Regex!7639 Regex!7639 List!29704) Unit!43459)

(assert (=> d!727239 (= lt!905948 (choose!15163 lt!905930 (regTwo!15790 r!27340) tl!4068))))

(assert (=> d!727239 (validRegex!3265 lt!905930)))

(assert (=> d!727239 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!224 lt!905930 (regTwo!15790 r!27340) tl!4068) lt!905948)))

(declare-fun bs!470019 () Bool)

(assert (= bs!470019 d!727239))

(assert (=> bs!470019 m!2906961))

(assert (=> bs!470019 m!2906961))

(declare-fun m!2907013 () Bool)

(assert (=> bs!470019 m!2907013))

(declare-fun m!2907015 () Bool)

(assert (=> bs!470019 m!2907015))

(declare-fun m!2907017 () Bool)

(assert (=> bs!470019 m!2907017))

(assert (=> b!2570478 d!727239))

(declare-fun d!727243 () Bool)

(declare-fun isEmpty!17065 (Option!5920) Bool)

(assert (=> d!727243 (= (isDefined!4742 lt!905924) (not (isEmpty!17065 lt!905924)))))

(declare-fun bs!470020 () Bool)

(assert (= bs!470020 d!727243))

(declare-fun m!2907019 () Bool)

(assert (=> bs!470020 m!2907019))

(assert (=> b!2570478 d!727243))

(declare-fun b!2570721 () Bool)

(declare-fun res!1081566 () Bool)

(declare-fun e!1622466 () Bool)

(assert (=> b!2570721 (=> (not res!1081566) (not e!1622466))))

(declare-fun lt!905973 () Option!5920)

(assert (=> b!2570721 (= res!1081566 (matchR!3582 lt!905930 (_1!17342 (get!9318 lt!905973))))))

(declare-fun b!2570722 () Bool)

(declare-fun lt!905971 () Unit!43459)

(declare-fun lt!905972 () Unit!43459)

(assert (=> b!2570722 (= lt!905971 lt!905972)))

(assert (=> b!2570722 (= (++!7278 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (t!211403 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!808 (List!29704 C!15436 List!29704 List!29704) Unit!43459)

(assert (=> b!2570722 (= lt!905972 (lemmaMoveElementToOtherListKeepsConcatEq!808 Nil!29604 (h!35024 tl!4068) (t!211403 tl!4068) tl!4068))))

(declare-fun e!1622462 () Option!5920)

(assert (=> b!2570722 (= e!1622462 (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (t!211403 tl!4068) tl!4068))))

(declare-fun b!2570723 () Bool)

(declare-fun e!1622464 () Bool)

(assert (=> b!2570723 (= e!1622464 (matchR!3582 (regTwo!15790 r!27340) tl!4068))))

(declare-fun b!2570724 () Bool)

(declare-fun e!1622463 () Option!5920)

(assert (=> b!2570724 (= e!1622463 (Some!5919 (tuple2!29601 Nil!29604 tl!4068)))))

(declare-fun b!2570725 () Bool)

(assert (=> b!2570725 (= e!1622466 (= (++!7278 (_1!17342 (get!9318 lt!905973)) (_2!17342 (get!9318 lt!905973))) tl!4068))))

(declare-fun b!2570726 () Bool)

(assert (=> b!2570726 (= e!1622462 None!5919)))

(declare-fun b!2570727 () Bool)

(assert (=> b!2570727 (= e!1622463 e!1622462)))

(declare-fun c!413673 () Bool)

(assert (=> b!2570727 (= c!413673 ((_ is Nil!29604) tl!4068))))

(declare-fun d!727245 () Bool)

(declare-fun e!1622465 () Bool)

(assert (=> d!727245 e!1622465))

(declare-fun res!1081564 () Bool)

(assert (=> d!727245 (=> res!1081564 e!1622465)))

(assert (=> d!727245 (= res!1081564 e!1622466)))

(declare-fun res!1081565 () Bool)

(assert (=> d!727245 (=> (not res!1081565) (not e!1622466))))

(assert (=> d!727245 (= res!1081565 (isDefined!4742 lt!905973))))

(assert (=> d!727245 (= lt!905973 e!1622463)))

(declare-fun c!413672 () Bool)

(assert (=> d!727245 (= c!413672 e!1622464)))

(declare-fun res!1081563 () Bool)

(assert (=> d!727245 (=> (not res!1081563) (not e!1622464))))

(assert (=> d!727245 (= res!1081563 (matchR!3582 lt!905930 Nil!29604))))

(assert (=> d!727245 (validRegex!3265 lt!905930)))

(assert (=> d!727245 (= (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) Nil!29604 tl!4068 tl!4068) lt!905973)))

(declare-fun b!2570728 () Bool)

(declare-fun res!1081567 () Bool)

(assert (=> b!2570728 (=> (not res!1081567) (not e!1622466))))

(assert (=> b!2570728 (= res!1081567 (matchR!3582 (regTwo!15790 r!27340) (_2!17342 (get!9318 lt!905973))))))

(declare-fun b!2570729 () Bool)

(assert (=> b!2570729 (= e!1622465 (not (isDefined!4742 lt!905973)))))

(assert (= (and d!727245 res!1081563) b!2570723))

(assert (= (and d!727245 c!413672) b!2570724))

(assert (= (and d!727245 (not c!413672)) b!2570727))

(assert (= (and b!2570727 c!413673) b!2570726))

(assert (= (and b!2570727 (not c!413673)) b!2570722))

(assert (= (and d!727245 res!1081565) b!2570721))

(assert (= (and b!2570721 res!1081566) b!2570728))

(assert (= (and b!2570728 res!1081567) b!2570725))

(assert (= (and d!727245 (not res!1081564)) b!2570729))

(declare-fun m!2907121 () Bool)

(assert (=> b!2570729 m!2907121))

(declare-fun m!2907123 () Bool)

(assert (=> b!2570723 m!2907123))

(declare-fun m!2907125 () Bool)

(assert (=> b!2570728 m!2907125))

(declare-fun m!2907127 () Bool)

(assert (=> b!2570728 m!2907127))

(assert (=> d!727245 m!2907121))

(declare-fun m!2907129 () Bool)

(assert (=> d!727245 m!2907129))

(assert (=> d!727245 m!2907017))

(assert (=> b!2570721 m!2907125))

(declare-fun m!2907133 () Bool)

(assert (=> b!2570721 m!2907133))

(declare-fun m!2907139 () Bool)

(assert (=> b!2570722 m!2907139))

(assert (=> b!2570722 m!2907139))

(declare-fun m!2907147 () Bool)

(assert (=> b!2570722 m!2907147))

(declare-fun m!2907151 () Bool)

(assert (=> b!2570722 m!2907151))

(assert (=> b!2570722 m!2907139))

(declare-fun m!2907155 () Bool)

(assert (=> b!2570722 m!2907155))

(assert (=> b!2570725 m!2907125))

(declare-fun m!2907157 () Bool)

(assert (=> b!2570725 m!2907157))

(assert (=> b!2570478 d!727245))

(declare-fun d!727275 () Bool)

(declare-fun nullableFct!781 (Regex!7639) Bool)

(assert (=> d!727275 (= (nullable!2556 (regOne!15790 r!27340)) (nullableFct!781 (regOne!15790 r!27340)))))

(declare-fun bs!470025 () Bool)

(assert (= bs!470025 d!727275))

(declare-fun m!2907159 () Bool)

(assert (=> bs!470025 m!2907159))

(assert (=> b!2570489 d!727275))

(declare-fun bm!165801 () Bool)

(declare-fun call!165806 () Bool)

(assert (=> bm!165801 (= call!165806 (isEmpty!17064 (_2!17342 lt!905927)))))

(declare-fun b!2570754 () Bool)

(declare-fun e!1622481 () Bool)

(assert (=> b!2570754 (= e!1622481 (nullable!2556 (regTwo!15790 r!27340)))))

(declare-fun b!2570755 () Bool)

(declare-fun e!1622482 () Bool)

(assert (=> b!2570755 (= e!1622482 (= (head!5844 (_2!17342 lt!905927)) (c!413611 (regTwo!15790 r!27340))))))

(declare-fun b!2570756 () Bool)

(declare-fun res!1081581 () Bool)

(declare-fun e!1622483 () Bool)

(assert (=> b!2570756 (=> res!1081581 e!1622483)))

(assert (=> b!2570756 (= res!1081581 (not (isEmpty!17064 (tail!4119 (_2!17342 lt!905927)))))))

(declare-fun b!2570758 () Bool)

(assert (=> b!2570758 (= e!1622483 (not (= (head!5844 (_2!17342 lt!905927)) (c!413611 (regTwo!15790 r!27340)))))))

(declare-fun b!2570759 () Bool)

(declare-fun res!1081583 () Bool)

(declare-fun e!1622485 () Bool)

(assert (=> b!2570759 (=> res!1081583 e!1622485)))

(assert (=> b!2570759 (= res!1081583 e!1622482)))

(declare-fun res!1081576 () Bool)

(assert (=> b!2570759 (=> (not res!1081576) (not e!1622482))))

(declare-fun lt!905976 () Bool)

(assert (=> b!2570759 (= res!1081576 lt!905976)))

(declare-fun b!2570760 () Bool)

(declare-fun res!1081577 () Bool)

(assert (=> b!2570760 (=> res!1081577 e!1622485)))

(assert (=> b!2570760 (= res!1081577 (not ((_ is ElementMatch!7639) (regTwo!15790 r!27340))))))

(declare-fun e!1622480 () Bool)

(assert (=> b!2570760 (= e!1622480 e!1622485)))

(declare-fun b!2570761 () Bool)

(assert (=> b!2570761 (= e!1622480 (not lt!905976))))

(declare-fun b!2570762 () Bool)

(declare-fun e!1622479 () Bool)

(assert (=> b!2570762 (= e!1622485 e!1622479)))

(declare-fun res!1081579 () Bool)

(assert (=> b!2570762 (=> (not res!1081579) (not e!1622479))))

(assert (=> b!2570762 (= res!1081579 (not lt!905976))))

(declare-fun b!2570763 () Bool)

(assert (=> b!2570763 (= e!1622479 e!1622483)))

(declare-fun res!1081582 () Bool)

(assert (=> b!2570763 (=> res!1081582 e!1622483)))

(assert (=> b!2570763 (= res!1081582 call!165806)))

(declare-fun b!2570757 () Bool)

(declare-fun res!1081580 () Bool)

(assert (=> b!2570757 (=> (not res!1081580) (not e!1622482))))

(assert (=> b!2570757 (= res!1081580 (not call!165806))))

(declare-fun d!727277 () Bool)

(declare-fun e!1622484 () Bool)

(assert (=> d!727277 e!1622484))

(declare-fun c!413684 () Bool)

(assert (=> d!727277 (= c!413684 ((_ is EmptyExpr!7639) (regTwo!15790 r!27340)))))

(assert (=> d!727277 (= lt!905976 e!1622481)))

(declare-fun c!413682 () Bool)

(assert (=> d!727277 (= c!413682 (isEmpty!17064 (_2!17342 lt!905927)))))

(assert (=> d!727277 (validRegex!3265 (regTwo!15790 r!27340))))

(assert (=> d!727277 (= (matchR!3582 (regTwo!15790 r!27340) (_2!17342 lt!905927)) lt!905976)))

(declare-fun b!2570764 () Bool)

(assert (=> b!2570764 (= e!1622481 (matchR!3582 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927))) (tail!4119 (_2!17342 lt!905927))))))

(declare-fun b!2570765 () Bool)

(declare-fun res!1081578 () Bool)

(assert (=> b!2570765 (=> (not res!1081578) (not e!1622482))))

(assert (=> b!2570765 (= res!1081578 (isEmpty!17064 (tail!4119 (_2!17342 lt!905927))))))

(declare-fun b!2570766 () Bool)

(assert (=> b!2570766 (= e!1622484 e!1622480)))

(declare-fun c!413683 () Bool)

(assert (=> b!2570766 (= c!413683 ((_ is EmptyLang!7639) (regTwo!15790 r!27340)))))

(declare-fun b!2570767 () Bool)

(assert (=> b!2570767 (= e!1622484 (= lt!905976 call!165806))))

(assert (= (and d!727277 c!413682) b!2570754))

(assert (= (and d!727277 (not c!413682)) b!2570764))

(assert (= (and d!727277 c!413684) b!2570767))

(assert (= (and d!727277 (not c!413684)) b!2570766))

(assert (= (and b!2570766 c!413683) b!2570761))

(assert (= (and b!2570766 (not c!413683)) b!2570760))

(assert (= (and b!2570760 (not res!1081577)) b!2570759))

(assert (= (and b!2570759 res!1081576) b!2570757))

(assert (= (and b!2570757 res!1081580) b!2570765))

(assert (= (and b!2570765 res!1081578) b!2570755))

(assert (= (and b!2570759 (not res!1081583)) b!2570762))

(assert (= (and b!2570762 res!1081579) b!2570763))

(assert (= (and b!2570763 (not res!1081582)) b!2570756))

(assert (= (and b!2570756 (not res!1081581)) b!2570758))

(assert (= (or b!2570767 b!2570757 b!2570763) bm!165801))

(declare-fun m!2907165 () Bool)

(assert (=> b!2570755 m!2907165))

(declare-fun m!2907167 () Bool)

(assert (=> bm!165801 m!2907167))

(declare-fun m!2907169 () Bool)

(assert (=> b!2570765 m!2907169))

(assert (=> b!2570765 m!2907169))

(declare-fun m!2907171 () Bool)

(assert (=> b!2570765 m!2907171))

(assert (=> b!2570764 m!2907165))

(assert (=> b!2570764 m!2907165))

(declare-fun m!2907173 () Bool)

(assert (=> b!2570764 m!2907173))

(assert (=> b!2570764 m!2907169))

(assert (=> b!2570764 m!2907173))

(assert (=> b!2570764 m!2907169))

(declare-fun m!2907175 () Bool)

(assert (=> b!2570764 m!2907175))

(assert (=> b!2570756 m!2907169))

(assert (=> b!2570756 m!2907169))

(assert (=> b!2570756 m!2907171))

(assert (=> d!727277 m!2907167))

(declare-fun m!2907177 () Bool)

(assert (=> d!727277 m!2907177))

(declare-fun m!2907179 () Bool)

(assert (=> b!2570754 m!2907179))

(assert (=> b!2570758 m!2907165))

(assert (=> b!2570484 d!727277))

(declare-fun bm!165802 () Bool)

(declare-fun call!165807 () Bool)

(assert (=> bm!165802 (= call!165807 (isEmpty!17064 (_1!17342 lt!905927)))))

(declare-fun b!2570768 () Bool)

(declare-fun e!1622488 () Bool)

(assert (=> b!2570768 (= e!1622488 (nullable!2556 lt!905930))))

(declare-fun b!2570769 () Bool)

(declare-fun e!1622489 () Bool)

(assert (=> b!2570769 (= e!1622489 (= (head!5844 (_1!17342 lt!905927)) (c!413611 lt!905930)))))

(declare-fun b!2570770 () Bool)

(declare-fun res!1081589 () Bool)

(declare-fun e!1622490 () Bool)

(assert (=> b!2570770 (=> res!1081589 e!1622490)))

(assert (=> b!2570770 (= res!1081589 (not (isEmpty!17064 (tail!4119 (_1!17342 lt!905927)))))))

(declare-fun b!2570772 () Bool)

(assert (=> b!2570772 (= e!1622490 (not (= (head!5844 (_1!17342 lt!905927)) (c!413611 lt!905930))))))

(declare-fun b!2570773 () Bool)

(declare-fun res!1081591 () Bool)

(declare-fun e!1622492 () Bool)

(assert (=> b!2570773 (=> res!1081591 e!1622492)))

(assert (=> b!2570773 (= res!1081591 e!1622489)))

(declare-fun res!1081584 () Bool)

(assert (=> b!2570773 (=> (not res!1081584) (not e!1622489))))

(declare-fun lt!905980 () Bool)

(assert (=> b!2570773 (= res!1081584 lt!905980)))

(declare-fun b!2570774 () Bool)

(declare-fun res!1081585 () Bool)

(assert (=> b!2570774 (=> res!1081585 e!1622492)))

(assert (=> b!2570774 (= res!1081585 (not ((_ is ElementMatch!7639) lt!905930)))))

(declare-fun e!1622487 () Bool)

(assert (=> b!2570774 (= e!1622487 e!1622492)))

(declare-fun b!2570775 () Bool)

(assert (=> b!2570775 (= e!1622487 (not lt!905980))))

(declare-fun b!2570776 () Bool)

(declare-fun e!1622486 () Bool)

(assert (=> b!2570776 (= e!1622492 e!1622486)))

(declare-fun res!1081587 () Bool)

(assert (=> b!2570776 (=> (not res!1081587) (not e!1622486))))

(assert (=> b!2570776 (= res!1081587 (not lt!905980))))

(declare-fun b!2570777 () Bool)

(assert (=> b!2570777 (= e!1622486 e!1622490)))

(declare-fun res!1081590 () Bool)

(assert (=> b!2570777 (=> res!1081590 e!1622490)))

(assert (=> b!2570777 (= res!1081590 call!165807)))

(declare-fun b!2570771 () Bool)

(declare-fun res!1081588 () Bool)

(assert (=> b!2570771 (=> (not res!1081588) (not e!1622489))))

(assert (=> b!2570771 (= res!1081588 (not call!165807))))

(declare-fun d!727283 () Bool)

(declare-fun e!1622491 () Bool)

(assert (=> d!727283 e!1622491))

(declare-fun c!413687 () Bool)

(assert (=> d!727283 (= c!413687 ((_ is EmptyExpr!7639) lt!905930))))

(assert (=> d!727283 (= lt!905980 e!1622488)))

(declare-fun c!413685 () Bool)

(assert (=> d!727283 (= c!413685 (isEmpty!17064 (_1!17342 lt!905927)))))

(assert (=> d!727283 (validRegex!3265 lt!905930)))

(assert (=> d!727283 (= (matchR!3582 lt!905930 (_1!17342 lt!905927)) lt!905980)))

(declare-fun b!2570778 () Bool)

(assert (=> b!2570778 (= e!1622488 (matchR!3582 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927))) (tail!4119 (_1!17342 lt!905927))))))

(declare-fun b!2570779 () Bool)

(declare-fun res!1081586 () Bool)

(assert (=> b!2570779 (=> (not res!1081586) (not e!1622489))))

(assert (=> b!2570779 (= res!1081586 (isEmpty!17064 (tail!4119 (_1!17342 lt!905927))))))

(declare-fun b!2570780 () Bool)

(assert (=> b!2570780 (= e!1622491 e!1622487)))

(declare-fun c!413686 () Bool)

(assert (=> b!2570780 (= c!413686 ((_ is EmptyLang!7639) lt!905930))))

(declare-fun b!2570781 () Bool)

(assert (=> b!2570781 (= e!1622491 (= lt!905980 call!165807))))

(assert (= (and d!727283 c!413685) b!2570768))

(assert (= (and d!727283 (not c!413685)) b!2570778))

(assert (= (and d!727283 c!413687) b!2570781))

(assert (= (and d!727283 (not c!413687)) b!2570780))

(assert (= (and b!2570780 c!413686) b!2570775))

(assert (= (and b!2570780 (not c!413686)) b!2570774))

(assert (= (and b!2570774 (not res!1081585)) b!2570773))

(assert (= (and b!2570773 res!1081584) b!2570771))

(assert (= (and b!2570771 res!1081588) b!2570779))

(assert (= (and b!2570779 res!1081586) b!2570769))

(assert (= (and b!2570773 (not res!1081591)) b!2570776))

(assert (= (and b!2570776 res!1081587) b!2570777))

(assert (= (and b!2570777 (not res!1081590)) b!2570770))

(assert (= (and b!2570770 (not res!1081589)) b!2570772))

(assert (= (or b!2570781 b!2570771 b!2570777) bm!165802))

(declare-fun m!2907183 () Bool)

(assert (=> b!2570769 m!2907183))

(declare-fun m!2907185 () Bool)

(assert (=> bm!165802 m!2907185))

(declare-fun m!2907187 () Bool)

(assert (=> b!2570779 m!2907187))

(assert (=> b!2570779 m!2907187))

(declare-fun m!2907189 () Bool)

(assert (=> b!2570779 m!2907189))

(assert (=> b!2570778 m!2907183))

(assert (=> b!2570778 m!2907183))

(declare-fun m!2907191 () Bool)

(assert (=> b!2570778 m!2907191))

(assert (=> b!2570778 m!2907187))

(assert (=> b!2570778 m!2907191))

(assert (=> b!2570778 m!2907187))

(declare-fun m!2907193 () Bool)

(assert (=> b!2570778 m!2907193))

(assert (=> b!2570770 m!2907187))

(assert (=> b!2570770 m!2907187))

(assert (=> b!2570770 m!2907189))

(assert (=> d!727283 m!2907185))

(assert (=> d!727283 m!2907017))

(declare-fun m!2907195 () Bool)

(assert (=> b!2570768 m!2907195))

(assert (=> b!2570772 m!2907183))

(assert (=> b!2570490 d!727283))

(declare-fun c!413700 () Bool)

(declare-fun bm!165809 () Bool)

(declare-fun c!413699 () Bool)

(declare-fun call!165815 () Bool)

(assert (=> bm!165809 (= call!165815 (validRegex!3265 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(declare-fun d!727287 () Bool)

(declare-fun res!1081618 () Bool)

(declare-fun e!1622525 () Bool)

(assert (=> d!727287 (=> res!1081618 e!1622525)))

(assert (=> d!727287 (= res!1081618 ((_ is ElementMatch!7639) (regOne!15790 r!27340)))))

(assert (=> d!727287 (= (validRegex!3265 (regOne!15790 r!27340)) e!1622525)))

(declare-fun b!2570830 () Bool)

(declare-fun e!1622524 () Bool)

(declare-fun e!1622527 () Bool)

(assert (=> b!2570830 (= e!1622524 e!1622527)))

(declare-fun res!1081620 () Bool)

(assert (=> b!2570830 (= res!1081620 (not (nullable!2556 (reg!7968 (regOne!15790 r!27340)))))))

(assert (=> b!2570830 (=> (not res!1081620) (not e!1622527))))

(declare-fun b!2570831 () Bool)

(declare-fun e!1622523 () Bool)

(declare-fun e!1622529 () Bool)

(assert (=> b!2570831 (= e!1622523 e!1622529)))

(declare-fun res!1081619 () Bool)

(assert (=> b!2570831 (=> (not res!1081619) (not e!1622529))))

(declare-fun call!165814 () Bool)

(assert (=> b!2570831 (= res!1081619 call!165814)))

(declare-fun b!2570832 () Bool)

(declare-fun call!165816 () Bool)

(assert (=> b!2570832 (= e!1622529 call!165816)))

(declare-fun b!2570833 () Bool)

(declare-fun res!1081622 () Bool)

(declare-fun e!1622526 () Bool)

(assert (=> b!2570833 (=> (not res!1081622) (not e!1622526))))

(assert (=> b!2570833 (= res!1081622 call!165816)))

(declare-fun e!1622528 () Bool)

(assert (=> b!2570833 (= e!1622528 e!1622526)))

(declare-fun b!2570834 () Bool)

(assert (=> b!2570834 (= e!1622526 call!165814)))

(declare-fun b!2570835 () Bool)

(assert (=> b!2570835 (= e!1622524 e!1622528)))

(assert (=> b!2570835 (= c!413700 ((_ is Union!7639) (regOne!15790 r!27340)))))

(declare-fun b!2570836 () Bool)

(assert (=> b!2570836 (= e!1622527 call!165815)))

(declare-fun bm!165810 () Bool)

(assert (=> bm!165810 (= call!165816 (validRegex!3265 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(declare-fun b!2570837 () Bool)

(assert (=> b!2570837 (= e!1622525 e!1622524)))

(assert (=> b!2570837 (= c!413699 ((_ is Star!7639) (regOne!15790 r!27340)))))

(declare-fun b!2570838 () Bool)

(declare-fun res!1081621 () Bool)

(assert (=> b!2570838 (=> res!1081621 e!1622523)))

(assert (=> b!2570838 (= res!1081621 (not ((_ is Concat!12335) (regOne!15790 r!27340))))))

(assert (=> b!2570838 (= e!1622528 e!1622523)))

(declare-fun bm!165811 () Bool)

(assert (=> bm!165811 (= call!165814 call!165815)))

(assert (= (and d!727287 (not res!1081618)) b!2570837))

(assert (= (and b!2570837 c!413699) b!2570830))

(assert (= (and b!2570837 (not c!413699)) b!2570835))

(assert (= (and b!2570830 res!1081620) b!2570836))

(assert (= (and b!2570835 c!413700) b!2570833))

(assert (= (and b!2570835 (not c!413700)) b!2570838))

(assert (= (and b!2570833 res!1081622) b!2570834))

(assert (= (and b!2570838 (not res!1081621)) b!2570831))

(assert (= (and b!2570831 res!1081619) b!2570832))

(assert (= (or b!2570833 b!2570832) bm!165810))

(assert (= (or b!2570834 b!2570831) bm!165811))

(assert (= (or b!2570836 bm!165811) bm!165809))

(declare-fun m!2907211 () Bool)

(assert (=> bm!165809 m!2907211))

(declare-fun m!2907213 () Bool)

(assert (=> b!2570830 m!2907213))

(declare-fun m!2907217 () Bool)

(assert (=> bm!165810 m!2907217))

(assert (=> b!2570485 d!727287))

(declare-fun bm!165812 () Bool)

(declare-fun call!165817 () Bool)

(assert (=> bm!165812 (= call!165817 (isEmpty!17064 Nil!29604))))

(declare-fun b!2570848 () Bool)

(declare-fun e!1622537 () Bool)

(assert (=> b!2570848 (= e!1622537 (nullable!2556 lt!905920))))

(declare-fun b!2570849 () Bool)

(declare-fun e!1622538 () Bool)

(assert (=> b!2570849 (= e!1622538 (= (head!5844 Nil!29604) (c!413611 lt!905920)))))

(declare-fun b!2570850 () Bool)

(declare-fun res!1081633 () Bool)

(declare-fun e!1622539 () Bool)

(assert (=> b!2570850 (=> res!1081633 e!1622539)))

(assert (=> b!2570850 (= res!1081633 (not (isEmpty!17064 (tail!4119 Nil!29604))))))

(declare-fun b!2570852 () Bool)

(assert (=> b!2570852 (= e!1622539 (not (= (head!5844 Nil!29604) (c!413611 lt!905920))))))

(declare-fun b!2570853 () Bool)

(declare-fun res!1081635 () Bool)

(declare-fun e!1622541 () Bool)

(assert (=> b!2570853 (=> res!1081635 e!1622541)))

(assert (=> b!2570853 (= res!1081635 e!1622538)))

(declare-fun res!1081628 () Bool)

(assert (=> b!2570853 (=> (not res!1081628) (not e!1622538))))

(declare-fun lt!905993 () Bool)

(assert (=> b!2570853 (= res!1081628 lt!905993)))

(declare-fun b!2570854 () Bool)

(declare-fun res!1081629 () Bool)

(assert (=> b!2570854 (=> res!1081629 e!1622541)))

(assert (=> b!2570854 (= res!1081629 (not ((_ is ElementMatch!7639) lt!905920)))))

(declare-fun e!1622536 () Bool)

(assert (=> b!2570854 (= e!1622536 e!1622541)))

(declare-fun b!2570855 () Bool)

(assert (=> b!2570855 (= e!1622536 (not lt!905993))))

(declare-fun b!2570856 () Bool)

(declare-fun e!1622535 () Bool)

(assert (=> b!2570856 (= e!1622541 e!1622535)))

(declare-fun res!1081631 () Bool)

(assert (=> b!2570856 (=> (not res!1081631) (not e!1622535))))

(assert (=> b!2570856 (= res!1081631 (not lt!905993))))

(declare-fun b!2570857 () Bool)

(assert (=> b!2570857 (= e!1622535 e!1622539)))

(declare-fun res!1081634 () Bool)

(assert (=> b!2570857 (=> res!1081634 e!1622539)))

(assert (=> b!2570857 (= res!1081634 call!165817)))

(declare-fun b!2570851 () Bool)

(declare-fun res!1081632 () Bool)

(assert (=> b!2570851 (=> (not res!1081632) (not e!1622538))))

(assert (=> b!2570851 (= res!1081632 (not call!165817))))

(declare-fun d!727291 () Bool)

(declare-fun e!1622540 () Bool)

(assert (=> d!727291 e!1622540))

(declare-fun c!413705 () Bool)

(assert (=> d!727291 (= c!413705 ((_ is EmptyExpr!7639) lt!905920))))

(assert (=> d!727291 (= lt!905993 e!1622537)))

(declare-fun c!413703 () Bool)

(assert (=> d!727291 (= c!413703 (isEmpty!17064 Nil!29604))))

(assert (=> d!727291 (validRegex!3265 lt!905920)))

(assert (=> d!727291 (= (matchR!3582 lt!905920 Nil!29604) lt!905993)))

(declare-fun b!2570858 () Bool)

(assert (=> b!2570858 (= e!1622537 (matchR!3582 (derivativeStep!2208 lt!905920 (head!5844 Nil!29604)) (tail!4119 Nil!29604)))))

(declare-fun b!2570859 () Bool)

(declare-fun res!1081630 () Bool)

(assert (=> b!2570859 (=> (not res!1081630) (not e!1622538))))

(assert (=> b!2570859 (= res!1081630 (isEmpty!17064 (tail!4119 Nil!29604)))))

(declare-fun b!2570860 () Bool)

(assert (=> b!2570860 (= e!1622540 e!1622536)))

(declare-fun c!413704 () Bool)

(assert (=> b!2570860 (= c!413704 ((_ is EmptyLang!7639) lt!905920))))

(declare-fun b!2570861 () Bool)

(assert (=> b!2570861 (= e!1622540 (= lt!905993 call!165817))))

(assert (= (and d!727291 c!413703) b!2570848))

(assert (= (and d!727291 (not c!413703)) b!2570858))

(assert (= (and d!727291 c!413705) b!2570861))

(assert (= (and d!727291 (not c!413705)) b!2570860))

(assert (= (and b!2570860 c!413704) b!2570855))

(assert (= (and b!2570860 (not c!413704)) b!2570854))

(assert (= (and b!2570854 (not res!1081629)) b!2570853))

(assert (= (and b!2570853 res!1081628) b!2570851))

(assert (= (and b!2570851 res!1081632) b!2570859))

(assert (= (and b!2570859 res!1081630) b!2570849))

(assert (= (and b!2570853 (not res!1081635)) b!2570856))

(assert (= (and b!2570856 res!1081631) b!2570857))

(assert (= (and b!2570857 (not res!1081634)) b!2570850))

(assert (= (and b!2570850 (not res!1081633)) b!2570852))

(assert (= (or b!2570861 b!2570851 b!2570857) bm!165812))

(declare-fun m!2907239 () Bool)

(assert (=> b!2570849 m!2907239))

(declare-fun m!2907241 () Bool)

(assert (=> bm!165812 m!2907241))

(declare-fun m!2907243 () Bool)

(assert (=> b!2570859 m!2907243))

(assert (=> b!2570859 m!2907243))

(declare-fun m!2907245 () Bool)

(assert (=> b!2570859 m!2907245))

(assert (=> b!2570858 m!2907239))

(assert (=> b!2570858 m!2907239))

(declare-fun m!2907247 () Bool)

(assert (=> b!2570858 m!2907247))

(assert (=> b!2570858 m!2907243))

(assert (=> b!2570858 m!2907247))

(assert (=> b!2570858 m!2907243))

(declare-fun m!2907249 () Bool)

(assert (=> b!2570858 m!2907249))

(assert (=> b!2570850 m!2907243))

(assert (=> b!2570850 m!2907243))

(assert (=> b!2570850 m!2907245))

(assert (=> d!727291 m!2907241))

(declare-fun m!2907251 () Bool)

(assert (=> d!727291 m!2907251))

(assert (=> b!2570848 m!2906947))

(assert (=> b!2570852 m!2907239))

(assert (=> b!2570485 d!727291))

(declare-fun d!727295 () Bool)

(declare-fun lt!905999 () Regex!7639)

(assert (=> d!727295 (validRegex!3265 lt!905999)))

(declare-fun e!1622583 () Regex!7639)

(assert (=> d!727295 (= lt!905999 e!1622583)))

(declare-fun c!413720 () Bool)

(assert (=> d!727295 (= c!413720 ((_ is Cons!29604) (_1!17342 lt!905927)))))

(assert (=> d!727295 (validRegex!3265 lt!905930)))

(assert (=> d!727295 (= (derivative!334 lt!905930 (_1!17342 lt!905927)) lt!905999)))

(declare-fun b!2570932 () Bool)

(assert (=> b!2570932 (= e!1622583 (derivative!334 (derivativeStep!2208 lt!905930 (h!35024 (_1!17342 lt!905927))) (t!211403 (_1!17342 lt!905927))))))

(declare-fun b!2570933 () Bool)

(assert (=> b!2570933 (= e!1622583 lt!905930)))

(assert (= (and d!727295 c!413720) b!2570932))

(assert (= (and d!727295 (not c!413720)) b!2570933))

(declare-fun m!2907281 () Bool)

(assert (=> d!727295 m!2907281))

(assert (=> d!727295 m!2907017))

(declare-fun m!2907283 () Bool)

(assert (=> b!2570932 m!2907283))

(assert (=> b!2570932 m!2907283))

(declare-fun m!2907285 () Bool)

(assert (=> b!2570932 m!2907285))

(assert (=> b!2570485 d!727295))

(declare-fun d!727305 () Bool)

(assert (=> d!727305 (= (matchR!3582 lt!905930 (_1!17342 lt!905927)) (matchR!3582 (derivative!334 lt!905930 (_1!17342 lt!905927)) Nil!29604))))

(declare-fun lt!906002 () Unit!43459)

(declare-fun choose!15165 (Regex!7639 List!29704) Unit!43459)

(assert (=> d!727305 (= lt!906002 (choose!15165 lt!905930 (_1!17342 lt!905927)))))

(assert (=> d!727305 (validRegex!3265 lt!905930)))

(assert (=> d!727305 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!228 lt!905930 (_1!17342 lt!905927)) lt!906002)))

(declare-fun bs!470029 () Bool)

(assert (= bs!470029 d!727305))

(assert (=> bs!470029 m!2906915))

(declare-fun m!2907287 () Bool)

(assert (=> bs!470029 m!2907287))

(assert (=> bs!470029 m!2907017))

(declare-fun m!2907289 () Bool)

(assert (=> bs!470029 m!2907289))

(assert (=> bs!470029 m!2906915))

(assert (=> bs!470029 m!2906909))

(assert (=> b!2570485 d!727305))

(declare-fun bm!165826 () Bool)

(declare-fun call!165831 () Bool)

(assert (=> bm!165826 (= call!165831 (isEmpty!17064 tl!4068))))

(declare-fun b!2570955 () Bool)

(declare-fun e!1622593 () Bool)

(assert (=> b!2570955 (= e!1622593 (nullable!2556 EmptyLang!7639))))

(declare-fun b!2570956 () Bool)

(declare-fun e!1622594 () Bool)

(assert (=> b!2570956 (= e!1622594 (= (head!5844 tl!4068) (c!413611 EmptyLang!7639)))))

(declare-fun b!2570957 () Bool)

(declare-fun res!1081669 () Bool)

(declare-fun e!1622595 () Bool)

(assert (=> b!2570957 (=> res!1081669 e!1622595)))

(assert (=> b!2570957 (= res!1081669 (not (isEmpty!17064 (tail!4119 tl!4068))))))

(declare-fun b!2570959 () Bool)

(assert (=> b!2570959 (= e!1622595 (not (= (head!5844 tl!4068) (c!413611 EmptyLang!7639))))))

(declare-fun b!2570960 () Bool)

(declare-fun res!1081671 () Bool)

(declare-fun e!1622597 () Bool)

(assert (=> b!2570960 (=> res!1081671 e!1622597)))

(assert (=> b!2570960 (= res!1081671 e!1622594)))

(declare-fun res!1081664 () Bool)

(assert (=> b!2570960 (=> (not res!1081664) (not e!1622594))))

(declare-fun lt!906003 () Bool)

(assert (=> b!2570960 (= res!1081664 lt!906003)))

(declare-fun b!2570961 () Bool)

(declare-fun res!1081665 () Bool)

(assert (=> b!2570961 (=> res!1081665 e!1622597)))

(assert (=> b!2570961 (= res!1081665 (not ((_ is ElementMatch!7639) EmptyLang!7639)))))

(declare-fun e!1622592 () Bool)

(assert (=> b!2570961 (= e!1622592 e!1622597)))

(declare-fun b!2570962 () Bool)

(assert (=> b!2570962 (= e!1622592 (not lt!906003))))

(declare-fun b!2570963 () Bool)

(declare-fun e!1622591 () Bool)

(assert (=> b!2570963 (= e!1622597 e!1622591)))

(declare-fun res!1081667 () Bool)

(assert (=> b!2570963 (=> (not res!1081667) (not e!1622591))))

(assert (=> b!2570963 (= res!1081667 (not lt!906003))))

(declare-fun b!2570964 () Bool)

(assert (=> b!2570964 (= e!1622591 e!1622595)))

(declare-fun res!1081670 () Bool)

(assert (=> b!2570964 (=> res!1081670 e!1622595)))

(assert (=> b!2570964 (= res!1081670 call!165831)))

(declare-fun b!2570958 () Bool)

(declare-fun res!1081668 () Bool)

(assert (=> b!2570958 (=> (not res!1081668) (not e!1622594))))

(assert (=> b!2570958 (= res!1081668 (not call!165831))))

(declare-fun d!727307 () Bool)

(declare-fun e!1622596 () Bool)

(assert (=> d!727307 e!1622596))

(declare-fun c!413723 () Bool)

(assert (=> d!727307 (= c!413723 ((_ is EmptyExpr!7639) EmptyLang!7639))))

(assert (=> d!727307 (= lt!906003 e!1622593)))

(declare-fun c!413721 () Bool)

(assert (=> d!727307 (= c!413721 (isEmpty!17064 tl!4068))))

(assert (=> d!727307 (validRegex!3265 EmptyLang!7639)))

(assert (=> d!727307 (= (matchR!3582 EmptyLang!7639 tl!4068) lt!906003)))

(declare-fun b!2570965 () Bool)

(assert (=> b!2570965 (= e!1622593 (matchR!3582 (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068)) (tail!4119 tl!4068)))))

(declare-fun b!2570966 () Bool)

(declare-fun res!1081666 () Bool)

(assert (=> b!2570966 (=> (not res!1081666) (not e!1622594))))

(assert (=> b!2570966 (= res!1081666 (isEmpty!17064 (tail!4119 tl!4068)))))

(declare-fun b!2570967 () Bool)

(assert (=> b!2570967 (= e!1622596 e!1622592)))

(declare-fun c!413722 () Bool)

(assert (=> b!2570967 (= c!413722 ((_ is EmptyLang!7639) EmptyLang!7639))))

(declare-fun b!2570968 () Bool)

(assert (=> b!2570968 (= e!1622596 (= lt!906003 call!165831))))

(assert (= (and d!727307 c!413721) b!2570955))

(assert (= (and d!727307 (not c!413721)) b!2570965))

(assert (= (and d!727307 c!413723) b!2570968))

(assert (= (and d!727307 (not c!413723)) b!2570967))

(assert (= (and b!2570967 c!413722) b!2570962))

(assert (= (and b!2570967 (not c!413722)) b!2570961))

(assert (= (and b!2570961 (not res!1081665)) b!2570960))

(assert (= (and b!2570960 res!1081664) b!2570958))

(assert (= (and b!2570958 res!1081668) b!2570966))

(assert (= (and b!2570966 res!1081666) b!2570956))

(assert (= (and b!2570960 (not res!1081671)) b!2570963))

(assert (= (and b!2570963 res!1081667) b!2570964))

(assert (= (and b!2570964 (not res!1081670)) b!2570957))

(assert (= (and b!2570957 (not res!1081669)) b!2570959))

(assert (= (or b!2570968 b!2570958 b!2570964) bm!165826))

(declare-fun m!2907291 () Bool)

(assert (=> b!2570956 m!2907291))

(declare-fun m!2907293 () Bool)

(assert (=> bm!165826 m!2907293))

(declare-fun m!2907295 () Bool)

(assert (=> b!2570966 m!2907295))

(assert (=> b!2570966 m!2907295))

(declare-fun m!2907297 () Bool)

(assert (=> b!2570966 m!2907297))

(assert (=> b!2570965 m!2907291))

(assert (=> b!2570965 m!2907291))

(declare-fun m!2907299 () Bool)

(assert (=> b!2570965 m!2907299))

(assert (=> b!2570965 m!2907295))

(assert (=> b!2570965 m!2907299))

(assert (=> b!2570965 m!2907295))

(declare-fun m!2907301 () Bool)

(assert (=> b!2570965 m!2907301))

(assert (=> b!2570957 m!2907295))

(assert (=> b!2570957 m!2907295))

(assert (=> b!2570957 m!2907297))

(assert (=> d!727307 m!2907293))

(declare-fun m!2907303 () Bool)

(assert (=> d!727307 m!2907303))

(declare-fun m!2907305 () Bool)

(assert (=> b!2570955 m!2907305))

(assert (=> b!2570959 m!2907291))

(assert (=> b!2570475 d!727307))

(declare-fun d!727309 () Bool)

(assert (=> d!727309 (= (nullable!2556 lt!905920) (nullableFct!781 lt!905920))))

(declare-fun bs!470030 () Bool)

(assert (= bs!470030 d!727309))

(declare-fun m!2907307 () Bool)

(assert (=> bs!470030 m!2907307))

(assert (=> b!2570481 d!727309))

(declare-fun c!413725 () Bool)

(declare-fun c!413724 () Bool)

(declare-fun call!165833 () Bool)

(declare-fun bm!165827 () Bool)

(assert (=> bm!165827 (= call!165833 (validRegex!3265 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))))))

(declare-fun d!727311 () Bool)

(declare-fun res!1081672 () Bool)

(declare-fun e!1622600 () Bool)

(assert (=> d!727311 (=> res!1081672 e!1622600)))

(assert (=> d!727311 (= res!1081672 ((_ is ElementMatch!7639) r!27340))))

(assert (=> d!727311 (= (validRegex!3265 r!27340) e!1622600)))

(declare-fun b!2570969 () Bool)

(declare-fun e!1622599 () Bool)

(declare-fun e!1622602 () Bool)

(assert (=> b!2570969 (= e!1622599 e!1622602)))

(declare-fun res!1081674 () Bool)

(assert (=> b!2570969 (= res!1081674 (not (nullable!2556 (reg!7968 r!27340))))))

(assert (=> b!2570969 (=> (not res!1081674) (not e!1622602))))

(declare-fun b!2570970 () Bool)

(declare-fun e!1622598 () Bool)

(declare-fun e!1622604 () Bool)

(assert (=> b!2570970 (= e!1622598 e!1622604)))

(declare-fun res!1081673 () Bool)

(assert (=> b!2570970 (=> (not res!1081673) (not e!1622604))))

(declare-fun call!165832 () Bool)

(assert (=> b!2570970 (= res!1081673 call!165832)))

(declare-fun b!2570971 () Bool)

(declare-fun call!165834 () Bool)

(assert (=> b!2570971 (= e!1622604 call!165834)))

(declare-fun b!2570972 () Bool)

(declare-fun res!1081676 () Bool)

(declare-fun e!1622601 () Bool)

(assert (=> b!2570972 (=> (not res!1081676) (not e!1622601))))

(assert (=> b!2570972 (= res!1081676 call!165834)))

(declare-fun e!1622603 () Bool)

(assert (=> b!2570972 (= e!1622603 e!1622601)))

(declare-fun b!2570973 () Bool)

(assert (=> b!2570973 (= e!1622601 call!165832)))

(declare-fun b!2570974 () Bool)

(assert (=> b!2570974 (= e!1622599 e!1622603)))

(assert (=> b!2570974 (= c!413725 ((_ is Union!7639) r!27340))))

(declare-fun b!2570975 () Bool)

(assert (=> b!2570975 (= e!1622602 call!165833)))

(declare-fun bm!165828 () Bool)

(assert (=> bm!165828 (= call!165834 (validRegex!3265 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))))))

(declare-fun b!2570976 () Bool)

(assert (=> b!2570976 (= e!1622600 e!1622599)))

(assert (=> b!2570976 (= c!413724 ((_ is Star!7639) r!27340))))

(declare-fun b!2570977 () Bool)

(declare-fun res!1081675 () Bool)

(assert (=> b!2570977 (=> res!1081675 e!1622598)))

(assert (=> b!2570977 (= res!1081675 (not ((_ is Concat!12335) r!27340)))))

(assert (=> b!2570977 (= e!1622603 e!1622598)))

(declare-fun bm!165829 () Bool)

(assert (=> bm!165829 (= call!165832 call!165833)))

(assert (= (and d!727311 (not res!1081672)) b!2570976))

(assert (= (and b!2570976 c!413724) b!2570969))

(assert (= (and b!2570976 (not c!413724)) b!2570974))

(assert (= (and b!2570969 res!1081674) b!2570975))

(assert (= (and b!2570974 c!413725) b!2570972))

(assert (= (and b!2570974 (not c!413725)) b!2570977))

(assert (= (and b!2570972 res!1081676) b!2570973))

(assert (= (and b!2570977 (not res!1081675)) b!2570970))

(assert (= (and b!2570970 res!1081673) b!2570971))

(assert (= (or b!2570972 b!2570971) bm!165828))

(assert (= (or b!2570973 b!2570970) bm!165829))

(assert (= (or b!2570975 bm!165829) bm!165827))

(declare-fun m!2907309 () Bool)

(assert (=> bm!165827 m!2907309))

(declare-fun m!2907311 () Bool)

(assert (=> b!2570969 m!2907311))

(declare-fun m!2907313 () Bool)

(assert (=> bm!165828 m!2907313))

(assert (=> start!248448 d!727311))

(declare-fun d!727313 () Bool)

(assert (=> d!727313 (= (nullable!2556 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)) (nullableFct!781 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))

(declare-fun bs!470031 () Bool)

(assert (= bs!470031 d!727313))

(assert (=> bs!470031 m!2906923))

(declare-fun m!2907315 () Bool)

(assert (=> bs!470031 m!2907315))

(assert (=> b!2570487 d!727313))

(declare-fun d!727315 () Bool)

(declare-fun lt!906004 () Regex!7639)

(assert (=> d!727315 (validRegex!3265 lt!906004)))

(declare-fun e!1622605 () Regex!7639)

(assert (=> d!727315 (= lt!906004 e!1622605)))

(declare-fun c!413726 () Bool)

(assert (=> d!727315 (= c!413726 ((_ is Cons!29604) tl!4068))))

(assert (=> d!727315 (validRegex!3265 (derivativeStep!2208 r!27340 c!14016))))

(assert (=> d!727315 (= (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068) lt!906004)))

(declare-fun b!2570978 () Bool)

(assert (=> b!2570978 (= e!1622605 (derivative!334 (derivativeStep!2208 (derivativeStep!2208 r!27340 c!14016) (h!35024 tl!4068)) (t!211403 tl!4068)))))

(declare-fun b!2570979 () Bool)

(assert (=> b!2570979 (= e!1622605 (derivativeStep!2208 r!27340 c!14016))))

(assert (= (and d!727315 c!413726) b!2570978))

(assert (= (and d!727315 (not c!413726)) b!2570979))

(declare-fun m!2907317 () Bool)

(assert (=> d!727315 m!2907317))

(assert (=> d!727315 m!2906921))

(declare-fun m!2907319 () Bool)

(assert (=> d!727315 m!2907319))

(assert (=> b!2570978 m!2906921))

(declare-fun m!2907321 () Bool)

(assert (=> b!2570978 m!2907321))

(assert (=> b!2570978 m!2907321))

(declare-fun m!2907323 () Bool)

(assert (=> b!2570978 m!2907323))

(assert (=> b!2570487 d!727315))

(declare-fun b!2571000 () Bool)

(declare-fun e!1622619 () Regex!7639)

(declare-fun call!165846 () Regex!7639)

(assert (=> b!2571000 (= e!1622619 (Concat!12335 call!165846 r!27340))))

(declare-fun d!727317 () Bool)

(declare-fun lt!906007 () Regex!7639)

(assert (=> d!727317 (validRegex!3265 lt!906007)))

(declare-fun e!1622618 () Regex!7639)

(assert (=> d!727317 (= lt!906007 e!1622618)))

(declare-fun c!413737 () Bool)

(assert (=> d!727317 (= c!413737 (or ((_ is EmptyExpr!7639) r!27340) ((_ is EmptyLang!7639) r!27340)))))

(assert (=> d!727317 (validRegex!3265 r!27340)))

(assert (=> d!727317 (= (derivativeStep!2208 r!27340 c!14016) lt!906007)))

(declare-fun bm!165838 () Bool)

(declare-fun c!413741 () Bool)

(declare-fun call!165845 () Regex!7639)

(assert (=> bm!165838 (= call!165845 (derivativeStep!2208 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)) c!14016))))

(declare-fun b!2571001 () Bool)

(declare-fun e!1622617 () Regex!7639)

(assert (=> b!2571001 (= e!1622618 e!1622617)))

(declare-fun c!413740 () Bool)

(assert (=> b!2571001 (= c!413740 ((_ is ElementMatch!7639) r!27340))))

(declare-fun b!2571002 () Bool)

(declare-fun e!1622620 () Regex!7639)

(assert (=> b!2571002 (= e!1622620 e!1622619)))

(declare-fun c!413739 () Bool)

(assert (=> b!2571002 (= c!413739 ((_ is Star!7639) r!27340))))

(declare-fun b!2571003 () Bool)

(declare-fun c!413738 () Bool)

(assert (=> b!2571003 (= c!413738 (nullable!2556 (regOne!15790 r!27340)))))

(declare-fun e!1622616 () Regex!7639)

(assert (=> b!2571003 (= e!1622619 e!1622616)))

(declare-fun b!2571004 () Bool)

(assert (=> b!2571004 (= e!1622618 EmptyLang!7639)))

(declare-fun b!2571005 () Bool)

(assert (=> b!2571005 (= e!1622617 (ite (= c!14016 (c!413611 r!27340)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!165844 () Regex!7639)

(declare-fun b!2571006 () Bool)

(assert (=> b!2571006 (= e!1622616 (Union!7639 (Concat!12335 call!165844 (regTwo!15790 r!27340)) call!165845))))

(declare-fun bm!165839 () Bool)

(assert (=> bm!165839 (= call!165844 call!165846)))

(declare-fun bm!165840 () Bool)

(declare-fun call!165843 () Regex!7639)

(assert (=> bm!165840 (= call!165846 call!165843)))

(declare-fun b!2571007 () Bool)

(assert (=> b!2571007 (= e!1622616 (Union!7639 (Concat!12335 call!165844 (regTwo!15790 r!27340)) EmptyLang!7639))))

(declare-fun b!2571008 () Bool)

(assert (=> b!2571008 (= c!413741 ((_ is Union!7639) r!27340))))

(assert (=> b!2571008 (= e!1622617 e!1622620)))

(declare-fun b!2571009 () Bool)

(assert (=> b!2571009 (= e!1622620 (Union!7639 call!165843 call!165845))))

(declare-fun bm!165841 () Bool)

(assert (=> bm!165841 (= call!165843 (derivativeStep!2208 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))) c!14016))))

(assert (= (and d!727317 c!413737) b!2571004))

(assert (= (and d!727317 (not c!413737)) b!2571001))

(assert (= (and b!2571001 c!413740) b!2571005))

(assert (= (and b!2571001 (not c!413740)) b!2571008))

(assert (= (and b!2571008 c!413741) b!2571009))

(assert (= (and b!2571008 (not c!413741)) b!2571002))

(assert (= (and b!2571002 c!413739) b!2571000))

(assert (= (and b!2571002 (not c!413739)) b!2571003))

(assert (= (and b!2571003 c!413738) b!2571006))

(assert (= (and b!2571003 (not c!413738)) b!2571007))

(assert (= (or b!2571006 b!2571007) bm!165839))

(assert (= (or b!2571000 bm!165839) bm!165840))

(assert (= (or b!2571009 b!2571006) bm!165838))

(assert (= (or b!2571009 bm!165840) bm!165841))

(declare-fun m!2907325 () Bool)

(assert (=> d!727317 m!2907325))

(assert (=> d!727317 m!2906919))

(declare-fun m!2907327 () Bool)

(assert (=> bm!165838 m!2907327))

(assert (=> b!2571003 m!2906951))

(declare-fun m!2907329 () Bool)

(assert (=> bm!165841 m!2907329))

(assert (=> b!2570487 d!727317))

(declare-fun b!2571010 () Bool)

(declare-fun e!1622624 () Regex!7639)

(declare-fun call!165850 () Regex!7639)

(assert (=> b!2571010 (= e!1622624 (Concat!12335 call!165850 (regOne!15790 r!27340)))))

(declare-fun d!727319 () Bool)

(declare-fun lt!906008 () Regex!7639)

(assert (=> d!727319 (validRegex!3265 lt!906008)))

(declare-fun e!1622623 () Regex!7639)

(assert (=> d!727319 (= lt!906008 e!1622623)))

(declare-fun c!413742 () Bool)

(assert (=> d!727319 (= c!413742 (or ((_ is EmptyExpr!7639) (regOne!15790 r!27340)) ((_ is EmptyLang!7639) (regOne!15790 r!27340))))))

(assert (=> d!727319 (validRegex!3265 (regOne!15790 r!27340))))

(assert (=> d!727319 (= (derivativeStep!2208 (regOne!15790 r!27340) c!14016) lt!906008)))

(declare-fun call!165849 () Regex!7639)

(declare-fun bm!165842 () Bool)

(declare-fun c!413746 () Bool)

(assert (=> bm!165842 (= call!165849 (derivativeStep!2208 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))) c!14016))))

(declare-fun b!2571011 () Bool)

(declare-fun e!1622622 () Regex!7639)

(assert (=> b!2571011 (= e!1622623 e!1622622)))

(declare-fun c!413745 () Bool)

(assert (=> b!2571011 (= c!413745 ((_ is ElementMatch!7639) (regOne!15790 r!27340)))))

(declare-fun b!2571012 () Bool)

(declare-fun e!1622625 () Regex!7639)

(assert (=> b!2571012 (= e!1622625 e!1622624)))

(declare-fun c!413744 () Bool)

(assert (=> b!2571012 (= c!413744 ((_ is Star!7639) (regOne!15790 r!27340)))))

(declare-fun b!2571013 () Bool)

(declare-fun c!413743 () Bool)

(assert (=> b!2571013 (= c!413743 (nullable!2556 (regOne!15790 (regOne!15790 r!27340))))))

(declare-fun e!1622621 () Regex!7639)

(assert (=> b!2571013 (= e!1622624 e!1622621)))

(declare-fun b!2571014 () Bool)

(assert (=> b!2571014 (= e!1622623 EmptyLang!7639)))

(declare-fun b!2571015 () Bool)

(assert (=> b!2571015 (= e!1622622 (ite (= c!14016 (c!413611 (regOne!15790 r!27340))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!165848 () Regex!7639)

(declare-fun b!2571016 () Bool)

(assert (=> b!2571016 (= e!1622621 (Union!7639 (Concat!12335 call!165848 (regTwo!15790 (regOne!15790 r!27340))) call!165849))))

(declare-fun bm!165843 () Bool)

(assert (=> bm!165843 (= call!165848 call!165850)))

(declare-fun bm!165844 () Bool)

(declare-fun call!165847 () Regex!7639)

(assert (=> bm!165844 (= call!165850 call!165847)))

(declare-fun b!2571017 () Bool)

(assert (=> b!2571017 (= e!1622621 (Union!7639 (Concat!12335 call!165848 (regTwo!15790 (regOne!15790 r!27340))) EmptyLang!7639))))

(declare-fun b!2571018 () Bool)

(assert (=> b!2571018 (= c!413746 ((_ is Union!7639) (regOne!15790 r!27340)))))

(assert (=> b!2571018 (= e!1622622 e!1622625)))

(declare-fun b!2571019 () Bool)

(assert (=> b!2571019 (= e!1622625 (Union!7639 call!165847 call!165849))))

(declare-fun bm!165845 () Bool)

(assert (=> bm!165845 (= call!165847 (derivativeStep!2208 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))) c!14016))))

(assert (= (and d!727319 c!413742) b!2571014))

(assert (= (and d!727319 (not c!413742)) b!2571011))

(assert (= (and b!2571011 c!413745) b!2571015))

(assert (= (and b!2571011 (not c!413745)) b!2571018))

(assert (= (and b!2571018 c!413746) b!2571019))

(assert (= (and b!2571018 (not c!413746)) b!2571012))

(assert (= (and b!2571012 c!413744) b!2571010))

(assert (= (and b!2571012 (not c!413744)) b!2571013))

(assert (= (and b!2571013 c!413743) b!2571016))

(assert (= (and b!2571013 (not c!413743)) b!2571017))

(assert (= (or b!2571016 b!2571017) bm!165843))

(assert (= (or b!2571010 bm!165843) bm!165844))

(assert (= (or b!2571019 b!2571016) bm!165842))

(assert (= (or b!2571019 bm!165844) bm!165845))

(declare-fun m!2907331 () Bool)

(assert (=> d!727319 m!2907331))

(assert (=> d!727319 m!2906911))

(declare-fun m!2907333 () Bool)

(assert (=> bm!165842 m!2907333))

(declare-fun m!2907335 () Bool)

(assert (=> b!2571013 m!2907335))

(declare-fun m!2907337 () Bool)

(assert (=> bm!165845 m!2907337))

(assert (=> b!2570482 d!727319))

(declare-fun d!727321 () Bool)

(assert (=> d!727321 (= (matchR!3582 lt!905919 tl!4068) (matchR!3582 (derivative!334 lt!905919 tl!4068) Nil!29604))))

(declare-fun lt!906009 () Unit!43459)

(assert (=> d!727321 (= lt!906009 (choose!15165 lt!905919 tl!4068))))

(assert (=> d!727321 (validRegex!3265 lt!905919)))

(assert (=> d!727321 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!228 lt!905919 tl!4068) lt!906009)))

(declare-fun bs!470032 () Bool)

(assert (= bs!470032 d!727321))

(assert (=> bs!470032 m!2906937))

(assert (=> bs!470032 m!2906941))

(declare-fun m!2907339 () Bool)

(assert (=> bs!470032 m!2907339))

(declare-fun m!2907341 () Bool)

(assert (=> bs!470032 m!2907341))

(assert (=> bs!470032 m!2906937))

(assert (=> bs!470032 m!2906931))

(assert (=> b!2570482 d!727321))

(declare-fun d!727323 () Bool)

(declare-fun lt!906010 () Regex!7639)

(assert (=> d!727323 (validRegex!3265 lt!906010)))

(declare-fun e!1622626 () Regex!7639)

(assert (=> d!727323 (= lt!906010 e!1622626)))

(declare-fun c!413747 () Bool)

(assert (=> d!727323 (= c!413747 ((_ is Cons!29604) tl!4068))))

(assert (=> d!727323 (validRegex!3265 lt!905919)))

(assert (=> d!727323 (= (derivative!334 lt!905919 tl!4068) lt!906010)))

(declare-fun b!2571020 () Bool)

(assert (=> b!2571020 (= e!1622626 (derivative!334 (derivativeStep!2208 lt!905919 (h!35024 tl!4068)) (t!211403 tl!4068)))))

(declare-fun b!2571021 () Bool)

(assert (=> b!2571021 (= e!1622626 lt!905919)))

(assert (= (and d!727323 c!413747) b!2571020))

(assert (= (and d!727323 (not c!413747)) b!2571021))

(declare-fun m!2907343 () Bool)

(assert (=> d!727323 m!2907343))

(assert (=> d!727323 m!2907339))

(declare-fun m!2907345 () Bool)

(assert (=> b!2571020 m!2907345))

(assert (=> b!2571020 m!2907345))

(declare-fun m!2907347 () Bool)

(assert (=> b!2571020 m!2907347))

(assert (=> b!2570482 d!727323))

(declare-fun d!727325 () Bool)

(assert (=> d!727325 (= (derivative!334 EmptyLang!7639 tl!4068) EmptyLang!7639)))

(declare-fun lt!906013 () Unit!43459)

(declare-fun choose!15166 (Regex!7639 List!29704) Unit!43459)

(assert (=> d!727325 (= lt!906013 (choose!15166 EmptyLang!7639 tl!4068))))

(assert (=> d!727325 (= EmptyLang!7639 EmptyLang!7639)))

(assert (=> d!727325 (= (lemmaEmptyLangDerivativeIsAFixPoint!68 EmptyLang!7639 tl!4068) lt!906013)))

(declare-fun bs!470033 () Bool)

(assert (= bs!470033 d!727325))

(assert (=> bs!470033 m!2906929))

(declare-fun m!2907349 () Bool)

(assert (=> bs!470033 m!2907349))

(assert (=> b!2570482 d!727325))

(declare-fun bm!165846 () Bool)

(declare-fun call!165851 () Bool)

(assert (=> bm!165846 (= call!165851 (isEmpty!17064 tl!4068))))

(declare-fun b!2571022 () Bool)

(declare-fun e!1622629 () Bool)

(assert (=> b!2571022 (= e!1622629 (nullable!2556 lt!905925))))

(declare-fun b!2571023 () Bool)

(declare-fun e!1622630 () Bool)

(assert (=> b!2571023 (= e!1622630 (= (head!5844 tl!4068) (c!413611 lt!905925)))))

(declare-fun b!2571024 () Bool)

(declare-fun res!1081682 () Bool)

(declare-fun e!1622631 () Bool)

(assert (=> b!2571024 (=> res!1081682 e!1622631)))

(assert (=> b!2571024 (= res!1081682 (not (isEmpty!17064 (tail!4119 tl!4068))))))

(declare-fun b!2571026 () Bool)

(assert (=> b!2571026 (= e!1622631 (not (= (head!5844 tl!4068) (c!413611 lt!905925))))))

(declare-fun b!2571027 () Bool)

(declare-fun res!1081684 () Bool)

(declare-fun e!1622633 () Bool)

(assert (=> b!2571027 (=> res!1081684 e!1622633)))

(assert (=> b!2571027 (= res!1081684 e!1622630)))

(declare-fun res!1081677 () Bool)

(assert (=> b!2571027 (=> (not res!1081677) (not e!1622630))))

(declare-fun lt!906014 () Bool)

(assert (=> b!2571027 (= res!1081677 lt!906014)))

(declare-fun b!2571028 () Bool)

(declare-fun res!1081678 () Bool)

(assert (=> b!2571028 (=> res!1081678 e!1622633)))

(assert (=> b!2571028 (= res!1081678 (not ((_ is ElementMatch!7639) lt!905925)))))

(declare-fun e!1622628 () Bool)

(assert (=> b!2571028 (= e!1622628 e!1622633)))

(declare-fun b!2571029 () Bool)

(assert (=> b!2571029 (= e!1622628 (not lt!906014))))

(declare-fun b!2571030 () Bool)

(declare-fun e!1622627 () Bool)

(assert (=> b!2571030 (= e!1622633 e!1622627)))

(declare-fun res!1081680 () Bool)

(assert (=> b!2571030 (=> (not res!1081680) (not e!1622627))))

(assert (=> b!2571030 (= res!1081680 (not lt!906014))))

(declare-fun b!2571031 () Bool)

(assert (=> b!2571031 (= e!1622627 e!1622631)))

(declare-fun res!1081683 () Bool)

(assert (=> b!2571031 (=> res!1081683 e!1622631)))

(assert (=> b!2571031 (= res!1081683 call!165851)))

(declare-fun b!2571025 () Bool)

(declare-fun res!1081681 () Bool)

(assert (=> b!2571025 (=> (not res!1081681) (not e!1622630))))

(assert (=> b!2571025 (= res!1081681 (not call!165851))))

(declare-fun d!727327 () Bool)

(declare-fun e!1622632 () Bool)

(assert (=> d!727327 e!1622632))

(declare-fun c!413750 () Bool)

(assert (=> d!727327 (= c!413750 ((_ is EmptyExpr!7639) lt!905925))))

(assert (=> d!727327 (= lt!906014 e!1622629)))

(declare-fun c!413748 () Bool)

(assert (=> d!727327 (= c!413748 (isEmpty!17064 tl!4068))))

(assert (=> d!727327 (validRegex!3265 lt!905925)))

(assert (=> d!727327 (= (matchR!3582 lt!905925 tl!4068) lt!906014)))

(declare-fun b!2571032 () Bool)

(assert (=> b!2571032 (= e!1622629 (matchR!3582 (derivativeStep!2208 lt!905925 (head!5844 tl!4068)) (tail!4119 tl!4068)))))

(declare-fun b!2571033 () Bool)

(declare-fun res!1081679 () Bool)

(assert (=> b!2571033 (=> (not res!1081679) (not e!1622630))))

(assert (=> b!2571033 (= res!1081679 (isEmpty!17064 (tail!4119 tl!4068)))))

(declare-fun b!2571034 () Bool)

(assert (=> b!2571034 (= e!1622632 e!1622628)))

(declare-fun c!413749 () Bool)

(assert (=> b!2571034 (= c!413749 ((_ is EmptyLang!7639) lt!905925))))

(declare-fun b!2571035 () Bool)

(assert (=> b!2571035 (= e!1622632 (= lt!906014 call!165851))))

(assert (= (and d!727327 c!413748) b!2571022))

(assert (= (and d!727327 (not c!413748)) b!2571032))

(assert (= (and d!727327 c!413750) b!2571035))

(assert (= (and d!727327 (not c!413750)) b!2571034))

(assert (= (and b!2571034 c!413749) b!2571029))

(assert (= (and b!2571034 (not c!413749)) b!2571028))

(assert (= (and b!2571028 (not res!1081678)) b!2571027))

(assert (= (and b!2571027 res!1081677) b!2571025))

(assert (= (and b!2571025 res!1081681) b!2571033))

(assert (= (and b!2571033 res!1081679) b!2571023))

(assert (= (and b!2571027 (not res!1081684)) b!2571030))

(assert (= (and b!2571030 res!1081680) b!2571031))

(assert (= (and b!2571031 (not res!1081683)) b!2571024))

(assert (= (and b!2571024 (not res!1081682)) b!2571026))

(assert (= (or b!2571035 b!2571025 b!2571031) bm!165846))

(assert (=> b!2571023 m!2907291))

(assert (=> bm!165846 m!2907293))

(assert (=> b!2571033 m!2907295))

(assert (=> b!2571033 m!2907295))

(assert (=> b!2571033 m!2907297))

(assert (=> b!2571032 m!2907291))

(assert (=> b!2571032 m!2907291))

(declare-fun m!2907351 () Bool)

(assert (=> b!2571032 m!2907351))

(assert (=> b!2571032 m!2907295))

(assert (=> b!2571032 m!2907351))

(assert (=> b!2571032 m!2907295))

(declare-fun m!2907353 () Bool)

(assert (=> b!2571032 m!2907353))

(assert (=> b!2571024 m!2907295))

(assert (=> b!2571024 m!2907295))

(assert (=> b!2571024 m!2907297))

(assert (=> d!727327 m!2907293))

(declare-fun m!2907355 () Bool)

(assert (=> d!727327 m!2907355))

(declare-fun m!2907357 () Bool)

(assert (=> b!2571022 m!2907357))

(assert (=> b!2571026 m!2907291))

(assert (=> b!2570482 d!727327))

(declare-fun bm!165847 () Bool)

(declare-fun call!165852 () Bool)

(assert (=> bm!165847 (= call!165852 (isEmpty!17064 tl!4068))))

(declare-fun b!2571036 () Bool)

(declare-fun e!1622636 () Bool)

(assert (=> b!2571036 (= e!1622636 (nullable!2556 lt!905919))))

(declare-fun b!2571037 () Bool)

(declare-fun e!1622637 () Bool)

(assert (=> b!2571037 (= e!1622637 (= (head!5844 tl!4068) (c!413611 lt!905919)))))

(declare-fun b!2571038 () Bool)

(declare-fun res!1081690 () Bool)

(declare-fun e!1622638 () Bool)

(assert (=> b!2571038 (=> res!1081690 e!1622638)))

(assert (=> b!2571038 (= res!1081690 (not (isEmpty!17064 (tail!4119 tl!4068))))))

(declare-fun b!2571040 () Bool)

(assert (=> b!2571040 (= e!1622638 (not (= (head!5844 tl!4068) (c!413611 lt!905919))))))

(declare-fun b!2571041 () Bool)

(declare-fun res!1081692 () Bool)

(declare-fun e!1622640 () Bool)

(assert (=> b!2571041 (=> res!1081692 e!1622640)))

(assert (=> b!2571041 (= res!1081692 e!1622637)))

(declare-fun res!1081685 () Bool)

(assert (=> b!2571041 (=> (not res!1081685) (not e!1622637))))

(declare-fun lt!906015 () Bool)

(assert (=> b!2571041 (= res!1081685 lt!906015)))

(declare-fun b!2571042 () Bool)

(declare-fun res!1081686 () Bool)

(assert (=> b!2571042 (=> res!1081686 e!1622640)))

(assert (=> b!2571042 (= res!1081686 (not ((_ is ElementMatch!7639) lt!905919)))))

(declare-fun e!1622635 () Bool)

(assert (=> b!2571042 (= e!1622635 e!1622640)))

(declare-fun b!2571043 () Bool)

(assert (=> b!2571043 (= e!1622635 (not lt!906015))))

(declare-fun b!2571044 () Bool)

(declare-fun e!1622634 () Bool)

(assert (=> b!2571044 (= e!1622640 e!1622634)))

(declare-fun res!1081688 () Bool)

(assert (=> b!2571044 (=> (not res!1081688) (not e!1622634))))

(assert (=> b!2571044 (= res!1081688 (not lt!906015))))

(declare-fun b!2571045 () Bool)

(assert (=> b!2571045 (= e!1622634 e!1622638)))

(declare-fun res!1081691 () Bool)

(assert (=> b!2571045 (=> res!1081691 e!1622638)))

(assert (=> b!2571045 (= res!1081691 call!165852)))

(declare-fun b!2571039 () Bool)

(declare-fun res!1081689 () Bool)

(assert (=> b!2571039 (=> (not res!1081689) (not e!1622637))))

(assert (=> b!2571039 (= res!1081689 (not call!165852))))

(declare-fun d!727329 () Bool)

(declare-fun e!1622639 () Bool)

(assert (=> d!727329 e!1622639))

(declare-fun c!413753 () Bool)

(assert (=> d!727329 (= c!413753 ((_ is EmptyExpr!7639) lt!905919))))

(assert (=> d!727329 (= lt!906015 e!1622636)))

(declare-fun c!413751 () Bool)

(assert (=> d!727329 (= c!413751 (isEmpty!17064 tl!4068))))

(assert (=> d!727329 (validRegex!3265 lt!905919)))

(assert (=> d!727329 (= (matchR!3582 lt!905919 tl!4068) lt!906015)))

(declare-fun b!2571046 () Bool)

(assert (=> b!2571046 (= e!1622636 (matchR!3582 (derivativeStep!2208 lt!905919 (head!5844 tl!4068)) (tail!4119 tl!4068)))))

(declare-fun b!2571047 () Bool)

(declare-fun res!1081687 () Bool)

(assert (=> b!2571047 (=> (not res!1081687) (not e!1622637))))

(assert (=> b!2571047 (= res!1081687 (isEmpty!17064 (tail!4119 tl!4068)))))

(declare-fun b!2571048 () Bool)

(assert (=> b!2571048 (= e!1622639 e!1622635)))

(declare-fun c!413752 () Bool)

(assert (=> b!2571048 (= c!413752 ((_ is EmptyLang!7639) lt!905919))))

(declare-fun b!2571049 () Bool)

(assert (=> b!2571049 (= e!1622639 (= lt!906015 call!165852))))

(assert (= (and d!727329 c!413751) b!2571036))

(assert (= (and d!727329 (not c!413751)) b!2571046))

(assert (= (and d!727329 c!413753) b!2571049))

(assert (= (and d!727329 (not c!413753)) b!2571048))

(assert (= (and b!2571048 c!413752) b!2571043))

(assert (= (and b!2571048 (not c!413752)) b!2571042))

(assert (= (and b!2571042 (not res!1081686)) b!2571041))

(assert (= (and b!2571041 res!1081685) b!2571039))

(assert (= (and b!2571039 res!1081689) b!2571047))

(assert (= (and b!2571047 res!1081687) b!2571037))

(assert (= (and b!2571041 (not res!1081692)) b!2571044))

(assert (= (and b!2571044 res!1081688) b!2571045))

(assert (= (and b!2571045 (not res!1081691)) b!2571038))

(assert (= (and b!2571038 (not res!1081690)) b!2571040))

(assert (= (or b!2571049 b!2571039 b!2571045) bm!165847))

(assert (=> b!2571037 m!2907291))

(assert (=> bm!165847 m!2907293))

(assert (=> b!2571047 m!2907295))

(assert (=> b!2571047 m!2907295))

(assert (=> b!2571047 m!2907297))

(assert (=> b!2571046 m!2907291))

(assert (=> b!2571046 m!2907291))

(declare-fun m!2907359 () Bool)

(assert (=> b!2571046 m!2907359))

(assert (=> b!2571046 m!2907295))

(assert (=> b!2571046 m!2907359))

(assert (=> b!2571046 m!2907295))

(declare-fun m!2907361 () Bool)

(assert (=> b!2571046 m!2907361))

(assert (=> b!2571038 m!2907295))

(assert (=> b!2571038 m!2907295))

(assert (=> b!2571038 m!2907297))

(assert (=> d!727329 m!2907293))

(assert (=> d!727329 m!2907339))

(declare-fun m!2907363 () Bool)

(assert (=> b!2571036 m!2907363))

(assert (=> b!2571040 m!2907291))

(assert (=> b!2570482 d!727329))

(declare-fun d!727331 () Bool)

(declare-fun e!1622645 () Bool)

(assert (=> d!727331 e!1622645))

(declare-fun res!1081697 () Bool)

(assert (=> d!727331 (=> res!1081697 e!1622645)))

(assert (=> d!727331 (= res!1081697 (matchR!3582 lt!905925 tl!4068))))

(declare-fun lt!906018 () Unit!43459)

(declare-fun choose!15167 (Regex!7639 Regex!7639 List!29704) Unit!43459)

(assert (=> d!727331 (= lt!906018 (choose!15167 lt!905925 EmptyLang!7639 tl!4068))))

(declare-fun e!1622646 () Bool)

(assert (=> d!727331 e!1622646))

(declare-fun res!1081698 () Bool)

(assert (=> d!727331 (=> (not res!1081698) (not e!1622646))))

(assert (=> d!727331 (= res!1081698 (validRegex!3265 lt!905925))))

(assert (=> d!727331 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!228 lt!905925 EmptyLang!7639 tl!4068) lt!906018)))

(declare-fun b!2571054 () Bool)

(assert (=> b!2571054 (= e!1622646 (validRegex!3265 EmptyLang!7639))))

(declare-fun b!2571055 () Bool)

(assert (=> b!2571055 (= e!1622645 (matchR!3582 EmptyLang!7639 tl!4068))))

(assert (= (and d!727331 res!1081698) b!2571054))

(assert (= (and d!727331 (not res!1081697)) b!2571055))

(assert (=> d!727331 m!2906933))

(declare-fun m!2907365 () Bool)

(assert (=> d!727331 m!2907365))

(assert (=> d!727331 m!2907355))

(assert (=> b!2571054 m!2907303))

(assert (=> b!2571055 m!2906949))

(assert (=> b!2570482 d!727331))

(declare-fun d!727333 () Bool)

(declare-fun lt!906019 () Regex!7639)

(assert (=> d!727333 (validRegex!3265 lt!906019)))

(declare-fun e!1622647 () Regex!7639)

(assert (=> d!727333 (= lt!906019 e!1622647)))

(declare-fun c!413754 () Bool)

(assert (=> d!727333 (= c!413754 ((_ is Cons!29604) tl!4068))))

(assert (=> d!727333 (validRegex!3265 EmptyLang!7639)))

(assert (=> d!727333 (= (derivative!334 EmptyLang!7639 tl!4068) lt!906019)))

(declare-fun b!2571056 () Bool)

(assert (=> b!2571056 (= e!1622647 (derivative!334 (derivativeStep!2208 EmptyLang!7639 (h!35024 tl!4068)) (t!211403 tl!4068)))))

(declare-fun b!2571057 () Bool)

(assert (=> b!2571057 (= e!1622647 EmptyLang!7639)))

(assert (= (and d!727333 c!413754) b!2571056))

(assert (= (and d!727333 (not c!413754)) b!2571057))

(declare-fun m!2907367 () Bool)

(assert (=> d!727333 m!2907367))

(assert (=> d!727333 m!2907303))

(declare-fun m!2907369 () Bool)

(assert (=> b!2571056 m!2907369))

(assert (=> b!2571056 m!2907369))

(declare-fun m!2907371 () Bool)

(assert (=> b!2571056 m!2907371))

(assert (=> b!2570482 d!727333))

(declare-fun bm!165848 () Bool)

(declare-fun call!165853 () Bool)

(assert (=> bm!165848 (= call!165853 (isEmpty!17064 Nil!29604))))

(declare-fun b!2571058 () Bool)

(declare-fun e!1622650 () Bool)

(assert (=> b!2571058 (= e!1622650 (nullable!2556 (derivative!334 lt!905919 tl!4068)))))

(declare-fun b!2571059 () Bool)

(declare-fun e!1622651 () Bool)

(assert (=> b!2571059 (= e!1622651 (= (head!5844 Nil!29604) (c!413611 (derivative!334 lt!905919 tl!4068))))))

(declare-fun b!2571060 () Bool)

(declare-fun res!1081704 () Bool)

(declare-fun e!1622652 () Bool)

(assert (=> b!2571060 (=> res!1081704 e!1622652)))

(assert (=> b!2571060 (= res!1081704 (not (isEmpty!17064 (tail!4119 Nil!29604))))))

(declare-fun b!2571062 () Bool)

(assert (=> b!2571062 (= e!1622652 (not (= (head!5844 Nil!29604) (c!413611 (derivative!334 lt!905919 tl!4068)))))))

(declare-fun b!2571063 () Bool)

(declare-fun res!1081706 () Bool)

(declare-fun e!1622654 () Bool)

(assert (=> b!2571063 (=> res!1081706 e!1622654)))

(assert (=> b!2571063 (= res!1081706 e!1622651)))

(declare-fun res!1081699 () Bool)

(assert (=> b!2571063 (=> (not res!1081699) (not e!1622651))))

(declare-fun lt!906020 () Bool)

(assert (=> b!2571063 (= res!1081699 lt!906020)))

(declare-fun b!2571064 () Bool)

(declare-fun res!1081700 () Bool)

(assert (=> b!2571064 (=> res!1081700 e!1622654)))

(assert (=> b!2571064 (= res!1081700 (not ((_ is ElementMatch!7639) (derivative!334 lt!905919 tl!4068))))))

(declare-fun e!1622649 () Bool)

(assert (=> b!2571064 (= e!1622649 e!1622654)))

(declare-fun b!2571065 () Bool)

(assert (=> b!2571065 (= e!1622649 (not lt!906020))))

(declare-fun b!2571066 () Bool)

(declare-fun e!1622648 () Bool)

(assert (=> b!2571066 (= e!1622654 e!1622648)))

(declare-fun res!1081702 () Bool)

(assert (=> b!2571066 (=> (not res!1081702) (not e!1622648))))

(assert (=> b!2571066 (= res!1081702 (not lt!906020))))

(declare-fun b!2571067 () Bool)

(assert (=> b!2571067 (= e!1622648 e!1622652)))

(declare-fun res!1081705 () Bool)

(assert (=> b!2571067 (=> res!1081705 e!1622652)))

(assert (=> b!2571067 (= res!1081705 call!165853)))

(declare-fun b!2571061 () Bool)

(declare-fun res!1081703 () Bool)

(assert (=> b!2571061 (=> (not res!1081703) (not e!1622651))))

(assert (=> b!2571061 (= res!1081703 (not call!165853))))

(declare-fun d!727335 () Bool)

(declare-fun e!1622653 () Bool)

(assert (=> d!727335 e!1622653))

(declare-fun c!413757 () Bool)

(assert (=> d!727335 (= c!413757 ((_ is EmptyExpr!7639) (derivative!334 lt!905919 tl!4068)))))

(assert (=> d!727335 (= lt!906020 e!1622650)))

(declare-fun c!413755 () Bool)

(assert (=> d!727335 (= c!413755 (isEmpty!17064 Nil!29604))))

(assert (=> d!727335 (validRegex!3265 (derivative!334 lt!905919 tl!4068))))

(assert (=> d!727335 (= (matchR!3582 (derivative!334 lt!905919 tl!4068) Nil!29604) lt!906020)))

(declare-fun b!2571068 () Bool)

(assert (=> b!2571068 (= e!1622650 (matchR!3582 (derivativeStep!2208 (derivative!334 lt!905919 tl!4068) (head!5844 Nil!29604)) (tail!4119 Nil!29604)))))

(declare-fun b!2571069 () Bool)

(declare-fun res!1081701 () Bool)

(assert (=> b!2571069 (=> (not res!1081701) (not e!1622651))))

(assert (=> b!2571069 (= res!1081701 (isEmpty!17064 (tail!4119 Nil!29604)))))

(declare-fun b!2571070 () Bool)

(assert (=> b!2571070 (= e!1622653 e!1622649)))

(declare-fun c!413756 () Bool)

(assert (=> b!2571070 (= c!413756 ((_ is EmptyLang!7639) (derivative!334 lt!905919 tl!4068)))))

(declare-fun b!2571071 () Bool)

(assert (=> b!2571071 (= e!1622653 (= lt!906020 call!165853))))

(assert (= (and d!727335 c!413755) b!2571058))

(assert (= (and d!727335 (not c!413755)) b!2571068))

(assert (= (and d!727335 c!413757) b!2571071))

(assert (= (and d!727335 (not c!413757)) b!2571070))

(assert (= (and b!2571070 c!413756) b!2571065))

(assert (= (and b!2571070 (not c!413756)) b!2571064))

(assert (= (and b!2571064 (not res!1081700)) b!2571063))

(assert (= (and b!2571063 res!1081699) b!2571061))

(assert (= (and b!2571061 res!1081703) b!2571069))

(assert (= (and b!2571069 res!1081701) b!2571059))

(assert (= (and b!2571063 (not res!1081706)) b!2571066))

(assert (= (and b!2571066 res!1081702) b!2571067))

(assert (= (and b!2571067 (not res!1081705)) b!2571060))

(assert (= (and b!2571060 (not res!1081704)) b!2571062))

(assert (= (or b!2571071 b!2571061 b!2571067) bm!165848))

(assert (=> b!2571059 m!2907239))

(assert (=> bm!165848 m!2907241))

(assert (=> b!2571069 m!2907243))

(assert (=> b!2571069 m!2907243))

(assert (=> b!2571069 m!2907245))

(assert (=> b!2571068 m!2907239))

(assert (=> b!2571068 m!2906937))

(assert (=> b!2571068 m!2907239))

(declare-fun m!2907373 () Bool)

(assert (=> b!2571068 m!2907373))

(assert (=> b!2571068 m!2907243))

(assert (=> b!2571068 m!2907373))

(assert (=> b!2571068 m!2907243))

(declare-fun m!2907375 () Bool)

(assert (=> b!2571068 m!2907375))

(assert (=> b!2571060 m!2907243))

(assert (=> b!2571060 m!2907243))

(assert (=> b!2571060 m!2907245))

(assert (=> d!727335 m!2907241))

(assert (=> d!727335 m!2906937))

(declare-fun m!2907377 () Bool)

(assert (=> d!727335 m!2907377))

(assert (=> b!2571058 m!2906937))

(declare-fun m!2907379 () Bool)

(assert (=> b!2571058 m!2907379))

(assert (=> b!2571062 m!2907239))

(assert (=> b!2570482 d!727335))

(declare-fun e!1622657 () Bool)

(assert (=> b!2570479 (= tp!817881 e!1622657)))

(declare-fun b!2571083 () Bool)

(declare-fun tp!817931 () Bool)

(declare-fun tp!817933 () Bool)

(assert (=> b!2571083 (= e!1622657 (and tp!817931 tp!817933))))

(declare-fun b!2571084 () Bool)

(declare-fun tp!817934 () Bool)

(assert (=> b!2571084 (= e!1622657 tp!817934)))

(declare-fun b!2571085 () Bool)

(declare-fun tp!817932 () Bool)

(declare-fun tp!817935 () Bool)

(assert (=> b!2571085 (= e!1622657 (and tp!817932 tp!817935))))

(declare-fun b!2571082 () Bool)

(assert (=> b!2571082 (= e!1622657 tp_is_empty!13133)))

(assert (= (and b!2570479 ((_ is ElementMatch!7639) (regOne!15790 r!27340))) b!2571082))

(assert (= (and b!2570479 ((_ is Concat!12335) (regOne!15790 r!27340))) b!2571083))

(assert (= (and b!2570479 ((_ is Star!7639) (regOne!15790 r!27340))) b!2571084))

(assert (= (and b!2570479 ((_ is Union!7639) (regOne!15790 r!27340))) b!2571085))

(declare-fun e!1622658 () Bool)

(assert (=> b!2570479 (= tp!817878 e!1622658)))

(declare-fun b!2571087 () Bool)

(declare-fun tp!817936 () Bool)

(declare-fun tp!817938 () Bool)

(assert (=> b!2571087 (= e!1622658 (and tp!817936 tp!817938))))

(declare-fun b!2571088 () Bool)

(declare-fun tp!817939 () Bool)

(assert (=> b!2571088 (= e!1622658 tp!817939)))

(declare-fun b!2571089 () Bool)

(declare-fun tp!817937 () Bool)

(declare-fun tp!817940 () Bool)

(assert (=> b!2571089 (= e!1622658 (and tp!817937 tp!817940))))

(declare-fun b!2571086 () Bool)

(assert (=> b!2571086 (= e!1622658 tp_is_empty!13133)))

(assert (= (and b!2570479 ((_ is ElementMatch!7639) (regTwo!15790 r!27340))) b!2571086))

(assert (= (and b!2570479 ((_ is Concat!12335) (regTwo!15790 r!27340))) b!2571087))

(assert (= (and b!2570479 ((_ is Star!7639) (regTwo!15790 r!27340))) b!2571088))

(assert (= (and b!2570479 ((_ is Union!7639) (regTwo!15790 r!27340))) b!2571089))

(declare-fun e!1622659 () Bool)

(assert (=> b!2570480 (= tp!817879 e!1622659)))

(declare-fun b!2571091 () Bool)

(declare-fun tp!817941 () Bool)

(declare-fun tp!817943 () Bool)

(assert (=> b!2571091 (= e!1622659 (and tp!817941 tp!817943))))

(declare-fun b!2571092 () Bool)

(declare-fun tp!817944 () Bool)

(assert (=> b!2571092 (= e!1622659 tp!817944)))

(declare-fun b!2571093 () Bool)

(declare-fun tp!817942 () Bool)

(declare-fun tp!817945 () Bool)

(assert (=> b!2571093 (= e!1622659 (and tp!817942 tp!817945))))

(declare-fun b!2571090 () Bool)

(assert (=> b!2571090 (= e!1622659 tp_is_empty!13133)))

(assert (= (and b!2570480 ((_ is ElementMatch!7639) (regOne!15791 r!27340))) b!2571090))

(assert (= (and b!2570480 ((_ is Concat!12335) (regOne!15791 r!27340))) b!2571091))

(assert (= (and b!2570480 ((_ is Star!7639) (regOne!15791 r!27340))) b!2571092))

(assert (= (and b!2570480 ((_ is Union!7639) (regOne!15791 r!27340))) b!2571093))

(declare-fun e!1622660 () Bool)

(assert (=> b!2570480 (= tp!817880 e!1622660)))

(declare-fun b!2571095 () Bool)

(declare-fun tp!817946 () Bool)

(declare-fun tp!817948 () Bool)

(assert (=> b!2571095 (= e!1622660 (and tp!817946 tp!817948))))

(declare-fun b!2571096 () Bool)

(declare-fun tp!817949 () Bool)

(assert (=> b!2571096 (= e!1622660 tp!817949)))

(declare-fun b!2571097 () Bool)

(declare-fun tp!817947 () Bool)

(declare-fun tp!817950 () Bool)

(assert (=> b!2571097 (= e!1622660 (and tp!817947 tp!817950))))

(declare-fun b!2571094 () Bool)

(assert (=> b!2571094 (= e!1622660 tp_is_empty!13133)))

(assert (= (and b!2570480 ((_ is ElementMatch!7639) (regTwo!15791 r!27340))) b!2571094))

(assert (= (and b!2570480 ((_ is Concat!12335) (regTwo!15791 r!27340))) b!2571095))

(assert (= (and b!2570480 ((_ is Star!7639) (regTwo!15791 r!27340))) b!2571096))

(assert (= (and b!2570480 ((_ is Union!7639) (regTwo!15791 r!27340))) b!2571097))

(declare-fun b!2571102 () Bool)

(declare-fun e!1622663 () Bool)

(declare-fun tp!817953 () Bool)

(assert (=> b!2571102 (= e!1622663 (and tp_is_empty!13133 tp!817953))))

(assert (=> b!2570476 (= tp!817877 e!1622663)))

(assert (= (and b!2570476 ((_ is Cons!29604) (t!211403 tl!4068))) b!2571102))

(declare-fun e!1622664 () Bool)

(assert (=> b!2570488 (= tp!817882 e!1622664)))

(declare-fun b!2571104 () Bool)

(declare-fun tp!817954 () Bool)

(declare-fun tp!817956 () Bool)

(assert (=> b!2571104 (= e!1622664 (and tp!817954 tp!817956))))

(declare-fun b!2571105 () Bool)

(declare-fun tp!817957 () Bool)

(assert (=> b!2571105 (= e!1622664 tp!817957)))

(declare-fun b!2571106 () Bool)

(declare-fun tp!817955 () Bool)

(declare-fun tp!817958 () Bool)

(assert (=> b!2571106 (= e!1622664 (and tp!817955 tp!817958))))

(declare-fun b!2571103 () Bool)

(assert (=> b!2571103 (= e!1622664 tp_is_empty!13133)))

(assert (= (and b!2570488 ((_ is ElementMatch!7639) (reg!7968 r!27340))) b!2571103))

(assert (= (and b!2570488 ((_ is Concat!12335) (reg!7968 r!27340))) b!2571104))

(assert (= (and b!2570488 ((_ is Star!7639) (reg!7968 r!27340))) b!2571105))

(assert (= (and b!2570488 ((_ is Union!7639) (reg!7968 r!27340))) b!2571106))

(check-sat (not b!2571062) (not d!727333) (not b!2570541) (not bm!165827) (not d!727317) (not b!2570728) (not b!2571022) (not d!727321) (not d!727323) (not bm!165826) (not bm!165846) (not b!2571032) (not b!2570768) (not bm!165842) (not bm!165841) (not b!2571083) (not d!727283) (not d!727275) (not b!2571088) (not b!2570769) (not d!727239) (not b!2570969) (not b!2570543) (not b!2571102) (not d!727313) (not b!2570723) (not d!727291) (not bm!165838) (not b!2570754) (not b!2571104) (not b!2570932) (not b!2570765) (not b!2571093) (not b!2571026) (not d!727307) (not d!727329) (not b!2571056) (not b!2570758) (not b!2570770) (not b!2570858) (not b!2571059) (not b!2571040) (not d!727231) tp_is_empty!13133 (not b!2571084) (not b!2570539) (not b!2571020) (not bm!165847) (not b!2571037) (not bm!165845) (not bm!165783) (not bm!165810) (not b!2571087) (not b!2571024) (not b!2571069) (not b!2570859) (not b!2570772) (not b!2570550) (not bm!165828) (not b!2571092) (not b!2570850) (not b!2571003) (not b!2570725) (not b!2570756) (not b!2570721) (not b!2570729) (not b!2571089) (not bm!165809) (not b!2571095) (not d!727327) (not b!2571068) (not b!2570966) (not b!2571054) (not b!2570957) (not b!2571036) (not b!2570959) (not b!2571060) (not b!2571038) (not bm!165812) (not b!2571013) (not bm!165848) (not b!2570549) (not b!2571097) (not d!727319) (not d!727335) (not b!2571106) (not b!2570956) (not b!2570830) (not d!727245) (not d!727315) (not b!2570540) (not b!2571085) (not d!727305) (not d!727277) (not b!2570764) (not bm!165801) (not d!727295) (not b!2570779) (not b!2570755) (not b!2571046) (not bm!165802) (not b!2570849) (not b!2570955) (not b!2570778) (not b!2570579) (not b!2570722) (not b!2571058) (not b!2571055) (not d!727243) (not b!2571105) (not b!2571023) (not d!727325) (not d!727331) (not b!2571033) (not b!2570978) (not b!2570848) (not b!2570578) (not b!2571096) (not b!2570965) (not b!2570852) (not b!2571047) (not d!727309) (not b!2571091) (not d!727225))
(check-sat)
(get-model)

(declare-fun d!727511 () Bool)

(assert (not d!727511))

(assert (=> b!2570859 d!727511))

(declare-fun d!727513 () Bool)

(assert (not d!727513))

(assert (=> b!2570859 d!727513))

(declare-fun bm!165956 () Bool)

(declare-fun call!165961 () Bool)

(assert (=> bm!165956 (= call!165961 (isEmpty!17064 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(declare-fun e!1622932 () Bool)

(declare-fun b!2571533 () Bool)

(assert (=> b!2571533 (= e!1622932 (nullable!2556 (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))))))))

(declare-fun b!2571534 () Bool)

(declare-fun e!1622933 () Bool)

(assert (=> b!2571534 (= e!1622933 (= (head!5844 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))) (c!413611 (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))))

(declare-fun b!2571535 () Bool)

(declare-fun res!1081892 () Bool)

(declare-fun e!1622934 () Bool)

(assert (=> b!2571535 (=> res!1081892 e!1622934)))

(assert (=> b!2571535 (= res!1081892 (not (isEmpty!17064 (tail!4119 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))))

(declare-fun b!2571537 () Bool)

(assert (=> b!2571537 (= e!1622934 (not (= (head!5844 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))) (c!413611 (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))))))))))

(declare-fun b!2571538 () Bool)

(declare-fun res!1081894 () Bool)

(declare-fun e!1622936 () Bool)

(assert (=> b!2571538 (=> res!1081894 e!1622936)))

(assert (=> b!2571538 (= res!1081894 e!1622933)))

(declare-fun res!1081887 () Bool)

(assert (=> b!2571538 (=> (not res!1081887) (not e!1622933))))

(declare-fun lt!906053 () Bool)

(assert (=> b!2571538 (= res!1081887 lt!906053)))

(declare-fun b!2571539 () Bool)

(declare-fun res!1081888 () Bool)

(assert (=> b!2571539 (=> res!1081888 e!1622936)))

(assert (=> b!2571539 (= res!1081888 (not ((_ is ElementMatch!7639) (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))))

(declare-fun e!1622931 () Bool)

(assert (=> b!2571539 (= e!1622931 e!1622936)))

(declare-fun b!2571540 () Bool)

(assert (=> b!2571540 (= e!1622931 (not lt!906053))))

(declare-fun b!2571541 () Bool)

(declare-fun e!1622930 () Bool)

(assert (=> b!2571541 (= e!1622936 e!1622930)))

(declare-fun res!1081890 () Bool)

(assert (=> b!2571541 (=> (not res!1081890) (not e!1622930))))

(assert (=> b!2571541 (= res!1081890 (not lt!906053))))

(declare-fun b!2571542 () Bool)

(assert (=> b!2571542 (= e!1622930 e!1622934)))

(declare-fun res!1081893 () Bool)

(assert (=> b!2571542 (=> res!1081893 e!1622934)))

(assert (=> b!2571542 (= res!1081893 call!165961)))

(declare-fun b!2571536 () Bool)

(declare-fun res!1081891 () Bool)

(assert (=> b!2571536 (=> (not res!1081891) (not e!1622933))))

(assert (=> b!2571536 (= res!1081891 (not call!165961))))

(declare-fun d!727517 () Bool)

(declare-fun e!1622935 () Bool)

(assert (=> d!727517 e!1622935))

(declare-fun c!413883 () Bool)

(assert (=> d!727517 (= c!413883 ((_ is EmptyExpr!7639) (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))))))))

(assert (=> d!727517 (= lt!906053 e!1622932)))

(declare-fun c!413881 () Bool)

(assert (=> d!727517 (= c!413881 (isEmpty!17064 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(assert (=> d!727517 (validRegex!3265 (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(assert (=> d!727517 (= (matchR!3582 (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))) (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))) lt!906053)))

(declare-fun b!2571543 () Bool)

(assert (=> b!2571543 (= e!1622932 (matchR!3582 (derivativeStep!2208 (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))) (head!5844 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927))))) (tail!4119 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927))))))))

(declare-fun b!2571544 () Bool)

(declare-fun res!1081889 () Bool)

(assert (=> b!2571544 (=> (not res!1081889) (not e!1622933))))

(assert (=> b!2571544 (= res!1081889 (isEmpty!17064 (tail!4119 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927))))))))

(declare-fun b!2571545 () Bool)

(assert (=> b!2571545 (= e!1622935 e!1622931)))

(declare-fun c!413882 () Bool)

(assert (=> b!2571545 (= c!413882 ((_ is EmptyLang!7639) (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))))))))

(declare-fun b!2571546 () Bool)

(assert (=> b!2571546 (= e!1622935 (= lt!906053 call!165961))))

(assert (= (and d!727517 c!413881) b!2571533))

(assert (= (and d!727517 (not c!413881)) b!2571543))

(assert (= (and d!727517 c!413883) b!2571546))

(assert (= (and d!727517 (not c!413883)) b!2571545))

(assert (= (and b!2571545 c!413882) b!2571540))

(assert (= (and b!2571545 (not c!413882)) b!2571539))

(assert (= (and b!2571539 (not res!1081888)) b!2571538))

(assert (= (and b!2571538 res!1081887) b!2571536))

(assert (= (and b!2571536 res!1081891) b!2571544))

(assert (= (and b!2571544 res!1081889) b!2571534))

(assert (= (and b!2571538 (not res!1081894)) b!2571541))

(assert (= (and b!2571541 res!1081890) b!2571542))

(assert (= (and b!2571542 (not res!1081893)) b!2571535))

(assert (= (and b!2571535 (not res!1081892)) b!2571537))

(assert (= (or b!2571546 b!2571536 b!2571542) bm!165956))

(assert (=> b!2571534 m!2906971))

(declare-fun m!2907799 () Bool)

(assert (=> b!2571534 m!2907799))

(assert (=> bm!165956 m!2906971))

(assert (=> bm!165956 m!2906973))

(assert (=> b!2571544 m!2906971))

(declare-fun m!2907801 () Bool)

(assert (=> b!2571544 m!2907801))

(assert (=> b!2571544 m!2907801))

(declare-fun m!2907803 () Bool)

(assert (=> b!2571544 m!2907803))

(assert (=> b!2571543 m!2906971))

(assert (=> b!2571543 m!2907799))

(assert (=> b!2571543 m!2906975))

(assert (=> b!2571543 m!2907799))

(declare-fun m!2907805 () Bool)

(assert (=> b!2571543 m!2907805))

(assert (=> b!2571543 m!2906971))

(assert (=> b!2571543 m!2907801))

(assert (=> b!2571543 m!2907805))

(assert (=> b!2571543 m!2907801))

(declare-fun m!2907809 () Bool)

(assert (=> b!2571543 m!2907809))

(assert (=> b!2571535 m!2906971))

(assert (=> b!2571535 m!2907801))

(assert (=> b!2571535 m!2907801))

(assert (=> b!2571535 m!2907803))

(assert (=> d!727517 m!2906971))

(assert (=> d!727517 m!2906973))

(assert (=> d!727517 m!2906975))

(declare-fun m!2907813 () Bool)

(assert (=> d!727517 m!2907813))

(assert (=> b!2571533 m!2906975))

(declare-fun m!2907815 () Bool)

(assert (=> b!2571533 m!2907815))

(assert (=> b!2571537 m!2906971))

(assert (=> b!2571537 m!2907799))

(assert (=> b!2570549 d!727517))

(declare-fun b!2571593 () Bool)

(declare-fun e!1622968 () Regex!7639)

(declare-fun call!165973 () Regex!7639)

(assert (=> b!2571593 (= e!1622968 (Concat!12335 call!165973 (regOne!15790 r!27340)))))

(declare-fun d!727529 () Bool)

(declare-fun lt!906056 () Regex!7639)

(assert (=> d!727529 (validRegex!3265 lt!906056)))

(declare-fun e!1622967 () Regex!7639)

(assert (=> d!727529 (= lt!906056 e!1622967)))

(declare-fun c!413894 () Bool)

(assert (=> d!727529 (= c!413894 (or ((_ is EmptyExpr!7639) (regOne!15790 r!27340)) ((_ is EmptyLang!7639) (regOne!15790 r!27340))))))

(assert (=> d!727529 (validRegex!3265 (regOne!15790 r!27340))))

(assert (=> d!727529 (= (derivativeStep!2208 (regOne!15790 r!27340) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))) lt!906056)))

(declare-fun call!165972 () Regex!7639)

(declare-fun c!413898 () Bool)

(declare-fun bm!165965 () Bool)

(assert (=> bm!165965 (= call!165972 (derivativeStep!2208 (ite c!413898 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(declare-fun b!2571594 () Bool)

(declare-fun e!1622966 () Regex!7639)

(assert (=> b!2571594 (= e!1622967 e!1622966)))

(declare-fun c!413897 () Bool)

(assert (=> b!2571594 (= c!413897 ((_ is ElementMatch!7639) (regOne!15790 r!27340)))))

(declare-fun b!2571595 () Bool)

(declare-fun e!1622969 () Regex!7639)

(assert (=> b!2571595 (= e!1622969 e!1622968)))

(declare-fun c!413896 () Bool)

(assert (=> b!2571595 (= c!413896 ((_ is Star!7639) (regOne!15790 r!27340)))))

(declare-fun b!2571596 () Bool)

(declare-fun c!413895 () Bool)

(assert (=> b!2571596 (= c!413895 (nullable!2556 (regOne!15790 (regOne!15790 r!27340))))))

(declare-fun e!1622965 () Regex!7639)

(assert (=> b!2571596 (= e!1622968 e!1622965)))

(declare-fun b!2571597 () Bool)

(assert (=> b!2571597 (= e!1622967 EmptyLang!7639)))

(declare-fun b!2571598 () Bool)

(assert (=> b!2571598 (= e!1622966 (ite (= (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))) (c!413611 (regOne!15790 r!27340))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2571599 () Bool)

(declare-fun call!165971 () Regex!7639)

(assert (=> b!2571599 (= e!1622965 (Union!7639 (Concat!12335 call!165971 (regTwo!15790 (regOne!15790 r!27340))) call!165972))))

(declare-fun bm!165966 () Bool)

(assert (=> bm!165966 (= call!165971 call!165973)))

(declare-fun bm!165967 () Bool)

(declare-fun call!165970 () Regex!7639)

(assert (=> bm!165967 (= call!165973 call!165970)))

(declare-fun b!2571600 () Bool)

(assert (=> b!2571600 (= e!1622965 (Union!7639 (Concat!12335 call!165971 (regTwo!15790 (regOne!15790 r!27340))) EmptyLang!7639))))

(declare-fun b!2571601 () Bool)

(assert (=> b!2571601 (= c!413898 ((_ is Union!7639) (regOne!15790 r!27340)))))

(assert (=> b!2571601 (= e!1622966 e!1622969)))

(declare-fun b!2571602 () Bool)

(assert (=> b!2571602 (= e!1622969 (Union!7639 call!165970 call!165972))))

(declare-fun bm!165968 () Bool)

(assert (=> bm!165968 (= call!165970 (derivativeStep!2208 (ite c!413898 (regOne!15791 (regOne!15790 r!27340)) (ite c!413896 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))) (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(assert (= (and d!727529 c!413894) b!2571597))

(assert (= (and d!727529 (not c!413894)) b!2571594))

(assert (= (and b!2571594 c!413897) b!2571598))

(assert (= (and b!2571594 (not c!413897)) b!2571601))

(assert (= (and b!2571601 c!413898) b!2571602))

(assert (= (and b!2571601 (not c!413898)) b!2571595))

(assert (= (and b!2571595 c!413896) b!2571593))

(assert (= (and b!2571595 (not c!413896)) b!2571596))

(assert (= (and b!2571596 c!413895) b!2571599))

(assert (= (and b!2571596 (not c!413895)) b!2571600))

(assert (= (or b!2571599 b!2571600) bm!165966))

(assert (= (or b!2571593 bm!165966) bm!165967))

(assert (= (or b!2571602 b!2571599) bm!165965))

(assert (= (or b!2571602 bm!165967) bm!165968))

(declare-fun m!2907835 () Bool)

(assert (=> d!727529 m!2907835))

(assert (=> d!727529 m!2906911))

(assert (=> bm!165965 m!2906967))

(declare-fun m!2907839 () Bool)

(assert (=> bm!165965 m!2907839))

(assert (=> b!2571596 m!2907335))

(assert (=> bm!165968 m!2906967))

(declare-fun m!2907841 () Bool)

(assert (=> bm!165968 m!2907841))

(assert (=> b!2570549 d!727529))

(declare-fun d!727537 () Bool)

(assert (=> d!727537 (= (head!5844 (Cons!29604 c!14016 (_1!17342 lt!905927))) (h!35024 (Cons!29604 c!14016 (_1!17342 lt!905927))))))

(assert (=> b!2570549 d!727537))

(declare-fun d!727539 () Bool)

(assert (=> d!727539 (= (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927))) (t!211403 (Cons!29604 c!14016 (_1!17342 lt!905927))))))

(assert (=> b!2570549 d!727539))

(declare-fun d!727545 () Bool)

(assert (=> d!727545 (= (isEmpty!17064 (tail!4119 (_2!17342 lt!905927))) ((_ is Nil!29604) (tail!4119 (_2!17342 lt!905927))))))

(assert (=> b!2570756 d!727545))

(declare-fun d!727549 () Bool)

(assert (=> d!727549 (= (tail!4119 (_2!17342 lt!905927)) (t!211403 (_2!17342 lt!905927)))))

(assert (=> b!2570756 d!727549))

(declare-fun b!2571748 () Bool)

(declare-fun e!1623034 () Bool)

(declare-fun call!165992 () Bool)

(assert (=> b!2571748 (= e!1623034 call!165992)))

(declare-fun b!2571749 () Bool)

(declare-fun e!1623035 () Bool)

(declare-fun call!165991 () Bool)

(assert (=> b!2571749 (= e!1623035 call!165991)))

(declare-fun b!2571750 () Bool)

(declare-fun e!1623032 () Bool)

(assert (=> b!2571750 (= e!1623032 e!1623034)))

(declare-fun res!1081942 () Bool)

(assert (=> b!2571750 (= res!1081942 call!165991)))

(assert (=> b!2571750 (=> res!1081942 e!1623034)))

(declare-fun b!2571751 () Bool)

(declare-fun e!1623037 () Bool)

(declare-fun e!1623036 () Bool)

(assert (=> b!2571751 (= e!1623037 e!1623036)))

(declare-fun res!1081943 () Bool)

(assert (=> b!2571751 (=> res!1081943 e!1623036)))

(assert (=> b!2571751 (= res!1081943 ((_ is Star!7639) lt!905920))))

(declare-fun bm!165986 () Bool)

(declare-fun c!413930 () Bool)

(assert (=> bm!165986 (= call!165991 (nullable!2556 (ite c!413930 (regOne!15791 lt!905920) (regTwo!15790 lt!905920))))))

(declare-fun d!727551 () Bool)

(declare-fun res!1081941 () Bool)

(declare-fun e!1623033 () Bool)

(assert (=> d!727551 (=> res!1081941 e!1623033)))

(assert (=> d!727551 (= res!1081941 ((_ is EmptyExpr!7639) lt!905920))))

(assert (=> d!727551 (= (nullableFct!781 lt!905920) e!1623033)))

(declare-fun bm!165987 () Bool)

(assert (=> bm!165987 (= call!165992 (nullable!2556 (ite c!413930 (regTwo!15791 lt!905920) (regOne!15790 lt!905920))))))

(declare-fun b!2571752 () Bool)

(assert (=> b!2571752 (= e!1623032 e!1623035)))

(declare-fun res!1081939 () Bool)

(assert (=> b!2571752 (= res!1081939 call!165992)))

(assert (=> b!2571752 (=> (not res!1081939) (not e!1623035))))

(declare-fun b!2571753 () Bool)

(assert (=> b!2571753 (= e!1623036 e!1623032)))

(assert (=> b!2571753 (= c!413930 ((_ is Union!7639) lt!905920))))

(declare-fun b!2571754 () Bool)

(assert (=> b!2571754 (= e!1623033 e!1623037)))

(declare-fun res!1081940 () Bool)

(assert (=> b!2571754 (=> (not res!1081940) (not e!1623037))))

(assert (=> b!2571754 (= res!1081940 (and (not ((_ is EmptyLang!7639) lt!905920)) (not ((_ is ElementMatch!7639) lt!905920))))))

(assert (= (and d!727551 (not res!1081941)) b!2571754))

(assert (= (and b!2571754 res!1081940) b!2571751))

(assert (= (and b!2571751 (not res!1081943)) b!2571753))

(assert (= (and b!2571753 c!413930) b!2571750))

(assert (= (and b!2571753 (not c!413930)) b!2571752))

(assert (= (and b!2571750 (not res!1081942)) b!2571748))

(assert (= (and b!2571752 res!1081939) b!2571749))

(assert (= (or b!2571748 b!2571752) bm!165987))

(assert (= (or b!2571750 b!2571749) bm!165986))

(declare-fun m!2907883 () Bool)

(assert (=> bm!165986 m!2907883))

(declare-fun m!2907885 () Bool)

(assert (=> bm!165987 m!2907885))

(assert (=> d!727309 d!727551))

(declare-fun bm!165988 () Bool)

(declare-fun call!165993 () Bool)

(assert (=> bm!165988 (= call!165993 (isEmpty!17064 (tail!4119 tl!4068)))))

(declare-fun b!2571779 () Bool)

(declare-fun e!1623046 () Bool)

(assert (=> b!2571779 (= e!1623046 (nullable!2556 (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068))))))

(declare-fun b!2571780 () Bool)

(declare-fun e!1623047 () Bool)

(assert (=> b!2571780 (= e!1623047 (= (head!5844 (tail!4119 tl!4068)) (c!413611 (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068)))))))

(declare-fun b!2571781 () Bool)

(declare-fun res!1081949 () Bool)

(declare-fun e!1623048 () Bool)

(assert (=> b!2571781 (=> res!1081949 e!1623048)))

(assert (=> b!2571781 (= res!1081949 (not (isEmpty!17064 (tail!4119 (tail!4119 tl!4068)))))))

(declare-fun b!2571783 () Bool)

(assert (=> b!2571783 (= e!1623048 (not (= (head!5844 (tail!4119 tl!4068)) (c!413611 (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068))))))))

(declare-fun b!2571784 () Bool)

(declare-fun res!1081951 () Bool)

(declare-fun e!1623050 () Bool)

(assert (=> b!2571784 (=> res!1081951 e!1623050)))

(assert (=> b!2571784 (= res!1081951 e!1623047)))

(declare-fun res!1081944 () Bool)

(assert (=> b!2571784 (=> (not res!1081944) (not e!1623047))))

(declare-fun lt!906067 () Bool)

(assert (=> b!2571784 (= res!1081944 lt!906067)))

(declare-fun b!2571785 () Bool)

(declare-fun res!1081945 () Bool)

(assert (=> b!2571785 (=> res!1081945 e!1623050)))

(assert (=> b!2571785 (= res!1081945 (not ((_ is ElementMatch!7639) (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068)))))))

(declare-fun e!1623045 () Bool)

(assert (=> b!2571785 (= e!1623045 e!1623050)))

(declare-fun b!2571786 () Bool)

(assert (=> b!2571786 (= e!1623045 (not lt!906067))))

(declare-fun b!2571787 () Bool)

(declare-fun e!1623044 () Bool)

(assert (=> b!2571787 (= e!1623050 e!1623044)))

(declare-fun res!1081947 () Bool)

(assert (=> b!2571787 (=> (not res!1081947) (not e!1623044))))

(assert (=> b!2571787 (= res!1081947 (not lt!906067))))

(declare-fun b!2571789 () Bool)

(assert (=> b!2571789 (= e!1623044 e!1623048)))

(declare-fun res!1081950 () Bool)

(assert (=> b!2571789 (=> res!1081950 e!1623048)))

(assert (=> b!2571789 (= res!1081950 call!165993)))

(declare-fun b!2571782 () Bool)

(declare-fun res!1081948 () Bool)

(assert (=> b!2571782 (=> (not res!1081948) (not e!1623047))))

(assert (=> b!2571782 (= res!1081948 (not call!165993))))

(declare-fun d!727563 () Bool)

(declare-fun e!1623049 () Bool)

(assert (=> d!727563 e!1623049))

(declare-fun c!413933 () Bool)

(assert (=> d!727563 (= c!413933 ((_ is EmptyExpr!7639) (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068))))))

(assert (=> d!727563 (= lt!906067 e!1623046)))

(declare-fun c!413931 () Bool)

(assert (=> d!727563 (= c!413931 (isEmpty!17064 (tail!4119 tl!4068)))))

(assert (=> d!727563 (validRegex!3265 (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068)))))

(assert (=> d!727563 (= (matchR!3582 (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068)) (tail!4119 tl!4068)) lt!906067)))

(declare-fun b!2571791 () Bool)

(assert (=> b!2571791 (= e!1623046 (matchR!3582 (derivativeStep!2208 (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068)) (head!5844 (tail!4119 tl!4068))) (tail!4119 (tail!4119 tl!4068))))))

(declare-fun b!2571793 () Bool)

(declare-fun res!1081946 () Bool)

(assert (=> b!2571793 (=> (not res!1081946) (not e!1623047))))

(assert (=> b!2571793 (= res!1081946 (isEmpty!17064 (tail!4119 (tail!4119 tl!4068))))))

(declare-fun b!2571795 () Bool)

(assert (=> b!2571795 (= e!1623049 e!1623045)))

(declare-fun c!413932 () Bool)

(assert (=> b!2571795 (= c!413932 ((_ is EmptyLang!7639) (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068))))))

(declare-fun b!2571796 () Bool)

(assert (=> b!2571796 (= e!1623049 (= lt!906067 call!165993))))

(assert (= (and d!727563 c!413931) b!2571779))

(assert (= (and d!727563 (not c!413931)) b!2571791))

(assert (= (and d!727563 c!413933) b!2571796))

(assert (= (and d!727563 (not c!413933)) b!2571795))

(assert (= (and b!2571795 c!413932) b!2571786))

(assert (= (and b!2571795 (not c!413932)) b!2571785))

(assert (= (and b!2571785 (not res!1081945)) b!2571784))

(assert (= (and b!2571784 res!1081944) b!2571782))

(assert (= (and b!2571782 res!1081948) b!2571793))

(assert (= (and b!2571793 res!1081946) b!2571780))

(assert (= (and b!2571784 (not res!1081951)) b!2571787))

(assert (= (and b!2571787 res!1081947) b!2571789))

(assert (= (and b!2571789 (not res!1081950)) b!2571781))

(assert (= (and b!2571781 (not res!1081949)) b!2571783))

(assert (= (or b!2571796 b!2571782 b!2571789) bm!165988))

(assert (=> b!2571780 m!2907295))

(declare-fun m!2907887 () Bool)

(assert (=> b!2571780 m!2907887))

(assert (=> bm!165988 m!2907295))

(assert (=> bm!165988 m!2907297))

(assert (=> b!2571793 m!2907295))

(declare-fun m!2907889 () Bool)

(assert (=> b!2571793 m!2907889))

(assert (=> b!2571793 m!2907889))

(declare-fun m!2907891 () Bool)

(assert (=> b!2571793 m!2907891))

(assert (=> b!2571791 m!2907295))

(assert (=> b!2571791 m!2907887))

(assert (=> b!2571791 m!2907299))

(assert (=> b!2571791 m!2907887))

(declare-fun m!2907893 () Bool)

(assert (=> b!2571791 m!2907893))

(assert (=> b!2571791 m!2907295))

(assert (=> b!2571791 m!2907889))

(assert (=> b!2571791 m!2907893))

(assert (=> b!2571791 m!2907889))

(declare-fun m!2907895 () Bool)

(assert (=> b!2571791 m!2907895))

(assert (=> b!2571781 m!2907295))

(assert (=> b!2571781 m!2907889))

(assert (=> b!2571781 m!2907889))

(assert (=> b!2571781 m!2907891))

(assert (=> d!727563 m!2907295))

(assert (=> d!727563 m!2907297))

(assert (=> d!727563 m!2907299))

(declare-fun m!2907897 () Bool)

(assert (=> d!727563 m!2907897))

(assert (=> b!2571779 m!2907299))

(declare-fun m!2907899 () Bool)

(assert (=> b!2571779 m!2907899))

(assert (=> b!2571783 m!2907295))

(assert (=> b!2571783 m!2907887))

(assert (=> b!2570965 d!727563))

(declare-fun b!2571805 () Bool)

(declare-fun e!1623057 () Regex!7639)

(declare-fun call!165997 () Regex!7639)

(assert (=> b!2571805 (= e!1623057 (Concat!12335 call!165997 EmptyLang!7639))))

(declare-fun d!727565 () Bool)

(declare-fun lt!906068 () Regex!7639)

(assert (=> d!727565 (validRegex!3265 lt!906068)))

(declare-fun e!1623056 () Regex!7639)

(assert (=> d!727565 (= lt!906068 e!1623056)))

(declare-fun c!413934 () Bool)

(assert (=> d!727565 (= c!413934 (or ((_ is EmptyExpr!7639) EmptyLang!7639) ((_ is EmptyLang!7639) EmptyLang!7639)))))

(assert (=> d!727565 (validRegex!3265 EmptyLang!7639)))

(assert (=> d!727565 (= (derivativeStep!2208 EmptyLang!7639 (head!5844 tl!4068)) lt!906068)))

(declare-fun bm!165989 () Bool)

(declare-fun call!165996 () Regex!7639)

(declare-fun c!413938 () Bool)

(assert (=> bm!165989 (= call!165996 (derivativeStep!2208 (ite c!413938 (regTwo!15791 EmptyLang!7639) (regTwo!15790 EmptyLang!7639)) (head!5844 tl!4068)))))

(declare-fun b!2571806 () Bool)

(declare-fun e!1623055 () Regex!7639)

(assert (=> b!2571806 (= e!1623056 e!1623055)))

(declare-fun c!413937 () Bool)

(assert (=> b!2571806 (= c!413937 ((_ is ElementMatch!7639) EmptyLang!7639))))

(declare-fun b!2571807 () Bool)

(declare-fun e!1623058 () Regex!7639)

(assert (=> b!2571807 (= e!1623058 e!1623057)))

(declare-fun c!413936 () Bool)

(assert (=> b!2571807 (= c!413936 ((_ is Star!7639) EmptyLang!7639))))

(declare-fun b!2571808 () Bool)

(declare-fun c!413935 () Bool)

(assert (=> b!2571808 (= c!413935 (nullable!2556 (regOne!15790 EmptyLang!7639)))))

(declare-fun e!1623054 () Regex!7639)

(assert (=> b!2571808 (= e!1623057 e!1623054)))

(declare-fun b!2571809 () Bool)

(assert (=> b!2571809 (= e!1623056 EmptyLang!7639)))

(declare-fun b!2571810 () Bool)

(assert (=> b!2571810 (= e!1623055 (ite (= (head!5844 tl!4068) (c!413611 EmptyLang!7639)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2571811 () Bool)

(declare-fun call!165995 () Regex!7639)

(assert (=> b!2571811 (= e!1623054 (Union!7639 (Concat!12335 call!165995 (regTwo!15790 EmptyLang!7639)) call!165996))))

(declare-fun bm!165990 () Bool)

(assert (=> bm!165990 (= call!165995 call!165997)))

(declare-fun bm!165991 () Bool)

(declare-fun call!165994 () Regex!7639)

(assert (=> bm!165991 (= call!165997 call!165994)))

(declare-fun b!2571812 () Bool)

(assert (=> b!2571812 (= e!1623054 (Union!7639 (Concat!12335 call!165995 (regTwo!15790 EmptyLang!7639)) EmptyLang!7639))))

(declare-fun b!2571813 () Bool)

(assert (=> b!2571813 (= c!413938 ((_ is Union!7639) EmptyLang!7639))))

(assert (=> b!2571813 (= e!1623055 e!1623058)))

(declare-fun b!2571814 () Bool)

(assert (=> b!2571814 (= e!1623058 (Union!7639 call!165994 call!165996))))

(declare-fun bm!165992 () Bool)

(assert (=> bm!165992 (= call!165994 (derivativeStep!2208 (ite c!413938 (regOne!15791 EmptyLang!7639) (ite c!413936 (reg!7968 EmptyLang!7639) (regOne!15790 EmptyLang!7639))) (head!5844 tl!4068)))))

(assert (= (and d!727565 c!413934) b!2571809))

(assert (= (and d!727565 (not c!413934)) b!2571806))

(assert (= (and b!2571806 c!413937) b!2571810))

(assert (= (and b!2571806 (not c!413937)) b!2571813))

(assert (= (and b!2571813 c!413938) b!2571814))

(assert (= (and b!2571813 (not c!413938)) b!2571807))

(assert (= (and b!2571807 c!413936) b!2571805))

(assert (= (and b!2571807 (not c!413936)) b!2571808))

(assert (= (and b!2571808 c!413935) b!2571811))

(assert (= (and b!2571808 (not c!413935)) b!2571812))

(assert (= (or b!2571811 b!2571812) bm!165990))

(assert (= (or b!2571805 bm!165990) bm!165991))

(assert (= (or b!2571814 b!2571811) bm!165989))

(assert (= (or b!2571814 bm!165991) bm!165992))

(declare-fun m!2907901 () Bool)

(assert (=> d!727565 m!2907901))

(assert (=> d!727565 m!2907303))

(assert (=> bm!165989 m!2907291))

(declare-fun m!2907903 () Bool)

(assert (=> bm!165989 m!2907903))

(declare-fun m!2907905 () Bool)

(assert (=> b!2571808 m!2907905))

(assert (=> bm!165992 m!2907291))

(declare-fun m!2907907 () Bool)

(assert (=> bm!165992 m!2907907))

(assert (=> b!2570965 d!727565))

(declare-fun d!727567 () Bool)

(assert (=> d!727567 (= (head!5844 tl!4068) (h!35024 tl!4068))))

(assert (=> b!2570965 d!727567))

(declare-fun d!727569 () Bool)

(assert (=> d!727569 (= (tail!4119 tl!4068) (t!211403 tl!4068))))

(assert (=> b!2570965 d!727569))

(declare-fun b!2571815 () Bool)

(declare-fun e!1623061 () Bool)

(declare-fun call!165999 () Bool)

(assert (=> b!2571815 (= e!1623061 call!165999)))

(declare-fun b!2571816 () Bool)

(declare-fun e!1623062 () Bool)

(declare-fun call!165998 () Bool)

(assert (=> b!2571816 (= e!1623062 call!165998)))

(declare-fun b!2571817 () Bool)

(declare-fun e!1623059 () Bool)

(assert (=> b!2571817 (= e!1623059 e!1623061)))

(declare-fun res!1081955 () Bool)

(assert (=> b!2571817 (= res!1081955 call!165998)))

(assert (=> b!2571817 (=> res!1081955 e!1623061)))

(declare-fun b!2571818 () Bool)

(declare-fun e!1623064 () Bool)

(declare-fun e!1623063 () Bool)

(assert (=> b!2571818 (= e!1623064 e!1623063)))

(declare-fun res!1081956 () Bool)

(assert (=> b!2571818 (=> res!1081956 e!1623063)))

(assert (=> b!2571818 (= res!1081956 ((_ is Star!7639) (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))

(declare-fun bm!165993 () Bool)

(declare-fun c!413939 () Bool)

(assert (=> bm!165993 (= call!165998 (nullable!2556 (ite c!413939 (regOne!15791 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)) (regTwo!15790 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))))

(declare-fun d!727571 () Bool)

(declare-fun res!1081954 () Bool)

(declare-fun e!1623060 () Bool)

(assert (=> d!727571 (=> res!1081954 e!1623060)))

(assert (=> d!727571 (= res!1081954 ((_ is EmptyExpr!7639) (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))

(assert (=> d!727571 (= (nullableFct!781 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)) e!1623060)))

(declare-fun bm!165994 () Bool)

(assert (=> bm!165994 (= call!165999 (nullable!2556 (ite c!413939 (regTwo!15791 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)) (regOne!15790 (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2571819 () Bool)

(assert (=> b!2571819 (= e!1623059 e!1623062)))

(declare-fun res!1081952 () Bool)

(assert (=> b!2571819 (= res!1081952 call!165999)))

(assert (=> b!2571819 (=> (not res!1081952) (not e!1623062))))

(declare-fun b!2571820 () Bool)

(assert (=> b!2571820 (= e!1623063 e!1623059)))

(assert (=> b!2571820 (= c!413939 ((_ is Union!7639) (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))

(declare-fun b!2571821 () Bool)

(assert (=> b!2571821 (= e!1623060 e!1623064)))

(declare-fun res!1081953 () Bool)

(assert (=> b!2571821 (=> (not res!1081953) (not e!1623064))))

(assert (=> b!2571821 (= res!1081953 (and (not ((_ is EmptyLang!7639) (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7639) (derivative!334 (derivativeStep!2208 r!27340 c!14016) tl!4068)))))))

(assert (= (and d!727571 (not res!1081954)) b!2571821))

(assert (= (and b!2571821 res!1081953) b!2571818))

(assert (= (and b!2571818 (not res!1081956)) b!2571820))

(assert (= (and b!2571820 c!413939) b!2571817))

(assert (= (and b!2571820 (not c!413939)) b!2571819))

(assert (= (and b!2571817 (not res!1081955)) b!2571815))

(assert (= (and b!2571819 res!1081952) b!2571816))

(assert (= (or b!2571815 b!2571819) bm!165994))

(assert (= (or b!2571817 b!2571816) bm!165993))

(declare-fun m!2907909 () Bool)

(assert (=> bm!165993 m!2907909))

(declare-fun m!2907911 () Bool)

(assert (=> bm!165994 m!2907911))

(assert (=> d!727313 d!727571))

(declare-fun d!727573 () Bool)

(assert (=> d!727573 (= (isDefined!4742 lt!905973) (not (isEmpty!17065 lt!905973)))))

(declare-fun bs!470049 () Bool)

(assert (= bs!470049 d!727573))

(declare-fun m!2907913 () Bool)

(assert (=> bs!470049 m!2907913))

(assert (=> d!727245 d!727573))

(declare-fun bm!165995 () Bool)

(declare-fun call!166000 () Bool)

(assert (=> bm!165995 (= call!166000 (isEmpty!17064 Nil!29604))))

(declare-fun b!2571822 () Bool)

(declare-fun e!1623067 () Bool)

(assert (=> b!2571822 (= e!1623067 (nullable!2556 lt!905930))))

(declare-fun b!2571823 () Bool)

(declare-fun e!1623068 () Bool)

(assert (=> b!2571823 (= e!1623068 (= (head!5844 Nil!29604) (c!413611 lt!905930)))))

(declare-fun b!2571824 () Bool)

(declare-fun res!1081962 () Bool)

(declare-fun e!1623069 () Bool)

(assert (=> b!2571824 (=> res!1081962 e!1623069)))

(assert (=> b!2571824 (= res!1081962 (not (isEmpty!17064 (tail!4119 Nil!29604))))))

(declare-fun b!2571826 () Bool)

(assert (=> b!2571826 (= e!1623069 (not (= (head!5844 Nil!29604) (c!413611 lt!905930))))))

(declare-fun b!2571827 () Bool)

(declare-fun res!1081964 () Bool)

(declare-fun e!1623071 () Bool)

(assert (=> b!2571827 (=> res!1081964 e!1623071)))

(assert (=> b!2571827 (= res!1081964 e!1623068)))

(declare-fun res!1081957 () Bool)

(assert (=> b!2571827 (=> (not res!1081957) (not e!1623068))))

(declare-fun lt!906069 () Bool)

(assert (=> b!2571827 (= res!1081957 lt!906069)))

(declare-fun b!2571828 () Bool)

(declare-fun res!1081958 () Bool)

(assert (=> b!2571828 (=> res!1081958 e!1623071)))

(assert (=> b!2571828 (= res!1081958 (not ((_ is ElementMatch!7639) lt!905930)))))

(declare-fun e!1623066 () Bool)

(assert (=> b!2571828 (= e!1623066 e!1623071)))

(declare-fun b!2571829 () Bool)

(assert (=> b!2571829 (= e!1623066 (not lt!906069))))

(declare-fun b!2571830 () Bool)

(declare-fun e!1623065 () Bool)

(assert (=> b!2571830 (= e!1623071 e!1623065)))

(declare-fun res!1081960 () Bool)

(assert (=> b!2571830 (=> (not res!1081960) (not e!1623065))))

(assert (=> b!2571830 (= res!1081960 (not lt!906069))))

(declare-fun b!2571831 () Bool)

(assert (=> b!2571831 (= e!1623065 e!1623069)))

(declare-fun res!1081963 () Bool)

(assert (=> b!2571831 (=> res!1081963 e!1623069)))

(assert (=> b!2571831 (= res!1081963 call!166000)))

(declare-fun b!2571825 () Bool)

(declare-fun res!1081961 () Bool)

(assert (=> b!2571825 (=> (not res!1081961) (not e!1623068))))

(assert (=> b!2571825 (= res!1081961 (not call!166000))))

(declare-fun d!727575 () Bool)

(declare-fun e!1623070 () Bool)

(assert (=> d!727575 e!1623070))

(declare-fun c!413942 () Bool)

(assert (=> d!727575 (= c!413942 ((_ is EmptyExpr!7639) lt!905930))))

(assert (=> d!727575 (= lt!906069 e!1623067)))

(declare-fun c!413940 () Bool)

(assert (=> d!727575 (= c!413940 (isEmpty!17064 Nil!29604))))

(assert (=> d!727575 (validRegex!3265 lt!905930)))

(assert (=> d!727575 (= (matchR!3582 lt!905930 Nil!29604) lt!906069)))

(declare-fun b!2571832 () Bool)

(assert (=> b!2571832 (= e!1623067 (matchR!3582 (derivativeStep!2208 lt!905930 (head!5844 Nil!29604)) (tail!4119 Nil!29604)))))

(declare-fun b!2571833 () Bool)

(declare-fun res!1081959 () Bool)

(assert (=> b!2571833 (=> (not res!1081959) (not e!1623068))))

(assert (=> b!2571833 (= res!1081959 (isEmpty!17064 (tail!4119 Nil!29604)))))

(declare-fun b!2571834 () Bool)

(assert (=> b!2571834 (= e!1623070 e!1623066)))

(declare-fun c!413941 () Bool)

(assert (=> b!2571834 (= c!413941 ((_ is EmptyLang!7639) lt!905930))))

(declare-fun b!2571835 () Bool)

(assert (=> b!2571835 (= e!1623070 (= lt!906069 call!166000))))

(assert (= (and d!727575 c!413940) b!2571822))

(assert (= (and d!727575 (not c!413940)) b!2571832))

(assert (= (and d!727575 c!413942) b!2571835))

(assert (= (and d!727575 (not c!413942)) b!2571834))

(assert (= (and b!2571834 c!413941) b!2571829))

(assert (= (and b!2571834 (not c!413941)) b!2571828))

(assert (= (and b!2571828 (not res!1081958)) b!2571827))

(assert (= (and b!2571827 res!1081957) b!2571825))

(assert (= (and b!2571825 res!1081961) b!2571833))

(assert (= (and b!2571833 res!1081959) b!2571823))

(assert (= (and b!2571827 (not res!1081964)) b!2571830))

(assert (= (and b!2571830 res!1081960) b!2571831))

(assert (= (and b!2571831 (not res!1081963)) b!2571824))

(assert (= (and b!2571824 (not res!1081962)) b!2571826))

(assert (= (or b!2571835 b!2571825 b!2571831) bm!165995))

(assert (=> b!2571823 m!2907239))

(assert (=> bm!165995 m!2907241))

(assert (=> b!2571833 m!2907243))

(assert (=> b!2571833 m!2907243))

(assert (=> b!2571833 m!2907245))

(assert (=> b!2571832 m!2907239))

(assert (=> b!2571832 m!2907239))

(declare-fun m!2907915 () Bool)

(assert (=> b!2571832 m!2907915))

(assert (=> b!2571832 m!2907243))

(assert (=> b!2571832 m!2907915))

(assert (=> b!2571832 m!2907243))

(declare-fun m!2907917 () Bool)

(assert (=> b!2571832 m!2907917))

(assert (=> b!2571824 m!2907243))

(assert (=> b!2571824 m!2907243))

(assert (=> b!2571824 m!2907245))

(assert (=> d!727575 m!2907241))

(assert (=> d!727575 m!2907017))

(assert (=> b!2571822 m!2907195))

(assert (=> b!2571826 m!2907239))

(assert (=> d!727245 d!727575))

(declare-fun bm!165996 () Bool)

(declare-fun c!413943 () Bool)

(declare-fun call!166002 () Bool)

(declare-fun c!413944 () Bool)

(assert (=> bm!165996 (= call!166002 (validRegex!3265 (ite c!413943 (reg!7968 lt!905930) (ite c!413944 (regTwo!15791 lt!905930) (regOne!15790 lt!905930)))))))

(declare-fun d!727577 () Bool)

(declare-fun res!1081965 () Bool)

(declare-fun e!1623074 () Bool)

(assert (=> d!727577 (=> res!1081965 e!1623074)))

(assert (=> d!727577 (= res!1081965 ((_ is ElementMatch!7639) lt!905930))))

(assert (=> d!727577 (= (validRegex!3265 lt!905930) e!1623074)))

(declare-fun b!2571836 () Bool)

(declare-fun e!1623073 () Bool)

(declare-fun e!1623076 () Bool)

(assert (=> b!2571836 (= e!1623073 e!1623076)))

(declare-fun res!1081967 () Bool)

(assert (=> b!2571836 (= res!1081967 (not (nullable!2556 (reg!7968 lt!905930))))))

(assert (=> b!2571836 (=> (not res!1081967) (not e!1623076))))

(declare-fun b!2571837 () Bool)

(declare-fun e!1623072 () Bool)

(declare-fun e!1623078 () Bool)

(assert (=> b!2571837 (= e!1623072 e!1623078)))

(declare-fun res!1081966 () Bool)

(assert (=> b!2571837 (=> (not res!1081966) (not e!1623078))))

(declare-fun call!166001 () Bool)

(assert (=> b!2571837 (= res!1081966 call!166001)))

(declare-fun b!2571838 () Bool)

(declare-fun call!166003 () Bool)

(assert (=> b!2571838 (= e!1623078 call!166003)))

(declare-fun b!2571839 () Bool)

(declare-fun res!1081969 () Bool)

(declare-fun e!1623075 () Bool)

(assert (=> b!2571839 (=> (not res!1081969) (not e!1623075))))

(assert (=> b!2571839 (= res!1081969 call!166003)))

(declare-fun e!1623077 () Bool)

(assert (=> b!2571839 (= e!1623077 e!1623075)))

(declare-fun b!2571840 () Bool)

(assert (=> b!2571840 (= e!1623075 call!166001)))

(declare-fun b!2571841 () Bool)

(assert (=> b!2571841 (= e!1623073 e!1623077)))

(assert (=> b!2571841 (= c!413944 ((_ is Union!7639) lt!905930))))

(declare-fun b!2571842 () Bool)

(assert (=> b!2571842 (= e!1623076 call!166002)))

(declare-fun bm!165997 () Bool)

(assert (=> bm!165997 (= call!166003 (validRegex!3265 (ite c!413944 (regOne!15791 lt!905930) (regTwo!15790 lt!905930))))))

(declare-fun b!2571843 () Bool)

(assert (=> b!2571843 (= e!1623074 e!1623073)))

(assert (=> b!2571843 (= c!413943 ((_ is Star!7639) lt!905930))))

(declare-fun b!2571844 () Bool)

(declare-fun res!1081968 () Bool)

(assert (=> b!2571844 (=> res!1081968 e!1623072)))

(assert (=> b!2571844 (= res!1081968 (not ((_ is Concat!12335) lt!905930)))))

(assert (=> b!2571844 (= e!1623077 e!1623072)))

(declare-fun bm!165998 () Bool)

(assert (=> bm!165998 (= call!166001 call!166002)))

(assert (= (and d!727577 (not res!1081965)) b!2571843))

(assert (= (and b!2571843 c!413943) b!2571836))

(assert (= (and b!2571843 (not c!413943)) b!2571841))

(assert (= (and b!2571836 res!1081967) b!2571842))

(assert (= (and b!2571841 c!413944) b!2571839))

(assert (= (and b!2571841 (not c!413944)) b!2571844))

(assert (= (and b!2571839 res!1081969) b!2571840))

(assert (= (and b!2571844 (not res!1081968)) b!2571837))

(assert (= (and b!2571837 res!1081966) b!2571838))

(assert (= (or b!2571839 b!2571838) bm!165997))

(assert (= (or b!2571840 b!2571837) bm!165998))

(assert (= (or b!2571842 bm!165998) bm!165996))

(declare-fun m!2907919 () Bool)

(assert (=> bm!165996 m!2907919))

(declare-fun m!2907921 () Bool)

(assert (=> b!2571836 m!2907921))

(declare-fun m!2907923 () Bool)

(assert (=> bm!165997 m!2907923))

(assert (=> d!727245 d!727577))

(declare-fun d!727579 () Bool)

(assert (=> d!727579 (= (nullable!2556 (derivative!334 lt!905919 tl!4068)) (nullableFct!781 (derivative!334 lt!905919 tl!4068)))))

(declare-fun bs!470050 () Bool)

(assert (= bs!470050 d!727579))

(assert (=> bs!470050 m!2906937))

(declare-fun m!2907925 () Bool)

(assert (=> bs!470050 m!2907925))

(assert (=> b!2571058 d!727579))

(declare-fun bm!165999 () Bool)

(declare-fun call!166004 () Bool)

(assert (=> bm!165999 (= call!166004 (isEmpty!17064 (tail!4119 (_2!17342 lt!905927))))))

(declare-fun b!2571845 () Bool)

(declare-fun e!1623081 () Bool)

(assert (=> b!2571845 (= e!1623081 (nullable!2556 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927)))))))

(declare-fun b!2571846 () Bool)

(declare-fun e!1623082 () Bool)

(assert (=> b!2571846 (= e!1623082 (= (head!5844 (tail!4119 (_2!17342 lt!905927))) (c!413611 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927))))))))

(declare-fun b!2571847 () Bool)

(declare-fun res!1081975 () Bool)

(declare-fun e!1623083 () Bool)

(assert (=> b!2571847 (=> res!1081975 e!1623083)))

(assert (=> b!2571847 (= res!1081975 (not (isEmpty!17064 (tail!4119 (tail!4119 (_2!17342 lt!905927))))))))

(declare-fun b!2571849 () Bool)

(assert (=> b!2571849 (= e!1623083 (not (= (head!5844 (tail!4119 (_2!17342 lt!905927))) (c!413611 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927)))))))))

(declare-fun b!2571850 () Bool)

(declare-fun res!1081977 () Bool)

(declare-fun e!1623085 () Bool)

(assert (=> b!2571850 (=> res!1081977 e!1623085)))

(assert (=> b!2571850 (= res!1081977 e!1623082)))

(declare-fun res!1081970 () Bool)

(assert (=> b!2571850 (=> (not res!1081970) (not e!1623082))))

(declare-fun lt!906070 () Bool)

(assert (=> b!2571850 (= res!1081970 lt!906070)))

(declare-fun b!2571851 () Bool)

(declare-fun res!1081971 () Bool)

(assert (=> b!2571851 (=> res!1081971 e!1623085)))

(assert (=> b!2571851 (= res!1081971 (not ((_ is ElementMatch!7639) (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927))))))))

(declare-fun e!1623080 () Bool)

(assert (=> b!2571851 (= e!1623080 e!1623085)))

(declare-fun b!2571852 () Bool)

(assert (=> b!2571852 (= e!1623080 (not lt!906070))))

(declare-fun b!2571853 () Bool)

(declare-fun e!1623079 () Bool)

(assert (=> b!2571853 (= e!1623085 e!1623079)))

(declare-fun res!1081973 () Bool)

(assert (=> b!2571853 (=> (not res!1081973) (not e!1623079))))

(assert (=> b!2571853 (= res!1081973 (not lt!906070))))

(declare-fun b!2571854 () Bool)

(assert (=> b!2571854 (= e!1623079 e!1623083)))

(declare-fun res!1081976 () Bool)

(assert (=> b!2571854 (=> res!1081976 e!1623083)))

(assert (=> b!2571854 (= res!1081976 call!166004)))

(declare-fun b!2571848 () Bool)

(declare-fun res!1081974 () Bool)

(assert (=> b!2571848 (=> (not res!1081974) (not e!1623082))))

(assert (=> b!2571848 (= res!1081974 (not call!166004))))

(declare-fun d!727581 () Bool)

(declare-fun e!1623084 () Bool)

(assert (=> d!727581 e!1623084))

(declare-fun c!413947 () Bool)

(assert (=> d!727581 (= c!413947 ((_ is EmptyExpr!7639) (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927)))))))

(assert (=> d!727581 (= lt!906070 e!1623081)))

(declare-fun c!413945 () Bool)

(assert (=> d!727581 (= c!413945 (isEmpty!17064 (tail!4119 (_2!17342 lt!905927))))))

(assert (=> d!727581 (validRegex!3265 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927))))))

(assert (=> d!727581 (= (matchR!3582 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927))) (tail!4119 (_2!17342 lt!905927))) lt!906070)))

(declare-fun b!2571855 () Bool)

(assert (=> b!2571855 (= e!1623081 (matchR!3582 (derivativeStep!2208 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927))) (head!5844 (tail!4119 (_2!17342 lt!905927)))) (tail!4119 (tail!4119 (_2!17342 lt!905927)))))))

(declare-fun b!2571856 () Bool)

(declare-fun res!1081972 () Bool)

(assert (=> b!2571856 (=> (not res!1081972) (not e!1623082))))

(assert (=> b!2571856 (= res!1081972 (isEmpty!17064 (tail!4119 (tail!4119 (_2!17342 lt!905927)))))))

(declare-fun b!2571857 () Bool)

(assert (=> b!2571857 (= e!1623084 e!1623080)))

(declare-fun c!413946 () Bool)

(assert (=> b!2571857 (= c!413946 ((_ is EmptyLang!7639) (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927)))))))

(declare-fun b!2571858 () Bool)

(assert (=> b!2571858 (= e!1623084 (= lt!906070 call!166004))))

(assert (= (and d!727581 c!413945) b!2571845))

(assert (= (and d!727581 (not c!413945)) b!2571855))

(assert (= (and d!727581 c!413947) b!2571858))

(assert (= (and d!727581 (not c!413947)) b!2571857))

(assert (= (and b!2571857 c!413946) b!2571852))

(assert (= (and b!2571857 (not c!413946)) b!2571851))

(assert (= (and b!2571851 (not res!1081971)) b!2571850))

(assert (= (and b!2571850 res!1081970) b!2571848))

(assert (= (and b!2571848 res!1081974) b!2571856))

(assert (= (and b!2571856 res!1081972) b!2571846))

(assert (= (and b!2571850 (not res!1081977)) b!2571853))

(assert (= (and b!2571853 res!1081973) b!2571854))

(assert (= (and b!2571854 (not res!1081976)) b!2571847))

(assert (= (and b!2571847 (not res!1081975)) b!2571849))

(assert (= (or b!2571858 b!2571848 b!2571854) bm!165999))

(assert (=> b!2571846 m!2907169))

(declare-fun m!2907927 () Bool)

(assert (=> b!2571846 m!2907927))

(assert (=> bm!165999 m!2907169))

(assert (=> bm!165999 m!2907171))

(assert (=> b!2571856 m!2907169))

(declare-fun m!2907929 () Bool)

(assert (=> b!2571856 m!2907929))

(assert (=> b!2571856 m!2907929))

(declare-fun m!2907931 () Bool)

(assert (=> b!2571856 m!2907931))

(assert (=> b!2571855 m!2907169))

(assert (=> b!2571855 m!2907927))

(assert (=> b!2571855 m!2907173))

(assert (=> b!2571855 m!2907927))

(declare-fun m!2907933 () Bool)

(assert (=> b!2571855 m!2907933))

(assert (=> b!2571855 m!2907169))

(assert (=> b!2571855 m!2907929))

(assert (=> b!2571855 m!2907933))

(assert (=> b!2571855 m!2907929))

(declare-fun m!2907935 () Bool)

(assert (=> b!2571855 m!2907935))

(assert (=> b!2571847 m!2907169))

(assert (=> b!2571847 m!2907929))

(assert (=> b!2571847 m!2907929))

(assert (=> b!2571847 m!2907931))

(assert (=> d!727581 m!2907169))

(assert (=> d!727581 m!2907171))

(assert (=> d!727581 m!2907173))

(declare-fun m!2907937 () Bool)

(assert (=> d!727581 m!2907937))

(assert (=> b!2571845 m!2907173))

(declare-fun m!2907939 () Bool)

(assert (=> b!2571845 m!2907939))

(assert (=> b!2571849 m!2907169))

(assert (=> b!2571849 m!2907927))

(assert (=> b!2570764 d!727581))

(declare-fun b!2571859 () Bool)

(declare-fun e!1623089 () Regex!7639)

(declare-fun call!166008 () Regex!7639)

(assert (=> b!2571859 (= e!1623089 (Concat!12335 call!166008 (regTwo!15790 r!27340)))))

(declare-fun d!727583 () Bool)

(declare-fun lt!906071 () Regex!7639)

(assert (=> d!727583 (validRegex!3265 lt!906071)))

(declare-fun e!1623088 () Regex!7639)

(assert (=> d!727583 (= lt!906071 e!1623088)))

(declare-fun c!413948 () Bool)

(assert (=> d!727583 (= c!413948 (or ((_ is EmptyExpr!7639) (regTwo!15790 r!27340)) ((_ is EmptyLang!7639) (regTwo!15790 r!27340))))))

(assert (=> d!727583 (validRegex!3265 (regTwo!15790 r!27340))))

(assert (=> d!727583 (= (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 lt!905927))) lt!906071)))

(declare-fun bm!166000 () Bool)

(declare-fun call!166007 () Regex!7639)

(declare-fun c!413952 () Bool)

(assert (=> bm!166000 (= call!166007 (derivativeStep!2208 (ite c!413952 (regTwo!15791 (regTwo!15790 r!27340)) (regTwo!15790 (regTwo!15790 r!27340))) (head!5844 (_2!17342 lt!905927))))))

(declare-fun b!2571860 () Bool)

(declare-fun e!1623087 () Regex!7639)

(assert (=> b!2571860 (= e!1623088 e!1623087)))

(declare-fun c!413951 () Bool)

(assert (=> b!2571860 (= c!413951 ((_ is ElementMatch!7639) (regTwo!15790 r!27340)))))

(declare-fun b!2571861 () Bool)

(declare-fun e!1623090 () Regex!7639)

(assert (=> b!2571861 (= e!1623090 e!1623089)))

(declare-fun c!413950 () Bool)

(assert (=> b!2571861 (= c!413950 ((_ is Star!7639) (regTwo!15790 r!27340)))))

(declare-fun b!2571862 () Bool)

(declare-fun c!413949 () Bool)

(assert (=> b!2571862 (= c!413949 (nullable!2556 (regOne!15790 (regTwo!15790 r!27340))))))

(declare-fun e!1623086 () Regex!7639)

(assert (=> b!2571862 (= e!1623089 e!1623086)))

(declare-fun b!2571863 () Bool)

(assert (=> b!2571863 (= e!1623088 EmptyLang!7639)))

(declare-fun b!2571864 () Bool)

(assert (=> b!2571864 (= e!1623087 (ite (= (head!5844 (_2!17342 lt!905927)) (c!413611 (regTwo!15790 r!27340))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!166006 () Regex!7639)

(declare-fun b!2571865 () Bool)

(assert (=> b!2571865 (= e!1623086 (Union!7639 (Concat!12335 call!166006 (regTwo!15790 (regTwo!15790 r!27340))) call!166007))))

(declare-fun bm!166001 () Bool)

(assert (=> bm!166001 (= call!166006 call!166008)))

(declare-fun bm!166002 () Bool)

(declare-fun call!166005 () Regex!7639)

(assert (=> bm!166002 (= call!166008 call!166005)))

(declare-fun b!2571866 () Bool)

(assert (=> b!2571866 (= e!1623086 (Union!7639 (Concat!12335 call!166006 (regTwo!15790 (regTwo!15790 r!27340))) EmptyLang!7639))))

(declare-fun b!2571867 () Bool)

(assert (=> b!2571867 (= c!413952 ((_ is Union!7639) (regTwo!15790 r!27340)))))

(assert (=> b!2571867 (= e!1623087 e!1623090)))

(declare-fun b!2571868 () Bool)

(assert (=> b!2571868 (= e!1623090 (Union!7639 call!166005 call!166007))))

(declare-fun bm!166003 () Bool)

(assert (=> bm!166003 (= call!166005 (derivativeStep!2208 (ite c!413952 (regOne!15791 (regTwo!15790 r!27340)) (ite c!413950 (reg!7968 (regTwo!15790 r!27340)) (regOne!15790 (regTwo!15790 r!27340)))) (head!5844 (_2!17342 lt!905927))))))

(assert (= (and d!727583 c!413948) b!2571863))

(assert (= (and d!727583 (not c!413948)) b!2571860))

(assert (= (and b!2571860 c!413951) b!2571864))

(assert (= (and b!2571860 (not c!413951)) b!2571867))

(assert (= (and b!2571867 c!413952) b!2571868))

(assert (= (and b!2571867 (not c!413952)) b!2571861))

(assert (= (and b!2571861 c!413950) b!2571859))

(assert (= (and b!2571861 (not c!413950)) b!2571862))

(assert (= (and b!2571862 c!413949) b!2571865))

(assert (= (and b!2571862 (not c!413949)) b!2571866))

(assert (= (or b!2571865 b!2571866) bm!166001))

(assert (= (or b!2571859 bm!166001) bm!166002))

(assert (= (or b!2571868 b!2571865) bm!166000))

(assert (= (or b!2571868 bm!166002) bm!166003))

(declare-fun m!2907941 () Bool)

(assert (=> d!727583 m!2907941))

(assert (=> d!727583 m!2907177))

(assert (=> bm!166000 m!2907165))

(declare-fun m!2907943 () Bool)

(assert (=> bm!166000 m!2907943))

(declare-fun m!2907945 () Bool)

(assert (=> b!2571862 m!2907945))

(assert (=> bm!166003 m!2907165))

(declare-fun m!2907947 () Bool)

(assert (=> bm!166003 m!2907947))

(assert (=> b!2570764 d!727583))

(declare-fun d!727585 () Bool)

(assert (=> d!727585 (= (head!5844 (_2!17342 lt!905927)) (h!35024 (_2!17342 lt!905927)))))

(assert (=> b!2570764 d!727585))

(assert (=> b!2570764 d!727549))

(assert (=> b!2571023 d!727567))

(declare-fun b!2571871 () Bool)

(declare-fun res!1081979 () Bool)

(declare-fun e!1623091 () Bool)

(assert (=> b!2571871 (=> (not res!1081979) (not e!1623091))))

(declare-fun lt!906072 () List!29704)

(assert (=> b!2571871 (= res!1081979 (= (size!22963 lt!906072) (+ (size!22963 (t!211403 (_1!17342 lt!905927))) (size!22963 (_2!17342 lt!905927)))))))

(declare-fun d!727587 () Bool)

(assert (=> d!727587 e!1623091))

(declare-fun res!1081978 () Bool)

(assert (=> d!727587 (=> (not res!1081978) (not e!1623091))))

(assert (=> d!727587 (= res!1081978 (= (content!4083 lt!906072) ((_ map or) (content!4083 (t!211403 (_1!17342 lt!905927))) (content!4083 (_2!17342 lt!905927)))))))

(declare-fun e!1623092 () List!29704)

(assert (=> d!727587 (= lt!906072 e!1623092)))

(declare-fun c!413953 () Bool)

(assert (=> d!727587 (= c!413953 ((_ is Nil!29604) (t!211403 (_1!17342 lt!905927))))))

(assert (=> d!727587 (= (++!7278 (t!211403 (_1!17342 lt!905927)) (_2!17342 lt!905927)) lt!906072)))

(declare-fun b!2571872 () Bool)

(assert (=> b!2571872 (= e!1623091 (or (not (= (_2!17342 lt!905927) Nil!29604)) (= lt!906072 (t!211403 (_1!17342 lt!905927)))))))

(declare-fun b!2571869 () Bool)

(assert (=> b!2571869 (= e!1623092 (_2!17342 lt!905927))))

(declare-fun b!2571870 () Bool)

(assert (=> b!2571870 (= e!1623092 (Cons!29604 (h!35024 (t!211403 (_1!17342 lt!905927))) (++!7278 (t!211403 (t!211403 (_1!17342 lt!905927))) (_2!17342 lt!905927))))))

(assert (= (and d!727587 c!413953) b!2571869))

(assert (= (and d!727587 (not c!413953)) b!2571870))

(assert (= (and d!727587 res!1081978) b!2571871))

(assert (= (and b!2571871 res!1081979) b!2571872))

(declare-fun m!2907949 () Bool)

(assert (=> b!2571871 m!2907949))

(declare-fun m!2907951 () Bool)

(assert (=> b!2571871 m!2907951))

(assert (=> b!2571871 m!2906999))

(declare-fun m!2907953 () Bool)

(assert (=> d!727587 m!2907953))

(declare-fun m!2907955 () Bool)

(assert (=> d!727587 m!2907955))

(assert (=> d!727587 m!2907005))

(declare-fun m!2907957 () Bool)

(assert (=> b!2571870 m!2907957))

(assert (=> b!2570578 d!727587))

(declare-fun d!727589 () Bool)

(assert (=> d!727589 (= (isEmpty!17064 (_1!17342 lt!905927)) ((_ is Nil!29604) (_1!17342 lt!905927)))))

(assert (=> d!727283 d!727589))

(assert (=> d!727283 d!727577))

(declare-fun d!727591 () Bool)

(assert (=> d!727591 (= (isEmpty!17064 (tail!4119 tl!4068)) ((_ is Nil!29604) (tail!4119 tl!4068)))))

(assert (=> b!2571038 d!727591))

(assert (=> b!2571038 d!727569))

(declare-fun bm!166004 () Bool)

(declare-fun call!166009 () Bool)

(assert (=> bm!166004 (= call!166009 (isEmpty!17064 (_1!17342 (get!9318 lt!905973))))))

(declare-fun b!2571873 () Bool)

(declare-fun e!1623095 () Bool)

(assert (=> b!2571873 (= e!1623095 (nullable!2556 lt!905930))))

(declare-fun b!2571874 () Bool)

(declare-fun e!1623096 () Bool)

(assert (=> b!2571874 (= e!1623096 (= (head!5844 (_1!17342 (get!9318 lt!905973))) (c!413611 lt!905930)))))

(declare-fun b!2571875 () Bool)

(declare-fun res!1081985 () Bool)

(declare-fun e!1623097 () Bool)

(assert (=> b!2571875 (=> res!1081985 e!1623097)))

(assert (=> b!2571875 (= res!1081985 (not (isEmpty!17064 (tail!4119 (_1!17342 (get!9318 lt!905973))))))))

(declare-fun b!2571877 () Bool)

(assert (=> b!2571877 (= e!1623097 (not (= (head!5844 (_1!17342 (get!9318 lt!905973))) (c!413611 lt!905930))))))

(declare-fun b!2571878 () Bool)

(declare-fun res!1081987 () Bool)

(declare-fun e!1623099 () Bool)

(assert (=> b!2571878 (=> res!1081987 e!1623099)))

(assert (=> b!2571878 (= res!1081987 e!1623096)))

(declare-fun res!1081980 () Bool)

(assert (=> b!2571878 (=> (not res!1081980) (not e!1623096))))

(declare-fun lt!906073 () Bool)

(assert (=> b!2571878 (= res!1081980 lt!906073)))

(declare-fun b!2571879 () Bool)

(declare-fun res!1081981 () Bool)

(assert (=> b!2571879 (=> res!1081981 e!1623099)))

(assert (=> b!2571879 (= res!1081981 (not ((_ is ElementMatch!7639) lt!905930)))))

(declare-fun e!1623094 () Bool)

(assert (=> b!2571879 (= e!1623094 e!1623099)))

(declare-fun b!2571880 () Bool)

(assert (=> b!2571880 (= e!1623094 (not lt!906073))))

(declare-fun b!2571881 () Bool)

(declare-fun e!1623093 () Bool)

(assert (=> b!2571881 (= e!1623099 e!1623093)))

(declare-fun res!1081983 () Bool)

(assert (=> b!2571881 (=> (not res!1081983) (not e!1623093))))

(assert (=> b!2571881 (= res!1081983 (not lt!906073))))

(declare-fun b!2571882 () Bool)

(assert (=> b!2571882 (= e!1623093 e!1623097)))

(declare-fun res!1081986 () Bool)

(assert (=> b!2571882 (=> res!1081986 e!1623097)))

(assert (=> b!2571882 (= res!1081986 call!166009)))

(declare-fun b!2571876 () Bool)

(declare-fun res!1081984 () Bool)

(assert (=> b!2571876 (=> (not res!1081984) (not e!1623096))))

(assert (=> b!2571876 (= res!1081984 (not call!166009))))

(declare-fun d!727593 () Bool)

(declare-fun e!1623098 () Bool)

(assert (=> d!727593 e!1623098))

(declare-fun c!413956 () Bool)

(assert (=> d!727593 (= c!413956 ((_ is EmptyExpr!7639) lt!905930))))

(assert (=> d!727593 (= lt!906073 e!1623095)))

(declare-fun c!413954 () Bool)

(assert (=> d!727593 (= c!413954 (isEmpty!17064 (_1!17342 (get!9318 lt!905973))))))

(assert (=> d!727593 (validRegex!3265 lt!905930)))

(assert (=> d!727593 (= (matchR!3582 lt!905930 (_1!17342 (get!9318 lt!905973))) lt!906073)))

(declare-fun b!2571883 () Bool)

(assert (=> b!2571883 (= e!1623095 (matchR!3582 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 (get!9318 lt!905973)))) (tail!4119 (_1!17342 (get!9318 lt!905973)))))))

(declare-fun b!2571884 () Bool)

(declare-fun res!1081982 () Bool)

(assert (=> b!2571884 (=> (not res!1081982) (not e!1623096))))

(assert (=> b!2571884 (= res!1081982 (isEmpty!17064 (tail!4119 (_1!17342 (get!9318 lt!905973)))))))

(declare-fun b!2571885 () Bool)

(assert (=> b!2571885 (= e!1623098 e!1623094)))

(declare-fun c!413955 () Bool)

(assert (=> b!2571885 (= c!413955 ((_ is EmptyLang!7639) lt!905930))))

(declare-fun b!2571886 () Bool)

(assert (=> b!2571886 (= e!1623098 (= lt!906073 call!166009))))

(assert (= (and d!727593 c!413954) b!2571873))

(assert (= (and d!727593 (not c!413954)) b!2571883))

(assert (= (and d!727593 c!413956) b!2571886))

(assert (= (and d!727593 (not c!413956)) b!2571885))

(assert (= (and b!2571885 c!413955) b!2571880))

(assert (= (and b!2571885 (not c!413955)) b!2571879))

(assert (= (and b!2571879 (not res!1081981)) b!2571878))

(assert (= (and b!2571878 res!1081980) b!2571876))

(assert (= (and b!2571876 res!1081984) b!2571884))

(assert (= (and b!2571884 res!1081982) b!2571874))

(assert (= (and b!2571878 (not res!1081987)) b!2571881))

(assert (= (and b!2571881 res!1081983) b!2571882))

(assert (= (and b!2571882 (not res!1081986)) b!2571875))

(assert (= (and b!2571875 (not res!1081985)) b!2571877))

(assert (= (or b!2571886 b!2571876 b!2571882) bm!166004))

(declare-fun m!2907959 () Bool)

(assert (=> b!2571874 m!2907959))

(declare-fun m!2907961 () Bool)

(assert (=> bm!166004 m!2907961))

(declare-fun m!2907963 () Bool)

(assert (=> b!2571884 m!2907963))

(assert (=> b!2571884 m!2907963))

(declare-fun m!2907965 () Bool)

(assert (=> b!2571884 m!2907965))

(assert (=> b!2571883 m!2907959))

(assert (=> b!2571883 m!2907959))

(declare-fun m!2907967 () Bool)

(assert (=> b!2571883 m!2907967))

(assert (=> b!2571883 m!2907963))

(assert (=> b!2571883 m!2907967))

(assert (=> b!2571883 m!2907963))

(declare-fun m!2907969 () Bool)

(assert (=> b!2571883 m!2907969))

(assert (=> b!2571875 m!2907963))

(assert (=> b!2571875 m!2907963))

(assert (=> b!2571875 m!2907965))

(assert (=> d!727593 m!2907961))

(assert (=> d!727593 m!2907017))

(assert (=> b!2571873 m!2907195))

(assert (=> b!2571877 m!2907959))

(assert (=> b!2570721 d!727593))

(declare-fun d!727595 () Bool)

(assert (=> d!727595 (= (get!9318 lt!905973) (v!31864 lt!905973))))

(assert (=> b!2570721 d!727595))

(declare-fun d!727597 () Bool)

(assert (=> d!727597 (= (nullable!2556 lt!905930) (nullableFct!781 lt!905930))))

(declare-fun bs!470051 () Bool)

(assert (= bs!470051 d!727597))

(declare-fun m!2907971 () Bool)

(assert (=> bs!470051 m!2907971))

(assert (=> b!2570768 d!727597))

(declare-fun b!2571889 () Bool)

(declare-fun res!1081989 () Bool)

(declare-fun e!1623100 () Bool)

(assert (=> b!2571889 (=> (not res!1081989) (not e!1623100))))

(declare-fun lt!906074 () List!29704)

(assert (=> b!2571889 (= res!1081989 (= (size!22963 lt!906074) (+ (size!22963 (_1!17342 (get!9318 lt!905973))) (size!22963 (_2!17342 (get!9318 lt!905973))))))))

(declare-fun d!727599 () Bool)

(assert (=> d!727599 e!1623100))

(declare-fun res!1081988 () Bool)

(assert (=> d!727599 (=> (not res!1081988) (not e!1623100))))

(assert (=> d!727599 (= res!1081988 (= (content!4083 lt!906074) ((_ map or) (content!4083 (_1!17342 (get!9318 lt!905973))) (content!4083 (_2!17342 (get!9318 lt!905973))))))))

(declare-fun e!1623101 () List!29704)

(assert (=> d!727599 (= lt!906074 e!1623101)))

(declare-fun c!413957 () Bool)

(assert (=> d!727599 (= c!413957 ((_ is Nil!29604) (_1!17342 (get!9318 lt!905973))))))

(assert (=> d!727599 (= (++!7278 (_1!17342 (get!9318 lt!905973)) (_2!17342 (get!9318 lt!905973))) lt!906074)))

(declare-fun b!2571890 () Bool)

(assert (=> b!2571890 (= e!1623100 (or (not (= (_2!17342 (get!9318 lt!905973)) Nil!29604)) (= lt!906074 (_1!17342 (get!9318 lt!905973)))))))

(declare-fun b!2571887 () Bool)

(assert (=> b!2571887 (= e!1623101 (_2!17342 (get!9318 lt!905973)))))

(declare-fun b!2571888 () Bool)

(assert (=> b!2571888 (= e!1623101 (Cons!29604 (h!35024 (_1!17342 (get!9318 lt!905973))) (++!7278 (t!211403 (_1!17342 (get!9318 lt!905973))) (_2!17342 (get!9318 lt!905973)))))))

(assert (= (and d!727599 c!413957) b!2571887))

(assert (= (and d!727599 (not c!413957)) b!2571888))

(assert (= (and d!727599 res!1081988) b!2571889))

(assert (= (and b!2571889 res!1081989) b!2571890))

(declare-fun m!2907973 () Bool)

(assert (=> b!2571889 m!2907973))

(declare-fun m!2907975 () Bool)

(assert (=> b!2571889 m!2907975))

(declare-fun m!2907977 () Bool)

(assert (=> b!2571889 m!2907977))

(declare-fun m!2907979 () Bool)

(assert (=> d!727599 m!2907979))

(declare-fun m!2907981 () Bool)

(assert (=> d!727599 m!2907981))

(declare-fun m!2907983 () Bool)

(assert (=> d!727599 m!2907983))

(declare-fun m!2907985 () Bool)

(assert (=> b!2571888 m!2907985))

(assert (=> b!2570725 d!727599))

(assert (=> b!2570725 d!727595))

(declare-fun d!727601 () Bool)

(assert (not d!727601))

(assert (=> b!2570852 d!727601))

(assert (=> b!2571062 d!727601))

(assert (=> b!2570540 d!727537))

(assert (=> b!2570956 d!727567))

(declare-fun d!727603 () Bool)

(assert (=> d!727603 (= (nullable!2556 (reg!7968 (regOne!15790 r!27340))) (nullableFct!781 (reg!7968 (regOne!15790 r!27340))))))

(declare-fun bs!470052 () Bool)

(assert (= bs!470052 d!727603))

(declare-fun m!2907987 () Bool)

(assert (=> bs!470052 m!2907987))

(assert (=> b!2570830 d!727603))

(assert (=> b!2570755 d!727585))

(declare-fun d!727605 () Bool)

(assert (=> d!727605 (= (isEmpty!17064 Nil!29604) true)))

(assert (=> d!727291 d!727605))

(declare-fun bm!166005 () Bool)

(declare-fun c!413958 () Bool)

(declare-fun c!413959 () Bool)

(declare-fun call!166011 () Bool)

(assert (=> bm!166005 (= call!166011 (validRegex!3265 (ite c!413958 (reg!7968 lt!905920) (ite c!413959 (regTwo!15791 lt!905920) (regOne!15790 lt!905920)))))))

(declare-fun d!727607 () Bool)

(declare-fun res!1081990 () Bool)

(declare-fun e!1623104 () Bool)

(assert (=> d!727607 (=> res!1081990 e!1623104)))

(assert (=> d!727607 (= res!1081990 ((_ is ElementMatch!7639) lt!905920))))

(assert (=> d!727607 (= (validRegex!3265 lt!905920) e!1623104)))

(declare-fun b!2571891 () Bool)

(declare-fun e!1623103 () Bool)

(declare-fun e!1623106 () Bool)

(assert (=> b!2571891 (= e!1623103 e!1623106)))

(declare-fun res!1081992 () Bool)

(assert (=> b!2571891 (= res!1081992 (not (nullable!2556 (reg!7968 lt!905920))))))

(assert (=> b!2571891 (=> (not res!1081992) (not e!1623106))))

(declare-fun b!2571892 () Bool)

(declare-fun e!1623102 () Bool)

(declare-fun e!1623108 () Bool)

(assert (=> b!2571892 (= e!1623102 e!1623108)))

(declare-fun res!1081991 () Bool)

(assert (=> b!2571892 (=> (not res!1081991) (not e!1623108))))

(declare-fun call!166010 () Bool)

(assert (=> b!2571892 (= res!1081991 call!166010)))

(declare-fun b!2571893 () Bool)

(declare-fun call!166012 () Bool)

(assert (=> b!2571893 (= e!1623108 call!166012)))

(declare-fun b!2571894 () Bool)

(declare-fun res!1081994 () Bool)

(declare-fun e!1623105 () Bool)

(assert (=> b!2571894 (=> (not res!1081994) (not e!1623105))))

(assert (=> b!2571894 (= res!1081994 call!166012)))

(declare-fun e!1623107 () Bool)

(assert (=> b!2571894 (= e!1623107 e!1623105)))

(declare-fun b!2571895 () Bool)

(assert (=> b!2571895 (= e!1623105 call!166010)))

(declare-fun b!2571896 () Bool)

(assert (=> b!2571896 (= e!1623103 e!1623107)))

(assert (=> b!2571896 (= c!413959 ((_ is Union!7639) lt!905920))))

(declare-fun b!2571897 () Bool)

(assert (=> b!2571897 (= e!1623106 call!166011)))

(declare-fun bm!166006 () Bool)

(assert (=> bm!166006 (= call!166012 (validRegex!3265 (ite c!413959 (regOne!15791 lt!905920) (regTwo!15790 lt!905920))))))

(declare-fun b!2571898 () Bool)

(assert (=> b!2571898 (= e!1623104 e!1623103)))

(assert (=> b!2571898 (= c!413958 ((_ is Star!7639) lt!905920))))

(declare-fun b!2571899 () Bool)

(declare-fun res!1081993 () Bool)

(assert (=> b!2571899 (=> res!1081993 e!1623102)))

(assert (=> b!2571899 (= res!1081993 (not ((_ is Concat!12335) lt!905920)))))

(assert (=> b!2571899 (= e!1623107 e!1623102)))

(declare-fun bm!166007 () Bool)

(assert (=> bm!166007 (= call!166010 call!166011)))

(assert (= (and d!727607 (not res!1081990)) b!2571898))

(assert (= (and b!2571898 c!413958) b!2571891))

(assert (= (and b!2571898 (not c!413958)) b!2571896))

(assert (= (and b!2571891 res!1081992) b!2571897))

(assert (= (and b!2571896 c!413959) b!2571894))

(assert (= (and b!2571896 (not c!413959)) b!2571899))

(assert (= (and b!2571894 res!1081994) b!2571895))

(assert (= (and b!2571899 (not res!1081993)) b!2571892))

(assert (= (and b!2571892 res!1081991) b!2571893))

(assert (= (or b!2571894 b!2571893) bm!166006))

(assert (= (or b!2571895 b!2571892) bm!166007))

(assert (= (or b!2571897 bm!166007) bm!166005))

(declare-fun m!2907989 () Bool)

(assert (=> bm!166005 m!2907989))

(declare-fun m!2907991 () Bool)

(assert (=> b!2571891 m!2907991))

(declare-fun m!2907993 () Bool)

(assert (=> bm!166006 m!2907993))

(assert (=> d!727291 d!727607))

(declare-fun bm!166008 () Bool)

(declare-fun call!166013 () Bool)

(assert (=> bm!166008 (= call!166013 (isEmpty!17064 (tail!4119 tl!4068)))))

(declare-fun b!2571900 () Bool)

(declare-fun e!1623111 () Bool)

(assert (=> b!2571900 (= e!1623111 (nullable!2556 (derivativeStep!2208 lt!905919 (head!5844 tl!4068))))))

(declare-fun b!2571901 () Bool)

(declare-fun e!1623112 () Bool)

(assert (=> b!2571901 (= e!1623112 (= (head!5844 (tail!4119 tl!4068)) (c!413611 (derivativeStep!2208 lt!905919 (head!5844 tl!4068)))))))

(declare-fun b!2571902 () Bool)

(declare-fun res!1082000 () Bool)

(declare-fun e!1623113 () Bool)

(assert (=> b!2571902 (=> res!1082000 e!1623113)))

(assert (=> b!2571902 (= res!1082000 (not (isEmpty!17064 (tail!4119 (tail!4119 tl!4068)))))))

(declare-fun b!2571904 () Bool)

(assert (=> b!2571904 (= e!1623113 (not (= (head!5844 (tail!4119 tl!4068)) (c!413611 (derivativeStep!2208 lt!905919 (head!5844 tl!4068))))))))

(declare-fun b!2571905 () Bool)

(declare-fun res!1082002 () Bool)

(declare-fun e!1623115 () Bool)

(assert (=> b!2571905 (=> res!1082002 e!1623115)))

(assert (=> b!2571905 (= res!1082002 e!1623112)))

(declare-fun res!1081995 () Bool)

(assert (=> b!2571905 (=> (not res!1081995) (not e!1623112))))

(declare-fun lt!906075 () Bool)

(assert (=> b!2571905 (= res!1081995 lt!906075)))

(declare-fun b!2571906 () Bool)

(declare-fun res!1081996 () Bool)

(assert (=> b!2571906 (=> res!1081996 e!1623115)))

(assert (=> b!2571906 (= res!1081996 (not ((_ is ElementMatch!7639) (derivativeStep!2208 lt!905919 (head!5844 tl!4068)))))))

(declare-fun e!1623110 () Bool)

(assert (=> b!2571906 (= e!1623110 e!1623115)))

(declare-fun b!2571907 () Bool)

(assert (=> b!2571907 (= e!1623110 (not lt!906075))))

(declare-fun b!2571908 () Bool)

(declare-fun e!1623109 () Bool)

(assert (=> b!2571908 (= e!1623115 e!1623109)))

(declare-fun res!1081998 () Bool)

(assert (=> b!2571908 (=> (not res!1081998) (not e!1623109))))

(assert (=> b!2571908 (= res!1081998 (not lt!906075))))

(declare-fun b!2571909 () Bool)

(assert (=> b!2571909 (= e!1623109 e!1623113)))

(declare-fun res!1082001 () Bool)

(assert (=> b!2571909 (=> res!1082001 e!1623113)))

(assert (=> b!2571909 (= res!1082001 call!166013)))

(declare-fun b!2571903 () Bool)

(declare-fun res!1081999 () Bool)

(assert (=> b!2571903 (=> (not res!1081999) (not e!1623112))))

(assert (=> b!2571903 (= res!1081999 (not call!166013))))

(declare-fun d!727609 () Bool)

(declare-fun e!1623114 () Bool)

(assert (=> d!727609 e!1623114))

(declare-fun c!413962 () Bool)

(assert (=> d!727609 (= c!413962 ((_ is EmptyExpr!7639) (derivativeStep!2208 lt!905919 (head!5844 tl!4068))))))

(assert (=> d!727609 (= lt!906075 e!1623111)))

(declare-fun c!413960 () Bool)

(assert (=> d!727609 (= c!413960 (isEmpty!17064 (tail!4119 tl!4068)))))

(assert (=> d!727609 (validRegex!3265 (derivativeStep!2208 lt!905919 (head!5844 tl!4068)))))

(assert (=> d!727609 (= (matchR!3582 (derivativeStep!2208 lt!905919 (head!5844 tl!4068)) (tail!4119 tl!4068)) lt!906075)))

(declare-fun b!2571910 () Bool)

(assert (=> b!2571910 (= e!1623111 (matchR!3582 (derivativeStep!2208 (derivativeStep!2208 lt!905919 (head!5844 tl!4068)) (head!5844 (tail!4119 tl!4068))) (tail!4119 (tail!4119 tl!4068))))))

(declare-fun b!2571911 () Bool)

(declare-fun res!1081997 () Bool)

(assert (=> b!2571911 (=> (not res!1081997) (not e!1623112))))

(assert (=> b!2571911 (= res!1081997 (isEmpty!17064 (tail!4119 (tail!4119 tl!4068))))))

(declare-fun b!2571912 () Bool)

(assert (=> b!2571912 (= e!1623114 e!1623110)))

(declare-fun c!413961 () Bool)

(assert (=> b!2571912 (= c!413961 ((_ is EmptyLang!7639) (derivativeStep!2208 lt!905919 (head!5844 tl!4068))))))

(declare-fun b!2571913 () Bool)

(assert (=> b!2571913 (= e!1623114 (= lt!906075 call!166013))))

(assert (= (and d!727609 c!413960) b!2571900))

(assert (= (and d!727609 (not c!413960)) b!2571910))

(assert (= (and d!727609 c!413962) b!2571913))

(assert (= (and d!727609 (not c!413962)) b!2571912))

(assert (= (and b!2571912 c!413961) b!2571907))

(assert (= (and b!2571912 (not c!413961)) b!2571906))

(assert (= (and b!2571906 (not res!1081996)) b!2571905))

(assert (= (and b!2571905 res!1081995) b!2571903))

(assert (= (and b!2571903 res!1081999) b!2571911))

(assert (= (and b!2571911 res!1081997) b!2571901))

(assert (= (and b!2571905 (not res!1082002)) b!2571908))

(assert (= (and b!2571908 res!1081998) b!2571909))

(assert (= (and b!2571909 (not res!1082001)) b!2571902))

(assert (= (and b!2571902 (not res!1082000)) b!2571904))

(assert (= (or b!2571913 b!2571903 b!2571909) bm!166008))

(assert (=> b!2571901 m!2907295))

(assert (=> b!2571901 m!2907887))

(assert (=> bm!166008 m!2907295))

(assert (=> bm!166008 m!2907297))

(assert (=> b!2571911 m!2907295))

(assert (=> b!2571911 m!2907889))

(assert (=> b!2571911 m!2907889))

(assert (=> b!2571911 m!2907891))

(assert (=> b!2571910 m!2907295))

(assert (=> b!2571910 m!2907887))

(assert (=> b!2571910 m!2907359))

(assert (=> b!2571910 m!2907887))

(declare-fun m!2907995 () Bool)

(assert (=> b!2571910 m!2907995))

(assert (=> b!2571910 m!2907295))

(assert (=> b!2571910 m!2907889))

(assert (=> b!2571910 m!2907995))

(assert (=> b!2571910 m!2907889))

(declare-fun m!2907997 () Bool)

(assert (=> b!2571910 m!2907997))

(assert (=> b!2571902 m!2907295))

(assert (=> b!2571902 m!2907889))

(assert (=> b!2571902 m!2907889))

(assert (=> b!2571902 m!2907891))

(assert (=> d!727609 m!2907295))

(assert (=> d!727609 m!2907297))

(assert (=> d!727609 m!2907359))

(declare-fun m!2907999 () Bool)

(assert (=> d!727609 m!2907999))

(assert (=> b!2571900 m!2907359))

(declare-fun m!2908001 () Bool)

(assert (=> b!2571900 m!2908001))

(assert (=> b!2571904 m!2907295))

(assert (=> b!2571904 m!2907887))

(assert (=> b!2571046 d!727609))

(declare-fun b!2571914 () Bool)

(declare-fun e!1623119 () Regex!7639)

(declare-fun call!166017 () Regex!7639)

(assert (=> b!2571914 (= e!1623119 (Concat!12335 call!166017 lt!905919))))

(declare-fun d!727611 () Bool)

(declare-fun lt!906076 () Regex!7639)

(assert (=> d!727611 (validRegex!3265 lt!906076)))

(declare-fun e!1623118 () Regex!7639)

(assert (=> d!727611 (= lt!906076 e!1623118)))

(declare-fun c!413963 () Bool)

(assert (=> d!727611 (= c!413963 (or ((_ is EmptyExpr!7639) lt!905919) ((_ is EmptyLang!7639) lt!905919)))))

(assert (=> d!727611 (validRegex!3265 lt!905919)))

(assert (=> d!727611 (= (derivativeStep!2208 lt!905919 (head!5844 tl!4068)) lt!906076)))

(declare-fun c!413967 () Bool)

(declare-fun bm!166009 () Bool)

(declare-fun call!166016 () Regex!7639)

(assert (=> bm!166009 (= call!166016 (derivativeStep!2208 (ite c!413967 (regTwo!15791 lt!905919) (regTwo!15790 lt!905919)) (head!5844 tl!4068)))))

(declare-fun b!2571915 () Bool)

(declare-fun e!1623117 () Regex!7639)

(assert (=> b!2571915 (= e!1623118 e!1623117)))

(declare-fun c!413966 () Bool)

(assert (=> b!2571915 (= c!413966 ((_ is ElementMatch!7639) lt!905919))))

(declare-fun b!2571916 () Bool)

(declare-fun e!1623120 () Regex!7639)

(assert (=> b!2571916 (= e!1623120 e!1623119)))

(declare-fun c!413965 () Bool)

(assert (=> b!2571916 (= c!413965 ((_ is Star!7639) lt!905919))))

(declare-fun b!2571917 () Bool)

(declare-fun c!413964 () Bool)

(assert (=> b!2571917 (= c!413964 (nullable!2556 (regOne!15790 lt!905919)))))

(declare-fun e!1623116 () Regex!7639)

(assert (=> b!2571917 (= e!1623119 e!1623116)))

(declare-fun b!2571918 () Bool)

(assert (=> b!2571918 (= e!1623118 EmptyLang!7639)))

(declare-fun b!2571919 () Bool)

(assert (=> b!2571919 (= e!1623117 (ite (= (head!5844 tl!4068) (c!413611 lt!905919)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!166015 () Regex!7639)

(declare-fun b!2571920 () Bool)

(assert (=> b!2571920 (= e!1623116 (Union!7639 (Concat!12335 call!166015 (regTwo!15790 lt!905919)) call!166016))))

(declare-fun bm!166010 () Bool)

(assert (=> bm!166010 (= call!166015 call!166017)))

(declare-fun bm!166011 () Bool)

(declare-fun call!166014 () Regex!7639)

(assert (=> bm!166011 (= call!166017 call!166014)))

(declare-fun b!2571921 () Bool)

(assert (=> b!2571921 (= e!1623116 (Union!7639 (Concat!12335 call!166015 (regTwo!15790 lt!905919)) EmptyLang!7639))))

(declare-fun b!2571922 () Bool)

(assert (=> b!2571922 (= c!413967 ((_ is Union!7639) lt!905919))))

(assert (=> b!2571922 (= e!1623117 e!1623120)))

(declare-fun b!2571923 () Bool)

(assert (=> b!2571923 (= e!1623120 (Union!7639 call!166014 call!166016))))

(declare-fun bm!166012 () Bool)

(assert (=> bm!166012 (= call!166014 (derivativeStep!2208 (ite c!413967 (regOne!15791 lt!905919) (ite c!413965 (reg!7968 lt!905919) (regOne!15790 lt!905919))) (head!5844 tl!4068)))))

(assert (= (and d!727611 c!413963) b!2571918))

(assert (= (and d!727611 (not c!413963)) b!2571915))

(assert (= (and b!2571915 c!413966) b!2571919))

(assert (= (and b!2571915 (not c!413966)) b!2571922))

(assert (= (and b!2571922 c!413967) b!2571923))

(assert (= (and b!2571922 (not c!413967)) b!2571916))

(assert (= (and b!2571916 c!413965) b!2571914))

(assert (= (and b!2571916 (not c!413965)) b!2571917))

(assert (= (and b!2571917 c!413964) b!2571920))

(assert (= (and b!2571917 (not c!413964)) b!2571921))

(assert (= (or b!2571920 b!2571921) bm!166010))

(assert (= (or b!2571914 bm!166010) bm!166011))

(assert (= (or b!2571923 b!2571920) bm!166009))

(assert (= (or b!2571923 bm!166011) bm!166012))

(declare-fun m!2908003 () Bool)

(assert (=> d!727611 m!2908003))

(assert (=> d!727611 m!2907339))

(assert (=> bm!166009 m!2907291))

(declare-fun m!2908005 () Bool)

(assert (=> bm!166009 m!2908005))

(declare-fun m!2908007 () Bool)

(assert (=> b!2571917 m!2908007))

(assert (=> bm!166012 m!2907291))

(declare-fun m!2908009 () Bool)

(assert (=> bm!166012 m!2908009))

(assert (=> b!2571046 d!727611))

(assert (=> b!2571046 d!727567))

(assert (=> b!2571046 d!727569))

(declare-fun d!727613 () Bool)

(assert (=> d!727613 (= (head!5844 (_1!17342 lt!905927)) (h!35024 (_1!17342 lt!905927)))))

(assert (=> b!2570772 d!727613))

(assert (=> b!2570729 d!727573))

(declare-fun bm!166013 () Bool)

(declare-fun call!166018 () Bool)

(assert (=> bm!166013 (= call!166018 (isEmpty!17064 (tail!4119 (_1!17342 lt!905927))))))

(declare-fun b!2571924 () Bool)

(declare-fun e!1623123 () Bool)

(assert (=> b!2571924 (= e!1623123 (nullable!2556 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927)))))))

(declare-fun b!2571925 () Bool)

(declare-fun e!1623124 () Bool)

(assert (=> b!2571925 (= e!1623124 (= (head!5844 (tail!4119 (_1!17342 lt!905927))) (c!413611 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927))))))))

(declare-fun b!2571926 () Bool)

(declare-fun res!1082008 () Bool)

(declare-fun e!1623125 () Bool)

(assert (=> b!2571926 (=> res!1082008 e!1623125)))

(assert (=> b!2571926 (= res!1082008 (not (isEmpty!17064 (tail!4119 (tail!4119 (_1!17342 lt!905927))))))))

(declare-fun b!2571928 () Bool)

(assert (=> b!2571928 (= e!1623125 (not (= (head!5844 (tail!4119 (_1!17342 lt!905927))) (c!413611 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927)))))))))

(declare-fun b!2571929 () Bool)

(declare-fun res!1082010 () Bool)

(declare-fun e!1623127 () Bool)

(assert (=> b!2571929 (=> res!1082010 e!1623127)))

(assert (=> b!2571929 (= res!1082010 e!1623124)))

(declare-fun res!1082003 () Bool)

(assert (=> b!2571929 (=> (not res!1082003) (not e!1623124))))

(declare-fun lt!906077 () Bool)

(assert (=> b!2571929 (= res!1082003 lt!906077)))

(declare-fun b!2571930 () Bool)

(declare-fun res!1082004 () Bool)

(assert (=> b!2571930 (=> res!1082004 e!1623127)))

(assert (=> b!2571930 (= res!1082004 (not ((_ is ElementMatch!7639) (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927))))))))

(declare-fun e!1623122 () Bool)

(assert (=> b!2571930 (= e!1623122 e!1623127)))

(declare-fun b!2571931 () Bool)

(assert (=> b!2571931 (= e!1623122 (not lt!906077))))

(declare-fun b!2571932 () Bool)

(declare-fun e!1623121 () Bool)

(assert (=> b!2571932 (= e!1623127 e!1623121)))

(declare-fun res!1082006 () Bool)

(assert (=> b!2571932 (=> (not res!1082006) (not e!1623121))))

(assert (=> b!2571932 (= res!1082006 (not lt!906077))))

(declare-fun b!2571933 () Bool)

(assert (=> b!2571933 (= e!1623121 e!1623125)))

(declare-fun res!1082009 () Bool)

(assert (=> b!2571933 (=> res!1082009 e!1623125)))

(assert (=> b!2571933 (= res!1082009 call!166018)))

(declare-fun b!2571927 () Bool)

(declare-fun res!1082007 () Bool)

(assert (=> b!2571927 (=> (not res!1082007) (not e!1623124))))

(assert (=> b!2571927 (= res!1082007 (not call!166018))))

(declare-fun d!727615 () Bool)

(declare-fun e!1623126 () Bool)

(assert (=> d!727615 e!1623126))

(declare-fun c!413970 () Bool)

(assert (=> d!727615 (= c!413970 ((_ is EmptyExpr!7639) (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927)))))))

(assert (=> d!727615 (= lt!906077 e!1623123)))

(declare-fun c!413968 () Bool)

(assert (=> d!727615 (= c!413968 (isEmpty!17064 (tail!4119 (_1!17342 lt!905927))))))

(assert (=> d!727615 (validRegex!3265 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927))))))

(assert (=> d!727615 (= (matchR!3582 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927))) (tail!4119 (_1!17342 lt!905927))) lt!906077)))

(declare-fun b!2571934 () Bool)

(assert (=> b!2571934 (= e!1623123 (matchR!3582 (derivativeStep!2208 (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927))) (head!5844 (tail!4119 (_1!17342 lt!905927)))) (tail!4119 (tail!4119 (_1!17342 lt!905927)))))))

(declare-fun b!2571935 () Bool)

(declare-fun res!1082005 () Bool)

(assert (=> b!2571935 (=> (not res!1082005) (not e!1623124))))

(assert (=> b!2571935 (= res!1082005 (isEmpty!17064 (tail!4119 (tail!4119 (_1!17342 lt!905927)))))))

(declare-fun b!2571936 () Bool)

(assert (=> b!2571936 (= e!1623126 e!1623122)))

(declare-fun c!413969 () Bool)

(assert (=> b!2571936 (= c!413969 ((_ is EmptyLang!7639) (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927)))))))

(declare-fun b!2571937 () Bool)

(assert (=> b!2571937 (= e!1623126 (= lt!906077 call!166018))))

(assert (= (and d!727615 c!413968) b!2571924))

(assert (= (and d!727615 (not c!413968)) b!2571934))

(assert (= (and d!727615 c!413970) b!2571937))

(assert (= (and d!727615 (not c!413970)) b!2571936))

(assert (= (and b!2571936 c!413969) b!2571931))

(assert (= (and b!2571936 (not c!413969)) b!2571930))

(assert (= (and b!2571930 (not res!1082004)) b!2571929))

(assert (= (and b!2571929 res!1082003) b!2571927))

(assert (= (and b!2571927 res!1082007) b!2571935))

(assert (= (and b!2571935 res!1082005) b!2571925))

(assert (= (and b!2571929 (not res!1082010)) b!2571932))

(assert (= (and b!2571932 res!1082006) b!2571933))

(assert (= (and b!2571933 (not res!1082009)) b!2571926))

(assert (= (and b!2571926 (not res!1082008)) b!2571928))

(assert (= (or b!2571937 b!2571927 b!2571933) bm!166013))

(assert (=> b!2571925 m!2907187))

(declare-fun m!2908011 () Bool)

(assert (=> b!2571925 m!2908011))

(assert (=> bm!166013 m!2907187))

(assert (=> bm!166013 m!2907189))

(assert (=> b!2571935 m!2907187))

(declare-fun m!2908013 () Bool)

(assert (=> b!2571935 m!2908013))

(assert (=> b!2571935 m!2908013))

(declare-fun m!2908015 () Bool)

(assert (=> b!2571935 m!2908015))

(assert (=> b!2571934 m!2907187))

(assert (=> b!2571934 m!2908011))

(assert (=> b!2571934 m!2907191))

(assert (=> b!2571934 m!2908011))

(declare-fun m!2908017 () Bool)

(assert (=> b!2571934 m!2908017))

(assert (=> b!2571934 m!2907187))

(assert (=> b!2571934 m!2908013))

(assert (=> b!2571934 m!2908017))

(assert (=> b!2571934 m!2908013))

(declare-fun m!2908019 () Bool)

(assert (=> b!2571934 m!2908019))

(assert (=> b!2571926 m!2907187))

(assert (=> b!2571926 m!2908013))

(assert (=> b!2571926 m!2908013))

(assert (=> b!2571926 m!2908015))

(assert (=> d!727615 m!2907187))

(assert (=> d!727615 m!2907189))

(assert (=> d!727615 m!2907191))

(declare-fun m!2908021 () Bool)

(assert (=> d!727615 m!2908021))

(assert (=> b!2571924 m!2907191))

(declare-fun m!2908023 () Bool)

(assert (=> b!2571924 m!2908023))

(assert (=> b!2571928 m!2907187))

(assert (=> b!2571928 m!2908011))

(assert (=> b!2570778 d!727615))

(declare-fun b!2571938 () Bool)

(declare-fun e!1623131 () Regex!7639)

(declare-fun call!166022 () Regex!7639)

(assert (=> b!2571938 (= e!1623131 (Concat!12335 call!166022 lt!905930))))

(declare-fun d!727617 () Bool)

(declare-fun lt!906078 () Regex!7639)

(assert (=> d!727617 (validRegex!3265 lt!906078)))

(declare-fun e!1623130 () Regex!7639)

(assert (=> d!727617 (= lt!906078 e!1623130)))

(declare-fun c!413971 () Bool)

(assert (=> d!727617 (= c!413971 (or ((_ is EmptyExpr!7639) lt!905930) ((_ is EmptyLang!7639) lt!905930)))))

(assert (=> d!727617 (validRegex!3265 lt!905930)))

(assert (=> d!727617 (= (derivativeStep!2208 lt!905930 (head!5844 (_1!17342 lt!905927))) lt!906078)))

(declare-fun c!413975 () Bool)

(declare-fun bm!166014 () Bool)

(declare-fun call!166021 () Regex!7639)

(assert (=> bm!166014 (= call!166021 (derivativeStep!2208 (ite c!413975 (regTwo!15791 lt!905930) (regTwo!15790 lt!905930)) (head!5844 (_1!17342 lt!905927))))))

(declare-fun b!2571939 () Bool)

(declare-fun e!1623129 () Regex!7639)

(assert (=> b!2571939 (= e!1623130 e!1623129)))

(declare-fun c!413974 () Bool)

(assert (=> b!2571939 (= c!413974 ((_ is ElementMatch!7639) lt!905930))))

(declare-fun b!2571940 () Bool)

(declare-fun e!1623132 () Regex!7639)

(assert (=> b!2571940 (= e!1623132 e!1623131)))

(declare-fun c!413973 () Bool)

(assert (=> b!2571940 (= c!413973 ((_ is Star!7639) lt!905930))))

(declare-fun b!2571941 () Bool)

(declare-fun c!413972 () Bool)

(assert (=> b!2571941 (= c!413972 (nullable!2556 (regOne!15790 lt!905930)))))

(declare-fun e!1623128 () Regex!7639)

(assert (=> b!2571941 (= e!1623131 e!1623128)))

(declare-fun b!2571942 () Bool)

(assert (=> b!2571942 (= e!1623130 EmptyLang!7639)))

(declare-fun b!2571943 () Bool)

(assert (=> b!2571943 (= e!1623129 (ite (= (head!5844 (_1!17342 lt!905927)) (c!413611 lt!905930)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2571944 () Bool)

(declare-fun call!166020 () Regex!7639)

(assert (=> b!2571944 (= e!1623128 (Union!7639 (Concat!12335 call!166020 (regTwo!15790 lt!905930)) call!166021))))

(declare-fun bm!166015 () Bool)

(assert (=> bm!166015 (= call!166020 call!166022)))

(declare-fun bm!166016 () Bool)

(declare-fun call!166019 () Regex!7639)

(assert (=> bm!166016 (= call!166022 call!166019)))

(declare-fun b!2571945 () Bool)

(assert (=> b!2571945 (= e!1623128 (Union!7639 (Concat!12335 call!166020 (regTwo!15790 lt!905930)) EmptyLang!7639))))

(declare-fun b!2571946 () Bool)

(assert (=> b!2571946 (= c!413975 ((_ is Union!7639) lt!905930))))

(assert (=> b!2571946 (= e!1623129 e!1623132)))

(declare-fun b!2571947 () Bool)

(assert (=> b!2571947 (= e!1623132 (Union!7639 call!166019 call!166021))))

(declare-fun bm!166017 () Bool)

(assert (=> bm!166017 (= call!166019 (derivativeStep!2208 (ite c!413975 (regOne!15791 lt!905930) (ite c!413973 (reg!7968 lt!905930) (regOne!15790 lt!905930))) (head!5844 (_1!17342 lt!905927))))))

(assert (= (and d!727617 c!413971) b!2571942))

(assert (= (and d!727617 (not c!413971)) b!2571939))

(assert (= (and b!2571939 c!413974) b!2571943))

(assert (= (and b!2571939 (not c!413974)) b!2571946))

(assert (= (and b!2571946 c!413975) b!2571947))

(assert (= (and b!2571946 (not c!413975)) b!2571940))

(assert (= (and b!2571940 c!413973) b!2571938))

(assert (= (and b!2571940 (not c!413973)) b!2571941))

(assert (= (and b!2571941 c!413972) b!2571944))

(assert (= (and b!2571941 (not c!413972)) b!2571945))

(assert (= (or b!2571944 b!2571945) bm!166015))

(assert (= (or b!2571938 bm!166015) bm!166016))

(assert (= (or b!2571947 b!2571944) bm!166014))

(assert (= (or b!2571947 bm!166016) bm!166017))

(declare-fun m!2908025 () Bool)

(assert (=> d!727617 m!2908025))

(assert (=> d!727617 m!2907017))

(assert (=> bm!166014 m!2907183))

(declare-fun m!2908027 () Bool)

(assert (=> bm!166014 m!2908027))

(declare-fun m!2908029 () Bool)

(assert (=> b!2571941 m!2908029))

(assert (=> bm!166017 m!2907183))

(declare-fun m!2908031 () Bool)

(assert (=> bm!166017 m!2908031))

(assert (=> b!2570778 d!727617))

(assert (=> b!2570778 d!727613))

(declare-fun d!727619 () Bool)

(assert (=> d!727619 (= (tail!4119 (_1!17342 lt!905927)) (t!211403 (_1!17342 lt!905927)))))

(assert (=> b!2570778 d!727619))

(assert (=> b!2571003 d!727275))

(declare-fun d!727621 () Bool)

(assert (=> d!727621 (= (isEmpty!17064 (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))) ((_ is Nil!29604) (tail!4119 (Cons!29604 c!14016 (_1!17342 lt!905927)))))))

(assert (=> b!2570550 d!727621))

(assert (=> b!2570550 d!727539))

(assert (=> bm!165812 d!727605))

(declare-fun call!166026 () Regex!7639)

(declare-fun e!1623136 () Regex!7639)

(declare-fun b!2571948 () Bool)

(assert (=> b!2571948 (= e!1623136 (Concat!12335 call!166026 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(declare-fun d!727623 () Bool)

(declare-fun lt!906079 () Regex!7639)

(assert (=> d!727623 (validRegex!3265 lt!906079)))

(declare-fun e!1623135 () Regex!7639)

(assert (=> d!727623 (= lt!906079 e!1623135)))

(declare-fun c!413976 () Bool)

(assert (=> d!727623 (= c!413976 (or ((_ is EmptyExpr!7639) (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) ((_ is EmptyLang!7639) (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))))))

(assert (=> d!727623 (validRegex!3265 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))))

(assert (=> d!727623 (= (derivativeStep!2208 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))) c!14016) lt!906079)))

(declare-fun call!166025 () Regex!7639)

(declare-fun bm!166018 () Bool)

(declare-fun c!413980 () Bool)

(assert (=> bm!166018 (= call!166025 (derivativeStep!2208 (ite c!413980 (regTwo!15791 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) (regTwo!15790 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))) c!14016))))

(declare-fun b!2571949 () Bool)

(declare-fun e!1623134 () Regex!7639)

(assert (=> b!2571949 (= e!1623135 e!1623134)))

(declare-fun c!413979 () Bool)

(assert (=> b!2571949 (= c!413979 ((_ is ElementMatch!7639) (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(declare-fun b!2571950 () Bool)

(declare-fun e!1623137 () Regex!7639)

(assert (=> b!2571950 (= e!1623137 e!1623136)))

(declare-fun c!413978 () Bool)

(assert (=> b!2571950 (= c!413978 ((_ is Star!7639) (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(declare-fun c!413977 () Bool)

(declare-fun b!2571951 () Bool)

(assert (=> b!2571951 (= c!413977 (nullable!2556 (regOne!15790 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))))))

(declare-fun e!1623133 () Regex!7639)

(assert (=> b!2571951 (= e!1623136 e!1623133)))

(declare-fun b!2571952 () Bool)

(assert (=> b!2571952 (= e!1623135 EmptyLang!7639)))

(declare-fun b!2571953 () Bool)

(assert (=> b!2571953 (= e!1623134 (ite (= c!14016 (c!413611 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!166024 () Regex!7639)

(declare-fun b!2571954 () Bool)

(assert (=> b!2571954 (= e!1623133 (Union!7639 (Concat!12335 call!166024 (regTwo!15790 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))) call!166025))))

(declare-fun bm!166019 () Bool)

(assert (=> bm!166019 (= call!166024 call!166026)))

(declare-fun bm!166020 () Bool)

(declare-fun call!166023 () Regex!7639)

(assert (=> bm!166020 (= call!166026 call!166023)))

(declare-fun b!2571955 () Bool)

(assert (=> b!2571955 (= e!1623133 (Union!7639 (Concat!12335 call!166024 (regTwo!15790 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))) EmptyLang!7639))))

(declare-fun b!2571956 () Bool)

(assert (=> b!2571956 (= c!413980 ((_ is Union!7639) (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(assert (=> b!2571956 (= e!1623134 e!1623137)))

(declare-fun b!2571957 () Bool)

(assert (=> b!2571957 (= e!1623137 (Union!7639 call!166023 call!166025))))

(declare-fun bm!166021 () Bool)

(assert (=> bm!166021 (= call!166023 (derivativeStep!2208 (ite c!413980 (regOne!15791 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) (ite c!413978 (reg!7968 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) (regOne!15790 (ite c!413746 (regOne!15791 (regOne!15790 r!27340)) (ite c!413744 (reg!7968 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))) c!14016))))

(assert (= (and d!727623 c!413976) b!2571952))

(assert (= (and d!727623 (not c!413976)) b!2571949))

(assert (= (and b!2571949 c!413979) b!2571953))

(assert (= (and b!2571949 (not c!413979)) b!2571956))

(assert (= (and b!2571956 c!413980) b!2571957))

(assert (= (and b!2571956 (not c!413980)) b!2571950))

(assert (= (and b!2571950 c!413978) b!2571948))

(assert (= (and b!2571950 (not c!413978)) b!2571951))

(assert (= (and b!2571951 c!413977) b!2571954))

(assert (= (and b!2571951 (not c!413977)) b!2571955))

(assert (= (or b!2571954 b!2571955) bm!166019))

(assert (= (or b!2571948 bm!166019) bm!166020))

(assert (= (or b!2571957 b!2571954) bm!166018))

(assert (= (or b!2571957 bm!166020) bm!166021))

(declare-fun m!2908033 () Bool)

(assert (=> d!727623 m!2908033))

(declare-fun m!2908035 () Bool)

(assert (=> d!727623 m!2908035))

(declare-fun m!2908037 () Bool)

(assert (=> bm!166018 m!2908037))

(declare-fun m!2908039 () Bool)

(assert (=> b!2571951 m!2908039))

(declare-fun m!2908041 () Bool)

(assert (=> bm!166021 m!2908041))

(assert (=> bm!165845 d!727623))

(assert (=> b!2570966 d!727591))

(assert (=> b!2570966 d!727569))

(assert (=> b!2570765 d!727545))

(assert (=> b!2570765 d!727549))

(declare-fun d!727625 () Bool)

(declare-fun lt!906082 () Int)

(assert (=> d!727625 (>= lt!906082 0)))

(declare-fun e!1623140 () Int)

(assert (=> d!727625 (= lt!906082 e!1623140)))

(declare-fun c!413983 () Bool)

(assert (=> d!727625 (= c!413983 ((_ is Nil!29604) lt!905942))))

(assert (=> d!727625 (= (size!22963 lt!905942) lt!906082)))

(declare-fun b!2571962 () Bool)

(assert (=> b!2571962 (= e!1623140 0)))

(declare-fun b!2571963 () Bool)

(assert (=> b!2571963 (= e!1623140 (+ 1 (size!22963 (t!211403 lt!905942))))))

(assert (= (and d!727625 c!413983) b!2571962))

(assert (= (and d!727625 (not c!413983)) b!2571963))

(declare-fun m!2908043 () Bool)

(assert (=> b!2571963 m!2908043))

(assert (=> b!2570579 d!727625))

(declare-fun d!727627 () Bool)

(declare-fun lt!906083 () Int)

(assert (=> d!727627 (>= lt!906083 0)))

(declare-fun e!1623141 () Int)

(assert (=> d!727627 (= lt!906083 e!1623141)))

(declare-fun c!413984 () Bool)

(assert (=> d!727627 (= c!413984 ((_ is Nil!29604) (_1!17342 lt!905927)))))

(assert (=> d!727627 (= (size!22963 (_1!17342 lt!905927)) lt!906083)))

(declare-fun b!2571964 () Bool)

(assert (=> b!2571964 (= e!1623141 0)))

(declare-fun b!2571965 () Bool)

(assert (=> b!2571965 (= e!1623141 (+ 1 (size!22963 (t!211403 (_1!17342 lt!905927)))))))

(assert (= (and d!727627 c!413984) b!2571964))

(assert (= (and d!727627 (not c!413984)) b!2571965))

(assert (=> b!2571965 m!2907951))

(assert (=> b!2570579 d!727627))

(declare-fun d!727629 () Bool)

(declare-fun lt!906084 () Int)

(assert (=> d!727629 (>= lt!906084 0)))

(declare-fun e!1623142 () Int)

(assert (=> d!727629 (= lt!906084 e!1623142)))

(declare-fun c!413985 () Bool)

(assert (=> d!727629 (= c!413985 ((_ is Nil!29604) (_2!17342 lt!905927)))))

(assert (=> d!727629 (= (size!22963 (_2!17342 lt!905927)) lt!906084)))

(declare-fun b!2571966 () Bool)

(assert (=> b!2571966 (= e!1623142 0)))

(declare-fun b!2571967 () Bool)

(assert (=> b!2571967 (= e!1623142 (+ 1 (size!22963 (t!211403 (_2!17342 lt!905927)))))))

(assert (= (and d!727629 c!413985) b!2571966))

(assert (= (and d!727629 (not c!413985)) b!2571967))

(declare-fun m!2908045 () Bool)

(assert (=> b!2571967 m!2908045))

(assert (=> b!2570579 d!727629))

(declare-fun d!727631 () Bool)

(assert (=> d!727631 (= (isEmpty!17064 tl!4068) ((_ is Nil!29604) tl!4068))))

(assert (=> d!727329 d!727631))

(declare-fun c!413987 () Bool)

(declare-fun call!166028 () Bool)

(declare-fun bm!166022 () Bool)

(declare-fun c!413986 () Bool)

(assert (=> bm!166022 (= call!166028 (validRegex!3265 (ite c!413986 (reg!7968 lt!905919) (ite c!413987 (regTwo!15791 lt!905919) (regOne!15790 lt!905919)))))))

(declare-fun d!727633 () Bool)

(declare-fun res!1082011 () Bool)

(declare-fun e!1623145 () Bool)

(assert (=> d!727633 (=> res!1082011 e!1623145)))

(assert (=> d!727633 (= res!1082011 ((_ is ElementMatch!7639) lt!905919))))

(assert (=> d!727633 (= (validRegex!3265 lt!905919) e!1623145)))

(declare-fun b!2571968 () Bool)

(declare-fun e!1623144 () Bool)

(declare-fun e!1623147 () Bool)

(assert (=> b!2571968 (= e!1623144 e!1623147)))

(declare-fun res!1082013 () Bool)

(assert (=> b!2571968 (= res!1082013 (not (nullable!2556 (reg!7968 lt!905919))))))

(assert (=> b!2571968 (=> (not res!1082013) (not e!1623147))))

(declare-fun b!2571969 () Bool)

(declare-fun e!1623143 () Bool)

(declare-fun e!1623149 () Bool)

(assert (=> b!2571969 (= e!1623143 e!1623149)))

(declare-fun res!1082012 () Bool)

(assert (=> b!2571969 (=> (not res!1082012) (not e!1623149))))

(declare-fun call!166027 () Bool)

(assert (=> b!2571969 (= res!1082012 call!166027)))

(declare-fun b!2571970 () Bool)

(declare-fun call!166029 () Bool)

(assert (=> b!2571970 (= e!1623149 call!166029)))

(declare-fun b!2571971 () Bool)

(declare-fun res!1082015 () Bool)

(declare-fun e!1623146 () Bool)

(assert (=> b!2571971 (=> (not res!1082015) (not e!1623146))))

(assert (=> b!2571971 (= res!1082015 call!166029)))

(declare-fun e!1623148 () Bool)

(assert (=> b!2571971 (= e!1623148 e!1623146)))

(declare-fun b!2571972 () Bool)

(assert (=> b!2571972 (= e!1623146 call!166027)))

(declare-fun b!2571973 () Bool)

(assert (=> b!2571973 (= e!1623144 e!1623148)))

(assert (=> b!2571973 (= c!413987 ((_ is Union!7639) lt!905919))))

(declare-fun b!2571974 () Bool)

(assert (=> b!2571974 (= e!1623147 call!166028)))

(declare-fun bm!166023 () Bool)

(assert (=> bm!166023 (= call!166029 (validRegex!3265 (ite c!413987 (regOne!15791 lt!905919) (regTwo!15790 lt!905919))))))

(declare-fun b!2571975 () Bool)

(assert (=> b!2571975 (= e!1623145 e!1623144)))

(assert (=> b!2571975 (= c!413986 ((_ is Star!7639) lt!905919))))

(declare-fun b!2571976 () Bool)

(declare-fun res!1082014 () Bool)

(assert (=> b!2571976 (=> res!1082014 e!1623143)))

(assert (=> b!2571976 (= res!1082014 (not ((_ is Concat!12335) lt!905919)))))

(assert (=> b!2571976 (= e!1623148 e!1623143)))

(declare-fun bm!166024 () Bool)

(assert (=> bm!166024 (= call!166027 call!166028)))

(assert (= (and d!727633 (not res!1082011)) b!2571975))

(assert (= (and b!2571975 c!413986) b!2571968))

(assert (= (and b!2571975 (not c!413986)) b!2571973))

(assert (= (and b!2571968 res!1082013) b!2571974))

(assert (= (and b!2571973 c!413987) b!2571971))

(assert (= (and b!2571973 (not c!413987)) b!2571976))

(assert (= (and b!2571971 res!1082015) b!2571972))

(assert (= (and b!2571976 (not res!1082014)) b!2571969))

(assert (= (and b!2571969 res!1082012) b!2571970))

(assert (= (or b!2571971 b!2571970) bm!166023))

(assert (= (or b!2571972 b!2571969) bm!166024))

(assert (= (or b!2571974 bm!166024) bm!166022))

(declare-fun m!2908047 () Bool)

(assert (=> bm!166022 m!2908047))

(declare-fun m!2908049 () Bool)

(assert (=> b!2571968 m!2908049))

(declare-fun m!2908051 () Bool)

(assert (=> bm!166023 m!2908051))

(assert (=> d!727329 d!727633))

(assert (=> b!2571024 d!727591))

(assert (=> b!2571024 d!727569))

(declare-fun bm!166025 () Bool)

(declare-fun c!413989 () Bool)

(declare-fun c!413988 () Bool)

(declare-fun call!166031 () Bool)

(assert (=> bm!166025 (= call!166031 (validRegex!3265 (ite c!413988 (reg!7968 lt!906004) (ite c!413989 (regTwo!15791 lt!906004) (regOne!15790 lt!906004)))))))

(declare-fun d!727635 () Bool)

(declare-fun res!1082016 () Bool)

(declare-fun e!1623152 () Bool)

(assert (=> d!727635 (=> res!1082016 e!1623152)))

(assert (=> d!727635 (= res!1082016 ((_ is ElementMatch!7639) lt!906004))))

(assert (=> d!727635 (= (validRegex!3265 lt!906004) e!1623152)))

(declare-fun b!2571977 () Bool)

(declare-fun e!1623151 () Bool)

(declare-fun e!1623154 () Bool)

(assert (=> b!2571977 (= e!1623151 e!1623154)))

(declare-fun res!1082018 () Bool)

(assert (=> b!2571977 (= res!1082018 (not (nullable!2556 (reg!7968 lt!906004))))))

(assert (=> b!2571977 (=> (not res!1082018) (not e!1623154))))

(declare-fun b!2571978 () Bool)

(declare-fun e!1623150 () Bool)

(declare-fun e!1623156 () Bool)

(assert (=> b!2571978 (= e!1623150 e!1623156)))

(declare-fun res!1082017 () Bool)

(assert (=> b!2571978 (=> (not res!1082017) (not e!1623156))))

(declare-fun call!166030 () Bool)

(assert (=> b!2571978 (= res!1082017 call!166030)))

(declare-fun b!2571979 () Bool)

(declare-fun call!166032 () Bool)

(assert (=> b!2571979 (= e!1623156 call!166032)))

(declare-fun b!2571980 () Bool)

(declare-fun res!1082020 () Bool)

(declare-fun e!1623153 () Bool)

(assert (=> b!2571980 (=> (not res!1082020) (not e!1623153))))

(assert (=> b!2571980 (= res!1082020 call!166032)))

(declare-fun e!1623155 () Bool)

(assert (=> b!2571980 (= e!1623155 e!1623153)))

(declare-fun b!2571981 () Bool)

(assert (=> b!2571981 (= e!1623153 call!166030)))

(declare-fun b!2571982 () Bool)

(assert (=> b!2571982 (= e!1623151 e!1623155)))

(assert (=> b!2571982 (= c!413989 ((_ is Union!7639) lt!906004))))

(declare-fun b!2571983 () Bool)

(assert (=> b!2571983 (= e!1623154 call!166031)))

(declare-fun bm!166026 () Bool)

(assert (=> bm!166026 (= call!166032 (validRegex!3265 (ite c!413989 (regOne!15791 lt!906004) (regTwo!15790 lt!906004))))))

(declare-fun b!2571984 () Bool)

(assert (=> b!2571984 (= e!1623152 e!1623151)))

(assert (=> b!2571984 (= c!413988 ((_ is Star!7639) lt!906004))))

(declare-fun b!2571985 () Bool)

(declare-fun res!1082019 () Bool)

(assert (=> b!2571985 (=> res!1082019 e!1623150)))

(assert (=> b!2571985 (= res!1082019 (not ((_ is Concat!12335) lt!906004)))))

(assert (=> b!2571985 (= e!1623155 e!1623150)))

(declare-fun bm!166027 () Bool)

(assert (=> bm!166027 (= call!166030 call!166031)))

(assert (= (and d!727635 (not res!1082016)) b!2571984))

(assert (= (and b!2571984 c!413988) b!2571977))

(assert (= (and b!2571984 (not c!413988)) b!2571982))

(assert (= (and b!2571977 res!1082018) b!2571983))

(assert (= (and b!2571982 c!413989) b!2571980))

(assert (= (and b!2571982 (not c!413989)) b!2571985))

(assert (= (and b!2571980 res!1082020) b!2571981))

(assert (= (and b!2571985 (not res!1082019)) b!2571978))

(assert (= (and b!2571978 res!1082017) b!2571979))

(assert (= (or b!2571980 b!2571979) bm!166026))

(assert (= (or b!2571981 b!2571978) bm!166027))

(assert (= (or b!2571983 bm!166027) bm!166025))

(declare-fun m!2908053 () Bool)

(assert (=> bm!166025 m!2908053))

(declare-fun m!2908055 () Bool)

(assert (=> b!2571977 m!2908055))

(declare-fun m!2908057 () Bool)

(assert (=> bm!166026 m!2908057))

(assert (=> d!727315 d!727635))

(declare-fun c!413991 () Bool)

(declare-fun call!166034 () Bool)

(declare-fun bm!166028 () Bool)

(declare-fun c!413990 () Bool)

(assert (=> bm!166028 (= call!166034 (validRegex!3265 (ite c!413990 (reg!7968 (derivativeStep!2208 r!27340 c!14016)) (ite c!413991 (regTwo!15791 (derivativeStep!2208 r!27340 c!14016)) (regOne!15790 (derivativeStep!2208 r!27340 c!14016))))))))

(declare-fun d!727637 () Bool)

(declare-fun res!1082021 () Bool)

(declare-fun e!1623159 () Bool)

(assert (=> d!727637 (=> res!1082021 e!1623159)))

(assert (=> d!727637 (= res!1082021 ((_ is ElementMatch!7639) (derivativeStep!2208 r!27340 c!14016)))))

(assert (=> d!727637 (= (validRegex!3265 (derivativeStep!2208 r!27340 c!14016)) e!1623159)))

(declare-fun b!2571986 () Bool)

(declare-fun e!1623158 () Bool)

(declare-fun e!1623161 () Bool)

(assert (=> b!2571986 (= e!1623158 e!1623161)))

(declare-fun res!1082023 () Bool)

(assert (=> b!2571986 (= res!1082023 (not (nullable!2556 (reg!7968 (derivativeStep!2208 r!27340 c!14016)))))))

(assert (=> b!2571986 (=> (not res!1082023) (not e!1623161))))

(declare-fun b!2571987 () Bool)

(declare-fun e!1623157 () Bool)

(declare-fun e!1623163 () Bool)

(assert (=> b!2571987 (= e!1623157 e!1623163)))

(declare-fun res!1082022 () Bool)

(assert (=> b!2571987 (=> (not res!1082022) (not e!1623163))))

(declare-fun call!166033 () Bool)

(assert (=> b!2571987 (= res!1082022 call!166033)))

(declare-fun b!2571988 () Bool)

(declare-fun call!166035 () Bool)

(assert (=> b!2571988 (= e!1623163 call!166035)))

(declare-fun b!2571989 () Bool)

(declare-fun res!1082025 () Bool)

(declare-fun e!1623160 () Bool)

(assert (=> b!2571989 (=> (not res!1082025) (not e!1623160))))

(assert (=> b!2571989 (= res!1082025 call!166035)))

(declare-fun e!1623162 () Bool)

(assert (=> b!2571989 (= e!1623162 e!1623160)))

(declare-fun b!2571990 () Bool)

(assert (=> b!2571990 (= e!1623160 call!166033)))

(declare-fun b!2571991 () Bool)

(assert (=> b!2571991 (= e!1623158 e!1623162)))

(assert (=> b!2571991 (= c!413991 ((_ is Union!7639) (derivativeStep!2208 r!27340 c!14016)))))

(declare-fun b!2571992 () Bool)

(assert (=> b!2571992 (= e!1623161 call!166034)))

(declare-fun bm!166029 () Bool)

(assert (=> bm!166029 (= call!166035 (validRegex!3265 (ite c!413991 (regOne!15791 (derivativeStep!2208 r!27340 c!14016)) (regTwo!15790 (derivativeStep!2208 r!27340 c!14016)))))))

(declare-fun b!2571993 () Bool)

(assert (=> b!2571993 (= e!1623159 e!1623158)))

(assert (=> b!2571993 (= c!413990 ((_ is Star!7639) (derivativeStep!2208 r!27340 c!14016)))))

(declare-fun b!2571994 () Bool)

(declare-fun res!1082024 () Bool)

(assert (=> b!2571994 (=> res!1082024 e!1623157)))

(assert (=> b!2571994 (= res!1082024 (not ((_ is Concat!12335) (derivativeStep!2208 r!27340 c!14016))))))

(assert (=> b!2571994 (= e!1623162 e!1623157)))

(declare-fun bm!166030 () Bool)

(assert (=> bm!166030 (= call!166033 call!166034)))

(assert (= (and d!727637 (not res!1082021)) b!2571993))

(assert (= (and b!2571993 c!413990) b!2571986))

(assert (= (and b!2571993 (not c!413990)) b!2571991))

(assert (= (and b!2571986 res!1082023) b!2571992))

(assert (= (and b!2571991 c!413991) b!2571989))

(assert (= (and b!2571991 (not c!413991)) b!2571994))

(assert (= (and b!2571989 res!1082025) b!2571990))

(assert (= (and b!2571994 (not res!1082024)) b!2571987))

(assert (= (and b!2571987 res!1082022) b!2571988))

(assert (= (or b!2571989 b!2571988) bm!166029))

(assert (= (or b!2571990 b!2571987) bm!166030))

(assert (= (or b!2571992 bm!166030) bm!166028))

(declare-fun m!2908059 () Bool)

(assert (=> bm!166028 m!2908059))

(declare-fun m!2908061 () Bool)

(assert (=> b!2571986 m!2908061))

(declare-fun m!2908063 () Bool)

(assert (=> bm!166029 m!2908063))

(assert (=> d!727315 d!727637))

(assert (=> bm!165847 d!727631))

(declare-fun b!2571997 () Bool)

(declare-fun res!1082027 () Bool)

(declare-fun e!1623164 () Bool)

(assert (=> b!2571997 (=> (not res!1082027) (not e!1623164))))

(declare-fun lt!906085 () List!29704)

(assert (=> b!2571997 (= res!1082027 (= (size!22963 lt!906085) (+ (size!22963 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604))) (size!22963 (t!211403 tl!4068)))))))

(declare-fun d!727639 () Bool)

(assert (=> d!727639 e!1623164))

(declare-fun res!1082026 () Bool)

(assert (=> d!727639 (=> (not res!1082026) (not e!1623164))))

(assert (=> d!727639 (= res!1082026 (= (content!4083 lt!906085) ((_ map or) (content!4083 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604))) (content!4083 (t!211403 tl!4068)))))))

(declare-fun e!1623165 () List!29704)

(assert (=> d!727639 (= lt!906085 e!1623165)))

(declare-fun c!413992 () Bool)

(assert (=> d!727639 (= c!413992 ((_ is Nil!29604) (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604))))))

(assert (=> d!727639 (= (++!7278 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (t!211403 tl!4068)) lt!906085)))

(declare-fun b!2571998 () Bool)

(assert (=> b!2571998 (= e!1623164 (or (not (= (t!211403 tl!4068) Nil!29604)) (= lt!906085 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)))))))

(declare-fun b!2571995 () Bool)

(assert (=> b!2571995 (= e!1623165 (t!211403 tl!4068))))

(declare-fun b!2571996 () Bool)

(assert (=> b!2571996 (= e!1623165 (Cons!29604 (h!35024 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604))) (++!7278 (t!211403 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604))) (t!211403 tl!4068))))))

(assert (= (and d!727639 c!413992) b!2571995))

(assert (= (and d!727639 (not c!413992)) b!2571996))

(assert (= (and d!727639 res!1082026) b!2571997))

(assert (= (and b!2571997 res!1082027) b!2571998))

(declare-fun m!2908065 () Bool)

(assert (=> b!2571997 m!2908065))

(assert (=> b!2571997 m!2907139))

(declare-fun m!2908067 () Bool)

(assert (=> b!2571997 m!2908067))

(declare-fun m!2908069 () Bool)

(assert (=> b!2571997 m!2908069))

(declare-fun m!2908071 () Bool)

(assert (=> d!727639 m!2908071))

(assert (=> d!727639 m!2907139))

(declare-fun m!2908073 () Bool)

(assert (=> d!727639 m!2908073))

(declare-fun m!2908075 () Bool)

(assert (=> d!727639 m!2908075))

(declare-fun m!2908077 () Bool)

(assert (=> b!2571996 m!2908077))

(assert (=> b!2570722 d!727639))

(declare-fun b!2572001 () Bool)

(declare-fun res!1082029 () Bool)

(declare-fun e!1623166 () Bool)

(assert (=> b!2572001 (=> (not res!1082029) (not e!1623166))))

(declare-fun lt!906086 () List!29704)

(assert (=> b!2572001 (= res!1082029 (= (size!22963 lt!906086) (+ (size!22963 Nil!29604) (size!22963 (Cons!29604 (h!35024 tl!4068) Nil!29604)))))))

(declare-fun d!727641 () Bool)

(assert (=> d!727641 e!1623166))

(declare-fun res!1082028 () Bool)

(assert (=> d!727641 (=> (not res!1082028) (not e!1623166))))

(assert (=> d!727641 (= res!1082028 (= (content!4083 lt!906086) ((_ map or) (content!4083 Nil!29604) (content!4083 (Cons!29604 (h!35024 tl!4068) Nil!29604)))))))

(declare-fun e!1623167 () List!29704)

(assert (=> d!727641 (= lt!906086 e!1623167)))

(declare-fun c!413993 () Bool)

(assert (=> d!727641 (= c!413993 ((_ is Nil!29604) Nil!29604))))

(assert (=> d!727641 (= (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) lt!906086)))

(declare-fun b!2572002 () Bool)

(assert (=> b!2572002 (= e!1623166 (or (not (= (Cons!29604 (h!35024 tl!4068) Nil!29604) Nil!29604)) (= lt!906086 Nil!29604)))))

(declare-fun b!2571999 () Bool)

(assert (=> b!2571999 (= e!1623167 (Cons!29604 (h!35024 tl!4068) Nil!29604))))

(declare-fun b!2572000 () Bool)

(assert (=> b!2572000 (= e!1623167 (Cons!29604 (h!35024 Nil!29604) (++!7278 (t!211403 Nil!29604) (Cons!29604 (h!35024 tl!4068) Nil!29604))))))

(assert (= (and d!727641 c!413993) b!2571999))

(assert (= (and d!727641 (not c!413993)) b!2572000))

(assert (= (and d!727641 res!1082028) b!2572001))

(assert (= (and b!2572001 res!1082029) b!2572002))

(declare-fun m!2908079 () Bool)

(assert (=> b!2572001 m!2908079))

(declare-fun m!2908081 () Bool)

(assert (=> b!2572001 m!2908081))

(declare-fun m!2908083 () Bool)

(assert (=> b!2572001 m!2908083))

(declare-fun m!2908085 () Bool)

(assert (=> d!727641 m!2908085))

(declare-fun m!2908087 () Bool)

(assert (=> d!727641 m!2908087))

(declare-fun m!2908089 () Bool)

(assert (=> d!727641 m!2908089))

(declare-fun m!2908091 () Bool)

(assert (=> b!2572000 m!2908091))

(assert (=> b!2570722 d!727641))

(declare-fun d!727643 () Bool)

(assert (=> d!727643 (= (++!7278 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (t!211403 tl!4068)) tl!4068)))

(declare-fun lt!906089 () Unit!43459)

(declare-fun choose!15169 (List!29704 C!15436 List!29704 List!29704) Unit!43459)

(assert (=> d!727643 (= lt!906089 (choose!15169 Nil!29604 (h!35024 tl!4068) (t!211403 tl!4068) tl!4068))))

(assert (=> d!727643 (= (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) (t!211403 tl!4068))) tl!4068)))

(assert (=> d!727643 (= (lemmaMoveElementToOtherListKeepsConcatEq!808 Nil!29604 (h!35024 tl!4068) (t!211403 tl!4068) tl!4068) lt!906089)))

(declare-fun bs!470053 () Bool)

(assert (= bs!470053 d!727643))

(assert (=> bs!470053 m!2907139))

(assert (=> bs!470053 m!2907139))

(assert (=> bs!470053 m!2907147))

(declare-fun m!2908093 () Bool)

(assert (=> bs!470053 m!2908093))

(declare-fun m!2908095 () Bool)

(assert (=> bs!470053 m!2908095))

(assert (=> b!2570722 d!727643))

(declare-fun b!2572003 () Bool)

(declare-fun res!1082033 () Bool)

(declare-fun e!1623172 () Bool)

(assert (=> b!2572003 (=> (not res!1082033) (not e!1623172))))

(declare-fun lt!906092 () Option!5920)

(assert (=> b!2572003 (= res!1082033 (matchR!3582 lt!905930 (_1!17342 (get!9318 lt!906092))))))

(declare-fun b!2572004 () Bool)

(declare-fun lt!906090 () Unit!43459)

(declare-fun lt!906091 () Unit!43459)

(assert (=> b!2572004 (= lt!906090 lt!906091)))

(assert (=> b!2572004 (= (++!7278 (++!7278 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (Cons!29604 (h!35024 (t!211403 tl!4068)) Nil!29604)) (t!211403 (t!211403 tl!4068))) tl!4068)))

(assert (=> b!2572004 (= lt!906091 (lemmaMoveElementToOtherListKeepsConcatEq!808 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (h!35024 (t!211403 tl!4068)) (t!211403 (t!211403 tl!4068)) tl!4068))))

(declare-fun e!1623168 () Option!5920)

(assert (=> b!2572004 (= e!1623168 (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) (++!7278 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (Cons!29604 (h!35024 (t!211403 tl!4068)) Nil!29604)) (t!211403 (t!211403 tl!4068)) tl!4068))))

(declare-fun b!2572005 () Bool)

(declare-fun e!1623170 () Bool)

(assert (=> b!2572005 (= e!1623170 (matchR!3582 (regTwo!15790 r!27340) (t!211403 tl!4068)))))

(declare-fun b!2572006 () Bool)

(declare-fun e!1623169 () Option!5920)

(assert (=> b!2572006 (= e!1623169 (Some!5919 (tuple2!29601 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (t!211403 tl!4068))))))

(declare-fun b!2572007 () Bool)

(assert (=> b!2572007 (= e!1623172 (= (++!7278 (_1!17342 (get!9318 lt!906092)) (_2!17342 (get!9318 lt!906092))) tl!4068))))

(declare-fun b!2572008 () Bool)

(assert (=> b!2572008 (= e!1623168 None!5919)))

(declare-fun b!2572009 () Bool)

(assert (=> b!2572009 (= e!1623169 e!1623168)))

(declare-fun c!413995 () Bool)

(assert (=> b!2572009 (= c!413995 ((_ is Nil!29604) (t!211403 tl!4068)))))

(declare-fun d!727645 () Bool)

(declare-fun e!1623171 () Bool)

(assert (=> d!727645 e!1623171))

(declare-fun res!1082031 () Bool)

(assert (=> d!727645 (=> res!1082031 e!1623171)))

(assert (=> d!727645 (= res!1082031 e!1623172)))

(declare-fun res!1082032 () Bool)

(assert (=> d!727645 (=> (not res!1082032) (not e!1623172))))

(assert (=> d!727645 (= res!1082032 (isDefined!4742 lt!906092))))

(assert (=> d!727645 (= lt!906092 e!1623169)))

(declare-fun c!413994 () Bool)

(assert (=> d!727645 (= c!413994 e!1623170)))

(declare-fun res!1082030 () Bool)

(assert (=> d!727645 (=> (not res!1082030) (not e!1623170))))

(assert (=> d!727645 (= res!1082030 (matchR!3582 lt!905930 (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604))))))

(assert (=> d!727645 (validRegex!3265 lt!905930)))

(assert (=> d!727645 (= (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) (++!7278 Nil!29604 (Cons!29604 (h!35024 tl!4068) Nil!29604)) (t!211403 tl!4068) tl!4068) lt!906092)))

(declare-fun b!2572010 () Bool)

(declare-fun res!1082034 () Bool)

(assert (=> b!2572010 (=> (not res!1082034) (not e!1623172))))

(assert (=> b!2572010 (= res!1082034 (matchR!3582 (regTwo!15790 r!27340) (_2!17342 (get!9318 lt!906092))))))

(declare-fun b!2572011 () Bool)

(assert (=> b!2572011 (= e!1623171 (not (isDefined!4742 lt!906092)))))

(assert (= (and d!727645 res!1082030) b!2572005))

(assert (= (and d!727645 c!413994) b!2572006))

(assert (= (and d!727645 (not c!413994)) b!2572009))

(assert (= (and b!2572009 c!413995) b!2572008))

(assert (= (and b!2572009 (not c!413995)) b!2572004))

(assert (= (and d!727645 res!1082032) b!2572003))

(assert (= (and b!2572003 res!1082033) b!2572010))

(assert (= (and b!2572010 res!1082034) b!2572007))

(assert (= (and d!727645 (not res!1082031)) b!2572011))

(declare-fun m!2908097 () Bool)

(assert (=> b!2572011 m!2908097))

(declare-fun m!2908099 () Bool)

(assert (=> b!2572005 m!2908099))

(declare-fun m!2908101 () Bool)

(assert (=> b!2572010 m!2908101))

(declare-fun m!2908103 () Bool)

(assert (=> b!2572010 m!2908103))

(assert (=> d!727645 m!2908097))

(assert (=> d!727645 m!2907139))

(declare-fun m!2908105 () Bool)

(assert (=> d!727645 m!2908105))

(assert (=> d!727645 m!2907017))

(assert (=> b!2572003 m!2908101))

(declare-fun m!2908107 () Bool)

(assert (=> b!2572003 m!2908107))

(assert (=> b!2572004 m!2907139))

(declare-fun m!2908109 () Bool)

(assert (=> b!2572004 m!2908109))

(assert (=> b!2572004 m!2908109))

(declare-fun m!2908111 () Bool)

(assert (=> b!2572004 m!2908111))

(assert (=> b!2572004 m!2907139))

(declare-fun m!2908113 () Bool)

(assert (=> b!2572004 m!2908113))

(assert (=> b!2572004 m!2908109))

(declare-fun m!2908115 () Bool)

(assert (=> b!2572004 m!2908115))

(assert (=> b!2572007 m!2908101))

(declare-fun m!2908117 () Bool)

(assert (=> b!2572007 m!2908117))

(assert (=> b!2570722 d!727645))

(declare-fun d!727647 () Bool)

(declare-fun lt!906093 () Regex!7639)

(assert (=> d!727647 (validRegex!3265 lt!906093)))

(declare-fun e!1623173 () Regex!7639)

(assert (=> d!727647 (= lt!906093 e!1623173)))

(declare-fun c!413996 () Bool)

(assert (=> d!727647 (= c!413996 ((_ is Cons!29604) (t!211403 tl!4068)))))

(assert (=> d!727647 (validRegex!3265 (derivativeStep!2208 (derivativeStep!2208 r!27340 c!14016) (h!35024 tl!4068)))))

(assert (=> d!727647 (= (derivative!334 (derivativeStep!2208 (derivativeStep!2208 r!27340 c!14016) (h!35024 tl!4068)) (t!211403 tl!4068)) lt!906093)))

(declare-fun b!2572012 () Bool)

(assert (=> b!2572012 (= e!1623173 (derivative!334 (derivativeStep!2208 (derivativeStep!2208 (derivativeStep!2208 r!27340 c!14016) (h!35024 tl!4068)) (h!35024 (t!211403 tl!4068))) (t!211403 (t!211403 tl!4068))))))

(declare-fun b!2572013 () Bool)

(assert (=> b!2572013 (= e!1623173 (derivativeStep!2208 (derivativeStep!2208 r!27340 c!14016) (h!35024 tl!4068)))))

(assert (= (and d!727647 c!413996) b!2572012))

(assert (= (and d!727647 (not c!413996)) b!2572013))

(declare-fun m!2908119 () Bool)

(assert (=> d!727647 m!2908119))

(assert (=> d!727647 m!2907321))

(declare-fun m!2908121 () Bool)

(assert (=> d!727647 m!2908121))

(assert (=> b!2572012 m!2907321))

(declare-fun m!2908123 () Bool)

(assert (=> b!2572012 m!2908123))

(assert (=> b!2572012 m!2908123))

(declare-fun m!2908125 () Bool)

(assert (=> b!2572012 m!2908125))

(assert (=> b!2570978 d!727647))

(declare-fun e!1623177 () Regex!7639)

(declare-fun call!166039 () Regex!7639)

(declare-fun b!2572014 () Bool)

(assert (=> b!2572014 (= e!1623177 (Concat!12335 call!166039 (derivativeStep!2208 r!27340 c!14016)))))

(declare-fun d!727649 () Bool)

(declare-fun lt!906094 () Regex!7639)

(assert (=> d!727649 (validRegex!3265 lt!906094)))

(declare-fun e!1623176 () Regex!7639)

(assert (=> d!727649 (= lt!906094 e!1623176)))

(declare-fun c!413997 () Bool)

(assert (=> d!727649 (= c!413997 (or ((_ is EmptyExpr!7639) (derivativeStep!2208 r!27340 c!14016)) ((_ is EmptyLang!7639) (derivativeStep!2208 r!27340 c!14016))))))

(assert (=> d!727649 (validRegex!3265 (derivativeStep!2208 r!27340 c!14016))))

(assert (=> d!727649 (= (derivativeStep!2208 (derivativeStep!2208 r!27340 c!14016) (h!35024 tl!4068)) lt!906094)))

(declare-fun c!414001 () Bool)

(declare-fun call!166038 () Regex!7639)

(declare-fun bm!166031 () Bool)

(assert (=> bm!166031 (= call!166038 (derivativeStep!2208 (ite c!414001 (regTwo!15791 (derivativeStep!2208 r!27340 c!14016)) (regTwo!15790 (derivativeStep!2208 r!27340 c!14016))) (h!35024 tl!4068)))))

(declare-fun b!2572015 () Bool)

(declare-fun e!1623175 () Regex!7639)

(assert (=> b!2572015 (= e!1623176 e!1623175)))

(declare-fun c!414000 () Bool)

(assert (=> b!2572015 (= c!414000 ((_ is ElementMatch!7639) (derivativeStep!2208 r!27340 c!14016)))))

(declare-fun b!2572016 () Bool)

(declare-fun e!1623178 () Regex!7639)

(assert (=> b!2572016 (= e!1623178 e!1623177)))

(declare-fun c!413999 () Bool)

(assert (=> b!2572016 (= c!413999 ((_ is Star!7639) (derivativeStep!2208 r!27340 c!14016)))))

(declare-fun b!2572017 () Bool)

(declare-fun c!413998 () Bool)

(assert (=> b!2572017 (= c!413998 (nullable!2556 (regOne!15790 (derivativeStep!2208 r!27340 c!14016))))))

(declare-fun e!1623174 () Regex!7639)

(assert (=> b!2572017 (= e!1623177 e!1623174)))

(declare-fun b!2572018 () Bool)

(assert (=> b!2572018 (= e!1623176 EmptyLang!7639)))

(declare-fun b!2572019 () Bool)

(assert (=> b!2572019 (= e!1623175 (ite (= (h!35024 tl!4068) (c!413611 (derivativeStep!2208 r!27340 c!14016))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!166037 () Regex!7639)

(declare-fun b!2572020 () Bool)

(assert (=> b!2572020 (= e!1623174 (Union!7639 (Concat!12335 call!166037 (regTwo!15790 (derivativeStep!2208 r!27340 c!14016))) call!166038))))

(declare-fun bm!166032 () Bool)

(assert (=> bm!166032 (= call!166037 call!166039)))

(declare-fun bm!166033 () Bool)

(declare-fun call!166036 () Regex!7639)

(assert (=> bm!166033 (= call!166039 call!166036)))

(declare-fun b!2572021 () Bool)

(assert (=> b!2572021 (= e!1623174 (Union!7639 (Concat!12335 call!166037 (regTwo!15790 (derivativeStep!2208 r!27340 c!14016))) EmptyLang!7639))))

(declare-fun b!2572022 () Bool)

(assert (=> b!2572022 (= c!414001 ((_ is Union!7639) (derivativeStep!2208 r!27340 c!14016)))))

(assert (=> b!2572022 (= e!1623175 e!1623178)))

(declare-fun b!2572023 () Bool)

(assert (=> b!2572023 (= e!1623178 (Union!7639 call!166036 call!166038))))

(declare-fun bm!166034 () Bool)

(assert (=> bm!166034 (= call!166036 (derivativeStep!2208 (ite c!414001 (regOne!15791 (derivativeStep!2208 r!27340 c!14016)) (ite c!413999 (reg!7968 (derivativeStep!2208 r!27340 c!14016)) (regOne!15790 (derivativeStep!2208 r!27340 c!14016)))) (h!35024 tl!4068)))))

(assert (= (and d!727649 c!413997) b!2572018))

(assert (= (and d!727649 (not c!413997)) b!2572015))

(assert (= (and b!2572015 c!414000) b!2572019))

(assert (= (and b!2572015 (not c!414000)) b!2572022))

(assert (= (and b!2572022 c!414001) b!2572023))

(assert (= (and b!2572022 (not c!414001)) b!2572016))

(assert (= (and b!2572016 c!413999) b!2572014))

(assert (= (and b!2572016 (not c!413999)) b!2572017))

(assert (= (and b!2572017 c!413998) b!2572020))

(assert (= (and b!2572017 (not c!413998)) b!2572021))

(assert (= (or b!2572020 b!2572021) bm!166032))

(assert (= (or b!2572014 bm!166032) bm!166033))

(assert (= (or b!2572023 b!2572020) bm!166031))

(assert (= (or b!2572023 bm!166033) bm!166034))

(declare-fun m!2908127 () Bool)

(assert (=> d!727649 m!2908127))

(assert (=> d!727649 m!2906921))

(assert (=> d!727649 m!2907319))

(declare-fun m!2908129 () Bool)

(assert (=> bm!166031 m!2908129))

(declare-fun m!2908131 () Bool)

(assert (=> b!2572017 m!2908131))

(declare-fun m!2908133 () Bool)

(assert (=> bm!166034 m!2908133))

(assert (=> b!2570978 d!727649))

(assert (=> b!2570849 d!727601))

(assert (=> b!2571059 d!727601))

(assert (=> b!2570541 d!727621))

(assert (=> b!2570541 d!727539))

(declare-fun d!727651 () Bool)

(assert (=> d!727651 (= (nullable!2556 (regOne!15790 (regOne!15790 r!27340))) (nullableFct!781 (regOne!15790 (regOne!15790 r!27340))))))

(declare-fun bs!470054 () Bool)

(assert (= bs!470054 d!727651))

(declare-fun m!2908135 () Bool)

(assert (=> bs!470054 m!2908135))

(assert (=> b!2571013 d!727651))

(assert (=> b!2570957 d!727591))

(assert (=> b!2570957 d!727569))

(declare-fun bm!166035 () Bool)

(declare-fun call!166040 () Bool)

(assert (=> bm!166035 (= call!166040 (isEmpty!17064 (tail!4119 tl!4068)))))

(declare-fun b!2572024 () Bool)

(declare-fun e!1623181 () Bool)

(assert (=> b!2572024 (= e!1623181 (nullable!2556 (derivativeStep!2208 lt!905925 (head!5844 tl!4068))))))

(declare-fun b!2572025 () Bool)

(declare-fun e!1623182 () Bool)

(assert (=> b!2572025 (= e!1623182 (= (head!5844 (tail!4119 tl!4068)) (c!413611 (derivativeStep!2208 lt!905925 (head!5844 tl!4068)))))))

(declare-fun b!2572026 () Bool)

(declare-fun res!1082040 () Bool)

(declare-fun e!1623183 () Bool)

(assert (=> b!2572026 (=> res!1082040 e!1623183)))

(assert (=> b!2572026 (= res!1082040 (not (isEmpty!17064 (tail!4119 (tail!4119 tl!4068)))))))

(declare-fun b!2572028 () Bool)

(assert (=> b!2572028 (= e!1623183 (not (= (head!5844 (tail!4119 tl!4068)) (c!413611 (derivativeStep!2208 lt!905925 (head!5844 tl!4068))))))))

(declare-fun b!2572029 () Bool)

(declare-fun res!1082042 () Bool)

(declare-fun e!1623185 () Bool)

(assert (=> b!2572029 (=> res!1082042 e!1623185)))

(assert (=> b!2572029 (= res!1082042 e!1623182)))

(declare-fun res!1082035 () Bool)

(assert (=> b!2572029 (=> (not res!1082035) (not e!1623182))))

(declare-fun lt!906095 () Bool)

(assert (=> b!2572029 (= res!1082035 lt!906095)))

(declare-fun b!2572030 () Bool)

(declare-fun res!1082036 () Bool)

(assert (=> b!2572030 (=> res!1082036 e!1623185)))

(assert (=> b!2572030 (= res!1082036 (not ((_ is ElementMatch!7639) (derivativeStep!2208 lt!905925 (head!5844 tl!4068)))))))

(declare-fun e!1623180 () Bool)

(assert (=> b!2572030 (= e!1623180 e!1623185)))

(declare-fun b!2572031 () Bool)

(assert (=> b!2572031 (= e!1623180 (not lt!906095))))

(declare-fun b!2572032 () Bool)

(declare-fun e!1623179 () Bool)

(assert (=> b!2572032 (= e!1623185 e!1623179)))

(declare-fun res!1082038 () Bool)

(assert (=> b!2572032 (=> (not res!1082038) (not e!1623179))))

(assert (=> b!2572032 (= res!1082038 (not lt!906095))))

(declare-fun b!2572033 () Bool)

(assert (=> b!2572033 (= e!1623179 e!1623183)))

(declare-fun res!1082041 () Bool)

(assert (=> b!2572033 (=> res!1082041 e!1623183)))

(assert (=> b!2572033 (= res!1082041 call!166040)))

(declare-fun b!2572027 () Bool)

(declare-fun res!1082039 () Bool)

(assert (=> b!2572027 (=> (not res!1082039) (not e!1623182))))

(assert (=> b!2572027 (= res!1082039 (not call!166040))))

(declare-fun d!727653 () Bool)

(declare-fun e!1623184 () Bool)

(assert (=> d!727653 e!1623184))

(declare-fun c!414004 () Bool)

(assert (=> d!727653 (= c!414004 ((_ is EmptyExpr!7639) (derivativeStep!2208 lt!905925 (head!5844 tl!4068))))))

(assert (=> d!727653 (= lt!906095 e!1623181)))

(declare-fun c!414002 () Bool)

(assert (=> d!727653 (= c!414002 (isEmpty!17064 (tail!4119 tl!4068)))))

(assert (=> d!727653 (validRegex!3265 (derivativeStep!2208 lt!905925 (head!5844 tl!4068)))))

(assert (=> d!727653 (= (matchR!3582 (derivativeStep!2208 lt!905925 (head!5844 tl!4068)) (tail!4119 tl!4068)) lt!906095)))

(declare-fun b!2572034 () Bool)

(assert (=> b!2572034 (= e!1623181 (matchR!3582 (derivativeStep!2208 (derivativeStep!2208 lt!905925 (head!5844 tl!4068)) (head!5844 (tail!4119 tl!4068))) (tail!4119 (tail!4119 tl!4068))))))

(declare-fun b!2572035 () Bool)

(declare-fun res!1082037 () Bool)

(assert (=> b!2572035 (=> (not res!1082037) (not e!1623182))))

(assert (=> b!2572035 (= res!1082037 (isEmpty!17064 (tail!4119 (tail!4119 tl!4068))))))

(declare-fun b!2572036 () Bool)

(assert (=> b!2572036 (= e!1623184 e!1623180)))

(declare-fun c!414003 () Bool)

(assert (=> b!2572036 (= c!414003 ((_ is EmptyLang!7639) (derivativeStep!2208 lt!905925 (head!5844 tl!4068))))))

(declare-fun b!2572037 () Bool)

(assert (=> b!2572037 (= e!1623184 (= lt!906095 call!166040))))

(assert (= (and d!727653 c!414002) b!2572024))

(assert (= (and d!727653 (not c!414002)) b!2572034))

(assert (= (and d!727653 c!414004) b!2572037))

(assert (= (and d!727653 (not c!414004)) b!2572036))

(assert (= (and b!2572036 c!414003) b!2572031))

(assert (= (and b!2572036 (not c!414003)) b!2572030))

(assert (= (and b!2572030 (not res!1082036)) b!2572029))

(assert (= (and b!2572029 res!1082035) b!2572027))

(assert (= (and b!2572027 res!1082039) b!2572035))

(assert (= (and b!2572035 res!1082037) b!2572025))

(assert (= (and b!2572029 (not res!1082042)) b!2572032))

(assert (= (and b!2572032 res!1082038) b!2572033))

(assert (= (and b!2572033 (not res!1082041)) b!2572026))

(assert (= (and b!2572026 (not res!1082040)) b!2572028))

(assert (= (or b!2572037 b!2572027 b!2572033) bm!166035))

(assert (=> b!2572025 m!2907295))

(assert (=> b!2572025 m!2907887))

(assert (=> bm!166035 m!2907295))

(assert (=> bm!166035 m!2907297))

(assert (=> b!2572035 m!2907295))

(assert (=> b!2572035 m!2907889))

(assert (=> b!2572035 m!2907889))

(assert (=> b!2572035 m!2907891))

(assert (=> b!2572034 m!2907295))

(assert (=> b!2572034 m!2907887))

(assert (=> b!2572034 m!2907351))

(assert (=> b!2572034 m!2907887))

(declare-fun m!2908137 () Bool)

(assert (=> b!2572034 m!2908137))

(assert (=> b!2572034 m!2907295))

(assert (=> b!2572034 m!2907889))

(assert (=> b!2572034 m!2908137))

(assert (=> b!2572034 m!2907889))

(declare-fun m!2908139 () Bool)

(assert (=> b!2572034 m!2908139))

(assert (=> b!2572026 m!2907295))

(assert (=> b!2572026 m!2907889))

(assert (=> b!2572026 m!2907889))

(assert (=> b!2572026 m!2907891))

(assert (=> d!727653 m!2907295))

(assert (=> d!727653 m!2907297))

(assert (=> d!727653 m!2907351))

(declare-fun m!2908141 () Bool)

(assert (=> d!727653 m!2908141))

(assert (=> b!2572024 m!2907351))

(declare-fun m!2908143 () Bool)

(assert (=> b!2572024 m!2908143))

(assert (=> b!2572028 m!2907295))

(assert (=> b!2572028 m!2907887))

(assert (=> b!2571032 d!727653))

(declare-fun b!2572038 () Bool)

(declare-fun e!1623189 () Regex!7639)

(declare-fun call!166044 () Regex!7639)

(assert (=> b!2572038 (= e!1623189 (Concat!12335 call!166044 lt!905925))))

(declare-fun d!727655 () Bool)

(declare-fun lt!906096 () Regex!7639)

(assert (=> d!727655 (validRegex!3265 lt!906096)))

(declare-fun e!1623188 () Regex!7639)

(assert (=> d!727655 (= lt!906096 e!1623188)))

(declare-fun c!414005 () Bool)

(assert (=> d!727655 (= c!414005 (or ((_ is EmptyExpr!7639) lt!905925) ((_ is EmptyLang!7639) lt!905925)))))

(assert (=> d!727655 (validRegex!3265 lt!905925)))

(assert (=> d!727655 (= (derivativeStep!2208 lt!905925 (head!5844 tl!4068)) lt!906096)))

(declare-fun c!414009 () Bool)

(declare-fun call!166043 () Regex!7639)

(declare-fun bm!166036 () Bool)

(assert (=> bm!166036 (= call!166043 (derivativeStep!2208 (ite c!414009 (regTwo!15791 lt!905925) (regTwo!15790 lt!905925)) (head!5844 tl!4068)))))

(declare-fun b!2572039 () Bool)

(declare-fun e!1623187 () Regex!7639)

(assert (=> b!2572039 (= e!1623188 e!1623187)))

(declare-fun c!414008 () Bool)

(assert (=> b!2572039 (= c!414008 ((_ is ElementMatch!7639) lt!905925))))

(declare-fun b!2572040 () Bool)

(declare-fun e!1623190 () Regex!7639)

(assert (=> b!2572040 (= e!1623190 e!1623189)))

(declare-fun c!414007 () Bool)

(assert (=> b!2572040 (= c!414007 ((_ is Star!7639) lt!905925))))

(declare-fun b!2572041 () Bool)

(declare-fun c!414006 () Bool)

(assert (=> b!2572041 (= c!414006 (nullable!2556 (regOne!15790 lt!905925)))))

(declare-fun e!1623186 () Regex!7639)

(assert (=> b!2572041 (= e!1623189 e!1623186)))

(declare-fun b!2572042 () Bool)

(assert (=> b!2572042 (= e!1623188 EmptyLang!7639)))

(declare-fun b!2572043 () Bool)

(assert (=> b!2572043 (= e!1623187 (ite (= (head!5844 tl!4068) (c!413611 lt!905925)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2572044 () Bool)

(declare-fun call!166042 () Regex!7639)

(assert (=> b!2572044 (= e!1623186 (Union!7639 (Concat!12335 call!166042 (regTwo!15790 lt!905925)) call!166043))))

(declare-fun bm!166037 () Bool)

(assert (=> bm!166037 (= call!166042 call!166044)))

(declare-fun bm!166038 () Bool)

(declare-fun call!166041 () Regex!7639)

(assert (=> bm!166038 (= call!166044 call!166041)))

(declare-fun b!2572045 () Bool)

(assert (=> b!2572045 (= e!1623186 (Union!7639 (Concat!12335 call!166042 (regTwo!15790 lt!905925)) EmptyLang!7639))))

(declare-fun b!2572046 () Bool)

(assert (=> b!2572046 (= c!414009 ((_ is Union!7639) lt!905925))))

(assert (=> b!2572046 (= e!1623187 e!1623190)))

(declare-fun b!2572047 () Bool)

(assert (=> b!2572047 (= e!1623190 (Union!7639 call!166041 call!166043))))

(declare-fun bm!166039 () Bool)

(assert (=> bm!166039 (= call!166041 (derivativeStep!2208 (ite c!414009 (regOne!15791 lt!905925) (ite c!414007 (reg!7968 lt!905925) (regOne!15790 lt!905925))) (head!5844 tl!4068)))))

(assert (= (and d!727655 c!414005) b!2572042))

(assert (= (and d!727655 (not c!414005)) b!2572039))

(assert (= (and b!2572039 c!414008) b!2572043))

(assert (= (and b!2572039 (not c!414008)) b!2572046))

(assert (= (and b!2572046 c!414009) b!2572047))

(assert (= (and b!2572046 (not c!414009)) b!2572040))

(assert (= (and b!2572040 c!414007) b!2572038))

(assert (= (and b!2572040 (not c!414007)) b!2572041))

(assert (= (and b!2572041 c!414006) b!2572044))

(assert (= (and b!2572041 (not c!414006)) b!2572045))

(assert (= (or b!2572044 b!2572045) bm!166037))

(assert (= (or b!2572038 bm!166037) bm!166038))

(assert (= (or b!2572047 b!2572044) bm!166036))

(assert (= (or b!2572047 bm!166038) bm!166039))

(declare-fun m!2908145 () Bool)

(assert (=> d!727655 m!2908145))

(assert (=> d!727655 m!2907355))

(assert (=> bm!166036 m!2907291))

(declare-fun m!2908147 () Bool)

(assert (=> bm!166036 m!2908147))

(declare-fun m!2908149 () Bool)

(assert (=> b!2572041 m!2908149))

(assert (=> bm!166039 m!2907291))

(declare-fun m!2908151 () Bool)

(assert (=> bm!166039 m!2908151))

(assert (=> b!2571032 d!727655))

(assert (=> b!2571032 d!727567))

(assert (=> b!2571032 d!727569))

(assert (=> b!2570769 d!727613))

(declare-fun d!727657 () Bool)

(assert (=> d!727657 (= (isEmpty!17065 lt!905924) (not ((_ is Some!5919) lt!905924)))))

(assert (=> d!727243 d!727657))

(assert (=> b!2571047 d!727591))

(assert (=> b!2571047 d!727569))

(declare-fun d!727659 () Bool)

(declare-fun c!414012 () Bool)

(assert (=> d!727659 (= c!414012 ((_ is Nil!29604) lt!905942))))

(declare-fun e!1623193 () (InoxSet C!15436))

(assert (=> d!727659 (= (content!4083 lt!905942) e!1623193)))

(declare-fun b!2572052 () Bool)

(assert (=> b!2572052 (= e!1623193 ((as const (Array C!15436 Bool)) false))))

(declare-fun b!2572053 () Bool)

(assert (=> b!2572053 (= e!1623193 ((_ map or) (store ((as const (Array C!15436 Bool)) false) (h!35024 lt!905942) true) (content!4083 (t!211403 lt!905942))))))

(assert (= (and d!727659 c!414012) b!2572052))

(assert (= (and d!727659 (not c!414012)) b!2572053))

(declare-fun m!2908153 () Bool)

(assert (=> b!2572053 m!2908153))

(declare-fun m!2908155 () Bool)

(assert (=> b!2572053 m!2908155))

(assert (=> d!727231 d!727659))

(declare-fun d!727661 () Bool)

(declare-fun c!414013 () Bool)

(assert (=> d!727661 (= c!414013 ((_ is Nil!29604) (_1!17342 lt!905927)))))

(declare-fun e!1623194 () (InoxSet C!15436))

(assert (=> d!727661 (= (content!4083 (_1!17342 lt!905927)) e!1623194)))

(declare-fun b!2572054 () Bool)

(assert (=> b!2572054 (= e!1623194 ((as const (Array C!15436 Bool)) false))))

(declare-fun b!2572055 () Bool)

(assert (=> b!2572055 (= e!1623194 ((_ map or) (store ((as const (Array C!15436 Bool)) false) (h!35024 (_1!17342 lt!905927)) true) (content!4083 (t!211403 (_1!17342 lt!905927)))))))

(assert (= (and d!727661 c!414013) b!2572054))

(assert (= (and d!727661 (not c!414013)) b!2572055))

(declare-fun m!2908157 () Bool)

(assert (=> b!2572055 m!2908157))

(assert (=> b!2572055 m!2907955))

(assert (=> d!727231 d!727661))

(declare-fun d!727663 () Bool)

(declare-fun c!414014 () Bool)

(assert (=> d!727663 (= c!414014 ((_ is Nil!29604) (_2!17342 lt!905927)))))

(declare-fun e!1623195 () (InoxSet C!15436))

(assert (=> d!727663 (= (content!4083 (_2!17342 lt!905927)) e!1623195)))

(declare-fun b!2572056 () Bool)

(assert (=> b!2572056 (= e!1623195 ((as const (Array C!15436 Bool)) false))))

(declare-fun b!2572057 () Bool)

(assert (=> b!2572057 (= e!1623195 ((_ map or) (store ((as const (Array C!15436 Bool)) false) (h!35024 (_2!17342 lt!905927)) true) (content!4083 (t!211403 (_2!17342 lt!905927)))))))

(assert (= (and d!727663 c!414014) b!2572056))

(assert (= (and d!727663 (not c!414014)) b!2572057))

(declare-fun m!2908159 () Bool)

(assert (=> b!2572057 m!2908159))

(declare-fun m!2908161 () Bool)

(assert (=> b!2572057 m!2908161))

(assert (=> d!727231 d!727663))

(assert (=> b!2570758 d!727585))

(declare-fun bm!166040 () Bool)

(declare-fun c!414015 () Bool)

(declare-fun call!166046 () Bool)

(declare-fun c!414016 () Bool)

(assert (=> bm!166040 (= call!166046 (validRegex!3265 (ite c!414015 (reg!7968 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) (ite c!414016 (regTwo!15791 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) (regOne!15790 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))))))))

(declare-fun d!727665 () Bool)

(declare-fun res!1082043 () Bool)

(declare-fun e!1623198 () Bool)

(assert (=> d!727665 (=> res!1082043 e!1623198)))

(assert (=> d!727665 (= res!1082043 ((_ is ElementMatch!7639) (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(assert (=> d!727665 (= (validRegex!3265 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) e!1623198)))

(declare-fun b!2572058 () Bool)

(declare-fun e!1623197 () Bool)

(declare-fun e!1623200 () Bool)

(assert (=> b!2572058 (= e!1623197 e!1623200)))

(declare-fun res!1082045 () Bool)

(assert (=> b!2572058 (= res!1082045 (not (nullable!2556 (reg!7968 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))))

(assert (=> b!2572058 (=> (not res!1082045) (not e!1623200))))

(declare-fun b!2572059 () Bool)

(declare-fun e!1623196 () Bool)

(declare-fun e!1623202 () Bool)

(assert (=> b!2572059 (= e!1623196 e!1623202)))

(declare-fun res!1082044 () Bool)

(assert (=> b!2572059 (=> (not res!1082044) (not e!1623202))))

(declare-fun call!166045 () Bool)

(assert (=> b!2572059 (= res!1082044 call!166045)))

(declare-fun b!2572060 () Bool)

(declare-fun call!166047 () Bool)

(assert (=> b!2572060 (= e!1623202 call!166047)))

(declare-fun b!2572061 () Bool)

(declare-fun res!1082047 () Bool)

(declare-fun e!1623199 () Bool)

(assert (=> b!2572061 (=> (not res!1082047) (not e!1623199))))

(assert (=> b!2572061 (= res!1082047 call!166047)))

(declare-fun e!1623201 () Bool)

(assert (=> b!2572061 (= e!1623201 e!1623199)))

(declare-fun b!2572062 () Bool)

(assert (=> b!2572062 (= e!1623199 call!166045)))

(declare-fun b!2572063 () Bool)

(assert (=> b!2572063 (= e!1623197 e!1623201)))

(assert (=> b!2572063 (= c!414016 ((_ is Union!7639) (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(declare-fun b!2572064 () Bool)

(assert (=> b!2572064 (= e!1623200 call!166046)))

(declare-fun bm!166041 () Bool)

(assert (=> bm!166041 (= call!166047 (validRegex!3265 (ite c!414016 (regOne!15791 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) (regTwo!15790 (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))))

(declare-fun b!2572065 () Bool)

(assert (=> b!2572065 (= e!1623198 e!1623197)))

(assert (=> b!2572065 (= c!414015 ((_ is Star!7639) (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(declare-fun b!2572066 () Bool)

(declare-fun res!1082046 () Bool)

(assert (=> b!2572066 (=> res!1082046 e!1623196)))

(assert (=> b!2572066 (= res!1082046 (not ((_ is Concat!12335) (ite c!413700 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))))))

(assert (=> b!2572066 (= e!1623201 e!1623196)))

(declare-fun bm!166042 () Bool)

(assert (=> bm!166042 (= call!166045 call!166046)))

(assert (= (and d!727665 (not res!1082043)) b!2572065))

(assert (= (and b!2572065 c!414015) b!2572058))

(assert (= (and b!2572065 (not c!414015)) b!2572063))

(assert (= (and b!2572058 res!1082045) b!2572064))

(assert (= (and b!2572063 c!414016) b!2572061))

(assert (= (and b!2572063 (not c!414016)) b!2572066))

(assert (= (and b!2572061 res!1082047) b!2572062))

(assert (= (and b!2572066 (not res!1082046)) b!2572059))

(assert (= (and b!2572059 res!1082044) b!2572060))

(assert (= (or b!2572061 b!2572060) bm!166041))

(assert (= (or b!2572062 b!2572059) bm!166042))

(assert (= (or b!2572064 bm!166042) bm!166040))

(declare-fun m!2908163 () Bool)

(assert (=> bm!166040 m!2908163))

(declare-fun m!2908165 () Bool)

(assert (=> b!2572058 m!2908165))

(declare-fun m!2908167 () Bool)

(assert (=> bm!166041 m!2908167))

(assert (=> bm!165810 d!727665))

(declare-fun d!727667 () Bool)

(declare-fun lt!906097 () Regex!7639)

(assert (=> d!727667 (validRegex!3265 lt!906097)))

(declare-fun e!1623203 () Regex!7639)

(assert (=> d!727667 (= lt!906097 e!1623203)))

(declare-fun c!414017 () Bool)

(assert (=> d!727667 (= c!414017 ((_ is Cons!29604) (t!211403 (_1!17342 lt!905927))))))

(assert (=> d!727667 (validRegex!3265 (derivativeStep!2208 lt!905930 (h!35024 (_1!17342 lt!905927))))))

(assert (=> d!727667 (= (derivative!334 (derivativeStep!2208 lt!905930 (h!35024 (_1!17342 lt!905927))) (t!211403 (_1!17342 lt!905927))) lt!906097)))

(declare-fun b!2572067 () Bool)

(assert (=> b!2572067 (= e!1623203 (derivative!334 (derivativeStep!2208 (derivativeStep!2208 lt!905930 (h!35024 (_1!17342 lt!905927))) (h!35024 (t!211403 (_1!17342 lt!905927)))) (t!211403 (t!211403 (_1!17342 lt!905927)))))))

(declare-fun b!2572068 () Bool)

(assert (=> b!2572068 (= e!1623203 (derivativeStep!2208 lt!905930 (h!35024 (_1!17342 lt!905927))))))

(assert (= (and d!727667 c!414017) b!2572067))

(assert (= (and d!727667 (not c!414017)) b!2572068))

(declare-fun m!2908169 () Bool)

(assert (=> d!727667 m!2908169))

(assert (=> d!727667 m!2907283))

(declare-fun m!2908171 () Bool)

(assert (=> d!727667 m!2908171))

(assert (=> b!2572067 m!2907283))

(declare-fun m!2908173 () Bool)

(assert (=> b!2572067 m!2908173))

(assert (=> b!2572067 m!2908173))

(declare-fun m!2908175 () Bool)

(assert (=> b!2572067 m!2908175))

(assert (=> b!2570932 d!727667))

(declare-fun b!2572069 () Bool)

(declare-fun e!1623207 () Regex!7639)

(declare-fun call!166051 () Regex!7639)

(assert (=> b!2572069 (= e!1623207 (Concat!12335 call!166051 lt!905930))))

(declare-fun d!727669 () Bool)

(declare-fun lt!906098 () Regex!7639)

(assert (=> d!727669 (validRegex!3265 lt!906098)))

(declare-fun e!1623206 () Regex!7639)

(assert (=> d!727669 (= lt!906098 e!1623206)))

(declare-fun c!414018 () Bool)

(assert (=> d!727669 (= c!414018 (or ((_ is EmptyExpr!7639) lt!905930) ((_ is EmptyLang!7639) lt!905930)))))

(assert (=> d!727669 (validRegex!3265 lt!905930)))

(assert (=> d!727669 (= (derivativeStep!2208 lt!905930 (h!35024 (_1!17342 lt!905927))) lt!906098)))

(declare-fun c!414022 () Bool)

(declare-fun call!166050 () Regex!7639)

(declare-fun bm!166043 () Bool)

(assert (=> bm!166043 (= call!166050 (derivativeStep!2208 (ite c!414022 (regTwo!15791 lt!905930) (regTwo!15790 lt!905930)) (h!35024 (_1!17342 lt!905927))))))

(declare-fun b!2572070 () Bool)

(declare-fun e!1623205 () Regex!7639)

(assert (=> b!2572070 (= e!1623206 e!1623205)))

(declare-fun c!414021 () Bool)

(assert (=> b!2572070 (= c!414021 ((_ is ElementMatch!7639) lt!905930))))

(declare-fun b!2572071 () Bool)

(declare-fun e!1623208 () Regex!7639)

(assert (=> b!2572071 (= e!1623208 e!1623207)))

(declare-fun c!414020 () Bool)

(assert (=> b!2572071 (= c!414020 ((_ is Star!7639) lt!905930))))

(declare-fun b!2572072 () Bool)

(declare-fun c!414019 () Bool)

(assert (=> b!2572072 (= c!414019 (nullable!2556 (regOne!15790 lt!905930)))))

(declare-fun e!1623204 () Regex!7639)

(assert (=> b!2572072 (= e!1623207 e!1623204)))

(declare-fun b!2572073 () Bool)

(assert (=> b!2572073 (= e!1623206 EmptyLang!7639)))

(declare-fun b!2572074 () Bool)

(assert (=> b!2572074 (= e!1623205 (ite (= (h!35024 (_1!17342 lt!905927)) (c!413611 lt!905930)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2572075 () Bool)

(declare-fun call!166049 () Regex!7639)

(assert (=> b!2572075 (= e!1623204 (Union!7639 (Concat!12335 call!166049 (regTwo!15790 lt!905930)) call!166050))))

(declare-fun bm!166044 () Bool)

(assert (=> bm!166044 (= call!166049 call!166051)))

(declare-fun bm!166045 () Bool)

(declare-fun call!166048 () Regex!7639)

(assert (=> bm!166045 (= call!166051 call!166048)))

(declare-fun b!2572076 () Bool)

(assert (=> b!2572076 (= e!1623204 (Union!7639 (Concat!12335 call!166049 (regTwo!15790 lt!905930)) EmptyLang!7639))))

(declare-fun b!2572077 () Bool)

(assert (=> b!2572077 (= c!414022 ((_ is Union!7639) lt!905930))))

(assert (=> b!2572077 (= e!1623205 e!1623208)))

(declare-fun b!2572078 () Bool)

(assert (=> b!2572078 (= e!1623208 (Union!7639 call!166048 call!166050))))

(declare-fun bm!166046 () Bool)

(assert (=> bm!166046 (= call!166048 (derivativeStep!2208 (ite c!414022 (regOne!15791 lt!905930) (ite c!414020 (reg!7968 lt!905930) (regOne!15790 lt!905930))) (h!35024 (_1!17342 lt!905927))))))

(assert (= (and d!727669 c!414018) b!2572073))

(assert (= (and d!727669 (not c!414018)) b!2572070))

(assert (= (and b!2572070 c!414021) b!2572074))

(assert (= (and b!2572070 (not c!414021)) b!2572077))

(assert (= (and b!2572077 c!414022) b!2572078))

(assert (= (and b!2572077 (not c!414022)) b!2572071))

(assert (= (and b!2572071 c!414020) b!2572069))

(assert (= (and b!2572071 (not c!414020)) b!2572072))

(assert (= (and b!2572072 c!414019) b!2572075))

(assert (= (and b!2572072 (not c!414019)) b!2572076))

(assert (= (or b!2572075 b!2572076) bm!166044))

(assert (= (or b!2572069 bm!166044) bm!166045))

(assert (= (or b!2572078 b!2572075) bm!166043))

(assert (= (or b!2572078 bm!166045) bm!166046))

(declare-fun m!2908177 () Bool)

(assert (=> d!727669 m!2908177))

(assert (=> d!727669 m!2907017))

(declare-fun m!2908179 () Bool)

(assert (=> bm!166043 m!2908179))

(assert (=> b!2572072 m!2908029))

(declare-fun m!2908181 () Bool)

(assert (=> bm!166046 m!2908181))

(assert (=> b!2570932 d!727669))

(declare-fun d!727671 () Bool)

(declare-fun lt!906099 () Regex!7639)

(assert (=> d!727671 (validRegex!3265 lt!906099)))

(declare-fun e!1623209 () Regex!7639)

(assert (=> d!727671 (= lt!906099 e!1623209)))

(declare-fun c!414023 () Bool)

(assert (=> d!727671 (= c!414023 ((_ is Cons!29604) (t!211403 tl!4068)))))

(assert (=> d!727671 (validRegex!3265 (derivativeStep!2208 EmptyLang!7639 (h!35024 tl!4068)))))

(assert (=> d!727671 (= (derivative!334 (derivativeStep!2208 EmptyLang!7639 (h!35024 tl!4068)) (t!211403 tl!4068)) lt!906099)))

(declare-fun b!2572079 () Bool)

(assert (=> b!2572079 (= e!1623209 (derivative!334 (derivativeStep!2208 (derivativeStep!2208 EmptyLang!7639 (h!35024 tl!4068)) (h!35024 (t!211403 tl!4068))) (t!211403 (t!211403 tl!4068))))))

(declare-fun b!2572080 () Bool)

(assert (=> b!2572080 (= e!1623209 (derivativeStep!2208 EmptyLang!7639 (h!35024 tl!4068)))))

(assert (= (and d!727671 c!414023) b!2572079))

(assert (= (and d!727671 (not c!414023)) b!2572080))

(declare-fun m!2908183 () Bool)

(assert (=> d!727671 m!2908183))

(assert (=> d!727671 m!2907369))

(declare-fun m!2908185 () Bool)

(assert (=> d!727671 m!2908185))

(assert (=> b!2572079 m!2907369))

(declare-fun m!2908187 () Bool)

(assert (=> b!2572079 m!2908187))

(assert (=> b!2572079 m!2908187))

(declare-fun m!2908189 () Bool)

(assert (=> b!2572079 m!2908189))

(assert (=> b!2571056 d!727671))

(declare-fun b!2572081 () Bool)

(declare-fun e!1623213 () Regex!7639)

(declare-fun call!166055 () Regex!7639)

(assert (=> b!2572081 (= e!1623213 (Concat!12335 call!166055 EmptyLang!7639))))

(declare-fun d!727673 () Bool)

(declare-fun lt!906100 () Regex!7639)

(assert (=> d!727673 (validRegex!3265 lt!906100)))

(declare-fun e!1623212 () Regex!7639)

(assert (=> d!727673 (= lt!906100 e!1623212)))

(declare-fun c!414024 () Bool)

(assert (=> d!727673 (= c!414024 (or ((_ is EmptyExpr!7639) EmptyLang!7639) ((_ is EmptyLang!7639) EmptyLang!7639)))))

(assert (=> d!727673 (validRegex!3265 EmptyLang!7639)))

(assert (=> d!727673 (= (derivativeStep!2208 EmptyLang!7639 (h!35024 tl!4068)) lt!906100)))

(declare-fun bm!166047 () Bool)

(declare-fun call!166054 () Regex!7639)

(declare-fun c!414028 () Bool)

(assert (=> bm!166047 (= call!166054 (derivativeStep!2208 (ite c!414028 (regTwo!15791 EmptyLang!7639) (regTwo!15790 EmptyLang!7639)) (h!35024 tl!4068)))))

(declare-fun b!2572082 () Bool)

(declare-fun e!1623211 () Regex!7639)

(assert (=> b!2572082 (= e!1623212 e!1623211)))

(declare-fun c!414027 () Bool)

(assert (=> b!2572082 (= c!414027 ((_ is ElementMatch!7639) EmptyLang!7639))))

(declare-fun b!2572083 () Bool)

(declare-fun e!1623214 () Regex!7639)

(assert (=> b!2572083 (= e!1623214 e!1623213)))

(declare-fun c!414026 () Bool)

(assert (=> b!2572083 (= c!414026 ((_ is Star!7639) EmptyLang!7639))))

(declare-fun b!2572084 () Bool)

(declare-fun c!414025 () Bool)

(assert (=> b!2572084 (= c!414025 (nullable!2556 (regOne!15790 EmptyLang!7639)))))

(declare-fun e!1623210 () Regex!7639)

(assert (=> b!2572084 (= e!1623213 e!1623210)))

(declare-fun b!2572085 () Bool)

(assert (=> b!2572085 (= e!1623212 EmptyLang!7639)))

(declare-fun b!2572086 () Bool)

(assert (=> b!2572086 (= e!1623211 (ite (= (h!35024 tl!4068) (c!413611 EmptyLang!7639)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2572087 () Bool)

(declare-fun call!166053 () Regex!7639)

(assert (=> b!2572087 (= e!1623210 (Union!7639 (Concat!12335 call!166053 (regTwo!15790 EmptyLang!7639)) call!166054))))

(declare-fun bm!166048 () Bool)

(assert (=> bm!166048 (= call!166053 call!166055)))

(declare-fun bm!166049 () Bool)

(declare-fun call!166052 () Regex!7639)

(assert (=> bm!166049 (= call!166055 call!166052)))

(declare-fun b!2572088 () Bool)

(assert (=> b!2572088 (= e!1623210 (Union!7639 (Concat!12335 call!166053 (regTwo!15790 EmptyLang!7639)) EmptyLang!7639))))

(declare-fun b!2572089 () Bool)

(assert (=> b!2572089 (= c!414028 ((_ is Union!7639) EmptyLang!7639))))

(assert (=> b!2572089 (= e!1623211 e!1623214)))

(declare-fun b!2572090 () Bool)

(assert (=> b!2572090 (= e!1623214 (Union!7639 call!166052 call!166054))))

(declare-fun bm!166050 () Bool)

(assert (=> bm!166050 (= call!166052 (derivativeStep!2208 (ite c!414028 (regOne!15791 EmptyLang!7639) (ite c!414026 (reg!7968 EmptyLang!7639) (regOne!15790 EmptyLang!7639))) (h!35024 tl!4068)))))

(assert (= (and d!727673 c!414024) b!2572085))

(assert (= (and d!727673 (not c!414024)) b!2572082))

(assert (= (and b!2572082 c!414027) b!2572086))

(assert (= (and b!2572082 (not c!414027)) b!2572089))

(assert (= (and b!2572089 c!414028) b!2572090))

(assert (= (and b!2572089 (not c!414028)) b!2572083))

(assert (= (and b!2572083 c!414026) b!2572081))

(assert (= (and b!2572083 (not c!414026)) b!2572084))

(assert (= (and b!2572084 c!414025) b!2572087))

(assert (= (and b!2572084 (not c!414025)) b!2572088))

(assert (= (or b!2572087 b!2572088) bm!166048))

(assert (= (or b!2572081 bm!166048) bm!166049))

(assert (= (or b!2572090 b!2572087) bm!166047))

(assert (= (or b!2572090 bm!166049) bm!166050))

(declare-fun m!2908191 () Bool)

(assert (=> d!727673 m!2908191))

(assert (=> d!727673 m!2907303))

(declare-fun m!2908193 () Bool)

(assert (=> bm!166047 m!2908193))

(assert (=> b!2572084 m!2907905))

(declare-fun m!2908195 () Bool)

(assert (=> bm!166050 m!2908195))

(assert (=> b!2571056 d!727673))

(declare-fun d!727675 () Bool)

(assert (=> d!727675 (= (isEmpty!17064 (tail!4119 (_1!17342 lt!905927))) ((_ is Nil!29604) (tail!4119 (_1!17342 lt!905927))))))

(assert (=> b!2570779 d!727675))

(assert (=> b!2570779 d!727619))

(declare-fun c!414030 () Bool)

(declare-fun call!166057 () Bool)

(declare-fun c!414029 () Bool)

(declare-fun bm!166051 () Bool)

(assert (=> bm!166051 (= call!166057 (validRegex!3265 (ite c!414029 (reg!7968 lt!906010) (ite c!414030 (regTwo!15791 lt!906010) (regOne!15790 lt!906010)))))))

(declare-fun d!727677 () Bool)

(declare-fun res!1082048 () Bool)

(declare-fun e!1623217 () Bool)

(assert (=> d!727677 (=> res!1082048 e!1623217)))

(assert (=> d!727677 (= res!1082048 ((_ is ElementMatch!7639) lt!906010))))

(assert (=> d!727677 (= (validRegex!3265 lt!906010) e!1623217)))

(declare-fun b!2572091 () Bool)

(declare-fun e!1623216 () Bool)

(declare-fun e!1623219 () Bool)

(assert (=> b!2572091 (= e!1623216 e!1623219)))

(declare-fun res!1082050 () Bool)

(assert (=> b!2572091 (= res!1082050 (not (nullable!2556 (reg!7968 lt!906010))))))

(assert (=> b!2572091 (=> (not res!1082050) (not e!1623219))))

(declare-fun b!2572092 () Bool)

(declare-fun e!1623215 () Bool)

(declare-fun e!1623221 () Bool)

(assert (=> b!2572092 (= e!1623215 e!1623221)))

(declare-fun res!1082049 () Bool)

(assert (=> b!2572092 (=> (not res!1082049) (not e!1623221))))

(declare-fun call!166056 () Bool)

(assert (=> b!2572092 (= res!1082049 call!166056)))

(declare-fun b!2572093 () Bool)

(declare-fun call!166058 () Bool)

(assert (=> b!2572093 (= e!1623221 call!166058)))

(declare-fun b!2572094 () Bool)

(declare-fun res!1082052 () Bool)

(declare-fun e!1623218 () Bool)

(assert (=> b!2572094 (=> (not res!1082052) (not e!1623218))))

(assert (=> b!2572094 (= res!1082052 call!166058)))

(declare-fun e!1623220 () Bool)

(assert (=> b!2572094 (= e!1623220 e!1623218)))

(declare-fun b!2572095 () Bool)

(assert (=> b!2572095 (= e!1623218 call!166056)))

(declare-fun b!2572096 () Bool)

(assert (=> b!2572096 (= e!1623216 e!1623220)))

(assert (=> b!2572096 (= c!414030 ((_ is Union!7639) lt!906010))))

(declare-fun b!2572097 () Bool)

(assert (=> b!2572097 (= e!1623219 call!166057)))

(declare-fun bm!166052 () Bool)

(assert (=> bm!166052 (= call!166058 (validRegex!3265 (ite c!414030 (regOne!15791 lt!906010) (regTwo!15790 lt!906010))))))

(declare-fun b!2572098 () Bool)

(assert (=> b!2572098 (= e!1623217 e!1623216)))

(assert (=> b!2572098 (= c!414029 ((_ is Star!7639) lt!906010))))

(declare-fun b!2572099 () Bool)

(declare-fun res!1082051 () Bool)

(assert (=> b!2572099 (=> res!1082051 e!1623215)))

(assert (=> b!2572099 (= res!1082051 (not ((_ is Concat!12335) lt!906010)))))

(assert (=> b!2572099 (= e!1623220 e!1623215)))

(declare-fun bm!166053 () Bool)

(assert (=> bm!166053 (= call!166056 call!166057)))

(assert (= (and d!727677 (not res!1082048)) b!2572098))

(assert (= (and b!2572098 c!414029) b!2572091))

(assert (= (and b!2572098 (not c!414029)) b!2572096))

(assert (= (and b!2572091 res!1082050) b!2572097))

(assert (= (and b!2572096 c!414030) b!2572094))

(assert (= (and b!2572096 (not c!414030)) b!2572099))

(assert (= (and b!2572094 res!1082052) b!2572095))

(assert (= (and b!2572099 (not res!1082051)) b!2572092))

(assert (= (and b!2572092 res!1082049) b!2572093))

(assert (= (or b!2572094 b!2572093) bm!166052))

(assert (= (or b!2572095 b!2572092) bm!166053))

(assert (= (or b!2572097 bm!166053) bm!166051))

(declare-fun m!2908197 () Bool)

(assert (=> bm!166051 m!2908197))

(declare-fun m!2908199 () Bool)

(assert (=> b!2572091 m!2908199))

(declare-fun m!2908201 () Bool)

(assert (=> bm!166052 m!2908201))

(assert (=> d!727323 d!727677))

(assert (=> d!727323 d!727633))

(declare-fun d!727679 () Bool)

(declare-fun lt!906101 () Regex!7639)

(assert (=> d!727679 (validRegex!3265 lt!906101)))

(declare-fun e!1623222 () Regex!7639)

(assert (=> d!727679 (= lt!906101 e!1623222)))

(declare-fun c!414031 () Bool)

(assert (=> d!727679 (= c!414031 ((_ is Cons!29604) (t!211403 tl!4068)))))

(assert (=> d!727679 (validRegex!3265 (derivativeStep!2208 lt!905919 (h!35024 tl!4068)))))

(assert (=> d!727679 (= (derivative!334 (derivativeStep!2208 lt!905919 (h!35024 tl!4068)) (t!211403 tl!4068)) lt!906101)))

(declare-fun b!2572100 () Bool)

(assert (=> b!2572100 (= e!1623222 (derivative!334 (derivativeStep!2208 (derivativeStep!2208 lt!905919 (h!35024 tl!4068)) (h!35024 (t!211403 tl!4068))) (t!211403 (t!211403 tl!4068))))))

(declare-fun b!2572101 () Bool)

(assert (=> b!2572101 (= e!1623222 (derivativeStep!2208 lt!905919 (h!35024 tl!4068)))))

(assert (= (and d!727679 c!414031) b!2572100))

(assert (= (and d!727679 (not c!414031)) b!2572101))

(declare-fun m!2908203 () Bool)

(assert (=> d!727679 m!2908203))

(assert (=> d!727679 m!2907345))

(declare-fun m!2908205 () Bool)

(assert (=> d!727679 m!2908205))

(assert (=> b!2572100 m!2907345))

(declare-fun m!2908207 () Bool)

(assert (=> b!2572100 m!2908207))

(assert (=> b!2572100 m!2908207))

(declare-fun m!2908209 () Bool)

(assert (=> b!2572100 m!2908209))

(assert (=> b!2571020 d!727679))

(declare-fun b!2572102 () Bool)

(declare-fun e!1623226 () Regex!7639)

(declare-fun call!166062 () Regex!7639)

(assert (=> b!2572102 (= e!1623226 (Concat!12335 call!166062 lt!905919))))

(declare-fun d!727681 () Bool)

(declare-fun lt!906102 () Regex!7639)

(assert (=> d!727681 (validRegex!3265 lt!906102)))

(declare-fun e!1623225 () Regex!7639)

(assert (=> d!727681 (= lt!906102 e!1623225)))

(declare-fun c!414032 () Bool)

(assert (=> d!727681 (= c!414032 (or ((_ is EmptyExpr!7639) lt!905919) ((_ is EmptyLang!7639) lt!905919)))))

(assert (=> d!727681 (validRegex!3265 lt!905919)))

(assert (=> d!727681 (= (derivativeStep!2208 lt!905919 (h!35024 tl!4068)) lt!906102)))

(declare-fun bm!166054 () Bool)

(declare-fun call!166061 () Regex!7639)

(declare-fun c!414036 () Bool)

(assert (=> bm!166054 (= call!166061 (derivativeStep!2208 (ite c!414036 (regTwo!15791 lt!905919) (regTwo!15790 lt!905919)) (h!35024 tl!4068)))))

(declare-fun b!2572103 () Bool)

(declare-fun e!1623224 () Regex!7639)

(assert (=> b!2572103 (= e!1623225 e!1623224)))

(declare-fun c!414035 () Bool)

(assert (=> b!2572103 (= c!414035 ((_ is ElementMatch!7639) lt!905919))))

(declare-fun b!2572104 () Bool)

(declare-fun e!1623227 () Regex!7639)

(assert (=> b!2572104 (= e!1623227 e!1623226)))

(declare-fun c!414034 () Bool)

(assert (=> b!2572104 (= c!414034 ((_ is Star!7639) lt!905919))))

(declare-fun b!2572105 () Bool)

(declare-fun c!414033 () Bool)

(assert (=> b!2572105 (= c!414033 (nullable!2556 (regOne!15790 lt!905919)))))

(declare-fun e!1623223 () Regex!7639)

(assert (=> b!2572105 (= e!1623226 e!1623223)))

(declare-fun b!2572106 () Bool)

(assert (=> b!2572106 (= e!1623225 EmptyLang!7639)))

(declare-fun b!2572107 () Bool)

(assert (=> b!2572107 (= e!1623224 (ite (= (h!35024 tl!4068) (c!413611 lt!905919)) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2572108 () Bool)

(declare-fun call!166060 () Regex!7639)

(assert (=> b!2572108 (= e!1623223 (Union!7639 (Concat!12335 call!166060 (regTwo!15790 lt!905919)) call!166061))))

(declare-fun bm!166055 () Bool)

(assert (=> bm!166055 (= call!166060 call!166062)))

(declare-fun bm!166056 () Bool)

(declare-fun call!166059 () Regex!7639)

(assert (=> bm!166056 (= call!166062 call!166059)))

(declare-fun b!2572109 () Bool)

(assert (=> b!2572109 (= e!1623223 (Union!7639 (Concat!12335 call!166060 (regTwo!15790 lt!905919)) EmptyLang!7639))))

(declare-fun b!2572110 () Bool)

(assert (=> b!2572110 (= c!414036 ((_ is Union!7639) lt!905919))))

(assert (=> b!2572110 (= e!1623224 e!1623227)))

(declare-fun b!2572111 () Bool)

(assert (=> b!2572111 (= e!1623227 (Union!7639 call!166059 call!166061))))

(declare-fun bm!166057 () Bool)

(assert (=> bm!166057 (= call!166059 (derivativeStep!2208 (ite c!414036 (regOne!15791 lt!905919) (ite c!414034 (reg!7968 lt!905919) (regOne!15790 lt!905919))) (h!35024 tl!4068)))))

(assert (= (and d!727681 c!414032) b!2572106))

(assert (= (and d!727681 (not c!414032)) b!2572103))

(assert (= (and b!2572103 c!414035) b!2572107))

(assert (= (and b!2572103 (not c!414035)) b!2572110))

(assert (= (and b!2572110 c!414036) b!2572111))

(assert (= (and b!2572110 (not c!414036)) b!2572104))

(assert (= (and b!2572104 c!414034) b!2572102))

(assert (= (and b!2572104 (not c!414034)) b!2572105))

(assert (= (and b!2572105 c!414033) b!2572108))

(assert (= (and b!2572105 (not c!414033)) b!2572109))

(assert (= (or b!2572108 b!2572109) bm!166055))

(assert (= (or b!2572102 bm!166055) bm!166056))

(assert (= (or b!2572111 b!2572108) bm!166054))

(assert (= (or b!2572111 bm!166056) bm!166057))

(declare-fun m!2908211 () Bool)

(assert (=> d!727681 m!2908211))

(assert (=> d!727681 m!2907339))

(declare-fun m!2908213 () Bool)

(assert (=> bm!166054 m!2908213))

(assert (=> b!2572105 m!2908007))

(declare-fun m!2908215 () Bool)

(assert (=> bm!166057 m!2908215))

(assert (=> b!2571020 d!727681))

(assert (=> bm!165846 d!727631))

(assert (=> d!727327 d!727631))

(declare-fun bm!166058 () Bool)

(declare-fun c!414038 () Bool)

(declare-fun call!166064 () Bool)

(declare-fun c!414037 () Bool)

(assert (=> bm!166058 (= call!166064 (validRegex!3265 (ite c!414037 (reg!7968 lt!905925) (ite c!414038 (regTwo!15791 lt!905925) (regOne!15790 lt!905925)))))))

(declare-fun d!727683 () Bool)

(declare-fun res!1082053 () Bool)

(declare-fun e!1623230 () Bool)

(assert (=> d!727683 (=> res!1082053 e!1623230)))

(assert (=> d!727683 (= res!1082053 ((_ is ElementMatch!7639) lt!905925))))

(assert (=> d!727683 (= (validRegex!3265 lt!905925) e!1623230)))

(declare-fun b!2572112 () Bool)

(declare-fun e!1623229 () Bool)

(declare-fun e!1623232 () Bool)

(assert (=> b!2572112 (= e!1623229 e!1623232)))

(declare-fun res!1082055 () Bool)

(assert (=> b!2572112 (= res!1082055 (not (nullable!2556 (reg!7968 lt!905925))))))

(assert (=> b!2572112 (=> (not res!1082055) (not e!1623232))))

(declare-fun b!2572113 () Bool)

(declare-fun e!1623228 () Bool)

(declare-fun e!1623234 () Bool)

(assert (=> b!2572113 (= e!1623228 e!1623234)))

(declare-fun res!1082054 () Bool)

(assert (=> b!2572113 (=> (not res!1082054) (not e!1623234))))

(declare-fun call!166063 () Bool)

(assert (=> b!2572113 (= res!1082054 call!166063)))

(declare-fun b!2572114 () Bool)

(declare-fun call!166065 () Bool)

(assert (=> b!2572114 (= e!1623234 call!166065)))

(declare-fun b!2572115 () Bool)

(declare-fun res!1082057 () Bool)

(declare-fun e!1623231 () Bool)

(assert (=> b!2572115 (=> (not res!1082057) (not e!1623231))))

(assert (=> b!2572115 (= res!1082057 call!166065)))

(declare-fun e!1623233 () Bool)

(assert (=> b!2572115 (= e!1623233 e!1623231)))

(declare-fun b!2572116 () Bool)

(assert (=> b!2572116 (= e!1623231 call!166063)))

(declare-fun b!2572117 () Bool)

(assert (=> b!2572117 (= e!1623229 e!1623233)))

(assert (=> b!2572117 (= c!414038 ((_ is Union!7639) lt!905925))))

(declare-fun b!2572118 () Bool)

(assert (=> b!2572118 (= e!1623232 call!166064)))

(declare-fun bm!166059 () Bool)

(assert (=> bm!166059 (= call!166065 (validRegex!3265 (ite c!414038 (regOne!15791 lt!905925) (regTwo!15790 lt!905925))))))

(declare-fun b!2572119 () Bool)

(assert (=> b!2572119 (= e!1623230 e!1623229)))

(assert (=> b!2572119 (= c!414037 ((_ is Star!7639) lt!905925))))

(declare-fun b!2572120 () Bool)

(declare-fun res!1082056 () Bool)

(assert (=> b!2572120 (=> res!1082056 e!1623228)))

(assert (=> b!2572120 (= res!1082056 (not ((_ is Concat!12335) lt!905925)))))

(assert (=> b!2572120 (= e!1623233 e!1623228)))

(declare-fun bm!166060 () Bool)

(assert (=> bm!166060 (= call!166063 call!166064)))

(assert (= (and d!727683 (not res!1082053)) b!2572119))

(assert (= (and b!2572119 c!414037) b!2572112))

(assert (= (and b!2572119 (not c!414037)) b!2572117))

(assert (= (and b!2572112 res!1082055) b!2572118))

(assert (= (and b!2572117 c!414038) b!2572115))

(assert (= (and b!2572117 (not c!414038)) b!2572120))

(assert (= (and b!2572115 res!1082057) b!2572116))

(assert (= (and b!2572120 (not res!1082056)) b!2572113))

(assert (= (and b!2572113 res!1082054) b!2572114))

(assert (= (or b!2572115 b!2572114) bm!166059))

(assert (= (or b!2572116 b!2572113) bm!166060))

(assert (= (or b!2572118 bm!166060) bm!166058))

(declare-fun m!2908217 () Bool)

(assert (=> bm!166058 m!2908217))

(declare-fun m!2908219 () Bool)

(assert (=> b!2572112 m!2908219))

(declare-fun m!2908221 () Bool)

(assert (=> bm!166059 m!2908221))

(assert (=> d!727327 d!727683))

(declare-fun c!414039 () Bool)

(declare-fun c!414040 () Bool)

(declare-fun bm!166061 () Bool)

(declare-fun call!166067 () Bool)

(assert (=> bm!166061 (= call!166067 (validRegex!3265 (ite c!414039 (reg!7968 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))) (ite c!414040 (regTwo!15791 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))) (regOne!15790 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340))))))))))

(declare-fun d!727685 () Bool)

(declare-fun res!1082058 () Bool)

(declare-fun e!1623237 () Bool)

(assert (=> d!727685 (=> res!1082058 e!1623237)))

(assert (=> d!727685 (= res!1082058 ((_ is ElementMatch!7639) (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))))))

(assert (=> d!727685 (= (validRegex!3265 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))) e!1623237)))

(declare-fun b!2572121 () Bool)

(declare-fun e!1623236 () Bool)

(declare-fun e!1623239 () Bool)

(assert (=> b!2572121 (= e!1623236 e!1623239)))

(declare-fun res!1082060 () Bool)

(assert (=> b!2572121 (= res!1082060 (not (nullable!2556 (reg!7968 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))))))))

(assert (=> b!2572121 (=> (not res!1082060) (not e!1623239))))

(declare-fun b!2572122 () Bool)

(declare-fun e!1623235 () Bool)

(declare-fun e!1623241 () Bool)

(assert (=> b!2572122 (= e!1623235 e!1623241)))

(declare-fun res!1082059 () Bool)

(assert (=> b!2572122 (=> (not res!1082059) (not e!1623241))))

(declare-fun call!166066 () Bool)

(assert (=> b!2572122 (= res!1082059 call!166066)))

(declare-fun b!2572123 () Bool)

(declare-fun call!166068 () Bool)

(assert (=> b!2572123 (= e!1623241 call!166068)))

(declare-fun b!2572124 () Bool)

(declare-fun res!1082062 () Bool)

(declare-fun e!1623238 () Bool)

(assert (=> b!2572124 (=> (not res!1082062) (not e!1623238))))

(assert (=> b!2572124 (= res!1082062 call!166068)))

(declare-fun e!1623240 () Bool)

(assert (=> b!2572124 (= e!1623240 e!1623238)))

(declare-fun b!2572125 () Bool)

(assert (=> b!2572125 (= e!1623238 call!166066)))

(declare-fun b!2572126 () Bool)

(assert (=> b!2572126 (= e!1623236 e!1623240)))

(assert (=> b!2572126 (= c!414040 ((_ is Union!7639) (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))))))

(declare-fun b!2572127 () Bool)

(assert (=> b!2572127 (= e!1623239 call!166067)))

(declare-fun bm!166062 () Bool)

(assert (=> bm!166062 (= call!166068 (validRegex!3265 (ite c!414040 (regOne!15791 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))) (regTwo!15790 (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))))))))

(declare-fun b!2572128 () Bool)

(assert (=> b!2572128 (= e!1623237 e!1623236)))

(assert (=> b!2572128 (= c!414039 ((_ is Star!7639) (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340)))))))

(declare-fun b!2572129 () Bool)

(declare-fun res!1082061 () Bool)

(assert (=> b!2572129 (=> res!1082061 e!1623235)))

(assert (=> b!2572129 (= res!1082061 (not ((_ is Concat!12335) (ite c!413724 (reg!7968 r!27340) (ite c!413725 (regTwo!15791 r!27340) (regOne!15790 r!27340))))))))

(assert (=> b!2572129 (= e!1623240 e!1623235)))

(declare-fun bm!166063 () Bool)

(assert (=> bm!166063 (= call!166066 call!166067)))

(assert (= (and d!727685 (not res!1082058)) b!2572128))

(assert (= (and b!2572128 c!414039) b!2572121))

(assert (= (and b!2572128 (not c!414039)) b!2572126))

(assert (= (and b!2572121 res!1082060) b!2572127))

(assert (= (and b!2572126 c!414040) b!2572124))

(assert (= (and b!2572126 (not c!414040)) b!2572129))

(assert (= (and b!2572124 res!1082062) b!2572125))

(assert (= (and b!2572129 (not res!1082061)) b!2572122))

(assert (= (and b!2572122 res!1082059) b!2572123))

(assert (= (or b!2572124 b!2572123) bm!166062))

(assert (= (or b!2572125 b!2572122) bm!166063))

(assert (= (or b!2572127 bm!166063) bm!166061))

(declare-fun m!2908223 () Bool)

(assert (=> bm!166061 m!2908223))

(declare-fun m!2908225 () Bool)

(assert (=> b!2572121 m!2908225))

(declare-fun m!2908227 () Bool)

(assert (=> bm!166062 m!2908227))

(assert (=> bm!165827 d!727685))

(declare-fun d!727687 () Bool)

(assert (=> d!727687 (= (nullable!2556 lt!905919) (nullableFct!781 lt!905919))))

(declare-fun bs!470055 () Bool)

(assert (= bs!470055 d!727687))

(declare-fun m!2908229 () Bool)

(assert (=> bs!470055 m!2908229))

(assert (=> b!2571036 d!727687))

(assert (=> b!2570848 d!727309))

(assert (=> d!727331 d!727327))

(declare-fun d!727689 () Bool)

(declare-fun e!1623244 () Bool)

(assert (=> d!727689 e!1623244))

(declare-fun res!1082065 () Bool)

(assert (=> d!727689 (=> res!1082065 e!1623244)))

(assert (=> d!727689 (= res!1082065 (matchR!3582 lt!905925 tl!4068))))

(assert (=> d!727689 true))

(declare-fun _$116!367 () Unit!43459)

(assert (=> d!727689 (= (choose!15167 lt!905925 EmptyLang!7639 tl!4068) _$116!367)))

(declare-fun b!2572132 () Bool)

(assert (=> b!2572132 (= e!1623244 (matchR!3582 EmptyLang!7639 tl!4068))))

(assert (= (and d!727689 (not res!1082065)) b!2572132))

(assert (=> d!727689 m!2906933))

(assert (=> b!2572132 m!2906949))

(assert (=> d!727331 d!727689))

(assert (=> d!727331 d!727683))

(declare-fun bm!166064 () Bool)

(declare-fun call!166069 () Bool)

(assert (=> bm!166064 (= call!166069 (isEmpty!17064 tl!4068))))

(declare-fun b!2572133 () Bool)

(declare-fun e!1623247 () Bool)

(assert (=> b!2572133 (= e!1623247 (nullable!2556 (regTwo!15790 r!27340)))))

(declare-fun b!2572134 () Bool)

(declare-fun e!1623248 () Bool)

(assert (=> b!2572134 (= e!1623248 (= (head!5844 tl!4068) (c!413611 (regTwo!15790 r!27340))))))

(declare-fun b!2572135 () Bool)

(declare-fun res!1082071 () Bool)

(declare-fun e!1623249 () Bool)

(assert (=> b!2572135 (=> res!1082071 e!1623249)))

(assert (=> b!2572135 (= res!1082071 (not (isEmpty!17064 (tail!4119 tl!4068))))))

(declare-fun b!2572137 () Bool)

(assert (=> b!2572137 (= e!1623249 (not (= (head!5844 tl!4068) (c!413611 (regTwo!15790 r!27340)))))))

(declare-fun b!2572138 () Bool)

(declare-fun res!1082073 () Bool)

(declare-fun e!1623251 () Bool)

(assert (=> b!2572138 (=> res!1082073 e!1623251)))

(assert (=> b!2572138 (= res!1082073 e!1623248)))

(declare-fun res!1082066 () Bool)

(assert (=> b!2572138 (=> (not res!1082066) (not e!1623248))))

(declare-fun lt!906103 () Bool)

(assert (=> b!2572138 (= res!1082066 lt!906103)))

(declare-fun b!2572139 () Bool)

(declare-fun res!1082067 () Bool)

(assert (=> b!2572139 (=> res!1082067 e!1623251)))

(assert (=> b!2572139 (= res!1082067 (not ((_ is ElementMatch!7639) (regTwo!15790 r!27340))))))

(declare-fun e!1623246 () Bool)

(assert (=> b!2572139 (= e!1623246 e!1623251)))

(declare-fun b!2572140 () Bool)

(assert (=> b!2572140 (= e!1623246 (not lt!906103))))

(declare-fun b!2572141 () Bool)

(declare-fun e!1623245 () Bool)

(assert (=> b!2572141 (= e!1623251 e!1623245)))

(declare-fun res!1082069 () Bool)

(assert (=> b!2572141 (=> (not res!1082069) (not e!1623245))))

(assert (=> b!2572141 (= res!1082069 (not lt!906103))))

(declare-fun b!2572142 () Bool)

(assert (=> b!2572142 (= e!1623245 e!1623249)))

(declare-fun res!1082072 () Bool)

(assert (=> b!2572142 (=> res!1082072 e!1623249)))

(assert (=> b!2572142 (= res!1082072 call!166069)))

(declare-fun b!2572136 () Bool)

(declare-fun res!1082070 () Bool)

(assert (=> b!2572136 (=> (not res!1082070) (not e!1623248))))

(assert (=> b!2572136 (= res!1082070 (not call!166069))))

(declare-fun d!727691 () Bool)

(declare-fun e!1623250 () Bool)

(assert (=> d!727691 e!1623250))

(declare-fun c!414043 () Bool)

(assert (=> d!727691 (= c!414043 ((_ is EmptyExpr!7639) (regTwo!15790 r!27340)))))

(assert (=> d!727691 (= lt!906103 e!1623247)))

(declare-fun c!414041 () Bool)

(assert (=> d!727691 (= c!414041 (isEmpty!17064 tl!4068))))

(assert (=> d!727691 (validRegex!3265 (regTwo!15790 r!27340))))

(assert (=> d!727691 (= (matchR!3582 (regTwo!15790 r!27340) tl!4068) lt!906103)))

(declare-fun b!2572143 () Bool)

(assert (=> b!2572143 (= e!1623247 (matchR!3582 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 tl!4068)) (tail!4119 tl!4068)))))

(declare-fun b!2572144 () Bool)

(declare-fun res!1082068 () Bool)

(assert (=> b!2572144 (=> (not res!1082068) (not e!1623248))))

(assert (=> b!2572144 (= res!1082068 (isEmpty!17064 (tail!4119 tl!4068)))))

(declare-fun b!2572145 () Bool)

(assert (=> b!2572145 (= e!1623250 e!1623246)))

(declare-fun c!414042 () Bool)

(assert (=> b!2572145 (= c!414042 ((_ is EmptyLang!7639) (regTwo!15790 r!27340)))))

(declare-fun b!2572146 () Bool)

(assert (=> b!2572146 (= e!1623250 (= lt!906103 call!166069))))

(assert (= (and d!727691 c!414041) b!2572133))

(assert (= (and d!727691 (not c!414041)) b!2572143))

(assert (= (and d!727691 c!414043) b!2572146))

(assert (= (and d!727691 (not c!414043)) b!2572145))

(assert (= (and b!2572145 c!414042) b!2572140))

(assert (= (and b!2572145 (not c!414042)) b!2572139))

(assert (= (and b!2572139 (not res!1082067)) b!2572138))

(assert (= (and b!2572138 res!1082066) b!2572136))

(assert (= (and b!2572136 res!1082070) b!2572144))

(assert (= (and b!2572144 res!1082068) b!2572134))

(assert (= (and b!2572138 (not res!1082073)) b!2572141))

(assert (= (and b!2572141 res!1082069) b!2572142))

(assert (= (and b!2572142 (not res!1082072)) b!2572135))

(assert (= (and b!2572135 (not res!1082071)) b!2572137))

(assert (= (or b!2572146 b!2572136 b!2572142) bm!166064))

(assert (=> b!2572134 m!2907291))

(assert (=> bm!166064 m!2907293))

(assert (=> b!2572144 m!2907295))

(assert (=> b!2572144 m!2907295))

(assert (=> b!2572144 m!2907297))

(assert (=> b!2572143 m!2907291))

(assert (=> b!2572143 m!2907291))

(declare-fun m!2908231 () Bool)

(assert (=> b!2572143 m!2908231))

(assert (=> b!2572143 m!2907295))

(assert (=> b!2572143 m!2908231))

(assert (=> b!2572143 m!2907295))

(declare-fun m!2908233 () Bool)

(assert (=> b!2572143 m!2908233))

(assert (=> b!2572135 m!2907295))

(assert (=> b!2572135 m!2907295))

(assert (=> b!2572135 m!2907297))

(assert (=> d!727691 m!2907293))

(assert (=> d!727691 m!2907177))

(assert (=> b!2572133 m!2907179))

(assert (=> b!2572137 m!2907291))

(assert (=> b!2570723 d!727691))

(assert (=> b!2570850 d!727511))

(assert (=> b!2570850 d!727513))

(declare-fun d!727693 () Bool)

(assert (=> d!727693 (= (validRegex!3265 EmptyLang!7639) true)))

(assert (=> b!2571054 d!727693))

(assert (=> b!2571060 d!727511))

(assert (=> b!2571060 d!727513))

(declare-fun d!727695 () Bool)

(assert (=> d!727695 (= (isEmpty!17064 (Cons!29604 c!14016 (_1!17342 lt!905927))) ((_ is Nil!29604) (Cons!29604 c!14016 (_1!17342 lt!905927))))))

(assert (=> bm!165783 d!727695))

(declare-fun e!1623255 () Regex!7639)

(declare-fun b!2572147 () Bool)

(declare-fun call!166073 () Regex!7639)

(assert (=> b!2572147 (= e!1623255 (Concat!12335 call!166073 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))))))

(declare-fun d!727697 () Bool)

(declare-fun lt!906104 () Regex!7639)

(assert (=> d!727697 (validRegex!3265 lt!906104)))

(declare-fun e!1623254 () Regex!7639)

(assert (=> d!727697 (= lt!906104 e!1623254)))

(declare-fun c!414044 () Bool)

(assert (=> d!727697 (= c!414044 (or ((_ is EmptyExpr!7639) (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))) ((_ is EmptyLang!7639) (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))))))))

(assert (=> d!727697 (validRegex!3265 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))))))

(assert (=> d!727697 (= (derivativeStep!2208 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))) c!14016) lt!906104)))

(declare-fun call!166072 () Regex!7639)

(declare-fun bm!166065 () Bool)

(declare-fun c!414048 () Bool)

(assert (=> bm!166065 (= call!166072 (derivativeStep!2208 (ite c!414048 (regTwo!15791 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))) (regTwo!15790 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))))) c!14016))))

(declare-fun b!2572148 () Bool)

(declare-fun e!1623253 () Regex!7639)

(assert (=> b!2572148 (= e!1623254 e!1623253)))

(declare-fun c!414047 () Bool)

(assert (=> b!2572148 (= c!414047 ((_ is ElementMatch!7639) (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))))))

(declare-fun b!2572149 () Bool)

(declare-fun e!1623256 () Regex!7639)

(assert (=> b!2572149 (= e!1623256 e!1623255)))

(declare-fun c!414046 () Bool)

(assert (=> b!2572149 (= c!414046 ((_ is Star!7639) (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))))))

(declare-fun b!2572150 () Bool)

(declare-fun c!414045 () Bool)

(assert (=> b!2572150 (= c!414045 (nullable!2556 (regOne!15790 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))))))))

(declare-fun e!1623252 () Regex!7639)

(assert (=> b!2572150 (= e!1623255 e!1623252)))

(declare-fun b!2572151 () Bool)

(assert (=> b!2572151 (= e!1623254 EmptyLang!7639)))

(declare-fun b!2572152 () Bool)

(assert (=> b!2572152 (= e!1623253 (ite (= c!14016 (c!413611 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun b!2572153 () Bool)

(declare-fun call!166071 () Regex!7639)

(assert (=> b!2572153 (= e!1623252 (Union!7639 (Concat!12335 call!166071 (regTwo!15790 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))))) call!166072))))

(declare-fun bm!166066 () Bool)

(assert (=> bm!166066 (= call!166071 call!166073)))

(declare-fun bm!166067 () Bool)

(declare-fun call!166070 () Regex!7639)

(assert (=> bm!166067 (= call!166073 call!166070)))

(declare-fun b!2572154 () Bool)

(assert (=> b!2572154 (= e!1623252 (Union!7639 (Concat!12335 call!166071 (regTwo!15790 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340))))) EmptyLang!7639))))

(declare-fun b!2572155 () Bool)

(assert (=> b!2572155 (= c!414048 ((_ is Union!7639) (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))))))

(assert (=> b!2572155 (= e!1623253 e!1623256)))

(declare-fun b!2572156 () Bool)

(assert (=> b!2572156 (= e!1623256 (Union!7639 call!166070 call!166072))))

(declare-fun bm!166068 () Bool)

(assert (=> bm!166068 (= call!166070 (derivativeStep!2208 (ite c!414048 (regOne!15791 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))) (ite c!414046 (reg!7968 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))) (regOne!15790 (ite c!413741 (regOne!15791 r!27340) (ite c!413739 (reg!7968 r!27340) (regOne!15790 r!27340)))))) c!14016))))

(assert (= (and d!727697 c!414044) b!2572151))

(assert (= (and d!727697 (not c!414044)) b!2572148))

(assert (= (and b!2572148 c!414047) b!2572152))

(assert (= (and b!2572148 (not c!414047)) b!2572155))

(assert (= (and b!2572155 c!414048) b!2572156))

(assert (= (and b!2572155 (not c!414048)) b!2572149))

(assert (= (and b!2572149 c!414046) b!2572147))

(assert (= (and b!2572149 (not c!414046)) b!2572150))

(assert (= (and b!2572150 c!414045) b!2572153))

(assert (= (and b!2572150 (not c!414045)) b!2572154))

(assert (= (or b!2572153 b!2572154) bm!166066))

(assert (= (or b!2572147 bm!166066) bm!166067))

(assert (= (or b!2572156 b!2572153) bm!166065))

(assert (= (or b!2572156 bm!166067) bm!166068))

(declare-fun m!2908235 () Bool)

(assert (=> d!727697 m!2908235))

(declare-fun m!2908237 () Bool)

(assert (=> d!727697 m!2908237))

(declare-fun m!2908239 () Bool)

(assert (=> bm!166065 m!2908239))

(declare-fun m!2908241 () Bool)

(assert (=> b!2572150 m!2908241))

(declare-fun m!2908243 () Bool)

(assert (=> bm!166068 m!2908243))

(assert (=> bm!165841 d!727697))

(declare-fun b!2572157 () Bool)

(declare-fun e!1623259 () Bool)

(declare-fun call!166075 () Bool)

(assert (=> b!2572157 (= e!1623259 call!166075)))

(declare-fun b!2572158 () Bool)

(declare-fun e!1623260 () Bool)

(declare-fun call!166074 () Bool)

(assert (=> b!2572158 (= e!1623260 call!166074)))

(declare-fun b!2572159 () Bool)

(declare-fun e!1623257 () Bool)

(assert (=> b!2572159 (= e!1623257 e!1623259)))

(declare-fun res!1082077 () Bool)

(assert (=> b!2572159 (= res!1082077 call!166074)))

(assert (=> b!2572159 (=> res!1082077 e!1623259)))

(declare-fun b!2572160 () Bool)

(declare-fun e!1623262 () Bool)

(declare-fun e!1623261 () Bool)

(assert (=> b!2572160 (= e!1623262 e!1623261)))

(declare-fun res!1082078 () Bool)

(assert (=> b!2572160 (=> res!1082078 e!1623261)))

(assert (=> b!2572160 (= res!1082078 ((_ is Star!7639) (regOne!15790 r!27340)))))

(declare-fun bm!166069 () Bool)

(declare-fun c!414049 () Bool)

(assert (=> bm!166069 (= call!166074 (nullable!2556 (ite c!414049 (regOne!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(declare-fun d!727699 () Bool)

(declare-fun res!1082076 () Bool)

(declare-fun e!1623258 () Bool)

(assert (=> d!727699 (=> res!1082076 e!1623258)))

(assert (=> d!727699 (= res!1082076 ((_ is EmptyExpr!7639) (regOne!15790 r!27340)))))

(assert (=> d!727699 (= (nullableFct!781 (regOne!15790 r!27340)) e!1623258)))

(declare-fun bm!166070 () Bool)

(assert (=> bm!166070 (= call!166075 (nullable!2556 (ite c!414049 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))))

(declare-fun b!2572161 () Bool)

(assert (=> b!2572161 (= e!1623257 e!1623260)))

(declare-fun res!1082074 () Bool)

(assert (=> b!2572161 (= res!1082074 call!166075)))

(assert (=> b!2572161 (=> (not res!1082074) (not e!1623260))))

(declare-fun b!2572162 () Bool)

(assert (=> b!2572162 (= e!1623261 e!1623257)))

(assert (=> b!2572162 (= c!414049 ((_ is Union!7639) (regOne!15790 r!27340)))))

(declare-fun b!2572163 () Bool)

(assert (=> b!2572163 (= e!1623258 e!1623262)))

(declare-fun res!1082075 () Bool)

(assert (=> b!2572163 (=> (not res!1082075) (not e!1623262))))

(assert (=> b!2572163 (= res!1082075 (and (not ((_ is EmptyLang!7639) (regOne!15790 r!27340))) (not ((_ is ElementMatch!7639) (regOne!15790 r!27340)))))))

(assert (= (and d!727699 (not res!1082076)) b!2572163))

(assert (= (and b!2572163 res!1082075) b!2572160))

(assert (= (and b!2572160 (not res!1082078)) b!2572162))

(assert (= (and b!2572162 c!414049) b!2572159))

(assert (= (and b!2572162 (not c!414049)) b!2572161))

(assert (= (and b!2572159 (not res!1082077)) b!2572157))

(assert (= (and b!2572161 res!1082074) b!2572158))

(assert (= (or b!2572157 b!2572161) bm!166070))

(assert (= (or b!2572159 b!2572158) bm!166069))

(declare-fun m!2908245 () Bool)

(assert (=> bm!166069 m!2908245))

(declare-fun m!2908247 () Bool)

(assert (=> bm!166070 m!2908247))

(assert (=> d!727275 d!727699))

(declare-fun call!166077 () Bool)

(declare-fun c!414051 () Bool)

(declare-fun bm!166071 () Bool)

(declare-fun c!414050 () Bool)

(assert (=> bm!166071 (= call!166077 (validRegex!3265 (ite c!414050 (reg!7968 lt!905999) (ite c!414051 (regTwo!15791 lt!905999) (regOne!15790 lt!905999)))))))

(declare-fun d!727701 () Bool)

(declare-fun res!1082079 () Bool)

(declare-fun e!1623265 () Bool)

(assert (=> d!727701 (=> res!1082079 e!1623265)))

(assert (=> d!727701 (= res!1082079 ((_ is ElementMatch!7639) lt!905999))))

(assert (=> d!727701 (= (validRegex!3265 lt!905999) e!1623265)))

(declare-fun b!2572164 () Bool)

(declare-fun e!1623264 () Bool)

(declare-fun e!1623267 () Bool)

(assert (=> b!2572164 (= e!1623264 e!1623267)))

(declare-fun res!1082081 () Bool)

(assert (=> b!2572164 (= res!1082081 (not (nullable!2556 (reg!7968 lt!905999))))))

(assert (=> b!2572164 (=> (not res!1082081) (not e!1623267))))

(declare-fun b!2572165 () Bool)

(declare-fun e!1623263 () Bool)

(declare-fun e!1623269 () Bool)

(assert (=> b!2572165 (= e!1623263 e!1623269)))

(declare-fun res!1082080 () Bool)

(assert (=> b!2572165 (=> (not res!1082080) (not e!1623269))))

(declare-fun call!166076 () Bool)

(assert (=> b!2572165 (= res!1082080 call!166076)))

(declare-fun b!2572166 () Bool)

(declare-fun call!166078 () Bool)

(assert (=> b!2572166 (= e!1623269 call!166078)))

(declare-fun b!2572167 () Bool)

(declare-fun res!1082083 () Bool)

(declare-fun e!1623266 () Bool)

(assert (=> b!2572167 (=> (not res!1082083) (not e!1623266))))

(assert (=> b!2572167 (= res!1082083 call!166078)))

(declare-fun e!1623268 () Bool)

(assert (=> b!2572167 (= e!1623268 e!1623266)))

(declare-fun b!2572168 () Bool)

(assert (=> b!2572168 (= e!1623266 call!166076)))

(declare-fun b!2572169 () Bool)

(assert (=> b!2572169 (= e!1623264 e!1623268)))

(assert (=> b!2572169 (= c!414051 ((_ is Union!7639) lt!905999))))

(declare-fun b!2572170 () Bool)

(assert (=> b!2572170 (= e!1623267 call!166077)))

(declare-fun bm!166072 () Bool)

(assert (=> bm!166072 (= call!166078 (validRegex!3265 (ite c!414051 (regOne!15791 lt!905999) (regTwo!15790 lt!905999))))))

(declare-fun b!2572171 () Bool)

(assert (=> b!2572171 (= e!1623265 e!1623264)))

(assert (=> b!2572171 (= c!414050 ((_ is Star!7639) lt!905999))))

(declare-fun b!2572172 () Bool)

(declare-fun res!1082082 () Bool)

(assert (=> b!2572172 (=> res!1082082 e!1623263)))

(assert (=> b!2572172 (= res!1082082 (not ((_ is Concat!12335) lt!905999)))))

(assert (=> b!2572172 (= e!1623268 e!1623263)))

(declare-fun bm!166073 () Bool)

(assert (=> bm!166073 (= call!166076 call!166077)))

(assert (= (and d!727701 (not res!1082079)) b!2572171))

(assert (= (and b!2572171 c!414050) b!2572164))

(assert (= (and b!2572171 (not c!414050)) b!2572169))

(assert (= (and b!2572164 res!1082081) b!2572170))

(assert (= (and b!2572169 c!414051) b!2572167))

(assert (= (and b!2572169 (not c!414051)) b!2572172))

(assert (= (and b!2572167 res!1082083) b!2572168))

(assert (= (and b!2572172 (not res!1082082)) b!2572165))

(assert (= (and b!2572165 res!1082080) b!2572166))

(assert (= (or b!2572167 b!2572166) bm!166072))

(assert (= (or b!2572168 b!2572165) bm!166073))

(assert (= (or b!2572170 bm!166073) bm!166071))

(declare-fun m!2908249 () Bool)

(assert (=> bm!166071 m!2908249))

(declare-fun m!2908251 () Bool)

(assert (=> b!2572164 m!2908251))

(declare-fun m!2908253 () Bool)

(assert (=> bm!166072 m!2908253))

(assert (=> d!727295 d!727701))

(assert (=> d!727295 d!727577))

(declare-fun b!2572173 () Bool)

(declare-fun e!1623273 () Regex!7639)

(declare-fun call!166082 () Regex!7639)

(assert (=> b!2572173 (= e!1623273 (Concat!12335 call!166082 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(declare-fun d!727703 () Bool)

(declare-fun lt!906105 () Regex!7639)

(assert (=> d!727703 (validRegex!3265 lt!906105)))

(declare-fun e!1623272 () Regex!7639)

(assert (=> d!727703 (= lt!906105 e!1623272)))

(declare-fun c!414052 () Bool)

(assert (=> d!727703 (= c!414052 (or ((_ is EmptyExpr!7639) (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) ((_ is EmptyLang!7639) (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))))))

(assert (=> d!727703 (validRegex!3265 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))))

(assert (=> d!727703 (= (derivativeStep!2208 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))) c!14016) lt!906105)))

(declare-fun bm!166074 () Bool)

(declare-fun call!166081 () Regex!7639)

(declare-fun c!414056 () Bool)

(assert (=> bm!166074 (= call!166081 (derivativeStep!2208 (ite c!414056 (regTwo!15791 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) (regTwo!15790 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))) c!14016))))

(declare-fun b!2572174 () Bool)

(declare-fun e!1623271 () Regex!7639)

(assert (=> b!2572174 (= e!1623272 e!1623271)))

(declare-fun c!414055 () Bool)

(assert (=> b!2572174 (= c!414055 ((_ is ElementMatch!7639) (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(declare-fun b!2572175 () Bool)

(declare-fun e!1623274 () Regex!7639)

(assert (=> b!2572175 (= e!1623274 e!1623273)))

(declare-fun c!414054 () Bool)

(assert (=> b!2572175 (= c!414054 ((_ is Star!7639) (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(declare-fun b!2572176 () Bool)

(declare-fun c!414053 () Bool)

(assert (=> b!2572176 (= c!414053 (nullable!2556 (regOne!15790 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))))))

(declare-fun e!1623270 () Regex!7639)

(assert (=> b!2572176 (= e!1623273 e!1623270)))

(declare-fun b!2572177 () Bool)

(assert (=> b!2572177 (= e!1623272 EmptyLang!7639)))

(declare-fun b!2572178 () Bool)

(assert (=> b!2572178 (= e!1623271 (ite (= c!14016 (c!413611 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!166080 () Regex!7639)

(declare-fun b!2572179 () Bool)

(assert (=> b!2572179 (= e!1623270 (Union!7639 (Concat!12335 call!166080 (regTwo!15790 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))) call!166081))))

(declare-fun bm!166075 () Bool)

(assert (=> bm!166075 (= call!166080 call!166082)))

(declare-fun bm!166076 () Bool)

(declare-fun call!166079 () Regex!7639)

(assert (=> bm!166076 (= call!166082 call!166079)))

(declare-fun b!2572180 () Bool)

(assert (=> b!2572180 (= e!1623270 (Union!7639 (Concat!12335 call!166080 (regTwo!15790 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340))))) EmptyLang!7639))))

(declare-fun b!2572181 () Bool)

(assert (=> b!2572181 (= c!414056 ((_ is Union!7639) (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))))

(assert (=> b!2572181 (= e!1623271 e!1623274)))

(declare-fun b!2572182 () Bool)

(assert (=> b!2572182 (= e!1623274 (Union!7639 call!166079 call!166081))))

(declare-fun bm!166077 () Bool)

(assert (=> bm!166077 (= call!166079 (derivativeStep!2208 (ite c!414056 (regOne!15791 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) (ite c!414054 (reg!7968 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))) (regOne!15790 (ite c!413746 (regTwo!15791 (regOne!15790 r!27340)) (regTwo!15790 (regOne!15790 r!27340)))))) c!14016))))

(assert (= (and d!727703 c!414052) b!2572177))

(assert (= (and d!727703 (not c!414052)) b!2572174))

(assert (= (and b!2572174 c!414055) b!2572178))

(assert (= (and b!2572174 (not c!414055)) b!2572181))

(assert (= (and b!2572181 c!414056) b!2572182))

(assert (= (and b!2572181 (not c!414056)) b!2572175))

(assert (= (and b!2572175 c!414054) b!2572173))

(assert (= (and b!2572175 (not c!414054)) b!2572176))

(assert (= (and b!2572176 c!414053) b!2572179))

(assert (= (and b!2572176 (not c!414053)) b!2572180))

(assert (= (or b!2572179 b!2572180) bm!166075))

(assert (= (or b!2572173 bm!166075) bm!166076))

(assert (= (or b!2572182 b!2572179) bm!166074))

(assert (= (or b!2572182 bm!166076) bm!166077))

(declare-fun m!2908255 () Bool)

(assert (=> d!727703 m!2908255))

(declare-fun m!2908257 () Bool)

(assert (=> d!727703 m!2908257))

(declare-fun m!2908259 () Bool)

(assert (=> bm!166074 m!2908259))

(declare-fun m!2908261 () Bool)

(assert (=> b!2572176 m!2908261))

(declare-fun m!2908263 () Bool)

(assert (=> bm!166077 m!2908263))

(assert (=> bm!165842 d!727703))

(assert (=> bm!165826 d!727631))

(assert (=> d!727307 d!727631))

(assert (=> d!727307 d!727693))

(declare-fun d!727705 () Bool)

(assert (=> d!727705 (= (isDefined!4742 (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) Nil!29604 tl!4068 tl!4068)) (not (isEmpty!17065 (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) Nil!29604 tl!4068 tl!4068))))))

(declare-fun bs!470056 () Bool)

(assert (= bs!470056 d!727705))

(assert (=> bs!470056 m!2906961))

(declare-fun m!2908265 () Bool)

(assert (=> bs!470056 m!2908265))

(assert (=> d!727239 d!727705))

(assert (=> d!727239 d!727245))

(declare-fun d!727707 () Bool)

(assert (=> d!727707 (isDefined!4742 (findConcatSeparation!942 lt!905930 (regTwo!15790 r!27340) Nil!29604 tl!4068 tl!4068))))

(assert (=> d!727707 true))

(declare-fun _$122!349 () Unit!43459)

(assert (=> d!727707 (= (choose!15163 lt!905930 (regTwo!15790 r!27340) tl!4068) _$122!349)))

(declare-fun bs!470057 () Bool)

(assert (= bs!470057 d!727707))

(assert (=> bs!470057 m!2906961))

(assert (=> bs!470057 m!2906961))

(assert (=> bs!470057 m!2907013))

(assert (=> d!727239 d!727707))

(assert (=> d!727239 d!727577))

(assert (=> b!2571040 d!727567))

(declare-fun call!166084 () Bool)

(declare-fun c!414057 () Bool)

(declare-fun c!414058 () Bool)

(declare-fun bm!166078 () Bool)

(assert (=> bm!166078 (= call!166084 (validRegex!3265 (ite c!414057 (reg!7968 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))) (ite c!414058 (regTwo!15791 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))) (regOne!15790 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340)))))))))

(declare-fun d!727709 () Bool)

(declare-fun res!1082084 () Bool)

(declare-fun e!1623277 () Bool)

(assert (=> d!727709 (=> res!1082084 e!1623277)))

(assert (=> d!727709 (= res!1082084 ((_ is ElementMatch!7639) (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))))))

(assert (=> d!727709 (= (validRegex!3265 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))) e!1623277)))

(declare-fun b!2572183 () Bool)

(declare-fun e!1623276 () Bool)

(declare-fun e!1623279 () Bool)

(assert (=> b!2572183 (= e!1623276 e!1623279)))

(declare-fun res!1082086 () Bool)

(assert (=> b!2572183 (= res!1082086 (not (nullable!2556 (reg!7968 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))))))))

(assert (=> b!2572183 (=> (not res!1082086) (not e!1623279))))

(declare-fun b!2572184 () Bool)

(declare-fun e!1623275 () Bool)

(declare-fun e!1623281 () Bool)

(assert (=> b!2572184 (= e!1623275 e!1623281)))

(declare-fun res!1082085 () Bool)

(assert (=> b!2572184 (=> (not res!1082085) (not e!1623281))))

(declare-fun call!166083 () Bool)

(assert (=> b!2572184 (= res!1082085 call!166083)))

(declare-fun b!2572185 () Bool)

(declare-fun call!166085 () Bool)

(assert (=> b!2572185 (= e!1623281 call!166085)))

(declare-fun b!2572186 () Bool)

(declare-fun res!1082088 () Bool)

(declare-fun e!1623278 () Bool)

(assert (=> b!2572186 (=> (not res!1082088) (not e!1623278))))

(assert (=> b!2572186 (= res!1082088 call!166085)))

(declare-fun e!1623280 () Bool)

(assert (=> b!2572186 (= e!1623280 e!1623278)))

(declare-fun b!2572187 () Bool)

(assert (=> b!2572187 (= e!1623278 call!166083)))

(declare-fun b!2572188 () Bool)

(assert (=> b!2572188 (= e!1623276 e!1623280)))

(assert (=> b!2572188 (= c!414058 ((_ is Union!7639) (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))))))

(declare-fun b!2572189 () Bool)

(assert (=> b!2572189 (= e!1623279 call!166084)))

(declare-fun bm!166079 () Bool)

(assert (=> bm!166079 (= call!166085 (validRegex!3265 (ite c!414058 (regOne!15791 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))) (regTwo!15790 (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))))))))

(declare-fun b!2572190 () Bool)

(assert (=> b!2572190 (= e!1623277 e!1623276)))

(assert (=> b!2572190 (= c!414057 ((_ is Star!7639) (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340))))))

(declare-fun b!2572191 () Bool)

(declare-fun res!1082087 () Bool)

(assert (=> b!2572191 (=> res!1082087 e!1623275)))

(assert (=> b!2572191 (= res!1082087 (not ((_ is Concat!12335) (ite c!413725 (regOne!15791 r!27340) (regTwo!15790 r!27340)))))))

(assert (=> b!2572191 (= e!1623280 e!1623275)))

(declare-fun bm!166080 () Bool)

(assert (=> bm!166080 (= call!166083 call!166084)))

(assert (= (and d!727709 (not res!1082084)) b!2572190))

(assert (= (and b!2572190 c!414057) b!2572183))

(assert (= (and b!2572190 (not c!414057)) b!2572188))

(assert (= (and b!2572183 res!1082086) b!2572189))

(assert (= (and b!2572188 c!414058) b!2572186))

(assert (= (and b!2572188 (not c!414058)) b!2572191))

(assert (= (and b!2572186 res!1082088) b!2572187))

(assert (= (and b!2572191 (not res!1082087)) b!2572184))

(assert (= (and b!2572184 res!1082085) b!2572185))

(assert (= (or b!2572186 b!2572185) bm!166079))

(assert (= (or b!2572187 b!2572184) bm!166080))

(assert (= (or b!2572189 bm!166080) bm!166078))

(declare-fun m!2908267 () Bool)

(assert (=> bm!166078 m!2908267))

(declare-fun m!2908269 () Bool)

(assert (=> b!2572183 m!2908269))

(declare-fun m!2908271 () Bool)

(assert (=> bm!166079 m!2908271))

(assert (=> bm!165828 d!727709))

(assert (=> b!2571033 d!727591))

(assert (=> b!2571033 d!727569))

(assert (=> b!2570770 d!727675))

(assert (=> b!2570770 d!727619))

(declare-fun d!727711 () Bool)

(assert (not d!727711))

(assert (=> b!2571068 d!727711))

(declare-fun d!727713 () Bool)

(assert (not d!727713))

(assert (=> b!2571068 d!727713))

(assert (=> b!2571068 d!727601))

(assert (=> b!2571068 d!727513))

(declare-fun call!166087 () Bool)

(declare-fun c!414060 () Bool)

(declare-fun bm!166081 () Bool)

(declare-fun c!414059 () Bool)

(assert (=> bm!166081 (= call!166087 (validRegex!3265 (ite c!414059 (reg!7968 lt!906008) (ite c!414060 (regTwo!15791 lt!906008) (regOne!15790 lt!906008)))))))

(declare-fun d!727715 () Bool)

(declare-fun res!1082089 () Bool)

(declare-fun e!1623284 () Bool)

(assert (=> d!727715 (=> res!1082089 e!1623284)))

(assert (=> d!727715 (= res!1082089 ((_ is ElementMatch!7639) lt!906008))))

(assert (=> d!727715 (= (validRegex!3265 lt!906008) e!1623284)))

(declare-fun b!2572192 () Bool)

(declare-fun e!1623283 () Bool)

(declare-fun e!1623286 () Bool)

(assert (=> b!2572192 (= e!1623283 e!1623286)))

(declare-fun res!1082091 () Bool)

(assert (=> b!2572192 (= res!1082091 (not (nullable!2556 (reg!7968 lt!906008))))))

(assert (=> b!2572192 (=> (not res!1082091) (not e!1623286))))

(declare-fun b!2572193 () Bool)

(declare-fun e!1623282 () Bool)

(declare-fun e!1623288 () Bool)

(assert (=> b!2572193 (= e!1623282 e!1623288)))

(declare-fun res!1082090 () Bool)

(assert (=> b!2572193 (=> (not res!1082090) (not e!1623288))))

(declare-fun call!166086 () Bool)

(assert (=> b!2572193 (= res!1082090 call!166086)))

(declare-fun b!2572194 () Bool)

(declare-fun call!166088 () Bool)

(assert (=> b!2572194 (= e!1623288 call!166088)))

(declare-fun b!2572195 () Bool)

(declare-fun res!1082093 () Bool)

(declare-fun e!1623285 () Bool)

(assert (=> b!2572195 (=> (not res!1082093) (not e!1623285))))

(assert (=> b!2572195 (= res!1082093 call!166088)))

(declare-fun e!1623287 () Bool)

(assert (=> b!2572195 (= e!1623287 e!1623285)))

(declare-fun b!2572196 () Bool)

(assert (=> b!2572196 (= e!1623285 call!166086)))

(declare-fun b!2572197 () Bool)

(assert (=> b!2572197 (= e!1623283 e!1623287)))

(assert (=> b!2572197 (= c!414060 ((_ is Union!7639) lt!906008))))

(declare-fun b!2572198 () Bool)

(assert (=> b!2572198 (= e!1623286 call!166087)))

(declare-fun bm!166082 () Bool)

(assert (=> bm!166082 (= call!166088 (validRegex!3265 (ite c!414060 (regOne!15791 lt!906008) (regTwo!15790 lt!906008))))))

(declare-fun b!2572199 () Bool)

(assert (=> b!2572199 (= e!1623284 e!1623283)))

(assert (=> b!2572199 (= c!414059 ((_ is Star!7639) lt!906008))))

(declare-fun b!2572200 () Bool)

(declare-fun res!1082092 () Bool)

(assert (=> b!2572200 (=> res!1082092 e!1623282)))

(assert (=> b!2572200 (= res!1082092 (not ((_ is Concat!12335) lt!906008)))))

(assert (=> b!2572200 (= e!1623287 e!1623282)))

(declare-fun bm!166083 () Bool)

(assert (=> bm!166083 (= call!166086 call!166087)))

(assert (= (and d!727715 (not res!1082089)) b!2572199))

(assert (= (and b!2572199 c!414059) b!2572192))

(assert (= (and b!2572199 (not c!414059)) b!2572197))

(assert (= (and b!2572192 res!1082091) b!2572198))

(assert (= (and b!2572197 c!414060) b!2572195))

(assert (= (and b!2572197 (not c!414060)) b!2572200))

(assert (= (and b!2572195 res!1082093) b!2572196))

(assert (= (and b!2572200 (not res!1082092)) b!2572193))

(assert (= (and b!2572193 res!1082090) b!2572194))

(assert (= (or b!2572195 b!2572194) bm!166082))

(assert (= (or b!2572196 b!2572193) bm!166083))

(assert (= (or b!2572198 bm!166083) bm!166081))

(declare-fun m!2908273 () Bool)

(assert (=> bm!166081 m!2908273))

(declare-fun m!2908275 () Bool)

(assert (=> b!2572192 m!2908275))

(declare-fun m!2908277 () Bool)

(assert (=> bm!166082 m!2908277))

(assert (=> d!727319 d!727715))

(assert (=> d!727319 d!727287))

(declare-fun d!727717 () Bool)

(assert (=> d!727717 (= (isEmpty!17064 (_2!17342 lt!905927)) ((_ is Nil!29604) (_2!17342 lt!905927)))))

(assert (=> d!727277 d!727717))

(declare-fun bm!166084 () Bool)

(declare-fun c!414062 () Bool)

(declare-fun c!414061 () Bool)

(declare-fun call!166090 () Bool)

(assert (=> bm!166084 (= call!166090 (validRegex!3265 (ite c!414061 (reg!7968 (regTwo!15790 r!27340)) (ite c!414062 (regTwo!15791 (regTwo!15790 r!27340)) (regOne!15790 (regTwo!15790 r!27340))))))))

(declare-fun d!727719 () Bool)

(declare-fun res!1082094 () Bool)

(declare-fun e!1623291 () Bool)

(assert (=> d!727719 (=> res!1082094 e!1623291)))

(assert (=> d!727719 (= res!1082094 ((_ is ElementMatch!7639) (regTwo!15790 r!27340)))))

(assert (=> d!727719 (= (validRegex!3265 (regTwo!15790 r!27340)) e!1623291)))

(declare-fun b!2572201 () Bool)

(declare-fun e!1623290 () Bool)

(declare-fun e!1623293 () Bool)

(assert (=> b!2572201 (= e!1623290 e!1623293)))

(declare-fun res!1082096 () Bool)

(assert (=> b!2572201 (= res!1082096 (not (nullable!2556 (reg!7968 (regTwo!15790 r!27340)))))))

(assert (=> b!2572201 (=> (not res!1082096) (not e!1623293))))

(declare-fun b!2572202 () Bool)

(declare-fun e!1623289 () Bool)

(declare-fun e!1623295 () Bool)

(assert (=> b!2572202 (= e!1623289 e!1623295)))

(declare-fun res!1082095 () Bool)

(assert (=> b!2572202 (=> (not res!1082095) (not e!1623295))))

(declare-fun call!166089 () Bool)

(assert (=> b!2572202 (= res!1082095 call!166089)))

(declare-fun b!2572203 () Bool)

(declare-fun call!166091 () Bool)

(assert (=> b!2572203 (= e!1623295 call!166091)))

(declare-fun b!2572204 () Bool)

(declare-fun res!1082098 () Bool)

(declare-fun e!1623292 () Bool)

(assert (=> b!2572204 (=> (not res!1082098) (not e!1623292))))

(assert (=> b!2572204 (= res!1082098 call!166091)))

(declare-fun e!1623294 () Bool)

(assert (=> b!2572204 (= e!1623294 e!1623292)))

(declare-fun b!2572205 () Bool)

(assert (=> b!2572205 (= e!1623292 call!166089)))

(declare-fun b!2572206 () Bool)

(assert (=> b!2572206 (= e!1623290 e!1623294)))

(assert (=> b!2572206 (= c!414062 ((_ is Union!7639) (regTwo!15790 r!27340)))))

(declare-fun b!2572207 () Bool)

(assert (=> b!2572207 (= e!1623293 call!166090)))

(declare-fun bm!166085 () Bool)

(assert (=> bm!166085 (= call!166091 (validRegex!3265 (ite c!414062 (regOne!15791 (regTwo!15790 r!27340)) (regTwo!15790 (regTwo!15790 r!27340)))))))

(declare-fun b!2572208 () Bool)

(assert (=> b!2572208 (= e!1623291 e!1623290)))

(assert (=> b!2572208 (= c!414061 ((_ is Star!7639) (regTwo!15790 r!27340)))))

(declare-fun b!2572209 () Bool)

(declare-fun res!1082097 () Bool)

(assert (=> b!2572209 (=> res!1082097 e!1623289)))

(assert (=> b!2572209 (= res!1082097 (not ((_ is Concat!12335) (regTwo!15790 r!27340))))))

(assert (=> b!2572209 (= e!1623294 e!1623289)))

(declare-fun bm!166086 () Bool)

(assert (=> bm!166086 (= call!166089 call!166090)))

(assert (= (and d!727719 (not res!1082094)) b!2572208))

(assert (= (and b!2572208 c!414061) b!2572201))

(assert (= (and b!2572208 (not c!414061)) b!2572206))

(assert (= (and b!2572201 res!1082096) b!2572207))

(assert (= (and b!2572206 c!414062) b!2572204))

(assert (= (and b!2572206 (not c!414062)) b!2572209))

(assert (= (and b!2572204 res!1082098) b!2572205))

(assert (= (and b!2572209 (not res!1082097)) b!2572202))

(assert (= (and b!2572202 res!1082095) b!2572203))

(assert (= (or b!2572204 b!2572203) bm!166085))

(assert (= (or b!2572205 b!2572202) bm!166086))

(assert (= (or b!2572207 bm!166086) bm!166084))

(declare-fun m!2908279 () Bool)

(assert (=> bm!166084 m!2908279))

(declare-fun m!2908281 () Bool)

(assert (=> b!2572201 m!2908281))

(declare-fun m!2908283 () Bool)

(assert (=> bm!166085 m!2908283))

(assert (=> d!727277 d!727719))

(assert (=> bm!165801 d!727717))

(declare-fun bm!166087 () Bool)

(declare-fun c!414063 () Bool)

(declare-fun c!414064 () Bool)

(declare-fun call!166093 () Bool)

(assert (=> bm!166087 (= call!166093 (validRegex!3265 (ite c!414063 (reg!7968 lt!906007) (ite c!414064 (regTwo!15791 lt!906007) (regOne!15790 lt!906007)))))))

(declare-fun d!727721 () Bool)

(declare-fun res!1082099 () Bool)

(declare-fun e!1623298 () Bool)

(assert (=> d!727721 (=> res!1082099 e!1623298)))

(assert (=> d!727721 (= res!1082099 ((_ is ElementMatch!7639) lt!906007))))

(assert (=> d!727721 (= (validRegex!3265 lt!906007) e!1623298)))

(declare-fun b!2572210 () Bool)

(declare-fun e!1623297 () Bool)

(declare-fun e!1623300 () Bool)

(assert (=> b!2572210 (= e!1623297 e!1623300)))

(declare-fun res!1082101 () Bool)

(assert (=> b!2572210 (= res!1082101 (not (nullable!2556 (reg!7968 lt!906007))))))

(assert (=> b!2572210 (=> (not res!1082101) (not e!1623300))))

(declare-fun b!2572211 () Bool)

(declare-fun e!1623296 () Bool)

(declare-fun e!1623302 () Bool)

(assert (=> b!2572211 (= e!1623296 e!1623302)))

(declare-fun res!1082100 () Bool)

(assert (=> b!2572211 (=> (not res!1082100) (not e!1623302))))

(declare-fun call!166092 () Bool)

(assert (=> b!2572211 (= res!1082100 call!166092)))

(declare-fun b!2572212 () Bool)

(declare-fun call!166094 () Bool)

(assert (=> b!2572212 (= e!1623302 call!166094)))

(declare-fun b!2572213 () Bool)

(declare-fun res!1082103 () Bool)

(declare-fun e!1623299 () Bool)

(assert (=> b!2572213 (=> (not res!1082103) (not e!1623299))))

(assert (=> b!2572213 (= res!1082103 call!166094)))

(declare-fun e!1623301 () Bool)

(assert (=> b!2572213 (= e!1623301 e!1623299)))

(declare-fun b!2572214 () Bool)

(assert (=> b!2572214 (= e!1623299 call!166092)))

(declare-fun b!2572215 () Bool)

(assert (=> b!2572215 (= e!1623297 e!1623301)))

(assert (=> b!2572215 (= c!414064 ((_ is Union!7639) lt!906007))))

(declare-fun b!2572216 () Bool)

(assert (=> b!2572216 (= e!1623300 call!166093)))

(declare-fun bm!166088 () Bool)

(assert (=> bm!166088 (= call!166094 (validRegex!3265 (ite c!414064 (regOne!15791 lt!906007) (regTwo!15790 lt!906007))))))

(declare-fun b!2572217 () Bool)

(assert (=> b!2572217 (= e!1623298 e!1623297)))

(assert (=> b!2572217 (= c!414063 ((_ is Star!7639) lt!906007))))

(declare-fun b!2572218 () Bool)

(declare-fun res!1082102 () Bool)

(assert (=> b!2572218 (=> res!1082102 e!1623296)))

(assert (=> b!2572218 (= res!1082102 (not ((_ is Concat!12335) lt!906007)))))

(assert (=> b!2572218 (= e!1623301 e!1623296)))

(declare-fun bm!166089 () Bool)

(assert (=> bm!166089 (= call!166092 call!166093)))

(assert (= (and d!727721 (not res!1082099)) b!2572217))

(assert (= (and b!2572217 c!414063) b!2572210))

(assert (= (and b!2572217 (not c!414063)) b!2572215))

(assert (= (and b!2572210 res!1082101) b!2572216))

(assert (= (and b!2572215 c!414064) b!2572213))

(assert (= (and b!2572215 (not c!414064)) b!2572218))

(assert (= (and b!2572213 res!1082103) b!2572214))

(assert (= (and b!2572218 (not res!1082102)) b!2572211))

(assert (= (and b!2572211 res!1082100) b!2572212))

(assert (= (or b!2572213 b!2572212) bm!166088))

(assert (= (or b!2572214 b!2572211) bm!166089))

(assert (= (or b!2572216 bm!166089) bm!166087))

(declare-fun m!2908285 () Bool)

(assert (=> bm!166087 m!2908285))

(declare-fun m!2908287 () Bool)

(assert (=> b!2572210 m!2908287))

(declare-fun m!2908289 () Bool)

(assert (=> bm!166088 m!2908289))

(assert (=> d!727317 d!727721))

(assert (=> d!727317 d!727311))

(declare-fun d!727723 () Bool)

(assert (not d!727723))

(assert (=> b!2570858 d!727723))

(declare-fun d!727725 () Bool)

(assert (not d!727725))

(assert (=> b!2570858 d!727725))

(assert (=> b!2570858 d!727601))

(assert (=> b!2570858 d!727513))

(declare-fun d!727727 () Bool)

(assert (=> d!727727 (= (nullable!2556 (reg!7968 r!27340)) (nullableFct!781 (reg!7968 r!27340)))))

(declare-fun bs!470058 () Bool)

(assert (= bs!470058 d!727727))

(declare-fun m!2908291 () Bool)

(assert (=> bs!470058 m!2908291))

(assert (=> b!2570969 d!727727))

(declare-fun d!727729 () Bool)

(assert (=> d!727729 (= (nullable!2556 lt!905925) (nullableFct!781 lt!905925))))

(declare-fun bs!470059 () Bool)

(assert (= bs!470059 d!727729))

(declare-fun m!2908293 () Bool)

(assert (=> bs!470059 m!2908293))

(assert (=> b!2571022 d!727729))

(assert (=> b!2571037 d!727567))

(assert (=> d!727335 d!727605))

(declare-fun bm!166090 () Bool)

(declare-fun c!414066 () Bool)

(declare-fun c!414065 () Bool)

(declare-fun call!166096 () Bool)

(assert (=> bm!166090 (= call!166096 (validRegex!3265 (ite c!414065 (reg!7968 (derivative!334 lt!905919 tl!4068)) (ite c!414066 (regTwo!15791 (derivative!334 lt!905919 tl!4068)) (regOne!15790 (derivative!334 lt!905919 tl!4068))))))))

(declare-fun d!727731 () Bool)

(declare-fun res!1082104 () Bool)

(declare-fun e!1623305 () Bool)

(assert (=> d!727731 (=> res!1082104 e!1623305)))

(assert (=> d!727731 (= res!1082104 ((_ is ElementMatch!7639) (derivative!334 lt!905919 tl!4068)))))

(assert (=> d!727731 (= (validRegex!3265 (derivative!334 lt!905919 tl!4068)) e!1623305)))

(declare-fun b!2572219 () Bool)

(declare-fun e!1623304 () Bool)

(declare-fun e!1623307 () Bool)

(assert (=> b!2572219 (= e!1623304 e!1623307)))

(declare-fun res!1082106 () Bool)

(assert (=> b!2572219 (= res!1082106 (not (nullable!2556 (reg!7968 (derivative!334 lt!905919 tl!4068)))))))

(assert (=> b!2572219 (=> (not res!1082106) (not e!1623307))))

(declare-fun b!2572220 () Bool)

(declare-fun e!1623303 () Bool)

(declare-fun e!1623309 () Bool)

(assert (=> b!2572220 (= e!1623303 e!1623309)))

(declare-fun res!1082105 () Bool)

(assert (=> b!2572220 (=> (not res!1082105) (not e!1623309))))

(declare-fun call!166095 () Bool)

(assert (=> b!2572220 (= res!1082105 call!166095)))

(declare-fun b!2572221 () Bool)

(declare-fun call!166097 () Bool)

(assert (=> b!2572221 (= e!1623309 call!166097)))

(declare-fun b!2572222 () Bool)

(declare-fun res!1082108 () Bool)

(declare-fun e!1623306 () Bool)

(assert (=> b!2572222 (=> (not res!1082108) (not e!1623306))))

(assert (=> b!2572222 (= res!1082108 call!166097)))

(declare-fun e!1623308 () Bool)

(assert (=> b!2572222 (= e!1623308 e!1623306)))

(declare-fun b!2572223 () Bool)

(assert (=> b!2572223 (= e!1623306 call!166095)))

(declare-fun b!2572224 () Bool)

(assert (=> b!2572224 (= e!1623304 e!1623308)))

(assert (=> b!2572224 (= c!414066 ((_ is Union!7639) (derivative!334 lt!905919 tl!4068)))))

(declare-fun b!2572225 () Bool)

(assert (=> b!2572225 (= e!1623307 call!166096)))

(declare-fun bm!166091 () Bool)

(assert (=> bm!166091 (= call!166097 (validRegex!3265 (ite c!414066 (regOne!15791 (derivative!334 lt!905919 tl!4068)) (regTwo!15790 (derivative!334 lt!905919 tl!4068)))))))

(declare-fun b!2572226 () Bool)

(assert (=> b!2572226 (= e!1623305 e!1623304)))

(assert (=> b!2572226 (= c!414065 ((_ is Star!7639) (derivative!334 lt!905919 tl!4068)))))

(declare-fun b!2572227 () Bool)

(declare-fun res!1082107 () Bool)

(assert (=> b!2572227 (=> res!1082107 e!1623303)))

(assert (=> b!2572227 (= res!1082107 (not ((_ is Concat!12335) (derivative!334 lt!905919 tl!4068))))))

(assert (=> b!2572227 (= e!1623308 e!1623303)))

(declare-fun bm!166092 () Bool)

(assert (=> bm!166092 (= call!166095 call!166096)))

(assert (= (and d!727731 (not res!1082104)) b!2572226))

(assert (= (and b!2572226 c!414065) b!2572219))

(assert (= (and b!2572226 (not c!414065)) b!2572224))

(assert (= (and b!2572219 res!1082106) b!2572225))

(assert (= (and b!2572224 c!414066) b!2572222))

(assert (= (and b!2572224 (not c!414066)) b!2572227))

(assert (= (and b!2572222 res!1082108) b!2572223))

(assert (= (and b!2572227 (not res!1082107)) b!2572220))

(assert (= (and b!2572220 res!1082105) b!2572221))

(assert (= (or b!2572222 b!2572221) bm!166091))

(assert (= (or b!2572223 b!2572220) bm!166092))

(assert (= (or b!2572225 bm!166092) bm!166090))

(declare-fun m!2908295 () Bool)

(assert (=> bm!166090 m!2908295))

(declare-fun m!2908297 () Bool)

(assert (=> b!2572219 m!2908297))

(declare-fun m!2908299 () Bool)

(assert (=> bm!166091 m!2908299))

(assert (=> d!727335 d!727731))

(assert (=> bm!165848 d!727605))

(assert (=> d!727305 d!727295))

(declare-fun d!727733 () Bool)

(assert (=> d!727733 (= (matchR!3582 lt!905930 (_1!17342 lt!905927)) (matchR!3582 (derivative!334 lt!905930 (_1!17342 lt!905927)) Nil!29604))))

(assert (=> d!727733 true))

(declare-fun _$108!406 () Unit!43459)

(assert (=> d!727733 (= (choose!15165 lt!905930 (_1!17342 lt!905927)) _$108!406)))

(declare-fun bs!470060 () Bool)

(assert (= bs!470060 d!727733))

(assert (=> bs!470060 m!2906909))

(assert (=> bs!470060 m!2906915))

(assert (=> bs!470060 m!2906915))

(assert (=> bs!470060 m!2907287))

(assert (=> d!727305 d!727733))

(declare-fun bm!166093 () Bool)

(declare-fun call!166098 () Bool)

(assert (=> bm!166093 (= call!166098 (isEmpty!17064 Nil!29604))))

(declare-fun b!2572228 () Bool)

(declare-fun e!1623312 () Bool)

(assert (=> b!2572228 (= e!1623312 (nullable!2556 (derivative!334 lt!905930 (_1!17342 lt!905927))))))

(declare-fun b!2572229 () Bool)

(declare-fun e!1623313 () Bool)

(assert (=> b!2572229 (= e!1623313 (= (head!5844 Nil!29604) (c!413611 (derivative!334 lt!905930 (_1!17342 lt!905927)))))))

(declare-fun b!2572230 () Bool)

(declare-fun res!1082114 () Bool)

(declare-fun e!1623314 () Bool)

(assert (=> b!2572230 (=> res!1082114 e!1623314)))

(assert (=> b!2572230 (= res!1082114 (not (isEmpty!17064 (tail!4119 Nil!29604))))))

(declare-fun b!2572232 () Bool)

(assert (=> b!2572232 (= e!1623314 (not (= (head!5844 Nil!29604) (c!413611 (derivative!334 lt!905930 (_1!17342 lt!905927))))))))

(declare-fun b!2572233 () Bool)

(declare-fun res!1082116 () Bool)

(declare-fun e!1623316 () Bool)

(assert (=> b!2572233 (=> res!1082116 e!1623316)))

(assert (=> b!2572233 (= res!1082116 e!1623313)))

(declare-fun res!1082109 () Bool)

(assert (=> b!2572233 (=> (not res!1082109) (not e!1623313))))

(declare-fun lt!906106 () Bool)

(assert (=> b!2572233 (= res!1082109 lt!906106)))

(declare-fun b!2572234 () Bool)

(declare-fun res!1082110 () Bool)

(assert (=> b!2572234 (=> res!1082110 e!1623316)))

(assert (=> b!2572234 (= res!1082110 (not ((_ is ElementMatch!7639) (derivative!334 lt!905930 (_1!17342 lt!905927)))))))

(declare-fun e!1623311 () Bool)

(assert (=> b!2572234 (= e!1623311 e!1623316)))

(declare-fun b!2572235 () Bool)

(assert (=> b!2572235 (= e!1623311 (not lt!906106))))

(declare-fun b!2572236 () Bool)

(declare-fun e!1623310 () Bool)

(assert (=> b!2572236 (= e!1623316 e!1623310)))

(declare-fun res!1082112 () Bool)

(assert (=> b!2572236 (=> (not res!1082112) (not e!1623310))))

(assert (=> b!2572236 (= res!1082112 (not lt!906106))))

(declare-fun b!2572237 () Bool)

(assert (=> b!2572237 (= e!1623310 e!1623314)))

(declare-fun res!1082115 () Bool)

(assert (=> b!2572237 (=> res!1082115 e!1623314)))

(assert (=> b!2572237 (= res!1082115 call!166098)))

(declare-fun b!2572231 () Bool)

(declare-fun res!1082113 () Bool)

(assert (=> b!2572231 (=> (not res!1082113) (not e!1623313))))

(assert (=> b!2572231 (= res!1082113 (not call!166098))))

(declare-fun d!727735 () Bool)

(declare-fun e!1623315 () Bool)

(assert (=> d!727735 e!1623315))

(declare-fun c!414069 () Bool)

(assert (=> d!727735 (= c!414069 ((_ is EmptyExpr!7639) (derivative!334 lt!905930 (_1!17342 lt!905927))))))

(assert (=> d!727735 (= lt!906106 e!1623312)))

(declare-fun c!414067 () Bool)

(assert (=> d!727735 (= c!414067 (isEmpty!17064 Nil!29604))))

(assert (=> d!727735 (validRegex!3265 (derivative!334 lt!905930 (_1!17342 lt!905927)))))

(assert (=> d!727735 (= (matchR!3582 (derivative!334 lt!905930 (_1!17342 lt!905927)) Nil!29604) lt!906106)))

(declare-fun b!2572238 () Bool)

(assert (=> b!2572238 (= e!1623312 (matchR!3582 (derivativeStep!2208 (derivative!334 lt!905930 (_1!17342 lt!905927)) (head!5844 Nil!29604)) (tail!4119 Nil!29604)))))

(declare-fun b!2572239 () Bool)

(declare-fun res!1082111 () Bool)

(assert (=> b!2572239 (=> (not res!1082111) (not e!1623313))))

(assert (=> b!2572239 (= res!1082111 (isEmpty!17064 (tail!4119 Nil!29604)))))

(declare-fun b!2572240 () Bool)

(assert (=> b!2572240 (= e!1623315 e!1623311)))

(declare-fun c!414068 () Bool)

(assert (=> b!2572240 (= c!414068 ((_ is EmptyLang!7639) (derivative!334 lt!905930 (_1!17342 lt!905927))))))

(declare-fun b!2572241 () Bool)

(assert (=> b!2572241 (= e!1623315 (= lt!906106 call!166098))))

(assert (= (and d!727735 c!414067) b!2572228))

(assert (= (and d!727735 (not c!414067)) b!2572238))

(assert (= (and d!727735 c!414069) b!2572241))

(assert (= (and d!727735 (not c!414069)) b!2572240))

(assert (= (and b!2572240 c!414068) b!2572235))

(assert (= (and b!2572240 (not c!414068)) b!2572234))

(assert (= (and b!2572234 (not res!1082110)) b!2572233))

(assert (= (and b!2572233 res!1082109) b!2572231))

(assert (= (and b!2572231 res!1082113) b!2572239))

(assert (= (and b!2572239 res!1082111) b!2572229))

(assert (= (and b!2572233 (not res!1082116)) b!2572236))

(assert (= (and b!2572236 res!1082112) b!2572237))

(assert (= (and b!2572237 (not res!1082115)) b!2572230))

(assert (= (and b!2572230 (not res!1082114)) b!2572232))

(assert (= (or b!2572241 b!2572231 b!2572237) bm!166093))

(assert (=> b!2572229 m!2907239))

(assert (=> bm!166093 m!2907241))

(assert (=> b!2572239 m!2907243))

(assert (=> b!2572239 m!2907243))

(assert (=> b!2572239 m!2907245))

(assert (=> b!2572238 m!2907239))

(assert (=> b!2572238 m!2906915))

(assert (=> b!2572238 m!2907239))

(declare-fun m!2908301 () Bool)

(assert (=> b!2572238 m!2908301))

(assert (=> b!2572238 m!2907243))

(assert (=> b!2572238 m!2908301))

(assert (=> b!2572238 m!2907243))

(declare-fun m!2908303 () Bool)

(assert (=> b!2572238 m!2908303))

(assert (=> b!2572230 m!2907243))

(assert (=> b!2572230 m!2907243))

(assert (=> b!2572230 m!2907245))

(assert (=> d!727735 m!2907241))

(assert (=> d!727735 m!2906915))

(declare-fun m!2908305 () Bool)

(assert (=> d!727735 m!2908305))

(assert (=> b!2572228 m!2906915))

(declare-fun m!2908307 () Bool)

(assert (=> b!2572228 m!2908307))

(assert (=> b!2572232 m!2907239))

(assert (=> d!727305 d!727735))

(assert (=> d!727305 d!727283))

(assert (=> d!727305 d!727577))

(assert (=> b!2570539 d!727275))

(assert (=> d!727225 d!727695))

(assert (=> d!727225 d!727287))

(assert (=> b!2571026 d!727567))

(declare-fun d!727737 () Bool)

(assert (=> d!727737 (= (nullable!2556 EmptyLang!7639) false)))

(assert (=> b!2570955 d!727737))

(assert (=> d!727325 d!727333))

(declare-fun d!727739 () Bool)

(assert (=> d!727739 (= (derivative!334 EmptyLang!7639 tl!4068) EmptyLang!7639)))

(assert (=> d!727739 true))

(declare-fun _$134!180 () Unit!43459)

(assert (=> d!727739 (= (choose!15166 EmptyLang!7639 tl!4068) _$134!180)))

(declare-fun bs!470061 () Bool)

(assert (= bs!470061 d!727739))

(assert (=> bs!470061 m!2906929))

(assert (=> d!727325 d!727739))

(declare-fun bm!166094 () Bool)

(declare-fun c!414071 () Bool)

(declare-fun c!414070 () Bool)

(declare-fun call!166100 () Bool)

(assert (=> bm!166094 (= call!166100 (validRegex!3265 (ite c!414070 (reg!7968 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) (ite c!414071 (regTwo!15791 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) (regOne!15790 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))))))))

(declare-fun d!727741 () Bool)

(declare-fun res!1082117 () Bool)

(declare-fun e!1623319 () Bool)

(assert (=> d!727741 (=> res!1082117 e!1623319)))

(assert (=> d!727741 (= res!1082117 ((_ is ElementMatch!7639) (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(assert (=> d!727741 (= (validRegex!3265 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) e!1623319)))

(declare-fun b!2572242 () Bool)

(declare-fun e!1623318 () Bool)

(declare-fun e!1623321 () Bool)

(assert (=> b!2572242 (= e!1623318 e!1623321)))

(declare-fun res!1082119 () Bool)

(assert (=> b!2572242 (= res!1082119 (not (nullable!2556 (reg!7968 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))))

(assert (=> b!2572242 (=> (not res!1082119) (not e!1623321))))

(declare-fun b!2572243 () Bool)

(declare-fun e!1623317 () Bool)

(declare-fun e!1623323 () Bool)

(assert (=> b!2572243 (= e!1623317 e!1623323)))

(declare-fun res!1082118 () Bool)

(assert (=> b!2572243 (=> (not res!1082118) (not e!1623323))))

(declare-fun call!166099 () Bool)

(assert (=> b!2572243 (= res!1082118 call!166099)))

(declare-fun b!2572244 () Bool)

(declare-fun call!166101 () Bool)

(assert (=> b!2572244 (= e!1623323 call!166101)))

(declare-fun b!2572245 () Bool)

(declare-fun res!1082121 () Bool)

(declare-fun e!1623320 () Bool)

(assert (=> b!2572245 (=> (not res!1082121) (not e!1623320))))

(assert (=> b!2572245 (= res!1082121 call!166101)))

(declare-fun e!1623322 () Bool)

(assert (=> b!2572245 (= e!1623322 e!1623320)))

(declare-fun b!2572246 () Bool)

(assert (=> b!2572246 (= e!1623320 call!166099)))

(declare-fun b!2572247 () Bool)

(assert (=> b!2572247 (= e!1623318 e!1623322)))

(assert (=> b!2572247 (= c!414071 ((_ is Union!7639) (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(declare-fun b!2572248 () Bool)

(assert (=> b!2572248 (= e!1623321 call!166100)))

(declare-fun bm!166095 () Bool)

(assert (=> bm!166095 (= call!166101 (validRegex!3265 (ite c!414071 (regOne!15791 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))) (regTwo!15790 (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))))

(declare-fun b!2572249 () Bool)

(assert (=> b!2572249 (= e!1623319 e!1623318)))

(assert (=> b!2572249 (= c!414070 ((_ is Star!7639) (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340))))))))

(declare-fun b!2572250 () Bool)

(declare-fun res!1082120 () Bool)

(assert (=> b!2572250 (=> res!1082120 e!1623317)))

(assert (=> b!2572250 (= res!1082120 (not ((_ is Concat!12335) (ite c!413699 (reg!7968 (regOne!15790 r!27340)) (ite c!413700 (regTwo!15791 (regOne!15790 r!27340)) (regOne!15790 (regOne!15790 r!27340)))))))))

(assert (=> b!2572250 (= e!1623322 e!1623317)))

(declare-fun bm!166096 () Bool)

(assert (=> bm!166096 (= call!166099 call!166100)))

(assert (= (and d!727741 (not res!1082117)) b!2572249))

(assert (= (and b!2572249 c!414070) b!2572242))

(assert (= (and b!2572249 (not c!414070)) b!2572247))

(assert (= (and b!2572242 res!1082119) b!2572248))

(assert (= (and b!2572247 c!414071) b!2572245))

(assert (= (and b!2572247 (not c!414071)) b!2572250))

(assert (= (and b!2572245 res!1082121) b!2572246))

(assert (= (and b!2572250 (not res!1082120)) b!2572243))

(assert (= (and b!2572243 res!1082118) b!2572244))

(assert (= (or b!2572245 b!2572244) bm!166095))

(assert (= (or b!2572246 b!2572243) bm!166096))

(assert (= (or b!2572248 bm!166096) bm!166094))

(declare-fun m!2908309 () Bool)

(assert (=> bm!166094 m!2908309))

(declare-fun m!2908311 () Bool)

(assert (=> b!2572242 m!2908311))

(declare-fun m!2908313 () Bool)

(assert (=> bm!166095 m!2908313))

(assert (=> bm!165809 d!727741))

(assert (=> bm!165802 d!727589))

(assert (=> b!2571055 d!727307))

(declare-fun bm!166097 () Bool)

(declare-fun call!166102 () Bool)

(assert (=> bm!166097 (= call!166102 (isEmpty!17064 (_2!17342 (get!9318 lt!905973))))))

(declare-fun b!2572251 () Bool)

(declare-fun e!1623326 () Bool)

(assert (=> b!2572251 (= e!1623326 (nullable!2556 (regTwo!15790 r!27340)))))

(declare-fun b!2572252 () Bool)

(declare-fun e!1623327 () Bool)

(assert (=> b!2572252 (= e!1623327 (= (head!5844 (_2!17342 (get!9318 lt!905973))) (c!413611 (regTwo!15790 r!27340))))))

(declare-fun b!2572253 () Bool)

(declare-fun res!1082127 () Bool)

(declare-fun e!1623328 () Bool)

(assert (=> b!2572253 (=> res!1082127 e!1623328)))

(assert (=> b!2572253 (= res!1082127 (not (isEmpty!17064 (tail!4119 (_2!17342 (get!9318 lt!905973))))))))

(declare-fun b!2572255 () Bool)

(assert (=> b!2572255 (= e!1623328 (not (= (head!5844 (_2!17342 (get!9318 lt!905973))) (c!413611 (regTwo!15790 r!27340)))))))

(declare-fun b!2572256 () Bool)

(declare-fun res!1082129 () Bool)

(declare-fun e!1623330 () Bool)

(assert (=> b!2572256 (=> res!1082129 e!1623330)))

(assert (=> b!2572256 (= res!1082129 e!1623327)))

(declare-fun res!1082122 () Bool)

(assert (=> b!2572256 (=> (not res!1082122) (not e!1623327))))

(declare-fun lt!906107 () Bool)

(assert (=> b!2572256 (= res!1082122 lt!906107)))

(declare-fun b!2572257 () Bool)

(declare-fun res!1082123 () Bool)

(assert (=> b!2572257 (=> res!1082123 e!1623330)))

(assert (=> b!2572257 (= res!1082123 (not ((_ is ElementMatch!7639) (regTwo!15790 r!27340))))))

(declare-fun e!1623325 () Bool)

(assert (=> b!2572257 (= e!1623325 e!1623330)))

(declare-fun b!2572258 () Bool)

(assert (=> b!2572258 (= e!1623325 (not lt!906107))))

(declare-fun b!2572259 () Bool)

(declare-fun e!1623324 () Bool)

(assert (=> b!2572259 (= e!1623330 e!1623324)))

(declare-fun res!1082125 () Bool)

(assert (=> b!2572259 (=> (not res!1082125) (not e!1623324))))

(assert (=> b!2572259 (= res!1082125 (not lt!906107))))

(declare-fun b!2572260 () Bool)

(assert (=> b!2572260 (= e!1623324 e!1623328)))

(declare-fun res!1082128 () Bool)

(assert (=> b!2572260 (=> res!1082128 e!1623328)))

(assert (=> b!2572260 (= res!1082128 call!166102)))

(declare-fun b!2572254 () Bool)

(declare-fun res!1082126 () Bool)

(assert (=> b!2572254 (=> (not res!1082126) (not e!1623327))))

(assert (=> b!2572254 (= res!1082126 (not call!166102))))

(declare-fun d!727743 () Bool)

(declare-fun e!1623329 () Bool)

(assert (=> d!727743 e!1623329))

(declare-fun c!414074 () Bool)

(assert (=> d!727743 (= c!414074 ((_ is EmptyExpr!7639) (regTwo!15790 r!27340)))))

(assert (=> d!727743 (= lt!906107 e!1623326)))

(declare-fun c!414072 () Bool)

(assert (=> d!727743 (= c!414072 (isEmpty!17064 (_2!17342 (get!9318 lt!905973))))))

(assert (=> d!727743 (validRegex!3265 (regTwo!15790 r!27340))))

(assert (=> d!727743 (= (matchR!3582 (regTwo!15790 r!27340) (_2!17342 (get!9318 lt!905973))) lt!906107)))

(declare-fun b!2572261 () Bool)

(assert (=> b!2572261 (= e!1623326 (matchR!3582 (derivativeStep!2208 (regTwo!15790 r!27340) (head!5844 (_2!17342 (get!9318 lt!905973)))) (tail!4119 (_2!17342 (get!9318 lt!905973)))))))

(declare-fun b!2572262 () Bool)

(declare-fun res!1082124 () Bool)

(assert (=> b!2572262 (=> (not res!1082124) (not e!1623327))))

(assert (=> b!2572262 (= res!1082124 (isEmpty!17064 (tail!4119 (_2!17342 (get!9318 lt!905973)))))))

(declare-fun b!2572263 () Bool)

(assert (=> b!2572263 (= e!1623329 e!1623325)))

(declare-fun c!414073 () Bool)

(assert (=> b!2572263 (= c!414073 ((_ is EmptyLang!7639) (regTwo!15790 r!27340)))))

(declare-fun b!2572264 () Bool)

(assert (=> b!2572264 (= e!1623329 (= lt!906107 call!166102))))

(assert (= (and d!727743 c!414072) b!2572251))

(assert (= (and d!727743 (not c!414072)) b!2572261))

(assert (= (and d!727743 c!414074) b!2572264))

(assert (= (and d!727743 (not c!414074)) b!2572263))

(assert (= (and b!2572263 c!414073) b!2572258))

(assert (= (and b!2572263 (not c!414073)) b!2572257))

(assert (= (and b!2572257 (not res!1082123)) b!2572256))

(assert (= (and b!2572256 res!1082122) b!2572254))

(assert (= (and b!2572254 res!1082126) b!2572262))

(assert (= (and b!2572262 res!1082124) b!2572252))

(assert (= (and b!2572256 (not res!1082129)) b!2572259))

(assert (= (and b!2572259 res!1082125) b!2572260))

(assert (= (and b!2572260 (not res!1082128)) b!2572253))

(assert (= (and b!2572253 (not res!1082127)) b!2572255))

(assert (= (or b!2572264 b!2572254 b!2572260) bm!166097))

(declare-fun m!2908315 () Bool)

(assert (=> b!2572252 m!2908315))

(declare-fun m!2908317 () Bool)

(assert (=> bm!166097 m!2908317))

(declare-fun m!2908319 () Bool)

(assert (=> b!2572262 m!2908319))

(assert (=> b!2572262 m!2908319))

(declare-fun m!2908321 () Bool)

(assert (=> b!2572262 m!2908321))

(assert (=> b!2572261 m!2908315))

(assert (=> b!2572261 m!2908315))

(declare-fun m!2908323 () Bool)

(assert (=> b!2572261 m!2908323))

(assert (=> b!2572261 m!2908319))

(assert (=> b!2572261 m!2908323))

(assert (=> b!2572261 m!2908319))

(declare-fun m!2908325 () Bool)

(assert (=> b!2572261 m!2908325))

(assert (=> b!2572253 m!2908319))

(assert (=> b!2572253 m!2908319))

(assert (=> b!2572253 m!2908321))

(assert (=> d!727743 m!2908317))

(assert (=> d!727743 m!2907177))

(assert (=> b!2572251 m!2907179))

(assert (=> b!2572255 m!2908315))

(assert (=> b!2570728 d!727743))

(assert (=> b!2570728 d!727595))

(declare-fun call!166104 () Bool)

(declare-fun c!414076 () Bool)

(declare-fun c!414075 () Bool)

(declare-fun bm!166098 () Bool)

(assert (=> bm!166098 (= call!166104 (validRegex!3265 (ite c!414075 (reg!7968 lt!906019) (ite c!414076 (regTwo!15791 lt!906019) (regOne!15790 lt!906019)))))))

(declare-fun d!727745 () Bool)

(declare-fun res!1082130 () Bool)

(declare-fun e!1623333 () Bool)

(assert (=> d!727745 (=> res!1082130 e!1623333)))

(assert (=> d!727745 (= res!1082130 ((_ is ElementMatch!7639) lt!906019))))

(assert (=> d!727745 (= (validRegex!3265 lt!906019) e!1623333)))

(declare-fun b!2572265 () Bool)

(declare-fun e!1623332 () Bool)

(declare-fun e!1623335 () Bool)

(assert (=> b!2572265 (= e!1623332 e!1623335)))

(declare-fun res!1082132 () Bool)

(assert (=> b!2572265 (= res!1082132 (not (nullable!2556 (reg!7968 lt!906019))))))

(assert (=> b!2572265 (=> (not res!1082132) (not e!1623335))))

(declare-fun b!2572266 () Bool)

(declare-fun e!1623331 () Bool)

(declare-fun e!1623337 () Bool)

(assert (=> b!2572266 (= e!1623331 e!1623337)))

(declare-fun res!1082131 () Bool)

(assert (=> b!2572266 (=> (not res!1082131) (not e!1623337))))

(declare-fun call!166103 () Bool)

(assert (=> b!2572266 (= res!1082131 call!166103)))

(declare-fun b!2572267 () Bool)

(declare-fun call!166105 () Bool)

(assert (=> b!2572267 (= e!1623337 call!166105)))

(declare-fun b!2572268 () Bool)

(declare-fun res!1082134 () Bool)

(declare-fun e!1623334 () Bool)

(assert (=> b!2572268 (=> (not res!1082134) (not e!1623334))))

(assert (=> b!2572268 (= res!1082134 call!166105)))

(declare-fun e!1623336 () Bool)

(assert (=> b!2572268 (= e!1623336 e!1623334)))

(declare-fun b!2572269 () Bool)

(assert (=> b!2572269 (= e!1623334 call!166103)))

(declare-fun b!2572270 () Bool)

(assert (=> b!2572270 (= e!1623332 e!1623336)))

(assert (=> b!2572270 (= c!414076 ((_ is Union!7639) lt!906019))))

(declare-fun b!2572271 () Bool)

(assert (=> b!2572271 (= e!1623335 call!166104)))

(declare-fun bm!166099 () Bool)

(assert (=> bm!166099 (= call!166105 (validRegex!3265 (ite c!414076 (regOne!15791 lt!906019) (regTwo!15790 lt!906019))))))

(declare-fun b!2572272 () Bool)

(assert (=> b!2572272 (= e!1623333 e!1623332)))

(assert (=> b!2572272 (= c!414075 ((_ is Star!7639) lt!906019))))

(declare-fun b!2572273 () Bool)

(declare-fun res!1082133 () Bool)

(assert (=> b!2572273 (=> res!1082133 e!1623331)))

(assert (=> b!2572273 (= res!1082133 (not ((_ is Concat!12335) lt!906019)))))

(assert (=> b!2572273 (= e!1623336 e!1623331)))

(declare-fun bm!166100 () Bool)

(assert (=> bm!166100 (= call!166103 call!166104)))

(assert (= (and d!727745 (not res!1082130)) b!2572272))

(assert (= (and b!2572272 c!414075) b!2572265))

(assert (= (and b!2572272 (not c!414075)) b!2572270))

(assert (= (and b!2572265 res!1082132) b!2572271))

(assert (= (and b!2572270 c!414076) b!2572268))

(assert (= (and b!2572270 (not c!414076)) b!2572273))

(assert (= (and b!2572268 res!1082134) b!2572269))

(assert (= (and b!2572273 (not res!1082133)) b!2572266))

(assert (= (and b!2572266 res!1082131) b!2572267))

(assert (= (or b!2572268 b!2572267) bm!166099))

(assert (= (or b!2572269 b!2572266) bm!166100))

(assert (= (or b!2572271 bm!166100) bm!166098))

(declare-fun m!2908327 () Bool)

(assert (=> bm!166098 m!2908327))

(declare-fun m!2908329 () Bool)

(assert (=> b!2572265 m!2908329))

(declare-fun m!2908331 () Bool)

(assert (=> bm!166099 m!2908331))

(assert (=> d!727333 d!727745))

(assert (=> d!727333 d!727693))

(assert (=> b!2570543 d!727537))

(assert (=> d!727321 d!727335))

(declare-fun d!727747 () Bool)

(assert (=> d!727747 (= (matchR!3582 lt!905919 tl!4068) (matchR!3582 (derivative!334 lt!905919 tl!4068) Nil!29604))))

(assert (=> d!727747 true))

(declare-fun _$108!407 () Unit!43459)

(assert (=> d!727747 (= (choose!15165 lt!905919 tl!4068) _$108!407)))

(declare-fun bs!470062 () Bool)

(assert (= bs!470062 d!727747))

(assert (=> bs!470062 m!2906931))

(assert (=> bs!470062 m!2906937))

(assert (=> bs!470062 m!2906937))

(assert (=> bs!470062 m!2906941))

(assert (=> d!727321 d!727747))

(assert (=> d!727321 d!727323))

(assert (=> d!727321 d!727633))

(assert (=> d!727321 d!727329))

(declare-fun b!2572274 () Bool)

(declare-fun call!166109 () Regex!7639)

(declare-fun e!1623341 () Regex!7639)

(assert (=> b!2572274 (= e!1623341 (Concat!12335 call!166109 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))))))

(declare-fun d!727749 () Bool)

(declare-fun lt!906108 () Regex!7639)

(assert (=> d!727749 (validRegex!3265 lt!906108)))

(declare-fun e!1623340 () Regex!7639)

(assert (=> d!727749 (= lt!906108 e!1623340)))

(declare-fun c!414077 () Bool)

(assert (=> d!727749 (= c!414077 (or ((_ is EmptyExpr!7639) (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))) ((_ is EmptyLang!7639) (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)))))))

(assert (=> d!727749 (validRegex!3265 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)))))

(assert (=> d!727749 (= (derivativeStep!2208 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)) c!14016) lt!906108)))

(declare-fun bm!166101 () Bool)

(declare-fun call!166108 () Regex!7639)

(declare-fun c!414081 () Bool)

(assert (=> bm!166101 (= call!166108 (derivativeStep!2208 (ite c!414081 (regTwo!15791 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))) (regTwo!15790 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)))) c!14016))))

(declare-fun b!2572275 () Bool)

(declare-fun e!1623339 () Regex!7639)

(assert (=> b!2572275 (= e!1623340 e!1623339)))

(declare-fun c!414080 () Bool)

(assert (=> b!2572275 (= c!414080 ((_ is ElementMatch!7639) (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))))))

(declare-fun b!2572276 () Bool)

(declare-fun e!1623342 () Regex!7639)

(assert (=> b!2572276 (= e!1623342 e!1623341)))

(declare-fun c!414079 () Bool)

(assert (=> b!2572276 (= c!414079 ((_ is Star!7639) (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))))))

(declare-fun b!2572277 () Bool)

(declare-fun c!414078 () Bool)

(assert (=> b!2572277 (= c!414078 (nullable!2556 (regOne!15790 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)))))))

(declare-fun e!1623338 () Regex!7639)

(assert (=> b!2572277 (= e!1623341 e!1623338)))

(declare-fun b!2572278 () Bool)

(assert (=> b!2572278 (= e!1623340 EmptyLang!7639)))

(declare-fun b!2572279 () Bool)

(assert (=> b!2572279 (= e!1623339 (ite (= c!14016 (c!413611 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)))) EmptyExpr!7639 EmptyLang!7639))))

(declare-fun call!166107 () Regex!7639)

(declare-fun b!2572280 () Bool)

(assert (=> b!2572280 (= e!1623338 (Union!7639 (Concat!12335 call!166107 (regTwo!15790 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)))) call!166108))))

(declare-fun bm!166102 () Bool)

(assert (=> bm!166102 (= call!166107 call!166109)))

(declare-fun bm!166103 () Bool)

(declare-fun call!166106 () Regex!7639)

(assert (=> bm!166103 (= call!166109 call!166106)))

(declare-fun b!2572281 () Bool)

(assert (=> b!2572281 (= e!1623338 (Union!7639 (Concat!12335 call!166107 (regTwo!15790 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340)))) EmptyLang!7639))))

(declare-fun b!2572282 () Bool)

(assert (=> b!2572282 (= c!414081 ((_ is Union!7639) (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))))))

(assert (=> b!2572282 (= e!1623339 e!1623342)))

(declare-fun b!2572283 () Bool)

(assert (=> b!2572283 (= e!1623342 (Union!7639 call!166106 call!166108))))

(declare-fun bm!166104 () Bool)

(assert (=> bm!166104 (= call!166106 (derivativeStep!2208 (ite c!414081 (regOne!15791 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))) (ite c!414079 (reg!7968 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))) (regOne!15790 (ite c!413741 (regTwo!15791 r!27340) (regTwo!15790 r!27340))))) c!14016))))

(assert (= (and d!727749 c!414077) b!2572278))

(assert (= (and d!727749 (not c!414077)) b!2572275))

(assert (= (and b!2572275 c!414080) b!2572279))

(assert (= (and b!2572275 (not c!414080)) b!2572282))

(assert (= (and b!2572282 c!414081) b!2572283))

(assert (= (and b!2572282 (not c!414081)) b!2572276))

(assert (= (and b!2572276 c!414079) b!2572274))

(assert (= (and b!2572276 (not c!414079)) b!2572277))

(assert (= (and b!2572277 c!414078) b!2572280))

(assert (= (and b!2572277 (not c!414078)) b!2572281))

(assert (= (or b!2572280 b!2572281) bm!166102))

(assert (= (or b!2572274 bm!166102) bm!166103))

(assert (= (or b!2572283 b!2572280) bm!166101))

(assert (= (or b!2572283 bm!166103) bm!166104))

(declare-fun m!2908333 () Bool)

(assert (=> d!727749 m!2908333))

(declare-fun m!2908335 () Bool)

(assert (=> d!727749 m!2908335))

(declare-fun m!2908337 () Bool)

(assert (=> bm!166101 m!2908337))

(declare-fun m!2908339 () Bool)

(assert (=> b!2572277 m!2908339))

(declare-fun m!2908341 () Bool)

(assert (=> bm!166104 m!2908341))

(assert (=> bm!165838 d!727749))

(assert (=> b!2571069 d!727511))

(assert (=> b!2571069 d!727513))

(declare-fun d!727751 () Bool)

(assert (=> d!727751 (= (nullable!2556 (regTwo!15790 r!27340)) (nullableFct!781 (regTwo!15790 r!27340)))))

(declare-fun bs!470063 () Bool)

(assert (= bs!470063 d!727751))

(declare-fun m!2908343 () Bool)

(assert (=> bs!470063 m!2908343))

(assert (=> b!2570754 d!727751))

(assert (=> b!2570959 d!727567))

(declare-fun e!1623343 () Bool)

(assert (=> b!2571084 (= tp!817934 e!1623343)))

(declare-fun b!2572285 () Bool)

(declare-fun tp!818085 () Bool)

(declare-fun tp!818087 () Bool)

(assert (=> b!2572285 (= e!1623343 (and tp!818085 tp!818087))))

(declare-fun b!2572286 () Bool)

(declare-fun tp!818088 () Bool)

(assert (=> b!2572286 (= e!1623343 tp!818088)))

(declare-fun b!2572287 () Bool)

(declare-fun tp!818086 () Bool)

(declare-fun tp!818089 () Bool)

(assert (=> b!2572287 (= e!1623343 (and tp!818086 tp!818089))))

(declare-fun b!2572284 () Bool)

(assert (=> b!2572284 (= e!1623343 tp_is_empty!13133)))

(assert (= (and b!2571084 ((_ is ElementMatch!7639) (reg!7968 (regOne!15790 r!27340)))) b!2572284))

(assert (= (and b!2571084 ((_ is Concat!12335) (reg!7968 (regOne!15790 r!27340)))) b!2572285))

(assert (= (and b!2571084 ((_ is Star!7639) (reg!7968 (regOne!15790 r!27340)))) b!2572286))

(assert (= (and b!2571084 ((_ is Union!7639) (reg!7968 (regOne!15790 r!27340)))) b!2572287))

(declare-fun e!1623344 () Bool)

(assert (=> b!2571093 (= tp!817942 e!1623344)))

(declare-fun b!2572289 () Bool)

(declare-fun tp!818090 () Bool)

(declare-fun tp!818092 () Bool)

(assert (=> b!2572289 (= e!1623344 (and tp!818090 tp!818092))))

(declare-fun b!2572290 () Bool)

(declare-fun tp!818093 () Bool)

(assert (=> b!2572290 (= e!1623344 tp!818093)))

(declare-fun b!2572291 () Bool)

(declare-fun tp!818091 () Bool)

(declare-fun tp!818094 () Bool)

(assert (=> b!2572291 (= e!1623344 (and tp!818091 tp!818094))))

(declare-fun b!2572288 () Bool)

(assert (=> b!2572288 (= e!1623344 tp_is_empty!13133)))

(assert (= (and b!2571093 ((_ is ElementMatch!7639) (regOne!15791 (regOne!15791 r!27340)))) b!2572288))

(assert (= (and b!2571093 ((_ is Concat!12335) (regOne!15791 (regOne!15791 r!27340)))) b!2572289))

(assert (= (and b!2571093 ((_ is Star!7639) (regOne!15791 (regOne!15791 r!27340)))) b!2572290))

(assert (= (and b!2571093 ((_ is Union!7639) (regOne!15791 (regOne!15791 r!27340)))) b!2572291))

(declare-fun e!1623345 () Bool)

(assert (=> b!2571093 (= tp!817945 e!1623345)))

(declare-fun b!2572293 () Bool)

(declare-fun tp!818095 () Bool)

(declare-fun tp!818097 () Bool)

(assert (=> b!2572293 (= e!1623345 (and tp!818095 tp!818097))))

(declare-fun b!2572294 () Bool)

(declare-fun tp!818098 () Bool)

(assert (=> b!2572294 (= e!1623345 tp!818098)))

(declare-fun b!2572295 () Bool)

(declare-fun tp!818096 () Bool)

(declare-fun tp!818099 () Bool)

(assert (=> b!2572295 (= e!1623345 (and tp!818096 tp!818099))))

(declare-fun b!2572292 () Bool)

(assert (=> b!2572292 (= e!1623345 tp_is_empty!13133)))

(assert (= (and b!2571093 ((_ is ElementMatch!7639) (regTwo!15791 (regOne!15791 r!27340)))) b!2572292))

(assert (= (and b!2571093 ((_ is Concat!12335) (regTwo!15791 (regOne!15791 r!27340)))) b!2572293))

(assert (= (and b!2571093 ((_ is Star!7639) (regTwo!15791 (regOne!15791 r!27340)))) b!2572294))

(assert (= (and b!2571093 ((_ is Union!7639) (regTwo!15791 (regOne!15791 r!27340)))) b!2572295))

(declare-fun e!1623346 () Bool)

(assert (=> b!2571089 (= tp!817937 e!1623346)))

(declare-fun b!2572297 () Bool)

(declare-fun tp!818100 () Bool)

(declare-fun tp!818102 () Bool)

(assert (=> b!2572297 (= e!1623346 (and tp!818100 tp!818102))))

(declare-fun b!2572298 () Bool)

(declare-fun tp!818103 () Bool)

(assert (=> b!2572298 (= e!1623346 tp!818103)))

(declare-fun b!2572299 () Bool)

(declare-fun tp!818101 () Bool)

(declare-fun tp!818104 () Bool)

(assert (=> b!2572299 (= e!1623346 (and tp!818101 tp!818104))))

(declare-fun b!2572296 () Bool)

(assert (=> b!2572296 (= e!1623346 tp_is_empty!13133)))

(assert (= (and b!2571089 ((_ is ElementMatch!7639) (regOne!15791 (regTwo!15790 r!27340)))) b!2572296))

(assert (= (and b!2571089 ((_ is Concat!12335) (regOne!15791 (regTwo!15790 r!27340)))) b!2572297))

(assert (= (and b!2571089 ((_ is Star!7639) (regOne!15791 (regTwo!15790 r!27340)))) b!2572298))

(assert (= (and b!2571089 ((_ is Union!7639) (regOne!15791 (regTwo!15790 r!27340)))) b!2572299))

(declare-fun e!1623347 () Bool)

(assert (=> b!2571089 (= tp!817940 e!1623347)))

(declare-fun b!2572301 () Bool)

(declare-fun tp!818105 () Bool)

(declare-fun tp!818107 () Bool)

(assert (=> b!2572301 (= e!1623347 (and tp!818105 tp!818107))))

(declare-fun b!2572302 () Bool)

(declare-fun tp!818108 () Bool)

(assert (=> b!2572302 (= e!1623347 tp!818108)))

(declare-fun b!2572303 () Bool)

(declare-fun tp!818106 () Bool)

(declare-fun tp!818109 () Bool)

(assert (=> b!2572303 (= e!1623347 (and tp!818106 tp!818109))))

(declare-fun b!2572300 () Bool)

(assert (=> b!2572300 (= e!1623347 tp_is_empty!13133)))

(assert (= (and b!2571089 ((_ is ElementMatch!7639) (regTwo!15791 (regTwo!15790 r!27340)))) b!2572300))

(assert (= (and b!2571089 ((_ is Concat!12335) (regTwo!15791 (regTwo!15790 r!27340)))) b!2572301))

(assert (= (and b!2571089 ((_ is Star!7639) (regTwo!15791 (regTwo!15790 r!27340)))) b!2572302))

(assert (= (and b!2571089 ((_ is Union!7639) (regTwo!15791 (regTwo!15790 r!27340)))) b!2572303))

(declare-fun e!1623348 () Bool)

(assert (=> b!2571088 (= tp!817939 e!1623348)))

(declare-fun b!2572305 () Bool)

(declare-fun tp!818110 () Bool)

(declare-fun tp!818112 () Bool)

(assert (=> b!2572305 (= e!1623348 (and tp!818110 tp!818112))))

(declare-fun b!2572306 () Bool)

(declare-fun tp!818113 () Bool)

(assert (=> b!2572306 (= e!1623348 tp!818113)))

(declare-fun b!2572307 () Bool)

(declare-fun tp!818111 () Bool)

(declare-fun tp!818114 () Bool)

(assert (=> b!2572307 (= e!1623348 (and tp!818111 tp!818114))))

(declare-fun b!2572304 () Bool)

(assert (=> b!2572304 (= e!1623348 tp_is_empty!13133)))

(assert (= (and b!2571088 ((_ is ElementMatch!7639) (reg!7968 (regTwo!15790 r!27340)))) b!2572304))

(assert (= (and b!2571088 ((_ is Concat!12335) (reg!7968 (regTwo!15790 r!27340)))) b!2572305))

(assert (= (and b!2571088 ((_ is Star!7639) (reg!7968 (regTwo!15790 r!27340)))) b!2572306))

(assert (= (and b!2571088 ((_ is Union!7639) (reg!7968 (regTwo!15790 r!27340)))) b!2572307))

(declare-fun e!1623349 () Bool)

(assert (=> b!2571083 (= tp!817931 e!1623349)))

(declare-fun b!2572309 () Bool)

(declare-fun tp!818115 () Bool)

(declare-fun tp!818117 () Bool)

(assert (=> b!2572309 (= e!1623349 (and tp!818115 tp!818117))))

(declare-fun b!2572310 () Bool)

(declare-fun tp!818118 () Bool)

(assert (=> b!2572310 (= e!1623349 tp!818118)))

(declare-fun b!2572311 () Bool)

(declare-fun tp!818116 () Bool)

(declare-fun tp!818119 () Bool)

(assert (=> b!2572311 (= e!1623349 (and tp!818116 tp!818119))))

(declare-fun b!2572308 () Bool)

(assert (=> b!2572308 (= e!1623349 tp_is_empty!13133)))

(assert (= (and b!2571083 ((_ is ElementMatch!7639) (regOne!15790 (regOne!15790 r!27340)))) b!2572308))

(assert (= (and b!2571083 ((_ is Concat!12335) (regOne!15790 (regOne!15790 r!27340)))) b!2572309))

(assert (= (and b!2571083 ((_ is Star!7639) (regOne!15790 (regOne!15790 r!27340)))) b!2572310))

(assert (= (and b!2571083 ((_ is Union!7639) (regOne!15790 (regOne!15790 r!27340)))) b!2572311))

(declare-fun e!1623350 () Bool)

(assert (=> b!2571083 (= tp!817933 e!1623350)))

(declare-fun b!2572313 () Bool)

(declare-fun tp!818120 () Bool)

(declare-fun tp!818122 () Bool)

(assert (=> b!2572313 (= e!1623350 (and tp!818120 tp!818122))))

(declare-fun b!2572314 () Bool)

(declare-fun tp!818123 () Bool)

(assert (=> b!2572314 (= e!1623350 tp!818123)))

(declare-fun b!2572315 () Bool)

(declare-fun tp!818121 () Bool)

(declare-fun tp!818124 () Bool)

(assert (=> b!2572315 (= e!1623350 (and tp!818121 tp!818124))))

(declare-fun b!2572312 () Bool)

(assert (=> b!2572312 (= e!1623350 tp_is_empty!13133)))

(assert (= (and b!2571083 ((_ is ElementMatch!7639) (regTwo!15790 (regOne!15790 r!27340)))) b!2572312))

(assert (= (and b!2571083 ((_ is Concat!12335) (regTwo!15790 (regOne!15790 r!27340)))) b!2572313))

(assert (= (and b!2571083 ((_ is Star!7639) (regTwo!15790 (regOne!15790 r!27340)))) b!2572314))

(assert (= (and b!2571083 ((_ is Union!7639) (regTwo!15790 (regOne!15790 r!27340)))) b!2572315))

(declare-fun e!1623351 () Bool)

(assert (=> b!2571096 (= tp!817949 e!1623351)))

(declare-fun b!2572317 () Bool)

(declare-fun tp!818125 () Bool)

(declare-fun tp!818127 () Bool)

(assert (=> b!2572317 (= e!1623351 (and tp!818125 tp!818127))))

(declare-fun b!2572318 () Bool)

(declare-fun tp!818128 () Bool)

(assert (=> b!2572318 (= e!1623351 tp!818128)))

(declare-fun b!2572319 () Bool)

(declare-fun tp!818126 () Bool)

(declare-fun tp!818129 () Bool)

(assert (=> b!2572319 (= e!1623351 (and tp!818126 tp!818129))))

(declare-fun b!2572316 () Bool)

(assert (=> b!2572316 (= e!1623351 tp_is_empty!13133)))

(assert (= (and b!2571096 ((_ is ElementMatch!7639) (reg!7968 (regTwo!15791 r!27340)))) b!2572316))

(assert (= (and b!2571096 ((_ is Concat!12335) (reg!7968 (regTwo!15791 r!27340)))) b!2572317))

(assert (= (and b!2571096 ((_ is Star!7639) (reg!7968 (regTwo!15791 r!27340)))) b!2572318))

(assert (= (and b!2571096 ((_ is Union!7639) (reg!7968 (regTwo!15791 r!27340)))) b!2572319))

(declare-fun e!1623352 () Bool)

(assert (=> b!2571097 (= tp!817947 e!1623352)))

(declare-fun b!2572321 () Bool)

(declare-fun tp!818130 () Bool)

(declare-fun tp!818132 () Bool)

(assert (=> b!2572321 (= e!1623352 (and tp!818130 tp!818132))))

(declare-fun b!2572322 () Bool)

(declare-fun tp!818133 () Bool)

(assert (=> b!2572322 (= e!1623352 tp!818133)))

(declare-fun b!2572323 () Bool)

(declare-fun tp!818131 () Bool)

(declare-fun tp!818134 () Bool)

(assert (=> b!2572323 (= e!1623352 (and tp!818131 tp!818134))))

(declare-fun b!2572320 () Bool)

(assert (=> b!2572320 (= e!1623352 tp_is_empty!13133)))

(assert (= (and b!2571097 ((_ is ElementMatch!7639) (regOne!15791 (regTwo!15791 r!27340)))) b!2572320))

(assert (= (and b!2571097 ((_ is Concat!12335) (regOne!15791 (regTwo!15791 r!27340)))) b!2572321))

(assert (= (and b!2571097 ((_ is Star!7639) (regOne!15791 (regTwo!15791 r!27340)))) b!2572322))

(assert (= (and b!2571097 ((_ is Union!7639) (regOne!15791 (regTwo!15791 r!27340)))) b!2572323))

(declare-fun e!1623353 () Bool)

(assert (=> b!2571097 (= tp!817950 e!1623353)))

(declare-fun b!2572325 () Bool)

(declare-fun tp!818135 () Bool)

(declare-fun tp!818137 () Bool)

(assert (=> b!2572325 (= e!1623353 (and tp!818135 tp!818137))))

(declare-fun b!2572326 () Bool)

(declare-fun tp!818138 () Bool)

(assert (=> b!2572326 (= e!1623353 tp!818138)))

(declare-fun b!2572327 () Bool)

(declare-fun tp!818136 () Bool)

(declare-fun tp!818139 () Bool)

(assert (=> b!2572327 (= e!1623353 (and tp!818136 tp!818139))))

(declare-fun b!2572324 () Bool)

(assert (=> b!2572324 (= e!1623353 tp_is_empty!13133)))

(assert (= (and b!2571097 ((_ is ElementMatch!7639) (regTwo!15791 (regTwo!15791 r!27340)))) b!2572324))

(assert (= (and b!2571097 ((_ is Concat!12335) (regTwo!15791 (regTwo!15791 r!27340)))) b!2572325))

(assert (= (and b!2571097 ((_ is Star!7639) (regTwo!15791 (regTwo!15791 r!27340)))) b!2572326))

(assert (= (and b!2571097 ((_ is Union!7639) (regTwo!15791 (regTwo!15791 r!27340)))) b!2572327))

(declare-fun e!1623354 () Bool)

(assert (=> b!2571087 (= tp!817936 e!1623354)))

(declare-fun b!2572329 () Bool)

(declare-fun tp!818140 () Bool)

(declare-fun tp!818142 () Bool)

(assert (=> b!2572329 (= e!1623354 (and tp!818140 tp!818142))))

(declare-fun b!2572330 () Bool)

(declare-fun tp!818143 () Bool)

(assert (=> b!2572330 (= e!1623354 tp!818143)))

(declare-fun b!2572331 () Bool)

(declare-fun tp!818141 () Bool)

(declare-fun tp!818144 () Bool)

(assert (=> b!2572331 (= e!1623354 (and tp!818141 tp!818144))))

(declare-fun b!2572328 () Bool)

(assert (=> b!2572328 (= e!1623354 tp_is_empty!13133)))

(assert (= (and b!2571087 ((_ is ElementMatch!7639) (regOne!15790 (regTwo!15790 r!27340)))) b!2572328))

(assert (= (and b!2571087 ((_ is Concat!12335) (regOne!15790 (regTwo!15790 r!27340)))) b!2572329))

(assert (= (and b!2571087 ((_ is Star!7639) (regOne!15790 (regTwo!15790 r!27340)))) b!2572330))

(assert (= (and b!2571087 ((_ is Union!7639) (regOne!15790 (regTwo!15790 r!27340)))) b!2572331))

(declare-fun e!1623355 () Bool)

(assert (=> b!2571087 (= tp!817938 e!1623355)))

(declare-fun b!2572333 () Bool)

(declare-fun tp!818145 () Bool)

(declare-fun tp!818147 () Bool)

(assert (=> b!2572333 (= e!1623355 (and tp!818145 tp!818147))))

(declare-fun b!2572334 () Bool)

(declare-fun tp!818148 () Bool)

(assert (=> b!2572334 (= e!1623355 tp!818148)))

(declare-fun b!2572335 () Bool)

(declare-fun tp!818146 () Bool)

(declare-fun tp!818149 () Bool)

(assert (=> b!2572335 (= e!1623355 (and tp!818146 tp!818149))))

(declare-fun b!2572332 () Bool)

(assert (=> b!2572332 (= e!1623355 tp_is_empty!13133)))

(assert (= (and b!2571087 ((_ is ElementMatch!7639) (regTwo!15790 (regTwo!15790 r!27340)))) b!2572332))

(assert (= (and b!2571087 ((_ is Concat!12335) (regTwo!15790 (regTwo!15790 r!27340)))) b!2572333))

(assert (= (and b!2571087 ((_ is Star!7639) (regTwo!15790 (regTwo!15790 r!27340)))) b!2572334))

(assert (= (and b!2571087 ((_ is Union!7639) (regTwo!15790 (regTwo!15790 r!27340)))) b!2572335))

(declare-fun e!1623356 () Bool)

(assert (=> b!2571092 (= tp!817944 e!1623356)))

(declare-fun b!2572337 () Bool)

(declare-fun tp!818150 () Bool)

(declare-fun tp!818152 () Bool)

(assert (=> b!2572337 (= e!1623356 (and tp!818150 tp!818152))))

(declare-fun b!2572338 () Bool)

(declare-fun tp!818153 () Bool)

(assert (=> b!2572338 (= e!1623356 tp!818153)))

(declare-fun b!2572339 () Bool)

(declare-fun tp!818151 () Bool)

(declare-fun tp!818154 () Bool)

(assert (=> b!2572339 (= e!1623356 (and tp!818151 tp!818154))))

(declare-fun b!2572336 () Bool)

(assert (=> b!2572336 (= e!1623356 tp_is_empty!13133)))

(assert (= (and b!2571092 ((_ is ElementMatch!7639) (reg!7968 (regOne!15791 r!27340)))) b!2572336))

(assert (= (and b!2571092 ((_ is Concat!12335) (reg!7968 (regOne!15791 r!27340)))) b!2572337))

(assert (= (and b!2571092 ((_ is Star!7639) (reg!7968 (regOne!15791 r!27340)))) b!2572338))

(assert (= (and b!2571092 ((_ is Union!7639) (reg!7968 (regOne!15791 r!27340)))) b!2572339))

(declare-fun e!1623357 () Bool)

(assert (=> b!2571106 (= tp!817955 e!1623357)))

(declare-fun b!2572341 () Bool)

(declare-fun tp!818155 () Bool)

(declare-fun tp!818157 () Bool)

(assert (=> b!2572341 (= e!1623357 (and tp!818155 tp!818157))))

(declare-fun b!2572342 () Bool)

(declare-fun tp!818158 () Bool)

(assert (=> b!2572342 (= e!1623357 tp!818158)))

(declare-fun b!2572343 () Bool)

(declare-fun tp!818156 () Bool)

(declare-fun tp!818159 () Bool)

(assert (=> b!2572343 (= e!1623357 (and tp!818156 tp!818159))))

(declare-fun b!2572340 () Bool)

(assert (=> b!2572340 (= e!1623357 tp_is_empty!13133)))

(assert (= (and b!2571106 ((_ is ElementMatch!7639) (regOne!15791 (reg!7968 r!27340)))) b!2572340))

(assert (= (and b!2571106 ((_ is Concat!12335) (regOne!15791 (reg!7968 r!27340)))) b!2572341))

(assert (= (and b!2571106 ((_ is Star!7639) (regOne!15791 (reg!7968 r!27340)))) b!2572342))

(assert (= (and b!2571106 ((_ is Union!7639) (regOne!15791 (reg!7968 r!27340)))) b!2572343))

(declare-fun e!1623358 () Bool)

(assert (=> b!2571106 (= tp!817958 e!1623358)))

(declare-fun b!2572345 () Bool)

(declare-fun tp!818160 () Bool)

(declare-fun tp!818162 () Bool)

(assert (=> b!2572345 (= e!1623358 (and tp!818160 tp!818162))))

(declare-fun b!2572346 () Bool)

(declare-fun tp!818163 () Bool)

(assert (=> b!2572346 (= e!1623358 tp!818163)))

(declare-fun b!2572347 () Bool)

(declare-fun tp!818161 () Bool)

(declare-fun tp!818164 () Bool)

(assert (=> b!2572347 (= e!1623358 (and tp!818161 tp!818164))))

(declare-fun b!2572344 () Bool)

(assert (=> b!2572344 (= e!1623358 tp_is_empty!13133)))

(assert (= (and b!2571106 ((_ is ElementMatch!7639) (regTwo!15791 (reg!7968 r!27340)))) b!2572344))

(assert (= (and b!2571106 ((_ is Concat!12335) (regTwo!15791 (reg!7968 r!27340)))) b!2572345))

(assert (= (and b!2571106 ((_ is Star!7639) (regTwo!15791 (reg!7968 r!27340)))) b!2572346))

(assert (= (and b!2571106 ((_ is Union!7639) (regTwo!15791 (reg!7968 r!27340)))) b!2572347))

(declare-fun e!1623359 () Bool)

(assert (=> b!2571104 (= tp!817954 e!1623359)))

(declare-fun b!2572349 () Bool)

(declare-fun tp!818165 () Bool)

(declare-fun tp!818167 () Bool)

(assert (=> b!2572349 (= e!1623359 (and tp!818165 tp!818167))))

(declare-fun b!2572350 () Bool)

(declare-fun tp!818168 () Bool)

(assert (=> b!2572350 (= e!1623359 tp!818168)))

(declare-fun b!2572351 () Bool)

(declare-fun tp!818166 () Bool)

(declare-fun tp!818169 () Bool)

(assert (=> b!2572351 (= e!1623359 (and tp!818166 tp!818169))))

(declare-fun b!2572348 () Bool)

(assert (=> b!2572348 (= e!1623359 tp_is_empty!13133)))

(assert (= (and b!2571104 ((_ is ElementMatch!7639) (regOne!15790 (reg!7968 r!27340)))) b!2572348))

(assert (= (and b!2571104 ((_ is Concat!12335) (regOne!15790 (reg!7968 r!27340)))) b!2572349))

(assert (= (and b!2571104 ((_ is Star!7639) (regOne!15790 (reg!7968 r!27340)))) b!2572350))

(assert (= (and b!2571104 ((_ is Union!7639) (regOne!15790 (reg!7968 r!27340)))) b!2572351))

(declare-fun e!1623360 () Bool)

(assert (=> b!2571104 (= tp!817956 e!1623360)))

(declare-fun b!2572353 () Bool)

(declare-fun tp!818170 () Bool)

(declare-fun tp!818172 () Bool)

(assert (=> b!2572353 (= e!1623360 (and tp!818170 tp!818172))))

(declare-fun b!2572354 () Bool)

(declare-fun tp!818173 () Bool)

(assert (=> b!2572354 (= e!1623360 tp!818173)))

(declare-fun b!2572355 () Bool)

(declare-fun tp!818171 () Bool)

(declare-fun tp!818174 () Bool)

(assert (=> b!2572355 (= e!1623360 (and tp!818171 tp!818174))))

(declare-fun b!2572352 () Bool)

(assert (=> b!2572352 (= e!1623360 tp_is_empty!13133)))

(assert (= (and b!2571104 ((_ is ElementMatch!7639) (regTwo!15790 (reg!7968 r!27340)))) b!2572352))

(assert (= (and b!2571104 ((_ is Concat!12335) (regTwo!15790 (reg!7968 r!27340)))) b!2572353))

(assert (= (and b!2571104 ((_ is Star!7639) (regTwo!15790 (reg!7968 r!27340)))) b!2572354))

(assert (= (and b!2571104 ((_ is Union!7639) (regTwo!15790 (reg!7968 r!27340)))) b!2572355))

(declare-fun e!1623361 () Bool)

(assert (=> b!2571105 (= tp!817957 e!1623361)))

(declare-fun b!2572357 () Bool)

(declare-fun tp!818175 () Bool)

(declare-fun tp!818177 () Bool)

(assert (=> b!2572357 (= e!1623361 (and tp!818175 tp!818177))))

(declare-fun b!2572358 () Bool)

(declare-fun tp!818178 () Bool)

(assert (=> b!2572358 (= e!1623361 tp!818178)))

(declare-fun b!2572359 () Bool)

(declare-fun tp!818176 () Bool)

(declare-fun tp!818179 () Bool)

(assert (=> b!2572359 (= e!1623361 (and tp!818176 tp!818179))))

(declare-fun b!2572356 () Bool)

(assert (=> b!2572356 (= e!1623361 tp_is_empty!13133)))

(assert (= (and b!2571105 ((_ is ElementMatch!7639) (reg!7968 (reg!7968 r!27340)))) b!2572356))

(assert (= (and b!2571105 ((_ is Concat!12335) (reg!7968 (reg!7968 r!27340)))) b!2572357))

(assert (= (and b!2571105 ((_ is Star!7639) (reg!7968 (reg!7968 r!27340)))) b!2572358))

(assert (= (and b!2571105 ((_ is Union!7639) (reg!7968 (reg!7968 r!27340)))) b!2572359))

(declare-fun e!1623362 () Bool)

(assert (=> b!2571085 (= tp!817932 e!1623362)))

(declare-fun b!2572361 () Bool)

(declare-fun tp!818180 () Bool)

(declare-fun tp!818182 () Bool)

(assert (=> b!2572361 (= e!1623362 (and tp!818180 tp!818182))))

(declare-fun b!2572362 () Bool)

(declare-fun tp!818183 () Bool)

(assert (=> b!2572362 (= e!1623362 tp!818183)))

(declare-fun b!2572363 () Bool)

(declare-fun tp!818181 () Bool)

(declare-fun tp!818184 () Bool)

(assert (=> b!2572363 (= e!1623362 (and tp!818181 tp!818184))))

(declare-fun b!2572360 () Bool)

(assert (=> b!2572360 (= e!1623362 tp_is_empty!13133)))

(assert (= (and b!2571085 ((_ is ElementMatch!7639) (regOne!15791 (regOne!15790 r!27340)))) b!2572360))

(assert (= (and b!2571085 ((_ is Concat!12335) (regOne!15791 (regOne!15790 r!27340)))) b!2572361))

(assert (= (and b!2571085 ((_ is Star!7639) (regOne!15791 (regOne!15790 r!27340)))) b!2572362))

(assert (= (and b!2571085 ((_ is Union!7639) (regOne!15791 (regOne!15790 r!27340)))) b!2572363))

(declare-fun e!1623363 () Bool)

(assert (=> b!2571085 (= tp!817935 e!1623363)))

(declare-fun b!2572365 () Bool)

(declare-fun tp!818185 () Bool)

(declare-fun tp!818187 () Bool)

(assert (=> b!2572365 (= e!1623363 (and tp!818185 tp!818187))))

(declare-fun b!2572366 () Bool)

(declare-fun tp!818188 () Bool)

(assert (=> b!2572366 (= e!1623363 tp!818188)))

(declare-fun b!2572367 () Bool)

(declare-fun tp!818186 () Bool)

(declare-fun tp!818189 () Bool)

(assert (=> b!2572367 (= e!1623363 (and tp!818186 tp!818189))))

(declare-fun b!2572364 () Bool)

(assert (=> b!2572364 (= e!1623363 tp_is_empty!13133)))

(assert (= (and b!2571085 ((_ is ElementMatch!7639) (regTwo!15791 (regOne!15790 r!27340)))) b!2572364))

(assert (= (and b!2571085 ((_ is Concat!12335) (regTwo!15791 (regOne!15790 r!27340)))) b!2572365))

(assert (= (and b!2571085 ((_ is Star!7639) (regTwo!15791 (regOne!15790 r!27340)))) b!2572366))

(assert (= (and b!2571085 ((_ is Union!7639) (regTwo!15791 (regOne!15790 r!27340)))) b!2572367))

(declare-fun b!2572368 () Bool)

(declare-fun e!1623364 () Bool)

(declare-fun tp!818190 () Bool)

(assert (=> b!2572368 (= e!1623364 (and tp_is_empty!13133 tp!818190))))

(assert (=> b!2571102 (= tp!817953 e!1623364)))

(assert (= (and b!2571102 ((_ is Cons!29604) (t!211403 (t!211403 tl!4068)))) b!2572368))

(declare-fun e!1623365 () Bool)

(assert (=> b!2571095 (= tp!817946 e!1623365)))

(declare-fun b!2572370 () Bool)

(declare-fun tp!818191 () Bool)

(declare-fun tp!818193 () Bool)

(assert (=> b!2572370 (= e!1623365 (and tp!818191 tp!818193))))

(declare-fun b!2572371 () Bool)

(declare-fun tp!818194 () Bool)

(assert (=> b!2572371 (= e!1623365 tp!818194)))

(declare-fun b!2572372 () Bool)

(declare-fun tp!818192 () Bool)

(declare-fun tp!818195 () Bool)

(assert (=> b!2572372 (= e!1623365 (and tp!818192 tp!818195))))

(declare-fun b!2572369 () Bool)

(assert (=> b!2572369 (= e!1623365 tp_is_empty!13133)))

(assert (= (and b!2571095 ((_ is ElementMatch!7639) (regOne!15790 (regTwo!15791 r!27340)))) b!2572369))

(assert (= (and b!2571095 ((_ is Concat!12335) (regOne!15790 (regTwo!15791 r!27340)))) b!2572370))

(assert (= (and b!2571095 ((_ is Star!7639) (regOne!15790 (regTwo!15791 r!27340)))) b!2572371))

(assert (= (and b!2571095 ((_ is Union!7639) (regOne!15790 (regTwo!15791 r!27340)))) b!2572372))

(declare-fun e!1623366 () Bool)

(assert (=> b!2571095 (= tp!817948 e!1623366)))

(declare-fun b!2572374 () Bool)

(declare-fun tp!818196 () Bool)

(declare-fun tp!818198 () Bool)

(assert (=> b!2572374 (= e!1623366 (and tp!818196 tp!818198))))

(declare-fun b!2572375 () Bool)

(declare-fun tp!818199 () Bool)

(assert (=> b!2572375 (= e!1623366 tp!818199)))

(declare-fun b!2572376 () Bool)

(declare-fun tp!818197 () Bool)

(declare-fun tp!818200 () Bool)

(assert (=> b!2572376 (= e!1623366 (and tp!818197 tp!818200))))

(declare-fun b!2572373 () Bool)

(assert (=> b!2572373 (= e!1623366 tp_is_empty!13133)))

(assert (= (and b!2571095 ((_ is ElementMatch!7639) (regTwo!15790 (regTwo!15791 r!27340)))) b!2572373))

(assert (= (and b!2571095 ((_ is Concat!12335) (regTwo!15790 (regTwo!15791 r!27340)))) b!2572374))

(assert (= (and b!2571095 ((_ is Star!7639) (regTwo!15790 (regTwo!15791 r!27340)))) b!2572375))

(assert (= (and b!2571095 ((_ is Union!7639) (regTwo!15790 (regTwo!15791 r!27340)))) b!2572376))

(declare-fun e!1623367 () Bool)

(assert (=> b!2571091 (= tp!817941 e!1623367)))

(declare-fun b!2572378 () Bool)

(declare-fun tp!818201 () Bool)

(declare-fun tp!818203 () Bool)

(assert (=> b!2572378 (= e!1623367 (and tp!818201 tp!818203))))

(declare-fun b!2572379 () Bool)

(declare-fun tp!818204 () Bool)

(assert (=> b!2572379 (= e!1623367 tp!818204)))

(declare-fun b!2572380 () Bool)

(declare-fun tp!818202 () Bool)

(declare-fun tp!818205 () Bool)

(assert (=> b!2572380 (= e!1623367 (and tp!818202 tp!818205))))

(declare-fun b!2572377 () Bool)

(assert (=> b!2572377 (= e!1623367 tp_is_empty!13133)))

(assert (= (and b!2571091 ((_ is ElementMatch!7639) (regOne!15790 (regOne!15791 r!27340)))) b!2572377))

(assert (= (and b!2571091 ((_ is Concat!12335) (regOne!15790 (regOne!15791 r!27340)))) b!2572378))

(assert (= (and b!2571091 ((_ is Star!7639) (regOne!15790 (regOne!15791 r!27340)))) b!2572379))

(assert (= (and b!2571091 ((_ is Union!7639) (regOne!15790 (regOne!15791 r!27340)))) b!2572380))

(declare-fun e!1623368 () Bool)

(assert (=> b!2571091 (= tp!817943 e!1623368)))

(declare-fun b!2572382 () Bool)

(declare-fun tp!818206 () Bool)

(declare-fun tp!818208 () Bool)

(assert (=> b!2572382 (= e!1623368 (and tp!818206 tp!818208))))

(declare-fun b!2572383 () Bool)

(declare-fun tp!818209 () Bool)

(assert (=> b!2572383 (= e!1623368 tp!818209)))

(declare-fun b!2572384 () Bool)

(declare-fun tp!818207 () Bool)

(declare-fun tp!818210 () Bool)

(assert (=> b!2572384 (= e!1623368 (and tp!818207 tp!818210))))

(declare-fun b!2572381 () Bool)

(assert (=> b!2572381 (= e!1623368 tp_is_empty!13133)))

(assert (= (and b!2571091 ((_ is ElementMatch!7639) (regTwo!15790 (regOne!15791 r!27340)))) b!2572381))

(assert (= (and b!2571091 ((_ is Concat!12335) (regTwo!15790 (regOne!15791 r!27340)))) b!2572382))

(assert (= (and b!2571091 ((_ is Star!7639) (regTwo!15790 (regOne!15791 r!27340)))) b!2572383))

(assert (= (and b!2571091 ((_ is Union!7639) (regTwo!15790 (regOne!15791 r!27340)))) b!2572384))

(check-sat (not b!2571862) (not bm!166025) (not bm!166054) (not b!2572004) (not d!727599) (not b!2572371) (not d!727691) (not bm!165968) (not d!727587) (not d!727581) (not d!727653) (not b!2571793) (not d!727651) (not b!2572183) (not bm!165996) (not b!2571910) (not b!2572354) (not d!727747) (not b!2572322) (not bm!166014) (not b!2571783) (not b!2572239) (not d!727689) (not b!2572053) (not b!2571791) (not b!2572176) (not bm!166050) (not b!2572024) (not b!2572121) (not b!2571968) (not d!727643) (not b!2571780) (not b!2572005) (not b!2572321) (not b!2571849) (not b!2572242) (not b!2572299) (not b!2572057) (not bm!166099) (not b!2572137) (not d!727609) (not bm!166087) (not bm!166022) (not b!2572307) (not bm!166021) (not b!2572306) (not b!2571537) (not d!727517) (not d!727687) (not b!2572379) (not bm!166051) (not b!2572349) (not bm!166041) (not d!727667) (not b!2572265) (not b!2572034) (not bm!166085) (not d!727681) (not b!2572229) (not b!2571832) (not b!2571533) (not b!2571935) (not b!2572297) (not b!2572003) (not b!2572011) (not b!2571965) (not bm!165994) (not d!727623) (not b!2572362) (not b!2572201) (not b!2572112) (not d!727649) (not b!2572355) (not b!2572150) (not b!2572295) (not b!2572365) (not b!2572091) (not b!2572315) (not b!2572055) (not d!727563) (not bm!166088) (not bm!166057) (not d!727729) (not b!2571941) (not b!2571543) (not b!2572192) (not d!727707) (not d!727749) (not b!2571911) (not b!2572026) (not bm!165997) (not b!2572252) (not b!2571900) (not bm!166052) (not b!2572310) (not b!2571781) (not b!2572028) (not b!2571873) (not d!727703) (not b!2572351) (not b!2571823) (not bm!165988) (not b!2572329) (not d!727579) (not b!2572143) (not bm!166072) (not d!727641) (not bm!165956) (not b!2572255) (not b!2571544) (not bm!166005) (not bm!165993) (not b!2571779) (not bm!166084) (not d!727669) (not b!2572345) (not b!2571928) (not b!2572363) (not b!2572374) (not b!2572313) (not bm!165995) (not bm!166043) (not bm!166059) (not bm!166062) (not b!2572001) (not b!2571808) (not bm!166013) (not b!2572302) tp_is_empty!13133 (not b!2571883) (not bm!165965) (not b!2571875) (not b!2572343) (not b!2572384) (not bm!166006) (not b!2572311) (not b!2571855) (not bm!166058) (not d!727673) (not b!2572230) (not bm!166004) (not b!2572072) (not d!727739) (not b!2572286) (not b!2572133) (not b!2571889) (not b!2571996) (not b!2572238) (not d!727575) (not b!2571833) (not b!2571836) (not b!2572358) (not b!2572376) (not b!2571846) (not b!2572293) (not bm!166035) (not bm!166061) (not b!2571934) (not b!2572370) (not bm!166097) (not b!2572314) (not b!2572342) (not b!2571902) (not b!2572262) (not b!2571596) (not b!2572219) (not b!2572375) (not d!727671) (not b!2572383) (not bm!166028) (not b!2571845) (not d!727639) (not b!2571977) (not b!2572135) (not b!2572228) (not b!2571877) (not bm!166079) (not b!2571967) (not b!2572144) (not bm!165999) (not d!727679) (not d!727565) (not b!2572353) (not b!2572132) (not bm!166023) (not b!2572041) (not b!2572289) (not bm!166017) (not b!2572347) (not bm!166065) (not b!2572253) (not b!2571925) (not bm!166093) (not bm!166008) (not b!2572339) (not bm!165987) (not d!727733) (not b!2571891) (not bm!166091) (not bm!166068) (not b!2572331) (not b!2572366) (not d!727751) (not b!2571824) (not b!2572017) (not b!2572317) (not bm!166064) (not b!2571997) (not b!2572338) (not b!2572326) (not bm!166082) (not bm!166012) (not b!2572323) (not bm!166098) (not b!2572327) (not b!2572335) (not bm!166026) (not d!727583) (not b!2572067) (not bm!166046) (not bm!166104) (not bm!166090) (not bm!165989) (not b!2572232) (not b!2571924) (not bm!166000) (not d!727597) (not b!2571884) (not b!2572303) (not b!2572325) (not b!2572337) (not b!2572367) (not d!727529) (not b!2572210) (not b!2572294) (not b!2571986) (not d!727573) (not b!2572341) (not d!727647) (not bm!166078) (not b!2572012) (not b!2571901) (not d!727615) (not b!2571888) (not bm!166029) (not b!2572372) (not b!2571951) (not d!727743) (not b!2572105) (not b!2571917) (not b!2572164) (not b!2572261) (not b!2572000) (not b!2572285) (not bm!166039) (not b!2572287) (not bm!166069) (not d!727655) (not b!2571822) (not d!727705) (not b!2572359) (not b!2572357) (not b!2571874) (not bm!166031) (not b!2572333) (not b!2572058) (not b!2572382) (not b!2572346) (not b!2571963) (not b!2572277) (not bm!166009) (not d!727735) (not b!2572035) (not bm!166074) (not d!727645) (not b!2572010) (not b!2572319) (not bm!166101) (not bm!166003) (not bm!165986) (not b!2571826) (not b!2571535) (not d!727611) (not b!2572251) (not b!2572025) (not bm!166040) (not d!727697) (not bm!166034) (not b!2571904) (not b!2571847) (not b!2571926) (not b!2572318) (not b!2572361) (not b!2572334) (not b!2572084) (not b!2572309) (not b!2572079) (not bm!166094) (not b!2571871) (not b!2572380) (not bm!166081) (not b!2572291) (not b!2572378) (not b!2571856) (not b!2572368) (not bm!166077) (not b!2572134) (not bm!166071) (not b!2572290) (not d!727617) (not bm!166018) (not d!727593) (not bm!166095) (not b!2572305) (not b!2571534) (not b!2572301) (not b!2572350) (not b!2572100) (not bm!166070) (not b!2572007) (not b!2571870) (not bm!165992) (not d!727603) (not b!2572330) (not b!2572298) (not d!727727) (not bm!166036) (not bm!166047))
(check-sat)
