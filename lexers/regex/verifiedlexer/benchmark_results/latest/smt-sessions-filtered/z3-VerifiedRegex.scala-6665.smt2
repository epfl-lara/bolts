; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350470 () Bool)

(assert start!350470)

(declare-fun b!3721466 () Bool)

(declare-fun res!1512464 () Bool)

(declare-fun e!2303802 () Bool)

(assert (=> b!3721466 (=> (not res!1512464) (not e!2303802))))

(declare-datatypes ((C!21924 0))(
  ( (C!21925 (val!13010 Int)) )
))
(declare-datatypes ((Regex!10869 0))(
  ( (ElementMatch!10869 (c!643647 C!21924)) (Concat!17140 (regOne!22250 Regex!10869) (regTwo!22250 Regex!10869)) (EmptyExpr!10869) (Star!10869 (reg!11198 Regex!10869)) (EmptyLang!10869) (Union!10869 (regOne!22251 Regex!10869) (regTwo!22251 Regex!10869)) )
))
(declare-fun r!26968 () Regex!10869)

(declare-fun cNot!42 () C!21924)

(declare-datatypes ((List!39750 0))(
  ( (Nil!39626) (Cons!39626 (h!45046 C!21924) (t!302433 List!39750)) )
))
(declare-fun contains!7962 (List!39750 C!21924) Bool)

(declare-fun usedCharacters!1132 (Regex!10869) List!39750)

(assert (=> b!3721466 (= res!1512464 (not (contains!7962 (usedCharacters!1132 r!26968) cNot!42)))))

(declare-fun res!1512463 () Bool)

(assert (=> start!350470 (=> (not res!1512463) (not e!2303802))))

(declare-fun validRegex!4976 (Regex!10869) Bool)

(assert (=> start!350470 (= res!1512463 (validRegex!4976 r!26968))))

(assert (=> start!350470 e!2303802))

(declare-fun e!2303801 () Bool)

(assert (=> start!350470 e!2303801))

(declare-fun tp_is_empty!18753 () Bool)

(assert (=> start!350470 tp_is_empty!18753))

(declare-fun b!3721467 () Bool)

(assert (=> b!3721467 (= e!2303802 (not (validRegex!4976 (regTwo!22251 r!26968))))))

(declare-fun c!13797 () C!21924)

(declare-fun derivativeStep!3330 (Regex!10869 C!21924) Regex!10869)

(assert (=> b!3721467 (not (contains!7962 (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57528 0))(
  ( (Unit!57529) )
))
(declare-fun lt!1298009 () Unit!57528)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!20 (Regex!10869 C!21924 C!21924) Unit!57528)

(assert (=> b!3721467 (= lt!1298009 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!20 (regTwo!22251 r!26968) c!13797 cNot!42))))

(assert (=> b!3721467 (not (contains!7962 (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298010 () Unit!57528)

(assert (=> b!3721467 (= lt!1298010 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!20 (regOne!22251 r!26968) c!13797 cNot!42))))

(declare-fun b!3721468 () Bool)

(declare-fun tp!1131781 () Bool)

(assert (=> b!3721468 (= e!2303801 tp!1131781)))

(declare-fun b!3721469 () Bool)

(declare-fun res!1512462 () Bool)

(assert (=> b!3721469 (=> (not res!1512462) (not e!2303802))))

(get-info :version)

(assert (=> b!3721469 (= res!1512462 (and (not ((_ is EmptyExpr!10869) r!26968)) (not ((_ is EmptyLang!10869) r!26968)) (not ((_ is ElementMatch!10869) r!26968)) ((_ is Union!10869) r!26968)))))

(declare-fun b!3721470 () Bool)

(declare-fun tp!1131780 () Bool)

(declare-fun tp!1131782 () Bool)

(assert (=> b!3721470 (= e!2303801 (and tp!1131780 tp!1131782))))

(declare-fun b!3721471 () Bool)

(assert (=> b!3721471 (= e!2303801 tp_is_empty!18753)))

(declare-fun b!3721472 () Bool)

(declare-fun tp!1131784 () Bool)

(declare-fun tp!1131783 () Bool)

(assert (=> b!3721472 (= e!2303801 (and tp!1131784 tp!1131783))))

(assert (= (and start!350470 res!1512463) b!3721466))

(assert (= (and b!3721466 res!1512464) b!3721469))

(assert (= (and b!3721469 res!1512462) b!3721467))

(assert (= (and start!350470 ((_ is ElementMatch!10869) r!26968)) b!3721471))

(assert (= (and start!350470 ((_ is Concat!17140) r!26968)) b!3721472))

(assert (= (and start!350470 ((_ is Star!10869) r!26968)) b!3721468))

(assert (= (and start!350470 ((_ is Union!10869) r!26968)) b!3721470))

(declare-fun m!4225653 () Bool)

(assert (=> b!3721466 m!4225653))

(assert (=> b!3721466 m!4225653))

(declare-fun m!4225655 () Bool)

(assert (=> b!3721466 m!4225655))

(declare-fun m!4225657 () Bool)

(assert (=> start!350470 m!4225657))

(declare-fun m!4225659 () Bool)

(assert (=> b!3721467 m!4225659))

(declare-fun m!4225661 () Bool)

(assert (=> b!3721467 m!4225661))

(declare-fun m!4225663 () Bool)

(assert (=> b!3721467 m!4225663))

(declare-fun m!4225665 () Bool)

(assert (=> b!3721467 m!4225665))

(declare-fun m!4225667 () Bool)

(assert (=> b!3721467 m!4225667))

(assert (=> b!3721467 m!4225659))

(declare-fun m!4225669 () Bool)

(assert (=> b!3721467 m!4225669))

(assert (=> b!3721467 m!4225667))

(declare-fun m!4225671 () Bool)

(assert (=> b!3721467 m!4225671))

(declare-fun m!4225673 () Bool)

(assert (=> b!3721467 m!4225673))

(declare-fun m!4225675 () Bool)

(assert (=> b!3721467 m!4225675))

(assert (=> b!3721467 m!4225665))

(assert (=> b!3721467 m!4225673))

(check-sat (not b!3721466) (not b!3721468) tp_is_empty!18753 (not b!3721470) (not b!3721472) (not b!3721467) (not start!350470))
(check-sat)
(get-model)

(declare-fun c!643659 () Bool)

(declare-fun bm!270472 () Bool)

(declare-fun call!270479 () List!39750)

(declare-fun call!270477 () List!39750)

(declare-fun call!270480 () List!39750)

(declare-fun ++!9808 (List!39750 List!39750) List!39750)

(assert (=> bm!270472 (= call!270479 (++!9808 (ite c!643659 call!270477 call!270480) (ite c!643659 call!270480 call!270477)))))

(declare-fun b!3721493 () Bool)

(declare-fun e!2303816 () List!39750)

(assert (=> b!3721493 (= e!2303816 Nil!39626)))

(declare-fun bm!270473 () Bool)

(declare-fun c!643658 () Bool)

(declare-fun call!270478 () List!39750)

(assert (=> bm!270473 (= call!270478 (usedCharacters!1132 (ite c!643658 (reg!11198 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) (ite c!643659 (regOne!22251 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) (regTwo!22250 (derivativeStep!3330 (regOne!22251 r!26968) c!13797))))))))

(declare-fun bm!270474 () Bool)

(assert (=> bm!270474 (= call!270477 call!270478)))

(declare-fun bm!270475 () Bool)

(assert (=> bm!270475 (= call!270480 (usedCharacters!1132 (ite c!643659 (regTwo!22251 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) (regOne!22250 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)))))))

(declare-fun b!3721494 () Bool)

(declare-fun e!2303818 () List!39750)

(assert (=> b!3721494 (= e!2303818 call!270478)))

(declare-fun b!3721496 () Bool)

(declare-fun e!2303815 () List!39750)

(assert (=> b!3721496 (= e!2303815 call!270479)))

(declare-fun b!3721497 () Bool)

(assert (=> b!3721497 (= c!643658 ((_ is Star!10869) (derivativeStep!3330 (regOne!22251 r!26968) c!13797)))))

(declare-fun e!2303817 () List!39750)

(assert (=> b!3721497 (= e!2303817 e!2303818)))

(declare-fun b!3721498 () Bool)

(assert (=> b!3721498 (= e!2303816 e!2303817)))

(declare-fun c!643657 () Bool)

(assert (=> b!3721498 (= c!643657 ((_ is ElementMatch!10869) (derivativeStep!3330 (regOne!22251 r!26968) c!13797)))))

(declare-fun b!3721499 () Bool)

(assert (=> b!3721499 (= e!2303818 e!2303815)))

(assert (=> b!3721499 (= c!643659 ((_ is Union!10869) (derivativeStep!3330 (regOne!22251 r!26968) c!13797)))))

(declare-fun b!3721500 () Bool)

(assert (=> b!3721500 (= e!2303815 call!270479)))

(declare-fun b!3721495 () Bool)

(assert (=> b!3721495 (= e!2303817 (Cons!39626 (c!643647 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) Nil!39626))))

(declare-fun d!1089388 () Bool)

(declare-fun c!643656 () Bool)

(assert (=> d!1089388 (= c!643656 (or ((_ is EmptyExpr!10869) (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) ((_ is EmptyLang!10869) (derivativeStep!3330 (regOne!22251 r!26968) c!13797))))))

(assert (=> d!1089388 (= (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) e!2303816)))

(assert (= (and d!1089388 c!643656) b!3721493))

(assert (= (and d!1089388 (not c!643656)) b!3721498))

(assert (= (and b!3721498 c!643657) b!3721495))

(assert (= (and b!3721498 (not c!643657)) b!3721497))

(assert (= (and b!3721497 c!643658) b!3721494))

(assert (= (and b!3721497 (not c!643658)) b!3721499))

(assert (= (and b!3721499 c!643659) b!3721496))

(assert (= (and b!3721499 (not c!643659)) b!3721500))

(assert (= (or b!3721496 b!3721500) bm!270474))

(assert (= (or b!3721496 b!3721500) bm!270475))

(assert (= (or b!3721496 b!3721500) bm!270472))

(assert (= (or b!3721494 bm!270474) bm!270473))

(declare-fun m!4225677 () Bool)

(assert (=> bm!270472 m!4225677))

(declare-fun m!4225679 () Bool)

(assert (=> bm!270473 m!4225679))

(declare-fun m!4225681 () Bool)

(assert (=> bm!270475 m!4225681))

(assert (=> b!3721467 d!1089388))

(declare-fun b!3721539 () Bool)

(declare-fun e!2303840 () Regex!10869)

(declare-fun e!2303839 () Regex!10869)

(assert (=> b!3721539 (= e!2303840 e!2303839)))

(declare-fun c!643678 () Bool)

(assert (=> b!3721539 (= c!643678 ((_ is Star!10869) (regTwo!22251 r!26968)))))

(declare-fun e!2303841 () Regex!10869)

(declare-fun call!270498 () Regex!10869)

(declare-fun b!3721540 () Bool)

(declare-fun call!270497 () Regex!10869)

(assert (=> b!3721540 (= e!2303841 (Union!10869 (Concat!17140 call!270498 (regTwo!22250 (regTwo!22251 r!26968))) call!270497))))

(declare-fun bm!270492 () Bool)

(declare-fun call!270500 () Regex!10869)

(assert (=> bm!270492 (= call!270497 call!270500)))

(declare-fun bm!270493 () Bool)

(declare-fun c!643682 () Bool)

(assert (=> bm!270493 (= call!270498 (derivativeStep!3330 (ite c!643682 (regTwo!22251 (regTwo!22251 r!26968)) (regOne!22250 (regTwo!22251 r!26968))) c!13797))))

(declare-fun b!3721541 () Bool)

(declare-fun call!270499 () Regex!10869)

(assert (=> b!3721541 (= e!2303840 (Union!10869 call!270499 call!270498))))

(declare-fun c!643681 () Bool)

(declare-fun bm!270494 () Bool)

(assert (=> bm!270494 (= call!270499 (derivativeStep!3330 (ite c!643682 (regOne!22251 (regTwo!22251 r!26968)) (ite c!643678 (reg!11198 (regTwo!22251 r!26968)) (ite c!643681 (regTwo!22250 (regTwo!22251 r!26968)) (regOne!22250 (regTwo!22251 r!26968))))) c!13797))))

(declare-fun b!3721542 () Bool)

(declare-fun nullable!3785 (Regex!10869) Bool)

(assert (=> b!3721542 (= c!643681 (nullable!3785 (regOne!22250 (regTwo!22251 r!26968))))))

(assert (=> b!3721542 (= e!2303839 e!2303841)))

(declare-fun d!1089392 () Bool)

(declare-fun lt!1298016 () Regex!10869)

(assert (=> d!1089392 (validRegex!4976 lt!1298016)))

(declare-fun e!2303843 () Regex!10869)

(assert (=> d!1089392 (= lt!1298016 e!2303843)))

(declare-fun c!643680 () Bool)

(assert (=> d!1089392 (= c!643680 (or ((_ is EmptyExpr!10869) (regTwo!22251 r!26968)) ((_ is EmptyLang!10869) (regTwo!22251 r!26968))))))

(assert (=> d!1089392 (validRegex!4976 (regTwo!22251 r!26968))))

(assert (=> d!1089392 (= (derivativeStep!3330 (regTwo!22251 r!26968) c!13797) lt!1298016)))

(declare-fun b!3721543 () Bool)

(assert (=> b!3721543 (= c!643682 ((_ is Union!10869) (regTwo!22251 r!26968)))))

(declare-fun e!2303842 () Regex!10869)

(assert (=> b!3721543 (= e!2303842 e!2303840)))

(declare-fun b!3721544 () Bool)

(assert (=> b!3721544 (= e!2303843 EmptyLang!10869)))

(declare-fun b!3721545 () Bool)

(assert (=> b!3721545 (= e!2303843 e!2303842)))

(declare-fun c!643679 () Bool)

(assert (=> b!3721545 (= c!643679 ((_ is ElementMatch!10869) (regTwo!22251 r!26968)))))

(declare-fun bm!270495 () Bool)

(assert (=> bm!270495 (= call!270500 call!270499)))

(declare-fun b!3721546 () Bool)

(assert (=> b!3721546 (= e!2303841 (Union!10869 (Concat!17140 call!270497 (regTwo!22250 (regTwo!22251 r!26968))) EmptyLang!10869))))

(declare-fun b!3721547 () Bool)

(assert (=> b!3721547 (= e!2303842 (ite (= c!13797 (c!643647 (regTwo!22251 r!26968))) EmptyExpr!10869 EmptyLang!10869))))

(declare-fun b!3721548 () Bool)

(assert (=> b!3721548 (= e!2303839 (Concat!17140 call!270500 (regTwo!22251 r!26968)))))

(assert (= (and d!1089392 c!643680) b!3721544))

(assert (= (and d!1089392 (not c!643680)) b!3721545))

(assert (= (and b!3721545 c!643679) b!3721547))

(assert (= (and b!3721545 (not c!643679)) b!3721543))

(assert (= (and b!3721543 c!643682) b!3721541))

(assert (= (and b!3721543 (not c!643682)) b!3721539))

(assert (= (and b!3721539 c!643678) b!3721548))

(assert (= (and b!3721539 (not c!643678)) b!3721542))

(assert (= (and b!3721542 c!643681) b!3721540))

(assert (= (and b!3721542 (not c!643681)) b!3721546))

(assert (= (or b!3721540 b!3721546) bm!270492))

(assert (= (or b!3721548 bm!270492) bm!270495))

(assert (= (or b!3721541 bm!270495) bm!270494))

(assert (= (or b!3721541 b!3721540) bm!270493))

(declare-fun m!4225689 () Bool)

(assert (=> bm!270493 m!4225689))

(declare-fun m!4225691 () Bool)

(assert (=> bm!270494 m!4225691))

(declare-fun m!4225693 () Bool)

(assert (=> b!3721542 m!4225693))

(declare-fun m!4225695 () Bool)

(assert (=> d!1089392 m!4225695))

(assert (=> d!1089392 m!4225671))

(assert (=> b!3721467 d!1089392))

(declare-fun lt!1298019 () Bool)

(declare-fun d!1089396 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5745 (List!39750) (InoxSet C!21924))

(assert (=> d!1089396 (= lt!1298019 (select (content!5745 (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797))) cNot!42))))

(declare-fun e!2303848 () Bool)

(assert (=> d!1089396 (= lt!1298019 e!2303848)))

(declare-fun res!1512476 () Bool)

(assert (=> d!1089396 (=> (not res!1512476) (not e!2303848))))

(assert (=> d!1089396 (= res!1512476 ((_ is Cons!39626) (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797))))))

(assert (=> d!1089396 (= (contains!7962 (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) cNot!42) lt!1298019)))

(declare-fun b!3721553 () Bool)

(declare-fun e!2303849 () Bool)

(assert (=> b!3721553 (= e!2303848 e!2303849)))

(declare-fun res!1512475 () Bool)

(assert (=> b!3721553 (=> res!1512475 e!2303849)))

(assert (=> b!3721553 (= res!1512475 (= (h!45046 (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797))) cNot!42))))

(declare-fun b!3721554 () Bool)

(assert (=> b!3721554 (= e!2303849 (contains!7962 (t!302433 (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089396 res!1512476) b!3721553))

(assert (= (and b!3721553 (not res!1512475)) b!3721554))

(assert (=> d!1089396 m!4225659))

(declare-fun m!4225697 () Bool)

(assert (=> d!1089396 m!4225697))

(declare-fun m!4225699 () Bool)

(assert (=> d!1089396 m!4225699))

(declare-fun m!4225701 () Bool)

(assert (=> b!3721554 m!4225701))

(assert (=> b!3721467 d!1089396))

(declare-fun d!1089398 () Bool)

(assert (=> d!1089398 (not (contains!7962 (usedCharacters!1132 (derivativeStep!3330 (regOne!22251 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298022 () Unit!57528)

(declare-fun choose!22215 (Regex!10869 C!21924 C!21924) Unit!57528)

(assert (=> d!1089398 (= lt!1298022 (choose!22215 (regOne!22251 r!26968) c!13797 cNot!42))))

(assert (=> d!1089398 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!20 (regOne!22251 r!26968) c!13797 cNot!42) lt!1298022)))

(declare-fun bs!574966 () Bool)

(assert (= bs!574966 d!1089398))

(assert (=> bs!574966 m!4225667))

(assert (=> bs!574966 m!4225667))

(assert (=> bs!574966 m!4225659))

(assert (=> bs!574966 m!4225659))

(assert (=> bs!574966 m!4225661))

(declare-fun m!4225703 () Bool)

(assert (=> bs!574966 m!4225703))

(assert (=> b!3721467 d!1089398))

(declare-fun b!3721581 () Bool)

(declare-fun res!1512489 () Bool)

(declare-fun e!2303868 () Bool)

(assert (=> b!3721581 (=> (not res!1512489) (not e!2303868))))

(declare-fun call!270512 () Bool)

(assert (=> b!3721581 (= res!1512489 call!270512)))

(declare-fun e!2303871 () Bool)

(assert (=> b!3721581 (= e!2303871 e!2303868)))

(declare-fun b!3721582 () Bool)

(declare-fun e!2303873 () Bool)

(declare-fun call!270511 () Bool)

(assert (=> b!3721582 (= e!2303873 call!270511)))

(declare-fun b!3721583 () Bool)

(declare-fun e!2303872 () Bool)

(declare-fun e!2303870 () Bool)

(assert (=> b!3721583 (= e!2303872 e!2303870)))

(declare-fun c!643693 () Bool)

(assert (=> b!3721583 (= c!643693 ((_ is Star!10869) (regTwo!22251 r!26968)))))

(declare-fun b!3721584 () Bool)

(declare-fun call!270513 () Bool)

(assert (=> b!3721584 (= e!2303868 call!270513)))

(declare-fun bm!270506 () Bool)

(declare-fun c!643692 () Bool)

(assert (=> bm!270506 (= call!270512 (validRegex!4976 (ite c!643692 (regOne!22251 (regTwo!22251 r!26968)) (regOne!22250 (regTwo!22251 r!26968)))))))

(declare-fun bm!270507 () Bool)

(assert (=> bm!270507 (= call!270511 (validRegex!4976 (ite c!643693 (reg!11198 (regTwo!22251 r!26968)) (ite c!643692 (regTwo!22251 (regTwo!22251 r!26968)) (regTwo!22250 (regTwo!22251 r!26968))))))))

(declare-fun b!3721586 () Bool)

(declare-fun e!2303869 () Bool)

(assert (=> b!3721586 (= e!2303869 call!270513)))

(declare-fun bm!270508 () Bool)

(assert (=> bm!270508 (= call!270513 call!270511)))

(declare-fun b!3721587 () Bool)

(assert (=> b!3721587 (= e!2303870 e!2303871)))

(assert (=> b!3721587 (= c!643692 ((_ is Union!10869) (regTwo!22251 r!26968)))))

(declare-fun b!3721588 () Bool)

(assert (=> b!3721588 (= e!2303870 e!2303873)))

(declare-fun res!1512491 () Bool)

(assert (=> b!3721588 (= res!1512491 (not (nullable!3785 (reg!11198 (regTwo!22251 r!26968)))))))

(assert (=> b!3721588 (=> (not res!1512491) (not e!2303873))))

(declare-fun b!3721589 () Bool)

(declare-fun res!1512488 () Bool)

(declare-fun e!2303874 () Bool)

(assert (=> b!3721589 (=> res!1512488 e!2303874)))

(assert (=> b!3721589 (= res!1512488 (not ((_ is Concat!17140) (regTwo!22251 r!26968))))))

(assert (=> b!3721589 (= e!2303871 e!2303874)))

(declare-fun b!3721585 () Bool)

(assert (=> b!3721585 (= e!2303874 e!2303869)))

(declare-fun res!1512487 () Bool)

(assert (=> b!3721585 (=> (not res!1512487) (not e!2303869))))

(assert (=> b!3721585 (= res!1512487 call!270512)))

(declare-fun d!1089400 () Bool)

(declare-fun res!1512490 () Bool)

(assert (=> d!1089400 (=> res!1512490 e!2303872)))

(assert (=> d!1089400 (= res!1512490 ((_ is ElementMatch!10869) (regTwo!22251 r!26968)))))

(assert (=> d!1089400 (= (validRegex!4976 (regTwo!22251 r!26968)) e!2303872)))

(assert (= (and d!1089400 (not res!1512490)) b!3721583))

(assert (= (and b!3721583 c!643693) b!3721588))

(assert (= (and b!3721583 (not c!643693)) b!3721587))

(assert (= (and b!3721588 res!1512491) b!3721582))

(assert (= (and b!3721587 c!643692) b!3721581))

(assert (= (and b!3721587 (not c!643692)) b!3721589))

(assert (= (and b!3721581 res!1512489) b!3721584))

(assert (= (and b!3721589 (not res!1512488)) b!3721585))

(assert (= (and b!3721585 res!1512487) b!3721586))

(assert (= (or b!3721584 b!3721586) bm!270508))

(assert (= (or b!3721581 b!3721585) bm!270506))

(assert (= (or b!3721582 bm!270508) bm!270507))

(declare-fun m!4225711 () Bool)

(assert (=> bm!270506 m!4225711))

(declare-fun m!4225713 () Bool)

(assert (=> bm!270507 m!4225713))

(declare-fun m!4225715 () Bool)

(assert (=> b!3721588 m!4225715))

(assert (=> b!3721467 d!1089400))

(declare-fun b!3721602 () Bool)

(declare-fun e!2303884 () Regex!10869)

(declare-fun e!2303883 () Regex!10869)

(assert (=> b!3721602 (= e!2303884 e!2303883)))

(declare-fun c!643698 () Bool)

(assert (=> b!3721602 (= c!643698 ((_ is Star!10869) (regOne!22251 r!26968)))))

(declare-fun b!3721603 () Bool)

(declare-fun call!270514 () Regex!10869)

(declare-fun call!270515 () Regex!10869)

(declare-fun e!2303885 () Regex!10869)

(assert (=> b!3721603 (= e!2303885 (Union!10869 (Concat!17140 call!270515 (regTwo!22250 (regOne!22251 r!26968))) call!270514))))

(declare-fun bm!270509 () Bool)

(declare-fun call!270517 () Regex!10869)

(assert (=> bm!270509 (= call!270514 call!270517)))

(declare-fun c!643702 () Bool)

(declare-fun bm!270510 () Bool)

(assert (=> bm!270510 (= call!270515 (derivativeStep!3330 (ite c!643702 (regTwo!22251 (regOne!22251 r!26968)) (regOne!22250 (regOne!22251 r!26968))) c!13797))))

(declare-fun b!3721604 () Bool)

(declare-fun call!270516 () Regex!10869)

(assert (=> b!3721604 (= e!2303884 (Union!10869 call!270516 call!270515))))

(declare-fun bm!270511 () Bool)

(declare-fun c!643701 () Bool)

(assert (=> bm!270511 (= call!270516 (derivativeStep!3330 (ite c!643702 (regOne!22251 (regOne!22251 r!26968)) (ite c!643698 (reg!11198 (regOne!22251 r!26968)) (ite c!643701 (regTwo!22250 (regOne!22251 r!26968)) (regOne!22250 (regOne!22251 r!26968))))) c!13797))))

(declare-fun b!3721605 () Bool)

(assert (=> b!3721605 (= c!643701 (nullable!3785 (regOne!22250 (regOne!22251 r!26968))))))

(assert (=> b!3721605 (= e!2303883 e!2303885)))

(declare-fun d!1089404 () Bool)

(declare-fun lt!1298023 () Regex!10869)

(assert (=> d!1089404 (validRegex!4976 lt!1298023)))

(declare-fun e!2303887 () Regex!10869)

(assert (=> d!1089404 (= lt!1298023 e!2303887)))

(declare-fun c!643700 () Bool)

(assert (=> d!1089404 (= c!643700 (or ((_ is EmptyExpr!10869) (regOne!22251 r!26968)) ((_ is EmptyLang!10869) (regOne!22251 r!26968))))))

(assert (=> d!1089404 (validRegex!4976 (regOne!22251 r!26968))))

(assert (=> d!1089404 (= (derivativeStep!3330 (regOne!22251 r!26968) c!13797) lt!1298023)))

(declare-fun b!3721606 () Bool)

(assert (=> b!3721606 (= c!643702 ((_ is Union!10869) (regOne!22251 r!26968)))))

(declare-fun e!2303886 () Regex!10869)

(assert (=> b!3721606 (= e!2303886 e!2303884)))

(declare-fun b!3721607 () Bool)

(assert (=> b!3721607 (= e!2303887 EmptyLang!10869)))

(declare-fun b!3721608 () Bool)

(assert (=> b!3721608 (= e!2303887 e!2303886)))

(declare-fun c!643699 () Bool)

(assert (=> b!3721608 (= c!643699 ((_ is ElementMatch!10869) (regOne!22251 r!26968)))))

(declare-fun bm!270512 () Bool)

(assert (=> bm!270512 (= call!270517 call!270516)))

(declare-fun b!3721609 () Bool)

(assert (=> b!3721609 (= e!2303885 (Union!10869 (Concat!17140 call!270514 (regTwo!22250 (regOne!22251 r!26968))) EmptyLang!10869))))

(declare-fun b!3721610 () Bool)

(assert (=> b!3721610 (= e!2303886 (ite (= c!13797 (c!643647 (regOne!22251 r!26968))) EmptyExpr!10869 EmptyLang!10869))))

(declare-fun b!3721611 () Bool)

(assert (=> b!3721611 (= e!2303883 (Concat!17140 call!270517 (regOne!22251 r!26968)))))

(assert (= (and d!1089404 c!643700) b!3721607))

(assert (= (and d!1089404 (not c!643700)) b!3721608))

(assert (= (and b!3721608 c!643699) b!3721610))

(assert (= (and b!3721608 (not c!643699)) b!3721606))

(assert (= (and b!3721606 c!643702) b!3721604))

(assert (= (and b!3721606 (not c!643702)) b!3721602))

(assert (= (and b!3721602 c!643698) b!3721611))

(assert (= (and b!3721602 (not c!643698)) b!3721605))

(assert (= (and b!3721605 c!643701) b!3721603))

(assert (= (and b!3721605 (not c!643701)) b!3721609))

(assert (= (or b!3721603 b!3721609) bm!270509))

(assert (= (or b!3721611 bm!270509) bm!270512))

(assert (= (or b!3721604 bm!270512) bm!270511))

(assert (= (or b!3721604 b!3721603) bm!270510))

(declare-fun m!4225717 () Bool)

(assert (=> bm!270510 m!4225717))

(declare-fun m!4225719 () Bool)

(assert (=> bm!270511 m!4225719))

(declare-fun m!4225721 () Bool)

(assert (=> b!3721605 m!4225721))

(declare-fun m!4225723 () Bool)

(assert (=> d!1089404 m!4225723))

(declare-fun m!4225725 () Bool)

(assert (=> d!1089404 m!4225725))

(assert (=> b!3721467 d!1089404))

(declare-fun d!1089406 () Bool)

(declare-fun lt!1298024 () Bool)

(assert (=> d!1089406 (= lt!1298024 (select (content!5745 (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797))) cNot!42))))

(declare-fun e!2303894 () Bool)

(assert (=> d!1089406 (= lt!1298024 e!2303894)))

(declare-fun res!1512503 () Bool)

(assert (=> d!1089406 (=> (not res!1512503) (not e!2303894))))

(assert (=> d!1089406 (= res!1512503 ((_ is Cons!39626) (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797))))))

(assert (=> d!1089406 (= (contains!7962 (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) cNot!42) lt!1298024)))

(declare-fun b!3721618 () Bool)

(declare-fun e!2303895 () Bool)

(assert (=> b!3721618 (= e!2303894 e!2303895)))

(declare-fun res!1512502 () Bool)

(assert (=> b!3721618 (=> res!1512502 e!2303895)))

(assert (=> b!3721618 (= res!1512502 (= (h!45046 (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797))) cNot!42))))

(declare-fun b!3721619 () Bool)

(assert (=> b!3721619 (= e!2303895 (contains!7962 (t!302433 (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089406 res!1512503) b!3721618))

(assert (= (and b!3721618 (not res!1512502)) b!3721619))

(assert (=> d!1089406 m!4225673))

(declare-fun m!4225727 () Bool)

(assert (=> d!1089406 m!4225727))

(declare-fun m!4225729 () Bool)

(assert (=> d!1089406 m!4225729))

(declare-fun m!4225731 () Bool)

(assert (=> b!3721619 m!4225731))

(assert (=> b!3721467 d!1089406))

(declare-fun c!643706 () Bool)

(declare-fun call!270525 () List!39750)

(declare-fun bm!270515 () Bool)

(declare-fun call!270524 () List!39750)

(declare-fun call!270522 () List!39750)

(assert (=> bm!270515 (= call!270524 (++!9808 (ite c!643706 call!270522 call!270525) (ite c!643706 call!270525 call!270522)))))

(declare-fun b!3721620 () Bool)

(declare-fun e!2303897 () List!39750)

(assert (=> b!3721620 (= e!2303897 Nil!39626)))

(declare-fun bm!270516 () Bool)

(declare-fun call!270523 () List!39750)

(declare-fun c!643705 () Bool)

(assert (=> bm!270516 (= call!270523 (usedCharacters!1132 (ite c!643705 (reg!11198 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) (ite c!643706 (regOne!22251 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) (regTwo!22250 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797))))))))

(declare-fun bm!270517 () Bool)

(assert (=> bm!270517 (= call!270522 call!270523)))

(declare-fun bm!270518 () Bool)

(assert (=> bm!270518 (= call!270525 (usedCharacters!1132 (ite c!643706 (regTwo!22251 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) (regOne!22250 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)))))))

(declare-fun b!3721621 () Bool)

(declare-fun e!2303899 () List!39750)

(assert (=> b!3721621 (= e!2303899 call!270523)))

(declare-fun b!3721623 () Bool)

(declare-fun e!2303896 () List!39750)

(assert (=> b!3721623 (= e!2303896 call!270524)))

(declare-fun b!3721624 () Bool)

(assert (=> b!3721624 (= c!643705 ((_ is Star!10869) (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)))))

(declare-fun e!2303898 () List!39750)

(assert (=> b!3721624 (= e!2303898 e!2303899)))

(declare-fun b!3721625 () Bool)

(assert (=> b!3721625 (= e!2303897 e!2303898)))

(declare-fun c!643704 () Bool)

(assert (=> b!3721625 (= c!643704 ((_ is ElementMatch!10869) (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)))))

(declare-fun b!3721626 () Bool)

(assert (=> b!3721626 (= e!2303899 e!2303896)))

(assert (=> b!3721626 (= c!643706 ((_ is Union!10869) (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)))))

(declare-fun b!3721627 () Bool)

(assert (=> b!3721627 (= e!2303896 call!270524)))

(declare-fun b!3721622 () Bool)

(assert (=> b!3721622 (= e!2303898 (Cons!39626 (c!643647 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) Nil!39626))))

(declare-fun d!1089408 () Bool)

(declare-fun c!643703 () Bool)

(assert (=> d!1089408 (= c!643703 (or ((_ is EmptyExpr!10869) (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) ((_ is EmptyLang!10869) (derivativeStep!3330 (regTwo!22251 r!26968) c!13797))))))

(assert (=> d!1089408 (= (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) e!2303897)))

(assert (= (and d!1089408 c!643703) b!3721620))

(assert (= (and d!1089408 (not c!643703)) b!3721625))

(assert (= (and b!3721625 c!643704) b!3721622))

(assert (= (and b!3721625 (not c!643704)) b!3721624))

(assert (= (and b!3721624 c!643705) b!3721621))

(assert (= (and b!3721624 (not c!643705)) b!3721626))

(assert (= (and b!3721626 c!643706) b!3721623))

(assert (= (and b!3721626 (not c!643706)) b!3721627))

(assert (= (or b!3721623 b!3721627) bm!270517))

(assert (= (or b!3721623 b!3721627) bm!270518))

(assert (= (or b!3721623 b!3721627) bm!270515))

(assert (= (or b!3721621 bm!270517) bm!270516))

(declare-fun m!4225733 () Bool)

(assert (=> bm!270515 m!4225733))

(declare-fun m!4225735 () Bool)

(assert (=> bm!270516 m!4225735))

(declare-fun m!4225737 () Bool)

(assert (=> bm!270518 m!4225737))

(assert (=> b!3721467 d!1089408))

(declare-fun d!1089410 () Bool)

(assert (=> d!1089410 (not (contains!7962 (usedCharacters!1132 (derivativeStep!3330 (regTwo!22251 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298025 () Unit!57528)

(assert (=> d!1089410 (= lt!1298025 (choose!22215 (regTwo!22251 r!26968) c!13797 cNot!42))))

(assert (=> d!1089410 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!20 (regTwo!22251 r!26968) c!13797 cNot!42) lt!1298025)))

(declare-fun bs!574967 () Bool)

(assert (= bs!574967 d!1089410))

(assert (=> bs!574967 m!4225665))

(assert (=> bs!574967 m!4225665))

(assert (=> bs!574967 m!4225673))

(assert (=> bs!574967 m!4225673))

(assert (=> bs!574967 m!4225675))

(declare-fun m!4225739 () Bool)

(assert (=> bs!574967 m!4225739))

(assert (=> b!3721467 d!1089410))

(declare-fun d!1089412 () Bool)

(declare-fun lt!1298026 () Bool)

(assert (=> d!1089412 (= lt!1298026 (select (content!5745 (usedCharacters!1132 r!26968)) cNot!42))))

(declare-fun e!2303900 () Bool)

(assert (=> d!1089412 (= lt!1298026 e!2303900)))

(declare-fun res!1512505 () Bool)

(assert (=> d!1089412 (=> (not res!1512505) (not e!2303900))))

(assert (=> d!1089412 (= res!1512505 ((_ is Cons!39626) (usedCharacters!1132 r!26968)))))

(assert (=> d!1089412 (= (contains!7962 (usedCharacters!1132 r!26968) cNot!42) lt!1298026)))

(declare-fun b!3721628 () Bool)

(declare-fun e!2303901 () Bool)

(assert (=> b!3721628 (= e!2303900 e!2303901)))

(declare-fun res!1512504 () Bool)

(assert (=> b!3721628 (=> res!1512504 e!2303901)))

(assert (=> b!3721628 (= res!1512504 (= (h!45046 (usedCharacters!1132 r!26968)) cNot!42))))

(declare-fun b!3721629 () Bool)

(assert (=> b!3721629 (= e!2303901 (contains!7962 (t!302433 (usedCharacters!1132 r!26968)) cNot!42))))

(assert (= (and d!1089412 res!1512505) b!3721628))

(assert (= (and b!3721628 (not res!1512504)) b!3721629))

(assert (=> d!1089412 m!4225653))

(declare-fun m!4225741 () Bool)

(assert (=> d!1089412 m!4225741))

(declare-fun m!4225743 () Bool)

(assert (=> d!1089412 m!4225743))

(declare-fun m!4225745 () Bool)

(assert (=> b!3721629 m!4225745))

(assert (=> b!3721466 d!1089412))

(declare-fun call!270531 () List!39750)

(declare-fun call!270530 () List!39750)

(declare-fun call!270528 () List!39750)

(declare-fun bm!270523 () Bool)

(declare-fun c!643710 () Bool)

(assert (=> bm!270523 (= call!270530 (++!9808 (ite c!643710 call!270528 call!270531) (ite c!643710 call!270531 call!270528)))))

(declare-fun b!3721630 () Bool)

(declare-fun e!2303903 () List!39750)

(assert (=> b!3721630 (= e!2303903 Nil!39626)))

(declare-fun call!270529 () List!39750)

(declare-fun bm!270524 () Bool)

(declare-fun c!643709 () Bool)

(assert (=> bm!270524 (= call!270529 (usedCharacters!1132 (ite c!643709 (reg!11198 r!26968) (ite c!643710 (regOne!22251 r!26968) (regTwo!22250 r!26968)))))))

(declare-fun bm!270525 () Bool)

(assert (=> bm!270525 (= call!270528 call!270529)))

(declare-fun bm!270526 () Bool)

(assert (=> bm!270526 (= call!270531 (usedCharacters!1132 (ite c!643710 (regTwo!22251 r!26968) (regOne!22250 r!26968))))))

(declare-fun b!3721631 () Bool)

(declare-fun e!2303905 () List!39750)

(assert (=> b!3721631 (= e!2303905 call!270529)))

(declare-fun b!3721633 () Bool)

(declare-fun e!2303902 () List!39750)

(assert (=> b!3721633 (= e!2303902 call!270530)))

(declare-fun b!3721634 () Bool)

(assert (=> b!3721634 (= c!643709 ((_ is Star!10869) r!26968))))

(declare-fun e!2303904 () List!39750)

(assert (=> b!3721634 (= e!2303904 e!2303905)))

(declare-fun b!3721635 () Bool)

(assert (=> b!3721635 (= e!2303903 e!2303904)))

(declare-fun c!643708 () Bool)

(assert (=> b!3721635 (= c!643708 ((_ is ElementMatch!10869) r!26968))))

(declare-fun b!3721636 () Bool)

(assert (=> b!3721636 (= e!2303905 e!2303902)))

(assert (=> b!3721636 (= c!643710 ((_ is Union!10869) r!26968))))

(declare-fun b!3721637 () Bool)

(assert (=> b!3721637 (= e!2303902 call!270530)))

(declare-fun b!3721632 () Bool)

(assert (=> b!3721632 (= e!2303904 (Cons!39626 (c!643647 r!26968) Nil!39626))))

(declare-fun d!1089414 () Bool)

(declare-fun c!643707 () Bool)

(assert (=> d!1089414 (= c!643707 (or ((_ is EmptyExpr!10869) r!26968) ((_ is EmptyLang!10869) r!26968)))))

(assert (=> d!1089414 (= (usedCharacters!1132 r!26968) e!2303903)))

(assert (= (and d!1089414 c!643707) b!3721630))

(assert (= (and d!1089414 (not c!643707)) b!3721635))

(assert (= (and b!3721635 c!643708) b!3721632))

(assert (= (and b!3721635 (not c!643708)) b!3721634))

(assert (= (and b!3721634 c!643709) b!3721631))

(assert (= (and b!3721634 (not c!643709)) b!3721636))

(assert (= (and b!3721636 c!643710) b!3721633))

(assert (= (and b!3721636 (not c!643710)) b!3721637))

(assert (= (or b!3721633 b!3721637) bm!270525))

(assert (= (or b!3721633 b!3721637) bm!270526))

(assert (= (or b!3721633 b!3721637) bm!270523))

(assert (= (or b!3721631 bm!270525) bm!270524))

(declare-fun m!4225747 () Bool)

(assert (=> bm!270523 m!4225747))

(declare-fun m!4225749 () Bool)

(assert (=> bm!270524 m!4225749))

(declare-fun m!4225751 () Bool)

(assert (=> bm!270526 m!4225751))

(assert (=> b!3721466 d!1089414))

(declare-fun b!3721638 () Bool)

(declare-fun res!1512508 () Bool)

(declare-fun e!2303906 () Bool)

(assert (=> b!3721638 (=> (not res!1512508) (not e!2303906))))

(declare-fun call!270533 () Bool)

(assert (=> b!3721638 (= res!1512508 call!270533)))

(declare-fun e!2303909 () Bool)

(assert (=> b!3721638 (= e!2303909 e!2303906)))

(declare-fun b!3721639 () Bool)

(declare-fun e!2303911 () Bool)

(declare-fun call!270532 () Bool)

(assert (=> b!3721639 (= e!2303911 call!270532)))

(declare-fun b!3721640 () Bool)

(declare-fun e!2303910 () Bool)

(declare-fun e!2303908 () Bool)

(assert (=> b!3721640 (= e!2303910 e!2303908)))

(declare-fun c!643712 () Bool)

(assert (=> b!3721640 (= c!643712 ((_ is Star!10869) r!26968))))

(declare-fun b!3721641 () Bool)

(declare-fun call!270534 () Bool)

(assert (=> b!3721641 (= e!2303906 call!270534)))

(declare-fun bm!270527 () Bool)

(declare-fun c!643711 () Bool)

(assert (=> bm!270527 (= call!270533 (validRegex!4976 (ite c!643711 (regOne!22251 r!26968) (regOne!22250 r!26968))))))

(declare-fun bm!270528 () Bool)

(assert (=> bm!270528 (= call!270532 (validRegex!4976 (ite c!643712 (reg!11198 r!26968) (ite c!643711 (regTwo!22251 r!26968) (regTwo!22250 r!26968)))))))

(declare-fun b!3721643 () Bool)

(declare-fun e!2303907 () Bool)

(assert (=> b!3721643 (= e!2303907 call!270534)))

(declare-fun bm!270529 () Bool)

(assert (=> bm!270529 (= call!270534 call!270532)))

(declare-fun b!3721644 () Bool)

(assert (=> b!3721644 (= e!2303908 e!2303909)))

(assert (=> b!3721644 (= c!643711 ((_ is Union!10869) r!26968))))

(declare-fun b!3721645 () Bool)

(assert (=> b!3721645 (= e!2303908 e!2303911)))

(declare-fun res!1512510 () Bool)

(assert (=> b!3721645 (= res!1512510 (not (nullable!3785 (reg!11198 r!26968))))))

(assert (=> b!3721645 (=> (not res!1512510) (not e!2303911))))

(declare-fun b!3721646 () Bool)

(declare-fun res!1512507 () Bool)

(declare-fun e!2303912 () Bool)

(assert (=> b!3721646 (=> res!1512507 e!2303912)))

(assert (=> b!3721646 (= res!1512507 (not ((_ is Concat!17140) r!26968)))))

(assert (=> b!3721646 (= e!2303909 e!2303912)))

(declare-fun b!3721642 () Bool)

(assert (=> b!3721642 (= e!2303912 e!2303907)))

(declare-fun res!1512506 () Bool)

(assert (=> b!3721642 (=> (not res!1512506) (not e!2303907))))

(assert (=> b!3721642 (= res!1512506 call!270533)))

(declare-fun d!1089416 () Bool)

(declare-fun res!1512509 () Bool)

(assert (=> d!1089416 (=> res!1512509 e!2303910)))

(assert (=> d!1089416 (= res!1512509 ((_ is ElementMatch!10869) r!26968))))

(assert (=> d!1089416 (= (validRegex!4976 r!26968) e!2303910)))

(assert (= (and d!1089416 (not res!1512509)) b!3721640))

(assert (= (and b!3721640 c!643712) b!3721645))

(assert (= (and b!3721640 (not c!643712)) b!3721644))

(assert (= (and b!3721645 res!1512510) b!3721639))

(assert (= (and b!3721644 c!643711) b!3721638))

(assert (= (and b!3721644 (not c!643711)) b!3721646))

(assert (= (and b!3721638 res!1512508) b!3721641))

(assert (= (and b!3721646 (not res!1512507)) b!3721642))

(assert (= (and b!3721642 res!1512506) b!3721643))

(assert (= (or b!3721641 b!3721643) bm!270529))

(assert (= (or b!3721638 b!3721642) bm!270527))

(assert (= (or b!3721639 bm!270529) bm!270528))

(declare-fun m!4225753 () Bool)

(assert (=> bm!270527 m!4225753))

(declare-fun m!4225755 () Bool)

(assert (=> bm!270528 m!4225755))

(declare-fun m!4225757 () Bool)

(assert (=> b!3721645 m!4225757))

(assert (=> start!350470 d!1089416))

(declare-fun b!3721659 () Bool)

(declare-fun e!2303915 () Bool)

(declare-fun tp!1131796 () Bool)

(assert (=> b!3721659 (= e!2303915 tp!1131796)))

(declare-fun b!3721660 () Bool)

(declare-fun tp!1131795 () Bool)

(declare-fun tp!1131799 () Bool)

(assert (=> b!3721660 (= e!2303915 (and tp!1131795 tp!1131799))))

(declare-fun b!3721658 () Bool)

(declare-fun tp!1131798 () Bool)

(declare-fun tp!1131797 () Bool)

(assert (=> b!3721658 (= e!2303915 (and tp!1131798 tp!1131797))))

(declare-fun b!3721657 () Bool)

(assert (=> b!3721657 (= e!2303915 tp_is_empty!18753)))

(assert (=> b!3721470 (= tp!1131780 e!2303915)))

(assert (= (and b!3721470 ((_ is ElementMatch!10869) (regOne!22251 r!26968))) b!3721657))

(assert (= (and b!3721470 ((_ is Concat!17140) (regOne!22251 r!26968))) b!3721658))

(assert (= (and b!3721470 ((_ is Star!10869) (regOne!22251 r!26968))) b!3721659))

(assert (= (and b!3721470 ((_ is Union!10869) (regOne!22251 r!26968))) b!3721660))

(declare-fun b!3721663 () Bool)

(declare-fun e!2303916 () Bool)

(declare-fun tp!1131801 () Bool)

(assert (=> b!3721663 (= e!2303916 tp!1131801)))

(declare-fun b!3721664 () Bool)

(declare-fun tp!1131800 () Bool)

(declare-fun tp!1131804 () Bool)

(assert (=> b!3721664 (= e!2303916 (and tp!1131800 tp!1131804))))

(declare-fun b!3721662 () Bool)

(declare-fun tp!1131803 () Bool)

(declare-fun tp!1131802 () Bool)

(assert (=> b!3721662 (= e!2303916 (and tp!1131803 tp!1131802))))

(declare-fun b!3721661 () Bool)

(assert (=> b!3721661 (= e!2303916 tp_is_empty!18753)))

(assert (=> b!3721470 (= tp!1131782 e!2303916)))

(assert (= (and b!3721470 ((_ is ElementMatch!10869) (regTwo!22251 r!26968))) b!3721661))

(assert (= (and b!3721470 ((_ is Concat!17140) (regTwo!22251 r!26968))) b!3721662))

(assert (= (and b!3721470 ((_ is Star!10869) (regTwo!22251 r!26968))) b!3721663))

(assert (= (and b!3721470 ((_ is Union!10869) (regTwo!22251 r!26968))) b!3721664))

(declare-fun b!3721667 () Bool)

(declare-fun e!2303917 () Bool)

(declare-fun tp!1131806 () Bool)

(assert (=> b!3721667 (= e!2303917 tp!1131806)))

(declare-fun b!3721668 () Bool)

(declare-fun tp!1131805 () Bool)

(declare-fun tp!1131809 () Bool)

(assert (=> b!3721668 (= e!2303917 (and tp!1131805 tp!1131809))))

(declare-fun b!3721666 () Bool)

(declare-fun tp!1131808 () Bool)

(declare-fun tp!1131807 () Bool)

(assert (=> b!3721666 (= e!2303917 (and tp!1131808 tp!1131807))))

(declare-fun b!3721665 () Bool)

(assert (=> b!3721665 (= e!2303917 tp_is_empty!18753)))

(assert (=> b!3721468 (= tp!1131781 e!2303917)))

(assert (= (and b!3721468 ((_ is ElementMatch!10869) (reg!11198 r!26968))) b!3721665))

(assert (= (and b!3721468 ((_ is Concat!17140) (reg!11198 r!26968))) b!3721666))

(assert (= (and b!3721468 ((_ is Star!10869) (reg!11198 r!26968))) b!3721667))

(assert (= (and b!3721468 ((_ is Union!10869) (reg!11198 r!26968))) b!3721668))

(declare-fun b!3721671 () Bool)

(declare-fun e!2303918 () Bool)

(declare-fun tp!1131811 () Bool)

(assert (=> b!3721671 (= e!2303918 tp!1131811)))

(declare-fun b!3721672 () Bool)

(declare-fun tp!1131810 () Bool)

(declare-fun tp!1131814 () Bool)

(assert (=> b!3721672 (= e!2303918 (and tp!1131810 tp!1131814))))

(declare-fun b!3721670 () Bool)

(declare-fun tp!1131813 () Bool)

(declare-fun tp!1131812 () Bool)

(assert (=> b!3721670 (= e!2303918 (and tp!1131813 tp!1131812))))

(declare-fun b!3721669 () Bool)

(assert (=> b!3721669 (= e!2303918 tp_is_empty!18753)))

(assert (=> b!3721472 (= tp!1131784 e!2303918)))

(assert (= (and b!3721472 ((_ is ElementMatch!10869) (regOne!22250 r!26968))) b!3721669))

(assert (= (and b!3721472 ((_ is Concat!17140) (regOne!22250 r!26968))) b!3721670))

(assert (= (and b!3721472 ((_ is Star!10869) (regOne!22250 r!26968))) b!3721671))

(assert (= (and b!3721472 ((_ is Union!10869) (regOne!22250 r!26968))) b!3721672))

(declare-fun b!3721675 () Bool)

(declare-fun e!2303919 () Bool)

(declare-fun tp!1131816 () Bool)

(assert (=> b!3721675 (= e!2303919 tp!1131816)))

(declare-fun b!3721676 () Bool)

(declare-fun tp!1131815 () Bool)

(declare-fun tp!1131819 () Bool)

(assert (=> b!3721676 (= e!2303919 (and tp!1131815 tp!1131819))))

(declare-fun b!3721674 () Bool)

(declare-fun tp!1131818 () Bool)

(declare-fun tp!1131817 () Bool)

(assert (=> b!3721674 (= e!2303919 (and tp!1131818 tp!1131817))))

(declare-fun b!3721673 () Bool)

(assert (=> b!3721673 (= e!2303919 tp_is_empty!18753)))

(assert (=> b!3721472 (= tp!1131783 e!2303919)))

(assert (= (and b!3721472 ((_ is ElementMatch!10869) (regTwo!22250 r!26968))) b!3721673))

(assert (= (and b!3721472 ((_ is Concat!17140) (regTwo!22250 r!26968))) b!3721674))

(assert (= (and b!3721472 ((_ is Star!10869) (regTwo!22250 r!26968))) b!3721675))

(assert (= (and b!3721472 ((_ is Union!10869) (regTwo!22250 r!26968))) b!3721676))

(check-sat (not b!3721675) (not d!1089404) (not bm!270510) (not bm!270523) (not b!3721664) (not bm!270518) (not b!3721668) (not b!3721671) (not bm!270526) (not bm!270515) (not b!3721662) (not b!3721666) (not d!1089398) (not bm!270524) (not b!3721658) (not b!3721663) (not bm!270493) (not d!1089410) (not b!3721588) (not b!3721676) (not d!1089392) (not d!1089412) (not bm!270511) (not bm!270473) (not b!3721674) (not d!1089396) (not b!3721554) (not bm!270516) tp_is_empty!18753 (not b!3721672) (not bm!270507) (not bm!270528) (not b!3721645) (not b!3721667) (not b!3721605) (not b!3721670) (not d!1089406) (not b!3721629) (not b!3721542) (not b!3721619) (not bm!270494) (not bm!270506) (not bm!270527) (not bm!270475) (not b!3721659) (not b!3721660) (not bm!270472))
(check-sat)
