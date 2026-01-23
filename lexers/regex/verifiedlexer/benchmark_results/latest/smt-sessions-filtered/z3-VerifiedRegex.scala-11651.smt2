; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!651784 () Bool)

(assert start!651784)

(declare-fun b!6722210 () Bool)

(assert (=> b!6722210 true))

(assert (=> b!6722210 true))

(declare-fun lambda!377003 () Int)

(declare-fun lambda!377002 () Int)

(assert (=> b!6722210 (not (= lambda!377003 lambda!377002))))

(assert (=> b!6722210 true))

(assert (=> b!6722210 true))

(declare-fun lambda!377004 () Int)

(assert (=> b!6722210 (not (= lambda!377004 lambda!377002))))

(assert (=> b!6722210 (not (= lambda!377004 lambda!377003))))

(assert (=> b!6722210 true))

(assert (=> b!6722210 true))

(declare-fun b!6722201 () Bool)

(assert (=> b!6722201 true))

(declare-fun b!6722198 () Bool)

(declare-fun res!2750492 () Bool)

(declare-fun e!4061624 () Bool)

(assert (=> b!6722198 (=> res!2750492 e!4061624)))

(declare-datatypes ((C!33368 0))(
  ( (C!33369 (val!26386 Int)) )
))
(declare-datatypes ((Regex!16549 0))(
  ( (ElementMatch!16549 (c!1246247 C!33368)) (Concat!25394 (regOne!33610 Regex!16549) (regTwo!33610 Regex!16549)) (EmptyExpr!16549) (Star!16549 (reg!16878 Regex!16549)) (EmptyLang!16549) (Union!16549 (regOne!33611 Regex!16549) (regTwo!33611 Regex!16549)) )
))
(declare-fun r!7292 () Regex!16549)

(declare-datatypes ((List!65946 0))(
  ( (Nil!65822) (Cons!65822 (h!72270 Regex!16549) (t!379625 List!65946)) )
))
(declare-datatypes ((Context!11866 0))(
  ( (Context!11867 (exprs!6433 List!65946)) )
))
(declare-datatypes ((List!65947 0))(
  ( (Nil!65823) (Cons!65823 (h!72271 Context!11866) (t!379626 List!65947)) )
))
(declare-fun zl!343 () List!65947)

(declare-fun generalisedConcat!2146 (List!65946) Regex!16549)

(assert (=> b!6722198 (= res!2750492 (not (= r!7292 (generalisedConcat!2146 (exprs!6433 (h!72271 zl!343))))))))

(declare-fun b!6722199 () Bool)

(declare-fun e!4061628 () Bool)

(declare-fun inv!84619 (Context!11866) Bool)

(assert (=> b!6722199 (= e!4061628 (inv!84619 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822)))))))

(declare-fun res!2750496 () Bool)

(declare-fun e!4061618 () Bool)

(assert (=> start!651784 (=> (not res!2750496) (not e!4061618))))

(declare-fun validRegex!8285 (Regex!16549) Bool)

(assert (=> start!651784 (= res!2750496 (validRegex!8285 r!7292))))

(assert (=> start!651784 e!4061618))

(declare-fun e!4061627 () Bool)

(assert (=> start!651784 e!4061627))

(declare-fun condSetEmpty!45815 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11866))

(assert (=> start!651784 (= condSetEmpty!45815 (= z!1189 ((as const (Array Context!11866 Bool)) false)))))

(declare-fun setRes!45815 () Bool)

(assert (=> start!651784 setRes!45815))

(declare-fun e!4061621 () Bool)

(assert (=> start!651784 e!4061621))

(declare-fun e!4061619 () Bool)

(assert (=> start!651784 e!4061619))

(declare-fun setElem!45815 () Context!11866)

(declare-fun setNonEmpty!45815 () Bool)

(declare-fun e!4061620 () Bool)

(declare-fun tp!1843153 () Bool)

(assert (=> setNonEmpty!45815 (= setRes!45815 (and tp!1843153 (inv!84619 setElem!45815) e!4061620))))

(declare-fun setRest!45815 () (InoxSet Context!11866))

(assert (=> setNonEmpty!45815 (= z!1189 ((_ map or) (store ((as const (Array Context!11866 Bool)) false) setElem!45815 true) setRest!45815))))

(declare-fun b!6722200 () Bool)

(declare-fun tp_is_empty!42351 () Bool)

(assert (=> b!6722200 (= e!4061627 tp_is_empty!42351)))

(declare-fun e!4061622 () Bool)

(assert (=> b!6722201 (= e!4061622 e!4061628)))

(declare-fun res!2750489 () Bool)

(assert (=> b!6722201 (=> res!2750489 e!4061628)))

(declare-datatypes ((List!65948 0))(
  ( (Nil!65824) (Cons!65824 (h!72272 C!33368) (t!379627 List!65948)) )
))
(declare-fun s!2326 () List!65948)

(declare-fun lt!2436790 () (InoxSet Context!11866))

(declare-fun derivationStepZipper!2493 ((InoxSet Context!11866) C!33368) (InoxSet Context!11866))

(assert (=> b!6722201 (= res!2750489 (not (= (derivationStepZipper!2493 z!1189 (h!72272 s!2326)) lt!2436790)))))

(declare-fun lambda!377005 () Int)

(declare-fun flatMap!2030 ((InoxSet Context!11866) Int) (InoxSet Context!11866))

(declare-fun derivationStepZipperUp!1703 (Context!11866 C!33368) (InoxSet Context!11866))

(assert (=> b!6722201 (= (flatMap!2030 z!1189 lambda!377005) (derivationStepZipperUp!1703 (h!72271 zl!343) (h!72272 s!2326)))))

(declare-datatypes ((Unit!159789 0))(
  ( (Unit!159790) )
))
(declare-fun lt!2436793 () Unit!159789)

(declare-fun lemmaFlatMapOnSingletonSet!1556 ((InoxSet Context!11866) Context!11866 Int) Unit!159789)

(assert (=> b!6722201 (= lt!2436793 (lemmaFlatMapOnSingletonSet!1556 z!1189 (h!72271 zl!343) lambda!377005))))

(declare-fun b!6722202 () Bool)

(declare-fun res!2750488 () Bool)

(assert (=> b!6722202 (=> res!2750488 e!4061624)))

(declare-fun isEmpty!38145 (List!65947) Bool)

(assert (=> b!6722202 (= res!2750488 (not (isEmpty!38145 (t!379626 zl!343))))))

(declare-fun b!6722203 () Bool)

(declare-fun tp!1843157 () Bool)

(assert (=> b!6722203 (= e!4061620 tp!1843157)))

(declare-fun b!6722204 () Bool)

(declare-fun res!2750485 () Bool)

(assert (=> b!6722204 (=> res!2750485 e!4061624)))

(get-info :version)

(assert (=> b!6722204 (= res!2750485 (not ((_ is Cons!65822) (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6722205 () Bool)

(declare-fun tp!1843161 () Bool)

(declare-fun tp!1843154 () Bool)

(assert (=> b!6722205 (= e!4061627 (and tp!1843161 tp!1843154))))

(declare-fun b!6722206 () Bool)

(declare-fun e!4061626 () Bool)

(declare-fun tp!1843158 () Bool)

(assert (=> b!6722206 (= e!4061626 tp!1843158)))

(declare-fun b!6722207 () Bool)

(declare-fun e!4061625 () Bool)

(declare-fun lt!2436792 () Bool)

(assert (=> b!6722207 (= e!4061625 lt!2436792)))

(declare-fun b!6722208 () Bool)

(declare-fun tp!1843155 () Bool)

(declare-fun tp!1843160 () Bool)

(assert (=> b!6722208 (= e!4061627 (and tp!1843155 tp!1843160))))

(declare-fun b!6722209 () Bool)

(declare-fun res!2750487 () Bool)

(declare-fun e!4061623 () Bool)

(assert (=> b!6722209 (=> res!2750487 e!4061623)))

(assert (=> b!6722209 (= res!2750487 ((_ is Nil!65824) s!2326))))

(assert (=> b!6722210 (= e!4061624 e!4061623)))

(declare-fun res!2750495 () Bool)

(assert (=> b!6722210 (=> res!2750495 e!4061623)))

(declare-fun lt!2436789 () Bool)

(assert (=> b!6722210 (= res!2750495 (not (= lt!2436789 e!4061625)))))

(declare-fun res!2750490 () Bool)

(assert (=> b!6722210 (=> res!2750490 e!4061625)))

(declare-fun isEmpty!38146 (List!65948) Bool)

(assert (=> b!6722210 (= res!2750490 (isEmpty!38146 s!2326))))

(declare-fun Exists!3617 (Int) Bool)

(assert (=> b!6722210 (= (Exists!3617 lambda!377002) (Exists!3617 lambda!377004))))

(declare-fun lt!2436794 () Unit!159789)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2144 (Regex!16549 Regex!16549 List!65948) Unit!159789)

(assert (=> b!6722210 (= lt!2436794 (lemmaExistCutMatchRandMatchRSpecEquivalent!2144 (reg!16878 r!7292) r!7292 s!2326))))

(assert (=> b!6722210 (= (Exists!3617 lambda!377002) (Exists!3617 lambda!377003))))

(declare-fun lt!2436796 () Unit!159789)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!708 (Regex!16549 List!65948) Unit!159789)

(assert (=> b!6722210 (= lt!2436796 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!708 (reg!16878 r!7292) s!2326))))

(assert (=> b!6722210 (= lt!2436792 (Exists!3617 lambda!377002))))

(declare-datatypes ((tuple2!67048 0))(
  ( (tuple2!67049 (_1!36827 List!65948) (_2!36827 List!65948)) )
))
(declare-datatypes ((Option!16436 0))(
  ( (None!16435) (Some!16435 (v!52635 tuple2!67048)) )
))
(declare-fun isDefined!13139 (Option!16436) Bool)

(declare-fun findConcatSeparation!2850 (Regex!16549 Regex!16549 List!65948 List!65948 List!65948) Option!16436)

(assert (=> b!6722210 (= lt!2436792 (isDefined!13139 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326)))))

(declare-fun lt!2436795 () Unit!159789)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2614 (Regex!16549 Regex!16549 List!65948) Unit!159789)

(assert (=> b!6722210 (= lt!2436795 (lemmaFindConcatSeparationEquivalentToExists!2614 (reg!16878 r!7292) r!7292 s!2326))))

(declare-fun b!6722211 () Bool)

(declare-fun tp!1843156 () Bool)

(assert (=> b!6722211 (= e!4061627 tp!1843156)))

(declare-fun b!6722212 () Bool)

(declare-fun res!2750494 () Bool)

(assert (=> b!6722212 (=> (not res!2750494) (not e!4061618))))

(declare-fun toList!10333 ((InoxSet Context!11866)) List!65947)

(assert (=> b!6722212 (= res!2750494 (= (toList!10333 z!1189) zl!343))))

(declare-fun b!6722213 () Bool)

(declare-fun res!2750493 () Bool)

(assert (=> b!6722213 (=> res!2750493 e!4061624)))

(assert (=> b!6722213 (= res!2750493 (or ((_ is EmptyExpr!16549) r!7292) ((_ is EmptyLang!16549) r!7292) ((_ is ElementMatch!16549) r!7292) ((_ is Union!16549) r!7292) ((_ is Concat!25394) r!7292)))))

(declare-fun b!6722214 () Bool)

(assert (=> b!6722214 (= e!4061623 e!4061622)))

(declare-fun res!2750491 () Bool)

(assert (=> b!6722214 (=> res!2750491 e!4061622)))

(declare-fun lt!2436788 () (InoxSet Context!11866))

(assert (=> b!6722214 (= res!2750491 (not (= lt!2436788 lt!2436790)))))

(declare-fun derivationStepZipperDown!1777 (Regex!16549 Context!11866 C!33368) (InoxSet Context!11866))

(assert (=> b!6722214 (= lt!2436790 (derivationStepZipperDown!1777 r!7292 (Context!11867 Nil!65822) (h!72272 s!2326)))))

(assert (=> b!6722214 (= lt!2436788 (derivationStepZipperUp!1703 (Context!11867 (Cons!65822 r!7292 Nil!65822)) (h!72272 s!2326)))))

(declare-fun b!6722215 () Bool)

(declare-fun tp!1843159 () Bool)

(assert (=> b!6722215 (= e!4061619 (and tp_is_empty!42351 tp!1843159))))

(declare-fun b!6722216 () Bool)

(assert (=> b!6722216 (= e!4061618 (not e!4061624))))

(declare-fun res!2750486 () Bool)

(assert (=> b!6722216 (=> res!2750486 e!4061624)))

(assert (=> b!6722216 (= res!2750486 (not ((_ is Cons!65823) zl!343)))))

(declare-fun matchRSpec!3650 (Regex!16549 List!65948) Bool)

(assert (=> b!6722216 (= lt!2436789 (matchRSpec!3650 r!7292 s!2326))))

(declare-fun matchR!8732 (Regex!16549 List!65948) Bool)

(assert (=> b!6722216 (= lt!2436789 (matchR!8732 r!7292 s!2326))))

(declare-fun lt!2436791 () Unit!159789)

(declare-fun mainMatchTheorem!3650 (Regex!16549 List!65948) Unit!159789)

(assert (=> b!6722216 (= lt!2436791 (mainMatchTheorem!3650 r!7292 s!2326))))

(declare-fun setIsEmpty!45815 () Bool)

(assert (=> setIsEmpty!45815 setRes!45815))

(declare-fun b!6722217 () Bool)

(declare-fun res!2750484 () Bool)

(assert (=> b!6722217 (=> res!2750484 e!4061624)))

(declare-fun generalisedUnion!2393 (List!65946) Regex!16549)

(declare-fun unfocusZipperList!1970 (List!65947) List!65946)

(assert (=> b!6722217 (= res!2750484 (not (= r!7292 (generalisedUnion!2393 (unfocusZipperList!1970 zl!343)))))))

(declare-fun b!6722218 () Bool)

(declare-fun res!2750483 () Bool)

(assert (=> b!6722218 (=> (not res!2750483) (not e!4061618))))

(declare-fun unfocusZipper!2291 (List!65947) Regex!16549)

(assert (=> b!6722218 (= res!2750483 (= r!7292 (unfocusZipper!2291 zl!343)))))

(declare-fun b!6722219 () Bool)

(declare-fun tp!1843152 () Bool)

(assert (=> b!6722219 (= e!4061621 (and (inv!84619 (h!72271 zl!343)) e!4061626 tp!1843152))))

(assert (= (and start!651784 res!2750496) b!6722212))

(assert (= (and b!6722212 res!2750494) b!6722218))

(assert (= (and b!6722218 res!2750483) b!6722216))

(assert (= (and b!6722216 (not res!2750486)) b!6722202))

(assert (= (and b!6722202 (not res!2750488)) b!6722198))

(assert (= (and b!6722198 (not res!2750492)) b!6722204))

(assert (= (and b!6722204 (not res!2750485)) b!6722217))

(assert (= (and b!6722217 (not res!2750484)) b!6722213))

(assert (= (and b!6722213 (not res!2750493)) b!6722210))

(assert (= (and b!6722210 (not res!2750490)) b!6722207))

(assert (= (and b!6722210 (not res!2750495)) b!6722209))

(assert (= (and b!6722209 (not res!2750487)) b!6722214))

(assert (= (and b!6722214 (not res!2750491)) b!6722201))

(assert (= (and b!6722201 (not res!2750489)) b!6722199))

(assert (= (and start!651784 ((_ is ElementMatch!16549) r!7292)) b!6722200))

(assert (= (and start!651784 ((_ is Concat!25394) r!7292)) b!6722205))

(assert (= (and start!651784 ((_ is Star!16549) r!7292)) b!6722211))

(assert (= (and start!651784 ((_ is Union!16549) r!7292)) b!6722208))

(assert (= (and start!651784 condSetEmpty!45815) setIsEmpty!45815))

(assert (= (and start!651784 (not condSetEmpty!45815)) setNonEmpty!45815))

(assert (= setNonEmpty!45815 b!6722203))

(assert (= b!6722219 b!6722206))

(assert (= (and start!651784 ((_ is Cons!65823) zl!343)) b!6722219))

(assert (= (and start!651784 ((_ is Cons!65824) s!2326)) b!6722215))

(declare-fun m!7483384 () Bool)

(assert (=> b!6722217 m!7483384))

(assert (=> b!6722217 m!7483384))

(declare-fun m!7483386 () Bool)

(assert (=> b!6722217 m!7483386))

(declare-fun m!7483388 () Bool)

(assert (=> start!651784 m!7483388))

(declare-fun m!7483390 () Bool)

(assert (=> b!6722218 m!7483390))

(declare-fun m!7483392 () Bool)

(assert (=> b!6722201 m!7483392))

(declare-fun m!7483394 () Bool)

(assert (=> b!6722201 m!7483394))

(declare-fun m!7483396 () Bool)

(assert (=> b!6722201 m!7483396))

(declare-fun m!7483398 () Bool)

(assert (=> b!6722201 m!7483398))

(declare-fun m!7483400 () Bool)

(assert (=> b!6722216 m!7483400))

(declare-fun m!7483402 () Bool)

(assert (=> b!6722216 m!7483402))

(declare-fun m!7483404 () Bool)

(assert (=> b!6722216 m!7483404))

(declare-fun m!7483406 () Bool)

(assert (=> b!6722198 m!7483406))

(declare-fun m!7483408 () Bool)

(assert (=> b!6722199 m!7483408))

(declare-fun m!7483410 () Bool)

(assert (=> b!6722214 m!7483410))

(declare-fun m!7483412 () Bool)

(assert (=> b!6722214 m!7483412))

(declare-fun m!7483414 () Bool)

(assert (=> b!6722212 m!7483414))

(declare-fun m!7483416 () Bool)

(assert (=> b!6722202 m!7483416))

(declare-fun m!7483418 () Bool)

(assert (=> b!6722219 m!7483418))

(declare-fun m!7483420 () Bool)

(assert (=> b!6722210 m!7483420))

(declare-fun m!7483422 () Bool)

(assert (=> b!6722210 m!7483422))

(declare-fun m!7483424 () Bool)

(assert (=> b!6722210 m!7483424))

(declare-fun m!7483426 () Bool)

(assert (=> b!6722210 m!7483426))

(assert (=> b!6722210 m!7483420))

(assert (=> b!6722210 m!7483420))

(declare-fun m!7483428 () Bool)

(assert (=> b!6722210 m!7483428))

(declare-fun m!7483430 () Bool)

(assert (=> b!6722210 m!7483430))

(declare-fun m!7483432 () Bool)

(assert (=> b!6722210 m!7483432))

(assert (=> b!6722210 m!7483430))

(declare-fun m!7483434 () Bool)

(assert (=> b!6722210 m!7483434))

(declare-fun m!7483436 () Bool)

(assert (=> b!6722210 m!7483436))

(declare-fun m!7483438 () Bool)

(assert (=> setNonEmpty!45815 m!7483438))

(check-sat (not b!6722212) (not b!6722218) (not b!6722201) (not b!6722215) (not b!6722206) (not b!6722205) (not b!6722208) tp_is_empty!42351 (not b!6722217) (not b!6722211) (not start!651784) (not b!6722198) (not b!6722203) (not b!6722210) (not b!6722214) (not b!6722219) (not b!6722202) (not b!6722216) (not setNonEmpty!45815) (not b!6722199))
(check-sat)
(get-model)

(declare-fun b!6722359 () Bool)

(declare-fun e!4061710 () (InoxSet Context!11866))

(declare-fun call!606861 () (InoxSet Context!11866))

(declare-fun call!606856 () (InoxSet Context!11866))

(assert (=> b!6722359 (= e!4061710 ((_ map or) call!606861 call!606856))))

(declare-fun bm!606851 () Bool)

(declare-fun call!606859 () (InoxSet Context!11866))

(assert (=> bm!606851 (= call!606859 call!606856)))

(declare-fun b!6722360 () Bool)

(declare-fun c!1246303 () Bool)

(declare-fun e!4061713 () Bool)

(assert (=> b!6722360 (= c!1246303 e!4061713)))

(declare-fun res!2750526 () Bool)

(assert (=> b!6722360 (=> (not res!2750526) (not e!4061713))))

(assert (=> b!6722360 (= res!2750526 ((_ is Concat!25394) r!7292))))

(declare-fun e!4061712 () (InoxSet Context!11866))

(assert (=> b!6722360 (= e!4061712 e!4061710)))

(declare-fun b!6722361 () Bool)

(declare-fun e!4061714 () (InoxSet Context!11866))

(assert (=> b!6722361 (= e!4061714 call!606859)))

(declare-fun b!6722362 () Bool)

(declare-fun e!4061715 () (InoxSet Context!11866))

(assert (=> b!6722362 (= e!4061715 (store ((as const (Array Context!11866 Bool)) false) (Context!11867 Nil!65822) true))))

(declare-fun call!606858 () List!65946)

(declare-fun c!1246302 () Bool)

(declare-fun bm!606852 () Bool)

(declare-fun $colon$colon!2366 (List!65946 Regex!16549) List!65946)

(assert (=> bm!606852 (= call!606858 ($colon$colon!2366 (exprs!6433 (Context!11867 Nil!65822)) (ite (or c!1246303 c!1246302) (regTwo!33610 r!7292) r!7292)))))

(declare-fun d!2112470 () Bool)

(declare-fun c!1246304 () Bool)

(assert (=> d!2112470 (= c!1246304 (and ((_ is ElementMatch!16549) r!7292) (= (c!1246247 r!7292) (h!72272 s!2326))))))

(assert (=> d!2112470 (= (derivationStepZipperDown!1777 r!7292 (Context!11867 Nil!65822) (h!72272 s!2326)) e!4061715)))

(declare-fun b!6722363 () Bool)

(declare-fun call!606857 () (InoxSet Context!11866))

(assert (=> b!6722363 (= e!4061712 ((_ map or) call!606861 call!606857))))

(declare-fun b!6722364 () Bool)

(declare-fun nullable!6536 (Regex!16549) Bool)

(assert (=> b!6722364 (= e!4061713 (nullable!6536 (regOne!33610 r!7292)))))

(declare-fun b!6722365 () Bool)

(assert (=> b!6722365 (= e!4061715 e!4061712)))

(declare-fun c!1246301 () Bool)

(assert (=> b!6722365 (= c!1246301 ((_ is Union!16549) r!7292))))

(declare-fun b!6722366 () Bool)

(assert (=> b!6722366 (= e!4061714 ((as const (Array Context!11866 Bool)) false))))

(declare-fun bm!606853 () Bool)

(declare-fun call!606860 () List!65946)

(assert (=> bm!606853 (= call!606860 call!606858)))

(declare-fun b!6722367 () Bool)

(declare-fun e!4061711 () (InoxSet Context!11866))

(assert (=> b!6722367 (= e!4061711 call!606859)))

(declare-fun b!6722368 () Bool)

(assert (=> b!6722368 (= e!4061710 e!4061711)))

(assert (=> b!6722368 (= c!1246302 ((_ is Concat!25394) r!7292))))

(declare-fun bm!606854 () Bool)

(assert (=> bm!606854 (= call!606856 call!606857)))

(declare-fun b!6722369 () Bool)

(declare-fun c!1246300 () Bool)

(assert (=> b!6722369 (= c!1246300 ((_ is Star!16549) r!7292))))

(assert (=> b!6722369 (= e!4061711 e!4061714)))

(declare-fun bm!606855 () Bool)

(assert (=> bm!606855 (= call!606861 (derivationStepZipperDown!1777 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292)) (ite c!1246301 (Context!11867 Nil!65822) (Context!11867 call!606858)) (h!72272 s!2326)))))

(declare-fun bm!606856 () Bool)

(assert (=> bm!606856 (= call!606857 (derivationStepZipperDown!1777 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292)))) (ite (or c!1246301 c!1246303) (Context!11867 Nil!65822) (Context!11867 call!606860)) (h!72272 s!2326)))))

(assert (= (and d!2112470 c!1246304) b!6722362))

(assert (= (and d!2112470 (not c!1246304)) b!6722365))

(assert (= (and b!6722365 c!1246301) b!6722363))

(assert (= (and b!6722365 (not c!1246301)) b!6722360))

(assert (= (and b!6722360 res!2750526) b!6722364))

(assert (= (and b!6722360 c!1246303) b!6722359))

(assert (= (and b!6722360 (not c!1246303)) b!6722368))

(assert (= (and b!6722368 c!1246302) b!6722367))

(assert (= (and b!6722368 (not c!1246302)) b!6722369))

(assert (= (and b!6722369 c!1246300) b!6722361))

(assert (= (and b!6722369 (not c!1246300)) b!6722366))

(assert (= (or b!6722367 b!6722361) bm!606853))

(assert (= (or b!6722367 b!6722361) bm!606851))

(assert (= (or b!6722359 bm!606853) bm!606852))

(assert (= (or b!6722359 bm!606851) bm!606854))

(assert (= (or b!6722363 bm!606854) bm!606856))

(assert (= (or b!6722363 b!6722359) bm!606855))

(declare-fun m!7483494 () Bool)

(assert (=> bm!606856 m!7483494))

(declare-fun m!7483496 () Bool)

(assert (=> bm!606852 m!7483496))

(declare-fun m!7483498 () Bool)

(assert (=> b!6722364 m!7483498))

(declare-fun m!7483500 () Bool)

(assert (=> b!6722362 m!7483500))

(declare-fun m!7483502 () Bool)

(assert (=> bm!606855 m!7483502))

(assert (=> b!6722214 d!2112470))

(declare-fun b!6722388 () Bool)

(declare-fun e!4061727 () (InoxSet Context!11866))

(declare-fun e!4061728 () (InoxSet Context!11866))

(assert (=> b!6722388 (= e!4061727 e!4061728)))

(declare-fun c!1246309 () Bool)

(assert (=> b!6722388 (= c!1246309 ((_ is Cons!65822) (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))

(declare-fun bm!606859 () Bool)

(declare-fun call!606864 () (InoxSet Context!11866))

(assert (=> bm!606859 (= call!606864 (derivationStepZipperDown!1777 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))) (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (h!72272 s!2326)))))

(declare-fun d!2112492 () Bool)

(declare-fun c!1246310 () Bool)

(declare-fun e!4061726 () Bool)

(assert (=> d!2112492 (= c!1246310 e!4061726)))

(declare-fun res!2750537 () Bool)

(assert (=> d!2112492 (=> (not res!2750537) (not e!4061726))))

(assert (=> d!2112492 (= res!2750537 ((_ is Cons!65822) (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))

(assert (=> d!2112492 (= (derivationStepZipperUp!1703 (Context!11867 (Cons!65822 r!7292 Nil!65822)) (h!72272 s!2326)) e!4061727)))

(declare-fun b!6722389 () Bool)

(assert (=> b!6722389 (= e!4061728 call!606864)))

(declare-fun b!6722390 () Bool)

(assert (=> b!6722390 (= e!4061727 ((_ map or) call!606864 (derivationStepZipperUp!1703 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (h!72272 s!2326))))))

(declare-fun b!6722391 () Bool)

(assert (=> b!6722391 (= e!4061728 ((as const (Array Context!11866 Bool)) false))))

(declare-fun b!6722392 () Bool)

(assert (=> b!6722392 (= e!4061726 (nullable!6536 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))

(assert (= (and d!2112492 res!2750537) b!6722392))

(assert (= (and d!2112492 c!1246310) b!6722390))

(assert (= (and d!2112492 (not c!1246310)) b!6722388))

(assert (= (and b!6722388 c!1246309) b!6722389))

(assert (= (and b!6722388 (not c!1246309)) b!6722391))

(assert (= (or b!6722390 b!6722389) bm!606859))

(declare-fun m!7483512 () Bool)

(assert (=> bm!606859 m!7483512))

(declare-fun m!7483514 () Bool)

(assert (=> b!6722390 m!7483514))

(declare-fun m!7483516 () Bool)

(assert (=> b!6722392 m!7483516))

(assert (=> b!6722214 d!2112492))

(declare-fun d!2112496 () Bool)

(assert (=> d!2112496 (= (isEmpty!38145 (t!379626 zl!343)) ((_ is Nil!65823) (t!379626 zl!343)))))

(assert (=> b!6722202 d!2112496))

(declare-fun bs!1788314 () Bool)

(declare-fun b!6722474 () Bool)

(assert (= bs!1788314 (and b!6722474 b!6722210)))

(declare-fun lambda!377034 () Int)

(assert (=> bs!1788314 (not (= lambda!377034 lambda!377002))))

(assert (=> bs!1788314 (= lambda!377034 lambda!377003)))

(assert (=> bs!1788314 (not (= lambda!377034 lambda!377004))))

(assert (=> b!6722474 true))

(assert (=> b!6722474 true))

(declare-fun bs!1788315 () Bool)

(declare-fun b!6722470 () Bool)

(assert (= bs!1788315 (and b!6722470 b!6722210)))

(declare-fun lambda!377035 () Int)

(assert (=> bs!1788315 (not (= lambda!377035 lambda!377002))))

(assert (=> bs!1788315 (not (= lambda!377035 lambda!377003))))

(assert (=> bs!1788315 (= (and (= (regOne!33610 r!7292) (reg!16878 r!7292)) (= (regTwo!33610 r!7292) r!7292)) (= lambda!377035 lambda!377004))))

(declare-fun bs!1788316 () Bool)

(assert (= bs!1788316 (and b!6722470 b!6722474)))

(assert (=> bs!1788316 (not (= lambda!377035 lambda!377034))))

(assert (=> b!6722470 true))

(assert (=> b!6722470 true))

(declare-fun b!6722466 () Bool)

(declare-fun c!1246326 () Bool)

(assert (=> b!6722466 (= c!1246326 ((_ is Union!16549) r!7292))))

(declare-fun e!4061768 () Bool)

(declare-fun e!4061770 () Bool)

(assert (=> b!6722466 (= e!4061768 e!4061770)))

(declare-fun b!6722467 () Bool)

(declare-fun e!4061772 () Bool)

(assert (=> b!6722467 (= e!4061770 e!4061772)))

(declare-fun res!2750584 () Bool)

(assert (=> b!6722467 (= res!2750584 (matchRSpec!3650 (regOne!33611 r!7292) s!2326))))

(assert (=> b!6722467 (=> res!2750584 e!4061772)))

(declare-fun b!6722468 () Bool)

(declare-fun e!4061769 () Bool)

(assert (=> b!6722468 (= e!4061770 e!4061769)))

(declare-fun c!1246325 () Bool)

(assert (=> b!6722468 (= c!1246325 ((_ is Star!16549) r!7292))))

(declare-fun b!6722469 () Bool)

(declare-fun e!4061773 () Bool)

(declare-fun e!4061774 () Bool)

(assert (=> b!6722469 (= e!4061773 e!4061774)))

(declare-fun res!2750585 () Bool)

(assert (=> b!6722469 (= res!2750585 (not ((_ is EmptyLang!16549) r!7292)))))

(assert (=> b!6722469 (=> (not res!2750585) (not e!4061774))))

(declare-fun call!606869 () Bool)

(assert (=> b!6722470 (= e!4061769 call!606869)))

(declare-fun b!6722471 () Bool)

(assert (=> b!6722471 (= e!4061772 (matchRSpec!3650 (regTwo!33611 r!7292) s!2326))))

(declare-fun d!2112498 () Bool)

(declare-fun c!1246328 () Bool)

(assert (=> d!2112498 (= c!1246328 ((_ is EmptyExpr!16549) r!7292))))

(assert (=> d!2112498 (= (matchRSpec!3650 r!7292 s!2326) e!4061773)))

(declare-fun b!6722472 () Bool)

(declare-fun c!1246327 () Bool)

(assert (=> b!6722472 (= c!1246327 ((_ is ElementMatch!16549) r!7292))))

(assert (=> b!6722472 (= e!4061774 e!4061768)))

(declare-fun bm!606864 () Bool)

(assert (=> bm!606864 (= call!606869 (Exists!3617 (ite c!1246325 lambda!377034 lambda!377035)))))

(declare-fun bm!606865 () Bool)

(declare-fun call!606870 () Bool)

(assert (=> bm!606865 (= call!606870 (isEmpty!38146 s!2326))))

(declare-fun b!6722473 () Bool)

(assert (=> b!6722473 (= e!4061773 call!606870)))

(declare-fun e!4061771 () Bool)

(assert (=> b!6722474 (= e!4061771 call!606869)))

(declare-fun b!6722475 () Bool)

(assert (=> b!6722475 (= e!4061768 (= s!2326 (Cons!65824 (c!1246247 r!7292) Nil!65824)))))

(declare-fun b!6722476 () Bool)

(declare-fun res!2750583 () Bool)

(assert (=> b!6722476 (=> res!2750583 e!4061771)))

(assert (=> b!6722476 (= res!2750583 call!606870)))

(assert (=> b!6722476 (= e!4061769 e!4061771)))

(assert (= (and d!2112498 c!1246328) b!6722473))

(assert (= (and d!2112498 (not c!1246328)) b!6722469))

(assert (= (and b!6722469 res!2750585) b!6722472))

(assert (= (and b!6722472 c!1246327) b!6722475))

(assert (= (and b!6722472 (not c!1246327)) b!6722466))

(assert (= (and b!6722466 c!1246326) b!6722467))

(assert (= (and b!6722466 (not c!1246326)) b!6722468))

(assert (= (and b!6722467 (not res!2750584)) b!6722471))

(assert (= (and b!6722468 c!1246325) b!6722476))

(assert (= (and b!6722468 (not c!1246325)) b!6722470))

(assert (= (and b!6722476 (not res!2750583)) b!6722474))

(assert (= (or b!6722474 b!6722470) bm!606864))

(assert (= (or b!6722473 b!6722476) bm!606865))

(declare-fun m!7483552 () Bool)

(assert (=> b!6722467 m!7483552))

(declare-fun m!7483554 () Bool)

(assert (=> b!6722471 m!7483554))

(declare-fun m!7483556 () Bool)

(assert (=> bm!606864 m!7483556))

(assert (=> bm!606865 m!7483422))

(assert (=> b!6722216 d!2112498))

(declare-fun b!6722578 () Bool)

(declare-fun e!4061837 () Bool)

(declare-fun e!4061832 () Bool)

(assert (=> b!6722578 (= e!4061837 e!4061832)))

(declare-fun c!1246361 () Bool)

(assert (=> b!6722578 (= c!1246361 ((_ is EmptyLang!16549) r!7292))))

(declare-fun b!6722579 () Bool)

(declare-fun e!4061836 () Bool)

(declare-fun derivativeStep!5221 (Regex!16549 C!33368) Regex!16549)

(declare-fun head!13525 (List!65948) C!33368)

(declare-fun tail!12610 (List!65948) List!65948)

(assert (=> b!6722579 (= e!4061836 (matchR!8732 (derivativeStep!5221 r!7292 (head!13525 s!2326)) (tail!12610 s!2326)))))

(declare-fun b!6722580 () Bool)

(declare-fun lt!2436829 () Bool)

(assert (=> b!6722580 (= e!4061832 (not lt!2436829))))

(declare-fun b!6722581 () Bool)

(declare-fun res!2750629 () Bool)

(declare-fun e!4061833 () Bool)

(assert (=> b!6722581 (=> res!2750629 e!4061833)))

(assert (=> b!6722581 (= res!2750629 (not ((_ is ElementMatch!16549) r!7292)))))

(assert (=> b!6722581 (= e!4061832 e!4061833)))

(declare-fun b!6722582 () Bool)

(declare-fun e!4061835 () Bool)

(declare-fun e!4061838 () Bool)

(assert (=> b!6722582 (= e!4061835 e!4061838)))

(declare-fun res!2750632 () Bool)

(assert (=> b!6722582 (=> res!2750632 e!4061838)))

(declare-fun call!606879 () Bool)

(assert (=> b!6722582 (= res!2750632 call!606879)))

(declare-fun b!6722583 () Bool)

(declare-fun res!2750631 () Bool)

(declare-fun e!4061834 () Bool)

(assert (=> b!6722583 (=> (not res!2750631) (not e!4061834))))

(assert (=> b!6722583 (= res!2750631 (not call!606879))))

(declare-fun b!6722584 () Bool)

(declare-fun res!2750633 () Bool)

(assert (=> b!6722584 (=> res!2750633 e!4061838)))

(assert (=> b!6722584 (= res!2750633 (not (isEmpty!38146 (tail!12610 s!2326))))))

(declare-fun d!2112512 () Bool)

(assert (=> d!2112512 e!4061837))

(declare-fun c!1246360 () Bool)

(assert (=> d!2112512 (= c!1246360 ((_ is EmptyExpr!16549) r!7292))))

(assert (=> d!2112512 (= lt!2436829 e!4061836)))

(declare-fun c!1246359 () Bool)

(assert (=> d!2112512 (= c!1246359 (isEmpty!38146 s!2326))))

(assert (=> d!2112512 (validRegex!8285 r!7292)))

(assert (=> d!2112512 (= (matchR!8732 r!7292 s!2326) lt!2436829)))

(declare-fun b!6722585 () Bool)

(assert (=> b!6722585 (= e!4061833 e!4061835)))

(declare-fun res!2750627 () Bool)

(assert (=> b!6722585 (=> (not res!2750627) (not e!4061835))))

(assert (=> b!6722585 (= res!2750627 (not lt!2436829))))

(declare-fun b!6722586 () Bool)

(declare-fun res!2750630 () Bool)

(assert (=> b!6722586 (=> res!2750630 e!4061833)))

(assert (=> b!6722586 (= res!2750630 e!4061834)))

(declare-fun res!2750628 () Bool)

(assert (=> b!6722586 (=> (not res!2750628) (not e!4061834))))

(assert (=> b!6722586 (= res!2750628 lt!2436829)))

(declare-fun b!6722587 () Bool)

(assert (=> b!6722587 (= e!4061838 (not (= (head!13525 s!2326) (c!1246247 r!7292))))))

(declare-fun b!6722588 () Bool)

(assert (=> b!6722588 (= e!4061837 (= lt!2436829 call!606879))))

(declare-fun b!6722589 () Bool)

(assert (=> b!6722589 (= e!4061834 (= (head!13525 s!2326) (c!1246247 r!7292)))))

(declare-fun b!6722590 () Bool)

(declare-fun res!2750634 () Bool)

(assert (=> b!6722590 (=> (not res!2750634) (not e!4061834))))

(assert (=> b!6722590 (= res!2750634 (isEmpty!38146 (tail!12610 s!2326)))))

(declare-fun bm!606874 () Bool)

(assert (=> bm!606874 (= call!606879 (isEmpty!38146 s!2326))))

(declare-fun b!6722591 () Bool)

(assert (=> b!6722591 (= e!4061836 (nullable!6536 r!7292))))

(assert (= (and d!2112512 c!1246359) b!6722591))

(assert (= (and d!2112512 (not c!1246359)) b!6722579))

(assert (= (and d!2112512 c!1246360) b!6722588))

(assert (= (and d!2112512 (not c!1246360)) b!6722578))

(assert (= (and b!6722578 c!1246361) b!6722580))

(assert (= (and b!6722578 (not c!1246361)) b!6722581))

(assert (= (and b!6722581 (not res!2750629)) b!6722586))

(assert (= (and b!6722586 res!2750628) b!6722583))

(assert (= (and b!6722583 res!2750631) b!6722590))

(assert (= (and b!6722590 res!2750634) b!6722589))

(assert (= (and b!6722586 (not res!2750630)) b!6722585))

(assert (= (and b!6722585 res!2750627) b!6722582))

(assert (= (and b!6722582 (not res!2750632)) b!6722584))

(assert (= (and b!6722584 (not res!2750633)) b!6722587))

(assert (= (or b!6722588 b!6722582 b!6722583) bm!606874))

(assert (=> bm!606874 m!7483422))

(assert (=> d!2112512 m!7483422))

(assert (=> d!2112512 m!7483388))

(declare-fun m!7483580 () Bool)

(assert (=> b!6722589 m!7483580))

(assert (=> b!6722579 m!7483580))

(assert (=> b!6722579 m!7483580))

(declare-fun m!7483582 () Bool)

(assert (=> b!6722579 m!7483582))

(declare-fun m!7483584 () Bool)

(assert (=> b!6722579 m!7483584))

(assert (=> b!6722579 m!7483582))

(assert (=> b!6722579 m!7483584))

(declare-fun m!7483586 () Bool)

(assert (=> b!6722579 m!7483586))

(declare-fun m!7483588 () Bool)

(assert (=> b!6722591 m!7483588))

(assert (=> b!6722584 m!7483584))

(assert (=> b!6722584 m!7483584))

(declare-fun m!7483590 () Bool)

(assert (=> b!6722584 m!7483590))

(assert (=> b!6722587 m!7483580))

(assert (=> b!6722590 m!7483584))

(assert (=> b!6722590 m!7483584))

(assert (=> b!6722590 m!7483590))

(assert (=> b!6722216 d!2112512))

(declare-fun d!2112518 () Bool)

(assert (=> d!2112518 (= (matchR!8732 r!7292 s!2326) (matchRSpec!3650 r!7292 s!2326))))

(declare-fun lt!2436832 () Unit!159789)

(declare-fun choose!50079 (Regex!16549 List!65948) Unit!159789)

(assert (=> d!2112518 (= lt!2436832 (choose!50079 r!7292 s!2326))))

(assert (=> d!2112518 (validRegex!8285 r!7292)))

(assert (=> d!2112518 (= (mainMatchTheorem!3650 r!7292 s!2326) lt!2436832)))

(declare-fun bs!1788334 () Bool)

(assert (= bs!1788334 d!2112518))

(assert (=> bs!1788334 m!7483402))

(assert (=> bs!1788334 m!7483400))

(declare-fun m!7483598 () Bool)

(assert (=> bs!1788334 m!7483598))

(assert (=> bs!1788334 m!7483388))

(assert (=> b!6722216 d!2112518))

(declare-fun d!2112522 () Bool)

(declare-fun lambda!377048 () Int)

(declare-fun forall!15749 (List!65946 Int) Bool)

(assert (=> d!2112522 (= (inv!84619 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822)))) (forall!15749 (exprs!6433 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822)))) lambda!377048))))

(declare-fun bs!1788335 () Bool)

(assert (= bs!1788335 d!2112522))

(declare-fun m!7483600 () Bool)

(assert (=> bs!1788335 m!7483600))

(assert (=> b!6722199 d!2112522))

(declare-fun bs!1788336 () Bool)

(declare-fun d!2112524 () Bool)

(assert (= bs!1788336 (and d!2112524 d!2112522)))

(declare-fun lambda!377049 () Int)

(assert (=> bs!1788336 (= lambda!377049 lambda!377048)))

(assert (=> d!2112524 (= (inv!84619 setElem!45815) (forall!15749 (exprs!6433 setElem!45815) lambda!377049))))

(declare-fun bs!1788337 () Bool)

(assert (= bs!1788337 d!2112524))

(declare-fun m!7483602 () Bool)

(assert (=> bs!1788337 m!7483602))

(assert (=> setNonEmpty!45815 d!2112524))

(declare-fun bs!1788338 () Bool)

(declare-fun d!2112526 () Bool)

(assert (= bs!1788338 (and d!2112526 d!2112522)))

(declare-fun lambda!377050 () Int)

(assert (=> bs!1788338 (= lambda!377050 lambda!377048)))

(declare-fun bs!1788339 () Bool)

(assert (= bs!1788339 (and d!2112526 d!2112524)))

(assert (=> bs!1788339 (= lambda!377050 lambda!377049)))

(assert (=> d!2112526 (= (inv!84619 (h!72271 zl!343)) (forall!15749 (exprs!6433 (h!72271 zl!343)) lambda!377050))))

(declare-fun bs!1788340 () Bool)

(assert (= bs!1788340 d!2112526))

(declare-fun m!7483604 () Bool)

(assert (=> bs!1788340 m!7483604))

(assert (=> b!6722219 d!2112526))

(declare-fun bs!1788351 () Bool)

(declare-fun d!2112528 () Bool)

(assert (= bs!1788351 (and d!2112528 d!2112522)))

(declare-fun lambda!377057 () Int)

(assert (=> bs!1788351 (= lambda!377057 lambda!377048)))

(declare-fun bs!1788352 () Bool)

(assert (= bs!1788352 (and d!2112528 d!2112524)))

(assert (=> bs!1788352 (= lambda!377057 lambda!377049)))

(declare-fun bs!1788353 () Bool)

(assert (= bs!1788353 (and d!2112528 d!2112526)))

(assert (=> bs!1788353 (= lambda!377057 lambda!377050)))

(declare-fun b!6722659 () Bool)

(declare-fun e!4061876 () Regex!16549)

(assert (=> b!6722659 (= e!4061876 (h!72270 (exprs!6433 (h!72271 zl!343))))))

(declare-fun b!6722660 () Bool)

(declare-fun e!4061880 () Regex!16549)

(assert (=> b!6722660 (= e!4061880 EmptyExpr!16549)))

(declare-fun e!4061875 () Bool)

(assert (=> d!2112528 e!4061875))

(declare-fun res!2750666 () Bool)

(assert (=> d!2112528 (=> (not res!2750666) (not e!4061875))))

(declare-fun lt!2436844 () Regex!16549)

(assert (=> d!2112528 (= res!2750666 (validRegex!8285 lt!2436844))))

(assert (=> d!2112528 (= lt!2436844 e!4061876)))

(declare-fun c!1246382 () Bool)

(declare-fun e!4061877 () Bool)

(assert (=> d!2112528 (= c!1246382 e!4061877)))

(declare-fun res!2750667 () Bool)

(assert (=> d!2112528 (=> (not res!2750667) (not e!4061877))))

(assert (=> d!2112528 (= res!2750667 ((_ is Cons!65822) (exprs!6433 (h!72271 zl!343))))))

(assert (=> d!2112528 (forall!15749 (exprs!6433 (h!72271 zl!343)) lambda!377057)))

(assert (=> d!2112528 (= (generalisedConcat!2146 (exprs!6433 (h!72271 zl!343))) lt!2436844)))

(declare-fun b!6722661 () Bool)

(declare-fun e!4061879 () Bool)

(declare-fun isEmptyExpr!1915 (Regex!16549) Bool)

(assert (=> b!6722661 (= e!4061879 (isEmptyExpr!1915 lt!2436844))))

(declare-fun b!6722662 () Bool)

(declare-fun e!4061878 () Bool)

(declare-fun isConcat!1438 (Regex!16549) Bool)

(assert (=> b!6722662 (= e!4061878 (isConcat!1438 lt!2436844))))

(declare-fun b!6722663 () Bool)

(assert (=> b!6722663 (= e!4061879 e!4061878)))

(declare-fun c!1246384 () Bool)

(declare-fun isEmpty!38149 (List!65946) Bool)

(declare-fun tail!12611 (List!65946) List!65946)

(assert (=> b!6722663 (= c!1246384 (isEmpty!38149 (tail!12611 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6722664 () Bool)

(assert (=> b!6722664 (= e!4061880 (Concat!25394 (h!72270 (exprs!6433 (h!72271 zl!343))) (generalisedConcat!2146 (t!379625 (exprs!6433 (h!72271 zl!343))))))))

(declare-fun b!6722665 () Bool)

(assert (=> b!6722665 (= e!4061875 e!4061879)))

(declare-fun c!1246383 () Bool)

(assert (=> b!6722665 (= c!1246383 (isEmpty!38149 (exprs!6433 (h!72271 zl!343))))))

(declare-fun b!6722666 () Bool)

(assert (=> b!6722666 (= e!4061876 e!4061880)))

(declare-fun c!1246381 () Bool)

(assert (=> b!6722666 (= c!1246381 ((_ is Cons!65822) (exprs!6433 (h!72271 zl!343))))))

(declare-fun b!6722667 () Bool)

(declare-fun head!13526 (List!65946) Regex!16549)

(assert (=> b!6722667 (= e!4061878 (= lt!2436844 (head!13526 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6722668 () Bool)

(assert (=> b!6722668 (= e!4061877 (isEmpty!38149 (t!379625 (exprs!6433 (h!72271 zl!343)))))))

(assert (= (and d!2112528 res!2750667) b!6722668))

(assert (= (and d!2112528 c!1246382) b!6722659))

(assert (= (and d!2112528 (not c!1246382)) b!6722666))

(assert (= (and b!6722666 c!1246381) b!6722664))

(assert (= (and b!6722666 (not c!1246381)) b!6722660))

(assert (= (and d!2112528 res!2750666) b!6722665))

(assert (= (and b!6722665 c!1246383) b!6722661))

(assert (= (and b!6722665 (not c!1246383)) b!6722663))

(assert (= (and b!6722663 c!1246384) b!6722667))

(assert (= (and b!6722663 (not c!1246384)) b!6722662))

(declare-fun m!7483638 () Bool)

(assert (=> b!6722663 m!7483638))

(assert (=> b!6722663 m!7483638))

(declare-fun m!7483640 () Bool)

(assert (=> b!6722663 m!7483640))

(declare-fun m!7483642 () Bool)

(assert (=> b!6722661 m!7483642))

(declare-fun m!7483644 () Bool)

(assert (=> b!6722662 m!7483644))

(declare-fun m!7483646 () Bool)

(assert (=> b!6722664 m!7483646))

(declare-fun m!7483648 () Bool)

(assert (=> d!2112528 m!7483648))

(declare-fun m!7483650 () Bool)

(assert (=> d!2112528 m!7483650))

(declare-fun m!7483652 () Bool)

(assert (=> b!6722668 m!7483652))

(declare-fun m!7483654 () Bool)

(assert (=> b!6722665 m!7483654))

(declare-fun m!7483656 () Bool)

(assert (=> b!6722667 m!7483656))

(assert (=> b!6722198 d!2112528))

(declare-fun bs!1788356 () Bool)

(declare-fun d!2112544 () Bool)

(assert (= bs!1788356 (and d!2112544 d!2112522)))

(declare-fun lambda!377060 () Int)

(assert (=> bs!1788356 (= lambda!377060 lambda!377048)))

(declare-fun bs!1788357 () Bool)

(assert (= bs!1788357 (and d!2112544 d!2112524)))

(assert (=> bs!1788357 (= lambda!377060 lambda!377049)))

(declare-fun bs!1788358 () Bool)

(assert (= bs!1788358 (and d!2112544 d!2112526)))

(assert (=> bs!1788358 (= lambda!377060 lambda!377050)))

(declare-fun bs!1788359 () Bool)

(assert (= bs!1788359 (and d!2112544 d!2112528)))

(assert (=> bs!1788359 (= lambda!377060 lambda!377057)))

(declare-fun b!6722748 () Bool)

(declare-fun e!4061923 () Regex!16549)

(assert (=> b!6722748 (= e!4061923 (Union!16549 (h!72270 (unfocusZipperList!1970 zl!343)) (generalisedUnion!2393 (t!379625 (unfocusZipperList!1970 zl!343)))))))

(declare-fun b!6722749 () Bool)

(declare-fun e!4061921 () Bool)

(declare-fun lt!2436850 () Regex!16549)

(assert (=> b!6722749 (= e!4061921 (= lt!2436850 (head!13526 (unfocusZipperList!1970 zl!343))))))

(declare-fun b!6722750 () Bool)

(declare-fun e!4061919 () Bool)

(assert (=> b!6722750 (= e!4061919 e!4061921)))

(declare-fun c!1246396 () Bool)

(assert (=> b!6722750 (= c!1246396 (isEmpty!38149 (tail!12611 (unfocusZipperList!1970 zl!343))))))

(declare-fun b!6722751 () Bool)

(declare-fun isUnion!1353 (Regex!16549) Bool)

(assert (=> b!6722751 (= e!4061921 (isUnion!1353 lt!2436850))))

(declare-fun b!6722752 () Bool)

(declare-fun e!4061924 () Bool)

(assert (=> b!6722752 (= e!4061924 e!4061919)))

(declare-fun c!1246397 () Bool)

(assert (=> b!6722752 (= c!1246397 (isEmpty!38149 (unfocusZipperList!1970 zl!343)))))

(declare-fun b!6722753 () Bool)

(declare-fun e!4061920 () Regex!16549)

(assert (=> b!6722753 (= e!4061920 e!4061923)))

(declare-fun c!1246398 () Bool)

(assert (=> b!6722753 (= c!1246398 ((_ is Cons!65822) (unfocusZipperList!1970 zl!343)))))

(declare-fun b!6722754 () Bool)

(assert (=> b!6722754 (= e!4061923 EmptyLang!16549)))

(declare-fun b!6722755 () Bool)

(declare-fun e!4061922 () Bool)

(assert (=> b!6722755 (= e!4061922 (isEmpty!38149 (t!379625 (unfocusZipperList!1970 zl!343))))))

(assert (=> d!2112544 e!4061924))

(declare-fun res!2750673 () Bool)

(assert (=> d!2112544 (=> (not res!2750673) (not e!4061924))))

(assert (=> d!2112544 (= res!2750673 (validRegex!8285 lt!2436850))))

(assert (=> d!2112544 (= lt!2436850 e!4061920)))

(declare-fun c!1246395 () Bool)

(assert (=> d!2112544 (= c!1246395 e!4061922)))

(declare-fun res!2750674 () Bool)

(assert (=> d!2112544 (=> (not res!2750674) (not e!4061922))))

(assert (=> d!2112544 (= res!2750674 ((_ is Cons!65822) (unfocusZipperList!1970 zl!343)))))

(assert (=> d!2112544 (forall!15749 (unfocusZipperList!1970 zl!343) lambda!377060)))

(assert (=> d!2112544 (= (generalisedUnion!2393 (unfocusZipperList!1970 zl!343)) lt!2436850)))

(declare-fun b!6722756 () Bool)

(assert (=> b!6722756 (= e!4061920 (h!72270 (unfocusZipperList!1970 zl!343)))))

(declare-fun b!6722757 () Bool)

(declare-fun isEmptyLang!1923 (Regex!16549) Bool)

(assert (=> b!6722757 (= e!4061919 (isEmptyLang!1923 lt!2436850))))

(assert (= (and d!2112544 res!2750674) b!6722755))

(assert (= (and d!2112544 c!1246395) b!6722756))

(assert (= (and d!2112544 (not c!1246395)) b!6722753))

(assert (= (and b!6722753 c!1246398) b!6722748))

(assert (= (and b!6722753 (not c!1246398)) b!6722754))

(assert (= (and d!2112544 res!2750673) b!6722752))

(assert (= (and b!6722752 c!1246397) b!6722757))

(assert (= (and b!6722752 (not c!1246397)) b!6722750))

(assert (= (and b!6722750 c!1246396) b!6722749))

(assert (= (and b!6722750 (not c!1246396)) b!6722751))

(assert (=> b!6722749 m!7483384))

(declare-fun m!7483668 () Bool)

(assert (=> b!6722749 m!7483668))

(declare-fun m!7483670 () Bool)

(assert (=> b!6722755 m!7483670))

(declare-fun m!7483672 () Bool)

(assert (=> b!6722751 m!7483672))

(assert (=> b!6722752 m!7483384))

(declare-fun m!7483674 () Bool)

(assert (=> b!6722752 m!7483674))

(declare-fun m!7483676 () Bool)

(assert (=> b!6722757 m!7483676))

(declare-fun m!7483678 () Bool)

(assert (=> d!2112544 m!7483678))

(assert (=> d!2112544 m!7483384))

(declare-fun m!7483680 () Bool)

(assert (=> d!2112544 m!7483680))

(declare-fun m!7483682 () Bool)

(assert (=> b!6722748 m!7483682))

(assert (=> b!6722750 m!7483384))

(declare-fun m!7483684 () Bool)

(assert (=> b!6722750 m!7483684))

(assert (=> b!6722750 m!7483684))

(declare-fun m!7483686 () Bool)

(assert (=> b!6722750 m!7483686))

(assert (=> b!6722217 d!2112544))

(declare-fun bs!1788360 () Bool)

(declare-fun d!2112548 () Bool)

(assert (= bs!1788360 (and d!2112548 d!2112524)))

(declare-fun lambda!377063 () Int)

(assert (=> bs!1788360 (= lambda!377063 lambda!377049)))

(declare-fun bs!1788361 () Bool)

(assert (= bs!1788361 (and d!2112548 d!2112544)))

(assert (=> bs!1788361 (= lambda!377063 lambda!377060)))

(declare-fun bs!1788362 () Bool)

(assert (= bs!1788362 (and d!2112548 d!2112526)))

(assert (=> bs!1788362 (= lambda!377063 lambda!377050)))

(declare-fun bs!1788363 () Bool)

(assert (= bs!1788363 (and d!2112548 d!2112528)))

(assert (=> bs!1788363 (= lambda!377063 lambda!377057)))

(declare-fun bs!1788364 () Bool)

(assert (= bs!1788364 (and d!2112548 d!2112522)))

(assert (=> bs!1788364 (= lambda!377063 lambda!377048)))

(declare-fun lt!2436853 () List!65946)

(assert (=> d!2112548 (forall!15749 lt!2436853 lambda!377063)))

(declare-fun e!4061927 () List!65946)

(assert (=> d!2112548 (= lt!2436853 e!4061927)))

(declare-fun c!1246401 () Bool)

(assert (=> d!2112548 (= c!1246401 ((_ is Cons!65823) zl!343))))

(assert (=> d!2112548 (= (unfocusZipperList!1970 zl!343) lt!2436853)))

(declare-fun b!6722762 () Bool)

(assert (=> b!6722762 (= e!4061927 (Cons!65822 (generalisedConcat!2146 (exprs!6433 (h!72271 zl!343))) (unfocusZipperList!1970 (t!379626 zl!343))))))

(declare-fun b!6722763 () Bool)

(assert (=> b!6722763 (= e!4061927 Nil!65822)))

(assert (= (and d!2112548 c!1246401) b!6722762))

(assert (= (and d!2112548 (not c!1246401)) b!6722763))

(declare-fun m!7483688 () Bool)

(assert (=> d!2112548 m!7483688))

(assert (=> b!6722762 m!7483406))

(declare-fun m!7483690 () Bool)

(assert (=> b!6722762 m!7483690))

(assert (=> b!6722217 d!2112548))

(declare-fun d!2112550 () Bool)

(declare-fun lt!2436856 () Regex!16549)

(assert (=> d!2112550 (validRegex!8285 lt!2436856)))

(assert (=> d!2112550 (= lt!2436856 (generalisedUnion!2393 (unfocusZipperList!1970 zl!343)))))

(assert (=> d!2112550 (= (unfocusZipper!2291 zl!343) lt!2436856)))

(declare-fun bs!1788365 () Bool)

(assert (= bs!1788365 d!2112550))

(declare-fun m!7483692 () Bool)

(assert (=> bs!1788365 m!7483692))

(assert (=> bs!1788365 m!7483384))

(assert (=> bs!1788365 m!7483384))

(assert (=> bs!1788365 m!7483386))

(assert (=> b!6722218 d!2112550))

(declare-fun bm!606885 () Bool)

(declare-fun call!606891 () Bool)

(declare-fun call!606890 () Bool)

(assert (=> bm!606885 (= call!606891 call!606890)))

(declare-fun bm!606886 () Bool)

(declare-fun call!606892 () Bool)

(declare-fun c!1246406 () Bool)

(assert (=> bm!606886 (= call!606892 (validRegex!8285 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(declare-fun c!1246407 () Bool)

(declare-fun bm!606887 () Bool)

(assert (=> bm!606887 (= call!606890 (validRegex!8285 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))))))

(declare-fun b!6722782 () Bool)

(declare-fun e!4061944 () Bool)

(declare-fun e!4061948 () Bool)

(assert (=> b!6722782 (= e!4061944 e!4061948)))

(assert (=> b!6722782 (= c!1246406 ((_ is Union!16549) r!7292))))

(declare-fun b!6722783 () Bool)

(declare-fun e!4061945 () Bool)

(assert (=> b!6722783 (= e!4061945 call!606890)))

(declare-fun b!6722784 () Bool)

(declare-fun res!2750688 () Bool)

(declare-fun e!4061946 () Bool)

(assert (=> b!6722784 (=> (not res!2750688) (not e!4061946))))

(assert (=> b!6722784 (= res!2750688 call!606892)))

(assert (=> b!6722784 (= e!4061948 e!4061946)))

(declare-fun b!6722785 () Bool)

(declare-fun e!4061942 () Bool)

(assert (=> b!6722785 (= e!4061942 e!4061944)))

(assert (=> b!6722785 (= c!1246407 ((_ is Star!16549) r!7292))))

(declare-fun b!6722786 () Bool)

(declare-fun res!2750689 () Bool)

(declare-fun e!4061947 () Bool)

(assert (=> b!6722786 (=> res!2750689 e!4061947)))

(assert (=> b!6722786 (= res!2750689 (not ((_ is Concat!25394) r!7292)))))

(assert (=> b!6722786 (= e!4061948 e!4061947)))

(declare-fun b!6722788 () Bool)

(declare-fun e!4061943 () Bool)

(assert (=> b!6722788 (= e!4061947 e!4061943)))

(declare-fun res!2750687 () Bool)

(assert (=> b!6722788 (=> (not res!2750687) (not e!4061943))))

(assert (=> b!6722788 (= res!2750687 call!606892)))

(declare-fun b!6722789 () Bool)

(assert (=> b!6722789 (= e!4061946 call!606891)))

(declare-fun b!6722790 () Bool)

(assert (=> b!6722790 (= e!4061943 call!606891)))

(declare-fun d!2112552 () Bool)

(declare-fun res!2750685 () Bool)

(assert (=> d!2112552 (=> res!2750685 e!4061942)))

(assert (=> d!2112552 (= res!2750685 ((_ is ElementMatch!16549) r!7292))))

(assert (=> d!2112552 (= (validRegex!8285 r!7292) e!4061942)))

(declare-fun b!6722787 () Bool)

(assert (=> b!6722787 (= e!4061944 e!4061945)))

(declare-fun res!2750686 () Bool)

(assert (=> b!6722787 (= res!2750686 (not (nullable!6536 (reg!16878 r!7292))))))

(assert (=> b!6722787 (=> (not res!2750686) (not e!4061945))))

(assert (= (and d!2112552 (not res!2750685)) b!6722785))

(assert (= (and b!6722785 c!1246407) b!6722787))

(assert (= (and b!6722785 (not c!1246407)) b!6722782))

(assert (= (and b!6722787 res!2750686) b!6722783))

(assert (= (and b!6722782 c!1246406) b!6722784))

(assert (= (and b!6722782 (not c!1246406)) b!6722786))

(assert (= (and b!6722784 res!2750688) b!6722789))

(assert (= (and b!6722786 (not res!2750689)) b!6722788))

(assert (= (and b!6722788 res!2750687) b!6722790))

(assert (= (or b!6722789 b!6722790) bm!606885))

(assert (= (or b!6722784 b!6722788) bm!606886))

(assert (= (or b!6722783 bm!606885) bm!606887))

(declare-fun m!7483694 () Bool)

(assert (=> bm!606886 m!7483694))

(declare-fun m!7483696 () Bool)

(assert (=> bm!606887 m!7483696))

(declare-fun m!7483698 () Bool)

(assert (=> b!6722787 m!7483698))

(assert (=> start!651784 d!2112552))

(declare-fun bs!1788366 () Bool)

(declare-fun d!2112554 () Bool)

(assert (= bs!1788366 (and d!2112554 b!6722201)))

(declare-fun lambda!377066 () Int)

(assert (=> bs!1788366 (= lambda!377066 lambda!377005)))

(assert (=> d!2112554 true))

(assert (=> d!2112554 (= (derivationStepZipper!2493 z!1189 (h!72272 s!2326)) (flatMap!2030 z!1189 lambda!377066))))

(declare-fun bs!1788367 () Bool)

(assert (= bs!1788367 d!2112554))

(declare-fun m!7483700 () Bool)

(assert (=> bs!1788367 m!7483700))

(assert (=> b!6722201 d!2112554))

(declare-fun d!2112556 () Bool)

(declare-fun choose!50082 ((InoxSet Context!11866) Int) (InoxSet Context!11866))

(assert (=> d!2112556 (= (flatMap!2030 z!1189 lambda!377005) (choose!50082 z!1189 lambda!377005))))

(declare-fun bs!1788368 () Bool)

(assert (= bs!1788368 d!2112556))

(declare-fun m!7483702 () Bool)

(assert (=> bs!1788368 m!7483702))

(assert (=> b!6722201 d!2112556))

(declare-fun b!6722793 () Bool)

(declare-fun e!4061950 () (InoxSet Context!11866))

(declare-fun e!4061951 () (InoxSet Context!11866))

(assert (=> b!6722793 (= e!4061950 e!4061951)))

(declare-fun c!1246410 () Bool)

(assert (=> b!6722793 (= c!1246410 ((_ is Cons!65822) (exprs!6433 (h!72271 zl!343))))))

(declare-fun bm!606888 () Bool)

(declare-fun call!606893 () (InoxSet Context!11866))

(assert (=> bm!606888 (= call!606893 (derivationStepZipperDown!1777 (h!72270 (exprs!6433 (h!72271 zl!343))) (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))) (h!72272 s!2326)))))

(declare-fun d!2112558 () Bool)

(declare-fun c!1246411 () Bool)

(declare-fun e!4061949 () Bool)

(assert (=> d!2112558 (= c!1246411 e!4061949)))

(declare-fun res!2750690 () Bool)

(assert (=> d!2112558 (=> (not res!2750690) (not e!4061949))))

(assert (=> d!2112558 (= res!2750690 ((_ is Cons!65822) (exprs!6433 (h!72271 zl!343))))))

(assert (=> d!2112558 (= (derivationStepZipperUp!1703 (h!72271 zl!343) (h!72272 s!2326)) e!4061950)))

(declare-fun b!6722794 () Bool)

(assert (=> b!6722794 (= e!4061951 call!606893)))

(declare-fun b!6722795 () Bool)

(assert (=> b!6722795 (= e!4061950 ((_ map or) call!606893 (derivationStepZipperUp!1703 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))) (h!72272 s!2326))))))

(declare-fun b!6722796 () Bool)

(assert (=> b!6722796 (= e!4061951 ((as const (Array Context!11866 Bool)) false))))

(declare-fun b!6722797 () Bool)

(assert (=> b!6722797 (= e!4061949 (nullable!6536 (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(assert (= (and d!2112558 res!2750690) b!6722797))

(assert (= (and d!2112558 c!1246411) b!6722795))

(assert (= (and d!2112558 (not c!1246411)) b!6722793))

(assert (= (and b!6722793 c!1246410) b!6722794))

(assert (= (and b!6722793 (not c!1246410)) b!6722796))

(assert (= (or b!6722795 b!6722794) bm!606888))

(declare-fun m!7483704 () Bool)

(assert (=> bm!606888 m!7483704))

(declare-fun m!7483706 () Bool)

(assert (=> b!6722795 m!7483706))

(declare-fun m!7483708 () Bool)

(assert (=> b!6722797 m!7483708))

(assert (=> b!6722201 d!2112558))

(declare-fun d!2112560 () Bool)

(declare-fun dynLambda!26248 (Int Context!11866) (InoxSet Context!11866))

(assert (=> d!2112560 (= (flatMap!2030 z!1189 lambda!377005) (dynLambda!26248 lambda!377005 (h!72271 zl!343)))))

(declare-fun lt!2436859 () Unit!159789)

(declare-fun choose!50083 ((InoxSet Context!11866) Context!11866 Int) Unit!159789)

(assert (=> d!2112560 (= lt!2436859 (choose!50083 z!1189 (h!72271 zl!343) lambda!377005))))

(assert (=> d!2112560 (= z!1189 (store ((as const (Array Context!11866 Bool)) false) (h!72271 zl!343) true))))

(assert (=> d!2112560 (= (lemmaFlatMapOnSingletonSet!1556 z!1189 (h!72271 zl!343) lambda!377005) lt!2436859)))

(declare-fun b_lambda!253087 () Bool)

(assert (=> (not b_lambda!253087) (not d!2112560)))

(declare-fun bs!1788369 () Bool)

(assert (= bs!1788369 d!2112560))

(assert (=> bs!1788369 m!7483394))

(declare-fun m!7483710 () Bool)

(assert (=> bs!1788369 m!7483710))

(declare-fun m!7483712 () Bool)

(assert (=> bs!1788369 m!7483712))

(declare-fun m!7483714 () Bool)

(assert (=> bs!1788369 m!7483714))

(assert (=> b!6722201 d!2112560))

(declare-fun d!2112562 () Bool)

(declare-fun e!4061954 () Bool)

(assert (=> d!2112562 e!4061954))

(declare-fun res!2750693 () Bool)

(assert (=> d!2112562 (=> (not res!2750693) (not e!4061954))))

(declare-fun lt!2436862 () List!65947)

(declare-fun noDuplicate!2342 (List!65947) Bool)

(assert (=> d!2112562 (= res!2750693 (noDuplicate!2342 lt!2436862))))

(declare-fun choose!50084 ((InoxSet Context!11866)) List!65947)

(assert (=> d!2112562 (= lt!2436862 (choose!50084 z!1189))))

(assert (=> d!2112562 (= (toList!10333 z!1189) lt!2436862)))

(declare-fun b!6722800 () Bool)

(declare-fun content!12767 (List!65947) (InoxSet Context!11866))

(assert (=> b!6722800 (= e!4061954 (= (content!12767 lt!2436862) z!1189))))

(assert (= (and d!2112562 res!2750693) b!6722800))

(declare-fun m!7483716 () Bool)

(assert (=> d!2112562 m!7483716))

(declare-fun m!7483718 () Bool)

(assert (=> d!2112562 m!7483718))

(declare-fun m!7483720 () Bool)

(assert (=> b!6722800 m!7483720))

(assert (=> b!6722212 d!2112562))

(declare-fun d!2112564 () Bool)

(declare-fun isEmpty!38150 (Option!16436) Bool)

(assert (=> d!2112564 (= (isDefined!13139 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326)) (not (isEmpty!38150 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326))))))

(declare-fun bs!1788370 () Bool)

(assert (= bs!1788370 d!2112564))

(assert (=> bs!1788370 m!7483430))

(declare-fun m!7483722 () Bool)

(assert (=> bs!1788370 m!7483722))

(assert (=> b!6722210 d!2112564))

(declare-fun bs!1788371 () Bool)

(declare-fun d!2112566 () Bool)

(assert (= bs!1788371 (and d!2112566 b!6722470)))

(declare-fun lambda!377071 () Int)

(assert (=> bs!1788371 (not (= lambda!377071 lambda!377035))))

(declare-fun bs!1788372 () Bool)

(assert (= bs!1788372 (and d!2112566 b!6722210)))

(assert (=> bs!1788372 (= lambda!377071 lambda!377002)))

(assert (=> bs!1788372 (not (= lambda!377071 lambda!377004))))

(assert (=> bs!1788372 (not (= lambda!377071 lambda!377003))))

(declare-fun bs!1788373 () Bool)

(assert (= bs!1788373 (and d!2112566 b!6722474)))

(assert (=> bs!1788373 (not (= lambda!377071 lambda!377034))))

(assert (=> d!2112566 true))

(assert (=> d!2112566 true))

(assert (=> d!2112566 true))

(declare-fun lambda!377072 () Int)

(assert (=> bs!1788372 (not (= lambda!377072 lambda!377002))))

(assert (=> bs!1788372 (= lambda!377072 lambda!377004)))

(assert (=> bs!1788372 (not (= lambda!377072 lambda!377003))))

(assert (=> bs!1788373 (not (= lambda!377072 lambda!377034))))

(assert (=> bs!1788371 (= (and (= (reg!16878 r!7292) (regOne!33610 r!7292)) (= r!7292 (regTwo!33610 r!7292))) (= lambda!377072 lambda!377035))))

(declare-fun bs!1788374 () Bool)

(assert (= bs!1788374 d!2112566))

(assert (=> bs!1788374 (not (= lambda!377072 lambda!377071))))

(assert (=> d!2112566 true))

(assert (=> d!2112566 true))

(assert (=> d!2112566 true))

(assert (=> d!2112566 (= (Exists!3617 lambda!377071) (Exists!3617 lambda!377072))))

(declare-fun lt!2436865 () Unit!159789)

(declare-fun choose!50085 (Regex!16549 Regex!16549 List!65948) Unit!159789)

(assert (=> d!2112566 (= lt!2436865 (choose!50085 (reg!16878 r!7292) r!7292 s!2326))))

(assert (=> d!2112566 (validRegex!8285 (reg!16878 r!7292))))

(assert (=> d!2112566 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2144 (reg!16878 r!7292) r!7292 s!2326) lt!2436865)))

(declare-fun m!7483724 () Bool)

(assert (=> bs!1788374 m!7483724))

(declare-fun m!7483726 () Bool)

(assert (=> bs!1788374 m!7483726))

(declare-fun m!7483728 () Bool)

(assert (=> bs!1788374 m!7483728))

(declare-fun m!7483730 () Bool)

(assert (=> bs!1788374 m!7483730))

(assert (=> b!6722210 d!2112566))

(declare-fun bs!1788375 () Bool)

(declare-fun d!2112568 () Bool)

(assert (= bs!1788375 (and d!2112568 b!6722210)))

(declare-fun lambda!377077 () Int)

(assert (=> bs!1788375 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377077 lambda!377002))))

(assert (=> bs!1788375 (not (= lambda!377077 lambda!377004))))

(assert (=> bs!1788375 (not (= lambda!377077 lambda!377003))))

(declare-fun bs!1788376 () Bool)

(assert (= bs!1788376 (and d!2112568 b!6722470)))

(assert (=> bs!1788376 (not (= lambda!377077 lambda!377035))))

(declare-fun bs!1788377 () Bool)

(assert (= bs!1788377 (and d!2112568 d!2112566)))

(assert (=> bs!1788377 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377077 lambda!377071))))

(declare-fun bs!1788378 () Bool)

(assert (= bs!1788378 (and d!2112568 b!6722474)))

(assert (=> bs!1788378 (not (= lambda!377077 lambda!377034))))

(assert (=> bs!1788377 (not (= lambda!377077 lambda!377072))))

(assert (=> d!2112568 true))

(assert (=> d!2112568 true))

(declare-fun lambda!377078 () Int)

(assert (=> bs!1788375 (not (= lambda!377078 lambda!377002))))

(assert (=> bs!1788375 (not (= lambda!377078 lambda!377004))))

(assert (=> bs!1788375 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377078 lambda!377003))))

(declare-fun bs!1788379 () Bool)

(assert (= bs!1788379 d!2112568))

(assert (=> bs!1788379 (not (= lambda!377078 lambda!377077))))

(assert (=> bs!1788376 (not (= lambda!377078 lambda!377035))))

(assert (=> bs!1788377 (not (= lambda!377078 lambda!377071))))

(assert (=> bs!1788378 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377078 lambda!377034))))

(assert (=> bs!1788377 (not (= lambda!377078 lambda!377072))))

(assert (=> d!2112568 true))

(assert (=> d!2112568 true))

(assert (=> d!2112568 (= (Exists!3617 lambda!377077) (Exists!3617 lambda!377078))))

(declare-fun lt!2436868 () Unit!159789)

(declare-fun choose!50086 (Regex!16549 List!65948) Unit!159789)

(assert (=> d!2112568 (= lt!2436868 (choose!50086 (reg!16878 r!7292) s!2326))))

(assert (=> d!2112568 (validRegex!8285 (reg!16878 r!7292))))

(assert (=> d!2112568 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!708 (reg!16878 r!7292) s!2326) lt!2436868)))

(declare-fun m!7483732 () Bool)

(assert (=> bs!1788379 m!7483732))

(declare-fun m!7483734 () Bool)

(assert (=> bs!1788379 m!7483734))

(declare-fun m!7483736 () Bool)

(assert (=> bs!1788379 m!7483736))

(assert (=> bs!1788379 m!7483730))

(assert (=> b!6722210 d!2112568))

(declare-fun d!2112570 () Bool)

(declare-fun choose!50087 (Int) Bool)

(assert (=> d!2112570 (= (Exists!3617 lambda!377003) (choose!50087 lambda!377003))))

(declare-fun bs!1788380 () Bool)

(assert (= bs!1788380 d!2112570))

(declare-fun m!7483738 () Bool)

(assert (=> bs!1788380 m!7483738))

(assert (=> b!6722210 d!2112570))

(declare-fun d!2112572 () Bool)

(assert (=> d!2112572 (= (Exists!3617 lambda!377002) (choose!50087 lambda!377002))))

(declare-fun bs!1788381 () Bool)

(assert (= bs!1788381 d!2112572))

(declare-fun m!7483740 () Bool)

(assert (=> bs!1788381 m!7483740))

(assert (=> b!6722210 d!2112572))

(declare-fun d!2112574 () Bool)

(assert (=> d!2112574 (= (Exists!3617 lambda!377004) (choose!50087 lambda!377004))))

(declare-fun bs!1788382 () Bool)

(assert (= bs!1788382 d!2112574))

(declare-fun m!7483742 () Bool)

(assert (=> bs!1788382 m!7483742))

(assert (=> b!6722210 d!2112574))

(declare-fun d!2112576 () Bool)

(assert (=> d!2112576 (= (isEmpty!38146 s!2326) ((_ is Nil!65824) s!2326))))

(assert (=> b!6722210 d!2112576))

(declare-fun b!6722837 () Bool)

(declare-fun res!2750723 () Bool)

(declare-fun e!4061976 () Bool)

(assert (=> b!6722837 (=> (not res!2750723) (not e!4061976))))

(declare-fun lt!2436875 () Option!16436)

(declare-fun get!22895 (Option!16436) tuple2!67048)

(assert (=> b!6722837 (= res!2750723 (matchR!8732 (reg!16878 r!7292) (_1!36827 (get!22895 lt!2436875))))))

(declare-fun b!6722838 () Bool)

(declare-fun e!4061974 () Bool)

(assert (=> b!6722838 (= e!4061974 (not (isDefined!13139 lt!2436875)))))

(declare-fun b!6722839 () Bool)

(declare-fun e!4061973 () Option!16436)

(assert (=> b!6722839 (= e!4061973 (Some!16435 (tuple2!67049 Nil!65824 s!2326)))))

(declare-fun b!6722840 () Bool)

(declare-fun e!4061977 () Option!16436)

(assert (=> b!6722840 (= e!4061973 e!4061977)))

(declare-fun c!1246416 () Bool)

(assert (=> b!6722840 (= c!1246416 ((_ is Nil!65824) s!2326))))

(declare-fun b!6722841 () Bool)

(declare-fun ++!14705 (List!65948 List!65948) List!65948)

(assert (=> b!6722841 (= e!4061976 (= (++!14705 (_1!36827 (get!22895 lt!2436875)) (_2!36827 (get!22895 lt!2436875))) s!2326))))

(declare-fun d!2112578 () Bool)

(assert (=> d!2112578 e!4061974))

(declare-fun res!2750724 () Bool)

(assert (=> d!2112578 (=> res!2750724 e!4061974)))

(assert (=> d!2112578 (= res!2750724 e!4061976)))

(declare-fun res!2750722 () Bool)

(assert (=> d!2112578 (=> (not res!2750722) (not e!4061976))))

(assert (=> d!2112578 (= res!2750722 (isDefined!13139 lt!2436875))))

(assert (=> d!2112578 (= lt!2436875 e!4061973)))

(declare-fun c!1246417 () Bool)

(declare-fun e!4061975 () Bool)

(assert (=> d!2112578 (= c!1246417 e!4061975)))

(declare-fun res!2750726 () Bool)

(assert (=> d!2112578 (=> (not res!2750726) (not e!4061975))))

(assert (=> d!2112578 (= res!2750726 (matchR!8732 (reg!16878 r!7292) Nil!65824))))

(assert (=> d!2112578 (validRegex!8285 (reg!16878 r!7292))))

(assert (=> d!2112578 (= (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326) lt!2436875)))

(declare-fun b!6722842 () Bool)

(assert (=> b!6722842 (= e!4061975 (matchR!8732 r!7292 s!2326))))

(declare-fun b!6722843 () Bool)

(declare-fun res!2750725 () Bool)

(assert (=> b!6722843 (=> (not res!2750725) (not e!4061976))))

(assert (=> b!6722843 (= res!2750725 (matchR!8732 r!7292 (_2!36827 (get!22895 lt!2436875))))))

(declare-fun b!6722844 () Bool)

(assert (=> b!6722844 (= e!4061977 None!16435)))

(declare-fun b!6722845 () Bool)

(declare-fun lt!2436877 () Unit!159789)

(declare-fun lt!2436876 () Unit!159789)

(assert (=> b!6722845 (= lt!2436877 lt!2436876)))

(assert (=> b!6722845 (= (++!14705 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (t!379627 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2678 (List!65948 C!33368 List!65948 List!65948) Unit!159789)

(assert (=> b!6722845 (= lt!2436876 (lemmaMoveElementToOtherListKeepsConcatEq!2678 Nil!65824 (h!72272 s!2326) (t!379627 s!2326) s!2326))))

(assert (=> b!6722845 (= e!4061977 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (t!379627 s!2326) s!2326))))

(assert (= (and d!2112578 res!2750726) b!6722842))

(assert (= (and d!2112578 c!1246417) b!6722839))

(assert (= (and d!2112578 (not c!1246417)) b!6722840))

(assert (= (and b!6722840 c!1246416) b!6722844))

(assert (= (and b!6722840 (not c!1246416)) b!6722845))

(assert (= (and d!2112578 res!2750722) b!6722837))

(assert (= (and b!6722837 res!2750723) b!6722843))

(assert (= (and b!6722843 res!2750725) b!6722841))

(assert (= (and d!2112578 (not res!2750724)) b!6722838))

(declare-fun m!7483744 () Bool)

(assert (=> d!2112578 m!7483744))

(declare-fun m!7483746 () Bool)

(assert (=> d!2112578 m!7483746))

(assert (=> d!2112578 m!7483730))

(assert (=> b!6722842 m!7483402))

(declare-fun m!7483748 () Bool)

(assert (=> b!6722845 m!7483748))

(assert (=> b!6722845 m!7483748))

(declare-fun m!7483750 () Bool)

(assert (=> b!6722845 m!7483750))

(declare-fun m!7483752 () Bool)

(assert (=> b!6722845 m!7483752))

(assert (=> b!6722845 m!7483748))

(declare-fun m!7483754 () Bool)

(assert (=> b!6722845 m!7483754))

(declare-fun m!7483756 () Bool)

(assert (=> b!6722841 m!7483756))

(declare-fun m!7483758 () Bool)

(assert (=> b!6722841 m!7483758))

(assert (=> b!6722838 m!7483744))

(assert (=> b!6722843 m!7483756))

(declare-fun m!7483760 () Bool)

(assert (=> b!6722843 m!7483760))

(assert (=> b!6722837 m!7483756))

(declare-fun m!7483762 () Bool)

(assert (=> b!6722837 m!7483762))

(assert (=> b!6722210 d!2112578))

(declare-fun bs!1788383 () Bool)

(declare-fun d!2112580 () Bool)

(assert (= bs!1788383 (and d!2112580 b!6722210)))

(declare-fun lambda!377081 () Int)

(assert (=> bs!1788383 (= lambda!377081 lambda!377002)))

(assert (=> bs!1788383 (not (= lambda!377081 lambda!377004))))

(assert (=> bs!1788383 (not (= lambda!377081 lambda!377003))))

(declare-fun bs!1788384 () Bool)

(assert (= bs!1788384 (and d!2112580 d!2112568)))

(assert (=> bs!1788384 (not (= lambda!377081 lambda!377078))))

(assert (=> bs!1788384 (= (= r!7292 (Star!16549 (reg!16878 r!7292))) (= lambda!377081 lambda!377077))))

(declare-fun bs!1788385 () Bool)

(assert (= bs!1788385 (and d!2112580 b!6722470)))

(assert (=> bs!1788385 (not (= lambda!377081 lambda!377035))))

(declare-fun bs!1788386 () Bool)

(assert (= bs!1788386 (and d!2112580 d!2112566)))

(assert (=> bs!1788386 (= lambda!377081 lambda!377071)))

(declare-fun bs!1788387 () Bool)

(assert (= bs!1788387 (and d!2112580 b!6722474)))

(assert (=> bs!1788387 (not (= lambda!377081 lambda!377034))))

(assert (=> bs!1788386 (not (= lambda!377081 lambda!377072))))

(assert (=> d!2112580 true))

(assert (=> d!2112580 true))

(assert (=> d!2112580 true))

(assert (=> d!2112580 (= (isDefined!13139 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326)) (Exists!3617 lambda!377081))))

(declare-fun lt!2436880 () Unit!159789)

(declare-fun choose!50088 (Regex!16549 Regex!16549 List!65948) Unit!159789)

(assert (=> d!2112580 (= lt!2436880 (choose!50088 (reg!16878 r!7292) r!7292 s!2326))))

(assert (=> d!2112580 (validRegex!8285 (reg!16878 r!7292))))

(assert (=> d!2112580 (= (lemmaFindConcatSeparationEquivalentToExists!2614 (reg!16878 r!7292) r!7292 s!2326) lt!2436880)))

(declare-fun bs!1788388 () Bool)

(assert (= bs!1788388 d!2112580))

(assert (=> bs!1788388 m!7483430))

(declare-fun m!7483764 () Bool)

(assert (=> bs!1788388 m!7483764))

(assert (=> bs!1788388 m!7483730))

(assert (=> bs!1788388 m!7483430))

(assert (=> bs!1788388 m!7483434))

(declare-fun m!7483766 () Bool)

(assert (=> bs!1788388 m!7483766))

(assert (=> b!6722210 d!2112580))

(declare-fun b!6722854 () Bool)

(declare-fun e!4061982 () Bool)

(declare-fun tp!1843222 () Bool)

(assert (=> b!6722854 (= e!4061982 (and tp_is_empty!42351 tp!1843222))))

(assert (=> b!6722215 (= tp!1843159 e!4061982)))

(assert (= (and b!6722215 ((_ is Cons!65824) (t!379627 s!2326))) b!6722854))

(declare-fun condSetEmpty!45821 () Bool)

(assert (=> setNonEmpty!45815 (= condSetEmpty!45821 (= setRest!45815 ((as const (Array Context!11866 Bool)) false)))))

(declare-fun setRes!45821 () Bool)

(assert (=> setNonEmpty!45815 (= tp!1843153 setRes!45821)))

(declare-fun setIsEmpty!45821 () Bool)

(assert (=> setIsEmpty!45821 setRes!45821))

(declare-fun tp!1843228 () Bool)

(declare-fun setElem!45821 () Context!11866)

(declare-fun e!4061985 () Bool)

(declare-fun setNonEmpty!45821 () Bool)

(assert (=> setNonEmpty!45821 (= setRes!45821 (and tp!1843228 (inv!84619 setElem!45821) e!4061985))))

(declare-fun setRest!45821 () (InoxSet Context!11866))

(assert (=> setNonEmpty!45821 (= setRest!45815 ((_ map or) (store ((as const (Array Context!11866 Bool)) false) setElem!45821 true) setRest!45821))))

(declare-fun b!6722859 () Bool)

(declare-fun tp!1843227 () Bool)

(assert (=> b!6722859 (= e!4061985 tp!1843227)))

(assert (= (and setNonEmpty!45815 condSetEmpty!45821) setIsEmpty!45821))

(assert (= (and setNonEmpty!45815 (not condSetEmpty!45821)) setNonEmpty!45821))

(assert (= setNonEmpty!45821 b!6722859))

(declare-fun m!7483768 () Bool)

(assert (=> setNonEmpty!45821 m!7483768))

(declare-fun b!6722867 () Bool)

(declare-fun e!4061991 () Bool)

(declare-fun tp!1843233 () Bool)

(assert (=> b!6722867 (= e!4061991 tp!1843233)))

(declare-fun e!4061990 () Bool)

(declare-fun b!6722866 () Bool)

(declare-fun tp!1843234 () Bool)

(assert (=> b!6722866 (= e!4061990 (and (inv!84619 (h!72271 (t!379626 zl!343))) e!4061991 tp!1843234))))

(assert (=> b!6722219 (= tp!1843152 e!4061990)))

(assert (= b!6722866 b!6722867))

(assert (= (and b!6722219 ((_ is Cons!65823) (t!379626 zl!343))) b!6722866))

(declare-fun m!7483770 () Bool)

(assert (=> b!6722866 m!7483770))

(declare-fun b!6722872 () Bool)

(declare-fun e!4061994 () Bool)

(declare-fun tp!1843239 () Bool)

(declare-fun tp!1843240 () Bool)

(assert (=> b!6722872 (= e!4061994 (and tp!1843239 tp!1843240))))

(assert (=> b!6722203 (= tp!1843157 e!4061994)))

(assert (= (and b!6722203 ((_ is Cons!65822) (exprs!6433 setElem!45815))) b!6722872))

(declare-fun b!6722884 () Bool)

(declare-fun e!4061997 () Bool)

(declare-fun tp!1843252 () Bool)

(declare-fun tp!1843255 () Bool)

(assert (=> b!6722884 (= e!4061997 (and tp!1843252 tp!1843255))))

(assert (=> b!6722208 (= tp!1843155 e!4061997)))

(declare-fun b!6722883 () Bool)

(assert (=> b!6722883 (= e!4061997 tp_is_empty!42351)))

(declare-fun b!6722885 () Bool)

(declare-fun tp!1843251 () Bool)

(assert (=> b!6722885 (= e!4061997 tp!1843251)))

(declare-fun b!6722886 () Bool)

(declare-fun tp!1843253 () Bool)

(declare-fun tp!1843254 () Bool)

(assert (=> b!6722886 (= e!4061997 (and tp!1843253 tp!1843254))))

(assert (= (and b!6722208 ((_ is ElementMatch!16549) (regOne!33611 r!7292))) b!6722883))

(assert (= (and b!6722208 ((_ is Concat!25394) (regOne!33611 r!7292))) b!6722884))

(assert (= (and b!6722208 ((_ is Star!16549) (regOne!33611 r!7292))) b!6722885))

(assert (= (and b!6722208 ((_ is Union!16549) (regOne!33611 r!7292))) b!6722886))

(declare-fun b!6722888 () Bool)

(declare-fun e!4061998 () Bool)

(declare-fun tp!1843257 () Bool)

(declare-fun tp!1843260 () Bool)

(assert (=> b!6722888 (= e!4061998 (and tp!1843257 tp!1843260))))

(assert (=> b!6722208 (= tp!1843160 e!4061998)))

(declare-fun b!6722887 () Bool)

(assert (=> b!6722887 (= e!4061998 tp_is_empty!42351)))

(declare-fun b!6722889 () Bool)

(declare-fun tp!1843256 () Bool)

(assert (=> b!6722889 (= e!4061998 tp!1843256)))

(declare-fun b!6722890 () Bool)

(declare-fun tp!1843258 () Bool)

(declare-fun tp!1843259 () Bool)

(assert (=> b!6722890 (= e!4061998 (and tp!1843258 tp!1843259))))

(assert (= (and b!6722208 ((_ is ElementMatch!16549) (regTwo!33611 r!7292))) b!6722887))

(assert (= (and b!6722208 ((_ is Concat!25394) (regTwo!33611 r!7292))) b!6722888))

(assert (= (and b!6722208 ((_ is Star!16549) (regTwo!33611 r!7292))) b!6722889))

(assert (= (and b!6722208 ((_ is Union!16549) (regTwo!33611 r!7292))) b!6722890))

(declare-fun b!6722891 () Bool)

(declare-fun e!4061999 () Bool)

(declare-fun tp!1843261 () Bool)

(declare-fun tp!1843262 () Bool)

(assert (=> b!6722891 (= e!4061999 (and tp!1843261 tp!1843262))))

(assert (=> b!6722206 (= tp!1843158 e!4061999)))

(assert (= (and b!6722206 ((_ is Cons!65822) (exprs!6433 (h!72271 zl!343)))) b!6722891))

(declare-fun b!6722893 () Bool)

(declare-fun e!4062000 () Bool)

(declare-fun tp!1843264 () Bool)

(declare-fun tp!1843267 () Bool)

(assert (=> b!6722893 (= e!4062000 (and tp!1843264 tp!1843267))))

(assert (=> b!6722205 (= tp!1843161 e!4062000)))

(declare-fun b!6722892 () Bool)

(assert (=> b!6722892 (= e!4062000 tp_is_empty!42351)))

(declare-fun b!6722894 () Bool)

(declare-fun tp!1843263 () Bool)

(assert (=> b!6722894 (= e!4062000 tp!1843263)))

(declare-fun b!6722895 () Bool)

(declare-fun tp!1843265 () Bool)

(declare-fun tp!1843266 () Bool)

(assert (=> b!6722895 (= e!4062000 (and tp!1843265 tp!1843266))))

(assert (= (and b!6722205 ((_ is ElementMatch!16549) (regOne!33610 r!7292))) b!6722892))

(assert (= (and b!6722205 ((_ is Concat!25394) (regOne!33610 r!7292))) b!6722893))

(assert (= (and b!6722205 ((_ is Star!16549) (regOne!33610 r!7292))) b!6722894))

(assert (= (and b!6722205 ((_ is Union!16549) (regOne!33610 r!7292))) b!6722895))

(declare-fun b!6722897 () Bool)

(declare-fun e!4062001 () Bool)

(declare-fun tp!1843269 () Bool)

(declare-fun tp!1843272 () Bool)

(assert (=> b!6722897 (= e!4062001 (and tp!1843269 tp!1843272))))

(assert (=> b!6722205 (= tp!1843154 e!4062001)))

(declare-fun b!6722896 () Bool)

(assert (=> b!6722896 (= e!4062001 tp_is_empty!42351)))

(declare-fun b!6722898 () Bool)

(declare-fun tp!1843268 () Bool)

(assert (=> b!6722898 (= e!4062001 tp!1843268)))

(declare-fun b!6722899 () Bool)

(declare-fun tp!1843270 () Bool)

(declare-fun tp!1843271 () Bool)

(assert (=> b!6722899 (= e!4062001 (and tp!1843270 tp!1843271))))

(assert (= (and b!6722205 ((_ is ElementMatch!16549) (regTwo!33610 r!7292))) b!6722896))

(assert (= (and b!6722205 ((_ is Concat!25394) (regTwo!33610 r!7292))) b!6722897))

(assert (= (and b!6722205 ((_ is Star!16549) (regTwo!33610 r!7292))) b!6722898))

(assert (= (and b!6722205 ((_ is Union!16549) (regTwo!33610 r!7292))) b!6722899))

(declare-fun b!6722901 () Bool)

(declare-fun e!4062002 () Bool)

(declare-fun tp!1843274 () Bool)

(declare-fun tp!1843277 () Bool)

(assert (=> b!6722901 (= e!4062002 (and tp!1843274 tp!1843277))))

(assert (=> b!6722211 (= tp!1843156 e!4062002)))

(declare-fun b!6722900 () Bool)

(assert (=> b!6722900 (= e!4062002 tp_is_empty!42351)))

(declare-fun b!6722902 () Bool)

(declare-fun tp!1843273 () Bool)

(assert (=> b!6722902 (= e!4062002 tp!1843273)))

(declare-fun b!6722903 () Bool)

(declare-fun tp!1843275 () Bool)

(declare-fun tp!1843276 () Bool)

(assert (=> b!6722903 (= e!4062002 (and tp!1843275 tp!1843276))))

(assert (= (and b!6722211 ((_ is ElementMatch!16549) (reg!16878 r!7292))) b!6722900))

(assert (= (and b!6722211 ((_ is Concat!25394) (reg!16878 r!7292))) b!6722901))

(assert (= (and b!6722211 ((_ is Star!16549) (reg!16878 r!7292))) b!6722902))

(assert (= (and b!6722211 ((_ is Union!16549) (reg!16878 r!7292))) b!6722903))

(declare-fun b_lambda!253089 () Bool)

(assert (= b_lambda!253087 (or b!6722201 b_lambda!253089)))

(declare-fun bs!1788389 () Bool)

(declare-fun d!2112582 () Bool)

(assert (= bs!1788389 (and d!2112582 b!6722201)))

(assert (=> bs!1788389 (= (dynLambda!26248 lambda!377005 (h!72271 zl!343)) (derivationStepZipperUp!1703 (h!72271 zl!343) (h!72272 s!2326)))))

(assert (=> bs!1788389 m!7483396))

(assert (=> d!2112560 d!2112582))

(check-sat (not b!6722837) (not b!6722755) (not b!6722762) (not b!6722590) (not bm!606886) (not b!6722903) (not d!2112554) (not b!6722364) (not bm!606888) (not b!6722845) (not bm!606864) (not b!6722843) (not b!6722891) (not b!6722662) (not b!6722390) (not b!6722579) (not b!6722800) (not b!6722467) (not b!6722872) (not b!6722893) (not b!6722661) (not b!6722667) (not b!6722795) (not d!2112522) (not b!6722392) (not d!2112562) (not b!6722751) (not b!6722889) (not b!6722749) (not b!6722841) (not bm!606874) (not b!6722902) (not d!2112566) (not b!6722859) (not d!2112528) (not b!6722787) (not d!2112560) (not b_lambda!253089) (not d!2112512) (not d!2112564) (not b!6722899) (not b!6722757) (not b!6722894) (not d!2112524) (not b!6722897) (not b!6722842) (not b!6722748) (not b!6722668) (not d!2112526) (not b!6722884) (not b!6722885) (not d!2112548) (not b!6722854) (not bm!606887) (not d!2112574) (not b!6722664) (not bm!606855) (not b!6722890) (not b!6722797) (not b!6722665) (not b!6722471) (not d!2112518) (not b!6722750) (not b!6722866) (not bs!1788389) (not bm!606856) (not b!6722589) (not d!2112580) (not b!6722895) (not b!6722663) (not bm!606859) (not d!2112578) (not b!6722587) (not b!6722752) (not d!2112568) (not b!6722584) (not b!6722898) (not b!6722888) (not bm!606852) (not d!2112550) (not b!6722838) (not bm!606865) (not b!6722886) (not setNonEmpty!45821) (not b!6722901) (not d!2112572) (not d!2112556) (not d!2112570) (not b!6722591) tp_is_empty!42351 (not b!6722867) (not d!2112544))
(check-sat)
(get-model)

(assert (=> b!6722762 d!2112528))

(declare-fun bs!1788390 () Bool)

(declare-fun d!2112584 () Bool)

(assert (= bs!1788390 (and d!2112584 d!2112524)))

(declare-fun lambda!377082 () Int)

(assert (=> bs!1788390 (= lambda!377082 lambda!377049)))

(declare-fun bs!1788391 () Bool)

(assert (= bs!1788391 (and d!2112584 d!2112544)))

(assert (=> bs!1788391 (= lambda!377082 lambda!377060)))

(declare-fun bs!1788392 () Bool)

(assert (= bs!1788392 (and d!2112584 d!2112526)))

(assert (=> bs!1788392 (= lambda!377082 lambda!377050)))

(declare-fun bs!1788393 () Bool)

(assert (= bs!1788393 (and d!2112584 d!2112528)))

(assert (=> bs!1788393 (= lambda!377082 lambda!377057)))

(declare-fun bs!1788394 () Bool)

(assert (= bs!1788394 (and d!2112584 d!2112522)))

(assert (=> bs!1788394 (= lambda!377082 lambda!377048)))

(declare-fun bs!1788395 () Bool)

(assert (= bs!1788395 (and d!2112584 d!2112548)))

(assert (=> bs!1788395 (= lambda!377082 lambda!377063)))

(declare-fun lt!2436881 () List!65946)

(assert (=> d!2112584 (forall!15749 lt!2436881 lambda!377082)))

(declare-fun e!4062003 () List!65946)

(assert (=> d!2112584 (= lt!2436881 e!4062003)))

(declare-fun c!1246418 () Bool)

(assert (=> d!2112584 (= c!1246418 ((_ is Cons!65823) (t!379626 zl!343)))))

(assert (=> d!2112584 (= (unfocusZipperList!1970 (t!379626 zl!343)) lt!2436881)))

(declare-fun b!6722904 () Bool)

(assert (=> b!6722904 (= e!4062003 (Cons!65822 (generalisedConcat!2146 (exprs!6433 (h!72271 (t!379626 zl!343)))) (unfocusZipperList!1970 (t!379626 (t!379626 zl!343)))))))

(declare-fun b!6722905 () Bool)

(assert (=> b!6722905 (= e!4062003 Nil!65822)))

(assert (= (and d!2112584 c!1246418) b!6722904))

(assert (= (and d!2112584 (not c!1246418)) b!6722905))

(declare-fun m!7483772 () Bool)

(assert (=> d!2112584 m!7483772))

(declare-fun m!7483774 () Bool)

(assert (=> b!6722904 m!7483774))

(declare-fun m!7483776 () Bool)

(assert (=> b!6722904 m!7483776))

(assert (=> b!6722762 d!2112584))

(declare-fun d!2112586 () Bool)

(assert (=> d!2112586 (= (isEmpty!38146 (tail!12610 s!2326)) ((_ is Nil!65824) (tail!12610 s!2326)))))

(assert (=> b!6722590 d!2112586))

(declare-fun d!2112588 () Bool)

(assert (=> d!2112588 (= (tail!12610 s!2326) (t!379627 s!2326))))

(assert (=> b!6722590 d!2112588))

(declare-fun d!2112590 () Bool)

(declare-fun nullableFct!2449 (Regex!16549) Bool)

(assert (=> d!2112590 (= (nullable!6536 r!7292) (nullableFct!2449 r!7292))))

(declare-fun bs!1788396 () Bool)

(assert (= bs!1788396 d!2112590))

(declare-fun m!7483778 () Bool)

(assert (=> bs!1788396 m!7483778))

(assert (=> b!6722591 d!2112590))

(declare-fun d!2112592 () Bool)

(assert (=> d!2112592 (= (isDefined!13139 lt!2436875) (not (isEmpty!38150 lt!2436875)))))

(declare-fun bs!1788397 () Bool)

(assert (= bs!1788397 d!2112592))

(declare-fun m!7483780 () Bool)

(assert (=> bs!1788397 m!7483780))

(assert (=> b!6722838 d!2112592))

(declare-fun d!2112594 () Bool)

(assert (=> d!2112594 true))

(assert (=> d!2112594 true))

(declare-fun res!2750733 () Bool)

(assert (=> d!2112594 (= (choose!50087 lambda!377004) res!2750733)))

(assert (=> d!2112574 d!2112594))

(declare-fun d!2112596 () Bool)

(declare-fun res!2750738 () Bool)

(declare-fun e!4062008 () Bool)

(assert (=> d!2112596 (=> res!2750738 e!4062008)))

(assert (=> d!2112596 (= res!2750738 ((_ is Nil!65822) (exprs!6433 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822))))))))

(assert (=> d!2112596 (= (forall!15749 (exprs!6433 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822)))) lambda!377048) e!4062008)))

(declare-fun b!6722910 () Bool)

(declare-fun e!4062009 () Bool)

(assert (=> b!6722910 (= e!4062008 e!4062009)))

(declare-fun res!2750739 () Bool)

(assert (=> b!6722910 (=> (not res!2750739) (not e!4062009))))

(declare-fun dynLambda!26249 (Int Regex!16549) Bool)

(assert (=> b!6722910 (= res!2750739 (dynLambda!26249 lambda!377048 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822)))))))))

(declare-fun b!6722911 () Bool)

(assert (=> b!6722911 (= e!4062009 (forall!15749 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822))))) lambda!377048))))

(assert (= (and d!2112596 (not res!2750738)) b!6722910))

(assert (= (and b!6722910 res!2750739) b!6722911))

(declare-fun b_lambda!253091 () Bool)

(assert (=> (not b_lambda!253091) (not b!6722910)))

(declare-fun m!7483782 () Bool)

(assert (=> b!6722910 m!7483782))

(declare-fun m!7483784 () Bool)

(assert (=> b!6722911 m!7483784))

(assert (=> d!2112522 d!2112596))

(declare-fun bs!1788398 () Bool)

(declare-fun b!6722920 () Bool)

(assert (= bs!1788398 (and b!6722920 b!6722210)))

(declare-fun lambda!377083 () Int)

(assert (=> bs!1788398 (not (= lambda!377083 lambda!377002))))

(assert (=> bs!1788398 (not (= lambda!377083 lambda!377004))))

(assert (=> bs!1788398 (= (and (= (reg!16878 (regOne!33611 r!7292)) (reg!16878 r!7292)) (= (regOne!33611 r!7292) r!7292)) (= lambda!377083 lambda!377003))))

(declare-fun bs!1788399 () Bool)

(assert (= bs!1788399 (and b!6722920 d!2112580)))

(assert (=> bs!1788399 (not (= lambda!377083 lambda!377081))))

(declare-fun bs!1788400 () Bool)

(assert (= bs!1788400 (and b!6722920 d!2112568)))

(assert (=> bs!1788400 (= (and (= (reg!16878 (regOne!33611 r!7292)) (reg!16878 r!7292)) (= (regOne!33611 r!7292) (Star!16549 (reg!16878 r!7292)))) (= lambda!377083 lambda!377078))))

(assert (=> bs!1788400 (not (= lambda!377083 lambda!377077))))

(declare-fun bs!1788401 () Bool)

(assert (= bs!1788401 (and b!6722920 b!6722470)))

(assert (=> bs!1788401 (not (= lambda!377083 lambda!377035))))

(declare-fun bs!1788402 () Bool)

(assert (= bs!1788402 (and b!6722920 d!2112566)))

(assert (=> bs!1788402 (not (= lambda!377083 lambda!377071))))

(declare-fun bs!1788403 () Bool)

(assert (= bs!1788403 (and b!6722920 b!6722474)))

(assert (=> bs!1788403 (= (and (= (reg!16878 (regOne!33611 r!7292)) (reg!16878 r!7292)) (= (regOne!33611 r!7292) r!7292)) (= lambda!377083 lambda!377034))))

(assert (=> bs!1788402 (not (= lambda!377083 lambda!377072))))

(assert (=> b!6722920 true))

(assert (=> b!6722920 true))

(declare-fun bs!1788404 () Bool)

(declare-fun b!6722916 () Bool)

(assert (= bs!1788404 (and b!6722916 b!6722210)))

(declare-fun lambda!377084 () Int)

(assert (=> bs!1788404 (not (= lambda!377084 lambda!377002))))

(assert (=> bs!1788404 (not (= lambda!377084 lambda!377003))))

(declare-fun bs!1788405 () Bool)

(assert (= bs!1788405 (and b!6722916 d!2112580)))

(assert (=> bs!1788405 (not (= lambda!377084 lambda!377081))))

(declare-fun bs!1788406 () Bool)

(assert (= bs!1788406 (and b!6722916 d!2112568)))

(assert (=> bs!1788406 (not (= lambda!377084 lambda!377078))))

(assert (=> bs!1788406 (not (= lambda!377084 lambda!377077))))

(declare-fun bs!1788407 () Bool)

(assert (= bs!1788407 (and b!6722916 b!6722470)))

(assert (=> bs!1788407 (= (and (= (regOne!33610 (regOne!33611 r!7292)) (regOne!33610 r!7292)) (= (regTwo!33610 (regOne!33611 r!7292)) (regTwo!33610 r!7292))) (= lambda!377084 lambda!377035))))

(declare-fun bs!1788408 () Bool)

(assert (= bs!1788408 (and b!6722916 d!2112566)))

(assert (=> bs!1788408 (not (= lambda!377084 lambda!377071))))

(declare-fun bs!1788409 () Bool)

(assert (= bs!1788409 (and b!6722916 b!6722920)))

(assert (=> bs!1788409 (not (= lambda!377084 lambda!377083))))

(assert (=> bs!1788404 (= (and (= (regOne!33610 (regOne!33611 r!7292)) (reg!16878 r!7292)) (= (regTwo!33610 (regOne!33611 r!7292)) r!7292)) (= lambda!377084 lambda!377004))))

(declare-fun bs!1788410 () Bool)

(assert (= bs!1788410 (and b!6722916 b!6722474)))

(assert (=> bs!1788410 (not (= lambda!377084 lambda!377034))))

(assert (=> bs!1788408 (= (and (= (regOne!33610 (regOne!33611 r!7292)) (reg!16878 r!7292)) (= (regTwo!33610 (regOne!33611 r!7292)) r!7292)) (= lambda!377084 lambda!377072))))

(assert (=> b!6722916 true))

(assert (=> b!6722916 true))

(declare-fun b!6722912 () Bool)

(declare-fun c!1246420 () Bool)

(assert (=> b!6722912 (= c!1246420 ((_ is Union!16549) (regOne!33611 r!7292)))))

(declare-fun e!4062010 () Bool)

(declare-fun e!4062012 () Bool)

(assert (=> b!6722912 (= e!4062010 e!4062012)))

(declare-fun b!6722913 () Bool)

(declare-fun e!4062014 () Bool)

(assert (=> b!6722913 (= e!4062012 e!4062014)))

(declare-fun res!2750741 () Bool)

(assert (=> b!6722913 (= res!2750741 (matchRSpec!3650 (regOne!33611 (regOne!33611 r!7292)) s!2326))))

(assert (=> b!6722913 (=> res!2750741 e!4062014)))

(declare-fun b!6722914 () Bool)

(declare-fun e!4062011 () Bool)

(assert (=> b!6722914 (= e!4062012 e!4062011)))

(declare-fun c!1246419 () Bool)

(assert (=> b!6722914 (= c!1246419 ((_ is Star!16549) (regOne!33611 r!7292)))))

(declare-fun b!6722915 () Bool)

(declare-fun e!4062015 () Bool)

(declare-fun e!4062016 () Bool)

(assert (=> b!6722915 (= e!4062015 e!4062016)))

(declare-fun res!2750742 () Bool)

(assert (=> b!6722915 (= res!2750742 (not ((_ is EmptyLang!16549) (regOne!33611 r!7292))))))

(assert (=> b!6722915 (=> (not res!2750742) (not e!4062016))))

(declare-fun call!606894 () Bool)

(assert (=> b!6722916 (= e!4062011 call!606894)))

(declare-fun b!6722917 () Bool)

(assert (=> b!6722917 (= e!4062014 (matchRSpec!3650 (regTwo!33611 (regOne!33611 r!7292)) s!2326))))

(declare-fun d!2112598 () Bool)

(declare-fun c!1246422 () Bool)

(assert (=> d!2112598 (= c!1246422 ((_ is EmptyExpr!16549) (regOne!33611 r!7292)))))

(assert (=> d!2112598 (= (matchRSpec!3650 (regOne!33611 r!7292) s!2326) e!4062015)))

(declare-fun b!6722918 () Bool)

(declare-fun c!1246421 () Bool)

(assert (=> b!6722918 (= c!1246421 ((_ is ElementMatch!16549) (regOne!33611 r!7292)))))

(assert (=> b!6722918 (= e!4062016 e!4062010)))

(declare-fun bm!606889 () Bool)

(assert (=> bm!606889 (= call!606894 (Exists!3617 (ite c!1246419 lambda!377083 lambda!377084)))))

(declare-fun bm!606890 () Bool)

(declare-fun call!606895 () Bool)

(assert (=> bm!606890 (= call!606895 (isEmpty!38146 s!2326))))

(declare-fun b!6722919 () Bool)

(assert (=> b!6722919 (= e!4062015 call!606895)))

(declare-fun e!4062013 () Bool)

(assert (=> b!6722920 (= e!4062013 call!606894)))

(declare-fun b!6722921 () Bool)

(assert (=> b!6722921 (= e!4062010 (= s!2326 (Cons!65824 (c!1246247 (regOne!33611 r!7292)) Nil!65824)))))

(declare-fun b!6722922 () Bool)

(declare-fun res!2750740 () Bool)

(assert (=> b!6722922 (=> res!2750740 e!4062013)))

(assert (=> b!6722922 (= res!2750740 call!606895)))

(assert (=> b!6722922 (= e!4062011 e!4062013)))

(assert (= (and d!2112598 c!1246422) b!6722919))

(assert (= (and d!2112598 (not c!1246422)) b!6722915))

(assert (= (and b!6722915 res!2750742) b!6722918))

(assert (= (and b!6722918 c!1246421) b!6722921))

(assert (= (and b!6722918 (not c!1246421)) b!6722912))

(assert (= (and b!6722912 c!1246420) b!6722913))

(assert (= (and b!6722912 (not c!1246420)) b!6722914))

(assert (= (and b!6722913 (not res!2750741)) b!6722917))

(assert (= (and b!6722914 c!1246419) b!6722922))

(assert (= (and b!6722914 (not c!1246419)) b!6722916))

(assert (= (and b!6722922 (not res!2750740)) b!6722920))

(assert (= (or b!6722920 b!6722916) bm!606889))

(assert (= (or b!6722919 b!6722922) bm!606890))

(declare-fun m!7483786 () Bool)

(assert (=> b!6722913 m!7483786))

(declare-fun m!7483788 () Bool)

(assert (=> b!6722917 m!7483788))

(declare-fun m!7483790 () Bool)

(assert (=> bm!606889 m!7483790))

(assert (=> bm!606890 m!7483422))

(assert (=> b!6722467 d!2112598))

(assert (=> d!2112512 d!2112576))

(assert (=> d!2112512 d!2112552))

(assert (=> d!2112560 d!2112556))

(declare-fun d!2112600 () Bool)

(assert (=> d!2112600 (= (flatMap!2030 z!1189 lambda!377005) (dynLambda!26248 lambda!377005 (h!72271 zl!343)))))

(assert (=> d!2112600 true))

(declare-fun _$13!4006 () Unit!159789)

(assert (=> d!2112600 (= (choose!50083 z!1189 (h!72271 zl!343) lambda!377005) _$13!4006)))

(declare-fun b_lambda!253093 () Bool)

(assert (=> (not b_lambda!253093) (not d!2112600)))

(declare-fun bs!1788411 () Bool)

(assert (= bs!1788411 d!2112600))

(assert (=> bs!1788411 m!7483394))

(assert (=> bs!1788411 m!7483710))

(assert (=> d!2112560 d!2112600))

(declare-fun d!2112602 () Bool)

(declare-fun res!2750747 () Bool)

(declare-fun e!4062021 () Bool)

(assert (=> d!2112602 (=> res!2750747 e!4062021)))

(assert (=> d!2112602 (= res!2750747 ((_ is Nil!65823) lt!2436862))))

(assert (=> d!2112602 (= (noDuplicate!2342 lt!2436862) e!4062021)))

(declare-fun b!6722927 () Bool)

(declare-fun e!4062022 () Bool)

(assert (=> b!6722927 (= e!4062021 e!4062022)))

(declare-fun res!2750748 () Bool)

(assert (=> b!6722927 (=> (not res!2750748) (not e!4062022))))

(declare-fun contains!20246 (List!65947 Context!11866) Bool)

(assert (=> b!6722927 (= res!2750748 (not (contains!20246 (t!379626 lt!2436862) (h!72271 lt!2436862))))))

(declare-fun b!6722928 () Bool)

(assert (=> b!6722928 (= e!4062022 (noDuplicate!2342 (t!379626 lt!2436862)))))

(assert (= (and d!2112602 (not res!2750747)) b!6722927))

(assert (= (and b!6722927 res!2750748) b!6722928))

(declare-fun m!7483792 () Bool)

(assert (=> b!6722927 m!7483792))

(declare-fun m!7483794 () Bool)

(assert (=> b!6722928 m!7483794))

(assert (=> d!2112562 d!2112602))

(declare-fun d!2112604 () Bool)

(declare-fun e!4062038 () Bool)

(assert (=> d!2112604 e!4062038))

(declare-fun res!2750756 () Bool)

(assert (=> d!2112604 (=> (not res!2750756) (not e!4062038))))

(declare-fun res!2750757 () List!65947)

(assert (=> d!2112604 (= res!2750756 (noDuplicate!2342 res!2750757))))

(declare-fun e!4062036 () Bool)

(assert (=> d!2112604 e!4062036))

(assert (=> d!2112604 (= (choose!50084 z!1189) res!2750757)))

(declare-fun b!6722947 () Bool)

(declare-fun e!4062037 () Bool)

(declare-fun tp!1843282 () Bool)

(assert (=> b!6722947 (= e!4062037 tp!1843282)))

(declare-fun tp!1843283 () Bool)

(declare-fun b!6722946 () Bool)

(assert (=> b!6722946 (= e!4062036 (and (inv!84619 (h!72271 res!2750757)) e!4062037 tp!1843283))))

(declare-fun b!6722948 () Bool)

(assert (=> b!6722948 (= e!4062038 (= (content!12767 res!2750757) z!1189))))

(assert (= b!6722946 b!6722947))

(assert (= (and d!2112604 ((_ is Cons!65823) res!2750757)) b!6722946))

(assert (= (and d!2112604 res!2750756) b!6722948))

(declare-fun m!7483796 () Bool)

(assert (=> d!2112604 m!7483796))

(declare-fun m!7483798 () Bool)

(assert (=> b!6722946 m!7483798))

(declare-fun m!7483800 () Bool)

(assert (=> b!6722948 m!7483800))

(assert (=> d!2112562 d!2112604))

(assert (=> b!6722842 d!2112512))

(declare-fun bs!1788412 () Bool)

(declare-fun d!2112608 () Bool)

(assert (= bs!1788412 (and d!2112608 d!2112524)))

(declare-fun lambda!377086 () Int)

(assert (=> bs!1788412 (= lambda!377086 lambda!377049)))

(declare-fun bs!1788413 () Bool)

(assert (= bs!1788413 (and d!2112608 d!2112544)))

(assert (=> bs!1788413 (= lambda!377086 lambda!377060)))

(declare-fun bs!1788415 () Bool)

(assert (= bs!1788415 (and d!2112608 d!2112526)))

(assert (=> bs!1788415 (= lambda!377086 lambda!377050)))

(declare-fun bs!1788416 () Bool)

(assert (= bs!1788416 (and d!2112608 d!2112528)))

(assert (=> bs!1788416 (= lambda!377086 lambda!377057)))

(declare-fun bs!1788417 () Bool)

(assert (= bs!1788417 (and d!2112608 d!2112584)))

(assert (=> bs!1788417 (= lambda!377086 lambda!377082)))

(declare-fun bs!1788418 () Bool)

(assert (= bs!1788418 (and d!2112608 d!2112522)))

(assert (=> bs!1788418 (= lambda!377086 lambda!377048)))

(declare-fun bs!1788419 () Bool)

(assert (= bs!1788419 (and d!2112608 d!2112548)))

(assert (=> bs!1788419 (= lambda!377086 lambda!377063)))

(declare-fun b!6722949 () Bool)

(declare-fun e!4062043 () Regex!16549)

(assert (=> b!6722949 (= e!4062043 (Union!16549 (h!72270 (t!379625 (unfocusZipperList!1970 zl!343))) (generalisedUnion!2393 (t!379625 (t!379625 (unfocusZipperList!1970 zl!343))))))))

(declare-fun b!6722950 () Bool)

(declare-fun e!4062041 () Bool)

(declare-fun lt!2436882 () Regex!16549)

(assert (=> b!6722950 (= e!4062041 (= lt!2436882 (head!13526 (t!379625 (unfocusZipperList!1970 zl!343)))))))

(declare-fun b!6722951 () Bool)

(declare-fun e!4062039 () Bool)

(assert (=> b!6722951 (= e!4062039 e!4062041)))

(declare-fun c!1246428 () Bool)

(assert (=> b!6722951 (= c!1246428 (isEmpty!38149 (tail!12611 (t!379625 (unfocusZipperList!1970 zl!343)))))))

(declare-fun b!6722952 () Bool)

(assert (=> b!6722952 (= e!4062041 (isUnion!1353 lt!2436882))))

(declare-fun b!6722953 () Bool)

(declare-fun e!4062044 () Bool)

(assert (=> b!6722953 (= e!4062044 e!4062039)))

(declare-fun c!1246429 () Bool)

(assert (=> b!6722953 (= c!1246429 (isEmpty!38149 (t!379625 (unfocusZipperList!1970 zl!343))))))

(declare-fun b!6722954 () Bool)

(declare-fun e!4062040 () Regex!16549)

(assert (=> b!6722954 (= e!4062040 e!4062043)))

(declare-fun c!1246430 () Bool)

(assert (=> b!6722954 (= c!1246430 ((_ is Cons!65822) (t!379625 (unfocusZipperList!1970 zl!343))))))

(declare-fun b!6722955 () Bool)

(assert (=> b!6722955 (= e!4062043 EmptyLang!16549)))

(declare-fun b!6722956 () Bool)

(declare-fun e!4062042 () Bool)

(assert (=> b!6722956 (= e!4062042 (isEmpty!38149 (t!379625 (t!379625 (unfocusZipperList!1970 zl!343)))))))

(assert (=> d!2112608 e!4062044))

(declare-fun res!2750758 () Bool)

(assert (=> d!2112608 (=> (not res!2750758) (not e!4062044))))

(assert (=> d!2112608 (= res!2750758 (validRegex!8285 lt!2436882))))

(assert (=> d!2112608 (= lt!2436882 e!4062040)))

(declare-fun c!1246427 () Bool)

(assert (=> d!2112608 (= c!1246427 e!4062042)))

(declare-fun res!2750759 () Bool)

(assert (=> d!2112608 (=> (not res!2750759) (not e!4062042))))

(assert (=> d!2112608 (= res!2750759 ((_ is Cons!65822) (t!379625 (unfocusZipperList!1970 zl!343))))))

(assert (=> d!2112608 (forall!15749 (t!379625 (unfocusZipperList!1970 zl!343)) lambda!377086)))

(assert (=> d!2112608 (= (generalisedUnion!2393 (t!379625 (unfocusZipperList!1970 zl!343))) lt!2436882)))

(declare-fun b!6722957 () Bool)

(assert (=> b!6722957 (= e!4062040 (h!72270 (t!379625 (unfocusZipperList!1970 zl!343))))))

(declare-fun b!6722958 () Bool)

(assert (=> b!6722958 (= e!4062039 (isEmptyLang!1923 lt!2436882))))

(assert (= (and d!2112608 res!2750759) b!6722956))

(assert (= (and d!2112608 c!1246427) b!6722957))

(assert (= (and d!2112608 (not c!1246427)) b!6722954))

(assert (= (and b!6722954 c!1246430) b!6722949))

(assert (= (and b!6722954 (not c!1246430)) b!6722955))

(assert (= (and d!2112608 res!2750758) b!6722953))

(assert (= (and b!6722953 c!1246429) b!6722958))

(assert (= (and b!6722953 (not c!1246429)) b!6722951))

(assert (= (and b!6722951 c!1246428) b!6722950))

(assert (= (and b!6722951 (not c!1246428)) b!6722952))

(declare-fun m!7483802 () Bool)

(assert (=> b!6722950 m!7483802))

(declare-fun m!7483804 () Bool)

(assert (=> b!6722956 m!7483804))

(declare-fun m!7483806 () Bool)

(assert (=> b!6722952 m!7483806))

(assert (=> b!6722953 m!7483670))

(declare-fun m!7483808 () Bool)

(assert (=> b!6722958 m!7483808))

(declare-fun m!7483810 () Bool)

(assert (=> d!2112608 m!7483810))

(declare-fun m!7483812 () Bool)

(assert (=> d!2112608 m!7483812))

(declare-fun m!7483814 () Bool)

(assert (=> b!6722949 m!7483814))

(declare-fun m!7483816 () Bool)

(assert (=> b!6722951 m!7483816))

(assert (=> b!6722951 m!7483816))

(declare-fun m!7483818 () Bool)

(assert (=> b!6722951 m!7483818))

(assert (=> b!6722748 d!2112608))

(declare-fun b!6722959 () Bool)

(declare-fun e!4062045 () (InoxSet Context!11866))

(declare-fun call!606903 () (InoxSet Context!11866))

(declare-fun call!606898 () (InoxSet Context!11866))

(assert (=> b!6722959 (= e!4062045 ((_ map or) call!606903 call!606898))))

(declare-fun bm!606893 () Bool)

(declare-fun call!606901 () (InoxSet Context!11866))

(assert (=> bm!606893 (= call!606901 call!606898)))

(declare-fun b!6722960 () Bool)

(declare-fun c!1246434 () Bool)

(declare-fun e!4062048 () Bool)

(assert (=> b!6722960 (= c!1246434 e!4062048)))

(declare-fun res!2750760 () Bool)

(assert (=> b!6722960 (=> (not res!2750760) (not e!4062048))))

(assert (=> b!6722960 (= res!2750760 ((_ is Concat!25394) (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))

(declare-fun e!4062047 () (InoxSet Context!11866))

(assert (=> b!6722960 (= e!4062047 e!4062045)))

(declare-fun b!6722961 () Bool)

(declare-fun e!4062049 () (InoxSet Context!11866))

(assert (=> b!6722961 (= e!4062049 call!606901)))

(declare-fun b!6722962 () Bool)

(declare-fun e!4062050 () (InoxSet Context!11866))

(assert (=> b!6722962 (= e!4062050 (store ((as const (Array Context!11866 Bool)) false) (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) true))))

(declare-fun bm!606894 () Bool)

(declare-fun call!606900 () List!65946)

(declare-fun c!1246433 () Bool)

(assert (=> bm!606894 (= call!606900 ($colon$colon!2366 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))) (ite (or c!1246434 c!1246433) (regTwo!33610 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))))

(declare-fun d!2112610 () Bool)

(declare-fun c!1246435 () Bool)

(assert (=> d!2112610 (= c!1246435 (and ((_ is ElementMatch!16549) (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (= (c!1246247 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (h!72272 s!2326))))))

(assert (=> d!2112610 (= (derivationStepZipperDown!1777 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))) (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (h!72272 s!2326)) e!4062050)))

(declare-fun b!6722963 () Bool)

(declare-fun call!606899 () (InoxSet Context!11866))

(assert (=> b!6722963 (= e!4062047 ((_ map or) call!606903 call!606899))))

(declare-fun b!6722964 () Bool)

(assert (=> b!6722964 (= e!4062048 (nullable!6536 (regOne!33610 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))))

(declare-fun b!6722965 () Bool)

(assert (=> b!6722965 (= e!4062050 e!4062047)))

(declare-fun c!1246432 () Bool)

(assert (=> b!6722965 (= c!1246432 ((_ is Union!16549) (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))

(declare-fun b!6722966 () Bool)

(assert (=> b!6722966 (= e!4062049 ((as const (Array Context!11866 Bool)) false))))

(declare-fun bm!606895 () Bool)

(declare-fun call!606902 () List!65946)

(assert (=> bm!606895 (= call!606902 call!606900)))

(declare-fun b!6722967 () Bool)

(declare-fun e!4062046 () (InoxSet Context!11866))

(assert (=> b!6722967 (= e!4062046 call!606901)))

(declare-fun b!6722968 () Bool)

(assert (=> b!6722968 (= e!4062045 e!4062046)))

(assert (=> b!6722968 (= c!1246433 ((_ is Concat!25394) (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))

(declare-fun bm!606896 () Bool)

(assert (=> bm!606896 (= call!606898 call!606899)))

(declare-fun b!6722969 () Bool)

(declare-fun c!1246431 () Bool)

(assert (=> b!6722969 (= c!1246431 ((_ is Star!16549) (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))

(assert (=> b!6722969 (= e!4062046 e!4062049)))

(declare-fun bm!606897 () Bool)

(assert (=> bm!606897 (= call!606903 (derivationStepZipperDown!1777 (ite c!1246432 (regOne!33611 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (regOne!33610 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))) (ite c!1246432 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (Context!11867 call!606900)) (h!72272 s!2326)))))

(declare-fun bm!606898 () Bool)

(assert (=> bm!606898 (= call!606899 (derivationStepZipperDown!1777 (ite c!1246432 (regTwo!33611 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (ite c!1246434 (regTwo!33610 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (ite c!1246433 (regOne!33610 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (reg!16878 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))) (ite (or c!1246432 c!1246434) (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (Context!11867 call!606902)) (h!72272 s!2326)))))

(assert (= (and d!2112610 c!1246435) b!6722962))

(assert (= (and d!2112610 (not c!1246435)) b!6722965))

(assert (= (and b!6722965 c!1246432) b!6722963))

(assert (= (and b!6722965 (not c!1246432)) b!6722960))

(assert (= (and b!6722960 res!2750760) b!6722964))

(assert (= (and b!6722960 c!1246434) b!6722959))

(assert (= (and b!6722960 (not c!1246434)) b!6722968))

(assert (= (and b!6722968 c!1246433) b!6722967))

(assert (= (and b!6722968 (not c!1246433)) b!6722969))

(assert (= (and b!6722969 c!1246431) b!6722961))

(assert (= (and b!6722969 (not c!1246431)) b!6722966))

(assert (= (or b!6722967 b!6722961) bm!606895))

(assert (= (or b!6722967 b!6722961) bm!606893))

(assert (= (or b!6722959 bm!606895) bm!606894))

(assert (= (or b!6722959 bm!606893) bm!606896))

(assert (= (or b!6722963 bm!606896) bm!606898))

(assert (= (or b!6722963 b!6722959) bm!606897))

(declare-fun m!7483820 () Bool)

(assert (=> bm!606898 m!7483820))

(declare-fun m!7483822 () Bool)

(assert (=> bm!606894 m!7483822))

(declare-fun m!7483824 () Bool)

(assert (=> b!6722964 m!7483824))

(declare-fun m!7483826 () Bool)

(assert (=> b!6722962 m!7483826))

(declare-fun m!7483828 () Bool)

(assert (=> bm!606897 m!7483828))

(assert (=> bm!606859 d!2112610))

(declare-fun d!2112612 () Bool)

(assert (=> d!2112612 (= (nullable!6536 (reg!16878 r!7292)) (nullableFct!2449 (reg!16878 r!7292)))))

(declare-fun bs!1788425 () Bool)

(assert (= bs!1788425 d!2112612))

(declare-fun m!7483830 () Bool)

(assert (=> bs!1788425 m!7483830))

(assert (=> b!6722787 d!2112612))

(declare-fun d!2112614 () Bool)

(assert (=> d!2112614 (= (isConcat!1438 lt!2436844) ((_ is Concat!25394) lt!2436844))))

(assert (=> b!6722662 d!2112614))

(declare-fun d!2112616 () Bool)

(assert (=> d!2112616 (= ($colon$colon!2366 (exprs!6433 (Context!11867 Nil!65822)) (ite (or c!1246303 c!1246302) (regTwo!33610 r!7292) r!7292)) (Cons!65822 (ite (or c!1246303 c!1246302) (regTwo!33610 r!7292) r!7292) (exprs!6433 (Context!11867 Nil!65822))))))

(assert (=> bm!606852 d!2112616))

(declare-fun b!6722970 () Bool)

(declare-fun e!4062052 () (InoxSet Context!11866))

(declare-fun e!4062053 () (InoxSet Context!11866))

(assert (=> b!6722970 (= e!4062052 e!4062053)))

(declare-fun c!1246436 () Bool)

(assert (=> b!6722970 (= c!1246436 ((_ is Cons!65822) (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))))

(declare-fun bm!606899 () Bool)

(declare-fun call!606904 () (InoxSet Context!11866))

(assert (=> bm!606899 (= call!606904 (derivationStepZipperDown!1777 (h!72270 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))) (Context!11867 (t!379625 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))) (h!72272 s!2326)))))

(declare-fun d!2112618 () Bool)

(declare-fun c!1246437 () Bool)

(declare-fun e!4062051 () Bool)

(assert (=> d!2112618 (= c!1246437 e!4062051)))

(declare-fun res!2750761 () Bool)

(assert (=> d!2112618 (=> (not res!2750761) (not e!4062051))))

(assert (=> d!2112618 (= res!2750761 ((_ is Cons!65822) (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))))

(assert (=> d!2112618 (= (derivationStepZipperUp!1703 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (h!72272 s!2326)) e!4062052)))

(declare-fun b!6722971 () Bool)

(assert (=> b!6722971 (= e!4062053 call!606904)))

(declare-fun b!6722972 () Bool)

(assert (=> b!6722972 (= e!4062052 ((_ map or) call!606904 (derivationStepZipperUp!1703 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))) (h!72272 s!2326))))))

(declare-fun b!6722973 () Bool)

(assert (=> b!6722973 (= e!4062053 ((as const (Array Context!11866 Bool)) false))))

(declare-fun b!6722974 () Bool)

(assert (=> b!6722974 (= e!4062051 (nullable!6536 (h!72270 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822)))))))))))

(assert (= (and d!2112618 res!2750761) b!6722974))

(assert (= (and d!2112618 c!1246437) b!6722972))

(assert (= (and d!2112618 (not c!1246437)) b!6722970))

(assert (= (and b!6722970 c!1246436) b!6722971))

(assert (= (and b!6722970 (not c!1246436)) b!6722973))

(assert (= (or b!6722972 b!6722971) bm!606899))

(declare-fun m!7483832 () Bool)

(assert (=> bm!606899 m!7483832))

(declare-fun m!7483834 () Bool)

(assert (=> b!6722972 m!7483834))

(declare-fun m!7483836 () Bool)

(assert (=> b!6722974 m!7483836))

(assert (=> b!6722390 d!2112618))

(declare-fun d!2112620 () Bool)

(assert (=> d!2112620 (= (Exists!3617 (ite c!1246325 lambda!377034 lambda!377035)) (choose!50087 (ite c!1246325 lambda!377034 lambda!377035)))))

(declare-fun bs!1788433 () Bool)

(assert (= bs!1788433 d!2112620))

(declare-fun m!7483838 () Bool)

(assert (=> bs!1788433 m!7483838))

(assert (=> bm!606864 d!2112620))

(declare-fun d!2112622 () Bool)

(assert (=> d!2112622 (= (isEmpty!38149 (tail!12611 (unfocusZipperList!1970 zl!343))) ((_ is Nil!65822) (tail!12611 (unfocusZipperList!1970 zl!343))))))

(assert (=> b!6722750 d!2112622))

(declare-fun d!2112624 () Bool)

(assert (=> d!2112624 (= (tail!12611 (unfocusZipperList!1970 zl!343)) (t!379625 (unfocusZipperList!1970 zl!343)))))

(assert (=> b!6722750 d!2112624))

(declare-fun bs!1788434 () Bool)

(declare-fun b!6722983 () Bool)

(assert (= bs!1788434 (and b!6722983 b!6722210)))

(declare-fun lambda!377088 () Int)

(assert (=> bs!1788434 (not (= lambda!377088 lambda!377002))))

(assert (=> bs!1788434 (= (and (= (reg!16878 (regTwo!33611 r!7292)) (reg!16878 r!7292)) (= (regTwo!33611 r!7292) r!7292)) (= lambda!377088 lambda!377003))))

(declare-fun bs!1788435 () Bool)

(assert (= bs!1788435 (and b!6722983 b!6722916)))

(assert (=> bs!1788435 (not (= lambda!377088 lambda!377084))))

(declare-fun bs!1788436 () Bool)

(assert (= bs!1788436 (and b!6722983 d!2112580)))

(assert (=> bs!1788436 (not (= lambda!377088 lambda!377081))))

(declare-fun bs!1788437 () Bool)

(assert (= bs!1788437 (and b!6722983 d!2112568)))

(assert (=> bs!1788437 (= (and (= (reg!16878 (regTwo!33611 r!7292)) (reg!16878 r!7292)) (= (regTwo!33611 r!7292) (Star!16549 (reg!16878 r!7292)))) (= lambda!377088 lambda!377078))))

(assert (=> bs!1788437 (not (= lambda!377088 lambda!377077))))

(declare-fun bs!1788438 () Bool)

(assert (= bs!1788438 (and b!6722983 b!6722470)))

(assert (=> bs!1788438 (not (= lambda!377088 lambda!377035))))

(declare-fun bs!1788439 () Bool)

(assert (= bs!1788439 (and b!6722983 d!2112566)))

(assert (=> bs!1788439 (not (= lambda!377088 lambda!377071))))

(declare-fun bs!1788440 () Bool)

(assert (= bs!1788440 (and b!6722983 b!6722920)))

(assert (=> bs!1788440 (= (and (= (reg!16878 (regTwo!33611 r!7292)) (reg!16878 (regOne!33611 r!7292))) (= (regTwo!33611 r!7292) (regOne!33611 r!7292))) (= lambda!377088 lambda!377083))))

(assert (=> bs!1788434 (not (= lambda!377088 lambda!377004))))

(declare-fun bs!1788441 () Bool)

(assert (= bs!1788441 (and b!6722983 b!6722474)))

(assert (=> bs!1788441 (= (and (= (reg!16878 (regTwo!33611 r!7292)) (reg!16878 r!7292)) (= (regTwo!33611 r!7292) r!7292)) (= lambda!377088 lambda!377034))))

(assert (=> bs!1788439 (not (= lambda!377088 lambda!377072))))

(assert (=> b!6722983 true))

(assert (=> b!6722983 true))

(declare-fun bs!1788442 () Bool)

(declare-fun b!6722979 () Bool)

(assert (= bs!1788442 (and b!6722979 b!6722210)))

(declare-fun lambda!377089 () Int)

(assert (=> bs!1788442 (not (= lambda!377089 lambda!377002))))

(declare-fun bs!1788443 () Bool)

(assert (= bs!1788443 (and b!6722979 b!6722983)))

(assert (=> bs!1788443 (not (= lambda!377089 lambda!377088))))

(assert (=> bs!1788442 (not (= lambda!377089 lambda!377003))))

(declare-fun bs!1788444 () Bool)

(assert (= bs!1788444 (and b!6722979 b!6722916)))

(assert (=> bs!1788444 (= (and (= (regOne!33610 (regTwo!33611 r!7292)) (regOne!33610 (regOne!33611 r!7292))) (= (regTwo!33610 (regTwo!33611 r!7292)) (regTwo!33610 (regOne!33611 r!7292)))) (= lambda!377089 lambda!377084))))

(declare-fun bs!1788445 () Bool)

(assert (= bs!1788445 (and b!6722979 d!2112580)))

(assert (=> bs!1788445 (not (= lambda!377089 lambda!377081))))

(declare-fun bs!1788447 () Bool)

(assert (= bs!1788447 (and b!6722979 d!2112568)))

(assert (=> bs!1788447 (not (= lambda!377089 lambda!377078))))

(assert (=> bs!1788447 (not (= lambda!377089 lambda!377077))))

(declare-fun bs!1788449 () Bool)

(assert (= bs!1788449 (and b!6722979 b!6722470)))

(assert (=> bs!1788449 (= (and (= (regOne!33610 (regTwo!33611 r!7292)) (regOne!33610 r!7292)) (= (regTwo!33610 (regTwo!33611 r!7292)) (regTwo!33610 r!7292))) (= lambda!377089 lambda!377035))))

(declare-fun bs!1788451 () Bool)

(assert (= bs!1788451 (and b!6722979 d!2112566)))

(assert (=> bs!1788451 (not (= lambda!377089 lambda!377071))))

(declare-fun bs!1788453 () Bool)

(assert (= bs!1788453 (and b!6722979 b!6722920)))

(assert (=> bs!1788453 (not (= lambda!377089 lambda!377083))))

(assert (=> bs!1788442 (= (and (= (regOne!33610 (regTwo!33611 r!7292)) (reg!16878 r!7292)) (= (regTwo!33610 (regTwo!33611 r!7292)) r!7292)) (= lambda!377089 lambda!377004))))

(declare-fun bs!1788456 () Bool)

(assert (= bs!1788456 (and b!6722979 b!6722474)))

(assert (=> bs!1788456 (not (= lambda!377089 lambda!377034))))

(assert (=> bs!1788451 (= (and (= (regOne!33610 (regTwo!33611 r!7292)) (reg!16878 r!7292)) (= (regTwo!33610 (regTwo!33611 r!7292)) r!7292)) (= lambda!377089 lambda!377072))))

(assert (=> b!6722979 true))

(assert (=> b!6722979 true))

(declare-fun b!6722975 () Bool)

(declare-fun c!1246439 () Bool)

(assert (=> b!6722975 (= c!1246439 ((_ is Union!16549) (regTwo!33611 r!7292)))))

(declare-fun e!4062054 () Bool)

(declare-fun e!4062056 () Bool)

(assert (=> b!6722975 (= e!4062054 e!4062056)))

(declare-fun b!6722976 () Bool)

(declare-fun e!4062058 () Bool)

(assert (=> b!6722976 (= e!4062056 e!4062058)))

(declare-fun res!2750763 () Bool)

(assert (=> b!6722976 (= res!2750763 (matchRSpec!3650 (regOne!33611 (regTwo!33611 r!7292)) s!2326))))

(assert (=> b!6722976 (=> res!2750763 e!4062058)))

(declare-fun b!6722977 () Bool)

(declare-fun e!4062055 () Bool)

(assert (=> b!6722977 (= e!4062056 e!4062055)))

(declare-fun c!1246438 () Bool)

(assert (=> b!6722977 (= c!1246438 ((_ is Star!16549) (regTwo!33611 r!7292)))))

(declare-fun b!6722978 () Bool)

(declare-fun e!4062059 () Bool)

(declare-fun e!4062060 () Bool)

(assert (=> b!6722978 (= e!4062059 e!4062060)))

(declare-fun res!2750764 () Bool)

(assert (=> b!6722978 (= res!2750764 (not ((_ is EmptyLang!16549) (regTwo!33611 r!7292))))))

(assert (=> b!6722978 (=> (not res!2750764) (not e!4062060))))

(declare-fun call!606905 () Bool)

(assert (=> b!6722979 (= e!4062055 call!606905)))

(declare-fun b!6722980 () Bool)

(assert (=> b!6722980 (= e!4062058 (matchRSpec!3650 (regTwo!33611 (regTwo!33611 r!7292)) s!2326))))

(declare-fun d!2112626 () Bool)

(declare-fun c!1246441 () Bool)

(assert (=> d!2112626 (= c!1246441 ((_ is EmptyExpr!16549) (regTwo!33611 r!7292)))))

(assert (=> d!2112626 (= (matchRSpec!3650 (regTwo!33611 r!7292) s!2326) e!4062059)))

(declare-fun b!6722981 () Bool)

(declare-fun c!1246440 () Bool)

(assert (=> b!6722981 (= c!1246440 ((_ is ElementMatch!16549) (regTwo!33611 r!7292)))))

(assert (=> b!6722981 (= e!4062060 e!4062054)))

(declare-fun bm!606900 () Bool)

(assert (=> bm!606900 (= call!606905 (Exists!3617 (ite c!1246438 lambda!377088 lambda!377089)))))

(declare-fun bm!606901 () Bool)

(declare-fun call!606906 () Bool)

(assert (=> bm!606901 (= call!606906 (isEmpty!38146 s!2326))))

(declare-fun b!6722982 () Bool)

(assert (=> b!6722982 (= e!4062059 call!606906)))

(declare-fun e!4062057 () Bool)

(assert (=> b!6722983 (= e!4062057 call!606905)))

(declare-fun b!6722984 () Bool)

(assert (=> b!6722984 (= e!4062054 (= s!2326 (Cons!65824 (c!1246247 (regTwo!33611 r!7292)) Nil!65824)))))

(declare-fun b!6722985 () Bool)

(declare-fun res!2750762 () Bool)

(assert (=> b!6722985 (=> res!2750762 e!4062057)))

(assert (=> b!6722985 (= res!2750762 call!606906)))

(assert (=> b!6722985 (= e!4062055 e!4062057)))

(assert (= (and d!2112626 c!1246441) b!6722982))

(assert (= (and d!2112626 (not c!1246441)) b!6722978))

(assert (= (and b!6722978 res!2750764) b!6722981))

(assert (= (and b!6722981 c!1246440) b!6722984))

(assert (= (and b!6722981 (not c!1246440)) b!6722975))

(assert (= (and b!6722975 c!1246439) b!6722976))

(assert (= (and b!6722975 (not c!1246439)) b!6722977))

(assert (= (and b!6722976 (not res!2750763)) b!6722980))

(assert (= (and b!6722977 c!1246438) b!6722985))

(assert (= (and b!6722977 (not c!1246438)) b!6722979))

(assert (= (and b!6722985 (not res!2750762)) b!6722983))

(assert (= (or b!6722983 b!6722979) bm!606900))

(assert (= (or b!6722982 b!6722985) bm!606901))

(declare-fun m!7483852 () Bool)

(assert (=> b!6722976 m!7483852))

(declare-fun m!7483854 () Bool)

(assert (=> b!6722980 m!7483854))

(declare-fun m!7483856 () Bool)

(assert (=> bm!606900 m!7483856))

(assert (=> bm!606901 m!7483422))

(assert (=> b!6722471 d!2112626))

(declare-fun d!2112634 () Bool)

(assert (=> d!2112634 (= (isEmpty!38149 (unfocusZipperList!1970 zl!343)) ((_ is Nil!65822) (unfocusZipperList!1970 zl!343)))))

(assert (=> b!6722752 d!2112634))

(declare-fun d!2112636 () Bool)

(assert (=> d!2112636 true))

(assert (=> d!2112636 true))

(declare-fun res!2750770 () Bool)

(assert (=> d!2112636 (= (choose!50087 lambda!377003) res!2750770)))

(assert (=> d!2112570 d!2112636))

(assert (=> d!2112578 d!2112592))

(declare-fun b!6722998 () Bool)

(declare-fun e!4062073 () Bool)

(declare-fun e!4062068 () Bool)

(assert (=> b!6722998 (= e!4062073 e!4062068)))

(declare-fun c!1246449 () Bool)

(assert (=> b!6722998 (= c!1246449 ((_ is EmptyLang!16549) (reg!16878 r!7292)))))

(declare-fun b!6722999 () Bool)

(declare-fun e!4062072 () Bool)

(assert (=> b!6722999 (= e!4062072 (matchR!8732 (derivativeStep!5221 (reg!16878 r!7292) (head!13525 Nil!65824)) (tail!12610 Nil!65824)))))

(declare-fun b!6723000 () Bool)

(declare-fun lt!2436885 () Bool)

(assert (=> b!6723000 (= e!4062068 (not lt!2436885))))

(declare-fun b!6723001 () Bool)

(declare-fun res!2750773 () Bool)

(declare-fun e!4062069 () Bool)

(assert (=> b!6723001 (=> res!2750773 e!4062069)))

(assert (=> b!6723001 (= res!2750773 (not ((_ is ElementMatch!16549) (reg!16878 r!7292))))))

(assert (=> b!6723001 (= e!4062068 e!4062069)))

(declare-fun b!6723002 () Bool)

(declare-fun e!4062071 () Bool)

(declare-fun e!4062074 () Bool)

(assert (=> b!6723002 (= e!4062071 e!4062074)))

(declare-fun res!2750776 () Bool)

(assert (=> b!6723002 (=> res!2750776 e!4062074)))

(declare-fun call!606907 () Bool)

(assert (=> b!6723002 (= res!2750776 call!606907)))

(declare-fun b!6723003 () Bool)

(declare-fun res!2750775 () Bool)

(declare-fun e!4062070 () Bool)

(assert (=> b!6723003 (=> (not res!2750775) (not e!4062070))))

(assert (=> b!6723003 (= res!2750775 (not call!606907))))

(declare-fun b!6723004 () Bool)

(declare-fun res!2750777 () Bool)

(assert (=> b!6723004 (=> res!2750777 e!4062074)))

(assert (=> b!6723004 (= res!2750777 (not (isEmpty!38146 (tail!12610 Nil!65824))))))

(declare-fun d!2112638 () Bool)

(assert (=> d!2112638 e!4062073))

(declare-fun c!1246448 () Bool)

(assert (=> d!2112638 (= c!1246448 ((_ is EmptyExpr!16549) (reg!16878 r!7292)))))

(assert (=> d!2112638 (= lt!2436885 e!4062072)))

(declare-fun c!1246447 () Bool)

(assert (=> d!2112638 (= c!1246447 (isEmpty!38146 Nil!65824))))

(assert (=> d!2112638 (validRegex!8285 (reg!16878 r!7292))))

(assert (=> d!2112638 (= (matchR!8732 (reg!16878 r!7292) Nil!65824) lt!2436885)))

(declare-fun b!6723005 () Bool)

(assert (=> b!6723005 (= e!4062069 e!4062071)))

(declare-fun res!2750771 () Bool)

(assert (=> b!6723005 (=> (not res!2750771) (not e!4062071))))

(assert (=> b!6723005 (= res!2750771 (not lt!2436885))))

(declare-fun b!6723006 () Bool)

(declare-fun res!2750774 () Bool)

(assert (=> b!6723006 (=> res!2750774 e!4062069)))

(assert (=> b!6723006 (= res!2750774 e!4062070)))

(declare-fun res!2750772 () Bool)

(assert (=> b!6723006 (=> (not res!2750772) (not e!4062070))))

(assert (=> b!6723006 (= res!2750772 lt!2436885)))

(declare-fun b!6723007 () Bool)

(assert (=> b!6723007 (= e!4062074 (not (= (head!13525 Nil!65824) (c!1246247 (reg!16878 r!7292)))))))

(declare-fun b!6723008 () Bool)

(assert (=> b!6723008 (= e!4062073 (= lt!2436885 call!606907))))

(declare-fun b!6723009 () Bool)

(assert (=> b!6723009 (= e!4062070 (= (head!13525 Nil!65824) (c!1246247 (reg!16878 r!7292))))))

(declare-fun b!6723010 () Bool)

(declare-fun res!2750778 () Bool)

(assert (=> b!6723010 (=> (not res!2750778) (not e!4062070))))

(assert (=> b!6723010 (= res!2750778 (isEmpty!38146 (tail!12610 Nil!65824)))))

(declare-fun bm!606902 () Bool)

(assert (=> bm!606902 (= call!606907 (isEmpty!38146 Nil!65824))))

(declare-fun b!6723011 () Bool)

(assert (=> b!6723011 (= e!4062072 (nullable!6536 (reg!16878 r!7292)))))

(assert (= (and d!2112638 c!1246447) b!6723011))

(assert (= (and d!2112638 (not c!1246447)) b!6722999))

(assert (= (and d!2112638 c!1246448) b!6723008))

(assert (= (and d!2112638 (not c!1246448)) b!6722998))

(assert (= (and b!6722998 c!1246449) b!6723000))

(assert (= (and b!6722998 (not c!1246449)) b!6723001))

(assert (= (and b!6723001 (not res!2750773)) b!6723006))

(assert (= (and b!6723006 res!2750772) b!6723003))

(assert (= (and b!6723003 res!2750775) b!6723010))

(assert (= (and b!6723010 res!2750778) b!6723009))

(assert (= (and b!6723006 (not res!2750774)) b!6723005))

(assert (= (and b!6723005 res!2750771) b!6723002))

(assert (= (and b!6723002 (not res!2750776)) b!6723004))

(assert (= (and b!6723004 (not res!2750777)) b!6723007))

(assert (= (or b!6723008 b!6723002 b!6723003) bm!606902))

(declare-fun m!7483858 () Bool)

(assert (=> bm!606902 m!7483858))

(assert (=> d!2112638 m!7483858))

(assert (=> d!2112638 m!7483730))

(declare-fun m!7483860 () Bool)

(assert (=> b!6723009 m!7483860))

(assert (=> b!6722999 m!7483860))

(assert (=> b!6722999 m!7483860))

(declare-fun m!7483862 () Bool)

(assert (=> b!6722999 m!7483862))

(declare-fun m!7483864 () Bool)

(assert (=> b!6722999 m!7483864))

(assert (=> b!6722999 m!7483862))

(assert (=> b!6722999 m!7483864))

(declare-fun m!7483866 () Bool)

(assert (=> b!6722999 m!7483866))

(assert (=> b!6723011 m!7483698))

(assert (=> b!6723004 m!7483864))

(assert (=> b!6723004 m!7483864))

(declare-fun m!7483868 () Bool)

(assert (=> b!6723004 m!7483868))

(assert (=> b!6723007 m!7483860))

(assert (=> b!6723010 m!7483864))

(assert (=> b!6723010 m!7483864))

(assert (=> b!6723010 m!7483868))

(assert (=> d!2112578 d!2112638))

(declare-fun bm!606903 () Bool)

(declare-fun call!606909 () Bool)

(declare-fun call!606908 () Bool)

(assert (=> bm!606903 (= call!606909 call!606908)))

(declare-fun bm!606904 () Bool)

(declare-fun call!606910 () Bool)

(declare-fun c!1246450 () Bool)

(assert (=> bm!606904 (= call!606910 (validRegex!8285 (ite c!1246450 (regOne!33611 (reg!16878 r!7292)) (regOne!33610 (reg!16878 r!7292)))))))

(declare-fun c!1246451 () Bool)

(declare-fun bm!606905 () Bool)

(assert (=> bm!606905 (= call!606908 (validRegex!8285 (ite c!1246451 (reg!16878 (reg!16878 r!7292)) (ite c!1246450 (regTwo!33611 (reg!16878 r!7292)) (regTwo!33610 (reg!16878 r!7292))))))))

(declare-fun b!6723012 () Bool)

(declare-fun e!4062077 () Bool)

(declare-fun e!4062081 () Bool)

(assert (=> b!6723012 (= e!4062077 e!4062081)))

(assert (=> b!6723012 (= c!1246450 ((_ is Union!16549) (reg!16878 r!7292)))))

(declare-fun b!6723013 () Bool)

(declare-fun e!4062078 () Bool)

(assert (=> b!6723013 (= e!4062078 call!606908)))

(declare-fun b!6723014 () Bool)

(declare-fun res!2750782 () Bool)

(declare-fun e!4062079 () Bool)

(assert (=> b!6723014 (=> (not res!2750782) (not e!4062079))))

(assert (=> b!6723014 (= res!2750782 call!606910)))

(assert (=> b!6723014 (= e!4062081 e!4062079)))

(declare-fun b!6723015 () Bool)

(declare-fun e!4062075 () Bool)

(assert (=> b!6723015 (= e!4062075 e!4062077)))

(assert (=> b!6723015 (= c!1246451 ((_ is Star!16549) (reg!16878 r!7292)))))

(declare-fun b!6723016 () Bool)

(declare-fun res!2750783 () Bool)

(declare-fun e!4062080 () Bool)

(assert (=> b!6723016 (=> res!2750783 e!4062080)))

(assert (=> b!6723016 (= res!2750783 (not ((_ is Concat!25394) (reg!16878 r!7292))))))

(assert (=> b!6723016 (= e!4062081 e!4062080)))

(declare-fun b!6723018 () Bool)

(declare-fun e!4062076 () Bool)

(assert (=> b!6723018 (= e!4062080 e!4062076)))

(declare-fun res!2750781 () Bool)

(assert (=> b!6723018 (=> (not res!2750781) (not e!4062076))))

(assert (=> b!6723018 (= res!2750781 call!606910)))

(declare-fun b!6723019 () Bool)

(assert (=> b!6723019 (= e!4062079 call!606909)))

(declare-fun b!6723020 () Bool)

(assert (=> b!6723020 (= e!4062076 call!606909)))

(declare-fun d!2112640 () Bool)

(declare-fun res!2750779 () Bool)

(assert (=> d!2112640 (=> res!2750779 e!4062075)))

(assert (=> d!2112640 (= res!2750779 ((_ is ElementMatch!16549) (reg!16878 r!7292)))))

(assert (=> d!2112640 (= (validRegex!8285 (reg!16878 r!7292)) e!4062075)))

(declare-fun b!6723017 () Bool)

(assert (=> b!6723017 (= e!4062077 e!4062078)))

(declare-fun res!2750780 () Bool)

(assert (=> b!6723017 (= res!2750780 (not (nullable!6536 (reg!16878 (reg!16878 r!7292)))))))

(assert (=> b!6723017 (=> (not res!2750780) (not e!4062078))))

(assert (= (and d!2112640 (not res!2750779)) b!6723015))

(assert (= (and b!6723015 c!1246451) b!6723017))

(assert (= (and b!6723015 (not c!1246451)) b!6723012))

(assert (= (and b!6723017 res!2750780) b!6723013))

(assert (= (and b!6723012 c!1246450) b!6723014))

(assert (= (and b!6723012 (not c!1246450)) b!6723016))

(assert (= (and b!6723014 res!2750782) b!6723019))

(assert (= (and b!6723016 (not res!2750783)) b!6723018))

(assert (= (and b!6723018 res!2750781) b!6723020))

(assert (= (or b!6723019 b!6723020) bm!606903))

(assert (= (or b!6723014 b!6723018) bm!606904))

(assert (= (or b!6723013 bm!606903) bm!606905))

(declare-fun m!7483870 () Bool)

(assert (=> bm!606904 m!7483870))

(declare-fun m!7483874 () Bool)

(assert (=> bm!606905 m!7483874))

(declare-fun m!7483878 () Bool)

(assert (=> b!6723017 m!7483878))

(assert (=> d!2112578 d!2112640))

(assert (=> bm!606865 d!2112576))

(declare-fun bs!1788464 () Bool)

(declare-fun d!2112642 () Bool)

(assert (= bs!1788464 (and d!2112642 d!2112524)))

(declare-fun lambda!377092 () Int)

(assert (=> bs!1788464 (= lambda!377092 lambda!377049)))

(declare-fun bs!1788465 () Bool)

(assert (= bs!1788465 (and d!2112642 d!2112544)))

(assert (=> bs!1788465 (= lambda!377092 lambda!377060)))

(declare-fun bs!1788466 () Bool)

(assert (= bs!1788466 (and d!2112642 d!2112526)))

(assert (=> bs!1788466 (= lambda!377092 lambda!377050)))

(declare-fun bs!1788468 () Bool)

(assert (= bs!1788468 (and d!2112642 d!2112528)))

(assert (=> bs!1788468 (= lambda!377092 lambda!377057)))

(declare-fun bs!1788469 () Bool)

(assert (= bs!1788469 (and d!2112642 d!2112584)))

(assert (=> bs!1788469 (= lambda!377092 lambda!377082)))

(declare-fun bs!1788470 () Bool)

(assert (= bs!1788470 (and d!2112642 d!2112608)))

(assert (=> bs!1788470 (= lambda!377092 lambda!377086)))

(declare-fun bs!1788471 () Bool)

(assert (= bs!1788471 (and d!2112642 d!2112522)))

(assert (=> bs!1788471 (= lambda!377092 lambda!377048)))

(declare-fun bs!1788472 () Bool)

(assert (= bs!1788472 (and d!2112642 d!2112548)))

(assert (=> bs!1788472 (= lambda!377092 lambda!377063)))

(declare-fun b!6723021 () Bool)

(declare-fun e!4062083 () Regex!16549)

(assert (=> b!6723021 (= e!4062083 (h!72270 (t!379625 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6723022 () Bool)

(declare-fun e!4062087 () Regex!16549)

(assert (=> b!6723022 (= e!4062087 EmptyExpr!16549)))

(declare-fun e!4062082 () Bool)

(assert (=> d!2112642 e!4062082))

(declare-fun res!2750784 () Bool)

(assert (=> d!2112642 (=> (not res!2750784) (not e!4062082))))

(declare-fun lt!2436886 () Regex!16549)

(assert (=> d!2112642 (= res!2750784 (validRegex!8285 lt!2436886))))

(assert (=> d!2112642 (= lt!2436886 e!4062083)))

(declare-fun c!1246453 () Bool)

(declare-fun e!4062084 () Bool)

(assert (=> d!2112642 (= c!1246453 e!4062084)))

(declare-fun res!2750785 () Bool)

(assert (=> d!2112642 (=> (not res!2750785) (not e!4062084))))

(assert (=> d!2112642 (= res!2750785 ((_ is Cons!65822) (t!379625 (exprs!6433 (h!72271 zl!343)))))))

(assert (=> d!2112642 (forall!15749 (t!379625 (exprs!6433 (h!72271 zl!343))) lambda!377092)))

(assert (=> d!2112642 (= (generalisedConcat!2146 (t!379625 (exprs!6433 (h!72271 zl!343)))) lt!2436886)))

(declare-fun b!6723023 () Bool)

(declare-fun e!4062086 () Bool)

(assert (=> b!6723023 (= e!4062086 (isEmptyExpr!1915 lt!2436886))))

(declare-fun b!6723024 () Bool)

(declare-fun e!4062085 () Bool)

(assert (=> b!6723024 (= e!4062085 (isConcat!1438 lt!2436886))))

(declare-fun b!6723025 () Bool)

(assert (=> b!6723025 (= e!4062086 e!4062085)))

(declare-fun c!1246455 () Bool)

(assert (=> b!6723025 (= c!1246455 (isEmpty!38149 (tail!12611 (t!379625 (exprs!6433 (h!72271 zl!343))))))))

(declare-fun b!6723026 () Bool)

(assert (=> b!6723026 (= e!4062087 (Concat!25394 (h!72270 (t!379625 (exprs!6433 (h!72271 zl!343)))) (generalisedConcat!2146 (t!379625 (t!379625 (exprs!6433 (h!72271 zl!343)))))))))

(declare-fun b!6723027 () Bool)

(assert (=> b!6723027 (= e!4062082 e!4062086)))

(declare-fun c!1246454 () Bool)

(assert (=> b!6723027 (= c!1246454 (isEmpty!38149 (t!379625 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6723028 () Bool)

(assert (=> b!6723028 (= e!4062083 e!4062087)))

(declare-fun c!1246452 () Bool)

(assert (=> b!6723028 (= c!1246452 ((_ is Cons!65822) (t!379625 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6723029 () Bool)

(assert (=> b!6723029 (= e!4062085 (= lt!2436886 (head!13526 (t!379625 (exprs!6433 (h!72271 zl!343))))))))

(declare-fun b!6723030 () Bool)

(assert (=> b!6723030 (= e!4062084 (isEmpty!38149 (t!379625 (t!379625 (exprs!6433 (h!72271 zl!343))))))))

(assert (= (and d!2112642 res!2750785) b!6723030))

(assert (= (and d!2112642 c!1246453) b!6723021))

(assert (= (and d!2112642 (not c!1246453)) b!6723028))

(assert (= (and b!6723028 c!1246452) b!6723026))

(assert (= (and b!6723028 (not c!1246452)) b!6723022))

(assert (= (and d!2112642 res!2750784) b!6723027))

(assert (= (and b!6723027 c!1246454) b!6723023))

(assert (= (and b!6723027 (not c!1246454)) b!6723025))

(assert (= (and b!6723025 c!1246455) b!6723029))

(assert (= (and b!6723025 (not c!1246455)) b!6723024))

(declare-fun m!7483896 () Bool)

(assert (=> b!6723025 m!7483896))

(assert (=> b!6723025 m!7483896))

(declare-fun m!7483898 () Bool)

(assert (=> b!6723025 m!7483898))

(declare-fun m!7483900 () Bool)

(assert (=> b!6723023 m!7483900))

(declare-fun m!7483902 () Bool)

(assert (=> b!6723024 m!7483902))

(declare-fun m!7483904 () Bool)

(assert (=> b!6723026 m!7483904))

(declare-fun m!7483906 () Bool)

(assert (=> d!2112642 m!7483906))

(declare-fun m!7483908 () Bool)

(assert (=> d!2112642 m!7483908))

(declare-fun m!7483910 () Bool)

(assert (=> b!6723030 m!7483910))

(assert (=> b!6723027 m!7483652))

(declare-fun m!7483912 () Bool)

(assert (=> b!6723029 m!7483912))

(assert (=> b!6722664 d!2112642))

(declare-fun b!6723040 () Bool)

(declare-fun e!4062100 () Bool)

(declare-fun e!4062095 () Bool)

(assert (=> b!6723040 (= e!4062100 e!4062095)))

(declare-fun c!1246460 () Bool)

(assert (=> b!6723040 (= c!1246460 ((_ is EmptyLang!16549) (derivativeStep!5221 r!7292 (head!13525 s!2326))))))

(declare-fun b!6723041 () Bool)

(declare-fun e!4062099 () Bool)

(assert (=> b!6723041 (= e!4062099 (matchR!8732 (derivativeStep!5221 (derivativeStep!5221 r!7292 (head!13525 s!2326)) (head!13525 (tail!12610 s!2326))) (tail!12610 (tail!12610 s!2326))))))

(declare-fun b!6723042 () Bool)

(declare-fun lt!2436887 () Bool)

(assert (=> b!6723042 (= e!4062095 (not lt!2436887))))

(declare-fun b!6723043 () Bool)

(declare-fun res!2750793 () Bool)

(declare-fun e!4062096 () Bool)

(assert (=> b!6723043 (=> res!2750793 e!4062096)))

(assert (=> b!6723043 (= res!2750793 (not ((_ is ElementMatch!16549) (derivativeStep!5221 r!7292 (head!13525 s!2326)))))))

(assert (=> b!6723043 (= e!4062095 e!4062096)))

(declare-fun b!6723044 () Bool)

(declare-fun e!4062098 () Bool)

(declare-fun e!4062101 () Bool)

(assert (=> b!6723044 (= e!4062098 e!4062101)))

(declare-fun res!2750796 () Bool)

(assert (=> b!6723044 (=> res!2750796 e!4062101)))

(declare-fun call!606914 () Bool)

(assert (=> b!6723044 (= res!2750796 call!606914)))

(declare-fun b!6723045 () Bool)

(declare-fun res!2750795 () Bool)

(declare-fun e!4062097 () Bool)

(assert (=> b!6723045 (=> (not res!2750795) (not e!4062097))))

(assert (=> b!6723045 (= res!2750795 (not call!606914))))

(declare-fun b!6723046 () Bool)

(declare-fun res!2750797 () Bool)

(assert (=> b!6723046 (=> res!2750797 e!4062101)))

(assert (=> b!6723046 (= res!2750797 (not (isEmpty!38146 (tail!12610 (tail!12610 s!2326)))))))

(declare-fun d!2112652 () Bool)

(assert (=> d!2112652 e!4062100))

(declare-fun c!1246459 () Bool)

(assert (=> d!2112652 (= c!1246459 ((_ is EmptyExpr!16549) (derivativeStep!5221 r!7292 (head!13525 s!2326))))))

(assert (=> d!2112652 (= lt!2436887 e!4062099)))

(declare-fun c!1246458 () Bool)

(assert (=> d!2112652 (= c!1246458 (isEmpty!38146 (tail!12610 s!2326)))))

(assert (=> d!2112652 (validRegex!8285 (derivativeStep!5221 r!7292 (head!13525 s!2326)))))

(assert (=> d!2112652 (= (matchR!8732 (derivativeStep!5221 r!7292 (head!13525 s!2326)) (tail!12610 s!2326)) lt!2436887)))

(declare-fun b!6723047 () Bool)

(assert (=> b!6723047 (= e!4062096 e!4062098)))

(declare-fun res!2750791 () Bool)

(assert (=> b!6723047 (=> (not res!2750791) (not e!4062098))))

(assert (=> b!6723047 (= res!2750791 (not lt!2436887))))

(declare-fun b!6723048 () Bool)

(declare-fun res!2750794 () Bool)

(assert (=> b!6723048 (=> res!2750794 e!4062096)))

(assert (=> b!6723048 (= res!2750794 e!4062097)))

(declare-fun res!2750792 () Bool)

(assert (=> b!6723048 (=> (not res!2750792) (not e!4062097))))

(assert (=> b!6723048 (= res!2750792 lt!2436887)))

(declare-fun b!6723049 () Bool)

(assert (=> b!6723049 (= e!4062101 (not (= (head!13525 (tail!12610 s!2326)) (c!1246247 (derivativeStep!5221 r!7292 (head!13525 s!2326))))))))

(declare-fun b!6723050 () Bool)

(assert (=> b!6723050 (= e!4062100 (= lt!2436887 call!606914))))

(declare-fun b!6723051 () Bool)

(assert (=> b!6723051 (= e!4062097 (= (head!13525 (tail!12610 s!2326)) (c!1246247 (derivativeStep!5221 r!7292 (head!13525 s!2326)))))))

(declare-fun b!6723052 () Bool)

(declare-fun res!2750798 () Bool)

(assert (=> b!6723052 (=> (not res!2750798) (not e!4062097))))

(assert (=> b!6723052 (= res!2750798 (isEmpty!38146 (tail!12610 (tail!12610 s!2326))))))

(declare-fun bm!606909 () Bool)

(assert (=> bm!606909 (= call!606914 (isEmpty!38146 (tail!12610 s!2326)))))

(declare-fun b!6723053 () Bool)

(assert (=> b!6723053 (= e!4062099 (nullable!6536 (derivativeStep!5221 r!7292 (head!13525 s!2326))))))

(assert (= (and d!2112652 c!1246458) b!6723053))

(assert (= (and d!2112652 (not c!1246458)) b!6723041))

(assert (= (and d!2112652 c!1246459) b!6723050))

(assert (= (and d!2112652 (not c!1246459)) b!6723040))

(assert (= (and b!6723040 c!1246460) b!6723042))

(assert (= (and b!6723040 (not c!1246460)) b!6723043))

(assert (= (and b!6723043 (not res!2750793)) b!6723048))

(assert (= (and b!6723048 res!2750792) b!6723045))

(assert (= (and b!6723045 res!2750795) b!6723052))

(assert (= (and b!6723052 res!2750798) b!6723051))

(assert (= (and b!6723048 (not res!2750794)) b!6723047))

(assert (= (and b!6723047 res!2750791) b!6723044))

(assert (= (and b!6723044 (not res!2750796)) b!6723046))

(assert (= (and b!6723046 (not res!2750797)) b!6723049))

(assert (= (or b!6723050 b!6723044 b!6723045) bm!606909))

(assert (=> bm!606909 m!7483584))

(assert (=> bm!606909 m!7483590))

(assert (=> d!2112652 m!7483584))

(assert (=> d!2112652 m!7483590))

(assert (=> d!2112652 m!7483582))

(declare-fun m!7483914 () Bool)

(assert (=> d!2112652 m!7483914))

(assert (=> b!6723051 m!7483584))

(declare-fun m!7483916 () Bool)

(assert (=> b!6723051 m!7483916))

(assert (=> b!6723041 m!7483584))

(assert (=> b!6723041 m!7483916))

(assert (=> b!6723041 m!7483582))

(assert (=> b!6723041 m!7483916))

(declare-fun m!7483918 () Bool)

(assert (=> b!6723041 m!7483918))

(assert (=> b!6723041 m!7483584))

(declare-fun m!7483920 () Bool)

(assert (=> b!6723041 m!7483920))

(assert (=> b!6723041 m!7483918))

(assert (=> b!6723041 m!7483920))

(declare-fun m!7483922 () Bool)

(assert (=> b!6723041 m!7483922))

(assert (=> b!6723053 m!7483582))

(declare-fun m!7483926 () Bool)

(assert (=> b!6723053 m!7483926))

(assert (=> b!6723046 m!7483584))

(assert (=> b!6723046 m!7483920))

(assert (=> b!6723046 m!7483920))

(declare-fun m!7483928 () Bool)

(assert (=> b!6723046 m!7483928))

(assert (=> b!6723049 m!7483584))

(assert (=> b!6723049 m!7483916))

(assert (=> b!6723052 m!7483584))

(assert (=> b!6723052 m!7483920))

(assert (=> b!6723052 m!7483920))

(assert (=> b!6723052 m!7483928))

(assert (=> b!6722579 d!2112652))

(declare-fun b!6723095 () Bool)

(declare-fun c!1246475 () Bool)

(assert (=> b!6723095 (= c!1246475 (nullable!6536 (regOne!33610 r!7292)))))

(declare-fun e!4062132 () Regex!16549)

(declare-fun e!4062130 () Regex!16549)

(assert (=> b!6723095 (= e!4062132 e!4062130)))

(declare-fun b!6723096 () Bool)

(declare-fun e!4062131 () Regex!16549)

(declare-fun e!4062129 () Regex!16549)

(assert (=> b!6723096 (= e!4062131 e!4062129)))

(declare-fun c!1246477 () Bool)

(assert (=> b!6723096 (= c!1246477 ((_ is ElementMatch!16549) r!7292))))

(declare-fun b!6723097 () Bool)

(declare-fun e!4062128 () Regex!16549)

(assert (=> b!6723097 (= e!4062128 e!4062132)))

(declare-fun c!1246479 () Bool)

(assert (=> b!6723097 (= c!1246479 ((_ is Star!16549) r!7292))))

(declare-fun b!6723098 () Bool)

(declare-fun call!606927 () Regex!16549)

(declare-fun call!606928 () Regex!16549)

(assert (=> b!6723098 (= e!4062128 (Union!16549 call!606927 call!606928))))

(declare-fun bm!606921 () Bool)

(declare-fun call!606926 () Regex!16549)

(assert (=> bm!606921 (= call!606926 call!606927)))

(declare-fun b!6723099 () Bool)

(assert (=> b!6723099 (= e!4062131 EmptyLang!16549)))

(declare-fun c!1246478 () Bool)

(declare-fun bm!606922 () Bool)

(assert (=> bm!606922 (= call!606927 (derivativeStep!5221 (ite c!1246478 (regOne!33611 r!7292) (ite c!1246479 (reg!16878 r!7292) (regOne!33610 r!7292))) (head!13525 s!2326)))))

(declare-fun d!2112654 () Bool)

(declare-fun lt!2436890 () Regex!16549)

(assert (=> d!2112654 (validRegex!8285 lt!2436890)))

(assert (=> d!2112654 (= lt!2436890 e!4062131)))

(declare-fun c!1246480 () Bool)

(assert (=> d!2112654 (= c!1246480 (or ((_ is EmptyExpr!16549) r!7292) ((_ is EmptyLang!16549) r!7292)))))

(assert (=> d!2112654 (validRegex!8285 r!7292)))

(assert (=> d!2112654 (= (derivativeStep!5221 r!7292 (head!13525 s!2326)) lt!2436890)))

(declare-fun b!6723100 () Bool)

(assert (=> b!6723100 (= e!4062129 (ite (= (head!13525 s!2326) (c!1246247 r!7292)) EmptyExpr!16549 EmptyLang!16549))))

(declare-fun b!6723101 () Bool)

(declare-fun call!606929 () Regex!16549)

(assert (=> b!6723101 (= e!4062130 (Union!16549 (Concat!25394 call!606926 (regTwo!33610 r!7292)) call!606929))))

(declare-fun bm!606923 () Bool)

(assert (=> bm!606923 (= call!606928 (derivativeStep!5221 (ite c!1246478 (regTwo!33611 r!7292) (ite c!1246475 (regTwo!33610 r!7292) (regOne!33610 r!7292))) (head!13525 s!2326)))))

(declare-fun b!6723102 () Bool)

(assert (=> b!6723102 (= e!4062132 (Concat!25394 call!606926 r!7292))))

(declare-fun bm!606924 () Bool)

(assert (=> bm!606924 (= call!606929 call!606928)))

(declare-fun b!6723103 () Bool)

(assert (=> b!6723103 (= c!1246478 ((_ is Union!16549) r!7292))))

(assert (=> b!6723103 (= e!4062129 e!4062128)))

(declare-fun b!6723104 () Bool)

(assert (=> b!6723104 (= e!4062130 (Union!16549 (Concat!25394 call!606929 (regTwo!33610 r!7292)) EmptyLang!16549))))

(assert (= (and d!2112654 c!1246480) b!6723099))

(assert (= (and d!2112654 (not c!1246480)) b!6723096))

(assert (= (and b!6723096 c!1246477) b!6723100))

(assert (= (and b!6723096 (not c!1246477)) b!6723103))

(assert (= (and b!6723103 c!1246478) b!6723098))

(assert (= (and b!6723103 (not c!1246478)) b!6723097))

(assert (= (and b!6723097 c!1246479) b!6723102))

(assert (= (and b!6723097 (not c!1246479)) b!6723095))

(assert (= (and b!6723095 c!1246475) b!6723101))

(assert (= (and b!6723095 (not c!1246475)) b!6723104))

(assert (= (or b!6723101 b!6723104) bm!606924))

(assert (= (or b!6723102 b!6723101) bm!606921))

(assert (= (or b!6723098 bm!606924) bm!606923))

(assert (= (or b!6723098 bm!606921) bm!606922))

(assert (=> b!6723095 m!7483498))

(assert (=> bm!606922 m!7483580))

(declare-fun m!7483950 () Bool)

(assert (=> bm!606922 m!7483950))

(declare-fun m!7483952 () Bool)

(assert (=> d!2112654 m!7483952))

(assert (=> d!2112654 m!7483388))

(assert (=> bm!606923 m!7483580))

(declare-fun m!7483954 () Bool)

(assert (=> bm!606923 m!7483954))

(assert (=> b!6722579 d!2112654))

(declare-fun d!2112670 () Bool)

(assert (=> d!2112670 (= (head!13525 s!2326) (h!72272 s!2326))))

(assert (=> b!6722579 d!2112670))

(assert (=> b!6722579 d!2112588))

(declare-fun d!2112672 () Bool)

(assert (=> d!2112672 (= (nullable!6536 (regOne!33610 r!7292)) (nullableFct!2449 (regOne!33610 r!7292)))))

(declare-fun bs!1788474 () Bool)

(assert (= bs!1788474 d!2112672))

(declare-fun m!7483956 () Bool)

(assert (=> bs!1788474 m!7483956))

(assert (=> b!6722364 d!2112672))

(declare-fun d!2112674 () Bool)

(assert (=> d!2112674 (= (nullable!6536 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))) (nullableFct!2449 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 r!7292 Nil!65822))))))))

(declare-fun bs!1788475 () Bool)

(assert (= bs!1788475 d!2112674))

(declare-fun m!7483958 () Bool)

(assert (=> bs!1788475 m!7483958))

(assert (=> b!6722392 d!2112674))

(declare-fun bs!1788476 () Bool)

(declare-fun d!2112676 () Bool)

(assert (= bs!1788476 (and d!2112676 d!2112524)))

(declare-fun lambda!377093 () Int)

(assert (=> bs!1788476 (= lambda!377093 lambda!377049)))

(declare-fun bs!1788477 () Bool)

(assert (= bs!1788477 (and d!2112676 d!2112544)))

(assert (=> bs!1788477 (= lambda!377093 lambda!377060)))

(declare-fun bs!1788478 () Bool)

(assert (= bs!1788478 (and d!2112676 d!2112526)))

(assert (=> bs!1788478 (= lambda!377093 lambda!377050)))

(declare-fun bs!1788479 () Bool)

(assert (= bs!1788479 (and d!2112676 d!2112528)))

(assert (=> bs!1788479 (= lambda!377093 lambda!377057)))

(declare-fun bs!1788480 () Bool)

(assert (= bs!1788480 (and d!2112676 d!2112584)))

(assert (=> bs!1788480 (= lambda!377093 lambda!377082)))

(declare-fun bs!1788481 () Bool)

(assert (= bs!1788481 (and d!2112676 d!2112522)))

(assert (=> bs!1788481 (= lambda!377093 lambda!377048)))

(declare-fun bs!1788482 () Bool)

(assert (= bs!1788482 (and d!2112676 d!2112548)))

(assert (=> bs!1788482 (= lambda!377093 lambda!377063)))

(declare-fun bs!1788483 () Bool)

(assert (= bs!1788483 (and d!2112676 d!2112608)))

(assert (=> bs!1788483 (= lambda!377093 lambda!377086)))

(declare-fun bs!1788484 () Bool)

(assert (= bs!1788484 (and d!2112676 d!2112642)))

(assert (=> bs!1788484 (= lambda!377093 lambda!377092)))

(assert (=> d!2112676 (= (inv!84619 setElem!45821) (forall!15749 (exprs!6433 setElem!45821) lambda!377093))))

(declare-fun bs!1788485 () Bool)

(assert (= bs!1788485 d!2112676))

(declare-fun m!7483960 () Bool)

(assert (=> bs!1788485 m!7483960))

(assert (=> setNonEmpty!45821 d!2112676))

(declare-fun d!2112678 () Bool)

(assert (=> d!2112678 true))

(declare-fun setRes!45824 () Bool)

(assert (=> d!2112678 setRes!45824))

(declare-fun condSetEmpty!45824 () Bool)

(declare-fun res!2750813 () (InoxSet Context!11866))

(assert (=> d!2112678 (= condSetEmpty!45824 (= res!2750813 ((as const (Array Context!11866 Bool)) false)))))

(assert (=> d!2112678 (= (choose!50082 z!1189 lambda!377005) res!2750813)))

(declare-fun setIsEmpty!45824 () Bool)

(assert (=> setIsEmpty!45824 setRes!45824))

(declare-fun setNonEmpty!45824 () Bool)

(declare-fun tp!1843288 () Bool)

(declare-fun setElem!45824 () Context!11866)

(declare-fun e!4062141 () Bool)

(assert (=> setNonEmpty!45824 (= setRes!45824 (and tp!1843288 (inv!84619 setElem!45824) e!4062141))))

(declare-fun setRest!45824 () (InoxSet Context!11866))

(assert (=> setNonEmpty!45824 (= res!2750813 ((_ map or) (store ((as const (Array Context!11866 Bool)) false) setElem!45824 true) setRest!45824))))

(declare-fun b!6723118 () Bool)

(declare-fun tp!1843289 () Bool)

(assert (=> b!6723118 (= e!4062141 tp!1843289)))

(assert (= (and d!2112678 condSetEmpty!45824) setIsEmpty!45824))

(assert (= (and d!2112678 (not condSetEmpty!45824)) setNonEmpty!45824))

(assert (= setNonEmpty!45824 b!6723118))

(declare-fun m!7483976 () Bool)

(assert (=> setNonEmpty!45824 m!7483976))

(assert (=> d!2112556 d!2112678))

(declare-fun d!2112688 () Bool)

(declare-fun res!2750814 () Bool)

(declare-fun e!4062142 () Bool)

(assert (=> d!2112688 (=> res!2750814 e!4062142)))

(assert (=> d!2112688 (= res!2750814 ((_ is Nil!65822) (exprs!6433 (h!72271 zl!343))))))

(assert (=> d!2112688 (= (forall!15749 (exprs!6433 (h!72271 zl!343)) lambda!377050) e!4062142)))

(declare-fun b!6723119 () Bool)

(declare-fun e!4062143 () Bool)

(assert (=> b!6723119 (= e!4062142 e!4062143)))

(declare-fun res!2750815 () Bool)

(assert (=> b!6723119 (=> (not res!2750815) (not e!4062143))))

(assert (=> b!6723119 (= res!2750815 (dynLambda!26249 lambda!377050 (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6723120 () Bool)

(assert (=> b!6723120 (= e!4062143 (forall!15749 (t!379625 (exprs!6433 (h!72271 zl!343))) lambda!377050))))

(assert (= (and d!2112688 (not res!2750814)) b!6723119))

(assert (= (and b!6723119 res!2750815) b!6723120))

(declare-fun b_lambda!253097 () Bool)

(assert (=> (not b_lambda!253097) (not b!6723119)))

(declare-fun m!7483978 () Bool)

(assert (=> b!6723119 m!7483978))

(declare-fun m!7483980 () Bool)

(assert (=> b!6723120 m!7483980))

(assert (=> d!2112526 d!2112688))

(assert (=> bs!1788389 d!2112558))

(declare-fun d!2112690 () Bool)

(assert (=> d!2112690 true))

(assert (=> d!2112690 true))

(declare-fun res!2750816 () Bool)

(assert (=> d!2112690 (= (choose!50087 lambda!377002) res!2750816)))

(assert (=> d!2112572 d!2112690))

(declare-fun bm!606931 () Bool)

(declare-fun call!606937 () Bool)

(declare-fun call!606936 () Bool)

(assert (=> bm!606931 (= call!606937 call!606936)))

(declare-fun c!1246486 () Bool)

(declare-fun call!606938 () Bool)

(declare-fun bm!606932 () Bool)

(assert (=> bm!606932 (= call!606938 (validRegex!8285 (ite c!1246486 (regOne!33611 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))) (regOne!33610 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))))))))

(declare-fun bm!606933 () Bool)

(declare-fun c!1246487 () Bool)

(assert (=> bm!606933 (= call!606936 (validRegex!8285 (ite c!1246487 (reg!16878 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))) (ite c!1246486 (regTwo!33611 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))) (regTwo!33610 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292)))))))))

(declare-fun b!6723121 () Bool)

(declare-fun e!4062146 () Bool)

(declare-fun e!4062150 () Bool)

(assert (=> b!6723121 (= e!4062146 e!4062150)))

(assert (=> b!6723121 (= c!1246486 ((_ is Union!16549) (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(declare-fun b!6723122 () Bool)

(declare-fun e!4062147 () Bool)

(assert (=> b!6723122 (= e!4062147 call!606936)))

(declare-fun b!6723123 () Bool)

(declare-fun res!2750820 () Bool)

(declare-fun e!4062148 () Bool)

(assert (=> b!6723123 (=> (not res!2750820) (not e!4062148))))

(assert (=> b!6723123 (= res!2750820 call!606938)))

(assert (=> b!6723123 (= e!4062150 e!4062148)))

(declare-fun b!6723124 () Bool)

(declare-fun e!4062144 () Bool)

(assert (=> b!6723124 (= e!4062144 e!4062146)))

(assert (=> b!6723124 (= c!1246487 ((_ is Star!16549) (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(declare-fun b!6723125 () Bool)

(declare-fun res!2750821 () Bool)

(declare-fun e!4062149 () Bool)

(assert (=> b!6723125 (=> res!2750821 e!4062149)))

(assert (=> b!6723125 (= res!2750821 (not ((_ is Concat!25394) (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292)))))))

(assert (=> b!6723125 (= e!4062150 e!4062149)))

(declare-fun b!6723127 () Bool)

(declare-fun e!4062145 () Bool)

(assert (=> b!6723127 (= e!4062149 e!4062145)))

(declare-fun res!2750819 () Bool)

(assert (=> b!6723127 (=> (not res!2750819) (not e!4062145))))

(assert (=> b!6723127 (= res!2750819 call!606938)))

(declare-fun b!6723128 () Bool)

(assert (=> b!6723128 (= e!4062148 call!606937)))

(declare-fun b!6723129 () Bool)

(assert (=> b!6723129 (= e!4062145 call!606937)))

(declare-fun d!2112692 () Bool)

(declare-fun res!2750817 () Bool)

(assert (=> d!2112692 (=> res!2750817 e!4062144)))

(assert (=> d!2112692 (= res!2750817 ((_ is ElementMatch!16549) (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(assert (=> d!2112692 (= (validRegex!8285 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))) e!4062144)))

(declare-fun b!6723126 () Bool)

(assert (=> b!6723126 (= e!4062146 e!4062147)))

(declare-fun res!2750818 () Bool)

(assert (=> b!6723126 (= res!2750818 (not (nullable!6536 (reg!16878 (ite c!1246406 (regOne!33611 r!7292) (regOne!33610 r!7292))))))))

(assert (=> b!6723126 (=> (not res!2750818) (not e!4062147))))

(assert (= (and d!2112692 (not res!2750817)) b!6723124))

(assert (= (and b!6723124 c!1246487) b!6723126))

(assert (= (and b!6723124 (not c!1246487)) b!6723121))

(assert (= (and b!6723126 res!2750818) b!6723122))

(assert (= (and b!6723121 c!1246486) b!6723123))

(assert (= (and b!6723121 (not c!1246486)) b!6723125))

(assert (= (and b!6723123 res!2750820) b!6723128))

(assert (= (and b!6723125 (not res!2750821)) b!6723127))

(assert (= (and b!6723127 res!2750819) b!6723129))

(assert (= (or b!6723128 b!6723129) bm!606931))

(assert (= (or b!6723123 b!6723127) bm!606932))

(assert (= (or b!6723122 bm!606931) bm!606933))

(declare-fun m!7483982 () Bool)

(assert (=> bm!606932 m!7483982))

(declare-fun m!7483984 () Bool)

(assert (=> bm!606933 m!7483984))

(declare-fun m!7483986 () Bool)

(assert (=> b!6723126 m!7483986))

(assert (=> bm!606886 d!2112692))

(assert (=> b!6722587 d!2112670))

(assert (=> b!6722589 d!2112670))

(declare-fun b!6723130 () Bool)

(declare-fun e!4062151 () (InoxSet Context!11866))

(declare-fun call!606944 () (InoxSet Context!11866))

(declare-fun call!606939 () (InoxSet Context!11866))

(assert (=> b!6723130 (= e!4062151 ((_ map or) call!606944 call!606939))))

(declare-fun bm!606934 () Bool)

(declare-fun call!606942 () (InoxSet Context!11866))

(assert (=> bm!606934 (= call!606942 call!606939)))

(declare-fun b!6723131 () Bool)

(declare-fun c!1246491 () Bool)

(declare-fun e!4062154 () Bool)

(assert (=> b!6723131 (= c!1246491 e!4062154)))

(declare-fun res!2750822 () Bool)

(assert (=> b!6723131 (=> (not res!2750822) (not e!4062154))))

(assert (=> b!6723131 (= res!2750822 ((_ is Concat!25394) (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(declare-fun e!4062153 () (InoxSet Context!11866))

(assert (=> b!6723131 (= e!4062153 e!4062151)))

(declare-fun b!6723132 () Bool)

(declare-fun e!4062155 () (InoxSet Context!11866))

(assert (=> b!6723132 (= e!4062155 call!606942)))

(declare-fun b!6723133 () Bool)

(declare-fun e!4062156 () (InoxSet Context!11866))

(assert (=> b!6723133 (= e!4062156 (store ((as const (Array Context!11866 Bool)) false) (ite c!1246301 (Context!11867 Nil!65822) (Context!11867 call!606858)) true))))

(declare-fun bm!606935 () Bool)

(declare-fun call!606941 () List!65946)

(declare-fun c!1246490 () Bool)

(assert (=> bm!606935 (= call!606941 ($colon$colon!2366 (exprs!6433 (ite c!1246301 (Context!11867 Nil!65822) (Context!11867 call!606858))) (ite (or c!1246491 c!1246490) (regTwo!33610 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))) (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292)))))))

(declare-fun c!1246492 () Bool)

(declare-fun d!2112694 () Bool)

(assert (=> d!2112694 (= c!1246492 (and ((_ is ElementMatch!16549) (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))) (= (c!1246247 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))) (h!72272 s!2326))))))

(assert (=> d!2112694 (= (derivationStepZipperDown!1777 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292)) (ite c!1246301 (Context!11867 Nil!65822) (Context!11867 call!606858)) (h!72272 s!2326)) e!4062156)))

(declare-fun b!6723134 () Bool)

(declare-fun call!606940 () (InoxSet Context!11866))

(assert (=> b!6723134 (= e!4062153 ((_ map or) call!606944 call!606940))))

(declare-fun b!6723135 () Bool)

(assert (=> b!6723135 (= e!4062154 (nullable!6536 (regOne!33610 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292)))))))

(declare-fun b!6723136 () Bool)

(assert (=> b!6723136 (= e!4062156 e!4062153)))

(declare-fun c!1246489 () Bool)

(assert (=> b!6723136 (= c!1246489 ((_ is Union!16549) (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(declare-fun b!6723137 () Bool)

(assert (=> b!6723137 (= e!4062155 ((as const (Array Context!11866 Bool)) false))))

(declare-fun bm!606936 () Bool)

(declare-fun call!606943 () List!65946)

(assert (=> bm!606936 (= call!606943 call!606941)))

(declare-fun b!6723138 () Bool)

(declare-fun e!4062152 () (InoxSet Context!11866))

(assert (=> b!6723138 (= e!4062152 call!606942)))

(declare-fun b!6723139 () Bool)

(assert (=> b!6723139 (= e!4062151 e!4062152)))

(assert (=> b!6723139 (= c!1246490 ((_ is Concat!25394) (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(declare-fun bm!606937 () Bool)

(assert (=> bm!606937 (= call!606939 call!606940)))

(declare-fun b!6723140 () Bool)

(declare-fun c!1246488 () Bool)

(assert (=> b!6723140 (= c!1246488 ((_ is Star!16549) (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))))))

(assert (=> b!6723140 (= e!4062152 e!4062155)))

(declare-fun bm!606938 () Bool)

(assert (=> bm!606938 (= call!606944 (derivationStepZipperDown!1777 (ite c!1246489 (regOne!33611 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))) (regOne!33610 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292)))) (ite c!1246489 (ite c!1246301 (Context!11867 Nil!65822) (Context!11867 call!606858)) (Context!11867 call!606941)) (h!72272 s!2326)))))

(declare-fun bm!606939 () Bool)

(assert (=> bm!606939 (= call!606940 (derivationStepZipperDown!1777 (ite c!1246489 (regTwo!33611 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))) (ite c!1246491 (regTwo!33610 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))) (ite c!1246490 (regOne!33610 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292))) (reg!16878 (ite c!1246301 (regOne!33611 r!7292) (regOne!33610 r!7292)))))) (ite (or c!1246489 c!1246491) (ite c!1246301 (Context!11867 Nil!65822) (Context!11867 call!606858)) (Context!11867 call!606943)) (h!72272 s!2326)))))

(assert (= (and d!2112694 c!1246492) b!6723133))

(assert (= (and d!2112694 (not c!1246492)) b!6723136))

(assert (= (and b!6723136 c!1246489) b!6723134))

(assert (= (and b!6723136 (not c!1246489)) b!6723131))

(assert (= (and b!6723131 res!2750822) b!6723135))

(assert (= (and b!6723131 c!1246491) b!6723130))

(assert (= (and b!6723131 (not c!1246491)) b!6723139))

(assert (= (and b!6723139 c!1246490) b!6723138))

(assert (= (and b!6723139 (not c!1246490)) b!6723140))

(assert (= (and b!6723140 c!1246488) b!6723132))

(assert (= (and b!6723140 (not c!1246488)) b!6723137))

(assert (= (or b!6723138 b!6723132) bm!606936))

(assert (= (or b!6723138 b!6723132) bm!606934))

(assert (= (or b!6723130 bm!606936) bm!606935))

(assert (= (or b!6723130 bm!606934) bm!606937))

(assert (= (or b!6723134 bm!606937) bm!606939))

(assert (= (or b!6723134 b!6723130) bm!606938))

(declare-fun m!7483988 () Bool)

(assert (=> bm!606939 m!7483988))

(declare-fun m!7483990 () Bool)

(assert (=> bm!606935 m!7483990))

(declare-fun m!7483992 () Bool)

(assert (=> b!6723135 m!7483992))

(declare-fun m!7483994 () Bool)

(assert (=> b!6723133 m!7483994))

(declare-fun m!7483996 () Bool)

(assert (=> bm!606938 m!7483996))

(assert (=> bm!606855 d!2112694))

(assert (=> d!2112518 d!2112512))

(assert (=> d!2112518 d!2112498))

(declare-fun d!2112696 () Bool)

(assert (=> d!2112696 (= (matchR!8732 r!7292 s!2326) (matchRSpec!3650 r!7292 s!2326))))

(assert (=> d!2112696 true))

(declare-fun _$88!5447 () Unit!159789)

(assert (=> d!2112696 (= (choose!50079 r!7292 s!2326) _$88!5447)))

(declare-fun bs!1788488 () Bool)

(assert (= bs!1788488 d!2112696))

(assert (=> bs!1788488 m!7483402))

(assert (=> bs!1788488 m!7483400))

(assert (=> d!2112518 d!2112696))

(assert (=> d!2112518 d!2112552))

(declare-fun b!6723141 () Bool)

(declare-fun e!4062162 () Bool)

(declare-fun e!4062157 () Bool)

(assert (=> b!6723141 (= e!4062162 e!4062157)))

(declare-fun c!1246495 () Bool)

(assert (=> b!6723141 (= c!1246495 ((_ is EmptyLang!16549) (reg!16878 r!7292)))))

(declare-fun b!6723142 () Bool)

(declare-fun e!4062161 () Bool)

(assert (=> b!6723142 (= e!4062161 (matchR!8732 (derivativeStep!5221 (reg!16878 r!7292) (head!13525 (_1!36827 (get!22895 lt!2436875)))) (tail!12610 (_1!36827 (get!22895 lt!2436875)))))))

(declare-fun b!6723143 () Bool)

(declare-fun lt!2436891 () Bool)

(assert (=> b!6723143 (= e!4062157 (not lt!2436891))))

(declare-fun b!6723144 () Bool)

(declare-fun res!2750825 () Bool)

(declare-fun e!4062158 () Bool)

(assert (=> b!6723144 (=> res!2750825 e!4062158)))

(assert (=> b!6723144 (= res!2750825 (not ((_ is ElementMatch!16549) (reg!16878 r!7292))))))

(assert (=> b!6723144 (= e!4062157 e!4062158)))

(declare-fun b!6723145 () Bool)

(declare-fun e!4062160 () Bool)

(declare-fun e!4062163 () Bool)

(assert (=> b!6723145 (= e!4062160 e!4062163)))

(declare-fun res!2750828 () Bool)

(assert (=> b!6723145 (=> res!2750828 e!4062163)))

(declare-fun call!606945 () Bool)

(assert (=> b!6723145 (= res!2750828 call!606945)))

(declare-fun b!6723146 () Bool)

(declare-fun res!2750827 () Bool)

(declare-fun e!4062159 () Bool)

(assert (=> b!6723146 (=> (not res!2750827) (not e!4062159))))

(assert (=> b!6723146 (= res!2750827 (not call!606945))))

(declare-fun b!6723147 () Bool)

(declare-fun res!2750829 () Bool)

(assert (=> b!6723147 (=> res!2750829 e!4062163)))

(assert (=> b!6723147 (= res!2750829 (not (isEmpty!38146 (tail!12610 (_1!36827 (get!22895 lt!2436875))))))))

(declare-fun d!2112698 () Bool)

(assert (=> d!2112698 e!4062162))

(declare-fun c!1246494 () Bool)

(assert (=> d!2112698 (= c!1246494 ((_ is EmptyExpr!16549) (reg!16878 r!7292)))))

(assert (=> d!2112698 (= lt!2436891 e!4062161)))

(declare-fun c!1246493 () Bool)

(assert (=> d!2112698 (= c!1246493 (isEmpty!38146 (_1!36827 (get!22895 lt!2436875))))))

(assert (=> d!2112698 (validRegex!8285 (reg!16878 r!7292))))

(assert (=> d!2112698 (= (matchR!8732 (reg!16878 r!7292) (_1!36827 (get!22895 lt!2436875))) lt!2436891)))

(declare-fun b!6723148 () Bool)

(assert (=> b!6723148 (= e!4062158 e!4062160)))

(declare-fun res!2750823 () Bool)

(assert (=> b!6723148 (=> (not res!2750823) (not e!4062160))))

(assert (=> b!6723148 (= res!2750823 (not lt!2436891))))

(declare-fun b!6723149 () Bool)

(declare-fun res!2750826 () Bool)

(assert (=> b!6723149 (=> res!2750826 e!4062158)))

(assert (=> b!6723149 (= res!2750826 e!4062159)))

(declare-fun res!2750824 () Bool)

(assert (=> b!6723149 (=> (not res!2750824) (not e!4062159))))

(assert (=> b!6723149 (= res!2750824 lt!2436891)))

(declare-fun b!6723150 () Bool)

(assert (=> b!6723150 (= e!4062163 (not (= (head!13525 (_1!36827 (get!22895 lt!2436875))) (c!1246247 (reg!16878 r!7292)))))))

(declare-fun b!6723151 () Bool)

(assert (=> b!6723151 (= e!4062162 (= lt!2436891 call!606945))))

(declare-fun b!6723152 () Bool)

(assert (=> b!6723152 (= e!4062159 (= (head!13525 (_1!36827 (get!22895 lt!2436875))) (c!1246247 (reg!16878 r!7292))))))

(declare-fun b!6723153 () Bool)

(declare-fun res!2750830 () Bool)

(assert (=> b!6723153 (=> (not res!2750830) (not e!4062159))))

(assert (=> b!6723153 (= res!2750830 (isEmpty!38146 (tail!12610 (_1!36827 (get!22895 lt!2436875)))))))

(declare-fun bm!606940 () Bool)

(assert (=> bm!606940 (= call!606945 (isEmpty!38146 (_1!36827 (get!22895 lt!2436875))))))

(declare-fun b!6723154 () Bool)

(assert (=> b!6723154 (= e!4062161 (nullable!6536 (reg!16878 r!7292)))))

(assert (= (and d!2112698 c!1246493) b!6723154))

(assert (= (and d!2112698 (not c!1246493)) b!6723142))

(assert (= (and d!2112698 c!1246494) b!6723151))

(assert (= (and d!2112698 (not c!1246494)) b!6723141))

(assert (= (and b!6723141 c!1246495) b!6723143))

(assert (= (and b!6723141 (not c!1246495)) b!6723144))

(assert (= (and b!6723144 (not res!2750825)) b!6723149))

(assert (= (and b!6723149 res!2750824) b!6723146))

(assert (= (and b!6723146 res!2750827) b!6723153))

(assert (= (and b!6723153 res!2750830) b!6723152))

(assert (= (and b!6723149 (not res!2750826)) b!6723148))

(assert (= (and b!6723148 res!2750823) b!6723145))

(assert (= (and b!6723145 (not res!2750828)) b!6723147))

(assert (= (and b!6723147 (not res!2750829)) b!6723150))

(assert (= (or b!6723151 b!6723145 b!6723146) bm!606940))

(declare-fun m!7483998 () Bool)

(assert (=> bm!606940 m!7483998))

(assert (=> d!2112698 m!7483998))

(assert (=> d!2112698 m!7483730))

(declare-fun m!7484000 () Bool)

(assert (=> b!6723152 m!7484000))

(assert (=> b!6723142 m!7484000))

(assert (=> b!6723142 m!7484000))

(declare-fun m!7484002 () Bool)

(assert (=> b!6723142 m!7484002))

(declare-fun m!7484004 () Bool)

(assert (=> b!6723142 m!7484004))

(assert (=> b!6723142 m!7484002))

(assert (=> b!6723142 m!7484004))

(declare-fun m!7484006 () Bool)

(assert (=> b!6723142 m!7484006))

(assert (=> b!6723154 m!7483698))

(assert (=> b!6723147 m!7484004))

(assert (=> b!6723147 m!7484004))

(declare-fun m!7484008 () Bool)

(assert (=> b!6723147 m!7484008))

(assert (=> b!6723150 m!7484000))

(assert (=> b!6723153 m!7484004))

(assert (=> b!6723153 m!7484004))

(assert (=> b!6723153 m!7484008))

(assert (=> b!6722837 d!2112698))

(declare-fun d!2112700 () Bool)

(assert (=> d!2112700 (= (get!22895 lt!2436875) (v!52635 lt!2436875))))

(assert (=> b!6722837 d!2112700))

(declare-fun d!2112702 () Bool)

(declare-fun res!2750833 () Bool)

(declare-fun e!4062166 () Bool)

(assert (=> d!2112702 (=> res!2750833 e!4062166)))

(assert (=> d!2112702 (= res!2750833 ((_ is Nil!65822) lt!2436853))))

(assert (=> d!2112702 (= (forall!15749 lt!2436853 lambda!377063) e!4062166)))

(declare-fun b!6723157 () Bool)

(declare-fun e!4062167 () Bool)

(assert (=> b!6723157 (= e!4062166 e!4062167)))

(declare-fun res!2750834 () Bool)

(assert (=> b!6723157 (=> (not res!2750834) (not e!4062167))))

(assert (=> b!6723157 (= res!2750834 (dynLambda!26249 lambda!377063 (h!72270 lt!2436853)))))

(declare-fun b!6723158 () Bool)

(assert (=> b!6723158 (= e!4062167 (forall!15749 (t!379625 lt!2436853) lambda!377063))))

(assert (= (and d!2112702 (not res!2750833)) b!6723157))

(assert (= (and b!6723157 res!2750834) b!6723158))

(declare-fun b_lambda!253099 () Bool)

(assert (=> (not b_lambda!253099) (not b!6723157)))

(declare-fun m!7484010 () Bool)

(assert (=> b!6723157 m!7484010))

(declare-fun m!7484012 () Bool)

(assert (=> b!6723158 m!7484012))

(assert (=> d!2112548 d!2112702))

(assert (=> bm!606874 d!2112576))

(declare-fun bm!606941 () Bool)

(declare-fun call!606947 () Bool)

(declare-fun call!606946 () Bool)

(assert (=> bm!606941 (= call!606947 call!606946)))

(declare-fun bm!606942 () Bool)

(declare-fun call!606948 () Bool)

(declare-fun c!1246496 () Bool)

(assert (=> bm!606942 (= call!606948 (validRegex!8285 (ite c!1246496 (regOne!33611 lt!2436850) (regOne!33610 lt!2436850))))))

(declare-fun bm!606943 () Bool)

(declare-fun c!1246497 () Bool)

(assert (=> bm!606943 (= call!606946 (validRegex!8285 (ite c!1246497 (reg!16878 lt!2436850) (ite c!1246496 (regTwo!33611 lt!2436850) (regTwo!33610 lt!2436850)))))))

(declare-fun b!6723161 () Bool)

(declare-fun e!4062170 () Bool)

(declare-fun e!4062174 () Bool)

(assert (=> b!6723161 (= e!4062170 e!4062174)))

(assert (=> b!6723161 (= c!1246496 ((_ is Union!16549) lt!2436850))))

(declare-fun b!6723162 () Bool)

(declare-fun e!4062171 () Bool)

(assert (=> b!6723162 (= e!4062171 call!606946)))

(declare-fun b!6723163 () Bool)

(declare-fun res!2750840 () Bool)

(declare-fun e!4062172 () Bool)

(assert (=> b!6723163 (=> (not res!2750840) (not e!4062172))))

(assert (=> b!6723163 (= res!2750840 call!606948)))

(assert (=> b!6723163 (= e!4062174 e!4062172)))

(declare-fun b!6723164 () Bool)

(declare-fun e!4062168 () Bool)

(assert (=> b!6723164 (= e!4062168 e!4062170)))

(assert (=> b!6723164 (= c!1246497 ((_ is Star!16549) lt!2436850))))

(declare-fun b!6723165 () Bool)

(declare-fun res!2750841 () Bool)

(declare-fun e!4062173 () Bool)

(assert (=> b!6723165 (=> res!2750841 e!4062173)))

(assert (=> b!6723165 (= res!2750841 (not ((_ is Concat!25394) lt!2436850)))))

(assert (=> b!6723165 (= e!4062174 e!4062173)))

(declare-fun b!6723167 () Bool)

(declare-fun e!4062169 () Bool)

(assert (=> b!6723167 (= e!4062173 e!4062169)))

(declare-fun res!2750839 () Bool)

(assert (=> b!6723167 (=> (not res!2750839) (not e!4062169))))

(assert (=> b!6723167 (= res!2750839 call!606948)))

(declare-fun b!6723168 () Bool)

(assert (=> b!6723168 (= e!4062172 call!606947)))

(declare-fun b!6723169 () Bool)

(assert (=> b!6723169 (= e!4062169 call!606947)))

(declare-fun d!2112704 () Bool)

(declare-fun res!2750837 () Bool)

(assert (=> d!2112704 (=> res!2750837 e!4062168)))

(assert (=> d!2112704 (= res!2750837 ((_ is ElementMatch!16549) lt!2436850))))

(assert (=> d!2112704 (= (validRegex!8285 lt!2436850) e!4062168)))

(declare-fun b!6723166 () Bool)

(assert (=> b!6723166 (= e!4062170 e!4062171)))

(declare-fun res!2750838 () Bool)

(assert (=> b!6723166 (= res!2750838 (not (nullable!6536 (reg!16878 lt!2436850))))))

(assert (=> b!6723166 (=> (not res!2750838) (not e!4062171))))

(assert (= (and d!2112704 (not res!2750837)) b!6723164))

(assert (= (and b!6723164 c!1246497) b!6723166))

(assert (= (and b!6723164 (not c!1246497)) b!6723161))

(assert (= (and b!6723166 res!2750838) b!6723162))

(assert (= (and b!6723161 c!1246496) b!6723163))

(assert (= (and b!6723161 (not c!1246496)) b!6723165))

(assert (= (and b!6723163 res!2750840) b!6723168))

(assert (= (and b!6723165 (not res!2750841)) b!6723167))

(assert (= (and b!6723167 res!2750839) b!6723169))

(assert (= (or b!6723168 b!6723169) bm!606941))

(assert (= (or b!6723163 b!6723167) bm!606942))

(assert (= (or b!6723162 bm!606941) bm!606943))

(declare-fun m!7484014 () Bool)

(assert (=> bm!606942 m!7484014))

(declare-fun m!7484016 () Bool)

(assert (=> bm!606943 m!7484016))

(declare-fun m!7484018 () Bool)

(assert (=> b!6723166 m!7484018))

(assert (=> d!2112544 d!2112704))

(declare-fun d!2112706 () Bool)

(declare-fun res!2750842 () Bool)

(declare-fun e!4062175 () Bool)

(assert (=> d!2112706 (=> res!2750842 e!4062175)))

(assert (=> d!2112706 (= res!2750842 ((_ is Nil!65822) (unfocusZipperList!1970 zl!343)))))

(assert (=> d!2112706 (= (forall!15749 (unfocusZipperList!1970 zl!343) lambda!377060) e!4062175)))

(declare-fun b!6723170 () Bool)

(declare-fun e!4062176 () Bool)

(assert (=> b!6723170 (= e!4062175 e!4062176)))

(declare-fun res!2750843 () Bool)

(assert (=> b!6723170 (=> (not res!2750843) (not e!4062176))))

(assert (=> b!6723170 (= res!2750843 (dynLambda!26249 lambda!377060 (h!72270 (unfocusZipperList!1970 zl!343))))))

(declare-fun b!6723171 () Bool)

(assert (=> b!6723171 (= e!4062176 (forall!15749 (t!379625 (unfocusZipperList!1970 zl!343)) lambda!377060))))

(assert (= (and d!2112706 (not res!2750842)) b!6723170))

(assert (= (and b!6723170 res!2750843) b!6723171))

(declare-fun b_lambda!253101 () Bool)

(assert (=> (not b_lambda!253101) (not b!6723170)))

(declare-fun m!7484020 () Bool)

(assert (=> b!6723170 m!7484020))

(declare-fun m!7484022 () Bool)

(assert (=> b!6723171 m!7484022))

(assert (=> d!2112544 d!2112706))

(declare-fun bm!606944 () Bool)

(declare-fun call!606950 () Bool)

(declare-fun call!606949 () Bool)

(assert (=> bm!606944 (= call!606950 call!606949)))

(declare-fun bm!606945 () Bool)

(declare-fun call!606951 () Bool)

(declare-fun c!1246498 () Bool)

(assert (=> bm!606945 (= call!606951 (validRegex!8285 (ite c!1246498 (regOne!33611 lt!2436844) (regOne!33610 lt!2436844))))))

(declare-fun bm!606946 () Bool)

(declare-fun c!1246499 () Bool)

(assert (=> bm!606946 (= call!606949 (validRegex!8285 (ite c!1246499 (reg!16878 lt!2436844) (ite c!1246498 (regTwo!33611 lt!2436844) (regTwo!33610 lt!2436844)))))))

(declare-fun b!6723172 () Bool)

(declare-fun e!4062179 () Bool)

(declare-fun e!4062183 () Bool)

(assert (=> b!6723172 (= e!4062179 e!4062183)))

(assert (=> b!6723172 (= c!1246498 ((_ is Union!16549) lt!2436844))))

(declare-fun b!6723173 () Bool)

(declare-fun e!4062180 () Bool)

(assert (=> b!6723173 (= e!4062180 call!606949)))

(declare-fun b!6723174 () Bool)

(declare-fun res!2750847 () Bool)

(declare-fun e!4062181 () Bool)

(assert (=> b!6723174 (=> (not res!2750847) (not e!4062181))))

(assert (=> b!6723174 (= res!2750847 call!606951)))

(assert (=> b!6723174 (= e!4062183 e!4062181)))

(declare-fun b!6723175 () Bool)

(declare-fun e!4062177 () Bool)

(assert (=> b!6723175 (= e!4062177 e!4062179)))

(assert (=> b!6723175 (= c!1246499 ((_ is Star!16549) lt!2436844))))

(declare-fun b!6723176 () Bool)

(declare-fun res!2750848 () Bool)

(declare-fun e!4062182 () Bool)

(assert (=> b!6723176 (=> res!2750848 e!4062182)))

(assert (=> b!6723176 (= res!2750848 (not ((_ is Concat!25394) lt!2436844)))))

(assert (=> b!6723176 (= e!4062183 e!4062182)))

(declare-fun b!6723178 () Bool)

(declare-fun e!4062178 () Bool)

(assert (=> b!6723178 (= e!4062182 e!4062178)))

(declare-fun res!2750846 () Bool)

(assert (=> b!6723178 (=> (not res!2750846) (not e!4062178))))

(assert (=> b!6723178 (= res!2750846 call!606951)))

(declare-fun b!6723179 () Bool)

(assert (=> b!6723179 (= e!4062181 call!606950)))

(declare-fun b!6723180 () Bool)

(assert (=> b!6723180 (= e!4062178 call!606950)))

(declare-fun d!2112708 () Bool)

(declare-fun res!2750844 () Bool)

(assert (=> d!2112708 (=> res!2750844 e!4062177)))

(assert (=> d!2112708 (= res!2750844 ((_ is ElementMatch!16549) lt!2436844))))

(assert (=> d!2112708 (= (validRegex!8285 lt!2436844) e!4062177)))

(declare-fun b!6723177 () Bool)

(assert (=> b!6723177 (= e!4062179 e!4062180)))

(declare-fun res!2750845 () Bool)

(assert (=> b!6723177 (= res!2750845 (not (nullable!6536 (reg!16878 lt!2436844))))))

(assert (=> b!6723177 (=> (not res!2750845) (not e!4062180))))

(assert (= (and d!2112708 (not res!2750844)) b!6723175))

(assert (= (and b!6723175 c!1246499) b!6723177))

(assert (= (and b!6723175 (not c!1246499)) b!6723172))

(assert (= (and b!6723177 res!2750845) b!6723173))

(assert (= (and b!6723172 c!1246498) b!6723174))

(assert (= (and b!6723172 (not c!1246498)) b!6723176))

(assert (= (and b!6723174 res!2750847) b!6723179))

(assert (= (and b!6723176 (not res!2750848)) b!6723178))

(assert (= (and b!6723178 res!2750846) b!6723180))

(assert (= (or b!6723179 b!6723180) bm!606944))

(assert (= (or b!6723174 b!6723178) bm!606945))

(assert (= (or b!6723173 bm!606944) bm!606946))

(declare-fun m!7484024 () Bool)

(assert (=> bm!606945 m!7484024))

(declare-fun m!7484026 () Bool)

(assert (=> bm!606946 m!7484026))

(declare-fun m!7484028 () Bool)

(assert (=> b!6723177 m!7484028))

(assert (=> d!2112528 d!2112708))

(declare-fun d!2112710 () Bool)

(declare-fun res!2750849 () Bool)

(declare-fun e!4062184 () Bool)

(assert (=> d!2112710 (=> res!2750849 e!4062184)))

(assert (=> d!2112710 (= res!2750849 ((_ is Nil!65822) (exprs!6433 (h!72271 zl!343))))))

(assert (=> d!2112710 (= (forall!15749 (exprs!6433 (h!72271 zl!343)) lambda!377057) e!4062184)))

(declare-fun b!6723181 () Bool)

(declare-fun e!4062185 () Bool)

(assert (=> b!6723181 (= e!4062184 e!4062185)))

(declare-fun res!2750850 () Bool)

(assert (=> b!6723181 (=> (not res!2750850) (not e!4062185))))

(assert (=> b!6723181 (= res!2750850 (dynLambda!26249 lambda!377057 (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6723182 () Bool)

(assert (=> b!6723182 (= e!4062185 (forall!15749 (t!379625 (exprs!6433 (h!72271 zl!343))) lambda!377057))))

(assert (= (and d!2112710 (not res!2750849)) b!6723181))

(assert (= (and b!6723181 res!2750850) b!6723182))

(declare-fun b_lambda!253103 () Bool)

(assert (=> (not b_lambda!253103) (not b!6723181)))

(declare-fun m!7484030 () Bool)

(assert (=> b!6723181 m!7484030))

(declare-fun m!7484032 () Bool)

(assert (=> b!6723182 m!7484032))

(assert (=> d!2112528 d!2112710))

(declare-fun b!6723197 () Bool)

(declare-fun res!2750860 () Bool)

(declare-fun e!4062193 () Bool)

(assert (=> b!6723197 (=> (not res!2750860) (not e!4062193))))

(declare-fun lt!2436894 () List!65948)

(declare-fun size!40598 (List!65948) Int)

(assert (=> b!6723197 (= res!2750860 (= (size!40598 lt!2436894) (+ (size!40598 (_1!36827 (get!22895 lt!2436875))) (size!40598 (_2!36827 (get!22895 lt!2436875))))))))

(declare-fun b!6723196 () Bool)

(declare-fun e!4062192 () List!65948)

(assert (=> b!6723196 (= e!4062192 (Cons!65824 (h!72272 (_1!36827 (get!22895 lt!2436875))) (++!14705 (t!379627 (_1!36827 (get!22895 lt!2436875))) (_2!36827 (get!22895 lt!2436875)))))))

(declare-fun b!6723195 () Bool)

(assert (=> b!6723195 (= e!4062192 (_2!36827 (get!22895 lt!2436875)))))

(declare-fun b!6723198 () Bool)

(assert (=> b!6723198 (= e!4062193 (or (not (= (_2!36827 (get!22895 lt!2436875)) Nil!65824)) (= lt!2436894 (_1!36827 (get!22895 lt!2436875)))))))

(declare-fun d!2112712 () Bool)

(assert (=> d!2112712 e!4062193))

(declare-fun res!2750859 () Bool)

(assert (=> d!2112712 (=> (not res!2750859) (not e!4062193))))

(declare-fun content!12768 (List!65948) (InoxSet C!33368))

(assert (=> d!2112712 (= res!2750859 (= (content!12768 lt!2436894) ((_ map or) (content!12768 (_1!36827 (get!22895 lt!2436875))) (content!12768 (_2!36827 (get!22895 lt!2436875))))))))

(assert (=> d!2112712 (= lt!2436894 e!4062192)))

(declare-fun c!1246502 () Bool)

(assert (=> d!2112712 (= c!1246502 ((_ is Nil!65824) (_1!36827 (get!22895 lt!2436875))))))

(assert (=> d!2112712 (= (++!14705 (_1!36827 (get!22895 lt!2436875)) (_2!36827 (get!22895 lt!2436875))) lt!2436894)))

(assert (= (and d!2112712 c!1246502) b!6723195))

(assert (= (and d!2112712 (not c!1246502)) b!6723196))

(assert (= (and d!2112712 res!2750859) b!6723197))

(assert (= (and b!6723197 res!2750860) b!6723198))

(declare-fun m!7484034 () Bool)

(assert (=> b!6723197 m!7484034))

(declare-fun m!7484036 () Bool)

(assert (=> b!6723197 m!7484036))

(declare-fun m!7484038 () Bool)

(assert (=> b!6723197 m!7484038))

(declare-fun m!7484040 () Bool)

(assert (=> b!6723196 m!7484040))

(declare-fun m!7484042 () Bool)

(assert (=> d!2112712 m!7484042))

(declare-fun m!7484044 () Bool)

(assert (=> d!2112712 m!7484044))

(declare-fun m!7484046 () Bool)

(assert (=> d!2112712 m!7484046))

(assert (=> b!6722841 d!2112712))

(assert (=> b!6722841 d!2112700))

(declare-fun d!2112714 () Bool)

(declare-fun res!2750861 () Bool)

(declare-fun e!4062194 () Bool)

(assert (=> d!2112714 (=> res!2750861 e!4062194)))

(assert (=> d!2112714 (= res!2750861 ((_ is Nil!65822) (exprs!6433 setElem!45815)))))

(assert (=> d!2112714 (= (forall!15749 (exprs!6433 setElem!45815) lambda!377049) e!4062194)))

(declare-fun b!6723199 () Bool)

(declare-fun e!4062195 () Bool)

(assert (=> b!6723199 (= e!4062194 e!4062195)))

(declare-fun res!2750862 () Bool)

(assert (=> b!6723199 (=> (not res!2750862) (not e!4062195))))

(assert (=> b!6723199 (= res!2750862 (dynLambda!26249 lambda!377049 (h!72270 (exprs!6433 setElem!45815))))))

(declare-fun b!6723200 () Bool)

(assert (=> b!6723200 (= e!4062195 (forall!15749 (t!379625 (exprs!6433 setElem!45815)) lambda!377049))))

(assert (= (and d!2112714 (not res!2750861)) b!6723199))

(assert (= (and b!6723199 res!2750862) b!6723200))

(declare-fun b_lambda!253105 () Bool)

(assert (=> (not b_lambda!253105) (not b!6723199)))

(declare-fun m!7484048 () Bool)

(assert (=> b!6723199 m!7484048))

(declare-fun m!7484050 () Bool)

(assert (=> b!6723200 m!7484050))

(assert (=> d!2112524 d!2112714))

(declare-fun d!2112716 () Bool)

(assert (=> d!2112716 (= (head!13526 (unfocusZipperList!1970 zl!343)) (h!72270 (unfocusZipperList!1970 zl!343)))))

(assert (=> b!6722749 d!2112716))

(declare-fun b!6723201 () Bool)

(declare-fun e!4062201 () Bool)

(declare-fun e!4062196 () Bool)

(assert (=> b!6723201 (= e!4062201 e!4062196)))

(declare-fun c!1246505 () Bool)

(assert (=> b!6723201 (= c!1246505 ((_ is EmptyLang!16549) r!7292))))

(declare-fun b!6723202 () Bool)

(declare-fun e!4062200 () Bool)

(assert (=> b!6723202 (= e!4062200 (matchR!8732 (derivativeStep!5221 r!7292 (head!13525 (_2!36827 (get!22895 lt!2436875)))) (tail!12610 (_2!36827 (get!22895 lt!2436875)))))))

(declare-fun b!6723203 () Bool)

(declare-fun lt!2436895 () Bool)

(assert (=> b!6723203 (= e!4062196 (not lt!2436895))))

(declare-fun b!6723204 () Bool)

(declare-fun res!2750865 () Bool)

(declare-fun e!4062197 () Bool)

(assert (=> b!6723204 (=> res!2750865 e!4062197)))

(assert (=> b!6723204 (= res!2750865 (not ((_ is ElementMatch!16549) r!7292)))))

(assert (=> b!6723204 (= e!4062196 e!4062197)))

(declare-fun b!6723205 () Bool)

(declare-fun e!4062199 () Bool)

(declare-fun e!4062202 () Bool)

(assert (=> b!6723205 (= e!4062199 e!4062202)))

(declare-fun res!2750868 () Bool)

(assert (=> b!6723205 (=> res!2750868 e!4062202)))

(declare-fun call!606952 () Bool)

(assert (=> b!6723205 (= res!2750868 call!606952)))

(declare-fun b!6723206 () Bool)

(declare-fun res!2750867 () Bool)

(declare-fun e!4062198 () Bool)

(assert (=> b!6723206 (=> (not res!2750867) (not e!4062198))))

(assert (=> b!6723206 (= res!2750867 (not call!606952))))

(declare-fun b!6723207 () Bool)

(declare-fun res!2750869 () Bool)

(assert (=> b!6723207 (=> res!2750869 e!4062202)))

(assert (=> b!6723207 (= res!2750869 (not (isEmpty!38146 (tail!12610 (_2!36827 (get!22895 lt!2436875))))))))

(declare-fun d!2112718 () Bool)

(assert (=> d!2112718 e!4062201))

(declare-fun c!1246504 () Bool)

(assert (=> d!2112718 (= c!1246504 ((_ is EmptyExpr!16549) r!7292))))

(assert (=> d!2112718 (= lt!2436895 e!4062200)))

(declare-fun c!1246503 () Bool)

(assert (=> d!2112718 (= c!1246503 (isEmpty!38146 (_2!36827 (get!22895 lt!2436875))))))

(assert (=> d!2112718 (validRegex!8285 r!7292)))

(assert (=> d!2112718 (= (matchR!8732 r!7292 (_2!36827 (get!22895 lt!2436875))) lt!2436895)))

(declare-fun b!6723208 () Bool)

(assert (=> b!6723208 (= e!4062197 e!4062199)))

(declare-fun res!2750863 () Bool)

(assert (=> b!6723208 (=> (not res!2750863) (not e!4062199))))

(assert (=> b!6723208 (= res!2750863 (not lt!2436895))))

(declare-fun b!6723209 () Bool)

(declare-fun res!2750866 () Bool)

(assert (=> b!6723209 (=> res!2750866 e!4062197)))

(assert (=> b!6723209 (= res!2750866 e!4062198)))

(declare-fun res!2750864 () Bool)

(assert (=> b!6723209 (=> (not res!2750864) (not e!4062198))))

(assert (=> b!6723209 (= res!2750864 lt!2436895)))

(declare-fun b!6723210 () Bool)

(assert (=> b!6723210 (= e!4062202 (not (= (head!13525 (_2!36827 (get!22895 lt!2436875))) (c!1246247 r!7292))))))

(declare-fun b!6723211 () Bool)

(assert (=> b!6723211 (= e!4062201 (= lt!2436895 call!606952))))

(declare-fun b!6723212 () Bool)

(assert (=> b!6723212 (= e!4062198 (= (head!13525 (_2!36827 (get!22895 lt!2436875))) (c!1246247 r!7292)))))

(declare-fun b!6723213 () Bool)

(declare-fun res!2750870 () Bool)

(assert (=> b!6723213 (=> (not res!2750870) (not e!4062198))))

(assert (=> b!6723213 (= res!2750870 (isEmpty!38146 (tail!12610 (_2!36827 (get!22895 lt!2436875)))))))

(declare-fun bm!606947 () Bool)

(assert (=> bm!606947 (= call!606952 (isEmpty!38146 (_2!36827 (get!22895 lt!2436875))))))

(declare-fun b!6723214 () Bool)

(assert (=> b!6723214 (= e!4062200 (nullable!6536 r!7292))))

(assert (= (and d!2112718 c!1246503) b!6723214))

(assert (= (and d!2112718 (not c!1246503)) b!6723202))

(assert (= (and d!2112718 c!1246504) b!6723211))

(assert (= (and d!2112718 (not c!1246504)) b!6723201))

(assert (= (and b!6723201 c!1246505) b!6723203))

(assert (= (and b!6723201 (not c!1246505)) b!6723204))

(assert (= (and b!6723204 (not res!2750865)) b!6723209))

(assert (= (and b!6723209 res!2750864) b!6723206))

(assert (= (and b!6723206 res!2750867) b!6723213))

(assert (= (and b!6723213 res!2750870) b!6723212))

(assert (= (and b!6723209 (not res!2750866)) b!6723208))

(assert (= (and b!6723208 res!2750863) b!6723205))

(assert (= (and b!6723205 (not res!2750868)) b!6723207))

(assert (= (and b!6723207 (not res!2750869)) b!6723210))

(assert (= (or b!6723211 b!6723205 b!6723206) bm!606947))

(declare-fun m!7484052 () Bool)

(assert (=> bm!606947 m!7484052))

(assert (=> d!2112718 m!7484052))

(assert (=> d!2112718 m!7483388))

(declare-fun m!7484054 () Bool)

(assert (=> b!6723212 m!7484054))

(assert (=> b!6723202 m!7484054))

(assert (=> b!6723202 m!7484054))

(declare-fun m!7484056 () Bool)

(assert (=> b!6723202 m!7484056))

(declare-fun m!7484058 () Bool)

(assert (=> b!6723202 m!7484058))

(assert (=> b!6723202 m!7484056))

(assert (=> b!6723202 m!7484058))

(declare-fun m!7484060 () Bool)

(assert (=> b!6723202 m!7484060))

(assert (=> b!6723214 m!7483588))

(assert (=> b!6723207 m!7484058))

(assert (=> b!6723207 m!7484058))

(declare-fun m!7484062 () Bool)

(assert (=> b!6723207 m!7484062))

(assert (=> b!6723210 m!7484054))

(assert (=> b!6723213 m!7484058))

(assert (=> b!6723213 m!7484058))

(assert (=> b!6723213 m!7484062))

(assert (=> b!6722843 d!2112718))

(assert (=> b!6722843 d!2112700))

(declare-fun d!2112720 () Bool)

(assert (=> d!2112720 (= (isUnion!1353 lt!2436850) ((_ is Union!16549) lt!2436850))))

(assert (=> b!6722751 d!2112720))

(declare-fun d!2112722 () Bool)

(assert (=> d!2112722 (= (isEmpty!38150 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326)) (not ((_ is Some!16435) (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326))))))

(assert (=> d!2112564 d!2112722))

(declare-fun b!6723217 () Bool)

(declare-fun res!2750872 () Bool)

(declare-fun e!4062204 () Bool)

(assert (=> b!6723217 (=> (not res!2750872) (not e!4062204))))

(declare-fun lt!2436896 () List!65948)

(assert (=> b!6723217 (= res!2750872 (= (size!40598 lt!2436896) (+ (size!40598 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824))) (size!40598 (t!379627 s!2326)))))))

(declare-fun b!6723216 () Bool)

(declare-fun e!4062203 () List!65948)

(assert (=> b!6723216 (= e!4062203 (Cons!65824 (h!72272 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824))) (++!14705 (t!379627 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824))) (t!379627 s!2326))))))

(declare-fun b!6723215 () Bool)

(assert (=> b!6723215 (= e!4062203 (t!379627 s!2326))))

(declare-fun b!6723218 () Bool)

(assert (=> b!6723218 (= e!4062204 (or (not (= (t!379627 s!2326) Nil!65824)) (= lt!2436896 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)))))))

(declare-fun d!2112724 () Bool)

(assert (=> d!2112724 e!4062204))

(declare-fun res!2750871 () Bool)

(assert (=> d!2112724 (=> (not res!2750871) (not e!4062204))))

(assert (=> d!2112724 (= res!2750871 (= (content!12768 lt!2436896) ((_ map or) (content!12768 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824))) (content!12768 (t!379627 s!2326)))))))

(assert (=> d!2112724 (= lt!2436896 e!4062203)))

(declare-fun c!1246506 () Bool)

(assert (=> d!2112724 (= c!1246506 ((_ is Nil!65824) (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824))))))

(assert (=> d!2112724 (= (++!14705 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (t!379627 s!2326)) lt!2436896)))

(assert (= (and d!2112724 c!1246506) b!6723215))

(assert (= (and d!2112724 (not c!1246506)) b!6723216))

(assert (= (and d!2112724 res!2750871) b!6723217))

(assert (= (and b!6723217 res!2750872) b!6723218))

(declare-fun m!7484064 () Bool)

(assert (=> b!6723217 m!7484064))

(assert (=> b!6723217 m!7483748))

(declare-fun m!7484066 () Bool)

(assert (=> b!6723217 m!7484066))

(declare-fun m!7484068 () Bool)

(assert (=> b!6723217 m!7484068))

(declare-fun m!7484070 () Bool)

(assert (=> b!6723216 m!7484070))

(declare-fun m!7484072 () Bool)

(assert (=> d!2112724 m!7484072))

(assert (=> d!2112724 m!7483748))

(declare-fun m!7484074 () Bool)

(assert (=> d!2112724 m!7484074))

(declare-fun m!7484076 () Bool)

(assert (=> d!2112724 m!7484076))

(assert (=> b!6722845 d!2112724))

(declare-fun b!6723221 () Bool)

(declare-fun res!2750874 () Bool)

(declare-fun e!4062206 () Bool)

(assert (=> b!6723221 (=> (not res!2750874) (not e!4062206))))

(declare-fun lt!2436897 () List!65948)

(assert (=> b!6723221 (= res!2750874 (= (size!40598 lt!2436897) (+ (size!40598 Nil!65824) (size!40598 (Cons!65824 (h!72272 s!2326) Nil!65824)))))))

(declare-fun b!6723220 () Bool)

(declare-fun e!4062205 () List!65948)

(assert (=> b!6723220 (= e!4062205 (Cons!65824 (h!72272 Nil!65824) (++!14705 (t!379627 Nil!65824) (Cons!65824 (h!72272 s!2326) Nil!65824))))))

(declare-fun b!6723219 () Bool)

(assert (=> b!6723219 (= e!4062205 (Cons!65824 (h!72272 s!2326) Nil!65824))))

(declare-fun b!6723222 () Bool)

(assert (=> b!6723222 (= e!4062206 (or (not (= (Cons!65824 (h!72272 s!2326) Nil!65824) Nil!65824)) (= lt!2436897 Nil!65824)))))

(declare-fun d!2112726 () Bool)

(assert (=> d!2112726 e!4062206))

(declare-fun res!2750873 () Bool)

(assert (=> d!2112726 (=> (not res!2750873) (not e!4062206))))

(assert (=> d!2112726 (= res!2750873 (= (content!12768 lt!2436897) ((_ map or) (content!12768 Nil!65824) (content!12768 (Cons!65824 (h!72272 s!2326) Nil!65824)))))))

(assert (=> d!2112726 (= lt!2436897 e!4062205)))

(declare-fun c!1246507 () Bool)

(assert (=> d!2112726 (= c!1246507 ((_ is Nil!65824) Nil!65824))))

(assert (=> d!2112726 (= (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) lt!2436897)))

(assert (= (and d!2112726 c!1246507) b!6723219))

(assert (= (and d!2112726 (not c!1246507)) b!6723220))

(assert (= (and d!2112726 res!2750873) b!6723221))

(assert (= (and b!6723221 res!2750874) b!6723222))

(declare-fun m!7484078 () Bool)

(assert (=> b!6723221 m!7484078))

(declare-fun m!7484080 () Bool)

(assert (=> b!6723221 m!7484080))

(declare-fun m!7484082 () Bool)

(assert (=> b!6723221 m!7484082))

(declare-fun m!7484084 () Bool)

(assert (=> b!6723220 m!7484084))

(declare-fun m!7484086 () Bool)

(assert (=> d!2112726 m!7484086))

(declare-fun m!7484088 () Bool)

(assert (=> d!2112726 m!7484088))

(declare-fun m!7484090 () Bool)

(assert (=> d!2112726 m!7484090))

(assert (=> b!6722845 d!2112726))

(declare-fun d!2112728 () Bool)

(assert (=> d!2112728 (= (++!14705 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (t!379627 s!2326)) s!2326)))

(declare-fun lt!2436901 () Unit!159789)

(declare-fun choose!50089 (List!65948 C!33368 List!65948 List!65948) Unit!159789)

(assert (=> d!2112728 (= lt!2436901 (choose!50089 Nil!65824 (h!72272 s!2326) (t!379627 s!2326) s!2326))))

(assert (=> d!2112728 (= (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) (t!379627 s!2326))) s!2326)))

(assert (=> d!2112728 (= (lemmaMoveElementToOtherListKeepsConcatEq!2678 Nil!65824 (h!72272 s!2326) (t!379627 s!2326) s!2326) lt!2436901)))

(declare-fun bs!1788499 () Bool)

(assert (= bs!1788499 d!2112728))

(assert (=> bs!1788499 m!7483748))

(assert (=> bs!1788499 m!7483748))

(assert (=> bs!1788499 m!7483750))

(declare-fun m!7484114 () Bool)

(assert (=> bs!1788499 m!7484114))

(declare-fun m!7484116 () Bool)

(assert (=> bs!1788499 m!7484116))

(assert (=> b!6722845 d!2112728))

(declare-fun b!6723246 () Bool)

(declare-fun res!2750889 () Bool)

(declare-fun e!4062224 () Bool)

(assert (=> b!6723246 (=> (not res!2750889) (not e!4062224))))

(declare-fun lt!2436902 () Option!16436)

(assert (=> b!6723246 (= res!2750889 (matchR!8732 (reg!16878 r!7292) (_1!36827 (get!22895 lt!2436902))))))

(declare-fun b!6723247 () Bool)

(declare-fun e!4062222 () Bool)

(assert (=> b!6723247 (= e!4062222 (not (isDefined!13139 lt!2436902)))))

(declare-fun b!6723248 () Bool)

(declare-fun e!4062221 () Option!16436)

(assert (=> b!6723248 (= e!4062221 (Some!16435 (tuple2!67049 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (t!379627 s!2326))))))

(declare-fun b!6723249 () Bool)

(declare-fun e!4062225 () Option!16436)

(assert (=> b!6723249 (= e!4062221 e!4062225)))

(declare-fun c!1246513 () Bool)

(assert (=> b!6723249 (= c!1246513 ((_ is Nil!65824) (t!379627 s!2326)))))

(declare-fun b!6723250 () Bool)

(assert (=> b!6723250 (= e!4062224 (= (++!14705 (_1!36827 (get!22895 lt!2436902)) (_2!36827 (get!22895 lt!2436902))) s!2326))))

(declare-fun d!2112736 () Bool)

(assert (=> d!2112736 e!4062222))

(declare-fun res!2750890 () Bool)

(assert (=> d!2112736 (=> res!2750890 e!4062222)))

(assert (=> d!2112736 (= res!2750890 e!4062224)))

(declare-fun res!2750888 () Bool)

(assert (=> d!2112736 (=> (not res!2750888) (not e!4062224))))

(assert (=> d!2112736 (= res!2750888 (isDefined!13139 lt!2436902))))

(assert (=> d!2112736 (= lt!2436902 e!4062221)))

(declare-fun c!1246514 () Bool)

(declare-fun e!4062223 () Bool)

(assert (=> d!2112736 (= c!1246514 e!4062223)))

(declare-fun res!2750892 () Bool)

(assert (=> d!2112736 (=> (not res!2750892) (not e!4062223))))

(assert (=> d!2112736 (= res!2750892 (matchR!8732 (reg!16878 r!7292) (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824))))))

(assert (=> d!2112736 (validRegex!8285 (reg!16878 r!7292))))

(assert (=> d!2112736 (= (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (t!379627 s!2326) s!2326) lt!2436902)))

(declare-fun b!6723251 () Bool)

(assert (=> b!6723251 (= e!4062223 (matchR!8732 r!7292 (t!379627 s!2326)))))

(declare-fun b!6723252 () Bool)

(declare-fun res!2750891 () Bool)

(assert (=> b!6723252 (=> (not res!2750891) (not e!4062224))))

(assert (=> b!6723252 (= res!2750891 (matchR!8732 r!7292 (_2!36827 (get!22895 lt!2436902))))))

(declare-fun b!6723253 () Bool)

(assert (=> b!6723253 (= e!4062225 None!16435)))

(declare-fun b!6723254 () Bool)

(declare-fun lt!2436904 () Unit!159789)

(declare-fun lt!2436903 () Unit!159789)

(assert (=> b!6723254 (= lt!2436904 lt!2436903)))

(assert (=> b!6723254 (= (++!14705 (++!14705 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (Cons!65824 (h!72272 (t!379627 s!2326)) Nil!65824)) (t!379627 (t!379627 s!2326))) s!2326)))

(assert (=> b!6723254 (= lt!2436903 (lemmaMoveElementToOtherListKeepsConcatEq!2678 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (h!72272 (t!379627 s!2326)) (t!379627 (t!379627 s!2326)) s!2326))))

(assert (=> b!6723254 (= e!4062225 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 (++!14705 (++!14705 Nil!65824 (Cons!65824 (h!72272 s!2326) Nil!65824)) (Cons!65824 (h!72272 (t!379627 s!2326)) Nil!65824)) (t!379627 (t!379627 s!2326)) s!2326))))

(assert (= (and d!2112736 res!2750892) b!6723251))

(assert (= (and d!2112736 c!1246514) b!6723248))

(assert (= (and d!2112736 (not c!1246514)) b!6723249))

(assert (= (and b!6723249 c!1246513) b!6723253))

(assert (= (and b!6723249 (not c!1246513)) b!6723254))

(assert (= (and d!2112736 res!2750888) b!6723246))

(assert (= (and b!6723246 res!2750889) b!6723252))

(assert (= (and b!6723252 res!2750891) b!6723250))

(assert (= (and d!2112736 (not res!2750890)) b!6723247))

(declare-fun m!7484120 () Bool)

(assert (=> d!2112736 m!7484120))

(assert (=> d!2112736 m!7483748))

(declare-fun m!7484122 () Bool)

(assert (=> d!2112736 m!7484122))

(assert (=> d!2112736 m!7483730))

(declare-fun m!7484124 () Bool)

(assert (=> b!6723251 m!7484124))

(assert (=> b!6723254 m!7483748))

(declare-fun m!7484126 () Bool)

(assert (=> b!6723254 m!7484126))

(assert (=> b!6723254 m!7484126))

(declare-fun m!7484128 () Bool)

(assert (=> b!6723254 m!7484128))

(assert (=> b!6723254 m!7483748))

(declare-fun m!7484130 () Bool)

(assert (=> b!6723254 m!7484130))

(assert (=> b!6723254 m!7484126))

(declare-fun m!7484132 () Bool)

(assert (=> b!6723254 m!7484132))

(declare-fun m!7484134 () Bool)

(assert (=> b!6723250 m!7484134))

(declare-fun m!7484136 () Bool)

(assert (=> b!6723250 m!7484136))

(assert (=> b!6723247 m!7484120))

(assert (=> b!6723252 m!7484134))

(declare-fun m!7484138 () Bool)

(assert (=> b!6723252 m!7484138))

(assert (=> b!6723246 m!7484134))

(declare-fun m!7484140 () Bool)

(assert (=> b!6723246 m!7484140))

(assert (=> b!6722845 d!2112736))

(declare-fun d!2112742 () Bool)

(assert (=> d!2112742 (= (isEmptyExpr!1915 lt!2436844) ((_ is EmptyExpr!16549) lt!2436844))))

(assert (=> b!6722661 d!2112742))

(declare-fun d!2112744 () Bool)

(assert (=> d!2112744 (= (isEmpty!38149 (tail!12611 (exprs!6433 (h!72271 zl!343)))) ((_ is Nil!65822) (tail!12611 (exprs!6433 (h!72271 zl!343)))))))

(assert (=> b!6722663 d!2112744))

(declare-fun d!2112746 () Bool)

(assert (=> d!2112746 (= (tail!12611 (exprs!6433 (h!72271 zl!343))) (t!379625 (exprs!6433 (h!72271 zl!343))))))

(assert (=> b!6722663 d!2112746))

(declare-fun d!2112748 () Bool)

(assert (=> d!2112748 (= (Exists!3617 lambda!377077) (choose!50087 lambda!377077))))

(declare-fun bs!1788500 () Bool)

(assert (= bs!1788500 d!2112748))

(declare-fun m!7484142 () Bool)

(assert (=> bs!1788500 m!7484142))

(assert (=> d!2112568 d!2112748))

(declare-fun d!2112750 () Bool)

(assert (=> d!2112750 (= (Exists!3617 lambda!377078) (choose!50087 lambda!377078))))

(declare-fun bs!1788501 () Bool)

(assert (= bs!1788501 d!2112750))

(declare-fun m!7484144 () Bool)

(assert (=> bs!1788501 m!7484144))

(assert (=> d!2112568 d!2112750))

(declare-fun bs!1788513 () Bool)

(declare-fun d!2112752 () Bool)

(assert (= bs!1788513 (and d!2112752 b!6722210)))

(declare-fun lambda!377105 () Int)

(assert (=> bs!1788513 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377105 lambda!377002))))

(declare-fun bs!1788515 () Bool)

(assert (= bs!1788515 (and d!2112752 b!6722983)))

(assert (=> bs!1788515 (not (= lambda!377105 lambda!377088))))

(declare-fun bs!1788516 () Bool)

(assert (= bs!1788516 (and d!2112752 b!6722979)))

(assert (=> bs!1788516 (not (= lambda!377105 lambda!377089))))

(assert (=> bs!1788513 (not (= lambda!377105 lambda!377003))))

(declare-fun bs!1788517 () Bool)

(assert (= bs!1788517 (and d!2112752 b!6722916)))

(assert (=> bs!1788517 (not (= lambda!377105 lambda!377084))))

(declare-fun bs!1788518 () Bool)

(assert (= bs!1788518 (and d!2112752 d!2112580)))

(assert (=> bs!1788518 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377105 lambda!377081))))

(declare-fun bs!1788519 () Bool)

(assert (= bs!1788519 (and d!2112752 d!2112568)))

(assert (=> bs!1788519 (not (= lambda!377105 lambda!377078))))

(assert (=> bs!1788519 (= lambda!377105 lambda!377077)))

(declare-fun bs!1788520 () Bool)

(assert (= bs!1788520 (and d!2112752 b!6722470)))

(assert (=> bs!1788520 (not (= lambda!377105 lambda!377035))))

(declare-fun bs!1788521 () Bool)

(assert (= bs!1788521 (and d!2112752 d!2112566)))

(assert (=> bs!1788521 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377105 lambda!377071))))

(declare-fun bs!1788522 () Bool)

(assert (= bs!1788522 (and d!2112752 b!6722920)))

(assert (=> bs!1788522 (not (= lambda!377105 lambda!377083))))

(assert (=> bs!1788513 (not (= lambda!377105 lambda!377004))))

(declare-fun bs!1788523 () Bool)

(assert (= bs!1788523 (and d!2112752 b!6722474)))

(assert (=> bs!1788523 (not (= lambda!377105 lambda!377034))))

(assert (=> bs!1788521 (not (= lambda!377105 lambda!377072))))

(assert (=> d!2112752 true))

(assert (=> d!2112752 true))

(declare-fun lambda!377106 () Int)

(assert (=> bs!1788513 (not (= lambda!377106 lambda!377002))))

(assert (=> bs!1788515 (= (and (= (reg!16878 r!7292) (reg!16878 (regTwo!33611 r!7292))) (= (Star!16549 (reg!16878 r!7292)) (regTwo!33611 r!7292))) (= lambda!377106 lambda!377088))))

(assert (=> bs!1788516 (not (= lambda!377106 lambda!377089))))

(assert (=> bs!1788513 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377106 lambda!377003))))

(assert (=> bs!1788517 (not (= lambda!377106 lambda!377084))))

(assert (=> bs!1788518 (not (= lambda!377106 lambda!377081))))

(assert (=> bs!1788519 (= lambda!377106 lambda!377078)))

(assert (=> bs!1788519 (not (= lambda!377106 lambda!377077))))

(declare-fun bs!1788524 () Bool)

(assert (= bs!1788524 d!2112752))

(assert (=> bs!1788524 (not (= lambda!377106 lambda!377105))))

(assert (=> bs!1788520 (not (= lambda!377106 lambda!377035))))

(assert (=> bs!1788521 (not (= lambda!377106 lambda!377071))))

(assert (=> bs!1788522 (= (and (= (reg!16878 r!7292) (reg!16878 (regOne!33611 r!7292))) (= (Star!16549 (reg!16878 r!7292)) (regOne!33611 r!7292))) (= lambda!377106 lambda!377083))))

(assert (=> bs!1788513 (not (= lambda!377106 lambda!377004))))

(assert (=> bs!1788523 (= (= (Star!16549 (reg!16878 r!7292)) r!7292) (= lambda!377106 lambda!377034))))

(assert (=> bs!1788521 (not (= lambda!377106 lambda!377072))))

(assert (=> d!2112752 true))

(assert (=> d!2112752 true))

(assert (=> d!2112752 (= (Exists!3617 lambda!377105) (Exists!3617 lambda!377106))))

(assert (=> d!2112752 true))

(declare-fun _$91!665 () Unit!159789)

(assert (=> d!2112752 (= (choose!50086 (reg!16878 r!7292) s!2326) _$91!665)))

(declare-fun m!7484200 () Bool)

(assert (=> bs!1788524 m!7484200))

(declare-fun m!7484202 () Bool)

(assert (=> bs!1788524 m!7484202))

(assert (=> d!2112568 d!2112752))

(assert (=> d!2112568 d!2112640))

(assert (=> d!2112580 d!2112564))

(declare-fun bs!1788527 () Bool)

(declare-fun d!2112782 () Bool)

(assert (= bs!1788527 (and d!2112782 b!6722210)))

(declare-fun lambda!377112 () Int)

(assert (=> bs!1788527 (= lambda!377112 lambda!377002)))

(declare-fun bs!1788529 () Bool)

(assert (= bs!1788529 (and d!2112782 b!6722983)))

(assert (=> bs!1788529 (not (= lambda!377112 lambda!377088))))

(declare-fun bs!1788531 () Bool)

(assert (= bs!1788531 (and d!2112782 b!6722979)))

(assert (=> bs!1788531 (not (= lambda!377112 lambda!377089))))

(assert (=> bs!1788527 (not (= lambda!377112 lambda!377003))))

(declare-fun bs!1788534 () Bool)

(assert (= bs!1788534 (and d!2112782 b!6722916)))

(assert (=> bs!1788534 (not (= lambda!377112 lambda!377084))))

(declare-fun bs!1788536 () Bool)

(assert (= bs!1788536 (and d!2112782 d!2112580)))

(assert (=> bs!1788536 (= lambda!377112 lambda!377081)))

(declare-fun bs!1788537 () Bool)

(assert (= bs!1788537 (and d!2112782 d!2112568)))

(assert (=> bs!1788537 (not (= lambda!377112 lambda!377078))))

(declare-fun bs!1788538 () Bool)

(assert (= bs!1788538 (and d!2112782 d!2112752)))

(assert (=> bs!1788538 (= (= r!7292 (Star!16549 (reg!16878 r!7292))) (= lambda!377112 lambda!377105))))

(declare-fun bs!1788539 () Bool)

(assert (= bs!1788539 (and d!2112782 b!6722470)))

(assert (=> bs!1788539 (not (= lambda!377112 lambda!377035))))

(declare-fun bs!1788541 () Bool)

(assert (= bs!1788541 (and d!2112782 d!2112566)))

(assert (=> bs!1788541 (= lambda!377112 lambda!377071)))

(declare-fun bs!1788543 () Bool)

(assert (= bs!1788543 (and d!2112782 b!6722920)))

(assert (=> bs!1788543 (not (= lambda!377112 lambda!377083))))

(assert (=> bs!1788527 (not (= lambda!377112 lambda!377004))))

(declare-fun bs!1788544 () Bool)

(assert (= bs!1788544 (and d!2112782 b!6722474)))

(assert (=> bs!1788544 (not (= lambda!377112 lambda!377034))))

(assert (=> bs!1788541 (not (= lambda!377112 lambda!377072))))

(assert (=> bs!1788538 (not (= lambda!377112 lambda!377106))))

(assert (=> bs!1788537 (= (= r!7292 (Star!16549 (reg!16878 r!7292))) (= lambda!377112 lambda!377077))))

(assert (=> d!2112782 true))

(assert (=> d!2112782 true))

(assert (=> d!2112782 true))

(assert (=> d!2112782 (= (isDefined!13139 (findConcatSeparation!2850 (reg!16878 r!7292) r!7292 Nil!65824 s!2326 s!2326)) (Exists!3617 lambda!377112))))

(assert (=> d!2112782 true))

(declare-fun _$89!2926 () Unit!159789)

(assert (=> d!2112782 (= (choose!50088 (reg!16878 r!7292) r!7292 s!2326) _$89!2926)))

(declare-fun bs!1788547 () Bool)

(assert (= bs!1788547 d!2112782))

(assert (=> bs!1788547 m!7483430))

(assert (=> bs!1788547 m!7483430))

(assert (=> bs!1788547 m!7483434))

(declare-fun m!7484206 () Bool)

(assert (=> bs!1788547 m!7484206))

(assert (=> d!2112580 d!2112782))

(declare-fun d!2112786 () Bool)

(assert (=> d!2112786 (= (Exists!3617 lambda!377081) (choose!50087 lambda!377081))))

(declare-fun bs!1788548 () Bool)

(assert (= bs!1788548 d!2112786))

(declare-fun m!7484208 () Bool)

(assert (=> bs!1788548 m!7484208))

(assert (=> d!2112580 d!2112786))

(assert (=> d!2112580 d!2112578))

(assert (=> d!2112580 d!2112640))

(declare-fun d!2112788 () Bool)

(assert (=> d!2112788 (= (isEmpty!38149 (t!379625 (unfocusZipperList!1970 zl!343))) ((_ is Nil!65822) (t!379625 (unfocusZipperList!1970 zl!343))))))

(assert (=> b!6722755 d!2112788))

(declare-fun d!2112790 () Bool)

(assert (=> d!2112790 (= (isEmpty!38149 (exprs!6433 (h!72271 zl!343))) ((_ is Nil!65822) (exprs!6433 (h!72271 zl!343))))))

(assert (=> b!6722665 d!2112790))

(declare-fun bm!606966 () Bool)

(declare-fun call!606972 () Bool)

(declare-fun call!606971 () Bool)

(assert (=> bm!606966 (= call!606972 call!606971)))

(declare-fun bm!606967 () Bool)

(declare-fun call!606973 () Bool)

(declare-fun c!1246530 () Bool)

(assert (=> bm!606967 (= call!606973 (validRegex!8285 (ite c!1246530 (regOne!33611 lt!2436856) (regOne!33610 lt!2436856))))))

(declare-fun c!1246531 () Bool)

(declare-fun bm!606968 () Bool)

(assert (=> bm!606968 (= call!606971 (validRegex!8285 (ite c!1246531 (reg!16878 lt!2436856) (ite c!1246530 (regTwo!33611 lt!2436856) (regTwo!33610 lt!2436856)))))))

(declare-fun b!6723333 () Bool)

(declare-fun e!4062277 () Bool)

(declare-fun e!4062281 () Bool)

(assert (=> b!6723333 (= e!4062277 e!4062281)))

(assert (=> b!6723333 (= c!1246530 ((_ is Union!16549) lt!2436856))))

(declare-fun b!6723334 () Bool)

(declare-fun e!4062278 () Bool)

(assert (=> b!6723334 (= e!4062278 call!606971)))

(declare-fun b!6723335 () Bool)

(declare-fun res!2750941 () Bool)

(declare-fun e!4062279 () Bool)

(assert (=> b!6723335 (=> (not res!2750941) (not e!4062279))))

(assert (=> b!6723335 (= res!2750941 call!606973)))

(assert (=> b!6723335 (= e!4062281 e!4062279)))

(declare-fun b!6723336 () Bool)

(declare-fun e!4062275 () Bool)

(assert (=> b!6723336 (= e!4062275 e!4062277)))

(assert (=> b!6723336 (= c!1246531 ((_ is Star!16549) lt!2436856))))

(declare-fun b!6723337 () Bool)

(declare-fun res!2750942 () Bool)

(declare-fun e!4062280 () Bool)

(assert (=> b!6723337 (=> res!2750942 e!4062280)))

(assert (=> b!6723337 (= res!2750942 (not ((_ is Concat!25394) lt!2436856)))))

(assert (=> b!6723337 (= e!4062281 e!4062280)))

(declare-fun b!6723339 () Bool)

(declare-fun e!4062276 () Bool)

(assert (=> b!6723339 (= e!4062280 e!4062276)))

(declare-fun res!2750940 () Bool)

(assert (=> b!6723339 (=> (not res!2750940) (not e!4062276))))

(assert (=> b!6723339 (= res!2750940 call!606973)))

(declare-fun b!6723340 () Bool)

(assert (=> b!6723340 (= e!4062279 call!606972)))

(declare-fun b!6723341 () Bool)

(assert (=> b!6723341 (= e!4062276 call!606972)))

(declare-fun d!2112792 () Bool)

(declare-fun res!2750938 () Bool)

(assert (=> d!2112792 (=> res!2750938 e!4062275)))

(assert (=> d!2112792 (= res!2750938 ((_ is ElementMatch!16549) lt!2436856))))

(assert (=> d!2112792 (= (validRegex!8285 lt!2436856) e!4062275)))

(declare-fun b!6723338 () Bool)

(assert (=> b!6723338 (= e!4062277 e!4062278)))

(declare-fun res!2750939 () Bool)

(assert (=> b!6723338 (= res!2750939 (not (nullable!6536 (reg!16878 lt!2436856))))))

(assert (=> b!6723338 (=> (not res!2750939) (not e!4062278))))

(assert (= (and d!2112792 (not res!2750938)) b!6723336))

(assert (= (and b!6723336 c!1246531) b!6723338))

(assert (= (and b!6723336 (not c!1246531)) b!6723333))

(assert (= (and b!6723338 res!2750939) b!6723334))

(assert (= (and b!6723333 c!1246530) b!6723335))

(assert (= (and b!6723333 (not c!1246530)) b!6723337))

(assert (= (and b!6723335 res!2750941) b!6723340))

(assert (= (and b!6723337 (not res!2750942)) b!6723339))

(assert (= (and b!6723339 res!2750940) b!6723341))

(assert (= (or b!6723340 b!6723341) bm!606966))

(assert (= (or b!6723335 b!6723339) bm!606967))

(assert (= (or b!6723334 bm!606966) bm!606968))

(declare-fun m!7484210 () Bool)

(assert (=> bm!606967 m!7484210))

(declare-fun m!7484212 () Bool)

(assert (=> bm!606968 m!7484212))

(declare-fun m!7484214 () Bool)

(assert (=> b!6723338 m!7484214))

(assert (=> d!2112550 d!2112792))

(assert (=> d!2112550 d!2112544))

(assert (=> d!2112550 d!2112548))

(declare-fun b!6723342 () Bool)

(declare-fun e!4062282 () (InoxSet Context!11866))

(declare-fun call!606979 () (InoxSet Context!11866))

(declare-fun call!606974 () (InoxSet Context!11866))

(assert (=> b!6723342 (= e!4062282 ((_ map or) call!606979 call!606974))))

(declare-fun bm!606969 () Bool)

(declare-fun call!606977 () (InoxSet Context!11866))

(assert (=> bm!606969 (= call!606977 call!606974)))

(declare-fun b!6723343 () Bool)

(declare-fun c!1246535 () Bool)

(declare-fun e!4062285 () Bool)

(assert (=> b!6723343 (= c!1246535 e!4062285)))

(declare-fun res!2750943 () Bool)

(assert (=> b!6723343 (=> (not res!2750943) (not e!4062285))))

(assert (=> b!6723343 (= res!2750943 ((_ is Concat!25394) (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun e!4062284 () (InoxSet Context!11866))

(assert (=> b!6723343 (= e!4062284 e!4062282)))

(declare-fun b!6723344 () Bool)

(declare-fun e!4062286 () (InoxSet Context!11866))

(assert (=> b!6723344 (= e!4062286 call!606977)))

(declare-fun b!6723345 () Bool)

(declare-fun e!4062287 () (InoxSet Context!11866))

(assert (=> b!6723345 (= e!4062287 (store ((as const (Array Context!11866 Bool)) false) (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))) true))))

(declare-fun c!1246534 () Bool)

(declare-fun call!606976 () List!65946)

(declare-fun bm!606970 () Bool)

(assert (=> bm!606970 (= call!606976 ($colon$colon!2366 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343))))) (ite (or c!1246535 c!1246534) (regTwo!33610 (h!72270 (exprs!6433 (h!72271 zl!343)))) (h!72270 (exprs!6433 (h!72271 zl!343))))))))

(declare-fun d!2112794 () Bool)

(declare-fun c!1246536 () Bool)

(assert (=> d!2112794 (= c!1246536 (and ((_ is ElementMatch!16549) (h!72270 (exprs!6433 (h!72271 zl!343)))) (= (c!1246247 (h!72270 (exprs!6433 (h!72271 zl!343)))) (h!72272 s!2326))))))

(assert (=> d!2112794 (= (derivationStepZipperDown!1777 (h!72270 (exprs!6433 (h!72271 zl!343))) (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))) (h!72272 s!2326)) e!4062287)))

(declare-fun b!6723346 () Bool)

(declare-fun call!606975 () (InoxSet Context!11866))

(assert (=> b!6723346 (= e!4062284 ((_ map or) call!606979 call!606975))))

(declare-fun b!6723347 () Bool)

(assert (=> b!6723347 (= e!4062285 (nullable!6536 (regOne!33610 (h!72270 (exprs!6433 (h!72271 zl!343))))))))

(declare-fun b!6723348 () Bool)

(assert (=> b!6723348 (= e!4062287 e!4062284)))

(declare-fun c!1246533 () Bool)

(assert (=> b!6723348 (= c!1246533 ((_ is Union!16549) (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun b!6723349 () Bool)

(assert (=> b!6723349 (= e!4062286 ((as const (Array Context!11866 Bool)) false))))

(declare-fun bm!606971 () Bool)

(declare-fun call!606978 () List!65946)

(assert (=> bm!606971 (= call!606978 call!606976)))

(declare-fun b!6723350 () Bool)

(declare-fun e!4062283 () (InoxSet Context!11866))

(assert (=> b!6723350 (= e!4062283 call!606977)))

(declare-fun b!6723351 () Bool)

(assert (=> b!6723351 (= e!4062282 e!4062283)))

(assert (=> b!6723351 (= c!1246534 ((_ is Concat!25394) (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun bm!606972 () Bool)

(assert (=> bm!606972 (= call!606974 call!606975)))

(declare-fun b!6723352 () Bool)

(declare-fun c!1246532 () Bool)

(assert (=> b!6723352 (= c!1246532 ((_ is Star!16549) (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(assert (=> b!6723352 (= e!4062283 e!4062286)))

(declare-fun bm!606973 () Bool)

(assert (=> bm!606973 (= call!606979 (derivationStepZipperDown!1777 (ite c!1246533 (regOne!33611 (h!72270 (exprs!6433 (h!72271 zl!343)))) (regOne!33610 (h!72270 (exprs!6433 (h!72271 zl!343))))) (ite c!1246533 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))) (Context!11867 call!606976)) (h!72272 s!2326)))))

(declare-fun bm!606974 () Bool)

(assert (=> bm!606974 (= call!606975 (derivationStepZipperDown!1777 (ite c!1246533 (regTwo!33611 (h!72270 (exprs!6433 (h!72271 zl!343)))) (ite c!1246535 (regTwo!33610 (h!72270 (exprs!6433 (h!72271 zl!343)))) (ite c!1246534 (regOne!33610 (h!72270 (exprs!6433 (h!72271 zl!343)))) (reg!16878 (h!72270 (exprs!6433 (h!72271 zl!343))))))) (ite (or c!1246533 c!1246535) (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))) (Context!11867 call!606978)) (h!72272 s!2326)))))

(assert (= (and d!2112794 c!1246536) b!6723345))

(assert (= (and d!2112794 (not c!1246536)) b!6723348))

(assert (= (and b!6723348 c!1246533) b!6723346))

(assert (= (and b!6723348 (not c!1246533)) b!6723343))

(assert (= (and b!6723343 res!2750943) b!6723347))

(assert (= (and b!6723343 c!1246535) b!6723342))

(assert (= (and b!6723343 (not c!1246535)) b!6723351))

(assert (= (and b!6723351 c!1246534) b!6723350))

(assert (= (and b!6723351 (not c!1246534)) b!6723352))

(assert (= (and b!6723352 c!1246532) b!6723344))

(assert (= (and b!6723352 (not c!1246532)) b!6723349))

(assert (= (or b!6723350 b!6723344) bm!606971))

(assert (= (or b!6723350 b!6723344) bm!606969))

(assert (= (or b!6723342 bm!606971) bm!606970))

(assert (= (or b!6723342 bm!606969) bm!606972))

(assert (= (or b!6723346 bm!606972) bm!606974))

(assert (= (or b!6723346 b!6723342) bm!606973))

(declare-fun m!7484228 () Bool)

(assert (=> bm!606974 m!7484228))

(declare-fun m!7484230 () Bool)

(assert (=> bm!606970 m!7484230))

(declare-fun m!7484232 () Bool)

(assert (=> b!6723347 m!7484232))

(declare-fun m!7484235 () Bool)

(assert (=> b!6723345 m!7484235))

(declare-fun m!7484238 () Bool)

(assert (=> bm!606973 m!7484238))

(assert (=> bm!606888 d!2112794))

(declare-fun b!6723353 () Bool)

(declare-fun e!4062289 () (InoxSet Context!11866))

(declare-fun e!4062290 () (InoxSet Context!11866))

(assert (=> b!6723353 (= e!4062289 e!4062290)))

(declare-fun c!1246537 () Bool)

(assert (=> b!6723353 (= c!1246537 ((_ is Cons!65822) (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))))))))

(declare-fun bm!606975 () Bool)

(declare-fun call!606980 () (InoxSet Context!11866))

(assert (=> bm!606975 (= call!606980 (derivationStepZipperDown!1777 (h!72270 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))))) (Context!11867 (t!379625 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343))))))) (h!72272 s!2326)))))

(declare-fun d!2112806 () Bool)

(declare-fun c!1246538 () Bool)

(declare-fun e!4062288 () Bool)

(assert (=> d!2112806 (= c!1246538 e!4062288)))

(declare-fun res!2750944 () Bool)

(assert (=> d!2112806 (=> (not res!2750944) (not e!4062288))))

(assert (=> d!2112806 (= res!2750944 ((_ is Cons!65822) (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))))))))

(assert (=> d!2112806 (= (derivationStepZipperUp!1703 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343)))) (h!72272 s!2326)) e!4062289)))

(declare-fun b!6723354 () Bool)

(assert (=> b!6723354 (= e!4062290 call!606980)))

(declare-fun b!6723355 () Bool)

(assert (=> b!6723355 (= e!4062289 ((_ map or) call!606980 (derivationStepZipperUp!1703 (Context!11867 (t!379625 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343))))))) (h!72272 s!2326))))))

(declare-fun b!6723356 () Bool)

(assert (=> b!6723356 (= e!4062290 ((as const (Array Context!11866 Bool)) false))))

(declare-fun b!6723357 () Bool)

(assert (=> b!6723357 (= e!4062288 (nullable!6536 (h!72270 (exprs!6433 (Context!11867 (t!379625 (exprs!6433 (h!72271 zl!343))))))))))

(assert (= (and d!2112806 res!2750944) b!6723357))

(assert (= (and d!2112806 c!1246538) b!6723355))

(assert (= (and d!2112806 (not c!1246538)) b!6723353))

(assert (= (and b!6723353 c!1246537) b!6723354))

(assert (= (and b!6723353 (not c!1246537)) b!6723356))

(assert (= (or b!6723355 b!6723354) bm!606975))

(declare-fun m!7484240 () Bool)

(assert (=> bm!606975 m!7484240))

(declare-fun m!7484242 () Bool)

(assert (=> b!6723355 m!7484242))

(declare-fun m!7484244 () Bool)

(assert (=> b!6723357 m!7484244))

(assert (=> b!6722795 d!2112806))

(assert (=> b!6722584 d!2112586))

(assert (=> b!6722584 d!2112588))

(declare-fun d!2112808 () Bool)

(assert (=> d!2112808 (= (isEmptyLang!1923 lt!2436850) ((_ is EmptyLang!16549) lt!2436850))))

(assert (=> b!6722757 d!2112808))

(declare-fun d!2112810 () Bool)

(assert (=> d!2112810 (= (Exists!3617 lambda!377071) (choose!50087 lambda!377071))))

(declare-fun bs!1788551 () Bool)

(assert (= bs!1788551 d!2112810))

(declare-fun m!7484246 () Bool)

(assert (=> bs!1788551 m!7484246))

(assert (=> d!2112566 d!2112810))

(declare-fun d!2112812 () Bool)

(assert (=> d!2112812 (= (Exists!3617 lambda!377072) (choose!50087 lambda!377072))))

(declare-fun bs!1788552 () Bool)

(assert (= bs!1788552 d!2112812))

(declare-fun m!7484248 () Bool)

(assert (=> bs!1788552 m!7484248))

(assert (=> d!2112566 d!2112812))

(declare-fun bs!1788553 () Bool)

(declare-fun d!2112814 () Bool)

(assert (= bs!1788553 (and d!2112814 b!6722210)))

(declare-fun lambda!377121 () Int)

(assert (=> bs!1788553 (= lambda!377121 lambda!377002)))

(declare-fun bs!1788554 () Bool)

(assert (= bs!1788554 (and d!2112814 b!6722979)))

(assert (=> bs!1788554 (not (= lambda!377121 lambda!377089))))

(assert (=> bs!1788553 (not (= lambda!377121 lambda!377003))))

(declare-fun bs!1788556 () Bool)

(assert (= bs!1788556 (and d!2112814 b!6722916)))

(assert (=> bs!1788556 (not (= lambda!377121 lambda!377084))))

(declare-fun bs!1788558 () Bool)

(assert (= bs!1788558 (and d!2112814 d!2112580)))

(assert (=> bs!1788558 (= lambda!377121 lambda!377081)))

(declare-fun bs!1788560 () Bool)

(assert (= bs!1788560 (and d!2112814 d!2112568)))

(assert (=> bs!1788560 (not (= lambda!377121 lambda!377078))))

(declare-fun bs!1788562 () Bool)

(assert (= bs!1788562 (and d!2112814 d!2112752)))

(assert (=> bs!1788562 (= (= r!7292 (Star!16549 (reg!16878 r!7292))) (= lambda!377121 lambda!377105))))

(declare-fun bs!1788564 () Bool)

(assert (= bs!1788564 (and d!2112814 b!6722470)))

(assert (=> bs!1788564 (not (= lambda!377121 lambda!377035))))

(declare-fun bs!1788565 () Bool)

(assert (= bs!1788565 (and d!2112814 d!2112566)))

(assert (=> bs!1788565 (= lambda!377121 lambda!377071)))

(declare-fun bs!1788566 () Bool)

(assert (= bs!1788566 (and d!2112814 d!2112782)))

(assert (=> bs!1788566 (= lambda!377121 lambda!377112)))

(declare-fun bs!1788567 () Bool)

(assert (= bs!1788567 (and d!2112814 b!6722983)))

(assert (=> bs!1788567 (not (= lambda!377121 lambda!377088))))

(declare-fun bs!1788569 () Bool)

(assert (= bs!1788569 (and d!2112814 b!6722920)))

(assert (=> bs!1788569 (not (= lambda!377121 lambda!377083))))

(assert (=> bs!1788553 (not (= lambda!377121 lambda!377004))))

(declare-fun bs!1788571 () Bool)

(assert (= bs!1788571 (and d!2112814 b!6722474)))

(assert (=> bs!1788571 (not (= lambda!377121 lambda!377034))))

(assert (=> bs!1788565 (not (= lambda!377121 lambda!377072))))

(assert (=> bs!1788562 (not (= lambda!377121 lambda!377106))))

(assert (=> bs!1788560 (= (= r!7292 (Star!16549 (reg!16878 r!7292))) (= lambda!377121 lambda!377077))))

(assert (=> d!2112814 true))

(assert (=> d!2112814 true))

(assert (=> d!2112814 true))

(declare-fun lambda!377123 () Int)

(assert (=> bs!1788553 (not (= lambda!377123 lambda!377002))))

(assert (=> bs!1788554 (= (and (= (reg!16878 r!7292) (regOne!33610 (regTwo!33611 r!7292))) (= r!7292 (regTwo!33610 (regTwo!33611 r!7292)))) (= lambda!377123 lambda!377089))))

(declare-fun bs!1788575 () Bool)

(assert (= bs!1788575 d!2112814))

(assert (=> bs!1788575 (not (= lambda!377123 lambda!377121))))

(assert (=> bs!1788553 (not (= lambda!377123 lambda!377003))))

(assert (=> bs!1788556 (= (and (= (reg!16878 r!7292) (regOne!33610 (regOne!33611 r!7292))) (= r!7292 (regTwo!33610 (regOne!33611 r!7292)))) (= lambda!377123 lambda!377084))))

(assert (=> bs!1788558 (not (= lambda!377123 lambda!377081))))

(assert (=> bs!1788560 (not (= lambda!377123 lambda!377078))))

(assert (=> bs!1788562 (not (= lambda!377123 lambda!377105))))

(assert (=> bs!1788564 (= (and (= (reg!16878 r!7292) (regOne!33610 r!7292)) (= r!7292 (regTwo!33610 r!7292))) (= lambda!377123 lambda!377035))))

(assert (=> bs!1788565 (not (= lambda!377123 lambda!377071))))

(assert (=> bs!1788566 (not (= lambda!377123 lambda!377112))))

(assert (=> bs!1788567 (not (= lambda!377123 lambda!377088))))

(assert (=> bs!1788569 (not (= lambda!377123 lambda!377083))))

(assert (=> bs!1788553 (= lambda!377123 lambda!377004)))

(assert (=> bs!1788571 (not (= lambda!377123 lambda!377034))))

(assert (=> bs!1788565 (= lambda!377123 lambda!377072)))

(assert (=> bs!1788562 (not (= lambda!377123 lambda!377106))))

(assert (=> bs!1788560 (not (= lambda!377123 lambda!377077))))

(assert (=> d!2112814 true))

(assert (=> d!2112814 true))

(assert (=> d!2112814 true))

(assert (=> d!2112814 (= (Exists!3617 lambda!377121) (Exists!3617 lambda!377123))))

(assert (=> d!2112814 true))

(declare-fun _$90!2548 () Unit!159789)

(assert (=> d!2112814 (= (choose!50085 (reg!16878 r!7292) r!7292 s!2326) _$90!2548)))

(declare-fun m!7484250 () Bool)

(assert (=> bs!1788575 m!7484250))

(declare-fun m!7484252 () Bool)

(assert (=> bs!1788575 m!7484252))

(assert (=> d!2112566 d!2112814))

(assert (=> d!2112566 d!2112640))

(declare-fun bs!1788577 () Bool)

(declare-fun d!2112816 () Bool)

(assert (= bs!1788577 (and d!2112816 d!2112524)))

(declare-fun lambda!377125 () Int)

(assert (=> bs!1788577 (= lambda!377125 lambda!377049)))

(declare-fun bs!1788578 () Bool)

(assert (= bs!1788578 (and d!2112816 d!2112544)))

(assert (=> bs!1788578 (= lambda!377125 lambda!377060)))

(declare-fun bs!1788579 () Bool)

(assert (= bs!1788579 (and d!2112816 d!2112526)))

(assert (=> bs!1788579 (= lambda!377125 lambda!377050)))

(declare-fun bs!1788580 () Bool)

(assert (= bs!1788580 (and d!2112816 d!2112528)))

(assert (=> bs!1788580 (= lambda!377125 lambda!377057)))

(declare-fun bs!1788581 () Bool)

(assert (= bs!1788581 (and d!2112816 d!2112676)))

(assert (=> bs!1788581 (= lambda!377125 lambda!377093)))

(declare-fun bs!1788582 () Bool)

(assert (= bs!1788582 (and d!2112816 d!2112584)))

(assert (=> bs!1788582 (= lambda!377125 lambda!377082)))

(declare-fun bs!1788583 () Bool)

(assert (= bs!1788583 (and d!2112816 d!2112522)))

(assert (=> bs!1788583 (= lambda!377125 lambda!377048)))

(declare-fun bs!1788584 () Bool)

(assert (= bs!1788584 (and d!2112816 d!2112548)))

(assert (=> bs!1788584 (= lambda!377125 lambda!377063)))

(declare-fun bs!1788585 () Bool)

(assert (= bs!1788585 (and d!2112816 d!2112608)))

(assert (=> bs!1788585 (= lambda!377125 lambda!377086)))

(declare-fun bs!1788586 () Bool)

(assert (= bs!1788586 (and d!2112816 d!2112642)))

(assert (=> bs!1788586 (= lambda!377125 lambda!377092)))

(assert (=> d!2112816 (= (inv!84619 (h!72271 (t!379626 zl!343))) (forall!15749 (exprs!6433 (h!72271 (t!379626 zl!343))) lambda!377125))))

(declare-fun bs!1788587 () Bool)

(assert (= bs!1788587 d!2112816))

(declare-fun m!7484258 () Bool)

(assert (=> bs!1788587 m!7484258))

(assert (=> b!6722866 d!2112816))

(declare-fun d!2112822 () Bool)

(assert (=> d!2112822 (= (flatMap!2030 z!1189 lambda!377066) (choose!50082 z!1189 lambda!377066))))

(declare-fun bs!1788588 () Bool)

(assert (= bs!1788588 d!2112822))

(declare-fun m!7484260 () Bool)

(assert (=> bs!1788588 m!7484260))

(assert (=> d!2112554 d!2112822))

(declare-fun d!2112824 () Bool)

(assert (=> d!2112824 (= (head!13526 (exprs!6433 (h!72271 zl!343))) (h!72270 (exprs!6433 (h!72271 zl!343))))))

(assert (=> b!6722667 d!2112824))

(declare-fun d!2112828 () Bool)

(assert (=> d!2112828 (= (isEmpty!38149 (t!379625 (exprs!6433 (h!72271 zl!343)))) ((_ is Nil!65822) (t!379625 (exprs!6433 (h!72271 zl!343)))))))

(assert (=> b!6722668 d!2112828))

(declare-fun d!2112832 () Bool)

(assert (=> d!2112832 (= (nullable!6536 (h!72270 (exprs!6433 (h!72271 zl!343)))) (nullableFct!2449 (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun bs!1788589 () Bool)

(assert (= bs!1788589 d!2112832))

(declare-fun m!7484262 () Bool)

(assert (=> bs!1788589 m!7484262))

(assert (=> b!6722797 d!2112832))

(declare-fun b!6723387 () Bool)

(declare-fun e!4062305 () (InoxSet Context!11866))

(declare-fun call!606992 () (InoxSet Context!11866))

(declare-fun call!606987 () (InoxSet Context!11866))

(assert (=> b!6723387 (= e!4062305 ((_ map or) call!606992 call!606987))))

(declare-fun bm!606982 () Bool)

(declare-fun call!606990 () (InoxSet Context!11866))

(assert (=> bm!606982 (= call!606990 call!606987)))

(declare-fun b!6723388 () Bool)

(declare-fun c!1246547 () Bool)

(declare-fun e!4062308 () Bool)

(assert (=> b!6723388 (= c!1246547 e!4062308)))

(declare-fun res!2750966 () Bool)

(assert (=> b!6723388 (=> (not res!2750966) (not e!4062308))))

(assert (=> b!6723388 (= res!2750966 ((_ is Concat!25394) (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))))))

(declare-fun e!4062307 () (InoxSet Context!11866))

(assert (=> b!6723388 (= e!4062307 e!4062305)))

(declare-fun b!6723389 () Bool)

(declare-fun e!4062309 () (InoxSet Context!11866))

(assert (=> b!6723389 (= e!4062309 call!606990)))

(declare-fun e!4062310 () (InoxSet Context!11866))

(declare-fun b!6723390 () Bool)

(assert (=> b!6723390 (= e!4062310 (store ((as const (Array Context!11866 Bool)) false) (ite (or c!1246301 c!1246303) (Context!11867 Nil!65822) (Context!11867 call!606860)) true))))

(declare-fun call!606989 () List!65946)

(declare-fun c!1246546 () Bool)

(declare-fun bm!606983 () Bool)

(assert (=> bm!606983 (= call!606989 ($colon$colon!2366 (exprs!6433 (ite (or c!1246301 c!1246303) (Context!11867 Nil!65822) (Context!11867 call!606860))) (ite (or c!1246547 c!1246546) (regTwo!33610 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))) (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292)))))))))

(declare-fun d!2112834 () Bool)

(declare-fun c!1246548 () Bool)

(assert (=> d!2112834 (= c!1246548 (and ((_ is ElementMatch!16549) (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))) (= (c!1246247 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))) (h!72272 s!2326))))))

(assert (=> d!2112834 (= (derivationStepZipperDown!1777 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292)))) (ite (or c!1246301 c!1246303) (Context!11867 Nil!65822) (Context!11867 call!606860)) (h!72272 s!2326)) e!4062310)))

(declare-fun b!6723391 () Bool)

(declare-fun call!606988 () (InoxSet Context!11866))

(assert (=> b!6723391 (= e!4062307 ((_ map or) call!606992 call!606988))))

(declare-fun b!6723392 () Bool)

(assert (=> b!6723392 (= e!4062308 (nullable!6536 (regOne!33610 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292)))))))))

(declare-fun b!6723393 () Bool)

(assert (=> b!6723393 (= e!4062310 e!4062307)))

(declare-fun c!1246545 () Bool)

(assert (=> b!6723393 (= c!1246545 ((_ is Union!16549) (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))))))

(declare-fun b!6723394 () Bool)

(assert (=> b!6723394 (= e!4062309 ((as const (Array Context!11866 Bool)) false))))

(declare-fun bm!606984 () Bool)

(declare-fun call!606991 () List!65946)

(assert (=> bm!606984 (= call!606991 call!606989)))

(declare-fun b!6723395 () Bool)

(declare-fun e!4062306 () (InoxSet Context!11866))

(assert (=> b!6723395 (= e!4062306 call!606990)))

(declare-fun b!6723396 () Bool)

(assert (=> b!6723396 (= e!4062305 e!4062306)))

(assert (=> b!6723396 (= c!1246546 ((_ is Concat!25394) (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))))))

(declare-fun bm!606985 () Bool)

(assert (=> bm!606985 (= call!606987 call!606988)))

(declare-fun c!1246544 () Bool)

(declare-fun b!6723397 () Bool)

(assert (=> b!6723397 (= c!1246544 ((_ is Star!16549) (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))))))

(assert (=> b!6723397 (= e!4062306 e!4062309)))

(declare-fun bm!606986 () Bool)

(assert (=> bm!606986 (= call!606992 (derivationStepZipperDown!1777 (ite c!1246545 (regOne!33611 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))) (regOne!33610 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292)))))) (ite c!1246545 (ite (or c!1246301 c!1246303) (Context!11867 Nil!65822) (Context!11867 call!606860)) (Context!11867 call!606989)) (h!72272 s!2326)))))

(declare-fun bm!606987 () Bool)

(assert (=> bm!606987 (= call!606988 (derivationStepZipperDown!1777 (ite c!1246545 (regTwo!33611 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))) (ite c!1246547 (regTwo!33610 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))) (ite c!1246546 (regOne!33610 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292))))) (reg!16878 (ite c!1246301 (regTwo!33611 r!7292) (ite c!1246303 (regTwo!33610 r!7292) (ite c!1246302 (regOne!33610 r!7292) (reg!16878 r!7292)))))))) (ite (or c!1246545 c!1246547) (ite (or c!1246301 c!1246303) (Context!11867 Nil!65822) (Context!11867 call!606860)) (Context!11867 call!606991)) (h!72272 s!2326)))))

(assert (= (and d!2112834 c!1246548) b!6723390))

(assert (= (and d!2112834 (not c!1246548)) b!6723393))

(assert (= (and b!6723393 c!1246545) b!6723391))

(assert (= (and b!6723393 (not c!1246545)) b!6723388))

(assert (= (and b!6723388 res!2750966) b!6723392))

(assert (= (and b!6723388 c!1246547) b!6723387))

(assert (= (and b!6723388 (not c!1246547)) b!6723396))

(assert (= (and b!6723396 c!1246546) b!6723395))

(assert (= (and b!6723396 (not c!1246546)) b!6723397))

(assert (= (and b!6723397 c!1246544) b!6723389))

(assert (= (and b!6723397 (not c!1246544)) b!6723394))

(assert (= (or b!6723395 b!6723389) bm!606984))

(assert (= (or b!6723395 b!6723389) bm!606982))

(assert (= (or b!6723387 bm!606984) bm!606983))

(assert (= (or b!6723387 bm!606982) bm!606985))

(assert (= (or b!6723391 bm!606985) bm!606987))

(assert (= (or b!6723391 b!6723387) bm!606986))

(declare-fun m!7484272 () Bool)

(assert (=> bm!606987 m!7484272))

(declare-fun m!7484276 () Bool)

(assert (=> bm!606983 m!7484276))

(declare-fun m!7484278 () Bool)

(assert (=> b!6723392 m!7484278))

(declare-fun m!7484280 () Bool)

(assert (=> b!6723390 m!7484280))

(declare-fun m!7484282 () Bool)

(assert (=> bm!606986 m!7484282))

(assert (=> bm!606856 d!2112834))

(declare-fun bm!606991 () Bool)

(declare-fun call!606997 () Bool)

(declare-fun call!606996 () Bool)

(assert (=> bm!606991 (= call!606997 call!606996)))

(declare-fun call!606998 () Bool)

(declare-fun bm!606992 () Bool)

(declare-fun c!1246551 () Bool)

(assert (=> bm!606992 (= call!606998 (validRegex!8285 (ite c!1246551 (regOne!33611 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))) (regOne!33610 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))))))))

(declare-fun bm!606993 () Bool)

(declare-fun c!1246552 () Bool)

(assert (=> bm!606993 (= call!606996 (validRegex!8285 (ite c!1246552 (reg!16878 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))) (ite c!1246551 (regTwo!33611 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))) (regTwo!33610 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292))))))))))

(declare-fun b!6723407 () Bool)

(declare-fun e!4062320 () Bool)

(declare-fun e!4062324 () Bool)

(assert (=> b!6723407 (= e!4062320 e!4062324)))

(assert (=> b!6723407 (= c!1246551 ((_ is Union!16549) (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))))))

(declare-fun b!6723408 () Bool)

(declare-fun e!4062321 () Bool)

(assert (=> b!6723408 (= e!4062321 call!606996)))

(declare-fun b!6723409 () Bool)

(declare-fun res!2750975 () Bool)

(declare-fun e!4062322 () Bool)

(assert (=> b!6723409 (=> (not res!2750975) (not e!4062322))))

(assert (=> b!6723409 (= res!2750975 call!606998)))

(assert (=> b!6723409 (= e!4062324 e!4062322)))

(declare-fun b!6723410 () Bool)

(declare-fun e!4062318 () Bool)

(assert (=> b!6723410 (= e!4062318 e!4062320)))

(assert (=> b!6723410 (= c!1246552 ((_ is Star!16549) (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))))))

(declare-fun b!6723411 () Bool)

(declare-fun res!2750976 () Bool)

(declare-fun e!4062323 () Bool)

(assert (=> b!6723411 (=> res!2750976 e!4062323)))

(assert (=> b!6723411 (= res!2750976 (not ((_ is Concat!25394) (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292))))))))

(assert (=> b!6723411 (= e!4062324 e!4062323)))

(declare-fun b!6723413 () Bool)

(declare-fun e!4062319 () Bool)

(assert (=> b!6723413 (= e!4062323 e!4062319)))

(declare-fun res!2750974 () Bool)

(assert (=> b!6723413 (=> (not res!2750974) (not e!4062319))))

(assert (=> b!6723413 (= res!2750974 call!606998)))

(declare-fun b!6723414 () Bool)

(assert (=> b!6723414 (= e!4062322 call!606997)))

(declare-fun b!6723415 () Bool)

(assert (=> b!6723415 (= e!4062319 call!606997)))

(declare-fun d!2112840 () Bool)

(declare-fun res!2750972 () Bool)

(assert (=> d!2112840 (=> res!2750972 e!4062318)))

(assert (=> d!2112840 (= res!2750972 ((_ is ElementMatch!16549) (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))))))

(assert (=> d!2112840 (= (validRegex!8285 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))) e!4062318)))

(declare-fun b!6723412 () Bool)

(assert (=> b!6723412 (= e!4062320 e!4062321)))

(declare-fun res!2750973 () Bool)

(assert (=> b!6723412 (= res!2750973 (not (nullable!6536 (reg!16878 (ite c!1246407 (reg!16878 r!7292) (ite c!1246406 (regTwo!33611 r!7292) (regTwo!33610 r!7292)))))))))

(assert (=> b!6723412 (=> (not res!2750973) (not e!4062321))))

(assert (= (and d!2112840 (not res!2750972)) b!6723410))

(assert (= (and b!6723410 c!1246552) b!6723412))

(assert (= (and b!6723410 (not c!1246552)) b!6723407))

(assert (= (and b!6723412 res!2750973) b!6723408))

(assert (= (and b!6723407 c!1246551) b!6723409))

(assert (= (and b!6723407 (not c!1246551)) b!6723411))

(assert (= (and b!6723409 res!2750975) b!6723414))

(assert (= (and b!6723411 (not res!2750976)) b!6723413))

(assert (= (and b!6723413 res!2750974) b!6723415))

(assert (= (or b!6723414 b!6723415) bm!606991))

(assert (= (or b!6723409 b!6723413) bm!606992))

(assert (= (or b!6723408 bm!606991) bm!606993))

(declare-fun m!7484290 () Bool)

(assert (=> bm!606992 m!7484290))

(declare-fun m!7484292 () Bool)

(assert (=> bm!606993 m!7484292))

(declare-fun m!7484294 () Bool)

(assert (=> b!6723412 m!7484294))

(assert (=> bm!606887 d!2112840))

(declare-fun d!2112844 () Bool)

(declare-fun c!1246555 () Bool)

(assert (=> d!2112844 (= c!1246555 ((_ is Nil!65823) lt!2436862))))

(declare-fun e!4062329 () (InoxSet Context!11866))

(assert (=> d!2112844 (= (content!12767 lt!2436862) e!4062329)))

(declare-fun b!6723422 () Bool)

(assert (=> b!6723422 (= e!4062329 ((as const (Array Context!11866 Bool)) false))))

(declare-fun b!6723423 () Bool)

(assert (=> b!6723423 (= e!4062329 ((_ map or) (store ((as const (Array Context!11866 Bool)) false) (h!72271 lt!2436862) true) (content!12767 (t!379626 lt!2436862))))))

(assert (= (and d!2112844 c!1246555) b!6723422))

(assert (= (and d!2112844 (not c!1246555)) b!6723423))

(declare-fun m!7484296 () Bool)

(assert (=> b!6723423 m!7484296))

(declare-fun m!7484298 () Bool)

(assert (=> b!6723423 m!7484298))

(assert (=> b!6722800 d!2112844))

(declare-fun b!6723426 () Bool)

(declare-fun e!4062331 () Bool)

(declare-fun tp!1843303 () Bool)

(declare-fun tp!1843306 () Bool)

(assert (=> b!6723426 (= e!4062331 (and tp!1843303 tp!1843306))))

(assert (=> b!6722898 (= tp!1843268 e!4062331)))

(declare-fun b!6723425 () Bool)

(assert (=> b!6723425 (= e!4062331 tp_is_empty!42351)))

(declare-fun b!6723427 () Bool)

(declare-fun tp!1843302 () Bool)

(assert (=> b!6723427 (= e!4062331 tp!1843302)))

(declare-fun b!6723428 () Bool)

(declare-fun tp!1843304 () Bool)

(declare-fun tp!1843305 () Bool)

(assert (=> b!6723428 (= e!4062331 (and tp!1843304 tp!1843305))))

(assert (= (and b!6722898 ((_ is ElementMatch!16549) (reg!16878 (regTwo!33610 r!7292)))) b!6723425))

(assert (= (and b!6722898 ((_ is Concat!25394) (reg!16878 (regTwo!33610 r!7292)))) b!6723426))

(assert (= (and b!6722898 ((_ is Star!16549) (reg!16878 (regTwo!33610 r!7292)))) b!6723427))

(assert (= (and b!6722898 ((_ is Union!16549) (reg!16878 (regTwo!33610 r!7292)))) b!6723428))

(declare-fun b!6723430 () Bool)

(declare-fun e!4062332 () Bool)

(declare-fun tp!1843308 () Bool)

(declare-fun tp!1843311 () Bool)

(assert (=> b!6723430 (= e!4062332 (and tp!1843308 tp!1843311))))

(assert (=> b!6722899 (= tp!1843270 e!4062332)))

(declare-fun b!6723429 () Bool)

(assert (=> b!6723429 (= e!4062332 tp_is_empty!42351)))

(declare-fun b!6723431 () Bool)

(declare-fun tp!1843307 () Bool)

(assert (=> b!6723431 (= e!4062332 tp!1843307)))

(declare-fun b!6723432 () Bool)

(declare-fun tp!1843309 () Bool)

(declare-fun tp!1843310 () Bool)

(assert (=> b!6723432 (= e!4062332 (and tp!1843309 tp!1843310))))

(assert (= (and b!6722899 ((_ is ElementMatch!16549) (regOne!33611 (regTwo!33610 r!7292)))) b!6723429))

(assert (= (and b!6722899 ((_ is Concat!25394) (regOne!33611 (regTwo!33610 r!7292)))) b!6723430))

(assert (= (and b!6722899 ((_ is Star!16549) (regOne!33611 (regTwo!33610 r!7292)))) b!6723431))

(assert (= (and b!6722899 ((_ is Union!16549) (regOne!33611 (regTwo!33610 r!7292)))) b!6723432))

(declare-fun b!6723444 () Bool)

(declare-fun e!4062339 () Bool)

(declare-fun tp!1843313 () Bool)

(declare-fun tp!1843316 () Bool)

(assert (=> b!6723444 (= e!4062339 (and tp!1843313 tp!1843316))))

(assert (=> b!6722899 (= tp!1843271 e!4062339)))

(declare-fun b!6723443 () Bool)

(assert (=> b!6723443 (= e!4062339 tp_is_empty!42351)))

(declare-fun b!6723445 () Bool)

(declare-fun tp!1843312 () Bool)

(assert (=> b!6723445 (= e!4062339 tp!1843312)))

(declare-fun b!6723446 () Bool)

(declare-fun tp!1843314 () Bool)

(declare-fun tp!1843315 () Bool)

(assert (=> b!6723446 (= e!4062339 (and tp!1843314 tp!1843315))))

(assert (= (and b!6722899 ((_ is ElementMatch!16549) (regTwo!33611 (regTwo!33610 r!7292)))) b!6723443))

(assert (= (and b!6722899 ((_ is Concat!25394) (regTwo!33611 (regTwo!33610 r!7292)))) b!6723444))

(assert (= (and b!6722899 ((_ is Star!16549) (regTwo!33611 (regTwo!33610 r!7292)))) b!6723445))

(assert (= (and b!6722899 ((_ is Union!16549) (regTwo!33611 (regTwo!33610 r!7292)))) b!6723446))

(declare-fun b!6723448 () Bool)

(declare-fun e!4062340 () Bool)

(declare-fun tp!1843318 () Bool)

(declare-fun tp!1843321 () Bool)

(assert (=> b!6723448 (= e!4062340 (and tp!1843318 tp!1843321))))

(assert (=> b!6722891 (= tp!1843261 e!4062340)))

(declare-fun b!6723447 () Bool)

(assert (=> b!6723447 (= e!4062340 tp_is_empty!42351)))

(declare-fun b!6723449 () Bool)

(declare-fun tp!1843317 () Bool)

(assert (=> b!6723449 (= e!4062340 tp!1843317)))

(declare-fun b!6723450 () Bool)

(declare-fun tp!1843319 () Bool)

(declare-fun tp!1843320 () Bool)

(assert (=> b!6723450 (= e!4062340 (and tp!1843319 tp!1843320))))

(assert (= (and b!6722891 ((_ is ElementMatch!16549) (h!72270 (exprs!6433 (h!72271 zl!343))))) b!6723447))

(assert (= (and b!6722891 ((_ is Concat!25394) (h!72270 (exprs!6433 (h!72271 zl!343))))) b!6723448))

(assert (= (and b!6722891 ((_ is Star!16549) (h!72270 (exprs!6433 (h!72271 zl!343))))) b!6723449))

(assert (= (and b!6722891 ((_ is Union!16549) (h!72270 (exprs!6433 (h!72271 zl!343))))) b!6723450))

(declare-fun b!6723451 () Bool)

(declare-fun e!4062341 () Bool)

(declare-fun tp!1843322 () Bool)

(declare-fun tp!1843323 () Bool)

(assert (=> b!6723451 (= e!4062341 (and tp!1843322 tp!1843323))))

(assert (=> b!6722891 (= tp!1843262 e!4062341)))

(assert (= (and b!6722891 ((_ is Cons!65822) (t!379625 (exprs!6433 (h!72271 zl!343))))) b!6723451))

(declare-fun b!6723453 () Bool)

(declare-fun e!4062342 () Bool)

(declare-fun tp!1843325 () Bool)

(declare-fun tp!1843328 () Bool)

(assert (=> b!6723453 (= e!4062342 (and tp!1843325 tp!1843328))))

(assert (=> b!6722885 (= tp!1843251 e!4062342)))

(declare-fun b!6723452 () Bool)

(assert (=> b!6723452 (= e!4062342 tp_is_empty!42351)))

(declare-fun b!6723454 () Bool)

(declare-fun tp!1843324 () Bool)

(assert (=> b!6723454 (= e!4062342 tp!1843324)))

(declare-fun b!6723455 () Bool)

(declare-fun tp!1843326 () Bool)

(declare-fun tp!1843327 () Bool)

(assert (=> b!6723455 (= e!4062342 (and tp!1843326 tp!1843327))))

(assert (= (and b!6722885 ((_ is ElementMatch!16549) (reg!16878 (regOne!33611 r!7292)))) b!6723452))

(assert (= (and b!6722885 ((_ is Concat!25394) (reg!16878 (regOne!33611 r!7292)))) b!6723453))

(assert (= (and b!6722885 ((_ is Star!16549) (reg!16878 (regOne!33611 r!7292)))) b!6723454))

(assert (= (and b!6722885 ((_ is Union!16549) (reg!16878 (regOne!33611 r!7292)))) b!6723455))

(declare-fun b!6723457 () Bool)

(declare-fun e!4062343 () Bool)

(declare-fun tp!1843330 () Bool)

(declare-fun tp!1843333 () Bool)

(assert (=> b!6723457 (= e!4062343 (and tp!1843330 tp!1843333))))

(assert (=> b!6722884 (= tp!1843252 e!4062343)))

(declare-fun b!6723456 () Bool)

(assert (=> b!6723456 (= e!4062343 tp_is_empty!42351)))

(declare-fun b!6723458 () Bool)

(declare-fun tp!1843329 () Bool)

(assert (=> b!6723458 (= e!4062343 tp!1843329)))

(declare-fun b!6723459 () Bool)

(declare-fun tp!1843331 () Bool)

(declare-fun tp!1843332 () Bool)

(assert (=> b!6723459 (= e!4062343 (and tp!1843331 tp!1843332))))

(assert (= (and b!6722884 ((_ is ElementMatch!16549) (regOne!33610 (regOne!33611 r!7292)))) b!6723456))

(assert (= (and b!6722884 ((_ is Concat!25394) (regOne!33610 (regOne!33611 r!7292)))) b!6723457))

(assert (= (and b!6722884 ((_ is Star!16549) (regOne!33610 (regOne!33611 r!7292)))) b!6723458))

(assert (= (and b!6722884 ((_ is Union!16549) (regOne!33610 (regOne!33611 r!7292)))) b!6723459))

(declare-fun b!6723461 () Bool)

(declare-fun e!4062344 () Bool)

(declare-fun tp!1843335 () Bool)

(declare-fun tp!1843338 () Bool)

(assert (=> b!6723461 (= e!4062344 (and tp!1843335 tp!1843338))))

(assert (=> b!6722884 (= tp!1843255 e!4062344)))

(declare-fun b!6723460 () Bool)

(assert (=> b!6723460 (= e!4062344 tp_is_empty!42351)))

(declare-fun b!6723462 () Bool)

(declare-fun tp!1843334 () Bool)

(assert (=> b!6723462 (= e!4062344 tp!1843334)))

(declare-fun b!6723463 () Bool)

(declare-fun tp!1843336 () Bool)

(declare-fun tp!1843337 () Bool)

(assert (=> b!6723463 (= e!4062344 (and tp!1843336 tp!1843337))))

(assert (= (and b!6722884 ((_ is ElementMatch!16549) (regTwo!33610 (regOne!33611 r!7292)))) b!6723460))

(assert (= (and b!6722884 ((_ is Concat!25394) (regTwo!33610 (regOne!33611 r!7292)))) b!6723461))

(assert (= (and b!6722884 ((_ is Star!16549) (regTwo!33610 (regOne!33611 r!7292)))) b!6723462))

(assert (= (and b!6722884 ((_ is Union!16549) (regTwo!33610 (regOne!33611 r!7292)))) b!6723463))

(declare-fun b!6723465 () Bool)

(declare-fun e!4062345 () Bool)

(declare-fun tp!1843340 () Bool)

(declare-fun tp!1843343 () Bool)

(assert (=> b!6723465 (= e!4062345 (and tp!1843340 tp!1843343))))

(assert (=> b!6722886 (= tp!1843253 e!4062345)))

(declare-fun b!6723464 () Bool)

(assert (=> b!6723464 (= e!4062345 tp_is_empty!42351)))

(declare-fun b!6723466 () Bool)

(declare-fun tp!1843339 () Bool)

(assert (=> b!6723466 (= e!4062345 tp!1843339)))

(declare-fun b!6723467 () Bool)

(declare-fun tp!1843341 () Bool)

(declare-fun tp!1843342 () Bool)

(assert (=> b!6723467 (= e!4062345 (and tp!1843341 tp!1843342))))

(assert (= (and b!6722886 ((_ is ElementMatch!16549) (regOne!33611 (regOne!33611 r!7292)))) b!6723464))

(assert (= (and b!6722886 ((_ is Concat!25394) (regOne!33611 (regOne!33611 r!7292)))) b!6723465))

(assert (= (and b!6722886 ((_ is Star!16549) (regOne!33611 (regOne!33611 r!7292)))) b!6723466))

(assert (= (and b!6722886 ((_ is Union!16549) (regOne!33611 (regOne!33611 r!7292)))) b!6723467))

(declare-fun b!6723469 () Bool)

(declare-fun e!4062346 () Bool)

(declare-fun tp!1843345 () Bool)

(declare-fun tp!1843348 () Bool)

(assert (=> b!6723469 (= e!4062346 (and tp!1843345 tp!1843348))))

(assert (=> b!6722886 (= tp!1843254 e!4062346)))

(declare-fun b!6723468 () Bool)

(assert (=> b!6723468 (= e!4062346 tp_is_empty!42351)))

(declare-fun b!6723470 () Bool)

(declare-fun tp!1843344 () Bool)

(assert (=> b!6723470 (= e!4062346 tp!1843344)))

(declare-fun b!6723471 () Bool)

(declare-fun tp!1843346 () Bool)

(declare-fun tp!1843347 () Bool)

(assert (=> b!6723471 (= e!4062346 (and tp!1843346 tp!1843347))))

(assert (= (and b!6722886 ((_ is ElementMatch!16549) (regTwo!33611 (regOne!33611 r!7292)))) b!6723468))

(assert (= (and b!6722886 ((_ is Concat!25394) (regTwo!33611 (regOne!33611 r!7292)))) b!6723469))

(assert (= (and b!6722886 ((_ is Star!16549) (regTwo!33611 (regOne!33611 r!7292)))) b!6723470))

(assert (= (and b!6722886 ((_ is Union!16549) (regTwo!33611 (regOne!33611 r!7292)))) b!6723471))

(declare-fun b!6723473 () Bool)

(declare-fun e!4062347 () Bool)

(declare-fun tp!1843350 () Bool)

(declare-fun tp!1843353 () Bool)

(assert (=> b!6723473 (= e!4062347 (and tp!1843350 tp!1843353))))

(assert (=> b!6722902 (= tp!1843273 e!4062347)))

(declare-fun b!6723472 () Bool)

(assert (=> b!6723472 (= e!4062347 tp_is_empty!42351)))

(declare-fun b!6723474 () Bool)

(declare-fun tp!1843349 () Bool)

(assert (=> b!6723474 (= e!4062347 tp!1843349)))

(declare-fun b!6723475 () Bool)

(declare-fun tp!1843351 () Bool)

(declare-fun tp!1843352 () Bool)

(assert (=> b!6723475 (= e!4062347 (and tp!1843351 tp!1843352))))

(assert (= (and b!6722902 ((_ is ElementMatch!16549) (reg!16878 (reg!16878 r!7292)))) b!6723472))

(assert (= (and b!6722902 ((_ is Concat!25394) (reg!16878 (reg!16878 r!7292)))) b!6723473))

(assert (= (and b!6722902 ((_ is Star!16549) (reg!16878 (reg!16878 r!7292)))) b!6723474))

(assert (= (and b!6722902 ((_ is Union!16549) (reg!16878 (reg!16878 r!7292)))) b!6723475))

(declare-fun b!6723477 () Bool)

(declare-fun e!4062348 () Bool)

(declare-fun tp!1843355 () Bool)

(declare-fun tp!1843358 () Bool)

(assert (=> b!6723477 (= e!4062348 (and tp!1843355 tp!1843358))))

(assert (=> b!6722901 (= tp!1843274 e!4062348)))

(declare-fun b!6723476 () Bool)

(assert (=> b!6723476 (= e!4062348 tp_is_empty!42351)))

(declare-fun b!6723478 () Bool)

(declare-fun tp!1843354 () Bool)

(assert (=> b!6723478 (= e!4062348 tp!1843354)))

(declare-fun b!6723479 () Bool)

(declare-fun tp!1843356 () Bool)

(declare-fun tp!1843357 () Bool)

(assert (=> b!6723479 (= e!4062348 (and tp!1843356 tp!1843357))))

(assert (= (and b!6722901 ((_ is ElementMatch!16549) (regOne!33610 (reg!16878 r!7292)))) b!6723476))

(assert (= (and b!6722901 ((_ is Concat!25394) (regOne!33610 (reg!16878 r!7292)))) b!6723477))

(assert (= (and b!6722901 ((_ is Star!16549) (regOne!33610 (reg!16878 r!7292)))) b!6723478))

(assert (= (and b!6722901 ((_ is Union!16549) (regOne!33610 (reg!16878 r!7292)))) b!6723479))

(declare-fun b!6723481 () Bool)

(declare-fun e!4062349 () Bool)

(declare-fun tp!1843360 () Bool)

(declare-fun tp!1843363 () Bool)

(assert (=> b!6723481 (= e!4062349 (and tp!1843360 tp!1843363))))

(assert (=> b!6722901 (= tp!1843277 e!4062349)))

(declare-fun b!6723480 () Bool)

(assert (=> b!6723480 (= e!4062349 tp_is_empty!42351)))

(declare-fun b!6723482 () Bool)

(declare-fun tp!1843359 () Bool)

(assert (=> b!6723482 (= e!4062349 tp!1843359)))

(declare-fun b!6723483 () Bool)

(declare-fun tp!1843361 () Bool)

(declare-fun tp!1843362 () Bool)

(assert (=> b!6723483 (= e!4062349 (and tp!1843361 tp!1843362))))

(assert (= (and b!6722901 ((_ is ElementMatch!16549) (regTwo!33610 (reg!16878 r!7292)))) b!6723480))

(assert (= (and b!6722901 ((_ is Concat!25394) (regTwo!33610 (reg!16878 r!7292)))) b!6723481))

(assert (= (and b!6722901 ((_ is Star!16549) (regTwo!33610 (reg!16878 r!7292)))) b!6723482))

(assert (= (and b!6722901 ((_ is Union!16549) (regTwo!33610 (reg!16878 r!7292)))) b!6723483))

(declare-fun b!6723485 () Bool)

(declare-fun e!4062353 () Bool)

(declare-fun tp!1843365 () Bool)

(declare-fun tp!1843368 () Bool)

(assert (=> b!6723485 (= e!4062353 (and tp!1843365 tp!1843368))))

(assert (=> b!6722903 (= tp!1843275 e!4062353)))

(declare-fun b!6723484 () Bool)

(assert (=> b!6723484 (= e!4062353 tp_is_empty!42351)))

(declare-fun b!6723486 () Bool)

(declare-fun tp!1843364 () Bool)

(assert (=> b!6723486 (= e!4062353 tp!1843364)))

(declare-fun b!6723487 () Bool)

(declare-fun tp!1843366 () Bool)

(declare-fun tp!1843367 () Bool)

(assert (=> b!6723487 (= e!4062353 (and tp!1843366 tp!1843367))))

(assert (= (and b!6722903 ((_ is ElementMatch!16549) (regOne!33611 (reg!16878 r!7292)))) b!6723484))

(assert (= (and b!6722903 ((_ is Concat!25394) (regOne!33611 (reg!16878 r!7292)))) b!6723485))

(assert (= (and b!6722903 ((_ is Star!16549) (regOne!33611 (reg!16878 r!7292)))) b!6723486))

(assert (= (and b!6722903 ((_ is Union!16549) (regOne!33611 (reg!16878 r!7292)))) b!6723487))

(declare-fun b!6723498 () Bool)

(declare-fun e!4062358 () Bool)

(declare-fun tp!1843370 () Bool)

(declare-fun tp!1843373 () Bool)

(assert (=> b!6723498 (= e!4062358 (and tp!1843370 tp!1843373))))

(assert (=> b!6722903 (= tp!1843276 e!4062358)))

(declare-fun b!6723497 () Bool)

(assert (=> b!6723497 (= e!4062358 tp_is_empty!42351)))

(declare-fun b!6723499 () Bool)

(declare-fun tp!1843369 () Bool)

(assert (=> b!6723499 (= e!4062358 tp!1843369)))

(declare-fun b!6723500 () Bool)

(declare-fun tp!1843371 () Bool)

(declare-fun tp!1843372 () Bool)

(assert (=> b!6723500 (= e!4062358 (and tp!1843371 tp!1843372))))

(assert (= (and b!6722903 ((_ is ElementMatch!16549) (regTwo!33611 (reg!16878 r!7292)))) b!6723497))

(assert (= (and b!6722903 ((_ is Concat!25394) (regTwo!33611 (reg!16878 r!7292)))) b!6723498))

(assert (= (and b!6722903 ((_ is Star!16549) (regTwo!33611 (reg!16878 r!7292)))) b!6723499))

(assert (= (and b!6722903 ((_ is Union!16549) (regTwo!33611 (reg!16878 r!7292)))) b!6723500))

(declare-fun b!6723502 () Bool)

(declare-fun e!4062359 () Bool)

(declare-fun tp!1843375 () Bool)

(declare-fun tp!1843378 () Bool)

(assert (=> b!6723502 (= e!4062359 (and tp!1843375 tp!1843378))))

(assert (=> b!6722894 (= tp!1843263 e!4062359)))

(declare-fun b!6723501 () Bool)

(assert (=> b!6723501 (= e!4062359 tp_is_empty!42351)))

(declare-fun b!6723503 () Bool)

(declare-fun tp!1843374 () Bool)

(assert (=> b!6723503 (= e!4062359 tp!1843374)))

(declare-fun b!6723504 () Bool)

(declare-fun tp!1843376 () Bool)

(declare-fun tp!1843377 () Bool)

(assert (=> b!6723504 (= e!4062359 (and tp!1843376 tp!1843377))))

(assert (= (and b!6722894 ((_ is ElementMatch!16549) (reg!16878 (regOne!33610 r!7292)))) b!6723501))

(assert (= (and b!6722894 ((_ is Concat!25394) (reg!16878 (regOne!33610 r!7292)))) b!6723502))

(assert (= (and b!6722894 ((_ is Star!16549) (reg!16878 (regOne!33610 r!7292)))) b!6723503))

(assert (= (and b!6722894 ((_ is Union!16549) (reg!16878 (regOne!33610 r!7292)))) b!6723504))

(declare-fun b!6723506 () Bool)

(declare-fun e!4062360 () Bool)

(declare-fun tp!1843380 () Bool)

(declare-fun tp!1843383 () Bool)

(assert (=> b!6723506 (= e!4062360 (and tp!1843380 tp!1843383))))

(assert (=> b!6722893 (= tp!1843264 e!4062360)))

(declare-fun b!6723505 () Bool)

(assert (=> b!6723505 (= e!4062360 tp_is_empty!42351)))

(declare-fun b!6723507 () Bool)

(declare-fun tp!1843379 () Bool)

(assert (=> b!6723507 (= e!4062360 tp!1843379)))

(declare-fun b!6723508 () Bool)

(declare-fun tp!1843381 () Bool)

(declare-fun tp!1843382 () Bool)

(assert (=> b!6723508 (= e!4062360 (and tp!1843381 tp!1843382))))

(assert (= (and b!6722893 ((_ is ElementMatch!16549) (regOne!33610 (regOne!33610 r!7292)))) b!6723505))

(assert (= (and b!6722893 ((_ is Concat!25394) (regOne!33610 (regOne!33610 r!7292)))) b!6723506))

(assert (= (and b!6722893 ((_ is Star!16549) (regOne!33610 (regOne!33610 r!7292)))) b!6723507))

(assert (= (and b!6722893 ((_ is Union!16549) (regOne!33610 (regOne!33610 r!7292)))) b!6723508))

(declare-fun b!6723510 () Bool)

(declare-fun e!4062361 () Bool)

(declare-fun tp!1843385 () Bool)

(declare-fun tp!1843388 () Bool)

(assert (=> b!6723510 (= e!4062361 (and tp!1843385 tp!1843388))))

(assert (=> b!6722893 (= tp!1843267 e!4062361)))

(declare-fun b!6723509 () Bool)

(assert (=> b!6723509 (= e!4062361 tp_is_empty!42351)))

(declare-fun b!6723511 () Bool)

(declare-fun tp!1843384 () Bool)

(assert (=> b!6723511 (= e!4062361 tp!1843384)))

(declare-fun b!6723512 () Bool)

(declare-fun tp!1843386 () Bool)

(declare-fun tp!1843387 () Bool)

(assert (=> b!6723512 (= e!4062361 (and tp!1843386 tp!1843387))))

(assert (= (and b!6722893 ((_ is ElementMatch!16549) (regTwo!33610 (regOne!33610 r!7292)))) b!6723509))

(assert (= (and b!6722893 ((_ is Concat!25394) (regTwo!33610 (regOne!33610 r!7292)))) b!6723510))

(assert (= (and b!6722893 ((_ is Star!16549) (regTwo!33610 (regOne!33610 r!7292)))) b!6723511))

(assert (= (and b!6722893 ((_ is Union!16549) (regTwo!33610 (regOne!33610 r!7292)))) b!6723512))

(declare-fun b!6723516 () Bool)

(declare-fun e!4062364 () Bool)

(declare-fun tp!1843390 () Bool)

(declare-fun tp!1843393 () Bool)

(assert (=> b!6723516 (= e!4062364 (and tp!1843390 tp!1843393))))

(assert (=> b!6722895 (= tp!1843265 e!4062364)))

(declare-fun b!6723515 () Bool)

(assert (=> b!6723515 (= e!4062364 tp_is_empty!42351)))

(declare-fun b!6723517 () Bool)

(declare-fun tp!1843389 () Bool)

(assert (=> b!6723517 (= e!4062364 tp!1843389)))

(declare-fun b!6723518 () Bool)

(declare-fun tp!1843391 () Bool)

(declare-fun tp!1843392 () Bool)

(assert (=> b!6723518 (= e!4062364 (and tp!1843391 tp!1843392))))

(assert (= (and b!6722895 ((_ is ElementMatch!16549) (regOne!33611 (regOne!33610 r!7292)))) b!6723515))

(assert (= (and b!6722895 ((_ is Concat!25394) (regOne!33611 (regOne!33610 r!7292)))) b!6723516))

(assert (= (and b!6722895 ((_ is Star!16549) (regOne!33611 (regOne!33610 r!7292)))) b!6723517))

(assert (= (and b!6722895 ((_ is Union!16549) (regOne!33611 (regOne!33610 r!7292)))) b!6723518))

(declare-fun b!6723520 () Bool)

(declare-fun e!4062365 () Bool)

(declare-fun tp!1843395 () Bool)

(declare-fun tp!1843398 () Bool)

(assert (=> b!6723520 (= e!4062365 (and tp!1843395 tp!1843398))))

(assert (=> b!6722895 (= tp!1843266 e!4062365)))

(declare-fun b!6723519 () Bool)

(assert (=> b!6723519 (= e!4062365 tp_is_empty!42351)))

(declare-fun b!6723521 () Bool)

(declare-fun tp!1843394 () Bool)

(assert (=> b!6723521 (= e!4062365 tp!1843394)))

(declare-fun b!6723522 () Bool)

(declare-fun tp!1843396 () Bool)

(declare-fun tp!1843397 () Bool)

(assert (=> b!6723522 (= e!4062365 (and tp!1843396 tp!1843397))))

(assert (= (and b!6722895 ((_ is ElementMatch!16549) (regTwo!33611 (regOne!33610 r!7292)))) b!6723519))

(assert (= (and b!6722895 ((_ is Concat!25394) (regTwo!33611 (regOne!33610 r!7292)))) b!6723520))

(assert (= (and b!6722895 ((_ is Star!16549) (regTwo!33611 (regOne!33610 r!7292)))) b!6723521))

(assert (= (and b!6722895 ((_ is Union!16549) (regTwo!33611 (regOne!33610 r!7292)))) b!6723522))

(declare-fun condSetEmpty!45828 () Bool)

(assert (=> setNonEmpty!45821 (= condSetEmpty!45828 (= setRest!45821 ((as const (Array Context!11866 Bool)) false)))))

(declare-fun setRes!45828 () Bool)

(assert (=> setNonEmpty!45821 (= tp!1843228 setRes!45828)))

(declare-fun setIsEmpty!45828 () Bool)

(assert (=> setIsEmpty!45828 setRes!45828))

(declare-fun e!4062369 () Bool)

(declare-fun setElem!45828 () Context!11866)

(declare-fun tp!1843400 () Bool)

(declare-fun setNonEmpty!45828 () Bool)

(assert (=> setNonEmpty!45828 (= setRes!45828 (and tp!1843400 (inv!84619 setElem!45828) e!4062369))))

(declare-fun setRest!45828 () (InoxSet Context!11866))

(assert (=> setNonEmpty!45828 (= setRest!45821 ((_ map or) (store ((as const (Array Context!11866 Bool)) false) setElem!45828 true) setRest!45828))))

(declare-fun b!6723527 () Bool)

(declare-fun tp!1843399 () Bool)

(assert (=> b!6723527 (= e!4062369 tp!1843399)))

(assert (= (and setNonEmpty!45821 condSetEmpty!45828) setIsEmpty!45828))

(assert (= (and setNonEmpty!45821 (not condSetEmpty!45828)) setNonEmpty!45828))

(assert (= setNonEmpty!45828 b!6723527))

(declare-fun m!7484330 () Bool)

(assert (=> setNonEmpty!45828 m!7484330))

(declare-fun b!6723529 () Bool)

(declare-fun e!4062370 () Bool)

(declare-fun tp!1843401 () Bool)

(declare-fun tp!1843402 () Bool)

(assert (=> b!6723529 (= e!4062370 (and tp!1843401 tp!1843402))))

(assert (=> b!6722859 (= tp!1843227 e!4062370)))

(assert (= (and b!6722859 ((_ is Cons!65822) (exprs!6433 setElem!45821))) b!6723529))

(declare-fun b!6723531 () Bool)

(declare-fun e!4062371 () Bool)

(declare-fun tp!1843404 () Bool)

(declare-fun tp!1843407 () Bool)

(assert (=> b!6723531 (= e!4062371 (and tp!1843404 tp!1843407))))

(assert (=> b!6722872 (= tp!1843239 e!4062371)))

(declare-fun b!6723530 () Bool)

(assert (=> b!6723530 (= e!4062371 tp_is_empty!42351)))

(declare-fun b!6723532 () Bool)

(declare-fun tp!1843403 () Bool)

(assert (=> b!6723532 (= e!4062371 tp!1843403)))

(declare-fun b!6723533 () Bool)

(declare-fun tp!1843405 () Bool)

(declare-fun tp!1843406 () Bool)

(assert (=> b!6723533 (= e!4062371 (and tp!1843405 tp!1843406))))

(assert (= (and b!6722872 ((_ is ElementMatch!16549) (h!72270 (exprs!6433 setElem!45815)))) b!6723530))

(assert (= (and b!6722872 ((_ is Concat!25394) (h!72270 (exprs!6433 setElem!45815)))) b!6723531))

(assert (= (and b!6722872 ((_ is Star!16549) (h!72270 (exprs!6433 setElem!45815)))) b!6723532))

(assert (= (and b!6722872 ((_ is Union!16549) (h!72270 (exprs!6433 setElem!45815)))) b!6723533))

(declare-fun b!6723534 () Bool)

(declare-fun e!4062372 () Bool)

(declare-fun tp!1843408 () Bool)

(declare-fun tp!1843409 () Bool)

(assert (=> b!6723534 (= e!4062372 (and tp!1843408 tp!1843409))))

(assert (=> b!6722872 (= tp!1843240 e!4062372)))

(assert (= (and b!6722872 ((_ is Cons!65822) (t!379625 (exprs!6433 setElem!45815)))) b!6723534))

(declare-fun b!6723536 () Bool)

(declare-fun e!4062374 () Bool)

(declare-fun tp!1843410 () Bool)

(assert (=> b!6723536 (= e!4062374 tp!1843410)))

(declare-fun b!6723535 () Bool)

(declare-fun tp!1843411 () Bool)

(declare-fun e!4062373 () Bool)

(assert (=> b!6723535 (= e!4062373 (and (inv!84619 (h!72271 (t!379626 (t!379626 zl!343)))) e!4062374 tp!1843411))))

(assert (=> b!6722866 (= tp!1843234 e!4062373)))

(assert (= b!6723535 b!6723536))

(assert (= (and b!6722866 ((_ is Cons!65823) (t!379626 (t!379626 zl!343)))) b!6723535))

(declare-fun m!7484340 () Bool)

(assert (=> b!6723535 m!7484340))

(declare-fun b!6723537 () Bool)

(declare-fun e!4062375 () Bool)

(declare-fun tp!1843412 () Bool)

(declare-fun tp!1843413 () Bool)

(assert (=> b!6723537 (= e!4062375 (and tp!1843412 tp!1843413))))

(assert (=> b!6722867 (= tp!1843233 e!4062375)))

(assert (= (and b!6722867 ((_ is Cons!65822) (exprs!6433 (h!72271 (t!379626 zl!343))))) b!6723537))

(declare-fun b!6723539 () Bool)

(declare-fun e!4062376 () Bool)

(declare-fun tp!1843415 () Bool)

(declare-fun tp!1843418 () Bool)

(assert (=> b!6723539 (= e!4062376 (and tp!1843415 tp!1843418))))

(assert (=> b!6722888 (= tp!1843257 e!4062376)))

(declare-fun b!6723538 () Bool)

(assert (=> b!6723538 (= e!4062376 tp_is_empty!42351)))

(declare-fun b!6723540 () Bool)

(declare-fun tp!1843414 () Bool)

(assert (=> b!6723540 (= e!4062376 tp!1843414)))

(declare-fun b!6723541 () Bool)

(declare-fun tp!1843416 () Bool)

(declare-fun tp!1843417 () Bool)

(assert (=> b!6723541 (= e!4062376 (and tp!1843416 tp!1843417))))

(assert (= (and b!6722888 ((_ is ElementMatch!16549) (regOne!33610 (regTwo!33611 r!7292)))) b!6723538))

(assert (= (and b!6722888 ((_ is Concat!25394) (regOne!33610 (regTwo!33611 r!7292)))) b!6723539))

(assert (= (and b!6722888 ((_ is Star!16549) (regOne!33610 (regTwo!33611 r!7292)))) b!6723540))

(assert (= (and b!6722888 ((_ is Union!16549) (regOne!33610 (regTwo!33611 r!7292)))) b!6723541))

(declare-fun b!6723543 () Bool)

(declare-fun e!4062377 () Bool)

(declare-fun tp!1843420 () Bool)

(declare-fun tp!1843423 () Bool)

(assert (=> b!6723543 (= e!4062377 (and tp!1843420 tp!1843423))))

(assert (=> b!6722888 (= tp!1843260 e!4062377)))

(declare-fun b!6723542 () Bool)

(assert (=> b!6723542 (= e!4062377 tp_is_empty!42351)))

(declare-fun b!6723544 () Bool)

(declare-fun tp!1843419 () Bool)

(assert (=> b!6723544 (= e!4062377 tp!1843419)))

(declare-fun b!6723545 () Bool)

(declare-fun tp!1843421 () Bool)

(declare-fun tp!1843422 () Bool)

(assert (=> b!6723545 (= e!4062377 (and tp!1843421 tp!1843422))))

(assert (= (and b!6722888 ((_ is ElementMatch!16549) (regTwo!33610 (regTwo!33611 r!7292)))) b!6723542))

(assert (= (and b!6722888 ((_ is Concat!25394) (regTwo!33610 (regTwo!33611 r!7292)))) b!6723543))

(assert (= (and b!6722888 ((_ is Star!16549) (regTwo!33610 (regTwo!33611 r!7292)))) b!6723544))

(assert (= (and b!6722888 ((_ is Union!16549) (regTwo!33610 (regTwo!33611 r!7292)))) b!6723545))

(declare-fun b!6723546 () Bool)

(declare-fun e!4062378 () Bool)

(declare-fun tp!1843424 () Bool)

(assert (=> b!6723546 (= e!4062378 (and tp_is_empty!42351 tp!1843424))))

(assert (=> b!6722854 (= tp!1843222 e!4062378)))

(assert (= (and b!6722854 ((_ is Cons!65824) (t!379627 (t!379627 s!2326)))) b!6723546))

(declare-fun b!6723548 () Bool)

(declare-fun e!4062379 () Bool)

(declare-fun tp!1843426 () Bool)

(declare-fun tp!1843429 () Bool)

(assert (=> b!6723548 (= e!4062379 (and tp!1843426 tp!1843429))))

(assert (=> b!6722889 (= tp!1843256 e!4062379)))

(declare-fun b!6723547 () Bool)

(assert (=> b!6723547 (= e!4062379 tp_is_empty!42351)))

(declare-fun b!6723549 () Bool)

(declare-fun tp!1843425 () Bool)

(assert (=> b!6723549 (= e!4062379 tp!1843425)))

(declare-fun b!6723550 () Bool)

(declare-fun tp!1843427 () Bool)

(declare-fun tp!1843428 () Bool)

(assert (=> b!6723550 (= e!4062379 (and tp!1843427 tp!1843428))))

(assert (= (and b!6722889 ((_ is ElementMatch!16549) (reg!16878 (regTwo!33611 r!7292)))) b!6723547))

(assert (= (and b!6722889 ((_ is Concat!25394) (reg!16878 (regTwo!33611 r!7292)))) b!6723548))

(assert (= (and b!6722889 ((_ is Star!16549) (reg!16878 (regTwo!33611 r!7292)))) b!6723549))

(assert (= (and b!6722889 ((_ is Union!16549) (reg!16878 (regTwo!33611 r!7292)))) b!6723550))

(declare-fun b!6723552 () Bool)

(declare-fun e!4062380 () Bool)

(declare-fun tp!1843431 () Bool)

(declare-fun tp!1843434 () Bool)

(assert (=> b!6723552 (= e!4062380 (and tp!1843431 tp!1843434))))

(assert (=> b!6722897 (= tp!1843269 e!4062380)))

(declare-fun b!6723551 () Bool)

(assert (=> b!6723551 (= e!4062380 tp_is_empty!42351)))

(declare-fun b!6723553 () Bool)

(declare-fun tp!1843430 () Bool)

(assert (=> b!6723553 (= e!4062380 tp!1843430)))

(declare-fun b!6723554 () Bool)

(declare-fun tp!1843432 () Bool)

(declare-fun tp!1843433 () Bool)

(assert (=> b!6723554 (= e!4062380 (and tp!1843432 tp!1843433))))

(assert (= (and b!6722897 ((_ is ElementMatch!16549) (regOne!33610 (regTwo!33610 r!7292)))) b!6723551))

(assert (= (and b!6722897 ((_ is Concat!25394) (regOne!33610 (regTwo!33610 r!7292)))) b!6723552))

(assert (= (and b!6722897 ((_ is Star!16549) (regOne!33610 (regTwo!33610 r!7292)))) b!6723553))

(assert (= (and b!6722897 ((_ is Union!16549) (regOne!33610 (regTwo!33610 r!7292)))) b!6723554))

(declare-fun b!6723556 () Bool)

(declare-fun e!4062381 () Bool)

(declare-fun tp!1843436 () Bool)

(declare-fun tp!1843439 () Bool)

(assert (=> b!6723556 (= e!4062381 (and tp!1843436 tp!1843439))))

(assert (=> b!6722897 (= tp!1843272 e!4062381)))

(declare-fun b!6723555 () Bool)

(assert (=> b!6723555 (= e!4062381 tp_is_empty!42351)))

(declare-fun b!6723557 () Bool)

(declare-fun tp!1843435 () Bool)

(assert (=> b!6723557 (= e!4062381 tp!1843435)))

(declare-fun b!6723558 () Bool)

(declare-fun tp!1843437 () Bool)

(declare-fun tp!1843438 () Bool)

(assert (=> b!6723558 (= e!4062381 (and tp!1843437 tp!1843438))))

(assert (= (and b!6722897 ((_ is ElementMatch!16549) (regTwo!33610 (regTwo!33610 r!7292)))) b!6723555))

(assert (= (and b!6722897 ((_ is Concat!25394) (regTwo!33610 (regTwo!33610 r!7292)))) b!6723556))

(assert (= (and b!6722897 ((_ is Star!16549) (regTwo!33610 (regTwo!33610 r!7292)))) b!6723557))

(assert (= (and b!6722897 ((_ is Union!16549) (regTwo!33610 (regTwo!33610 r!7292)))) b!6723558))

(declare-fun b!6723560 () Bool)

(declare-fun e!4062382 () Bool)

(declare-fun tp!1843441 () Bool)

(declare-fun tp!1843444 () Bool)

(assert (=> b!6723560 (= e!4062382 (and tp!1843441 tp!1843444))))

(assert (=> b!6722890 (= tp!1843258 e!4062382)))

(declare-fun b!6723559 () Bool)

(assert (=> b!6723559 (= e!4062382 tp_is_empty!42351)))

(declare-fun b!6723561 () Bool)

(declare-fun tp!1843440 () Bool)

(assert (=> b!6723561 (= e!4062382 tp!1843440)))

(declare-fun b!6723562 () Bool)

(declare-fun tp!1843442 () Bool)

(declare-fun tp!1843443 () Bool)

(assert (=> b!6723562 (= e!4062382 (and tp!1843442 tp!1843443))))

(assert (= (and b!6722890 ((_ is ElementMatch!16549) (regOne!33611 (regTwo!33611 r!7292)))) b!6723559))

(assert (= (and b!6722890 ((_ is Concat!25394) (regOne!33611 (regTwo!33611 r!7292)))) b!6723560))

(assert (= (and b!6722890 ((_ is Star!16549) (regOne!33611 (regTwo!33611 r!7292)))) b!6723561))

(assert (= (and b!6722890 ((_ is Union!16549) (regOne!33611 (regTwo!33611 r!7292)))) b!6723562))

(declare-fun b!6723566 () Bool)

(declare-fun e!4062385 () Bool)

(declare-fun tp!1843446 () Bool)

(declare-fun tp!1843449 () Bool)

(assert (=> b!6723566 (= e!4062385 (and tp!1843446 tp!1843449))))

(assert (=> b!6722890 (= tp!1843259 e!4062385)))

(declare-fun b!6723565 () Bool)

(assert (=> b!6723565 (= e!4062385 tp_is_empty!42351)))

(declare-fun b!6723567 () Bool)

(declare-fun tp!1843445 () Bool)

(assert (=> b!6723567 (= e!4062385 tp!1843445)))

(declare-fun b!6723568 () Bool)

(declare-fun tp!1843447 () Bool)

(declare-fun tp!1843448 () Bool)

(assert (=> b!6723568 (= e!4062385 (and tp!1843447 tp!1843448))))

(assert (= (and b!6722890 ((_ is ElementMatch!16549) (regTwo!33611 (regTwo!33611 r!7292)))) b!6723565))

(assert (= (and b!6722890 ((_ is Concat!25394) (regTwo!33611 (regTwo!33611 r!7292)))) b!6723566))

(assert (= (and b!6722890 ((_ is Star!16549) (regTwo!33611 (regTwo!33611 r!7292)))) b!6723567))

(assert (= (and b!6722890 ((_ is Union!16549) (regTwo!33611 (regTwo!33611 r!7292)))) b!6723568))

(declare-fun b_lambda!253115 () Bool)

(assert (= b_lambda!253099 (or d!2112548 b_lambda!253115)))

(declare-fun bs!1788600 () Bool)

(declare-fun d!2112868 () Bool)

(assert (= bs!1788600 (and d!2112868 d!2112548)))

(assert (=> bs!1788600 (= (dynLambda!26249 lambda!377063 (h!72270 lt!2436853)) (validRegex!8285 (h!72270 lt!2436853)))))

(declare-fun m!7484346 () Bool)

(assert (=> bs!1788600 m!7484346))

(assert (=> b!6723157 d!2112868))

(declare-fun b_lambda!253117 () Bool)

(assert (= b_lambda!253101 (or d!2112544 b_lambda!253117)))

(declare-fun bs!1788601 () Bool)

(declare-fun d!2112870 () Bool)

(assert (= bs!1788601 (and d!2112870 d!2112544)))

(assert (=> bs!1788601 (= (dynLambda!26249 lambda!377060 (h!72270 (unfocusZipperList!1970 zl!343))) (validRegex!8285 (h!72270 (unfocusZipperList!1970 zl!343))))))

(declare-fun m!7484348 () Bool)

(assert (=> bs!1788601 m!7484348))

(assert (=> b!6723170 d!2112870))

(declare-fun b_lambda!253119 () Bool)

(assert (= b_lambda!253091 (or d!2112522 b_lambda!253119)))

(declare-fun bs!1788602 () Bool)

(declare-fun d!2112872 () Bool)

(assert (= bs!1788602 (and d!2112872 d!2112522)))

(assert (=> bs!1788602 (= (dynLambda!26249 lambda!377048 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822)))))) (validRegex!8285 (h!72270 (exprs!6433 (Context!11867 (Cons!65822 (reg!16878 r!7292) (Cons!65822 r!7292 Nil!65822)))))))))

(declare-fun m!7484350 () Bool)

(assert (=> bs!1788602 m!7484350))

(assert (=> b!6722910 d!2112872))

(declare-fun b_lambda!253121 () Bool)

(assert (= b_lambda!253097 (or d!2112526 b_lambda!253121)))

(declare-fun bs!1788603 () Bool)

(declare-fun d!2112874 () Bool)

(assert (= bs!1788603 (and d!2112874 d!2112526)))

(assert (=> bs!1788603 (= (dynLambda!26249 lambda!377050 (h!72270 (exprs!6433 (h!72271 zl!343)))) (validRegex!8285 (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(declare-fun m!7484352 () Bool)

(assert (=> bs!1788603 m!7484352))

(assert (=> b!6723119 d!2112874))

(declare-fun b_lambda!253123 () Bool)

(assert (= b_lambda!253103 (or d!2112528 b_lambda!253123)))

(declare-fun bs!1788604 () Bool)

(declare-fun d!2112876 () Bool)

(assert (= bs!1788604 (and d!2112876 d!2112528)))

(assert (=> bs!1788604 (= (dynLambda!26249 lambda!377057 (h!72270 (exprs!6433 (h!72271 zl!343)))) (validRegex!8285 (h!72270 (exprs!6433 (h!72271 zl!343)))))))

(assert (=> bs!1788604 m!7484352))

(assert (=> b!6723181 d!2112876))

(declare-fun b_lambda!253125 () Bool)

(assert (= b_lambda!253093 (or b!6722201 b_lambda!253125)))

(assert (=> d!2112600 d!2112582))

(declare-fun b_lambda!253127 () Bool)

(assert (= b_lambda!253105 (or d!2112524 b_lambda!253127)))

(declare-fun bs!1788605 () Bool)

(declare-fun d!2112878 () Bool)

(assert (= bs!1788605 (and d!2112878 d!2112524)))

(assert (=> bs!1788605 (= (dynLambda!26249 lambda!377049 (h!72270 (exprs!6433 setElem!45815))) (validRegex!8285 (h!72270 (exprs!6433 setElem!45815))))))

(declare-fun m!7484354 () Bool)

(assert (=> bs!1788605 m!7484354))

(assert (=> b!6723199 d!2112878))

(check-sat (not d!2112676) (not bs!1788601) (not b!6723251) (not d!2112584) (not b!6723049) (not bm!606975) (not b!6723537) (not b!6723506) (not b!6723475) (not b!6722927) (not b!6723153) (not b!6723545) (not b!6723471) (not b!6723052) (not b!6723534) (not b!6723252) (not b!6723516) (not b!6723567) (not b!6723518) (not b!6723182) (not b!6723246) (not b!6722911) (not d!2112786) (not b!6723250) (not b!6722974) (not b!6723051) (not d!2112832) (not b!6723499) (not b!6723046) (not b!6723200) (not b!6722976) (not bs!1788600) (not b!6723423) (not b!6722964) (not b!6723171) (not b!6723214) (not bm!606894) (not b!6722946) (not b!6723554) (not b!6723041) (not b!6723478) (not b!6723023) (not b!6723430) (not b!6722999) (not b!6723485) (not d!2112810) (not b!6722913) (not b!6722972) (not b!6722917) (not bm!606967) (not b!6723529) (not d!2112592) (not b!6723548) (not b!6723454) (not b!6723247) (not b!6723487) (not b!6723543) (not b!6723025) (not d!2112620) (not b!6723450) (not b!6723150) (not bm!606993) (not bm!606905) (not b!6723512) (not b!6723517) (not d!2112718) (not b!6723197) (not bm!606987) (not b!6723147) (not b!6723479) (not b!6723355) (not bm!606923) (not bs!1788603) (not d!2112652) (not b!6723135) (not b!6723024) (not setNonEmpty!45824) (not b!6723426) (not b!6722958) (not b!6723118) (not bm!606974) (not b!6723126) (not b!6723207) (not b_lambda!253089) (not bm!606904) (not b!6723503) (not b!6723221) (not bm!606889) (not b!6723453) (not b!6723552) (not b!6723448) (not b!6723004) (not b_lambda!253127) (not bm!606899) (not bm!606922) (not bm!606898) (not b!6723449) (not b!6722928) (not b_lambda!253123) (not bm!606935) (not b!6723474) (not b!6723560) (not b!6723152) (not d!2112822) (not b!6723357) (not bm!606902) (not b!6723540) (not b!6722951) (not bm!606970) (not b!6723558) (not b!6723202) (not b!6722953) (not b!6723482) (not b_lambda!253125) (not b!6723446) (not b!6723212) (not bm!606943) (not b!6723536) (not b!6723511) (not bm!606901) (not b!6722948) (not b!6723557) (not bm!606940) (not b!6723522) (not b!6723120) (not b!6723527) (not d!2112712) (not b!6723462) (not b!6722949) (not b!6723210) (not b!6723467) (not d!2112674) (not d!2112748) (not b!6723535) (not b!6723459) (not b!6723030) (not b!6723011) (not b!6723521) (not bs!1788602) (not b!6723532) (not b!6723445) (not bm!606938) (not bm!606897) (not b!6722980) (not b!6723498) (not b!6723026) (not d!2112698) (not b!6723566) (not b!6722947) (not b!6723095) (not b!6722950) (not b!6723556) (not bm!606983) (not b!6723412) (not b!6723541) (not b!6723196) (not bm!606973) (not bm!606939) (not b!6723531) (not d!2112782) (not b!6723500) (not b!6723562) (not bm!606900) (not bm!606968) (not bm!606946) (not b!6723502) (not d!2112752) (not b!6722904) (not bm!606947) (not b!6723553) (not d!2112814) (not d!2112726) (not b!6723142) (not b!6723428) (not b!6723463) (not b!6723483) (not b!6723166) (not b!6723177) (not b!6723444) (not b!6723486) (not b!6723507) (not b!6723392) (not b!6723217) (not b!6723550) (not b!6723451) (not b!6723017) (not b!6723481) (not b!6723510) (not bm!606909) (not b!6723338) (not b!6723470) (not b_lambda!253119) (not bm!606942) (not d!2112728) (not d!2112608) (not d!2112600) (not b!6723477) (not b!6723154) (not b!6723431) (not b!6723216) (not b!6723158) (not b!6723029) (not b!6723539) (not b_lambda!253117) (not b!6722952) (not d!2112812) (not b!6723010) (not b_lambda!253115) (not b!6723455) (not b!6723508) (not d!2112638) (not d!2112604) (not b!6723457) (not bs!1788604) (not d!2112672) (not b!6723009) (not b!6723027) (not bm!606986) (not d!2112612) (not b!6723461) (not b!6723469) (not b!6723427) (not b!6723053) (not d!2112736) (not b!6723458) (not b!6723220) (not d!2112750) (not b!6723432) (not b!6723465) (not d!2112816) (not b!6723213) (not bm!606933) (not b!6723520) (not b!6723544) (not d!2112642) (not bm!606890) (not b!6723568) (not d!2112654) (not b!6723466) (not d!2112724) (not b!6723533) (not setNonEmpty!45828) (not b!6723561) (not d!2112696) (not b!6723504) (not b_lambda!253121) (not bm!606932) tp_is_empty!42351 (not b!6723549) (not d!2112590) (not b!6723347) (not bs!1788605) (not bm!606945) (not b!6723473) (not b!6722956) (not b!6723546) (not bm!606992) (not b!6723007) (not b!6723254))
(check-sat)
