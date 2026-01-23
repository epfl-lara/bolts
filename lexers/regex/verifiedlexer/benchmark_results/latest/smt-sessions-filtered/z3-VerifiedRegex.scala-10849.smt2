; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559406 () Bool)

(assert start!559406)

(declare-fun b!5302818 () Bool)

(assert (=> b!5302818 true))

(assert (=> b!5302818 true))

(declare-fun lambda!269434 () Int)

(declare-fun lambda!269433 () Int)

(assert (=> b!5302818 (not (= lambda!269434 lambda!269433))))

(assert (=> b!5302818 true))

(assert (=> b!5302818 true))

(declare-fun b!5302808 () Bool)

(assert (=> b!5302808 true))

(declare-fun bs!1229862 () Bool)

(declare-fun b!5302785 () Bool)

(assert (= bs!1229862 (and b!5302785 b!5302818)))

(declare-datatypes ((C!30160 0))(
  ( (C!30161 (val!24782 Int)) )
))
(declare-datatypes ((Regex!14945 0))(
  ( (ElementMatch!14945 (c!920717 C!30160)) (Concat!23790 (regOne!30402 Regex!14945) (regTwo!30402 Regex!14945)) (EmptyExpr!14945) (Star!14945 (reg!15274 Regex!14945)) (EmptyLang!14945) (Union!14945 (regOne!30403 Regex!14945) (regTwo!30403 Regex!14945)) )
))
(declare-fun r!7292 () Regex!14945)

(declare-fun lambda!269436 () Int)

(declare-fun lt!2166430 () Regex!14945)

(assert (=> bs!1229862 (= (and (= (regOne!30402 (regOne!30402 r!7292)) (regOne!30402 r!7292)) (= lt!2166430 (regTwo!30402 r!7292))) (= lambda!269436 lambda!269433))))

(assert (=> bs!1229862 (not (= lambda!269436 lambda!269434))))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(declare-fun lambda!269437 () Int)

(assert (=> bs!1229862 (not (= lambda!269437 lambda!269433))))

(assert (=> bs!1229862 (= (and (= (regOne!30402 (regOne!30402 r!7292)) (regOne!30402 r!7292)) (= lt!2166430 (regTwo!30402 r!7292))) (= lambda!269437 lambda!269434))))

(assert (=> b!5302785 (not (= lambda!269437 lambda!269436))))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(declare-fun lt!2166388 () Regex!14945)

(declare-fun lambda!269438 () Int)

(assert (=> bs!1229862 (= (and (= (regTwo!30402 (regOne!30402 r!7292)) (regOne!30402 r!7292)) (= lt!2166388 (regTwo!30402 r!7292))) (= lambda!269438 lambda!269433))))

(assert (=> bs!1229862 (not (= lambda!269438 lambda!269434))))

(assert (=> b!5302785 (= (and (= (regTwo!30402 (regOne!30402 r!7292)) (regOne!30402 (regOne!30402 r!7292))) (= lt!2166388 lt!2166430)) (= lambda!269438 lambda!269436))))

(assert (=> b!5302785 (not (= lambda!269438 lambda!269437))))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(declare-fun lambda!269439 () Int)

(assert (=> bs!1229862 (not (= lambda!269439 lambda!269433))))

(assert (=> b!5302785 (= (and (= (regTwo!30402 (regOne!30402 r!7292)) (regOne!30402 (regOne!30402 r!7292))) (= lt!2166388 lt!2166430)) (= lambda!269439 lambda!269437))))

(assert (=> b!5302785 (not (= lambda!269439 lambda!269436))))

(assert (=> bs!1229862 (= (and (= (regTwo!30402 (regOne!30402 r!7292)) (regOne!30402 r!7292)) (= lt!2166388 (regTwo!30402 r!7292))) (= lambda!269439 lambda!269434))))

(assert (=> b!5302785 (not (= lambda!269439 lambda!269438))))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(assert (=> b!5302785 true))

(declare-fun setIsEmpty!34067 () Bool)

(declare-fun setRes!34067 () Bool)

(assert (=> setIsEmpty!34067 setRes!34067))

(declare-fun b!5302783 () Bool)

(declare-fun e!3295761 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61134 0))(
  ( (Nil!61010) (Cons!61010 (h!67458 Regex!14945) (t!374339 List!61134)) )
))
(declare-datatypes ((Context!8658 0))(
  ( (Context!8659 (exprs!4829 List!61134)) )
))
(declare-fun lt!2166421 () (InoxSet Context!8658))

(declare-datatypes ((List!61135 0))(
  ( (Nil!61011) (Cons!61011 (h!67459 C!30160) (t!374340 List!61135)) )
))
(declare-fun s!2326 () List!61135)

(declare-fun matchZipper!1189 ((InoxSet Context!8658) List!61135) Bool)

(assert (=> b!5302783 (= e!3295761 (matchZipper!1189 lt!2166421 (t!374340 s!2326)))))

(declare-fun b!5302784 () Bool)

(declare-fun res!2249082 () Bool)

(declare-fun e!3295765 () Bool)

(assert (=> b!5302784 (=> res!2249082 e!3295765)))

(declare-datatypes ((List!61136 0))(
  ( (Nil!61012) (Cons!61012 (h!67460 Context!8658) (t!374341 List!61136)) )
))
(declare-fun zl!343 () List!61136)

(declare-fun isEmpty!32975 (List!61134) Bool)

(assert (=> b!5302784 (= res!2249082 (isEmpty!32975 (t!374339 (exprs!4829 (h!67460 zl!343)))))))

(declare-fun e!3295762 () Bool)

(declare-fun e!3295758 () Bool)

(assert (=> b!5302785 (= e!3295762 e!3295758)))

(declare-fun res!2249079 () Bool)

(assert (=> b!5302785 (=> res!2249079 e!3295758)))

(declare-fun lt!2166419 () Bool)

(declare-fun lt!2166431 () Bool)

(declare-fun lt!2166423 () Bool)

(declare-fun lt!2166429 () Bool)

(declare-fun lt!2166411 () Bool)

(assert (=> b!5302785 (= res!2249079 (or (not (= lt!2166423 (or lt!2166419 lt!2166429))) (not (= lt!2166423 (or lt!2166431 lt!2166411)))))))

(declare-fun z!1189 () (InoxSet Context!8658))

(assert (=> b!5302785 (= lt!2166423 (matchZipper!1189 z!1189 s!2326))))

(declare-fun Exists!2126 (Int) Bool)

(assert (=> b!5302785 (= (Exists!2126 lambda!269438) (Exists!2126 lambda!269439))))

(declare-datatypes ((Unit!153298 0))(
  ( (Unit!153299) )
))
(declare-fun lt!2166392 () Unit!153298)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!780 (Regex!14945 Regex!14945 List!61135) Unit!153298)

(assert (=> b!5302785 (= lt!2166392 (lemmaExistCutMatchRandMatchRSpecEquivalent!780 (regTwo!30402 (regOne!30402 r!7292)) lt!2166388 s!2326))))

(declare-datatypes ((tuple2!64288 0))(
  ( (tuple2!64289 (_1!35447 List!61135) (_2!35447 List!61135)) )
))
(declare-datatypes ((Option!15056 0))(
  ( (None!15055) (Some!15055 (v!51084 tuple2!64288)) )
))
(declare-fun isDefined!11759 (Option!15056) Bool)

(declare-fun findConcatSeparation!1470 (Regex!14945 Regex!14945 List!61135 List!61135 List!61135) Option!15056)

(assert (=> b!5302785 (= (isDefined!11759 (findConcatSeparation!1470 (regTwo!30402 (regOne!30402 r!7292)) lt!2166388 Nil!61011 s!2326 s!2326)) (Exists!2126 lambda!269438))))

(declare-fun lt!2166426 () Unit!153298)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1234 (Regex!14945 Regex!14945 List!61135) Unit!153298)

(assert (=> b!5302785 (= lt!2166426 (lemmaFindConcatSeparationEquivalentToExists!1234 (regTwo!30402 (regOne!30402 r!7292)) lt!2166388 s!2326))))

(declare-fun generalisedConcat!614 (List!61134) Regex!14945)

(assert (=> b!5302785 (= lt!2166388 (generalisedConcat!614 (t!374339 (exprs!4829 (h!67460 zl!343)))))))

(declare-fun matchRSpec!2048 (Regex!14945 List!61135) Bool)

(assert (=> b!5302785 (= lt!2166411 (matchRSpec!2048 lt!2166430 s!2326))))

(declare-fun lt!2166425 () Unit!153298)

(declare-fun mainMatchTheorem!2048 (Regex!14945 List!61135) Unit!153298)

(assert (=> b!5302785 (= lt!2166425 (mainMatchTheorem!2048 lt!2166430 s!2326))))

(assert (=> b!5302785 (= (Exists!2126 lambda!269436) (Exists!2126 lambda!269437))))

(declare-fun lt!2166433 () Unit!153298)

(assert (=> b!5302785 (= lt!2166433 (lemmaExistCutMatchRandMatchRSpecEquivalent!780 (regOne!30402 (regOne!30402 r!7292)) lt!2166430 s!2326))))

(assert (=> b!5302785 (= (isDefined!11759 (findConcatSeparation!1470 (regOne!30402 (regOne!30402 r!7292)) lt!2166430 Nil!61011 s!2326 s!2326)) (Exists!2126 lambda!269436))))

(declare-fun lt!2166405 () Unit!153298)

(assert (=> b!5302785 (= lt!2166405 (lemmaFindConcatSeparationEquivalentToExists!1234 (regOne!30402 (regOne!30402 r!7292)) lt!2166430 s!2326))))

(declare-fun lt!2166395 () Regex!14945)

(assert (=> b!5302785 (= lt!2166431 (matchRSpec!2048 lt!2166395 s!2326))))

(declare-fun lt!2166397 () Unit!153298)

(assert (=> b!5302785 (= lt!2166397 (mainMatchTheorem!2048 lt!2166395 s!2326))))

(assert (=> b!5302785 (= lt!2166411 lt!2166429)))

(declare-fun lt!2166418 () (InoxSet Context!8658))

(assert (=> b!5302785 (= lt!2166429 (matchZipper!1189 lt!2166418 s!2326))))

(declare-fun matchR!7130 (Regex!14945 List!61135) Bool)

(assert (=> b!5302785 (= lt!2166411 (matchR!7130 lt!2166430 s!2326))))

(declare-fun lt!2166404 () Context!8658)

(declare-fun lt!2166391 () Unit!153298)

(declare-fun theoremZipperRegexEquiv!355 ((InoxSet Context!8658) List!61136 Regex!14945 List!61135) Unit!153298)

(assert (=> b!5302785 (= lt!2166391 (theoremZipperRegexEquiv!355 lt!2166418 (Cons!61012 lt!2166404 Nil!61012) lt!2166430 s!2326))))

(declare-fun lt!2166394 () List!61134)

(assert (=> b!5302785 (= lt!2166430 (generalisedConcat!614 lt!2166394))))

(assert (=> b!5302785 (= lt!2166431 lt!2166419)))

(declare-fun lt!2166422 () (InoxSet Context!8658))

(assert (=> b!5302785 (= lt!2166419 (matchZipper!1189 lt!2166422 s!2326))))

(assert (=> b!5302785 (= lt!2166431 (matchR!7130 lt!2166395 s!2326))))

(declare-fun lt!2166432 () List!61136)

(declare-fun lt!2166434 () Unit!153298)

(assert (=> b!5302785 (= lt!2166434 (theoremZipperRegexEquiv!355 lt!2166422 lt!2166432 lt!2166395 s!2326))))

(declare-fun lt!2166387 () List!61134)

(assert (=> b!5302785 (= lt!2166395 (generalisedConcat!614 lt!2166387))))

(declare-fun b!5302786 () Bool)

(declare-fun e!3295774 () Bool)

(declare-fun e!3295776 () Bool)

(assert (=> b!5302786 (= e!3295774 e!3295776)))

(declare-fun res!2249078 () Bool)

(assert (=> b!5302786 (=> res!2249078 e!3295776)))

(declare-fun lt!2166408 () (InoxSet Context!8658))

(declare-fun lt!2166424 () (InoxSet Context!8658))

(assert (=> b!5302786 (= res!2249078 (not (= lt!2166408 lt!2166424)))))

(declare-fun lt!2166389 () (InoxSet Context!8658))

(assert (=> b!5302786 (= lt!2166424 ((_ map or) lt!2166389 lt!2166421))))

(declare-fun derivationStepZipperUp!317 (Context!8658 C!30160) (InoxSet Context!8658))

(assert (=> b!5302786 (= lt!2166421 (derivationStepZipperUp!317 lt!2166404 (h!67459 s!2326)))))

(declare-fun lambda!269435 () Int)

(declare-fun lt!2166415 () Context!8658)

(declare-fun flatMap!672 ((InoxSet Context!8658) Int) (InoxSet Context!8658))

(assert (=> b!5302786 (= (flatMap!672 lt!2166422 lambda!269435) (derivationStepZipperUp!317 lt!2166415 (h!67459 s!2326)))))

(declare-fun lt!2166428 () Unit!153298)

(declare-fun lemmaFlatMapOnSingletonSet!204 ((InoxSet Context!8658) Context!8658 Int) Unit!153298)

(assert (=> b!5302786 (= lt!2166428 (lemmaFlatMapOnSingletonSet!204 lt!2166422 lt!2166415 lambda!269435))))

(declare-fun lt!2166398 () (InoxSet Context!8658))

(assert (=> b!5302786 (= lt!2166398 (derivationStepZipperUp!317 lt!2166415 (h!67459 s!2326)))))

(declare-fun derivationStepZipper!1188 ((InoxSet Context!8658) C!30160) (InoxSet Context!8658))

(assert (=> b!5302786 (= lt!2166408 (derivationStepZipper!1188 lt!2166422 (h!67459 s!2326)))))

(assert (=> b!5302786 (= lt!2166418 (store ((as const (Array Context!8658 Bool)) false) lt!2166404 true))))

(assert (=> b!5302786 (= lt!2166422 (store ((as const (Array Context!8658 Bool)) false) lt!2166415 true))))

(assert (=> b!5302786 (= lt!2166415 (Context!8659 lt!2166387))))

(assert (=> b!5302786 (= lt!2166387 (Cons!61010 (regOne!30402 (regOne!30402 r!7292)) lt!2166394))))

(declare-fun b!5302787 () Bool)

(declare-fun e!3295757 () Bool)

(declare-fun tp_is_empty!39143 () Bool)

(assert (=> b!5302787 (= e!3295757 tp_is_empty!39143)))

(declare-fun b!5302788 () Bool)

(declare-fun res!2249067 () Bool)

(declare-fun e!3295772 () Bool)

(assert (=> b!5302788 (=> res!2249067 e!3295772)))

(declare-fun nullable!5114 (Regex!14945) Bool)

(assert (=> b!5302788 (= res!2249067 (not (nullable!5114 (regOne!30402 (regOne!30402 r!7292)))))))

(declare-fun b!5302789 () Bool)

(declare-fun e!3295770 () Bool)

(declare-fun tp!1478512 () Bool)

(assert (=> b!5302789 (= e!3295770 tp!1478512)))

(declare-fun b!5302790 () Bool)

(declare-fun e!3295775 () Bool)

(declare-fun tp!1478507 () Bool)

(assert (=> b!5302790 (= e!3295775 tp!1478507)))

(declare-fun b!5302791 () Bool)

(declare-fun res!2249084 () Bool)

(declare-fun e!3295760 () Bool)

(assert (=> b!5302791 (=> res!2249084 e!3295760)))

(assert (=> b!5302791 (= res!2249084 (not (= r!7292 (generalisedConcat!614 (exprs!4829 (h!67460 zl!343))))))))

(declare-fun b!5302792 () Bool)

(declare-fun res!2249077 () Bool)

(declare-fun e!3295768 () Bool)

(assert (=> b!5302792 (=> res!2249077 e!3295768)))

(declare-fun contextDepthTotal!86 (Context!8658) Int)

(assert (=> b!5302792 (= res!2249077 (>= (contextDepthTotal!86 lt!2166415) (contextDepthTotal!86 (h!67460 zl!343))))))

(declare-fun b!5302793 () Bool)

(declare-fun res!2249087 () Bool)

(assert (=> b!5302793 (=> res!2249087 e!3295760)))

(declare-fun isEmpty!32976 (List!61136) Bool)

(assert (=> b!5302793 (= res!2249087 (not (isEmpty!32976 (t!374341 zl!343))))))

(declare-fun b!5302794 () Bool)

(declare-fun e!3295763 () Bool)

(declare-fun tp!1478510 () Bool)

(assert (=> b!5302794 (= e!3295763 (and tp_is_empty!39143 tp!1478510))))

(declare-fun b!5302795 () Bool)

(declare-fun e!3295756 () Unit!153298)

(declare-fun Unit!153300 () Unit!153298)

(assert (=> b!5302795 (= e!3295756 Unit!153300)))

(declare-fun lt!2166401 () Unit!153298)

(declare-fun lt!2166402 () (InoxSet Context!8658))

(declare-fun lt!2166403 () (InoxSet Context!8658))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!182 ((InoxSet Context!8658) (InoxSet Context!8658) List!61135) Unit!153298)

(assert (=> b!5302795 (= lt!2166401 (lemmaZipperConcatMatchesSameAsBothZippers!182 lt!2166402 lt!2166403 (t!374340 s!2326)))))

(declare-fun res!2249081 () Bool)

(assert (=> b!5302795 (= res!2249081 (matchZipper!1189 lt!2166402 (t!374340 s!2326)))))

(declare-fun e!3295769 () Bool)

(assert (=> b!5302795 (=> res!2249081 e!3295769)))

(assert (=> b!5302795 (= (matchZipper!1189 ((_ map or) lt!2166402 lt!2166403) (t!374340 s!2326)) e!3295769)))

(declare-fun res!2249072 () Bool)

(declare-fun e!3295766 () Bool)

(assert (=> start!559406 (=> (not res!2249072) (not e!3295766))))

(declare-fun validRegex!6681 (Regex!14945) Bool)

(assert (=> start!559406 (= res!2249072 (validRegex!6681 r!7292))))

(assert (=> start!559406 e!3295766))

(assert (=> start!559406 e!3295757))

(declare-fun condSetEmpty!34067 () Bool)

(assert (=> start!559406 (= condSetEmpty!34067 (= z!1189 ((as const (Array Context!8658 Bool)) false)))))

(assert (=> start!559406 setRes!34067))

(declare-fun e!3295773 () Bool)

(assert (=> start!559406 e!3295773))

(assert (=> start!559406 e!3295763))

(declare-fun setElem!34067 () Context!8658)

(declare-fun setNonEmpty!34067 () Bool)

(declare-fun tp!1478506 () Bool)

(declare-fun inv!80609 (Context!8658) Bool)

(assert (=> setNonEmpty!34067 (= setRes!34067 (and tp!1478506 (inv!80609 setElem!34067) e!3295775))))

(declare-fun setRest!34067 () (InoxSet Context!8658))

(assert (=> setNonEmpty!34067 (= z!1189 ((_ map or) (store ((as const (Array Context!8658 Bool)) false) setElem!34067 true) setRest!34067))))

(declare-fun b!5302796 () Bool)

(assert (=> b!5302796 (= e!3295768 e!3295762)))

(declare-fun res!2249090 () Bool)

(assert (=> b!5302796 (=> res!2249090 e!3295762)))

(declare-fun zipperDepthTotal!106 (List!61136) Int)

(assert (=> b!5302796 (= res!2249090 (>= (zipperDepthTotal!106 lt!2166432) (zipperDepthTotal!106 zl!343)))))

(assert (=> b!5302796 (= lt!2166432 (Cons!61012 lt!2166415 Nil!61012))))

(declare-fun b!5302797 () Bool)

(declare-fun res!2249083 () Bool)

(assert (=> b!5302797 (=> res!2249083 e!3295760)))

(get-info :version)

(assert (=> b!5302797 (= res!2249083 (or ((_ is EmptyExpr!14945) r!7292) ((_ is EmptyLang!14945) r!7292) ((_ is ElementMatch!14945) r!7292) ((_ is Union!14945) r!7292) (not ((_ is Concat!23790) r!7292))))))

(declare-fun b!5302798 () Bool)

(declare-fun res!2249075 () Bool)

(assert (=> b!5302798 (=> (not res!2249075) (not e!3295766))))

(declare-fun toList!8729 ((InoxSet Context!8658)) List!61136)

(assert (=> b!5302798 (= res!2249075 (= (toList!8729 z!1189) zl!343))))

(declare-fun b!5302799 () Bool)

(declare-fun e!3295764 () Bool)

(assert (=> b!5302799 (= e!3295764 (not (matchZipper!1189 (derivationStepZipper!1188 lt!2166418 (h!67459 s!2326)) (t!374340 s!2326))))))

(declare-fun b!5302800 () Bool)

(declare-fun tp!1478505 () Bool)

(assert (=> b!5302800 (= e!3295757 tp!1478505)))

(declare-fun b!5302801 () Bool)

(declare-fun tp!1478511 () Bool)

(declare-fun tp!1478509 () Bool)

(assert (=> b!5302801 (= e!3295757 (and tp!1478511 tp!1478509))))

(declare-fun b!5302802 () Bool)

(declare-fun e!3295759 () Bool)

(declare-fun lt!2166406 () (InoxSet Context!8658))

(assert (=> b!5302802 (= e!3295759 (not (matchZipper!1189 lt!2166406 (t!374340 s!2326))))))

(declare-fun b!5302803 () Bool)

(declare-fun e!3295767 () Bool)

(assert (=> b!5302803 (= e!3295767 (matchZipper!1189 lt!2166406 (t!374340 s!2326)))))

(declare-fun b!5302804 () Bool)

(assert (=> b!5302804 (= e!3295758 (validRegex!6681 (Concat!23790 (regOne!30402 r!7292) (regTwo!30402 r!7292))))))

(declare-fun b!5302805 () Bool)

(declare-fun res!2249093 () Bool)

(assert (=> b!5302805 (=> res!2249093 e!3295762)))

(declare-fun zipperDepth!62 (List!61136) Int)

(assert (=> b!5302805 (= res!2249093 (> (zipperDepth!62 lt!2166432) (zipperDepth!62 zl!343)))))

(declare-fun tp!1478508 () Bool)

(declare-fun b!5302806 () Bool)

(assert (=> b!5302806 (= e!3295773 (and (inv!80609 (h!67460 zl!343)) e!3295770 tp!1478508))))

(declare-fun b!5302807 () Bool)

(assert (=> b!5302807 (= e!3295766 (not e!3295760))))

(declare-fun res!2249068 () Bool)

(assert (=> b!5302807 (=> res!2249068 e!3295760)))

(assert (=> b!5302807 (= res!2249068 (not ((_ is Cons!61012) zl!343)))))

(declare-fun lt!2166399 () Bool)

(assert (=> b!5302807 (= lt!2166399 (matchRSpec!2048 r!7292 s!2326))))

(assert (=> b!5302807 (= lt!2166399 (matchR!7130 r!7292 s!2326))))

(declare-fun lt!2166393 () Unit!153298)

(assert (=> b!5302807 (= lt!2166393 (mainMatchTheorem!2048 r!7292 s!2326))))

(assert (=> b!5302808 (= e!3295765 e!3295772)))

(declare-fun res!2249070 () Bool)

(assert (=> b!5302808 (=> res!2249070 e!3295772)))

(assert (=> b!5302808 (= res!2249070 (or (and ((_ is ElementMatch!14945) (regOne!30402 r!7292)) (= (c!920717 (regOne!30402 r!7292)) (h!67459 s!2326))) ((_ is Union!14945) (regOne!30402 r!7292)) (not ((_ is Concat!23790) (regOne!30402 r!7292)))))))

(declare-fun lt!2166410 () Unit!153298)

(assert (=> b!5302808 (= lt!2166410 e!3295756)))

(declare-fun c!920716 () Bool)

(assert (=> b!5302808 (= c!920716 (nullable!5114 (h!67458 (exprs!4829 (h!67460 zl!343)))))))

(assert (=> b!5302808 (= (flatMap!672 z!1189 lambda!269435) (derivationStepZipperUp!317 (h!67460 zl!343) (h!67459 s!2326)))))

(declare-fun lt!2166412 () Unit!153298)

(assert (=> b!5302808 (= lt!2166412 (lemmaFlatMapOnSingletonSet!204 z!1189 (h!67460 zl!343) lambda!269435))))

(declare-fun lt!2166409 () Context!8658)

(assert (=> b!5302808 (= lt!2166403 (derivationStepZipperUp!317 lt!2166409 (h!67459 s!2326)))))

(declare-fun derivationStepZipperDown!393 (Regex!14945 Context!8658 C!30160) (InoxSet Context!8658))

(assert (=> b!5302808 (= lt!2166402 (derivationStepZipperDown!393 (h!67458 (exprs!4829 (h!67460 zl!343))) lt!2166409 (h!67459 s!2326)))))

(assert (=> b!5302808 (= lt!2166409 (Context!8659 (t!374339 (exprs!4829 (h!67460 zl!343)))))))

(declare-fun lt!2166414 () (InoxSet Context!8658))

(assert (=> b!5302808 (= lt!2166414 (derivationStepZipperUp!317 (Context!8659 (Cons!61010 (h!67458 (exprs!4829 (h!67460 zl!343))) (t!374339 (exprs!4829 (h!67460 zl!343))))) (h!67459 s!2326)))))

(declare-fun b!5302809 () Bool)

(declare-fun res!2249069 () Bool)

(assert (=> b!5302809 (=> res!2249069 e!3295768)))

(assert (=> b!5302809 (= res!2249069 (not (= (exprs!4829 (h!67460 zl!343)) (Cons!61010 (Concat!23790 (regOne!30402 (regOne!30402 r!7292)) (regTwo!30402 (regOne!30402 r!7292))) (t!374339 (exprs!4829 (h!67460 zl!343)))))))))

(declare-fun b!5302810 () Bool)

(declare-fun res!2249073 () Bool)

(assert (=> b!5302810 (=> res!2249073 e!3295760)))

(declare-fun generalisedUnion!874 (List!61134) Regex!14945)

(declare-fun unfocusZipperList!387 (List!61136) List!61134)

(assert (=> b!5302810 (= res!2249073 (not (= r!7292 (generalisedUnion!874 (unfocusZipperList!387 zl!343)))))))

(declare-fun b!5302811 () Bool)

(declare-fun e!3295771 () Bool)

(assert (=> b!5302811 (= e!3295772 e!3295771)))

(declare-fun res!2249071 () Bool)

(assert (=> b!5302811 (=> res!2249071 e!3295771)))

(declare-fun lt!2166400 () (InoxSet Context!8658))

(assert (=> b!5302811 (= res!2249071 (not (= lt!2166402 lt!2166400)))))

(assert (=> b!5302811 (= lt!2166400 ((_ map or) lt!2166389 lt!2166406))))

(assert (=> b!5302811 (= lt!2166406 (derivationStepZipperDown!393 (regTwo!30402 (regOne!30402 r!7292)) lt!2166409 (h!67459 s!2326)))))

(assert (=> b!5302811 (= lt!2166389 (derivationStepZipperDown!393 (regOne!30402 (regOne!30402 r!7292)) lt!2166404 (h!67459 s!2326)))))

(assert (=> b!5302811 (= lt!2166404 (Context!8659 lt!2166394))))

(assert (=> b!5302811 (= lt!2166394 (Cons!61010 (regTwo!30402 (regOne!30402 r!7292)) (t!374339 (exprs!4829 (h!67460 zl!343)))))))

(declare-fun b!5302812 () Bool)

(declare-fun res!2249076 () Bool)

(assert (=> b!5302812 (=> (not res!2249076) (not e!3295766))))

(declare-fun unfocusZipper!687 (List!61136) Regex!14945)

(assert (=> b!5302812 (= res!2249076 (= r!7292 (unfocusZipper!687 zl!343)))))

(declare-fun b!5302813 () Bool)

(declare-fun Unit!153301 () Unit!153298)

(assert (=> b!5302813 (= e!3295756 Unit!153301)))

(declare-fun b!5302814 () Bool)

(assert (=> b!5302814 (= e!3295776 e!3295768)))

(declare-fun res!2249092 () Bool)

(assert (=> b!5302814 (=> res!2249092 e!3295768)))

(assert (=> b!5302814 (= res!2249092 e!3295764)))

(declare-fun res!2249088 () Bool)

(assert (=> b!5302814 (=> (not res!2249088) (not e!3295764))))

(declare-fun lt!2166420 () Bool)

(assert (=> b!5302814 (= res!2249088 (not (= lt!2166420 (matchZipper!1189 lt!2166408 (t!374340 s!2326)))))))

(assert (=> b!5302814 (= (matchZipper!1189 lt!2166424 (t!374340 s!2326)) e!3295761)))

(declare-fun res!2249080 () Bool)

(assert (=> b!5302814 (=> res!2249080 e!3295761)))

(declare-fun lt!2166413 () Bool)

(assert (=> b!5302814 (= res!2249080 lt!2166413)))

(declare-fun lt!2166416 () Unit!153298)

(assert (=> b!5302814 (= lt!2166416 (lemmaZipperConcatMatchesSameAsBothZippers!182 lt!2166389 lt!2166421 (t!374340 s!2326)))))

(assert (=> b!5302814 (= (flatMap!672 lt!2166418 lambda!269435) (derivationStepZipperUp!317 lt!2166404 (h!67459 s!2326)))))

(declare-fun lt!2166396 () Unit!153298)

(assert (=> b!5302814 (= lt!2166396 (lemmaFlatMapOnSingletonSet!204 lt!2166418 lt!2166404 lambda!269435))))

(declare-fun b!5302815 () Bool)

(declare-fun tp!1478513 () Bool)

(declare-fun tp!1478504 () Bool)

(assert (=> b!5302815 (= e!3295757 (and tp!1478513 tp!1478504))))

(declare-fun b!5302816 () Bool)

(declare-fun res!2249086 () Bool)

(assert (=> b!5302816 (=> res!2249086 e!3295760)))

(assert (=> b!5302816 (= res!2249086 (not ((_ is Cons!61010) (exprs!4829 (h!67460 zl!343)))))))

(declare-fun b!5302817 () Bool)

(assert (=> b!5302817 (= e!3295771 e!3295774)))

(declare-fun res!2249091 () Bool)

(assert (=> b!5302817 (=> res!2249091 e!3295774)))

(assert (=> b!5302817 (= res!2249091 e!3295759)))

(declare-fun res!2249074 () Bool)

(assert (=> b!5302817 (=> (not res!2249074) (not e!3295759))))

(assert (=> b!5302817 (= res!2249074 (not (= lt!2166420 lt!2166413)))))

(assert (=> b!5302817 (= lt!2166420 (matchZipper!1189 lt!2166402 (t!374340 s!2326)))))

(assert (=> b!5302817 (= (matchZipper!1189 lt!2166400 (t!374340 s!2326)) e!3295767)))

(declare-fun res!2249089 () Bool)

(assert (=> b!5302817 (=> res!2249089 e!3295767)))

(assert (=> b!5302817 (= res!2249089 lt!2166413)))

(assert (=> b!5302817 (= lt!2166413 (matchZipper!1189 lt!2166389 (t!374340 s!2326)))))

(declare-fun lt!2166417 () Unit!153298)

(assert (=> b!5302817 (= lt!2166417 (lemmaZipperConcatMatchesSameAsBothZippers!182 lt!2166389 lt!2166406 (t!374340 s!2326)))))

(assert (=> b!5302818 (= e!3295760 e!3295765)))

(declare-fun res!2249085 () Bool)

(assert (=> b!5302818 (=> res!2249085 e!3295765)))

(declare-fun lt!2166390 () Bool)

(assert (=> b!5302818 (= res!2249085 (or (not (= lt!2166399 lt!2166390)) ((_ is Nil!61011) s!2326)))))

(assert (=> b!5302818 (= (Exists!2126 lambda!269433) (Exists!2126 lambda!269434))))

(declare-fun lt!2166407 () Unit!153298)

(assert (=> b!5302818 (= lt!2166407 (lemmaExistCutMatchRandMatchRSpecEquivalent!780 (regOne!30402 r!7292) (regTwo!30402 r!7292) s!2326))))

(assert (=> b!5302818 (= lt!2166390 (Exists!2126 lambda!269433))))

(assert (=> b!5302818 (= lt!2166390 (isDefined!11759 (findConcatSeparation!1470 (regOne!30402 r!7292) (regTwo!30402 r!7292) Nil!61011 s!2326 s!2326)))))

(declare-fun lt!2166427 () Unit!153298)

(assert (=> b!5302818 (= lt!2166427 (lemmaFindConcatSeparationEquivalentToExists!1234 (regOne!30402 r!7292) (regTwo!30402 r!7292) s!2326))))

(declare-fun b!5302819 () Bool)

(assert (=> b!5302819 (= e!3295769 (matchZipper!1189 lt!2166403 (t!374340 s!2326)))))

(assert (= (and start!559406 res!2249072) b!5302798))

(assert (= (and b!5302798 res!2249075) b!5302812))

(assert (= (and b!5302812 res!2249076) b!5302807))

(assert (= (and b!5302807 (not res!2249068)) b!5302793))

(assert (= (and b!5302793 (not res!2249087)) b!5302791))

(assert (= (and b!5302791 (not res!2249084)) b!5302816))

(assert (= (and b!5302816 (not res!2249086)) b!5302810))

(assert (= (and b!5302810 (not res!2249073)) b!5302797))

(assert (= (and b!5302797 (not res!2249083)) b!5302818))

(assert (= (and b!5302818 (not res!2249085)) b!5302784))

(assert (= (and b!5302784 (not res!2249082)) b!5302808))

(assert (= (and b!5302808 c!920716) b!5302795))

(assert (= (and b!5302808 (not c!920716)) b!5302813))

(assert (= (and b!5302795 (not res!2249081)) b!5302819))

(assert (= (and b!5302808 (not res!2249070)) b!5302788))

(assert (= (and b!5302788 (not res!2249067)) b!5302811))

(assert (= (and b!5302811 (not res!2249071)) b!5302817))

(assert (= (and b!5302817 (not res!2249089)) b!5302803))

(assert (= (and b!5302817 res!2249074) b!5302802))

(assert (= (and b!5302817 (not res!2249091)) b!5302786))

(assert (= (and b!5302786 (not res!2249078)) b!5302814))

(assert (= (and b!5302814 (not res!2249080)) b!5302783))

(assert (= (and b!5302814 res!2249088) b!5302799))

(assert (= (and b!5302814 (not res!2249092)) b!5302809))

(assert (= (and b!5302809 (not res!2249069)) b!5302792))

(assert (= (and b!5302792 (not res!2249077)) b!5302796))

(assert (= (and b!5302796 (not res!2249090)) b!5302805))

(assert (= (and b!5302805 (not res!2249093)) b!5302785))

(assert (= (and b!5302785 (not res!2249079)) b!5302804))

(assert (= (and start!559406 ((_ is ElementMatch!14945) r!7292)) b!5302787))

(assert (= (and start!559406 ((_ is Concat!23790) r!7292)) b!5302801))

(assert (= (and start!559406 ((_ is Star!14945) r!7292)) b!5302800))

(assert (= (and start!559406 ((_ is Union!14945) r!7292)) b!5302815))

(assert (= (and start!559406 condSetEmpty!34067) setIsEmpty!34067))

(assert (= (and start!559406 (not condSetEmpty!34067)) setNonEmpty!34067))

(assert (= setNonEmpty!34067 b!5302790))

(assert (= b!5302806 b!5302789))

(assert (= (and start!559406 ((_ is Cons!61012) zl!343)) b!5302806))

(assert (= (and start!559406 ((_ is Cons!61011) s!2326)) b!5302794))

(declare-fun m!6339978 () Bool)

(assert (=> b!5302818 m!6339978))

(declare-fun m!6339980 () Bool)

(assert (=> b!5302818 m!6339980))

(declare-fun m!6339982 () Bool)

(assert (=> b!5302818 m!6339982))

(declare-fun m!6339984 () Bool)

(assert (=> b!5302818 m!6339984))

(declare-fun m!6339986 () Bool)

(assert (=> b!5302818 m!6339986))

(assert (=> b!5302818 m!6339986))

(assert (=> b!5302818 m!6339978))

(declare-fun m!6339988 () Bool)

(assert (=> b!5302818 m!6339988))

(declare-fun m!6339990 () Bool)

(assert (=> setNonEmpty!34067 m!6339990))

(declare-fun m!6339992 () Bool)

(assert (=> b!5302788 m!6339992))

(declare-fun m!6339994 () Bool)

(assert (=> b!5302812 m!6339994))

(declare-fun m!6339996 () Bool)

(assert (=> b!5302807 m!6339996))

(declare-fun m!6339998 () Bool)

(assert (=> b!5302807 m!6339998))

(declare-fun m!6340000 () Bool)

(assert (=> b!5302807 m!6340000))

(declare-fun m!6340002 () Bool)

(assert (=> b!5302819 m!6340002))

(declare-fun m!6340004 () Bool)

(assert (=> b!5302803 m!6340004))

(declare-fun m!6340006 () Bool)

(assert (=> b!5302786 m!6340006))

(declare-fun m!6340008 () Bool)

(assert (=> b!5302786 m!6340008))

(declare-fun m!6340010 () Bool)

(assert (=> b!5302786 m!6340010))

(declare-fun m!6340012 () Bool)

(assert (=> b!5302786 m!6340012))

(declare-fun m!6340014 () Bool)

(assert (=> b!5302786 m!6340014))

(declare-fun m!6340016 () Bool)

(assert (=> b!5302786 m!6340016))

(declare-fun m!6340018 () Bool)

(assert (=> b!5302786 m!6340018))

(declare-fun m!6340020 () Bool)

(assert (=> b!5302814 m!6340020))

(declare-fun m!6340022 () Bool)

(assert (=> b!5302814 m!6340022))

(declare-fun m!6340024 () Bool)

(assert (=> b!5302814 m!6340024))

(declare-fun m!6340026 () Bool)

(assert (=> b!5302814 m!6340026))

(declare-fun m!6340028 () Bool)

(assert (=> b!5302814 m!6340028))

(assert (=> b!5302814 m!6340018))

(declare-fun m!6340030 () Bool)

(assert (=> b!5302784 m!6340030))

(declare-fun m!6340032 () Bool)

(assert (=> b!5302808 m!6340032))

(declare-fun m!6340034 () Bool)

(assert (=> b!5302808 m!6340034))

(declare-fun m!6340036 () Bool)

(assert (=> b!5302808 m!6340036))

(declare-fun m!6340038 () Bool)

(assert (=> b!5302808 m!6340038))

(declare-fun m!6340040 () Bool)

(assert (=> b!5302808 m!6340040))

(declare-fun m!6340042 () Bool)

(assert (=> b!5302808 m!6340042))

(declare-fun m!6340044 () Bool)

(assert (=> b!5302808 m!6340044))

(declare-fun m!6340046 () Bool)

(assert (=> b!5302785 m!6340046))

(declare-fun m!6340048 () Bool)

(assert (=> b!5302785 m!6340048))

(declare-fun m!6340050 () Bool)

(assert (=> b!5302785 m!6340050))

(declare-fun m!6340052 () Bool)

(assert (=> b!5302785 m!6340052))

(declare-fun m!6340054 () Bool)

(assert (=> b!5302785 m!6340054))

(declare-fun m!6340056 () Bool)

(assert (=> b!5302785 m!6340056))

(declare-fun m!6340058 () Bool)

(assert (=> b!5302785 m!6340058))

(declare-fun m!6340060 () Bool)

(assert (=> b!5302785 m!6340060))

(declare-fun m!6340062 () Bool)

(assert (=> b!5302785 m!6340062))

(declare-fun m!6340064 () Bool)

(assert (=> b!5302785 m!6340064))

(declare-fun m!6340066 () Bool)

(assert (=> b!5302785 m!6340066))

(declare-fun m!6340068 () Bool)

(assert (=> b!5302785 m!6340068))

(declare-fun m!6340070 () Bool)

(assert (=> b!5302785 m!6340070))

(declare-fun m!6340072 () Bool)

(assert (=> b!5302785 m!6340072))

(declare-fun m!6340074 () Bool)

(assert (=> b!5302785 m!6340074))

(declare-fun m!6340076 () Bool)

(assert (=> b!5302785 m!6340076))

(assert (=> b!5302785 m!6340050))

(assert (=> b!5302785 m!6340056))

(declare-fun m!6340078 () Bool)

(assert (=> b!5302785 m!6340078))

(declare-fun m!6340080 () Bool)

(assert (=> b!5302785 m!6340080))

(declare-fun m!6340082 () Bool)

(assert (=> b!5302785 m!6340082))

(assert (=> b!5302785 m!6340078))

(declare-fun m!6340084 () Bool)

(assert (=> b!5302785 m!6340084))

(assert (=> b!5302785 m!6340046))

(declare-fun m!6340086 () Bool)

(assert (=> b!5302785 m!6340086))

(declare-fun m!6340088 () Bool)

(assert (=> b!5302785 m!6340088))

(declare-fun m!6340090 () Bool)

(assert (=> b!5302785 m!6340090))

(declare-fun m!6340092 () Bool)

(assert (=> b!5302785 m!6340092))

(declare-fun m!6340094 () Bool)

(assert (=> b!5302785 m!6340094))

(declare-fun m!6340096 () Bool)

(assert (=> b!5302785 m!6340096))

(declare-fun m!6340098 () Bool)

(assert (=> b!5302810 m!6340098))

(assert (=> b!5302810 m!6340098))

(declare-fun m!6340100 () Bool)

(assert (=> b!5302810 m!6340100))

(declare-fun m!6340102 () Bool)

(assert (=> b!5302811 m!6340102))

(declare-fun m!6340104 () Bool)

(assert (=> b!5302811 m!6340104))

(declare-fun m!6340106 () Bool)

(assert (=> b!5302799 m!6340106))

(assert (=> b!5302799 m!6340106))

(declare-fun m!6340108 () Bool)

(assert (=> b!5302799 m!6340108))

(declare-fun m!6340110 () Bool)

(assert (=> b!5302792 m!6340110))

(declare-fun m!6340112 () Bool)

(assert (=> b!5302792 m!6340112))

(declare-fun m!6340114 () Bool)

(assert (=> b!5302798 m!6340114))

(declare-fun m!6340116 () Bool)

(assert (=> b!5302817 m!6340116))

(declare-fun m!6340118 () Bool)

(assert (=> b!5302817 m!6340118))

(declare-fun m!6340120 () Bool)

(assert (=> b!5302817 m!6340120))

(declare-fun m!6340122 () Bool)

(assert (=> b!5302817 m!6340122))

(assert (=> b!5302802 m!6340004))

(declare-fun m!6340124 () Bool)

(assert (=> b!5302793 m!6340124))

(declare-fun m!6340126 () Bool)

(assert (=> b!5302804 m!6340126))

(declare-fun m!6340128 () Bool)

(assert (=> b!5302795 m!6340128))

(assert (=> b!5302795 m!6340116))

(declare-fun m!6340130 () Bool)

(assert (=> b!5302795 m!6340130))

(declare-fun m!6340132 () Bool)

(assert (=> b!5302805 m!6340132))

(declare-fun m!6340134 () Bool)

(assert (=> b!5302805 m!6340134))

(declare-fun m!6340136 () Bool)

(assert (=> start!559406 m!6340136))

(declare-fun m!6340138 () Bool)

(assert (=> b!5302791 m!6340138))

(declare-fun m!6340140 () Bool)

(assert (=> b!5302796 m!6340140))

(declare-fun m!6340142 () Bool)

(assert (=> b!5302796 m!6340142))

(declare-fun m!6340144 () Bool)

(assert (=> b!5302783 m!6340144))

(declare-fun m!6340146 () Bool)

(assert (=> b!5302806 m!6340146))

(check-sat (not b!5302803) (not b!5302804) (not b!5302807) (not b!5302805) (not setNonEmpty!34067) (not b!5302800) (not b!5302793) (not b!5302811) (not b!5302801) (not start!559406) (not b!5302786) (not b!5302788) (not b!5302817) (not b!5302792) (not b!5302818) (not b!5302784) (not b!5302794) (not b!5302810) (not b!5302789) (not b!5302812) (not b!5302785) (not b!5302796) (not b!5302798) (not b!5302791) (not b!5302802) (not b!5302819) tp_is_empty!39143 (not b!5302790) (not b!5302799) (not b!5302814) (not b!5302815) (not b!5302795) (not b!5302808) (not b!5302783) (not b!5302806))
(check-sat)
