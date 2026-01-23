; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517824 () Bool)

(assert start!517824)

(declare-fun e!3080566 () Bool)

(declare-fun tp!1384241 () Bool)

(declare-fun setNonEmpty!27614 () Bool)

(declare-fun setRes!27614 () Bool)

(declare-datatypes ((C!27012 0))(
  ( (C!27013 (val!22840 Int)) )
))
(declare-datatypes ((Regex!13391 0))(
  ( (ElementMatch!13391 (c!840251 C!27012)) (Concat!21964 (regOne!27294 Regex!13391) (regTwo!27294 Regex!13391)) (EmptyExpr!13391) (Star!13391 (reg!13720 Regex!13391)) (EmptyLang!13391) (Union!13391 (regOne!27295 Regex!13391) (regTwo!27295 Regex!13391)) )
))
(declare-datatypes ((List!56863 0))(
  ( (Nil!56739) (Cons!56739 (h!63187 Regex!13391) (t!367339 List!56863)) )
))
(declare-datatypes ((Context!6066 0))(
  ( (Context!6067 (exprs!3533 List!56863)) )
))
(declare-fun setElem!27614 () Context!6066)

(declare-fun inv!73620 (Context!6066) Bool)

(assert (=> setNonEmpty!27614 (= setRes!27614 (and tp!1384241 (inv!73620 setElem!27614) e!3080566))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6066))

(declare-fun setRest!27614 () (InoxSet Context!6066))

(assert (=> setNonEmpty!27614 (= z!3568 ((_ map or) (store ((as const (Array Context!6066 Bool)) false) setElem!27614 true) setRest!27614))))

(declare-fun setIsEmpty!27614 () Bool)

(assert (=> setIsEmpty!27614 setRes!27614))

(declare-fun b!4930656 () Bool)

(declare-fun e!3080565 () Bool)

(declare-fun e!3080564 () Bool)

(assert (=> b!4930656 (= e!3080565 e!3080564)))

(declare-fun res!2104143 () Bool)

(assert (=> b!4930656 (=> res!2104143 e!3080564)))

(declare-datatypes ((List!56864 0))(
  ( (Nil!56740) (Cons!56740 (h!63188 C!27012) (t!367340 List!56864)) )
))
(declare-fun testedP!110 () List!56864)

(declare-fun lt!2029740 () List!56864)

(assert (=> b!4930656 (= res!2104143 (not (= testedP!110 lt!2029740)))))

(assert (=> b!4930656 (= lt!2029740 testedP!110)))

(declare-datatypes ((Unit!147369 0))(
  ( (Unit!147370) )
))
(declare-fun lt!2029741 () Unit!147369)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1131 (List!56864 List!56864 List!56864) Unit!147369)

(assert (=> b!4930656 (= lt!2029741 (lemmaIsPrefixSameLengthThenSameList!1131 lt!2029740 testedP!110 lt!2029740))))

(declare-fun isPrefix!4989 (List!56864 List!56864) Bool)

(assert (=> b!4930656 (isPrefix!4989 lt!2029740 lt!2029740)))

(declare-fun lt!2029739 () Unit!147369)

(declare-fun lemmaIsPrefixRefl!3371 (List!56864 List!56864) Unit!147369)

(assert (=> b!4930656 (= lt!2029739 (lemmaIsPrefixRefl!3371 lt!2029740 lt!2029740))))

(declare-fun b!4930657 () Bool)

(declare-fun e!3080560 () Bool)

(declare-fun e!3080559 () Bool)

(assert (=> b!4930657 (= e!3080560 (not e!3080559))))

(declare-fun res!2104142 () Bool)

(assert (=> b!4930657 (=> res!2104142 e!3080559)))

(assert (=> b!4930657 (= res!2104142 (not (isPrefix!4989 testedP!110 lt!2029740)))))

(declare-fun lt!2029738 () List!56864)

(assert (=> b!4930657 (isPrefix!4989 testedP!110 lt!2029738)))

(declare-fun lt!2029737 () Unit!147369)

(declare-fun testedSuffix!70 () List!56864)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3213 (List!56864 List!56864) Unit!147369)

(assert (=> b!4930657 (= lt!2029737 (lemmaConcatTwoListThenFirstIsPrefix!3213 testedP!110 testedSuffix!70))))

(declare-fun b!4930658 () Bool)

(declare-fun res!2104146 () Bool)

(assert (=> b!4930658 (=> (not res!2104146) (not e!3080560))))

(declare-fun totalInputSize!132 () Int)

(declare-datatypes ((IArray!29861 0))(
  ( (IArray!29862 (innerList!14988 List!56864)) )
))
(declare-datatypes ((Conc!14900 0))(
  ( (Node!14900 (left!41384 Conc!14900) (right!41714 Conc!14900) (csize!30030 Int) (cheight!15111 Int)) (Leaf!24783 (xs!18224 IArray!29861) (csize!30031 Int)) (Empty!14900) )
))
(declare-datatypes ((BalanceConc!29230 0))(
  ( (BalanceConc!29231 (c!840252 Conc!14900)) )
))
(declare-fun totalInput!685 () BalanceConc!29230)

(declare-fun size!37549 (BalanceConc!29230) Int)

(assert (=> b!4930658 (= res!2104146 (= totalInputSize!132 (size!37549 totalInput!685)))))

(declare-fun b!4930660 () Bool)

(declare-fun res!2104145 () Bool)

(assert (=> b!4930660 (=> res!2104145 e!3080565)))

(declare-fun testedPSize!70 () Int)

(assert (=> b!4930660 (= res!2104145 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun b!4930661 () Bool)

(declare-fun e!3080563 () Bool)

(declare-fun tp!1384243 () Bool)

(declare-fun inv!73621 (Conc!14900) Bool)

(assert (=> b!4930661 (= e!3080563 (and (inv!73621 (c!840252 totalInput!685)) tp!1384243))))

(declare-fun b!4930662 () Bool)

(declare-fun tp!1384240 () Bool)

(assert (=> b!4930662 (= e!3080566 tp!1384240)))

(declare-fun b!4930663 () Bool)

(declare-fun res!2104140 () Bool)

(assert (=> b!4930663 (=> res!2104140 e!3080564)))

(declare-fun nullableZipper!822 ((InoxSet Context!6066)) Bool)

(assert (=> b!4930663 (= res!2104140 (nullableZipper!822 z!3568))))

(declare-fun res!2104144 () Bool)

(assert (=> start!517824 (=> (not res!2104144) (not e!3080560))))

(assert (=> start!517824 (= res!2104144 (= lt!2029738 lt!2029740))))

(declare-fun list!17995 (BalanceConc!29230) List!56864)

(assert (=> start!517824 (= lt!2029740 (list!17995 totalInput!685))))

(declare-fun ++!12356 (List!56864 List!56864) List!56864)

(assert (=> start!517824 (= lt!2029738 (++!12356 testedP!110 testedSuffix!70))))

(assert (=> start!517824 e!3080560))

(declare-fun e!3080562 () Bool)

(assert (=> start!517824 e!3080562))

(declare-fun condSetEmpty!27614 () Bool)

(assert (=> start!517824 (= condSetEmpty!27614 (= z!3568 ((as const (Array Context!6066 Bool)) false)))))

(assert (=> start!517824 setRes!27614))

(assert (=> start!517824 true))

(declare-fun inv!73622 (BalanceConc!29230) Bool)

(assert (=> start!517824 (and (inv!73622 totalInput!685) e!3080563)))

(declare-fun e!3080561 () Bool)

(assert (=> start!517824 e!3080561))

(declare-fun b!4930659 () Bool)

(assert (=> b!4930659 (= e!3080559 e!3080565)))

(declare-fun res!2104141 () Bool)

(assert (=> b!4930659 (=> res!2104141 e!3080565)))

(declare-fun lostCauseZipper!709 ((InoxSet Context!6066)) Bool)

(assert (=> b!4930659 (= res!2104141 (lostCauseZipper!709 z!3568))))

(declare-fun lt!2029743 () List!56864)

(assert (=> b!4930659 (and (= testedSuffix!70 lt!2029743) (= lt!2029743 testedSuffix!70))))

(declare-fun lt!2029742 () Unit!147369)

(declare-fun lemmaSamePrefixThenSameSuffix!2387 (List!56864 List!56864 List!56864 List!56864 List!56864) Unit!147369)

(assert (=> b!4930659 (= lt!2029742 (lemmaSamePrefixThenSameSuffix!2387 testedP!110 testedSuffix!70 testedP!110 lt!2029743 lt!2029740))))

(declare-fun getSuffix!2973 (List!56864 List!56864) List!56864)

(assert (=> b!4930659 (= lt!2029743 (getSuffix!2973 lt!2029740 testedP!110))))

(declare-fun b!4930664 () Bool)

(declare-fun tp_is_empty!35959 () Bool)

(declare-fun tp!1384239 () Bool)

(assert (=> b!4930664 (= e!3080561 (and tp_is_empty!35959 tp!1384239))))

(declare-fun b!4930665 () Bool)

(declare-fun size!37550 (List!56864) Int)

(assert (=> b!4930665 (= e!3080564 (= totalInputSize!132 (size!37550 lt!2029740)))))

(declare-fun b!4930666 () Bool)

(declare-fun tp!1384242 () Bool)

(assert (=> b!4930666 (= e!3080562 (and tp_is_empty!35959 tp!1384242))))

(declare-fun b!4930667 () Bool)

(declare-fun res!2104139 () Bool)

(assert (=> b!4930667 (=> (not res!2104139) (not e!3080560))))

(assert (=> b!4930667 (= res!2104139 (= testedPSize!70 (size!37550 testedP!110)))))

(assert (= (and start!517824 res!2104144) b!4930667))

(assert (= (and b!4930667 res!2104139) b!4930658))

(assert (= (and b!4930658 res!2104146) b!4930657))

(assert (= (and b!4930657 (not res!2104142)) b!4930659))

(assert (= (and b!4930659 (not res!2104141)) b!4930660))

(assert (= (and b!4930660 (not res!2104145)) b!4930656))

(assert (= (and b!4930656 (not res!2104143)) b!4930663))

(assert (= (and b!4930663 (not res!2104140)) b!4930665))

(get-info :version)

(assert (= (and start!517824 ((_ is Cons!56740) testedP!110)) b!4930666))

(assert (= (and start!517824 condSetEmpty!27614) setIsEmpty!27614))

(assert (= (and start!517824 (not condSetEmpty!27614)) setNonEmpty!27614))

(assert (= setNonEmpty!27614 b!4930662))

(assert (= start!517824 b!4930661))

(assert (= (and start!517824 ((_ is Cons!56740) testedSuffix!70)) b!4930664))

(declare-fun m!5950768 () Bool)

(assert (=> start!517824 m!5950768))

(declare-fun m!5950770 () Bool)

(assert (=> start!517824 m!5950770))

(declare-fun m!5950772 () Bool)

(assert (=> start!517824 m!5950772))

(declare-fun m!5950774 () Bool)

(assert (=> setNonEmpty!27614 m!5950774))

(declare-fun m!5950776 () Bool)

(assert (=> b!4930657 m!5950776))

(declare-fun m!5950778 () Bool)

(assert (=> b!4930657 m!5950778))

(declare-fun m!5950780 () Bool)

(assert (=> b!4930657 m!5950780))

(declare-fun m!5950782 () Bool)

(assert (=> b!4930667 m!5950782))

(declare-fun m!5950784 () Bool)

(assert (=> b!4930665 m!5950784))

(declare-fun m!5950786 () Bool)

(assert (=> b!4930656 m!5950786))

(declare-fun m!5950788 () Bool)

(assert (=> b!4930656 m!5950788))

(declare-fun m!5950790 () Bool)

(assert (=> b!4930656 m!5950790))

(declare-fun m!5950792 () Bool)

(assert (=> b!4930658 m!5950792))

(declare-fun m!5950794 () Bool)

(assert (=> b!4930663 m!5950794))

(declare-fun m!5950796 () Bool)

(assert (=> b!4930661 m!5950796))

(declare-fun m!5950798 () Bool)

(assert (=> b!4930659 m!5950798))

(declare-fun m!5950800 () Bool)

(assert (=> b!4930659 m!5950800))

(declare-fun m!5950802 () Bool)

(assert (=> b!4930659 m!5950802))

(check-sat (not b!4930659) (not b!4930667) tp_is_empty!35959 (not b!4930664) (not b!4930665) (not b!4930666) (not b!4930661) (not b!4930658) (not b!4930663) (not b!4930657) (not start!517824) (not b!4930656) (not b!4930662) (not setNonEmpty!27614))
(check-sat)
