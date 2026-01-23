; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!583446 () Bool)

(assert start!583446)

(declare-fun b!5631497 () Bool)

(assert (=> b!5631497 true))

(assert (=> b!5631497 true))

(declare-fun lambda!302652 () Int)

(declare-fun lambda!302651 () Int)

(assert (=> b!5631497 (not (= lambda!302652 lambda!302651))))

(assert (=> b!5631497 true))

(assert (=> b!5631497 true))

(declare-fun b!5631478 () Bool)

(assert (=> b!5631478 true))

(declare-fun b!5631467 () Bool)

(declare-fun res!2384807 () Bool)

(declare-fun e!3470881 () Bool)

(assert (=> b!5631467 (=> res!2384807 e!3470881)))

(declare-datatypes ((C!31518 0))(
  ( (C!31519 (val!25461 Int)) )
))
(declare-datatypes ((Regex!15624 0))(
  ( (ElementMatch!15624 (c!988948 C!31518)) (Concat!24469 (regOne!31760 Regex!15624) (regTwo!31760 Regex!15624)) (EmptyExpr!15624) (Star!15624 (reg!15953 Regex!15624)) (EmptyLang!15624) (Union!15624 (regOne!31761 Regex!15624) (regTwo!31761 Regex!15624)) )
))
(declare-fun r!7292 () Regex!15624)

(declare-datatypes ((List!63171 0))(
  ( (Nil!63047) (Cons!63047 (h!69495 Regex!15624) (t!376465 List!63171)) )
))
(declare-datatypes ((Context!10016 0))(
  ( (Context!10017 (exprs!5508 List!63171)) )
))
(declare-datatypes ((List!63172 0))(
  ( (Nil!63048) (Cons!63048 (h!69496 Context!10016) (t!376466 List!63172)) )
))
(declare-fun zl!343 () List!63172)

(declare-fun generalisedUnion!1487 (List!63171) Regex!15624)

(declare-fun unfocusZipperList!1052 (List!63172) List!63171)

(assert (=> b!5631467 (= res!2384807 (not (= r!7292 (generalisedUnion!1487 (unfocusZipperList!1052 zl!343)))))))

(declare-fun b!5631468 () Bool)

(declare-fun res!2384813 () Bool)

(declare-fun e!3470868 () Bool)

(assert (=> b!5631468 (=> res!2384813 e!3470868)))

(assert (=> b!5631468 (= res!2384813 (not (= (exprs!5508 (h!69496 zl!343)) (Cons!63047 (Concat!24469 (regOne!31760 (regOne!31760 r!7292)) (regTwo!31760 (regOne!31760 r!7292))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun b!5631469 () Bool)

(declare-fun e!3470878 () Bool)

(declare-fun tp!1558773 () Bool)

(assert (=> b!5631469 (= e!3470878 tp!1558773)))

(declare-fun b!5631470 () Bool)

(declare-fun res!2384805 () Bool)

(assert (=> b!5631470 (=> res!2384805 e!3470881)))

(assert (=> b!5631470 (= res!2384805 (or (is-EmptyExpr!15624 r!7292) (is-EmptyLang!15624 r!7292) (is-ElementMatch!15624 r!7292) (is-Union!15624 r!7292) (not (is-Concat!24469 r!7292))))))

(declare-fun b!5631471 () Bool)

(declare-fun e!3470869 () Bool)

(declare-fun lt!2262565 () (Set Context!10016))

(declare-datatypes ((List!63173 0))(
  ( (Nil!63049) (Cons!63049 (h!69497 C!31518) (t!376467 List!63173)) )
))
(declare-fun s!2326 () List!63173)

(declare-fun matchZipper!1762 ((Set Context!10016) List!63173) Bool)

(assert (=> b!5631471 (= e!3470869 (matchZipper!1762 lt!2262565 (t!376467 s!2326)))))

(declare-fun b!5631472 () Bool)

(declare-fun e!3470885 () Bool)

(declare-fun e!3470882 () Bool)

(assert (=> b!5631472 (= e!3470885 e!3470882)))

(declare-fun res!2384809 () Bool)

(assert (=> b!5631472 (=> res!2384809 e!3470882)))

(declare-fun e!3470875 () Bool)

(assert (=> b!5631472 (= res!2384809 e!3470875)))

(declare-fun res!2384815 () Bool)

(assert (=> b!5631472 (=> (not res!2384815) (not e!3470875))))

(declare-fun lt!2262579 () Bool)

(declare-fun lt!2262589 () Bool)

(assert (=> b!5631472 (= res!2384815 (not (= lt!2262579 lt!2262589)))))

(declare-fun lt!2262574 () (Set Context!10016))

(assert (=> b!5631472 (= lt!2262579 (matchZipper!1762 lt!2262574 (t!376467 s!2326)))))

(declare-fun lt!2262571 () (Set Context!10016))

(declare-fun e!3470884 () Bool)

(assert (=> b!5631472 (= (matchZipper!1762 lt!2262571 (t!376467 s!2326)) e!3470884)))

(declare-fun res!2384811 () Bool)

(assert (=> b!5631472 (=> res!2384811 e!3470884)))

(assert (=> b!5631472 (= res!2384811 lt!2262589)))

(declare-fun lt!2262586 () (Set Context!10016))

(assert (=> b!5631472 (= lt!2262589 (matchZipper!1762 lt!2262586 (t!376467 s!2326)))))

(declare-datatypes ((Unit!156028 0))(
  ( (Unit!156029) )
))
(declare-fun lt!2262566 () Unit!156028)

(declare-fun lt!2262576 () (Set Context!10016))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!649 ((Set Context!10016) (Set Context!10016) List!63173) Unit!156028)

(assert (=> b!5631472 (= lt!2262566 (lemmaZipperConcatMatchesSameAsBothZippers!649 lt!2262586 lt!2262576 (t!376467 s!2326)))))

(declare-fun b!5631473 () Bool)

(declare-fun e!3470877 () Bool)

(declare-fun tp!1558765 () Bool)

(assert (=> b!5631473 (= e!3470877 tp!1558765)))

(declare-fun b!5631474 () Bool)

(declare-fun e!3470872 () Bool)

(assert (=> b!5631474 (= e!3470882 e!3470872)))

(declare-fun res!2384821 () Bool)

(assert (=> b!5631474 (=> res!2384821 e!3470872)))

(declare-fun lt!2262582 () (Set Context!10016))

(declare-fun lt!2262581 () (Set Context!10016))

(assert (=> b!5631474 (= res!2384821 (not (= lt!2262582 lt!2262581)))))

(assert (=> b!5631474 (= lt!2262581 (set.union lt!2262586 lt!2262565))))

(declare-fun lt!2262573 () Context!10016)

(declare-fun derivationStepZipperUp!892 (Context!10016 C!31518) (Set Context!10016))

(assert (=> b!5631474 (= lt!2262565 (derivationStepZipperUp!892 lt!2262573 (h!69497 s!2326)))))

(declare-fun lt!2262588 () Context!10016)

(declare-fun lt!2262592 () (Set Context!10016))

(declare-fun lambda!302653 () Int)

(declare-fun flatMap!1237 ((Set Context!10016) Int) (Set Context!10016))

(assert (=> b!5631474 (= (flatMap!1237 lt!2262592 lambda!302653) (derivationStepZipperUp!892 lt!2262588 (h!69497 s!2326)))))

(declare-fun lt!2262591 () Unit!156028)

(declare-fun lemmaFlatMapOnSingletonSet!769 ((Set Context!10016) Context!10016 Int) Unit!156028)

(assert (=> b!5631474 (= lt!2262591 (lemmaFlatMapOnSingletonSet!769 lt!2262592 lt!2262588 lambda!302653))))

(declare-fun lt!2262583 () (Set Context!10016))

(assert (=> b!5631474 (= lt!2262583 (derivationStepZipperUp!892 lt!2262588 (h!69497 s!2326)))))

(declare-fun derivationStepZipper!1711 ((Set Context!10016) C!31518) (Set Context!10016))

(assert (=> b!5631474 (= lt!2262582 (derivationStepZipper!1711 lt!2262592 (h!69497 s!2326)))))

(declare-fun lt!2262569 () (Set Context!10016))

(assert (=> b!5631474 (= lt!2262569 (set.insert lt!2262573 (as set.empty (Set Context!10016))))))

(assert (=> b!5631474 (= lt!2262592 (set.insert lt!2262588 (as set.empty (Set Context!10016))))))

(declare-fun lt!2262580 () List!63171)

(assert (=> b!5631474 (= lt!2262588 (Context!10017 (Cons!63047 (regOne!31760 (regOne!31760 r!7292)) lt!2262580)))))

(declare-fun b!5631475 () Bool)

(declare-fun e!3470874 () Bool)

(assert (=> b!5631475 (= e!3470874 (not e!3470881))))

(declare-fun res!2384801 () Bool)

(assert (=> b!5631475 (=> res!2384801 e!3470881)))

(assert (=> b!5631475 (= res!2384801 (not (is-Cons!63048 zl!343)))))

(declare-fun lt!2262577 () Bool)

(declare-fun matchRSpec!2727 (Regex!15624 List!63173) Bool)

(assert (=> b!5631475 (= lt!2262577 (matchRSpec!2727 r!7292 s!2326))))

(declare-fun matchR!7809 (Regex!15624 List!63173) Bool)

(assert (=> b!5631475 (= lt!2262577 (matchR!7809 r!7292 s!2326))))

(declare-fun lt!2262584 () Unit!156028)

(declare-fun mainMatchTheorem!2727 (Regex!15624 List!63173) Unit!156028)

(assert (=> b!5631475 (= lt!2262584 (mainMatchTheorem!2727 r!7292 s!2326))))

(declare-fun tp!1558767 () Bool)

(declare-fun b!5631476 () Bool)

(declare-fun e!3470871 () Bool)

(declare-fun inv!82308 (Context!10016) Bool)

(assert (=> b!5631476 (= e!3470871 (and (inv!82308 (h!69496 zl!343)) e!3470878 tp!1558767))))

(declare-fun tp!1558770 () Bool)

(declare-fun setRes!37621 () Bool)

(declare-fun e!3470870 () Bool)

(declare-fun setNonEmpty!37621 () Bool)

(declare-fun setElem!37621 () Context!10016)

(assert (=> setNonEmpty!37621 (= setRes!37621 (and tp!1558770 (inv!82308 setElem!37621) e!3470870))))

(declare-fun z!1189 () (Set Context!10016))

(declare-fun setRest!37621 () (Set Context!10016))

(assert (=> setNonEmpty!37621 (= z!1189 (set.union (set.insert setElem!37621 (as set.empty (Set Context!10016))) setRest!37621))))

(declare-fun b!5631477 () Bool)

(declare-fun res!2384816 () Bool)

(declare-fun e!3470880 () Bool)

(assert (=> b!5631477 (=> res!2384816 e!3470880)))

(declare-fun nullable!5656 (Regex!15624) Bool)

(assert (=> b!5631477 (= res!2384816 (not (nullable!5656 (regOne!31760 (regOne!31760 r!7292)))))))

(declare-fun e!3470879 () Bool)

(assert (=> b!5631478 (= e!3470879 e!3470880)))

(declare-fun res!2384800 () Bool)

(assert (=> b!5631478 (=> res!2384800 e!3470880)))

(assert (=> b!5631478 (= res!2384800 (or (and (is-ElementMatch!15624 (regOne!31760 r!7292)) (= (c!988948 (regOne!31760 r!7292)) (h!69497 s!2326))) (is-Union!15624 (regOne!31760 r!7292)) (not (is-Concat!24469 (regOne!31760 r!7292)))))))

(declare-fun lt!2262578 () Unit!156028)

(declare-fun e!3470883 () Unit!156028)

(assert (=> b!5631478 (= lt!2262578 e!3470883)))

(declare-fun c!988947 () Bool)

(assert (=> b!5631478 (= c!988947 (nullable!5656 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> b!5631478 (= (flatMap!1237 z!1189 lambda!302653) (derivationStepZipperUp!892 (h!69496 zl!343) (h!69497 s!2326)))))

(declare-fun lt!2262568 () Unit!156028)

(assert (=> b!5631478 (= lt!2262568 (lemmaFlatMapOnSingletonSet!769 z!1189 (h!69496 zl!343) lambda!302653))))

(declare-fun lt!2262587 () (Set Context!10016))

(declare-fun lt!2262567 () Context!10016)

(assert (=> b!5631478 (= lt!2262587 (derivationStepZipperUp!892 lt!2262567 (h!69497 s!2326)))))

(declare-fun derivationStepZipperDown!966 (Regex!15624 Context!10016 C!31518) (Set Context!10016))

(assert (=> b!5631478 (= lt!2262574 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (h!69496 zl!343))) lt!2262567 (h!69497 s!2326)))))

(assert (=> b!5631478 (= lt!2262567 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun lt!2262575 () (Set Context!10016))

(assert (=> b!5631478 (= lt!2262575 (derivationStepZipperUp!892 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))) (h!69497 s!2326)))))

(declare-fun b!5631479 () Bool)

(declare-fun res!2384817 () Bool)

(assert (=> b!5631479 (=> res!2384817 e!3470881)))

(declare-fun isEmpty!34887 (List!63172) Bool)

(assert (=> b!5631479 (= res!2384817 (not (isEmpty!34887 (t!376466 zl!343))))))

(declare-fun b!5631480 () Bool)

(declare-fun tp!1558772 () Bool)

(assert (=> b!5631480 (= e!3470870 tp!1558772)))

(declare-fun b!5631481 () Bool)

(assert (=> b!5631481 (= e!3470884 (matchZipper!1762 lt!2262576 (t!376467 s!2326)))))

(declare-fun b!5631482 () Bool)

(declare-fun e!3470876 () Bool)

(assert (=> b!5631482 (= e!3470876 (matchZipper!1762 lt!2262587 (t!376467 s!2326)))))

(declare-fun b!5631483 () Bool)

(declare-fun tp!1558768 () Bool)

(declare-fun tp!1558764 () Bool)

(assert (=> b!5631483 (= e!3470877 (and tp!1558768 tp!1558764))))

(declare-fun b!5631484 () Bool)

(assert (=> b!5631484 (= e!3470872 e!3470868)))

(declare-fun res!2384812 () Bool)

(assert (=> b!5631484 (=> res!2384812 e!3470868)))

(declare-fun e!3470873 () Bool)

(assert (=> b!5631484 (= res!2384812 e!3470873)))

(declare-fun res!2384804 () Bool)

(assert (=> b!5631484 (=> (not res!2384804) (not e!3470873))))

(assert (=> b!5631484 (= res!2384804 (not (= lt!2262579 (matchZipper!1762 lt!2262582 (t!376467 s!2326)))))))

(assert (=> b!5631484 (= (matchZipper!1762 lt!2262581 (t!376467 s!2326)) e!3470869)))

(declare-fun res!2384808 () Bool)

(assert (=> b!5631484 (=> res!2384808 e!3470869)))

(assert (=> b!5631484 (= res!2384808 lt!2262589)))

(declare-fun lt!2262572 () Unit!156028)

(assert (=> b!5631484 (= lt!2262572 (lemmaZipperConcatMatchesSameAsBothZippers!649 lt!2262586 lt!2262565 (t!376467 s!2326)))))

(assert (=> b!5631484 (= (flatMap!1237 lt!2262569 lambda!302653) (derivationStepZipperUp!892 lt!2262573 (h!69497 s!2326)))))

(declare-fun lt!2262585 () Unit!156028)

(assert (=> b!5631484 (= lt!2262585 (lemmaFlatMapOnSingletonSet!769 lt!2262569 lt!2262573 lambda!302653))))

(declare-fun b!5631485 () Bool)

(assert (=> b!5631485 (= e!3470873 (not (matchZipper!1762 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (t!376467 s!2326))))))

(declare-fun b!5631486 () Bool)

(declare-fun res!2384810 () Bool)

(assert (=> b!5631486 (=> (not res!2384810) (not e!3470874))))

(declare-fun unfocusZipper!1366 (List!63172) Regex!15624)

(assert (=> b!5631486 (= res!2384810 (= r!7292 (unfocusZipper!1366 zl!343)))))

(declare-fun setIsEmpty!37621 () Bool)

(assert (=> setIsEmpty!37621 setRes!37621))

(declare-fun b!5631487 () Bool)

(assert (=> b!5631487 (= e!3470880 e!3470885)))

(declare-fun res!2384806 () Bool)

(assert (=> b!5631487 (=> res!2384806 e!3470885)))

(assert (=> b!5631487 (= res!2384806 (not (= lt!2262574 lt!2262571)))))

(assert (=> b!5631487 (= lt!2262571 (set.union lt!2262586 lt!2262576))))

(assert (=> b!5631487 (= lt!2262576 (derivationStepZipperDown!966 (regTwo!31760 (regOne!31760 r!7292)) lt!2262567 (h!69497 s!2326)))))

(assert (=> b!5631487 (= lt!2262586 (derivationStepZipperDown!966 (regOne!31760 (regOne!31760 r!7292)) lt!2262573 (h!69497 s!2326)))))

(assert (=> b!5631487 (= lt!2262573 (Context!10017 lt!2262580))))

(assert (=> b!5631487 (= lt!2262580 (Cons!63047 (regTwo!31760 (regOne!31760 r!7292)) (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5631488 () Bool)

(assert (=> b!5631488 (= e!3470875 (not (matchZipper!1762 lt!2262576 (t!376467 s!2326))))))

(declare-fun b!5631489 () Bool)

(declare-fun res!2384799 () Bool)

(assert (=> b!5631489 (=> res!2384799 e!3470879)))

(declare-fun isEmpty!34888 (List!63171) Bool)

(assert (=> b!5631489 (= res!2384799 (isEmpty!34888 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5631491 () Bool)

(declare-fun Unit!156030 () Unit!156028)

(assert (=> b!5631491 (= e!3470883 Unit!156030)))

(declare-fun lt!2262570 () Unit!156028)

(assert (=> b!5631491 (= lt!2262570 (lemmaZipperConcatMatchesSameAsBothZippers!649 lt!2262574 lt!2262587 (t!376467 s!2326)))))

(declare-fun res!2384819 () Bool)

(assert (=> b!5631491 (= res!2384819 (matchZipper!1762 lt!2262574 (t!376467 s!2326)))))

(assert (=> b!5631491 (=> res!2384819 e!3470876)))

(assert (=> b!5631491 (= (matchZipper!1762 (set.union lt!2262574 lt!2262587) (t!376467 s!2326)) e!3470876)))

(declare-fun res!2384818 () Bool)

(assert (=> start!583446 (=> (not res!2384818) (not e!3470874))))

(declare-fun validRegex!7360 (Regex!15624) Bool)

(assert (=> start!583446 (= res!2384818 (validRegex!7360 r!7292))))

(assert (=> start!583446 e!3470874))

(assert (=> start!583446 e!3470877))

(declare-fun condSetEmpty!37621 () Bool)

(assert (=> start!583446 (= condSetEmpty!37621 (= z!1189 (as set.empty (Set Context!10016))))))

(assert (=> start!583446 setRes!37621))

(assert (=> start!583446 e!3470871))

(declare-fun e!3470867 () Bool)

(assert (=> start!583446 e!3470867))

(declare-fun b!5631490 () Bool)

(declare-fun res!2384802 () Bool)

(assert (=> b!5631490 (=> res!2384802 e!3470881)))

(declare-fun generalisedConcat!1239 (List!63171) Regex!15624)

(assert (=> b!5631490 (= res!2384802 (not (= r!7292 (generalisedConcat!1239 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5631492 () Bool)

(declare-fun contextDepthTotal!209 (Context!10016) Int)

(assert (=> b!5631492 (= e!3470868 (< (contextDepthTotal!209 lt!2262588) (contextDepthTotal!209 (h!69496 zl!343))))))

(declare-fun b!5631493 () Bool)

(declare-fun res!2384820 () Bool)

(assert (=> b!5631493 (=> (not res!2384820) (not e!3470874))))

(declare-fun toList!9408 ((Set Context!10016)) List!63172)

(assert (=> b!5631493 (= res!2384820 (= (toList!9408 z!1189) zl!343))))

(declare-fun b!5631494 () Bool)

(declare-fun Unit!156031 () Unit!156028)

(assert (=> b!5631494 (= e!3470883 Unit!156031)))

(declare-fun b!5631495 () Bool)

(declare-fun tp_is_empty!40501 () Bool)

(declare-fun tp!1558769 () Bool)

(assert (=> b!5631495 (= e!3470867 (and tp_is_empty!40501 tp!1558769))))

(declare-fun b!5631496 () Bool)

(assert (=> b!5631496 (= e!3470877 tp_is_empty!40501)))

(assert (=> b!5631497 (= e!3470881 e!3470879)))

(declare-fun res!2384803 () Bool)

(assert (=> b!5631497 (=> res!2384803 e!3470879)))

(declare-fun lt!2262590 () Bool)

(assert (=> b!5631497 (= res!2384803 (or (not (= lt!2262577 lt!2262590)) (is-Nil!63049 s!2326)))))

(declare-fun Exists!2724 (Int) Bool)

(assert (=> b!5631497 (= (Exists!2724 lambda!302651) (Exists!2724 lambda!302652))))

(declare-fun lt!2262564 () Unit!156028)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1353 (Regex!15624 Regex!15624 List!63173) Unit!156028)

(assert (=> b!5631497 (= lt!2262564 (lemmaExistCutMatchRandMatchRSpecEquivalent!1353 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326))))

(assert (=> b!5631497 (= lt!2262590 (Exists!2724 lambda!302651))))

(declare-datatypes ((tuple2!65442 0))(
  ( (tuple2!65443 (_1!36024 List!63173) (_2!36024 List!63173)) )
))
(declare-datatypes ((Option!15633 0))(
  ( (None!15632) (Some!15632 (v!51677 tuple2!65442)) )
))
(declare-fun isDefined!12336 (Option!15633) Bool)

(declare-fun findConcatSeparation!2047 (Regex!15624 Regex!15624 List!63173 List!63173 List!63173) Option!15633)

(assert (=> b!5631497 (= lt!2262590 (isDefined!12336 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326)))))

(declare-fun lt!2262563 () Unit!156028)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1811 (Regex!15624 Regex!15624 List!63173) Unit!156028)

(assert (=> b!5631497 (= lt!2262563 (lemmaFindConcatSeparationEquivalentToExists!1811 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326))))

(declare-fun b!5631498 () Bool)

(declare-fun tp!1558766 () Bool)

(declare-fun tp!1558771 () Bool)

(assert (=> b!5631498 (= e!3470877 (and tp!1558766 tp!1558771))))

(declare-fun b!5631499 () Bool)

(declare-fun res!2384814 () Bool)

(assert (=> b!5631499 (=> res!2384814 e!3470881)))

(assert (=> b!5631499 (= res!2384814 (not (is-Cons!63047 (exprs!5508 (h!69496 zl!343)))))))

(assert (= (and start!583446 res!2384818) b!5631493))

(assert (= (and b!5631493 res!2384820) b!5631486))

(assert (= (and b!5631486 res!2384810) b!5631475))

(assert (= (and b!5631475 (not res!2384801)) b!5631479))

(assert (= (and b!5631479 (not res!2384817)) b!5631490))

(assert (= (and b!5631490 (not res!2384802)) b!5631499))

(assert (= (and b!5631499 (not res!2384814)) b!5631467))

(assert (= (and b!5631467 (not res!2384807)) b!5631470))

(assert (= (and b!5631470 (not res!2384805)) b!5631497))

(assert (= (and b!5631497 (not res!2384803)) b!5631489))

(assert (= (and b!5631489 (not res!2384799)) b!5631478))

(assert (= (and b!5631478 c!988947) b!5631491))

(assert (= (and b!5631478 (not c!988947)) b!5631494))

(assert (= (and b!5631491 (not res!2384819)) b!5631482))

(assert (= (and b!5631478 (not res!2384800)) b!5631477))

(assert (= (and b!5631477 (not res!2384816)) b!5631487))

(assert (= (and b!5631487 (not res!2384806)) b!5631472))

(assert (= (and b!5631472 (not res!2384811)) b!5631481))

(assert (= (and b!5631472 res!2384815) b!5631488))

(assert (= (and b!5631472 (not res!2384809)) b!5631474))

(assert (= (and b!5631474 (not res!2384821)) b!5631484))

(assert (= (and b!5631484 (not res!2384808)) b!5631471))

(assert (= (and b!5631484 res!2384804) b!5631485))

(assert (= (and b!5631484 (not res!2384812)) b!5631468))

(assert (= (and b!5631468 (not res!2384813)) b!5631492))

(assert (= (and start!583446 (is-ElementMatch!15624 r!7292)) b!5631496))

(assert (= (and start!583446 (is-Concat!24469 r!7292)) b!5631483))

(assert (= (and start!583446 (is-Star!15624 r!7292)) b!5631473))

(assert (= (and start!583446 (is-Union!15624 r!7292)) b!5631498))

(assert (= (and start!583446 condSetEmpty!37621) setIsEmpty!37621))

(assert (= (and start!583446 (not condSetEmpty!37621)) setNonEmpty!37621))

(assert (= setNonEmpty!37621 b!5631480))

(assert (= b!5631476 b!5631469))

(assert (= (and start!583446 (is-Cons!63048 zl!343)) b!5631476))

(assert (= (and start!583446 (is-Cons!63049 s!2326)) b!5631495))

(declare-fun m!6602592 () Bool)

(assert (=> b!5631493 m!6602592))

(declare-fun m!6602594 () Bool)

(assert (=> b!5631475 m!6602594))

(declare-fun m!6602596 () Bool)

(assert (=> b!5631475 m!6602596))

(declare-fun m!6602598 () Bool)

(assert (=> b!5631475 m!6602598))

(declare-fun m!6602600 () Bool)

(assert (=> b!5631492 m!6602600))

(declare-fun m!6602602 () Bool)

(assert (=> b!5631492 m!6602602))

(declare-fun m!6602604 () Bool)

(assert (=> b!5631476 m!6602604))

(declare-fun m!6602606 () Bool)

(assert (=> b!5631478 m!6602606))

(declare-fun m!6602608 () Bool)

(assert (=> b!5631478 m!6602608))

(declare-fun m!6602610 () Bool)

(assert (=> b!5631478 m!6602610))

(declare-fun m!6602612 () Bool)

(assert (=> b!5631478 m!6602612))

(declare-fun m!6602614 () Bool)

(assert (=> b!5631478 m!6602614))

(declare-fun m!6602616 () Bool)

(assert (=> b!5631478 m!6602616))

(declare-fun m!6602618 () Bool)

(assert (=> b!5631478 m!6602618))

(declare-fun m!6602620 () Bool)

(assert (=> b!5631486 m!6602620))

(declare-fun m!6602622 () Bool)

(assert (=> b!5631490 m!6602622))

(declare-fun m!6602624 () Bool)

(assert (=> b!5631488 m!6602624))

(declare-fun m!6602626 () Bool)

(assert (=> b!5631491 m!6602626))

(declare-fun m!6602628 () Bool)

(assert (=> b!5631491 m!6602628))

(declare-fun m!6602630 () Bool)

(assert (=> b!5631491 m!6602630))

(assert (=> b!5631472 m!6602628))

(declare-fun m!6602632 () Bool)

(assert (=> b!5631472 m!6602632))

(declare-fun m!6602634 () Bool)

(assert (=> b!5631472 m!6602634))

(declare-fun m!6602636 () Bool)

(assert (=> b!5631472 m!6602636))

(declare-fun m!6602638 () Bool)

(assert (=> start!583446 m!6602638))

(declare-fun m!6602640 () Bool)

(assert (=> b!5631497 m!6602640))

(declare-fun m!6602642 () Bool)

(assert (=> b!5631497 m!6602642))

(declare-fun m!6602644 () Bool)

(assert (=> b!5631497 m!6602644))

(assert (=> b!5631497 m!6602640))

(declare-fun m!6602646 () Bool)

(assert (=> b!5631497 m!6602646))

(declare-fun m!6602648 () Bool)

(assert (=> b!5631497 m!6602648))

(assert (=> b!5631497 m!6602642))

(declare-fun m!6602650 () Bool)

(assert (=> b!5631497 m!6602650))

(declare-fun m!6602652 () Bool)

(assert (=> b!5631484 m!6602652))

(declare-fun m!6602654 () Bool)

(assert (=> b!5631484 m!6602654))

(declare-fun m!6602656 () Bool)

(assert (=> b!5631484 m!6602656))

(declare-fun m!6602658 () Bool)

(assert (=> b!5631484 m!6602658))

(declare-fun m!6602660 () Bool)

(assert (=> b!5631484 m!6602660))

(declare-fun m!6602662 () Bool)

(assert (=> b!5631484 m!6602662))

(assert (=> b!5631474 m!6602662))

(declare-fun m!6602664 () Bool)

(assert (=> b!5631474 m!6602664))

(declare-fun m!6602666 () Bool)

(assert (=> b!5631474 m!6602666))

(declare-fun m!6602668 () Bool)

(assert (=> b!5631474 m!6602668))

(declare-fun m!6602670 () Bool)

(assert (=> b!5631474 m!6602670))

(declare-fun m!6602672 () Bool)

(assert (=> b!5631474 m!6602672))

(declare-fun m!6602674 () Bool)

(assert (=> b!5631474 m!6602674))

(declare-fun m!6602676 () Bool)

(assert (=> b!5631482 m!6602676))

(declare-fun m!6602678 () Bool)

(assert (=> b!5631487 m!6602678))

(declare-fun m!6602680 () Bool)

(assert (=> b!5631487 m!6602680))

(declare-fun m!6602682 () Bool)

(assert (=> setNonEmpty!37621 m!6602682))

(declare-fun m!6602684 () Bool)

(assert (=> b!5631479 m!6602684))

(declare-fun m!6602686 () Bool)

(assert (=> b!5631477 m!6602686))

(assert (=> b!5631481 m!6602624))

(declare-fun m!6602688 () Bool)

(assert (=> b!5631489 m!6602688))

(declare-fun m!6602690 () Bool)

(assert (=> b!5631467 m!6602690))

(assert (=> b!5631467 m!6602690))

(declare-fun m!6602692 () Bool)

(assert (=> b!5631467 m!6602692))

(declare-fun m!6602694 () Bool)

(assert (=> b!5631471 m!6602694))

(declare-fun m!6602696 () Bool)

(assert (=> b!5631485 m!6602696))

(assert (=> b!5631485 m!6602696))

(declare-fun m!6602698 () Bool)

(assert (=> b!5631485 m!6602698))

(push 1)

(assert (not b!5631492))

(assert (not b!5631473))

(assert (not setNonEmpty!37621))

(assert (not b!5631488))

(assert (not b!5631474))

(assert (not b!5631467))

(assert (not b!5631491))

(assert (not b!5631477))

(assert (not start!583446))

(assert (not b!5631484))

(assert (not b!5631495))

(assert (not b!5631481))

(assert (not b!5631480))

(assert (not b!5631489))

(assert (not b!5631497))

(assert (not b!5631479))

(assert (not b!5631475))

(assert (not b!5631471))

(assert (not b!5631493))

(assert (not b!5631469))

(assert (not b!5631483))

(assert (not b!5631490))

(assert (not b!5631485))

(assert (not b!5631482))

(assert tp_is_empty!40501)

(assert (not b!5631478))

(assert (not b!5631472))

(assert (not b!5631487))

(assert (not b!5631476))

(assert (not b!5631498))

(assert (not b!5631486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1778772 () Bool)

(declare-fun choose!42688 ((Set Context!10016) Int) (Set Context!10016))

(assert (=> d!1778772 (= (flatMap!1237 lt!2262592 lambda!302653) (choose!42688 lt!2262592 lambda!302653))))

(declare-fun bs!1303220 () Bool)

(assert (= bs!1303220 d!1778772))

(declare-fun m!6602808 () Bool)

(assert (=> bs!1303220 m!6602808))

(assert (=> b!5631474 d!1778772))

(declare-fun b!5631633 () Bool)

(declare-fun e!3470955 () (Set Context!10016))

(assert (=> b!5631633 (= e!3470955 (as set.empty (Set Context!10016)))))

(declare-fun bm!424517 () Bool)

(declare-fun call!424522 () (Set Context!10016))

(assert (=> bm!424517 (= call!424522 (derivationStepZipperDown!966 (h!69495 (exprs!5508 lt!2262588)) (Context!10017 (t!376465 (exprs!5508 lt!2262588))) (h!69497 s!2326)))))

(declare-fun b!5631634 () Bool)

(declare-fun e!3470956 () Bool)

(assert (=> b!5631634 (= e!3470956 (nullable!5656 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun b!5631635 () Bool)

(assert (=> b!5631635 (= e!3470955 call!424522)))

(declare-fun b!5631637 () Bool)

(declare-fun e!3470957 () (Set Context!10016))

(assert (=> b!5631637 (= e!3470957 e!3470955)))

(declare-fun c!988965 () Bool)

(assert (=> b!5631637 (= c!988965 (is-Cons!63047 (exprs!5508 lt!2262588)))))

(declare-fun d!1778774 () Bool)

(declare-fun c!988964 () Bool)

(assert (=> d!1778774 (= c!988964 e!3470956)))

(declare-fun res!2384905 () Bool)

(assert (=> d!1778774 (=> (not res!2384905) (not e!3470956))))

(assert (=> d!1778774 (= res!2384905 (is-Cons!63047 (exprs!5508 lt!2262588)))))

(assert (=> d!1778774 (= (derivationStepZipperUp!892 lt!2262588 (h!69497 s!2326)) e!3470957)))

(declare-fun b!5631636 () Bool)

(assert (=> b!5631636 (= e!3470957 (set.union call!424522 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 lt!2262588))) (h!69497 s!2326))))))

(assert (= (and d!1778774 res!2384905) b!5631634))

(assert (= (and d!1778774 c!988964) b!5631636))

(assert (= (and d!1778774 (not c!988964)) b!5631637))

(assert (= (and b!5631637 c!988965) b!5631635))

(assert (= (and b!5631637 (not c!988965)) b!5631633))

(assert (= (or b!5631636 b!5631635) bm!424517))

(declare-fun m!6602810 () Bool)

(assert (=> bm!424517 m!6602810))

(declare-fun m!6602812 () Bool)

(assert (=> b!5631634 m!6602812))

(declare-fun m!6602814 () Bool)

(assert (=> b!5631636 m!6602814))

(assert (=> b!5631474 d!1778774))

(declare-fun b!5631638 () Bool)

(declare-fun e!3470958 () (Set Context!10016))

(assert (=> b!5631638 (= e!3470958 (as set.empty (Set Context!10016)))))

(declare-fun bm!424518 () Bool)

(declare-fun call!424523 () (Set Context!10016))

(assert (=> bm!424518 (= call!424523 (derivationStepZipperDown!966 (h!69495 (exprs!5508 lt!2262573)) (Context!10017 (t!376465 (exprs!5508 lt!2262573))) (h!69497 s!2326)))))

(declare-fun b!5631639 () Bool)

(declare-fun e!3470959 () Bool)

(assert (=> b!5631639 (= e!3470959 (nullable!5656 (h!69495 (exprs!5508 lt!2262573))))))

(declare-fun b!5631640 () Bool)

(assert (=> b!5631640 (= e!3470958 call!424523)))

(declare-fun b!5631642 () Bool)

(declare-fun e!3470960 () (Set Context!10016))

(assert (=> b!5631642 (= e!3470960 e!3470958)))

(declare-fun c!988967 () Bool)

(assert (=> b!5631642 (= c!988967 (is-Cons!63047 (exprs!5508 lt!2262573)))))

(declare-fun d!1778776 () Bool)

(declare-fun c!988966 () Bool)

(assert (=> d!1778776 (= c!988966 e!3470959)))

(declare-fun res!2384906 () Bool)

(assert (=> d!1778776 (=> (not res!2384906) (not e!3470959))))

(assert (=> d!1778776 (= res!2384906 (is-Cons!63047 (exprs!5508 lt!2262573)))))

(assert (=> d!1778776 (= (derivationStepZipperUp!892 lt!2262573 (h!69497 s!2326)) e!3470960)))

(declare-fun b!5631641 () Bool)

(assert (=> b!5631641 (= e!3470960 (set.union call!424523 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 lt!2262573))) (h!69497 s!2326))))))

(assert (= (and d!1778776 res!2384906) b!5631639))

(assert (= (and d!1778776 c!988966) b!5631641))

(assert (= (and d!1778776 (not c!988966)) b!5631642))

(assert (= (and b!5631642 c!988967) b!5631640))

(assert (= (and b!5631642 (not c!988967)) b!5631638))

(assert (= (or b!5631641 b!5631640) bm!424518))

(declare-fun m!6602816 () Bool)

(assert (=> bm!424518 m!6602816))

(declare-fun m!6602818 () Bool)

(assert (=> b!5631639 m!6602818))

(declare-fun m!6602820 () Bool)

(assert (=> b!5631641 m!6602820))

(assert (=> b!5631474 d!1778776))

(declare-fun d!1778778 () Bool)

(declare-fun dynLambda!24655 (Int Context!10016) (Set Context!10016))

(assert (=> d!1778778 (= (flatMap!1237 lt!2262592 lambda!302653) (dynLambda!24655 lambda!302653 lt!2262588))))

(declare-fun lt!2262685 () Unit!156028)

(declare-fun choose!42689 ((Set Context!10016) Context!10016 Int) Unit!156028)

(assert (=> d!1778778 (= lt!2262685 (choose!42689 lt!2262592 lt!2262588 lambda!302653))))

(assert (=> d!1778778 (= lt!2262592 (set.insert lt!2262588 (as set.empty (Set Context!10016))))))

(assert (=> d!1778778 (= (lemmaFlatMapOnSingletonSet!769 lt!2262592 lt!2262588 lambda!302653) lt!2262685)))

(declare-fun b_lambda!212971 () Bool)

(assert (=> (not b_lambda!212971) (not d!1778778)))

(declare-fun bs!1303221 () Bool)

(assert (= bs!1303221 d!1778778))

(assert (=> bs!1303221 m!6602672))

(declare-fun m!6602822 () Bool)

(assert (=> bs!1303221 m!6602822))

(declare-fun m!6602824 () Bool)

(assert (=> bs!1303221 m!6602824))

(assert (=> bs!1303221 m!6602674))

(assert (=> b!5631474 d!1778778))

(declare-fun bs!1303222 () Bool)

(declare-fun d!1778780 () Bool)

(assert (= bs!1303222 (and d!1778780 b!5631478)))

(declare-fun lambda!302671 () Int)

(assert (=> bs!1303222 (= lambda!302671 lambda!302653)))

(assert (=> d!1778780 true))

(assert (=> d!1778780 (= (derivationStepZipper!1711 lt!2262592 (h!69497 s!2326)) (flatMap!1237 lt!2262592 lambda!302671))))

(declare-fun bs!1303223 () Bool)

(assert (= bs!1303223 d!1778780))

(declare-fun m!6602826 () Bool)

(assert (=> bs!1303223 m!6602826))

(assert (=> b!5631474 d!1778780))

(declare-fun d!1778782 () Bool)

(declare-fun e!3470963 () Bool)

(assert (=> d!1778782 e!3470963))

(declare-fun res!2384909 () Bool)

(assert (=> d!1778782 (=> (not res!2384909) (not e!3470963))))

(declare-fun lt!2262688 () List!63172)

(declare-fun noDuplicate!1587 (List!63172) Bool)

(assert (=> d!1778782 (= res!2384909 (noDuplicate!1587 lt!2262688))))

(declare-fun choose!42690 ((Set Context!10016)) List!63172)

(assert (=> d!1778782 (= lt!2262688 (choose!42690 z!1189))))

(assert (=> d!1778782 (= (toList!9408 z!1189) lt!2262688)))

(declare-fun b!5631647 () Bool)

(declare-fun content!11400 (List!63172) (Set Context!10016))

(assert (=> b!5631647 (= e!3470963 (= (content!11400 lt!2262688) z!1189))))

(assert (= (and d!1778782 res!2384909) b!5631647))

(declare-fun m!6602828 () Bool)

(assert (=> d!1778782 m!6602828))

(declare-fun m!6602830 () Bool)

(assert (=> d!1778782 m!6602830))

(declare-fun m!6602832 () Bool)

(assert (=> b!5631647 m!6602832))

(assert (=> b!5631493 d!1778782))

(declare-fun bs!1303224 () Bool)

(declare-fun b!5631688 () Bool)

(assert (= bs!1303224 (and b!5631688 b!5631497)))

(declare-fun lambda!302676 () Int)

(assert (=> bs!1303224 (not (= lambda!302676 lambda!302651))))

(assert (=> bs!1303224 (not (= lambda!302676 lambda!302652))))

(assert (=> b!5631688 true))

(assert (=> b!5631688 true))

(declare-fun bs!1303225 () Bool)

(declare-fun b!5631684 () Bool)

(assert (= bs!1303225 (and b!5631684 b!5631497)))

(declare-fun lambda!302677 () Int)

(assert (=> bs!1303225 (not (= lambda!302677 lambda!302651))))

(assert (=> bs!1303225 (= lambda!302677 lambda!302652)))

(declare-fun bs!1303226 () Bool)

(assert (= bs!1303226 (and b!5631684 b!5631688)))

(assert (=> bs!1303226 (not (= lambda!302677 lambda!302676))))

(assert (=> b!5631684 true))

(assert (=> b!5631684 true))

(declare-fun b!5631680 () Bool)

(declare-fun c!988979 () Bool)

(assert (=> b!5631680 (= c!988979 (is-Union!15624 r!7292))))

(declare-fun e!3470986 () Bool)

(declare-fun e!3470988 () Bool)

(assert (=> b!5631680 (= e!3470986 e!3470988)))

(declare-fun b!5631681 () Bool)

(declare-fun e!3470987 () Bool)

(declare-fun e!3470985 () Bool)

(assert (=> b!5631681 (= e!3470987 e!3470985)))

(declare-fun res!2384927 () Bool)

(assert (=> b!5631681 (= res!2384927 (not (is-EmptyLang!15624 r!7292)))))

(assert (=> b!5631681 (=> (not res!2384927) (not e!3470985))))

(declare-fun d!1778784 () Bool)

(declare-fun c!988981 () Bool)

(assert (=> d!1778784 (= c!988981 (is-EmptyExpr!15624 r!7292))))

(assert (=> d!1778784 (= (matchRSpec!2727 r!7292 s!2326) e!3470987)))

(declare-fun b!5631682 () Bool)

(declare-fun e!3470983 () Bool)

(assert (=> b!5631682 (= e!3470988 e!3470983)))

(declare-fun c!988980 () Bool)

(assert (=> b!5631682 (= c!988980 (is-Star!15624 r!7292))))

(declare-fun b!5631683 () Bool)

(assert (=> b!5631683 (= e!3470986 (= s!2326 (Cons!63049 (c!988948 r!7292) Nil!63049)))))

(declare-fun call!424528 () Bool)

(assert (=> b!5631684 (= e!3470983 call!424528)))

(declare-fun b!5631685 () Bool)

(declare-fun res!2384926 () Bool)

(declare-fun e!3470984 () Bool)

(assert (=> b!5631685 (=> res!2384926 e!3470984)))

(declare-fun call!424529 () Bool)

(assert (=> b!5631685 (= res!2384926 call!424529)))

(assert (=> b!5631685 (= e!3470983 e!3470984)))

(declare-fun b!5631686 () Bool)

(declare-fun c!988978 () Bool)

(assert (=> b!5631686 (= c!988978 (is-ElementMatch!15624 r!7292))))

(assert (=> b!5631686 (= e!3470985 e!3470986)))

(declare-fun bm!424523 () Bool)

(assert (=> bm!424523 (= call!424528 (Exists!2724 (ite c!988980 lambda!302676 lambda!302677)))))

(declare-fun b!5631687 () Bool)

(assert (=> b!5631687 (= e!3470987 call!424529)))

(assert (=> b!5631688 (= e!3470984 call!424528)))

(declare-fun b!5631689 () Bool)

(declare-fun e!3470982 () Bool)

(assert (=> b!5631689 (= e!3470988 e!3470982)))

(declare-fun res!2384928 () Bool)

(assert (=> b!5631689 (= res!2384928 (matchRSpec!2727 (regOne!31761 r!7292) s!2326))))

(assert (=> b!5631689 (=> res!2384928 e!3470982)))

(declare-fun b!5631690 () Bool)

(assert (=> b!5631690 (= e!3470982 (matchRSpec!2727 (regTwo!31761 r!7292) s!2326))))

(declare-fun bm!424524 () Bool)

(declare-fun isEmpty!34891 (List!63173) Bool)

(assert (=> bm!424524 (= call!424529 (isEmpty!34891 s!2326))))

(assert (= (and d!1778784 c!988981) b!5631687))

(assert (= (and d!1778784 (not c!988981)) b!5631681))

(assert (= (and b!5631681 res!2384927) b!5631686))

(assert (= (and b!5631686 c!988978) b!5631683))

(assert (= (and b!5631686 (not c!988978)) b!5631680))

(assert (= (and b!5631680 c!988979) b!5631689))

(assert (= (and b!5631680 (not c!988979)) b!5631682))

(assert (= (and b!5631689 (not res!2384928)) b!5631690))

(assert (= (and b!5631682 c!988980) b!5631685))

(assert (= (and b!5631682 (not c!988980)) b!5631684))

(assert (= (and b!5631685 (not res!2384926)) b!5631688))

(assert (= (or b!5631688 b!5631684) bm!424523))

(assert (= (or b!5631687 b!5631685) bm!424524))

(declare-fun m!6602834 () Bool)

(assert (=> bm!424523 m!6602834))

(declare-fun m!6602836 () Bool)

(assert (=> b!5631689 m!6602836))

(declare-fun m!6602838 () Bool)

(assert (=> b!5631690 m!6602838))

(declare-fun m!6602840 () Bool)

(assert (=> bm!424524 m!6602840))

(assert (=> b!5631475 d!1778784))

(declare-fun b!5631719 () Bool)

(declare-fun e!3471007 () Bool)

(declare-fun derivativeStep!4460 (Regex!15624 C!31518) Regex!15624)

(declare-fun head!11992 (List!63173) C!31518)

(declare-fun tail!11087 (List!63173) List!63173)

(assert (=> b!5631719 (= e!3471007 (matchR!7809 (derivativeStep!4460 r!7292 (head!11992 s!2326)) (tail!11087 s!2326)))))

(declare-fun b!5631720 () Bool)

(declare-fun e!3471009 () Bool)

(declare-fun e!3471006 () Bool)

(assert (=> b!5631720 (= e!3471009 e!3471006)))

(declare-fun res!2384946 () Bool)

(assert (=> b!5631720 (=> res!2384946 e!3471006)))

(declare-fun call!424532 () Bool)

(assert (=> b!5631720 (= res!2384946 call!424532)))

(declare-fun b!5631721 () Bool)

(assert (=> b!5631721 (= e!3471007 (nullable!5656 r!7292))))

(declare-fun bm!424527 () Bool)

(assert (=> bm!424527 (= call!424532 (isEmpty!34891 s!2326))))

(declare-fun b!5631722 () Bool)

(assert (=> b!5631722 (= e!3471006 (not (= (head!11992 s!2326) (c!988948 r!7292))))))

(declare-fun b!5631723 () Bool)

(declare-fun e!3471003 () Bool)

(assert (=> b!5631723 (= e!3471003 e!3471009)))

(declare-fun res!2384948 () Bool)

(assert (=> b!5631723 (=> (not res!2384948) (not e!3471009))))

(declare-fun lt!2262691 () Bool)

(assert (=> b!5631723 (= res!2384948 (not lt!2262691))))

(declare-fun b!5631724 () Bool)

(declare-fun res!2384947 () Bool)

(assert (=> b!5631724 (=> res!2384947 e!3471003)))

(declare-fun e!3471008 () Bool)

(assert (=> b!5631724 (= res!2384947 e!3471008)))

(declare-fun res!2384945 () Bool)

(assert (=> b!5631724 (=> (not res!2384945) (not e!3471008))))

(assert (=> b!5631724 (= res!2384945 lt!2262691)))

(declare-fun b!5631725 () Bool)

(declare-fun res!2384949 () Bool)

(assert (=> b!5631725 (=> (not res!2384949) (not e!3471008))))

(assert (=> b!5631725 (= res!2384949 (isEmpty!34891 (tail!11087 s!2326)))))

(declare-fun b!5631726 () Bool)

(declare-fun res!2384952 () Bool)

(assert (=> b!5631726 (=> (not res!2384952) (not e!3471008))))

(assert (=> b!5631726 (= res!2384952 (not call!424532))))

(declare-fun b!5631727 () Bool)

(assert (=> b!5631727 (= e!3471008 (= (head!11992 s!2326) (c!988948 r!7292)))))

(declare-fun b!5631728 () Bool)

(declare-fun e!3471004 () Bool)

(assert (=> b!5631728 (= e!3471004 (not lt!2262691))))

(declare-fun b!5631729 () Bool)

(declare-fun e!3471005 () Bool)

(assert (=> b!5631729 (= e!3471005 e!3471004)))

(declare-fun c!988990 () Bool)

(assert (=> b!5631729 (= c!988990 (is-EmptyLang!15624 r!7292))))

(declare-fun b!5631730 () Bool)

(declare-fun res!2384951 () Bool)

(assert (=> b!5631730 (=> res!2384951 e!3471003)))

(assert (=> b!5631730 (= res!2384951 (not (is-ElementMatch!15624 r!7292)))))

(assert (=> b!5631730 (= e!3471004 e!3471003)))

(declare-fun b!5631731 () Bool)

(assert (=> b!5631731 (= e!3471005 (= lt!2262691 call!424532))))

(declare-fun d!1778786 () Bool)

(assert (=> d!1778786 e!3471005))

(declare-fun c!988989 () Bool)

(assert (=> d!1778786 (= c!988989 (is-EmptyExpr!15624 r!7292))))

(assert (=> d!1778786 (= lt!2262691 e!3471007)))

(declare-fun c!988988 () Bool)

(assert (=> d!1778786 (= c!988988 (isEmpty!34891 s!2326))))

(assert (=> d!1778786 (validRegex!7360 r!7292)))

(assert (=> d!1778786 (= (matchR!7809 r!7292 s!2326) lt!2262691)))

(declare-fun b!5631732 () Bool)

(declare-fun res!2384950 () Bool)

(assert (=> b!5631732 (=> res!2384950 e!3471006)))

(assert (=> b!5631732 (= res!2384950 (not (isEmpty!34891 (tail!11087 s!2326))))))

(assert (= (and d!1778786 c!988988) b!5631721))

(assert (= (and d!1778786 (not c!988988)) b!5631719))

(assert (= (and d!1778786 c!988989) b!5631731))

(assert (= (and d!1778786 (not c!988989)) b!5631729))

(assert (= (and b!5631729 c!988990) b!5631728))

(assert (= (and b!5631729 (not c!988990)) b!5631730))

(assert (= (and b!5631730 (not res!2384951)) b!5631724))

(assert (= (and b!5631724 res!2384945) b!5631726))

(assert (= (and b!5631726 res!2384952) b!5631725))

(assert (= (and b!5631725 res!2384949) b!5631727))

(assert (= (and b!5631724 (not res!2384947)) b!5631723))

(assert (= (and b!5631723 res!2384948) b!5631720))

(assert (= (and b!5631720 (not res!2384946)) b!5631732))

(assert (= (and b!5631732 (not res!2384950)) b!5631722))

(assert (= (or b!5631731 b!5631720 b!5631726) bm!424527))

(assert (=> bm!424527 m!6602840))

(declare-fun m!6602842 () Bool)

(assert (=> b!5631727 m!6602842))

(assert (=> d!1778786 m!6602840))

(assert (=> d!1778786 m!6602638))

(assert (=> b!5631719 m!6602842))

(assert (=> b!5631719 m!6602842))

(declare-fun m!6602844 () Bool)

(assert (=> b!5631719 m!6602844))

(declare-fun m!6602846 () Bool)

(assert (=> b!5631719 m!6602846))

(assert (=> b!5631719 m!6602844))

(assert (=> b!5631719 m!6602846))

(declare-fun m!6602848 () Bool)

(assert (=> b!5631719 m!6602848))

(assert (=> b!5631725 m!6602846))

(assert (=> b!5631725 m!6602846))

(declare-fun m!6602850 () Bool)

(assert (=> b!5631725 m!6602850))

(assert (=> b!5631722 m!6602842))

(assert (=> b!5631732 m!6602846))

(assert (=> b!5631732 m!6602846))

(assert (=> b!5631732 m!6602850))

(declare-fun m!6602852 () Bool)

(assert (=> b!5631721 m!6602852))

(assert (=> b!5631475 d!1778786))

(declare-fun d!1778788 () Bool)

(assert (=> d!1778788 (= (matchR!7809 r!7292 s!2326) (matchRSpec!2727 r!7292 s!2326))))

(declare-fun lt!2262694 () Unit!156028)

(declare-fun choose!42691 (Regex!15624 List!63173) Unit!156028)

(assert (=> d!1778788 (= lt!2262694 (choose!42691 r!7292 s!2326))))

(assert (=> d!1778788 (validRegex!7360 r!7292)))

(assert (=> d!1778788 (= (mainMatchTheorem!2727 r!7292 s!2326) lt!2262694)))

(declare-fun bs!1303227 () Bool)

(assert (= bs!1303227 d!1778788))

(assert (=> bs!1303227 m!6602596))

(assert (=> bs!1303227 m!6602594))

(declare-fun m!6602854 () Bool)

(assert (=> bs!1303227 m!6602854))

(assert (=> bs!1303227 m!6602638))

(assert (=> b!5631475 d!1778788))

(declare-fun b!5631753 () Bool)

(declare-fun e!3471027 () Bool)

(declare-fun lt!2262697 () Regex!15624)

(declare-fun isEmptyExpr!1165 (Regex!15624) Bool)

(assert (=> b!5631753 (= e!3471027 (isEmptyExpr!1165 lt!2262697))))

(declare-fun b!5631754 () Bool)

(declare-fun e!3471026 () Bool)

(assert (=> b!5631754 (= e!3471026 (isEmpty!34888 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5631755 () Bool)

(declare-fun e!3471024 () Bool)

(declare-fun head!11993 (List!63171) Regex!15624)

(assert (=> b!5631755 (= e!3471024 (= lt!2262697 (head!11993 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5631756 () Bool)

(declare-fun e!3471023 () Regex!15624)

(assert (=> b!5631756 (= e!3471023 (h!69495 (exprs!5508 (h!69496 zl!343))))))

(declare-fun b!5631757 () Bool)

(declare-fun e!3471025 () Regex!15624)

(assert (=> b!5631757 (= e!3471023 e!3471025)))

(declare-fun c!989000 () Bool)

(assert (=> b!5631757 (= c!989000 (is-Cons!63047 (exprs!5508 (h!69496 zl!343))))))

(declare-fun b!5631758 () Bool)

(assert (=> b!5631758 (= e!3471025 EmptyExpr!15624)))

(declare-fun d!1778790 () Bool)

(declare-fun e!3471022 () Bool)

(assert (=> d!1778790 e!3471022))

(declare-fun res!2384957 () Bool)

(assert (=> d!1778790 (=> (not res!2384957) (not e!3471022))))

(assert (=> d!1778790 (= res!2384957 (validRegex!7360 lt!2262697))))

(assert (=> d!1778790 (= lt!2262697 e!3471023)))

(declare-fun c!988999 () Bool)

(assert (=> d!1778790 (= c!988999 e!3471026)))

(declare-fun res!2384958 () Bool)

(assert (=> d!1778790 (=> (not res!2384958) (not e!3471026))))

(assert (=> d!1778790 (= res!2384958 (is-Cons!63047 (exprs!5508 (h!69496 zl!343))))))

(declare-fun lambda!302680 () Int)

(declare-fun forall!14778 (List!63171 Int) Bool)

(assert (=> d!1778790 (forall!14778 (exprs!5508 (h!69496 zl!343)) lambda!302680)))

(assert (=> d!1778790 (= (generalisedConcat!1239 (exprs!5508 (h!69496 zl!343))) lt!2262697)))

(declare-fun b!5631759 () Bool)

(assert (=> b!5631759 (= e!3471025 (Concat!24469 (h!69495 (exprs!5508 (h!69496 zl!343))) (generalisedConcat!1239 (t!376465 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5631760 () Bool)

(assert (=> b!5631760 (= e!3471027 e!3471024)))

(declare-fun c!989001 () Bool)

(declare-fun tail!11088 (List!63171) List!63171)

(assert (=> b!5631760 (= c!989001 (isEmpty!34888 (tail!11088 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5631761 () Bool)

(assert (=> b!5631761 (= e!3471022 e!3471027)))

(declare-fun c!989002 () Bool)

(assert (=> b!5631761 (= c!989002 (isEmpty!34888 (exprs!5508 (h!69496 zl!343))))))

(declare-fun b!5631762 () Bool)

(declare-fun isConcat!688 (Regex!15624) Bool)

(assert (=> b!5631762 (= e!3471024 (isConcat!688 lt!2262697))))

(assert (= (and d!1778790 res!2384958) b!5631754))

(assert (= (and d!1778790 c!988999) b!5631756))

(assert (= (and d!1778790 (not c!988999)) b!5631757))

(assert (= (and b!5631757 c!989000) b!5631759))

(assert (= (and b!5631757 (not c!989000)) b!5631758))

(assert (= (and d!1778790 res!2384957) b!5631761))

(assert (= (and b!5631761 c!989002) b!5631753))

(assert (= (and b!5631761 (not c!989002)) b!5631760))

(assert (= (and b!5631760 c!989001) b!5631755))

(assert (= (and b!5631760 (not c!989001)) b!5631762))

(declare-fun m!6602856 () Bool)

(assert (=> b!5631755 m!6602856))

(declare-fun m!6602858 () Bool)

(assert (=> d!1778790 m!6602858))

(declare-fun m!6602860 () Bool)

(assert (=> d!1778790 m!6602860))

(declare-fun m!6602862 () Bool)

(assert (=> b!5631753 m!6602862))

(assert (=> b!5631754 m!6602688))

(declare-fun m!6602864 () Bool)

(assert (=> b!5631761 m!6602864))

(declare-fun m!6602866 () Bool)

(assert (=> b!5631762 m!6602866))

(declare-fun m!6602868 () Bool)

(assert (=> b!5631759 m!6602868))

(declare-fun m!6602870 () Bool)

(assert (=> b!5631760 m!6602870))

(assert (=> b!5631760 m!6602870))

(declare-fun m!6602872 () Bool)

(assert (=> b!5631760 m!6602872))

(assert (=> b!5631490 d!1778790))

(declare-fun d!1778792 () Bool)

(declare-fun c!989005 () Bool)

(assert (=> d!1778792 (= c!989005 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471030 () Bool)

(assert (=> d!1778792 (= (matchZipper!1762 lt!2262565 (t!376467 s!2326)) e!3471030)))

(declare-fun b!5631767 () Bool)

(declare-fun nullableZipper!1606 ((Set Context!10016)) Bool)

(assert (=> b!5631767 (= e!3471030 (nullableZipper!1606 lt!2262565))))

(declare-fun b!5631768 () Bool)

(assert (=> b!5631768 (= e!3471030 (matchZipper!1762 (derivationStepZipper!1711 lt!2262565 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778792 c!989005) b!5631767))

(assert (= (and d!1778792 (not c!989005)) b!5631768))

(declare-fun m!6602874 () Bool)

(assert (=> d!1778792 m!6602874))

(declare-fun m!6602876 () Bool)

(assert (=> b!5631767 m!6602876))

(declare-fun m!6602878 () Bool)

(assert (=> b!5631768 m!6602878))

(assert (=> b!5631768 m!6602878))

(declare-fun m!6602880 () Bool)

(assert (=> b!5631768 m!6602880))

(declare-fun m!6602882 () Bool)

(assert (=> b!5631768 m!6602882))

(assert (=> b!5631768 m!6602880))

(assert (=> b!5631768 m!6602882))

(declare-fun m!6602884 () Bool)

(assert (=> b!5631768 m!6602884))

(assert (=> b!5631471 d!1778792))

(declare-fun d!1778794 () Bool)

(declare-fun c!989006 () Bool)

(assert (=> d!1778794 (= c!989006 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471031 () Bool)

(assert (=> d!1778794 (= (matchZipper!1762 lt!2262574 (t!376467 s!2326)) e!3471031)))

(declare-fun b!5631769 () Bool)

(assert (=> b!5631769 (= e!3471031 (nullableZipper!1606 lt!2262574))))

(declare-fun b!5631770 () Bool)

(assert (=> b!5631770 (= e!3471031 (matchZipper!1762 (derivationStepZipper!1711 lt!2262574 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778794 c!989006) b!5631769))

(assert (= (and d!1778794 (not c!989006)) b!5631770))

(assert (=> d!1778794 m!6602874))

(declare-fun m!6602886 () Bool)

(assert (=> b!5631769 m!6602886))

(assert (=> b!5631770 m!6602878))

(assert (=> b!5631770 m!6602878))

(declare-fun m!6602888 () Bool)

(assert (=> b!5631770 m!6602888))

(assert (=> b!5631770 m!6602882))

(assert (=> b!5631770 m!6602888))

(assert (=> b!5631770 m!6602882))

(declare-fun m!6602890 () Bool)

(assert (=> b!5631770 m!6602890))

(assert (=> b!5631472 d!1778794))

(declare-fun d!1778796 () Bool)

(declare-fun c!989007 () Bool)

(assert (=> d!1778796 (= c!989007 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471032 () Bool)

(assert (=> d!1778796 (= (matchZipper!1762 lt!2262571 (t!376467 s!2326)) e!3471032)))

(declare-fun b!5631771 () Bool)

(assert (=> b!5631771 (= e!3471032 (nullableZipper!1606 lt!2262571))))

(declare-fun b!5631772 () Bool)

(assert (=> b!5631772 (= e!3471032 (matchZipper!1762 (derivationStepZipper!1711 lt!2262571 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778796 c!989007) b!5631771))

(assert (= (and d!1778796 (not c!989007)) b!5631772))

(assert (=> d!1778796 m!6602874))

(declare-fun m!6602892 () Bool)

(assert (=> b!5631771 m!6602892))

(assert (=> b!5631772 m!6602878))

(assert (=> b!5631772 m!6602878))

(declare-fun m!6602894 () Bool)

(assert (=> b!5631772 m!6602894))

(assert (=> b!5631772 m!6602882))

(assert (=> b!5631772 m!6602894))

(assert (=> b!5631772 m!6602882))

(declare-fun m!6602896 () Bool)

(assert (=> b!5631772 m!6602896))

(assert (=> b!5631472 d!1778796))

(declare-fun d!1778798 () Bool)

(declare-fun c!989008 () Bool)

(assert (=> d!1778798 (= c!989008 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471033 () Bool)

(assert (=> d!1778798 (= (matchZipper!1762 lt!2262586 (t!376467 s!2326)) e!3471033)))

(declare-fun b!5631773 () Bool)

(assert (=> b!5631773 (= e!3471033 (nullableZipper!1606 lt!2262586))))

(declare-fun b!5631774 () Bool)

(assert (=> b!5631774 (= e!3471033 (matchZipper!1762 (derivationStepZipper!1711 lt!2262586 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778798 c!989008) b!5631773))

(assert (= (and d!1778798 (not c!989008)) b!5631774))

(assert (=> d!1778798 m!6602874))

(declare-fun m!6602898 () Bool)

(assert (=> b!5631773 m!6602898))

(assert (=> b!5631774 m!6602878))

(assert (=> b!5631774 m!6602878))

(declare-fun m!6602900 () Bool)

(assert (=> b!5631774 m!6602900))

(assert (=> b!5631774 m!6602882))

(assert (=> b!5631774 m!6602900))

(assert (=> b!5631774 m!6602882))

(declare-fun m!6602902 () Bool)

(assert (=> b!5631774 m!6602902))

(assert (=> b!5631472 d!1778798))

(declare-fun e!3471036 () Bool)

(declare-fun d!1778800 () Bool)

(assert (=> d!1778800 (= (matchZipper!1762 (set.union lt!2262586 lt!2262576) (t!376467 s!2326)) e!3471036)))

(declare-fun res!2384961 () Bool)

(assert (=> d!1778800 (=> res!2384961 e!3471036)))

(assert (=> d!1778800 (= res!2384961 (matchZipper!1762 lt!2262586 (t!376467 s!2326)))))

(declare-fun lt!2262700 () Unit!156028)

(declare-fun choose!42692 ((Set Context!10016) (Set Context!10016) List!63173) Unit!156028)

(assert (=> d!1778800 (= lt!2262700 (choose!42692 lt!2262586 lt!2262576 (t!376467 s!2326)))))

(assert (=> d!1778800 (= (lemmaZipperConcatMatchesSameAsBothZippers!649 lt!2262586 lt!2262576 (t!376467 s!2326)) lt!2262700)))

(declare-fun b!5631777 () Bool)

(assert (=> b!5631777 (= e!3471036 (matchZipper!1762 lt!2262576 (t!376467 s!2326)))))

(assert (= (and d!1778800 (not res!2384961)) b!5631777))

(declare-fun m!6602904 () Bool)

(assert (=> d!1778800 m!6602904))

(assert (=> d!1778800 m!6602634))

(declare-fun m!6602906 () Bool)

(assert (=> d!1778800 m!6602906))

(assert (=> b!5631777 m!6602624))

(assert (=> b!5631472 d!1778800))

(declare-fun e!3471037 () Bool)

(declare-fun d!1778802 () Bool)

(assert (=> d!1778802 (= (matchZipper!1762 (set.union lt!2262574 lt!2262587) (t!376467 s!2326)) e!3471037)))

(declare-fun res!2384962 () Bool)

(assert (=> d!1778802 (=> res!2384962 e!3471037)))

(assert (=> d!1778802 (= res!2384962 (matchZipper!1762 lt!2262574 (t!376467 s!2326)))))

(declare-fun lt!2262701 () Unit!156028)

(assert (=> d!1778802 (= lt!2262701 (choose!42692 lt!2262574 lt!2262587 (t!376467 s!2326)))))

(assert (=> d!1778802 (= (lemmaZipperConcatMatchesSameAsBothZippers!649 lt!2262574 lt!2262587 (t!376467 s!2326)) lt!2262701)))

(declare-fun b!5631778 () Bool)

(assert (=> b!5631778 (= e!3471037 (matchZipper!1762 lt!2262587 (t!376467 s!2326)))))

(assert (= (and d!1778802 (not res!2384962)) b!5631778))

(assert (=> d!1778802 m!6602630))

(assert (=> d!1778802 m!6602628))

(declare-fun m!6602908 () Bool)

(assert (=> d!1778802 m!6602908))

(assert (=> b!5631778 m!6602676))

(assert (=> b!5631491 d!1778802))

(assert (=> b!5631491 d!1778794))

(declare-fun d!1778804 () Bool)

(declare-fun c!989009 () Bool)

(assert (=> d!1778804 (= c!989009 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471038 () Bool)

(assert (=> d!1778804 (= (matchZipper!1762 (set.union lt!2262574 lt!2262587) (t!376467 s!2326)) e!3471038)))

(declare-fun b!5631779 () Bool)

(assert (=> b!5631779 (= e!3471038 (nullableZipper!1606 (set.union lt!2262574 lt!2262587)))))

(declare-fun b!5631780 () Bool)

(assert (=> b!5631780 (= e!3471038 (matchZipper!1762 (derivationStepZipper!1711 (set.union lt!2262574 lt!2262587) (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778804 c!989009) b!5631779))

(assert (= (and d!1778804 (not c!989009)) b!5631780))

(assert (=> d!1778804 m!6602874))

(declare-fun m!6602910 () Bool)

(assert (=> b!5631779 m!6602910))

(assert (=> b!5631780 m!6602878))

(assert (=> b!5631780 m!6602878))

(declare-fun m!6602912 () Bool)

(assert (=> b!5631780 m!6602912))

(assert (=> b!5631780 m!6602882))

(assert (=> b!5631780 m!6602912))

(assert (=> b!5631780 m!6602882))

(declare-fun m!6602914 () Bool)

(assert (=> b!5631780 m!6602914))

(assert (=> b!5631491 d!1778804))

(declare-fun d!1778806 () Bool)

(declare-fun lt!2262704 () Int)

(assert (=> d!1778806 (>= lt!2262704 0)))

(declare-fun e!3471041 () Int)

(assert (=> d!1778806 (= lt!2262704 e!3471041)))

(declare-fun c!989013 () Bool)

(assert (=> d!1778806 (= c!989013 (is-Cons!63047 (exprs!5508 lt!2262588)))))

(assert (=> d!1778806 (= (contextDepthTotal!209 lt!2262588) lt!2262704)))

(declare-fun b!5631785 () Bool)

(declare-fun regexDepthTotal!88 (Regex!15624) Int)

(assert (=> b!5631785 (= e!3471041 (+ (regexDepthTotal!88 (h!69495 (exprs!5508 lt!2262588))) (contextDepthTotal!209 (Context!10017 (t!376465 (exprs!5508 lt!2262588))))))))

(declare-fun b!5631786 () Bool)

(assert (=> b!5631786 (= e!3471041 1)))

(assert (= (and d!1778806 c!989013) b!5631785))

(assert (= (and d!1778806 (not c!989013)) b!5631786))

(declare-fun m!6602916 () Bool)

(assert (=> b!5631785 m!6602916))

(declare-fun m!6602918 () Bool)

(assert (=> b!5631785 m!6602918))

(assert (=> b!5631492 d!1778806))

(declare-fun d!1778808 () Bool)

(declare-fun lt!2262705 () Int)

(assert (=> d!1778808 (>= lt!2262705 0)))

(declare-fun e!3471042 () Int)

(assert (=> d!1778808 (= lt!2262705 e!3471042)))

(declare-fun c!989014 () Bool)

(assert (=> d!1778808 (= c!989014 (is-Cons!63047 (exprs!5508 (h!69496 zl!343))))))

(assert (=> d!1778808 (= (contextDepthTotal!209 (h!69496 zl!343)) lt!2262705)))

(declare-fun b!5631787 () Bool)

(assert (=> b!5631787 (= e!3471042 (+ (regexDepthTotal!88 (h!69495 (exprs!5508 (h!69496 zl!343)))) (contextDepthTotal!209 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun b!5631788 () Bool)

(assert (=> b!5631788 (= e!3471042 1)))

(assert (= (and d!1778808 c!989014) b!5631787))

(assert (= (and d!1778808 (not c!989014)) b!5631788))

(declare-fun m!6602920 () Bool)

(assert (=> b!5631787 m!6602920))

(declare-fun m!6602922 () Bool)

(assert (=> b!5631787 m!6602922))

(assert (=> b!5631492 d!1778808))

(declare-fun b!5631811 () Bool)

(declare-fun e!3471058 () (Set Context!10016))

(declare-fun call!424547 () (Set Context!10016))

(assert (=> b!5631811 (= e!3471058 call!424547)))

(declare-fun b!5631812 () Bool)

(declare-fun c!989027 () Bool)

(assert (=> b!5631812 (= c!989027 (is-Star!15624 (regTwo!31760 (regOne!31760 r!7292))))))

(declare-fun e!3471055 () (Set Context!10016))

(assert (=> b!5631812 (= e!3471055 e!3471058)))

(declare-fun c!989026 () Bool)

(declare-fun bm!424540 () Bool)

(declare-fun call!424550 () List!63171)

(declare-fun call!424549 () (Set Context!10016))

(assert (=> bm!424540 (= call!424549 (derivationStepZipperDown!966 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))) (ite c!989026 lt!2262567 (Context!10017 call!424550)) (h!69497 s!2326)))))

(declare-fun b!5631813 () Bool)

(declare-fun e!3471060 () Bool)

(assert (=> b!5631813 (= e!3471060 (nullable!5656 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))))))

(declare-fun b!5631814 () Bool)

(declare-fun e!3471059 () (Set Context!10016))

(declare-fun e!3471056 () (Set Context!10016))

(assert (=> b!5631814 (= e!3471059 e!3471056)))

(assert (=> b!5631814 (= c!989026 (is-Union!15624 (regTwo!31760 (regOne!31760 r!7292))))))

(declare-fun bm!424541 () Bool)

(declare-fun call!424546 () (Set Context!10016))

(assert (=> bm!424541 (= call!424547 call!424546)))

(declare-fun call!424548 () List!63171)

(declare-fun c!989025 () Bool)

(declare-fun c!989028 () Bool)

(declare-fun call!424545 () (Set Context!10016))

(declare-fun bm!424542 () Bool)

(assert (=> bm!424542 (= call!424545 (derivationStepZipperDown!966 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292)))))) (ite (or c!989026 c!989028) lt!2262567 (Context!10017 call!424548)) (h!69497 s!2326)))))

(declare-fun b!5631815 () Bool)

(declare-fun e!3471057 () (Set Context!10016))

(assert (=> b!5631815 (= e!3471057 (set.union call!424549 call!424546))))

(declare-fun b!5631816 () Bool)

(assert (=> b!5631816 (= e!3471055 call!424547)))

(declare-fun b!5631817 () Bool)

(assert (=> b!5631817 (= c!989028 e!3471060)))

(declare-fun res!2384965 () Bool)

(assert (=> b!5631817 (=> (not res!2384965) (not e!3471060))))

(assert (=> b!5631817 (= res!2384965 (is-Concat!24469 (regTwo!31760 (regOne!31760 r!7292))))))

(assert (=> b!5631817 (= e!3471056 e!3471057)))

(declare-fun bm!424543 () Bool)

(assert (=> bm!424543 (= call!424546 call!424545)))

(declare-fun bm!424544 () Bool)

(assert (=> bm!424544 (= call!424548 call!424550)))

(declare-fun bm!424545 () Bool)

(declare-fun $colon$colon!1674 (List!63171 Regex!15624) List!63171)

(assert (=> bm!424545 (= call!424550 ($colon$colon!1674 (exprs!5508 lt!2262567) (ite (or c!989028 c!989025) (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (regTwo!31760 (regOne!31760 r!7292)))))))

(declare-fun b!5631818 () Bool)

(assert (=> b!5631818 (= e!3471056 (set.union call!424549 call!424545))))

(declare-fun d!1778810 () Bool)

(declare-fun c!989029 () Bool)

(assert (=> d!1778810 (= c!989029 (and (is-ElementMatch!15624 (regTwo!31760 (regOne!31760 r!7292))) (= (c!988948 (regTwo!31760 (regOne!31760 r!7292))) (h!69497 s!2326))))))

(assert (=> d!1778810 (= (derivationStepZipperDown!966 (regTwo!31760 (regOne!31760 r!7292)) lt!2262567 (h!69497 s!2326)) e!3471059)))

(declare-fun b!5631819 () Bool)

(assert (=> b!5631819 (= e!3471059 (set.insert lt!2262567 (as set.empty (Set Context!10016))))))

(declare-fun b!5631820 () Bool)

(assert (=> b!5631820 (= e!3471057 e!3471055)))

(assert (=> b!5631820 (= c!989025 (is-Concat!24469 (regTwo!31760 (regOne!31760 r!7292))))))

(declare-fun b!5631821 () Bool)

(assert (=> b!5631821 (= e!3471058 (as set.empty (Set Context!10016)))))

(assert (= (and d!1778810 c!989029) b!5631819))

(assert (= (and d!1778810 (not c!989029)) b!5631814))

(assert (= (and b!5631814 c!989026) b!5631818))

(assert (= (and b!5631814 (not c!989026)) b!5631817))

(assert (= (and b!5631817 res!2384965) b!5631813))

(assert (= (and b!5631817 c!989028) b!5631815))

(assert (= (and b!5631817 (not c!989028)) b!5631820))

(assert (= (and b!5631820 c!989025) b!5631816))

(assert (= (and b!5631820 (not c!989025)) b!5631812))

(assert (= (and b!5631812 c!989027) b!5631811))

(assert (= (and b!5631812 (not c!989027)) b!5631821))

(assert (= (or b!5631816 b!5631811) bm!424544))

(assert (= (or b!5631816 b!5631811) bm!424541))

(assert (= (or b!5631815 bm!424544) bm!424545))

(assert (= (or b!5631815 bm!424541) bm!424543))

(assert (= (or b!5631818 bm!424543) bm!424542))

(assert (= (or b!5631818 b!5631815) bm!424540))

(declare-fun m!6602924 () Bool)

(assert (=> bm!424545 m!6602924))

(declare-fun m!6602926 () Bool)

(assert (=> bm!424540 m!6602926))

(declare-fun m!6602928 () Bool)

(assert (=> bm!424542 m!6602928))

(declare-fun m!6602930 () Bool)

(assert (=> b!5631813 m!6602930))

(declare-fun m!6602932 () Bool)

(assert (=> b!5631819 m!6602932))

(assert (=> b!5631487 d!1778810))

(declare-fun b!5631822 () Bool)

(declare-fun e!3471064 () (Set Context!10016))

(declare-fun call!424553 () (Set Context!10016))

(assert (=> b!5631822 (= e!3471064 call!424553)))

(declare-fun b!5631823 () Bool)

(declare-fun c!989032 () Bool)

(assert (=> b!5631823 (= c!989032 (is-Star!15624 (regOne!31760 (regOne!31760 r!7292))))))

(declare-fun e!3471061 () (Set Context!10016))

(assert (=> b!5631823 (= e!3471061 e!3471064)))

(declare-fun bm!424546 () Bool)

(declare-fun call!424555 () (Set Context!10016))

(declare-fun call!424556 () List!63171)

(declare-fun c!989031 () Bool)

(assert (=> bm!424546 (= call!424555 (derivationStepZipperDown!966 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))) (ite c!989031 lt!2262573 (Context!10017 call!424556)) (h!69497 s!2326)))))

(declare-fun b!5631824 () Bool)

(declare-fun e!3471066 () Bool)

(assert (=> b!5631824 (= e!3471066 (nullable!5656 (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))))))

(declare-fun b!5631825 () Bool)

(declare-fun e!3471065 () (Set Context!10016))

(declare-fun e!3471062 () (Set Context!10016))

(assert (=> b!5631825 (= e!3471065 e!3471062)))

(assert (=> b!5631825 (= c!989031 (is-Union!15624 (regOne!31760 (regOne!31760 r!7292))))))

(declare-fun bm!424547 () Bool)

(declare-fun call!424552 () (Set Context!10016))

(assert (=> bm!424547 (= call!424553 call!424552)))

(declare-fun c!989030 () Bool)

(declare-fun call!424551 () (Set Context!10016))

(declare-fun bm!424548 () Bool)

(declare-fun c!989033 () Bool)

(declare-fun call!424554 () List!63171)

(assert (=> bm!424548 (= call!424551 (derivationStepZipperDown!966 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292)))))) (ite (or c!989031 c!989033) lt!2262573 (Context!10017 call!424554)) (h!69497 s!2326)))))

(declare-fun b!5631826 () Bool)

(declare-fun e!3471063 () (Set Context!10016))

(assert (=> b!5631826 (= e!3471063 (set.union call!424555 call!424552))))

(declare-fun b!5631827 () Bool)

(assert (=> b!5631827 (= e!3471061 call!424553)))

(declare-fun b!5631828 () Bool)

(assert (=> b!5631828 (= c!989033 e!3471066)))

(declare-fun res!2384966 () Bool)

(assert (=> b!5631828 (=> (not res!2384966) (not e!3471066))))

(assert (=> b!5631828 (= res!2384966 (is-Concat!24469 (regOne!31760 (regOne!31760 r!7292))))))

(assert (=> b!5631828 (= e!3471062 e!3471063)))

(declare-fun bm!424549 () Bool)

(assert (=> bm!424549 (= call!424552 call!424551)))

(declare-fun bm!424550 () Bool)

(assert (=> bm!424550 (= call!424554 call!424556)))

(declare-fun bm!424551 () Bool)

(assert (=> bm!424551 (= call!424556 ($colon$colon!1674 (exprs!5508 lt!2262573) (ite (or c!989033 c!989030) (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 r!7292)))))))

(declare-fun b!5631829 () Bool)

(assert (=> b!5631829 (= e!3471062 (set.union call!424555 call!424551))))

(declare-fun d!1778812 () Bool)

(declare-fun c!989034 () Bool)

(assert (=> d!1778812 (= c!989034 (and (is-ElementMatch!15624 (regOne!31760 (regOne!31760 r!7292))) (= (c!988948 (regOne!31760 (regOne!31760 r!7292))) (h!69497 s!2326))))))

(assert (=> d!1778812 (= (derivationStepZipperDown!966 (regOne!31760 (regOne!31760 r!7292)) lt!2262573 (h!69497 s!2326)) e!3471065)))

(declare-fun b!5631830 () Bool)

(assert (=> b!5631830 (= e!3471065 (set.insert lt!2262573 (as set.empty (Set Context!10016))))))

(declare-fun b!5631831 () Bool)

(assert (=> b!5631831 (= e!3471063 e!3471061)))

(assert (=> b!5631831 (= c!989030 (is-Concat!24469 (regOne!31760 (regOne!31760 r!7292))))))

(declare-fun b!5631832 () Bool)

(assert (=> b!5631832 (= e!3471064 (as set.empty (Set Context!10016)))))

(assert (= (and d!1778812 c!989034) b!5631830))

(assert (= (and d!1778812 (not c!989034)) b!5631825))

(assert (= (and b!5631825 c!989031) b!5631829))

(assert (= (and b!5631825 (not c!989031)) b!5631828))

(assert (= (and b!5631828 res!2384966) b!5631824))

(assert (= (and b!5631828 c!989033) b!5631826))

(assert (= (and b!5631828 (not c!989033)) b!5631831))

(assert (= (and b!5631831 c!989030) b!5631827))

(assert (= (and b!5631831 (not c!989030)) b!5631823))

(assert (= (and b!5631823 c!989032) b!5631822))

(assert (= (and b!5631823 (not c!989032)) b!5631832))

(assert (= (or b!5631827 b!5631822) bm!424550))

(assert (= (or b!5631827 b!5631822) bm!424547))

(assert (= (or b!5631826 bm!424550) bm!424551))

(assert (= (or b!5631826 bm!424547) bm!424549))

(assert (= (or b!5631829 bm!424549) bm!424548))

(assert (= (or b!5631829 b!5631826) bm!424546))

(declare-fun m!6602934 () Bool)

(assert (=> bm!424551 m!6602934))

(declare-fun m!6602936 () Bool)

(assert (=> bm!424546 m!6602936))

(declare-fun m!6602938 () Bool)

(assert (=> bm!424548 m!6602938))

(declare-fun m!6602940 () Bool)

(assert (=> b!5631824 m!6602940))

(assert (=> b!5631830 m!6602668))

(assert (=> b!5631487 d!1778812))

(declare-fun d!1778814 () Bool)

(declare-fun c!989035 () Bool)

(assert (=> d!1778814 (= c!989035 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471067 () Bool)

(assert (=> d!1778814 (= (matchZipper!1762 lt!2262576 (t!376467 s!2326)) e!3471067)))

(declare-fun b!5631833 () Bool)

(assert (=> b!5631833 (= e!3471067 (nullableZipper!1606 lt!2262576))))

(declare-fun b!5631834 () Bool)

(assert (=> b!5631834 (= e!3471067 (matchZipper!1762 (derivationStepZipper!1711 lt!2262576 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778814 c!989035) b!5631833))

(assert (= (and d!1778814 (not c!989035)) b!5631834))

(assert (=> d!1778814 m!6602874))

(declare-fun m!6602942 () Bool)

(assert (=> b!5631833 m!6602942))

(assert (=> b!5631834 m!6602878))

(assert (=> b!5631834 m!6602878))

(declare-fun m!6602944 () Bool)

(assert (=> b!5631834 m!6602944))

(assert (=> b!5631834 m!6602882))

(assert (=> b!5631834 m!6602944))

(assert (=> b!5631834 m!6602882))

(declare-fun m!6602946 () Bool)

(assert (=> b!5631834 m!6602946))

(assert (=> b!5631488 d!1778814))

(declare-fun d!1778816 () Bool)

(assert (=> d!1778816 (= (isEmpty!34888 (t!376465 (exprs!5508 (h!69496 zl!343)))) (is-Nil!63047 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> b!5631489 d!1778816))

(declare-fun d!1778818 () Bool)

(declare-fun lt!2262708 () Regex!15624)

(assert (=> d!1778818 (validRegex!7360 lt!2262708)))

(assert (=> d!1778818 (= lt!2262708 (generalisedUnion!1487 (unfocusZipperList!1052 zl!343)))))

(assert (=> d!1778818 (= (unfocusZipper!1366 zl!343) lt!2262708)))

(declare-fun bs!1303228 () Bool)

(assert (= bs!1303228 d!1778818))

(declare-fun m!6602948 () Bool)

(assert (=> bs!1303228 m!6602948))

(assert (=> bs!1303228 m!6602690))

(assert (=> bs!1303228 m!6602690))

(assert (=> bs!1303228 m!6602692))

(assert (=> b!5631486 d!1778818))

(declare-fun bs!1303229 () Bool)

(declare-fun d!1778820 () Bool)

(assert (= bs!1303229 (and d!1778820 d!1778790)))

(declare-fun lambda!302683 () Int)

(assert (=> bs!1303229 (= lambda!302683 lambda!302680)))

(declare-fun b!5631855 () Bool)

(declare-fun e!3471082 () Bool)

(declare-fun lt!2262711 () Regex!15624)

(assert (=> b!5631855 (= e!3471082 (= lt!2262711 (head!11993 (unfocusZipperList!1052 zl!343))))))

(declare-fun b!5631856 () Bool)

(declare-fun e!3471085 () Bool)

(declare-fun e!3471084 () Bool)

(assert (=> b!5631856 (= e!3471085 e!3471084)))

(declare-fun c!989045 () Bool)

(assert (=> b!5631856 (= c!989045 (isEmpty!34888 (unfocusZipperList!1052 zl!343)))))

(declare-fun b!5631857 () Bool)

(assert (=> b!5631857 (= e!3471084 e!3471082)))

(declare-fun c!989046 () Bool)

(assert (=> b!5631857 (= c!989046 (isEmpty!34888 (tail!11088 (unfocusZipperList!1052 zl!343))))))

(declare-fun b!5631858 () Bool)

(declare-fun e!3471081 () Bool)

(assert (=> b!5631858 (= e!3471081 (isEmpty!34888 (t!376465 (unfocusZipperList!1052 zl!343))))))

(declare-fun b!5631860 () Bool)

(declare-fun e!3471083 () Regex!15624)

(declare-fun e!3471080 () Regex!15624)

(assert (=> b!5631860 (= e!3471083 e!3471080)))

(declare-fun c!989044 () Bool)

(assert (=> b!5631860 (= c!989044 (is-Cons!63047 (unfocusZipperList!1052 zl!343)))))

(declare-fun b!5631861 () Bool)

(declare-fun isEmptyLang!1175 (Regex!15624) Bool)

(assert (=> b!5631861 (= e!3471084 (isEmptyLang!1175 lt!2262711))))

(declare-fun b!5631862 () Bool)

(assert (=> b!5631862 (= e!3471080 EmptyLang!15624)))

(assert (=> d!1778820 e!3471085))

(declare-fun res!2384972 () Bool)

(assert (=> d!1778820 (=> (not res!2384972) (not e!3471085))))

(assert (=> d!1778820 (= res!2384972 (validRegex!7360 lt!2262711))))

(assert (=> d!1778820 (= lt!2262711 e!3471083)))

(declare-fun c!989047 () Bool)

(assert (=> d!1778820 (= c!989047 e!3471081)))

(declare-fun res!2384971 () Bool)

(assert (=> d!1778820 (=> (not res!2384971) (not e!3471081))))

(assert (=> d!1778820 (= res!2384971 (is-Cons!63047 (unfocusZipperList!1052 zl!343)))))

(assert (=> d!1778820 (forall!14778 (unfocusZipperList!1052 zl!343) lambda!302683)))

(assert (=> d!1778820 (= (generalisedUnion!1487 (unfocusZipperList!1052 zl!343)) lt!2262711)))

(declare-fun b!5631859 () Bool)

(assert (=> b!5631859 (= e!3471083 (h!69495 (unfocusZipperList!1052 zl!343)))))

(declare-fun b!5631863 () Bool)

(declare-fun isUnion!605 (Regex!15624) Bool)

(assert (=> b!5631863 (= e!3471082 (isUnion!605 lt!2262711))))

(declare-fun b!5631864 () Bool)

(assert (=> b!5631864 (= e!3471080 (Union!15624 (h!69495 (unfocusZipperList!1052 zl!343)) (generalisedUnion!1487 (t!376465 (unfocusZipperList!1052 zl!343)))))))

(assert (= (and d!1778820 res!2384971) b!5631858))

(assert (= (and d!1778820 c!989047) b!5631859))

(assert (= (and d!1778820 (not c!989047)) b!5631860))

(assert (= (and b!5631860 c!989044) b!5631864))

(assert (= (and b!5631860 (not c!989044)) b!5631862))

(assert (= (and d!1778820 res!2384972) b!5631856))

(assert (= (and b!5631856 c!989045) b!5631861))

(assert (= (and b!5631856 (not c!989045)) b!5631857))

(assert (= (and b!5631857 c!989046) b!5631855))

(assert (= (and b!5631857 (not c!989046)) b!5631863))

(assert (=> b!5631856 m!6602690))

(declare-fun m!6602950 () Bool)

(assert (=> b!5631856 m!6602950))

(declare-fun m!6602952 () Bool)

(assert (=> b!5631861 m!6602952))

(declare-fun m!6602954 () Bool)

(assert (=> b!5631858 m!6602954))

(declare-fun m!6602956 () Bool)

(assert (=> b!5631864 m!6602956))

(declare-fun m!6602958 () Bool)

(assert (=> b!5631863 m!6602958))

(assert (=> b!5631855 m!6602690))

(declare-fun m!6602960 () Bool)

(assert (=> b!5631855 m!6602960))

(assert (=> b!5631857 m!6602690))

(declare-fun m!6602962 () Bool)

(assert (=> b!5631857 m!6602962))

(assert (=> b!5631857 m!6602962))

(declare-fun m!6602964 () Bool)

(assert (=> b!5631857 m!6602964))

(declare-fun m!6602966 () Bool)

(assert (=> d!1778820 m!6602966))

(assert (=> d!1778820 m!6602690))

(declare-fun m!6602968 () Bool)

(assert (=> d!1778820 m!6602968))

(assert (=> b!5631467 d!1778820))

(declare-fun bs!1303230 () Bool)

(declare-fun d!1778822 () Bool)

(assert (= bs!1303230 (and d!1778822 d!1778790)))

(declare-fun lambda!302686 () Int)

(assert (=> bs!1303230 (= lambda!302686 lambda!302680)))

(declare-fun bs!1303231 () Bool)

(assert (= bs!1303231 (and d!1778822 d!1778820)))

(assert (=> bs!1303231 (= lambda!302686 lambda!302683)))

(declare-fun lt!2262714 () List!63171)

(assert (=> d!1778822 (forall!14778 lt!2262714 lambda!302686)))

(declare-fun e!3471088 () List!63171)

(assert (=> d!1778822 (= lt!2262714 e!3471088)))

(declare-fun c!989050 () Bool)

(assert (=> d!1778822 (= c!989050 (is-Cons!63048 zl!343))))

(assert (=> d!1778822 (= (unfocusZipperList!1052 zl!343) lt!2262714)))

(declare-fun b!5631869 () Bool)

(assert (=> b!5631869 (= e!3471088 (Cons!63047 (generalisedConcat!1239 (exprs!5508 (h!69496 zl!343))) (unfocusZipperList!1052 (t!376466 zl!343))))))

(declare-fun b!5631870 () Bool)

(assert (=> b!5631870 (= e!3471088 Nil!63047)))

(assert (= (and d!1778822 c!989050) b!5631869))

(assert (= (and d!1778822 (not c!989050)) b!5631870))

(declare-fun m!6602970 () Bool)

(assert (=> d!1778822 m!6602970))

(assert (=> b!5631869 m!6602622))

(declare-fun m!6602972 () Bool)

(assert (=> b!5631869 m!6602972))

(assert (=> b!5631467 d!1778822))

(declare-fun b!5631889 () Bool)

(declare-fun e!3471108 () Bool)

(declare-fun e!3471103 () Bool)

(assert (=> b!5631889 (= e!3471108 e!3471103)))

(declare-fun c!989056 () Bool)

(assert (=> b!5631889 (= c!989056 (is-Union!15624 r!7292))))

(declare-fun bm!424558 () Bool)

(declare-fun call!424564 () Bool)

(declare-fun call!424565 () Bool)

(assert (=> bm!424558 (= call!424564 call!424565)))

(declare-fun bm!424559 () Bool)

(declare-fun c!989055 () Bool)

(assert (=> bm!424559 (= call!424565 (validRegex!7360 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))))))

(declare-fun d!1778824 () Bool)

(declare-fun res!2384985 () Bool)

(declare-fun e!3471104 () Bool)

(assert (=> d!1778824 (=> res!2384985 e!3471104)))

(assert (=> d!1778824 (= res!2384985 (is-ElementMatch!15624 r!7292))))

(assert (=> d!1778824 (= (validRegex!7360 r!7292) e!3471104)))

(declare-fun b!5631890 () Bool)

(declare-fun e!3471105 () Bool)

(declare-fun e!3471109 () Bool)

(assert (=> b!5631890 (= e!3471105 e!3471109)))

(declare-fun res!2384986 () Bool)

(assert (=> b!5631890 (=> (not res!2384986) (not e!3471109))))

(assert (=> b!5631890 (= res!2384986 call!424564)))

(declare-fun b!5631891 () Bool)

(declare-fun e!3471106 () Bool)

(assert (=> b!5631891 (= e!3471108 e!3471106)))

(declare-fun res!2384987 () Bool)

(assert (=> b!5631891 (= res!2384987 (not (nullable!5656 (reg!15953 r!7292))))))

(assert (=> b!5631891 (=> (not res!2384987) (not e!3471106))))

(declare-fun b!5631892 () Bool)

(declare-fun res!2384984 () Bool)

(declare-fun e!3471107 () Bool)

(assert (=> b!5631892 (=> (not res!2384984) (not e!3471107))))

(assert (=> b!5631892 (= res!2384984 call!424564)))

(assert (=> b!5631892 (= e!3471103 e!3471107)))

(declare-fun b!5631893 () Bool)

(declare-fun call!424563 () Bool)

(assert (=> b!5631893 (= e!3471107 call!424563)))

(declare-fun bm!424560 () Bool)

(assert (=> bm!424560 (= call!424563 (validRegex!7360 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))))))

(declare-fun b!5631894 () Bool)

(assert (=> b!5631894 (= e!3471109 call!424563)))

(declare-fun b!5631895 () Bool)

(assert (=> b!5631895 (= e!3471106 call!424565)))

(declare-fun b!5631896 () Bool)

(declare-fun res!2384983 () Bool)

(assert (=> b!5631896 (=> res!2384983 e!3471105)))

(assert (=> b!5631896 (= res!2384983 (not (is-Concat!24469 r!7292)))))

(assert (=> b!5631896 (= e!3471103 e!3471105)))

(declare-fun b!5631897 () Bool)

(assert (=> b!5631897 (= e!3471104 e!3471108)))

(assert (=> b!5631897 (= c!989055 (is-Star!15624 r!7292))))

(assert (= (and d!1778824 (not res!2384985)) b!5631897))

(assert (= (and b!5631897 c!989055) b!5631891))

(assert (= (and b!5631897 (not c!989055)) b!5631889))

(assert (= (and b!5631891 res!2384987) b!5631895))

(assert (= (and b!5631889 c!989056) b!5631892))

(assert (= (and b!5631889 (not c!989056)) b!5631896))

(assert (= (and b!5631892 res!2384984) b!5631893))

(assert (= (and b!5631896 (not res!2384983)) b!5631890))

(assert (= (and b!5631890 res!2384986) b!5631894))

(assert (= (or b!5631893 b!5631894) bm!424560))

(assert (= (or b!5631892 b!5631890) bm!424558))

(assert (= (or b!5631895 bm!424558) bm!424559))

(declare-fun m!6602974 () Bool)

(assert (=> bm!424559 m!6602974))

(declare-fun m!6602976 () Bool)

(assert (=> b!5631891 m!6602976))

(declare-fun m!6602978 () Bool)

(assert (=> bm!424560 m!6602978))

(assert (=> start!583446 d!1778824))

(declare-fun d!1778826 () Bool)

(assert (=> d!1778826 (= (flatMap!1237 lt!2262569 lambda!302653) (choose!42688 lt!2262569 lambda!302653))))

(declare-fun bs!1303232 () Bool)

(assert (= bs!1303232 d!1778826))

(declare-fun m!6602980 () Bool)

(assert (=> bs!1303232 m!6602980))

(assert (=> b!5631484 d!1778826))

(assert (=> b!5631484 d!1778776))

(declare-fun e!3471110 () Bool)

(declare-fun d!1778828 () Bool)

(assert (=> d!1778828 (= (matchZipper!1762 (set.union lt!2262586 lt!2262565) (t!376467 s!2326)) e!3471110)))

(declare-fun res!2384988 () Bool)

(assert (=> d!1778828 (=> res!2384988 e!3471110)))

(assert (=> d!1778828 (= res!2384988 (matchZipper!1762 lt!2262586 (t!376467 s!2326)))))

(declare-fun lt!2262715 () Unit!156028)

(assert (=> d!1778828 (= lt!2262715 (choose!42692 lt!2262586 lt!2262565 (t!376467 s!2326)))))

(assert (=> d!1778828 (= (lemmaZipperConcatMatchesSameAsBothZippers!649 lt!2262586 lt!2262565 (t!376467 s!2326)) lt!2262715)))

(declare-fun b!5631898 () Bool)

(assert (=> b!5631898 (= e!3471110 (matchZipper!1762 lt!2262565 (t!376467 s!2326)))))

(assert (= (and d!1778828 (not res!2384988)) b!5631898))

(declare-fun m!6602982 () Bool)

(assert (=> d!1778828 m!6602982))

(assert (=> d!1778828 m!6602634))

(declare-fun m!6602984 () Bool)

(assert (=> d!1778828 m!6602984))

(assert (=> b!5631898 m!6602694))

(assert (=> b!5631484 d!1778828))

(declare-fun d!1778830 () Bool)

(declare-fun c!989057 () Bool)

(assert (=> d!1778830 (= c!989057 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471111 () Bool)

(assert (=> d!1778830 (= (matchZipper!1762 lt!2262581 (t!376467 s!2326)) e!3471111)))

(declare-fun b!5631899 () Bool)

(assert (=> b!5631899 (= e!3471111 (nullableZipper!1606 lt!2262581))))

(declare-fun b!5631900 () Bool)

(assert (=> b!5631900 (= e!3471111 (matchZipper!1762 (derivationStepZipper!1711 lt!2262581 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778830 c!989057) b!5631899))

(assert (= (and d!1778830 (not c!989057)) b!5631900))

(assert (=> d!1778830 m!6602874))

(declare-fun m!6602986 () Bool)

(assert (=> b!5631899 m!6602986))

(assert (=> b!5631900 m!6602878))

(assert (=> b!5631900 m!6602878))

(declare-fun m!6602988 () Bool)

(assert (=> b!5631900 m!6602988))

(assert (=> b!5631900 m!6602882))

(assert (=> b!5631900 m!6602988))

(assert (=> b!5631900 m!6602882))

(declare-fun m!6602990 () Bool)

(assert (=> b!5631900 m!6602990))

(assert (=> b!5631484 d!1778830))

(declare-fun d!1778832 () Bool)

(assert (=> d!1778832 (= (flatMap!1237 lt!2262569 lambda!302653) (dynLambda!24655 lambda!302653 lt!2262573))))

(declare-fun lt!2262716 () Unit!156028)

(assert (=> d!1778832 (= lt!2262716 (choose!42689 lt!2262569 lt!2262573 lambda!302653))))

(assert (=> d!1778832 (= lt!2262569 (set.insert lt!2262573 (as set.empty (Set Context!10016))))))

(assert (=> d!1778832 (= (lemmaFlatMapOnSingletonSet!769 lt!2262569 lt!2262573 lambda!302653) lt!2262716)))

(declare-fun b_lambda!212973 () Bool)

(assert (=> (not b_lambda!212973) (not d!1778832)))

(declare-fun bs!1303233 () Bool)

(assert (= bs!1303233 d!1778832))

(assert (=> bs!1303233 m!6602652))

(declare-fun m!6602992 () Bool)

(assert (=> bs!1303233 m!6602992))

(declare-fun m!6602994 () Bool)

(assert (=> bs!1303233 m!6602994))

(assert (=> bs!1303233 m!6602668))

(assert (=> b!5631484 d!1778832))

(declare-fun d!1778834 () Bool)

(declare-fun c!989058 () Bool)

(assert (=> d!1778834 (= c!989058 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471112 () Bool)

(assert (=> d!1778834 (= (matchZipper!1762 lt!2262582 (t!376467 s!2326)) e!3471112)))

(declare-fun b!5631901 () Bool)

(assert (=> b!5631901 (= e!3471112 (nullableZipper!1606 lt!2262582))))

(declare-fun b!5631902 () Bool)

(assert (=> b!5631902 (= e!3471112 (matchZipper!1762 (derivationStepZipper!1711 lt!2262582 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778834 c!989058) b!5631901))

(assert (= (and d!1778834 (not c!989058)) b!5631902))

(assert (=> d!1778834 m!6602874))

(declare-fun m!6602996 () Bool)

(assert (=> b!5631901 m!6602996))

(assert (=> b!5631902 m!6602878))

(assert (=> b!5631902 m!6602878))

(declare-fun m!6602998 () Bool)

(assert (=> b!5631902 m!6602998))

(assert (=> b!5631902 m!6602882))

(assert (=> b!5631902 m!6602998))

(assert (=> b!5631902 m!6602882))

(declare-fun m!6603000 () Bool)

(assert (=> b!5631902 m!6603000))

(assert (=> b!5631484 d!1778834))

(declare-fun d!1778836 () Bool)

(declare-fun c!989059 () Bool)

(assert (=> d!1778836 (= c!989059 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471113 () Bool)

(assert (=> d!1778836 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (t!376467 s!2326)) e!3471113)))

(declare-fun b!5631903 () Bool)

(assert (=> b!5631903 (= e!3471113 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326))))))

(declare-fun b!5631904 () Bool)

(assert (=> b!5631904 (= e!3471113 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778836 c!989059) b!5631903))

(assert (= (and d!1778836 (not c!989059)) b!5631904))

(assert (=> d!1778836 m!6602874))

(assert (=> b!5631903 m!6602696))

(declare-fun m!6603002 () Bool)

(assert (=> b!5631903 m!6603002))

(assert (=> b!5631904 m!6602878))

(assert (=> b!5631904 m!6602696))

(assert (=> b!5631904 m!6602878))

(declare-fun m!6603004 () Bool)

(assert (=> b!5631904 m!6603004))

(assert (=> b!5631904 m!6602882))

(assert (=> b!5631904 m!6603004))

(assert (=> b!5631904 m!6602882))

(declare-fun m!6603006 () Bool)

(assert (=> b!5631904 m!6603006))

(assert (=> b!5631485 d!1778836))

(declare-fun bs!1303234 () Bool)

(declare-fun d!1778838 () Bool)

(assert (= bs!1303234 (and d!1778838 b!5631478)))

(declare-fun lambda!302687 () Int)

(assert (=> bs!1303234 (= lambda!302687 lambda!302653)))

(declare-fun bs!1303235 () Bool)

(assert (= bs!1303235 (and d!1778838 d!1778780)))

(assert (=> bs!1303235 (= lambda!302687 lambda!302671)))

(assert (=> d!1778838 true))

(assert (=> d!1778838 (= (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (flatMap!1237 lt!2262569 lambda!302687))))

(declare-fun bs!1303236 () Bool)

(assert (= bs!1303236 d!1778838))

(declare-fun m!6603008 () Bool)

(assert (=> bs!1303236 m!6603008))

(assert (=> b!5631485 d!1778838))

(assert (=> b!5631481 d!1778814))

(declare-fun d!1778840 () Bool)

(declare-fun c!989060 () Bool)

(assert (=> d!1778840 (= c!989060 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471114 () Bool)

(assert (=> d!1778840 (= (matchZipper!1762 lt!2262587 (t!376467 s!2326)) e!3471114)))

(declare-fun b!5631905 () Bool)

(assert (=> b!5631905 (= e!3471114 (nullableZipper!1606 lt!2262587))))

(declare-fun b!5631906 () Bool)

(assert (=> b!5631906 (= e!3471114 (matchZipper!1762 (derivationStepZipper!1711 lt!2262587 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1778840 c!989060) b!5631905))

(assert (= (and d!1778840 (not c!989060)) b!5631906))

(assert (=> d!1778840 m!6602874))

(declare-fun m!6603010 () Bool)

(assert (=> b!5631905 m!6603010))

(assert (=> b!5631906 m!6602878))

(assert (=> b!5631906 m!6602878))

(declare-fun m!6603012 () Bool)

(assert (=> b!5631906 m!6603012))

(assert (=> b!5631906 m!6602882))

(assert (=> b!5631906 m!6603012))

(assert (=> b!5631906 m!6602882))

(declare-fun m!6603014 () Bool)

(assert (=> b!5631906 m!6603014))

(assert (=> b!5631482 d!1778840))

(declare-fun b!5631907 () Bool)

(declare-fun e!3471118 () (Set Context!10016))

(declare-fun call!424568 () (Set Context!10016))

(assert (=> b!5631907 (= e!3471118 call!424568)))

(declare-fun b!5631908 () Bool)

(declare-fun c!989063 () Bool)

(assert (=> b!5631908 (= c!989063 (is-Star!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun e!3471115 () (Set Context!10016))

(assert (=> b!5631908 (= e!3471115 e!3471118)))

(declare-fun call!424571 () List!63171)

(declare-fun call!424570 () (Set Context!10016))

(declare-fun c!989062 () Bool)

(declare-fun bm!424561 () Bool)

(assert (=> bm!424561 (= call!424570 (derivationStepZipperDown!966 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))) (ite c!989062 lt!2262567 (Context!10017 call!424571)) (h!69497 s!2326)))))

(declare-fun b!5631909 () Bool)

(declare-fun e!3471120 () Bool)

(assert (=> b!5631909 (= e!3471120 (nullable!5656 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5631910 () Bool)

(declare-fun e!3471119 () (Set Context!10016))

(declare-fun e!3471116 () (Set Context!10016))

(assert (=> b!5631910 (= e!3471119 e!3471116)))

(assert (=> b!5631910 (= c!989062 (is-Union!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun bm!424562 () Bool)

(declare-fun call!424567 () (Set Context!10016))

(assert (=> bm!424562 (= call!424568 call!424567)))

(declare-fun call!424566 () (Set Context!10016))

(declare-fun call!424569 () List!63171)

(declare-fun bm!424563 () Bool)

(declare-fun c!989061 () Bool)

(declare-fun c!989064 () Bool)

(assert (=> bm!424563 (= call!424566 (derivationStepZipperDown!966 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343))))))) (ite (or c!989062 c!989064) lt!2262567 (Context!10017 call!424569)) (h!69497 s!2326)))))

(declare-fun b!5631911 () Bool)

(declare-fun e!3471117 () (Set Context!10016))

(assert (=> b!5631911 (= e!3471117 (set.union call!424570 call!424567))))

(declare-fun b!5631912 () Bool)

(assert (=> b!5631912 (= e!3471115 call!424568)))

(declare-fun b!5631913 () Bool)

(assert (=> b!5631913 (= c!989064 e!3471120)))

(declare-fun res!2384989 () Bool)

(assert (=> b!5631913 (=> (not res!2384989) (not e!3471120))))

(assert (=> b!5631913 (= res!2384989 (is-Concat!24469 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> b!5631913 (= e!3471116 e!3471117)))

(declare-fun bm!424564 () Bool)

(assert (=> bm!424564 (= call!424567 call!424566)))

(declare-fun bm!424565 () Bool)

(assert (=> bm!424565 (= call!424569 call!424571)))

(declare-fun bm!424566 () Bool)

(assert (=> bm!424566 (= call!424571 ($colon$colon!1674 (exprs!5508 lt!2262567) (ite (or c!989064 c!989061) (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (h!69495 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5631914 () Bool)

(assert (=> b!5631914 (= e!3471116 (set.union call!424570 call!424566))))

(declare-fun d!1778842 () Bool)

(declare-fun c!989065 () Bool)

(assert (=> d!1778842 (= c!989065 (and (is-ElementMatch!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))) (= (c!988948 (h!69495 (exprs!5508 (h!69496 zl!343)))) (h!69497 s!2326))))))

(assert (=> d!1778842 (= (derivationStepZipperDown!966 (h!69495 (exprs!5508 (h!69496 zl!343))) lt!2262567 (h!69497 s!2326)) e!3471119)))

(declare-fun b!5631915 () Bool)

(assert (=> b!5631915 (= e!3471119 (set.insert lt!2262567 (as set.empty (Set Context!10016))))))

(declare-fun b!5631916 () Bool)

(assert (=> b!5631916 (= e!3471117 e!3471115)))

(assert (=> b!5631916 (= c!989061 (is-Concat!24469 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5631917 () Bool)

(assert (=> b!5631917 (= e!3471118 (as set.empty (Set Context!10016)))))

(assert (= (and d!1778842 c!989065) b!5631915))

(assert (= (and d!1778842 (not c!989065)) b!5631910))

(assert (= (and b!5631910 c!989062) b!5631914))

(assert (= (and b!5631910 (not c!989062)) b!5631913))

(assert (= (and b!5631913 res!2384989) b!5631909))

(assert (= (and b!5631913 c!989064) b!5631911))

(assert (= (and b!5631913 (not c!989064)) b!5631916))

(assert (= (and b!5631916 c!989061) b!5631912))

(assert (= (and b!5631916 (not c!989061)) b!5631908))

(assert (= (and b!5631908 c!989063) b!5631907))

(assert (= (and b!5631908 (not c!989063)) b!5631917))

(assert (= (or b!5631912 b!5631907) bm!424565))

(assert (= (or b!5631912 b!5631907) bm!424562))

(assert (= (or b!5631911 bm!424565) bm!424566))

(assert (= (or b!5631911 bm!424562) bm!424564))

(assert (= (or b!5631914 bm!424564) bm!424563))

(assert (= (or b!5631914 b!5631911) bm!424561))

(declare-fun m!6603016 () Bool)

(assert (=> bm!424566 m!6603016))

(declare-fun m!6603018 () Bool)

(assert (=> bm!424561 m!6603018))

(declare-fun m!6603020 () Bool)

(assert (=> bm!424563 m!6603020))

(declare-fun m!6603022 () Bool)

(assert (=> b!5631909 m!6603022))

(assert (=> b!5631915 m!6602932))

(assert (=> b!5631478 d!1778842))

(declare-fun d!1778844 () Bool)

(assert (=> d!1778844 (= (flatMap!1237 z!1189 lambda!302653) (dynLambda!24655 lambda!302653 (h!69496 zl!343)))))

(declare-fun lt!2262717 () Unit!156028)

(assert (=> d!1778844 (= lt!2262717 (choose!42689 z!1189 (h!69496 zl!343) lambda!302653))))

(assert (=> d!1778844 (= z!1189 (set.insert (h!69496 zl!343) (as set.empty (Set Context!10016))))))

(assert (=> d!1778844 (= (lemmaFlatMapOnSingletonSet!769 z!1189 (h!69496 zl!343) lambda!302653) lt!2262717)))

(declare-fun b_lambda!212975 () Bool)

(assert (=> (not b_lambda!212975) (not d!1778844)))

(declare-fun bs!1303237 () Bool)

(assert (= bs!1303237 d!1778844))

(assert (=> bs!1303237 m!6602616))

(declare-fun m!6603024 () Bool)

(assert (=> bs!1303237 m!6603024))

(declare-fun m!6603026 () Bool)

(assert (=> bs!1303237 m!6603026))

(declare-fun m!6603028 () Bool)

(assert (=> bs!1303237 m!6603028))

(assert (=> b!5631478 d!1778844))

(declare-fun d!1778846 () Bool)

(declare-fun nullableFct!1753 (Regex!15624) Bool)

(assert (=> d!1778846 (= (nullable!5656 (h!69495 (exprs!5508 (h!69496 zl!343)))) (nullableFct!1753 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun bs!1303238 () Bool)

(assert (= bs!1303238 d!1778846))

(declare-fun m!6603030 () Bool)

(assert (=> bs!1303238 m!6603030))

(assert (=> b!5631478 d!1778846))

(declare-fun b!5631918 () Bool)

(declare-fun e!3471121 () (Set Context!10016))

(assert (=> b!5631918 (= e!3471121 (as set.empty (Set Context!10016)))))

(declare-fun bm!424567 () Bool)

(declare-fun call!424572 () (Set Context!10016))

(assert (=> bm!424567 (= call!424572 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (h!69497 s!2326)))))

(declare-fun b!5631919 () Bool)

(declare-fun e!3471122 () Bool)

(assert (=> b!5631919 (= e!3471122 (nullable!5656 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun b!5631920 () Bool)

(assert (=> b!5631920 (= e!3471121 call!424572)))

(declare-fun b!5631922 () Bool)

(declare-fun e!3471123 () (Set Context!10016))

(assert (=> b!5631922 (= e!3471123 e!3471121)))

(declare-fun c!989067 () Bool)

(assert (=> b!5631922 (= c!989067 (is-Cons!63047 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))

(declare-fun d!1778848 () Bool)

(declare-fun c!989066 () Bool)

(assert (=> d!1778848 (= c!989066 e!3471122)))

(declare-fun res!2384990 () Bool)

(assert (=> d!1778848 (=> (not res!2384990) (not e!3471122))))

(assert (=> d!1778848 (= res!2384990 (is-Cons!63047 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))

(assert (=> d!1778848 (= (derivationStepZipperUp!892 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))) (h!69497 s!2326)) e!3471123)))

(declare-fun b!5631921 () Bool)

(assert (=> b!5631921 (= e!3471123 (set.union call!424572 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (h!69497 s!2326))))))

(assert (= (and d!1778848 res!2384990) b!5631919))

(assert (= (and d!1778848 c!989066) b!5631921))

(assert (= (and d!1778848 (not c!989066)) b!5631922))

(assert (= (and b!5631922 c!989067) b!5631920))

(assert (= (and b!5631922 (not c!989067)) b!5631918))

(assert (= (or b!5631921 b!5631920) bm!424567))

(declare-fun m!6603032 () Bool)

(assert (=> bm!424567 m!6603032))

(declare-fun m!6603034 () Bool)

(assert (=> b!5631919 m!6603034))

(declare-fun m!6603036 () Bool)

(assert (=> b!5631921 m!6603036))

(assert (=> b!5631478 d!1778848))

(declare-fun b!5631923 () Bool)

(declare-fun e!3471124 () (Set Context!10016))

(assert (=> b!5631923 (= e!3471124 (as set.empty (Set Context!10016)))))

(declare-fun bm!424568 () Bool)

(declare-fun call!424573 () (Set Context!10016))

(assert (=> bm!424568 (= call!424573 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (h!69496 zl!343))) (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))) (h!69497 s!2326)))))

(declare-fun b!5631924 () Bool)

(declare-fun e!3471125 () Bool)

(assert (=> b!5631924 (= e!3471125 (nullable!5656 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5631925 () Bool)

(assert (=> b!5631925 (= e!3471124 call!424573)))

(declare-fun b!5631927 () Bool)

(declare-fun e!3471126 () (Set Context!10016))

(assert (=> b!5631927 (= e!3471126 e!3471124)))

(declare-fun c!989069 () Bool)

(assert (=> b!5631927 (= c!989069 (is-Cons!63047 (exprs!5508 (h!69496 zl!343))))))

(declare-fun d!1778850 () Bool)

(declare-fun c!989068 () Bool)

(assert (=> d!1778850 (= c!989068 e!3471125)))

(declare-fun res!2384991 () Bool)

(assert (=> d!1778850 (=> (not res!2384991) (not e!3471125))))

(assert (=> d!1778850 (= res!2384991 (is-Cons!63047 (exprs!5508 (h!69496 zl!343))))))

(assert (=> d!1778850 (= (derivationStepZipperUp!892 (h!69496 zl!343) (h!69497 s!2326)) e!3471126)))

(declare-fun b!5631926 () Bool)

(assert (=> b!5631926 (= e!3471126 (set.union call!424573 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))) (h!69497 s!2326))))))

(assert (= (and d!1778850 res!2384991) b!5631924))

(assert (= (and d!1778850 c!989068) b!5631926))

(assert (= (and d!1778850 (not c!989068)) b!5631927))

(assert (= (and b!5631927 c!989069) b!5631925))

(assert (= (and b!5631927 (not c!989069)) b!5631923))

(assert (= (or b!5631926 b!5631925) bm!424568))

(declare-fun m!6603038 () Bool)

(assert (=> bm!424568 m!6603038))

(assert (=> b!5631924 m!6602614))

(declare-fun m!6603040 () Bool)

(assert (=> b!5631926 m!6603040))

(assert (=> b!5631478 d!1778850))

(declare-fun d!1778852 () Bool)

(assert (=> d!1778852 (= (flatMap!1237 z!1189 lambda!302653) (choose!42688 z!1189 lambda!302653))))

(declare-fun bs!1303239 () Bool)

(assert (= bs!1303239 d!1778852))

(declare-fun m!6603042 () Bool)

(assert (=> bs!1303239 m!6603042))

(assert (=> b!5631478 d!1778852))

(declare-fun b!5631928 () Bool)

(declare-fun e!3471127 () (Set Context!10016))

(assert (=> b!5631928 (= e!3471127 (as set.empty (Set Context!10016)))))

(declare-fun bm!424569 () Bool)

(declare-fun call!424574 () (Set Context!10016))

(assert (=> bm!424569 (= call!424574 (derivationStepZipperDown!966 (h!69495 (exprs!5508 lt!2262567)) (Context!10017 (t!376465 (exprs!5508 lt!2262567))) (h!69497 s!2326)))))

(declare-fun b!5631929 () Bool)

(declare-fun e!3471128 () Bool)

(assert (=> b!5631929 (= e!3471128 (nullable!5656 (h!69495 (exprs!5508 lt!2262567))))))

(declare-fun b!5631930 () Bool)

(assert (=> b!5631930 (= e!3471127 call!424574)))

(declare-fun b!5631932 () Bool)

(declare-fun e!3471129 () (Set Context!10016))

(assert (=> b!5631932 (= e!3471129 e!3471127)))

(declare-fun c!989071 () Bool)

(assert (=> b!5631932 (= c!989071 (is-Cons!63047 (exprs!5508 lt!2262567)))))

(declare-fun d!1778854 () Bool)

(declare-fun c!989070 () Bool)

(assert (=> d!1778854 (= c!989070 e!3471128)))

(declare-fun res!2384992 () Bool)

(assert (=> d!1778854 (=> (not res!2384992) (not e!3471128))))

(assert (=> d!1778854 (= res!2384992 (is-Cons!63047 (exprs!5508 lt!2262567)))))

(assert (=> d!1778854 (= (derivationStepZipperUp!892 lt!2262567 (h!69497 s!2326)) e!3471129)))

(declare-fun b!5631931 () Bool)

(assert (=> b!5631931 (= e!3471129 (set.union call!424574 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 lt!2262567))) (h!69497 s!2326))))))

(assert (= (and d!1778854 res!2384992) b!5631929))

(assert (= (and d!1778854 c!989070) b!5631931))

(assert (= (and d!1778854 (not c!989070)) b!5631932))

(assert (= (and b!5631932 c!989071) b!5631930))

(assert (= (and b!5631932 (not c!989071)) b!5631928))

(assert (= (or b!5631931 b!5631930) bm!424569))

(declare-fun m!6603044 () Bool)

(assert (=> bm!424569 m!6603044))

(declare-fun m!6603046 () Bool)

(assert (=> b!5631929 m!6603046))

(declare-fun m!6603048 () Bool)

(assert (=> b!5631931 m!6603048))

(assert (=> b!5631478 d!1778854))

(declare-fun d!1778856 () Bool)

(assert (=> d!1778856 (= (isEmpty!34887 (t!376466 zl!343)) (is-Nil!63048 (t!376466 zl!343)))))

(assert (=> b!5631479 d!1778856))

(declare-fun bs!1303240 () Bool)

(declare-fun d!1778858 () Bool)

(assert (= bs!1303240 (and d!1778858 d!1778790)))

(declare-fun lambda!302690 () Int)

(assert (=> bs!1303240 (= lambda!302690 lambda!302680)))

(declare-fun bs!1303241 () Bool)

(assert (= bs!1303241 (and d!1778858 d!1778820)))

(assert (=> bs!1303241 (= lambda!302690 lambda!302683)))

(declare-fun bs!1303242 () Bool)

(assert (= bs!1303242 (and d!1778858 d!1778822)))

(assert (=> bs!1303242 (= lambda!302690 lambda!302686)))

(assert (=> d!1778858 (= (inv!82308 (h!69496 zl!343)) (forall!14778 (exprs!5508 (h!69496 zl!343)) lambda!302690))))

(declare-fun bs!1303243 () Bool)

(assert (= bs!1303243 d!1778858))

(declare-fun m!6603050 () Bool)

(assert (=> bs!1303243 m!6603050))

(assert (=> b!5631476 d!1778858))

(declare-fun bs!1303244 () Bool)

(declare-fun d!1778860 () Bool)

(assert (= bs!1303244 (and d!1778860 d!1778790)))

(declare-fun lambda!302691 () Int)

(assert (=> bs!1303244 (= lambda!302691 lambda!302680)))

(declare-fun bs!1303245 () Bool)

(assert (= bs!1303245 (and d!1778860 d!1778820)))

(assert (=> bs!1303245 (= lambda!302691 lambda!302683)))

(declare-fun bs!1303246 () Bool)

(assert (= bs!1303246 (and d!1778860 d!1778822)))

(assert (=> bs!1303246 (= lambda!302691 lambda!302686)))

(declare-fun bs!1303247 () Bool)

(assert (= bs!1303247 (and d!1778860 d!1778858)))

(assert (=> bs!1303247 (= lambda!302691 lambda!302690)))

(assert (=> d!1778860 (= (inv!82308 setElem!37621) (forall!14778 (exprs!5508 setElem!37621) lambda!302691))))

(declare-fun bs!1303248 () Bool)

(assert (= bs!1303248 d!1778860))

(declare-fun m!6603052 () Bool)

(assert (=> bs!1303248 m!6603052))

(assert (=> setNonEmpty!37621 d!1778860))

(declare-fun d!1778862 () Bool)

(assert (=> d!1778862 (= (nullable!5656 (regOne!31760 (regOne!31760 r!7292))) (nullableFct!1753 (regOne!31760 (regOne!31760 r!7292))))))

(declare-fun bs!1303249 () Bool)

(assert (= bs!1303249 d!1778862))

(declare-fun m!6603054 () Bool)

(assert (=> bs!1303249 m!6603054))

(assert (=> b!5631477 d!1778862))

(declare-fun b!5631951 () Bool)

(declare-fun e!3471141 () Bool)

(declare-fun lt!2262724 () Option!15633)

(declare-fun ++!13840 (List!63173 List!63173) List!63173)

(declare-fun get!21720 (Option!15633) tuple2!65442)

(assert (=> b!5631951 (= e!3471141 (= (++!13840 (_1!36024 (get!21720 lt!2262724)) (_2!36024 (get!21720 lt!2262724))) s!2326))))

(declare-fun b!5631952 () Bool)

(declare-fun res!2385005 () Bool)

(assert (=> b!5631952 (=> (not res!2385005) (not e!3471141))))

(assert (=> b!5631952 (= res!2385005 (matchR!7809 (regTwo!31760 r!7292) (_2!36024 (get!21720 lt!2262724))))))

(declare-fun b!5631953 () Bool)

(declare-fun e!3471142 () Bool)

(assert (=> b!5631953 (= e!3471142 (matchR!7809 (regTwo!31760 r!7292) s!2326))))

(declare-fun b!5631954 () Bool)

(declare-fun res!2385007 () Bool)

(assert (=> b!5631954 (=> (not res!2385007) (not e!3471141))))

(assert (=> b!5631954 (= res!2385007 (matchR!7809 (regOne!31760 r!7292) (_1!36024 (get!21720 lt!2262724))))))

(declare-fun b!5631955 () Bool)

(declare-fun e!3471140 () Bool)

(assert (=> b!5631955 (= e!3471140 (not (isDefined!12336 lt!2262724)))))

(declare-fun b!5631956 () Bool)

(declare-fun e!3471144 () Option!15633)

(assert (=> b!5631956 (= e!3471144 (Some!15632 (tuple2!65443 Nil!63049 s!2326)))))

(declare-fun b!5631957 () Bool)

(declare-fun e!3471143 () Option!15633)

(assert (=> b!5631957 (= e!3471143 None!15632)))

(declare-fun b!5631958 () Bool)

(assert (=> b!5631958 (= e!3471144 e!3471143)))

(declare-fun c!989076 () Bool)

(assert (=> b!5631958 (= c!989076 (is-Nil!63049 s!2326))))

(declare-fun b!5631959 () Bool)

(declare-fun lt!2262725 () Unit!156028)

(declare-fun lt!2262726 () Unit!156028)

(assert (=> b!5631959 (= lt!2262725 lt!2262726)))

(assert (=> b!5631959 (= (++!13840 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (t!376467 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2009 (List!63173 C!31518 List!63173 List!63173) Unit!156028)

(assert (=> b!5631959 (= lt!2262726 (lemmaMoveElementToOtherListKeepsConcatEq!2009 Nil!63049 (h!69497 s!2326) (t!376467 s!2326) s!2326))))

(assert (=> b!5631959 (= e!3471143 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (t!376467 s!2326) s!2326))))

(declare-fun d!1778864 () Bool)

(assert (=> d!1778864 e!3471140))

(declare-fun res!2385006 () Bool)

(assert (=> d!1778864 (=> res!2385006 e!3471140)))

(assert (=> d!1778864 (= res!2385006 e!3471141)))

(declare-fun res!2385004 () Bool)

(assert (=> d!1778864 (=> (not res!2385004) (not e!3471141))))

(assert (=> d!1778864 (= res!2385004 (isDefined!12336 lt!2262724))))

(assert (=> d!1778864 (= lt!2262724 e!3471144)))

(declare-fun c!989077 () Bool)

(assert (=> d!1778864 (= c!989077 e!3471142)))

(declare-fun res!2385003 () Bool)

(assert (=> d!1778864 (=> (not res!2385003) (not e!3471142))))

(assert (=> d!1778864 (= res!2385003 (matchR!7809 (regOne!31760 r!7292) Nil!63049))))

(assert (=> d!1778864 (validRegex!7360 (regOne!31760 r!7292))))

(assert (=> d!1778864 (= (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326) lt!2262724)))

(assert (= (and d!1778864 res!2385003) b!5631953))

(assert (= (and d!1778864 c!989077) b!5631956))

(assert (= (and d!1778864 (not c!989077)) b!5631958))

(assert (= (and b!5631958 c!989076) b!5631957))

(assert (= (and b!5631958 (not c!989076)) b!5631959))

(assert (= (and d!1778864 res!2385004) b!5631954))

(assert (= (and b!5631954 res!2385007) b!5631952))

(assert (= (and b!5631952 res!2385005) b!5631951))

(assert (= (and d!1778864 (not res!2385006)) b!5631955))

(declare-fun m!6603056 () Bool)

(assert (=> b!5631951 m!6603056))

(declare-fun m!6603058 () Bool)

(assert (=> b!5631951 m!6603058))

(declare-fun m!6603060 () Bool)

(assert (=> b!5631953 m!6603060))

(declare-fun m!6603062 () Bool)

(assert (=> d!1778864 m!6603062))

(declare-fun m!6603064 () Bool)

(assert (=> d!1778864 m!6603064))

(declare-fun m!6603066 () Bool)

(assert (=> d!1778864 m!6603066))

(assert (=> b!5631954 m!6603056))

(declare-fun m!6603068 () Bool)

(assert (=> b!5631954 m!6603068))

(assert (=> b!5631952 m!6603056))

(declare-fun m!6603070 () Bool)

(assert (=> b!5631952 m!6603070))

(declare-fun m!6603072 () Bool)

(assert (=> b!5631959 m!6603072))

(assert (=> b!5631959 m!6603072))

(declare-fun m!6603074 () Bool)

(assert (=> b!5631959 m!6603074))

(declare-fun m!6603076 () Bool)

(assert (=> b!5631959 m!6603076))

(assert (=> b!5631959 m!6603072))

(declare-fun m!6603078 () Bool)

(assert (=> b!5631959 m!6603078))

(assert (=> b!5631955 m!6603062))

(assert (=> b!5631497 d!1778864))

(declare-fun d!1778866 () Bool)

(declare-fun choose!42693 (Int) Bool)

(assert (=> d!1778866 (= (Exists!2724 lambda!302651) (choose!42693 lambda!302651))))

(declare-fun bs!1303250 () Bool)

(assert (= bs!1303250 d!1778866))

(declare-fun m!6603080 () Bool)

(assert (=> bs!1303250 m!6603080))

(assert (=> b!5631497 d!1778866))

(declare-fun d!1778868 () Bool)

(assert (=> d!1778868 (= (Exists!2724 lambda!302652) (choose!42693 lambda!302652))))

(declare-fun bs!1303251 () Bool)

(assert (= bs!1303251 d!1778868))

(declare-fun m!6603082 () Bool)

(assert (=> bs!1303251 m!6603082))

(assert (=> b!5631497 d!1778868))

(declare-fun bs!1303252 () Bool)

(declare-fun d!1778870 () Bool)

(assert (= bs!1303252 (and d!1778870 b!5631497)))

(declare-fun lambda!302694 () Int)

(assert (=> bs!1303252 (= lambda!302694 lambda!302651)))

(assert (=> bs!1303252 (not (= lambda!302694 lambda!302652))))

(declare-fun bs!1303253 () Bool)

(assert (= bs!1303253 (and d!1778870 b!5631688)))

(assert (=> bs!1303253 (not (= lambda!302694 lambda!302676))))

(declare-fun bs!1303254 () Bool)

(assert (= bs!1303254 (and d!1778870 b!5631684)))

(assert (=> bs!1303254 (not (= lambda!302694 lambda!302677))))

(assert (=> d!1778870 true))

(assert (=> d!1778870 true))

(assert (=> d!1778870 true))

(assert (=> d!1778870 (= (isDefined!12336 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326)) (Exists!2724 lambda!302694))))

(declare-fun lt!2262729 () Unit!156028)

(declare-fun choose!42694 (Regex!15624 Regex!15624 List!63173) Unit!156028)

(assert (=> d!1778870 (= lt!2262729 (choose!42694 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326))))

(assert (=> d!1778870 (validRegex!7360 (regOne!31760 r!7292))))

(assert (=> d!1778870 (= (lemmaFindConcatSeparationEquivalentToExists!1811 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326) lt!2262729)))

(declare-fun bs!1303255 () Bool)

(assert (= bs!1303255 d!1778870))

(assert (=> bs!1303255 m!6603066))

(declare-fun m!6603084 () Bool)

(assert (=> bs!1303255 m!6603084))

(declare-fun m!6603086 () Bool)

(assert (=> bs!1303255 m!6603086))

(assert (=> bs!1303255 m!6602642))

(assert (=> bs!1303255 m!6602644))

(assert (=> bs!1303255 m!6602642))

(assert (=> b!5631497 d!1778870))

(declare-fun bs!1303256 () Bool)

(declare-fun d!1778872 () Bool)

(assert (= bs!1303256 (and d!1778872 b!5631497)))

(declare-fun lambda!302699 () Int)

(assert (=> bs!1303256 (not (= lambda!302699 lambda!302652))))

(declare-fun bs!1303257 () Bool)

(assert (= bs!1303257 (and d!1778872 b!5631684)))

(assert (=> bs!1303257 (not (= lambda!302699 lambda!302677))))

(declare-fun bs!1303258 () Bool)

(assert (= bs!1303258 (and d!1778872 b!5631688)))

(assert (=> bs!1303258 (not (= lambda!302699 lambda!302676))))

(assert (=> bs!1303256 (= lambda!302699 lambda!302651)))

(declare-fun bs!1303259 () Bool)

(assert (= bs!1303259 (and d!1778872 d!1778870)))

(assert (=> bs!1303259 (= lambda!302699 lambda!302694)))

(assert (=> d!1778872 true))

(assert (=> d!1778872 true))

(assert (=> d!1778872 true))

(declare-fun lambda!302700 () Int)

(assert (=> bs!1303256 (= lambda!302700 lambda!302652)))

(assert (=> bs!1303257 (= lambda!302700 lambda!302677)))

(assert (=> bs!1303258 (not (= lambda!302700 lambda!302676))))

(declare-fun bs!1303260 () Bool)

(assert (= bs!1303260 d!1778872))

(assert (=> bs!1303260 (not (= lambda!302700 lambda!302699))))

(assert (=> bs!1303256 (not (= lambda!302700 lambda!302651))))

(assert (=> bs!1303259 (not (= lambda!302700 lambda!302694))))

(assert (=> d!1778872 true))

(assert (=> d!1778872 true))

(assert (=> d!1778872 true))

(assert (=> d!1778872 (= (Exists!2724 lambda!302699) (Exists!2724 lambda!302700))))

(declare-fun lt!2262732 () Unit!156028)

(declare-fun choose!42695 (Regex!15624 Regex!15624 List!63173) Unit!156028)

(assert (=> d!1778872 (= lt!2262732 (choose!42695 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326))))

(assert (=> d!1778872 (validRegex!7360 (regOne!31760 r!7292))))

(assert (=> d!1778872 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1353 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326) lt!2262732)))

(declare-fun m!6603088 () Bool)

(assert (=> bs!1303260 m!6603088))

(declare-fun m!6603090 () Bool)

(assert (=> bs!1303260 m!6603090))

(declare-fun m!6603092 () Bool)

(assert (=> bs!1303260 m!6603092))

(assert (=> bs!1303260 m!6603066))

(assert (=> b!5631497 d!1778872))

(declare-fun d!1778876 () Bool)

(declare-fun isEmpty!34892 (Option!15633) Bool)

(assert (=> d!1778876 (= (isDefined!12336 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326)) (not (isEmpty!34892 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326))))))

(declare-fun bs!1303261 () Bool)

(assert (= bs!1303261 d!1778876))

(assert (=> bs!1303261 m!6602642))

(declare-fun m!6603094 () Bool)

(assert (=> bs!1303261 m!6603094))

(assert (=> b!5631497 d!1778876))

(declare-fun b!5632001 () Bool)

(declare-fun e!3471167 () Bool)

(declare-fun tp!1558818 () Bool)

(declare-fun tp!1558815 () Bool)

(assert (=> b!5632001 (= e!3471167 (and tp!1558818 tp!1558815))))

(declare-fun b!5632002 () Bool)

(declare-fun tp!1558814 () Bool)

(assert (=> b!5632002 (= e!3471167 tp!1558814)))

(declare-fun b!5632003 () Bool)

(declare-fun tp!1558816 () Bool)

(declare-fun tp!1558817 () Bool)

(assert (=> b!5632003 (= e!3471167 (and tp!1558816 tp!1558817))))

(assert (=> b!5631498 (= tp!1558766 e!3471167)))

(declare-fun b!5632000 () Bool)

(assert (=> b!5632000 (= e!3471167 tp_is_empty!40501)))

(assert (= (and b!5631498 (is-ElementMatch!15624 (regOne!31761 r!7292))) b!5632000))

(assert (= (and b!5631498 (is-Concat!24469 (regOne!31761 r!7292))) b!5632001))

(assert (= (and b!5631498 (is-Star!15624 (regOne!31761 r!7292))) b!5632002))

(assert (= (and b!5631498 (is-Union!15624 (regOne!31761 r!7292))) b!5632003))

(declare-fun b!5632005 () Bool)

(declare-fun e!3471168 () Bool)

(declare-fun tp!1558823 () Bool)

(declare-fun tp!1558820 () Bool)

(assert (=> b!5632005 (= e!3471168 (and tp!1558823 tp!1558820))))

(declare-fun b!5632006 () Bool)

(declare-fun tp!1558819 () Bool)

(assert (=> b!5632006 (= e!3471168 tp!1558819)))

(declare-fun b!5632007 () Bool)

(declare-fun tp!1558821 () Bool)

(declare-fun tp!1558822 () Bool)

(assert (=> b!5632007 (= e!3471168 (and tp!1558821 tp!1558822))))

(assert (=> b!5631498 (= tp!1558771 e!3471168)))

(declare-fun b!5632004 () Bool)

(assert (=> b!5632004 (= e!3471168 tp_is_empty!40501)))

(assert (= (and b!5631498 (is-ElementMatch!15624 (regTwo!31761 r!7292))) b!5632004))

(assert (= (and b!5631498 (is-Concat!24469 (regTwo!31761 r!7292))) b!5632005))

(assert (= (and b!5631498 (is-Star!15624 (regTwo!31761 r!7292))) b!5632006))

(assert (= (and b!5631498 (is-Union!15624 (regTwo!31761 r!7292))) b!5632007))

(declare-fun b!5632009 () Bool)

(declare-fun e!3471169 () Bool)

(declare-fun tp!1558828 () Bool)

(declare-fun tp!1558825 () Bool)

(assert (=> b!5632009 (= e!3471169 (and tp!1558828 tp!1558825))))

(declare-fun b!5632010 () Bool)

(declare-fun tp!1558824 () Bool)

(assert (=> b!5632010 (= e!3471169 tp!1558824)))

(declare-fun b!5632011 () Bool)

(declare-fun tp!1558826 () Bool)

(declare-fun tp!1558827 () Bool)

(assert (=> b!5632011 (= e!3471169 (and tp!1558826 tp!1558827))))

(assert (=> b!5631483 (= tp!1558768 e!3471169)))

(declare-fun b!5632008 () Bool)

(assert (=> b!5632008 (= e!3471169 tp_is_empty!40501)))

(assert (= (and b!5631483 (is-ElementMatch!15624 (regOne!31760 r!7292))) b!5632008))

(assert (= (and b!5631483 (is-Concat!24469 (regOne!31760 r!7292))) b!5632009))

(assert (= (and b!5631483 (is-Star!15624 (regOne!31760 r!7292))) b!5632010))

(assert (= (and b!5631483 (is-Union!15624 (regOne!31760 r!7292))) b!5632011))

(declare-fun b!5632013 () Bool)

(declare-fun e!3471170 () Bool)

(declare-fun tp!1558833 () Bool)

(declare-fun tp!1558830 () Bool)

(assert (=> b!5632013 (= e!3471170 (and tp!1558833 tp!1558830))))

(declare-fun b!5632014 () Bool)

(declare-fun tp!1558829 () Bool)

(assert (=> b!5632014 (= e!3471170 tp!1558829)))

(declare-fun b!5632015 () Bool)

(declare-fun tp!1558831 () Bool)

(declare-fun tp!1558832 () Bool)

(assert (=> b!5632015 (= e!3471170 (and tp!1558831 tp!1558832))))

(assert (=> b!5631483 (= tp!1558764 e!3471170)))

(declare-fun b!5632012 () Bool)

(assert (=> b!5632012 (= e!3471170 tp_is_empty!40501)))

(assert (= (and b!5631483 (is-ElementMatch!15624 (regTwo!31760 r!7292))) b!5632012))

(assert (= (and b!5631483 (is-Concat!24469 (regTwo!31760 r!7292))) b!5632013))

(assert (= (and b!5631483 (is-Star!15624 (regTwo!31760 r!7292))) b!5632014))

(assert (= (and b!5631483 (is-Union!15624 (regTwo!31760 r!7292))) b!5632015))

(declare-fun b!5632017 () Bool)

(declare-fun e!3471171 () Bool)

(declare-fun tp!1558838 () Bool)

(declare-fun tp!1558835 () Bool)

(assert (=> b!5632017 (= e!3471171 (and tp!1558838 tp!1558835))))

(declare-fun b!5632018 () Bool)

(declare-fun tp!1558834 () Bool)

(assert (=> b!5632018 (= e!3471171 tp!1558834)))

(declare-fun b!5632019 () Bool)

(declare-fun tp!1558836 () Bool)

(declare-fun tp!1558837 () Bool)

(assert (=> b!5632019 (= e!3471171 (and tp!1558836 tp!1558837))))

(assert (=> b!5631473 (= tp!1558765 e!3471171)))

(declare-fun b!5632016 () Bool)

(assert (=> b!5632016 (= e!3471171 tp_is_empty!40501)))

(assert (= (and b!5631473 (is-ElementMatch!15624 (reg!15953 r!7292))) b!5632016))

(assert (= (and b!5631473 (is-Concat!24469 (reg!15953 r!7292))) b!5632017))

(assert (= (and b!5631473 (is-Star!15624 (reg!15953 r!7292))) b!5632018))

(assert (= (and b!5631473 (is-Union!15624 (reg!15953 r!7292))) b!5632019))

(declare-fun b!5632024 () Bool)

(declare-fun e!3471174 () Bool)

(declare-fun tp!1558843 () Bool)

(declare-fun tp!1558844 () Bool)

(assert (=> b!5632024 (= e!3471174 (and tp!1558843 tp!1558844))))

(assert (=> b!5631469 (= tp!1558773 e!3471174)))

(assert (= (and b!5631469 (is-Cons!63047 (exprs!5508 (h!69496 zl!343)))) b!5632024))

(declare-fun b!5632033 () Bool)

(declare-fun e!3471187 () Bool)

(declare-fun tp!1558849 () Bool)

(assert (=> b!5632033 (= e!3471187 tp!1558849)))

(declare-fun tp!1558850 () Bool)

(declare-fun e!3471186 () Bool)

(declare-fun b!5632031 () Bool)

(assert (=> b!5632031 (= e!3471186 (and (inv!82308 (h!69496 (t!376466 zl!343))) e!3471187 tp!1558850))))

(assert (=> b!5631476 (= tp!1558767 e!3471186)))

(assert (= b!5632031 b!5632033))

(assert (= (and b!5631476 (is-Cons!63048 (t!376466 zl!343))) b!5632031))

(declare-fun m!6603096 () Bool)

(assert (=> b!5632031 m!6603096))

(declare-fun b!5632046 () Bool)

(declare-fun e!3471190 () Bool)

(declare-fun tp!1558853 () Bool)

(assert (=> b!5632046 (= e!3471190 (and tp_is_empty!40501 tp!1558853))))

(assert (=> b!5631495 (= tp!1558769 e!3471190)))

(assert (= (and b!5631495 (is-Cons!63049 (t!376467 s!2326))) b!5632046))

(declare-fun b!5632047 () Bool)

(declare-fun e!3471191 () Bool)

(declare-fun tp!1558854 () Bool)

(declare-fun tp!1558855 () Bool)

(assert (=> b!5632047 (= e!3471191 (and tp!1558854 tp!1558855))))

(assert (=> b!5631480 (= tp!1558772 e!3471191)))

(assert (= (and b!5631480 (is-Cons!63047 (exprs!5508 setElem!37621))) b!5632047))

(declare-fun condSetEmpty!37627 () Bool)

(assert (=> setNonEmpty!37621 (= condSetEmpty!37627 (= setRest!37621 (as set.empty (Set Context!10016))))))

(declare-fun setRes!37627 () Bool)

(assert (=> setNonEmpty!37621 (= tp!1558770 setRes!37627)))

(declare-fun setIsEmpty!37627 () Bool)

(assert (=> setIsEmpty!37627 setRes!37627))

(declare-fun e!3471194 () Bool)

(declare-fun tp!1558860 () Bool)

(declare-fun setNonEmpty!37627 () Bool)

(declare-fun setElem!37627 () Context!10016)

(assert (=> setNonEmpty!37627 (= setRes!37627 (and tp!1558860 (inv!82308 setElem!37627) e!3471194))))

(declare-fun setRest!37627 () (Set Context!10016))

(assert (=> setNonEmpty!37627 (= setRest!37621 (set.union (set.insert setElem!37627 (as set.empty (Set Context!10016))) setRest!37627))))

(declare-fun b!5632052 () Bool)

(declare-fun tp!1558861 () Bool)

(assert (=> b!5632052 (= e!3471194 tp!1558861)))

(assert (= (and setNonEmpty!37621 condSetEmpty!37627) setIsEmpty!37627))

(assert (= (and setNonEmpty!37621 (not condSetEmpty!37627)) setNonEmpty!37627))

(assert (= setNonEmpty!37627 b!5632052))

(declare-fun m!6603104 () Bool)

(assert (=> setNonEmpty!37627 m!6603104))

(declare-fun b_lambda!212977 () Bool)

(assert (= b_lambda!212975 (or b!5631478 b_lambda!212977)))

(declare-fun bs!1303262 () Bool)

(declare-fun d!1778880 () Bool)

(assert (= bs!1303262 (and d!1778880 b!5631478)))

(assert (=> bs!1303262 (= (dynLambda!24655 lambda!302653 (h!69496 zl!343)) (derivationStepZipperUp!892 (h!69496 zl!343) (h!69497 s!2326)))))

(assert (=> bs!1303262 m!6602610))

(assert (=> d!1778844 d!1778880))

(declare-fun b_lambda!212979 () Bool)

(assert (= b_lambda!212971 (or b!5631478 b_lambda!212979)))

(declare-fun bs!1303263 () Bool)

(declare-fun d!1778882 () Bool)

(assert (= bs!1303263 (and d!1778882 b!5631478)))

(assert (=> bs!1303263 (= (dynLambda!24655 lambda!302653 lt!2262588) (derivationStepZipperUp!892 lt!2262588 (h!69497 s!2326)))))

(assert (=> bs!1303263 m!6602664))

(assert (=> d!1778778 d!1778882))

(declare-fun b_lambda!212981 () Bool)

(assert (= b_lambda!212973 (or b!5631478 b_lambda!212981)))

(declare-fun bs!1303264 () Bool)

(declare-fun d!1778884 () Bool)

(assert (= bs!1303264 (and d!1778884 b!5631478)))

(assert (=> bs!1303264 (= (dynLambda!24655 lambda!302653 lt!2262573) (derivationStepZipperUp!892 lt!2262573 (h!69497 s!2326)))))

(assert (=> bs!1303264 m!6602662))

(assert (=> d!1778832 d!1778884))

(push 1)

(assert (not b!5631772))

(assert (not b!5631926))

(assert (not b!5632019))

(assert (not b!5631780))

(assert (not b!5631771))

(assert (not b!5631858))

(assert (not b!5631929))

(assert (not bm!424559))

(assert (not d!1778846))

(assert (not d!1778862))

(assert (not b!5631785))

(assert (not bs!1303264))

(assert (not d!1778786))

(assert (not b!5631919))

(assert (not bm!424563))

(assert (not bm!424561))

(assert (not b!5631900))

(assert (not b!5631855))

(assert (not b!5631634))

(assert (not bs!1303262))

(assert (not bm!424540))

(assert (not bm!424560))

(assert (not d!1778828))

(assert (not b!5632046))

(assert (not d!1778822))

(assert (not b!5631952))

(assert (not d!1778838))

(assert (not b!5632009))

(assert (not b!5631689))

(assert (not b!5632003))

(assert (not b!5631901))

(assert (not bm!424542))

(assert (not b!5632015))

(assert (not b!5631636))

(assert (not b!5632017))

(assert (not d!1778800))

(assert (not b!5631774))

(assert (not b!5632011))

(assert (not b!5631721))

(assert (not b!5631647))

(assert (not b!5632006))

(assert (not d!1778832))

(assert (not b!5631905))

(assert (not d!1778798))

(assert (not d!1778826))

(assert (not b!5631954))

(assert (not d!1778790))

(assert (not b!5631727))

(assert (not b!5631755))

(assert (not setNonEmpty!37627))

(assert (not d!1778876))

(assert (not b!5632052))

(assert (not b!5631833))

(assert (not b!5631753))

(assert (not b!5631898))

(assert (not b!5631906))

(assert (not b!5631951))

(assert (not b!5631779))

(assert (not b!5632002))

(assert (not b!5632001))

(assert (not d!1778820))

(assert (not d!1778870))

(assert (not b!5631924))

(assert (not bm!424517))

(assert (not b!5631722))

(assert (not b!5631856))

(assert (not d!1778788))

(assert (not b!5631787))

(assert (not b!5631903))

(assert (not b!5631863))

(assert (not bm!424567))

(assert (not b!5631732))

(assert (not b!5632018))

(assert (not d!1778814))

(assert (not b!5631762))

(assert (not bm!424527))

(assert (not b!5631754))

(assert (not b_lambda!212977))

(assert (not b!5632014))

(assert (not b!5631770))

(assert (not b!5631778))

(assert (not bm!424566))

(assert (not b!5631719))

(assert (not d!1778836))

(assert tp_is_empty!40501)

(assert (not d!1778872))

(assert (not b!5631904))

(assert (not b!5632010))

(assert (not d!1778834))

(assert (not d!1778780))

(assert (not d!1778830))

(assert (not b!5631777))

(assert (not b!5631869))

(assert (not d!1778868))

(assert (not d!1778772))

(assert (not b!5631834))

(assert (not b!5631861))

(assert (not d!1778864))

(assert (not b!5632024))

(assert (not b!5632013))

(assert (not b!5631824))

(assert (not d!1778840))

(assert (not b!5632005))

(assert (not bm!424523))

(assert (not b_lambda!212979))

(assert (not b!5631891))

(assert (not b!5631959))

(assert (not d!1778844))

(assert (not bm!424569))

(assert (not b!5631857))

(assert (not b!5631953))

(assert (not bm!424551))

(assert (not d!1778858))

(assert (not b!5631931))

(assert (not d!1778782))

(assert (not b!5631902))

(assert (not d!1778818))

(assert (not bm!424548))

(assert (not b!5631641))

(assert (not bm!424524))

(assert (not bm!424568))

(assert (not b!5631725))

(assert (not d!1778852))

(assert (not bm!424518))

(assert (not d!1778796))

(assert (not b!5631759))

(assert (not bm!424546))

(assert (not bs!1303263))

(assert (not b!5632007))

(assert (not b!5631769))

(assert (not d!1778794))

(assert (not bm!424545))

(assert (not b!5631864))

(assert (not b!5632031))

(assert (not b_lambda!212981))

(assert (not b!5631773))

(assert (not b!5631761))

(assert (not b!5632047))

(assert (not b!5631690))

(assert (not d!1778802))

(assert (not b!5631909))

(assert (not b!5631899))

(assert (not b!5631921))

(assert (not d!1778792))

(assert (not b!5631768))

(assert (not b!5631639))

(assert (not d!1778860))

(assert (not b!5631955))

(assert (not d!1778778))

(assert (not b!5631813))

(assert (not b!5631767))

(assert (not d!1778804))

(assert (not b!5631760))

(assert (not b!5632033))

(assert (not d!1778866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!5631898 d!1778792))

(declare-fun d!1778992 () Bool)

(assert (=> d!1778992 true))

(declare-fun setRes!37633 () Bool)

(assert (=> d!1778992 setRes!37633))

(declare-fun condSetEmpty!37633 () Bool)

(declare-fun res!2385139 () (Set Context!10016))

(assert (=> d!1778992 (= condSetEmpty!37633 (= res!2385139 (as set.empty (Set Context!10016))))))

(assert (=> d!1778992 (= (choose!42688 lt!2262592 lambda!302653) res!2385139)))

(declare-fun setIsEmpty!37633 () Bool)

(assert (=> setIsEmpty!37633 setRes!37633))

(declare-fun setNonEmpty!37633 () Bool)

(declare-fun e!3471401 () Bool)

(declare-fun setElem!37633 () Context!10016)

(declare-fun tp!1558924 () Bool)

(assert (=> setNonEmpty!37633 (= setRes!37633 (and tp!1558924 (inv!82308 setElem!37633) e!3471401))))

(declare-fun setRest!37633 () (Set Context!10016))

(assert (=> setNonEmpty!37633 (= res!2385139 (set.union (set.insert setElem!37633 (as set.empty (Set Context!10016))) setRest!37633))))

(declare-fun b!5632431 () Bool)

(declare-fun tp!1558925 () Bool)

(assert (=> b!5632431 (= e!3471401 tp!1558925)))

(assert (= (and d!1778992 condSetEmpty!37633) setIsEmpty!37633))

(assert (= (and d!1778992 (not condSetEmpty!37633)) setNonEmpty!37633))

(assert (= setNonEmpty!37633 b!5632431))

(declare-fun m!6603392 () Bool)

(assert (=> setNonEmpty!37633 m!6603392))

(assert (=> d!1778772 d!1778992))

(declare-fun d!1778994 () Bool)

(declare-fun lambda!302735 () Int)

(declare-fun exists!2187 ((Set Context!10016) Int) Bool)

(assert (=> d!1778994 (= (nullableZipper!1606 lt!2262587) (exists!2187 lt!2262587 lambda!302735))))

(declare-fun bs!1303310 () Bool)

(assert (= bs!1303310 d!1778994))

(declare-fun m!6603394 () Bool)

(assert (=> bs!1303310 m!6603394))

(assert (=> b!5631905 d!1778994))

(declare-fun d!1778996 () Bool)

(assert (=> d!1778996 (= (nullable!5656 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (nullableFct!1753 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun bs!1303311 () Bool)

(assert (= bs!1303311 d!1778996))

(declare-fun m!6603396 () Bool)

(assert (=> bs!1303311 m!6603396))

(assert (=> b!5631919 d!1778996))

(assert (=> b!5631924 d!1778846))

(declare-fun b!5632432 () Bool)

(declare-fun e!3471406 () Bool)

(assert (=> b!5632432 (= e!3471406 (matchR!7809 (derivativeStep!4460 (derivativeStep!4460 r!7292 (head!11992 s!2326)) (head!11992 (tail!11087 s!2326))) (tail!11087 (tail!11087 s!2326))))))

(declare-fun b!5632433 () Bool)

(declare-fun e!3471408 () Bool)

(declare-fun e!3471405 () Bool)

(assert (=> b!5632433 (= e!3471408 e!3471405)))

(declare-fun res!2385141 () Bool)

(assert (=> b!5632433 (=> res!2385141 e!3471405)))

(declare-fun call!424630 () Bool)

(assert (=> b!5632433 (= res!2385141 call!424630)))

(declare-fun b!5632434 () Bool)

(assert (=> b!5632434 (= e!3471406 (nullable!5656 (derivativeStep!4460 r!7292 (head!11992 s!2326))))))

(declare-fun bm!424625 () Bool)

(assert (=> bm!424625 (= call!424630 (isEmpty!34891 (tail!11087 s!2326)))))

(declare-fun b!5632435 () Bool)

(assert (=> b!5632435 (= e!3471405 (not (= (head!11992 (tail!11087 s!2326)) (c!988948 (derivativeStep!4460 r!7292 (head!11992 s!2326))))))))

(declare-fun b!5632436 () Bool)

(declare-fun e!3471402 () Bool)

(assert (=> b!5632436 (= e!3471402 e!3471408)))

(declare-fun res!2385143 () Bool)

(assert (=> b!5632436 (=> (not res!2385143) (not e!3471408))))

(declare-fun lt!2262783 () Bool)

(assert (=> b!5632436 (= res!2385143 (not lt!2262783))))

(declare-fun b!5632437 () Bool)

(declare-fun res!2385142 () Bool)

(assert (=> b!5632437 (=> res!2385142 e!3471402)))

(declare-fun e!3471407 () Bool)

(assert (=> b!5632437 (= res!2385142 e!3471407)))

(declare-fun res!2385140 () Bool)

(assert (=> b!5632437 (=> (not res!2385140) (not e!3471407))))

(assert (=> b!5632437 (= res!2385140 lt!2262783)))

(declare-fun b!5632438 () Bool)

(declare-fun res!2385144 () Bool)

(assert (=> b!5632438 (=> (not res!2385144) (not e!3471407))))

(assert (=> b!5632438 (= res!2385144 (isEmpty!34891 (tail!11087 (tail!11087 s!2326))))))

(declare-fun b!5632439 () Bool)

(declare-fun res!2385147 () Bool)

(assert (=> b!5632439 (=> (not res!2385147) (not e!3471407))))

(assert (=> b!5632439 (= res!2385147 (not call!424630))))

(declare-fun b!5632440 () Bool)

(assert (=> b!5632440 (= e!3471407 (= (head!11992 (tail!11087 s!2326)) (c!988948 (derivativeStep!4460 r!7292 (head!11992 s!2326)))))))

(declare-fun b!5632441 () Bool)

(declare-fun e!3471403 () Bool)

(assert (=> b!5632441 (= e!3471403 (not lt!2262783))))

(declare-fun b!5632442 () Bool)

(declare-fun e!3471404 () Bool)

(assert (=> b!5632442 (= e!3471404 e!3471403)))

(declare-fun c!989200 () Bool)

(assert (=> b!5632442 (= c!989200 (is-EmptyLang!15624 (derivativeStep!4460 r!7292 (head!11992 s!2326))))))

(declare-fun b!5632443 () Bool)

(declare-fun res!2385146 () Bool)

(assert (=> b!5632443 (=> res!2385146 e!3471402)))

(assert (=> b!5632443 (= res!2385146 (not (is-ElementMatch!15624 (derivativeStep!4460 r!7292 (head!11992 s!2326)))))))

(assert (=> b!5632443 (= e!3471403 e!3471402)))

(declare-fun b!5632444 () Bool)

(assert (=> b!5632444 (= e!3471404 (= lt!2262783 call!424630))))

(declare-fun d!1778998 () Bool)

(assert (=> d!1778998 e!3471404))

(declare-fun c!989199 () Bool)

(assert (=> d!1778998 (= c!989199 (is-EmptyExpr!15624 (derivativeStep!4460 r!7292 (head!11992 s!2326))))))

(assert (=> d!1778998 (= lt!2262783 e!3471406)))

(declare-fun c!989198 () Bool)

(assert (=> d!1778998 (= c!989198 (isEmpty!34891 (tail!11087 s!2326)))))

(assert (=> d!1778998 (validRegex!7360 (derivativeStep!4460 r!7292 (head!11992 s!2326)))))

(assert (=> d!1778998 (= (matchR!7809 (derivativeStep!4460 r!7292 (head!11992 s!2326)) (tail!11087 s!2326)) lt!2262783)))

(declare-fun b!5632445 () Bool)

(declare-fun res!2385145 () Bool)

(assert (=> b!5632445 (=> res!2385145 e!3471405)))

(assert (=> b!5632445 (= res!2385145 (not (isEmpty!34891 (tail!11087 (tail!11087 s!2326)))))))

(assert (= (and d!1778998 c!989198) b!5632434))

(assert (= (and d!1778998 (not c!989198)) b!5632432))

(assert (= (and d!1778998 c!989199) b!5632444))

(assert (= (and d!1778998 (not c!989199)) b!5632442))

(assert (= (and b!5632442 c!989200) b!5632441))

(assert (= (and b!5632442 (not c!989200)) b!5632443))

(assert (= (and b!5632443 (not res!2385146)) b!5632437))

(assert (= (and b!5632437 res!2385140) b!5632439))

(assert (= (and b!5632439 res!2385147) b!5632438))

(assert (= (and b!5632438 res!2385144) b!5632440))

(assert (= (and b!5632437 (not res!2385142)) b!5632436))

(assert (= (and b!5632436 res!2385143) b!5632433))

(assert (= (and b!5632433 (not res!2385141)) b!5632445))

(assert (= (and b!5632445 (not res!2385145)) b!5632435))

(assert (= (or b!5632444 b!5632433 b!5632439) bm!424625))

(assert (=> bm!424625 m!6602846))

(assert (=> bm!424625 m!6602850))

(assert (=> b!5632440 m!6602846))

(declare-fun m!6603398 () Bool)

(assert (=> b!5632440 m!6603398))

(assert (=> d!1778998 m!6602846))

(assert (=> d!1778998 m!6602850))

(assert (=> d!1778998 m!6602844))

(declare-fun m!6603400 () Bool)

(assert (=> d!1778998 m!6603400))

(assert (=> b!5632432 m!6602846))

(assert (=> b!5632432 m!6603398))

(assert (=> b!5632432 m!6602844))

(assert (=> b!5632432 m!6603398))

(declare-fun m!6603402 () Bool)

(assert (=> b!5632432 m!6603402))

(assert (=> b!5632432 m!6602846))

(declare-fun m!6603404 () Bool)

(assert (=> b!5632432 m!6603404))

(assert (=> b!5632432 m!6603402))

(assert (=> b!5632432 m!6603404))

(declare-fun m!6603406 () Bool)

(assert (=> b!5632432 m!6603406))

(assert (=> b!5632438 m!6602846))

(assert (=> b!5632438 m!6603404))

(assert (=> b!5632438 m!6603404))

(declare-fun m!6603408 () Bool)

(assert (=> b!5632438 m!6603408))

(assert (=> b!5632435 m!6602846))

(assert (=> b!5632435 m!6603398))

(assert (=> b!5632445 m!6602846))

(assert (=> b!5632445 m!6603404))

(assert (=> b!5632445 m!6603404))

(assert (=> b!5632445 m!6603408))

(assert (=> b!5632434 m!6602844))

(declare-fun m!6603410 () Bool)

(assert (=> b!5632434 m!6603410))

(assert (=> b!5631719 d!1778998))

(declare-fun bm!424634 () Bool)

(declare-fun call!424641 () Regex!15624)

(declare-fun call!424642 () Regex!15624)

(assert (=> bm!424634 (= call!424641 call!424642)))

(declare-fun b!5632467 () Bool)

(declare-fun e!3471419 () Regex!15624)

(declare-fun e!3471423 () Regex!15624)

(assert (=> b!5632467 (= e!3471419 e!3471423)))

(declare-fun c!989214 () Bool)

(assert (=> b!5632467 (= c!989214 (is-Star!15624 r!7292))))

(declare-fun e!3471420 () Regex!15624)

(declare-fun call!424640 () Regex!15624)

(declare-fun b!5632468 () Bool)

(assert (=> b!5632468 (= e!3471420 (Union!15624 (Concat!24469 call!424640 (regTwo!31760 r!7292)) call!424641))))

(declare-fun b!5632469 () Bool)

(assert (=> b!5632469 (= e!3471420 (Union!15624 (Concat!24469 call!424641 (regTwo!31760 r!7292)) EmptyLang!15624))))

(declare-fun b!5632470 () Bool)

(assert (=> b!5632470 (= e!3471423 (Concat!24469 call!424640 r!7292))))

(declare-fun call!424639 () Regex!15624)

(declare-fun bm!424635 () Bool)

(declare-fun c!989212 () Bool)

(assert (=> bm!424635 (= call!424639 (derivativeStep!4460 (ite c!989212 (regTwo!31761 r!7292) (ite c!989214 (reg!15953 r!7292) (regOne!31760 r!7292))) (head!11992 s!2326)))))

(declare-fun b!5632471 () Bool)

(assert (=> b!5632471 (= e!3471419 (Union!15624 call!424642 call!424639))))

(declare-fun b!5632472 () Bool)

(assert (=> b!5632472 (= c!989212 (is-Union!15624 r!7292))))

(declare-fun e!3471421 () Regex!15624)

(assert (=> b!5632472 (= e!3471421 e!3471419)))

(declare-fun b!5632473 () Bool)

(assert (=> b!5632473 (= e!3471421 (ite (= (head!11992 s!2326) (c!988948 r!7292)) EmptyExpr!15624 EmptyLang!15624))))

(declare-fun c!989215 () Bool)

(declare-fun bm!424636 () Bool)

(assert (=> bm!424636 (= call!424642 (derivativeStep!4460 (ite c!989212 (regOne!31761 r!7292) (ite c!989215 (regTwo!31760 r!7292) (regOne!31760 r!7292))) (head!11992 s!2326)))))

(declare-fun b!5632474 () Bool)

(declare-fun e!3471422 () Regex!15624)

(assert (=> b!5632474 (= e!3471422 EmptyLang!15624)))

(declare-fun b!5632466 () Bool)

(assert (=> b!5632466 (= e!3471422 e!3471421)))

(declare-fun c!989211 () Bool)

(assert (=> b!5632466 (= c!989211 (is-ElementMatch!15624 r!7292))))

(declare-fun d!1779000 () Bool)

(declare-fun lt!2262786 () Regex!15624)

(assert (=> d!1779000 (validRegex!7360 lt!2262786)))

(assert (=> d!1779000 (= lt!2262786 e!3471422)))

(declare-fun c!989213 () Bool)

(assert (=> d!1779000 (= c!989213 (or (is-EmptyExpr!15624 r!7292) (is-EmptyLang!15624 r!7292)))))

(assert (=> d!1779000 (validRegex!7360 r!7292)))

(assert (=> d!1779000 (= (derivativeStep!4460 r!7292 (head!11992 s!2326)) lt!2262786)))

(declare-fun b!5632475 () Bool)

(assert (=> b!5632475 (= c!989215 (nullable!5656 (regOne!31760 r!7292)))))

(assert (=> b!5632475 (= e!3471423 e!3471420)))

(declare-fun bm!424637 () Bool)

(assert (=> bm!424637 (= call!424640 call!424639)))

(assert (= (and d!1779000 c!989213) b!5632474))

(assert (= (and d!1779000 (not c!989213)) b!5632466))

(assert (= (and b!5632466 c!989211) b!5632473))

(assert (= (and b!5632466 (not c!989211)) b!5632472))

(assert (= (and b!5632472 c!989212) b!5632471))

(assert (= (and b!5632472 (not c!989212)) b!5632467))

(assert (= (and b!5632467 c!989214) b!5632470))

(assert (= (and b!5632467 (not c!989214)) b!5632475))

(assert (= (and b!5632475 c!989215) b!5632468))

(assert (= (and b!5632475 (not c!989215)) b!5632469))

(assert (= (or b!5632468 b!5632469) bm!424634))

(assert (= (or b!5632470 b!5632468) bm!424637))

(assert (= (or b!5632471 bm!424637) bm!424635))

(assert (= (or b!5632471 bm!424634) bm!424636))

(assert (=> bm!424635 m!6602842))

(declare-fun m!6603412 () Bool)

(assert (=> bm!424635 m!6603412))

(assert (=> bm!424636 m!6602842))

(declare-fun m!6603414 () Bool)

(assert (=> bm!424636 m!6603414))

(declare-fun m!6603416 () Bool)

(assert (=> d!1779000 m!6603416))

(assert (=> d!1779000 m!6602638))

(declare-fun m!6603418 () Bool)

(assert (=> b!5632475 m!6603418))

(assert (=> b!5631719 d!1779000))

(declare-fun d!1779002 () Bool)

(assert (=> d!1779002 (= (head!11992 s!2326) (h!69497 s!2326))))

(assert (=> b!5631719 d!1779002))

(declare-fun d!1779004 () Bool)

(assert (=> d!1779004 (= (tail!11087 s!2326) (t!376467 s!2326))))

(assert (=> b!5631719 d!1779004))

(declare-fun b!5632476 () Bool)

(declare-fun e!3471427 () (Set Context!10016))

(declare-fun call!424645 () (Set Context!10016))

(assert (=> b!5632476 (= e!3471427 call!424645)))

(declare-fun b!5632477 () Bool)

(declare-fun c!989218 () Bool)

(assert (=> b!5632477 (= c!989218 (is-Star!15624 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))))))

(declare-fun e!3471424 () (Set Context!10016))

(assert (=> b!5632477 (= e!3471424 e!3471427)))

(declare-fun bm!424638 () Bool)

(declare-fun call!424648 () List!63171)

(declare-fun call!424647 () (Set Context!10016))

(declare-fun c!989217 () Bool)

(assert (=> bm!424638 (= call!424647 (derivationStepZipperDown!966 (ite c!989217 (regOne!31761 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))) (regOne!31760 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))))) (ite c!989217 (ite c!989031 lt!2262573 (Context!10017 call!424556)) (Context!10017 call!424648)) (h!69497 s!2326)))))

(declare-fun b!5632478 () Bool)

(declare-fun e!3471429 () Bool)

(assert (=> b!5632478 (= e!3471429 (nullable!5656 (regOne!31760 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))))))))

(declare-fun b!5632479 () Bool)

(declare-fun e!3471428 () (Set Context!10016))

(declare-fun e!3471425 () (Set Context!10016))

(assert (=> b!5632479 (= e!3471428 e!3471425)))

(assert (=> b!5632479 (= c!989217 (is-Union!15624 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))))))

(declare-fun bm!424639 () Bool)

(declare-fun call!424644 () (Set Context!10016))

(assert (=> bm!424639 (= call!424645 call!424644)))

(declare-fun c!989219 () Bool)

(declare-fun call!424646 () List!63171)

(declare-fun bm!424640 () Bool)

(declare-fun c!989216 () Bool)

(declare-fun call!424643 () (Set Context!10016))

(assert (=> bm!424640 (= call!424643 (derivationStepZipperDown!966 (ite c!989217 (regTwo!31761 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))) (ite c!989219 (regTwo!31760 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))) (ite c!989216 (regOne!31760 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))) (reg!15953 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))))))) (ite (or c!989217 c!989219) (ite c!989031 lt!2262573 (Context!10017 call!424556)) (Context!10017 call!424646)) (h!69497 s!2326)))))

(declare-fun b!5632480 () Bool)

(declare-fun e!3471426 () (Set Context!10016))

(assert (=> b!5632480 (= e!3471426 (set.union call!424647 call!424644))))

(declare-fun b!5632481 () Bool)

(assert (=> b!5632481 (= e!3471424 call!424645)))

(declare-fun b!5632482 () Bool)

(assert (=> b!5632482 (= c!989219 e!3471429)))

(declare-fun res!2385148 () Bool)

(assert (=> b!5632482 (=> (not res!2385148) (not e!3471429))))

(assert (=> b!5632482 (= res!2385148 (is-Concat!24469 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))))))

(assert (=> b!5632482 (= e!3471425 e!3471426)))

(declare-fun bm!424641 () Bool)

(assert (=> bm!424641 (= call!424644 call!424643)))

(declare-fun bm!424642 () Bool)

(assert (=> bm!424642 (= call!424646 call!424648)))

(declare-fun bm!424643 () Bool)

(assert (=> bm!424643 (= call!424648 ($colon$colon!1674 (exprs!5508 (ite c!989031 lt!2262573 (Context!10017 call!424556))) (ite (or c!989219 c!989216) (regTwo!31760 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))) (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))))))))

(declare-fun b!5632483 () Bool)

(assert (=> b!5632483 (= e!3471425 (set.union call!424647 call!424643))))

(declare-fun d!1779006 () Bool)

(declare-fun c!989220 () Bool)

(assert (=> d!1779006 (= c!989220 (and (is-ElementMatch!15624 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))) (= (c!988948 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))) (h!69497 s!2326))))))

(assert (=> d!1779006 (= (derivationStepZipperDown!966 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))) (ite c!989031 lt!2262573 (Context!10017 call!424556)) (h!69497 s!2326)) e!3471428)))

(declare-fun b!5632484 () Bool)

(assert (=> b!5632484 (= e!3471428 (set.insert (ite c!989031 lt!2262573 (Context!10017 call!424556)) (as set.empty (Set Context!10016))))))

(declare-fun b!5632485 () Bool)

(assert (=> b!5632485 (= e!3471426 e!3471424)))

(assert (=> b!5632485 (= c!989216 (is-Concat!24469 (ite c!989031 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))))))

(declare-fun b!5632486 () Bool)

(assert (=> b!5632486 (= e!3471427 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779006 c!989220) b!5632484))

(assert (= (and d!1779006 (not c!989220)) b!5632479))

(assert (= (and b!5632479 c!989217) b!5632483))

(assert (= (and b!5632479 (not c!989217)) b!5632482))

(assert (= (and b!5632482 res!2385148) b!5632478))

(assert (= (and b!5632482 c!989219) b!5632480))

(assert (= (and b!5632482 (not c!989219)) b!5632485))

(assert (= (and b!5632485 c!989216) b!5632481))

(assert (= (and b!5632485 (not c!989216)) b!5632477))

(assert (= (and b!5632477 c!989218) b!5632476))

(assert (= (and b!5632477 (not c!989218)) b!5632486))

(assert (= (or b!5632481 b!5632476) bm!424642))

(assert (= (or b!5632481 b!5632476) bm!424639))

(assert (= (or b!5632480 bm!424642) bm!424643))

(assert (= (or b!5632480 bm!424639) bm!424641))

(assert (= (or b!5632483 bm!424641) bm!424640))

(assert (= (or b!5632483 b!5632480) bm!424638))

(declare-fun m!6603420 () Bool)

(assert (=> bm!424643 m!6603420))

(declare-fun m!6603422 () Bool)

(assert (=> bm!424638 m!6603422))

(declare-fun m!6603424 () Bool)

(assert (=> bm!424640 m!6603424))

(declare-fun m!6603426 () Bool)

(assert (=> b!5632478 m!6603426))

(declare-fun m!6603428 () Bool)

(assert (=> b!5632484 m!6603428))

(assert (=> bm!424546 d!1779006))

(declare-fun b!5632487 () Bool)

(declare-fun e!3471435 () Bool)

(declare-fun e!3471430 () Bool)

(assert (=> b!5632487 (= e!3471435 e!3471430)))

(declare-fun c!989222 () Bool)

(assert (=> b!5632487 (= c!989222 (is-Union!15624 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))))))

(declare-fun bm!424644 () Bool)

(declare-fun call!424650 () Bool)

(declare-fun call!424651 () Bool)

(assert (=> bm!424644 (= call!424650 call!424651)))

(declare-fun c!989221 () Bool)

(declare-fun bm!424645 () Bool)

(assert (=> bm!424645 (= call!424651 (validRegex!7360 (ite c!989221 (reg!15953 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))) (ite c!989222 (regOne!31761 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))) (regOne!31760 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292)))))))))

(declare-fun d!1779008 () Bool)

(declare-fun res!2385151 () Bool)

(declare-fun e!3471431 () Bool)

(assert (=> d!1779008 (=> res!2385151 e!3471431)))

(assert (=> d!1779008 (= res!2385151 (is-ElementMatch!15624 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))))))

(assert (=> d!1779008 (= (validRegex!7360 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))) e!3471431)))

(declare-fun b!5632488 () Bool)

(declare-fun e!3471432 () Bool)

(declare-fun e!3471436 () Bool)

(assert (=> b!5632488 (= e!3471432 e!3471436)))

(declare-fun res!2385152 () Bool)

(assert (=> b!5632488 (=> (not res!2385152) (not e!3471436))))

(assert (=> b!5632488 (= res!2385152 call!424650)))

(declare-fun b!5632489 () Bool)

(declare-fun e!3471433 () Bool)

(assert (=> b!5632489 (= e!3471435 e!3471433)))

(declare-fun res!2385153 () Bool)

(assert (=> b!5632489 (= res!2385153 (not (nullable!5656 (reg!15953 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))))))))

(assert (=> b!5632489 (=> (not res!2385153) (not e!3471433))))

(declare-fun b!5632490 () Bool)

(declare-fun res!2385150 () Bool)

(declare-fun e!3471434 () Bool)

(assert (=> b!5632490 (=> (not res!2385150) (not e!3471434))))

(assert (=> b!5632490 (= res!2385150 call!424650)))

(assert (=> b!5632490 (= e!3471430 e!3471434)))

(declare-fun b!5632491 () Bool)

(declare-fun call!424649 () Bool)

(assert (=> b!5632491 (= e!3471434 call!424649)))

(declare-fun bm!424646 () Bool)

(assert (=> bm!424646 (= call!424649 (validRegex!7360 (ite c!989222 (regTwo!31761 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))) (regTwo!31760 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))))))))

(declare-fun b!5632492 () Bool)

(assert (=> b!5632492 (= e!3471436 call!424649)))

(declare-fun b!5632493 () Bool)

(assert (=> b!5632493 (= e!3471433 call!424651)))

(declare-fun b!5632494 () Bool)

(declare-fun res!2385149 () Bool)

(assert (=> b!5632494 (=> res!2385149 e!3471432)))

(assert (=> b!5632494 (= res!2385149 (not (is-Concat!24469 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292)))))))

(assert (=> b!5632494 (= e!3471430 e!3471432)))

(declare-fun b!5632495 () Bool)

(assert (=> b!5632495 (= e!3471431 e!3471435)))

(assert (=> b!5632495 (= c!989221 (is-Star!15624 (ite c!989056 (regTwo!31761 r!7292) (regTwo!31760 r!7292))))))

(assert (= (and d!1779008 (not res!2385151)) b!5632495))

(assert (= (and b!5632495 c!989221) b!5632489))

(assert (= (and b!5632495 (not c!989221)) b!5632487))

(assert (= (and b!5632489 res!2385153) b!5632493))

(assert (= (and b!5632487 c!989222) b!5632490))

(assert (= (and b!5632487 (not c!989222)) b!5632494))

(assert (= (and b!5632490 res!2385150) b!5632491))

(assert (= (and b!5632494 (not res!2385149)) b!5632488))

(assert (= (and b!5632488 res!2385152) b!5632492))

(assert (= (or b!5632491 b!5632492) bm!424646))

(assert (= (or b!5632490 b!5632488) bm!424644))

(assert (= (or b!5632493 bm!424644) bm!424645))

(declare-fun m!6603430 () Bool)

(assert (=> bm!424645 m!6603430))

(declare-fun m!6603432 () Bool)

(assert (=> b!5632489 m!6603432))

(declare-fun m!6603434 () Bool)

(assert (=> bm!424646 m!6603434))

(assert (=> bm!424560 d!1779008))

(declare-fun d!1779010 () Bool)

(assert (=> d!1779010 (= (isEmpty!34888 (t!376465 (unfocusZipperList!1052 zl!343))) (is-Nil!63047 (t!376465 (unfocusZipperList!1052 zl!343))))))

(assert (=> b!5631858 d!1779010))

(declare-fun d!1779012 () Bool)

(assert (=> d!1779012 (= (nullable!5656 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))) (nullableFct!1753 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))))))

(declare-fun bs!1303312 () Bool)

(assert (= bs!1303312 d!1779012))

(declare-fun m!6603436 () Bool)

(assert (=> bs!1303312 m!6603436))

(assert (=> b!5631813 d!1779012))

(declare-fun d!1779014 () Bool)

(declare-fun c!989223 () Bool)

(assert (=> d!1779014 (= c!989223 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471437 () Bool)

(assert (=> d!1779014 (= (matchZipper!1762 (set.union lt!2262586 lt!2262565) (t!376467 s!2326)) e!3471437)))

(declare-fun b!5632496 () Bool)

(assert (=> b!5632496 (= e!3471437 (nullableZipper!1606 (set.union lt!2262586 lt!2262565)))))

(declare-fun b!5632497 () Bool)

(assert (=> b!5632497 (= e!3471437 (matchZipper!1762 (derivationStepZipper!1711 (set.union lt!2262586 lt!2262565) (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1779014 c!989223) b!5632496))

(assert (= (and d!1779014 (not c!989223)) b!5632497))

(assert (=> d!1779014 m!6602874))

(declare-fun m!6603438 () Bool)

(assert (=> b!5632496 m!6603438))

(assert (=> b!5632497 m!6602878))

(assert (=> b!5632497 m!6602878))

(declare-fun m!6603440 () Bool)

(assert (=> b!5632497 m!6603440))

(assert (=> b!5632497 m!6602882))

(assert (=> b!5632497 m!6603440))

(assert (=> b!5632497 m!6602882))

(declare-fun m!6603442 () Bool)

(assert (=> b!5632497 m!6603442))

(assert (=> d!1778828 d!1779014))

(assert (=> d!1778828 d!1778798))

(declare-fun d!1779016 () Bool)

(declare-fun e!3471440 () Bool)

(assert (=> d!1779016 (= (matchZipper!1762 (set.union lt!2262586 lt!2262565) (t!376467 s!2326)) e!3471440)))

(declare-fun res!2385156 () Bool)

(assert (=> d!1779016 (=> res!2385156 e!3471440)))

(assert (=> d!1779016 (= res!2385156 (matchZipper!1762 lt!2262586 (t!376467 s!2326)))))

(assert (=> d!1779016 true))

(declare-fun _$48!1254 () Unit!156028)

(assert (=> d!1779016 (= (choose!42692 lt!2262586 lt!2262565 (t!376467 s!2326)) _$48!1254)))

(declare-fun b!5632500 () Bool)

(assert (=> b!5632500 (= e!3471440 (matchZipper!1762 lt!2262565 (t!376467 s!2326)))))

(assert (= (and d!1779016 (not res!2385156)) b!5632500))

(assert (=> d!1779016 m!6602982))

(assert (=> d!1779016 m!6602634))

(assert (=> b!5632500 m!6602694))

(assert (=> d!1778828 d!1779016))

(declare-fun d!1779018 () Bool)

(assert (=> d!1779018 (= (isEmpty!34892 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326)) (not (is-Some!15632 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326))))))

(assert (=> d!1778876 d!1779018))

(assert (=> bs!1303264 d!1778776))

(assert (=> d!1778870 d!1778864))

(declare-fun d!1779020 () Bool)

(assert (=> d!1779020 (= (Exists!2724 lambda!302694) (choose!42693 lambda!302694))))

(declare-fun bs!1303313 () Bool)

(assert (= bs!1303313 d!1779020))

(declare-fun m!6603444 () Bool)

(assert (=> bs!1303313 m!6603444))

(assert (=> d!1778870 d!1779020))

(declare-fun b!5632501 () Bool)

(declare-fun e!3471446 () Bool)

(declare-fun e!3471441 () Bool)

(assert (=> b!5632501 (= e!3471446 e!3471441)))

(declare-fun c!989225 () Bool)

(assert (=> b!5632501 (= c!989225 (is-Union!15624 (regOne!31760 r!7292)))))

(declare-fun bm!424647 () Bool)

(declare-fun call!424653 () Bool)

(declare-fun call!424654 () Bool)

(assert (=> bm!424647 (= call!424653 call!424654)))

(declare-fun bm!424648 () Bool)

(declare-fun c!989224 () Bool)

(assert (=> bm!424648 (= call!424654 (validRegex!7360 (ite c!989224 (reg!15953 (regOne!31760 r!7292)) (ite c!989225 (regOne!31761 (regOne!31760 r!7292)) (regOne!31760 (regOne!31760 r!7292))))))))

(declare-fun d!1779022 () Bool)

(declare-fun res!2385159 () Bool)

(declare-fun e!3471442 () Bool)

(assert (=> d!1779022 (=> res!2385159 e!3471442)))

(assert (=> d!1779022 (= res!2385159 (is-ElementMatch!15624 (regOne!31760 r!7292)))))

(assert (=> d!1779022 (= (validRegex!7360 (regOne!31760 r!7292)) e!3471442)))

(declare-fun b!5632502 () Bool)

(declare-fun e!3471443 () Bool)

(declare-fun e!3471447 () Bool)

(assert (=> b!5632502 (= e!3471443 e!3471447)))

(declare-fun res!2385160 () Bool)

(assert (=> b!5632502 (=> (not res!2385160) (not e!3471447))))

(assert (=> b!5632502 (= res!2385160 call!424653)))

(declare-fun b!5632503 () Bool)

(declare-fun e!3471444 () Bool)

(assert (=> b!5632503 (= e!3471446 e!3471444)))

(declare-fun res!2385161 () Bool)

(assert (=> b!5632503 (= res!2385161 (not (nullable!5656 (reg!15953 (regOne!31760 r!7292)))))))

(assert (=> b!5632503 (=> (not res!2385161) (not e!3471444))))

(declare-fun b!5632504 () Bool)

(declare-fun res!2385158 () Bool)

(declare-fun e!3471445 () Bool)

(assert (=> b!5632504 (=> (not res!2385158) (not e!3471445))))

(assert (=> b!5632504 (= res!2385158 call!424653)))

(assert (=> b!5632504 (= e!3471441 e!3471445)))

(declare-fun b!5632505 () Bool)

(declare-fun call!424652 () Bool)

(assert (=> b!5632505 (= e!3471445 call!424652)))

(declare-fun bm!424649 () Bool)

(assert (=> bm!424649 (= call!424652 (validRegex!7360 (ite c!989225 (regTwo!31761 (regOne!31760 r!7292)) (regTwo!31760 (regOne!31760 r!7292)))))))

(declare-fun b!5632506 () Bool)

(assert (=> b!5632506 (= e!3471447 call!424652)))

(declare-fun b!5632507 () Bool)

(assert (=> b!5632507 (= e!3471444 call!424654)))

(declare-fun b!5632508 () Bool)

(declare-fun res!2385157 () Bool)

(assert (=> b!5632508 (=> res!2385157 e!3471443)))

(assert (=> b!5632508 (= res!2385157 (not (is-Concat!24469 (regOne!31760 r!7292))))))

(assert (=> b!5632508 (= e!3471441 e!3471443)))

(declare-fun b!5632509 () Bool)

(assert (=> b!5632509 (= e!3471442 e!3471446)))

(assert (=> b!5632509 (= c!989224 (is-Star!15624 (regOne!31760 r!7292)))))

(assert (= (and d!1779022 (not res!2385159)) b!5632509))

(assert (= (and b!5632509 c!989224) b!5632503))

(assert (= (and b!5632509 (not c!989224)) b!5632501))

(assert (= (and b!5632503 res!2385161) b!5632507))

(assert (= (and b!5632501 c!989225) b!5632504))

(assert (= (and b!5632501 (not c!989225)) b!5632508))

(assert (= (and b!5632504 res!2385158) b!5632505))

(assert (= (and b!5632508 (not res!2385157)) b!5632502))

(assert (= (and b!5632502 res!2385160) b!5632506))

(assert (= (or b!5632505 b!5632506) bm!424649))

(assert (= (or b!5632504 b!5632502) bm!424647))

(assert (= (or b!5632507 bm!424647) bm!424648))

(declare-fun m!6603446 () Bool)

(assert (=> bm!424648 m!6603446))

(declare-fun m!6603448 () Bool)

(assert (=> b!5632503 m!6603448))

(declare-fun m!6603450 () Bool)

(assert (=> bm!424649 m!6603450))

(assert (=> d!1778870 d!1779022))

(assert (=> d!1778870 d!1778876))

(declare-fun bs!1303314 () Bool)

(declare-fun d!1779024 () Bool)

(assert (= bs!1303314 (and d!1779024 b!5631497)))

(declare-fun lambda!302738 () Int)

(assert (=> bs!1303314 (not (= lambda!302738 lambda!302652))))

(declare-fun bs!1303315 () Bool)

(assert (= bs!1303315 (and d!1779024 b!5631684)))

(assert (=> bs!1303315 (not (= lambda!302738 lambda!302677))))

(declare-fun bs!1303316 () Bool)

(assert (= bs!1303316 (and d!1779024 b!5631688)))

(assert (=> bs!1303316 (not (= lambda!302738 lambda!302676))))

(declare-fun bs!1303317 () Bool)

(assert (= bs!1303317 (and d!1779024 d!1778872)))

(assert (=> bs!1303317 (not (= lambda!302738 lambda!302700))))

(assert (=> bs!1303317 (= lambda!302738 lambda!302699)))

(assert (=> bs!1303314 (= lambda!302738 lambda!302651)))

(declare-fun bs!1303318 () Bool)

(assert (= bs!1303318 (and d!1779024 d!1778870)))

(assert (=> bs!1303318 (= lambda!302738 lambda!302694)))

(assert (=> d!1779024 true))

(assert (=> d!1779024 true))

(assert (=> d!1779024 true))

(assert (=> d!1779024 (= (isDefined!12336 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) Nil!63049 s!2326 s!2326)) (Exists!2724 lambda!302738))))

(assert (=> d!1779024 true))

(declare-fun _$89!1746 () Unit!156028)

(assert (=> d!1779024 (= (choose!42694 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326) _$89!1746)))

(declare-fun bs!1303319 () Bool)

(assert (= bs!1303319 d!1779024))

(assert (=> bs!1303319 m!6602642))

(assert (=> bs!1303319 m!6602642))

(assert (=> bs!1303319 m!6602644))

(declare-fun m!6603452 () Bool)

(assert (=> bs!1303319 m!6603452))

(assert (=> d!1778870 d!1779024))

(declare-fun d!1779026 () Bool)

(assert (=> d!1779026 (= (isDefined!12336 lt!2262724) (not (isEmpty!34892 lt!2262724)))))

(declare-fun bs!1303320 () Bool)

(assert (= bs!1303320 d!1779026))

(declare-fun m!6603454 () Bool)

(assert (=> bs!1303320 m!6603454))

(assert (=> d!1778864 d!1779026))

(declare-fun b!5632514 () Bool)

(declare-fun e!3471454 () Bool)

(assert (=> b!5632514 (= e!3471454 (matchR!7809 (derivativeStep!4460 (regOne!31760 r!7292) (head!11992 Nil!63049)) (tail!11087 Nil!63049)))))

(declare-fun b!5632515 () Bool)

(declare-fun e!3471456 () Bool)

(declare-fun e!3471453 () Bool)

(assert (=> b!5632515 (= e!3471456 e!3471453)))

(declare-fun res!2385167 () Bool)

(assert (=> b!5632515 (=> res!2385167 e!3471453)))

(declare-fun call!424655 () Bool)

(assert (=> b!5632515 (= res!2385167 call!424655)))

(declare-fun b!5632516 () Bool)

(assert (=> b!5632516 (= e!3471454 (nullable!5656 (regOne!31760 r!7292)))))

(declare-fun bm!424650 () Bool)

(assert (=> bm!424650 (= call!424655 (isEmpty!34891 Nil!63049))))

(declare-fun b!5632517 () Bool)

(assert (=> b!5632517 (= e!3471453 (not (= (head!11992 Nil!63049) (c!988948 (regOne!31760 r!7292)))))))

(declare-fun b!5632518 () Bool)

(declare-fun e!3471450 () Bool)

(assert (=> b!5632518 (= e!3471450 e!3471456)))

(declare-fun res!2385169 () Bool)

(assert (=> b!5632518 (=> (not res!2385169) (not e!3471456))))

(declare-fun lt!2262787 () Bool)

(assert (=> b!5632518 (= res!2385169 (not lt!2262787))))

(declare-fun b!5632519 () Bool)

(declare-fun res!2385168 () Bool)

(assert (=> b!5632519 (=> res!2385168 e!3471450)))

(declare-fun e!3471455 () Bool)

(assert (=> b!5632519 (= res!2385168 e!3471455)))

(declare-fun res!2385166 () Bool)

(assert (=> b!5632519 (=> (not res!2385166) (not e!3471455))))

(assert (=> b!5632519 (= res!2385166 lt!2262787)))

(declare-fun b!5632520 () Bool)

(declare-fun res!2385170 () Bool)

(assert (=> b!5632520 (=> (not res!2385170) (not e!3471455))))

(assert (=> b!5632520 (= res!2385170 (isEmpty!34891 (tail!11087 Nil!63049)))))

(declare-fun b!5632521 () Bool)

(declare-fun res!2385173 () Bool)

(assert (=> b!5632521 (=> (not res!2385173) (not e!3471455))))

(assert (=> b!5632521 (= res!2385173 (not call!424655))))

(declare-fun b!5632522 () Bool)

(assert (=> b!5632522 (= e!3471455 (= (head!11992 Nil!63049) (c!988948 (regOne!31760 r!7292))))))

(declare-fun b!5632523 () Bool)

(declare-fun e!3471451 () Bool)

(assert (=> b!5632523 (= e!3471451 (not lt!2262787))))

(declare-fun b!5632524 () Bool)

(declare-fun e!3471452 () Bool)

(assert (=> b!5632524 (= e!3471452 e!3471451)))

(declare-fun c!989228 () Bool)

(assert (=> b!5632524 (= c!989228 (is-EmptyLang!15624 (regOne!31760 r!7292)))))

(declare-fun b!5632525 () Bool)

(declare-fun res!2385172 () Bool)

(assert (=> b!5632525 (=> res!2385172 e!3471450)))

(assert (=> b!5632525 (= res!2385172 (not (is-ElementMatch!15624 (regOne!31760 r!7292))))))

(assert (=> b!5632525 (= e!3471451 e!3471450)))

(declare-fun b!5632526 () Bool)

(assert (=> b!5632526 (= e!3471452 (= lt!2262787 call!424655))))

(declare-fun d!1779028 () Bool)

(assert (=> d!1779028 e!3471452))

(declare-fun c!989227 () Bool)

(assert (=> d!1779028 (= c!989227 (is-EmptyExpr!15624 (regOne!31760 r!7292)))))

(assert (=> d!1779028 (= lt!2262787 e!3471454)))

(declare-fun c!989226 () Bool)

(assert (=> d!1779028 (= c!989226 (isEmpty!34891 Nil!63049))))

(assert (=> d!1779028 (validRegex!7360 (regOne!31760 r!7292))))

(assert (=> d!1779028 (= (matchR!7809 (regOne!31760 r!7292) Nil!63049) lt!2262787)))

(declare-fun b!5632527 () Bool)

(declare-fun res!2385171 () Bool)

(assert (=> b!5632527 (=> res!2385171 e!3471453)))

(assert (=> b!5632527 (= res!2385171 (not (isEmpty!34891 (tail!11087 Nil!63049))))))

(assert (= (and d!1779028 c!989226) b!5632516))

(assert (= (and d!1779028 (not c!989226)) b!5632514))

(assert (= (and d!1779028 c!989227) b!5632526))

(assert (= (and d!1779028 (not c!989227)) b!5632524))

(assert (= (and b!5632524 c!989228) b!5632523))

(assert (= (and b!5632524 (not c!989228)) b!5632525))

(assert (= (and b!5632525 (not res!2385172)) b!5632519))

(assert (= (and b!5632519 res!2385166) b!5632521))

(assert (= (and b!5632521 res!2385173) b!5632520))

(assert (= (and b!5632520 res!2385170) b!5632522))

(assert (= (and b!5632519 (not res!2385168)) b!5632518))

(assert (= (and b!5632518 res!2385169) b!5632515))

(assert (= (and b!5632515 (not res!2385167)) b!5632527))

(assert (= (and b!5632527 (not res!2385171)) b!5632517))

(assert (= (or b!5632526 b!5632515 b!5632521) bm!424650))

(declare-fun m!6603456 () Bool)

(assert (=> bm!424650 m!6603456))

(declare-fun m!6603458 () Bool)

(assert (=> b!5632522 m!6603458))

(assert (=> d!1779028 m!6603456))

(assert (=> d!1779028 m!6603066))

(assert (=> b!5632514 m!6603458))

(assert (=> b!5632514 m!6603458))

(declare-fun m!6603460 () Bool)

(assert (=> b!5632514 m!6603460))

(declare-fun m!6603462 () Bool)

(assert (=> b!5632514 m!6603462))

(assert (=> b!5632514 m!6603460))

(assert (=> b!5632514 m!6603462))

(declare-fun m!6603464 () Bool)

(assert (=> b!5632514 m!6603464))

(assert (=> b!5632520 m!6603462))

(assert (=> b!5632520 m!6603462))

(declare-fun m!6603466 () Bool)

(assert (=> b!5632520 m!6603466))

(assert (=> b!5632517 m!6603458))

(assert (=> b!5632527 m!6603462))

(assert (=> b!5632527 m!6603462))

(assert (=> b!5632527 m!6603466))

(assert (=> b!5632516 m!6603418))

(assert (=> d!1778864 d!1779028))

(assert (=> d!1778864 d!1779022))

(declare-fun d!1779030 () Bool)

(assert (=> d!1779030 true))

(declare-fun setRes!37634 () Bool)

(assert (=> d!1779030 setRes!37634))

(declare-fun condSetEmpty!37634 () Bool)

(declare-fun res!2385174 () (Set Context!10016))

(assert (=> d!1779030 (= condSetEmpty!37634 (= res!2385174 (as set.empty (Set Context!10016))))))

(assert (=> d!1779030 (= (choose!42688 lt!2262569 lambda!302653) res!2385174)))

(declare-fun setIsEmpty!37634 () Bool)

(assert (=> setIsEmpty!37634 setRes!37634))

(declare-fun setElem!37634 () Context!10016)

(declare-fun setNonEmpty!37634 () Bool)

(declare-fun tp!1558926 () Bool)

(declare-fun e!3471457 () Bool)

(assert (=> setNonEmpty!37634 (= setRes!37634 (and tp!1558926 (inv!82308 setElem!37634) e!3471457))))

(declare-fun setRest!37634 () (Set Context!10016))

(assert (=> setNonEmpty!37634 (= res!2385174 (set.union (set.insert setElem!37634 (as set.empty (Set Context!10016))) setRest!37634))))

(declare-fun b!5632528 () Bool)

(declare-fun tp!1558927 () Bool)

(assert (=> b!5632528 (= e!3471457 tp!1558927)))

(assert (= (and d!1779030 condSetEmpty!37634) setIsEmpty!37634))

(assert (= (and d!1779030 (not condSetEmpty!37634)) setNonEmpty!37634))

(assert (= setNonEmpty!37634 b!5632528))

(declare-fun m!6603468 () Bool)

(assert (=> setNonEmpty!37634 m!6603468))

(assert (=> d!1778826 d!1779030))

(declare-fun bs!1303321 () Bool)

(declare-fun d!1779032 () Bool)

(assert (= bs!1303321 (and d!1779032 d!1778820)))

(declare-fun lambda!302739 () Int)

(assert (=> bs!1303321 (= lambda!302739 lambda!302683)))

(declare-fun bs!1303322 () Bool)

(assert (= bs!1303322 (and d!1779032 d!1778822)))

(assert (=> bs!1303322 (= lambda!302739 lambda!302686)))

(declare-fun bs!1303323 () Bool)

(assert (= bs!1303323 (and d!1779032 d!1778858)))

(assert (=> bs!1303323 (= lambda!302739 lambda!302690)))

(declare-fun bs!1303324 () Bool)

(assert (= bs!1303324 (and d!1779032 d!1778790)))

(assert (=> bs!1303324 (= lambda!302739 lambda!302680)))

(declare-fun bs!1303325 () Bool)

(assert (= bs!1303325 (and d!1779032 d!1778860)))

(assert (=> bs!1303325 (= lambda!302739 lambda!302691)))

(declare-fun b!5632529 () Bool)

(declare-fun e!3471463 () Bool)

(declare-fun lt!2262788 () Regex!15624)

(assert (=> b!5632529 (= e!3471463 (isEmptyExpr!1165 lt!2262788))))

(declare-fun b!5632530 () Bool)

(declare-fun e!3471462 () Bool)

(assert (=> b!5632530 (= e!3471462 (isEmpty!34888 (t!376465 (t!376465 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5632531 () Bool)

(declare-fun e!3471460 () Bool)

(assert (=> b!5632531 (= e!3471460 (= lt!2262788 (head!11993 (t!376465 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5632532 () Bool)

(declare-fun e!3471459 () Regex!15624)

(assert (=> b!5632532 (= e!3471459 (h!69495 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5632533 () Bool)

(declare-fun e!3471461 () Regex!15624)

(assert (=> b!5632533 (= e!3471459 e!3471461)))

(declare-fun c!989230 () Bool)

(assert (=> b!5632533 (= c!989230 (is-Cons!63047 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5632534 () Bool)

(assert (=> b!5632534 (= e!3471461 EmptyExpr!15624)))

(declare-fun e!3471458 () Bool)

(assert (=> d!1779032 e!3471458))

(declare-fun res!2385175 () Bool)

(assert (=> d!1779032 (=> (not res!2385175) (not e!3471458))))

(assert (=> d!1779032 (= res!2385175 (validRegex!7360 lt!2262788))))

(assert (=> d!1779032 (= lt!2262788 e!3471459)))

(declare-fun c!989229 () Bool)

(assert (=> d!1779032 (= c!989229 e!3471462)))

(declare-fun res!2385176 () Bool)

(assert (=> d!1779032 (=> (not res!2385176) (not e!3471462))))

(assert (=> d!1779032 (= res!2385176 (is-Cons!63047 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> d!1779032 (forall!14778 (t!376465 (exprs!5508 (h!69496 zl!343))) lambda!302739)))

(assert (=> d!1779032 (= (generalisedConcat!1239 (t!376465 (exprs!5508 (h!69496 zl!343)))) lt!2262788)))

(declare-fun b!5632535 () Bool)

(assert (=> b!5632535 (= e!3471461 (Concat!24469 (h!69495 (t!376465 (exprs!5508 (h!69496 zl!343)))) (generalisedConcat!1239 (t!376465 (t!376465 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun b!5632536 () Bool)

(assert (=> b!5632536 (= e!3471463 e!3471460)))

(declare-fun c!989231 () Bool)

(assert (=> b!5632536 (= c!989231 (isEmpty!34888 (tail!11088 (t!376465 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5632537 () Bool)

(assert (=> b!5632537 (= e!3471458 e!3471463)))

(declare-fun c!989232 () Bool)

(assert (=> b!5632537 (= c!989232 (isEmpty!34888 (t!376465 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5632538 () Bool)

(assert (=> b!5632538 (= e!3471460 (isConcat!688 lt!2262788))))

(assert (= (and d!1779032 res!2385176) b!5632530))

(assert (= (and d!1779032 c!989229) b!5632532))

(assert (= (and d!1779032 (not c!989229)) b!5632533))

(assert (= (and b!5632533 c!989230) b!5632535))

(assert (= (and b!5632533 (not c!989230)) b!5632534))

(assert (= (and d!1779032 res!2385175) b!5632537))

(assert (= (and b!5632537 c!989232) b!5632529))

(assert (= (and b!5632537 (not c!989232)) b!5632536))

(assert (= (and b!5632536 c!989231) b!5632531))

(assert (= (and b!5632536 (not c!989231)) b!5632538))

(declare-fun m!6603470 () Bool)

(assert (=> b!5632531 m!6603470))

(declare-fun m!6603472 () Bool)

(assert (=> d!1779032 m!6603472))

(declare-fun m!6603474 () Bool)

(assert (=> d!1779032 m!6603474))

(declare-fun m!6603476 () Bool)

(assert (=> b!5632529 m!6603476))

(declare-fun m!6603478 () Bool)

(assert (=> b!5632530 m!6603478))

(assert (=> b!5632537 m!6602688))

(declare-fun m!6603480 () Bool)

(assert (=> b!5632538 m!6603480))

(declare-fun m!6603482 () Bool)

(assert (=> b!5632535 m!6603482))

(declare-fun m!6603484 () Bool)

(assert (=> b!5632536 m!6603484))

(assert (=> b!5632536 m!6603484))

(declare-fun m!6603486 () Bool)

(assert (=> b!5632536 m!6603486))

(assert (=> b!5631759 d!1779032))

(declare-fun d!1779034 () Bool)

(assert (=> d!1779034 (= (head!11993 (exprs!5508 (h!69496 zl!343))) (h!69495 (exprs!5508 (h!69496 zl!343))))))

(assert (=> b!5631755 d!1779034))

(declare-fun b!5632539 () Bool)

(declare-fun e!3471467 () (Set Context!10016))

(declare-fun call!424658 () (Set Context!10016))

(assert (=> b!5632539 (= e!3471467 call!424658)))

(declare-fun b!5632540 () Bool)

(declare-fun c!989235 () Bool)

(assert (=> b!5632540 (= c!989235 (is-Star!15624 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))))))

(declare-fun e!3471464 () (Set Context!10016))

(assert (=> b!5632540 (= e!3471464 e!3471467)))

(declare-fun call!424661 () List!63171)

(declare-fun call!424660 () (Set Context!10016))

(declare-fun bm!424651 () Bool)

(declare-fun c!989234 () Bool)

(assert (=> bm!424651 (= call!424660 (derivationStepZipperDown!966 (ite c!989234 (regOne!31761 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))) (regOne!31760 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292)))))))) (ite c!989234 (ite (or c!989031 c!989033) lt!2262573 (Context!10017 call!424554)) (Context!10017 call!424661)) (h!69497 s!2326)))))

(declare-fun b!5632541 () Bool)

(declare-fun e!3471469 () Bool)

(assert (=> b!5632541 (= e!3471469 (nullable!5656 (regOne!31760 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292)))))))))))

(declare-fun b!5632542 () Bool)

(declare-fun e!3471468 () (Set Context!10016))

(declare-fun e!3471465 () (Set Context!10016))

(assert (=> b!5632542 (= e!3471468 e!3471465)))

(assert (=> b!5632542 (= c!989234 (is-Union!15624 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))))))

(declare-fun bm!424652 () Bool)

(declare-fun call!424657 () (Set Context!10016))

(assert (=> bm!424652 (= call!424658 call!424657)))

(declare-fun c!989233 () Bool)

(declare-fun call!424659 () List!63171)

(declare-fun call!424656 () (Set Context!10016))

(declare-fun bm!424653 () Bool)

(declare-fun c!989236 () Bool)

(assert (=> bm!424653 (= call!424656 (derivationStepZipperDown!966 (ite c!989234 (regTwo!31761 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))) (ite c!989236 (regTwo!31760 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))) (ite c!989233 (regOne!31760 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))) (reg!15953 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292)))))))))) (ite (or c!989234 c!989236) (ite (or c!989031 c!989033) lt!2262573 (Context!10017 call!424554)) (Context!10017 call!424659)) (h!69497 s!2326)))))

(declare-fun b!5632543 () Bool)

(declare-fun e!3471466 () (Set Context!10016))

(assert (=> b!5632543 (= e!3471466 (set.union call!424660 call!424657))))

(declare-fun b!5632544 () Bool)

(assert (=> b!5632544 (= e!3471464 call!424658)))

(declare-fun b!5632545 () Bool)

(assert (=> b!5632545 (= c!989236 e!3471469)))

(declare-fun res!2385177 () Bool)

(assert (=> b!5632545 (=> (not res!2385177) (not e!3471469))))

(assert (=> b!5632545 (= res!2385177 (is-Concat!24469 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))))))

(assert (=> b!5632545 (= e!3471465 e!3471466)))

(declare-fun bm!424654 () Bool)

(assert (=> bm!424654 (= call!424657 call!424656)))

(declare-fun bm!424655 () Bool)

(assert (=> bm!424655 (= call!424659 call!424661)))

(declare-fun bm!424656 () Bool)

(assert (=> bm!424656 (= call!424661 ($colon$colon!1674 (exprs!5508 (ite (or c!989031 c!989033) lt!2262573 (Context!10017 call!424554))) (ite (or c!989236 c!989233) (regTwo!31760 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))) (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292)))))))))))

(declare-fun b!5632546 () Bool)

(assert (=> b!5632546 (= e!3471465 (set.union call!424660 call!424656))))

(declare-fun d!1779036 () Bool)

(declare-fun c!989237 () Bool)

(assert (=> d!1779036 (= c!989237 (and (is-ElementMatch!15624 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))) (= (c!988948 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))) (h!69497 s!2326))))))

(assert (=> d!1779036 (= (derivationStepZipperDown!966 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292)))))) (ite (or c!989031 c!989033) lt!2262573 (Context!10017 call!424554)) (h!69497 s!2326)) e!3471468)))

(declare-fun b!5632547 () Bool)

(assert (=> b!5632547 (= e!3471468 (set.insert (ite (or c!989031 c!989033) lt!2262573 (Context!10017 call!424554)) (as set.empty (Set Context!10016))))))

(declare-fun b!5632548 () Bool)

(assert (=> b!5632548 (= e!3471466 e!3471464)))

(assert (=> b!5632548 (= c!989233 (is-Concat!24469 (ite c!989031 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (ite c!989033 (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (ite c!989030 (regOne!31760 (regOne!31760 (regOne!31760 r!7292))) (reg!15953 (regOne!31760 (regOne!31760 r!7292))))))))))

(declare-fun b!5632549 () Bool)

(assert (=> b!5632549 (= e!3471467 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779036 c!989237) b!5632547))

(assert (= (and d!1779036 (not c!989237)) b!5632542))

(assert (= (and b!5632542 c!989234) b!5632546))

(assert (= (and b!5632542 (not c!989234)) b!5632545))

(assert (= (and b!5632545 res!2385177) b!5632541))

(assert (= (and b!5632545 c!989236) b!5632543))

(assert (= (and b!5632545 (not c!989236)) b!5632548))

(assert (= (and b!5632548 c!989233) b!5632544))

(assert (= (and b!5632548 (not c!989233)) b!5632540))

(assert (= (and b!5632540 c!989235) b!5632539))

(assert (= (and b!5632540 (not c!989235)) b!5632549))

(assert (= (or b!5632544 b!5632539) bm!424655))

(assert (= (or b!5632544 b!5632539) bm!424652))

(assert (= (or b!5632543 bm!424655) bm!424656))

(assert (= (or b!5632543 bm!424652) bm!424654))

(assert (= (or b!5632546 bm!424654) bm!424653))

(assert (= (or b!5632546 b!5632543) bm!424651))

(declare-fun m!6603488 () Bool)

(assert (=> bm!424656 m!6603488))

(declare-fun m!6603490 () Bool)

(assert (=> bm!424651 m!6603490))

(declare-fun m!6603492 () Bool)

(assert (=> bm!424653 m!6603492))

(declare-fun m!6603494 () Bool)

(assert (=> b!5632541 m!6603494))

(declare-fun m!6603496 () Bool)

(assert (=> b!5632547 m!6603496))

(assert (=> bm!424548 d!1779036))

(assert (=> b!5631722 d!1779002))

(declare-fun b!5632550 () Bool)

(declare-fun e!3471474 () Bool)

(assert (=> b!5632550 (= e!3471474 (matchR!7809 (derivativeStep!4460 (regTwo!31760 r!7292) (head!11992 (_2!36024 (get!21720 lt!2262724)))) (tail!11087 (_2!36024 (get!21720 lt!2262724)))))))

(declare-fun b!5632551 () Bool)

(declare-fun e!3471476 () Bool)

(declare-fun e!3471473 () Bool)

(assert (=> b!5632551 (= e!3471476 e!3471473)))

(declare-fun res!2385179 () Bool)

(assert (=> b!5632551 (=> res!2385179 e!3471473)))

(declare-fun call!424662 () Bool)

(assert (=> b!5632551 (= res!2385179 call!424662)))

(declare-fun b!5632552 () Bool)

(assert (=> b!5632552 (= e!3471474 (nullable!5656 (regTwo!31760 r!7292)))))

(declare-fun bm!424657 () Bool)

(assert (=> bm!424657 (= call!424662 (isEmpty!34891 (_2!36024 (get!21720 lt!2262724))))))

(declare-fun b!5632553 () Bool)

(assert (=> b!5632553 (= e!3471473 (not (= (head!11992 (_2!36024 (get!21720 lt!2262724))) (c!988948 (regTwo!31760 r!7292)))))))

(declare-fun b!5632554 () Bool)

(declare-fun e!3471470 () Bool)

(assert (=> b!5632554 (= e!3471470 e!3471476)))

(declare-fun res!2385181 () Bool)

(assert (=> b!5632554 (=> (not res!2385181) (not e!3471476))))

(declare-fun lt!2262789 () Bool)

(assert (=> b!5632554 (= res!2385181 (not lt!2262789))))

(declare-fun b!5632555 () Bool)

(declare-fun res!2385180 () Bool)

(assert (=> b!5632555 (=> res!2385180 e!3471470)))

(declare-fun e!3471475 () Bool)

(assert (=> b!5632555 (= res!2385180 e!3471475)))

(declare-fun res!2385178 () Bool)

(assert (=> b!5632555 (=> (not res!2385178) (not e!3471475))))

(assert (=> b!5632555 (= res!2385178 lt!2262789)))

(declare-fun b!5632556 () Bool)

(declare-fun res!2385182 () Bool)

(assert (=> b!5632556 (=> (not res!2385182) (not e!3471475))))

(assert (=> b!5632556 (= res!2385182 (isEmpty!34891 (tail!11087 (_2!36024 (get!21720 lt!2262724)))))))

(declare-fun b!5632557 () Bool)

(declare-fun res!2385185 () Bool)

(assert (=> b!5632557 (=> (not res!2385185) (not e!3471475))))

(assert (=> b!5632557 (= res!2385185 (not call!424662))))

(declare-fun b!5632558 () Bool)

(assert (=> b!5632558 (= e!3471475 (= (head!11992 (_2!36024 (get!21720 lt!2262724))) (c!988948 (regTwo!31760 r!7292))))))

(declare-fun b!5632559 () Bool)

(declare-fun e!3471471 () Bool)

(assert (=> b!5632559 (= e!3471471 (not lt!2262789))))

(declare-fun b!5632560 () Bool)

(declare-fun e!3471472 () Bool)

(assert (=> b!5632560 (= e!3471472 e!3471471)))

(declare-fun c!989240 () Bool)

(assert (=> b!5632560 (= c!989240 (is-EmptyLang!15624 (regTwo!31760 r!7292)))))

(declare-fun b!5632561 () Bool)

(declare-fun res!2385184 () Bool)

(assert (=> b!5632561 (=> res!2385184 e!3471470)))

(assert (=> b!5632561 (= res!2385184 (not (is-ElementMatch!15624 (regTwo!31760 r!7292))))))

(assert (=> b!5632561 (= e!3471471 e!3471470)))

(declare-fun b!5632562 () Bool)

(assert (=> b!5632562 (= e!3471472 (= lt!2262789 call!424662))))

(declare-fun d!1779038 () Bool)

(assert (=> d!1779038 e!3471472))

(declare-fun c!989239 () Bool)

(assert (=> d!1779038 (= c!989239 (is-EmptyExpr!15624 (regTwo!31760 r!7292)))))

(assert (=> d!1779038 (= lt!2262789 e!3471474)))

(declare-fun c!989238 () Bool)

(assert (=> d!1779038 (= c!989238 (isEmpty!34891 (_2!36024 (get!21720 lt!2262724))))))

(assert (=> d!1779038 (validRegex!7360 (regTwo!31760 r!7292))))

(assert (=> d!1779038 (= (matchR!7809 (regTwo!31760 r!7292) (_2!36024 (get!21720 lt!2262724))) lt!2262789)))

(declare-fun b!5632563 () Bool)

(declare-fun res!2385183 () Bool)

(assert (=> b!5632563 (=> res!2385183 e!3471473)))

(assert (=> b!5632563 (= res!2385183 (not (isEmpty!34891 (tail!11087 (_2!36024 (get!21720 lt!2262724))))))))

(assert (= (and d!1779038 c!989238) b!5632552))

(assert (= (and d!1779038 (not c!989238)) b!5632550))

(assert (= (and d!1779038 c!989239) b!5632562))

(assert (= (and d!1779038 (not c!989239)) b!5632560))

(assert (= (and b!5632560 c!989240) b!5632559))

(assert (= (and b!5632560 (not c!989240)) b!5632561))

(assert (= (and b!5632561 (not res!2385184)) b!5632555))

(assert (= (and b!5632555 res!2385178) b!5632557))

(assert (= (and b!5632557 res!2385185) b!5632556))

(assert (= (and b!5632556 res!2385182) b!5632558))

(assert (= (and b!5632555 (not res!2385180)) b!5632554))

(assert (= (and b!5632554 res!2385181) b!5632551))

(assert (= (and b!5632551 (not res!2385179)) b!5632563))

(assert (= (and b!5632563 (not res!2385183)) b!5632553))

(assert (= (or b!5632562 b!5632551 b!5632557) bm!424657))

(declare-fun m!6603498 () Bool)

(assert (=> bm!424657 m!6603498))

(declare-fun m!6603500 () Bool)

(assert (=> b!5632558 m!6603500))

(assert (=> d!1779038 m!6603498))

(declare-fun m!6603502 () Bool)

(assert (=> d!1779038 m!6603502))

(assert (=> b!5632550 m!6603500))

(assert (=> b!5632550 m!6603500))

(declare-fun m!6603504 () Bool)

(assert (=> b!5632550 m!6603504))

(declare-fun m!6603506 () Bool)

(assert (=> b!5632550 m!6603506))

(assert (=> b!5632550 m!6603504))

(assert (=> b!5632550 m!6603506))

(declare-fun m!6603508 () Bool)

(assert (=> b!5632550 m!6603508))

(assert (=> b!5632556 m!6603506))

(assert (=> b!5632556 m!6603506))

(declare-fun m!6603510 () Bool)

(assert (=> b!5632556 m!6603510))

(assert (=> b!5632553 m!6603500))

(assert (=> b!5632563 m!6603506))

(assert (=> b!5632563 m!6603506))

(assert (=> b!5632563 m!6603510))

(declare-fun m!6603512 () Bool)

(assert (=> b!5632552 m!6603512))

(assert (=> b!5631952 d!1779038))

(declare-fun d!1779040 () Bool)

(assert (=> d!1779040 (= (get!21720 lt!2262724) (v!51677 lt!2262724))))

(assert (=> b!5631952 d!1779040))

(declare-fun b!5632564 () Bool)

(declare-fun e!3471482 () Bool)

(declare-fun e!3471477 () Bool)

(assert (=> b!5632564 (= e!3471482 e!3471477)))

(declare-fun c!989242 () Bool)

(assert (=> b!5632564 (= c!989242 (is-Union!15624 lt!2262708))))

(declare-fun bm!424658 () Bool)

(declare-fun call!424664 () Bool)

(declare-fun call!424665 () Bool)

(assert (=> bm!424658 (= call!424664 call!424665)))

(declare-fun c!989241 () Bool)

(declare-fun bm!424659 () Bool)

(assert (=> bm!424659 (= call!424665 (validRegex!7360 (ite c!989241 (reg!15953 lt!2262708) (ite c!989242 (regOne!31761 lt!2262708) (regOne!31760 lt!2262708)))))))

(declare-fun d!1779042 () Bool)

(declare-fun res!2385188 () Bool)

(declare-fun e!3471478 () Bool)

(assert (=> d!1779042 (=> res!2385188 e!3471478)))

(assert (=> d!1779042 (= res!2385188 (is-ElementMatch!15624 lt!2262708))))

(assert (=> d!1779042 (= (validRegex!7360 lt!2262708) e!3471478)))

(declare-fun b!5632565 () Bool)

(declare-fun e!3471479 () Bool)

(declare-fun e!3471483 () Bool)

(assert (=> b!5632565 (= e!3471479 e!3471483)))

(declare-fun res!2385189 () Bool)

(assert (=> b!5632565 (=> (not res!2385189) (not e!3471483))))

(assert (=> b!5632565 (= res!2385189 call!424664)))

(declare-fun b!5632566 () Bool)

(declare-fun e!3471480 () Bool)

(assert (=> b!5632566 (= e!3471482 e!3471480)))

(declare-fun res!2385190 () Bool)

(assert (=> b!5632566 (= res!2385190 (not (nullable!5656 (reg!15953 lt!2262708))))))

(assert (=> b!5632566 (=> (not res!2385190) (not e!3471480))))

(declare-fun b!5632567 () Bool)

(declare-fun res!2385187 () Bool)

(declare-fun e!3471481 () Bool)

(assert (=> b!5632567 (=> (not res!2385187) (not e!3471481))))

(assert (=> b!5632567 (= res!2385187 call!424664)))

(assert (=> b!5632567 (= e!3471477 e!3471481)))

(declare-fun b!5632568 () Bool)

(declare-fun call!424663 () Bool)

(assert (=> b!5632568 (= e!3471481 call!424663)))

(declare-fun bm!424660 () Bool)

(assert (=> bm!424660 (= call!424663 (validRegex!7360 (ite c!989242 (regTwo!31761 lt!2262708) (regTwo!31760 lt!2262708))))))

(declare-fun b!5632569 () Bool)

(assert (=> b!5632569 (= e!3471483 call!424663)))

(declare-fun b!5632570 () Bool)

(assert (=> b!5632570 (= e!3471480 call!424665)))

(declare-fun b!5632571 () Bool)

(declare-fun res!2385186 () Bool)

(assert (=> b!5632571 (=> res!2385186 e!3471479)))

(assert (=> b!5632571 (= res!2385186 (not (is-Concat!24469 lt!2262708)))))

(assert (=> b!5632571 (= e!3471477 e!3471479)))

(declare-fun b!5632572 () Bool)

(assert (=> b!5632572 (= e!3471478 e!3471482)))

(assert (=> b!5632572 (= c!989241 (is-Star!15624 lt!2262708))))

(assert (= (and d!1779042 (not res!2385188)) b!5632572))

(assert (= (and b!5632572 c!989241) b!5632566))

(assert (= (and b!5632572 (not c!989241)) b!5632564))

(assert (= (and b!5632566 res!2385190) b!5632570))

(assert (= (and b!5632564 c!989242) b!5632567))

(assert (= (and b!5632564 (not c!989242)) b!5632571))

(assert (= (and b!5632567 res!2385187) b!5632568))

(assert (= (and b!5632571 (not res!2385186)) b!5632565))

(assert (= (and b!5632565 res!2385189) b!5632569))

(assert (= (or b!5632568 b!5632569) bm!424660))

(assert (= (or b!5632567 b!5632565) bm!424658))

(assert (= (or b!5632570 bm!424658) bm!424659))

(declare-fun m!6603514 () Bool)

(assert (=> bm!424659 m!6603514))

(declare-fun m!6603516 () Bool)

(assert (=> b!5632566 m!6603516))

(declare-fun m!6603518 () Bool)

(assert (=> bm!424660 m!6603518))

(assert (=> d!1778818 d!1779042))

(assert (=> d!1778818 d!1778820))

(assert (=> d!1778818 d!1778822))

(declare-fun d!1779044 () Bool)

(assert (=> d!1779044 (= (isEmpty!34891 s!2326) (is-Nil!63049 s!2326))))

(assert (=> bm!424527 d!1779044))

(declare-fun d!1779046 () Bool)

(assert (=> d!1779046 (= (isEmpty!34891 (t!376467 s!2326)) (is-Nil!63049 (t!376467 s!2326)))))

(assert (=> d!1778804 d!1779046))

(declare-fun d!1779048 () Bool)

(assert (=> d!1779048 (= (isEmptyLang!1175 lt!2262711) (is-EmptyLang!15624 lt!2262711))))

(assert (=> b!5631861 d!1779048))

(assert (=> b!5631778 d!1778840))

(assert (=> d!1778794 d!1779046))

(declare-fun b!5632573 () Bool)

(declare-fun e!3471487 () (Set Context!10016))

(declare-fun call!424668 () (Set Context!10016))

(assert (=> b!5632573 (= e!3471487 call!424668)))

(declare-fun b!5632574 () Bool)

(declare-fun c!989245 () Bool)

(assert (=> b!5632574 (= c!989245 (is-Star!15624 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun e!3471484 () (Set Context!10016))

(assert (=> b!5632574 (= e!3471484 e!3471487)))

(declare-fun call!424671 () List!63171)

(declare-fun call!424670 () (Set Context!10016))

(declare-fun c!989244 () Bool)

(declare-fun bm!424661 () Bool)

(assert (=> bm!424661 (= call!424670 (derivationStepZipperDown!966 (ite c!989244 (regOne!31761 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (regOne!31760 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))) (ite c!989244 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (Context!10017 call!424671)) (h!69497 s!2326)))))

(declare-fun b!5632575 () Bool)

(declare-fun e!3471489 () Bool)

(assert (=> b!5632575 (= e!3471489 (nullable!5656 (regOne!31760 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))))

(declare-fun b!5632576 () Bool)

(declare-fun e!3471488 () (Set Context!10016))

(declare-fun e!3471485 () (Set Context!10016))

(assert (=> b!5632576 (= e!3471488 e!3471485)))

(assert (=> b!5632576 (= c!989244 (is-Union!15624 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun bm!424662 () Bool)

(declare-fun call!424667 () (Set Context!10016))

(assert (=> bm!424662 (= call!424668 call!424667)))

(declare-fun c!989246 () Bool)

(declare-fun bm!424663 () Bool)

(declare-fun call!424669 () List!63171)

(declare-fun c!989243 () Bool)

(declare-fun call!424666 () (Set Context!10016))

(assert (=> bm!424663 (= call!424666 (derivationStepZipperDown!966 (ite c!989244 (regTwo!31761 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (ite c!989246 (regTwo!31760 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (ite c!989243 (regOne!31760 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (reg!15953 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))) (ite (or c!989244 c!989246) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (Context!10017 call!424669)) (h!69497 s!2326)))))

(declare-fun b!5632577 () Bool)

(declare-fun e!3471486 () (Set Context!10016))

(assert (=> b!5632577 (= e!3471486 (set.union call!424670 call!424667))))

(declare-fun b!5632578 () Bool)

(assert (=> b!5632578 (= e!3471484 call!424668)))

(declare-fun b!5632579 () Bool)

(assert (=> b!5632579 (= c!989246 e!3471489)))

(declare-fun res!2385191 () Bool)

(assert (=> b!5632579 (=> (not res!2385191) (not e!3471489))))

(assert (=> b!5632579 (= res!2385191 (is-Concat!24469 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))

(assert (=> b!5632579 (= e!3471485 e!3471486)))

(declare-fun bm!424664 () Bool)

(assert (=> bm!424664 (= call!424667 call!424666)))

(declare-fun bm!424665 () Bool)

(assert (=> bm!424665 (= call!424669 call!424671)))

(declare-fun bm!424666 () Bool)

(assert (=> bm!424666 (= call!424671 ($colon$colon!1674 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))) (ite (or c!989246 c!989243) (regTwo!31760 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))))

(declare-fun b!5632580 () Bool)

(assert (=> b!5632580 (= e!3471485 (set.union call!424670 call!424666))))

(declare-fun d!1779050 () Bool)

(declare-fun c!989247 () Bool)

(assert (=> d!1779050 (= c!989247 (and (is-ElementMatch!15624 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (= (c!988948 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (h!69497 s!2326))))))

(assert (=> d!1779050 (= (derivationStepZipperDown!966 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (h!69497 s!2326)) e!3471488)))

(declare-fun b!5632581 () Bool)

(assert (=> b!5632581 (= e!3471488 (set.insert (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (as set.empty (Set Context!10016))))))

(declare-fun b!5632582 () Bool)

(assert (=> b!5632582 (= e!3471486 e!3471484)))

(assert (=> b!5632582 (= c!989243 (is-Concat!24469 (h!69495 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun b!5632583 () Bool)

(assert (=> b!5632583 (= e!3471487 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779050 c!989247) b!5632581))

(assert (= (and d!1779050 (not c!989247)) b!5632576))

(assert (= (and b!5632576 c!989244) b!5632580))

(assert (= (and b!5632576 (not c!989244)) b!5632579))

(assert (= (and b!5632579 res!2385191) b!5632575))

(assert (= (and b!5632579 c!989246) b!5632577))

(assert (= (and b!5632579 (not c!989246)) b!5632582))

(assert (= (and b!5632582 c!989243) b!5632578))

(assert (= (and b!5632582 (not c!989243)) b!5632574))

(assert (= (and b!5632574 c!989245) b!5632573))

(assert (= (and b!5632574 (not c!989245)) b!5632583))

(assert (= (or b!5632578 b!5632573) bm!424665))

(assert (= (or b!5632578 b!5632573) bm!424662))

(assert (= (or b!5632577 bm!424665) bm!424666))

(assert (= (or b!5632577 bm!424662) bm!424664))

(assert (= (or b!5632580 bm!424664) bm!424663))

(assert (= (or b!5632580 b!5632577) bm!424661))

(declare-fun m!6603520 () Bool)

(assert (=> bm!424666 m!6603520))

(declare-fun m!6603522 () Bool)

(assert (=> bm!424661 m!6603522))

(declare-fun m!6603524 () Bool)

(assert (=> bm!424663 m!6603524))

(declare-fun m!6603526 () Bool)

(assert (=> b!5632575 m!6603526))

(declare-fun m!6603528 () Bool)

(assert (=> b!5632581 m!6603528))

(assert (=> bm!424567 d!1779050))

(declare-fun b!5632584 () Bool)

(declare-fun e!3471493 () (Set Context!10016))

(declare-fun call!424674 () (Set Context!10016))

(assert (=> b!5632584 (= e!3471493 call!424674)))

(declare-fun b!5632585 () Bool)

(declare-fun c!989250 () Bool)

(assert (=> b!5632585 (= c!989250 (is-Star!15624 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))))))

(declare-fun e!3471490 () (Set Context!10016))

(assert (=> b!5632585 (= e!3471490 e!3471493)))

(declare-fun call!424676 () (Set Context!10016))

(declare-fun c!989249 () Bool)

(declare-fun call!424677 () List!63171)

(declare-fun bm!424667 () Bool)

(assert (=> bm!424667 (= call!424676 (derivationStepZipperDown!966 (ite c!989249 (regOne!31761 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))) (regOne!31760 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292)))))))) (ite c!989249 (ite (or c!989026 c!989028) lt!2262567 (Context!10017 call!424548)) (Context!10017 call!424677)) (h!69497 s!2326)))))

(declare-fun b!5632586 () Bool)

(declare-fun e!3471495 () Bool)

(assert (=> b!5632586 (= e!3471495 (nullable!5656 (regOne!31760 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292)))))))))))

(declare-fun b!5632587 () Bool)

(declare-fun e!3471494 () (Set Context!10016))

(declare-fun e!3471491 () (Set Context!10016))

(assert (=> b!5632587 (= e!3471494 e!3471491)))

(assert (=> b!5632587 (= c!989249 (is-Union!15624 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))))))

(declare-fun bm!424668 () Bool)

(declare-fun call!424673 () (Set Context!10016))

(assert (=> bm!424668 (= call!424674 call!424673)))

(declare-fun c!989248 () Bool)

(declare-fun c!989251 () Bool)

(declare-fun bm!424669 () Bool)

(declare-fun call!424675 () List!63171)

(declare-fun call!424672 () (Set Context!10016))

(assert (=> bm!424669 (= call!424672 (derivationStepZipperDown!966 (ite c!989249 (regTwo!31761 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))) (ite c!989251 (regTwo!31760 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))) (ite c!989248 (regOne!31760 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))) (reg!15953 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292)))))))))) (ite (or c!989249 c!989251) (ite (or c!989026 c!989028) lt!2262567 (Context!10017 call!424548)) (Context!10017 call!424675)) (h!69497 s!2326)))))

(declare-fun b!5632588 () Bool)

(declare-fun e!3471492 () (Set Context!10016))

(assert (=> b!5632588 (= e!3471492 (set.union call!424676 call!424673))))

(declare-fun b!5632589 () Bool)

(assert (=> b!5632589 (= e!3471490 call!424674)))

(declare-fun b!5632590 () Bool)

(assert (=> b!5632590 (= c!989251 e!3471495)))

(declare-fun res!2385192 () Bool)

(assert (=> b!5632590 (=> (not res!2385192) (not e!3471495))))

(assert (=> b!5632590 (= res!2385192 (is-Concat!24469 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))))))

(assert (=> b!5632590 (= e!3471491 e!3471492)))

(declare-fun bm!424670 () Bool)

(assert (=> bm!424670 (= call!424673 call!424672)))

(declare-fun bm!424671 () Bool)

(assert (=> bm!424671 (= call!424675 call!424677)))

(declare-fun bm!424672 () Bool)

(assert (=> bm!424672 (= call!424677 ($colon$colon!1674 (exprs!5508 (ite (or c!989026 c!989028) lt!2262567 (Context!10017 call!424548))) (ite (or c!989251 c!989248) (regTwo!31760 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))) (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292)))))))))))

(declare-fun b!5632591 () Bool)

(assert (=> b!5632591 (= e!3471491 (set.union call!424676 call!424672))))

(declare-fun c!989252 () Bool)

(declare-fun d!1779052 () Bool)

(assert (=> d!1779052 (= c!989252 (and (is-ElementMatch!15624 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))) (= (c!988948 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))) (h!69497 s!2326))))))

(assert (=> d!1779052 (= (derivationStepZipperDown!966 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292)))))) (ite (or c!989026 c!989028) lt!2262567 (Context!10017 call!424548)) (h!69497 s!2326)) e!3471494)))

(declare-fun b!5632592 () Bool)

(assert (=> b!5632592 (= e!3471494 (set.insert (ite (or c!989026 c!989028) lt!2262567 (Context!10017 call!424548)) (as set.empty (Set Context!10016))))))

(declare-fun b!5632593 () Bool)

(assert (=> b!5632593 (= e!3471492 e!3471490)))

(assert (=> b!5632593 (= c!989248 (is-Concat!24469 (ite c!989026 (regTwo!31761 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989028 (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (ite c!989025 (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))) (reg!15953 (regTwo!31760 (regOne!31760 r!7292))))))))))

(declare-fun b!5632594 () Bool)

(assert (=> b!5632594 (= e!3471493 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779052 c!989252) b!5632592))

(assert (= (and d!1779052 (not c!989252)) b!5632587))

(assert (= (and b!5632587 c!989249) b!5632591))

(assert (= (and b!5632587 (not c!989249)) b!5632590))

(assert (= (and b!5632590 res!2385192) b!5632586))

(assert (= (and b!5632590 c!989251) b!5632588))

(assert (= (and b!5632590 (not c!989251)) b!5632593))

(assert (= (and b!5632593 c!989248) b!5632589))

(assert (= (and b!5632593 (not c!989248)) b!5632585))

(assert (= (and b!5632585 c!989250) b!5632584))

(assert (= (and b!5632585 (not c!989250)) b!5632594))

(assert (= (or b!5632589 b!5632584) bm!424671))

(assert (= (or b!5632589 b!5632584) bm!424668))

(assert (= (or b!5632588 bm!424671) bm!424672))

(assert (= (or b!5632588 bm!424668) bm!424670))

(assert (= (or b!5632591 bm!424670) bm!424669))

(assert (= (or b!5632591 b!5632588) bm!424667))

(declare-fun m!6603530 () Bool)

(assert (=> bm!424672 m!6603530))

(declare-fun m!6603532 () Bool)

(assert (=> bm!424667 m!6603532))

(declare-fun m!6603534 () Bool)

(assert (=> bm!424669 m!6603534))

(declare-fun m!6603536 () Bool)

(assert (=> b!5632586 m!6603536))

(declare-fun m!6603538 () Bool)

(assert (=> b!5632592 m!6603538))

(assert (=> bm!424542 d!1779052))

(declare-fun b!5632595 () Bool)

(declare-fun e!3471499 () (Set Context!10016))

(declare-fun call!424680 () (Set Context!10016))

(assert (=> b!5632595 (= e!3471499 call!424680)))

(declare-fun b!5632596 () Bool)

(declare-fun c!989255 () Bool)

(assert (=> b!5632596 (= c!989255 (is-Star!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun e!3471496 () (Set Context!10016))

(assert (=> b!5632596 (= e!3471496 e!3471499)))

(declare-fun call!424682 () (Set Context!10016))

(declare-fun bm!424673 () Bool)

(declare-fun c!989254 () Bool)

(declare-fun call!424683 () List!63171)

(assert (=> bm!424673 (= call!424682 (derivationStepZipperDown!966 (ite c!989254 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))) (ite c!989254 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))) (Context!10017 call!424683)) (h!69497 s!2326)))))

(declare-fun b!5632597 () Bool)

(declare-fun e!3471501 () Bool)

(assert (=> b!5632597 (= e!3471501 (nullable!5656 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5632598 () Bool)

(declare-fun e!3471500 () (Set Context!10016))

(declare-fun e!3471497 () (Set Context!10016))

(assert (=> b!5632598 (= e!3471500 e!3471497)))

(assert (=> b!5632598 (= c!989254 (is-Union!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun bm!424674 () Bool)

(declare-fun call!424679 () (Set Context!10016))

(assert (=> bm!424674 (= call!424680 call!424679)))

(declare-fun call!424681 () List!63171)

(declare-fun bm!424675 () Bool)

(declare-fun call!424678 () (Set Context!10016))

(declare-fun c!989256 () Bool)

(declare-fun c!989253 () Bool)

(assert (=> bm!424675 (= call!424678 (derivationStepZipperDown!966 (ite c!989254 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989256 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989253 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343))))))) (ite (or c!989254 c!989256) (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))) (Context!10017 call!424681)) (h!69497 s!2326)))))

(declare-fun b!5632599 () Bool)

(declare-fun e!3471498 () (Set Context!10016))

(assert (=> b!5632599 (= e!3471498 (set.union call!424682 call!424679))))

(declare-fun b!5632600 () Bool)

(assert (=> b!5632600 (= e!3471496 call!424680)))

(declare-fun b!5632601 () Bool)

(assert (=> b!5632601 (= c!989256 e!3471501)))

(declare-fun res!2385193 () Bool)

(assert (=> b!5632601 (=> (not res!2385193) (not e!3471501))))

(assert (=> b!5632601 (= res!2385193 (is-Concat!24469 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> b!5632601 (= e!3471497 e!3471498)))

(declare-fun bm!424676 () Bool)

(assert (=> bm!424676 (= call!424679 call!424678)))

(declare-fun bm!424677 () Bool)

(assert (=> bm!424677 (= call!424681 call!424683)))

(declare-fun bm!424678 () Bool)

(assert (=> bm!424678 (= call!424683 ($colon$colon!1674 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343))))) (ite (or c!989256 c!989253) (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (h!69495 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun b!5632602 () Bool)

(assert (=> b!5632602 (= e!3471497 (set.union call!424682 call!424678))))

(declare-fun d!1779054 () Bool)

(declare-fun c!989257 () Bool)

(assert (=> d!1779054 (= c!989257 (and (is-ElementMatch!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))) (= (c!988948 (h!69495 (exprs!5508 (h!69496 zl!343)))) (h!69497 s!2326))))))

(assert (=> d!1779054 (= (derivationStepZipperDown!966 (h!69495 (exprs!5508 (h!69496 zl!343))) (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))) (h!69497 s!2326)) e!3471500)))

(declare-fun b!5632603 () Bool)

(assert (=> b!5632603 (= e!3471500 (set.insert (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))) (as set.empty (Set Context!10016))))))

(declare-fun b!5632604 () Bool)

(assert (=> b!5632604 (= e!3471498 e!3471496)))

(assert (=> b!5632604 (= c!989253 (is-Concat!24469 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5632605 () Bool)

(assert (=> b!5632605 (= e!3471499 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779054 c!989257) b!5632603))

(assert (= (and d!1779054 (not c!989257)) b!5632598))

(assert (= (and b!5632598 c!989254) b!5632602))

(assert (= (and b!5632598 (not c!989254)) b!5632601))

(assert (= (and b!5632601 res!2385193) b!5632597))

(assert (= (and b!5632601 c!989256) b!5632599))

(assert (= (and b!5632601 (not c!989256)) b!5632604))

(assert (= (and b!5632604 c!989253) b!5632600))

(assert (= (and b!5632604 (not c!989253)) b!5632596))

(assert (= (and b!5632596 c!989255) b!5632595))

(assert (= (and b!5632596 (not c!989255)) b!5632605))

(assert (= (or b!5632600 b!5632595) bm!424677))

(assert (= (or b!5632600 b!5632595) bm!424674))

(assert (= (or b!5632599 bm!424677) bm!424678))

(assert (= (or b!5632599 bm!424674) bm!424676))

(assert (= (or b!5632602 bm!424676) bm!424675))

(assert (= (or b!5632602 b!5632599) bm!424673))

(declare-fun m!6603540 () Bool)

(assert (=> bm!424678 m!6603540))

(declare-fun m!6603542 () Bool)

(assert (=> bm!424673 m!6603542))

(declare-fun m!6603544 () Bool)

(assert (=> bm!424675 m!6603544))

(assert (=> b!5632597 m!6603022))

(declare-fun m!6603546 () Bool)

(assert (=> b!5632603 m!6603546))

(assert (=> bm!424568 d!1779054))

(assert (=> bm!424524 d!1779044))

(declare-fun d!1779056 () Bool)

(assert (=> d!1779056 (= (isEmpty!34888 (tail!11088 (unfocusZipperList!1052 zl!343))) (is-Nil!63047 (tail!11088 (unfocusZipperList!1052 zl!343))))))

(assert (=> b!5631857 d!1779056))

(declare-fun d!1779058 () Bool)

(assert (=> d!1779058 (= (tail!11088 (unfocusZipperList!1052 zl!343)) (t!376465 (unfocusZipperList!1052 zl!343)))))

(assert (=> b!5631857 d!1779058))

(assert (=> d!1778844 d!1778852))

(declare-fun d!1779060 () Bool)

(assert (=> d!1779060 (= (flatMap!1237 z!1189 lambda!302653) (dynLambda!24655 lambda!302653 (h!69496 zl!343)))))

(assert (=> d!1779060 true))

(declare-fun _$13!2262 () Unit!156028)

(assert (=> d!1779060 (= (choose!42689 z!1189 (h!69496 zl!343) lambda!302653) _$13!2262)))

(declare-fun b_lambda!212995 () Bool)

(assert (=> (not b_lambda!212995) (not d!1779060)))

(declare-fun bs!1303326 () Bool)

(assert (= bs!1303326 d!1779060))

(assert (=> bs!1303326 m!6602616))

(assert (=> bs!1303326 m!6603024))

(assert (=> d!1778844 d!1779060))

(declare-fun d!1779062 () Bool)

(assert (=> d!1779062 true))

(assert (=> d!1779062 true))

(declare-fun res!2385196 () Bool)

(assert (=> d!1779062 (= (choose!42693 lambda!302651) res!2385196)))

(assert (=> d!1778866 d!1779062))

(declare-fun b!5632606 () Bool)

(declare-fun e!3471505 () (Set Context!10016))

(declare-fun call!424686 () (Set Context!10016))

(assert (=> b!5632606 (= e!3471505 call!424686)))

(declare-fun b!5632607 () Bool)

(declare-fun c!989260 () Bool)

(assert (=> b!5632607 (= c!989260 (is-Star!15624 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))))))

(declare-fun e!3471502 () (Set Context!10016))

(assert (=> b!5632607 (= e!3471502 e!3471505)))

(declare-fun call!424689 () List!63171)

(declare-fun c!989259 () Bool)

(declare-fun bm!424679 () Bool)

(declare-fun call!424688 () (Set Context!10016))

(assert (=> bm!424679 (= call!424688 (derivationStepZipperDown!966 (ite c!989259 (regOne!31761 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))) (regOne!31760 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))))) (ite c!989259 (ite c!989026 lt!2262567 (Context!10017 call!424550)) (Context!10017 call!424689)) (h!69497 s!2326)))))

(declare-fun b!5632608 () Bool)

(declare-fun e!3471507 () Bool)

(assert (=> b!5632608 (= e!3471507 (nullable!5656 (regOne!31760 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))))))))

(declare-fun b!5632609 () Bool)

(declare-fun e!3471506 () (Set Context!10016))

(declare-fun e!3471503 () (Set Context!10016))

(assert (=> b!5632609 (= e!3471506 e!3471503)))

(assert (=> b!5632609 (= c!989259 (is-Union!15624 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))))))

(declare-fun bm!424680 () Bool)

(declare-fun call!424685 () (Set Context!10016))

(assert (=> bm!424680 (= call!424686 call!424685)))

(declare-fun c!989258 () Bool)

(declare-fun call!424684 () (Set Context!10016))

(declare-fun bm!424681 () Bool)

(declare-fun call!424687 () List!63171)

(declare-fun c!989261 () Bool)

(assert (=> bm!424681 (= call!424684 (derivationStepZipperDown!966 (ite c!989259 (regTwo!31761 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))) (ite c!989261 (regTwo!31760 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))) (ite c!989258 (regOne!31760 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))) (reg!15953 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))))))) (ite (or c!989259 c!989261) (ite c!989026 lt!2262567 (Context!10017 call!424550)) (Context!10017 call!424687)) (h!69497 s!2326)))))

(declare-fun b!5632610 () Bool)

(declare-fun e!3471504 () (Set Context!10016))

(assert (=> b!5632610 (= e!3471504 (set.union call!424688 call!424685))))

(declare-fun b!5632611 () Bool)

(assert (=> b!5632611 (= e!3471502 call!424686)))

(declare-fun b!5632612 () Bool)

(assert (=> b!5632612 (= c!989261 e!3471507)))

(declare-fun res!2385197 () Bool)

(assert (=> b!5632612 (=> (not res!2385197) (not e!3471507))))

(assert (=> b!5632612 (= res!2385197 (is-Concat!24469 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))))))

(assert (=> b!5632612 (= e!3471503 e!3471504)))

(declare-fun bm!424682 () Bool)

(assert (=> bm!424682 (= call!424685 call!424684)))

(declare-fun bm!424683 () Bool)

(assert (=> bm!424683 (= call!424687 call!424689)))

(declare-fun bm!424684 () Bool)

(assert (=> bm!424684 (= call!424689 ($colon$colon!1674 (exprs!5508 (ite c!989026 lt!2262567 (Context!10017 call!424550))) (ite (or c!989261 c!989258) (regTwo!31760 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))) (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))))))))

(declare-fun b!5632613 () Bool)

(assert (=> b!5632613 (= e!3471503 (set.union call!424688 call!424684))))

(declare-fun c!989262 () Bool)

(declare-fun d!1779064 () Bool)

(assert (=> d!1779064 (= c!989262 (and (is-ElementMatch!15624 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))) (= (c!988948 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))) (h!69497 s!2326))))))

(assert (=> d!1779064 (= (derivationStepZipperDown!966 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292)))) (ite c!989026 lt!2262567 (Context!10017 call!424550)) (h!69497 s!2326)) e!3471506)))

(declare-fun b!5632614 () Bool)

(assert (=> b!5632614 (= e!3471506 (set.insert (ite c!989026 lt!2262567 (Context!10017 call!424550)) (as set.empty (Set Context!10016))))))

(declare-fun b!5632615 () Bool)

(assert (=> b!5632615 (= e!3471504 e!3471502)))

(assert (=> b!5632615 (= c!989258 (is-Concat!24469 (ite c!989026 (regOne!31761 (regTwo!31760 (regOne!31760 r!7292))) (regOne!31760 (regTwo!31760 (regOne!31760 r!7292))))))))

(declare-fun b!5632616 () Bool)

(assert (=> b!5632616 (= e!3471505 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779064 c!989262) b!5632614))

(assert (= (and d!1779064 (not c!989262)) b!5632609))

(assert (= (and b!5632609 c!989259) b!5632613))

(assert (= (and b!5632609 (not c!989259)) b!5632612))

(assert (= (and b!5632612 res!2385197) b!5632608))

(assert (= (and b!5632612 c!989261) b!5632610))

(assert (= (and b!5632612 (not c!989261)) b!5632615))

(assert (= (and b!5632615 c!989258) b!5632611))

(assert (= (and b!5632615 (not c!989258)) b!5632607))

(assert (= (and b!5632607 c!989260) b!5632606))

(assert (= (and b!5632607 (not c!989260)) b!5632616))

(assert (= (or b!5632611 b!5632606) bm!424683))

(assert (= (or b!5632611 b!5632606) bm!424680))

(assert (= (or b!5632610 bm!424683) bm!424684))

(assert (= (or b!5632610 bm!424680) bm!424682))

(assert (= (or b!5632613 bm!424682) bm!424681))

(assert (= (or b!5632613 b!5632610) bm!424679))

(declare-fun m!6603548 () Bool)

(assert (=> bm!424684 m!6603548))

(declare-fun m!6603550 () Bool)

(assert (=> bm!424679 m!6603550))

(declare-fun m!6603552 () Bool)

(assert (=> bm!424681 m!6603552))

(declare-fun m!6603554 () Bool)

(assert (=> b!5632608 m!6603554))

(declare-fun m!6603556 () Bool)

(assert (=> b!5632614 m!6603556))

(assert (=> bm!424540 d!1779064))

(declare-fun b!5632617 () Bool)

(declare-fun e!3471513 () Bool)

(declare-fun e!3471508 () Bool)

(assert (=> b!5632617 (= e!3471513 e!3471508)))

(declare-fun c!989264 () Bool)

(assert (=> b!5632617 (= c!989264 (is-Union!15624 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))))))

(declare-fun bm!424685 () Bool)

(declare-fun call!424691 () Bool)

(declare-fun call!424692 () Bool)

(assert (=> bm!424685 (= call!424691 call!424692)))

(declare-fun c!989263 () Bool)

(declare-fun bm!424686 () Bool)

(assert (=> bm!424686 (= call!424692 (validRegex!7360 (ite c!989263 (reg!15953 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))) (ite c!989264 (regOne!31761 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))) (regOne!31760 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292))))))))))

(declare-fun d!1779066 () Bool)

(declare-fun res!2385200 () Bool)

(declare-fun e!3471509 () Bool)

(assert (=> d!1779066 (=> res!2385200 e!3471509)))

(assert (=> d!1779066 (= res!2385200 (is-ElementMatch!15624 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))))))

(assert (=> d!1779066 (= (validRegex!7360 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))) e!3471509)))

(declare-fun b!5632618 () Bool)

(declare-fun e!3471510 () Bool)

(declare-fun e!3471514 () Bool)

(assert (=> b!5632618 (= e!3471510 e!3471514)))

(declare-fun res!2385201 () Bool)

(assert (=> b!5632618 (=> (not res!2385201) (not e!3471514))))

(assert (=> b!5632618 (= res!2385201 call!424691)))

(declare-fun b!5632619 () Bool)

(declare-fun e!3471511 () Bool)

(assert (=> b!5632619 (= e!3471513 e!3471511)))

(declare-fun res!2385202 () Bool)

(assert (=> b!5632619 (= res!2385202 (not (nullable!5656 (reg!15953 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))))))))

(assert (=> b!5632619 (=> (not res!2385202) (not e!3471511))))

(declare-fun b!5632620 () Bool)

(declare-fun res!2385199 () Bool)

(declare-fun e!3471512 () Bool)

(assert (=> b!5632620 (=> (not res!2385199) (not e!3471512))))

(assert (=> b!5632620 (= res!2385199 call!424691)))

(assert (=> b!5632620 (= e!3471508 e!3471512)))

(declare-fun b!5632621 () Bool)

(declare-fun call!424690 () Bool)

(assert (=> b!5632621 (= e!3471512 call!424690)))

(declare-fun bm!424687 () Bool)

(assert (=> bm!424687 (= call!424690 (validRegex!7360 (ite c!989264 (regTwo!31761 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))) (regTwo!31760 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))))))))

(declare-fun b!5632622 () Bool)

(assert (=> b!5632622 (= e!3471514 call!424690)))

(declare-fun b!5632623 () Bool)

(assert (=> b!5632623 (= e!3471511 call!424692)))

(declare-fun b!5632624 () Bool)

(declare-fun res!2385198 () Bool)

(assert (=> b!5632624 (=> res!2385198 e!3471510)))

(assert (=> b!5632624 (= res!2385198 (not (is-Concat!24469 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292))))))))

(assert (=> b!5632624 (= e!3471508 e!3471510)))

(declare-fun b!5632625 () Bool)

(assert (=> b!5632625 (= e!3471509 e!3471513)))

(assert (=> b!5632625 (= c!989263 (is-Star!15624 (ite c!989055 (reg!15953 r!7292) (ite c!989056 (regOne!31761 r!7292) (regOne!31760 r!7292)))))))

(assert (= (and d!1779066 (not res!2385200)) b!5632625))

(assert (= (and b!5632625 c!989263) b!5632619))

(assert (= (and b!5632625 (not c!989263)) b!5632617))

(assert (= (and b!5632619 res!2385202) b!5632623))

(assert (= (and b!5632617 c!989264) b!5632620))

(assert (= (and b!5632617 (not c!989264)) b!5632624))

(assert (= (and b!5632620 res!2385199) b!5632621))

(assert (= (and b!5632624 (not res!2385198)) b!5632618))

(assert (= (and b!5632618 res!2385201) b!5632622))

(assert (= (or b!5632621 b!5632622) bm!424687))

(assert (= (or b!5632620 b!5632618) bm!424685))

(assert (= (or b!5632623 bm!424685) bm!424686))

(declare-fun m!6603558 () Bool)

(assert (=> bm!424686 m!6603558))

(declare-fun m!6603560 () Bool)

(assert (=> b!5632619 m!6603560))

(declare-fun m!6603562 () Bool)

(assert (=> bm!424687 m!6603562))

(assert (=> bm!424559 d!1779066))

(assert (=> d!1778802 d!1778804))

(assert (=> d!1778802 d!1778794))

(declare-fun e!3471515 () Bool)

(declare-fun d!1779068 () Bool)

(assert (=> d!1779068 (= (matchZipper!1762 (set.union lt!2262574 lt!2262587) (t!376467 s!2326)) e!3471515)))

(declare-fun res!2385203 () Bool)

(assert (=> d!1779068 (=> res!2385203 e!3471515)))

(assert (=> d!1779068 (= res!2385203 (matchZipper!1762 lt!2262574 (t!376467 s!2326)))))

(assert (=> d!1779068 true))

(declare-fun _$48!1255 () Unit!156028)

(assert (=> d!1779068 (= (choose!42692 lt!2262574 lt!2262587 (t!376467 s!2326)) _$48!1255)))

(declare-fun b!5632626 () Bool)

(assert (=> b!5632626 (= e!3471515 (matchZipper!1762 lt!2262587 (t!376467 s!2326)))))

(assert (= (and d!1779068 (not res!2385203)) b!5632626))

(assert (=> d!1779068 m!6602630))

(assert (=> d!1779068 m!6602628))

(assert (=> b!5632626 m!6602676))

(assert (=> d!1778802 d!1779068))

(declare-fun d!1779070 () Bool)

(declare-fun c!989265 () Bool)

(assert (=> d!1779070 (= c!989265 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471516 () Bool)

(assert (=> d!1779070 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262582 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471516)))

(declare-fun b!5632627 () Bool)

(assert (=> b!5632627 (= e!3471516 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262582 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632628 () Bool)

(assert (=> b!5632628 (= e!3471516 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262582 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779070 c!989265) b!5632627))

(assert (= (and d!1779070 (not c!989265)) b!5632628))

(assert (=> d!1779070 m!6602882))

(declare-fun m!6603564 () Bool)

(assert (=> d!1779070 m!6603564))

(assert (=> b!5632627 m!6602998))

(declare-fun m!6603566 () Bool)

(assert (=> b!5632627 m!6603566))

(assert (=> b!5632628 m!6602882))

(declare-fun m!6603568 () Bool)

(assert (=> b!5632628 m!6603568))

(assert (=> b!5632628 m!6602998))

(assert (=> b!5632628 m!6603568))

(declare-fun m!6603570 () Bool)

(assert (=> b!5632628 m!6603570))

(assert (=> b!5632628 m!6602882))

(declare-fun m!6603572 () Bool)

(assert (=> b!5632628 m!6603572))

(assert (=> b!5632628 m!6603570))

(assert (=> b!5632628 m!6603572))

(declare-fun m!6603574 () Bool)

(assert (=> b!5632628 m!6603574))

(assert (=> b!5631902 d!1779070))

(declare-fun bs!1303327 () Bool)

(declare-fun d!1779072 () Bool)

(assert (= bs!1303327 (and d!1779072 b!5631478)))

(declare-fun lambda!302740 () Int)

(assert (=> bs!1303327 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302740 lambda!302653))))

(declare-fun bs!1303328 () Bool)

(assert (= bs!1303328 (and d!1779072 d!1778780)))

(assert (=> bs!1303328 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302740 lambda!302671))))

(declare-fun bs!1303329 () Bool)

(assert (= bs!1303329 (and d!1779072 d!1778838)))

(assert (=> bs!1303329 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302740 lambda!302687))))

(assert (=> d!1779072 true))

(assert (=> d!1779072 (= (derivationStepZipper!1711 lt!2262582 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262582 lambda!302740))))

(declare-fun bs!1303330 () Bool)

(assert (= bs!1303330 d!1779072))

(declare-fun m!6603576 () Bool)

(assert (=> bs!1303330 m!6603576))

(assert (=> b!5631902 d!1779072))

(declare-fun d!1779074 () Bool)

(assert (=> d!1779074 (= (head!11992 (t!376467 s!2326)) (h!69497 (t!376467 s!2326)))))

(assert (=> b!5631902 d!1779074))

(declare-fun d!1779076 () Bool)

(assert (=> d!1779076 (= (tail!11087 (t!376467 s!2326)) (t!376467 (t!376467 s!2326)))))

(assert (=> b!5631902 d!1779076))

(assert (=> d!1778796 d!1779046))

(assert (=> b!5631955 d!1779026))

(assert (=> d!1778792 d!1779046))

(declare-fun d!1779078 () Bool)

(assert (=> d!1779078 (= (Exists!2724 (ite c!988980 lambda!302676 lambda!302677)) (choose!42693 (ite c!988980 lambda!302676 lambda!302677)))))

(declare-fun bs!1303331 () Bool)

(assert (= bs!1303331 d!1779078))

(declare-fun m!6603578 () Bool)

(assert (=> bs!1303331 m!6603578))

(assert (=> bm!424523 d!1779078))

(declare-fun d!1779080 () Bool)

(assert (=> d!1779080 (= (isConcat!688 lt!2262697) (is-Concat!24469 lt!2262697))))

(assert (=> b!5631762 d!1779080))

(declare-fun bs!1303332 () Bool)

(declare-fun d!1779082 () Bool)

(assert (= bs!1303332 (and d!1779082 d!1778820)))

(declare-fun lambda!302741 () Int)

(assert (=> bs!1303332 (= lambda!302741 lambda!302683)))

(declare-fun bs!1303333 () Bool)

(assert (= bs!1303333 (and d!1779082 d!1778822)))

(assert (=> bs!1303333 (= lambda!302741 lambda!302686)))

(declare-fun bs!1303334 () Bool)

(assert (= bs!1303334 (and d!1779082 d!1778858)))

(assert (=> bs!1303334 (= lambda!302741 lambda!302690)))

(declare-fun bs!1303335 () Bool)

(assert (= bs!1303335 (and d!1779082 d!1778790)))

(assert (=> bs!1303335 (= lambda!302741 lambda!302680)))

(declare-fun bs!1303336 () Bool)

(assert (= bs!1303336 (and d!1779082 d!1778860)))

(assert (=> bs!1303336 (= lambda!302741 lambda!302691)))

(declare-fun bs!1303337 () Bool)

(assert (= bs!1303337 (and d!1779082 d!1779032)))

(assert (=> bs!1303337 (= lambda!302741 lambda!302739)))

(assert (=> d!1779082 (= (inv!82308 (h!69496 (t!376466 zl!343))) (forall!14778 (exprs!5508 (h!69496 (t!376466 zl!343))) lambda!302741))))

(declare-fun bs!1303338 () Bool)

(assert (= bs!1303338 d!1779082))

(declare-fun m!6603580 () Bool)

(assert (=> bs!1303338 m!6603580))

(assert (=> b!5632031 d!1779082))

(declare-fun d!1779084 () Bool)

(declare-fun lt!2262792 () Int)

(assert (=> d!1779084 (> lt!2262792 0)))

(declare-fun e!3471526 () Int)

(assert (=> d!1779084 (= lt!2262792 e!3471526)))

(declare-fun c!989275 () Bool)

(assert (=> d!1779084 (= c!989275 (is-ElementMatch!15624 (h!69495 (exprs!5508 lt!2262588))))))

(assert (=> d!1779084 (= (regexDepthTotal!88 (h!69495 (exprs!5508 lt!2262588))) lt!2262792)))

(declare-fun b!5632645 () Bool)

(declare-fun e!3471528 () Int)

(declare-fun call!424701 () Int)

(assert (=> b!5632645 (= e!3471528 (+ 1 call!424701))))

(declare-fun b!5632646 () Bool)

(assert (=> b!5632646 (= e!3471526 e!3471528)))

(declare-fun c!989274 () Bool)

(assert (=> b!5632646 (= c!989274 (is-Star!15624 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun bm!424694 () Bool)

(declare-fun call!424699 () Int)

(assert (=> bm!424694 (= call!424699 call!424701)))

(declare-fun b!5632647 () Bool)

(declare-fun e!3471525 () Int)

(assert (=> b!5632647 (= e!3471525 1)))

(declare-fun bm!424695 () Bool)

(declare-fun c!989277 () Bool)

(assert (=> bm!424695 (= call!424701 (regexDepthTotal!88 (ite c!989274 (reg!15953 (h!69495 (exprs!5508 lt!2262588))) (ite c!989277 (regOne!31761 (h!69495 (exprs!5508 lt!2262588))) (regOne!31760 (h!69495 (exprs!5508 lt!2262588)))))))))

(declare-fun b!5632648 () Bool)

(assert (=> b!5632648 (= c!989277 (is-Union!15624 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun e!3471527 () Int)

(assert (=> b!5632648 (= e!3471528 e!3471527)))

(declare-fun b!5632649 () Bool)

(declare-fun call!424700 () Int)

(assert (=> b!5632649 (= e!3471527 (+ 1 call!424699 call!424700))))

(declare-fun b!5632650 () Bool)

(assert (=> b!5632650 (= e!3471527 e!3471525)))

(declare-fun c!989276 () Bool)

(assert (=> b!5632650 (= c!989276 (is-Concat!24469 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun b!5632651 () Bool)

(assert (=> b!5632651 (= e!3471526 1)))

(declare-fun bm!424696 () Bool)

(assert (=> bm!424696 (= call!424700 (regexDepthTotal!88 (ite c!989277 (regTwo!31761 (h!69495 (exprs!5508 lt!2262588))) (regTwo!31760 (h!69495 (exprs!5508 lt!2262588))))))))

(declare-fun b!5632652 () Bool)

(assert (=> b!5632652 (= e!3471525 (+ 1 call!424699 call!424700))))

(assert (= (and d!1779084 c!989275) b!5632651))

(assert (= (and d!1779084 (not c!989275)) b!5632646))

(assert (= (and b!5632646 c!989274) b!5632645))

(assert (= (and b!5632646 (not c!989274)) b!5632648))

(assert (= (and b!5632648 c!989277) b!5632649))

(assert (= (and b!5632648 (not c!989277)) b!5632650))

(assert (= (and b!5632650 c!989276) b!5632652))

(assert (= (and b!5632650 (not c!989276)) b!5632647))

(assert (= (or b!5632649 b!5632652) bm!424696))

(assert (= (or b!5632649 b!5632652) bm!424694))

(assert (= (or b!5632645 bm!424694) bm!424695))

(declare-fun m!6603582 () Bool)

(assert (=> bm!424695 m!6603582))

(declare-fun m!6603584 () Bool)

(assert (=> bm!424696 m!6603584))

(assert (=> b!5631785 d!1779084))

(declare-fun d!1779086 () Bool)

(declare-fun lt!2262793 () Int)

(assert (=> d!1779086 (>= lt!2262793 0)))

(declare-fun e!3471529 () Int)

(assert (=> d!1779086 (= lt!2262793 e!3471529)))

(declare-fun c!989278 () Bool)

(assert (=> d!1779086 (= c!989278 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588))))))))

(assert (=> d!1779086 (= (contextDepthTotal!209 (Context!10017 (t!376465 (exprs!5508 lt!2262588)))) lt!2262793)))

(declare-fun b!5632653 () Bool)

(assert (=> b!5632653 (= e!3471529 (+ (regexDepthTotal!88 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588)))))) (contextDepthTotal!209 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588)))))))))))

(declare-fun b!5632654 () Bool)

(assert (=> b!5632654 (= e!3471529 1)))

(assert (= (and d!1779086 c!989278) b!5632653))

(assert (= (and d!1779086 (not c!989278)) b!5632654))

(declare-fun m!6603586 () Bool)

(assert (=> b!5632653 m!6603586))

(declare-fun m!6603588 () Bool)

(assert (=> b!5632653 m!6603588))

(assert (=> b!5631785 d!1779086))

(assert (=> bs!1303262 d!1778850))

(declare-fun d!1779088 () Bool)

(assert (=> d!1779088 true))

(assert (=> d!1779088 true))

(declare-fun res!2385204 () Bool)

(assert (=> d!1779088 (= (choose!42693 lambda!302652) res!2385204)))

(assert (=> d!1778868 d!1779088))

(assert (=> d!1778788 d!1778786))

(assert (=> d!1778788 d!1778784))

(declare-fun d!1779090 () Bool)

(assert (=> d!1779090 (= (matchR!7809 r!7292 s!2326) (matchRSpec!2727 r!7292 s!2326))))

(assert (=> d!1779090 true))

(declare-fun _$88!3916 () Unit!156028)

(assert (=> d!1779090 (= (choose!42691 r!7292 s!2326) _$88!3916)))

(declare-fun bs!1303339 () Bool)

(assert (= bs!1303339 d!1779090))

(assert (=> bs!1303339 m!6602596))

(assert (=> bs!1303339 m!6602594))

(assert (=> d!1778788 d!1779090))

(assert (=> d!1778788 d!1778824))

(declare-fun b!5632669 () Bool)

(declare-fun e!3471547 () Bool)

(declare-fun e!3471546 () Bool)

(assert (=> b!5632669 (= e!3471547 e!3471546)))

(declare-fun res!2385215 () Bool)

(assert (=> b!5632669 (=> res!2385215 e!3471546)))

(assert (=> b!5632669 (= res!2385215 (is-Star!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun bm!424701 () Bool)

(declare-fun call!424706 () Bool)

(declare-fun c!989281 () Bool)

(assert (=> bm!424701 (= call!424706 (nullable!5656 (ite c!989281 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun d!1779092 () Bool)

(declare-fun res!2385217 () Bool)

(declare-fun e!3471542 () Bool)

(assert (=> d!1779092 (=> res!2385217 e!3471542)))

(assert (=> d!1779092 (= res!2385217 (is-EmptyExpr!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> d!1779092 (= (nullableFct!1753 (h!69495 (exprs!5508 (h!69496 zl!343)))) e!3471542)))

(declare-fun b!5632670 () Bool)

(declare-fun e!3471544 () Bool)

(declare-fun call!424707 () Bool)

(assert (=> b!5632670 (= e!3471544 call!424707)))

(declare-fun b!5632671 () Bool)

(declare-fun e!3471545 () Bool)

(assert (=> b!5632671 (= e!3471546 e!3471545)))

(assert (=> b!5632671 (= c!989281 (is-Union!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun bm!424702 () Bool)

(assert (=> bm!424702 (= call!424707 (nullable!5656 (ite c!989281 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun b!5632672 () Bool)

(assert (=> b!5632672 (= e!3471545 e!3471544)))

(declare-fun res!2385219 () Bool)

(assert (=> b!5632672 (= res!2385219 call!424706)))

(assert (=> b!5632672 (=> res!2385219 e!3471544)))

(declare-fun b!5632673 () Bool)

(assert (=> b!5632673 (= e!3471542 e!3471547)))

(declare-fun res!2385218 () Bool)

(assert (=> b!5632673 (=> (not res!2385218) (not e!3471547))))

(assert (=> b!5632673 (= res!2385218 (and (not (is-EmptyLang!15624 (h!69495 (exprs!5508 (h!69496 zl!343))))) (not (is-ElementMatch!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun b!5632674 () Bool)

(declare-fun e!3471543 () Bool)

(assert (=> b!5632674 (= e!3471545 e!3471543)))

(declare-fun res!2385216 () Bool)

(assert (=> b!5632674 (= res!2385216 call!424706)))

(assert (=> b!5632674 (=> (not res!2385216) (not e!3471543))))

(declare-fun b!5632675 () Bool)

(assert (=> b!5632675 (= e!3471543 call!424707)))

(assert (= (and d!1779092 (not res!2385217)) b!5632673))

(assert (= (and b!5632673 res!2385218) b!5632669))

(assert (= (and b!5632669 (not res!2385215)) b!5632671))

(assert (= (and b!5632671 c!989281) b!5632672))

(assert (= (and b!5632671 (not c!989281)) b!5632674))

(assert (= (and b!5632672 (not res!2385219)) b!5632670))

(assert (= (and b!5632674 res!2385216) b!5632675))

(assert (= (or b!5632670 b!5632675) bm!424702))

(assert (= (or b!5632672 b!5632674) bm!424701))

(declare-fun m!6603590 () Bool)

(assert (=> bm!424701 m!6603590))

(declare-fun m!6603592 () Bool)

(assert (=> bm!424702 m!6603592))

(assert (=> d!1778846 d!1779092))

(declare-fun d!1779094 () Bool)

(assert (=> d!1779094 (= (isEmpty!34891 (tail!11087 s!2326)) (is-Nil!63049 (tail!11087 s!2326)))))

(assert (=> b!5631725 d!1779094))

(assert (=> b!5631725 d!1779004))

(declare-fun d!1779096 () Bool)

(declare-fun c!989282 () Bool)

(assert (=> d!1779096 (= c!989282 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471548 () Bool)

(assert (=> d!1779096 (= (matchZipper!1762 (derivationStepZipper!1711 (set.union lt!2262574 lt!2262587) (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471548)))

(declare-fun b!5632676 () Bool)

(assert (=> b!5632676 (= e!3471548 (nullableZipper!1606 (derivationStepZipper!1711 (set.union lt!2262574 lt!2262587) (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632677 () Bool)

(assert (=> b!5632677 (= e!3471548 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 (set.union lt!2262574 lt!2262587) (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779096 c!989282) b!5632676))

(assert (= (and d!1779096 (not c!989282)) b!5632677))

(assert (=> d!1779096 m!6602882))

(assert (=> d!1779096 m!6603564))

(assert (=> b!5632676 m!6602912))

(declare-fun m!6603594 () Bool)

(assert (=> b!5632676 m!6603594))

(assert (=> b!5632677 m!6602882))

(assert (=> b!5632677 m!6603568))

(assert (=> b!5632677 m!6602912))

(assert (=> b!5632677 m!6603568))

(declare-fun m!6603596 () Bool)

(assert (=> b!5632677 m!6603596))

(assert (=> b!5632677 m!6602882))

(assert (=> b!5632677 m!6603572))

(assert (=> b!5632677 m!6603596))

(assert (=> b!5632677 m!6603572))

(declare-fun m!6603598 () Bool)

(assert (=> b!5632677 m!6603598))

(assert (=> b!5631780 d!1779096))

(declare-fun bs!1303340 () Bool)

(declare-fun d!1779098 () Bool)

(assert (= bs!1303340 (and d!1779098 b!5631478)))

(declare-fun lambda!302742 () Int)

(assert (=> bs!1303340 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302742 lambda!302653))))

(declare-fun bs!1303341 () Bool)

(assert (= bs!1303341 (and d!1779098 d!1778780)))

(assert (=> bs!1303341 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302742 lambda!302671))))

(declare-fun bs!1303342 () Bool)

(assert (= bs!1303342 (and d!1779098 d!1778838)))

(assert (=> bs!1303342 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302742 lambda!302687))))

(declare-fun bs!1303343 () Bool)

(assert (= bs!1303343 (and d!1779098 d!1779072)))

(assert (=> bs!1303343 (= lambda!302742 lambda!302740)))

(assert (=> d!1779098 true))

(assert (=> d!1779098 (= (derivationStepZipper!1711 (set.union lt!2262574 lt!2262587) (head!11992 (t!376467 s!2326))) (flatMap!1237 (set.union lt!2262574 lt!2262587) lambda!302742))))

(declare-fun bs!1303344 () Bool)

(assert (= bs!1303344 d!1779098))

(declare-fun m!6603600 () Bool)

(assert (=> bs!1303344 m!6603600))

(assert (=> b!5631780 d!1779098))

(assert (=> b!5631780 d!1779074))

(assert (=> b!5631780 d!1779076))

(declare-fun d!1779100 () Bool)

(assert (=> d!1779100 (= (nullable!5656 (h!69495 (exprs!5508 lt!2262567))) (nullableFct!1753 (h!69495 (exprs!5508 lt!2262567))))))

(declare-fun bs!1303345 () Bool)

(assert (= bs!1303345 d!1779100))

(declare-fun m!6603602 () Bool)

(assert (=> bs!1303345 m!6603602))

(assert (=> b!5631929 d!1779100))

(declare-fun d!1779102 () Bool)

(assert (=> d!1779102 (= (nullable!5656 (h!69495 (exprs!5508 lt!2262573))) (nullableFct!1753 (h!69495 (exprs!5508 lt!2262573))))))

(declare-fun bs!1303346 () Bool)

(assert (= bs!1303346 d!1779102))

(declare-fun m!6603604 () Bool)

(assert (=> bs!1303346 m!6603604))

(assert (=> b!5631639 d!1779102))

(declare-fun d!1779104 () Bool)

(assert (=> d!1779104 (= (nullable!5656 (h!69495 (exprs!5508 lt!2262588))) (nullableFct!1753 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun bs!1303347 () Bool)

(assert (= bs!1303347 d!1779104))

(declare-fun m!6603606 () Bool)

(assert (=> bs!1303347 m!6603606))

(assert (=> b!5631634 d!1779104))

(assert (=> d!1778814 d!1779046))

(declare-fun b!5632678 () Bool)

(declare-fun e!3471554 () Bool)

(declare-fun e!3471553 () Bool)

(assert (=> b!5632678 (= e!3471554 e!3471553)))

(declare-fun res!2385220 () Bool)

(assert (=> b!5632678 (=> res!2385220 e!3471553)))

(assert (=> b!5632678 (= res!2385220 (is-Star!15624 (regOne!31760 (regOne!31760 r!7292))))))

(declare-fun bm!424703 () Bool)

(declare-fun call!424708 () Bool)

(declare-fun c!989283 () Bool)

(assert (=> bm!424703 (= call!424708 (nullable!5656 (ite c!989283 (regOne!31761 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 (regOne!31760 r!7292))))))))

(declare-fun d!1779106 () Bool)

(declare-fun res!2385222 () Bool)

(declare-fun e!3471549 () Bool)

(assert (=> d!1779106 (=> res!2385222 e!3471549)))

(assert (=> d!1779106 (= res!2385222 (is-EmptyExpr!15624 (regOne!31760 (regOne!31760 r!7292))))))

(assert (=> d!1779106 (= (nullableFct!1753 (regOne!31760 (regOne!31760 r!7292))) e!3471549)))

(declare-fun b!5632679 () Bool)

(declare-fun e!3471551 () Bool)

(declare-fun call!424709 () Bool)

(assert (=> b!5632679 (= e!3471551 call!424709)))

(declare-fun b!5632680 () Bool)

(declare-fun e!3471552 () Bool)

(assert (=> b!5632680 (= e!3471553 e!3471552)))

(assert (=> b!5632680 (= c!989283 (is-Union!15624 (regOne!31760 (regOne!31760 r!7292))))))

(declare-fun bm!424704 () Bool)

(assert (=> bm!424704 (= call!424709 (nullable!5656 (ite c!989283 (regTwo!31761 (regOne!31760 (regOne!31760 r!7292))) (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))))))))

(declare-fun b!5632681 () Bool)

(assert (=> b!5632681 (= e!3471552 e!3471551)))

(declare-fun res!2385224 () Bool)

(assert (=> b!5632681 (= res!2385224 call!424708)))

(assert (=> b!5632681 (=> res!2385224 e!3471551)))

(declare-fun b!5632682 () Bool)

(assert (=> b!5632682 (= e!3471549 e!3471554)))

(declare-fun res!2385223 () Bool)

(assert (=> b!5632682 (=> (not res!2385223) (not e!3471554))))

(assert (=> b!5632682 (= res!2385223 (and (not (is-EmptyLang!15624 (regOne!31760 (regOne!31760 r!7292)))) (not (is-ElementMatch!15624 (regOne!31760 (regOne!31760 r!7292))))))))

(declare-fun b!5632683 () Bool)

(declare-fun e!3471550 () Bool)

(assert (=> b!5632683 (= e!3471552 e!3471550)))

(declare-fun res!2385221 () Bool)

(assert (=> b!5632683 (= res!2385221 call!424708)))

(assert (=> b!5632683 (=> (not res!2385221) (not e!3471550))))

(declare-fun b!5632684 () Bool)

(assert (=> b!5632684 (= e!3471550 call!424709)))

(assert (= (and d!1779106 (not res!2385222)) b!5632682))

(assert (= (and b!5632682 res!2385223) b!5632678))

(assert (= (and b!5632678 (not res!2385220)) b!5632680))

(assert (= (and b!5632680 c!989283) b!5632681))

(assert (= (and b!5632680 (not c!989283)) b!5632683))

(assert (= (and b!5632681 (not res!2385224)) b!5632679))

(assert (= (and b!5632683 res!2385221) b!5632684))

(assert (= (or b!5632679 b!5632684) bm!424704))

(assert (= (or b!5632681 b!5632683) bm!424703))

(declare-fun m!6603608 () Bool)

(assert (=> bm!424703 m!6603608))

(declare-fun m!6603610 () Bool)

(assert (=> bm!424704 m!6603610))

(assert (=> d!1778862 d!1779106))

(declare-fun d!1779108 () Bool)

(declare-fun c!989284 () Bool)

(assert (=> d!1779108 (= c!989284 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471555 () Bool)

(assert (=> d!1779108 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262574 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471555)))

(declare-fun b!5632685 () Bool)

(assert (=> b!5632685 (= e!3471555 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262574 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632686 () Bool)

(assert (=> b!5632686 (= e!3471555 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262574 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779108 c!989284) b!5632685))

(assert (= (and d!1779108 (not c!989284)) b!5632686))

(assert (=> d!1779108 m!6602882))

(assert (=> d!1779108 m!6603564))

(assert (=> b!5632685 m!6602888))

(declare-fun m!6603612 () Bool)

(assert (=> b!5632685 m!6603612))

(assert (=> b!5632686 m!6602882))

(assert (=> b!5632686 m!6603568))

(assert (=> b!5632686 m!6602888))

(assert (=> b!5632686 m!6603568))

(declare-fun m!6603614 () Bool)

(assert (=> b!5632686 m!6603614))

(assert (=> b!5632686 m!6602882))

(assert (=> b!5632686 m!6603572))

(assert (=> b!5632686 m!6603614))

(assert (=> b!5632686 m!6603572))

(declare-fun m!6603616 () Bool)

(assert (=> b!5632686 m!6603616))

(assert (=> b!5631770 d!1779108))

(declare-fun bs!1303348 () Bool)

(declare-fun d!1779110 () Bool)

(assert (= bs!1303348 (and d!1779110 d!1778838)))

(declare-fun lambda!302743 () Int)

(assert (=> bs!1303348 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302743 lambda!302687))))

(declare-fun bs!1303349 () Bool)

(assert (= bs!1303349 (and d!1779110 d!1779098)))

(assert (=> bs!1303349 (= lambda!302743 lambda!302742)))

(declare-fun bs!1303350 () Bool)

(assert (= bs!1303350 (and d!1779110 d!1779072)))

(assert (=> bs!1303350 (= lambda!302743 lambda!302740)))

(declare-fun bs!1303351 () Bool)

(assert (= bs!1303351 (and d!1779110 d!1778780)))

(assert (=> bs!1303351 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302743 lambda!302671))))

(declare-fun bs!1303352 () Bool)

(assert (= bs!1303352 (and d!1779110 b!5631478)))

(assert (=> bs!1303352 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302743 lambda!302653))))

(assert (=> d!1779110 true))

(assert (=> d!1779110 (= (derivationStepZipper!1711 lt!2262574 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262574 lambda!302743))))

(declare-fun bs!1303353 () Bool)

(assert (= bs!1303353 d!1779110))

(declare-fun m!6603618 () Bool)

(assert (=> bs!1303353 m!6603618))

(assert (=> b!5631770 d!1779110))

(assert (=> b!5631770 d!1779074))

(assert (=> b!5631770 d!1779076))

(declare-fun d!1779112 () Bool)

(declare-fun c!989285 () Bool)

(assert (=> d!1779112 (= c!989285 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471556 () Bool)

(assert (=> d!1779112 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262576 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471556)))

(declare-fun b!5632687 () Bool)

(assert (=> b!5632687 (= e!3471556 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262576 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632688 () Bool)

(assert (=> b!5632688 (= e!3471556 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262576 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779112 c!989285) b!5632687))

(assert (= (and d!1779112 (not c!989285)) b!5632688))

(assert (=> d!1779112 m!6602882))

(assert (=> d!1779112 m!6603564))

(assert (=> b!5632687 m!6602944))

(declare-fun m!6603620 () Bool)

(assert (=> b!5632687 m!6603620))

(assert (=> b!5632688 m!6602882))

(assert (=> b!5632688 m!6603568))

(assert (=> b!5632688 m!6602944))

(assert (=> b!5632688 m!6603568))

(declare-fun m!6603622 () Bool)

(assert (=> b!5632688 m!6603622))

(assert (=> b!5632688 m!6602882))

(assert (=> b!5632688 m!6603572))

(assert (=> b!5632688 m!6603622))

(assert (=> b!5632688 m!6603572))

(declare-fun m!6603624 () Bool)

(assert (=> b!5632688 m!6603624))

(assert (=> b!5631834 d!1779112))

(declare-fun bs!1303354 () Bool)

(declare-fun d!1779114 () Bool)

(assert (= bs!1303354 (and d!1779114 d!1778838)))

(declare-fun lambda!302744 () Int)

(assert (=> bs!1303354 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302744 lambda!302687))))

(declare-fun bs!1303355 () Bool)

(assert (= bs!1303355 (and d!1779114 d!1779098)))

(assert (=> bs!1303355 (= lambda!302744 lambda!302742)))

(declare-fun bs!1303356 () Bool)

(assert (= bs!1303356 (and d!1779114 d!1779072)))

(assert (=> bs!1303356 (= lambda!302744 lambda!302740)))

(declare-fun bs!1303357 () Bool)

(assert (= bs!1303357 (and d!1779114 d!1778780)))

(assert (=> bs!1303357 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302744 lambda!302671))))

(declare-fun bs!1303358 () Bool)

(assert (= bs!1303358 (and d!1779114 d!1779110)))

(assert (=> bs!1303358 (= lambda!302744 lambda!302743)))

(declare-fun bs!1303359 () Bool)

(assert (= bs!1303359 (and d!1779114 b!5631478)))

(assert (=> bs!1303359 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302744 lambda!302653))))

(assert (=> d!1779114 true))

(assert (=> d!1779114 (= (derivationStepZipper!1711 lt!2262576 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262576 lambda!302744))))

(declare-fun bs!1303360 () Bool)

(assert (= bs!1303360 d!1779114))

(declare-fun m!6603626 () Bool)

(assert (=> bs!1303360 m!6603626))

(assert (=> b!5631834 d!1779114))

(assert (=> b!5631834 d!1779074))

(assert (=> b!5631834 d!1779076))

(assert (=> d!1778834 d!1779046))

(assert (=> b!5631754 d!1778816))

(declare-fun d!1779116 () Bool)

(declare-fun e!3471561 () Bool)

(assert (=> d!1779116 e!3471561))

(declare-fun res!2385229 () Bool)

(assert (=> d!1779116 (=> (not res!2385229) (not e!3471561))))

(declare-fun lt!2262796 () List!63173)

(declare-fun content!11402 (List!63173) (Set C!31518))

(assert (=> d!1779116 (= res!2385229 (= (content!11402 lt!2262796) (set.union (content!11402 (_1!36024 (get!21720 lt!2262724))) (content!11402 (_2!36024 (get!21720 lt!2262724))))))))

(declare-fun e!3471562 () List!63173)

(assert (=> d!1779116 (= lt!2262796 e!3471562)))

(declare-fun c!989288 () Bool)

(assert (=> d!1779116 (= c!989288 (is-Nil!63049 (_1!36024 (get!21720 lt!2262724))))))

(assert (=> d!1779116 (= (++!13840 (_1!36024 (get!21720 lt!2262724)) (_2!36024 (get!21720 lt!2262724))) lt!2262796)))

(declare-fun b!5632697 () Bool)

(assert (=> b!5632697 (= e!3471562 (_2!36024 (get!21720 lt!2262724)))))

(declare-fun b!5632698 () Bool)

(assert (=> b!5632698 (= e!3471562 (Cons!63049 (h!69497 (_1!36024 (get!21720 lt!2262724))) (++!13840 (t!376467 (_1!36024 (get!21720 lt!2262724))) (_2!36024 (get!21720 lt!2262724)))))))

(declare-fun b!5632699 () Bool)

(declare-fun res!2385230 () Bool)

(assert (=> b!5632699 (=> (not res!2385230) (not e!3471561))))

(declare-fun size!39980 (List!63173) Int)

(assert (=> b!5632699 (= res!2385230 (= (size!39980 lt!2262796) (+ (size!39980 (_1!36024 (get!21720 lt!2262724))) (size!39980 (_2!36024 (get!21720 lt!2262724))))))))

(declare-fun b!5632700 () Bool)

(assert (=> b!5632700 (= e!3471561 (or (not (= (_2!36024 (get!21720 lt!2262724)) Nil!63049)) (= lt!2262796 (_1!36024 (get!21720 lt!2262724)))))))

(assert (= (and d!1779116 c!989288) b!5632697))

(assert (= (and d!1779116 (not c!989288)) b!5632698))

(assert (= (and d!1779116 res!2385229) b!5632699))

(assert (= (and b!5632699 res!2385230) b!5632700))

(declare-fun m!6603628 () Bool)

(assert (=> d!1779116 m!6603628))

(declare-fun m!6603630 () Bool)

(assert (=> d!1779116 m!6603630))

(declare-fun m!6603632 () Bool)

(assert (=> d!1779116 m!6603632))

(declare-fun m!6603634 () Bool)

(assert (=> b!5632698 m!6603634))

(declare-fun m!6603636 () Bool)

(assert (=> b!5632699 m!6603636))

(declare-fun m!6603638 () Bool)

(assert (=> b!5632699 m!6603638))

(declare-fun m!6603640 () Bool)

(assert (=> b!5632699 m!6603640))

(assert (=> b!5631951 d!1779116))

(assert (=> b!5631951 d!1779040))

(declare-fun d!1779118 () Bool)

(assert (=> d!1779118 (= (nullable!5656 r!7292) (nullableFct!1753 r!7292))))

(declare-fun bs!1303361 () Bool)

(assert (= bs!1303361 d!1779118))

(declare-fun m!6603642 () Bool)

(assert (=> bs!1303361 m!6603642))

(assert (=> b!5631721 d!1779118))

(declare-fun d!1779120 () Bool)

(declare-fun res!2385235 () Bool)

(declare-fun e!3471567 () Bool)

(assert (=> d!1779120 (=> res!2385235 e!3471567)))

(assert (=> d!1779120 (= res!2385235 (is-Nil!63047 (exprs!5508 (h!69496 zl!343))))))

(assert (=> d!1779120 (= (forall!14778 (exprs!5508 (h!69496 zl!343)) lambda!302690) e!3471567)))

(declare-fun b!5632705 () Bool)

(declare-fun e!3471568 () Bool)

(assert (=> b!5632705 (= e!3471567 e!3471568)))

(declare-fun res!2385236 () Bool)

(assert (=> b!5632705 (=> (not res!2385236) (not e!3471568))))

(declare-fun dynLambda!24657 (Int Regex!15624) Bool)

(assert (=> b!5632705 (= res!2385236 (dynLambda!24657 lambda!302690 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5632706 () Bool)

(assert (=> b!5632706 (= e!3471568 (forall!14778 (t!376465 (exprs!5508 (h!69496 zl!343))) lambda!302690))))

(assert (= (and d!1779120 (not res!2385235)) b!5632705))

(assert (= (and b!5632705 res!2385236) b!5632706))

(declare-fun b_lambda!212997 () Bool)

(assert (=> (not b_lambda!212997) (not b!5632705)))

(declare-fun m!6603644 () Bool)

(assert (=> b!5632705 m!6603644))

(declare-fun m!6603646 () Bool)

(assert (=> b!5632706 m!6603646))

(assert (=> d!1778858 d!1779120))

(assert (=> d!1778798 d!1779046))

(declare-fun bs!1303362 () Bool)

(declare-fun d!1779122 () Bool)

(assert (= bs!1303362 (and d!1779122 d!1778994)))

(declare-fun lambda!302745 () Int)

(assert (=> bs!1303362 (= lambda!302745 lambda!302735)))

(assert (=> d!1779122 (= (nullableZipper!1606 lt!2262574) (exists!2187 lt!2262574 lambda!302745))))

(declare-fun bs!1303363 () Bool)

(assert (= bs!1303363 d!1779122))

(declare-fun m!6603648 () Bool)

(assert (=> bs!1303363 m!6603648))

(assert (=> b!5631769 d!1779122))

(declare-fun d!1779124 () Bool)

(declare-fun c!989289 () Bool)

(assert (=> d!1779124 (= c!989289 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471569 () Bool)

(assert (=> d!1779124 (= (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471569)))

(declare-fun b!5632707 () Bool)

(assert (=> b!5632707 (= e!3471569 (nullableZipper!1606 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632708 () Bool)

(assert (=> b!5632708 (= e!3471569 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779124 c!989289) b!5632707))

(assert (= (and d!1779124 (not c!989289)) b!5632708))

(assert (=> d!1779124 m!6602882))

(assert (=> d!1779124 m!6603564))

(assert (=> b!5632707 m!6603004))

(declare-fun m!6603650 () Bool)

(assert (=> b!5632707 m!6603650))

(assert (=> b!5632708 m!6602882))

(assert (=> b!5632708 m!6603568))

(assert (=> b!5632708 m!6603004))

(assert (=> b!5632708 m!6603568))

(declare-fun m!6603652 () Bool)

(assert (=> b!5632708 m!6603652))

(assert (=> b!5632708 m!6602882))

(assert (=> b!5632708 m!6603572))

(assert (=> b!5632708 m!6603652))

(assert (=> b!5632708 m!6603572))

(declare-fun m!6603654 () Bool)

(assert (=> b!5632708 m!6603654))

(assert (=> b!5631904 d!1779124))

(declare-fun bs!1303364 () Bool)

(declare-fun d!1779126 () Bool)

(assert (= bs!1303364 (and d!1779126 d!1778838)))

(declare-fun lambda!302746 () Int)

(assert (=> bs!1303364 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302746 lambda!302687))))

(declare-fun bs!1303365 () Bool)

(assert (= bs!1303365 (and d!1779126 d!1779098)))

(assert (=> bs!1303365 (= lambda!302746 lambda!302742)))

(declare-fun bs!1303366 () Bool)

(assert (= bs!1303366 (and d!1779126 d!1779072)))

(assert (=> bs!1303366 (= lambda!302746 lambda!302740)))

(declare-fun bs!1303367 () Bool)

(assert (= bs!1303367 (and d!1779126 d!1778780)))

(assert (=> bs!1303367 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302746 lambda!302671))))

(declare-fun bs!1303368 () Bool)

(assert (= bs!1303368 (and d!1779126 d!1779110)))

(assert (=> bs!1303368 (= lambda!302746 lambda!302743)))

(declare-fun bs!1303369 () Bool)

(assert (= bs!1303369 (and d!1779126 b!5631478)))

(assert (=> bs!1303369 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302746 lambda!302653))))

(declare-fun bs!1303370 () Bool)

(assert (= bs!1303370 (and d!1779126 d!1779114)))

(assert (=> bs!1303370 (= lambda!302746 lambda!302744)))

(assert (=> d!1779126 true))

(assert (=> d!1779126 (= (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) (head!11992 (t!376467 s!2326))) (flatMap!1237 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) lambda!302746))))

(declare-fun bs!1303371 () Bool)

(assert (= bs!1303371 d!1779126))

(assert (=> bs!1303371 m!6602696))

(declare-fun m!6603656 () Bool)

(assert (=> bs!1303371 m!6603656))

(assert (=> b!5631904 d!1779126))

(assert (=> b!5631904 d!1779074))

(assert (=> b!5631904 d!1779076))

(declare-fun bs!1303372 () Bool)

(declare-fun d!1779128 () Bool)

(assert (= bs!1303372 (and d!1779128 d!1778820)))

(declare-fun lambda!302747 () Int)

(assert (=> bs!1303372 (= lambda!302747 lambda!302683)))

(declare-fun bs!1303373 () Bool)

(assert (= bs!1303373 (and d!1779128 d!1778822)))

(assert (=> bs!1303373 (= lambda!302747 lambda!302686)))

(declare-fun bs!1303374 () Bool)

(assert (= bs!1303374 (and d!1779128 d!1778858)))

(assert (=> bs!1303374 (= lambda!302747 lambda!302690)))

(declare-fun bs!1303375 () Bool)

(assert (= bs!1303375 (and d!1779128 d!1778790)))

(assert (=> bs!1303375 (= lambda!302747 lambda!302680)))

(declare-fun bs!1303376 () Bool)

(assert (= bs!1303376 (and d!1779128 d!1778860)))

(assert (=> bs!1303376 (= lambda!302747 lambda!302691)))

(declare-fun bs!1303377 () Bool)

(assert (= bs!1303377 (and d!1779128 d!1779082)))

(assert (=> bs!1303377 (= lambda!302747 lambda!302741)))

(declare-fun bs!1303378 () Bool)

(assert (= bs!1303378 (and d!1779128 d!1779032)))

(assert (=> bs!1303378 (= lambda!302747 lambda!302739)))

(declare-fun b!5632709 () Bool)

(declare-fun e!3471572 () Bool)

(declare-fun lt!2262797 () Regex!15624)

(assert (=> b!5632709 (= e!3471572 (= lt!2262797 (head!11993 (t!376465 (unfocusZipperList!1052 zl!343)))))))

(declare-fun b!5632710 () Bool)

(declare-fun e!3471575 () Bool)

(declare-fun e!3471574 () Bool)

(assert (=> b!5632710 (= e!3471575 e!3471574)))

(declare-fun c!989291 () Bool)

(assert (=> b!5632710 (= c!989291 (isEmpty!34888 (t!376465 (unfocusZipperList!1052 zl!343))))))

(declare-fun b!5632711 () Bool)

(assert (=> b!5632711 (= e!3471574 e!3471572)))

(declare-fun c!989292 () Bool)

(assert (=> b!5632711 (= c!989292 (isEmpty!34888 (tail!11088 (t!376465 (unfocusZipperList!1052 zl!343)))))))

(declare-fun b!5632712 () Bool)

(declare-fun e!3471571 () Bool)

(assert (=> b!5632712 (= e!3471571 (isEmpty!34888 (t!376465 (t!376465 (unfocusZipperList!1052 zl!343)))))))

(declare-fun b!5632714 () Bool)

(declare-fun e!3471573 () Regex!15624)

(declare-fun e!3471570 () Regex!15624)

(assert (=> b!5632714 (= e!3471573 e!3471570)))

(declare-fun c!989290 () Bool)

(assert (=> b!5632714 (= c!989290 (is-Cons!63047 (t!376465 (unfocusZipperList!1052 zl!343))))))

(declare-fun b!5632715 () Bool)

(assert (=> b!5632715 (= e!3471574 (isEmptyLang!1175 lt!2262797))))

(declare-fun b!5632716 () Bool)

(assert (=> b!5632716 (= e!3471570 EmptyLang!15624)))

(assert (=> d!1779128 e!3471575))

(declare-fun res!2385238 () Bool)

(assert (=> d!1779128 (=> (not res!2385238) (not e!3471575))))

(assert (=> d!1779128 (= res!2385238 (validRegex!7360 lt!2262797))))

(assert (=> d!1779128 (= lt!2262797 e!3471573)))

(declare-fun c!989293 () Bool)

(assert (=> d!1779128 (= c!989293 e!3471571)))

(declare-fun res!2385237 () Bool)

(assert (=> d!1779128 (=> (not res!2385237) (not e!3471571))))

(assert (=> d!1779128 (= res!2385237 (is-Cons!63047 (t!376465 (unfocusZipperList!1052 zl!343))))))

(assert (=> d!1779128 (forall!14778 (t!376465 (unfocusZipperList!1052 zl!343)) lambda!302747)))

(assert (=> d!1779128 (= (generalisedUnion!1487 (t!376465 (unfocusZipperList!1052 zl!343))) lt!2262797)))

(declare-fun b!5632713 () Bool)

(assert (=> b!5632713 (= e!3471573 (h!69495 (t!376465 (unfocusZipperList!1052 zl!343))))))

(declare-fun b!5632717 () Bool)

(assert (=> b!5632717 (= e!3471572 (isUnion!605 lt!2262797))))

(declare-fun b!5632718 () Bool)

(assert (=> b!5632718 (= e!3471570 (Union!15624 (h!69495 (t!376465 (unfocusZipperList!1052 zl!343))) (generalisedUnion!1487 (t!376465 (t!376465 (unfocusZipperList!1052 zl!343))))))))

(assert (= (and d!1779128 res!2385237) b!5632712))

(assert (= (and d!1779128 c!989293) b!5632713))

(assert (= (and d!1779128 (not c!989293)) b!5632714))

(assert (= (and b!5632714 c!989290) b!5632718))

(assert (= (and b!5632714 (not c!989290)) b!5632716))

(assert (= (and d!1779128 res!2385238) b!5632710))

(assert (= (and b!5632710 c!989291) b!5632715))

(assert (= (and b!5632710 (not c!989291)) b!5632711))

(assert (= (and b!5632711 c!989292) b!5632709))

(assert (= (and b!5632711 (not c!989292)) b!5632717))

(assert (=> b!5632710 m!6602954))

(declare-fun m!6603658 () Bool)

(assert (=> b!5632715 m!6603658))

(declare-fun m!6603660 () Bool)

(assert (=> b!5632712 m!6603660))

(declare-fun m!6603662 () Bool)

(assert (=> b!5632718 m!6603662))

(declare-fun m!6603664 () Bool)

(assert (=> b!5632717 m!6603664))

(declare-fun m!6603666 () Bool)

(assert (=> b!5632709 m!6603666))

(declare-fun m!6603668 () Bool)

(assert (=> b!5632711 m!6603668))

(assert (=> b!5632711 m!6603668))

(declare-fun m!6603670 () Bool)

(assert (=> b!5632711 m!6603670))

(declare-fun m!6603672 () Bool)

(assert (=> d!1779128 m!6603672))

(declare-fun m!6603674 () Bool)

(assert (=> d!1779128 m!6603674))

(assert (=> b!5631864 d!1779128))

(declare-fun bs!1303379 () Bool)

(declare-fun b!5632727 () Bool)

(assert (= bs!1303379 (and b!5632727 b!5631497)))

(declare-fun lambda!302748 () Int)

(assert (=> bs!1303379 (not (= lambda!302748 lambda!302652))))

(declare-fun bs!1303380 () Bool)

(assert (= bs!1303380 (and b!5632727 b!5631684)))

(assert (=> bs!1303380 (not (= lambda!302748 lambda!302677))))

(declare-fun bs!1303381 () Bool)

(assert (= bs!1303381 (and b!5632727 d!1779024)))

(assert (=> bs!1303381 (not (= lambda!302748 lambda!302738))))

(declare-fun bs!1303382 () Bool)

(assert (= bs!1303382 (and b!5632727 b!5631688)))

(assert (=> bs!1303382 (= (and (= (reg!15953 (regTwo!31761 r!7292)) (reg!15953 r!7292)) (= (regTwo!31761 r!7292) r!7292)) (= lambda!302748 lambda!302676))))

(declare-fun bs!1303383 () Bool)

(assert (= bs!1303383 (and b!5632727 d!1778872)))

(assert (=> bs!1303383 (not (= lambda!302748 lambda!302700))))

(assert (=> bs!1303383 (not (= lambda!302748 lambda!302699))))

(assert (=> bs!1303379 (not (= lambda!302748 lambda!302651))))

(declare-fun bs!1303384 () Bool)

(assert (= bs!1303384 (and b!5632727 d!1778870)))

(assert (=> bs!1303384 (not (= lambda!302748 lambda!302694))))

(assert (=> b!5632727 true))

(assert (=> b!5632727 true))

(declare-fun bs!1303385 () Bool)

(declare-fun b!5632723 () Bool)

(assert (= bs!1303385 (and b!5632723 b!5631497)))

(declare-fun lambda!302749 () Int)

(assert (=> bs!1303385 (= (and (= (regOne!31760 (regTwo!31761 r!7292)) (regOne!31760 r!7292)) (= (regTwo!31760 (regTwo!31761 r!7292)) (regTwo!31760 r!7292))) (= lambda!302749 lambda!302652))))

(declare-fun bs!1303386 () Bool)

(assert (= bs!1303386 (and b!5632723 b!5631684)))

(assert (=> bs!1303386 (= (and (= (regOne!31760 (regTwo!31761 r!7292)) (regOne!31760 r!7292)) (= (regTwo!31760 (regTwo!31761 r!7292)) (regTwo!31760 r!7292))) (= lambda!302749 lambda!302677))))

(declare-fun bs!1303387 () Bool)

(assert (= bs!1303387 (and b!5632723 d!1779024)))

(assert (=> bs!1303387 (not (= lambda!302749 lambda!302738))))

(declare-fun bs!1303388 () Bool)

(assert (= bs!1303388 (and b!5632723 b!5631688)))

(assert (=> bs!1303388 (not (= lambda!302749 lambda!302676))))

(declare-fun bs!1303389 () Bool)

(assert (= bs!1303389 (and b!5632723 d!1778872)))

(assert (=> bs!1303389 (= (and (= (regOne!31760 (regTwo!31761 r!7292)) (regOne!31760 r!7292)) (= (regTwo!31760 (regTwo!31761 r!7292)) (regTwo!31760 r!7292))) (= lambda!302749 lambda!302700))))

(assert (=> bs!1303389 (not (= lambda!302749 lambda!302699))))

(declare-fun bs!1303390 () Bool)

(assert (= bs!1303390 (and b!5632723 b!5632727)))

(assert (=> bs!1303390 (not (= lambda!302749 lambda!302748))))

(assert (=> bs!1303385 (not (= lambda!302749 lambda!302651))))

(declare-fun bs!1303391 () Bool)

(assert (= bs!1303391 (and b!5632723 d!1778870)))

(assert (=> bs!1303391 (not (= lambda!302749 lambda!302694))))

(assert (=> b!5632723 true))

(assert (=> b!5632723 true))

(declare-fun b!5632719 () Bool)

(declare-fun c!989295 () Bool)

(assert (=> b!5632719 (= c!989295 (is-Union!15624 (regTwo!31761 r!7292)))))

(declare-fun e!3471580 () Bool)

(declare-fun e!3471582 () Bool)

(assert (=> b!5632719 (= e!3471580 e!3471582)))

(declare-fun b!5632720 () Bool)

(declare-fun e!3471581 () Bool)

(declare-fun e!3471579 () Bool)

(assert (=> b!5632720 (= e!3471581 e!3471579)))

(declare-fun res!2385240 () Bool)

(assert (=> b!5632720 (= res!2385240 (not (is-EmptyLang!15624 (regTwo!31761 r!7292))))))

(assert (=> b!5632720 (=> (not res!2385240) (not e!3471579))))

(declare-fun d!1779130 () Bool)

(declare-fun c!989297 () Bool)

(assert (=> d!1779130 (= c!989297 (is-EmptyExpr!15624 (regTwo!31761 r!7292)))))

(assert (=> d!1779130 (= (matchRSpec!2727 (regTwo!31761 r!7292) s!2326) e!3471581)))

(declare-fun b!5632721 () Bool)

(declare-fun e!3471577 () Bool)

(assert (=> b!5632721 (= e!3471582 e!3471577)))

(declare-fun c!989296 () Bool)

(assert (=> b!5632721 (= c!989296 (is-Star!15624 (regTwo!31761 r!7292)))))

(declare-fun b!5632722 () Bool)

(assert (=> b!5632722 (= e!3471580 (= s!2326 (Cons!63049 (c!988948 (regTwo!31761 r!7292)) Nil!63049)))))

(declare-fun call!424710 () Bool)

(assert (=> b!5632723 (= e!3471577 call!424710)))

(declare-fun b!5632724 () Bool)

(declare-fun res!2385239 () Bool)

(declare-fun e!3471578 () Bool)

(assert (=> b!5632724 (=> res!2385239 e!3471578)))

(declare-fun call!424711 () Bool)

(assert (=> b!5632724 (= res!2385239 call!424711)))

(assert (=> b!5632724 (= e!3471577 e!3471578)))

(declare-fun b!5632725 () Bool)

(declare-fun c!989294 () Bool)

(assert (=> b!5632725 (= c!989294 (is-ElementMatch!15624 (regTwo!31761 r!7292)))))

(assert (=> b!5632725 (= e!3471579 e!3471580)))

(declare-fun bm!424705 () Bool)

(assert (=> bm!424705 (= call!424710 (Exists!2724 (ite c!989296 lambda!302748 lambda!302749)))))

(declare-fun b!5632726 () Bool)

(assert (=> b!5632726 (= e!3471581 call!424711)))

(assert (=> b!5632727 (= e!3471578 call!424710)))

(declare-fun b!5632728 () Bool)

(declare-fun e!3471576 () Bool)

(assert (=> b!5632728 (= e!3471582 e!3471576)))

(declare-fun res!2385241 () Bool)

(assert (=> b!5632728 (= res!2385241 (matchRSpec!2727 (regOne!31761 (regTwo!31761 r!7292)) s!2326))))

(assert (=> b!5632728 (=> res!2385241 e!3471576)))

(declare-fun b!5632729 () Bool)

(assert (=> b!5632729 (= e!3471576 (matchRSpec!2727 (regTwo!31761 (regTwo!31761 r!7292)) s!2326))))

(declare-fun bm!424706 () Bool)

(assert (=> bm!424706 (= call!424711 (isEmpty!34891 s!2326))))

(assert (= (and d!1779130 c!989297) b!5632726))

(assert (= (and d!1779130 (not c!989297)) b!5632720))

(assert (= (and b!5632720 res!2385240) b!5632725))

(assert (= (and b!5632725 c!989294) b!5632722))

(assert (= (and b!5632725 (not c!989294)) b!5632719))

(assert (= (and b!5632719 c!989295) b!5632728))

(assert (= (and b!5632719 (not c!989295)) b!5632721))

(assert (= (and b!5632728 (not res!2385241)) b!5632729))

(assert (= (and b!5632721 c!989296) b!5632724))

(assert (= (and b!5632721 (not c!989296)) b!5632723))

(assert (= (and b!5632724 (not res!2385239)) b!5632727))

(assert (= (or b!5632727 b!5632723) bm!424705))

(assert (= (or b!5632726 b!5632724) bm!424706))

(declare-fun m!6603676 () Bool)

(assert (=> bm!424705 m!6603676))

(declare-fun m!6603678 () Bool)

(assert (=> b!5632728 m!6603678))

(declare-fun m!6603680 () Bool)

(assert (=> b!5632729 m!6603680))

(assert (=> bm!424706 m!6602840))

(assert (=> b!5631690 d!1779130))

(declare-fun b!5632730 () Bool)

(declare-fun e!3471588 () Bool)

(declare-fun e!3471583 () Bool)

(assert (=> b!5632730 (= e!3471588 e!3471583)))

(declare-fun c!989299 () Bool)

(assert (=> b!5632730 (= c!989299 (is-Union!15624 lt!2262697))))

(declare-fun bm!424707 () Bool)

(declare-fun call!424713 () Bool)

(declare-fun call!424714 () Bool)

(assert (=> bm!424707 (= call!424713 call!424714)))

(declare-fun bm!424708 () Bool)

(declare-fun c!989298 () Bool)

(assert (=> bm!424708 (= call!424714 (validRegex!7360 (ite c!989298 (reg!15953 lt!2262697) (ite c!989299 (regOne!31761 lt!2262697) (regOne!31760 lt!2262697)))))))

(declare-fun d!1779132 () Bool)

(declare-fun res!2385244 () Bool)

(declare-fun e!3471584 () Bool)

(assert (=> d!1779132 (=> res!2385244 e!3471584)))

(assert (=> d!1779132 (= res!2385244 (is-ElementMatch!15624 lt!2262697))))

(assert (=> d!1779132 (= (validRegex!7360 lt!2262697) e!3471584)))

(declare-fun b!5632731 () Bool)

(declare-fun e!3471585 () Bool)

(declare-fun e!3471589 () Bool)

(assert (=> b!5632731 (= e!3471585 e!3471589)))

(declare-fun res!2385245 () Bool)

(assert (=> b!5632731 (=> (not res!2385245) (not e!3471589))))

(assert (=> b!5632731 (= res!2385245 call!424713)))

(declare-fun b!5632732 () Bool)

(declare-fun e!3471586 () Bool)

(assert (=> b!5632732 (= e!3471588 e!3471586)))

(declare-fun res!2385246 () Bool)

(assert (=> b!5632732 (= res!2385246 (not (nullable!5656 (reg!15953 lt!2262697))))))

(assert (=> b!5632732 (=> (not res!2385246) (not e!3471586))))

(declare-fun b!5632733 () Bool)

(declare-fun res!2385243 () Bool)

(declare-fun e!3471587 () Bool)

(assert (=> b!5632733 (=> (not res!2385243) (not e!3471587))))

(assert (=> b!5632733 (= res!2385243 call!424713)))

(assert (=> b!5632733 (= e!3471583 e!3471587)))

(declare-fun b!5632734 () Bool)

(declare-fun call!424712 () Bool)

(assert (=> b!5632734 (= e!3471587 call!424712)))

(declare-fun bm!424709 () Bool)

(assert (=> bm!424709 (= call!424712 (validRegex!7360 (ite c!989299 (regTwo!31761 lt!2262697) (regTwo!31760 lt!2262697))))))

(declare-fun b!5632735 () Bool)

(assert (=> b!5632735 (= e!3471589 call!424712)))

(declare-fun b!5632736 () Bool)

(assert (=> b!5632736 (= e!3471586 call!424714)))

(declare-fun b!5632737 () Bool)

(declare-fun res!2385242 () Bool)

(assert (=> b!5632737 (=> res!2385242 e!3471585)))

(assert (=> b!5632737 (= res!2385242 (not (is-Concat!24469 lt!2262697)))))

(assert (=> b!5632737 (= e!3471583 e!3471585)))

(declare-fun b!5632738 () Bool)

(assert (=> b!5632738 (= e!3471584 e!3471588)))

(assert (=> b!5632738 (= c!989298 (is-Star!15624 lt!2262697))))

(assert (= (and d!1779132 (not res!2385244)) b!5632738))

(assert (= (and b!5632738 c!989298) b!5632732))

(assert (= (and b!5632738 (not c!989298)) b!5632730))

(assert (= (and b!5632732 res!2385246) b!5632736))

(assert (= (and b!5632730 c!989299) b!5632733))

(assert (= (and b!5632730 (not c!989299)) b!5632737))

(assert (= (and b!5632733 res!2385243) b!5632734))

(assert (= (and b!5632737 (not res!2385242)) b!5632731))

(assert (= (and b!5632731 res!2385245) b!5632735))

(assert (= (or b!5632734 b!5632735) bm!424709))

(assert (= (or b!5632733 b!5632731) bm!424707))

(assert (= (or b!5632736 bm!424707) bm!424708))

(declare-fun m!6603682 () Bool)

(assert (=> bm!424708 m!6603682))

(declare-fun m!6603684 () Bool)

(assert (=> b!5632732 m!6603684))

(declare-fun m!6603686 () Bool)

(assert (=> bm!424709 m!6603686))

(assert (=> d!1778790 d!1779132))

(declare-fun d!1779134 () Bool)

(declare-fun res!2385247 () Bool)

(declare-fun e!3471590 () Bool)

(assert (=> d!1779134 (=> res!2385247 e!3471590)))

(assert (=> d!1779134 (= res!2385247 (is-Nil!63047 (exprs!5508 (h!69496 zl!343))))))

(assert (=> d!1779134 (= (forall!14778 (exprs!5508 (h!69496 zl!343)) lambda!302680) e!3471590)))

(declare-fun b!5632739 () Bool)

(declare-fun e!3471591 () Bool)

(assert (=> b!5632739 (= e!3471590 e!3471591)))

(declare-fun res!2385248 () Bool)

(assert (=> b!5632739 (=> (not res!2385248) (not e!3471591))))

(assert (=> b!5632739 (= res!2385248 (dynLambda!24657 lambda!302680 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5632740 () Bool)

(assert (=> b!5632740 (= e!3471591 (forall!14778 (t!376465 (exprs!5508 (h!69496 zl!343))) lambda!302680))))

(assert (= (and d!1779134 (not res!2385247)) b!5632739))

(assert (= (and b!5632739 res!2385248) b!5632740))

(declare-fun b_lambda!212999 () Bool)

(assert (=> (not b_lambda!212999) (not b!5632739)))

(declare-fun m!6603688 () Bool)

(assert (=> b!5632739 m!6603688))

(declare-fun m!6603690 () Bool)

(assert (=> b!5632740 m!6603690))

(assert (=> d!1778790 d!1779134))

(declare-fun d!1779136 () Bool)

(assert (=> d!1779136 (= (isEmpty!34888 (unfocusZipperList!1052 zl!343)) (is-Nil!63047 (unfocusZipperList!1052 zl!343)))))

(assert (=> b!5631856 d!1779136))

(declare-fun d!1779138 () Bool)

(declare-fun e!3471592 () Bool)

(assert (=> d!1779138 e!3471592))

(declare-fun res!2385249 () Bool)

(assert (=> d!1779138 (=> (not res!2385249) (not e!3471592))))

(declare-fun lt!2262798 () List!63173)

(assert (=> d!1779138 (= res!2385249 (= (content!11402 lt!2262798) (set.union (content!11402 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049))) (content!11402 (t!376467 s!2326)))))))

(declare-fun e!3471593 () List!63173)

(assert (=> d!1779138 (= lt!2262798 e!3471593)))

(declare-fun c!989300 () Bool)

(assert (=> d!1779138 (= c!989300 (is-Nil!63049 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049))))))

(assert (=> d!1779138 (= (++!13840 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (t!376467 s!2326)) lt!2262798)))

(declare-fun b!5632741 () Bool)

(assert (=> b!5632741 (= e!3471593 (t!376467 s!2326))))

(declare-fun b!5632742 () Bool)

(assert (=> b!5632742 (= e!3471593 (Cons!63049 (h!69497 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049))) (++!13840 (t!376467 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049))) (t!376467 s!2326))))))

(declare-fun b!5632743 () Bool)

(declare-fun res!2385250 () Bool)

(assert (=> b!5632743 (=> (not res!2385250) (not e!3471592))))

(assert (=> b!5632743 (= res!2385250 (= (size!39980 lt!2262798) (+ (size!39980 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049))) (size!39980 (t!376467 s!2326)))))))

(declare-fun b!5632744 () Bool)

(assert (=> b!5632744 (= e!3471592 (or (not (= (t!376467 s!2326) Nil!63049)) (= lt!2262798 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)))))))

(assert (= (and d!1779138 c!989300) b!5632741))

(assert (= (and d!1779138 (not c!989300)) b!5632742))

(assert (= (and d!1779138 res!2385249) b!5632743))

(assert (= (and b!5632743 res!2385250) b!5632744))

(declare-fun m!6603692 () Bool)

(assert (=> d!1779138 m!6603692))

(assert (=> d!1779138 m!6603072))

(declare-fun m!6603694 () Bool)

(assert (=> d!1779138 m!6603694))

(declare-fun m!6603696 () Bool)

(assert (=> d!1779138 m!6603696))

(declare-fun m!6603698 () Bool)

(assert (=> b!5632742 m!6603698))

(declare-fun m!6603700 () Bool)

(assert (=> b!5632743 m!6603700))

(assert (=> b!5632743 m!6603072))

(declare-fun m!6603702 () Bool)

(assert (=> b!5632743 m!6603702))

(declare-fun m!6603704 () Bool)

(assert (=> b!5632743 m!6603704))

(assert (=> b!5631959 d!1779138))

(declare-fun d!1779140 () Bool)

(declare-fun e!3471594 () Bool)

(assert (=> d!1779140 e!3471594))

(declare-fun res!2385251 () Bool)

(assert (=> d!1779140 (=> (not res!2385251) (not e!3471594))))

(declare-fun lt!2262799 () List!63173)

(assert (=> d!1779140 (= res!2385251 (= (content!11402 lt!2262799) (set.union (content!11402 Nil!63049) (content!11402 (Cons!63049 (h!69497 s!2326) Nil!63049)))))))

(declare-fun e!3471595 () List!63173)

(assert (=> d!1779140 (= lt!2262799 e!3471595)))

(declare-fun c!989301 () Bool)

(assert (=> d!1779140 (= c!989301 (is-Nil!63049 Nil!63049))))

(assert (=> d!1779140 (= (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) lt!2262799)))

(declare-fun b!5632745 () Bool)

(assert (=> b!5632745 (= e!3471595 (Cons!63049 (h!69497 s!2326) Nil!63049))))

(declare-fun b!5632746 () Bool)

(assert (=> b!5632746 (= e!3471595 (Cons!63049 (h!69497 Nil!63049) (++!13840 (t!376467 Nil!63049) (Cons!63049 (h!69497 s!2326) Nil!63049))))))

(declare-fun b!5632747 () Bool)

(declare-fun res!2385252 () Bool)

(assert (=> b!5632747 (=> (not res!2385252) (not e!3471594))))

(assert (=> b!5632747 (= res!2385252 (= (size!39980 lt!2262799) (+ (size!39980 Nil!63049) (size!39980 (Cons!63049 (h!69497 s!2326) Nil!63049)))))))

(declare-fun b!5632748 () Bool)

(assert (=> b!5632748 (= e!3471594 (or (not (= (Cons!63049 (h!69497 s!2326) Nil!63049) Nil!63049)) (= lt!2262799 Nil!63049)))))

(assert (= (and d!1779140 c!989301) b!5632745))

(assert (= (and d!1779140 (not c!989301)) b!5632746))

(assert (= (and d!1779140 res!2385251) b!5632747))

(assert (= (and b!5632747 res!2385252) b!5632748))

(declare-fun m!6603706 () Bool)

(assert (=> d!1779140 m!6603706))

(declare-fun m!6603708 () Bool)

(assert (=> d!1779140 m!6603708))

(declare-fun m!6603710 () Bool)

(assert (=> d!1779140 m!6603710))

(declare-fun m!6603712 () Bool)

(assert (=> b!5632746 m!6603712))

(declare-fun m!6603714 () Bool)

(assert (=> b!5632747 m!6603714))

(declare-fun m!6603716 () Bool)

(assert (=> b!5632747 m!6603716))

(declare-fun m!6603718 () Bool)

(assert (=> b!5632747 m!6603718))

(assert (=> b!5631959 d!1779140))

(declare-fun d!1779142 () Bool)

(assert (=> d!1779142 (= (++!13840 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (t!376467 s!2326)) s!2326)))

(declare-fun lt!2262802 () Unit!156028)

(declare-fun choose!42704 (List!63173 C!31518 List!63173 List!63173) Unit!156028)

(assert (=> d!1779142 (= lt!2262802 (choose!42704 Nil!63049 (h!69497 s!2326) (t!376467 s!2326) s!2326))))

(assert (=> d!1779142 (= (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) (t!376467 s!2326))) s!2326)))

(assert (=> d!1779142 (= (lemmaMoveElementToOtherListKeepsConcatEq!2009 Nil!63049 (h!69497 s!2326) (t!376467 s!2326) s!2326) lt!2262802)))

(declare-fun bs!1303392 () Bool)

(assert (= bs!1303392 d!1779142))

(assert (=> bs!1303392 m!6603072))

(assert (=> bs!1303392 m!6603072))

(assert (=> bs!1303392 m!6603074))

(declare-fun m!6603720 () Bool)

(assert (=> bs!1303392 m!6603720))

(declare-fun m!6603722 () Bool)

(assert (=> bs!1303392 m!6603722))

(assert (=> b!5631959 d!1779142))

(declare-fun b!5632749 () Bool)

(declare-fun e!3471597 () Bool)

(declare-fun lt!2262803 () Option!15633)

(assert (=> b!5632749 (= e!3471597 (= (++!13840 (_1!36024 (get!21720 lt!2262803)) (_2!36024 (get!21720 lt!2262803))) s!2326))))

(declare-fun b!5632750 () Bool)

(declare-fun res!2385255 () Bool)

(assert (=> b!5632750 (=> (not res!2385255) (not e!3471597))))

(assert (=> b!5632750 (= res!2385255 (matchR!7809 (regTwo!31760 r!7292) (_2!36024 (get!21720 lt!2262803))))))

(declare-fun b!5632751 () Bool)

(declare-fun e!3471598 () Bool)

(assert (=> b!5632751 (= e!3471598 (matchR!7809 (regTwo!31760 r!7292) (t!376467 s!2326)))))

(declare-fun b!5632752 () Bool)

(declare-fun res!2385257 () Bool)

(assert (=> b!5632752 (=> (not res!2385257) (not e!3471597))))

(assert (=> b!5632752 (= res!2385257 (matchR!7809 (regOne!31760 r!7292) (_1!36024 (get!21720 lt!2262803))))))

(declare-fun b!5632753 () Bool)

(declare-fun e!3471596 () Bool)

(assert (=> b!5632753 (= e!3471596 (not (isDefined!12336 lt!2262803)))))

(declare-fun b!5632754 () Bool)

(declare-fun e!3471600 () Option!15633)

(assert (=> b!5632754 (= e!3471600 (Some!15632 (tuple2!65443 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (t!376467 s!2326))))))

(declare-fun b!5632755 () Bool)

(declare-fun e!3471599 () Option!15633)

(assert (=> b!5632755 (= e!3471599 None!15632)))

(declare-fun b!5632756 () Bool)

(assert (=> b!5632756 (= e!3471600 e!3471599)))

(declare-fun c!989302 () Bool)

(assert (=> b!5632756 (= c!989302 (is-Nil!63049 (t!376467 s!2326)))))

(declare-fun b!5632757 () Bool)

(declare-fun lt!2262804 () Unit!156028)

(declare-fun lt!2262805 () Unit!156028)

(assert (=> b!5632757 (= lt!2262804 lt!2262805)))

(assert (=> b!5632757 (= (++!13840 (++!13840 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (Cons!63049 (h!69497 (t!376467 s!2326)) Nil!63049)) (t!376467 (t!376467 s!2326))) s!2326)))

(assert (=> b!5632757 (= lt!2262805 (lemmaMoveElementToOtherListKeepsConcatEq!2009 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (h!69497 (t!376467 s!2326)) (t!376467 (t!376467 s!2326)) s!2326))))

(assert (=> b!5632757 (= e!3471599 (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) (++!13840 (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (Cons!63049 (h!69497 (t!376467 s!2326)) Nil!63049)) (t!376467 (t!376467 s!2326)) s!2326))))

(declare-fun d!1779144 () Bool)

(assert (=> d!1779144 e!3471596))

(declare-fun res!2385256 () Bool)

(assert (=> d!1779144 (=> res!2385256 e!3471596)))

(assert (=> d!1779144 (= res!2385256 e!3471597)))

(declare-fun res!2385254 () Bool)

(assert (=> d!1779144 (=> (not res!2385254) (not e!3471597))))

(assert (=> d!1779144 (= res!2385254 (isDefined!12336 lt!2262803))))

(assert (=> d!1779144 (= lt!2262803 e!3471600)))

(declare-fun c!989303 () Bool)

(assert (=> d!1779144 (= c!989303 e!3471598)))

(declare-fun res!2385253 () Bool)

(assert (=> d!1779144 (=> (not res!2385253) (not e!3471598))))

(assert (=> d!1779144 (= res!2385253 (matchR!7809 (regOne!31760 r!7292) (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049))))))

(assert (=> d!1779144 (validRegex!7360 (regOne!31760 r!7292))))

(assert (=> d!1779144 (= (findConcatSeparation!2047 (regOne!31760 r!7292) (regTwo!31760 r!7292) (++!13840 Nil!63049 (Cons!63049 (h!69497 s!2326) Nil!63049)) (t!376467 s!2326) s!2326) lt!2262803)))

(assert (= (and d!1779144 res!2385253) b!5632751))

(assert (= (and d!1779144 c!989303) b!5632754))

(assert (= (and d!1779144 (not c!989303)) b!5632756))

(assert (= (and b!5632756 c!989302) b!5632755))

(assert (= (and b!5632756 (not c!989302)) b!5632757))

(assert (= (and d!1779144 res!2385254) b!5632752))

(assert (= (and b!5632752 res!2385257) b!5632750))

(assert (= (and b!5632750 res!2385255) b!5632749))

(assert (= (and d!1779144 (not res!2385256)) b!5632753))

(declare-fun m!6603724 () Bool)

(assert (=> b!5632749 m!6603724))

(declare-fun m!6603726 () Bool)

(assert (=> b!5632749 m!6603726))

(declare-fun m!6603728 () Bool)

(assert (=> b!5632751 m!6603728))

(declare-fun m!6603730 () Bool)

(assert (=> d!1779144 m!6603730))

(assert (=> d!1779144 m!6603072))

(declare-fun m!6603732 () Bool)

(assert (=> d!1779144 m!6603732))

(assert (=> d!1779144 m!6603066))

(assert (=> b!5632752 m!6603724))

(declare-fun m!6603734 () Bool)

(assert (=> b!5632752 m!6603734))

(assert (=> b!5632750 m!6603724))

(declare-fun m!6603736 () Bool)

(assert (=> b!5632750 m!6603736))

(assert (=> b!5632757 m!6603072))

(declare-fun m!6603738 () Bool)

(assert (=> b!5632757 m!6603738))

(assert (=> b!5632757 m!6603738))

(declare-fun m!6603740 () Bool)

(assert (=> b!5632757 m!6603740))

(assert (=> b!5632757 m!6603072))

(declare-fun m!6603742 () Bool)

(assert (=> b!5632757 m!6603742))

(assert (=> b!5632757 m!6603738))

(declare-fun m!6603744 () Bool)

(assert (=> b!5632757 m!6603744))

(assert (=> b!5632753 m!6603730))

(assert (=> b!5631959 d!1779144))

(assert (=> d!1778836 d!1779046))

(declare-fun d!1779146 () Bool)

(declare-fun res!2385262 () Bool)

(declare-fun e!3471605 () Bool)

(assert (=> d!1779146 (=> res!2385262 e!3471605)))

(assert (=> d!1779146 (= res!2385262 (is-Nil!63048 lt!2262688))))

(assert (=> d!1779146 (= (noDuplicate!1587 lt!2262688) e!3471605)))

(declare-fun b!5632762 () Bool)

(declare-fun e!3471606 () Bool)

(assert (=> b!5632762 (= e!3471605 e!3471606)))

(declare-fun res!2385263 () Bool)

(assert (=> b!5632762 (=> (not res!2385263) (not e!3471606))))

(declare-fun contains!19827 (List!63172 Context!10016) Bool)

(assert (=> b!5632762 (= res!2385263 (not (contains!19827 (t!376466 lt!2262688) (h!69496 lt!2262688))))))

(declare-fun b!5632763 () Bool)

(assert (=> b!5632763 (= e!3471606 (noDuplicate!1587 (t!376466 lt!2262688)))))

(assert (= (and d!1779146 (not res!2385262)) b!5632762))

(assert (= (and b!5632762 res!2385263) b!5632763))

(declare-fun m!6603746 () Bool)

(assert (=> b!5632762 m!6603746))

(declare-fun m!6603748 () Bool)

(assert (=> b!5632763 m!6603748))

(assert (=> d!1778782 d!1779146))

(declare-fun d!1779148 () Bool)

(declare-fun e!3471615 () Bool)

(assert (=> d!1779148 e!3471615))

(declare-fun res!2385268 () Bool)

(assert (=> d!1779148 (=> (not res!2385268) (not e!3471615))))

(declare-fun res!2385269 () List!63172)

(assert (=> d!1779148 (= res!2385268 (noDuplicate!1587 res!2385269))))

(declare-fun e!3471614 () Bool)

(assert (=> d!1779148 e!3471614))

(assert (=> d!1779148 (= (choose!42690 z!1189) res!2385269)))

(declare-fun b!5632771 () Bool)

(declare-fun e!3471613 () Bool)

(declare-fun tp!1558932 () Bool)

(assert (=> b!5632771 (= e!3471613 tp!1558932)))

(declare-fun tp!1558933 () Bool)

(declare-fun b!5632770 () Bool)

(assert (=> b!5632770 (= e!3471614 (and (inv!82308 (h!69496 res!2385269)) e!3471613 tp!1558933))))

(declare-fun b!5632772 () Bool)

(assert (=> b!5632772 (= e!3471615 (= (content!11400 res!2385269) z!1189))))

(assert (= b!5632770 b!5632771))

(assert (= (and d!1779148 (is-Cons!63048 res!2385269)) b!5632770))

(assert (= (and d!1779148 res!2385268) b!5632772))

(declare-fun m!6603750 () Bool)

(assert (=> d!1779148 m!6603750))

(declare-fun m!6603752 () Bool)

(assert (=> b!5632770 m!6603752))

(declare-fun m!6603754 () Bool)

(assert (=> b!5632772 m!6603754))

(assert (=> d!1778782 d!1779148))

(declare-fun d!1779150 () Bool)

(assert (=> d!1779150 (= ($colon$colon!1674 (exprs!5508 lt!2262567) (ite (or c!989064 c!989061) (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (h!69495 (exprs!5508 (h!69496 zl!343))))) (Cons!63047 (ite (or c!989064 c!989061) (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (h!69495 (exprs!5508 (h!69496 zl!343)))) (exprs!5508 lt!2262567)))))

(assert (=> bm!424566 d!1779150))

(declare-fun d!1779152 () Bool)

(declare-fun c!989304 () Bool)

(assert (=> d!1779152 (= c!989304 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471616 () Bool)

(assert (=> d!1779152 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262571 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471616)))

(declare-fun b!5632773 () Bool)

(assert (=> b!5632773 (= e!3471616 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262571 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632774 () Bool)

(assert (=> b!5632774 (= e!3471616 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262571 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779152 c!989304) b!5632773))

(assert (= (and d!1779152 (not c!989304)) b!5632774))

(assert (=> d!1779152 m!6602882))

(assert (=> d!1779152 m!6603564))

(assert (=> b!5632773 m!6602894))

(declare-fun m!6603756 () Bool)

(assert (=> b!5632773 m!6603756))

(assert (=> b!5632774 m!6602882))

(assert (=> b!5632774 m!6603568))

(assert (=> b!5632774 m!6602894))

(assert (=> b!5632774 m!6603568))

(declare-fun m!6603758 () Bool)

(assert (=> b!5632774 m!6603758))

(assert (=> b!5632774 m!6602882))

(assert (=> b!5632774 m!6603572))

(assert (=> b!5632774 m!6603758))

(assert (=> b!5632774 m!6603572))

(declare-fun m!6603760 () Bool)

(assert (=> b!5632774 m!6603760))

(assert (=> b!5631772 d!1779152))

(declare-fun bs!1303393 () Bool)

(declare-fun d!1779154 () Bool)

(assert (= bs!1303393 (and d!1779154 d!1778838)))

(declare-fun lambda!302750 () Int)

(assert (=> bs!1303393 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302750 lambda!302687))))

(declare-fun bs!1303394 () Bool)

(assert (= bs!1303394 (and d!1779154 d!1779126)))

(assert (=> bs!1303394 (= lambda!302750 lambda!302746)))

(declare-fun bs!1303395 () Bool)

(assert (= bs!1303395 (and d!1779154 d!1779098)))

(assert (=> bs!1303395 (= lambda!302750 lambda!302742)))

(declare-fun bs!1303396 () Bool)

(assert (= bs!1303396 (and d!1779154 d!1779072)))

(assert (=> bs!1303396 (= lambda!302750 lambda!302740)))

(declare-fun bs!1303397 () Bool)

(assert (= bs!1303397 (and d!1779154 d!1778780)))

(assert (=> bs!1303397 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302750 lambda!302671))))

(declare-fun bs!1303398 () Bool)

(assert (= bs!1303398 (and d!1779154 d!1779110)))

(assert (=> bs!1303398 (= lambda!302750 lambda!302743)))

(declare-fun bs!1303399 () Bool)

(assert (= bs!1303399 (and d!1779154 b!5631478)))

(assert (=> bs!1303399 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302750 lambda!302653))))

(declare-fun bs!1303400 () Bool)

(assert (= bs!1303400 (and d!1779154 d!1779114)))

(assert (=> bs!1303400 (= lambda!302750 lambda!302744)))

(assert (=> d!1779154 true))

(assert (=> d!1779154 (= (derivationStepZipper!1711 lt!2262571 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262571 lambda!302750))))

(declare-fun bs!1303401 () Bool)

(assert (= bs!1303401 d!1779154))

(declare-fun m!6603762 () Bool)

(assert (=> bs!1303401 m!6603762))

(assert (=> b!5631772 d!1779154))

(assert (=> b!5631772 d!1779074))

(assert (=> b!5631772 d!1779076))

(assert (=> d!1778786 d!1779044))

(assert (=> d!1778786 d!1778824))

(declare-fun d!1779156 () Bool)

(assert (=> d!1779156 (= ($colon$colon!1674 (exprs!5508 lt!2262573) (ite (or c!989033 c!989030) (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 r!7292)))) (Cons!63047 (ite (or c!989033 c!989030) (regTwo!31760 (regOne!31760 (regOne!31760 r!7292))) (regOne!31760 (regOne!31760 r!7292))) (exprs!5508 lt!2262573)))))

(assert (=> bm!424551 d!1779156))

(declare-fun d!1779158 () Bool)

(assert (=> d!1779158 (= (isEmpty!34888 (exprs!5508 (h!69496 zl!343))) (is-Nil!63047 (exprs!5508 (h!69496 zl!343))))))

(assert (=> b!5631761 d!1779158))

(declare-fun d!1779160 () Bool)

(declare-fun c!989305 () Bool)

(assert (=> d!1779160 (= c!989305 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471617 () Bool)

(assert (=> d!1779160 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262581 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471617)))

(declare-fun b!5632775 () Bool)

(assert (=> b!5632775 (= e!3471617 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262581 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632776 () Bool)

(assert (=> b!5632776 (= e!3471617 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262581 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779160 c!989305) b!5632775))

(assert (= (and d!1779160 (not c!989305)) b!5632776))

(assert (=> d!1779160 m!6602882))

(assert (=> d!1779160 m!6603564))

(assert (=> b!5632775 m!6602988))

(declare-fun m!6603764 () Bool)

(assert (=> b!5632775 m!6603764))

(assert (=> b!5632776 m!6602882))

(assert (=> b!5632776 m!6603568))

(assert (=> b!5632776 m!6602988))

(assert (=> b!5632776 m!6603568))

(declare-fun m!6603766 () Bool)

(assert (=> b!5632776 m!6603766))

(assert (=> b!5632776 m!6602882))

(assert (=> b!5632776 m!6603572))

(assert (=> b!5632776 m!6603766))

(assert (=> b!5632776 m!6603572))

(declare-fun m!6603768 () Bool)

(assert (=> b!5632776 m!6603768))

(assert (=> b!5631900 d!1779160))

(declare-fun bs!1303402 () Bool)

(declare-fun d!1779162 () Bool)

(assert (= bs!1303402 (and d!1779162 d!1778838)))

(declare-fun lambda!302751 () Int)

(assert (=> bs!1303402 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302751 lambda!302687))))

(declare-fun bs!1303403 () Bool)

(assert (= bs!1303403 (and d!1779162 d!1779126)))

(assert (=> bs!1303403 (= lambda!302751 lambda!302746)))

(declare-fun bs!1303404 () Bool)

(assert (= bs!1303404 (and d!1779162 d!1779098)))

(assert (=> bs!1303404 (= lambda!302751 lambda!302742)))

(declare-fun bs!1303405 () Bool)

(assert (= bs!1303405 (and d!1779162 d!1779072)))

(assert (=> bs!1303405 (= lambda!302751 lambda!302740)))

(declare-fun bs!1303406 () Bool)

(assert (= bs!1303406 (and d!1779162 d!1778780)))

(assert (=> bs!1303406 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302751 lambda!302671))))

(declare-fun bs!1303407 () Bool)

(assert (= bs!1303407 (and d!1779162 d!1779154)))

(assert (=> bs!1303407 (= lambda!302751 lambda!302750)))

(declare-fun bs!1303408 () Bool)

(assert (= bs!1303408 (and d!1779162 d!1779110)))

(assert (=> bs!1303408 (= lambda!302751 lambda!302743)))

(declare-fun bs!1303409 () Bool)

(assert (= bs!1303409 (and d!1779162 b!5631478)))

(assert (=> bs!1303409 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302751 lambda!302653))))

(declare-fun bs!1303410 () Bool)

(assert (= bs!1303410 (and d!1779162 d!1779114)))

(assert (=> bs!1303410 (= lambda!302751 lambda!302744)))

(assert (=> d!1779162 true))

(assert (=> d!1779162 (= (derivationStepZipper!1711 lt!2262581 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262581 lambda!302751))))

(declare-fun bs!1303411 () Bool)

(assert (= bs!1303411 d!1779162))

(declare-fun m!6603770 () Bool)

(assert (=> bs!1303411 m!6603770))

(assert (=> b!5631900 d!1779162))

(assert (=> b!5631900 d!1779074))

(assert (=> b!5631900 d!1779076))

(declare-fun b!5632777 () Bool)

(declare-fun e!3471623 () Bool)

(declare-fun e!3471618 () Bool)

(assert (=> b!5632777 (= e!3471623 e!3471618)))

(declare-fun c!989307 () Bool)

(assert (=> b!5632777 (= c!989307 (is-Union!15624 lt!2262711))))

(declare-fun bm!424710 () Bool)

(declare-fun call!424716 () Bool)

(declare-fun call!424717 () Bool)

(assert (=> bm!424710 (= call!424716 call!424717)))

(declare-fun bm!424711 () Bool)

(declare-fun c!989306 () Bool)

(assert (=> bm!424711 (= call!424717 (validRegex!7360 (ite c!989306 (reg!15953 lt!2262711) (ite c!989307 (regOne!31761 lt!2262711) (regOne!31760 lt!2262711)))))))

(declare-fun d!1779164 () Bool)

(declare-fun res!2385272 () Bool)

(declare-fun e!3471619 () Bool)

(assert (=> d!1779164 (=> res!2385272 e!3471619)))

(assert (=> d!1779164 (= res!2385272 (is-ElementMatch!15624 lt!2262711))))

(assert (=> d!1779164 (= (validRegex!7360 lt!2262711) e!3471619)))

(declare-fun b!5632778 () Bool)

(declare-fun e!3471620 () Bool)

(declare-fun e!3471624 () Bool)

(assert (=> b!5632778 (= e!3471620 e!3471624)))

(declare-fun res!2385273 () Bool)

(assert (=> b!5632778 (=> (not res!2385273) (not e!3471624))))

(assert (=> b!5632778 (= res!2385273 call!424716)))

(declare-fun b!5632779 () Bool)

(declare-fun e!3471621 () Bool)

(assert (=> b!5632779 (= e!3471623 e!3471621)))

(declare-fun res!2385274 () Bool)

(assert (=> b!5632779 (= res!2385274 (not (nullable!5656 (reg!15953 lt!2262711))))))

(assert (=> b!5632779 (=> (not res!2385274) (not e!3471621))))

(declare-fun b!5632780 () Bool)

(declare-fun res!2385271 () Bool)

(declare-fun e!3471622 () Bool)

(assert (=> b!5632780 (=> (not res!2385271) (not e!3471622))))

(assert (=> b!5632780 (= res!2385271 call!424716)))

(assert (=> b!5632780 (= e!3471618 e!3471622)))

(declare-fun b!5632781 () Bool)

(declare-fun call!424715 () Bool)

(assert (=> b!5632781 (= e!3471622 call!424715)))

(declare-fun bm!424712 () Bool)

(assert (=> bm!424712 (= call!424715 (validRegex!7360 (ite c!989307 (regTwo!31761 lt!2262711) (regTwo!31760 lt!2262711))))))

(declare-fun b!5632782 () Bool)

(assert (=> b!5632782 (= e!3471624 call!424715)))

(declare-fun b!5632783 () Bool)

(assert (=> b!5632783 (= e!3471621 call!424717)))

(declare-fun b!5632784 () Bool)

(declare-fun res!2385270 () Bool)

(assert (=> b!5632784 (=> res!2385270 e!3471620)))

(assert (=> b!5632784 (= res!2385270 (not (is-Concat!24469 lt!2262711)))))

(assert (=> b!5632784 (= e!3471618 e!3471620)))

(declare-fun b!5632785 () Bool)

(assert (=> b!5632785 (= e!3471619 e!3471623)))

(assert (=> b!5632785 (= c!989306 (is-Star!15624 lt!2262711))))

(assert (= (and d!1779164 (not res!2385272)) b!5632785))

(assert (= (and b!5632785 c!989306) b!5632779))

(assert (= (and b!5632785 (not c!989306)) b!5632777))

(assert (= (and b!5632779 res!2385274) b!5632783))

(assert (= (and b!5632777 c!989307) b!5632780))

(assert (= (and b!5632777 (not c!989307)) b!5632784))

(assert (= (and b!5632780 res!2385271) b!5632781))

(assert (= (and b!5632784 (not res!2385270)) b!5632778))

(assert (= (and b!5632778 res!2385273) b!5632782))

(assert (= (or b!5632781 b!5632782) bm!424712))

(assert (= (or b!5632780 b!5632778) bm!424710))

(assert (= (or b!5632783 bm!424710) bm!424711))

(declare-fun m!6603772 () Bool)

(assert (=> bm!424711 m!6603772))

(declare-fun m!6603774 () Bool)

(assert (=> b!5632779 m!6603774))

(declare-fun m!6603776 () Bool)

(assert (=> bm!424712 m!6603776))

(assert (=> d!1778820 d!1779164))

(declare-fun d!1779166 () Bool)

(declare-fun res!2385275 () Bool)

(declare-fun e!3471625 () Bool)

(assert (=> d!1779166 (=> res!2385275 e!3471625)))

(assert (=> d!1779166 (= res!2385275 (is-Nil!63047 (unfocusZipperList!1052 zl!343)))))

(assert (=> d!1779166 (= (forall!14778 (unfocusZipperList!1052 zl!343) lambda!302683) e!3471625)))

(declare-fun b!5632786 () Bool)

(declare-fun e!3471626 () Bool)

(assert (=> b!5632786 (= e!3471625 e!3471626)))

(declare-fun res!2385276 () Bool)

(assert (=> b!5632786 (=> (not res!2385276) (not e!3471626))))

(assert (=> b!5632786 (= res!2385276 (dynLambda!24657 lambda!302683 (h!69495 (unfocusZipperList!1052 zl!343))))))

(declare-fun b!5632787 () Bool)

(assert (=> b!5632787 (= e!3471626 (forall!14778 (t!376465 (unfocusZipperList!1052 zl!343)) lambda!302683))))

(assert (= (and d!1779166 (not res!2385275)) b!5632786))

(assert (= (and b!5632786 res!2385276) b!5632787))

(declare-fun b_lambda!213001 () Bool)

(assert (=> (not b_lambda!213001) (not b!5632786)))

(declare-fun m!6603778 () Bool)

(assert (=> b!5632786 m!6603778))

(declare-fun m!6603780 () Bool)

(assert (=> b!5632787 m!6603780))

(assert (=> d!1778820 d!1779166))

(declare-fun bs!1303412 () Bool)

(declare-fun d!1779168 () Bool)

(assert (= bs!1303412 (and d!1779168 d!1778994)))

(declare-fun lambda!302752 () Int)

(assert (=> bs!1303412 (= lambda!302752 lambda!302735)))

(declare-fun bs!1303413 () Bool)

(assert (= bs!1303413 (and d!1779168 d!1779122)))

(assert (=> bs!1303413 (= lambda!302752 lambda!302745)))

(assert (=> d!1779168 (= (nullableZipper!1606 lt!2262582) (exists!2187 lt!2262582 lambda!302752))))

(declare-fun bs!1303414 () Bool)

(assert (= bs!1303414 d!1779168))

(declare-fun m!6603782 () Bool)

(assert (=> bs!1303414 m!6603782))

(assert (=> b!5631901 d!1779168))

(declare-fun d!1779170 () Bool)

(assert (=> d!1779170 (= (flatMap!1237 lt!2262569 lambda!302687) (choose!42688 lt!2262569 lambda!302687))))

(declare-fun bs!1303415 () Bool)

(assert (= bs!1303415 d!1779170))

(declare-fun m!6603784 () Bool)

(assert (=> bs!1303415 m!6603784))

(assert (=> d!1778838 d!1779170))

(declare-fun b!5632788 () Bool)

(declare-fun e!3471631 () Bool)

(assert (=> b!5632788 (= e!3471631 (matchR!7809 (derivativeStep!4460 (regOne!31760 r!7292) (head!11992 (_1!36024 (get!21720 lt!2262724)))) (tail!11087 (_1!36024 (get!21720 lt!2262724)))))))

(declare-fun b!5632789 () Bool)

(declare-fun e!3471633 () Bool)

(declare-fun e!3471630 () Bool)

(assert (=> b!5632789 (= e!3471633 e!3471630)))

(declare-fun res!2385278 () Bool)

(assert (=> b!5632789 (=> res!2385278 e!3471630)))

(declare-fun call!424718 () Bool)

(assert (=> b!5632789 (= res!2385278 call!424718)))

(declare-fun b!5632790 () Bool)

(assert (=> b!5632790 (= e!3471631 (nullable!5656 (regOne!31760 r!7292)))))

(declare-fun bm!424713 () Bool)

(assert (=> bm!424713 (= call!424718 (isEmpty!34891 (_1!36024 (get!21720 lt!2262724))))))

(declare-fun b!5632791 () Bool)

(assert (=> b!5632791 (= e!3471630 (not (= (head!11992 (_1!36024 (get!21720 lt!2262724))) (c!988948 (regOne!31760 r!7292)))))))

(declare-fun b!5632792 () Bool)

(declare-fun e!3471627 () Bool)

(assert (=> b!5632792 (= e!3471627 e!3471633)))

(declare-fun res!2385280 () Bool)

(assert (=> b!5632792 (=> (not res!2385280) (not e!3471633))))

(declare-fun lt!2262806 () Bool)

(assert (=> b!5632792 (= res!2385280 (not lt!2262806))))

(declare-fun b!5632793 () Bool)

(declare-fun res!2385279 () Bool)

(assert (=> b!5632793 (=> res!2385279 e!3471627)))

(declare-fun e!3471632 () Bool)

(assert (=> b!5632793 (= res!2385279 e!3471632)))

(declare-fun res!2385277 () Bool)

(assert (=> b!5632793 (=> (not res!2385277) (not e!3471632))))

(assert (=> b!5632793 (= res!2385277 lt!2262806)))

(declare-fun b!5632794 () Bool)

(declare-fun res!2385281 () Bool)

(assert (=> b!5632794 (=> (not res!2385281) (not e!3471632))))

(assert (=> b!5632794 (= res!2385281 (isEmpty!34891 (tail!11087 (_1!36024 (get!21720 lt!2262724)))))))

(declare-fun b!5632795 () Bool)

(declare-fun res!2385284 () Bool)

(assert (=> b!5632795 (=> (not res!2385284) (not e!3471632))))

(assert (=> b!5632795 (= res!2385284 (not call!424718))))

(declare-fun b!5632796 () Bool)

(assert (=> b!5632796 (= e!3471632 (= (head!11992 (_1!36024 (get!21720 lt!2262724))) (c!988948 (regOne!31760 r!7292))))))

(declare-fun b!5632797 () Bool)

(declare-fun e!3471628 () Bool)

(assert (=> b!5632797 (= e!3471628 (not lt!2262806))))

(declare-fun b!5632798 () Bool)

(declare-fun e!3471629 () Bool)

(assert (=> b!5632798 (= e!3471629 e!3471628)))

(declare-fun c!989310 () Bool)

(assert (=> b!5632798 (= c!989310 (is-EmptyLang!15624 (regOne!31760 r!7292)))))

(declare-fun b!5632799 () Bool)

(declare-fun res!2385283 () Bool)

(assert (=> b!5632799 (=> res!2385283 e!3471627)))

(assert (=> b!5632799 (= res!2385283 (not (is-ElementMatch!15624 (regOne!31760 r!7292))))))

(assert (=> b!5632799 (= e!3471628 e!3471627)))

(declare-fun b!5632800 () Bool)

(assert (=> b!5632800 (= e!3471629 (= lt!2262806 call!424718))))

(declare-fun d!1779172 () Bool)

(assert (=> d!1779172 e!3471629))

(declare-fun c!989309 () Bool)

(assert (=> d!1779172 (= c!989309 (is-EmptyExpr!15624 (regOne!31760 r!7292)))))

(assert (=> d!1779172 (= lt!2262806 e!3471631)))

(declare-fun c!989308 () Bool)

(assert (=> d!1779172 (= c!989308 (isEmpty!34891 (_1!36024 (get!21720 lt!2262724))))))

(assert (=> d!1779172 (validRegex!7360 (regOne!31760 r!7292))))

(assert (=> d!1779172 (= (matchR!7809 (regOne!31760 r!7292) (_1!36024 (get!21720 lt!2262724))) lt!2262806)))

(declare-fun b!5632801 () Bool)

(declare-fun res!2385282 () Bool)

(assert (=> b!5632801 (=> res!2385282 e!3471630)))

(assert (=> b!5632801 (= res!2385282 (not (isEmpty!34891 (tail!11087 (_1!36024 (get!21720 lt!2262724))))))))

(assert (= (and d!1779172 c!989308) b!5632790))

(assert (= (and d!1779172 (not c!989308)) b!5632788))

(assert (= (and d!1779172 c!989309) b!5632800))

(assert (= (and d!1779172 (not c!989309)) b!5632798))

(assert (= (and b!5632798 c!989310) b!5632797))

(assert (= (and b!5632798 (not c!989310)) b!5632799))

(assert (= (and b!5632799 (not res!2385283)) b!5632793))

(assert (= (and b!5632793 res!2385277) b!5632795))

(assert (= (and b!5632795 res!2385284) b!5632794))

(assert (= (and b!5632794 res!2385281) b!5632796))

(assert (= (and b!5632793 (not res!2385279)) b!5632792))

(assert (= (and b!5632792 res!2385280) b!5632789))

(assert (= (and b!5632789 (not res!2385278)) b!5632801))

(assert (= (and b!5632801 (not res!2385282)) b!5632791))

(assert (= (or b!5632800 b!5632789 b!5632795) bm!424713))

(declare-fun m!6603786 () Bool)

(assert (=> bm!424713 m!6603786))

(declare-fun m!6603788 () Bool)

(assert (=> b!5632796 m!6603788))

(assert (=> d!1779172 m!6603786))

(assert (=> d!1779172 m!6603066))

(assert (=> b!5632788 m!6603788))

(assert (=> b!5632788 m!6603788))

(declare-fun m!6603790 () Bool)

(assert (=> b!5632788 m!6603790))

(declare-fun m!6603792 () Bool)

(assert (=> b!5632788 m!6603792))

(assert (=> b!5632788 m!6603790))

(assert (=> b!5632788 m!6603792))

(declare-fun m!6603794 () Bool)

(assert (=> b!5632788 m!6603794))

(assert (=> b!5632794 m!6603792))

(assert (=> b!5632794 m!6603792))

(declare-fun m!6603796 () Bool)

(assert (=> b!5632794 m!6603796))

(assert (=> b!5632791 m!6603788))

(assert (=> b!5632801 m!6603792))

(assert (=> b!5632801 m!6603792))

(assert (=> b!5632801 m!6603796))

(assert (=> b!5632790 m!6603418))

(assert (=> b!5631954 d!1779172))

(assert (=> b!5631954 d!1779040))

(declare-fun d!1779174 () Bool)

(assert (=> d!1779174 (= (nullable!5656 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))) (nullableFct!1753 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))))

(declare-fun bs!1303416 () Bool)

(assert (= bs!1303416 d!1779174))

(declare-fun m!6603798 () Bool)

(assert (=> bs!1303416 m!6603798))

(assert (=> b!5631909 d!1779174))

(assert (=> b!5631732 d!1779094))

(assert (=> b!5631732 d!1779004))

(declare-fun d!1779176 () Bool)

(assert (=> d!1779176 (= (head!11993 (unfocusZipperList!1052 zl!343)) (h!69495 (unfocusZipperList!1052 zl!343)))))

(assert (=> b!5631855 d!1779176))

(assert (=> b!5631777 d!1778814))

(declare-fun bs!1303417 () Bool)

(declare-fun d!1779178 () Bool)

(assert (= bs!1303417 (and d!1779178 d!1778994)))

(declare-fun lambda!302753 () Int)

(assert (=> bs!1303417 (= lambda!302753 lambda!302735)))

(declare-fun bs!1303418 () Bool)

(assert (= bs!1303418 (and d!1779178 d!1779122)))

(assert (=> bs!1303418 (= lambda!302753 lambda!302745)))

(declare-fun bs!1303419 () Bool)

(assert (= bs!1303419 (and d!1779178 d!1779168)))

(assert (=> bs!1303419 (= lambda!302753 lambda!302752)))

(assert (=> d!1779178 (= (nullableZipper!1606 (set.union lt!2262574 lt!2262587)) (exists!2187 (set.union lt!2262574 lt!2262587) lambda!302753))))

(declare-fun bs!1303420 () Bool)

(assert (= bs!1303420 d!1779178))

(declare-fun m!6603800 () Bool)

(assert (=> bs!1303420 m!6603800))

(assert (=> b!5631779 d!1779178))

(declare-fun b!5632802 () Bool)

(declare-fun e!3471637 () (Set Context!10016))

(declare-fun call!424721 () (Set Context!10016))

(assert (=> b!5632802 (= e!3471637 call!424721)))

(declare-fun b!5632803 () Bool)

(declare-fun c!989313 () Bool)

(assert (=> b!5632803 (= c!989313 (is-Star!15624 (h!69495 (exprs!5508 lt!2262573))))))

(declare-fun e!3471634 () (Set Context!10016))

(assert (=> b!5632803 (= e!3471634 e!3471637)))

(declare-fun call!424723 () (Set Context!10016))

(declare-fun c!989312 () Bool)

(declare-fun call!424724 () List!63171)

(declare-fun bm!424714 () Bool)

(assert (=> bm!424714 (= call!424723 (derivationStepZipperDown!966 (ite c!989312 (regOne!31761 (h!69495 (exprs!5508 lt!2262573))) (regOne!31760 (h!69495 (exprs!5508 lt!2262573)))) (ite c!989312 (Context!10017 (t!376465 (exprs!5508 lt!2262573))) (Context!10017 call!424724)) (h!69497 s!2326)))))

(declare-fun b!5632804 () Bool)

(declare-fun e!3471639 () Bool)

(assert (=> b!5632804 (= e!3471639 (nullable!5656 (regOne!31760 (h!69495 (exprs!5508 lt!2262573)))))))

(declare-fun b!5632805 () Bool)

(declare-fun e!3471638 () (Set Context!10016))

(declare-fun e!3471635 () (Set Context!10016))

(assert (=> b!5632805 (= e!3471638 e!3471635)))

(assert (=> b!5632805 (= c!989312 (is-Union!15624 (h!69495 (exprs!5508 lt!2262573))))))

(declare-fun bm!424715 () Bool)

(declare-fun call!424720 () (Set Context!10016))

(assert (=> bm!424715 (= call!424721 call!424720)))

(declare-fun call!424722 () List!63171)

(declare-fun c!989314 () Bool)

(declare-fun c!989311 () Bool)

(declare-fun call!424719 () (Set Context!10016))

(declare-fun bm!424716 () Bool)

(assert (=> bm!424716 (= call!424719 (derivationStepZipperDown!966 (ite c!989312 (regTwo!31761 (h!69495 (exprs!5508 lt!2262573))) (ite c!989314 (regTwo!31760 (h!69495 (exprs!5508 lt!2262573))) (ite c!989311 (regOne!31760 (h!69495 (exprs!5508 lt!2262573))) (reg!15953 (h!69495 (exprs!5508 lt!2262573)))))) (ite (or c!989312 c!989314) (Context!10017 (t!376465 (exprs!5508 lt!2262573))) (Context!10017 call!424722)) (h!69497 s!2326)))))

(declare-fun b!5632806 () Bool)

(declare-fun e!3471636 () (Set Context!10016))

(assert (=> b!5632806 (= e!3471636 (set.union call!424723 call!424720))))

(declare-fun b!5632807 () Bool)

(assert (=> b!5632807 (= e!3471634 call!424721)))

(declare-fun b!5632808 () Bool)

(assert (=> b!5632808 (= c!989314 e!3471639)))

(declare-fun res!2385285 () Bool)

(assert (=> b!5632808 (=> (not res!2385285) (not e!3471639))))

(assert (=> b!5632808 (= res!2385285 (is-Concat!24469 (h!69495 (exprs!5508 lt!2262573))))))

(assert (=> b!5632808 (= e!3471635 e!3471636)))

(declare-fun bm!424717 () Bool)

(assert (=> bm!424717 (= call!424720 call!424719)))

(declare-fun bm!424718 () Bool)

(assert (=> bm!424718 (= call!424722 call!424724)))

(declare-fun bm!424719 () Bool)

(assert (=> bm!424719 (= call!424724 ($colon$colon!1674 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262573)))) (ite (or c!989314 c!989311) (regTwo!31760 (h!69495 (exprs!5508 lt!2262573))) (h!69495 (exprs!5508 lt!2262573)))))))

(declare-fun b!5632809 () Bool)

(assert (=> b!5632809 (= e!3471635 (set.union call!424723 call!424719))))

(declare-fun d!1779180 () Bool)

(declare-fun c!989315 () Bool)

(assert (=> d!1779180 (= c!989315 (and (is-ElementMatch!15624 (h!69495 (exprs!5508 lt!2262573))) (= (c!988948 (h!69495 (exprs!5508 lt!2262573))) (h!69497 s!2326))))))

(assert (=> d!1779180 (= (derivationStepZipperDown!966 (h!69495 (exprs!5508 lt!2262573)) (Context!10017 (t!376465 (exprs!5508 lt!2262573))) (h!69497 s!2326)) e!3471638)))

(declare-fun b!5632810 () Bool)

(assert (=> b!5632810 (= e!3471638 (set.insert (Context!10017 (t!376465 (exprs!5508 lt!2262573))) (as set.empty (Set Context!10016))))))

(declare-fun b!5632811 () Bool)

(assert (=> b!5632811 (= e!3471636 e!3471634)))

(assert (=> b!5632811 (= c!989311 (is-Concat!24469 (h!69495 (exprs!5508 lt!2262573))))))

(declare-fun b!5632812 () Bool)

(assert (=> b!5632812 (= e!3471637 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779180 c!989315) b!5632810))

(assert (= (and d!1779180 (not c!989315)) b!5632805))

(assert (= (and b!5632805 c!989312) b!5632809))

(assert (= (and b!5632805 (not c!989312)) b!5632808))

(assert (= (and b!5632808 res!2385285) b!5632804))

(assert (= (and b!5632808 c!989314) b!5632806))

(assert (= (and b!5632808 (not c!989314)) b!5632811))

(assert (= (and b!5632811 c!989311) b!5632807))

(assert (= (and b!5632811 (not c!989311)) b!5632803))

(assert (= (and b!5632803 c!989313) b!5632802))

(assert (= (and b!5632803 (not c!989313)) b!5632812))

(assert (= (or b!5632807 b!5632802) bm!424718))

(assert (= (or b!5632807 b!5632802) bm!424715))

(assert (= (or b!5632806 bm!424718) bm!424719))

(assert (= (or b!5632806 bm!424715) bm!424717))

(assert (= (or b!5632809 bm!424717) bm!424716))

(assert (= (or b!5632809 b!5632806) bm!424714))

(declare-fun m!6603802 () Bool)

(assert (=> bm!424719 m!6603802))

(declare-fun m!6603804 () Bool)

(assert (=> bm!424714 m!6603804))

(declare-fun m!6603806 () Bool)

(assert (=> bm!424716 m!6603806))

(declare-fun m!6603808 () Bool)

(assert (=> b!5632804 m!6603808))

(declare-fun m!6603810 () Bool)

(assert (=> b!5632810 m!6603810))

(assert (=> bm!424518 d!1779180))

(declare-fun d!1779182 () Bool)

(declare-fun c!989316 () Bool)

(assert (=> d!1779182 (= c!989316 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471640 () Bool)

(assert (=> d!1779182 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262586 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471640)))

(declare-fun b!5632813 () Bool)

(assert (=> b!5632813 (= e!3471640 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262586 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632814 () Bool)

(assert (=> b!5632814 (= e!3471640 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262586 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779182 c!989316) b!5632813))

(assert (= (and d!1779182 (not c!989316)) b!5632814))

(assert (=> d!1779182 m!6602882))

(assert (=> d!1779182 m!6603564))

(assert (=> b!5632813 m!6602900))

(declare-fun m!6603812 () Bool)

(assert (=> b!5632813 m!6603812))

(assert (=> b!5632814 m!6602882))

(assert (=> b!5632814 m!6603568))

(assert (=> b!5632814 m!6602900))

(assert (=> b!5632814 m!6603568))

(declare-fun m!6603814 () Bool)

(assert (=> b!5632814 m!6603814))

(assert (=> b!5632814 m!6602882))

(assert (=> b!5632814 m!6603572))

(assert (=> b!5632814 m!6603814))

(assert (=> b!5632814 m!6603572))

(declare-fun m!6603816 () Bool)

(assert (=> b!5632814 m!6603816))

(assert (=> b!5631774 d!1779182))

(declare-fun bs!1303421 () Bool)

(declare-fun d!1779184 () Bool)

(assert (= bs!1303421 (and d!1779184 d!1778838)))

(declare-fun lambda!302754 () Int)

(assert (=> bs!1303421 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302754 lambda!302687))))

(declare-fun bs!1303422 () Bool)

(assert (= bs!1303422 (and d!1779184 d!1779126)))

(assert (=> bs!1303422 (= lambda!302754 lambda!302746)))

(declare-fun bs!1303423 () Bool)

(assert (= bs!1303423 (and d!1779184 d!1779098)))

(assert (=> bs!1303423 (= lambda!302754 lambda!302742)))

(declare-fun bs!1303424 () Bool)

(assert (= bs!1303424 (and d!1779184 d!1779072)))

(assert (=> bs!1303424 (= lambda!302754 lambda!302740)))

(declare-fun bs!1303425 () Bool)

(assert (= bs!1303425 (and d!1779184 d!1778780)))

(assert (=> bs!1303425 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302754 lambda!302671))))

(declare-fun bs!1303426 () Bool)

(assert (= bs!1303426 (and d!1779184 d!1779154)))

(assert (=> bs!1303426 (= lambda!302754 lambda!302750)))

(declare-fun bs!1303427 () Bool)

(assert (= bs!1303427 (and d!1779184 b!5631478)))

(assert (=> bs!1303427 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302754 lambda!302653))))

(declare-fun bs!1303428 () Bool)

(assert (= bs!1303428 (and d!1779184 d!1779114)))

(assert (=> bs!1303428 (= lambda!302754 lambda!302744)))

(declare-fun bs!1303429 () Bool)

(assert (= bs!1303429 (and d!1779184 d!1779110)))

(assert (=> bs!1303429 (= lambda!302754 lambda!302743)))

(declare-fun bs!1303430 () Bool)

(assert (= bs!1303430 (and d!1779184 d!1779162)))

(assert (=> bs!1303430 (= lambda!302754 lambda!302751)))

(assert (=> d!1779184 true))

(assert (=> d!1779184 (= (derivationStepZipper!1711 lt!2262586 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262586 lambda!302754))))

(declare-fun bs!1303431 () Bool)

(assert (= bs!1303431 d!1779184))

(declare-fun m!6603818 () Bool)

(assert (=> bs!1303431 m!6603818))

(assert (=> b!5631774 d!1779184))

(assert (=> b!5631774 d!1779074))

(assert (=> b!5631774 d!1779076))

(declare-fun b!5632815 () Bool)

(declare-fun e!3471644 () (Set Context!10016))

(declare-fun call!424727 () (Set Context!10016))

(assert (=> b!5632815 (= e!3471644 call!424727)))

(declare-fun b!5632816 () Bool)

(declare-fun c!989319 () Bool)

(assert (=> b!5632816 (= c!989319 (is-Star!15624 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun e!3471641 () (Set Context!10016))

(assert (=> b!5632816 (= e!3471641 e!3471644)))

(declare-fun bm!424720 () Bool)

(declare-fun call!424729 () (Set Context!10016))

(declare-fun c!989318 () Bool)

(declare-fun call!424730 () List!63171)

(assert (=> bm!424720 (= call!424729 (derivationStepZipperDown!966 (ite c!989318 (regOne!31761 (h!69495 (exprs!5508 lt!2262588))) (regOne!31760 (h!69495 (exprs!5508 lt!2262588)))) (ite c!989318 (Context!10017 (t!376465 (exprs!5508 lt!2262588))) (Context!10017 call!424730)) (h!69497 s!2326)))))

(declare-fun b!5632817 () Bool)

(declare-fun e!3471646 () Bool)

(assert (=> b!5632817 (= e!3471646 (nullable!5656 (regOne!31760 (h!69495 (exprs!5508 lt!2262588)))))))

(declare-fun b!5632818 () Bool)

(declare-fun e!3471645 () (Set Context!10016))

(declare-fun e!3471642 () (Set Context!10016))

(assert (=> b!5632818 (= e!3471645 e!3471642)))

(assert (=> b!5632818 (= c!989318 (is-Union!15624 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun bm!424721 () Bool)

(declare-fun call!424726 () (Set Context!10016))

(assert (=> bm!424721 (= call!424727 call!424726)))

(declare-fun call!424725 () (Set Context!10016))

(declare-fun bm!424722 () Bool)

(declare-fun call!424728 () List!63171)

(declare-fun c!989317 () Bool)

(declare-fun c!989320 () Bool)

(assert (=> bm!424722 (= call!424725 (derivationStepZipperDown!966 (ite c!989318 (regTwo!31761 (h!69495 (exprs!5508 lt!2262588))) (ite c!989320 (regTwo!31760 (h!69495 (exprs!5508 lt!2262588))) (ite c!989317 (regOne!31760 (h!69495 (exprs!5508 lt!2262588))) (reg!15953 (h!69495 (exprs!5508 lt!2262588)))))) (ite (or c!989318 c!989320) (Context!10017 (t!376465 (exprs!5508 lt!2262588))) (Context!10017 call!424728)) (h!69497 s!2326)))))

(declare-fun b!5632819 () Bool)

(declare-fun e!3471643 () (Set Context!10016))

(assert (=> b!5632819 (= e!3471643 (set.union call!424729 call!424726))))

(declare-fun b!5632820 () Bool)

(assert (=> b!5632820 (= e!3471641 call!424727)))

(declare-fun b!5632821 () Bool)

(assert (=> b!5632821 (= c!989320 e!3471646)))

(declare-fun res!2385286 () Bool)

(assert (=> b!5632821 (=> (not res!2385286) (not e!3471646))))

(assert (=> b!5632821 (= res!2385286 (is-Concat!24469 (h!69495 (exprs!5508 lt!2262588))))))

(assert (=> b!5632821 (= e!3471642 e!3471643)))

(declare-fun bm!424723 () Bool)

(assert (=> bm!424723 (= call!424726 call!424725)))

(declare-fun bm!424724 () Bool)

(assert (=> bm!424724 (= call!424728 call!424730)))

(declare-fun bm!424725 () Bool)

(assert (=> bm!424725 (= call!424730 ($colon$colon!1674 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588)))) (ite (or c!989320 c!989317) (regTwo!31760 (h!69495 (exprs!5508 lt!2262588))) (h!69495 (exprs!5508 lt!2262588)))))))

(declare-fun b!5632822 () Bool)

(assert (=> b!5632822 (= e!3471642 (set.union call!424729 call!424725))))

(declare-fun d!1779186 () Bool)

(declare-fun c!989321 () Bool)

(assert (=> d!1779186 (= c!989321 (and (is-ElementMatch!15624 (h!69495 (exprs!5508 lt!2262588))) (= (c!988948 (h!69495 (exprs!5508 lt!2262588))) (h!69497 s!2326))))))

(assert (=> d!1779186 (= (derivationStepZipperDown!966 (h!69495 (exprs!5508 lt!2262588)) (Context!10017 (t!376465 (exprs!5508 lt!2262588))) (h!69497 s!2326)) e!3471645)))

(declare-fun b!5632823 () Bool)

(assert (=> b!5632823 (= e!3471645 (set.insert (Context!10017 (t!376465 (exprs!5508 lt!2262588))) (as set.empty (Set Context!10016))))))

(declare-fun b!5632824 () Bool)

(assert (=> b!5632824 (= e!3471643 e!3471641)))

(assert (=> b!5632824 (= c!989317 (is-Concat!24469 (h!69495 (exprs!5508 lt!2262588))))))

(declare-fun b!5632825 () Bool)

(assert (=> b!5632825 (= e!3471644 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779186 c!989321) b!5632823))

(assert (= (and d!1779186 (not c!989321)) b!5632818))

(assert (= (and b!5632818 c!989318) b!5632822))

(assert (= (and b!5632818 (not c!989318)) b!5632821))

(assert (= (and b!5632821 res!2385286) b!5632817))

(assert (= (and b!5632821 c!989320) b!5632819))

(assert (= (and b!5632821 (not c!989320)) b!5632824))

(assert (= (and b!5632824 c!989317) b!5632820))

(assert (= (and b!5632824 (not c!989317)) b!5632816))

(assert (= (and b!5632816 c!989319) b!5632815))

(assert (= (and b!5632816 (not c!989319)) b!5632825))

(assert (= (or b!5632820 b!5632815) bm!424724))

(assert (= (or b!5632820 b!5632815) bm!424721))

(assert (= (or b!5632819 bm!424724) bm!424725))

(assert (= (or b!5632819 bm!424721) bm!424723))

(assert (= (or b!5632822 bm!424723) bm!424722))

(assert (= (or b!5632822 b!5632819) bm!424720))

(declare-fun m!6603820 () Bool)

(assert (=> bm!424725 m!6603820))

(declare-fun m!6603822 () Bool)

(assert (=> bm!424720 m!6603822))

(declare-fun m!6603824 () Bool)

(assert (=> bm!424722 m!6603824))

(declare-fun m!6603826 () Bool)

(assert (=> b!5632817 m!6603826))

(declare-fun m!6603828 () Bool)

(assert (=> b!5632823 m!6603828))

(assert (=> bm!424517 d!1779186))

(declare-fun d!1779188 () Bool)

(declare-fun c!989322 () Bool)

(assert (=> d!1779188 (= c!989322 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471647 () Bool)

(assert (=> d!1779188 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262565 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471647)))

(declare-fun b!5632826 () Bool)

(assert (=> b!5632826 (= e!3471647 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262565 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632827 () Bool)

(assert (=> b!5632827 (= e!3471647 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262565 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779188 c!989322) b!5632826))

(assert (= (and d!1779188 (not c!989322)) b!5632827))

(assert (=> d!1779188 m!6602882))

(assert (=> d!1779188 m!6603564))

(assert (=> b!5632826 m!6602880))

(declare-fun m!6603830 () Bool)

(assert (=> b!5632826 m!6603830))

(assert (=> b!5632827 m!6602882))

(assert (=> b!5632827 m!6603568))

(assert (=> b!5632827 m!6602880))

(assert (=> b!5632827 m!6603568))

(declare-fun m!6603832 () Bool)

(assert (=> b!5632827 m!6603832))

(assert (=> b!5632827 m!6602882))

(assert (=> b!5632827 m!6603572))

(assert (=> b!5632827 m!6603832))

(assert (=> b!5632827 m!6603572))

(declare-fun m!6603834 () Bool)

(assert (=> b!5632827 m!6603834))

(assert (=> b!5631768 d!1779188))

(declare-fun bs!1303432 () Bool)

(declare-fun d!1779190 () Bool)

(assert (= bs!1303432 (and d!1779190 d!1778838)))

(declare-fun lambda!302755 () Int)

(assert (=> bs!1303432 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302755 lambda!302687))))

(declare-fun bs!1303433 () Bool)

(assert (= bs!1303433 (and d!1779190 d!1779126)))

(assert (=> bs!1303433 (= lambda!302755 lambda!302746)))

(declare-fun bs!1303434 () Bool)

(assert (= bs!1303434 (and d!1779190 d!1779098)))

(assert (=> bs!1303434 (= lambda!302755 lambda!302742)))

(declare-fun bs!1303435 () Bool)

(assert (= bs!1303435 (and d!1779190 d!1779072)))

(assert (=> bs!1303435 (= lambda!302755 lambda!302740)))

(declare-fun bs!1303436 () Bool)

(assert (= bs!1303436 (and d!1779190 d!1779184)))

(assert (=> bs!1303436 (= lambda!302755 lambda!302754)))

(declare-fun bs!1303437 () Bool)

(assert (= bs!1303437 (and d!1779190 d!1778780)))

(assert (=> bs!1303437 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302755 lambda!302671))))

(declare-fun bs!1303438 () Bool)

(assert (= bs!1303438 (and d!1779190 d!1779154)))

(assert (=> bs!1303438 (= lambda!302755 lambda!302750)))

(declare-fun bs!1303439 () Bool)

(assert (= bs!1303439 (and d!1779190 b!5631478)))

(assert (=> bs!1303439 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302755 lambda!302653))))

(declare-fun bs!1303440 () Bool)

(assert (= bs!1303440 (and d!1779190 d!1779114)))

(assert (=> bs!1303440 (= lambda!302755 lambda!302744)))

(declare-fun bs!1303441 () Bool)

(assert (= bs!1303441 (and d!1779190 d!1779110)))

(assert (=> bs!1303441 (= lambda!302755 lambda!302743)))

(declare-fun bs!1303442 () Bool)

(assert (= bs!1303442 (and d!1779190 d!1779162)))

(assert (=> bs!1303442 (= lambda!302755 lambda!302751)))

(assert (=> d!1779190 true))

(assert (=> d!1779190 (= (derivationStepZipper!1711 lt!2262565 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262565 lambda!302755))))

(declare-fun bs!1303443 () Bool)

(assert (= bs!1303443 d!1779190))

(declare-fun m!6603836 () Bool)

(assert (=> bs!1303443 m!6603836))

(assert (=> b!5631768 d!1779190))

(assert (=> b!5631768 d!1779074))

(assert (=> b!5631768 d!1779076))

(declare-fun d!1779192 () Bool)

(assert (=> d!1779192 (= (Exists!2724 lambda!302699) (choose!42693 lambda!302699))))

(declare-fun bs!1303444 () Bool)

(assert (= bs!1303444 d!1779192))

(declare-fun m!6603838 () Bool)

(assert (=> bs!1303444 m!6603838))

(assert (=> d!1778872 d!1779192))

(declare-fun d!1779194 () Bool)

(assert (=> d!1779194 (= (Exists!2724 lambda!302700) (choose!42693 lambda!302700))))

(declare-fun bs!1303445 () Bool)

(assert (= bs!1303445 d!1779194))

(declare-fun m!6603840 () Bool)

(assert (=> bs!1303445 m!6603840))

(assert (=> d!1778872 d!1779194))

(declare-fun bs!1303446 () Bool)

(declare-fun d!1779196 () Bool)

(assert (= bs!1303446 (and d!1779196 b!5631497)))

(declare-fun lambda!302760 () Int)

(assert (=> bs!1303446 (not (= lambda!302760 lambda!302652))))

(declare-fun bs!1303447 () Bool)

(assert (= bs!1303447 (and d!1779196 b!5631684)))

(assert (=> bs!1303447 (not (= lambda!302760 lambda!302677))))

(declare-fun bs!1303448 () Bool)

(assert (= bs!1303448 (and d!1779196 d!1779024)))

(assert (=> bs!1303448 (= lambda!302760 lambda!302738)))

(declare-fun bs!1303449 () Bool)

(assert (= bs!1303449 (and d!1779196 b!5631688)))

(assert (=> bs!1303449 (not (= lambda!302760 lambda!302676))))

(declare-fun bs!1303450 () Bool)

(assert (= bs!1303450 (and d!1779196 d!1778872)))

(assert (=> bs!1303450 (not (= lambda!302760 lambda!302700))))

(assert (=> bs!1303450 (= lambda!302760 lambda!302699)))

(declare-fun bs!1303451 () Bool)

(assert (= bs!1303451 (and d!1779196 b!5632727)))

(assert (=> bs!1303451 (not (= lambda!302760 lambda!302748))))

(declare-fun bs!1303452 () Bool)

(assert (= bs!1303452 (and d!1779196 b!5632723)))

(assert (=> bs!1303452 (not (= lambda!302760 lambda!302749))))

(assert (=> bs!1303446 (= lambda!302760 lambda!302651)))

(declare-fun bs!1303453 () Bool)

(assert (= bs!1303453 (and d!1779196 d!1778870)))

(assert (=> bs!1303453 (= lambda!302760 lambda!302694)))

(assert (=> d!1779196 true))

(assert (=> d!1779196 true))

(assert (=> d!1779196 true))

(declare-fun lambda!302761 () Int)

(assert (=> bs!1303446 (= lambda!302761 lambda!302652)))

(assert (=> bs!1303447 (= lambda!302761 lambda!302677)))

(declare-fun bs!1303454 () Bool)

(assert (= bs!1303454 d!1779196))

(assert (=> bs!1303454 (not (= lambda!302761 lambda!302760))))

(assert (=> bs!1303448 (not (= lambda!302761 lambda!302738))))

(assert (=> bs!1303449 (not (= lambda!302761 lambda!302676))))

(assert (=> bs!1303450 (= lambda!302761 lambda!302700)))

(assert (=> bs!1303450 (not (= lambda!302761 lambda!302699))))

(assert (=> bs!1303451 (not (= lambda!302761 lambda!302748))))

(assert (=> bs!1303452 (= (and (= (regOne!31760 r!7292) (regOne!31760 (regTwo!31761 r!7292))) (= (regTwo!31760 r!7292) (regTwo!31760 (regTwo!31761 r!7292)))) (= lambda!302761 lambda!302749))))

(assert (=> bs!1303446 (not (= lambda!302761 lambda!302651))))

(assert (=> bs!1303453 (not (= lambda!302761 lambda!302694))))

(assert (=> d!1779196 true))

(assert (=> d!1779196 true))

(assert (=> d!1779196 true))

(assert (=> d!1779196 (= (Exists!2724 lambda!302760) (Exists!2724 lambda!302761))))

(assert (=> d!1779196 true))

(declare-fun _$90!1370 () Unit!156028)

(assert (=> d!1779196 (= (choose!42695 (regOne!31760 r!7292) (regTwo!31760 r!7292) s!2326) _$90!1370)))

(declare-fun m!6603842 () Bool)

(assert (=> bs!1303454 m!6603842))

(declare-fun m!6603844 () Bool)

(assert (=> bs!1303454 m!6603844))

(assert (=> d!1778872 d!1779196))

(assert (=> d!1778872 d!1779022))

(declare-fun b!5632836 () Bool)

(declare-fun e!3471652 () (Set Context!10016))

(assert (=> b!5632836 (= e!3471652 (as set.empty (Set Context!10016)))))

(declare-fun bm!424726 () Bool)

(declare-fun call!424731 () (Set Context!10016))

(assert (=> bm!424726 (= call!424731 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))) (h!69497 s!2326)))))

(declare-fun b!5632837 () Bool)

(declare-fun e!3471653 () Bool)

(assert (=> b!5632837 (= e!3471653 (nullable!5656 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))))))

(declare-fun b!5632838 () Bool)

(assert (=> b!5632838 (= e!3471652 call!424731)))

(declare-fun b!5632840 () Bool)

(declare-fun e!3471654 () (Set Context!10016))

(assert (=> b!5632840 (= e!3471654 e!3471652)))

(declare-fun c!989324 () Bool)

(assert (=> b!5632840 (= c!989324 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))))

(declare-fun d!1779198 () Bool)

(declare-fun c!989323 () Bool)

(assert (=> d!1779198 (= c!989323 e!3471653)))

(declare-fun res!2385295 () Bool)

(assert (=> d!1779198 (=> (not res!2385295) (not e!3471653))))

(assert (=> d!1779198 (= res!2385295 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))))))))

(assert (=> d!1779198 (= (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343)))))))) (h!69497 s!2326)) e!3471654)))

(declare-fun b!5632839 () Bool)

(assert (=> b!5632839 (= e!3471654 (set.union call!424731 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (Cons!63047 (h!69495 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))))))) (h!69497 s!2326))))))

(assert (= (and d!1779198 res!2385295) b!5632837))

(assert (= (and d!1779198 c!989323) b!5632839))

(assert (= (and d!1779198 (not c!989323)) b!5632840))

(assert (= (and b!5632840 c!989324) b!5632838))

(assert (= (and b!5632840 (not c!989324)) b!5632836))

(assert (= (or b!5632839 b!5632838) bm!424726))

(declare-fun m!6603846 () Bool)

(assert (=> bm!424726 m!6603846))

(declare-fun m!6603848 () Bool)

(assert (=> b!5632837 m!6603848))

(declare-fun m!6603850 () Bool)

(assert (=> b!5632839 m!6603850))

(assert (=> b!5631921 d!1779198))

(declare-fun b!5632841 () Bool)

(declare-fun e!3471655 () (Set Context!10016))

(assert (=> b!5632841 (= e!3471655 (as set.empty (Set Context!10016)))))

(declare-fun bm!424727 () Bool)

(declare-fun call!424732 () (Set Context!10016))

(assert (=> bm!424727 (= call!424732 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))))) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343))))))) (h!69497 s!2326)))))

(declare-fun b!5632842 () Bool)

(declare-fun e!3471656 () Bool)

(assert (=> b!5632842 (= e!3471656 (nullable!5656 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343))))))))))

(declare-fun b!5632843 () Bool)

(assert (=> b!5632843 (= e!3471655 call!424732)))

(declare-fun b!5632845 () Bool)

(declare-fun e!3471657 () (Set Context!10016))

(assert (=> b!5632845 (= e!3471657 e!3471655)))

(declare-fun c!989326 () Bool)

(assert (=> b!5632845 (= c!989326 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun d!1779200 () Bool)

(declare-fun c!989325 () Bool)

(assert (=> d!1779200 (= c!989325 e!3471656)))

(declare-fun res!2385296 () Bool)

(assert (=> d!1779200 (=> (not res!2385296) (not e!3471656))))

(assert (=> d!1779200 (= res!2385296 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))))))))

(assert (=> d!1779200 (= (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))) (h!69497 s!2326)) e!3471657)))

(declare-fun b!5632844 () Bool)

(assert (=> b!5632844 (= e!3471657 (set.union call!424732 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343))))))) (h!69497 s!2326))))))

(assert (= (and d!1779200 res!2385296) b!5632842))

(assert (= (and d!1779200 c!989325) b!5632844))

(assert (= (and d!1779200 (not c!989325)) b!5632845))

(assert (= (and b!5632845 c!989326) b!5632843))

(assert (= (and b!5632845 (not c!989326)) b!5632841))

(assert (= (or b!5632844 b!5632843) bm!424727))

(declare-fun m!6603852 () Bool)

(assert (=> bm!424727 m!6603852))

(declare-fun m!6603854 () Bool)

(assert (=> b!5632842 m!6603854))

(declare-fun m!6603856 () Bool)

(assert (=> b!5632844 m!6603856))

(assert (=> b!5631926 d!1779200))

(declare-fun b!5632846 () Bool)

(declare-fun e!3471661 () (Set Context!10016))

(declare-fun call!424735 () (Set Context!10016))

(assert (=> b!5632846 (= e!3471661 call!424735)))

(declare-fun b!5632847 () Bool)

(declare-fun c!989329 () Bool)

(assert (=> b!5632847 (= c!989329 (is-Star!15624 (h!69495 (exprs!5508 lt!2262567))))))

(declare-fun e!3471658 () (Set Context!10016))

(assert (=> b!5632847 (= e!3471658 e!3471661)))

(declare-fun call!424737 () (Set Context!10016))

(declare-fun c!989328 () Bool)

(declare-fun bm!424728 () Bool)

(declare-fun call!424738 () List!63171)

(assert (=> bm!424728 (= call!424737 (derivationStepZipperDown!966 (ite c!989328 (regOne!31761 (h!69495 (exprs!5508 lt!2262567))) (regOne!31760 (h!69495 (exprs!5508 lt!2262567)))) (ite c!989328 (Context!10017 (t!376465 (exprs!5508 lt!2262567))) (Context!10017 call!424738)) (h!69497 s!2326)))))

(declare-fun b!5632848 () Bool)

(declare-fun e!3471663 () Bool)

(assert (=> b!5632848 (= e!3471663 (nullable!5656 (regOne!31760 (h!69495 (exprs!5508 lt!2262567)))))))

(declare-fun b!5632849 () Bool)

(declare-fun e!3471662 () (Set Context!10016))

(declare-fun e!3471659 () (Set Context!10016))

(assert (=> b!5632849 (= e!3471662 e!3471659)))

(assert (=> b!5632849 (= c!989328 (is-Union!15624 (h!69495 (exprs!5508 lt!2262567))))))

(declare-fun bm!424729 () Bool)

(declare-fun call!424734 () (Set Context!10016))

(assert (=> bm!424729 (= call!424735 call!424734)))

(declare-fun c!989327 () Bool)

(declare-fun call!424733 () (Set Context!10016))

(declare-fun call!424736 () List!63171)

(declare-fun c!989330 () Bool)

(declare-fun bm!424730 () Bool)

(assert (=> bm!424730 (= call!424733 (derivationStepZipperDown!966 (ite c!989328 (regTwo!31761 (h!69495 (exprs!5508 lt!2262567))) (ite c!989330 (regTwo!31760 (h!69495 (exprs!5508 lt!2262567))) (ite c!989327 (regOne!31760 (h!69495 (exprs!5508 lt!2262567))) (reg!15953 (h!69495 (exprs!5508 lt!2262567)))))) (ite (or c!989328 c!989330) (Context!10017 (t!376465 (exprs!5508 lt!2262567))) (Context!10017 call!424736)) (h!69497 s!2326)))))

(declare-fun b!5632850 () Bool)

(declare-fun e!3471660 () (Set Context!10016))

(assert (=> b!5632850 (= e!3471660 (set.union call!424737 call!424734))))

(declare-fun b!5632851 () Bool)

(assert (=> b!5632851 (= e!3471658 call!424735)))

(declare-fun b!5632852 () Bool)

(assert (=> b!5632852 (= c!989330 e!3471663)))

(declare-fun res!2385297 () Bool)

(assert (=> b!5632852 (=> (not res!2385297) (not e!3471663))))

(assert (=> b!5632852 (= res!2385297 (is-Concat!24469 (h!69495 (exprs!5508 lt!2262567))))))

(assert (=> b!5632852 (= e!3471659 e!3471660)))

(declare-fun bm!424731 () Bool)

(assert (=> bm!424731 (= call!424734 call!424733)))

(declare-fun bm!424732 () Bool)

(assert (=> bm!424732 (= call!424736 call!424738)))

(declare-fun bm!424733 () Bool)

(assert (=> bm!424733 (= call!424738 ($colon$colon!1674 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262567)))) (ite (or c!989330 c!989327) (regTwo!31760 (h!69495 (exprs!5508 lt!2262567))) (h!69495 (exprs!5508 lt!2262567)))))))

(declare-fun b!5632853 () Bool)

(assert (=> b!5632853 (= e!3471659 (set.union call!424737 call!424733))))

(declare-fun d!1779202 () Bool)

(declare-fun c!989331 () Bool)

(assert (=> d!1779202 (= c!989331 (and (is-ElementMatch!15624 (h!69495 (exprs!5508 lt!2262567))) (= (c!988948 (h!69495 (exprs!5508 lt!2262567))) (h!69497 s!2326))))))

(assert (=> d!1779202 (= (derivationStepZipperDown!966 (h!69495 (exprs!5508 lt!2262567)) (Context!10017 (t!376465 (exprs!5508 lt!2262567))) (h!69497 s!2326)) e!3471662)))

(declare-fun b!5632854 () Bool)

(assert (=> b!5632854 (= e!3471662 (set.insert (Context!10017 (t!376465 (exprs!5508 lt!2262567))) (as set.empty (Set Context!10016))))))

(declare-fun b!5632855 () Bool)

(assert (=> b!5632855 (= e!3471660 e!3471658)))

(assert (=> b!5632855 (= c!989327 (is-Concat!24469 (h!69495 (exprs!5508 lt!2262567))))))

(declare-fun b!5632856 () Bool)

(assert (=> b!5632856 (= e!3471661 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779202 c!989331) b!5632854))

(assert (= (and d!1779202 (not c!989331)) b!5632849))

(assert (= (and b!5632849 c!989328) b!5632853))

(assert (= (and b!5632849 (not c!989328)) b!5632852))

(assert (= (and b!5632852 res!2385297) b!5632848))

(assert (= (and b!5632852 c!989330) b!5632850))

(assert (= (and b!5632852 (not c!989330)) b!5632855))

(assert (= (and b!5632855 c!989327) b!5632851))

(assert (= (and b!5632855 (not c!989327)) b!5632847))

(assert (= (and b!5632847 c!989329) b!5632846))

(assert (= (and b!5632847 (not c!989329)) b!5632856))

(assert (= (or b!5632851 b!5632846) bm!424732))

(assert (= (or b!5632851 b!5632846) bm!424729))

(assert (= (or b!5632850 bm!424732) bm!424733))

(assert (= (or b!5632850 bm!424729) bm!424731))

(assert (= (or b!5632853 bm!424731) bm!424730))

(assert (= (or b!5632853 b!5632850) bm!424728))

(declare-fun m!6603858 () Bool)

(assert (=> bm!424733 m!6603858))

(declare-fun m!6603860 () Bool)

(assert (=> bm!424728 m!6603860))

(declare-fun m!6603862 () Bool)

(assert (=> bm!424730 m!6603862))

(declare-fun m!6603864 () Bool)

(assert (=> b!5632848 m!6603864))

(declare-fun m!6603866 () Bool)

(assert (=> b!5632854 m!6603866))

(assert (=> bm!424569 d!1779202))

(declare-fun d!1779204 () Bool)

(assert (=> d!1779204 (= (isEmptyExpr!1165 lt!2262697) (is-EmptyExpr!15624 lt!2262697))))

(assert (=> b!5631753 d!1779204))

(declare-fun bs!1303455 () Bool)

(declare-fun d!1779206 () Bool)

(assert (= bs!1303455 (and d!1779206 d!1778994)))

(declare-fun lambda!302762 () Int)

(assert (=> bs!1303455 (= lambda!302762 lambda!302735)))

(declare-fun bs!1303456 () Bool)

(assert (= bs!1303456 (and d!1779206 d!1779122)))

(assert (=> bs!1303456 (= lambda!302762 lambda!302745)))

(declare-fun bs!1303457 () Bool)

(assert (= bs!1303457 (and d!1779206 d!1779168)))

(assert (=> bs!1303457 (= lambda!302762 lambda!302752)))

(declare-fun bs!1303458 () Bool)

(assert (= bs!1303458 (and d!1779206 d!1779178)))

(assert (=> bs!1303458 (= lambda!302762 lambda!302753)))

(assert (=> d!1779206 (= (nullableZipper!1606 lt!2262576) (exists!2187 lt!2262576 lambda!302762))))

(declare-fun bs!1303459 () Bool)

(assert (= bs!1303459 d!1779206))

(declare-fun m!6603868 () Bool)

(assert (=> bs!1303459 m!6603868))

(assert (=> b!5631833 d!1779206))

(assert (=> d!1778830 d!1779046))

(declare-fun d!1779208 () Bool)

(declare-fun c!989332 () Bool)

(assert (=> d!1779208 (= c!989332 (isEmpty!34891 (tail!11087 (t!376467 s!2326))))))

(declare-fun e!3471664 () Bool)

(assert (=> d!1779208 (= (matchZipper!1762 (derivationStepZipper!1711 lt!2262587 (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))) e!3471664)))

(declare-fun b!5632857 () Bool)

(assert (=> b!5632857 (= e!3471664 (nullableZipper!1606 (derivationStepZipper!1711 lt!2262587 (head!11992 (t!376467 s!2326)))))))

(declare-fun b!5632858 () Bool)

(assert (=> b!5632858 (= e!3471664 (matchZipper!1762 (derivationStepZipper!1711 (derivationStepZipper!1711 lt!2262587 (head!11992 (t!376467 s!2326))) (head!11992 (tail!11087 (t!376467 s!2326)))) (tail!11087 (tail!11087 (t!376467 s!2326)))))))

(assert (= (and d!1779208 c!989332) b!5632857))

(assert (= (and d!1779208 (not c!989332)) b!5632858))

(assert (=> d!1779208 m!6602882))

(assert (=> d!1779208 m!6603564))

(assert (=> b!5632857 m!6603012))

(declare-fun m!6603870 () Bool)

(assert (=> b!5632857 m!6603870))

(assert (=> b!5632858 m!6602882))

(assert (=> b!5632858 m!6603568))

(assert (=> b!5632858 m!6603012))

(assert (=> b!5632858 m!6603568))

(declare-fun m!6603872 () Bool)

(assert (=> b!5632858 m!6603872))

(assert (=> b!5632858 m!6602882))

(assert (=> b!5632858 m!6603572))

(assert (=> b!5632858 m!6603872))

(assert (=> b!5632858 m!6603572))

(declare-fun m!6603874 () Bool)

(assert (=> b!5632858 m!6603874))

(assert (=> b!5631906 d!1779208))

(declare-fun bs!1303460 () Bool)

(declare-fun d!1779210 () Bool)

(assert (= bs!1303460 (and d!1779210 d!1778838)))

(declare-fun lambda!302763 () Int)

(assert (=> bs!1303460 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302763 lambda!302687))))

(declare-fun bs!1303461 () Bool)

(assert (= bs!1303461 (and d!1779210 d!1779126)))

(assert (=> bs!1303461 (= lambda!302763 lambda!302746)))

(declare-fun bs!1303462 () Bool)

(assert (= bs!1303462 (and d!1779210 d!1779098)))

(assert (=> bs!1303462 (= lambda!302763 lambda!302742)))

(declare-fun bs!1303463 () Bool)

(assert (= bs!1303463 (and d!1779210 d!1779072)))

(assert (=> bs!1303463 (= lambda!302763 lambda!302740)))

(declare-fun bs!1303464 () Bool)

(assert (= bs!1303464 (and d!1779210 d!1779190)))

(assert (=> bs!1303464 (= lambda!302763 lambda!302755)))

(declare-fun bs!1303465 () Bool)

(assert (= bs!1303465 (and d!1779210 d!1779184)))

(assert (=> bs!1303465 (= lambda!302763 lambda!302754)))

(declare-fun bs!1303466 () Bool)

(assert (= bs!1303466 (and d!1779210 d!1778780)))

(assert (=> bs!1303466 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302763 lambda!302671))))

(declare-fun bs!1303467 () Bool)

(assert (= bs!1303467 (and d!1779210 d!1779154)))

(assert (=> bs!1303467 (= lambda!302763 lambda!302750)))

(declare-fun bs!1303468 () Bool)

(assert (= bs!1303468 (and d!1779210 b!5631478)))

(assert (=> bs!1303468 (= (= (head!11992 (t!376467 s!2326)) (h!69497 s!2326)) (= lambda!302763 lambda!302653))))

(declare-fun bs!1303469 () Bool)

(assert (= bs!1303469 (and d!1779210 d!1779114)))

(assert (=> bs!1303469 (= lambda!302763 lambda!302744)))

(declare-fun bs!1303470 () Bool)

(assert (= bs!1303470 (and d!1779210 d!1779110)))

(assert (=> bs!1303470 (= lambda!302763 lambda!302743)))

(declare-fun bs!1303471 () Bool)

(assert (= bs!1303471 (and d!1779210 d!1779162)))

(assert (=> bs!1303471 (= lambda!302763 lambda!302751)))

(assert (=> d!1779210 true))

(assert (=> d!1779210 (= (derivationStepZipper!1711 lt!2262587 (head!11992 (t!376467 s!2326))) (flatMap!1237 lt!2262587 lambda!302763))))

(declare-fun bs!1303472 () Bool)

(assert (= bs!1303472 d!1779210))

(declare-fun m!6603876 () Bool)

(assert (=> bs!1303472 m!6603876))

(assert (=> b!5631906 d!1779210))

(assert (=> b!5631906 d!1779074))

(assert (=> b!5631906 d!1779076))

(declare-fun d!1779212 () Bool)

(assert (=> d!1779212 (= (isUnion!605 lt!2262711) (is-Union!15624 lt!2262711))))

(assert (=> b!5631863 d!1779212))

(declare-fun d!1779214 () Bool)

(assert (=> d!1779214 (= (nullable!5656 (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))) (nullableFct!1753 (regOne!31760 (regOne!31760 (regOne!31760 r!7292)))))))

(declare-fun bs!1303473 () Bool)

(assert (= bs!1303473 d!1779214))

(declare-fun m!6603878 () Bool)

(assert (=> bs!1303473 m!6603878))

(assert (=> b!5631824 d!1779214))

(declare-fun d!1779216 () Bool)

(declare-fun lt!2262807 () Int)

(assert (=> d!1779216 (> lt!2262807 0)))

(declare-fun e!3471666 () Int)

(assert (=> d!1779216 (= lt!2262807 e!3471666)))

(declare-fun c!989334 () Bool)

(assert (=> d!1779216 (= c!989334 (is-ElementMatch!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> d!1779216 (= (regexDepthTotal!88 (h!69495 (exprs!5508 (h!69496 zl!343)))) lt!2262807)))

(declare-fun b!5632859 () Bool)

(declare-fun e!3471668 () Int)

(declare-fun call!424741 () Int)

(assert (=> b!5632859 (= e!3471668 (+ 1 call!424741))))

(declare-fun b!5632860 () Bool)

(assert (=> b!5632860 (= e!3471666 e!3471668)))

(declare-fun c!989333 () Bool)

(assert (=> b!5632860 (= c!989333 (is-Star!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun bm!424734 () Bool)

(declare-fun call!424739 () Int)

(assert (=> bm!424734 (= call!424739 call!424741)))

(declare-fun b!5632861 () Bool)

(declare-fun e!3471665 () Int)

(assert (=> b!5632861 (= e!3471665 1)))

(declare-fun bm!424735 () Bool)

(declare-fun c!989336 () Bool)

(assert (=> bm!424735 (= call!424741 (regexDepthTotal!88 (ite c!989333 (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989336 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))))))

(declare-fun b!5632862 () Bool)

(assert (=> b!5632862 (= c!989336 (is-Union!15624 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun e!3471667 () Int)

(assert (=> b!5632862 (= e!3471668 e!3471667)))

(declare-fun b!5632863 () Bool)

(declare-fun call!424740 () Int)

(assert (=> b!5632863 (= e!3471667 (+ 1 call!424739 call!424740))))

(declare-fun b!5632864 () Bool)

(assert (=> b!5632864 (= e!3471667 e!3471665)))

(declare-fun c!989335 () Bool)

(assert (=> b!5632864 (= c!989335 (is-Concat!24469 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun b!5632865 () Bool)

(assert (=> b!5632865 (= e!3471666 1)))

(declare-fun bm!424736 () Bool)

(assert (=> bm!424736 (= call!424740 (regexDepthTotal!88 (ite c!989336 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun b!5632866 () Bool)

(assert (=> b!5632866 (= e!3471665 (+ 1 call!424739 call!424740))))

(assert (= (and d!1779216 c!989334) b!5632865))

(assert (= (and d!1779216 (not c!989334)) b!5632860))

(assert (= (and b!5632860 c!989333) b!5632859))

(assert (= (and b!5632860 (not c!989333)) b!5632862))

(assert (= (and b!5632862 c!989336) b!5632863))

(assert (= (and b!5632862 (not c!989336)) b!5632864))

(assert (= (and b!5632864 c!989335) b!5632866))

(assert (= (and b!5632864 (not c!989335)) b!5632861))

(assert (= (or b!5632863 b!5632866) bm!424736))

(assert (= (or b!5632863 b!5632866) bm!424734))

(assert (= (or b!5632859 bm!424734) bm!424735))

(declare-fun m!6603880 () Bool)

(assert (=> bm!424735 m!6603880))

(declare-fun m!6603882 () Bool)

(assert (=> bm!424736 m!6603882))

(assert (=> b!5631787 d!1779216))

(declare-fun d!1779218 () Bool)

(declare-fun lt!2262808 () Int)

(assert (=> d!1779218 (>= lt!2262808 0)))

(declare-fun e!3471669 () Int)

(assert (=> d!1779218 (= lt!2262808 e!3471669)))

(declare-fun c!989337 () Bool)

(assert (=> d!1779218 (= c!989337 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343)))))))))

(assert (=> d!1779218 (= (contextDepthTotal!209 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343))))) lt!2262808)))

(declare-fun b!5632867 () Bool)

(assert (=> b!5632867 (= e!3471669 (+ (regexDepthTotal!88 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343))))))) (contextDepthTotal!209 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 (h!69496 zl!343))))))))))))

(declare-fun b!5632868 () Bool)

(assert (=> b!5632868 (= e!3471669 1)))

(assert (= (and d!1779218 c!989337) b!5632867))

(assert (= (and d!1779218 (not c!989337)) b!5632868))

(declare-fun m!6603884 () Bool)

(assert (=> b!5632867 m!6603884))

(declare-fun m!6603886 () Bool)

(assert (=> b!5632867 m!6603886))

(assert (=> b!5631787 d!1779218))

(declare-fun bs!1303474 () Bool)

(declare-fun d!1779220 () Bool)

(assert (= bs!1303474 (and d!1779220 d!1779206)))

(declare-fun lambda!302764 () Int)

(assert (=> bs!1303474 (= lambda!302764 lambda!302762)))

(declare-fun bs!1303475 () Bool)

(assert (= bs!1303475 (and d!1779220 d!1778994)))

(assert (=> bs!1303475 (= lambda!302764 lambda!302735)))

(declare-fun bs!1303476 () Bool)

(assert (= bs!1303476 (and d!1779220 d!1779122)))

(assert (=> bs!1303476 (= lambda!302764 lambda!302745)))

(declare-fun bs!1303477 () Bool)

(assert (= bs!1303477 (and d!1779220 d!1779178)))

(assert (=> bs!1303477 (= lambda!302764 lambda!302753)))

(declare-fun bs!1303478 () Bool)

(assert (= bs!1303478 (and d!1779220 d!1779168)))

(assert (=> bs!1303478 (= lambda!302764 lambda!302752)))

(assert (=> d!1779220 (= (nullableZipper!1606 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326))) (exists!2187 (derivationStepZipper!1711 lt!2262569 (h!69497 s!2326)) lambda!302764))))

(declare-fun bs!1303479 () Bool)

(assert (= bs!1303479 d!1779220))

(assert (=> bs!1303479 m!6602696))

(declare-fun m!6603888 () Bool)

(assert (=> bs!1303479 m!6603888))

(assert (=> b!5631903 d!1779220))

(declare-fun d!1779222 () Bool)

(declare-fun res!2385298 () Bool)

(declare-fun e!3471670 () Bool)

(assert (=> d!1779222 (=> res!2385298 e!3471670)))

(assert (=> d!1779222 (= res!2385298 (is-Nil!63047 (exprs!5508 setElem!37621)))))

(assert (=> d!1779222 (= (forall!14778 (exprs!5508 setElem!37621) lambda!302691) e!3471670)))

(declare-fun b!5632869 () Bool)

(declare-fun e!3471671 () Bool)

(assert (=> b!5632869 (= e!3471670 e!3471671)))

(declare-fun res!2385299 () Bool)

(assert (=> b!5632869 (=> (not res!2385299) (not e!3471671))))

(assert (=> b!5632869 (= res!2385299 (dynLambda!24657 lambda!302691 (h!69495 (exprs!5508 setElem!37621))))))

(declare-fun b!5632870 () Bool)

(assert (=> b!5632870 (= e!3471671 (forall!14778 (t!376465 (exprs!5508 setElem!37621)) lambda!302691))))

(assert (= (and d!1779222 (not res!2385298)) b!5632869))

(assert (= (and b!5632869 res!2385299) b!5632870))

(declare-fun b_lambda!213003 () Bool)

(assert (=> (not b_lambda!213003) (not b!5632869)))

(declare-fun m!6603890 () Bool)

(assert (=> b!5632869 m!6603890))

(declare-fun m!6603892 () Bool)

(assert (=> b!5632870 m!6603892))

(assert (=> d!1778860 d!1779222))

(assert (=> bs!1303263 d!1778774))

(declare-fun bs!1303480 () Bool)

(declare-fun d!1779224 () Bool)

(assert (= bs!1303480 (and d!1779224 d!1778820)))

(declare-fun lambda!302765 () Int)

(assert (=> bs!1303480 (= lambda!302765 lambda!302683)))

(declare-fun bs!1303481 () Bool)

(assert (= bs!1303481 (and d!1779224 d!1778822)))

(assert (=> bs!1303481 (= lambda!302765 lambda!302686)))

(declare-fun bs!1303482 () Bool)

(assert (= bs!1303482 (and d!1779224 d!1779128)))

(assert (=> bs!1303482 (= lambda!302765 lambda!302747)))

(declare-fun bs!1303483 () Bool)

(assert (= bs!1303483 (and d!1779224 d!1778858)))

(assert (=> bs!1303483 (= lambda!302765 lambda!302690)))

(declare-fun bs!1303484 () Bool)

(assert (= bs!1303484 (and d!1779224 d!1778790)))

(assert (=> bs!1303484 (= lambda!302765 lambda!302680)))

(declare-fun bs!1303485 () Bool)

(assert (= bs!1303485 (and d!1779224 d!1778860)))

(assert (=> bs!1303485 (= lambda!302765 lambda!302691)))

(declare-fun bs!1303486 () Bool)

(assert (= bs!1303486 (and d!1779224 d!1779082)))

(assert (=> bs!1303486 (= lambda!302765 lambda!302741)))

(declare-fun bs!1303487 () Bool)

(assert (= bs!1303487 (and d!1779224 d!1779032)))

(assert (=> bs!1303487 (= lambda!302765 lambda!302739)))

(assert (=> d!1779224 (= (inv!82308 setElem!37627) (forall!14778 (exprs!5508 setElem!37627) lambda!302765))))

(declare-fun bs!1303488 () Bool)

(assert (= bs!1303488 d!1779224))

(declare-fun m!6603894 () Bool)

(assert (=> bs!1303488 m!6603894))

(assert (=> setNonEmpty!37627 d!1779224))

(assert (=> d!1778778 d!1778772))

(declare-fun d!1779226 () Bool)

(assert (=> d!1779226 (= (flatMap!1237 lt!2262592 lambda!302653) (dynLambda!24655 lambda!302653 lt!2262588))))

(assert (=> d!1779226 true))

(declare-fun _$13!2263 () Unit!156028)

(assert (=> d!1779226 (= (choose!42689 lt!2262592 lt!2262588 lambda!302653) _$13!2263)))

(declare-fun b_lambda!213005 () Bool)

(assert (=> (not b_lambda!213005) (not d!1779226)))

(declare-fun bs!1303489 () Bool)

(assert (= bs!1303489 d!1779226))

(assert (=> bs!1303489 m!6602672))

(assert (=> bs!1303489 m!6602822))

(assert (=> d!1778778 d!1779226))

(declare-fun d!1779228 () Bool)

(assert (=> d!1779228 (= (nullable!5656 (reg!15953 r!7292)) (nullableFct!1753 (reg!15953 r!7292)))))

(declare-fun bs!1303490 () Bool)

(assert (= bs!1303490 d!1779228))

(declare-fun m!6603896 () Bool)

(assert (=> bs!1303490 m!6603896))

(assert (=> b!5631891 d!1779228))

(declare-fun d!1779230 () Bool)

(assert (=> d!1779230 (= (flatMap!1237 lt!2262592 lambda!302671) (choose!42688 lt!2262592 lambda!302671))))

(declare-fun bs!1303491 () Bool)

(assert (= bs!1303491 d!1779230))

(declare-fun m!6603898 () Bool)

(assert (=> bs!1303491 m!6603898))

(assert (=> d!1778780 d!1779230))

(declare-fun d!1779232 () Bool)

(declare-fun c!989338 () Bool)

(assert (=> d!1779232 (= c!989338 (isEmpty!34891 (t!376467 s!2326)))))

(declare-fun e!3471672 () Bool)

(assert (=> d!1779232 (= (matchZipper!1762 (set.union lt!2262586 lt!2262576) (t!376467 s!2326)) e!3471672)))

(declare-fun b!5632871 () Bool)

(assert (=> b!5632871 (= e!3471672 (nullableZipper!1606 (set.union lt!2262586 lt!2262576)))))

(declare-fun b!5632872 () Bool)

(assert (=> b!5632872 (= e!3471672 (matchZipper!1762 (derivationStepZipper!1711 (set.union lt!2262586 lt!2262576) (head!11992 (t!376467 s!2326))) (tail!11087 (t!376467 s!2326))))))

(assert (= (and d!1779232 c!989338) b!5632871))

(assert (= (and d!1779232 (not c!989338)) b!5632872))

(assert (=> d!1779232 m!6602874))

(declare-fun m!6603900 () Bool)

(assert (=> b!5632871 m!6603900))

(assert (=> b!5632872 m!6602878))

(assert (=> b!5632872 m!6602878))

(declare-fun m!6603902 () Bool)

(assert (=> b!5632872 m!6603902))

(assert (=> b!5632872 m!6602882))

(assert (=> b!5632872 m!6603902))

(assert (=> b!5632872 m!6602882))

(declare-fun m!6603904 () Bool)

(assert (=> b!5632872 m!6603904))

(assert (=> d!1778800 d!1779232))

(assert (=> d!1778800 d!1778798))

(declare-fun e!3471673 () Bool)

(declare-fun d!1779234 () Bool)

(assert (=> d!1779234 (= (matchZipper!1762 (set.union lt!2262586 lt!2262576) (t!376467 s!2326)) e!3471673)))

(declare-fun res!2385300 () Bool)

(assert (=> d!1779234 (=> res!2385300 e!3471673)))

(assert (=> d!1779234 (= res!2385300 (matchZipper!1762 lt!2262586 (t!376467 s!2326)))))

(assert (=> d!1779234 true))

(declare-fun _$48!1256 () Unit!156028)

(assert (=> d!1779234 (= (choose!42692 lt!2262586 lt!2262576 (t!376467 s!2326)) _$48!1256)))

(declare-fun b!5632873 () Bool)

(assert (=> b!5632873 (= e!3471673 (matchZipper!1762 lt!2262576 (t!376467 s!2326)))))

(assert (= (and d!1779234 (not res!2385300)) b!5632873))

(assert (=> d!1779234 m!6602904))

(assert (=> d!1779234 m!6602634))

(assert (=> b!5632873 m!6602624))

(assert (=> d!1778800 d!1779234))

(assert (=> d!1778832 d!1778826))

(declare-fun d!1779236 () Bool)

(assert (=> d!1779236 (= (flatMap!1237 lt!2262569 lambda!302653) (dynLambda!24655 lambda!302653 lt!2262573))))

(assert (=> d!1779236 true))

(declare-fun _$13!2264 () Unit!156028)

(assert (=> d!1779236 (= (choose!42689 lt!2262569 lt!2262573 lambda!302653) _$13!2264)))

(declare-fun b_lambda!213007 () Bool)

(assert (=> (not b_lambda!213007) (not d!1779236)))

(declare-fun bs!1303492 () Bool)

(assert (= bs!1303492 d!1779236))

(assert (=> bs!1303492 m!6602652))

(assert (=> bs!1303492 m!6602992))

(assert (=> d!1778832 d!1779236))

(declare-fun bs!1303493 () Bool)

(declare-fun d!1779238 () Bool)

(assert (= bs!1303493 (and d!1779238 d!1779206)))

(declare-fun lambda!302766 () Int)

(assert (=> bs!1303493 (= lambda!302766 lambda!302762)))

(declare-fun bs!1303494 () Bool)

(assert (= bs!1303494 (and d!1779238 d!1778994)))

(assert (=> bs!1303494 (= lambda!302766 lambda!302735)))

(declare-fun bs!1303495 () Bool)

(assert (= bs!1303495 (and d!1779238 d!1779122)))

(assert (=> bs!1303495 (= lambda!302766 lambda!302745)))

(declare-fun bs!1303496 () Bool)

(assert (= bs!1303496 (and d!1779238 d!1779220)))

(assert (=> bs!1303496 (= lambda!302766 lambda!302764)))

(declare-fun bs!1303497 () Bool)

(assert (= bs!1303497 (and d!1779238 d!1779178)))

(assert (=> bs!1303497 (= lambda!302766 lambda!302753)))

(declare-fun bs!1303498 () Bool)

(assert (= bs!1303498 (and d!1779238 d!1779168)))

(assert (=> bs!1303498 (= lambda!302766 lambda!302752)))

(assert (=> d!1779238 (= (nullableZipper!1606 lt!2262571) (exists!2187 lt!2262571 lambda!302766))))

(declare-fun bs!1303499 () Bool)

(assert (= bs!1303499 d!1779238))

(declare-fun m!6603906 () Bool)

(assert (=> bs!1303499 m!6603906))

(assert (=> b!5631771 d!1779238))

(assert (=> d!1778840 d!1779046))

(declare-fun bs!1303500 () Bool)

(declare-fun b!5632882 () Bool)

(assert (= bs!1303500 (and b!5632882 b!5631497)))

(declare-fun lambda!302767 () Int)

(assert (=> bs!1303500 (not (= lambda!302767 lambda!302652))))

(declare-fun bs!1303501 () Bool)

(assert (= bs!1303501 (and b!5632882 b!5631684)))

(assert (=> bs!1303501 (not (= lambda!302767 lambda!302677))))

(declare-fun bs!1303502 () Bool)

(assert (= bs!1303502 (and b!5632882 d!1779196)))

(assert (=> bs!1303502 (not (= lambda!302767 lambda!302760))))

(declare-fun bs!1303503 () Bool)

(assert (= bs!1303503 (and b!5632882 d!1779024)))

(assert (=> bs!1303503 (not (= lambda!302767 lambda!302738))))

(declare-fun bs!1303504 () Bool)

(assert (= bs!1303504 (and b!5632882 b!5631688)))

(assert (=> bs!1303504 (= (and (= (reg!15953 (regOne!31761 r!7292)) (reg!15953 r!7292)) (= (regOne!31761 r!7292) r!7292)) (= lambda!302767 lambda!302676))))

(declare-fun bs!1303505 () Bool)

(assert (= bs!1303505 (and b!5632882 d!1778872)))

(assert (=> bs!1303505 (not (= lambda!302767 lambda!302700))))

(assert (=> bs!1303502 (not (= lambda!302767 lambda!302761))))

(assert (=> bs!1303505 (not (= lambda!302767 lambda!302699))))

(declare-fun bs!1303506 () Bool)

(assert (= bs!1303506 (and b!5632882 b!5632727)))

(assert (=> bs!1303506 (= (and (= (reg!15953 (regOne!31761 r!7292)) (reg!15953 (regTwo!31761 r!7292))) (= (regOne!31761 r!7292) (regTwo!31761 r!7292))) (= lambda!302767 lambda!302748))))

(declare-fun bs!1303507 () Bool)

(assert (= bs!1303507 (and b!5632882 b!5632723)))

(assert (=> bs!1303507 (not (= lambda!302767 lambda!302749))))

(assert (=> bs!1303500 (not (= lambda!302767 lambda!302651))))

(declare-fun bs!1303508 () Bool)

(assert (= bs!1303508 (and b!5632882 d!1778870)))

(assert (=> bs!1303508 (not (= lambda!302767 lambda!302694))))

(assert (=> b!5632882 true))

(assert (=> b!5632882 true))

(declare-fun bs!1303509 () Bool)

(declare-fun b!5632878 () Bool)

(assert (= bs!1303509 (and b!5632878 b!5631497)))

(declare-fun lambda!302768 () Int)

(assert (=> bs!1303509 (= (and (= (regOne!31760 (regOne!31761 r!7292)) (regOne!31760 r!7292)) (= (regTwo!31760 (regOne!31761 r!7292)) (regTwo!31760 r!7292))) (= lambda!302768 lambda!302652))))

(declare-fun bs!1303510 () Bool)

(assert (= bs!1303510 (and b!5632878 b!5631684)))

(assert (=> bs!1303510 (= (and (= (regOne!31760 (regOne!31761 r!7292)) (regOne!31760 r!7292)) (= (regTwo!31760 (regOne!31761 r!7292)) (regTwo!31760 r!7292))) (= lambda!302768 lambda!302677))))

(declare-fun bs!1303511 () Bool)

(assert (= bs!1303511 (and b!5632878 d!1779196)))

(assert (=> bs!1303511 (not (= lambda!302768 lambda!302760))))

(declare-fun bs!1303512 () Bool)

(assert (= bs!1303512 (and b!5632878 d!1779024)))

(assert (=> bs!1303512 (not (= lambda!302768 lambda!302738))))

(declare-fun bs!1303513 () Bool)

(assert (= bs!1303513 (and b!5632878 b!5631688)))

(assert (=> bs!1303513 (not (= lambda!302768 lambda!302676))))

(declare-fun bs!1303514 () Bool)

(assert (= bs!1303514 (and b!5632878 d!1778872)))

(assert (=> bs!1303514 (= (and (= (regOne!31760 (regOne!31761 r!7292)) (regOne!31760 r!7292)) (= (regTwo!31760 (regOne!31761 r!7292)) (regTwo!31760 r!7292))) (= lambda!302768 lambda!302700))))

(declare-fun bs!1303515 () Bool)

(assert (= bs!1303515 (and b!5632878 b!5632882)))

(assert (=> bs!1303515 (not (= lambda!302768 lambda!302767))))

(assert (=> bs!1303511 (= (and (= (regOne!31760 (regOne!31761 r!7292)) (regOne!31760 r!7292)) (= (regTwo!31760 (regOne!31761 r!7292)) (regTwo!31760 r!7292))) (= lambda!302768 lambda!302761))))

(assert (=> bs!1303514 (not (= lambda!302768 lambda!302699))))

(declare-fun bs!1303516 () Bool)

(assert (= bs!1303516 (and b!5632878 b!5632727)))

(assert (=> bs!1303516 (not (= lambda!302768 lambda!302748))))

(declare-fun bs!1303517 () Bool)

(assert (= bs!1303517 (and b!5632878 b!5632723)))

(assert (=> bs!1303517 (= (and (= (regOne!31760 (regOne!31761 r!7292)) (regOne!31760 (regTwo!31761 r!7292))) (= (regTwo!31760 (regOne!31761 r!7292)) (regTwo!31760 (regTwo!31761 r!7292)))) (= lambda!302768 lambda!302749))))

(assert (=> bs!1303509 (not (= lambda!302768 lambda!302651))))

(declare-fun bs!1303518 () Bool)

(assert (= bs!1303518 (and b!5632878 d!1778870)))

(assert (=> bs!1303518 (not (= lambda!302768 lambda!302694))))

(assert (=> b!5632878 true))

(assert (=> b!5632878 true))

(declare-fun b!5632874 () Bool)

(declare-fun c!989340 () Bool)

(assert (=> b!5632874 (= c!989340 (is-Union!15624 (regOne!31761 r!7292)))))

(declare-fun e!3471678 () Bool)

(declare-fun e!3471680 () Bool)

(assert (=> b!5632874 (= e!3471678 e!3471680)))

(declare-fun b!5632875 () Bool)

(declare-fun e!3471679 () Bool)

(declare-fun e!3471677 () Bool)

(assert (=> b!5632875 (= e!3471679 e!3471677)))

(declare-fun res!2385302 () Bool)

(assert (=> b!5632875 (= res!2385302 (not (is-EmptyLang!15624 (regOne!31761 r!7292))))))

(assert (=> b!5632875 (=> (not res!2385302) (not e!3471677))))

(declare-fun d!1779240 () Bool)

(declare-fun c!989342 () Bool)

(assert (=> d!1779240 (= c!989342 (is-EmptyExpr!15624 (regOne!31761 r!7292)))))

(assert (=> d!1779240 (= (matchRSpec!2727 (regOne!31761 r!7292) s!2326) e!3471679)))

(declare-fun b!5632876 () Bool)

(declare-fun e!3471675 () Bool)

(assert (=> b!5632876 (= e!3471680 e!3471675)))

(declare-fun c!989341 () Bool)

(assert (=> b!5632876 (= c!989341 (is-Star!15624 (regOne!31761 r!7292)))))

(declare-fun b!5632877 () Bool)

(assert (=> b!5632877 (= e!3471678 (= s!2326 (Cons!63049 (c!988948 (regOne!31761 r!7292)) Nil!63049)))))

(declare-fun call!424742 () Bool)

(assert (=> b!5632878 (= e!3471675 call!424742)))

(declare-fun b!5632879 () Bool)

(declare-fun res!2385301 () Bool)

(declare-fun e!3471676 () Bool)

(assert (=> b!5632879 (=> res!2385301 e!3471676)))

(declare-fun call!424743 () Bool)

(assert (=> b!5632879 (= res!2385301 call!424743)))

(assert (=> b!5632879 (= e!3471675 e!3471676)))

(declare-fun b!5632880 () Bool)

(declare-fun c!989339 () Bool)

(assert (=> b!5632880 (= c!989339 (is-ElementMatch!15624 (regOne!31761 r!7292)))))

(assert (=> b!5632880 (= e!3471677 e!3471678)))

(declare-fun bm!424737 () Bool)

(assert (=> bm!424737 (= call!424742 (Exists!2724 (ite c!989341 lambda!302767 lambda!302768)))))

(declare-fun b!5632881 () Bool)

(assert (=> b!5632881 (= e!3471679 call!424743)))

(assert (=> b!5632882 (= e!3471676 call!424742)))

(declare-fun b!5632883 () Bool)

(declare-fun e!3471674 () Bool)

(assert (=> b!5632883 (= e!3471680 e!3471674)))

(declare-fun res!2385303 () Bool)

(assert (=> b!5632883 (= res!2385303 (matchRSpec!2727 (regOne!31761 (regOne!31761 r!7292)) s!2326))))

(assert (=> b!5632883 (=> res!2385303 e!3471674)))

(declare-fun b!5632884 () Bool)

(assert (=> b!5632884 (= e!3471674 (matchRSpec!2727 (regTwo!31761 (regOne!31761 r!7292)) s!2326))))

(declare-fun bm!424738 () Bool)

(assert (=> bm!424738 (= call!424743 (isEmpty!34891 s!2326))))

(assert (= (and d!1779240 c!989342) b!5632881))

(assert (= (and d!1779240 (not c!989342)) b!5632875))

(assert (= (and b!5632875 res!2385302) b!5632880))

(assert (= (and b!5632880 c!989339) b!5632877))

(assert (= (and b!5632880 (not c!989339)) b!5632874))

(assert (= (and b!5632874 c!989340) b!5632883))

(assert (= (and b!5632874 (not c!989340)) b!5632876))

(assert (= (and b!5632883 (not res!2385303)) b!5632884))

(assert (= (and b!5632876 c!989341) b!5632879))

(assert (= (and b!5632876 (not c!989341)) b!5632878))

(assert (= (and b!5632879 (not res!2385301)) b!5632882))

(assert (= (or b!5632882 b!5632878) bm!424737))

(assert (= (or b!5632881 b!5632879) bm!424738))

(declare-fun m!6603908 () Bool)

(assert (=> bm!424737 m!6603908))

(declare-fun m!6603910 () Bool)

(assert (=> b!5632883 m!6603910))

(declare-fun m!6603912 () Bool)

(assert (=> b!5632884 m!6603912))

(assert (=> bm!424738 m!6602840))

(assert (=> b!5631689 d!1779240))

(declare-fun d!1779242 () Bool)

(assert (=> d!1779242 true))

(declare-fun setRes!37635 () Bool)

(assert (=> d!1779242 setRes!37635))

(declare-fun condSetEmpty!37635 () Bool)

(declare-fun res!2385304 () (Set Context!10016))

(assert (=> d!1779242 (= condSetEmpty!37635 (= res!2385304 (as set.empty (Set Context!10016))))))

(assert (=> d!1779242 (= (choose!42688 z!1189 lambda!302653) res!2385304)))

(declare-fun setIsEmpty!37635 () Bool)

(assert (=> setIsEmpty!37635 setRes!37635))

(declare-fun setElem!37635 () Context!10016)

(declare-fun e!3471681 () Bool)

(declare-fun setNonEmpty!37635 () Bool)

(declare-fun tp!1558934 () Bool)

(assert (=> setNonEmpty!37635 (= setRes!37635 (and tp!1558934 (inv!82308 setElem!37635) e!3471681))))

(declare-fun setRest!37635 () (Set Context!10016))

(assert (=> setNonEmpty!37635 (= res!2385304 (set.union (set.insert setElem!37635 (as set.empty (Set Context!10016))) setRest!37635))))

(declare-fun b!5632885 () Bool)

(declare-fun tp!1558935 () Bool)

(assert (=> b!5632885 (= e!3471681 tp!1558935)))

(assert (= (and d!1779242 condSetEmpty!37635) setIsEmpty!37635))

(assert (= (and d!1779242 (not condSetEmpty!37635)) setNonEmpty!37635))

(assert (= setNonEmpty!37635 b!5632885))

(declare-fun m!6603914 () Bool)

(assert (=> setNonEmpty!37635 m!6603914))

(assert (=> d!1778852 d!1779242))

(declare-fun bs!1303519 () Bool)

(declare-fun d!1779244 () Bool)

(assert (= bs!1303519 (and d!1779244 d!1779206)))

(declare-fun lambda!302769 () Int)

(assert (=> bs!1303519 (= lambda!302769 lambda!302762)))

(declare-fun bs!1303520 () Bool)

(assert (= bs!1303520 (and d!1779244 d!1778994)))

(assert (=> bs!1303520 (= lambda!302769 lambda!302735)))

(declare-fun bs!1303521 () Bool)

(assert (= bs!1303521 (and d!1779244 d!1779122)))

(assert (=> bs!1303521 (= lambda!302769 lambda!302745)))

(declare-fun bs!1303522 () Bool)

(assert (= bs!1303522 (and d!1779244 d!1779238)))

(assert (=> bs!1303522 (= lambda!302769 lambda!302766)))

(declare-fun bs!1303523 () Bool)

(assert (= bs!1303523 (and d!1779244 d!1779220)))

(assert (=> bs!1303523 (= lambda!302769 lambda!302764)))

(declare-fun bs!1303524 () Bool)

(assert (= bs!1303524 (and d!1779244 d!1779178)))

(assert (=> bs!1303524 (= lambda!302769 lambda!302753)))

(declare-fun bs!1303525 () Bool)

(assert (= bs!1303525 (and d!1779244 d!1779168)))

(assert (=> bs!1303525 (= lambda!302769 lambda!302752)))

(assert (=> d!1779244 (= (nullableZipper!1606 lt!2262581) (exists!2187 lt!2262581 lambda!302769))))

(declare-fun bs!1303526 () Bool)

(assert (= bs!1303526 d!1779244))

(declare-fun m!6603916 () Bool)

(assert (=> bs!1303526 m!6603916))

(assert (=> b!5631899 d!1779244))

(declare-fun d!1779246 () Bool)

(declare-fun c!989345 () Bool)

(assert (=> d!1779246 (= c!989345 (is-Nil!63048 lt!2262688))))

(declare-fun e!3471684 () (Set Context!10016))

(assert (=> d!1779246 (= (content!11400 lt!2262688) e!3471684)))

(declare-fun b!5632890 () Bool)

(assert (=> b!5632890 (= e!3471684 (as set.empty (Set Context!10016)))))

(declare-fun b!5632891 () Bool)

(assert (=> b!5632891 (= e!3471684 (set.union (set.insert (h!69496 lt!2262688) (as set.empty (Set Context!10016))) (content!11400 (t!376466 lt!2262688))))))

(assert (= (and d!1779246 c!989345) b!5632890))

(assert (= (and d!1779246 (not c!989345)) b!5632891))

(declare-fun m!6603918 () Bool)

(assert (=> b!5632891 m!6603918))

(declare-fun m!6603920 () Bool)

(assert (=> b!5632891 m!6603920))

(assert (=> b!5631647 d!1779246))

(assert (=> b!5631727 d!1779002))

(declare-fun b!5632892 () Bool)

(declare-fun e!3471685 () (Set Context!10016))

(assert (=> b!5632892 (= e!3471685 (as set.empty (Set Context!10016)))))

(declare-fun bm!424739 () Bool)

(declare-fun call!424744 () (Set Context!10016))

(assert (=> bm!424739 (= call!424744 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262573))))) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262573)))))) (h!69497 s!2326)))))

(declare-fun b!5632893 () Bool)

(declare-fun e!3471686 () Bool)

(assert (=> b!5632893 (= e!3471686 (nullable!5656 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262573)))))))))

(declare-fun b!5632894 () Bool)

(assert (=> b!5632894 (= e!3471685 call!424744)))

(declare-fun b!5632896 () Bool)

(declare-fun e!3471687 () (Set Context!10016))

(assert (=> b!5632896 (= e!3471687 e!3471685)))

(declare-fun c!989347 () Bool)

(assert (=> b!5632896 (= c!989347 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262573))))))))

(declare-fun d!1779248 () Bool)

(declare-fun c!989346 () Bool)

(assert (=> d!1779248 (= c!989346 e!3471686)))

(declare-fun res!2385305 () Bool)

(assert (=> d!1779248 (=> (not res!2385305) (not e!3471686))))

(assert (=> d!1779248 (= res!2385305 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262573))))))))

(assert (=> d!1779248 (= (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 lt!2262573))) (h!69497 s!2326)) e!3471687)))

(declare-fun b!5632895 () Bool)

(assert (=> b!5632895 (= e!3471687 (set.union call!424744 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262573)))))) (h!69497 s!2326))))))

(assert (= (and d!1779248 res!2385305) b!5632893))

(assert (= (and d!1779248 c!989346) b!5632895))

(assert (= (and d!1779248 (not c!989346)) b!5632896))

(assert (= (and b!5632896 c!989347) b!5632894))

(assert (= (and b!5632896 (not c!989347)) b!5632892))

(assert (= (or b!5632895 b!5632894) bm!424739))

(declare-fun m!6603922 () Bool)

(assert (=> bm!424739 m!6603922))

(declare-fun m!6603924 () Bool)

(assert (=> b!5632893 m!6603924))

(declare-fun m!6603926 () Bool)

(assert (=> b!5632895 m!6603926))

(assert (=> b!5631641 d!1779248))

(declare-fun b!5632897 () Bool)

(declare-fun e!3471688 () (Set Context!10016))

(assert (=> b!5632897 (= e!3471688 (as set.empty (Set Context!10016)))))

(declare-fun bm!424740 () Bool)

(declare-fun call!424745 () (Set Context!10016))

(assert (=> bm!424740 (= call!424745 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588))))) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588)))))) (h!69497 s!2326)))))

(declare-fun b!5632898 () Bool)

(declare-fun e!3471689 () Bool)

(assert (=> b!5632898 (= e!3471689 (nullable!5656 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588)))))))))

(declare-fun b!5632899 () Bool)

(assert (=> b!5632899 (= e!3471688 call!424745)))

(declare-fun b!5632901 () Bool)

(declare-fun e!3471690 () (Set Context!10016))

(assert (=> b!5632901 (= e!3471690 e!3471688)))

(declare-fun c!989349 () Bool)

(assert (=> b!5632901 (= c!989349 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588))))))))

(declare-fun d!1779250 () Bool)

(declare-fun c!989348 () Bool)

(assert (=> d!1779250 (= c!989348 e!3471689)))

(declare-fun res!2385306 () Bool)

(assert (=> d!1779250 (=> (not res!2385306) (not e!3471689))))

(assert (=> d!1779250 (= res!2385306 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588))))))))

(assert (=> d!1779250 (= (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 lt!2262588))) (h!69497 s!2326)) e!3471690)))

(declare-fun b!5632900 () Bool)

(assert (=> b!5632900 (= e!3471690 (set.union call!424745 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262588)))))) (h!69497 s!2326))))))

(assert (= (and d!1779250 res!2385306) b!5632898))

(assert (= (and d!1779250 c!989348) b!5632900))

(assert (= (and d!1779250 (not c!989348)) b!5632901))

(assert (= (and b!5632901 c!989349) b!5632899))

(assert (= (and b!5632901 (not c!989349)) b!5632897))

(assert (= (or b!5632900 b!5632899) bm!424740))

(declare-fun m!6603928 () Bool)

(assert (=> bm!424740 m!6603928))

(declare-fun m!6603930 () Bool)

(assert (=> b!5632898 m!6603930))

(declare-fun m!6603932 () Bool)

(assert (=> b!5632900 m!6603932))

(assert (=> b!5631636 d!1779250))

(declare-fun b!5632902 () Bool)

(declare-fun e!3471694 () (Set Context!10016))

(declare-fun call!424748 () (Set Context!10016))

(assert (=> b!5632902 (= e!3471694 call!424748)))

(declare-fun b!5632903 () Bool)

(declare-fun c!989352 () Bool)

(assert (=> b!5632903 (= c!989352 (is-Star!15624 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun e!3471691 () (Set Context!10016))

(assert (=> b!5632903 (= e!3471691 e!3471694)))

(declare-fun c!989351 () Bool)

(declare-fun call!424750 () (Set Context!10016))

(declare-fun call!424751 () List!63171)

(declare-fun bm!424741 () Bool)

(assert (=> bm!424741 (= call!424750 (derivationStepZipperDown!966 (ite c!989351 (regOne!31761 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))) (regOne!31760 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343))))))))) (ite c!989351 (ite (or c!989062 c!989064) lt!2262567 (Context!10017 call!424569)) (Context!10017 call!424751)) (h!69497 s!2326)))))

(declare-fun e!3471696 () Bool)

(declare-fun b!5632904 () Bool)

(assert (=> b!5632904 (= e!3471696 (nullable!5656 (regOne!31760 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343))))))))))))

(declare-fun b!5632905 () Bool)

(declare-fun e!3471695 () (Set Context!10016))

(declare-fun e!3471692 () (Set Context!10016))

(assert (=> b!5632905 (= e!3471695 e!3471692)))

(assert (=> b!5632905 (= c!989351 (is-Union!15624 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun bm!424742 () Bool)

(declare-fun call!424747 () (Set Context!10016))

(assert (=> bm!424742 (= call!424748 call!424747)))

(declare-fun c!989353 () Bool)

(declare-fun call!424749 () List!63171)

(declare-fun bm!424743 () Bool)

(declare-fun call!424746 () (Set Context!10016))

(declare-fun c!989350 () Bool)

(assert (=> bm!424743 (= call!424746 (derivationStepZipperDown!966 (ite c!989351 (regTwo!31761 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))) (ite c!989353 (regTwo!31760 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))) (ite c!989350 (regOne!31760 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))) (reg!15953 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343))))))))))) (ite (or c!989351 c!989353) (ite (or c!989062 c!989064) lt!2262567 (Context!10017 call!424569)) (Context!10017 call!424749)) (h!69497 s!2326)))))

(declare-fun b!5632906 () Bool)

(declare-fun e!3471693 () (Set Context!10016))

(assert (=> b!5632906 (= e!3471693 (set.union call!424750 call!424747))))

(declare-fun b!5632907 () Bool)

(assert (=> b!5632907 (= e!3471691 call!424748)))

(declare-fun b!5632908 () Bool)

(assert (=> b!5632908 (= c!989353 e!3471696)))

(declare-fun res!2385307 () Bool)

(assert (=> b!5632908 (=> (not res!2385307) (not e!3471696))))

(assert (=> b!5632908 (= res!2385307 (is-Concat!24469 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))))

(assert (=> b!5632908 (= e!3471692 e!3471693)))

(declare-fun bm!424744 () Bool)

(assert (=> bm!424744 (= call!424747 call!424746)))

(declare-fun bm!424745 () Bool)

(assert (=> bm!424745 (= call!424749 call!424751)))

(declare-fun bm!424746 () Bool)

(assert (=> bm!424746 (= call!424751 ($colon$colon!1674 (exprs!5508 (ite (or c!989062 c!989064) lt!2262567 (Context!10017 call!424569))) (ite (or c!989353 c!989350) (regTwo!31760 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))) (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343))))))))))))

(declare-fun b!5632909 () Bool)

(assert (=> b!5632909 (= e!3471692 (set.union call!424750 call!424746))))

(declare-fun c!989354 () Bool)

(declare-fun d!1779252 () Bool)

(assert (=> d!1779252 (= c!989354 (and (is-ElementMatch!15624 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))) (= (c!988948 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))) (h!69497 s!2326))))))

(assert (=> d!1779252 (= (derivationStepZipperDown!966 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343))))))) (ite (or c!989062 c!989064) lt!2262567 (Context!10017 call!424569)) (h!69497 s!2326)) e!3471695)))

(declare-fun b!5632910 () Bool)

(assert (=> b!5632910 (= e!3471695 (set.insert (ite (or c!989062 c!989064) lt!2262567 (Context!10017 call!424569)) (as set.empty (Set Context!10016))))))

(declare-fun b!5632911 () Bool)

(assert (=> b!5632911 (= e!3471693 e!3471691)))

(assert (=> b!5632911 (= c!989350 (is-Concat!24469 (ite c!989062 (regTwo!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989064 (regTwo!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (ite c!989061 (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))) (reg!15953 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))))

(declare-fun b!5632912 () Bool)

(assert (=> b!5632912 (= e!3471694 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779252 c!989354) b!5632910))

(assert (= (and d!1779252 (not c!989354)) b!5632905))

(assert (= (and b!5632905 c!989351) b!5632909))

(assert (= (and b!5632905 (not c!989351)) b!5632908))

(assert (= (and b!5632908 res!2385307) b!5632904))

(assert (= (and b!5632908 c!989353) b!5632906))

(assert (= (and b!5632908 (not c!989353)) b!5632911))

(assert (= (and b!5632911 c!989350) b!5632907))

(assert (= (and b!5632911 (not c!989350)) b!5632903))

(assert (= (and b!5632903 c!989352) b!5632902))

(assert (= (and b!5632903 (not c!989352)) b!5632912))

(assert (= (or b!5632907 b!5632902) bm!424745))

(assert (= (or b!5632907 b!5632902) bm!424742))

(assert (= (or b!5632906 bm!424745) bm!424746))

(assert (= (or b!5632906 bm!424742) bm!424744))

(assert (= (or b!5632909 bm!424744) bm!424743))

(assert (= (or b!5632909 b!5632906) bm!424741))

(declare-fun m!6603934 () Bool)

(assert (=> bm!424746 m!6603934))

(declare-fun m!6603936 () Bool)

(assert (=> bm!424741 m!6603936))

(declare-fun m!6603938 () Bool)

(assert (=> bm!424743 m!6603938))

(declare-fun m!6603940 () Bool)

(assert (=> b!5632904 m!6603940))

(declare-fun m!6603942 () Bool)

(assert (=> b!5632910 m!6603942))

(assert (=> bm!424563 d!1779252))

(declare-fun d!1779254 () Bool)

(assert (=> d!1779254 (= (isEmpty!34888 (tail!11088 (exprs!5508 (h!69496 zl!343)))) (is-Nil!63047 (tail!11088 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> b!5631760 d!1779254))

(declare-fun d!1779256 () Bool)

(assert (=> d!1779256 (= (tail!11088 (exprs!5508 (h!69496 zl!343))) (t!376465 (exprs!5508 (h!69496 zl!343))))))

(assert (=> b!5631760 d!1779256))

(declare-fun bs!1303527 () Bool)

(declare-fun d!1779258 () Bool)

(assert (= bs!1303527 (and d!1779258 d!1779206)))

(declare-fun lambda!302770 () Int)

(assert (=> bs!1303527 (= lambda!302770 lambda!302762)))

(declare-fun bs!1303528 () Bool)

(assert (= bs!1303528 (and d!1779258 d!1778994)))

(assert (=> bs!1303528 (= lambda!302770 lambda!302735)))

(declare-fun bs!1303529 () Bool)

(assert (= bs!1303529 (and d!1779258 d!1779122)))

(assert (=> bs!1303529 (= lambda!302770 lambda!302745)))

(declare-fun bs!1303530 () Bool)

(assert (= bs!1303530 (and d!1779258 d!1779220)))

(assert (=> bs!1303530 (= lambda!302770 lambda!302764)))

(declare-fun bs!1303531 () Bool)

(assert (= bs!1303531 (and d!1779258 d!1779178)))

(assert (=> bs!1303531 (= lambda!302770 lambda!302753)))

(declare-fun bs!1303532 () Bool)

(assert (= bs!1303532 (and d!1779258 d!1779168)))

(assert (=> bs!1303532 (= lambda!302770 lambda!302752)))

(declare-fun bs!1303533 () Bool)

(assert (= bs!1303533 (and d!1779258 d!1779238)))

(assert (=> bs!1303533 (= lambda!302770 lambda!302766)))

(declare-fun bs!1303534 () Bool)

(assert (= bs!1303534 (and d!1779258 d!1779244)))

(assert (=> bs!1303534 (= lambda!302770 lambda!302769)))

(assert (=> d!1779258 (= (nullableZipper!1606 lt!2262565) (exists!2187 lt!2262565 lambda!302770))))

(declare-fun bs!1303535 () Bool)

(assert (= bs!1303535 d!1779258))

(declare-fun m!6603944 () Bool)

(assert (=> bs!1303535 m!6603944))

(assert (=> b!5631767 d!1779258))

(declare-fun d!1779260 () Bool)

(declare-fun res!2385308 () Bool)

(declare-fun e!3471697 () Bool)

(assert (=> d!1779260 (=> res!2385308 e!3471697)))

(assert (=> d!1779260 (= res!2385308 (is-Nil!63047 lt!2262714))))

(assert (=> d!1779260 (= (forall!14778 lt!2262714 lambda!302686) e!3471697)))

(declare-fun b!5632913 () Bool)

(declare-fun e!3471698 () Bool)

(assert (=> b!5632913 (= e!3471697 e!3471698)))

(declare-fun res!2385309 () Bool)

(assert (=> b!5632913 (=> (not res!2385309) (not e!3471698))))

(assert (=> b!5632913 (= res!2385309 (dynLambda!24657 lambda!302686 (h!69495 lt!2262714)))))

(declare-fun b!5632914 () Bool)

(assert (=> b!5632914 (= e!3471698 (forall!14778 (t!376465 lt!2262714) lambda!302686))))

(assert (= (and d!1779260 (not res!2385308)) b!5632913))

(assert (= (and b!5632913 res!2385309) b!5632914))

(declare-fun b_lambda!213009 () Bool)

(assert (=> (not b_lambda!213009) (not b!5632913)))

(declare-fun m!6603946 () Bool)

(assert (=> b!5632913 m!6603946))

(declare-fun m!6603948 () Bool)

(assert (=> b!5632914 m!6603948))

(assert (=> d!1778822 d!1779260))

(assert (=> b!5631869 d!1778790))

(declare-fun bs!1303536 () Bool)

(declare-fun d!1779262 () Bool)

(assert (= bs!1303536 (and d!1779262 d!1778820)))

(declare-fun lambda!302771 () Int)

(assert (=> bs!1303536 (= lambda!302771 lambda!302683)))

(declare-fun bs!1303537 () Bool)

(assert (= bs!1303537 (and d!1779262 d!1778822)))

(assert (=> bs!1303537 (= lambda!302771 lambda!302686)))

(declare-fun bs!1303538 () Bool)

(assert (= bs!1303538 (and d!1779262 d!1779224)))

(assert (=> bs!1303538 (= lambda!302771 lambda!302765)))

(declare-fun bs!1303539 () Bool)

(assert (= bs!1303539 (and d!1779262 d!1779128)))

(assert (=> bs!1303539 (= lambda!302771 lambda!302747)))

(declare-fun bs!1303540 () Bool)

(assert (= bs!1303540 (and d!1779262 d!1778858)))

(assert (=> bs!1303540 (= lambda!302771 lambda!302690)))

(declare-fun bs!1303541 () Bool)

(assert (= bs!1303541 (and d!1779262 d!1778790)))

(assert (=> bs!1303541 (= lambda!302771 lambda!302680)))

(declare-fun bs!1303542 () Bool)

(assert (= bs!1303542 (and d!1779262 d!1778860)))

(assert (=> bs!1303542 (= lambda!302771 lambda!302691)))

(declare-fun bs!1303543 () Bool)

(assert (= bs!1303543 (and d!1779262 d!1779082)))

(assert (=> bs!1303543 (= lambda!302771 lambda!302741)))

(declare-fun bs!1303544 () Bool)

(assert (= bs!1303544 (and d!1779262 d!1779032)))

(assert (=> bs!1303544 (= lambda!302771 lambda!302739)))

(declare-fun lt!2262809 () List!63171)

(assert (=> d!1779262 (forall!14778 lt!2262809 lambda!302771)))

(declare-fun e!3471699 () List!63171)

(assert (=> d!1779262 (= lt!2262809 e!3471699)))

(declare-fun c!989355 () Bool)

(assert (=> d!1779262 (= c!989355 (is-Cons!63048 (t!376466 zl!343)))))

(assert (=> d!1779262 (= (unfocusZipperList!1052 (t!376466 zl!343)) lt!2262809)))

(declare-fun b!5632915 () Bool)

(assert (=> b!5632915 (= e!3471699 (Cons!63047 (generalisedConcat!1239 (exprs!5508 (h!69496 (t!376466 zl!343)))) (unfocusZipperList!1052 (t!376466 (t!376466 zl!343)))))))

(declare-fun b!5632916 () Bool)

(assert (=> b!5632916 (= e!3471699 Nil!63047)))

(assert (= (and d!1779262 c!989355) b!5632915))

(assert (= (and d!1779262 (not c!989355)) b!5632916))

(declare-fun m!6603950 () Bool)

(assert (=> d!1779262 m!6603950))

(declare-fun m!6603952 () Bool)

(assert (=> b!5632915 m!6603952))

(declare-fun m!6603954 () Bool)

(assert (=> b!5632915 m!6603954))

(assert (=> b!5631869 d!1779262))

(declare-fun b!5632917 () Bool)

(declare-fun e!3471704 () Bool)

(assert (=> b!5632917 (= e!3471704 (matchR!7809 (derivativeStep!4460 (regTwo!31760 r!7292) (head!11992 s!2326)) (tail!11087 s!2326)))))

(declare-fun b!5632918 () Bool)

(declare-fun e!3471706 () Bool)

(declare-fun e!3471703 () Bool)

(assert (=> b!5632918 (= e!3471706 e!3471703)))

(declare-fun res!2385311 () Bool)

(assert (=> b!5632918 (=> res!2385311 e!3471703)))

(declare-fun call!424752 () Bool)

(assert (=> b!5632918 (= res!2385311 call!424752)))

(declare-fun b!5632919 () Bool)

(assert (=> b!5632919 (= e!3471704 (nullable!5656 (regTwo!31760 r!7292)))))

(declare-fun bm!424747 () Bool)

(assert (=> bm!424747 (= call!424752 (isEmpty!34891 s!2326))))

(declare-fun b!5632920 () Bool)

(assert (=> b!5632920 (= e!3471703 (not (= (head!11992 s!2326) (c!988948 (regTwo!31760 r!7292)))))))

(declare-fun b!5632921 () Bool)

(declare-fun e!3471700 () Bool)

(assert (=> b!5632921 (= e!3471700 e!3471706)))

(declare-fun res!2385313 () Bool)

(assert (=> b!5632921 (=> (not res!2385313) (not e!3471706))))

(declare-fun lt!2262810 () Bool)

(assert (=> b!5632921 (= res!2385313 (not lt!2262810))))

(declare-fun b!5632922 () Bool)

(declare-fun res!2385312 () Bool)

(assert (=> b!5632922 (=> res!2385312 e!3471700)))

(declare-fun e!3471705 () Bool)

(assert (=> b!5632922 (= res!2385312 e!3471705)))

(declare-fun res!2385310 () Bool)

(assert (=> b!5632922 (=> (not res!2385310) (not e!3471705))))

(assert (=> b!5632922 (= res!2385310 lt!2262810)))

(declare-fun b!5632923 () Bool)

(declare-fun res!2385314 () Bool)

(assert (=> b!5632923 (=> (not res!2385314) (not e!3471705))))

(assert (=> b!5632923 (= res!2385314 (isEmpty!34891 (tail!11087 s!2326)))))

(declare-fun b!5632924 () Bool)

(declare-fun res!2385317 () Bool)

(assert (=> b!5632924 (=> (not res!2385317) (not e!3471705))))

(assert (=> b!5632924 (= res!2385317 (not call!424752))))

(declare-fun b!5632925 () Bool)

(assert (=> b!5632925 (= e!3471705 (= (head!11992 s!2326) (c!988948 (regTwo!31760 r!7292))))))

(declare-fun b!5632926 () Bool)

(declare-fun e!3471701 () Bool)

(assert (=> b!5632926 (= e!3471701 (not lt!2262810))))

(declare-fun b!5632927 () Bool)

(declare-fun e!3471702 () Bool)

(assert (=> b!5632927 (= e!3471702 e!3471701)))

(declare-fun c!989358 () Bool)

(assert (=> b!5632927 (= c!989358 (is-EmptyLang!15624 (regTwo!31760 r!7292)))))

(declare-fun b!5632928 () Bool)

(declare-fun res!2385316 () Bool)

(assert (=> b!5632928 (=> res!2385316 e!3471700)))

(assert (=> b!5632928 (= res!2385316 (not (is-ElementMatch!15624 (regTwo!31760 r!7292))))))

(assert (=> b!5632928 (= e!3471701 e!3471700)))

(declare-fun b!5632929 () Bool)

(assert (=> b!5632929 (= e!3471702 (= lt!2262810 call!424752))))

(declare-fun d!1779264 () Bool)

(assert (=> d!1779264 e!3471702))

(declare-fun c!989357 () Bool)

(assert (=> d!1779264 (= c!989357 (is-EmptyExpr!15624 (regTwo!31760 r!7292)))))

(assert (=> d!1779264 (= lt!2262810 e!3471704)))

(declare-fun c!989356 () Bool)

(assert (=> d!1779264 (= c!989356 (isEmpty!34891 s!2326))))

(assert (=> d!1779264 (validRegex!7360 (regTwo!31760 r!7292))))

(assert (=> d!1779264 (= (matchR!7809 (regTwo!31760 r!7292) s!2326) lt!2262810)))

(declare-fun b!5632930 () Bool)

(declare-fun res!2385315 () Bool)

(assert (=> b!5632930 (=> res!2385315 e!3471703)))

(assert (=> b!5632930 (= res!2385315 (not (isEmpty!34891 (tail!11087 s!2326))))))

(assert (= (and d!1779264 c!989356) b!5632919))

(assert (= (and d!1779264 (not c!989356)) b!5632917))

(assert (= (and d!1779264 c!989357) b!5632929))

(assert (= (and d!1779264 (not c!989357)) b!5632927))

(assert (= (and b!5632927 c!989358) b!5632926))

(assert (= (and b!5632927 (not c!989358)) b!5632928))

(assert (= (and b!5632928 (not res!2385316)) b!5632922))

(assert (= (and b!5632922 res!2385310) b!5632924))

(assert (= (and b!5632924 res!2385317) b!5632923))

(assert (= (and b!5632923 res!2385314) b!5632925))

(assert (= (and b!5632922 (not res!2385312)) b!5632921))

(assert (= (and b!5632921 res!2385313) b!5632918))

(assert (= (and b!5632918 (not res!2385311)) b!5632930))

(assert (= (and b!5632930 (not res!2385315)) b!5632920))

(assert (= (or b!5632929 b!5632918 b!5632924) bm!424747))

(assert (=> bm!424747 m!6602840))

(assert (=> b!5632925 m!6602842))

(assert (=> d!1779264 m!6602840))

(assert (=> d!1779264 m!6603502))

(assert (=> b!5632917 m!6602842))

(assert (=> b!5632917 m!6602842))

(declare-fun m!6603956 () Bool)

(assert (=> b!5632917 m!6603956))

(assert (=> b!5632917 m!6602846))

(assert (=> b!5632917 m!6603956))

(assert (=> b!5632917 m!6602846))

(declare-fun m!6603958 () Bool)

(assert (=> b!5632917 m!6603958))

(assert (=> b!5632923 m!6602846))

(assert (=> b!5632923 m!6602846))

(assert (=> b!5632923 m!6602850))

(assert (=> b!5632920 m!6602842))

(assert (=> b!5632930 m!6602846))

(assert (=> b!5632930 m!6602846))

(assert (=> b!5632930 m!6602850))

(assert (=> b!5632919 m!6603512))

(assert (=> b!5631953 d!1779264))

(declare-fun b!5632931 () Bool)

(declare-fun e!3471710 () (Set Context!10016))

(declare-fun call!424755 () (Set Context!10016))

(assert (=> b!5632931 (= e!3471710 call!424755)))

(declare-fun b!5632932 () Bool)

(declare-fun c!989361 () Bool)

(assert (=> b!5632932 (= c!989361 (is-Star!15624 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun e!3471707 () (Set Context!10016))

(assert (=> b!5632932 (= e!3471707 e!3471710)))

(declare-fun call!424757 () (Set Context!10016))

(declare-fun call!424758 () List!63171)

(declare-fun bm!424748 () Bool)

(declare-fun c!989360 () Bool)

(assert (=> bm!424748 (= call!424757 (derivationStepZipperDown!966 (ite c!989360 (regOne!31761 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))) (regOne!31760 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))) (ite c!989360 (ite c!989062 lt!2262567 (Context!10017 call!424571)) (Context!10017 call!424758)) (h!69497 s!2326)))))

(declare-fun b!5632933 () Bool)

(declare-fun e!3471712 () Bool)

(assert (=> b!5632933 (= e!3471712 (nullable!5656 (regOne!31760 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))))))

(declare-fun b!5632934 () Bool)

(declare-fun e!3471711 () (Set Context!10016))

(declare-fun e!3471708 () (Set Context!10016))

(assert (=> b!5632934 (= e!3471711 e!3471708)))

(assert (=> b!5632934 (= c!989360 (is-Union!15624 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun bm!424749 () Bool)

(declare-fun call!424754 () (Set Context!10016))

(assert (=> bm!424749 (= call!424755 call!424754)))

(declare-fun bm!424750 () Bool)

(declare-fun call!424756 () List!63171)

(declare-fun c!989359 () Bool)

(declare-fun c!989362 () Bool)

(declare-fun call!424753 () (Set Context!10016))

(assert (=> bm!424750 (= call!424753 (derivationStepZipperDown!966 (ite c!989360 (regTwo!31761 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))) (ite c!989362 (regTwo!31760 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))) (ite c!989359 (regOne!31760 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))) (reg!15953 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))))) (ite (or c!989360 c!989362) (ite c!989062 lt!2262567 (Context!10017 call!424571)) (Context!10017 call!424756)) (h!69497 s!2326)))))

(declare-fun b!5632935 () Bool)

(declare-fun e!3471709 () (Set Context!10016))

(assert (=> b!5632935 (= e!3471709 (set.union call!424757 call!424754))))

(declare-fun b!5632936 () Bool)

(assert (=> b!5632936 (= e!3471707 call!424755)))

(declare-fun b!5632937 () Bool)

(assert (=> b!5632937 (= c!989362 e!3471712)))

(declare-fun res!2385318 () Bool)

(assert (=> b!5632937 (=> (not res!2385318) (not e!3471712))))

(assert (=> b!5632937 (= res!2385318 (is-Concat!24469 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(assert (=> b!5632937 (= e!3471708 e!3471709)))

(declare-fun bm!424751 () Bool)

(assert (=> bm!424751 (= call!424754 call!424753)))

(declare-fun bm!424752 () Bool)

(assert (=> bm!424752 (= call!424756 call!424758)))

(declare-fun bm!424753 () Bool)

(assert (=> bm!424753 (= call!424758 ($colon$colon!1674 (exprs!5508 (ite c!989062 lt!2262567 (Context!10017 call!424571))) (ite (or c!989362 c!989359) (regTwo!31760 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))) (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))))))))

(declare-fun b!5632938 () Bool)

(assert (=> b!5632938 (= e!3471708 (set.union call!424757 call!424753))))

(declare-fun d!1779266 () Bool)

(declare-fun c!989363 () Bool)

(assert (=> d!1779266 (= c!989363 (and (is-ElementMatch!15624 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))) (= (c!988948 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))) (h!69497 s!2326))))))

(assert (=> d!1779266 (= (derivationStepZipperDown!966 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343))))) (ite c!989062 lt!2262567 (Context!10017 call!424571)) (h!69497 s!2326)) e!3471711)))

(declare-fun b!5632939 () Bool)

(assert (=> b!5632939 (= e!3471711 (set.insert (ite c!989062 lt!2262567 (Context!10017 call!424571)) (as set.empty (Set Context!10016))))))

(declare-fun b!5632940 () Bool)

(assert (=> b!5632940 (= e!3471709 e!3471707)))

(assert (=> b!5632940 (= c!989359 (is-Concat!24469 (ite c!989062 (regOne!31761 (h!69495 (exprs!5508 (h!69496 zl!343)))) (regOne!31760 (h!69495 (exprs!5508 (h!69496 zl!343)))))))))

(declare-fun b!5632941 () Bool)

(assert (=> b!5632941 (= e!3471710 (as set.empty (Set Context!10016)))))

(assert (= (and d!1779266 c!989363) b!5632939))

(assert (= (and d!1779266 (not c!989363)) b!5632934))

(assert (= (and b!5632934 c!989360) b!5632938))

(assert (= (and b!5632934 (not c!989360)) b!5632937))

(assert (= (and b!5632937 res!2385318) b!5632933))

(assert (= (and b!5632937 c!989362) b!5632935))

(assert (= (and b!5632937 (not c!989362)) b!5632940))

(assert (= (and b!5632940 c!989359) b!5632936))

(assert (= (and b!5632940 (not c!989359)) b!5632932))

(assert (= (and b!5632932 c!989361) b!5632931))

(assert (= (and b!5632932 (not c!989361)) b!5632941))

(assert (= (or b!5632936 b!5632931) bm!424752))

(assert (= (or b!5632936 b!5632931) bm!424749))

(assert (= (or b!5632935 bm!424752) bm!424753))

(assert (= (or b!5632935 bm!424749) bm!424751))

(assert (= (or b!5632938 bm!424751) bm!424750))

(assert (= (or b!5632938 b!5632935) bm!424748))

(declare-fun m!6603960 () Bool)

(assert (=> bm!424753 m!6603960))

(declare-fun m!6603962 () Bool)

(assert (=> bm!424748 m!6603962))

(declare-fun m!6603964 () Bool)

(assert (=> bm!424750 m!6603964))

(declare-fun m!6603966 () Bool)

(assert (=> b!5632933 m!6603966))

(declare-fun m!6603968 () Bool)

(assert (=> b!5632939 m!6603968))

(assert (=> bm!424561 d!1779266))

(declare-fun d!1779268 () Bool)

(assert (=> d!1779268 (= ($colon$colon!1674 (exprs!5508 lt!2262567) (ite (or c!989028 c!989025) (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (regTwo!31760 (regOne!31760 r!7292)))) (Cons!63047 (ite (or c!989028 c!989025) (regTwo!31760 (regTwo!31760 (regOne!31760 r!7292))) (regTwo!31760 (regOne!31760 r!7292))) (exprs!5508 lt!2262567)))))

(assert (=> bm!424545 d!1779268))

(declare-fun b!5632942 () Bool)

(declare-fun e!3471713 () (Set Context!10016))

(assert (=> b!5632942 (= e!3471713 (as set.empty (Set Context!10016)))))

(declare-fun bm!424754 () Bool)

(declare-fun call!424759 () (Set Context!10016))

(assert (=> bm!424754 (= call!424759 (derivationStepZipperDown!966 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262567))))) (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262567)))))) (h!69497 s!2326)))))

(declare-fun b!5632943 () Bool)

(declare-fun e!3471714 () Bool)

(assert (=> b!5632943 (= e!3471714 (nullable!5656 (h!69495 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262567)))))))))

(declare-fun b!5632944 () Bool)

(assert (=> b!5632944 (= e!3471713 call!424759)))

(declare-fun b!5632946 () Bool)

(declare-fun e!3471715 () (Set Context!10016))

(assert (=> b!5632946 (= e!3471715 e!3471713)))

(declare-fun c!989365 () Bool)

(assert (=> b!5632946 (= c!989365 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262567))))))))

(declare-fun d!1779270 () Bool)

(declare-fun c!989364 () Bool)

(assert (=> d!1779270 (= c!989364 e!3471714)))

(declare-fun res!2385319 () Bool)

(assert (=> d!1779270 (=> (not res!2385319) (not e!3471714))))

(assert (=> d!1779270 (= res!2385319 (is-Cons!63047 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262567))))))))

(assert (=> d!1779270 (= (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 lt!2262567))) (h!69497 s!2326)) e!3471715)))

(declare-fun b!5632945 () Bool)

(assert (=> b!5632945 (= e!3471715 (set.union call!424759 (derivationStepZipperUp!892 (Context!10017 (t!376465 (exprs!5508 (Context!10017 (t!376465 (exprs!5508 lt!2262567)))))) (h!69497 s!2326))))))

(assert (= (and d!1779270 res!2385319) b!5632943))

(assert (= (and d!1779270 c!989364) b!5632945))

(assert (= (and d!1779270 (not c!989364)) b!5632946))

(assert (= (and b!5632946 c!989365) b!5632944))

(assert (= (and b!5632946 (not c!989365)) b!5632942))

(assert (= (or b!5632945 b!5632944) bm!424754))

(declare-fun m!6603970 () Bool)

(assert (=> bm!424754 m!6603970))

(declare-fun m!6603972 () Bool)

(assert (=> b!5632943 m!6603972))

(declare-fun m!6603974 () Bool)

(assert (=> b!5632945 m!6603974))

(assert (=> b!5631931 d!1779270))

(declare-fun bs!1303545 () Bool)

(declare-fun d!1779272 () Bool)

(assert (= bs!1303545 (and d!1779272 d!1779206)))

(declare-fun lambda!302772 () Int)

(assert (=> bs!1303545 (= lambda!302772 lambda!302762)))

(declare-fun bs!1303546 () Bool)

(assert (= bs!1303546 (and d!1779272 d!1778994)))

(assert (=> bs!1303546 (= lambda!302772 lambda!302735)))

(declare-fun bs!1303547 () Bool)

(assert (= bs!1303547 (and d!1779272 d!1779122)))

(assert (=> bs!1303547 (= lambda!302772 lambda!302745)))

(declare-fun bs!1303548 () Bool)

(assert (= bs!1303548 (and d!1779272 d!1779220)))

(assert (=> bs!1303548 (= lambda!302772 lambda!302764)))

(declare-fun bs!1303549 () Bool)

(assert (= bs!1303549 (and d!1779272 d!1779258)))

(assert (=> bs!1303549 (= lambda!302772 lambda!302770)))

(declare-fun bs!1303550 () Bool)

(assert (= bs!1303550 (and d!1779272 d!1779178)))

(assert (=> bs!1303550 (= lambda!302772 lambda!302753)))

(declare-fun bs!1303551 () Bool)

(assert (= bs!1303551 (and d!1779272 d!1779168)))

(assert (=> bs!1303551 (= lambda!302772 lambda!302752)))

(declare-fun bs!1303552 () Bool)

(assert (= bs!1303552 (and d!1779272 d!1779238)))

(assert (=> bs!1303552 (= lambda!302772 lambda!302766)))

(declare-fun bs!1303553 () Bool)

(assert (= bs!1303553 (and d!1779272 d!1779244)))

(assert (=> bs!1303553 (= lambda!302772 lambda!302769)))

(assert (=> d!1779272 (= (nullableZipper!1606 lt!2262586) (exists!2187 lt!2262586 lambda!302772))))

(declare-fun bs!1303554 () Bool)

(assert (= bs!1303554 d!1779272))

(declare-fun m!6603976 () Bool)

(assert (=> bs!1303554 m!6603976))

(assert (=> b!5631773 d!1779272))

(declare-fun b!5632948 () Bool)

(declare-fun e!3471716 () Bool)

(declare-fun tp!1558940 () Bool)

(declare-fun tp!1558937 () Bool)

(assert (=> b!5632948 (= e!3471716 (and tp!1558940 tp!1558937))))

(declare-fun b!5632949 () Bool)

(declare-fun tp!1558936 () Bool)

(assert (=> b!5632949 (= e!3471716 tp!1558936)))

(declare-fun b!5632950 () Bool)

(declare-fun tp!1558938 () Bool)

(declare-fun tp!1558939 () Bool)

(assert (=> b!5632950 (= e!3471716 (and tp!1558938 tp!1558939))))

(assert (=> b!5632047 (= tp!1558854 e!3471716)))

(declare-fun b!5632947 () Bool)

(assert (=> b!5632947 (= e!3471716 tp_is_empty!40501)))

(assert (= (and b!5632047 (is-ElementMatch!15624 (h!69495 (exprs!5508 setElem!37621)))) b!5632947))

(assert (= (and b!5632047 (is-Concat!24469 (h!69495 (exprs!5508 setElem!37621)))) b!5632948))

(assert (= (and b!5632047 (is-Star!15624 (h!69495 (exprs!5508 setElem!37621)))) b!5632949))

(assert (= (and b!5632047 (is-Union!15624 (h!69495 (exprs!5508 setElem!37621)))) b!5632950))

(declare-fun b!5632951 () Bool)

(declare-fun e!3471717 () Bool)

(declare-fun tp!1558941 () Bool)

(declare-fun tp!1558942 () Bool)

(assert (=> b!5632951 (= e!3471717 (and tp!1558941 tp!1558942))))

(assert (=> b!5632047 (= tp!1558855 e!3471717)))

(assert (= (and b!5632047 (is-Cons!63047 (t!376465 (exprs!5508 setElem!37621)))) b!5632951))

(declare-fun b!5632953 () Bool)

(declare-fun e!3471718 () Bool)

(declare-fun tp!1558947 () Bool)

(declare-fun tp!1558944 () Bool)

(assert (=> b!5632953 (= e!3471718 (and tp!1558947 tp!1558944))))

(declare-fun b!5632954 () Bool)

(declare-fun tp!1558943 () Bool)

(assert (=> b!5632954 (= e!3471718 tp!1558943)))

(declare-fun b!5632955 () Bool)

(declare-fun tp!1558945 () Bool)

(declare-fun tp!1558946 () Bool)

(assert (=> b!5632955 (= e!3471718 (and tp!1558945 tp!1558946))))

(assert (=> b!5632014 (= tp!1558829 e!3471718)))

(declare-fun b!5632952 () Bool)

(assert (=> b!5632952 (= e!3471718 tp_is_empty!40501)))

(assert (= (and b!5632014 (is-ElementMatch!15624 (reg!15953 (regTwo!31760 r!7292)))) b!5632952))

(assert (= (and b!5632014 (is-Concat!24469 (reg!15953 (regTwo!31760 r!7292)))) b!5632953))

(assert (= (and b!5632014 (is-Star!15624 (reg!15953 (regTwo!31760 r!7292)))) b!5632954))

(assert (= (and b!5632014 (is-Union!15624 (reg!15953 (regTwo!31760 r!7292)))) b!5632955))

(declare-fun b!5632957 () Bool)

(declare-fun e!3471719 () Bool)

(declare-fun tp!1558952 () Bool)

(declare-fun tp!1558949 () Bool)

(assert (=> b!5632957 (= e!3471719 (and tp!1558952 tp!1558949))))

(declare-fun b!5632958 () Bool)

(declare-fun tp!1558948 () Bool)

(assert (=> b!5632958 (= e!3471719 tp!1558948)))

(declare-fun b!5632959 () Bool)

(declare-fun tp!1558950 () Bool)

(declare-fun tp!1558951 () Bool)

(assert (=> b!5632959 (= e!3471719 (and tp!1558950 tp!1558951))))

(assert (=> b!5632013 (= tp!1558833 e!3471719)))

(declare-fun b!5632956 () Bool)

(assert (=> b!5632956 (= e!3471719 tp_is_empty!40501)))

(assert (= (and b!5632013 (is-ElementMatch!15624 (regOne!31760 (regTwo!31760 r!7292)))) b!5632956))

(assert (= (and b!5632013 (is-Concat!24469 (regOne!31760 (regTwo!31760 r!7292)))) b!5632957))

(assert (= (and b!5632013 (is-Star!15624 (regOne!31760 (regTwo!31760 r!7292)))) b!5632958))

(assert (= (and b!5632013 (is-Union!15624 (regOne!31760 (regTwo!31760 r!7292)))) b!5632959))

(declare-fun b!5632961 () Bool)

(declare-fun e!3471720 () Bool)

(declare-fun tp!1558957 () Bool)

(declare-fun tp!1558954 () Bool)

(assert (=> b!5632961 (= e!3471720 (and tp!1558957 tp!1558954))))

(declare-fun b!5632962 () Bool)

(declare-fun tp!1558953 () Bool)

(assert (=> b!5632962 (= e!3471720 tp!1558953)))

(declare-fun b!5632963 () Bool)

(declare-fun tp!1558955 () Bool)

(declare-fun tp!1558956 () Bool)

(assert (=> b!5632963 (= e!3471720 (and tp!1558955 tp!1558956))))

(assert (=> b!5632013 (= tp!1558830 e!3471720)))

(declare-fun b!5632960 () Bool)

(assert (=> b!5632960 (= e!3471720 tp_is_empty!40501)))

(assert (= (and b!5632013 (is-ElementMatch!15624 (regTwo!31760 (regTwo!31760 r!7292)))) b!5632960))

(assert (= (and b!5632013 (is-Concat!24469 (regTwo!31760 (regTwo!31760 r!7292)))) b!5632961))

(assert (= (and b!5632013 (is-Star!15624 (regTwo!31760 (regTwo!31760 r!7292)))) b!5632962))

(assert (= (and b!5632013 (is-Union!15624 (regTwo!31760 (regTwo!31760 r!7292)))) b!5632963))

(declare-fun b!5632964 () Bool)

(declare-fun e!3471721 () Bool)

(declare-fun tp!1558958 () Bool)

(declare-fun tp!1558959 () Bool)

(assert (=> b!5632964 (= e!3471721 (and tp!1558958 tp!1558959))))

(assert (=> b!5632052 (= tp!1558861 e!3471721)))

(assert (= (and b!5632052 (is-Cons!63047 (exprs!5508 setElem!37627))) b!5632964))

(declare-fun b!5632966 () Bool)

(declare-fun e!3471722 () Bool)

(declare-fun tp!1558964 () Bool)

(declare-fun tp!1558961 () Bool)

(assert (=> b!5632966 (= e!3471722 (and tp!1558964 tp!1558961))))

(declare-fun b!5632967 () Bool)

(declare-fun tp!1558960 () Bool)

(assert (=> b!5632967 (= e!3471722 tp!1558960)))

(declare-fun b!5632968 () Bool)

(declare-fun tp!1558962 () Bool)

(declare-fun tp!1558963 () Bool)

(assert (=> b!5632968 (= e!3471722 (and tp!1558962 tp!1558963))))

(assert (=> b!5632002 (= tp!1558814 e!3471722)))

(declare-fun b!5632965 () Bool)

(assert (=> b!5632965 (= e!3471722 tp_is_empty!40501)))

(assert (= (and b!5632002 (is-ElementMatch!15624 (reg!15953 (regOne!31761 r!7292)))) b!5632965))

(assert (= (and b!5632002 (is-Concat!24469 (reg!15953 (regOne!31761 r!7292)))) b!5632966))

(assert (= (and b!5632002 (is-Star!15624 (reg!15953 (regOne!31761 r!7292)))) b!5632967))

(assert (= (and b!5632002 (is-Union!15624 (reg!15953 (regOne!31761 r!7292)))) b!5632968))

(declare-fun b!5632970 () Bool)

(declare-fun e!3471723 () Bool)

(declare-fun tp!1558969 () Bool)

(declare-fun tp!1558966 () Bool)

(assert (=> b!5632970 (= e!3471723 (and tp!1558969 tp!1558966))))

(declare-fun b!5632971 () Bool)

(declare-fun tp!1558965 () Bool)

(assert (=> b!5632971 (= e!3471723 tp!1558965)))

(declare-fun b!5632972 () Bool)

(declare-fun tp!1558967 () Bool)

(declare-fun tp!1558968 () Bool)

(assert (=> b!5632972 (= e!3471723 (and tp!1558967 tp!1558968))))

(assert (=> b!5632011 (= tp!1558826 e!3471723)))

(declare-fun b!5632969 () Bool)

(assert (=> b!5632969 (= e!3471723 tp_is_empty!40501)))

(assert (= (and b!5632011 (is-ElementMatch!15624 (regOne!31761 (regOne!31760 r!7292)))) b!5632969))

(assert (= (and b!5632011 (is-Concat!24469 (regOne!31761 (regOne!31760 r!7292)))) b!5632970))

(assert (= (and b!5632011 (is-Star!15624 (regOne!31761 (regOne!31760 r!7292)))) b!5632971))

(assert (= (and b!5632011 (is-Union!15624 (regOne!31761 (regOne!31760 r!7292)))) b!5632972))

(declare-fun b!5632974 () Bool)

(declare-fun e!3471724 () Bool)

(declare-fun tp!1558974 () Bool)

(declare-fun tp!1558971 () Bool)

(assert (=> b!5632974 (= e!3471724 (and tp!1558974 tp!1558971))))

(declare-fun b!5632975 () Bool)

(declare-fun tp!1558970 () Bool)

(assert (=> b!5632975 (= e!3471724 tp!1558970)))

(declare-fun b!5632976 () Bool)

(declare-fun tp!1558972 () Bool)

(declare-fun tp!1558973 () Bool)

(assert (=> b!5632976 (= e!3471724 (and tp!1558972 tp!1558973))))

(assert (=> b!5632011 (= tp!1558827 e!3471724)))

(declare-fun b!5632973 () Bool)

(assert (=> b!5632973 (= e!3471724 tp_is_empty!40501)))

(assert (= (and b!5632011 (is-ElementMatch!15624 (regTwo!31761 (regOne!31760 r!7292)))) b!5632973))

(assert (= (and b!5632011 (is-Concat!24469 (regTwo!31761 (regOne!31760 r!7292)))) b!5632974))

(assert (= (and b!5632011 (is-Star!15624 (regTwo!31761 (regOne!31760 r!7292)))) b!5632975))

(assert (= (and b!5632011 (is-Union!15624 (regTwo!31761 (regOne!31760 r!7292)))) b!5632976))

(declare-fun b!5632978 () Bool)

(declare-fun e!3471725 () Bool)

(declare-fun tp!1558979 () Bool)

(declare-fun tp!1558976 () Bool)

(assert (=> b!5632978 (= e!3471725 (and tp!1558979 tp!1558976))))

(declare-fun b!5632979 () Bool)

(declare-fun tp!1558975 () Bool)

(assert (=> b!5632979 (= e!3471725 tp!1558975)))

(declare-fun b!5632980 () Bool)

(declare-fun tp!1558977 () Bool)

(declare-fun tp!1558978 () Bool)

(assert (=> b!5632980 (= e!3471725 (and tp!1558977 tp!1558978))))

(assert (=> b!5632001 (= tp!1558818 e!3471725)))

(declare-fun b!5632977 () Bool)

(assert (=> b!5632977 (= e!3471725 tp_is_empty!40501)))

(assert (= (and b!5632001 (is-ElementMatch!15624 (regOne!31760 (regOne!31761 r!7292)))) b!5632977))

(assert (= (and b!5632001 (is-Concat!24469 (regOne!31760 (regOne!31761 r!7292)))) b!5632978))

(assert (= (and b!5632001 (is-Star!15624 (regOne!31760 (regOne!31761 r!7292)))) b!5632979))

(assert (= (and b!5632001 (is-Union!15624 (regOne!31760 (regOne!31761 r!7292)))) b!5632980))

(declare-fun b!5632982 () Bool)

(declare-fun e!3471726 () Bool)

(declare-fun tp!1558984 () Bool)

(declare-fun tp!1558981 () Bool)

(assert (=> b!5632982 (= e!3471726 (and tp!1558984 tp!1558981))))

(declare-fun b!5632983 () Bool)

(declare-fun tp!1558980 () Bool)

(assert (=> b!5632983 (= e!3471726 tp!1558980)))

(declare-fun b!5632984 () Bool)

(declare-fun tp!1558982 () Bool)

(declare-fun tp!1558983 () Bool)

(assert (=> b!5632984 (= e!3471726 (and tp!1558982 tp!1558983))))

(assert (=> b!5632001 (= tp!1558815 e!3471726)))

(declare-fun b!5632981 () Bool)

(assert (=> b!5632981 (= e!3471726 tp_is_empty!40501)))

(assert (= (and b!5632001 (is-ElementMatch!15624 (regTwo!31760 (regOne!31761 r!7292)))) b!5632981))

(assert (= (and b!5632001 (is-Concat!24469 (regTwo!31760 (regOne!31761 r!7292)))) b!5632982))

(assert (= (and b!5632001 (is-Star!15624 (regTwo!31760 (regOne!31761 r!7292)))) b!5632983))

(assert (= (and b!5632001 (is-Union!15624 (regTwo!31760 (regOne!31761 r!7292)))) b!5632984))

(declare-fun condSetEmpty!37636 () Bool)

(assert (=> setNonEmpty!37627 (= condSetEmpty!37636 (= setRest!37627 (as set.empty (Set Context!10016))))))

(declare-fun setRes!37636 () Bool)

(assert (=> setNonEmpty!37627 (= tp!1558860 setRes!37636)))

(declare-fun setIsEmpty!37636 () Bool)

(assert (=> setIsEmpty!37636 setRes!37636))

(declare-fun setNonEmpty!37636 () Bool)

(declare-fun tp!1558985 () Bool)

(declare-fun setElem!37636 () Context!10016)

(declare-fun e!3471727 () Bool)

(assert (=> setNonEmpty!37636 (= setRes!37636 (and tp!1558985 (inv!82308 setElem!37636) e!3471727))))

(declare-fun setRest!37636 () (Set Context!10016))

(assert (=> setNonEmpty!37636 (= setRest!37627 (set.union (set.insert setElem!37636 (as set.empty (Set Context!10016))) setRest!37636))))

(declare-fun b!5632985 () Bool)

(declare-fun tp!1558986 () Bool)

(assert (=> b!5632985 (= e!3471727 tp!1558986)))

(assert (= (and setNonEmpty!37627 condSetEmpty!37636) setIsEmpty!37636))

(assert (= (and setNonEmpty!37627 (not condSetEmpty!37636)) setNonEmpty!37636))

(assert (= setNonEmpty!37636 b!5632985))

(declare-fun m!6603978 () Bool)

(assert (=> setNonEmpty!37636 m!6603978))

(declare-fun b!5632987 () Bool)

(declare-fun e!3471728 () Bool)

(declare-fun tp!1558991 () Bool)

(declare-fun tp!1558988 () Bool)

(assert (=> b!5632987 (= e!3471728 (and tp!1558991 tp!1558988))))

(declare-fun b!5632988 () Bool)

(declare-fun tp!1558987 () Bool)

(assert (=> b!5632988 (= e!3471728 tp!1558987)))

(declare-fun b!5632989 () Bool)

(declare-fun tp!1558989 () Bool)

(declare-fun tp!1558990 () Bool)

(assert (=> b!5632989 (= e!3471728 (and tp!1558989 tp!1558990))))

(assert (=> b!5632010 (= tp!1558824 e!3471728)))

(declare-fun b!5632986 () Bool)

(assert (=> b!5632986 (= e!3471728 tp_is_empty!40501)))

(assert (= (and b!5632010 (is-ElementMatch!15624 (reg!15953 (regOne!31760 r!7292)))) b!5632986))

(assert (= (and b!5632010 (is-Concat!24469 (reg!15953 (regOne!31760 r!7292)))) b!5632987))

(assert (= (and b!5632010 (is-Star!15624 (reg!15953 (regOne!31760 r!7292)))) b!5632988))

(assert (= (and b!5632010 (is-Union!15624 (reg!15953 (regOne!31760 r!7292)))) b!5632989))

(declare-fun b!5632991 () Bool)

(declare-fun e!3471729 () Bool)

(declare-fun tp!1558996 () Bool)

(declare-fun tp!1558993 () Bool)

(assert (=> b!5632991 (= e!3471729 (and tp!1558996 tp!1558993))))

(declare-fun b!5632992 () Bool)

(declare-fun tp!1558992 () Bool)

(assert (=> b!5632992 (= e!3471729 tp!1558992)))

(declare-fun b!5632993 () Bool)

(declare-fun tp!1558994 () Bool)

(declare-fun tp!1558995 () Bool)

(assert (=> b!5632993 (= e!3471729 (and tp!1558994 tp!1558995))))

(assert (=> b!5632019 (= tp!1558836 e!3471729)))

(declare-fun b!5632990 () Bool)

(assert (=> b!5632990 (= e!3471729 tp_is_empty!40501)))

(assert (= (and b!5632019 (is-ElementMatch!15624 (regOne!31761 (reg!15953 r!7292)))) b!5632990))

(assert (= (and b!5632019 (is-Concat!24469 (regOne!31761 (reg!15953 r!7292)))) b!5632991))

(assert (= (and b!5632019 (is-Star!15624 (regOne!31761 (reg!15953 r!7292)))) b!5632992))

(assert (= (and b!5632019 (is-Union!15624 (regOne!31761 (reg!15953 r!7292)))) b!5632993))

(declare-fun b!5632995 () Bool)

(declare-fun e!3471730 () Bool)

(declare-fun tp!1559001 () Bool)

(declare-fun tp!1558998 () Bool)

(assert (=> b!5632995 (= e!3471730 (and tp!1559001 tp!1558998))))

(declare-fun b!5632996 () Bool)

(declare-fun tp!1558997 () Bool)

(assert (=> b!5632996 (= e!3471730 tp!1558997)))

(declare-fun b!5632997 () Bool)

(declare-fun tp!1558999 () Bool)

(declare-fun tp!1559000 () Bool)

(assert (=> b!5632997 (= e!3471730 (and tp!1558999 tp!1559000))))

(assert (=> b!5632019 (= tp!1558837 e!3471730)))

(declare-fun b!5632994 () Bool)

(assert (=> b!5632994 (= e!3471730 tp_is_empty!40501)))

(assert (= (and b!5632019 (is-ElementMatch!15624 (regTwo!31761 (reg!15953 r!7292)))) b!5632994))

(assert (= (and b!5632019 (is-Concat!24469 (regTwo!31761 (reg!15953 r!7292)))) b!5632995))

(assert (= (and b!5632019 (is-Star!15624 (regTwo!31761 (reg!15953 r!7292)))) b!5632996))

(assert (= (and b!5632019 (is-Union!15624 (regTwo!31761 (reg!15953 r!7292)))) b!5632997))

(declare-fun b!5632998 () Bool)

(declare-fun e!3471731 () Bool)

(declare-fun tp!1559002 () Bool)

(assert (=> b!5632998 (= e!3471731 (and tp_is_empty!40501 tp!1559002))))

(assert (=> b!5632046 (= tp!1558853 e!3471731)))

(assert (= (and b!5632046 (is-Cons!63049 (t!376467 (t!376467 s!2326)))) b!5632998))

(declare-fun b!5633000 () Bool)

(declare-fun e!3471732 () Bool)

(declare-fun tp!1559007 () Bool)

(declare-fun tp!1559004 () Bool)

(assert (=> b!5633000 (= e!3471732 (and tp!1559007 tp!1559004))))

(declare-fun b!5633001 () Bool)

(declare-fun tp!1559003 () Bool)

(assert (=> b!5633001 (= e!3471732 tp!1559003)))

(declare-fun b!5633002 () Bool)

(declare-fun tp!1559005 () Bool)

(declare-fun tp!1559006 () Bool)

(assert (=> b!5633002 (= e!3471732 (and tp!1559005 tp!1559006))))

(assert (=> b!5632003 (= tp!1558816 e!3471732)))

(declare-fun b!5632999 () Bool)

(assert (=> b!5632999 (= e!3471732 tp_is_empty!40501)))

(assert (= (and b!5632003 (is-ElementMatch!15624 (regOne!31761 (regOne!31761 r!7292)))) b!5632999))

(assert (= (and b!5632003 (is-Concat!24469 (regOne!31761 (regOne!31761 r!7292)))) b!5633000))

(assert (= (and b!5632003 (is-Star!15624 (regOne!31761 (regOne!31761 r!7292)))) b!5633001))

(assert (= (and b!5632003 (is-Union!15624 (regOne!31761 (regOne!31761 r!7292)))) b!5633002))

(declare-fun b!5633004 () Bool)

(declare-fun e!3471733 () Bool)

(declare-fun tp!1559012 () Bool)

(declare-fun tp!1559009 () Bool)

(assert (=> b!5633004 (= e!3471733 (and tp!1559012 tp!1559009))))

(declare-fun b!5633005 () Bool)

(declare-fun tp!1559008 () Bool)

(assert (=> b!5633005 (= e!3471733 tp!1559008)))

(declare-fun b!5633006 () Bool)

(declare-fun tp!1559010 () Bool)

(declare-fun tp!1559011 () Bool)

(assert (=> b!5633006 (= e!3471733 (and tp!1559010 tp!1559011))))

(assert (=> b!5632003 (= tp!1558817 e!3471733)))

(declare-fun b!5633003 () Bool)

(assert (=> b!5633003 (= e!3471733 tp_is_empty!40501)))

(assert (= (and b!5632003 (is-ElementMatch!15624 (regTwo!31761 (regOne!31761 r!7292)))) b!5633003))

(assert (= (and b!5632003 (is-Concat!24469 (regTwo!31761 (regOne!31761 r!7292)))) b!5633004))

(assert (= (and b!5632003 (is-Star!15624 (regTwo!31761 (regOne!31761 r!7292)))) b!5633005))

(assert (= (and b!5632003 (is-Union!15624 (regTwo!31761 (regOne!31761 r!7292)))) b!5633006))

(declare-fun b!5633007 () Bool)

(declare-fun e!3471734 () Bool)

(declare-fun tp!1559013 () Bool)

(declare-fun tp!1559014 () Bool)

(assert (=> b!5633007 (= e!3471734 (and tp!1559013 tp!1559014))))

(assert (=> b!5632033 (= tp!1558849 e!3471734)))

(assert (= (and b!5632033 (is-Cons!63047 (exprs!5508 (h!69496 (t!376466 zl!343))))) b!5633007))

(declare-fun b!5633009 () Bool)

(declare-fun e!3471735 () Bool)

(declare-fun tp!1559019 () Bool)

(declare-fun tp!1559016 () Bool)

(assert (=> b!5633009 (= e!3471735 (and tp!1559019 tp!1559016))))

(declare-fun b!5633010 () Bool)

(declare-fun tp!1559015 () Bool)

(assert (=> b!5633010 (= e!3471735 tp!1559015)))

(declare-fun b!5633011 () Bool)

(declare-fun tp!1559017 () Bool)

(declare-fun tp!1559018 () Bool)

(assert (=> b!5633011 (= e!3471735 (and tp!1559017 tp!1559018))))

(assert (=> b!5632024 (= tp!1558843 e!3471735)))

(declare-fun b!5633008 () Bool)

(assert (=> b!5633008 (= e!3471735 tp_is_empty!40501)))

(assert (= (and b!5632024 (is-ElementMatch!15624 (h!69495 (exprs!5508 (h!69496 zl!343))))) b!5633008))

(assert (= (and b!5632024 (is-Concat!24469 (h!69495 (exprs!5508 (h!69496 zl!343))))) b!5633009))

(assert (= (and b!5632024 (is-Star!15624 (h!69495 (exprs!5508 (h!69496 zl!343))))) b!5633010))

(assert (= (and b!5632024 (is-Union!15624 (h!69495 (exprs!5508 (h!69496 zl!343))))) b!5633011))

(declare-fun b!5633012 () Bool)

(declare-fun e!3471736 () Bool)

(declare-fun tp!1559020 () Bool)

(declare-fun tp!1559021 () Bool)

(assert (=> b!5633012 (= e!3471736 (and tp!1559020 tp!1559021))))

(assert (=> b!5632024 (= tp!1558844 e!3471736)))

(assert (= (and b!5632024 (is-Cons!63047 (t!376465 (exprs!5508 (h!69496 zl!343))))) b!5633012))

(declare-fun b!5633014 () Bool)

(declare-fun e!3471738 () Bool)

(declare-fun tp!1559022 () Bool)

(assert (=> b!5633014 (= e!3471738 tp!1559022)))

(declare-fun e!3471737 () Bool)

(declare-fun tp!1559023 () Bool)

(declare-fun b!5633013 () Bool)

(assert (=> b!5633013 (= e!3471737 (and (inv!82308 (h!69496 (t!376466 (t!376466 zl!343)))) e!3471738 tp!1559023))))

(assert (=> b!5632031 (= tp!1558850 e!3471737)))

(assert (= b!5633013 b!5633014))

(assert (= (and b!5632031 (is-Cons!63048 (t!376466 (t!376466 zl!343)))) b!5633013))

(declare-fun m!6603980 () Bool)

(assert (=> b!5633013 m!6603980))

(declare-fun b!5633016 () Bool)

(declare-fun e!3471739 () Bool)

(declare-fun tp!1559028 () Bool)

(declare-fun tp!1559025 () Bool)

(assert (=> b!5633016 (= e!3471739 (and tp!1559028 tp!1559025))))

(declare-fun b!5633017 () Bool)

(declare-fun tp!1559024 () Bool)

(assert (=> b!5633017 (= e!3471739 tp!1559024)))

(declare-fun b!5633018 () Bool)

(declare-fun tp!1559026 () Bool)

(declare-fun tp!1559027 () Bool)

(assert (=> b!5633018 (= e!3471739 (and tp!1559026 tp!1559027))))

(assert (=> b!5632009 (= tp!1558828 e!3471739)))

(declare-fun b!5633015 () Bool)

(assert (=> b!5633015 (= e!3471739 tp_is_empty!40501)))

(assert (= (and b!5632009 (is-ElementMatch!15624 (regOne!31760 (regOne!31760 r!7292)))) b!5633015))

(assert (= (and b!5632009 (is-Concat!24469 (regOne!31760 (regOne!31760 r!7292)))) b!5633016))

(assert (= (and b!5632009 (is-Star!15624 (regOne!31760 (regOne!31760 r!7292)))) b!5633017))

(assert (= (and b!5632009 (is-Union!15624 (regOne!31760 (regOne!31760 r!7292)))) b!5633018))

(declare-fun b!5633020 () Bool)

(declare-fun e!3471740 () Bool)

(declare-fun tp!1559033 () Bool)

(declare-fun tp!1559030 () Bool)

(assert (=> b!5633020 (= e!3471740 (and tp!1559033 tp!1559030))))

(declare-fun b!5633021 () Bool)

(declare-fun tp!1559029 () Bool)

(assert (=> b!5633021 (= e!3471740 tp!1559029)))

(declare-fun b!5633022 () Bool)

(declare-fun tp!1559031 () Bool)

(declare-fun tp!1559032 () Bool)

(assert (=> b!5633022 (= e!3471740 (and tp!1559031 tp!1559032))))

(assert (=> b!5632009 (= tp!1558825 e!3471740)))

(declare-fun b!5633019 () Bool)

(assert (=> b!5633019 (= e!3471740 tp_is_empty!40501)))

(assert (= (and b!5632009 (is-ElementMatch!15624 (regTwo!31760 (regOne!31760 r!7292)))) b!5633019))

(assert (= (and b!5632009 (is-Concat!24469 (regTwo!31760 (regOne!31760 r!7292)))) b!5633020))

(assert (= (and b!5632009 (is-Star!15624 (regTwo!31760 (regOne!31760 r!7292)))) b!5633021))

(assert (= (and b!5632009 (is-Union!15624 (regTwo!31760 (regOne!31760 r!7292)))) b!5633022))

(declare-fun b!5633024 () Bool)

(declare-fun e!3471741 () Bool)

(declare-fun tp!1559038 () Bool)

(declare-fun tp!1559035 () Bool)

(assert (=> b!5633024 (= e!3471741 (and tp!1559038 tp!1559035))))

(declare-fun b!5633025 () Bool)

(declare-fun tp!1559034 () Bool)

(assert (=> b!5633025 (= e!3471741 tp!1559034)))

(declare-fun b!5633026 () Bool)

(declare-fun tp!1559036 () Bool)

(declare-fun tp!1559037 () Bool)

(assert (=> b!5633026 (= e!3471741 (and tp!1559036 tp!1559037))))

(assert (=> b!5632018 (= tp!1558834 e!3471741)))

(declare-fun b!5633023 () Bool)

(assert (=> b!5633023 (= e!3471741 tp_is_empty!40501)))

(assert (= (and b!5632018 (is-ElementMatch!15624 (reg!15953 (reg!15953 r!7292)))) b!5633023))

(assert (= (and b!5632018 (is-Concat!24469 (reg!15953 (reg!15953 r!7292)))) b!5633024))

(assert (= (and b!5632018 (is-Star!15624 (reg!15953 (reg!15953 r!7292)))) b!5633025))

(assert (= (and b!5632018 (is-Union!15624 (reg!15953 (reg!15953 r!7292)))) b!5633026))

(declare-fun b!5633028 () Bool)

(declare-fun e!3471742 () Bool)

(declare-fun tp!1559043 () Bool)

(declare-fun tp!1559040 () Bool)

(assert (=> b!5633028 (= e!3471742 (and tp!1559043 tp!1559040))))

(declare-fun b!5633029 () Bool)

(declare-fun tp!1559039 () Bool)

(assert (=> b!5633029 (= e!3471742 tp!1559039)))

(declare-fun b!5633030 () Bool)

(declare-fun tp!1559041 () Bool)

(declare-fun tp!1559042 () Bool)

(assert (=> b!5633030 (= e!3471742 (and tp!1559041 tp!1559042))))

(assert (=> b!5632017 (= tp!1558838 e!3471742)))

(declare-fun b!5633027 () Bool)

(assert (=> b!5633027 (= e!3471742 tp_is_empty!40501)))

(assert (= (and b!5632017 (is-ElementMatch!15624 (regOne!31760 (reg!15953 r!7292)))) b!5633027))

(assert (= (and b!5632017 (is-Concat!24469 (regOne!31760 (reg!15953 r!7292)))) b!5633028))

(assert (= (and b!5632017 (is-Star!15624 (regOne!31760 (reg!15953 r!7292)))) b!5633029))

(assert (= (and b!5632017 (is-Union!15624 (regOne!31760 (reg!15953 r!7292)))) b!5633030))

(declare-fun b!5633032 () Bool)

(declare-fun e!3471743 () Bool)

(declare-fun tp!1559048 () Bool)

(declare-fun tp!1559045 () Bool)

(assert (=> b!5633032 (= e!3471743 (and tp!1559048 tp!1559045))))

(declare-fun b!5633033 () Bool)

(declare-fun tp!1559044 () Bool)

(assert (=> b!5633033 (= e!3471743 tp!1559044)))

(declare-fun b!5633034 () Bool)

(declare-fun tp!1559046 () Bool)

(declare-fun tp!1559047 () Bool)

(assert (=> b!5633034 (= e!3471743 (and tp!1559046 tp!1559047))))

(assert (=> b!5632017 (= tp!1558835 e!3471743)))

(declare-fun b!5633031 () Bool)

(assert (=> b!5633031 (= e!3471743 tp_is_empty!40501)))

(assert (= (and b!5632017 (is-ElementMatch!15624 (regTwo!31760 (reg!15953 r!7292)))) b!5633031))

(assert (= (and b!5632017 (is-Concat!24469 (regTwo!31760 (reg!15953 r!7292)))) b!5633032))

(assert (= (and b!5632017 (is-Star!15624 (regTwo!31760 (reg!15953 r!7292)))) b!5633033))

(assert (= (and b!5632017 (is-Union!15624 (regTwo!31760 (reg!15953 r!7292)))) b!5633034))

(declare-fun b!5633036 () Bool)

(declare-fun e!3471744 () Bool)

(declare-fun tp!1559053 () Bool)

(declare-fun tp!1559050 () Bool)

(assert (=> b!5633036 (= e!3471744 (and tp!1559053 tp!1559050))))

(declare-fun b!5633037 () Bool)

(declare-fun tp!1559049 () Bool)

(assert (=> b!5633037 (= e!3471744 tp!1559049)))

(declare-fun b!5633038 () Bool)

(declare-fun tp!1559051 () Bool)

(declare-fun tp!1559052 () Bool)

(assert (=> b!5633038 (= e!3471744 (and tp!1559051 tp!1559052))))

(assert (=> b!5632007 (= tp!1558821 e!3471744)))

(declare-fun b!5633035 () Bool)

(assert (=> b!5633035 (= e!3471744 tp_is_empty!40501)))

(assert (= (and b!5632007 (is-ElementMatch!15624 (regOne!31761 (regTwo!31761 r!7292)))) b!5633035))

(assert (= (and b!5632007 (is-Concat!24469 (regOne!31761 (regTwo!31761 r!7292)))) b!5633036))

(assert (= (and b!5632007 (is-Star!15624 (regOne!31761 (regTwo!31761 r!7292)))) b!5633037))

(assert (= (and b!5632007 (is-Union!15624 (regOne!31761 (regTwo!31761 r!7292)))) b!5633038))

(declare-fun b!5633040 () Bool)

(declare-fun e!3471745 () Bool)

(declare-fun tp!1559058 () Bool)

(declare-fun tp!1559055 () Bool)

(assert (=> b!5633040 (= e!3471745 (and tp!1559058 tp!1559055))))

(declare-fun b!5633041 () Bool)

(declare-fun tp!1559054 () Bool)

(assert (=> b!5633041 (= e!3471745 tp!1559054)))

(declare-fun b!5633042 () Bool)

(declare-fun tp!1559056 () Bool)

(declare-fun tp!1559057 () Bool)

(assert (=> b!5633042 (= e!3471745 (and tp!1559056 tp!1559057))))

(assert (=> b!5632007 (= tp!1558822 e!3471745)))

(declare-fun b!5633039 () Bool)

(assert (=> b!5633039 (= e!3471745 tp_is_empty!40501)))

(assert (= (and b!5632007 (is-ElementMatch!15624 (regTwo!31761 (regTwo!31761 r!7292)))) b!5633039))

(assert (= (and b!5632007 (is-Concat!24469 (regTwo!31761 (regTwo!31761 r!7292)))) b!5633040))

(assert (= (and b!5632007 (is-Star!15624 (regTwo!31761 (regTwo!31761 r!7292)))) b!5633041))

(assert (= (and b!5632007 (is-Union!15624 (regTwo!31761 (regTwo!31761 r!7292)))) b!5633042))

(declare-fun b!5633044 () Bool)

(declare-fun e!3471746 () Bool)

(declare-fun tp!1559063 () Bool)

(declare-fun tp!1559060 () Bool)

(assert (=> b!5633044 (= e!3471746 (and tp!1559063 tp!1559060))))

(declare-fun b!5633045 () Bool)

(declare-fun tp!1559059 () Bool)

(assert (=> b!5633045 (= e!3471746 tp!1559059)))

(declare-fun b!5633046 () Bool)

(declare-fun tp!1559061 () Bool)

(declare-fun tp!1559062 () Bool)

(assert (=> b!5633046 (= e!3471746 (and tp!1559061 tp!1559062))))

(assert (=> b!5632006 (= tp!1558819 e!3471746)))

(declare-fun b!5633043 () Bool)

(assert (=> b!5633043 (= e!3471746 tp_is_empty!40501)))

(assert (= (and b!5632006 (is-ElementMatch!15624 (reg!15953 (regTwo!31761 r!7292)))) b!5633043))

(assert (= (and b!5632006 (is-Concat!24469 (reg!15953 (regTwo!31761 r!7292)))) b!5633044))

(assert (= (and b!5632006 (is-Star!15624 (reg!15953 (regTwo!31761 r!7292)))) b!5633045))

(assert (= (and b!5632006 (is-Union!15624 (reg!15953 (regTwo!31761 r!7292)))) b!5633046))

(declare-fun b!5633048 () Bool)

(declare-fun e!3471747 () Bool)

(declare-fun tp!1559068 () Bool)

(declare-fun tp!1559065 () Bool)

(assert (=> b!5633048 (= e!3471747 (and tp!1559068 tp!1559065))))

(declare-fun b!5633049 () Bool)

(declare-fun tp!1559064 () Bool)

(assert (=> b!5633049 (= e!3471747 tp!1559064)))

(declare-fun b!5633050 () Bool)

(declare-fun tp!1559066 () Bool)

(declare-fun tp!1559067 () Bool)

(assert (=> b!5633050 (= e!3471747 (and tp!1559066 tp!1559067))))

(assert (=> b!5632015 (= tp!1558831 e!3471747)))

(declare-fun b!5633047 () Bool)

(assert (=> b!5633047 (= e!3471747 tp_is_empty!40501)))

(assert (= (and b!5632015 (is-ElementMatch!15624 (regOne!31761 (regTwo!31760 r!7292)))) b!5633047))

(assert (= (and b!5632015 (is-Concat!24469 (regOne!31761 (regTwo!31760 r!7292)))) b!5633048))

(assert (= (and b!5632015 (is-Star!15624 (regOne!31761 (regTwo!31760 r!7292)))) b!5633049))

(assert (= (and b!5632015 (is-Union!15624 (regOne!31761 (regTwo!31760 r!7292)))) b!5633050))

(declare-fun b!5633052 () Bool)

(declare-fun e!3471748 () Bool)

(declare-fun tp!1559073 () Bool)

(declare-fun tp!1559070 () Bool)

(assert (=> b!5633052 (= e!3471748 (and tp!1559073 tp!1559070))))

(declare-fun b!5633053 () Bool)

(declare-fun tp!1559069 () Bool)

(assert (=> b!5633053 (= e!3471748 tp!1559069)))

(declare-fun b!5633054 () Bool)

(declare-fun tp!1559071 () Bool)

(declare-fun tp!1559072 () Bool)

(assert (=> b!5633054 (= e!3471748 (and tp!1559071 tp!1559072))))

(assert (=> b!5632015 (= tp!1558832 e!3471748)))

(declare-fun b!5633051 () Bool)

(assert (=> b!5633051 (= e!3471748 tp_is_empty!40501)))

(assert (= (and b!5632015 (is-ElementMatch!15624 (regTwo!31761 (regTwo!31760 r!7292)))) b!5633051))

(assert (= (and b!5632015 (is-Concat!24469 (regTwo!31761 (regTwo!31760 r!7292)))) b!5633052))

(assert (= (and b!5632015 (is-Star!15624 (regTwo!31761 (regTwo!31760 r!7292)))) b!5633053))

(assert (= (and b!5632015 (is-Union!15624 (regTwo!31761 (regTwo!31760 r!7292)))) b!5633054))

(declare-fun b!5633056 () Bool)

(declare-fun e!3471749 () Bool)

(declare-fun tp!1559078 () Bool)

(declare-fun tp!1559075 () Bool)

(assert (=> b!5633056 (= e!3471749 (and tp!1559078 tp!1559075))))

(declare-fun b!5633057 () Bool)

(declare-fun tp!1559074 () Bool)

(assert (=> b!5633057 (= e!3471749 tp!1559074)))

(declare-fun b!5633058 () Bool)

(declare-fun tp!1559076 () Bool)

(declare-fun tp!1559077 () Bool)

(assert (=> b!5633058 (= e!3471749 (and tp!1559076 tp!1559077))))

(assert (=> b!5632005 (= tp!1558823 e!3471749)))

(declare-fun b!5633055 () Bool)

(assert (=> b!5633055 (= e!3471749 tp_is_empty!40501)))

(assert (= (and b!5632005 (is-ElementMatch!15624 (regOne!31760 (regTwo!31761 r!7292)))) b!5633055))

(assert (= (and b!5632005 (is-Concat!24469 (regOne!31760 (regTwo!31761 r!7292)))) b!5633056))

(assert (= (and b!5632005 (is-Star!15624 (regOne!31760 (regTwo!31761 r!7292)))) b!5633057))

(assert (= (and b!5632005 (is-Union!15624 (regOne!31760 (regTwo!31761 r!7292)))) b!5633058))

(declare-fun b!5633060 () Bool)

(declare-fun e!3471750 () Bool)

(declare-fun tp!1559083 () Bool)

(declare-fun tp!1559080 () Bool)

(assert (=> b!5633060 (= e!3471750 (and tp!1559083 tp!1559080))))

(declare-fun b!5633061 () Bool)

(declare-fun tp!1559079 () Bool)

(assert (=> b!5633061 (= e!3471750 tp!1559079)))

(declare-fun b!5633062 () Bool)

(declare-fun tp!1559081 () Bool)

(declare-fun tp!1559082 () Bool)

(assert (=> b!5633062 (= e!3471750 (and tp!1559081 tp!1559082))))

(assert (=> b!5632005 (= tp!1558820 e!3471750)))

(declare-fun b!5633059 () Bool)

(assert (=> b!5633059 (= e!3471750 tp_is_empty!40501)))

(assert (= (and b!5632005 (is-ElementMatch!15624 (regTwo!31760 (regTwo!31761 r!7292)))) b!5633059))

(assert (= (and b!5632005 (is-Concat!24469 (regTwo!31760 (regTwo!31761 r!7292)))) b!5633060))

(assert (= (and b!5632005 (is-Star!15624 (regTwo!31760 (regTwo!31761 r!7292)))) b!5633061))

(assert (= (and b!5632005 (is-Union!15624 (regTwo!31760 (regTwo!31761 r!7292)))) b!5633062))

(declare-fun b_lambda!213011 () Bool)

(assert (= b_lambda!212997 (or d!1778858 b_lambda!213011)))

(declare-fun bs!1303555 () Bool)

(declare-fun d!1779274 () Bool)

(assert (= bs!1303555 (and d!1779274 d!1778858)))

(assert (=> bs!1303555 (= (dynLambda!24657 lambda!302690 (h!69495 (exprs!5508 (h!69496 zl!343)))) (validRegex!7360 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(declare-fun m!6603982 () Bool)

(assert (=> bs!1303555 m!6603982))

(assert (=> b!5632705 d!1779274))

(declare-fun b_lambda!213013 () Bool)

(assert (= b_lambda!212999 (or d!1778790 b_lambda!213013)))

(declare-fun bs!1303556 () Bool)

(declare-fun d!1779276 () Bool)

(assert (= bs!1303556 (and d!1779276 d!1778790)))

(assert (=> bs!1303556 (= (dynLambda!24657 lambda!302680 (h!69495 (exprs!5508 (h!69496 zl!343)))) (validRegex!7360 (h!69495 (exprs!5508 (h!69496 zl!343)))))))

(assert (=> bs!1303556 m!6603982))

(assert (=> b!5632739 d!1779276))

(declare-fun b_lambda!213015 () Bool)

(assert (= b_lambda!213009 (or d!1778822 b_lambda!213015)))

(declare-fun bs!1303557 () Bool)

(declare-fun d!1779278 () Bool)

(assert (= bs!1303557 (and d!1779278 d!1778822)))

(assert (=> bs!1303557 (= (dynLambda!24657 lambda!302686 (h!69495 lt!2262714)) (validRegex!7360 (h!69495 lt!2262714)))))

(declare-fun m!6603984 () Bool)

(assert (=> bs!1303557 m!6603984))

(assert (=> b!5632913 d!1779278))

(declare-fun b_lambda!213017 () Bool)

(assert (= b_lambda!213001 (or d!1778820 b_lambda!213017)))

(declare-fun bs!1303558 () Bool)

(declare-fun d!1779280 () Bool)

(assert (= bs!1303558 (and d!1779280 d!1778820)))

(assert (=> bs!1303558 (= (dynLambda!24657 lambda!302683 (h!69495 (unfocusZipperList!1052 zl!343))) (validRegex!7360 (h!69495 (unfocusZipperList!1052 zl!343))))))

(declare-fun m!6603986 () Bool)

(assert (=> bs!1303558 m!6603986))

(assert (=> b!5632786 d!1779280))

(declare-fun b_lambda!213019 () Bool)

(assert (= b_lambda!212995 (or b!5631478 b_lambda!213019)))

(assert (=> d!1779060 d!1778880))

(declare-fun b_lambda!213021 () Bool)

(assert (= b_lambda!213005 (or b!5631478 b_lambda!213021)))

(assert (=> d!1779226 d!1778882))

(declare-fun b_lambda!213023 () Bool)

(assert (= b_lambda!213007 (or b!5631478 b_lambda!213023)))

(assert (=> d!1779236 d!1778884))

(declare-fun b_lambda!213025 () Bool)

(assert (= b_lambda!213003 (or d!1778860 b_lambda!213025)))

(declare-fun bs!1303559 () Bool)

(declare-fun d!1779282 () Bool)

(assert (= bs!1303559 (and d!1779282 d!1778860)))

(assert (=> bs!1303559 (= (dynLambda!24657 lambda!302691 (h!69495 (exprs!5508 setElem!37621))) (validRegex!7360 (h!69495 (exprs!5508 setElem!37621))))))

(declare-fun m!6603988 () Bool)

(assert (=> bs!1303559 m!6603988))

(assert (=> b!5632869 d!1779282))

(push 1)

(assert (not bs!1303556))

(assert (not b!5632985))

(assert (not b!5632871))

(assert (not b!5632711))

(assert (not b!5633038))

(assert (not d!1779038))

(assert (not b!5632976))

(assert (not bm!424728))

(assert (not bm!424640))

(assert (not b!5632503))

(assert (not bm!424704))

(assert (not b!5633018))

(assert (not d!1779162))

(assert (not b!5632953))

(assert (not b!5632978))

(assert (not bm!424667))

(assert (not b!5632893))

(assert (not b!5633058))

(assert (not bm!424696))

(assert (not d!1778998))

(assert (not d!1778996))

(assert (not b!5632653))

(assert (not bm!424672))

(assert (not b!5632728))

(assert (not d!1779192))

(assert (not b!5633062))

(assert (not b!5632992))

(assert (not b!5633028))

(assert (not b!5632742))

(assert (not b!5632945))

(assert (not bm!424638))

(assert (not bm!424635))

(assert (not d!1779224))

(assert (not d!1779178))

(assert (not b!5632522))

(assert (not b!5632575))

(assert (not b!5632773))

(assert (not b!5633005))

(assert (not d!1779090))

(assert (not b!5632698))

(assert (not bm!424695))

(assert (not b!5633010))

(assert (not b!5632842))

(assert (not b!5632827))

(assert (not d!1779152))

(assert (not b!5632914))

(assert (not b!5633033))

(assert (not bm!424736))

(assert (not b!5633048))

(assert (not b!5632627))

(assert (not b!5633044))

(assert (not d!1779016))

(assert (not bm!424636))

(assert (not bm!424722))

(assert (not bm!424666))

(assert (not bm!424686))

(assert (not b!5632712))

(assert (not d!1779028))

(assert (not b!5632873))

(assert (not b!5633053))

(assert (not b!5632520))

(assert (not bm!424656))

(assert (not b!5632558))

(assert (not b!5633057))

(assert (not b!5633032))

(assert (not b!5632729))

(assert (not b!5632432))

(assert (not bm!424678))

(assert (not bm!424737))

(assert (not b!5632837))

(assert (not b!5632527))

(assert (not d!1779160))

(assert (not b!5632951))

(assert (not b!5632717))

(assert (not d!1779104))

(assert (not d!1779128))

(assert (not d!1779096))

(assert (not setNonEmpty!37635))

(assert (not d!1779138))

(assert (not b!5632553))

(assert (not b!5632933))

(assert (not b!5633054))

(assert (not bm!424733))

(assert (not bm!424661))

(assert (not bm!424679))

(assert (not b!5632740))

(assert (not b!5632563))

(assert (not d!1779072))

(assert (not b!5632884))

(assert (not d!1779208))

(assert (not b!5632904))

(assert (not b!5632757))

(assert (not d!1779168))

(assert (not b!5632930))

(assert (not b!5633040))

(assert (not b!5632751))

(assert (not b!5632608))

(assert (not d!1779124))

(assert (not b!5633021))

(assert (not b!5632980))

(assert (not d!1779172))

(assert (not b!5632530))

(assert (not b!5632968))

(assert (not bm!424663))

(assert (not b!5632556))

(assert (not b!5632541))

(assert (not b!5632995))

(assert (not setNonEmpty!37634))

(assert (not d!1779102))

(assert (not b!5632489))

(assert (not b!5632478))

(assert (not b!5633037))

(assert (not d!1779070))

(assert (not b_lambda!213011))

(assert (not bm!424653))

(assert (not d!1779032))

(assert (not bm!424649))

(assert (not b!5632531))

(assert (not b!5632753))

(assert (not b!5632996))

(assert (not b!5632950))

(assert (not b!5632979))

(assert (not bm!424645))

(assert (not d!1779000))

(assert (not b!5632779))

(assert (not d!1779262))

(assert (not bm!424657))

(assert (not bm!424726))

(assert (not bs!1303558))

(assert (not d!1779226))

(assert (not b!5632982))

(assert (not d!1779082))

(assert (not d!1779194))

(assert (not b!5632772))

(assert (not b!5632787))

(assert (not b!5632496))

(assert (not d!1779232))

(assert (not b!5633012))

(assert (not d!1779236))

(assert (not d!1779020))

(assert (not d!1779148))

(assert (not b!5632775))

(assert (not b!5632839))

(assert (not b!5632566))

(assert (not b_lambda!213025))

(assert (not bm!424720))

(assert (not b!5632857))

(assert (not b!5632431))

(assert (not b!5632435))

(assert (not b!5632895))

(assert (not d!1778994))

(assert (not b!5633007))

(assert (not bm!424660))

(assert (not b!5632870))

(assert (not b!5633022))

(assert (not b!5632475))

(assert (not b_lambda!213013))

(assert (not b!5632699))

(assert (not b!5632963))

(assert (not b!5632774))

(assert (not b!5632984))

(assert (not b!5632983))

(assert (not bm!424646))

(assert (not bm!424716))

(assert (not b!5633026))

(assert (not b!5632586))

(assert (not b!5633025))

(assert (not d!1779114))

(assert (not b!5632709))

(assert (not b!5632817))

(assert (not bm!424725))

(assert (not bm!424719))

(assert (not bm!424650))

(assert (not bm!424648))

(assert (not b!5632440))

(assert (not b!5633052))

(assert (not b!5632844))

(assert (not b_lambda!213021))

(assert (not b!5632872))

(assert (not bm!424735))

(assert (not b!5633002))

(assert (not d!1779026))

(assert (not b!5632438))

(assert (not b!5632706))

(assert (not b!5633060))

(assert (not b!5632948))

(assert (not b!5632619))

(assert (not b!5633046))

(assert (not bm!424706))

(assert (not d!1779210))

(assert (not b!5632677))

(assert (not bm!424705))

(assert (not bm!424748))

(assert (not b!5633056))

(assert (not b!5632685))

(assert (not bs!1303555))

(assert (not d!1779078))

(assert (not d!1779206))

(assert (not b_lambda!212977))

(assert (not b!5632915))

(assert (not b!5632749))

(assert (not b!5632676))

(assert (not d!1779068))

(assert (not b!5632517))

(assert (not bm!424741))

(assert tp_is_empty!40501)

(assert (not b!5632796))

(assert (not d!1779100))

(assert (not bm!424730))

(assert (not b!5632898))

(assert (not d!1779126))

(assert (not bm!424753))

(assert (not b!5632763))

(assert (not d!1779188))

(assert (not bm!424681))

(assert (not b!5632535))

(assert (not d!1779234))

(assert (not b!5632718))

(assert (not b!5632993))

(assert (not bm!424711))

(assert (not bm!424684))

(assert (not b!5632919))

(assert (not bm!424727))

(assert (not b!5632790))

(assert (not bm!424701))

(assert (not b!5632528))

(assert (not b!5632771))

(assert (not b!5632813))

(assert (not b!5633017))

(assert (not b!5633045))

(assert (not bm!424643))

(assert (not b!5632770))

(assert (not b!5632970))

(assert (not b!5633000))

(assert (not b!5632538))

(assert (not bm!424651))

(assert (not bm!424738))

(assert (not b!5632752))

(assert (not bs!1303557))

(assert (not d!1779230))

(assert (not b!5632959))

(assert (not b!5633013))

(assert (not b!5632885))

(assert (not bm!424673))

(assert (not d!1779144))

(assert (not b!5633001))

(assert (not b!5632972))

(assert (not b_lambda!212979))

(assert (not d!1779142))

(assert (not b!5633006))

(assert (not b!5633011))

(assert (not d!1779238))

(assert (not bm!424702))

(assert (not b!5632707))

(assert (not d!1779220))

(assert (not d!1779098))

(assert (not d!1779190))

(assert (not b!5632801))

(assert (not d!1779182))

(assert (not b!5632989))

(assert (not b!5632626))

(assert (not b!5632955))

(assert (not b!5632688))

(assert (not d!1779112))

(assert (not d!1779116))

(assert (not b!5633004))

(assert (not b!5633041))

(assert (not d!1779258))

(assert (not b!5632732))

(assert (not b!5632687))

(assert (not b_lambda!213023))

(assert (not b!5632997))

(assert (not d!1779184))

(assert (not d!1779108))

(assert (not b!5632715))

(assert (not d!1779122))

(assert (not b!5632434))

(assert (not bm!424747))

(assert (not bm!424714))

(assert (not d!1779024))

(assert (not bm!424713))

(assert (not b!5632917))

(assert (not setNonEmpty!37636))

(assert (not b!5632943))

(assert (not b!5632750))

(assert (not d!1779110))

(assert (not d!1779174))

(assert (not b!5632743))

(assert (not b!5632788))

(assert (not b!5633042))

(assert (not b!5632858))

(assert (not d!1779060))

(assert (not b!5632867))

(assert (not b!5632920))

(assert (not bm!424703))

(assert (not d!1779264))

(assert (not b!5632961))

(assert (not b!5632514))

(assert (not b!5632710))

(assert (not b_lambda!213015))

(assert (not b!5632776))

(assert (not b!5632974))

(assert (not d!1779228))

(assert (not b!5633020))

(assert (not b!5632949))

(assert (not b!5632747))

(assert (not bm!424740))

(assert (not b!5632883))

(assert (not b!5632923))

(assert (not b!5633036))

(assert (not b!5633024))

(assert (not bm!424746))

(assert (not b!5632791))

(assert (not bs!1303559))

(assert (not b!5632552))

(assert (not b!5632958))

(assert (not b!5633009))

(assert (not b_lambda!213017))

(assert (not d!1779272))

(assert (not b!5632848))

(assert (not b!5632445))

(assert (not bm!424750))

(assert (not b!5632998))

(assert (not b!5633014))

(assert (not bm!424625))

(assert (not b!5632925))

(assert (not b!5632762))

(assert (not b!5632891))

(assert (not b!5632708))

(assert (not b!5633050))

(assert (not setNonEmpty!37633))

(assert (not b!5633049))

(assert (not b!5633061))

(assert (not b!5632597))

(assert (not b!5632967))

(assert (not b!5632971))

(assert (not bm!424743))

(assert (not bm!424709))

(assert (not bm!424687))

(assert (not b!5632826))

(assert (not b!5633030))

(assert (not b!5632804))

(assert (not b!5632988))

(assert (not b!5632529))

(assert (not b!5632537))

(assert (not b!5632962))

(assert (not d!1779214))

(assert (not b!5632987))

(assert (not b!5632900))

(assert (not d!1779244))

(assert (not d!1779170))

(assert (not bm!424675))

(assert (not b!5632991))

(assert (not b!5632964))

(assert (not b_lambda!212981))

(assert (not b!5632975))

(assert (not b!5632746))

(assert (not b!5632954))

(assert (not bm!424708))

(assert (not d!1779140))

(assert (not bm!424712))

(assert (not b!5632497))

(assert (not b!5633016))

(assert (not b!5632500))

(assert (not b!5632814))

(assert (not d!1779196))

(assert (not bm!424659))

(assert (not b!5633034))

(assert (not b!5632550))

(assert (not b!5632686))

(assert (not d!1779154))

(assert (not d!1779118))

(assert (not b!5632794))

(assert (not bm!424669))

(assert (not bm!424739))

(assert (not b!5632966))

(assert (not d!1779012))

(assert (not b!5632516))

(assert (not d!1779014))

(assert (not b_lambda!213019))

(assert (not bm!424754))

(assert (not b!5633029))

(assert (not b!5632957))

(assert (not b!5632536))

(assert (not b!5632628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

