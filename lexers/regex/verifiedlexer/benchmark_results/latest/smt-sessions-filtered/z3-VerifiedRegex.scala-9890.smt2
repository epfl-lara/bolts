; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518104 () Bool)

(assert start!518104)

(declare-fun b!4932155 () Bool)

(declare-fun e!3081526 () Bool)

(declare-fun e!3081528 () Bool)

(assert (=> b!4932155 (= e!3081526 (not e!3081528))))

(declare-fun res!2104866 () Bool)

(assert (=> b!4932155 (=> res!2104866 e!3081528)))

(declare-datatypes ((C!27044 0))(
  ( (C!27045 (val!22856 Int)) )
))
(declare-datatypes ((List!56902 0))(
  ( (Nil!56778) (Cons!56778 (h!63226 C!27044) (t!367382 List!56902)) )
))
(declare-fun testedP!110 () List!56902)

(declare-fun lt!2030624 () List!56902)

(declare-fun isPrefix!5005 (List!56902 List!56902) Bool)

(assert (=> b!4932155 (= res!2104866 (not (isPrefix!5005 testedP!110 lt!2030624)))))

(declare-fun lt!2030626 () List!56902)

(assert (=> b!4932155 (isPrefix!5005 testedP!110 lt!2030626)))

(declare-datatypes ((Unit!147415 0))(
  ( (Unit!147416) )
))
(declare-fun lt!2030625 () Unit!147415)

(declare-fun testedSuffix!70 () List!56902)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3229 (List!56902 List!56902) Unit!147415)

(assert (=> b!4932155 (= lt!2030625 (lemmaConcatTwoListThenFirstIsPrefix!3229 testedP!110 testedSuffix!70))))

(declare-fun b!4932156 () Bool)

(declare-fun e!3081525 () Bool)

(declare-datatypes ((IArray!29893 0))(
  ( (IArray!29894 (innerList!15004 List!56902)) )
))
(declare-datatypes ((Conc!14916 0))(
  ( (Node!14916 (left!41408 Conc!14916) (right!41738 Conc!14916) (csize!30062 Int) (cheight!15127 Int)) (Leaf!24807 (xs!18240 IArray!29893) (csize!30063 Int)) (Empty!14916) )
))
(declare-datatypes ((BalanceConc!29262 0))(
  ( (BalanceConc!29263 (c!840531 Conc!14916)) )
))
(declare-fun totalInput!685 () BalanceConc!29262)

(declare-fun tp!1384681 () Bool)

(declare-fun inv!73713 (Conc!14916) Bool)

(assert (=> b!4932156 (= e!3081525 (and (inv!73713 (c!840531 totalInput!685)) tp!1384681))))

(declare-fun b!4932157 () Bool)

(declare-fun res!2104868 () Bool)

(assert (=> b!4932157 (=> (not res!2104868) (not e!3081526))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37588 (BalanceConc!29262) Int)

(assert (=> b!4932157 (= res!2104868 (= totalInputSize!132 (size!37588 totalInput!685)))))

(declare-fun b!4932158 () Bool)

(declare-fun e!3081527 () Bool)

(declare-fun e!3081531 () Bool)

(assert (=> b!4932158 (= e!3081527 e!3081531)))

(declare-fun res!2104863 () Bool)

(assert (=> b!4932158 (=> res!2104863 e!3081531)))

(declare-fun testedPSize!70 () Int)

(declare-fun apply!13689 (BalanceConc!29262 Int) C!27044)

(declare-fun head!10544 (List!56902) C!27044)

(assert (=> b!4932158 (= res!2104863 (not (= (apply!13689 totalInput!685 testedPSize!70) (head!10544 testedSuffix!70))))))

(declare-fun drop!2238 (List!56902 Int) List!56902)

(declare-fun apply!13690 (List!56902 Int) C!27044)

(assert (=> b!4932158 (= (head!10544 (drop!2238 lt!2030624 testedPSize!70)) (apply!13690 lt!2030624 testedPSize!70))))

(declare-fun lt!2030629 () Unit!147415)

(declare-fun lemmaDropApply!1296 (List!56902 Int) Unit!147415)

(assert (=> b!4932158 (= lt!2030629 (lemmaDropApply!1296 lt!2030624 testedPSize!70))))

(declare-fun lt!2030634 () List!56902)

(declare-fun lt!2030633 () List!56902)

(assert (=> b!4932158 (not (or (not (= lt!2030634 testedP!110)) (not (= lt!2030633 testedSuffix!70))))))

(declare-fun lt!2030635 () Unit!147415)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!673 (List!56902 List!56902 List!56902 List!56902) Unit!147415)

(assert (=> b!4932158 (= lt!2030635 (lemmaConcatSameAndSameSizesThenSameLists!673 lt!2030634 lt!2030633 testedP!110 testedSuffix!70))))

(declare-fun b!4932159 () Bool)

(declare-fun res!2104867 () Bool)

(assert (=> b!4932159 (=> res!2104867 e!3081527)))

(declare-datatypes ((tuple2!61250 0))(
  ( (tuple2!61251 (_1!33928 BalanceConc!29262) (_2!33928 BalanceConc!29262)) )
))
(declare-fun lt!2030631 () tuple2!61250)

(assert (=> b!4932159 (= res!2104867 (not (= (size!37588 (_1!33928 lt!2030631)) testedPSize!70)))))

(declare-fun setRes!27686 () Bool)

(declare-fun e!3081529 () Bool)

(declare-fun tp!1384683 () Bool)

(declare-fun setNonEmpty!27686 () Bool)

(declare-datatypes ((Regex!13407 0))(
  ( (ElementMatch!13407 (c!840532 C!27044)) (Concat!21980 (regOne!27326 Regex!13407) (regTwo!27326 Regex!13407)) (EmptyExpr!13407) (Star!13407 (reg!13736 Regex!13407)) (EmptyLang!13407) (Union!13407 (regOne!27327 Regex!13407) (regTwo!27327 Regex!13407)) )
))
(declare-datatypes ((List!56903 0))(
  ( (Nil!56779) (Cons!56779 (h!63227 Regex!13407) (t!367383 List!56903)) )
))
(declare-datatypes ((Context!6098 0))(
  ( (Context!6099 (exprs!3549 List!56903)) )
))
(declare-fun setElem!27686 () Context!6098)

(declare-fun inv!73714 (Context!6098) Bool)

(assert (=> setNonEmpty!27686 (= setRes!27686 (and tp!1384683 (inv!73714 setElem!27686) e!3081529))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6098))

(declare-fun setRest!27686 () (InoxSet Context!6098))

(assert (=> setNonEmpty!27686 (= z!3568 ((_ map or) (store ((as const (Array Context!6098 Bool)) false) setElem!27686 true) setRest!27686))))

(declare-fun b!4932160 () Bool)

(declare-fun res!2104869 () Bool)

(declare-fun e!3081530 () Bool)

(assert (=> b!4932160 (=> res!2104869 e!3081530)))

(assert (=> b!4932160 (= res!2104869 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4932161 () Bool)

(declare-fun e!3081523 () Bool)

(declare-fun tp_is_empty!35991 () Bool)

(declare-fun tp!1384679 () Bool)

(assert (=> b!4932161 (= e!3081523 (and tp_is_empty!35991 tp!1384679))))

(declare-fun b!4932163 () Bool)

(assert (=> b!4932163 (= e!3081528 e!3081530)))

(declare-fun res!2104870 () Bool)

(assert (=> b!4932163 (=> res!2104870 e!3081530)))

(declare-fun lostCauseZipper!725 ((InoxSet Context!6098)) Bool)

(assert (=> b!4932163 (= res!2104870 (lostCauseZipper!725 z!3568))))

(declare-fun lt!2030630 () List!56902)

(assert (=> b!4932163 (and (= testedSuffix!70 lt!2030630) (= lt!2030630 testedSuffix!70))))

(declare-fun lt!2030628 () Unit!147415)

(declare-fun lemmaSamePrefixThenSameSuffix!2403 (List!56902 List!56902 List!56902 List!56902 List!56902) Unit!147415)

(assert (=> b!4932163 (= lt!2030628 (lemmaSamePrefixThenSameSuffix!2403 testedP!110 testedSuffix!70 testedP!110 lt!2030630 lt!2030624))))

(declare-fun getSuffix!2989 (List!56902 List!56902) List!56902)

(assert (=> b!4932163 (= lt!2030630 (getSuffix!2989 lt!2030624 testedP!110))))

(declare-fun b!4932164 () Bool)

(declare-fun e!3081532 () Bool)

(declare-fun tp!1384680 () Bool)

(assert (=> b!4932164 (= e!3081532 (and tp_is_empty!35991 tp!1384680))))

(declare-fun res!2104865 () Bool)

(declare-fun e!3081524 () Bool)

(assert (=> start!518104 (=> (not res!2104865) (not e!3081524))))

(assert (=> start!518104 (= res!2104865 (= lt!2030626 lt!2030624))))

(declare-fun list!18018 (BalanceConc!29262) List!56902)

(assert (=> start!518104 (= lt!2030624 (list!18018 totalInput!685))))

(declare-fun ++!12372 (List!56902 List!56902) List!56902)

(assert (=> start!518104 (= lt!2030626 (++!12372 testedP!110 testedSuffix!70))))

(assert (=> start!518104 e!3081524))

(assert (=> start!518104 e!3081532))

(declare-fun condSetEmpty!27686 () Bool)

(assert (=> start!518104 (= condSetEmpty!27686 (= z!3568 ((as const (Array Context!6098 Bool)) false)))))

(assert (=> start!518104 setRes!27686))

(assert (=> start!518104 true))

(declare-fun inv!73715 (BalanceConc!29262) Bool)

(assert (=> start!518104 (and (inv!73715 totalInput!685) e!3081525)))

(assert (=> start!518104 e!3081523))

(declare-fun b!4932162 () Bool)

(declare-fun tp!1384682 () Bool)

(assert (=> b!4932162 (= e!3081529 tp!1384682)))

(declare-fun b!4932165 () Bool)

(assert (=> b!4932165 (= e!3081524 e!3081526)))

(declare-fun res!2104864 () Bool)

(assert (=> b!4932165 (=> (not res!2104864) (not e!3081526))))

(declare-fun lt!2030632 () Int)

(assert (=> b!4932165 (= res!2104864 (= testedPSize!70 lt!2030632))))

(declare-fun size!37589 (List!56902) Int)

(assert (=> b!4932165 (= lt!2030632 (size!37589 testedP!110))))

(declare-fun b!4932166 () Bool)

(assert (=> b!4932166 (= e!3081530 e!3081527)))

(declare-fun res!2104862 () Bool)

(assert (=> b!4932166 (=> res!2104862 e!3081527)))

(assert (=> b!4932166 (= res!2104862 (not (= (++!12372 lt!2030634 lt!2030633) lt!2030624)))))

(assert (=> b!4932166 (= lt!2030633 (list!18018 (_2!33928 lt!2030631)))))

(assert (=> b!4932166 (= lt!2030634 (list!18018 (_1!33928 lt!2030631)))))

(declare-fun splitAt!299 (BalanceConc!29262 Int) tuple2!61250)

(assert (=> b!4932166 (= lt!2030631 (splitAt!299 totalInput!685 testedPSize!70))))

(declare-fun b!4932167 () Bool)

(assert (=> b!4932167 (= e!3081531 true)))

(assert (=> b!4932167 (<= lt!2030632 (size!37589 lt!2030624))))

(declare-fun lt!2030627 () Unit!147415)

(declare-fun lemmaIsPrefixThenSmallerEqSize!693 (List!56902 List!56902) Unit!147415)

(assert (=> b!4932167 (= lt!2030627 (lemmaIsPrefixThenSmallerEqSize!693 testedP!110 lt!2030624))))

(declare-fun setIsEmpty!27686 () Bool)

(assert (=> setIsEmpty!27686 setRes!27686))

(assert (= (and start!518104 res!2104865) b!4932165))

(assert (= (and b!4932165 res!2104864) b!4932157))

(assert (= (and b!4932157 res!2104868) b!4932155))

(assert (= (and b!4932155 (not res!2104866)) b!4932163))

(assert (= (and b!4932163 (not res!2104870)) b!4932160))

(assert (= (and b!4932160 (not res!2104869)) b!4932166))

(assert (= (and b!4932166 (not res!2104862)) b!4932159))

(assert (= (and b!4932159 (not res!2104867)) b!4932158))

(assert (= (and b!4932158 (not res!2104863)) b!4932167))

(get-info :version)

(assert (= (and start!518104 ((_ is Cons!56778) testedP!110)) b!4932164))

(assert (= (and start!518104 condSetEmpty!27686) setIsEmpty!27686))

(assert (= (and start!518104 (not condSetEmpty!27686)) setNonEmpty!27686))

(assert (= setNonEmpty!27686 b!4932162))

(assert (= start!518104 b!4932156))

(assert (= (and start!518104 ((_ is Cons!56778) testedSuffix!70)) b!4932161))

(declare-fun m!5952286 () Bool)

(assert (=> b!4932156 m!5952286))

(declare-fun m!5952288 () Bool)

(assert (=> start!518104 m!5952288))

(declare-fun m!5952290 () Bool)

(assert (=> start!518104 m!5952290))

(declare-fun m!5952292 () Bool)

(assert (=> start!518104 m!5952292))

(declare-fun m!5952294 () Bool)

(assert (=> b!4932159 m!5952294))

(declare-fun m!5952296 () Bool)

(assert (=> b!4932157 m!5952296))

(declare-fun m!5952298 () Bool)

(assert (=> b!4932155 m!5952298))

(declare-fun m!5952300 () Bool)

(assert (=> b!4932155 m!5952300))

(declare-fun m!5952302 () Bool)

(assert (=> b!4932155 m!5952302))

(declare-fun m!5952304 () Bool)

(assert (=> b!4932167 m!5952304))

(declare-fun m!5952306 () Bool)

(assert (=> b!4932167 m!5952306))

(declare-fun m!5952308 () Bool)

(assert (=> b!4932166 m!5952308))

(declare-fun m!5952310 () Bool)

(assert (=> b!4932166 m!5952310))

(declare-fun m!5952312 () Bool)

(assert (=> b!4932166 m!5952312))

(declare-fun m!5952314 () Bool)

(assert (=> b!4932166 m!5952314))

(declare-fun m!5952316 () Bool)

(assert (=> b!4932165 m!5952316))

(declare-fun m!5952318 () Bool)

(assert (=> b!4932158 m!5952318))

(declare-fun m!5952320 () Bool)

(assert (=> b!4932158 m!5952320))

(declare-fun m!5952322 () Bool)

(assert (=> b!4932158 m!5952322))

(declare-fun m!5952324 () Bool)

(assert (=> b!4932158 m!5952324))

(declare-fun m!5952326 () Bool)

(assert (=> b!4932158 m!5952326))

(assert (=> b!4932158 m!5952318))

(declare-fun m!5952328 () Bool)

(assert (=> b!4932158 m!5952328))

(declare-fun m!5952330 () Bool)

(assert (=> b!4932158 m!5952330))

(declare-fun m!5952332 () Bool)

(assert (=> b!4932163 m!5952332))

(declare-fun m!5952334 () Bool)

(assert (=> b!4932163 m!5952334))

(declare-fun m!5952336 () Bool)

(assert (=> b!4932163 m!5952336))

(declare-fun m!5952338 () Bool)

(assert (=> setNonEmpty!27686 m!5952338))

(check-sat (not b!4932164) (not b!4932158) (not b!4932166) (not b!4932156) (not b!4932159) (not b!4932162) (not b!4932167) (not b!4932157) (not b!4932161) (not start!518104) (not setNonEmpty!27686) (not b!4932155) tp_is_empty!35991 (not b!4932163) (not b!4932165))
(check-sat)
