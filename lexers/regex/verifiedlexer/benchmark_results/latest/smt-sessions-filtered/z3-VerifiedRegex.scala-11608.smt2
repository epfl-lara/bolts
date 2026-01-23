; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645194 () Bool)

(assert start!645194)

(declare-fun b!6597586 () Bool)

(assert (=> b!6597586 true))

(assert (=> b!6597586 true))

(declare-fun lambda!367634 () Int)

(declare-fun lambda!367633 () Int)

(assert (=> b!6597586 (not (= lambda!367634 lambda!367633))))

(assert (=> b!6597586 true))

(assert (=> b!6597586 true))

(declare-fun b!6597619 () Bool)

(assert (=> b!6597619 true))

(declare-fun b!6597581 () Bool)

(declare-fun res!2705260 () Bool)

(declare-fun e!3992268 () Bool)

(assert (=> b!6597581 (=> res!2705260 e!3992268)))

(declare-datatypes ((C!33196 0))(
  ( (C!33197 (val!26300 Int)) )
))
(declare-datatypes ((Regex!16463 0))(
  ( (ElementMatch!16463 (c!1215062 C!33196)) (Concat!25308 (regOne!33438 Regex!16463) (regTwo!33438 Regex!16463)) (EmptyExpr!16463) (Star!16463 (reg!16792 Regex!16463)) (EmptyLang!16463) (Union!16463 (regOne!33439 Regex!16463) (regTwo!33439 Regex!16463)) )
))
(declare-fun r!7292 () Regex!16463)

(get-info :version)

(assert (=> b!6597581 (= res!2705260 (or ((_ is EmptyExpr!16463) r!7292) ((_ is EmptyLang!16463) r!7292) ((_ is ElementMatch!16463) r!7292) ((_ is Union!16463) r!7292) (not ((_ is Concat!25308) r!7292))))))

(declare-fun b!6597582 () Bool)

(declare-fun e!3992276 () Bool)

(declare-fun e!3992274 () Bool)

(assert (=> b!6597582 (= e!3992276 e!3992274)))

(declare-fun res!2705268 () Bool)

(assert (=> b!6597582 (=> res!2705268 e!3992274)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65688 0))(
  ( (Nil!65564) (Cons!65564 (h!72012 Regex!16463) (t!379340 List!65688)) )
))
(declare-datatypes ((Context!11694 0))(
  ( (Context!11695 (exprs!6347 List!65688)) )
))
(declare-fun lt!2412603 () (InoxSet Context!11694))

(declare-fun lt!2412629 () (InoxSet Context!11694))

(assert (=> b!6597582 (= res!2705268 (not (= lt!2412603 lt!2412629)))))

(declare-fun lt!2412613 () (InoxSet Context!11694))

(declare-datatypes ((List!65689 0))(
  ( (Nil!65565) (Cons!65565 (h!72013 C!33196) (t!379341 List!65689)) )
))
(declare-fun s!2326 () List!65689)

(declare-fun lt!2412609 () Context!11694)

(declare-fun lambda!367635 () Int)

(declare-fun flatMap!1968 ((InoxSet Context!11694) Int) (InoxSet Context!11694))

(declare-fun derivationStepZipperUp!1637 (Context!11694 C!33196) (InoxSet Context!11694))

(assert (=> b!6597582 (= (flatMap!1968 lt!2412613 lambda!367635) (derivationStepZipperUp!1637 lt!2412609 (h!72013 s!2326)))))

(declare-datatypes ((Unit!159187 0))(
  ( (Unit!159188) )
))
(declare-fun lt!2412610 () Unit!159187)

(declare-fun lemmaFlatMapOnSingletonSet!1494 ((InoxSet Context!11694) Context!11694 Int) Unit!159187)

(assert (=> b!6597582 (= lt!2412610 (lemmaFlatMapOnSingletonSet!1494 lt!2412613 lt!2412609 lambda!367635))))

(declare-fun lt!2412616 () (InoxSet Context!11694))

(assert (=> b!6597582 (= lt!2412616 (derivationStepZipperUp!1637 lt!2412609 (h!72013 s!2326)))))

(declare-fun derivationStepZipper!2429 ((InoxSet Context!11694) C!33196) (InoxSet Context!11694))

(assert (=> b!6597582 (= lt!2412603 (derivationStepZipper!2429 lt!2412613 (h!72013 s!2326)))))

(assert (=> b!6597582 (= lt!2412613 (store ((as const (Array Context!11694 Bool)) false) lt!2412609 true))))

(declare-fun lt!2412614 () List!65688)

(assert (=> b!6597582 (= lt!2412609 (Context!11695 (Cons!65564 (reg!16792 (regOne!33438 r!7292)) lt!2412614)))))

(declare-fun b!6597584 () Bool)

(declare-fun e!3992270 () Bool)

(declare-fun tp!1819428 () Bool)

(assert (=> b!6597584 (= e!3992270 tp!1819428)))

(declare-fun b!6597585 () Bool)

(declare-fun res!2705248 () Bool)

(declare-fun e!3992260 () Bool)

(assert (=> b!6597585 (=> res!2705248 e!3992260)))

(declare-datatypes ((List!65690 0))(
  ( (Nil!65566) (Cons!65566 (h!72014 Context!11694) (t!379342 List!65690)) )
))
(declare-fun zl!343 () List!65690)

(declare-fun isEmpty!37829 (List!65688) Bool)

(assert (=> b!6597585 (= res!2705248 (isEmpty!37829 (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(assert (=> b!6597586 (= e!3992268 e!3992260)))

(declare-fun res!2705254 () Bool)

(assert (=> b!6597586 (=> res!2705254 e!3992260)))

(declare-fun lt!2412634 () Bool)

(declare-fun lt!2412605 () Bool)

(assert (=> b!6597586 (= res!2705254 (or (not (= lt!2412605 lt!2412634)) ((_ is Nil!65565) s!2326)))))

(declare-fun Exists!3533 (Int) Bool)

(assert (=> b!6597586 (= (Exists!3533 lambda!367633) (Exists!3533 lambda!367634))))

(declare-fun lt!2412633 () Unit!159187)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2070 (Regex!16463 Regex!16463 List!65689) Unit!159187)

(assert (=> b!6597586 (= lt!2412633 (lemmaExistCutMatchRandMatchRSpecEquivalent!2070 (regOne!33438 r!7292) (regTwo!33438 r!7292) s!2326))))

(assert (=> b!6597586 (= lt!2412634 (Exists!3533 lambda!367633))))

(declare-datatypes ((tuple2!66884 0))(
  ( (tuple2!66885 (_1!36745 List!65689) (_2!36745 List!65689)) )
))
(declare-datatypes ((Option!16354 0))(
  ( (None!16353) (Some!16353 (v!52542 tuple2!66884)) )
))
(declare-fun isDefined!13057 (Option!16354) Bool)

(declare-fun findConcatSeparation!2768 (Regex!16463 Regex!16463 List!65689 List!65689 List!65689) Option!16354)

(assert (=> b!6597586 (= lt!2412634 (isDefined!13057 (findConcatSeparation!2768 (regOne!33438 r!7292) (regTwo!33438 r!7292) Nil!65565 s!2326 s!2326)))))

(declare-fun lt!2412635 () Unit!159187)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2532 (Regex!16463 Regex!16463 List!65689) Unit!159187)

(assert (=> b!6597586 (= lt!2412635 (lemmaFindConcatSeparationEquivalentToExists!2532 (regOne!33438 r!7292) (regTwo!33438 r!7292) s!2326))))

(declare-fun b!6597587 () Bool)

(declare-fun res!2705243 () Bool)

(assert (=> b!6597587 (=> res!2705243 e!3992268)))

(declare-fun isEmpty!37830 (List!65690) Bool)

(assert (=> b!6597587 (= res!2705243 (not (isEmpty!37830 (t!379342 zl!343))))))

(declare-fun b!6597588 () Bool)

(declare-fun res!2705269 () Bool)

(declare-fun e!3992261 () Bool)

(assert (=> b!6597588 (=> res!2705269 e!3992261)))

(declare-fun lt!2412618 () Context!11694)

(declare-fun lt!2412612 () Regex!16463)

(declare-fun unfocusZipper!2205 (List!65690) Regex!16463)

(assert (=> b!6597588 (= res!2705269 (not (= (unfocusZipper!2205 (Cons!65566 lt!2412618 Nil!65566)) lt!2412612)))))

(declare-fun b!6597589 () Bool)

(declare-fun e!3992259 () Bool)

(declare-fun tp!1819423 () Bool)

(assert (=> b!6597589 (= e!3992259 tp!1819423)))

(declare-fun b!6597590 () Bool)

(declare-fun res!2705265 () Bool)

(declare-fun e!3992269 () Bool)

(assert (=> b!6597590 (=> res!2705265 e!3992269)))

(assert (=> b!6597590 (= res!2705265 (or ((_ is Concat!25308) (regOne!33438 r!7292)) (not ((_ is Star!16463) (regOne!33438 r!7292)))))))

(declare-fun b!6597591 () Bool)

(declare-fun e!3992256 () Bool)

(assert (=> b!6597591 (= e!3992256 e!3992261)))

(declare-fun res!2705239 () Bool)

(assert (=> b!6597591 (=> res!2705239 e!3992261)))

(declare-fun lt!2412620 () Context!11694)

(assert (=> b!6597591 (= res!2705239 (not (= (unfocusZipper!2205 (Cons!65566 lt!2412620 Nil!65566)) (reg!16792 (regOne!33438 r!7292)))))))

(declare-fun lt!2412625 () (InoxSet Context!11694))

(assert (=> b!6597591 (= (flatMap!1968 lt!2412625 lambda!367635) (derivationStepZipperUp!1637 lt!2412618 (h!72013 s!2326)))))

(declare-fun lt!2412623 () Unit!159187)

(assert (=> b!6597591 (= lt!2412623 (lemmaFlatMapOnSingletonSet!1494 lt!2412625 lt!2412618 lambda!367635))))

(declare-fun lt!2412631 () (InoxSet Context!11694))

(assert (=> b!6597591 (= (flatMap!1968 lt!2412631 lambda!367635) (derivationStepZipperUp!1637 lt!2412620 (h!72013 s!2326)))))

(declare-fun lt!2412636 () Unit!159187)

(assert (=> b!6597591 (= lt!2412636 (lemmaFlatMapOnSingletonSet!1494 lt!2412631 lt!2412620 lambda!367635))))

(declare-fun lt!2412602 () (InoxSet Context!11694))

(assert (=> b!6597591 (= lt!2412602 (derivationStepZipperUp!1637 lt!2412618 (h!72013 s!2326)))))

(declare-fun lt!2412600 () (InoxSet Context!11694))

(assert (=> b!6597591 (= lt!2412600 (derivationStepZipperUp!1637 lt!2412620 (h!72013 s!2326)))))

(assert (=> b!6597591 (= lt!2412625 (store ((as const (Array Context!11694 Bool)) false) lt!2412618 true))))

(assert (=> b!6597591 (= lt!2412631 (store ((as const (Array Context!11694 Bool)) false) lt!2412620 true))))

(assert (=> b!6597591 (= lt!2412620 (Context!11695 (Cons!65564 (reg!16792 (regOne!33438 r!7292)) Nil!65564)))))

(declare-fun b!6597592 () Bool)

(declare-fun res!2705242 () Bool)

(assert (=> b!6597592 (=> res!2705242 e!3992274)))

(declare-fun lt!2412601 () Regex!16463)

(assert (=> b!6597592 (= res!2705242 (not (= lt!2412601 r!7292)))))

(declare-fun b!6597593 () Bool)

(assert (=> b!6597593 (= e!3992269 e!3992276)))

(declare-fun res!2705270 () Bool)

(assert (=> b!6597593 (=> res!2705270 e!3992276)))

(declare-fun lt!2412617 () (InoxSet Context!11694))

(assert (=> b!6597593 (= res!2705270 (not (= lt!2412617 lt!2412629)))))

(declare-fun derivationStepZipperDown!1711 (Regex!16463 Context!11694 C!33196) (InoxSet Context!11694))

(assert (=> b!6597593 (= lt!2412629 (derivationStepZipperDown!1711 (reg!16792 (regOne!33438 r!7292)) lt!2412618 (h!72013 s!2326)))))

(assert (=> b!6597593 (= lt!2412618 (Context!11695 lt!2412614))))

(declare-fun lt!2412632 () Regex!16463)

(assert (=> b!6597593 (= lt!2412614 (Cons!65564 lt!2412632 (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(assert (=> b!6597593 (= lt!2412632 (Star!16463 (reg!16792 (regOne!33438 r!7292))))))

(declare-fun b!6597583 () Bool)

(declare-fun e!3992264 () Bool)

(declare-fun e!3992258 () Bool)

(assert (=> b!6597583 (= e!3992264 e!3992258)))

(declare-fun res!2705247 () Bool)

(assert (=> b!6597583 (=> res!2705247 e!3992258)))

(declare-fun lt!2412630 () (InoxSet Context!11694))

(declare-fun lt!2412608 () (InoxSet Context!11694))

(assert (=> b!6597583 (= res!2705247 (not (= lt!2412608 (derivationStepZipper!2429 lt!2412630 (h!72013 s!2326)))))))

(declare-fun lt!2412604 () Context!11694)

(assert (=> b!6597583 (= (flatMap!1968 lt!2412630 lambda!367635) (derivationStepZipperUp!1637 lt!2412604 (h!72013 s!2326)))))

(declare-fun lt!2412598 () Unit!159187)

(assert (=> b!6597583 (= lt!2412598 (lemmaFlatMapOnSingletonSet!1494 lt!2412630 lt!2412604 lambda!367635))))

(assert (=> b!6597583 (= lt!2412630 (store ((as const (Array Context!11694 Bool)) false) lt!2412604 true))))

(declare-fun res!2705257 () Bool)

(declare-fun e!3992254 () Bool)

(assert (=> start!645194 (=> (not res!2705257) (not e!3992254))))

(declare-fun validRegex!8199 (Regex!16463) Bool)

(assert (=> start!645194 (= res!2705257 (validRegex!8199 r!7292))))

(assert (=> start!645194 e!3992254))

(declare-fun e!3992252 () Bool)

(assert (=> start!645194 e!3992252))

(declare-fun condSetEmpty!45048 () Bool)

(declare-fun z!1189 () (InoxSet Context!11694))

(assert (=> start!645194 (= condSetEmpty!45048 (= z!1189 ((as const (Array Context!11694 Bool)) false)))))

(declare-fun setRes!45048 () Bool)

(assert (=> start!645194 setRes!45048))

(declare-fun e!3992266 () Bool)

(assert (=> start!645194 e!3992266))

(declare-fun e!3992273 () Bool)

(assert (=> start!645194 e!3992273))

(declare-fun b!6597594 () Bool)

(declare-fun e!3992263 () Bool)

(assert (=> b!6597594 (= e!3992263 (not e!3992268))))

(declare-fun res!2705266 () Bool)

(assert (=> b!6597594 (=> res!2705266 e!3992268)))

(assert (=> b!6597594 (= res!2705266 (not ((_ is Cons!65566) zl!343)))))

(declare-fun matchRSpec!3564 (Regex!16463 List!65689) Bool)

(assert (=> b!6597594 (= lt!2412605 (matchRSpec!3564 r!7292 s!2326))))

(declare-fun matchR!8646 (Regex!16463 List!65689) Bool)

(assert (=> b!6597594 (= lt!2412605 (matchR!8646 r!7292 s!2326))))

(declare-fun lt!2412607 () Unit!159187)

(declare-fun mainMatchTheorem!3564 (Regex!16463 List!65689) Unit!159187)

(assert (=> b!6597594 (= lt!2412607 (mainMatchTheorem!3564 r!7292 s!2326))))

(declare-fun b!6597595 () Bool)

(declare-fun e!3992253 () Bool)

(assert (=> b!6597595 (= e!3992253 (validRegex!8199 lt!2412632))))

(declare-fun b!6597596 () Bool)

(declare-fun res!2705258 () Bool)

(declare-fun e!3992255 () Bool)

(assert (=> b!6597596 (=> res!2705258 e!3992255)))

(declare-fun lt!2412606 () Bool)

(assert (=> b!6597596 (= res!2705258 (not lt!2412606))))

(declare-fun b!6597597 () Bool)

(assert (=> b!6597597 (= e!3992261 e!3992255)))

(declare-fun res!2705249 () Bool)

(assert (=> b!6597597 (=> res!2705249 e!3992255)))

(assert (=> b!6597597 (= res!2705249 lt!2412605)))

(declare-fun lt!2412615 () Regex!16463)

(assert (=> b!6597597 (= (matchR!8646 lt!2412615 s!2326) (matchRSpec!3564 lt!2412615 s!2326))))

(declare-fun lt!2412597 () Unit!159187)

(assert (=> b!6597597 (= lt!2412597 (mainMatchTheorem!3564 lt!2412615 s!2326))))

(declare-fun b!6597598 () Bool)

(declare-fun res!2705255 () Bool)

(assert (=> b!6597598 (=> res!2705255 e!3992255)))

(declare-fun matchZipper!2475 ((InoxSet Context!11694) List!65689) Bool)

(assert (=> b!6597598 (= res!2705255 (not (matchZipper!2475 z!1189 s!2326)))))

(declare-fun b!6597599 () Bool)

(declare-fun res!2705263 () Bool)

(assert (=> b!6597599 (=> res!2705263 e!3992274)))

(assert (=> b!6597599 (= res!2705263 (not (= (matchZipper!2475 lt!2412613 s!2326) (matchZipper!2475 lt!2412603 (t!379341 s!2326)))))))

(declare-fun b!6597600 () Bool)

(declare-fun e!3992257 () Bool)

(assert (=> b!6597600 (= e!3992257 e!3992253)))

(declare-fun res!2705241 () Bool)

(assert (=> b!6597600 (=> res!2705241 e!3992253)))

(assert (=> b!6597600 (= res!2705241 (not (validRegex!8199 (reg!16792 (regOne!33438 r!7292)))))))

(assert (=> b!6597600 (= (matchR!8646 lt!2412632 Nil!65565) (matchRSpec!3564 lt!2412632 Nil!65565))))

(declare-fun lt!2412626 () Unit!159187)

(assert (=> b!6597600 (= lt!2412626 (mainMatchTheorem!3564 lt!2412632 Nil!65565))))

(declare-fun b!6597601 () Bool)

(declare-fun res!2705272 () Bool)

(assert (=> b!6597601 (=> res!2705272 e!3992268)))

(declare-fun generalisedConcat!2060 (List!65688) Regex!16463)

(assert (=> b!6597601 (= res!2705272 (not (= r!7292 (generalisedConcat!2060 (exprs!6347 (h!72014 zl!343))))))))

(declare-fun b!6597602 () Bool)

(declare-fun e!3992272 () Bool)

(assert (=> b!6597602 (= e!3992272 e!3992257)))

(declare-fun res!2705259 () Bool)

(assert (=> b!6597602 (=> res!2705259 e!3992257)))

(assert (=> b!6597602 (= res!2705259 (not (matchR!8646 (regTwo!33438 r!7292) s!2326)))))

(declare-fun lt!2412611 () Regex!16463)

(assert (=> b!6597602 (= (matchR!8646 lt!2412611 s!2326) (matchZipper!2475 lt!2412630 s!2326))))

(declare-fun lt!2412621 () Unit!159187)

(declare-fun lt!2412624 () List!65690)

(declare-fun theoremZipperRegexEquiv!885 ((InoxSet Context!11694) List!65690 Regex!16463 List!65689) Unit!159187)

(assert (=> b!6597602 (= lt!2412621 (theoremZipperRegexEquiv!885 lt!2412630 lt!2412624 lt!2412611 s!2326))))

(declare-fun b!6597603 () Bool)

(declare-fun res!2705253 () Bool)

(assert (=> b!6597603 (=> res!2705253 e!3992264)))

(assert (=> b!6597603 (= res!2705253 (not (matchZipper!2475 lt!2412608 (t!379341 s!2326))))))

(declare-fun b!6597604 () Bool)

(declare-fun e!3992275 () Bool)

(assert (=> b!6597604 (= e!3992275 (not (matchZipper!2475 lt!2412608 (t!379341 s!2326))))))

(declare-fun b!6597605 () Bool)

(declare-fun tp!1819430 () Bool)

(declare-fun tp!1819425 () Bool)

(assert (=> b!6597605 (= e!3992252 (and tp!1819430 tp!1819425))))

(declare-fun b!6597606 () Bool)

(declare-fun e!3992267 () Bool)

(assert (=> b!6597606 (= e!3992258 e!3992267)))

(declare-fun res!2705237 () Bool)

(assert (=> b!6597606 (=> res!2705237 e!3992267)))

(declare-fun regexDepth!360 (Regex!16463) Int)

(assert (=> b!6597606 (= res!2705237 (< (regexDepth!360 r!7292) (regexDepth!360 lt!2412611)))))

(assert (=> b!6597606 (= lt!2412611 (generalisedConcat!2060 (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6597607 () Bool)

(declare-fun e!3992265 () Bool)

(assert (=> b!6597607 (= e!3992274 e!3992265)))

(declare-fun res!2705246 () Bool)

(assert (=> b!6597607 (=> res!2705246 e!3992265)))

(assert (=> b!6597607 (= res!2705246 (not (= r!7292 lt!2412612)))))

(assert (=> b!6597607 (= lt!2412612 (Concat!25308 lt!2412632 (regTwo!33438 r!7292)))))

(declare-fun b!6597608 () Bool)

(declare-fun e!3992262 () Unit!159187)

(declare-fun Unit!159189 () Unit!159187)

(assert (=> b!6597608 (= e!3992262 Unit!159189)))

(declare-fun b!6597609 () Bool)

(declare-fun Unit!159190 () Unit!159187)

(assert (=> b!6597609 (= e!3992262 Unit!159190)))

(declare-fun lt!2412627 () Unit!159187)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1294 ((InoxSet Context!11694) (InoxSet Context!11694) List!65689) Unit!159187)

(assert (=> b!6597609 (= lt!2412627 (lemmaZipperConcatMatchesSameAsBothZippers!1294 lt!2412617 lt!2412608 (t!379341 s!2326)))))

(declare-fun res!2705245 () Bool)

(assert (=> b!6597609 (= res!2705245 (matchZipper!2475 lt!2412617 (t!379341 s!2326)))))

(declare-fun e!3992271 () Bool)

(assert (=> b!6597609 (=> res!2705245 e!3992271)))

(assert (=> b!6597609 (= (matchZipper!2475 ((_ map or) lt!2412617 lt!2412608) (t!379341 s!2326)) e!3992271)))

(declare-fun b!6597610 () Bool)

(assert (=> b!6597610 (= e!3992265 e!3992256)))

(declare-fun res!2705238 () Bool)

(assert (=> b!6597610 (=> res!2705238 e!3992256)))

(assert (=> b!6597610 (= res!2705238 (not (= (unfocusZipper!2205 (Cons!65566 lt!2412609 Nil!65566)) lt!2412615)))))

(assert (=> b!6597610 (= lt!2412615 (Concat!25308 (reg!16792 (regOne!33438 r!7292)) lt!2412612))))

(declare-fun setElem!45048 () Context!11694)

(declare-fun setNonEmpty!45048 () Bool)

(declare-fun tp!1819422 () Bool)

(declare-fun inv!84404 (Context!11694) Bool)

(assert (=> setNonEmpty!45048 (= setRes!45048 (and tp!1819422 (inv!84404 setElem!45048) e!3992259))))

(declare-fun setRest!45048 () (InoxSet Context!11694))

(assert (=> setNonEmpty!45048 (= z!1189 ((_ map or) (store ((as const (Array Context!11694 Bool)) false) setElem!45048 true) setRest!45048))))

(declare-fun setIsEmpty!45048 () Bool)

(assert (=> setIsEmpty!45048 setRes!45048))

(declare-fun b!6597611 () Bool)

(declare-fun res!2705262 () Bool)

(assert (=> b!6597611 (=> res!2705262 e!3992264)))

(declare-fun lt!2412628 () Bool)

(assert (=> b!6597611 (= res!2705262 lt!2412628)))

(declare-fun b!6597612 () Bool)

(declare-fun res!2705256 () Bool)

(assert (=> b!6597612 (=> res!2705256 e!3992268)))

(assert (=> b!6597612 (= res!2705256 (not ((_ is Cons!65564) (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6597613 () Bool)

(declare-fun tp_is_empty!42179 () Bool)

(declare-fun tp!1819426 () Bool)

(assert (=> b!6597613 (= e!3992273 (and tp_is_empty!42179 tp!1819426))))

(declare-fun b!6597614 () Bool)

(assert (=> b!6597614 (= e!3992254 e!3992263)))

(declare-fun res!2705244 () Bool)

(assert (=> b!6597614 (=> (not res!2705244) (not e!3992263))))

(assert (=> b!6597614 (= res!2705244 (= r!7292 lt!2412601))))

(assert (=> b!6597614 (= lt!2412601 (unfocusZipper!2205 zl!343))))

(declare-fun b!6597615 () Bool)

(declare-fun tp!1819424 () Bool)

(assert (=> b!6597615 (= e!3992252 tp!1819424)))

(declare-fun b!6597616 () Bool)

(assert (=> b!6597616 (= e!3992271 (matchZipper!2475 lt!2412608 (t!379341 s!2326)))))

(declare-fun b!6597617 () Bool)

(declare-fun res!2705271 () Bool)

(assert (=> b!6597617 (=> res!2705271 e!3992269)))

(declare-fun e!3992251 () Bool)

(assert (=> b!6597617 (= res!2705271 e!3992251)))

(declare-fun res!2705251 () Bool)

(assert (=> b!6597617 (=> (not res!2705251) (not e!3992251))))

(assert (=> b!6597617 (= res!2705251 ((_ is Concat!25308) (regOne!33438 r!7292)))))

(declare-fun b!6597618 () Bool)

(declare-fun tp!1819427 () Bool)

(declare-fun tp!1819431 () Bool)

(assert (=> b!6597618 (= e!3992252 (and tp!1819427 tp!1819431))))

(assert (=> b!6597619 (= e!3992260 e!3992269)))

(declare-fun res!2705252 () Bool)

(assert (=> b!6597619 (=> res!2705252 e!3992269)))

(assert (=> b!6597619 (= res!2705252 (or (and ((_ is ElementMatch!16463) (regOne!33438 r!7292)) (= (c!1215062 (regOne!33438 r!7292)) (h!72013 s!2326))) ((_ is Union!16463) (regOne!33438 r!7292))))))

(declare-fun lt!2412619 () Unit!159187)

(assert (=> b!6597619 (= lt!2412619 e!3992262)))

(declare-fun c!1215061 () Bool)

(assert (=> b!6597619 (= c!1215061 lt!2412606)))

(declare-fun nullable!6456 (Regex!16463) Bool)

(assert (=> b!6597619 (= lt!2412606 (nullable!6456 (h!72012 (exprs!6347 (h!72014 zl!343)))))))

(assert (=> b!6597619 (= (flatMap!1968 z!1189 lambda!367635) (derivationStepZipperUp!1637 (h!72014 zl!343) (h!72013 s!2326)))))

(declare-fun lt!2412622 () Unit!159187)

(assert (=> b!6597619 (= lt!2412622 (lemmaFlatMapOnSingletonSet!1494 z!1189 (h!72014 zl!343) lambda!367635))))

(assert (=> b!6597619 (= lt!2412608 (derivationStepZipperUp!1637 lt!2412604 (h!72013 s!2326)))))

(assert (=> b!6597619 (= lt!2412617 (derivationStepZipperDown!1711 (h!72012 (exprs!6347 (h!72014 zl!343))) lt!2412604 (h!72013 s!2326)))))

(assert (=> b!6597619 (= lt!2412604 (Context!11695 (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun lt!2412599 () (InoxSet Context!11694))

(assert (=> b!6597619 (= lt!2412599 (derivationStepZipperUp!1637 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343))))) (h!72013 s!2326)))))

(declare-fun b!6597620 () Bool)

(declare-fun tp!1819429 () Bool)

(assert (=> b!6597620 (= e!3992266 (and (inv!84404 (h!72014 zl!343)) e!3992270 tp!1819429))))

(declare-fun b!6597621 () Bool)

(assert (=> b!6597621 (= e!3992267 e!3992272)))

(declare-fun res!2705261 () Bool)

(assert (=> b!6597621 (=> res!2705261 e!3992272)))

(declare-fun zipperDepth!400 (List!65690) Int)

(assert (=> b!6597621 (= res!2705261 (< (zipperDepth!400 zl!343) (zipperDepth!400 lt!2412624)))))

(assert (=> b!6597621 (= lt!2412624 (Cons!65566 lt!2412604 Nil!65566))))

(declare-fun b!6597622 () Bool)

(declare-fun res!2705267 () Bool)

(assert (=> b!6597622 (=> (not res!2705267) (not e!3992254))))

(declare-fun toList!10247 ((InoxSet Context!11694)) List!65690)

(assert (=> b!6597622 (= res!2705267 (= (toList!10247 z!1189) zl!343))))

(declare-fun b!6597623 () Bool)

(assert (=> b!6597623 (= e!3992255 e!3992264)))

(declare-fun res!2705240 () Bool)

(assert (=> b!6597623 (=> res!2705240 e!3992264)))

(assert (=> b!6597623 (= res!2705240 e!3992275)))

(declare-fun res!2705250 () Bool)

(assert (=> b!6597623 (=> (not res!2705250) (not e!3992275))))

(assert (=> b!6597623 (= res!2705250 (not lt!2412628))))

(assert (=> b!6597623 (= lt!2412628 (matchZipper!2475 lt!2412617 (t!379341 s!2326)))))

(declare-fun b!6597624 () Bool)

(assert (=> b!6597624 (= e!3992252 tp_is_empty!42179)))

(declare-fun b!6597625 () Bool)

(declare-fun res!2705264 () Bool)

(assert (=> b!6597625 (=> res!2705264 e!3992268)))

(declare-fun generalisedUnion!2307 (List!65688) Regex!16463)

(declare-fun unfocusZipperList!1884 (List!65690) List!65688)

(assert (=> b!6597625 (= res!2705264 (not (= r!7292 (generalisedUnion!2307 (unfocusZipperList!1884 zl!343)))))))

(declare-fun b!6597626 () Bool)

(assert (=> b!6597626 (= e!3992251 (nullable!6456 (regOne!33438 (regOne!33438 r!7292))))))

(assert (= (and start!645194 res!2705257) b!6597622))

(assert (= (and b!6597622 res!2705267) b!6597614))

(assert (= (and b!6597614 res!2705244) b!6597594))

(assert (= (and b!6597594 (not res!2705266)) b!6597587))

(assert (= (and b!6597587 (not res!2705243)) b!6597601))

(assert (= (and b!6597601 (not res!2705272)) b!6597612))

(assert (= (and b!6597612 (not res!2705256)) b!6597625))

(assert (= (and b!6597625 (not res!2705264)) b!6597581))

(assert (= (and b!6597581 (not res!2705260)) b!6597586))

(assert (= (and b!6597586 (not res!2705254)) b!6597585))

(assert (= (and b!6597585 (not res!2705248)) b!6597619))

(assert (= (and b!6597619 c!1215061) b!6597609))

(assert (= (and b!6597619 (not c!1215061)) b!6597608))

(assert (= (and b!6597609 (not res!2705245)) b!6597616))

(assert (= (and b!6597619 (not res!2705252)) b!6597617))

(assert (= (and b!6597617 res!2705251) b!6597626))

(assert (= (and b!6597617 (not res!2705271)) b!6597590))

(assert (= (and b!6597590 (not res!2705265)) b!6597593))

(assert (= (and b!6597593 (not res!2705270)) b!6597582))

(assert (= (and b!6597582 (not res!2705268)) b!6597599))

(assert (= (and b!6597599 (not res!2705263)) b!6597592))

(assert (= (and b!6597592 (not res!2705242)) b!6597607))

(assert (= (and b!6597607 (not res!2705246)) b!6597610))

(assert (= (and b!6597610 (not res!2705238)) b!6597591))

(assert (= (and b!6597591 (not res!2705239)) b!6597588))

(assert (= (and b!6597588 (not res!2705269)) b!6597597))

(assert (= (and b!6597597 (not res!2705249)) b!6597598))

(assert (= (and b!6597598 (not res!2705255)) b!6597596))

(assert (= (and b!6597596 (not res!2705258)) b!6597623))

(assert (= (and b!6597623 res!2705250) b!6597604))

(assert (= (and b!6597623 (not res!2705240)) b!6597611))

(assert (= (and b!6597611 (not res!2705262)) b!6597603))

(assert (= (and b!6597603 (not res!2705253)) b!6597583))

(assert (= (and b!6597583 (not res!2705247)) b!6597606))

(assert (= (and b!6597606 (not res!2705237)) b!6597621))

(assert (= (and b!6597621 (not res!2705261)) b!6597602))

(assert (= (and b!6597602 (not res!2705259)) b!6597600))

(assert (= (and b!6597600 (not res!2705241)) b!6597595))

(assert (= (and start!645194 ((_ is ElementMatch!16463) r!7292)) b!6597624))

(assert (= (and start!645194 ((_ is Concat!25308) r!7292)) b!6597605))

(assert (= (and start!645194 ((_ is Star!16463) r!7292)) b!6597615))

(assert (= (and start!645194 ((_ is Union!16463) r!7292)) b!6597618))

(assert (= (and start!645194 condSetEmpty!45048) setIsEmpty!45048))

(assert (= (and start!645194 (not condSetEmpty!45048)) setNonEmpty!45048))

(assert (= setNonEmpty!45048 b!6597589))

(assert (= b!6597620 b!6597584))

(assert (= (and start!645194 ((_ is Cons!65566) zl!343)) b!6597620))

(assert (= (and start!645194 ((_ is Cons!65565) s!2326)) b!6597613))

(declare-fun m!7374480 () Bool)

(assert (=> b!6597600 m!7374480))

(declare-fun m!7374482 () Bool)

(assert (=> b!6597600 m!7374482))

(declare-fun m!7374484 () Bool)

(assert (=> b!6597600 m!7374484))

(declare-fun m!7374486 () Bool)

(assert (=> b!6597600 m!7374486))

(declare-fun m!7374488 () Bool)

(assert (=> b!6597619 m!7374488))

(declare-fun m!7374490 () Bool)

(assert (=> b!6597619 m!7374490))

(declare-fun m!7374492 () Bool)

(assert (=> b!6597619 m!7374492))

(declare-fun m!7374494 () Bool)

(assert (=> b!6597619 m!7374494))

(declare-fun m!7374496 () Bool)

(assert (=> b!6597619 m!7374496))

(declare-fun m!7374498 () Bool)

(assert (=> b!6597619 m!7374498))

(declare-fun m!7374500 () Bool)

(assert (=> b!6597619 m!7374500))

(declare-fun m!7374502 () Bool)

(assert (=> b!6597603 m!7374502))

(declare-fun m!7374504 () Bool)

(assert (=> b!6597598 m!7374504))

(declare-fun m!7374506 () Bool)

(assert (=> b!6597626 m!7374506))

(assert (=> b!6597616 m!7374502))

(declare-fun m!7374508 () Bool)

(assert (=> b!6597587 m!7374508))

(declare-fun m!7374510 () Bool)

(assert (=> b!6597599 m!7374510))

(declare-fun m!7374512 () Bool)

(assert (=> b!6597599 m!7374512))

(declare-fun m!7374514 () Bool)

(assert (=> b!6597602 m!7374514))

(declare-fun m!7374516 () Bool)

(assert (=> b!6597602 m!7374516))

(declare-fun m!7374518 () Bool)

(assert (=> b!6597602 m!7374518))

(declare-fun m!7374520 () Bool)

(assert (=> b!6597602 m!7374520))

(declare-fun m!7374522 () Bool)

(assert (=> b!6597606 m!7374522))

(declare-fun m!7374524 () Bool)

(assert (=> b!6597606 m!7374524))

(declare-fun m!7374526 () Bool)

(assert (=> b!6597606 m!7374526))

(assert (=> b!6597583 m!7374490))

(declare-fun m!7374528 () Bool)

(assert (=> b!6597583 m!7374528))

(declare-fun m!7374530 () Bool)

(assert (=> b!6597583 m!7374530))

(declare-fun m!7374532 () Bool)

(assert (=> b!6597583 m!7374532))

(declare-fun m!7374534 () Bool)

(assert (=> b!6597583 m!7374534))

(declare-fun m!7374536 () Bool)

(assert (=> b!6597586 m!7374536))

(declare-fun m!7374538 () Bool)

(assert (=> b!6597586 m!7374538))

(declare-fun m!7374540 () Bool)

(assert (=> b!6597586 m!7374540))

(declare-fun m!7374542 () Bool)

(assert (=> b!6597586 m!7374542))

(declare-fun m!7374544 () Bool)

(assert (=> b!6597586 m!7374544))

(assert (=> b!6597586 m!7374540))

(assert (=> b!6597586 m!7374536))

(declare-fun m!7374546 () Bool)

(assert (=> b!6597586 m!7374546))

(declare-fun m!7374548 () Bool)

(assert (=> b!6597614 m!7374548))

(declare-fun m!7374550 () Bool)

(assert (=> b!6597623 m!7374550))

(declare-fun m!7374552 () Bool)

(assert (=> start!645194 m!7374552))

(declare-fun m!7374554 () Bool)

(assert (=> b!6597610 m!7374554))

(declare-fun m!7374556 () Bool)

(assert (=> b!6597582 m!7374556))

(declare-fun m!7374558 () Bool)

(assert (=> b!6597582 m!7374558))

(declare-fun m!7374560 () Bool)

(assert (=> b!6597582 m!7374560))

(declare-fun m!7374562 () Bool)

(assert (=> b!6597582 m!7374562))

(declare-fun m!7374564 () Bool)

(assert (=> b!6597582 m!7374564))

(declare-fun m!7374566 () Bool)

(assert (=> b!6597588 m!7374566))

(declare-fun m!7374568 () Bool)

(assert (=> b!6597620 m!7374568))

(declare-fun m!7374570 () Bool)

(assert (=> b!6597601 m!7374570))

(declare-fun m!7374572 () Bool)

(assert (=> b!6597609 m!7374572))

(assert (=> b!6597609 m!7374550))

(declare-fun m!7374574 () Bool)

(assert (=> b!6597609 m!7374574))

(declare-fun m!7374576 () Bool)

(assert (=> b!6597585 m!7374576))

(declare-fun m!7374578 () Bool)

(assert (=> b!6597625 m!7374578))

(assert (=> b!6597625 m!7374578))

(declare-fun m!7374580 () Bool)

(assert (=> b!6597625 m!7374580))

(declare-fun m!7374582 () Bool)

(assert (=> b!6597595 m!7374582))

(declare-fun m!7374584 () Bool)

(assert (=> b!6597622 m!7374584))

(declare-fun m!7374586 () Bool)

(assert (=> b!6597591 m!7374586))

(declare-fun m!7374588 () Bool)

(assert (=> b!6597591 m!7374588))

(declare-fun m!7374590 () Bool)

(assert (=> b!6597591 m!7374590))

(declare-fun m!7374592 () Bool)

(assert (=> b!6597591 m!7374592))

(declare-fun m!7374594 () Bool)

(assert (=> b!6597591 m!7374594))

(declare-fun m!7374596 () Bool)

(assert (=> b!6597591 m!7374596))

(declare-fun m!7374598 () Bool)

(assert (=> b!6597591 m!7374598))

(declare-fun m!7374600 () Bool)

(assert (=> b!6597591 m!7374600))

(declare-fun m!7374602 () Bool)

(assert (=> b!6597591 m!7374602))

(declare-fun m!7374604 () Bool)

(assert (=> b!6597593 m!7374604))

(declare-fun m!7374606 () Bool)

(assert (=> b!6597597 m!7374606))

(declare-fun m!7374608 () Bool)

(assert (=> b!6597597 m!7374608))

(declare-fun m!7374610 () Bool)

(assert (=> b!6597597 m!7374610))

(declare-fun m!7374612 () Bool)

(assert (=> b!6597594 m!7374612))

(declare-fun m!7374614 () Bool)

(assert (=> b!6597594 m!7374614))

(declare-fun m!7374616 () Bool)

(assert (=> b!6597594 m!7374616))

(assert (=> b!6597604 m!7374502))

(declare-fun m!7374618 () Bool)

(assert (=> b!6597621 m!7374618))

(declare-fun m!7374620 () Bool)

(assert (=> b!6597621 m!7374620))

(declare-fun m!7374622 () Bool)

(assert (=> setNonEmpty!45048 m!7374622))

(check-sat (not b!6597598) (not b!6597586) (not b!6597606) (not b!6597593) (not b!6597605) (not b!6597591) (not b!6597595) (not start!645194) (not b!6597620) (not b!6597618) (not b!6597614) (not b!6597601) (not b!6597585) (not b!6597626) (not b!6597616) (not b!6597584) (not b!6597583) (not b!6597610) (not b!6597588) (not b!6597623) (not b!6597587) (not b!6597600) (not b!6597599) (not b!6597594) (not b!6597602) (not setNonEmpty!45048) (not b!6597619) (not b!6597621) (not b!6597597) (not b!6597603) (not b!6597625) tp_is_empty!42179 (not b!6597615) (not b!6597589) (not b!6597609) (not b!6597613) (not b!6597622) (not b!6597582) (not b!6597604))
(check-sat)
(get-model)

(declare-fun d!2069787 () Bool)

(declare-fun c!1215141 () Bool)

(declare-fun isEmpty!37833 (List!65689) Bool)

(assert (=> d!2069787 (= c!1215141 (isEmpty!37833 (t!379341 s!2326)))))

(declare-fun e!3992406 () Bool)

(assert (=> d!2069787 (= (matchZipper!2475 lt!2412608 (t!379341 s!2326)) e!3992406)))

(declare-fun b!6597868 () Bool)

(declare-fun nullableZipper!2208 ((InoxSet Context!11694)) Bool)

(assert (=> b!6597868 (= e!3992406 (nullableZipper!2208 lt!2412608))))

(declare-fun b!6597869 () Bool)

(declare-fun head!13377 (List!65689) C!33196)

(declare-fun tail!12462 (List!65689) List!65689)

(assert (=> b!6597869 (= e!3992406 (matchZipper!2475 (derivationStepZipper!2429 lt!2412608 (head!13377 (t!379341 s!2326))) (tail!12462 (t!379341 s!2326))))))

(assert (= (and d!2069787 c!1215141) b!6597868))

(assert (= (and d!2069787 (not c!1215141)) b!6597869))

(declare-fun m!7374804 () Bool)

(assert (=> d!2069787 m!7374804))

(declare-fun m!7374806 () Bool)

(assert (=> b!6597868 m!7374806))

(declare-fun m!7374808 () Bool)

(assert (=> b!6597869 m!7374808))

(assert (=> b!6597869 m!7374808))

(declare-fun m!7374810 () Bool)

(assert (=> b!6597869 m!7374810))

(declare-fun m!7374812 () Bool)

(assert (=> b!6597869 m!7374812))

(assert (=> b!6597869 m!7374810))

(assert (=> b!6597869 m!7374812))

(declare-fun m!7374814 () Bool)

(assert (=> b!6597869 m!7374814))

(assert (=> b!6597616 d!2069787))

(declare-fun b!6597983 () Bool)

(declare-fun res!2705383 () Bool)

(declare-fun e!3992474 () Bool)

(assert (=> b!6597983 (=> res!2705383 e!3992474)))

(declare-fun e!3992473 () Bool)

(assert (=> b!6597983 (= res!2705383 e!3992473)))

(declare-fun res!2705385 () Bool)

(assert (=> b!6597983 (=> (not res!2705385) (not e!3992473))))

(declare-fun lt!2412683 () Bool)

(assert (=> b!6597983 (= res!2705385 lt!2412683)))

(declare-fun b!6597984 () Bool)

(declare-fun e!3992475 () Bool)

(assert (=> b!6597984 (= e!3992474 e!3992475)))

(declare-fun res!2705390 () Bool)

(assert (=> b!6597984 (=> (not res!2705390) (not e!3992475))))

(assert (=> b!6597984 (= res!2705390 (not lt!2412683))))

(declare-fun b!6597985 () Bool)

(declare-fun res!2705387 () Bool)

(declare-fun e!3992471 () Bool)

(assert (=> b!6597985 (=> res!2705387 e!3992471)))

(assert (=> b!6597985 (= res!2705387 (not (isEmpty!37833 (tail!12462 s!2326))))))

(declare-fun b!6597986 () Bool)

(assert (=> b!6597986 (= e!3992473 (= (head!13377 s!2326) (c!1215062 lt!2412615)))))

(declare-fun b!6597987 () Bool)

(declare-fun res!2705384 () Bool)

(assert (=> b!6597987 (=> (not res!2705384) (not e!3992473))))

(declare-fun call!576910 () Bool)

(assert (=> b!6597987 (= res!2705384 (not call!576910))))

(declare-fun b!6597988 () Bool)

(assert (=> b!6597988 (= e!3992471 (not (= (head!13377 s!2326) (c!1215062 lt!2412615))))))

(declare-fun b!6597989 () Bool)

(declare-fun e!3992470 () Bool)

(assert (=> b!6597989 (= e!3992470 (= lt!2412683 call!576910))))

(declare-fun b!6597991 () Bool)

(declare-fun e!3992476 () Bool)

(assert (=> b!6597991 (= e!3992470 e!3992476)))

(declare-fun c!1215184 () Bool)

(assert (=> b!6597991 (= c!1215184 ((_ is EmptyLang!16463) lt!2412615))))

(declare-fun b!6597992 () Bool)

(assert (=> b!6597992 (= e!3992475 e!3992471)))

(declare-fun res!2705386 () Bool)

(assert (=> b!6597992 (=> res!2705386 e!3992471)))

(assert (=> b!6597992 (= res!2705386 call!576910)))

(declare-fun bm!576905 () Bool)

(assert (=> bm!576905 (= call!576910 (isEmpty!37833 s!2326))))

(declare-fun b!6597993 () Bool)

(assert (=> b!6597993 (= e!3992476 (not lt!2412683))))

(declare-fun b!6597994 () Bool)

(declare-fun res!2705389 () Bool)

(assert (=> b!6597994 (=> res!2705389 e!3992474)))

(assert (=> b!6597994 (= res!2705389 (not ((_ is ElementMatch!16463) lt!2412615)))))

(assert (=> b!6597994 (= e!3992476 e!3992474)))

(declare-fun b!6597995 () Bool)

(declare-fun res!2705388 () Bool)

(assert (=> b!6597995 (=> (not res!2705388) (not e!3992473))))

(assert (=> b!6597995 (= res!2705388 (isEmpty!37833 (tail!12462 s!2326)))))

(declare-fun b!6597996 () Bool)

(declare-fun e!3992472 () Bool)

(assert (=> b!6597996 (= e!3992472 (nullable!6456 lt!2412615))))

(declare-fun d!2069795 () Bool)

(assert (=> d!2069795 e!3992470))

(declare-fun c!1215186 () Bool)

(assert (=> d!2069795 (= c!1215186 ((_ is EmptyExpr!16463) lt!2412615))))

(assert (=> d!2069795 (= lt!2412683 e!3992472)))

(declare-fun c!1215185 () Bool)

(assert (=> d!2069795 (= c!1215185 (isEmpty!37833 s!2326))))

(assert (=> d!2069795 (validRegex!8199 lt!2412615)))

(assert (=> d!2069795 (= (matchR!8646 lt!2412615 s!2326) lt!2412683)))

(declare-fun b!6597990 () Bool)

(declare-fun derivativeStep!5147 (Regex!16463 C!33196) Regex!16463)

(assert (=> b!6597990 (= e!3992472 (matchR!8646 (derivativeStep!5147 lt!2412615 (head!13377 s!2326)) (tail!12462 s!2326)))))

(assert (= (and d!2069795 c!1215185) b!6597996))

(assert (= (and d!2069795 (not c!1215185)) b!6597990))

(assert (= (and d!2069795 c!1215186) b!6597989))

(assert (= (and d!2069795 (not c!1215186)) b!6597991))

(assert (= (and b!6597991 c!1215184) b!6597993))

(assert (= (and b!6597991 (not c!1215184)) b!6597994))

(assert (= (and b!6597994 (not res!2705389)) b!6597983))

(assert (= (and b!6597983 res!2705385) b!6597987))

(assert (= (and b!6597987 res!2705384) b!6597995))

(assert (= (and b!6597995 res!2705388) b!6597986))

(assert (= (and b!6597983 (not res!2705383)) b!6597984))

(assert (= (and b!6597984 res!2705390) b!6597992))

(assert (= (and b!6597992 (not res!2705386)) b!6597985))

(assert (= (and b!6597985 (not res!2705387)) b!6597988))

(assert (= (or b!6597989 b!6597992 b!6597987) bm!576905))

(declare-fun m!7374876 () Bool)

(assert (=> b!6597990 m!7374876))

(assert (=> b!6597990 m!7374876))

(declare-fun m!7374878 () Bool)

(assert (=> b!6597990 m!7374878))

(declare-fun m!7374880 () Bool)

(assert (=> b!6597990 m!7374880))

(assert (=> b!6597990 m!7374878))

(assert (=> b!6597990 m!7374880))

(declare-fun m!7374882 () Bool)

(assert (=> b!6597990 m!7374882))

(assert (=> b!6597985 m!7374880))

(assert (=> b!6597985 m!7374880))

(declare-fun m!7374884 () Bool)

(assert (=> b!6597985 m!7374884))

(declare-fun m!7374886 () Bool)

(assert (=> b!6597996 m!7374886))

(declare-fun m!7374888 () Bool)

(assert (=> d!2069795 m!7374888))

(declare-fun m!7374890 () Bool)

(assert (=> d!2069795 m!7374890))

(assert (=> b!6597988 m!7374876))

(assert (=> bm!576905 m!7374888))

(assert (=> b!6597986 m!7374876))

(assert (=> b!6597995 m!7374880))

(assert (=> b!6597995 m!7374880))

(assert (=> b!6597995 m!7374884))

(assert (=> b!6597597 d!2069795))

(declare-fun bs!1691902 () Bool)

(declare-fun b!6598102 () Bool)

(assert (= bs!1691902 (and b!6598102 b!6597586)))

(declare-fun lambda!367683 () Int)

(assert (=> bs!1691902 (not (= lambda!367683 lambda!367633))))

(assert (=> bs!1691902 (not (= lambda!367683 lambda!367634))))

(assert (=> b!6598102 true))

(assert (=> b!6598102 true))

(declare-fun bs!1691903 () Bool)

(declare-fun b!6598104 () Bool)

(assert (= bs!1691903 (and b!6598104 b!6597586)))

(declare-fun lambda!367684 () Int)

(assert (=> bs!1691903 (not (= lambda!367684 lambda!367633))))

(assert (=> bs!1691903 (= (and (= (regOne!33438 lt!2412615) (regOne!33438 r!7292)) (= (regTwo!33438 lt!2412615) (regTwo!33438 r!7292))) (= lambda!367684 lambda!367634))))

(declare-fun bs!1691904 () Bool)

(assert (= bs!1691904 (and b!6598104 b!6598102)))

(assert (=> bs!1691904 (not (= lambda!367684 lambda!367683))))

(assert (=> b!6598104 true))

(assert (=> b!6598104 true))

(declare-fun e!3992542 () Bool)

(declare-fun call!576924 () Bool)

(assert (=> b!6598102 (= e!3992542 call!576924)))

(declare-fun b!6598103 () Bool)

(declare-fun c!1215222 () Bool)

(assert (=> b!6598103 (= c!1215222 ((_ is ElementMatch!16463) lt!2412615))))

(declare-fun e!3992547 () Bool)

(declare-fun e!3992544 () Bool)

(assert (=> b!6598103 (= e!3992547 e!3992544)))

(declare-fun e!3992546 () Bool)

(assert (=> b!6598104 (= e!3992546 call!576924)))

(declare-fun d!2069817 () Bool)

(declare-fun c!1215219 () Bool)

(assert (=> d!2069817 (= c!1215219 ((_ is EmptyExpr!16463) lt!2412615))))

(declare-fun e!3992545 () Bool)

(assert (=> d!2069817 (= (matchRSpec!3564 lt!2412615 s!2326) e!3992545)))

(declare-fun bm!576919 () Bool)

(declare-fun c!1215220 () Bool)

(assert (=> bm!576919 (= call!576924 (Exists!3533 (ite c!1215220 lambda!367683 lambda!367684)))))

(declare-fun b!6598105 () Bool)

(declare-fun c!1215221 () Bool)

(assert (=> b!6598105 (= c!1215221 ((_ is Union!16463) lt!2412615))))

(declare-fun e!3992548 () Bool)

(assert (=> b!6598105 (= e!3992544 e!3992548)))

(declare-fun b!6598106 () Bool)

(declare-fun e!3992543 () Bool)

(assert (=> b!6598106 (= e!3992543 (matchRSpec!3564 (regTwo!33439 lt!2412615) s!2326))))

(declare-fun b!6598107 () Bool)

(declare-fun res!2705444 () Bool)

(assert (=> b!6598107 (=> res!2705444 e!3992542)))

(declare-fun call!576925 () Bool)

(assert (=> b!6598107 (= res!2705444 call!576925)))

(assert (=> b!6598107 (= e!3992546 e!3992542)))

(declare-fun bm!576920 () Bool)

(assert (=> bm!576920 (= call!576925 (isEmpty!37833 s!2326))))

(declare-fun b!6598108 () Bool)

(assert (=> b!6598108 (= e!3992548 e!3992546)))

(assert (=> b!6598108 (= c!1215220 ((_ is Star!16463) lt!2412615))))

(declare-fun b!6598109 () Bool)

(assert (=> b!6598109 (= e!3992545 e!3992547)))

(declare-fun res!2705442 () Bool)

(assert (=> b!6598109 (= res!2705442 (not ((_ is EmptyLang!16463) lt!2412615)))))

(assert (=> b!6598109 (=> (not res!2705442) (not e!3992547))))

(declare-fun b!6598110 () Bool)

(assert (=> b!6598110 (= e!3992544 (= s!2326 (Cons!65565 (c!1215062 lt!2412615) Nil!65565)))))

(declare-fun b!6598111 () Bool)

(assert (=> b!6598111 (= e!3992545 call!576925)))

(declare-fun b!6598112 () Bool)

(assert (=> b!6598112 (= e!3992548 e!3992543)))

(declare-fun res!2705443 () Bool)

(assert (=> b!6598112 (= res!2705443 (matchRSpec!3564 (regOne!33439 lt!2412615) s!2326))))

(assert (=> b!6598112 (=> res!2705443 e!3992543)))

(assert (= (and d!2069817 c!1215219) b!6598111))

(assert (= (and d!2069817 (not c!1215219)) b!6598109))

(assert (= (and b!6598109 res!2705442) b!6598103))

(assert (= (and b!6598103 c!1215222) b!6598110))

(assert (= (and b!6598103 (not c!1215222)) b!6598105))

(assert (= (and b!6598105 c!1215221) b!6598112))

(assert (= (and b!6598105 (not c!1215221)) b!6598108))

(assert (= (and b!6598112 (not res!2705443)) b!6598106))

(assert (= (and b!6598108 c!1215220) b!6598107))

(assert (= (and b!6598108 (not c!1215220)) b!6598104))

(assert (= (and b!6598107 (not res!2705444)) b!6598102))

(assert (= (or b!6598102 b!6598104) bm!576919))

(assert (= (or b!6598111 b!6598107) bm!576920))

(declare-fun m!7374922 () Bool)

(assert (=> bm!576919 m!7374922))

(declare-fun m!7374924 () Bool)

(assert (=> b!6598106 m!7374924))

(assert (=> bm!576920 m!7374888))

(declare-fun m!7374926 () Bool)

(assert (=> b!6598112 m!7374926))

(assert (=> b!6597597 d!2069817))

(declare-fun d!2069825 () Bool)

(assert (=> d!2069825 (= (matchR!8646 lt!2412615 s!2326) (matchRSpec!3564 lt!2412615 s!2326))))

(declare-fun lt!2412702 () Unit!159187)

(declare-fun choose!49235 (Regex!16463 List!65689) Unit!159187)

(assert (=> d!2069825 (= lt!2412702 (choose!49235 lt!2412615 s!2326))))

(assert (=> d!2069825 (validRegex!8199 lt!2412615)))

(assert (=> d!2069825 (= (mainMatchTheorem!3564 lt!2412615 s!2326) lt!2412702)))

(declare-fun bs!1691908 () Bool)

(assert (= bs!1691908 d!2069825))

(assert (=> bs!1691908 m!7374606))

(assert (=> bs!1691908 m!7374608))

(declare-fun m!7374928 () Bool)

(assert (=> bs!1691908 m!7374928))

(assert (=> bs!1691908 m!7374890))

(assert (=> b!6597597 d!2069825))

(declare-fun d!2069827 () Bool)

(declare-fun c!1215227 () Bool)

(assert (=> d!2069827 (= c!1215227 (isEmpty!37833 s!2326))))

(declare-fun e!3992556 () Bool)

(assert (=> d!2069827 (= (matchZipper!2475 lt!2412613 s!2326) e!3992556)))

(declare-fun b!6598124 () Bool)

(assert (=> b!6598124 (= e!3992556 (nullableZipper!2208 lt!2412613))))

(declare-fun b!6598125 () Bool)

(assert (=> b!6598125 (= e!3992556 (matchZipper!2475 (derivationStepZipper!2429 lt!2412613 (head!13377 s!2326)) (tail!12462 s!2326)))))

(assert (= (and d!2069827 c!1215227) b!6598124))

(assert (= (and d!2069827 (not c!1215227)) b!6598125))

(assert (=> d!2069827 m!7374888))

(declare-fun m!7374930 () Bool)

(assert (=> b!6598124 m!7374930))

(assert (=> b!6598125 m!7374876))

(assert (=> b!6598125 m!7374876))

(declare-fun m!7374932 () Bool)

(assert (=> b!6598125 m!7374932))

(assert (=> b!6598125 m!7374880))

(assert (=> b!6598125 m!7374932))

(assert (=> b!6598125 m!7374880))

(declare-fun m!7374934 () Bool)

(assert (=> b!6598125 m!7374934))

(assert (=> b!6597599 d!2069827))

(declare-fun d!2069829 () Bool)

(declare-fun c!1215228 () Bool)

(assert (=> d!2069829 (= c!1215228 (isEmpty!37833 (t!379341 s!2326)))))

(declare-fun e!3992557 () Bool)

(assert (=> d!2069829 (= (matchZipper!2475 lt!2412603 (t!379341 s!2326)) e!3992557)))

(declare-fun b!6598126 () Bool)

(assert (=> b!6598126 (= e!3992557 (nullableZipper!2208 lt!2412603))))

(declare-fun b!6598127 () Bool)

(assert (=> b!6598127 (= e!3992557 (matchZipper!2475 (derivationStepZipper!2429 lt!2412603 (head!13377 (t!379341 s!2326))) (tail!12462 (t!379341 s!2326))))))

(assert (= (and d!2069829 c!1215228) b!6598126))

(assert (= (and d!2069829 (not c!1215228)) b!6598127))

(assert (=> d!2069829 m!7374804))

(declare-fun m!7374936 () Bool)

(assert (=> b!6598126 m!7374936))

(assert (=> b!6598127 m!7374808))

(assert (=> b!6598127 m!7374808))

(declare-fun m!7374938 () Bool)

(assert (=> b!6598127 m!7374938))

(assert (=> b!6598127 m!7374812))

(assert (=> b!6598127 m!7374938))

(assert (=> b!6598127 m!7374812))

(declare-fun m!7374940 () Bool)

(assert (=> b!6598127 m!7374940))

(assert (=> b!6597599 d!2069829))

(declare-fun d!2069831 () Bool)

(declare-fun c!1215229 () Bool)

(assert (=> d!2069831 (= c!1215229 (isEmpty!37833 s!2326))))

(declare-fun e!3992558 () Bool)

(assert (=> d!2069831 (= (matchZipper!2475 z!1189 s!2326) e!3992558)))

(declare-fun b!6598128 () Bool)

(assert (=> b!6598128 (= e!3992558 (nullableZipper!2208 z!1189))))

(declare-fun b!6598129 () Bool)

(assert (=> b!6598129 (= e!3992558 (matchZipper!2475 (derivationStepZipper!2429 z!1189 (head!13377 s!2326)) (tail!12462 s!2326)))))

(assert (= (and d!2069831 c!1215229) b!6598128))

(assert (= (and d!2069831 (not c!1215229)) b!6598129))

(assert (=> d!2069831 m!7374888))

(declare-fun m!7374942 () Bool)

(assert (=> b!6598128 m!7374942))

(assert (=> b!6598129 m!7374876))

(assert (=> b!6598129 m!7374876))

(declare-fun m!7374944 () Bool)

(assert (=> b!6598129 m!7374944))

(assert (=> b!6598129 m!7374880))

(assert (=> b!6598129 m!7374944))

(assert (=> b!6598129 m!7374880))

(declare-fun m!7374946 () Bool)

(assert (=> b!6598129 m!7374946))

(assert (=> b!6597598 d!2069831))

(declare-fun d!2069833 () Bool)

(declare-fun lt!2412706 () Regex!16463)

(assert (=> d!2069833 (validRegex!8199 lt!2412706)))

(assert (=> d!2069833 (= lt!2412706 (generalisedUnion!2307 (unfocusZipperList!1884 zl!343)))))

(assert (=> d!2069833 (= (unfocusZipper!2205 zl!343) lt!2412706)))

(declare-fun bs!1691913 () Bool)

(assert (= bs!1691913 d!2069833))

(declare-fun m!7374960 () Bool)

(assert (=> bs!1691913 m!7374960))

(assert (=> bs!1691913 m!7374578))

(assert (=> bs!1691913 m!7374578))

(assert (=> bs!1691913 m!7374580))

(assert (=> b!6597614 d!2069833))

(declare-fun b!6598187 () Bool)

(declare-fun e!3992597 () Bool)

(declare-fun call!576942 () Bool)

(assert (=> b!6598187 (= e!3992597 call!576942)))

(declare-fun b!6598188 () Bool)

(declare-fun res!2705479 () Bool)

(declare-fun e!3992594 () Bool)

(assert (=> b!6598188 (=> res!2705479 e!3992594)))

(assert (=> b!6598188 (= res!2705479 (not ((_ is Concat!25308) lt!2412632)))))

(declare-fun e!3992596 () Bool)

(assert (=> b!6598188 (= e!3992596 e!3992594)))

(declare-fun b!6598189 () Bool)

(declare-fun res!2705477 () Bool)

(declare-fun e!3992595 () Bool)

(assert (=> b!6598189 (=> (not res!2705477) (not e!3992595))))

(declare-fun call!576944 () Bool)

(assert (=> b!6598189 (= res!2705477 call!576944)))

(assert (=> b!6598189 (= e!3992596 e!3992595)))

(declare-fun d!2069839 () Bool)

(declare-fun res!2705481 () Bool)

(declare-fun e!3992598 () Bool)

(assert (=> d!2069839 (=> res!2705481 e!3992598)))

(assert (=> d!2069839 (= res!2705481 ((_ is ElementMatch!16463) lt!2412632))))

(assert (=> d!2069839 (= (validRegex!8199 lt!2412632) e!3992598)))

(declare-fun bm!576937 () Bool)

(declare-fun c!1215245 () Bool)

(assert (=> bm!576937 (= call!576944 (validRegex!8199 (ite c!1215245 (regOne!33439 lt!2412632) (regOne!33438 lt!2412632))))))

(declare-fun b!6598190 () Bool)

(declare-fun e!3992599 () Bool)

(assert (=> b!6598190 (= e!3992599 e!3992596)))

(assert (=> b!6598190 (= c!1215245 ((_ is Union!16463) lt!2412632))))

(declare-fun b!6598191 () Bool)

(declare-fun e!3992600 () Bool)

(declare-fun call!576943 () Bool)

(assert (=> b!6598191 (= e!3992600 call!576943)))

(declare-fun b!6598192 () Bool)

(assert (=> b!6598192 (= e!3992595 call!576942)))

(declare-fun b!6598193 () Bool)

(assert (=> b!6598193 (= e!3992594 e!3992597)))

(declare-fun res!2705480 () Bool)

(assert (=> b!6598193 (=> (not res!2705480) (not e!3992597))))

(assert (=> b!6598193 (= res!2705480 call!576944)))

(declare-fun b!6598194 () Bool)

(assert (=> b!6598194 (= e!3992598 e!3992599)))

(declare-fun c!1215244 () Bool)

(assert (=> b!6598194 (= c!1215244 ((_ is Star!16463) lt!2412632))))

(declare-fun bm!576938 () Bool)

(assert (=> bm!576938 (= call!576942 call!576943)))

(declare-fun b!6598195 () Bool)

(assert (=> b!6598195 (= e!3992599 e!3992600)))

(declare-fun res!2705478 () Bool)

(assert (=> b!6598195 (= res!2705478 (not (nullable!6456 (reg!16792 lt!2412632))))))

(assert (=> b!6598195 (=> (not res!2705478) (not e!3992600))))

(declare-fun bm!576939 () Bool)

(assert (=> bm!576939 (= call!576943 (validRegex!8199 (ite c!1215244 (reg!16792 lt!2412632) (ite c!1215245 (regTwo!33439 lt!2412632) (regTwo!33438 lt!2412632)))))))

(assert (= (and d!2069839 (not res!2705481)) b!6598194))

(assert (= (and b!6598194 c!1215244) b!6598195))

(assert (= (and b!6598194 (not c!1215244)) b!6598190))

(assert (= (and b!6598195 res!2705478) b!6598191))

(assert (= (and b!6598190 c!1215245) b!6598189))

(assert (= (and b!6598190 (not c!1215245)) b!6598188))

(assert (= (and b!6598189 res!2705477) b!6598192))

(assert (= (and b!6598188 (not res!2705479)) b!6598193))

(assert (= (and b!6598193 res!2705480) b!6598187))

(assert (= (or b!6598192 b!6598187) bm!576938))

(assert (= (or b!6598189 b!6598193) bm!576937))

(assert (= (or b!6598191 bm!576938) bm!576939))

(declare-fun m!7374972 () Bool)

(assert (=> bm!576937 m!7374972))

(declare-fun m!7374974 () Bool)

(assert (=> b!6598195 m!7374974))

(declare-fun m!7374976 () Bool)

(assert (=> bm!576939 m!7374976))

(assert (=> b!6597595 d!2069839))

(declare-fun bs!1691926 () Bool)

(declare-fun b!6598196 () Bool)

(assert (= bs!1691926 (and b!6598196 b!6597586)))

(declare-fun lambda!367689 () Int)

(assert (=> bs!1691926 (not (= lambda!367689 lambda!367633))))

(assert (=> bs!1691926 (not (= lambda!367689 lambda!367634))))

(declare-fun bs!1691927 () Bool)

(assert (= bs!1691927 (and b!6598196 b!6598102)))

(assert (=> bs!1691927 (= (and (= (reg!16792 r!7292) (reg!16792 lt!2412615)) (= r!7292 lt!2412615)) (= lambda!367689 lambda!367683))))

(declare-fun bs!1691928 () Bool)

(assert (= bs!1691928 (and b!6598196 b!6598104)))

(assert (=> bs!1691928 (not (= lambda!367689 lambda!367684))))

(assert (=> b!6598196 true))

(assert (=> b!6598196 true))

(declare-fun bs!1691930 () Bool)

(declare-fun b!6598198 () Bool)

(assert (= bs!1691930 (and b!6598198 b!6598104)))

(declare-fun lambda!367690 () Int)

(assert (=> bs!1691930 (= (and (= (regOne!33438 r!7292) (regOne!33438 lt!2412615)) (= (regTwo!33438 r!7292) (regTwo!33438 lt!2412615))) (= lambda!367690 lambda!367684))))

(declare-fun bs!1691931 () Bool)

(assert (= bs!1691931 (and b!6598198 b!6597586)))

(assert (=> bs!1691931 (not (= lambda!367690 lambda!367633))))

(declare-fun bs!1691932 () Bool)

(assert (= bs!1691932 (and b!6598198 b!6598196)))

(assert (=> bs!1691932 (not (= lambda!367690 lambda!367689))))

(declare-fun bs!1691933 () Bool)

(assert (= bs!1691933 (and b!6598198 b!6598102)))

(assert (=> bs!1691933 (not (= lambda!367690 lambda!367683))))

(assert (=> bs!1691931 (= lambda!367690 lambda!367634)))

(assert (=> b!6598198 true))

(assert (=> b!6598198 true))

(declare-fun e!3992601 () Bool)

(declare-fun call!576945 () Bool)

(assert (=> b!6598196 (= e!3992601 call!576945)))

(declare-fun b!6598197 () Bool)

(declare-fun c!1215249 () Bool)

(assert (=> b!6598197 (= c!1215249 ((_ is ElementMatch!16463) r!7292))))

(declare-fun e!3992606 () Bool)

(declare-fun e!3992603 () Bool)

(assert (=> b!6598197 (= e!3992606 e!3992603)))

(declare-fun e!3992605 () Bool)

(assert (=> b!6598198 (= e!3992605 call!576945)))

(declare-fun d!2069845 () Bool)

(declare-fun c!1215246 () Bool)

(assert (=> d!2069845 (= c!1215246 ((_ is EmptyExpr!16463) r!7292))))

(declare-fun e!3992604 () Bool)

(assert (=> d!2069845 (= (matchRSpec!3564 r!7292 s!2326) e!3992604)))

(declare-fun bm!576940 () Bool)

(declare-fun c!1215247 () Bool)

(assert (=> bm!576940 (= call!576945 (Exists!3533 (ite c!1215247 lambda!367689 lambda!367690)))))

(declare-fun b!6598199 () Bool)

(declare-fun c!1215248 () Bool)

(assert (=> b!6598199 (= c!1215248 ((_ is Union!16463) r!7292))))

(declare-fun e!3992607 () Bool)

(assert (=> b!6598199 (= e!3992603 e!3992607)))

(declare-fun b!6598200 () Bool)

(declare-fun e!3992602 () Bool)

(assert (=> b!6598200 (= e!3992602 (matchRSpec!3564 (regTwo!33439 r!7292) s!2326))))

(declare-fun b!6598201 () Bool)

(declare-fun res!2705484 () Bool)

(assert (=> b!6598201 (=> res!2705484 e!3992601)))

(declare-fun call!576946 () Bool)

(assert (=> b!6598201 (= res!2705484 call!576946)))

(assert (=> b!6598201 (= e!3992605 e!3992601)))

(declare-fun bm!576941 () Bool)

(assert (=> bm!576941 (= call!576946 (isEmpty!37833 s!2326))))

(declare-fun b!6598202 () Bool)

(assert (=> b!6598202 (= e!3992607 e!3992605)))

(assert (=> b!6598202 (= c!1215247 ((_ is Star!16463) r!7292))))

(declare-fun b!6598203 () Bool)

(assert (=> b!6598203 (= e!3992604 e!3992606)))

(declare-fun res!2705482 () Bool)

(assert (=> b!6598203 (= res!2705482 (not ((_ is EmptyLang!16463) r!7292)))))

(assert (=> b!6598203 (=> (not res!2705482) (not e!3992606))))

(declare-fun b!6598204 () Bool)

(assert (=> b!6598204 (= e!3992603 (= s!2326 (Cons!65565 (c!1215062 r!7292) Nil!65565)))))

(declare-fun b!6598205 () Bool)

(assert (=> b!6598205 (= e!3992604 call!576946)))

(declare-fun b!6598206 () Bool)

(assert (=> b!6598206 (= e!3992607 e!3992602)))

(declare-fun res!2705483 () Bool)

(assert (=> b!6598206 (= res!2705483 (matchRSpec!3564 (regOne!33439 r!7292) s!2326))))

(assert (=> b!6598206 (=> res!2705483 e!3992602)))

(assert (= (and d!2069845 c!1215246) b!6598205))

(assert (= (and d!2069845 (not c!1215246)) b!6598203))

(assert (= (and b!6598203 res!2705482) b!6598197))

(assert (= (and b!6598197 c!1215249) b!6598204))

(assert (= (and b!6598197 (not c!1215249)) b!6598199))

(assert (= (and b!6598199 c!1215248) b!6598206))

(assert (= (and b!6598199 (not c!1215248)) b!6598202))

(assert (= (and b!6598206 (not res!2705483)) b!6598200))

(assert (= (and b!6598202 c!1215247) b!6598201))

(assert (= (and b!6598202 (not c!1215247)) b!6598198))

(assert (= (and b!6598201 (not res!2705484)) b!6598196))

(assert (= (or b!6598196 b!6598198) bm!576940))

(assert (= (or b!6598205 b!6598201) bm!576941))

(declare-fun m!7374992 () Bool)

(assert (=> bm!576940 m!7374992))

(declare-fun m!7374994 () Bool)

(assert (=> b!6598200 m!7374994))

(assert (=> bm!576941 m!7374888))

(declare-fun m!7374996 () Bool)

(assert (=> b!6598206 m!7374996))

(assert (=> b!6597594 d!2069845))

(declare-fun b!6598216 () Bool)

(declare-fun res!2705490 () Bool)

(declare-fun e!3992619 () Bool)

(assert (=> b!6598216 (=> res!2705490 e!3992619)))

(declare-fun e!3992618 () Bool)

(assert (=> b!6598216 (= res!2705490 e!3992618)))

(declare-fun res!2705492 () Bool)

(assert (=> b!6598216 (=> (not res!2705492) (not e!3992618))))

(declare-fun lt!2412712 () Bool)

(assert (=> b!6598216 (= res!2705492 lt!2412712)))

(declare-fun b!6598217 () Bool)

(declare-fun e!3992620 () Bool)

(assert (=> b!6598217 (= e!3992619 e!3992620)))

(declare-fun res!2705497 () Bool)

(assert (=> b!6598217 (=> (not res!2705497) (not e!3992620))))

(assert (=> b!6598217 (= res!2705497 (not lt!2412712))))

(declare-fun b!6598218 () Bool)

(declare-fun res!2705494 () Bool)

(declare-fun e!3992616 () Bool)

(assert (=> b!6598218 (=> res!2705494 e!3992616)))

(assert (=> b!6598218 (= res!2705494 (not (isEmpty!37833 (tail!12462 s!2326))))))

(declare-fun b!6598219 () Bool)

(assert (=> b!6598219 (= e!3992618 (= (head!13377 s!2326) (c!1215062 r!7292)))))

(declare-fun b!6598220 () Bool)

(declare-fun res!2705491 () Bool)

(assert (=> b!6598220 (=> (not res!2705491) (not e!3992618))))

(declare-fun call!576950 () Bool)

(assert (=> b!6598220 (= res!2705491 (not call!576950))))

(declare-fun b!6598221 () Bool)

(assert (=> b!6598221 (= e!3992616 (not (= (head!13377 s!2326) (c!1215062 r!7292))))))

(declare-fun b!6598222 () Bool)

(declare-fun e!3992615 () Bool)

(assert (=> b!6598222 (= e!3992615 (= lt!2412712 call!576950))))

(declare-fun b!6598224 () Bool)

(declare-fun e!3992621 () Bool)

(assert (=> b!6598224 (= e!3992615 e!3992621)))

(declare-fun c!1215252 () Bool)

(assert (=> b!6598224 (= c!1215252 ((_ is EmptyLang!16463) r!7292))))

(declare-fun b!6598225 () Bool)

(assert (=> b!6598225 (= e!3992620 e!3992616)))

(declare-fun res!2705493 () Bool)

(assert (=> b!6598225 (=> res!2705493 e!3992616)))

(assert (=> b!6598225 (= res!2705493 call!576950)))

(declare-fun bm!576945 () Bool)

(assert (=> bm!576945 (= call!576950 (isEmpty!37833 s!2326))))

(declare-fun b!6598226 () Bool)

(assert (=> b!6598226 (= e!3992621 (not lt!2412712))))

(declare-fun b!6598227 () Bool)

(declare-fun res!2705496 () Bool)

(assert (=> b!6598227 (=> res!2705496 e!3992619)))

(assert (=> b!6598227 (= res!2705496 (not ((_ is ElementMatch!16463) r!7292)))))

(assert (=> b!6598227 (= e!3992621 e!3992619)))

(declare-fun b!6598228 () Bool)

(declare-fun res!2705495 () Bool)

(assert (=> b!6598228 (=> (not res!2705495) (not e!3992618))))

(assert (=> b!6598228 (= res!2705495 (isEmpty!37833 (tail!12462 s!2326)))))

(declare-fun b!6598229 () Bool)

(declare-fun e!3992617 () Bool)

(assert (=> b!6598229 (= e!3992617 (nullable!6456 r!7292))))

(declare-fun d!2069853 () Bool)

(assert (=> d!2069853 e!3992615))

(declare-fun c!1215254 () Bool)

(assert (=> d!2069853 (= c!1215254 ((_ is EmptyExpr!16463) r!7292))))

(assert (=> d!2069853 (= lt!2412712 e!3992617)))

(declare-fun c!1215253 () Bool)

(assert (=> d!2069853 (= c!1215253 (isEmpty!37833 s!2326))))

(assert (=> d!2069853 (validRegex!8199 r!7292)))

(assert (=> d!2069853 (= (matchR!8646 r!7292 s!2326) lt!2412712)))

(declare-fun b!6598223 () Bool)

(assert (=> b!6598223 (= e!3992617 (matchR!8646 (derivativeStep!5147 r!7292 (head!13377 s!2326)) (tail!12462 s!2326)))))

(assert (= (and d!2069853 c!1215253) b!6598229))

(assert (= (and d!2069853 (not c!1215253)) b!6598223))

(assert (= (and d!2069853 c!1215254) b!6598222))

(assert (= (and d!2069853 (not c!1215254)) b!6598224))

(assert (= (and b!6598224 c!1215252) b!6598226))

(assert (= (and b!6598224 (not c!1215252)) b!6598227))

(assert (= (and b!6598227 (not res!2705496)) b!6598216))

(assert (= (and b!6598216 res!2705492) b!6598220))

(assert (= (and b!6598220 res!2705491) b!6598228))

(assert (= (and b!6598228 res!2705495) b!6598219))

(assert (= (and b!6598216 (not res!2705490)) b!6598217))

(assert (= (and b!6598217 res!2705497) b!6598225))

(assert (= (and b!6598225 (not res!2705493)) b!6598218))

(assert (= (and b!6598218 (not res!2705494)) b!6598221))

(assert (= (or b!6598222 b!6598225 b!6598220) bm!576945))

(assert (=> b!6598223 m!7374876))

(assert (=> b!6598223 m!7374876))

(declare-fun m!7374998 () Bool)

(assert (=> b!6598223 m!7374998))

(assert (=> b!6598223 m!7374880))

(assert (=> b!6598223 m!7374998))

(assert (=> b!6598223 m!7374880))

(declare-fun m!7375000 () Bool)

(assert (=> b!6598223 m!7375000))

(assert (=> b!6598218 m!7374880))

(assert (=> b!6598218 m!7374880))

(assert (=> b!6598218 m!7374884))

(declare-fun m!7375002 () Bool)

(assert (=> b!6598229 m!7375002))

(assert (=> d!2069853 m!7374888))

(assert (=> d!2069853 m!7374552))

(assert (=> b!6598221 m!7374876))

(assert (=> bm!576945 m!7374888))

(assert (=> b!6598219 m!7374876))

(assert (=> b!6598228 m!7374880))

(assert (=> b!6598228 m!7374880))

(assert (=> b!6598228 m!7374884))

(assert (=> b!6597594 d!2069853))

(declare-fun d!2069855 () Bool)

(assert (=> d!2069855 (= (matchR!8646 r!7292 s!2326) (matchRSpec!3564 r!7292 s!2326))))

(declare-fun lt!2412715 () Unit!159187)

(assert (=> d!2069855 (= lt!2412715 (choose!49235 r!7292 s!2326))))

(assert (=> d!2069855 (validRegex!8199 r!7292)))

(assert (=> d!2069855 (= (mainMatchTheorem!3564 r!7292 s!2326) lt!2412715)))

(declare-fun bs!1691934 () Bool)

(assert (= bs!1691934 d!2069855))

(assert (=> bs!1691934 m!7374614))

(assert (=> bs!1691934 m!7374612))

(declare-fun m!7375004 () Bool)

(assert (=> bs!1691934 m!7375004))

(assert (=> bs!1691934 m!7374552))

(assert (=> b!6597594 d!2069855))

(declare-fun d!2069857 () Bool)

(declare-fun e!3992627 () Bool)

(assert (=> d!2069857 e!3992627))

(declare-fun res!2705503 () Bool)

(assert (=> d!2069857 (=> (not res!2705503) (not e!3992627))))

(declare-fun lt!2412720 () List!65690)

(declare-fun noDuplicate!2267 (List!65690) Bool)

(assert (=> d!2069857 (= res!2705503 (noDuplicate!2267 lt!2412720))))

(declare-fun choose!49236 ((InoxSet Context!11694)) List!65690)

(assert (=> d!2069857 (= lt!2412720 (choose!49236 z!1189))))

(assert (=> d!2069857 (= (toList!10247 z!1189) lt!2412720)))

(declare-fun b!6598235 () Bool)

(declare-fun content!12639 (List!65690) (InoxSet Context!11694))

(assert (=> b!6598235 (= e!3992627 (= (content!12639 lt!2412720) z!1189))))

(assert (= (and d!2069857 res!2705503) b!6598235))

(declare-fun m!7375018 () Bool)

(assert (=> d!2069857 m!7375018))

(declare-fun m!7375020 () Bool)

(assert (=> d!2069857 m!7375020))

(declare-fun m!7375022 () Bool)

(assert (=> b!6598235 m!7375022))

(assert (=> b!6597622 d!2069857))

(assert (=> b!6597603 d!2069787))

(declare-fun b!6598236 () Bool)

(declare-fun res!2705504 () Bool)

(declare-fun e!3992632 () Bool)

(assert (=> b!6598236 (=> res!2705504 e!3992632)))

(declare-fun e!3992631 () Bool)

(assert (=> b!6598236 (= res!2705504 e!3992631)))

(declare-fun res!2705506 () Bool)

(assert (=> b!6598236 (=> (not res!2705506) (not e!3992631))))

(declare-fun lt!2412721 () Bool)

(assert (=> b!6598236 (= res!2705506 lt!2412721)))

(declare-fun b!6598237 () Bool)

(declare-fun e!3992633 () Bool)

(assert (=> b!6598237 (= e!3992632 e!3992633)))

(declare-fun res!2705511 () Bool)

(assert (=> b!6598237 (=> (not res!2705511) (not e!3992633))))

(assert (=> b!6598237 (= res!2705511 (not lt!2412721))))

(declare-fun b!6598238 () Bool)

(declare-fun res!2705508 () Bool)

(declare-fun e!3992629 () Bool)

(assert (=> b!6598238 (=> res!2705508 e!3992629)))

(assert (=> b!6598238 (= res!2705508 (not (isEmpty!37833 (tail!12462 s!2326))))))

(declare-fun b!6598239 () Bool)

(assert (=> b!6598239 (= e!3992631 (= (head!13377 s!2326) (c!1215062 (regTwo!33438 r!7292))))))

(declare-fun b!6598240 () Bool)

(declare-fun res!2705505 () Bool)

(assert (=> b!6598240 (=> (not res!2705505) (not e!3992631))))

(declare-fun call!576951 () Bool)

(assert (=> b!6598240 (= res!2705505 (not call!576951))))

(declare-fun b!6598241 () Bool)

(assert (=> b!6598241 (= e!3992629 (not (= (head!13377 s!2326) (c!1215062 (regTwo!33438 r!7292)))))))

(declare-fun b!6598242 () Bool)

(declare-fun e!3992628 () Bool)

(assert (=> b!6598242 (= e!3992628 (= lt!2412721 call!576951))))

(declare-fun b!6598244 () Bool)

(declare-fun e!3992634 () Bool)

(assert (=> b!6598244 (= e!3992628 e!3992634)))

(declare-fun c!1215255 () Bool)

(assert (=> b!6598244 (= c!1215255 ((_ is EmptyLang!16463) (regTwo!33438 r!7292)))))

(declare-fun b!6598245 () Bool)

(assert (=> b!6598245 (= e!3992633 e!3992629)))

(declare-fun res!2705507 () Bool)

(assert (=> b!6598245 (=> res!2705507 e!3992629)))

(assert (=> b!6598245 (= res!2705507 call!576951)))

(declare-fun bm!576946 () Bool)

(assert (=> bm!576946 (= call!576951 (isEmpty!37833 s!2326))))

(declare-fun b!6598246 () Bool)

(assert (=> b!6598246 (= e!3992634 (not lt!2412721))))

(declare-fun b!6598247 () Bool)

(declare-fun res!2705510 () Bool)

(assert (=> b!6598247 (=> res!2705510 e!3992632)))

(assert (=> b!6598247 (= res!2705510 (not ((_ is ElementMatch!16463) (regTwo!33438 r!7292))))))

(assert (=> b!6598247 (= e!3992634 e!3992632)))

(declare-fun b!6598248 () Bool)

(declare-fun res!2705509 () Bool)

(assert (=> b!6598248 (=> (not res!2705509) (not e!3992631))))

(assert (=> b!6598248 (= res!2705509 (isEmpty!37833 (tail!12462 s!2326)))))

(declare-fun b!6598249 () Bool)

(declare-fun e!3992630 () Bool)

(assert (=> b!6598249 (= e!3992630 (nullable!6456 (regTwo!33438 r!7292)))))

(declare-fun d!2069863 () Bool)

(assert (=> d!2069863 e!3992628))

(declare-fun c!1215257 () Bool)

(assert (=> d!2069863 (= c!1215257 ((_ is EmptyExpr!16463) (regTwo!33438 r!7292)))))

(assert (=> d!2069863 (= lt!2412721 e!3992630)))

(declare-fun c!1215256 () Bool)

(assert (=> d!2069863 (= c!1215256 (isEmpty!37833 s!2326))))

(assert (=> d!2069863 (validRegex!8199 (regTwo!33438 r!7292))))

(assert (=> d!2069863 (= (matchR!8646 (regTwo!33438 r!7292) s!2326) lt!2412721)))

(declare-fun b!6598243 () Bool)

(assert (=> b!6598243 (= e!3992630 (matchR!8646 (derivativeStep!5147 (regTwo!33438 r!7292) (head!13377 s!2326)) (tail!12462 s!2326)))))

(assert (= (and d!2069863 c!1215256) b!6598249))

(assert (= (and d!2069863 (not c!1215256)) b!6598243))

(assert (= (and d!2069863 c!1215257) b!6598242))

(assert (= (and d!2069863 (not c!1215257)) b!6598244))

(assert (= (and b!6598244 c!1215255) b!6598246))

(assert (= (and b!6598244 (not c!1215255)) b!6598247))

(assert (= (and b!6598247 (not res!2705510)) b!6598236))

(assert (= (and b!6598236 res!2705506) b!6598240))

(assert (= (and b!6598240 res!2705505) b!6598248))

(assert (= (and b!6598248 res!2705509) b!6598239))

(assert (= (and b!6598236 (not res!2705504)) b!6598237))

(assert (= (and b!6598237 res!2705511) b!6598245))

(assert (= (and b!6598245 (not res!2705507)) b!6598238))

(assert (= (and b!6598238 (not res!2705508)) b!6598241))

(assert (= (or b!6598242 b!6598245 b!6598240) bm!576946))

(assert (=> b!6598243 m!7374876))

(assert (=> b!6598243 m!7374876))

(declare-fun m!7375024 () Bool)

(assert (=> b!6598243 m!7375024))

(assert (=> b!6598243 m!7374880))

(assert (=> b!6598243 m!7375024))

(assert (=> b!6598243 m!7374880))

(declare-fun m!7375026 () Bool)

(assert (=> b!6598243 m!7375026))

(assert (=> b!6598238 m!7374880))

(assert (=> b!6598238 m!7374880))

(assert (=> b!6598238 m!7374884))

(declare-fun m!7375028 () Bool)

(assert (=> b!6598249 m!7375028))

(assert (=> d!2069863 m!7374888))

(declare-fun m!7375030 () Bool)

(assert (=> d!2069863 m!7375030))

(assert (=> b!6598241 m!7374876))

(assert (=> bm!576946 m!7374888))

(assert (=> b!6598239 m!7374876))

(assert (=> b!6598248 m!7374880))

(assert (=> b!6598248 m!7374880))

(assert (=> b!6598248 m!7374884))

(assert (=> b!6597602 d!2069863))

(declare-fun b!6598252 () Bool)

(declare-fun res!2705512 () Bool)

(declare-fun e!3992639 () Bool)

(assert (=> b!6598252 (=> res!2705512 e!3992639)))

(declare-fun e!3992638 () Bool)

(assert (=> b!6598252 (= res!2705512 e!3992638)))

(declare-fun res!2705514 () Bool)

(assert (=> b!6598252 (=> (not res!2705514) (not e!3992638))))

(declare-fun lt!2412724 () Bool)

(assert (=> b!6598252 (= res!2705514 lt!2412724)))

(declare-fun b!6598253 () Bool)

(declare-fun e!3992642 () Bool)

(assert (=> b!6598253 (= e!3992639 e!3992642)))

(declare-fun res!2705521 () Bool)

(assert (=> b!6598253 (=> (not res!2705521) (not e!3992642))))

(assert (=> b!6598253 (= res!2705521 (not lt!2412724))))

(declare-fun b!6598254 () Bool)

(declare-fun res!2705516 () Bool)

(declare-fun e!3992636 () Bool)

(assert (=> b!6598254 (=> res!2705516 e!3992636)))

(assert (=> b!6598254 (= res!2705516 (not (isEmpty!37833 (tail!12462 s!2326))))))

(declare-fun b!6598255 () Bool)

(assert (=> b!6598255 (= e!3992638 (= (head!13377 s!2326) (c!1215062 lt!2412611)))))

(declare-fun b!6598256 () Bool)

(declare-fun res!2705513 () Bool)

(assert (=> b!6598256 (=> (not res!2705513) (not e!3992638))))

(declare-fun call!576952 () Bool)

(assert (=> b!6598256 (= res!2705513 (not call!576952))))

(declare-fun b!6598257 () Bool)

(assert (=> b!6598257 (= e!3992636 (not (= (head!13377 s!2326) (c!1215062 lt!2412611))))))

(declare-fun b!6598258 () Bool)

(declare-fun e!3992635 () Bool)

(assert (=> b!6598258 (= e!3992635 (= lt!2412724 call!576952))))

(declare-fun b!6598260 () Bool)

(declare-fun e!3992643 () Bool)

(assert (=> b!6598260 (= e!3992635 e!3992643)))

(declare-fun c!1215258 () Bool)

(assert (=> b!6598260 (= c!1215258 ((_ is EmptyLang!16463) lt!2412611))))

(declare-fun b!6598261 () Bool)

(assert (=> b!6598261 (= e!3992642 e!3992636)))

(declare-fun res!2705515 () Bool)

(assert (=> b!6598261 (=> res!2705515 e!3992636)))

(assert (=> b!6598261 (= res!2705515 call!576952)))

(declare-fun bm!576947 () Bool)

(assert (=> bm!576947 (= call!576952 (isEmpty!37833 s!2326))))

(declare-fun b!6598262 () Bool)

(assert (=> b!6598262 (= e!3992643 (not lt!2412724))))

(declare-fun b!6598263 () Bool)

(declare-fun res!2705518 () Bool)

(assert (=> b!6598263 (=> res!2705518 e!3992639)))

(assert (=> b!6598263 (= res!2705518 (not ((_ is ElementMatch!16463) lt!2412611)))))

(assert (=> b!6598263 (= e!3992643 e!3992639)))

(declare-fun b!6598264 () Bool)

(declare-fun res!2705517 () Bool)

(assert (=> b!6598264 (=> (not res!2705517) (not e!3992638))))

(assert (=> b!6598264 (= res!2705517 (isEmpty!37833 (tail!12462 s!2326)))))

(declare-fun b!6598265 () Bool)

(declare-fun e!3992637 () Bool)

(assert (=> b!6598265 (= e!3992637 (nullable!6456 lt!2412611))))

(declare-fun d!2069865 () Bool)

(assert (=> d!2069865 e!3992635))

(declare-fun c!1215260 () Bool)

(assert (=> d!2069865 (= c!1215260 ((_ is EmptyExpr!16463) lt!2412611))))

(assert (=> d!2069865 (= lt!2412724 e!3992637)))

(declare-fun c!1215259 () Bool)

(assert (=> d!2069865 (= c!1215259 (isEmpty!37833 s!2326))))

(assert (=> d!2069865 (validRegex!8199 lt!2412611)))

(assert (=> d!2069865 (= (matchR!8646 lt!2412611 s!2326) lt!2412724)))

(declare-fun b!6598259 () Bool)

(assert (=> b!6598259 (= e!3992637 (matchR!8646 (derivativeStep!5147 lt!2412611 (head!13377 s!2326)) (tail!12462 s!2326)))))

(assert (= (and d!2069865 c!1215259) b!6598265))

(assert (= (and d!2069865 (not c!1215259)) b!6598259))

(assert (= (and d!2069865 c!1215260) b!6598258))

(assert (= (and d!2069865 (not c!1215260)) b!6598260))

(assert (= (and b!6598260 c!1215258) b!6598262))

(assert (= (and b!6598260 (not c!1215258)) b!6598263))

(assert (= (and b!6598263 (not res!2705518)) b!6598252))

(assert (= (and b!6598252 res!2705514) b!6598256))

(assert (= (and b!6598256 res!2705513) b!6598264))

(assert (= (and b!6598264 res!2705517) b!6598255))

(assert (= (and b!6598252 (not res!2705512)) b!6598253))

(assert (= (and b!6598253 res!2705521) b!6598261))

(assert (= (and b!6598261 (not res!2705515)) b!6598254))

(assert (= (and b!6598254 (not res!2705516)) b!6598257))

(assert (= (or b!6598258 b!6598261 b!6598256) bm!576947))

(assert (=> b!6598259 m!7374876))

(assert (=> b!6598259 m!7374876))

(declare-fun m!7375032 () Bool)

(assert (=> b!6598259 m!7375032))

(assert (=> b!6598259 m!7374880))

(assert (=> b!6598259 m!7375032))

(assert (=> b!6598259 m!7374880))

(declare-fun m!7375034 () Bool)

(assert (=> b!6598259 m!7375034))

(assert (=> b!6598254 m!7374880))

(assert (=> b!6598254 m!7374880))

(assert (=> b!6598254 m!7374884))

(declare-fun m!7375036 () Bool)

(assert (=> b!6598265 m!7375036))

(assert (=> d!2069865 m!7374888))

(declare-fun m!7375038 () Bool)

(assert (=> d!2069865 m!7375038))

(assert (=> b!6598257 m!7374876))

(assert (=> bm!576947 m!7374888))

(assert (=> b!6598255 m!7374876))

(assert (=> b!6598264 m!7374880))

(assert (=> b!6598264 m!7374880))

(assert (=> b!6598264 m!7374884))

(assert (=> b!6597602 d!2069865))

(declare-fun d!2069867 () Bool)

(declare-fun c!1215261 () Bool)

(assert (=> d!2069867 (= c!1215261 (isEmpty!37833 s!2326))))

(declare-fun e!3992645 () Bool)

(assert (=> d!2069867 (= (matchZipper!2475 lt!2412630 s!2326) e!3992645)))

(declare-fun b!6598267 () Bool)

(assert (=> b!6598267 (= e!3992645 (nullableZipper!2208 lt!2412630))))

(declare-fun b!6598268 () Bool)

(assert (=> b!6598268 (= e!3992645 (matchZipper!2475 (derivationStepZipper!2429 lt!2412630 (head!13377 s!2326)) (tail!12462 s!2326)))))

(assert (= (and d!2069867 c!1215261) b!6598267))

(assert (= (and d!2069867 (not c!1215261)) b!6598268))

(assert (=> d!2069867 m!7374888))

(declare-fun m!7375042 () Bool)

(assert (=> b!6598267 m!7375042))

(assert (=> b!6598268 m!7374876))

(assert (=> b!6598268 m!7374876))

(declare-fun m!7375044 () Bool)

(assert (=> b!6598268 m!7375044))

(assert (=> b!6598268 m!7374880))

(assert (=> b!6598268 m!7375044))

(assert (=> b!6598268 m!7374880))

(declare-fun m!7375046 () Bool)

(assert (=> b!6598268 m!7375046))

(assert (=> b!6597602 d!2069867))

(declare-fun d!2069871 () Bool)

(assert (=> d!2069871 (= (matchR!8646 lt!2412611 s!2326) (matchZipper!2475 lt!2412630 s!2326))))

(declare-fun lt!2412729 () Unit!159187)

(declare-fun choose!49238 ((InoxSet Context!11694) List!65690 Regex!16463 List!65689) Unit!159187)

(assert (=> d!2069871 (= lt!2412729 (choose!49238 lt!2412630 lt!2412624 lt!2412611 s!2326))))

(assert (=> d!2069871 (validRegex!8199 lt!2412611)))

(assert (=> d!2069871 (= (theoremZipperRegexEquiv!885 lt!2412630 lt!2412624 lt!2412611 s!2326) lt!2412729)))

(declare-fun bs!1691943 () Bool)

(assert (= bs!1691943 d!2069871))

(assert (=> bs!1691943 m!7374516))

(assert (=> bs!1691943 m!7374518))

(declare-fun m!7375074 () Bool)

(assert (=> bs!1691943 m!7375074))

(assert (=> bs!1691943 m!7375038))

(assert (=> b!6597602 d!2069871))

(assert (=> b!6597604 d!2069787))

(declare-fun bs!1691952 () Bool)

(declare-fun d!2069879 () Bool)

(assert (= bs!1691952 (and d!2069879 b!6597619)))

(declare-fun lambda!367695 () Int)

(assert (=> bs!1691952 (= lambda!367695 lambda!367635)))

(assert (=> d!2069879 true))

(assert (=> d!2069879 (= (derivationStepZipper!2429 lt!2412630 (h!72013 s!2326)) (flatMap!1968 lt!2412630 lambda!367695))))

(declare-fun bs!1691954 () Bool)

(assert (= bs!1691954 d!2069879))

(declare-fun m!7375084 () Bool)

(assert (=> bs!1691954 m!7375084))

(assert (=> b!6597583 d!2069879))

(declare-fun d!2069885 () Bool)

(declare-fun choose!49239 ((InoxSet Context!11694) Int) (InoxSet Context!11694))

(assert (=> d!2069885 (= (flatMap!1968 lt!2412630 lambda!367635) (choose!49239 lt!2412630 lambda!367635))))

(declare-fun bs!1691955 () Bool)

(assert (= bs!1691955 d!2069885))

(declare-fun m!7375094 () Bool)

(assert (=> bs!1691955 m!7375094))

(assert (=> b!6597583 d!2069885))

(declare-fun d!2069889 () Bool)

(declare-fun c!1215290 () Bool)

(declare-fun e!3992688 () Bool)

(assert (=> d!2069889 (= c!1215290 e!3992688)))

(declare-fun res!2705544 () Bool)

(assert (=> d!2069889 (=> (not res!2705544) (not e!3992688))))

(assert (=> d!2069889 (= res!2705544 ((_ is Cons!65564) (exprs!6347 lt!2412604)))))

(declare-fun e!3992689 () (InoxSet Context!11694))

(assert (=> d!2069889 (= (derivationStepZipperUp!1637 lt!2412604 (h!72013 s!2326)) e!3992689)))

(declare-fun b!6598342 () Bool)

(declare-fun e!3992690 () (InoxSet Context!11694))

(assert (=> b!6598342 (= e!3992690 ((as const (Array Context!11694 Bool)) false))))

(declare-fun call!576969 () (InoxSet Context!11694))

(declare-fun b!6598343 () Bool)

(assert (=> b!6598343 (= e!3992689 ((_ map or) call!576969 (derivationStepZipperUp!1637 (Context!11695 (t!379340 (exprs!6347 lt!2412604))) (h!72013 s!2326))))))

(declare-fun b!6598344 () Bool)

(assert (=> b!6598344 (= e!3992688 (nullable!6456 (h!72012 (exprs!6347 lt!2412604))))))

(declare-fun bm!576964 () Bool)

(assert (=> bm!576964 (= call!576969 (derivationStepZipperDown!1711 (h!72012 (exprs!6347 lt!2412604)) (Context!11695 (t!379340 (exprs!6347 lt!2412604))) (h!72013 s!2326)))))

(declare-fun b!6598345 () Bool)

(assert (=> b!6598345 (= e!3992689 e!3992690)))

(declare-fun c!1215289 () Bool)

(assert (=> b!6598345 (= c!1215289 ((_ is Cons!65564) (exprs!6347 lt!2412604)))))

(declare-fun b!6598346 () Bool)

(assert (=> b!6598346 (= e!3992690 call!576969)))

(assert (= (and d!2069889 res!2705544) b!6598344))

(assert (= (and d!2069889 c!1215290) b!6598343))

(assert (= (and d!2069889 (not c!1215290)) b!6598345))

(assert (= (and b!6598345 c!1215289) b!6598346))

(assert (= (and b!6598345 (not c!1215289)) b!6598342))

(assert (= (or b!6598343 b!6598346) bm!576964))

(declare-fun m!7375140 () Bool)

(assert (=> b!6598343 m!7375140))

(declare-fun m!7375142 () Bool)

(assert (=> b!6598344 m!7375142))

(declare-fun m!7375144 () Bool)

(assert (=> bm!576964 m!7375144))

(assert (=> b!6597583 d!2069889))

(declare-fun d!2069911 () Bool)

(declare-fun dynLambda!26110 (Int Context!11694) (InoxSet Context!11694))

(assert (=> d!2069911 (= (flatMap!1968 lt!2412630 lambda!367635) (dynLambda!26110 lambda!367635 lt!2412604))))

(declare-fun lt!2412737 () Unit!159187)

(declare-fun choose!49240 ((InoxSet Context!11694) Context!11694 Int) Unit!159187)

(assert (=> d!2069911 (= lt!2412737 (choose!49240 lt!2412630 lt!2412604 lambda!367635))))

(assert (=> d!2069911 (= lt!2412630 (store ((as const (Array Context!11694 Bool)) false) lt!2412604 true))))

(assert (=> d!2069911 (= (lemmaFlatMapOnSingletonSet!1494 lt!2412630 lt!2412604 lambda!367635) lt!2412737)))

(declare-fun b_lambda!249747 () Bool)

(assert (=> (not b_lambda!249747) (not d!2069911)))

(declare-fun bs!1691962 () Bool)

(assert (= bs!1691962 d!2069911))

(assert (=> bs!1691962 m!7374534))

(declare-fun m!7375148 () Bool)

(assert (=> bs!1691962 m!7375148))

(declare-fun m!7375150 () Bool)

(assert (=> bs!1691962 m!7375150))

(assert (=> bs!1691962 m!7374532))

(assert (=> b!6597583 d!2069911))

(declare-fun d!2069913 () Bool)

(assert (=> d!2069913 (= (flatMap!1968 lt!2412613 lambda!367635) (choose!49239 lt!2412613 lambda!367635))))

(declare-fun bs!1691963 () Bool)

(assert (= bs!1691963 d!2069913))

(declare-fun m!7375152 () Bool)

(assert (=> bs!1691963 m!7375152))

(assert (=> b!6597582 d!2069913))

(declare-fun d!2069915 () Bool)

(declare-fun c!1215292 () Bool)

(declare-fun e!3992706 () Bool)

(assert (=> d!2069915 (= c!1215292 e!3992706)))

(declare-fun res!2705545 () Bool)

(assert (=> d!2069915 (=> (not res!2705545) (not e!3992706))))

(assert (=> d!2069915 (= res!2705545 ((_ is Cons!65564) (exprs!6347 lt!2412609)))))

(declare-fun e!3992707 () (InoxSet Context!11694))

(assert (=> d!2069915 (= (derivationStepZipperUp!1637 lt!2412609 (h!72013 s!2326)) e!3992707)))

(declare-fun b!6598382 () Bool)

(declare-fun e!3992708 () (InoxSet Context!11694))

(assert (=> b!6598382 (= e!3992708 ((as const (Array Context!11694 Bool)) false))))

(declare-fun b!6598383 () Bool)

(declare-fun call!576970 () (InoxSet Context!11694))

(assert (=> b!6598383 (= e!3992707 ((_ map or) call!576970 (derivationStepZipperUp!1637 (Context!11695 (t!379340 (exprs!6347 lt!2412609))) (h!72013 s!2326))))))

(declare-fun b!6598384 () Bool)

(assert (=> b!6598384 (= e!3992706 (nullable!6456 (h!72012 (exprs!6347 lt!2412609))))))

(declare-fun bm!576965 () Bool)

(assert (=> bm!576965 (= call!576970 (derivationStepZipperDown!1711 (h!72012 (exprs!6347 lt!2412609)) (Context!11695 (t!379340 (exprs!6347 lt!2412609))) (h!72013 s!2326)))))

(declare-fun b!6598385 () Bool)

(assert (=> b!6598385 (= e!3992707 e!3992708)))

(declare-fun c!1215291 () Bool)

(assert (=> b!6598385 (= c!1215291 ((_ is Cons!65564) (exprs!6347 lt!2412609)))))

(declare-fun b!6598386 () Bool)

(assert (=> b!6598386 (= e!3992708 call!576970)))

(assert (= (and d!2069915 res!2705545) b!6598384))

(assert (= (and d!2069915 c!1215292) b!6598383))

(assert (= (and d!2069915 (not c!1215292)) b!6598385))

(assert (= (and b!6598385 c!1215291) b!6598386))

(assert (= (and b!6598385 (not c!1215291)) b!6598382))

(assert (= (or b!6598383 b!6598386) bm!576965))

(declare-fun m!7375154 () Bool)

(assert (=> b!6598383 m!7375154))

(declare-fun m!7375156 () Bool)

(assert (=> b!6598384 m!7375156))

(declare-fun m!7375158 () Bool)

(assert (=> bm!576965 m!7375158))

(assert (=> b!6597582 d!2069915))

(declare-fun d!2069917 () Bool)

(assert (=> d!2069917 (= (flatMap!1968 lt!2412613 lambda!367635) (dynLambda!26110 lambda!367635 lt!2412609))))

(declare-fun lt!2412738 () Unit!159187)

(assert (=> d!2069917 (= lt!2412738 (choose!49240 lt!2412613 lt!2412609 lambda!367635))))

(assert (=> d!2069917 (= lt!2412613 (store ((as const (Array Context!11694 Bool)) false) lt!2412609 true))))

(assert (=> d!2069917 (= (lemmaFlatMapOnSingletonSet!1494 lt!2412613 lt!2412609 lambda!367635) lt!2412738)))

(declare-fun b_lambda!249749 () Bool)

(assert (=> (not b_lambda!249749) (not d!2069917)))

(declare-fun bs!1691964 () Bool)

(assert (= bs!1691964 d!2069917))

(assert (=> bs!1691964 m!7374560))

(declare-fun m!7375162 () Bool)

(assert (=> bs!1691964 m!7375162))

(declare-fun m!7375164 () Bool)

(assert (=> bs!1691964 m!7375164))

(assert (=> bs!1691964 m!7374562))

(assert (=> b!6597582 d!2069917))

(declare-fun bs!1691965 () Bool)

(declare-fun d!2069919 () Bool)

(assert (= bs!1691965 (and d!2069919 b!6597619)))

(declare-fun lambda!367696 () Int)

(assert (=> bs!1691965 (= lambda!367696 lambda!367635)))

(declare-fun bs!1691966 () Bool)

(assert (= bs!1691966 (and d!2069919 d!2069879)))

(assert (=> bs!1691966 (= lambda!367696 lambda!367695)))

(assert (=> d!2069919 true))

(assert (=> d!2069919 (= (derivationStepZipper!2429 lt!2412613 (h!72013 s!2326)) (flatMap!1968 lt!2412613 lambda!367696))))

(declare-fun bs!1691967 () Bool)

(assert (= bs!1691967 d!2069919))

(declare-fun m!7375166 () Bool)

(assert (=> bs!1691967 m!7375166))

(assert (=> b!6597582 d!2069919))

(declare-fun d!2069921 () Bool)

(declare-fun c!1215293 () Bool)

(assert (=> d!2069921 (= c!1215293 (isEmpty!37833 (t!379341 s!2326)))))

(declare-fun e!3992715 () Bool)

(assert (=> d!2069921 (= (matchZipper!2475 lt!2412617 (t!379341 s!2326)) e!3992715)))

(declare-fun b!6598401 () Bool)

(assert (=> b!6598401 (= e!3992715 (nullableZipper!2208 lt!2412617))))

(declare-fun b!6598402 () Bool)

(assert (=> b!6598402 (= e!3992715 (matchZipper!2475 (derivationStepZipper!2429 lt!2412617 (head!13377 (t!379341 s!2326))) (tail!12462 (t!379341 s!2326))))))

(assert (= (and d!2069921 c!1215293) b!6598401))

(assert (= (and d!2069921 (not c!1215293)) b!6598402))

(assert (=> d!2069921 m!7374804))

(declare-fun m!7375168 () Bool)

(assert (=> b!6598401 m!7375168))

(assert (=> b!6598402 m!7374808))

(assert (=> b!6598402 m!7374808))

(declare-fun m!7375170 () Bool)

(assert (=> b!6598402 m!7375170))

(assert (=> b!6598402 m!7374812))

(assert (=> b!6598402 m!7375170))

(assert (=> b!6598402 m!7374812))

(declare-fun m!7375172 () Bool)

(assert (=> b!6598402 m!7375172))

(assert (=> b!6597623 d!2069921))

(declare-fun b!6598408 () Bool)

(declare-fun e!3992721 () Bool)

(declare-fun call!576971 () Bool)

(assert (=> b!6598408 (= e!3992721 call!576971)))

(declare-fun b!6598409 () Bool)

(declare-fun res!2705548 () Bool)

(declare-fun e!3992718 () Bool)

(assert (=> b!6598409 (=> res!2705548 e!3992718)))

(assert (=> b!6598409 (= res!2705548 (not ((_ is Concat!25308) (reg!16792 (regOne!33438 r!7292)))))))

(declare-fun e!3992720 () Bool)

(assert (=> b!6598409 (= e!3992720 e!3992718)))

(declare-fun b!6598410 () Bool)

(declare-fun res!2705546 () Bool)

(declare-fun e!3992719 () Bool)

(assert (=> b!6598410 (=> (not res!2705546) (not e!3992719))))

(declare-fun call!576973 () Bool)

(assert (=> b!6598410 (= res!2705546 call!576973)))

(assert (=> b!6598410 (= e!3992720 e!3992719)))

(declare-fun d!2069923 () Bool)

(declare-fun res!2705550 () Bool)

(declare-fun e!3992722 () Bool)

(assert (=> d!2069923 (=> res!2705550 e!3992722)))

(assert (=> d!2069923 (= res!2705550 ((_ is ElementMatch!16463) (reg!16792 (regOne!33438 r!7292))))))

(assert (=> d!2069923 (= (validRegex!8199 (reg!16792 (regOne!33438 r!7292))) e!3992722)))

(declare-fun bm!576966 () Bool)

(declare-fun c!1215295 () Bool)

(assert (=> bm!576966 (= call!576973 (validRegex!8199 (ite c!1215295 (regOne!33439 (reg!16792 (regOne!33438 r!7292))) (regOne!33438 (reg!16792 (regOne!33438 r!7292))))))))

(declare-fun b!6598411 () Bool)

(declare-fun e!3992723 () Bool)

(assert (=> b!6598411 (= e!3992723 e!3992720)))

(assert (=> b!6598411 (= c!1215295 ((_ is Union!16463) (reg!16792 (regOne!33438 r!7292))))))

(declare-fun b!6598412 () Bool)

(declare-fun e!3992724 () Bool)

(declare-fun call!576972 () Bool)

(assert (=> b!6598412 (= e!3992724 call!576972)))

(declare-fun b!6598413 () Bool)

(assert (=> b!6598413 (= e!3992719 call!576971)))

(declare-fun b!6598414 () Bool)

(assert (=> b!6598414 (= e!3992718 e!3992721)))

(declare-fun res!2705549 () Bool)

(assert (=> b!6598414 (=> (not res!2705549) (not e!3992721))))

(assert (=> b!6598414 (= res!2705549 call!576973)))

(declare-fun b!6598415 () Bool)

(assert (=> b!6598415 (= e!3992722 e!3992723)))

(declare-fun c!1215294 () Bool)

(assert (=> b!6598415 (= c!1215294 ((_ is Star!16463) (reg!16792 (regOne!33438 r!7292))))))

(declare-fun bm!576967 () Bool)

(assert (=> bm!576967 (= call!576971 call!576972)))

(declare-fun b!6598416 () Bool)

(assert (=> b!6598416 (= e!3992723 e!3992724)))

(declare-fun res!2705547 () Bool)

(assert (=> b!6598416 (= res!2705547 (not (nullable!6456 (reg!16792 (reg!16792 (regOne!33438 r!7292))))))))

(assert (=> b!6598416 (=> (not res!2705547) (not e!3992724))))

(declare-fun bm!576968 () Bool)

(assert (=> bm!576968 (= call!576972 (validRegex!8199 (ite c!1215294 (reg!16792 (reg!16792 (regOne!33438 r!7292))) (ite c!1215295 (regTwo!33439 (reg!16792 (regOne!33438 r!7292))) (regTwo!33438 (reg!16792 (regOne!33438 r!7292)))))))))

(assert (= (and d!2069923 (not res!2705550)) b!6598415))

(assert (= (and b!6598415 c!1215294) b!6598416))

(assert (= (and b!6598415 (not c!1215294)) b!6598411))

(assert (= (and b!6598416 res!2705547) b!6598412))

(assert (= (and b!6598411 c!1215295) b!6598410))

(assert (= (and b!6598411 (not c!1215295)) b!6598409))

(assert (= (and b!6598410 res!2705546) b!6598413))

(assert (= (and b!6598409 (not res!2705548)) b!6598414))

(assert (= (and b!6598414 res!2705549) b!6598408))

(assert (= (or b!6598413 b!6598408) bm!576967))

(assert (= (or b!6598410 b!6598414) bm!576966))

(assert (= (or b!6598412 bm!576967) bm!576968))

(declare-fun m!7375174 () Bool)

(assert (=> bm!576966 m!7375174))

(declare-fun m!7375176 () Bool)

(assert (=> b!6598416 m!7375176))

(declare-fun m!7375178 () Bool)

(assert (=> bm!576968 m!7375178))

(assert (=> b!6597600 d!2069923))

(declare-fun b!6598417 () Bool)

(declare-fun res!2705551 () Bool)

(declare-fun e!3992729 () Bool)

(assert (=> b!6598417 (=> res!2705551 e!3992729)))

(declare-fun e!3992728 () Bool)

(assert (=> b!6598417 (= res!2705551 e!3992728)))

(declare-fun res!2705553 () Bool)

(assert (=> b!6598417 (=> (not res!2705553) (not e!3992728))))

(declare-fun lt!2412739 () Bool)

(assert (=> b!6598417 (= res!2705553 lt!2412739)))

(declare-fun b!6598418 () Bool)

(declare-fun e!3992730 () Bool)

(assert (=> b!6598418 (= e!3992729 e!3992730)))

(declare-fun res!2705558 () Bool)

(assert (=> b!6598418 (=> (not res!2705558) (not e!3992730))))

(assert (=> b!6598418 (= res!2705558 (not lt!2412739))))

(declare-fun b!6598419 () Bool)

(declare-fun res!2705555 () Bool)

(declare-fun e!3992726 () Bool)

(assert (=> b!6598419 (=> res!2705555 e!3992726)))

(assert (=> b!6598419 (= res!2705555 (not (isEmpty!37833 (tail!12462 Nil!65565))))))

(declare-fun b!6598420 () Bool)

(assert (=> b!6598420 (= e!3992728 (= (head!13377 Nil!65565) (c!1215062 lt!2412632)))))

(declare-fun b!6598421 () Bool)

(declare-fun res!2705552 () Bool)

(assert (=> b!6598421 (=> (not res!2705552) (not e!3992728))))

(declare-fun call!576974 () Bool)

(assert (=> b!6598421 (= res!2705552 (not call!576974))))

(declare-fun b!6598422 () Bool)

(assert (=> b!6598422 (= e!3992726 (not (= (head!13377 Nil!65565) (c!1215062 lt!2412632))))))

(declare-fun b!6598423 () Bool)

(declare-fun e!3992725 () Bool)

(assert (=> b!6598423 (= e!3992725 (= lt!2412739 call!576974))))

(declare-fun b!6598425 () Bool)

(declare-fun e!3992731 () Bool)

(assert (=> b!6598425 (= e!3992725 e!3992731)))

(declare-fun c!1215296 () Bool)

(assert (=> b!6598425 (= c!1215296 ((_ is EmptyLang!16463) lt!2412632))))

(declare-fun b!6598426 () Bool)

(assert (=> b!6598426 (= e!3992730 e!3992726)))

(declare-fun res!2705554 () Bool)

(assert (=> b!6598426 (=> res!2705554 e!3992726)))

(assert (=> b!6598426 (= res!2705554 call!576974)))

(declare-fun bm!576969 () Bool)

(assert (=> bm!576969 (= call!576974 (isEmpty!37833 Nil!65565))))

(declare-fun b!6598427 () Bool)

(assert (=> b!6598427 (= e!3992731 (not lt!2412739))))

(declare-fun b!6598428 () Bool)

(declare-fun res!2705557 () Bool)

(assert (=> b!6598428 (=> res!2705557 e!3992729)))

(assert (=> b!6598428 (= res!2705557 (not ((_ is ElementMatch!16463) lt!2412632)))))

(assert (=> b!6598428 (= e!3992731 e!3992729)))

(declare-fun b!6598429 () Bool)

(declare-fun res!2705556 () Bool)

(assert (=> b!6598429 (=> (not res!2705556) (not e!3992728))))

(assert (=> b!6598429 (= res!2705556 (isEmpty!37833 (tail!12462 Nil!65565)))))

(declare-fun b!6598430 () Bool)

(declare-fun e!3992727 () Bool)

(assert (=> b!6598430 (= e!3992727 (nullable!6456 lt!2412632))))

(declare-fun d!2069933 () Bool)

(assert (=> d!2069933 e!3992725))

(declare-fun c!1215298 () Bool)

(assert (=> d!2069933 (= c!1215298 ((_ is EmptyExpr!16463) lt!2412632))))

(assert (=> d!2069933 (= lt!2412739 e!3992727)))

(declare-fun c!1215297 () Bool)

(assert (=> d!2069933 (= c!1215297 (isEmpty!37833 Nil!65565))))

(assert (=> d!2069933 (validRegex!8199 lt!2412632)))

(assert (=> d!2069933 (= (matchR!8646 lt!2412632 Nil!65565) lt!2412739)))

(declare-fun b!6598424 () Bool)

(assert (=> b!6598424 (= e!3992727 (matchR!8646 (derivativeStep!5147 lt!2412632 (head!13377 Nil!65565)) (tail!12462 Nil!65565)))))

(assert (= (and d!2069933 c!1215297) b!6598430))

(assert (= (and d!2069933 (not c!1215297)) b!6598424))

(assert (= (and d!2069933 c!1215298) b!6598423))

(assert (= (and d!2069933 (not c!1215298)) b!6598425))

(assert (= (and b!6598425 c!1215296) b!6598427))

(assert (= (and b!6598425 (not c!1215296)) b!6598428))

(assert (= (and b!6598428 (not res!2705557)) b!6598417))

(assert (= (and b!6598417 res!2705553) b!6598421))

(assert (= (and b!6598421 res!2705552) b!6598429))

(assert (= (and b!6598429 res!2705556) b!6598420))

(assert (= (and b!6598417 (not res!2705551)) b!6598418))

(assert (= (and b!6598418 res!2705558) b!6598426))

(assert (= (and b!6598426 (not res!2705554)) b!6598419))

(assert (= (and b!6598419 (not res!2705555)) b!6598422))

(assert (= (or b!6598423 b!6598426 b!6598421) bm!576969))

(declare-fun m!7375180 () Bool)

(assert (=> b!6598424 m!7375180))

(assert (=> b!6598424 m!7375180))

(declare-fun m!7375182 () Bool)

(assert (=> b!6598424 m!7375182))

(declare-fun m!7375184 () Bool)

(assert (=> b!6598424 m!7375184))

(assert (=> b!6598424 m!7375182))

(assert (=> b!6598424 m!7375184))

(declare-fun m!7375186 () Bool)

(assert (=> b!6598424 m!7375186))

(assert (=> b!6598419 m!7375184))

(assert (=> b!6598419 m!7375184))

(declare-fun m!7375188 () Bool)

(assert (=> b!6598419 m!7375188))

(declare-fun m!7375190 () Bool)

(assert (=> b!6598430 m!7375190))

(declare-fun m!7375192 () Bool)

(assert (=> d!2069933 m!7375192))

(assert (=> d!2069933 m!7374582))

(assert (=> b!6598422 m!7375180))

(assert (=> bm!576969 m!7375192))

(assert (=> b!6598420 m!7375180))

(assert (=> b!6598429 m!7375184))

(assert (=> b!6598429 m!7375184))

(assert (=> b!6598429 m!7375188))

(assert (=> b!6597600 d!2069933))

(declare-fun bs!1691973 () Bool)

(declare-fun b!6598431 () Bool)

(assert (= bs!1691973 (and b!6598431 b!6598104)))

(declare-fun lambda!367697 () Int)

(assert (=> bs!1691973 (not (= lambda!367697 lambda!367684))))

(declare-fun bs!1691974 () Bool)

(assert (= bs!1691974 (and b!6598431 b!6598198)))

(assert (=> bs!1691974 (not (= lambda!367697 lambda!367690))))

(declare-fun bs!1691975 () Bool)

(assert (= bs!1691975 (and b!6598431 b!6597586)))

(assert (=> bs!1691975 (not (= lambda!367697 lambda!367633))))

(declare-fun bs!1691976 () Bool)

(assert (= bs!1691976 (and b!6598431 b!6598196)))

(assert (=> bs!1691976 (= (and (= Nil!65565 s!2326) (= (reg!16792 lt!2412632) (reg!16792 r!7292)) (= lt!2412632 r!7292)) (= lambda!367697 lambda!367689))))

(declare-fun bs!1691977 () Bool)

(assert (= bs!1691977 (and b!6598431 b!6598102)))

(assert (=> bs!1691977 (= (and (= Nil!65565 s!2326) (= (reg!16792 lt!2412632) (reg!16792 lt!2412615)) (= lt!2412632 lt!2412615)) (= lambda!367697 lambda!367683))))

(assert (=> bs!1691975 (not (= lambda!367697 lambda!367634))))

(assert (=> b!6598431 true))

(assert (=> b!6598431 true))

(declare-fun bs!1691978 () Bool)

(declare-fun b!6598433 () Bool)

(assert (= bs!1691978 (and b!6598433 b!6598104)))

(declare-fun lambda!367698 () Int)

(assert (=> bs!1691978 (= (and (= Nil!65565 s!2326) (= (regOne!33438 lt!2412632) (regOne!33438 lt!2412615)) (= (regTwo!33438 lt!2412632) (regTwo!33438 lt!2412615))) (= lambda!367698 lambda!367684))))

(declare-fun bs!1691979 () Bool)

(assert (= bs!1691979 (and b!6598433 b!6598198)))

(assert (=> bs!1691979 (= (and (= Nil!65565 s!2326) (= (regOne!33438 lt!2412632) (regOne!33438 r!7292)) (= (regTwo!33438 lt!2412632) (regTwo!33438 r!7292))) (= lambda!367698 lambda!367690))))

(declare-fun bs!1691980 () Bool)

(assert (= bs!1691980 (and b!6598433 b!6597586)))

(assert (=> bs!1691980 (not (= lambda!367698 lambda!367633))))

(declare-fun bs!1691981 () Bool)

(assert (= bs!1691981 (and b!6598433 b!6598196)))

(assert (=> bs!1691981 (not (= lambda!367698 lambda!367689))))

(declare-fun bs!1691982 () Bool)

(assert (= bs!1691982 (and b!6598433 b!6598102)))

(assert (=> bs!1691982 (not (= lambda!367698 lambda!367683))))

(declare-fun bs!1691983 () Bool)

(assert (= bs!1691983 (and b!6598433 b!6598431)))

(assert (=> bs!1691983 (not (= lambda!367698 lambda!367697))))

(assert (=> bs!1691980 (= (and (= Nil!65565 s!2326) (= (regOne!33438 lt!2412632) (regOne!33438 r!7292)) (= (regTwo!33438 lt!2412632) (regTwo!33438 r!7292))) (= lambda!367698 lambda!367634))))

(assert (=> b!6598433 true))

(assert (=> b!6598433 true))

(declare-fun e!3992732 () Bool)

(declare-fun call!576975 () Bool)

(assert (=> b!6598431 (= e!3992732 call!576975)))

(declare-fun b!6598432 () Bool)

(declare-fun c!1215302 () Bool)

(assert (=> b!6598432 (= c!1215302 ((_ is ElementMatch!16463) lt!2412632))))

(declare-fun e!3992737 () Bool)

(declare-fun e!3992734 () Bool)

(assert (=> b!6598432 (= e!3992737 e!3992734)))

(declare-fun e!3992736 () Bool)

(assert (=> b!6598433 (= e!3992736 call!576975)))

(declare-fun d!2069937 () Bool)

(declare-fun c!1215299 () Bool)

(assert (=> d!2069937 (= c!1215299 ((_ is EmptyExpr!16463) lt!2412632))))

(declare-fun e!3992735 () Bool)

(assert (=> d!2069937 (= (matchRSpec!3564 lt!2412632 Nil!65565) e!3992735)))

(declare-fun bm!576970 () Bool)

(declare-fun c!1215300 () Bool)

(assert (=> bm!576970 (= call!576975 (Exists!3533 (ite c!1215300 lambda!367697 lambda!367698)))))

(declare-fun b!6598434 () Bool)

(declare-fun c!1215301 () Bool)

(assert (=> b!6598434 (= c!1215301 ((_ is Union!16463) lt!2412632))))

(declare-fun e!3992738 () Bool)

(assert (=> b!6598434 (= e!3992734 e!3992738)))

(declare-fun b!6598435 () Bool)

(declare-fun e!3992733 () Bool)

(assert (=> b!6598435 (= e!3992733 (matchRSpec!3564 (regTwo!33439 lt!2412632) Nil!65565))))

(declare-fun b!6598436 () Bool)

(declare-fun res!2705561 () Bool)

(assert (=> b!6598436 (=> res!2705561 e!3992732)))

(declare-fun call!576976 () Bool)

(assert (=> b!6598436 (= res!2705561 call!576976)))

(assert (=> b!6598436 (= e!3992736 e!3992732)))

(declare-fun bm!576971 () Bool)

(assert (=> bm!576971 (= call!576976 (isEmpty!37833 Nil!65565))))

(declare-fun b!6598437 () Bool)

(assert (=> b!6598437 (= e!3992738 e!3992736)))

(assert (=> b!6598437 (= c!1215300 ((_ is Star!16463) lt!2412632))))

(declare-fun b!6598438 () Bool)

(assert (=> b!6598438 (= e!3992735 e!3992737)))

(declare-fun res!2705559 () Bool)

(assert (=> b!6598438 (= res!2705559 (not ((_ is EmptyLang!16463) lt!2412632)))))

(assert (=> b!6598438 (=> (not res!2705559) (not e!3992737))))

(declare-fun b!6598439 () Bool)

(assert (=> b!6598439 (= e!3992734 (= Nil!65565 (Cons!65565 (c!1215062 lt!2412632) Nil!65565)))))

(declare-fun b!6598440 () Bool)

(assert (=> b!6598440 (= e!3992735 call!576976)))

(declare-fun b!6598441 () Bool)

(assert (=> b!6598441 (= e!3992738 e!3992733)))

(declare-fun res!2705560 () Bool)

(assert (=> b!6598441 (= res!2705560 (matchRSpec!3564 (regOne!33439 lt!2412632) Nil!65565))))

(assert (=> b!6598441 (=> res!2705560 e!3992733)))

(assert (= (and d!2069937 c!1215299) b!6598440))

(assert (= (and d!2069937 (not c!1215299)) b!6598438))

(assert (= (and b!6598438 res!2705559) b!6598432))

(assert (= (and b!6598432 c!1215302) b!6598439))

(assert (= (and b!6598432 (not c!1215302)) b!6598434))

(assert (= (and b!6598434 c!1215301) b!6598441))

(assert (= (and b!6598434 (not c!1215301)) b!6598437))

(assert (= (and b!6598441 (not res!2705560)) b!6598435))

(assert (= (and b!6598437 c!1215300) b!6598436))

(assert (= (and b!6598437 (not c!1215300)) b!6598433))

(assert (= (and b!6598436 (not res!2705561)) b!6598431))

(assert (= (or b!6598431 b!6598433) bm!576970))

(assert (= (or b!6598440 b!6598436) bm!576971))

(declare-fun m!7375194 () Bool)

(assert (=> bm!576970 m!7375194))

(declare-fun m!7375196 () Bool)

(assert (=> b!6598435 m!7375196))

(assert (=> bm!576971 m!7375192))

(declare-fun m!7375198 () Bool)

(assert (=> b!6598441 m!7375198))

(assert (=> b!6597600 d!2069937))

(declare-fun d!2069939 () Bool)

(assert (=> d!2069939 (= (matchR!8646 lt!2412632 Nil!65565) (matchRSpec!3564 lt!2412632 Nil!65565))))

(declare-fun lt!2412740 () Unit!159187)

(assert (=> d!2069939 (= lt!2412740 (choose!49235 lt!2412632 Nil!65565))))

(assert (=> d!2069939 (validRegex!8199 lt!2412632)))

(assert (=> d!2069939 (= (mainMatchTheorem!3564 lt!2412632 Nil!65565) lt!2412740)))

(declare-fun bs!1691984 () Bool)

(assert (= bs!1691984 d!2069939))

(assert (=> bs!1691984 m!7374482))

(assert (=> bs!1691984 m!7374484))

(declare-fun m!7375200 () Bool)

(assert (=> bs!1691984 m!7375200))

(assert (=> bs!1691984 m!7374582))

(assert (=> b!6597600 d!2069939))

(assert (=> b!6597619 d!2069889))

(declare-fun d!2069941 () Bool)

(declare-fun nullableFct!2382 (Regex!16463) Bool)

(assert (=> d!2069941 (= (nullable!6456 (h!72012 (exprs!6347 (h!72014 zl!343)))) (nullableFct!2382 (h!72012 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun bs!1691985 () Bool)

(assert (= bs!1691985 d!2069941))

(declare-fun m!7375202 () Bool)

(assert (=> bs!1691985 m!7375202))

(assert (=> b!6597619 d!2069941))

(declare-fun d!2069943 () Bool)

(declare-fun c!1215304 () Bool)

(declare-fun e!3992739 () Bool)

(assert (=> d!2069943 (= c!1215304 e!3992739)))

(declare-fun res!2705562 () Bool)

(assert (=> d!2069943 (=> (not res!2705562) (not e!3992739))))

(assert (=> d!2069943 (= res!2705562 ((_ is Cons!65564) (exprs!6347 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343))))))))))

(declare-fun e!3992740 () (InoxSet Context!11694))

(assert (=> d!2069943 (= (derivationStepZipperUp!1637 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343))))) (h!72013 s!2326)) e!3992740)))

(declare-fun b!6598442 () Bool)

(declare-fun e!3992741 () (InoxSet Context!11694))

(assert (=> b!6598442 (= e!3992741 ((as const (Array Context!11694 Bool)) false))))

(declare-fun b!6598443 () Bool)

(declare-fun call!576977 () (InoxSet Context!11694))

(assert (=> b!6598443 (= e!3992740 ((_ map or) call!576977 (derivationStepZipperUp!1637 (Context!11695 (t!379340 (exprs!6347 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343)))))))) (h!72013 s!2326))))))

(declare-fun b!6598444 () Bool)

(assert (=> b!6598444 (= e!3992739 (nullable!6456 (h!72012 (exprs!6347 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343)))))))))))

(declare-fun bm!576972 () Bool)

(assert (=> bm!576972 (= call!576977 (derivationStepZipperDown!1711 (h!72012 (exprs!6347 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343))))))) (Context!11695 (t!379340 (exprs!6347 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343)))))))) (h!72013 s!2326)))))

(declare-fun b!6598445 () Bool)

(assert (=> b!6598445 (= e!3992740 e!3992741)))

(declare-fun c!1215303 () Bool)

(assert (=> b!6598445 (= c!1215303 ((_ is Cons!65564) (exprs!6347 (Context!11695 (Cons!65564 (h!72012 (exprs!6347 (h!72014 zl!343))) (t!379340 (exprs!6347 (h!72014 zl!343))))))))))

(declare-fun b!6598446 () Bool)

(assert (=> b!6598446 (= e!3992741 call!576977)))

(assert (= (and d!2069943 res!2705562) b!6598444))

(assert (= (and d!2069943 c!1215304) b!6598443))

(assert (= (and d!2069943 (not c!1215304)) b!6598445))

(assert (= (and b!6598445 c!1215303) b!6598446))

(assert (= (and b!6598445 (not c!1215303)) b!6598442))

(assert (= (or b!6598443 b!6598446) bm!576972))

(declare-fun m!7375204 () Bool)

(assert (=> b!6598443 m!7375204))

(declare-fun m!7375206 () Bool)

(assert (=> b!6598444 m!7375206))

(declare-fun m!7375208 () Bool)

(assert (=> bm!576972 m!7375208))

(assert (=> b!6597619 d!2069943))

(declare-fun d!2069945 () Bool)

(assert (=> d!2069945 (= (flatMap!1968 z!1189 lambda!367635) (choose!49239 z!1189 lambda!367635))))

(declare-fun bs!1691986 () Bool)

(assert (= bs!1691986 d!2069945))

(declare-fun m!7375210 () Bool)

(assert (=> bs!1691986 m!7375210))

(assert (=> b!6597619 d!2069945))

(declare-fun d!2069947 () Bool)

(declare-fun c!1215306 () Bool)

(declare-fun e!3992742 () Bool)

(assert (=> d!2069947 (= c!1215306 e!3992742)))

(declare-fun res!2705563 () Bool)

(assert (=> d!2069947 (=> (not res!2705563) (not e!3992742))))

(assert (=> d!2069947 (= res!2705563 ((_ is Cons!65564) (exprs!6347 (h!72014 zl!343))))))

(declare-fun e!3992743 () (InoxSet Context!11694))

(assert (=> d!2069947 (= (derivationStepZipperUp!1637 (h!72014 zl!343) (h!72013 s!2326)) e!3992743)))

(declare-fun b!6598447 () Bool)

(declare-fun e!3992744 () (InoxSet Context!11694))

(assert (=> b!6598447 (= e!3992744 ((as const (Array Context!11694 Bool)) false))))

(declare-fun b!6598448 () Bool)

(declare-fun call!576978 () (InoxSet Context!11694))

(assert (=> b!6598448 (= e!3992743 ((_ map or) call!576978 (derivationStepZipperUp!1637 (Context!11695 (t!379340 (exprs!6347 (h!72014 zl!343)))) (h!72013 s!2326))))))

(declare-fun b!6598449 () Bool)

(assert (=> b!6598449 (= e!3992742 (nullable!6456 (h!72012 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun bm!576973 () Bool)

(assert (=> bm!576973 (= call!576978 (derivationStepZipperDown!1711 (h!72012 (exprs!6347 (h!72014 zl!343))) (Context!11695 (t!379340 (exprs!6347 (h!72014 zl!343)))) (h!72013 s!2326)))))

(declare-fun b!6598450 () Bool)

(assert (=> b!6598450 (= e!3992743 e!3992744)))

(declare-fun c!1215305 () Bool)

(assert (=> b!6598450 (= c!1215305 ((_ is Cons!65564) (exprs!6347 (h!72014 zl!343))))))

(declare-fun b!6598451 () Bool)

(assert (=> b!6598451 (= e!3992744 call!576978)))

(assert (= (and d!2069947 res!2705563) b!6598449))

(assert (= (and d!2069947 c!1215306) b!6598448))

(assert (= (and d!2069947 (not c!1215306)) b!6598450))

(assert (= (and b!6598450 c!1215305) b!6598451))

(assert (= (and b!6598450 (not c!1215305)) b!6598447))

(assert (= (or b!6598448 b!6598451) bm!576973))

(declare-fun m!7375212 () Bool)

(assert (=> b!6598448 m!7375212))

(assert (=> b!6598449 m!7374496))

(declare-fun m!7375214 () Bool)

(assert (=> bm!576973 m!7375214))

(assert (=> b!6597619 d!2069947))

(declare-fun d!2069949 () Bool)

(assert (=> d!2069949 (= (flatMap!1968 z!1189 lambda!367635) (dynLambda!26110 lambda!367635 (h!72014 zl!343)))))

(declare-fun lt!2412741 () Unit!159187)

(assert (=> d!2069949 (= lt!2412741 (choose!49240 z!1189 (h!72014 zl!343) lambda!367635))))

(assert (=> d!2069949 (= z!1189 (store ((as const (Array Context!11694 Bool)) false) (h!72014 zl!343) true))))

(assert (=> d!2069949 (= (lemmaFlatMapOnSingletonSet!1494 z!1189 (h!72014 zl!343) lambda!367635) lt!2412741)))

(declare-fun b_lambda!249761 () Bool)

(assert (=> (not b_lambda!249761) (not d!2069949)))

(declare-fun bs!1691987 () Bool)

(assert (= bs!1691987 d!2069949))

(assert (=> bs!1691987 m!7374498))

(declare-fun m!7375216 () Bool)

(assert (=> bs!1691987 m!7375216))

(declare-fun m!7375218 () Bool)

(assert (=> bs!1691987 m!7375218))

(declare-fun m!7375220 () Bool)

(assert (=> bs!1691987 m!7375220))

(assert (=> b!6597619 d!2069949))

(declare-fun b!6598474 () Bool)

(declare-fun e!3992757 () (InoxSet Context!11694))

(declare-fun call!576991 () (InoxSet Context!11694))

(assert (=> b!6598474 (= e!3992757 call!576991)))

(declare-fun b!6598475 () Bool)

(declare-fun e!3992762 () (InoxSet Context!11694))

(declare-fun e!3992758 () (InoxSet Context!11694))

(assert (=> b!6598475 (= e!3992762 e!3992758)))

(declare-fun c!1215320 () Bool)

(assert (=> b!6598475 (= c!1215320 ((_ is Union!16463) (h!72012 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6598476 () Bool)

(declare-fun c!1215317 () Bool)

(declare-fun e!3992760 () Bool)

(assert (=> b!6598476 (= c!1215317 e!3992760)))

(declare-fun res!2705566 () Bool)

(assert (=> b!6598476 (=> (not res!2705566) (not e!3992760))))

(assert (=> b!6598476 (= res!2705566 ((_ is Concat!25308) (h!72012 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun e!3992761 () (InoxSet Context!11694))

(assert (=> b!6598476 (= e!3992758 e!3992761)))

(declare-fun b!6598477 () Bool)

(declare-fun call!576992 () (InoxSet Context!11694))

(declare-fun call!576993 () (InoxSet Context!11694))

(assert (=> b!6598477 (= e!3992758 ((_ map or) call!576992 call!576993))))

(declare-fun c!1215319 () Bool)

(declare-fun bm!576987 () Bool)

(declare-fun call!576994 () List!65688)

(declare-fun $colon$colon!2304 (List!65688 Regex!16463) List!65688)

(assert (=> bm!576987 (= call!576994 ($colon$colon!2304 (exprs!6347 lt!2412604) (ite (or c!1215317 c!1215319) (regTwo!33438 (h!72012 (exprs!6347 (h!72014 zl!343)))) (h!72012 (exprs!6347 (h!72014 zl!343))))))))

(declare-fun bm!576988 () Bool)

(declare-fun call!576995 () (InoxSet Context!11694))

(assert (=> bm!576988 (= call!576995 call!576993)))

(declare-fun b!6598478 () Bool)

(declare-fun e!3992759 () (InoxSet Context!11694))

(assert (=> b!6598478 (= e!3992759 call!576991)))

(declare-fun b!6598479 () Bool)

(assert (=> b!6598479 (= e!3992762 (store ((as const (Array Context!11694 Bool)) false) lt!2412604 true))))

(declare-fun b!6598480 () Bool)

(assert (=> b!6598480 (= e!3992761 ((_ map or) call!576992 call!576995))))

(declare-fun b!6598481 () Bool)

(declare-fun c!1215318 () Bool)

(assert (=> b!6598481 (= c!1215318 ((_ is Star!16463) (h!72012 (exprs!6347 (h!72014 zl!343)))))))

(assert (=> b!6598481 (= e!3992759 e!3992757)))

(declare-fun d!2069951 () Bool)

(declare-fun c!1215321 () Bool)

(assert (=> d!2069951 (= c!1215321 (and ((_ is ElementMatch!16463) (h!72012 (exprs!6347 (h!72014 zl!343)))) (= (c!1215062 (h!72012 (exprs!6347 (h!72014 zl!343)))) (h!72013 s!2326))))))

(assert (=> d!2069951 (= (derivationStepZipperDown!1711 (h!72012 (exprs!6347 (h!72014 zl!343))) lt!2412604 (h!72013 s!2326)) e!3992762)))

(declare-fun bm!576986 () Bool)

(declare-fun call!576996 () List!65688)

(assert (=> bm!576986 (= call!576996 call!576994)))

(declare-fun b!6598482 () Bool)

(assert (=> b!6598482 (= e!3992761 e!3992759)))

(assert (=> b!6598482 (= c!1215319 ((_ is Concat!25308) (h!72012 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6598483 () Bool)

(assert (=> b!6598483 (= e!3992757 ((as const (Array Context!11694 Bool)) false))))

(declare-fun bm!576989 () Bool)

(assert (=> bm!576989 (= call!576992 (derivationStepZipperDown!1711 (ite c!1215320 (regOne!33439 (h!72012 (exprs!6347 (h!72014 zl!343)))) (regOne!33438 (h!72012 (exprs!6347 (h!72014 zl!343))))) (ite c!1215320 lt!2412604 (Context!11695 call!576994)) (h!72013 s!2326)))))

(declare-fun bm!576990 () Bool)

(assert (=> bm!576990 (= call!576991 call!576995)))

(declare-fun b!6598484 () Bool)

(assert (=> b!6598484 (= e!3992760 (nullable!6456 (regOne!33438 (h!72012 (exprs!6347 (h!72014 zl!343))))))))

(declare-fun bm!576991 () Bool)

(assert (=> bm!576991 (= call!576993 (derivationStepZipperDown!1711 (ite c!1215320 (regTwo!33439 (h!72012 (exprs!6347 (h!72014 zl!343)))) (ite c!1215317 (regTwo!33438 (h!72012 (exprs!6347 (h!72014 zl!343)))) (ite c!1215319 (regOne!33438 (h!72012 (exprs!6347 (h!72014 zl!343)))) (reg!16792 (h!72012 (exprs!6347 (h!72014 zl!343))))))) (ite (or c!1215320 c!1215317) lt!2412604 (Context!11695 call!576996)) (h!72013 s!2326)))))

(assert (= (and d!2069951 c!1215321) b!6598479))

(assert (= (and d!2069951 (not c!1215321)) b!6598475))

(assert (= (and b!6598475 c!1215320) b!6598477))

(assert (= (and b!6598475 (not c!1215320)) b!6598476))

(assert (= (and b!6598476 res!2705566) b!6598484))

(assert (= (and b!6598476 c!1215317) b!6598480))

(assert (= (and b!6598476 (not c!1215317)) b!6598482))

(assert (= (and b!6598482 c!1215319) b!6598478))

(assert (= (and b!6598482 (not c!1215319)) b!6598481))

(assert (= (and b!6598481 c!1215318) b!6598474))

(assert (= (and b!6598481 (not c!1215318)) b!6598483))

(assert (= (or b!6598478 b!6598474) bm!576986))

(assert (= (or b!6598478 b!6598474) bm!576990))

(assert (= (or b!6598480 bm!576986) bm!576987))

(assert (= (or b!6598480 bm!576990) bm!576988))

(assert (= (or b!6598477 bm!576988) bm!576991))

(assert (= (or b!6598477 b!6598480) bm!576989))

(assert (=> b!6598479 m!7374532))

(declare-fun m!7375222 () Bool)

(assert (=> bm!576987 m!7375222))

(declare-fun m!7375224 () Bool)

(assert (=> b!6598484 m!7375224))

(declare-fun m!7375226 () Bool)

(assert (=> bm!576989 m!7375226))

(declare-fun m!7375228 () Bool)

(assert (=> bm!576991 m!7375228))

(assert (=> b!6597619 d!2069951))

(declare-fun b!6598491 () Bool)

(assert (=> b!6598491 true))

(declare-fun bs!1691988 () Bool)

(declare-fun b!6598493 () Bool)

(assert (= bs!1691988 (and b!6598493 b!6598491)))

(declare-fun lt!2412752 () Int)

(declare-fun lambda!367706 () Int)

(declare-fun lt!2412750 () Int)

(declare-fun lambda!367707 () Int)

(assert (=> bs!1691988 (= (= lt!2412752 lt!2412750) (= lambda!367707 lambda!367706))))

(assert (=> b!6598493 true))

(declare-fun d!2069953 () Bool)

(declare-fun e!3992768 () Bool)

(assert (=> d!2069953 e!3992768))

(declare-fun res!2705569 () Bool)

(assert (=> d!2069953 (=> (not res!2705569) (not e!3992768))))

(assert (=> d!2069953 (= res!2705569 (>= lt!2412752 0))))

(declare-fun e!3992767 () Int)

(assert (=> d!2069953 (= lt!2412752 e!3992767)))

(declare-fun c!1215330 () Bool)

(assert (=> d!2069953 (= c!1215330 ((_ is Cons!65566) zl!343))))

(assert (=> d!2069953 (= (zipperDepth!400 zl!343) lt!2412752)))

(assert (=> b!6598491 (= e!3992767 lt!2412750)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!289 (Context!11694) Int)

(assert (=> b!6598491 (= lt!2412750 (maxBigInt!0 (contextDepth!289 (h!72014 zl!343)) (zipperDepth!400 (t!379342 zl!343))))))

(declare-fun lambda!367705 () Int)

(declare-fun lt!2412751 () Unit!159187)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!273 (List!65690 Int Int Int) Unit!159187)

(assert (=> b!6598491 (= lt!2412751 (lemmaForallContextDepthBiggerThanTransitive!273 (t!379342 zl!343) lt!2412750 (zipperDepth!400 (t!379342 zl!343)) lambda!367705))))

(declare-fun forall!15650 (List!65690 Int) Bool)

(assert (=> b!6598491 (forall!15650 (t!379342 zl!343) lambda!367706)))

(declare-fun lt!2412753 () Unit!159187)

(assert (=> b!6598491 (= lt!2412753 lt!2412751)))

(declare-fun b!6598492 () Bool)

(assert (=> b!6598492 (= e!3992767 0)))

(assert (=> b!6598493 (= e!3992768 (forall!15650 zl!343 lambda!367707))))

(assert (= (and d!2069953 c!1215330) b!6598491))

(assert (= (and d!2069953 (not c!1215330)) b!6598492))

(assert (= (and d!2069953 res!2705569) b!6598493))

(declare-fun m!7375230 () Bool)

(assert (=> b!6598491 m!7375230))

(declare-fun m!7375232 () Bool)

(assert (=> b!6598491 m!7375232))

(declare-fun m!7375234 () Bool)

(assert (=> b!6598491 m!7375234))

(assert (=> b!6598491 m!7375232))

(declare-fun m!7375236 () Bool)

(assert (=> b!6598491 m!7375236))

(assert (=> b!6598491 m!7375236))

(assert (=> b!6598491 m!7375232))

(declare-fun m!7375238 () Bool)

(assert (=> b!6598491 m!7375238))

(declare-fun m!7375240 () Bool)

(assert (=> b!6598493 m!7375240))

(assert (=> b!6597621 d!2069953))

(declare-fun bs!1691989 () Bool)

(declare-fun b!6598496 () Bool)

(assert (= bs!1691989 (and b!6598496 b!6598491)))

(declare-fun lambda!367708 () Int)

(assert (=> bs!1691989 (= lambda!367708 lambda!367705)))

(declare-fun lambda!367709 () Int)

(declare-fun lt!2412754 () Int)

(assert (=> bs!1691989 (= (= lt!2412754 lt!2412750) (= lambda!367709 lambda!367706))))

(declare-fun bs!1691990 () Bool)

(assert (= bs!1691990 (and b!6598496 b!6598493)))

(assert (=> bs!1691990 (= (= lt!2412754 lt!2412752) (= lambda!367709 lambda!367707))))

(assert (=> b!6598496 true))

(declare-fun bs!1691991 () Bool)

(declare-fun b!6598498 () Bool)

(assert (= bs!1691991 (and b!6598498 b!6598491)))

(declare-fun lambda!367710 () Int)

(declare-fun lt!2412756 () Int)

(assert (=> bs!1691991 (= (= lt!2412756 lt!2412750) (= lambda!367710 lambda!367706))))

(declare-fun bs!1691992 () Bool)

(assert (= bs!1691992 (and b!6598498 b!6598493)))

(assert (=> bs!1691992 (= (= lt!2412756 lt!2412752) (= lambda!367710 lambda!367707))))

(declare-fun bs!1691993 () Bool)

(assert (= bs!1691993 (and b!6598498 b!6598496)))

(assert (=> bs!1691993 (= (= lt!2412756 lt!2412754) (= lambda!367710 lambda!367709))))

(assert (=> b!6598498 true))

(declare-fun d!2069955 () Bool)

(declare-fun e!3992770 () Bool)

(assert (=> d!2069955 e!3992770))

(declare-fun res!2705570 () Bool)

(assert (=> d!2069955 (=> (not res!2705570) (not e!3992770))))

(assert (=> d!2069955 (= res!2705570 (>= lt!2412756 0))))

(declare-fun e!3992769 () Int)

(assert (=> d!2069955 (= lt!2412756 e!3992769)))

(declare-fun c!1215331 () Bool)

(assert (=> d!2069955 (= c!1215331 ((_ is Cons!65566) lt!2412624))))

(assert (=> d!2069955 (= (zipperDepth!400 lt!2412624) lt!2412756)))

(assert (=> b!6598496 (= e!3992769 lt!2412754)))

(assert (=> b!6598496 (= lt!2412754 (maxBigInt!0 (contextDepth!289 (h!72014 lt!2412624)) (zipperDepth!400 (t!379342 lt!2412624))))))

(declare-fun lt!2412755 () Unit!159187)

(assert (=> b!6598496 (= lt!2412755 (lemmaForallContextDepthBiggerThanTransitive!273 (t!379342 lt!2412624) lt!2412754 (zipperDepth!400 (t!379342 lt!2412624)) lambda!367708))))

(assert (=> b!6598496 (forall!15650 (t!379342 lt!2412624) lambda!367709)))

(declare-fun lt!2412757 () Unit!159187)

(assert (=> b!6598496 (= lt!2412757 lt!2412755)))

(declare-fun b!6598497 () Bool)

(assert (=> b!6598497 (= e!3992769 0)))

(assert (=> b!6598498 (= e!3992770 (forall!15650 lt!2412624 lambda!367710))))

(assert (= (and d!2069955 c!1215331) b!6598496))

(assert (= (and d!2069955 (not c!1215331)) b!6598497))

(assert (= (and d!2069955 res!2705570) b!6598498))

(declare-fun m!7375242 () Bool)

(assert (=> b!6598496 m!7375242))

(declare-fun m!7375244 () Bool)

(assert (=> b!6598496 m!7375244))

(declare-fun m!7375246 () Bool)

(assert (=> b!6598496 m!7375246))

(assert (=> b!6598496 m!7375244))

(declare-fun m!7375248 () Bool)

(assert (=> b!6598496 m!7375248))

(assert (=> b!6598496 m!7375248))

(assert (=> b!6598496 m!7375244))

(declare-fun m!7375250 () Bool)

(assert (=> b!6598496 m!7375250))

(declare-fun m!7375252 () Bool)

(assert (=> b!6598498 m!7375252))

(assert (=> b!6597621 d!2069955))

(declare-fun d!2069957 () Bool)

(declare-fun lambda!367713 () Int)

(declare-fun forall!15651 (List!65688 Int) Bool)

(assert (=> d!2069957 (= (inv!84404 (h!72014 zl!343)) (forall!15651 (exprs!6347 (h!72014 zl!343)) lambda!367713))))

(declare-fun bs!1691994 () Bool)

(assert (= bs!1691994 d!2069957))

(declare-fun m!7375254 () Bool)

(assert (=> bs!1691994 m!7375254))

(assert (=> b!6597620 d!2069957))

(declare-fun b!6598499 () Bool)

(declare-fun e!3992774 () Bool)

(declare-fun call!576997 () Bool)

(assert (=> b!6598499 (= e!3992774 call!576997)))

(declare-fun b!6598500 () Bool)

(declare-fun res!2705573 () Bool)

(declare-fun e!3992771 () Bool)

(assert (=> b!6598500 (=> res!2705573 e!3992771)))

(assert (=> b!6598500 (= res!2705573 (not ((_ is Concat!25308) r!7292)))))

(declare-fun e!3992773 () Bool)

(assert (=> b!6598500 (= e!3992773 e!3992771)))

(declare-fun b!6598501 () Bool)

(declare-fun res!2705571 () Bool)

(declare-fun e!3992772 () Bool)

(assert (=> b!6598501 (=> (not res!2705571) (not e!3992772))))

(declare-fun call!576999 () Bool)

(assert (=> b!6598501 (= res!2705571 call!576999)))

(assert (=> b!6598501 (= e!3992773 e!3992772)))

(declare-fun d!2069959 () Bool)

(declare-fun res!2705575 () Bool)

(declare-fun e!3992775 () Bool)

(assert (=> d!2069959 (=> res!2705575 e!3992775)))

(assert (=> d!2069959 (= res!2705575 ((_ is ElementMatch!16463) r!7292))))

(assert (=> d!2069959 (= (validRegex!8199 r!7292) e!3992775)))

(declare-fun bm!576992 () Bool)

(declare-fun c!1215333 () Bool)

(assert (=> bm!576992 (= call!576999 (validRegex!8199 (ite c!1215333 (regOne!33439 r!7292) (regOne!33438 r!7292))))))

(declare-fun b!6598502 () Bool)

(declare-fun e!3992776 () Bool)

(assert (=> b!6598502 (= e!3992776 e!3992773)))

(assert (=> b!6598502 (= c!1215333 ((_ is Union!16463) r!7292))))

(declare-fun b!6598503 () Bool)

(declare-fun e!3992777 () Bool)

(declare-fun call!576998 () Bool)

(assert (=> b!6598503 (= e!3992777 call!576998)))

(declare-fun b!6598504 () Bool)

(assert (=> b!6598504 (= e!3992772 call!576997)))

(declare-fun b!6598505 () Bool)

(assert (=> b!6598505 (= e!3992771 e!3992774)))

(declare-fun res!2705574 () Bool)

(assert (=> b!6598505 (=> (not res!2705574) (not e!3992774))))

(assert (=> b!6598505 (= res!2705574 call!576999)))

(declare-fun b!6598506 () Bool)

(assert (=> b!6598506 (= e!3992775 e!3992776)))

(declare-fun c!1215332 () Bool)

(assert (=> b!6598506 (= c!1215332 ((_ is Star!16463) r!7292))))

(declare-fun bm!576993 () Bool)

(assert (=> bm!576993 (= call!576997 call!576998)))

(declare-fun b!6598507 () Bool)

(assert (=> b!6598507 (= e!3992776 e!3992777)))

(declare-fun res!2705572 () Bool)

(assert (=> b!6598507 (= res!2705572 (not (nullable!6456 (reg!16792 r!7292))))))

(assert (=> b!6598507 (=> (not res!2705572) (not e!3992777))))

(declare-fun bm!576994 () Bool)

(assert (=> bm!576994 (= call!576998 (validRegex!8199 (ite c!1215332 (reg!16792 r!7292) (ite c!1215333 (regTwo!33439 r!7292) (regTwo!33438 r!7292)))))))

(assert (= (and d!2069959 (not res!2705575)) b!6598506))

(assert (= (and b!6598506 c!1215332) b!6598507))

(assert (= (and b!6598506 (not c!1215332)) b!6598502))

(assert (= (and b!6598507 res!2705572) b!6598503))

(assert (= (and b!6598502 c!1215333) b!6598501))

(assert (= (and b!6598502 (not c!1215333)) b!6598500))

(assert (= (and b!6598501 res!2705571) b!6598504))

(assert (= (and b!6598500 (not res!2705573)) b!6598505))

(assert (= (and b!6598505 res!2705574) b!6598499))

(assert (= (or b!6598504 b!6598499) bm!576993))

(assert (= (or b!6598501 b!6598505) bm!576992))

(assert (= (or b!6598503 bm!576993) bm!576994))

(declare-fun m!7375256 () Bool)

(assert (=> bm!576992 m!7375256))

(declare-fun m!7375258 () Bool)

(assert (=> b!6598507 m!7375258))

(declare-fun m!7375260 () Bool)

(assert (=> bm!576994 m!7375260))

(assert (=> start!645194 d!2069959))

(declare-fun bs!1691995 () Bool)

(declare-fun d!2069961 () Bool)

(assert (= bs!1691995 (and d!2069961 d!2069957)))

(declare-fun lambda!367716 () Int)

(assert (=> bs!1691995 (= lambda!367716 lambda!367713)))

(declare-fun b!6598528 () Bool)

(declare-fun e!3992790 () Bool)

(declare-fun lt!2412760 () Regex!16463)

(declare-fun head!13378 (List!65688) Regex!16463)

(assert (=> b!6598528 (= e!3992790 (= lt!2412760 (head!13378 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6598529 () Bool)

(declare-fun e!3992792 () Regex!16463)

(declare-fun e!3992795 () Regex!16463)

(assert (=> b!6598529 (= e!3992792 e!3992795)))

(declare-fun c!1215344 () Bool)

(assert (=> b!6598529 (= c!1215344 ((_ is Cons!65564) (exprs!6347 (h!72014 zl!343))))))

(declare-fun b!6598530 () Bool)

(assert (=> b!6598530 (= e!3992795 (Concat!25308 (h!72012 (exprs!6347 (h!72014 zl!343))) (generalisedConcat!2060 (t!379340 (exprs!6347 (h!72014 zl!343))))))))

(declare-fun b!6598531 () Bool)

(declare-fun e!3992793 () Bool)

(declare-fun e!3992794 () Bool)

(assert (=> b!6598531 (= e!3992793 e!3992794)))

(declare-fun c!1215345 () Bool)

(assert (=> b!6598531 (= c!1215345 (isEmpty!37829 (exprs!6347 (h!72014 zl!343))))))

(assert (=> d!2069961 e!3992793))

(declare-fun res!2705581 () Bool)

(assert (=> d!2069961 (=> (not res!2705581) (not e!3992793))))

(assert (=> d!2069961 (= res!2705581 (validRegex!8199 lt!2412760))))

(assert (=> d!2069961 (= lt!2412760 e!3992792)))

(declare-fun c!1215342 () Bool)

(declare-fun e!3992791 () Bool)

(assert (=> d!2069961 (= c!1215342 e!3992791)))

(declare-fun res!2705580 () Bool)

(assert (=> d!2069961 (=> (not res!2705580) (not e!3992791))))

(assert (=> d!2069961 (= res!2705580 ((_ is Cons!65564) (exprs!6347 (h!72014 zl!343))))))

(assert (=> d!2069961 (forall!15651 (exprs!6347 (h!72014 zl!343)) lambda!367716)))

(assert (=> d!2069961 (= (generalisedConcat!2060 (exprs!6347 (h!72014 zl!343))) lt!2412760)))

(declare-fun b!6598532 () Bool)

(assert (=> b!6598532 (= e!3992794 e!3992790)))

(declare-fun c!1215343 () Bool)

(declare-fun tail!12463 (List!65688) List!65688)

(assert (=> b!6598532 (= c!1215343 (isEmpty!37829 (tail!12463 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6598533 () Bool)

(declare-fun isConcat!1364 (Regex!16463) Bool)

(assert (=> b!6598533 (= e!3992790 (isConcat!1364 lt!2412760))))

(declare-fun b!6598534 () Bool)

(assert (=> b!6598534 (= e!3992792 (h!72012 (exprs!6347 (h!72014 zl!343))))))

(declare-fun b!6598535 () Bool)

(assert (=> b!6598535 (= e!3992795 EmptyExpr!16463)))

(declare-fun b!6598536 () Bool)

(declare-fun isEmptyExpr!1841 (Regex!16463) Bool)

(assert (=> b!6598536 (= e!3992794 (isEmptyExpr!1841 lt!2412760))))

(declare-fun b!6598537 () Bool)

(assert (=> b!6598537 (= e!3992791 (isEmpty!37829 (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(assert (= (and d!2069961 res!2705580) b!6598537))

(assert (= (and d!2069961 c!1215342) b!6598534))

(assert (= (and d!2069961 (not c!1215342)) b!6598529))

(assert (= (and b!6598529 c!1215344) b!6598530))

(assert (= (and b!6598529 (not c!1215344)) b!6598535))

(assert (= (and d!2069961 res!2705581) b!6598531))

(assert (= (and b!6598531 c!1215345) b!6598536))

(assert (= (and b!6598531 (not c!1215345)) b!6598532))

(assert (= (and b!6598532 c!1215343) b!6598528))

(assert (= (and b!6598532 (not c!1215343)) b!6598533))

(declare-fun m!7375262 () Bool)

(assert (=> b!6598528 m!7375262))

(declare-fun m!7375264 () Bool)

(assert (=> b!6598536 m!7375264))

(declare-fun m!7375266 () Bool)

(assert (=> b!6598533 m!7375266))

(declare-fun m!7375268 () Bool)

(assert (=> b!6598531 m!7375268))

(assert (=> b!6598537 m!7374576))

(declare-fun m!7375270 () Bool)

(assert (=> d!2069961 m!7375270))

(declare-fun m!7375272 () Bool)

(assert (=> d!2069961 m!7375272))

(assert (=> b!6598530 m!7374526))

(declare-fun m!7375274 () Bool)

(assert (=> b!6598532 m!7375274))

(assert (=> b!6598532 m!7375274))

(declare-fun m!7375276 () Bool)

(assert (=> b!6598532 m!7375276))

(assert (=> b!6597601 d!2069961))

(declare-fun d!2069963 () Bool)

(assert (=> d!2069963 (= (isEmpty!37830 (t!379342 zl!343)) ((_ is Nil!65566) (t!379342 zl!343)))))

(assert (=> b!6597587 d!2069963))

(declare-fun b!6598556 () Bool)

(declare-fun e!3992810 () Option!16354)

(assert (=> b!6598556 (= e!3992810 (Some!16353 (tuple2!66885 Nil!65565 s!2326)))))

(declare-fun b!6598557 () Bool)

(declare-fun e!3992806 () Bool)

(assert (=> b!6598557 (= e!3992806 (matchR!8646 (regTwo!33438 r!7292) s!2326))))

(declare-fun b!6598558 () Bool)

(declare-fun res!2705594 () Bool)

(declare-fun e!3992807 () Bool)

(assert (=> b!6598558 (=> (not res!2705594) (not e!3992807))))

(declare-fun lt!2412767 () Option!16354)

(declare-fun get!22776 (Option!16354) tuple2!66884)

(assert (=> b!6598558 (= res!2705594 (matchR!8646 (regOne!33438 r!7292) (_1!36745 (get!22776 lt!2412767))))))

(declare-fun b!6598559 () Bool)

(declare-fun e!3992808 () Bool)

(assert (=> b!6598559 (= e!3992808 (not (isDefined!13057 lt!2412767)))))

(declare-fun b!6598560 () Bool)

(declare-fun lt!2412769 () Unit!159187)

(declare-fun lt!2412768 () Unit!159187)

(assert (=> b!6598560 (= lt!2412769 lt!2412768)))

(declare-fun ++!14609 (List!65689 List!65689) List!65689)

(assert (=> b!6598560 (= (++!14609 (++!14609 Nil!65565 (Cons!65565 (h!72013 s!2326) Nil!65565)) (t!379341 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2606 (List!65689 C!33196 List!65689 List!65689) Unit!159187)

(assert (=> b!6598560 (= lt!2412768 (lemmaMoveElementToOtherListKeepsConcatEq!2606 Nil!65565 (h!72013 s!2326) (t!379341 s!2326) s!2326))))

(declare-fun e!3992809 () Option!16354)

(assert (=> b!6598560 (= e!3992809 (findConcatSeparation!2768 (regOne!33438 r!7292) (regTwo!33438 r!7292) (++!14609 Nil!65565 (Cons!65565 (h!72013 s!2326) Nil!65565)) (t!379341 s!2326) s!2326))))

(declare-fun b!6598561 () Bool)

(assert (=> b!6598561 (= e!3992810 e!3992809)))

(declare-fun c!1215351 () Bool)

(assert (=> b!6598561 (= c!1215351 ((_ is Nil!65565) s!2326))))

(declare-fun b!6598562 () Bool)

(assert (=> b!6598562 (= e!3992807 (= (++!14609 (_1!36745 (get!22776 lt!2412767)) (_2!36745 (get!22776 lt!2412767))) s!2326))))

(declare-fun b!6598563 () Bool)

(declare-fun res!2705593 () Bool)

(assert (=> b!6598563 (=> (not res!2705593) (not e!3992807))))

(assert (=> b!6598563 (= res!2705593 (matchR!8646 (regTwo!33438 r!7292) (_2!36745 (get!22776 lt!2412767))))))

(declare-fun d!2069965 () Bool)

(assert (=> d!2069965 e!3992808))

(declare-fun res!2705595 () Bool)

(assert (=> d!2069965 (=> res!2705595 e!3992808)))

(assert (=> d!2069965 (= res!2705595 e!3992807)))

(declare-fun res!2705592 () Bool)

(assert (=> d!2069965 (=> (not res!2705592) (not e!3992807))))

(assert (=> d!2069965 (= res!2705592 (isDefined!13057 lt!2412767))))

(assert (=> d!2069965 (= lt!2412767 e!3992810)))

(declare-fun c!1215350 () Bool)

(assert (=> d!2069965 (= c!1215350 e!3992806)))

(declare-fun res!2705596 () Bool)

(assert (=> d!2069965 (=> (not res!2705596) (not e!3992806))))

(assert (=> d!2069965 (= res!2705596 (matchR!8646 (regOne!33438 r!7292) Nil!65565))))

(assert (=> d!2069965 (validRegex!8199 (regOne!33438 r!7292))))

(assert (=> d!2069965 (= (findConcatSeparation!2768 (regOne!33438 r!7292) (regTwo!33438 r!7292) Nil!65565 s!2326 s!2326) lt!2412767)))

(declare-fun b!6598564 () Bool)

(assert (=> b!6598564 (= e!3992809 None!16353)))

(assert (= (and d!2069965 res!2705596) b!6598557))

(assert (= (and d!2069965 c!1215350) b!6598556))

(assert (= (and d!2069965 (not c!1215350)) b!6598561))

(assert (= (and b!6598561 c!1215351) b!6598564))

(assert (= (and b!6598561 (not c!1215351)) b!6598560))

(assert (= (and d!2069965 res!2705592) b!6598558))

(assert (= (and b!6598558 res!2705594) b!6598563))

(assert (= (and b!6598563 res!2705593) b!6598562))

(assert (= (and d!2069965 (not res!2705595)) b!6598559))

(declare-fun m!7375278 () Bool)

(assert (=> d!2069965 m!7375278))

(declare-fun m!7375280 () Bool)

(assert (=> d!2069965 m!7375280))

(declare-fun m!7375282 () Bool)

(assert (=> d!2069965 m!7375282))

(assert (=> b!6598557 m!7374514))

(declare-fun m!7375284 () Bool)

(assert (=> b!6598560 m!7375284))

(assert (=> b!6598560 m!7375284))

(declare-fun m!7375286 () Bool)

(assert (=> b!6598560 m!7375286))

(declare-fun m!7375288 () Bool)

(assert (=> b!6598560 m!7375288))

(assert (=> b!6598560 m!7375284))

(declare-fun m!7375290 () Bool)

(assert (=> b!6598560 m!7375290))

(declare-fun m!7375292 () Bool)

(assert (=> b!6598558 m!7375292))

(declare-fun m!7375294 () Bool)

(assert (=> b!6598558 m!7375294))

(assert (=> b!6598559 m!7375278))

(assert (=> b!6598562 m!7375292))

(declare-fun m!7375296 () Bool)

(assert (=> b!6598562 m!7375296))

(assert (=> b!6598563 m!7375292))

(declare-fun m!7375298 () Bool)

(assert (=> b!6598563 m!7375298))

(assert (=> b!6597586 d!2069965))

(declare-fun d!2069967 () Bool)

(declare-fun choose!49243 (Int) Bool)

(assert (=> d!2069967 (= (Exists!3533 lambda!367633) (choose!49243 lambda!367633))))

(declare-fun bs!1691996 () Bool)

(assert (= bs!1691996 d!2069967))

(declare-fun m!7375300 () Bool)

(assert (=> bs!1691996 m!7375300))

(assert (=> b!6597586 d!2069967))

(declare-fun d!2069969 () Bool)

(assert (=> d!2069969 (= (Exists!3533 lambda!367634) (choose!49243 lambda!367634))))

(declare-fun bs!1691997 () Bool)

(assert (= bs!1691997 d!2069969))

(declare-fun m!7375302 () Bool)

(assert (=> bs!1691997 m!7375302))

(assert (=> b!6597586 d!2069969))

(declare-fun bs!1691998 () Bool)

(declare-fun d!2069971 () Bool)

(assert (= bs!1691998 (and d!2069971 b!6598433)))

(declare-fun lambda!367719 () Int)

(assert (=> bs!1691998 (not (= lambda!367719 lambda!367698))))

(declare-fun bs!1691999 () Bool)

(assert (= bs!1691999 (and d!2069971 b!6598104)))

(assert (=> bs!1691999 (not (= lambda!367719 lambda!367684))))

(declare-fun bs!1692000 () Bool)

(assert (= bs!1692000 (and d!2069971 b!6598198)))

(assert (=> bs!1692000 (not (= lambda!367719 lambda!367690))))

(declare-fun bs!1692001 () Bool)

(assert (= bs!1692001 (and d!2069971 b!6597586)))

(assert (=> bs!1692001 (= lambda!367719 lambda!367633)))

(declare-fun bs!1692002 () Bool)

(assert (= bs!1692002 (and d!2069971 b!6598196)))

(assert (=> bs!1692002 (not (= lambda!367719 lambda!367689))))

(declare-fun bs!1692003 () Bool)

(assert (= bs!1692003 (and d!2069971 b!6598102)))

(assert (=> bs!1692003 (not (= lambda!367719 lambda!367683))))

(declare-fun bs!1692004 () Bool)

(assert (= bs!1692004 (and d!2069971 b!6598431)))

(assert (=> bs!1692004 (not (= lambda!367719 lambda!367697))))

(assert (=> bs!1692001 (not (= lambda!367719 lambda!367634))))

(assert (=> d!2069971 true))

(assert (=> d!2069971 true))

(assert (=> d!2069971 true))

(assert (=> d!2069971 (= (isDefined!13057 (findConcatSeparation!2768 (regOne!33438 r!7292) (regTwo!33438 r!7292) Nil!65565 s!2326 s!2326)) (Exists!3533 lambda!367719))))

(declare-fun lt!2412772 () Unit!159187)

(declare-fun choose!49244 (Regex!16463 Regex!16463 List!65689) Unit!159187)

(assert (=> d!2069971 (= lt!2412772 (choose!49244 (regOne!33438 r!7292) (regTwo!33438 r!7292) s!2326))))

(assert (=> d!2069971 (validRegex!8199 (regOne!33438 r!7292))))

(assert (=> d!2069971 (= (lemmaFindConcatSeparationEquivalentToExists!2532 (regOne!33438 r!7292) (regTwo!33438 r!7292) s!2326) lt!2412772)))

(declare-fun bs!1692005 () Bool)

(assert (= bs!1692005 d!2069971))

(assert (=> bs!1692005 m!7374536))

(assert (=> bs!1692005 m!7374538))

(assert (=> bs!1692005 m!7375282))

(assert (=> bs!1692005 m!7374536))

(declare-fun m!7375304 () Bool)

(assert (=> bs!1692005 m!7375304))

(declare-fun m!7375306 () Bool)

(assert (=> bs!1692005 m!7375306))

(assert (=> b!6597586 d!2069971))

(declare-fun bs!1692006 () Bool)

(declare-fun d!2069973 () Bool)

(assert (= bs!1692006 (and d!2069973 b!6598433)))

(declare-fun lambda!367724 () Int)

(assert (=> bs!1692006 (not (= lambda!367724 lambda!367698))))

(declare-fun bs!1692007 () Bool)

(assert (= bs!1692007 (and d!2069973 b!6598104)))

(assert (=> bs!1692007 (not (= lambda!367724 lambda!367684))))

(declare-fun bs!1692008 () Bool)

(assert (= bs!1692008 (and d!2069973 b!6598198)))

(assert (=> bs!1692008 (not (= lambda!367724 lambda!367690))))

(declare-fun bs!1692009 () Bool)

(assert (= bs!1692009 (and d!2069973 b!6597586)))

(assert (=> bs!1692009 (= lambda!367724 lambda!367633)))

(declare-fun bs!1692010 () Bool)

(assert (= bs!1692010 (and d!2069973 b!6598196)))

(assert (=> bs!1692010 (not (= lambda!367724 lambda!367689))))

(declare-fun bs!1692011 () Bool)

(assert (= bs!1692011 (and d!2069973 b!6598102)))

(assert (=> bs!1692011 (not (= lambda!367724 lambda!367683))))

(declare-fun bs!1692012 () Bool)

(assert (= bs!1692012 (and d!2069973 b!6598431)))

(assert (=> bs!1692012 (not (= lambda!367724 lambda!367697))))

(declare-fun bs!1692013 () Bool)

(assert (= bs!1692013 (and d!2069973 d!2069971)))

(assert (=> bs!1692013 (= lambda!367724 lambda!367719)))

(assert (=> bs!1692009 (not (= lambda!367724 lambda!367634))))

(assert (=> d!2069973 true))

(assert (=> d!2069973 true))

(assert (=> d!2069973 true))

(declare-fun lambda!367725 () Int)

(assert (=> bs!1692006 (= (and (= s!2326 Nil!65565) (= (regOne!33438 r!7292) (regOne!33438 lt!2412632)) (= (regTwo!33438 r!7292) (regTwo!33438 lt!2412632))) (= lambda!367725 lambda!367698))))

(assert (=> bs!1692007 (= (and (= (regOne!33438 r!7292) (regOne!33438 lt!2412615)) (= (regTwo!33438 r!7292) (regTwo!33438 lt!2412615))) (= lambda!367725 lambda!367684))))

(assert (=> bs!1692008 (= lambda!367725 lambda!367690)))

(assert (=> bs!1692009 (not (= lambda!367725 lambda!367633))))

(assert (=> bs!1692010 (not (= lambda!367725 lambda!367689))))

(assert (=> bs!1692011 (not (= lambda!367725 lambda!367683))))

(assert (=> bs!1692012 (not (= lambda!367725 lambda!367697))))

(assert (=> bs!1692013 (not (= lambda!367725 lambda!367719))))

(assert (=> bs!1692009 (= lambda!367725 lambda!367634)))

(declare-fun bs!1692014 () Bool)

(assert (= bs!1692014 d!2069973))

(assert (=> bs!1692014 (not (= lambda!367725 lambda!367724))))

(assert (=> d!2069973 true))

(assert (=> d!2069973 true))

(assert (=> d!2069973 true))

(assert (=> d!2069973 (= (Exists!3533 lambda!367724) (Exists!3533 lambda!367725))))

(declare-fun lt!2412775 () Unit!159187)

(declare-fun choose!49245 (Regex!16463 Regex!16463 List!65689) Unit!159187)

(assert (=> d!2069973 (= lt!2412775 (choose!49245 (regOne!33438 r!7292) (regTwo!33438 r!7292) s!2326))))

(assert (=> d!2069973 (validRegex!8199 (regOne!33438 r!7292))))

(assert (=> d!2069973 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2070 (regOne!33438 r!7292) (regTwo!33438 r!7292) s!2326) lt!2412775)))

(declare-fun m!7375308 () Bool)

(assert (=> bs!1692014 m!7375308))

(declare-fun m!7375310 () Bool)

(assert (=> bs!1692014 m!7375310))

(declare-fun m!7375312 () Bool)

(assert (=> bs!1692014 m!7375312))

(assert (=> bs!1692014 m!7375282))

(assert (=> b!6597586 d!2069973))

(declare-fun d!2069975 () Bool)

(declare-fun isEmpty!37834 (Option!16354) Bool)

(assert (=> d!2069975 (= (isDefined!13057 (findConcatSeparation!2768 (regOne!33438 r!7292) (regTwo!33438 r!7292) Nil!65565 s!2326 s!2326)) (not (isEmpty!37834 (findConcatSeparation!2768 (regOne!33438 r!7292) (regTwo!33438 r!7292) Nil!65565 s!2326 s!2326))))))

(declare-fun bs!1692015 () Bool)

(assert (= bs!1692015 d!2069975))

(assert (=> bs!1692015 m!7374536))

(declare-fun m!7375314 () Bool)

(assert (=> bs!1692015 m!7375314))

(assert (=> b!6597586 d!2069975))

(declare-fun d!2069977 () Bool)

(declare-fun lt!2412776 () Regex!16463)

(assert (=> d!2069977 (validRegex!8199 lt!2412776)))

(assert (=> d!2069977 (= lt!2412776 (generalisedUnion!2307 (unfocusZipperList!1884 (Cons!65566 lt!2412618 Nil!65566))))))

(assert (=> d!2069977 (= (unfocusZipper!2205 (Cons!65566 lt!2412618 Nil!65566)) lt!2412776)))

(declare-fun bs!1692016 () Bool)

(assert (= bs!1692016 d!2069977))

(declare-fun m!7375316 () Bool)

(assert (=> bs!1692016 m!7375316))

(declare-fun m!7375318 () Bool)

(assert (=> bs!1692016 m!7375318))

(assert (=> bs!1692016 m!7375318))

(declare-fun m!7375320 () Bool)

(assert (=> bs!1692016 m!7375320))

(assert (=> b!6597588 d!2069977))

(declare-fun d!2069979 () Bool)

(declare-fun e!3992819 () Bool)

(assert (=> d!2069979 (= (matchZipper!2475 ((_ map or) lt!2412617 lt!2412608) (t!379341 s!2326)) e!3992819)))

(declare-fun res!2705611 () Bool)

(assert (=> d!2069979 (=> res!2705611 e!3992819)))

(assert (=> d!2069979 (= res!2705611 (matchZipper!2475 lt!2412617 (t!379341 s!2326)))))

(declare-fun lt!2412779 () Unit!159187)

(declare-fun choose!49246 ((InoxSet Context!11694) (InoxSet Context!11694) List!65689) Unit!159187)

(assert (=> d!2069979 (= lt!2412779 (choose!49246 lt!2412617 lt!2412608 (t!379341 s!2326)))))

(assert (=> d!2069979 (= (lemmaZipperConcatMatchesSameAsBothZippers!1294 lt!2412617 lt!2412608 (t!379341 s!2326)) lt!2412779)))

(declare-fun b!6598579 () Bool)

(assert (=> b!6598579 (= e!3992819 (matchZipper!2475 lt!2412608 (t!379341 s!2326)))))

(assert (= (and d!2069979 (not res!2705611)) b!6598579))

(assert (=> d!2069979 m!7374574))

(assert (=> d!2069979 m!7374550))

(declare-fun m!7375322 () Bool)

(assert (=> d!2069979 m!7375322))

(assert (=> b!6598579 m!7374502))

(assert (=> b!6597609 d!2069979))

(assert (=> b!6597609 d!2069921))

(declare-fun d!2069981 () Bool)

(declare-fun c!1215352 () Bool)

(assert (=> d!2069981 (= c!1215352 (isEmpty!37833 (t!379341 s!2326)))))

(declare-fun e!3992820 () Bool)

(assert (=> d!2069981 (= (matchZipper!2475 ((_ map or) lt!2412617 lt!2412608) (t!379341 s!2326)) e!3992820)))

(declare-fun b!6598580 () Bool)

(assert (=> b!6598580 (= e!3992820 (nullableZipper!2208 ((_ map or) lt!2412617 lt!2412608)))))

(declare-fun b!6598581 () Bool)

(assert (=> b!6598581 (= e!3992820 (matchZipper!2475 (derivationStepZipper!2429 ((_ map or) lt!2412617 lt!2412608) (head!13377 (t!379341 s!2326))) (tail!12462 (t!379341 s!2326))))))

(assert (= (and d!2069981 c!1215352) b!6598580))

(assert (= (and d!2069981 (not c!1215352)) b!6598581))

(assert (=> d!2069981 m!7374804))

(declare-fun m!7375324 () Bool)

(assert (=> b!6598580 m!7375324))

(assert (=> b!6598581 m!7374808))

(assert (=> b!6598581 m!7374808))

(declare-fun m!7375326 () Bool)

(assert (=> b!6598581 m!7375326))

(assert (=> b!6598581 m!7374812))

(assert (=> b!6598581 m!7375326))

(assert (=> b!6598581 m!7374812))

(declare-fun m!7375328 () Bool)

(assert (=> b!6598581 m!7375328))

(assert (=> b!6597609 d!2069981))

(declare-fun bs!1692017 () Bool)

(declare-fun d!2069983 () Bool)

(assert (= bs!1692017 (and d!2069983 d!2069957)))

(declare-fun lambda!367728 () Int)

(assert (=> bs!1692017 (= lambda!367728 lambda!367713)))

(declare-fun bs!1692018 () Bool)

(assert (= bs!1692018 (and d!2069983 d!2069961)))

(assert (=> bs!1692018 (= lambda!367728 lambda!367716)))

(declare-fun b!6598602 () Bool)

(declare-fun e!3992836 () Regex!16463)

(assert (=> b!6598602 (= e!3992836 (Union!16463 (h!72012 (unfocusZipperList!1884 zl!343)) (generalisedUnion!2307 (t!379340 (unfocusZipperList!1884 zl!343)))))))

(declare-fun b!6598604 () Bool)

(declare-fun e!3992837 () Bool)

(assert (=> b!6598604 (= e!3992837 (isEmpty!37829 (t!379340 (unfocusZipperList!1884 zl!343))))))

(declare-fun b!6598605 () Bool)

(declare-fun e!3992838 () Regex!16463)

(assert (=> b!6598605 (= e!3992838 (h!72012 (unfocusZipperList!1884 zl!343)))))

(declare-fun b!6598603 () Bool)

(declare-fun e!3992833 () Bool)

(declare-fun e!3992835 () Bool)

(assert (=> b!6598603 (= e!3992833 e!3992835)))

(declare-fun c!1215361 () Bool)

(assert (=> b!6598603 (= c!1215361 (isEmpty!37829 (unfocusZipperList!1884 zl!343)))))

(assert (=> d!2069983 e!3992833))

(declare-fun res!2705616 () Bool)

(assert (=> d!2069983 (=> (not res!2705616) (not e!3992833))))

(declare-fun lt!2412782 () Regex!16463)

(assert (=> d!2069983 (= res!2705616 (validRegex!8199 lt!2412782))))

(assert (=> d!2069983 (= lt!2412782 e!3992838)))

(declare-fun c!1215364 () Bool)

(assert (=> d!2069983 (= c!1215364 e!3992837)))

(declare-fun res!2705617 () Bool)

(assert (=> d!2069983 (=> (not res!2705617) (not e!3992837))))

(assert (=> d!2069983 (= res!2705617 ((_ is Cons!65564) (unfocusZipperList!1884 zl!343)))))

(assert (=> d!2069983 (forall!15651 (unfocusZipperList!1884 zl!343) lambda!367728)))

(assert (=> d!2069983 (= (generalisedUnion!2307 (unfocusZipperList!1884 zl!343)) lt!2412782)))

(declare-fun b!6598606 () Bool)

(declare-fun e!3992834 () Bool)

(declare-fun isUnion!1280 (Regex!16463) Bool)

(assert (=> b!6598606 (= e!3992834 (isUnion!1280 lt!2412782))))

(declare-fun b!6598607 () Bool)

(assert (=> b!6598607 (= e!3992834 (= lt!2412782 (head!13378 (unfocusZipperList!1884 zl!343))))))

(declare-fun b!6598608 () Bool)

(assert (=> b!6598608 (= e!3992836 EmptyLang!16463)))

(declare-fun b!6598609 () Bool)

(declare-fun isEmptyLang!1850 (Regex!16463) Bool)

(assert (=> b!6598609 (= e!3992835 (isEmptyLang!1850 lt!2412782))))

(declare-fun b!6598610 () Bool)

(assert (=> b!6598610 (= e!3992835 e!3992834)))

(declare-fun c!1215363 () Bool)

(assert (=> b!6598610 (= c!1215363 (isEmpty!37829 (tail!12463 (unfocusZipperList!1884 zl!343))))))

(declare-fun b!6598611 () Bool)

(assert (=> b!6598611 (= e!3992838 e!3992836)))

(declare-fun c!1215362 () Bool)

(assert (=> b!6598611 (= c!1215362 ((_ is Cons!65564) (unfocusZipperList!1884 zl!343)))))

(assert (= (and d!2069983 res!2705617) b!6598604))

(assert (= (and d!2069983 c!1215364) b!6598605))

(assert (= (and d!2069983 (not c!1215364)) b!6598611))

(assert (= (and b!6598611 c!1215362) b!6598602))

(assert (= (and b!6598611 (not c!1215362)) b!6598608))

(assert (= (and d!2069983 res!2705616) b!6598603))

(assert (= (and b!6598603 c!1215361) b!6598609))

(assert (= (and b!6598603 (not c!1215361)) b!6598610))

(assert (= (and b!6598610 c!1215363) b!6598607))

(assert (= (and b!6598610 (not c!1215363)) b!6598606))

(assert (=> b!6598603 m!7374578))

(declare-fun m!7375330 () Bool)

(assert (=> b!6598603 m!7375330))

(assert (=> b!6598610 m!7374578))

(declare-fun m!7375332 () Bool)

(assert (=> b!6598610 m!7375332))

(assert (=> b!6598610 m!7375332))

(declare-fun m!7375334 () Bool)

(assert (=> b!6598610 m!7375334))

(declare-fun m!7375336 () Bool)

(assert (=> b!6598604 m!7375336))

(assert (=> b!6598607 m!7374578))

(declare-fun m!7375338 () Bool)

(assert (=> b!6598607 m!7375338))

(declare-fun m!7375340 () Bool)

(assert (=> b!6598602 m!7375340))

(declare-fun m!7375342 () Bool)

(assert (=> b!6598606 m!7375342))

(declare-fun m!7375344 () Bool)

(assert (=> b!6598609 m!7375344))

(declare-fun m!7375346 () Bool)

(assert (=> d!2069983 m!7375346))

(assert (=> d!2069983 m!7374578))

(declare-fun m!7375348 () Bool)

(assert (=> d!2069983 m!7375348))

(assert (=> b!6597625 d!2069983))

(declare-fun bs!1692019 () Bool)

(declare-fun d!2069985 () Bool)

(assert (= bs!1692019 (and d!2069985 d!2069957)))

(declare-fun lambda!367731 () Int)

(assert (=> bs!1692019 (= lambda!367731 lambda!367713)))

(declare-fun bs!1692020 () Bool)

(assert (= bs!1692020 (and d!2069985 d!2069961)))

(assert (=> bs!1692020 (= lambda!367731 lambda!367716)))

(declare-fun bs!1692021 () Bool)

(assert (= bs!1692021 (and d!2069985 d!2069983)))

(assert (=> bs!1692021 (= lambda!367731 lambda!367728)))

(declare-fun lt!2412785 () List!65688)

(assert (=> d!2069985 (forall!15651 lt!2412785 lambda!367731)))

(declare-fun e!3992841 () List!65688)

(assert (=> d!2069985 (= lt!2412785 e!3992841)))

(declare-fun c!1215367 () Bool)

(assert (=> d!2069985 (= c!1215367 ((_ is Cons!65566) zl!343))))

(assert (=> d!2069985 (= (unfocusZipperList!1884 zl!343) lt!2412785)))

(declare-fun b!6598616 () Bool)

(assert (=> b!6598616 (= e!3992841 (Cons!65564 (generalisedConcat!2060 (exprs!6347 (h!72014 zl!343))) (unfocusZipperList!1884 (t!379342 zl!343))))))

(declare-fun b!6598617 () Bool)

(assert (=> b!6598617 (= e!3992841 Nil!65564)))

(assert (= (and d!2069985 c!1215367) b!6598616))

(assert (= (and d!2069985 (not c!1215367)) b!6598617))

(declare-fun m!7375350 () Bool)

(assert (=> d!2069985 m!7375350))

(assert (=> b!6598616 m!7374570))

(declare-fun m!7375352 () Bool)

(assert (=> b!6598616 m!7375352))

(assert (=> b!6597625 d!2069985))

(declare-fun d!2069987 () Bool)

(assert (=> d!2069987 (= (nullable!6456 (regOne!33438 (regOne!33438 r!7292))) (nullableFct!2382 (regOne!33438 (regOne!33438 r!7292))))))

(declare-fun bs!1692022 () Bool)

(assert (= bs!1692022 d!2069987))

(declare-fun m!7375354 () Bool)

(assert (=> bs!1692022 m!7375354))

(assert (=> b!6597626 d!2069987))

(declare-fun b!6598652 () Bool)

(declare-fun e!3992868 () Int)

(assert (=> b!6598652 (= e!3992868 1)))

(declare-fun b!6598653 () Bool)

(declare-fun e!3992862 () Bool)

(declare-fun e!3992863 () Bool)

(assert (=> b!6598653 (= e!3992862 e!3992863)))

(declare-fun res!2705625 () Bool)

(declare-fun lt!2412788 () Int)

(declare-fun call!577017 () Int)

(assert (=> b!6598653 (= res!2705625 (> lt!2412788 call!577017))))

(assert (=> b!6598653 (=> (not res!2705625) (not e!3992863))))

(declare-fun b!6598654 () Bool)

(declare-fun c!1215385 () Bool)

(assert (=> b!6598654 (= c!1215385 ((_ is Union!16463) r!7292))))

(declare-fun e!3992867 () Int)

(declare-fun e!3992871 () Int)

(assert (=> b!6598654 (= e!3992867 e!3992871)))

(declare-fun b!6598655 () Bool)

(declare-fun e!3992864 () Int)

(assert (=> b!6598655 (= e!3992864 1)))

(declare-fun b!6598656 () Bool)

(declare-fun e!3992869 () Bool)

(declare-fun call!577019 () Int)

(assert (=> b!6598656 (= e!3992869 (> lt!2412788 call!577019))))

(declare-fun call!577014 () Int)

(declare-fun bm!577009 () Bool)

(declare-fun call!577015 () Int)

(declare-fun call!577020 () Int)

(assert (=> bm!577009 (= call!577015 (maxBigInt!0 (ite c!1215385 call!577020 call!577014) (ite c!1215385 call!577014 call!577020)))))

(declare-fun bm!577010 () Bool)

(declare-fun c!1215382 () Bool)

(assert (=> bm!577010 (= call!577017 (regexDepth!360 (ite c!1215382 (regOne!33439 r!7292) (regTwo!33438 r!7292))))))

(declare-fun bm!577011 () Bool)

(declare-fun call!577016 () Int)

(declare-fun c!1215384 () Bool)

(assert (=> bm!577011 (= call!577016 (regexDepth!360 (ite c!1215384 (reg!16792 r!7292) (ite c!1215385 (regTwo!33439 r!7292) (regOne!33438 r!7292)))))))

(declare-fun b!6598657 () Bool)

(assert (=> b!6598657 (= e!3992864 e!3992867)))

(assert (=> b!6598657 (= c!1215384 ((_ is Star!16463) r!7292))))

(declare-fun bm!577012 () Bool)

(assert (=> bm!577012 (= call!577020 (regexDepth!360 (ite c!1215385 (regOne!33439 r!7292) (regTwo!33438 r!7292))))))

(declare-fun b!6598658 () Bool)

(assert (=> b!6598658 (= e!3992871 e!3992868)))

(declare-fun c!1215383 () Bool)

(assert (=> b!6598658 (= c!1215383 ((_ is Concat!25308) r!7292))))

(declare-fun b!6598659 () Bool)

(declare-fun call!577018 () Int)

(assert (=> b!6598659 (= e!3992863 (> lt!2412788 call!577018))))

(declare-fun b!6598660 () Bool)

(declare-fun c!1215386 () Bool)

(assert (=> b!6598660 (= c!1215386 ((_ is Star!16463) r!7292))))

(declare-fun e!3992866 () Bool)

(assert (=> b!6598660 (= e!3992866 e!3992869)))

(declare-fun bm!577013 () Bool)

(assert (=> bm!577013 (= call!577019 call!577018)))

(declare-fun b!6598662 () Bool)

(assert (=> b!6598662 (= e!3992871 (+ 1 call!577015))))

(declare-fun b!6598663 () Bool)

(declare-fun res!2705626 () Bool)

(declare-fun e!3992865 () Bool)

(assert (=> b!6598663 (=> (not res!2705626) (not e!3992865))))

(assert (=> b!6598663 (= res!2705626 (> lt!2412788 call!577019))))

(assert (=> b!6598663 (= e!3992866 e!3992865)))

(declare-fun b!6598664 () Bool)

(assert (=> b!6598664 (= e!3992869 (= lt!2412788 1))))

(declare-fun b!6598665 () Bool)

(declare-fun e!3992870 () Bool)

(assert (=> b!6598665 (= e!3992870 e!3992862)))

(assert (=> b!6598665 (= c!1215382 ((_ is Union!16463) r!7292))))

(declare-fun bm!577014 () Bool)

(declare-fun c!1215388 () Bool)

(assert (=> bm!577014 (= call!577018 (regexDepth!360 (ite c!1215382 (regTwo!33439 r!7292) (ite c!1215388 (regOne!33438 r!7292) (reg!16792 r!7292)))))))

(declare-fun b!6598666 () Bool)

(assert (=> b!6598666 (= e!3992862 e!3992866)))

(assert (=> b!6598666 (= c!1215388 ((_ is Concat!25308) r!7292))))

(declare-fun bm!577015 () Bool)

(assert (=> bm!577015 (= call!577014 call!577016)))

(declare-fun b!6598667 () Bool)

(assert (=> b!6598667 (= e!3992868 (+ 1 call!577015))))

(declare-fun b!6598668 () Bool)

(assert (=> b!6598668 (= e!3992867 (+ 1 call!577016))))

(declare-fun d!2069989 () Bool)

(assert (=> d!2069989 e!3992870))

(declare-fun res!2705624 () Bool)

(assert (=> d!2069989 (=> (not res!2705624) (not e!3992870))))

(assert (=> d!2069989 (= res!2705624 (> lt!2412788 0))))

(assert (=> d!2069989 (= lt!2412788 e!3992864)))

(declare-fun c!1215387 () Bool)

(assert (=> d!2069989 (= c!1215387 ((_ is ElementMatch!16463) r!7292))))

(assert (=> d!2069989 (= (regexDepth!360 r!7292) lt!2412788)))

(declare-fun b!6598661 () Bool)

(assert (=> b!6598661 (= e!3992865 (> lt!2412788 call!577017))))

(assert (= (and d!2069989 c!1215387) b!6598655))

(assert (= (and d!2069989 (not c!1215387)) b!6598657))

(assert (= (and b!6598657 c!1215384) b!6598668))

(assert (= (and b!6598657 (not c!1215384)) b!6598654))

(assert (= (and b!6598654 c!1215385) b!6598662))

(assert (= (and b!6598654 (not c!1215385)) b!6598658))

(assert (= (and b!6598658 c!1215383) b!6598667))

(assert (= (and b!6598658 (not c!1215383)) b!6598652))

(assert (= (or b!6598662 b!6598667) bm!577015))

(assert (= (or b!6598662 b!6598667) bm!577012))

(assert (= (or b!6598662 b!6598667) bm!577009))

(assert (= (or b!6598668 bm!577015) bm!577011))

(assert (= (and d!2069989 res!2705624) b!6598665))

(assert (= (and b!6598665 c!1215382) b!6598653))

(assert (= (and b!6598665 (not c!1215382)) b!6598666))

(assert (= (and b!6598653 res!2705625) b!6598659))

(assert (= (and b!6598666 c!1215388) b!6598663))

(assert (= (and b!6598666 (not c!1215388)) b!6598660))

(assert (= (and b!6598663 res!2705626) b!6598661))

(assert (= (and b!6598660 c!1215386) b!6598656))

(assert (= (and b!6598660 (not c!1215386)) b!6598664))

(assert (= (or b!6598663 b!6598656) bm!577013))

(assert (= (or b!6598659 bm!577013) bm!577014))

(assert (= (or b!6598653 b!6598661) bm!577010))

(declare-fun m!7375356 () Bool)

(assert (=> bm!577014 m!7375356))

(declare-fun m!7375358 () Bool)

(assert (=> bm!577011 m!7375358))

(declare-fun m!7375360 () Bool)

(assert (=> bm!577010 m!7375360))

(declare-fun m!7375362 () Bool)

(assert (=> bm!577012 m!7375362))

(declare-fun m!7375364 () Bool)

(assert (=> bm!577009 m!7375364))

(assert (=> b!6597606 d!2069989))

(declare-fun b!6598669 () Bool)

(declare-fun e!3992878 () Int)

(assert (=> b!6598669 (= e!3992878 1)))

(declare-fun b!6598670 () Bool)

(declare-fun e!3992872 () Bool)

(declare-fun e!3992873 () Bool)

(assert (=> b!6598670 (= e!3992872 e!3992873)))

(declare-fun res!2705628 () Bool)

(declare-fun lt!2412789 () Int)

(declare-fun call!577024 () Int)

(assert (=> b!6598670 (= res!2705628 (> lt!2412789 call!577024))))

(assert (=> b!6598670 (=> (not res!2705628) (not e!3992873))))

(declare-fun b!6598671 () Bool)

(declare-fun c!1215392 () Bool)

(assert (=> b!6598671 (= c!1215392 ((_ is Union!16463) lt!2412611))))

(declare-fun e!3992877 () Int)

(declare-fun e!3992881 () Int)

(assert (=> b!6598671 (= e!3992877 e!3992881)))

(declare-fun b!6598672 () Bool)

(declare-fun e!3992874 () Int)

(assert (=> b!6598672 (= e!3992874 1)))

(declare-fun b!6598673 () Bool)

(declare-fun e!3992879 () Bool)

(declare-fun call!577026 () Int)

(assert (=> b!6598673 (= e!3992879 (> lt!2412789 call!577026))))

(declare-fun call!577021 () Int)

(declare-fun bm!577016 () Bool)

(declare-fun call!577022 () Int)

(declare-fun call!577027 () Int)

(assert (=> bm!577016 (= call!577022 (maxBigInt!0 (ite c!1215392 call!577027 call!577021) (ite c!1215392 call!577021 call!577027)))))

(declare-fun bm!577017 () Bool)

(declare-fun c!1215389 () Bool)

(assert (=> bm!577017 (= call!577024 (regexDepth!360 (ite c!1215389 (regOne!33439 lt!2412611) (regTwo!33438 lt!2412611))))))

(declare-fun call!577023 () Int)

(declare-fun c!1215391 () Bool)

(declare-fun bm!577018 () Bool)

(assert (=> bm!577018 (= call!577023 (regexDepth!360 (ite c!1215391 (reg!16792 lt!2412611) (ite c!1215392 (regTwo!33439 lt!2412611) (regOne!33438 lt!2412611)))))))

(declare-fun b!6598674 () Bool)

(assert (=> b!6598674 (= e!3992874 e!3992877)))

(assert (=> b!6598674 (= c!1215391 ((_ is Star!16463) lt!2412611))))

(declare-fun bm!577019 () Bool)

(assert (=> bm!577019 (= call!577027 (regexDepth!360 (ite c!1215392 (regOne!33439 lt!2412611) (regTwo!33438 lt!2412611))))))

(declare-fun b!6598675 () Bool)

(assert (=> b!6598675 (= e!3992881 e!3992878)))

(declare-fun c!1215390 () Bool)

(assert (=> b!6598675 (= c!1215390 ((_ is Concat!25308) lt!2412611))))

(declare-fun b!6598676 () Bool)

(declare-fun call!577025 () Int)

(assert (=> b!6598676 (= e!3992873 (> lt!2412789 call!577025))))

(declare-fun b!6598677 () Bool)

(declare-fun c!1215393 () Bool)

(assert (=> b!6598677 (= c!1215393 ((_ is Star!16463) lt!2412611))))

(declare-fun e!3992876 () Bool)

(assert (=> b!6598677 (= e!3992876 e!3992879)))

(declare-fun bm!577020 () Bool)

(assert (=> bm!577020 (= call!577026 call!577025)))

(declare-fun b!6598679 () Bool)

(assert (=> b!6598679 (= e!3992881 (+ 1 call!577022))))

(declare-fun b!6598680 () Bool)

(declare-fun res!2705629 () Bool)

(declare-fun e!3992875 () Bool)

(assert (=> b!6598680 (=> (not res!2705629) (not e!3992875))))

(assert (=> b!6598680 (= res!2705629 (> lt!2412789 call!577026))))

(assert (=> b!6598680 (= e!3992876 e!3992875)))

(declare-fun b!6598681 () Bool)

(assert (=> b!6598681 (= e!3992879 (= lt!2412789 1))))

(declare-fun b!6598682 () Bool)

(declare-fun e!3992880 () Bool)

(assert (=> b!6598682 (= e!3992880 e!3992872)))

(assert (=> b!6598682 (= c!1215389 ((_ is Union!16463) lt!2412611))))

(declare-fun c!1215395 () Bool)

(declare-fun bm!577021 () Bool)

(assert (=> bm!577021 (= call!577025 (regexDepth!360 (ite c!1215389 (regTwo!33439 lt!2412611) (ite c!1215395 (regOne!33438 lt!2412611) (reg!16792 lt!2412611)))))))

(declare-fun b!6598683 () Bool)

(assert (=> b!6598683 (= e!3992872 e!3992876)))

(assert (=> b!6598683 (= c!1215395 ((_ is Concat!25308) lt!2412611))))

(declare-fun bm!577022 () Bool)

(assert (=> bm!577022 (= call!577021 call!577023)))

(declare-fun b!6598684 () Bool)

(assert (=> b!6598684 (= e!3992878 (+ 1 call!577022))))

(declare-fun b!6598685 () Bool)

(assert (=> b!6598685 (= e!3992877 (+ 1 call!577023))))

(declare-fun d!2069991 () Bool)

(assert (=> d!2069991 e!3992880))

(declare-fun res!2705627 () Bool)

(assert (=> d!2069991 (=> (not res!2705627) (not e!3992880))))

(assert (=> d!2069991 (= res!2705627 (> lt!2412789 0))))

(assert (=> d!2069991 (= lt!2412789 e!3992874)))

(declare-fun c!1215394 () Bool)

(assert (=> d!2069991 (= c!1215394 ((_ is ElementMatch!16463) lt!2412611))))

(assert (=> d!2069991 (= (regexDepth!360 lt!2412611) lt!2412789)))

(declare-fun b!6598678 () Bool)

(assert (=> b!6598678 (= e!3992875 (> lt!2412789 call!577024))))

(assert (= (and d!2069991 c!1215394) b!6598672))

(assert (= (and d!2069991 (not c!1215394)) b!6598674))

(assert (= (and b!6598674 c!1215391) b!6598685))

(assert (= (and b!6598674 (not c!1215391)) b!6598671))

(assert (= (and b!6598671 c!1215392) b!6598679))

(assert (= (and b!6598671 (not c!1215392)) b!6598675))

(assert (= (and b!6598675 c!1215390) b!6598684))

(assert (= (and b!6598675 (not c!1215390)) b!6598669))

(assert (= (or b!6598679 b!6598684) bm!577022))

(assert (= (or b!6598679 b!6598684) bm!577019))

(assert (= (or b!6598679 b!6598684) bm!577016))

(assert (= (or b!6598685 bm!577022) bm!577018))

(assert (= (and d!2069991 res!2705627) b!6598682))

(assert (= (and b!6598682 c!1215389) b!6598670))

(assert (= (and b!6598682 (not c!1215389)) b!6598683))

(assert (= (and b!6598670 res!2705628) b!6598676))

(assert (= (and b!6598683 c!1215395) b!6598680))

(assert (= (and b!6598683 (not c!1215395)) b!6598677))

(assert (= (and b!6598680 res!2705629) b!6598678))

(assert (= (and b!6598677 c!1215393) b!6598673))

(assert (= (and b!6598677 (not c!1215393)) b!6598681))

(assert (= (or b!6598680 b!6598673) bm!577020))

(assert (= (or b!6598676 bm!577020) bm!577021))

(assert (= (or b!6598670 b!6598678) bm!577017))

(declare-fun m!7375366 () Bool)

(assert (=> bm!577021 m!7375366))

(declare-fun m!7375368 () Bool)

(assert (=> bm!577018 m!7375368))

(declare-fun m!7375370 () Bool)

(assert (=> bm!577017 m!7375370))

(declare-fun m!7375372 () Bool)

(assert (=> bm!577019 m!7375372))

(declare-fun m!7375374 () Bool)

(assert (=> bm!577016 m!7375374))

(assert (=> b!6597606 d!2069991))

(declare-fun bs!1692023 () Bool)

(declare-fun d!2069993 () Bool)

(assert (= bs!1692023 (and d!2069993 d!2069957)))

(declare-fun lambda!367732 () Int)

(assert (=> bs!1692023 (= lambda!367732 lambda!367713)))

(declare-fun bs!1692024 () Bool)

(assert (= bs!1692024 (and d!2069993 d!2069961)))

(assert (=> bs!1692024 (= lambda!367732 lambda!367716)))

(declare-fun bs!1692025 () Bool)

(assert (= bs!1692025 (and d!2069993 d!2069983)))

(assert (=> bs!1692025 (= lambda!367732 lambda!367728)))

(declare-fun bs!1692026 () Bool)

(assert (= bs!1692026 (and d!2069993 d!2069985)))

(assert (=> bs!1692026 (= lambda!367732 lambda!367731)))

(declare-fun b!6598686 () Bool)

(declare-fun e!3992882 () Bool)

(declare-fun lt!2412790 () Regex!16463)

(assert (=> b!6598686 (= e!3992882 (= lt!2412790 (head!13378 (t!379340 (exprs!6347 (h!72014 zl!343))))))))

(declare-fun b!6598687 () Bool)

(declare-fun e!3992884 () Regex!16463)

(declare-fun e!3992887 () Regex!16463)

(assert (=> b!6598687 (= e!3992884 e!3992887)))

(declare-fun c!1215398 () Bool)

(assert (=> b!6598687 (= c!1215398 ((_ is Cons!65564) (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6598688 () Bool)

(assert (=> b!6598688 (= e!3992887 (Concat!25308 (h!72012 (t!379340 (exprs!6347 (h!72014 zl!343)))) (generalisedConcat!2060 (t!379340 (t!379340 (exprs!6347 (h!72014 zl!343)))))))))

(declare-fun b!6598689 () Bool)

(declare-fun e!3992885 () Bool)

(declare-fun e!3992886 () Bool)

(assert (=> b!6598689 (= e!3992885 e!3992886)))

(declare-fun c!1215399 () Bool)

(assert (=> b!6598689 (= c!1215399 (isEmpty!37829 (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(assert (=> d!2069993 e!3992885))

(declare-fun res!2705631 () Bool)

(assert (=> d!2069993 (=> (not res!2705631) (not e!3992885))))

(assert (=> d!2069993 (= res!2705631 (validRegex!8199 lt!2412790))))

(assert (=> d!2069993 (= lt!2412790 e!3992884)))

(declare-fun c!1215396 () Bool)

(declare-fun e!3992883 () Bool)

(assert (=> d!2069993 (= c!1215396 e!3992883)))

(declare-fun res!2705630 () Bool)

(assert (=> d!2069993 (=> (not res!2705630) (not e!3992883))))

(assert (=> d!2069993 (= res!2705630 ((_ is Cons!65564) (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(assert (=> d!2069993 (forall!15651 (t!379340 (exprs!6347 (h!72014 zl!343))) lambda!367732)))

(assert (=> d!2069993 (= (generalisedConcat!2060 (t!379340 (exprs!6347 (h!72014 zl!343)))) lt!2412790)))

(declare-fun b!6598690 () Bool)

(assert (=> b!6598690 (= e!3992886 e!3992882)))

(declare-fun c!1215397 () Bool)

(assert (=> b!6598690 (= c!1215397 (isEmpty!37829 (tail!12463 (t!379340 (exprs!6347 (h!72014 zl!343))))))))

(declare-fun b!6598691 () Bool)

(assert (=> b!6598691 (= e!3992882 (isConcat!1364 lt!2412790))))

(declare-fun b!6598692 () Bool)

(assert (=> b!6598692 (= e!3992884 (h!72012 (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(declare-fun b!6598693 () Bool)

(assert (=> b!6598693 (= e!3992887 EmptyExpr!16463)))

(declare-fun b!6598694 () Bool)

(assert (=> b!6598694 (= e!3992886 (isEmptyExpr!1841 lt!2412790))))

(declare-fun b!6598695 () Bool)

(assert (=> b!6598695 (= e!3992883 (isEmpty!37829 (t!379340 (t!379340 (exprs!6347 (h!72014 zl!343))))))))

(assert (= (and d!2069993 res!2705630) b!6598695))

(assert (= (and d!2069993 c!1215396) b!6598692))

(assert (= (and d!2069993 (not c!1215396)) b!6598687))

(assert (= (and b!6598687 c!1215398) b!6598688))

(assert (= (and b!6598687 (not c!1215398)) b!6598693))

(assert (= (and d!2069993 res!2705631) b!6598689))

(assert (= (and b!6598689 c!1215399) b!6598694))

(assert (= (and b!6598689 (not c!1215399)) b!6598690))

(assert (= (and b!6598690 c!1215397) b!6598686))

(assert (= (and b!6598690 (not c!1215397)) b!6598691))

(declare-fun m!7375376 () Bool)

(assert (=> b!6598686 m!7375376))

(declare-fun m!7375378 () Bool)

(assert (=> b!6598694 m!7375378))

(declare-fun m!7375380 () Bool)

(assert (=> b!6598691 m!7375380))

(assert (=> b!6598689 m!7374576))

(declare-fun m!7375382 () Bool)

(assert (=> b!6598695 m!7375382))

(declare-fun m!7375384 () Bool)

(assert (=> d!2069993 m!7375384))

(declare-fun m!7375386 () Bool)

(assert (=> d!2069993 m!7375386))

(declare-fun m!7375388 () Bool)

(assert (=> b!6598688 m!7375388))

(declare-fun m!7375390 () Bool)

(assert (=> b!6598690 m!7375390))

(assert (=> b!6598690 m!7375390))

(declare-fun m!7375392 () Bool)

(assert (=> b!6598690 m!7375392))

(assert (=> b!6597606 d!2069993))

(declare-fun d!2069995 () Bool)

(assert (=> d!2069995 (= (isEmpty!37829 (t!379340 (exprs!6347 (h!72014 zl!343)))) ((_ is Nil!65564) (t!379340 (exprs!6347 (h!72014 zl!343)))))))

(assert (=> b!6597585 d!2069995))

(declare-fun b!6598696 () Bool)

(declare-fun e!3992888 () (InoxSet Context!11694))

(declare-fun call!577028 () (InoxSet Context!11694))

(assert (=> b!6598696 (= e!3992888 call!577028)))

(declare-fun b!6598697 () Bool)

(declare-fun e!3992893 () (InoxSet Context!11694))

(declare-fun e!3992889 () (InoxSet Context!11694))

(assert (=> b!6598697 (= e!3992893 e!3992889)))

(declare-fun c!1215403 () Bool)

(assert (=> b!6598697 (= c!1215403 ((_ is Union!16463) (reg!16792 (regOne!33438 r!7292))))))

(declare-fun b!6598698 () Bool)

(declare-fun c!1215400 () Bool)

(declare-fun e!3992891 () Bool)

(assert (=> b!6598698 (= c!1215400 e!3992891)))

(declare-fun res!2705632 () Bool)

(assert (=> b!6598698 (=> (not res!2705632) (not e!3992891))))

(assert (=> b!6598698 (= res!2705632 ((_ is Concat!25308) (reg!16792 (regOne!33438 r!7292))))))

(declare-fun e!3992892 () (InoxSet Context!11694))

(assert (=> b!6598698 (= e!3992889 e!3992892)))

(declare-fun b!6598699 () Bool)

(declare-fun call!577029 () (InoxSet Context!11694))

(declare-fun call!577030 () (InoxSet Context!11694))

(assert (=> b!6598699 (= e!3992889 ((_ map or) call!577029 call!577030))))

(declare-fun bm!577024 () Bool)

(declare-fun call!577031 () List!65688)

(declare-fun c!1215402 () Bool)

(assert (=> bm!577024 (= call!577031 ($colon$colon!2304 (exprs!6347 lt!2412618) (ite (or c!1215400 c!1215402) (regTwo!33438 (reg!16792 (regOne!33438 r!7292))) (reg!16792 (regOne!33438 r!7292)))))))

(declare-fun bm!577025 () Bool)

(declare-fun call!577032 () (InoxSet Context!11694))

(assert (=> bm!577025 (= call!577032 call!577030)))

(declare-fun b!6598700 () Bool)

(declare-fun e!3992890 () (InoxSet Context!11694))

(assert (=> b!6598700 (= e!3992890 call!577028)))

(declare-fun b!6598701 () Bool)

(assert (=> b!6598701 (= e!3992893 (store ((as const (Array Context!11694 Bool)) false) lt!2412618 true))))

(declare-fun b!6598702 () Bool)

(assert (=> b!6598702 (= e!3992892 ((_ map or) call!577029 call!577032))))

(declare-fun b!6598703 () Bool)

(declare-fun c!1215401 () Bool)

(assert (=> b!6598703 (= c!1215401 ((_ is Star!16463) (reg!16792 (regOne!33438 r!7292))))))

(assert (=> b!6598703 (= e!3992890 e!3992888)))

(declare-fun d!2069997 () Bool)

(declare-fun c!1215404 () Bool)

(assert (=> d!2069997 (= c!1215404 (and ((_ is ElementMatch!16463) (reg!16792 (regOne!33438 r!7292))) (= (c!1215062 (reg!16792 (regOne!33438 r!7292))) (h!72013 s!2326))))))

(assert (=> d!2069997 (= (derivationStepZipperDown!1711 (reg!16792 (regOne!33438 r!7292)) lt!2412618 (h!72013 s!2326)) e!3992893)))

(declare-fun bm!577023 () Bool)

(declare-fun call!577033 () List!65688)

(assert (=> bm!577023 (= call!577033 call!577031)))

(declare-fun b!6598704 () Bool)

(assert (=> b!6598704 (= e!3992892 e!3992890)))

(assert (=> b!6598704 (= c!1215402 ((_ is Concat!25308) (reg!16792 (regOne!33438 r!7292))))))

(declare-fun b!6598705 () Bool)

(assert (=> b!6598705 (= e!3992888 ((as const (Array Context!11694 Bool)) false))))

(declare-fun bm!577026 () Bool)

(assert (=> bm!577026 (= call!577029 (derivationStepZipperDown!1711 (ite c!1215403 (regOne!33439 (reg!16792 (regOne!33438 r!7292))) (regOne!33438 (reg!16792 (regOne!33438 r!7292)))) (ite c!1215403 lt!2412618 (Context!11695 call!577031)) (h!72013 s!2326)))))

(declare-fun bm!577027 () Bool)

(assert (=> bm!577027 (= call!577028 call!577032)))

(declare-fun b!6598706 () Bool)

(assert (=> b!6598706 (= e!3992891 (nullable!6456 (regOne!33438 (reg!16792 (regOne!33438 r!7292)))))))

(declare-fun bm!577028 () Bool)

(assert (=> bm!577028 (= call!577030 (derivationStepZipperDown!1711 (ite c!1215403 (regTwo!33439 (reg!16792 (regOne!33438 r!7292))) (ite c!1215400 (regTwo!33438 (reg!16792 (regOne!33438 r!7292))) (ite c!1215402 (regOne!33438 (reg!16792 (regOne!33438 r!7292))) (reg!16792 (reg!16792 (regOne!33438 r!7292)))))) (ite (or c!1215403 c!1215400) lt!2412618 (Context!11695 call!577033)) (h!72013 s!2326)))))

(assert (= (and d!2069997 c!1215404) b!6598701))

(assert (= (and d!2069997 (not c!1215404)) b!6598697))

(assert (= (and b!6598697 c!1215403) b!6598699))

(assert (= (and b!6598697 (not c!1215403)) b!6598698))

(assert (= (and b!6598698 res!2705632) b!6598706))

(assert (= (and b!6598698 c!1215400) b!6598702))

(assert (= (and b!6598698 (not c!1215400)) b!6598704))

(assert (= (and b!6598704 c!1215402) b!6598700))

(assert (= (and b!6598704 (not c!1215402)) b!6598703))

(assert (= (and b!6598703 c!1215401) b!6598696))

(assert (= (and b!6598703 (not c!1215401)) b!6598705))

(assert (= (or b!6598700 b!6598696) bm!577023))

(assert (= (or b!6598700 b!6598696) bm!577027))

(assert (= (or b!6598702 bm!577023) bm!577024))

(assert (= (or b!6598702 bm!577027) bm!577025))

(assert (= (or b!6598699 bm!577025) bm!577028))

(assert (= (or b!6598699 b!6598702) bm!577026))

(assert (=> b!6598701 m!7374592))

(declare-fun m!7375394 () Bool)

(assert (=> bm!577024 m!7375394))

(declare-fun m!7375396 () Bool)

(assert (=> b!6598706 m!7375396))

(declare-fun m!7375398 () Bool)

(assert (=> bm!577026 m!7375398))

(declare-fun m!7375400 () Bool)

(assert (=> bm!577028 m!7375400))

(assert (=> b!6597593 d!2069997))

(declare-fun bs!1692027 () Bool)

(declare-fun d!2069999 () Bool)

(assert (= bs!1692027 (and d!2069999 d!2069961)))

(declare-fun lambda!367733 () Int)

(assert (=> bs!1692027 (= lambda!367733 lambda!367716)))

(declare-fun bs!1692028 () Bool)

(assert (= bs!1692028 (and d!2069999 d!2069957)))

(assert (=> bs!1692028 (= lambda!367733 lambda!367713)))

(declare-fun bs!1692029 () Bool)

(assert (= bs!1692029 (and d!2069999 d!2069983)))

(assert (=> bs!1692029 (= lambda!367733 lambda!367728)))

(declare-fun bs!1692030 () Bool)

(assert (= bs!1692030 (and d!2069999 d!2069993)))

(assert (=> bs!1692030 (= lambda!367733 lambda!367732)))

(declare-fun bs!1692031 () Bool)

(assert (= bs!1692031 (and d!2069999 d!2069985)))

(assert (=> bs!1692031 (= lambda!367733 lambda!367731)))

(assert (=> d!2069999 (= (inv!84404 setElem!45048) (forall!15651 (exprs!6347 setElem!45048) lambda!367733))))

(declare-fun bs!1692032 () Bool)

(assert (= bs!1692032 d!2069999))

(declare-fun m!7375402 () Bool)

(assert (=> bs!1692032 m!7375402))

(assert (=> setNonEmpty!45048 d!2069999))

(declare-fun d!2070001 () Bool)

(declare-fun lt!2412791 () Regex!16463)

(assert (=> d!2070001 (validRegex!8199 lt!2412791)))

(assert (=> d!2070001 (= lt!2412791 (generalisedUnion!2307 (unfocusZipperList!1884 (Cons!65566 lt!2412609 Nil!65566))))))

(assert (=> d!2070001 (= (unfocusZipper!2205 (Cons!65566 lt!2412609 Nil!65566)) lt!2412791)))

(declare-fun bs!1692033 () Bool)

(assert (= bs!1692033 d!2070001))

(declare-fun m!7375404 () Bool)

(assert (=> bs!1692033 m!7375404))

(declare-fun m!7375406 () Bool)

(assert (=> bs!1692033 m!7375406))

(assert (=> bs!1692033 m!7375406))

(declare-fun m!7375408 () Bool)

(assert (=> bs!1692033 m!7375408))

(assert (=> b!6597610 d!2070001))

(declare-fun d!2070003 () Bool)

(assert (=> d!2070003 (= (flatMap!1968 lt!2412631 lambda!367635) (dynLambda!26110 lambda!367635 lt!2412620))))

(declare-fun lt!2412792 () Unit!159187)

(assert (=> d!2070003 (= lt!2412792 (choose!49240 lt!2412631 lt!2412620 lambda!367635))))

(assert (=> d!2070003 (= lt!2412631 (store ((as const (Array Context!11694 Bool)) false) lt!2412620 true))))

(assert (=> d!2070003 (= (lemmaFlatMapOnSingletonSet!1494 lt!2412631 lt!2412620 lambda!367635) lt!2412792)))

(declare-fun b_lambda!249763 () Bool)

(assert (=> (not b_lambda!249763) (not d!2070003)))

(declare-fun bs!1692034 () Bool)

(assert (= bs!1692034 d!2070003))

(assert (=> bs!1692034 m!7374590))

(declare-fun m!7375410 () Bool)

(assert (=> bs!1692034 m!7375410))

(declare-fun m!7375412 () Bool)

(assert (=> bs!1692034 m!7375412))

(assert (=> bs!1692034 m!7374586))

(assert (=> b!6597591 d!2070003))

(declare-fun d!2070005 () Bool)

(declare-fun c!1215406 () Bool)

(declare-fun e!3992894 () Bool)

(assert (=> d!2070005 (= c!1215406 e!3992894)))

(declare-fun res!2705633 () Bool)

(assert (=> d!2070005 (=> (not res!2705633) (not e!3992894))))

(assert (=> d!2070005 (= res!2705633 ((_ is Cons!65564) (exprs!6347 lt!2412620)))))

(declare-fun e!3992895 () (InoxSet Context!11694))

(assert (=> d!2070005 (= (derivationStepZipperUp!1637 lt!2412620 (h!72013 s!2326)) e!3992895)))

(declare-fun b!6598707 () Bool)

(declare-fun e!3992896 () (InoxSet Context!11694))

(assert (=> b!6598707 (= e!3992896 ((as const (Array Context!11694 Bool)) false))))

(declare-fun call!577034 () (InoxSet Context!11694))

(declare-fun b!6598708 () Bool)

(assert (=> b!6598708 (= e!3992895 ((_ map or) call!577034 (derivationStepZipperUp!1637 (Context!11695 (t!379340 (exprs!6347 lt!2412620))) (h!72013 s!2326))))))

(declare-fun b!6598709 () Bool)

(assert (=> b!6598709 (= e!3992894 (nullable!6456 (h!72012 (exprs!6347 lt!2412620))))))

(declare-fun bm!577029 () Bool)

(assert (=> bm!577029 (= call!577034 (derivationStepZipperDown!1711 (h!72012 (exprs!6347 lt!2412620)) (Context!11695 (t!379340 (exprs!6347 lt!2412620))) (h!72013 s!2326)))))

(declare-fun b!6598710 () Bool)

(assert (=> b!6598710 (= e!3992895 e!3992896)))

(declare-fun c!1215405 () Bool)

(assert (=> b!6598710 (= c!1215405 ((_ is Cons!65564) (exprs!6347 lt!2412620)))))

(declare-fun b!6598711 () Bool)

(assert (=> b!6598711 (= e!3992896 call!577034)))

(assert (= (and d!2070005 res!2705633) b!6598709))

(assert (= (and d!2070005 c!1215406) b!6598708))

(assert (= (and d!2070005 (not c!1215406)) b!6598710))

(assert (= (and b!6598710 c!1215405) b!6598711))

(assert (= (and b!6598710 (not c!1215405)) b!6598707))

(assert (= (or b!6598708 b!6598711) bm!577029))

(declare-fun m!7375414 () Bool)

(assert (=> b!6598708 m!7375414))

(declare-fun m!7375416 () Bool)

(assert (=> b!6598709 m!7375416))

(declare-fun m!7375418 () Bool)

(assert (=> bm!577029 m!7375418))

(assert (=> b!6597591 d!2070005))

(declare-fun d!2070007 () Bool)

(assert (=> d!2070007 (= (flatMap!1968 lt!2412625 lambda!367635) (dynLambda!26110 lambda!367635 lt!2412618))))

(declare-fun lt!2412793 () Unit!159187)

(assert (=> d!2070007 (= lt!2412793 (choose!49240 lt!2412625 lt!2412618 lambda!367635))))

(assert (=> d!2070007 (= lt!2412625 (store ((as const (Array Context!11694 Bool)) false) lt!2412618 true))))

(assert (=> d!2070007 (= (lemmaFlatMapOnSingletonSet!1494 lt!2412625 lt!2412618 lambda!367635) lt!2412793)))

(declare-fun b_lambda!249765 () Bool)

(assert (=> (not b_lambda!249765) (not d!2070007)))

(declare-fun bs!1692035 () Bool)

(assert (= bs!1692035 d!2070007))

(assert (=> bs!1692035 m!7374588))

(declare-fun m!7375420 () Bool)

(assert (=> bs!1692035 m!7375420))

(declare-fun m!7375422 () Bool)

(assert (=> bs!1692035 m!7375422))

(assert (=> bs!1692035 m!7374592))

(assert (=> b!6597591 d!2070007))

(declare-fun d!2070009 () Bool)

(assert (=> d!2070009 (= (flatMap!1968 lt!2412631 lambda!367635) (choose!49239 lt!2412631 lambda!367635))))

(declare-fun bs!1692036 () Bool)

(assert (= bs!1692036 d!2070009))

(declare-fun m!7375424 () Bool)

(assert (=> bs!1692036 m!7375424))

(assert (=> b!6597591 d!2070009))

(declare-fun d!2070011 () Bool)

(declare-fun c!1215408 () Bool)

(declare-fun e!3992897 () Bool)

(assert (=> d!2070011 (= c!1215408 e!3992897)))

(declare-fun res!2705634 () Bool)

(assert (=> d!2070011 (=> (not res!2705634) (not e!3992897))))

(assert (=> d!2070011 (= res!2705634 ((_ is Cons!65564) (exprs!6347 lt!2412618)))))

(declare-fun e!3992898 () (InoxSet Context!11694))

(assert (=> d!2070011 (= (derivationStepZipperUp!1637 lt!2412618 (h!72013 s!2326)) e!3992898)))

(declare-fun b!6598712 () Bool)

(declare-fun e!3992899 () (InoxSet Context!11694))

(assert (=> b!6598712 (= e!3992899 ((as const (Array Context!11694 Bool)) false))))

(declare-fun b!6598713 () Bool)

(declare-fun call!577035 () (InoxSet Context!11694))

(assert (=> b!6598713 (= e!3992898 ((_ map or) call!577035 (derivationStepZipperUp!1637 (Context!11695 (t!379340 (exprs!6347 lt!2412618))) (h!72013 s!2326))))))

(declare-fun b!6598714 () Bool)

(assert (=> b!6598714 (= e!3992897 (nullable!6456 (h!72012 (exprs!6347 lt!2412618))))))

(declare-fun bm!577030 () Bool)

(assert (=> bm!577030 (= call!577035 (derivationStepZipperDown!1711 (h!72012 (exprs!6347 lt!2412618)) (Context!11695 (t!379340 (exprs!6347 lt!2412618))) (h!72013 s!2326)))))

(declare-fun b!6598715 () Bool)

(assert (=> b!6598715 (= e!3992898 e!3992899)))

(declare-fun c!1215407 () Bool)

(assert (=> b!6598715 (= c!1215407 ((_ is Cons!65564) (exprs!6347 lt!2412618)))))

(declare-fun b!6598716 () Bool)

(assert (=> b!6598716 (= e!3992899 call!577035)))

(assert (= (and d!2070011 res!2705634) b!6598714))

(assert (= (and d!2070011 c!1215408) b!6598713))

(assert (= (and d!2070011 (not c!1215408)) b!6598715))

(assert (= (and b!6598715 c!1215407) b!6598716))

(assert (= (and b!6598715 (not c!1215407)) b!6598712))

(assert (= (or b!6598713 b!6598716) bm!577030))

(declare-fun m!7375426 () Bool)

(assert (=> b!6598713 m!7375426))

(declare-fun m!7375428 () Bool)

(assert (=> b!6598714 m!7375428))

(declare-fun m!7375430 () Bool)

(assert (=> bm!577030 m!7375430))

(assert (=> b!6597591 d!2070011))

(declare-fun d!2070013 () Bool)

(declare-fun lt!2412794 () Regex!16463)

(assert (=> d!2070013 (validRegex!8199 lt!2412794)))

(assert (=> d!2070013 (= lt!2412794 (generalisedUnion!2307 (unfocusZipperList!1884 (Cons!65566 lt!2412620 Nil!65566))))))

(assert (=> d!2070013 (= (unfocusZipper!2205 (Cons!65566 lt!2412620 Nil!65566)) lt!2412794)))

(declare-fun bs!1692037 () Bool)

(assert (= bs!1692037 d!2070013))

(declare-fun m!7375432 () Bool)

(assert (=> bs!1692037 m!7375432))

(declare-fun m!7375434 () Bool)

(assert (=> bs!1692037 m!7375434))

(assert (=> bs!1692037 m!7375434))

(declare-fun m!7375436 () Bool)

(assert (=> bs!1692037 m!7375436))

(assert (=> b!6597591 d!2070013))

(declare-fun d!2070015 () Bool)

(assert (=> d!2070015 (= (flatMap!1968 lt!2412625 lambda!367635) (choose!49239 lt!2412625 lambda!367635))))

(declare-fun bs!1692038 () Bool)

(assert (= bs!1692038 d!2070015))

(declare-fun m!7375438 () Bool)

(assert (=> bs!1692038 m!7375438))

(assert (=> b!6597591 d!2070015))

(declare-fun b!6598727 () Bool)

(declare-fun e!3992902 () Bool)

(assert (=> b!6598727 (= e!3992902 tp_is_empty!42179)))

(declare-fun b!6598730 () Bool)

(declare-fun tp!1819504 () Bool)

(declare-fun tp!1819503 () Bool)

(assert (=> b!6598730 (= e!3992902 (and tp!1819504 tp!1819503))))

(declare-fun b!6598729 () Bool)

(declare-fun tp!1819500 () Bool)

(assert (=> b!6598729 (= e!3992902 tp!1819500)))

(declare-fun b!6598728 () Bool)

(declare-fun tp!1819501 () Bool)

(declare-fun tp!1819502 () Bool)

(assert (=> b!6598728 (= e!3992902 (and tp!1819501 tp!1819502))))

(assert (=> b!6597618 (= tp!1819427 e!3992902)))

(assert (= (and b!6597618 ((_ is ElementMatch!16463) (regOne!33439 r!7292))) b!6598727))

(assert (= (and b!6597618 ((_ is Concat!25308) (regOne!33439 r!7292))) b!6598728))

(assert (= (and b!6597618 ((_ is Star!16463) (regOne!33439 r!7292))) b!6598729))

(assert (= (and b!6597618 ((_ is Union!16463) (regOne!33439 r!7292))) b!6598730))

(declare-fun b!6598731 () Bool)

(declare-fun e!3992903 () Bool)

(assert (=> b!6598731 (= e!3992903 tp_is_empty!42179)))

(declare-fun b!6598734 () Bool)

(declare-fun tp!1819509 () Bool)

(declare-fun tp!1819508 () Bool)

(assert (=> b!6598734 (= e!3992903 (and tp!1819509 tp!1819508))))

(declare-fun b!6598733 () Bool)

(declare-fun tp!1819505 () Bool)

(assert (=> b!6598733 (= e!3992903 tp!1819505)))

(declare-fun b!6598732 () Bool)

(declare-fun tp!1819506 () Bool)

(declare-fun tp!1819507 () Bool)

(assert (=> b!6598732 (= e!3992903 (and tp!1819506 tp!1819507))))

(assert (=> b!6597618 (= tp!1819431 e!3992903)))

(assert (= (and b!6597618 ((_ is ElementMatch!16463) (regTwo!33439 r!7292))) b!6598731))

(assert (= (and b!6597618 ((_ is Concat!25308) (regTwo!33439 r!7292))) b!6598732))

(assert (= (and b!6597618 ((_ is Star!16463) (regTwo!33439 r!7292))) b!6598733))

(assert (= (and b!6597618 ((_ is Union!16463) (regTwo!33439 r!7292))) b!6598734))

(declare-fun b!6598739 () Bool)

(declare-fun e!3992906 () Bool)

(declare-fun tp!1819512 () Bool)

(assert (=> b!6598739 (= e!3992906 (and tp_is_empty!42179 tp!1819512))))

(assert (=> b!6597613 (= tp!1819426 e!3992906)))

(assert (= (and b!6597613 ((_ is Cons!65565) (t!379341 s!2326))) b!6598739))

(declare-fun b!6598744 () Bool)

(declare-fun e!3992909 () Bool)

(declare-fun tp!1819517 () Bool)

(declare-fun tp!1819518 () Bool)

(assert (=> b!6598744 (= e!3992909 (and tp!1819517 tp!1819518))))

(assert (=> b!6597584 (= tp!1819428 e!3992909)))

(assert (= (and b!6597584 ((_ is Cons!65564) (exprs!6347 (h!72014 zl!343)))) b!6598744))

(declare-fun condSetEmpty!45054 () Bool)

(assert (=> setNonEmpty!45048 (= condSetEmpty!45054 (= setRest!45048 ((as const (Array Context!11694 Bool)) false)))))

(declare-fun setRes!45054 () Bool)

(assert (=> setNonEmpty!45048 (= tp!1819422 setRes!45054)))

(declare-fun setIsEmpty!45054 () Bool)

(assert (=> setIsEmpty!45054 setRes!45054))

(declare-fun setNonEmpty!45054 () Bool)

(declare-fun setElem!45054 () Context!11694)

(declare-fun tp!1819523 () Bool)

(declare-fun e!3992912 () Bool)

(assert (=> setNonEmpty!45054 (= setRes!45054 (and tp!1819523 (inv!84404 setElem!45054) e!3992912))))

(declare-fun setRest!45054 () (InoxSet Context!11694))

(assert (=> setNonEmpty!45054 (= setRest!45048 ((_ map or) (store ((as const (Array Context!11694 Bool)) false) setElem!45054 true) setRest!45054))))

(declare-fun b!6598749 () Bool)

(declare-fun tp!1819524 () Bool)

(assert (=> b!6598749 (= e!3992912 tp!1819524)))

(assert (= (and setNonEmpty!45048 condSetEmpty!45054) setIsEmpty!45054))

(assert (= (and setNonEmpty!45048 (not condSetEmpty!45054)) setNonEmpty!45054))

(assert (= setNonEmpty!45054 b!6598749))

(declare-fun m!7375440 () Bool)

(assert (=> setNonEmpty!45054 m!7375440))

(declare-fun b!6598750 () Bool)

(declare-fun e!3992913 () Bool)

(declare-fun tp!1819525 () Bool)

(declare-fun tp!1819526 () Bool)

(assert (=> b!6598750 (= e!3992913 (and tp!1819525 tp!1819526))))

(assert (=> b!6597589 (= tp!1819423 e!3992913)))

(assert (= (and b!6597589 ((_ is Cons!65564) (exprs!6347 setElem!45048))) b!6598750))

(declare-fun b!6598751 () Bool)

(declare-fun e!3992914 () Bool)

(assert (=> b!6598751 (= e!3992914 tp_is_empty!42179)))

(declare-fun b!6598754 () Bool)

(declare-fun tp!1819531 () Bool)

(declare-fun tp!1819530 () Bool)

(assert (=> b!6598754 (= e!3992914 (and tp!1819531 tp!1819530))))

(declare-fun b!6598753 () Bool)

(declare-fun tp!1819527 () Bool)

(assert (=> b!6598753 (= e!3992914 tp!1819527)))

(declare-fun b!6598752 () Bool)

(declare-fun tp!1819528 () Bool)

(declare-fun tp!1819529 () Bool)

(assert (=> b!6598752 (= e!3992914 (and tp!1819528 tp!1819529))))

(assert (=> b!6597605 (= tp!1819430 e!3992914)))

(assert (= (and b!6597605 ((_ is ElementMatch!16463) (regOne!33438 r!7292))) b!6598751))

(assert (= (and b!6597605 ((_ is Concat!25308) (regOne!33438 r!7292))) b!6598752))

(assert (= (and b!6597605 ((_ is Star!16463) (regOne!33438 r!7292))) b!6598753))

(assert (= (and b!6597605 ((_ is Union!16463) (regOne!33438 r!7292))) b!6598754))

(declare-fun b!6598755 () Bool)

(declare-fun e!3992915 () Bool)

(assert (=> b!6598755 (= e!3992915 tp_is_empty!42179)))

(declare-fun b!6598758 () Bool)

(declare-fun tp!1819536 () Bool)

(declare-fun tp!1819535 () Bool)

(assert (=> b!6598758 (= e!3992915 (and tp!1819536 tp!1819535))))

(declare-fun b!6598757 () Bool)

(declare-fun tp!1819532 () Bool)

(assert (=> b!6598757 (= e!3992915 tp!1819532)))

(declare-fun b!6598756 () Bool)

(declare-fun tp!1819533 () Bool)

(declare-fun tp!1819534 () Bool)

(assert (=> b!6598756 (= e!3992915 (and tp!1819533 tp!1819534))))

(assert (=> b!6597605 (= tp!1819425 e!3992915)))

(assert (= (and b!6597605 ((_ is ElementMatch!16463) (regTwo!33438 r!7292))) b!6598755))

(assert (= (and b!6597605 ((_ is Concat!25308) (regTwo!33438 r!7292))) b!6598756))

(assert (= (and b!6597605 ((_ is Star!16463) (regTwo!33438 r!7292))) b!6598757))

(assert (= (and b!6597605 ((_ is Union!16463) (regTwo!33438 r!7292))) b!6598758))

(declare-fun b!6598766 () Bool)

(declare-fun e!3992921 () Bool)

(declare-fun tp!1819541 () Bool)

(assert (=> b!6598766 (= e!3992921 tp!1819541)))

(declare-fun e!3992920 () Bool)

(declare-fun b!6598765 () Bool)

(declare-fun tp!1819542 () Bool)

(assert (=> b!6598765 (= e!3992920 (and (inv!84404 (h!72014 (t!379342 zl!343))) e!3992921 tp!1819542))))

(assert (=> b!6597620 (= tp!1819429 e!3992920)))

(assert (= b!6598765 b!6598766))

(assert (= (and b!6597620 ((_ is Cons!65566) (t!379342 zl!343))) b!6598765))

(declare-fun m!7375442 () Bool)

(assert (=> b!6598765 m!7375442))

(declare-fun b!6598767 () Bool)

(declare-fun e!3992922 () Bool)

(assert (=> b!6598767 (= e!3992922 tp_is_empty!42179)))

(declare-fun b!6598770 () Bool)

(declare-fun tp!1819547 () Bool)

(declare-fun tp!1819546 () Bool)

(assert (=> b!6598770 (= e!3992922 (and tp!1819547 tp!1819546))))

(declare-fun b!6598769 () Bool)

(declare-fun tp!1819543 () Bool)

(assert (=> b!6598769 (= e!3992922 tp!1819543)))

(declare-fun b!6598768 () Bool)

(declare-fun tp!1819544 () Bool)

(declare-fun tp!1819545 () Bool)

(assert (=> b!6598768 (= e!3992922 (and tp!1819544 tp!1819545))))

(assert (=> b!6597615 (= tp!1819424 e!3992922)))

(assert (= (and b!6597615 ((_ is ElementMatch!16463) (reg!16792 r!7292))) b!6598767))

(assert (= (and b!6597615 ((_ is Concat!25308) (reg!16792 r!7292))) b!6598768))

(assert (= (and b!6597615 ((_ is Star!16463) (reg!16792 r!7292))) b!6598769))

(assert (= (and b!6597615 ((_ is Union!16463) (reg!16792 r!7292))) b!6598770))

(declare-fun b_lambda!249767 () Bool)

(assert (= b_lambda!249747 (or b!6597619 b_lambda!249767)))

(declare-fun bs!1692039 () Bool)

(declare-fun d!2070017 () Bool)

(assert (= bs!1692039 (and d!2070017 b!6597619)))

(assert (=> bs!1692039 (= (dynLambda!26110 lambda!367635 lt!2412604) (derivationStepZipperUp!1637 lt!2412604 (h!72013 s!2326)))))

(assert (=> bs!1692039 m!7374490))

(assert (=> d!2069911 d!2070017))

(declare-fun b_lambda!249769 () Bool)

(assert (= b_lambda!249749 (or b!6597619 b_lambda!249769)))

(declare-fun bs!1692040 () Bool)

(declare-fun d!2070019 () Bool)

(assert (= bs!1692040 (and d!2070019 b!6597619)))

(assert (=> bs!1692040 (= (dynLambda!26110 lambda!367635 lt!2412609) (derivationStepZipperUp!1637 lt!2412609 (h!72013 s!2326)))))

(assert (=> bs!1692040 m!7374558))

(assert (=> d!2069917 d!2070019))

(declare-fun b_lambda!249771 () Bool)

(assert (= b_lambda!249765 (or b!6597619 b_lambda!249771)))

(declare-fun bs!1692041 () Bool)

(declare-fun d!2070021 () Bool)

(assert (= bs!1692041 (and d!2070021 b!6597619)))

(assert (=> bs!1692041 (= (dynLambda!26110 lambda!367635 lt!2412618) (derivationStepZipperUp!1637 lt!2412618 (h!72013 s!2326)))))

(assert (=> bs!1692041 m!7374600))

(assert (=> d!2070007 d!2070021))

(declare-fun b_lambda!249773 () Bool)

(assert (= b_lambda!249761 (or b!6597619 b_lambda!249773)))

(declare-fun bs!1692042 () Bool)

(declare-fun d!2070023 () Bool)

(assert (= bs!1692042 (and d!2070023 b!6597619)))

(assert (=> bs!1692042 (= (dynLambda!26110 lambda!367635 (h!72014 zl!343)) (derivationStepZipperUp!1637 (h!72014 zl!343) (h!72013 s!2326)))))

(assert (=> bs!1692042 m!7374492))

(assert (=> d!2069949 d!2070023))

(declare-fun b_lambda!249775 () Bool)

(assert (= b_lambda!249763 (or b!6597619 b_lambda!249775)))

(declare-fun bs!1692043 () Bool)

(declare-fun d!2070025 () Bool)

(assert (= bs!1692043 (and d!2070025 b!6597619)))

(assert (=> bs!1692043 (= (dynLambda!26110 lambda!367635 lt!2412620) (derivationStepZipperUp!1637 lt!2412620 (h!72013 s!2326)))))

(assert (=> bs!1692043 m!7374602))

(assert (=> d!2070003 d!2070025))

(check-sat (not b!6597985) (not b!6598491) (not bs!1692040) (not b!6598218) (not bm!576920) (not b!6598753) (not b!6598241) (not b_lambda!249773) (not b_lambda!249775) (not b!6598730) (not b!6598713) (not b!6598384) (not b!6598744) (not b!6598443) (not b!6598507) (not bm!576947) (not b!6598228) (not bm!577014) (not bm!577029) (not b!6598733) (not b!6598257) (not b!6598221) (not d!2069967) (not b!6598749) (not bs!1692042) (not b_lambda!249769) (not b!6598602) (not b!6597995) (not b!6598729) (not b!6598239) (not d!2069945) (not b!6598254) (not b!6598448) (not d!2069853) (not b!6597990) (not d!2069971) (not b!6598229) (not b!6598695) (not b!6598449) (not b!6598484) (not b!6598264) (not d!2069833) (not b!6598533) (not bm!576945) (not b!6598758) (not b!6598734) (not b!6598531) (not b!6598429) (not b!6597996) (not b!6598235) (not d!2069973) (not b!6598127) (not d!2069867) (not bm!576941) (not b!6598536) (not bm!576987) (not b!6598756) (not b!6598383) (not d!2069827) (not b!6598690) (not b!6598688) (not setNonEmpty!45054) (not b!6598343) (not b!6598401) (not b!6598223) (not bm!577030) (not d!2069983) (not b!6598750) (not d!2069831) (not b!6598714) (not b!6598562) (not b!6598416) (not b!6598248) (not bm!576968) (not b!6598694) (not bm!577010) (not d!2069985) (not b!6598496) (not b!6598128) (not b!6598255) (not bm!576905) (not bm!577019) (not bm!576970) (not d!2069961) (not bm!576973) (not bm!577009) (not d!2069993) (not b!6598604) (not b!6598106) (not d!2070009) (not b!6598243) (not d!2069949) (not bm!576937) (not b!6598768) (not d!2069957) tp_is_empty!42179 (not b!6598563) (not b!6598200) (not b!6598691) (not d!2070001) (not b!6598765) (not b!6598441) (not b!6598344) (not b!6598770) (not b!6598706) (not bm!576965) (not bm!577028) (not b!6598766) (not b!6598238) (not bm!576971) (not b!6598124) (not d!2069969) (not b!6598560) (not b!6598498) (not b!6598754) (not bs!1692039) (not b!6598219) (not bm!576940) (not b!6597868) (not b_lambda!249767) (not b!6598606) (not b!6598265) (not d!2069879) (not b!6598689) (not d!2069939) (not bm!577026) (not b!6598537) (not bm!577024) (not b!6598259) (not d!2069829) (not b!6598580) (not bm!576919) (not bs!1692041) (not b!6597988) (not b!6598419) (not b!6598420) (not b!6597869) (not b!6598607) (not b!6598757) (not d!2069987) (not b!6598195) (not d!2069921) (not bm!576964) (not d!2069941) (not bm!576946) (not d!2069825) (not d!2069977) (not bm!576972) (not b!6598728) (not b!6598424) (not b!6598267) (not bm!576969) (not b!6598708) (not d!2069981) (not b!6598686) (not b!6598268) (not d!2070013) (not d!2070003) (not bm!576939) (not bm!576991) (not d!2069917) (not b!6598532) (not d!2069871) (not d!2069933) (not b!6598603) (not b!6598112) (not b!6598126) (not b!6598125) (not b!6598752) (not b!6598709) (not bs!1692043) (not d!2069919) (not bm!577016) (not b!6598732) (not b!6598558) (not b!6598581) (not d!2069863) (not bm!576989) (not b!6598444) (not b!6598493) (not b!6598616) (not bm!576994) (not b_lambda!249771) (not d!2069787) (not bm!576966) (not b!6598530) (not b!6598528) (not d!2069913) (not b!6598249) (not b!6598610) (not b!6598579) (not d!2069857) (not b!6597986) (not b!6598559) (not d!2069911) (not bm!577017) (not b!6598557) (not d!2069885) (not d!2069855) (not b!6598769) (not b!6598402) (not d!2069999) (not d!2069795) (not b!6598739) (not b!6598206) (not bm!577011) (not d!2069975) (not bm!576992) (not bm!577021) (not bm!577018) (not b!6598422) (not b!6598430) (not bm!577012) (not d!2070015) (not d!2069865) (not b!6598609) (not d!2069965) (not d!2069979) (not b!6598435) (not d!2070007) (not b!6598129))
(check-sat)
