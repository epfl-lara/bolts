; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521120 () Bool)

(assert start!521120)

(declare-fun b!4948130 () Bool)

(declare-fun e!3091613 () Bool)

(declare-fun e!3091614 () Bool)

(assert (=> b!4948130 (= e!3091613 e!3091614)))

(declare-fun res!2111382 () Bool)

(assert (=> b!4948130 (=> (not res!2111382) (not e!3091614))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2040787 () Int)

(assert (=> b!4948130 (= res!2111382 (= testedPSize!70 lt!2040787))))

(declare-datatypes ((C!27228 0))(
  ( (C!27229 (val!22948 Int)) )
))
(declare-datatypes ((List!57121 0))(
  ( (Nil!56997) (Cons!56997 (h!63445 C!27228) (t!367667 List!57121)) )
))
(declare-fun testedP!110 () List!57121)

(declare-fun size!37825 (List!57121) Int)

(assert (=> b!4948130 (= lt!2040787 (size!37825 testedP!110))))

(declare-fun b!4948131 () Bool)

(declare-fun e!3091619 () Bool)

(declare-fun e!3091623 () Bool)

(assert (=> b!4948131 (= e!3091619 e!3091623)))

(declare-fun res!2111380 () Bool)

(assert (=> b!4948131 (=> res!2111380 e!3091623)))

(declare-fun lt!2040769 () C!27228)

(declare-fun testedSuffix!70 () List!57121)

(declare-fun head!10615 (List!57121) C!27228)

(assert (=> b!4948131 (= res!2111380 (not (= lt!2040769 (head!10615 testedSuffix!70))))))

(declare-datatypes ((IArray!30077 0))(
  ( (IArray!30078 (innerList!15096 List!57121)) )
))
(declare-datatypes ((Conc!15008 0))(
  ( (Node!15008 (left!41582 Conc!15008) (right!41912 Conc!15008) (csize!30246 Int) (cheight!15219 Int)) (Leaf!24945 (xs!18334 IArray!30077) (csize!30247 Int)) (Empty!15008) )
))
(declare-datatypes ((BalanceConc!29446 0))(
  ( (BalanceConc!29447 (c!844506 Conc!15008)) )
))
(declare-fun totalInput!685 () BalanceConc!29446)

(declare-fun apply!13835 (BalanceConc!29446 Int) C!27228)

(assert (=> b!4948131 (= lt!2040769 (apply!13835 totalInput!685 testedPSize!70))))

(declare-fun lt!2040784 () List!57121)

(declare-fun drop!2296 (List!57121 Int) List!57121)

(declare-fun apply!13836 (List!57121 Int) C!27228)

(assert (=> b!4948131 (= (head!10615 (drop!2296 lt!2040784 testedPSize!70)) (apply!13836 lt!2040784 testedPSize!70))))

(declare-datatypes ((Unit!147806 0))(
  ( (Unit!147807) )
))
(declare-fun lt!2040778 () Unit!147806)

(declare-fun lemmaDropApply!1350 (List!57121 Int) Unit!147806)

(assert (=> b!4948131 (= lt!2040778 (lemmaDropApply!1350 lt!2040784 testedPSize!70))))

(declare-fun lt!2040775 () List!57121)

(declare-fun lt!2040783 () List!57121)

(assert (=> b!4948131 (not (or (not (= lt!2040775 testedP!110)) (not (= lt!2040783 testedSuffix!70))))))

(declare-fun lt!2040771 () Unit!147806)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!733 (List!57121 List!57121 List!57121 List!57121) Unit!147806)

(assert (=> b!4948131 (= lt!2040771 (lemmaConcatSameAndSameSizesThenSameLists!733 lt!2040775 lt!2040783 testedP!110 testedSuffix!70))))

(declare-fun b!4948132 () Bool)

(declare-fun e!3091617 () Bool)

(declare-fun e!3091612 () Bool)

(assert (=> b!4948132 (= e!3091617 (not e!3091612))))

(declare-fun res!2111374 () Bool)

(assert (=> b!4948132 (=> res!2111374 e!3091612)))

(declare-fun isPrefix!5095 (List!57121 List!57121) Bool)

(assert (=> b!4948132 (= res!2111374 (not (isPrefix!5095 testedP!110 lt!2040784)))))

(declare-fun lt!2040774 () List!57121)

(assert (=> b!4948132 (isPrefix!5095 testedP!110 lt!2040774)))

(declare-fun lt!2040781 () Unit!147806)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3319 (List!57121 List!57121) Unit!147806)

(assert (=> b!4948132 (= lt!2040781 (lemmaConcatTwoListThenFirstIsPrefix!3319 testedP!110 testedSuffix!70))))

(declare-fun b!4948133 () Bool)

(declare-fun e!3091618 () Bool)

(declare-fun tp_is_empty!36175 () Bool)

(declare-fun tp!1387761 () Bool)

(assert (=> b!4948133 (= e!3091618 (and tp_is_empty!36175 tp!1387761))))

(declare-datatypes ((Regex!13489 0))(
  ( (ElementMatch!13489 (c!844507 C!27228)) (Concat!22062 (regOne!27490 Regex!13489) (regTwo!27490 Regex!13489)) (EmptyExpr!13489) (Star!13489 (reg!13818 Regex!13489)) (EmptyLang!13489) (Union!13489 (regOne!27491 Regex!13489) (regTwo!27491 Regex!13489)) )
))
(declare-datatypes ((List!57122 0))(
  ( (Nil!56998) (Cons!56998 (h!63446 Regex!13489) (t!367668 List!57122)) )
))
(declare-datatypes ((Context!6262 0))(
  ( (Context!6263 (exprs!3631 List!57122)) )
))
(declare-fun setElem!28090 () Context!6262)

(declare-fun e!3091620 () Bool)

(declare-fun setNonEmpty!28090 () Bool)

(declare-fun tp!1387763 () Bool)

(declare-fun setRes!28090 () Bool)

(declare-fun inv!74265 (Context!6262) Bool)

(assert (=> setNonEmpty!28090 (= setRes!28090 (and tp!1387763 (inv!74265 setElem!28090) e!3091620))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6262))

(declare-fun setRest!28090 () (InoxSet Context!6262))

(assert (=> setNonEmpty!28090 (= z!3568 ((_ map or) (store ((as const (Array Context!6262 Bool)) false) setElem!28090 true) setRest!28090))))

(declare-fun b!4948134 () Bool)

(declare-fun res!2111381 () Bool)

(declare-fun e!3091611 () Bool)

(assert (=> b!4948134 (=> res!2111381 e!3091611)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4948134 (= res!2111381 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4948136 () Bool)

(declare-fun e!3091621 () Bool)

(declare-fun tp!1387762 () Bool)

(declare-fun inv!74266 (Conc!15008) Bool)

(assert (=> b!4948136 (= e!3091621 (and (inv!74266 (c!844506 totalInput!685)) tp!1387762))))

(declare-fun b!4948137 () Bool)

(assert (=> b!4948137 (= e!3091611 e!3091619)))

(declare-fun res!2111379 () Bool)

(assert (=> b!4948137 (=> res!2111379 e!3091619)))

(declare-fun ++!12476 (List!57121 List!57121) List!57121)

(assert (=> b!4948137 (= res!2111379 (not (= (++!12476 lt!2040775 lt!2040783) lt!2040784)))))

(declare-datatypes ((tuple2!61562 0))(
  ( (tuple2!61563 (_1!34084 BalanceConc!29446) (_2!34084 BalanceConc!29446)) )
))
(declare-fun lt!2040773 () tuple2!61562)

(declare-fun list!18175 (BalanceConc!29446) List!57121)

(assert (=> b!4948137 (= lt!2040783 (list!18175 (_2!34084 lt!2040773)))))

(assert (=> b!4948137 (= lt!2040775 (list!18175 (_1!34084 lt!2040773)))))

(declare-fun splitAt!408 (BalanceConc!29446 Int) tuple2!61562)

(assert (=> b!4948137 (= lt!2040773 (splitAt!408 totalInput!685 testedPSize!70))))

(declare-fun b!4948138 () Bool)

(declare-fun res!2111378 () Bool)

(declare-fun e!3091610 () Bool)

(assert (=> b!4948138 (=> res!2111378 e!3091610)))

(declare-fun lt!2040788 () List!57121)

(declare-fun lt!2040786 () List!57121)

(declare-fun findLongestMatchInnerZipperFast!103 ((InoxSet Context!6262) List!57121 Int List!57121 BalanceConc!29446 Int) Int)

(declare-fun derivationStepZipper!611 ((InoxSet Context!6262) C!27228) (InoxSet Context!6262))

(assert (=> b!4948138 (= res!2111378 (not (= (findLongestMatchInnerZipperFast!103 (derivationStepZipper!611 z!3568 lt!2040769) lt!2040788 (+ 1 testedPSize!70) lt!2040786 totalInput!685 totalInputSize!132) 0)))))

(declare-fun b!4948139 () Bool)

(assert (=> b!4948139 (= e!3091614 e!3091617)))

(declare-fun res!2111373 () Bool)

(assert (=> b!4948139 (=> (not res!2111373) (not e!3091617))))

(declare-fun lt!2040779 () Int)

(assert (=> b!4948139 (= res!2111373 (= totalInputSize!132 lt!2040779))))

(declare-fun size!37826 (BalanceConc!29446) Int)

(assert (=> b!4948139 (= lt!2040779 (size!37826 totalInput!685))))

(declare-fun b!4948140 () Bool)

(declare-fun e!3091616 () Unit!147806)

(declare-fun Unit!147808 () Unit!147806)

(assert (=> b!4948140 (= e!3091616 Unit!147808)))

(declare-fun b!4948141 () Bool)

(declare-fun tp!1387764 () Bool)

(assert (=> b!4948141 (= e!3091620 tp!1387764)))

(declare-fun b!4948142 () Bool)

(declare-fun e!3091615 () Bool)

(assert (=> b!4948142 (= e!3091623 e!3091615)))

(declare-fun res!2111375 () Bool)

(assert (=> b!4948142 (=> res!2111375 e!3091615)))

(assert (=> b!4948142 (= res!2111375 (>= lt!2040787 lt!2040779))))

(declare-fun lt!2040789 () Unit!147806)

(assert (=> b!4948142 (= lt!2040789 e!3091616)))

(declare-fun c!844505 () Bool)

(assert (=> b!4948142 (= c!844505 (= lt!2040787 lt!2040779))))

(assert (=> b!4948142 (<= lt!2040787 (size!37825 lt!2040784))))

(declare-fun lt!2040770 () Unit!147806)

(declare-fun lemmaIsPrefixThenSmallerEqSize!750 (List!57121 List!57121) Unit!147806)

(assert (=> b!4948142 (= lt!2040770 (lemmaIsPrefixThenSmallerEqSize!750 testedP!110 lt!2040784))))

(declare-fun b!4948143 () Bool)

(declare-fun Unit!147809 () Unit!147806)

(assert (=> b!4948143 (= e!3091616 Unit!147809)))

(declare-fun lt!2040776 () Unit!147806)

(declare-fun lemmaIsPrefixRefl!3435 (List!57121 List!57121) Unit!147806)

(assert (=> b!4948143 (= lt!2040776 (lemmaIsPrefixRefl!3435 lt!2040784 lt!2040784))))

(assert (=> b!4948143 (isPrefix!5095 lt!2040784 lt!2040784)))

(declare-fun lt!2040782 () Unit!147806)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1187 (List!57121 List!57121 List!57121) Unit!147806)

(assert (=> b!4948143 (= lt!2040782 (lemmaIsPrefixSameLengthThenSameList!1187 lt!2040784 testedP!110 lt!2040784))))

(assert (=> b!4948143 false))

(declare-fun b!4948144 () Bool)

(assert (=> b!4948144 (= e!3091615 e!3091610)))

(declare-fun res!2111372 () Bool)

(assert (=> b!4948144 (=> res!2111372 e!3091610)))

(declare-fun nullableZipper!860 ((InoxSet Context!6262)) Bool)

(assert (=> b!4948144 (= res!2111372 (not (nullableZipper!860 z!3568)))))

(assert (=> b!4948144 (= (++!12476 lt!2040788 lt!2040786) lt!2040784)))

(assert (=> b!4948144 (= lt!2040788 (++!12476 testedP!110 (Cons!56997 lt!2040769 Nil!56997)))))

(declare-fun lt!2040780 () Unit!147806)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1434 (List!57121 C!27228 List!57121 List!57121) Unit!147806)

(assert (=> b!4948144 (= lt!2040780 (lemmaMoveElementToOtherListKeepsConcatEq!1434 testedP!110 lt!2040769 lt!2040786 lt!2040784))))

(declare-fun tail!9750 (List!57121) List!57121)

(assert (=> b!4948144 (= lt!2040786 (tail!9750 testedSuffix!70))))

(declare-fun lt!2040785 () List!57121)

(assert (=> b!4948144 (isPrefix!5095 (++!12476 testedP!110 (Cons!56997 (head!10615 lt!2040785) Nil!56997)) lt!2040784)))

(declare-fun lt!2040772 () Unit!147806)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!824 (List!57121 List!57121) Unit!147806)

(assert (=> b!4948144 (= lt!2040772 (lemmaAddHeadSuffixToPrefixStillPrefix!824 testedP!110 lt!2040784))))

(declare-fun res!2111377 () Bool)

(assert (=> start!521120 (=> (not res!2111377) (not e!3091613))))

(assert (=> start!521120 (= res!2111377 (= lt!2040774 lt!2040784))))

(assert (=> start!521120 (= lt!2040784 (list!18175 totalInput!685))))

(assert (=> start!521120 (= lt!2040774 (++!12476 testedP!110 testedSuffix!70))))

(assert (=> start!521120 e!3091613))

(assert (=> start!521120 e!3091618))

(declare-fun condSetEmpty!28090 () Bool)

(assert (=> start!521120 (= condSetEmpty!28090 (= z!3568 ((as const (Array Context!6262 Bool)) false)))))

(assert (=> start!521120 setRes!28090))

(assert (=> start!521120 true))

(declare-fun inv!74267 (BalanceConc!29446) Bool)

(assert (=> start!521120 (and (inv!74267 totalInput!685) e!3091621)))

(declare-fun e!3091622 () Bool)

(assert (=> start!521120 e!3091622))

(declare-fun b!4948135 () Bool)

(declare-fun res!2111371 () Bool)

(assert (=> b!4948135 (=> res!2111371 e!3091619)))

(assert (=> b!4948135 (= res!2111371 (not (= (size!37826 (_1!34084 lt!2040773)) testedPSize!70)))))

(declare-fun b!4948145 () Bool)

(declare-datatypes ((tuple2!61564 0))(
  ( (tuple2!61565 (_1!34085 List!57121) (_2!34085 List!57121)) )
))
(declare-fun findLongestMatchInnerZipper!78 ((InoxSet Context!6262) List!57121 Int List!57121 List!57121 Int) tuple2!61564)

(assert (=> b!4948145 (= e!3091610 (= (size!37825 (_1!34085 (findLongestMatchInnerZipper!78 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2040784 totalInputSize!132))) testedPSize!70))))

(declare-fun b!4948146 () Bool)

(assert (=> b!4948146 (= e!3091612 e!3091611)))

(declare-fun res!2111376 () Bool)

(assert (=> b!4948146 (=> res!2111376 e!3091611)))

(declare-fun lostCauseZipper!807 ((InoxSet Context!6262)) Bool)

(assert (=> b!4948146 (= res!2111376 (lostCauseZipper!807 z!3568))))

(assert (=> b!4948146 (and (= testedSuffix!70 lt!2040785) (= lt!2040785 testedSuffix!70))))

(declare-fun lt!2040777 () Unit!147806)

(declare-fun lemmaSamePrefixThenSameSuffix!2487 (List!57121 List!57121 List!57121 List!57121 List!57121) Unit!147806)

(assert (=> b!4948146 (= lt!2040777 (lemmaSamePrefixThenSameSuffix!2487 testedP!110 testedSuffix!70 testedP!110 lt!2040785 lt!2040784))))

(declare-fun getSuffix!3077 (List!57121 List!57121) List!57121)

(assert (=> b!4948146 (= lt!2040785 (getSuffix!3077 lt!2040784 testedP!110))))

(declare-fun b!4948147 () Bool)

(declare-fun tp!1387765 () Bool)

(assert (=> b!4948147 (= e!3091622 (and tp_is_empty!36175 tp!1387765))))

(declare-fun setIsEmpty!28090 () Bool)

(assert (=> setIsEmpty!28090 setRes!28090))

(assert (= (and start!521120 res!2111377) b!4948130))

(assert (= (and b!4948130 res!2111382) b!4948139))

(assert (= (and b!4948139 res!2111373) b!4948132))

(assert (= (and b!4948132 (not res!2111374)) b!4948146))

(assert (= (and b!4948146 (not res!2111376)) b!4948134))

(assert (= (and b!4948134 (not res!2111381)) b!4948137))

(assert (= (and b!4948137 (not res!2111379)) b!4948135))

(assert (= (and b!4948135 (not res!2111371)) b!4948131))

(assert (= (and b!4948131 (not res!2111380)) b!4948142))

(assert (= (and b!4948142 c!844505) b!4948143))

(assert (= (and b!4948142 (not c!844505)) b!4948140))

(assert (= (and b!4948142 (not res!2111375)) b!4948144))

(assert (= (and b!4948144 (not res!2111372)) b!4948138))

(assert (= (and b!4948138 (not res!2111378)) b!4948145))

(get-info :version)

(assert (= (and start!521120 ((_ is Cons!56997) testedP!110)) b!4948133))

(assert (= (and start!521120 condSetEmpty!28090) setIsEmpty!28090))

(assert (= (and start!521120 (not condSetEmpty!28090)) setNonEmpty!28090))

(assert (= setNonEmpty!28090 b!4948141))

(assert (= start!521120 b!4948136))

(assert (= (and start!521120 ((_ is Cons!56997) testedSuffix!70)) b!4948147))

(declare-fun m!5971706 () Bool)

(assert (=> b!4948132 m!5971706))

(declare-fun m!5971708 () Bool)

(assert (=> b!4948132 m!5971708))

(declare-fun m!5971710 () Bool)

(assert (=> b!4948132 m!5971710))

(declare-fun m!5971712 () Bool)

(assert (=> b!4948144 m!5971712))

(declare-fun m!5971714 () Bool)

(assert (=> b!4948144 m!5971714))

(declare-fun m!5971716 () Bool)

(assert (=> b!4948144 m!5971716))

(declare-fun m!5971718 () Bool)

(assert (=> b!4948144 m!5971718))

(declare-fun m!5971720 () Bool)

(assert (=> b!4948144 m!5971720))

(declare-fun m!5971722 () Bool)

(assert (=> b!4948144 m!5971722))

(declare-fun m!5971724 () Bool)

(assert (=> b!4948144 m!5971724))

(assert (=> b!4948144 m!5971720))

(declare-fun m!5971726 () Bool)

(assert (=> b!4948144 m!5971726))

(declare-fun m!5971728 () Bool)

(assert (=> b!4948144 m!5971728))

(declare-fun m!5971730 () Bool)

(assert (=> b!4948146 m!5971730))

(declare-fun m!5971732 () Bool)

(assert (=> b!4948146 m!5971732))

(declare-fun m!5971734 () Bool)

(assert (=> b!4948146 m!5971734))

(declare-fun m!5971736 () Bool)

(assert (=> setNonEmpty!28090 m!5971736))

(declare-fun m!5971738 () Bool)

(assert (=> start!521120 m!5971738))

(declare-fun m!5971740 () Bool)

(assert (=> start!521120 m!5971740))

(declare-fun m!5971742 () Bool)

(assert (=> start!521120 m!5971742))

(declare-fun m!5971744 () Bool)

(assert (=> b!4948131 m!5971744))

(declare-fun m!5971746 () Bool)

(assert (=> b!4948131 m!5971746))

(declare-fun m!5971748 () Bool)

(assert (=> b!4948131 m!5971748))

(declare-fun m!5971750 () Bool)

(assert (=> b!4948131 m!5971750))

(declare-fun m!5971752 () Bool)

(assert (=> b!4948131 m!5971752))

(assert (=> b!4948131 m!5971746))

(declare-fun m!5971754 () Bool)

(assert (=> b!4948131 m!5971754))

(declare-fun m!5971756 () Bool)

(assert (=> b!4948131 m!5971756))

(declare-fun m!5971758 () Bool)

(assert (=> b!4948145 m!5971758))

(declare-fun m!5971760 () Bool)

(assert (=> b!4948145 m!5971760))

(declare-fun m!5971762 () Bool)

(assert (=> b!4948143 m!5971762))

(declare-fun m!5971764 () Bool)

(assert (=> b!4948143 m!5971764))

(declare-fun m!5971766 () Bool)

(assert (=> b!4948143 m!5971766))

(declare-fun m!5971768 () Bool)

(assert (=> b!4948135 m!5971768))

(declare-fun m!5971770 () Bool)

(assert (=> b!4948138 m!5971770))

(assert (=> b!4948138 m!5971770))

(declare-fun m!5971772 () Bool)

(assert (=> b!4948138 m!5971772))

(declare-fun m!5971774 () Bool)

(assert (=> b!4948142 m!5971774))

(declare-fun m!5971776 () Bool)

(assert (=> b!4948142 m!5971776))

(declare-fun m!5971778 () Bool)

(assert (=> b!4948136 m!5971778))

(declare-fun m!5971780 () Bool)

(assert (=> b!4948139 m!5971780))

(declare-fun m!5971782 () Bool)

(assert (=> b!4948130 m!5971782))

(declare-fun m!5971784 () Bool)

(assert (=> b!4948137 m!5971784))

(declare-fun m!5971786 () Bool)

(assert (=> b!4948137 m!5971786))

(declare-fun m!5971788 () Bool)

(assert (=> b!4948137 m!5971788))

(declare-fun m!5971790 () Bool)

(assert (=> b!4948137 m!5971790))

(check-sat (not b!4948137) (not b!4948145) (not b!4948139) (not b!4948136) (not b!4948147) (not start!521120) (not b!4948133) (not setNonEmpty!28090) (not b!4948142) (not b!4948144) (not b!4948130) (not b!4948135) (not b!4948138) (not b!4948131) (not b!4948146) (not b!4948132) tp_is_empty!36175 (not b!4948143) (not b!4948141))
(check-sat)
(get-model)

(declare-fun d!1593259 () Bool)

(declare-fun lambda!246760 () Int)

(declare-fun forall!13272 (List!57122 Int) Bool)

(assert (=> d!1593259 (= (inv!74265 setElem!28090) (forall!13272 (exprs!3631 setElem!28090) lambda!246760))))

(declare-fun bs!1181894 () Bool)

(assert (= bs!1181894 d!1593259))

(declare-fun m!5971794 () Bool)

(assert (=> bs!1181894 m!5971794))

(assert (=> setNonEmpty!28090 d!1593259))

(declare-fun d!1593263 () Bool)

(declare-fun lambda!246763 () Int)

(declare-fun exists!1339 ((InoxSet Context!6262) Int) Bool)

(assert (=> d!1593263 (= (nullableZipper!860 z!3568) (exists!1339 z!3568 lambda!246763))))

(declare-fun bs!1181895 () Bool)

(assert (= bs!1181895 d!1593263))

(declare-fun m!5971796 () Bool)

(assert (=> bs!1181895 m!5971796))

(assert (=> b!4948144 d!1593263))

(declare-fun b!4948161 () Bool)

(declare-fun e!3091633 () List!57121)

(assert (=> b!4948161 (= e!3091633 (Cons!56997 (h!63445 testedP!110) (++!12476 (t!367667 testedP!110) (Cons!56997 (head!10615 lt!2040785) Nil!56997))))))

(declare-fun b!4948162 () Bool)

(declare-fun res!2111387 () Bool)

(declare-fun e!3091632 () Bool)

(assert (=> b!4948162 (=> (not res!2111387) (not e!3091632))))

(declare-fun lt!2040808 () List!57121)

(assert (=> b!4948162 (= res!2111387 (= (size!37825 lt!2040808) (+ (size!37825 testedP!110) (size!37825 (Cons!56997 (head!10615 lt!2040785) Nil!56997)))))))

(declare-fun b!4948163 () Bool)

(assert (=> b!4948163 (= e!3091632 (or (not (= (Cons!56997 (head!10615 lt!2040785) Nil!56997) Nil!56997)) (= lt!2040808 testedP!110)))))

(declare-fun b!4948160 () Bool)

(assert (=> b!4948160 (= e!3091633 (Cons!56997 (head!10615 lt!2040785) Nil!56997))))

(declare-fun d!1593265 () Bool)

(assert (=> d!1593265 e!3091632))

(declare-fun res!2111388 () Bool)

(assert (=> d!1593265 (=> (not res!2111388) (not e!3091632))))

(declare-fun content!10154 (List!57121) (InoxSet C!27228))

(assert (=> d!1593265 (= res!2111388 (= (content!10154 lt!2040808) ((_ map or) (content!10154 testedP!110) (content!10154 (Cons!56997 (head!10615 lt!2040785) Nil!56997)))))))

(assert (=> d!1593265 (= lt!2040808 e!3091633)))

(declare-fun c!844520 () Bool)

(assert (=> d!1593265 (= c!844520 ((_ is Nil!56997) testedP!110))))

(assert (=> d!1593265 (= (++!12476 testedP!110 (Cons!56997 (head!10615 lt!2040785) Nil!56997)) lt!2040808)))

(assert (= (and d!1593265 c!844520) b!4948160))

(assert (= (and d!1593265 (not c!844520)) b!4948161))

(assert (= (and d!1593265 res!2111388) b!4948162))

(assert (= (and b!4948162 res!2111387) b!4948163))

(declare-fun m!5971798 () Bool)

(assert (=> b!4948161 m!5971798))

(declare-fun m!5971800 () Bool)

(assert (=> b!4948162 m!5971800))

(assert (=> b!4948162 m!5971782))

(declare-fun m!5971802 () Bool)

(assert (=> b!4948162 m!5971802))

(declare-fun m!5971804 () Bool)

(assert (=> d!1593265 m!5971804))

(declare-fun m!5971806 () Bool)

(assert (=> d!1593265 m!5971806))

(declare-fun m!5971808 () Bool)

(assert (=> d!1593265 m!5971808))

(assert (=> b!4948144 d!1593265))

(declare-fun d!1593267 () Bool)

(assert (=> d!1593267 (= (head!10615 lt!2040785) (h!63445 lt!2040785))))

(assert (=> b!4948144 d!1593267))

(declare-fun d!1593269 () Bool)

(assert (=> d!1593269 (= (tail!9750 testedSuffix!70) (t!367667 testedSuffix!70))))

(assert (=> b!4948144 d!1593269))

(declare-fun b!4948165 () Bool)

(declare-fun e!3091637 () List!57121)

(assert (=> b!4948165 (= e!3091637 (Cons!56997 (h!63445 lt!2040788) (++!12476 (t!367667 lt!2040788) lt!2040786)))))

(declare-fun b!4948166 () Bool)

(declare-fun res!2111389 () Bool)

(declare-fun e!3091636 () Bool)

(assert (=> b!4948166 (=> (not res!2111389) (not e!3091636))))

(declare-fun lt!2040809 () List!57121)

(assert (=> b!4948166 (= res!2111389 (= (size!37825 lt!2040809) (+ (size!37825 lt!2040788) (size!37825 lt!2040786))))))

(declare-fun b!4948167 () Bool)

(assert (=> b!4948167 (= e!3091636 (or (not (= lt!2040786 Nil!56997)) (= lt!2040809 lt!2040788)))))

(declare-fun b!4948164 () Bool)

(assert (=> b!4948164 (= e!3091637 lt!2040786)))

(declare-fun d!1593271 () Bool)

(assert (=> d!1593271 e!3091636))

(declare-fun res!2111390 () Bool)

(assert (=> d!1593271 (=> (not res!2111390) (not e!3091636))))

(assert (=> d!1593271 (= res!2111390 (= (content!10154 lt!2040809) ((_ map or) (content!10154 lt!2040788) (content!10154 lt!2040786))))))

(assert (=> d!1593271 (= lt!2040809 e!3091637)))

(declare-fun c!844521 () Bool)

(assert (=> d!1593271 (= c!844521 ((_ is Nil!56997) lt!2040788))))

(assert (=> d!1593271 (= (++!12476 lt!2040788 lt!2040786) lt!2040809)))

(assert (= (and d!1593271 c!844521) b!4948164))

(assert (= (and d!1593271 (not c!844521)) b!4948165))

(assert (= (and d!1593271 res!2111390) b!4948166))

(assert (= (and b!4948166 res!2111389) b!4948167))

(declare-fun m!5971810 () Bool)

(assert (=> b!4948165 m!5971810))

(declare-fun m!5971812 () Bool)

(assert (=> b!4948166 m!5971812))

(declare-fun m!5971814 () Bool)

(assert (=> b!4948166 m!5971814))

(declare-fun m!5971816 () Bool)

(assert (=> b!4948166 m!5971816))

(declare-fun m!5971818 () Bool)

(assert (=> d!1593271 m!5971818))

(declare-fun m!5971820 () Bool)

(assert (=> d!1593271 m!5971820))

(declare-fun m!5971822 () Bool)

(assert (=> d!1593271 m!5971822))

(assert (=> b!4948144 d!1593271))

(declare-fun d!1593273 () Bool)

(declare-fun e!3091645 () Bool)

(assert (=> d!1593273 e!3091645))

(declare-fun res!2111400 () Bool)

(assert (=> d!1593273 (=> res!2111400 e!3091645)))

(declare-fun lt!2040820 () Bool)

(assert (=> d!1593273 (= res!2111400 (not lt!2040820))))

(declare-fun e!3091646 () Bool)

(assert (=> d!1593273 (= lt!2040820 e!3091646)))

(declare-fun res!2111401 () Bool)

(assert (=> d!1593273 (=> res!2111401 e!3091646)))

(assert (=> d!1593273 (= res!2111401 ((_ is Nil!56997) (++!12476 testedP!110 (Cons!56997 (head!10615 lt!2040785) Nil!56997))))))

(assert (=> d!1593273 (= (isPrefix!5095 (++!12476 testedP!110 (Cons!56997 (head!10615 lt!2040785) Nil!56997)) lt!2040784) lt!2040820)))

(declare-fun e!3091647 () Bool)

(declare-fun b!4948180 () Bool)

(assert (=> b!4948180 (= e!3091647 (isPrefix!5095 (tail!9750 (++!12476 testedP!110 (Cons!56997 (head!10615 lt!2040785) Nil!56997))) (tail!9750 lt!2040784)))))

(declare-fun b!4948178 () Bool)

(assert (=> b!4948178 (= e!3091646 e!3091647)))

(declare-fun res!2111402 () Bool)

(assert (=> b!4948178 (=> (not res!2111402) (not e!3091647))))

(assert (=> b!4948178 (= res!2111402 (not ((_ is Nil!56997) lt!2040784)))))

(declare-fun b!4948179 () Bool)

(declare-fun res!2111399 () Bool)

(assert (=> b!4948179 (=> (not res!2111399) (not e!3091647))))

(assert (=> b!4948179 (= res!2111399 (= (head!10615 (++!12476 testedP!110 (Cons!56997 (head!10615 lt!2040785) Nil!56997))) (head!10615 lt!2040784)))))

(declare-fun b!4948181 () Bool)

(assert (=> b!4948181 (= e!3091645 (>= (size!37825 lt!2040784) (size!37825 (++!12476 testedP!110 (Cons!56997 (head!10615 lt!2040785) Nil!56997)))))))

(assert (= (and d!1593273 (not res!2111401)) b!4948178))

(assert (= (and b!4948178 res!2111402) b!4948179))

(assert (= (and b!4948179 res!2111399) b!4948180))

(assert (= (and d!1593273 (not res!2111400)) b!4948181))

(assert (=> b!4948180 m!5971720))

(declare-fun m!5971838 () Bool)

(assert (=> b!4948180 m!5971838))

(declare-fun m!5971840 () Bool)

(assert (=> b!4948180 m!5971840))

(assert (=> b!4948180 m!5971838))

(assert (=> b!4948180 m!5971840))

(declare-fun m!5971842 () Bool)

(assert (=> b!4948180 m!5971842))

(assert (=> b!4948179 m!5971720))

(declare-fun m!5971844 () Bool)

(assert (=> b!4948179 m!5971844))

(declare-fun m!5971846 () Bool)

(assert (=> b!4948179 m!5971846))

(assert (=> b!4948181 m!5971774))

(assert (=> b!4948181 m!5971720))

(declare-fun m!5971848 () Bool)

(assert (=> b!4948181 m!5971848))

(assert (=> b!4948144 d!1593273))

(declare-fun d!1593277 () Bool)

(assert (=> d!1593277 (isPrefix!5095 (++!12476 testedP!110 (Cons!56997 (head!10615 (getSuffix!3077 lt!2040784 testedP!110)) Nil!56997)) lt!2040784)))

(declare-fun lt!2040826 () Unit!147806)

(declare-fun choose!36515 (List!57121 List!57121) Unit!147806)

(assert (=> d!1593277 (= lt!2040826 (choose!36515 testedP!110 lt!2040784))))

(assert (=> d!1593277 (isPrefix!5095 testedP!110 lt!2040784)))

(assert (=> d!1593277 (= (lemmaAddHeadSuffixToPrefixStillPrefix!824 testedP!110 lt!2040784) lt!2040826)))

(declare-fun bs!1181900 () Bool)

(assert (= bs!1181900 d!1593277))

(assert (=> bs!1181900 m!5971706))

(declare-fun m!5971852 () Bool)

(assert (=> bs!1181900 m!5971852))

(assert (=> bs!1181900 m!5971734))

(declare-fun m!5971854 () Bool)

(assert (=> bs!1181900 m!5971854))

(declare-fun m!5971856 () Bool)

(assert (=> bs!1181900 m!5971856))

(assert (=> bs!1181900 m!5971734))

(declare-fun m!5971858 () Bool)

(assert (=> bs!1181900 m!5971858))

(assert (=> bs!1181900 m!5971854))

(assert (=> b!4948144 d!1593277))

(declare-fun b!4948187 () Bool)

(declare-fun e!3091651 () List!57121)

(assert (=> b!4948187 (= e!3091651 (Cons!56997 (h!63445 testedP!110) (++!12476 (t!367667 testedP!110) (Cons!56997 lt!2040769 Nil!56997))))))

(declare-fun b!4948188 () Bool)

(declare-fun res!2111403 () Bool)

(declare-fun e!3091650 () Bool)

(assert (=> b!4948188 (=> (not res!2111403) (not e!3091650))))

(declare-fun lt!2040829 () List!57121)

(assert (=> b!4948188 (= res!2111403 (= (size!37825 lt!2040829) (+ (size!37825 testedP!110) (size!37825 (Cons!56997 lt!2040769 Nil!56997)))))))

(declare-fun b!4948189 () Bool)

(assert (=> b!4948189 (= e!3091650 (or (not (= (Cons!56997 lt!2040769 Nil!56997) Nil!56997)) (= lt!2040829 testedP!110)))))

(declare-fun b!4948186 () Bool)

(assert (=> b!4948186 (= e!3091651 (Cons!56997 lt!2040769 Nil!56997))))

(declare-fun d!1593281 () Bool)

(assert (=> d!1593281 e!3091650))

(declare-fun res!2111404 () Bool)

(assert (=> d!1593281 (=> (not res!2111404) (not e!3091650))))

(assert (=> d!1593281 (= res!2111404 (= (content!10154 lt!2040829) ((_ map or) (content!10154 testedP!110) (content!10154 (Cons!56997 lt!2040769 Nil!56997)))))))

(assert (=> d!1593281 (= lt!2040829 e!3091651)))

(declare-fun c!844527 () Bool)

(assert (=> d!1593281 (= c!844527 ((_ is Nil!56997) testedP!110))))

(assert (=> d!1593281 (= (++!12476 testedP!110 (Cons!56997 lt!2040769 Nil!56997)) lt!2040829)))

(assert (= (and d!1593281 c!844527) b!4948186))

(assert (= (and d!1593281 (not c!844527)) b!4948187))

(assert (= (and d!1593281 res!2111404) b!4948188))

(assert (= (and b!4948188 res!2111403) b!4948189))

(declare-fun m!5971860 () Bool)

(assert (=> b!4948187 m!5971860))

(declare-fun m!5971862 () Bool)

(assert (=> b!4948188 m!5971862))

(assert (=> b!4948188 m!5971782))

(declare-fun m!5971864 () Bool)

(assert (=> b!4948188 m!5971864))

(declare-fun m!5971866 () Bool)

(assert (=> d!1593281 m!5971866))

(assert (=> d!1593281 m!5971806))

(declare-fun m!5971868 () Bool)

(assert (=> d!1593281 m!5971868))

(assert (=> b!4948144 d!1593281))

(declare-fun d!1593283 () Bool)

(assert (=> d!1593283 (= (++!12476 (++!12476 testedP!110 (Cons!56997 lt!2040769 Nil!56997)) lt!2040786) lt!2040784)))

(declare-fun lt!2040833 () Unit!147806)

(declare-fun choose!36517 (List!57121 C!27228 List!57121 List!57121) Unit!147806)

(assert (=> d!1593283 (= lt!2040833 (choose!36517 testedP!110 lt!2040769 lt!2040786 lt!2040784))))

(assert (=> d!1593283 (= (++!12476 testedP!110 (Cons!56997 lt!2040769 lt!2040786)) lt!2040784)))

(assert (=> d!1593283 (= (lemmaMoveElementToOtherListKeepsConcatEq!1434 testedP!110 lt!2040769 lt!2040786 lt!2040784) lt!2040833)))

(declare-fun bs!1181901 () Bool)

(assert (= bs!1181901 d!1593283))

(assert (=> bs!1181901 m!5971718))

(assert (=> bs!1181901 m!5971718))

(declare-fun m!5971876 () Bool)

(assert (=> bs!1181901 m!5971876))

(declare-fun m!5971878 () Bool)

(assert (=> bs!1181901 m!5971878))

(declare-fun m!5971880 () Bool)

(assert (=> bs!1181901 m!5971880))

(assert (=> b!4948144 d!1593283))

(declare-fun d!1593287 () Bool)

(declare-fun lt!2040839 () Int)

(assert (=> d!1593287 (>= lt!2040839 0)))

(declare-fun e!3091664 () Int)

(assert (=> d!1593287 (= lt!2040839 e!3091664)))

(declare-fun c!844531 () Bool)

(assert (=> d!1593287 (= c!844531 ((_ is Nil!56997) lt!2040784))))

(assert (=> d!1593287 (= (size!37825 lt!2040784) lt!2040839)))

(declare-fun b!4948208 () Bool)

(assert (=> b!4948208 (= e!3091664 0)))

(declare-fun b!4948209 () Bool)

(assert (=> b!4948209 (= e!3091664 (+ 1 (size!37825 (t!367667 lt!2040784))))))

(assert (= (and d!1593287 c!844531) b!4948208))

(assert (= (and d!1593287 (not c!844531)) b!4948209))

(declare-fun m!5971890 () Bool)

(assert (=> b!4948209 m!5971890))

(assert (=> b!4948142 d!1593287))

(declare-fun d!1593291 () Bool)

(assert (=> d!1593291 (<= (size!37825 testedP!110) (size!37825 lt!2040784))))

(declare-fun lt!2040845 () Unit!147806)

(declare-fun choose!36518 (List!57121 List!57121) Unit!147806)

(assert (=> d!1593291 (= lt!2040845 (choose!36518 testedP!110 lt!2040784))))

(assert (=> d!1593291 (isPrefix!5095 testedP!110 lt!2040784)))

(assert (=> d!1593291 (= (lemmaIsPrefixThenSmallerEqSize!750 testedP!110 lt!2040784) lt!2040845)))

(declare-fun bs!1181902 () Bool)

(assert (= bs!1181902 d!1593291))

(assert (=> bs!1181902 m!5971782))

(assert (=> bs!1181902 m!5971774))

(declare-fun m!5971900 () Bool)

(assert (=> bs!1181902 m!5971900))

(assert (=> bs!1181902 m!5971706))

(assert (=> b!4948142 d!1593291))

(declare-fun d!1593295 () Bool)

(assert (=> d!1593295 (isPrefix!5095 lt!2040784 lt!2040784)))

(declare-fun lt!2040849 () Unit!147806)

(declare-fun choose!36519 (List!57121 List!57121) Unit!147806)

(assert (=> d!1593295 (= lt!2040849 (choose!36519 lt!2040784 lt!2040784))))

(assert (=> d!1593295 (= (lemmaIsPrefixRefl!3435 lt!2040784 lt!2040784) lt!2040849)))

(declare-fun bs!1181904 () Bool)

(assert (= bs!1181904 d!1593295))

(assert (=> bs!1181904 m!5971764))

(declare-fun m!5971906 () Bool)

(assert (=> bs!1181904 m!5971906))

(assert (=> b!4948143 d!1593295))

(declare-fun d!1593299 () Bool)

(declare-fun e!3091668 () Bool)

(assert (=> d!1593299 e!3091668))

(declare-fun res!2111422 () Bool)

(assert (=> d!1593299 (=> res!2111422 e!3091668)))

(declare-fun lt!2040850 () Bool)

(assert (=> d!1593299 (= res!2111422 (not lt!2040850))))

(declare-fun e!3091669 () Bool)

(assert (=> d!1593299 (= lt!2040850 e!3091669)))

(declare-fun res!2111423 () Bool)

(assert (=> d!1593299 (=> res!2111423 e!3091669)))

(assert (=> d!1593299 (= res!2111423 ((_ is Nil!56997) lt!2040784))))

(assert (=> d!1593299 (= (isPrefix!5095 lt!2040784 lt!2040784) lt!2040850)))

(declare-fun b!4948216 () Bool)

(declare-fun e!3091670 () Bool)

(assert (=> b!4948216 (= e!3091670 (isPrefix!5095 (tail!9750 lt!2040784) (tail!9750 lt!2040784)))))

(declare-fun b!4948214 () Bool)

(assert (=> b!4948214 (= e!3091669 e!3091670)))

(declare-fun res!2111424 () Bool)

(assert (=> b!4948214 (=> (not res!2111424) (not e!3091670))))

(assert (=> b!4948214 (= res!2111424 (not ((_ is Nil!56997) lt!2040784)))))

(declare-fun b!4948215 () Bool)

(declare-fun res!2111421 () Bool)

(assert (=> b!4948215 (=> (not res!2111421) (not e!3091670))))

(assert (=> b!4948215 (= res!2111421 (= (head!10615 lt!2040784) (head!10615 lt!2040784)))))

(declare-fun b!4948217 () Bool)

(assert (=> b!4948217 (= e!3091668 (>= (size!37825 lt!2040784) (size!37825 lt!2040784)))))

(assert (= (and d!1593299 (not res!2111423)) b!4948214))

(assert (= (and b!4948214 res!2111424) b!4948215))

(assert (= (and b!4948215 res!2111421) b!4948216))

(assert (= (and d!1593299 (not res!2111422)) b!4948217))

(assert (=> b!4948216 m!5971840))

(assert (=> b!4948216 m!5971840))

(assert (=> b!4948216 m!5971840))

(assert (=> b!4948216 m!5971840))

(declare-fun m!5971908 () Bool)

(assert (=> b!4948216 m!5971908))

(assert (=> b!4948215 m!5971846))

(assert (=> b!4948215 m!5971846))

(assert (=> b!4948217 m!5971774))

(assert (=> b!4948217 m!5971774))

(assert (=> b!4948143 d!1593299))

(declare-fun d!1593301 () Bool)

(assert (=> d!1593301 (= lt!2040784 testedP!110)))

(declare-fun lt!2040855 () Unit!147806)

(declare-fun choose!36520 (List!57121 List!57121 List!57121) Unit!147806)

(assert (=> d!1593301 (= lt!2040855 (choose!36520 lt!2040784 testedP!110 lt!2040784))))

(assert (=> d!1593301 (isPrefix!5095 lt!2040784 lt!2040784)))

(assert (=> d!1593301 (= (lemmaIsPrefixSameLengthThenSameList!1187 lt!2040784 testedP!110 lt!2040784) lt!2040855)))

(declare-fun bs!1181905 () Bool)

(assert (= bs!1181905 d!1593301))

(declare-fun m!5971910 () Bool)

(assert (=> bs!1181905 m!5971910))

(assert (=> bs!1181905 m!5971764))

(assert (=> b!4948143 d!1593301))

(declare-fun bs!1181908 () Bool)

(declare-fun d!1593303 () Bool)

(assert (= bs!1181908 (and d!1593303 d!1593263)))

(declare-fun lambda!246791 () Int)

(assert (=> bs!1181908 (not (= lambda!246791 lambda!246763))))

(declare-fun bs!1181909 () Bool)

(declare-fun b!4948234 () Bool)

(assert (= bs!1181909 (and b!4948234 d!1593263)))

(declare-fun lambda!246792 () Int)

(assert (=> bs!1181909 (not (= lambda!246792 lambda!246763))))

(declare-fun bs!1181910 () Bool)

(assert (= bs!1181910 (and b!4948234 d!1593303)))

(assert (=> bs!1181910 (not (= lambda!246792 lambda!246791))))

(declare-fun bs!1181911 () Bool)

(declare-fun b!4948235 () Bool)

(assert (= bs!1181911 (and b!4948235 d!1593263)))

(declare-fun lambda!246793 () Int)

(assert (=> bs!1181911 (not (= lambda!246793 lambda!246763))))

(declare-fun bs!1181912 () Bool)

(assert (= bs!1181912 (and b!4948235 d!1593303)))

(assert (=> bs!1181912 (not (= lambda!246793 lambda!246791))))

(declare-fun bs!1181913 () Bool)

(assert (= bs!1181913 (and b!4948235 b!4948234)))

(assert (=> bs!1181913 (= lambda!246793 lambda!246792)))

(declare-fun lt!2040880 () Bool)

(declare-datatypes ((Option!14220 0))(
  ( (None!14219) (Some!14219 (v!50197 List!57121)) )
))
(declare-fun isEmpty!30666 (Option!14220) Bool)

(declare-fun getLanguageWitness!691 ((InoxSet Context!6262)) Option!14220)

(assert (=> d!1593303 (= lt!2040880 (isEmpty!30666 (getLanguageWitness!691 z!3568)))))

(declare-fun forall!13274 ((InoxSet Context!6262) Int) Bool)

(assert (=> d!1593303 (= lt!2040880 (forall!13274 z!3568 lambda!246791))))

(declare-fun lt!2040878 () Unit!147806)

(declare-fun e!3091683 () Unit!147806)

(assert (=> d!1593303 (= lt!2040878 e!3091683)))

(declare-fun c!844545 () Bool)

(assert (=> d!1593303 (= c!844545 (not (forall!13274 z!3568 lambda!246791)))))

(assert (=> d!1593303 (= (lostCauseZipper!807 z!3568) lt!2040880)))

(declare-fun Unit!147812 () Unit!147806)

(assert (=> b!4948235 (= e!3091683 Unit!147812)))

(declare-datatypes ((List!57124 0))(
  ( (Nil!57000) (Cons!57000 (h!63448 Context!6262) (t!367670 List!57124)) )
))
(declare-fun lt!2040873 () List!57124)

(declare-fun call!345298 () List!57124)

(assert (=> b!4948235 (= lt!2040873 call!345298)))

(declare-fun lt!2040875 () Unit!147806)

(declare-fun lemmaForallThenNotExists!223 (List!57124 Int) Unit!147806)

(assert (=> b!4948235 (= lt!2040875 (lemmaForallThenNotExists!223 lt!2040873 lambda!246791))))

(declare-fun call!345297 () Bool)

(assert (=> b!4948235 (not call!345297)))

(declare-fun lt!2040876 () Unit!147806)

(assert (=> b!4948235 (= lt!2040876 lt!2040875)))

(declare-fun Unit!147813 () Unit!147806)

(assert (=> b!4948234 (= e!3091683 Unit!147813)))

(declare-fun lt!2040877 () List!57124)

(assert (=> b!4948234 (= lt!2040877 call!345298)))

(declare-fun lt!2040879 () Unit!147806)

(declare-fun lemmaNotForallThenExists!240 (List!57124 Int) Unit!147806)

(assert (=> b!4948234 (= lt!2040879 (lemmaNotForallThenExists!240 lt!2040877 lambda!246791))))

(assert (=> b!4948234 call!345297))

(declare-fun lt!2040874 () Unit!147806)

(assert (=> b!4948234 (= lt!2040874 lt!2040879)))

(declare-fun bm!345293 () Bool)

(declare-fun toList!8002 ((InoxSet Context!6262)) List!57124)

(assert (=> bm!345293 (= call!345298 (toList!8002 z!3568))))

(declare-fun bm!345292 () Bool)

(declare-fun exists!1341 (List!57124 Int) Bool)

(assert (=> bm!345292 (= call!345297 (exists!1341 (ite c!844545 lt!2040877 lt!2040873) (ite c!844545 lambda!246792 lambda!246793)))))

(assert (= (and d!1593303 c!844545) b!4948234))

(assert (= (and d!1593303 (not c!844545)) b!4948235))

(assert (= (or b!4948234 b!4948235) bm!345292))

(assert (= (or b!4948234 b!4948235) bm!345293))

(declare-fun m!5971930 () Bool)

(assert (=> b!4948235 m!5971930))

(declare-fun m!5971932 () Bool)

(assert (=> bm!345293 m!5971932))

(declare-fun m!5971934 () Bool)

(assert (=> bm!345292 m!5971934))

(declare-fun m!5971936 () Bool)

(assert (=> d!1593303 m!5971936))

(assert (=> d!1593303 m!5971936))

(declare-fun m!5971938 () Bool)

(assert (=> d!1593303 m!5971938))

(declare-fun m!5971940 () Bool)

(assert (=> d!1593303 m!5971940))

(assert (=> d!1593303 m!5971940))

(declare-fun m!5971942 () Bool)

(assert (=> b!4948234 m!5971942))

(assert (=> b!4948146 d!1593303))

(declare-fun d!1593311 () Bool)

(assert (=> d!1593311 (= testedSuffix!70 lt!2040785)))

(declare-fun lt!2040889 () Unit!147806)

(declare-fun choose!36521 (List!57121 List!57121 List!57121 List!57121 List!57121) Unit!147806)

(assert (=> d!1593311 (= lt!2040889 (choose!36521 testedP!110 testedSuffix!70 testedP!110 lt!2040785 lt!2040784))))

(assert (=> d!1593311 (isPrefix!5095 testedP!110 lt!2040784)))

(assert (=> d!1593311 (= (lemmaSamePrefixThenSameSuffix!2487 testedP!110 testedSuffix!70 testedP!110 lt!2040785 lt!2040784) lt!2040889)))

(declare-fun bs!1181914 () Bool)

(assert (= bs!1181914 d!1593311))

(declare-fun m!5971958 () Bool)

(assert (=> bs!1181914 m!5971958))

(assert (=> bs!1181914 m!5971706))

(assert (=> b!4948146 d!1593311))

(declare-fun d!1593317 () Bool)

(declare-fun lt!2040894 () List!57121)

(assert (=> d!1593317 (= (++!12476 testedP!110 lt!2040894) lt!2040784)))

(declare-fun e!3091697 () List!57121)

(assert (=> d!1593317 (= lt!2040894 e!3091697)))

(declare-fun c!844554 () Bool)

(assert (=> d!1593317 (= c!844554 ((_ is Cons!56997) testedP!110))))

(assert (=> d!1593317 (>= (size!37825 lt!2040784) (size!37825 testedP!110))))

(assert (=> d!1593317 (= (getSuffix!3077 lt!2040784 testedP!110) lt!2040894)))

(declare-fun b!4948260 () Bool)

(assert (=> b!4948260 (= e!3091697 (getSuffix!3077 (tail!9750 lt!2040784) (t!367667 testedP!110)))))

(declare-fun b!4948261 () Bool)

(assert (=> b!4948261 (= e!3091697 lt!2040784)))

(assert (= (and d!1593317 c!844554) b!4948260))

(assert (= (and d!1593317 (not c!844554)) b!4948261))

(declare-fun m!5971960 () Bool)

(assert (=> d!1593317 m!5971960))

(assert (=> d!1593317 m!5971774))

(assert (=> d!1593317 m!5971782))

(assert (=> b!4948260 m!5971840))

(assert (=> b!4948260 m!5971840))

(declare-fun m!5971962 () Bool)

(assert (=> b!4948260 m!5971962))

(assert (=> b!4948146 d!1593317))

(declare-fun d!1593319 () Bool)

(declare-fun c!844563 () Bool)

(assert (=> d!1593319 (= c!844563 ((_ is Node!15008) (c!844506 totalInput!685)))))

(declare-fun e!3091709 () Bool)

(assert (=> d!1593319 (= (inv!74266 (c!844506 totalInput!685)) e!3091709)))

(declare-fun b!4948281 () Bool)

(declare-fun inv!74268 (Conc!15008) Bool)

(assert (=> b!4948281 (= e!3091709 (inv!74268 (c!844506 totalInput!685)))))

(declare-fun b!4948282 () Bool)

(declare-fun e!3091710 () Bool)

(assert (=> b!4948282 (= e!3091709 e!3091710)))

(declare-fun res!2111442 () Bool)

(assert (=> b!4948282 (= res!2111442 (not ((_ is Leaf!24945) (c!844506 totalInput!685))))))

(assert (=> b!4948282 (=> res!2111442 e!3091710)))

(declare-fun b!4948283 () Bool)

(declare-fun inv!74269 (Conc!15008) Bool)

(assert (=> b!4948283 (= e!3091710 (inv!74269 (c!844506 totalInput!685)))))

(assert (= (and d!1593319 c!844563) b!4948281))

(assert (= (and d!1593319 (not c!844563)) b!4948282))

(assert (= (and b!4948282 (not res!2111442)) b!4948283))

(declare-fun m!5971972 () Bool)

(assert (=> b!4948281 m!5971972))

(declare-fun m!5971974 () Bool)

(assert (=> b!4948283 m!5971974))

(assert (=> b!4948136 d!1593319))

(declare-fun d!1593325 () Bool)

(declare-fun lt!2040896 () Int)

(assert (=> d!1593325 (>= lt!2040896 0)))

(declare-fun e!3091711 () Int)

(assert (=> d!1593325 (= lt!2040896 e!3091711)))

(declare-fun c!844564 () Bool)

(assert (=> d!1593325 (= c!844564 ((_ is Nil!56997) (_1!34085 (findLongestMatchInnerZipper!78 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2040784 totalInputSize!132))))))

(assert (=> d!1593325 (= (size!37825 (_1!34085 (findLongestMatchInnerZipper!78 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2040784 totalInputSize!132))) lt!2040896)))

(declare-fun b!4948284 () Bool)

(assert (=> b!4948284 (= e!3091711 0)))

(declare-fun b!4948285 () Bool)

(assert (=> b!4948285 (= e!3091711 (+ 1 (size!37825 (t!367667 (_1!34085 (findLongestMatchInnerZipper!78 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2040784 totalInputSize!132))))))))

(assert (= (and d!1593325 c!844564) b!4948284))

(assert (= (and d!1593325 (not c!844564)) b!4948285))

(declare-fun m!5971976 () Bool)

(assert (=> b!4948285 m!5971976))

(assert (=> b!4948145 d!1593325))

(declare-fun b!4948335 () Bool)

(declare-fun e!3091749 () Bool)

(declare-fun lt!2040991 () tuple2!61564)

(assert (=> b!4948335 (= e!3091749 (>= (size!37825 (_1!34085 lt!2040991)) (size!37825 testedP!110)))))

(declare-fun b!4948336 () Bool)

(declare-fun e!3091750 () Unit!147806)

(declare-fun Unit!147814 () Unit!147806)

(assert (=> b!4948336 (= e!3091750 Unit!147814)))

(declare-fun bm!345313 () Bool)

(declare-fun lt!2040988 () List!57121)

(declare-fun call!345318 () (InoxSet Context!6262))

(declare-fun call!345325 () List!57121)

(declare-fun call!345324 () tuple2!61564)

(assert (=> bm!345313 (= call!345324 (findLongestMatchInnerZipper!78 call!345318 lt!2040988 (+ testedPSize!70 1) call!345325 lt!2040784 totalInputSize!132))))

(declare-fun bm!345314 () Bool)

(assert (=> bm!345314 (= call!345325 (tail!9750 testedSuffix!70))))

(declare-fun b!4948337 () Bool)

(declare-fun e!3091747 () tuple2!61564)

(declare-fun e!3091744 () tuple2!61564)

(assert (=> b!4948337 (= e!3091747 e!3091744)))

(declare-fun lt!2040978 () tuple2!61564)

(assert (=> b!4948337 (= lt!2040978 call!345324)))

(declare-fun c!844585 () Bool)

(declare-fun isEmpty!30667 (List!57121) Bool)

(assert (=> b!4948337 (= c!844585 (isEmpty!30667 (_1!34085 lt!2040978)))))

(declare-fun b!4948338 () Bool)

(assert (=> b!4948338 (= e!3091744 lt!2040978)))

(declare-fun bm!345315 () Bool)

(declare-fun call!345321 () Unit!147806)

(assert (=> bm!345315 (= call!345321 (lemmaIsPrefixRefl!3435 lt!2040784 lt!2040784))))

(declare-fun b!4948339 () Bool)

(assert (=> b!4948339 (= e!3091747 call!345324)))

(declare-fun bm!345316 () Bool)

(declare-fun call!345322 () C!27228)

(assert (=> bm!345316 (= call!345318 (derivationStepZipper!611 z!3568 call!345322))))

(declare-fun bm!345317 () Bool)

(assert (=> bm!345317 (= call!345322 (head!10615 testedSuffix!70))))

(declare-fun b!4948340 () Bool)

(declare-fun e!3091745 () tuple2!61564)

(assert (=> b!4948340 (= e!3091745 (tuple2!61565 testedP!110 Nil!56997))))

(declare-fun b!4948341 () Bool)

(assert (=> b!4948341 (= e!3091744 (tuple2!61565 testedP!110 testedSuffix!70))))

(declare-fun b!4948342 () Bool)

(declare-fun e!3091746 () Bool)

(assert (=> b!4948342 (= e!3091746 e!3091749)))

(declare-fun res!2111456 () Bool)

(assert (=> b!4948342 (=> res!2111456 e!3091749)))

(assert (=> b!4948342 (= res!2111456 (isEmpty!30667 (_1!34085 lt!2040991)))))

(declare-fun b!4948343 () Bool)

(declare-fun c!844584 () Bool)

(declare-fun call!345320 () Bool)

(assert (=> b!4948343 (= c!844584 call!345320)))

(declare-fun lt!2040992 () Unit!147806)

(declare-fun lt!2040980 () Unit!147806)

(assert (=> b!4948343 (= lt!2040992 lt!2040980)))

(assert (=> b!4948343 (= lt!2040784 testedP!110)))

(declare-fun call!345323 () Unit!147806)

(assert (=> b!4948343 (= lt!2040980 call!345323)))

(declare-fun lt!2040979 () Unit!147806)

(declare-fun lt!2040995 () Unit!147806)

(assert (=> b!4948343 (= lt!2040979 lt!2040995)))

(declare-fun call!345319 () Bool)

(assert (=> b!4948343 call!345319))

(assert (=> b!4948343 (= lt!2040995 call!345321)))

(declare-fun e!3091743 () tuple2!61564)

(assert (=> b!4948343 (= e!3091743 e!3091745)))

(declare-fun b!4948344 () Bool)

(declare-fun e!3091748 () tuple2!61564)

(assert (=> b!4948344 (= e!3091748 (tuple2!61565 Nil!56997 lt!2040784))))

(declare-fun bm!345318 () Bool)

(assert (=> bm!345318 (= call!345320 (nullableZipper!860 z!3568))))

(declare-fun b!4948345 () Bool)

(assert (=> b!4948345 (= e!3091748 e!3091743)))

(declare-fun c!844587 () Bool)

(assert (=> b!4948345 (= c!844587 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4948346 () Bool)

(declare-fun Unit!147815 () Unit!147806)

(assert (=> b!4948346 (= e!3091750 Unit!147815)))

(declare-fun lt!2041000 () Unit!147806)

(assert (=> b!4948346 (= lt!2041000 call!345321)))

(assert (=> b!4948346 call!345319))

(declare-fun lt!2041002 () Unit!147806)

(assert (=> b!4948346 (= lt!2041002 lt!2041000)))

(declare-fun lt!2040993 () Unit!147806)

(assert (=> b!4948346 (= lt!2040993 call!345323)))

(assert (=> b!4948346 (= lt!2040784 testedP!110)))

(declare-fun lt!2040982 () Unit!147806)

(assert (=> b!4948346 (= lt!2040982 lt!2040993)))

(assert (=> b!4948346 false))

(declare-fun bm!345319 () Bool)

(assert (=> bm!345319 (= call!345319 (isPrefix!5095 lt!2040784 lt!2040784))))

(declare-fun b!4948347 () Bool)

(declare-fun c!844588 () Bool)

(assert (=> b!4948347 (= c!844588 call!345320)))

(declare-fun lt!2040994 () Unit!147806)

(declare-fun lt!2040983 () Unit!147806)

(assert (=> b!4948347 (= lt!2040994 lt!2040983)))

(declare-fun lt!2040998 () List!57121)

(declare-fun lt!2040981 () C!27228)

(assert (=> b!4948347 (= (++!12476 (++!12476 testedP!110 (Cons!56997 lt!2040981 Nil!56997)) lt!2040998) lt!2040784)))

(assert (=> b!4948347 (= lt!2040983 (lemmaMoveElementToOtherListKeepsConcatEq!1434 testedP!110 lt!2040981 lt!2040998 lt!2040784))))

(assert (=> b!4948347 (= lt!2040998 (tail!9750 testedSuffix!70))))

(assert (=> b!4948347 (= lt!2040981 (head!10615 testedSuffix!70))))

(declare-fun lt!2040997 () Unit!147806)

(declare-fun lt!2041003 () Unit!147806)

(assert (=> b!4948347 (= lt!2040997 lt!2041003)))

(assert (=> b!4948347 (isPrefix!5095 (++!12476 testedP!110 (Cons!56997 (head!10615 (getSuffix!3077 lt!2040784 testedP!110)) Nil!56997)) lt!2040784)))

(assert (=> b!4948347 (= lt!2041003 (lemmaAddHeadSuffixToPrefixStillPrefix!824 testedP!110 lt!2040784))))

(assert (=> b!4948347 (= lt!2040988 (++!12476 testedP!110 (Cons!56997 (head!10615 testedSuffix!70) Nil!56997)))))

(declare-fun lt!2040985 () Unit!147806)

(assert (=> b!4948347 (= lt!2040985 e!3091750)))

(declare-fun c!844586 () Bool)

(assert (=> b!4948347 (= c!844586 (= (size!37825 testedP!110) (size!37825 lt!2040784)))))

(declare-fun lt!2040986 () Unit!147806)

(declare-fun lt!2040984 () Unit!147806)

(assert (=> b!4948347 (= lt!2040986 lt!2040984)))

(assert (=> b!4948347 (<= (size!37825 testedP!110) (size!37825 lt!2040784))))

(assert (=> b!4948347 (= lt!2040984 (lemmaIsPrefixThenSmallerEqSize!750 testedP!110 lt!2040784))))

(assert (=> b!4948347 (= e!3091743 e!3091747)))

(declare-fun d!1593327 () Bool)

(assert (=> d!1593327 e!3091746))

(declare-fun res!2111457 () Bool)

(assert (=> d!1593327 (=> (not res!2111457) (not e!3091746))))

(assert (=> d!1593327 (= res!2111457 (= (++!12476 (_1!34085 lt!2040991) (_2!34085 lt!2040991)) lt!2040784))))

(assert (=> d!1593327 (= lt!2040991 e!3091748)))

(declare-fun c!844583 () Bool)

(assert (=> d!1593327 (= c!844583 (lostCauseZipper!807 z!3568))))

(declare-fun lt!2040996 () Unit!147806)

(declare-fun Unit!147817 () Unit!147806)

(assert (=> d!1593327 (= lt!2040996 Unit!147817)))

(assert (=> d!1593327 (= (getSuffix!3077 lt!2040784 testedP!110) testedSuffix!70)))

(declare-fun lt!2040990 () Unit!147806)

(declare-fun lt!2040999 () Unit!147806)

(assert (=> d!1593327 (= lt!2040990 lt!2040999)))

(declare-fun lt!2041001 () List!57121)

(assert (=> d!1593327 (= testedSuffix!70 lt!2041001)))

(assert (=> d!1593327 (= lt!2040999 (lemmaSamePrefixThenSameSuffix!2487 testedP!110 testedSuffix!70 testedP!110 lt!2041001 lt!2040784))))

(assert (=> d!1593327 (= lt!2041001 (getSuffix!3077 lt!2040784 testedP!110))))

(declare-fun lt!2040987 () Unit!147806)

(declare-fun lt!2040989 () Unit!147806)

(assert (=> d!1593327 (= lt!2040987 lt!2040989)))

(assert (=> d!1593327 (isPrefix!5095 testedP!110 (++!12476 testedP!110 testedSuffix!70))))

(assert (=> d!1593327 (= lt!2040989 (lemmaConcatTwoListThenFirstIsPrefix!3319 testedP!110 testedSuffix!70))))

(assert (=> d!1593327 (= (++!12476 testedP!110 testedSuffix!70) lt!2040784)))

(assert (=> d!1593327 (= (findLongestMatchInnerZipper!78 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2040784 totalInputSize!132) lt!2040991)))

(declare-fun bm!345320 () Bool)

(assert (=> bm!345320 (= call!345323 (lemmaIsPrefixSameLengthThenSameList!1187 lt!2040784 testedP!110 lt!2040784))))

(declare-fun b!4948348 () Bool)

(assert (=> b!4948348 (= e!3091745 (tuple2!61565 Nil!56997 lt!2040784))))

(assert (= (and d!1593327 c!844583) b!4948344))

(assert (= (and d!1593327 (not c!844583)) b!4948345))

(assert (= (and b!4948345 c!844587) b!4948343))

(assert (= (and b!4948345 (not c!844587)) b!4948347))

(assert (= (and b!4948343 c!844584) b!4948340))

(assert (= (and b!4948343 (not c!844584)) b!4948348))

(assert (= (and b!4948347 c!844586) b!4948346))

(assert (= (and b!4948347 (not c!844586)) b!4948336))

(assert (= (and b!4948347 c!844588) b!4948337))

(assert (= (and b!4948347 (not c!844588)) b!4948339))

(assert (= (and b!4948337 c!844585) b!4948341))

(assert (= (and b!4948337 (not c!844585)) b!4948338))

(assert (= (or b!4948337 b!4948339) bm!345314))

(assert (= (or b!4948337 b!4948339) bm!345317))

(assert (= (or b!4948337 b!4948339) bm!345316))

(assert (= (or b!4948337 b!4948339) bm!345313))

(assert (= (or b!4948343 b!4948346) bm!345315))

(assert (= (or b!4948343 b!4948346) bm!345319))

(assert (= (or b!4948343 b!4948346) bm!345320))

(assert (= (or b!4948343 b!4948347) bm!345318))

(assert (= (and d!1593327 res!2111457) b!4948342))

(assert (= (and b!4948342 (not res!2111456)) b!4948335))

(assert (=> bm!345320 m!5971766))

(declare-fun m!5971992 () Bool)

(assert (=> bm!345313 m!5971992))

(assert (=> b!4948347 m!5971854))

(assert (=> b!4948347 m!5971776))

(assert (=> b!4948347 m!5971734))

(assert (=> b!4948347 m!5971858))

(declare-fun m!5971994 () Bool)

(assert (=> b!4948347 m!5971994))

(declare-fun m!5971996 () Bool)

(assert (=> b!4948347 m!5971996))

(assert (=> b!4948347 m!5971996))

(declare-fun m!5971998 () Bool)

(assert (=> b!4948347 m!5971998))

(assert (=> b!4948347 m!5971722))

(assert (=> b!4948347 m!5971782))

(assert (=> b!4948347 m!5971854))

(assert (=> b!4948347 m!5971856))

(assert (=> b!4948347 m!5971750))

(assert (=> b!4948347 m!5971728))

(declare-fun m!5972000 () Bool)

(assert (=> b!4948347 m!5972000))

(assert (=> b!4948347 m!5971734))

(assert (=> b!4948347 m!5971774))

(declare-fun m!5972002 () Bool)

(assert (=> bm!345316 m!5972002))

(declare-fun m!5972004 () Bool)

(assert (=> b!4948337 m!5972004))

(assert (=> bm!345315 m!5971762))

(declare-fun m!5972006 () Bool)

(assert (=> b!4948342 m!5972006))

(assert (=> bm!345314 m!5971728))

(assert (=> bm!345318 m!5971714))

(assert (=> bm!345317 m!5971750))

(assert (=> bm!345319 m!5971764))

(assert (=> d!1593327 m!5971730))

(declare-fun m!5972008 () Bool)

(assert (=> d!1593327 m!5972008))

(assert (=> d!1593327 m!5971734))

(assert (=> d!1593327 m!5971740))

(declare-fun m!5972010 () Bool)

(assert (=> d!1593327 m!5972010))

(assert (=> d!1593327 m!5971740))

(declare-fun m!5972012 () Bool)

(assert (=> d!1593327 m!5972012))

(assert (=> d!1593327 m!5971710))

(declare-fun m!5972014 () Bool)

(assert (=> b!4948335 m!5972014))

(assert (=> b!4948335 m!5971782))

(assert (=> b!4948145 d!1593327))

(declare-fun d!1593339 () Bool)

(declare-fun lt!2041044 () Int)

(assert (=> d!1593339 (= lt!2041044 (size!37825 (list!18175 (_1!34084 lt!2040773))))))

(declare-fun size!37827 (Conc!15008) Int)

(assert (=> d!1593339 (= lt!2041044 (size!37827 (c!844506 (_1!34084 lt!2040773))))))

(assert (=> d!1593339 (= (size!37826 (_1!34084 lt!2040773)) lt!2041044)))

(declare-fun bs!1181916 () Bool)

(assert (= bs!1181916 d!1593339))

(assert (=> bs!1181916 m!5971788))

(assert (=> bs!1181916 m!5971788))

(declare-fun m!5972016 () Bool)

(assert (=> bs!1181916 m!5972016))

(declare-fun m!5972018 () Bool)

(assert (=> bs!1181916 m!5972018))

(assert (=> b!4948135 d!1593339))

(declare-fun b!4948452 () Bool)

(declare-fun e!3091813 () Unit!147806)

(declare-fun Unit!147820 () Unit!147806)

(assert (=> b!4948452 (= e!3091813 Unit!147820)))

(declare-fun b!4948453 () Bool)

(declare-fun e!3091812 () Int)

(assert (=> b!4948453 (= e!3091812 (+ 1 testedPSize!70))))

(declare-fun lt!2041195 () List!57121)

(declare-fun bm!345365 () Bool)

(declare-fun lt!2041185 () List!57121)

(declare-fun lt!2041214 () List!57121)

(declare-fun lt!2041209 () List!57121)

(declare-fun call!345372 () Unit!147806)

(declare-fun c!844632 () Bool)

(assert (=> bm!345365 (= call!345372 (lemmaIsPrefixRefl!3435 (ite c!844632 lt!2041185 lt!2041195) (ite c!844632 lt!2041209 lt!2041214)))))

(declare-fun bm!345366 () Bool)

(declare-fun call!345370 () C!27228)

(assert (=> bm!345366 (= call!345370 (apply!13835 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun bm!345367 () Bool)

(declare-fun lt!2041186 () tuple2!61562)

(declare-fun call!345373 () List!57121)

(assert (=> bm!345367 (= call!345373 (list!18175 (ite c!844632 totalInput!685 (_1!34084 lt!2041186))))))

(declare-fun b!4948454 () Bool)

(declare-fun e!3091814 () Int)

(declare-fun call!345375 () Int)

(assert (=> b!4948454 (= e!3091814 call!345375)))

(declare-fun bm!345368 () Bool)

(declare-fun call!345374 () List!57121)

(assert (=> bm!345368 (= call!345374 (tail!9750 lt!2040786))))

(declare-fun b!4948455 () Bool)

(declare-fun c!844633 () Bool)

(declare-fun call!345377 () Bool)

(assert (=> b!4948455 (= c!844633 call!345377)))

(declare-fun lt!2041194 () Unit!147806)

(declare-fun lt!2041193 () Unit!147806)

(assert (=> b!4948455 (= lt!2041194 lt!2041193)))

(declare-fun lt!2041216 () List!57121)

(assert (=> b!4948455 (= lt!2041216 lt!2040788)))

(declare-fun call!345371 () Unit!147806)

(assert (=> b!4948455 (= lt!2041193 call!345371)))

(assert (=> b!4948455 (= lt!2041216 call!345373)))

(declare-fun lt!2041211 () Unit!147806)

(declare-fun lt!2041215 () Unit!147806)

(assert (=> b!4948455 (= lt!2041211 lt!2041215)))

(declare-fun call!345376 () Bool)

(assert (=> b!4948455 call!345376))

(assert (=> b!4948455 (= lt!2041215 call!345372)))

(assert (=> b!4948455 (= lt!2041209 call!345373)))

(assert (=> b!4948455 (= lt!2041185 call!345373)))

(declare-fun e!3091810 () Int)

(assert (=> b!4948455 (= e!3091810 e!3091812)))

(declare-fun d!1593341 () Bool)

(declare-fun lt!2041201 () Int)

(assert (=> d!1593341 (= (size!37825 (_1!34085 (findLongestMatchInnerZipper!78 (derivationStepZipper!611 z!3568 lt!2040769) lt!2040788 (+ 1 testedPSize!70) lt!2040786 (list!18175 totalInput!685) totalInputSize!132))) lt!2041201)))

(declare-fun e!3091809 () Int)

(assert (=> d!1593341 (= lt!2041201 e!3091809)))

(declare-fun c!844635 () Bool)

(assert (=> d!1593341 (= c!844635 (lostCauseZipper!807 (derivationStepZipper!611 z!3568 lt!2040769)))))

(declare-fun lt!2041196 () Unit!147806)

(declare-fun Unit!147821 () Unit!147806)

(assert (=> d!1593341 (= lt!2041196 Unit!147821)))

(assert (=> d!1593341 (= (getSuffix!3077 (list!18175 totalInput!685) lt!2040788) lt!2040786)))

(declare-fun lt!2041210 () Unit!147806)

(declare-fun lt!2041182 () Unit!147806)

(assert (=> d!1593341 (= lt!2041210 lt!2041182)))

(declare-fun lt!2041200 () List!57121)

(assert (=> d!1593341 (= lt!2040786 lt!2041200)))

(assert (=> d!1593341 (= lt!2041182 (lemmaSamePrefixThenSameSuffix!2487 lt!2040788 lt!2040786 lt!2040788 lt!2041200 (list!18175 totalInput!685)))))

(assert (=> d!1593341 (= lt!2041200 (getSuffix!3077 (list!18175 totalInput!685) lt!2040788))))

(declare-fun lt!2041197 () Unit!147806)

(declare-fun lt!2041205 () Unit!147806)

(assert (=> d!1593341 (= lt!2041197 lt!2041205)))

(assert (=> d!1593341 (isPrefix!5095 lt!2040788 (++!12476 lt!2040788 lt!2040786))))

(assert (=> d!1593341 (= lt!2041205 (lemmaConcatTwoListThenFirstIsPrefix!3319 lt!2040788 lt!2040786))))

(assert (=> d!1593341 (= (++!12476 lt!2040788 lt!2040786) (list!18175 totalInput!685))))

(assert (=> d!1593341 (= (findLongestMatchInnerZipperFast!103 (derivationStepZipper!611 z!3568 lt!2040769) lt!2040788 (+ 1 testedPSize!70) lt!2040786 totalInput!685 totalInputSize!132) lt!2041201)))

(declare-fun b!4948456 () Bool)

(declare-fun lt!2041212 () Int)

(assert (=> b!4948456 (= e!3091814 (ite (= lt!2041212 0) (+ 1 testedPSize!70) lt!2041212))))

(assert (=> b!4948456 (= lt!2041212 call!345375)))

(declare-fun bm!345369 () Bool)

(assert (=> bm!345369 (= call!345377 (nullableZipper!860 (derivationStepZipper!611 z!3568 lt!2040769)))))

(declare-fun bm!345370 () Bool)

(declare-fun c!844630 () Bool)

(assert (=> bm!345370 (= c!844630 c!844632)))

(declare-fun e!3091811 () List!57121)

(declare-fun lt!2041217 () List!57121)

(assert (=> bm!345370 (= call!345371 (lemmaIsPrefixSameLengthThenSameList!1187 (ite c!844632 lt!2041216 lt!2041217) lt!2040788 e!3091811))))

(declare-fun call!345378 () (InoxSet Context!6262))

(declare-fun call!345379 () List!57121)

(declare-fun bm!345371 () Bool)

(assert (=> bm!345371 (= call!345375 (findLongestMatchInnerZipperFast!103 call!345378 call!345379 (+ 1 testedPSize!70 1) call!345374 totalInput!685 totalInputSize!132))))

(declare-fun b!4948457 () Bool)

(assert (=> b!4948457 (= e!3091812 0)))

(declare-fun bm!345372 () Bool)

(assert (=> bm!345372 (= call!345376 (isPrefix!5095 (ite c!844632 lt!2041185 lt!2041195) (ite c!844632 lt!2041209 lt!2041214)))))

(declare-fun b!4948458 () Bool)

(declare-fun Unit!147822 () Unit!147806)

(assert (=> b!4948458 (= e!3091813 Unit!147822)))

(assert (=> b!4948458 (= lt!2041195 (list!18175 totalInput!685))))

(assert (=> b!4948458 (= lt!2041214 (list!18175 totalInput!685))))

(declare-fun lt!2041187 () Unit!147806)

(assert (=> b!4948458 (= lt!2041187 call!345372)))

(assert (=> b!4948458 call!345376))

(declare-fun lt!2041192 () Unit!147806)

(assert (=> b!4948458 (= lt!2041192 lt!2041187)))

(assert (=> b!4948458 (= lt!2041217 (list!18175 totalInput!685))))

(declare-fun lt!2041189 () Unit!147806)

(assert (=> b!4948458 (= lt!2041189 call!345371)))

(assert (=> b!4948458 (= lt!2041217 lt!2040788)))

(declare-fun lt!2041184 () Unit!147806)

(assert (=> b!4948458 (= lt!2041184 lt!2041189)))

(assert (=> b!4948458 false))

(declare-fun b!4948459 () Bool)

(assert (=> b!4948459 (= e!3091809 e!3091810)))

(assert (=> b!4948459 (= c!844632 (= (+ 1 testedPSize!70) totalInputSize!132))))

(declare-fun b!4948460 () Bool)

(assert (=> b!4948460 (= e!3091811 call!345373)))

(declare-fun b!4948461 () Bool)

(declare-fun c!844631 () Bool)

(assert (=> b!4948461 (= c!844631 call!345377)))

(declare-fun lt!2041190 () Unit!147806)

(declare-fun lt!2041191 () Unit!147806)

(assert (=> b!4948461 (= lt!2041190 lt!2041191)))

(declare-fun lt!2041188 () List!57121)

(declare-fun lt!2041199 () List!57121)

(declare-fun lt!2041218 () C!27228)

(assert (=> b!4948461 (= (++!12476 (++!12476 lt!2040788 (Cons!56997 lt!2041218 Nil!56997)) lt!2041188) lt!2041199)))

(assert (=> b!4948461 (= lt!2041191 (lemmaMoveElementToOtherListKeepsConcatEq!1434 lt!2040788 lt!2041218 lt!2041188 lt!2041199))))

(assert (=> b!4948461 (= lt!2041199 (list!18175 totalInput!685))))

(assert (=> b!4948461 (= lt!2041188 (tail!9750 lt!2040786))))

(assert (=> b!4948461 (= lt!2041218 (apply!13835 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun lt!2041220 () Unit!147806)

(declare-fun lt!2041223 () Unit!147806)

(assert (=> b!4948461 (= lt!2041220 lt!2041223)))

(declare-fun lt!2041204 () List!57121)

(assert (=> b!4948461 (isPrefix!5095 (++!12476 lt!2040788 (Cons!56997 (head!10615 (getSuffix!3077 lt!2041204 lt!2040788)) Nil!56997)) lt!2041204)))

(assert (=> b!4948461 (= lt!2041223 (lemmaAddHeadSuffixToPrefixStillPrefix!824 lt!2040788 lt!2041204))))

(assert (=> b!4948461 (= lt!2041204 (list!18175 totalInput!685))))

(declare-fun lt!2041198 () Unit!147806)

(assert (=> b!4948461 (= lt!2041198 e!3091813)))

(declare-fun c!844634 () Bool)

(assert (=> b!4948461 (= c!844634 (= (size!37825 lt!2040788) (size!37826 totalInput!685)))))

(declare-fun lt!2041206 () Unit!147806)

(declare-fun lt!2041219 () Unit!147806)

(assert (=> b!4948461 (= lt!2041206 lt!2041219)))

(declare-fun lt!2041222 () List!57121)

(assert (=> b!4948461 (<= (size!37825 lt!2040788) (size!37825 lt!2041222))))

(assert (=> b!4948461 (= lt!2041219 (lemmaIsPrefixThenSmallerEqSize!750 lt!2040788 lt!2041222))))

(assert (=> b!4948461 (= lt!2041222 (list!18175 totalInput!685))))

(declare-fun lt!2041203 () Unit!147806)

(declare-fun lt!2041208 () Unit!147806)

(assert (=> b!4948461 (= lt!2041203 lt!2041208)))

(declare-fun lt!2041221 () List!57121)

(assert (=> b!4948461 (= (head!10615 (drop!2296 lt!2041221 (+ 1 testedPSize!70))) (apply!13836 lt!2041221 (+ 1 testedPSize!70)))))

(assert (=> b!4948461 (= lt!2041208 (lemmaDropApply!1350 lt!2041221 (+ 1 testedPSize!70)))))

(assert (=> b!4948461 (= lt!2041221 (list!18175 totalInput!685))))

(declare-fun lt!2041207 () Unit!147806)

(declare-fun lt!2041202 () Unit!147806)

(assert (=> b!4948461 (= lt!2041207 lt!2041202)))

(declare-fun lt!2041183 () List!57121)

(declare-fun lt!2041213 () List!57121)

(assert (=> b!4948461 (and (= lt!2041213 lt!2040788) (= lt!2041183 lt!2040786))))

(assert (=> b!4948461 (= lt!2041202 (lemmaConcatSameAndSameSizesThenSameLists!733 lt!2041213 lt!2041183 lt!2040788 lt!2040786))))

(assert (=> b!4948461 (= lt!2041183 (list!18175 (_2!34084 lt!2041186)))))

(assert (=> b!4948461 (= lt!2041213 call!345373)))

(assert (=> b!4948461 (= lt!2041186 (splitAt!408 totalInput!685 (+ 1 testedPSize!70)))))

(assert (=> b!4948461 (= e!3091810 e!3091814)))

(declare-fun bm!345373 () Bool)

(assert (=> bm!345373 (= call!345378 (derivationStepZipper!611 (derivationStepZipper!611 z!3568 lt!2040769) call!345370))))

(declare-fun bm!345374 () Bool)

(assert (=> bm!345374 (= call!345379 (++!12476 lt!2040788 (Cons!56997 call!345370 Nil!56997)))))

(declare-fun b!4948462 () Bool)

(assert (=> b!4948462 (= e!3091809 0)))

(declare-fun b!4948463 () Bool)

(assert (=> b!4948463 (= e!3091811 (list!18175 totalInput!685))))

(assert (= (and d!1593341 c!844635) b!4948462))

(assert (= (and d!1593341 (not c!844635)) b!4948459))

(assert (= (and b!4948459 c!844632) b!4948455))

(assert (= (and b!4948459 (not c!844632)) b!4948461))

(assert (= (and b!4948455 c!844633) b!4948453))

(assert (= (and b!4948455 (not c!844633)) b!4948457))

(assert (= (and b!4948461 c!844634) b!4948458))

(assert (= (and b!4948461 (not c!844634)) b!4948452))

(assert (= (and b!4948461 c!844631) b!4948456))

(assert (= (and b!4948461 (not c!844631)) b!4948454))

(assert (= (or b!4948456 b!4948454) bm!345368))

(assert (= (or b!4948456 b!4948454) bm!345366))

(assert (= (or b!4948456 b!4948454) bm!345373))

(assert (= (or b!4948456 b!4948454) bm!345374))

(assert (= (or b!4948456 b!4948454) bm!345371))

(assert (= (or b!4948455 b!4948458) bm!345365))

(assert (= (or b!4948455 b!4948461) bm!345369))

(assert (= (or b!4948455 b!4948458) bm!345372))

(assert (= (or b!4948455 b!4948461) bm!345367))

(assert (= (or b!4948455 b!4948458) bm!345370))

(assert (= (and bm!345370 c!844630) b!4948460))

(assert (= (and bm!345370 (not c!844630)) b!4948463))

(declare-fun m!5972138 () Bool)

(assert (=> bm!345367 m!5972138))

(declare-fun m!5972140 () Bool)

(assert (=> b!4948461 m!5972140))

(declare-fun m!5972142 () Bool)

(assert (=> b!4948461 m!5972142))

(declare-fun m!5972144 () Bool)

(assert (=> b!4948461 m!5972144))

(declare-fun m!5972146 () Bool)

(assert (=> b!4948461 m!5972146))

(assert (=> b!4948461 m!5972140))

(declare-fun m!5972148 () Bool)

(assert (=> b!4948461 m!5972148))

(declare-fun m!5972150 () Bool)

(assert (=> b!4948461 m!5972150))

(declare-fun m!5972152 () Bool)

(assert (=> b!4948461 m!5972152))

(assert (=> b!4948461 m!5971738))

(declare-fun m!5972154 () Bool)

(assert (=> b!4948461 m!5972154))

(declare-fun m!5972156 () Bool)

(assert (=> b!4948461 m!5972156))

(assert (=> b!4948461 m!5972154))

(declare-fun m!5972158 () Bool)

(assert (=> b!4948461 m!5972158))

(declare-fun m!5972160 () Bool)

(assert (=> b!4948461 m!5972160))

(declare-fun m!5972162 () Bool)

(assert (=> b!4948461 m!5972162))

(assert (=> b!4948461 m!5971814))

(assert (=> b!4948461 m!5971780))

(declare-fun m!5972164 () Bool)

(assert (=> b!4948461 m!5972164))

(declare-fun m!5972166 () Bool)

(assert (=> b!4948461 m!5972166))

(declare-fun m!5972168 () Bool)

(assert (=> b!4948461 m!5972168))

(declare-fun m!5972170 () Bool)

(assert (=> b!4948461 m!5972170))

(assert (=> b!4948461 m!5972164))

(declare-fun m!5972172 () Bool)

(assert (=> b!4948461 m!5972172))

(declare-fun m!5972174 () Bool)

(assert (=> b!4948461 m!5972174))

(declare-fun m!5972176 () Bool)

(assert (=> b!4948461 m!5972176))

(assert (=> b!4948461 m!5972168))

(assert (=> b!4948458 m!5971738))

(declare-fun m!5972178 () Bool)

(assert (=> bm!345374 m!5972178))

(declare-fun m!5972180 () Bool)

(assert (=> bm!345370 m!5972180))

(declare-fun m!5972182 () Bool)

(assert (=> bm!345371 m!5972182))

(assert (=> bm!345366 m!5972152))

(declare-fun m!5972184 () Bool)

(assert (=> bm!345372 m!5972184))

(assert (=> d!1593341 m!5971712))

(assert (=> d!1593341 m!5971770))

(assert (=> d!1593341 m!5971738))

(declare-fun m!5972186 () Bool)

(assert (=> d!1593341 m!5972186))

(assert (=> d!1593341 m!5971738))

(declare-fun m!5972188 () Bool)

(assert (=> d!1593341 m!5972188))

(assert (=> d!1593341 m!5971738))

(assert (=> d!1593341 m!5971770))

(declare-fun m!5972190 () Bool)

(assert (=> d!1593341 m!5972190))

(declare-fun m!5972192 () Bool)

(assert (=> d!1593341 m!5972192))

(declare-fun m!5972194 () Bool)

(assert (=> d!1593341 m!5972194))

(assert (=> d!1593341 m!5971738))

(declare-fun m!5972196 () Bool)

(assert (=> d!1593341 m!5972196))

(assert (=> d!1593341 m!5971712))

(declare-fun m!5972198 () Bool)

(assert (=> d!1593341 m!5972198))

(declare-fun m!5972200 () Bool)

(assert (=> bm!345365 m!5972200))

(assert (=> bm!345369 m!5971770))

(declare-fun m!5972202 () Bool)

(assert (=> bm!345369 m!5972202))

(assert (=> bm!345373 m!5971770))

(declare-fun m!5972204 () Bool)

(assert (=> bm!345373 m!5972204))

(assert (=> b!4948463 m!5971738))

(assert (=> bm!345368 m!5972144))

(assert (=> b!4948138 d!1593341))

(declare-fun d!1593387 () Bool)

(assert (=> d!1593387 true))

(declare-fun lambda!246799 () Int)

(declare-fun flatMap!273 ((InoxSet Context!6262) Int) (InoxSet Context!6262))

(assert (=> d!1593387 (= (derivationStepZipper!611 z!3568 lt!2040769) (flatMap!273 z!3568 lambda!246799))))

(declare-fun bs!1181930 () Bool)

(assert (= bs!1181930 d!1593387))

(declare-fun m!5972206 () Bool)

(assert (=> bs!1181930 m!5972206))

(assert (=> b!4948138 d!1593387))

(declare-fun d!1593389 () Bool)

(declare-fun lt!2041224 () Int)

(assert (=> d!1593389 (= lt!2041224 (size!37825 (list!18175 totalInput!685)))))

(assert (=> d!1593389 (= lt!2041224 (size!37827 (c!844506 totalInput!685)))))

(assert (=> d!1593389 (= (size!37826 totalInput!685) lt!2041224)))

(declare-fun bs!1181931 () Bool)

(assert (= bs!1181931 d!1593389))

(assert (=> bs!1181931 m!5971738))

(assert (=> bs!1181931 m!5971738))

(declare-fun m!5972208 () Bool)

(assert (=> bs!1181931 m!5972208))

(declare-fun m!5972210 () Bool)

(assert (=> bs!1181931 m!5972210))

(assert (=> b!4948139 d!1593389))

(declare-fun d!1593391 () Bool)

(declare-fun list!18177 (Conc!15008) List!57121)

(assert (=> d!1593391 (= (list!18175 totalInput!685) (list!18177 (c!844506 totalInput!685)))))

(declare-fun bs!1181932 () Bool)

(assert (= bs!1181932 d!1593391))

(declare-fun m!5972212 () Bool)

(assert (=> bs!1181932 m!5972212))

(assert (=> start!521120 d!1593391))

(declare-fun b!4948467 () Bool)

(declare-fun e!3091816 () List!57121)

(assert (=> b!4948467 (= e!3091816 (Cons!56997 (h!63445 testedP!110) (++!12476 (t!367667 testedP!110) testedSuffix!70)))))

(declare-fun b!4948468 () Bool)

(declare-fun res!2111483 () Bool)

(declare-fun e!3091815 () Bool)

(assert (=> b!4948468 (=> (not res!2111483) (not e!3091815))))

(declare-fun lt!2041225 () List!57121)

(assert (=> b!4948468 (= res!2111483 (= (size!37825 lt!2041225) (+ (size!37825 testedP!110) (size!37825 testedSuffix!70))))))

(declare-fun b!4948469 () Bool)

(assert (=> b!4948469 (= e!3091815 (or (not (= testedSuffix!70 Nil!56997)) (= lt!2041225 testedP!110)))))

(declare-fun b!4948466 () Bool)

(assert (=> b!4948466 (= e!3091816 testedSuffix!70)))

(declare-fun d!1593393 () Bool)

(assert (=> d!1593393 e!3091815))

(declare-fun res!2111484 () Bool)

(assert (=> d!1593393 (=> (not res!2111484) (not e!3091815))))

(assert (=> d!1593393 (= res!2111484 (= (content!10154 lt!2041225) ((_ map or) (content!10154 testedP!110) (content!10154 testedSuffix!70))))))

(assert (=> d!1593393 (= lt!2041225 e!3091816)))

(declare-fun c!844638 () Bool)

(assert (=> d!1593393 (= c!844638 ((_ is Nil!56997) testedP!110))))

(assert (=> d!1593393 (= (++!12476 testedP!110 testedSuffix!70) lt!2041225)))

(assert (= (and d!1593393 c!844638) b!4948466))

(assert (= (and d!1593393 (not c!844638)) b!4948467))

(assert (= (and d!1593393 res!2111484) b!4948468))

(assert (= (and b!4948468 res!2111483) b!4948469))

(declare-fun m!5972214 () Bool)

(assert (=> b!4948467 m!5972214))

(declare-fun m!5972216 () Bool)

(assert (=> b!4948468 m!5972216))

(assert (=> b!4948468 m!5971782))

(declare-fun m!5972218 () Bool)

(assert (=> b!4948468 m!5972218))

(declare-fun m!5972220 () Bool)

(assert (=> d!1593393 m!5972220))

(assert (=> d!1593393 m!5971806))

(declare-fun m!5972222 () Bool)

(assert (=> d!1593393 m!5972222))

(assert (=> start!521120 d!1593393))

(declare-fun d!1593395 () Bool)

(declare-fun isBalanced!4158 (Conc!15008) Bool)

(assert (=> d!1593395 (= (inv!74267 totalInput!685) (isBalanced!4158 (c!844506 totalInput!685)))))

(declare-fun bs!1181933 () Bool)

(assert (= bs!1181933 d!1593395))

(declare-fun m!5972224 () Bool)

(assert (=> bs!1181933 m!5972224))

(assert (=> start!521120 d!1593395))

(declare-fun b!4948471 () Bool)

(declare-fun e!3091818 () List!57121)

(assert (=> b!4948471 (= e!3091818 (Cons!56997 (h!63445 lt!2040775) (++!12476 (t!367667 lt!2040775) lt!2040783)))))

(declare-fun b!4948472 () Bool)

(declare-fun res!2111485 () Bool)

(declare-fun e!3091817 () Bool)

(assert (=> b!4948472 (=> (not res!2111485) (not e!3091817))))

(declare-fun lt!2041226 () List!57121)

(assert (=> b!4948472 (= res!2111485 (= (size!37825 lt!2041226) (+ (size!37825 lt!2040775) (size!37825 lt!2040783))))))

(declare-fun b!4948473 () Bool)

(assert (=> b!4948473 (= e!3091817 (or (not (= lt!2040783 Nil!56997)) (= lt!2041226 lt!2040775)))))

(declare-fun b!4948470 () Bool)

(assert (=> b!4948470 (= e!3091818 lt!2040783)))

(declare-fun d!1593397 () Bool)

(assert (=> d!1593397 e!3091817))

(declare-fun res!2111486 () Bool)

(assert (=> d!1593397 (=> (not res!2111486) (not e!3091817))))

(assert (=> d!1593397 (= res!2111486 (= (content!10154 lt!2041226) ((_ map or) (content!10154 lt!2040775) (content!10154 lt!2040783))))))

(assert (=> d!1593397 (= lt!2041226 e!3091818)))

(declare-fun c!844639 () Bool)

(assert (=> d!1593397 (= c!844639 ((_ is Nil!56997) lt!2040775))))

(assert (=> d!1593397 (= (++!12476 lt!2040775 lt!2040783) lt!2041226)))

(assert (= (and d!1593397 c!844639) b!4948470))

(assert (= (and d!1593397 (not c!844639)) b!4948471))

(assert (= (and d!1593397 res!2111486) b!4948472))

(assert (= (and b!4948472 res!2111485) b!4948473))

(declare-fun m!5972226 () Bool)

(assert (=> b!4948471 m!5972226))

(declare-fun m!5972228 () Bool)

(assert (=> b!4948472 m!5972228))

(declare-fun m!5972230 () Bool)

(assert (=> b!4948472 m!5972230))

(declare-fun m!5972232 () Bool)

(assert (=> b!4948472 m!5972232))

(declare-fun m!5972234 () Bool)

(assert (=> d!1593397 m!5972234))

(declare-fun m!5972236 () Bool)

(assert (=> d!1593397 m!5972236))

(declare-fun m!5972238 () Bool)

(assert (=> d!1593397 m!5972238))

(assert (=> b!4948137 d!1593397))

(declare-fun d!1593399 () Bool)

(assert (=> d!1593399 (= (list!18175 (_2!34084 lt!2040773)) (list!18177 (c!844506 (_2!34084 lt!2040773))))))

(declare-fun bs!1181934 () Bool)

(assert (= bs!1181934 d!1593399))

(declare-fun m!5972240 () Bool)

(assert (=> bs!1181934 m!5972240))

(assert (=> b!4948137 d!1593399))

(declare-fun d!1593401 () Bool)

(assert (=> d!1593401 (= (list!18175 (_1!34084 lt!2040773)) (list!18177 (c!844506 (_1!34084 lt!2040773))))))

(declare-fun bs!1181935 () Bool)

(assert (= bs!1181935 d!1593401))

(declare-fun m!5972242 () Bool)

(assert (=> bs!1181935 m!5972242))

(assert (=> b!4948137 d!1593401))

(declare-fun d!1593403 () Bool)

(declare-fun e!3091831 () Bool)

(assert (=> d!1593403 e!3091831))

(declare-fun res!2111491 () Bool)

(assert (=> d!1593403 (=> (not res!2111491) (not e!3091831))))

(declare-fun lt!2041315 () tuple2!61562)

(assert (=> d!1593403 (= res!2111491 (isBalanced!4158 (c!844506 (_1!34084 lt!2041315))))))

(declare-datatypes ((tuple2!61568 0))(
  ( (tuple2!61569 (_1!34087 Conc!15008) (_2!34087 Conc!15008)) )
))
(declare-fun lt!2041316 () tuple2!61568)

(assert (=> d!1593403 (= lt!2041315 (tuple2!61563 (BalanceConc!29447 (_1!34087 lt!2041316)) (BalanceConc!29447 (_2!34087 lt!2041316))))))

(declare-fun splitAt!410 (Conc!15008 Int) tuple2!61568)

(assert (=> d!1593403 (= lt!2041316 (splitAt!410 (c!844506 totalInput!685) testedPSize!70))))

(assert (=> d!1593403 (isBalanced!4158 (c!844506 totalInput!685))))

(assert (=> d!1593403 (= (splitAt!408 totalInput!685 testedPSize!70) lt!2041315)))

(declare-fun b!4948498 () Bool)

(declare-fun res!2111492 () Bool)

(assert (=> b!4948498 (=> (not res!2111492) (not e!3091831))))

(assert (=> b!4948498 (= res!2111492 (isBalanced!4158 (c!844506 (_2!34084 lt!2041315))))))

(declare-fun b!4948499 () Bool)

(declare-fun splitAtIndex!152 (List!57121 Int) tuple2!61564)

(assert (=> b!4948499 (= e!3091831 (= (tuple2!61565 (list!18175 (_1!34084 lt!2041315)) (list!18175 (_2!34084 lt!2041315))) (splitAtIndex!152 (list!18175 totalInput!685) testedPSize!70)))))

(assert (= (and d!1593403 res!2111491) b!4948498))

(assert (= (and b!4948498 res!2111492) b!4948499))

(declare-fun m!5972244 () Bool)

(assert (=> d!1593403 m!5972244))

(declare-fun m!5972246 () Bool)

(assert (=> d!1593403 m!5972246))

(assert (=> d!1593403 m!5972224))

(declare-fun m!5972248 () Bool)

(assert (=> b!4948498 m!5972248))

(declare-fun m!5972250 () Bool)

(assert (=> b!4948499 m!5972250))

(declare-fun m!5972252 () Bool)

(assert (=> b!4948499 m!5972252))

(assert (=> b!4948499 m!5971738))

(assert (=> b!4948499 m!5971738))

(declare-fun m!5972254 () Bool)

(assert (=> b!4948499 m!5972254))

(assert (=> b!4948137 d!1593403))

(declare-fun d!1593405 () Bool)

(declare-fun lt!2041319 () C!27228)

(declare-fun contains!19496 (List!57121 C!27228) Bool)

(assert (=> d!1593405 (contains!19496 lt!2040784 lt!2041319)))

(declare-fun e!3091838 () C!27228)

(assert (=> d!1593405 (= lt!2041319 e!3091838)))

(declare-fun c!844654 () Bool)

(assert (=> d!1593405 (= c!844654 (= testedPSize!70 0))))

(declare-fun e!3091839 () Bool)

(assert (=> d!1593405 e!3091839))

(declare-fun res!2111495 () Bool)

(assert (=> d!1593405 (=> (not res!2111495) (not e!3091839))))

(assert (=> d!1593405 (= res!2111495 (<= 0 testedPSize!70))))

(assert (=> d!1593405 (= (apply!13836 lt!2040784 testedPSize!70) lt!2041319)))

(declare-fun b!4948510 () Bool)

(assert (=> b!4948510 (= e!3091839 (< testedPSize!70 (size!37825 lt!2040784)))))

(declare-fun b!4948511 () Bool)

(assert (=> b!4948511 (= e!3091838 (head!10615 lt!2040784))))

(declare-fun b!4948512 () Bool)

(assert (=> b!4948512 (= e!3091838 (apply!13836 (tail!9750 lt!2040784) (- testedPSize!70 1)))))

(assert (= (and d!1593405 res!2111495) b!4948510))

(assert (= (and d!1593405 c!844654) b!4948511))

(assert (= (and d!1593405 (not c!844654)) b!4948512))

(declare-fun m!5972256 () Bool)

(assert (=> d!1593405 m!5972256))

(assert (=> b!4948510 m!5971774))

(assert (=> b!4948511 m!5971846))

(assert (=> b!4948512 m!5971840))

(assert (=> b!4948512 m!5971840))

(declare-fun m!5972258 () Bool)

(assert (=> b!4948512 m!5972258))

(assert (=> b!4948131 d!1593405))

(declare-fun d!1593407 () Bool)

(assert (=> d!1593407 (= (head!10615 testedSuffix!70) (h!63445 testedSuffix!70))))

(assert (=> b!4948131 d!1593407))

(declare-fun d!1593409 () Bool)

(assert (=> d!1593409 (and (= lt!2040775 testedP!110) (= lt!2040783 testedSuffix!70))))

(declare-fun lt!2041322 () Unit!147806)

(declare-fun choose!36527 (List!57121 List!57121 List!57121 List!57121) Unit!147806)

(assert (=> d!1593409 (= lt!2041322 (choose!36527 lt!2040775 lt!2040783 testedP!110 testedSuffix!70))))

(assert (=> d!1593409 (= (++!12476 lt!2040775 lt!2040783) (++!12476 testedP!110 testedSuffix!70))))

(assert (=> d!1593409 (= (lemmaConcatSameAndSameSizesThenSameLists!733 lt!2040775 lt!2040783 testedP!110 testedSuffix!70) lt!2041322)))

(declare-fun bs!1181936 () Bool)

(assert (= bs!1181936 d!1593409))

(declare-fun m!5972260 () Bool)

(assert (=> bs!1181936 m!5972260))

(assert (=> bs!1181936 m!5971784))

(assert (=> bs!1181936 m!5971740))

(assert (=> b!4948131 d!1593409))

(declare-fun d!1593411 () Bool)

(assert (=> d!1593411 (= (head!10615 (drop!2296 lt!2040784 testedPSize!70)) (apply!13836 lt!2040784 testedPSize!70))))

(declare-fun lt!2041325 () Unit!147806)

(declare-fun choose!36528 (List!57121 Int) Unit!147806)

(assert (=> d!1593411 (= lt!2041325 (choose!36528 lt!2040784 testedPSize!70))))

(declare-fun e!3091842 () Bool)

(assert (=> d!1593411 e!3091842))

(declare-fun res!2111498 () Bool)

(assert (=> d!1593411 (=> (not res!2111498) (not e!3091842))))

(assert (=> d!1593411 (= res!2111498 (>= testedPSize!70 0))))

(assert (=> d!1593411 (= (lemmaDropApply!1350 lt!2040784 testedPSize!70) lt!2041325)))

(declare-fun b!4948515 () Bool)

(assert (=> b!4948515 (= e!3091842 (< testedPSize!70 (size!37825 lt!2040784)))))

(assert (= (and d!1593411 res!2111498) b!4948515))

(assert (=> d!1593411 m!5971746))

(assert (=> d!1593411 m!5971746))

(assert (=> d!1593411 m!5971748))

(assert (=> d!1593411 m!5971754))

(declare-fun m!5972262 () Bool)

(assert (=> d!1593411 m!5972262))

(assert (=> b!4948515 m!5971774))

(assert (=> b!4948131 d!1593411))

(declare-fun d!1593413 () Bool)

(declare-fun lt!2041370 () C!27228)

(assert (=> d!1593413 (= lt!2041370 (apply!13836 (list!18175 totalInput!685) testedPSize!70))))

(declare-fun apply!13838 (Conc!15008 Int) C!27228)

(assert (=> d!1593413 (= lt!2041370 (apply!13838 (c!844506 totalInput!685) testedPSize!70))))

(declare-fun e!3091851 () Bool)

(assert (=> d!1593413 e!3091851))

(declare-fun res!2111501 () Bool)

(assert (=> d!1593413 (=> (not res!2111501) (not e!3091851))))

(assert (=> d!1593413 (= res!2111501 (<= 0 testedPSize!70))))

(assert (=> d!1593413 (= (apply!13835 totalInput!685 testedPSize!70) lt!2041370)))

(declare-fun b!4948530 () Bool)

(assert (=> b!4948530 (= e!3091851 (< testedPSize!70 (size!37826 totalInput!685)))))

(assert (= (and d!1593413 res!2111501) b!4948530))

(assert (=> d!1593413 m!5971738))

(assert (=> d!1593413 m!5971738))

(declare-fun m!5972264 () Bool)

(assert (=> d!1593413 m!5972264))

(declare-fun m!5972266 () Bool)

(assert (=> d!1593413 m!5972266))

(assert (=> b!4948530 m!5971780))

(assert (=> b!4948131 d!1593413))

(declare-fun d!1593415 () Bool)

(assert (=> d!1593415 (= (head!10615 (drop!2296 lt!2040784 testedPSize!70)) (h!63445 (drop!2296 lt!2040784 testedPSize!70)))))

(assert (=> b!4948131 d!1593415))

(declare-fun b!4948556 () Bool)

(declare-fun e!3091865 () Int)

(declare-fun e!3091867 () Int)

(assert (=> b!4948556 (= e!3091865 e!3091867)))

(declare-fun c!844673 () Bool)

(declare-fun call!345412 () Int)

(assert (=> b!4948556 (= c!844673 (>= testedPSize!70 call!345412))))

(declare-fun b!4948557 () Bool)

(declare-fun e!3091864 () List!57121)

(assert (=> b!4948557 (= e!3091864 lt!2040784)))

(declare-fun b!4948558 () Bool)

(declare-fun e!3091866 () Bool)

(declare-fun lt!2041373 () List!57121)

(assert (=> b!4948558 (= e!3091866 (= (size!37825 lt!2041373) e!3091865))))

(declare-fun c!844674 () Bool)

(assert (=> b!4948558 (= c!844674 (<= testedPSize!70 0))))

(declare-fun b!4948559 () Bool)

(declare-fun e!3091868 () List!57121)

(assert (=> b!4948559 (= e!3091868 Nil!56997)))

(declare-fun b!4948560 () Bool)

(assert (=> b!4948560 (= e!3091867 0)))

(declare-fun d!1593417 () Bool)

(assert (=> d!1593417 e!3091866))

(declare-fun res!2111504 () Bool)

(assert (=> d!1593417 (=> (not res!2111504) (not e!3091866))))

(assert (=> d!1593417 (= res!2111504 (= ((_ map implies) (content!10154 lt!2041373) (content!10154 lt!2040784)) ((as const (InoxSet C!27228)) true)))))

(assert (=> d!1593417 (= lt!2041373 e!3091868)))

(declare-fun c!844672 () Bool)

(assert (=> d!1593417 (= c!844672 ((_ is Nil!56997) lt!2040784))))

(assert (=> d!1593417 (= (drop!2296 lt!2040784 testedPSize!70) lt!2041373)))

(declare-fun b!4948555 () Bool)

(assert (=> b!4948555 (= e!3091864 (drop!2296 (t!367667 lt!2040784) (- testedPSize!70 1)))))

(declare-fun bm!345407 () Bool)

(assert (=> bm!345407 (= call!345412 (size!37825 lt!2040784))))

(declare-fun b!4948561 () Bool)

(assert (=> b!4948561 (= e!3091867 (- call!345412 testedPSize!70))))

(declare-fun b!4948562 () Bool)

(assert (=> b!4948562 (= e!3091865 call!345412)))

(declare-fun b!4948563 () Bool)

(assert (=> b!4948563 (= e!3091868 e!3091864)))

(declare-fun c!844671 () Bool)

(assert (=> b!4948563 (= c!844671 (<= testedPSize!70 0))))

(assert (= (and d!1593417 c!844672) b!4948559))

(assert (= (and d!1593417 (not c!844672)) b!4948563))

(assert (= (and b!4948563 c!844671) b!4948557))

(assert (= (and b!4948563 (not c!844671)) b!4948555))

(assert (= (and d!1593417 res!2111504) b!4948558))

(assert (= (and b!4948558 c!844674) b!4948562))

(assert (= (and b!4948558 (not c!844674)) b!4948556))

(assert (= (and b!4948556 c!844673) b!4948560))

(assert (= (and b!4948556 (not c!844673)) b!4948561))

(assert (= (or b!4948562 b!4948556 b!4948561) bm!345407))

(declare-fun m!5972338 () Bool)

(assert (=> b!4948558 m!5972338))

(declare-fun m!5972340 () Bool)

(assert (=> d!1593417 m!5972340))

(declare-fun m!5972342 () Bool)

(assert (=> d!1593417 m!5972342))

(declare-fun m!5972344 () Bool)

(assert (=> b!4948555 m!5972344))

(assert (=> bm!345407 m!5971774))

(assert (=> b!4948131 d!1593417))

(declare-fun d!1593421 () Bool)

(declare-fun e!3091870 () Bool)

(assert (=> d!1593421 e!3091870))

(declare-fun res!2111506 () Bool)

(assert (=> d!1593421 (=> res!2111506 e!3091870)))

(declare-fun lt!2041374 () Bool)

(assert (=> d!1593421 (= res!2111506 (not lt!2041374))))

(declare-fun e!3091871 () Bool)

(assert (=> d!1593421 (= lt!2041374 e!3091871)))

(declare-fun res!2111507 () Bool)

(assert (=> d!1593421 (=> res!2111507 e!3091871)))

(assert (=> d!1593421 (= res!2111507 ((_ is Nil!56997) testedP!110))))

(assert (=> d!1593421 (= (isPrefix!5095 testedP!110 lt!2040784) lt!2041374)))

(declare-fun b!4948567 () Bool)

(declare-fun e!3091872 () Bool)

(assert (=> b!4948567 (= e!3091872 (isPrefix!5095 (tail!9750 testedP!110) (tail!9750 lt!2040784)))))

(declare-fun b!4948565 () Bool)

(assert (=> b!4948565 (= e!3091871 e!3091872)))

(declare-fun res!2111508 () Bool)

(assert (=> b!4948565 (=> (not res!2111508) (not e!3091872))))

(assert (=> b!4948565 (= res!2111508 (not ((_ is Nil!56997) lt!2040784)))))

(declare-fun b!4948566 () Bool)

(declare-fun res!2111505 () Bool)

(assert (=> b!4948566 (=> (not res!2111505) (not e!3091872))))

(assert (=> b!4948566 (= res!2111505 (= (head!10615 testedP!110) (head!10615 lt!2040784)))))

(declare-fun b!4948568 () Bool)

(assert (=> b!4948568 (= e!3091870 (>= (size!37825 lt!2040784) (size!37825 testedP!110)))))

(assert (= (and d!1593421 (not res!2111507)) b!4948565))

(assert (= (and b!4948565 res!2111508) b!4948566))

(assert (= (and b!4948566 res!2111505) b!4948567))

(assert (= (and d!1593421 (not res!2111506)) b!4948568))

(declare-fun m!5972348 () Bool)

(assert (=> b!4948567 m!5972348))

(assert (=> b!4948567 m!5971840))

(assert (=> b!4948567 m!5972348))

(assert (=> b!4948567 m!5971840))

(declare-fun m!5972350 () Bool)

(assert (=> b!4948567 m!5972350))

(declare-fun m!5972352 () Bool)

(assert (=> b!4948566 m!5972352))

(assert (=> b!4948566 m!5971846))

(assert (=> b!4948568 m!5971774))

(assert (=> b!4948568 m!5971782))

(assert (=> b!4948132 d!1593421))

(declare-fun d!1593423 () Bool)

(declare-fun e!3091876 () Bool)

(assert (=> d!1593423 e!3091876))

(declare-fun res!2111510 () Bool)

(assert (=> d!1593423 (=> res!2111510 e!3091876)))

(declare-fun lt!2041375 () Bool)

(assert (=> d!1593423 (= res!2111510 (not lt!2041375))))

(declare-fun e!3091877 () Bool)

(assert (=> d!1593423 (= lt!2041375 e!3091877)))

(declare-fun res!2111511 () Bool)

(assert (=> d!1593423 (=> res!2111511 e!3091877)))

(assert (=> d!1593423 (= res!2111511 ((_ is Nil!56997) testedP!110))))

(assert (=> d!1593423 (= (isPrefix!5095 testedP!110 lt!2040774) lt!2041375)))

(declare-fun b!4948576 () Bool)

(declare-fun e!3091878 () Bool)

(assert (=> b!4948576 (= e!3091878 (isPrefix!5095 (tail!9750 testedP!110) (tail!9750 lt!2040774)))))

(declare-fun b!4948574 () Bool)

(assert (=> b!4948574 (= e!3091877 e!3091878)))

(declare-fun res!2111512 () Bool)

(assert (=> b!4948574 (=> (not res!2111512) (not e!3091878))))

(assert (=> b!4948574 (= res!2111512 (not ((_ is Nil!56997) lt!2040774)))))

(declare-fun b!4948575 () Bool)

(declare-fun res!2111509 () Bool)

(assert (=> b!4948575 (=> (not res!2111509) (not e!3091878))))

(assert (=> b!4948575 (= res!2111509 (= (head!10615 testedP!110) (head!10615 lt!2040774)))))

(declare-fun b!4948577 () Bool)

(assert (=> b!4948577 (= e!3091876 (>= (size!37825 lt!2040774) (size!37825 testedP!110)))))

(assert (= (and d!1593423 (not res!2111511)) b!4948574))

(assert (= (and b!4948574 res!2111512) b!4948575))

(assert (= (and b!4948575 res!2111509) b!4948576))

(assert (= (and d!1593423 (not res!2111510)) b!4948577))

(assert (=> b!4948576 m!5972348))

(declare-fun m!5972354 () Bool)

(assert (=> b!4948576 m!5972354))

(assert (=> b!4948576 m!5972348))

(assert (=> b!4948576 m!5972354))

(declare-fun m!5972356 () Bool)

(assert (=> b!4948576 m!5972356))

(assert (=> b!4948575 m!5972352))

(declare-fun m!5972358 () Bool)

(assert (=> b!4948575 m!5972358))

(declare-fun m!5972360 () Bool)

(assert (=> b!4948577 m!5972360))

(assert (=> b!4948577 m!5971782))

(assert (=> b!4948132 d!1593423))

(declare-fun d!1593425 () Bool)

(assert (=> d!1593425 (isPrefix!5095 testedP!110 (++!12476 testedP!110 testedSuffix!70))))

(declare-fun lt!2041378 () Unit!147806)

(declare-fun choose!36531 (List!57121 List!57121) Unit!147806)

(assert (=> d!1593425 (= lt!2041378 (choose!36531 testedP!110 testedSuffix!70))))

(assert (=> d!1593425 (= (lemmaConcatTwoListThenFirstIsPrefix!3319 testedP!110 testedSuffix!70) lt!2041378)))

(declare-fun bs!1181938 () Bool)

(assert (= bs!1181938 d!1593425))

(assert (=> bs!1181938 m!5971740))

(assert (=> bs!1181938 m!5971740))

(assert (=> bs!1181938 m!5972010))

(declare-fun m!5972368 () Bool)

(assert (=> bs!1181938 m!5972368))

(assert (=> b!4948132 d!1593425))

(declare-fun d!1593427 () Bool)

(declare-fun lt!2041379 () Int)

(assert (=> d!1593427 (>= lt!2041379 0)))

(declare-fun e!3091889 () Int)

(assert (=> d!1593427 (= lt!2041379 e!3091889)))

(declare-fun c!844675 () Bool)

(assert (=> d!1593427 (= c!844675 ((_ is Nil!56997) testedP!110))))

(assert (=> d!1593427 (= (size!37825 testedP!110) lt!2041379)))

(declare-fun b!4948595 () Bool)

(assert (=> b!4948595 (= e!3091889 0)))

(declare-fun b!4948596 () Bool)

(assert (=> b!4948596 (= e!3091889 (+ 1 (size!37825 (t!367667 testedP!110))))))

(assert (= (and d!1593427 c!844675) b!4948595))

(assert (= (and d!1593427 (not c!844675)) b!4948596))

(declare-fun m!5972370 () Bool)

(assert (=> b!4948596 m!5972370))

(assert (=> b!4948130 d!1593427))

(declare-fun condSetEmpty!28096 () Bool)

(assert (=> setNonEmpty!28090 (= condSetEmpty!28096 (= setRest!28090 ((as const (Array Context!6262 Bool)) false)))))

(declare-fun setRes!28096 () Bool)

(assert (=> setNonEmpty!28090 (= tp!1387763 setRes!28096)))

(declare-fun setIsEmpty!28096 () Bool)

(assert (=> setIsEmpty!28096 setRes!28096))

(declare-fun setElem!28096 () Context!6262)

(declare-fun tp!1387795 () Bool)

(declare-fun e!3091892 () Bool)

(declare-fun setNonEmpty!28096 () Bool)

(assert (=> setNonEmpty!28096 (= setRes!28096 (and tp!1387795 (inv!74265 setElem!28096) e!3091892))))

(declare-fun setRest!28096 () (InoxSet Context!6262))

(assert (=> setNonEmpty!28096 (= setRest!28090 ((_ map or) (store ((as const (Array Context!6262 Bool)) false) setElem!28096 true) setRest!28096))))

(declare-fun b!4948601 () Bool)

(declare-fun tp!1387796 () Bool)

(assert (=> b!4948601 (= e!3091892 tp!1387796)))

(assert (= (and setNonEmpty!28090 condSetEmpty!28096) setIsEmpty!28096))

(assert (= (and setNonEmpty!28090 (not condSetEmpty!28096)) setNonEmpty!28096))

(assert (= setNonEmpty!28096 b!4948601))

(declare-fun m!5972372 () Bool)

(assert (=> setNonEmpty!28096 m!5972372))

(declare-fun b!4948606 () Bool)

(declare-fun e!3091895 () Bool)

(declare-fun tp!1387799 () Bool)

(assert (=> b!4948606 (= e!3091895 (and tp_is_empty!36175 tp!1387799))))

(assert (=> b!4948133 (= tp!1387761 e!3091895)))

(assert (= (and b!4948133 ((_ is Cons!56997) (t!367667 testedP!110))) b!4948606))

(declare-fun b!4948611 () Bool)

(declare-fun e!3091898 () Bool)

(declare-fun tp!1387804 () Bool)

(declare-fun tp!1387805 () Bool)

(assert (=> b!4948611 (= e!3091898 (and tp!1387804 tp!1387805))))

(assert (=> b!4948141 (= tp!1387764 e!3091898)))

(assert (= (and b!4948141 ((_ is Cons!56998) (exprs!3631 setElem!28090))) b!4948611))

(declare-fun tp!1387813 () Bool)

(declare-fun e!3091903 () Bool)

(declare-fun b!4948620 () Bool)

(declare-fun tp!1387814 () Bool)

(assert (=> b!4948620 (= e!3091903 (and (inv!74266 (left!41582 (c!844506 totalInput!685))) tp!1387814 (inv!74266 (right!41912 (c!844506 totalInput!685))) tp!1387813))))

(declare-fun b!4948622 () Bool)

(declare-fun e!3091904 () Bool)

(declare-fun tp!1387812 () Bool)

(assert (=> b!4948622 (= e!3091904 tp!1387812)))

(declare-fun b!4948621 () Bool)

(declare-fun inv!74272 (IArray!30077) Bool)

(assert (=> b!4948621 (= e!3091903 (and (inv!74272 (xs!18334 (c!844506 totalInput!685))) e!3091904))))

(assert (=> b!4948136 (= tp!1387762 (and (inv!74266 (c!844506 totalInput!685)) e!3091903))))

(assert (= (and b!4948136 ((_ is Node!15008) (c!844506 totalInput!685))) b!4948620))

(assert (= b!4948621 b!4948622))

(assert (= (and b!4948136 ((_ is Leaf!24945) (c!844506 totalInput!685))) b!4948621))

(declare-fun m!5972374 () Bool)

(assert (=> b!4948620 m!5972374))

(declare-fun m!5972376 () Bool)

(assert (=> b!4948620 m!5972376))

(declare-fun m!5972378 () Bool)

(assert (=> b!4948621 m!5972378))

(assert (=> b!4948136 m!5971778))

(declare-fun b!4948623 () Bool)

(declare-fun e!3091905 () Bool)

(declare-fun tp!1387815 () Bool)

(assert (=> b!4948623 (= e!3091905 (and tp_is_empty!36175 tp!1387815))))

(assert (=> b!4948147 (= tp!1387765 e!3091905)))

(assert (= (and b!4948147 ((_ is Cons!56997) (t!367667 testedSuffix!70))) b!4948623))

(check-sat (not b!4948596) (not b!4948577) (not b!4948463) (not bm!345315) (not bm!345314) (not b!4948260) (not b!4948342) (not bm!345370) (not bm!345316) (not b!4948217) (not b!4948166) (not b!4948209) (not d!1593341) (not d!1593411) (not d!1593283) (not b!4948335) (not b!4948621) (not bm!345366) (not d!1593403) (not bm!345369) (not b!4948566) (not b!4948179) (not d!1593393) (not b!4948530) (not b!4948187) (not d!1593425) (not d!1593417) (not bm!345372) (not bm!345368) (not b!4948467) (not d!1593311) (not b!4948162) (not bm!345319) (not bm!345365) (not bm!345320) (not d!1593301) (not b!4948555) (not b!4948281) (not d!1593401) (not b!4948575) (not d!1593389) (not d!1593265) (not b!4948337) (not b!4948606) (not d!1593291) (not b!4948576) (not b!4948471) (not bm!345367) (not b!4948498) (not bm!345374) (not d!1593281) (not b!4948558) (not b!4948472) (not b!4948622) (not d!1593263) (not b!4948136) (not b!4948511) (not b!4948458) (not bm!345292) (not bm!345373) (not d!1593397) (not b!4948461) (not bm!345317) (not d!1593259) (not d!1593409) (not b!4948165) (not b!4948510) (not b!4948512) (not b!4948601) (not b!4948188) (not b!4948567) (not setNonEmpty!28096) (not d!1593303) (not b!4948180) (not d!1593271) (not b!4948515) (not b!4948161) (not d!1593395) (not d!1593339) (not d!1593327) (not b!4948181) (not b!4948285) (not b!4948623) (not b!4948235) (not bm!345313) (not b!4948499) (not b!4948234) (not d!1593317) (not b!4948283) (not bm!345371) (not b!4948468) (not bm!345318) (not d!1593413) (not bm!345293) (not d!1593399) (not b!4948620) tp_is_empty!36175 (not b!4948611) (not b!4948215) (not d!1593295) (not d!1593391) (not d!1593277) (not b!4948216) (not b!4948347) (not b!4948568) (not d!1593405) (not bm!345407) (not d!1593387))
(check-sat)
