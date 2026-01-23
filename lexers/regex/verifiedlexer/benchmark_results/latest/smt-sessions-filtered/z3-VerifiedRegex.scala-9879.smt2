; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517812 () Bool)

(assert start!517812)

(declare-fun res!2104004 () Bool)

(declare-fun e!3080419 () Bool)

(assert (=> start!517812 (=> (not res!2104004) (not e!3080419))))

(declare-datatypes ((C!27000 0))(
  ( (C!27001 (val!22834 Int)) )
))
(declare-datatypes ((List!56851 0))(
  ( (Nil!56727) (Cons!56727 (h!63175 C!27000) (t!367327 List!56851)) )
))
(declare-fun lt!2029609 () List!56851)

(declare-fun lt!2029611 () List!56851)

(assert (=> start!517812 (= res!2104004 (= lt!2029609 lt!2029611))))

(declare-datatypes ((IArray!29849 0))(
  ( (IArray!29850 (innerList!14982 List!56851)) )
))
(declare-datatypes ((Conc!14894 0))(
  ( (Node!14894 (left!41375 Conc!14894) (right!41705 Conc!14894) (csize!30018 Int) (cheight!15105 Int)) (Leaf!24774 (xs!18218 IArray!29849) (csize!30019 Int)) (Empty!14894) )
))
(declare-datatypes ((BalanceConc!29218 0))(
  ( (BalanceConc!29219 (c!840239 Conc!14894)) )
))
(declare-fun totalInput!685 () BalanceConc!29218)

(declare-fun list!17989 (BalanceConc!29218) List!56851)

(assert (=> start!517812 (= lt!2029611 (list!17989 totalInput!685))))

(declare-fun testedP!110 () List!56851)

(declare-fun testedSuffix!70 () List!56851)

(declare-fun ++!12350 (List!56851 List!56851) List!56851)

(assert (=> start!517812 (= lt!2029609 (++!12350 testedP!110 testedSuffix!70))))

(assert (=> start!517812 e!3080419))

(declare-fun e!3080417 () Bool)

(assert (=> start!517812 e!3080417))

(declare-fun condSetEmpty!27596 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13385 0))(
  ( (ElementMatch!13385 (c!840240 C!27000)) (Concat!21958 (regOne!27282 Regex!13385) (regTwo!27282 Regex!13385)) (EmptyExpr!13385) (Star!13385 (reg!13714 Regex!13385)) (EmptyLang!13385) (Union!13385 (regOne!27283 Regex!13385) (regTwo!27283 Regex!13385)) )
))
(declare-datatypes ((List!56852 0))(
  ( (Nil!56728) (Cons!56728 (h!63176 Regex!13385) (t!367328 List!56852)) )
))
(declare-datatypes ((Context!6054 0))(
  ( (Context!6055 (exprs!3527 List!56852)) )
))
(declare-fun z!3568 () (InoxSet Context!6054))

(assert (=> start!517812 (= condSetEmpty!27596 (= z!3568 ((as const (Array Context!6054 Bool)) false)))))

(declare-fun setRes!27596 () Bool)

(assert (=> start!517812 setRes!27596))

(assert (=> start!517812 true))

(declare-fun e!3080421 () Bool)

(declare-fun inv!73593 (BalanceConc!29218) Bool)

(assert (=> start!517812 (and (inv!73593 totalInput!685) e!3080421)))

(declare-fun e!3080416 () Bool)

(assert (=> start!517812 e!3080416))

(declare-fun b!4930448 () Bool)

(declare-fun res!2104006 () Bool)

(assert (=> b!4930448 (=> (not res!2104006) (not e!3080419))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37537 (List!56851) Int)

(assert (=> b!4930448 (= res!2104006 (= testedPSize!70 (size!37537 testedP!110)))))

(declare-fun b!4930449 () Bool)

(declare-fun e!3080422 () Bool)

(declare-fun e!3080418 () Bool)

(assert (=> b!4930449 (= e!3080422 e!3080418)))

(declare-fun res!2104003 () Bool)

(assert (=> b!4930449 (=> res!2104003 e!3080418)))

(declare-fun lostCauseZipper!703 ((InoxSet Context!6054)) Bool)

(assert (=> b!4930449 (= res!2104003 (lostCauseZipper!703 z!3568))))

(declare-fun lt!2029607 () List!56851)

(assert (=> b!4930449 (and (= testedSuffix!70 lt!2029607) (= lt!2029607 testedSuffix!70))))

(declare-datatypes ((Unit!147357 0))(
  ( (Unit!147358) )
))
(declare-fun lt!2029610 () Unit!147357)

(declare-fun lemmaSamePrefixThenSameSuffix!2381 (List!56851 List!56851 List!56851 List!56851 List!56851) Unit!147357)

(assert (=> b!4930449 (= lt!2029610 (lemmaSamePrefixThenSameSuffix!2381 testedP!110 testedSuffix!70 testedP!110 lt!2029607 lt!2029611))))

(declare-fun getSuffix!2967 (List!56851 List!56851) List!56851)

(assert (=> b!4930449 (= lt!2029607 (getSuffix!2967 lt!2029611 testedP!110))))

(declare-fun b!4930450 () Bool)

(assert (=> b!4930450 (= e!3080419 (not e!3080422))))

(declare-fun res!2104005 () Bool)

(assert (=> b!4930450 (=> res!2104005 e!3080422)))

(declare-fun isPrefix!4983 (List!56851 List!56851) Bool)

(assert (=> b!4930450 (= res!2104005 (not (isPrefix!4983 testedP!110 lt!2029611)))))

(assert (=> b!4930450 (isPrefix!4983 testedP!110 lt!2029609)))

(declare-fun lt!2029606 () Unit!147357)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3207 (List!56851 List!56851) Unit!147357)

(assert (=> b!4930450 (= lt!2029606 (lemmaConcatTwoListThenFirstIsPrefix!3207 testedP!110 testedSuffix!70))))

(declare-fun b!4930451 () Bool)

(assert (=> b!4930451 (= e!3080418 true)))

(declare-fun lt!2029605 () Int)

(assert (=> b!4930451 (= lt!2029605 (size!37537 lt!2029611))))

(assert (=> b!4930451 (isPrefix!4983 lt!2029611 lt!2029611)))

(declare-fun lt!2029608 () Unit!147357)

(declare-fun lemmaIsPrefixRefl!3365 (List!56851 List!56851) Unit!147357)

(assert (=> b!4930451 (= lt!2029608 (lemmaIsPrefixRefl!3365 lt!2029611 lt!2029611))))

(declare-fun b!4930452 () Bool)

(declare-fun tp_is_empty!35947 () Bool)

(declare-fun tp!1384150 () Bool)

(assert (=> b!4930452 (= e!3080416 (and tp_is_empty!35947 tp!1384150))))

(declare-fun b!4930453 () Bool)

(declare-fun tp!1384153 () Bool)

(declare-fun inv!73594 (Conc!14894) Bool)

(assert (=> b!4930453 (= e!3080421 (and (inv!73594 (c!840239 totalInput!685)) tp!1384153))))

(declare-fun b!4930454 () Bool)

(declare-fun res!2104008 () Bool)

(assert (=> b!4930454 (=> (not res!2104008) (not e!3080419))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37538 (BalanceConc!29218) Int)

(assert (=> b!4930454 (= res!2104008 (= totalInputSize!132 (size!37538 totalInput!685)))))

(declare-fun setIsEmpty!27596 () Bool)

(assert (=> setIsEmpty!27596 setRes!27596))

(declare-fun b!4930455 () Bool)

(declare-fun res!2104007 () Bool)

(assert (=> b!4930455 (=> res!2104007 e!3080418)))

(assert (=> b!4930455 (= res!2104007 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun b!4930456 () Bool)

(declare-fun e!3080420 () Bool)

(declare-fun tp!1384151 () Bool)

(assert (=> b!4930456 (= e!3080420 tp!1384151)))

(declare-fun tp!1384149 () Bool)

(declare-fun setNonEmpty!27596 () Bool)

(declare-fun setElem!27596 () Context!6054)

(declare-fun inv!73595 (Context!6054) Bool)

(assert (=> setNonEmpty!27596 (= setRes!27596 (and tp!1384149 (inv!73595 setElem!27596) e!3080420))))

(declare-fun setRest!27596 () (InoxSet Context!6054))

(assert (=> setNonEmpty!27596 (= z!3568 ((_ map or) (store ((as const (Array Context!6054 Bool)) false) setElem!27596 true) setRest!27596))))

(declare-fun b!4930457 () Bool)

(declare-fun tp!1384152 () Bool)

(assert (=> b!4930457 (= e!3080417 (and tp_is_empty!35947 tp!1384152))))

(assert (= (and start!517812 res!2104004) b!4930448))

(assert (= (and b!4930448 res!2104006) b!4930454))

(assert (= (and b!4930454 res!2104008) b!4930450))

(assert (= (and b!4930450 (not res!2104005)) b!4930449))

(assert (= (and b!4930449 (not res!2104003)) b!4930455))

(assert (= (and b!4930455 (not res!2104007)) b!4930451))

(get-info :version)

(assert (= (and start!517812 ((_ is Cons!56727) testedP!110)) b!4930457))

(assert (= (and start!517812 condSetEmpty!27596) setIsEmpty!27596))

(assert (= (and start!517812 (not condSetEmpty!27596)) setNonEmpty!27596))

(assert (= setNonEmpty!27596 b!4930456))

(assert (= start!517812 b!4930453))

(assert (= (and start!517812 ((_ is Cons!56727) testedSuffix!70)) b!4930452))

(declare-fun m!5950560 () Bool)

(assert (=> start!517812 m!5950560))

(declare-fun m!5950562 () Bool)

(assert (=> start!517812 m!5950562))

(declare-fun m!5950564 () Bool)

(assert (=> start!517812 m!5950564))

(declare-fun m!5950566 () Bool)

(assert (=> b!4930454 m!5950566))

(declare-fun m!5950568 () Bool)

(assert (=> b!4930450 m!5950568))

(declare-fun m!5950570 () Bool)

(assert (=> b!4930450 m!5950570))

(declare-fun m!5950572 () Bool)

(assert (=> b!4930450 m!5950572))

(declare-fun m!5950574 () Bool)

(assert (=> b!4930451 m!5950574))

(declare-fun m!5950576 () Bool)

(assert (=> b!4930451 m!5950576))

(declare-fun m!5950578 () Bool)

(assert (=> b!4930451 m!5950578))

(declare-fun m!5950580 () Bool)

(assert (=> b!4930449 m!5950580))

(declare-fun m!5950582 () Bool)

(assert (=> b!4930449 m!5950582))

(declare-fun m!5950584 () Bool)

(assert (=> b!4930449 m!5950584))

(declare-fun m!5950586 () Bool)

(assert (=> setNonEmpty!27596 m!5950586))

(declare-fun m!5950588 () Bool)

(assert (=> b!4930453 m!5950588))

(declare-fun m!5950590 () Bool)

(assert (=> b!4930448 m!5950590))

(check-sat (not b!4930452) (not b!4930448) (not b!4930454) (not b!4930450) (not b!4930449) (not setNonEmpty!27596) (not b!4930451) (not b!4930457) (not start!517812) tp_is_empty!35947 (not b!4930456) (not b!4930453))
(check-sat)
