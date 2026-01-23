; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589780 () Bool)

(assert start!589780)

(declare-fun b!5730726 () Bool)

(assert (=> b!5730726 true))

(assert (=> b!5730726 true))

(declare-fun lambda!310118 () Int)

(declare-fun lambda!310117 () Int)

(assert (=> b!5730726 (not (= lambda!310118 lambda!310117))))

(assert (=> b!5730726 true))

(assert (=> b!5730726 true))

(declare-fun b!5730751 () Bool)

(assert (=> b!5730751 true))

(declare-fun b!5730753 () Bool)

(assert (=> b!5730753 true))

(declare-fun b!5730715 () Bool)

(declare-fun res!2419636 () Bool)

(declare-fun e!3523408 () Bool)

(assert (=> b!5730715 (=> res!2419636 e!3523408)))

(declare-datatypes ((C!31740 0))(
  ( (C!31741 (val!25572 Int)) )
))
(declare-datatypes ((Regex!15735 0))(
  ( (ElementMatch!15735 (c!1011145 C!31740)) (Concat!24580 (regOne!31982 Regex!15735) (regTwo!31982 Regex!15735)) (EmptyExpr!15735) (Star!15735 (reg!16064 Regex!15735)) (EmptyLang!15735) (Union!15735 (regOne!31983 Regex!15735) (regTwo!31983 Regex!15735)) )
))
(declare-fun r!7292 () Regex!15735)

(get-info :version)

(assert (=> b!5730715 (= res!2419636 (or ((_ is Concat!24580) (regOne!31982 r!7292)) (not ((_ is Star!15735) (regOne!31982 r!7292)))))))

(declare-fun b!5730716 () Bool)

(declare-fun e!3523391 () Bool)

(declare-fun nullable!5767 (Regex!15735) Bool)

(assert (=> b!5730716 (= e!3523391 (nullable!5767 (regOne!31982 (regOne!31982 r!7292))))))

(declare-fun b!5730717 () Bool)

(declare-fun e!3523405 () Bool)

(declare-fun tp!1586219 () Bool)

(assert (=> b!5730717 (= e!3523405 tp!1586219)))

(declare-fun b!5730718 () Bool)

(declare-fun e!3523409 () Bool)

(declare-fun e!3523398 () Bool)

(assert (=> b!5730718 (= e!3523409 e!3523398)))

(declare-fun res!2419632 () Bool)

(assert (=> b!5730718 (=> res!2419632 e!3523398)))

(declare-datatypes ((List!63504 0))(
  ( (Nil!63380) (Cons!63380 (h!69828 Regex!15735) (t!376832 List!63504)) )
))
(declare-datatypes ((Context!10238 0))(
  ( (Context!10239 (exprs!5619 List!63504)) )
))
(declare-datatypes ((List!63505 0))(
  ( (Nil!63381) (Cons!63381 (h!69829 Context!10238) (t!376833 List!63505)) )
))
(declare-fun lt!2281179 () List!63505)

(declare-fun unfocusZipper!1477 (List!63505) Regex!15735)

(assert (=> b!5730718 (= res!2419632 (not (= (unfocusZipper!1477 lt!2281179) (reg!16064 (regOne!31982 r!7292)))))))

(declare-fun lt!2281193 () Context!10238)

(assert (=> b!5730718 (= lt!2281179 (Cons!63381 lt!2281193 Nil!63381))))

(declare-datatypes ((List!63506 0))(
  ( (Nil!63382) (Cons!63382 (h!69830 C!31740) (t!376834 List!63506)) )
))
(declare-fun s!2326 () List!63506)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2281173 () (InoxSet Context!10238))

(declare-fun lt!2281186 () Context!10238)

(declare-fun lambda!310119 () Int)

(declare-fun flatMap!1348 ((InoxSet Context!10238) Int) (InoxSet Context!10238))

(declare-fun derivationStepZipperUp!1003 (Context!10238 C!31740) (InoxSet Context!10238))

(assert (=> b!5730718 (= (flatMap!1348 lt!2281173 lambda!310119) (derivationStepZipperUp!1003 lt!2281186 (h!69830 s!2326)))))

(declare-datatypes ((Unit!156472 0))(
  ( (Unit!156473) )
))
(declare-fun lt!2281172 () Unit!156472)

(declare-fun lemmaFlatMapOnSingletonSet!880 ((InoxSet Context!10238) Context!10238 Int) Unit!156472)

(assert (=> b!5730718 (= lt!2281172 (lemmaFlatMapOnSingletonSet!880 lt!2281173 lt!2281186 lambda!310119))))

(declare-fun lt!2281205 () (InoxSet Context!10238))

(assert (=> b!5730718 (= (flatMap!1348 lt!2281205 lambda!310119) (derivationStepZipperUp!1003 lt!2281193 (h!69830 s!2326)))))

(declare-fun lt!2281210 () Unit!156472)

(assert (=> b!5730718 (= lt!2281210 (lemmaFlatMapOnSingletonSet!880 lt!2281205 lt!2281193 lambda!310119))))

(declare-fun lt!2281219 () (InoxSet Context!10238))

(assert (=> b!5730718 (= lt!2281219 (derivationStepZipperUp!1003 lt!2281186 (h!69830 s!2326)))))

(declare-fun lt!2281181 () (InoxSet Context!10238))

(assert (=> b!5730718 (= lt!2281181 (derivationStepZipperUp!1003 lt!2281193 (h!69830 s!2326)))))

(assert (=> b!5730718 (= lt!2281173 (store ((as const (Array Context!10238 Bool)) false) lt!2281186 true))))

(assert (=> b!5730718 (= lt!2281205 (store ((as const (Array Context!10238 Bool)) false) lt!2281193 true))))

(declare-fun lt!2281220 () List!63504)

(assert (=> b!5730718 (= lt!2281193 (Context!10239 lt!2281220))))

(assert (=> b!5730718 (= lt!2281220 (Cons!63380 (reg!16064 (regOne!31982 r!7292)) Nil!63380))))

(declare-fun tp!1586217 () Bool)

(declare-fun b!5730719 () Bool)

(declare-fun e!3523402 () Bool)

(declare-fun e!3523394 () Bool)

(declare-fun zl!343 () List!63505)

(declare-fun inv!82584 (Context!10238) Bool)

(assert (=> b!5730719 (= e!3523402 (and (inv!82584 (h!69829 zl!343)) e!3523394 tp!1586217))))

(declare-fun b!5730720 () Bool)

(declare-fun tp!1586220 () Bool)

(declare-fun tp!1586221 () Bool)

(assert (=> b!5730720 (= e!3523405 (and tp!1586220 tp!1586221))))

(declare-fun b!5730721 () Bool)

(declare-fun e!3523385 () Bool)

(declare-fun lt!2281218 () Bool)

(assert (=> b!5730721 (= e!3523385 lt!2281218)))

(declare-fun res!2419635 () Bool)

(declare-fun e!3523392 () Bool)

(assert (=> start!589780 (=> (not res!2419635) (not e!3523392))))

(declare-fun validRegex!7471 (Regex!15735) Bool)

(assert (=> start!589780 (= res!2419635 (validRegex!7471 r!7292))))

(assert (=> start!589780 e!3523392))

(assert (=> start!589780 e!3523405))

(declare-fun condSetEmpty!38449 () Bool)

(declare-fun z!1189 () (InoxSet Context!10238))

(assert (=> start!589780 (= condSetEmpty!38449 (= z!1189 ((as const (Array Context!10238 Bool)) false)))))

(declare-fun setRes!38449 () Bool)

(assert (=> start!589780 setRes!38449))

(assert (=> start!589780 e!3523402))

(declare-fun e!3523403 () Bool)

(assert (=> start!589780 e!3523403))

(declare-fun b!5730722 () Bool)

(declare-fun res!2419628 () Bool)

(declare-fun e!3523399 () Bool)

(assert (=> b!5730722 (=> res!2419628 e!3523399)))

(declare-datatypes ((tuple2!65664 0))(
  ( (tuple2!65665 (_1!36135 List!63506) (_2!36135 List!63506)) )
))
(declare-fun lt!2281184 () tuple2!65664)

(declare-fun matchZipper!1873 ((InoxSet Context!10238) List!63506) Bool)

(assert (=> b!5730722 (= res!2419628 (not (matchZipper!1873 lt!2281173 (_2!36135 lt!2281184))))))

(declare-fun b!5730723 () Bool)

(declare-fun res!2419621 () Bool)

(declare-fun e!3523389 () Bool)

(assert (=> b!5730723 (=> res!2419621 e!3523389)))

(assert (=> b!5730723 (= res!2419621 (or ((_ is EmptyExpr!15735) r!7292) ((_ is EmptyLang!15735) r!7292) ((_ is ElementMatch!15735) r!7292) ((_ is Union!15735) r!7292) (not ((_ is Concat!24580) r!7292))))))

(declare-fun b!5730724 () Bool)

(declare-fun e!3523407 () Bool)

(assert (=> b!5730724 (= e!3523392 e!3523407)))

(declare-fun res!2419614 () Bool)

(assert (=> b!5730724 (=> (not res!2419614) (not e!3523407))))

(declare-fun lt!2281213 () Regex!15735)

(assert (=> b!5730724 (= res!2419614 (= r!7292 lt!2281213))))

(assert (=> b!5730724 (= lt!2281213 (unfocusZipper!1477 zl!343))))

(declare-fun b!5730725 () Bool)

(declare-fun e!3523401 () Bool)

(declare-fun lt!2281196 () (InoxSet Context!10238))

(assert (=> b!5730725 (= e!3523401 (matchZipper!1873 lt!2281196 (t!376834 s!2326)))))

(declare-fun e!3523397 () Bool)

(assert (=> b!5730726 (= e!3523389 e!3523397)))

(declare-fun res!2419615 () Bool)

(assert (=> b!5730726 (=> res!2419615 e!3523397)))

(declare-fun lt!2281194 () Bool)

(declare-fun lt!2281214 () Bool)

(assert (=> b!5730726 (= res!2419615 (or (not (= lt!2281194 lt!2281214)) ((_ is Nil!63382) s!2326)))))

(declare-fun Exists!2835 (Int) Bool)

(assert (=> b!5730726 (= (Exists!2835 lambda!310117) (Exists!2835 lambda!310118))))

(declare-fun lt!2281202 () Unit!156472)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1464 (Regex!15735 Regex!15735 List!63506) Unit!156472)

(assert (=> b!5730726 (= lt!2281202 (lemmaExistCutMatchRandMatchRSpecEquivalent!1464 (regOne!31982 r!7292) (regTwo!31982 r!7292) s!2326))))

(assert (=> b!5730726 (= lt!2281214 (Exists!2835 lambda!310117))))

(declare-datatypes ((Option!15744 0))(
  ( (None!15743) (Some!15743 (v!51798 tuple2!65664)) )
))
(declare-fun isDefined!12447 (Option!15744) Bool)

(declare-fun findConcatSeparation!2158 (Regex!15735 Regex!15735 List!63506 List!63506 List!63506) Option!15744)

(assert (=> b!5730726 (= lt!2281214 (isDefined!12447 (findConcatSeparation!2158 (regOne!31982 r!7292) (regTwo!31982 r!7292) Nil!63382 s!2326 s!2326)))))

(declare-fun lt!2281189 () Unit!156472)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1922 (Regex!15735 Regex!15735 List!63506) Unit!156472)

(assert (=> b!5730726 (= lt!2281189 (lemmaFindConcatSeparationEquivalentToExists!1922 (regOne!31982 r!7292) (regTwo!31982 r!7292) s!2326))))

(declare-fun b!5730727 () Bool)

(declare-fun e!3523400 () Bool)

(assert (=> b!5730727 (= e!3523400 (not (matchZipper!1873 lt!2281196 (t!376834 s!2326))))))

(declare-fun b!5730728 () Bool)

(declare-fun tp_is_empty!40723 () Bool)

(declare-fun tp!1586223 () Bool)

(assert (=> b!5730728 (= e!3523403 (and tp_is_empty!40723 tp!1586223))))

(declare-fun b!5730729 () Bool)

(declare-fun e!3523410 () Bool)

(assert (=> b!5730729 (= e!3523410 e!3523409)))

(declare-fun res!2419624 () Bool)

(assert (=> b!5730729 (=> res!2419624 e!3523409)))

(declare-fun lt!2281178 () Context!10238)

(declare-fun lt!2281182 () Regex!15735)

(assert (=> b!5730729 (= res!2419624 (not (= (unfocusZipper!1477 (Cons!63381 lt!2281178 Nil!63381)) lt!2281182)))))

(declare-fun lt!2281187 () Regex!15735)

(assert (=> b!5730729 (= lt!2281182 (Concat!24580 (reg!16064 (regOne!31982 r!7292)) lt!2281187))))

(declare-fun b!5730730 () Bool)

(declare-fun e!3523388 () Bool)

(assert (=> b!5730730 (= e!3523388 e!3523399)))

(declare-fun res!2419606 () Bool)

(assert (=> b!5730730 (=> res!2419606 e!3523399)))

(declare-fun lt!2281204 () List!63506)

(assert (=> b!5730730 (= res!2419606 (not (= s!2326 lt!2281204)))))

(declare-fun ++!13942 (List!63506 List!63506) List!63506)

(assert (=> b!5730730 (= lt!2281204 (++!13942 (_1!36135 lt!2281184) (_2!36135 lt!2281184)))))

(declare-fun lt!2281211 () Option!15744)

(declare-fun get!21858 (Option!15744) tuple2!65664)

(assert (=> b!5730730 (= lt!2281184 (get!21858 lt!2281211))))

(assert (=> b!5730730 (isDefined!12447 lt!2281211)))

(declare-fun findConcatSeparationZippers!122 ((InoxSet Context!10238) (InoxSet Context!10238) List!63506 List!63506 List!63506) Option!15744)

(assert (=> b!5730730 (= lt!2281211 (findConcatSeparationZippers!122 lt!2281205 lt!2281173 Nil!63382 s!2326 s!2326))))

(declare-fun lt!2281199 () Unit!156472)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!122 ((InoxSet Context!10238) Context!10238 List!63506) Unit!156472)

(assert (=> b!5730730 (= lt!2281199 (lemmaConcatZipperMatchesStringThenFindConcatDefined!122 lt!2281205 lt!2281186 s!2326))))

(declare-fun b!5730731 () Bool)

(declare-fun res!2419631 () Bool)

(declare-fun e!3523396 () Bool)

(assert (=> b!5730731 (=> res!2419631 e!3523396)))

(declare-fun lt!2281176 () Bool)

(assert (=> b!5730731 (= res!2419631 (not lt!2281176))))

(declare-fun b!5730732 () Bool)

(declare-fun e!3523386 () Bool)

(assert (=> b!5730732 (= e!3523408 e!3523386)))

(declare-fun res!2419618 () Bool)

(assert (=> b!5730732 (=> res!2419618 e!3523386)))

(declare-fun lt!2281200 () (InoxSet Context!10238))

(declare-fun lt!2281174 () (InoxSet Context!10238))

(assert (=> b!5730732 (= res!2419618 (not (= lt!2281200 lt!2281174)))))

(declare-fun derivationStepZipperDown!1077 (Regex!15735 Context!10238 C!31740) (InoxSet Context!10238))

(assert (=> b!5730732 (= lt!2281174 (derivationStepZipperDown!1077 (reg!16064 (regOne!31982 r!7292)) lt!2281186 (h!69830 s!2326)))))

(declare-fun lt!2281217 () List!63504)

(assert (=> b!5730732 (= lt!2281186 (Context!10239 lt!2281217))))

(declare-fun lt!2281197 () Regex!15735)

(assert (=> b!5730732 (= lt!2281217 (Cons!63380 lt!2281197 (t!376832 (exprs!5619 (h!69829 zl!343)))))))

(assert (=> b!5730732 (= lt!2281197 (Star!15735 (reg!16064 (regOne!31982 r!7292))))))

(declare-fun b!5730733 () Bool)

(declare-fun e!3523404 () Bool)

(assert (=> b!5730733 (= e!3523404 e!3523410)))

(declare-fun res!2419625 () Bool)

(assert (=> b!5730733 (=> res!2419625 e!3523410)))

(assert (=> b!5730733 (= res!2419625 (not (= r!7292 lt!2281187)))))

(assert (=> b!5730733 (= lt!2281187 (Concat!24580 lt!2281197 (regTwo!31982 r!7292)))))

(declare-fun setIsEmpty!38449 () Bool)

(assert (=> setIsEmpty!38449 setRes!38449))

(declare-fun b!5730734 () Bool)

(assert (=> b!5730734 (= e!3523407 (not e!3523389))))

(declare-fun res!2419608 () Bool)

(assert (=> b!5730734 (=> res!2419608 e!3523389)))

(assert (=> b!5730734 (= res!2419608 (not ((_ is Cons!63381) zl!343)))))

(declare-fun matchRSpec!2838 (Regex!15735 List!63506) Bool)

(assert (=> b!5730734 (= lt!2281194 (matchRSpec!2838 r!7292 s!2326))))

(declare-fun matchR!7920 (Regex!15735 List!63506) Bool)

(assert (=> b!5730734 (= lt!2281194 (matchR!7920 r!7292 s!2326))))

(declare-fun lt!2281183 () Unit!156472)

(declare-fun mainMatchTheorem!2838 (Regex!15735 List!63506) Unit!156472)

(assert (=> b!5730734 (= lt!2281183 (mainMatchTheorem!2838 r!7292 s!2326))))

(declare-fun b!5730735 () Bool)

(declare-fun e!3523393 () Bool)

(assert (=> b!5730735 (= e!3523393 e!3523404)))

(declare-fun res!2419620 () Bool)

(assert (=> b!5730735 (=> res!2419620 e!3523404)))

(declare-fun lt!2281198 () Bool)

(declare-fun lt!2281201 () (InoxSet Context!10238))

(assert (=> b!5730735 (= res!2419620 (not (= lt!2281198 (matchZipper!1873 lt!2281201 (t!376834 s!2326)))))))

(declare-fun lt!2281215 () (InoxSet Context!10238))

(assert (=> b!5730735 (= lt!2281198 (matchZipper!1873 lt!2281215 s!2326))))

(declare-fun b!5730736 () Bool)

(declare-fun res!2419605 () Bool)

(assert (=> b!5730736 (=> (not res!2419605) (not e!3523392))))

(declare-fun toList!9519 ((InoxSet Context!10238)) List!63505)

(assert (=> b!5730736 (= res!2419605 (= (toList!9519 z!1189) zl!343))))

(declare-fun b!5730737 () Bool)

(declare-fun res!2419634 () Bool)

(assert (=> b!5730737 (=> res!2419634 e!3523408)))

(assert (=> b!5730737 (= res!2419634 e!3523391)))

(declare-fun res!2419607 () Bool)

(assert (=> b!5730737 (=> (not res!2419607) (not e!3523391))))

(assert (=> b!5730737 (= res!2419607 ((_ is Concat!24580) (regOne!31982 r!7292)))))

(declare-fun b!5730738 () Bool)

(declare-fun res!2419637 () Bool)

(assert (=> b!5730738 (=> res!2419637 e!3523404)))

(assert (=> b!5730738 (= res!2419637 (not (= lt!2281213 r!7292)))))

(declare-fun b!5730739 () Bool)

(declare-fun res!2419627 () Bool)

(assert (=> b!5730739 (=> res!2419627 e!3523389)))

(declare-fun generalisedUnion!1598 (List!63504) Regex!15735)

(declare-fun unfocusZipperList!1163 (List!63505) List!63504)

(assert (=> b!5730739 (= res!2419627 (not (= r!7292 (generalisedUnion!1598 (unfocusZipperList!1163 zl!343)))))))

(declare-fun b!5730740 () Bool)

(declare-fun res!2419616 () Bool)

(assert (=> b!5730740 (=> res!2419616 e!3523389)))

(assert (=> b!5730740 (= res!2419616 (not ((_ is Cons!63380) (exprs!5619 (h!69829 zl!343)))))))

(declare-fun b!5730741 () Bool)

(declare-fun e!3523406 () Unit!156472)

(declare-fun Unit!156474 () Unit!156472)

(assert (=> b!5730741 (= e!3523406 Unit!156474)))

(declare-fun b!5730742 () Bool)

(declare-fun tp!1586224 () Bool)

(assert (=> b!5730742 (= e!3523394 tp!1586224)))

(declare-fun setNonEmpty!38449 () Bool)

(declare-fun setElem!38449 () Context!10238)

(declare-fun tp!1586225 () Bool)

(declare-fun e!3523395 () Bool)

(assert (=> setNonEmpty!38449 (= setRes!38449 (and tp!1586225 (inv!82584 setElem!38449) e!3523395))))

(declare-fun setRest!38449 () (InoxSet Context!10238))

(assert (=> setNonEmpty!38449 (= z!1189 ((_ map or) (store ((as const (Array Context!10238 Bool)) false) setElem!38449 true) setRest!38449))))

(declare-fun b!5730743 () Bool)

(assert (=> b!5730743 (= e!3523386 e!3523393)))

(declare-fun res!2419638 () Bool)

(assert (=> b!5730743 (=> res!2419638 e!3523393)))

(assert (=> b!5730743 (= res!2419638 (not (= lt!2281201 lt!2281174)))))

(assert (=> b!5730743 (= (flatMap!1348 lt!2281215 lambda!310119) (derivationStepZipperUp!1003 lt!2281178 (h!69830 s!2326)))))

(declare-fun lt!2281206 () Unit!156472)

(assert (=> b!5730743 (= lt!2281206 (lemmaFlatMapOnSingletonSet!880 lt!2281215 lt!2281178 lambda!310119))))

(declare-fun lt!2281185 () (InoxSet Context!10238))

(assert (=> b!5730743 (= lt!2281185 (derivationStepZipperUp!1003 lt!2281178 (h!69830 s!2326)))))

(declare-fun derivationStepZipper!1818 ((InoxSet Context!10238) C!31740) (InoxSet Context!10238))

(assert (=> b!5730743 (= lt!2281201 (derivationStepZipper!1818 lt!2281215 (h!69830 s!2326)))))

(assert (=> b!5730743 (= lt!2281215 (store ((as const (Array Context!10238 Bool)) false) lt!2281178 true))))

(assert (=> b!5730743 (= lt!2281178 (Context!10239 (Cons!63380 (reg!16064 (regOne!31982 r!7292)) lt!2281217)))))

(declare-fun b!5730744 () Bool)

(assert (=> b!5730744 (= e!3523399 true)))

(assert (=> b!5730744 (matchR!7920 (Concat!24580 (Concat!24580 (reg!16064 (regOne!31982 r!7292)) lt!2281197) (regTwo!31982 r!7292)) s!2326)))

(declare-fun lt!2281177 () Unit!156472)

(declare-fun lemmaConcatAssociative!88 (Regex!15735 Regex!15735 Regex!15735 List!63506) Unit!156472)

(assert (=> b!5730744 (= lt!2281177 (lemmaConcatAssociative!88 (reg!16064 (regOne!31982 r!7292)) lt!2281197 (regTwo!31982 r!7292) s!2326))))

(assert (=> b!5730744 e!3523385))

(declare-fun res!2419633 () Bool)

(assert (=> b!5730744 (=> (not res!2419633) (not e!3523385))))

(assert (=> b!5730744 (= res!2419633 (matchR!7920 lt!2281182 lt!2281204))))

(declare-fun lt!2281192 () Unit!156472)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!272 (Regex!15735 Regex!15735 List!63506 List!63506) Unit!156472)

(assert (=> b!5730744 (= lt!2281192 (lemmaTwoRegexMatchThenConcatMatchesConcatString!272 (reg!16064 (regOne!31982 r!7292)) lt!2281187 (_1!36135 lt!2281184) (_2!36135 lt!2281184)))))

(assert (=> b!5730744 (matchR!7920 lt!2281187 (_2!36135 lt!2281184))))

(declare-fun lt!2281175 () List!63505)

(declare-fun lt!2281180 () Unit!156472)

(declare-fun theoremZipperRegexEquiv!655 ((InoxSet Context!10238) List!63505 Regex!15735 List!63506) Unit!156472)

(assert (=> b!5730744 (= lt!2281180 (theoremZipperRegexEquiv!655 lt!2281173 lt!2281175 lt!2281187 (_2!36135 lt!2281184)))))

(assert (=> b!5730744 (matchR!7920 (reg!16064 (regOne!31982 r!7292)) (_1!36135 lt!2281184))))

(declare-fun lt!2281207 () Unit!156472)

(assert (=> b!5730744 (= lt!2281207 (theoremZipperRegexEquiv!655 lt!2281205 lt!2281179 (reg!16064 (regOne!31982 r!7292)) (_1!36135 lt!2281184)))))

(declare-fun ++!13943 (List!63504 List!63504) List!63504)

(assert (=> b!5730744 (matchZipper!1873 (store ((as const (Array Context!10238 Bool)) false) (Context!10239 (++!13943 lt!2281220 lt!2281217)) true) lt!2281204)))

(declare-fun lt!2281216 () Unit!156472)

(declare-fun lambda!310121 () Int)

(declare-fun lemmaConcatPreservesForall!304 (List!63504 List!63504 Int) Unit!156472)

(assert (=> b!5730744 (= lt!2281216 (lemmaConcatPreservesForall!304 lt!2281220 lt!2281217 lambda!310121))))

(declare-fun lt!2281195 () Unit!156472)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!134 (Context!10238 Context!10238 List!63506 List!63506) Unit!156472)

(assert (=> b!5730744 (= lt!2281195 (lemmaConcatenateContextMatchesConcatOfStrings!134 lt!2281193 lt!2281186 (_1!36135 lt!2281184) (_2!36135 lt!2281184)))))

(declare-fun b!5730745 () Bool)

(declare-fun res!2419613 () Bool)

(assert (=> b!5730745 (=> res!2419613 e!3523399)))

(assert (=> b!5730745 (= res!2419613 (not (matchZipper!1873 lt!2281205 (_1!36135 lt!2281184))))))

(declare-fun b!5730746 () Bool)

(declare-fun res!2419623 () Bool)

(assert (=> b!5730746 (=> res!2419623 e!3523389)))

(declare-fun generalisedConcat!1350 (List!63504) Regex!15735)

(assert (=> b!5730746 (= res!2419623 (not (= r!7292 (generalisedConcat!1350 (exprs!5619 (h!69829 zl!343))))))))

(declare-fun b!5730747 () Bool)

(declare-fun e!3523387 () Bool)

(assert (=> b!5730747 (= e!3523398 e!3523387)))

(declare-fun res!2419611 () Bool)

(assert (=> b!5730747 (=> res!2419611 e!3523387)))

(assert (=> b!5730747 (= res!2419611 (not (= (unfocusZipper!1477 lt!2281175) lt!2281187)))))

(assert (=> b!5730747 (= lt!2281175 (Cons!63381 lt!2281186 Nil!63381))))

(declare-fun b!5730748 () Bool)

(assert (=> b!5730748 (= e!3523405 tp_is_empty!40723)))

(declare-fun b!5730749 () Bool)

(declare-fun res!2419617 () Bool)

(assert (=> b!5730749 (=> res!2419617 e!3523397)))

(declare-fun isEmpty!35257 (List!63504) Bool)

(assert (=> b!5730749 (= res!2419617 (isEmpty!35257 (t!376832 (exprs!5619 (h!69829 zl!343)))))))

(declare-fun b!5730750 () Bool)

(declare-fun res!2419630 () Bool)

(declare-fun e!3523390 () Bool)

(assert (=> b!5730750 (=> res!2419630 e!3523390)))

(declare-fun lt!2281212 () Bool)

(assert (=> b!5730750 (= res!2419630 (or (not lt!2281212) (not lt!2281198)))))

(assert (=> b!5730751 (= e!3523397 e!3523408)))

(declare-fun res!2419610 () Bool)

(assert (=> b!5730751 (=> res!2419610 e!3523408)))

(assert (=> b!5730751 (= res!2419610 (or (and ((_ is ElementMatch!15735) (regOne!31982 r!7292)) (= (c!1011145 (regOne!31982 r!7292)) (h!69830 s!2326))) ((_ is Union!15735) (regOne!31982 r!7292))))))

(declare-fun lt!2281208 () Unit!156472)

(assert (=> b!5730751 (= lt!2281208 e!3523406)))

(declare-fun c!1011144 () Bool)

(assert (=> b!5730751 (= c!1011144 lt!2281176)))

(assert (=> b!5730751 (= lt!2281176 (nullable!5767 (h!69828 (exprs!5619 (h!69829 zl!343)))))))

(assert (=> b!5730751 (= (flatMap!1348 z!1189 lambda!310119) (derivationStepZipperUp!1003 (h!69829 zl!343) (h!69830 s!2326)))))

(declare-fun lt!2281191 () Unit!156472)

(assert (=> b!5730751 (= lt!2281191 (lemmaFlatMapOnSingletonSet!880 z!1189 (h!69829 zl!343) lambda!310119))))

(declare-fun lt!2281209 () Context!10238)

(assert (=> b!5730751 (= lt!2281196 (derivationStepZipperUp!1003 lt!2281209 (h!69830 s!2326)))))

(assert (=> b!5730751 (= lt!2281200 (derivationStepZipperDown!1077 (h!69828 (exprs!5619 (h!69829 zl!343))) lt!2281209 (h!69830 s!2326)))))

(assert (=> b!5730751 (= lt!2281209 (Context!10239 (t!376832 (exprs!5619 (h!69829 zl!343)))))))

(declare-fun lt!2281203 () (InoxSet Context!10238))

(assert (=> b!5730751 (= lt!2281203 (derivationStepZipperUp!1003 (Context!10239 (Cons!63380 (h!69828 (exprs!5619 (h!69829 zl!343))) (t!376832 (exprs!5619 (h!69829 zl!343))))) (h!69830 s!2326)))))

(declare-fun b!5730752 () Bool)

(declare-fun res!2419619 () Bool)

(assert (=> b!5730752 (=> res!2419619 e!3523396)))

(assert (=> b!5730752 (= res!2419619 (not (matchZipper!1873 z!1189 s!2326)))))

(assert (=> b!5730753 (= e!3523390 e!3523388)))

(declare-fun res!2419626 () Bool)

(assert (=> b!5730753 (=> res!2419626 e!3523388)))

(declare-fun appendTo!114 ((InoxSet Context!10238) Context!10238) (InoxSet Context!10238))

(assert (=> b!5730753 (= res!2419626 (not (= (appendTo!114 lt!2281205 lt!2281186) lt!2281215)))))

(declare-fun lambda!310120 () Int)

(declare-fun map!14523 ((InoxSet Context!10238) Int) (InoxSet Context!10238))

(assert (=> b!5730753 (= (map!14523 lt!2281205 lambda!310120) (store ((as const (Array Context!10238 Bool)) false) (Context!10239 (++!13943 lt!2281220 lt!2281217)) true))))

(declare-fun lt!2281190 () Unit!156472)

(assert (=> b!5730753 (= lt!2281190 (lemmaConcatPreservesForall!304 lt!2281220 lt!2281217 lambda!310121))))

(declare-fun lt!2281171 () Unit!156472)

(declare-fun lemmaMapOnSingletonSet!130 ((InoxSet Context!10238) Context!10238 Int) Unit!156472)

(assert (=> b!5730753 (= lt!2281171 (lemmaMapOnSingletonSet!130 lt!2281205 lt!2281193 lambda!310120))))

(declare-fun b!5730754 () Bool)

(declare-fun res!2419622 () Bool)

(assert (=> b!5730754 (=> res!2419622 e!3523389)))

(declare-fun isEmpty!35258 (List!63505) Bool)

(assert (=> b!5730754 (= res!2419622 (not (isEmpty!35258 (t!376833 zl!343))))))

(declare-fun b!5730755 () Bool)

(declare-fun tp!1586218 () Bool)

(assert (=> b!5730755 (= e!3523395 tp!1586218)))

(declare-fun b!5730756 () Bool)

(declare-fun Unit!156475 () Unit!156472)

(assert (=> b!5730756 (= e!3523406 Unit!156475)))

(declare-fun lt!2281188 () Unit!156472)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!760 ((InoxSet Context!10238) (InoxSet Context!10238) List!63506) Unit!156472)

(assert (=> b!5730756 (= lt!2281188 (lemmaZipperConcatMatchesSameAsBothZippers!760 lt!2281200 lt!2281196 (t!376834 s!2326)))))

(declare-fun res!2419612 () Bool)

(assert (=> b!5730756 (= res!2419612 (matchZipper!1873 lt!2281200 (t!376834 s!2326)))))

(assert (=> b!5730756 (=> res!2419612 e!3523401)))

(assert (=> b!5730756 (= (matchZipper!1873 ((_ map or) lt!2281200 lt!2281196) (t!376834 s!2326)) e!3523401)))

(declare-fun b!5730757 () Bool)

(assert (=> b!5730757 (= e!3523387 e!3523396)))

(declare-fun res!2419609 () Bool)

(assert (=> b!5730757 (=> res!2419609 e!3523396)))

(assert (=> b!5730757 (= res!2419609 lt!2281194)))

(assert (=> b!5730757 (= lt!2281218 (matchRSpec!2838 lt!2281182 s!2326))))

(assert (=> b!5730757 (= lt!2281218 (matchR!7920 lt!2281182 s!2326))))

(declare-fun lt!2281170 () Unit!156472)

(assert (=> b!5730757 (= lt!2281170 (mainMatchTheorem!2838 lt!2281182 s!2326))))

(declare-fun b!5730758 () Bool)

(declare-fun tp!1586226 () Bool)

(declare-fun tp!1586222 () Bool)

(assert (=> b!5730758 (= e!3523405 (and tp!1586226 tp!1586222))))

(declare-fun b!5730759 () Bool)

(assert (=> b!5730759 (= e!3523396 e!3523390)))

(declare-fun res!2419639 () Bool)

(assert (=> b!5730759 (=> res!2419639 e!3523390)))

(assert (=> b!5730759 (= res!2419639 e!3523400)))

(declare-fun res!2419629 () Bool)

(assert (=> b!5730759 (=> (not res!2419629) (not e!3523400))))

(assert (=> b!5730759 (= res!2419629 (not lt!2281212))))

(assert (=> b!5730759 (= lt!2281212 (matchZipper!1873 lt!2281200 (t!376834 s!2326)))))

(assert (= (and start!589780 res!2419635) b!5730736))

(assert (= (and b!5730736 res!2419605) b!5730724))

(assert (= (and b!5730724 res!2419614) b!5730734))

(assert (= (and b!5730734 (not res!2419608)) b!5730754))

(assert (= (and b!5730754 (not res!2419622)) b!5730746))

(assert (= (and b!5730746 (not res!2419623)) b!5730740))

(assert (= (and b!5730740 (not res!2419616)) b!5730739))

(assert (= (and b!5730739 (not res!2419627)) b!5730723))

(assert (= (and b!5730723 (not res!2419621)) b!5730726))

(assert (= (and b!5730726 (not res!2419615)) b!5730749))

(assert (= (and b!5730749 (not res!2419617)) b!5730751))

(assert (= (and b!5730751 c!1011144) b!5730756))

(assert (= (and b!5730751 (not c!1011144)) b!5730741))

(assert (= (and b!5730756 (not res!2419612)) b!5730725))

(assert (= (and b!5730751 (not res!2419610)) b!5730737))

(assert (= (and b!5730737 res!2419607) b!5730716))

(assert (= (and b!5730737 (not res!2419634)) b!5730715))

(assert (= (and b!5730715 (not res!2419636)) b!5730732))

(assert (= (and b!5730732 (not res!2419618)) b!5730743))

(assert (= (and b!5730743 (not res!2419638)) b!5730735))

(assert (= (and b!5730735 (not res!2419620)) b!5730738))

(assert (= (and b!5730738 (not res!2419637)) b!5730733))

(assert (= (and b!5730733 (not res!2419625)) b!5730729))

(assert (= (and b!5730729 (not res!2419624)) b!5730718))

(assert (= (and b!5730718 (not res!2419632)) b!5730747))

(assert (= (and b!5730747 (not res!2419611)) b!5730757))

(assert (= (and b!5730757 (not res!2419609)) b!5730752))

(assert (= (and b!5730752 (not res!2419619)) b!5730731))

(assert (= (and b!5730731 (not res!2419631)) b!5730759))

(assert (= (and b!5730759 res!2419629) b!5730727))

(assert (= (and b!5730759 (not res!2419639)) b!5730750))

(assert (= (and b!5730750 (not res!2419630)) b!5730753))

(assert (= (and b!5730753 (not res!2419626)) b!5730730))

(assert (= (and b!5730730 (not res!2419606)) b!5730745))

(assert (= (and b!5730745 (not res!2419613)) b!5730722))

(assert (= (and b!5730722 (not res!2419628)) b!5730744))

(assert (= (and b!5730744 res!2419633) b!5730721))

(assert (= (and start!589780 ((_ is ElementMatch!15735) r!7292)) b!5730748))

(assert (= (and start!589780 ((_ is Concat!24580) r!7292)) b!5730758))

(assert (= (and start!589780 ((_ is Star!15735) r!7292)) b!5730717))

(assert (= (and start!589780 ((_ is Union!15735) r!7292)) b!5730720))

(assert (= (and start!589780 condSetEmpty!38449) setIsEmpty!38449))

(assert (= (and start!589780 (not condSetEmpty!38449)) setNonEmpty!38449))

(assert (= setNonEmpty!38449 b!5730755))

(assert (= b!5730719 b!5730742))

(assert (= (and start!589780 ((_ is Cons!63381) zl!343)) b!5730719))

(assert (= (and start!589780 ((_ is Cons!63382) s!2326)) b!5730728))

(declare-fun m!6682644 () Bool)

(assert (=> b!5730749 m!6682644))

(declare-fun m!6682646 () Bool)

(assert (=> b!5730752 m!6682646))

(declare-fun m!6682648 () Bool)

(assert (=> b!5730725 m!6682648))

(declare-fun m!6682650 () Bool)

(assert (=> b!5730726 m!6682650))

(declare-fun m!6682652 () Bool)

(assert (=> b!5730726 m!6682652))

(declare-fun m!6682654 () Bool)

(assert (=> b!5730726 m!6682654))

(declare-fun m!6682656 () Bool)

(assert (=> b!5730726 m!6682656))

(assert (=> b!5730726 m!6682654))

(declare-fun m!6682658 () Bool)

(assert (=> b!5730726 m!6682658))

(assert (=> b!5730726 m!6682650))

(declare-fun m!6682660 () Bool)

(assert (=> b!5730726 m!6682660))

(declare-fun m!6682662 () Bool)

(assert (=> b!5730716 m!6682662))

(declare-fun m!6682664 () Bool)

(assert (=> b!5730759 m!6682664))

(declare-fun m!6682666 () Bool)

(assert (=> setNonEmpty!38449 m!6682666))

(declare-fun m!6682668 () Bool)

(assert (=> b!5730722 m!6682668))

(declare-fun m!6682670 () Bool)

(assert (=> b!5730743 m!6682670))

(declare-fun m!6682672 () Bool)

(assert (=> b!5730743 m!6682672))

(declare-fun m!6682674 () Bool)

(assert (=> b!5730743 m!6682674))

(declare-fun m!6682676 () Bool)

(assert (=> b!5730743 m!6682676))

(declare-fun m!6682678 () Bool)

(assert (=> b!5730743 m!6682678))

(declare-fun m!6682680 () Bool)

(assert (=> b!5730734 m!6682680))

(declare-fun m!6682682 () Bool)

(assert (=> b!5730734 m!6682682))

(declare-fun m!6682684 () Bool)

(assert (=> b!5730734 m!6682684))

(declare-fun m!6682686 () Bool)

(assert (=> b!5730753 m!6682686))

(declare-fun m!6682688 () Bool)

(assert (=> b!5730753 m!6682688))

(declare-fun m!6682690 () Bool)

(assert (=> b!5730753 m!6682690))

(declare-fun m!6682692 () Bool)

(assert (=> b!5730753 m!6682692))

(declare-fun m!6682694 () Bool)

(assert (=> b!5730753 m!6682694))

(declare-fun m!6682696 () Bool)

(assert (=> b!5730753 m!6682696))

(assert (=> b!5730727 m!6682648))

(declare-fun m!6682698 () Bool)

(assert (=> b!5730719 m!6682698))

(declare-fun m!6682700 () Bool)

(assert (=> b!5730739 m!6682700))

(assert (=> b!5730739 m!6682700))

(declare-fun m!6682702 () Bool)

(assert (=> b!5730739 m!6682702))

(declare-fun m!6682704 () Bool)

(assert (=> b!5730736 m!6682704))

(declare-fun m!6682706 () Bool)

(assert (=> b!5730751 m!6682706))

(declare-fun m!6682708 () Bool)

(assert (=> b!5730751 m!6682708))

(declare-fun m!6682710 () Bool)

(assert (=> b!5730751 m!6682710))

(declare-fun m!6682712 () Bool)

(assert (=> b!5730751 m!6682712))

(declare-fun m!6682714 () Bool)

(assert (=> b!5730751 m!6682714))

(declare-fun m!6682716 () Bool)

(assert (=> b!5730751 m!6682716))

(declare-fun m!6682718 () Bool)

(assert (=> b!5730751 m!6682718))

(declare-fun m!6682720 () Bool)

(assert (=> b!5730756 m!6682720))

(assert (=> b!5730756 m!6682664))

(declare-fun m!6682722 () Bool)

(assert (=> b!5730756 m!6682722))

(declare-fun m!6682724 () Bool)

(assert (=> b!5730754 m!6682724))

(declare-fun m!6682726 () Bool)

(assert (=> b!5730730 m!6682726))

(declare-fun m!6682728 () Bool)

(assert (=> b!5730730 m!6682728))

(declare-fun m!6682730 () Bool)

(assert (=> b!5730730 m!6682730))

(declare-fun m!6682732 () Bool)

(assert (=> b!5730730 m!6682732))

(declare-fun m!6682734 () Bool)

(assert (=> b!5730730 m!6682734))

(declare-fun m!6682736 () Bool)

(assert (=> b!5730718 m!6682736))

(declare-fun m!6682738 () Bool)

(assert (=> b!5730718 m!6682738))

(declare-fun m!6682740 () Bool)

(assert (=> b!5730718 m!6682740))

(declare-fun m!6682742 () Bool)

(assert (=> b!5730718 m!6682742))

(declare-fun m!6682744 () Bool)

(assert (=> b!5730718 m!6682744))

(declare-fun m!6682746 () Bool)

(assert (=> b!5730718 m!6682746))

(declare-fun m!6682748 () Bool)

(assert (=> b!5730718 m!6682748))

(declare-fun m!6682750 () Bool)

(assert (=> b!5730718 m!6682750))

(declare-fun m!6682752 () Bool)

(assert (=> b!5730718 m!6682752))

(declare-fun m!6682754 () Bool)

(assert (=> start!589780 m!6682754))

(declare-fun m!6682756 () Bool)

(assert (=> b!5730746 m!6682756))

(declare-fun m!6682758 () Bool)

(assert (=> b!5730729 m!6682758))

(declare-fun m!6682760 () Bool)

(assert (=> b!5730732 m!6682760))

(declare-fun m!6682762 () Bool)

(assert (=> b!5730744 m!6682762))

(assert (=> b!5730744 m!6682688))

(declare-fun m!6682764 () Bool)

(assert (=> b!5730744 m!6682764))

(declare-fun m!6682766 () Bool)

(assert (=> b!5730744 m!6682766))

(declare-fun m!6682768 () Bool)

(assert (=> b!5730744 m!6682768))

(declare-fun m!6682770 () Bool)

(assert (=> b!5730744 m!6682770))

(assert (=> b!5730744 m!6682696))

(declare-fun m!6682772 () Bool)

(assert (=> b!5730744 m!6682772))

(declare-fun m!6682774 () Bool)

(assert (=> b!5730744 m!6682774))

(declare-fun m!6682776 () Bool)

(assert (=> b!5730744 m!6682776))

(assert (=> b!5730744 m!6682696))

(declare-fun m!6682778 () Bool)

(assert (=> b!5730744 m!6682778))

(declare-fun m!6682780 () Bool)

(assert (=> b!5730744 m!6682780))

(assert (=> b!5730744 m!6682690))

(declare-fun m!6682782 () Bool)

(assert (=> b!5730724 m!6682782))

(declare-fun m!6682784 () Bool)

(assert (=> b!5730735 m!6682784))

(declare-fun m!6682786 () Bool)

(assert (=> b!5730735 m!6682786))

(declare-fun m!6682788 () Bool)

(assert (=> b!5730745 m!6682788))

(declare-fun m!6682790 () Bool)

(assert (=> b!5730757 m!6682790))

(declare-fun m!6682792 () Bool)

(assert (=> b!5730757 m!6682792))

(declare-fun m!6682794 () Bool)

(assert (=> b!5730757 m!6682794))

(declare-fun m!6682796 () Bool)

(assert (=> b!5730747 m!6682796))

(check-sat (not b!5730729) (not start!589780) (not b!5730730) (not b!5730739) (not b!5730719) (not b!5730735) (not b!5730755) (not b!5730720) (not b!5730736) (not b!5730717) (not b!5730732) (not b!5730725) (not b!5730756) (not b!5730718) (not b!5730757) (not b!5730746) (not b!5730734) (not b!5730727) tp_is_empty!40723 (not b!5730722) (not b!5730752) (not b!5730728) (not b!5730745) (not b!5730753) (not b!5730726) (not b!5730749) (not setNonEmpty!38449) (not b!5730743) (not b!5730744) (not b!5730747) (not b!5730754) (not b!5730751) (not b!5730742) (not b!5730759) (not b!5730716) (not b!5730758) (not b!5730724))
(check-sat)
