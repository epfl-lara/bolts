; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582152 () Bool)

(assert start!582152)

(declare-fun b!5617617 () Bool)

(assert (=> b!5617617 true))

(assert (=> b!5617617 true))

(declare-fun lambda!301499 () Int)

(declare-fun lambda!301498 () Int)

(assert (=> b!5617617 (not (= lambda!301499 lambda!301498))))

(assert (=> b!5617617 true))

(assert (=> b!5617617 true))

(declare-fun b!5617635 () Bool)

(assert (=> b!5617635 true))

(declare-fun b!5617601 () Bool)

(declare-fun e!3463102 () Bool)

(declare-fun e!3463122 () Bool)

(assert (=> b!5617601 (= e!3463102 e!3463122)))

(declare-fun res!2379545 () Bool)

(assert (=> b!5617601 (=> res!2379545 e!3463122)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31468 0))(
  ( (C!31469 (val!25436 Int)) )
))
(declare-datatypes ((Regex!15599 0))(
  ( (ElementMatch!15599 (c!985589 C!31468)) (Concat!24444 (regOne!31710 Regex!15599) (regTwo!31710 Regex!15599)) (EmptyExpr!15599) (Star!15599 (reg!15928 Regex!15599)) (EmptyLang!15599) (Union!15599 (regOne!31711 Regex!15599) (regTwo!31711 Regex!15599)) )
))
(declare-datatypes ((List!63096 0))(
  ( (Nil!62972) (Cons!62972 (h!69420 Regex!15599) (t!376386 List!63096)) )
))
(declare-datatypes ((Context!9966 0))(
  ( (Context!9967 (exprs!5483 List!63096)) )
))
(declare-fun lt!2258895 () (InoxSet Context!9966))

(declare-fun lt!2258898 () (InoxSet Context!9966))

(assert (=> b!5617601 (= res!2379545 (not (= lt!2258895 lt!2258898)))))

(declare-fun lt!2258911 () (InoxSet Context!9966))

(declare-fun lt!2258923 () (InoxSet Context!9966))

(assert (=> b!5617601 (= lt!2258898 ((_ map or) lt!2258911 lt!2258923))))

(declare-datatypes ((List!63097 0))(
  ( (Nil!62973) (Cons!62973 (h!69421 C!31468) (t!376387 List!63097)) )
))
(declare-fun s!2326 () List!63097)

(declare-fun lt!2258887 () Context!9966)

(declare-fun r!7292 () Regex!15599)

(declare-fun derivationStepZipperDown!941 (Regex!15599 Context!9966 C!31468) (InoxSet Context!9966))

(assert (=> b!5617601 (= lt!2258923 (derivationStepZipperDown!941 (regTwo!31711 (regOne!31710 r!7292)) lt!2258887 (h!69421 s!2326)))))

(assert (=> b!5617601 (= lt!2258911 (derivationStepZipperDown!941 (regOne!31711 (regOne!31710 r!7292)) lt!2258887 (h!69421 s!2326)))))

(declare-fun b!5617602 () Bool)

(declare-fun e!3463113 () Bool)

(declare-fun matchZipper!1737 ((InoxSet Context!9966) List!63097) Bool)

(assert (=> b!5617602 (= e!3463113 (not (matchZipper!1737 lt!2258923 (t!376387 s!2326))))))

(declare-fun b!5617603 () Bool)

(declare-fun e!3463110 () Bool)

(declare-fun lt!2258886 () (InoxSet Context!9966))

(assert (=> b!5617603 (= e!3463110 (matchZipper!1737 lt!2258886 (t!376387 s!2326)))))

(declare-fun b!5617604 () Bool)

(declare-fun e!3463117 () Bool)

(assert (=> b!5617604 (= e!3463117 (matchZipper!1737 lt!2258886 (t!376387 s!2326)))))

(declare-fun b!5617605 () Bool)

(declare-datatypes ((Unit!155884 0))(
  ( (Unit!155885) )
))
(declare-fun e!3463108 () Unit!155884)

(declare-fun Unit!155886 () Unit!155884)

(assert (=> b!5617605 (= e!3463108 Unit!155886)))

(declare-fun lt!2258916 () Unit!155884)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!624 ((InoxSet Context!9966) (InoxSet Context!9966) List!63097) Unit!155884)

(assert (=> b!5617605 (= lt!2258916 (lemmaZipperConcatMatchesSameAsBothZippers!624 lt!2258911 lt!2258886 (t!376387 s!2326)))))

(declare-fun res!2379559 () Bool)

(declare-fun lt!2258921 () Bool)

(assert (=> b!5617605 (= res!2379559 lt!2258921)))

(assert (=> b!5617605 (=> res!2379559 e!3463117)))

(assert (=> b!5617605 (= (matchZipper!1737 ((_ map or) lt!2258911 lt!2258886) (t!376387 s!2326)) e!3463117)))

(declare-fun b!5617606 () Bool)

(declare-fun e!3463109 () Bool)

(declare-fun tp!1556215 () Bool)

(assert (=> b!5617606 (= e!3463109 tp!1556215)))

(declare-fun b!5617607 () Bool)

(declare-fun res!2379549 () Bool)

(declare-fun e!3463120 () Bool)

(assert (=> b!5617607 (=> res!2379549 e!3463120)))

(declare-datatypes ((List!63098 0))(
  ( (Nil!62974) (Cons!62974 (h!69422 Context!9966) (t!376388 List!63098)) )
))
(declare-fun zl!343 () List!63098)

(declare-fun generalisedUnion!1462 (List!63096) Regex!15599)

(declare-fun unfocusZipperList!1027 (List!63098) List!63096)

(assert (=> b!5617607 (= res!2379549 (not (= r!7292 (generalisedUnion!1462 (unfocusZipperList!1027 zl!343)))))))

(declare-fun b!5617608 () Bool)

(declare-fun e!3463111 () Bool)

(declare-fun e!3463119 () Bool)

(assert (=> b!5617608 (= e!3463111 e!3463119)))

(declare-fun res!2379553 () Bool)

(assert (=> b!5617608 (=> res!2379553 e!3463119)))

(declare-fun lt!2258899 () List!63098)

(declare-fun lt!2258922 () Int)

(declare-fun zipperDepthTotal!224 (List!63098) Int)

(assert (=> b!5617608 (= res!2379553 (>= (zipperDepthTotal!224 lt!2258899) lt!2258922))))

(declare-fun lt!2258915 () Context!9966)

(assert (=> b!5617608 (= lt!2258899 (Cons!62974 lt!2258915 Nil!62974))))

(declare-fun b!5617610 () Bool)

(declare-fun Unit!155887 () Unit!155884)

(assert (=> b!5617610 (= e!3463108 Unit!155887)))

(declare-fun b!5617611 () Bool)

(declare-fun e!3463121 () Bool)

(declare-fun tp_is_empty!40451 () Bool)

(declare-fun tp!1556213 () Bool)

(assert (=> b!5617611 (= e!3463121 (and tp_is_empty!40451 tp!1556213))))

(declare-fun b!5617612 () Bool)

(declare-fun lt!2258928 () Bool)

(declare-fun lt!2258885 () Bool)

(declare-fun lt!2258913 () Bool)

(assert (=> b!5617612 (= e!3463119 (or (and (not (= lt!2258913 lt!2258928)) (not lt!2258885)) (= r!7292 (Concat!24444 (Union!15599 (regOne!31711 (regOne!31710 r!7292)) (regTwo!31711 (regOne!31710 r!7292))) (regTwo!31710 r!7292)))))))

(declare-fun lt!2258920 () Regex!15599)

(declare-fun matchRSpec!2702 (Regex!15599 List!63097) Bool)

(assert (=> b!5617612 (= lt!2258885 (matchRSpec!2702 lt!2258920 s!2326))))

(declare-fun lt!2258909 () Unit!155884)

(declare-fun mainMatchTheorem!2702 (Regex!15599 List!63097) Unit!155884)

(assert (=> b!5617612 (= lt!2258909 (mainMatchTheorem!2702 lt!2258920 s!2326))))

(declare-fun lt!2258907 () Regex!15599)

(assert (=> b!5617612 (= lt!2258928 (matchRSpec!2702 lt!2258907 s!2326))))

(declare-fun lt!2258910 () Unit!155884)

(assert (=> b!5617612 (= lt!2258910 (mainMatchTheorem!2702 lt!2258907 s!2326))))

(declare-fun lt!2258908 () (InoxSet Context!9966))

(assert (=> b!5617612 (= lt!2258885 (matchZipper!1737 lt!2258908 s!2326))))

(declare-fun matchR!7784 (Regex!15599 List!63097) Bool)

(assert (=> b!5617612 (= lt!2258885 (matchR!7784 lt!2258920 s!2326))))

(declare-fun lt!2258918 () Unit!155884)

(declare-fun theoremZipperRegexEquiv!615 ((InoxSet Context!9966) List!63098 Regex!15599 List!63097) Unit!155884)

(assert (=> b!5617612 (= lt!2258918 (theoremZipperRegexEquiv!615 lt!2258908 lt!2258899 lt!2258920 s!2326))))

(declare-fun lt!2258917 () List!63096)

(declare-fun generalisedConcat!1214 (List!63096) Regex!15599)

(assert (=> b!5617612 (= lt!2258920 (generalisedConcat!1214 lt!2258917))))

(declare-fun lt!2258893 () Bool)

(assert (=> b!5617612 (= lt!2258928 lt!2258893)))

(assert (=> b!5617612 (= lt!2258928 (matchR!7784 lt!2258907 s!2326))))

(declare-fun lt!2258902 () List!63098)

(declare-fun lt!2258896 () Unit!155884)

(declare-fun lt!2258891 () (InoxSet Context!9966))

(assert (=> b!5617612 (= lt!2258896 (theoremZipperRegexEquiv!615 lt!2258891 lt!2258902 lt!2258907 s!2326))))

(declare-fun lt!2258925 () List!63096)

(assert (=> b!5617612 (= lt!2258907 (generalisedConcat!1214 lt!2258925))))

(declare-fun b!5617613 () Bool)

(declare-fun e!3463123 () Bool)

(assert (=> b!5617613 (= e!3463123 (matchZipper!1737 lt!2258886 (t!376387 s!2326)))))

(declare-fun b!5617614 () Bool)

(declare-fun e!3463105 () Unit!155884)

(declare-fun Unit!155888 () Unit!155884)

(assert (=> b!5617614 (= e!3463105 Unit!155888)))

(declare-fun lt!2258889 () Unit!155884)

(assert (=> b!5617614 (= lt!2258889 (lemmaZipperConcatMatchesSameAsBothZippers!624 lt!2258895 lt!2258886 (t!376387 s!2326)))))

(declare-fun res!2379556 () Bool)

(assert (=> b!5617614 (= res!2379556 (matchZipper!1737 lt!2258895 (t!376387 s!2326)))))

(assert (=> b!5617614 (=> res!2379556 e!3463123)))

(assert (=> b!5617614 (= (matchZipper!1737 ((_ map or) lt!2258895 lt!2258886) (t!376387 s!2326)) e!3463123)))

(declare-fun b!5617615 () Bool)

(declare-fun res!2379558 () Bool)

(assert (=> b!5617615 (=> res!2379558 e!3463120)))

(get-info :version)

(assert (=> b!5617615 (= res!2379558 (or ((_ is EmptyExpr!15599) r!7292) ((_ is EmptyLang!15599) r!7292) ((_ is ElementMatch!15599) r!7292) ((_ is Union!15599) r!7292) (not ((_ is Concat!24444) r!7292))))))

(declare-fun b!5617616 () Bool)

(declare-fun e!3463107 () Unit!155884)

(declare-fun Unit!155889 () Unit!155884)

(assert (=> b!5617616 (= e!3463107 Unit!155889)))

(declare-fun e!3463116 () Bool)

(assert (=> b!5617617 (= e!3463120 e!3463116)))

(declare-fun res!2379568 () Bool)

(assert (=> b!5617617 (=> res!2379568 e!3463116)))

(declare-fun lt!2258892 () Bool)

(declare-fun lt!2258904 () Bool)

(assert (=> b!5617617 (= res!2379568 (or (not (= lt!2258892 lt!2258904)) ((_ is Nil!62973) s!2326)))))

(declare-fun Exists!2699 (Int) Bool)

(assert (=> b!5617617 (= (Exists!2699 lambda!301498) (Exists!2699 lambda!301499))))

(declare-fun lt!2258894 () Unit!155884)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1328 (Regex!15599 Regex!15599 List!63097) Unit!155884)

(assert (=> b!5617617 (= lt!2258894 (lemmaExistCutMatchRandMatchRSpecEquivalent!1328 (regOne!31710 r!7292) (regTwo!31710 r!7292) s!2326))))

(assert (=> b!5617617 (= lt!2258904 (Exists!2699 lambda!301498))))

(declare-datatypes ((tuple2!65392 0))(
  ( (tuple2!65393 (_1!35999 List!63097) (_2!35999 List!63097)) )
))
(declare-datatypes ((Option!15608 0))(
  ( (None!15607) (Some!15607 (v!51652 tuple2!65392)) )
))
(declare-fun isDefined!12311 (Option!15608) Bool)

(declare-fun findConcatSeparation!2022 (Regex!15599 Regex!15599 List!63097 List!63097 List!63097) Option!15608)

(assert (=> b!5617617 (= lt!2258904 (isDefined!12311 (findConcatSeparation!2022 (regOne!31710 r!7292) (regTwo!31710 r!7292) Nil!62973 s!2326 s!2326)))))

(declare-fun lt!2258903 () Unit!155884)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1786 (Regex!15599 Regex!15599 List!63097) Unit!155884)

(assert (=> b!5617617 (= lt!2258903 (lemmaFindConcatSeparationEquivalentToExists!1786 (regOne!31710 r!7292) (regTwo!31710 r!7292) s!2326))))

(declare-fun b!5617618 () Bool)

(declare-fun res!2379548 () Bool)

(assert (=> b!5617618 (=> res!2379548 e!3463120)))

(assert (=> b!5617618 (= res!2379548 (not ((_ is Cons!62972) (exprs!5483 (h!69422 zl!343)))))))

(declare-fun b!5617619 () Bool)

(declare-fun res!2379564 () Bool)

(declare-fun e!3463114 () Bool)

(assert (=> b!5617619 (=> res!2379564 e!3463114)))

(declare-fun lt!2258930 () Regex!15599)

(assert (=> b!5617619 (= res!2379564 (or (not (= lt!2258930 r!7292)) (not (= (exprs!5483 (h!69422 zl!343)) (Cons!62972 (regOne!31710 r!7292) (t!376386 (exprs!5483 (h!69422 zl!343))))))))))

(declare-fun setIsEmpty!37466 () Bool)

(declare-fun setRes!37466 () Bool)

(assert (=> setIsEmpty!37466 setRes!37466))

(declare-fun b!5617620 () Bool)

(declare-fun e!3463124 () Bool)

(assert (=> b!5617620 (= e!3463124 (matchZipper!1737 lt!2258908 s!2326))))

(declare-fun setElem!37466 () Context!9966)

(declare-fun tp!1556207 () Bool)

(declare-fun setNonEmpty!37466 () Bool)

(declare-fun inv!82244 (Context!9966) Bool)

(assert (=> setNonEmpty!37466 (= setRes!37466 (and tp!1556207 (inv!82244 setElem!37466) e!3463109))))

(declare-fun z!1189 () (InoxSet Context!9966))

(declare-fun setRest!37466 () (InoxSet Context!9966))

(assert (=> setNonEmpty!37466 (= z!1189 ((_ map or) (store ((as const (Array Context!9966 Bool)) false) setElem!37466 true) setRest!37466))))

(declare-fun b!5617621 () Bool)

(declare-fun res!2379560 () Bool)

(assert (=> b!5617621 (=> res!2379560 e!3463116)))

(declare-fun isEmpty!34798 (List!63096) Bool)

(assert (=> b!5617621 (= res!2379560 (isEmpty!34798 (t!376386 (exprs!5483 (h!69422 zl!343)))))))

(declare-fun b!5617622 () Bool)

(declare-fun e!3463112 () Bool)

(assert (=> b!5617622 (= e!3463112 tp_is_empty!40451)))

(declare-fun b!5617623 () Bool)

(declare-fun tp!1556210 () Bool)

(declare-fun tp!1556214 () Bool)

(assert (=> b!5617623 (= e!3463112 (and tp!1556210 tp!1556214))))

(declare-fun e!3463103 () Bool)

(declare-fun b!5617624 () Bool)

(declare-fun tp!1556206 () Bool)

(declare-fun e!3463115 () Bool)

(assert (=> b!5617624 (= e!3463115 (and (inv!82244 (h!69422 zl!343)) e!3463103 tp!1556206))))

(declare-fun b!5617625 () Bool)

(declare-fun res!2379566 () Bool)

(declare-fun e!3463104 () Bool)

(assert (=> b!5617625 (=> (not res!2379566) (not e!3463104))))

(declare-fun toList!9383 ((InoxSet Context!9966)) List!63098)

(assert (=> b!5617625 (= res!2379566 (= (toList!9383 z!1189) zl!343))))

(declare-fun b!5617626 () Bool)

(declare-fun e!3463106 () Bool)

(assert (=> b!5617626 (= e!3463122 e!3463106)))

(declare-fun res!2379562 () Bool)

(assert (=> b!5617626 (=> res!2379562 e!3463106)))

(assert (=> b!5617626 (= res!2379562 e!3463113)))

(declare-fun res!2379552 () Bool)

(assert (=> b!5617626 (=> (not res!2379552) (not e!3463113))))

(assert (=> b!5617626 (= res!2379552 (not (= (matchZipper!1737 lt!2258895 (t!376387 s!2326)) lt!2258921)))))

(declare-fun e!3463118 () Bool)

(assert (=> b!5617626 (= (matchZipper!1737 lt!2258898 (t!376387 s!2326)) e!3463118)))

(declare-fun res!2379565 () Bool)

(assert (=> b!5617626 (=> res!2379565 e!3463118)))

(assert (=> b!5617626 (= res!2379565 lt!2258921)))

(assert (=> b!5617626 (= lt!2258921 (matchZipper!1737 lt!2258911 (t!376387 s!2326)))))

(declare-fun lt!2258924 () Unit!155884)

(assert (=> b!5617626 (= lt!2258924 (lemmaZipperConcatMatchesSameAsBothZippers!624 lt!2258911 lt!2258923 (t!376387 s!2326)))))

(declare-fun b!5617627 () Bool)

(declare-fun Unit!155890 () Unit!155884)

(assert (=> b!5617627 (= e!3463105 Unit!155890)))

(declare-fun res!2379546 () Bool)

(assert (=> start!582152 (=> (not res!2379546) (not e!3463104))))

(declare-fun validRegex!7335 (Regex!15599) Bool)

(assert (=> start!582152 (= res!2379546 (validRegex!7335 r!7292))))

(assert (=> start!582152 e!3463104))

(assert (=> start!582152 e!3463112))

(declare-fun condSetEmpty!37466 () Bool)

(assert (=> start!582152 (= condSetEmpty!37466 (= z!1189 ((as const (Array Context!9966 Bool)) false)))))

(assert (=> start!582152 setRes!37466))

(assert (=> start!582152 e!3463115))

(assert (=> start!582152 e!3463121))

(declare-fun b!5617609 () Bool)

(declare-fun res!2379547 () Bool)

(assert (=> b!5617609 (=> res!2379547 e!3463120)))

(declare-fun isEmpty!34799 (List!63098) Bool)

(assert (=> b!5617609 (= res!2379547 (not (isEmpty!34799 (t!376388 zl!343))))))

(declare-fun b!5617628 () Bool)

(declare-fun e!3463101 () Bool)

(assert (=> b!5617628 (= e!3463101 (not e!3463120))))

(declare-fun res!2379563 () Bool)

(assert (=> b!5617628 (=> res!2379563 e!3463120)))

(assert (=> b!5617628 (= res!2379563 (not ((_ is Cons!62974) zl!343)))))

(assert (=> b!5617628 (= lt!2258892 (matchRSpec!2702 r!7292 s!2326))))

(assert (=> b!5617628 (= lt!2258892 (matchR!7784 r!7292 s!2326))))

(declare-fun lt!2258901 () Unit!155884)

(assert (=> b!5617628 (= lt!2258901 (mainMatchTheorem!2702 r!7292 s!2326))))

(declare-fun b!5617629 () Bool)

(declare-fun tp!1556208 () Bool)

(assert (=> b!5617629 (= e!3463112 tp!1556208)))

(declare-fun b!5617630 () Bool)

(declare-fun tp!1556209 () Bool)

(declare-fun tp!1556211 () Bool)

(assert (=> b!5617630 (= e!3463112 (and tp!1556209 tp!1556211))))

(declare-fun b!5617631 () Bool)

(assert (=> b!5617631 (= e!3463114 e!3463111)))

(declare-fun res!2379557 () Bool)

(assert (=> b!5617631 (=> res!2379557 e!3463111)))

(declare-fun lt!2258906 () Int)

(assert (=> b!5617631 (= res!2379557 (>= lt!2258906 lt!2258922))))

(assert (=> b!5617631 (= lt!2258922 (zipperDepthTotal!224 zl!343))))

(assert (=> b!5617631 (= lt!2258906 (zipperDepthTotal!224 lt!2258902))))

(declare-fun lt!2258919 () Context!9966)

(assert (=> b!5617631 (= lt!2258902 (Cons!62974 lt!2258919 Nil!62974))))

(declare-fun b!5617632 () Bool)

(declare-fun tp!1556212 () Bool)

(assert (=> b!5617632 (= e!3463103 tp!1556212)))

(declare-fun b!5617633 () Bool)

(assert (=> b!5617633 (= e!3463104 e!3463101)))

(declare-fun res!2379561 () Bool)

(assert (=> b!5617633 (=> (not res!2379561) (not e!3463101))))

(assert (=> b!5617633 (= res!2379561 (= r!7292 lt!2258930))))

(declare-fun unfocusZipper!1341 (List!63098) Regex!15599)

(assert (=> b!5617633 (= lt!2258930 (unfocusZipper!1341 zl!343))))

(declare-fun b!5617634 () Bool)

(declare-fun Unit!155891 () Unit!155884)

(assert (=> b!5617634 (= e!3463107 Unit!155891)))

(declare-fun lt!2258929 () Unit!155884)

(assert (=> b!5617634 (= lt!2258929 (lemmaZipperConcatMatchesSameAsBothZippers!624 lt!2258923 lt!2258886 (t!376387 s!2326)))))

(declare-fun res!2379567 () Bool)

(assert (=> b!5617634 (= res!2379567 (matchZipper!1737 lt!2258923 (t!376387 s!2326)))))

(assert (=> b!5617634 (=> res!2379567 e!3463110)))

(assert (=> b!5617634 (= (matchZipper!1737 ((_ map or) lt!2258923 lt!2258886) (t!376387 s!2326)) e!3463110)))

(assert (=> b!5617635 (= e!3463116 e!3463102)))

(declare-fun res!2379555 () Bool)

(assert (=> b!5617635 (=> res!2379555 e!3463102)))

(assert (=> b!5617635 (= res!2379555 (or (and ((_ is ElementMatch!15599) (regOne!31710 r!7292)) (= (c!985589 (regOne!31710 r!7292)) (h!69421 s!2326))) (not ((_ is Union!15599) (regOne!31710 r!7292)))))))

(declare-fun lt!2258905 () Unit!155884)

(assert (=> b!5617635 (= lt!2258905 e!3463105)))

(declare-fun c!985587 () Bool)

(declare-fun nullable!5631 (Regex!15599) Bool)

(assert (=> b!5617635 (= c!985587 (nullable!5631 (h!69420 (exprs!5483 (h!69422 zl!343)))))))

(declare-fun lambda!301500 () Int)

(declare-fun flatMap!1212 ((InoxSet Context!9966) Int) (InoxSet Context!9966))

(declare-fun derivationStepZipperUp!867 (Context!9966 C!31468) (InoxSet Context!9966))

(assert (=> b!5617635 (= (flatMap!1212 z!1189 lambda!301500) (derivationStepZipperUp!867 (h!69422 zl!343) (h!69421 s!2326)))))

(declare-fun lt!2258900 () Unit!155884)

(declare-fun lemmaFlatMapOnSingletonSet!744 ((InoxSet Context!9966) Context!9966 Int) Unit!155884)

(assert (=> b!5617635 (= lt!2258900 (lemmaFlatMapOnSingletonSet!744 z!1189 (h!69422 zl!343) lambda!301500))))

(assert (=> b!5617635 (= lt!2258886 (derivationStepZipperUp!867 lt!2258887 (h!69421 s!2326)))))

(assert (=> b!5617635 (= lt!2258895 (derivationStepZipperDown!941 (h!69420 (exprs!5483 (h!69422 zl!343))) lt!2258887 (h!69421 s!2326)))))

(assert (=> b!5617635 (= lt!2258887 (Context!9967 (t!376386 (exprs!5483 (h!69422 zl!343)))))))

(declare-fun lt!2258888 () (InoxSet Context!9966))

(assert (=> b!5617635 (= lt!2258888 (derivationStepZipperUp!867 (Context!9967 (Cons!62972 (h!69420 (exprs!5483 (h!69422 zl!343))) (t!376386 (exprs!5483 (h!69422 zl!343))))) (h!69421 s!2326)))))

(declare-fun b!5617636 () Bool)

(assert (=> b!5617636 (= e!3463118 (matchZipper!1737 lt!2258923 (t!376387 s!2326)))))

(declare-fun b!5617637 () Bool)

(declare-fun res!2379550 () Bool)

(assert (=> b!5617637 (=> res!2379550 e!3463120)))

(assert (=> b!5617637 (= res!2379550 (not (= r!7292 (generalisedConcat!1214 (exprs!5483 (h!69422 zl!343))))))))

(declare-fun b!5617638 () Bool)

(assert (=> b!5617638 (= e!3463106 e!3463114)))

(declare-fun res!2379551 () Bool)

(assert (=> b!5617638 (=> res!2379551 e!3463114)))

(assert (=> b!5617638 (= res!2379551 (not (= lt!2258913 e!3463124)))))

(declare-fun res!2379554 () Bool)

(assert (=> b!5617638 (=> res!2379554 e!3463124)))

(assert (=> b!5617638 (= res!2379554 lt!2258893)))

(assert (=> b!5617638 (= lt!2258913 (matchZipper!1737 z!1189 s!2326))))

(assert (=> b!5617638 (= lt!2258893 (matchZipper!1737 lt!2258891 s!2326))))

(declare-fun lt!2258890 () Unit!155884)

(assert (=> b!5617638 (= lt!2258890 e!3463107)))

(declare-fun c!985588 () Bool)

(assert (=> b!5617638 (= c!985588 (nullable!5631 (regTwo!31711 (regOne!31710 r!7292))))))

(assert (=> b!5617638 (= (flatMap!1212 lt!2258908 lambda!301500) (derivationStepZipperUp!867 lt!2258915 (h!69421 s!2326)))))

(declare-fun lt!2258912 () Unit!155884)

(assert (=> b!5617638 (= lt!2258912 (lemmaFlatMapOnSingletonSet!744 lt!2258908 lt!2258915 lambda!301500))))

(declare-fun lt!2258926 () (InoxSet Context!9966))

(assert (=> b!5617638 (= lt!2258926 (derivationStepZipperUp!867 lt!2258915 (h!69421 s!2326)))))

(declare-fun lt!2258927 () Unit!155884)

(assert (=> b!5617638 (= lt!2258927 e!3463108)))

(declare-fun c!985586 () Bool)

(assert (=> b!5617638 (= c!985586 (nullable!5631 (regOne!31711 (regOne!31710 r!7292))))))

(assert (=> b!5617638 (= (flatMap!1212 lt!2258891 lambda!301500) (derivationStepZipperUp!867 lt!2258919 (h!69421 s!2326)))))

(declare-fun lt!2258897 () Unit!155884)

(assert (=> b!5617638 (= lt!2258897 (lemmaFlatMapOnSingletonSet!744 lt!2258891 lt!2258919 lambda!301500))))

(declare-fun lt!2258914 () (InoxSet Context!9966))

(assert (=> b!5617638 (= lt!2258914 (derivationStepZipperUp!867 lt!2258919 (h!69421 s!2326)))))

(assert (=> b!5617638 (= lt!2258908 (store ((as const (Array Context!9966 Bool)) false) lt!2258915 true))))

(assert (=> b!5617638 (= lt!2258915 (Context!9967 lt!2258917))))

(assert (=> b!5617638 (= lt!2258917 (Cons!62972 (regTwo!31711 (regOne!31710 r!7292)) (t!376386 (exprs!5483 (h!69422 zl!343)))))))

(assert (=> b!5617638 (= lt!2258891 (store ((as const (Array Context!9966 Bool)) false) lt!2258919 true))))

(assert (=> b!5617638 (= lt!2258919 (Context!9967 lt!2258925))))

(assert (=> b!5617638 (= lt!2258925 (Cons!62972 (regOne!31711 (regOne!31710 r!7292)) (t!376386 (exprs!5483 (h!69422 zl!343)))))))

(assert (= (and start!582152 res!2379546) b!5617625))

(assert (= (and b!5617625 res!2379566) b!5617633))

(assert (= (and b!5617633 res!2379561) b!5617628))

(assert (= (and b!5617628 (not res!2379563)) b!5617609))

(assert (= (and b!5617609 (not res!2379547)) b!5617637))

(assert (= (and b!5617637 (not res!2379550)) b!5617618))

(assert (= (and b!5617618 (not res!2379548)) b!5617607))

(assert (= (and b!5617607 (not res!2379549)) b!5617615))

(assert (= (and b!5617615 (not res!2379558)) b!5617617))

(assert (= (and b!5617617 (not res!2379568)) b!5617621))

(assert (= (and b!5617621 (not res!2379560)) b!5617635))

(assert (= (and b!5617635 c!985587) b!5617614))

(assert (= (and b!5617635 (not c!985587)) b!5617627))

(assert (= (and b!5617614 (not res!2379556)) b!5617613))

(assert (= (and b!5617635 (not res!2379555)) b!5617601))

(assert (= (and b!5617601 (not res!2379545)) b!5617626))

(assert (= (and b!5617626 (not res!2379565)) b!5617636))

(assert (= (and b!5617626 res!2379552) b!5617602))

(assert (= (and b!5617626 (not res!2379562)) b!5617638))

(assert (= (and b!5617638 c!985586) b!5617605))

(assert (= (and b!5617638 (not c!985586)) b!5617610))

(assert (= (and b!5617605 (not res!2379559)) b!5617604))

(assert (= (and b!5617638 c!985588) b!5617634))

(assert (= (and b!5617638 (not c!985588)) b!5617616))

(assert (= (and b!5617634 (not res!2379567)) b!5617603))

(assert (= (and b!5617638 (not res!2379554)) b!5617620))

(assert (= (and b!5617638 (not res!2379551)) b!5617619))

(assert (= (and b!5617619 (not res!2379564)) b!5617631))

(assert (= (and b!5617631 (not res!2379557)) b!5617608))

(assert (= (and b!5617608 (not res!2379553)) b!5617612))

(assert (= (and start!582152 ((_ is ElementMatch!15599) r!7292)) b!5617622))

(assert (= (and start!582152 ((_ is Concat!24444) r!7292)) b!5617623))

(assert (= (and start!582152 ((_ is Star!15599) r!7292)) b!5617629))

(assert (= (and start!582152 ((_ is Union!15599) r!7292)) b!5617630))

(assert (= (and start!582152 condSetEmpty!37466) setIsEmpty!37466))

(assert (= (and start!582152 (not condSetEmpty!37466)) setNonEmpty!37466))

(assert (= setNonEmpty!37466 b!5617606))

(assert (= b!5617624 b!5617632))

(assert (= (and start!582152 ((_ is Cons!62974) zl!343)) b!5617624))

(assert (= (and start!582152 ((_ is Cons!62973) s!2326)) b!5617611))

(declare-fun m!6591452 () Bool)

(assert (=> b!5617624 m!6591452))

(declare-fun m!6591454 () Bool)

(assert (=> start!582152 m!6591454))

(declare-fun m!6591456 () Bool)

(assert (=> b!5617608 m!6591456))

(declare-fun m!6591458 () Bool)

(assert (=> b!5617631 m!6591458))

(declare-fun m!6591460 () Bool)

(assert (=> b!5617631 m!6591460))

(declare-fun m!6591462 () Bool)

(assert (=> b!5617634 m!6591462))

(declare-fun m!6591464 () Bool)

(assert (=> b!5617634 m!6591464))

(declare-fun m!6591466 () Bool)

(assert (=> b!5617634 m!6591466))

(declare-fun m!6591468 () Bool)

(assert (=> b!5617637 m!6591468))

(declare-fun m!6591470 () Bool)

(assert (=> b!5617628 m!6591470))

(declare-fun m!6591472 () Bool)

(assert (=> b!5617628 m!6591472))

(declare-fun m!6591474 () Bool)

(assert (=> b!5617628 m!6591474))

(declare-fun m!6591476 () Bool)

(assert (=> b!5617603 m!6591476))

(declare-fun m!6591478 () Bool)

(assert (=> b!5617614 m!6591478))

(declare-fun m!6591480 () Bool)

(assert (=> b!5617614 m!6591480))

(declare-fun m!6591482 () Bool)

(assert (=> b!5617614 m!6591482))

(assert (=> b!5617613 m!6591476))

(declare-fun m!6591484 () Bool)

(assert (=> b!5617635 m!6591484))

(declare-fun m!6591486 () Bool)

(assert (=> b!5617635 m!6591486))

(declare-fun m!6591488 () Bool)

(assert (=> b!5617635 m!6591488))

(declare-fun m!6591490 () Bool)

(assert (=> b!5617635 m!6591490))

(declare-fun m!6591492 () Bool)

(assert (=> b!5617635 m!6591492))

(declare-fun m!6591494 () Bool)

(assert (=> b!5617635 m!6591494))

(declare-fun m!6591496 () Bool)

(assert (=> b!5617635 m!6591496))

(assert (=> b!5617626 m!6591480))

(declare-fun m!6591498 () Bool)

(assert (=> b!5617626 m!6591498))

(declare-fun m!6591500 () Bool)

(assert (=> b!5617626 m!6591500))

(declare-fun m!6591502 () Bool)

(assert (=> b!5617626 m!6591502))

(declare-fun m!6591504 () Bool)

(assert (=> b!5617617 m!6591504))

(declare-fun m!6591506 () Bool)

(assert (=> b!5617617 m!6591506))

(declare-fun m!6591508 () Bool)

(assert (=> b!5617617 m!6591508))

(assert (=> b!5617617 m!6591504))

(declare-fun m!6591510 () Bool)

(assert (=> b!5617617 m!6591510))

(declare-fun m!6591512 () Bool)

(assert (=> b!5617617 m!6591512))

(assert (=> b!5617617 m!6591506))

(declare-fun m!6591514 () Bool)

(assert (=> b!5617617 m!6591514))

(declare-fun m!6591516 () Bool)

(assert (=> b!5617609 m!6591516))

(declare-fun m!6591518 () Bool)

(assert (=> b!5617638 m!6591518))

(declare-fun m!6591520 () Bool)

(assert (=> b!5617638 m!6591520))

(declare-fun m!6591522 () Bool)

(assert (=> b!5617638 m!6591522))

(declare-fun m!6591524 () Bool)

(assert (=> b!5617638 m!6591524))

(declare-fun m!6591526 () Bool)

(assert (=> b!5617638 m!6591526))

(declare-fun m!6591528 () Bool)

(assert (=> b!5617638 m!6591528))

(declare-fun m!6591530 () Bool)

(assert (=> b!5617638 m!6591530))

(declare-fun m!6591532 () Bool)

(assert (=> b!5617638 m!6591532))

(declare-fun m!6591534 () Bool)

(assert (=> b!5617638 m!6591534))

(declare-fun m!6591536 () Bool)

(assert (=> b!5617638 m!6591536))

(declare-fun m!6591538 () Bool)

(assert (=> b!5617638 m!6591538))

(declare-fun m!6591540 () Bool)

(assert (=> b!5617638 m!6591540))

(declare-fun m!6591542 () Bool)

(assert (=> b!5617605 m!6591542))

(declare-fun m!6591544 () Bool)

(assert (=> b!5617605 m!6591544))

(declare-fun m!6591546 () Bool)

(assert (=> b!5617607 m!6591546))

(assert (=> b!5617607 m!6591546))

(declare-fun m!6591548 () Bool)

(assert (=> b!5617607 m!6591548))

(declare-fun m!6591550 () Bool)

(assert (=> setNonEmpty!37466 m!6591550))

(declare-fun m!6591552 () Bool)

(assert (=> b!5617612 m!6591552))

(declare-fun m!6591554 () Bool)

(assert (=> b!5617612 m!6591554))

(declare-fun m!6591556 () Bool)

(assert (=> b!5617612 m!6591556))

(declare-fun m!6591558 () Bool)

(assert (=> b!5617612 m!6591558))

(declare-fun m!6591560 () Bool)

(assert (=> b!5617612 m!6591560))

(declare-fun m!6591562 () Bool)

(assert (=> b!5617612 m!6591562))

(declare-fun m!6591564 () Bool)

(assert (=> b!5617612 m!6591564))

(declare-fun m!6591566 () Bool)

(assert (=> b!5617612 m!6591566))

(declare-fun m!6591568 () Bool)

(assert (=> b!5617612 m!6591568))

(declare-fun m!6591570 () Bool)

(assert (=> b!5617612 m!6591570))

(declare-fun m!6591572 () Bool)

(assert (=> b!5617612 m!6591572))

(assert (=> b!5617604 m!6591476))

(declare-fun m!6591574 () Bool)

(assert (=> b!5617601 m!6591574))

(declare-fun m!6591576 () Bool)

(assert (=> b!5617601 m!6591576))

(assert (=> b!5617636 m!6591464))

(declare-fun m!6591578 () Bool)

(assert (=> b!5617633 m!6591578))

(assert (=> b!5617602 m!6591464))

(declare-fun m!6591580 () Bool)

(assert (=> b!5617621 m!6591580))

(declare-fun m!6591582 () Bool)

(assert (=> b!5617625 m!6591582))

(assert (=> b!5617620 m!6591560))

(check-sat (not b!5617609) (not b!5617629) tp_is_empty!40451 (not b!5617626) (not b!5617631) (not b!5617633) (not b!5617636) (not start!582152) (not setNonEmpty!37466) (not b!5617632) (not b!5617628) (not b!5617617) (not b!5617601) (not b!5617608) (not b!5617620) (not b!5617605) (not b!5617611) (not b!5617607) (not b!5617635) (not b!5617623) (not b!5617638) (not b!5617603) (not b!5617637) (not b!5617602) (not b!5617634) (not b!5617613) (not b!5617614) (not b!5617625) (not b!5617624) (not b!5617606) (not b!5617630) (not b!5617604) (not b!5617621) (not b!5617612))
(check-sat)
