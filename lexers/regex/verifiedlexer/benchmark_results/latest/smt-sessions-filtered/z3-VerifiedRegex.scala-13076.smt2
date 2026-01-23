; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715840 () Bool)

(assert start!715840)

(declare-fun b!7330546 () Bool)

(declare-fun e!4389502 () Bool)

(declare-fun tp!2081401 () Bool)

(assert (=> b!7330546 (= e!4389502 tp!2081401)))

(declare-fun b!7330547 () Bool)

(declare-fun e!4389501 () Bool)

(declare-fun e!4389504 () Bool)

(assert (=> b!7330547 (= e!4389501 e!4389504)))

(declare-fun res!2962576 () Bool)

(assert (=> b!7330547 (=> (not res!2962576) (not e!4389504))))

(declare-datatypes ((C!38356 0))(
  ( (C!38357 (val!29538 Int)) )
))
(declare-datatypes ((Regex!19041 0))(
  ( (ElementMatch!19041 (c!1361039 C!38356)) (Concat!27886 (regOne!38594 Regex!19041) (regTwo!38594 Regex!19041)) (EmptyExpr!19041) (Star!19041 (reg!19370 Regex!19041)) (EmptyLang!19041) (Union!19041 (regOne!38595 Regex!19041) (regTwo!38595 Regex!19041)) )
))
(declare-datatypes ((List!71537 0))(
  ( (Nil!71413) (Cons!71413 (h!77861 Regex!19041) (t!385924 List!71537)) )
))
(declare-datatypes ((Context!15962 0))(
  ( (Context!15963 (exprs!8481 List!71537)) )
))
(declare-fun ct1!256 () Context!15962)

(get-info :version)

(assert (=> b!7330547 (= res!2962576 ((_ is Cons!71413) (exprs!8481 ct1!256)))))

(declare-fun lt!2607679 () List!71537)

(declare-fun ct2!352 () Context!15962)

(declare-fun ++!16863 (List!71537 List!71537) List!71537)

(assert (=> b!7330547 (= lt!2607679 (++!16863 (exprs!8481 ct1!256) (exprs!8481 ct2!352)))))

(declare-fun lambda!454631 () Int)

(declare-datatypes ((Unit!165043 0))(
  ( (Unit!165044) )
))
(declare-fun lt!2607676 () Unit!165043)

(declare-fun lemmaConcatPreservesForall!1720 (List!71537 List!71537 Int) Unit!165043)

(assert (=> b!7330547 (= lt!2607676 (lemmaConcatPreservesForall!1720 (exprs!8481 ct1!256) (exprs!8481 ct2!352) lambda!454631))))

(declare-fun res!2962580 () Bool)

(assert (=> start!715840 (=> (not res!2962580) (not e!4389501))))

(declare-fun cWitness!35 () Context!15962)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2607680 () (InoxSet Context!15962))

(assert (=> start!715840 (= res!2962580 (select lt!2607680 cWitness!35))))

(declare-fun c!10305 () C!38356)

(declare-fun derivationStepZipperUp!2721 (Context!15962 C!38356) (InoxSet Context!15962))

(assert (=> start!715840 (= lt!2607680 (derivationStepZipperUp!2721 ct1!256 c!10305))))

(assert (=> start!715840 e!4389501))

(declare-fun tp_is_empty!48327 () Bool)

(assert (=> start!715840 tp_is_empty!48327))

(declare-fun e!4389505 () Bool)

(declare-fun inv!90942 (Context!15962) Bool)

(assert (=> start!715840 (and (inv!90942 cWitness!35) e!4389505)))

(assert (=> start!715840 (and (inv!90942 ct1!256) e!4389502)))

(declare-fun e!4389500 () Bool)

(assert (=> start!715840 (and (inv!90942 ct2!352) e!4389500)))

(declare-fun b!7330548 () Bool)

(declare-fun tp!2081402 () Bool)

(assert (=> b!7330548 (= e!4389505 tp!2081402)))

(declare-fun e!4389503 () Bool)

(declare-fun lt!2607672 () Context!15962)

(declare-fun b!7330549 () Bool)

(assert (=> b!7330549 (= e!4389503 (not (select (derivationStepZipperUp!2721 (Context!15963 lt!2607679) c!10305) lt!2607672)))))

(declare-fun lt!2607678 () Unit!165043)

(assert (=> b!7330549 (= lt!2607678 (lemmaConcatPreservesForall!1720 (exprs!8481 cWitness!35) (exprs!8481 ct2!352) lambda!454631))))

(declare-fun lt!2607671 () List!71537)

(assert (=> b!7330549 (select (derivationStepZipperUp!2721 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352))) c!10305) lt!2607672)))

(assert (=> b!7330549 (= lt!2607672 (Context!15963 (++!16863 (exprs!8481 cWitness!35) (exprs!8481 ct2!352))))))

(declare-fun lt!2607674 () Unit!165043)

(assert (=> b!7330549 (= lt!2607674 (lemmaConcatPreservesForall!1720 lt!2607671 (exprs!8481 ct2!352) lambda!454631))))

(declare-fun lt!2607675 () Unit!165043)

(assert (=> b!7330549 (= lt!2607675 (lemmaConcatPreservesForall!1720 (exprs!8481 cWitness!35) (exprs!8481 ct2!352) lambda!454631))))

(declare-fun lt!2607681 () Context!15962)

(declare-fun lt!2607670 () Unit!165043)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!56 (Context!15962 Context!15962 Context!15962 C!38356) Unit!165043)

(assert (=> b!7330549 (= lt!2607670 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!56 lt!2607681 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7330550 () Bool)

(declare-fun e!4389506 () Bool)

(assert (=> b!7330550 (= e!4389504 e!4389506)))

(declare-fun res!2962578 () Bool)

(assert (=> b!7330550 (=> (not res!2962578) (not e!4389506))))

(declare-fun nullable!8142 (Regex!19041) Bool)

(assert (=> b!7330550 (= res!2962578 (nullable!8142 (h!77861 (exprs!8481 ct1!256))))))

(declare-fun lt!2607673 () (InoxSet Context!15962))

(declare-fun derivationStepZipperDown!2868 (Regex!19041 Context!15962 C!38356) (InoxSet Context!15962))

(assert (=> b!7330550 (= lt!2607673 (derivationStepZipperDown!2868 (h!77861 (exprs!8481 ct1!256)) lt!2607681 c!10305))))

(assert (=> b!7330550 (= lt!2607681 (Context!15963 lt!2607671))))

(declare-fun tail!14722 (List!71537) List!71537)

(assert (=> b!7330550 (= lt!2607671 (tail!14722 (exprs!8481 ct1!256)))))

(declare-fun b!7330551 () Bool)

(declare-fun res!2962577 () Bool)

(assert (=> b!7330551 (=> (not res!2962577) (not e!4389504))))

(declare-fun isEmpty!40953 (List!71537) Bool)

(assert (=> b!7330551 (= res!2962577 (not (isEmpty!40953 (exprs!8481 ct1!256))))))

(declare-fun b!7330552 () Bool)

(assert (=> b!7330552 (= e!4389506 e!4389503)))

(declare-fun res!2962579 () Bool)

(assert (=> b!7330552 (=> (not res!2962579) (not e!4389503))))

(declare-fun lt!2607677 () (InoxSet Context!15962))

(assert (=> b!7330552 (= res!2962579 (and (= lt!2607680 ((_ map or) lt!2607673 lt!2607677)) (or (select lt!2607673 cWitness!35) (select lt!2607677 cWitness!35)) (select lt!2607677 cWitness!35)))))

(assert (=> b!7330552 (= lt!2607677 (derivationStepZipperUp!2721 lt!2607681 c!10305))))

(declare-fun b!7330553 () Bool)

(declare-fun tp!2081403 () Bool)

(assert (=> b!7330553 (= e!4389500 tp!2081403)))

(assert (= (and start!715840 res!2962580) b!7330547))

(assert (= (and b!7330547 res!2962576) b!7330551))

(assert (= (and b!7330551 res!2962577) b!7330550))

(assert (= (and b!7330550 res!2962578) b!7330552))

(assert (= (and b!7330552 res!2962579) b!7330549))

(assert (= start!715840 b!7330548))

(assert (= start!715840 b!7330546))

(assert (= start!715840 b!7330553))

(declare-fun m!7996516 () Bool)

(assert (=> b!7330550 m!7996516))

(declare-fun m!7996518 () Bool)

(assert (=> b!7330550 m!7996518))

(declare-fun m!7996520 () Bool)

(assert (=> b!7330550 m!7996520))

(declare-fun m!7996522 () Bool)

(assert (=> start!715840 m!7996522))

(declare-fun m!7996524 () Bool)

(assert (=> start!715840 m!7996524))

(declare-fun m!7996526 () Bool)

(assert (=> start!715840 m!7996526))

(declare-fun m!7996528 () Bool)

(assert (=> start!715840 m!7996528))

(declare-fun m!7996530 () Bool)

(assert (=> start!715840 m!7996530))

(declare-fun m!7996532 () Bool)

(assert (=> b!7330551 m!7996532))

(declare-fun m!7996534 () Bool)

(assert (=> b!7330549 m!7996534))

(declare-fun m!7996536 () Bool)

(assert (=> b!7330549 m!7996536))

(declare-fun m!7996538 () Bool)

(assert (=> b!7330549 m!7996538))

(declare-fun m!7996540 () Bool)

(assert (=> b!7330549 m!7996540))

(declare-fun m!7996542 () Bool)

(assert (=> b!7330549 m!7996542))

(declare-fun m!7996544 () Bool)

(assert (=> b!7330549 m!7996544))

(declare-fun m!7996546 () Bool)

(assert (=> b!7330549 m!7996546))

(assert (=> b!7330549 m!7996534))

(declare-fun m!7996548 () Bool)

(assert (=> b!7330549 m!7996548))

(declare-fun m!7996550 () Bool)

(assert (=> b!7330549 m!7996550))

(declare-fun m!7996552 () Bool)

(assert (=> b!7330547 m!7996552))

(declare-fun m!7996554 () Bool)

(assert (=> b!7330547 m!7996554))

(declare-fun m!7996556 () Bool)

(assert (=> b!7330552 m!7996556))

(declare-fun m!7996558 () Bool)

(assert (=> b!7330552 m!7996558))

(declare-fun m!7996560 () Bool)

(assert (=> b!7330552 m!7996560))

(check-sat (not b!7330552) (not b!7330546) (not b!7330553) tp_is_empty!48327 (not b!7330548) (not b!7330547) (not b!7330549) (not b!7330550) (not start!715840) (not b!7330551))
(check-sat)
(get-model)

(declare-fun d!2276405 () Bool)

(declare-fun nullableFct!3238 (Regex!19041) Bool)

(assert (=> d!2276405 (= (nullable!8142 (h!77861 (exprs!8481 ct1!256))) (nullableFct!3238 (h!77861 (exprs!8481 ct1!256))))))

(declare-fun bs!1917316 () Bool)

(assert (= bs!1917316 d!2276405))

(declare-fun m!7996562 () Bool)

(assert (=> bs!1917316 m!7996562))

(assert (=> b!7330550 d!2276405))

(declare-fun b!7330576 () Bool)

(declare-fun e!4389521 () (InoxSet Context!15962))

(declare-fun call!667674 () (InoxSet Context!15962))

(declare-fun call!667678 () (InoxSet Context!15962))

(assert (=> b!7330576 (= e!4389521 ((_ map or) call!667674 call!667678))))

(declare-fun b!7330577 () Bool)

(declare-fun e!4389524 () Bool)

(assert (=> b!7330577 (= e!4389524 (nullable!8142 (regOne!38594 (h!77861 (exprs!8481 ct1!256)))))))

(declare-fun bm!667669 () Bool)

(declare-fun call!667675 () List!71537)

(declare-fun c!1361052 () Bool)

(declare-fun c!1361051 () Bool)

(declare-fun $colon$colon!3055 (List!71537 Regex!19041) List!71537)

(assert (=> bm!667669 (= call!667675 ($colon$colon!3055 (exprs!8481 lt!2607681) (ite (or c!1361052 c!1361051) (regTwo!38594 (h!77861 (exprs!8481 ct1!256))) (h!77861 (exprs!8481 ct1!256)))))))

(declare-fun call!667677 () (InoxSet Context!15962))

(declare-fun bm!667670 () Bool)

(declare-fun call!667676 () List!71537)

(declare-fun c!1361054 () Bool)

(assert (=> bm!667670 (= call!667677 (derivationStepZipperDown!2868 (ite c!1361054 (regOne!38595 (h!77861 (exprs!8481 ct1!256))) (ite c!1361052 (regTwo!38594 (h!77861 (exprs!8481 ct1!256))) (ite c!1361051 (regOne!38594 (h!77861 (exprs!8481 ct1!256))) (reg!19370 (h!77861 (exprs!8481 ct1!256)))))) (ite (or c!1361054 c!1361052) lt!2607681 (Context!15963 call!667676)) c!10305))))

(declare-fun d!2276407 () Bool)

(declare-fun c!1361053 () Bool)

(assert (=> d!2276407 (= c!1361053 (and ((_ is ElementMatch!19041) (h!77861 (exprs!8481 ct1!256))) (= (c!1361039 (h!77861 (exprs!8481 ct1!256))) c!10305)))))

(declare-fun e!4389523 () (InoxSet Context!15962))

(assert (=> d!2276407 (= (derivationStepZipperDown!2868 (h!77861 (exprs!8481 ct1!256)) lt!2607681 c!10305) e!4389523)))

(declare-fun b!7330578 () Bool)

(declare-fun e!4389522 () (InoxSet Context!15962))

(declare-fun call!667679 () (InoxSet Context!15962))

(assert (=> b!7330578 (= e!4389522 call!667679)))

(declare-fun bm!667671 () Bool)

(assert (=> bm!667671 (= call!667674 (derivationStepZipperDown!2868 (ite c!1361054 (regTwo!38595 (h!77861 (exprs!8481 ct1!256))) (regOne!38594 (h!77861 (exprs!8481 ct1!256)))) (ite c!1361054 lt!2607681 (Context!15963 call!667675)) c!10305))))

(declare-fun bm!667672 () Bool)

(assert (=> bm!667672 (= call!667676 call!667675)))

(declare-fun b!7330579 () Bool)

(assert (=> b!7330579 (= e!4389523 (store ((as const (Array Context!15962 Bool)) false) lt!2607681 true))))

(declare-fun b!7330580 () Bool)

(declare-fun c!1361050 () Bool)

(assert (=> b!7330580 (= c!1361050 ((_ is Star!19041) (h!77861 (exprs!8481 ct1!256))))))

(declare-fun e!4389519 () (InoxSet Context!15962))

(assert (=> b!7330580 (= e!4389522 e!4389519)))

(declare-fun b!7330581 () Bool)

(assert (=> b!7330581 (= e!4389519 ((as const (Array Context!15962 Bool)) false))))

(declare-fun bm!667673 () Bool)

(assert (=> bm!667673 (= call!667678 call!667677)))

(declare-fun b!7330582 () Bool)

(assert (=> b!7330582 (= e!4389519 call!667679)))

(declare-fun bm!667674 () Bool)

(assert (=> bm!667674 (= call!667679 call!667678)))

(declare-fun b!7330583 () Bool)

(assert (=> b!7330583 (= e!4389521 e!4389522)))

(assert (=> b!7330583 (= c!1361051 ((_ is Concat!27886) (h!77861 (exprs!8481 ct1!256))))))

(declare-fun b!7330584 () Bool)

(declare-fun e!4389520 () (InoxSet Context!15962))

(assert (=> b!7330584 (= e!4389520 ((_ map or) call!667677 call!667674))))

(declare-fun b!7330585 () Bool)

(assert (=> b!7330585 (= e!4389523 e!4389520)))

(assert (=> b!7330585 (= c!1361054 ((_ is Union!19041) (h!77861 (exprs!8481 ct1!256))))))

(declare-fun b!7330586 () Bool)

(assert (=> b!7330586 (= c!1361052 e!4389524)))

(declare-fun res!2962583 () Bool)

(assert (=> b!7330586 (=> (not res!2962583) (not e!4389524))))

(assert (=> b!7330586 (= res!2962583 ((_ is Concat!27886) (h!77861 (exprs!8481 ct1!256))))))

(assert (=> b!7330586 (= e!4389520 e!4389521)))

(assert (= (and d!2276407 c!1361053) b!7330579))

(assert (= (and d!2276407 (not c!1361053)) b!7330585))

(assert (= (and b!7330585 c!1361054) b!7330584))

(assert (= (and b!7330585 (not c!1361054)) b!7330586))

(assert (= (and b!7330586 res!2962583) b!7330577))

(assert (= (and b!7330586 c!1361052) b!7330576))

(assert (= (and b!7330586 (not c!1361052)) b!7330583))

(assert (= (and b!7330583 c!1361051) b!7330578))

(assert (= (and b!7330583 (not c!1361051)) b!7330580))

(assert (= (and b!7330580 c!1361050) b!7330582))

(assert (= (and b!7330580 (not c!1361050)) b!7330581))

(assert (= (or b!7330578 b!7330582) bm!667672))

(assert (= (or b!7330578 b!7330582) bm!667674))

(assert (= (or b!7330576 bm!667674) bm!667673))

(assert (= (or b!7330576 bm!667672) bm!667669))

(assert (= (or b!7330584 b!7330576) bm!667671))

(assert (= (or b!7330584 bm!667673) bm!667670))

(declare-fun m!7996570 () Bool)

(assert (=> b!7330577 m!7996570))

(declare-fun m!7996572 () Bool)

(assert (=> bm!667670 m!7996572))

(declare-fun m!7996574 () Bool)

(assert (=> bm!667671 m!7996574))

(declare-fun m!7996576 () Bool)

(assert (=> b!7330579 m!7996576))

(declare-fun m!7996578 () Bool)

(assert (=> bm!667669 m!7996578))

(assert (=> b!7330550 d!2276407))

(declare-fun d!2276413 () Bool)

(assert (=> d!2276413 (= (tail!14722 (exprs!8481 ct1!256)) (t!385924 (exprs!8481 ct1!256)))))

(assert (=> b!7330550 d!2276413))

(declare-fun bs!1917320 () Bool)

(declare-fun d!2276415 () Bool)

(assert (= bs!1917320 (and d!2276415 b!7330547)))

(declare-fun lambda!454641 () Int)

(assert (=> bs!1917320 (= lambda!454641 lambda!454631)))

(assert (=> d!2276415 (select (derivationStepZipperUp!2721 (Context!15963 (++!16863 (exprs!8481 lt!2607681) (exprs!8481 ct2!352))) c!10305) (Context!15963 (++!16863 (exprs!8481 cWitness!35) (exprs!8481 ct2!352))))))

(declare-fun lt!2607702 () Unit!165043)

(assert (=> d!2276415 (= lt!2607702 (lemmaConcatPreservesForall!1720 (exprs!8481 lt!2607681) (exprs!8481 ct2!352) lambda!454641))))

(declare-fun lt!2607701 () Unit!165043)

(assert (=> d!2276415 (= lt!2607701 (lemmaConcatPreservesForall!1720 (exprs!8481 cWitness!35) (exprs!8481 ct2!352) lambda!454641))))

(declare-fun lt!2607700 () Unit!165043)

(declare-fun choose!57019 (Context!15962 Context!15962 Context!15962 C!38356) Unit!165043)

(assert (=> d!2276415 (= lt!2607700 (choose!57019 lt!2607681 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2276415 (select (derivationStepZipperUp!2721 lt!2607681 c!10305) cWitness!35)))

(assert (=> d!2276415 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!56 lt!2607681 ct2!352 cWitness!35 c!10305) lt!2607700)))

(declare-fun bs!1917321 () Bool)

(assert (= bs!1917321 d!2276415))

(declare-fun m!7996600 () Bool)

(assert (=> bs!1917321 m!7996600))

(declare-fun m!7996602 () Bool)

(assert (=> bs!1917321 m!7996602))

(declare-fun m!7996604 () Bool)

(assert (=> bs!1917321 m!7996604))

(declare-fun m!7996606 () Bool)

(assert (=> bs!1917321 m!7996606))

(declare-fun m!7996608 () Bool)

(assert (=> bs!1917321 m!7996608))

(declare-fun m!7996610 () Bool)

(assert (=> bs!1917321 m!7996610))

(assert (=> bs!1917321 m!7996560))

(declare-fun m!7996612 () Bool)

(assert (=> bs!1917321 m!7996612))

(assert (=> bs!1917321 m!7996540))

(assert (=> b!7330549 d!2276415))

(declare-fun d!2276421 () Bool)

(declare-fun forall!17882 (List!71537 Int) Bool)

(assert (=> d!2276421 (forall!17882 (++!16863 (exprs!8481 cWitness!35) (exprs!8481 ct2!352)) lambda!454631)))

(declare-fun lt!2607707 () Unit!165043)

(declare-fun choose!57020 (List!71537 List!71537 Int) Unit!165043)

(assert (=> d!2276421 (= lt!2607707 (choose!57020 (exprs!8481 cWitness!35) (exprs!8481 ct2!352) lambda!454631))))

(assert (=> d!2276421 (forall!17882 (exprs!8481 cWitness!35) lambda!454631)))

(assert (=> d!2276421 (= (lemmaConcatPreservesForall!1720 (exprs!8481 cWitness!35) (exprs!8481 ct2!352) lambda!454631) lt!2607707)))

(declare-fun bs!1917322 () Bool)

(assert (= bs!1917322 d!2276421))

(assert (=> bs!1917322 m!7996540))

(assert (=> bs!1917322 m!7996540))

(declare-fun m!7996614 () Bool)

(assert (=> bs!1917322 m!7996614))

(declare-fun m!7996616 () Bool)

(assert (=> bs!1917322 m!7996616))

(declare-fun m!7996618 () Bool)

(assert (=> bs!1917322 m!7996618))

(assert (=> b!7330549 d!2276421))

(declare-fun b!7330633 () Bool)

(declare-fun e!4389552 () Bool)

(assert (=> b!7330633 (= e!4389552 (nullable!8142 (h!77861 (exprs!8481 (Context!15963 lt!2607679)))))))

(declare-fun bm!667681 () Bool)

(declare-fun call!667686 () (InoxSet Context!15962))

(assert (=> bm!667681 (= call!667686 (derivationStepZipperDown!2868 (h!77861 (exprs!8481 (Context!15963 lt!2607679))) (Context!15963 (t!385924 (exprs!8481 (Context!15963 lt!2607679)))) c!10305))))

(declare-fun b!7330634 () Bool)

(declare-fun e!4389553 () (InoxSet Context!15962))

(declare-fun e!4389551 () (InoxSet Context!15962))

(assert (=> b!7330634 (= e!4389553 e!4389551)))

(declare-fun c!1361074 () Bool)

(assert (=> b!7330634 (= c!1361074 ((_ is Cons!71413) (exprs!8481 (Context!15963 lt!2607679))))))

(declare-fun b!7330635 () Bool)

(assert (=> b!7330635 (= e!4389551 ((as const (Array Context!15962 Bool)) false))))

(declare-fun d!2276423 () Bool)

(declare-fun c!1361073 () Bool)

(assert (=> d!2276423 (= c!1361073 e!4389552)))

(declare-fun res!2962598 () Bool)

(assert (=> d!2276423 (=> (not res!2962598) (not e!4389552))))

(assert (=> d!2276423 (= res!2962598 ((_ is Cons!71413) (exprs!8481 (Context!15963 lt!2607679))))))

(assert (=> d!2276423 (= (derivationStepZipperUp!2721 (Context!15963 lt!2607679) c!10305) e!4389553)))

(declare-fun b!7330636 () Bool)

(assert (=> b!7330636 (= e!4389551 call!667686)))

(declare-fun b!7330637 () Bool)

(assert (=> b!7330637 (= e!4389553 ((_ map or) call!667686 (derivationStepZipperUp!2721 (Context!15963 (t!385924 (exprs!8481 (Context!15963 lt!2607679)))) c!10305)))))

(assert (= (and d!2276423 res!2962598) b!7330633))

(assert (= (and d!2276423 c!1361073) b!7330637))

(assert (= (and d!2276423 (not c!1361073)) b!7330634))

(assert (= (and b!7330634 c!1361074) b!7330636))

(assert (= (and b!7330634 (not c!1361074)) b!7330635))

(assert (= (or b!7330637 b!7330636) bm!667681))

(declare-fun m!7996658 () Bool)

(assert (=> b!7330633 m!7996658))

(declare-fun m!7996660 () Bool)

(assert (=> bm!667681 m!7996660))

(declare-fun m!7996662 () Bool)

(assert (=> b!7330637 m!7996662))

(assert (=> b!7330549 d!2276423))

(declare-fun b!7330638 () Bool)

(declare-fun e!4389555 () Bool)

(assert (=> b!7330638 (= e!4389555 (nullable!8142 (h!77861 (exprs!8481 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352)))))))))

(declare-fun call!667687 () (InoxSet Context!15962))

(declare-fun bm!667682 () Bool)

(assert (=> bm!667682 (= call!667687 (derivationStepZipperDown!2868 (h!77861 (exprs!8481 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352))))) (Context!15963 (t!385924 (exprs!8481 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352)))))) c!10305))))

(declare-fun b!7330639 () Bool)

(declare-fun e!4389556 () (InoxSet Context!15962))

(declare-fun e!4389554 () (InoxSet Context!15962))

(assert (=> b!7330639 (= e!4389556 e!4389554)))

(declare-fun c!1361076 () Bool)

(assert (=> b!7330639 (= c!1361076 ((_ is Cons!71413) (exprs!8481 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352))))))))

(declare-fun b!7330640 () Bool)

(assert (=> b!7330640 (= e!4389554 ((as const (Array Context!15962 Bool)) false))))

(declare-fun d!2276435 () Bool)

(declare-fun c!1361075 () Bool)

(assert (=> d!2276435 (= c!1361075 e!4389555)))

(declare-fun res!2962599 () Bool)

(assert (=> d!2276435 (=> (not res!2962599) (not e!4389555))))

(assert (=> d!2276435 (= res!2962599 ((_ is Cons!71413) (exprs!8481 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352))))))))

(assert (=> d!2276435 (= (derivationStepZipperUp!2721 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352))) c!10305) e!4389556)))

(declare-fun b!7330641 () Bool)

(assert (=> b!7330641 (= e!4389554 call!667687)))

(declare-fun b!7330642 () Bool)

(assert (=> b!7330642 (= e!4389556 ((_ map or) call!667687 (derivationStepZipperUp!2721 (Context!15963 (t!385924 (exprs!8481 (Context!15963 (++!16863 lt!2607671 (exprs!8481 ct2!352)))))) c!10305)))))

(assert (= (and d!2276435 res!2962599) b!7330638))

(assert (= (and d!2276435 c!1361075) b!7330642))

(assert (= (and d!2276435 (not c!1361075)) b!7330639))

(assert (= (and b!7330639 c!1361076) b!7330641))

(assert (= (and b!7330639 (not c!1361076)) b!7330640))

(assert (= (or b!7330642 b!7330641) bm!667682))

(declare-fun m!7996664 () Bool)

(assert (=> b!7330638 m!7996664))

(declare-fun m!7996666 () Bool)

(assert (=> bm!667682 m!7996666))

(declare-fun m!7996668 () Bool)

(assert (=> b!7330642 m!7996668))

(assert (=> b!7330549 d!2276435))

(declare-fun d!2276437 () Bool)

(assert (=> d!2276437 (forall!17882 (++!16863 lt!2607671 (exprs!8481 ct2!352)) lambda!454631)))

(declare-fun lt!2607711 () Unit!165043)

(assert (=> d!2276437 (= lt!2607711 (choose!57020 lt!2607671 (exprs!8481 ct2!352) lambda!454631))))

(assert (=> d!2276437 (forall!17882 lt!2607671 lambda!454631)))

(assert (=> d!2276437 (= (lemmaConcatPreservesForall!1720 lt!2607671 (exprs!8481 ct2!352) lambda!454631) lt!2607711)))

(declare-fun bs!1917325 () Bool)

(assert (= bs!1917325 d!2276437))

(assert (=> bs!1917325 m!7996546))

(assert (=> bs!1917325 m!7996546))

(declare-fun m!7996670 () Bool)

(assert (=> bs!1917325 m!7996670))

(declare-fun m!7996672 () Bool)

(assert (=> bs!1917325 m!7996672))

(declare-fun m!7996674 () Bool)

(assert (=> bs!1917325 m!7996674))

(assert (=> b!7330549 d!2276437))

(declare-fun d!2276439 () Bool)

(declare-fun e!4389573 () Bool)

(assert (=> d!2276439 e!4389573))

(declare-fun res!2962606 () Bool)

(assert (=> d!2276439 (=> (not res!2962606) (not e!4389573))))

(declare-fun lt!2607714 () List!71537)

(declare-fun content!14973 (List!71537) (InoxSet Regex!19041))

(assert (=> d!2276439 (= res!2962606 (= (content!14973 lt!2607714) ((_ map or) (content!14973 (exprs!8481 cWitness!35)) (content!14973 (exprs!8481 ct2!352)))))))

(declare-fun e!4389574 () List!71537)

(assert (=> d!2276439 (= lt!2607714 e!4389574)))

(declare-fun c!1361089 () Bool)

(assert (=> d!2276439 (= c!1361089 ((_ is Nil!71413) (exprs!8481 cWitness!35)))))

(assert (=> d!2276439 (= (++!16863 (exprs!8481 cWitness!35) (exprs!8481 ct2!352)) lt!2607714)))

(declare-fun b!7330675 () Bool)

(declare-fun res!2962607 () Bool)

(assert (=> b!7330675 (=> (not res!2962607) (not e!4389573))))

(declare-fun size!41952 (List!71537) Int)

(assert (=> b!7330675 (= res!2962607 (= (size!41952 lt!2607714) (+ (size!41952 (exprs!8481 cWitness!35)) (size!41952 (exprs!8481 ct2!352)))))))

(declare-fun b!7330676 () Bool)

(assert (=> b!7330676 (= e!4389573 (or (not (= (exprs!8481 ct2!352) Nil!71413)) (= lt!2607714 (exprs!8481 cWitness!35))))))

(declare-fun b!7330673 () Bool)

(assert (=> b!7330673 (= e!4389574 (exprs!8481 ct2!352))))

(declare-fun b!7330674 () Bool)

(assert (=> b!7330674 (= e!4389574 (Cons!71413 (h!77861 (exprs!8481 cWitness!35)) (++!16863 (t!385924 (exprs!8481 cWitness!35)) (exprs!8481 ct2!352))))))

(assert (= (and d!2276439 c!1361089) b!7330673))

(assert (= (and d!2276439 (not c!1361089)) b!7330674))

(assert (= (and d!2276439 res!2962606) b!7330675))

(assert (= (and b!7330675 res!2962607) b!7330676))

(declare-fun m!7996676 () Bool)

(assert (=> d!2276439 m!7996676))

(declare-fun m!7996678 () Bool)

(assert (=> d!2276439 m!7996678))

(declare-fun m!7996680 () Bool)

(assert (=> d!2276439 m!7996680))

(declare-fun m!7996682 () Bool)

(assert (=> b!7330675 m!7996682))

(declare-fun m!7996684 () Bool)

(assert (=> b!7330675 m!7996684))

(declare-fun m!7996686 () Bool)

(assert (=> b!7330675 m!7996686))

(declare-fun m!7996688 () Bool)

(assert (=> b!7330674 m!7996688))

(assert (=> b!7330549 d!2276439))

(declare-fun d!2276441 () Bool)

(declare-fun e!4389575 () Bool)

(assert (=> d!2276441 e!4389575))

(declare-fun res!2962608 () Bool)

(assert (=> d!2276441 (=> (not res!2962608) (not e!4389575))))

(declare-fun lt!2607715 () List!71537)

(assert (=> d!2276441 (= res!2962608 (= (content!14973 lt!2607715) ((_ map or) (content!14973 lt!2607671) (content!14973 (exprs!8481 ct2!352)))))))

(declare-fun e!4389576 () List!71537)

(assert (=> d!2276441 (= lt!2607715 e!4389576)))

(declare-fun c!1361090 () Bool)

(assert (=> d!2276441 (= c!1361090 ((_ is Nil!71413) lt!2607671))))

(assert (=> d!2276441 (= (++!16863 lt!2607671 (exprs!8481 ct2!352)) lt!2607715)))

(declare-fun b!7330679 () Bool)

(declare-fun res!2962609 () Bool)

(assert (=> b!7330679 (=> (not res!2962609) (not e!4389575))))

(assert (=> b!7330679 (= res!2962609 (= (size!41952 lt!2607715) (+ (size!41952 lt!2607671) (size!41952 (exprs!8481 ct2!352)))))))

(declare-fun b!7330680 () Bool)

(assert (=> b!7330680 (= e!4389575 (or (not (= (exprs!8481 ct2!352) Nil!71413)) (= lt!2607715 lt!2607671)))))

(declare-fun b!7330677 () Bool)

(assert (=> b!7330677 (= e!4389576 (exprs!8481 ct2!352))))

(declare-fun b!7330678 () Bool)

(assert (=> b!7330678 (= e!4389576 (Cons!71413 (h!77861 lt!2607671) (++!16863 (t!385924 lt!2607671) (exprs!8481 ct2!352))))))

(assert (= (and d!2276441 c!1361090) b!7330677))

(assert (= (and d!2276441 (not c!1361090)) b!7330678))

(assert (= (and d!2276441 res!2962608) b!7330679))

(assert (= (and b!7330679 res!2962609) b!7330680))

(declare-fun m!7996690 () Bool)

(assert (=> d!2276441 m!7996690))

(declare-fun m!7996692 () Bool)

(assert (=> d!2276441 m!7996692))

(assert (=> d!2276441 m!7996680))

(declare-fun m!7996694 () Bool)

(assert (=> b!7330679 m!7996694))

(declare-fun m!7996696 () Bool)

(assert (=> b!7330679 m!7996696))

(assert (=> b!7330679 m!7996686))

(declare-fun m!7996698 () Bool)

(assert (=> b!7330678 m!7996698))

(assert (=> b!7330549 d!2276441))

(declare-fun b!7330681 () Bool)

(declare-fun e!4389578 () Bool)

(assert (=> b!7330681 (= e!4389578 (nullable!8142 (h!77861 (exprs!8481 ct1!256))))))

(declare-fun bm!667695 () Bool)

(declare-fun call!667700 () (InoxSet Context!15962))

(assert (=> bm!667695 (= call!667700 (derivationStepZipperDown!2868 (h!77861 (exprs!8481 ct1!256)) (Context!15963 (t!385924 (exprs!8481 ct1!256))) c!10305))))

(declare-fun b!7330682 () Bool)

(declare-fun e!4389579 () (InoxSet Context!15962))

(declare-fun e!4389577 () (InoxSet Context!15962))

(assert (=> b!7330682 (= e!4389579 e!4389577)))

(declare-fun c!1361092 () Bool)

(assert (=> b!7330682 (= c!1361092 ((_ is Cons!71413) (exprs!8481 ct1!256)))))

(declare-fun b!7330683 () Bool)

(assert (=> b!7330683 (= e!4389577 ((as const (Array Context!15962 Bool)) false))))

(declare-fun d!2276443 () Bool)

(declare-fun c!1361091 () Bool)

(assert (=> d!2276443 (= c!1361091 e!4389578)))

(declare-fun res!2962610 () Bool)

(assert (=> d!2276443 (=> (not res!2962610) (not e!4389578))))

(assert (=> d!2276443 (= res!2962610 ((_ is Cons!71413) (exprs!8481 ct1!256)))))

(assert (=> d!2276443 (= (derivationStepZipperUp!2721 ct1!256 c!10305) e!4389579)))

(declare-fun b!7330684 () Bool)

(assert (=> b!7330684 (= e!4389577 call!667700)))

(declare-fun b!7330685 () Bool)

(assert (=> b!7330685 (= e!4389579 ((_ map or) call!667700 (derivationStepZipperUp!2721 (Context!15963 (t!385924 (exprs!8481 ct1!256))) c!10305)))))

(assert (= (and d!2276443 res!2962610) b!7330681))

(assert (= (and d!2276443 c!1361091) b!7330685))

(assert (= (and d!2276443 (not c!1361091)) b!7330682))

(assert (= (and b!7330682 c!1361092) b!7330684))

(assert (= (and b!7330682 (not c!1361092)) b!7330683))

(assert (= (or b!7330685 b!7330684) bm!667695))

(assert (=> b!7330681 m!7996516))

(declare-fun m!7996700 () Bool)

(assert (=> bm!667695 m!7996700))

(declare-fun m!7996702 () Bool)

(assert (=> b!7330685 m!7996702))

(assert (=> start!715840 d!2276443))

(declare-fun bs!1917326 () Bool)

(declare-fun d!2276445 () Bool)

(assert (= bs!1917326 (and d!2276445 b!7330547)))

(declare-fun lambda!454644 () Int)

(assert (=> bs!1917326 (= lambda!454644 lambda!454631)))

(declare-fun bs!1917327 () Bool)

(assert (= bs!1917327 (and d!2276445 d!2276415)))

(assert (=> bs!1917327 (= lambda!454644 lambda!454641)))

(assert (=> d!2276445 (= (inv!90942 cWitness!35) (forall!17882 (exprs!8481 cWitness!35) lambda!454644))))

(declare-fun bs!1917328 () Bool)

(assert (= bs!1917328 d!2276445))

(declare-fun m!7996704 () Bool)

(assert (=> bs!1917328 m!7996704))

(assert (=> start!715840 d!2276445))

(declare-fun bs!1917329 () Bool)

(declare-fun d!2276447 () Bool)

(assert (= bs!1917329 (and d!2276447 b!7330547)))

(declare-fun lambda!454645 () Int)

(assert (=> bs!1917329 (= lambda!454645 lambda!454631)))

(declare-fun bs!1917330 () Bool)

(assert (= bs!1917330 (and d!2276447 d!2276415)))

(assert (=> bs!1917330 (= lambda!454645 lambda!454641)))

(declare-fun bs!1917331 () Bool)

(assert (= bs!1917331 (and d!2276447 d!2276445)))

(assert (=> bs!1917331 (= lambda!454645 lambda!454644)))

(assert (=> d!2276447 (= (inv!90942 ct1!256) (forall!17882 (exprs!8481 ct1!256) lambda!454645))))

(declare-fun bs!1917332 () Bool)

(assert (= bs!1917332 d!2276447))

(declare-fun m!7996706 () Bool)

(assert (=> bs!1917332 m!7996706))

(assert (=> start!715840 d!2276447))

(declare-fun bs!1917333 () Bool)

(declare-fun d!2276449 () Bool)

(assert (= bs!1917333 (and d!2276449 b!7330547)))

(declare-fun lambda!454646 () Int)

(assert (=> bs!1917333 (= lambda!454646 lambda!454631)))

(declare-fun bs!1917334 () Bool)

(assert (= bs!1917334 (and d!2276449 d!2276415)))

(assert (=> bs!1917334 (= lambda!454646 lambda!454641)))

(declare-fun bs!1917335 () Bool)

(assert (= bs!1917335 (and d!2276449 d!2276445)))

(assert (=> bs!1917335 (= lambda!454646 lambda!454644)))

(declare-fun bs!1917336 () Bool)

(assert (= bs!1917336 (and d!2276449 d!2276447)))

(assert (=> bs!1917336 (= lambda!454646 lambda!454645)))

(assert (=> d!2276449 (= (inv!90942 ct2!352) (forall!17882 (exprs!8481 ct2!352) lambda!454646))))

(declare-fun bs!1917337 () Bool)

(assert (= bs!1917337 d!2276449))

(declare-fun m!7996718 () Bool)

(assert (=> bs!1917337 m!7996718))

(assert (=> start!715840 d!2276449))

(declare-fun d!2276453 () Bool)

(declare-fun e!4389586 () Bool)

(assert (=> d!2276453 e!4389586))

(declare-fun res!2962612 () Bool)

(assert (=> d!2276453 (=> (not res!2962612) (not e!4389586))))

(declare-fun lt!2607716 () List!71537)

(assert (=> d!2276453 (= res!2962612 (= (content!14973 lt!2607716) ((_ map or) (content!14973 (exprs!8481 ct1!256)) (content!14973 (exprs!8481 ct2!352)))))))

(declare-fun e!4389587 () List!71537)

(assert (=> d!2276453 (= lt!2607716 e!4389587)))

(declare-fun c!1361098 () Bool)

(assert (=> d!2276453 (= c!1361098 ((_ is Nil!71413) (exprs!8481 ct1!256)))))

(assert (=> d!2276453 (= (++!16863 (exprs!8481 ct1!256) (exprs!8481 ct2!352)) lt!2607716)))

(declare-fun b!7330699 () Bool)

(declare-fun res!2962613 () Bool)

(assert (=> b!7330699 (=> (not res!2962613) (not e!4389586))))

(assert (=> b!7330699 (= res!2962613 (= (size!41952 lt!2607716) (+ (size!41952 (exprs!8481 ct1!256)) (size!41952 (exprs!8481 ct2!352)))))))

(declare-fun b!7330700 () Bool)

(assert (=> b!7330700 (= e!4389586 (or (not (= (exprs!8481 ct2!352) Nil!71413)) (= lt!2607716 (exprs!8481 ct1!256))))))

(declare-fun b!7330697 () Bool)

(assert (=> b!7330697 (= e!4389587 (exprs!8481 ct2!352))))

(declare-fun b!7330698 () Bool)

(assert (=> b!7330698 (= e!4389587 (Cons!71413 (h!77861 (exprs!8481 ct1!256)) (++!16863 (t!385924 (exprs!8481 ct1!256)) (exprs!8481 ct2!352))))))

(assert (= (and d!2276453 c!1361098) b!7330697))

(assert (= (and d!2276453 (not c!1361098)) b!7330698))

(assert (= (and d!2276453 res!2962612) b!7330699))

(assert (= (and b!7330699 res!2962613) b!7330700))

(declare-fun m!7996720 () Bool)

(assert (=> d!2276453 m!7996720))

(declare-fun m!7996722 () Bool)

(assert (=> d!2276453 m!7996722))

(assert (=> d!2276453 m!7996680))

(declare-fun m!7996724 () Bool)

(assert (=> b!7330699 m!7996724))

(declare-fun m!7996726 () Bool)

(assert (=> b!7330699 m!7996726))

(assert (=> b!7330699 m!7996686))

(declare-fun m!7996728 () Bool)

(assert (=> b!7330698 m!7996728))

(assert (=> b!7330547 d!2276453))

(declare-fun d!2276457 () Bool)

(assert (=> d!2276457 (forall!17882 (++!16863 (exprs!8481 ct1!256) (exprs!8481 ct2!352)) lambda!454631)))

(declare-fun lt!2607718 () Unit!165043)

(assert (=> d!2276457 (= lt!2607718 (choose!57020 (exprs!8481 ct1!256) (exprs!8481 ct2!352) lambda!454631))))

(assert (=> d!2276457 (forall!17882 (exprs!8481 ct1!256) lambda!454631)))

(assert (=> d!2276457 (= (lemmaConcatPreservesForall!1720 (exprs!8481 ct1!256) (exprs!8481 ct2!352) lambda!454631) lt!2607718)))

(declare-fun bs!1917338 () Bool)

(assert (= bs!1917338 d!2276457))

(assert (=> bs!1917338 m!7996552))

(assert (=> bs!1917338 m!7996552))

(declare-fun m!7996730 () Bool)

(assert (=> bs!1917338 m!7996730))

(declare-fun m!7996734 () Bool)

(assert (=> bs!1917338 m!7996734))

(declare-fun m!7996738 () Bool)

(assert (=> bs!1917338 m!7996738))

(assert (=> b!7330547 d!2276457))

(declare-fun b!7330705 () Bool)

(declare-fun e!4389591 () Bool)

(assert (=> b!7330705 (= e!4389591 (nullable!8142 (h!77861 (exprs!8481 lt!2607681))))))

(declare-fun bm!667702 () Bool)

(declare-fun call!667707 () (InoxSet Context!15962))

(assert (=> bm!667702 (= call!667707 (derivationStepZipperDown!2868 (h!77861 (exprs!8481 lt!2607681)) (Context!15963 (t!385924 (exprs!8481 lt!2607681))) c!10305))))

(declare-fun b!7330706 () Bool)

(declare-fun e!4389592 () (InoxSet Context!15962))

(declare-fun e!4389590 () (InoxSet Context!15962))

(assert (=> b!7330706 (= e!4389592 e!4389590)))

(declare-fun c!1361101 () Bool)

(assert (=> b!7330706 (= c!1361101 ((_ is Cons!71413) (exprs!8481 lt!2607681)))))

(declare-fun b!7330707 () Bool)

(assert (=> b!7330707 (= e!4389590 ((as const (Array Context!15962 Bool)) false))))

(declare-fun d!2276459 () Bool)

(declare-fun c!1361100 () Bool)

(assert (=> d!2276459 (= c!1361100 e!4389591)))

(declare-fun res!2962616 () Bool)

(assert (=> d!2276459 (=> (not res!2962616) (not e!4389591))))

(assert (=> d!2276459 (= res!2962616 ((_ is Cons!71413) (exprs!8481 lt!2607681)))))

(assert (=> d!2276459 (= (derivationStepZipperUp!2721 lt!2607681 c!10305) e!4389592)))

(declare-fun b!7330708 () Bool)

(assert (=> b!7330708 (= e!4389590 call!667707)))

(declare-fun b!7330709 () Bool)

(assert (=> b!7330709 (= e!4389592 ((_ map or) call!667707 (derivationStepZipperUp!2721 (Context!15963 (t!385924 (exprs!8481 lt!2607681))) c!10305)))))

(assert (= (and d!2276459 res!2962616) b!7330705))

(assert (= (and d!2276459 c!1361100) b!7330709))

(assert (= (and d!2276459 (not c!1361100)) b!7330706))

(assert (= (and b!7330706 c!1361101) b!7330708))

(assert (= (and b!7330706 (not c!1361101)) b!7330707))

(assert (= (or b!7330709 b!7330708) bm!667702))

(declare-fun m!7996750 () Bool)

(assert (=> b!7330705 m!7996750))

(declare-fun m!7996754 () Bool)

(assert (=> bm!667702 m!7996754))

(declare-fun m!7996756 () Bool)

(assert (=> b!7330709 m!7996756))

(assert (=> b!7330552 d!2276459))

(declare-fun d!2276465 () Bool)

(assert (=> d!2276465 (= (isEmpty!40953 (exprs!8481 ct1!256)) ((_ is Nil!71413) (exprs!8481 ct1!256)))))

(assert (=> b!7330551 d!2276465))

(declare-fun b!7330724 () Bool)

(declare-fun e!4389601 () Bool)

(declare-fun tp!2081408 () Bool)

(declare-fun tp!2081409 () Bool)

(assert (=> b!7330724 (= e!4389601 (and tp!2081408 tp!2081409))))

(assert (=> b!7330548 (= tp!2081402 e!4389601)))

(assert (= (and b!7330548 ((_ is Cons!71413) (exprs!8481 cWitness!35))) b!7330724))

(declare-fun b!7330725 () Bool)

(declare-fun e!4389602 () Bool)

(declare-fun tp!2081410 () Bool)

(declare-fun tp!2081411 () Bool)

(assert (=> b!7330725 (= e!4389602 (and tp!2081410 tp!2081411))))

(assert (=> b!7330553 (= tp!2081403 e!4389602)))

(assert (= (and b!7330553 ((_ is Cons!71413) (exprs!8481 ct2!352))) b!7330725))

(declare-fun b!7330726 () Bool)

(declare-fun e!4389603 () Bool)

(declare-fun tp!2081412 () Bool)

(declare-fun tp!2081413 () Bool)

(assert (=> b!7330726 (= e!4389603 (and tp!2081412 tp!2081413))))

(assert (=> b!7330546 (= tp!2081401 e!4389603)))

(assert (= (and b!7330546 ((_ is Cons!71413) (exprs!8481 ct1!256))) b!7330726))

(check-sat (not d!2276439) (not b!7330705) (not b!7330674) (not b!7330577) (not b!7330637) (not b!7330709) (not b!7330679) (not d!2276415) (not b!7330698) (not bm!667681) (not b!7330638) (not b!7330724) (not b!7330725) (not b!7330726) (not b!7330675) (not d!2276437) (not bm!667695) (not d!2276453) (not b!7330699) (not b!7330685) (not b!7330633) (not b!7330681) (not d!2276445) tp_is_empty!48327 (not bm!667671) (not d!2276457) (not b!7330642) (not bm!667670) (not bm!667702) (not b!7330678) (not d!2276405) (not d!2276421) (not d!2276441) (not bm!667682) (not d!2276447) (not bm!667669) (not d!2276449))
(check-sat)
