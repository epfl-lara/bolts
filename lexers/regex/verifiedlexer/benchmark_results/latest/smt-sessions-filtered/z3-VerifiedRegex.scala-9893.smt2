; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518116 () Bool)

(assert start!518116)

(declare-fun b!4932422 () Bool)

(declare-fun e!3081754 () Bool)

(declare-fun e!3081751 () Bool)

(assert (=> b!4932422 (= e!3081754 e!3081751)))

(declare-fun res!2105042 () Bool)

(assert (=> b!4932422 (=> res!2105042 e!3081751)))

(declare-fun lt!2030909 () Int)

(declare-fun lt!2030910 () Int)

(assert (=> b!4932422 (= res!2105042 (>= lt!2030909 lt!2030910))))

(declare-datatypes ((Unit!147433 0))(
  ( (Unit!147434) )
))
(declare-fun lt!2030906 () Unit!147433)

(declare-fun e!3081742 () Unit!147433)

(assert (=> b!4932422 (= lt!2030906 e!3081742)))

(declare-fun c!840554 () Bool)

(assert (=> b!4932422 (= c!840554 (= lt!2030909 lt!2030910))))

(declare-datatypes ((C!27056 0))(
  ( (C!27057 (val!22862 Int)) )
))
(declare-datatypes ((List!56914 0))(
  ( (Nil!56790) (Cons!56790 (h!63238 C!27056) (t!367394 List!56914)) )
))
(declare-fun lt!2030907 () List!56914)

(declare-fun size!37600 (List!56914) Int)

(assert (=> b!4932422 (<= lt!2030909 (size!37600 lt!2030907))))

(declare-fun lt!2030901 () Unit!147433)

(declare-fun testedP!110 () List!56914)

(declare-fun lemmaIsPrefixThenSmallerEqSize!699 (List!56914 List!56914) Unit!147433)

(assert (=> b!4932422 (= lt!2030901 (lemmaIsPrefixThenSmallerEqSize!699 testedP!110 lt!2030907))))

(declare-fun b!4932423 () Bool)

(declare-fun Unit!147435 () Unit!147433)

(assert (=> b!4932423 (= e!3081742 Unit!147435)))

(declare-fun b!4932424 () Bool)

(declare-fun res!2105041 () Bool)

(declare-fun e!3081748 () Bool)

(assert (=> b!4932424 (=> res!2105041 e!3081748)))

(declare-datatypes ((IArray!29905 0))(
  ( (IArray!29906 (innerList!15010 List!56914)) )
))
(declare-datatypes ((Conc!14922 0))(
  ( (Node!14922 (left!41417 Conc!14922) (right!41747 Conc!14922) (csize!30074 Int) (cheight!15133 Int)) (Leaf!24816 (xs!18246 IArray!29905) (csize!30075 Int)) (Empty!14922) )
))
(declare-datatypes ((BalanceConc!29274 0))(
  ( (BalanceConc!29275 (c!840555 Conc!14922)) )
))
(declare-datatypes ((tuple2!61262 0))(
  ( (tuple2!61263 (_1!33934 BalanceConc!29274) (_2!33934 BalanceConc!29274)) )
))
(declare-fun lt!2030917 () tuple2!61262)

(declare-fun testedPSize!70 () Int)

(declare-fun size!37601 (BalanceConc!29274) Int)

(assert (=> b!4932424 (= res!2105041 (not (= (size!37601 (_1!33934 lt!2030917)) testedPSize!70)))))

(declare-fun b!4932425 () Bool)

(assert (=> b!4932425 (= e!3081751 (and (<= 0 testedPSize!70) (< testedPSize!70 lt!2030910)))))

(declare-fun lt!2030916 () List!56914)

(declare-fun isPrefix!5011 (List!56914 List!56914) Bool)

(declare-fun ++!12378 (List!56914 List!56914) List!56914)

(declare-fun head!10550 (List!56914) C!27056)

(assert (=> b!4932425 (isPrefix!5011 (++!12378 testedP!110 (Cons!56790 (head!10550 lt!2030916) Nil!56790)) lt!2030907)))

(declare-fun lt!2030914 () Unit!147433)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!781 (List!56914 List!56914) Unit!147433)

(assert (=> b!4932425 (= lt!2030914 (lemmaAddHeadSuffixToPrefixStillPrefix!781 testedP!110 lt!2030907))))

(declare-fun b!4932426 () Bool)

(assert (=> b!4932426 (= e!3081748 e!3081754)))

(declare-fun res!2105044 () Bool)

(assert (=> b!4932426 (=> res!2105044 e!3081754)))

(declare-fun totalInput!685 () BalanceConc!29274)

(declare-fun testedSuffix!70 () List!56914)

(declare-fun apply!13701 (BalanceConc!29274 Int) C!27056)

(assert (=> b!4932426 (= res!2105044 (not (= (apply!13701 totalInput!685 testedPSize!70) (head!10550 testedSuffix!70))))))

(declare-fun drop!2244 (List!56914 Int) List!56914)

(declare-fun apply!13702 (List!56914 Int) C!27056)

(assert (=> b!4932426 (= (head!10550 (drop!2244 lt!2030907 testedPSize!70)) (apply!13702 lt!2030907 testedPSize!70))))

(declare-fun lt!2030915 () Unit!147433)

(declare-fun lemmaDropApply!1302 (List!56914 Int) Unit!147433)

(assert (=> b!4932426 (= lt!2030915 (lemmaDropApply!1302 lt!2030907 testedPSize!70))))

(declare-fun lt!2030903 () List!56914)

(declare-fun lt!2030904 () List!56914)

(assert (=> b!4932426 (not (or (not (= lt!2030904 testedP!110)) (not (= lt!2030903 testedSuffix!70))))))

(declare-fun lt!2030912 () Unit!147433)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!679 (List!56914 List!56914 List!56914 List!56914) Unit!147433)

(assert (=> b!4932426 (= lt!2030912 (lemmaConcatSameAndSameSizesThenSameLists!679 lt!2030904 lt!2030903 testedP!110 testedSuffix!70))))

(declare-fun res!2105038 () Bool)

(declare-fun e!3081753 () Bool)

(assert (=> start!518116 (=> (not res!2105038) (not e!3081753))))

(declare-fun lt!2030908 () List!56914)

(assert (=> start!518116 (= res!2105038 (= lt!2030908 lt!2030907))))

(declare-fun list!18024 (BalanceConc!29274) List!56914)

(assert (=> start!518116 (= lt!2030907 (list!18024 totalInput!685))))

(assert (=> start!518116 (= lt!2030908 (++!12378 testedP!110 testedSuffix!70))))

(assert (=> start!518116 e!3081753))

(declare-fun e!3081744 () Bool)

(assert (=> start!518116 e!3081744))

(declare-fun condSetEmpty!27704 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13413 0))(
  ( (ElementMatch!13413 (c!840556 C!27056)) (Concat!21986 (regOne!27338 Regex!13413) (regTwo!27338 Regex!13413)) (EmptyExpr!13413) (Star!13413 (reg!13742 Regex!13413)) (EmptyLang!13413) (Union!13413 (regOne!27339 Regex!13413) (regTwo!27339 Regex!13413)) )
))
(declare-datatypes ((List!56915 0))(
  ( (Nil!56791) (Cons!56791 (h!63239 Regex!13413) (t!367395 List!56915)) )
))
(declare-datatypes ((Context!6110 0))(
  ( (Context!6111 (exprs!3555 List!56915)) )
))
(declare-fun z!3568 () (InoxSet Context!6110))

(assert (=> start!518116 (= condSetEmpty!27704 (= z!3568 ((as const (Array Context!6110 Bool)) false)))))

(declare-fun setRes!27704 () Bool)

(assert (=> start!518116 setRes!27704))

(assert (=> start!518116 true))

(declare-fun e!3081749 () Bool)

(declare-fun inv!73740 (BalanceConc!29274) Bool)

(assert (=> start!518116 (and (inv!73740 totalInput!685) e!3081749)))

(declare-fun e!3081746 () Bool)

(assert (=> start!518116 e!3081746))

(declare-fun b!4932427 () Bool)

(declare-fun e!3081747 () Bool)

(declare-fun tp!1384772 () Bool)

(assert (=> b!4932427 (= e!3081747 tp!1384772)))

(declare-fun b!4932428 () Bool)

(declare-fun tp!1384773 () Bool)

(declare-fun inv!73741 (Conc!14922) Bool)

(assert (=> b!4932428 (= e!3081749 (and (inv!73741 (c!840555 totalInput!685)) tp!1384773))))

(declare-fun b!4932429 () Bool)

(declare-fun e!3081752 () Bool)

(declare-fun e!3081745 () Bool)

(assert (=> b!4932429 (= e!3081752 (not e!3081745))))

(declare-fun res!2105043 () Bool)

(assert (=> b!4932429 (=> res!2105043 e!3081745)))

(assert (=> b!4932429 (= res!2105043 (not (isPrefix!5011 testedP!110 lt!2030907)))))

(assert (=> b!4932429 (isPrefix!5011 testedP!110 lt!2030908)))

(declare-fun lt!2030913 () Unit!147433)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3235 (List!56914 List!56914) Unit!147433)

(assert (=> b!4932429 (= lt!2030913 (lemmaConcatTwoListThenFirstIsPrefix!3235 testedP!110 testedSuffix!70))))

(declare-fun b!4932430 () Bool)

(declare-fun res!2105039 () Bool)

(declare-fun e!3081743 () Bool)

(assert (=> b!4932430 (=> res!2105039 e!3081743)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4932430 (= res!2105039 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4932431 () Bool)

(declare-fun tp_is_empty!36003 () Bool)

(declare-fun tp!1384769 () Bool)

(assert (=> b!4932431 (= e!3081746 (and tp_is_empty!36003 tp!1384769))))

(declare-fun setElem!27704 () Context!6110)

(declare-fun setNonEmpty!27704 () Bool)

(declare-fun tp!1384770 () Bool)

(declare-fun inv!73742 (Context!6110) Bool)

(assert (=> setNonEmpty!27704 (= setRes!27704 (and tp!1384770 (inv!73742 setElem!27704) e!3081747))))

(declare-fun setRest!27704 () (InoxSet Context!6110))

(assert (=> setNonEmpty!27704 (= z!3568 ((_ map or) (store ((as const (Array Context!6110 Bool)) false) setElem!27704 true) setRest!27704))))

(declare-fun b!4932432 () Bool)

(declare-fun tp!1384771 () Bool)

(assert (=> b!4932432 (= e!3081744 (and tp_is_empty!36003 tp!1384771))))

(declare-fun b!4932433 () Bool)

(assert (=> b!4932433 (= e!3081743 e!3081748)))

(declare-fun res!2105037 () Bool)

(assert (=> b!4932433 (=> res!2105037 e!3081748)))

(assert (=> b!4932433 (= res!2105037 (not (= (++!12378 lt!2030904 lt!2030903) lt!2030907)))))

(assert (=> b!4932433 (= lt!2030903 (list!18024 (_2!33934 lt!2030917)))))

(assert (=> b!4932433 (= lt!2030904 (list!18024 (_1!33934 lt!2030917)))))

(declare-fun splitAt!305 (BalanceConc!29274 Int) tuple2!61262)

(assert (=> b!4932433 (= lt!2030917 (splitAt!305 totalInput!685 testedPSize!70))))

(declare-fun b!4932434 () Bool)

(declare-fun e!3081750 () Bool)

(assert (=> b!4932434 (= e!3081750 e!3081752)))

(declare-fun res!2105036 () Bool)

(assert (=> b!4932434 (=> (not res!2105036) (not e!3081752))))

(assert (=> b!4932434 (= res!2105036 (= totalInputSize!132 lt!2030910))))

(assert (=> b!4932434 (= lt!2030910 (size!37601 totalInput!685))))

(declare-fun setIsEmpty!27704 () Bool)

(assert (=> setIsEmpty!27704 setRes!27704))

(declare-fun b!4932435 () Bool)

(assert (=> b!4932435 (= e!3081745 e!3081743)))

(declare-fun res!2105035 () Bool)

(assert (=> b!4932435 (=> res!2105035 e!3081743)))

(declare-fun lostCauseZipper!731 ((InoxSet Context!6110)) Bool)

(assert (=> b!4932435 (= res!2105035 (lostCauseZipper!731 z!3568))))

(assert (=> b!4932435 (and (= testedSuffix!70 lt!2030916) (= lt!2030916 testedSuffix!70))))

(declare-fun lt!2030905 () Unit!147433)

(declare-fun lemmaSamePrefixThenSameSuffix!2409 (List!56914 List!56914 List!56914 List!56914 List!56914) Unit!147433)

(assert (=> b!4932435 (= lt!2030905 (lemmaSamePrefixThenSameSuffix!2409 testedP!110 testedSuffix!70 testedP!110 lt!2030916 lt!2030907))))

(declare-fun getSuffix!2995 (List!56914 List!56914) List!56914)

(assert (=> b!4932435 (= lt!2030916 (getSuffix!2995 lt!2030907 testedP!110))))

(declare-fun b!4932436 () Bool)

(declare-fun Unit!147436 () Unit!147433)

(assert (=> b!4932436 (= e!3081742 Unit!147436)))

(declare-fun lt!2030902 () Unit!147433)

(declare-fun lemmaIsPrefixRefl!3377 (List!56914 List!56914) Unit!147433)

(assert (=> b!4932436 (= lt!2030902 (lemmaIsPrefixRefl!3377 lt!2030907 lt!2030907))))

(assert (=> b!4932436 (isPrefix!5011 lt!2030907 lt!2030907)))

(declare-fun lt!2030911 () Unit!147433)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1135 (List!56914 List!56914 List!56914) Unit!147433)

(assert (=> b!4932436 (= lt!2030911 (lemmaIsPrefixSameLengthThenSameList!1135 lt!2030907 testedP!110 lt!2030907))))

(assert (=> b!4932436 false))

(declare-fun b!4932437 () Bool)

(assert (=> b!4932437 (= e!3081753 e!3081750)))

(declare-fun res!2105040 () Bool)

(assert (=> b!4932437 (=> (not res!2105040) (not e!3081750))))

(assert (=> b!4932437 (= res!2105040 (= testedPSize!70 lt!2030909))))

(assert (=> b!4932437 (= lt!2030909 (size!37600 testedP!110))))

(assert (= (and start!518116 res!2105038) b!4932437))

(assert (= (and b!4932437 res!2105040) b!4932434))

(assert (= (and b!4932434 res!2105036) b!4932429))

(assert (= (and b!4932429 (not res!2105043)) b!4932435))

(assert (= (and b!4932435 (not res!2105035)) b!4932430))

(assert (= (and b!4932430 (not res!2105039)) b!4932433))

(assert (= (and b!4932433 (not res!2105037)) b!4932424))

(assert (= (and b!4932424 (not res!2105041)) b!4932426))

(assert (= (and b!4932426 (not res!2105044)) b!4932422))

(assert (= (and b!4932422 c!840554) b!4932436))

(assert (= (and b!4932422 (not c!840554)) b!4932423))

(assert (= (and b!4932422 (not res!2105042)) b!4932425))

(get-info :version)

(assert (= (and start!518116 ((_ is Cons!56790) testedP!110)) b!4932432))

(assert (= (and start!518116 condSetEmpty!27704) setIsEmpty!27704))

(assert (= (and start!518116 (not condSetEmpty!27704)) setNonEmpty!27704))

(assert (= setNonEmpty!27704 b!4932427))

(assert (= start!518116 b!4932428))

(assert (= (and start!518116 ((_ is Cons!56790) testedSuffix!70)) b!4932431))

(declare-fun m!5952644 () Bool)

(assert (=> setNonEmpty!27704 m!5952644))

(declare-fun m!5952646 () Bool)

(assert (=> b!4932424 m!5952646))

(declare-fun m!5952648 () Bool)

(assert (=> b!4932437 m!5952648))

(declare-fun m!5952650 () Bool)

(assert (=> b!4932436 m!5952650))

(declare-fun m!5952652 () Bool)

(assert (=> b!4932436 m!5952652))

(declare-fun m!5952654 () Bool)

(assert (=> b!4932436 m!5952654))

(declare-fun m!5952656 () Bool)

(assert (=> b!4932428 m!5952656))

(declare-fun m!5952658 () Bool)

(assert (=> b!4932433 m!5952658))

(declare-fun m!5952660 () Bool)

(assert (=> b!4932433 m!5952660))

(declare-fun m!5952662 () Bool)

(assert (=> b!4932433 m!5952662))

(declare-fun m!5952664 () Bool)

(assert (=> b!4932433 m!5952664))

(declare-fun m!5952666 () Bool)

(assert (=> b!4932429 m!5952666))

(declare-fun m!5952668 () Bool)

(assert (=> b!4932429 m!5952668))

(declare-fun m!5952670 () Bool)

(assert (=> b!4932429 m!5952670))

(declare-fun m!5952672 () Bool)

(assert (=> b!4932434 m!5952672))

(declare-fun m!5952674 () Bool)

(assert (=> b!4932435 m!5952674))

(declare-fun m!5952676 () Bool)

(assert (=> b!4932435 m!5952676))

(declare-fun m!5952678 () Bool)

(assert (=> b!4932435 m!5952678))

(declare-fun m!5952680 () Bool)

(assert (=> b!4932425 m!5952680))

(declare-fun m!5952682 () Bool)

(assert (=> b!4932425 m!5952682))

(assert (=> b!4932425 m!5952682))

(declare-fun m!5952684 () Bool)

(assert (=> b!4932425 m!5952684))

(declare-fun m!5952686 () Bool)

(assert (=> b!4932425 m!5952686))

(declare-fun m!5952688 () Bool)

(assert (=> b!4932422 m!5952688))

(declare-fun m!5952690 () Bool)

(assert (=> b!4932422 m!5952690))

(declare-fun m!5952692 () Bool)

(assert (=> b!4932426 m!5952692))

(declare-fun m!5952694 () Bool)

(assert (=> b!4932426 m!5952694))

(declare-fun m!5952696 () Bool)

(assert (=> b!4932426 m!5952696))

(declare-fun m!5952698 () Bool)

(assert (=> b!4932426 m!5952698))

(declare-fun m!5952700 () Bool)

(assert (=> b!4932426 m!5952700))

(declare-fun m!5952702 () Bool)

(assert (=> b!4932426 m!5952702))

(assert (=> b!4932426 m!5952692))

(declare-fun m!5952704 () Bool)

(assert (=> b!4932426 m!5952704))

(declare-fun m!5952706 () Bool)

(assert (=> start!518116 m!5952706))

(declare-fun m!5952708 () Bool)

(assert (=> start!518116 m!5952708))

(declare-fun m!5952710 () Bool)

(assert (=> start!518116 m!5952710))

(check-sat (not b!4932427) (not b!4932426) (not setNonEmpty!27704) (not start!518116) (not b!4932434) (not b!4932428) (not b!4932425) (not b!4932433) (not b!4932432) (not b!4932436) (not b!4932435) (not b!4932422) (not b!4932429) (not b!4932431) (not b!4932424) tp_is_empty!36003 (not b!4932437))
(check-sat)
(get-model)

(declare-fun b!4932446 () Bool)

(declare-fun e!3081760 () List!56914)

(assert (=> b!4932446 (= e!3081760 lt!2030903)))

(declare-fun b!4932447 () Bool)

(assert (=> b!4932447 (= e!3081760 (Cons!56790 (h!63238 lt!2030904) (++!12378 (t!367394 lt!2030904) lt!2030903)))))

(declare-fun d!1587658 () Bool)

(declare-fun e!3081759 () Bool)

(assert (=> d!1587658 e!3081759))

(declare-fun res!2105049 () Bool)

(assert (=> d!1587658 (=> (not res!2105049) (not e!3081759))))

(declare-fun lt!2030920 () List!56914)

(declare-fun content!10092 (List!56914) (InoxSet C!27056))

(assert (=> d!1587658 (= res!2105049 (= (content!10092 lt!2030920) ((_ map or) (content!10092 lt!2030904) (content!10092 lt!2030903))))))

(assert (=> d!1587658 (= lt!2030920 e!3081760)))

(declare-fun c!840559 () Bool)

(assert (=> d!1587658 (= c!840559 ((_ is Nil!56790) lt!2030904))))

(assert (=> d!1587658 (= (++!12378 lt!2030904 lt!2030903) lt!2030920)))

(declare-fun b!4932449 () Bool)

(assert (=> b!4932449 (= e!3081759 (or (not (= lt!2030903 Nil!56790)) (= lt!2030920 lt!2030904)))))

(declare-fun b!4932448 () Bool)

(declare-fun res!2105050 () Bool)

(assert (=> b!4932448 (=> (not res!2105050) (not e!3081759))))

(assert (=> b!4932448 (= res!2105050 (= (size!37600 lt!2030920) (+ (size!37600 lt!2030904) (size!37600 lt!2030903))))))

(assert (= (and d!1587658 c!840559) b!4932446))

(assert (= (and d!1587658 (not c!840559)) b!4932447))

(assert (= (and d!1587658 res!2105049) b!4932448))

(assert (= (and b!4932448 res!2105050) b!4932449))

(declare-fun m!5952712 () Bool)

(assert (=> b!4932447 m!5952712))

(declare-fun m!5952714 () Bool)

(assert (=> d!1587658 m!5952714))

(declare-fun m!5952716 () Bool)

(assert (=> d!1587658 m!5952716))

(declare-fun m!5952718 () Bool)

(assert (=> d!1587658 m!5952718))

(declare-fun m!5952720 () Bool)

(assert (=> b!4932448 m!5952720))

(declare-fun m!5952722 () Bool)

(assert (=> b!4932448 m!5952722))

(declare-fun m!5952724 () Bool)

(assert (=> b!4932448 m!5952724))

(assert (=> b!4932433 d!1587658))

(declare-fun d!1587662 () Bool)

(declare-fun list!18026 (Conc!14922) List!56914)

(assert (=> d!1587662 (= (list!18024 (_2!33934 lt!2030917)) (list!18026 (c!840555 (_2!33934 lt!2030917))))))

(declare-fun bs!1180395 () Bool)

(assert (= bs!1180395 d!1587662))

(declare-fun m!5952726 () Bool)

(assert (=> bs!1180395 m!5952726))

(assert (=> b!4932433 d!1587662))

(declare-fun d!1587664 () Bool)

(assert (=> d!1587664 (= (list!18024 (_1!33934 lt!2030917)) (list!18026 (c!840555 (_1!33934 lt!2030917))))))

(declare-fun bs!1180396 () Bool)

(assert (= bs!1180396 d!1587664))

(declare-fun m!5952728 () Bool)

(assert (=> bs!1180396 m!5952728))

(assert (=> b!4932433 d!1587664))

(declare-fun d!1587666 () Bool)

(declare-fun e!3081776 () Bool)

(assert (=> d!1587666 e!3081776))

(declare-fun res!2105069 () Bool)

(assert (=> d!1587666 (=> (not res!2105069) (not e!3081776))))

(declare-fun lt!2030934 () tuple2!61262)

(declare-fun isBalanced!4107 (Conc!14922) Bool)

(assert (=> d!1587666 (= res!2105069 (isBalanced!4107 (c!840555 (_1!33934 lt!2030934))))))

(declare-datatypes ((tuple2!61268 0))(
  ( (tuple2!61269 (_1!33937 Conc!14922) (_2!33937 Conc!14922)) )
))
(declare-fun lt!2030935 () tuple2!61268)

(assert (=> d!1587666 (= lt!2030934 (tuple2!61263 (BalanceConc!29275 (_1!33937 lt!2030935)) (BalanceConc!29275 (_2!33937 lt!2030935))))))

(declare-fun splitAt!307 (Conc!14922 Int) tuple2!61268)

(assert (=> d!1587666 (= lt!2030935 (splitAt!307 (c!840555 totalInput!685) testedPSize!70))))

(assert (=> d!1587666 (isBalanced!4107 (c!840555 totalInput!685))))

(assert (=> d!1587666 (= (splitAt!305 totalInput!685 testedPSize!70) lt!2030934)))

(declare-fun b!4932478 () Bool)

(declare-fun res!2105070 () Bool)

(assert (=> b!4932478 (=> (not res!2105070) (not e!3081776))))

(assert (=> b!4932478 (= res!2105070 (isBalanced!4107 (c!840555 (_2!33934 lt!2030934))))))

(declare-fun b!4932479 () Bool)

(declare-datatypes ((tuple2!61270 0))(
  ( (tuple2!61271 (_1!33938 List!56914) (_2!33938 List!56914)) )
))
(declare-fun splitAtIndex!113 (List!56914 Int) tuple2!61270)

(assert (=> b!4932479 (= e!3081776 (= (tuple2!61271 (list!18024 (_1!33934 lt!2030934)) (list!18024 (_2!33934 lt!2030934))) (splitAtIndex!113 (list!18024 totalInput!685) testedPSize!70)))))

(assert (= (and d!1587666 res!2105069) b!4932478))

(assert (= (and b!4932478 res!2105070) b!4932479))

(declare-fun m!5952766 () Bool)

(assert (=> d!1587666 m!5952766))

(declare-fun m!5952768 () Bool)

(assert (=> d!1587666 m!5952768))

(declare-fun m!5952770 () Bool)

(assert (=> d!1587666 m!5952770))

(declare-fun m!5952772 () Bool)

(assert (=> b!4932478 m!5952772))

(declare-fun m!5952774 () Bool)

(assert (=> b!4932479 m!5952774))

(declare-fun m!5952776 () Bool)

(assert (=> b!4932479 m!5952776))

(assert (=> b!4932479 m!5952706))

(assert (=> b!4932479 m!5952706))

(declare-fun m!5952778 () Bool)

(assert (=> b!4932479 m!5952778))

(assert (=> b!4932433 d!1587666))

(declare-fun d!1587678 () Bool)

(declare-fun lt!2030940 () Int)

(assert (=> d!1587678 (= lt!2030940 (size!37600 (list!18024 (_1!33934 lt!2030917))))))

(declare-fun size!37603 (Conc!14922) Int)

(assert (=> d!1587678 (= lt!2030940 (size!37603 (c!840555 (_1!33934 lt!2030917))))))

(assert (=> d!1587678 (= (size!37601 (_1!33934 lt!2030917)) lt!2030940)))

(declare-fun bs!1180399 () Bool)

(assert (= bs!1180399 d!1587678))

(assert (=> bs!1180399 m!5952662))

(assert (=> bs!1180399 m!5952662))

(declare-fun m!5952780 () Bool)

(assert (=> bs!1180399 m!5952780))

(declare-fun m!5952782 () Bool)

(assert (=> bs!1180399 m!5952782))

(assert (=> b!4932424 d!1587678))

(declare-fun d!1587680 () Bool)

(declare-fun lt!2030941 () Int)

(assert (=> d!1587680 (= lt!2030941 (size!37600 (list!18024 totalInput!685)))))

(assert (=> d!1587680 (= lt!2030941 (size!37603 (c!840555 totalInput!685)))))

(assert (=> d!1587680 (= (size!37601 totalInput!685) lt!2030941)))

(declare-fun bs!1180400 () Bool)

(assert (= bs!1180400 d!1587680))

(assert (=> bs!1180400 m!5952706))

(assert (=> bs!1180400 m!5952706))

(declare-fun m!5952784 () Bool)

(assert (=> bs!1180400 m!5952784))

(declare-fun m!5952786 () Bool)

(assert (=> bs!1180400 m!5952786))

(assert (=> b!4932434 d!1587680))

(declare-fun e!3081796 () Bool)

(declare-fun b!4932509 () Bool)

(declare-fun tail!9689 (List!56914) List!56914)

(assert (=> b!4932509 (= e!3081796 (isPrefix!5011 (tail!9689 (++!12378 testedP!110 (Cons!56790 (head!10550 lt!2030916) Nil!56790))) (tail!9689 lt!2030907)))))

(declare-fun b!4932508 () Bool)

(declare-fun res!2105095 () Bool)

(assert (=> b!4932508 (=> (not res!2105095) (not e!3081796))))

(assert (=> b!4932508 (= res!2105095 (= (head!10550 (++!12378 testedP!110 (Cons!56790 (head!10550 lt!2030916) Nil!56790))) (head!10550 lt!2030907)))))

(declare-fun b!4932510 () Bool)

(declare-fun e!3081798 () Bool)

(assert (=> b!4932510 (= e!3081798 (>= (size!37600 lt!2030907) (size!37600 (++!12378 testedP!110 (Cons!56790 (head!10550 lt!2030916) Nil!56790)))))))

(declare-fun d!1587682 () Bool)

(assert (=> d!1587682 e!3081798))

(declare-fun res!2105096 () Bool)

(assert (=> d!1587682 (=> res!2105096 e!3081798)))

(declare-fun lt!2030949 () Bool)

(assert (=> d!1587682 (= res!2105096 (not lt!2030949))))

(declare-fun e!3081797 () Bool)

(assert (=> d!1587682 (= lt!2030949 e!3081797)))

(declare-fun res!2105094 () Bool)

(assert (=> d!1587682 (=> res!2105094 e!3081797)))

(assert (=> d!1587682 (= res!2105094 ((_ is Nil!56790) (++!12378 testedP!110 (Cons!56790 (head!10550 lt!2030916) Nil!56790))))))

(assert (=> d!1587682 (= (isPrefix!5011 (++!12378 testedP!110 (Cons!56790 (head!10550 lt!2030916) Nil!56790)) lt!2030907) lt!2030949)))

(declare-fun b!4932507 () Bool)

(assert (=> b!4932507 (= e!3081797 e!3081796)))

(declare-fun res!2105097 () Bool)

(assert (=> b!4932507 (=> (not res!2105097) (not e!3081796))))

(assert (=> b!4932507 (= res!2105097 (not ((_ is Nil!56790) lt!2030907)))))

(assert (= (and d!1587682 (not res!2105094)) b!4932507))

(assert (= (and b!4932507 res!2105097) b!4932508))

(assert (= (and b!4932508 res!2105095) b!4932509))

(assert (= (and d!1587682 (not res!2105096)) b!4932510))

(assert (=> b!4932509 m!5952682))

(declare-fun m!5952820 () Bool)

(assert (=> b!4932509 m!5952820))

(declare-fun m!5952822 () Bool)

(assert (=> b!4932509 m!5952822))

(assert (=> b!4932509 m!5952820))

(assert (=> b!4932509 m!5952822))

(declare-fun m!5952824 () Bool)

(assert (=> b!4932509 m!5952824))

(assert (=> b!4932508 m!5952682))

(declare-fun m!5952826 () Bool)

(assert (=> b!4932508 m!5952826))

(declare-fun m!5952828 () Bool)

(assert (=> b!4932508 m!5952828))

(assert (=> b!4932510 m!5952688))

(assert (=> b!4932510 m!5952682))

(declare-fun m!5952830 () Bool)

(assert (=> b!4932510 m!5952830))

(assert (=> b!4932425 d!1587682))

(declare-fun b!4932511 () Bool)

(declare-fun e!3081800 () List!56914)

(assert (=> b!4932511 (= e!3081800 (Cons!56790 (head!10550 lt!2030916) Nil!56790))))

(declare-fun b!4932512 () Bool)

(assert (=> b!4932512 (= e!3081800 (Cons!56790 (h!63238 testedP!110) (++!12378 (t!367394 testedP!110) (Cons!56790 (head!10550 lt!2030916) Nil!56790))))))

(declare-fun d!1587692 () Bool)

(declare-fun e!3081799 () Bool)

(assert (=> d!1587692 e!3081799))

(declare-fun res!2105098 () Bool)

(assert (=> d!1587692 (=> (not res!2105098) (not e!3081799))))

(declare-fun lt!2030950 () List!56914)

(assert (=> d!1587692 (= res!2105098 (= (content!10092 lt!2030950) ((_ map or) (content!10092 testedP!110) (content!10092 (Cons!56790 (head!10550 lt!2030916) Nil!56790)))))))

(assert (=> d!1587692 (= lt!2030950 e!3081800)))

(declare-fun c!840567 () Bool)

(assert (=> d!1587692 (= c!840567 ((_ is Nil!56790) testedP!110))))

(assert (=> d!1587692 (= (++!12378 testedP!110 (Cons!56790 (head!10550 lt!2030916) Nil!56790)) lt!2030950)))

(declare-fun b!4932514 () Bool)

(assert (=> b!4932514 (= e!3081799 (or (not (= (Cons!56790 (head!10550 lt!2030916) Nil!56790) Nil!56790)) (= lt!2030950 testedP!110)))))

(declare-fun b!4932513 () Bool)

(declare-fun res!2105099 () Bool)

(assert (=> b!4932513 (=> (not res!2105099) (not e!3081799))))

(assert (=> b!4932513 (= res!2105099 (= (size!37600 lt!2030950) (+ (size!37600 testedP!110) (size!37600 (Cons!56790 (head!10550 lt!2030916) Nil!56790)))))))

(assert (= (and d!1587692 c!840567) b!4932511))

(assert (= (and d!1587692 (not c!840567)) b!4932512))

(assert (= (and d!1587692 res!2105098) b!4932513))

(assert (= (and b!4932513 res!2105099) b!4932514))

(declare-fun m!5952832 () Bool)

(assert (=> b!4932512 m!5952832))

(declare-fun m!5952834 () Bool)

(assert (=> d!1587692 m!5952834))

(declare-fun m!5952836 () Bool)

(assert (=> d!1587692 m!5952836))

(declare-fun m!5952838 () Bool)

(assert (=> d!1587692 m!5952838))

(declare-fun m!5952840 () Bool)

(assert (=> b!4932513 m!5952840))

(assert (=> b!4932513 m!5952648))

(declare-fun m!5952842 () Bool)

(assert (=> b!4932513 m!5952842))

(assert (=> b!4932425 d!1587692))

(declare-fun d!1587694 () Bool)

(assert (=> d!1587694 (= (head!10550 lt!2030916) (h!63238 lt!2030916))))

(assert (=> b!4932425 d!1587694))

(declare-fun d!1587696 () Bool)

(assert (=> d!1587696 (isPrefix!5011 (++!12378 testedP!110 (Cons!56790 (head!10550 (getSuffix!2995 lt!2030907 testedP!110)) Nil!56790)) lt!2030907)))

(declare-fun lt!2030957 () Unit!147433)

(declare-fun choose!36162 (List!56914 List!56914) Unit!147433)

(assert (=> d!1587696 (= lt!2030957 (choose!36162 testedP!110 lt!2030907))))

(assert (=> d!1587696 (isPrefix!5011 testedP!110 lt!2030907)))

(assert (=> d!1587696 (= (lemmaAddHeadSuffixToPrefixStillPrefix!781 testedP!110 lt!2030907) lt!2030957)))

(declare-fun bs!1180402 () Bool)

(assert (= bs!1180402 d!1587696))

(assert (=> bs!1180402 m!5952666))

(declare-fun m!5952844 () Bool)

(assert (=> bs!1180402 m!5952844))

(assert (=> bs!1180402 m!5952678))

(declare-fun m!5952846 () Bool)

(assert (=> bs!1180402 m!5952846))

(assert (=> bs!1180402 m!5952844))

(declare-fun m!5952848 () Bool)

(assert (=> bs!1180402 m!5952848))

(assert (=> bs!1180402 m!5952678))

(declare-fun m!5952850 () Bool)

(assert (=> bs!1180402 m!5952850))

(assert (=> b!4932425 d!1587696))

(declare-fun d!1587698 () Bool)

(assert (=> d!1587698 (= (list!18024 totalInput!685) (list!18026 (c!840555 totalInput!685)))))

(declare-fun bs!1180403 () Bool)

(assert (= bs!1180403 d!1587698))

(declare-fun m!5952852 () Bool)

(assert (=> bs!1180403 m!5952852))

(assert (=> start!518116 d!1587698))

(declare-fun b!4932519 () Bool)

(declare-fun e!3081804 () List!56914)

(assert (=> b!4932519 (= e!3081804 testedSuffix!70)))

(declare-fun b!4932520 () Bool)

(assert (=> b!4932520 (= e!3081804 (Cons!56790 (h!63238 testedP!110) (++!12378 (t!367394 testedP!110) testedSuffix!70)))))

(declare-fun d!1587700 () Bool)

(declare-fun e!3081803 () Bool)

(assert (=> d!1587700 e!3081803))

(declare-fun res!2105100 () Bool)

(assert (=> d!1587700 (=> (not res!2105100) (not e!3081803))))

(declare-fun lt!2030958 () List!56914)

(assert (=> d!1587700 (= res!2105100 (= (content!10092 lt!2030958) ((_ map or) (content!10092 testedP!110) (content!10092 testedSuffix!70))))))

(assert (=> d!1587700 (= lt!2030958 e!3081804)))

(declare-fun c!840572 () Bool)

(assert (=> d!1587700 (= c!840572 ((_ is Nil!56790) testedP!110))))

(assert (=> d!1587700 (= (++!12378 testedP!110 testedSuffix!70) lt!2030958)))

(declare-fun b!4932522 () Bool)

(assert (=> b!4932522 (= e!3081803 (or (not (= testedSuffix!70 Nil!56790)) (= lt!2030958 testedP!110)))))

(declare-fun b!4932521 () Bool)

(declare-fun res!2105101 () Bool)

(assert (=> b!4932521 (=> (not res!2105101) (not e!3081803))))

(assert (=> b!4932521 (= res!2105101 (= (size!37600 lt!2030958) (+ (size!37600 testedP!110) (size!37600 testedSuffix!70))))))

(assert (= (and d!1587700 c!840572) b!4932519))

(assert (= (and d!1587700 (not c!840572)) b!4932520))

(assert (= (and d!1587700 res!2105100) b!4932521))

(assert (= (and b!4932521 res!2105101) b!4932522))

(declare-fun m!5952854 () Bool)

(assert (=> b!4932520 m!5952854))

(declare-fun m!5952856 () Bool)

(assert (=> d!1587700 m!5952856))

(assert (=> d!1587700 m!5952836))

(declare-fun m!5952858 () Bool)

(assert (=> d!1587700 m!5952858))

(declare-fun m!5952860 () Bool)

(assert (=> b!4932521 m!5952860))

(assert (=> b!4932521 m!5952648))

(declare-fun m!5952862 () Bool)

(assert (=> b!4932521 m!5952862))

(assert (=> start!518116 d!1587700))

(declare-fun d!1587702 () Bool)

(assert (=> d!1587702 (= (inv!73740 totalInput!685) (isBalanced!4107 (c!840555 totalInput!685)))))

(declare-fun bs!1180404 () Bool)

(assert (= bs!1180404 d!1587702))

(assert (=> bs!1180404 m!5952770))

(assert (=> start!518116 d!1587702))

(declare-fun d!1587704 () Bool)

(declare-fun lt!2030961 () C!27056)

(declare-fun contains!19465 (List!56914 C!27056) Bool)

(assert (=> d!1587704 (contains!19465 lt!2030907 lt!2030961)))

(declare-fun e!3081809 () C!27056)

(assert (=> d!1587704 (= lt!2030961 e!3081809)))

(declare-fun c!840575 () Bool)

(assert (=> d!1587704 (= c!840575 (= testedPSize!70 0))))

(declare-fun e!3081810 () Bool)

(assert (=> d!1587704 e!3081810))

(declare-fun res!2105104 () Bool)

(assert (=> d!1587704 (=> (not res!2105104) (not e!3081810))))

(assert (=> d!1587704 (= res!2105104 (<= 0 testedPSize!70))))

(assert (=> d!1587704 (= (apply!13702 lt!2030907 testedPSize!70) lt!2030961)))

(declare-fun b!4932529 () Bool)

(assert (=> b!4932529 (= e!3081810 (< testedPSize!70 (size!37600 lt!2030907)))))

(declare-fun b!4932530 () Bool)

(assert (=> b!4932530 (= e!3081809 (head!10550 lt!2030907))))

(declare-fun b!4932531 () Bool)

(assert (=> b!4932531 (= e!3081809 (apply!13702 (tail!9689 lt!2030907) (- testedPSize!70 1)))))

(assert (= (and d!1587704 res!2105104) b!4932529))

(assert (= (and d!1587704 c!840575) b!4932530))

(assert (= (and d!1587704 (not c!840575)) b!4932531))

(declare-fun m!5952864 () Bool)

(assert (=> d!1587704 m!5952864))

(assert (=> b!4932529 m!5952688))

(assert (=> b!4932530 m!5952828))

(assert (=> b!4932531 m!5952822))

(assert (=> b!4932531 m!5952822))

(declare-fun m!5952866 () Bool)

(assert (=> b!4932531 m!5952866))

(assert (=> b!4932426 d!1587704))

(declare-fun d!1587706 () Bool)

(assert (=> d!1587706 (= (head!10550 testedSuffix!70) (h!63238 testedSuffix!70))))

(assert (=> b!4932426 d!1587706))

(declare-fun d!1587708 () Bool)

(assert (=> d!1587708 (= (head!10550 (drop!2244 lt!2030907 testedPSize!70)) (apply!13702 lt!2030907 testedPSize!70))))

(declare-fun lt!2030964 () Unit!147433)

(declare-fun choose!36164 (List!56914 Int) Unit!147433)

(assert (=> d!1587708 (= lt!2030964 (choose!36164 lt!2030907 testedPSize!70))))

(declare-fun e!3081813 () Bool)

(assert (=> d!1587708 e!3081813))

(declare-fun res!2105107 () Bool)

(assert (=> d!1587708 (=> (not res!2105107) (not e!3081813))))

(assert (=> d!1587708 (= res!2105107 (>= testedPSize!70 0))))

(assert (=> d!1587708 (= (lemmaDropApply!1302 lt!2030907 testedPSize!70) lt!2030964)))

(declare-fun b!4932534 () Bool)

(assert (=> b!4932534 (= e!3081813 (< testedPSize!70 (size!37600 lt!2030907)))))

(assert (= (and d!1587708 res!2105107) b!4932534))

(assert (=> d!1587708 m!5952692))

(assert (=> d!1587708 m!5952692))

(assert (=> d!1587708 m!5952694))

(assert (=> d!1587708 m!5952696))

(declare-fun m!5952868 () Bool)

(assert (=> d!1587708 m!5952868))

(assert (=> b!4932534 m!5952688))

(assert (=> b!4932426 d!1587708))

(declare-fun d!1587710 () Bool)

(assert (=> d!1587710 (and (= lt!2030904 testedP!110) (= lt!2030903 testedSuffix!70))))

(declare-fun lt!2030967 () Unit!147433)

(declare-fun choose!36165 (List!56914 List!56914 List!56914 List!56914) Unit!147433)

(assert (=> d!1587710 (= lt!2030967 (choose!36165 lt!2030904 lt!2030903 testedP!110 testedSuffix!70))))

(assert (=> d!1587710 (= (++!12378 lt!2030904 lt!2030903) (++!12378 testedP!110 testedSuffix!70))))

(assert (=> d!1587710 (= (lemmaConcatSameAndSameSizesThenSameLists!679 lt!2030904 lt!2030903 testedP!110 testedSuffix!70) lt!2030967)))

(declare-fun bs!1180405 () Bool)

(assert (= bs!1180405 d!1587710))

(declare-fun m!5952870 () Bool)

(assert (=> bs!1180405 m!5952870))

(assert (=> bs!1180405 m!5952658))

(assert (=> bs!1180405 m!5952708))

(assert (=> b!4932426 d!1587710))

(declare-fun b!4932553 () Bool)

(declare-fun e!3081826 () Int)

(assert (=> b!4932553 (= e!3081826 0)))

(declare-fun b!4932554 () Bool)

(declare-fun e!3081828 () List!56914)

(declare-fun e!3081824 () List!56914)

(assert (=> b!4932554 (= e!3081828 e!3081824)))

(declare-fun c!840584 () Bool)

(assert (=> b!4932554 (= c!840584 (<= testedPSize!70 0))))

(declare-fun b!4932555 () Bool)

(declare-fun e!3081827 () Bool)

(declare-fun lt!2030970 () List!56914)

(declare-fun e!3081825 () Int)

(assert (=> b!4932555 (= e!3081827 (= (size!37600 lt!2030970) e!3081825))))

(declare-fun c!840586 () Bool)

(assert (=> b!4932555 (= c!840586 (<= testedPSize!70 0))))

(declare-fun b!4932556 () Bool)

(assert (=> b!4932556 (= e!3081824 lt!2030907)))

(declare-fun bm!344182 () Bool)

(declare-fun call!344187 () Int)

(assert (=> bm!344182 (= call!344187 (size!37600 lt!2030907))))

(declare-fun b!4932557 () Bool)

(assert (=> b!4932557 (= e!3081824 (drop!2244 (t!367394 lt!2030907) (- testedPSize!70 1)))))

(declare-fun b!4932559 () Bool)

(assert (=> b!4932559 (= e!3081828 Nil!56790)))

(declare-fun b!4932560 () Bool)

(assert (=> b!4932560 (= e!3081826 (- call!344187 testedPSize!70))))

(declare-fun b!4932561 () Bool)

(assert (=> b!4932561 (= e!3081825 call!344187)))

(declare-fun d!1587712 () Bool)

(assert (=> d!1587712 e!3081827))

(declare-fun res!2105110 () Bool)

(assert (=> d!1587712 (=> (not res!2105110) (not e!3081827))))

(assert (=> d!1587712 (= res!2105110 (= ((_ map implies) (content!10092 lt!2030970) (content!10092 lt!2030907)) ((as const (InoxSet C!27056)) true)))))

(assert (=> d!1587712 (= lt!2030970 e!3081828)))

(declare-fun c!840587 () Bool)

(assert (=> d!1587712 (= c!840587 ((_ is Nil!56790) lt!2030907))))

(assert (=> d!1587712 (= (drop!2244 lt!2030907 testedPSize!70) lt!2030970)))

(declare-fun b!4932558 () Bool)

(assert (=> b!4932558 (= e!3081825 e!3081826)))

(declare-fun c!840585 () Bool)

(assert (=> b!4932558 (= c!840585 (>= testedPSize!70 call!344187))))

(assert (= (and d!1587712 c!840587) b!4932559))

(assert (= (and d!1587712 (not c!840587)) b!4932554))

(assert (= (and b!4932554 c!840584) b!4932556))

(assert (= (and b!4932554 (not c!840584)) b!4932557))

(assert (= (and d!1587712 res!2105110) b!4932555))

(assert (= (and b!4932555 c!840586) b!4932561))

(assert (= (and b!4932555 (not c!840586)) b!4932558))

(assert (= (and b!4932558 c!840585) b!4932553))

(assert (= (and b!4932558 (not c!840585)) b!4932560))

(assert (= (or b!4932561 b!4932558 b!4932560) bm!344182))

(declare-fun m!5952872 () Bool)

(assert (=> b!4932555 m!5952872))

(assert (=> bm!344182 m!5952688))

(declare-fun m!5952874 () Bool)

(assert (=> b!4932557 m!5952874))

(declare-fun m!5952876 () Bool)

(assert (=> d!1587712 m!5952876))

(declare-fun m!5952878 () Bool)

(assert (=> d!1587712 m!5952878))

(assert (=> b!4932426 d!1587712))

(declare-fun d!1587714 () Bool)

(assert (=> d!1587714 (= (head!10550 (drop!2244 lt!2030907 testedPSize!70)) (h!63238 (drop!2244 lt!2030907 testedPSize!70)))))

(assert (=> b!4932426 d!1587714))

(declare-fun d!1587716 () Bool)

(declare-fun lt!2030973 () C!27056)

(assert (=> d!1587716 (= lt!2030973 (apply!13702 (list!18024 totalInput!685) testedPSize!70))))

(declare-fun apply!13704 (Conc!14922 Int) C!27056)

(assert (=> d!1587716 (= lt!2030973 (apply!13704 (c!840555 totalInput!685) testedPSize!70))))

(declare-fun e!3081831 () Bool)

(assert (=> d!1587716 e!3081831))

(declare-fun res!2105113 () Bool)

(assert (=> d!1587716 (=> (not res!2105113) (not e!3081831))))

(assert (=> d!1587716 (= res!2105113 (<= 0 testedPSize!70))))

(assert (=> d!1587716 (= (apply!13701 totalInput!685 testedPSize!70) lt!2030973)))

(declare-fun b!4932564 () Bool)

(assert (=> b!4932564 (= e!3081831 (< testedPSize!70 (size!37601 totalInput!685)))))

(assert (= (and d!1587716 res!2105113) b!4932564))

(assert (=> d!1587716 m!5952706))

(assert (=> d!1587716 m!5952706))

(declare-fun m!5952880 () Bool)

(assert (=> d!1587716 m!5952880))

(declare-fun m!5952882 () Bool)

(assert (=> d!1587716 m!5952882))

(assert (=> b!4932564 m!5952672))

(assert (=> b!4932426 d!1587716))

(declare-fun bs!1180420 () Bool)

(declare-fun b!4932670 () Bool)

(declare-fun d!1587718 () Bool)

(assert (= bs!1180420 (and b!4932670 d!1587718)))

(declare-fun lambda!245604 () Int)

(declare-fun lambda!245603 () Int)

(assert (=> bs!1180420 (not (= lambda!245604 lambda!245603))))

(declare-fun bs!1180421 () Bool)

(declare-fun b!4932671 () Bool)

(assert (= bs!1180421 (and b!4932671 d!1587718)))

(declare-fun lambda!245605 () Int)

(assert (=> bs!1180421 (not (= lambda!245605 lambda!245603))))

(declare-fun bs!1180422 () Bool)

(assert (= bs!1180422 (and b!4932671 b!4932670)))

(assert (=> bs!1180422 (= lambda!245605 lambda!245604)))

(declare-fun lt!2031061 () Bool)

(declare-datatypes ((Option!14175 0))(
  ( (None!14174) (Some!14174 (v!50144 List!56914)) )
))
(declare-fun isEmpty!30600 (Option!14175) Bool)

(declare-fun getLanguageWitness!633 ((InoxSet Context!6110)) Option!14175)

(assert (=> d!1587718 (= lt!2031061 (isEmpty!30600 (getLanguageWitness!633 z!3568)))))

(declare-fun forall!13169 ((InoxSet Context!6110) Int) Bool)

(assert (=> d!1587718 (= lt!2031061 (forall!13169 z!3568 lambda!245603))))

(declare-fun lt!2031056 () Unit!147433)

(declare-fun e!3081904 () Unit!147433)

(assert (=> d!1587718 (= lt!2031056 e!3081904)))

(declare-fun c!840628 () Bool)

(assert (=> d!1587718 (= c!840628 (not (forall!13169 z!3568 lambda!245603)))))

(assert (=> d!1587718 (= (lostCauseZipper!731 z!3568) lt!2031061)))

(declare-fun Unit!147439 () Unit!147433)

(assert (=> b!4932670 (= e!3081904 Unit!147439)))

(declare-datatypes ((List!56917 0))(
  ( (Nil!56793) (Cons!56793 (h!63241 Context!6110) (t!367397 List!56917)) )
))
(declare-fun lt!2031055 () List!56917)

(declare-fun call!344201 () List!56917)

(assert (=> b!4932670 (= lt!2031055 call!344201)))

(declare-fun lt!2031058 () Unit!147433)

(declare-fun lemmaNotForallThenExists!195 (List!56917 Int) Unit!147433)

(assert (=> b!4932670 (= lt!2031058 (lemmaNotForallThenExists!195 lt!2031055 lambda!245603))))

(declare-fun call!344202 () Bool)

(assert (=> b!4932670 call!344202))

(declare-fun lt!2031060 () Unit!147433)

(assert (=> b!4932670 (= lt!2031060 lt!2031058)))

(declare-fun Unit!147440 () Unit!147433)

(assert (=> b!4932671 (= e!3081904 Unit!147440)))

(declare-fun lt!2031059 () List!56917)

(assert (=> b!4932671 (= lt!2031059 call!344201)))

(declare-fun lt!2031062 () Unit!147433)

(declare-fun lemmaForallThenNotExists!178 (List!56917 Int) Unit!147433)

(assert (=> b!4932671 (= lt!2031062 (lemmaForallThenNotExists!178 lt!2031059 lambda!245603))))

(assert (=> b!4932671 (not call!344202)))

(declare-fun lt!2031057 () Unit!147433)

(assert (=> b!4932671 (= lt!2031057 lt!2031062)))

(declare-fun bm!344197 () Bool)

(declare-fun toList!7957 ((InoxSet Context!6110)) List!56917)

(assert (=> bm!344197 (= call!344201 (toList!7957 z!3568))))

(declare-fun bm!344196 () Bool)

(declare-fun exists!1264 (List!56917 Int) Bool)

(assert (=> bm!344196 (= call!344202 (exists!1264 (ite c!840628 lt!2031055 lt!2031059) (ite c!840628 lambda!245604 lambda!245605)))))

(assert (= (and d!1587718 c!840628) b!4932670))

(assert (= (and d!1587718 (not c!840628)) b!4932671))

(assert (= (or b!4932670 b!4932671) bm!344196))

(assert (= (or b!4932670 b!4932671) bm!344197))

(declare-fun m!5952984 () Bool)

(assert (=> b!4932670 m!5952984))

(declare-fun m!5952986 () Bool)

(assert (=> d!1587718 m!5952986))

(assert (=> d!1587718 m!5952986))

(declare-fun m!5952988 () Bool)

(assert (=> d!1587718 m!5952988))

(declare-fun m!5952990 () Bool)

(assert (=> d!1587718 m!5952990))

(assert (=> d!1587718 m!5952990))

(declare-fun m!5952992 () Bool)

(assert (=> bm!344197 m!5952992))

(declare-fun m!5952994 () Bool)

(assert (=> bm!344196 m!5952994))

(declare-fun m!5952996 () Bool)

(assert (=> b!4932671 m!5952996))

(assert (=> b!4932435 d!1587718))

(declare-fun d!1587768 () Bool)

(assert (=> d!1587768 (= testedSuffix!70 lt!2030916)))

(declare-fun lt!2031065 () Unit!147433)

(declare-fun choose!36166 (List!56914 List!56914 List!56914 List!56914 List!56914) Unit!147433)

(assert (=> d!1587768 (= lt!2031065 (choose!36166 testedP!110 testedSuffix!70 testedP!110 lt!2030916 lt!2030907))))

(assert (=> d!1587768 (isPrefix!5011 testedP!110 lt!2030907)))

(assert (=> d!1587768 (= (lemmaSamePrefixThenSameSuffix!2409 testedP!110 testedSuffix!70 testedP!110 lt!2030916 lt!2030907) lt!2031065)))

(declare-fun bs!1180423 () Bool)

(assert (= bs!1180423 d!1587768))

(declare-fun m!5952998 () Bool)

(assert (=> bs!1180423 m!5952998))

(assert (=> bs!1180423 m!5952666))

(assert (=> b!4932435 d!1587768))

(declare-fun d!1587770 () Bool)

(declare-fun lt!2031068 () List!56914)

(assert (=> d!1587770 (= (++!12378 testedP!110 lt!2031068) lt!2030907)))

(declare-fun e!3081907 () List!56914)

(assert (=> d!1587770 (= lt!2031068 e!3081907)))

(declare-fun c!840631 () Bool)

(assert (=> d!1587770 (= c!840631 ((_ is Cons!56790) testedP!110))))

(assert (=> d!1587770 (>= (size!37600 lt!2030907) (size!37600 testedP!110))))

(assert (=> d!1587770 (= (getSuffix!2995 lt!2030907 testedP!110) lt!2031068)))

(declare-fun b!4932676 () Bool)

(assert (=> b!4932676 (= e!3081907 (getSuffix!2995 (tail!9689 lt!2030907) (t!367394 testedP!110)))))

(declare-fun b!4932677 () Bool)

(assert (=> b!4932677 (= e!3081907 lt!2030907)))

(assert (= (and d!1587770 c!840631) b!4932676))

(assert (= (and d!1587770 (not c!840631)) b!4932677))

(declare-fun m!5953000 () Bool)

(assert (=> d!1587770 m!5953000))

(assert (=> d!1587770 m!5952688))

(assert (=> d!1587770 m!5952648))

(assert (=> b!4932676 m!5952822))

(assert (=> b!4932676 m!5952822))

(declare-fun m!5953002 () Bool)

(assert (=> b!4932676 m!5953002))

(assert (=> b!4932435 d!1587770))

(declare-fun d!1587772 () Bool)

(assert (=> d!1587772 (isPrefix!5011 lt!2030907 lt!2030907)))

(declare-fun lt!2031071 () Unit!147433)

(declare-fun choose!36167 (List!56914 List!56914) Unit!147433)

(assert (=> d!1587772 (= lt!2031071 (choose!36167 lt!2030907 lt!2030907))))

(assert (=> d!1587772 (= (lemmaIsPrefixRefl!3377 lt!2030907 lt!2030907) lt!2031071)))

(declare-fun bs!1180424 () Bool)

(assert (= bs!1180424 d!1587772))

(assert (=> bs!1180424 m!5952652))

(declare-fun m!5953004 () Bool)

(assert (=> bs!1180424 m!5953004))

(assert (=> b!4932436 d!1587772))

(declare-fun b!4932680 () Bool)

(declare-fun e!3081908 () Bool)

(assert (=> b!4932680 (= e!3081908 (isPrefix!5011 (tail!9689 lt!2030907) (tail!9689 lt!2030907)))))

(declare-fun b!4932679 () Bool)

(declare-fun res!2105141 () Bool)

(assert (=> b!4932679 (=> (not res!2105141) (not e!3081908))))

(assert (=> b!4932679 (= res!2105141 (= (head!10550 lt!2030907) (head!10550 lt!2030907)))))

(declare-fun b!4932681 () Bool)

(declare-fun e!3081910 () Bool)

(assert (=> b!4932681 (= e!3081910 (>= (size!37600 lt!2030907) (size!37600 lt!2030907)))))

(declare-fun d!1587774 () Bool)

(assert (=> d!1587774 e!3081910))

(declare-fun res!2105142 () Bool)

(assert (=> d!1587774 (=> res!2105142 e!3081910)))

(declare-fun lt!2031072 () Bool)

(assert (=> d!1587774 (= res!2105142 (not lt!2031072))))

(declare-fun e!3081909 () Bool)

(assert (=> d!1587774 (= lt!2031072 e!3081909)))

(declare-fun res!2105140 () Bool)

(assert (=> d!1587774 (=> res!2105140 e!3081909)))

(assert (=> d!1587774 (= res!2105140 ((_ is Nil!56790) lt!2030907))))

(assert (=> d!1587774 (= (isPrefix!5011 lt!2030907 lt!2030907) lt!2031072)))

(declare-fun b!4932678 () Bool)

(assert (=> b!4932678 (= e!3081909 e!3081908)))

(declare-fun res!2105143 () Bool)

(assert (=> b!4932678 (=> (not res!2105143) (not e!3081908))))

(assert (=> b!4932678 (= res!2105143 (not ((_ is Nil!56790) lt!2030907)))))

(assert (= (and d!1587774 (not res!2105140)) b!4932678))

(assert (= (and b!4932678 res!2105143) b!4932679))

(assert (= (and b!4932679 res!2105141) b!4932680))

(assert (= (and d!1587774 (not res!2105142)) b!4932681))

(assert (=> b!4932680 m!5952822))

(assert (=> b!4932680 m!5952822))

(assert (=> b!4932680 m!5952822))

(assert (=> b!4932680 m!5952822))

(declare-fun m!5953006 () Bool)

(assert (=> b!4932680 m!5953006))

(assert (=> b!4932679 m!5952828))

(assert (=> b!4932679 m!5952828))

(assert (=> b!4932681 m!5952688))

(assert (=> b!4932681 m!5952688))

(assert (=> b!4932436 d!1587774))

(declare-fun d!1587776 () Bool)

(assert (=> d!1587776 (= lt!2030907 testedP!110)))

(declare-fun lt!2031075 () Unit!147433)

(declare-fun choose!36168 (List!56914 List!56914 List!56914) Unit!147433)

(assert (=> d!1587776 (= lt!2031075 (choose!36168 lt!2030907 testedP!110 lt!2030907))))

(assert (=> d!1587776 (isPrefix!5011 lt!2030907 lt!2030907)))

(assert (=> d!1587776 (= (lemmaIsPrefixSameLengthThenSameList!1135 lt!2030907 testedP!110 lt!2030907) lt!2031075)))

(declare-fun bs!1180425 () Bool)

(assert (= bs!1180425 d!1587776))

(declare-fun m!5953008 () Bool)

(assert (=> bs!1180425 m!5953008))

(assert (=> bs!1180425 m!5952652))

(assert (=> b!4932436 d!1587776))

(declare-fun d!1587778 () Bool)

(declare-fun c!840634 () Bool)

(assert (=> d!1587778 (= c!840634 ((_ is Node!14922) (c!840555 totalInput!685)))))

(declare-fun e!3081915 () Bool)

(assert (=> d!1587778 (= (inv!73741 (c!840555 totalInput!685)) e!3081915)))

(declare-fun b!4932688 () Bool)

(declare-fun inv!73746 (Conc!14922) Bool)

(assert (=> b!4932688 (= e!3081915 (inv!73746 (c!840555 totalInput!685)))))

(declare-fun b!4932689 () Bool)

(declare-fun e!3081916 () Bool)

(assert (=> b!4932689 (= e!3081915 e!3081916)))

(declare-fun res!2105146 () Bool)

(assert (=> b!4932689 (= res!2105146 (not ((_ is Leaf!24816) (c!840555 totalInput!685))))))

(assert (=> b!4932689 (=> res!2105146 e!3081916)))

(declare-fun b!4932690 () Bool)

(declare-fun inv!73747 (Conc!14922) Bool)

(assert (=> b!4932690 (= e!3081916 (inv!73747 (c!840555 totalInput!685)))))

(assert (= (and d!1587778 c!840634) b!4932688))

(assert (= (and d!1587778 (not c!840634)) b!4932689))

(assert (= (and b!4932689 (not res!2105146)) b!4932690))

(declare-fun m!5953010 () Bool)

(assert (=> b!4932688 m!5953010))

(declare-fun m!5953012 () Bool)

(assert (=> b!4932690 m!5953012))

(assert (=> b!4932428 d!1587778))

(declare-fun d!1587780 () Bool)

(declare-fun lt!2031078 () Int)

(assert (=> d!1587780 (>= lt!2031078 0)))

(declare-fun e!3081919 () Int)

(assert (=> d!1587780 (= lt!2031078 e!3081919)))

(declare-fun c!840637 () Bool)

(assert (=> d!1587780 (= c!840637 ((_ is Nil!56790) testedP!110))))

(assert (=> d!1587780 (= (size!37600 testedP!110) lt!2031078)))

(declare-fun b!4932695 () Bool)

(assert (=> b!4932695 (= e!3081919 0)))

(declare-fun b!4932696 () Bool)

(assert (=> b!4932696 (= e!3081919 (+ 1 (size!37600 (t!367394 testedP!110))))))

(assert (= (and d!1587780 c!840637) b!4932695))

(assert (= (and d!1587780 (not c!840637)) b!4932696))

(declare-fun m!5953014 () Bool)

(assert (=> b!4932696 m!5953014))

(assert (=> b!4932437 d!1587780))

(declare-fun b!4932699 () Bool)

(declare-fun e!3081920 () Bool)

(assert (=> b!4932699 (= e!3081920 (isPrefix!5011 (tail!9689 testedP!110) (tail!9689 lt!2030907)))))

(declare-fun b!4932698 () Bool)

(declare-fun res!2105148 () Bool)

(assert (=> b!4932698 (=> (not res!2105148) (not e!3081920))))

(assert (=> b!4932698 (= res!2105148 (= (head!10550 testedP!110) (head!10550 lt!2030907)))))

(declare-fun b!4932700 () Bool)

(declare-fun e!3081922 () Bool)

(assert (=> b!4932700 (= e!3081922 (>= (size!37600 lt!2030907) (size!37600 testedP!110)))))

(declare-fun d!1587782 () Bool)

(assert (=> d!1587782 e!3081922))

(declare-fun res!2105149 () Bool)

(assert (=> d!1587782 (=> res!2105149 e!3081922)))

(declare-fun lt!2031079 () Bool)

(assert (=> d!1587782 (= res!2105149 (not lt!2031079))))

(declare-fun e!3081921 () Bool)

(assert (=> d!1587782 (= lt!2031079 e!3081921)))

(declare-fun res!2105147 () Bool)

(assert (=> d!1587782 (=> res!2105147 e!3081921)))

(assert (=> d!1587782 (= res!2105147 ((_ is Nil!56790) testedP!110))))

(assert (=> d!1587782 (= (isPrefix!5011 testedP!110 lt!2030907) lt!2031079)))

(declare-fun b!4932697 () Bool)

(assert (=> b!4932697 (= e!3081921 e!3081920)))

(declare-fun res!2105150 () Bool)

(assert (=> b!4932697 (=> (not res!2105150) (not e!3081920))))

(assert (=> b!4932697 (= res!2105150 (not ((_ is Nil!56790) lt!2030907)))))

(assert (= (and d!1587782 (not res!2105147)) b!4932697))

(assert (= (and b!4932697 res!2105150) b!4932698))

(assert (= (and b!4932698 res!2105148) b!4932699))

(assert (= (and d!1587782 (not res!2105149)) b!4932700))

(declare-fun m!5953016 () Bool)

(assert (=> b!4932699 m!5953016))

(assert (=> b!4932699 m!5952822))

(assert (=> b!4932699 m!5953016))

(assert (=> b!4932699 m!5952822))

(declare-fun m!5953018 () Bool)

(assert (=> b!4932699 m!5953018))

(declare-fun m!5953020 () Bool)

(assert (=> b!4932698 m!5953020))

(assert (=> b!4932698 m!5952828))

(assert (=> b!4932700 m!5952688))

(assert (=> b!4932700 m!5952648))

(assert (=> b!4932429 d!1587782))

(declare-fun b!4932703 () Bool)

(declare-fun e!3081923 () Bool)

(assert (=> b!4932703 (= e!3081923 (isPrefix!5011 (tail!9689 testedP!110) (tail!9689 lt!2030908)))))

(declare-fun b!4932702 () Bool)

(declare-fun res!2105152 () Bool)

(assert (=> b!4932702 (=> (not res!2105152) (not e!3081923))))

(assert (=> b!4932702 (= res!2105152 (= (head!10550 testedP!110) (head!10550 lt!2030908)))))

(declare-fun b!4932704 () Bool)

(declare-fun e!3081925 () Bool)

(assert (=> b!4932704 (= e!3081925 (>= (size!37600 lt!2030908) (size!37600 testedP!110)))))

(declare-fun d!1587784 () Bool)

(assert (=> d!1587784 e!3081925))

(declare-fun res!2105153 () Bool)

(assert (=> d!1587784 (=> res!2105153 e!3081925)))

(declare-fun lt!2031080 () Bool)

(assert (=> d!1587784 (= res!2105153 (not lt!2031080))))

(declare-fun e!3081924 () Bool)

(assert (=> d!1587784 (= lt!2031080 e!3081924)))

(declare-fun res!2105151 () Bool)

(assert (=> d!1587784 (=> res!2105151 e!3081924)))

(assert (=> d!1587784 (= res!2105151 ((_ is Nil!56790) testedP!110))))

(assert (=> d!1587784 (= (isPrefix!5011 testedP!110 lt!2030908) lt!2031080)))

(declare-fun b!4932701 () Bool)

(assert (=> b!4932701 (= e!3081924 e!3081923)))

(declare-fun res!2105154 () Bool)

(assert (=> b!4932701 (=> (not res!2105154) (not e!3081923))))

(assert (=> b!4932701 (= res!2105154 (not ((_ is Nil!56790) lt!2030908)))))

(assert (= (and d!1587784 (not res!2105151)) b!4932701))

(assert (= (and b!4932701 res!2105154) b!4932702))

(assert (= (and b!4932702 res!2105152) b!4932703))

(assert (= (and d!1587784 (not res!2105153)) b!4932704))

(assert (=> b!4932703 m!5953016))

(declare-fun m!5953022 () Bool)

(assert (=> b!4932703 m!5953022))

(assert (=> b!4932703 m!5953016))

(assert (=> b!4932703 m!5953022))

(declare-fun m!5953024 () Bool)

(assert (=> b!4932703 m!5953024))

(assert (=> b!4932702 m!5953020))

(declare-fun m!5953026 () Bool)

(assert (=> b!4932702 m!5953026))

(declare-fun m!5953028 () Bool)

(assert (=> b!4932704 m!5953028))

(assert (=> b!4932704 m!5952648))

(assert (=> b!4932429 d!1587784))

(declare-fun d!1587786 () Bool)

(assert (=> d!1587786 (isPrefix!5011 testedP!110 (++!12378 testedP!110 testedSuffix!70))))

(declare-fun lt!2031083 () Unit!147433)

(declare-fun choose!36169 (List!56914 List!56914) Unit!147433)

(assert (=> d!1587786 (= lt!2031083 (choose!36169 testedP!110 testedSuffix!70))))

(assert (=> d!1587786 (= (lemmaConcatTwoListThenFirstIsPrefix!3235 testedP!110 testedSuffix!70) lt!2031083)))

(declare-fun bs!1180426 () Bool)

(assert (= bs!1180426 d!1587786))

(assert (=> bs!1180426 m!5952708))

(assert (=> bs!1180426 m!5952708))

(declare-fun m!5953030 () Bool)

(assert (=> bs!1180426 m!5953030))

(declare-fun m!5953032 () Bool)

(assert (=> bs!1180426 m!5953032))

(assert (=> b!4932429 d!1587786))

(declare-fun d!1587788 () Bool)

(declare-fun lambda!245608 () Int)

(declare-fun forall!13170 (List!56915 Int) Bool)

(assert (=> d!1587788 (= (inv!73742 setElem!27704) (forall!13170 (exprs!3555 setElem!27704) lambda!245608))))

(declare-fun bs!1180427 () Bool)

(assert (= bs!1180427 d!1587788))

(declare-fun m!5953034 () Bool)

(assert (=> bs!1180427 m!5953034))

(assert (=> setNonEmpty!27704 d!1587788))

(declare-fun d!1587790 () Bool)

(declare-fun lt!2031084 () Int)

(assert (=> d!1587790 (>= lt!2031084 0)))

(declare-fun e!3081926 () Int)

(assert (=> d!1587790 (= lt!2031084 e!3081926)))

(declare-fun c!840638 () Bool)

(assert (=> d!1587790 (= c!840638 ((_ is Nil!56790) lt!2030907))))

(assert (=> d!1587790 (= (size!37600 lt!2030907) lt!2031084)))

(declare-fun b!4932705 () Bool)

(assert (=> b!4932705 (= e!3081926 0)))

(declare-fun b!4932706 () Bool)

(assert (=> b!4932706 (= e!3081926 (+ 1 (size!37600 (t!367394 lt!2030907))))))

(assert (= (and d!1587790 c!840638) b!4932705))

(assert (= (and d!1587790 (not c!840638)) b!4932706))

(declare-fun m!5953036 () Bool)

(assert (=> b!4932706 m!5953036))

(assert (=> b!4932422 d!1587790))

(declare-fun d!1587792 () Bool)

(assert (=> d!1587792 (<= (size!37600 testedP!110) (size!37600 lt!2030907))))

(declare-fun lt!2031087 () Unit!147433)

(declare-fun choose!36170 (List!56914 List!56914) Unit!147433)

(assert (=> d!1587792 (= lt!2031087 (choose!36170 testedP!110 lt!2030907))))

(assert (=> d!1587792 (isPrefix!5011 testedP!110 lt!2030907)))

(assert (=> d!1587792 (= (lemmaIsPrefixThenSmallerEqSize!699 testedP!110 lt!2030907) lt!2031087)))

(declare-fun bs!1180428 () Bool)

(assert (= bs!1180428 d!1587792))

(assert (=> bs!1180428 m!5952648))

(assert (=> bs!1180428 m!5952688))

(declare-fun m!5953038 () Bool)

(assert (=> bs!1180428 m!5953038))

(assert (=> bs!1180428 m!5952666))

(assert (=> b!4932422 d!1587792))

(declare-fun tp!1384807 () Bool)

(declare-fun b!4932715 () Bool)

(declare-fun e!3081932 () Bool)

(declare-fun tp!1384806 () Bool)

(assert (=> b!4932715 (= e!3081932 (and (inv!73741 (left!41417 (c!840555 totalInput!685))) tp!1384806 (inv!73741 (right!41747 (c!840555 totalInput!685))) tp!1384807))))

(declare-fun b!4932717 () Bool)

(declare-fun e!3081931 () Bool)

(declare-fun tp!1384805 () Bool)

(assert (=> b!4932717 (= e!3081931 tp!1384805)))

(declare-fun b!4932716 () Bool)

(declare-fun inv!73748 (IArray!29905) Bool)

(assert (=> b!4932716 (= e!3081932 (and (inv!73748 (xs!18246 (c!840555 totalInput!685))) e!3081931))))

(assert (=> b!4932428 (= tp!1384773 (and (inv!73741 (c!840555 totalInput!685)) e!3081932))))

(assert (= (and b!4932428 ((_ is Node!14922) (c!840555 totalInput!685))) b!4932715))

(assert (= b!4932716 b!4932717))

(assert (= (and b!4932428 ((_ is Leaf!24816) (c!840555 totalInput!685))) b!4932716))

(declare-fun m!5953040 () Bool)

(assert (=> b!4932715 m!5953040))

(declare-fun m!5953042 () Bool)

(assert (=> b!4932715 m!5953042))

(declare-fun m!5953044 () Bool)

(assert (=> b!4932716 m!5953044))

(assert (=> b!4932428 m!5952656))

(declare-fun b!4932722 () Bool)

(declare-fun e!3081935 () Bool)

(declare-fun tp!1384810 () Bool)

(assert (=> b!4932722 (= e!3081935 (and tp_is_empty!36003 tp!1384810))))

(assert (=> b!4932432 (= tp!1384771 e!3081935)))

(assert (= (and b!4932432 ((_ is Cons!56790) (t!367394 testedP!110))) b!4932722))

(declare-fun b!4932723 () Bool)

(declare-fun e!3081936 () Bool)

(declare-fun tp!1384811 () Bool)

(assert (=> b!4932723 (= e!3081936 (and tp_is_empty!36003 tp!1384811))))

(assert (=> b!4932431 (= tp!1384769 e!3081936)))

(assert (= (and b!4932431 ((_ is Cons!56790) (t!367394 testedSuffix!70))) b!4932723))

(declare-fun condSetEmpty!27710 () Bool)

(assert (=> setNonEmpty!27704 (= condSetEmpty!27710 (= setRest!27704 ((as const (Array Context!6110 Bool)) false)))))

(declare-fun setRes!27710 () Bool)

(assert (=> setNonEmpty!27704 (= tp!1384770 setRes!27710)))

(declare-fun setIsEmpty!27710 () Bool)

(assert (=> setIsEmpty!27710 setRes!27710))

(declare-fun tp!1384816 () Bool)

(declare-fun setNonEmpty!27710 () Bool)

(declare-fun setElem!27710 () Context!6110)

(declare-fun e!3081939 () Bool)

(assert (=> setNonEmpty!27710 (= setRes!27710 (and tp!1384816 (inv!73742 setElem!27710) e!3081939))))

(declare-fun setRest!27710 () (InoxSet Context!6110))

(assert (=> setNonEmpty!27710 (= setRest!27704 ((_ map or) (store ((as const (Array Context!6110 Bool)) false) setElem!27710 true) setRest!27710))))

(declare-fun b!4932728 () Bool)

(declare-fun tp!1384817 () Bool)

(assert (=> b!4932728 (= e!3081939 tp!1384817)))

(assert (= (and setNonEmpty!27704 condSetEmpty!27710) setIsEmpty!27710))

(assert (= (and setNonEmpty!27704 (not condSetEmpty!27710)) setNonEmpty!27710))

(assert (= setNonEmpty!27710 b!4932728))

(declare-fun m!5953046 () Bool)

(assert (=> setNonEmpty!27710 m!5953046))

(declare-fun b!4932733 () Bool)

(declare-fun e!3081942 () Bool)

(declare-fun tp!1384822 () Bool)

(declare-fun tp!1384823 () Bool)

(assert (=> b!4932733 (= e!3081942 (and tp!1384822 tp!1384823))))

(assert (=> b!4932427 (= tp!1384772 e!3081942)))

(assert (= (and b!4932427 ((_ is Cons!56791) (exprs!3555 setElem!27704))) b!4932733))

(check-sat (not b!4932509) (not d!1587716) (not d!1587696) (not b!4932680) (not b!4932703) (not b!4932723) (not d!1587712) (not b!4932717) (not b!4932676) (not b!4932733) (not d!1587680) (not b!4932690) (not d!1587768) (not b!4932681) (not b!4932728) (not b!4932447) (not b!4932670) (not b!4932696) tp_is_empty!36003 (not d!1587786) (not d!1587678) (not b!4932521) (not d!1587704) (not b!4932706) (not b!4932557) (not d!1587662) (not b!4932555) (not b!4932529) (not b!4932679) (not bm!344196) (not b!4932716) (not b!4932478) (not b!4932512) (not b!4932702) (not b!4932698) (not b!4932564) (not d!1587664) (not b!4932531) (not bm!344182) (not b!4932700) (not b!4932530) (not b!4932513) (not d!1587772) (not b!4932428) (not bm!344197) (not b!4932510) (not d!1587776) (not setNonEmpty!27710) (not d!1587708) (not b!4932722) (not b!4932479) (not b!4932508) (not d!1587770) (not d!1587788) (not b!4932671) (not d!1587710) (not b!4932699) (not b!4932704) (not d!1587702) (not b!4932715) (not d!1587666) (not d!1587718) (not b!4932520) (not d!1587658) (not d!1587698) (not d!1587692) (not b!4932534) (not b!4932448) (not d!1587700) (not b!4932688) (not d!1587792))
(check-sat)
