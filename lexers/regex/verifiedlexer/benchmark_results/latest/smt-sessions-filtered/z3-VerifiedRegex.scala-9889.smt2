; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518100 () Bool)

(assert start!518100)

(declare-fun b!4932078 () Bool)

(declare-fun res!2104813 () Bool)

(declare-fun e!3081469 () Bool)

(assert (=> b!4932078 (=> res!2104813 e!3081469)))

(declare-datatypes ((C!27040 0))(
  ( (C!27041 (val!22854 Int)) )
))
(declare-datatypes ((List!56898 0))(
  ( (Nil!56774) (Cons!56774 (h!63222 C!27040) (t!367378 List!56898)) )
))
(declare-datatypes ((IArray!29889 0))(
  ( (IArray!29890 (innerList!15002 List!56898)) )
))
(declare-datatypes ((Conc!14914 0))(
  ( (Node!14914 (left!41405 Conc!14914) (right!41735 Conc!14914) (csize!30058 Int) (cheight!15125 Int)) (Leaf!24804 (xs!18238 IArray!29889) (csize!30059 Int)) (Empty!14914) )
))
(declare-datatypes ((BalanceConc!29258 0))(
  ( (BalanceConc!29259 (c!840527 Conc!14914)) )
))
(declare-datatypes ((tuple2!61246 0))(
  ( (tuple2!61247 (_1!33926 BalanceConc!29258) (_2!33926 BalanceConc!29258)) )
))
(declare-fun lt!2030561 () tuple2!61246)

(declare-fun testedPSize!70 () Int)

(declare-fun size!37584 (BalanceConc!29258) Int)

(assert (=> b!4932078 (= res!2104813 (not (= (size!37584 (_1!33926 lt!2030561)) testedPSize!70)))))

(declare-fun b!4932079 () Bool)

(declare-fun e!3081470 () Bool)

(declare-fun e!3081466 () Bool)

(assert (=> b!4932079 (= e!3081470 e!3081466)))

(declare-fun res!2104812 () Bool)

(assert (=> b!4932079 (=> res!2104812 e!3081466)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13405 0))(
  ( (ElementMatch!13405 (c!840528 C!27040)) (Concat!21978 (regOne!27322 Regex!13405) (regTwo!27322 Regex!13405)) (EmptyExpr!13405) (Star!13405 (reg!13734 Regex!13405)) (EmptyLang!13405) (Union!13405 (regOne!27323 Regex!13405) (regTwo!27323 Regex!13405)) )
))
(declare-datatypes ((List!56899 0))(
  ( (Nil!56775) (Cons!56775 (h!63223 Regex!13405) (t!367379 List!56899)) )
))
(declare-datatypes ((Context!6094 0))(
  ( (Context!6095 (exprs!3547 List!56899)) )
))
(declare-fun z!3568 () (InoxSet Context!6094))

(declare-fun lostCauseZipper!723 ((InoxSet Context!6094)) Bool)

(assert (=> b!4932079 (= res!2104812 (lostCauseZipper!723 z!3568))))

(declare-fun testedSuffix!70 () List!56898)

(declare-fun lt!2030558 () List!56898)

(assert (=> b!4932079 (and (= testedSuffix!70 lt!2030558) (= lt!2030558 testedSuffix!70))))

(declare-fun testedP!110 () List!56898)

(declare-fun lt!2030560 () List!56898)

(declare-datatypes ((Unit!147411 0))(
  ( (Unit!147412) )
))
(declare-fun lt!2030562 () Unit!147411)

(declare-fun lemmaSamePrefixThenSameSuffix!2401 (List!56898 List!56898 List!56898 List!56898 List!56898) Unit!147411)

(assert (=> b!4932079 (= lt!2030562 (lemmaSamePrefixThenSameSuffix!2401 testedP!110 testedSuffix!70 testedP!110 lt!2030558 lt!2030560))))

(declare-fun getSuffix!2987 (List!56898 List!56898) List!56898)

(assert (=> b!4932079 (= lt!2030558 (getSuffix!2987 lt!2030560 testedP!110))))

(declare-fun setIsEmpty!27680 () Bool)

(declare-fun setRes!27680 () Bool)

(assert (=> setIsEmpty!27680 setRes!27680))

(declare-fun b!4932080 () Bool)

(declare-fun e!3081472 () Bool)

(assert (=> b!4932080 (= e!3081472 (not e!3081470))))

(declare-fun res!2104814 () Bool)

(assert (=> b!4932080 (=> res!2104814 e!3081470)))

(declare-fun isPrefix!5003 (List!56898 List!56898) Bool)

(assert (=> b!4932080 (= res!2104814 (not (isPrefix!5003 testedP!110 lt!2030560)))))

(declare-fun lt!2030557 () List!56898)

(assert (=> b!4932080 (isPrefix!5003 testedP!110 lt!2030557)))

(declare-fun lt!2030559 () Unit!147411)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3227 (List!56898 List!56898) Unit!147411)

(assert (=> b!4932080 (= lt!2030559 (lemmaConcatTwoListThenFirstIsPrefix!3227 testedP!110 testedSuffix!70))))

(declare-fun b!4932081 () Bool)

(declare-fun e!3081467 () Bool)

(declare-fun totalInput!685 () BalanceConc!29258)

(declare-fun tp!1384649 () Bool)

(declare-fun inv!73704 (Conc!14914) Bool)

(assert (=> b!4932081 (= e!3081467 (and (inv!73704 (c!840527 totalInput!685)) tp!1384649))))

(declare-fun b!4932082 () Bool)

(assert (=> b!4932082 (= e!3081466 e!3081469)))

(declare-fun res!2104816 () Bool)

(assert (=> b!4932082 (=> res!2104816 e!3081469)))

(declare-fun lt!2030553 () List!56898)

(declare-fun lt!2030555 () List!56898)

(declare-fun ++!12370 (List!56898 List!56898) List!56898)

(assert (=> b!4932082 (= res!2104816 (not (= (++!12370 lt!2030555 lt!2030553) lt!2030560)))))

(declare-fun list!18016 (BalanceConc!29258) List!56898)

(assert (=> b!4932082 (= lt!2030553 (list!18016 (_2!33926 lt!2030561)))))

(assert (=> b!4932082 (= lt!2030555 (list!18016 (_1!33926 lt!2030561)))))

(declare-fun splitAt!297 (BalanceConc!29258 Int) tuple2!61246)

(assert (=> b!4932082 (= lt!2030561 (splitAt!297 totalInput!685 testedPSize!70))))

(declare-fun res!2104810 () Bool)

(assert (=> start!518100 (=> (not res!2104810) (not e!3081472))))

(assert (=> start!518100 (= res!2104810 (= lt!2030557 lt!2030560))))

(assert (=> start!518100 (= lt!2030560 (list!18016 totalInput!685))))

(assert (=> start!518100 (= lt!2030557 (++!12370 testedP!110 testedSuffix!70))))

(assert (=> start!518100 e!3081472))

(declare-fun e!3081465 () Bool)

(assert (=> start!518100 e!3081465))

(declare-fun condSetEmpty!27680 () Bool)

(assert (=> start!518100 (= condSetEmpty!27680 (= z!3568 ((as const (Array Context!6094 Bool)) false)))))

(assert (=> start!518100 setRes!27680))

(assert (=> start!518100 true))

(declare-fun inv!73705 (BalanceConc!29258) Bool)

(assert (=> start!518100 (and (inv!73705 totalInput!685) e!3081467)))

(declare-fun e!3081468 () Bool)

(assert (=> start!518100 e!3081468))

(declare-fun b!4932083 () Bool)

(declare-fun e!3081471 () Bool)

(declare-fun tp!1384650 () Bool)

(assert (=> b!4932083 (= e!3081471 tp!1384650)))

(declare-fun b!4932084 () Bool)

(declare-fun tp_is_empty!35987 () Bool)

(declare-fun tp!1384653 () Bool)

(assert (=> b!4932084 (= e!3081468 (and tp_is_empty!35987 tp!1384653))))

(declare-fun b!4932085 () Bool)

(declare-fun res!2104815 () Bool)

(assert (=> b!4932085 (=> (not res!2104815) (not e!3081472))))

(declare-fun size!37585 (List!56898) Int)

(assert (=> b!4932085 (= res!2104815 (= testedPSize!70 (size!37585 testedP!110)))))

(declare-fun setElem!27680 () Context!6094)

(declare-fun setNonEmpty!27680 () Bool)

(declare-fun tp!1384651 () Bool)

(declare-fun inv!73706 (Context!6094) Bool)

(assert (=> setNonEmpty!27680 (= setRes!27680 (and tp!1384651 (inv!73706 setElem!27680) e!3081471))))

(declare-fun setRest!27680 () (InoxSet Context!6094))

(assert (=> setNonEmpty!27680 (= z!3568 ((_ map or) (store ((as const (Array Context!6094 Bool)) false) setElem!27680 true) setRest!27680))))

(declare-fun b!4932086 () Bool)

(declare-fun tp!1384652 () Bool)

(assert (=> b!4932086 (= e!3081465 (and tp_is_empty!35987 tp!1384652))))

(declare-fun b!4932087 () Bool)

(declare-fun res!2104811 () Bool)

(assert (=> b!4932087 (=> (not res!2104811) (not e!3081472))))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4932087 (= res!2104811 (= totalInputSize!132 (size!37584 totalInput!685)))))

(declare-fun b!4932088 () Bool)

(assert (=> b!4932088 (= e!3081469 true)))

(declare-fun lt!2030556 () C!27040)

(declare-fun apply!13685 (BalanceConc!29258 Int) C!27040)

(assert (=> b!4932088 (= lt!2030556 (apply!13685 totalInput!685 testedPSize!70))))

(declare-fun head!10542 (List!56898) C!27040)

(declare-fun drop!2236 (List!56898 Int) List!56898)

(declare-fun apply!13686 (List!56898 Int) C!27040)

(assert (=> b!4932088 (= (head!10542 (drop!2236 lt!2030560 testedPSize!70)) (apply!13686 lt!2030560 testedPSize!70))))

(declare-fun lt!2030554 () Unit!147411)

(declare-fun lemmaDropApply!1294 (List!56898 Int) Unit!147411)

(assert (=> b!4932088 (= lt!2030554 (lemmaDropApply!1294 lt!2030560 testedPSize!70))))

(assert (=> b!4932088 (not (or (not (= lt!2030555 testedP!110)) (not (= lt!2030553 testedSuffix!70))))))

(declare-fun lt!2030563 () Unit!147411)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!671 (List!56898 List!56898 List!56898 List!56898) Unit!147411)

(assert (=> b!4932088 (= lt!2030563 (lemmaConcatSameAndSameSizesThenSameLists!671 lt!2030555 lt!2030553 testedP!110 testedSuffix!70))))

(declare-fun b!4932089 () Bool)

(declare-fun res!2104809 () Bool)

(assert (=> b!4932089 (=> res!2104809 e!3081466)))

(assert (=> b!4932089 (= res!2104809 (= testedPSize!70 totalInputSize!132))))

(assert (= (and start!518100 res!2104810) b!4932085))

(assert (= (and b!4932085 res!2104815) b!4932087))

(assert (= (and b!4932087 res!2104811) b!4932080))

(assert (= (and b!4932080 (not res!2104814)) b!4932079))

(assert (= (and b!4932079 (not res!2104812)) b!4932089))

(assert (= (and b!4932089 (not res!2104809)) b!4932082))

(assert (= (and b!4932082 (not res!2104816)) b!4932078))

(assert (= (and b!4932078 (not res!2104813)) b!4932088))

(get-info :version)

(assert (= (and start!518100 ((_ is Cons!56774) testedP!110)) b!4932086))

(assert (= (and start!518100 condSetEmpty!27680) setIsEmpty!27680))

(assert (= (and start!518100 (not condSetEmpty!27680)) setNonEmpty!27680))

(assert (= setNonEmpty!27680 b!4932083))

(assert (= start!518100 b!4932081))

(assert (= (and start!518100 ((_ is Cons!56774) testedSuffix!70)) b!4932084))

(declare-fun m!5952184 () Bool)

(assert (=> b!4932082 m!5952184))

(declare-fun m!5952186 () Bool)

(assert (=> b!4932082 m!5952186))

(declare-fun m!5952188 () Bool)

(assert (=> b!4932082 m!5952188))

(declare-fun m!5952190 () Bool)

(assert (=> b!4932082 m!5952190))

(declare-fun m!5952192 () Bool)

(assert (=> b!4932078 m!5952192))

(declare-fun m!5952194 () Bool)

(assert (=> b!4932081 m!5952194))

(declare-fun m!5952196 () Bool)

(assert (=> b!4932085 m!5952196))

(declare-fun m!5952198 () Bool)

(assert (=> b!4932088 m!5952198))

(declare-fun m!5952200 () Bool)

(assert (=> b!4932088 m!5952200))

(declare-fun m!5952202 () Bool)

(assert (=> b!4932088 m!5952202))

(declare-fun m!5952204 () Bool)

(assert (=> b!4932088 m!5952204))

(assert (=> b!4932088 m!5952198))

(declare-fun m!5952206 () Bool)

(assert (=> b!4932088 m!5952206))

(declare-fun m!5952208 () Bool)

(assert (=> b!4932088 m!5952208))

(declare-fun m!5952210 () Bool)

(assert (=> b!4932087 m!5952210))

(declare-fun m!5952212 () Bool)

(assert (=> b!4932079 m!5952212))

(declare-fun m!5952214 () Bool)

(assert (=> b!4932079 m!5952214))

(declare-fun m!5952216 () Bool)

(assert (=> b!4932079 m!5952216))

(declare-fun m!5952218 () Bool)

(assert (=> b!4932080 m!5952218))

(declare-fun m!5952220 () Bool)

(assert (=> b!4932080 m!5952220))

(declare-fun m!5952222 () Bool)

(assert (=> b!4932080 m!5952222))

(declare-fun m!5952224 () Bool)

(assert (=> start!518100 m!5952224))

(declare-fun m!5952226 () Bool)

(assert (=> start!518100 m!5952226))

(declare-fun m!5952228 () Bool)

(assert (=> start!518100 m!5952228))

(declare-fun m!5952230 () Bool)

(assert (=> setNonEmpty!27680 m!5952230))

(check-sat (not b!4932086) (not b!4932088) (not b!4932081) (not start!518100) (not b!4932080) (not b!4932087) (not b!4932078) (not b!4932085) (not b!4932083) (not setNonEmpty!27680) tp_is_empty!35987 (not b!4932082) (not b!4932079) (not b!4932084))
(check-sat)
