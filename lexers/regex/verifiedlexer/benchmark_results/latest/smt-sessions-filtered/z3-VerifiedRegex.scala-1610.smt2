; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82742 () Bool)

(assert start!82742)

(declare-fun b!921503 () Bool)

(assert (=> b!921503 true))

(assert (=> b!921503 true))

(declare-fun lambda!30056 () Int)

(declare-fun lambda!30055 () Int)

(assert (=> b!921503 (not (= lambda!30056 lambda!30055))))

(assert (=> b!921503 true))

(assert (=> b!921503 true))

(declare-fun bs!236837 () Bool)

(declare-fun b!921506 () Bool)

(assert (= bs!236837 (and b!921506 b!921503)))

(declare-datatypes ((C!5528 0))(
  ( (C!5529 (val!3012 Int)) )
))
(declare-datatypes ((Regex!2479 0))(
  ( (ElementMatch!2479 (c!149506 C!5528)) (Concat!4312 (regOne!5470 Regex!2479) (regTwo!5470 Regex!2479)) (EmptyExpr!2479) (Star!2479 (reg!2808 Regex!2479)) (EmptyLang!2479) (Union!2479 (regOne!5471 Regex!2479) (regTwo!5471 Regex!2479)) )
))
(declare-fun lt!338551 () Regex!2479)

(declare-fun lambda!30057 () Int)

(declare-fun r!15766 () Regex!2479)

(declare-fun lt!338546 () Regex!2479)

(assert (=> bs!236837 (= (and (= lt!338546 (regOne!5470 r!15766)) (= lt!338551 (regTwo!5470 r!15766))) (= lambda!30057 lambda!30055))))

(assert (=> bs!236837 (not (= lambda!30057 lambda!30056))))

(assert (=> b!921506 true))

(assert (=> b!921506 true))

(assert (=> b!921506 true))

(declare-fun lambda!30058 () Int)

(assert (=> bs!236837 (not (= lambda!30058 lambda!30055))))

(assert (=> bs!236837 (= (and (= lt!338546 (regOne!5470 r!15766)) (= lt!338551 (regTwo!5470 r!15766))) (= lambda!30058 lambda!30056))))

(assert (=> b!921506 (not (= lambda!30058 lambda!30057))))

(assert (=> b!921506 true))

(assert (=> b!921506 true))

(assert (=> b!921506 true))

(declare-fun e!599933 () Bool)

(declare-fun e!599938 () Bool)

(assert (=> b!921503 (= e!599933 e!599938)))

(declare-fun res!418942 () Bool)

(assert (=> b!921503 (=> res!418942 e!599938)))

(declare-datatypes ((List!9709 0))(
  ( (Nil!9693) (Cons!9693 (h!15094 C!5528) (t!100755 List!9709)) )
))
(declare-fun s!10566 () List!9709)

(declare-fun isEmpty!5938 (List!9709) Bool)

(assert (=> b!921503 (= res!418942 (isEmpty!5938 s!10566))))

(declare-fun Exists!250 (Int) Bool)

(assert (=> b!921503 (= (Exists!250 lambda!30055) (Exists!250 lambda!30056))))

(declare-datatypes ((Unit!14577 0))(
  ( (Unit!14578) )
))
(declare-fun lt!338547 () Unit!14577)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!162 (Regex!2479 Regex!2479 List!9709) Unit!14577)

(assert (=> b!921503 (= lt!338547 (lemmaExistCutMatchRandMatchRSpecEquivalent!162 (regOne!5470 r!15766) (regTwo!5470 r!15766) s!10566))))

(declare-datatypes ((tuple2!10944 0))(
  ( (tuple2!10945 (_1!6298 List!9709) (_2!6298 List!9709)) )
))
(declare-datatypes ((Option!2114 0))(
  ( (None!2113) (Some!2113 (v!19530 tuple2!10944)) )
))
(declare-fun isDefined!1756 (Option!2114) Bool)

(declare-fun findConcatSeparation!220 (Regex!2479 Regex!2479 List!9709 List!9709 List!9709) Option!2114)

(assert (=> b!921503 (= (isDefined!1756 (findConcatSeparation!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) Nil!9693 s!10566 s!10566)) (Exists!250 lambda!30055))))

(declare-fun lt!338554 () Unit!14577)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!220 (Regex!2479 Regex!2479 List!9709) Unit!14577)

(assert (=> b!921503 (= lt!338554 (lemmaFindConcatSeparationEquivalentToExists!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) s!10566))))

(declare-fun b!921504 () Bool)

(declare-fun e!599936 () Bool)

(declare-fun tp_is_empty!4601 () Bool)

(assert (=> b!921504 (= e!599936 tp_is_empty!4601)))

(declare-fun res!418940 () Bool)

(declare-fun e!599939 () Bool)

(assert (=> start!82742 (=> (not res!418940) (not e!599939))))

(declare-fun validRegex!948 (Regex!2479) Bool)

(assert (=> start!82742 (= res!418940 (validRegex!948 r!15766))))

(assert (=> start!82742 e!599939))

(assert (=> start!82742 e!599936))

(declare-fun e!599934 () Bool)

(assert (=> start!82742 e!599934))

(declare-fun b!921505 () Bool)

(assert (=> b!921505 (= e!599939 (not e!599933))))

(declare-fun res!418939 () Bool)

(assert (=> b!921505 (=> res!418939 e!599933)))

(declare-fun lt!338552 () Bool)

(get-info :version)

(assert (=> b!921505 (= res!418939 (or lt!338552 (and ((_ is Concat!4312) r!15766) ((_ is EmptyExpr!2479) (regOne!5470 r!15766))) (and ((_ is Concat!4312) r!15766) ((_ is EmptyExpr!2479) (regTwo!5470 r!15766))) (not ((_ is Concat!4312) r!15766))))))

(declare-fun matchRSpec!280 (Regex!2479 List!9709) Bool)

(assert (=> b!921505 (= lt!338552 (matchRSpec!280 r!15766 s!10566))))

(declare-fun matchR!1017 (Regex!2479 List!9709) Bool)

(assert (=> b!921505 (= lt!338552 (matchR!1017 r!15766 s!10566))))

(declare-fun lt!338553 () Unit!14577)

(declare-fun mainMatchTheorem!280 (Regex!2479 List!9709) Unit!14577)

(assert (=> b!921505 (= lt!338553 (mainMatchTheorem!280 r!15766 s!10566))))

(declare-fun e!599935 () Bool)

(declare-fun e!599937 () Bool)

(assert (=> b!921506 (= e!599935 e!599937)))

(declare-fun res!418937 () Bool)

(assert (=> b!921506 (=> res!418937 e!599937)))

(assert (=> b!921506 (= res!418937 (not (validRegex!948 lt!338546)))))

(assert (=> b!921506 (= (Exists!250 lambda!30057) (Exists!250 lambda!30058))))

(declare-fun lt!338550 () Unit!14577)

(assert (=> b!921506 (= lt!338550 (lemmaExistCutMatchRandMatchRSpecEquivalent!162 lt!338546 lt!338551 s!10566))))

(assert (=> b!921506 (= (isDefined!1756 (findConcatSeparation!220 lt!338546 lt!338551 Nil!9693 s!10566 s!10566)) (Exists!250 lambda!30057))))

(declare-fun lt!338549 () Unit!14577)

(assert (=> b!921506 (= lt!338549 (lemmaFindConcatSeparationEquivalentToExists!220 lt!338546 lt!338551 s!10566))))

(declare-fun lt!338555 () Regex!2479)

(assert (=> b!921506 (matchRSpec!280 lt!338555 s!10566)))

(declare-fun lt!338548 () Unit!14577)

(assert (=> b!921506 (= lt!338548 (mainMatchTheorem!280 lt!338555 s!10566))))

(declare-fun b!921507 () Bool)

(declare-fun tp!287008 () Bool)

(declare-fun tp!287007 () Bool)

(assert (=> b!921507 (= e!599936 (and tp!287008 tp!287007))))

(declare-fun b!921508 () Bool)

(declare-fun ++!2567 (List!9709 List!9709) List!9709)

(assert (=> b!921508 (= e!599937 (= (++!2567 Nil!9693 s!10566) s!10566))))

(declare-fun b!921509 () Bool)

(declare-fun tp!287011 () Bool)

(assert (=> b!921509 (= e!599936 tp!287011)))

(declare-fun b!921510 () Bool)

(assert (=> b!921510 (= e!599938 e!599935)))

(declare-fun res!418941 () Bool)

(assert (=> b!921510 (=> res!418941 e!599935)))

(assert (=> b!921510 (= res!418941 (not (matchR!1017 lt!338555 s!10566)))))

(assert (=> b!921510 (= lt!338555 (Concat!4312 lt!338546 lt!338551))))

(declare-fun removeUselessConcat!156 (Regex!2479) Regex!2479)

(assert (=> b!921510 (= lt!338551 (removeUselessConcat!156 (regTwo!5470 r!15766)))))

(assert (=> b!921510 (= lt!338546 (removeUselessConcat!156 (regOne!5470 r!15766)))))

(declare-fun b!921511 () Bool)

(declare-fun tp!287009 () Bool)

(declare-fun tp!287012 () Bool)

(assert (=> b!921511 (= e!599936 (and tp!287009 tp!287012))))

(declare-fun b!921512 () Bool)

(declare-fun tp!287010 () Bool)

(assert (=> b!921512 (= e!599934 (and tp_is_empty!4601 tp!287010))))

(declare-fun b!921513 () Bool)

(declare-fun res!418938 () Bool)

(assert (=> b!921513 (=> res!418938 e!599937)))

(assert (=> b!921513 (= res!418938 (not (validRegex!948 lt!338551)))))

(assert (= (and start!82742 res!418940) b!921505))

(assert (= (and b!921505 (not res!418939)) b!921503))

(assert (= (and b!921503 (not res!418942)) b!921510))

(assert (= (and b!921510 (not res!418941)) b!921506))

(assert (= (and b!921506 (not res!418937)) b!921513))

(assert (= (and b!921513 (not res!418938)) b!921508))

(assert (= (and start!82742 ((_ is ElementMatch!2479) r!15766)) b!921504))

(assert (= (and start!82742 ((_ is Concat!4312) r!15766)) b!921511))

(assert (= (and start!82742 ((_ is Star!2479) r!15766)) b!921509))

(assert (= (and start!82742 ((_ is Union!2479) r!15766)) b!921507))

(assert (= (and start!82742 ((_ is Cons!9693) s!10566)) b!921512))

(declare-fun m!1148523 () Bool)

(assert (=> b!921508 m!1148523))

(declare-fun m!1148525 () Bool)

(assert (=> b!921503 m!1148525))

(declare-fun m!1148527 () Bool)

(assert (=> b!921503 m!1148527))

(declare-fun m!1148529 () Bool)

(assert (=> b!921503 m!1148529))

(declare-fun m!1148531 () Bool)

(assert (=> b!921503 m!1148531))

(declare-fun m!1148533 () Bool)

(assert (=> b!921503 m!1148533))

(assert (=> b!921503 m!1148525))

(declare-fun m!1148535 () Bool)

(assert (=> b!921503 m!1148535))

(assert (=> b!921503 m!1148527))

(declare-fun m!1148537 () Bool)

(assert (=> b!921503 m!1148537))

(declare-fun m!1148539 () Bool)

(assert (=> start!82742 m!1148539))

(declare-fun m!1148541 () Bool)

(assert (=> b!921505 m!1148541))

(declare-fun m!1148543 () Bool)

(assert (=> b!921505 m!1148543))

(declare-fun m!1148545 () Bool)

(assert (=> b!921505 m!1148545))

(declare-fun m!1148547 () Bool)

(assert (=> b!921506 m!1148547))

(declare-fun m!1148549 () Bool)

(assert (=> b!921506 m!1148549))

(declare-fun m!1148551 () Bool)

(assert (=> b!921506 m!1148551))

(declare-fun m!1148553 () Bool)

(assert (=> b!921506 m!1148553))

(declare-fun m!1148555 () Bool)

(assert (=> b!921506 m!1148555))

(declare-fun m!1148557 () Bool)

(assert (=> b!921506 m!1148557))

(declare-fun m!1148559 () Bool)

(assert (=> b!921506 m!1148559))

(assert (=> b!921506 m!1148555))

(declare-fun m!1148561 () Bool)

(assert (=> b!921506 m!1148561))

(declare-fun m!1148563 () Bool)

(assert (=> b!921506 m!1148563))

(assert (=> b!921506 m!1148547))

(declare-fun m!1148565 () Bool)

(assert (=> b!921513 m!1148565))

(declare-fun m!1148567 () Bool)

(assert (=> b!921510 m!1148567))

(declare-fun m!1148569 () Bool)

(assert (=> b!921510 m!1148569))

(declare-fun m!1148571 () Bool)

(assert (=> b!921510 m!1148571))

(check-sat tp_is_empty!4601 (not b!921511) (not b!921512) (not b!921510) (not b!921507) (not b!921503) (not b!921506) (not b!921505) (not b!921508) (not start!82742) (not b!921509) (not b!921513))
(check-sat)
(get-model)

(declare-fun d!280489 () Bool)

(assert (=> d!280489 (= (matchR!1017 lt!338555 s!10566) (matchRSpec!280 lt!338555 s!10566))))

(declare-fun lt!338558 () Unit!14577)

(declare-fun choose!5652 (Regex!2479 List!9709) Unit!14577)

(assert (=> d!280489 (= lt!338558 (choose!5652 lt!338555 s!10566))))

(assert (=> d!280489 (validRegex!948 lt!338555)))

(assert (=> d!280489 (= (mainMatchTheorem!280 lt!338555 s!10566) lt!338558)))

(declare-fun bs!236838 () Bool)

(assert (= bs!236838 d!280489))

(assert (=> bs!236838 m!1148567))

(assert (=> bs!236838 m!1148553))

(declare-fun m!1148579 () Bool)

(assert (=> bs!236838 m!1148579))

(declare-fun m!1148581 () Bool)

(assert (=> bs!236838 m!1148581))

(assert (=> b!921506 d!280489))

(declare-fun d!280493 () Bool)

(declare-fun choose!5653 (Int) Bool)

(assert (=> d!280493 (= (Exists!250 lambda!30057) (choose!5653 lambda!30057))))

(declare-fun bs!236839 () Bool)

(assert (= bs!236839 d!280493))

(declare-fun m!1148583 () Bool)

(assert (=> bs!236839 m!1148583))

(assert (=> b!921506 d!280493))

(declare-fun d!280495 () Bool)

(declare-fun isEmpty!5940 (Option!2114) Bool)

(assert (=> d!280495 (= (isDefined!1756 (findConcatSeparation!220 lt!338546 lt!338551 Nil!9693 s!10566 s!10566)) (not (isEmpty!5940 (findConcatSeparation!220 lt!338546 lt!338551 Nil!9693 s!10566 s!10566))))))

(declare-fun bs!236840 () Bool)

(assert (= bs!236840 d!280495))

(assert (=> bs!236840 m!1148547))

(declare-fun m!1148585 () Bool)

(assert (=> bs!236840 m!1148585))

(assert (=> b!921506 d!280495))

(declare-fun bs!236848 () Bool)

(declare-fun d!280497 () Bool)

(assert (= bs!236848 (and d!280497 b!921503)))

(declare-fun lambda!30069 () Int)

(assert (=> bs!236848 (= (and (= lt!338546 (regOne!5470 r!15766)) (= lt!338551 (regTwo!5470 r!15766))) (= lambda!30069 lambda!30055))))

(assert (=> bs!236848 (not (= lambda!30069 lambda!30056))))

(declare-fun bs!236849 () Bool)

(assert (= bs!236849 (and d!280497 b!921506)))

(assert (=> bs!236849 (= lambda!30069 lambda!30057)))

(assert (=> bs!236849 (not (= lambda!30069 lambda!30058))))

(assert (=> d!280497 true))

(assert (=> d!280497 true))

(assert (=> d!280497 true))

(assert (=> d!280497 (= (isDefined!1756 (findConcatSeparation!220 lt!338546 lt!338551 Nil!9693 s!10566 s!10566)) (Exists!250 lambda!30069))))

(declare-fun lt!338570 () Unit!14577)

(declare-fun choose!5654 (Regex!2479 Regex!2479 List!9709) Unit!14577)

(assert (=> d!280497 (= lt!338570 (choose!5654 lt!338546 lt!338551 s!10566))))

(assert (=> d!280497 (validRegex!948 lt!338546)))

(assert (=> d!280497 (= (lemmaFindConcatSeparationEquivalentToExists!220 lt!338546 lt!338551 s!10566) lt!338570)))

(declare-fun bs!236851 () Bool)

(assert (= bs!236851 d!280497))

(assert (=> bs!236851 m!1148563))

(assert (=> bs!236851 m!1148547))

(declare-fun m!1148609 () Bool)

(assert (=> bs!236851 m!1148609))

(assert (=> bs!236851 m!1148547))

(assert (=> bs!236851 m!1148549))

(declare-fun m!1148611 () Bool)

(assert (=> bs!236851 m!1148611))

(assert (=> b!921506 d!280497))

(declare-fun b!921658 () Bool)

(declare-fun e!600028 () Bool)

(assert (=> b!921658 (= e!600028 (matchR!1017 lt!338551 s!10566))))

(declare-fun b!921659 () Bool)

(declare-fun e!600026 () Bool)

(declare-fun lt!338586 () Option!2114)

(assert (=> b!921659 (= e!600026 (not (isDefined!1756 lt!338586)))))

(declare-fun b!921660 () Bool)

(declare-fun res!419025 () Bool)

(declare-fun e!600027 () Bool)

(assert (=> b!921660 (=> (not res!419025) (not e!600027))))

(declare-fun get!3162 (Option!2114) tuple2!10944)

(assert (=> b!921660 (= res!419025 (matchR!1017 lt!338546 (_1!6298 (get!3162 lt!338586))))))

(declare-fun d!280509 () Bool)

(assert (=> d!280509 e!600026))

(declare-fun res!419024 () Bool)

(assert (=> d!280509 (=> res!419024 e!600026)))

(assert (=> d!280509 (= res!419024 e!600027)))

(declare-fun res!419026 () Bool)

(assert (=> d!280509 (=> (not res!419026) (not e!600027))))

(assert (=> d!280509 (= res!419026 (isDefined!1756 lt!338586))))

(declare-fun e!600029 () Option!2114)

(assert (=> d!280509 (= lt!338586 e!600029)))

(declare-fun c!149538 () Bool)

(assert (=> d!280509 (= c!149538 e!600028)))

(declare-fun res!419027 () Bool)

(assert (=> d!280509 (=> (not res!419027) (not e!600028))))

(assert (=> d!280509 (= res!419027 (matchR!1017 lt!338546 Nil!9693))))

(assert (=> d!280509 (validRegex!948 lt!338546)))

(assert (=> d!280509 (= (findConcatSeparation!220 lt!338546 lt!338551 Nil!9693 s!10566 s!10566) lt!338586)))

(declare-fun b!921661 () Bool)

(assert (=> b!921661 (= e!600027 (= (++!2567 (_1!6298 (get!3162 lt!338586)) (_2!6298 (get!3162 lt!338586))) s!10566))))

(declare-fun b!921662 () Bool)

(declare-fun e!600030 () Option!2114)

(assert (=> b!921662 (= e!600029 e!600030)))

(declare-fun c!149537 () Bool)

(assert (=> b!921662 (= c!149537 ((_ is Nil!9693) s!10566))))

(declare-fun b!921663 () Bool)

(assert (=> b!921663 (= e!600029 (Some!2113 (tuple2!10945 Nil!9693 s!10566)))))

(declare-fun b!921664 () Bool)

(assert (=> b!921664 (= e!600030 None!2113)))

(declare-fun b!921665 () Bool)

(declare-fun res!419023 () Bool)

(assert (=> b!921665 (=> (not res!419023) (not e!600027))))

(assert (=> b!921665 (= res!419023 (matchR!1017 lt!338551 (_2!6298 (get!3162 lt!338586))))))

(declare-fun b!921666 () Bool)

(declare-fun lt!338588 () Unit!14577)

(declare-fun lt!338587 () Unit!14577)

(assert (=> b!921666 (= lt!338588 lt!338587)))

(assert (=> b!921666 (= (++!2567 (++!2567 Nil!9693 (Cons!9693 (h!15094 s!10566) Nil!9693)) (t!100755 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!182 (List!9709 C!5528 List!9709 List!9709) Unit!14577)

(assert (=> b!921666 (= lt!338587 (lemmaMoveElementToOtherListKeepsConcatEq!182 Nil!9693 (h!15094 s!10566) (t!100755 s!10566) s!10566))))

(assert (=> b!921666 (= e!600030 (findConcatSeparation!220 lt!338546 lt!338551 (++!2567 Nil!9693 (Cons!9693 (h!15094 s!10566) Nil!9693)) (t!100755 s!10566) s!10566))))

(assert (= (and d!280509 res!419027) b!921658))

(assert (= (and d!280509 c!149538) b!921663))

(assert (= (and d!280509 (not c!149538)) b!921662))

(assert (= (and b!921662 c!149537) b!921664))

(assert (= (and b!921662 (not c!149537)) b!921666))

(assert (= (and d!280509 res!419026) b!921660))

(assert (= (and b!921660 res!419025) b!921665))

(assert (= (and b!921665 res!419023) b!921661))

(assert (= (and d!280509 (not res!419024)) b!921659))

(declare-fun m!1148645 () Bool)

(assert (=> b!921660 m!1148645))

(declare-fun m!1148647 () Bool)

(assert (=> b!921660 m!1148647))

(assert (=> b!921661 m!1148645))

(declare-fun m!1148649 () Bool)

(assert (=> b!921661 m!1148649))

(declare-fun m!1148651 () Bool)

(assert (=> b!921666 m!1148651))

(assert (=> b!921666 m!1148651))

(declare-fun m!1148653 () Bool)

(assert (=> b!921666 m!1148653))

(declare-fun m!1148655 () Bool)

(assert (=> b!921666 m!1148655))

(assert (=> b!921666 m!1148651))

(declare-fun m!1148657 () Bool)

(assert (=> b!921666 m!1148657))

(declare-fun m!1148659 () Bool)

(assert (=> d!280509 m!1148659))

(declare-fun m!1148661 () Bool)

(assert (=> d!280509 m!1148661))

(assert (=> d!280509 m!1148563))

(declare-fun m!1148663 () Bool)

(assert (=> b!921658 m!1148663))

(assert (=> b!921665 m!1148645))

(declare-fun m!1148665 () Bool)

(assert (=> b!921665 m!1148665))

(assert (=> b!921659 m!1148659))

(assert (=> b!921506 d!280509))

(declare-fun bs!236896 () Bool)

(declare-fun b!921814 () Bool)

(assert (= bs!236896 (and b!921814 d!280497)))

(declare-fun lambda!30086 () Int)

(assert (=> bs!236896 (not (= lambda!30086 lambda!30069))))

(declare-fun bs!236898 () Bool)

(assert (= bs!236898 (and b!921814 b!921503)))

(assert (=> bs!236898 (not (= lambda!30086 lambda!30055))))

(declare-fun bs!236900 () Bool)

(assert (= bs!236900 (and b!921814 b!921506)))

(assert (=> bs!236900 (not (= lambda!30086 lambda!30057))))

(assert (=> bs!236898 (not (= lambda!30086 lambda!30056))))

(assert (=> bs!236900 (not (= lambda!30086 lambda!30058))))

(assert (=> b!921814 true))

(assert (=> b!921814 true))

(declare-fun bs!236902 () Bool)

(declare-fun b!921815 () Bool)

(assert (= bs!236902 (and b!921815 b!921814)))

(declare-fun lambda!30087 () Int)

(assert (=> bs!236902 (not (= lambda!30087 lambda!30086))))

(declare-fun bs!236903 () Bool)

(assert (= bs!236903 (and b!921815 d!280497)))

(assert (=> bs!236903 (not (= lambda!30087 lambda!30069))))

(declare-fun bs!236904 () Bool)

(assert (= bs!236904 (and b!921815 b!921503)))

(assert (=> bs!236904 (not (= lambda!30087 lambda!30055))))

(declare-fun bs!236906 () Bool)

(assert (= bs!236906 (and b!921815 b!921506)))

(assert (=> bs!236906 (not (= lambda!30087 lambda!30057))))

(assert (=> bs!236904 (= (and (= (regOne!5470 lt!338555) (regOne!5470 r!15766)) (= (regTwo!5470 lt!338555) (regTwo!5470 r!15766))) (= lambda!30087 lambda!30056))))

(assert (=> bs!236906 (= (and (= (regOne!5470 lt!338555) lt!338546) (= (regTwo!5470 lt!338555) lt!338551)) (= lambda!30087 lambda!30058))))

(assert (=> b!921815 true))

(assert (=> b!921815 true))

(declare-fun d!280519 () Bool)

(declare-fun c!149585 () Bool)

(assert (=> d!280519 (= c!149585 ((_ is EmptyExpr!2479) lt!338555))))

(declare-fun e!600117 () Bool)

(assert (=> d!280519 (= (matchRSpec!280 lt!338555 s!10566) e!600117)))

(declare-fun e!600119 () Bool)

(declare-fun call!56122 () Bool)

(assert (=> b!921814 (= e!600119 call!56122)))

(declare-fun e!600118 () Bool)

(assert (=> b!921815 (= e!600118 call!56122)))

(declare-fun b!921816 () Bool)

(declare-fun e!600114 () Bool)

(assert (=> b!921816 (= e!600114 e!600118)))

(declare-fun c!149586 () Bool)

(assert (=> b!921816 (= c!149586 ((_ is Star!2479) lt!338555))))

(declare-fun b!921817 () Bool)

(declare-fun e!600116 () Bool)

(assert (=> b!921817 (= e!600116 (matchRSpec!280 (regTwo!5471 lt!338555) s!10566))))

(declare-fun b!921818 () Bool)

(declare-fun c!149587 () Bool)

(assert (=> b!921818 (= c!149587 ((_ is ElementMatch!2479) lt!338555))))

(declare-fun e!600115 () Bool)

(declare-fun e!600113 () Bool)

(assert (=> b!921818 (= e!600115 e!600113)))

(declare-fun b!921819 () Bool)

(declare-fun call!56123 () Bool)

(assert (=> b!921819 (= e!600117 call!56123)))

(declare-fun b!921820 () Bool)

(declare-fun c!149584 () Bool)

(assert (=> b!921820 (= c!149584 ((_ is Union!2479) lt!338555))))

(assert (=> b!921820 (= e!600113 e!600114)))

(declare-fun b!921821 () Bool)

(assert (=> b!921821 (= e!600114 e!600116)))

(declare-fun res!419087 () Bool)

(assert (=> b!921821 (= res!419087 (matchRSpec!280 (regOne!5471 lt!338555) s!10566))))

(assert (=> b!921821 (=> res!419087 e!600116)))

(declare-fun bm!56117 () Bool)

(assert (=> bm!56117 (= call!56123 (isEmpty!5938 s!10566))))

(declare-fun b!921822 () Bool)

(assert (=> b!921822 (= e!600113 (= s!10566 (Cons!9693 (c!149506 lt!338555) Nil!9693)))))

(declare-fun b!921823 () Bool)

(declare-fun res!419086 () Bool)

(assert (=> b!921823 (=> res!419086 e!600119)))

(assert (=> b!921823 (= res!419086 call!56123)))

(assert (=> b!921823 (= e!600118 e!600119)))

(declare-fun bm!56118 () Bool)

(assert (=> bm!56118 (= call!56122 (Exists!250 (ite c!149586 lambda!30086 lambda!30087)))))

(declare-fun b!921824 () Bool)

(assert (=> b!921824 (= e!600117 e!600115)))

(declare-fun res!419085 () Bool)

(assert (=> b!921824 (= res!419085 (not ((_ is EmptyLang!2479) lt!338555)))))

(assert (=> b!921824 (=> (not res!419085) (not e!600115))))

(assert (= (and d!280519 c!149585) b!921819))

(assert (= (and d!280519 (not c!149585)) b!921824))

(assert (= (and b!921824 res!419085) b!921818))

(assert (= (and b!921818 c!149587) b!921822))

(assert (= (and b!921818 (not c!149587)) b!921820))

(assert (= (and b!921820 c!149584) b!921821))

(assert (= (and b!921820 (not c!149584)) b!921816))

(assert (= (and b!921821 (not res!419087)) b!921817))

(assert (= (and b!921816 c!149586) b!921823))

(assert (= (and b!921816 (not c!149586)) b!921815))

(assert (= (and b!921823 (not res!419086)) b!921814))

(assert (= (or b!921814 b!921815) bm!56118))

(assert (= (or b!921819 b!921823) bm!56117))

(declare-fun m!1148755 () Bool)

(assert (=> b!921817 m!1148755))

(declare-fun m!1148757 () Bool)

(assert (=> b!921821 m!1148757))

(assert (=> bm!56117 m!1148533))

(declare-fun m!1148759 () Bool)

(assert (=> bm!56118 m!1148759))

(assert (=> b!921506 d!280519))

(declare-fun d!280549 () Bool)

(assert (=> d!280549 (= (Exists!250 lambda!30058) (choose!5653 lambda!30058))))

(declare-fun bs!236907 () Bool)

(assert (= bs!236907 d!280549))

(declare-fun m!1148761 () Bool)

(assert (=> bs!236907 m!1148761))

(assert (=> b!921506 d!280549))

(declare-fun b!921904 () Bool)

(declare-fun e!600157 () Bool)

(declare-fun call!56131 () Bool)

(assert (=> b!921904 (= e!600157 call!56131)))

(declare-fun bm!56126 () Bool)

(declare-fun call!56133 () Bool)

(declare-fun call!56132 () Bool)

(assert (=> bm!56126 (= call!56133 call!56132)))

(declare-fun b!921905 () Bool)

(declare-fun e!600162 () Bool)

(assert (=> b!921905 (= e!600162 e!600157)))

(declare-fun res!419114 () Bool)

(assert (=> b!921905 (=> (not res!419114) (not e!600157))))

(assert (=> b!921905 (= res!419114 call!56133)))

(declare-fun b!921906 () Bool)

(declare-fun e!600158 () Bool)

(declare-fun e!600161 () Bool)

(assert (=> b!921906 (= e!600158 e!600161)))

(declare-fun c!149598 () Bool)

(assert (=> b!921906 (= c!149598 ((_ is Star!2479) lt!338546))))

(declare-fun b!921907 () Bool)

(declare-fun res!419116 () Bool)

(declare-fun e!600159 () Bool)

(assert (=> b!921907 (=> (not res!419116) (not e!600159))))

(assert (=> b!921907 (= res!419116 call!56133)))

(declare-fun e!600163 () Bool)

(assert (=> b!921907 (= e!600163 e!600159)))

(declare-fun b!921908 () Bool)

(assert (=> b!921908 (= e!600161 e!600163)))

(declare-fun c!149599 () Bool)

(assert (=> b!921908 (= c!149599 ((_ is Union!2479) lt!338546))))

(declare-fun bm!56128 () Bool)

(assert (=> bm!56128 (= call!56131 (validRegex!948 (ite c!149599 (regTwo!5471 lt!338546) (regTwo!5470 lt!338546))))))

(declare-fun b!921909 () Bool)

(declare-fun e!600160 () Bool)

(assert (=> b!921909 (= e!600160 call!56132)))

(declare-fun b!921910 () Bool)

(declare-fun res!419112 () Bool)

(assert (=> b!921910 (=> res!419112 e!600162)))

(assert (=> b!921910 (= res!419112 (not ((_ is Concat!4312) lt!338546)))))

(assert (=> b!921910 (= e!600163 e!600162)))

(declare-fun d!280551 () Bool)

(declare-fun res!419113 () Bool)

(assert (=> d!280551 (=> res!419113 e!600158)))

(assert (=> d!280551 (= res!419113 ((_ is ElementMatch!2479) lt!338546))))

(assert (=> d!280551 (= (validRegex!948 lt!338546) e!600158)))

(declare-fun bm!56127 () Bool)

(assert (=> bm!56127 (= call!56132 (validRegex!948 (ite c!149598 (reg!2808 lt!338546) (ite c!149599 (regOne!5471 lt!338546) (regOne!5470 lt!338546)))))))

(declare-fun b!921911 () Bool)

(assert (=> b!921911 (= e!600159 call!56131)))

(declare-fun b!921912 () Bool)

(assert (=> b!921912 (= e!600161 e!600160)))

(declare-fun res!419115 () Bool)

(declare-fun nullable!691 (Regex!2479) Bool)

(assert (=> b!921912 (= res!419115 (not (nullable!691 (reg!2808 lt!338546))))))

(assert (=> b!921912 (=> (not res!419115) (not e!600160))))

(assert (= (and d!280551 (not res!419113)) b!921906))

(assert (= (and b!921906 c!149598) b!921912))

(assert (= (and b!921906 (not c!149598)) b!921908))

(assert (= (and b!921912 res!419115) b!921909))

(assert (= (and b!921908 c!149599) b!921907))

(assert (= (and b!921908 (not c!149599)) b!921910))

(assert (= (and b!921907 res!419116) b!921911))

(assert (= (and b!921910 (not res!419112)) b!921905))

(assert (= (and b!921905 res!419114) b!921904))

(assert (= (or b!921911 b!921904) bm!56128))

(assert (= (or b!921907 b!921905) bm!56126))

(assert (= (or b!921909 bm!56126) bm!56127))

(declare-fun m!1148777 () Bool)

(assert (=> bm!56128 m!1148777))

(declare-fun m!1148779 () Bool)

(assert (=> bm!56127 m!1148779))

(declare-fun m!1148781 () Bool)

(assert (=> b!921912 m!1148781))

(assert (=> b!921506 d!280551))

(declare-fun bs!236908 () Bool)

(declare-fun d!280553 () Bool)

(assert (= bs!236908 (and d!280553 b!921815)))

(declare-fun lambda!30092 () Int)

(assert (=> bs!236908 (not (= lambda!30092 lambda!30087))))

(declare-fun bs!236909 () Bool)

(assert (= bs!236909 (and d!280553 b!921814)))

(assert (=> bs!236909 (not (= lambda!30092 lambda!30086))))

(declare-fun bs!236910 () Bool)

(assert (= bs!236910 (and d!280553 d!280497)))

(assert (=> bs!236910 (= lambda!30092 lambda!30069)))

(declare-fun bs!236911 () Bool)

(assert (= bs!236911 (and d!280553 b!921503)))

(assert (=> bs!236911 (= (and (= lt!338546 (regOne!5470 r!15766)) (= lt!338551 (regTwo!5470 r!15766))) (= lambda!30092 lambda!30055))))

(declare-fun bs!236912 () Bool)

(assert (= bs!236912 (and d!280553 b!921506)))

(assert (=> bs!236912 (= lambda!30092 lambda!30057)))

(assert (=> bs!236911 (not (= lambda!30092 lambda!30056))))

(assert (=> bs!236912 (not (= lambda!30092 lambda!30058))))

(assert (=> d!280553 true))

(assert (=> d!280553 true))

(assert (=> d!280553 true))

(declare-fun bs!236913 () Bool)

(assert (= bs!236913 d!280553))

(declare-fun lambda!30093 () Int)

(assert (=> bs!236913 (not (= lambda!30093 lambda!30092))))

(assert (=> bs!236908 (= (and (= lt!338546 (regOne!5470 lt!338555)) (= lt!338551 (regTwo!5470 lt!338555))) (= lambda!30093 lambda!30087))))

(assert (=> bs!236909 (not (= lambda!30093 lambda!30086))))

(assert (=> bs!236910 (not (= lambda!30093 lambda!30069))))

(assert (=> bs!236911 (not (= lambda!30093 lambda!30055))))

(assert (=> bs!236912 (not (= lambda!30093 lambda!30057))))

(assert (=> bs!236911 (= (and (= lt!338546 (regOne!5470 r!15766)) (= lt!338551 (regTwo!5470 r!15766))) (= lambda!30093 lambda!30056))))

(assert (=> bs!236912 (= lambda!30093 lambda!30058)))

(assert (=> d!280553 true))

(assert (=> d!280553 true))

(assert (=> d!280553 true))

(assert (=> d!280553 (= (Exists!250 lambda!30092) (Exists!250 lambda!30093))))

(declare-fun lt!338608 () Unit!14577)

(declare-fun choose!5655 (Regex!2479 Regex!2479 List!9709) Unit!14577)

(assert (=> d!280553 (= lt!338608 (choose!5655 lt!338546 lt!338551 s!10566))))

(assert (=> d!280553 (validRegex!948 lt!338546)))

(assert (=> d!280553 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!162 lt!338546 lt!338551 s!10566) lt!338608)))

(declare-fun m!1148783 () Bool)

(assert (=> bs!236913 m!1148783))

(declare-fun m!1148785 () Bool)

(assert (=> bs!236913 m!1148785))

(declare-fun m!1148787 () Bool)

(assert (=> bs!236913 m!1148787))

(assert (=> bs!236913 m!1148563))

(assert (=> b!921506 d!280553))

(declare-fun bs!236914 () Bool)

(declare-fun b!921921 () Bool)

(assert (= bs!236914 (and b!921921 d!280553)))

(declare-fun lambda!30094 () Int)

(assert (=> bs!236914 (not (= lambda!30094 lambda!30092))))

(declare-fun bs!236915 () Bool)

(assert (= bs!236915 (and b!921921 b!921815)))

(assert (=> bs!236915 (not (= lambda!30094 lambda!30087))))

(declare-fun bs!236916 () Bool)

(assert (= bs!236916 (and b!921921 b!921814)))

(assert (=> bs!236916 (= (and (= (reg!2808 r!15766) (reg!2808 lt!338555)) (= r!15766 lt!338555)) (= lambda!30094 lambda!30086))))

(declare-fun bs!236917 () Bool)

(assert (= bs!236917 (and b!921921 d!280497)))

(assert (=> bs!236917 (not (= lambda!30094 lambda!30069))))

(assert (=> bs!236914 (not (= lambda!30094 lambda!30093))))

(declare-fun bs!236918 () Bool)

(assert (= bs!236918 (and b!921921 b!921503)))

(assert (=> bs!236918 (not (= lambda!30094 lambda!30055))))

(declare-fun bs!236919 () Bool)

(assert (= bs!236919 (and b!921921 b!921506)))

(assert (=> bs!236919 (not (= lambda!30094 lambda!30057))))

(assert (=> bs!236918 (not (= lambda!30094 lambda!30056))))

(assert (=> bs!236919 (not (= lambda!30094 lambda!30058))))

(assert (=> b!921921 true))

(assert (=> b!921921 true))

(declare-fun bs!236920 () Bool)

(declare-fun b!921922 () Bool)

(assert (= bs!236920 (and b!921922 d!280553)))

(declare-fun lambda!30095 () Int)

(assert (=> bs!236920 (not (= lambda!30095 lambda!30092))))

(declare-fun bs!236921 () Bool)

(assert (= bs!236921 (and b!921922 b!921815)))

(assert (=> bs!236921 (= (and (= (regOne!5470 r!15766) (regOne!5470 lt!338555)) (= (regTwo!5470 r!15766) (regTwo!5470 lt!338555))) (= lambda!30095 lambda!30087))))

(declare-fun bs!236922 () Bool)

(assert (= bs!236922 (and b!921922 b!921814)))

(assert (=> bs!236922 (not (= lambda!30095 lambda!30086))))

(declare-fun bs!236923 () Bool)

(assert (= bs!236923 (and b!921922 d!280497)))

(assert (=> bs!236923 (not (= lambda!30095 lambda!30069))))

(assert (=> bs!236920 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30095 lambda!30093))))

(declare-fun bs!236924 () Bool)

(assert (= bs!236924 (and b!921922 b!921921)))

(assert (=> bs!236924 (not (= lambda!30095 lambda!30094))))

(declare-fun bs!236925 () Bool)

(assert (= bs!236925 (and b!921922 b!921503)))

(assert (=> bs!236925 (not (= lambda!30095 lambda!30055))))

(declare-fun bs!236926 () Bool)

(assert (= bs!236926 (and b!921922 b!921506)))

(assert (=> bs!236926 (not (= lambda!30095 lambda!30057))))

(assert (=> bs!236925 (= lambda!30095 lambda!30056)))

(assert (=> bs!236926 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30095 lambda!30058))))

(assert (=> b!921922 true))

(assert (=> b!921922 true))

(declare-fun d!280555 () Bool)

(declare-fun c!149601 () Bool)

(assert (=> d!280555 (= c!149601 ((_ is EmptyExpr!2479) r!15766))))

(declare-fun e!600172 () Bool)

(assert (=> d!280555 (= (matchRSpec!280 r!15766 s!10566) e!600172)))

(declare-fun e!600174 () Bool)

(declare-fun call!56134 () Bool)

(assert (=> b!921921 (= e!600174 call!56134)))

(declare-fun e!600173 () Bool)

(assert (=> b!921922 (= e!600173 call!56134)))

(declare-fun b!921923 () Bool)

(declare-fun e!600169 () Bool)

(assert (=> b!921923 (= e!600169 e!600173)))

(declare-fun c!149602 () Bool)

(assert (=> b!921923 (= c!149602 ((_ is Star!2479) r!15766))))

(declare-fun b!921924 () Bool)

(declare-fun e!600171 () Bool)

(assert (=> b!921924 (= e!600171 (matchRSpec!280 (regTwo!5471 r!15766) s!10566))))

(declare-fun b!921925 () Bool)

(declare-fun c!149603 () Bool)

(assert (=> b!921925 (= c!149603 ((_ is ElementMatch!2479) r!15766))))

(declare-fun e!600170 () Bool)

(declare-fun e!600168 () Bool)

(assert (=> b!921925 (= e!600170 e!600168)))

(declare-fun b!921926 () Bool)

(declare-fun call!56135 () Bool)

(assert (=> b!921926 (= e!600172 call!56135)))

(declare-fun b!921927 () Bool)

(declare-fun c!149600 () Bool)

(assert (=> b!921927 (= c!149600 ((_ is Union!2479) r!15766))))

(assert (=> b!921927 (= e!600168 e!600169)))

(declare-fun b!921928 () Bool)

(assert (=> b!921928 (= e!600169 e!600171)))

(declare-fun res!419127 () Bool)

(assert (=> b!921928 (= res!419127 (matchRSpec!280 (regOne!5471 r!15766) s!10566))))

(assert (=> b!921928 (=> res!419127 e!600171)))

(declare-fun bm!56129 () Bool)

(assert (=> bm!56129 (= call!56135 (isEmpty!5938 s!10566))))

(declare-fun b!921929 () Bool)

(assert (=> b!921929 (= e!600168 (= s!10566 (Cons!9693 (c!149506 r!15766) Nil!9693)))))

(declare-fun b!921930 () Bool)

(declare-fun res!419126 () Bool)

(assert (=> b!921930 (=> res!419126 e!600174)))

(assert (=> b!921930 (= res!419126 call!56135)))

(assert (=> b!921930 (= e!600173 e!600174)))

(declare-fun bm!56130 () Bool)

(assert (=> bm!56130 (= call!56134 (Exists!250 (ite c!149602 lambda!30094 lambda!30095)))))

(declare-fun b!921931 () Bool)

(assert (=> b!921931 (= e!600172 e!600170)))

(declare-fun res!419125 () Bool)

(assert (=> b!921931 (= res!419125 (not ((_ is EmptyLang!2479) r!15766)))))

(assert (=> b!921931 (=> (not res!419125) (not e!600170))))

(assert (= (and d!280555 c!149601) b!921926))

(assert (= (and d!280555 (not c!149601)) b!921931))

(assert (= (and b!921931 res!419125) b!921925))

(assert (= (and b!921925 c!149603) b!921929))

(assert (= (and b!921925 (not c!149603)) b!921927))

(assert (= (and b!921927 c!149600) b!921928))

(assert (= (and b!921927 (not c!149600)) b!921923))

(assert (= (and b!921928 (not res!419127)) b!921924))

(assert (= (and b!921923 c!149602) b!921930))

(assert (= (and b!921923 (not c!149602)) b!921922))

(assert (= (and b!921930 (not res!419126)) b!921921))

(assert (= (or b!921921 b!921922) bm!56130))

(assert (= (or b!921926 b!921930) bm!56129))

(declare-fun m!1148789 () Bool)

(assert (=> b!921924 m!1148789))

(declare-fun m!1148791 () Bool)

(assert (=> b!921928 m!1148791))

(assert (=> bm!56129 m!1148533))

(declare-fun m!1148793 () Bool)

(assert (=> bm!56130 m!1148793))

(assert (=> b!921505 d!280555))

(declare-fun b!921960 () Bool)

(declare-fun res!419147 () Bool)

(declare-fun e!600190 () Bool)

(assert (=> b!921960 (=> res!419147 e!600190)))

(declare-fun tail!1216 (List!9709) List!9709)

(assert (=> b!921960 (= res!419147 (not (isEmpty!5938 (tail!1216 s!10566))))))

(declare-fun b!921961 () Bool)

(declare-fun e!600189 () Bool)

(declare-fun derivativeStep!501 (Regex!2479 C!5528) Regex!2479)

(declare-fun head!1654 (List!9709) C!5528)

(assert (=> b!921961 (= e!600189 (matchR!1017 (derivativeStep!501 r!15766 (head!1654 s!10566)) (tail!1216 s!10566)))))

(declare-fun b!921962 () Bool)

(declare-fun e!600193 () Bool)

(declare-fun e!600192 () Bool)

(assert (=> b!921962 (= e!600193 e!600192)))

(declare-fun res!419151 () Bool)

(assert (=> b!921962 (=> (not res!419151) (not e!600192))))

(declare-fun lt!338611 () Bool)

(assert (=> b!921962 (= res!419151 (not lt!338611))))

(declare-fun b!921963 () Bool)

(declare-fun res!419150 () Bool)

(declare-fun e!600191 () Bool)

(assert (=> b!921963 (=> (not res!419150) (not e!600191))))

(assert (=> b!921963 (= res!419150 (isEmpty!5938 (tail!1216 s!10566)))))

(declare-fun b!921964 () Bool)

(assert (=> b!921964 (= e!600191 (= (head!1654 s!10566) (c!149506 r!15766)))))

(declare-fun b!921965 () Bool)

(assert (=> b!921965 (= e!600189 (nullable!691 r!15766))))

(declare-fun b!921966 () Bool)

(declare-fun res!419149 () Bool)

(assert (=> b!921966 (=> res!419149 e!600193)))

(assert (=> b!921966 (= res!419149 e!600191)))

(declare-fun res!419144 () Bool)

(assert (=> b!921966 (=> (not res!419144) (not e!600191))))

(assert (=> b!921966 (= res!419144 lt!338611)))

(declare-fun b!921967 () Bool)

(assert (=> b!921967 (= e!600192 e!600190)))

(declare-fun res!419148 () Bool)

(assert (=> b!921967 (=> res!419148 e!600190)))

(declare-fun call!56138 () Bool)

(assert (=> b!921967 (= res!419148 call!56138)))

(declare-fun bm!56133 () Bool)

(assert (=> bm!56133 (= call!56138 (isEmpty!5938 s!10566))))

(declare-fun b!921968 () Bool)

(declare-fun e!600194 () Bool)

(assert (=> b!921968 (= e!600194 (not lt!338611))))

(declare-fun b!921970 () Bool)

(declare-fun e!600195 () Bool)

(assert (=> b!921970 (= e!600195 e!600194)))

(declare-fun c!149611 () Bool)

(assert (=> b!921970 (= c!149611 ((_ is EmptyLang!2479) r!15766))))

(declare-fun b!921971 () Bool)

(assert (=> b!921971 (= e!600195 (= lt!338611 call!56138))))

(declare-fun b!921972 () Bool)

(declare-fun res!419145 () Bool)

(assert (=> b!921972 (=> (not res!419145) (not e!600191))))

(assert (=> b!921972 (= res!419145 (not call!56138))))

(declare-fun b!921973 () Bool)

(assert (=> b!921973 (= e!600190 (not (= (head!1654 s!10566) (c!149506 r!15766))))))

(declare-fun d!280557 () Bool)

(assert (=> d!280557 e!600195))

(declare-fun c!149610 () Bool)

(assert (=> d!280557 (= c!149610 ((_ is EmptyExpr!2479) r!15766))))

(assert (=> d!280557 (= lt!338611 e!600189)))

(declare-fun c!149612 () Bool)

(assert (=> d!280557 (= c!149612 (isEmpty!5938 s!10566))))

(assert (=> d!280557 (validRegex!948 r!15766)))

(assert (=> d!280557 (= (matchR!1017 r!15766 s!10566) lt!338611)))

(declare-fun b!921969 () Bool)

(declare-fun res!419146 () Bool)

(assert (=> b!921969 (=> res!419146 e!600193)))

(assert (=> b!921969 (= res!419146 (not ((_ is ElementMatch!2479) r!15766)))))

(assert (=> b!921969 (= e!600194 e!600193)))

(assert (= (and d!280557 c!149612) b!921965))

(assert (= (and d!280557 (not c!149612)) b!921961))

(assert (= (and d!280557 c!149610) b!921971))

(assert (= (and d!280557 (not c!149610)) b!921970))

(assert (= (and b!921970 c!149611) b!921968))

(assert (= (and b!921970 (not c!149611)) b!921969))

(assert (= (and b!921969 (not res!419146)) b!921966))

(assert (= (and b!921966 res!419144) b!921972))

(assert (= (and b!921972 res!419145) b!921963))

(assert (= (and b!921963 res!419150) b!921964))

(assert (= (and b!921966 (not res!419149)) b!921962))

(assert (= (and b!921962 res!419151) b!921967))

(assert (= (and b!921967 (not res!419148)) b!921960))

(assert (= (and b!921960 (not res!419147)) b!921973))

(assert (= (or b!921971 b!921967 b!921972) bm!56133))

(declare-fun m!1148795 () Bool)

(assert (=> b!921961 m!1148795))

(assert (=> b!921961 m!1148795))

(declare-fun m!1148797 () Bool)

(assert (=> b!921961 m!1148797))

(declare-fun m!1148799 () Bool)

(assert (=> b!921961 m!1148799))

(assert (=> b!921961 m!1148797))

(assert (=> b!921961 m!1148799))

(declare-fun m!1148801 () Bool)

(assert (=> b!921961 m!1148801))

(assert (=> b!921963 m!1148799))

(assert (=> b!921963 m!1148799))

(declare-fun m!1148803 () Bool)

(assert (=> b!921963 m!1148803))

(declare-fun m!1148805 () Bool)

(assert (=> b!921965 m!1148805))

(assert (=> bm!56133 m!1148533))

(assert (=> d!280557 m!1148533))

(assert (=> d!280557 m!1148539))

(assert (=> b!921964 m!1148795))

(assert (=> b!921973 m!1148795))

(assert (=> b!921960 m!1148799))

(assert (=> b!921960 m!1148799))

(assert (=> b!921960 m!1148803))

(assert (=> b!921505 d!280557))

(declare-fun d!280559 () Bool)

(assert (=> d!280559 (= (matchR!1017 r!15766 s!10566) (matchRSpec!280 r!15766 s!10566))))

(declare-fun lt!338612 () Unit!14577)

(assert (=> d!280559 (= lt!338612 (choose!5652 r!15766 s!10566))))

(assert (=> d!280559 (validRegex!948 r!15766)))

(assert (=> d!280559 (= (mainMatchTheorem!280 r!15766 s!10566) lt!338612)))

(declare-fun bs!236927 () Bool)

(assert (= bs!236927 d!280559))

(assert (=> bs!236927 m!1148543))

(assert (=> bs!236927 m!1148541))

(declare-fun m!1148807 () Bool)

(assert (=> bs!236927 m!1148807))

(assert (=> bs!236927 m!1148539))

(assert (=> b!921505 d!280559))

(declare-fun b!921974 () Bool)

(declare-fun res!419155 () Bool)

(declare-fun e!600197 () Bool)

(assert (=> b!921974 (=> res!419155 e!600197)))

(assert (=> b!921974 (= res!419155 (not (isEmpty!5938 (tail!1216 s!10566))))))

(declare-fun b!921975 () Bool)

(declare-fun e!600196 () Bool)

(assert (=> b!921975 (= e!600196 (matchR!1017 (derivativeStep!501 lt!338555 (head!1654 s!10566)) (tail!1216 s!10566)))))

(declare-fun b!921976 () Bool)

(declare-fun e!600200 () Bool)

(declare-fun e!600199 () Bool)

(assert (=> b!921976 (= e!600200 e!600199)))

(declare-fun res!419159 () Bool)

(assert (=> b!921976 (=> (not res!419159) (not e!600199))))

(declare-fun lt!338613 () Bool)

(assert (=> b!921976 (= res!419159 (not lt!338613))))

(declare-fun b!921977 () Bool)

(declare-fun res!419158 () Bool)

(declare-fun e!600198 () Bool)

(assert (=> b!921977 (=> (not res!419158) (not e!600198))))

(assert (=> b!921977 (= res!419158 (isEmpty!5938 (tail!1216 s!10566)))))

(declare-fun b!921978 () Bool)

(assert (=> b!921978 (= e!600198 (= (head!1654 s!10566) (c!149506 lt!338555)))))

(declare-fun b!921979 () Bool)

(assert (=> b!921979 (= e!600196 (nullable!691 lt!338555))))

(declare-fun b!921980 () Bool)

(declare-fun res!419157 () Bool)

(assert (=> b!921980 (=> res!419157 e!600200)))

(assert (=> b!921980 (= res!419157 e!600198)))

(declare-fun res!419152 () Bool)

(assert (=> b!921980 (=> (not res!419152) (not e!600198))))

(assert (=> b!921980 (= res!419152 lt!338613)))

(declare-fun b!921981 () Bool)

(assert (=> b!921981 (= e!600199 e!600197)))

(declare-fun res!419156 () Bool)

(assert (=> b!921981 (=> res!419156 e!600197)))

(declare-fun call!56139 () Bool)

(assert (=> b!921981 (= res!419156 call!56139)))

(declare-fun bm!56134 () Bool)

(assert (=> bm!56134 (= call!56139 (isEmpty!5938 s!10566))))

(declare-fun b!921982 () Bool)

(declare-fun e!600201 () Bool)

(assert (=> b!921982 (= e!600201 (not lt!338613))))

(declare-fun b!921984 () Bool)

(declare-fun e!600202 () Bool)

(assert (=> b!921984 (= e!600202 e!600201)))

(declare-fun c!149614 () Bool)

(assert (=> b!921984 (= c!149614 ((_ is EmptyLang!2479) lt!338555))))

(declare-fun b!921985 () Bool)

(assert (=> b!921985 (= e!600202 (= lt!338613 call!56139))))

(declare-fun b!921986 () Bool)

(declare-fun res!419153 () Bool)

(assert (=> b!921986 (=> (not res!419153) (not e!600198))))

(assert (=> b!921986 (= res!419153 (not call!56139))))

(declare-fun b!921987 () Bool)

(assert (=> b!921987 (= e!600197 (not (= (head!1654 s!10566) (c!149506 lt!338555))))))

(declare-fun d!280561 () Bool)

(assert (=> d!280561 e!600202))

(declare-fun c!149613 () Bool)

(assert (=> d!280561 (= c!149613 ((_ is EmptyExpr!2479) lt!338555))))

(assert (=> d!280561 (= lt!338613 e!600196)))

(declare-fun c!149615 () Bool)

(assert (=> d!280561 (= c!149615 (isEmpty!5938 s!10566))))

(assert (=> d!280561 (validRegex!948 lt!338555)))

(assert (=> d!280561 (= (matchR!1017 lt!338555 s!10566) lt!338613)))

(declare-fun b!921983 () Bool)

(declare-fun res!419154 () Bool)

(assert (=> b!921983 (=> res!419154 e!600200)))

(assert (=> b!921983 (= res!419154 (not ((_ is ElementMatch!2479) lt!338555)))))

(assert (=> b!921983 (= e!600201 e!600200)))

(assert (= (and d!280561 c!149615) b!921979))

(assert (= (and d!280561 (not c!149615)) b!921975))

(assert (= (and d!280561 c!149613) b!921985))

(assert (= (and d!280561 (not c!149613)) b!921984))

(assert (= (and b!921984 c!149614) b!921982))

(assert (= (and b!921984 (not c!149614)) b!921983))

(assert (= (and b!921983 (not res!419154)) b!921980))

(assert (= (and b!921980 res!419152) b!921986))

(assert (= (and b!921986 res!419153) b!921977))

(assert (= (and b!921977 res!419158) b!921978))

(assert (= (and b!921980 (not res!419157)) b!921976))

(assert (= (and b!921976 res!419159) b!921981))

(assert (= (and b!921981 (not res!419156)) b!921974))

(assert (= (and b!921974 (not res!419155)) b!921987))

(assert (= (or b!921985 b!921981 b!921986) bm!56134))

(assert (=> b!921975 m!1148795))

(assert (=> b!921975 m!1148795))

(declare-fun m!1148809 () Bool)

(assert (=> b!921975 m!1148809))

(assert (=> b!921975 m!1148799))

(assert (=> b!921975 m!1148809))

(assert (=> b!921975 m!1148799))

(declare-fun m!1148811 () Bool)

(assert (=> b!921975 m!1148811))

(assert (=> b!921977 m!1148799))

(assert (=> b!921977 m!1148799))

(assert (=> b!921977 m!1148803))

(declare-fun m!1148813 () Bool)

(assert (=> b!921979 m!1148813))

(assert (=> bm!56134 m!1148533))

(assert (=> d!280561 m!1148533))

(assert (=> d!280561 m!1148581))

(assert (=> b!921978 m!1148795))

(assert (=> b!921987 m!1148795))

(assert (=> b!921974 m!1148799))

(assert (=> b!921974 m!1148799))

(assert (=> b!921974 m!1148803))

(assert (=> b!921510 d!280561))

(declare-fun b!922010 () Bool)

(declare-fun e!600216 () Bool)

(declare-fun lt!338616 () Regex!2479)

(assert (=> b!922010 (= e!600216 (= (nullable!691 lt!338616) (nullable!691 (regTwo!5470 r!15766))))))

(declare-fun b!922011 () Bool)

(declare-fun e!600215 () Regex!2479)

(declare-fun e!600220 () Regex!2479)

(assert (=> b!922011 (= e!600215 e!600220)))

(declare-fun c!149629 () Bool)

(assert (=> b!922011 (= c!149629 (and ((_ is Concat!4312) (regTwo!5470 r!15766)) ((_ is EmptyExpr!2479) (regTwo!5470 (regTwo!5470 r!15766)))))))

(declare-fun b!922012 () Bool)

(declare-fun e!600219 () Regex!2479)

(declare-fun call!56151 () Regex!2479)

(declare-fun call!56154 () Regex!2479)

(assert (=> b!922012 (= e!600219 (Union!2479 call!56151 call!56154))))

(declare-fun b!922013 () Bool)

(declare-fun e!600218 () Regex!2479)

(assert (=> b!922013 (= e!600218 (regTwo!5470 r!15766))))

(declare-fun b!922014 () Bool)

(declare-fun e!600217 () Regex!2479)

(declare-fun call!56153 () Regex!2479)

(assert (=> b!922014 (= e!600217 (Concat!4312 call!56151 call!56153))))

(declare-fun b!922015 () Bool)

(declare-fun c!149628 () Bool)

(assert (=> b!922015 (= c!149628 ((_ is Concat!4312) (regTwo!5470 r!15766)))))

(assert (=> b!922015 (= e!600220 e!600217)))

(declare-fun b!922016 () Bool)

(declare-fun c!149626 () Bool)

(assert (=> b!922016 (= c!149626 ((_ is Star!2479) (regTwo!5470 r!15766)))))

(assert (=> b!922016 (= e!600219 e!600218)))

(declare-fun c!149627 () Bool)

(declare-fun bm!56146 () Bool)

(assert (=> bm!56146 (= call!56153 (removeUselessConcat!156 (ite c!149628 (regTwo!5470 (regTwo!5470 r!15766)) (ite c!149627 (regTwo!5471 (regTwo!5470 r!15766)) (reg!2808 (regTwo!5470 r!15766))))))))

(declare-fun b!922017 () Bool)

(assert (=> b!922017 (= e!600218 (Star!2479 call!56154))))

(declare-fun bm!56147 () Bool)

(declare-fun call!56152 () Regex!2479)

(assert (=> bm!56147 (= call!56151 call!56152)))

(declare-fun b!922018 () Bool)

(assert (=> b!922018 (= e!600217 e!600219)))

(assert (=> b!922018 (= c!149627 ((_ is Union!2479) (regTwo!5470 r!15766)))))

(declare-fun call!56150 () Regex!2479)

(declare-fun bm!56145 () Bool)

(declare-fun c!149630 () Bool)

(assert (=> bm!56145 (= call!56150 (removeUselessConcat!156 (ite c!149630 (regTwo!5470 (regTwo!5470 r!15766)) (ite (or c!149629 c!149628) (regOne!5470 (regTwo!5470 r!15766)) (regOne!5471 (regTwo!5470 r!15766))))))))

(declare-fun d!280563 () Bool)

(assert (=> d!280563 e!600216))

(declare-fun res!419162 () Bool)

(assert (=> d!280563 (=> (not res!419162) (not e!600216))))

(assert (=> d!280563 (= res!419162 (validRegex!948 lt!338616))))

(assert (=> d!280563 (= lt!338616 e!600215)))

(assert (=> d!280563 (= c!149630 (and ((_ is Concat!4312) (regTwo!5470 r!15766)) ((_ is EmptyExpr!2479) (regOne!5470 (regTwo!5470 r!15766)))))))

(assert (=> d!280563 (validRegex!948 (regTwo!5470 r!15766))))

(assert (=> d!280563 (= (removeUselessConcat!156 (regTwo!5470 r!15766)) lt!338616)))

(declare-fun bm!56148 () Bool)

(assert (=> bm!56148 (= call!56154 call!56153)))

(declare-fun b!922019 () Bool)

(assert (=> b!922019 (= e!600215 call!56150)))

(declare-fun b!922020 () Bool)

(assert (=> b!922020 (= e!600220 call!56152)))

(declare-fun bm!56149 () Bool)

(assert (=> bm!56149 (= call!56152 call!56150)))

(assert (= (and d!280563 c!149630) b!922019))

(assert (= (and d!280563 (not c!149630)) b!922011))

(assert (= (and b!922011 c!149629) b!922020))

(assert (= (and b!922011 (not c!149629)) b!922015))

(assert (= (and b!922015 c!149628) b!922014))

(assert (= (and b!922015 (not c!149628)) b!922018))

(assert (= (and b!922018 c!149627) b!922012))

(assert (= (and b!922018 (not c!149627)) b!922016))

(assert (= (and b!922016 c!149626) b!922017))

(assert (= (and b!922016 (not c!149626)) b!922013))

(assert (= (or b!922012 b!922017) bm!56148))

(assert (= (or b!922014 bm!56148) bm!56146))

(assert (= (or b!922014 b!922012) bm!56147))

(assert (= (or b!922020 bm!56147) bm!56149))

(assert (= (or b!922019 bm!56149) bm!56145))

(assert (= (and d!280563 res!419162) b!922010))

(declare-fun m!1148815 () Bool)

(assert (=> b!922010 m!1148815))

(declare-fun m!1148817 () Bool)

(assert (=> b!922010 m!1148817))

(declare-fun m!1148819 () Bool)

(assert (=> bm!56146 m!1148819))

(declare-fun m!1148821 () Bool)

(assert (=> bm!56145 m!1148821))

(declare-fun m!1148823 () Bool)

(assert (=> d!280563 m!1148823))

(declare-fun m!1148825 () Bool)

(assert (=> d!280563 m!1148825))

(assert (=> b!921510 d!280563))

(declare-fun b!922021 () Bool)

(declare-fun e!600222 () Bool)

(declare-fun lt!338617 () Regex!2479)

(assert (=> b!922021 (= e!600222 (= (nullable!691 lt!338617) (nullable!691 (regOne!5470 r!15766))))))

(declare-fun b!922022 () Bool)

(declare-fun e!600221 () Regex!2479)

(declare-fun e!600226 () Regex!2479)

(assert (=> b!922022 (= e!600221 e!600226)))

(declare-fun c!149634 () Bool)

(assert (=> b!922022 (= c!149634 (and ((_ is Concat!4312) (regOne!5470 r!15766)) ((_ is EmptyExpr!2479) (regTwo!5470 (regOne!5470 r!15766)))))))

(declare-fun b!922023 () Bool)

(declare-fun e!600225 () Regex!2479)

(declare-fun call!56156 () Regex!2479)

(declare-fun call!56159 () Regex!2479)

(assert (=> b!922023 (= e!600225 (Union!2479 call!56156 call!56159))))

(declare-fun b!922024 () Bool)

(declare-fun e!600224 () Regex!2479)

(assert (=> b!922024 (= e!600224 (regOne!5470 r!15766))))

(declare-fun b!922025 () Bool)

(declare-fun e!600223 () Regex!2479)

(declare-fun call!56158 () Regex!2479)

(assert (=> b!922025 (= e!600223 (Concat!4312 call!56156 call!56158))))

(declare-fun b!922026 () Bool)

(declare-fun c!149633 () Bool)

(assert (=> b!922026 (= c!149633 ((_ is Concat!4312) (regOne!5470 r!15766)))))

(assert (=> b!922026 (= e!600226 e!600223)))

(declare-fun b!922027 () Bool)

(declare-fun c!149631 () Bool)

(assert (=> b!922027 (= c!149631 ((_ is Star!2479) (regOne!5470 r!15766)))))

(assert (=> b!922027 (= e!600225 e!600224)))

(declare-fun bm!56151 () Bool)

(declare-fun c!149632 () Bool)

(assert (=> bm!56151 (= call!56158 (removeUselessConcat!156 (ite c!149633 (regTwo!5470 (regOne!5470 r!15766)) (ite c!149632 (regTwo!5471 (regOne!5470 r!15766)) (reg!2808 (regOne!5470 r!15766))))))))

(declare-fun b!922028 () Bool)

(assert (=> b!922028 (= e!600224 (Star!2479 call!56159))))

(declare-fun bm!56152 () Bool)

(declare-fun call!56157 () Regex!2479)

(assert (=> bm!56152 (= call!56156 call!56157)))

(declare-fun b!922029 () Bool)

(assert (=> b!922029 (= e!600223 e!600225)))

(assert (=> b!922029 (= c!149632 ((_ is Union!2479) (regOne!5470 r!15766)))))

(declare-fun bm!56150 () Bool)

(declare-fun call!56155 () Regex!2479)

(declare-fun c!149635 () Bool)

(assert (=> bm!56150 (= call!56155 (removeUselessConcat!156 (ite c!149635 (regTwo!5470 (regOne!5470 r!15766)) (ite (or c!149634 c!149633) (regOne!5470 (regOne!5470 r!15766)) (regOne!5471 (regOne!5470 r!15766))))))))

(declare-fun d!280565 () Bool)

(assert (=> d!280565 e!600222))

(declare-fun res!419163 () Bool)

(assert (=> d!280565 (=> (not res!419163) (not e!600222))))

(assert (=> d!280565 (= res!419163 (validRegex!948 lt!338617))))

(assert (=> d!280565 (= lt!338617 e!600221)))

(assert (=> d!280565 (= c!149635 (and ((_ is Concat!4312) (regOne!5470 r!15766)) ((_ is EmptyExpr!2479) (regOne!5470 (regOne!5470 r!15766)))))))

(assert (=> d!280565 (validRegex!948 (regOne!5470 r!15766))))

(assert (=> d!280565 (= (removeUselessConcat!156 (regOne!5470 r!15766)) lt!338617)))

(declare-fun bm!56153 () Bool)

(assert (=> bm!56153 (= call!56159 call!56158)))

(declare-fun b!922030 () Bool)

(assert (=> b!922030 (= e!600221 call!56155)))

(declare-fun b!922031 () Bool)

(assert (=> b!922031 (= e!600226 call!56157)))

(declare-fun bm!56154 () Bool)

(assert (=> bm!56154 (= call!56157 call!56155)))

(assert (= (and d!280565 c!149635) b!922030))

(assert (= (and d!280565 (not c!149635)) b!922022))

(assert (= (and b!922022 c!149634) b!922031))

(assert (= (and b!922022 (not c!149634)) b!922026))

(assert (= (and b!922026 c!149633) b!922025))

(assert (= (and b!922026 (not c!149633)) b!922029))

(assert (= (and b!922029 c!149632) b!922023))

(assert (= (and b!922029 (not c!149632)) b!922027))

(assert (= (and b!922027 c!149631) b!922028))

(assert (= (and b!922027 (not c!149631)) b!922024))

(assert (= (or b!922023 b!922028) bm!56153))

(assert (= (or b!922025 bm!56153) bm!56151))

(assert (= (or b!922025 b!922023) bm!56152))

(assert (= (or b!922031 bm!56152) bm!56154))

(assert (= (or b!922030 bm!56154) bm!56150))

(assert (= (and d!280565 res!419163) b!922021))

(declare-fun m!1148827 () Bool)

(assert (=> b!922021 m!1148827))

(declare-fun m!1148829 () Bool)

(assert (=> b!922021 m!1148829))

(declare-fun m!1148831 () Bool)

(assert (=> bm!56151 m!1148831))

(declare-fun m!1148833 () Bool)

(assert (=> bm!56150 m!1148833))

(declare-fun m!1148835 () Bool)

(assert (=> d!280565 m!1148835))

(declare-fun m!1148837 () Bool)

(assert (=> d!280565 m!1148837))

(assert (=> b!921510 d!280565))

(declare-fun b!922032 () Bool)

(declare-fun e!600227 () Bool)

(declare-fun call!56160 () Bool)

(assert (=> b!922032 (= e!600227 call!56160)))

(declare-fun bm!56155 () Bool)

(declare-fun call!56162 () Bool)

(declare-fun call!56161 () Bool)

(assert (=> bm!56155 (= call!56162 call!56161)))

(declare-fun b!922033 () Bool)

(declare-fun e!600232 () Bool)

(assert (=> b!922033 (= e!600232 e!600227)))

(declare-fun res!419166 () Bool)

(assert (=> b!922033 (=> (not res!419166) (not e!600227))))

(assert (=> b!922033 (= res!419166 call!56162)))

(declare-fun b!922034 () Bool)

(declare-fun e!600228 () Bool)

(declare-fun e!600231 () Bool)

(assert (=> b!922034 (= e!600228 e!600231)))

(declare-fun c!149636 () Bool)

(assert (=> b!922034 (= c!149636 ((_ is Star!2479) r!15766))))

(declare-fun b!922035 () Bool)

(declare-fun res!419168 () Bool)

(declare-fun e!600229 () Bool)

(assert (=> b!922035 (=> (not res!419168) (not e!600229))))

(assert (=> b!922035 (= res!419168 call!56162)))

(declare-fun e!600233 () Bool)

(assert (=> b!922035 (= e!600233 e!600229)))

(declare-fun b!922036 () Bool)

(assert (=> b!922036 (= e!600231 e!600233)))

(declare-fun c!149637 () Bool)

(assert (=> b!922036 (= c!149637 ((_ is Union!2479) r!15766))))

(declare-fun bm!56157 () Bool)

(assert (=> bm!56157 (= call!56160 (validRegex!948 (ite c!149637 (regTwo!5471 r!15766) (regTwo!5470 r!15766))))))

(declare-fun b!922037 () Bool)

(declare-fun e!600230 () Bool)

(assert (=> b!922037 (= e!600230 call!56161)))

(declare-fun b!922038 () Bool)

(declare-fun res!419164 () Bool)

(assert (=> b!922038 (=> res!419164 e!600232)))

(assert (=> b!922038 (= res!419164 (not ((_ is Concat!4312) r!15766)))))

(assert (=> b!922038 (= e!600233 e!600232)))

(declare-fun d!280567 () Bool)

(declare-fun res!419165 () Bool)

(assert (=> d!280567 (=> res!419165 e!600228)))

(assert (=> d!280567 (= res!419165 ((_ is ElementMatch!2479) r!15766))))

(assert (=> d!280567 (= (validRegex!948 r!15766) e!600228)))

(declare-fun bm!56156 () Bool)

(assert (=> bm!56156 (= call!56161 (validRegex!948 (ite c!149636 (reg!2808 r!15766) (ite c!149637 (regOne!5471 r!15766) (regOne!5470 r!15766)))))))

(declare-fun b!922039 () Bool)

(assert (=> b!922039 (= e!600229 call!56160)))

(declare-fun b!922040 () Bool)

(assert (=> b!922040 (= e!600231 e!600230)))

(declare-fun res!419167 () Bool)

(assert (=> b!922040 (= res!419167 (not (nullable!691 (reg!2808 r!15766))))))

(assert (=> b!922040 (=> (not res!419167) (not e!600230))))

(assert (= (and d!280567 (not res!419165)) b!922034))

(assert (= (and b!922034 c!149636) b!922040))

(assert (= (and b!922034 (not c!149636)) b!922036))

(assert (= (and b!922040 res!419167) b!922037))

(assert (= (and b!922036 c!149637) b!922035))

(assert (= (and b!922036 (not c!149637)) b!922038))

(assert (= (and b!922035 res!419168) b!922039))

(assert (= (and b!922038 (not res!419164)) b!922033))

(assert (= (and b!922033 res!419166) b!922032))

(assert (= (or b!922039 b!922032) bm!56157))

(assert (= (or b!922035 b!922033) bm!56155))

(assert (= (or b!922037 bm!56155) bm!56156))

(declare-fun m!1148839 () Bool)

(assert (=> bm!56157 m!1148839))

(declare-fun m!1148841 () Bool)

(assert (=> bm!56156 m!1148841))

(declare-fun m!1148843 () Bool)

(assert (=> b!922040 m!1148843))

(assert (=> start!82742 d!280567))

(declare-fun b!922041 () Bool)

(declare-fun e!600234 () Bool)

(declare-fun call!56163 () Bool)

(assert (=> b!922041 (= e!600234 call!56163)))

(declare-fun bm!56158 () Bool)

(declare-fun call!56165 () Bool)

(declare-fun call!56164 () Bool)

(assert (=> bm!56158 (= call!56165 call!56164)))

(declare-fun b!922042 () Bool)

(declare-fun e!600239 () Bool)

(assert (=> b!922042 (= e!600239 e!600234)))

(declare-fun res!419171 () Bool)

(assert (=> b!922042 (=> (not res!419171) (not e!600234))))

(assert (=> b!922042 (= res!419171 call!56165)))

(declare-fun b!922043 () Bool)

(declare-fun e!600235 () Bool)

(declare-fun e!600238 () Bool)

(assert (=> b!922043 (= e!600235 e!600238)))

(declare-fun c!149638 () Bool)

(assert (=> b!922043 (= c!149638 ((_ is Star!2479) lt!338551))))

(declare-fun b!922044 () Bool)

(declare-fun res!419173 () Bool)

(declare-fun e!600236 () Bool)

(assert (=> b!922044 (=> (not res!419173) (not e!600236))))

(assert (=> b!922044 (= res!419173 call!56165)))

(declare-fun e!600240 () Bool)

(assert (=> b!922044 (= e!600240 e!600236)))

(declare-fun b!922045 () Bool)

(assert (=> b!922045 (= e!600238 e!600240)))

(declare-fun c!149639 () Bool)

(assert (=> b!922045 (= c!149639 ((_ is Union!2479) lt!338551))))

(declare-fun bm!56160 () Bool)

(assert (=> bm!56160 (= call!56163 (validRegex!948 (ite c!149639 (regTwo!5471 lt!338551) (regTwo!5470 lt!338551))))))

(declare-fun b!922046 () Bool)

(declare-fun e!600237 () Bool)

(assert (=> b!922046 (= e!600237 call!56164)))

(declare-fun b!922047 () Bool)

(declare-fun res!419169 () Bool)

(assert (=> b!922047 (=> res!419169 e!600239)))

(assert (=> b!922047 (= res!419169 (not ((_ is Concat!4312) lt!338551)))))

(assert (=> b!922047 (= e!600240 e!600239)))

(declare-fun d!280569 () Bool)

(declare-fun res!419170 () Bool)

(assert (=> d!280569 (=> res!419170 e!600235)))

(assert (=> d!280569 (= res!419170 ((_ is ElementMatch!2479) lt!338551))))

(assert (=> d!280569 (= (validRegex!948 lt!338551) e!600235)))

(declare-fun bm!56159 () Bool)

(assert (=> bm!56159 (= call!56164 (validRegex!948 (ite c!149638 (reg!2808 lt!338551) (ite c!149639 (regOne!5471 lt!338551) (regOne!5470 lt!338551)))))))

(declare-fun b!922048 () Bool)

(assert (=> b!922048 (= e!600236 call!56163)))

(declare-fun b!922049 () Bool)

(assert (=> b!922049 (= e!600238 e!600237)))

(declare-fun res!419172 () Bool)

(assert (=> b!922049 (= res!419172 (not (nullable!691 (reg!2808 lt!338551))))))

(assert (=> b!922049 (=> (not res!419172) (not e!600237))))

(assert (= (and d!280569 (not res!419170)) b!922043))

(assert (= (and b!922043 c!149638) b!922049))

(assert (= (and b!922043 (not c!149638)) b!922045))

(assert (= (and b!922049 res!419172) b!922046))

(assert (= (and b!922045 c!149639) b!922044))

(assert (= (and b!922045 (not c!149639)) b!922047))

(assert (= (and b!922044 res!419173) b!922048))

(assert (= (and b!922047 (not res!419169)) b!922042))

(assert (= (and b!922042 res!419171) b!922041))

(assert (= (or b!922048 b!922041) bm!56160))

(assert (= (or b!922044 b!922042) bm!56158))

(assert (= (or b!922046 bm!56158) bm!56159))

(declare-fun m!1148845 () Bool)

(assert (=> bm!56160 m!1148845))

(declare-fun m!1148847 () Bool)

(assert (=> bm!56159 m!1148847))

(declare-fun m!1148849 () Bool)

(assert (=> b!922049 m!1148849))

(assert (=> b!921513 d!280569))

(declare-fun d!280571 () Bool)

(assert (=> d!280571 (= (isDefined!1756 (findConcatSeparation!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) Nil!9693 s!10566 s!10566)) (not (isEmpty!5940 (findConcatSeparation!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) Nil!9693 s!10566 s!10566))))))

(declare-fun bs!236928 () Bool)

(assert (= bs!236928 d!280571))

(assert (=> bs!236928 m!1148527))

(declare-fun m!1148851 () Bool)

(assert (=> bs!236928 m!1148851))

(assert (=> b!921503 d!280571))

(declare-fun bs!236929 () Bool)

(declare-fun d!280573 () Bool)

(assert (= bs!236929 (and d!280573 d!280553)))

(declare-fun lambda!30096 () Int)

(assert (=> bs!236929 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30096 lambda!30092))))

(declare-fun bs!236930 () Bool)

(assert (= bs!236930 (and d!280573 b!921815)))

(assert (=> bs!236930 (not (= lambda!30096 lambda!30087))))

(declare-fun bs!236931 () Bool)

(assert (= bs!236931 (and d!280573 b!921814)))

(assert (=> bs!236931 (not (= lambda!30096 lambda!30086))))

(declare-fun bs!236932 () Bool)

(assert (= bs!236932 (and d!280573 d!280497)))

(assert (=> bs!236932 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30096 lambda!30069))))

(assert (=> bs!236929 (not (= lambda!30096 lambda!30093))))

(declare-fun bs!236933 () Bool)

(assert (= bs!236933 (and d!280573 b!921921)))

(assert (=> bs!236933 (not (= lambda!30096 lambda!30094))))

(declare-fun bs!236934 () Bool)

(assert (= bs!236934 (and d!280573 b!921922)))

(assert (=> bs!236934 (not (= lambda!30096 lambda!30095))))

(declare-fun bs!236935 () Bool)

(assert (= bs!236935 (and d!280573 b!921503)))

(assert (=> bs!236935 (= lambda!30096 lambda!30055)))

(declare-fun bs!236936 () Bool)

(assert (= bs!236936 (and d!280573 b!921506)))

(assert (=> bs!236936 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30096 lambda!30057))))

(assert (=> bs!236935 (not (= lambda!30096 lambda!30056))))

(assert (=> bs!236936 (not (= lambda!30096 lambda!30058))))

(assert (=> d!280573 true))

(assert (=> d!280573 true))

(assert (=> d!280573 true))

(assert (=> d!280573 (= (isDefined!1756 (findConcatSeparation!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) Nil!9693 s!10566 s!10566)) (Exists!250 lambda!30096))))

(declare-fun lt!338618 () Unit!14577)

(assert (=> d!280573 (= lt!338618 (choose!5654 (regOne!5470 r!15766) (regTwo!5470 r!15766) s!10566))))

(assert (=> d!280573 (validRegex!948 (regOne!5470 r!15766))))

(assert (=> d!280573 (= (lemmaFindConcatSeparationEquivalentToExists!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) s!10566) lt!338618)))

(declare-fun bs!236937 () Bool)

(assert (= bs!236937 d!280573))

(assert (=> bs!236937 m!1148837))

(assert (=> bs!236937 m!1148527))

(declare-fun m!1148853 () Bool)

(assert (=> bs!236937 m!1148853))

(assert (=> bs!236937 m!1148527))

(assert (=> bs!236937 m!1148529))

(declare-fun m!1148855 () Bool)

(assert (=> bs!236937 m!1148855))

(assert (=> b!921503 d!280573))

(declare-fun d!280575 () Bool)

(assert (=> d!280575 (= (Exists!250 lambda!30055) (choose!5653 lambda!30055))))

(declare-fun bs!236938 () Bool)

(assert (= bs!236938 d!280575))

(declare-fun m!1148857 () Bool)

(assert (=> bs!236938 m!1148857))

(assert (=> b!921503 d!280575))

(declare-fun b!922050 () Bool)

(declare-fun e!600243 () Bool)

(assert (=> b!922050 (= e!600243 (matchR!1017 (regTwo!5470 r!15766) s!10566))))

(declare-fun b!922051 () Bool)

(declare-fun e!600241 () Bool)

(declare-fun lt!338619 () Option!2114)

(assert (=> b!922051 (= e!600241 (not (isDefined!1756 lt!338619)))))

(declare-fun b!922052 () Bool)

(declare-fun res!419176 () Bool)

(declare-fun e!600242 () Bool)

(assert (=> b!922052 (=> (not res!419176) (not e!600242))))

(assert (=> b!922052 (= res!419176 (matchR!1017 (regOne!5470 r!15766) (_1!6298 (get!3162 lt!338619))))))

(declare-fun d!280577 () Bool)

(assert (=> d!280577 e!600241))

(declare-fun res!419175 () Bool)

(assert (=> d!280577 (=> res!419175 e!600241)))

(assert (=> d!280577 (= res!419175 e!600242)))

(declare-fun res!419177 () Bool)

(assert (=> d!280577 (=> (not res!419177) (not e!600242))))

(assert (=> d!280577 (= res!419177 (isDefined!1756 lt!338619))))

(declare-fun e!600244 () Option!2114)

(assert (=> d!280577 (= lt!338619 e!600244)))

(declare-fun c!149641 () Bool)

(assert (=> d!280577 (= c!149641 e!600243)))

(declare-fun res!419178 () Bool)

(assert (=> d!280577 (=> (not res!419178) (not e!600243))))

(assert (=> d!280577 (= res!419178 (matchR!1017 (regOne!5470 r!15766) Nil!9693))))

(assert (=> d!280577 (validRegex!948 (regOne!5470 r!15766))))

(assert (=> d!280577 (= (findConcatSeparation!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) Nil!9693 s!10566 s!10566) lt!338619)))

(declare-fun b!922053 () Bool)

(assert (=> b!922053 (= e!600242 (= (++!2567 (_1!6298 (get!3162 lt!338619)) (_2!6298 (get!3162 lt!338619))) s!10566))))

(declare-fun b!922054 () Bool)

(declare-fun e!600245 () Option!2114)

(assert (=> b!922054 (= e!600244 e!600245)))

(declare-fun c!149640 () Bool)

(assert (=> b!922054 (= c!149640 ((_ is Nil!9693) s!10566))))

(declare-fun b!922055 () Bool)

(assert (=> b!922055 (= e!600244 (Some!2113 (tuple2!10945 Nil!9693 s!10566)))))

(declare-fun b!922056 () Bool)

(assert (=> b!922056 (= e!600245 None!2113)))

(declare-fun b!922057 () Bool)

(declare-fun res!419174 () Bool)

(assert (=> b!922057 (=> (not res!419174) (not e!600242))))

(assert (=> b!922057 (= res!419174 (matchR!1017 (regTwo!5470 r!15766) (_2!6298 (get!3162 lt!338619))))))

(declare-fun b!922058 () Bool)

(declare-fun lt!338621 () Unit!14577)

(declare-fun lt!338620 () Unit!14577)

(assert (=> b!922058 (= lt!338621 lt!338620)))

(assert (=> b!922058 (= (++!2567 (++!2567 Nil!9693 (Cons!9693 (h!15094 s!10566) Nil!9693)) (t!100755 s!10566)) s!10566)))

(assert (=> b!922058 (= lt!338620 (lemmaMoveElementToOtherListKeepsConcatEq!182 Nil!9693 (h!15094 s!10566) (t!100755 s!10566) s!10566))))

(assert (=> b!922058 (= e!600245 (findConcatSeparation!220 (regOne!5470 r!15766) (regTwo!5470 r!15766) (++!2567 Nil!9693 (Cons!9693 (h!15094 s!10566) Nil!9693)) (t!100755 s!10566) s!10566))))

(assert (= (and d!280577 res!419178) b!922050))

(assert (= (and d!280577 c!149641) b!922055))

(assert (= (and d!280577 (not c!149641)) b!922054))

(assert (= (and b!922054 c!149640) b!922056))

(assert (= (and b!922054 (not c!149640)) b!922058))

(assert (= (and d!280577 res!419177) b!922052))

(assert (= (and b!922052 res!419176) b!922057))

(assert (= (and b!922057 res!419174) b!922053))

(assert (= (and d!280577 (not res!419175)) b!922051))

(declare-fun m!1148859 () Bool)

(assert (=> b!922052 m!1148859))

(declare-fun m!1148861 () Bool)

(assert (=> b!922052 m!1148861))

(assert (=> b!922053 m!1148859))

(declare-fun m!1148863 () Bool)

(assert (=> b!922053 m!1148863))

(assert (=> b!922058 m!1148651))

(assert (=> b!922058 m!1148651))

(assert (=> b!922058 m!1148653))

(assert (=> b!922058 m!1148655))

(assert (=> b!922058 m!1148651))

(declare-fun m!1148865 () Bool)

(assert (=> b!922058 m!1148865))

(declare-fun m!1148867 () Bool)

(assert (=> d!280577 m!1148867))

(declare-fun m!1148869 () Bool)

(assert (=> d!280577 m!1148869))

(assert (=> d!280577 m!1148837))

(declare-fun m!1148871 () Bool)

(assert (=> b!922050 m!1148871))

(assert (=> b!922057 m!1148859))

(declare-fun m!1148873 () Bool)

(assert (=> b!922057 m!1148873))

(assert (=> b!922051 m!1148867))

(assert (=> b!921503 d!280577))

(declare-fun bs!236939 () Bool)

(declare-fun d!280579 () Bool)

(assert (= bs!236939 (and d!280579 d!280553)))

(declare-fun lambda!30097 () Int)

(assert (=> bs!236939 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30097 lambda!30092))))

(declare-fun bs!236940 () Bool)

(assert (= bs!236940 (and d!280579 d!280573)))

(assert (=> bs!236940 (= lambda!30097 lambda!30096)))

(declare-fun bs!236941 () Bool)

(assert (= bs!236941 (and d!280579 b!921815)))

(assert (=> bs!236941 (not (= lambda!30097 lambda!30087))))

(declare-fun bs!236942 () Bool)

(assert (= bs!236942 (and d!280579 b!921814)))

(assert (=> bs!236942 (not (= lambda!30097 lambda!30086))))

(declare-fun bs!236943 () Bool)

(assert (= bs!236943 (and d!280579 d!280497)))

(assert (=> bs!236943 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30097 lambda!30069))))

(assert (=> bs!236939 (not (= lambda!30097 lambda!30093))))

(declare-fun bs!236944 () Bool)

(assert (= bs!236944 (and d!280579 b!921921)))

(assert (=> bs!236944 (not (= lambda!30097 lambda!30094))))

(declare-fun bs!236945 () Bool)

(assert (= bs!236945 (and d!280579 b!921922)))

(assert (=> bs!236945 (not (= lambda!30097 lambda!30095))))

(declare-fun bs!236946 () Bool)

(assert (= bs!236946 (and d!280579 b!921503)))

(assert (=> bs!236946 (= lambda!30097 lambda!30055)))

(declare-fun bs!236947 () Bool)

(assert (= bs!236947 (and d!280579 b!921506)))

(assert (=> bs!236947 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30097 lambda!30057))))

(assert (=> bs!236946 (not (= lambda!30097 lambda!30056))))

(assert (=> bs!236947 (not (= lambda!30097 lambda!30058))))

(assert (=> d!280579 true))

(assert (=> d!280579 true))

(assert (=> d!280579 true))

(declare-fun lambda!30098 () Int)

(assert (=> bs!236939 (not (= lambda!30098 lambda!30092))))

(assert (=> bs!236940 (not (= lambda!30098 lambda!30096))))

(assert (=> bs!236941 (= (and (= (regOne!5470 r!15766) (regOne!5470 lt!338555)) (= (regTwo!5470 r!15766) (regTwo!5470 lt!338555))) (= lambda!30098 lambda!30087))))

(assert (=> bs!236942 (not (= lambda!30098 lambda!30086))))

(assert (=> bs!236943 (not (= lambda!30098 lambda!30069))))

(assert (=> bs!236939 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30098 lambda!30093))))

(declare-fun bs!236948 () Bool)

(assert (= bs!236948 d!280579))

(assert (=> bs!236948 (not (= lambda!30098 lambda!30097))))

(assert (=> bs!236944 (not (= lambda!30098 lambda!30094))))

(assert (=> bs!236945 (= lambda!30098 lambda!30095)))

(assert (=> bs!236946 (not (= lambda!30098 lambda!30055))))

(assert (=> bs!236947 (not (= lambda!30098 lambda!30057))))

(assert (=> bs!236946 (= lambda!30098 lambda!30056)))

(assert (=> bs!236947 (= (and (= (regOne!5470 r!15766) lt!338546) (= (regTwo!5470 r!15766) lt!338551)) (= lambda!30098 lambda!30058))))

(assert (=> d!280579 true))

(assert (=> d!280579 true))

(assert (=> d!280579 true))

(assert (=> d!280579 (= (Exists!250 lambda!30097) (Exists!250 lambda!30098))))

(declare-fun lt!338622 () Unit!14577)

(assert (=> d!280579 (= lt!338622 (choose!5655 (regOne!5470 r!15766) (regTwo!5470 r!15766) s!10566))))

(assert (=> d!280579 (validRegex!948 (regOne!5470 r!15766))))

(assert (=> d!280579 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!162 (regOne!5470 r!15766) (regTwo!5470 r!15766) s!10566) lt!338622)))

(declare-fun m!1148875 () Bool)

(assert (=> bs!236948 m!1148875))

(declare-fun m!1148877 () Bool)

(assert (=> bs!236948 m!1148877))

(declare-fun m!1148879 () Bool)

(assert (=> bs!236948 m!1148879))

(assert (=> bs!236948 m!1148837))

(assert (=> b!921503 d!280579))

(declare-fun d!280581 () Bool)

(assert (=> d!280581 (= (isEmpty!5938 s!10566) ((_ is Nil!9693) s!10566))))

(assert (=> b!921503 d!280581))

(declare-fun d!280583 () Bool)

(assert (=> d!280583 (= (Exists!250 lambda!30056) (choose!5653 lambda!30056))))

(declare-fun bs!236949 () Bool)

(assert (= bs!236949 d!280583))

(declare-fun m!1148881 () Bool)

(assert (=> bs!236949 m!1148881))

(assert (=> b!921503 d!280583))

(declare-fun b!922070 () Bool)

(declare-fun e!600251 () Bool)

(declare-fun lt!338625 () List!9709)

(assert (=> b!922070 (= e!600251 (or (not (= s!10566 Nil!9693)) (= lt!338625 Nil!9693)))))

(declare-fun b!922069 () Bool)

(declare-fun res!419183 () Bool)

(assert (=> b!922069 (=> (not res!419183) (not e!600251))))

(declare-fun size!7886 (List!9709) Int)

(assert (=> b!922069 (= res!419183 (= (size!7886 lt!338625) (+ (size!7886 Nil!9693) (size!7886 s!10566))))))

(declare-fun d!280585 () Bool)

(assert (=> d!280585 e!600251))

(declare-fun res!419184 () Bool)

(assert (=> d!280585 (=> (not res!419184) (not e!600251))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1385 (List!9709) (InoxSet C!5528))

(assert (=> d!280585 (= res!419184 (= (content!1385 lt!338625) ((_ map or) (content!1385 Nil!9693) (content!1385 s!10566))))))

(declare-fun e!600250 () List!9709)

(assert (=> d!280585 (= lt!338625 e!600250)))

(declare-fun c!149644 () Bool)

(assert (=> d!280585 (= c!149644 ((_ is Nil!9693) Nil!9693))))

(assert (=> d!280585 (= (++!2567 Nil!9693 s!10566) lt!338625)))

(declare-fun b!922068 () Bool)

(assert (=> b!922068 (= e!600250 (Cons!9693 (h!15094 Nil!9693) (++!2567 (t!100755 Nil!9693) s!10566)))))

(declare-fun b!922067 () Bool)

(assert (=> b!922067 (= e!600250 s!10566)))

(assert (= (and d!280585 c!149644) b!922067))

(assert (= (and d!280585 (not c!149644)) b!922068))

(assert (= (and d!280585 res!419184) b!922069))

(assert (= (and b!922069 res!419183) b!922070))

(declare-fun m!1148883 () Bool)

(assert (=> b!922069 m!1148883))

(declare-fun m!1148885 () Bool)

(assert (=> b!922069 m!1148885))

(declare-fun m!1148887 () Bool)

(assert (=> b!922069 m!1148887))

(declare-fun m!1148889 () Bool)

(assert (=> d!280585 m!1148889))

(declare-fun m!1148891 () Bool)

(assert (=> d!280585 m!1148891))

(declare-fun m!1148893 () Bool)

(assert (=> d!280585 m!1148893))

(declare-fun m!1148895 () Bool)

(assert (=> b!922068 m!1148895))

(assert (=> b!921508 d!280585))

(declare-fun b!922081 () Bool)

(declare-fun e!600254 () Bool)

(assert (=> b!922081 (= e!600254 tp_is_empty!4601)))

(declare-fun b!922083 () Bool)

(declare-fun tp!287062 () Bool)

(assert (=> b!922083 (= e!600254 tp!287062)))

(assert (=> b!921507 (= tp!287008 e!600254)))

(declare-fun b!922084 () Bool)

(declare-fun tp!287063 () Bool)

(declare-fun tp!287064 () Bool)

(assert (=> b!922084 (= e!600254 (and tp!287063 tp!287064))))

(declare-fun b!922082 () Bool)

(declare-fun tp!287061 () Bool)

(declare-fun tp!287065 () Bool)

(assert (=> b!922082 (= e!600254 (and tp!287061 tp!287065))))

(assert (= (and b!921507 ((_ is ElementMatch!2479) (regOne!5471 r!15766))) b!922081))

(assert (= (and b!921507 ((_ is Concat!4312) (regOne!5471 r!15766))) b!922082))

(assert (= (and b!921507 ((_ is Star!2479) (regOne!5471 r!15766))) b!922083))

(assert (= (and b!921507 ((_ is Union!2479) (regOne!5471 r!15766))) b!922084))

(declare-fun b!922085 () Bool)

(declare-fun e!600255 () Bool)

(assert (=> b!922085 (= e!600255 tp_is_empty!4601)))

(declare-fun b!922087 () Bool)

(declare-fun tp!287067 () Bool)

(assert (=> b!922087 (= e!600255 tp!287067)))

(assert (=> b!921507 (= tp!287007 e!600255)))

(declare-fun b!922088 () Bool)

(declare-fun tp!287068 () Bool)

(declare-fun tp!287069 () Bool)

(assert (=> b!922088 (= e!600255 (and tp!287068 tp!287069))))

(declare-fun b!922086 () Bool)

(declare-fun tp!287066 () Bool)

(declare-fun tp!287070 () Bool)

(assert (=> b!922086 (= e!600255 (and tp!287066 tp!287070))))

(assert (= (and b!921507 ((_ is ElementMatch!2479) (regTwo!5471 r!15766))) b!922085))

(assert (= (and b!921507 ((_ is Concat!4312) (regTwo!5471 r!15766))) b!922086))

(assert (= (and b!921507 ((_ is Star!2479) (regTwo!5471 r!15766))) b!922087))

(assert (= (and b!921507 ((_ is Union!2479) (regTwo!5471 r!15766))) b!922088))

(declare-fun b!922093 () Bool)

(declare-fun e!600258 () Bool)

(declare-fun tp!287073 () Bool)

(assert (=> b!922093 (= e!600258 (and tp_is_empty!4601 tp!287073))))

(assert (=> b!921512 (= tp!287010 e!600258)))

(assert (= (and b!921512 ((_ is Cons!9693) (t!100755 s!10566))) b!922093))

(declare-fun b!922094 () Bool)

(declare-fun e!600259 () Bool)

(assert (=> b!922094 (= e!600259 tp_is_empty!4601)))

(declare-fun b!922096 () Bool)

(declare-fun tp!287075 () Bool)

(assert (=> b!922096 (= e!600259 tp!287075)))

(assert (=> b!921511 (= tp!287009 e!600259)))

(declare-fun b!922097 () Bool)

(declare-fun tp!287076 () Bool)

(declare-fun tp!287077 () Bool)

(assert (=> b!922097 (= e!600259 (and tp!287076 tp!287077))))

(declare-fun b!922095 () Bool)

(declare-fun tp!287074 () Bool)

(declare-fun tp!287078 () Bool)

(assert (=> b!922095 (= e!600259 (and tp!287074 tp!287078))))

(assert (= (and b!921511 ((_ is ElementMatch!2479) (regOne!5470 r!15766))) b!922094))

(assert (= (and b!921511 ((_ is Concat!4312) (regOne!5470 r!15766))) b!922095))

(assert (= (and b!921511 ((_ is Star!2479) (regOne!5470 r!15766))) b!922096))

(assert (= (and b!921511 ((_ is Union!2479) (regOne!5470 r!15766))) b!922097))

(declare-fun b!922098 () Bool)

(declare-fun e!600260 () Bool)

(assert (=> b!922098 (= e!600260 tp_is_empty!4601)))

(declare-fun b!922100 () Bool)

(declare-fun tp!287080 () Bool)

(assert (=> b!922100 (= e!600260 tp!287080)))

(assert (=> b!921511 (= tp!287012 e!600260)))

(declare-fun b!922101 () Bool)

(declare-fun tp!287081 () Bool)

(declare-fun tp!287082 () Bool)

(assert (=> b!922101 (= e!600260 (and tp!287081 tp!287082))))

(declare-fun b!922099 () Bool)

(declare-fun tp!287079 () Bool)

(declare-fun tp!287083 () Bool)

(assert (=> b!922099 (= e!600260 (and tp!287079 tp!287083))))

(assert (= (and b!921511 ((_ is ElementMatch!2479) (regTwo!5470 r!15766))) b!922098))

(assert (= (and b!921511 ((_ is Concat!4312) (regTwo!5470 r!15766))) b!922099))

(assert (= (and b!921511 ((_ is Star!2479) (regTwo!5470 r!15766))) b!922100))

(assert (= (and b!921511 ((_ is Union!2479) (regTwo!5470 r!15766))) b!922101))

(declare-fun b!922102 () Bool)

(declare-fun e!600261 () Bool)

(assert (=> b!922102 (= e!600261 tp_is_empty!4601)))

(declare-fun b!922104 () Bool)

(declare-fun tp!287085 () Bool)

(assert (=> b!922104 (= e!600261 tp!287085)))

(assert (=> b!921509 (= tp!287011 e!600261)))

(declare-fun b!922105 () Bool)

(declare-fun tp!287086 () Bool)

(declare-fun tp!287087 () Bool)

(assert (=> b!922105 (= e!600261 (and tp!287086 tp!287087))))

(declare-fun b!922103 () Bool)

(declare-fun tp!287084 () Bool)

(declare-fun tp!287088 () Bool)

(assert (=> b!922103 (= e!600261 (and tp!287084 tp!287088))))

(assert (= (and b!921509 ((_ is ElementMatch!2479) (reg!2808 r!15766))) b!922102))

(assert (= (and b!921509 ((_ is Concat!4312) (reg!2808 r!15766))) b!922103))

(assert (= (and b!921509 ((_ is Star!2479) (reg!2808 r!15766))) b!922104))

(assert (= (and b!921509 ((_ is Union!2479) (reg!2808 r!15766))) b!922105))

(check-sat (not d!280565) (not b!922050) (not b!921817) (not b!921965) (not bm!56146) (not b!922058) (not d!280579) (not bm!56127) (not b!921928) tp_is_empty!4601 (not d!280559) (not bm!56159) (not b!922052) (not b!922082) (not b!921975) (not b!921987) (not b!921661) (not b!922083) (not b!922084) (not b!922051) (not b!922095) (not d!280509) (not bm!56160) (not d!280497) (not b!921912) (not bm!56151) (not b!922069) (not d!280489) (not b!922049) (not bm!56117) (not d!280577) (not bm!56130) (not bm!56150) (not b!921964) (not b!922053) (not bm!56129) (not bm!56133) (not b!922040) (not b!921665) (not b!921666) (not b!922086) (not d!280549) (not d!280573) (not b!922099) (not d!280561) (not bm!56128) (not d!280571) (not d!280493) (not bm!56134) (not b!921960) (not bm!56157) (not b!922104) (not bm!56118) (not d!280495) (not b!921979) (not b!921963) (not b!921978) (not d!280553) (not b!922105) (not b!922096) (not d!280583) (not b!922010) (not b!921973) (not b!921961) (not d!280585) (not b!922087) (not b!922021) (not d!280563) (not b!922097) (not b!921659) (not d!280557) (not b!922093) (not b!921977) (not d!280575) (not b!922088) (not b!922100) (not b!922103) (not bm!56145) (not b!921821) (not b!922068) (not b!921924) (not b!922101) (not b!921658) (not bm!56156) (not b!921974) (not b!922057) (not b!921660))
(check-sat)
