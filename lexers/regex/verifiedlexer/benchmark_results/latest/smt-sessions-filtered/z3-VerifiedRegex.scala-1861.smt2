; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92218 () Bool)

(assert start!92218)

(declare-fun b!1084673 () Bool)

(declare-fun res!482524 () Bool)

(declare-fun e!685915 () Bool)

(assert (=> b!1084673 (=> (not res!482524) (not e!685915))))

(declare-datatypes ((C!6532 0))(
  ( (C!6533 (val!3514 Int)) )
))
(declare-datatypes ((List!10246 0))(
  ( (Nil!10230) (Cons!10230 (h!15631 C!6532) (t!101292 List!10246)) )
))
(declare-fun s!2287 () List!10246)

(declare-fun lambda!39515 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!2981 0))(
  ( (ElementMatch!2981 (c!183144 C!6532)) (Concat!4814 (regOne!6474 Regex!2981) (regTwo!6474 Regex!2981)) (EmptyExpr!2981) (Star!2981 (reg!3310 Regex!2981)) (EmptyLang!2981) (Union!2981 (regOne!6475 Regex!2981) (regTwo!6475 Regex!2981)) )
))
(declare-datatypes ((List!10247 0))(
  ( (Nil!10231) (Cons!10231 (h!15632 Regex!2981) (t!101293 List!10247)) )
))
(declare-datatypes ((Context!922 0))(
  ( (Context!923 (exprs!961 List!10247)) )
))
(declare-fun z!1122 () (InoxSet Context!922))

(declare-fun matchZipper!29 ((InoxSet Context!922) List!10246) Bool)

(declare-fun filter!151 ((InoxSet Context!922) Int) (InoxSet Context!922))

(assert (=> b!1084673 (= res!482524 (matchZipper!29 (filter!151 z!1122 lambda!39515) s!2287))))

(declare-fun tp!324499 () Bool)

(declare-fun setElem!7458 () Context!922)

(declare-fun setNonEmpty!7458 () Bool)

(declare-fun setRes!7458 () Bool)

(declare-fun e!685916 () Bool)

(declare-fun inv!13165 (Context!922) Bool)

(assert (=> setNonEmpty!7458 (= setRes!7458 (and tp!324499 (inv!13165 setElem!7458) e!685916))))

(declare-fun setRest!7458 () (InoxSet Context!922))

(assert (=> setNonEmpty!7458 (= z!1122 ((_ map or) (store ((as const (Array Context!922 Bool)) false) setElem!7458 true) setRest!7458))))

(declare-fun b!1084675 () Bool)

(declare-fun res!482523 () Bool)

(assert (=> b!1084675 (=> (not res!482523) (not e!685915))))

(assert (=> b!1084675 (= res!482523 (not (matchZipper!29 z!1122 s!2287)))))

(declare-fun setIsEmpty!7458 () Bool)

(assert (=> setIsEmpty!7458 setRes!7458))

(declare-fun b!1084676 () Bool)

(declare-fun e!685914 () Bool)

(declare-fun tp!324498 () Bool)

(assert (=> b!1084676 (= e!685914 tp!324498)))

(declare-fun e!685917 () Bool)

(declare-fun tp!324496 () Bool)

(declare-datatypes ((List!10248 0))(
  ( (Nil!10232) (Cons!10232 (h!15633 Context!922) (t!101294 List!10248)) )
))
(declare-fun zl!316 () List!10248)

(declare-fun b!1084677 () Bool)

(assert (=> b!1084677 (= e!685917 (and (inv!13165 (h!15633 zl!316)) e!685914 tp!324496))))

(declare-fun b!1084678 () Bool)

(declare-fun tp!324497 () Bool)

(assert (=> b!1084678 (= e!685916 tp!324497)))

(declare-fun b!1084679 () Bool)

(assert (=> b!1084679 (= e!685915 false)))

(declare-fun lt!362795 () Bool)

(declare-fun content!1466 (List!10248) (InoxSet Context!922))

(declare-fun toList!599 ((InoxSet Context!922)) List!10248)

(assert (=> b!1084679 (= lt!362795 (matchZipper!29 (content!1466 (toList!599 (filter!151 z!1122 lambda!39515))) s!2287))))

(declare-fun b!1084674 () Bool)

(declare-fun e!685913 () Bool)

(declare-fun tp_is_empty!5593 () Bool)

(declare-fun tp!324500 () Bool)

(assert (=> b!1084674 (= e!685913 (and tp_is_empty!5593 tp!324500))))

(declare-fun res!482525 () Bool)

(assert (=> start!92218 (=> (not res!482525) (not e!685915))))

(assert (=> start!92218 (= res!482525 (= (toList!599 z!1122) zl!316))))

(assert (=> start!92218 e!685915))

(declare-fun condSetEmpty!7458 () Bool)

(assert (=> start!92218 (= condSetEmpty!7458 (= z!1122 ((as const (Array Context!922 Bool)) false)))))

(assert (=> start!92218 setRes!7458))

(assert (=> start!92218 e!685917))

(assert (=> start!92218 e!685913))

(assert (= (and start!92218 res!482525) b!1084675))

(assert (= (and b!1084675 res!482523) b!1084673))

(assert (= (and b!1084673 res!482524) b!1084679))

(assert (= (and start!92218 condSetEmpty!7458) setIsEmpty!7458))

(assert (= (and start!92218 (not condSetEmpty!7458)) setNonEmpty!7458))

(assert (= setNonEmpty!7458 b!1084678))

(assert (= b!1084677 b!1084676))

(get-info :version)

(assert (= (and start!92218 ((_ is Cons!10232) zl!316)) b!1084677))

(assert (= (and start!92218 ((_ is Cons!10230) s!2287)) b!1084674))

(declare-fun m!1234315 () Bool)

(assert (=> b!1084673 m!1234315))

(assert (=> b!1084673 m!1234315))

(declare-fun m!1234317 () Bool)

(assert (=> b!1084673 m!1234317))

(declare-fun m!1234319 () Bool)

(assert (=> setNonEmpty!7458 m!1234319))

(declare-fun m!1234321 () Bool)

(assert (=> start!92218 m!1234321))

(declare-fun m!1234323 () Bool)

(assert (=> b!1084677 m!1234323))

(declare-fun m!1234325 () Bool)

(assert (=> b!1084675 m!1234325))

(assert (=> b!1084679 m!1234315))

(assert (=> b!1084679 m!1234315))

(declare-fun m!1234327 () Bool)

(assert (=> b!1084679 m!1234327))

(assert (=> b!1084679 m!1234327))

(declare-fun m!1234329 () Bool)

(assert (=> b!1084679 m!1234329))

(assert (=> b!1084679 m!1234329))

(declare-fun m!1234331 () Bool)

(assert (=> b!1084679 m!1234331))

(check-sat (not b!1084677) (not b!1084674) (not start!92218) (not b!1084673) tp_is_empty!5593 (not b!1084678) (not b!1084679) (not b!1084675) (not b!1084676) (not setNonEmpty!7458))
(check-sat)
