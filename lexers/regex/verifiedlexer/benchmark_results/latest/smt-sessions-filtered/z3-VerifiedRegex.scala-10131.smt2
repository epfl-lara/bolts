; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530314 () Bool)

(assert start!530314)

(declare-fun b!5019228 () Bool)

(declare-fun e!3135588 () Bool)

(declare-datatypes ((C!27944 0))(
  ( (C!27945 (val!23338 Int)) )
))
(declare-datatypes ((List!58118 0))(
  ( (Nil!57994) (Cons!57994 (h!64442 C!27944) (t!370494 List!58118)) )
))
(declare-datatypes ((IArray!30793 0))(
  ( (IArray!30794 (innerList!15454 List!58118)) )
))
(declare-datatypes ((Conc!15366 0))(
  ( (Node!15366 (left!42395 Conc!15366) (right!42725 Conc!15366) (csize!30962 Int) (cheight!15577 Int)) (Leaf!25498 (xs!18692 IArray!30793) (csize!30963 Int)) (Empty!15366) )
))
(declare-datatypes ((BalanceConc!30162 0))(
  ( (BalanceConc!30163 (c!857621 Conc!15366)) )
))
(declare-fun totalInput!1125 () BalanceConc!30162)

(declare-fun tp!1407546 () Bool)

(declare-fun inv!76310 (Conc!15366) Bool)

(assert (=> b!5019228 (= e!3135588 (and (inv!76310 (c!857621 totalInput!1125)) tp!1407546))))

(declare-fun b!5019229 () Bool)

(declare-fun e!3135586 () Bool)

(declare-fun e!3135587 () Bool)

(assert (=> b!5019229 (= e!3135586 e!3135587)))

(declare-fun res!2140326 () Bool)

(assert (=> b!5019229 (=> (not res!2140326) (not e!3135587))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13847 0))(
  ( (ElementMatch!13847 (c!857622 C!27944)) (Concat!22640 (regOne!28206 Regex!13847) (regTwo!28206 Regex!13847)) (EmptyExpr!13847) (Star!13847 (reg!14176 Regex!13847)) (EmptyLang!13847) (Union!13847 (regOne!28207 Regex!13847) (regTwo!28207 Regex!13847)) )
))
(declare-datatypes ((List!58119 0))(
  ( (Nil!57995) (Cons!57995 (h!64443 Regex!13847) (t!370495 List!58119)) )
))
(declare-datatypes ((Context!6544 0))(
  ( (Context!6545 (exprs!3772 List!58119)) )
))
(declare-fun z!4710 () (InoxSet Context!6544))

(declare-fun lt!2077289 () List!58118)

(declare-fun matchZipper!615 ((InoxSet Context!6544) List!58118) Bool)

(assert (=> b!5019229 (= res!2140326 (matchZipper!615 z!4710 lt!2077289))))

(declare-fun from!1212 () Int)

(declare-fun knownSize!24 () Int)

(declare-fun take!706 (List!58118 Int) List!58118)

(declare-fun drop!2510 (List!58118 Int) List!58118)

(declare-fun list!18697 (BalanceConc!30162) List!58118)

(assert (=> b!5019229 (= lt!2077289 (take!706 (drop!2510 (list!18697 totalInput!1125) from!1212) knownSize!24))))

(declare-fun b!5019230 () Bool)

(declare-fun res!2140329 () Bool)

(assert (=> b!5019230 (=> (not res!2140329) (not e!3135587))))

(assert (=> b!5019230 (= res!2140329 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun setElem!28624 () Context!6544)

(declare-fun tp!1407547 () Bool)

(declare-fun setRes!28624 () Bool)

(declare-fun e!3135589 () Bool)

(declare-fun setNonEmpty!28624 () Bool)

(declare-fun inv!76311 (Context!6544) Bool)

(assert (=> setNonEmpty!28624 (= setRes!28624 (and tp!1407547 (inv!76311 setElem!28624) e!3135589))))

(declare-fun setRest!28624 () (InoxSet Context!6544))

(assert (=> setNonEmpty!28624 (= z!4710 ((_ map or) (store ((as const (Array Context!6544 Bool)) false) setElem!28624 true) setRest!28624))))

(declare-fun lt!2077288 () Bool)

(declare-fun b!5019231 () Bool)

(declare-fun lt!2077290 () Int)

(assert (=> b!5019231 (= e!3135587 (and (or lt!2077288 (= from!1212 lt!2077290)) (not lt!2077288)))))

(declare-fun lostCauseZipper!861 ((InoxSet Context!6544)) Bool)

(assert (=> b!5019231 (= lt!2077288 (lostCauseZipper!861 z!4710))))

(declare-fun setIsEmpty!28624 () Bool)

(assert (=> setIsEmpty!28624 setRes!28624))

(declare-fun b!5019232 () Bool)

(declare-fun e!3135585 () Bool)

(assert (=> b!5019232 (= e!3135585 e!3135586)))

(declare-fun res!2140325 () Bool)

(assert (=> b!5019232 (=> (not res!2140325) (not e!3135586))))

(assert (=> b!5019232 (= res!2140325 (and (<= from!1212 lt!2077290) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077290 from!1212))))))

(declare-fun size!38580 (BalanceConc!30162) Int)

(assert (=> b!5019232 (= lt!2077290 (size!38580 totalInput!1125))))

(declare-fun res!2140327 () Bool)

(assert (=> start!530314 (=> (not res!2140327) (not e!3135585))))

(assert (=> start!530314 (= res!2140327 (>= from!1212 0))))

(assert (=> start!530314 e!3135585))

(assert (=> start!530314 true))

(declare-fun inv!76312 (BalanceConc!30162) Bool)

(assert (=> start!530314 (and (inv!76312 totalInput!1125) e!3135588)))

(declare-fun condSetEmpty!28624 () Bool)

(assert (=> start!530314 (= condSetEmpty!28624 (= z!4710 ((as const (Array Context!6544 Bool)) false)))))

(assert (=> start!530314 setRes!28624))

(declare-fun b!5019233 () Bool)

(declare-fun tp!1407548 () Bool)

(assert (=> b!5019233 (= e!3135589 tp!1407548)))

(declare-fun b!5019234 () Bool)

(declare-fun res!2140328 () Bool)

(assert (=> b!5019234 (=> (not res!2140328) (not e!3135587))))

(declare-fun size!38581 (List!58118) Int)

(assert (=> b!5019234 (= res!2140328 (= (size!38581 lt!2077289) knownSize!24))))

(assert (= (and start!530314 res!2140327) b!5019232))

(assert (= (and b!5019232 res!2140325) b!5019229))

(assert (= (and b!5019229 res!2140326) b!5019230))

(assert (= (and b!5019230 res!2140329) b!5019234))

(assert (= (and b!5019234 res!2140328) b!5019231))

(assert (= start!530314 b!5019228))

(assert (= (and start!530314 condSetEmpty!28624) setIsEmpty!28624))

(assert (= (and start!530314 (not condSetEmpty!28624)) setNonEmpty!28624))

(assert (= setNonEmpty!28624 b!5019233))

(declare-fun m!6054390 () Bool)

(assert (=> b!5019231 m!6054390))

(declare-fun m!6054392 () Bool)

(assert (=> b!5019228 m!6054392))

(declare-fun m!6054394 () Bool)

(assert (=> b!5019234 m!6054394))

(declare-fun m!6054396 () Bool)

(assert (=> b!5019229 m!6054396))

(declare-fun m!6054398 () Bool)

(assert (=> b!5019229 m!6054398))

(assert (=> b!5019229 m!6054398))

(declare-fun m!6054400 () Bool)

(assert (=> b!5019229 m!6054400))

(assert (=> b!5019229 m!6054400))

(declare-fun m!6054402 () Bool)

(assert (=> b!5019229 m!6054402))

(declare-fun m!6054404 () Bool)

(assert (=> b!5019232 m!6054404))

(declare-fun m!6054406 () Bool)

(assert (=> setNonEmpty!28624 m!6054406))

(declare-fun m!6054408 () Bool)

(assert (=> start!530314 m!6054408))

(check-sat (not b!5019231) (not b!5019232) (not b!5019233) (not b!5019234) (not b!5019228) (not setNonEmpty!28624) (not start!530314) (not b!5019229))
(check-sat)
