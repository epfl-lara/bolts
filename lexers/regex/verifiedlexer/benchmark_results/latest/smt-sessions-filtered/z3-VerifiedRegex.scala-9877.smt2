; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517756 () Bool)

(assert start!517756)

(declare-fun b!4930168 () Bool)

(declare-fun e!3080226 () Bool)

(declare-fun e!3080228 () Bool)

(assert (=> b!4930168 (= e!3080226 (not e!3080228))))

(declare-fun res!2103891 () Bool)

(assert (=> b!4930168 (=> res!2103891 e!3080228)))

(declare-datatypes ((C!26992 0))(
  ( (C!26993 (val!22830 Int)) )
))
(declare-datatypes ((List!56841 0))(
  ( (Nil!56717) (Cons!56717 (h!63165 C!26992) (t!367317 List!56841)) )
))
(declare-fun testedP!110 () List!56841)

(declare-fun lt!2029441 () List!56841)

(declare-fun isPrefix!4979 (List!56841 List!56841) Bool)

(assert (=> b!4930168 (= res!2103891 (not (isPrefix!4979 testedP!110 lt!2029441)))))

(declare-fun lt!2029443 () List!56841)

(assert (=> b!4930168 (isPrefix!4979 testedP!110 lt!2029443)))

(declare-datatypes ((Unit!147345 0))(
  ( (Unit!147346) )
))
(declare-fun lt!2029440 () Unit!147345)

(declare-fun testedSuffix!70 () List!56841)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3203 (List!56841 List!56841) Unit!147345)

(assert (=> b!4930168 (= lt!2029440 (lemmaConcatTwoListThenFirstIsPrefix!3203 testedP!110 testedSuffix!70))))

(declare-fun b!4930169 () Bool)

(declare-fun e!3080229 () Bool)

(declare-fun tp!1384042 () Bool)

(assert (=> b!4930169 (= e!3080229 tp!1384042)))

(declare-fun b!4930170 () Bool)

(declare-fun res!2103889 () Bool)

(assert (=> b!4930170 (=> (not res!2103889) (not e!3080226))))

(declare-fun totalInputSize!132 () Int)

(declare-datatypes ((IArray!29841 0))(
  ( (IArray!29842 (innerList!14978 List!56841)) )
))
(declare-datatypes ((Conc!14890 0))(
  ( (Node!14890 (left!41369 Conc!14890) (right!41699 Conc!14890) (csize!30010 Int) (cheight!15101 Int)) (Leaf!24768 (xs!18214 IArray!29841) (csize!30011 Int)) (Empty!14890) )
))
(declare-datatypes ((BalanceConc!29210 0))(
  ( (BalanceConc!29211 (c!840183 Conc!14890)) )
))
(declare-fun totalInput!685 () BalanceConc!29210)

(declare-fun size!37527 (BalanceConc!29210) Int)

(assert (=> b!4930170 (= res!2103889 (= totalInputSize!132 (size!37527 totalInput!685)))))

(declare-fun b!4930171 () Bool)

(declare-fun e!3080230 () Bool)

(declare-fun tp_is_empty!35939 () Bool)

(declare-fun tp!1384041 () Bool)

(assert (=> b!4930171 (= e!3080230 (and tp_is_empty!35939 tp!1384041))))

(declare-fun b!4930172 () Bool)

(declare-fun e!3080227 () Bool)

(declare-fun tp!1384040 () Bool)

(declare-fun inv!73569 (Conc!14890) Bool)

(assert (=> b!4930172 (= e!3080227 (and (inv!73569 (c!840183 totalInput!685)) tp!1384040))))

(declare-datatypes ((Regex!13381 0))(
  ( (ElementMatch!13381 (c!840184 C!26992)) (Concat!21954 (regOne!27274 Regex!13381) (regTwo!27274 Regex!13381)) (EmptyExpr!13381) (Star!13381 (reg!13710 Regex!13381)) (EmptyLang!13381) (Union!13381 (regOne!27275 Regex!13381) (regTwo!27275 Regex!13381)) )
))
(declare-datatypes ((List!56842 0))(
  ( (Nil!56718) (Cons!56718 (h!63166 Regex!13381) (t!367318 List!56842)) )
))
(declare-datatypes ((Context!6046 0))(
  ( (Context!6047 (exprs!3523 List!56842)) )
))
(declare-fun setElem!27578 () Context!6046)

(declare-fun tp!1384039 () Bool)

(declare-fun setRes!27578 () Bool)

(declare-fun setNonEmpty!27578 () Bool)

(declare-fun inv!73570 (Context!6046) Bool)

(assert (=> setNonEmpty!27578 (= setRes!27578 (and tp!1384039 (inv!73570 setElem!27578) e!3080229))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6046))

(declare-fun setRest!27578 () (InoxSet Context!6046))

(assert (=> setNonEmpty!27578 (= z!3568 ((_ map or) (store ((as const (Array Context!6046 Bool)) false) setElem!27578 true) setRest!27578))))

(declare-fun setIsEmpty!27578 () Bool)

(assert (=> setIsEmpty!27578 setRes!27578))

(declare-fun b!4930173 () Bool)

(declare-fun res!2103892 () Bool)

(assert (=> b!4930173 (=> (not res!2103892) (not e!3080226))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37528 (List!56841) Int)

(assert (=> b!4930173 (= res!2103892 (= testedPSize!70 (size!37528 testedP!110)))))

(declare-fun b!4930174 () Bool)

(declare-fun e!3080225 () Bool)

(declare-fun tp!1384043 () Bool)

(assert (=> b!4930174 (= e!3080225 (and tp_is_empty!35939 tp!1384043))))

(declare-fun res!2103890 () Bool)

(assert (=> start!517756 (=> (not res!2103890) (not e!3080226))))

(assert (=> start!517756 (= res!2103890 (= lt!2029443 lt!2029441))))

(declare-fun list!17983 (BalanceConc!29210) List!56841)

(assert (=> start!517756 (= lt!2029441 (list!17983 totalInput!685))))

(declare-fun ++!12346 (List!56841 List!56841) List!56841)

(assert (=> start!517756 (= lt!2029443 (++!12346 testedP!110 testedSuffix!70))))

(assert (=> start!517756 e!3080226))

(assert (=> start!517756 e!3080225))

(declare-fun condSetEmpty!27578 () Bool)

(assert (=> start!517756 (= condSetEmpty!27578 (= z!3568 ((as const (Array Context!6046 Bool)) false)))))

(assert (=> start!517756 setRes!27578))

(assert (=> start!517756 true))

(declare-fun inv!73571 (BalanceConc!29210) Bool)

(assert (=> start!517756 (and (inv!73571 totalInput!685) e!3080227)))

(assert (=> start!517756 e!3080230))

(declare-fun b!4930175 () Bool)

(assert (=> b!4930175 (= e!3080228 true)))

(declare-fun lt!2029444 () Bool)

(declare-fun lostCauseZipper!699 ((InoxSet Context!6046)) Bool)

(assert (=> b!4930175 (= lt!2029444 (lostCauseZipper!699 z!3568))))

(declare-fun lt!2029442 () List!56841)

(assert (=> b!4930175 (and (= testedSuffix!70 lt!2029442) (= lt!2029442 testedSuffix!70))))

(declare-fun lt!2029445 () Unit!147345)

(declare-fun lemmaSamePrefixThenSameSuffix!2377 (List!56841 List!56841 List!56841 List!56841 List!56841) Unit!147345)

(assert (=> b!4930175 (= lt!2029445 (lemmaSamePrefixThenSameSuffix!2377 testedP!110 testedSuffix!70 testedP!110 lt!2029442 lt!2029441))))

(declare-fun getSuffix!2963 (List!56841 List!56841) List!56841)

(assert (=> b!4930175 (= lt!2029442 (getSuffix!2963 lt!2029441 testedP!110))))

(assert (= (and start!517756 res!2103890) b!4930173))

(assert (= (and b!4930173 res!2103892) b!4930170))

(assert (= (and b!4930170 res!2103889) b!4930168))

(assert (= (and b!4930168 (not res!2103891)) b!4930175))

(get-info :version)

(assert (= (and start!517756 ((_ is Cons!56717) testedP!110)) b!4930174))

(assert (= (and start!517756 condSetEmpty!27578) setIsEmpty!27578))

(assert (= (and start!517756 (not condSetEmpty!27578)) setNonEmpty!27578))

(assert (= setNonEmpty!27578 b!4930169))

(assert (= start!517756 b!4930172))

(assert (= (and start!517756 ((_ is Cons!56717) testedSuffix!70)) b!4930171))

(declare-fun m!5950286 () Bool)

(assert (=> b!4930172 m!5950286))

(declare-fun m!5950288 () Bool)

(assert (=> b!4930168 m!5950288))

(declare-fun m!5950290 () Bool)

(assert (=> b!4930168 m!5950290))

(declare-fun m!5950292 () Bool)

(assert (=> b!4930168 m!5950292))

(declare-fun m!5950294 () Bool)

(assert (=> b!4930173 m!5950294))

(declare-fun m!5950296 () Bool)

(assert (=> start!517756 m!5950296))

(declare-fun m!5950298 () Bool)

(assert (=> start!517756 m!5950298))

(declare-fun m!5950300 () Bool)

(assert (=> start!517756 m!5950300))

(declare-fun m!5950302 () Bool)

(assert (=> setNonEmpty!27578 m!5950302))

(declare-fun m!5950304 () Bool)

(assert (=> b!4930170 m!5950304))

(declare-fun m!5950306 () Bool)

(assert (=> b!4930175 m!5950306))

(declare-fun m!5950308 () Bool)

(assert (=> b!4930175 m!5950308))

(declare-fun m!5950310 () Bool)

(assert (=> b!4930175 m!5950310))

(check-sat (not start!517756) (not b!4930169) (not b!4930168) (not b!4930172) (not setNonEmpty!27578) (not b!4930174) (not b!4930173) (not b!4930171) (not b!4930170) tp_is_empty!35939 (not b!4930175))
(check-sat)
