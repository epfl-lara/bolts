; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350610 () Bool)

(assert start!350610)

(declare-fun b!3723314 () Bool)

(declare-fun e!2304607 () Bool)

(declare-fun tp_is_empty!18809 () Bool)

(assert (=> b!3723314 (= e!2304607 tp_is_empty!18809)))

(declare-fun b!3723315 () Bool)

(declare-fun tp!1132482 () Bool)

(assert (=> b!3723315 (= e!2304607 tp!1132482)))

(declare-fun b!3723316 () Bool)

(declare-fun tp!1132480 () Bool)

(declare-fun tp!1132483 () Bool)

(assert (=> b!3723316 (= e!2304607 (and tp!1132480 tp!1132483))))

(declare-fun b!3723317 () Bool)

(declare-fun res!1513026 () Bool)

(declare-fun e!2304608 () Bool)

(assert (=> b!3723317 (=> (not res!1513026) (not e!2304608))))

(declare-datatypes ((C!21980 0))(
  ( (C!21981 (val!13038 Int)) )
))
(declare-datatypes ((Regex!10897 0))(
  ( (ElementMatch!10897 (c!644035 C!21980)) (Concat!17168 (regOne!22306 Regex!10897) (regTwo!22306 Regex!10897)) (EmptyExpr!10897) (Star!10897 (reg!11226 Regex!10897)) (EmptyLang!10897) (Union!10897 (regOne!22307 Regex!10897) (regTwo!22307 Regex!10897)) )
))
(declare-fun r!26968 () Regex!10897)

(get-info :version)

(assert (=> b!3723317 (= res!1513026 ((_ is EmptyExpr!10897) r!26968))))

(declare-fun b!3723318 () Bool)

(declare-fun tp!1132481 () Bool)

(declare-fun tp!1132484 () Bool)

(assert (=> b!3723318 (= e!2304607 (and tp!1132481 tp!1132484))))

(declare-fun cNot!42 () C!21980)

(declare-fun c!13797 () C!21980)

(declare-fun b!3723319 () Bool)

(declare-datatypes ((List!39778 0))(
  ( (Nil!39654) (Cons!39654 (h!45074 C!21980) (t!302461 List!39778)) )
))
(declare-fun contains!7990 (List!39778 C!21980) Bool)

(declare-fun usedCharacters!1160 (Regex!10897) List!39778)

(declare-fun derivativeStep!3350 (Regex!10897 C!21980) Regex!10897)

(assert (=> b!3723319 (= e!2304608 (contains!7990 (usedCharacters!1160 (derivativeStep!3350 r!26968 c!13797)) cNot!42))))

(declare-fun b!3723320 () Bool)

(declare-fun res!1513027 () Bool)

(assert (=> b!3723320 (=> (not res!1513027) (not e!2304608))))

(assert (=> b!3723320 (= res!1513027 (not (contains!7990 (usedCharacters!1160 r!26968) cNot!42)))))

(declare-fun res!1513028 () Bool)

(assert (=> start!350610 (=> (not res!1513028) (not e!2304608))))

(declare-fun validRegex!5004 (Regex!10897) Bool)

(assert (=> start!350610 (= res!1513028 (validRegex!5004 r!26968))))

(assert (=> start!350610 e!2304608))

(assert (=> start!350610 e!2304607))

(assert (=> start!350610 tp_is_empty!18809))

(assert (= (and start!350610 res!1513028) b!3723320))

(assert (= (and b!3723320 res!1513027) b!3723317))

(assert (= (and b!3723317 res!1513026) b!3723319))

(assert (= (and start!350610 ((_ is ElementMatch!10897) r!26968)) b!3723314))

(assert (= (and start!350610 ((_ is Concat!17168) r!26968)) b!3723316))

(assert (= (and start!350610 ((_ is Star!10897) r!26968)) b!3723315))

(assert (= (and start!350610 ((_ is Union!10897) r!26968)) b!3723318))

(declare-fun m!4226697 () Bool)

(assert (=> b!3723319 m!4226697))

(assert (=> b!3723319 m!4226697))

(declare-fun m!4226699 () Bool)

(assert (=> b!3723319 m!4226699))

(assert (=> b!3723319 m!4226699))

(declare-fun m!4226701 () Bool)

(assert (=> b!3723319 m!4226701))

(declare-fun m!4226703 () Bool)

(assert (=> b!3723320 m!4226703))

(assert (=> b!3723320 m!4226703))

(declare-fun m!4226705 () Bool)

(assert (=> b!3723320 m!4226705))

(declare-fun m!4226707 () Bool)

(assert (=> start!350610 m!4226707))

(check-sat (not b!3723316) (not start!350610) tp_is_empty!18809 (not b!3723319) (not b!3723318) (not b!3723315) (not b!3723320))
(check-sat)
(get-model)

(declare-fun lt!1298256 () Bool)

(declare-fun d!1089572 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5754 (List!39778) (InoxSet C!21980))

(assert (=> d!1089572 (= lt!1298256 (select (content!5754 (usedCharacters!1160 (derivativeStep!3350 r!26968 c!13797))) cNot!42))))

(declare-fun e!2304619 () Bool)

(assert (=> d!1089572 (= lt!1298256 e!2304619)))

(declare-fun res!1513040 () Bool)

(assert (=> d!1089572 (=> (not res!1513040) (not e!2304619))))

(assert (=> d!1089572 (= res!1513040 ((_ is Cons!39654) (usedCharacters!1160 (derivativeStep!3350 r!26968 c!13797))))))

(assert (=> d!1089572 (= (contains!7990 (usedCharacters!1160 (derivativeStep!3350 r!26968 c!13797)) cNot!42) lt!1298256)))

(declare-fun b!3723331 () Bool)

(declare-fun e!2304620 () Bool)

(assert (=> b!3723331 (= e!2304619 e!2304620)))

(declare-fun res!1513039 () Bool)

(assert (=> b!3723331 (=> res!1513039 e!2304620)))

(assert (=> b!3723331 (= res!1513039 (= (h!45074 (usedCharacters!1160 (derivativeStep!3350 r!26968 c!13797))) cNot!42))))

(declare-fun b!3723332 () Bool)

(assert (=> b!3723332 (= e!2304620 (contains!7990 (t!302461 (usedCharacters!1160 (derivativeStep!3350 r!26968 c!13797))) cNot!42))))

(assert (= (and d!1089572 res!1513040) b!3723331))

(assert (= (and b!3723331 (not res!1513039)) b!3723332))

(assert (=> d!1089572 m!4226699))

(declare-fun m!4226715 () Bool)

(assert (=> d!1089572 m!4226715))

(declare-fun m!4226717 () Bool)

(assert (=> d!1089572 m!4226717))

(declare-fun m!4226719 () Bool)

(assert (=> b!3723332 m!4226719))

(assert (=> b!3723319 d!1089572))

(declare-fun call!270839 () List!39778)

(declare-fun c!644057 () Bool)

(declare-fun call!270838 () List!39778)

(declare-fun call!270840 () List!39778)

(declare-fun bm!270832 () Bool)

(declare-fun ++!9820 (List!39778 List!39778) List!39778)

(assert (=> bm!270832 (= call!270839 (++!9820 (ite c!644057 call!270838 call!270840) (ite c!644057 call!270840 call!270838)))))

(declare-fun b!3723373 () Bool)

(declare-fun e!2304644 () List!39778)

(assert (=> b!3723373 (= e!2304644 call!270839)))

(declare-fun bm!270833 () Bool)

(declare-fun call!270837 () List!39778)

(assert (=> bm!270833 (= call!270838 call!270837)))

(declare-fun b!3723374 () Bool)

(declare-fun e!2304643 () List!39778)

(assert (=> b!3723374 (= e!2304643 Nil!39654)))

(declare-fun b!3723375 () Bool)

(assert (=> b!3723375 (= e!2304644 call!270839)))

(declare-fun bm!270834 () Bool)

(assert (=> bm!270834 (= call!270840 (usedCharacters!1160 (ite c!644057 (regTwo!22307 (derivativeStep!3350 r!26968 c!13797)) (regOne!22306 (derivativeStep!3350 r!26968 c!13797)))))))

(declare-fun b!3723376 () Bool)

(declare-fun e!2304641 () List!39778)

(assert (=> b!3723376 (= e!2304643 e!2304641)))

(declare-fun c!644059 () Bool)

(assert (=> b!3723376 (= c!644059 ((_ is ElementMatch!10897) (derivativeStep!3350 r!26968 c!13797)))))

(declare-fun b!3723378 () Bool)

(declare-fun c!644056 () Bool)

(assert (=> b!3723378 (= c!644056 ((_ is Star!10897) (derivativeStep!3350 r!26968 c!13797)))))

(declare-fun e!2304642 () List!39778)

(assert (=> b!3723378 (= e!2304641 e!2304642)))

(declare-fun b!3723379 () Bool)

(assert (=> b!3723379 (= e!2304642 e!2304644)))

(assert (=> b!3723379 (= c!644057 ((_ is Union!10897) (derivativeStep!3350 r!26968 c!13797)))))

(declare-fun bm!270835 () Bool)

(assert (=> bm!270835 (= call!270837 (usedCharacters!1160 (ite c!644056 (reg!11226 (derivativeStep!3350 r!26968 c!13797)) (ite c!644057 (regOne!22307 (derivativeStep!3350 r!26968 c!13797)) (regTwo!22306 (derivativeStep!3350 r!26968 c!13797))))))))

(declare-fun b!3723380 () Bool)

(assert (=> b!3723380 (= e!2304641 (Cons!39654 (c!644035 (derivativeStep!3350 r!26968 c!13797)) Nil!39654))))

(declare-fun b!3723377 () Bool)

(assert (=> b!3723377 (= e!2304642 call!270837)))

(declare-fun d!1089576 () Bool)

(declare-fun c!644058 () Bool)

(assert (=> d!1089576 (= c!644058 (or ((_ is EmptyExpr!10897) (derivativeStep!3350 r!26968 c!13797)) ((_ is EmptyLang!10897) (derivativeStep!3350 r!26968 c!13797))))))

(assert (=> d!1089576 (= (usedCharacters!1160 (derivativeStep!3350 r!26968 c!13797)) e!2304643)))

(assert (= (and d!1089576 c!644058) b!3723374))

(assert (= (and d!1089576 (not c!644058)) b!3723376))

(assert (= (and b!3723376 c!644059) b!3723380))

(assert (= (and b!3723376 (not c!644059)) b!3723378))

(assert (= (and b!3723378 c!644056) b!3723377))

(assert (= (and b!3723378 (not c!644056)) b!3723379))

(assert (= (and b!3723379 c!644057) b!3723375))

(assert (= (and b!3723379 (not c!644057)) b!3723373))

(assert (= (or b!3723375 b!3723373) bm!270833))

(assert (= (or b!3723375 b!3723373) bm!270834))

(assert (= (or b!3723375 b!3723373) bm!270832))

(assert (= (or b!3723377 bm!270833) bm!270835))

(declare-fun m!4226727 () Bool)

(assert (=> bm!270832 m!4226727))

(declare-fun m!4226729 () Bool)

(assert (=> bm!270834 m!4226729))

(declare-fun m!4226731 () Bool)

(assert (=> bm!270835 m!4226731))

(assert (=> b!3723319 d!1089576))

(declare-fun b!3723431 () Bool)

(declare-fun e!2304674 () Regex!10897)

(declare-fun call!270861 () Regex!10897)

(declare-fun call!270862 () Regex!10897)

(assert (=> b!3723431 (= e!2304674 (Union!10897 call!270861 call!270862))))

(declare-fun b!3723432 () Bool)

(declare-fun call!270863 () Regex!10897)

(declare-fun e!2304671 () Regex!10897)

(assert (=> b!3723432 (= e!2304671 (Union!10897 (Concat!17168 call!270862 (regTwo!22306 r!26968)) call!270863))))

(declare-fun bm!270856 () Bool)

(declare-fun c!644088 () Bool)

(declare-fun c!644086 () Bool)

(declare-fun c!644087 () Bool)

(assert (=> bm!270856 (= call!270861 (derivativeStep!3350 (ite c!644087 (regOne!22307 r!26968) (ite c!644088 (reg!11226 r!26968) (ite c!644086 (regTwo!22306 r!26968) (regOne!22306 r!26968)))) c!13797))))

(declare-fun bm!270857 () Bool)

(declare-fun call!270864 () Regex!10897)

(assert (=> bm!270857 (= call!270863 call!270864)))

(declare-fun b!3723433 () Bool)

(declare-fun e!2304673 () Regex!10897)

(assert (=> b!3723433 (= e!2304673 (ite (= c!13797 (c!644035 r!26968)) EmptyExpr!10897 EmptyLang!10897))))

(declare-fun d!1089580 () Bool)

(declare-fun lt!1298262 () Regex!10897)

(assert (=> d!1089580 (validRegex!5004 lt!1298262)))

(declare-fun e!2304670 () Regex!10897)

(assert (=> d!1089580 (= lt!1298262 e!2304670)))

(declare-fun c!644089 () Bool)

(assert (=> d!1089580 (= c!644089 (or ((_ is EmptyExpr!10897) r!26968) ((_ is EmptyLang!10897) r!26968)))))

(assert (=> d!1089580 (validRegex!5004 r!26968)))

(assert (=> d!1089580 (= (derivativeStep!3350 r!26968 c!13797) lt!1298262)))

(declare-fun b!3723434 () Bool)

(declare-fun e!2304672 () Regex!10897)

(assert (=> b!3723434 (= e!2304674 e!2304672)))

(assert (=> b!3723434 (= c!644088 ((_ is Star!10897) r!26968))))

(declare-fun b!3723435 () Bool)

(assert (=> b!3723435 (= e!2304670 EmptyLang!10897)))

(declare-fun bm!270858 () Bool)

(assert (=> bm!270858 (= call!270862 (derivativeStep!3350 (ite c!644087 (regTwo!22307 r!26968) (regOne!22306 r!26968)) c!13797))))

(declare-fun b!3723436 () Bool)

(assert (=> b!3723436 (= e!2304672 (Concat!17168 call!270864 r!26968))))

(declare-fun b!3723437 () Bool)

(assert (=> b!3723437 (= e!2304671 (Union!10897 (Concat!17168 call!270863 (regTwo!22306 r!26968)) EmptyLang!10897))))

(declare-fun bm!270859 () Bool)

(assert (=> bm!270859 (= call!270864 call!270861)))

(declare-fun b!3723438 () Bool)

(assert (=> b!3723438 (= c!644087 ((_ is Union!10897) r!26968))))

(assert (=> b!3723438 (= e!2304673 e!2304674)))

(declare-fun b!3723439 () Bool)

(assert (=> b!3723439 (= e!2304670 e!2304673)))

(declare-fun c!644085 () Bool)

(assert (=> b!3723439 (= c!644085 ((_ is ElementMatch!10897) r!26968))))

(declare-fun b!3723440 () Bool)

(declare-fun nullable!3805 (Regex!10897) Bool)

(assert (=> b!3723440 (= c!644086 (nullable!3805 (regOne!22306 r!26968)))))

(assert (=> b!3723440 (= e!2304672 e!2304671)))

(assert (= (and d!1089580 c!644089) b!3723435))

(assert (= (and d!1089580 (not c!644089)) b!3723439))

(assert (= (and b!3723439 c!644085) b!3723433))

(assert (= (and b!3723439 (not c!644085)) b!3723438))

(assert (= (and b!3723438 c!644087) b!3723431))

(assert (= (and b!3723438 (not c!644087)) b!3723434))

(assert (= (and b!3723434 c!644088) b!3723436))

(assert (= (and b!3723434 (not c!644088)) b!3723440))

(assert (= (and b!3723440 c!644086) b!3723432))

(assert (= (and b!3723440 (not c!644086)) b!3723437))

(assert (= (or b!3723432 b!3723437) bm!270857))

(assert (= (or b!3723436 bm!270857) bm!270859))

(assert (= (or b!3723431 bm!270859) bm!270856))

(assert (= (or b!3723431 b!3723432) bm!270858))

(declare-fun m!4226741 () Bool)

(assert (=> bm!270856 m!4226741))

(declare-fun m!4226743 () Bool)

(assert (=> d!1089580 m!4226743))

(assert (=> d!1089580 m!4226707))

(declare-fun m!4226745 () Bool)

(assert (=> bm!270858 m!4226745))

(declare-fun m!4226747 () Bool)

(assert (=> b!3723440 m!4226747))

(assert (=> b!3723319 d!1089580))

(declare-fun d!1089584 () Bool)

(declare-fun lt!1298263 () Bool)

(assert (=> d!1089584 (= lt!1298263 (select (content!5754 (usedCharacters!1160 r!26968)) cNot!42))))

(declare-fun e!2304675 () Bool)

(assert (=> d!1089584 (= lt!1298263 e!2304675)))

(declare-fun res!1513042 () Bool)

(assert (=> d!1089584 (=> (not res!1513042) (not e!2304675))))

(assert (=> d!1089584 (= res!1513042 ((_ is Cons!39654) (usedCharacters!1160 r!26968)))))

(assert (=> d!1089584 (= (contains!7990 (usedCharacters!1160 r!26968) cNot!42) lt!1298263)))

(declare-fun b!3723441 () Bool)

(declare-fun e!2304676 () Bool)

(assert (=> b!3723441 (= e!2304675 e!2304676)))

(declare-fun res!1513041 () Bool)

(assert (=> b!3723441 (=> res!1513041 e!2304676)))

(assert (=> b!3723441 (= res!1513041 (= (h!45074 (usedCharacters!1160 r!26968)) cNot!42))))

(declare-fun b!3723442 () Bool)

(assert (=> b!3723442 (= e!2304676 (contains!7990 (t!302461 (usedCharacters!1160 r!26968)) cNot!42))))

(assert (= (and d!1089584 res!1513042) b!3723441))

(assert (= (and b!3723441 (not res!1513041)) b!3723442))

(assert (=> d!1089584 m!4226703))

(declare-fun m!4226749 () Bool)

(assert (=> d!1089584 m!4226749))

(declare-fun m!4226751 () Bool)

(assert (=> d!1089584 m!4226751))

(declare-fun m!4226753 () Bool)

(assert (=> b!3723442 m!4226753))

(assert (=> b!3723320 d!1089584))

(declare-fun call!270867 () List!39778)

(declare-fun call!270868 () List!39778)

(declare-fun c!644093 () Bool)

(declare-fun call!270866 () List!39778)

(declare-fun bm!270860 () Bool)

(assert (=> bm!270860 (= call!270867 (++!9820 (ite c!644093 call!270866 call!270868) (ite c!644093 call!270868 call!270866)))))

(declare-fun b!3723449 () Bool)

(declare-fun e!2304684 () List!39778)

(assert (=> b!3723449 (= e!2304684 call!270867)))

(declare-fun bm!270861 () Bool)

(declare-fun call!270865 () List!39778)

(assert (=> bm!270861 (= call!270866 call!270865)))

(declare-fun b!3723450 () Bool)

(declare-fun e!2304683 () List!39778)

(assert (=> b!3723450 (= e!2304683 Nil!39654)))

(declare-fun b!3723451 () Bool)

(assert (=> b!3723451 (= e!2304684 call!270867)))

(declare-fun bm!270862 () Bool)

(assert (=> bm!270862 (= call!270868 (usedCharacters!1160 (ite c!644093 (regTwo!22307 r!26968) (regOne!22306 r!26968))))))

(declare-fun b!3723452 () Bool)

(declare-fun e!2304681 () List!39778)

(assert (=> b!3723452 (= e!2304683 e!2304681)))

(declare-fun c!644095 () Bool)

(assert (=> b!3723452 (= c!644095 ((_ is ElementMatch!10897) r!26968))))

(declare-fun b!3723454 () Bool)

(declare-fun c!644092 () Bool)

(assert (=> b!3723454 (= c!644092 ((_ is Star!10897) r!26968))))

(declare-fun e!2304682 () List!39778)

(assert (=> b!3723454 (= e!2304681 e!2304682)))

(declare-fun b!3723455 () Bool)

(assert (=> b!3723455 (= e!2304682 e!2304684)))

(assert (=> b!3723455 (= c!644093 ((_ is Union!10897) r!26968))))

(declare-fun bm!270863 () Bool)

(assert (=> bm!270863 (= call!270865 (usedCharacters!1160 (ite c!644092 (reg!11226 r!26968) (ite c!644093 (regOne!22307 r!26968) (regTwo!22306 r!26968)))))))

(declare-fun b!3723458 () Bool)

(assert (=> b!3723458 (= e!2304681 (Cons!39654 (c!644035 r!26968) Nil!39654))))

(declare-fun b!3723453 () Bool)

(assert (=> b!3723453 (= e!2304682 call!270865)))

(declare-fun d!1089586 () Bool)

(declare-fun c!644094 () Bool)

(assert (=> d!1089586 (= c!644094 (or ((_ is EmptyExpr!10897) r!26968) ((_ is EmptyLang!10897) r!26968)))))

(assert (=> d!1089586 (= (usedCharacters!1160 r!26968) e!2304683)))

(assert (= (and d!1089586 c!644094) b!3723450))

(assert (= (and d!1089586 (not c!644094)) b!3723452))

(assert (= (and b!3723452 c!644095) b!3723458))

(assert (= (and b!3723452 (not c!644095)) b!3723454))

(assert (= (and b!3723454 c!644092) b!3723453))

(assert (= (and b!3723454 (not c!644092)) b!3723455))

(assert (= (and b!3723455 c!644093) b!3723451))

(assert (= (and b!3723455 (not c!644093)) b!3723449))

(assert (= (or b!3723451 b!3723449) bm!270861))

(assert (= (or b!3723451 b!3723449) bm!270862))

(assert (= (or b!3723451 b!3723449) bm!270860))

(assert (= (or b!3723453 bm!270861) bm!270863))

(declare-fun m!4226755 () Bool)

(assert (=> bm!270860 m!4226755))

(declare-fun m!4226757 () Bool)

(assert (=> bm!270862 m!4226757))

(declare-fun m!4226759 () Bool)

(assert (=> bm!270863 m!4226759))

(assert (=> b!3723320 d!1089586))

(declare-fun call!270889 () Bool)

(declare-fun c!644108 () Bool)

(declare-fun bm!270883 () Bool)

(declare-fun c!644109 () Bool)

(assert (=> bm!270883 (= call!270889 (validRegex!5004 (ite c!644108 (reg!11226 r!26968) (ite c!644109 (regOne!22307 r!26968) (regOne!22306 r!26968)))))))

(declare-fun b!3723520 () Bool)

(declare-fun e!2304729 () Bool)

(declare-fun e!2304731 () Bool)

(assert (=> b!3723520 (= e!2304729 e!2304731)))

(declare-fun res!1513072 () Bool)

(assert (=> b!3723520 (=> (not res!1513072) (not e!2304731))))

(declare-fun call!270890 () Bool)

(assert (=> b!3723520 (= res!1513072 call!270890)))

(declare-fun b!3723521 () Bool)

(declare-fun e!2304726 () Bool)

(declare-fun call!270888 () Bool)

(assert (=> b!3723521 (= e!2304726 call!270888)))

(declare-fun bm!270884 () Bool)

(assert (=> bm!270884 (= call!270888 (validRegex!5004 (ite c!644109 (regTwo!22307 r!26968) (regTwo!22306 r!26968))))))

(declare-fun b!3723522 () Bool)

(declare-fun e!2304730 () Bool)

(declare-fun e!2304725 () Bool)

(assert (=> b!3723522 (= e!2304730 e!2304725)))

(assert (=> b!3723522 (= c!644108 ((_ is Star!10897) r!26968))))

(declare-fun b!3723523 () Bool)

(declare-fun res!1513071 () Bool)

(assert (=> b!3723523 (=> res!1513071 e!2304729)))

(assert (=> b!3723523 (= res!1513071 (not ((_ is Concat!17168) r!26968)))))

(declare-fun e!2304727 () Bool)

(assert (=> b!3723523 (= e!2304727 e!2304729)))

(declare-fun d!1089588 () Bool)

(declare-fun res!1513070 () Bool)

(assert (=> d!1089588 (=> res!1513070 e!2304730)))

(assert (=> d!1089588 (= res!1513070 ((_ is ElementMatch!10897) r!26968))))

(assert (=> d!1089588 (= (validRegex!5004 r!26968) e!2304730)))

(declare-fun bm!270885 () Bool)

(assert (=> bm!270885 (= call!270890 call!270889)))

(declare-fun b!3723524 () Bool)

(declare-fun e!2304728 () Bool)

(assert (=> b!3723524 (= e!2304725 e!2304728)))

(declare-fun res!1513074 () Bool)

(assert (=> b!3723524 (= res!1513074 (not (nullable!3805 (reg!11226 r!26968))))))

(assert (=> b!3723524 (=> (not res!1513074) (not e!2304728))))

(declare-fun b!3723525 () Bool)

(declare-fun res!1513073 () Bool)

(assert (=> b!3723525 (=> (not res!1513073) (not e!2304726))))

(assert (=> b!3723525 (= res!1513073 call!270890)))

(assert (=> b!3723525 (= e!2304727 e!2304726)))

(declare-fun b!3723526 () Bool)

(assert (=> b!3723526 (= e!2304731 call!270888)))

(declare-fun b!3723527 () Bool)

(assert (=> b!3723527 (= e!2304728 call!270889)))

(declare-fun b!3723528 () Bool)

(assert (=> b!3723528 (= e!2304725 e!2304727)))

(assert (=> b!3723528 (= c!644109 ((_ is Union!10897) r!26968))))

(assert (= (and d!1089588 (not res!1513070)) b!3723522))

(assert (= (and b!3723522 c!644108) b!3723524))

(assert (= (and b!3723522 (not c!644108)) b!3723528))

(assert (= (and b!3723524 res!1513074) b!3723527))

(assert (= (and b!3723528 c!644109) b!3723525))

(assert (= (and b!3723528 (not c!644109)) b!3723523))

(assert (= (and b!3723525 res!1513073) b!3723521))

(assert (= (and b!3723523 (not res!1513071)) b!3723520))

(assert (= (and b!3723520 res!1513072) b!3723526))

(assert (= (or b!3723521 b!3723526) bm!270884))

(assert (= (or b!3723525 b!3723520) bm!270885))

(assert (= (or b!3723527 bm!270885) bm!270883))

(declare-fun m!4226779 () Bool)

(assert (=> bm!270883 m!4226779))

(declare-fun m!4226781 () Bool)

(assert (=> bm!270884 m!4226781))

(declare-fun m!4226783 () Bool)

(assert (=> b!3723524 m!4226783))

(assert (=> start!350610 d!1089588))

(declare-fun e!2304738 () Bool)

(assert (=> b!3723318 (= tp!1132481 e!2304738)))

(declare-fun b!3723557 () Bool)

(declare-fun tp!1132534 () Bool)

(assert (=> b!3723557 (= e!2304738 tp!1132534)))

(declare-fun b!3723556 () Bool)

(declare-fun tp!1132532 () Bool)

(declare-fun tp!1132533 () Bool)

(assert (=> b!3723556 (= e!2304738 (and tp!1132532 tp!1132533))))

(declare-fun b!3723555 () Bool)

(assert (=> b!3723555 (= e!2304738 tp_is_empty!18809)))

(declare-fun b!3723558 () Bool)

(declare-fun tp!1132530 () Bool)

(declare-fun tp!1132531 () Bool)

(assert (=> b!3723558 (= e!2304738 (and tp!1132530 tp!1132531))))

(assert (= (and b!3723318 ((_ is ElementMatch!10897) (regOne!22307 r!26968))) b!3723555))

(assert (= (and b!3723318 ((_ is Concat!17168) (regOne!22307 r!26968))) b!3723556))

(assert (= (and b!3723318 ((_ is Star!10897) (regOne!22307 r!26968))) b!3723557))

(assert (= (and b!3723318 ((_ is Union!10897) (regOne!22307 r!26968))) b!3723558))

(declare-fun e!2304739 () Bool)

(assert (=> b!3723318 (= tp!1132484 e!2304739)))

(declare-fun b!3723561 () Bool)

(declare-fun tp!1132539 () Bool)

(assert (=> b!3723561 (= e!2304739 tp!1132539)))

(declare-fun b!3723560 () Bool)

(declare-fun tp!1132537 () Bool)

(declare-fun tp!1132538 () Bool)

(assert (=> b!3723560 (= e!2304739 (and tp!1132537 tp!1132538))))

(declare-fun b!3723559 () Bool)

(assert (=> b!3723559 (= e!2304739 tp_is_empty!18809)))

(declare-fun b!3723562 () Bool)

(declare-fun tp!1132535 () Bool)

(declare-fun tp!1132536 () Bool)

(assert (=> b!3723562 (= e!2304739 (and tp!1132535 tp!1132536))))

(assert (= (and b!3723318 ((_ is ElementMatch!10897) (regTwo!22307 r!26968))) b!3723559))

(assert (= (and b!3723318 ((_ is Concat!17168) (regTwo!22307 r!26968))) b!3723560))

(assert (= (and b!3723318 ((_ is Star!10897) (regTwo!22307 r!26968))) b!3723561))

(assert (= (and b!3723318 ((_ is Union!10897) (regTwo!22307 r!26968))) b!3723562))

(declare-fun e!2304740 () Bool)

(assert (=> b!3723316 (= tp!1132480 e!2304740)))

(declare-fun b!3723565 () Bool)

(declare-fun tp!1132544 () Bool)

(assert (=> b!3723565 (= e!2304740 tp!1132544)))

(declare-fun b!3723564 () Bool)

(declare-fun tp!1132542 () Bool)

(declare-fun tp!1132543 () Bool)

(assert (=> b!3723564 (= e!2304740 (and tp!1132542 tp!1132543))))

(declare-fun b!3723563 () Bool)

(assert (=> b!3723563 (= e!2304740 tp_is_empty!18809)))

(declare-fun b!3723566 () Bool)

(declare-fun tp!1132540 () Bool)

(declare-fun tp!1132541 () Bool)

(assert (=> b!3723566 (= e!2304740 (and tp!1132540 tp!1132541))))

(assert (= (and b!3723316 ((_ is ElementMatch!10897) (regOne!22306 r!26968))) b!3723563))

(assert (= (and b!3723316 ((_ is Concat!17168) (regOne!22306 r!26968))) b!3723564))

(assert (= (and b!3723316 ((_ is Star!10897) (regOne!22306 r!26968))) b!3723565))

(assert (= (and b!3723316 ((_ is Union!10897) (regOne!22306 r!26968))) b!3723566))

(declare-fun e!2304741 () Bool)

(assert (=> b!3723316 (= tp!1132483 e!2304741)))

(declare-fun b!3723569 () Bool)

(declare-fun tp!1132549 () Bool)

(assert (=> b!3723569 (= e!2304741 tp!1132549)))

(declare-fun b!3723568 () Bool)

(declare-fun tp!1132547 () Bool)

(declare-fun tp!1132548 () Bool)

(assert (=> b!3723568 (= e!2304741 (and tp!1132547 tp!1132548))))

(declare-fun b!3723567 () Bool)

(assert (=> b!3723567 (= e!2304741 tp_is_empty!18809)))

(declare-fun b!3723570 () Bool)

(declare-fun tp!1132545 () Bool)

(declare-fun tp!1132546 () Bool)

(assert (=> b!3723570 (= e!2304741 (and tp!1132545 tp!1132546))))

(assert (= (and b!3723316 ((_ is ElementMatch!10897) (regTwo!22306 r!26968))) b!3723567))

(assert (= (and b!3723316 ((_ is Concat!17168) (regTwo!22306 r!26968))) b!3723568))

(assert (= (and b!3723316 ((_ is Star!10897) (regTwo!22306 r!26968))) b!3723569))

(assert (= (and b!3723316 ((_ is Union!10897) (regTwo!22306 r!26968))) b!3723570))

(declare-fun e!2304742 () Bool)

(assert (=> b!3723315 (= tp!1132482 e!2304742)))

(declare-fun b!3723573 () Bool)

(declare-fun tp!1132554 () Bool)

(assert (=> b!3723573 (= e!2304742 tp!1132554)))

(declare-fun b!3723572 () Bool)

(declare-fun tp!1132552 () Bool)

(declare-fun tp!1132553 () Bool)

(assert (=> b!3723572 (= e!2304742 (and tp!1132552 tp!1132553))))

(declare-fun b!3723571 () Bool)

(assert (=> b!3723571 (= e!2304742 tp_is_empty!18809)))

(declare-fun b!3723574 () Bool)

(declare-fun tp!1132550 () Bool)

(declare-fun tp!1132551 () Bool)

(assert (=> b!3723574 (= e!2304742 (and tp!1132550 tp!1132551))))

(assert (= (and b!3723315 ((_ is ElementMatch!10897) (reg!11226 r!26968))) b!3723571))

(assert (= (and b!3723315 ((_ is Concat!17168) (reg!11226 r!26968))) b!3723572))

(assert (= (and b!3723315 ((_ is Star!10897) (reg!11226 r!26968))) b!3723573))

(assert (= (and b!3723315 ((_ is Union!10897) (reg!11226 r!26968))) b!3723574))

(check-sat (not b!3723560) (not b!3723573) (not b!3723524) (not b!3723572) (not b!3723568) (not b!3723442) (not bm!270883) (not b!3723440) (not b!3723570) (not b!3723332) (not b!3723564) (not bm!270863) (not b!3723574) (not bm!270834) (not b!3723558) (not b!3723569) (not bm!270860) (not bm!270832) (not b!3723566) (not bm!270884) (not b!3723565) (not b!3723557) (not bm!270856) tp_is_empty!18809 (not d!1089584) (not b!3723562) (not bm!270862) (not b!3723556) (not bm!270858) (not bm!270835) (not d!1089580) (not d!1089572) (not b!3723561))
(check-sat)
