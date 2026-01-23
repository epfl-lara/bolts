; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538572 () Bool)

(assert start!538572)

(declare-fun b!5107680 () Bool)

(declare-fun res!2174054 () Bool)

(declare-fun e!3185639 () Bool)

(assert (=> b!5107680 (=> (not res!2174054) (not e!3185639))))

(declare-datatypes ((C!28476 0))(
  ( (C!28477 (val!23890 Int)) )
))
(declare-datatypes ((List!59080 0))(
  ( (Nil!58956) (Cons!58956 (h!65404 C!28476) (t!372081 List!59080)) )
))
(declare-fun knownP!20 () List!59080)

(declare-fun testedP!265 () List!59080)

(declare-fun size!39411 (List!59080) Int)

(assert (=> b!5107680 (= res!2174054 (>= (size!39411 knownP!20) (size!39411 testedP!265)))))

(declare-fun res!2174051 () Bool)

(assert (=> start!538572 (=> (not res!2174051) (not e!3185639))))

(declare-fun input!5745 () List!59080)

(declare-fun isPrefix!5510 (List!59080 List!59080) Bool)

(assert (=> start!538572 (= res!2174051 (isPrefix!5510 testedP!265 input!5745))))

(assert (=> start!538572 e!3185639))

(declare-fun e!3185642 () Bool)

(assert (=> start!538572 e!3185642))

(declare-fun e!3185641 () Bool)

(assert (=> start!538572 e!3185641))

(declare-fun e!3185640 () Bool)

(assert (=> start!538572 e!3185640))

(declare-fun condSetEmpty!29458 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14105 0))(
  ( (ElementMatch!14105 (c!877413 C!28476)) (Concat!22950 (regOne!28722 Regex!14105) (regTwo!28722 Regex!14105)) (EmptyExpr!14105) (Star!14105 (reg!14434 Regex!14105)) (EmptyLang!14105) (Union!14105 (regOne!28723 Regex!14105) (regTwo!28723 Regex!14105)) )
))
(declare-datatypes ((List!59081 0))(
  ( (Nil!58957) (Cons!58957 (h!65405 Regex!14105) (t!372082 List!59081)) )
))
(declare-datatypes ((Context!6978 0))(
  ( (Context!6979 (exprs!3989 List!59081)) )
))
(declare-fun baseZ!46 () (InoxSet Context!6978))

(assert (=> start!538572 (= condSetEmpty!29458 (= baseZ!46 ((as const (Array Context!6978 Bool)) false)))))

(declare-fun setRes!29458 () Bool)

(assert (=> start!538572 setRes!29458))

(declare-fun b!5107681 () Bool)

(assert (=> b!5107681 (= e!3185639 (not true))))

(assert (=> b!5107681 (isPrefix!5510 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150023 0))(
  ( (Unit!150024) )
))
(declare-fun lt!2102858 () Unit!150023)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!647 (List!59080 List!59080 List!59080) Unit!150023)

(assert (=> b!5107681 (= lt!2102858 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!647 knownP!20 testedP!265 input!5745))))

(declare-fun b!5107682 () Bool)

(declare-fun res!2174053 () Bool)

(assert (=> b!5107682 (=> (not res!2174053) (not e!3185639))))

(assert (=> b!5107682 (= res!2174053 (isPrefix!5510 knownP!20 input!5745))))

(declare-fun setNonEmpty!29458 () Bool)

(declare-fun tp!1424820 () Bool)

(declare-fun setElem!29458 () Context!6978)

(declare-fun e!3185643 () Bool)

(declare-fun inv!78443 (Context!6978) Bool)

(assert (=> setNonEmpty!29458 (= setRes!29458 (and tp!1424820 (inv!78443 setElem!29458) e!3185643))))

(declare-fun setRest!29458 () (InoxSet Context!6978))

(assert (=> setNonEmpty!29458 (= baseZ!46 ((_ map or) (store ((as const (Array Context!6978 Bool)) false) setElem!29458 true) setRest!29458))))

(declare-fun b!5107683 () Bool)

(declare-fun tp_is_empty!37483 () Bool)

(declare-fun tp!1424817 () Bool)

(assert (=> b!5107683 (= e!3185641 (and tp_is_empty!37483 tp!1424817))))

(declare-fun b!5107684 () Bool)

(declare-fun tp!1424819 () Bool)

(assert (=> b!5107684 (= e!3185642 (and tp_is_empty!37483 tp!1424819))))

(declare-fun b!5107685 () Bool)

(declare-fun tp!1424821 () Bool)

(assert (=> b!5107685 (= e!3185640 (and tp_is_empty!37483 tp!1424821))))

(declare-fun setIsEmpty!29458 () Bool)

(assert (=> setIsEmpty!29458 setRes!29458))

(declare-fun b!5107686 () Bool)

(declare-fun res!2174052 () Bool)

(assert (=> b!5107686 (=> (not res!2174052) (not e!3185639))))

(declare-fun matchZipper!773 ((InoxSet Context!6978) List!59080) Bool)

(assert (=> b!5107686 (= res!2174052 (matchZipper!773 baseZ!46 knownP!20))))

(declare-fun b!5107687 () Bool)

(declare-fun tp!1424818 () Bool)

(assert (=> b!5107687 (= e!3185643 tp!1424818)))

(assert (= (and start!538572 res!2174051) b!5107682))

(assert (= (and b!5107682 res!2174053) b!5107680))

(assert (= (and b!5107680 res!2174054) b!5107686))

(assert (= (and b!5107686 res!2174052) b!5107681))

(get-info :version)

(assert (= (and start!538572 ((_ is Cons!58956) testedP!265)) b!5107684))

(assert (= (and start!538572 ((_ is Cons!58956) input!5745)) b!5107683))

(assert (= (and start!538572 ((_ is Cons!58956) knownP!20)) b!5107685))

(assert (= (and start!538572 condSetEmpty!29458) setIsEmpty!29458))

(assert (= (and start!538572 (not condSetEmpty!29458)) setNonEmpty!29458))

(assert (= setNonEmpty!29458 b!5107687))

(declare-fun m!6164842 () Bool)

(assert (=> setNonEmpty!29458 m!6164842))

(declare-fun m!6164844 () Bool)

(assert (=> start!538572 m!6164844))

(declare-fun m!6164846 () Bool)

(assert (=> b!5107682 m!6164846))

(declare-fun m!6164848 () Bool)

(assert (=> b!5107680 m!6164848))

(declare-fun m!6164850 () Bool)

(assert (=> b!5107680 m!6164850))

(declare-fun m!6164852 () Bool)

(assert (=> b!5107681 m!6164852))

(declare-fun m!6164854 () Bool)

(assert (=> b!5107681 m!6164854))

(declare-fun m!6164856 () Bool)

(assert (=> b!5107686 m!6164856))

(check-sat (not b!5107683) (not setNonEmpty!29458) (not b!5107685) (not b!5107684) (not b!5107686) (not start!538572) (not b!5107680) (not b!5107687) tp_is_empty!37483 (not b!5107681) (not b!5107682))
(check-sat)
