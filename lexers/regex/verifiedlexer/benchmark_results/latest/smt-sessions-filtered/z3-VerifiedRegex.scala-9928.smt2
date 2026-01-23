; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520576 () Bool)

(assert start!520576)

(declare-fun res!2110192 () Bool)

(declare-fun e!3089835 () Bool)

(assert (=> start!520576 (=> (not res!2110192) (not e!3089835))))

(declare-datatypes ((C!27196 0))(
  ( (C!27197 (val!22932 Int)) )
))
(declare-datatypes ((List!57079 0))(
  ( (Nil!56955) (Cons!56955 (h!63403 C!27196) (t!367615 List!57079)) )
))
(declare-fun lt!2039070 () List!57079)

(declare-fun lt!2039067 () List!57079)

(assert (=> start!520576 (= res!2110192 (= lt!2039070 lt!2039067))))

(declare-datatypes ((IArray!30045 0))(
  ( (IArray!30046 (innerList!15080 List!57079)) )
))
(declare-datatypes ((Conc!14992 0))(
  ( (Node!14992 (left!41554 Conc!14992) (right!41884 Conc!14992) (csize!30214 Int) (cheight!15203 Int)) (Leaf!24921 (xs!18318 IArray!30045) (csize!30215 Int)) (Empty!14992) )
))
(declare-datatypes ((BalanceConc!29414 0))(
  ( (BalanceConc!29415 (c!843852 Conc!14992)) )
))
(declare-fun totalInput!685 () BalanceConc!29414)

(declare-fun list!18147 (BalanceConc!29414) List!57079)

(assert (=> start!520576 (= lt!2039067 (list!18147 totalInput!685))))

(declare-fun testedP!110 () List!57079)

(declare-fun testedSuffix!70 () List!57079)

(declare-fun ++!12458 (List!57079 List!57079) List!57079)

(assert (=> start!520576 (= lt!2039070 (++!12458 testedP!110 testedSuffix!70))))

(assert (=> start!520576 e!3089835))

(declare-fun e!3089836 () Bool)

(assert (=> start!520576 e!3089836))

(declare-fun condSetEmpty!28010 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13473 0))(
  ( (ElementMatch!13473 (c!843853 C!27196)) (Concat!22046 (regOne!27458 Regex!13473) (regTwo!27458 Regex!13473)) (EmptyExpr!13473) (Star!13473 (reg!13802 Regex!13473)) (EmptyLang!13473) (Union!13473 (regOne!27459 Regex!13473) (regTwo!27459 Regex!13473)) )
))
(declare-datatypes ((List!57080 0))(
  ( (Nil!56956) (Cons!56956 (h!63404 Regex!13473) (t!367616 List!57080)) )
))
(declare-datatypes ((Context!6230 0))(
  ( (Context!6231 (exprs!3615 List!57080)) )
))
(declare-fun z!3568 () (InoxSet Context!6230))

(assert (=> start!520576 (= condSetEmpty!28010 (= z!3568 ((as const (Array Context!6230 Bool)) false)))))

(declare-fun setRes!28010 () Bool)

(assert (=> start!520576 setRes!28010))

(assert (=> start!520576 true))

(declare-fun e!3089839 () Bool)

(declare-fun inv!74165 (BalanceConc!29414) Bool)

(assert (=> start!520576 (and (inv!74165 totalInput!685) e!3089839)))

(declare-fun e!3089841 () Bool)

(assert (=> start!520576 e!3089841))

(declare-fun b!4945380 () Bool)

(declare-fun tp!1387211 () Bool)

(declare-fun inv!74166 (Conc!14992) Bool)

(assert (=> b!4945380 (= e!3089839 (and (inv!74166 (c!843852 totalInput!685)) tp!1387211))))

(declare-fun b!4945381 () Bool)

(declare-fun e!3089840 () Bool)

(declare-fun tp!1387214 () Bool)

(assert (=> b!4945381 (= e!3089840 tp!1387214)))

(declare-fun b!4945382 () Bool)

(declare-fun e!3089838 () Bool)

(declare-fun lt!2039069 () List!57079)

(assert (=> b!4945382 (= e!3089838 (= lt!2039069 lt!2039070))))

(declare-fun b!4945383 () Bool)

(declare-fun tp_is_empty!36143 () Bool)

(declare-fun tp!1387215 () Bool)

(assert (=> b!4945383 (= e!3089841 (and tp_is_empty!36143 tp!1387215))))

(declare-fun b!4945384 () Bool)

(declare-fun res!2110195 () Bool)

(assert (=> b!4945384 (=> res!2110195 e!3089838)))

(declare-datatypes ((tuple2!61488 0))(
  ( (tuple2!61489 (_1!34047 BalanceConc!29414) (_2!34047 BalanceConc!29414)) )
))
(declare-fun lt!2039068 () tuple2!61488)

(declare-fun testedPSize!70 () Int)

(declare-fun size!37783 (BalanceConc!29414) Int)

(assert (=> b!4945384 (= res!2110195 (not (= (size!37783 (_1!34047 lt!2039068)) testedPSize!70)))))

(declare-fun setIsEmpty!28010 () Bool)

(assert (=> setIsEmpty!28010 setRes!28010))

(declare-fun b!4945385 () Bool)

(declare-fun e!3089834 () Bool)

(assert (=> b!4945385 (= e!3089834 e!3089838)))

(declare-fun res!2110194 () Bool)

(assert (=> b!4945385 (=> res!2110194 e!3089838)))

(assert (=> b!4945385 (= res!2110194 (not (= lt!2039069 lt!2039067)))))

(assert (=> b!4945385 (= lt!2039069 (++!12458 (list!18147 (_1!34047 lt!2039068)) (list!18147 (_2!34047 lt!2039068))))))

(declare-fun splitAt!382 (BalanceConc!29414 Int) tuple2!61488)

(assert (=> b!4945385 (= lt!2039068 (splitAt!382 totalInput!685 testedPSize!70))))

(declare-fun b!4945386 () Bool)

(declare-fun res!2110189 () Bool)

(assert (=> b!4945386 (=> (not res!2110189) (not e!3089835))))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4945386 (= res!2110189 (= totalInputSize!132 (size!37783 totalInput!685)))))

(declare-fun b!4945387 () Bool)

(declare-fun tp!1387213 () Bool)

(assert (=> b!4945387 (= e!3089836 (and tp_is_empty!36143 tp!1387213))))

(declare-fun b!4945388 () Bool)

(declare-fun res!2110196 () Bool)

(assert (=> b!4945388 (=> (not res!2110196) (not e!3089835))))

(declare-fun size!37784 (List!57079) Int)

(assert (=> b!4945388 (= res!2110196 (= testedPSize!70 (size!37784 testedP!110)))))

(declare-fun b!4945389 () Bool)

(declare-fun e!3089837 () Bool)

(assert (=> b!4945389 (= e!3089835 (not e!3089837))))

(declare-fun res!2110190 () Bool)

(assert (=> b!4945389 (=> res!2110190 e!3089837)))

(declare-fun isPrefix!5079 (List!57079 List!57079) Bool)

(assert (=> b!4945389 (= res!2110190 (not (isPrefix!5079 testedP!110 lt!2039067)))))

(assert (=> b!4945389 (isPrefix!5079 testedP!110 lt!2039070)))

(declare-datatypes ((Unit!147740 0))(
  ( (Unit!147741) )
))
(declare-fun lt!2039065 () Unit!147740)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3303 (List!57079 List!57079) Unit!147740)

(assert (=> b!4945389 (= lt!2039065 (lemmaConcatTwoListThenFirstIsPrefix!3303 testedP!110 testedSuffix!70))))

(declare-fun setNonEmpty!28010 () Bool)

(declare-fun tp!1387212 () Bool)

(declare-fun setElem!28010 () Context!6230)

(declare-fun inv!74167 (Context!6230) Bool)

(assert (=> setNonEmpty!28010 (= setRes!28010 (and tp!1387212 (inv!74167 setElem!28010) e!3089840))))

(declare-fun setRest!28010 () (InoxSet Context!6230))

(assert (=> setNonEmpty!28010 (= z!3568 ((_ map or) (store ((as const (Array Context!6230 Bool)) false) setElem!28010 true) setRest!28010))))

(declare-fun b!4945390 () Bool)

(declare-fun res!2110191 () Bool)

(assert (=> b!4945390 (=> res!2110191 e!3089834)))

(assert (=> b!4945390 (= res!2110191 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4945391 () Bool)

(assert (=> b!4945391 (= e!3089837 e!3089834)))

(declare-fun res!2110193 () Bool)

(assert (=> b!4945391 (=> res!2110193 e!3089834)))

(declare-fun lostCauseZipper!791 ((InoxSet Context!6230)) Bool)

(assert (=> b!4945391 (= res!2110193 (lostCauseZipper!791 z!3568))))

(declare-fun lt!2039066 () List!57079)

(assert (=> b!4945391 (and (= testedSuffix!70 lt!2039066) (= lt!2039066 testedSuffix!70))))

(declare-fun lt!2039071 () Unit!147740)

(declare-fun lemmaSamePrefixThenSameSuffix!2471 (List!57079 List!57079 List!57079 List!57079 List!57079) Unit!147740)

(assert (=> b!4945391 (= lt!2039071 (lemmaSamePrefixThenSameSuffix!2471 testedP!110 testedSuffix!70 testedP!110 lt!2039066 lt!2039067))))

(declare-fun getSuffix!3061 (List!57079 List!57079) List!57079)

(assert (=> b!4945391 (= lt!2039066 (getSuffix!3061 lt!2039067 testedP!110))))

(assert (= (and start!520576 res!2110192) b!4945388))

(assert (= (and b!4945388 res!2110196) b!4945386))

(assert (= (and b!4945386 res!2110189) b!4945389))

(assert (= (and b!4945389 (not res!2110190)) b!4945391))

(assert (= (and b!4945391 (not res!2110193)) b!4945390))

(assert (= (and b!4945390 (not res!2110191)) b!4945385))

(assert (= (and b!4945385 (not res!2110194)) b!4945384))

(assert (= (and b!4945384 (not res!2110195)) b!4945382))

(get-info :version)

(assert (= (and start!520576 ((_ is Cons!56955) testedP!110)) b!4945387))

(assert (= (and start!520576 condSetEmpty!28010) setIsEmpty!28010))

(assert (= (and start!520576 (not condSetEmpty!28010)) setNonEmpty!28010))

(assert (= setNonEmpty!28010 b!4945381))

(assert (= start!520576 b!4945380))

(assert (= (and start!520576 ((_ is Cons!56955) testedSuffix!70)) b!4945383))

(declare-fun m!5968392 () Bool)

(assert (=> b!4945386 m!5968392))

(declare-fun m!5968394 () Bool)

(assert (=> b!4945384 m!5968394))

(declare-fun m!5968396 () Bool)

(assert (=> b!4945388 m!5968396))

(declare-fun m!5968398 () Bool)

(assert (=> b!4945391 m!5968398))

(declare-fun m!5968400 () Bool)

(assert (=> b!4945391 m!5968400))

(declare-fun m!5968402 () Bool)

(assert (=> b!4945391 m!5968402))

(declare-fun m!5968404 () Bool)

(assert (=> setNonEmpty!28010 m!5968404))

(declare-fun m!5968406 () Bool)

(assert (=> b!4945380 m!5968406))

(declare-fun m!5968408 () Bool)

(assert (=> b!4945385 m!5968408))

(declare-fun m!5968410 () Bool)

(assert (=> b!4945385 m!5968410))

(assert (=> b!4945385 m!5968408))

(assert (=> b!4945385 m!5968410))

(declare-fun m!5968412 () Bool)

(assert (=> b!4945385 m!5968412))

(declare-fun m!5968414 () Bool)

(assert (=> b!4945385 m!5968414))

(declare-fun m!5968416 () Bool)

(assert (=> b!4945389 m!5968416))

(declare-fun m!5968418 () Bool)

(assert (=> b!4945389 m!5968418))

(declare-fun m!5968420 () Bool)

(assert (=> b!4945389 m!5968420))

(declare-fun m!5968422 () Bool)

(assert (=> start!520576 m!5968422))

(declare-fun m!5968424 () Bool)

(assert (=> start!520576 m!5968424))

(declare-fun m!5968426 () Bool)

(assert (=> start!520576 m!5968426))

(check-sat (not setNonEmpty!28010) (not b!4945380) (not b!4945389) (not start!520576) (not b!4945384) (not b!4945387) (not b!4945385) (not b!4945388) (not b!4945391) (not b!4945383) (not b!4945381) tp_is_empty!36143 (not b!4945386))
(check-sat)
