; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!653244 () Bool)

(assert start!653244)

(declare-fun b!6735399 () Bool)

(assert (=> b!6735399 true))

(assert (=> b!6735399 true))

(declare-fun lambda!378187 () Int)

(declare-fun lambda!378186 () Int)

(assert (=> b!6735399 (not (= lambda!378187 lambda!378186))))

(assert (=> b!6735399 true))

(assert (=> b!6735399 true))

(declare-fun lambda!378188 () Int)

(assert (=> b!6735399 (not (= lambda!378188 lambda!378186))))

(assert (=> b!6735399 (not (= lambda!378188 lambda!378187))))

(assert (=> b!6735399 true))

(assert (=> b!6735399 true))

(declare-fun b!6735413 () Bool)

(assert (=> b!6735413 true))

(declare-fun b!6735390 () Bool)

(declare-fun e!4068701 () Bool)

(declare-fun e!4068708 () Bool)

(assert (=> b!6735390 (= e!4068701 e!4068708)))

(declare-fun res!2755374 () Bool)

(assert (=> b!6735390 (=> res!2755374 e!4068708)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33396 0))(
  ( (C!33397 (val!26400 Int)) )
))
(declare-datatypes ((Regex!16563 0))(
  ( (ElementMatch!16563 (c!1249129 C!33396)) (Concat!25408 (regOne!33638 Regex!16563) (regTwo!33638 Regex!16563)) (EmptyExpr!16563) (Star!16563 (reg!16892 Regex!16563)) (EmptyLang!16563) (Union!16563 (regOne!33639 Regex!16563) (regTwo!33639 Regex!16563)) )
))
(declare-datatypes ((List!65988 0))(
  ( (Nil!65864) (Cons!65864 (h!72312 Regex!16563) (t!379681 List!65988)) )
))
(declare-datatypes ((Context!11894 0))(
  ( (Context!11895 (exprs!6447 List!65988)) )
))
(declare-fun lt!2438359 () (InoxSet Context!11894))

(declare-fun lt!2438376 () (InoxSet Context!11894))

(assert (=> b!6735390 (= res!2755374 (not (= lt!2438359 lt!2438376)))))

(declare-fun r!7292 () Regex!16563)

(declare-datatypes ((List!65989 0))(
  ( (Nil!65865) (Cons!65865 (h!72313 C!33396) (t!379682 List!65989)) )
))
(declare-fun s!2326 () List!65989)

(declare-fun derivationStepZipperDown!1791 (Regex!16563 Context!11894 C!33396) (InoxSet Context!11894))

(assert (=> b!6735390 (= lt!2438376 (derivationStepZipperDown!1791 r!7292 (Context!11895 Nil!65864) (h!72313 s!2326)))))

(declare-fun derivationStepZipperUp!1717 (Context!11894 C!33396) (InoxSet Context!11894))

(assert (=> b!6735390 (= lt!2438359 (derivationStepZipperUp!1717 (Context!11895 (Cons!65864 r!7292 Nil!65864)) (h!72313 s!2326)))))

(declare-fun lt!2438374 () (InoxSet Context!11894))

(declare-fun z!1189 () (InoxSet Context!11894))

(declare-fun derivationStepZipper!2507 ((InoxSet Context!11894) C!33396) (InoxSet Context!11894))

(assert (=> b!6735390 (= lt!2438374 (derivationStepZipper!2507 z!1189 (h!72313 s!2326)))))

(declare-fun b!6735391 () Bool)

(declare-fun e!4068704 () Bool)

(declare-fun tp!1846647 () Bool)

(declare-fun tp!1846648 () Bool)

(assert (=> b!6735391 (= e!4068704 (and tp!1846647 tp!1846648))))

(declare-fun b!6735392 () Bool)

(declare-fun e!4068698 () Bool)

(declare-fun tp!1846651 () Bool)

(assert (=> b!6735392 (= e!4068698 tp!1846651)))

(declare-fun b!6735393 () Bool)

(declare-fun e!4068696 () Bool)

(declare-fun tp_is_empty!42379 () Bool)

(declare-fun tp!1846649 () Bool)

(assert (=> b!6735393 (= e!4068696 (and tp_is_empty!42379 tp!1846649))))

(declare-fun b!6735394 () Bool)

(declare-fun res!2755375 () Bool)

(declare-fun e!4068702 () Bool)

(assert (=> b!6735394 (=> res!2755375 e!4068702)))

(declare-fun lt!2438361 () Context!11894)

(declare-datatypes ((List!65990 0))(
  ( (Nil!65866) (Cons!65866 (h!72314 Context!11894) (t!379683 List!65990)) )
))
(declare-fun unfocusZipper!2305 (List!65990) Regex!16563)

(assert (=> b!6735394 (= res!2755375 (not (= (unfocusZipper!2305 (Cons!65866 lt!2438361 Nil!65866)) (Concat!25408 (reg!16892 r!7292) r!7292))))))

(declare-fun setIsEmpty!45965 () Bool)

(declare-fun setRes!45965 () Bool)

(assert (=> setIsEmpty!45965 setRes!45965))

(declare-fun b!6735396 () Bool)

(declare-fun res!2755365 () Bool)

(declare-fun e!4068703 () Bool)

(assert (=> b!6735396 (=> res!2755365 e!4068703)))

(get-info :version)

(assert (=> b!6735396 (= res!2755365 (or ((_ is EmptyExpr!16563) r!7292) ((_ is EmptyLang!16563) r!7292) ((_ is ElementMatch!16563) r!7292) ((_ is Union!16563) r!7292) ((_ is Concat!25408) r!7292)))))

(declare-fun setNonEmpty!45965 () Bool)

(declare-fun tp!1846645 () Bool)

(declare-fun setElem!45965 () Context!11894)

(declare-fun inv!84654 (Context!11894) Bool)

(assert (=> setNonEmpty!45965 (= setRes!45965 (and tp!1846645 (inv!84654 setElem!45965) e!4068698))))

(declare-fun setRest!45965 () (InoxSet Context!11894))

(assert (=> setNonEmpty!45965 (= z!1189 ((_ map or) (store ((as const (Array Context!11894 Bool)) false) setElem!45965 true) setRest!45965))))

(declare-fun b!6735397 () Bool)

(declare-fun e!4068707 () Bool)

(assert (=> b!6735397 (= e!4068707 (not e!4068703))))

(declare-fun res!2755367 () Bool)

(assert (=> b!6735397 (=> res!2755367 e!4068703)))

(declare-fun zl!343 () List!65990)

(assert (=> b!6735397 (= res!2755367 (not ((_ is Cons!65866) zl!343)))))

(declare-fun lt!2438363 () Bool)

(declare-fun matchRSpec!3664 (Regex!16563 List!65989) Bool)

(assert (=> b!6735397 (= lt!2438363 (matchRSpec!3664 r!7292 s!2326))))

(declare-fun matchR!8746 (Regex!16563 List!65989) Bool)

(assert (=> b!6735397 (= lt!2438363 (matchR!8746 r!7292 s!2326))))

(declare-datatypes ((Unit!159817 0))(
  ( (Unit!159818) )
))
(declare-fun lt!2438360 () Unit!159817)

(declare-fun mainMatchTheorem!3664 (Regex!16563 List!65989) Unit!159817)

(assert (=> b!6735397 (= lt!2438360 (mainMatchTheorem!3664 r!7292 s!2326))))

(declare-fun b!6735398 () Bool)

(declare-fun tp!1846653 () Bool)

(declare-fun tp!1846646 () Bool)

(assert (=> b!6735398 (= e!4068704 (and tp!1846653 tp!1846646))))

(assert (=> b!6735399 (= e!4068703 e!4068701)))

(declare-fun res!2755371 () Bool)

(assert (=> b!6735399 (=> res!2755371 e!4068701)))

(declare-fun e!4068700 () Bool)

(assert (=> b!6735399 (= res!2755371 (not (= lt!2438363 e!4068700)))))

(declare-fun res!2755368 () Bool)

(assert (=> b!6735399 (=> res!2755368 e!4068700)))

(declare-fun isEmpty!38201 (List!65989) Bool)

(assert (=> b!6735399 (= res!2755368 (isEmpty!38201 s!2326))))

(declare-fun Exists!3631 (Int) Bool)

(assert (=> b!6735399 (= (Exists!3631 lambda!378186) (Exists!3631 lambda!378188))))

(declare-fun lt!2438377 () Unit!159817)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2158 (Regex!16563 Regex!16563 List!65989) Unit!159817)

(assert (=> b!6735399 (= lt!2438377 (lemmaExistCutMatchRandMatchRSpecEquivalent!2158 (reg!16892 r!7292) r!7292 s!2326))))

(assert (=> b!6735399 (= (Exists!3631 lambda!378186) (Exists!3631 lambda!378187))))

(declare-fun lt!2438364 () Unit!159817)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!722 (Regex!16563 List!65989) Unit!159817)

(assert (=> b!6735399 (= lt!2438364 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!722 (reg!16892 r!7292) s!2326))))

(declare-fun lt!2438372 () Bool)

(assert (=> b!6735399 (= lt!2438372 (Exists!3631 lambda!378186))))

(declare-datatypes ((tuple2!67076 0))(
  ( (tuple2!67077 (_1!36841 List!65989) (_2!36841 List!65989)) )
))
(declare-datatypes ((Option!16450 0))(
  ( (None!16449) (Some!16449 (v!52649 tuple2!67076)) )
))
(declare-fun isDefined!13153 (Option!16450) Bool)

(declare-fun findConcatSeparation!2864 (Regex!16563 Regex!16563 List!65989 List!65989 List!65989) Option!16450)

(assert (=> b!6735399 (= lt!2438372 (isDefined!13153 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326)))))

(declare-fun lt!2438373 () Unit!159817)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2628 (Regex!16563 Regex!16563 List!65989) Unit!159817)

(assert (=> b!6735399 (= lt!2438373 (lemmaFindConcatSeparationEquivalentToExists!2628 (reg!16892 r!7292) r!7292 s!2326))))

(declare-fun b!6735400 () Bool)

(declare-fun lt!2438365 () Context!11894)

(assert (=> b!6735400 (= e!4068702 (inv!84654 lt!2438365))))

(declare-fun lt!2438369 () (InoxSet Context!11894))

(declare-fun lt!2438378 () Context!11894)

(assert (=> b!6735400 (= lt!2438369 (derivationStepZipperUp!1717 lt!2438378 (h!72313 s!2326)))))

(declare-fun lt!2438368 () (InoxSet Context!11894))

(assert (=> b!6735400 (= lt!2438368 (derivationStepZipperUp!1717 lt!2438365 (h!72313 s!2326)))))

(assert (=> b!6735400 (= lt!2438365 (Context!11895 (Cons!65864 (reg!16892 r!7292) Nil!65864)))))

(declare-fun b!6735401 () Bool)

(declare-fun e!4068697 () Bool)

(assert (=> b!6735401 (= e!4068697 e!4068707)))

(declare-fun res!2755361 () Bool)

(assert (=> b!6735401 (=> (not res!2755361) (not e!4068707))))

(declare-fun lt!2438362 () Regex!16563)

(assert (=> b!6735401 (= res!2755361 (= r!7292 lt!2438362))))

(assert (=> b!6735401 (= lt!2438362 (unfocusZipper!2305 zl!343))))

(declare-fun b!6735402 () Bool)

(declare-fun res!2755370 () Bool)

(assert (=> b!6735402 (=> res!2755370 e!4068703)))

(assert (=> b!6735402 (= res!2755370 (not ((_ is Cons!65864) (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6735403 () Bool)

(assert (=> b!6735403 (= e!4068700 lt!2438372)))

(declare-fun b!6735404 () Bool)

(declare-fun tp!1846650 () Bool)

(assert (=> b!6735404 (= e!4068704 tp!1846650)))

(declare-fun b!6735405 () Bool)

(assert (=> b!6735405 (= e!4068704 tp_is_empty!42379)))

(declare-fun e!4068706 () Bool)

(declare-fun b!6735406 () Bool)

(declare-fun tp!1846644 () Bool)

(declare-fun e!4068705 () Bool)

(assert (=> b!6735406 (= e!4068706 (and (inv!84654 (h!72314 zl!343)) e!4068705 tp!1846644))))

(declare-fun b!6735407 () Bool)

(declare-fun res!2755362 () Bool)

(assert (=> b!6735407 (=> res!2755362 e!4068701)))

(assert (=> b!6735407 (= res!2755362 ((_ is Nil!65865) s!2326))))

(declare-fun b!6735408 () Bool)

(declare-fun res!2755369 () Bool)

(assert (=> b!6735408 (=> (not res!2755369) (not e!4068697))))

(declare-fun toList!10347 ((InoxSet Context!11894)) List!65990)

(assert (=> b!6735408 (= res!2755369 (= (toList!10347 z!1189) zl!343))))

(declare-fun b!6735409 () Bool)

(declare-fun res!2755373 () Bool)

(assert (=> b!6735409 (=> res!2755373 e!4068702)))

(declare-fun lt!2438370 () (InoxSet Context!11894))

(declare-fun matchZipper!2549 ((InoxSet Context!11894) List!65989) Bool)

(assert (=> b!6735409 (= res!2755373 (not (= (matchZipper!2549 lt!2438370 s!2326) (matchZipper!2549 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (t!379682 s!2326)))))))

(declare-fun b!6735410 () Bool)

(declare-fun res!2755363 () Bool)

(assert (=> b!6735410 (=> res!2755363 e!4068703)))

(declare-fun generalisedUnion!2407 (List!65988) Regex!16563)

(declare-fun unfocusZipperList!1984 (List!65990) List!65988)

(assert (=> b!6735410 (= res!2755363 (not (= r!7292 (generalisedUnion!2407 (unfocusZipperList!1984 zl!343)))))))

(declare-fun b!6735411 () Bool)

(declare-fun tp!1846652 () Bool)

(assert (=> b!6735411 (= e!4068705 tp!1846652)))

(declare-fun res!2755366 () Bool)

(assert (=> start!653244 (=> (not res!2755366) (not e!4068697))))

(declare-fun validRegex!8299 (Regex!16563) Bool)

(assert (=> start!653244 (= res!2755366 (validRegex!8299 r!7292))))

(assert (=> start!653244 e!4068697))

(assert (=> start!653244 e!4068704))

(declare-fun condSetEmpty!45965 () Bool)

(assert (=> start!653244 (= condSetEmpty!45965 (= z!1189 ((as const (Array Context!11894 Bool)) false)))))

(assert (=> start!653244 setRes!45965))

(assert (=> start!653244 e!4068706))

(assert (=> start!653244 e!4068696))

(declare-fun b!6735395 () Bool)

(declare-fun res!2755376 () Bool)

(assert (=> b!6735395 (=> res!2755376 e!4068702)))

(assert (=> b!6735395 (= res!2755376 (or (not (= lt!2438362 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6735412 () Bool)

(declare-fun res!2755359 () Bool)

(assert (=> b!6735412 (=> res!2755359 e!4068703)))

(declare-fun isEmpty!38202 (List!65990) Bool)

(assert (=> b!6735412 (= res!2755359 (not (isEmpty!38202 (t!379683 zl!343))))))

(declare-fun e!4068699 () Bool)

(assert (=> b!6735413 (= e!4068708 e!4068699)))

(declare-fun res!2755364 () Bool)

(assert (=> b!6735413 (=> res!2755364 e!4068699)))

(assert (=> b!6735413 (= res!2755364 (not (= lt!2438374 lt!2438376)))))

(declare-fun lambda!378189 () Int)

(declare-fun flatMap!2044 ((InoxSet Context!11894) Int) (InoxSet Context!11894))

(assert (=> b!6735413 (= (flatMap!2044 z!1189 lambda!378189) (derivationStepZipperUp!1717 (h!72314 zl!343) (h!72313 s!2326)))))

(declare-fun lt!2438371 () Unit!159817)

(declare-fun lemmaFlatMapOnSingletonSet!1570 ((InoxSet Context!11894) Context!11894 Int) Unit!159817)

(assert (=> b!6735413 (= lt!2438371 (lemmaFlatMapOnSingletonSet!1570 z!1189 (h!72314 zl!343) lambda!378189))))

(declare-fun b!6735414 () Bool)

(assert (=> b!6735414 (= e!4068699 e!4068702)))

(declare-fun res!2755360 () Bool)

(assert (=> b!6735414 (=> res!2755360 e!4068702)))

(assert (=> b!6735414 (= res!2755360 (not (= lt!2438374 (derivationStepZipperDown!1791 (reg!16892 r!7292) lt!2438378 (h!72313 s!2326)))))))

(declare-fun lt!2438366 () List!65988)

(assert (=> b!6735414 (= lt!2438378 (Context!11895 lt!2438366))))

(assert (=> b!6735414 (= (flatMap!2044 lt!2438370 lambda!378189) (derivationStepZipperUp!1717 lt!2438361 (h!72313 s!2326)))))

(declare-fun lt!2438375 () Unit!159817)

(assert (=> b!6735414 (= lt!2438375 (lemmaFlatMapOnSingletonSet!1570 lt!2438370 lt!2438361 lambda!378189))))

(declare-fun lt!2438367 () (InoxSet Context!11894))

(assert (=> b!6735414 (= lt!2438367 (derivationStepZipperUp!1717 lt!2438361 (h!72313 s!2326)))))

(assert (=> b!6735414 (= lt!2438370 (store ((as const (Array Context!11894 Bool)) false) lt!2438361 true))))

(assert (=> b!6735414 (= lt!2438361 (Context!11895 (Cons!65864 (reg!16892 r!7292) lt!2438366)))))

(assert (=> b!6735414 (= lt!2438366 (Cons!65864 r!7292 Nil!65864))))

(declare-fun b!6735415 () Bool)

(declare-fun res!2755372 () Bool)

(assert (=> b!6735415 (=> res!2755372 e!4068703)))

(declare-fun generalisedConcat!2160 (List!65988) Regex!16563)

(assert (=> b!6735415 (= res!2755372 (not (= r!7292 (generalisedConcat!2160 (exprs!6447 (h!72314 zl!343))))))))

(assert (= (and start!653244 res!2755366) b!6735408))

(assert (= (and b!6735408 res!2755369) b!6735401))

(assert (= (and b!6735401 res!2755361) b!6735397))

(assert (= (and b!6735397 (not res!2755367)) b!6735412))

(assert (= (and b!6735412 (not res!2755359)) b!6735415))

(assert (= (and b!6735415 (not res!2755372)) b!6735402))

(assert (= (and b!6735402 (not res!2755370)) b!6735410))

(assert (= (and b!6735410 (not res!2755363)) b!6735396))

(assert (= (and b!6735396 (not res!2755365)) b!6735399))

(assert (= (and b!6735399 (not res!2755368)) b!6735403))

(assert (= (and b!6735399 (not res!2755371)) b!6735407))

(assert (= (and b!6735407 (not res!2755362)) b!6735390))

(assert (= (and b!6735390 (not res!2755374)) b!6735413))

(assert (= (and b!6735413 (not res!2755364)) b!6735414))

(assert (= (and b!6735414 (not res!2755360)) b!6735409))

(assert (= (and b!6735409 (not res!2755373)) b!6735395))

(assert (= (and b!6735395 (not res!2755376)) b!6735394))

(assert (= (and b!6735394 (not res!2755375)) b!6735400))

(assert (= (and start!653244 ((_ is ElementMatch!16563) r!7292)) b!6735405))

(assert (= (and start!653244 ((_ is Concat!25408) r!7292)) b!6735391))

(assert (= (and start!653244 ((_ is Star!16563) r!7292)) b!6735404))

(assert (= (and start!653244 ((_ is Union!16563) r!7292)) b!6735398))

(assert (= (and start!653244 condSetEmpty!45965) setIsEmpty!45965))

(assert (= (and start!653244 (not condSetEmpty!45965)) setNonEmpty!45965))

(assert (= setNonEmpty!45965 b!6735392))

(assert (= b!6735406 b!6735411))

(assert (= (and start!653244 ((_ is Cons!65866) zl!343)) b!6735406))

(assert (= (and start!653244 ((_ is Cons!65865) s!2326)) b!6735393))

(declare-fun m!7493002 () Bool)

(assert (=> setNonEmpty!45965 m!7493002))

(declare-fun m!7493004 () Bool)

(assert (=> b!6735415 m!7493004))

(declare-fun m!7493006 () Bool)

(assert (=> b!6735390 m!7493006))

(declare-fun m!7493008 () Bool)

(assert (=> b!6735390 m!7493008))

(declare-fun m!7493010 () Bool)

(assert (=> b!6735390 m!7493010))

(declare-fun m!7493012 () Bool)

(assert (=> start!653244 m!7493012))

(declare-fun m!7493014 () Bool)

(assert (=> b!6735409 m!7493014))

(declare-fun m!7493016 () Bool)

(assert (=> b!6735409 m!7493016))

(assert (=> b!6735409 m!7493016))

(declare-fun m!7493018 () Bool)

(assert (=> b!6735409 m!7493018))

(declare-fun m!7493020 () Bool)

(assert (=> b!6735414 m!7493020))

(declare-fun m!7493022 () Bool)

(assert (=> b!6735414 m!7493022))

(declare-fun m!7493024 () Bool)

(assert (=> b!6735414 m!7493024))

(declare-fun m!7493026 () Bool)

(assert (=> b!6735414 m!7493026))

(declare-fun m!7493028 () Bool)

(assert (=> b!6735414 m!7493028))

(declare-fun m!7493030 () Bool)

(assert (=> b!6735400 m!7493030))

(declare-fun m!7493032 () Bool)

(assert (=> b!6735400 m!7493032))

(declare-fun m!7493034 () Bool)

(assert (=> b!6735400 m!7493034))

(declare-fun m!7493036 () Bool)

(assert (=> b!6735413 m!7493036))

(declare-fun m!7493038 () Bool)

(assert (=> b!6735413 m!7493038))

(declare-fun m!7493040 () Bool)

(assert (=> b!6735413 m!7493040))

(declare-fun m!7493042 () Bool)

(assert (=> b!6735408 m!7493042))

(declare-fun m!7493044 () Bool)

(assert (=> b!6735399 m!7493044))

(declare-fun m!7493046 () Bool)

(assert (=> b!6735399 m!7493046))

(assert (=> b!6735399 m!7493044))

(declare-fun m!7493048 () Bool)

(assert (=> b!6735399 m!7493048))

(declare-fun m!7493050 () Bool)

(assert (=> b!6735399 m!7493050))

(declare-fun m!7493052 () Bool)

(assert (=> b!6735399 m!7493052))

(assert (=> b!6735399 m!7493052))

(declare-fun m!7493054 () Bool)

(assert (=> b!6735399 m!7493054))

(declare-fun m!7493056 () Bool)

(assert (=> b!6735399 m!7493056))

(declare-fun m!7493058 () Bool)

(assert (=> b!6735399 m!7493058))

(assert (=> b!6735399 m!7493044))

(declare-fun m!7493060 () Bool)

(assert (=> b!6735399 m!7493060))

(declare-fun m!7493062 () Bool)

(assert (=> b!6735401 m!7493062))

(declare-fun m!7493064 () Bool)

(assert (=> b!6735412 m!7493064))

(declare-fun m!7493066 () Bool)

(assert (=> b!6735406 m!7493066))

(declare-fun m!7493068 () Bool)

(assert (=> b!6735397 m!7493068))

(declare-fun m!7493070 () Bool)

(assert (=> b!6735397 m!7493070))

(declare-fun m!7493072 () Bool)

(assert (=> b!6735397 m!7493072))

(declare-fun m!7493074 () Bool)

(assert (=> b!6735394 m!7493074))

(declare-fun m!7493076 () Bool)

(assert (=> b!6735410 m!7493076))

(assert (=> b!6735410 m!7493076))

(declare-fun m!7493078 () Bool)

(assert (=> b!6735410 m!7493078))

(check-sat (not b!6735398) (not b!6735406) (not b!6735411) (not b!6735397) (not b!6735414) (not b!6735408) (not b!6735404) (not b!6735410) (not b!6735413) (not b!6735415) (not b!6735392) (not b!6735401) (not setNonEmpty!45965) (not b!6735399) (not b!6735390) (not start!653244) (not b!6735409) tp_is_empty!42379 (not b!6735400) (not b!6735391) (not b!6735412) (not b!6735393) (not b!6735394))
(check-sat)
(get-model)

(declare-fun d!2116247 () Bool)

(declare-fun lambda!378198 () Int)

(declare-fun forall!15763 (List!65988 Int) Bool)

(assert (=> d!2116247 (= (inv!84654 (h!72314 zl!343)) (forall!15763 (exprs!6447 (h!72314 zl!343)) lambda!378198))))

(declare-fun bs!1791125 () Bool)

(assert (= bs!1791125 d!2116247))

(declare-fun m!7493090 () Bool)

(assert (=> bs!1791125 m!7493090))

(assert (=> b!6735406 d!2116247))

(declare-fun bs!1791126 () Bool)

(declare-fun d!2116251 () Bool)

(assert (= bs!1791126 (and d!2116251 d!2116247)))

(declare-fun lambda!378199 () Int)

(assert (=> bs!1791126 (= lambda!378199 lambda!378198)))

(assert (=> d!2116251 (= (inv!84654 setElem!45965) (forall!15763 (exprs!6447 setElem!45965) lambda!378199))))

(declare-fun bs!1791127 () Bool)

(assert (= bs!1791127 d!2116251))

(declare-fun m!7493092 () Bool)

(assert (=> bs!1791127 m!7493092))

(assert (=> setNonEmpty!45965 d!2116251))

(declare-fun bs!1791134 () Bool)

(declare-fun b!6735500 () Bool)

(assert (= bs!1791134 (and b!6735500 b!6735399)))

(declare-fun lambda!378210 () Int)

(assert (=> bs!1791134 (not (= lambda!378210 lambda!378186))))

(assert (=> bs!1791134 (= lambda!378210 lambda!378187)))

(assert (=> bs!1791134 (not (= lambda!378210 lambda!378188))))

(assert (=> b!6735500 true))

(assert (=> b!6735500 true))

(declare-fun bs!1791135 () Bool)

(declare-fun b!6735505 () Bool)

(assert (= bs!1791135 (and b!6735505 b!6735399)))

(declare-fun lambda!378213 () Int)

(assert (=> bs!1791135 (not (= lambda!378213 lambda!378186))))

(assert (=> bs!1791135 (not (= lambda!378213 lambda!378187))))

(assert (=> bs!1791135 (= (and (= (regOne!33638 r!7292) (reg!16892 r!7292)) (= (regTwo!33638 r!7292) r!7292)) (= lambda!378213 lambda!378188))))

(declare-fun bs!1791136 () Bool)

(assert (= bs!1791136 (and b!6735505 b!6735500)))

(assert (=> bs!1791136 (not (= lambda!378213 lambda!378210))))

(assert (=> b!6735505 true))

(assert (=> b!6735505 true))

(declare-fun b!6735499 () Bool)

(declare-fun c!1249145 () Bool)

(assert (=> b!6735499 (= c!1249145 ((_ is Union!16563) r!7292))))

(declare-fun e!4068751 () Bool)

(declare-fun e!4068754 () Bool)

(assert (=> b!6735499 (= e!4068751 e!4068754)))

(declare-fun d!2116253 () Bool)

(declare-fun c!1249144 () Bool)

(assert (=> d!2116253 (= c!1249144 ((_ is EmptyExpr!16563) r!7292))))

(declare-fun e!4068753 () Bool)

(assert (=> d!2116253 (= (matchRSpec!3664 r!7292 s!2326) e!4068753)))

(declare-fun e!4068755 () Bool)

(declare-fun call!608549 () Bool)

(assert (=> b!6735500 (= e!4068755 call!608549)))

(declare-fun b!6735501 () Bool)

(declare-fun e!4068752 () Bool)

(assert (=> b!6735501 (= e!4068753 e!4068752)))

(declare-fun res!2755428 () Bool)

(assert (=> b!6735501 (= res!2755428 (not ((_ is EmptyLang!16563) r!7292)))))

(assert (=> b!6735501 (=> (not res!2755428) (not e!4068752))))

(declare-fun b!6735502 () Bool)

(declare-fun e!4068756 () Bool)

(assert (=> b!6735502 (= e!4068754 e!4068756)))

(declare-fun c!1249147 () Bool)

(assert (=> b!6735502 (= c!1249147 ((_ is Star!16563) r!7292))))

(declare-fun b!6735503 () Bool)

(declare-fun e!4068750 () Bool)

(assert (=> b!6735503 (= e!4068754 e!4068750)))

(declare-fun res!2755426 () Bool)

(assert (=> b!6735503 (= res!2755426 (matchRSpec!3664 (regOne!33639 r!7292) s!2326))))

(assert (=> b!6735503 (=> res!2755426 e!4068750)))

(declare-fun b!6735504 () Bool)

(assert (=> b!6735504 (= e!4068751 (= s!2326 (Cons!65865 (c!1249129 r!7292) Nil!65865)))))

(declare-fun bm!608543 () Bool)

(assert (=> bm!608543 (= call!608549 (Exists!3631 (ite c!1249147 lambda!378210 lambda!378213)))))

(declare-fun bm!608544 () Bool)

(declare-fun call!608548 () Bool)

(assert (=> bm!608544 (= call!608548 (isEmpty!38201 s!2326))))

(assert (=> b!6735505 (= e!4068756 call!608549)))

(declare-fun b!6735506 () Bool)

(assert (=> b!6735506 (= e!4068750 (matchRSpec!3664 (regTwo!33639 r!7292) s!2326))))

(declare-fun b!6735507 () Bool)

(declare-fun res!2755427 () Bool)

(assert (=> b!6735507 (=> res!2755427 e!4068755)))

(assert (=> b!6735507 (= res!2755427 call!608548)))

(assert (=> b!6735507 (= e!4068756 e!4068755)))

(declare-fun b!6735508 () Bool)

(declare-fun c!1249146 () Bool)

(assert (=> b!6735508 (= c!1249146 ((_ is ElementMatch!16563) r!7292))))

(assert (=> b!6735508 (= e!4068752 e!4068751)))

(declare-fun b!6735509 () Bool)

(assert (=> b!6735509 (= e!4068753 call!608548)))

(assert (= (and d!2116253 c!1249144) b!6735509))

(assert (= (and d!2116253 (not c!1249144)) b!6735501))

(assert (= (and b!6735501 res!2755428) b!6735508))

(assert (= (and b!6735508 c!1249146) b!6735504))

(assert (= (and b!6735508 (not c!1249146)) b!6735499))

(assert (= (and b!6735499 c!1249145) b!6735503))

(assert (= (and b!6735499 (not c!1249145)) b!6735502))

(assert (= (and b!6735503 (not res!2755426)) b!6735506))

(assert (= (and b!6735502 c!1249147) b!6735507))

(assert (= (and b!6735502 (not c!1249147)) b!6735505))

(assert (= (and b!6735507 (not res!2755427)) b!6735500))

(assert (= (or b!6735500 b!6735505) bm!608543))

(assert (= (or b!6735509 b!6735507) bm!608544))

(declare-fun m!7493126 () Bool)

(assert (=> b!6735503 m!7493126))

(declare-fun m!7493128 () Bool)

(assert (=> bm!608543 m!7493128))

(assert (=> bm!608544 m!7493046))

(declare-fun m!7493130 () Bool)

(assert (=> b!6735506 m!7493130))

(assert (=> b!6735397 d!2116253))

(declare-fun d!2116267 () Bool)

(declare-fun e!4068801 () Bool)

(assert (=> d!2116267 e!4068801))

(declare-fun c!1249175 () Bool)

(assert (=> d!2116267 (= c!1249175 ((_ is EmptyExpr!16563) r!7292))))

(declare-fun lt!2438404 () Bool)

(declare-fun e!4068802 () Bool)

(assert (=> d!2116267 (= lt!2438404 e!4068802)))

(declare-fun c!1249176 () Bool)

(assert (=> d!2116267 (= c!1249176 (isEmpty!38201 s!2326))))

(assert (=> d!2116267 (validRegex!8299 r!7292)))

(assert (=> d!2116267 (= (matchR!8746 r!7292 s!2326) lt!2438404)))

(declare-fun bm!608568 () Bool)

(declare-fun call!608573 () Bool)

(assert (=> bm!608568 (= call!608573 (isEmpty!38201 s!2326))))

(declare-fun b!6735590 () Bool)

(assert (=> b!6735590 (= e!4068801 (= lt!2438404 call!608573))))

(declare-fun b!6735591 () Bool)

(declare-fun res!2755456 () Bool)

(declare-fun e!4068806 () Bool)

(assert (=> b!6735591 (=> (not res!2755456) (not e!4068806))))

(assert (=> b!6735591 (= res!2755456 (not call!608573))))

(declare-fun b!6735592 () Bool)

(declare-fun e!4068803 () Bool)

(declare-fun e!4068805 () Bool)

(assert (=> b!6735592 (= e!4068803 e!4068805)))

(declare-fun res!2755461 () Bool)

(assert (=> b!6735592 (=> (not res!2755461) (not e!4068805))))

(assert (=> b!6735592 (= res!2755461 (not lt!2438404))))

(declare-fun b!6735593 () Bool)

(declare-fun res!2755459 () Bool)

(assert (=> b!6735593 (=> res!2755459 e!4068803)))

(assert (=> b!6735593 (= res!2755459 (not ((_ is ElementMatch!16563) r!7292)))))

(declare-fun e!4068804 () Bool)

(assert (=> b!6735593 (= e!4068804 e!4068803)))

(declare-fun b!6735594 () Bool)

(declare-fun derivativeStep!5234 (Regex!16563 C!33396) Regex!16563)

(declare-fun head!13552 (List!65989) C!33396)

(declare-fun tail!12638 (List!65989) List!65989)

(assert (=> b!6735594 (= e!4068802 (matchR!8746 (derivativeStep!5234 r!7292 (head!13552 s!2326)) (tail!12638 s!2326)))))

(declare-fun b!6735595 () Bool)

(declare-fun res!2755462 () Bool)

(declare-fun e!4068800 () Bool)

(assert (=> b!6735595 (=> res!2755462 e!4068800)))

(assert (=> b!6735595 (= res!2755462 (not (isEmpty!38201 (tail!12638 s!2326))))))

(declare-fun b!6735596 () Bool)

(assert (=> b!6735596 (= e!4068804 (not lt!2438404))))

(declare-fun b!6735597 () Bool)

(declare-fun res!2755460 () Bool)

(assert (=> b!6735597 (=> (not res!2755460) (not e!4068806))))

(assert (=> b!6735597 (= res!2755460 (isEmpty!38201 (tail!12638 s!2326)))))

(declare-fun b!6735598 () Bool)

(assert (=> b!6735598 (= e!4068805 e!4068800)))

(declare-fun res!2755457 () Bool)

(assert (=> b!6735598 (=> res!2755457 e!4068800)))

(assert (=> b!6735598 (= res!2755457 call!608573)))

(declare-fun b!6735599 () Bool)

(assert (=> b!6735599 (= e!4068800 (not (= (head!13552 s!2326) (c!1249129 r!7292))))))

(declare-fun b!6735600 () Bool)

(assert (=> b!6735600 (= e!4068801 e!4068804)))

(declare-fun c!1249177 () Bool)

(assert (=> b!6735600 (= c!1249177 ((_ is EmptyLang!16563) r!7292))))

(declare-fun b!6735601 () Bool)

(declare-fun nullable!6550 (Regex!16563) Bool)

(assert (=> b!6735601 (= e!4068802 (nullable!6550 r!7292))))

(declare-fun b!6735602 () Bool)

(declare-fun res!2755455 () Bool)

(assert (=> b!6735602 (=> res!2755455 e!4068803)))

(assert (=> b!6735602 (= res!2755455 e!4068806)))

(declare-fun res!2755458 () Bool)

(assert (=> b!6735602 (=> (not res!2755458) (not e!4068806))))

(assert (=> b!6735602 (= res!2755458 lt!2438404)))

(declare-fun b!6735603 () Bool)

(assert (=> b!6735603 (= e!4068806 (= (head!13552 s!2326) (c!1249129 r!7292)))))

(assert (= (and d!2116267 c!1249176) b!6735601))

(assert (= (and d!2116267 (not c!1249176)) b!6735594))

(assert (= (and d!2116267 c!1249175) b!6735590))

(assert (= (and d!2116267 (not c!1249175)) b!6735600))

(assert (= (and b!6735600 c!1249177) b!6735596))

(assert (= (and b!6735600 (not c!1249177)) b!6735593))

(assert (= (and b!6735593 (not res!2755459)) b!6735602))

(assert (= (and b!6735602 res!2755458) b!6735591))

(assert (= (and b!6735591 res!2755456) b!6735597))

(assert (= (and b!6735597 res!2755460) b!6735603))

(assert (= (and b!6735602 (not res!2755455)) b!6735592))

(assert (= (and b!6735592 res!2755461) b!6735598))

(assert (= (and b!6735598 (not res!2755457)) b!6735595))

(assert (= (and b!6735595 (not res!2755462)) b!6735599))

(assert (= (or b!6735590 b!6735591 b!6735598) bm!608568))

(declare-fun m!7493164 () Bool)

(assert (=> b!6735601 m!7493164))

(declare-fun m!7493166 () Bool)

(assert (=> b!6735595 m!7493166))

(assert (=> b!6735595 m!7493166))

(declare-fun m!7493168 () Bool)

(assert (=> b!6735595 m!7493168))

(assert (=> d!2116267 m!7493046))

(assert (=> d!2116267 m!7493012))

(declare-fun m!7493170 () Bool)

(assert (=> b!6735599 m!7493170))

(assert (=> b!6735594 m!7493170))

(assert (=> b!6735594 m!7493170))

(declare-fun m!7493174 () Bool)

(assert (=> b!6735594 m!7493174))

(assert (=> b!6735594 m!7493166))

(assert (=> b!6735594 m!7493174))

(assert (=> b!6735594 m!7493166))

(declare-fun m!7493178 () Bool)

(assert (=> b!6735594 m!7493178))

(assert (=> bm!608568 m!7493046))

(assert (=> b!6735597 m!7493166))

(assert (=> b!6735597 m!7493166))

(assert (=> b!6735597 m!7493168))

(assert (=> b!6735603 m!7493170))

(assert (=> b!6735397 d!2116267))

(declare-fun d!2116285 () Bool)

(assert (=> d!2116285 (= (matchR!8746 r!7292 s!2326) (matchRSpec!3664 r!7292 s!2326))))

(declare-fun lt!2438409 () Unit!159817)

(declare-fun choose!50206 (Regex!16563 List!65989) Unit!159817)

(assert (=> d!2116285 (= lt!2438409 (choose!50206 r!7292 s!2326))))

(assert (=> d!2116285 (validRegex!8299 r!7292)))

(assert (=> d!2116285 (= (mainMatchTheorem!3664 r!7292 s!2326) lt!2438409)))

(declare-fun bs!1791147 () Bool)

(assert (= bs!1791147 d!2116285))

(assert (=> bs!1791147 m!7493070))

(assert (=> bs!1791147 m!7493068))

(declare-fun m!7493214 () Bool)

(assert (=> bs!1791147 m!7493214))

(assert (=> bs!1791147 m!7493012))

(assert (=> b!6735397 d!2116285))

(declare-fun d!2116295 () Bool)

(declare-fun e!4068825 () Bool)

(assert (=> d!2116295 e!4068825))

(declare-fun res!2755468 () Bool)

(assert (=> d!2116295 (=> (not res!2755468) (not e!4068825))))

(declare-fun lt!2438412 () List!65990)

(declare-fun noDuplicate!2356 (List!65990) Bool)

(assert (=> d!2116295 (= res!2755468 (noDuplicate!2356 lt!2438412))))

(declare-fun choose!50207 ((InoxSet Context!11894)) List!65990)

(assert (=> d!2116295 (= lt!2438412 (choose!50207 z!1189))))

(assert (=> d!2116295 (= (toList!10347 z!1189) lt!2438412)))

(declare-fun b!6735637 () Bool)

(declare-fun content!12795 (List!65990) (InoxSet Context!11894))

(assert (=> b!6735637 (= e!4068825 (= (content!12795 lt!2438412) z!1189))))

(assert (= (and d!2116295 res!2755468) b!6735637))

(declare-fun m!7493236 () Bool)

(assert (=> d!2116295 m!7493236))

(declare-fun m!7493238 () Bool)

(assert (=> d!2116295 m!7493238))

(declare-fun m!7493240 () Bool)

(assert (=> b!6735637 m!7493240))

(assert (=> b!6735408 d!2116295))

(declare-fun b!6735724 () Bool)

(declare-fun e!4068886 () (InoxSet Context!11894))

(declare-fun e!4068887 () (InoxSet Context!11894))

(assert (=> b!6735724 (= e!4068886 e!4068887)))

(declare-fun c!1249227 () Bool)

(assert (=> b!6735724 (= c!1249227 ((_ is Union!16563) (reg!16892 r!7292)))))

(declare-fun bm!608598 () Bool)

(declare-fun call!608607 () List!65988)

(declare-fun call!608604 () List!65988)

(assert (=> bm!608598 (= call!608607 call!608604)))

(declare-fun bm!608599 () Bool)

(declare-fun call!608606 () (InoxSet Context!11894))

(assert (=> bm!608599 (= call!608606 (derivationStepZipperDown!1791 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292))) (ite c!1249227 lt!2438378 (Context!11895 call!608604)) (h!72313 s!2326)))))

(declare-fun b!6735725 () Bool)

(declare-fun e!4068882 () (InoxSet Context!11894))

(declare-fun call!608605 () (InoxSet Context!11894))

(assert (=> b!6735725 (= e!4068882 call!608605)))

(declare-fun bm!608600 () Bool)

(declare-fun c!1249224 () Bool)

(declare-fun c!1249223 () Bool)

(declare-fun $colon$colon!2380 (List!65988 Regex!16563) List!65988)

(assert (=> bm!608600 (= call!608604 ($colon$colon!2380 (exprs!6447 lt!2438378) (ite (or c!1249224 c!1249223) (regTwo!33638 (reg!16892 r!7292)) (reg!16892 r!7292))))))

(declare-fun b!6735726 () Bool)

(declare-fun e!4068883 () Bool)

(assert (=> b!6735726 (= e!4068883 (nullable!6550 (regOne!33638 (reg!16892 r!7292))))))

(declare-fun call!608608 () (InoxSet Context!11894))

(declare-fun bm!608601 () Bool)

(assert (=> bm!608601 (= call!608608 (derivationStepZipperDown!1791 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292))))) (ite (or c!1249227 c!1249224) lt!2438378 (Context!11895 call!608607)) (h!72313 s!2326)))))

(declare-fun b!6735727 () Bool)

(declare-fun c!1249226 () Bool)

(assert (=> b!6735727 (= c!1249226 ((_ is Star!16563) (reg!16892 r!7292)))))

(declare-fun e!4068885 () (InoxSet Context!11894))

(assert (=> b!6735727 (= e!4068885 e!4068882)))

(declare-fun b!6735728 () Bool)

(assert (=> b!6735728 (= e!4068885 call!608605)))

(declare-fun b!6735729 () Bool)

(declare-fun e!4068884 () (InoxSet Context!11894))

(declare-fun call!608603 () (InoxSet Context!11894))

(assert (=> b!6735729 (= e!4068884 ((_ map or) call!608606 call!608603))))

(declare-fun b!6735730 () Bool)

(assert (=> b!6735730 (= c!1249224 e!4068883)))

(declare-fun res!2755495 () Bool)

(assert (=> b!6735730 (=> (not res!2755495) (not e!4068883))))

(assert (=> b!6735730 (= res!2755495 ((_ is Concat!25408) (reg!16892 r!7292)))))

(assert (=> b!6735730 (= e!4068887 e!4068884)))

(declare-fun bm!608602 () Bool)

(assert (=> bm!608602 (= call!608605 call!608603)))

(declare-fun b!6735732 () Bool)

(assert (=> b!6735732 (= e!4068884 e!4068885)))

(assert (=> b!6735732 (= c!1249223 ((_ is Concat!25408) (reg!16892 r!7292)))))

(declare-fun bm!608603 () Bool)

(assert (=> bm!608603 (= call!608603 call!608608)))

(declare-fun b!6735733 () Bool)

(assert (=> b!6735733 (= e!4068882 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6735734 () Bool)

(assert (=> b!6735734 (= e!4068887 ((_ map or) call!608608 call!608606))))

(declare-fun d!2116307 () Bool)

(declare-fun c!1249225 () Bool)

(assert (=> d!2116307 (= c!1249225 (and ((_ is ElementMatch!16563) (reg!16892 r!7292)) (= (c!1249129 (reg!16892 r!7292)) (h!72313 s!2326))))))

(assert (=> d!2116307 (= (derivationStepZipperDown!1791 (reg!16892 r!7292) lt!2438378 (h!72313 s!2326)) e!4068886)))

(declare-fun b!6735731 () Bool)

(assert (=> b!6735731 (= e!4068886 (store ((as const (Array Context!11894 Bool)) false) lt!2438378 true))))

(assert (= (and d!2116307 c!1249225) b!6735731))

(assert (= (and d!2116307 (not c!1249225)) b!6735724))

(assert (= (and b!6735724 c!1249227) b!6735734))

(assert (= (and b!6735724 (not c!1249227)) b!6735730))

(assert (= (and b!6735730 res!2755495) b!6735726))

(assert (= (and b!6735730 c!1249224) b!6735729))

(assert (= (and b!6735730 (not c!1249224)) b!6735732))

(assert (= (and b!6735732 c!1249223) b!6735728))

(assert (= (and b!6735732 (not c!1249223)) b!6735727))

(assert (= (and b!6735727 c!1249226) b!6735725))

(assert (= (and b!6735727 (not c!1249226)) b!6735733))

(assert (= (or b!6735728 b!6735725) bm!608598))

(assert (= (or b!6735728 b!6735725) bm!608602))

(assert (= (or b!6735729 bm!608598) bm!608600))

(assert (= (or b!6735729 bm!608602) bm!608603))

(assert (= (or b!6735734 b!6735729) bm!608599))

(assert (= (or b!6735734 bm!608603) bm!608601))

(declare-fun m!7493274 () Bool)

(assert (=> b!6735726 m!7493274))

(declare-fun m!7493278 () Bool)

(assert (=> bm!608601 m!7493278))

(declare-fun m!7493282 () Bool)

(assert (=> bm!608599 m!7493282))

(declare-fun m!7493284 () Bool)

(assert (=> b!6735731 m!7493284))

(declare-fun m!7493286 () Bool)

(assert (=> bm!608600 m!7493286))

(assert (=> b!6735414 d!2116307))

(declare-fun d!2116317 () Bool)

(declare-fun choose!50208 ((InoxSet Context!11894) Int) (InoxSet Context!11894))

(assert (=> d!2116317 (= (flatMap!2044 lt!2438370 lambda!378189) (choose!50208 lt!2438370 lambda!378189))))

(declare-fun bs!1791156 () Bool)

(assert (= bs!1791156 d!2116317))

(declare-fun m!7493288 () Bool)

(assert (=> bs!1791156 m!7493288))

(assert (=> b!6735414 d!2116317))

(declare-fun b!6735777 () Bool)

(declare-fun e!4068913 () (InoxSet Context!11894))

(declare-fun call!608611 () (InoxSet Context!11894))

(assert (=> b!6735777 (= e!4068913 ((_ map or) call!608611 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 lt!2438361))) (h!72313 s!2326))))))

(declare-fun d!2116319 () Bool)

(declare-fun c!1249245 () Bool)

(declare-fun e!4068915 () Bool)

(assert (=> d!2116319 (= c!1249245 e!4068915)))

(declare-fun res!2755504 () Bool)

(assert (=> d!2116319 (=> (not res!2755504) (not e!4068915))))

(assert (=> d!2116319 (= res!2755504 ((_ is Cons!65864) (exprs!6447 lt!2438361)))))

(assert (=> d!2116319 (= (derivationStepZipperUp!1717 lt!2438361 (h!72313 s!2326)) e!4068913)))

(declare-fun b!6735778 () Bool)

(declare-fun e!4068914 () (InoxSet Context!11894))

(assert (=> b!6735778 (= e!4068914 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608606 () Bool)

(assert (=> bm!608606 (= call!608611 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 lt!2438361)) (Context!11895 (t!379681 (exprs!6447 lt!2438361))) (h!72313 s!2326)))))

(declare-fun b!6735779 () Bool)

(assert (=> b!6735779 (= e!4068913 e!4068914)))

(declare-fun c!1249246 () Bool)

(assert (=> b!6735779 (= c!1249246 ((_ is Cons!65864) (exprs!6447 lt!2438361)))))

(declare-fun b!6735780 () Bool)

(assert (=> b!6735780 (= e!4068914 call!608611)))

(declare-fun b!6735781 () Bool)

(assert (=> b!6735781 (= e!4068915 (nullable!6550 (h!72312 (exprs!6447 lt!2438361))))))

(assert (= (and d!2116319 res!2755504) b!6735781))

(assert (= (and d!2116319 c!1249245) b!6735777))

(assert (= (and d!2116319 (not c!1249245)) b!6735779))

(assert (= (and b!6735779 c!1249246) b!6735780))

(assert (= (and b!6735779 (not c!1249246)) b!6735778))

(assert (= (or b!6735777 b!6735780) bm!608606))

(declare-fun m!7493314 () Bool)

(assert (=> b!6735777 m!7493314))

(declare-fun m!7493316 () Bool)

(assert (=> bm!608606 m!7493316))

(declare-fun m!7493318 () Bool)

(assert (=> b!6735781 m!7493318))

(assert (=> b!6735414 d!2116319))

(declare-fun d!2116327 () Bool)

(declare-fun dynLambda!26276 (Int Context!11894) (InoxSet Context!11894))

(assert (=> d!2116327 (= (flatMap!2044 lt!2438370 lambda!378189) (dynLambda!26276 lambda!378189 lt!2438361))))

(declare-fun lt!2438428 () Unit!159817)

(declare-fun choose!50209 ((InoxSet Context!11894) Context!11894 Int) Unit!159817)

(assert (=> d!2116327 (= lt!2438428 (choose!50209 lt!2438370 lt!2438361 lambda!378189))))

(assert (=> d!2116327 (= lt!2438370 (store ((as const (Array Context!11894 Bool)) false) lt!2438361 true))))

(assert (=> d!2116327 (= (lemmaFlatMapOnSingletonSet!1570 lt!2438370 lt!2438361 lambda!378189) lt!2438428)))

(declare-fun b_lambda!253615 () Bool)

(assert (=> (not b_lambda!253615) (not d!2116327)))

(declare-fun bs!1791172 () Bool)

(assert (= bs!1791172 d!2116327))

(assert (=> bs!1791172 m!7493028))

(declare-fun m!7493334 () Bool)

(assert (=> bs!1791172 m!7493334))

(declare-fun m!7493336 () Bool)

(assert (=> bs!1791172 m!7493336))

(assert (=> bs!1791172 m!7493022))

(assert (=> b!6735414 d!2116327))

(declare-fun bs!1791180 () Bool)

(declare-fun d!2116335 () Bool)

(assert (= bs!1791180 (and d!2116335 d!2116247)))

(declare-fun lambda!378241 () Int)

(assert (=> bs!1791180 (= lambda!378241 lambda!378198)))

(declare-fun bs!1791181 () Bool)

(assert (= bs!1791181 (and d!2116335 d!2116251)))

(assert (=> bs!1791181 (= lambda!378241 lambda!378199)))

(declare-fun b!6735855 () Bool)

(declare-fun e!4068960 () Bool)

(declare-fun e!4068959 () Bool)

(assert (=> b!6735855 (= e!4068960 e!4068959)))

(declare-fun c!1249274 () Bool)

(declare-fun isEmpty!38205 (List!65988) Bool)

(assert (=> b!6735855 (= c!1249274 (isEmpty!38205 (exprs!6447 (h!72314 zl!343))))))

(declare-fun b!6735856 () Bool)

(declare-fun e!4068964 () Bool)

(assert (=> b!6735856 (= e!4068964 (isEmpty!38205 (t!379681 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6735857 () Bool)

(declare-fun e!4068962 () Bool)

(declare-fun lt!2438431 () Regex!16563)

(declare-fun isConcat!1452 (Regex!16563) Bool)

(assert (=> b!6735857 (= e!4068962 (isConcat!1452 lt!2438431))))

(declare-fun b!6735859 () Bool)

(declare-fun head!13554 (List!65988) Regex!16563)

(assert (=> b!6735859 (= e!4068962 (= lt!2438431 (head!13554 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6735860 () Bool)

(declare-fun e!4068963 () Regex!16563)

(assert (=> b!6735860 (= e!4068963 EmptyExpr!16563)))

(declare-fun b!6735861 () Bool)

(declare-fun isEmptyExpr!1929 (Regex!16563) Bool)

(assert (=> b!6735861 (= e!4068959 (isEmptyExpr!1929 lt!2438431))))

(declare-fun b!6735862 () Bool)

(declare-fun e!4068961 () Regex!16563)

(assert (=> b!6735862 (= e!4068961 (h!72312 (exprs!6447 (h!72314 zl!343))))))

(declare-fun b!6735858 () Bool)

(assert (=> b!6735858 (= e!4068963 (Concat!25408 (h!72312 (exprs!6447 (h!72314 zl!343))) (generalisedConcat!2160 (t!379681 (exprs!6447 (h!72314 zl!343))))))))

(assert (=> d!2116335 e!4068960))

(declare-fun res!2755531 () Bool)

(assert (=> d!2116335 (=> (not res!2755531) (not e!4068960))))

(assert (=> d!2116335 (= res!2755531 (validRegex!8299 lt!2438431))))

(assert (=> d!2116335 (= lt!2438431 e!4068961)))

(declare-fun c!1249271 () Bool)

(assert (=> d!2116335 (= c!1249271 e!4068964)))

(declare-fun res!2755530 () Bool)

(assert (=> d!2116335 (=> (not res!2755530) (not e!4068964))))

(assert (=> d!2116335 (= res!2755530 ((_ is Cons!65864) (exprs!6447 (h!72314 zl!343))))))

(assert (=> d!2116335 (forall!15763 (exprs!6447 (h!72314 zl!343)) lambda!378241)))

(assert (=> d!2116335 (= (generalisedConcat!2160 (exprs!6447 (h!72314 zl!343))) lt!2438431)))

(declare-fun b!6735863 () Bool)

(assert (=> b!6735863 (= e!4068961 e!4068963)))

(declare-fun c!1249273 () Bool)

(assert (=> b!6735863 (= c!1249273 ((_ is Cons!65864) (exprs!6447 (h!72314 zl!343))))))

(declare-fun b!6735864 () Bool)

(assert (=> b!6735864 (= e!4068959 e!4068962)))

(declare-fun c!1249272 () Bool)

(declare-fun tail!12639 (List!65988) List!65988)

(assert (=> b!6735864 (= c!1249272 (isEmpty!38205 (tail!12639 (exprs!6447 (h!72314 zl!343)))))))

(assert (= (and d!2116335 res!2755530) b!6735856))

(assert (= (and d!2116335 c!1249271) b!6735862))

(assert (= (and d!2116335 (not c!1249271)) b!6735863))

(assert (= (and b!6735863 c!1249273) b!6735858))

(assert (= (and b!6735863 (not c!1249273)) b!6735860))

(assert (= (and d!2116335 res!2755531) b!6735855))

(assert (= (and b!6735855 c!1249274) b!6735861))

(assert (= (and b!6735855 (not c!1249274)) b!6735864))

(assert (= (and b!6735864 c!1249272) b!6735859))

(assert (= (and b!6735864 (not c!1249272)) b!6735857))

(declare-fun m!7493338 () Bool)

(assert (=> b!6735861 m!7493338))

(declare-fun m!7493340 () Bool)

(assert (=> d!2116335 m!7493340))

(declare-fun m!7493342 () Bool)

(assert (=> d!2116335 m!7493342))

(declare-fun m!7493344 () Bool)

(assert (=> b!6735859 m!7493344))

(declare-fun m!7493346 () Bool)

(assert (=> b!6735858 m!7493346))

(declare-fun m!7493348 () Bool)

(assert (=> b!6735855 m!7493348))

(declare-fun m!7493350 () Bool)

(assert (=> b!6735856 m!7493350))

(declare-fun m!7493352 () Bool)

(assert (=> b!6735864 m!7493352))

(assert (=> b!6735864 m!7493352))

(declare-fun m!7493354 () Bool)

(assert (=> b!6735864 m!7493354))

(declare-fun m!7493356 () Bool)

(assert (=> b!6735857 m!7493356))

(assert (=> b!6735415 d!2116335))

(declare-fun d!2116337 () Bool)

(declare-fun lt!2438434 () Regex!16563)

(assert (=> d!2116337 (validRegex!8299 lt!2438434)))

(assert (=> d!2116337 (= lt!2438434 (generalisedUnion!2407 (unfocusZipperList!1984 zl!343)))))

(assert (=> d!2116337 (= (unfocusZipper!2305 zl!343) lt!2438434)))

(declare-fun bs!1791184 () Bool)

(assert (= bs!1791184 d!2116337))

(declare-fun m!7493364 () Bool)

(assert (=> bs!1791184 m!7493364))

(assert (=> bs!1791184 m!7493076))

(assert (=> bs!1791184 m!7493076))

(assert (=> bs!1791184 m!7493078))

(assert (=> b!6735401 d!2116337))

(declare-fun d!2116341 () Bool)

(assert (=> d!2116341 (= (isEmpty!38202 (t!379683 zl!343)) ((_ is Nil!65866) (t!379683 zl!343)))))

(assert (=> b!6735412 d!2116341))

(declare-fun d!2116343 () Bool)

(declare-fun lt!2438435 () Regex!16563)

(assert (=> d!2116343 (validRegex!8299 lt!2438435)))

(assert (=> d!2116343 (= lt!2438435 (generalisedUnion!2407 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))))))

(assert (=> d!2116343 (= (unfocusZipper!2305 (Cons!65866 lt!2438361 Nil!65866)) lt!2438435)))

(declare-fun bs!1791185 () Bool)

(assert (= bs!1791185 d!2116343))

(declare-fun m!7493366 () Bool)

(assert (=> bs!1791185 m!7493366))

(declare-fun m!7493368 () Bool)

(assert (=> bs!1791185 m!7493368))

(assert (=> bs!1791185 m!7493368))

(declare-fun m!7493370 () Bool)

(assert (=> bs!1791185 m!7493370))

(assert (=> b!6735394 d!2116343))

(declare-fun d!2116345 () Bool)

(assert (=> d!2116345 (= (flatMap!2044 z!1189 lambda!378189) (choose!50208 z!1189 lambda!378189))))

(declare-fun bs!1791186 () Bool)

(assert (= bs!1791186 d!2116345))

(declare-fun m!7493372 () Bool)

(assert (=> bs!1791186 m!7493372))

(assert (=> b!6735413 d!2116345))

(declare-fun e!4068965 () (InoxSet Context!11894))

(declare-fun call!608620 () (InoxSet Context!11894))

(declare-fun b!6735865 () Bool)

(assert (=> b!6735865 (= e!4068965 ((_ map or) call!608620 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))) (h!72313 s!2326))))))

(declare-fun d!2116347 () Bool)

(declare-fun c!1249275 () Bool)

(declare-fun e!4068967 () Bool)

(assert (=> d!2116347 (= c!1249275 e!4068967)))

(declare-fun res!2755532 () Bool)

(assert (=> d!2116347 (=> (not res!2755532) (not e!4068967))))

(assert (=> d!2116347 (= res!2755532 ((_ is Cons!65864) (exprs!6447 (h!72314 zl!343))))))

(assert (=> d!2116347 (= (derivationStepZipperUp!1717 (h!72314 zl!343) (h!72313 s!2326)) e!4068965)))

(declare-fun b!6735866 () Bool)

(declare-fun e!4068966 () (InoxSet Context!11894))

(assert (=> b!6735866 (= e!4068966 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608615 () Bool)

(assert (=> bm!608615 (= call!608620 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (h!72314 zl!343))) (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))) (h!72313 s!2326)))))

(declare-fun b!6735867 () Bool)

(assert (=> b!6735867 (= e!4068965 e!4068966)))

(declare-fun c!1249276 () Bool)

(assert (=> b!6735867 (= c!1249276 ((_ is Cons!65864) (exprs!6447 (h!72314 zl!343))))))

(declare-fun b!6735868 () Bool)

(assert (=> b!6735868 (= e!4068966 call!608620)))

(declare-fun b!6735869 () Bool)

(assert (=> b!6735869 (= e!4068967 (nullable!6550 (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(assert (= (and d!2116347 res!2755532) b!6735869))

(assert (= (and d!2116347 c!1249275) b!6735865))

(assert (= (and d!2116347 (not c!1249275)) b!6735867))

(assert (= (and b!6735867 c!1249276) b!6735868))

(assert (= (and b!6735867 (not c!1249276)) b!6735866))

(assert (= (or b!6735865 b!6735868) bm!608615))

(declare-fun m!7493374 () Bool)

(assert (=> b!6735865 m!7493374))

(declare-fun m!7493376 () Bool)

(assert (=> bm!608615 m!7493376))

(declare-fun m!7493378 () Bool)

(assert (=> b!6735869 m!7493378))

(assert (=> b!6735413 d!2116347))

(declare-fun d!2116349 () Bool)

(assert (=> d!2116349 (= (flatMap!2044 z!1189 lambda!378189) (dynLambda!26276 lambda!378189 (h!72314 zl!343)))))

(declare-fun lt!2438436 () Unit!159817)

(assert (=> d!2116349 (= lt!2438436 (choose!50209 z!1189 (h!72314 zl!343) lambda!378189))))

(assert (=> d!2116349 (= z!1189 (store ((as const (Array Context!11894 Bool)) false) (h!72314 zl!343) true))))

(assert (=> d!2116349 (= (lemmaFlatMapOnSingletonSet!1570 z!1189 (h!72314 zl!343) lambda!378189) lt!2438436)))

(declare-fun b_lambda!253617 () Bool)

(assert (=> (not b_lambda!253617) (not d!2116349)))

(declare-fun bs!1791187 () Bool)

(assert (= bs!1791187 d!2116349))

(assert (=> bs!1791187 m!7493036))

(declare-fun m!7493380 () Bool)

(assert (=> bs!1791187 m!7493380))

(declare-fun m!7493382 () Bool)

(assert (=> bs!1791187 m!7493382))

(declare-fun m!7493384 () Bool)

(assert (=> bs!1791187 m!7493384))

(assert (=> b!6735413 d!2116349))

(declare-fun b!6735870 () Bool)

(declare-fun e!4068972 () (InoxSet Context!11894))

(declare-fun e!4068973 () (InoxSet Context!11894))

(assert (=> b!6735870 (= e!4068972 e!4068973)))

(declare-fun c!1249281 () Bool)

(assert (=> b!6735870 (= c!1249281 ((_ is Union!16563) r!7292))))

(declare-fun bm!608616 () Bool)

(declare-fun call!608625 () List!65988)

(declare-fun call!608622 () List!65988)

(assert (=> bm!608616 (= call!608625 call!608622)))

(declare-fun call!608624 () (InoxSet Context!11894))

(declare-fun bm!608617 () Bool)

(assert (=> bm!608617 (= call!608624 (derivationStepZipperDown!1791 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292)) (ite c!1249281 (Context!11895 Nil!65864) (Context!11895 call!608622)) (h!72313 s!2326)))))

(declare-fun b!6735871 () Bool)

(declare-fun e!4068968 () (InoxSet Context!11894))

(declare-fun call!608623 () (InoxSet Context!11894))

(assert (=> b!6735871 (= e!4068968 call!608623)))

(declare-fun c!1249278 () Bool)

(declare-fun c!1249277 () Bool)

(declare-fun bm!608618 () Bool)

(assert (=> bm!608618 (= call!608622 ($colon$colon!2380 (exprs!6447 (Context!11895 Nil!65864)) (ite (or c!1249278 c!1249277) (regTwo!33638 r!7292) r!7292)))))

(declare-fun b!6735872 () Bool)

(declare-fun e!4068969 () Bool)

(assert (=> b!6735872 (= e!4068969 (nullable!6550 (regOne!33638 r!7292)))))

(declare-fun call!608626 () (InoxSet Context!11894))

(declare-fun bm!608619 () Bool)

(assert (=> bm!608619 (= call!608626 (derivationStepZipperDown!1791 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292)))) (ite (or c!1249281 c!1249278) (Context!11895 Nil!65864) (Context!11895 call!608625)) (h!72313 s!2326)))))

(declare-fun b!6735873 () Bool)

(declare-fun c!1249280 () Bool)

(assert (=> b!6735873 (= c!1249280 ((_ is Star!16563) r!7292))))

(declare-fun e!4068971 () (InoxSet Context!11894))

(assert (=> b!6735873 (= e!4068971 e!4068968)))

(declare-fun b!6735874 () Bool)

(assert (=> b!6735874 (= e!4068971 call!608623)))

(declare-fun b!6735875 () Bool)

(declare-fun e!4068970 () (InoxSet Context!11894))

(declare-fun call!608621 () (InoxSet Context!11894))

(assert (=> b!6735875 (= e!4068970 ((_ map or) call!608624 call!608621))))

(declare-fun b!6735876 () Bool)

(assert (=> b!6735876 (= c!1249278 e!4068969)))

(declare-fun res!2755533 () Bool)

(assert (=> b!6735876 (=> (not res!2755533) (not e!4068969))))

(assert (=> b!6735876 (= res!2755533 ((_ is Concat!25408) r!7292))))

(assert (=> b!6735876 (= e!4068973 e!4068970)))

(declare-fun bm!608620 () Bool)

(assert (=> bm!608620 (= call!608623 call!608621)))

(declare-fun b!6735878 () Bool)

(assert (=> b!6735878 (= e!4068970 e!4068971)))

(assert (=> b!6735878 (= c!1249277 ((_ is Concat!25408) r!7292))))

(declare-fun bm!608621 () Bool)

(assert (=> bm!608621 (= call!608621 call!608626)))

(declare-fun b!6735879 () Bool)

(assert (=> b!6735879 (= e!4068968 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6735880 () Bool)

(assert (=> b!6735880 (= e!4068973 ((_ map or) call!608626 call!608624))))

(declare-fun d!2116351 () Bool)

(declare-fun c!1249279 () Bool)

(assert (=> d!2116351 (= c!1249279 (and ((_ is ElementMatch!16563) r!7292) (= (c!1249129 r!7292) (h!72313 s!2326))))))

(assert (=> d!2116351 (= (derivationStepZipperDown!1791 r!7292 (Context!11895 Nil!65864) (h!72313 s!2326)) e!4068972)))

(declare-fun b!6735877 () Bool)

(assert (=> b!6735877 (= e!4068972 (store ((as const (Array Context!11894 Bool)) false) (Context!11895 Nil!65864) true))))

(assert (= (and d!2116351 c!1249279) b!6735877))

(assert (= (and d!2116351 (not c!1249279)) b!6735870))

(assert (= (and b!6735870 c!1249281) b!6735880))

(assert (= (and b!6735870 (not c!1249281)) b!6735876))

(assert (= (and b!6735876 res!2755533) b!6735872))

(assert (= (and b!6735876 c!1249278) b!6735875))

(assert (= (and b!6735876 (not c!1249278)) b!6735878))

(assert (= (and b!6735878 c!1249277) b!6735874))

(assert (= (and b!6735878 (not c!1249277)) b!6735873))

(assert (= (and b!6735873 c!1249280) b!6735871))

(assert (= (and b!6735873 (not c!1249280)) b!6735879))

(assert (= (or b!6735874 b!6735871) bm!608616))

(assert (= (or b!6735874 b!6735871) bm!608620))

(assert (= (or b!6735875 bm!608616) bm!608618))

(assert (= (or b!6735875 bm!608620) bm!608621))

(assert (= (or b!6735880 b!6735875) bm!608617))

(assert (= (or b!6735880 bm!608621) bm!608619))

(declare-fun m!7493386 () Bool)

(assert (=> b!6735872 m!7493386))

(declare-fun m!7493388 () Bool)

(assert (=> bm!608619 m!7493388))

(declare-fun m!7493390 () Bool)

(assert (=> bm!608617 m!7493390))

(declare-fun m!7493392 () Bool)

(assert (=> b!6735877 m!7493392))

(declare-fun m!7493394 () Bool)

(assert (=> bm!608618 m!7493394))

(assert (=> b!6735390 d!2116351))

(declare-fun e!4068984 () (InoxSet Context!11894))

(declare-fun call!608627 () (InoxSet Context!11894))

(declare-fun b!6735903 () Bool)

(assert (=> b!6735903 (= e!4068984 ((_ map or) call!608627 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (h!72313 s!2326))))))

(declare-fun d!2116353 () Bool)

(declare-fun c!1249288 () Bool)

(declare-fun e!4068986 () Bool)

(assert (=> d!2116353 (= c!1249288 e!4068986)))

(declare-fun res!2755544 () Bool)

(assert (=> d!2116353 (=> (not res!2755544) (not e!4068986))))

(assert (=> d!2116353 (= res!2755544 ((_ is Cons!65864) (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))

(assert (=> d!2116353 (= (derivationStepZipperUp!1717 (Context!11895 (Cons!65864 r!7292 Nil!65864)) (h!72313 s!2326)) e!4068984)))

(declare-fun b!6735904 () Bool)

(declare-fun e!4068985 () (InoxSet Context!11894))

(assert (=> b!6735904 (= e!4068985 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608622 () Bool)

(assert (=> bm!608622 (= call!608627 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (h!72313 s!2326)))))

(declare-fun b!6735905 () Bool)

(assert (=> b!6735905 (= e!4068984 e!4068985)))

(declare-fun c!1249289 () Bool)

(assert (=> b!6735905 (= c!1249289 ((_ is Cons!65864) (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))

(declare-fun b!6735906 () Bool)

(assert (=> b!6735906 (= e!4068985 call!608627)))

(declare-fun b!6735907 () Bool)

(assert (=> b!6735907 (= e!4068986 (nullable!6550 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))

(assert (= (and d!2116353 res!2755544) b!6735907))

(assert (= (and d!2116353 c!1249288) b!6735903))

(assert (= (and d!2116353 (not c!1249288)) b!6735905))

(assert (= (and b!6735905 c!1249289) b!6735906))

(assert (= (and b!6735905 (not c!1249289)) b!6735904))

(assert (= (or b!6735903 b!6735906) bm!608622))

(declare-fun m!7493396 () Bool)

(assert (=> b!6735903 m!7493396))

(declare-fun m!7493398 () Bool)

(assert (=> bm!608622 m!7493398))

(declare-fun m!7493400 () Bool)

(assert (=> b!6735907 m!7493400))

(assert (=> b!6735390 d!2116353))

(declare-fun bs!1791188 () Bool)

(declare-fun d!2116355 () Bool)

(assert (= bs!1791188 (and d!2116355 b!6735413)))

(declare-fun lambda!378244 () Int)

(assert (=> bs!1791188 (= lambda!378244 lambda!378189)))

(assert (=> d!2116355 true))

(assert (=> d!2116355 (= (derivationStepZipper!2507 z!1189 (h!72313 s!2326)) (flatMap!2044 z!1189 lambda!378244))))

(declare-fun bs!1791189 () Bool)

(assert (= bs!1791189 d!2116355))

(declare-fun m!7493402 () Bool)

(assert (=> bs!1791189 m!7493402))

(assert (=> b!6735390 d!2116355))

(declare-fun d!2116357 () Bool)

(declare-fun c!1249297 () Bool)

(assert (=> d!2116357 (= c!1249297 (isEmpty!38201 s!2326))))

(declare-fun e!4069000 () Bool)

(assert (=> d!2116357 (= (matchZipper!2549 lt!2438370 s!2326) e!4069000)))

(declare-fun b!6735934 () Bool)

(declare-fun nullableZipper!2278 ((InoxSet Context!11894)) Bool)

(assert (=> b!6735934 (= e!4069000 (nullableZipper!2278 lt!2438370))))

(declare-fun b!6735935 () Bool)

(assert (=> b!6735935 (= e!4069000 (matchZipper!2549 (derivationStepZipper!2507 lt!2438370 (head!13552 s!2326)) (tail!12638 s!2326)))))

(assert (= (and d!2116357 c!1249297) b!6735934))

(assert (= (and d!2116357 (not c!1249297)) b!6735935))

(assert (=> d!2116357 m!7493046))

(declare-fun m!7493412 () Bool)

(assert (=> b!6735934 m!7493412))

(assert (=> b!6735935 m!7493170))

(assert (=> b!6735935 m!7493170))

(declare-fun m!7493414 () Bool)

(assert (=> b!6735935 m!7493414))

(assert (=> b!6735935 m!7493166))

(assert (=> b!6735935 m!7493414))

(assert (=> b!6735935 m!7493166))

(declare-fun m!7493416 () Bool)

(assert (=> b!6735935 m!7493416))

(assert (=> b!6735409 d!2116357))

(declare-fun d!2116361 () Bool)

(declare-fun c!1249298 () Bool)

(assert (=> d!2116361 (= c!1249298 (isEmpty!38201 (t!379682 s!2326)))))

(declare-fun e!4069001 () Bool)

(assert (=> d!2116361 (= (matchZipper!2549 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (t!379682 s!2326)) e!4069001)))

(declare-fun b!6735936 () Bool)

(assert (=> b!6735936 (= e!4069001 (nullableZipper!2278 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326))))))

(declare-fun b!6735937 () Bool)

(assert (=> b!6735937 (= e!4069001 (matchZipper!2549 (derivationStepZipper!2507 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (head!13552 (t!379682 s!2326))) (tail!12638 (t!379682 s!2326))))))

(assert (= (and d!2116361 c!1249298) b!6735936))

(assert (= (and d!2116361 (not c!1249298)) b!6735937))

(declare-fun m!7493418 () Bool)

(assert (=> d!2116361 m!7493418))

(assert (=> b!6735936 m!7493016))

(declare-fun m!7493420 () Bool)

(assert (=> b!6735936 m!7493420))

(declare-fun m!7493422 () Bool)

(assert (=> b!6735937 m!7493422))

(assert (=> b!6735937 m!7493016))

(assert (=> b!6735937 m!7493422))

(declare-fun m!7493424 () Bool)

(assert (=> b!6735937 m!7493424))

(declare-fun m!7493426 () Bool)

(assert (=> b!6735937 m!7493426))

(assert (=> b!6735937 m!7493424))

(assert (=> b!6735937 m!7493426))

(declare-fun m!7493428 () Bool)

(assert (=> b!6735937 m!7493428))

(assert (=> b!6735409 d!2116361))

(declare-fun bs!1791190 () Bool)

(declare-fun d!2116363 () Bool)

(assert (= bs!1791190 (and d!2116363 b!6735413)))

(declare-fun lambda!378245 () Int)

(assert (=> bs!1791190 (= lambda!378245 lambda!378189)))

(declare-fun bs!1791191 () Bool)

(assert (= bs!1791191 (and d!2116363 d!2116355)))

(assert (=> bs!1791191 (= lambda!378245 lambda!378244)))

(assert (=> d!2116363 true))

(assert (=> d!2116363 (= (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (flatMap!2044 lt!2438370 lambda!378245))))

(declare-fun bs!1791192 () Bool)

(assert (= bs!1791192 d!2116363))

(declare-fun m!7493430 () Bool)

(assert (=> bs!1791192 m!7493430))

(assert (=> b!6735409 d!2116363))

(declare-fun d!2116365 () Bool)

(declare-fun isEmpty!38206 (Option!16450) Bool)

(assert (=> d!2116365 (= (isDefined!13153 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326)) (not (isEmpty!38206 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326))))))

(declare-fun bs!1791193 () Bool)

(assert (= bs!1791193 d!2116365))

(assert (=> bs!1791193 m!7493052))

(declare-fun m!7493432 () Bool)

(assert (=> bs!1791193 m!7493432))

(assert (=> b!6735399 d!2116365))

(declare-fun bs!1791197 () Bool)

(declare-fun d!2116367 () Bool)

(assert (= bs!1791197 (and d!2116367 b!6735399)))

(declare-fun lambda!378250 () Int)

(assert (=> bs!1791197 (not (= lambda!378250 lambda!378188))))

(declare-fun bs!1791198 () Bool)

(assert (= bs!1791198 (and d!2116367 b!6735500)))

(assert (=> bs!1791198 (not (= lambda!378250 lambda!378210))))

(assert (=> bs!1791197 (= lambda!378250 lambda!378186)))

(declare-fun bs!1791199 () Bool)

(assert (= bs!1791199 (and d!2116367 b!6735505)))

(assert (=> bs!1791199 (not (= lambda!378250 lambda!378213))))

(assert (=> bs!1791197 (not (= lambda!378250 lambda!378187))))

(assert (=> d!2116367 true))

(assert (=> d!2116367 true))

(assert (=> d!2116367 true))

(declare-fun lambda!378251 () Int)

(assert (=> bs!1791197 (= lambda!378251 lambda!378188)))

(assert (=> bs!1791197 (not (= lambda!378251 lambda!378186))))

(assert (=> bs!1791199 (= (and (= (reg!16892 r!7292) (regOne!33638 r!7292)) (= r!7292 (regTwo!33638 r!7292))) (= lambda!378251 lambda!378213))))

(assert (=> bs!1791197 (not (= lambda!378251 lambda!378187))))

(declare-fun bs!1791200 () Bool)

(assert (= bs!1791200 d!2116367))

(assert (=> bs!1791200 (not (= lambda!378251 lambda!378250))))

(assert (=> bs!1791198 (not (= lambda!378251 lambda!378210))))

(assert (=> d!2116367 true))

(assert (=> d!2116367 true))

(assert (=> d!2116367 true))

(assert (=> d!2116367 (= (Exists!3631 lambda!378250) (Exists!3631 lambda!378251))))

(declare-fun lt!2438445 () Unit!159817)

(declare-fun choose!50210 (Regex!16563 Regex!16563 List!65989) Unit!159817)

(assert (=> d!2116367 (= lt!2438445 (choose!50210 (reg!16892 r!7292) r!7292 s!2326))))

(assert (=> d!2116367 (validRegex!8299 (reg!16892 r!7292))))

(assert (=> d!2116367 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2158 (reg!16892 r!7292) r!7292 s!2326) lt!2438445)))

(declare-fun m!7493440 () Bool)

(assert (=> bs!1791200 m!7493440))

(declare-fun m!7493442 () Bool)

(assert (=> bs!1791200 m!7493442))

(declare-fun m!7493444 () Bool)

(assert (=> bs!1791200 m!7493444))

(declare-fun m!7493446 () Bool)

(assert (=> bs!1791200 m!7493446))

(assert (=> b!6735399 d!2116367))

(declare-fun bs!1791201 () Bool)

(declare-fun d!2116373 () Bool)

(assert (= bs!1791201 (and d!2116373 b!6735399)))

(declare-fun lambda!378256 () Int)

(assert (=> bs!1791201 (not (= lambda!378256 lambda!378188))))

(declare-fun bs!1791202 () Bool)

(assert (= bs!1791202 (and d!2116373 d!2116367)))

(assert (=> bs!1791202 (not (= lambda!378256 lambda!378251))))

(assert (=> bs!1791201 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378256 lambda!378186))))

(declare-fun bs!1791203 () Bool)

(assert (= bs!1791203 (and d!2116373 b!6735505)))

(assert (=> bs!1791203 (not (= lambda!378256 lambda!378213))))

(assert (=> bs!1791201 (not (= lambda!378256 lambda!378187))))

(assert (=> bs!1791202 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378256 lambda!378250))))

(declare-fun bs!1791204 () Bool)

(assert (= bs!1791204 (and d!2116373 b!6735500)))

(assert (=> bs!1791204 (not (= lambda!378256 lambda!378210))))

(assert (=> d!2116373 true))

(assert (=> d!2116373 true))

(declare-fun lambda!378257 () Int)

(assert (=> bs!1791201 (not (= lambda!378257 lambda!378188))))

(assert (=> bs!1791202 (not (= lambda!378257 lambda!378251))))

(declare-fun bs!1791205 () Bool)

(assert (= bs!1791205 d!2116373))

(assert (=> bs!1791205 (not (= lambda!378257 lambda!378256))))

(assert (=> bs!1791201 (not (= lambda!378257 lambda!378186))))

(assert (=> bs!1791203 (not (= lambda!378257 lambda!378213))))

(assert (=> bs!1791201 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378257 lambda!378187))))

(assert (=> bs!1791202 (not (= lambda!378257 lambda!378250))))

(assert (=> bs!1791204 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378257 lambda!378210))))

(assert (=> d!2116373 true))

(assert (=> d!2116373 true))

(assert (=> d!2116373 (= (Exists!3631 lambda!378256) (Exists!3631 lambda!378257))))

(declare-fun lt!2438448 () Unit!159817)

(declare-fun choose!50211 (Regex!16563 List!65989) Unit!159817)

(assert (=> d!2116373 (= lt!2438448 (choose!50211 (reg!16892 r!7292) s!2326))))

(assert (=> d!2116373 (validRegex!8299 (reg!16892 r!7292))))

(assert (=> d!2116373 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!722 (reg!16892 r!7292) s!2326) lt!2438448)))

(declare-fun m!7493448 () Bool)

(assert (=> bs!1791205 m!7493448))

(declare-fun m!7493450 () Bool)

(assert (=> bs!1791205 m!7493450))

(declare-fun m!7493452 () Bool)

(assert (=> bs!1791205 m!7493452))

(assert (=> bs!1791205 m!7493446))

(assert (=> b!6735399 d!2116373))

(declare-fun d!2116375 () Bool)

(declare-fun choose!50212 (Int) Bool)

(assert (=> d!2116375 (= (Exists!3631 lambda!378188) (choose!50212 lambda!378188))))

(declare-fun bs!1791206 () Bool)

(assert (= bs!1791206 d!2116375))

(declare-fun m!7493454 () Bool)

(assert (=> bs!1791206 m!7493454))

(assert (=> b!6735399 d!2116375))

(declare-fun d!2116377 () Bool)

(assert (=> d!2116377 (= (Exists!3631 lambda!378186) (choose!50212 lambda!378186))))

(declare-fun bs!1791207 () Bool)

(assert (= bs!1791207 d!2116377))

(declare-fun m!7493456 () Bool)

(assert (=> bs!1791207 m!7493456))

(assert (=> b!6735399 d!2116377))

(declare-fun d!2116379 () Bool)

(assert (=> d!2116379 (= (isEmpty!38201 s!2326) ((_ is Nil!65865) s!2326))))

(assert (=> b!6735399 d!2116379))

(declare-fun d!2116381 () Bool)

(assert (=> d!2116381 (= (Exists!3631 lambda!378187) (choose!50212 lambda!378187))))

(declare-fun bs!1791208 () Bool)

(assert (= bs!1791208 d!2116381))

(declare-fun m!7493458 () Bool)

(assert (=> bs!1791208 m!7493458))

(assert (=> b!6735399 d!2116381))

(declare-fun d!2116383 () Bool)

(declare-fun e!4069044 () Bool)

(assert (=> d!2116383 e!4069044))

(declare-fun res!2755587 () Bool)

(assert (=> d!2116383 (=> res!2755587 e!4069044)))

(declare-fun e!4069043 () Bool)

(assert (=> d!2116383 (= res!2755587 e!4069043)))

(declare-fun res!2755588 () Bool)

(assert (=> d!2116383 (=> (not res!2755588) (not e!4069043))))

(declare-fun lt!2438457 () Option!16450)

(assert (=> d!2116383 (= res!2755588 (isDefined!13153 lt!2438457))))

(declare-fun e!4069047 () Option!16450)

(assert (=> d!2116383 (= lt!2438457 e!4069047)))

(declare-fun c!1249303 () Bool)

(declare-fun e!4069046 () Bool)

(assert (=> d!2116383 (= c!1249303 e!4069046)))

(declare-fun res!2755591 () Bool)

(assert (=> d!2116383 (=> (not res!2755591) (not e!4069046))))

(assert (=> d!2116383 (= res!2755591 (matchR!8746 (reg!16892 r!7292) Nil!65865))))

(assert (=> d!2116383 (validRegex!8299 (reg!16892 r!7292))))

(assert (=> d!2116383 (= (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326) lt!2438457)))

(declare-fun b!6736028 () Bool)

(declare-fun ++!14719 (List!65989 List!65989) List!65989)

(declare-fun get!22916 (Option!16450) tuple2!67076)

(assert (=> b!6736028 (= e!4069043 (= (++!14719 (_1!36841 (get!22916 lt!2438457)) (_2!36841 (get!22916 lt!2438457))) s!2326))))

(declare-fun b!6736029 () Bool)

(declare-fun e!4069045 () Option!16450)

(assert (=> b!6736029 (= e!4069047 e!4069045)))

(declare-fun c!1249304 () Bool)

(assert (=> b!6736029 (= c!1249304 ((_ is Nil!65865) s!2326))))

(declare-fun b!6736030 () Bool)

(assert (=> b!6736030 (= e!4069046 (matchR!8746 r!7292 s!2326))))

(declare-fun b!6736031 () Bool)

(assert (=> b!6736031 (= e!4069045 None!16449)))

(declare-fun b!6736032 () Bool)

(assert (=> b!6736032 (= e!4069044 (not (isDefined!13153 lt!2438457)))))

(declare-fun b!6736033 () Bool)

(assert (=> b!6736033 (= e!4069047 (Some!16449 (tuple2!67077 Nil!65865 s!2326)))))

(declare-fun b!6736034 () Bool)

(declare-fun res!2755590 () Bool)

(assert (=> b!6736034 (=> (not res!2755590) (not e!4069043))))

(assert (=> b!6736034 (= res!2755590 (matchR!8746 r!7292 (_2!36841 (get!22916 lt!2438457))))))

(declare-fun b!6736035 () Bool)

(declare-fun res!2755589 () Bool)

(assert (=> b!6736035 (=> (not res!2755589) (not e!4069043))))

(assert (=> b!6736035 (= res!2755589 (matchR!8746 (reg!16892 r!7292) (_1!36841 (get!22916 lt!2438457))))))

(declare-fun b!6736036 () Bool)

(declare-fun lt!2438455 () Unit!159817)

(declare-fun lt!2438456 () Unit!159817)

(assert (=> b!6736036 (= lt!2438455 lt!2438456)))

(assert (=> b!6736036 (= (++!14719 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (t!379682 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2692 (List!65989 C!33396 List!65989 List!65989) Unit!159817)

(assert (=> b!6736036 (= lt!2438456 (lemmaMoveElementToOtherListKeepsConcatEq!2692 Nil!65865 (h!72313 s!2326) (t!379682 s!2326) s!2326))))

(assert (=> b!6736036 (= e!4069045 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (t!379682 s!2326) s!2326))))

(assert (= (and d!2116383 res!2755591) b!6736030))

(assert (= (and d!2116383 c!1249303) b!6736033))

(assert (= (and d!2116383 (not c!1249303)) b!6736029))

(assert (= (and b!6736029 c!1249304) b!6736031))

(assert (= (and b!6736029 (not c!1249304)) b!6736036))

(assert (= (and d!2116383 res!2755588) b!6736035))

(assert (= (and b!6736035 res!2755589) b!6736034))

(assert (= (and b!6736034 res!2755590) b!6736028))

(assert (= (and d!2116383 (not res!2755587)) b!6736032))

(declare-fun m!7493460 () Bool)

(assert (=> d!2116383 m!7493460))

(declare-fun m!7493462 () Bool)

(assert (=> d!2116383 m!7493462))

(assert (=> d!2116383 m!7493446))

(declare-fun m!7493464 () Bool)

(assert (=> b!6736034 m!7493464))

(declare-fun m!7493466 () Bool)

(assert (=> b!6736034 m!7493466))

(assert (=> b!6736032 m!7493460))

(assert (=> b!6736035 m!7493464))

(declare-fun m!7493468 () Bool)

(assert (=> b!6736035 m!7493468))

(assert (=> b!6736028 m!7493464))

(declare-fun m!7493470 () Bool)

(assert (=> b!6736028 m!7493470))

(assert (=> b!6736030 m!7493070))

(declare-fun m!7493472 () Bool)

(assert (=> b!6736036 m!7493472))

(assert (=> b!6736036 m!7493472))

(declare-fun m!7493474 () Bool)

(assert (=> b!6736036 m!7493474))

(declare-fun m!7493476 () Bool)

(assert (=> b!6736036 m!7493476))

(assert (=> b!6736036 m!7493472))

(declare-fun m!7493478 () Bool)

(assert (=> b!6736036 m!7493478))

(assert (=> b!6735399 d!2116383))

(declare-fun bs!1791209 () Bool)

(declare-fun d!2116385 () Bool)

(assert (= bs!1791209 (and d!2116385 b!6735399)))

(declare-fun lambda!378260 () Int)

(assert (=> bs!1791209 (not (= lambda!378260 lambda!378188))))

(declare-fun bs!1791210 () Bool)

(assert (= bs!1791210 (and d!2116385 d!2116367)))

(assert (=> bs!1791210 (not (= lambda!378260 lambda!378251))))

(declare-fun bs!1791211 () Bool)

(assert (= bs!1791211 (and d!2116385 d!2116373)))

(assert (=> bs!1791211 (not (= lambda!378260 lambda!378257))))

(assert (=> bs!1791211 (= (= r!7292 (Star!16563 (reg!16892 r!7292))) (= lambda!378260 lambda!378256))))

(assert (=> bs!1791209 (= lambda!378260 lambda!378186)))

(declare-fun bs!1791212 () Bool)

(assert (= bs!1791212 (and d!2116385 b!6735505)))

(assert (=> bs!1791212 (not (= lambda!378260 lambda!378213))))

(assert (=> bs!1791209 (not (= lambda!378260 lambda!378187))))

(assert (=> bs!1791210 (= lambda!378260 lambda!378250)))

(declare-fun bs!1791213 () Bool)

(assert (= bs!1791213 (and d!2116385 b!6735500)))

(assert (=> bs!1791213 (not (= lambda!378260 lambda!378210))))

(assert (=> d!2116385 true))

(assert (=> d!2116385 true))

(assert (=> d!2116385 true))

(assert (=> d!2116385 (= (isDefined!13153 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326)) (Exists!3631 lambda!378260))))

(declare-fun lt!2438460 () Unit!159817)

(declare-fun choose!50214 (Regex!16563 Regex!16563 List!65989) Unit!159817)

(assert (=> d!2116385 (= lt!2438460 (choose!50214 (reg!16892 r!7292) r!7292 s!2326))))

(assert (=> d!2116385 (validRegex!8299 (reg!16892 r!7292))))

(assert (=> d!2116385 (= (lemmaFindConcatSeparationEquivalentToExists!2628 (reg!16892 r!7292) r!7292 s!2326) lt!2438460)))

(declare-fun bs!1791214 () Bool)

(assert (= bs!1791214 d!2116385))

(assert (=> bs!1791214 m!7493052))

(assert (=> bs!1791214 m!7493052))

(assert (=> bs!1791214 m!7493054))

(assert (=> bs!1791214 m!7493446))

(declare-fun m!7493480 () Bool)

(assert (=> bs!1791214 m!7493480))

(declare-fun m!7493482 () Bool)

(assert (=> bs!1791214 m!7493482))

(assert (=> b!6735399 d!2116385))

(declare-fun bs!1791215 () Bool)

(declare-fun d!2116387 () Bool)

(assert (= bs!1791215 (and d!2116387 d!2116247)))

(declare-fun lambda!378263 () Int)

(assert (=> bs!1791215 (= lambda!378263 lambda!378198)))

(declare-fun bs!1791216 () Bool)

(assert (= bs!1791216 (and d!2116387 d!2116251)))

(assert (=> bs!1791216 (= lambda!378263 lambda!378199)))

(declare-fun bs!1791217 () Bool)

(assert (= bs!1791217 (and d!2116387 d!2116335)))

(assert (=> bs!1791217 (= lambda!378263 lambda!378241)))

(declare-fun b!6736061 () Bool)

(declare-fun e!4069065 () Bool)

(declare-fun lt!2438463 () Regex!16563)

(assert (=> b!6736061 (= e!4069065 (= lt!2438463 (head!13554 (unfocusZipperList!1984 zl!343))))))

(declare-fun b!6736062 () Bool)

(declare-fun e!4069067 () Regex!16563)

(declare-fun e!4069063 () Regex!16563)

(assert (=> b!6736062 (= e!4069067 e!4069063)))

(declare-fun c!1249316 () Bool)

(assert (=> b!6736062 (= c!1249316 ((_ is Cons!65864) (unfocusZipperList!1984 zl!343)))))

(declare-fun b!6736063 () Bool)

(declare-fun isUnion!1367 (Regex!16563) Bool)

(assert (=> b!6736063 (= e!4069065 (isUnion!1367 lt!2438463))))

(declare-fun b!6736064 () Bool)

(declare-fun e!4069066 () Bool)

(declare-fun isEmptyLang!1937 (Regex!16563) Bool)

(assert (=> b!6736064 (= e!4069066 (isEmptyLang!1937 lt!2438463))))

(declare-fun b!6736065 () Bool)

(assert (=> b!6736065 (= e!4069063 EmptyLang!16563)))

(declare-fun b!6736066 () Bool)

(assert (=> b!6736066 (= e!4069067 (h!72312 (unfocusZipperList!1984 zl!343)))))

(declare-fun b!6736067 () Bool)

(assert (=> b!6736067 (= e!4069066 e!4069065)))

(declare-fun c!1249315 () Bool)

(assert (=> b!6736067 (= c!1249315 (isEmpty!38205 (tail!12639 (unfocusZipperList!1984 zl!343))))))

(declare-fun e!4069062 () Bool)

(assert (=> d!2116387 e!4069062))

(declare-fun res!2755601 () Bool)

(assert (=> d!2116387 (=> (not res!2755601) (not e!4069062))))

(assert (=> d!2116387 (= res!2755601 (validRegex!8299 lt!2438463))))

(assert (=> d!2116387 (= lt!2438463 e!4069067)))

(declare-fun c!1249314 () Bool)

(declare-fun e!4069064 () Bool)

(assert (=> d!2116387 (= c!1249314 e!4069064)))

(declare-fun res!2755600 () Bool)

(assert (=> d!2116387 (=> (not res!2755600) (not e!4069064))))

(assert (=> d!2116387 (= res!2755600 ((_ is Cons!65864) (unfocusZipperList!1984 zl!343)))))

(assert (=> d!2116387 (forall!15763 (unfocusZipperList!1984 zl!343) lambda!378263)))

(assert (=> d!2116387 (= (generalisedUnion!2407 (unfocusZipperList!1984 zl!343)) lt!2438463)))

(declare-fun b!6736068 () Bool)

(assert (=> b!6736068 (= e!4069063 (Union!16563 (h!72312 (unfocusZipperList!1984 zl!343)) (generalisedUnion!2407 (t!379681 (unfocusZipperList!1984 zl!343)))))))

(declare-fun b!6736069 () Bool)

(assert (=> b!6736069 (= e!4069064 (isEmpty!38205 (t!379681 (unfocusZipperList!1984 zl!343))))))

(declare-fun b!6736070 () Bool)

(assert (=> b!6736070 (= e!4069062 e!4069066)))

(declare-fun c!1249313 () Bool)

(assert (=> b!6736070 (= c!1249313 (isEmpty!38205 (unfocusZipperList!1984 zl!343)))))

(assert (= (and d!2116387 res!2755600) b!6736069))

(assert (= (and d!2116387 c!1249314) b!6736066))

(assert (= (and d!2116387 (not c!1249314)) b!6736062))

(assert (= (and b!6736062 c!1249316) b!6736068))

(assert (= (and b!6736062 (not c!1249316)) b!6736065))

(assert (= (and d!2116387 res!2755601) b!6736070))

(assert (= (and b!6736070 c!1249313) b!6736064))

(assert (= (and b!6736070 (not c!1249313)) b!6736067))

(assert (= (and b!6736067 c!1249315) b!6736061))

(assert (= (and b!6736067 (not c!1249315)) b!6736063))

(assert (=> b!6736070 m!7493076))

(declare-fun m!7493484 () Bool)

(assert (=> b!6736070 m!7493484))

(assert (=> b!6736061 m!7493076))

(declare-fun m!7493486 () Bool)

(assert (=> b!6736061 m!7493486))

(declare-fun m!7493488 () Bool)

(assert (=> d!2116387 m!7493488))

(assert (=> d!2116387 m!7493076))

(declare-fun m!7493490 () Bool)

(assert (=> d!2116387 m!7493490))

(declare-fun m!7493492 () Bool)

(assert (=> b!6736063 m!7493492))

(declare-fun m!7493494 () Bool)

(assert (=> b!6736069 m!7493494))

(assert (=> b!6736067 m!7493076))

(declare-fun m!7493496 () Bool)

(assert (=> b!6736067 m!7493496))

(assert (=> b!6736067 m!7493496))

(declare-fun m!7493498 () Bool)

(assert (=> b!6736067 m!7493498))

(declare-fun m!7493500 () Bool)

(assert (=> b!6736064 m!7493500))

(declare-fun m!7493502 () Bool)

(assert (=> b!6736068 m!7493502))

(assert (=> b!6735410 d!2116387))

(declare-fun bs!1791218 () Bool)

(declare-fun d!2116389 () Bool)

(assert (= bs!1791218 (and d!2116389 d!2116247)))

(declare-fun lambda!378266 () Int)

(assert (=> bs!1791218 (= lambda!378266 lambda!378198)))

(declare-fun bs!1791219 () Bool)

(assert (= bs!1791219 (and d!2116389 d!2116251)))

(assert (=> bs!1791219 (= lambda!378266 lambda!378199)))

(declare-fun bs!1791220 () Bool)

(assert (= bs!1791220 (and d!2116389 d!2116335)))

(assert (=> bs!1791220 (= lambda!378266 lambda!378241)))

(declare-fun bs!1791221 () Bool)

(assert (= bs!1791221 (and d!2116389 d!2116387)))

(assert (=> bs!1791221 (= lambda!378266 lambda!378263)))

(declare-fun lt!2438466 () List!65988)

(assert (=> d!2116389 (forall!15763 lt!2438466 lambda!378266)))

(declare-fun e!4069070 () List!65988)

(assert (=> d!2116389 (= lt!2438466 e!4069070)))

(declare-fun c!1249319 () Bool)

(assert (=> d!2116389 (= c!1249319 ((_ is Cons!65866) zl!343))))

(assert (=> d!2116389 (= (unfocusZipperList!1984 zl!343) lt!2438466)))

(declare-fun b!6736075 () Bool)

(assert (=> b!6736075 (= e!4069070 (Cons!65864 (generalisedConcat!2160 (exprs!6447 (h!72314 zl!343))) (unfocusZipperList!1984 (t!379683 zl!343))))))

(declare-fun b!6736076 () Bool)

(assert (=> b!6736076 (= e!4069070 Nil!65864)))

(assert (= (and d!2116389 c!1249319) b!6736075))

(assert (= (and d!2116389 (not c!1249319)) b!6736076))

(declare-fun m!7493504 () Bool)

(assert (=> d!2116389 m!7493504))

(assert (=> b!6736075 m!7493004))

(declare-fun m!7493506 () Bool)

(assert (=> b!6736075 m!7493506))

(assert (=> b!6735410 d!2116389))

(declare-fun c!1249325 () Bool)

(declare-fun call!608639 () Bool)

(declare-fun c!1249324 () Bool)

(declare-fun bm!608632 () Bool)

(assert (=> bm!608632 (= call!608639 (validRegex!8299 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))))))

(declare-fun b!6736095 () Bool)

(declare-fun e!4069085 () Bool)

(declare-fun e!4069090 () Bool)

(assert (=> b!6736095 (= e!4069085 e!4069090)))

(assert (=> b!6736095 (= c!1249324 ((_ is Union!16563) r!7292))))

(declare-fun b!6736096 () Bool)

(declare-fun e!4069088 () Bool)

(declare-fun call!608638 () Bool)

(assert (=> b!6736096 (= e!4069088 call!608638)))

(declare-fun b!6736097 () Bool)

(declare-fun e!4069089 () Bool)

(declare-fun e!4069091 () Bool)

(assert (=> b!6736097 (= e!4069089 e!4069091)))

(declare-fun res!2755612 () Bool)

(assert (=> b!6736097 (=> (not res!2755612) (not e!4069091))))

(declare-fun call!608637 () Bool)

(assert (=> b!6736097 (= res!2755612 call!608637)))

(declare-fun b!6736098 () Bool)

(declare-fun res!2755614 () Bool)

(assert (=> b!6736098 (=> res!2755614 e!4069089)))

(assert (=> b!6736098 (= res!2755614 (not ((_ is Concat!25408) r!7292)))))

(assert (=> b!6736098 (= e!4069090 e!4069089)))

(declare-fun b!6736099 () Bool)

(declare-fun e!4069087 () Bool)

(assert (=> b!6736099 (= e!4069087 call!608639)))

(declare-fun b!6736100 () Bool)

(assert (=> b!6736100 (= e!4069085 e!4069087)))

(declare-fun res!2755615 () Bool)

(assert (=> b!6736100 (= res!2755615 (not (nullable!6550 (reg!16892 r!7292))))))

(assert (=> b!6736100 (=> (not res!2755615) (not e!4069087))))

(declare-fun bm!608633 () Bool)

(assert (=> bm!608633 (= call!608638 call!608639)))

(declare-fun b!6736101 () Bool)

(declare-fun e!4069086 () Bool)

(assert (=> b!6736101 (= e!4069086 e!4069085)))

(assert (=> b!6736101 (= c!1249325 ((_ is Star!16563) r!7292))))

(declare-fun b!6736102 () Bool)

(declare-fun res!2755616 () Bool)

(assert (=> b!6736102 (=> (not res!2755616) (not e!4069088))))

(assert (=> b!6736102 (= res!2755616 call!608637)))

(assert (=> b!6736102 (= e!4069090 e!4069088)))

(declare-fun bm!608634 () Bool)

(assert (=> bm!608634 (= call!608637 (validRegex!8299 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))))))

(declare-fun b!6736103 () Bool)

(assert (=> b!6736103 (= e!4069091 call!608638)))

(declare-fun d!2116391 () Bool)

(declare-fun res!2755613 () Bool)

(assert (=> d!2116391 (=> res!2755613 e!4069086)))

(assert (=> d!2116391 (= res!2755613 ((_ is ElementMatch!16563) r!7292))))

(assert (=> d!2116391 (= (validRegex!8299 r!7292) e!4069086)))

(assert (= (and d!2116391 (not res!2755613)) b!6736101))

(assert (= (and b!6736101 c!1249325) b!6736100))

(assert (= (and b!6736101 (not c!1249325)) b!6736095))

(assert (= (and b!6736100 res!2755615) b!6736099))

(assert (= (and b!6736095 c!1249324) b!6736102))

(assert (= (and b!6736095 (not c!1249324)) b!6736098))

(assert (= (and b!6736102 res!2755616) b!6736096))

(assert (= (and b!6736098 (not res!2755614)) b!6736097))

(assert (= (and b!6736097 res!2755612) b!6736103))

(assert (= (or b!6736096 b!6736103) bm!608633))

(assert (= (or b!6736102 b!6736097) bm!608634))

(assert (= (or b!6736099 bm!608633) bm!608632))

(declare-fun m!7493508 () Bool)

(assert (=> bm!608632 m!7493508))

(declare-fun m!7493510 () Bool)

(assert (=> b!6736100 m!7493510))

(declare-fun m!7493512 () Bool)

(assert (=> bm!608634 m!7493512))

(assert (=> start!653244 d!2116391))

(declare-fun bs!1791222 () Bool)

(declare-fun d!2116393 () Bool)

(assert (= bs!1791222 (and d!2116393 d!2116335)))

(declare-fun lambda!378267 () Int)

(assert (=> bs!1791222 (= lambda!378267 lambda!378241)))

(declare-fun bs!1791223 () Bool)

(assert (= bs!1791223 (and d!2116393 d!2116251)))

(assert (=> bs!1791223 (= lambda!378267 lambda!378199)))

(declare-fun bs!1791224 () Bool)

(assert (= bs!1791224 (and d!2116393 d!2116389)))

(assert (=> bs!1791224 (= lambda!378267 lambda!378266)))

(declare-fun bs!1791225 () Bool)

(assert (= bs!1791225 (and d!2116393 d!2116247)))

(assert (=> bs!1791225 (= lambda!378267 lambda!378198)))

(declare-fun bs!1791226 () Bool)

(assert (= bs!1791226 (and d!2116393 d!2116387)))

(assert (=> bs!1791226 (= lambda!378267 lambda!378263)))

(assert (=> d!2116393 (= (inv!84654 lt!2438365) (forall!15763 (exprs!6447 lt!2438365) lambda!378267))))

(declare-fun bs!1791227 () Bool)

(assert (= bs!1791227 d!2116393))

(declare-fun m!7493514 () Bool)

(assert (=> bs!1791227 m!7493514))

(assert (=> b!6735400 d!2116393))

(declare-fun b!6736104 () Bool)

(declare-fun e!4069092 () (InoxSet Context!11894))

(declare-fun call!608640 () (InoxSet Context!11894))

(assert (=> b!6736104 (= e!4069092 ((_ map or) call!608640 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 lt!2438378))) (h!72313 s!2326))))))

(declare-fun d!2116395 () Bool)

(declare-fun c!1249326 () Bool)

(declare-fun e!4069094 () Bool)

(assert (=> d!2116395 (= c!1249326 e!4069094)))

(declare-fun res!2755617 () Bool)

(assert (=> d!2116395 (=> (not res!2755617) (not e!4069094))))

(assert (=> d!2116395 (= res!2755617 ((_ is Cons!65864) (exprs!6447 lt!2438378)))))

(assert (=> d!2116395 (= (derivationStepZipperUp!1717 lt!2438378 (h!72313 s!2326)) e!4069092)))

(declare-fun b!6736105 () Bool)

(declare-fun e!4069093 () (InoxSet Context!11894))

(assert (=> b!6736105 (= e!4069093 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608635 () Bool)

(assert (=> bm!608635 (= call!608640 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 lt!2438378)) (Context!11895 (t!379681 (exprs!6447 lt!2438378))) (h!72313 s!2326)))))

(declare-fun b!6736106 () Bool)

(assert (=> b!6736106 (= e!4069092 e!4069093)))

(declare-fun c!1249327 () Bool)

(assert (=> b!6736106 (= c!1249327 ((_ is Cons!65864) (exprs!6447 lt!2438378)))))

(declare-fun b!6736107 () Bool)

(assert (=> b!6736107 (= e!4069093 call!608640)))

(declare-fun b!6736108 () Bool)

(assert (=> b!6736108 (= e!4069094 (nullable!6550 (h!72312 (exprs!6447 lt!2438378))))))

(assert (= (and d!2116395 res!2755617) b!6736108))

(assert (= (and d!2116395 c!1249326) b!6736104))

(assert (= (and d!2116395 (not c!1249326)) b!6736106))

(assert (= (and b!6736106 c!1249327) b!6736107))

(assert (= (and b!6736106 (not c!1249327)) b!6736105))

(assert (= (or b!6736104 b!6736107) bm!608635))

(declare-fun m!7493516 () Bool)

(assert (=> b!6736104 m!7493516))

(declare-fun m!7493518 () Bool)

(assert (=> bm!608635 m!7493518))

(declare-fun m!7493520 () Bool)

(assert (=> b!6736108 m!7493520))

(assert (=> b!6735400 d!2116395))

(declare-fun e!4069095 () (InoxSet Context!11894))

(declare-fun b!6736109 () Bool)

(declare-fun call!608641 () (InoxSet Context!11894))

(assert (=> b!6736109 (= e!4069095 ((_ map or) call!608641 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 lt!2438365))) (h!72313 s!2326))))))

(declare-fun d!2116397 () Bool)

(declare-fun c!1249328 () Bool)

(declare-fun e!4069097 () Bool)

(assert (=> d!2116397 (= c!1249328 e!4069097)))

(declare-fun res!2755618 () Bool)

(assert (=> d!2116397 (=> (not res!2755618) (not e!4069097))))

(assert (=> d!2116397 (= res!2755618 ((_ is Cons!65864) (exprs!6447 lt!2438365)))))

(assert (=> d!2116397 (= (derivationStepZipperUp!1717 lt!2438365 (h!72313 s!2326)) e!4069095)))

(declare-fun b!6736110 () Bool)

(declare-fun e!4069096 () (InoxSet Context!11894))

(assert (=> b!6736110 (= e!4069096 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608636 () Bool)

(assert (=> bm!608636 (= call!608641 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 lt!2438365)) (Context!11895 (t!379681 (exprs!6447 lt!2438365))) (h!72313 s!2326)))))

(declare-fun b!6736111 () Bool)

(assert (=> b!6736111 (= e!4069095 e!4069096)))

(declare-fun c!1249329 () Bool)

(assert (=> b!6736111 (= c!1249329 ((_ is Cons!65864) (exprs!6447 lt!2438365)))))

(declare-fun b!6736112 () Bool)

(assert (=> b!6736112 (= e!4069096 call!608641)))

(declare-fun b!6736113 () Bool)

(assert (=> b!6736113 (= e!4069097 (nullable!6550 (h!72312 (exprs!6447 lt!2438365))))))

(assert (= (and d!2116397 res!2755618) b!6736113))

(assert (= (and d!2116397 c!1249328) b!6736109))

(assert (= (and d!2116397 (not c!1249328)) b!6736111))

(assert (= (and b!6736111 c!1249329) b!6736112))

(assert (= (and b!6736111 (not c!1249329)) b!6736110))

(assert (= (or b!6736109 b!6736112) bm!608636))

(declare-fun m!7493522 () Bool)

(assert (=> b!6736109 m!7493522))

(declare-fun m!7493524 () Bool)

(assert (=> bm!608636 m!7493524))

(declare-fun m!7493526 () Bool)

(assert (=> b!6736113 m!7493526))

(assert (=> b!6735400 d!2116397))

(declare-fun b!6736118 () Bool)

(declare-fun e!4069100 () Bool)

(declare-fun tp!1846714 () Bool)

(assert (=> b!6736118 (= e!4069100 (and tp_is_empty!42379 tp!1846714))))

(assert (=> b!6735393 (= tp!1846649 e!4069100)))

(assert (= (and b!6735393 ((_ is Cons!65865) (t!379682 s!2326))) b!6736118))

(declare-fun b!6736126 () Bool)

(declare-fun e!4069106 () Bool)

(declare-fun tp!1846719 () Bool)

(assert (=> b!6736126 (= e!4069106 tp!1846719)))

(declare-fun tp!1846720 () Bool)

(declare-fun b!6736125 () Bool)

(declare-fun e!4069105 () Bool)

(assert (=> b!6736125 (= e!4069105 (and (inv!84654 (h!72314 (t!379683 zl!343))) e!4069106 tp!1846720))))

(assert (=> b!6735406 (= tp!1846644 e!4069105)))

(assert (= b!6736125 b!6736126))

(assert (= (and b!6735406 ((_ is Cons!65866) (t!379683 zl!343))) b!6736125))

(declare-fun m!7493528 () Bool)

(assert (=> b!6736125 m!7493528))

(declare-fun b!6736131 () Bool)

(declare-fun e!4069109 () Bool)

(declare-fun tp!1846725 () Bool)

(declare-fun tp!1846726 () Bool)

(assert (=> b!6736131 (= e!4069109 (and tp!1846725 tp!1846726))))

(assert (=> b!6735392 (= tp!1846651 e!4069109)))

(assert (= (and b!6735392 ((_ is Cons!65864) (exprs!6447 setElem!45965))) b!6736131))

(declare-fun condSetEmpty!45971 () Bool)

(assert (=> setNonEmpty!45965 (= condSetEmpty!45971 (= setRest!45965 ((as const (Array Context!11894 Bool)) false)))))

(declare-fun setRes!45971 () Bool)

(assert (=> setNonEmpty!45965 (= tp!1846645 setRes!45971)))

(declare-fun setIsEmpty!45971 () Bool)

(assert (=> setIsEmpty!45971 setRes!45971))

(declare-fun tp!1846732 () Bool)

(declare-fun e!4069112 () Bool)

(declare-fun setNonEmpty!45971 () Bool)

(declare-fun setElem!45971 () Context!11894)

(assert (=> setNonEmpty!45971 (= setRes!45971 (and tp!1846732 (inv!84654 setElem!45971) e!4069112))))

(declare-fun setRest!45971 () (InoxSet Context!11894))

(assert (=> setNonEmpty!45971 (= setRest!45965 ((_ map or) (store ((as const (Array Context!11894 Bool)) false) setElem!45971 true) setRest!45971))))

(declare-fun b!6736136 () Bool)

(declare-fun tp!1846731 () Bool)

(assert (=> b!6736136 (= e!4069112 tp!1846731)))

(assert (= (and setNonEmpty!45965 condSetEmpty!45971) setIsEmpty!45971))

(assert (= (and setNonEmpty!45965 (not condSetEmpty!45971)) setNonEmpty!45971))

(assert (= setNonEmpty!45971 b!6736136))

(declare-fun m!7493530 () Bool)

(assert (=> setNonEmpty!45971 m!7493530))

(declare-fun b!6736148 () Bool)

(declare-fun e!4069115 () Bool)

(declare-fun tp!1846747 () Bool)

(declare-fun tp!1846744 () Bool)

(assert (=> b!6736148 (= e!4069115 (and tp!1846747 tp!1846744))))

(assert (=> b!6735398 (= tp!1846653 e!4069115)))

(declare-fun b!6736147 () Bool)

(assert (=> b!6736147 (= e!4069115 tp_is_empty!42379)))

(declare-fun b!6736150 () Bool)

(declare-fun tp!1846743 () Bool)

(declare-fun tp!1846745 () Bool)

(assert (=> b!6736150 (= e!4069115 (and tp!1846743 tp!1846745))))

(declare-fun b!6736149 () Bool)

(declare-fun tp!1846746 () Bool)

(assert (=> b!6736149 (= e!4069115 tp!1846746)))

(assert (= (and b!6735398 ((_ is ElementMatch!16563) (regOne!33639 r!7292))) b!6736147))

(assert (= (and b!6735398 ((_ is Concat!25408) (regOne!33639 r!7292))) b!6736148))

(assert (= (and b!6735398 ((_ is Star!16563) (regOne!33639 r!7292))) b!6736149))

(assert (= (and b!6735398 ((_ is Union!16563) (regOne!33639 r!7292))) b!6736150))

(declare-fun b!6736152 () Bool)

(declare-fun e!4069116 () Bool)

(declare-fun tp!1846752 () Bool)

(declare-fun tp!1846749 () Bool)

(assert (=> b!6736152 (= e!4069116 (and tp!1846752 tp!1846749))))

(assert (=> b!6735398 (= tp!1846646 e!4069116)))

(declare-fun b!6736151 () Bool)

(assert (=> b!6736151 (= e!4069116 tp_is_empty!42379)))

(declare-fun b!6736154 () Bool)

(declare-fun tp!1846748 () Bool)

(declare-fun tp!1846750 () Bool)

(assert (=> b!6736154 (= e!4069116 (and tp!1846748 tp!1846750))))

(declare-fun b!6736153 () Bool)

(declare-fun tp!1846751 () Bool)

(assert (=> b!6736153 (= e!4069116 tp!1846751)))

(assert (= (and b!6735398 ((_ is ElementMatch!16563) (regTwo!33639 r!7292))) b!6736151))

(assert (= (and b!6735398 ((_ is Concat!25408) (regTwo!33639 r!7292))) b!6736152))

(assert (= (and b!6735398 ((_ is Star!16563) (regTwo!33639 r!7292))) b!6736153))

(assert (= (and b!6735398 ((_ is Union!16563) (regTwo!33639 r!7292))) b!6736154))

(declare-fun b!6736156 () Bool)

(declare-fun e!4069117 () Bool)

(declare-fun tp!1846757 () Bool)

(declare-fun tp!1846754 () Bool)

(assert (=> b!6736156 (= e!4069117 (and tp!1846757 tp!1846754))))

(assert (=> b!6735404 (= tp!1846650 e!4069117)))

(declare-fun b!6736155 () Bool)

(assert (=> b!6736155 (= e!4069117 tp_is_empty!42379)))

(declare-fun b!6736158 () Bool)

(declare-fun tp!1846753 () Bool)

(declare-fun tp!1846755 () Bool)

(assert (=> b!6736158 (= e!4069117 (and tp!1846753 tp!1846755))))

(declare-fun b!6736157 () Bool)

(declare-fun tp!1846756 () Bool)

(assert (=> b!6736157 (= e!4069117 tp!1846756)))

(assert (= (and b!6735404 ((_ is ElementMatch!16563) (reg!16892 r!7292))) b!6736155))

(assert (= (and b!6735404 ((_ is Concat!25408) (reg!16892 r!7292))) b!6736156))

(assert (= (and b!6735404 ((_ is Star!16563) (reg!16892 r!7292))) b!6736157))

(assert (= (and b!6735404 ((_ is Union!16563) (reg!16892 r!7292))) b!6736158))

(declare-fun b!6736159 () Bool)

(declare-fun e!4069118 () Bool)

(declare-fun tp!1846758 () Bool)

(declare-fun tp!1846759 () Bool)

(assert (=> b!6736159 (= e!4069118 (and tp!1846758 tp!1846759))))

(assert (=> b!6735411 (= tp!1846652 e!4069118)))

(assert (= (and b!6735411 ((_ is Cons!65864) (exprs!6447 (h!72314 zl!343)))) b!6736159))

(declare-fun b!6736161 () Bool)

(declare-fun e!4069119 () Bool)

(declare-fun tp!1846764 () Bool)

(declare-fun tp!1846761 () Bool)

(assert (=> b!6736161 (= e!4069119 (and tp!1846764 tp!1846761))))

(assert (=> b!6735391 (= tp!1846647 e!4069119)))

(declare-fun b!6736160 () Bool)

(assert (=> b!6736160 (= e!4069119 tp_is_empty!42379)))

(declare-fun b!6736163 () Bool)

(declare-fun tp!1846760 () Bool)

(declare-fun tp!1846762 () Bool)

(assert (=> b!6736163 (= e!4069119 (and tp!1846760 tp!1846762))))

(declare-fun b!6736162 () Bool)

(declare-fun tp!1846763 () Bool)

(assert (=> b!6736162 (= e!4069119 tp!1846763)))

(assert (= (and b!6735391 ((_ is ElementMatch!16563) (regOne!33638 r!7292))) b!6736160))

(assert (= (and b!6735391 ((_ is Concat!25408) (regOne!33638 r!7292))) b!6736161))

(assert (= (and b!6735391 ((_ is Star!16563) (regOne!33638 r!7292))) b!6736162))

(assert (= (and b!6735391 ((_ is Union!16563) (regOne!33638 r!7292))) b!6736163))

(declare-fun b!6736165 () Bool)

(declare-fun e!4069120 () Bool)

(declare-fun tp!1846769 () Bool)

(declare-fun tp!1846766 () Bool)

(assert (=> b!6736165 (= e!4069120 (and tp!1846769 tp!1846766))))

(assert (=> b!6735391 (= tp!1846648 e!4069120)))

(declare-fun b!6736164 () Bool)

(assert (=> b!6736164 (= e!4069120 tp_is_empty!42379)))

(declare-fun b!6736167 () Bool)

(declare-fun tp!1846765 () Bool)

(declare-fun tp!1846767 () Bool)

(assert (=> b!6736167 (= e!4069120 (and tp!1846765 tp!1846767))))

(declare-fun b!6736166 () Bool)

(declare-fun tp!1846768 () Bool)

(assert (=> b!6736166 (= e!4069120 tp!1846768)))

(assert (= (and b!6735391 ((_ is ElementMatch!16563) (regTwo!33638 r!7292))) b!6736164))

(assert (= (and b!6735391 ((_ is Concat!25408) (regTwo!33638 r!7292))) b!6736165))

(assert (= (and b!6735391 ((_ is Star!16563) (regTwo!33638 r!7292))) b!6736166))

(assert (= (and b!6735391 ((_ is Union!16563) (regTwo!33638 r!7292))) b!6736167))

(declare-fun b_lambda!253623 () Bool)

(assert (= b_lambda!253617 (or b!6735413 b_lambda!253623)))

(declare-fun bs!1791228 () Bool)

(declare-fun d!2116399 () Bool)

(assert (= bs!1791228 (and d!2116399 b!6735413)))

(assert (=> bs!1791228 (= (dynLambda!26276 lambda!378189 (h!72314 zl!343)) (derivationStepZipperUp!1717 (h!72314 zl!343) (h!72313 s!2326)))))

(assert (=> bs!1791228 m!7493038))

(assert (=> d!2116349 d!2116399))

(declare-fun b_lambda!253625 () Bool)

(assert (= b_lambda!253615 (or b!6735413 b_lambda!253625)))

(declare-fun bs!1791229 () Bool)

(declare-fun d!2116401 () Bool)

(assert (= bs!1791229 (and d!2116401 b!6735413)))

(assert (=> bs!1791229 (= (dynLambda!26276 lambda!378189 lt!2438361) (derivationStepZipperUp!1717 lt!2438361 (h!72313 s!2326)))))

(assert (=> bs!1791229 m!7493024))

(assert (=> d!2116327 d!2116401))

(check-sat (not b!6735637) (not b!6736109) (not d!2116393) (not b!6735903) (not d!2116295) (not b!6735865) (not d!2116373) (not b!6736149) (not d!2116387) (not b!6735506) (not b!6735856) (not d!2116327) (not bs!1791229) (not bm!608636) (not b!6735781) (not b_lambda!253623) (not d!2116335) (not b!6736113) (not d!2116377) (not b!6736156) (not d!2116337) (not d!2116247) (not bm!608600) (not bm!608601) (not b!6736125) (not b!6735595) (not d!2116363) (not b!6736161) (not d!2116355) (not d!2116251) (not b!6735934) (not d!2116361) (not b!6735859) (not bm!608622) (not bm!608618) (not b!6736131) (not d!2116345) (not b!6735777) (not bm!608635) (not b!6735864) (not b!6735907) (not d!2116285) (not b!6736136) (not b_lambda!253625) (not d!2116349) (not b!6736067) (not b!6736036) (not b!6735855) (not setNonEmpty!45971) (not b!6736069) (not b!6736061) (not b!6736166) (not b!6736162) (not b!6736032) (not bm!608617) (not b!6735872) (not b!6735936) (not bm!608634) (not bm!608568) (not d!2116385) (not b!6736126) (not b!6736157) (not b!6735937) (not bs!1791228) (not b!6736152) (not bm!608599) (not d!2116343) (not b!6736063) (not d!2116375) (not d!2116383) (not b!6736108) (not b!6736064) (not d!2116317) (not b!6736034) (not b!6736070) (not b!6735857) (not bm!608606) (not bm!608544) (not b!6735861) (not b!6736068) (not b!6736167) (not b!6736035) (not b!6736148) (not b!6735594) (not b!6735601) (not b!6736163) (not b!6736030) (not b!6736153) (not d!2116367) (not b!6735935) (not b!6735503) (not b!6736159) (not bm!608619) (not b!6736118) (not b!6736100) (not b!6735869) (not bm!608615) (not b!6736165) (not b!6736150) (not b!6736028) (not b!6736075) (not d!2116381) (not d!2116267) (not bm!608543) (not d!2116357) tp_is_empty!42379 (not b!6735599) (not b!6736158) (not b!6736154) (not b!6735726) (not b!6735858) (not d!2116365) (not bm!608632) (not b!6735597) (not d!2116389) (not b!6735603) (not b!6736104))
(check-sat)
(get-model)

(declare-fun d!2116403 () Bool)

(declare-fun nullableFct!2463 (Regex!16563) Bool)

(assert (=> d!2116403 (= (nullable!6550 (h!72312 (exprs!6447 (h!72314 zl!343)))) (nullableFct!2463 (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun bs!1791230 () Bool)

(assert (= bs!1791230 d!2116403))

(declare-fun m!7493532 () Bool)

(assert (=> bs!1791230 m!7493532))

(assert (=> b!6735869 d!2116403))

(declare-fun d!2116405 () Bool)

(assert (=> d!2116405 (= (isEmpty!38201 (t!379682 s!2326)) ((_ is Nil!65865) (t!379682 s!2326)))))

(assert (=> d!2116361 d!2116405))

(declare-fun d!2116407 () Bool)

(assert (=> d!2116407 (= (isEmptyLang!1937 lt!2438463) ((_ is EmptyLang!16563) lt!2438463))))

(assert (=> b!6736064 d!2116407))

(declare-fun d!2116409 () Bool)

(assert (=> d!2116409 (= ($colon$colon!2380 (exprs!6447 (Context!11895 Nil!65864)) (ite (or c!1249278 c!1249277) (regTwo!33638 r!7292) r!7292)) (Cons!65864 (ite (or c!1249278 c!1249277) (regTwo!33638 r!7292) r!7292) (exprs!6447 (Context!11895 Nil!65864))))))

(assert (=> bm!608618 d!2116409))

(declare-fun bs!1791231 () Bool)

(declare-fun d!2116411 () Bool)

(assert (= bs!1791231 (and d!2116411 d!2116335)))

(declare-fun lambda!378268 () Int)

(assert (=> bs!1791231 (= lambda!378268 lambda!378241)))

(declare-fun bs!1791232 () Bool)

(assert (= bs!1791232 (and d!2116411 d!2116251)))

(assert (=> bs!1791232 (= lambda!378268 lambda!378199)))

(declare-fun bs!1791233 () Bool)

(assert (= bs!1791233 (and d!2116411 d!2116389)))

(assert (=> bs!1791233 (= lambda!378268 lambda!378266)))

(declare-fun bs!1791234 () Bool)

(assert (= bs!1791234 (and d!2116411 d!2116393)))

(assert (=> bs!1791234 (= lambda!378268 lambda!378267)))

(declare-fun bs!1791235 () Bool)

(assert (= bs!1791235 (and d!2116411 d!2116247)))

(assert (=> bs!1791235 (= lambda!378268 lambda!378198)))

(declare-fun bs!1791236 () Bool)

(assert (= bs!1791236 (and d!2116411 d!2116387)))

(assert (=> bs!1791236 (= lambda!378268 lambda!378263)))

(declare-fun b!6736168 () Bool)

(declare-fun e!4069124 () Bool)

(declare-fun lt!2438467 () Regex!16563)

(assert (=> b!6736168 (= e!4069124 (= lt!2438467 (head!13554 (t!379681 (unfocusZipperList!1984 zl!343)))))))

(declare-fun b!6736169 () Bool)

(declare-fun e!4069126 () Regex!16563)

(declare-fun e!4069122 () Regex!16563)

(assert (=> b!6736169 (= e!4069126 e!4069122)))

(declare-fun c!1249333 () Bool)

(assert (=> b!6736169 (= c!1249333 ((_ is Cons!65864) (t!379681 (unfocusZipperList!1984 zl!343))))))

(declare-fun b!6736170 () Bool)

(assert (=> b!6736170 (= e!4069124 (isUnion!1367 lt!2438467))))

(declare-fun b!6736171 () Bool)

(declare-fun e!4069125 () Bool)

(assert (=> b!6736171 (= e!4069125 (isEmptyLang!1937 lt!2438467))))

(declare-fun b!6736172 () Bool)

(assert (=> b!6736172 (= e!4069122 EmptyLang!16563)))

(declare-fun b!6736173 () Bool)

(assert (=> b!6736173 (= e!4069126 (h!72312 (t!379681 (unfocusZipperList!1984 zl!343))))))

(declare-fun b!6736174 () Bool)

(assert (=> b!6736174 (= e!4069125 e!4069124)))

(declare-fun c!1249332 () Bool)

(assert (=> b!6736174 (= c!1249332 (isEmpty!38205 (tail!12639 (t!379681 (unfocusZipperList!1984 zl!343)))))))

(declare-fun e!4069121 () Bool)

(assert (=> d!2116411 e!4069121))

(declare-fun res!2755620 () Bool)

(assert (=> d!2116411 (=> (not res!2755620) (not e!4069121))))

(assert (=> d!2116411 (= res!2755620 (validRegex!8299 lt!2438467))))

(assert (=> d!2116411 (= lt!2438467 e!4069126)))

(declare-fun c!1249331 () Bool)

(declare-fun e!4069123 () Bool)

(assert (=> d!2116411 (= c!1249331 e!4069123)))

(declare-fun res!2755619 () Bool)

(assert (=> d!2116411 (=> (not res!2755619) (not e!4069123))))

(assert (=> d!2116411 (= res!2755619 ((_ is Cons!65864) (t!379681 (unfocusZipperList!1984 zl!343))))))

(assert (=> d!2116411 (forall!15763 (t!379681 (unfocusZipperList!1984 zl!343)) lambda!378268)))

(assert (=> d!2116411 (= (generalisedUnion!2407 (t!379681 (unfocusZipperList!1984 zl!343))) lt!2438467)))

(declare-fun b!6736175 () Bool)

(assert (=> b!6736175 (= e!4069122 (Union!16563 (h!72312 (t!379681 (unfocusZipperList!1984 zl!343))) (generalisedUnion!2407 (t!379681 (t!379681 (unfocusZipperList!1984 zl!343))))))))

(declare-fun b!6736176 () Bool)

(assert (=> b!6736176 (= e!4069123 (isEmpty!38205 (t!379681 (t!379681 (unfocusZipperList!1984 zl!343)))))))

(declare-fun b!6736177 () Bool)

(assert (=> b!6736177 (= e!4069121 e!4069125)))

(declare-fun c!1249330 () Bool)

(assert (=> b!6736177 (= c!1249330 (isEmpty!38205 (t!379681 (unfocusZipperList!1984 zl!343))))))

(assert (= (and d!2116411 res!2755619) b!6736176))

(assert (= (and d!2116411 c!1249331) b!6736173))

(assert (= (and d!2116411 (not c!1249331)) b!6736169))

(assert (= (and b!6736169 c!1249333) b!6736175))

(assert (= (and b!6736169 (not c!1249333)) b!6736172))

(assert (= (and d!2116411 res!2755620) b!6736177))

(assert (= (and b!6736177 c!1249330) b!6736171))

(assert (= (and b!6736177 (not c!1249330)) b!6736174))

(assert (= (and b!6736174 c!1249332) b!6736168))

(assert (= (and b!6736174 (not c!1249332)) b!6736170))

(assert (=> b!6736177 m!7493494))

(declare-fun m!7493534 () Bool)

(assert (=> b!6736168 m!7493534))

(declare-fun m!7493536 () Bool)

(assert (=> d!2116411 m!7493536))

(declare-fun m!7493538 () Bool)

(assert (=> d!2116411 m!7493538))

(declare-fun m!7493540 () Bool)

(assert (=> b!6736170 m!7493540))

(declare-fun m!7493542 () Bool)

(assert (=> b!6736176 m!7493542))

(declare-fun m!7493544 () Bool)

(assert (=> b!6736174 m!7493544))

(assert (=> b!6736174 m!7493544))

(declare-fun m!7493546 () Bool)

(assert (=> b!6736174 m!7493546))

(declare-fun m!7493548 () Bool)

(assert (=> b!6736171 m!7493548))

(declare-fun m!7493550 () Bool)

(assert (=> b!6736175 m!7493550))

(assert (=> b!6736068 d!2116411))

(declare-fun bs!1791237 () Bool)

(declare-fun d!2116413 () Bool)

(assert (= bs!1791237 (and d!2116413 d!2116335)))

(declare-fun lambda!378269 () Int)

(assert (=> bs!1791237 (= lambda!378269 lambda!378241)))

(declare-fun bs!1791238 () Bool)

(assert (= bs!1791238 (and d!2116413 d!2116251)))

(assert (=> bs!1791238 (= lambda!378269 lambda!378199)))

(declare-fun bs!1791239 () Bool)

(assert (= bs!1791239 (and d!2116413 d!2116389)))

(assert (=> bs!1791239 (= lambda!378269 lambda!378266)))

(declare-fun bs!1791240 () Bool)

(assert (= bs!1791240 (and d!2116413 d!2116393)))

(assert (=> bs!1791240 (= lambda!378269 lambda!378267)))

(declare-fun bs!1791241 () Bool)

(assert (= bs!1791241 (and d!2116413 d!2116247)))

(assert (=> bs!1791241 (= lambda!378269 lambda!378198)))

(declare-fun bs!1791242 () Bool)

(assert (= bs!1791242 (and d!2116413 d!2116387)))

(assert (=> bs!1791242 (= lambda!378269 lambda!378263)))

(declare-fun bs!1791243 () Bool)

(assert (= bs!1791243 (and d!2116413 d!2116411)))

(assert (=> bs!1791243 (= lambda!378269 lambda!378268)))

(declare-fun b!6736178 () Bool)

(declare-fun e!4069128 () Bool)

(declare-fun e!4069127 () Bool)

(assert (=> b!6736178 (= e!4069128 e!4069127)))

(declare-fun c!1249337 () Bool)

(assert (=> b!6736178 (= c!1249337 (isEmpty!38205 (t!379681 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6736179 () Bool)

(declare-fun e!4069132 () Bool)

(assert (=> b!6736179 (= e!4069132 (isEmpty!38205 (t!379681 (t!379681 (exprs!6447 (h!72314 zl!343))))))))

(declare-fun b!6736180 () Bool)

(declare-fun e!4069130 () Bool)

(declare-fun lt!2438468 () Regex!16563)

(assert (=> b!6736180 (= e!4069130 (isConcat!1452 lt!2438468))))

(declare-fun b!6736182 () Bool)

(assert (=> b!6736182 (= e!4069130 (= lt!2438468 (head!13554 (t!379681 (exprs!6447 (h!72314 zl!343))))))))

(declare-fun b!6736183 () Bool)

(declare-fun e!4069131 () Regex!16563)

(assert (=> b!6736183 (= e!4069131 EmptyExpr!16563)))

(declare-fun b!6736184 () Bool)

(assert (=> b!6736184 (= e!4069127 (isEmptyExpr!1929 lt!2438468))))

(declare-fun b!6736185 () Bool)

(declare-fun e!4069129 () Regex!16563)

(assert (=> b!6736185 (= e!4069129 (h!72312 (t!379681 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6736181 () Bool)

(assert (=> b!6736181 (= e!4069131 (Concat!25408 (h!72312 (t!379681 (exprs!6447 (h!72314 zl!343)))) (generalisedConcat!2160 (t!379681 (t!379681 (exprs!6447 (h!72314 zl!343)))))))))

(assert (=> d!2116413 e!4069128))

(declare-fun res!2755622 () Bool)

(assert (=> d!2116413 (=> (not res!2755622) (not e!4069128))))

(assert (=> d!2116413 (= res!2755622 (validRegex!8299 lt!2438468))))

(assert (=> d!2116413 (= lt!2438468 e!4069129)))

(declare-fun c!1249334 () Bool)

(assert (=> d!2116413 (= c!1249334 e!4069132)))

(declare-fun res!2755621 () Bool)

(assert (=> d!2116413 (=> (not res!2755621) (not e!4069132))))

(assert (=> d!2116413 (= res!2755621 ((_ is Cons!65864) (t!379681 (exprs!6447 (h!72314 zl!343)))))))

(assert (=> d!2116413 (forall!15763 (t!379681 (exprs!6447 (h!72314 zl!343))) lambda!378269)))

(assert (=> d!2116413 (= (generalisedConcat!2160 (t!379681 (exprs!6447 (h!72314 zl!343)))) lt!2438468)))

(declare-fun b!6736186 () Bool)

(assert (=> b!6736186 (= e!4069129 e!4069131)))

(declare-fun c!1249336 () Bool)

(assert (=> b!6736186 (= c!1249336 ((_ is Cons!65864) (t!379681 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6736187 () Bool)

(assert (=> b!6736187 (= e!4069127 e!4069130)))

(declare-fun c!1249335 () Bool)

(assert (=> b!6736187 (= c!1249335 (isEmpty!38205 (tail!12639 (t!379681 (exprs!6447 (h!72314 zl!343))))))))

(assert (= (and d!2116413 res!2755621) b!6736179))

(assert (= (and d!2116413 c!1249334) b!6736185))

(assert (= (and d!2116413 (not c!1249334)) b!6736186))

(assert (= (and b!6736186 c!1249336) b!6736181))

(assert (= (and b!6736186 (not c!1249336)) b!6736183))

(assert (= (and d!2116413 res!2755622) b!6736178))

(assert (= (and b!6736178 c!1249337) b!6736184))

(assert (= (and b!6736178 (not c!1249337)) b!6736187))

(assert (= (and b!6736187 c!1249335) b!6736182))

(assert (= (and b!6736187 (not c!1249335)) b!6736180))

(declare-fun m!7493552 () Bool)

(assert (=> b!6736184 m!7493552))

(declare-fun m!7493554 () Bool)

(assert (=> d!2116413 m!7493554))

(declare-fun m!7493556 () Bool)

(assert (=> d!2116413 m!7493556))

(declare-fun m!7493558 () Bool)

(assert (=> b!6736182 m!7493558))

(declare-fun m!7493560 () Bool)

(assert (=> b!6736181 m!7493560))

(assert (=> b!6736178 m!7493350))

(declare-fun m!7493562 () Bool)

(assert (=> b!6736179 m!7493562))

(declare-fun m!7493564 () Bool)

(assert (=> b!6736187 m!7493564))

(assert (=> b!6736187 m!7493564))

(declare-fun m!7493566 () Bool)

(assert (=> b!6736187 m!7493566))

(declare-fun m!7493568 () Bool)

(assert (=> b!6736180 m!7493568))

(assert (=> b!6735858 d!2116413))

(declare-fun b!6736188 () Bool)

(declare-fun e!4069137 () (InoxSet Context!11894))

(declare-fun e!4069138 () (InoxSet Context!11894))

(assert (=> b!6736188 (= e!4069137 e!4069138)))

(declare-fun c!1249342 () Bool)

(assert (=> b!6736188 (= c!1249342 ((_ is Union!16563) (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))))))

(declare-fun bm!608637 () Bool)

(declare-fun call!608646 () List!65988)

(declare-fun call!608643 () List!65988)

(assert (=> bm!608637 (= call!608646 call!608643)))

(declare-fun bm!608638 () Bool)

(declare-fun call!608645 () (InoxSet Context!11894))

(assert (=> bm!608638 (= call!608645 (derivationStepZipperDown!1791 (ite c!1249342 (regTwo!33639 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))) (regOne!33638 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292)))) (ite c!1249342 (ite c!1249281 (Context!11895 Nil!65864) (Context!11895 call!608622)) (Context!11895 call!608643)) (h!72313 s!2326)))))

(declare-fun b!6736189 () Bool)

(declare-fun e!4069133 () (InoxSet Context!11894))

(declare-fun call!608644 () (InoxSet Context!11894))

(assert (=> b!6736189 (= e!4069133 call!608644)))

(declare-fun c!1249339 () Bool)

(declare-fun c!1249338 () Bool)

(declare-fun bm!608639 () Bool)

(assert (=> bm!608639 (= call!608643 ($colon$colon!2380 (exprs!6447 (ite c!1249281 (Context!11895 Nil!65864) (Context!11895 call!608622))) (ite (or c!1249339 c!1249338) (regTwo!33638 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))) (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292)))))))

(declare-fun b!6736190 () Bool)

(declare-fun e!4069134 () Bool)

(assert (=> b!6736190 (= e!4069134 (nullable!6550 (regOne!33638 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292)))))))

(declare-fun bm!608640 () Bool)

(declare-fun call!608647 () (InoxSet Context!11894))

(assert (=> bm!608640 (= call!608647 (derivationStepZipperDown!1791 (ite c!1249342 (regOne!33639 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))) (ite c!1249339 (regTwo!33638 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))) (ite c!1249338 (regOne!33638 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))) (reg!16892 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292)))))) (ite (or c!1249342 c!1249339) (ite c!1249281 (Context!11895 Nil!65864) (Context!11895 call!608622)) (Context!11895 call!608646)) (h!72313 s!2326)))))

(declare-fun b!6736191 () Bool)

(declare-fun c!1249341 () Bool)

(assert (=> b!6736191 (= c!1249341 ((_ is Star!16563) (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))))))

(declare-fun e!4069136 () (InoxSet Context!11894))

(assert (=> b!6736191 (= e!4069136 e!4069133)))

(declare-fun b!6736192 () Bool)

(assert (=> b!6736192 (= e!4069136 call!608644)))

(declare-fun b!6736193 () Bool)

(declare-fun e!4069135 () (InoxSet Context!11894))

(declare-fun call!608642 () (InoxSet Context!11894))

(assert (=> b!6736193 (= e!4069135 ((_ map or) call!608645 call!608642))))

(declare-fun b!6736194 () Bool)

(assert (=> b!6736194 (= c!1249339 e!4069134)))

(declare-fun res!2755623 () Bool)

(assert (=> b!6736194 (=> (not res!2755623) (not e!4069134))))

(assert (=> b!6736194 (= res!2755623 ((_ is Concat!25408) (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))))))

(assert (=> b!6736194 (= e!4069138 e!4069135)))

(declare-fun bm!608641 () Bool)

(assert (=> bm!608641 (= call!608644 call!608642)))

(declare-fun b!6736196 () Bool)

(assert (=> b!6736196 (= e!4069135 e!4069136)))

(assert (=> b!6736196 (= c!1249338 ((_ is Concat!25408) (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))))))

(declare-fun bm!608642 () Bool)

(assert (=> bm!608642 (= call!608642 call!608647)))

(declare-fun b!6736197 () Bool)

(assert (=> b!6736197 (= e!4069133 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736198 () Bool)

(assert (=> b!6736198 (= e!4069138 ((_ map or) call!608647 call!608645))))

(declare-fun d!2116415 () Bool)

(declare-fun c!1249340 () Bool)

(assert (=> d!2116415 (= c!1249340 (and ((_ is ElementMatch!16563) (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))) (= (c!1249129 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292))) (h!72313 s!2326))))))

(assert (=> d!2116415 (= (derivationStepZipperDown!1791 (ite c!1249281 (regTwo!33639 r!7292) (regOne!33638 r!7292)) (ite c!1249281 (Context!11895 Nil!65864) (Context!11895 call!608622)) (h!72313 s!2326)) e!4069137)))

(declare-fun b!6736195 () Bool)

(assert (=> b!6736195 (= e!4069137 (store ((as const (Array Context!11894 Bool)) false) (ite c!1249281 (Context!11895 Nil!65864) (Context!11895 call!608622)) true))))

(assert (= (and d!2116415 c!1249340) b!6736195))

(assert (= (and d!2116415 (not c!1249340)) b!6736188))

(assert (= (and b!6736188 c!1249342) b!6736198))

(assert (= (and b!6736188 (not c!1249342)) b!6736194))

(assert (= (and b!6736194 res!2755623) b!6736190))

(assert (= (and b!6736194 c!1249339) b!6736193))

(assert (= (and b!6736194 (not c!1249339)) b!6736196))

(assert (= (and b!6736196 c!1249338) b!6736192))

(assert (= (and b!6736196 (not c!1249338)) b!6736191))

(assert (= (and b!6736191 c!1249341) b!6736189))

(assert (= (and b!6736191 (not c!1249341)) b!6736197))

(assert (= (or b!6736192 b!6736189) bm!608637))

(assert (= (or b!6736192 b!6736189) bm!608641))

(assert (= (or b!6736193 bm!608637) bm!608639))

(assert (= (or b!6736193 bm!608641) bm!608642))

(assert (= (or b!6736198 b!6736193) bm!608638))

(assert (= (or b!6736198 bm!608642) bm!608640))

(declare-fun m!7493570 () Bool)

(assert (=> b!6736190 m!7493570))

(declare-fun m!7493572 () Bool)

(assert (=> bm!608640 m!7493572))

(declare-fun m!7493574 () Bool)

(assert (=> bm!608638 m!7493574))

(declare-fun m!7493576 () Bool)

(assert (=> b!6736195 m!7493576))

(declare-fun m!7493578 () Bool)

(assert (=> bm!608639 m!7493578))

(assert (=> bm!608617 d!2116415))

(declare-fun b!6736199 () Bool)

(declare-fun e!4069143 () (InoxSet Context!11894))

(declare-fun e!4069144 () (InoxSet Context!11894))

(assert (=> b!6736199 (= e!4069143 e!4069144)))

(declare-fun c!1249347 () Bool)

(assert (=> b!6736199 (= c!1249347 ((_ is Union!16563) (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))

(declare-fun bm!608643 () Bool)

(declare-fun call!608652 () List!65988)

(declare-fun call!608649 () List!65988)

(assert (=> bm!608643 (= call!608652 call!608649)))

(declare-fun call!608651 () (InoxSet Context!11894))

(declare-fun bm!608644 () Bool)

(assert (=> bm!608644 (= call!608651 (derivationStepZipperDown!1791 (ite c!1249347 (regTwo!33639 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (regOne!33638 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))) (ite c!1249347 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (Context!11895 call!608649)) (h!72313 s!2326)))))

(declare-fun b!6736200 () Bool)

(declare-fun e!4069139 () (InoxSet Context!11894))

(declare-fun call!608650 () (InoxSet Context!11894))

(assert (=> b!6736200 (= e!4069139 call!608650)))

(declare-fun bm!608645 () Bool)

(declare-fun c!1249343 () Bool)

(declare-fun c!1249344 () Bool)

(assert (=> bm!608645 (= call!608649 ($colon$colon!2380 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))) (ite (or c!1249344 c!1249343) (regTwo!33638 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))))

(declare-fun b!6736201 () Bool)

(declare-fun e!4069140 () Bool)

(assert (=> b!6736201 (= e!4069140 (nullable!6550 (regOne!33638 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))))

(declare-fun call!608653 () (InoxSet Context!11894))

(declare-fun bm!608646 () Bool)

(assert (=> bm!608646 (= call!608653 (derivationStepZipperDown!1791 (ite c!1249347 (regOne!33639 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (ite c!1249344 (regTwo!33638 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (ite c!1249343 (regOne!33638 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (reg!16892 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))) (ite (or c!1249347 c!1249344) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (Context!11895 call!608652)) (h!72313 s!2326)))))

(declare-fun b!6736202 () Bool)

(declare-fun c!1249346 () Bool)

(assert (=> b!6736202 (= c!1249346 ((_ is Star!16563) (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))

(declare-fun e!4069142 () (InoxSet Context!11894))

(assert (=> b!6736202 (= e!4069142 e!4069139)))

(declare-fun b!6736203 () Bool)

(assert (=> b!6736203 (= e!4069142 call!608650)))

(declare-fun b!6736204 () Bool)

(declare-fun e!4069141 () (InoxSet Context!11894))

(declare-fun call!608648 () (InoxSet Context!11894))

(assert (=> b!6736204 (= e!4069141 ((_ map or) call!608651 call!608648))))

(declare-fun b!6736205 () Bool)

(assert (=> b!6736205 (= c!1249344 e!4069140)))

(declare-fun res!2755624 () Bool)

(assert (=> b!6736205 (=> (not res!2755624) (not e!4069140))))

(assert (=> b!6736205 (= res!2755624 ((_ is Concat!25408) (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))

(assert (=> b!6736205 (= e!4069144 e!4069141)))

(declare-fun bm!608647 () Bool)

(assert (=> bm!608647 (= call!608650 call!608648)))

(declare-fun b!6736207 () Bool)

(assert (=> b!6736207 (= e!4069141 e!4069142)))

(assert (=> b!6736207 (= c!1249343 ((_ is Concat!25408) (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))

(declare-fun bm!608648 () Bool)

(assert (=> bm!608648 (= call!608648 call!608653)))

(declare-fun b!6736208 () Bool)

(assert (=> b!6736208 (= e!4069139 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736209 () Bool)

(assert (=> b!6736209 (= e!4069144 ((_ map or) call!608653 call!608651))))

(declare-fun d!2116417 () Bool)

(declare-fun c!1249345 () Bool)

(assert (=> d!2116417 (= c!1249345 (and ((_ is ElementMatch!16563) (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (= (c!1249129 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (h!72313 s!2326))))))

(assert (=> d!2116417 (= (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (h!72313 s!2326)) e!4069143)))

(declare-fun b!6736206 () Bool)

(assert (=> b!6736206 (= e!4069143 (store ((as const (Array Context!11894 Bool)) false) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) true))))

(assert (= (and d!2116417 c!1249345) b!6736206))

(assert (= (and d!2116417 (not c!1249345)) b!6736199))

(assert (= (and b!6736199 c!1249347) b!6736209))

(assert (= (and b!6736199 (not c!1249347)) b!6736205))

(assert (= (and b!6736205 res!2755624) b!6736201))

(assert (= (and b!6736205 c!1249344) b!6736204))

(assert (= (and b!6736205 (not c!1249344)) b!6736207))

(assert (= (and b!6736207 c!1249343) b!6736203))

(assert (= (and b!6736207 (not c!1249343)) b!6736202))

(assert (= (and b!6736202 c!1249346) b!6736200))

(assert (= (and b!6736202 (not c!1249346)) b!6736208))

(assert (= (or b!6736203 b!6736200) bm!608643))

(assert (= (or b!6736203 b!6736200) bm!608647))

(assert (= (or b!6736204 bm!608643) bm!608645))

(assert (= (or b!6736204 bm!608647) bm!608648))

(assert (= (or b!6736209 b!6736204) bm!608644))

(assert (= (or b!6736209 bm!608648) bm!608646))

(declare-fun m!7493580 () Bool)

(assert (=> b!6736201 m!7493580))

(declare-fun m!7493582 () Bool)

(assert (=> bm!608646 m!7493582))

(declare-fun m!7493584 () Bool)

(assert (=> bm!608644 m!7493584))

(declare-fun m!7493586 () Bool)

(assert (=> b!6736206 m!7493586))

(declare-fun m!7493588 () Bool)

(assert (=> bm!608645 m!7493588))

(assert (=> bm!608622 d!2116417))

(declare-fun bs!1791244 () Bool)

(declare-fun b!6736211 () Bool)

(assert (= bs!1791244 (and b!6736211 b!6735399)))

(declare-fun lambda!378270 () Int)

(assert (=> bs!1791244 (not (= lambda!378270 lambda!378188))))

(declare-fun bs!1791245 () Bool)

(assert (= bs!1791245 (and b!6736211 d!2116367)))

(assert (=> bs!1791245 (not (= lambda!378270 lambda!378251))))

(declare-fun bs!1791246 () Bool)

(assert (= bs!1791246 (and b!6736211 d!2116373)))

(assert (=> bs!1791246 (= (and (= (reg!16892 (regOne!33639 r!7292)) (reg!16892 r!7292)) (= (regOne!33639 r!7292) (Star!16563 (reg!16892 r!7292)))) (= lambda!378270 lambda!378257))))

(assert (=> bs!1791246 (not (= lambda!378270 lambda!378256))))

(declare-fun bs!1791247 () Bool)

(assert (= bs!1791247 (and b!6736211 d!2116385)))

(assert (=> bs!1791247 (not (= lambda!378270 lambda!378260))))

(assert (=> bs!1791244 (not (= lambda!378270 lambda!378186))))

(declare-fun bs!1791248 () Bool)

(assert (= bs!1791248 (and b!6736211 b!6735505)))

(assert (=> bs!1791248 (not (= lambda!378270 lambda!378213))))

(assert (=> bs!1791244 (= (and (= (reg!16892 (regOne!33639 r!7292)) (reg!16892 r!7292)) (= (regOne!33639 r!7292) r!7292)) (= lambda!378270 lambda!378187))))

(assert (=> bs!1791245 (not (= lambda!378270 lambda!378250))))

(declare-fun bs!1791249 () Bool)

(assert (= bs!1791249 (and b!6736211 b!6735500)))

(assert (=> bs!1791249 (= (and (= (reg!16892 (regOne!33639 r!7292)) (reg!16892 r!7292)) (= (regOne!33639 r!7292) r!7292)) (= lambda!378270 lambda!378210))))

(assert (=> b!6736211 true))

(assert (=> b!6736211 true))

(declare-fun bs!1791250 () Bool)

(declare-fun b!6736216 () Bool)

(assert (= bs!1791250 (and b!6736216 b!6735399)))

(declare-fun lambda!378271 () Int)

(assert (=> bs!1791250 (= (and (= (regOne!33638 (regOne!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33638 (regOne!33639 r!7292)) r!7292)) (= lambda!378271 lambda!378188))))

(declare-fun bs!1791251 () Bool)

(assert (= bs!1791251 (and b!6736216 d!2116367)))

(assert (=> bs!1791251 (= (and (= (regOne!33638 (regOne!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33638 (regOne!33639 r!7292)) r!7292)) (= lambda!378271 lambda!378251))))

(declare-fun bs!1791252 () Bool)

(assert (= bs!1791252 (and b!6736216 d!2116373)))

(assert (=> bs!1791252 (not (= lambda!378271 lambda!378257))))

(declare-fun bs!1791253 () Bool)

(assert (= bs!1791253 (and b!6736216 b!6736211)))

(assert (=> bs!1791253 (not (= lambda!378271 lambda!378270))))

(assert (=> bs!1791252 (not (= lambda!378271 lambda!378256))))

(declare-fun bs!1791254 () Bool)

(assert (= bs!1791254 (and b!6736216 d!2116385)))

(assert (=> bs!1791254 (not (= lambda!378271 lambda!378260))))

(assert (=> bs!1791250 (not (= lambda!378271 lambda!378186))))

(declare-fun bs!1791255 () Bool)

(assert (= bs!1791255 (and b!6736216 b!6735505)))

(assert (=> bs!1791255 (= (and (= (regOne!33638 (regOne!33639 r!7292)) (regOne!33638 r!7292)) (= (regTwo!33638 (regOne!33639 r!7292)) (regTwo!33638 r!7292))) (= lambda!378271 lambda!378213))))

(assert (=> bs!1791250 (not (= lambda!378271 lambda!378187))))

(assert (=> bs!1791251 (not (= lambda!378271 lambda!378250))))

(declare-fun bs!1791256 () Bool)

(assert (= bs!1791256 (and b!6736216 b!6735500)))

(assert (=> bs!1791256 (not (= lambda!378271 lambda!378210))))

(assert (=> b!6736216 true))

(assert (=> b!6736216 true))

(declare-fun b!6736210 () Bool)

(declare-fun c!1249349 () Bool)

(assert (=> b!6736210 (= c!1249349 ((_ is Union!16563) (regOne!33639 r!7292)))))

(declare-fun e!4069146 () Bool)

(declare-fun e!4069149 () Bool)

(assert (=> b!6736210 (= e!4069146 e!4069149)))

(declare-fun d!2116419 () Bool)

(declare-fun c!1249348 () Bool)

(assert (=> d!2116419 (= c!1249348 ((_ is EmptyExpr!16563) (regOne!33639 r!7292)))))

(declare-fun e!4069148 () Bool)

(assert (=> d!2116419 (= (matchRSpec!3664 (regOne!33639 r!7292) s!2326) e!4069148)))

(declare-fun e!4069150 () Bool)

(declare-fun call!608655 () Bool)

(assert (=> b!6736211 (= e!4069150 call!608655)))

(declare-fun b!6736212 () Bool)

(declare-fun e!4069147 () Bool)

(assert (=> b!6736212 (= e!4069148 e!4069147)))

(declare-fun res!2755627 () Bool)

(assert (=> b!6736212 (= res!2755627 (not ((_ is EmptyLang!16563) (regOne!33639 r!7292))))))

(assert (=> b!6736212 (=> (not res!2755627) (not e!4069147))))

(declare-fun b!6736213 () Bool)

(declare-fun e!4069151 () Bool)

(assert (=> b!6736213 (= e!4069149 e!4069151)))

(declare-fun c!1249351 () Bool)

(assert (=> b!6736213 (= c!1249351 ((_ is Star!16563) (regOne!33639 r!7292)))))

(declare-fun b!6736214 () Bool)

(declare-fun e!4069145 () Bool)

(assert (=> b!6736214 (= e!4069149 e!4069145)))

(declare-fun res!2755625 () Bool)

(assert (=> b!6736214 (= res!2755625 (matchRSpec!3664 (regOne!33639 (regOne!33639 r!7292)) s!2326))))

(assert (=> b!6736214 (=> res!2755625 e!4069145)))

(declare-fun b!6736215 () Bool)

(assert (=> b!6736215 (= e!4069146 (= s!2326 (Cons!65865 (c!1249129 (regOne!33639 r!7292)) Nil!65865)))))

(declare-fun bm!608649 () Bool)

(assert (=> bm!608649 (= call!608655 (Exists!3631 (ite c!1249351 lambda!378270 lambda!378271)))))

(declare-fun bm!608650 () Bool)

(declare-fun call!608654 () Bool)

(assert (=> bm!608650 (= call!608654 (isEmpty!38201 s!2326))))

(assert (=> b!6736216 (= e!4069151 call!608655)))

(declare-fun b!6736217 () Bool)

(assert (=> b!6736217 (= e!4069145 (matchRSpec!3664 (regTwo!33639 (regOne!33639 r!7292)) s!2326))))

(declare-fun b!6736218 () Bool)

(declare-fun res!2755626 () Bool)

(assert (=> b!6736218 (=> res!2755626 e!4069150)))

(assert (=> b!6736218 (= res!2755626 call!608654)))

(assert (=> b!6736218 (= e!4069151 e!4069150)))

(declare-fun b!6736219 () Bool)

(declare-fun c!1249350 () Bool)

(assert (=> b!6736219 (= c!1249350 ((_ is ElementMatch!16563) (regOne!33639 r!7292)))))

(assert (=> b!6736219 (= e!4069147 e!4069146)))

(declare-fun b!6736220 () Bool)

(assert (=> b!6736220 (= e!4069148 call!608654)))

(assert (= (and d!2116419 c!1249348) b!6736220))

(assert (= (and d!2116419 (not c!1249348)) b!6736212))

(assert (= (and b!6736212 res!2755627) b!6736219))

(assert (= (and b!6736219 c!1249350) b!6736215))

(assert (= (and b!6736219 (not c!1249350)) b!6736210))

(assert (= (and b!6736210 c!1249349) b!6736214))

(assert (= (and b!6736210 (not c!1249349)) b!6736213))

(assert (= (and b!6736214 (not res!2755625)) b!6736217))

(assert (= (and b!6736213 c!1249351) b!6736218))

(assert (= (and b!6736213 (not c!1249351)) b!6736216))

(assert (= (and b!6736218 (not res!2755626)) b!6736211))

(assert (= (or b!6736211 b!6736216) bm!608649))

(assert (= (or b!6736220 b!6736218) bm!608650))

(declare-fun m!7493590 () Bool)

(assert (=> b!6736214 m!7493590))

(declare-fun m!7493592 () Bool)

(assert (=> bm!608649 m!7493592))

(assert (=> bm!608650 m!7493046))

(declare-fun m!7493594 () Bool)

(assert (=> b!6736217 m!7493594))

(assert (=> b!6735503 d!2116419))

(declare-fun b!6736221 () Bool)

(declare-fun e!4069156 () (InoxSet Context!11894))

(declare-fun e!4069157 () (InoxSet Context!11894))

(assert (=> b!6736221 (= e!4069156 e!4069157)))

(declare-fun c!1249356 () Bool)

(assert (=> b!6736221 (= c!1249356 ((_ is Union!16563) (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))))))

(declare-fun bm!608651 () Bool)

(declare-fun call!608660 () List!65988)

(declare-fun call!608657 () List!65988)

(assert (=> bm!608651 (= call!608660 call!608657)))

(declare-fun bm!608652 () Bool)

(declare-fun call!608659 () (InoxSet Context!11894))

(assert (=> bm!608652 (= call!608659 (derivationStepZipperDown!1791 (ite c!1249356 (regTwo!33639 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))) (regOne!33638 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292)))))) (ite c!1249356 (ite (or c!1249281 c!1249278) (Context!11895 Nil!65864) (Context!11895 call!608625)) (Context!11895 call!608657)) (h!72313 s!2326)))))

(declare-fun b!6736222 () Bool)

(declare-fun e!4069152 () (InoxSet Context!11894))

(declare-fun call!608658 () (InoxSet Context!11894))

(assert (=> b!6736222 (= e!4069152 call!608658)))

(declare-fun c!1249352 () Bool)

(declare-fun bm!608653 () Bool)

(declare-fun c!1249353 () Bool)

(assert (=> bm!608653 (= call!608657 ($colon$colon!2380 (exprs!6447 (ite (or c!1249281 c!1249278) (Context!11895 Nil!65864) (Context!11895 call!608625))) (ite (or c!1249353 c!1249352) (regTwo!33638 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))) (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292)))))))))

(declare-fun b!6736223 () Bool)

(declare-fun e!4069153 () Bool)

(assert (=> b!6736223 (= e!4069153 (nullable!6550 (regOne!33638 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292)))))))))

(declare-fun call!608661 () (InoxSet Context!11894))

(declare-fun bm!608654 () Bool)

(assert (=> bm!608654 (= call!608661 (derivationStepZipperDown!1791 (ite c!1249356 (regOne!33639 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))) (ite c!1249353 (regTwo!33638 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))) (ite c!1249352 (regOne!33638 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))) (reg!16892 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292)))))))) (ite (or c!1249356 c!1249353) (ite (or c!1249281 c!1249278) (Context!11895 Nil!65864) (Context!11895 call!608625)) (Context!11895 call!608660)) (h!72313 s!2326)))))

(declare-fun b!6736224 () Bool)

(declare-fun c!1249355 () Bool)

(assert (=> b!6736224 (= c!1249355 ((_ is Star!16563) (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))))))

(declare-fun e!4069155 () (InoxSet Context!11894))

(assert (=> b!6736224 (= e!4069155 e!4069152)))

(declare-fun b!6736225 () Bool)

(assert (=> b!6736225 (= e!4069155 call!608658)))

(declare-fun b!6736226 () Bool)

(declare-fun e!4069154 () (InoxSet Context!11894))

(declare-fun call!608656 () (InoxSet Context!11894))

(assert (=> b!6736226 (= e!4069154 ((_ map or) call!608659 call!608656))))

(declare-fun b!6736227 () Bool)

(assert (=> b!6736227 (= c!1249353 e!4069153)))

(declare-fun res!2755628 () Bool)

(assert (=> b!6736227 (=> (not res!2755628) (not e!4069153))))

(assert (=> b!6736227 (= res!2755628 ((_ is Concat!25408) (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))))))

(assert (=> b!6736227 (= e!4069157 e!4069154)))

(declare-fun bm!608655 () Bool)

(assert (=> bm!608655 (= call!608658 call!608656)))

(declare-fun b!6736229 () Bool)

(assert (=> b!6736229 (= e!4069154 e!4069155)))

(assert (=> b!6736229 (= c!1249352 ((_ is Concat!25408) (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))))))

(declare-fun bm!608656 () Bool)

(assert (=> bm!608656 (= call!608656 call!608661)))

(declare-fun b!6736230 () Bool)

(assert (=> b!6736230 (= e!4069152 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736231 () Bool)

(assert (=> b!6736231 (= e!4069157 ((_ map or) call!608661 call!608659))))

(declare-fun c!1249354 () Bool)

(declare-fun d!2116421 () Bool)

(assert (=> d!2116421 (= c!1249354 (and ((_ is ElementMatch!16563) (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))) (= (c!1249129 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292))))) (h!72313 s!2326))))))

(assert (=> d!2116421 (= (derivationStepZipperDown!1791 (ite c!1249281 (regOne!33639 r!7292) (ite c!1249278 (regTwo!33638 r!7292) (ite c!1249277 (regOne!33638 r!7292) (reg!16892 r!7292)))) (ite (or c!1249281 c!1249278) (Context!11895 Nil!65864) (Context!11895 call!608625)) (h!72313 s!2326)) e!4069156)))

(declare-fun b!6736228 () Bool)

(assert (=> b!6736228 (= e!4069156 (store ((as const (Array Context!11894 Bool)) false) (ite (or c!1249281 c!1249278) (Context!11895 Nil!65864) (Context!11895 call!608625)) true))))

(assert (= (and d!2116421 c!1249354) b!6736228))

(assert (= (and d!2116421 (not c!1249354)) b!6736221))

(assert (= (and b!6736221 c!1249356) b!6736231))

(assert (= (and b!6736221 (not c!1249356)) b!6736227))

(assert (= (and b!6736227 res!2755628) b!6736223))

(assert (= (and b!6736227 c!1249353) b!6736226))

(assert (= (and b!6736227 (not c!1249353)) b!6736229))

(assert (= (and b!6736229 c!1249352) b!6736225))

(assert (= (and b!6736229 (not c!1249352)) b!6736224))

(assert (= (and b!6736224 c!1249355) b!6736222))

(assert (= (and b!6736224 (not c!1249355)) b!6736230))

(assert (= (or b!6736225 b!6736222) bm!608651))

(assert (= (or b!6736225 b!6736222) bm!608655))

(assert (= (or b!6736226 bm!608651) bm!608653))

(assert (= (or b!6736226 bm!608655) bm!608656))

(assert (= (or b!6736231 b!6736226) bm!608652))

(assert (= (or b!6736231 bm!608656) bm!608654))

(declare-fun m!7493596 () Bool)

(assert (=> b!6736223 m!7493596))

(declare-fun m!7493598 () Bool)

(assert (=> bm!608654 m!7493598))

(declare-fun m!7493600 () Bool)

(assert (=> bm!608652 m!7493600))

(declare-fun m!7493602 () Bool)

(assert (=> b!6736228 m!7493602))

(declare-fun m!7493604 () Bool)

(assert (=> bm!608653 m!7493604))

(assert (=> bm!608619 d!2116421))

(declare-fun b!6736242 () Bool)

(declare-fun res!2755633 () Bool)

(declare-fun e!4069162 () Bool)

(assert (=> b!6736242 (=> (not res!2755633) (not e!4069162))))

(declare-fun lt!2438471 () List!65989)

(declare-fun size!40612 (List!65989) Int)

(assert (=> b!6736242 (= res!2755633 (= (size!40612 lt!2438471) (+ (size!40612 (_1!36841 (get!22916 lt!2438457))) (size!40612 (_2!36841 (get!22916 lt!2438457))))))))

(declare-fun b!6736241 () Bool)

(declare-fun e!4069163 () List!65989)

(assert (=> b!6736241 (= e!4069163 (Cons!65865 (h!72313 (_1!36841 (get!22916 lt!2438457))) (++!14719 (t!379682 (_1!36841 (get!22916 lt!2438457))) (_2!36841 (get!22916 lt!2438457)))))))

(declare-fun b!6736243 () Bool)

(assert (=> b!6736243 (= e!4069162 (or (not (= (_2!36841 (get!22916 lt!2438457)) Nil!65865)) (= lt!2438471 (_1!36841 (get!22916 lt!2438457)))))))

(declare-fun b!6736240 () Bool)

(assert (=> b!6736240 (= e!4069163 (_2!36841 (get!22916 lt!2438457)))))

(declare-fun d!2116423 () Bool)

(assert (=> d!2116423 e!4069162))

(declare-fun res!2755634 () Bool)

(assert (=> d!2116423 (=> (not res!2755634) (not e!4069162))))

(declare-fun content!12796 (List!65989) (InoxSet C!33396))

(assert (=> d!2116423 (= res!2755634 (= (content!12796 lt!2438471) ((_ map or) (content!12796 (_1!36841 (get!22916 lt!2438457))) (content!12796 (_2!36841 (get!22916 lt!2438457))))))))

(assert (=> d!2116423 (= lt!2438471 e!4069163)))

(declare-fun c!1249359 () Bool)

(assert (=> d!2116423 (= c!1249359 ((_ is Nil!65865) (_1!36841 (get!22916 lt!2438457))))))

(assert (=> d!2116423 (= (++!14719 (_1!36841 (get!22916 lt!2438457)) (_2!36841 (get!22916 lt!2438457))) lt!2438471)))

(assert (= (and d!2116423 c!1249359) b!6736240))

(assert (= (and d!2116423 (not c!1249359)) b!6736241))

(assert (= (and d!2116423 res!2755634) b!6736242))

(assert (= (and b!6736242 res!2755633) b!6736243))

(declare-fun m!7493606 () Bool)

(assert (=> b!6736242 m!7493606))

(declare-fun m!7493608 () Bool)

(assert (=> b!6736242 m!7493608))

(declare-fun m!7493610 () Bool)

(assert (=> b!6736242 m!7493610))

(declare-fun m!7493612 () Bool)

(assert (=> b!6736241 m!7493612))

(declare-fun m!7493614 () Bool)

(assert (=> d!2116423 m!7493614))

(declare-fun m!7493616 () Bool)

(assert (=> d!2116423 m!7493616))

(declare-fun m!7493618 () Bool)

(assert (=> d!2116423 m!7493618))

(assert (=> b!6736028 d!2116423))

(declare-fun d!2116425 () Bool)

(assert (=> d!2116425 (= (get!22916 lt!2438457) (v!52649 lt!2438457))))

(assert (=> b!6736028 d!2116425))

(declare-fun d!2116427 () Bool)

(assert (=> d!2116427 (= (isEmpty!38205 (unfocusZipperList!1984 zl!343)) ((_ is Nil!65864) (unfocusZipperList!1984 zl!343)))))

(assert (=> b!6736070 d!2116427))

(declare-fun e!4069164 () (InoxSet Context!11894))

(declare-fun b!6736244 () Bool)

(declare-fun call!608662 () (InoxSet Context!11894))

(assert (=> b!6736244 (= e!4069164 ((_ map or) call!608662 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))) (h!72313 s!2326))))))

(declare-fun d!2116429 () Bool)

(declare-fun c!1249360 () Bool)

(declare-fun e!4069166 () Bool)

(assert (=> d!2116429 (= c!1249360 e!4069166)))

(declare-fun res!2755635 () Bool)

(assert (=> d!2116429 (=> (not res!2755635) (not e!4069166))))

(assert (=> d!2116429 (= res!2755635 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))))

(assert (=> d!2116429 (= (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (h!72313 s!2326)) e!4069164)))

(declare-fun b!6736245 () Bool)

(declare-fun e!4069165 () (InoxSet Context!11894))

(assert (=> b!6736245 (= e!4069165 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608657 () Bool)

(assert (=> bm!608657 (= call!608662 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))) (h!72313 s!2326)))))

(declare-fun b!6736246 () Bool)

(assert (=> b!6736246 (= e!4069164 e!4069165)))

(declare-fun c!1249361 () Bool)

(assert (=> b!6736246 (= c!1249361 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))))

(declare-fun b!6736247 () Bool)

(assert (=> b!6736247 (= e!4069165 call!608662)))

(declare-fun b!6736248 () Bool)

(assert (=> b!6736248 (= e!4069166 (nullable!6550 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864)))))))))))

(assert (= (and d!2116429 res!2755635) b!6736248))

(assert (= (and d!2116429 c!1249360) b!6736244))

(assert (= (and d!2116429 (not c!1249360)) b!6736246))

(assert (= (and b!6736246 c!1249361) b!6736247))

(assert (= (and b!6736246 (not c!1249361)) b!6736245))

(assert (= (or b!6736244 b!6736247) bm!608657))

(declare-fun m!7493620 () Bool)

(assert (=> b!6736244 m!7493620))

(declare-fun m!7493622 () Bool)

(assert (=> bm!608657 m!7493622))

(declare-fun m!7493624 () Bool)

(assert (=> b!6736248 m!7493624))

(assert (=> b!6735903 d!2116429))

(declare-fun d!2116431 () Bool)

(declare-fun c!1249362 () Bool)

(assert (=> d!2116431 (= c!1249362 (isEmpty!38201 (tail!12638 (t!379682 s!2326))))))

(declare-fun e!4069167 () Bool)

(assert (=> d!2116431 (= (matchZipper!2549 (derivationStepZipper!2507 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (head!13552 (t!379682 s!2326))) (tail!12638 (t!379682 s!2326))) e!4069167)))

(declare-fun b!6736249 () Bool)

(assert (=> b!6736249 (= e!4069167 (nullableZipper!2278 (derivationStepZipper!2507 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (head!13552 (t!379682 s!2326)))))))

(declare-fun b!6736250 () Bool)

(assert (=> b!6736250 (= e!4069167 (matchZipper!2549 (derivationStepZipper!2507 (derivationStepZipper!2507 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (head!13552 (t!379682 s!2326))) (head!13552 (tail!12638 (t!379682 s!2326)))) (tail!12638 (tail!12638 (t!379682 s!2326)))))))

(assert (= (and d!2116431 c!1249362) b!6736249))

(assert (= (and d!2116431 (not c!1249362)) b!6736250))

(assert (=> d!2116431 m!7493426))

(declare-fun m!7493626 () Bool)

(assert (=> d!2116431 m!7493626))

(assert (=> b!6736249 m!7493424))

(declare-fun m!7493628 () Bool)

(assert (=> b!6736249 m!7493628))

(assert (=> b!6736250 m!7493426))

(declare-fun m!7493630 () Bool)

(assert (=> b!6736250 m!7493630))

(assert (=> b!6736250 m!7493424))

(assert (=> b!6736250 m!7493630))

(declare-fun m!7493632 () Bool)

(assert (=> b!6736250 m!7493632))

(assert (=> b!6736250 m!7493426))

(declare-fun m!7493634 () Bool)

(assert (=> b!6736250 m!7493634))

(assert (=> b!6736250 m!7493632))

(assert (=> b!6736250 m!7493634))

(declare-fun m!7493636 () Bool)

(assert (=> b!6736250 m!7493636))

(assert (=> b!6735937 d!2116431))

(declare-fun bs!1791257 () Bool)

(declare-fun d!2116433 () Bool)

(assert (= bs!1791257 (and d!2116433 b!6735413)))

(declare-fun lambda!378272 () Int)

(assert (=> bs!1791257 (= (= (head!13552 (t!379682 s!2326)) (h!72313 s!2326)) (= lambda!378272 lambda!378189))))

(declare-fun bs!1791258 () Bool)

(assert (= bs!1791258 (and d!2116433 d!2116355)))

(assert (=> bs!1791258 (= (= (head!13552 (t!379682 s!2326)) (h!72313 s!2326)) (= lambda!378272 lambda!378244))))

(declare-fun bs!1791259 () Bool)

(assert (= bs!1791259 (and d!2116433 d!2116363)))

(assert (=> bs!1791259 (= (= (head!13552 (t!379682 s!2326)) (h!72313 s!2326)) (= lambda!378272 lambda!378245))))

(assert (=> d!2116433 true))

(assert (=> d!2116433 (= (derivationStepZipper!2507 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) (head!13552 (t!379682 s!2326))) (flatMap!2044 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) lambda!378272))))

(declare-fun bs!1791260 () Bool)

(assert (= bs!1791260 d!2116433))

(assert (=> bs!1791260 m!7493016))

(declare-fun m!7493638 () Bool)

(assert (=> bs!1791260 m!7493638))

(assert (=> b!6735937 d!2116433))

(declare-fun d!2116435 () Bool)

(assert (=> d!2116435 (= (head!13552 (t!379682 s!2326)) (h!72313 (t!379682 s!2326)))))

(assert (=> b!6735937 d!2116435))

(declare-fun d!2116437 () Bool)

(assert (=> d!2116437 (= (tail!12638 (t!379682 s!2326)) (t!379682 (t!379682 s!2326)))))

(assert (=> b!6735937 d!2116437))

(declare-fun d!2116439 () Bool)

(assert (=> d!2116439 (= (Exists!3631 (ite c!1249147 lambda!378210 lambda!378213)) (choose!50212 (ite c!1249147 lambda!378210 lambda!378213)))))

(declare-fun bs!1791261 () Bool)

(assert (= bs!1791261 d!2116439))

(declare-fun m!7493640 () Bool)

(assert (=> bs!1791261 m!7493640))

(assert (=> bm!608543 d!2116439))

(declare-fun d!2116441 () Bool)

(declare-fun e!4069169 () Bool)

(assert (=> d!2116441 e!4069169))

(declare-fun c!1249363 () Bool)

(assert (=> d!2116441 (= c!1249363 ((_ is EmptyExpr!16563) (derivativeStep!5234 r!7292 (head!13552 s!2326))))))

(declare-fun lt!2438472 () Bool)

(declare-fun e!4069170 () Bool)

(assert (=> d!2116441 (= lt!2438472 e!4069170)))

(declare-fun c!1249364 () Bool)

(assert (=> d!2116441 (= c!1249364 (isEmpty!38201 (tail!12638 s!2326)))))

(assert (=> d!2116441 (validRegex!8299 (derivativeStep!5234 r!7292 (head!13552 s!2326)))))

(assert (=> d!2116441 (= (matchR!8746 (derivativeStep!5234 r!7292 (head!13552 s!2326)) (tail!12638 s!2326)) lt!2438472)))

(declare-fun bm!608658 () Bool)

(declare-fun call!608663 () Bool)

(assert (=> bm!608658 (= call!608663 (isEmpty!38201 (tail!12638 s!2326)))))

(declare-fun b!6736251 () Bool)

(assert (=> b!6736251 (= e!4069169 (= lt!2438472 call!608663))))

(declare-fun b!6736252 () Bool)

(declare-fun res!2755637 () Bool)

(declare-fun e!4069174 () Bool)

(assert (=> b!6736252 (=> (not res!2755637) (not e!4069174))))

(assert (=> b!6736252 (= res!2755637 (not call!608663))))

(declare-fun b!6736253 () Bool)

(declare-fun e!4069171 () Bool)

(declare-fun e!4069173 () Bool)

(assert (=> b!6736253 (= e!4069171 e!4069173)))

(declare-fun res!2755642 () Bool)

(assert (=> b!6736253 (=> (not res!2755642) (not e!4069173))))

(assert (=> b!6736253 (= res!2755642 (not lt!2438472))))

(declare-fun b!6736254 () Bool)

(declare-fun res!2755640 () Bool)

(assert (=> b!6736254 (=> res!2755640 e!4069171)))

(assert (=> b!6736254 (= res!2755640 (not ((_ is ElementMatch!16563) (derivativeStep!5234 r!7292 (head!13552 s!2326)))))))

(declare-fun e!4069172 () Bool)

(assert (=> b!6736254 (= e!4069172 e!4069171)))

(declare-fun b!6736255 () Bool)

(assert (=> b!6736255 (= e!4069170 (matchR!8746 (derivativeStep!5234 (derivativeStep!5234 r!7292 (head!13552 s!2326)) (head!13552 (tail!12638 s!2326))) (tail!12638 (tail!12638 s!2326))))))

(declare-fun b!6736256 () Bool)

(declare-fun res!2755643 () Bool)

(declare-fun e!4069168 () Bool)

(assert (=> b!6736256 (=> res!2755643 e!4069168)))

(assert (=> b!6736256 (= res!2755643 (not (isEmpty!38201 (tail!12638 (tail!12638 s!2326)))))))

(declare-fun b!6736257 () Bool)

(assert (=> b!6736257 (= e!4069172 (not lt!2438472))))

(declare-fun b!6736258 () Bool)

(declare-fun res!2755641 () Bool)

(assert (=> b!6736258 (=> (not res!2755641) (not e!4069174))))

(assert (=> b!6736258 (= res!2755641 (isEmpty!38201 (tail!12638 (tail!12638 s!2326))))))

(declare-fun b!6736259 () Bool)

(assert (=> b!6736259 (= e!4069173 e!4069168)))

(declare-fun res!2755638 () Bool)

(assert (=> b!6736259 (=> res!2755638 e!4069168)))

(assert (=> b!6736259 (= res!2755638 call!608663)))

(declare-fun b!6736260 () Bool)

(assert (=> b!6736260 (= e!4069168 (not (= (head!13552 (tail!12638 s!2326)) (c!1249129 (derivativeStep!5234 r!7292 (head!13552 s!2326))))))))

(declare-fun b!6736261 () Bool)

(assert (=> b!6736261 (= e!4069169 e!4069172)))

(declare-fun c!1249365 () Bool)

(assert (=> b!6736261 (= c!1249365 ((_ is EmptyLang!16563) (derivativeStep!5234 r!7292 (head!13552 s!2326))))))

(declare-fun b!6736262 () Bool)

(assert (=> b!6736262 (= e!4069170 (nullable!6550 (derivativeStep!5234 r!7292 (head!13552 s!2326))))))

(declare-fun b!6736263 () Bool)

(declare-fun res!2755636 () Bool)

(assert (=> b!6736263 (=> res!2755636 e!4069171)))

(assert (=> b!6736263 (= res!2755636 e!4069174)))

(declare-fun res!2755639 () Bool)

(assert (=> b!6736263 (=> (not res!2755639) (not e!4069174))))

(assert (=> b!6736263 (= res!2755639 lt!2438472)))

(declare-fun b!6736264 () Bool)

(assert (=> b!6736264 (= e!4069174 (= (head!13552 (tail!12638 s!2326)) (c!1249129 (derivativeStep!5234 r!7292 (head!13552 s!2326)))))))

(assert (= (and d!2116441 c!1249364) b!6736262))

(assert (= (and d!2116441 (not c!1249364)) b!6736255))

(assert (= (and d!2116441 c!1249363) b!6736251))

(assert (= (and d!2116441 (not c!1249363)) b!6736261))

(assert (= (and b!6736261 c!1249365) b!6736257))

(assert (= (and b!6736261 (not c!1249365)) b!6736254))

(assert (= (and b!6736254 (not res!2755640)) b!6736263))

(assert (= (and b!6736263 res!2755639) b!6736252))

(assert (= (and b!6736252 res!2755637) b!6736258))

(assert (= (and b!6736258 res!2755641) b!6736264))

(assert (= (and b!6736263 (not res!2755636)) b!6736253))

(assert (= (and b!6736253 res!2755642) b!6736259))

(assert (= (and b!6736259 (not res!2755638)) b!6736256))

(assert (= (and b!6736256 (not res!2755643)) b!6736260))

(assert (= (or b!6736251 b!6736252 b!6736259) bm!608658))

(assert (=> b!6736262 m!7493174))

(declare-fun m!7493642 () Bool)

(assert (=> b!6736262 m!7493642))

(assert (=> b!6736256 m!7493166))

(declare-fun m!7493644 () Bool)

(assert (=> b!6736256 m!7493644))

(assert (=> b!6736256 m!7493644))

(declare-fun m!7493646 () Bool)

(assert (=> b!6736256 m!7493646))

(assert (=> d!2116441 m!7493166))

(assert (=> d!2116441 m!7493168))

(assert (=> d!2116441 m!7493174))

(declare-fun m!7493648 () Bool)

(assert (=> d!2116441 m!7493648))

(assert (=> b!6736260 m!7493166))

(declare-fun m!7493650 () Bool)

(assert (=> b!6736260 m!7493650))

(assert (=> b!6736255 m!7493166))

(assert (=> b!6736255 m!7493650))

(assert (=> b!6736255 m!7493174))

(assert (=> b!6736255 m!7493650))

(declare-fun m!7493652 () Bool)

(assert (=> b!6736255 m!7493652))

(assert (=> b!6736255 m!7493166))

(assert (=> b!6736255 m!7493644))

(assert (=> b!6736255 m!7493652))

(assert (=> b!6736255 m!7493644))

(declare-fun m!7493654 () Bool)

(assert (=> b!6736255 m!7493654))

(assert (=> bm!608658 m!7493166))

(assert (=> bm!608658 m!7493168))

(assert (=> b!6736258 m!7493166))

(assert (=> b!6736258 m!7493644))

(assert (=> b!6736258 m!7493644))

(assert (=> b!6736258 m!7493646))

(assert (=> b!6736264 m!7493166))

(assert (=> b!6736264 m!7493650))

(assert (=> b!6735594 d!2116441))

(declare-fun d!2116443 () Bool)

(declare-fun lt!2438475 () Regex!16563)

(assert (=> d!2116443 (validRegex!8299 lt!2438475)))

(declare-fun e!4069189 () Regex!16563)

(assert (=> d!2116443 (= lt!2438475 e!4069189)))

(declare-fun c!1249380 () Bool)

(assert (=> d!2116443 (= c!1249380 (or ((_ is EmptyExpr!16563) r!7292) ((_ is EmptyLang!16563) r!7292)))))

(assert (=> d!2116443 (validRegex!8299 r!7292)))

(assert (=> d!2116443 (= (derivativeStep!5234 r!7292 (head!13552 s!2326)) lt!2438475)))

(declare-fun b!6736285 () Bool)

(declare-fun c!1249377 () Bool)

(assert (=> b!6736285 (= c!1249377 ((_ is Union!16563) r!7292))))

(declare-fun e!4069185 () Regex!16563)

(declare-fun e!4069188 () Regex!16563)

(assert (=> b!6736285 (= e!4069185 e!4069188)))

(declare-fun bm!608667 () Bool)

(declare-fun call!608675 () Regex!16563)

(declare-fun call!608673 () Regex!16563)

(assert (=> bm!608667 (= call!608675 call!608673)))

(declare-fun bm!608668 () Bool)

(declare-fun call!608672 () Regex!16563)

(assert (=> bm!608668 (= call!608673 call!608672)))

(declare-fun b!6736286 () Bool)

(assert (=> b!6736286 (= e!4069189 e!4069185)))

(declare-fun c!1249379 () Bool)

(assert (=> b!6736286 (= c!1249379 ((_ is ElementMatch!16563) r!7292))))

(declare-fun b!6736287 () Bool)

(declare-fun call!608674 () Regex!16563)

(assert (=> b!6736287 (= e!4069188 (Union!16563 call!608674 call!608672))))

(declare-fun b!6736288 () Bool)

(declare-fun e!4069187 () Regex!16563)

(assert (=> b!6736288 (= e!4069187 (Concat!25408 call!608673 r!7292))))

(declare-fun b!6736289 () Bool)

(assert (=> b!6736289 (= e!4069188 e!4069187)))

(declare-fun c!1249376 () Bool)

(assert (=> b!6736289 (= c!1249376 ((_ is Star!16563) r!7292))))

(declare-fun b!6736290 () Bool)

(declare-fun e!4069186 () Regex!16563)

(assert (=> b!6736290 (= e!4069186 (Union!16563 (Concat!25408 call!608674 (regTwo!33638 r!7292)) call!608675))))

(declare-fun b!6736291 () Bool)

(assert (=> b!6736291 (= e!4069189 EmptyLang!16563)))

(declare-fun b!6736292 () Bool)

(assert (=> b!6736292 (= e!4069186 (Union!16563 (Concat!25408 call!608675 (regTwo!33638 r!7292)) EmptyLang!16563))))

(declare-fun b!6736293 () Bool)

(assert (=> b!6736293 (= e!4069185 (ite (= (head!13552 s!2326) (c!1249129 r!7292)) EmptyExpr!16563 EmptyLang!16563))))

(declare-fun c!1249378 () Bool)

(declare-fun bm!608669 () Bool)

(assert (=> bm!608669 (= call!608672 (derivativeStep!5234 (ite c!1249377 (regTwo!33639 r!7292) (ite c!1249376 (reg!16892 r!7292) (ite c!1249378 (regTwo!33638 r!7292) (regOne!33638 r!7292)))) (head!13552 s!2326)))))

(declare-fun bm!608670 () Bool)

(assert (=> bm!608670 (= call!608674 (derivativeStep!5234 (ite c!1249377 (regOne!33639 r!7292) (regOne!33638 r!7292)) (head!13552 s!2326)))))

(declare-fun b!6736294 () Bool)

(assert (=> b!6736294 (= c!1249378 (nullable!6550 (regOne!33638 r!7292)))))

(assert (=> b!6736294 (= e!4069187 e!4069186)))

(assert (= (and d!2116443 c!1249380) b!6736291))

(assert (= (and d!2116443 (not c!1249380)) b!6736286))

(assert (= (and b!6736286 c!1249379) b!6736293))

(assert (= (and b!6736286 (not c!1249379)) b!6736285))

(assert (= (and b!6736285 c!1249377) b!6736287))

(assert (= (and b!6736285 (not c!1249377)) b!6736289))

(assert (= (and b!6736289 c!1249376) b!6736288))

(assert (= (and b!6736289 (not c!1249376)) b!6736294))

(assert (= (and b!6736294 c!1249378) b!6736290))

(assert (= (and b!6736294 (not c!1249378)) b!6736292))

(assert (= (or b!6736290 b!6736292) bm!608667))

(assert (= (or b!6736288 bm!608667) bm!608668))

(assert (= (or b!6736287 bm!608668) bm!608669))

(assert (= (or b!6736287 b!6736290) bm!608670))

(declare-fun m!7493656 () Bool)

(assert (=> d!2116443 m!7493656))

(assert (=> d!2116443 m!7493012))

(assert (=> bm!608669 m!7493170))

(declare-fun m!7493658 () Bool)

(assert (=> bm!608669 m!7493658))

(assert (=> bm!608670 m!7493170))

(declare-fun m!7493660 () Bool)

(assert (=> bm!608670 m!7493660))

(assert (=> b!6736294 m!7493386))

(assert (=> b!6735594 d!2116443))

(declare-fun d!2116445 () Bool)

(assert (=> d!2116445 (= (head!13552 s!2326) (h!72313 s!2326))))

(assert (=> b!6735594 d!2116445))

(declare-fun d!2116447 () Bool)

(assert (=> d!2116447 (= (tail!12638 s!2326) (t!379682 s!2326))))

(assert (=> b!6735594 d!2116447))

(assert (=> d!2116349 d!2116345))

(declare-fun d!2116449 () Bool)

(assert (=> d!2116449 (= (flatMap!2044 z!1189 lambda!378189) (dynLambda!26276 lambda!378189 (h!72314 zl!343)))))

(assert (=> d!2116449 true))

(declare-fun _$13!4058 () Unit!159817)

(assert (=> d!2116449 (= (choose!50209 z!1189 (h!72314 zl!343) lambda!378189) _$13!4058)))

(declare-fun b_lambda!253627 () Bool)

(assert (=> (not b_lambda!253627) (not d!2116449)))

(declare-fun bs!1791262 () Bool)

(assert (= bs!1791262 d!2116449))

(assert (=> bs!1791262 m!7493036))

(assert (=> bs!1791262 m!7493380))

(assert (=> d!2116349 d!2116449))

(declare-fun d!2116451 () Bool)

(assert (=> d!2116451 (= (isEmpty!38205 (tail!12639 (exprs!6447 (h!72314 zl!343)))) ((_ is Nil!65864) (tail!12639 (exprs!6447 (h!72314 zl!343)))))))

(assert (=> b!6735864 d!2116451))

(declare-fun d!2116453 () Bool)

(assert (=> d!2116453 (= (tail!12639 (exprs!6447 (h!72314 zl!343))) (t!379681 (exprs!6447 (h!72314 zl!343))))))

(assert (=> b!6735864 d!2116453))

(assert (=> b!6736030 d!2116267))

(declare-fun d!2116455 () Bool)

(declare-fun e!4069191 () Bool)

(assert (=> d!2116455 e!4069191))

(declare-fun c!1249381 () Bool)

(assert (=> d!2116455 (= c!1249381 ((_ is EmptyExpr!16563) r!7292))))

(declare-fun lt!2438476 () Bool)

(declare-fun e!4069192 () Bool)

(assert (=> d!2116455 (= lt!2438476 e!4069192)))

(declare-fun c!1249382 () Bool)

(assert (=> d!2116455 (= c!1249382 (isEmpty!38201 (_2!36841 (get!22916 lt!2438457))))))

(assert (=> d!2116455 (validRegex!8299 r!7292)))

(assert (=> d!2116455 (= (matchR!8746 r!7292 (_2!36841 (get!22916 lt!2438457))) lt!2438476)))

(declare-fun bm!608671 () Bool)

(declare-fun call!608676 () Bool)

(assert (=> bm!608671 (= call!608676 (isEmpty!38201 (_2!36841 (get!22916 lt!2438457))))))

(declare-fun b!6736295 () Bool)

(assert (=> b!6736295 (= e!4069191 (= lt!2438476 call!608676))))

(declare-fun b!6736296 () Bool)

(declare-fun res!2755645 () Bool)

(declare-fun e!4069196 () Bool)

(assert (=> b!6736296 (=> (not res!2755645) (not e!4069196))))

(assert (=> b!6736296 (= res!2755645 (not call!608676))))

(declare-fun b!6736297 () Bool)

(declare-fun e!4069193 () Bool)

(declare-fun e!4069195 () Bool)

(assert (=> b!6736297 (= e!4069193 e!4069195)))

(declare-fun res!2755650 () Bool)

(assert (=> b!6736297 (=> (not res!2755650) (not e!4069195))))

(assert (=> b!6736297 (= res!2755650 (not lt!2438476))))

(declare-fun b!6736298 () Bool)

(declare-fun res!2755648 () Bool)

(assert (=> b!6736298 (=> res!2755648 e!4069193)))

(assert (=> b!6736298 (= res!2755648 (not ((_ is ElementMatch!16563) r!7292)))))

(declare-fun e!4069194 () Bool)

(assert (=> b!6736298 (= e!4069194 e!4069193)))

(declare-fun b!6736299 () Bool)

(assert (=> b!6736299 (= e!4069192 (matchR!8746 (derivativeStep!5234 r!7292 (head!13552 (_2!36841 (get!22916 lt!2438457)))) (tail!12638 (_2!36841 (get!22916 lt!2438457)))))))

(declare-fun b!6736300 () Bool)

(declare-fun res!2755651 () Bool)

(declare-fun e!4069190 () Bool)

(assert (=> b!6736300 (=> res!2755651 e!4069190)))

(assert (=> b!6736300 (= res!2755651 (not (isEmpty!38201 (tail!12638 (_2!36841 (get!22916 lt!2438457))))))))

(declare-fun b!6736301 () Bool)

(assert (=> b!6736301 (= e!4069194 (not lt!2438476))))

(declare-fun b!6736302 () Bool)

(declare-fun res!2755649 () Bool)

(assert (=> b!6736302 (=> (not res!2755649) (not e!4069196))))

(assert (=> b!6736302 (= res!2755649 (isEmpty!38201 (tail!12638 (_2!36841 (get!22916 lt!2438457)))))))

(declare-fun b!6736303 () Bool)

(assert (=> b!6736303 (= e!4069195 e!4069190)))

(declare-fun res!2755646 () Bool)

(assert (=> b!6736303 (=> res!2755646 e!4069190)))

(assert (=> b!6736303 (= res!2755646 call!608676)))

(declare-fun b!6736304 () Bool)

(assert (=> b!6736304 (= e!4069190 (not (= (head!13552 (_2!36841 (get!22916 lt!2438457))) (c!1249129 r!7292))))))

(declare-fun b!6736305 () Bool)

(assert (=> b!6736305 (= e!4069191 e!4069194)))

(declare-fun c!1249383 () Bool)

(assert (=> b!6736305 (= c!1249383 ((_ is EmptyLang!16563) r!7292))))

(declare-fun b!6736306 () Bool)

(assert (=> b!6736306 (= e!4069192 (nullable!6550 r!7292))))

(declare-fun b!6736307 () Bool)

(declare-fun res!2755644 () Bool)

(assert (=> b!6736307 (=> res!2755644 e!4069193)))

(assert (=> b!6736307 (= res!2755644 e!4069196)))

(declare-fun res!2755647 () Bool)

(assert (=> b!6736307 (=> (not res!2755647) (not e!4069196))))

(assert (=> b!6736307 (= res!2755647 lt!2438476)))

(declare-fun b!6736308 () Bool)

(assert (=> b!6736308 (= e!4069196 (= (head!13552 (_2!36841 (get!22916 lt!2438457))) (c!1249129 r!7292)))))

(assert (= (and d!2116455 c!1249382) b!6736306))

(assert (= (and d!2116455 (not c!1249382)) b!6736299))

(assert (= (and d!2116455 c!1249381) b!6736295))

(assert (= (and d!2116455 (not c!1249381)) b!6736305))

(assert (= (and b!6736305 c!1249383) b!6736301))

(assert (= (and b!6736305 (not c!1249383)) b!6736298))

(assert (= (and b!6736298 (not res!2755648)) b!6736307))

(assert (= (and b!6736307 res!2755647) b!6736296))

(assert (= (and b!6736296 res!2755645) b!6736302))

(assert (= (and b!6736302 res!2755649) b!6736308))

(assert (= (and b!6736307 (not res!2755644)) b!6736297))

(assert (= (and b!6736297 res!2755650) b!6736303))

(assert (= (and b!6736303 (not res!2755646)) b!6736300))

(assert (= (and b!6736300 (not res!2755651)) b!6736304))

(assert (= (or b!6736295 b!6736296 b!6736303) bm!608671))

(assert (=> b!6736306 m!7493164))

(declare-fun m!7493662 () Bool)

(assert (=> b!6736300 m!7493662))

(assert (=> b!6736300 m!7493662))

(declare-fun m!7493664 () Bool)

(assert (=> b!6736300 m!7493664))

(declare-fun m!7493666 () Bool)

(assert (=> d!2116455 m!7493666))

(assert (=> d!2116455 m!7493012))

(declare-fun m!7493668 () Bool)

(assert (=> b!6736304 m!7493668))

(assert (=> b!6736299 m!7493668))

(assert (=> b!6736299 m!7493668))

(declare-fun m!7493670 () Bool)

(assert (=> b!6736299 m!7493670))

(assert (=> b!6736299 m!7493662))

(assert (=> b!6736299 m!7493670))

(assert (=> b!6736299 m!7493662))

(declare-fun m!7493672 () Bool)

(assert (=> b!6736299 m!7493672))

(assert (=> bm!608671 m!7493666))

(assert (=> b!6736302 m!7493662))

(assert (=> b!6736302 m!7493662))

(assert (=> b!6736302 m!7493664))

(assert (=> b!6736308 m!7493668))

(assert (=> b!6736034 d!2116455))

(assert (=> b!6736034 d!2116425))

(declare-fun bs!1791263 () Bool)

(declare-fun d!2116457 () Bool)

(assert (= bs!1791263 (and d!2116457 d!2116413)))

(declare-fun lambda!378273 () Int)

(assert (=> bs!1791263 (= lambda!378273 lambda!378269)))

(declare-fun bs!1791264 () Bool)

(assert (= bs!1791264 (and d!2116457 d!2116335)))

(assert (=> bs!1791264 (= lambda!378273 lambda!378241)))

(declare-fun bs!1791265 () Bool)

(assert (= bs!1791265 (and d!2116457 d!2116251)))

(assert (=> bs!1791265 (= lambda!378273 lambda!378199)))

(declare-fun bs!1791266 () Bool)

(assert (= bs!1791266 (and d!2116457 d!2116389)))

(assert (=> bs!1791266 (= lambda!378273 lambda!378266)))

(declare-fun bs!1791267 () Bool)

(assert (= bs!1791267 (and d!2116457 d!2116393)))

(assert (=> bs!1791267 (= lambda!378273 lambda!378267)))

(declare-fun bs!1791268 () Bool)

(assert (= bs!1791268 (and d!2116457 d!2116247)))

(assert (=> bs!1791268 (= lambda!378273 lambda!378198)))

(declare-fun bs!1791269 () Bool)

(assert (= bs!1791269 (and d!2116457 d!2116387)))

(assert (=> bs!1791269 (= lambda!378273 lambda!378263)))

(declare-fun bs!1791270 () Bool)

(assert (= bs!1791270 (and d!2116457 d!2116411)))

(assert (=> bs!1791270 (= lambda!378273 lambda!378268)))

(assert (=> d!2116457 (= (inv!84654 setElem!45971) (forall!15763 (exprs!6447 setElem!45971) lambda!378273))))

(declare-fun bs!1791271 () Bool)

(assert (= bs!1791271 d!2116457))

(declare-fun m!7493674 () Bool)

(assert (=> bs!1791271 m!7493674))

(assert (=> setNonEmpty!45971 d!2116457))

(assert (=> d!2116267 d!2116379))

(assert (=> d!2116267 d!2116391))

(declare-fun d!2116459 () Bool)

(assert (=> d!2116459 (= (isDefined!13153 lt!2438457) (not (isEmpty!38206 lt!2438457)))))

(declare-fun bs!1791272 () Bool)

(assert (= bs!1791272 d!2116459))

(declare-fun m!7493676 () Bool)

(assert (=> bs!1791272 m!7493676))

(assert (=> b!6736032 d!2116459))

(declare-fun b!6736309 () Bool)

(declare-fun e!4069201 () (InoxSet Context!11894))

(declare-fun e!4069202 () (InoxSet Context!11894))

(assert (=> b!6736309 (= e!4069201 e!4069202)))

(declare-fun c!1249388 () Bool)

(assert (=> b!6736309 (= c!1249388 ((_ is Union!16563) (h!72312 (exprs!6447 lt!2438365))))))

(declare-fun bm!608672 () Bool)

(declare-fun call!608681 () List!65988)

(declare-fun call!608678 () List!65988)

(assert (=> bm!608672 (= call!608681 call!608678)))

(declare-fun bm!608673 () Bool)

(declare-fun call!608680 () (InoxSet Context!11894))

(assert (=> bm!608673 (= call!608680 (derivationStepZipperDown!1791 (ite c!1249388 (regTwo!33639 (h!72312 (exprs!6447 lt!2438365))) (regOne!33638 (h!72312 (exprs!6447 lt!2438365)))) (ite c!1249388 (Context!11895 (t!379681 (exprs!6447 lt!2438365))) (Context!11895 call!608678)) (h!72313 s!2326)))))

(declare-fun b!6736310 () Bool)

(declare-fun e!4069197 () (InoxSet Context!11894))

(declare-fun call!608679 () (InoxSet Context!11894))

(assert (=> b!6736310 (= e!4069197 call!608679)))

(declare-fun bm!608674 () Bool)

(declare-fun c!1249385 () Bool)

(declare-fun c!1249384 () Bool)

(assert (=> bm!608674 (= call!608678 ($colon$colon!2380 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438365)))) (ite (or c!1249385 c!1249384) (regTwo!33638 (h!72312 (exprs!6447 lt!2438365))) (h!72312 (exprs!6447 lt!2438365)))))))

(declare-fun b!6736311 () Bool)

(declare-fun e!4069198 () Bool)

(assert (=> b!6736311 (= e!4069198 (nullable!6550 (regOne!33638 (h!72312 (exprs!6447 lt!2438365)))))))

(declare-fun bm!608675 () Bool)

(declare-fun call!608682 () (InoxSet Context!11894))

(assert (=> bm!608675 (= call!608682 (derivationStepZipperDown!1791 (ite c!1249388 (regOne!33639 (h!72312 (exprs!6447 lt!2438365))) (ite c!1249385 (regTwo!33638 (h!72312 (exprs!6447 lt!2438365))) (ite c!1249384 (regOne!33638 (h!72312 (exprs!6447 lt!2438365))) (reg!16892 (h!72312 (exprs!6447 lt!2438365)))))) (ite (or c!1249388 c!1249385) (Context!11895 (t!379681 (exprs!6447 lt!2438365))) (Context!11895 call!608681)) (h!72313 s!2326)))))

(declare-fun b!6736312 () Bool)

(declare-fun c!1249387 () Bool)

(assert (=> b!6736312 (= c!1249387 ((_ is Star!16563) (h!72312 (exprs!6447 lt!2438365))))))

(declare-fun e!4069200 () (InoxSet Context!11894))

(assert (=> b!6736312 (= e!4069200 e!4069197)))

(declare-fun b!6736313 () Bool)

(assert (=> b!6736313 (= e!4069200 call!608679)))

(declare-fun b!6736314 () Bool)

(declare-fun e!4069199 () (InoxSet Context!11894))

(declare-fun call!608677 () (InoxSet Context!11894))

(assert (=> b!6736314 (= e!4069199 ((_ map or) call!608680 call!608677))))

(declare-fun b!6736315 () Bool)

(assert (=> b!6736315 (= c!1249385 e!4069198)))

(declare-fun res!2755652 () Bool)

(assert (=> b!6736315 (=> (not res!2755652) (not e!4069198))))

(assert (=> b!6736315 (= res!2755652 ((_ is Concat!25408) (h!72312 (exprs!6447 lt!2438365))))))

(assert (=> b!6736315 (= e!4069202 e!4069199)))

(declare-fun bm!608676 () Bool)

(assert (=> bm!608676 (= call!608679 call!608677)))

(declare-fun b!6736317 () Bool)

(assert (=> b!6736317 (= e!4069199 e!4069200)))

(assert (=> b!6736317 (= c!1249384 ((_ is Concat!25408) (h!72312 (exprs!6447 lt!2438365))))))

(declare-fun bm!608677 () Bool)

(assert (=> bm!608677 (= call!608677 call!608682)))

(declare-fun b!6736318 () Bool)

(assert (=> b!6736318 (= e!4069197 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736319 () Bool)

(assert (=> b!6736319 (= e!4069202 ((_ map or) call!608682 call!608680))))

(declare-fun d!2116461 () Bool)

(declare-fun c!1249386 () Bool)

(assert (=> d!2116461 (= c!1249386 (and ((_ is ElementMatch!16563) (h!72312 (exprs!6447 lt!2438365))) (= (c!1249129 (h!72312 (exprs!6447 lt!2438365))) (h!72313 s!2326))))))

(assert (=> d!2116461 (= (derivationStepZipperDown!1791 (h!72312 (exprs!6447 lt!2438365)) (Context!11895 (t!379681 (exprs!6447 lt!2438365))) (h!72313 s!2326)) e!4069201)))

(declare-fun b!6736316 () Bool)

(assert (=> b!6736316 (= e!4069201 (store ((as const (Array Context!11894 Bool)) false) (Context!11895 (t!379681 (exprs!6447 lt!2438365))) true))))

(assert (= (and d!2116461 c!1249386) b!6736316))

(assert (= (and d!2116461 (not c!1249386)) b!6736309))

(assert (= (and b!6736309 c!1249388) b!6736319))

(assert (= (and b!6736309 (not c!1249388)) b!6736315))

(assert (= (and b!6736315 res!2755652) b!6736311))

(assert (= (and b!6736315 c!1249385) b!6736314))

(assert (= (and b!6736315 (not c!1249385)) b!6736317))

(assert (= (and b!6736317 c!1249384) b!6736313))

(assert (= (and b!6736317 (not c!1249384)) b!6736312))

(assert (= (and b!6736312 c!1249387) b!6736310))

(assert (= (and b!6736312 (not c!1249387)) b!6736318))

(assert (= (or b!6736313 b!6736310) bm!608672))

(assert (= (or b!6736313 b!6736310) bm!608676))

(assert (= (or b!6736314 bm!608672) bm!608674))

(assert (= (or b!6736314 bm!608676) bm!608677))

(assert (= (or b!6736319 b!6736314) bm!608673))

(assert (= (or b!6736319 bm!608677) bm!608675))

(declare-fun m!7493678 () Bool)

(assert (=> b!6736311 m!7493678))

(declare-fun m!7493680 () Bool)

(assert (=> bm!608675 m!7493680))

(declare-fun m!7493682 () Bool)

(assert (=> bm!608673 m!7493682))

(declare-fun m!7493684 () Bool)

(assert (=> b!6736316 m!7493684))

(declare-fun m!7493686 () Bool)

(assert (=> bm!608674 m!7493686))

(assert (=> bm!608636 d!2116461))

(declare-fun d!2116463 () Bool)

(assert (=> d!2116463 (= (Exists!3631 lambda!378256) (choose!50212 lambda!378256))))

(declare-fun bs!1791273 () Bool)

(assert (= bs!1791273 d!2116463))

(declare-fun m!7493688 () Bool)

(assert (=> bs!1791273 m!7493688))

(assert (=> d!2116373 d!2116463))

(declare-fun d!2116465 () Bool)

(assert (=> d!2116465 (= (Exists!3631 lambda!378257) (choose!50212 lambda!378257))))

(declare-fun bs!1791274 () Bool)

(assert (= bs!1791274 d!2116465))

(declare-fun m!7493690 () Bool)

(assert (=> bs!1791274 m!7493690))

(assert (=> d!2116373 d!2116465))

(declare-fun bs!1791275 () Bool)

(declare-fun d!2116467 () Bool)

(assert (= bs!1791275 (and d!2116467 b!6735399)))

(declare-fun lambda!378278 () Int)

(assert (=> bs!1791275 (not (= lambda!378278 lambda!378188))))

(declare-fun bs!1791276 () Bool)

(assert (= bs!1791276 (and d!2116467 d!2116367)))

(assert (=> bs!1791276 (not (= lambda!378278 lambda!378251))))

(declare-fun bs!1791277 () Bool)

(assert (= bs!1791277 (and d!2116467 d!2116373)))

(assert (=> bs!1791277 (not (= lambda!378278 lambda!378257))))

(declare-fun bs!1791278 () Bool)

(assert (= bs!1791278 (and d!2116467 b!6736211)))

(assert (=> bs!1791278 (not (= lambda!378278 lambda!378270))))

(assert (=> bs!1791277 (= lambda!378278 lambda!378256)))

(declare-fun bs!1791279 () Bool)

(assert (= bs!1791279 (and d!2116467 d!2116385)))

(assert (=> bs!1791279 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378278 lambda!378260))))

(assert (=> bs!1791275 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378278 lambda!378186))))

(declare-fun bs!1791280 () Bool)

(assert (= bs!1791280 (and d!2116467 b!6735505)))

(assert (=> bs!1791280 (not (= lambda!378278 lambda!378213))))

(assert (=> bs!1791275 (not (= lambda!378278 lambda!378187))))

(assert (=> bs!1791276 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378278 lambda!378250))))

(declare-fun bs!1791281 () Bool)

(assert (= bs!1791281 (and d!2116467 b!6736216)))

(assert (=> bs!1791281 (not (= lambda!378278 lambda!378271))))

(declare-fun bs!1791282 () Bool)

(assert (= bs!1791282 (and d!2116467 b!6735500)))

(assert (=> bs!1791282 (not (= lambda!378278 lambda!378210))))

(assert (=> d!2116467 true))

(assert (=> d!2116467 true))

(declare-fun lambda!378279 () Int)

(assert (=> bs!1791275 (not (= lambda!378279 lambda!378188))))

(assert (=> bs!1791276 (not (= lambda!378279 lambda!378251))))

(assert (=> bs!1791277 (= lambda!378279 lambda!378257)))

(assert (=> bs!1791278 (= (and (= (reg!16892 r!7292) (reg!16892 (regOne!33639 r!7292))) (= (Star!16563 (reg!16892 r!7292)) (regOne!33639 r!7292))) (= lambda!378279 lambda!378270))))

(assert (=> bs!1791277 (not (= lambda!378279 lambda!378256))))

(assert (=> bs!1791279 (not (= lambda!378279 lambda!378260))))

(declare-fun bs!1791283 () Bool)

(assert (= bs!1791283 d!2116467))

(assert (=> bs!1791283 (not (= lambda!378279 lambda!378278))))

(assert (=> bs!1791275 (not (= lambda!378279 lambda!378186))))

(assert (=> bs!1791280 (not (= lambda!378279 lambda!378213))))

(assert (=> bs!1791275 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378279 lambda!378187))))

(assert (=> bs!1791276 (not (= lambda!378279 lambda!378250))))

(assert (=> bs!1791281 (not (= lambda!378279 lambda!378271))))

(assert (=> bs!1791282 (= (= (Star!16563 (reg!16892 r!7292)) r!7292) (= lambda!378279 lambda!378210))))

(assert (=> d!2116467 true))

(assert (=> d!2116467 true))

(assert (=> d!2116467 (= (Exists!3631 lambda!378278) (Exists!3631 lambda!378279))))

(assert (=> d!2116467 true))

(declare-fun _$91!707 () Unit!159817)

(assert (=> d!2116467 (= (choose!50211 (reg!16892 r!7292) s!2326) _$91!707)))

(declare-fun m!7493692 () Bool)

(assert (=> bs!1791283 m!7493692))

(declare-fun m!7493694 () Bool)

(assert (=> bs!1791283 m!7493694))

(assert (=> d!2116373 d!2116467))

(declare-fun call!608685 () Bool)

(declare-fun c!1249390 () Bool)

(declare-fun c!1249389 () Bool)

(declare-fun bm!608678 () Bool)

(assert (=> bm!608678 (= call!608685 (validRegex!8299 (ite c!1249390 (reg!16892 (reg!16892 r!7292)) (ite c!1249389 (regTwo!33639 (reg!16892 r!7292)) (regTwo!33638 (reg!16892 r!7292))))))))

(declare-fun b!6736330 () Bool)

(declare-fun e!4069207 () Bool)

(declare-fun e!4069212 () Bool)

(assert (=> b!6736330 (= e!4069207 e!4069212)))

(assert (=> b!6736330 (= c!1249389 ((_ is Union!16563) (reg!16892 r!7292)))))

(declare-fun b!6736331 () Bool)

(declare-fun e!4069210 () Bool)

(declare-fun call!608684 () Bool)

(assert (=> b!6736331 (= e!4069210 call!608684)))

(declare-fun b!6736332 () Bool)

(declare-fun e!4069211 () Bool)

(declare-fun e!4069213 () Bool)

(assert (=> b!6736332 (= e!4069211 e!4069213)))

(declare-fun res!2755663 () Bool)

(assert (=> b!6736332 (=> (not res!2755663) (not e!4069213))))

(declare-fun call!608683 () Bool)

(assert (=> b!6736332 (= res!2755663 call!608683)))

(declare-fun b!6736333 () Bool)

(declare-fun res!2755665 () Bool)

(assert (=> b!6736333 (=> res!2755665 e!4069211)))

(assert (=> b!6736333 (= res!2755665 (not ((_ is Concat!25408) (reg!16892 r!7292))))))

(assert (=> b!6736333 (= e!4069212 e!4069211)))

(declare-fun b!6736334 () Bool)

(declare-fun e!4069209 () Bool)

(assert (=> b!6736334 (= e!4069209 call!608685)))

(declare-fun b!6736335 () Bool)

(assert (=> b!6736335 (= e!4069207 e!4069209)))

(declare-fun res!2755666 () Bool)

(assert (=> b!6736335 (= res!2755666 (not (nullable!6550 (reg!16892 (reg!16892 r!7292)))))))

(assert (=> b!6736335 (=> (not res!2755666) (not e!4069209))))

(declare-fun bm!608679 () Bool)

(assert (=> bm!608679 (= call!608684 call!608685)))

(declare-fun b!6736336 () Bool)

(declare-fun e!4069208 () Bool)

(assert (=> b!6736336 (= e!4069208 e!4069207)))

(assert (=> b!6736336 (= c!1249390 ((_ is Star!16563) (reg!16892 r!7292)))))

(declare-fun b!6736337 () Bool)

(declare-fun res!2755667 () Bool)

(assert (=> b!6736337 (=> (not res!2755667) (not e!4069210))))

(assert (=> b!6736337 (= res!2755667 call!608683)))

(assert (=> b!6736337 (= e!4069212 e!4069210)))

(declare-fun bm!608680 () Bool)

(assert (=> bm!608680 (= call!608683 (validRegex!8299 (ite c!1249389 (regOne!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))))))

(declare-fun b!6736338 () Bool)

(assert (=> b!6736338 (= e!4069213 call!608684)))

(declare-fun d!2116469 () Bool)

(declare-fun res!2755664 () Bool)

(assert (=> d!2116469 (=> res!2755664 e!4069208)))

(assert (=> d!2116469 (= res!2755664 ((_ is ElementMatch!16563) (reg!16892 r!7292)))))

(assert (=> d!2116469 (= (validRegex!8299 (reg!16892 r!7292)) e!4069208)))

(assert (= (and d!2116469 (not res!2755664)) b!6736336))

(assert (= (and b!6736336 c!1249390) b!6736335))

(assert (= (and b!6736336 (not c!1249390)) b!6736330))

(assert (= (and b!6736335 res!2755666) b!6736334))

(assert (= (and b!6736330 c!1249389) b!6736337))

(assert (= (and b!6736330 (not c!1249389)) b!6736333))

(assert (= (and b!6736337 res!2755667) b!6736331))

(assert (= (and b!6736333 (not res!2755665)) b!6736332))

(assert (= (and b!6736332 res!2755663) b!6736338))

(assert (= (or b!6736331 b!6736338) bm!608679))

(assert (= (or b!6736337 b!6736332) bm!608680))

(assert (= (or b!6736334 bm!608679) bm!608678))

(declare-fun m!7493696 () Bool)

(assert (=> bm!608678 m!7493696))

(declare-fun m!7493698 () Bool)

(assert (=> b!6736335 m!7493698))

(declare-fun m!7493700 () Bool)

(assert (=> bm!608680 m!7493700))

(assert (=> d!2116373 d!2116469))

(declare-fun b!6736339 () Bool)

(declare-fun e!4069218 () (InoxSet Context!11894))

(declare-fun e!4069219 () (InoxSet Context!11894))

(assert (=> b!6736339 (= e!4069218 e!4069219)))

(declare-fun c!1249395 () Bool)

(assert (=> b!6736339 (= c!1249395 ((_ is Union!16563) (h!72312 (exprs!6447 lt!2438378))))))

(declare-fun bm!608681 () Bool)

(declare-fun call!608690 () List!65988)

(declare-fun call!608687 () List!65988)

(assert (=> bm!608681 (= call!608690 call!608687)))

(declare-fun bm!608682 () Bool)

(declare-fun call!608689 () (InoxSet Context!11894))

(assert (=> bm!608682 (= call!608689 (derivationStepZipperDown!1791 (ite c!1249395 (regTwo!33639 (h!72312 (exprs!6447 lt!2438378))) (regOne!33638 (h!72312 (exprs!6447 lt!2438378)))) (ite c!1249395 (Context!11895 (t!379681 (exprs!6447 lt!2438378))) (Context!11895 call!608687)) (h!72313 s!2326)))))

(declare-fun b!6736340 () Bool)

(declare-fun e!4069214 () (InoxSet Context!11894))

(declare-fun call!608688 () (InoxSet Context!11894))

(assert (=> b!6736340 (= e!4069214 call!608688)))

(declare-fun bm!608683 () Bool)

(declare-fun c!1249392 () Bool)

(declare-fun c!1249391 () Bool)

(assert (=> bm!608683 (= call!608687 ($colon$colon!2380 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438378)))) (ite (or c!1249392 c!1249391) (regTwo!33638 (h!72312 (exprs!6447 lt!2438378))) (h!72312 (exprs!6447 lt!2438378)))))))

(declare-fun b!6736341 () Bool)

(declare-fun e!4069215 () Bool)

(assert (=> b!6736341 (= e!4069215 (nullable!6550 (regOne!33638 (h!72312 (exprs!6447 lt!2438378)))))))

(declare-fun bm!608684 () Bool)

(declare-fun call!608691 () (InoxSet Context!11894))

(assert (=> bm!608684 (= call!608691 (derivationStepZipperDown!1791 (ite c!1249395 (regOne!33639 (h!72312 (exprs!6447 lt!2438378))) (ite c!1249392 (regTwo!33638 (h!72312 (exprs!6447 lt!2438378))) (ite c!1249391 (regOne!33638 (h!72312 (exprs!6447 lt!2438378))) (reg!16892 (h!72312 (exprs!6447 lt!2438378)))))) (ite (or c!1249395 c!1249392) (Context!11895 (t!379681 (exprs!6447 lt!2438378))) (Context!11895 call!608690)) (h!72313 s!2326)))))

(declare-fun b!6736342 () Bool)

(declare-fun c!1249394 () Bool)

(assert (=> b!6736342 (= c!1249394 ((_ is Star!16563) (h!72312 (exprs!6447 lt!2438378))))))

(declare-fun e!4069217 () (InoxSet Context!11894))

(assert (=> b!6736342 (= e!4069217 e!4069214)))

(declare-fun b!6736343 () Bool)

(assert (=> b!6736343 (= e!4069217 call!608688)))

(declare-fun b!6736344 () Bool)

(declare-fun e!4069216 () (InoxSet Context!11894))

(declare-fun call!608686 () (InoxSet Context!11894))

(assert (=> b!6736344 (= e!4069216 ((_ map or) call!608689 call!608686))))

(declare-fun b!6736345 () Bool)

(assert (=> b!6736345 (= c!1249392 e!4069215)))

(declare-fun res!2755668 () Bool)

(assert (=> b!6736345 (=> (not res!2755668) (not e!4069215))))

(assert (=> b!6736345 (= res!2755668 ((_ is Concat!25408) (h!72312 (exprs!6447 lt!2438378))))))

(assert (=> b!6736345 (= e!4069219 e!4069216)))

(declare-fun bm!608685 () Bool)

(assert (=> bm!608685 (= call!608688 call!608686)))

(declare-fun b!6736347 () Bool)

(assert (=> b!6736347 (= e!4069216 e!4069217)))

(assert (=> b!6736347 (= c!1249391 ((_ is Concat!25408) (h!72312 (exprs!6447 lt!2438378))))))

(declare-fun bm!608686 () Bool)

(assert (=> bm!608686 (= call!608686 call!608691)))

(declare-fun b!6736348 () Bool)

(assert (=> b!6736348 (= e!4069214 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736349 () Bool)

(assert (=> b!6736349 (= e!4069219 ((_ map or) call!608691 call!608689))))

(declare-fun d!2116471 () Bool)

(declare-fun c!1249393 () Bool)

(assert (=> d!2116471 (= c!1249393 (and ((_ is ElementMatch!16563) (h!72312 (exprs!6447 lt!2438378))) (= (c!1249129 (h!72312 (exprs!6447 lt!2438378))) (h!72313 s!2326))))))

(assert (=> d!2116471 (= (derivationStepZipperDown!1791 (h!72312 (exprs!6447 lt!2438378)) (Context!11895 (t!379681 (exprs!6447 lt!2438378))) (h!72313 s!2326)) e!4069218)))

(declare-fun b!6736346 () Bool)

(assert (=> b!6736346 (= e!4069218 (store ((as const (Array Context!11894 Bool)) false) (Context!11895 (t!379681 (exprs!6447 lt!2438378))) true))))

(assert (= (and d!2116471 c!1249393) b!6736346))

(assert (= (and d!2116471 (not c!1249393)) b!6736339))

(assert (= (and b!6736339 c!1249395) b!6736349))

(assert (= (and b!6736339 (not c!1249395)) b!6736345))

(assert (= (and b!6736345 res!2755668) b!6736341))

(assert (= (and b!6736345 c!1249392) b!6736344))

(assert (= (and b!6736345 (not c!1249392)) b!6736347))

(assert (= (and b!6736347 c!1249391) b!6736343))

(assert (= (and b!6736347 (not c!1249391)) b!6736342))

(assert (= (and b!6736342 c!1249394) b!6736340))

(assert (= (and b!6736342 (not c!1249394)) b!6736348))

(assert (= (or b!6736343 b!6736340) bm!608681))

(assert (= (or b!6736343 b!6736340) bm!608685))

(assert (= (or b!6736344 bm!608681) bm!608683))

(assert (= (or b!6736344 bm!608685) bm!608686))

(assert (= (or b!6736349 b!6736344) bm!608682))

(assert (= (or b!6736349 bm!608686) bm!608684))

(declare-fun m!7493702 () Bool)

(assert (=> b!6736341 m!7493702))

(declare-fun m!7493704 () Bool)

(assert (=> bm!608684 m!7493704))

(declare-fun m!7493706 () Bool)

(assert (=> bm!608682 m!7493706))

(declare-fun m!7493708 () Bool)

(assert (=> b!6736346 m!7493708))

(declare-fun m!7493710 () Bool)

(assert (=> bm!608683 m!7493710))

(assert (=> bm!608635 d!2116471))

(declare-fun b!6736352 () Bool)

(declare-fun res!2755669 () Bool)

(declare-fun e!4069220 () Bool)

(assert (=> b!6736352 (=> (not res!2755669) (not e!4069220))))

(declare-fun lt!2438477 () List!65989)

(assert (=> b!6736352 (= res!2755669 (= (size!40612 lt!2438477) (+ (size!40612 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865))) (size!40612 (t!379682 s!2326)))))))

(declare-fun b!6736351 () Bool)

(declare-fun e!4069221 () List!65989)

(assert (=> b!6736351 (= e!4069221 (Cons!65865 (h!72313 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865))) (++!14719 (t!379682 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865))) (t!379682 s!2326))))))

(declare-fun b!6736353 () Bool)

(assert (=> b!6736353 (= e!4069220 (or (not (= (t!379682 s!2326) Nil!65865)) (= lt!2438477 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)))))))

(declare-fun b!6736350 () Bool)

(assert (=> b!6736350 (= e!4069221 (t!379682 s!2326))))

(declare-fun d!2116473 () Bool)

(assert (=> d!2116473 e!4069220))

(declare-fun res!2755670 () Bool)

(assert (=> d!2116473 (=> (not res!2755670) (not e!4069220))))

(assert (=> d!2116473 (= res!2755670 (= (content!12796 lt!2438477) ((_ map or) (content!12796 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865))) (content!12796 (t!379682 s!2326)))))))

(assert (=> d!2116473 (= lt!2438477 e!4069221)))

(declare-fun c!1249396 () Bool)

(assert (=> d!2116473 (= c!1249396 ((_ is Nil!65865) (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865))))))

(assert (=> d!2116473 (= (++!14719 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (t!379682 s!2326)) lt!2438477)))

(assert (= (and d!2116473 c!1249396) b!6736350))

(assert (= (and d!2116473 (not c!1249396)) b!6736351))

(assert (= (and d!2116473 res!2755670) b!6736352))

(assert (= (and b!6736352 res!2755669) b!6736353))

(declare-fun m!7493712 () Bool)

(assert (=> b!6736352 m!7493712))

(assert (=> b!6736352 m!7493472))

(declare-fun m!7493714 () Bool)

(assert (=> b!6736352 m!7493714))

(declare-fun m!7493716 () Bool)

(assert (=> b!6736352 m!7493716))

(declare-fun m!7493718 () Bool)

(assert (=> b!6736351 m!7493718))

(declare-fun m!7493720 () Bool)

(assert (=> d!2116473 m!7493720))

(assert (=> d!2116473 m!7493472))

(declare-fun m!7493722 () Bool)

(assert (=> d!2116473 m!7493722))

(declare-fun m!7493724 () Bool)

(assert (=> d!2116473 m!7493724))

(assert (=> b!6736036 d!2116473))

(declare-fun b!6736356 () Bool)

(declare-fun res!2755671 () Bool)

(declare-fun e!4069222 () Bool)

(assert (=> b!6736356 (=> (not res!2755671) (not e!4069222))))

(declare-fun lt!2438478 () List!65989)

(assert (=> b!6736356 (= res!2755671 (= (size!40612 lt!2438478) (+ (size!40612 Nil!65865) (size!40612 (Cons!65865 (h!72313 s!2326) Nil!65865)))))))

(declare-fun b!6736355 () Bool)

(declare-fun e!4069223 () List!65989)

(assert (=> b!6736355 (= e!4069223 (Cons!65865 (h!72313 Nil!65865) (++!14719 (t!379682 Nil!65865) (Cons!65865 (h!72313 s!2326) Nil!65865))))))

(declare-fun b!6736357 () Bool)

(assert (=> b!6736357 (= e!4069222 (or (not (= (Cons!65865 (h!72313 s!2326) Nil!65865) Nil!65865)) (= lt!2438478 Nil!65865)))))

(declare-fun b!6736354 () Bool)

(assert (=> b!6736354 (= e!4069223 (Cons!65865 (h!72313 s!2326) Nil!65865))))

(declare-fun d!2116475 () Bool)

(assert (=> d!2116475 e!4069222))

(declare-fun res!2755672 () Bool)

(assert (=> d!2116475 (=> (not res!2755672) (not e!4069222))))

(assert (=> d!2116475 (= res!2755672 (= (content!12796 lt!2438478) ((_ map or) (content!12796 Nil!65865) (content!12796 (Cons!65865 (h!72313 s!2326) Nil!65865)))))))

(assert (=> d!2116475 (= lt!2438478 e!4069223)))

(declare-fun c!1249397 () Bool)

(assert (=> d!2116475 (= c!1249397 ((_ is Nil!65865) Nil!65865))))

(assert (=> d!2116475 (= (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) lt!2438478)))

(assert (= (and d!2116475 c!1249397) b!6736354))

(assert (= (and d!2116475 (not c!1249397)) b!6736355))

(assert (= (and d!2116475 res!2755672) b!6736356))

(assert (= (and b!6736356 res!2755671) b!6736357))

(declare-fun m!7493726 () Bool)

(assert (=> b!6736356 m!7493726))

(declare-fun m!7493728 () Bool)

(assert (=> b!6736356 m!7493728))

(declare-fun m!7493730 () Bool)

(assert (=> b!6736356 m!7493730))

(declare-fun m!7493732 () Bool)

(assert (=> b!6736355 m!7493732))

(declare-fun m!7493734 () Bool)

(assert (=> d!2116475 m!7493734))

(declare-fun m!7493736 () Bool)

(assert (=> d!2116475 m!7493736))

(declare-fun m!7493738 () Bool)

(assert (=> d!2116475 m!7493738))

(assert (=> b!6736036 d!2116475))

(declare-fun d!2116477 () Bool)

(assert (=> d!2116477 (= (++!14719 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (t!379682 s!2326)) s!2326)))

(declare-fun lt!2438481 () Unit!159817)

(declare-fun choose!50215 (List!65989 C!33396 List!65989 List!65989) Unit!159817)

(assert (=> d!2116477 (= lt!2438481 (choose!50215 Nil!65865 (h!72313 s!2326) (t!379682 s!2326) s!2326))))

(assert (=> d!2116477 (= (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) (t!379682 s!2326))) s!2326)))

(assert (=> d!2116477 (= (lemmaMoveElementToOtherListKeepsConcatEq!2692 Nil!65865 (h!72313 s!2326) (t!379682 s!2326) s!2326) lt!2438481)))

(declare-fun bs!1791284 () Bool)

(assert (= bs!1791284 d!2116477))

(assert (=> bs!1791284 m!7493472))

(assert (=> bs!1791284 m!7493472))

(assert (=> bs!1791284 m!7493474))

(declare-fun m!7493740 () Bool)

(assert (=> bs!1791284 m!7493740))

(declare-fun m!7493742 () Bool)

(assert (=> bs!1791284 m!7493742))

(assert (=> b!6736036 d!2116477))

(declare-fun d!2116479 () Bool)

(declare-fun e!4069225 () Bool)

(assert (=> d!2116479 e!4069225))

(declare-fun res!2755673 () Bool)

(assert (=> d!2116479 (=> res!2755673 e!4069225)))

(declare-fun e!4069224 () Bool)

(assert (=> d!2116479 (= res!2755673 e!4069224)))

(declare-fun res!2755674 () Bool)

(assert (=> d!2116479 (=> (not res!2755674) (not e!4069224))))

(declare-fun lt!2438484 () Option!16450)

(assert (=> d!2116479 (= res!2755674 (isDefined!13153 lt!2438484))))

(declare-fun e!4069228 () Option!16450)

(assert (=> d!2116479 (= lt!2438484 e!4069228)))

(declare-fun c!1249398 () Bool)

(declare-fun e!4069227 () Bool)

(assert (=> d!2116479 (= c!1249398 e!4069227)))

(declare-fun res!2755677 () Bool)

(assert (=> d!2116479 (=> (not res!2755677) (not e!4069227))))

(assert (=> d!2116479 (= res!2755677 (matchR!8746 (reg!16892 r!7292) (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865))))))

(assert (=> d!2116479 (validRegex!8299 (reg!16892 r!7292))))

(assert (=> d!2116479 (= (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (t!379682 s!2326) s!2326) lt!2438484)))

(declare-fun b!6736358 () Bool)

(assert (=> b!6736358 (= e!4069224 (= (++!14719 (_1!36841 (get!22916 lt!2438484)) (_2!36841 (get!22916 lt!2438484))) s!2326))))

(declare-fun b!6736359 () Bool)

(declare-fun e!4069226 () Option!16450)

(assert (=> b!6736359 (= e!4069228 e!4069226)))

(declare-fun c!1249399 () Bool)

(assert (=> b!6736359 (= c!1249399 ((_ is Nil!65865) (t!379682 s!2326)))))

(declare-fun b!6736360 () Bool)

(assert (=> b!6736360 (= e!4069227 (matchR!8746 r!7292 (t!379682 s!2326)))))

(declare-fun b!6736361 () Bool)

(assert (=> b!6736361 (= e!4069226 None!16449)))

(declare-fun b!6736362 () Bool)

(assert (=> b!6736362 (= e!4069225 (not (isDefined!13153 lt!2438484)))))

(declare-fun b!6736363 () Bool)

(assert (=> b!6736363 (= e!4069228 (Some!16449 (tuple2!67077 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (t!379682 s!2326))))))

(declare-fun b!6736364 () Bool)

(declare-fun res!2755676 () Bool)

(assert (=> b!6736364 (=> (not res!2755676) (not e!4069224))))

(assert (=> b!6736364 (= res!2755676 (matchR!8746 r!7292 (_2!36841 (get!22916 lt!2438484))))))

(declare-fun b!6736365 () Bool)

(declare-fun res!2755675 () Bool)

(assert (=> b!6736365 (=> (not res!2755675) (not e!4069224))))

(assert (=> b!6736365 (= res!2755675 (matchR!8746 (reg!16892 r!7292) (_1!36841 (get!22916 lt!2438484))))))

(declare-fun b!6736366 () Bool)

(declare-fun lt!2438482 () Unit!159817)

(declare-fun lt!2438483 () Unit!159817)

(assert (=> b!6736366 (= lt!2438482 lt!2438483)))

(assert (=> b!6736366 (= (++!14719 (++!14719 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (Cons!65865 (h!72313 (t!379682 s!2326)) Nil!65865)) (t!379682 (t!379682 s!2326))) s!2326)))

(assert (=> b!6736366 (= lt!2438483 (lemmaMoveElementToOtherListKeepsConcatEq!2692 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (h!72313 (t!379682 s!2326)) (t!379682 (t!379682 s!2326)) s!2326))))

(assert (=> b!6736366 (= e!4069226 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 (++!14719 (++!14719 Nil!65865 (Cons!65865 (h!72313 s!2326) Nil!65865)) (Cons!65865 (h!72313 (t!379682 s!2326)) Nil!65865)) (t!379682 (t!379682 s!2326)) s!2326))))

(assert (= (and d!2116479 res!2755677) b!6736360))

(assert (= (and d!2116479 c!1249398) b!6736363))

(assert (= (and d!2116479 (not c!1249398)) b!6736359))

(assert (= (and b!6736359 c!1249399) b!6736361))

(assert (= (and b!6736359 (not c!1249399)) b!6736366))

(assert (= (and d!2116479 res!2755674) b!6736365))

(assert (= (and b!6736365 res!2755675) b!6736364))

(assert (= (and b!6736364 res!2755676) b!6736358))

(assert (= (and d!2116479 (not res!2755673)) b!6736362))

(declare-fun m!7493744 () Bool)

(assert (=> d!2116479 m!7493744))

(assert (=> d!2116479 m!7493472))

(declare-fun m!7493746 () Bool)

(assert (=> d!2116479 m!7493746))

(assert (=> d!2116479 m!7493446))

(declare-fun m!7493748 () Bool)

(assert (=> b!6736364 m!7493748))

(declare-fun m!7493750 () Bool)

(assert (=> b!6736364 m!7493750))

(assert (=> b!6736362 m!7493744))

(assert (=> b!6736365 m!7493748))

(declare-fun m!7493752 () Bool)

(assert (=> b!6736365 m!7493752))

(assert (=> b!6736358 m!7493748))

(declare-fun m!7493754 () Bool)

(assert (=> b!6736358 m!7493754))

(declare-fun m!7493756 () Bool)

(assert (=> b!6736360 m!7493756))

(assert (=> b!6736366 m!7493472))

(declare-fun m!7493758 () Bool)

(assert (=> b!6736366 m!7493758))

(assert (=> b!6736366 m!7493758))

(declare-fun m!7493760 () Bool)

(assert (=> b!6736366 m!7493760))

(assert (=> b!6736366 m!7493472))

(declare-fun m!7493762 () Bool)

(assert (=> b!6736366 m!7493762))

(assert (=> b!6736366 m!7493758))

(declare-fun m!7493764 () Bool)

(assert (=> b!6736366 m!7493764))

(assert (=> b!6736036 d!2116479))

(declare-fun d!2116481 () Bool)

(declare-fun lambda!378282 () Int)

(declare-fun exists!2697 ((InoxSet Context!11894) Int) Bool)

(assert (=> d!2116481 (= (nullableZipper!2278 lt!2438370) (exists!2697 lt!2438370 lambda!378282))))

(declare-fun bs!1791285 () Bool)

(assert (= bs!1791285 d!2116481))

(declare-fun m!7493766 () Bool)

(assert (=> bs!1791285 m!7493766))

(assert (=> b!6735934 d!2116481))

(declare-fun e!4069229 () (InoxSet Context!11894))

(declare-fun b!6736367 () Bool)

(declare-fun call!608692 () (InoxSet Context!11894))

(assert (=> b!6736367 (= e!4069229 ((_ map or) call!608692 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438365)))))) (h!72313 s!2326))))))

(declare-fun d!2116483 () Bool)

(declare-fun c!1249402 () Bool)

(declare-fun e!4069231 () Bool)

(assert (=> d!2116483 (= c!1249402 e!4069231)))

(declare-fun res!2755678 () Bool)

(assert (=> d!2116483 (=> (not res!2755678) (not e!4069231))))

(assert (=> d!2116483 (= res!2755678 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438365))))))))

(assert (=> d!2116483 (= (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 lt!2438365))) (h!72313 s!2326)) e!4069229)))

(declare-fun b!6736368 () Bool)

(declare-fun e!4069230 () (InoxSet Context!11894))

(assert (=> b!6736368 (= e!4069230 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608687 () Bool)

(assert (=> bm!608687 (= call!608692 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438365))))) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438365)))))) (h!72313 s!2326)))))

(declare-fun b!6736369 () Bool)

(assert (=> b!6736369 (= e!4069229 e!4069230)))

(declare-fun c!1249403 () Bool)

(assert (=> b!6736369 (= c!1249403 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438365))))))))

(declare-fun b!6736370 () Bool)

(assert (=> b!6736370 (= e!4069230 call!608692)))

(declare-fun b!6736371 () Bool)

(assert (=> b!6736371 (= e!4069231 (nullable!6550 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438365)))))))))

(assert (= (and d!2116483 res!2755678) b!6736371))

(assert (= (and d!2116483 c!1249402) b!6736367))

(assert (= (and d!2116483 (not c!1249402)) b!6736369))

(assert (= (and b!6736369 c!1249403) b!6736370))

(assert (= (and b!6736369 (not c!1249403)) b!6736368))

(assert (= (or b!6736367 b!6736370) bm!608687))

(declare-fun m!7493768 () Bool)

(assert (=> b!6736367 m!7493768))

(declare-fun m!7493770 () Bool)

(assert (=> bm!608687 m!7493770))

(declare-fun m!7493772 () Bool)

(assert (=> b!6736371 m!7493772))

(assert (=> b!6736109 d!2116483))

(declare-fun d!2116485 () Bool)

(assert (=> d!2116485 (= (flatMap!2044 z!1189 lambda!378244) (choose!50208 z!1189 lambda!378244))))

(declare-fun bs!1791286 () Bool)

(assert (= bs!1791286 d!2116485))

(declare-fun m!7493774 () Bool)

(assert (=> bs!1791286 m!7493774))

(assert (=> d!2116355 d!2116485))

(declare-fun b!6736372 () Bool)

(declare-fun call!608693 () (InoxSet Context!11894))

(declare-fun e!4069232 () (InoxSet Context!11894))

(assert (=> b!6736372 (= e!4069232 ((_ map or) call!608693 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438378)))))) (h!72313 s!2326))))))

(declare-fun d!2116487 () Bool)

(declare-fun c!1249404 () Bool)

(declare-fun e!4069234 () Bool)

(assert (=> d!2116487 (= c!1249404 e!4069234)))

(declare-fun res!2755679 () Bool)

(assert (=> d!2116487 (=> (not res!2755679) (not e!4069234))))

(assert (=> d!2116487 (= res!2755679 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438378))))))))

(assert (=> d!2116487 (= (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 lt!2438378))) (h!72313 s!2326)) e!4069232)))

(declare-fun b!6736373 () Bool)

(declare-fun e!4069233 () (InoxSet Context!11894))

(assert (=> b!6736373 (= e!4069233 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608688 () Bool)

(assert (=> bm!608688 (= call!608693 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438378))))) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438378)))))) (h!72313 s!2326)))))

(declare-fun b!6736374 () Bool)

(assert (=> b!6736374 (= e!4069232 e!4069233)))

(declare-fun c!1249405 () Bool)

(assert (=> b!6736374 (= c!1249405 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438378))))))))

(declare-fun b!6736375 () Bool)

(assert (=> b!6736375 (= e!4069233 call!608693)))

(declare-fun b!6736376 () Bool)

(assert (=> b!6736376 (= e!4069234 (nullable!6550 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438378)))))))))

(assert (= (and d!2116487 res!2755679) b!6736376))

(assert (= (and d!2116487 c!1249404) b!6736372))

(assert (= (and d!2116487 (not c!1249404)) b!6736374))

(assert (= (and b!6736374 c!1249405) b!6736375))

(assert (= (and b!6736374 (not c!1249405)) b!6736373))

(assert (= (or b!6736372 b!6736375) bm!608688))

(declare-fun m!7493776 () Bool)

(assert (=> b!6736372 m!7493776))

(declare-fun m!7493778 () Bool)

(assert (=> bm!608688 m!7493778))

(declare-fun m!7493780 () Bool)

(assert (=> b!6736376 m!7493780))

(assert (=> b!6736104 d!2116487))

(declare-fun call!608696 () Bool)

(declare-fun c!1249406 () Bool)

(declare-fun c!1249407 () Bool)

(declare-fun bm!608689 () Bool)

(assert (=> bm!608689 (= call!608696 (validRegex!8299 (ite c!1249407 (reg!16892 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))) (ite c!1249406 (regTwo!33639 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))) (regTwo!33638 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292))))))))))

(declare-fun b!6736377 () Bool)

(declare-fun e!4069235 () Bool)

(declare-fun e!4069240 () Bool)

(assert (=> b!6736377 (= e!4069235 e!4069240)))

(assert (=> b!6736377 (= c!1249406 ((_ is Union!16563) (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))))))

(declare-fun b!6736378 () Bool)

(declare-fun e!4069238 () Bool)

(declare-fun call!608695 () Bool)

(assert (=> b!6736378 (= e!4069238 call!608695)))

(declare-fun b!6736379 () Bool)

(declare-fun e!4069239 () Bool)

(declare-fun e!4069241 () Bool)

(assert (=> b!6736379 (= e!4069239 e!4069241)))

(declare-fun res!2755680 () Bool)

(assert (=> b!6736379 (=> (not res!2755680) (not e!4069241))))

(declare-fun call!608694 () Bool)

(assert (=> b!6736379 (= res!2755680 call!608694)))

(declare-fun b!6736380 () Bool)

(declare-fun res!2755682 () Bool)

(assert (=> b!6736380 (=> res!2755682 e!4069239)))

(assert (=> b!6736380 (= res!2755682 (not ((_ is Concat!25408) (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292))))))))

(assert (=> b!6736380 (= e!4069240 e!4069239)))

(declare-fun b!6736381 () Bool)

(declare-fun e!4069237 () Bool)

(assert (=> b!6736381 (= e!4069237 call!608696)))

(declare-fun b!6736382 () Bool)

(assert (=> b!6736382 (= e!4069235 e!4069237)))

(declare-fun res!2755683 () Bool)

(assert (=> b!6736382 (= res!2755683 (not (nullable!6550 (reg!16892 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))))))))

(assert (=> b!6736382 (=> (not res!2755683) (not e!4069237))))

(declare-fun bm!608690 () Bool)

(assert (=> bm!608690 (= call!608695 call!608696)))

(declare-fun b!6736383 () Bool)

(declare-fun e!4069236 () Bool)

(assert (=> b!6736383 (= e!4069236 e!4069235)))

(assert (=> b!6736383 (= c!1249407 ((_ is Star!16563) (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))))))

(declare-fun b!6736384 () Bool)

(declare-fun res!2755684 () Bool)

(assert (=> b!6736384 (=> (not res!2755684) (not e!4069238))))

(assert (=> b!6736384 (= res!2755684 call!608694)))

(assert (=> b!6736384 (= e!4069240 e!4069238)))

(declare-fun bm!608691 () Bool)

(assert (=> bm!608691 (= call!608694 (validRegex!8299 (ite c!1249406 (regOne!33639 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))) (regOne!33638 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))))))))

(declare-fun b!6736385 () Bool)

(assert (=> b!6736385 (= e!4069241 call!608695)))

(declare-fun d!2116489 () Bool)

(declare-fun res!2755681 () Bool)

(assert (=> d!2116489 (=> res!2755681 e!4069236)))

(assert (=> d!2116489 (= res!2755681 ((_ is ElementMatch!16563) (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))))))

(assert (=> d!2116489 (= (validRegex!8299 (ite c!1249325 (reg!16892 r!7292) (ite c!1249324 (regTwo!33639 r!7292) (regTwo!33638 r!7292)))) e!4069236)))

(assert (= (and d!2116489 (not res!2755681)) b!6736383))

(assert (= (and b!6736383 c!1249407) b!6736382))

(assert (= (and b!6736383 (not c!1249407)) b!6736377))

(assert (= (and b!6736382 res!2755683) b!6736381))

(assert (= (and b!6736377 c!1249406) b!6736384))

(assert (= (and b!6736377 (not c!1249406)) b!6736380))

(assert (= (and b!6736384 res!2755684) b!6736378))

(assert (= (and b!6736380 (not res!2755682)) b!6736379))

(assert (= (and b!6736379 res!2755680) b!6736385))

(assert (= (or b!6736378 b!6736385) bm!608690))

(assert (= (or b!6736384 b!6736379) bm!608691))

(assert (= (or b!6736381 bm!608690) bm!608689))

(declare-fun m!7493782 () Bool)

(assert (=> bm!608689 m!7493782))

(declare-fun m!7493784 () Bool)

(assert (=> b!6736382 m!7493784))

(declare-fun m!7493786 () Bool)

(assert (=> bm!608691 m!7493786))

(assert (=> bm!608632 d!2116489))

(declare-fun d!2116491 () Bool)

(assert (=> d!2116491 (= (nullable!6550 (regOne!33638 (reg!16892 r!7292))) (nullableFct!2463 (regOne!33638 (reg!16892 r!7292))))))

(declare-fun bs!1791287 () Bool)

(assert (= bs!1791287 d!2116491))

(declare-fun m!7493788 () Bool)

(assert (=> bs!1791287 m!7493788))

(assert (=> b!6735726 d!2116491))

(assert (=> d!2116383 d!2116459))

(declare-fun d!2116493 () Bool)

(declare-fun e!4069243 () Bool)

(assert (=> d!2116493 e!4069243))

(declare-fun c!1249408 () Bool)

(assert (=> d!2116493 (= c!1249408 ((_ is EmptyExpr!16563) (reg!16892 r!7292)))))

(declare-fun lt!2438485 () Bool)

(declare-fun e!4069244 () Bool)

(assert (=> d!2116493 (= lt!2438485 e!4069244)))

(declare-fun c!1249409 () Bool)

(assert (=> d!2116493 (= c!1249409 (isEmpty!38201 Nil!65865))))

(assert (=> d!2116493 (validRegex!8299 (reg!16892 r!7292))))

(assert (=> d!2116493 (= (matchR!8746 (reg!16892 r!7292) Nil!65865) lt!2438485)))

(declare-fun bm!608692 () Bool)

(declare-fun call!608697 () Bool)

(assert (=> bm!608692 (= call!608697 (isEmpty!38201 Nil!65865))))

(declare-fun b!6736386 () Bool)

(assert (=> b!6736386 (= e!4069243 (= lt!2438485 call!608697))))

(declare-fun b!6736387 () Bool)

(declare-fun res!2755686 () Bool)

(declare-fun e!4069248 () Bool)

(assert (=> b!6736387 (=> (not res!2755686) (not e!4069248))))

(assert (=> b!6736387 (= res!2755686 (not call!608697))))

(declare-fun b!6736388 () Bool)

(declare-fun e!4069245 () Bool)

(declare-fun e!4069247 () Bool)

(assert (=> b!6736388 (= e!4069245 e!4069247)))

(declare-fun res!2755691 () Bool)

(assert (=> b!6736388 (=> (not res!2755691) (not e!4069247))))

(assert (=> b!6736388 (= res!2755691 (not lt!2438485))))

(declare-fun b!6736389 () Bool)

(declare-fun res!2755689 () Bool)

(assert (=> b!6736389 (=> res!2755689 e!4069245)))

(assert (=> b!6736389 (= res!2755689 (not ((_ is ElementMatch!16563) (reg!16892 r!7292))))))

(declare-fun e!4069246 () Bool)

(assert (=> b!6736389 (= e!4069246 e!4069245)))

(declare-fun b!6736390 () Bool)

(assert (=> b!6736390 (= e!4069244 (matchR!8746 (derivativeStep!5234 (reg!16892 r!7292) (head!13552 Nil!65865)) (tail!12638 Nil!65865)))))

(declare-fun b!6736391 () Bool)

(declare-fun res!2755692 () Bool)

(declare-fun e!4069242 () Bool)

(assert (=> b!6736391 (=> res!2755692 e!4069242)))

(assert (=> b!6736391 (= res!2755692 (not (isEmpty!38201 (tail!12638 Nil!65865))))))

(declare-fun b!6736392 () Bool)

(assert (=> b!6736392 (= e!4069246 (not lt!2438485))))

(declare-fun b!6736393 () Bool)

(declare-fun res!2755690 () Bool)

(assert (=> b!6736393 (=> (not res!2755690) (not e!4069248))))

(assert (=> b!6736393 (= res!2755690 (isEmpty!38201 (tail!12638 Nil!65865)))))

(declare-fun b!6736394 () Bool)

(assert (=> b!6736394 (= e!4069247 e!4069242)))

(declare-fun res!2755687 () Bool)

(assert (=> b!6736394 (=> res!2755687 e!4069242)))

(assert (=> b!6736394 (= res!2755687 call!608697)))

(declare-fun b!6736395 () Bool)

(assert (=> b!6736395 (= e!4069242 (not (= (head!13552 Nil!65865) (c!1249129 (reg!16892 r!7292)))))))

(declare-fun b!6736396 () Bool)

(assert (=> b!6736396 (= e!4069243 e!4069246)))

(declare-fun c!1249410 () Bool)

(assert (=> b!6736396 (= c!1249410 ((_ is EmptyLang!16563) (reg!16892 r!7292)))))

(declare-fun b!6736397 () Bool)

(assert (=> b!6736397 (= e!4069244 (nullable!6550 (reg!16892 r!7292)))))

(declare-fun b!6736398 () Bool)

(declare-fun res!2755685 () Bool)

(assert (=> b!6736398 (=> res!2755685 e!4069245)))

(assert (=> b!6736398 (= res!2755685 e!4069248)))

(declare-fun res!2755688 () Bool)

(assert (=> b!6736398 (=> (not res!2755688) (not e!4069248))))

(assert (=> b!6736398 (= res!2755688 lt!2438485)))

(declare-fun b!6736399 () Bool)

(assert (=> b!6736399 (= e!4069248 (= (head!13552 Nil!65865) (c!1249129 (reg!16892 r!7292))))))

(assert (= (and d!2116493 c!1249409) b!6736397))

(assert (= (and d!2116493 (not c!1249409)) b!6736390))

(assert (= (and d!2116493 c!1249408) b!6736386))

(assert (= (and d!2116493 (not c!1249408)) b!6736396))

(assert (= (and b!6736396 c!1249410) b!6736392))

(assert (= (and b!6736396 (not c!1249410)) b!6736389))

(assert (= (and b!6736389 (not res!2755689)) b!6736398))

(assert (= (and b!6736398 res!2755688) b!6736387))

(assert (= (and b!6736387 res!2755686) b!6736393))

(assert (= (and b!6736393 res!2755690) b!6736399))

(assert (= (and b!6736398 (not res!2755685)) b!6736388))

(assert (= (and b!6736388 res!2755691) b!6736394))

(assert (= (and b!6736394 (not res!2755687)) b!6736391))

(assert (= (and b!6736391 (not res!2755692)) b!6736395))

(assert (= (or b!6736386 b!6736387 b!6736394) bm!608692))

(assert (=> b!6736397 m!7493510))

(declare-fun m!7493790 () Bool)

(assert (=> b!6736391 m!7493790))

(assert (=> b!6736391 m!7493790))

(declare-fun m!7493792 () Bool)

(assert (=> b!6736391 m!7493792))

(declare-fun m!7493794 () Bool)

(assert (=> d!2116493 m!7493794))

(assert (=> d!2116493 m!7493446))

(declare-fun m!7493796 () Bool)

(assert (=> b!6736395 m!7493796))

(assert (=> b!6736390 m!7493796))

(assert (=> b!6736390 m!7493796))

(declare-fun m!7493798 () Bool)

(assert (=> b!6736390 m!7493798))

(assert (=> b!6736390 m!7493790))

(assert (=> b!6736390 m!7493798))

(assert (=> b!6736390 m!7493790))

(declare-fun m!7493800 () Bool)

(assert (=> b!6736390 m!7493800))

(assert (=> bm!608692 m!7493794))

(assert (=> b!6736393 m!7493790))

(assert (=> b!6736393 m!7493790))

(assert (=> b!6736393 m!7493792))

(assert (=> b!6736399 m!7493796))

(assert (=> d!2116383 d!2116493))

(assert (=> d!2116383 d!2116469))

(declare-fun e!4069249 () (InoxSet Context!11894))

(declare-fun call!608698 () (InoxSet Context!11894))

(declare-fun b!6736400 () Bool)

(assert (=> b!6736400 (= e!4069249 ((_ map or) call!608698 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343))))))) (h!72313 s!2326))))))

(declare-fun d!2116495 () Bool)

(declare-fun c!1249411 () Bool)

(declare-fun e!4069251 () Bool)

(assert (=> d!2116495 (= c!1249411 e!4069251)))

(declare-fun res!2755693 () Bool)

(assert (=> d!2116495 (=> (not res!2755693) (not e!4069251))))

(assert (=> d!2116495 (= res!2755693 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))))))))

(assert (=> d!2116495 (= (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))) (h!72313 s!2326)) e!4069249)))

(declare-fun b!6736401 () Bool)

(declare-fun e!4069250 () (InoxSet Context!11894))

(assert (=> b!6736401 (= e!4069250 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608693 () Bool)

(assert (=> bm!608693 (= call!608698 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))))) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343))))))) (h!72313 s!2326)))))

(declare-fun b!6736402 () Bool)

(assert (=> b!6736402 (= e!4069249 e!4069250)))

(declare-fun c!1249412 () Bool)

(assert (=> b!6736402 (= c!1249412 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))))))))

(declare-fun b!6736403 () Bool)

(assert (=> b!6736403 (= e!4069250 call!608698)))

(declare-fun b!6736404 () Bool)

(assert (=> b!6736404 (= e!4069251 (nullable!6550 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343))))))))))

(assert (= (and d!2116495 res!2755693) b!6736404))

(assert (= (and d!2116495 c!1249411) b!6736400))

(assert (= (and d!2116495 (not c!1249411)) b!6736402))

(assert (= (and b!6736402 c!1249412) b!6736403))

(assert (= (and b!6736402 (not c!1249412)) b!6736401))

(assert (= (or b!6736400 b!6736403) bm!608693))

(declare-fun m!7493802 () Bool)

(assert (=> b!6736400 m!7493802))

(declare-fun m!7493804 () Bool)

(assert (=> bm!608693 m!7493804))

(declare-fun m!7493806 () Bool)

(assert (=> b!6736404 m!7493806))

(assert (=> b!6735865 d!2116495))

(declare-fun d!2116497 () Bool)

(assert (=> d!2116497 (= (isEmpty!38205 (exprs!6447 (h!72314 zl!343))) ((_ is Nil!65864) (exprs!6447 (h!72314 zl!343))))))

(assert (=> b!6735855 d!2116497))

(declare-fun b!6736405 () Bool)

(declare-fun e!4069256 () (InoxSet Context!11894))

(declare-fun e!4069257 () (InoxSet Context!11894))

(assert (=> b!6736405 (= e!4069256 e!4069257)))

(declare-fun c!1249417 () Bool)

(assert (=> b!6736405 (= c!1249417 ((_ is Union!16563) (h!72312 (exprs!6447 lt!2438361))))))

(declare-fun bm!608694 () Bool)

(declare-fun call!608703 () List!65988)

(declare-fun call!608700 () List!65988)

(assert (=> bm!608694 (= call!608703 call!608700)))

(declare-fun call!608702 () (InoxSet Context!11894))

(declare-fun bm!608695 () Bool)

(assert (=> bm!608695 (= call!608702 (derivationStepZipperDown!1791 (ite c!1249417 (regTwo!33639 (h!72312 (exprs!6447 lt!2438361))) (regOne!33638 (h!72312 (exprs!6447 lt!2438361)))) (ite c!1249417 (Context!11895 (t!379681 (exprs!6447 lt!2438361))) (Context!11895 call!608700)) (h!72313 s!2326)))))

(declare-fun b!6736406 () Bool)

(declare-fun e!4069252 () (InoxSet Context!11894))

(declare-fun call!608701 () (InoxSet Context!11894))

(assert (=> b!6736406 (= e!4069252 call!608701)))

(declare-fun c!1249413 () Bool)

(declare-fun bm!608696 () Bool)

(declare-fun c!1249414 () Bool)

(assert (=> bm!608696 (= call!608700 ($colon$colon!2380 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438361)))) (ite (or c!1249414 c!1249413) (regTwo!33638 (h!72312 (exprs!6447 lt!2438361))) (h!72312 (exprs!6447 lt!2438361)))))))

(declare-fun b!6736407 () Bool)

(declare-fun e!4069253 () Bool)

(assert (=> b!6736407 (= e!4069253 (nullable!6550 (regOne!33638 (h!72312 (exprs!6447 lt!2438361)))))))

(declare-fun bm!608697 () Bool)

(declare-fun call!608704 () (InoxSet Context!11894))

(assert (=> bm!608697 (= call!608704 (derivationStepZipperDown!1791 (ite c!1249417 (regOne!33639 (h!72312 (exprs!6447 lt!2438361))) (ite c!1249414 (regTwo!33638 (h!72312 (exprs!6447 lt!2438361))) (ite c!1249413 (regOne!33638 (h!72312 (exprs!6447 lt!2438361))) (reg!16892 (h!72312 (exprs!6447 lt!2438361)))))) (ite (or c!1249417 c!1249414) (Context!11895 (t!379681 (exprs!6447 lt!2438361))) (Context!11895 call!608703)) (h!72313 s!2326)))))

(declare-fun b!6736408 () Bool)

(declare-fun c!1249416 () Bool)

(assert (=> b!6736408 (= c!1249416 ((_ is Star!16563) (h!72312 (exprs!6447 lt!2438361))))))

(declare-fun e!4069255 () (InoxSet Context!11894))

(assert (=> b!6736408 (= e!4069255 e!4069252)))

(declare-fun b!6736409 () Bool)

(assert (=> b!6736409 (= e!4069255 call!608701)))

(declare-fun b!6736410 () Bool)

(declare-fun e!4069254 () (InoxSet Context!11894))

(declare-fun call!608699 () (InoxSet Context!11894))

(assert (=> b!6736410 (= e!4069254 ((_ map or) call!608702 call!608699))))

(declare-fun b!6736411 () Bool)

(assert (=> b!6736411 (= c!1249414 e!4069253)))

(declare-fun res!2755694 () Bool)

(assert (=> b!6736411 (=> (not res!2755694) (not e!4069253))))

(assert (=> b!6736411 (= res!2755694 ((_ is Concat!25408) (h!72312 (exprs!6447 lt!2438361))))))

(assert (=> b!6736411 (= e!4069257 e!4069254)))

(declare-fun bm!608698 () Bool)

(assert (=> bm!608698 (= call!608701 call!608699)))

(declare-fun b!6736413 () Bool)

(assert (=> b!6736413 (= e!4069254 e!4069255)))

(assert (=> b!6736413 (= c!1249413 ((_ is Concat!25408) (h!72312 (exprs!6447 lt!2438361))))))

(declare-fun bm!608699 () Bool)

(assert (=> bm!608699 (= call!608699 call!608704)))

(declare-fun b!6736414 () Bool)

(assert (=> b!6736414 (= e!4069252 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736415 () Bool)

(assert (=> b!6736415 (= e!4069257 ((_ map or) call!608704 call!608702))))

(declare-fun d!2116499 () Bool)

(declare-fun c!1249415 () Bool)

(assert (=> d!2116499 (= c!1249415 (and ((_ is ElementMatch!16563) (h!72312 (exprs!6447 lt!2438361))) (= (c!1249129 (h!72312 (exprs!6447 lt!2438361))) (h!72313 s!2326))))))

(assert (=> d!2116499 (= (derivationStepZipperDown!1791 (h!72312 (exprs!6447 lt!2438361)) (Context!11895 (t!379681 (exprs!6447 lt!2438361))) (h!72313 s!2326)) e!4069256)))

(declare-fun b!6736412 () Bool)

(assert (=> b!6736412 (= e!4069256 (store ((as const (Array Context!11894 Bool)) false) (Context!11895 (t!379681 (exprs!6447 lt!2438361))) true))))

(assert (= (and d!2116499 c!1249415) b!6736412))

(assert (= (and d!2116499 (not c!1249415)) b!6736405))

(assert (= (and b!6736405 c!1249417) b!6736415))

(assert (= (and b!6736405 (not c!1249417)) b!6736411))

(assert (= (and b!6736411 res!2755694) b!6736407))

(assert (= (and b!6736411 c!1249414) b!6736410))

(assert (= (and b!6736411 (not c!1249414)) b!6736413))

(assert (= (and b!6736413 c!1249413) b!6736409))

(assert (= (and b!6736413 (not c!1249413)) b!6736408))

(assert (= (and b!6736408 c!1249416) b!6736406))

(assert (= (and b!6736408 (not c!1249416)) b!6736414))

(assert (= (or b!6736409 b!6736406) bm!608694))

(assert (= (or b!6736409 b!6736406) bm!608698))

(assert (= (or b!6736410 bm!608694) bm!608696))

(assert (= (or b!6736410 bm!608698) bm!608699))

(assert (= (or b!6736415 b!6736410) bm!608695))

(assert (= (or b!6736415 bm!608699) bm!608697))

(declare-fun m!7493808 () Bool)

(assert (=> b!6736407 m!7493808))

(declare-fun m!7493810 () Bool)

(assert (=> bm!608697 m!7493810))

(declare-fun m!7493812 () Bool)

(assert (=> bm!608695 m!7493812))

(declare-fun m!7493814 () Bool)

(assert (=> b!6736412 m!7493814))

(declare-fun m!7493816 () Bool)

(assert (=> bm!608696 m!7493816))

(assert (=> bm!608606 d!2116499))

(declare-fun d!2116501 () Bool)

(declare-fun res!2755699 () Bool)

(declare-fun e!4069262 () Bool)

(assert (=> d!2116501 (=> res!2755699 e!4069262)))

(assert (=> d!2116501 (= res!2755699 ((_ is Nil!65866) lt!2438412))))

(assert (=> d!2116501 (= (noDuplicate!2356 lt!2438412) e!4069262)))

(declare-fun b!6736420 () Bool)

(declare-fun e!4069263 () Bool)

(assert (=> b!6736420 (= e!4069262 e!4069263)))

(declare-fun res!2755700 () Bool)

(assert (=> b!6736420 (=> (not res!2755700) (not e!4069263))))

(declare-fun contains!20260 (List!65990 Context!11894) Bool)

(assert (=> b!6736420 (= res!2755700 (not (contains!20260 (t!379683 lt!2438412) (h!72314 lt!2438412))))))

(declare-fun b!6736421 () Bool)

(assert (=> b!6736421 (= e!4069263 (noDuplicate!2356 (t!379683 lt!2438412)))))

(assert (= (and d!2116501 (not res!2755699)) b!6736420))

(assert (= (and b!6736420 res!2755700) b!6736421))

(declare-fun m!7493818 () Bool)

(assert (=> b!6736420 m!7493818))

(declare-fun m!7493820 () Bool)

(assert (=> b!6736421 m!7493820))

(assert (=> d!2116295 d!2116501))

(declare-fun d!2116503 () Bool)

(declare-fun e!4069270 () Bool)

(assert (=> d!2116503 e!4069270))

(declare-fun res!2755705 () Bool)

(assert (=> d!2116503 (=> (not res!2755705) (not e!4069270))))

(declare-fun res!2755706 () List!65990)

(assert (=> d!2116503 (= res!2755705 (noDuplicate!2356 res!2755706))))

(declare-fun e!4069272 () Bool)

(assert (=> d!2116503 e!4069272))

(assert (=> d!2116503 (= (choose!50207 z!1189) res!2755706)))

(declare-fun b!6736429 () Bool)

(declare-fun e!4069271 () Bool)

(declare-fun tp!1846774 () Bool)

(assert (=> b!6736429 (= e!4069271 tp!1846774)))

(declare-fun tp!1846775 () Bool)

(declare-fun b!6736428 () Bool)

(assert (=> b!6736428 (= e!4069272 (and (inv!84654 (h!72314 res!2755706)) e!4069271 tp!1846775))))

(declare-fun b!6736430 () Bool)

(assert (=> b!6736430 (= e!4069270 (= (content!12795 res!2755706) z!1189))))

(assert (= b!6736428 b!6736429))

(assert (= (and d!2116503 ((_ is Cons!65866) res!2755706)) b!6736428))

(assert (= (and d!2116503 res!2755705) b!6736430))

(declare-fun m!7493822 () Bool)

(assert (=> d!2116503 m!7493822))

(declare-fun m!7493824 () Bool)

(assert (=> b!6736428 m!7493824))

(declare-fun m!7493826 () Bool)

(assert (=> b!6736430 m!7493826))

(assert (=> d!2116295 d!2116503))

(declare-fun d!2116505 () Bool)

(assert (=> d!2116505 true))

(assert (=> d!2116505 true))

(declare-fun res!2755709 () Bool)

(assert (=> d!2116505 (= (choose!50212 lambda!378188) res!2755709)))

(assert (=> d!2116375 d!2116505))

(declare-fun d!2116507 () Bool)

(assert (=> d!2116507 (= (Exists!3631 lambda!378260) (choose!50212 lambda!378260))))

(declare-fun bs!1791288 () Bool)

(assert (= bs!1791288 d!2116507))

(declare-fun m!7493828 () Bool)

(assert (=> bs!1791288 m!7493828))

(assert (=> d!2116385 d!2116507))

(assert (=> d!2116385 d!2116365))

(declare-fun bs!1791290 () Bool)

(declare-fun d!2116509 () Bool)

(assert (= bs!1791290 (and d!2116509 d!2116467)))

(declare-fun lambda!378288 () Int)

(assert (=> bs!1791290 (not (= lambda!378288 lambda!378279))))

(declare-fun bs!1791291 () Bool)

(assert (= bs!1791291 (and d!2116509 b!6735399)))

(assert (=> bs!1791291 (not (= lambda!378288 lambda!378188))))

(declare-fun bs!1791292 () Bool)

(assert (= bs!1791292 (and d!2116509 d!2116367)))

(assert (=> bs!1791292 (not (= lambda!378288 lambda!378251))))

(declare-fun bs!1791293 () Bool)

(assert (= bs!1791293 (and d!2116509 d!2116373)))

(assert (=> bs!1791293 (not (= lambda!378288 lambda!378257))))

(declare-fun bs!1791294 () Bool)

(assert (= bs!1791294 (and d!2116509 b!6736211)))

(assert (=> bs!1791294 (not (= lambda!378288 lambda!378270))))

(assert (=> bs!1791293 (= (= r!7292 (Star!16563 (reg!16892 r!7292))) (= lambda!378288 lambda!378256))))

(declare-fun bs!1791295 () Bool)

(assert (= bs!1791295 (and d!2116509 d!2116385)))

(assert (=> bs!1791295 (= lambda!378288 lambda!378260)))

(assert (=> bs!1791290 (= (= r!7292 (Star!16563 (reg!16892 r!7292))) (= lambda!378288 lambda!378278))))

(assert (=> bs!1791291 (= lambda!378288 lambda!378186)))

(declare-fun bs!1791296 () Bool)

(assert (= bs!1791296 (and d!2116509 b!6735505)))

(assert (=> bs!1791296 (not (= lambda!378288 lambda!378213))))

(assert (=> bs!1791291 (not (= lambda!378288 lambda!378187))))

(assert (=> bs!1791292 (= lambda!378288 lambda!378250)))

(declare-fun bs!1791297 () Bool)

(assert (= bs!1791297 (and d!2116509 b!6736216)))

(assert (=> bs!1791297 (not (= lambda!378288 lambda!378271))))

(declare-fun bs!1791298 () Bool)

(assert (= bs!1791298 (and d!2116509 b!6735500)))

(assert (=> bs!1791298 (not (= lambda!378288 lambda!378210))))

(assert (=> d!2116509 true))

(assert (=> d!2116509 true))

(assert (=> d!2116509 true))

(assert (=> d!2116509 (= (isDefined!13153 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326)) (Exists!3631 lambda!378288))))

(assert (=> d!2116509 true))

(declare-fun _$89!2965 () Unit!159817)

(assert (=> d!2116509 (= (choose!50214 (reg!16892 r!7292) r!7292 s!2326) _$89!2965)))

(declare-fun bs!1791299 () Bool)

(assert (= bs!1791299 d!2116509))

(assert (=> bs!1791299 m!7493052))

(assert (=> bs!1791299 m!7493052))

(assert (=> bs!1791299 m!7493054))

(declare-fun m!7493832 () Bool)

(assert (=> bs!1791299 m!7493832))

(assert (=> d!2116385 d!2116509))

(assert (=> d!2116385 d!2116383))

(assert (=> d!2116385 d!2116469))

(declare-fun c!1249421 () Bool)

(declare-fun call!608707 () Bool)

(declare-fun c!1249420 () Bool)

(declare-fun bm!608700 () Bool)

(assert (=> bm!608700 (= call!608707 (validRegex!8299 (ite c!1249421 (reg!16892 lt!2438435) (ite c!1249420 (regTwo!33639 lt!2438435) (regTwo!33638 lt!2438435)))))))

(declare-fun b!6736435 () Bool)

(declare-fun e!4069275 () Bool)

(declare-fun e!4069280 () Bool)

(assert (=> b!6736435 (= e!4069275 e!4069280)))

(assert (=> b!6736435 (= c!1249420 ((_ is Union!16563) lt!2438435))))

(declare-fun b!6736436 () Bool)

(declare-fun e!4069278 () Bool)

(declare-fun call!608706 () Bool)

(assert (=> b!6736436 (= e!4069278 call!608706)))

(declare-fun b!6736437 () Bool)

(declare-fun e!4069279 () Bool)

(declare-fun e!4069281 () Bool)

(assert (=> b!6736437 (= e!4069279 e!4069281)))

(declare-fun res!2755714 () Bool)

(assert (=> b!6736437 (=> (not res!2755714) (not e!4069281))))

(declare-fun call!608705 () Bool)

(assert (=> b!6736437 (= res!2755714 call!608705)))

(declare-fun b!6736438 () Bool)

(declare-fun res!2755716 () Bool)

(assert (=> b!6736438 (=> res!2755716 e!4069279)))

(assert (=> b!6736438 (= res!2755716 (not ((_ is Concat!25408) lt!2438435)))))

(assert (=> b!6736438 (= e!4069280 e!4069279)))

(declare-fun b!6736439 () Bool)

(declare-fun e!4069277 () Bool)

(assert (=> b!6736439 (= e!4069277 call!608707)))

(declare-fun b!6736440 () Bool)

(assert (=> b!6736440 (= e!4069275 e!4069277)))

(declare-fun res!2755717 () Bool)

(assert (=> b!6736440 (= res!2755717 (not (nullable!6550 (reg!16892 lt!2438435))))))

(assert (=> b!6736440 (=> (not res!2755717) (not e!4069277))))

(declare-fun bm!608701 () Bool)

(assert (=> bm!608701 (= call!608706 call!608707)))

(declare-fun b!6736441 () Bool)

(declare-fun e!4069276 () Bool)

(assert (=> b!6736441 (= e!4069276 e!4069275)))

(assert (=> b!6736441 (= c!1249421 ((_ is Star!16563) lt!2438435))))

(declare-fun b!6736442 () Bool)

(declare-fun res!2755718 () Bool)

(assert (=> b!6736442 (=> (not res!2755718) (not e!4069278))))

(assert (=> b!6736442 (= res!2755718 call!608705)))

(assert (=> b!6736442 (= e!4069280 e!4069278)))

(declare-fun bm!608702 () Bool)

(assert (=> bm!608702 (= call!608705 (validRegex!8299 (ite c!1249420 (regOne!33639 lt!2438435) (regOne!33638 lt!2438435))))))

(declare-fun b!6736443 () Bool)

(assert (=> b!6736443 (= e!4069281 call!608706)))

(declare-fun d!2116517 () Bool)

(declare-fun res!2755715 () Bool)

(assert (=> d!2116517 (=> res!2755715 e!4069276)))

(assert (=> d!2116517 (= res!2755715 ((_ is ElementMatch!16563) lt!2438435))))

(assert (=> d!2116517 (= (validRegex!8299 lt!2438435) e!4069276)))

(assert (= (and d!2116517 (not res!2755715)) b!6736441))

(assert (= (and b!6736441 c!1249421) b!6736440))

(assert (= (and b!6736441 (not c!1249421)) b!6736435))

(assert (= (and b!6736440 res!2755717) b!6736439))

(assert (= (and b!6736435 c!1249420) b!6736442))

(assert (= (and b!6736435 (not c!1249420)) b!6736438))

(assert (= (and b!6736442 res!2755718) b!6736436))

(assert (= (and b!6736438 (not res!2755716)) b!6736437))

(assert (= (and b!6736437 res!2755714) b!6736443))

(assert (= (or b!6736436 b!6736443) bm!608701))

(assert (= (or b!6736442 b!6736437) bm!608702))

(assert (= (or b!6736439 bm!608701) bm!608700))

(declare-fun m!7493834 () Bool)

(assert (=> bm!608700 m!7493834))

(declare-fun m!7493836 () Bool)

(assert (=> b!6736440 m!7493836))

(declare-fun m!7493838 () Bool)

(assert (=> bm!608702 m!7493838))

(assert (=> d!2116343 d!2116517))

(declare-fun bs!1791300 () Bool)

(declare-fun d!2116519 () Bool)

(assert (= bs!1791300 (and d!2116519 d!2116413)))

(declare-fun lambda!378289 () Int)

(assert (=> bs!1791300 (= lambda!378289 lambda!378269)))

(declare-fun bs!1791301 () Bool)

(assert (= bs!1791301 (and d!2116519 d!2116457)))

(assert (=> bs!1791301 (= lambda!378289 lambda!378273)))

(declare-fun bs!1791302 () Bool)

(assert (= bs!1791302 (and d!2116519 d!2116335)))

(assert (=> bs!1791302 (= lambda!378289 lambda!378241)))

(declare-fun bs!1791303 () Bool)

(assert (= bs!1791303 (and d!2116519 d!2116251)))

(assert (=> bs!1791303 (= lambda!378289 lambda!378199)))

(declare-fun bs!1791304 () Bool)

(assert (= bs!1791304 (and d!2116519 d!2116389)))

(assert (=> bs!1791304 (= lambda!378289 lambda!378266)))

(declare-fun bs!1791305 () Bool)

(assert (= bs!1791305 (and d!2116519 d!2116393)))

(assert (=> bs!1791305 (= lambda!378289 lambda!378267)))

(declare-fun bs!1791306 () Bool)

(assert (= bs!1791306 (and d!2116519 d!2116247)))

(assert (=> bs!1791306 (= lambda!378289 lambda!378198)))

(declare-fun bs!1791307 () Bool)

(assert (= bs!1791307 (and d!2116519 d!2116387)))

(assert (=> bs!1791307 (= lambda!378289 lambda!378263)))

(declare-fun bs!1791308 () Bool)

(assert (= bs!1791308 (and d!2116519 d!2116411)))

(assert (=> bs!1791308 (= lambda!378289 lambda!378268)))

(declare-fun b!6736448 () Bool)

(declare-fun e!4069287 () Bool)

(declare-fun lt!2438488 () Regex!16563)

(assert (=> b!6736448 (= e!4069287 (= lt!2438488 (head!13554 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866)))))))

(declare-fun b!6736449 () Bool)

(declare-fun e!4069289 () Regex!16563)

(declare-fun e!4069285 () Regex!16563)

(assert (=> b!6736449 (= e!4069289 e!4069285)))

(declare-fun c!1249427 () Bool)

(assert (=> b!6736449 (= c!1249427 ((_ is Cons!65864) (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))))))

(declare-fun b!6736450 () Bool)

(assert (=> b!6736450 (= e!4069287 (isUnion!1367 lt!2438488))))

(declare-fun b!6736451 () Bool)

(declare-fun e!4069288 () Bool)

(assert (=> b!6736451 (= e!4069288 (isEmptyLang!1937 lt!2438488))))

(declare-fun b!6736452 () Bool)

(assert (=> b!6736452 (= e!4069285 EmptyLang!16563)))

(declare-fun b!6736453 () Bool)

(assert (=> b!6736453 (= e!4069289 (h!72312 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))))))

(declare-fun b!6736454 () Bool)

(assert (=> b!6736454 (= e!4069288 e!4069287)))

(declare-fun c!1249426 () Bool)

(assert (=> b!6736454 (= c!1249426 (isEmpty!38205 (tail!12639 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866)))))))

(declare-fun e!4069284 () Bool)

(assert (=> d!2116519 e!4069284))

(declare-fun res!2755720 () Bool)

(assert (=> d!2116519 (=> (not res!2755720) (not e!4069284))))

(assert (=> d!2116519 (= res!2755720 (validRegex!8299 lt!2438488))))

(assert (=> d!2116519 (= lt!2438488 e!4069289)))

(declare-fun c!1249425 () Bool)

(declare-fun e!4069286 () Bool)

(assert (=> d!2116519 (= c!1249425 e!4069286)))

(declare-fun res!2755719 () Bool)

(assert (=> d!2116519 (=> (not res!2755719) (not e!4069286))))

(assert (=> d!2116519 (= res!2755719 ((_ is Cons!65864) (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))))))

(assert (=> d!2116519 (forall!15763 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866)) lambda!378289)))

(assert (=> d!2116519 (= (generalisedUnion!2407 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))) lt!2438488)))

(declare-fun b!6736455 () Bool)

(assert (=> b!6736455 (= e!4069285 (Union!16563 (h!72312 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))) (generalisedUnion!2407 (t!379681 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))))))))

(declare-fun b!6736456 () Bool)

(assert (=> b!6736456 (= e!4069286 (isEmpty!38205 (t!379681 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866)))))))

(declare-fun b!6736457 () Bool)

(assert (=> b!6736457 (= e!4069284 e!4069288)))

(declare-fun c!1249424 () Bool)

(assert (=> b!6736457 (= c!1249424 (isEmpty!38205 (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866))))))

(assert (= (and d!2116519 res!2755719) b!6736456))

(assert (= (and d!2116519 c!1249425) b!6736453))

(assert (= (and d!2116519 (not c!1249425)) b!6736449))

(assert (= (and b!6736449 c!1249427) b!6736455))

(assert (= (and b!6736449 (not c!1249427)) b!6736452))

(assert (= (and d!2116519 res!2755720) b!6736457))

(assert (= (and b!6736457 c!1249424) b!6736451))

(assert (= (and b!6736457 (not c!1249424)) b!6736454))

(assert (= (and b!6736454 c!1249426) b!6736448))

(assert (= (and b!6736454 (not c!1249426)) b!6736450))

(assert (=> b!6736457 m!7493368))

(declare-fun m!7493840 () Bool)

(assert (=> b!6736457 m!7493840))

(assert (=> b!6736448 m!7493368))

(declare-fun m!7493842 () Bool)

(assert (=> b!6736448 m!7493842))

(declare-fun m!7493844 () Bool)

(assert (=> d!2116519 m!7493844))

(assert (=> d!2116519 m!7493368))

(declare-fun m!7493846 () Bool)

(assert (=> d!2116519 m!7493846))

(declare-fun m!7493848 () Bool)

(assert (=> b!6736450 m!7493848))

(declare-fun m!7493850 () Bool)

(assert (=> b!6736456 m!7493850))

(assert (=> b!6736454 m!7493368))

(declare-fun m!7493852 () Bool)

(assert (=> b!6736454 m!7493852))

(assert (=> b!6736454 m!7493852))

(declare-fun m!7493854 () Bool)

(assert (=> b!6736454 m!7493854))

(declare-fun m!7493856 () Bool)

(assert (=> b!6736451 m!7493856))

(declare-fun m!7493858 () Bool)

(assert (=> b!6736455 m!7493858))

(assert (=> d!2116343 d!2116519))

(declare-fun bs!1791309 () Bool)

(declare-fun d!2116521 () Bool)

(assert (= bs!1791309 (and d!2116521 d!2116413)))

(declare-fun lambda!378290 () Int)

(assert (=> bs!1791309 (= lambda!378290 lambda!378269)))

(declare-fun bs!1791310 () Bool)

(assert (= bs!1791310 (and d!2116521 d!2116457)))

(assert (=> bs!1791310 (= lambda!378290 lambda!378273)))

(declare-fun bs!1791311 () Bool)

(assert (= bs!1791311 (and d!2116521 d!2116335)))

(assert (=> bs!1791311 (= lambda!378290 lambda!378241)))

(declare-fun bs!1791312 () Bool)

(assert (= bs!1791312 (and d!2116521 d!2116251)))

(assert (=> bs!1791312 (= lambda!378290 lambda!378199)))

(declare-fun bs!1791313 () Bool)

(assert (= bs!1791313 (and d!2116521 d!2116389)))

(assert (=> bs!1791313 (= lambda!378290 lambda!378266)))

(declare-fun bs!1791314 () Bool)

(assert (= bs!1791314 (and d!2116521 d!2116519)))

(assert (=> bs!1791314 (= lambda!378290 lambda!378289)))

(declare-fun bs!1791315 () Bool)

(assert (= bs!1791315 (and d!2116521 d!2116393)))

(assert (=> bs!1791315 (= lambda!378290 lambda!378267)))

(declare-fun bs!1791316 () Bool)

(assert (= bs!1791316 (and d!2116521 d!2116247)))

(assert (=> bs!1791316 (= lambda!378290 lambda!378198)))

(declare-fun bs!1791317 () Bool)

(assert (= bs!1791317 (and d!2116521 d!2116387)))

(assert (=> bs!1791317 (= lambda!378290 lambda!378263)))

(declare-fun bs!1791318 () Bool)

(assert (= bs!1791318 (and d!2116521 d!2116411)))

(assert (=> bs!1791318 (= lambda!378290 lambda!378268)))

(declare-fun lt!2438490 () List!65988)

(assert (=> d!2116521 (forall!15763 lt!2438490 lambda!378290)))

(declare-fun e!4069294 () List!65988)

(assert (=> d!2116521 (= lt!2438490 e!4069294)))

(declare-fun c!1249429 () Bool)

(assert (=> d!2116521 (= c!1249429 ((_ is Cons!65866) (Cons!65866 lt!2438361 Nil!65866)))))

(assert (=> d!2116521 (= (unfocusZipperList!1984 (Cons!65866 lt!2438361 Nil!65866)) lt!2438490)))

(declare-fun b!6736466 () Bool)

(assert (=> b!6736466 (= e!4069294 (Cons!65864 (generalisedConcat!2160 (exprs!6447 (h!72314 (Cons!65866 lt!2438361 Nil!65866)))) (unfocusZipperList!1984 (t!379683 (Cons!65866 lt!2438361 Nil!65866)))))))

(declare-fun b!6736467 () Bool)

(assert (=> b!6736467 (= e!4069294 Nil!65864)))

(assert (= (and d!2116521 c!1249429) b!6736466))

(assert (= (and d!2116521 (not c!1249429)) b!6736467))

(declare-fun m!7493874 () Bool)

(assert (=> d!2116521 m!7493874))

(declare-fun m!7493876 () Bool)

(assert (=> b!6736466 m!7493876))

(declare-fun m!7493878 () Bool)

(assert (=> b!6736466 m!7493878))

(assert (=> d!2116343 d!2116521))

(declare-fun d!2116527 () Bool)

(declare-fun res!2755735 () Bool)

(declare-fun e!4069305 () Bool)

(assert (=> d!2116527 (=> res!2755735 e!4069305)))

(assert (=> d!2116527 (= res!2755735 ((_ is Nil!65864) (exprs!6447 lt!2438365)))))

(assert (=> d!2116527 (= (forall!15763 (exprs!6447 lt!2438365) lambda!378267) e!4069305)))

(declare-fun b!6736483 () Bool)

(declare-fun e!4069306 () Bool)

(assert (=> b!6736483 (= e!4069305 e!4069306)))

(declare-fun res!2755736 () Bool)

(assert (=> b!6736483 (=> (not res!2755736) (not e!4069306))))

(declare-fun dynLambda!26278 (Int Regex!16563) Bool)

(assert (=> b!6736483 (= res!2755736 (dynLambda!26278 lambda!378267 (h!72312 (exprs!6447 lt!2438365))))))

(declare-fun b!6736484 () Bool)

(assert (=> b!6736484 (= e!4069306 (forall!15763 (t!379681 (exprs!6447 lt!2438365)) lambda!378267))))

(assert (= (and d!2116527 (not res!2755735)) b!6736483))

(assert (= (and b!6736483 res!2755736) b!6736484))

(declare-fun b_lambda!253629 () Bool)

(assert (=> (not b_lambda!253629) (not b!6736483)))

(declare-fun m!7493890 () Bool)

(assert (=> b!6736483 m!7493890))

(declare-fun m!7493892 () Bool)

(assert (=> b!6736484 m!7493892))

(assert (=> d!2116393 d!2116527))

(assert (=> bs!1791228 d!2116347))

(declare-fun call!608714 () (InoxSet Context!11894))

(declare-fun e!4069307 () (InoxSet Context!11894))

(declare-fun b!6736485 () Bool)

(assert (=> b!6736485 (= e!4069307 ((_ map or) call!608714 (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438361)))))) (h!72313 s!2326))))))

(declare-fun d!2116533 () Bool)

(declare-fun c!1249435 () Bool)

(declare-fun e!4069309 () Bool)

(assert (=> d!2116533 (= c!1249435 e!4069309)))

(declare-fun res!2755737 () Bool)

(assert (=> d!2116533 (=> (not res!2755737) (not e!4069309))))

(assert (=> d!2116533 (= res!2755737 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438361))))))))

(assert (=> d!2116533 (= (derivationStepZipperUp!1717 (Context!11895 (t!379681 (exprs!6447 lt!2438361))) (h!72313 s!2326)) e!4069307)))

(declare-fun b!6736486 () Bool)

(declare-fun e!4069308 () (InoxSet Context!11894))

(assert (=> b!6736486 (= e!4069308 ((as const (Array Context!11894 Bool)) false))))

(declare-fun bm!608709 () Bool)

(assert (=> bm!608709 (= call!608714 (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438361))))) (Context!11895 (t!379681 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438361)))))) (h!72313 s!2326)))))

(declare-fun b!6736487 () Bool)

(assert (=> b!6736487 (= e!4069307 e!4069308)))

(declare-fun c!1249436 () Bool)

(assert (=> b!6736487 (= c!1249436 ((_ is Cons!65864) (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438361))))))))

(declare-fun b!6736488 () Bool)

(assert (=> b!6736488 (= e!4069308 call!608714)))

(declare-fun b!6736489 () Bool)

(assert (=> b!6736489 (= e!4069309 (nullable!6550 (h!72312 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 lt!2438361)))))))))

(assert (= (and d!2116533 res!2755737) b!6736489))

(assert (= (and d!2116533 c!1249435) b!6736485))

(assert (= (and d!2116533 (not c!1249435)) b!6736487))

(assert (= (and b!6736487 c!1249436) b!6736488))

(assert (= (and b!6736487 (not c!1249436)) b!6736486))

(assert (= (or b!6736485 b!6736488) bm!608709))

(declare-fun m!7493898 () Bool)

(assert (=> b!6736485 m!7493898))

(declare-fun m!7493900 () Bool)

(assert (=> bm!608709 m!7493900))

(declare-fun m!7493902 () Bool)

(assert (=> b!6736489 m!7493902))

(assert (=> b!6735777 d!2116533))

(declare-fun d!2116539 () Bool)

(assert (=> d!2116539 (= (isUnion!1367 lt!2438463) ((_ is Union!16563) lt!2438463))))

(assert (=> b!6736063 d!2116539))

(declare-fun b!6736490 () Bool)

(declare-fun e!4069314 () (InoxSet Context!11894))

(declare-fun e!4069315 () (InoxSet Context!11894))

(assert (=> b!6736490 (= e!4069314 e!4069315)))

(declare-fun c!1249441 () Bool)

(assert (=> b!6736490 (= c!1249441 ((_ is Union!16563) (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun bm!608710 () Bool)

(declare-fun call!608719 () List!65988)

(declare-fun call!608716 () List!65988)

(assert (=> bm!608710 (= call!608719 call!608716)))

(declare-fun bm!608711 () Bool)

(declare-fun call!608718 () (InoxSet Context!11894))

(assert (=> bm!608711 (= call!608718 (derivationStepZipperDown!1791 (ite c!1249441 (regTwo!33639 (h!72312 (exprs!6447 (h!72314 zl!343)))) (regOne!33638 (h!72312 (exprs!6447 (h!72314 zl!343))))) (ite c!1249441 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))) (Context!11895 call!608716)) (h!72313 s!2326)))))

(declare-fun b!6736491 () Bool)

(declare-fun e!4069310 () (InoxSet Context!11894))

(declare-fun call!608717 () (InoxSet Context!11894))

(assert (=> b!6736491 (= e!4069310 call!608717)))

(declare-fun c!1249437 () Bool)

(declare-fun bm!608712 () Bool)

(declare-fun c!1249438 () Bool)

(assert (=> bm!608712 (= call!608716 ($colon$colon!2380 (exprs!6447 (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343))))) (ite (or c!1249438 c!1249437) (regTwo!33638 (h!72312 (exprs!6447 (h!72314 zl!343)))) (h!72312 (exprs!6447 (h!72314 zl!343))))))))

(declare-fun b!6736492 () Bool)

(declare-fun e!4069311 () Bool)

(assert (=> b!6736492 (= e!4069311 (nullable!6550 (regOne!33638 (h!72312 (exprs!6447 (h!72314 zl!343))))))))

(declare-fun bm!608713 () Bool)

(declare-fun call!608720 () (InoxSet Context!11894))

(assert (=> bm!608713 (= call!608720 (derivationStepZipperDown!1791 (ite c!1249441 (regOne!33639 (h!72312 (exprs!6447 (h!72314 zl!343)))) (ite c!1249438 (regTwo!33638 (h!72312 (exprs!6447 (h!72314 zl!343)))) (ite c!1249437 (regOne!33638 (h!72312 (exprs!6447 (h!72314 zl!343)))) (reg!16892 (h!72312 (exprs!6447 (h!72314 zl!343))))))) (ite (or c!1249441 c!1249438) (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))) (Context!11895 call!608719)) (h!72313 s!2326)))))

(declare-fun b!6736493 () Bool)

(declare-fun c!1249440 () Bool)

(assert (=> b!6736493 (= c!1249440 ((_ is Star!16563) (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun e!4069313 () (InoxSet Context!11894))

(assert (=> b!6736493 (= e!4069313 e!4069310)))

(declare-fun b!6736494 () Bool)

(assert (=> b!6736494 (= e!4069313 call!608717)))

(declare-fun b!6736495 () Bool)

(declare-fun e!4069312 () (InoxSet Context!11894))

(declare-fun call!608715 () (InoxSet Context!11894))

(assert (=> b!6736495 (= e!4069312 ((_ map or) call!608718 call!608715))))

(declare-fun b!6736496 () Bool)

(assert (=> b!6736496 (= c!1249438 e!4069311)))

(declare-fun res!2755738 () Bool)

(assert (=> b!6736496 (=> (not res!2755738) (not e!4069311))))

(assert (=> b!6736496 (= res!2755738 ((_ is Concat!25408) (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(assert (=> b!6736496 (= e!4069315 e!4069312)))

(declare-fun bm!608714 () Bool)

(assert (=> bm!608714 (= call!608717 call!608715)))

(declare-fun b!6736498 () Bool)

(assert (=> b!6736498 (= e!4069312 e!4069313)))

(assert (=> b!6736498 (= c!1249437 ((_ is Concat!25408) (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun bm!608715 () Bool)

(assert (=> bm!608715 (= call!608715 call!608720)))

(declare-fun b!6736499 () Bool)

(assert (=> b!6736499 (= e!4069310 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736500 () Bool)

(assert (=> b!6736500 (= e!4069315 ((_ map or) call!608720 call!608718))))

(declare-fun d!2116543 () Bool)

(declare-fun c!1249439 () Bool)

(assert (=> d!2116543 (= c!1249439 (and ((_ is ElementMatch!16563) (h!72312 (exprs!6447 (h!72314 zl!343)))) (= (c!1249129 (h!72312 (exprs!6447 (h!72314 zl!343)))) (h!72313 s!2326))))))

(assert (=> d!2116543 (= (derivationStepZipperDown!1791 (h!72312 (exprs!6447 (h!72314 zl!343))) (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))) (h!72313 s!2326)) e!4069314)))

(declare-fun b!6736497 () Bool)

(assert (=> b!6736497 (= e!4069314 (store ((as const (Array Context!11894 Bool)) false) (Context!11895 (t!379681 (exprs!6447 (h!72314 zl!343)))) true))))

(assert (= (and d!2116543 c!1249439) b!6736497))

(assert (= (and d!2116543 (not c!1249439)) b!6736490))

(assert (= (and b!6736490 c!1249441) b!6736500))

(assert (= (and b!6736490 (not c!1249441)) b!6736496))

(assert (= (and b!6736496 res!2755738) b!6736492))

(assert (= (and b!6736496 c!1249438) b!6736495))

(assert (= (and b!6736496 (not c!1249438)) b!6736498))

(assert (= (and b!6736498 c!1249437) b!6736494))

(assert (= (and b!6736498 (not c!1249437)) b!6736493))

(assert (= (and b!6736493 c!1249440) b!6736491))

(assert (= (and b!6736493 (not c!1249440)) b!6736499))

(assert (= (or b!6736494 b!6736491) bm!608710))

(assert (= (or b!6736494 b!6736491) bm!608714))

(assert (= (or b!6736495 bm!608710) bm!608712))

(assert (= (or b!6736495 bm!608714) bm!608715))

(assert (= (or b!6736500 b!6736495) bm!608711))

(assert (= (or b!6736500 bm!608715) bm!608713))

(declare-fun m!7493904 () Bool)

(assert (=> b!6736492 m!7493904))

(declare-fun m!7493906 () Bool)

(assert (=> bm!608713 m!7493906))

(declare-fun m!7493908 () Bool)

(assert (=> bm!608711 m!7493908))

(declare-fun m!7493910 () Bool)

(assert (=> b!6736497 m!7493910))

(declare-fun m!7493912 () Bool)

(assert (=> bm!608712 m!7493912))

(assert (=> bm!608615 d!2116543))

(declare-fun d!2116545 () Bool)

(assert (=> d!2116545 (= (flatMap!2044 lt!2438370 lambda!378245) (choose!50208 lt!2438370 lambda!378245))))

(declare-fun bs!1791321 () Bool)

(assert (= bs!1791321 d!2116545))

(declare-fun m!7493914 () Bool)

(assert (=> bs!1791321 m!7493914))

(assert (=> d!2116363 d!2116545))

(declare-fun d!2116547 () Bool)

(assert (=> d!2116547 (= (head!13554 (unfocusZipperList!1984 zl!343)) (h!72312 (unfocusZipperList!1984 zl!343)))))

(assert (=> b!6736061 d!2116547))

(declare-fun d!2116551 () Bool)

(assert (=> d!2116551 (= (nullable!6550 (h!72312 (exprs!6447 lt!2438361))) (nullableFct!2463 (h!72312 (exprs!6447 lt!2438361))))))

(declare-fun bs!1791323 () Bool)

(assert (= bs!1791323 d!2116551))

(declare-fun m!7493920 () Bool)

(assert (=> bs!1791323 m!7493920))

(assert (=> b!6735781 d!2116551))

(declare-fun d!2116553 () Bool)

(assert (=> d!2116553 (= (isEmptyExpr!1929 lt!2438431) ((_ is EmptyExpr!16563) lt!2438431))))

(assert (=> b!6735861 d!2116553))

(declare-fun d!2116555 () Bool)

(assert (=> d!2116555 (= (isConcat!1452 lt!2438431) ((_ is Concat!25408) lt!2438431))))

(assert (=> b!6735857 d!2116555))

(declare-fun d!2116561 () Bool)

(assert (=> d!2116561 true))

(declare-fun setRes!45974 () Bool)

(assert (=> d!2116561 setRes!45974))

(declare-fun condSetEmpty!45974 () Bool)

(declare-fun res!2755747 () (InoxSet Context!11894))

(assert (=> d!2116561 (= condSetEmpty!45974 (= res!2755747 ((as const (Array Context!11894 Bool)) false)))))

(assert (=> d!2116561 (= (choose!50208 z!1189 lambda!378189) res!2755747)))

(declare-fun setIsEmpty!45974 () Bool)

(assert (=> setIsEmpty!45974 setRes!45974))

(declare-fun setElem!45974 () Context!11894)

(declare-fun e!4069324 () Bool)

(declare-fun tp!1846781 () Bool)

(declare-fun setNonEmpty!45974 () Bool)

(assert (=> setNonEmpty!45974 (= setRes!45974 (and tp!1846781 (inv!84654 setElem!45974) e!4069324))))

(declare-fun setRest!45974 () (InoxSet Context!11894))

(assert (=> setNonEmpty!45974 (= res!2755747 ((_ map or) (store ((as const (Array Context!11894 Bool)) false) setElem!45974 true) setRest!45974))))

(declare-fun b!6736509 () Bool)

(declare-fun tp!1846780 () Bool)

(assert (=> b!6736509 (= e!4069324 tp!1846780)))

(assert (= (and d!2116561 condSetEmpty!45974) setIsEmpty!45974))

(assert (= (and d!2116561 (not condSetEmpty!45974)) setNonEmpty!45974))

(assert (= setNonEmpty!45974 b!6736509))

(declare-fun m!7493930 () Bool)

(assert (=> setNonEmpty!45974 m!7493930))

(assert (=> d!2116345 d!2116561))

(declare-fun bs!1791334 () Bool)

(declare-fun d!2116569 () Bool)

(assert (= bs!1791334 (and d!2116569 d!2116481)))

(declare-fun lambda!378292 () Int)

(assert (=> bs!1791334 (= lambda!378292 lambda!378282)))

(assert (=> d!2116569 (= (nullableZipper!2278 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326))) (exists!2697 (derivationStepZipper!2507 lt!2438370 (h!72313 s!2326)) lambda!378292))))

(declare-fun bs!1791335 () Bool)

(assert (= bs!1791335 d!2116569))

(assert (=> bs!1791335 m!7493016))

(declare-fun m!7493932 () Bool)

(assert (=> bs!1791335 m!7493932))

(assert (=> b!6735936 d!2116569))

(assert (=> bm!608568 d!2116379))

(declare-fun d!2116571 () Bool)

(assert (=> d!2116571 (= (isEmpty!38205 (tail!12639 (unfocusZipperList!1984 zl!343))) ((_ is Nil!65864) (tail!12639 (unfocusZipperList!1984 zl!343))))))

(assert (=> b!6736067 d!2116571))

(declare-fun d!2116573 () Bool)

(assert (=> d!2116573 (= (tail!12639 (unfocusZipperList!1984 zl!343)) (t!379681 (unfocusZipperList!1984 zl!343)))))

(assert (=> b!6736067 d!2116573))

(declare-fun d!2116575 () Bool)

(assert (=> d!2116575 (= (head!13554 (exprs!6447 (h!72314 zl!343))) (h!72312 (exprs!6447 (h!72314 zl!343))))))

(assert (=> b!6735859 d!2116575))

(declare-fun d!2116577 () Bool)

(assert (=> d!2116577 true))

(assert (=> d!2116577 true))

(declare-fun res!2755748 () Bool)

(assert (=> d!2116577 (= (choose!50212 lambda!378186) res!2755748)))

(assert (=> d!2116377 d!2116577))

(declare-fun d!2116579 () Bool)

(assert (=> d!2116579 (= (nullable!6550 (reg!16892 r!7292)) (nullableFct!2463 (reg!16892 r!7292)))))

(declare-fun bs!1791336 () Bool)

(assert (= bs!1791336 d!2116579))

(declare-fun m!7493934 () Bool)

(assert (=> bs!1791336 m!7493934))

(assert (=> b!6736100 d!2116579))

(declare-fun bm!608716 () Bool)

(declare-fun call!608723 () Bool)

(declare-fun c!1249442 () Bool)

(declare-fun c!1249443 () Bool)

(assert (=> bm!608716 (= call!608723 (validRegex!8299 (ite c!1249443 (reg!16892 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))) (ite c!1249442 (regTwo!33639 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))) (regTwo!33638 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292)))))))))

(declare-fun b!6736510 () Bool)

(declare-fun e!4069325 () Bool)

(declare-fun e!4069330 () Bool)

(assert (=> b!6736510 (= e!4069325 e!4069330)))

(assert (=> b!6736510 (= c!1249442 ((_ is Union!16563) (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))))))

(declare-fun b!6736511 () Bool)

(declare-fun e!4069328 () Bool)

(declare-fun call!608722 () Bool)

(assert (=> b!6736511 (= e!4069328 call!608722)))

(declare-fun b!6736512 () Bool)

(declare-fun e!4069329 () Bool)

(declare-fun e!4069331 () Bool)

(assert (=> b!6736512 (= e!4069329 e!4069331)))

(declare-fun res!2755749 () Bool)

(assert (=> b!6736512 (=> (not res!2755749) (not e!4069331))))

(declare-fun call!608721 () Bool)

(assert (=> b!6736512 (= res!2755749 call!608721)))

(declare-fun b!6736513 () Bool)

(declare-fun res!2755751 () Bool)

(assert (=> b!6736513 (=> res!2755751 e!4069329)))

(assert (=> b!6736513 (= res!2755751 (not ((_ is Concat!25408) (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292)))))))

(assert (=> b!6736513 (= e!4069330 e!4069329)))

(declare-fun b!6736514 () Bool)

(declare-fun e!4069327 () Bool)

(assert (=> b!6736514 (= e!4069327 call!608723)))

(declare-fun b!6736515 () Bool)

(assert (=> b!6736515 (= e!4069325 e!4069327)))

(declare-fun res!2755752 () Bool)

(assert (=> b!6736515 (= res!2755752 (not (nullable!6550 (reg!16892 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))))))))

(assert (=> b!6736515 (=> (not res!2755752) (not e!4069327))))

(declare-fun bm!608717 () Bool)

(assert (=> bm!608717 (= call!608722 call!608723)))

(declare-fun b!6736516 () Bool)

(declare-fun e!4069326 () Bool)

(assert (=> b!6736516 (= e!4069326 e!4069325)))

(assert (=> b!6736516 (= c!1249443 ((_ is Star!16563) (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))))))

(declare-fun b!6736517 () Bool)

(declare-fun res!2755753 () Bool)

(assert (=> b!6736517 (=> (not res!2755753) (not e!4069328))))

(assert (=> b!6736517 (= res!2755753 call!608721)))

(assert (=> b!6736517 (= e!4069330 e!4069328)))

(declare-fun bm!608718 () Bool)

(assert (=> bm!608718 (= call!608721 (validRegex!8299 (ite c!1249442 (regOne!33639 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))) (regOne!33638 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))))))))

(declare-fun b!6736518 () Bool)

(assert (=> b!6736518 (= e!4069331 call!608722)))

(declare-fun d!2116581 () Bool)

(declare-fun res!2755750 () Bool)

(assert (=> d!2116581 (=> res!2755750 e!4069326)))

(assert (=> d!2116581 (= res!2755750 ((_ is ElementMatch!16563) (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))))))

(assert (=> d!2116581 (= (validRegex!8299 (ite c!1249324 (regOne!33639 r!7292) (regOne!33638 r!7292))) e!4069326)))

(assert (= (and d!2116581 (not res!2755750)) b!6736516))

(assert (= (and b!6736516 c!1249443) b!6736515))

(assert (= (and b!6736516 (not c!1249443)) b!6736510))

(assert (= (and b!6736515 res!2755752) b!6736514))

(assert (= (and b!6736510 c!1249442) b!6736517))

(assert (= (and b!6736510 (not c!1249442)) b!6736513))

(assert (= (and b!6736517 res!2755753) b!6736511))

(assert (= (and b!6736513 (not res!2755751)) b!6736512))

(assert (= (and b!6736512 res!2755749) b!6736518))

(assert (= (or b!6736511 b!6736518) bm!608717))

(assert (= (or b!6736517 b!6736512) bm!608718))

(assert (= (or b!6736514 bm!608717) bm!608716))

(declare-fun m!7493936 () Bool)

(assert (=> bm!608716 m!7493936))

(declare-fun m!7493938 () Bool)

(assert (=> b!6736515 m!7493938))

(declare-fun m!7493940 () Bool)

(assert (=> bm!608718 m!7493940))

(assert (=> bm!608634 d!2116581))

(declare-fun d!2116583 () Bool)

(assert (=> d!2116583 (= (isEmpty!38206 (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326)) (not ((_ is Some!16449) (findConcatSeparation!2864 (reg!16892 r!7292) r!7292 Nil!65865 s!2326 s!2326))))))

(assert (=> d!2116365 d!2116583))

(declare-fun d!2116585 () Bool)

(assert (=> d!2116585 (= (isEmpty!38201 (tail!12638 s!2326)) ((_ is Nil!65865) (tail!12638 s!2326)))))

(assert (=> b!6735597 d!2116585))

(assert (=> b!6735597 d!2116447))

(declare-fun d!2116587 () Bool)

(assert (=> d!2116587 (= (nullable!6550 (regOne!33638 r!7292)) (nullableFct!2463 (regOne!33638 r!7292)))))

(declare-fun bs!1791337 () Bool)

(assert (= bs!1791337 d!2116587))

(declare-fun m!7493942 () Bool)

(assert (=> bs!1791337 m!7493942))

(assert (=> b!6735872 d!2116587))

(assert (=> d!2116285 d!2116267))

(assert (=> d!2116285 d!2116253))

(declare-fun d!2116589 () Bool)

(assert (=> d!2116589 (= (matchR!8746 r!7292 s!2326) (matchRSpec!3664 r!7292 s!2326))))

(assert (=> d!2116589 true))

(declare-fun _$88!5489 () Unit!159817)

(assert (=> d!2116589 (= (choose!50206 r!7292 s!2326) _$88!5489)))

(declare-fun bs!1791338 () Bool)

(assert (= bs!1791338 d!2116589))

(assert (=> bs!1791338 m!7493070))

(assert (=> bs!1791338 m!7493068))

(assert (=> d!2116285 d!2116589))

(assert (=> d!2116285 d!2116391))

(declare-fun d!2116591 () Bool)

(declare-fun res!2755758 () Bool)

(declare-fun e!4069334 () Bool)

(assert (=> d!2116591 (=> res!2755758 e!4069334)))

(assert (=> d!2116591 (= res!2755758 ((_ is Nil!65864) (exprs!6447 (h!72314 zl!343))))))

(assert (=> d!2116591 (= (forall!15763 (exprs!6447 (h!72314 zl!343)) lambda!378198) e!4069334)))

(declare-fun b!6736523 () Bool)

(declare-fun e!4069335 () Bool)

(assert (=> b!6736523 (= e!4069334 e!4069335)))

(declare-fun res!2755759 () Bool)

(assert (=> b!6736523 (=> (not res!2755759) (not e!4069335))))

(assert (=> b!6736523 (= res!2755759 (dynLambda!26278 lambda!378198 (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6736524 () Bool)

(assert (=> b!6736524 (= e!4069335 (forall!15763 (t!379681 (exprs!6447 (h!72314 zl!343))) lambda!378198))))

(assert (= (and d!2116591 (not res!2755758)) b!6736523))

(assert (= (and b!6736523 res!2755759) b!6736524))

(declare-fun b_lambda!253635 () Bool)

(assert (=> (not b_lambda!253635) (not b!6736523)))

(declare-fun m!7493944 () Bool)

(assert (=> b!6736523 m!7493944))

(declare-fun m!7493946 () Bool)

(assert (=> b!6736524 m!7493946))

(assert (=> d!2116247 d!2116591))

(declare-fun d!2116593 () Bool)

(assert (=> d!2116593 (= (isEmpty!38205 (t!379681 (unfocusZipperList!1984 zl!343))) ((_ is Nil!65864) (t!379681 (unfocusZipperList!1984 zl!343))))))

(assert (=> b!6736069 d!2116593))

(declare-fun call!608726 () Bool)

(declare-fun c!1249445 () Bool)

(declare-fun c!1249444 () Bool)

(declare-fun bm!608719 () Bool)

(assert (=> bm!608719 (= call!608726 (validRegex!8299 (ite c!1249445 (reg!16892 lt!2438431) (ite c!1249444 (regTwo!33639 lt!2438431) (regTwo!33638 lt!2438431)))))))

(declare-fun b!6736525 () Bool)

(declare-fun e!4069336 () Bool)

(declare-fun e!4069341 () Bool)

(assert (=> b!6736525 (= e!4069336 e!4069341)))

(assert (=> b!6736525 (= c!1249444 ((_ is Union!16563) lt!2438431))))

(declare-fun b!6736526 () Bool)

(declare-fun e!4069339 () Bool)

(declare-fun call!608725 () Bool)

(assert (=> b!6736526 (= e!4069339 call!608725)))

(declare-fun b!6736527 () Bool)

(declare-fun e!4069340 () Bool)

(declare-fun e!4069342 () Bool)

(assert (=> b!6736527 (= e!4069340 e!4069342)))

(declare-fun res!2755760 () Bool)

(assert (=> b!6736527 (=> (not res!2755760) (not e!4069342))))

(declare-fun call!608724 () Bool)

(assert (=> b!6736527 (= res!2755760 call!608724)))

(declare-fun b!6736528 () Bool)

(declare-fun res!2755762 () Bool)

(assert (=> b!6736528 (=> res!2755762 e!4069340)))

(assert (=> b!6736528 (= res!2755762 (not ((_ is Concat!25408) lt!2438431)))))

(assert (=> b!6736528 (= e!4069341 e!4069340)))

(declare-fun b!6736529 () Bool)

(declare-fun e!4069338 () Bool)

(assert (=> b!6736529 (= e!4069338 call!608726)))

(declare-fun b!6736530 () Bool)

(assert (=> b!6736530 (= e!4069336 e!4069338)))

(declare-fun res!2755763 () Bool)

(assert (=> b!6736530 (= res!2755763 (not (nullable!6550 (reg!16892 lt!2438431))))))

(assert (=> b!6736530 (=> (not res!2755763) (not e!4069338))))

(declare-fun bm!608720 () Bool)

(assert (=> bm!608720 (= call!608725 call!608726)))

(declare-fun b!6736531 () Bool)

(declare-fun e!4069337 () Bool)

(assert (=> b!6736531 (= e!4069337 e!4069336)))

(assert (=> b!6736531 (= c!1249445 ((_ is Star!16563) lt!2438431))))

(declare-fun b!6736532 () Bool)

(declare-fun res!2755764 () Bool)

(assert (=> b!6736532 (=> (not res!2755764) (not e!4069339))))

(assert (=> b!6736532 (= res!2755764 call!608724)))

(assert (=> b!6736532 (= e!4069341 e!4069339)))

(declare-fun bm!608721 () Bool)

(assert (=> bm!608721 (= call!608724 (validRegex!8299 (ite c!1249444 (regOne!33639 lt!2438431) (regOne!33638 lt!2438431))))))

(declare-fun b!6736533 () Bool)

(assert (=> b!6736533 (= e!4069342 call!608725)))

(declare-fun d!2116595 () Bool)

(declare-fun res!2755761 () Bool)

(assert (=> d!2116595 (=> res!2755761 e!4069337)))

(assert (=> d!2116595 (= res!2755761 ((_ is ElementMatch!16563) lt!2438431))))

(assert (=> d!2116595 (= (validRegex!8299 lt!2438431) e!4069337)))

(assert (= (and d!2116595 (not res!2755761)) b!6736531))

(assert (= (and b!6736531 c!1249445) b!6736530))

(assert (= (and b!6736531 (not c!1249445)) b!6736525))

(assert (= (and b!6736530 res!2755763) b!6736529))

(assert (= (and b!6736525 c!1249444) b!6736532))

(assert (= (and b!6736525 (not c!1249444)) b!6736528))

(assert (= (and b!6736532 res!2755764) b!6736526))

(assert (= (and b!6736528 (not res!2755762)) b!6736527))

(assert (= (and b!6736527 res!2755760) b!6736533))

(assert (= (or b!6736526 b!6736533) bm!608720))

(assert (= (or b!6736532 b!6736527) bm!608721))

(assert (= (or b!6736529 bm!608720) bm!608719))

(declare-fun m!7493948 () Bool)

(assert (=> bm!608719 m!7493948))

(declare-fun m!7493950 () Bool)

(assert (=> b!6736530 m!7493950))

(declare-fun m!7493952 () Bool)

(assert (=> bm!608721 m!7493952))

(assert (=> d!2116335 d!2116595))

(declare-fun d!2116597 () Bool)

(declare-fun res!2755765 () Bool)

(declare-fun e!4069343 () Bool)

(assert (=> d!2116597 (=> res!2755765 e!4069343)))

(assert (=> d!2116597 (= res!2755765 ((_ is Nil!65864) (exprs!6447 (h!72314 zl!343))))))

(assert (=> d!2116597 (= (forall!15763 (exprs!6447 (h!72314 zl!343)) lambda!378241) e!4069343)))

(declare-fun b!6736534 () Bool)

(declare-fun e!4069344 () Bool)

(assert (=> b!6736534 (= e!4069343 e!4069344)))

(declare-fun res!2755766 () Bool)

(assert (=> b!6736534 (=> (not res!2755766) (not e!4069344))))

(assert (=> b!6736534 (= res!2755766 (dynLambda!26278 lambda!378241 (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun b!6736535 () Bool)

(assert (=> b!6736535 (= e!4069344 (forall!15763 (t!379681 (exprs!6447 (h!72314 zl!343))) lambda!378241))))

(assert (= (and d!2116597 (not res!2755765)) b!6736534))

(assert (= (and b!6736534 res!2755766) b!6736535))

(declare-fun b_lambda!253637 () Bool)

(assert (=> (not b_lambda!253637) (not b!6736534)))

(declare-fun m!7493954 () Bool)

(assert (=> b!6736534 m!7493954))

(declare-fun m!7493956 () Bool)

(assert (=> b!6736535 m!7493956))

(assert (=> d!2116335 d!2116597))

(assert (=> b!6735595 d!2116585))

(assert (=> b!6735595 d!2116447))

(declare-fun d!2116599 () Bool)

(assert (=> d!2116599 true))

(assert (=> d!2116599 true))

(declare-fun res!2755767 () Bool)

(assert (=> d!2116599 (= (choose!50212 lambda!378187) res!2755767)))

(assert (=> d!2116381 d!2116599))

(declare-fun d!2116601 () Bool)

(declare-fun res!2755768 () Bool)

(declare-fun e!4069345 () Bool)

(assert (=> d!2116601 (=> res!2755768 e!4069345)))

(assert (=> d!2116601 (= res!2755768 ((_ is Nil!65864) lt!2438466))))

(assert (=> d!2116601 (= (forall!15763 lt!2438466 lambda!378266) e!4069345)))

(declare-fun b!6736536 () Bool)

(declare-fun e!4069346 () Bool)

(assert (=> b!6736536 (= e!4069345 e!4069346)))

(declare-fun res!2755769 () Bool)

(assert (=> b!6736536 (=> (not res!2755769) (not e!4069346))))

(assert (=> b!6736536 (= res!2755769 (dynLambda!26278 lambda!378266 (h!72312 lt!2438466)))))

(declare-fun b!6736537 () Bool)

(assert (=> b!6736537 (= e!4069346 (forall!15763 (t!379681 lt!2438466) lambda!378266))))

(assert (= (and d!2116601 (not res!2755768)) b!6736536))

(assert (= (and b!6736536 res!2755769) b!6736537))

(declare-fun b_lambda!253639 () Bool)

(assert (=> (not b_lambda!253639) (not b!6736536)))

(declare-fun m!7493958 () Bool)

(assert (=> b!6736536 m!7493958))

(declare-fun m!7493960 () Bool)

(assert (=> b!6736537 m!7493960))

(assert (=> d!2116389 d!2116601))

(declare-fun d!2116603 () Bool)

(assert (=> d!2116603 (= (nullable!6550 r!7292) (nullableFct!2463 r!7292))))

(declare-fun bs!1791339 () Bool)

(assert (= bs!1791339 d!2116603))

(declare-fun m!7493962 () Bool)

(assert (=> bs!1791339 m!7493962))

(assert (=> b!6735601 d!2116603))

(declare-fun call!608729 () Bool)

(declare-fun c!1249447 () Bool)

(declare-fun c!1249446 () Bool)

(declare-fun bm!608722 () Bool)

(assert (=> bm!608722 (= call!608729 (validRegex!8299 (ite c!1249447 (reg!16892 lt!2438434) (ite c!1249446 (regTwo!33639 lt!2438434) (regTwo!33638 lt!2438434)))))))

(declare-fun b!6736544 () Bool)

(declare-fun e!4069349 () Bool)

(declare-fun e!4069354 () Bool)

(assert (=> b!6736544 (= e!4069349 e!4069354)))

(assert (=> b!6736544 (= c!1249446 ((_ is Union!16563) lt!2438434))))

(declare-fun b!6736545 () Bool)

(declare-fun e!4069352 () Bool)

(declare-fun call!608728 () Bool)

(assert (=> b!6736545 (= e!4069352 call!608728)))

(declare-fun b!6736546 () Bool)

(declare-fun e!4069353 () Bool)

(declare-fun e!4069355 () Bool)

(assert (=> b!6736546 (= e!4069353 e!4069355)))

(declare-fun res!2755776 () Bool)

(assert (=> b!6736546 (=> (not res!2755776) (not e!4069355))))

(declare-fun call!608727 () Bool)

(assert (=> b!6736546 (= res!2755776 call!608727)))

(declare-fun b!6736547 () Bool)

(declare-fun res!2755778 () Bool)

(assert (=> b!6736547 (=> res!2755778 e!4069353)))

(assert (=> b!6736547 (= res!2755778 (not ((_ is Concat!25408) lt!2438434)))))

(assert (=> b!6736547 (= e!4069354 e!4069353)))

(declare-fun b!6736548 () Bool)

(declare-fun e!4069351 () Bool)

(assert (=> b!6736548 (= e!4069351 call!608729)))

(declare-fun b!6736549 () Bool)

(assert (=> b!6736549 (= e!4069349 e!4069351)))

(declare-fun res!2755779 () Bool)

(assert (=> b!6736549 (= res!2755779 (not (nullable!6550 (reg!16892 lt!2438434))))))

(assert (=> b!6736549 (=> (not res!2755779) (not e!4069351))))

(declare-fun bm!608723 () Bool)

(assert (=> bm!608723 (= call!608728 call!608729)))

(declare-fun b!6736550 () Bool)

(declare-fun e!4069350 () Bool)

(assert (=> b!6736550 (= e!4069350 e!4069349)))

(assert (=> b!6736550 (= c!1249447 ((_ is Star!16563) lt!2438434))))

(declare-fun b!6736551 () Bool)

(declare-fun res!2755780 () Bool)

(assert (=> b!6736551 (=> (not res!2755780) (not e!4069352))))

(assert (=> b!6736551 (= res!2755780 call!608727)))

(assert (=> b!6736551 (= e!4069354 e!4069352)))

(declare-fun bm!608724 () Bool)

(assert (=> bm!608724 (= call!608727 (validRegex!8299 (ite c!1249446 (regOne!33639 lt!2438434) (regOne!33638 lt!2438434))))))

(declare-fun b!6736552 () Bool)

(assert (=> b!6736552 (= e!4069355 call!608728)))

(declare-fun d!2116605 () Bool)

(declare-fun res!2755777 () Bool)

(assert (=> d!2116605 (=> res!2755777 e!4069350)))

(assert (=> d!2116605 (= res!2755777 ((_ is ElementMatch!16563) lt!2438434))))

(assert (=> d!2116605 (= (validRegex!8299 lt!2438434) e!4069350)))

(assert (= (and d!2116605 (not res!2755777)) b!6736550))

(assert (= (and b!6736550 c!1249447) b!6736549))

(assert (= (and b!6736550 (not c!1249447)) b!6736544))

(assert (= (and b!6736549 res!2755779) b!6736548))

(assert (= (and b!6736544 c!1249446) b!6736551))

(assert (= (and b!6736544 (not c!1249446)) b!6736547))

(assert (= (and b!6736551 res!2755780) b!6736545))

(assert (= (and b!6736547 (not res!2755778)) b!6736546))

(assert (= (and b!6736546 res!2755776) b!6736552))

(assert (= (or b!6736545 b!6736552) bm!608723))

(assert (= (or b!6736551 b!6736546) bm!608724))

(assert (= (or b!6736548 bm!608723) bm!608722))

(declare-fun m!7493964 () Bool)

(assert (=> bm!608722 m!7493964))

(declare-fun m!7493966 () Bool)

(assert (=> b!6736549 m!7493966))

(declare-fun m!7493968 () Bool)

(assert (=> bm!608724 m!7493968))

(assert (=> d!2116337 d!2116605))

(assert (=> d!2116337 d!2116387))

(assert (=> d!2116337 d!2116389))

(assert (=> b!6736075 d!2116335))

(declare-fun bs!1791340 () Bool)

(declare-fun d!2116607 () Bool)

(assert (= bs!1791340 (and d!2116607 d!2116413)))

(declare-fun lambda!378297 () Int)

(assert (=> bs!1791340 (= lambda!378297 lambda!378269)))

(declare-fun bs!1791341 () Bool)

(assert (= bs!1791341 (and d!2116607 d!2116457)))

(assert (=> bs!1791341 (= lambda!378297 lambda!378273)))

(declare-fun bs!1791342 () Bool)

(assert (= bs!1791342 (and d!2116607 d!2116335)))

(assert (=> bs!1791342 (= lambda!378297 lambda!378241)))

(declare-fun bs!1791343 () Bool)

(assert (= bs!1791343 (and d!2116607 d!2116251)))

(assert (=> bs!1791343 (= lambda!378297 lambda!378199)))

(declare-fun bs!1791344 () Bool)

(assert (= bs!1791344 (and d!2116607 d!2116389)))

(assert (=> bs!1791344 (= lambda!378297 lambda!378266)))

(declare-fun bs!1791345 () Bool)

(assert (= bs!1791345 (and d!2116607 d!2116519)))

(assert (=> bs!1791345 (= lambda!378297 lambda!378289)))

(declare-fun bs!1791346 () Bool)

(assert (= bs!1791346 (and d!2116607 d!2116393)))

(assert (=> bs!1791346 (= lambda!378297 lambda!378267)))

(declare-fun bs!1791347 () Bool)

(assert (= bs!1791347 (and d!2116607 d!2116387)))

(assert (=> bs!1791347 (= lambda!378297 lambda!378263)))

(declare-fun bs!1791348 () Bool)

(assert (= bs!1791348 (and d!2116607 d!2116411)))

(assert (=> bs!1791348 (= lambda!378297 lambda!378268)))

(declare-fun bs!1791349 () Bool)

(assert (= bs!1791349 (and d!2116607 d!2116521)))

(assert (=> bs!1791349 (= lambda!378297 lambda!378290)))

(declare-fun bs!1791350 () Bool)

(assert (= bs!1791350 (and d!2116607 d!2116247)))

(assert (=> bs!1791350 (= lambda!378297 lambda!378198)))

(declare-fun lt!2438491 () List!65988)

(assert (=> d!2116607 (forall!15763 lt!2438491 lambda!378297)))

(declare-fun e!4069356 () List!65988)

(assert (=> d!2116607 (= lt!2438491 e!4069356)))

(declare-fun c!1249448 () Bool)

(assert (=> d!2116607 (= c!1249448 ((_ is Cons!65866) (t!379683 zl!343)))))

(assert (=> d!2116607 (= (unfocusZipperList!1984 (t!379683 zl!343)) lt!2438491)))

(declare-fun b!6736553 () Bool)

(assert (=> b!6736553 (= e!4069356 (Cons!65864 (generalisedConcat!2160 (exprs!6447 (h!72314 (t!379683 zl!343)))) (unfocusZipperList!1984 (t!379683 (t!379683 zl!343)))))))

(declare-fun b!6736554 () Bool)

(assert (=> b!6736554 (= e!4069356 Nil!65864)))

(assert (= (and d!2116607 c!1249448) b!6736553))

(assert (= (and d!2116607 (not c!1249448)) b!6736554))

(declare-fun m!7493970 () Bool)

(assert (=> d!2116607 m!7493970))

(declare-fun m!7493972 () Bool)

(assert (=> b!6736553 m!7493972))

(declare-fun m!7493974 () Bool)

(assert (=> b!6736553 m!7493974))

(assert (=> b!6736075 d!2116607))

(assert (=> d!2116327 d!2116317))

(declare-fun d!2116609 () Bool)

(assert (=> d!2116609 (= (flatMap!2044 lt!2438370 lambda!378189) (dynLambda!26276 lambda!378189 lt!2438361))))

(assert (=> d!2116609 true))

(declare-fun _$13!4062 () Unit!159817)

(assert (=> d!2116609 (= (choose!50209 lt!2438370 lt!2438361 lambda!378189) _$13!4062)))

(declare-fun b_lambda!253641 () Bool)

(assert (=> (not b_lambda!253641) (not d!2116609)))

(declare-fun bs!1791353 () Bool)

(assert (= bs!1791353 d!2116609))

(assert (=> bs!1791353 m!7493028))

(assert (=> bs!1791353 m!7493334))

(assert (=> d!2116327 d!2116609))

(declare-fun d!2116611 () Bool)

(assert (=> d!2116611 true))

(declare-fun setRes!45975 () Bool)

(assert (=> d!2116611 setRes!45975))

(declare-fun condSetEmpty!45975 () Bool)

(declare-fun res!2755781 () (InoxSet Context!11894))

(assert (=> d!2116611 (= condSetEmpty!45975 (= res!2755781 ((as const (Array Context!11894 Bool)) false)))))

(assert (=> d!2116611 (= (choose!50208 lt!2438370 lambda!378189) res!2755781)))

(declare-fun setIsEmpty!45975 () Bool)

(assert (=> setIsEmpty!45975 setRes!45975))

(declare-fun e!4069357 () Bool)

(declare-fun tp!1846783 () Bool)

(declare-fun setElem!45975 () Context!11894)

(declare-fun setNonEmpty!45975 () Bool)

(assert (=> setNonEmpty!45975 (= setRes!45975 (and tp!1846783 (inv!84654 setElem!45975) e!4069357))))

(declare-fun setRest!45975 () (InoxSet Context!11894))

(assert (=> setNonEmpty!45975 (= res!2755781 ((_ map or) (store ((as const (Array Context!11894 Bool)) false) setElem!45975 true) setRest!45975))))

(declare-fun b!6736555 () Bool)

(declare-fun tp!1846782 () Bool)

(assert (=> b!6736555 (= e!4069357 tp!1846782)))

(assert (= (and d!2116611 condSetEmpty!45975) setIsEmpty!45975))

(assert (= (and d!2116611 (not condSetEmpty!45975)) setNonEmpty!45975))

(assert (= setNonEmpty!45975 b!6736555))

(declare-fun m!7493976 () Bool)

(assert (=> setNonEmpty!45975 m!7493976))

(assert (=> d!2116317 d!2116611))

(assert (=> b!6735603 d!2116445))

(declare-fun d!2116613 () Bool)

(assert (=> d!2116613 (= (nullable!6550 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))) (nullableFct!2463 (h!72312 (exprs!6447 (Context!11895 (Cons!65864 r!7292 Nil!65864))))))))

(declare-fun bs!1791356 () Bool)

(assert (= bs!1791356 d!2116613))

(declare-fun m!7493978 () Bool)

(assert (=> bs!1791356 m!7493978))

(assert (=> b!6735907 d!2116613))

(assert (=> bm!608544 d!2116379))

(declare-fun d!2116615 () Bool)

(declare-fun c!1249449 () Bool)

(assert (=> d!2116615 (= c!1249449 (isEmpty!38201 (tail!12638 s!2326)))))

(declare-fun e!4069358 () Bool)

(assert (=> d!2116615 (= (matchZipper!2549 (derivationStepZipper!2507 lt!2438370 (head!13552 s!2326)) (tail!12638 s!2326)) e!4069358)))

(declare-fun b!6736556 () Bool)

(assert (=> b!6736556 (= e!4069358 (nullableZipper!2278 (derivationStepZipper!2507 lt!2438370 (head!13552 s!2326))))))

(declare-fun b!6736557 () Bool)

(assert (=> b!6736557 (= e!4069358 (matchZipper!2549 (derivationStepZipper!2507 (derivationStepZipper!2507 lt!2438370 (head!13552 s!2326)) (head!13552 (tail!12638 s!2326))) (tail!12638 (tail!12638 s!2326))))))

(assert (= (and d!2116615 c!1249449) b!6736556))

(assert (= (and d!2116615 (not c!1249449)) b!6736557))

(assert (=> d!2116615 m!7493166))

(assert (=> d!2116615 m!7493168))

(assert (=> b!6736556 m!7493414))

(declare-fun m!7493980 () Bool)

(assert (=> b!6736556 m!7493980))

(assert (=> b!6736557 m!7493166))

(assert (=> b!6736557 m!7493650))

(assert (=> b!6736557 m!7493414))

(assert (=> b!6736557 m!7493650))

(declare-fun m!7493982 () Bool)

(assert (=> b!6736557 m!7493982))

(assert (=> b!6736557 m!7493166))

(assert (=> b!6736557 m!7493644))

(assert (=> b!6736557 m!7493982))

(assert (=> b!6736557 m!7493644))

(declare-fun m!7493984 () Bool)

(assert (=> b!6736557 m!7493984))

(assert (=> b!6735935 d!2116615))

(declare-fun bs!1791359 () Bool)

(declare-fun d!2116617 () Bool)

(assert (= bs!1791359 (and d!2116617 b!6735413)))

(declare-fun lambda!378299 () Int)

(assert (=> bs!1791359 (= (= (head!13552 s!2326) (h!72313 s!2326)) (= lambda!378299 lambda!378189))))

(declare-fun bs!1791360 () Bool)

(assert (= bs!1791360 (and d!2116617 d!2116355)))

(assert (=> bs!1791360 (= (= (head!13552 s!2326) (h!72313 s!2326)) (= lambda!378299 lambda!378244))))

(declare-fun bs!1791361 () Bool)

(assert (= bs!1791361 (and d!2116617 d!2116363)))

(assert (=> bs!1791361 (= (= (head!13552 s!2326) (h!72313 s!2326)) (= lambda!378299 lambda!378245))))

(declare-fun bs!1791362 () Bool)

(assert (= bs!1791362 (and d!2116617 d!2116433)))

(assert (=> bs!1791362 (= (= (head!13552 s!2326) (head!13552 (t!379682 s!2326))) (= lambda!378299 lambda!378272))))

(assert (=> d!2116617 true))

(assert (=> d!2116617 (= (derivationStepZipper!2507 lt!2438370 (head!13552 s!2326)) (flatMap!2044 lt!2438370 lambda!378299))))

(declare-fun bs!1791363 () Bool)

(assert (= bs!1791363 d!2116617))

(declare-fun m!7493986 () Bool)

(assert (=> bs!1791363 m!7493986))

(assert (=> b!6735935 d!2116617))

(assert (=> b!6735935 d!2116445))

(assert (=> b!6735935 d!2116447))

(assert (=> b!6735599 d!2116445))

(declare-fun bm!608725 () Bool)

(declare-fun call!608732 () Bool)

(declare-fun c!1249451 () Bool)

(declare-fun c!1249450 () Bool)

(assert (=> bm!608725 (= call!608732 (validRegex!8299 (ite c!1249451 (reg!16892 lt!2438463) (ite c!1249450 (regTwo!33639 lt!2438463) (regTwo!33638 lt!2438463)))))))

(declare-fun b!6736558 () Bool)

(declare-fun e!4069359 () Bool)

(declare-fun e!4069364 () Bool)

(assert (=> b!6736558 (= e!4069359 e!4069364)))

(assert (=> b!6736558 (= c!1249450 ((_ is Union!16563) lt!2438463))))

(declare-fun b!6736559 () Bool)

(declare-fun e!4069362 () Bool)

(declare-fun call!608731 () Bool)

(assert (=> b!6736559 (= e!4069362 call!608731)))

(declare-fun b!6736560 () Bool)

(declare-fun e!4069363 () Bool)

(declare-fun e!4069365 () Bool)

(assert (=> b!6736560 (= e!4069363 e!4069365)))

(declare-fun res!2755782 () Bool)

(assert (=> b!6736560 (=> (not res!2755782) (not e!4069365))))

(declare-fun call!608730 () Bool)

(assert (=> b!6736560 (= res!2755782 call!608730)))

(declare-fun b!6736561 () Bool)

(declare-fun res!2755784 () Bool)

(assert (=> b!6736561 (=> res!2755784 e!4069363)))

(assert (=> b!6736561 (= res!2755784 (not ((_ is Concat!25408) lt!2438463)))))

(assert (=> b!6736561 (= e!4069364 e!4069363)))

(declare-fun b!6736562 () Bool)

(declare-fun e!4069361 () Bool)

(assert (=> b!6736562 (= e!4069361 call!608732)))

(declare-fun b!6736563 () Bool)

(assert (=> b!6736563 (= e!4069359 e!4069361)))

(declare-fun res!2755785 () Bool)

(assert (=> b!6736563 (= res!2755785 (not (nullable!6550 (reg!16892 lt!2438463))))))

(assert (=> b!6736563 (=> (not res!2755785) (not e!4069361))))

(declare-fun bm!608726 () Bool)

(assert (=> bm!608726 (= call!608731 call!608732)))

(declare-fun b!6736564 () Bool)

(declare-fun e!4069360 () Bool)

(assert (=> b!6736564 (= e!4069360 e!4069359)))

(assert (=> b!6736564 (= c!1249451 ((_ is Star!16563) lt!2438463))))

(declare-fun b!6736565 () Bool)

(declare-fun res!2755786 () Bool)

(assert (=> b!6736565 (=> (not res!2755786) (not e!4069362))))

(assert (=> b!6736565 (= res!2755786 call!608730)))

(assert (=> b!6736565 (= e!4069364 e!4069362)))

(declare-fun bm!608727 () Bool)

(assert (=> bm!608727 (= call!608730 (validRegex!8299 (ite c!1249450 (regOne!33639 lt!2438463) (regOne!33638 lt!2438463))))))

(declare-fun b!6736566 () Bool)

(assert (=> b!6736566 (= e!4069365 call!608731)))

(declare-fun d!2116619 () Bool)

(declare-fun res!2755783 () Bool)

(assert (=> d!2116619 (=> res!2755783 e!4069360)))

(assert (=> d!2116619 (= res!2755783 ((_ is ElementMatch!16563) lt!2438463))))

(assert (=> d!2116619 (= (validRegex!8299 lt!2438463) e!4069360)))

(assert (= (and d!2116619 (not res!2755783)) b!6736564))

(assert (= (and b!6736564 c!1249451) b!6736563))

(assert (= (and b!6736564 (not c!1249451)) b!6736558))

(assert (= (and b!6736563 res!2755785) b!6736562))

(assert (= (and b!6736558 c!1249450) b!6736565))

(assert (= (and b!6736558 (not c!1249450)) b!6736561))

(assert (= (and b!6736565 res!2755786) b!6736559))

(assert (= (and b!6736561 (not res!2755784)) b!6736560))

(assert (= (and b!6736560 res!2755782) b!6736566))

(assert (= (or b!6736559 b!6736566) bm!608726))

(assert (= (or b!6736565 b!6736560) bm!608727))

(assert (= (or b!6736562 bm!608726) bm!608725))

(declare-fun m!7493988 () Bool)

(assert (=> bm!608725 m!7493988))

(declare-fun m!7493990 () Bool)

(assert (=> b!6736563 m!7493990))

(declare-fun m!7493992 () Bool)

(assert (=> bm!608727 m!7493992))

(assert (=> d!2116387 d!2116619))

(declare-fun d!2116621 () Bool)

(declare-fun res!2755787 () Bool)

(declare-fun e!4069366 () Bool)

(assert (=> d!2116621 (=> res!2755787 e!4069366)))

(assert (=> d!2116621 (= res!2755787 ((_ is Nil!65864) (unfocusZipperList!1984 zl!343)))))

(assert (=> d!2116621 (= (forall!15763 (unfocusZipperList!1984 zl!343) lambda!378263) e!4069366)))

(declare-fun b!6736567 () Bool)

(declare-fun e!4069367 () Bool)

(assert (=> b!6736567 (= e!4069366 e!4069367)))

(declare-fun res!2755788 () Bool)

(assert (=> b!6736567 (=> (not res!2755788) (not e!4069367))))

(assert (=> b!6736567 (= res!2755788 (dynLambda!26278 lambda!378263 (h!72312 (unfocusZipperList!1984 zl!343))))))

(declare-fun b!6736568 () Bool)

(assert (=> b!6736568 (= e!4069367 (forall!15763 (t!379681 (unfocusZipperList!1984 zl!343)) lambda!378263))))

(assert (= (and d!2116621 (not res!2755787)) b!6736567))

(assert (= (and b!6736567 res!2755788) b!6736568))

(declare-fun b_lambda!253643 () Bool)

(assert (=> (not b_lambda!253643) (not b!6736567)))

(declare-fun m!7493994 () Bool)

(assert (=> b!6736567 m!7493994))

(declare-fun m!7493998 () Bool)

(assert (=> b!6736568 m!7493998))

(assert (=> d!2116387 d!2116621))

(declare-fun d!2116623 () Bool)

(assert (=> d!2116623 (= (Exists!3631 lambda!378250) (choose!50212 lambda!378250))))

(declare-fun bs!1791365 () Bool)

(assert (= bs!1791365 d!2116623))

(declare-fun m!7494002 () Bool)

(assert (=> bs!1791365 m!7494002))

(assert (=> d!2116367 d!2116623))

(declare-fun d!2116627 () Bool)

(assert (=> d!2116627 (= (Exists!3631 lambda!378251) (choose!50212 lambda!378251))))

(declare-fun bs!1791366 () Bool)

(assert (= bs!1791366 d!2116627))

(declare-fun m!7494004 () Bool)

(assert (=> bs!1791366 m!7494004))

(assert (=> d!2116367 d!2116627))

(declare-fun bs!1791375 () Bool)

(declare-fun d!2116629 () Bool)

(assert (= bs!1791375 (and d!2116629 d!2116467)))

(declare-fun lambda!378308 () Int)

(assert (=> bs!1791375 (not (= lambda!378308 lambda!378279))))

(declare-fun bs!1791376 () Bool)

(assert (= bs!1791376 (and d!2116629 b!6735399)))

(assert (=> bs!1791376 (not (= lambda!378308 lambda!378188))))

(declare-fun bs!1791377 () Bool)

(assert (= bs!1791377 (and d!2116629 d!2116367)))

(assert (=> bs!1791377 (not (= lambda!378308 lambda!378251))))

(declare-fun bs!1791378 () Bool)

(assert (= bs!1791378 (and d!2116629 d!2116373)))

(assert (=> bs!1791378 (not (= lambda!378308 lambda!378257))))

(declare-fun bs!1791379 () Bool)

(assert (= bs!1791379 (and d!2116629 b!6736211)))

(assert (=> bs!1791379 (not (= lambda!378308 lambda!378270))))

(declare-fun bs!1791380 () Bool)

(assert (= bs!1791380 (and d!2116629 d!2116509)))

(assert (=> bs!1791380 (= lambda!378308 lambda!378288)))

(assert (=> bs!1791378 (= (= r!7292 (Star!16563 (reg!16892 r!7292))) (= lambda!378308 lambda!378256))))

(declare-fun bs!1791381 () Bool)

(assert (= bs!1791381 (and d!2116629 d!2116385)))

(assert (=> bs!1791381 (= lambda!378308 lambda!378260)))

(assert (=> bs!1791375 (= (= r!7292 (Star!16563 (reg!16892 r!7292))) (= lambda!378308 lambda!378278))))

(assert (=> bs!1791376 (= lambda!378308 lambda!378186)))

(declare-fun bs!1791382 () Bool)

(assert (= bs!1791382 (and d!2116629 b!6735505)))

(assert (=> bs!1791382 (not (= lambda!378308 lambda!378213))))

(assert (=> bs!1791376 (not (= lambda!378308 lambda!378187))))

(assert (=> bs!1791377 (= lambda!378308 lambda!378250)))

(declare-fun bs!1791384 () Bool)

(assert (= bs!1791384 (and d!2116629 b!6736216)))

(assert (=> bs!1791384 (not (= lambda!378308 lambda!378271))))

(declare-fun bs!1791386 () Bool)

(assert (= bs!1791386 (and d!2116629 b!6735500)))

(assert (=> bs!1791386 (not (= lambda!378308 lambda!378210))))

(assert (=> d!2116629 true))

(assert (=> d!2116629 true))

(assert (=> d!2116629 true))

(declare-fun lambda!378310 () Int)

(assert (=> bs!1791375 (not (= lambda!378310 lambda!378279))))

(assert (=> bs!1791376 (= lambda!378310 lambda!378188)))

(assert (=> bs!1791377 (= lambda!378310 lambda!378251)))

(assert (=> bs!1791378 (not (= lambda!378310 lambda!378257))))

(assert (=> bs!1791379 (not (= lambda!378310 lambda!378270))))

(assert (=> bs!1791380 (not (= lambda!378310 lambda!378288))))

(declare-fun bs!1791392 () Bool)

(assert (= bs!1791392 d!2116629))

(assert (=> bs!1791392 (not (= lambda!378310 lambda!378308))))

(assert (=> bs!1791378 (not (= lambda!378310 lambda!378256))))

(assert (=> bs!1791381 (not (= lambda!378310 lambda!378260))))

(assert (=> bs!1791375 (not (= lambda!378310 lambda!378278))))

(assert (=> bs!1791376 (not (= lambda!378310 lambda!378186))))

(assert (=> bs!1791382 (= (and (= (reg!16892 r!7292) (regOne!33638 r!7292)) (= r!7292 (regTwo!33638 r!7292))) (= lambda!378310 lambda!378213))))

(assert (=> bs!1791376 (not (= lambda!378310 lambda!378187))))

(assert (=> bs!1791377 (not (= lambda!378310 lambda!378250))))

(assert (=> bs!1791384 (= (and (= (reg!16892 r!7292) (regOne!33638 (regOne!33639 r!7292))) (= r!7292 (regTwo!33638 (regOne!33639 r!7292)))) (= lambda!378310 lambda!378271))))

(assert (=> bs!1791386 (not (= lambda!378310 lambda!378210))))

(assert (=> d!2116629 true))

(assert (=> d!2116629 true))

(assert (=> d!2116629 true))

(assert (=> d!2116629 (= (Exists!3631 lambda!378308) (Exists!3631 lambda!378310))))

(assert (=> d!2116629 true))

(declare-fun _$90!2587 () Unit!159817)

(assert (=> d!2116629 (= (choose!50210 (reg!16892 r!7292) r!7292 s!2326) _$90!2587)))

(declare-fun m!7494044 () Bool)

(assert (=> bs!1791392 m!7494044))

(declare-fun m!7494046 () Bool)

(assert (=> bs!1791392 m!7494046))

(assert (=> d!2116367 d!2116629))

(assert (=> d!2116367 d!2116469))

(declare-fun bs!1791396 () Bool)

(declare-fun b!6736616 () Bool)

(assert (= bs!1791396 (and b!6736616 d!2116467)))

(declare-fun lambda!378311 () Int)

(assert (=> bs!1791396 (= (and (= (reg!16892 (regTwo!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33639 r!7292) (Star!16563 (reg!16892 r!7292)))) (= lambda!378311 lambda!378279))))

(declare-fun bs!1791397 () Bool)

(assert (= bs!1791397 (and b!6736616 b!6735399)))

(assert (=> bs!1791397 (not (= lambda!378311 lambda!378188))))

(declare-fun bs!1791398 () Bool)

(assert (= bs!1791398 (and b!6736616 d!2116367)))

(assert (=> bs!1791398 (not (= lambda!378311 lambda!378251))))

(declare-fun bs!1791399 () Bool)

(assert (= bs!1791399 (and b!6736616 d!2116373)))

(assert (=> bs!1791399 (= (and (= (reg!16892 (regTwo!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33639 r!7292) (Star!16563 (reg!16892 r!7292)))) (= lambda!378311 lambda!378257))))

(declare-fun bs!1791400 () Bool)

(assert (= bs!1791400 (and b!6736616 b!6736211)))

(assert (=> bs!1791400 (= (and (= (reg!16892 (regTwo!33639 r!7292)) (reg!16892 (regOne!33639 r!7292))) (= (regTwo!33639 r!7292) (regOne!33639 r!7292))) (= lambda!378311 lambda!378270))))

(declare-fun bs!1791401 () Bool)

(assert (= bs!1791401 (and b!6736616 d!2116509)))

(assert (=> bs!1791401 (not (= lambda!378311 lambda!378288))))

(declare-fun bs!1791402 () Bool)

(assert (= bs!1791402 (and b!6736616 d!2116629)))

(assert (=> bs!1791402 (not (= lambda!378311 lambda!378308))))

(assert (=> bs!1791399 (not (= lambda!378311 lambda!378256))))

(declare-fun bs!1791403 () Bool)

(assert (= bs!1791403 (and b!6736616 d!2116385)))

(assert (=> bs!1791403 (not (= lambda!378311 lambda!378260))))

(assert (=> bs!1791396 (not (= lambda!378311 lambda!378278))))

(assert (=> bs!1791402 (not (= lambda!378311 lambda!378310))))

(assert (=> bs!1791397 (not (= lambda!378311 lambda!378186))))

(declare-fun bs!1791404 () Bool)

(assert (= bs!1791404 (and b!6736616 b!6735505)))

(assert (=> bs!1791404 (not (= lambda!378311 lambda!378213))))

(assert (=> bs!1791397 (= (and (= (reg!16892 (regTwo!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33639 r!7292) r!7292)) (= lambda!378311 lambda!378187))))

(assert (=> bs!1791398 (not (= lambda!378311 lambda!378250))))

(declare-fun bs!1791405 () Bool)

(assert (= bs!1791405 (and b!6736616 b!6736216)))

(assert (=> bs!1791405 (not (= lambda!378311 lambda!378271))))

(declare-fun bs!1791406 () Bool)

(assert (= bs!1791406 (and b!6736616 b!6735500)))

(assert (=> bs!1791406 (= (and (= (reg!16892 (regTwo!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33639 r!7292) r!7292)) (= lambda!378311 lambda!378210))))

(assert (=> b!6736616 true))

(assert (=> b!6736616 true))

(declare-fun bs!1791408 () Bool)

(declare-fun b!6736621 () Bool)

(assert (= bs!1791408 (and b!6736621 d!2116467)))

(declare-fun lambda!378312 () Int)

(assert (=> bs!1791408 (not (= lambda!378312 lambda!378279))))

(declare-fun bs!1791409 () Bool)

(assert (= bs!1791409 (and b!6736621 b!6735399)))

(assert (=> bs!1791409 (= (and (= (regOne!33638 (regTwo!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33638 (regTwo!33639 r!7292)) r!7292)) (= lambda!378312 lambda!378188))))

(declare-fun bs!1791410 () Bool)

(assert (= bs!1791410 (and b!6736621 d!2116367)))

(assert (=> bs!1791410 (= (and (= (regOne!33638 (regTwo!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33638 (regTwo!33639 r!7292)) r!7292)) (= lambda!378312 lambda!378251))))

(declare-fun bs!1791411 () Bool)

(assert (= bs!1791411 (and b!6736621 b!6736616)))

(assert (=> bs!1791411 (not (= lambda!378312 lambda!378311))))

(declare-fun bs!1791412 () Bool)

(assert (= bs!1791412 (and b!6736621 d!2116373)))

(assert (=> bs!1791412 (not (= lambda!378312 lambda!378257))))

(declare-fun bs!1791413 () Bool)

(assert (= bs!1791413 (and b!6736621 b!6736211)))

(assert (=> bs!1791413 (not (= lambda!378312 lambda!378270))))

(declare-fun bs!1791414 () Bool)

(assert (= bs!1791414 (and b!6736621 d!2116509)))

(assert (=> bs!1791414 (not (= lambda!378312 lambda!378288))))

(declare-fun bs!1791415 () Bool)

(assert (= bs!1791415 (and b!6736621 d!2116629)))

(assert (=> bs!1791415 (not (= lambda!378312 lambda!378308))))

(assert (=> bs!1791412 (not (= lambda!378312 lambda!378256))))

(declare-fun bs!1791416 () Bool)

(assert (= bs!1791416 (and b!6736621 d!2116385)))

(assert (=> bs!1791416 (not (= lambda!378312 lambda!378260))))

(assert (=> bs!1791408 (not (= lambda!378312 lambda!378278))))

(assert (=> bs!1791415 (= (and (= (regOne!33638 (regTwo!33639 r!7292)) (reg!16892 r!7292)) (= (regTwo!33638 (regTwo!33639 r!7292)) r!7292)) (= lambda!378312 lambda!378310))))

(assert (=> bs!1791409 (not (= lambda!378312 lambda!378186))))

(declare-fun bs!1791417 () Bool)

(assert (= bs!1791417 (and b!6736621 b!6735505)))

(assert (=> bs!1791417 (= (and (= (regOne!33638 (regTwo!33639 r!7292)) (regOne!33638 r!7292)) (= (regTwo!33638 (regTwo!33639 r!7292)) (regTwo!33638 r!7292))) (= lambda!378312 lambda!378213))))

(assert (=> bs!1791409 (not (= lambda!378312 lambda!378187))))

(assert (=> bs!1791410 (not (= lambda!378312 lambda!378250))))

(declare-fun bs!1791418 () Bool)

(assert (= bs!1791418 (and b!6736621 b!6736216)))

(assert (=> bs!1791418 (= (and (= (regOne!33638 (regTwo!33639 r!7292)) (regOne!33638 (regOne!33639 r!7292))) (= (regTwo!33638 (regTwo!33639 r!7292)) (regTwo!33638 (regOne!33639 r!7292)))) (= lambda!378312 lambda!378271))))

(declare-fun bs!1791419 () Bool)

(assert (= bs!1791419 (and b!6736621 b!6735500)))

(assert (=> bs!1791419 (not (= lambda!378312 lambda!378210))))

(assert (=> b!6736621 true))

(assert (=> b!6736621 true))

(declare-fun b!6736615 () Bool)

(declare-fun c!1249464 () Bool)

(assert (=> b!6736615 (= c!1249464 ((_ is Union!16563) (regTwo!33639 r!7292)))))

(declare-fun e!4069398 () Bool)

(declare-fun e!4069401 () Bool)

(assert (=> b!6736615 (= e!4069398 e!4069401)))

(declare-fun d!2116645 () Bool)

(declare-fun c!1249463 () Bool)

(assert (=> d!2116645 (= c!1249463 ((_ is EmptyExpr!16563) (regTwo!33639 r!7292)))))

(declare-fun e!4069400 () Bool)

(assert (=> d!2116645 (= (matchRSpec!3664 (regTwo!33639 r!7292) s!2326) e!4069400)))

(declare-fun e!4069402 () Bool)

(declare-fun call!608743 () Bool)

(assert (=> b!6736616 (= e!4069402 call!608743)))

(declare-fun b!6736617 () Bool)

(declare-fun e!4069399 () Bool)

(assert (=> b!6736617 (= e!4069400 e!4069399)))

(declare-fun res!2755815 () Bool)

(assert (=> b!6736617 (= res!2755815 (not ((_ is EmptyLang!16563) (regTwo!33639 r!7292))))))

(assert (=> b!6736617 (=> (not res!2755815) (not e!4069399))))

(declare-fun b!6736618 () Bool)

(declare-fun e!4069403 () Bool)

(assert (=> b!6736618 (= e!4069401 e!4069403)))

(declare-fun c!1249466 () Bool)

(assert (=> b!6736618 (= c!1249466 ((_ is Star!16563) (regTwo!33639 r!7292)))))

(declare-fun b!6736619 () Bool)

(declare-fun e!4069397 () Bool)

(assert (=> b!6736619 (= e!4069401 e!4069397)))

(declare-fun res!2755813 () Bool)

(assert (=> b!6736619 (= res!2755813 (matchRSpec!3664 (regOne!33639 (regTwo!33639 r!7292)) s!2326))))

(assert (=> b!6736619 (=> res!2755813 e!4069397)))

(declare-fun b!6736620 () Bool)

(assert (=> b!6736620 (= e!4069398 (= s!2326 (Cons!65865 (c!1249129 (regTwo!33639 r!7292)) Nil!65865)))))

(declare-fun bm!608737 () Bool)

(assert (=> bm!608737 (= call!608743 (Exists!3631 (ite c!1249466 lambda!378311 lambda!378312)))))

(declare-fun bm!608738 () Bool)

(declare-fun call!608742 () Bool)

(assert (=> bm!608738 (= call!608742 (isEmpty!38201 s!2326))))

(assert (=> b!6736621 (= e!4069403 call!608743)))

(declare-fun b!6736622 () Bool)

(assert (=> b!6736622 (= e!4069397 (matchRSpec!3664 (regTwo!33639 (regTwo!33639 r!7292)) s!2326))))

(declare-fun b!6736623 () Bool)

(declare-fun res!2755814 () Bool)

(assert (=> b!6736623 (=> res!2755814 e!4069402)))

(assert (=> b!6736623 (= res!2755814 call!608742)))

(assert (=> b!6736623 (= e!4069403 e!4069402)))

(declare-fun b!6736624 () Bool)

(declare-fun c!1249465 () Bool)

(assert (=> b!6736624 (= c!1249465 ((_ is ElementMatch!16563) (regTwo!33639 r!7292)))))

(assert (=> b!6736624 (= e!4069399 e!4069398)))

(declare-fun b!6736625 () Bool)

(assert (=> b!6736625 (= e!4069400 call!608742)))

(assert (= (and d!2116645 c!1249463) b!6736625))

(assert (= (and d!2116645 (not c!1249463)) b!6736617))

(assert (= (and b!6736617 res!2755815) b!6736624))

(assert (= (and b!6736624 c!1249465) b!6736620))

(assert (= (and b!6736624 (not c!1249465)) b!6736615))

(assert (= (and b!6736615 c!1249464) b!6736619))

(assert (= (and b!6736615 (not c!1249464)) b!6736618))

(assert (= (and b!6736619 (not res!2755813)) b!6736622))

(assert (= (and b!6736618 c!1249466) b!6736623))

(assert (= (and b!6736618 (not c!1249466)) b!6736621))

(assert (= (and b!6736623 (not res!2755814)) b!6736616))

(assert (= (or b!6736616 b!6736621) bm!608737))

(assert (= (or b!6736625 b!6736623) bm!608738))

(declare-fun m!7494090 () Bool)

(assert (=> b!6736619 m!7494090))

(declare-fun m!7494092 () Bool)

(assert (=> bm!608737 m!7494092))

(assert (=> bm!608738 m!7493046))

(declare-fun m!7494094 () Bool)

(assert (=> b!6736622 m!7494094))

(assert (=> b!6735506 d!2116645))

(declare-fun d!2116669 () Bool)

(declare-fun e!4069422 () Bool)

(assert (=> d!2116669 e!4069422))

(declare-fun c!1249471 () Bool)

(assert (=> d!2116669 (= c!1249471 ((_ is EmptyExpr!16563) (reg!16892 r!7292)))))

(declare-fun lt!2438495 () Bool)

(declare-fun e!4069423 () Bool)

(assert (=> d!2116669 (= lt!2438495 e!4069423)))

(declare-fun c!1249472 () Bool)

(assert (=> d!2116669 (= c!1249472 (isEmpty!38201 (_1!36841 (get!22916 lt!2438457))))))

(assert (=> d!2116669 (validRegex!8299 (reg!16892 r!7292))))

(assert (=> d!2116669 (= (matchR!8746 (reg!16892 r!7292) (_1!36841 (get!22916 lt!2438457))) lt!2438495)))

(declare-fun bm!608742 () Bool)

(declare-fun call!608747 () Bool)

(assert (=> bm!608742 (= call!608747 (isEmpty!38201 (_1!36841 (get!22916 lt!2438457))))))

(declare-fun b!6736649 () Bool)

(assert (=> b!6736649 (= e!4069422 (= lt!2438495 call!608747))))

(declare-fun b!6736650 () Bool)

(declare-fun res!2755832 () Bool)

(declare-fun e!4069427 () Bool)

(assert (=> b!6736650 (=> (not res!2755832) (not e!4069427))))

(assert (=> b!6736650 (= res!2755832 (not call!608747))))

(declare-fun b!6736651 () Bool)

(declare-fun e!4069424 () Bool)

(declare-fun e!4069426 () Bool)

(assert (=> b!6736651 (= e!4069424 e!4069426)))

(declare-fun res!2755837 () Bool)

(assert (=> b!6736651 (=> (not res!2755837) (not e!4069426))))

(assert (=> b!6736651 (= res!2755837 (not lt!2438495))))

(declare-fun b!6736652 () Bool)

(declare-fun res!2755835 () Bool)

(assert (=> b!6736652 (=> res!2755835 e!4069424)))

(assert (=> b!6736652 (= res!2755835 (not ((_ is ElementMatch!16563) (reg!16892 r!7292))))))

(declare-fun e!4069425 () Bool)

(assert (=> b!6736652 (= e!4069425 e!4069424)))

(declare-fun b!6736653 () Bool)

(assert (=> b!6736653 (= e!4069423 (matchR!8746 (derivativeStep!5234 (reg!16892 r!7292) (head!13552 (_1!36841 (get!22916 lt!2438457)))) (tail!12638 (_1!36841 (get!22916 lt!2438457)))))))

(declare-fun b!6736654 () Bool)

(declare-fun res!2755838 () Bool)

(declare-fun e!4069421 () Bool)

(assert (=> b!6736654 (=> res!2755838 e!4069421)))

(assert (=> b!6736654 (= res!2755838 (not (isEmpty!38201 (tail!12638 (_1!36841 (get!22916 lt!2438457))))))))

(declare-fun b!6736655 () Bool)

(assert (=> b!6736655 (= e!4069425 (not lt!2438495))))

(declare-fun b!6736656 () Bool)

(declare-fun res!2755836 () Bool)

(assert (=> b!6736656 (=> (not res!2755836) (not e!4069427))))

(assert (=> b!6736656 (= res!2755836 (isEmpty!38201 (tail!12638 (_1!36841 (get!22916 lt!2438457)))))))

(declare-fun b!6736657 () Bool)

(assert (=> b!6736657 (= e!4069426 e!4069421)))

(declare-fun res!2755833 () Bool)

(assert (=> b!6736657 (=> res!2755833 e!4069421)))

(assert (=> b!6736657 (= res!2755833 call!608747)))

(declare-fun b!6736658 () Bool)

(assert (=> b!6736658 (= e!4069421 (not (= (head!13552 (_1!36841 (get!22916 lt!2438457))) (c!1249129 (reg!16892 r!7292)))))))

(declare-fun b!6736659 () Bool)

(assert (=> b!6736659 (= e!4069422 e!4069425)))

(declare-fun c!1249473 () Bool)

(assert (=> b!6736659 (= c!1249473 ((_ is EmptyLang!16563) (reg!16892 r!7292)))))

(declare-fun b!6736660 () Bool)

(assert (=> b!6736660 (= e!4069423 (nullable!6550 (reg!16892 r!7292)))))

(declare-fun b!6736661 () Bool)

(declare-fun res!2755831 () Bool)

(assert (=> b!6736661 (=> res!2755831 e!4069424)))

(assert (=> b!6736661 (= res!2755831 e!4069427)))

(declare-fun res!2755834 () Bool)

(assert (=> b!6736661 (=> (not res!2755834) (not e!4069427))))

(assert (=> b!6736661 (= res!2755834 lt!2438495)))

(declare-fun b!6736662 () Bool)

(assert (=> b!6736662 (= e!4069427 (= (head!13552 (_1!36841 (get!22916 lt!2438457))) (c!1249129 (reg!16892 r!7292))))))

(assert (= (and d!2116669 c!1249472) b!6736660))

(assert (= (and d!2116669 (not c!1249472)) b!6736653))

(assert (= (and d!2116669 c!1249471) b!6736649))

(assert (= (and d!2116669 (not c!1249471)) b!6736659))

(assert (= (and b!6736659 c!1249473) b!6736655))

(assert (= (and b!6736659 (not c!1249473)) b!6736652))

(assert (= (and b!6736652 (not res!2755835)) b!6736661))

(assert (= (and b!6736661 res!2755834) b!6736650))

(assert (= (and b!6736650 res!2755832) b!6736656))

(assert (= (and b!6736656 res!2755836) b!6736662))

(assert (= (and b!6736661 (not res!2755831)) b!6736651))

(assert (= (and b!6736651 res!2755837) b!6736657))

(assert (= (and b!6736657 (not res!2755833)) b!6736654))

(assert (= (and b!6736654 (not res!2755838)) b!6736658))

(assert (= (or b!6736649 b!6736650 b!6736657) bm!608742))

(assert (=> b!6736660 m!7493510))

(declare-fun m!7494110 () Bool)

(assert (=> b!6736654 m!7494110))

(assert (=> b!6736654 m!7494110))

(declare-fun m!7494112 () Bool)

(assert (=> b!6736654 m!7494112))

(declare-fun m!7494114 () Bool)

(assert (=> d!2116669 m!7494114))

(assert (=> d!2116669 m!7493446))

(declare-fun m!7494116 () Bool)

(assert (=> b!6736658 m!7494116))

(assert (=> b!6736653 m!7494116))

(assert (=> b!6736653 m!7494116))

(declare-fun m!7494118 () Bool)

(assert (=> b!6736653 m!7494118))

(assert (=> b!6736653 m!7494110))

(assert (=> b!6736653 m!7494118))

(assert (=> b!6736653 m!7494110))

(declare-fun m!7494120 () Bool)

(assert (=> b!6736653 m!7494120))

(assert (=> bm!608742 m!7494114))

(assert (=> b!6736656 m!7494110))

(assert (=> b!6736656 m!7494110))

(assert (=> b!6736656 m!7494112))

(assert (=> b!6736662 m!7494116))

(assert (=> b!6736035 d!2116669))

(assert (=> b!6736035 d!2116425))

(assert (=> d!2116357 d!2116379))

(declare-fun d!2116673 () Bool)

(assert (=> d!2116673 (= (nullable!6550 (h!72312 (exprs!6447 lt!2438365))) (nullableFct!2463 (h!72312 (exprs!6447 lt!2438365))))))

(declare-fun bs!1791420 () Bool)

(assert (= bs!1791420 d!2116673))

(declare-fun m!7494122 () Bool)

(assert (=> bs!1791420 m!7494122))

(assert (=> b!6736113 d!2116673))

(declare-fun b!6736663 () Bool)

(declare-fun e!4069432 () (InoxSet Context!11894))

(declare-fun e!4069433 () (InoxSet Context!11894))

(assert (=> b!6736663 (= e!4069432 e!4069433)))

(declare-fun c!1249478 () Bool)

(assert (=> b!6736663 (= c!1249478 ((_ is Union!16563) (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))))))

(declare-fun bm!608743 () Bool)

(declare-fun call!608752 () List!65988)

(declare-fun call!608749 () List!65988)

(assert (=> bm!608743 (= call!608752 call!608749)))

(declare-fun call!608751 () (InoxSet Context!11894))

(declare-fun bm!608744 () Bool)

(assert (=> bm!608744 (= call!608751 (derivationStepZipperDown!1791 (ite c!1249478 (regTwo!33639 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))) (regOne!33638 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292))))))) (ite c!1249478 (ite (or c!1249227 c!1249224) lt!2438378 (Context!11895 call!608607)) (Context!11895 call!608749)) (h!72313 s!2326)))))

(declare-fun b!6736664 () Bool)

(declare-fun e!4069428 () (InoxSet Context!11894))

(declare-fun call!608750 () (InoxSet Context!11894))

(assert (=> b!6736664 (= e!4069428 call!608750)))

(declare-fun c!1249475 () Bool)

(declare-fun c!1249474 () Bool)

(declare-fun bm!608745 () Bool)

(assert (=> bm!608745 (= call!608749 ($colon$colon!2380 (exprs!6447 (ite (or c!1249227 c!1249224) lt!2438378 (Context!11895 call!608607))) (ite (or c!1249475 c!1249474) (regTwo!33638 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))) (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292))))))))))

(declare-fun b!6736665 () Bool)

(declare-fun e!4069429 () Bool)

(assert (=> b!6736665 (= e!4069429 (nullable!6550 (regOne!33638 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292))))))))))

(declare-fun bm!608746 () Bool)

(declare-fun call!608753 () (InoxSet Context!11894))

(assert (=> bm!608746 (= call!608753 (derivationStepZipperDown!1791 (ite c!1249478 (regOne!33639 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))) (ite c!1249475 (regTwo!33638 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))) (ite c!1249474 (regOne!33638 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))) (reg!16892 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292))))))))) (ite (or c!1249478 c!1249475) (ite (or c!1249227 c!1249224) lt!2438378 (Context!11895 call!608607)) (Context!11895 call!608752)) (h!72313 s!2326)))))

(declare-fun c!1249477 () Bool)

(declare-fun b!6736666 () Bool)

(assert (=> b!6736666 (= c!1249477 ((_ is Star!16563) (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))))))

(declare-fun e!4069431 () (InoxSet Context!11894))

(assert (=> b!6736666 (= e!4069431 e!4069428)))

(declare-fun b!6736667 () Bool)

(assert (=> b!6736667 (= e!4069431 call!608750)))

(declare-fun b!6736668 () Bool)

(declare-fun e!4069430 () (InoxSet Context!11894))

(declare-fun call!608748 () (InoxSet Context!11894))

(assert (=> b!6736668 (= e!4069430 ((_ map or) call!608751 call!608748))))

(declare-fun b!6736669 () Bool)

(assert (=> b!6736669 (= c!1249475 e!4069429)))

(declare-fun res!2755839 () Bool)

(assert (=> b!6736669 (=> (not res!2755839) (not e!4069429))))

(assert (=> b!6736669 (= res!2755839 ((_ is Concat!25408) (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))))))

(assert (=> b!6736669 (= e!4069433 e!4069430)))

(declare-fun bm!608747 () Bool)

(assert (=> bm!608747 (= call!608750 call!608748)))

(declare-fun b!6736671 () Bool)

(assert (=> b!6736671 (= e!4069430 e!4069431)))

(assert (=> b!6736671 (= c!1249474 ((_ is Concat!25408) (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))))))

(declare-fun bm!608748 () Bool)

(assert (=> bm!608748 (= call!608748 call!608753)))

(declare-fun b!6736672 () Bool)

(assert (=> b!6736672 (= e!4069428 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736673 () Bool)

(assert (=> b!6736673 (= e!4069433 ((_ map or) call!608753 call!608751))))

(declare-fun d!2116675 () Bool)

(declare-fun c!1249476 () Bool)

(assert (=> d!2116675 (= c!1249476 (and ((_ is ElementMatch!16563) (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))) (= (c!1249129 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292)))))) (h!72313 s!2326))))))

(assert (=> d!2116675 (= (derivationStepZipperDown!1791 (ite c!1249227 (regOne!33639 (reg!16892 r!7292)) (ite c!1249224 (regTwo!33638 (reg!16892 r!7292)) (ite c!1249223 (regOne!33638 (reg!16892 r!7292)) (reg!16892 (reg!16892 r!7292))))) (ite (or c!1249227 c!1249224) lt!2438378 (Context!11895 call!608607)) (h!72313 s!2326)) e!4069432)))

(declare-fun b!6736670 () Bool)

(assert (=> b!6736670 (= e!4069432 (store ((as const (Array Context!11894 Bool)) false) (ite (or c!1249227 c!1249224) lt!2438378 (Context!11895 call!608607)) true))))

(assert (= (and d!2116675 c!1249476) b!6736670))

(assert (= (and d!2116675 (not c!1249476)) b!6736663))

(assert (= (and b!6736663 c!1249478) b!6736673))

(assert (= (and b!6736663 (not c!1249478)) b!6736669))

(assert (= (and b!6736669 res!2755839) b!6736665))

(assert (= (and b!6736669 c!1249475) b!6736668))

(assert (= (and b!6736669 (not c!1249475)) b!6736671))

(assert (= (and b!6736671 c!1249474) b!6736667))

(assert (= (and b!6736671 (not c!1249474)) b!6736666))

(assert (= (and b!6736666 c!1249477) b!6736664))

(assert (= (and b!6736666 (not c!1249477)) b!6736672))

(assert (= (or b!6736667 b!6736664) bm!608743))

(assert (= (or b!6736667 b!6736664) bm!608747))

(assert (= (or b!6736668 bm!608743) bm!608745))

(assert (= (or b!6736668 bm!608747) bm!608748))

(assert (= (or b!6736673 b!6736668) bm!608744))

(assert (= (or b!6736673 bm!608748) bm!608746))

(declare-fun m!7494124 () Bool)

(assert (=> b!6736665 m!7494124))

(declare-fun m!7494128 () Bool)

(assert (=> bm!608746 m!7494128))

(declare-fun m!7494132 () Bool)

(assert (=> bm!608744 m!7494132))

(declare-fun m!7494134 () Bool)

(assert (=> b!6736670 m!7494134))

(declare-fun m!7494136 () Bool)

(assert (=> bm!608745 m!7494136))

(assert (=> bm!608601 d!2116675))

(declare-fun d!2116679 () Bool)

(assert (=> d!2116679 (= (isEmpty!38205 (t!379681 (exprs!6447 (h!72314 zl!343)))) ((_ is Nil!65864) (t!379681 (exprs!6447 (h!72314 zl!343)))))))

(assert (=> b!6735856 d!2116679))

(declare-fun b!6736683 () Bool)

(declare-fun e!4069443 () (InoxSet Context!11894))

(declare-fun e!4069444 () (InoxSet Context!11894))

(assert (=> b!6736683 (= e!4069443 e!4069444)))

(declare-fun c!1249485 () Bool)

(assert (=> b!6736683 (= c!1249485 ((_ is Union!16563) (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))))))

(declare-fun bm!608749 () Bool)

(declare-fun call!608758 () List!65988)

(declare-fun call!608755 () List!65988)

(assert (=> bm!608749 (= call!608758 call!608755)))

(declare-fun bm!608750 () Bool)

(declare-fun call!608757 () (InoxSet Context!11894))

(assert (=> bm!608750 (= call!608757 (derivationStepZipperDown!1791 (ite c!1249485 (regTwo!33639 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))) (regOne!33638 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292))))) (ite c!1249485 (ite c!1249227 lt!2438378 (Context!11895 call!608604)) (Context!11895 call!608755)) (h!72313 s!2326)))))

(declare-fun b!6736684 () Bool)

(declare-fun e!4069439 () (InoxSet Context!11894))

(declare-fun call!608756 () (InoxSet Context!11894))

(assert (=> b!6736684 (= e!4069439 call!608756)))

(declare-fun bm!608751 () Bool)

(declare-fun c!1249482 () Bool)

(declare-fun c!1249481 () Bool)

(assert (=> bm!608751 (= call!608755 ($colon$colon!2380 (exprs!6447 (ite c!1249227 lt!2438378 (Context!11895 call!608604))) (ite (or c!1249482 c!1249481) (regTwo!33638 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))) (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292))))))))

(declare-fun b!6736685 () Bool)

(declare-fun e!4069440 () Bool)

(assert (=> b!6736685 (= e!4069440 (nullable!6550 (regOne!33638 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292))))))))

(declare-fun bm!608752 () Bool)

(declare-fun call!608759 () (InoxSet Context!11894))

(assert (=> bm!608752 (= call!608759 (derivationStepZipperDown!1791 (ite c!1249485 (regOne!33639 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))) (ite c!1249482 (regTwo!33638 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))) (ite c!1249481 (regOne!33638 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))) (reg!16892 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292))))))) (ite (or c!1249485 c!1249482) (ite c!1249227 lt!2438378 (Context!11895 call!608604)) (Context!11895 call!608758)) (h!72313 s!2326)))))

(declare-fun b!6736686 () Bool)

(declare-fun c!1249484 () Bool)

(assert (=> b!6736686 (= c!1249484 ((_ is Star!16563) (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))))))

(declare-fun e!4069442 () (InoxSet Context!11894))

(assert (=> b!6736686 (= e!4069442 e!4069439)))

(declare-fun b!6736687 () Bool)

(assert (=> b!6736687 (= e!4069442 call!608756)))

(declare-fun b!6736688 () Bool)

(declare-fun e!4069441 () (InoxSet Context!11894))

(declare-fun call!608754 () (InoxSet Context!11894))

(assert (=> b!6736688 (= e!4069441 ((_ map or) call!608757 call!608754))))

(declare-fun b!6736689 () Bool)

(assert (=> b!6736689 (= c!1249482 e!4069440)))

(declare-fun res!2755845 () Bool)

(assert (=> b!6736689 (=> (not res!2755845) (not e!4069440))))

(assert (=> b!6736689 (= res!2755845 ((_ is Concat!25408) (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))))))

(assert (=> b!6736689 (= e!4069444 e!4069441)))

(declare-fun bm!608753 () Bool)

(assert (=> bm!608753 (= call!608756 call!608754)))

(declare-fun b!6736691 () Bool)

(assert (=> b!6736691 (= e!4069441 e!4069442)))

(assert (=> b!6736691 (= c!1249481 ((_ is Concat!25408) (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))))))

(declare-fun bm!608754 () Bool)

(assert (=> bm!608754 (= call!608754 call!608759)))

(declare-fun b!6736692 () Bool)

(assert (=> b!6736692 (= e!4069439 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736693 () Bool)

(assert (=> b!6736693 (= e!4069444 ((_ map or) call!608759 call!608757))))

(declare-fun c!1249483 () Bool)

(declare-fun d!2116681 () Bool)

(assert (=> d!2116681 (= c!1249483 (and ((_ is ElementMatch!16563) (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))) (= (c!1249129 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292)))) (h!72313 s!2326))))))

(assert (=> d!2116681 (= (derivationStepZipperDown!1791 (ite c!1249227 (regTwo!33639 (reg!16892 r!7292)) (regOne!33638 (reg!16892 r!7292))) (ite c!1249227 lt!2438378 (Context!11895 call!608604)) (h!72313 s!2326)) e!4069443)))

(declare-fun b!6736690 () Bool)

(assert (=> b!6736690 (= e!4069443 (store ((as const (Array Context!11894 Bool)) false) (ite c!1249227 lt!2438378 (Context!11895 call!608604)) true))))

(assert (= (and d!2116681 c!1249483) b!6736690))

(assert (= (and d!2116681 (not c!1249483)) b!6736683))

(assert (= (and b!6736683 c!1249485) b!6736693))

(assert (= (and b!6736683 (not c!1249485)) b!6736689))

(assert (= (and b!6736689 res!2755845) b!6736685))

(assert (= (and b!6736689 c!1249482) b!6736688))

(assert (= (and b!6736689 (not c!1249482)) b!6736691))

(assert (= (and b!6736691 c!1249481) b!6736687))

(assert (= (and b!6736691 (not c!1249481)) b!6736686))

(assert (= (and b!6736686 c!1249484) b!6736684))

(assert (= (and b!6736686 (not c!1249484)) b!6736692))

(assert (= (or b!6736687 b!6736684) bm!608749))

(assert (= (or b!6736687 b!6736684) bm!608753))

(assert (= (or b!6736688 bm!608749) bm!608751))

(assert (= (or b!6736688 bm!608753) bm!608754))

(assert (= (or b!6736693 b!6736688) bm!608750))

(assert (= (or b!6736693 bm!608754) bm!608752))

(declare-fun m!7494138 () Bool)

(assert (=> b!6736685 m!7494138))

(declare-fun m!7494142 () Bool)

(assert (=> bm!608752 m!7494142))

(declare-fun m!7494148 () Bool)

(assert (=> bm!608750 m!7494148))

(declare-fun m!7494150 () Bool)

(assert (=> b!6736690 m!7494150))

(declare-fun m!7494154 () Bool)

(assert (=> bm!608751 m!7494154))

(assert (=> bm!608599 d!2116681))

(declare-fun d!2116683 () Bool)

(declare-fun c!1249492 () Bool)

(assert (=> d!2116683 (= c!1249492 ((_ is Nil!65866) lt!2438412))))

(declare-fun e!4069453 () (InoxSet Context!11894))

(assert (=> d!2116683 (= (content!12795 lt!2438412) e!4069453)))

(declare-fun b!6736708 () Bool)

(assert (=> b!6736708 (= e!4069453 ((as const (Array Context!11894 Bool)) false))))

(declare-fun b!6736709 () Bool)

(assert (=> b!6736709 (= e!4069453 ((_ map or) (store ((as const (Array Context!11894 Bool)) false) (h!72314 lt!2438412) true) (content!12795 (t!379683 lt!2438412))))))

(assert (= (and d!2116683 c!1249492) b!6736708))

(assert (= (and d!2116683 (not c!1249492)) b!6736709))

(declare-fun m!7494182 () Bool)

(assert (=> b!6736709 m!7494182))

(declare-fun m!7494184 () Bool)

(assert (=> b!6736709 m!7494184))

(assert (=> b!6735637 d!2116683))

(assert (=> bs!1791229 d!2116319))

(declare-fun bs!1791422 () Bool)

(declare-fun d!2116691 () Bool)

(assert (= bs!1791422 (and d!2116691 d!2116413)))

(declare-fun lambda!378313 () Int)

(assert (=> bs!1791422 (= lambda!378313 lambda!378269)))

(declare-fun bs!1791423 () Bool)

(assert (= bs!1791423 (and d!2116691 d!2116457)))

(assert (=> bs!1791423 (= lambda!378313 lambda!378273)))

(declare-fun bs!1791424 () Bool)

(assert (= bs!1791424 (and d!2116691 d!2116607)))

(assert (=> bs!1791424 (= lambda!378313 lambda!378297)))

(declare-fun bs!1791425 () Bool)

(assert (= bs!1791425 (and d!2116691 d!2116335)))

(assert (=> bs!1791425 (= lambda!378313 lambda!378241)))

(declare-fun bs!1791426 () Bool)

(assert (= bs!1791426 (and d!2116691 d!2116251)))

(assert (=> bs!1791426 (= lambda!378313 lambda!378199)))

(declare-fun bs!1791427 () Bool)

(assert (= bs!1791427 (and d!2116691 d!2116389)))

(assert (=> bs!1791427 (= lambda!378313 lambda!378266)))

(declare-fun bs!1791428 () Bool)

(assert (= bs!1791428 (and d!2116691 d!2116519)))

(assert (=> bs!1791428 (= lambda!378313 lambda!378289)))

(declare-fun bs!1791429 () Bool)

(assert (= bs!1791429 (and d!2116691 d!2116393)))

(assert (=> bs!1791429 (= lambda!378313 lambda!378267)))

(declare-fun bs!1791430 () Bool)

(assert (= bs!1791430 (and d!2116691 d!2116387)))

(assert (=> bs!1791430 (= lambda!378313 lambda!378263)))

(declare-fun bs!1791431 () Bool)

(assert (= bs!1791431 (and d!2116691 d!2116411)))

(assert (=> bs!1791431 (= lambda!378313 lambda!378268)))

(declare-fun bs!1791432 () Bool)

(assert (= bs!1791432 (and d!2116691 d!2116521)))

(assert (=> bs!1791432 (= lambda!378313 lambda!378290)))

(declare-fun bs!1791433 () Bool)

(assert (= bs!1791433 (and d!2116691 d!2116247)))

(assert (=> bs!1791433 (= lambda!378313 lambda!378198)))

(assert (=> d!2116691 (= (inv!84654 (h!72314 (t!379683 zl!343))) (forall!15763 (exprs!6447 (h!72314 (t!379683 zl!343))) lambda!378313))))

(declare-fun bs!1791434 () Bool)

(assert (= bs!1791434 d!2116691))

(declare-fun m!7494192 () Bool)

(assert (=> bs!1791434 m!7494192))

(assert (=> b!6736125 d!2116691))

(declare-fun d!2116697 () Bool)

(assert (=> d!2116697 (= ($colon$colon!2380 (exprs!6447 lt!2438378) (ite (or c!1249224 c!1249223) (regTwo!33638 (reg!16892 r!7292)) (reg!16892 r!7292))) (Cons!65864 (ite (or c!1249224 c!1249223) (regTwo!33638 (reg!16892 r!7292)) (reg!16892 r!7292)) (exprs!6447 lt!2438378)))))

(assert (=> bm!608600 d!2116697))

(declare-fun d!2116699 () Bool)

(assert (=> d!2116699 (= (nullable!6550 (h!72312 (exprs!6447 lt!2438378))) (nullableFct!2463 (h!72312 (exprs!6447 lt!2438378))))))

(declare-fun bs!1791435 () Bool)

(assert (= bs!1791435 d!2116699))

(declare-fun m!7494194 () Bool)

(assert (=> bs!1791435 m!7494194))

(assert (=> b!6736108 d!2116699))

(declare-fun d!2116703 () Bool)

(declare-fun res!2755849 () Bool)

(declare-fun e!4069458 () Bool)

(assert (=> d!2116703 (=> res!2755849 e!4069458)))

(assert (=> d!2116703 (= res!2755849 ((_ is Nil!65864) (exprs!6447 setElem!45965)))))

(assert (=> d!2116703 (= (forall!15763 (exprs!6447 setElem!45965) lambda!378199) e!4069458)))

(declare-fun b!6736717 () Bool)

(declare-fun e!4069459 () Bool)

(assert (=> b!6736717 (= e!4069458 e!4069459)))

(declare-fun res!2755850 () Bool)

(assert (=> b!6736717 (=> (not res!2755850) (not e!4069459))))

(assert (=> b!6736717 (= res!2755850 (dynLambda!26278 lambda!378199 (h!72312 (exprs!6447 setElem!45965))))))

(declare-fun b!6736718 () Bool)

(assert (=> b!6736718 (= e!4069459 (forall!15763 (t!379681 (exprs!6447 setElem!45965)) lambda!378199))))

(assert (= (and d!2116703 (not res!2755849)) b!6736717))

(assert (= (and b!6736717 res!2755850) b!6736718))

(declare-fun b_lambda!253651 () Bool)

(assert (=> (not b_lambda!253651) (not b!6736717)))

(declare-fun m!7494196 () Bool)

(assert (=> b!6736717 m!7494196))

(declare-fun m!7494198 () Bool)

(assert (=> b!6736718 m!7494198))

(assert (=> d!2116251 d!2116703))

(declare-fun b!6736720 () Bool)

(declare-fun e!4069460 () Bool)

(declare-fun tp!1846796 () Bool)

(declare-fun tp!1846793 () Bool)

(assert (=> b!6736720 (= e!4069460 (and tp!1846796 tp!1846793))))

(assert (=> b!6736156 (= tp!1846757 e!4069460)))

(declare-fun b!6736719 () Bool)

(assert (=> b!6736719 (= e!4069460 tp_is_empty!42379)))

(declare-fun b!6736722 () Bool)

(declare-fun tp!1846792 () Bool)

(declare-fun tp!1846794 () Bool)

(assert (=> b!6736722 (= e!4069460 (and tp!1846792 tp!1846794))))

(declare-fun b!6736721 () Bool)

(declare-fun tp!1846795 () Bool)

(assert (=> b!6736721 (= e!4069460 tp!1846795)))

(assert (= (and b!6736156 ((_ is ElementMatch!16563) (regOne!33638 (reg!16892 r!7292)))) b!6736719))

(assert (= (and b!6736156 ((_ is Concat!25408) (regOne!33638 (reg!16892 r!7292)))) b!6736720))

(assert (= (and b!6736156 ((_ is Star!16563) (regOne!33638 (reg!16892 r!7292)))) b!6736721))

(assert (= (and b!6736156 ((_ is Union!16563) (regOne!33638 (reg!16892 r!7292)))) b!6736722))

(declare-fun b!6736724 () Bool)

(declare-fun e!4069461 () Bool)

(declare-fun tp!1846801 () Bool)

(declare-fun tp!1846798 () Bool)

(assert (=> b!6736724 (= e!4069461 (and tp!1846801 tp!1846798))))

(assert (=> b!6736156 (= tp!1846754 e!4069461)))

(declare-fun b!6736723 () Bool)

(assert (=> b!6736723 (= e!4069461 tp_is_empty!42379)))

(declare-fun b!6736726 () Bool)

(declare-fun tp!1846797 () Bool)

(declare-fun tp!1846799 () Bool)

(assert (=> b!6736726 (= e!4069461 (and tp!1846797 tp!1846799))))

(declare-fun b!6736725 () Bool)

(declare-fun tp!1846800 () Bool)

(assert (=> b!6736725 (= e!4069461 tp!1846800)))

(assert (= (and b!6736156 ((_ is ElementMatch!16563) (regTwo!33638 (reg!16892 r!7292)))) b!6736723))

(assert (= (and b!6736156 ((_ is Concat!25408) (regTwo!33638 (reg!16892 r!7292)))) b!6736724))

(assert (= (and b!6736156 ((_ is Star!16563) (regTwo!33638 (reg!16892 r!7292)))) b!6736725))

(assert (= (and b!6736156 ((_ is Union!16563) (regTwo!33638 (reg!16892 r!7292)))) b!6736726))

(declare-fun b!6736728 () Bool)

(declare-fun e!4069462 () Bool)

(declare-fun tp!1846806 () Bool)

(declare-fun tp!1846803 () Bool)

(assert (=> b!6736728 (= e!4069462 (and tp!1846806 tp!1846803))))

(assert (=> b!6736165 (= tp!1846769 e!4069462)))

(declare-fun b!6736727 () Bool)

(assert (=> b!6736727 (= e!4069462 tp_is_empty!42379)))

(declare-fun b!6736730 () Bool)

(declare-fun tp!1846802 () Bool)

(declare-fun tp!1846804 () Bool)

(assert (=> b!6736730 (= e!4069462 (and tp!1846802 tp!1846804))))

(declare-fun b!6736729 () Bool)

(declare-fun tp!1846805 () Bool)

(assert (=> b!6736729 (= e!4069462 tp!1846805)))

(assert (= (and b!6736165 ((_ is ElementMatch!16563) (regOne!33638 (regTwo!33638 r!7292)))) b!6736727))

(assert (= (and b!6736165 ((_ is Concat!25408) (regOne!33638 (regTwo!33638 r!7292)))) b!6736728))

(assert (= (and b!6736165 ((_ is Star!16563) (regOne!33638 (regTwo!33638 r!7292)))) b!6736729))

(assert (= (and b!6736165 ((_ is Union!16563) (regOne!33638 (regTwo!33638 r!7292)))) b!6736730))

(declare-fun b!6736732 () Bool)

(declare-fun e!4069463 () Bool)

(declare-fun tp!1846811 () Bool)

(declare-fun tp!1846808 () Bool)

(assert (=> b!6736732 (= e!4069463 (and tp!1846811 tp!1846808))))

(assert (=> b!6736165 (= tp!1846766 e!4069463)))

(declare-fun b!6736731 () Bool)

(assert (=> b!6736731 (= e!4069463 tp_is_empty!42379)))

(declare-fun b!6736734 () Bool)

(declare-fun tp!1846807 () Bool)

(declare-fun tp!1846809 () Bool)

(assert (=> b!6736734 (= e!4069463 (and tp!1846807 tp!1846809))))

(declare-fun b!6736733 () Bool)

(declare-fun tp!1846810 () Bool)

(assert (=> b!6736733 (= e!4069463 tp!1846810)))

(assert (= (and b!6736165 ((_ is ElementMatch!16563) (regTwo!33638 (regTwo!33638 r!7292)))) b!6736731))

(assert (= (and b!6736165 ((_ is Concat!25408) (regTwo!33638 (regTwo!33638 r!7292)))) b!6736732))

(assert (= (and b!6736165 ((_ is Star!16563) (regTwo!33638 (regTwo!33638 r!7292)))) b!6736733))

(assert (= (and b!6736165 ((_ is Union!16563) (regTwo!33638 (regTwo!33638 r!7292)))) b!6736734))

(declare-fun b!6736736 () Bool)

(declare-fun e!4069464 () Bool)

(declare-fun tp!1846816 () Bool)

(declare-fun tp!1846813 () Bool)

(assert (=> b!6736736 (= e!4069464 (and tp!1846816 tp!1846813))))

(assert (=> b!6736158 (= tp!1846753 e!4069464)))

(declare-fun b!6736735 () Bool)

(assert (=> b!6736735 (= e!4069464 tp_is_empty!42379)))

(declare-fun b!6736738 () Bool)

(declare-fun tp!1846812 () Bool)

(declare-fun tp!1846814 () Bool)

(assert (=> b!6736738 (= e!4069464 (and tp!1846812 tp!1846814))))

(declare-fun b!6736737 () Bool)

(declare-fun tp!1846815 () Bool)

(assert (=> b!6736737 (= e!4069464 tp!1846815)))

(assert (= (and b!6736158 ((_ is ElementMatch!16563) (regOne!33639 (reg!16892 r!7292)))) b!6736735))

(assert (= (and b!6736158 ((_ is Concat!25408) (regOne!33639 (reg!16892 r!7292)))) b!6736736))

(assert (= (and b!6736158 ((_ is Star!16563) (regOne!33639 (reg!16892 r!7292)))) b!6736737))

(assert (= (and b!6736158 ((_ is Union!16563) (regOne!33639 (reg!16892 r!7292)))) b!6736738))

(declare-fun b!6736740 () Bool)

(declare-fun e!4069465 () Bool)

(declare-fun tp!1846821 () Bool)

(declare-fun tp!1846818 () Bool)

(assert (=> b!6736740 (= e!4069465 (and tp!1846821 tp!1846818))))

(assert (=> b!6736158 (= tp!1846755 e!4069465)))

(declare-fun b!6736739 () Bool)

(assert (=> b!6736739 (= e!4069465 tp_is_empty!42379)))

(declare-fun b!6736742 () Bool)

(declare-fun tp!1846817 () Bool)

(declare-fun tp!1846819 () Bool)

(assert (=> b!6736742 (= e!4069465 (and tp!1846817 tp!1846819))))

(declare-fun b!6736741 () Bool)

(declare-fun tp!1846820 () Bool)

(assert (=> b!6736741 (= e!4069465 tp!1846820)))

(assert (= (and b!6736158 ((_ is ElementMatch!16563) (regTwo!33639 (reg!16892 r!7292)))) b!6736739))

(assert (= (and b!6736158 ((_ is Concat!25408) (regTwo!33639 (reg!16892 r!7292)))) b!6736740))

(assert (= (and b!6736158 ((_ is Star!16563) (regTwo!33639 (reg!16892 r!7292)))) b!6736741))

(assert (= (and b!6736158 ((_ is Union!16563) (regTwo!33639 (reg!16892 r!7292)))) b!6736742))

(declare-fun b!6736744 () Bool)

(declare-fun e!4069466 () Bool)

(declare-fun tp!1846826 () Bool)

(declare-fun tp!1846823 () Bool)

(assert (=> b!6736744 (= e!4069466 (and tp!1846826 tp!1846823))))

(assert (=> b!6736149 (= tp!1846746 e!4069466)))

(declare-fun b!6736743 () Bool)

(assert (=> b!6736743 (= e!4069466 tp_is_empty!42379)))

(declare-fun b!6736746 () Bool)

(declare-fun tp!1846822 () Bool)

(declare-fun tp!1846824 () Bool)

(assert (=> b!6736746 (= e!4069466 (and tp!1846822 tp!1846824))))

(declare-fun b!6736745 () Bool)

(declare-fun tp!1846825 () Bool)

(assert (=> b!6736745 (= e!4069466 tp!1846825)))

(assert (= (and b!6736149 ((_ is ElementMatch!16563) (reg!16892 (regOne!33639 r!7292)))) b!6736743))

(assert (= (and b!6736149 ((_ is Concat!25408) (reg!16892 (regOne!33639 r!7292)))) b!6736744))

(assert (= (and b!6736149 ((_ is Star!16563) (reg!16892 (regOne!33639 r!7292)))) b!6736745))

(assert (= (and b!6736149 ((_ is Union!16563) (reg!16892 (regOne!33639 r!7292)))) b!6736746))

(declare-fun b!6736748 () Bool)

(declare-fun e!4069467 () Bool)

(declare-fun tp!1846831 () Bool)

(declare-fun tp!1846828 () Bool)

(assert (=> b!6736748 (= e!4069467 (and tp!1846831 tp!1846828))))

(assert (=> b!6736148 (= tp!1846747 e!4069467)))

(declare-fun b!6736747 () Bool)

(assert (=> b!6736747 (= e!4069467 tp_is_empty!42379)))

(declare-fun b!6736750 () Bool)

(declare-fun tp!1846827 () Bool)

(declare-fun tp!1846829 () Bool)

(assert (=> b!6736750 (= e!4069467 (and tp!1846827 tp!1846829))))

(declare-fun b!6736749 () Bool)

(declare-fun tp!1846830 () Bool)

(assert (=> b!6736749 (= e!4069467 tp!1846830)))

(assert (= (and b!6736148 ((_ is ElementMatch!16563) (regOne!33638 (regOne!33639 r!7292)))) b!6736747))

(assert (= (and b!6736148 ((_ is Concat!25408) (regOne!33638 (regOne!33639 r!7292)))) b!6736748))

(assert (= (and b!6736148 ((_ is Star!16563) (regOne!33638 (regOne!33639 r!7292)))) b!6736749))

(assert (= (and b!6736148 ((_ is Union!16563) (regOne!33638 (regOne!33639 r!7292)))) b!6736750))

(declare-fun b!6736752 () Bool)

(declare-fun e!4069468 () Bool)

(declare-fun tp!1846836 () Bool)

(declare-fun tp!1846833 () Bool)

(assert (=> b!6736752 (= e!4069468 (and tp!1846836 tp!1846833))))

(assert (=> b!6736148 (= tp!1846744 e!4069468)))

(declare-fun b!6736751 () Bool)

(assert (=> b!6736751 (= e!4069468 tp_is_empty!42379)))

(declare-fun b!6736754 () Bool)

(declare-fun tp!1846832 () Bool)

(declare-fun tp!1846834 () Bool)

(assert (=> b!6736754 (= e!4069468 (and tp!1846832 tp!1846834))))

(declare-fun b!6736753 () Bool)

(declare-fun tp!1846835 () Bool)

(assert (=> b!6736753 (= e!4069468 tp!1846835)))

(assert (= (and b!6736148 ((_ is ElementMatch!16563) (regTwo!33638 (regOne!33639 r!7292)))) b!6736751))

(assert (= (and b!6736148 ((_ is Concat!25408) (regTwo!33638 (regOne!33639 r!7292)))) b!6736752))

(assert (= (and b!6736148 ((_ is Star!16563) (regTwo!33638 (regOne!33639 r!7292)))) b!6736753))

(assert (= (and b!6736148 ((_ is Union!16563) (regTwo!33638 (regOne!33639 r!7292)))) b!6736754))

(declare-fun b!6736756 () Bool)

(declare-fun e!4069469 () Bool)

(declare-fun tp!1846841 () Bool)

(declare-fun tp!1846838 () Bool)

(assert (=> b!6736756 (= e!4069469 (and tp!1846841 tp!1846838))))

(assert (=> b!6736157 (= tp!1846756 e!4069469)))

(declare-fun b!6736755 () Bool)

(assert (=> b!6736755 (= e!4069469 tp_is_empty!42379)))

(declare-fun b!6736758 () Bool)

(declare-fun tp!1846837 () Bool)

(declare-fun tp!1846839 () Bool)

(assert (=> b!6736758 (= e!4069469 (and tp!1846837 tp!1846839))))

(declare-fun b!6736757 () Bool)

(declare-fun tp!1846840 () Bool)

(assert (=> b!6736757 (= e!4069469 tp!1846840)))

(assert (= (and b!6736157 ((_ is ElementMatch!16563) (reg!16892 (reg!16892 r!7292)))) b!6736755))

(assert (= (and b!6736157 ((_ is Concat!25408) (reg!16892 (reg!16892 r!7292)))) b!6736756))

(assert (= (and b!6736157 ((_ is Star!16563) (reg!16892 (reg!16892 r!7292)))) b!6736757))

(assert (= (and b!6736157 ((_ is Union!16563) (reg!16892 (reg!16892 r!7292)))) b!6736758))

(declare-fun b!6736760 () Bool)

(declare-fun e!4069470 () Bool)

(declare-fun tp!1846846 () Bool)

(declare-fun tp!1846843 () Bool)

(assert (=> b!6736760 (= e!4069470 (and tp!1846846 tp!1846843))))

(assert (=> b!6736167 (= tp!1846765 e!4069470)))

(declare-fun b!6736759 () Bool)

(assert (=> b!6736759 (= e!4069470 tp_is_empty!42379)))

(declare-fun b!6736762 () Bool)

(declare-fun tp!1846842 () Bool)

(declare-fun tp!1846844 () Bool)

(assert (=> b!6736762 (= e!4069470 (and tp!1846842 tp!1846844))))

(declare-fun b!6736761 () Bool)

(declare-fun tp!1846845 () Bool)

(assert (=> b!6736761 (= e!4069470 tp!1846845)))

(assert (= (and b!6736167 ((_ is ElementMatch!16563) (regOne!33639 (regTwo!33638 r!7292)))) b!6736759))

(assert (= (and b!6736167 ((_ is Concat!25408) (regOne!33639 (regTwo!33638 r!7292)))) b!6736760))

(assert (= (and b!6736167 ((_ is Star!16563) (regOne!33639 (regTwo!33638 r!7292)))) b!6736761))

(assert (= (and b!6736167 ((_ is Union!16563) (regOne!33639 (regTwo!33638 r!7292)))) b!6736762))

(declare-fun b!6736764 () Bool)

(declare-fun e!4069471 () Bool)

(declare-fun tp!1846851 () Bool)

(declare-fun tp!1846848 () Bool)

(assert (=> b!6736764 (= e!4069471 (and tp!1846851 tp!1846848))))

(assert (=> b!6736167 (= tp!1846767 e!4069471)))

(declare-fun b!6736763 () Bool)

(assert (=> b!6736763 (= e!4069471 tp_is_empty!42379)))

(declare-fun b!6736766 () Bool)

(declare-fun tp!1846847 () Bool)

(declare-fun tp!1846849 () Bool)

(assert (=> b!6736766 (= e!4069471 (and tp!1846847 tp!1846849))))

(declare-fun b!6736765 () Bool)

(declare-fun tp!1846850 () Bool)

(assert (=> b!6736765 (= e!4069471 tp!1846850)))

(assert (= (and b!6736167 ((_ is ElementMatch!16563) (regTwo!33639 (regTwo!33638 r!7292)))) b!6736763))

(assert (= (and b!6736167 ((_ is Concat!25408) (regTwo!33639 (regTwo!33638 r!7292)))) b!6736764))

(assert (= (and b!6736167 ((_ is Star!16563) (regTwo!33639 (regTwo!33638 r!7292)))) b!6736765))

(assert (= (and b!6736167 ((_ is Union!16563) (regTwo!33639 (regTwo!33638 r!7292)))) b!6736766))

(declare-fun b!6736768 () Bool)

(declare-fun e!4069472 () Bool)

(declare-fun tp!1846856 () Bool)

(declare-fun tp!1846853 () Bool)

(assert (=> b!6736768 (= e!4069472 (and tp!1846856 tp!1846853))))

(assert (=> b!6736150 (= tp!1846743 e!4069472)))

(declare-fun b!6736767 () Bool)

(assert (=> b!6736767 (= e!4069472 tp_is_empty!42379)))

(declare-fun b!6736770 () Bool)

(declare-fun tp!1846852 () Bool)

(declare-fun tp!1846854 () Bool)

(assert (=> b!6736770 (= e!4069472 (and tp!1846852 tp!1846854))))

(declare-fun b!6736769 () Bool)

(declare-fun tp!1846855 () Bool)

(assert (=> b!6736769 (= e!4069472 tp!1846855)))

(assert (= (and b!6736150 ((_ is ElementMatch!16563) (regOne!33639 (regOne!33639 r!7292)))) b!6736767))

(assert (= (and b!6736150 ((_ is Concat!25408) (regOne!33639 (regOne!33639 r!7292)))) b!6736768))

(assert (= (and b!6736150 ((_ is Star!16563) (regOne!33639 (regOne!33639 r!7292)))) b!6736769))

(assert (= (and b!6736150 ((_ is Union!16563) (regOne!33639 (regOne!33639 r!7292)))) b!6736770))

(declare-fun b!6736772 () Bool)

(declare-fun e!4069473 () Bool)

(declare-fun tp!1846861 () Bool)

(declare-fun tp!1846858 () Bool)

(assert (=> b!6736772 (= e!4069473 (and tp!1846861 tp!1846858))))

(assert (=> b!6736150 (= tp!1846745 e!4069473)))

(declare-fun b!6736771 () Bool)

(assert (=> b!6736771 (= e!4069473 tp_is_empty!42379)))

(declare-fun b!6736774 () Bool)

(declare-fun tp!1846857 () Bool)

(declare-fun tp!1846859 () Bool)

(assert (=> b!6736774 (= e!4069473 (and tp!1846857 tp!1846859))))

(declare-fun b!6736773 () Bool)

(declare-fun tp!1846860 () Bool)

(assert (=> b!6736773 (= e!4069473 tp!1846860)))

(assert (= (and b!6736150 ((_ is ElementMatch!16563) (regTwo!33639 (regOne!33639 r!7292)))) b!6736771))

(assert (= (and b!6736150 ((_ is Concat!25408) (regTwo!33639 (regOne!33639 r!7292)))) b!6736772))

(assert (= (and b!6736150 ((_ is Star!16563) (regTwo!33639 (regOne!33639 r!7292)))) b!6736773))

(assert (= (and b!6736150 ((_ is Union!16563) (regTwo!33639 (regOne!33639 r!7292)))) b!6736774))

(declare-fun b!6736776 () Bool)

(declare-fun e!4069474 () Bool)

(declare-fun tp!1846866 () Bool)

(declare-fun tp!1846863 () Bool)

(assert (=> b!6736776 (= e!4069474 (and tp!1846866 tp!1846863))))

(assert (=> b!6736166 (= tp!1846768 e!4069474)))

(declare-fun b!6736775 () Bool)

(assert (=> b!6736775 (= e!4069474 tp_is_empty!42379)))

(declare-fun b!6736778 () Bool)

(declare-fun tp!1846862 () Bool)

(declare-fun tp!1846864 () Bool)

(assert (=> b!6736778 (= e!4069474 (and tp!1846862 tp!1846864))))

(declare-fun b!6736777 () Bool)

(declare-fun tp!1846865 () Bool)

(assert (=> b!6736777 (= e!4069474 tp!1846865)))

(assert (= (and b!6736166 ((_ is ElementMatch!16563) (reg!16892 (regTwo!33638 r!7292)))) b!6736775))

(assert (= (and b!6736166 ((_ is Concat!25408) (reg!16892 (regTwo!33638 r!7292)))) b!6736776))

(assert (= (and b!6736166 ((_ is Star!16563) (reg!16892 (regTwo!33638 r!7292)))) b!6736777))

(assert (= (and b!6736166 ((_ is Union!16563) (reg!16892 (regTwo!33638 r!7292)))) b!6736778))

(declare-fun b!6736779 () Bool)

(declare-fun e!4069475 () Bool)

(declare-fun tp!1846867 () Bool)

(declare-fun tp!1846868 () Bool)

(assert (=> b!6736779 (= e!4069475 (and tp!1846867 tp!1846868))))

(assert (=> b!6736136 (= tp!1846731 e!4069475)))

(assert (= (and b!6736136 ((_ is Cons!65864) (exprs!6447 setElem!45971))) b!6736779))

(declare-fun condSetEmpty!45980 () Bool)

(assert (=> setNonEmpty!45971 (= condSetEmpty!45980 (= setRest!45971 ((as const (Array Context!11894 Bool)) false)))))

(declare-fun setRes!45980 () Bool)

(assert (=> setNonEmpty!45971 (= tp!1846732 setRes!45980)))

(declare-fun setIsEmpty!45980 () Bool)

(assert (=> setIsEmpty!45980 setRes!45980))

(declare-fun setElem!45980 () Context!11894)

(declare-fun setNonEmpty!45980 () Bool)

(declare-fun tp!1846870 () Bool)

(declare-fun e!4069476 () Bool)

(assert (=> setNonEmpty!45980 (= setRes!45980 (and tp!1846870 (inv!84654 setElem!45980) e!4069476))))

(declare-fun setRest!45980 () (InoxSet Context!11894))

(assert (=> setNonEmpty!45980 (= setRest!45971 ((_ map or) (store ((as const (Array Context!11894 Bool)) false) setElem!45980 true) setRest!45980))))

(declare-fun b!6736780 () Bool)

(declare-fun tp!1846869 () Bool)

(assert (=> b!6736780 (= e!4069476 tp!1846869)))

(assert (= (and setNonEmpty!45971 condSetEmpty!45980) setIsEmpty!45980))

(assert (= (and setNonEmpty!45971 (not condSetEmpty!45980)) setNonEmpty!45980))

(assert (= setNonEmpty!45980 b!6736780))

(declare-fun m!7494212 () Bool)

(assert (=> setNonEmpty!45980 m!7494212))

(declare-fun b!6736782 () Bool)

(declare-fun e!4069477 () Bool)

(declare-fun tp!1846875 () Bool)

(declare-fun tp!1846872 () Bool)

(assert (=> b!6736782 (= e!4069477 (and tp!1846875 tp!1846872))))

(assert (=> b!6736159 (= tp!1846758 e!4069477)))

(declare-fun b!6736781 () Bool)

(assert (=> b!6736781 (= e!4069477 tp_is_empty!42379)))

(declare-fun b!6736784 () Bool)

(declare-fun tp!1846871 () Bool)

(declare-fun tp!1846873 () Bool)

(assert (=> b!6736784 (= e!4069477 (and tp!1846871 tp!1846873))))

(declare-fun b!6736783 () Bool)

(declare-fun tp!1846874 () Bool)

(assert (=> b!6736783 (= e!4069477 tp!1846874)))

(assert (= (and b!6736159 ((_ is ElementMatch!16563) (h!72312 (exprs!6447 (h!72314 zl!343))))) b!6736781))

(assert (= (and b!6736159 ((_ is Concat!25408) (h!72312 (exprs!6447 (h!72314 zl!343))))) b!6736782))

(assert (= (and b!6736159 ((_ is Star!16563) (h!72312 (exprs!6447 (h!72314 zl!343))))) b!6736783))

(assert (= (and b!6736159 ((_ is Union!16563) (h!72312 (exprs!6447 (h!72314 zl!343))))) b!6736784))

(declare-fun b!6736785 () Bool)

(declare-fun e!4069478 () Bool)

(declare-fun tp!1846876 () Bool)

(declare-fun tp!1846877 () Bool)

(assert (=> b!6736785 (= e!4069478 (and tp!1846876 tp!1846877))))

(assert (=> b!6736159 (= tp!1846759 e!4069478)))

(assert (= (and b!6736159 ((_ is Cons!65864) (t!379681 (exprs!6447 (h!72314 zl!343))))) b!6736785))

(declare-fun b!6736786 () Bool)

(declare-fun e!4069479 () Bool)

(declare-fun tp!1846878 () Bool)

(assert (=> b!6736786 (= e!4069479 (and tp_is_empty!42379 tp!1846878))))

(assert (=> b!6736118 (= tp!1846714 e!4069479)))

(assert (= (and b!6736118 ((_ is Cons!65865) (t!379682 (t!379682 s!2326)))) b!6736786))

(declare-fun b!6736788 () Bool)

(declare-fun e!4069480 () Bool)

(declare-fun tp!1846883 () Bool)

(declare-fun tp!1846880 () Bool)

(assert (=> b!6736788 (= e!4069480 (and tp!1846883 tp!1846880))))

(assert (=> b!6736154 (= tp!1846748 e!4069480)))

(declare-fun b!6736787 () Bool)

(assert (=> b!6736787 (= e!4069480 tp_is_empty!42379)))

(declare-fun b!6736790 () Bool)

(declare-fun tp!1846879 () Bool)

(declare-fun tp!1846881 () Bool)

(assert (=> b!6736790 (= e!4069480 (and tp!1846879 tp!1846881))))

(declare-fun b!6736789 () Bool)

(declare-fun tp!1846882 () Bool)

(assert (=> b!6736789 (= e!4069480 tp!1846882)))

(assert (= (and b!6736154 ((_ is ElementMatch!16563) (regOne!33639 (regTwo!33639 r!7292)))) b!6736787))

(assert (= (and b!6736154 ((_ is Concat!25408) (regOne!33639 (regTwo!33639 r!7292)))) b!6736788))

(assert (= (and b!6736154 ((_ is Star!16563) (regOne!33639 (regTwo!33639 r!7292)))) b!6736789))

(assert (= (and b!6736154 ((_ is Union!16563) (regOne!33639 (regTwo!33639 r!7292)))) b!6736790))

(declare-fun b!6736792 () Bool)

(declare-fun e!4069481 () Bool)

(declare-fun tp!1846888 () Bool)

(declare-fun tp!1846885 () Bool)

(assert (=> b!6736792 (= e!4069481 (and tp!1846888 tp!1846885))))

(assert (=> b!6736154 (= tp!1846750 e!4069481)))

(declare-fun b!6736791 () Bool)

(assert (=> b!6736791 (= e!4069481 tp_is_empty!42379)))

(declare-fun b!6736794 () Bool)

(declare-fun tp!1846884 () Bool)

(declare-fun tp!1846886 () Bool)

(assert (=> b!6736794 (= e!4069481 (and tp!1846884 tp!1846886))))

(declare-fun b!6736793 () Bool)

(declare-fun tp!1846887 () Bool)

(assert (=> b!6736793 (= e!4069481 tp!1846887)))

(assert (= (and b!6736154 ((_ is ElementMatch!16563) (regTwo!33639 (regTwo!33639 r!7292)))) b!6736791))

(assert (= (and b!6736154 ((_ is Concat!25408) (regTwo!33639 (regTwo!33639 r!7292)))) b!6736792))

(assert (= (and b!6736154 ((_ is Star!16563) (regTwo!33639 (regTwo!33639 r!7292)))) b!6736793))

(assert (= (and b!6736154 ((_ is Union!16563) (regTwo!33639 (regTwo!33639 r!7292)))) b!6736794))

(declare-fun b!6736796 () Bool)

(declare-fun e!4069482 () Bool)

(declare-fun tp!1846893 () Bool)

(declare-fun tp!1846890 () Bool)

(assert (=> b!6736796 (= e!4069482 (and tp!1846893 tp!1846890))))

(assert (=> b!6736153 (= tp!1846751 e!4069482)))

(declare-fun b!6736795 () Bool)

(assert (=> b!6736795 (= e!4069482 tp_is_empty!42379)))

(declare-fun b!6736798 () Bool)

(declare-fun tp!1846889 () Bool)

(declare-fun tp!1846891 () Bool)

(assert (=> b!6736798 (= e!4069482 (and tp!1846889 tp!1846891))))

(declare-fun b!6736797 () Bool)

(declare-fun tp!1846892 () Bool)

(assert (=> b!6736797 (= e!4069482 tp!1846892)))

(assert (= (and b!6736153 ((_ is ElementMatch!16563) (reg!16892 (regTwo!33639 r!7292)))) b!6736795))

(assert (= (and b!6736153 ((_ is Concat!25408) (reg!16892 (regTwo!33639 r!7292)))) b!6736796))

(assert (= (and b!6736153 ((_ is Star!16563) (reg!16892 (regTwo!33639 r!7292)))) b!6736797))

(assert (= (and b!6736153 ((_ is Union!16563) (reg!16892 (regTwo!33639 r!7292)))) b!6736798))

(declare-fun b!6736800 () Bool)

(declare-fun e!4069483 () Bool)

(declare-fun tp!1846898 () Bool)

(declare-fun tp!1846895 () Bool)

(assert (=> b!6736800 (= e!4069483 (and tp!1846898 tp!1846895))))

(assert (=> b!6736152 (= tp!1846752 e!4069483)))

(declare-fun b!6736799 () Bool)

(assert (=> b!6736799 (= e!4069483 tp_is_empty!42379)))

(declare-fun b!6736802 () Bool)

(declare-fun tp!1846894 () Bool)

(declare-fun tp!1846896 () Bool)

(assert (=> b!6736802 (= e!4069483 (and tp!1846894 tp!1846896))))

(declare-fun b!6736801 () Bool)

(declare-fun tp!1846897 () Bool)

(assert (=> b!6736801 (= e!4069483 tp!1846897)))

(assert (= (and b!6736152 ((_ is ElementMatch!16563) (regOne!33638 (regTwo!33639 r!7292)))) b!6736799))

(assert (= (and b!6736152 ((_ is Concat!25408) (regOne!33638 (regTwo!33639 r!7292)))) b!6736800))

(assert (= (and b!6736152 ((_ is Star!16563) (regOne!33638 (regTwo!33639 r!7292)))) b!6736801))

(assert (= (and b!6736152 ((_ is Union!16563) (regOne!33638 (regTwo!33639 r!7292)))) b!6736802))

(declare-fun b!6736804 () Bool)

(declare-fun e!4069484 () Bool)

(declare-fun tp!1846903 () Bool)

(declare-fun tp!1846900 () Bool)

(assert (=> b!6736804 (= e!4069484 (and tp!1846903 tp!1846900))))

(assert (=> b!6736152 (= tp!1846749 e!4069484)))

(declare-fun b!6736803 () Bool)

(assert (=> b!6736803 (= e!4069484 tp_is_empty!42379)))

(declare-fun b!6736806 () Bool)

(declare-fun tp!1846899 () Bool)

(declare-fun tp!1846901 () Bool)

(assert (=> b!6736806 (= e!4069484 (and tp!1846899 tp!1846901))))

(declare-fun b!6736805 () Bool)

(declare-fun tp!1846902 () Bool)

(assert (=> b!6736805 (= e!4069484 tp!1846902)))

(assert (= (and b!6736152 ((_ is ElementMatch!16563) (regTwo!33638 (regTwo!33639 r!7292)))) b!6736803))

(assert (= (and b!6736152 ((_ is Concat!25408) (regTwo!33638 (regTwo!33639 r!7292)))) b!6736804))

(assert (= (and b!6736152 ((_ is Star!16563) (regTwo!33638 (regTwo!33639 r!7292)))) b!6736805))

(assert (= (and b!6736152 ((_ is Union!16563) (regTwo!33638 (regTwo!33639 r!7292)))) b!6736806))

(declare-fun b!6736807 () Bool)

(declare-fun e!4069485 () Bool)

(declare-fun tp!1846904 () Bool)

(declare-fun tp!1846905 () Bool)

(assert (=> b!6736807 (= e!4069485 (and tp!1846904 tp!1846905))))

(assert (=> b!6736126 (= tp!1846719 e!4069485)))

(assert (= (and b!6736126 ((_ is Cons!65864) (exprs!6447 (h!72314 (t!379683 zl!343))))) b!6736807))

(declare-fun b!6736809 () Bool)

(declare-fun e!4069486 () Bool)

(declare-fun tp!1846910 () Bool)

(declare-fun tp!1846907 () Bool)

(assert (=> b!6736809 (= e!4069486 (and tp!1846910 tp!1846907))))

(assert (=> b!6736163 (= tp!1846760 e!4069486)))

(declare-fun b!6736808 () Bool)

(assert (=> b!6736808 (= e!4069486 tp_is_empty!42379)))

(declare-fun b!6736811 () Bool)

(declare-fun tp!1846906 () Bool)

(declare-fun tp!1846908 () Bool)

(assert (=> b!6736811 (= e!4069486 (and tp!1846906 tp!1846908))))

(declare-fun b!6736810 () Bool)

(declare-fun tp!1846909 () Bool)

(assert (=> b!6736810 (= e!4069486 tp!1846909)))

(assert (= (and b!6736163 ((_ is ElementMatch!16563) (regOne!33639 (regOne!33638 r!7292)))) b!6736808))

(assert (= (and b!6736163 ((_ is Concat!25408) (regOne!33639 (regOne!33638 r!7292)))) b!6736809))

(assert (= (and b!6736163 ((_ is Star!16563) (regOne!33639 (regOne!33638 r!7292)))) b!6736810))

(assert (= (and b!6736163 ((_ is Union!16563) (regOne!33639 (regOne!33638 r!7292)))) b!6736811))

(declare-fun b!6736813 () Bool)

(declare-fun e!4069487 () Bool)

(declare-fun tp!1846915 () Bool)

(declare-fun tp!1846912 () Bool)

(assert (=> b!6736813 (= e!4069487 (and tp!1846915 tp!1846912))))

(assert (=> b!6736163 (= tp!1846762 e!4069487)))

(declare-fun b!6736812 () Bool)

(assert (=> b!6736812 (= e!4069487 tp_is_empty!42379)))

(declare-fun b!6736815 () Bool)

(declare-fun tp!1846911 () Bool)

(declare-fun tp!1846913 () Bool)

(assert (=> b!6736815 (= e!4069487 (and tp!1846911 tp!1846913))))

(declare-fun b!6736814 () Bool)

(declare-fun tp!1846914 () Bool)

(assert (=> b!6736814 (= e!4069487 tp!1846914)))

(assert (= (and b!6736163 ((_ is ElementMatch!16563) (regTwo!33639 (regOne!33638 r!7292)))) b!6736812))

(assert (= (and b!6736163 ((_ is Concat!25408) (regTwo!33639 (regOne!33638 r!7292)))) b!6736813))

(assert (= (and b!6736163 ((_ is Star!16563) (regTwo!33639 (regOne!33638 r!7292)))) b!6736814))

(assert (= (and b!6736163 ((_ is Union!16563) (regTwo!33639 (regOne!33638 r!7292)))) b!6736815))

(declare-fun b!6736821 () Bool)

(declare-fun e!4069490 () Bool)

(declare-fun tp!1846920 () Bool)

(declare-fun tp!1846917 () Bool)

(assert (=> b!6736821 (= e!4069490 (and tp!1846920 tp!1846917))))

(assert (=> b!6736131 (= tp!1846725 e!4069490)))

(declare-fun b!6736820 () Bool)

(assert (=> b!6736820 (= e!4069490 tp_is_empty!42379)))

(declare-fun b!6736823 () Bool)

(declare-fun tp!1846916 () Bool)

(declare-fun tp!1846918 () Bool)

(assert (=> b!6736823 (= e!4069490 (and tp!1846916 tp!1846918))))

(declare-fun b!6736822 () Bool)

(declare-fun tp!1846919 () Bool)

(assert (=> b!6736822 (= e!4069490 tp!1846919)))

(assert (= (and b!6736131 ((_ is ElementMatch!16563) (h!72312 (exprs!6447 setElem!45965)))) b!6736820))

(assert (= (and b!6736131 ((_ is Concat!25408) (h!72312 (exprs!6447 setElem!45965)))) b!6736821))

(assert (= (and b!6736131 ((_ is Star!16563) (h!72312 (exprs!6447 setElem!45965)))) b!6736822))

(assert (= (and b!6736131 ((_ is Union!16563) (h!72312 (exprs!6447 setElem!45965)))) b!6736823))

(declare-fun b!6736824 () Bool)

(declare-fun e!4069491 () Bool)

(declare-fun tp!1846921 () Bool)

(declare-fun tp!1846922 () Bool)

(assert (=> b!6736824 (= e!4069491 (and tp!1846921 tp!1846922))))

(assert (=> b!6736131 (= tp!1846726 e!4069491)))

(assert (= (and b!6736131 ((_ is Cons!65864) (t!379681 (exprs!6447 setElem!45965)))) b!6736824))

(declare-fun b!6736826 () Bool)

(declare-fun e!4069493 () Bool)

(declare-fun tp!1846923 () Bool)

(assert (=> b!6736826 (= e!4069493 tp!1846923)))

(declare-fun e!4069492 () Bool)

(declare-fun tp!1846924 () Bool)

(declare-fun b!6736825 () Bool)

(assert (=> b!6736825 (= e!4069492 (and (inv!84654 (h!72314 (t!379683 (t!379683 zl!343)))) e!4069493 tp!1846924))))

(assert (=> b!6736125 (= tp!1846720 e!4069492)))

(assert (= b!6736825 b!6736826))

(assert (= (and b!6736125 ((_ is Cons!65866) (t!379683 (t!379683 zl!343)))) b!6736825))

(declare-fun m!7494214 () Bool)

(assert (=> b!6736825 m!7494214))

(declare-fun b!6736828 () Bool)

(declare-fun e!4069494 () Bool)

(declare-fun tp!1846929 () Bool)

(declare-fun tp!1846926 () Bool)

(assert (=> b!6736828 (= e!4069494 (and tp!1846929 tp!1846926))))

(assert (=> b!6736162 (= tp!1846763 e!4069494)))

(declare-fun b!6736827 () Bool)

(assert (=> b!6736827 (= e!4069494 tp_is_empty!42379)))

(declare-fun b!6736830 () Bool)

(declare-fun tp!1846925 () Bool)

(declare-fun tp!1846927 () Bool)

(assert (=> b!6736830 (= e!4069494 (and tp!1846925 tp!1846927))))

(declare-fun b!6736829 () Bool)

(declare-fun tp!1846928 () Bool)

(assert (=> b!6736829 (= e!4069494 tp!1846928)))

(assert (= (and b!6736162 ((_ is ElementMatch!16563) (reg!16892 (regOne!33638 r!7292)))) b!6736827))

(assert (= (and b!6736162 ((_ is Concat!25408) (reg!16892 (regOne!33638 r!7292)))) b!6736828))

(assert (= (and b!6736162 ((_ is Star!16563) (reg!16892 (regOne!33638 r!7292)))) b!6736829))

(assert (= (and b!6736162 ((_ is Union!16563) (reg!16892 (regOne!33638 r!7292)))) b!6736830))

(declare-fun b!6736832 () Bool)

(declare-fun e!4069495 () Bool)

(declare-fun tp!1846934 () Bool)

(declare-fun tp!1846931 () Bool)

(assert (=> b!6736832 (= e!4069495 (and tp!1846934 tp!1846931))))

(assert (=> b!6736161 (= tp!1846764 e!4069495)))

(declare-fun b!6736831 () Bool)

(assert (=> b!6736831 (= e!4069495 tp_is_empty!42379)))

(declare-fun b!6736834 () Bool)

(declare-fun tp!1846930 () Bool)

(declare-fun tp!1846932 () Bool)

(assert (=> b!6736834 (= e!4069495 (and tp!1846930 tp!1846932))))

(declare-fun b!6736833 () Bool)

(declare-fun tp!1846933 () Bool)

(assert (=> b!6736833 (= e!4069495 tp!1846933)))

(assert (= (and b!6736161 ((_ is ElementMatch!16563) (regOne!33638 (regOne!33638 r!7292)))) b!6736831))

(assert (= (and b!6736161 ((_ is Concat!25408) (regOne!33638 (regOne!33638 r!7292)))) b!6736832))

(assert (= (and b!6736161 ((_ is Star!16563) (regOne!33638 (regOne!33638 r!7292)))) b!6736833))

(assert (= (and b!6736161 ((_ is Union!16563) (regOne!33638 (regOne!33638 r!7292)))) b!6736834))

(declare-fun b!6736836 () Bool)

(declare-fun e!4069496 () Bool)

(declare-fun tp!1846939 () Bool)

(declare-fun tp!1846936 () Bool)

(assert (=> b!6736836 (= e!4069496 (and tp!1846939 tp!1846936))))

(assert (=> b!6736161 (= tp!1846761 e!4069496)))

(declare-fun b!6736835 () Bool)

(assert (=> b!6736835 (= e!4069496 tp_is_empty!42379)))

(declare-fun b!6736838 () Bool)

(declare-fun tp!1846935 () Bool)

(declare-fun tp!1846937 () Bool)

(assert (=> b!6736838 (= e!4069496 (and tp!1846935 tp!1846937))))

(declare-fun b!6736837 () Bool)

(declare-fun tp!1846938 () Bool)

(assert (=> b!6736837 (= e!4069496 tp!1846938)))

(assert (= (and b!6736161 ((_ is ElementMatch!16563) (regTwo!33638 (regOne!33638 r!7292)))) b!6736835))

(assert (= (and b!6736161 ((_ is Concat!25408) (regTwo!33638 (regOne!33638 r!7292)))) b!6736836))

(assert (= (and b!6736161 ((_ is Star!16563) (regTwo!33638 (regOne!33638 r!7292)))) b!6736837))

(assert (= (and b!6736161 ((_ is Union!16563) (regTwo!33638 (regOne!33638 r!7292)))) b!6736838))

(declare-fun b_lambda!253653 () Bool)

(assert (= b_lambda!253641 (or b!6735413 b_lambda!253653)))

(assert (=> d!2116609 d!2116401))

(declare-fun b_lambda!253655 () Bool)

(assert (= b_lambda!253635 (or d!2116247 b_lambda!253655)))

(declare-fun bs!1791447 () Bool)

(declare-fun d!2116715 () Bool)

(assert (= bs!1791447 (and d!2116715 d!2116247)))

(assert (=> bs!1791447 (= (dynLambda!26278 lambda!378198 (h!72312 (exprs!6447 (h!72314 zl!343)))) (validRegex!8299 (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(declare-fun m!7494216 () Bool)

(assert (=> bs!1791447 m!7494216))

(assert (=> b!6736523 d!2116715))

(declare-fun b_lambda!253657 () Bool)

(assert (= b_lambda!253627 (or b!6735413 b_lambda!253657)))

(assert (=> d!2116449 d!2116399))

(declare-fun b_lambda!253659 () Bool)

(assert (= b_lambda!253637 (or d!2116335 b_lambda!253659)))

(declare-fun bs!1791448 () Bool)

(declare-fun d!2116717 () Bool)

(assert (= bs!1791448 (and d!2116717 d!2116335)))

(assert (=> bs!1791448 (= (dynLambda!26278 lambda!378241 (h!72312 (exprs!6447 (h!72314 zl!343)))) (validRegex!8299 (h!72312 (exprs!6447 (h!72314 zl!343)))))))

(assert (=> bs!1791448 m!7494216))

(assert (=> b!6736534 d!2116717))

(declare-fun b_lambda!253661 () Bool)

(assert (= b_lambda!253643 (or d!2116387 b_lambda!253661)))

(declare-fun bs!1791449 () Bool)

(declare-fun d!2116719 () Bool)

(assert (= bs!1791449 (and d!2116719 d!2116387)))

(assert (=> bs!1791449 (= (dynLambda!26278 lambda!378263 (h!72312 (unfocusZipperList!1984 zl!343))) (validRegex!8299 (h!72312 (unfocusZipperList!1984 zl!343))))))

(declare-fun m!7494218 () Bool)

(assert (=> bs!1791449 m!7494218))

(assert (=> b!6736567 d!2116719))

(declare-fun b_lambda!253663 () Bool)

(assert (= b_lambda!253629 (or d!2116393 b_lambda!253663)))

(declare-fun bs!1791450 () Bool)

(declare-fun d!2116721 () Bool)

(assert (= bs!1791450 (and d!2116721 d!2116393)))

(assert (=> bs!1791450 (= (dynLambda!26278 lambda!378267 (h!72312 (exprs!6447 lt!2438365))) (validRegex!8299 (h!72312 (exprs!6447 lt!2438365))))))

(declare-fun m!7494220 () Bool)

(assert (=> bs!1791450 m!7494220))

(assert (=> b!6736483 d!2116721))

(declare-fun b_lambda!253665 () Bool)

(assert (= b_lambda!253639 (or d!2116389 b_lambda!253665)))

(declare-fun bs!1791451 () Bool)

(declare-fun d!2116723 () Bool)

(assert (= bs!1791451 (and d!2116723 d!2116389)))

(assert (=> bs!1791451 (= (dynLambda!26278 lambda!378266 (h!72312 lt!2438466)) (validRegex!8299 (h!72312 lt!2438466)))))

(declare-fun m!7494222 () Bool)

(assert (=> bs!1791451 m!7494222))

(assert (=> b!6736536 d!2116723))

(declare-fun b_lambda!253667 () Bool)

(assert (= b_lambda!253651 (or d!2116251 b_lambda!253667)))

(declare-fun bs!1791452 () Bool)

(declare-fun d!2116725 () Bool)

(assert (= bs!1791452 (and d!2116725 d!2116251)))

(assert (=> bs!1791452 (= (dynLambda!26278 lambda!378199 (h!72312 (exprs!6447 setElem!45965))) (validRegex!8299 (h!72312 (exprs!6447 setElem!45965))))))

(declare-fun m!7494224 () Bool)

(assert (=> bs!1791452 m!7494224))

(assert (=> b!6736717 d!2116725))

(check-sat (not b!6736826) (not b!6736748) (not d!2116477) (not b!6736813) (not b!6736776) (not b!6736798) (not d!2116613) (not b!6736300) (not bm!608689) (not bm!608697) (not d!2116699) (not bm!608702) (not b!6736187) (not bm!608687) (not bm!608669) (not b!6736249) (not b!6736810) (not b!6736756) (not b!6736168) (not b!6736760) (not b!6736720) (not b!6736794) (not d!2116431) (not bm!608678) (not d!2116609) (not b_lambda!253665) (not b!6736450) (not b!6736568) (not b!6736779) (not d!2116673) (not bm!608751) (not d!2116423) (not b!6736825) (not b!6736492) (not b!6736801) (not d!2116465) (not bm!608746) (not bm!608654) (not b!6736784) (not b!6736769) (not b!6736740) (not b!6736181) (not b!6736262) (not bs!1791451) (not b!6736260) (not b!6736515) (not b!6736830) (not b!6736768) (not b!6736242) (not bm!608692) (not d!2116617) (not bm!608725) (not b!6736451) (not b_lambda!253623) (not b!6736764) (not d!2116589) (not b!6736732) (not bm!608683) (not bs!1791452) (not b_lambda!253655) (not b!6736765) (not d!2116481) (not bs!1791448) (not b!6736753) (not d!2116491) (not b!6736662) (not b_lambda!253657) (not b!6736665) (not b!6736456) (not b!6736742) (not d!2116455) (not bs!1791450) (not b!6736371) (not b!6736746) (not b!6736773) (not b!6736790) (not b!6736365) (not b!6736367) (not b!6736785) (not bm!608752) (not b!6736250) (not bm!608742) (not b!6736744) (not bm!608682) (not b!6736352) (not b!6736772) (not b!6736815) (not b!6736838) (not b!6736761) (not bm!608645) (not b!6736549) (not b!6736466) (not b!6736823) (not b!6736836) (not b!6736190) (not b!6736171) (not b!6736783) (not b!6736399) (not b!6736393) (not b!6736793) (not b!6736722) (not b_lambda!253653) (not b!6736241) (not b!6736358) (not b!6736170) (not bm!608650) (not d!2116413) (not b!6736177) (not bm!608744) (not d!2116607) (not b!6736758) (not bs!1791449) (not d!2116519) (not b_lambda!253625) (not b!6736721) (not b!6736789) (not b!6736750) (not bm!608639) (not b!6736829) (not d!2116441) (not b!6736454) (not b!6736821) (not b!6736184) (not d!2116443) (not b!6736509) (not b!6736217) (not b!6736420) (not bm!608695) (not b!6736182) (not b!6736557) (not b!6736304) (not b!6736660) (not bm!608649) (not b!6736563) (not d!2116551) (not setNonEmpty!45980) (not b!6736741) (not b!6736828) (not bm!608675) (not b!6736718) (not b!6736619) (not b!6736733) (not bm!608652) (not b!6736658) (not b!6736814) (not bm!608671) (not bm!608680) (not d!2116479) (not bm!608718) (not b!6736807) (not b!6736805) (not b!6736736) (not b!6736806) (not b!6736362) (not b!6736390) (not b!6736457) (not d!2116691) (not bm!608711) (not bm!608684) (not b!6736802) (not b!6736792) (not bm!608750) (not b!6736754) (not b!6736777) (not b!6736407) (not d!2116473) (not bm!608737) (not b!6736258) (not b!6736180) (not b!6736745) (not bm!608721) (not bm!608722) (not b!6736306) (not b!6736391) (not bm!608700) (not b!6736738) (not b!6736535) (not b!6736308) (not d!2116507) (not b!6736556) (not b!6736448) (not b!6736730) (not b!6736485) (not d!2116509) (not bm!608713) (not b!6736360) (not d!2116403) (not b!6736530) (not d!2116475) (not b!6736737) (not bm!608638) (not b!6736440) (not b!6736294) (not b_lambda!253661) (not bm!608716) (not b!6736364) (not b!6736834) (not d!2116615) (not b!6736757) (not b!6736223) (not b!6736729) (not b_lambda!253667) (not b!6736656) (not b!6736255) (not d!2116669) (not b!6736376) (not bm!608688) (not b!6736654) (not b!6736752) (not b!6736404) (not b!6736797) (not bm!608673) (not d!2116629) (not b!6736553) (not bm!608693) (not d!2116467) (not b!6736176) (not d!2116449) (not d!2116569) (not b!6736837) (not bm!608712) (not b!6736400) (not b!6736774) (not d!2116587) (not bm!608724) (not b!6736248) (not b!6736395) (not b!6736264) (not bm!608727) (not b!6736724) (not b!6736179) (not b!6736766) (not bm!608719) (not d!2116459) (not b_lambda!253659) (not d!2116579) (not d!2116433) (not b!6736770) (not b!6736685) (not b!6736428) (not d!2116603) (not b!6736833) (not b!6736788) (not b!6736174) (not b!6736653) (not b!6736822) (not bm!608709) (not b!6736455) (not d!2116627) (not b!6736622) (not bm!608696) (not b!6736244) (not d!2116545) (not bm!608738) (not b!6736397) (not b!6736524) (not b!6736778) (not bm!608658) (not b!6736256) (not b!6736780) (not b!6736786) (not d!2116503) (not d!2116463) (not b!6736726) (not d!2116411) (not bm!608674) (not b!6736709) (not b!6736811) (not bm!608646) (not d!2116623) (not b!6736382) (not d!2116485) (not b!6736299) (not b!6736537) (not b!6736804) tp_is_empty!42379 (not d!2116521) (not b!6736555) (not setNonEmpty!45975) (not b!6736335) (not d!2116439) (not d!2116493) (not b!6736175) (not b!6736341) (not bm!608691) (not bm!608745) (not b!6736356) (not b!6736421) (not d!2116457) (not b!6736749) (not bs!1791447) (not b_lambda!253663) (not b!6736355) (not bm!608640) (not b!6736178) (not b!6736201) (not b!6736351) (not b!6736824) (not bm!608644) (not b!6736489) (not b!6736366) (not b!6736782) (not b!6736302) (not bm!608657) (not b!6736311) (not b!6736430) (not b!6736214) (not b!6736800) (not b!6736762) (not b!6736429) (not setNonEmpty!45974) (not b!6736728) (not bm!608653) (not bm!608670) (not b!6736725) (not b!6736832) (not b!6736796) (not b!6736809) (not b!6736734) (not b!6736372) (not b!6736484))
(check-sat)
