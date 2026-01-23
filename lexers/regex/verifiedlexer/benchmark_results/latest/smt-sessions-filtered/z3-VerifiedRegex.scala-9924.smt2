; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520380 () Bool)

(assert start!520380)

(declare-fun b!4944410 () Bool)

(declare-fun res!2109817 () Bool)

(declare-fun e!3089207 () Bool)

(assert (=> b!4944410 (=> res!2109817 e!3089207)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4944410 (= res!2109817 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun b!4944411 () Bool)

(assert (=> b!4944411 (= e!3089207 true)))

(declare-datatypes ((C!27180 0))(
  ( (C!27181 (val!22924 Int)) )
))
(declare-datatypes ((List!57059 0))(
  ( (Nil!56935) (Cons!56935 (h!63383 C!27180) (t!367595 List!57059)) )
))
(declare-fun lt!2038271 () List!57059)

(declare-fun isPrefix!5071 (List!57059 List!57059) Bool)

(assert (=> b!4944411 (isPrefix!5071 lt!2038271 lt!2038271)))

(declare-datatypes ((Unit!147707 0))(
  ( (Unit!147708) )
))
(declare-fun lt!2038272 () Unit!147707)

(declare-fun lemmaIsPrefixRefl!3417 (List!57059 List!57059) Unit!147707)

(assert (=> b!4944411 (= lt!2038272 (lemmaIsPrefixRefl!3417 lt!2038271 lt!2038271))))

(declare-fun setRes!27968 () Bool)

(declare-fun e!3089210 () Bool)

(declare-datatypes ((Regex!13465 0))(
  ( (ElementMatch!13465 (c!843612 C!27180)) (Concat!22038 (regOne!27442 Regex!13465) (regTwo!27442 Regex!13465)) (EmptyExpr!13465) (Star!13465 (reg!13794 Regex!13465)) (EmptyLang!13465) (Union!13465 (regOne!27443 Regex!13465) (regTwo!27443 Regex!13465)) )
))
(declare-datatypes ((List!57060 0))(
  ( (Nil!56936) (Cons!56936 (h!63384 Regex!13465) (t!367596 List!57060)) )
))
(declare-datatypes ((Context!6214 0))(
  ( (Context!6215 (exprs!3607 List!57060)) )
))
(declare-fun setElem!27968 () Context!6214)

(declare-fun setNonEmpty!27968 () Bool)

(declare-fun tp!1386945 () Bool)

(declare-fun inv!74113 (Context!6214) Bool)

(assert (=> setNonEmpty!27968 (= setRes!27968 (and tp!1386945 (inv!74113 setElem!27968) e!3089210))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6214))

(declare-fun setRest!27968 () (InoxSet Context!6214))

(assert (=> setNonEmpty!27968 (= z!3568 ((_ map or) (store ((as const (Array Context!6214 Bool)) false) setElem!27968 true) setRest!27968))))

(declare-fun b!4944412 () Bool)

(declare-fun e!3089205 () Bool)

(declare-datatypes ((IArray!30029 0))(
  ( (IArray!30030 (innerList!15072 List!57059)) )
))
(declare-datatypes ((Conc!14984 0))(
  ( (Node!14984 (left!41542 Conc!14984) (right!41872 Conc!14984) (csize!30198 Int) (cheight!15195 Int)) (Leaf!24909 (xs!18310 IArray!30029) (csize!30199 Int)) (Empty!14984) )
))
(declare-datatypes ((BalanceConc!29398 0))(
  ( (BalanceConc!29399 (c!843613 Conc!14984)) )
))
(declare-fun totalInput!685 () BalanceConc!29398)

(declare-fun tp!1386941 () Bool)

(declare-fun inv!74114 (Conc!14984) Bool)

(assert (=> b!4944412 (= e!3089205 (and (inv!74114 (c!843613 totalInput!685)) tp!1386941))))

(declare-fun b!4944413 () Bool)

(declare-fun res!2109814 () Bool)

(declare-fun e!3089211 () Bool)

(assert (=> b!4944413 (=> (not res!2109814) (not e!3089211))))

(declare-fun testedP!110 () List!57059)

(declare-fun size!37761 (List!57059) Int)

(assert (=> b!4944413 (= res!2109814 (= testedPSize!70 (size!37761 testedP!110)))))

(declare-fun setIsEmpty!27968 () Bool)

(assert (=> setIsEmpty!27968 setRes!27968))

(declare-fun res!2109815 () Bool)

(assert (=> start!520380 (=> (not res!2109815) (not e!3089211))))

(declare-fun lt!2038268 () List!57059)

(assert (=> start!520380 (= res!2109815 (= lt!2038268 lt!2038271))))

(declare-fun list!18133 (BalanceConc!29398) List!57059)

(assert (=> start!520380 (= lt!2038271 (list!18133 totalInput!685))))

(declare-fun testedSuffix!70 () List!57059)

(declare-fun ++!12450 (List!57059 List!57059) List!57059)

(assert (=> start!520380 (= lt!2038268 (++!12450 testedP!110 testedSuffix!70))))

(assert (=> start!520380 e!3089211))

(declare-fun e!3089206 () Bool)

(assert (=> start!520380 e!3089206))

(declare-fun condSetEmpty!27968 () Bool)

(assert (=> start!520380 (= condSetEmpty!27968 (= z!3568 ((as const (Array Context!6214 Bool)) false)))))

(assert (=> start!520380 setRes!27968))

(assert (=> start!520380 true))

(declare-fun inv!74115 (BalanceConc!29398) Bool)

(assert (=> start!520380 (and (inv!74115 totalInput!685) e!3089205)))

(declare-fun e!3089209 () Bool)

(assert (=> start!520380 e!3089209))

(declare-fun b!4944414 () Bool)

(declare-fun tp_is_empty!36127 () Bool)

(declare-fun tp!1386944 () Bool)

(assert (=> b!4944414 (= e!3089209 (and tp_is_empty!36127 tp!1386944))))

(declare-fun b!4944415 () Bool)

(declare-fun res!2109816 () Bool)

(assert (=> b!4944415 (=> (not res!2109816) (not e!3089211))))

(declare-fun size!37762 (BalanceConc!29398) Int)

(assert (=> b!4944415 (= res!2109816 (= totalInputSize!132 (size!37762 totalInput!685)))))

(declare-fun b!4944416 () Bool)

(declare-fun e!3089208 () Bool)

(assert (=> b!4944416 (= e!3089208 e!3089207)))

(declare-fun res!2109818 () Bool)

(assert (=> b!4944416 (=> res!2109818 e!3089207)))

(declare-fun lostCauseZipper!783 ((InoxSet Context!6214)) Bool)

(assert (=> b!4944416 (= res!2109818 (lostCauseZipper!783 z!3568))))

(declare-fun lt!2038273 () List!57059)

(assert (=> b!4944416 (and (= testedSuffix!70 lt!2038273) (= lt!2038273 testedSuffix!70))))

(declare-fun lt!2038270 () Unit!147707)

(declare-fun lemmaSamePrefixThenSameSuffix!2463 (List!57059 List!57059 List!57059 List!57059 List!57059) Unit!147707)

(assert (=> b!4944416 (= lt!2038270 (lemmaSamePrefixThenSameSuffix!2463 testedP!110 testedSuffix!70 testedP!110 lt!2038273 lt!2038271))))

(declare-fun getSuffix!3053 (List!57059 List!57059) List!57059)

(assert (=> b!4944416 (= lt!2038273 (getSuffix!3053 lt!2038271 testedP!110))))

(declare-fun b!4944417 () Bool)

(declare-fun tp!1386942 () Bool)

(assert (=> b!4944417 (= e!3089210 tp!1386942)))

(declare-fun b!4944418 () Bool)

(declare-fun tp!1386943 () Bool)

(assert (=> b!4944418 (= e!3089206 (and tp_is_empty!36127 tp!1386943))))

(declare-fun b!4944419 () Bool)

(assert (=> b!4944419 (= e!3089211 (not e!3089208))))

(declare-fun res!2109813 () Bool)

(assert (=> b!4944419 (=> res!2109813 e!3089208)))

(assert (=> b!4944419 (= res!2109813 (not (isPrefix!5071 testedP!110 lt!2038271)))))

(assert (=> b!4944419 (isPrefix!5071 testedP!110 lt!2038268)))

(declare-fun lt!2038269 () Unit!147707)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3295 (List!57059 List!57059) Unit!147707)

(assert (=> b!4944419 (= lt!2038269 (lemmaConcatTwoListThenFirstIsPrefix!3295 testedP!110 testedSuffix!70))))

(assert (= (and start!520380 res!2109815) b!4944413))

(assert (= (and b!4944413 res!2109814) b!4944415))

(assert (= (and b!4944415 res!2109816) b!4944419))

(assert (= (and b!4944419 (not res!2109813)) b!4944416))

(assert (= (and b!4944416 (not res!2109818)) b!4944410))

(assert (= (and b!4944410 (not res!2109817)) b!4944411))

(get-info :version)

(assert (= (and start!520380 ((_ is Cons!56935) testedP!110)) b!4944418))

(assert (= (and start!520380 condSetEmpty!27968) setIsEmpty!27968))

(assert (= (and start!520380 (not condSetEmpty!27968)) setNonEmpty!27968))

(assert (= setNonEmpty!27968 b!4944417))

(assert (= start!520380 b!4944412))

(assert (= (and start!520380 ((_ is Cons!56935) testedSuffix!70)) b!4944414))

(declare-fun m!5967438 () Bool)

(assert (=> setNonEmpty!27968 m!5967438))

(declare-fun m!5967440 () Bool)

(assert (=> b!4944416 m!5967440))

(declare-fun m!5967442 () Bool)

(assert (=> b!4944416 m!5967442))

(declare-fun m!5967444 () Bool)

(assert (=> b!4944416 m!5967444))

(declare-fun m!5967446 () Bool)

(assert (=> b!4944419 m!5967446))

(declare-fun m!5967448 () Bool)

(assert (=> b!4944419 m!5967448))

(declare-fun m!5967450 () Bool)

(assert (=> b!4944419 m!5967450))

(declare-fun m!5967452 () Bool)

(assert (=> b!4944412 m!5967452))

(declare-fun m!5967454 () Bool)

(assert (=> b!4944415 m!5967454))

(declare-fun m!5967456 () Bool)

(assert (=> b!4944411 m!5967456))

(declare-fun m!5967458 () Bool)

(assert (=> b!4944411 m!5967458))

(declare-fun m!5967460 () Bool)

(assert (=> start!520380 m!5967460))

(declare-fun m!5967462 () Bool)

(assert (=> start!520380 m!5967462))

(declare-fun m!5967464 () Bool)

(assert (=> start!520380 m!5967464))

(declare-fun m!5967466 () Bool)

(assert (=> b!4944413 m!5967466))

(check-sat (not b!4944413) (not b!4944412) (not b!4944414) (not start!520380) (not b!4944415) (not b!4944416) (not b!4944417) tp_is_empty!36127 (not b!4944411) (not setNonEmpty!27968) (not b!4944418) (not b!4944419))
(check-sat)
