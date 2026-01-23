; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570278 () Bool)

(assert start!570278)

(declare-fun b!5437392 () Bool)

(assert (=> b!5437392 true))

(assert (=> b!5437392 true))

(declare-fun lambda!285976 () Int)

(declare-fun lambda!285975 () Int)

(assert (=> b!5437392 (not (= lambda!285976 lambda!285975))))

(assert (=> b!5437392 true))

(assert (=> b!5437392 true))

(declare-fun b!5437382 () Bool)

(assert (=> b!5437382 true))

(declare-fun b!5437376 () Bool)

(declare-fun res!2314852 () Bool)

(declare-fun e!3368631 () Bool)

(assert (=> b!5437376 (=> res!2314852 e!3368631)))

(declare-datatypes ((C!30764 0))(
  ( (C!30765 (val!25084 Int)) )
))
(declare-datatypes ((Regex!15247 0))(
  ( (ElementMatch!15247 (c!948763 C!30764)) (Concat!24092 (regOne!31006 Regex!15247) (regTwo!31006 Regex!15247)) (EmptyExpr!15247) (Star!15247 (reg!15576 Regex!15247)) (EmptyLang!15247) (Union!15247 (regOne!31007 Regex!15247) (regTwo!31007 Regex!15247)) )
))
(declare-datatypes ((List!62040 0))(
  ( (Nil!61916) (Cons!61916 (h!68364 Regex!15247) (t!375265 List!62040)) )
))
(declare-datatypes ((Context!9262 0))(
  ( (Context!9263 (exprs!5131 List!62040)) )
))
(declare-datatypes ((List!62041 0))(
  ( (Nil!61917) (Cons!61917 (h!68365 Context!9262) (t!375266 List!62041)) )
))
(declare-fun zl!343 () List!62041)

(get-info :version)

(assert (=> b!5437376 (= res!2314852 (not ((_ is Cons!61916) (exprs!5131 (h!68365 zl!343)))))))

(declare-fun b!5437377 () Bool)

(declare-fun e!3368633 () Bool)

(assert (=> b!5437377 (= e!3368633 (not e!3368631))))

(declare-fun res!2314856 () Bool)

(assert (=> b!5437377 (=> res!2314856 e!3368631)))

(assert (=> b!5437377 (= res!2314856 (not ((_ is Cons!61917) zl!343)))))

(declare-fun lt!2218040 () Bool)

(declare-fun r!7292 () Regex!15247)

(declare-datatypes ((List!62042 0))(
  ( (Nil!61918) (Cons!61918 (h!68366 C!30764) (t!375267 List!62042)) )
))
(declare-fun s!2326 () List!62042)

(declare-fun matchRSpec!2350 (Regex!15247 List!62042) Bool)

(assert (=> b!5437377 (= lt!2218040 (matchRSpec!2350 r!7292 s!2326))))

(declare-fun matchR!7432 (Regex!15247 List!62042) Bool)

(assert (=> b!5437377 (= lt!2218040 (matchR!7432 r!7292 s!2326))))

(declare-datatypes ((Unit!154530 0))(
  ( (Unit!154531) )
))
(declare-fun lt!2218039 () Unit!154530)

(declare-fun mainMatchTheorem!2350 (Regex!15247 List!62042) Unit!154530)

(assert (=> b!5437377 (= lt!2218039 (mainMatchTheorem!2350 r!7292 s!2326))))

(declare-fun b!5437378 () Bool)

(declare-fun e!3368638 () Bool)

(declare-fun tp!1499310 () Bool)

(assert (=> b!5437378 (= e!3368638 tp!1499310)))

(declare-fun b!5437379 () Bool)

(declare-fun res!2314850 () Bool)

(assert (=> b!5437379 (=> (not res!2314850) (not e!3368633))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9262))

(declare-fun toList!9031 ((InoxSet Context!9262)) List!62041)

(assert (=> b!5437379 (= res!2314850 (= (toList!9031 z!1189) zl!343))))

(declare-fun b!5437380 () Bool)

(declare-fun res!2314845 () Bool)

(declare-fun e!3368629 () Bool)

(assert (=> b!5437380 (=> res!2314845 e!3368629)))

(assert (=> b!5437380 (= res!2314845 (or ((_ is Concat!24092) (regOne!31006 r!7292)) ((_ is Star!15247) (regOne!31006 r!7292)) (not ((_ is EmptyExpr!15247) (regOne!31006 r!7292)))))))

(declare-fun b!5437381 () Bool)

(declare-fun e!3368628 () Bool)

(declare-fun tp_is_empty!39747 () Bool)

(assert (=> b!5437381 (= e!3368628 tp_is_empty!39747)))

(declare-fun e!3368632 () Bool)

(assert (=> b!5437382 (= e!3368632 e!3368629)))

(declare-fun res!2314854 () Bool)

(assert (=> b!5437382 (=> res!2314854 e!3368629)))

(assert (=> b!5437382 (= res!2314854 (or (and ((_ is ElementMatch!15247) (regOne!31006 r!7292)) (= (c!948763 (regOne!31006 r!7292)) (h!68366 s!2326))) ((_ is Union!15247) (regOne!31006 r!7292))))))

(declare-fun lt!2218035 () Unit!154530)

(declare-fun e!3368636 () Unit!154530)

(assert (=> b!5437382 (= lt!2218035 e!3368636)))

(declare-fun c!948762 () Bool)

(declare-fun nullable!5416 (Regex!15247) Bool)

(assert (=> b!5437382 (= c!948762 (nullable!5416 (h!68364 (exprs!5131 (h!68365 zl!343)))))))

(declare-fun lambda!285977 () Int)

(declare-fun flatMap!974 ((InoxSet Context!9262) Int) (InoxSet Context!9262))

(declare-fun derivationStepZipperUp!619 (Context!9262 C!30764) (InoxSet Context!9262))

(assert (=> b!5437382 (= (flatMap!974 z!1189 lambda!285977) (derivationStepZipperUp!619 (h!68365 zl!343) (h!68366 s!2326)))))

(declare-fun lt!2218038 () Unit!154530)

(declare-fun lemmaFlatMapOnSingletonSet!506 ((InoxSet Context!9262) Context!9262 Int) Unit!154530)

(assert (=> b!5437382 (= lt!2218038 (lemmaFlatMapOnSingletonSet!506 z!1189 (h!68365 zl!343) lambda!285977))))

(declare-fun lt!2218033 () (InoxSet Context!9262))

(declare-fun lt!2218032 () Context!9262)

(assert (=> b!5437382 (= lt!2218033 (derivationStepZipperUp!619 lt!2218032 (h!68366 s!2326)))))

(declare-fun lt!2218037 () (InoxSet Context!9262))

(declare-fun derivationStepZipperDown!695 (Regex!15247 Context!9262 C!30764) (InoxSet Context!9262))

(assert (=> b!5437382 (= lt!2218037 (derivationStepZipperDown!695 (h!68364 (exprs!5131 (h!68365 zl!343))) lt!2218032 (h!68366 s!2326)))))

(assert (=> b!5437382 (= lt!2218032 (Context!9263 (t!375265 (exprs!5131 (h!68365 zl!343)))))))

(declare-fun lt!2218034 () (InoxSet Context!9262))

(assert (=> b!5437382 (= lt!2218034 (derivationStepZipperUp!619 (Context!9263 (Cons!61916 (h!68364 (exprs!5131 (h!68365 zl!343))) (t!375265 (exprs!5131 (h!68365 zl!343))))) (h!68366 s!2326)))))

(declare-fun b!5437383 () Bool)

(assert (=> b!5437383 (= e!3368629 true)))

(declare-fun matchZipper!1491 ((InoxSet Context!9262) List!62042) Bool)

(assert (=> b!5437383 (not (matchZipper!1491 lt!2218037 (t!375267 s!2326)))))

(declare-fun lt!2218029 () Unit!154530)

(declare-fun lemmaEmptyZipperMatchesNothing!2 ((InoxSet Context!9262) List!62042) Unit!154530)

(assert (=> b!5437383 (= lt!2218029 (lemmaEmptyZipperMatchesNothing!2 lt!2218037 (t!375267 s!2326)))))

(declare-fun b!5437384 () Bool)

(declare-fun res!2314847 () Bool)

(assert (=> b!5437384 (=> res!2314847 e!3368632)))

(declare-fun isEmpty!33906 (List!62040) Bool)

(assert (=> b!5437384 (= res!2314847 (isEmpty!33906 (t!375265 (exprs!5131 (h!68365 zl!343)))))))

(declare-fun b!5437385 () Bool)

(declare-fun res!2314842 () Bool)

(assert (=> b!5437385 (=> (not res!2314842) (not e!3368633))))

(declare-fun unfocusZipper!989 (List!62041) Regex!15247)

(assert (=> b!5437385 (= res!2314842 (= r!7292 (unfocusZipper!989 zl!343)))))

(declare-fun b!5437386 () Bool)

(declare-fun tp!1499306 () Bool)

(assert (=> b!5437386 (= e!3368628 tp!1499306)))

(declare-fun setElem!35517 () Context!9262)

(declare-fun setNonEmpty!35517 () Bool)

(declare-fun e!3368630 () Bool)

(declare-fun tp!1499307 () Bool)

(declare-fun setRes!35517 () Bool)

(declare-fun inv!81364 (Context!9262) Bool)

(assert (=> setNonEmpty!35517 (= setRes!35517 (and tp!1499307 (inv!81364 setElem!35517) e!3368630))))

(declare-fun setRest!35517 () (InoxSet Context!9262))

(assert (=> setNonEmpty!35517 (= z!1189 ((_ map or) (store ((as const (Array Context!9262 Bool)) false) setElem!35517 true) setRest!35517))))

(declare-fun res!2314855 () Bool)

(assert (=> start!570278 (=> (not res!2314855) (not e!3368633))))

(declare-fun validRegex!6983 (Regex!15247) Bool)

(assert (=> start!570278 (= res!2314855 (validRegex!6983 r!7292))))

(assert (=> start!570278 e!3368633))

(assert (=> start!570278 e!3368628))

(declare-fun condSetEmpty!35517 () Bool)

(assert (=> start!570278 (= condSetEmpty!35517 (= z!1189 ((as const (Array Context!9262 Bool)) false)))))

(assert (=> start!570278 setRes!35517))

(declare-fun e!3368637 () Bool)

(assert (=> start!570278 e!3368637))

(declare-fun e!3368627 () Bool)

(assert (=> start!570278 e!3368627))

(declare-fun b!5437387 () Bool)

(declare-fun tp!1499304 () Bool)

(assert (=> b!5437387 (= e!3368630 tp!1499304)))

(declare-fun b!5437388 () Bool)

(declare-fun res!2314851 () Bool)

(assert (=> b!5437388 (=> res!2314851 e!3368631)))

(declare-fun isEmpty!33907 (List!62041) Bool)

(assert (=> b!5437388 (= res!2314851 (not (isEmpty!33907 (t!375266 zl!343))))))

(declare-fun b!5437389 () Bool)

(declare-fun res!2314848 () Bool)

(assert (=> b!5437389 (=> res!2314848 e!3368629)))

(declare-fun e!3368634 () Bool)

(assert (=> b!5437389 (= res!2314848 e!3368634)))

(declare-fun res!2314857 () Bool)

(assert (=> b!5437389 (=> (not res!2314857) (not e!3368634))))

(assert (=> b!5437389 (= res!2314857 ((_ is Concat!24092) (regOne!31006 r!7292)))))

(declare-fun tp!1499305 () Bool)

(declare-fun b!5437390 () Bool)

(assert (=> b!5437390 (= e!3368637 (and (inv!81364 (h!68365 zl!343)) e!3368638 tp!1499305))))

(declare-fun setIsEmpty!35517 () Bool)

(assert (=> setIsEmpty!35517 setRes!35517))

(declare-fun b!5437391 () Bool)

(declare-fun e!3368635 () Bool)

(assert (=> b!5437391 (= e!3368635 (matchZipper!1491 lt!2218033 (t!375267 s!2326)))))

(assert (=> b!5437392 (= e!3368631 e!3368632)))

(declare-fun res!2314853 () Bool)

(assert (=> b!5437392 (=> res!2314853 e!3368632)))

(declare-fun lt!2218030 () Bool)

(assert (=> b!5437392 (= res!2314853 (or (not (= lt!2218040 lt!2218030)) ((_ is Nil!61918) s!2326)))))

(declare-fun Exists!2428 (Int) Bool)

(assert (=> b!5437392 (= (Exists!2428 lambda!285975) (Exists!2428 lambda!285976))))

(declare-fun lt!2218036 () Unit!154530)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1082 (Regex!15247 Regex!15247 List!62042) Unit!154530)

(assert (=> b!5437392 (= lt!2218036 (lemmaExistCutMatchRandMatchRSpecEquivalent!1082 (regOne!31006 r!7292) (regTwo!31006 r!7292) s!2326))))

(assert (=> b!5437392 (= lt!2218030 (Exists!2428 lambda!285975))))

(declare-datatypes ((tuple2!64892 0))(
  ( (tuple2!64893 (_1!35749 List!62042) (_2!35749 List!62042)) )
))
(declare-datatypes ((Option!15358 0))(
  ( (None!15357) (Some!15357 (v!51386 tuple2!64892)) )
))
(declare-fun isDefined!12061 (Option!15358) Bool)

(declare-fun findConcatSeparation!1772 (Regex!15247 Regex!15247 List!62042 List!62042 List!62042) Option!15358)

(assert (=> b!5437392 (= lt!2218030 (isDefined!12061 (findConcatSeparation!1772 (regOne!31006 r!7292) (regTwo!31006 r!7292) Nil!61918 s!2326 s!2326)))))

(declare-fun lt!2218031 () Unit!154530)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1536 (Regex!15247 Regex!15247 List!62042) Unit!154530)

(assert (=> b!5437392 (= lt!2218031 (lemmaFindConcatSeparationEquivalentToExists!1536 (regOne!31006 r!7292) (regTwo!31006 r!7292) s!2326))))

(declare-fun b!5437393 () Bool)

(declare-fun tp!1499311 () Bool)

(declare-fun tp!1499313 () Bool)

(assert (=> b!5437393 (= e!3368628 (and tp!1499311 tp!1499313))))

(declare-fun b!5437394 () Bool)

(assert (=> b!5437394 (= e!3368634 (nullable!5416 (regOne!31006 (regOne!31006 r!7292))))))

(declare-fun b!5437395 () Bool)

(declare-fun res!2314843 () Bool)

(assert (=> b!5437395 (=> res!2314843 e!3368631)))

(declare-fun generalisedUnion!1176 (List!62040) Regex!15247)

(declare-fun unfocusZipperList!689 (List!62041) List!62040)

(assert (=> b!5437395 (= res!2314843 (not (= r!7292 (generalisedUnion!1176 (unfocusZipperList!689 zl!343)))))))

(declare-fun b!5437396 () Bool)

(declare-fun res!2314846 () Bool)

(assert (=> b!5437396 (=> res!2314846 e!3368631)))

(assert (=> b!5437396 (= res!2314846 (or ((_ is EmptyExpr!15247) r!7292) ((_ is EmptyLang!15247) r!7292) ((_ is ElementMatch!15247) r!7292) ((_ is Union!15247) r!7292) (not ((_ is Concat!24092) r!7292))))))

(declare-fun b!5437397 () Bool)

(declare-fun Unit!154532 () Unit!154530)

(assert (=> b!5437397 (= e!3368636 Unit!154532)))

(declare-fun lt!2218028 () Unit!154530)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!484 ((InoxSet Context!9262) (InoxSet Context!9262) List!62042) Unit!154530)

(assert (=> b!5437397 (= lt!2218028 (lemmaZipperConcatMatchesSameAsBothZippers!484 lt!2218037 lt!2218033 (t!375267 s!2326)))))

(declare-fun res!2314844 () Bool)

(assert (=> b!5437397 (= res!2314844 (matchZipper!1491 lt!2218037 (t!375267 s!2326)))))

(assert (=> b!5437397 (=> res!2314844 e!3368635)))

(assert (=> b!5437397 (= (matchZipper!1491 ((_ map or) lt!2218037 lt!2218033) (t!375267 s!2326)) e!3368635)))

(declare-fun b!5437398 () Bool)

(declare-fun tp!1499309 () Bool)

(declare-fun tp!1499312 () Bool)

(assert (=> b!5437398 (= e!3368628 (and tp!1499309 tp!1499312))))

(declare-fun b!5437399 () Bool)

(declare-fun tp!1499308 () Bool)

(assert (=> b!5437399 (= e!3368627 (and tp_is_empty!39747 tp!1499308))))

(declare-fun b!5437400 () Bool)

(declare-fun Unit!154533 () Unit!154530)

(assert (=> b!5437400 (= e!3368636 Unit!154533)))

(declare-fun b!5437401 () Bool)

(declare-fun res!2314849 () Bool)

(assert (=> b!5437401 (=> res!2314849 e!3368631)))

(declare-fun generalisedConcat!916 (List!62040) Regex!15247)

(assert (=> b!5437401 (= res!2314849 (not (= r!7292 (generalisedConcat!916 (exprs!5131 (h!68365 zl!343))))))))

(assert (= (and start!570278 res!2314855) b!5437379))

(assert (= (and b!5437379 res!2314850) b!5437385))

(assert (= (and b!5437385 res!2314842) b!5437377))

(assert (= (and b!5437377 (not res!2314856)) b!5437388))

(assert (= (and b!5437388 (not res!2314851)) b!5437401))

(assert (= (and b!5437401 (not res!2314849)) b!5437376))

(assert (= (and b!5437376 (not res!2314852)) b!5437395))

(assert (= (and b!5437395 (not res!2314843)) b!5437396))

(assert (= (and b!5437396 (not res!2314846)) b!5437392))

(assert (= (and b!5437392 (not res!2314853)) b!5437384))

(assert (= (and b!5437384 (not res!2314847)) b!5437382))

(assert (= (and b!5437382 c!948762) b!5437397))

(assert (= (and b!5437382 (not c!948762)) b!5437400))

(assert (= (and b!5437397 (not res!2314844)) b!5437391))

(assert (= (and b!5437382 (not res!2314854)) b!5437389))

(assert (= (and b!5437389 res!2314857) b!5437394))

(assert (= (and b!5437389 (not res!2314848)) b!5437380))

(assert (= (and b!5437380 (not res!2314845)) b!5437383))

(assert (= (and start!570278 ((_ is ElementMatch!15247) r!7292)) b!5437381))

(assert (= (and start!570278 ((_ is Concat!24092) r!7292)) b!5437398))

(assert (= (and start!570278 ((_ is Star!15247) r!7292)) b!5437386))

(assert (= (and start!570278 ((_ is Union!15247) r!7292)) b!5437393))

(assert (= (and start!570278 condSetEmpty!35517) setIsEmpty!35517))

(assert (= (and start!570278 (not condSetEmpty!35517)) setNonEmpty!35517))

(assert (= setNonEmpty!35517 b!5437387))

(assert (= b!5437390 b!5437378))

(assert (= (and start!570278 ((_ is Cons!61917) zl!343)) b!5437390))

(assert (= (and start!570278 ((_ is Cons!61918) s!2326)) b!5437399))

(declare-fun m!6459332 () Bool)

(assert (=> b!5437385 m!6459332))

(declare-fun m!6459334 () Bool)

(assert (=> b!5437397 m!6459334))

(declare-fun m!6459336 () Bool)

(assert (=> b!5437397 m!6459336))

(declare-fun m!6459338 () Bool)

(assert (=> b!5437397 m!6459338))

(declare-fun m!6459340 () Bool)

(assert (=> b!5437390 m!6459340))

(declare-fun m!6459342 () Bool)

(assert (=> setNonEmpty!35517 m!6459342))

(declare-fun m!6459344 () Bool)

(assert (=> b!5437391 m!6459344))

(declare-fun m!6459346 () Bool)

(assert (=> b!5437379 m!6459346))

(declare-fun m!6459348 () Bool)

(assert (=> start!570278 m!6459348))

(declare-fun m!6459350 () Bool)

(assert (=> b!5437401 m!6459350))

(declare-fun m!6459352 () Bool)

(assert (=> b!5437392 m!6459352))

(declare-fun m!6459354 () Bool)

(assert (=> b!5437392 m!6459354))

(declare-fun m!6459356 () Bool)

(assert (=> b!5437392 m!6459356))

(declare-fun m!6459358 () Bool)

(assert (=> b!5437392 m!6459358))

(declare-fun m!6459360 () Bool)

(assert (=> b!5437392 m!6459360))

(assert (=> b!5437392 m!6459352))

(assert (=> b!5437392 m!6459354))

(declare-fun m!6459362 () Bool)

(assert (=> b!5437392 m!6459362))

(declare-fun m!6459364 () Bool)

(assert (=> b!5437382 m!6459364))

(declare-fun m!6459366 () Bool)

(assert (=> b!5437382 m!6459366))

(declare-fun m!6459368 () Bool)

(assert (=> b!5437382 m!6459368))

(declare-fun m!6459370 () Bool)

(assert (=> b!5437382 m!6459370))

(declare-fun m!6459372 () Bool)

(assert (=> b!5437382 m!6459372))

(declare-fun m!6459374 () Bool)

(assert (=> b!5437382 m!6459374))

(declare-fun m!6459376 () Bool)

(assert (=> b!5437382 m!6459376))

(declare-fun m!6459378 () Bool)

(assert (=> b!5437384 m!6459378))

(declare-fun m!6459380 () Bool)

(assert (=> b!5437395 m!6459380))

(assert (=> b!5437395 m!6459380))

(declare-fun m!6459382 () Bool)

(assert (=> b!5437395 m!6459382))

(declare-fun m!6459384 () Bool)

(assert (=> b!5437377 m!6459384))

(declare-fun m!6459386 () Bool)

(assert (=> b!5437377 m!6459386))

(declare-fun m!6459388 () Bool)

(assert (=> b!5437377 m!6459388))

(declare-fun m!6459390 () Bool)

(assert (=> b!5437388 m!6459390))

(declare-fun m!6459392 () Bool)

(assert (=> b!5437394 m!6459392))

(assert (=> b!5437383 m!6459336))

(declare-fun m!6459394 () Bool)

(assert (=> b!5437383 m!6459394))

(check-sat (not b!5437388) (not b!5437382) (not b!5437391) (not b!5437390) (not b!5437383) (not b!5437387) (not b!5437397) (not b!5437384) tp_is_empty!39747 (not b!5437398) (not b!5437379) (not b!5437377) (not b!5437385) (not setNonEmpty!35517) (not b!5437394) (not b!5437393) (not b!5437392) (not start!570278) (not b!5437386) (not b!5437395) (not b!5437378) (not b!5437401) (not b!5437399))
(check-sat)
