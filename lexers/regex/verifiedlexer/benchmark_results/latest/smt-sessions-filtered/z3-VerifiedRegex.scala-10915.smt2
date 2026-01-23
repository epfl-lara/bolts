; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564842 () Bool)

(assert start!564842)

(declare-fun b!5367412 () Bool)

(assert (=> b!5367412 true))

(assert (=> b!5367412 true))

(declare-fun lambda!276699 () Int)

(declare-fun lambda!276698 () Int)

(assert (=> b!5367412 (not (= lambda!276699 lambda!276698))))

(assert (=> b!5367412 true))

(assert (=> b!5367412 true))

(declare-fun b!5367430 () Bool)

(assert (=> b!5367430 true))

(declare-fun bs!1243300 () Bool)

(declare-fun b!5367409 () Bool)

(assert (= bs!1243300 (and b!5367409 b!5367412)))

(declare-datatypes ((C!30424 0))(
  ( (C!30425 (val!24914 Int)) )
))
(declare-datatypes ((Regex!15077 0))(
  ( (ElementMatch!15077 (c!935035 C!30424)) (Concat!23922 (regOne!30666 Regex!15077) (regTwo!30666 Regex!15077)) (EmptyExpr!15077) (Star!15077 (reg!15406 Regex!15077)) (EmptyLang!15077) (Union!15077 (regOne!30667 Regex!15077) (regTwo!30667 Regex!15077)) )
))
(declare-fun r!7292 () Regex!15077)

(declare-fun lambda!276701 () Int)

(declare-fun lt!2185956 () Regex!15077)

(assert (=> bs!1243300 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276701 lambda!276698))))

(assert (=> bs!1243300 (not (= lambda!276701 lambda!276699))))

(assert (=> b!5367409 true))

(assert (=> b!5367409 true))

(assert (=> b!5367409 true))

(declare-fun lambda!276702 () Int)

(assert (=> bs!1243300 (not (= lambda!276702 lambda!276698))))

(assert (=> bs!1243300 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276702 lambda!276699))))

(assert (=> b!5367409 (not (= lambda!276702 lambda!276701))))

(assert (=> b!5367409 true))

(assert (=> b!5367409 true))

(assert (=> b!5367409 true))

(declare-fun b!5367399 () Bool)

(declare-fun res!2277838 () Bool)

(declare-fun e!3330749 () Bool)

(assert (=> b!5367399 (=> res!2277838 e!3330749)))

(get-info :version)

(assert (=> b!5367399 (= res!2277838 (or ((_ is EmptyExpr!15077) r!7292) ((_ is EmptyLang!15077) r!7292) ((_ is ElementMatch!15077) r!7292) ((_ is Union!15077) r!7292) (not ((_ is Concat!23922) r!7292))))))

(declare-fun b!5367400 () Bool)

(declare-fun res!2277847 () Bool)

(assert (=> b!5367400 (=> res!2277847 e!3330749)))

(declare-datatypes ((List!61530 0))(
  ( (Nil!61406) (Cons!61406 (h!67854 Regex!15077) (t!374753 List!61530)) )
))
(declare-datatypes ((Context!8922 0))(
  ( (Context!8923 (exprs!4961 List!61530)) )
))
(declare-datatypes ((List!61531 0))(
  ( (Nil!61407) (Cons!61407 (h!67855 Context!8922) (t!374754 List!61531)) )
))
(declare-fun zl!343 () List!61531)

(declare-fun generalisedUnion!1006 (List!61530) Regex!15077)

(declare-fun unfocusZipperList!519 (List!61531) List!61530)

(assert (=> b!5367400 (= res!2277847 (not (= r!7292 (generalisedUnion!1006 (unfocusZipperList!519 zl!343)))))))

(declare-fun res!2277817 () Bool)

(declare-fun e!3330747 () Bool)

(assert (=> start!564842 (=> (not res!2277817) (not e!3330747))))

(declare-fun validRegex!6813 (Regex!15077) Bool)

(assert (=> start!564842 (= res!2277817 (validRegex!6813 r!7292))))

(assert (=> start!564842 e!3330747))

(declare-fun e!3330730 () Bool)

(assert (=> start!564842 e!3330730))

(declare-fun condSetEmpty!34769 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8922))

(assert (=> start!564842 (= condSetEmpty!34769 (= z!1189 ((as const (Array Context!8922 Bool)) false)))))

(declare-fun setRes!34769 () Bool)

(assert (=> start!564842 setRes!34769))

(declare-fun e!3330736 () Bool)

(assert (=> start!564842 e!3330736))

(declare-fun e!3330742 () Bool)

(assert (=> start!564842 e!3330742))

(declare-fun b!5367401 () Bool)

(declare-fun e!3330741 () Bool)

(declare-fun nullable!5246 (Regex!15077) Bool)

(assert (=> b!5367401 (= e!3330741 (nullable!5246 (regOne!30666 (regOne!30666 r!7292))))))

(declare-fun b!5367402 () Bool)

(declare-fun e!3330735 () Bool)

(declare-fun e!3330732 () Bool)

(assert (=> b!5367402 (= e!3330735 e!3330732)))

(declare-fun res!2277845 () Bool)

(assert (=> b!5367402 (=> res!2277845 e!3330732)))

(declare-fun lt!2185969 () Regex!15077)

(assert (=> b!5367402 (= res!2277845 (not (= r!7292 lt!2185969)))))

(assert (=> b!5367402 (= lt!2185969 (Concat!23922 lt!2185956 (regTwo!30666 r!7292)))))

(declare-fun b!5367403 () Bool)

(declare-fun e!3330740 () Bool)

(declare-fun e!3330729 () Bool)

(assert (=> b!5367403 (= e!3330740 e!3330729)))

(declare-fun res!2277822 () Bool)

(assert (=> b!5367403 (=> res!2277822 e!3330729)))

(declare-fun lt!2185955 () Bool)

(assert (=> b!5367403 (= res!2277822 (not lt!2185955))))

(declare-fun e!3330744 () Bool)

(assert (=> b!5367403 e!3330744))

(declare-fun res!2277841 () Bool)

(assert (=> b!5367403 (=> (not res!2277841) (not e!3330744))))

(declare-fun lt!2185979 () Regex!15077)

(declare-datatypes ((List!61532 0))(
  ( (Nil!61408) (Cons!61408 (h!67856 C!30424) (t!374755 List!61532)) )
))
(declare-fun s!2326 () List!61532)

(declare-fun matchR!7262 (Regex!15077 List!61532) Bool)

(declare-fun matchRSpec!2180 (Regex!15077 List!61532) Bool)

(assert (=> b!5367403 (= res!2277841 (= (matchR!7262 lt!2185979 s!2326) (matchRSpec!2180 lt!2185979 s!2326)))))

(declare-datatypes ((Unit!153826 0))(
  ( (Unit!153827) )
))
(declare-fun lt!2185974 () Unit!153826)

(declare-fun mainMatchTheorem!2180 (Regex!15077 List!61532) Unit!153826)

(assert (=> b!5367403 (= lt!2185974 (mainMatchTheorem!2180 lt!2185979 s!2326))))

(declare-fun b!5367404 () Bool)

(declare-fun e!3330745 () Unit!153826)

(declare-fun Unit!153828 () Unit!153826)

(assert (=> b!5367404 (= e!3330745 Unit!153828)))

(declare-fun lt!2185980 () (InoxSet Context!8922))

(declare-fun lt!2185976 () (InoxSet Context!8922))

(declare-fun lt!2185967 () Unit!153826)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!314 ((InoxSet Context!8922) (InoxSet Context!8922) List!61532) Unit!153826)

(assert (=> b!5367404 (= lt!2185967 (lemmaZipperConcatMatchesSameAsBothZippers!314 lt!2185980 lt!2185976 (t!374755 s!2326)))))

(declare-fun res!2277835 () Bool)

(declare-fun matchZipper!1321 ((InoxSet Context!8922) List!61532) Bool)

(assert (=> b!5367404 (= res!2277835 (matchZipper!1321 lt!2185980 (t!374755 s!2326)))))

(declare-fun e!3330748 () Bool)

(assert (=> b!5367404 (=> res!2277835 e!3330748)))

(assert (=> b!5367404 (= (matchZipper!1321 ((_ map or) lt!2185980 lt!2185976) (t!374755 s!2326)) e!3330748)))

(declare-fun b!5367405 () Bool)

(declare-fun e!3330739 () Bool)

(assert (=> b!5367405 (= e!3330739 e!3330735)))

(declare-fun res!2277824 () Bool)

(assert (=> b!5367405 (=> res!2277824 e!3330735)))

(declare-fun lt!2185971 () (InoxSet Context!8922))

(declare-fun lt!2185964 () (InoxSet Context!8922))

(assert (=> b!5367405 (= res!2277824 (not (= lt!2185971 lt!2185964)))))

(declare-fun lt!2185965 () Context!8922)

(declare-fun lt!2185973 () (InoxSet Context!8922))

(declare-fun lambda!276700 () Int)

(declare-fun flatMap!804 ((InoxSet Context!8922) Int) (InoxSet Context!8922))

(declare-fun derivationStepZipperUp!449 (Context!8922 C!30424) (InoxSet Context!8922))

(assert (=> b!5367405 (= (flatMap!804 lt!2185973 lambda!276700) (derivationStepZipperUp!449 lt!2185965 (h!67856 s!2326)))))

(declare-fun lt!2185942 () Unit!153826)

(declare-fun lemmaFlatMapOnSingletonSet!336 ((InoxSet Context!8922) Context!8922 Int) Unit!153826)

(assert (=> b!5367405 (= lt!2185942 (lemmaFlatMapOnSingletonSet!336 lt!2185973 lt!2185965 lambda!276700))))

(declare-fun lt!2185968 () (InoxSet Context!8922))

(assert (=> b!5367405 (= lt!2185968 (derivationStepZipperUp!449 lt!2185965 (h!67856 s!2326)))))

(declare-fun derivationStepZipper!1316 ((InoxSet Context!8922) C!30424) (InoxSet Context!8922))

(assert (=> b!5367405 (= lt!2185971 (derivationStepZipper!1316 lt!2185973 (h!67856 s!2326)))))

(assert (=> b!5367405 (= lt!2185973 (store ((as const (Array Context!8922 Bool)) false) lt!2185965 true))))

(declare-fun lt!2185970 () List!61530)

(assert (=> b!5367405 (= lt!2185965 (Context!8923 (Cons!61406 (reg!15406 (regOne!30666 r!7292)) lt!2185970)))))

(declare-fun b!5367406 () Bool)

(declare-fun tp_is_empty!39407 () Bool)

(assert (=> b!5367406 (= e!3330730 tp_is_empty!39407)))

(declare-fun b!5367407 () Bool)

(declare-fun e!3330733 () Bool)

(declare-fun tp!1489561 () Bool)

(assert (=> b!5367407 (= e!3330733 tp!1489561)))

(declare-fun b!5367408 () Bool)

(declare-fun res!2277843 () Bool)

(declare-fun e!3330738 () Bool)

(assert (=> b!5367408 (=> res!2277843 e!3330738)))

(declare-datatypes ((tuple2!64552 0))(
  ( (tuple2!64553 (_1!35579 List!61532) (_2!35579 List!61532)) )
))
(declare-fun lt!2185948 () tuple2!64552)

(declare-fun isEmpty!33384 (List!61532) Bool)

(assert (=> b!5367408 (= res!2277843 (not (isEmpty!33384 (_1!35579 lt!2185948))))))

(assert (=> b!5367409 (= e!3330729 e!3330738)))

(declare-fun res!2277836 () Bool)

(assert (=> b!5367409 (=> res!2277836 e!3330738)))

(declare-fun ++!13380 (List!61532 List!61532) List!61532)

(assert (=> b!5367409 (= res!2277836 (not (= (++!13380 (_1!35579 lt!2185948) (_2!35579 lt!2185948)) s!2326)))))

(declare-datatypes ((Option!15188 0))(
  ( (None!15187) (Some!15187 (v!51216 tuple2!64552)) )
))
(declare-fun lt!2185946 () Option!15188)

(declare-fun get!21124 (Option!15188) tuple2!64552)

(assert (=> b!5367409 (= lt!2185948 (get!21124 lt!2185946))))

(declare-fun Exists!2258 (Int) Bool)

(assert (=> b!5367409 (= (Exists!2258 lambda!276701) (Exists!2258 lambda!276702))))

(declare-fun lt!2185945 () Unit!153826)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!912 (Regex!15077 Regex!15077 List!61532) Unit!153826)

(assert (=> b!5367409 (= lt!2185945 (lemmaExistCutMatchRandMatchRSpecEquivalent!912 lt!2185956 (regTwo!30666 r!7292) s!2326))))

(declare-fun isDefined!11891 (Option!15188) Bool)

(assert (=> b!5367409 (= (isDefined!11891 lt!2185946) (Exists!2258 lambda!276701))))

(declare-fun findConcatSeparation!1602 (Regex!15077 Regex!15077 List!61532 List!61532 List!61532) Option!15188)

(assert (=> b!5367409 (= lt!2185946 (findConcatSeparation!1602 lt!2185956 (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326))))

(declare-fun lt!2185947 () Unit!153826)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1366 (Regex!15077 Regex!15077 List!61532) Unit!153826)

(assert (=> b!5367409 (= lt!2185947 (lemmaFindConcatSeparationEquivalentToExists!1366 lt!2185956 (regTwo!30666 r!7292) s!2326))))

(declare-fun b!5367410 () Bool)

(declare-fun res!2277829 () Bool)

(declare-fun e!3330731 () Bool)

(assert (=> b!5367410 (=> res!2277829 e!3330731)))

(declare-fun isEmpty!33385 (List!61530) Bool)

(assert (=> b!5367410 (= res!2277829 (isEmpty!33385 (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun setIsEmpty!34769 () Bool)

(assert (=> setIsEmpty!34769 setRes!34769))

(declare-fun b!5367411 () Bool)

(declare-fun e!3330743 () Bool)

(declare-fun lambda!276703 () Int)

(declare-fun forall!14485 (List!61530 Int) Bool)

(assert (=> b!5367411 (= e!3330743 (forall!14485 (t!374753 (exprs!4961 (h!67855 zl!343))) lambda!276703))))

(assert (=> b!5367412 (= e!3330749 e!3330731)))

(declare-fun res!2277832 () Bool)

(assert (=> b!5367412 (=> res!2277832 e!3330731)))

(declare-fun lt!2185977 () Bool)

(assert (=> b!5367412 (= res!2277832 (or (not (= lt!2185955 lt!2185977)) ((_ is Nil!61408) s!2326)))))

(assert (=> b!5367412 (= (Exists!2258 lambda!276698) (Exists!2258 lambda!276699))))

(declare-fun lt!2185959 () Unit!153826)

(assert (=> b!5367412 (= lt!2185959 (lemmaExistCutMatchRandMatchRSpecEquivalent!912 (regOne!30666 r!7292) (regTwo!30666 r!7292) s!2326))))

(assert (=> b!5367412 (= lt!2185977 (Exists!2258 lambda!276698))))

(assert (=> b!5367412 (= lt!2185977 (isDefined!11891 (findConcatSeparation!1602 (regOne!30666 r!7292) (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326)))))

(declare-fun lt!2185960 () Unit!153826)

(assert (=> b!5367412 (= lt!2185960 (lemmaFindConcatSeparationEquivalentToExists!1366 (regOne!30666 r!7292) (regTwo!30666 r!7292) s!2326))))

(declare-fun b!5367413 () Bool)

(declare-fun res!2277819 () Bool)

(declare-fun e!3330750 () Bool)

(assert (=> b!5367413 (=> res!2277819 e!3330750)))

(assert (=> b!5367413 (= res!2277819 (or ((_ is Concat!23922) (regOne!30666 r!7292)) (not ((_ is Star!15077) (regOne!30666 r!7292)))))))

(declare-fun b!5367414 () Bool)

(declare-fun res!2277844 () Bool)

(assert (=> b!5367414 (=> res!2277844 e!3330738)))

(assert (=> b!5367414 (= res!2277844 (not (matchR!7262 lt!2185956 (_1!35579 lt!2185948))))))

(declare-fun b!5367415 () Bool)

(declare-fun tp!1489558 () Bool)

(assert (=> b!5367415 (= e!3330730 tp!1489558)))

(declare-fun b!5367416 () Bool)

(assert (=> b!5367416 (= e!3330750 e!3330739)))

(declare-fun res!2277837 () Bool)

(assert (=> b!5367416 (=> res!2277837 e!3330739)))

(assert (=> b!5367416 (= res!2277837 (not (= lt!2185980 lt!2185964)))))

(declare-fun lt!2185961 () Context!8922)

(declare-fun derivationStepZipperDown!525 (Regex!15077 Context!8922 C!30424) (InoxSet Context!8922))

(assert (=> b!5367416 (= lt!2185964 (derivationStepZipperDown!525 (reg!15406 (regOne!30666 r!7292)) lt!2185961 (h!67856 s!2326)))))

(assert (=> b!5367416 (= lt!2185961 (Context!8923 lt!2185970))))

(assert (=> b!5367416 (= lt!2185970 (Cons!61406 lt!2185956 (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(assert (=> b!5367416 (= lt!2185956 (Star!15077 (reg!15406 (regOne!30666 r!7292))))))

(declare-fun b!5367417 () Bool)

(declare-fun lt!2185949 () Bool)

(assert (=> b!5367417 (= e!3330744 (or (not lt!2185955) lt!2185949))))

(declare-fun b!5367418 () Bool)

(declare-fun e!3330734 () Bool)

(assert (=> b!5367418 (= e!3330734 e!3330740)))

(declare-fun res!2277834 () Bool)

(assert (=> b!5367418 (=> res!2277834 e!3330740)))

(declare-fun lt!2185950 () Context!8922)

(declare-fun unfocusZipper!819 (List!61531) Regex!15077)

(assert (=> b!5367418 (= res!2277834 (not (= (unfocusZipper!819 (Cons!61407 lt!2185950 Nil!61407)) (reg!15406 (regOne!30666 r!7292)))))))

(declare-fun lt!2185957 () (InoxSet Context!8922))

(assert (=> b!5367418 (= (flatMap!804 lt!2185957 lambda!276700) (derivationStepZipperUp!449 lt!2185961 (h!67856 s!2326)))))

(declare-fun lt!2185954 () Unit!153826)

(assert (=> b!5367418 (= lt!2185954 (lemmaFlatMapOnSingletonSet!336 lt!2185957 lt!2185961 lambda!276700))))

(declare-fun lt!2185943 () (InoxSet Context!8922))

(assert (=> b!5367418 (= (flatMap!804 lt!2185943 lambda!276700) (derivationStepZipperUp!449 lt!2185950 (h!67856 s!2326)))))

(declare-fun lt!2185962 () Unit!153826)

(assert (=> b!5367418 (= lt!2185962 (lemmaFlatMapOnSingletonSet!336 lt!2185943 lt!2185950 lambda!276700))))

(declare-fun lt!2185966 () (InoxSet Context!8922))

(assert (=> b!5367418 (= lt!2185966 (derivationStepZipperUp!449 lt!2185961 (h!67856 s!2326)))))

(declare-fun lt!2185958 () (InoxSet Context!8922))

(assert (=> b!5367418 (= lt!2185958 (derivationStepZipperUp!449 lt!2185950 (h!67856 s!2326)))))

(assert (=> b!5367418 (= lt!2185957 (store ((as const (Array Context!8922 Bool)) false) lt!2185961 true))))

(assert (=> b!5367418 (= lt!2185943 (store ((as const (Array Context!8922 Bool)) false) lt!2185950 true))))

(assert (=> b!5367418 (= lt!2185950 (Context!8923 (Cons!61406 (reg!15406 (regOne!30666 r!7292)) Nil!61406)))))

(declare-fun b!5367419 () Bool)

(declare-fun res!2277839 () Bool)

(assert (=> b!5367419 (=> res!2277839 e!3330743)))

(declare-fun regexDepth!165 (Regex!15077) Int)

(declare-fun generalisedConcat!746 (List!61530) Regex!15077)

(assert (=> b!5367419 (= res!2277839 (< (regexDepth!165 r!7292) (regexDepth!165 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343)))))))))

(declare-fun b!5367420 () Bool)

(declare-fun e!3330737 () Bool)

(declare-fun tp!1489564 () Bool)

(declare-fun inv!80939 (Context!8922) Bool)

(assert (=> b!5367420 (= e!3330736 (and (inv!80939 (h!67855 zl!343)) e!3330737 tp!1489564))))

(declare-fun b!5367421 () Bool)

(assert (=> b!5367421 (= e!3330738 e!3330743)))

(declare-fun res!2277842 () Bool)

(assert (=> b!5367421 (=> res!2277842 e!3330743)))

(declare-fun lt!2185951 () (InoxSet Context!8922))

(assert (=> b!5367421 (= res!2277842 (not (= lt!2185976 (derivationStepZipper!1316 lt!2185951 (h!67856 s!2326)))))))

(declare-fun lt!2185975 () Context!8922)

(assert (=> b!5367421 (= (flatMap!804 lt!2185951 lambda!276700) (derivationStepZipperUp!449 lt!2185975 (h!67856 s!2326)))))

(declare-fun lt!2185963 () Unit!153826)

(assert (=> b!5367421 (= lt!2185963 (lemmaFlatMapOnSingletonSet!336 lt!2185951 lt!2185975 lambda!276700))))

(assert (=> b!5367421 (= lt!2185951 (store ((as const (Array Context!8922 Bool)) false) lt!2185975 true))))

(declare-fun b!5367422 () Bool)

(declare-fun res!2277831 () Bool)

(assert (=> b!5367422 (=> res!2277831 e!3330740)))

(assert (=> b!5367422 (= res!2277831 (not (= (unfocusZipper!819 (Cons!61407 lt!2185961 Nil!61407)) lt!2185969)))))

(declare-fun b!5367423 () Bool)

(declare-fun res!2277826 () Bool)

(assert (=> b!5367423 (=> res!2277826 e!3330749)))

(assert (=> b!5367423 (= res!2277826 (not (= r!7292 (generalisedConcat!746 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5367424 () Bool)

(declare-fun res!2277833 () Bool)

(assert (=> b!5367424 (=> res!2277833 e!3330749)))

(declare-fun isEmpty!33386 (List!61531) Bool)

(assert (=> b!5367424 (= res!2277833 (not (isEmpty!33386 (t!374754 zl!343))))))

(declare-fun b!5367425 () Bool)

(declare-fun res!2277820 () Bool)

(assert (=> b!5367425 (=> res!2277820 e!3330750)))

(assert (=> b!5367425 (= res!2277820 e!3330741)))

(declare-fun res!2277827 () Bool)

(assert (=> b!5367425 (=> (not res!2277827) (not e!3330741))))

(assert (=> b!5367425 (= res!2277827 ((_ is Concat!23922) (regOne!30666 r!7292)))))

(declare-fun setElem!34769 () Context!8922)

(declare-fun tp!1489565 () Bool)

(declare-fun setNonEmpty!34769 () Bool)

(assert (=> setNonEmpty!34769 (= setRes!34769 (and tp!1489565 (inv!80939 setElem!34769) e!3330733))))

(declare-fun setRest!34769 () (InoxSet Context!8922))

(assert (=> setNonEmpty!34769 (= z!1189 ((_ map or) (store ((as const (Array Context!8922 Bool)) false) setElem!34769 true) setRest!34769))))

(declare-fun b!5367426 () Bool)

(declare-fun tp!1489563 () Bool)

(declare-fun tp!1489559 () Bool)

(assert (=> b!5367426 (= e!3330730 (and tp!1489563 tp!1489559))))

(declare-fun b!5367427 () Bool)

(declare-fun res!2277828 () Bool)

(assert (=> b!5367427 (=> res!2277828 e!3330743)))

(declare-fun zipperDepth!150 (List!61531) Int)

(assert (=> b!5367427 (= res!2277828 (< (zipperDepth!150 zl!343) (zipperDepth!150 (Cons!61407 lt!2185975 Nil!61407))))))

(declare-fun b!5367428 () Bool)

(declare-fun e!3330746 () Bool)

(assert (=> b!5367428 (= e!3330746 (not e!3330749))))

(declare-fun res!2277830 () Bool)

(assert (=> b!5367428 (=> res!2277830 e!3330749)))

(assert (=> b!5367428 (= res!2277830 (not ((_ is Cons!61407) zl!343)))))

(assert (=> b!5367428 (= lt!2185955 lt!2185949)))

(assert (=> b!5367428 (= lt!2185949 (matchRSpec!2180 r!7292 s!2326))))

(assert (=> b!5367428 (= lt!2185955 (matchR!7262 r!7292 s!2326))))

(declare-fun lt!2185952 () Unit!153826)

(assert (=> b!5367428 (= lt!2185952 (mainMatchTheorem!2180 r!7292 s!2326))))

(declare-fun b!5367429 () Bool)

(declare-fun res!2277818 () Bool)

(assert (=> b!5367429 (=> res!2277818 e!3330735)))

(assert (=> b!5367429 (= res!2277818 (not (= (matchZipper!1321 lt!2185973 s!2326) (matchZipper!1321 lt!2185971 (t!374755 s!2326)))))))

(assert (=> b!5367430 (= e!3330731 e!3330750)))

(declare-fun res!2277846 () Bool)

(assert (=> b!5367430 (=> res!2277846 e!3330750)))

(assert (=> b!5367430 (= res!2277846 (or (and ((_ is ElementMatch!15077) (regOne!30666 r!7292)) (= (c!935035 (regOne!30666 r!7292)) (h!67856 s!2326))) ((_ is Union!15077) (regOne!30666 r!7292))))))

(declare-fun lt!2185972 () Unit!153826)

(assert (=> b!5367430 (= lt!2185972 e!3330745)))

(declare-fun c!935034 () Bool)

(assert (=> b!5367430 (= c!935034 (nullable!5246 (h!67854 (exprs!4961 (h!67855 zl!343)))))))

(assert (=> b!5367430 (= (flatMap!804 z!1189 lambda!276700) (derivationStepZipperUp!449 (h!67855 zl!343) (h!67856 s!2326)))))

(declare-fun lt!2185944 () Unit!153826)

(assert (=> b!5367430 (= lt!2185944 (lemmaFlatMapOnSingletonSet!336 z!1189 (h!67855 zl!343) lambda!276700))))

(assert (=> b!5367430 (= lt!2185976 (derivationStepZipperUp!449 lt!2185975 (h!67856 s!2326)))))

(assert (=> b!5367430 (= lt!2185980 (derivationStepZipperDown!525 (h!67854 (exprs!4961 (h!67855 zl!343))) lt!2185975 (h!67856 s!2326)))))

(assert (=> b!5367430 (= lt!2185975 (Context!8923 (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun lt!2185978 () (InoxSet Context!8922))

(assert (=> b!5367430 (= lt!2185978 (derivationStepZipperUp!449 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343))))) (h!67856 s!2326)))))

(declare-fun b!5367431 () Bool)

(declare-fun res!2277849 () Bool)

(assert (=> b!5367431 (=> res!2277849 e!3330749)))

(assert (=> b!5367431 (= res!2277849 (not ((_ is Cons!61406) (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5367432 () Bool)

(declare-fun tp!1489560 () Bool)

(assert (=> b!5367432 (= e!3330742 (and tp_is_empty!39407 tp!1489560))))

(declare-fun b!5367433 () Bool)

(assert (=> b!5367433 (= e!3330748 (matchZipper!1321 lt!2185976 (t!374755 s!2326)))))

(declare-fun b!5367434 () Bool)

(declare-fun res!2277848 () Bool)

(assert (=> b!5367434 (=> (not res!2277848) (not e!3330747))))

(declare-fun toList!8861 ((InoxSet Context!8922)) List!61531)

(assert (=> b!5367434 (= res!2277848 (= (toList!8861 z!1189) zl!343))))

(declare-fun b!5367435 () Bool)

(declare-fun res!2277840 () Bool)

(assert (=> b!5367435 (=> res!2277840 e!3330738)))

(assert (=> b!5367435 (= res!2277840 (not (matchR!7262 (regTwo!30666 r!7292) (_2!35579 lt!2185948))))))

(declare-fun b!5367436 () Bool)

(declare-fun tp!1489557 () Bool)

(declare-fun tp!1489562 () Bool)

(assert (=> b!5367436 (= e!3330730 (and tp!1489557 tp!1489562))))

(declare-fun b!5367437 () Bool)

(declare-fun res!2277823 () Bool)

(assert (=> b!5367437 (=> res!2277823 e!3330735)))

(declare-fun lt!2185953 () Regex!15077)

(assert (=> b!5367437 (= res!2277823 (not (= lt!2185953 r!7292)))))

(declare-fun b!5367438 () Bool)

(assert (=> b!5367438 (= e!3330747 e!3330746)))

(declare-fun res!2277821 () Bool)

(assert (=> b!5367438 (=> (not res!2277821) (not e!3330746))))

(assert (=> b!5367438 (= res!2277821 (= r!7292 lt!2185953))))

(assert (=> b!5367438 (= lt!2185953 (unfocusZipper!819 zl!343))))

(declare-fun b!5367439 () Bool)

(declare-fun Unit!153829 () Unit!153826)

(assert (=> b!5367439 (= e!3330745 Unit!153829)))

(declare-fun b!5367440 () Bool)

(declare-fun tp!1489556 () Bool)

(assert (=> b!5367440 (= e!3330737 tp!1489556)))

(declare-fun b!5367441 () Bool)

(assert (=> b!5367441 (= e!3330732 e!3330734)))

(declare-fun res!2277825 () Bool)

(assert (=> b!5367441 (=> res!2277825 e!3330734)))

(assert (=> b!5367441 (= res!2277825 (not (= (unfocusZipper!819 (Cons!61407 lt!2185965 Nil!61407)) lt!2185979)))))

(assert (=> b!5367441 (= lt!2185979 (Concat!23922 (reg!15406 (regOne!30666 r!7292)) lt!2185969))))

(assert (= (and start!564842 res!2277817) b!5367434))

(assert (= (and b!5367434 res!2277848) b!5367438))

(assert (= (and b!5367438 res!2277821) b!5367428))

(assert (= (and b!5367428 (not res!2277830)) b!5367424))

(assert (= (and b!5367424 (not res!2277833)) b!5367423))

(assert (= (and b!5367423 (not res!2277826)) b!5367431))

(assert (= (and b!5367431 (not res!2277849)) b!5367400))

(assert (= (and b!5367400 (not res!2277847)) b!5367399))

(assert (= (and b!5367399 (not res!2277838)) b!5367412))

(assert (= (and b!5367412 (not res!2277832)) b!5367410))

(assert (= (and b!5367410 (not res!2277829)) b!5367430))

(assert (= (and b!5367430 c!935034) b!5367404))

(assert (= (and b!5367430 (not c!935034)) b!5367439))

(assert (= (and b!5367404 (not res!2277835)) b!5367433))

(assert (= (and b!5367430 (not res!2277846)) b!5367425))

(assert (= (and b!5367425 res!2277827) b!5367401))

(assert (= (and b!5367425 (not res!2277820)) b!5367413))

(assert (= (and b!5367413 (not res!2277819)) b!5367416))

(assert (= (and b!5367416 (not res!2277837)) b!5367405))

(assert (= (and b!5367405 (not res!2277824)) b!5367429))

(assert (= (and b!5367429 (not res!2277818)) b!5367437))

(assert (= (and b!5367437 (not res!2277823)) b!5367402))

(assert (= (and b!5367402 (not res!2277845)) b!5367441))

(assert (= (and b!5367441 (not res!2277825)) b!5367418))

(assert (= (and b!5367418 (not res!2277834)) b!5367422))

(assert (= (and b!5367422 (not res!2277831)) b!5367403))

(assert (= (and b!5367403 res!2277841) b!5367417))

(assert (= (and b!5367403 (not res!2277822)) b!5367409))

(assert (= (and b!5367409 (not res!2277836)) b!5367414))

(assert (= (and b!5367414 (not res!2277844)) b!5367435))

(assert (= (and b!5367435 (not res!2277840)) b!5367408))

(assert (= (and b!5367408 (not res!2277843)) b!5367421))

(assert (= (and b!5367421 (not res!2277842)) b!5367419))

(assert (= (and b!5367419 (not res!2277839)) b!5367427))

(assert (= (and b!5367427 (not res!2277828)) b!5367411))

(assert (= (and start!564842 ((_ is ElementMatch!15077) r!7292)) b!5367406))

(assert (= (and start!564842 ((_ is Concat!23922) r!7292)) b!5367436))

(assert (= (and start!564842 ((_ is Star!15077) r!7292)) b!5367415))

(assert (= (and start!564842 ((_ is Union!15077) r!7292)) b!5367426))

(assert (= (and start!564842 condSetEmpty!34769) setIsEmpty!34769))

(assert (= (and start!564842 (not condSetEmpty!34769)) setNonEmpty!34769))

(assert (= setNonEmpty!34769 b!5367407))

(assert (= b!5367420 b!5367440))

(assert (= (and start!564842 ((_ is Cons!61407) zl!343)) b!5367420))

(assert (= (and start!564842 ((_ is Cons!61408) s!2326)) b!5367432))

(declare-fun m!6395280 () Bool)

(assert (=> b!5367420 m!6395280))

(declare-fun m!6395282 () Bool)

(assert (=> b!5367430 m!6395282))

(declare-fun m!6395284 () Bool)

(assert (=> b!5367430 m!6395284))

(declare-fun m!6395286 () Bool)

(assert (=> b!5367430 m!6395286))

(declare-fun m!6395288 () Bool)

(assert (=> b!5367430 m!6395288))

(declare-fun m!6395290 () Bool)

(assert (=> b!5367430 m!6395290))

(declare-fun m!6395292 () Bool)

(assert (=> b!5367430 m!6395292))

(declare-fun m!6395294 () Bool)

(assert (=> b!5367430 m!6395294))

(declare-fun m!6395296 () Bool)

(assert (=> b!5367416 m!6395296))

(declare-fun m!6395298 () Bool)

(assert (=> b!5367441 m!6395298))

(declare-fun m!6395300 () Bool)

(assert (=> b!5367419 m!6395300))

(declare-fun m!6395302 () Bool)

(assert (=> b!5367419 m!6395302))

(assert (=> b!5367419 m!6395302))

(declare-fun m!6395304 () Bool)

(assert (=> b!5367419 m!6395304))

(declare-fun m!6395306 () Bool)

(assert (=> b!5367411 m!6395306))

(declare-fun m!6395308 () Bool)

(assert (=> b!5367433 m!6395308))

(declare-fun m!6395310 () Bool)

(assert (=> b!5367428 m!6395310))

(declare-fun m!6395312 () Bool)

(assert (=> b!5367428 m!6395312))

(declare-fun m!6395314 () Bool)

(assert (=> b!5367428 m!6395314))

(declare-fun m!6395316 () Bool)

(assert (=> b!5367403 m!6395316))

(declare-fun m!6395318 () Bool)

(assert (=> b!5367403 m!6395318))

(declare-fun m!6395320 () Bool)

(assert (=> b!5367403 m!6395320))

(declare-fun m!6395322 () Bool)

(assert (=> b!5367400 m!6395322))

(assert (=> b!5367400 m!6395322))

(declare-fun m!6395324 () Bool)

(assert (=> b!5367400 m!6395324))

(declare-fun m!6395326 () Bool)

(assert (=> b!5367408 m!6395326))

(declare-fun m!6395328 () Bool)

(assert (=> b!5367429 m!6395328))

(declare-fun m!6395330 () Bool)

(assert (=> b!5367429 m!6395330))

(declare-fun m!6395332 () Bool)

(assert (=> b!5367435 m!6395332))

(declare-fun m!6395334 () Bool)

(assert (=> b!5367414 m!6395334))

(declare-fun m!6395336 () Bool)

(assert (=> b!5367412 m!6395336))

(declare-fun m!6395338 () Bool)

(assert (=> b!5367412 m!6395338))

(declare-fun m!6395340 () Bool)

(assert (=> b!5367412 m!6395340))

(assert (=> b!5367412 m!6395336))

(declare-fun m!6395342 () Bool)

(assert (=> b!5367412 m!6395342))

(declare-fun m!6395344 () Bool)

(assert (=> b!5367412 m!6395344))

(assert (=> b!5367412 m!6395338))

(declare-fun m!6395346 () Bool)

(assert (=> b!5367412 m!6395346))

(declare-fun m!6395348 () Bool)

(assert (=> start!564842 m!6395348))

(declare-fun m!6395350 () Bool)

(assert (=> b!5367438 m!6395350))

(declare-fun m!6395352 () Bool)

(assert (=> b!5367424 m!6395352))

(declare-fun m!6395354 () Bool)

(assert (=> b!5367434 m!6395354))

(declare-fun m!6395356 () Bool)

(assert (=> b!5367405 m!6395356))

(declare-fun m!6395358 () Bool)

(assert (=> b!5367405 m!6395358))

(declare-fun m!6395360 () Bool)

(assert (=> b!5367405 m!6395360))

(declare-fun m!6395362 () Bool)

(assert (=> b!5367405 m!6395362))

(declare-fun m!6395364 () Bool)

(assert (=> b!5367405 m!6395364))

(declare-fun m!6395366 () Bool)

(assert (=> b!5367401 m!6395366))

(declare-fun m!6395368 () Bool)

(assert (=> b!5367410 m!6395368))

(declare-fun m!6395370 () Bool)

(assert (=> b!5367421 m!6395370))

(declare-fun m!6395372 () Bool)

(assert (=> b!5367421 m!6395372))

(declare-fun m!6395374 () Bool)

(assert (=> b!5367421 m!6395374))

(declare-fun m!6395376 () Bool)

(assert (=> b!5367421 m!6395376))

(assert (=> b!5367421 m!6395294))

(declare-fun m!6395378 () Bool)

(assert (=> b!5367423 m!6395378))

(declare-fun m!6395380 () Bool)

(assert (=> b!5367418 m!6395380))

(declare-fun m!6395382 () Bool)

(assert (=> b!5367418 m!6395382))

(declare-fun m!6395384 () Bool)

(assert (=> b!5367418 m!6395384))

(declare-fun m!6395386 () Bool)

(assert (=> b!5367418 m!6395386))

(declare-fun m!6395388 () Bool)

(assert (=> b!5367418 m!6395388))

(declare-fun m!6395390 () Bool)

(assert (=> b!5367418 m!6395390))

(declare-fun m!6395392 () Bool)

(assert (=> b!5367418 m!6395392))

(declare-fun m!6395394 () Bool)

(assert (=> b!5367418 m!6395394))

(declare-fun m!6395396 () Bool)

(assert (=> b!5367418 m!6395396))

(declare-fun m!6395398 () Bool)

(assert (=> b!5367404 m!6395398))

(declare-fun m!6395400 () Bool)

(assert (=> b!5367404 m!6395400))

(declare-fun m!6395402 () Bool)

(assert (=> b!5367404 m!6395402))

(declare-fun m!6395404 () Bool)

(assert (=> b!5367422 m!6395404))

(declare-fun m!6395406 () Bool)

(assert (=> b!5367409 m!6395406))

(declare-fun m!6395408 () Bool)

(assert (=> b!5367409 m!6395408))

(declare-fun m!6395410 () Bool)

(assert (=> b!5367409 m!6395410))

(declare-fun m!6395412 () Bool)

(assert (=> b!5367409 m!6395412))

(declare-fun m!6395414 () Bool)

(assert (=> b!5367409 m!6395414))

(declare-fun m!6395416 () Bool)

(assert (=> b!5367409 m!6395416))

(declare-fun m!6395418 () Bool)

(assert (=> b!5367409 m!6395418))

(assert (=> b!5367409 m!6395418))

(declare-fun m!6395420 () Bool)

(assert (=> b!5367409 m!6395420))

(declare-fun m!6395422 () Bool)

(assert (=> b!5367427 m!6395422))

(declare-fun m!6395424 () Bool)

(assert (=> b!5367427 m!6395424))

(declare-fun m!6395426 () Bool)

(assert (=> setNonEmpty!34769 m!6395426))

(check-sat (not b!5367415) (not b!5367440) (not b!5367433) (not b!5367411) (not start!564842) (not b!5367426) (not b!5367421) (not b!5367407) (not b!5367422) (not b!5367408) (not b!5367429) (not b!5367403) (not b!5367424) (not b!5367400) (not b!5367420) (not b!5367441) (not b!5367430) (not setNonEmpty!34769) (not b!5367416) (not b!5367414) (not b!5367418) (not b!5367409) (not b!5367434) (not b!5367401) (not b!5367438) (not b!5367419) (not b!5367404) (not b!5367432) (not b!5367435) (not b!5367427) (not b!5367410) tp_is_empty!39407 (not b!5367412) (not b!5367436) (not b!5367405) (not b!5367423) (not b!5367428))
(check-sat)
(get-model)

(declare-fun b!5367526 () Bool)

(declare-fun res!2277872 () Bool)

(declare-fun e!3330795 () Bool)

(assert (=> b!5367526 (=> (not res!2277872) (not e!3330795))))

(declare-fun lt!2185995 () Option!15188)

(assert (=> b!5367526 (= res!2277872 (matchR!7262 (regOne!30666 r!7292) (_1!35579 (get!21124 lt!2185995))))))

(declare-fun b!5367527 () Bool)

(declare-fun e!3330796 () Bool)

(assert (=> b!5367527 (= e!3330796 (matchR!7262 (regTwo!30666 r!7292) s!2326))))

(declare-fun d!1719424 () Bool)

(declare-fun e!3330794 () Bool)

(assert (=> d!1719424 e!3330794))

(declare-fun res!2277871 () Bool)

(assert (=> d!1719424 (=> res!2277871 e!3330794)))

(assert (=> d!1719424 (= res!2277871 e!3330795)))

(declare-fun res!2277870 () Bool)

(assert (=> d!1719424 (=> (not res!2277870) (not e!3330795))))

(assert (=> d!1719424 (= res!2277870 (isDefined!11891 lt!2185995))))

(declare-fun e!3330797 () Option!15188)

(assert (=> d!1719424 (= lt!2185995 e!3330797)))

(declare-fun c!935067 () Bool)

(assert (=> d!1719424 (= c!935067 e!3330796)))

(declare-fun res!2277868 () Bool)

(assert (=> d!1719424 (=> (not res!2277868) (not e!3330796))))

(assert (=> d!1719424 (= res!2277868 (matchR!7262 (regOne!30666 r!7292) Nil!61408))))

(assert (=> d!1719424 (validRegex!6813 (regOne!30666 r!7292))))

(assert (=> d!1719424 (= (findConcatSeparation!1602 (regOne!30666 r!7292) (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326) lt!2185995)))

(declare-fun b!5367528 () Bool)

(assert (=> b!5367528 (= e!3330797 (Some!15187 (tuple2!64553 Nil!61408 s!2326)))))

(declare-fun b!5367529 () Bool)

(assert (=> b!5367529 (= e!3330794 (not (isDefined!11891 lt!2185995)))))

(declare-fun b!5367530 () Bool)

(assert (=> b!5367530 (= e!3330795 (= (++!13380 (_1!35579 (get!21124 lt!2185995)) (_2!35579 (get!21124 lt!2185995))) s!2326))))

(declare-fun b!5367531 () Bool)

(declare-fun e!3330798 () Option!15188)

(assert (=> b!5367531 (= e!3330798 None!15187)))

(declare-fun b!5367532 () Bool)

(declare-fun lt!2185996 () Unit!153826)

(declare-fun lt!2185994 () Unit!153826)

(assert (=> b!5367532 (= lt!2185996 lt!2185994)))

(assert (=> b!5367532 (= (++!13380 (++!13380 Nil!61408 (Cons!61408 (h!67856 s!2326) Nil!61408)) (t!374755 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1792 (List!61532 C!30424 List!61532 List!61532) Unit!153826)

(assert (=> b!5367532 (= lt!2185994 (lemmaMoveElementToOtherListKeepsConcatEq!1792 Nil!61408 (h!67856 s!2326) (t!374755 s!2326) s!2326))))

(assert (=> b!5367532 (= e!3330798 (findConcatSeparation!1602 (regOne!30666 r!7292) (regTwo!30666 r!7292) (++!13380 Nil!61408 (Cons!61408 (h!67856 s!2326) Nil!61408)) (t!374755 s!2326) s!2326))))

(declare-fun b!5367533 () Bool)

(declare-fun res!2277869 () Bool)

(assert (=> b!5367533 (=> (not res!2277869) (not e!3330795))))

(assert (=> b!5367533 (= res!2277869 (matchR!7262 (regTwo!30666 r!7292) (_2!35579 (get!21124 lt!2185995))))))

(declare-fun b!5367534 () Bool)

(assert (=> b!5367534 (= e!3330797 e!3330798)))

(declare-fun c!935068 () Bool)

(assert (=> b!5367534 (= c!935068 ((_ is Nil!61408) s!2326))))

(assert (= (and d!1719424 res!2277868) b!5367527))

(assert (= (and d!1719424 c!935067) b!5367528))

(assert (= (and d!1719424 (not c!935067)) b!5367534))

(assert (= (and b!5367534 c!935068) b!5367531))

(assert (= (and b!5367534 (not c!935068)) b!5367532))

(assert (= (and d!1719424 res!2277870) b!5367526))

(assert (= (and b!5367526 res!2277872) b!5367533))

(assert (= (and b!5367533 res!2277869) b!5367530))

(assert (= (and d!1719424 (not res!2277871)) b!5367529))

(declare-fun m!6395474 () Bool)

(assert (=> b!5367530 m!6395474))

(declare-fun m!6395476 () Bool)

(assert (=> b!5367530 m!6395476))

(declare-fun m!6395478 () Bool)

(assert (=> b!5367532 m!6395478))

(assert (=> b!5367532 m!6395478))

(declare-fun m!6395480 () Bool)

(assert (=> b!5367532 m!6395480))

(declare-fun m!6395482 () Bool)

(assert (=> b!5367532 m!6395482))

(assert (=> b!5367532 m!6395478))

(declare-fun m!6395484 () Bool)

(assert (=> b!5367532 m!6395484))

(declare-fun m!6395486 () Bool)

(assert (=> b!5367527 m!6395486))

(declare-fun m!6395488 () Bool)

(assert (=> d!1719424 m!6395488))

(declare-fun m!6395490 () Bool)

(assert (=> d!1719424 m!6395490))

(declare-fun m!6395492 () Bool)

(assert (=> d!1719424 m!6395492))

(assert (=> b!5367526 m!6395474))

(declare-fun m!6395494 () Bool)

(assert (=> b!5367526 m!6395494))

(assert (=> b!5367529 m!6395488))

(assert (=> b!5367533 m!6395474))

(declare-fun m!6395496 () Bool)

(assert (=> b!5367533 m!6395496))

(assert (=> b!5367412 d!1719424))

(declare-fun d!1719450 () Bool)

(declare-fun choose!40302 (Int) Bool)

(assert (=> d!1719450 (= (Exists!2258 lambda!276698) (choose!40302 lambda!276698))))

(declare-fun bs!1243310 () Bool)

(assert (= bs!1243310 d!1719450))

(declare-fun m!6395498 () Bool)

(assert (=> bs!1243310 m!6395498))

(assert (=> b!5367412 d!1719450))

(declare-fun d!1719452 () Bool)

(assert (=> d!1719452 (= (Exists!2258 lambda!276699) (choose!40302 lambda!276699))))

(declare-fun bs!1243311 () Bool)

(assert (= bs!1243311 d!1719452))

(declare-fun m!6395500 () Bool)

(assert (=> bs!1243311 m!6395500))

(assert (=> b!5367412 d!1719452))

(declare-fun bs!1243312 () Bool)

(declare-fun d!1719454 () Bool)

(assert (= bs!1243312 (and d!1719454 b!5367412)))

(declare-fun lambda!276713 () Int)

(assert (=> bs!1243312 (= lambda!276713 lambda!276698)))

(assert (=> bs!1243312 (not (= lambda!276713 lambda!276699))))

(declare-fun bs!1243313 () Bool)

(assert (= bs!1243313 (and d!1719454 b!5367409)))

(assert (=> bs!1243313 (= (= (regOne!30666 r!7292) lt!2185956) (= lambda!276713 lambda!276701))))

(assert (=> bs!1243313 (not (= lambda!276713 lambda!276702))))

(assert (=> d!1719454 true))

(assert (=> d!1719454 true))

(assert (=> d!1719454 true))

(assert (=> d!1719454 (= (isDefined!11891 (findConcatSeparation!1602 (regOne!30666 r!7292) (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326)) (Exists!2258 lambda!276713))))

(declare-fun lt!2186002 () Unit!153826)

(declare-fun choose!40303 (Regex!15077 Regex!15077 List!61532) Unit!153826)

(assert (=> d!1719454 (= lt!2186002 (choose!40303 (regOne!30666 r!7292) (regTwo!30666 r!7292) s!2326))))

(assert (=> d!1719454 (validRegex!6813 (regOne!30666 r!7292))))

(assert (=> d!1719454 (= (lemmaFindConcatSeparationEquivalentToExists!1366 (regOne!30666 r!7292) (regTwo!30666 r!7292) s!2326) lt!2186002)))

(declare-fun bs!1243314 () Bool)

(assert (= bs!1243314 d!1719454))

(assert (=> bs!1243314 m!6395338))

(assert (=> bs!1243314 m!6395340))

(declare-fun m!6395518 () Bool)

(assert (=> bs!1243314 m!6395518))

(assert (=> bs!1243314 m!6395492))

(declare-fun m!6395520 () Bool)

(assert (=> bs!1243314 m!6395520))

(assert (=> bs!1243314 m!6395338))

(assert (=> b!5367412 d!1719454))

(declare-fun bs!1243321 () Bool)

(declare-fun d!1719458 () Bool)

(assert (= bs!1243321 (and d!1719458 b!5367412)))

(declare-fun lambda!276720 () Int)

(assert (=> bs!1243321 (= lambda!276720 lambda!276698)))

(declare-fun bs!1243322 () Bool)

(assert (= bs!1243322 (and d!1719458 b!5367409)))

(assert (=> bs!1243322 (not (= lambda!276720 lambda!276702))))

(declare-fun bs!1243323 () Bool)

(assert (= bs!1243323 (and d!1719458 d!1719454)))

(assert (=> bs!1243323 (= lambda!276720 lambda!276713)))

(assert (=> bs!1243322 (= (= (regOne!30666 r!7292) lt!2185956) (= lambda!276720 lambda!276701))))

(assert (=> bs!1243321 (not (= lambda!276720 lambda!276699))))

(assert (=> d!1719458 true))

(assert (=> d!1719458 true))

(assert (=> d!1719458 true))

(declare-fun lambda!276721 () Int)

(assert (=> bs!1243321 (not (= lambda!276721 lambda!276698))))

(assert (=> bs!1243322 (= (= (regOne!30666 r!7292) lt!2185956) (= lambda!276721 lambda!276702))))

(assert (=> bs!1243323 (not (= lambda!276721 lambda!276713))))

(assert (=> bs!1243321 (= lambda!276721 lambda!276699)))

(assert (=> bs!1243322 (not (= lambda!276721 lambda!276701))))

(declare-fun bs!1243324 () Bool)

(assert (= bs!1243324 d!1719458))

(assert (=> bs!1243324 (not (= lambda!276721 lambda!276720))))

(assert (=> d!1719458 true))

(assert (=> d!1719458 true))

(assert (=> d!1719458 true))

(assert (=> d!1719458 (= (Exists!2258 lambda!276720) (Exists!2258 lambda!276721))))

(declare-fun lt!2186011 () Unit!153826)

(declare-fun choose!40304 (Regex!15077 Regex!15077 List!61532) Unit!153826)

(assert (=> d!1719458 (= lt!2186011 (choose!40304 (regOne!30666 r!7292) (regTwo!30666 r!7292) s!2326))))

(assert (=> d!1719458 (validRegex!6813 (regOne!30666 r!7292))))

(assert (=> d!1719458 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!912 (regOne!30666 r!7292) (regTwo!30666 r!7292) s!2326) lt!2186011)))

(declare-fun m!6395536 () Bool)

(assert (=> bs!1243324 m!6395536))

(declare-fun m!6395538 () Bool)

(assert (=> bs!1243324 m!6395538))

(declare-fun m!6395540 () Bool)

(assert (=> bs!1243324 m!6395540))

(assert (=> bs!1243324 m!6395492))

(assert (=> b!5367412 d!1719458))

(declare-fun d!1719466 () Bool)

(declare-fun isEmpty!33387 (Option!15188) Bool)

(assert (=> d!1719466 (= (isDefined!11891 (findConcatSeparation!1602 (regOne!30666 r!7292) (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326)) (not (isEmpty!33387 (findConcatSeparation!1602 (regOne!30666 r!7292) (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326))))))

(declare-fun bs!1243325 () Bool)

(assert (= bs!1243325 d!1719466))

(assert (=> bs!1243325 m!6395338))

(declare-fun m!6395542 () Bool)

(assert (=> bs!1243325 m!6395542))

(assert (=> b!5367412 d!1719466))

(declare-fun d!1719468 () Bool)

(declare-fun c!935098 () Bool)

(assert (=> d!1719468 (= c!935098 (isEmpty!33384 (t!374755 s!2326)))))

(declare-fun e!3330871 () Bool)

(assert (=> d!1719468 (= (matchZipper!1321 lt!2185976 (t!374755 s!2326)) e!3330871)))

(declare-fun b!5367666 () Bool)

(declare-fun nullableZipper!1397 ((InoxSet Context!8922)) Bool)

(assert (=> b!5367666 (= e!3330871 (nullableZipper!1397 lt!2185976))))

(declare-fun b!5367667 () Bool)

(declare-fun head!11513 (List!61532) C!30424)

(declare-fun tail!10610 (List!61532) List!61532)

(assert (=> b!5367667 (= e!3330871 (matchZipper!1321 (derivationStepZipper!1316 lt!2185976 (head!11513 (t!374755 s!2326))) (tail!10610 (t!374755 s!2326))))))

(assert (= (and d!1719468 c!935098) b!5367666))

(assert (= (and d!1719468 (not c!935098)) b!5367667))

(declare-fun m!6395572 () Bool)

(assert (=> d!1719468 m!6395572))

(declare-fun m!6395574 () Bool)

(assert (=> b!5367666 m!6395574))

(declare-fun m!6395576 () Bool)

(assert (=> b!5367667 m!6395576))

(assert (=> b!5367667 m!6395576))

(declare-fun m!6395578 () Bool)

(assert (=> b!5367667 m!6395578))

(declare-fun m!6395580 () Bool)

(assert (=> b!5367667 m!6395580))

(assert (=> b!5367667 m!6395578))

(assert (=> b!5367667 m!6395580))

(declare-fun m!6395582 () Bool)

(assert (=> b!5367667 m!6395582))

(assert (=> b!5367433 d!1719468))

(declare-fun d!1719476 () Bool)

(declare-fun e!3330876 () Bool)

(assert (=> d!1719476 e!3330876))

(declare-fun res!2277952 () Bool)

(assert (=> d!1719476 (=> (not res!2277952) (not e!3330876))))

(declare-fun lt!2186025 () List!61531)

(declare-fun noDuplicate!1351 (List!61531) Bool)

(assert (=> d!1719476 (= res!2277952 (noDuplicate!1351 lt!2186025))))

(declare-fun choose!40305 ((InoxSet Context!8922)) List!61531)

(assert (=> d!1719476 (= lt!2186025 (choose!40305 z!1189))))

(assert (=> d!1719476 (= (toList!8861 z!1189) lt!2186025)))

(declare-fun b!5367674 () Bool)

(declare-fun content!10969 (List!61531) (InoxSet Context!8922))

(assert (=> b!5367674 (= e!3330876 (= (content!10969 lt!2186025) z!1189))))

(assert (= (and d!1719476 res!2277952) b!5367674))

(declare-fun m!6395584 () Bool)

(assert (=> d!1719476 m!6395584))

(declare-fun m!6395586 () Bool)

(assert (=> d!1719476 m!6395586))

(declare-fun m!6395588 () Bool)

(assert (=> b!5367674 m!6395588))

(assert (=> b!5367434 d!1719476))

(declare-fun b!5367722 () Bool)

(declare-fun res!2277983 () Bool)

(declare-fun e!3330904 () Bool)

(assert (=> b!5367722 (=> res!2277983 e!3330904)))

(assert (=> b!5367722 (= res!2277983 (not (isEmpty!33384 (tail!10610 (_1!35579 lt!2185948)))))))

(declare-fun b!5367723 () Bool)

(declare-fun e!3330906 () Bool)

(declare-fun e!3330908 () Bool)

(assert (=> b!5367723 (= e!3330906 e!3330908)))

(declare-fun res!2277985 () Bool)

(assert (=> b!5367723 (=> (not res!2277985) (not e!3330908))))

(declare-fun lt!2186032 () Bool)

(assert (=> b!5367723 (= res!2277985 (not lt!2186032))))

(declare-fun b!5367724 () Bool)

(declare-fun e!3330902 () Bool)

(assert (=> b!5367724 (= e!3330902 (nullable!5246 lt!2185956))))

(declare-fun b!5367725 () Bool)

(declare-fun res!2277981 () Bool)

(declare-fun e!3330907 () Bool)

(assert (=> b!5367725 (=> (not res!2277981) (not e!3330907))))

(declare-fun call!384233 () Bool)

(assert (=> b!5367725 (= res!2277981 (not call!384233))))

(declare-fun b!5367726 () Bool)

(assert (=> b!5367726 (= e!3330907 (= (head!11513 (_1!35579 lt!2185948)) (c!935035 lt!2185956)))))

(declare-fun b!5367727 () Bool)

(declare-fun res!2277982 () Bool)

(assert (=> b!5367727 (=> res!2277982 e!3330906)))

(assert (=> b!5367727 (= res!2277982 (not ((_ is ElementMatch!15077) lt!2185956)))))

(declare-fun e!3330905 () Bool)

(assert (=> b!5367727 (= e!3330905 e!3330906)))

(declare-fun b!5367728 () Bool)

(declare-fun e!3330903 () Bool)

(assert (=> b!5367728 (= e!3330903 e!3330905)))

(declare-fun c!935109 () Bool)

(assert (=> b!5367728 (= c!935109 ((_ is EmptyLang!15077) lt!2185956))))

(declare-fun b!5367729 () Bool)

(declare-fun derivativeStep!4219 (Regex!15077 C!30424) Regex!15077)

(assert (=> b!5367729 (= e!3330902 (matchR!7262 (derivativeStep!4219 lt!2185956 (head!11513 (_1!35579 lt!2185948))) (tail!10610 (_1!35579 lt!2185948))))))

(declare-fun b!5367730 () Bool)

(assert (=> b!5367730 (= e!3330903 (= lt!2186032 call!384233))))

(declare-fun d!1719478 () Bool)

(assert (=> d!1719478 e!3330903))

(declare-fun c!935111 () Bool)

(assert (=> d!1719478 (= c!935111 ((_ is EmptyExpr!15077) lt!2185956))))

(assert (=> d!1719478 (= lt!2186032 e!3330902)))

(declare-fun c!935110 () Bool)

(assert (=> d!1719478 (= c!935110 (isEmpty!33384 (_1!35579 lt!2185948)))))

(assert (=> d!1719478 (validRegex!6813 lt!2185956)))

(assert (=> d!1719478 (= (matchR!7262 lt!2185956 (_1!35579 lt!2185948)) lt!2186032)))

(declare-fun b!5367731 () Bool)

(assert (=> b!5367731 (= e!3330904 (not (= (head!11513 (_1!35579 lt!2185948)) (c!935035 lt!2185956))))))

(declare-fun b!5367732 () Bool)

(assert (=> b!5367732 (= e!3330908 e!3330904)))

(declare-fun res!2277984 () Bool)

(assert (=> b!5367732 (=> res!2277984 e!3330904)))

(assert (=> b!5367732 (= res!2277984 call!384233)))

(declare-fun bm!384228 () Bool)

(assert (=> bm!384228 (= call!384233 (isEmpty!33384 (_1!35579 lt!2185948)))))

(declare-fun b!5367733 () Bool)

(assert (=> b!5367733 (= e!3330905 (not lt!2186032))))

(declare-fun b!5367734 () Bool)

(declare-fun res!2277986 () Bool)

(assert (=> b!5367734 (=> res!2277986 e!3330906)))

(assert (=> b!5367734 (= res!2277986 e!3330907)))

(declare-fun res!2277980 () Bool)

(assert (=> b!5367734 (=> (not res!2277980) (not e!3330907))))

(assert (=> b!5367734 (= res!2277980 lt!2186032)))

(declare-fun b!5367735 () Bool)

(declare-fun res!2277987 () Bool)

(assert (=> b!5367735 (=> (not res!2277987) (not e!3330907))))

(assert (=> b!5367735 (= res!2277987 (isEmpty!33384 (tail!10610 (_1!35579 lt!2185948))))))

(assert (= (and d!1719478 c!935110) b!5367724))

(assert (= (and d!1719478 (not c!935110)) b!5367729))

(assert (= (and d!1719478 c!935111) b!5367730))

(assert (= (and d!1719478 (not c!935111)) b!5367728))

(assert (= (and b!5367728 c!935109) b!5367733))

(assert (= (and b!5367728 (not c!935109)) b!5367727))

(assert (= (and b!5367727 (not res!2277982)) b!5367734))

(assert (= (and b!5367734 res!2277980) b!5367725))

(assert (= (and b!5367725 res!2277981) b!5367735))

(assert (= (and b!5367735 res!2277987) b!5367726))

(assert (= (and b!5367734 (not res!2277986)) b!5367723))

(assert (= (and b!5367723 res!2277985) b!5367732))

(assert (= (and b!5367732 (not res!2277984)) b!5367722))

(assert (= (and b!5367722 (not res!2277983)) b!5367731))

(assert (= (or b!5367730 b!5367725 b!5367732) bm!384228))

(assert (=> bm!384228 m!6395326))

(declare-fun m!6395602 () Bool)

(assert (=> b!5367726 m!6395602))

(declare-fun m!6395604 () Bool)

(assert (=> b!5367735 m!6395604))

(assert (=> b!5367735 m!6395604))

(declare-fun m!6395606 () Bool)

(assert (=> b!5367735 m!6395606))

(assert (=> b!5367722 m!6395604))

(assert (=> b!5367722 m!6395604))

(assert (=> b!5367722 m!6395606))

(assert (=> d!1719478 m!6395326))

(declare-fun m!6395610 () Bool)

(assert (=> d!1719478 m!6395610))

(assert (=> b!5367729 m!6395602))

(assert (=> b!5367729 m!6395602))

(declare-fun m!6395614 () Bool)

(assert (=> b!5367729 m!6395614))

(assert (=> b!5367729 m!6395604))

(assert (=> b!5367729 m!6395614))

(assert (=> b!5367729 m!6395604))

(declare-fun m!6395618 () Bool)

(assert (=> b!5367729 m!6395618))

(declare-fun m!6395620 () Bool)

(assert (=> b!5367724 m!6395620))

(assert (=> b!5367731 m!6395602))

(assert (=> b!5367414 d!1719478))

(declare-fun b!5367750 () Bool)

(declare-fun res!2277999 () Bool)

(declare-fun e!3330918 () Bool)

(assert (=> b!5367750 (=> res!2277999 e!3330918)))

(assert (=> b!5367750 (= res!2277999 (not (isEmpty!33384 (tail!10610 (_2!35579 lt!2185948)))))))

(declare-fun b!5367751 () Bool)

(declare-fun e!3330920 () Bool)

(declare-fun e!3330922 () Bool)

(assert (=> b!5367751 (= e!3330920 e!3330922)))

(declare-fun res!2278001 () Bool)

(assert (=> b!5367751 (=> (not res!2278001) (not e!3330922))))

(declare-fun lt!2186034 () Bool)

(assert (=> b!5367751 (= res!2278001 (not lt!2186034))))

(declare-fun b!5367752 () Bool)

(declare-fun e!3330916 () Bool)

(assert (=> b!5367752 (= e!3330916 (nullable!5246 (regTwo!30666 r!7292)))))

(declare-fun b!5367753 () Bool)

(declare-fun res!2277997 () Bool)

(declare-fun e!3330921 () Bool)

(assert (=> b!5367753 (=> (not res!2277997) (not e!3330921))))

(declare-fun call!384235 () Bool)

(assert (=> b!5367753 (= res!2277997 (not call!384235))))

(declare-fun b!5367754 () Bool)

(assert (=> b!5367754 (= e!3330921 (= (head!11513 (_2!35579 lt!2185948)) (c!935035 (regTwo!30666 r!7292))))))

(declare-fun b!5367755 () Bool)

(declare-fun res!2277998 () Bool)

(assert (=> b!5367755 (=> res!2277998 e!3330920)))

(assert (=> b!5367755 (= res!2277998 (not ((_ is ElementMatch!15077) (regTwo!30666 r!7292))))))

(declare-fun e!3330919 () Bool)

(assert (=> b!5367755 (= e!3330919 e!3330920)))

(declare-fun b!5367756 () Bool)

(declare-fun e!3330917 () Bool)

(assert (=> b!5367756 (= e!3330917 e!3330919)))

(declare-fun c!935115 () Bool)

(assert (=> b!5367756 (= c!935115 ((_ is EmptyLang!15077) (regTwo!30666 r!7292)))))

(declare-fun b!5367757 () Bool)

(assert (=> b!5367757 (= e!3330916 (matchR!7262 (derivativeStep!4219 (regTwo!30666 r!7292) (head!11513 (_2!35579 lt!2185948))) (tail!10610 (_2!35579 lt!2185948))))))

(declare-fun b!5367758 () Bool)

(assert (=> b!5367758 (= e!3330917 (= lt!2186034 call!384235))))

(declare-fun d!1719488 () Bool)

(assert (=> d!1719488 e!3330917))

(declare-fun c!935117 () Bool)

(assert (=> d!1719488 (= c!935117 ((_ is EmptyExpr!15077) (regTwo!30666 r!7292)))))

(assert (=> d!1719488 (= lt!2186034 e!3330916)))

(declare-fun c!935116 () Bool)

(assert (=> d!1719488 (= c!935116 (isEmpty!33384 (_2!35579 lt!2185948)))))

(assert (=> d!1719488 (validRegex!6813 (regTwo!30666 r!7292))))

(assert (=> d!1719488 (= (matchR!7262 (regTwo!30666 r!7292) (_2!35579 lt!2185948)) lt!2186034)))

(declare-fun b!5367759 () Bool)

(assert (=> b!5367759 (= e!3330918 (not (= (head!11513 (_2!35579 lt!2185948)) (c!935035 (regTwo!30666 r!7292)))))))

(declare-fun b!5367760 () Bool)

(assert (=> b!5367760 (= e!3330922 e!3330918)))

(declare-fun res!2278000 () Bool)

(assert (=> b!5367760 (=> res!2278000 e!3330918)))

(assert (=> b!5367760 (= res!2278000 call!384235)))

(declare-fun bm!384230 () Bool)

(assert (=> bm!384230 (= call!384235 (isEmpty!33384 (_2!35579 lt!2185948)))))

(declare-fun b!5367761 () Bool)

(assert (=> b!5367761 (= e!3330919 (not lt!2186034))))

(declare-fun b!5367762 () Bool)

(declare-fun res!2278002 () Bool)

(assert (=> b!5367762 (=> res!2278002 e!3330920)))

(assert (=> b!5367762 (= res!2278002 e!3330921)))

(declare-fun res!2277996 () Bool)

(assert (=> b!5367762 (=> (not res!2277996) (not e!3330921))))

(assert (=> b!5367762 (= res!2277996 lt!2186034)))

(declare-fun b!5367763 () Bool)

(declare-fun res!2278003 () Bool)

(assert (=> b!5367763 (=> (not res!2278003) (not e!3330921))))

(assert (=> b!5367763 (= res!2278003 (isEmpty!33384 (tail!10610 (_2!35579 lt!2185948))))))

(assert (= (and d!1719488 c!935116) b!5367752))

(assert (= (and d!1719488 (not c!935116)) b!5367757))

(assert (= (and d!1719488 c!935117) b!5367758))

(assert (= (and d!1719488 (not c!935117)) b!5367756))

(assert (= (and b!5367756 c!935115) b!5367761))

(assert (= (and b!5367756 (not c!935115)) b!5367755))

(assert (= (and b!5367755 (not res!2277998)) b!5367762))

(assert (= (and b!5367762 res!2277996) b!5367753))

(assert (= (and b!5367753 res!2277997) b!5367763))

(assert (= (and b!5367763 res!2278003) b!5367754))

(assert (= (and b!5367762 (not res!2278002)) b!5367751))

(assert (= (and b!5367751 res!2278001) b!5367760))

(assert (= (and b!5367760 (not res!2278000)) b!5367750))

(assert (= (and b!5367750 (not res!2277999)) b!5367759))

(assert (= (or b!5367758 b!5367753 b!5367760) bm!384230))

(declare-fun m!6395622 () Bool)

(assert (=> bm!384230 m!6395622))

(declare-fun m!6395624 () Bool)

(assert (=> b!5367754 m!6395624))

(declare-fun m!6395626 () Bool)

(assert (=> b!5367763 m!6395626))

(assert (=> b!5367763 m!6395626))

(declare-fun m!6395630 () Bool)

(assert (=> b!5367763 m!6395630))

(assert (=> b!5367750 m!6395626))

(assert (=> b!5367750 m!6395626))

(assert (=> b!5367750 m!6395630))

(assert (=> d!1719488 m!6395622))

(declare-fun m!6395632 () Bool)

(assert (=> d!1719488 m!6395632))

(assert (=> b!5367757 m!6395624))

(assert (=> b!5367757 m!6395624))

(declare-fun m!6395636 () Bool)

(assert (=> b!5367757 m!6395636))

(assert (=> b!5367757 m!6395626))

(assert (=> b!5367757 m!6395636))

(assert (=> b!5367757 m!6395626))

(declare-fun m!6395640 () Bool)

(assert (=> b!5367757 m!6395640))

(declare-fun m!6395642 () Bool)

(assert (=> b!5367752 m!6395642))

(assert (=> b!5367759 m!6395624))

(assert (=> b!5367435 d!1719488))

(declare-fun b!5367831 () Bool)

(declare-fun e!3330967 () (InoxSet Context!8922))

(declare-fun call!384261 () (InoxSet Context!8922))

(assert (=> b!5367831 (= e!3330967 call!384261)))

(declare-fun bm!384253 () Bool)

(declare-fun call!384259 () List!61530)

(declare-fun c!935139 () Bool)

(declare-fun c!935141 () Bool)

(declare-fun c!935137 () Bool)

(declare-fun call!384258 () (InoxSet Context!8922))

(assert (=> bm!384253 (= call!384258 (derivationStepZipperDown!525 (ite c!935139 (regOne!30667 (reg!15406 (regOne!30666 r!7292))) (ite c!935141 (regTwo!30666 (reg!15406 (regOne!30666 r!7292))) (ite c!935137 (regOne!30666 (reg!15406 (regOne!30666 r!7292))) (reg!15406 (reg!15406 (regOne!30666 r!7292)))))) (ite (or c!935139 c!935141) lt!2185961 (Context!8923 call!384259)) (h!67856 s!2326)))))

(declare-fun b!5367832 () Bool)

(declare-fun e!3330972 () (InoxSet Context!8922))

(assert (=> b!5367832 (= e!3330972 e!3330967)))

(assert (=> b!5367832 (= c!935137 ((_ is Concat!23922) (reg!15406 (regOne!30666 r!7292))))))

(declare-fun b!5367833 () Bool)

(declare-fun e!3330971 () (InoxSet Context!8922))

(assert (=> b!5367833 (= e!3330971 (store ((as const (Array Context!8922 Bool)) false) lt!2185961 true))))

(declare-fun d!1719492 () Bool)

(declare-fun c!935138 () Bool)

(assert (=> d!1719492 (= c!935138 (and ((_ is ElementMatch!15077) (reg!15406 (regOne!30666 r!7292))) (= (c!935035 (reg!15406 (regOne!30666 r!7292))) (h!67856 s!2326))))))

(assert (=> d!1719492 (= (derivationStepZipperDown!525 (reg!15406 (regOne!30666 r!7292)) lt!2185961 (h!67856 s!2326)) e!3330971)))

(declare-fun b!5367834 () Bool)

(declare-fun e!3330969 () (InoxSet Context!8922))

(assert (=> b!5367834 (= e!3330969 ((as const (Array Context!8922 Bool)) false))))

(declare-fun b!5367835 () Bool)

(declare-fun e!3330970 () Bool)

(assert (=> b!5367835 (= e!3330970 (nullable!5246 (regOne!30666 (reg!15406 (regOne!30666 r!7292)))))))

(declare-fun b!5367836 () Bool)

(declare-fun call!384262 () (InoxSet Context!8922))

(declare-fun call!384263 () (InoxSet Context!8922))

(assert (=> b!5367836 (= e!3330972 ((_ map or) call!384262 call!384263))))

(declare-fun b!5367837 () Bool)

(declare-fun e!3330968 () (InoxSet Context!8922))

(assert (=> b!5367837 (= e!3330968 ((_ map or) call!384258 call!384262))))

(declare-fun b!5367838 () Bool)

(assert (=> b!5367838 (= c!935141 e!3330970)))

(declare-fun res!2278033 () Bool)

(assert (=> b!5367838 (=> (not res!2278033) (not e!3330970))))

(assert (=> b!5367838 (= res!2278033 ((_ is Concat!23922) (reg!15406 (regOne!30666 r!7292))))))

(assert (=> b!5367838 (= e!3330968 e!3330972)))

(declare-fun bm!384254 () Bool)

(declare-fun call!384260 () List!61530)

(assert (=> bm!384254 (= call!384259 call!384260)))

(declare-fun bm!384255 () Bool)

(assert (=> bm!384255 (= call!384262 (derivationStepZipperDown!525 (ite c!935139 (regTwo!30667 (reg!15406 (regOne!30666 r!7292))) (regOne!30666 (reg!15406 (regOne!30666 r!7292)))) (ite c!935139 lt!2185961 (Context!8923 call!384260)) (h!67856 s!2326)))))

(declare-fun bm!384256 () Bool)

(assert (=> bm!384256 (= call!384263 call!384258)))

(declare-fun b!5367839 () Bool)

(declare-fun c!935140 () Bool)

(assert (=> b!5367839 (= c!935140 ((_ is Star!15077) (reg!15406 (regOne!30666 r!7292))))))

(assert (=> b!5367839 (= e!3330967 e!3330969)))

(declare-fun bm!384257 () Bool)

(declare-fun $colon$colon!1448 (List!61530 Regex!15077) List!61530)

(assert (=> bm!384257 (= call!384260 ($colon$colon!1448 (exprs!4961 lt!2185961) (ite (or c!935141 c!935137) (regTwo!30666 (reg!15406 (regOne!30666 r!7292))) (reg!15406 (regOne!30666 r!7292)))))))

(declare-fun b!5367840 () Bool)

(assert (=> b!5367840 (= e!3330969 call!384261)))

(declare-fun b!5367841 () Bool)

(assert (=> b!5367841 (= e!3330971 e!3330968)))

(assert (=> b!5367841 (= c!935139 ((_ is Union!15077) (reg!15406 (regOne!30666 r!7292))))))

(declare-fun bm!384258 () Bool)

(assert (=> bm!384258 (= call!384261 call!384263)))

(assert (= (and d!1719492 c!935138) b!5367833))

(assert (= (and d!1719492 (not c!935138)) b!5367841))

(assert (= (and b!5367841 c!935139) b!5367837))

(assert (= (and b!5367841 (not c!935139)) b!5367838))

(assert (= (and b!5367838 res!2278033) b!5367835))

(assert (= (and b!5367838 c!935141) b!5367836))

(assert (= (and b!5367838 (not c!935141)) b!5367832))

(assert (= (and b!5367832 c!935137) b!5367831))

(assert (= (and b!5367832 (not c!935137)) b!5367839))

(assert (= (and b!5367839 c!935140) b!5367840))

(assert (= (and b!5367839 (not c!935140)) b!5367834))

(assert (= (or b!5367831 b!5367840) bm!384254))

(assert (= (or b!5367831 b!5367840) bm!384258))

(assert (= (or b!5367836 bm!384254) bm!384257))

(assert (= (or b!5367836 bm!384258) bm!384256))

(assert (= (or b!5367837 b!5367836) bm!384255))

(assert (= (or b!5367837 bm!384256) bm!384253))

(declare-fun m!6395678 () Bool)

(assert (=> bm!384253 m!6395678))

(declare-fun m!6395680 () Bool)

(assert (=> b!5367835 m!6395680))

(declare-fun m!6395682 () Bool)

(assert (=> bm!384257 m!6395682))

(assert (=> b!5367833 m!6395386))

(declare-fun m!6395684 () Bool)

(assert (=> bm!384255 m!6395684))

(assert (=> b!5367416 d!1719492))

(declare-fun d!1719506 () Bool)

(declare-fun lt!2186042 () Regex!15077)

(assert (=> d!1719506 (validRegex!6813 lt!2186042)))

(assert (=> d!1719506 (= lt!2186042 (generalisedUnion!1006 (unfocusZipperList!519 zl!343)))))

(assert (=> d!1719506 (= (unfocusZipper!819 zl!343) lt!2186042)))

(declare-fun bs!1243361 () Bool)

(assert (= bs!1243361 d!1719506))

(declare-fun m!6395710 () Bool)

(assert (=> bs!1243361 m!6395710))

(assert (=> bs!1243361 m!6395322))

(assert (=> bs!1243361 m!6395322))

(assert (=> bs!1243361 m!6395324))

(assert (=> b!5367438 d!1719506))

(declare-fun d!1719520 () Bool)

(declare-fun lt!2186043 () Regex!15077)

(assert (=> d!1719520 (validRegex!6813 lt!2186043)))

(assert (=> d!1719520 (= lt!2186043 (generalisedUnion!1006 (unfocusZipperList!519 (Cons!61407 lt!2185950 Nil!61407))))))

(assert (=> d!1719520 (= (unfocusZipper!819 (Cons!61407 lt!2185950 Nil!61407)) lt!2186043)))

(declare-fun bs!1243362 () Bool)

(assert (= bs!1243362 d!1719520))

(declare-fun m!6395712 () Bool)

(assert (=> bs!1243362 m!6395712))

(declare-fun m!6395714 () Bool)

(assert (=> bs!1243362 m!6395714))

(assert (=> bs!1243362 m!6395714))

(declare-fun m!6395716 () Bool)

(assert (=> bs!1243362 m!6395716))

(assert (=> b!5367418 d!1719520))

(declare-fun d!1719522 () Bool)

(declare-fun choose!40311 ((InoxSet Context!8922) Int) (InoxSet Context!8922))

(assert (=> d!1719522 (= (flatMap!804 lt!2185957 lambda!276700) (choose!40311 lt!2185957 lambda!276700))))

(declare-fun bs!1243363 () Bool)

(assert (= bs!1243363 d!1719522))

(declare-fun m!6395718 () Bool)

(assert (=> bs!1243363 m!6395718))

(assert (=> b!5367418 d!1719522))

(declare-fun b!5367868 () Bool)

(declare-fun e!3330991 () (InoxSet Context!8922))

(assert (=> b!5367868 (= e!3330991 ((as const (Array Context!8922 Bool)) false))))

(declare-fun bm!384263 () Bool)

(declare-fun call!384268 () (InoxSet Context!8922))

(assert (=> bm!384263 (= call!384268 (derivationStepZipperDown!525 (h!67854 (exprs!4961 lt!2185950)) (Context!8923 (t!374753 (exprs!4961 lt!2185950))) (h!67856 s!2326)))))

(declare-fun d!1719524 () Bool)

(declare-fun c!935154 () Bool)

(declare-fun e!3330990 () Bool)

(assert (=> d!1719524 (= c!935154 e!3330990)))

(declare-fun res!2278040 () Bool)

(assert (=> d!1719524 (=> (not res!2278040) (not e!3330990))))

(assert (=> d!1719524 (= res!2278040 ((_ is Cons!61406) (exprs!4961 lt!2185950)))))

(declare-fun e!3330989 () (InoxSet Context!8922))

(assert (=> d!1719524 (= (derivationStepZipperUp!449 lt!2185950 (h!67856 s!2326)) e!3330989)))

(declare-fun b!5367869 () Bool)

(assert (=> b!5367869 (= e!3330989 ((_ map or) call!384268 (derivationStepZipperUp!449 (Context!8923 (t!374753 (exprs!4961 lt!2185950))) (h!67856 s!2326))))))

(declare-fun b!5367870 () Bool)

(assert (=> b!5367870 (= e!3330990 (nullable!5246 (h!67854 (exprs!4961 lt!2185950))))))

(declare-fun b!5367871 () Bool)

(assert (=> b!5367871 (= e!3330989 e!3330991)))

(declare-fun c!935155 () Bool)

(assert (=> b!5367871 (= c!935155 ((_ is Cons!61406) (exprs!4961 lt!2185950)))))

(declare-fun b!5367872 () Bool)

(assert (=> b!5367872 (= e!3330991 call!384268)))

(assert (= (and d!1719524 res!2278040) b!5367870))

(assert (= (and d!1719524 c!935154) b!5367869))

(assert (= (and d!1719524 (not c!935154)) b!5367871))

(assert (= (and b!5367871 c!935155) b!5367872))

(assert (= (and b!5367871 (not c!935155)) b!5367868))

(assert (= (or b!5367869 b!5367872) bm!384263))

(declare-fun m!6395720 () Bool)

(assert (=> bm!384263 m!6395720))

(declare-fun m!6395722 () Bool)

(assert (=> b!5367869 m!6395722))

(declare-fun m!6395724 () Bool)

(assert (=> b!5367870 m!6395724))

(assert (=> b!5367418 d!1719524))

(declare-fun d!1719526 () Bool)

(assert (=> d!1719526 (= (flatMap!804 lt!2185943 lambda!276700) (choose!40311 lt!2185943 lambda!276700))))

(declare-fun bs!1243364 () Bool)

(assert (= bs!1243364 d!1719526))

(declare-fun m!6395726 () Bool)

(assert (=> bs!1243364 m!6395726))

(assert (=> b!5367418 d!1719526))

(declare-fun d!1719528 () Bool)

(declare-fun dynLambda!24255 (Int Context!8922) (InoxSet Context!8922))

(assert (=> d!1719528 (= (flatMap!804 lt!2185957 lambda!276700) (dynLambda!24255 lambda!276700 lt!2185961))))

(declare-fun lt!2186054 () Unit!153826)

(declare-fun choose!40312 ((InoxSet Context!8922) Context!8922 Int) Unit!153826)

(assert (=> d!1719528 (= lt!2186054 (choose!40312 lt!2185957 lt!2185961 lambda!276700))))

(assert (=> d!1719528 (= lt!2185957 (store ((as const (Array Context!8922 Bool)) false) lt!2185961 true))))

(assert (=> d!1719528 (= (lemmaFlatMapOnSingletonSet!336 lt!2185957 lt!2185961 lambda!276700) lt!2186054)))

(declare-fun b_lambda!205807 () Bool)

(assert (=> (not b_lambda!205807) (not d!1719528)))

(declare-fun bs!1243365 () Bool)

(assert (= bs!1243365 d!1719528))

(assert (=> bs!1243365 m!6395382))

(declare-fun m!6395728 () Bool)

(assert (=> bs!1243365 m!6395728))

(declare-fun m!6395730 () Bool)

(assert (=> bs!1243365 m!6395730))

(assert (=> bs!1243365 m!6395386))

(assert (=> b!5367418 d!1719528))

(declare-fun b!5367875 () Bool)

(declare-fun e!3330996 () (InoxSet Context!8922))

(assert (=> b!5367875 (= e!3330996 ((as const (Array Context!8922 Bool)) false))))

(declare-fun bm!384264 () Bool)

(declare-fun call!384269 () (InoxSet Context!8922))

(assert (=> bm!384264 (= call!384269 (derivationStepZipperDown!525 (h!67854 (exprs!4961 lt!2185961)) (Context!8923 (t!374753 (exprs!4961 lt!2185961))) (h!67856 s!2326)))))

(declare-fun d!1719530 () Bool)

(declare-fun c!935160 () Bool)

(declare-fun e!3330995 () Bool)

(assert (=> d!1719530 (= c!935160 e!3330995)))

(declare-fun res!2278043 () Bool)

(assert (=> d!1719530 (=> (not res!2278043) (not e!3330995))))

(assert (=> d!1719530 (= res!2278043 ((_ is Cons!61406) (exprs!4961 lt!2185961)))))

(declare-fun e!3330994 () (InoxSet Context!8922))

(assert (=> d!1719530 (= (derivationStepZipperUp!449 lt!2185961 (h!67856 s!2326)) e!3330994)))

(declare-fun b!5367876 () Bool)

(assert (=> b!5367876 (= e!3330994 ((_ map or) call!384269 (derivationStepZipperUp!449 (Context!8923 (t!374753 (exprs!4961 lt!2185961))) (h!67856 s!2326))))))

(declare-fun b!5367877 () Bool)

(assert (=> b!5367877 (= e!3330995 (nullable!5246 (h!67854 (exprs!4961 lt!2185961))))))

(declare-fun b!5367878 () Bool)

(assert (=> b!5367878 (= e!3330994 e!3330996)))

(declare-fun c!935161 () Bool)

(assert (=> b!5367878 (= c!935161 ((_ is Cons!61406) (exprs!4961 lt!2185961)))))

(declare-fun b!5367879 () Bool)

(assert (=> b!5367879 (= e!3330996 call!384269)))

(assert (= (and d!1719530 res!2278043) b!5367877))

(assert (= (and d!1719530 c!935160) b!5367876))

(assert (= (and d!1719530 (not c!935160)) b!5367878))

(assert (= (and b!5367878 c!935161) b!5367879))

(assert (= (and b!5367878 (not c!935161)) b!5367875))

(assert (= (or b!5367876 b!5367879) bm!384264))

(declare-fun m!6395732 () Bool)

(assert (=> bm!384264 m!6395732))

(declare-fun m!6395734 () Bool)

(assert (=> b!5367876 m!6395734))

(declare-fun m!6395736 () Bool)

(assert (=> b!5367877 m!6395736))

(assert (=> b!5367418 d!1719530))

(declare-fun d!1719532 () Bool)

(assert (=> d!1719532 (= (flatMap!804 lt!2185943 lambda!276700) (dynLambda!24255 lambda!276700 lt!2185950))))

(declare-fun lt!2186059 () Unit!153826)

(assert (=> d!1719532 (= lt!2186059 (choose!40312 lt!2185943 lt!2185950 lambda!276700))))

(assert (=> d!1719532 (= lt!2185943 (store ((as const (Array Context!8922 Bool)) false) lt!2185950 true))))

(assert (=> d!1719532 (= (lemmaFlatMapOnSingletonSet!336 lt!2185943 lt!2185950 lambda!276700) lt!2186059)))

(declare-fun b_lambda!205809 () Bool)

(assert (=> (not b_lambda!205809) (not d!1719532)))

(declare-fun bs!1243366 () Bool)

(assert (= bs!1243366 d!1719532))

(assert (=> bs!1243366 m!6395390))

(declare-fun m!6395738 () Bool)

(assert (=> bs!1243366 m!6395738))

(declare-fun m!6395740 () Bool)

(assert (=> bs!1243366 m!6395740))

(assert (=> bs!1243366 m!6395396))

(assert (=> b!5367418 d!1719532))

(declare-fun bm!384279 () Bool)

(declare-fun call!384287 () Int)

(declare-fun call!384285 () Int)

(assert (=> bm!384279 (= call!384287 call!384285)))

(declare-fun bm!384280 () Bool)

(declare-fun call!384288 () Int)

(declare-fun c!935194 () Bool)

(declare-fun c!935193 () Bool)

(assert (=> bm!384280 (= call!384288 (regexDepth!165 (ite c!935194 (reg!15406 r!7292) (ite c!935193 (regOne!30667 r!7292) (regTwo!30666 r!7292)))))))

(declare-fun bm!384281 () Bool)

(declare-fun call!384286 () Int)

(assert (=> bm!384281 (= call!384286 (regexDepth!165 (ite c!935193 (regTwo!30667 r!7292) (regOne!30666 r!7292))))))

(declare-fun bm!384282 () Bool)

(declare-fun call!384284 () Int)

(declare-fun c!935195 () Bool)

(assert (=> bm!384282 (= call!384284 (regexDepth!165 (ite c!935195 (regOne!30667 r!7292) (regTwo!30666 r!7292))))))

(declare-fun b!5367952 () Bool)

(declare-fun e!3331046 () Bool)

(declare-fun lt!2186069 () Int)

(assert (=> b!5367952 (= e!3331046 (> lt!2186069 call!384285))))

(declare-fun b!5367954 () Bool)

(declare-fun e!3331039 () Bool)

(assert (=> b!5367954 (= e!3331039 (= lt!2186069 1))))

(declare-fun b!5367955 () Bool)

(assert (=> b!5367955 (= e!3331039 (> lt!2186069 call!384287))))

(declare-fun b!5367953 () Bool)

(declare-fun e!3331040 () Bool)

(declare-fun e!3331044 () Bool)

(assert (=> b!5367953 (= e!3331040 e!3331044)))

(declare-fun c!935190 () Bool)

(assert (=> b!5367953 (= c!935190 ((_ is Concat!23922) r!7292))))

(declare-fun d!1719534 () Bool)

(declare-fun e!3331042 () Bool)

(assert (=> d!1719534 e!3331042))

(declare-fun res!2278059 () Bool)

(assert (=> d!1719534 (=> (not res!2278059) (not e!3331042))))

(assert (=> d!1719534 (= res!2278059 (> lt!2186069 0))))

(declare-fun e!3331047 () Int)

(assert (=> d!1719534 (= lt!2186069 e!3331047)))

(declare-fun c!935196 () Bool)

(assert (=> d!1719534 (= c!935196 ((_ is ElementMatch!15077) r!7292))))

(assert (=> d!1719534 (= (regexDepth!165 r!7292) lt!2186069)))

(declare-fun bm!384283 () Bool)

(assert (=> bm!384283 (= call!384285 (regexDepth!165 (ite c!935195 (regTwo!30667 r!7292) (ite c!935190 (regOne!30666 r!7292) (reg!15406 r!7292)))))))

(declare-fun b!5367956 () Bool)

(declare-fun res!2278058 () Bool)

(declare-fun e!3331041 () Bool)

(assert (=> b!5367956 (=> (not res!2278058) (not e!3331041))))

(assert (=> b!5367956 (= res!2278058 (> lt!2186069 call!384287))))

(assert (=> b!5367956 (= e!3331044 e!3331041)))

(declare-fun b!5367957 () Bool)

(declare-fun e!3331045 () Int)

(declare-fun e!3331048 () Int)

(assert (=> b!5367957 (= e!3331045 e!3331048)))

(declare-fun c!935191 () Bool)

(assert (=> b!5367957 (= c!935191 ((_ is Concat!23922) r!7292))))

(declare-fun b!5367958 () Bool)

(assert (=> b!5367958 (= e!3331048 1)))

(declare-fun b!5367959 () Bool)

(assert (=> b!5367959 (= e!3331040 e!3331046)))

(declare-fun res!2278060 () Bool)

(assert (=> b!5367959 (= res!2278060 (> lt!2186069 call!384284))))

(assert (=> b!5367959 (=> (not res!2278060) (not e!3331046))))

(declare-fun b!5367960 () Bool)

(assert (=> b!5367960 (= e!3331041 (> lt!2186069 call!384284))))

(declare-fun b!5367961 () Bool)

(declare-fun e!3331043 () Int)

(assert (=> b!5367961 (= e!3331043 (+ 1 call!384288))))

(declare-fun call!384290 () Int)

(declare-fun call!384289 () Int)

(declare-fun bm!384284 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!384284 (= call!384290 (maxBigInt!0 (ite c!935193 call!384289 call!384286) (ite c!935193 call!384286 call!384289)))))

(declare-fun bm!384285 () Bool)

(assert (=> bm!384285 (= call!384289 call!384288)))

(declare-fun b!5367962 () Bool)

(assert (=> b!5367962 (= e!3331047 1)))

(declare-fun b!5367963 () Bool)

(assert (=> b!5367963 (= e!3331048 (+ 1 call!384290))))

(declare-fun b!5367964 () Bool)

(assert (=> b!5367964 (= e!3331047 e!3331043)))

(assert (=> b!5367964 (= c!935194 ((_ is Star!15077) r!7292))))

(declare-fun b!5367965 () Bool)

(assert (=> b!5367965 (= e!3331045 (+ 1 call!384290))))

(declare-fun b!5367966 () Bool)

(assert (=> b!5367966 (= e!3331042 e!3331040)))

(assert (=> b!5367966 (= c!935195 ((_ is Union!15077) r!7292))))

(declare-fun b!5367967 () Bool)

(declare-fun c!935192 () Bool)

(assert (=> b!5367967 (= c!935192 ((_ is Star!15077) r!7292))))

(assert (=> b!5367967 (= e!3331044 e!3331039)))

(declare-fun b!5367968 () Bool)

(assert (=> b!5367968 (= c!935193 ((_ is Union!15077) r!7292))))

(assert (=> b!5367968 (= e!3331043 e!3331045)))

(assert (= (and d!1719534 c!935196) b!5367962))

(assert (= (and d!1719534 (not c!935196)) b!5367964))

(assert (= (and b!5367964 c!935194) b!5367961))

(assert (= (and b!5367964 (not c!935194)) b!5367968))

(assert (= (and b!5367968 c!935193) b!5367965))

(assert (= (and b!5367968 (not c!935193)) b!5367957))

(assert (= (and b!5367957 c!935191) b!5367963))

(assert (= (and b!5367957 (not c!935191)) b!5367958))

(assert (= (or b!5367965 b!5367963) bm!384281))

(assert (= (or b!5367965 b!5367963) bm!384285))

(assert (= (or b!5367965 b!5367963) bm!384284))

(assert (= (or b!5367961 bm!384285) bm!384280))

(assert (= (and d!1719534 res!2278059) b!5367966))

(assert (= (and b!5367966 c!935195) b!5367959))

(assert (= (and b!5367966 (not c!935195)) b!5367953))

(assert (= (and b!5367959 res!2278060) b!5367952))

(assert (= (and b!5367953 c!935190) b!5367956))

(assert (= (and b!5367953 (not c!935190)) b!5367967))

(assert (= (and b!5367956 res!2278058) b!5367960))

(assert (= (and b!5367967 c!935192) b!5367955))

(assert (= (and b!5367967 (not c!935192)) b!5367954))

(assert (= (or b!5367956 b!5367955) bm!384279))

(assert (= (or b!5367952 bm!384279) bm!384283))

(assert (= (or b!5367959 b!5367960) bm!384282))

(declare-fun m!6395788 () Bool)

(assert (=> bm!384281 m!6395788))

(declare-fun m!6395790 () Bool)

(assert (=> bm!384284 m!6395790))

(declare-fun m!6395792 () Bool)

(assert (=> bm!384280 m!6395792))

(declare-fun m!6395794 () Bool)

(assert (=> bm!384283 m!6395794))

(declare-fun m!6395796 () Bool)

(assert (=> bm!384282 m!6395796))

(assert (=> b!5367419 d!1719534))

(declare-fun bm!384286 () Bool)

(declare-fun call!384294 () Int)

(declare-fun call!384292 () Int)

(assert (=> bm!384286 (= call!384294 call!384292)))

(declare-fun bm!384287 () Bool)

(declare-fun c!935200 () Bool)

(declare-fun c!935201 () Bool)

(declare-fun call!384295 () Int)

(assert (=> bm!384287 (= call!384295 (regexDepth!165 (ite c!935201 (reg!15406 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))) (ite c!935200 (regOne!30667 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))) (regTwo!30666 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343)))))))))))

(declare-fun bm!384288 () Bool)

(declare-fun call!384293 () Int)

(assert (=> bm!384288 (= call!384293 (regexDepth!165 (ite c!935200 (regTwo!30667 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))) (regOne!30666 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))))

(declare-fun bm!384289 () Bool)

(declare-fun call!384291 () Int)

(declare-fun c!935202 () Bool)

(assert (=> bm!384289 (= call!384291 (regexDepth!165 (ite c!935202 (regOne!30667 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))) (regTwo!30666 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))))

(declare-fun b!5367969 () Bool)

(declare-fun e!3331056 () Bool)

(declare-fun lt!2186070 () Int)

(assert (=> b!5367969 (= e!3331056 (> lt!2186070 call!384292))))

(declare-fun b!5367971 () Bool)

(declare-fun e!3331049 () Bool)

(assert (=> b!5367971 (= e!3331049 (= lt!2186070 1))))

(declare-fun b!5367972 () Bool)

(assert (=> b!5367972 (= e!3331049 (> lt!2186070 call!384294))))

(declare-fun b!5367970 () Bool)

(declare-fun e!3331050 () Bool)

(declare-fun e!3331054 () Bool)

(assert (=> b!5367970 (= e!3331050 e!3331054)))

(declare-fun c!935197 () Bool)

(assert (=> b!5367970 (= c!935197 ((_ is Concat!23922) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun d!1719544 () Bool)

(declare-fun e!3331052 () Bool)

(assert (=> d!1719544 e!3331052))

(declare-fun res!2278062 () Bool)

(assert (=> d!1719544 (=> (not res!2278062) (not e!3331052))))

(assert (=> d!1719544 (= res!2278062 (> lt!2186070 0))))

(declare-fun e!3331057 () Int)

(assert (=> d!1719544 (= lt!2186070 e!3331057)))

(declare-fun c!935203 () Bool)

(assert (=> d!1719544 (= c!935203 ((_ is ElementMatch!15077) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(assert (=> d!1719544 (= (regexDepth!165 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))) lt!2186070)))

(declare-fun bm!384290 () Bool)

(assert (=> bm!384290 (= call!384292 (regexDepth!165 (ite c!935202 (regTwo!30667 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))) (ite c!935197 (regOne!30666 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))) (reg!15406 (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343)))))))))))

(declare-fun b!5367973 () Bool)

(declare-fun res!2278061 () Bool)

(declare-fun e!3331051 () Bool)

(assert (=> b!5367973 (=> (not res!2278061) (not e!3331051))))

(assert (=> b!5367973 (= res!2278061 (> lt!2186070 call!384294))))

(assert (=> b!5367973 (= e!3331054 e!3331051)))

(declare-fun b!5367974 () Bool)

(declare-fun e!3331055 () Int)

(declare-fun e!3331058 () Int)

(assert (=> b!5367974 (= e!3331055 e!3331058)))

(declare-fun c!935198 () Bool)

(assert (=> b!5367974 (= c!935198 ((_ is Concat!23922) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5367975 () Bool)

(assert (=> b!5367975 (= e!3331058 1)))

(declare-fun b!5367976 () Bool)

(assert (=> b!5367976 (= e!3331050 e!3331056)))

(declare-fun res!2278063 () Bool)

(assert (=> b!5367976 (= res!2278063 (> lt!2186070 call!384291))))

(assert (=> b!5367976 (=> (not res!2278063) (not e!3331056))))

(declare-fun b!5367977 () Bool)

(assert (=> b!5367977 (= e!3331051 (> lt!2186070 call!384291))))

(declare-fun b!5367978 () Bool)

(declare-fun e!3331053 () Int)

(assert (=> b!5367978 (= e!3331053 (+ 1 call!384295))))

(declare-fun call!384296 () Int)

(declare-fun call!384297 () Int)

(declare-fun bm!384291 () Bool)

(assert (=> bm!384291 (= call!384297 (maxBigInt!0 (ite c!935200 call!384296 call!384293) (ite c!935200 call!384293 call!384296)))))

(declare-fun bm!384292 () Bool)

(assert (=> bm!384292 (= call!384296 call!384295)))

(declare-fun b!5367979 () Bool)

(assert (=> b!5367979 (= e!3331057 1)))

(declare-fun b!5367980 () Bool)

(assert (=> b!5367980 (= e!3331058 (+ 1 call!384297))))

(declare-fun b!5367981 () Bool)

(assert (=> b!5367981 (= e!3331057 e!3331053)))

(assert (=> b!5367981 (= c!935201 ((_ is Star!15077) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5367982 () Bool)

(assert (=> b!5367982 (= e!3331055 (+ 1 call!384297))))

(declare-fun b!5367983 () Bool)

(assert (=> b!5367983 (= e!3331052 e!3331050)))

(assert (=> b!5367983 (= c!935202 ((_ is Union!15077) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5367984 () Bool)

(declare-fun c!935199 () Bool)

(assert (=> b!5367984 (= c!935199 ((_ is Star!15077) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(assert (=> b!5367984 (= e!3331054 e!3331049)))

(declare-fun b!5367985 () Bool)

(assert (=> b!5367985 (= c!935200 ((_ is Union!15077) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(assert (=> b!5367985 (= e!3331053 e!3331055)))

(assert (= (and d!1719544 c!935203) b!5367979))

(assert (= (and d!1719544 (not c!935203)) b!5367981))

(assert (= (and b!5367981 c!935201) b!5367978))

(assert (= (and b!5367981 (not c!935201)) b!5367985))

(assert (= (and b!5367985 c!935200) b!5367982))

(assert (= (and b!5367985 (not c!935200)) b!5367974))

(assert (= (and b!5367974 c!935198) b!5367980))

(assert (= (and b!5367974 (not c!935198)) b!5367975))

(assert (= (or b!5367982 b!5367980) bm!384288))

(assert (= (or b!5367982 b!5367980) bm!384292))

(assert (= (or b!5367982 b!5367980) bm!384291))

(assert (= (or b!5367978 bm!384292) bm!384287))

(assert (= (and d!1719544 res!2278062) b!5367983))

(assert (= (and b!5367983 c!935202) b!5367976))

(assert (= (and b!5367983 (not c!935202)) b!5367970))

(assert (= (and b!5367976 res!2278063) b!5367969))

(assert (= (and b!5367970 c!935197) b!5367973))

(assert (= (and b!5367970 (not c!935197)) b!5367984))

(assert (= (and b!5367973 res!2278061) b!5367977))

(assert (= (and b!5367984 c!935199) b!5367972))

(assert (= (and b!5367984 (not c!935199)) b!5367971))

(assert (= (or b!5367973 b!5367972) bm!384286))

(assert (= (or b!5367969 bm!384286) bm!384290))

(assert (= (or b!5367976 b!5367977) bm!384289))

(declare-fun m!6395798 () Bool)

(assert (=> bm!384288 m!6395798))

(declare-fun m!6395800 () Bool)

(assert (=> bm!384291 m!6395800))

(declare-fun m!6395802 () Bool)

(assert (=> bm!384287 m!6395802))

(declare-fun m!6395804 () Bool)

(assert (=> bm!384290 m!6395804))

(declare-fun m!6395806 () Bool)

(assert (=> bm!384289 m!6395806))

(assert (=> b!5367419 d!1719544))

(declare-fun bs!1243384 () Bool)

(declare-fun d!1719546 () Bool)

(assert (= bs!1243384 (and d!1719546 b!5367411)))

(declare-fun lambda!276757 () Int)

(assert (=> bs!1243384 (= lambda!276757 lambda!276703)))

(declare-fun b!5368020 () Bool)

(declare-fun e!3331081 () Regex!15077)

(declare-fun e!3331083 () Regex!15077)

(assert (=> b!5368020 (= e!3331081 e!3331083)))

(declare-fun c!935222 () Bool)

(assert (=> b!5368020 (= c!935222 ((_ is Cons!61406) (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5368021 () Bool)

(declare-fun e!3331078 () Bool)

(declare-fun e!3331079 () Bool)

(assert (=> b!5368021 (= e!3331078 e!3331079)))

(declare-fun c!935220 () Bool)

(declare-fun tail!10611 (List!61530) List!61530)

(assert (=> b!5368021 (= c!935220 (isEmpty!33385 (tail!10611 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5368022 () Bool)

(assert (=> b!5368022 (= e!3331083 EmptyExpr!15077)))

(declare-fun b!5368023 () Bool)

(declare-fun lt!2186077 () Regex!15077)

(declare-fun isEmptyExpr!932 (Regex!15077) Bool)

(assert (=> b!5368023 (= e!3331078 (isEmptyExpr!932 lt!2186077))))

(declare-fun b!5368024 () Bool)

(assert (=> b!5368024 (= e!3331081 (h!67854 (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun e!3331082 () Bool)

(assert (=> d!1719546 e!3331082))

(declare-fun res!2278069 () Bool)

(assert (=> d!1719546 (=> (not res!2278069) (not e!3331082))))

(assert (=> d!1719546 (= res!2278069 (validRegex!6813 lt!2186077))))

(assert (=> d!1719546 (= lt!2186077 e!3331081)))

(declare-fun c!935219 () Bool)

(declare-fun e!3331080 () Bool)

(assert (=> d!1719546 (= c!935219 e!3331080)))

(declare-fun res!2278068 () Bool)

(assert (=> d!1719546 (=> (not res!2278068) (not e!3331080))))

(assert (=> d!1719546 (= res!2278068 ((_ is Cons!61406) (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(assert (=> d!1719546 (forall!14485 (t!374753 (exprs!4961 (h!67855 zl!343))) lambda!276757)))

(assert (=> d!1719546 (= (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343)))) lt!2186077)))

(declare-fun b!5368025 () Bool)

(declare-fun head!11514 (List!61530) Regex!15077)

(assert (=> b!5368025 (= e!3331079 (= lt!2186077 (head!11514 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5368026 () Bool)

(assert (=> b!5368026 (= e!3331080 (isEmpty!33385 (t!374753 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5368027 () Bool)

(declare-fun isConcat!455 (Regex!15077) Bool)

(assert (=> b!5368027 (= e!3331079 (isConcat!455 lt!2186077))))

(declare-fun b!5368028 () Bool)

(assert (=> b!5368028 (= e!3331082 e!3331078)))

(declare-fun c!935221 () Bool)

(assert (=> b!5368028 (= c!935221 (isEmpty!33385 (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5368029 () Bool)

(assert (=> b!5368029 (= e!3331083 (Concat!23922 (h!67854 (t!374753 (exprs!4961 (h!67855 zl!343)))) (generalisedConcat!746 (t!374753 (t!374753 (exprs!4961 (h!67855 zl!343)))))))))

(assert (= (and d!1719546 res!2278068) b!5368026))

(assert (= (and d!1719546 c!935219) b!5368024))

(assert (= (and d!1719546 (not c!935219)) b!5368020))

(assert (= (and b!5368020 c!935222) b!5368029))

(assert (= (and b!5368020 (not c!935222)) b!5368022))

(assert (= (and d!1719546 res!2278069) b!5368028))

(assert (= (and b!5368028 c!935221) b!5368023))

(assert (= (and b!5368028 (not c!935221)) b!5368021))

(assert (= (and b!5368021 c!935220) b!5368025))

(assert (= (and b!5368021 (not c!935220)) b!5368027))

(declare-fun m!6395836 () Bool)

(assert (=> b!5368026 m!6395836))

(declare-fun m!6395838 () Bool)

(assert (=> b!5368027 m!6395838))

(declare-fun m!6395840 () Bool)

(assert (=> b!5368021 m!6395840))

(assert (=> b!5368021 m!6395840))

(declare-fun m!6395842 () Bool)

(assert (=> b!5368021 m!6395842))

(declare-fun m!6395844 () Bool)

(assert (=> d!1719546 m!6395844))

(declare-fun m!6395846 () Bool)

(assert (=> d!1719546 m!6395846))

(assert (=> b!5368028 m!6395368))

(declare-fun m!6395848 () Bool)

(assert (=> b!5368025 m!6395848))

(declare-fun m!6395850 () Bool)

(assert (=> b!5368029 m!6395850))

(declare-fun m!6395852 () Bool)

(assert (=> b!5368023 m!6395852))

(assert (=> b!5367419 d!1719546))

(declare-fun bs!1243385 () Bool)

(declare-fun d!1719558 () Bool)

(assert (= bs!1243385 (and d!1719558 b!5367411)))

(declare-fun lambda!276760 () Int)

(assert (=> bs!1243385 (= lambda!276760 lambda!276703)))

(declare-fun bs!1243386 () Bool)

(assert (= bs!1243386 (and d!1719558 d!1719546)))

(assert (=> bs!1243386 (= lambda!276760 lambda!276757)))

(assert (=> d!1719558 (= (inv!80939 (h!67855 zl!343)) (forall!14485 (exprs!4961 (h!67855 zl!343)) lambda!276760))))

(declare-fun bs!1243387 () Bool)

(assert (= bs!1243387 d!1719558))

(declare-fun m!6395854 () Bool)

(assert (=> bs!1243387 m!6395854))

(assert (=> b!5367420 d!1719558))

(declare-fun bs!1243388 () Bool)

(declare-fun d!1719560 () Bool)

(assert (= bs!1243388 (and d!1719560 b!5367411)))

(declare-fun lambda!276763 () Int)

(assert (=> bs!1243388 (= lambda!276763 lambda!276703)))

(declare-fun bs!1243389 () Bool)

(assert (= bs!1243389 (and d!1719560 d!1719546)))

(assert (=> bs!1243389 (= lambda!276763 lambda!276757)))

(declare-fun bs!1243390 () Bool)

(assert (= bs!1243390 (and d!1719560 d!1719558)))

(assert (=> bs!1243390 (= lambda!276763 lambda!276760)))

(declare-fun b!5368101 () Bool)

(declare-fun e!3331131 () Regex!15077)

(declare-fun e!3331129 () Regex!15077)

(assert (=> b!5368101 (= e!3331131 e!3331129)))

(declare-fun c!935254 () Bool)

(assert (=> b!5368101 (= c!935254 ((_ is Cons!61406) (unfocusZipperList!519 zl!343)))))

(declare-fun b!5368102 () Bool)

(assert (=> b!5368102 (= e!3331129 EmptyLang!15077)))

(declare-fun b!5368103 () Bool)

(declare-fun e!3331127 () Bool)

(declare-fun lt!2186083 () Regex!15077)

(declare-fun isUnion!372 (Regex!15077) Bool)

(assert (=> b!5368103 (= e!3331127 (isUnion!372 lt!2186083))))

(declare-fun b!5368104 () Bool)

(declare-fun e!3331130 () Bool)

(assert (=> b!5368104 (= e!3331130 e!3331127)))

(declare-fun c!935252 () Bool)

(assert (=> b!5368104 (= c!935252 (isEmpty!33385 (tail!10611 (unfocusZipperList!519 zl!343))))))

(declare-fun b!5368105 () Bool)

(declare-fun e!3331126 () Bool)

(assert (=> b!5368105 (= e!3331126 e!3331130)))

(declare-fun c!935253 () Bool)

(assert (=> b!5368105 (= c!935253 (isEmpty!33385 (unfocusZipperList!519 zl!343)))))

(declare-fun b!5368106 () Bool)

(assert (=> b!5368106 (= e!3331127 (= lt!2186083 (head!11514 (unfocusZipperList!519 zl!343))))))

(declare-fun b!5368107 () Bool)

(assert (=> b!5368107 (= e!3331129 (Union!15077 (h!67854 (unfocusZipperList!519 zl!343)) (generalisedUnion!1006 (t!374753 (unfocusZipperList!519 zl!343)))))))

(declare-fun b!5368108 () Bool)

(declare-fun e!3331128 () Bool)

(assert (=> b!5368108 (= e!3331128 (isEmpty!33385 (t!374753 (unfocusZipperList!519 zl!343))))))

(declare-fun b!5368109 () Bool)

(assert (=> b!5368109 (= e!3331131 (h!67854 (unfocusZipperList!519 zl!343)))))

(assert (=> d!1719560 e!3331126))

(declare-fun res!2278084 () Bool)

(assert (=> d!1719560 (=> (not res!2278084) (not e!3331126))))

(assert (=> d!1719560 (= res!2278084 (validRegex!6813 lt!2186083))))

(assert (=> d!1719560 (= lt!2186083 e!3331131)))

(declare-fun c!935255 () Bool)

(assert (=> d!1719560 (= c!935255 e!3331128)))

(declare-fun res!2278083 () Bool)

(assert (=> d!1719560 (=> (not res!2278083) (not e!3331128))))

(assert (=> d!1719560 (= res!2278083 ((_ is Cons!61406) (unfocusZipperList!519 zl!343)))))

(assert (=> d!1719560 (forall!14485 (unfocusZipperList!519 zl!343) lambda!276763)))

(assert (=> d!1719560 (= (generalisedUnion!1006 (unfocusZipperList!519 zl!343)) lt!2186083)))

(declare-fun b!5368110 () Bool)

(declare-fun isEmptyLang!940 (Regex!15077) Bool)

(assert (=> b!5368110 (= e!3331130 (isEmptyLang!940 lt!2186083))))

(assert (= (and d!1719560 res!2278083) b!5368108))

(assert (= (and d!1719560 c!935255) b!5368109))

(assert (= (and d!1719560 (not c!935255)) b!5368101))

(assert (= (and b!5368101 c!935254) b!5368107))

(assert (= (and b!5368101 (not c!935254)) b!5368102))

(assert (= (and d!1719560 res!2278084) b!5368105))

(assert (= (and b!5368105 c!935253) b!5368110))

(assert (= (and b!5368105 (not c!935253)) b!5368104))

(assert (= (and b!5368104 c!935252) b!5368106))

(assert (= (and b!5368104 (not c!935252)) b!5368103))

(declare-fun m!6395866 () Bool)

(assert (=> d!1719560 m!6395866))

(assert (=> d!1719560 m!6395322))

(declare-fun m!6395868 () Bool)

(assert (=> d!1719560 m!6395868))

(declare-fun m!6395870 () Bool)

(assert (=> b!5368110 m!6395870))

(assert (=> b!5368104 m!6395322))

(declare-fun m!6395872 () Bool)

(assert (=> b!5368104 m!6395872))

(assert (=> b!5368104 m!6395872))

(declare-fun m!6395874 () Bool)

(assert (=> b!5368104 m!6395874))

(declare-fun m!6395876 () Bool)

(assert (=> b!5368108 m!6395876))

(assert (=> b!5368105 m!6395322))

(declare-fun m!6395878 () Bool)

(assert (=> b!5368105 m!6395878))

(declare-fun m!6395880 () Bool)

(assert (=> b!5368107 m!6395880))

(declare-fun m!6395882 () Bool)

(assert (=> b!5368103 m!6395882))

(assert (=> b!5368106 m!6395322))

(declare-fun m!6395884 () Bool)

(assert (=> b!5368106 m!6395884))

(assert (=> b!5367400 d!1719560))

(declare-fun bs!1243391 () Bool)

(declare-fun d!1719564 () Bool)

(assert (= bs!1243391 (and d!1719564 b!5367411)))

(declare-fun lambda!276766 () Int)

(assert (=> bs!1243391 (= lambda!276766 lambda!276703)))

(declare-fun bs!1243392 () Bool)

(assert (= bs!1243392 (and d!1719564 d!1719546)))

(assert (=> bs!1243392 (= lambda!276766 lambda!276757)))

(declare-fun bs!1243393 () Bool)

(assert (= bs!1243393 (and d!1719564 d!1719558)))

(assert (=> bs!1243393 (= lambda!276766 lambda!276760)))

(declare-fun bs!1243394 () Bool)

(assert (= bs!1243394 (and d!1719564 d!1719560)))

(assert (=> bs!1243394 (= lambda!276766 lambda!276763)))

(declare-fun lt!2186087 () List!61530)

(assert (=> d!1719564 (forall!14485 lt!2186087 lambda!276766)))

(declare-fun e!3331144 () List!61530)

(assert (=> d!1719564 (= lt!2186087 e!3331144)))

(declare-fun c!935265 () Bool)

(assert (=> d!1719564 (= c!935265 ((_ is Cons!61407) zl!343))))

(assert (=> d!1719564 (= (unfocusZipperList!519 zl!343) lt!2186087)))

(declare-fun b!5368132 () Bool)

(assert (=> b!5368132 (= e!3331144 (Cons!61406 (generalisedConcat!746 (exprs!4961 (h!67855 zl!343))) (unfocusZipperList!519 (t!374754 zl!343))))))

(declare-fun b!5368133 () Bool)

(assert (=> b!5368133 (= e!3331144 Nil!61406)))

(assert (= (and d!1719564 c!935265) b!5368132))

(assert (= (and d!1719564 (not c!935265)) b!5368133))

(declare-fun m!6395896 () Bool)

(assert (=> d!1719564 m!6395896))

(assert (=> b!5368132 m!6395378))

(declare-fun m!6395898 () Bool)

(assert (=> b!5368132 m!6395898))

(assert (=> b!5367400 d!1719564))

(declare-fun d!1719568 () Bool)

(declare-fun lt!2186088 () Regex!15077)

(assert (=> d!1719568 (validRegex!6813 lt!2186088)))

(assert (=> d!1719568 (= lt!2186088 (generalisedUnion!1006 (unfocusZipperList!519 (Cons!61407 lt!2185965 Nil!61407))))))

(assert (=> d!1719568 (= (unfocusZipper!819 (Cons!61407 lt!2185965 Nil!61407)) lt!2186088)))

(declare-fun bs!1243395 () Bool)

(assert (= bs!1243395 d!1719568))

(declare-fun m!6395900 () Bool)

(assert (=> bs!1243395 m!6395900))

(declare-fun m!6395902 () Bool)

(assert (=> bs!1243395 m!6395902))

(assert (=> bs!1243395 m!6395902))

(declare-fun m!6395904 () Bool)

(assert (=> bs!1243395 m!6395904))

(assert (=> b!5367441 d!1719568))

(declare-fun bs!1243396 () Bool)

(declare-fun d!1719570 () Bool)

(assert (= bs!1243396 (and d!1719570 b!5367430)))

(declare-fun lambda!276771 () Int)

(assert (=> bs!1243396 (= lambda!276771 lambda!276700)))

(assert (=> d!1719570 true))

(assert (=> d!1719570 (= (derivationStepZipper!1316 lt!2185951 (h!67856 s!2326)) (flatMap!804 lt!2185951 lambda!276771))))

(declare-fun bs!1243397 () Bool)

(assert (= bs!1243397 d!1719570))

(declare-fun m!6395906 () Bool)

(assert (=> bs!1243397 m!6395906))

(assert (=> b!5367421 d!1719570))

(declare-fun d!1719572 () Bool)

(assert (=> d!1719572 (= (flatMap!804 lt!2185951 lambda!276700) (choose!40311 lt!2185951 lambda!276700))))

(declare-fun bs!1243398 () Bool)

(assert (= bs!1243398 d!1719572))

(declare-fun m!6395908 () Bool)

(assert (=> bs!1243398 m!6395908))

(assert (=> b!5367421 d!1719572))

(declare-fun b!5368156 () Bool)

(declare-fun e!3331159 () (InoxSet Context!8922))

(assert (=> b!5368156 (= e!3331159 ((as const (Array Context!8922 Bool)) false))))

(declare-fun bm!384321 () Bool)

(declare-fun call!384326 () (InoxSet Context!8922))

(assert (=> bm!384321 (= call!384326 (derivationStepZipperDown!525 (h!67854 (exprs!4961 lt!2185975)) (Context!8923 (t!374753 (exprs!4961 lt!2185975))) (h!67856 s!2326)))))

(declare-fun d!1719574 () Bool)

(declare-fun c!935276 () Bool)

(declare-fun e!3331158 () Bool)

(assert (=> d!1719574 (= c!935276 e!3331158)))

(declare-fun res!2278092 () Bool)

(assert (=> d!1719574 (=> (not res!2278092) (not e!3331158))))

(assert (=> d!1719574 (= res!2278092 ((_ is Cons!61406) (exprs!4961 lt!2185975)))))

(declare-fun e!3331157 () (InoxSet Context!8922))

(assert (=> d!1719574 (= (derivationStepZipperUp!449 lt!2185975 (h!67856 s!2326)) e!3331157)))

(declare-fun b!5368157 () Bool)

(assert (=> b!5368157 (= e!3331157 ((_ map or) call!384326 (derivationStepZipperUp!449 (Context!8923 (t!374753 (exprs!4961 lt!2185975))) (h!67856 s!2326))))))

(declare-fun b!5368158 () Bool)

(assert (=> b!5368158 (= e!3331158 (nullable!5246 (h!67854 (exprs!4961 lt!2185975))))))

(declare-fun b!5368159 () Bool)

(assert (=> b!5368159 (= e!3331157 e!3331159)))

(declare-fun c!935277 () Bool)

(assert (=> b!5368159 (= c!935277 ((_ is Cons!61406) (exprs!4961 lt!2185975)))))

(declare-fun b!5368160 () Bool)

(assert (=> b!5368160 (= e!3331159 call!384326)))

(assert (= (and d!1719574 res!2278092) b!5368158))

(assert (= (and d!1719574 c!935276) b!5368157))

(assert (= (and d!1719574 (not c!935276)) b!5368159))

(assert (= (and b!5368159 c!935277) b!5368160))

(assert (= (and b!5368159 (not c!935277)) b!5368156))

(assert (= (or b!5368157 b!5368160) bm!384321))

(declare-fun m!6395910 () Bool)

(assert (=> bm!384321 m!6395910))

(declare-fun m!6395912 () Bool)

(assert (=> b!5368157 m!6395912))

(declare-fun m!6395914 () Bool)

(assert (=> b!5368158 m!6395914))

(assert (=> b!5367421 d!1719574))

(declare-fun d!1719576 () Bool)

(assert (=> d!1719576 (= (flatMap!804 lt!2185951 lambda!276700) (dynLambda!24255 lambda!276700 lt!2185975))))

(declare-fun lt!2186091 () Unit!153826)

(assert (=> d!1719576 (= lt!2186091 (choose!40312 lt!2185951 lt!2185975 lambda!276700))))

(assert (=> d!1719576 (= lt!2185951 (store ((as const (Array Context!8922 Bool)) false) lt!2185975 true))))

(assert (=> d!1719576 (= (lemmaFlatMapOnSingletonSet!336 lt!2185951 lt!2185975 lambda!276700) lt!2186091)))

(declare-fun b_lambda!205811 () Bool)

(assert (=> (not b_lambda!205811) (not d!1719576)))

(declare-fun bs!1243399 () Bool)

(assert (= bs!1243399 d!1719576))

(assert (=> bs!1243399 m!6395376))

(declare-fun m!6395916 () Bool)

(assert (=> bs!1243399 m!6395916))

(declare-fun m!6395918 () Bool)

(assert (=> bs!1243399 m!6395918))

(assert (=> bs!1243399 m!6395374))

(assert (=> b!5367421 d!1719576))

(declare-fun d!1719578 () Bool)

(declare-fun nullableFct!1550 (Regex!15077) Bool)

(assert (=> d!1719578 (= (nullable!5246 (regOne!30666 (regOne!30666 r!7292))) (nullableFct!1550 (regOne!30666 (regOne!30666 r!7292))))))

(declare-fun bs!1243400 () Bool)

(assert (= bs!1243400 d!1719578))

(declare-fun m!6395920 () Bool)

(assert (=> bs!1243400 m!6395920))

(assert (=> b!5367401 d!1719578))

(declare-fun d!1719580 () Bool)

(declare-fun lt!2186092 () Regex!15077)

(assert (=> d!1719580 (validRegex!6813 lt!2186092)))

(assert (=> d!1719580 (= lt!2186092 (generalisedUnion!1006 (unfocusZipperList!519 (Cons!61407 lt!2185961 Nil!61407))))))

(assert (=> d!1719580 (= (unfocusZipper!819 (Cons!61407 lt!2185961 Nil!61407)) lt!2186092)))

(declare-fun bs!1243401 () Bool)

(assert (= bs!1243401 d!1719580))

(declare-fun m!6395922 () Bool)

(assert (=> bs!1243401 m!6395922))

(declare-fun m!6395924 () Bool)

(assert (=> bs!1243401 m!6395924))

(assert (=> bs!1243401 m!6395924))

(declare-fun m!6395926 () Bool)

(assert (=> bs!1243401 m!6395926))

(assert (=> b!5367422 d!1719580))

(declare-fun bs!1243402 () Bool)

(declare-fun d!1719582 () Bool)

(assert (= bs!1243402 (and d!1719582 d!1719560)))

(declare-fun lambda!276772 () Int)

(assert (=> bs!1243402 (= lambda!276772 lambda!276763)))

(declare-fun bs!1243403 () Bool)

(assert (= bs!1243403 (and d!1719582 d!1719564)))

(assert (=> bs!1243403 (= lambda!276772 lambda!276766)))

(declare-fun bs!1243404 () Bool)

(assert (= bs!1243404 (and d!1719582 b!5367411)))

(assert (=> bs!1243404 (= lambda!276772 lambda!276703)))

(declare-fun bs!1243405 () Bool)

(assert (= bs!1243405 (and d!1719582 d!1719558)))

(assert (=> bs!1243405 (= lambda!276772 lambda!276760)))

(declare-fun bs!1243406 () Bool)

(assert (= bs!1243406 (and d!1719582 d!1719546)))

(assert (=> bs!1243406 (= lambda!276772 lambda!276757)))

(declare-fun b!5368161 () Bool)

(declare-fun e!3331163 () Regex!15077)

(declare-fun e!3331165 () Regex!15077)

(assert (=> b!5368161 (= e!3331163 e!3331165)))

(declare-fun c!935281 () Bool)

(assert (=> b!5368161 (= c!935281 ((_ is Cons!61406) (exprs!4961 (h!67855 zl!343))))))

(declare-fun b!5368162 () Bool)

(declare-fun e!3331160 () Bool)

(declare-fun e!3331161 () Bool)

(assert (=> b!5368162 (= e!3331160 e!3331161)))

(declare-fun c!935279 () Bool)

(assert (=> b!5368162 (= c!935279 (isEmpty!33385 (tail!10611 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5368163 () Bool)

(assert (=> b!5368163 (= e!3331165 EmptyExpr!15077)))

(declare-fun b!5368164 () Bool)

(declare-fun lt!2186093 () Regex!15077)

(assert (=> b!5368164 (= e!3331160 (isEmptyExpr!932 lt!2186093))))

(declare-fun b!5368165 () Bool)

(assert (=> b!5368165 (= e!3331163 (h!67854 (exprs!4961 (h!67855 zl!343))))))

(declare-fun e!3331164 () Bool)

(assert (=> d!1719582 e!3331164))

(declare-fun res!2278094 () Bool)

(assert (=> d!1719582 (=> (not res!2278094) (not e!3331164))))

(assert (=> d!1719582 (= res!2278094 (validRegex!6813 lt!2186093))))

(assert (=> d!1719582 (= lt!2186093 e!3331163)))

(declare-fun c!935278 () Bool)

(declare-fun e!3331162 () Bool)

(assert (=> d!1719582 (= c!935278 e!3331162)))

(declare-fun res!2278093 () Bool)

(assert (=> d!1719582 (=> (not res!2278093) (not e!3331162))))

(assert (=> d!1719582 (= res!2278093 ((_ is Cons!61406) (exprs!4961 (h!67855 zl!343))))))

(assert (=> d!1719582 (forall!14485 (exprs!4961 (h!67855 zl!343)) lambda!276772)))

(assert (=> d!1719582 (= (generalisedConcat!746 (exprs!4961 (h!67855 zl!343))) lt!2186093)))

(declare-fun b!5368166 () Bool)

(assert (=> b!5368166 (= e!3331161 (= lt!2186093 (head!11514 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5368167 () Bool)

(assert (=> b!5368167 (= e!3331162 (isEmpty!33385 (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5368168 () Bool)

(assert (=> b!5368168 (= e!3331161 (isConcat!455 lt!2186093))))

(declare-fun b!5368169 () Bool)

(assert (=> b!5368169 (= e!3331164 e!3331160)))

(declare-fun c!935280 () Bool)

(assert (=> b!5368169 (= c!935280 (isEmpty!33385 (exprs!4961 (h!67855 zl!343))))))

(declare-fun b!5368170 () Bool)

(assert (=> b!5368170 (= e!3331165 (Concat!23922 (h!67854 (exprs!4961 (h!67855 zl!343))) (generalisedConcat!746 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(assert (= (and d!1719582 res!2278093) b!5368167))

(assert (= (and d!1719582 c!935278) b!5368165))

(assert (= (and d!1719582 (not c!935278)) b!5368161))

(assert (= (and b!5368161 c!935281) b!5368170))

(assert (= (and b!5368161 (not c!935281)) b!5368163))

(assert (= (and d!1719582 res!2278094) b!5368169))

(assert (= (and b!5368169 c!935280) b!5368164))

(assert (= (and b!5368169 (not c!935280)) b!5368162))

(assert (= (and b!5368162 c!935279) b!5368166))

(assert (= (and b!5368162 (not c!935279)) b!5368168))

(assert (=> b!5368167 m!6395368))

(declare-fun m!6395928 () Bool)

(assert (=> b!5368168 m!6395928))

(declare-fun m!6395930 () Bool)

(assert (=> b!5368162 m!6395930))

(assert (=> b!5368162 m!6395930))

(declare-fun m!6395932 () Bool)

(assert (=> b!5368162 m!6395932))

(declare-fun m!6395934 () Bool)

(assert (=> d!1719582 m!6395934))

(declare-fun m!6395936 () Bool)

(assert (=> d!1719582 m!6395936))

(declare-fun m!6395938 () Bool)

(assert (=> b!5368169 m!6395938))

(declare-fun m!6395940 () Bool)

(assert (=> b!5368166 m!6395940))

(assert (=> b!5368170 m!6395302))

(declare-fun m!6395942 () Bool)

(assert (=> b!5368164 m!6395942))

(assert (=> b!5367423 d!1719582))

(declare-fun b!5368181 () Bool)

(declare-fun res!2278100 () Bool)

(declare-fun e!3331174 () Bool)

(assert (=> b!5368181 (=> res!2278100 e!3331174)))

(assert (=> b!5368181 (= res!2278100 (not (isEmpty!33384 (tail!10610 s!2326))))))

(declare-fun b!5368182 () Bool)

(declare-fun e!3331176 () Bool)

(declare-fun e!3331178 () Bool)

(assert (=> b!5368182 (= e!3331176 e!3331178)))

(declare-fun res!2278102 () Bool)

(assert (=> b!5368182 (=> (not res!2278102) (not e!3331178))))

(declare-fun lt!2186095 () Bool)

(assert (=> b!5368182 (= res!2278102 (not lt!2186095))))

(declare-fun b!5368183 () Bool)

(declare-fun e!3331172 () Bool)

(assert (=> b!5368183 (= e!3331172 (nullable!5246 lt!2185979))))

(declare-fun b!5368184 () Bool)

(declare-fun res!2278098 () Bool)

(declare-fun e!3331177 () Bool)

(assert (=> b!5368184 (=> (not res!2278098) (not e!3331177))))

(declare-fun call!384327 () Bool)

(assert (=> b!5368184 (= res!2278098 (not call!384327))))

(declare-fun b!5368185 () Bool)

(assert (=> b!5368185 (= e!3331177 (= (head!11513 s!2326) (c!935035 lt!2185979)))))

(declare-fun b!5368186 () Bool)

(declare-fun res!2278099 () Bool)

(assert (=> b!5368186 (=> res!2278099 e!3331176)))

(assert (=> b!5368186 (= res!2278099 (not ((_ is ElementMatch!15077) lt!2185979)))))

(declare-fun e!3331175 () Bool)

(assert (=> b!5368186 (= e!3331175 e!3331176)))

(declare-fun b!5368187 () Bool)

(declare-fun e!3331173 () Bool)

(assert (=> b!5368187 (= e!3331173 e!3331175)))

(declare-fun c!935286 () Bool)

(assert (=> b!5368187 (= c!935286 ((_ is EmptyLang!15077) lt!2185979))))

(declare-fun b!5368188 () Bool)

(assert (=> b!5368188 (= e!3331172 (matchR!7262 (derivativeStep!4219 lt!2185979 (head!11513 s!2326)) (tail!10610 s!2326)))))

(declare-fun b!5368189 () Bool)

(assert (=> b!5368189 (= e!3331173 (= lt!2186095 call!384327))))

(declare-fun d!1719584 () Bool)

(assert (=> d!1719584 e!3331173))

(declare-fun c!935288 () Bool)

(assert (=> d!1719584 (= c!935288 ((_ is EmptyExpr!15077) lt!2185979))))

(assert (=> d!1719584 (= lt!2186095 e!3331172)))

(declare-fun c!935287 () Bool)

(assert (=> d!1719584 (= c!935287 (isEmpty!33384 s!2326))))

(assert (=> d!1719584 (validRegex!6813 lt!2185979)))

(assert (=> d!1719584 (= (matchR!7262 lt!2185979 s!2326) lt!2186095)))

(declare-fun b!5368190 () Bool)

(assert (=> b!5368190 (= e!3331174 (not (= (head!11513 s!2326) (c!935035 lt!2185979))))))

(declare-fun b!5368191 () Bool)

(assert (=> b!5368191 (= e!3331178 e!3331174)))

(declare-fun res!2278101 () Bool)

(assert (=> b!5368191 (=> res!2278101 e!3331174)))

(assert (=> b!5368191 (= res!2278101 call!384327)))

(declare-fun bm!384322 () Bool)

(assert (=> bm!384322 (= call!384327 (isEmpty!33384 s!2326))))

(declare-fun b!5368192 () Bool)

(assert (=> b!5368192 (= e!3331175 (not lt!2186095))))

(declare-fun b!5368193 () Bool)

(declare-fun res!2278103 () Bool)

(assert (=> b!5368193 (=> res!2278103 e!3331176)))

(assert (=> b!5368193 (= res!2278103 e!3331177)))

(declare-fun res!2278097 () Bool)

(assert (=> b!5368193 (=> (not res!2278097) (not e!3331177))))

(assert (=> b!5368193 (= res!2278097 lt!2186095)))

(declare-fun b!5368194 () Bool)

(declare-fun res!2278104 () Bool)

(assert (=> b!5368194 (=> (not res!2278104) (not e!3331177))))

(assert (=> b!5368194 (= res!2278104 (isEmpty!33384 (tail!10610 s!2326)))))

(assert (= (and d!1719584 c!935287) b!5368183))

(assert (= (and d!1719584 (not c!935287)) b!5368188))

(assert (= (and d!1719584 c!935288) b!5368189))

(assert (= (and d!1719584 (not c!935288)) b!5368187))

(assert (= (and b!5368187 c!935286) b!5368192))

(assert (= (and b!5368187 (not c!935286)) b!5368186))

(assert (= (and b!5368186 (not res!2278099)) b!5368193))

(assert (= (and b!5368193 res!2278097) b!5368184))

(assert (= (and b!5368184 res!2278098) b!5368194))

(assert (= (and b!5368194 res!2278104) b!5368185))

(assert (= (and b!5368193 (not res!2278103)) b!5368182))

(assert (= (and b!5368182 res!2278102) b!5368191))

(assert (= (and b!5368191 (not res!2278101)) b!5368181))

(assert (= (and b!5368181 (not res!2278100)) b!5368190))

(assert (= (or b!5368189 b!5368184 b!5368191) bm!384322))

(declare-fun m!6395962 () Bool)

(assert (=> bm!384322 m!6395962))

(declare-fun m!6395964 () Bool)

(assert (=> b!5368185 m!6395964))

(declare-fun m!6395966 () Bool)

(assert (=> b!5368194 m!6395966))

(assert (=> b!5368194 m!6395966))

(declare-fun m!6395968 () Bool)

(assert (=> b!5368194 m!6395968))

(assert (=> b!5368181 m!6395966))

(assert (=> b!5368181 m!6395966))

(assert (=> b!5368181 m!6395968))

(assert (=> d!1719584 m!6395962))

(declare-fun m!6395970 () Bool)

(assert (=> d!1719584 m!6395970))

(assert (=> b!5368188 m!6395964))

(assert (=> b!5368188 m!6395964))

(declare-fun m!6395972 () Bool)

(assert (=> b!5368188 m!6395972))

(assert (=> b!5368188 m!6395966))

(assert (=> b!5368188 m!6395972))

(assert (=> b!5368188 m!6395966))

(declare-fun m!6395974 () Bool)

(assert (=> b!5368188 m!6395974))

(declare-fun m!6395976 () Bool)

(assert (=> b!5368183 m!6395976))

(assert (=> b!5368190 m!6395964))

(assert (=> b!5367403 d!1719584))

(declare-fun bs!1243439 () Bool)

(declare-fun b!5368254 () Bool)

(assert (= bs!1243439 (and b!5368254 b!5367412)))

(declare-fun lambda!276782 () Int)

(assert (=> bs!1243439 (not (= lambda!276782 lambda!276698))))

(declare-fun bs!1243440 () Bool)

(assert (= bs!1243440 (and b!5368254 d!1719454)))

(assert (=> bs!1243440 (not (= lambda!276782 lambda!276713))))

(assert (=> bs!1243439 (not (= lambda!276782 lambda!276699))))

(declare-fun bs!1243441 () Bool)

(assert (= bs!1243441 (and b!5368254 d!1719458)))

(assert (=> bs!1243441 (not (= lambda!276782 lambda!276721))))

(declare-fun bs!1243442 () Bool)

(assert (= bs!1243442 (and b!5368254 b!5367409)))

(assert (=> bs!1243442 (not (= lambda!276782 lambda!276702))))

(assert (=> bs!1243442 (not (= lambda!276782 lambda!276701))))

(assert (=> bs!1243441 (not (= lambda!276782 lambda!276720))))

(assert (=> b!5368254 true))

(assert (=> b!5368254 true))

(declare-fun bs!1243443 () Bool)

(declare-fun b!5368261 () Bool)

(assert (= bs!1243443 (and b!5368261 d!1719454)))

(declare-fun lambda!276783 () Int)

(assert (=> bs!1243443 (not (= lambda!276783 lambda!276713))))

(declare-fun bs!1243444 () Bool)

(assert (= bs!1243444 (and b!5368261 b!5367412)))

(assert (=> bs!1243444 (= (and (= (regOne!30666 lt!2185979) (regOne!30666 r!7292)) (= (regTwo!30666 lt!2185979) (regTwo!30666 r!7292))) (= lambda!276783 lambda!276699))))

(declare-fun bs!1243445 () Bool)

(assert (= bs!1243445 (and b!5368261 b!5368254)))

(assert (=> bs!1243445 (not (= lambda!276783 lambda!276782))))

(assert (=> bs!1243444 (not (= lambda!276783 lambda!276698))))

(declare-fun bs!1243446 () Bool)

(assert (= bs!1243446 (and b!5368261 d!1719458)))

(assert (=> bs!1243446 (= (and (= (regOne!30666 lt!2185979) (regOne!30666 r!7292)) (= (regTwo!30666 lt!2185979) (regTwo!30666 r!7292))) (= lambda!276783 lambda!276721))))

(declare-fun bs!1243447 () Bool)

(assert (= bs!1243447 (and b!5368261 b!5367409)))

(assert (=> bs!1243447 (= (and (= (regOne!30666 lt!2185979) lt!2185956) (= (regTwo!30666 lt!2185979) (regTwo!30666 r!7292))) (= lambda!276783 lambda!276702))))

(assert (=> bs!1243447 (not (= lambda!276783 lambda!276701))))

(assert (=> bs!1243446 (not (= lambda!276783 lambda!276720))))

(assert (=> b!5368261 true))

(assert (=> b!5368261 true))

(declare-fun e!3331215 () Bool)

(declare-fun call!384339 () Bool)

(assert (=> b!5368254 (= e!3331215 call!384339)))

(declare-fun b!5368255 () Bool)

(declare-fun e!3331214 () Bool)

(declare-fun call!384340 () Bool)

(assert (=> b!5368255 (= e!3331214 call!384340)))

(declare-fun bm!384334 () Bool)

(assert (=> bm!384334 (= call!384340 (isEmpty!33384 s!2326))))

(declare-fun b!5368256 () Bool)

(declare-fun e!3331212 () Bool)

(declare-fun e!3331217 () Bool)

(assert (=> b!5368256 (= e!3331212 e!3331217)))

(declare-fun res!2278129 () Bool)

(assert (=> b!5368256 (= res!2278129 (matchRSpec!2180 (regOne!30667 lt!2185979) s!2326))))

(assert (=> b!5368256 (=> res!2278129 e!3331217)))

(declare-fun b!5368257 () Bool)

(declare-fun e!3331216 () Bool)

(assert (=> b!5368257 (= e!3331216 (= s!2326 (Cons!61408 (c!935035 lt!2185979) Nil!61408)))))

(declare-fun d!1719588 () Bool)

(declare-fun c!935309 () Bool)

(assert (=> d!1719588 (= c!935309 ((_ is EmptyExpr!15077) lt!2185979))))

(assert (=> d!1719588 (= (matchRSpec!2180 lt!2185979 s!2326) e!3331214)))

(declare-fun b!5368258 () Bool)

(declare-fun c!935308 () Bool)

(assert (=> b!5368258 (= c!935308 ((_ is ElementMatch!15077) lt!2185979))))

(declare-fun e!3331213 () Bool)

(assert (=> b!5368258 (= e!3331213 e!3331216)))

(declare-fun b!5368259 () Bool)

(assert (=> b!5368259 (= e!3331217 (matchRSpec!2180 (regTwo!30667 lt!2185979) s!2326))))

(declare-fun b!5368260 () Bool)

(declare-fun c!935310 () Bool)

(assert (=> b!5368260 (= c!935310 ((_ is Union!15077) lt!2185979))))

(assert (=> b!5368260 (= e!3331216 e!3331212)))

(declare-fun bm!384335 () Bool)

(declare-fun c!935307 () Bool)

(assert (=> bm!384335 (= call!384339 (Exists!2258 (ite c!935307 lambda!276782 lambda!276783)))))

(declare-fun e!3331218 () Bool)

(assert (=> b!5368261 (= e!3331218 call!384339)))

(declare-fun b!5368262 () Bool)

(assert (=> b!5368262 (= e!3331212 e!3331218)))

(assert (=> b!5368262 (= c!935307 ((_ is Star!15077) lt!2185979))))

(declare-fun b!5368263 () Bool)

(declare-fun res!2278128 () Bool)

(assert (=> b!5368263 (=> res!2278128 e!3331215)))

(assert (=> b!5368263 (= res!2278128 call!384340)))

(assert (=> b!5368263 (= e!3331218 e!3331215)))

(declare-fun b!5368264 () Bool)

(assert (=> b!5368264 (= e!3331214 e!3331213)))

(declare-fun res!2278130 () Bool)

(assert (=> b!5368264 (= res!2278130 (not ((_ is EmptyLang!15077) lt!2185979)))))

(assert (=> b!5368264 (=> (not res!2278130) (not e!3331213))))

(assert (= (and d!1719588 c!935309) b!5368255))

(assert (= (and d!1719588 (not c!935309)) b!5368264))

(assert (= (and b!5368264 res!2278130) b!5368258))

(assert (= (and b!5368258 c!935308) b!5368257))

(assert (= (and b!5368258 (not c!935308)) b!5368260))

(assert (= (and b!5368260 c!935310) b!5368256))

(assert (= (and b!5368260 (not c!935310)) b!5368262))

(assert (= (and b!5368256 (not res!2278129)) b!5368259))

(assert (= (and b!5368262 c!935307) b!5368263))

(assert (= (and b!5368262 (not c!935307)) b!5368261))

(assert (= (and b!5368263 (not res!2278128)) b!5368254))

(assert (= (or b!5368254 b!5368261) bm!384335))

(assert (= (or b!5368255 b!5368263) bm!384334))

(assert (=> bm!384334 m!6395962))

(declare-fun m!6396058 () Bool)

(assert (=> b!5368256 m!6396058))

(declare-fun m!6396060 () Bool)

(assert (=> b!5368259 m!6396060))

(declare-fun m!6396062 () Bool)

(assert (=> bm!384335 m!6396062))

(assert (=> b!5367403 d!1719588))

(declare-fun d!1719620 () Bool)

(assert (=> d!1719620 (= (matchR!7262 lt!2185979 s!2326) (matchRSpec!2180 lt!2185979 s!2326))))

(declare-fun lt!2186111 () Unit!153826)

(declare-fun choose!40313 (Regex!15077 List!61532) Unit!153826)

(assert (=> d!1719620 (= lt!2186111 (choose!40313 lt!2185979 s!2326))))

(assert (=> d!1719620 (validRegex!6813 lt!2185979)))

(assert (=> d!1719620 (= (mainMatchTheorem!2180 lt!2185979 s!2326) lt!2186111)))

(declare-fun bs!1243449 () Bool)

(assert (= bs!1243449 d!1719620))

(assert (=> bs!1243449 m!6395316))

(assert (=> bs!1243449 m!6395318))

(declare-fun m!6396066 () Bool)

(assert (=> bs!1243449 m!6396066))

(assert (=> bs!1243449 m!6395970))

(assert (=> b!5367403 d!1719620))

(declare-fun d!1719624 () Bool)

(assert (=> d!1719624 (= (isEmpty!33386 (t!374754 zl!343)) ((_ is Nil!61407) (t!374754 zl!343)))))

(assert (=> b!5367424 d!1719624))

(declare-fun d!1719628 () Bool)

(declare-fun e!3331249 () Bool)

(assert (=> d!1719628 (= (matchZipper!1321 ((_ map or) lt!2185980 lt!2185976) (t!374755 s!2326)) e!3331249)))

(declare-fun res!2278152 () Bool)

(assert (=> d!1719628 (=> res!2278152 e!3331249)))

(assert (=> d!1719628 (= res!2278152 (matchZipper!1321 lt!2185980 (t!374755 s!2326)))))

(declare-fun lt!2186116 () Unit!153826)

(declare-fun choose!40314 ((InoxSet Context!8922) (InoxSet Context!8922) List!61532) Unit!153826)

(assert (=> d!1719628 (= lt!2186116 (choose!40314 lt!2185980 lt!2185976 (t!374755 s!2326)))))

(assert (=> d!1719628 (= (lemmaZipperConcatMatchesSameAsBothZippers!314 lt!2185980 lt!2185976 (t!374755 s!2326)) lt!2186116)))

(declare-fun b!5368316 () Bool)

(assert (=> b!5368316 (= e!3331249 (matchZipper!1321 lt!2185976 (t!374755 s!2326)))))

(assert (= (and d!1719628 (not res!2278152)) b!5368316))

(assert (=> d!1719628 m!6395402))

(assert (=> d!1719628 m!6395400))

(declare-fun m!6396112 () Bool)

(assert (=> d!1719628 m!6396112))

(assert (=> b!5368316 m!6395308))

(assert (=> b!5367404 d!1719628))

(declare-fun d!1719634 () Bool)

(declare-fun c!935323 () Bool)

(assert (=> d!1719634 (= c!935323 (isEmpty!33384 (t!374755 s!2326)))))

(declare-fun e!3331252 () Bool)

(assert (=> d!1719634 (= (matchZipper!1321 lt!2185980 (t!374755 s!2326)) e!3331252)))

(declare-fun b!5368319 () Bool)

(assert (=> b!5368319 (= e!3331252 (nullableZipper!1397 lt!2185980))))

(declare-fun b!5368320 () Bool)

(assert (=> b!5368320 (= e!3331252 (matchZipper!1321 (derivationStepZipper!1316 lt!2185980 (head!11513 (t!374755 s!2326))) (tail!10610 (t!374755 s!2326))))))

(assert (= (and d!1719634 c!935323) b!5368319))

(assert (= (and d!1719634 (not c!935323)) b!5368320))

(assert (=> d!1719634 m!6395572))

(declare-fun m!6396116 () Bool)

(assert (=> b!5368319 m!6396116))

(assert (=> b!5368320 m!6395576))

(assert (=> b!5368320 m!6395576))

(declare-fun m!6396118 () Bool)

(assert (=> b!5368320 m!6396118))

(assert (=> b!5368320 m!6395580))

(assert (=> b!5368320 m!6396118))

(assert (=> b!5368320 m!6395580))

(declare-fun m!6396120 () Bool)

(assert (=> b!5368320 m!6396120))

(assert (=> b!5367404 d!1719634))

(declare-fun d!1719636 () Bool)

(declare-fun c!935324 () Bool)

(assert (=> d!1719636 (= c!935324 (isEmpty!33384 (t!374755 s!2326)))))

(declare-fun e!3331255 () Bool)

(assert (=> d!1719636 (= (matchZipper!1321 ((_ map or) lt!2185980 lt!2185976) (t!374755 s!2326)) e!3331255)))

(declare-fun b!5368325 () Bool)

(assert (=> b!5368325 (= e!3331255 (nullableZipper!1397 ((_ map or) lt!2185980 lt!2185976)))))

(declare-fun b!5368326 () Bool)

(assert (=> b!5368326 (= e!3331255 (matchZipper!1321 (derivationStepZipper!1316 ((_ map or) lt!2185980 lt!2185976) (head!11513 (t!374755 s!2326))) (tail!10610 (t!374755 s!2326))))))

(assert (= (and d!1719636 c!935324) b!5368325))

(assert (= (and d!1719636 (not c!935324)) b!5368326))

(assert (=> d!1719636 m!6395572))

(declare-fun m!6396122 () Bool)

(assert (=> b!5368325 m!6396122))

(assert (=> b!5368326 m!6395576))

(assert (=> b!5368326 m!6395576))

(declare-fun m!6396124 () Bool)

(assert (=> b!5368326 m!6396124))

(assert (=> b!5368326 m!6395580))

(assert (=> b!5368326 m!6396124))

(assert (=> b!5368326 m!6395580))

(declare-fun m!6396126 () Bool)

(assert (=> b!5368326 m!6396126))

(assert (=> b!5367404 d!1719636))

(declare-fun d!1719638 () Bool)

(assert (=> d!1719638 (= (flatMap!804 lt!2185973 lambda!276700) (choose!40311 lt!2185973 lambda!276700))))

(declare-fun bs!1243456 () Bool)

(assert (= bs!1243456 d!1719638))

(declare-fun m!6396128 () Bool)

(assert (=> bs!1243456 m!6396128))

(assert (=> b!5367405 d!1719638))

(declare-fun b!5368332 () Bool)

(declare-fun e!3331261 () (InoxSet Context!8922))

(assert (=> b!5368332 (= e!3331261 ((as const (Array Context!8922 Bool)) false))))

(declare-fun bm!384337 () Bool)

(declare-fun call!384342 () (InoxSet Context!8922))

(assert (=> bm!384337 (= call!384342 (derivationStepZipperDown!525 (h!67854 (exprs!4961 lt!2185965)) (Context!8923 (t!374753 (exprs!4961 lt!2185965))) (h!67856 s!2326)))))

(declare-fun d!1719640 () Bool)

(declare-fun c!935325 () Bool)

(declare-fun e!3331260 () Bool)

(assert (=> d!1719640 (= c!935325 e!3331260)))

(declare-fun res!2278153 () Bool)

(assert (=> d!1719640 (=> (not res!2278153) (not e!3331260))))

(assert (=> d!1719640 (= res!2278153 ((_ is Cons!61406) (exprs!4961 lt!2185965)))))

(declare-fun e!3331259 () (InoxSet Context!8922))

(assert (=> d!1719640 (= (derivationStepZipperUp!449 lt!2185965 (h!67856 s!2326)) e!3331259)))

(declare-fun b!5368333 () Bool)

(assert (=> b!5368333 (= e!3331259 ((_ map or) call!384342 (derivationStepZipperUp!449 (Context!8923 (t!374753 (exprs!4961 lt!2185965))) (h!67856 s!2326))))))

(declare-fun b!5368334 () Bool)

(assert (=> b!5368334 (= e!3331260 (nullable!5246 (h!67854 (exprs!4961 lt!2185965))))))

(declare-fun b!5368335 () Bool)

(assert (=> b!5368335 (= e!3331259 e!3331261)))

(declare-fun c!935326 () Bool)

(assert (=> b!5368335 (= c!935326 ((_ is Cons!61406) (exprs!4961 lt!2185965)))))

(declare-fun b!5368336 () Bool)

(assert (=> b!5368336 (= e!3331261 call!384342)))

(assert (= (and d!1719640 res!2278153) b!5368334))

(assert (= (and d!1719640 c!935325) b!5368333))

(assert (= (and d!1719640 (not c!935325)) b!5368335))

(assert (= (and b!5368335 c!935326) b!5368336))

(assert (= (and b!5368335 (not c!935326)) b!5368332))

(assert (= (or b!5368333 b!5368336) bm!384337))

(declare-fun m!6396130 () Bool)

(assert (=> bm!384337 m!6396130))

(declare-fun m!6396132 () Bool)

(assert (=> b!5368333 m!6396132))

(declare-fun m!6396134 () Bool)

(assert (=> b!5368334 m!6396134))

(assert (=> b!5367405 d!1719640))

(declare-fun d!1719642 () Bool)

(assert (=> d!1719642 (= (flatMap!804 lt!2185973 lambda!276700) (dynLambda!24255 lambda!276700 lt!2185965))))

(declare-fun lt!2186117 () Unit!153826)

(assert (=> d!1719642 (= lt!2186117 (choose!40312 lt!2185973 lt!2185965 lambda!276700))))

(assert (=> d!1719642 (= lt!2185973 (store ((as const (Array Context!8922 Bool)) false) lt!2185965 true))))

(assert (=> d!1719642 (= (lemmaFlatMapOnSingletonSet!336 lt!2185973 lt!2185965 lambda!276700) lt!2186117)))

(declare-fun b_lambda!205815 () Bool)

(assert (=> (not b_lambda!205815) (not d!1719642)))

(declare-fun bs!1243457 () Bool)

(assert (= bs!1243457 d!1719642))

(assert (=> bs!1243457 m!6395358))

(declare-fun m!6396138 () Bool)

(assert (=> bs!1243457 m!6396138))

(declare-fun m!6396140 () Bool)

(assert (=> bs!1243457 m!6396140))

(assert (=> bs!1243457 m!6395362))

(assert (=> b!5367405 d!1719642))

(declare-fun bs!1243458 () Bool)

(declare-fun d!1719644 () Bool)

(assert (= bs!1243458 (and d!1719644 b!5367430)))

(declare-fun lambda!276785 () Int)

(assert (=> bs!1243458 (= lambda!276785 lambda!276700)))

(declare-fun bs!1243459 () Bool)

(assert (= bs!1243459 (and d!1719644 d!1719570)))

(assert (=> bs!1243459 (= lambda!276785 lambda!276771)))

(assert (=> d!1719644 true))

(assert (=> d!1719644 (= (derivationStepZipper!1316 lt!2185973 (h!67856 s!2326)) (flatMap!804 lt!2185973 lambda!276785))))

(declare-fun bs!1243460 () Bool)

(assert (= bs!1243460 d!1719644))

(declare-fun m!6396142 () Bool)

(assert (=> bs!1243460 m!6396142))

(assert (=> b!5367405 d!1719644))

(declare-fun bs!1243461 () Bool)

(declare-fun d!1719646 () Bool)

(assert (= bs!1243461 (and d!1719646 d!1719582)))

(declare-fun lambda!276786 () Int)

(assert (=> bs!1243461 (= lambda!276786 lambda!276772)))

(declare-fun bs!1243462 () Bool)

(assert (= bs!1243462 (and d!1719646 d!1719560)))

(assert (=> bs!1243462 (= lambda!276786 lambda!276763)))

(declare-fun bs!1243463 () Bool)

(assert (= bs!1243463 (and d!1719646 d!1719564)))

(assert (=> bs!1243463 (= lambda!276786 lambda!276766)))

(declare-fun bs!1243464 () Bool)

(assert (= bs!1243464 (and d!1719646 b!5367411)))

(assert (=> bs!1243464 (= lambda!276786 lambda!276703)))

(declare-fun bs!1243465 () Bool)

(assert (= bs!1243465 (and d!1719646 d!1719558)))

(assert (=> bs!1243465 (= lambda!276786 lambda!276760)))

(declare-fun bs!1243466 () Bool)

(assert (= bs!1243466 (and d!1719646 d!1719546)))

(assert (=> bs!1243466 (= lambda!276786 lambda!276757)))

(assert (=> d!1719646 (= (inv!80939 setElem!34769) (forall!14485 (exprs!4961 setElem!34769) lambda!276786))))

(declare-fun bs!1243467 () Bool)

(assert (= bs!1243467 d!1719646))

(declare-fun m!6396144 () Bool)

(assert (=> bs!1243467 m!6396144))

(assert (=> setNonEmpty!34769 d!1719646))

(declare-fun b!5368380 () Bool)

(assert (=> b!5368380 true))

(declare-fun bs!1243474 () Bool)

(declare-fun b!5368382 () Bool)

(assert (= bs!1243474 (and b!5368382 b!5368380)))

(declare-fun lambda!276795 () Int)

(declare-fun lt!2186129 () Int)

(declare-fun lambda!276794 () Int)

(declare-fun lt!2186127 () Int)

(assert (=> bs!1243474 (= (= lt!2186129 lt!2186127) (= lambda!276795 lambda!276794))))

(assert (=> b!5368382 true))

(declare-fun d!1719648 () Bool)

(declare-fun e!3331279 () Bool)

(assert (=> d!1719648 e!3331279))

(declare-fun res!2278156 () Bool)

(assert (=> d!1719648 (=> (not res!2278156) (not e!3331279))))

(assert (=> d!1719648 (= res!2278156 (>= lt!2186129 0))))

(declare-fun e!3331278 () Int)

(assert (=> d!1719648 (= lt!2186129 e!3331278)))

(declare-fun c!935335 () Bool)

(assert (=> d!1719648 (= c!935335 ((_ is Cons!61407) zl!343))))

(assert (=> d!1719648 (= (zipperDepth!150 zl!343) lt!2186129)))

(assert (=> b!5368380 (= e!3331278 lt!2186127)))

(declare-fun contextDepth!86 (Context!8922) Int)

(assert (=> b!5368380 (= lt!2186127 (maxBigInt!0 (contextDepth!86 (h!67855 zl!343)) (zipperDepth!150 (t!374754 zl!343))))))

(declare-fun lambda!276793 () Int)

(declare-fun lt!2186128 () Unit!153826)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!80 (List!61531 Int Int Int) Unit!153826)

(assert (=> b!5368380 (= lt!2186128 (lemmaForallContextDepthBiggerThanTransitive!80 (t!374754 zl!343) lt!2186127 (zipperDepth!150 (t!374754 zl!343)) lambda!276793))))

(declare-fun forall!14487 (List!61531 Int) Bool)

(assert (=> b!5368380 (forall!14487 (t!374754 zl!343) lambda!276794)))

(declare-fun lt!2186126 () Unit!153826)

(assert (=> b!5368380 (= lt!2186126 lt!2186128)))

(declare-fun b!5368381 () Bool)

(assert (=> b!5368381 (= e!3331278 0)))

(assert (=> b!5368382 (= e!3331279 (forall!14487 zl!343 lambda!276795))))

(assert (= (and d!1719648 c!935335) b!5368380))

(assert (= (and d!1719648 (not c!935335)) b!5368381))

(assert (= (and d!1719648 res!2278156) b!5368382))

(declare-fun m!6396148 () Bool)

(assert (=> b!5368380 m!6396148))

(declare-fun m!6396150 () Bool)

(assert (=> b!5368380 m!6396150))

(declare-fun m!6396152 () Bool)

(assert (=> b!5368380 m!6396152))

(assert (=> b!5368380 m!6396150))

(declare-fun m!6396154 () Bool)

(assert (=> b!5368380 m!6396154))

(assert (=> b!5368380 m!6396150))

(declare-fun m!6396156 () Bool)

(assert (=> b!5368380 m!6396156))

(assert (=> b!5368380 m!6396152))

(declare-fun m!6396158 () Bool)

(assert (=> b!5368382 m!6396158))

(assert (=> b!5367427 d!1719648))

(declare-fun bs!1243475 () Bool)

(declare-fun b!5368385 () Bool)

(assert (= bs!1243475 (and b!5368385 b!5368380)))

(declare-fun lambda!276796 () Int)

(assert (=> bs!1243475 (= lambda!276796 lambda!276793)))

(declare-fun lt!2186131 () Int)

(declare-fun lambda!276797 () Int)

(assert (=> bs!1243475 (= (= lt!2186131 lt!2186127) (= lambda!276797 lambda!276794))))

(declare-fun bs!1243476 () Bool)

(assert (= bs!1243476 (and b!5368385 b!5368382)))

(assert (=> bs!1243476 (= (= lt!2186131 lt!2186129) (= lambda!276797 lambda!276795))))

(assert (=> b!5368385 true))

(declare-fun bs!1243477 () Bool)

(declare-fun b!5368387 () Bool)

(assert (= bs!1243477 (and b!5368387 b!5368380)))

(declare-fun lt!2186133 () Int)

(declare-fun lambda!276798 () Int)

(assert (=> bs!1243477 (= (= lt!2186133 lt!2186127) (= lambda!276798 lambda!276794))))

(declare-fun bs!1243478 () Bool)

(assert (= bs!1243478 (and b!5368387 b!5368382)))

(assert (=> bs!1243478 (= (= lt!2186133 lt!2186129) (= lambda!276798 lambda!276795))))

(declare-fun bs!1243479 () Bool)

(assert (= bs!1243479 (and b!5368387 b!5368385)))

(assert (=> bs!1243479 (= (= lt!2186133 lt!2186131) (= lambda!276798 lambda!276797))))

(assert (=> b!5368387 true))

(declare-fun d!1719662 () Bool)

(declare-fun e!3331281 () Bool)

(assert (=> d!1719662 e!3331281))

(declare-fun res!2278157 () Bool)

(assert (=> d!1719662 (=> (not res!2278157) (not e!3331281))))

(assert (=> d!1719662 (= res!2278157 (>= lt!2186133 0))))

(declare-fun e!3331280 () Int)

(assert (=> d!1719662 (= lt!2186133 e!3331280)))

(declare-fun c!935336 () Bool)

(assert (=> d!1719662 (= c!935336 ((_ is Cons!61407) (Cons!61407 lt!2185975 Nil!61407)))))

(assert (=> d!1719662 (= (zipperDepth!150 (Cons!61407 lt!2185975 Nil!61407)) lt!2186133)))

(assert (=> b!5368385 (= e!3331280 lt!2186131)))

(assert (=> b!5368385 (= lt!2186131 (maxBigInt!0 (contextDepth!86 (h!67855 (Cons!61407 lt!2185975 Nil!61407))) (zipperDepth!150 (t!374754 (Cons!61407 lt!2185975 Nil!61407)))))))

(declare-fun lt!2186132 () Unit!153826)

(assert (=> b!5368385 (= lt!2186132 (lemmaForallContextDepthBiggerThanTransitive!80 (t!374754 (Cons!61407 lt!2185975 Nil!61407)) lt!2186131 (zipperDepth!150 (t!374754 (Cons!61407 lt!2185975 Nil!61407))) lambda!276796))))

(assert (=> b!5368385 (forall!14487 (t!374754 (Cons!61407 lt!2185975 Nil!61407)) lambda!276797)))

(declare-fun lt!2186130 () Unit!153826)

(assert (=> b!5368385 (= lt!2186130 lt!2186132)))

(declare-fun b!5368386 () Bool)

(assert (=> b!5368386 (= e!3331280 0)))

(assert (=> b!5368387 (= e!3331281 (forall!14487 (Cons!61407 lt!2185975 Nil!61407) lambda!276798))))

(assert (= (and d!1719662 c!935336) b!5368385))

(assert (= (and d!1719662 (not c!935336)) b!5368386))

(assert (= (and d!1719662 res!2278157) b!5368387))

(declare-fun m!6396160 () Bool)

(assert (=> b!5368385 m!6396160))

(declare-fun m!6396162 () Bool)

(assert (=> b!5368385 m!6396162))

(declare-fun m!6396164 () Bool)

(assert (=> b!5368385 m!6396164))

(assert (=> b!5368385 m!6396162))

(declare-fun m!6396166 () Bool)

(assert (=> b!5368385 m!6396166))

(assert (=> b!5368385 m!6396162))

(declare-fun m!6396168 () Bool)

(assert (=> b!5368385 m!6396168))

(assert (=> b!5368385 m!6396164))

(declare-fun m!6396170 () Bool)

(assert (=> b!5368387 m!6396170))

(assert (=> b!5367427 d!1719662))

(declare-fun d!1719664 () Bool)

(assert (=> d!1719664 (= (isEmpty!33384 (_1!35579 lt!2185948)) ((_ is Nil!61408) (_1!35579 lt!2185948)))))

(assert (=> b!5367408 d!1719664))

(declare-fun bs!1243480 () Bool)

(declare-fun b!5368388 () Bool)

(assert (= bs!1243480 (and b!5368388 b!5368261)))

(declare-fun lambda!276799 () Int)

(assert (=> bs!1243480 (not (= lambda!276799 lambda!276783))))

(declare-fun bs!1243481 () Bool)

(assert (= bs!1243481 (and b!5368388 d!1719454)))

(assert (=> bs!1243481 (not (= lambda!276799 lambda!276713))))

(declare-fun bs!1243482 () Bool)

(assert (= bs!1243482 (and b!5368388 b!5367412)))

(assert (=> bs!1243482 (not (= lambda!276799 lambda!276699))))

(declare-fun bs!1243483 () Bool)

(assert (= bs!1243483 (and b!5368388 b!5368254)))

(assert (=> bs!1243483 (= (and (= (reg!15406 r!7292) (reg!15406 lt!2185979)) (= r!7292 lt!2185979)) (= lambda!276799 lambda!276782))))

(assert (=> bs!1243482 (not (= lambda!276799 lambda!276698))))

(declare-fun bs!1243484 () Bool)

(assert (= bs!1243484 (and b!5368388 d!1719458)))

(assert (=> bs!1243484 (not (= lambda!276799 lambda!276721))))

(declare-fun bs!1243485 () Bool)

(assert (= bs!1243485 (and b!5368388 b!5367409)))

(assert (=> bs!1243485 (not (= lambda!276799 lambda!276702))))

(assert (=> bs!1243485 (not (= lambda!276799 lambda!276701))))

(assert (=> bs!1243484 (not (= lambda!276799 lambda!276720))))

(assert (=> b!5368388 true))

(assert (=> b!5368388 true))

(declare-fun bs!1243486 () Bool)

(declare-fun b!5368395 () Bool)

(assert (= bs!1243486 (and b!5368395 b!5368261)))

(declare-fun lambda!276800 () Int)

(assert (=> bs!1243486 (= (and (= (regOne!30666 r!7292) (regOne!30666 lt!2185979)) (= (regTwo!30666 r!7292) (regTwo!30666 lt!2185979))) (= lambda!276800 lambda!276783))))

(declare-fun bs!1243487 () Bool)

(assert (= bs!1243487 (and b!5368395 d!1719454)))

(assert (=> bs!1243487 (not (= lambda!276800 lambda!276713))))

(declare-fun bs!1243488 () Bool)

(assert (= bs!1243488 (and b!5368395 b!5368254)))

(assert (=> bs!1243488 (not (= lambda!276800 lambda!276782))))

(declare-fun bs!1243489 () Bool)

(assert (= bs!1243489 (and b!5368395 b!5367412)))

(assert (=> bs!1243489 (not (= lambda!276800 lambda!276698))))

(declare-fun bs!1243490 () Bool)

(assert (= bs!1243490 (and b!5368395 d!1719458)))

(assert (=> bs!1243490 (= lambda!276800 lambda!276721)))

(declare-fun bs!1243491 () Bool)

(assert (= bs!1243491 (and b!5368395 b!5367409)))

(assert (=> bs!1243491 (= (= (regOne!30666 r!7292) lt!2185956) (= lambda!276800 lambda!276702))))

(assert (=> bs!1243491 (not (= lambda!276800 lambda!276701))))

(assert (=> bs!1243490 (not (= lambda!276800 lambda!276720))))

(declare-fun bs!1243492 () Bool)

(assert (= bs!1243492 (and b!5368395 b!5368388)))

(assert (=> bs!1243492 (not (= lambda!276800 lambda!276799))))

(assert (=> bs!1243489 (= lambda!276800 lambda!276699)))

(assert (=> b!5368395 true))

(assert (=> b!5368395 true))

(declare-fun e!3331285 () Bool)

(declare-fun call!384343 () Bool)

(assert (=> b!5368388 (= e!3331285 call!384343)))

(declare-fun b!5368389 () Bool)

(declare-fun e!3331284 () Bool)

(declare-fun call!384344 () Bool)

(assert (=> b!5368389 (= e!3331284 call!384344)))

(declare-fun bm!384338 () Bool)

(assert (=> bm!384338 (= call!384344 (isEmpty!33384 s!2326))))

(declare-fun b!5368390 () Bool)

(declare-fun e!3331282 () Bool)

(declare-fun e!3331287 () Bool)

(assert (=> b!5368390 (= e!3331282 e!3331287)))

(declare-fun res!2278159 () Bool)

(assert (=> b!5368390 (= res!2278159 (matchRSpec!2180 (regOne!30667 r!7292) s!2326))))

(assert (=> b!5368390 (=> res!2278159 e!3331287)))

(declare-fun b!5368391 () Bool)

(declare-fun e!3331286 () Bool)

(assert (=> b!5368391 (= e!3331286 (= s!2326 (Cons!61408 (c!935035 r!7292) Nil!61408)))))

(declare-fun d!1719666 () Bool)

(declare-fun c!935339 () Bool)

(assert (=> d!1719666 (= c!935339 ((_ is EmptyExpr!15077) r!7292))))

(assert (=> d!1719666 (= (matchRSpec!2180 r!7292 s!2326) e!3331284)))

(declare-fun b!5368392 () Bool)

(declare-fun c!935338 () Bool)

(assert (=> b!5368392 (= c!935338 ((_ is ElementMatch!15077) r!7292))))

(declare-fun e!3331283 () Bool)

(assert (=> b!5368392 (= e!3331283 e!3331286)))

(declare-fun b!5368393 () Bool)

(assert (=> b!5368393 (= e!3331287 (matchRSpec!2180 (regTwo!30667 r!7292) s!2326))))

(declare-fun b!5368394 () Bool)

(declare-fun c!935340 () Bool)

(assert (=> b!5368394 (= c!935340 ((_ is Union!15077) r!7292))))

(assert (=> b!5368394 (= e!3331286 e!3331282)))

(declare-fun c!935337 () Bool)

(declare-fun bm!384339 () Bool)

(assert (=> bm!384339 (= call!384343 (Exists!2258 (ite c!935337 lambda!276799 lambda!276800)))))

(declare-fun e!3331288 () Bool)

(assert (=> b!5368395 (= e!3331288 call!384343)))

(declare-fun b!5368396 () Bool)

(assert (=> b!5368396 (= e!3331282 e!3331288)))

(assert (=> b!5368396 (= c!935337 ((_ is Star!15077) r!7292))))

(declare-fun b!5368397 () Bool)

(declare-fun res!2278158 () Bool)

(assert (=> b!5368397 (=> res!2278158 e!3331285)))

(assert (=> b!5368397 (= res!2278158 call!384344)))

(assert (=> b!5368397 (= e!3331288 e!3331285)))

(declare-fun b!5368398 () Bool)

(assert (=> b!5368398 (= e!3331284 e!3331283)))

(declare-fun res!2278160 () Bool)

(assert (=> b!5368398 (= res!2278160 (not ((_ is EmptyLang!15077) r!7292)))))

(assert (=> b!5368398 (=> (not res!2278160) (not e!3331283))))

(assert (= (and d!1719666 c!935339) b!5368389))

(assert (= (and d!1719666 (not c!935339)) b!5368398))

(assert (= (and b!5368398 res!2278160) b!5368392))

(assert (= (and b!5368392 c!935338) b!5368391))

(assert (= (and b!5368392 (not c!935338)) b!5368394))

(assert (= (and b!5368394 c!935340) b!5368390))

(assert (= (and b!5368394 (not c!935340)) b!5368396))

(assert (= (and b!5368390 (not res!2278159)) b!5368393))

(assert (= (and b!5368396 c!935337) b!5368397))

(assert (= (and b!5368396 (not c!935337)) b!5368395))

(assert (= (and b!5368397 (not res!2278158)) b!5368388))

(assert (= (or b!5368388 b!5368395) bm!384339))

(assert (= (or b!5368389 b!5368397) bm!384338))

(assert (=> bm!384338 m!6395962))

(declare-fun m!6396172 () Bool)

(assert (=> b!5368390 m!6396172))

(declare-fun m!6396174 () Bool)

(assert (=> b!5368393 m!6396174))

(declare-fun m!6396176 () Bool)

(assert (=> bm!384339 m!6396176))

(assert (=> b!5367428 d!1719666))

(declare-fun b!5368399 () Bool)

(declare-fun res!2278164 () Bool)

(declare-fun e!3331291 () Bool)

(assert (=> b!5368399 (=> res!2278164 e!3331291)))

(assert (=> b!5368399 (= res!2278164 (not (isEmpty!33384 (tail!10610 s!2326))))))

(declare-fun b!5368400 () Bool)

(declare-fun e!3331293 () Bool)

(declare-fun e!3331295 () Bool)

(assert (=> b!5368400 (= e!3331293 e!3331295)))

(declare-fun res!2278166 () Bool)

(assert (=> b!5368400 (=> (not res!2278166) (not e!3331295))))

(declare-fun lt!2186134 () Bool)

(assert (=> b!5368400 (= res!2278166 (not lt!2186134))))

(declare-fun b!5368401 () Bool)

(declare-fun e!3331289 () Bool)

(assert (=> b!5368401 (= e!3331289 (nullable!5246 r!7292))))

(declare-fun b!5368402 () Bool)

(declare-fun res!2278162 () Bool)

(declare-fun e!3331294 () Bool)

(assert (=> b!5368402 (=> (not res!2278162) (not e!3331294))))

(declare-fun call!384345 () Bool)

(assert (=> b!5368402 (= res!2278162 (not call!384345))))

(declare-fun b!5368403 () Bool)

(assert (=> b!5368403 (= e!3331294 (= (head!11513 s!2326) (c!935035 r!7292)))))

(declare-fun b!5368404 () Bool)

(declare-fun res!2278163 () Bool)

(assert (=> b!5368404 (=> res!2278163 e!3331293)))

(assert (=> b!5368404 (= res!2278163 (not ((_ is ElementMatch!15077) r!7292)))))

(declare-fun e!3331292 () Bool)

(assert (=> b!5368404 (= e!3331292 e!3331293)))

(declare-fun b!5368405 () Bool)

(declare-fun e!3331290 () Bool)

(assert (=> b!5368405 (= e!3331290 e!3331292)))

(declare-fun c!935341 () Bool)

(assert (=> b!5368405 (= c!935341 ((_ is EmptyLang!15077) r!7292))))

(declare-fun b!5368406 () Bool)

(assert (=> b!5368406 (= e!3331289 (matchR!7262 (derivativeStep!4219 r!7292 (head!11513 s!2326)) (tail!10610 s!2326)))))

(declare-fun b!5368407 () Bool)

(assert (=> b!5368407 (= e!3331290 (= lt!2186134 call!384345))))

(declare-fun d!1719668 () Bool)

(assert (=> d!1719668 e!3331290))

(declare-fun c!935343 () Bool)

(assert (=> d!1719668 (= c!935343 ((_ is EmptyExpr!15077) r!7292))))

(assert (=> d!1719668 (= lt!2186134 e!3331289)))

(declare-fun c!935342 () Bool)

(assert (=> d!1719668 (= c!935342 (isEmpty!33384 s!2326))))

(assert (=> d!1719668 (validRegex!6813 r!7292)))

(assert (=> d!1719668 (= (matchR!7262 r!7292 s!2326) lt!2186134)))

(declare-fun b!5368408 () Bool)

(assert (=> b!5368408 (= e!3331291 (not (= (head!11513 s!2326) (c!935035 r!7292))))))

(declare-fun b!5368409 () Bool)

(assert (=> b!5368409 (= e!3331295 e!3331291)))

(declare-fun res!2278165 () Bool)

(assert (=> b!5368409 (=> res!2278165 e!3331291)))

(assert (=> b!5368409 (= res!2278165 call!384345)))

(declare-fun bm!384340 () Bool)

(assert (=> bm!384340 (= call!384345 (isEmpty!33384 s!2326))))

(declare-fun b!5368410 () Bool)

(assert (=> b!5368410 (= e!3331292 (not lt!2186134))))

(declare-fun b!5368411 () Bool)

(declare-fun res!2278167 () Bool)

(assert (=> b!5368411 (=> res!2278167 e!3331293)))

(assert (=> b!5368411 (= res!2278167 e!3331294)))

(declare-fun res!2278161 () Bool)

(assert (=> b!5368411 (=> (not res!2278161) (not e!3331294))))

(assert (=> b!5368411 (= res!2278161 lt!2186134)))

(declare-fun b!5368412 () Bool)

(declare-fun res!2278168 () Bool)

(assert (=> b!5368412 (=> (not res!2278168) (not e!3331294))))

(assert (=> b!5368412 (= res!2278168 (isEmpty!33384 (tail!10610 s!2326)))))

(assert (= (and d!1719668 c!935342) b!5368401))

(assert (= (and d!1719668 (not c!935342)) b!5368406))

(assert (= (and d!1719668 c!935343) b!5368407))

(assert (= (and d!1719668 (not c!935343)) b!5368405))

(assert (= (and b!5368405 c!935341) b!5368410))

(assert (= (and b!5368405 (not c!935341)) b!5368404))

(assert (= (and b!5368404 (not res!2278163)) b!5368411))

(assert (= (and b!5368411 res!2278161) b!5368402))

(assert (= (and b!5368402 res!2278162) b!5368412))

(assert (= (and b!5368412 res!2278168) b!5368403))

(assert (= (and b!5368411 (not res!2278167)) b!5368400))

(assert (= (and b!5368400 res!2278166) b!5368409))

(assert (= (and b!5368409 (not res!2278165)) b!5368399))

(assert (= (and b!5368399 (not res!2278164)) b!5368408))

(assert (= (or b!5368407 b!5368402 b!5368409) bm!384340))

(assert (=> bm!384340 m!6395962))

(assert (=> b!5368403 m!6395964))

(assert (=> b!5368412 m!6395966))

(assert (=> b!5368412 m!6395966))

(assert (=> b!5368412 m!6395968))

(assert (=> b!5368399 m!6395966))

(assert (=> b!5368399 m!6395966))

(assert (=> b!5368399 m!6395968))

(assert (=> d!1719668 m!6395962))

(assert (=> d!1719668 m!6395348))

(assert (=> b!5368406 m!6395964))

(assert (=> b!5368406 m!6395964))

(declare-fun m!6396178 () Bool)

(assert (=> b!5368406 m!6396178))

(assert (=> b!5368406 m!6395966))

(assert (=> b!5368406 m!6396178))

(assert (=> b!5368406 m!6395966))

(declare-fun m!6396180 () Bool)

(assert (=> b!5368406 m!6396180))

(declare-fun m!6396182 () Bool)

(assert (=> b!5368401 m!6396182))

(assert (=> b!5368408 m!6395964))

(assert (=> b!5367428 d!1719668))

(declare-fun d!1719670 () Bool)

(assert (=> d!1719670 (= (matchR!7262 r!7292 s!2326) (matchRSpec!2180 r!7292 s!2326))))

(declare-fun lt!2186135 () Unit!153826)

(assert (=> d!1719670 (= lt!2186135 (choose!40313 r!7292 s!2326))))

(assert (=> d!1719670 (validRegex!6813 r!7292)))

(assert (=> d!1719670 (= (mainMatchTheorem!2180 r!7292 s!2326) lt!2186135)))

(declare-fun bs!1243493 () Bool)

(assert (= bs!1243493 d!1719670))

(assert (=> bs!1243493 m!6395312))

(assert (=> bs!1243493 m!6395310))

(declare-fun m!6396184 () Bool)

(assert (=> bs!1243493 m!6396184))

(assert (=> bs!1243493 m!6395348))

(assert (=> b!5367428 d!1719670))

(declare-fun d!1719672 () Bool)

(assert (=> d!1719672 (= (isDefined!11891 lt!2185946) (not (isEmpty!33387 lt!2185946)))))

(declare-fun bs!1243494 () Bool)

(assert (= bs!1243494 d!1719672))

(declare-fun m!6396186 () Bool)

(assert (=> bs!1243494 m!6396186))

(assert (=> b!5367409 d!1719672))

(declare-fun bs!1243495 () Bool)

(declare-fun d!1719674 () Bool)

(assert (= bs!1243495 (and d!1719674 b!5368261)))

(declare-fun lambda!276801 () Int)

(assert (=> bs!1243495 (not (= lambda!276801 lambda!276783))))

(declare-fun bs!1243496 () Bool)

(assert (= bs!1243496 (and d!1719674 b!5368395)))

(assert (=> bs!1243496 (not (= lambda!276801 lambda!276800))))

(declare-fun bs!1243497 () Bool)

(assert (= bs!1243497 (and d!1719674 d!1719454)))

(assert (=> bs!1243497 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276801 lambda!276713))))

(declare-fun bs!1243498 () Bool)

(assert (= bs!1243498 (and d!1719674 b!5368254)))

(assert (=> bs!1243498 (not (= lambda!276801 lambda!276782))))

(declare-fun bs!1243499 () Bool)

(assert (= bs!1243499 (and d!1719674 b!5367412)))

(assert (=> bs!1243499 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276801 lambda!276698))))

(declare-fun bs!1243500 () Bool)

(assert (= bs!1243500 (and d!1719674 d!1719458)))

(assert (=> bs!1243500 (not (= lambda!276801 lambda!276721))))

(declare-fun bs!1243501 () Bool)

(assert (= bs!1243501 (and d!1719674 b!5367409)))

(assert (=> bs!1243501 (not (= lambda!276801 lambda!276702))))

(assert (=> bs!1243501 (= lambda!276801 lambda!276701)))

(assert (=> bs!1243500 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276801 lambda!276720))))

(declare-fun bs!1243502 () Bool)

(assert (= bs!1243502 (and d!1719674 b!5368388)))

(assert (=> bs!1243502 (not (= lambda!276801 lambda!276799))))

(assert (=> bs!1243499 (not (= lambda!276801 lambda!276699))))

(assert (=> d!1719674 true))

(assert (=> d!1719674 true))

(assert (=> d!1719674 true))

(assert (=> d!1719674 (= (isDefined!11891 (findConcatSeparation!1602 lt!2185956 (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326)) (Exists!2258 lambda!276801))))

(declare-fun lt!2186136 () Unit!153826)

(assert (=> d!1719674 (= lt!2186136 (choose!40303 lt!2185956 (regTwo!30666 r!7292) s!2326))))

(assert (=> d!1719674 (validRegex!6813 lt!2185956)))

(assert (=> d!1719674 (= (lemmaFindConcatSeparationEquivalentToExists!1366 lt!2185956 (regTwo!30666 r!7292) s!2326) lt!2186136)))

(declare-fun bs!1243503 () Bool)

(assert (= bs!1243503 d!1719674))

(assert (=> bs!1243503 m!6395406))

(declare-fun m!6396188 () Bool)

(assert (=> bs!1243503 m!6396188))

(declare-fun m!6396190 () Bool)

(assert (=> bs!1243503 m!6396190))

(assert (=> bs!1243503 m!6395610))

(declare-fun m!6396192 () Bool)

(assert (=> bs!1243503 m!6396192))

(assert (=> bs!1243503 m!6395406))

(assert (=> b!5367409 d!1719674))

(declare-fun bs!1243504 () Bool)

(declare-fun d!1719676 () Bool)

(assert (= bs!1243504 (and d!1719676 d!1719674)))

(declare-fun lambda!276802 () Int)

(assert (=> bs!1243504 (= lambda!276802 lambda!276801)))

(declare-fun bs!1243505 () Bool)

(assert (= bs!1243505 (and d!1719676 b!5368261)))

(assert (=> bs!1243505 (not (= lambda!276802 lambda!276783))))

(declare-fun bs!1243506 () Bool)

(assert (= bs!1243506 (and d!1719676 b!5368395)))

(assert (=> bs!1243506 (not (= lambda!276802 lambda!276800))))

(declare-fun bs!1243507 () Bool)

(assert (= bs!1243507 (and d!1719676 d!1719454)))

(assert (=> bs!1243507 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276802 lambda!276713))))

(declare-fun bs!1243508 () Bool)

(assert (= bs!1243508 (and d!1719676 b!5368254)))

(assert (=> bs!1243508 (not (= lambda!276802 lambda!276782))))

(declare-fun bs!1243509 () Bool)

(assert (= bs!1243509 (and d!1719676 b!5367412)))

(assert (=> bs!1243509 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276802 lambda!276698))))

(declare-fun bs!1243510 () Bool)

(assert (= bs!1243510 (and d!1719676 d!1719458)))

(assert (=> bs!1243510 (not (= lambda!276802 lambda!276721))))

(declare-fun bs!1243511 () Bool)

(assert (= bs!1243511 (and d!1719676 b!5367409)))

(assert (=> bs!1243511 (not (= lambda!276802 lambda!276702))))

(assert (=> bs!1243511 (= lambda!276802 lambda!276701)))

(assert (=> bs!1243510 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276802 lambda!276720))))

(declare-fun bs!1243512 () Bool)

(assert (= bs!1243512 (and d!1719676 b!5368388)))

(assert (=> bs!1243512 (not (= lambda!276802 lambda!276799))))

(assert (=> bs!1243509 (not (= lambda!276802 lambda!276699))))

(assert (=> d!1719676 true))

(assert (=> d!1719676 true))

(assert (=> d!1719676 true))

(declare-fun lambda!276803 () Int)

(assert (=> bs!1243504 (not (= lambda!276803 lambda!276801))))

(assert (=> bs!1243505 (= (and (= lt!2185956 (regOne!30666 lt!2185979)) (= (regTwo!30666 r!7292) (regTwo!30666 lt!2185979))) (= lambda!276803 lambda!276783))))

(assert (=> bs!1243506 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276803 lambda!276800))))

(assert (=> bs!1243507 (not (= lambda!276803 lambda!276713))))

(declare-fun bs!1243513 () Bool)

(assert (= bs!1243513 d!1719676))

(assert (=> bs!1243513 (not (= lambda!276803 lambda!276802))))

(assert (=> bs!1243508 (not (= lambda!276803 lambda!276782))))

(assert (=> bs!1243509 (not (= lambda!276803 lambda!276698))))

(assert (=> bs!1243510 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276803 lambda!276721))))

(assert (=> bs!1243511 (= lambda!276803 lambda!276702)))

(assert (=> bs!1243511 (not (= lambda!276803 lambda!276701))))

(assert (=> bs!1243510 (not (= lambda!276803 lambda!276720))))

(assert (=> bs!1243512 (not (= lambda!276803 lambda!276799))))

(assert (=> bs!1243509 (= (= lt!2185956 (regOne!30666 r!7292)) (= lambda!276803 lambda!276699))))

(assert (=> d!1719676 true))

(assert (=> d!1719676 true))

(assert (=> d!1719676 true))

(assert (=> d!1719676 (= (Exists!2258 lambda!276802) (Exists!2258 lambda!276803))))

(declare-fun lt!2186137 () Unit!153826)

(assert (=> d!1719676 (= lt!2186137 (choose!40304 lt!2185956 (regTwo!30666 r!7292) s!2326))))

(assert (=> d!1719676 (validRegex!6813 lt!2185956)))

(assert (=> d!1719676 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!912 lt!2185956 (regTwo!30666 r!7292) s!2326) lt!2186137)))

(declare-fun m!6396194 () Bool)

(assert (=> bs!1243513 m!6396194))

(declare-fun m!6396196 () Bool)

(assert (=> bs!1243513 m!6396196))

(declare-fun m!6396198 () Bool)

(assert (=> bs!1243513 m!6396198))

(assert (=> bs!1243513 m!6395610))

(assert (=> b!5367409 d!1719676))

(declare-fun b!5368423 () Bool)

(declare-fun res!2278173 () Bool)

(declare-fun e!3331301 () Bool)

(assert (=> b!5368423 (=> (not res!2278173) (not e!3331301))))

(declare-fun lt!2186140 () List!61532)

(declare-fun size!39788 (List!61532) Int)

(assert (=> b!5368423 (= res!2278173 (= (size!39788 lt!2186140) (+ (size!39788 (_1!35579 lt!2185948)) (size!39788 (_2!35579 lt!2185948)))))))

(declare-fun b!5368422 () Bool)

(declare-fun e!3331300 () List!61532)

(assert (=> b!5368422 (= e!3331300 (Cons!61408 (h!67856 (_1!35579 lt!2185948)) (++!13380 (t!374755 (_1!35579 lt!2185948)) (_2!35579 lt!2185948))))))

(declare-fun b!5368424 () Bool)

(assert (=> b!5368424 (= e!3331301 (or (not (= (_2!35579 lt!2185948) Nil!61408)) (= lt!2186140 (_1!35579 lt!2185948))))))

(declare-fun d!1719678 () Bool)

(assert (=> d!1719678 e!3331301))

(declare-fun res!2278174 () Bool)

(assert (=> d!1719678 (=> (not res!2278174) (not e!3331301))))

(declare-fun content!10971 (List!61532) (InoxSet C!30424))

(assert (=> d!1719678 (= res!2278174 (= (content!10971 lt!2186140) ((_ map or) (content!10971 (_1!35579 lt!2185948)) (content!10971 (_2!35579 lt!2185948)))))))

(assert (=> d!1719678 (= lt!2186140 e!3331300)))

(declare-fun c!935346 () Bool)

(assert (=> d!1719678 (= c!935346 ((_ is Nil!61408) (_1!35579 lt!2185948)))))

(assert (=> d!1719678 (= (++!13380 (_1!35579 lt!2185948) (_2!35579 lt!2185948)) lt!2186140)))

(declare-fun b!5368421 () Bool)

(assert (=> b!5368421 (= e!3331300 (_2!35579 lt!2185948))))

(assert (= (and d!1719678 c!935346) b!5368421))

(assert (= (and d!1719678 (not c!935346)) b!5368422))

(assert (= (and d!1719678 res!2278174) b!5368423))

(assert (= (and b!5368423 res!2278173) b!5368424))

(declare-fun m!6396200 () Bool)

(assert (=> b!5368423 m!6396200))

(declare-fun m!6396202 () Bool)

(assert (=> b!5368423 m!6396202))

(declare-fun m!6396204 () Bool)

(assert (=> b!5368423 m!6396204))

(declare-fun m!6396206 () Bool)

(assert (=> b!5368422 m!6396206))

(declare-fun m!6396208 () Bool)

(assert (=> d!1719678 m!6396208))

(declare-fun m!6396210 () Bool)

(assert (=> d!1719678 m!6396210))

(declare-fun m!6396212 () Bool)

(assert (=> d!1719678 m!6396212))

(assert (=> b!5367409 d!1719678))

(declare-fun d!1719680 () Bool)

(assert (=> d!1719680 (= (get!21124 lt!2185946) (v!51216 lt!2185946))))

(assert (=> b!5367409 d!1719680))

(declare-fun d!1719682 () Bool)

(assert (=> d!1719682 (= (Exists!2258 lambda!276701) (choose!40302 lambda!276701))))

(declare-fun bs!1243514 () Bool)

(assert (= bs!1243514 d!1719682))

(declare-fun m!6396214 () Bool)

(assert (=> bs!1243514 m!6396214))

(assert (=> b!5367409 d!1719682))

(declare-fun d!1719684 () Bool)

(assert (=> d!1719684 (= (Exists!2258 lambda!276702) (choose!40302 lambda!276702))))

(declare-fun bs!1243515 () Bool)

(assert (= bs!1243515 d!1719684))

(declare-fun m!6396216 () Bool)

(assert (=> bs!1243515 m!6396216))

(assert (=> b!5367409 d!1719684))

(declare-fun b!5368425 () Bool)

(declare-fun res!2278179 () Bool)

(declare-fun e!3331303 () Bool)

(assert (=> b!5368425 (=> (not res!2278179) (not e!3331303))))

(declare-fun lt!2186142 () Option!15188)

(assert (=> b!5368425 (= res!2278179 (matchR!7262 lt!2185956 (_1!35579 (get!21124 lt!2186142))))))

(declare-fun b!5368426 () Bool)

(declare-fun e!3331304 () Bool)

(assert (=> b!5368426 (= e!3331304 (matchR!7262 (regTwo!30666 r!7292) s!2326))))

(declare-fun d!1719686 () Bool)

(declare-fun e!3331302 () Bool)

(assert (=> d!1719686 e!3331302))

(declare-fun res!2278178 () Bool)

(assert (=> d!1719686 (=> res!2278178 e!3331302)))

(assert (=> d!1719686 (= res!2278178 e!3331303)))

(declare-fun res!2278177 () Bool)

(assert (=> d!1719686 (=> (not res!2278177) (not e!3331303))))

(assert (=> d!1719686 (= res!2278177 (isDefined!11891 lt!2186142))))

(declare-fun e!3331305 () Option!15188)

(assert (=> d!1719686 (= lt!2186142 e!3331305)))

(declare-fun c!935347 () Bool)

(assert (=> d!1719686 (= c!935347 e!3331304)))

(declare-fun res!2278175 () Bool)

(assert (=> d!1719686 (=> (not res!2278175) (not e!3331304))))

(assert (=> d!1719686 (= res!2278175 (matchR!7262 lt!2185956 Nil!61408))))

(assert (=> d!1719686 (validRegex!6813 lt!2185956)))

(assert (=> d!1719686 (= (findConcatSeparation!1602 lt!2185956 (regTwo!30666 r!7292) Nil!61408 s!2326 s!2326) lt!2186142)))

(declare-fun b!5368427 () Bool)

(assert (=> b!5368427 (= e!3331305 (Some!15187 (tuple2!64553 Nil!61408 s!2326)))))

(declare-fun b!5368428 () Bool)

(assert (=> b!5368428 (= e!3331302 (not (isDefined!11891 lt!2186142)))))

(declare-fun b!5368429 () Bool)

(assert (=> b!5368429 (= e!3331303 (= (++!13380 (_1!35579 (get!21124 lt!2186142)) (_2!35579 (get!21124 lt!2186142))) s!2326))))

(declare-fun b!5368430 () Bool)

(declare-fun e!3331306 () Option!15188)

(assert (=> b!5368430 (= e!3331306 None!15187)))

(declare-fun b!5368431 () Bool)

(declare-fun lt!2186143 () Unit!153826)

(declare-fun lt!2186141 () Unit!153826)

(assert (=> b!5368431 (= lt!2186143 lt!2186141)))

(assert (=> b!5368431 (= (++!13380 (++!13380 Nil!61408 (Cons!61408 (h!67856 s!2326) Nil!61408)) (t!374755 s!2326)) s!2326)))

(assert (=> b!5368431 (= lt!2186141 (lemmaMoveElementToOtherListKeepsConcatEq!1792 Nil!61408 (h!67856 s!2326) (t!374755 s!2326) s!2326))))

(assert (=> b!5368431 (= e!3331306 (findConcatSeparation!1602 lt!2185956 (regTwo!30666 r!7292) (++!13380 Nil!61408 (Cons!61408 (h!67856 s!2326) Nil!61408)) (t!374755 s!2326) s!2326))))

(declare-fun b!5368432 () Bool)

(declare-fun res!2278176 () Bool)

(assert (=> b!5368432 (=> (not res!2278176) (not e!3331303))))

(assert (=> b!5368432 (= res!2278176 (matchR!7262 (regTwo!30666 r!7292) (_2!35579 (get!21124 lt!2186142))))))

(declare-fun b!5368433 () Bool)

(assert (=> b!5368433 (= e!3331305 e!3331306)))

(declare-fun c!935348 () Bool)

(assert (=> b!5368433 (= c!935348 ((_ is Nil!61408) s!2326))))

(assert (= (and d!1719686 res!2278175) b!5368426))

(assert (= (and d!1719686 c!935347) b!5368427))

(assert (= (and d!1719686 (not c!935347)) b!5368433))

(assert (= (and b!5368433 c!935348) b!5368430))

(assert (= (and b!5368433 (not c!935348)) b!5368431))

(assert (= (and d!1719686 res!2278177) b!5368425))

(assert (= (and b!5368425 res!2278179) b!5368432))

(assert (= (and b!5368432 res!2278176) b!5368429))

(assert (= (and d!1719686 (not res!2278178)) b!5368428))

(declare-fun m!6396218 () Bool)

(assert (=> b!5368429 m!6396218))

(declare-fun m!6396220 () Bool)

(assert (=> b!5368429 m!6396220))

(assert (=> b!5368431 m!6395478))

(assert (=> b!5368431 m!6395478))

(assert (=> b!5368431 m!6395480))

(assert (=> b!5368431 m!6395482))

(assert (=> b!5368431 m!6395478))

(declare-fun m!6396222 () Bool)

(assert (=> b!5368431 m!6396222))

(assert (=> b!5368426 m!6395486))

(declare-fun m!6396224 () Bool)

(assert (=> d!1719686 m!6396224))

(declare-fun m!6396226 () Bool)

(assert (=> d!1719686 m!6396226))

(assert (=> d!1719686 m!6395610))

(assert (=> b!5368425 m!6396218))

(declare-fun m!6396228 () Bool)

(assert (=> b!5368425 m!6396228))

(assert (=> b!5368428 m!6396224))

(assert (=> b!5368432 m!6396218))

(declare-fun m!6396230 () Bool)

(assert (=> b!5368432 m!6396230))

(assert (=> b!5367409 d!1719686))

(declare-fun d!1719688 () Bool)

(declare-fun c!935349 () Bool)

(assert (=> d!1719688 (= c!935349 (isEmpty!33384 s!2326))))

(declare-fun e!3331307 () Bool)

(assert (=> d!1719688 (= (matchZipper!1321 lt!2185973 s!2326) e!3331307)))

(declare-fun b!5368434 () Bool)

(assert (=> b!5368434 (= e!3331307 (nullableZipper!1397 lt!2185973))))

(declare-fun b!5368435 () Bool)

(assert (=> b!5368435 (= e!3331307 (matchZipper!1321 (derivationStepZipper!1316 lt!2185973 (head!11513 s!2326)) (tail!10610 s!2326)))))

(assert (= (and d!1719688 c!935349) b!5368434))

(assert (= (and d!1719688 (not c!935349)) b!5368435))

(assert (=> d!1719688 m!6395962))

(declare-fun m!6396232 () Bool)

(assert (=> b!5368434 m!6396232))

(assert (=> b!5368435 m!6395964))

(assert (=> b!5368435 m!6395964))

(declare-fun m!6396234 () Bool)

(assert (=> b!5368435 m!6396234))

(assert (=> b!5368435 m!6395966))

(assert (=> b!5368435 m!6396234))

(assert (=> b!5368435 m!6395966))

(declare-fun m!6396236 () Bool)

(assert (=> b!5368435 m!6396236))

(assert (=> b!5367429 d!1719688))

(declare-fun d!1719690 () Bool)

(declare-fun c!935350 () Bool)

(assert (=> d!1719690 (= c!935350 (isEmpty!33384 (t!374755 s!2326)))))

(declare-fun e!3331308 () Bool)

(assert (=> d!1719690 (= (matchZipper!1321 lt!2185971 (t!374755 s!2326)) e!3331308)))

(declare-fun b!5368436 () Bool)

(assert (=> b!5368436 (= e!3331308 (nullableZipper!1397 lt!2185971))))

(declare-fun b!5368437 () Bool)

(assert (=> b!5368437 (= e!3331308 (matchZipper!1321 (derivationStepZipper!1316 lt!2185971 (head!11513 (t!374755 s!2326))) (tail!10610 (t!374755 s!2326))))))

(assert (= (and d!1719690 c!935350) b!5368436))

(assert (= (and d!1719690 (not c!935350)) b!5368437))

(assert (=> d!1719690 m!6395572))

(declare-fun m!6396238 () Bool)

(assert (=> b!5368436 m!6396238))

(assert (=> b!5368437 m!6395576))

(assert (=> b!5368437 m!6395576))

(declare-fun m!6396240 () Bool)

(assert (=> b!5368437 m!6396240))

(assert (=> b!5368437 m!6395580))

(assert (=> b!5368437 m!6396240))

(assert (=> b!5368437 m!6395580))

(declare-fun m!6396242 () Bool)

(assert (=> b!5368437 m!6396242))

(assert (=> b!5367429 d!1719690))

(declare-fun d!1719692 () Bool)

(assert (=> d!1719692 (= (isEmpty!33385 (t!374753 (exprs!4961 (h!67855 zl!343)))) ((_ is Nil!61406) (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(assert (=> b!5367410 d!1719692))

(declare-fun d!1719694 () Bool)

(assert (=> d!1719694 (= (flatMap!804 z!1189 lambda!276700) (dynLambda!24255 lambda!276700 (h!67855 zl!343)))))

(declare-fun lt!2186144 () Unit!153826)

(assert (=> d!1719694 (= lt!2186144 (choose!40312 z!1189 (h!67855 zl!343) lambda!276700))))

(assert (=> d!1719694 (= z!1189 (store ((as const (Array Context!8922 Bool)) false) (h!67855 zl!343) true))))

(assert (=> d!1719694 (= (lemmaFlatMapOnSingletonSet!336 z!1189 (h!67855 zl!343) lambda!276700) lt!2186144)))

(declare-fun b_lambda!205829 () Bool)

(assert (=> (not b_lambda!205829) (not d!1719694)))

(declare-fun bs!1243516 () Bool)

(assert (= bs!1243516 d!1719694))

(assert (=> bs!1243516 m!6395292))

(declare-fun m!6396244 () Bool)

(assert (=> bs!1243516 m!6396244))

(declare-fun m!6396246 () Bool)

(assert (=> bs!1243516 m!6396246))

(declare-fun m!6396248 () Bool)

(assert (=> bs!1243516 m!6396248))

(assert (=> b!5367430 d!1719694))

(declare-fun d!1719696 () Bool)

(assert (=> d!1719696 (= (nullable!5246 (h!67854 (exprs!4961 (h!67855 zl!343)))) (nullableFct!1550 (h!67854 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun bs!1243517 () Bool)

(assert (= bs!1243517 d!1719696))

(declare-fun m!6396250 () Bool)

(assert (=> bs!1243517 m!6396250))

(assert (=> b!5367430 d!1719696))

(declare-fun b!5368438 () Bool)

(declare-fun e!3331311 () (InoxSet Context!8922))

(assert (=> b!5368438 (= e!3331311 ((as const (Array Context!8922 Bool)) false))))

(declare-fun bm!384341 () Bool)

(declare-fun call!384346 () (InoxSet Context!8922))

(assert (=> bm!384341 (= call!384346 (derivationStepZipperDown!525 (h!67854 (exprs!4961 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343))))))) (Context!8923 (t!374753 (exprs!4961 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343)))))))) (h!67856 s!2326)))))

(declare-fun d!1719698 () Bool)

(declare-fun c!935351 () Bool)

(declare-fun e!3331310 () Bool)

(assert (=> d!1719698 (= c!935351 e!3331310)))

(declare-fun res!2278180 () Bool)

(assert (=> d!1719698 (=> (not res!2278180) (not e!3331310))))

(assert (=> d!1719698 (= res!2278180 ((_ is Cons!61406) (exprs!4961 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343))))))))))

(declare-fun e!3331309 () (InoxSet Context!8922))

(assert (=> d!1719698 (= (derivationStepZipperUp!449 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343))))) (h!67856 s!2326)) e!3331309)))

(declare-fun b!5368439 () Bool)

(assert (=> b!5368439 (= e!3331309 ((_ map or) call!384346 (derivationStepZipperUp!449 (Context!8923 (t!374753 (exprs!4961 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343)))))))) (h!67856 s!2326))))))

(declare-fun b!5368440 () Bool)

(assert (=> b!5368440 (= e!3331310 (nullable!5246 (h!67854 (exprs!4961 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343)))))))))))

(declare-fun b!5368441 () Bool)

(assert (=> b!5368441 (= e!3331309 e!3331311)))

(declare-fun c!935352 () Bool)

(assert (=> b!5368441 (= c!935352 ((_ is Cons!61406) (exprs!4961 (Context!8923 (Cons!61406 (h!67854 (exprs!4961 (h!67855 zl!343))) (t!374753 (exprs!4961 (h!67855 zl!343))))))))))

(declare-fun b!5368442 () Bool)

(assert (=> b!5368442 (= e!3331311 call!384346)))

(assert (= (and d!1719698 res!2278180) b!5368440))

(assert (= (and d!1719698 c!935351) b!5368439))

(assert (= (and d!1719698 (not c!935351)) b!5368441))

(assert (= (and b!5368441 c!935352) b!5368442))

(assert (= (and b!5368441 (not c!935352)) b!5368438))

(assert (= (or b!5368439 b!5368442) bm!384341))

(declare-fun m!6396252 () Bool)

(assert (=> bm!384341 m!6396252))

(declare-fun m!6396254 () Bool)

(assert (=> b!5368439 m!6396254))

(declare-fun m!6396256 () Bool)

(assert (=> b!5368440 m!6396256))

(assert (=> b!5367430 d!1719698))

(assert (=> b!5367430 d!1719574))

(declare-fun b!5368443 () Bool)

(declare-fun e!3331312 () (InoxSet Context!8922))

(declare-fun call!384350 () (InoxSet Context!8922))

(assert (=> b!5368443 (= e!3331312 call!384350)))

(declare-fun c!935355 () Bool)

(declare-fun call!384347 () (InoxSet Context!8922))

(declare-fun call!384348 () List!61530)

(declare-fun c!935353 () Bool)

(declare-fun c!935357 () Bool)

(declare-fun bm!384342 () Bool)

(assert (=> bm!384342 (= call!384347 (derivationStepZipperDown!525 (ite c!935355 (regOne!30667 (h!67854 (exprs!4961 (h!67855 zl!343)))) (ite c!935357 (regTwo!30666 (h!67854 (exprs!4961 (h!67855 zl!343)))) (ite c!935353 (regOne!30666 (h!67854 (exprs!4961 (h!67855 zl!343)))) (reg!15406 (h!67854 (exprs!4961 (h!67855 zl!343))))))) (ite (or c!935355 c!935357) lt!2185975 (Context!8923 call!384348)) (h!67856 s!2326)))))

(declare-fun b!5368444 () Bool)

(declare-fun e!3331317 () (InoxSet Context!8922))

(assert (=> b!5368444 (= e!3331317 e!3331312)))

(assert (=> b!5368444 (= c!935353 ((_ is Concat!23922) (h!67854 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5368445 () Bool)

(declare-fun e!3331316 () (InoxSet Context!8922))

(assert (=> b!5368445 (= e!3331316 (store ((as const (Array Context!8922 Bool)) false) lt!2185975 true))))

(declare-fun d!1719700 () Bool)

(declare-fun c!935354 () Bool)

(assert (=> d!1719700 (= c!935354 (and ((_ is ElementMatch!15077) (h!67854 (exprs!4961 (h!67855 zl!343)))) (= (c!935035 (h!67854 (exprs!4961 (h!67855 zl!343)))) (h!67856 s!2326))))))

(assert (=> d!1719700 (= (derivationStepZipperDown!525 (h!67854 (exprs!4961 (h!67855 zl!343))) lt!2185975 (h!67856 s!2326)) e!3331316)))

(declare-fun b!5368446 () Bool)

(declare-fun e!3331314 () (InoxSet Context!8922))

(assert (=> b!5368446 (= e!3331314 ((as const (Array Context!8922 Bool)) false))))

(declare-fun b!5368447 () Bool)

(declare-fun e!3331315 () Bool)

(assert (=> b!5368447 (= e!3331315 (nullable!5246 (regOne!30666 (h!67854 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5368448 () Bool)

(declare-fun call!384351 () (InoxSet Context!8922))

(declare-fun call!384352 () (InoxSet Context!8922))

(assert (=> b!5368448 (= e!3331317 ((_ map or) call!384351 call!384352))))

(declare-fun b!5368449 () Bool)

(declare-fun e!3331313 () (InoxSet Context!8922))

(assert (=> b!5368449 (= e!3331313 ((_ map or) call!384347 call!384351))))

(declare-fun b!5368450 () Bool)

(assert (=> b!5368450 (= c!935357 e!3331315)))

(declare-fun res!2278181 () Bool)

(assert (=> b!5368450 (=> (not res!2278181) (not e!3331315))))

(assert (=> b!5368450 (= res!2278181 ((_ is Concat!23922) (h!67854 (exprs!4961 (h!67855 zl!343)))))))

(assert (=> b!5368450 (= e!3331313 e!3331317)))

(declare-fun bm!384343 () Bool)

(declare-fun call!384349 () List!61530)

(assert (=> bm!384343 (= call!384348 call!384349)))

(declare-fun bm!384344 () Bool)

(assert (=> bm!384344 (= call!384351 (derivationStepZipperDown!525 (ite c!935355 (regTwo!30667 (h!67854 (exprs!4961 (h!67855 zl!343)))) (regOne!30666 (h!67854 (exprs!4961 (h!67855 zl!343))))) (ite c!935355 lt!2185975 (Context!8923 call!384349)) (h!67856 s!2326)))))

(declare-fun bm!384345 () Bool)

(assert (=> bm!384345 (= call!384352 call!384347)))

(declare-fun b!5368451 () Bool)

(declare-fun c!935356 () Bool)

(assert (=> b!5368451 (= c!935356 ((_ is Star!15077) (h!67854 (exprs!4961 (h!67855 zl!343)))))))

(assert (=> b!5368451 (= e!3331312 e!3331314)))

(declare-fun bm!384346 () Bool)

(assert (=> bm!384346 (= call!384349 ($colon$colon!1448 (exprs!4961 lt!2185975) (ite (or c!935357 c!935353) (regTwo!30666 (h!67854 (exprs!4961 (h!67855 zl!343)))) (h!67854 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5368452 () Bool)

(assert (=> b!5368452 (= e!3331314 call!384350)))

(declare-fun b!5368453 () Bool)

(assert (=> b!5368453 (= e!3331316 e!3331313)))

(assert (=> b!5368453 (= c!935355 ((_ is Union!15077) (h!67854 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun bm!384347 () Bool)

(assert (=> bm!384347 (= call!384350 call!384352)))

(assert (= (and d!1719700 c!935354) b!5368445))

(assert (= (and d!1719700 (not c!935354)) b!5368453))

(assert (= (and b!5368453 c!935355) b!5368449))

(assert (= (and b!5368453 (not c!935355)) b!5368450))

(assert (= (and b!5368450 res!2278181) b!5368447))

(assert (= (and b!5368450 c!935357) b!5368448))

(assert (= (and b!5368450 (not c!935357)) b!5368444))

(assert (= (and b!5368444 c!935353) b!5368443))

(assert (= (and b!5368444 (not c!935353)) b!5368451))

(assert (= (and b!5368451 c!935356) b!5368452))

(assert (= (and b!5368451 (not c!935356)) b!5368446))

(assert (= (or b!5368443 b!5368452) bm!384343))

(assert (= (or b!5368443 b!5368452) bm!384347))

(assert (= (or b!5368448 bm!384343) bm!384346))

(assert (= (or b!5368448 bm!384347) bm!384345))

(assert (= (or b!5368449 b!5368448) bm!384344))

(assert (= (or b!5368449 bm!384345) bm!384342))

(declare-fun m!6396258 () Bool)

(assert (=> bm!384342 m!6396258))

(declare-fun m!6396260 () Bool)

(assert (=> b!5368447 m!6396260))

(declare-fun m!6396262 () Bool)

(assert (=> bm!384346 m!6396262))

(assert (=> b!5368445 m!6395374))

(declare-fun m!6396264 () Bool)

(assert (=> bm!384344 m!6396264))

(assert (=> b!5367430 d!1719700))

(declare-fun b!5368454 () Bool)

(declare-fun e!3331320 () (InoxSet Context!8922))

(assert (=> b!5368454 (= e!3331320 ((as const (Array Context!8922 Bool)) false))))

(declare-fun bm!384348 () Bool)

(declare-fun call!384353 () (InoxSet Context!8922))

(assert (=> bm!384348 (= call!384353 (derivationStepZipperDown!525 (h!67854 (exprs!4961 (h!67855 zl!343))) (Context!8923 (t!374753 (exprs!4961 (h!67855 zl!343)))) (h!67856 s!2326)))))

(declare-fun d!1719702 () Bool)

(declare-fun c!935358 () Bool)

(declare-fun e!3331319 () Bool)

(assert (=> d!1719702 (= c!935358 e!3331319)))

(declare-fun res!2278182 () Bool)

(assert (=> d!1719702 (=> (not res!2278182) (not e!3331319))))

(assert (=> d!1719702 (= res!2278182 ((_ is Cons!61406) (exprs!4961 (h!67855 zl!343))))))

(declare-fun e!3331318 () (InoxSet Context!8922))

(assert (=> d!1719702 (= (derivationStepZipperUp!449 (h!67855 zl!343) (h!67856 s!2326)) e!3331318)))

(declare-fun b!5368455 () Bool)

(assert (=> b!5368455 (= e!3331318 ((_ map or) call!384353 (derivationStepZipperUp!449 (Context!8923 (t!374753 (exprs!4961 (h!67855 zl!343)))) (h!67856 s!2326))))))

(declare-fun b!5368456 () Bool)

(assert (=> b!5368456 (= e!3331319 (nullable!5246 (h!67854 (exprs!4961 (h!67855 zl!343)))))))

(declare-fun b!5368457 () Bool)

(assert (=> b!5368457 (= e!3331318 e!3331320)))

(declare-fun c!935359 () Bool)

(assert (=> b!5368457 (= c!935359 ((_ is Cons!61406) (exprs!4961 (h!67855 zl!343))))))

(declare-fun b!5368458 () Bool)

(assert (=> b!5368458 (= e!3331320 call!384353)))

(assert (= (and d!1719702 res!2278182) b!5368456))

(assert (= (and d!1719702 c!935358) b!5368455))

(assert (= (and d!1719702 (not c!935358)) b!5368457))

(assert (= (and b!5368457 c!935359) b!5368458))

(assert (= (and b!5368457 (not c!935359)) b!5368454))

(assert (= (or b!5368455 b!5368458) bm!384348))

(declare-fun m!6396266 () Bool)

(assert (=> bm!384348 m!6396266))

(declare-fun m!6396268 () Bool)

(assert (=> b!5368455 m!6396268))

(assert (=> b!5368456 m!6395290))

(assert (=> b!5367430 d!1719702))

(declare-fun d!1719704 () Bool)

(assert (=> d!1719704 (= (flatMap!804 z!1189 lambda!276700) (choose!40311 z!1189 lambda!276700))))

(declare-fun bs!1243518 () Bool)

(assert (= bs!1243518 d!1719704))

(declare-fun m!6396270 () Bool)

(assert (=> bs!1243518 m!6396270))

(assert (=> b!5367430 d!1719704))

(declare-fun b!5368477 () Bool)

(declare-fun e!3331338 () Bool)

(declare-fun e!3331336 () Bool)

(assert (=> b!5368477 (= e!3331338 e!3331336)))

(declare-fun res!2278196 () Bool)

(assert (=> b!5368477 (= res!2278196 (not (nullable!5246 (reg!15406 r!7292))))))

(assert (=> b!5368477 (=> (not res!2278196) (not e!3331336))))

(declare-fun b!5368478 () Bool)

(declare-fun e!3331341 () Bool)

(declare-fun e!3331339 () Bool)

(assert (=> b!5368478 (= e!3331341 e!3331339)))

(declare-fun res!2278193 () Bool)

(assert (=> b!5368478 (=> (not res!2278193) (not e!3331339))))

(declare-fun call!384361 () Bool)

(assert (=> b!5368478 (= res!2278193 call!384361)))

(declare-fun b!5368479 () Bool)

(declare-fun res!2278194 () Bool)

(declare-fun e!3331335 () Bool)

(assert (=> b!5368479 (=> (not res!2278194) (not e!3331335))))

(assert (=> b!5368479 (= res!2278194 call!384361)))

(declare-fun e!3331340 () Bool)

(assert (=> b!5368479 (= e!3331340 e!3331335)))

(declare-fun b!5368480 () Bool)

(declare-fun e!3331337 () Bool)

(assert (=> b!5368480 (= e!3331337 e!3331338)))

(declare-fun c!935365 () Bool)

(assert (=> b!5368480 (= c!935365 ((_ is Star!15077) r!7292))))

(declare-fun b!5368481 () Bool)

(declare-fun call!384362 () Bool)

(assert (=> b!5368481 (= e!3331336 call!384362)))

(declare-fun b!5368482 () Bool)

(declare-fun res!2278195 () Bool)

(assert (=> b!5368482 (=> res!2278195 e!3331341)))

(assert (=> b!5368482 (= res!2278195 (not ((_ is Concat!23922) r!7292)))))

(assert (=> b!5368482 (= e!3331340 e!3331341)))

(declare-fun c!935364 () Bool)

(declare-fun bm!384356 () Bool)

(assert (=> bm!384356 (= call!384362 (validRegex!6813 (ite c!935365 (reg!15406 r!7292) (ite c!935364 (regTwo!30667 r!7292) (regTwo!30666 r!7292)))))))

(declare-fun d!1719706 () Bool)

(declare-fun res!2278197 () Bool)

(assert (=> d!1719706 (=> res!2278197 e!3331337)))

(assert (=> d!1719706 (= res!2278197 ((_ is ElementMatch!15077) r!7292))))

(assert (=> d!1719706 (= (validRegex!6813 r!7292) e!3331337)))

(declare-fun bm!384355 () Bool)

(declare-fun call!384360 () Bool)

(assert (=> bm!384355 (= call!384360 call!384362)))

(declare-fun b!5368483 () Bool)

(assert (=> b!5368483 (= e!3331338 e!3331340)))

(assert (=> b!5368483 (= c!935364 ((_ is Union!15077) r!7292))))

(declare-fun bm!384357 () Bool)

(assert (=> bm!384357 (= call!384361 (validRegex!6813 (ite c!935364 (regOne!30667 r!7292) (regOne!30666 r!7292))))))

(declare-fun b!5368484 () Bool)

(assert (=> b!5368484 (= e!3331339 call!384360)))

(declare-fun b!5368485 () Bool)

(assert (=> b!5368485 (= e!3331335 call!384360)))

(assert (= (and d!1719706 (not res!2278197)) b!5368480))

(assert (= (and b!5368480 c!935365) b!5368477))

(assert (= (and b!5368480 (not c!935365)) b!5368483))

(assert (= (and b!5368477 res!2278196) b!5368481))

(assert (= (and b!5368483 c!935364) b!5368479))

(assert (= (and b!5368483 (not c!935364)) b!5368482))

(assert (= (and b!5368479 res!2278194) b!5368485))

(assert (= (and b!5368482 (not res!2278195)) b!5368478))

(assert (= (and b!5368478 res!2278193) b!5368484))

(assert (= (or b!5368485 b!5368484) bm!384355))

(assert (= (or b!5368479 b!5368478) bm!384357))

(assert (= (or b!5368481 bm!384355) bm!384356))

(declare-fun m!6396272 () Bool)

(assert (=> b!5368477 m!6396272))

(declare-fun m!6396274 () Bool)

(assert (=> bm!384356 m!6396274))

(declare-fun m!6396276 () Bool)

(assert (=> bm!384357 m!6396276))

(assert (=> start!564842 d!1719706))

(declare-fun d!1719708 () Bool)

(declare-fun res!2278202 () Bool)

(declare-fun e!3331346 () Bool)

(assert (=> d!1719708 (=> res!2278202 e!3331346)))

(assert (=> d!1719708 (= res!2278202 ((_ is Nil!61406) (t!374753 (exprs!4961 (h!67855 zl!343)))))))

(assert (=> d!1719708 (= (forall!14485 (t!374753 (exprs!4961 (h!67855 zl!343))) lambda!276703) e!3331346)))

(declare-fun b!5368490 () Bool)

(declare-fun e!3331347 () Bool)

(assert (=> b!5368490 (= e!3331346 e!3331347)))

(declare-fun res!2278203 () Bool)

(assert (=> b!5368490 (=> (not res!2278203) (not e!3331347))))

(declare-fun dynLambda!24257 (Int Regex!15077) Bool)

(assert (=> b!5368490 (= res!2278203 (dynLambda!24257 lambda!276703 (h!67854 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun b!5368491 () Bool)

(assert (=> b!5368491 (= e!3331347 (forall!14485 (t!374753 (t!374753 (exprs!4961 (h!67855 zl!343)))) lambda!276703))))

(assert (= (and d!1719708 (not res!2278202)) b!5368490))

(assert (= (and b!5368490 res!2278203) b!5368491))

(declare-fun b_lambda!205831 () Bool)

(assert (=> (not b_lambda!205831) (not b!5368490)))

(declare-fun m!6396278 () Bool)

(assert (=> b!5368490 m!6396278))

(declare-fun m!6396280 () Bool)

(assert (=> b!5368491 m!6396280))

(assert (=> b!5367411 d!1719708))

(declare-fun b!5368496 () Bool)

(declare-fun e!3331350 () Bool)

(declare-fun tp!1489628 () Bool)

(declare-fun tp!1489629 () Bool)

(assert (=> b!5368496 (= e!3331350 (and tp!1489628 tp!1489629))))

(assert (=> b!5367440 (= tp!1489556 e!3331350)))

(assert (= (and b!5367440 ((_ is Cons!61406) (exprs!4961 (h!67855 zl!343)))) b!5368496))

(declare-fun b!5368504 () Bool)

(declare-fun e!3331356 () Bool)

(declare-fun tp!1489634 () Bool)

(assert (=> b!5368504 (= e!3331356 tp!1489634)))

(declare-fun tp!1489635 () Bool)

(declare-fun e!3331355 () Bool)

(declare-fun b!5368503 () Bool)

(assert (=> b!5368503 (= e!3331355 (and (inv!80939 (h!67855 (t!374754 zl!343))) e!3331356 tp!1489635))))

(assert (=> b!5367420 (= tp!1489564 e!3331355)))

(assert (= b!5368503 b!5368504))

(assert (= (and b!5367420 ((_ is Cons!61407) (t!374754 zl!343))) b!5368503))

(declare-fun m!6396282 () Bool)

(assert (=> b!5368503 m!6396282))

(declare-fun b!5368516 () Bool)

(declare-fun e!3331359 () Bool)

(declare-fun tp!1489647 () Bool)

(declare-fun tp!1489649 () Bool)

(assert (=> b!5368516 (= e!3331359 (and tp!1489647 tp!1489649))))

(declare-fun b!5368518 () Bool)

(declare-fun tp!1489646 () Bool)

(declare-fun tp!1489650 () Bool)

(assert (=> b!5368518 (= e!3331359 (and tp!1489646 tp!1489650))))

(assert (=> b!5367415 (= tp!1489558 e!3331359)))

(declare-fun b!5368517 () Bool)

(declare-fun tp!1489648 () Bool)

(assert (=> b!5368517 (= e!3331359 tp!1489648)))

(declare-fun b!5368515 () Bool)

(assert (=> b!5368515 (= e!3331359 tp_is_empty!39407)))

(assert (= (and b!5367415 ((_ is ElementMatch!15077) (reg!15406 r!7292))) b!5368515))

(assert (= (and b!5367415 ((_ is Concat!23922) (reg!15406 r!7292))) b!5368516))

(assert (= (and b!5367415 ((_ is Star!15077) (reg!15406 r!7292))) b!5368517))

(assert (= (and b!5367415 ((_ is Union!15077) (reg!15406 r!7292))) b!5368518))

(declare-fun condSetEmpty!34775 () Bool)

(assert (=> setNonEmpty!34769 (= condSetEmpty!34775 (= setRest!34769 ((as const (Array Context!8922 Bool)) false)))))

(declare-fun setRes!34775 () Bool)

(assert (=> setNonEmpty!34769 (= tp!1489565 setRes!34775)))

(declare-fun setIsEmpty!34775 () Bool)

(assert (=> setIsEmpty!34775 setRes!34775))

(declare-fun setElem!34775 () Context!8922)

(declare-fun tp!1489655 () Bool)

(declare-fun setNonEmpty!34775 () Bool)

(declare-fun e!3331362 () Bool)

(assert (=> setNonEmpty!34775 (= setRes!34775 (and tp!1489655 (inv!80939 setElem!34775) e!3331362))))

(declare-fun setRest!34775 () (InoxSet Context!8922))

(assert (=> setNonEmpty!34775 (= setRest!34769 ((_ map or) (store ((as const (Array Context!8922 Bool)) false) setElem!34775 true) setRest!34775))))

(declare-fun b!5368523 () Bool)

(declare-fun tp!1489656 () Bool)

(assert (=> b!5368523 (= e!3331362 tp!1489656)))

(assert (= (and setNonEmpty!34769 condSetEmpty!34775) setIsEmpty!34775))

(assert (= (and setNonEmpty!34769 (not condSetEmpty!34775)) setNonEmpty!34775))

(assert (= setNonEmpty!34775 b!5368523))

(declare-fun m!6396284 () Bool)

(assert (=> setNonEmpty!34775 m!6396284))

(declare-fun b!5368525 () Bool)

(declare-fun e!3331363 () Bool)

(declare-fun tp!1489658 () Bool)

(declare-fun tp!1489660 () Bool)

(assert (=> b!5368525 (= e!3331363 (and tp!1489658 tp!1489660))))

(declare-fun b!5368527 () Bool)

(declare-fun tp!1489657 () Bool)

(declare-fun tp!1489661 () Bool)

(assert (=> b!5368527 (= e!3331363 (and tp!1489657 tp!1489661))))

(assert (=> b!5367436 (= tp!1489557 e!3331363)))

(declare-fun b!5368526 () Bool)

(declare-fun tp!1489659 () Bool)

(assert (=> b!5368526 (= e!3331363 tp!1489659)))

(declare-fun b!5368524 () Bool)

(assert (=> b!5368524 (= e!3331363 tp_is_empty!39407)))

(assert (= (and b!5367436 ((_ is ElementMatch!15077) (regOne!30666 r!7292))) b!5368524))

(assert (= (and b!5367436 ((_ is Concat!23922) (regOne!30666 r!7292))) b!5368525))

(assert (= (and b!5367436 ((_ is Star!15077) (regOne!30666 r!7292))) b!5368526))

(assert (= (and b!5367436 ((_ is Union!15077) (regOne!30666 r!7292))) b!5368527))

(declare-fun b!5368529 () Bool)

(declare-fun e!3331364 () Bool)

(declare-fun tp!1489663 () Bool)

(declare-fun tp!1489665 () Bool)

(assert (=> b!5368529 (= e!3331364 (and tp!1489663 tp!1489665))))

(declare-fun b!5368531 () Bool)

(declare-fun tp!1489662 () Bool)

(declare-fun tp!1489666 () Bool)

(assert (=> b!5368531 (= e!3331364 (and tp!1489662 tp!1489666))))

(assert (=> b!5367436 (= tp!1489562 e!3331364)))

(declare-fun b!5368530 () Bool)

(declare-fun tp!1489664 () Bool)

(assert (=> b!5368530 (= e!3331364 tp!1489664)))

(declare-fun b!5368528 () Bool)

(assert (=> b!5368528 (= e!3331364 tp_is_empty!39407)))

(assert (= (and b!5367436 ((_ is ElementMatch!15077) (regTwo!30666 r!7292))) b!5368528))

(assert (= (and b!5367436 ((_ is Concat!23922) (regTwo!30666 r!7292))) b!5368529))

(assert (= (and b!5367436 ((_ is Star!15077) (regTwo!30666 r!7292))) b!5368530))

(assert (= (and b!5367436 ((_ is Union!15077) (regTwo!30666 r!7292))) b!5368531))

(declare-fun b!5368533 () Bool)

(declare-fun e!3331365 () Bool)

(declare-fun tp!1489668 () Bool)

(declare-fun tp!1489670 () Bool)

(assert (=> b!5368533 (= e!3331365 (and tp!1489668 tp!1489670))))

(declare-fun b!5368535 () Bool)

(declare-fun tp!1489667 () Bool)

(declare-fun tp!1489671 () Bool)

(assert (=> b!5368535 (= e!3331365 (and tp!1489667 tp!1489671))))

(assert (=> b!5367426 (= tp!1489563 e!3331365)))

(declare-fun b!5368534 () Bool)

(declare-fun tp!1489669 () Bool)

(assert (=> b!5368534 (= e!3331365 tp!1489669)))

(declare-fun b!5368532 () Bool)

(assert (=> b!5368532 (= e!3331365 tp_is_empty!39407)))

(assert (= (and b!5367426 ((_ is ElementMatch!15077) (regOne!30667 r!7292))) b!5368532))

(assert (= (and b!5367426 ((_ is Concat!23922) (regOne!30667 r!7292))) b!5368533))

(assert (= (and b!5367426 ((_ is Star!15077) (regOne!30667 r!7292))) b!5368534))

(assert (= (and b!5367426 ((_ is Union!15077) (regOne!30667 r!7292))) b!5368535))

(declare-fun b!5368537 () Bool)

(declare-fun e!3331366 () Bool)

(declare-fun tp!1489673 () Bool)

(declare-fun tp!1489675 () Bool)

(assert (=> b!5368537 (= e!3331366 (and tp!1489673 tp!1489675))))

(declare-fun b!5368539 () Bool)

(declare-fun tp!1489672 () Bool)

(declare-fun tp!1489676 () Bool)

(assert (=> b!5368539 (= e!3331366 (and tp!1489672 tp!1489676))))

(assert (=> b!5367426 (= tp!1489559 e!3331366)))

(declare-fun b!5368538 () Bool)

(declare-fun tp!1489674 () Bool)

(assert (=> b!5368538 (= e!3331366 tp!1489674)))

(declare-fun b!5368536 () Bool)

(assert (=> b!5368536 (= e!3331366 tp_is_empty!39407)))

(assert (= (and b!5367426 ((_ is ElementMatch!15077) (regTwo!30667 r!7292))) b!5368536))

(assert (= (and b!5367426 ((_ is Concat!23922) (regTwo!30667 r!7292))) b!5368537))

(assert (= (and b!5367426 ((_ is Star!15077) (regTwo!30667 r!7292))) b!5368538))

(assert (= (and b!5367426 ((_ is Union!15077) (regTwo!30667 r!7292))) b!5368539))

(declare-fun b!5368540 () Bool)

(declare-fun e!3331367 () Bool)

(declare-fun tp!1489677 () Bool)

(declare-fun tp!1489678 () Bool)

(assert (=> b!5368540 (= e!3331367 (and tp!1489677 tp!1489678))))

(assert (=> b!5367407 (= tp!1489561 e!3331367)))

(assert (= (and b!5367407 ((_ is Cons!61406) (exprs!4961 setElem!34769))) b!5368540))

(declare-fun b!5368545 () Bool)

(declare-fun e!3331370 () Bool)

(declare-fun tp!1489681 () Bool)

(assert (=> b!5368545 (= e!3331370 (and tp_is_empty!39407 tp!1489681))))

(assert (=> b!5367432 (= tp!1489560 e!3331370)))

(assert (= (and b!5367432 ((_ is Cons!61408) (t!374755 s!2326))) b!5368545))

(declare-fun b_lambda!205833 () Bool)

(assert (= b_lambda!205815 (or b!5367430 b_lambda!205833)))

(declare-fun bs!1243519 () Bool)

(declare-fun d!1719710 () Bool)

(assert (= bs!1243519 (and d!1719710 b!5367430)))

(assert (=> bs!1243519 (= (dynLambda!24255 lambda!276700 lt!2185965) (derivationStepZipperUp!449 lt!2185965 (h!67856 s!2326)))))

(assert (=> bs!1243519 m!6395364))

(assert (=> d!1719642 d!1719710))

(declare-fun b_lambda!205835 () Bool)

(assert (= b_lambda!205809 (or b!5367430 b_lambda!205835)))

(declare-fun bs!1243520 () Bool)

(declare-fun d!1719712 () Bool)

(assert (= bs!1243520 (and d!1719712 b!5367430)))

(assert (=> bs!1243520 (= (dynLambda!24255 lambda!276700 lt!2185950) (derivationStepZipperUp!449 lt!2185950 (h!67856 s!2326)))))

(assert (=> bs!1243520 m!6395384))

(assert (=> d!1719532 d!1719712))

(declare-fun b_lambda!205837 () Bool)

(assert (= b_lambda!205831 (or b!5367411 b_lambda!205837)))

(declare-fun bs!1243521 () Bool)

(declare-fun d!1719714 () Bool)

(assert (= bs!1243521 (and d!1719714 b!5367411)))

(assert (=> bs!1243521 (= (dynLambda!24257 lambda!276703 (h!67854 (t!374753 (exprs!4961 (h!67855 zl!343))))) (validRegex!6813 (h!67854 (t!374753 (exprs!4961 (h!67855 zl!343))))))))

(declare-fun m!6396286 () Bool)

(assert (=> bs!1243521 m!6396286))

(assert (=> b!5368490 d!1719714))

(declare-fun b_lambda!205839 () Bool)

(assert (= b_lambda!205811 (or b!5367430 b_lambda!205839)))

(declare-fun bs!1243522 () Bool)

(declare-fun d!1719716 () Bool)

(assert (= bs!1243522 (and d!1719716 b!5367430)))

(assert (=> bs!1243522 (= (dynLambda!24255 lambda!276700 lt!2185975) (derivationStepZipperUp!449 lt!2185975 (h!67856 s!2326)))))

(assert (=> bs!1243522 m!6395294))

(assert (=> d!1719576 d!1719716))

(declare-fun b_lambda!205841 () Bool)

(assert (= b_lambda!205807 (or b!5367430 b_lambda!205841)))

(declare-fun bs!1243523 () Bool)

(declare-fun d!1719718 () Bool)

(assert (= bs!1243523 (and d!1719718 b!5367430)))

(assert (=> bs!1243523 (= (dynLambda!24255 lambda!276700 lt!2185961) (derivationStepZipperUp!449 lt!2185961 (h!67856 s!2326)))))

(assert (=> bs!1243523 m!6395380))

(assert (=> d!1719528 d!1719718))

(declare-fun b_lambda!205843 () Bool)

(assert (= b_lambda!205829 (or b!5367430 b_lambda!205843)))

(declare-fun bs!1243524 () Bool)

(declare-fun d!1719720 () Bool)

(assert (= bs!1243524 (and d!1719720 b!5367430)))

(assert (=> bs!1243524 (= (dynLambda!24255 lambda!276700 (h!67855 zl!343)) (derivationStepZipperUp!449 (h!67855 zl!343) (h!67856 s!2326)))))

(assert (=> bs!1243524 m!6395288))

(assert (=> d!1719694 d!1719720))

(check-sat (not b!5368538) (not d!1719668) (not b!5368504) (not b!5368326) (not bs!1243520) (not b!5368380) (not b!5368108) (not b!5368428) (not b!5368028) (not b!5368434) (not d!1719424) (not bm!384289) (not b!5367722) (not b_lambda!205843) (not d!1719450) (not bm!384291) (not bm!384283) (not b!5367752) (not b!5367731) (not bm!384348) (not d!1719670) (not b!5368320) (not b!5368183) (not bm!384334) (not d!1719690) (not d!1719674) (not d!1719528) (not d!1719686) (not d!1719646) (not b!5367757) (not d!1719676) (not b!5368168) (not b!5368103) (not b!5367527) (not bm!384340) (not b!5367835) (not d!1719468) (not b!5367724) (not b!5368107) (not d!1719634) (not b!5368523) (not b!5367529) (not d!1719576) (not b!5368477) (not b!5367666) (not bm!384321) (not b!5368456) (not d!1719478) (not b!5368387) (not b!5367759) (not b!5368432) (not b!5368104) (not d!1719532) (not b!5368429) (not setNonEmpty!34775) (not d!1719458) (not bm!384341) (not b!5368491) (not d!1719638) (not b_lambda!205839) (not d!1719572) (not b_lambda!205833) (not b!5368533) (not d!1719454) (not d!1719704) (not b!5368316) (not bm!384264) (not b!5368169) (not b!5368503) (not bs!1243523) (not b!5368534) (not b!5368437) (not b!5368517) (not b!5368525) (not b!5367726) (not b!5368185) (not b!5368435) (not b!5368157) (not b!5368439) (not b!5368516) (not bm!384338) (not b!5368526) (not d!1719684) (not b!5368026) (not b!5368132) (not d!1719568) (not b!5368181) (not b!5368110) (not bm!384230) (not d!1719526) (not b!5368333) (not b!5368447) (not bm!384253) (not d!1719688) (not b!5368158) (not bm!384346) (not b!5368426) (not b!5367876) (not b!5367870) (not bm!384322) (not b!5368527) (not b!5368105) (not b_lambda!205837) (not b!5367532) (not bm!384263) (not bm!384344) (not d!1719506) (not b!5368440) (not b_lambda!205835) (not b!5368422) (not b!5367530) (not d!1719520) (not b!5368423) (not b!5368029) (not d!1719564) (not d!1719628) (not b_lambda!205841) (not b!5368496) (not b!5368027) (not b!5368162) (not b!5368425) (not d!1719558) (not bs!1243521) (not d!1719452) (not b!5368167) (not bm!384228) (not b!5368390) (not d!1719582) (not b!5367674) (not b!5368399) (not b!5368545) (not bm!384288) (not bm!384356) (not d!1719636) (not d!1719522) (not b!5367754) (not b!5368021) (not bm!384339) (not b!5368529) (not d!1719696) (not b!5368401) (not b!5368539) (not d!1719546) (not bs!1243524) (not b!5368164) (not d!1719644) (not b!5368382) (not b!5368403) (not d!1719570) (not b!5368188) (not d!1719560) (not b!5368408) (not d!1719620) (not b!5368535) (not b!5367729) (not b!5368325) (not b!5368190) (not b!5368025) (not b!5368166) (not b!5368540) (not bm!384282) (not b!5368537) (not bm!384287) (not bm!384281) (not bm!384284) (not b!5367667) (not b!5368455) (not bm!384257) (not d!1719682) (not b!5367877) (not b!5367750) (not b!5368106) (not b!5368406) (not b!5368518) (not b!5368259) (not b!5368194) tp_is_empty!39407 (not b!5368256) (not bm!384335) (not b!5368530) (not b!5367533) (not d!1719476) (not d!1719584) (not d!1719578) (not d!1719678) (not b!5367735) (not b!5368385) (not b!5368412) (not b!5368319) (not bm!384290) (not d!1719694) (not bm!384357) (not b!5368334) (not d!1719672) (not b!5368431) (not b!5367526) (not bs!1243522) (not bm!384342) (not bm!384280) (not bs!1243519) (not b!5368436) (not bm!384255) (not d!1719642) (not b!5367869) (not b!5368023) (not d!1719466) (not b!5368531) (not b!5368170) (not b!5368393) (not b!5367763) (not d!1719488) (not bm!384337) (not d!1719580))
(check-sat)
