; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703230 () Bool)

(assert start!703230)

(declare-fun b!7239592 () Bool)

(assert (=> b!7239592 true))

(declare-fun b!7239593 () Bool)

(assert (=> b!7239593 true))

(declare-fun bs!1903853 () Bool)

(assert (= bs!1903853 (and b!7239593 b!7239592)))

(declare-fun lambda!441450 () Int)

(declare-fun lambda!441448 () Int)

(declare-datatypes ((C!37368 0))(
  ( (C!37369 (val!28632 Int)) )
))
(declare-datatypes ((List!70249 0))(
  ( (Nil!70125) (Cons!70125 (h!76573 C!37368) (t!384300 List!70249)) )
))
(declare-fun lt!2578699 () List!70249)

(declare-fun s1!1971 () List!70249)

(assert (=> bs!1903853 (= (= lt!2578699 (t!384300 s1!1971)) (= lambda!441450 lambda!441448))))

(assert (=> b!7239593 true))

(declare-fun b!7239585 () Bool)

(declare-fun e!4340427 () Bool)

(declare-fun tp_is_empty!46559 () Bool)

(declare-fun tp!2035078 () Bool)

(assert (=> b!7239585 (= e!4340427 (and tp_is_empty!46559 tp!2035078))))

(declare-fun b!7239586 () Bool)

(declare-fun e!4340420 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18547 0))(
  ( (ElementMatch!18547 (c!1344177 C!37368)) (Concat!27392 (regOne!37606 Regex!18547) (regTwo!37606 Regex!18547)) (EmptyExpr!18547) (Star!18547 (reg!18876 Regex!18547)) (EmptyLang!18547) (Union!18547 (regOne!37607 Regex!18547) (regTwo!37607 Regex!18547)) )
))
(declare-datatypes ((List!70250 0))(
  ( (Nil!70126) (Cons!70126 (h!76574 Regex!18547) (t!384301 List!70250)) )
))
(declare-datatypes ((Context!14974 0))(
  ( (Context!14975 (exprs!7987 List!70250)) )
))
(declare-fun lt!2578672 () (InoxSet Context!14974))

(declare-fun matchZipper!3457 ((InoxSet Context!14974) List!70249) Bool)

(assert (=> b!7239586 (= e!4340420 (matchZipper!3457 lt!2578672 lt!2578699))))

(declare-fun res!2936933 () Bool)

(declare-fun e!4340415 () Bool)

(assert (=> start!703230 (=> (not res!2936933) (not e!4340415))))

(declare-fun lt!2578674 () (InoxSet Context!14974))

(assert (=> start!703230 (= res!2936933 (matchZipper!3457 lt!2578674 s1!1971))))

(declare-fun ct1!232 () Context!14974)

(assert (=> start!703230 (= lt!2578674 (store ((as const (Array Context!14974 Bool)) false) ct1!232 true))))

(assert (=> start!703230 e!4340415))

(declare-fun e!4340416 () Bool)

(declare-fun inv!89377 (Context!14974) Bool)

(assert (=> start!703230 (and (inv!89377 ct1!232) e!4340416)))

(assert (=> start!703230 e!4340427))

(declare-fun e!4340423 () Bool)

(assert (=> start!703230 e!4340423))

(declare-fun ct2!328 () Context!14974)

(declare-fun e!4340417 () Bool)

(assert (=> start!703230 (and (inv!89377 ct2!328) e!4340417)))

(declare-fun b!7239587 () Bool)

(declare-fun e!4340424 () Bool)

(declare-datatypes ((List!70251 0))(
  ( (Nil!70127) (Cons!70127 (h!76575 Context!14974) (t!384302 List!70251)) )
))
(declare-fun lt!2578693 () List!70251)

(declare-fun exists!4237 (List!70251 Int) Bool)

(assert (=> b!7239587 (= e!4340424 (exists!4237 lt!2578693 lambda!441450))))

(declare-fun b!7239588 () Bool)

(declare-fun tp!2035079 () Bool)

(assert (=> b!7239588 (= e!4340423 (and tp_is_empty!46559 tp!2035079))))

(declare-fun b!7239589 () Bool)

(declare-datatypes ((Unit!163662 0))(
  ( (Unit!163663) )
))
(declare-fun e!4340418 () Unit!163662)

(declare-fun Unit!163664 () Unit!163662)

(assert (=> b!7239589 (= e!4340418 Unit!163664)))

(declare-fun lt!2578675 () Unit!163662)

(declare-fun lambda!441447 () Int)

(declare-fun lemmaConcatPreservesForall!1356 (List!70250 List!70250 Int) Unit!163662)

(assert (=> b!7239589 (= lt!2578675 (lemmaConcatPreservesForall!1356 (exprs!7987 ct1!232) (exprs!7987 ct2!328) lambda!441447))))

(declare-fun lt!2578684 () (InoxSet Context!14974))

(declare-fun lt!2578669 () Context!14974)

(declare-fun derivationStepZipperUp!2421 (Context!14974 C!37368) (InoxSet Context!14974))

(assert (=> b!7239589 (= lt!2578684 (derivationStepZipperUp!2421 lt!2578669 (h!76573 s1!1971)))))

(declare-fun lt!2578678 () (InoxSet Context!14974))

(declare-fun lt!2578665 () Unit!163662)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1694 ((InoxSet Context!14974) (InoxSet Context!14974) List!70249) Unit!163662)

(assert (=> b!7239589 (= lt!2578665 (lemmaZipperConcatMatchesSameAsBothZippers!1694 lt!2578678 lt!2578684 (t!384300 s1!1971)))))

(declare-fun res!2936935 () Bool)

(assert (=> b!7239589 (= res!2936935 (matchZipper!3457 lt!2578678 (t!384300 s1!1971)))))

(declare-fun e!4340426 () Bool)

(assert (=> b!7239589 (=> res!2936935 e!4340426)))

(assert (=> b!7239589 (= (matchZipper!3457 ((_ map or) lt!2578678 lt!2578684) (t!384300 s1!1971)) e!4340426)))

(declare-fun lt!2578688 () Unit!163662)

(assert (=> b!7239589 (= lt!2578688 (lemmaConcatPreservesForall!1356 (exprs!7987 ct1!232) (exprs!7987 ct2!328) lambda!441447))))

(declare-fun lt!2578664 () Context!14974)

(assert (=> b!7239589 (= lt!2578672 (derivationStepZipperUp!2421 lt!2578664 (h!76573 s1!1971)))))

(declare-fun lt!2578666 () (InoxSet Context!14974))

(declare-fun lt!2578685 () Unit!163662)

(assert (=> b!7239589 (= lt!2578685 (lemmaZipperConcatMatchesSameAsBothZippers!1694 lt!2578666 lt!2578672 lt!2578699))))

(declare-fun res!2936940 () Bool)

(assert (=> b!7239589 (= res!2936940 (matchZipper!3457 lt!2578666 lt!2578699))))

(assert (=> b!7239589 (=> res!2936940 e!4340420)))

(assert (=> b!7239589 (= (matchZipper!3457 ((_ map or) lt!2578666 lt!2578672) lt!2578699) e!4340420)))

(declare-fun b!7239590 () Bool)

(declare-fun tp!2035080 () Bool)

(assert (=> b!7239590 (= e!4340416 tp!2035080)))

(declare-fun b!7239591 () Bool)

(declare-fun Unit!163665 () Unit!163662)

(assert (=> b!7239591 (= e!4340418 Unit!163665)))

(declare-fun e!4340421 () Bool)

(declare-fun e!4340422 () Bool)

(assert (=> b!7239592 (= e!4340421 (not e!4340422))))

(declare-fun res!2936936 () Bool)

(assert (=> b!7239592 (=> res!2936936 e!4340422)))

(declare-fun lt!2578682 () (InoxSet Context!14974))

(declare-fun exists!4238 ((InoxSet Context!14974) Int) Bool)

(assert (=> b!7239592 (= res!2936936 (not (exists!4238 lt!2578682 lambda!441448)))))

(declare-fun lt!2578663 () List!70251)

(assert (=> b!7239592 (exists!4237 lt!2578663 lambda!441448)))

(declare-fun lt!2578671 () Unit!163662)

(declare-fun lemmaZipperMatchesExistsMatchingContext!690 (List!70251 List!70249) Unit!163662)

(assert (=> b!7239592 (= lt!2578671 (lemmaZipperMatchesExistsMatchingContext!690 lt!2578663 (t!384300 s1!1971)))))

(declare-fun toList!11404 ((InoxSet Context!14974)) List!70251)

(assert (=> b!7239592 (= lt!2578663 (toList!11404 lt!2578682))))

(declare-fun lt!2578667 () (InoxSet Context!14974))

(declare-fun lt!2578673 () (InoxSet Context!14974))

(declare-fun derivationStepZipper!3339 ((InoxSet Context!14974) C!37368) (InoxSet Context!14974))

(assert (=> b!7239592 (= lt!2578667 (derivationStepZipper!3339 lt!2578673 (h!76573 s1!1971)))))

(declare-fun e!4340429 () Bool)

(assert (=> b!7239593 (= e!4340429 e!4340424)))

(declare-fun res!2936939 () Bool)

(assert (=> b!7239593 (=> res!2936939 e!4340424)))

(assert (=> b!7239593 (= res!2936939 (not (exists!4237 lt!2578693 lambda!441450)))))

(assert (=> b!7239593 (= lt!2578693 (toList!11404 lt!2578667))))

(declare-fun e!4340425 () Bool)

(assert (=> b!7239593 e!4340425))

(declare-fun res!2936938 () Bool)

(assert (=> b!7239593 (=> (not res!2936938) (not e!4340425))))

(assert (=> b!7239593 (= res!2936938 (exists!4238 lt!2578667 lambda!441450))))

(declare-fun lt!2578661 () Unit!163662)

(declare-fun lt!2578692 () Context!14974)

(declare-fun lemmaContainsThenExists!211 ((InoxSet Context!14974) Context!14974 Int) Unit!163662)

(assert (=> b!7239593 (= lt!2578661 (lemmaContainsThenExists!211 lt!2578667 lt!2578692 lambda!441450))))

(declare-fun lt!2578697 () Context!14974)

(declare-fun lt!2578687 () Unit!163662)

(assert (=> b!7239593 (= lt!2578687 (lemmaConcatPreservesForall!1356 (exprs!7987 lt!2578697) (exprs!7987 ct2!328) lambda!441447))))

(assert (=> b!7239593 (select lt!2578667 lt!2578692)))

(declare-fun lt!2578700 () Unit!163662)

(assert (=> b!7239593 (= lt!2578700 (lemmaConcatPreservesForall!1356 (exprs!7987 lt!2578697) (exprs!7987 ct2!328) lambda!441447))))

(declare-fun lt!2578690 () (InoxSet Context!14974))

(assert (=> b!7239593 (select lt!2578690 lt!2578692)))

(declare-fun lt!2578695 () Unit!163662)

(assert (=> b!7239593 (= lt!2578695 (lemmaConcatPreservesForall!1356 (exprs!7987 ct1!232) (exprs!7987 ct2!328) lambda!441447))))

(declare-fun lt!2578694 () Unit!163662)

(assert (=> b!7239593 (= lt!2578694 (lemmaConcatPreservesForall!1356 (exprs!7987 lt!2578697) (exprs!7987 ct2!328) lambda!441447))))

(declare-fun lt!2578691 () Unit!163662)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!12 (Context!14974 Context!14974 Context!14974 C!37368) Unit!163662)

(assert (=> b!7239593 (= lt!2578691 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!12 ct1!232 ct2!328 lt!2578697 (h!76573 s1!1971)))))

(declare-fun s2!1849 () List!70249)

(declare-fun tail!14204 (List!70249) List!70249)

(declare-fun ++!16394 (List!70249 List!70249) List!70249)

(assert (=> b!7239593 (= (tail!14204 (++!16394 s1!1971 s2!1849)) lt!2578699)))

(declare-fun lt!2578679 () Unit!163662)

(assert (=> b!7239593 (= lt!2578679 e!4340418)))

(declare-fun c!1344176 () Bool)

(declare-fun nullable!7860 (Regex!18547) Bool)

(assert (=> b!7239593 (= c!1344176 (nullable!7860 (h!76574 (exprs!7987 ct1!232))))))

(declare-fun lt!2578696 () Context!14974)

(declare-fun lambda!441449 () Int)

(declare-fun flatMap!2751 ((InoxSet Context!14974) Int) (InoxSet Context!14974))

(assert (=> b!7239593 (= (flatMap!2751 lt!2578673 lambda!441449) (derivationStepZipperUp!2421 lt!2578696 (h!76573 s1!1971)))))

(declare-fun lt!2578677 () Unit!163662)

(declare-fun lemmaFlatMapOnSingletonSet!2178 ((InoxSet Context!14974) Context!14974 Int) Unit!163662)

(assert (=> b!7239593 (= lt!2578677 (lemmaFlatMapOnSingletonSet!2178 lt!2578673 lt!2578696 lambda!441449))))

(declare-fun lt!2578662 () Unit!163662)

(assert (=> b!7239593 (= lt!2578662 (lemmaConcatPreservesForall!1356 (exprs!7987 ct1!232) (exprs!7987 ct2!328) lambda!441447))))

(assert (=> b!7239593 (= (flatMap!2751 lt!2578674 lambda!441449) (derivationStepZipperUp!2421 ct1!232 (h!76573 s1!1971)))))

(declare-fun lt!2578686 () Unit!163662)

(assert (=> b!7239593 (= lt!2578686 (lemmaFlatMapOnSingletonSet!2178 lt!2578674 ct1!232 lambda!441449))))

(declare-fun derivationStepZipperDown!2591 (Regex!18547 Context!14974 C!37368) (InoxSet Context!14974))

(assert (=> b!7239593 (= lt!2578666 (derivationStepZipperDown!2591 (h!76574 (exprs!7987 ct1!232)) lt!2578664 (h!76573 s1!1971)))))

(declare-fun lt!2578670 () List!70250)

(declare-fun tail!14205 (List!70250) List!70250)

(assert (=> b!7239593 (= lt!2578664 (Context!14975 (tail!14205 lt!2578670)))))

(declare-fun b!7239594 () Bool)

(declare-fun tp!2035077 () Bool)

(assert (=> b!7239594 (= e!4340417 tp!2035077)))

(declare-fun b!7239595 () Bool)

(declare-fun e!4340428 () Bool)

(assert (=> b!7239595 (= e!4340428 e!4340429)))

(declare-fun res!2936941 () Bool)

(assert (=> b!7239595 (=> res!2936941 e!4340429)))

(declare-fun isEmpty!40410 (List!70250) Bool)

(assert (=> b!7239595 (= res!2936941 (isEmpty!40410 lt!2578670))))

(declare-fun lt!2578680 () Unit!163662)

(assert (=> b!7239595 (= lt!2578680 (lemmaConcatPreservesForall!1356 (exprs!7987 ct1!232) (exprs!7987 ct2!328) lambda!441447))))

(assert (=> b!7239595 (= lt!2578690 (derivationStepZipperUp!2421 lt!2578696 (h!76573 s1!1971)))))

(declare-fun lt!2578681 () Unit!163662)

(assert (=> b!7239595 (= lt!2578681 (lemmaConcatPreservesForall!1356 (exprs!7987 ct1!232) (exprs!7987 ct2!328) lambda!441447))))

(assert (=> b!7239595 (= lt!2578678 (derivationStepZipperDown!2591 (h!76574 (exprs!7987 ct1!232)) lt!2578669 (h!76573 s1!1971)))))

(assert (=> b!7239595 (= lt!2578669 (Context!14975 (tail!14205 (exprs!7987 ct1!232))))))

(declare-fun b!7239596 () Bool)

(declare-fun e!4340419 () Bool)

(assert (=> b!7239596 (= e!4340415 e!4340419)))

(declare-fun res!2936942 () Bool)

(assert (=> b!7239596 (=> (not res!2936942) (not e!4340419))))

(get-info :version)

(assert (=> b!7239596 (= res!2936942 (and (not ((_ is Nil!70126) (exprs!7987 ct1!232))) ((_ is Cons!70125) s1!1971)))))

(assert (=> b!7239596 (= lt!2578673 (store ((as const (Array Context!14974 Bool)) false) lt!2578696 true))))

(assert (=> b!7239596 (= lt!2578696 (Context!14975 lt!2578670))))

(declare-fun ++!16395 (List!70250 List!70250) List!70250)

(assert (=> b!7239596 (= lt!2578670 (++!16395 (exprs!7987 ct1!232) (exprs!7987 ct2!328)))))

(declare-fun lt!2578668 () Unit!163662)

(assert (=> b!7239596 (= lt!2578668 (lemmaConcatPreservesForall!1356 (exprs!7987 ct1!232) (exprs!7987 ct2!328) lambda!441447))))

(declare-fun b!7239597 () Bool)

(assert (=> b!7239597 (= e!4340426 (matchZipper!3457 lt!2578684 (t!384300 s1!1971)))))

(declare-fun b!7239598 () Bool)

(assert (=> b!7239598 (= e!4340422 e!4340428)))

(declare-fun res!2936934 () Bool)

(assert (=> b!7239598 (=> res!2936934 e!4340428)))

(assert (=> b!7239598 (= res!2936934 (isEmpty!40410 (exprs!7987 ct1!232)))))

(declare-fun lt!2578689 () (InoxSet Context!14974))

(assert (=> b!7239598 (= lt!2578689 (derivationStepZipperUp!2421 ct1!232 (h!76573 s1!1971)))))

(declare-fun lt!2578683 () Unit!163662)

(assert (=> b!7239598 (= lt!2578683 (lemmaConcatPreservesForall!1356 (exprs!7987 lt!2578697) (exprs!7987 ct2!328) lambda!441447))))

(assert (=> b!7239598 (matchZipper!3457 (store ((as const (Array Context!14974 Bool)) false) lt!2578692 true) lt!2578699)))

(assert (=> b!7239598 (= lt!2578699 (++!16394 (t!384300 s1!1971) s2!1849))))

(assert (=> b!7239598 (= lt!2578692 (Context!14975 (++!16395 (exprs!7987 lt!2578697) (exprs!7987 ct2!328))))))

(declare-fun lt!2578676 () Unit!163662)

(assert (=> b!7239598 (= lt!2578676 (lemmaConcatPreservesForall!1356 (exprs!7987 lt!2578697) (exprs!7987 ct2!328) lambda!441447))))

(declare-fun lt!2578698 () Unit!163662)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!338 (Context!14974 Context!14974 List!70249 List!70249) Unit!163662)

(assert (=> b!7239598 (= lt!2578698 (lemmaConcatenateContextMatchesConcatOfStrings!338 lt!2578697 ct2!328 (t!384300 s1!1971) s2!1849))))

(declare-fun getWitness!2094 ((InoxSet Context!14974) Int) Context!14974)

(assert (=> b!7239598 (= lt!2578697 (getWitness!2094 lt!2578682 lambda!441448))))

(declare-fun b!7239599 () Bool)

(assert (=> b!7239599 (= e!4340419 e!4340421)))

(declare-fun res!2936932 () Bool)

(assert (=> b!7239599 (=> (not res!2936932) (not e!4340421))))

(assert (=> b!7239599 (= res!2936932 (matchZipper!3457 lt!2578682 (t!384300 s1!1971)))))

(assert (=> b!7239599 (= lt!2578682 (derivationStepZipper!3339 lt!2578674 (h!76573 s1!1971)))))

(declare-fun b!7239600 () Bool)

(assert (=> b!7239600 (= e!4340425 (exists!4238 lt!2578667 lambda!441450))))

(declare-fun b!7239601 () Bool)

(declare-fun res!2936937 () Bool)

(assert (=> b!7239601 (=> (not res!2936937) (not e!4340415))))

(assert (=> b!7239601 (= res!2936937 (matchZipper!3457 (store ((as const (Array Context!14974 Bool)) false) ct2!328 true) s2!1849))))

(assert (= (and start!703230 res!2936933) b!7239601))

(assert (= (and b!7239601 res!2936937) b!7239596))

(assert (= (and b!7239596 res!2936942) b!7239599))

(assert (= (and b!7239599 res!2936932) b!7239592))

(assert (= (and b!7239592 (not res!2936936)) b!7239598))

(assert (= (and b!7239598 (not res!2936934)) b!7239595))

(assert (= (and b!7239595 (not res!2936941)) b!7239593))

(assert (= (and b!7239593 c!1344176) b!7239589))

(assert (= (and b!7239593 (not c!1344176)) b!7239591))

(assert (= (and b!7239589 (not res!2936935)) b!7239597))

(assert (= (and b!7239589 (not res!2936940)) b!7239586))

(assert (= (and b!7239593 res!2936938) b!7239600))

(assert (= (and b!7239593 (not res!2936939)) b!7239587))

(assert (= start!703230 b!7239590))

(assert (= (and start!703230 ((_ is Cons!70125) s1!1971)) b!7239585))

(assert (= (and start!703230 ((_ is Cons!70125) s2!1849)) b!7239588))

(assert (= start!703230 b!7239594))

(declare-fun m!7912494 () Bool)

(assert (=> b!7239596 m!7912494))

(declare-fun m!7912496 () Bool)

(assert (=> b!7239596 m!7912496))

(declare-fun m!7912498 () Bool)

(assert (=> b!7239596 m!7912498))

(declare-fun m!7912500 () Bool)

(assert (=> b!7239599 m!7912500))

(declare-fun m!7912502 () Bool)

(assert (=> b!7239599 m!7912502))

(declare-fun m!7912504 () Bool)

(assert (=> b!7239592 m!7912504))

(declare-fun m!7912506 () Bool)

(assert (=> b!7239592 m!7912506))

(declare-fun m!7912508 () Bool)

(assert (=> b!7239592 m!7912508))

(declare-fun m!7912510 () Bool)

(assert (=> b!7239592 m!7912510))

(declare-fun m!7912512 () Bool)

(assert (=> b!7239592 m!7912512))

(declare-fun m!7912514 () Bool)

(assert (=> b!7239586 m!7912514))

(declare-fun m!7912516 () Bool)

(assert (=> b!7239600 m!7912516))

(declare-fun m!7912518 () Bool)

(assert (=> b!7239589 m!7912518))

(declare-fun m!7912520 () Bool)

(assert (=> b!7239589 m!7912520))

(assert (=> b!7239589 m!7912498))

(declare-fun m!7912522 () Bool)

(assert (=> b!7239589 m!7912522))

(declare-fun m!7912524 () Bool)

(assert (=> b!7239589 m!7912524))

(declare-fun m!7912526 () Bool)

(assert (=> b!7239589 m!7912526))

(declare-fun m!7912528 () Bool)

(assert (=> b!7239589 m!7912528))

(assert (=> b!7239589 m!7912498))

(declare-fun m!7912530 () Bool)

(assert (=> b!7239589 m!7912530))

(declare-fun m!7912532 () Bool)

(assert (=> b!7239589 m!7912532))

(declare-fun m!7912534 () Bool)

(assert (=> b!7239595 m!7912534))

(declare-fun m!7912536 () Bool)

(assert (=> b!7239595 m!7912536))

(assert (=> b!7239595 m!7912498))

(declare-fun m!7912538 () Bool)

(assert (=> b!7239595 m!7912538))

(assert (=> b!7239595 m!7912498))

(declare-fun m!7912540 () Bool)

(assert (=> b!7239595 m!7912540))

(declare-fun m!7912542 () Bool)

(assert (=> b!7239597 m!7912542))

(declare-fun m!7912544 () Bool)

(assert (=> b!7239598 m!7912544))

(declare-fun m!7912546 () Bool)

(assert (=> b!7239598 m!7912546))

(declare-fun m!7912548 () Bool)

(assert (=> b!7239598 m!7912548))

(declare-fun m!7912550 () Bool)

(assert (=> b!7239598 m!7912550))

(declare-fun m!7912552 () Bool)

(assert (=> b!7239598 m!7912552))

(declare-fun m!7912554 () Bool)

(assert (=> b!7239598 m!7912554))

(assert (=> b!7239598 m!7912552))

(declare-fun m!7912556 () Bool)

(assert (=> b!7239598 m!7912556))

(declare-fun m!7912558 () Bool)

(assert (=> b!7239598 m!7912558))

(assert (=> b!7239598 m!7912550))

(declare-fun m!7912560 () Bool)

(assert (=> b!7239598 m!7912560))

(declare-fun m!7912562 () Bool)

(assert (=> b!7239587 m!7912562))

(declare-fun m!7912564 () Bool)

(assert (=> b!7239601 m!7912564))

(assert (=> b!7239601 m!7912564))

(declare-fun m!7912566 () Bool)

(assert (=> b!7239601 m!7912566))

(assert (=> b!7239593 m!7912552))

(declare-fun m!7912568 () Bool)

(assert (=> b!7239593 m!7912568))

(assert (=> b!7239593 m!7912540))

(assert (=> b!7239593 m!7912552))

(declare-fun m!7912570 () Bool)

(assert (=> b!7239593 m!7912570))

(declare-fun m!7912572 () Bool)

(assert (=> b!7239593 m!7912572))

(declare-fun m!7912574 () Bool)

(assert (=> b!7239593 m!7912574))

(declare-fun m!7912576 () Bool)

(assert (=> b!7239593 m!7912576))

(assert (=> b!7239593 m!7912562))

(assert (=> b!7239593 m!7912498))

(assert (=> b!7239593 m!7912498))

(assert (=> b!7239593 m!7912552))

(assert (=> b!7239593 m!7912516))

(declare-fun m!7912578 () Bool)

(assert (=> b!7239593 m!7912578))

(declare-fun m!7912580 () Bool)

(assert (=> b!7239593 m!7912580))

(assert (=> b!7239593 m!7912570))

(declare-fun m!7912582 () Bool)

(assert (=> b!7239593 m!7912582))

(declare-fun m!7912584 () Bool)

(assert (=> b!7239593 m!7912584))

(declare-fun m!7912586 () Bool)

(assert (=> b!7239593 m!7912586))

(declare-fun m!7912588 () Bool)

(assert (=> b!7239593 m!7912588))

(assert (=> b!7239593 m!7912558))

(declare-fun m!7912590 () Bool)

(assert (=> b!7239593 m!7912590))

(declare-fun m!7912592 () Bool)

(assert (=> b!7239593 m!7912592))

(declare-fun m!7912594 () Bool)

(assert (=> b!7239593 m!7912594))

(declare-fun m!7912596 () Bool)

(assert (=> start!703230 m!7912596))

(declare-fun m!7912598 () Bool)

(assert (=> start!703230 m!7912598))

(declare-fun m!7912600 () Bool)

(assert (=> start!703230 m!7912600))

(declare-fun m!7912602 () Bool)

(assert (=> start!703230 m!7912602))

(check-sat (not b!7239592) (not b!7239588) (not b!7239585) (not b!7239594) (not b!7239597) (not b!7239595) (not b!7239601) (not b!7239600) (not b!7239599) (not b!7239590) (not b!7239598) (not b!7239589) (not b!7239593) tp_is_empty!46559 (not b!7239587) (not b!7239596) (not start!703230) (not b!7239586))
(check-sat)
