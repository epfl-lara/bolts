; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214142 () Bool)

(assert start!214142)

(declare-fun b!2203488 () Bool)

(declare-fun res!947166 () Bool)

(declare-fun e!1407809 () Bool)

(assert (=> b!2203488 (=> (not res!947166) (not e!1407809))))

(declare-datatypes ((C!12644 0))(
  ( (C!12645 (val!7308 Int)) )
))
(declare-datatypes ((List!25796 0))(
  ( (Nil!25712) (Cons!25712 (h!31113 C!12644) (t!198430 List!25796)) )
))
(declare-datatypes ((IArray!16775 0))(
  ( (IArray!16776 (innerList!8445 List!25796)) )
))
(declare-datatypes ((Conc!8385 0))(
  ( (Node!8385 (left!19752 Conc!8385) (right!20082 Conc!8385) (csize!17000 Int) (cheight!8596 Int)) (Leaf!12277 (xs!11327 IArray!16775) (csize!17001 Int)) (Empty!8385) )
))
(declare-datatypes ((BalanceConc!16532 0))(
  ( (BalanceConc!16533 (c!351628 Conc!8385)) )
))
(declare-fun totalInput!891 () BalanceConc!16532)

(declare-fun isEmpty!14690 (BalanceConc!16532) Bool)

(assert (=> b!2203488 (= res!947166 (not (isEmpty!14690 totalInput!891)))))

(declare-fun b!2203489 () Bool)

(declare-fun e!1407808 () Bool)

(declare-fun lt!823853 () Bool)

(declare-fun lt!823851 () Bool)

(assert (=> b!2203489 (= e!1407808 (and (not lt!823853) (not lt!823851)))))

(declare-datatypes ((Unit!38781 0))(
  ( (Unit!38782) )
))
(declare-fun lt!823854 () Unit!38781)

(declare-fun e!1407812 () Unit!38781)

(assert (=> b!2203489 (= lt!823854 e!1407812)))

(declare-fun c!351627 () Bool)

(assert (=> b!2203489 (= c!351627 lt!823853)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6249 0))(
  ( (ElementMatch!6249 (c!351629 C!12644)) (Concat!10551 (regOne!13010 Regex!6249) (regTwo!13010 Regex!6249)) (EmptyExpr!6249) (Star!6249 (reg!6578 Regex!6249)) (EmptyLang!6249) (Union!6249 (regOne!13011 Regex!6249) (regTwo!13011 Regex!6249)) )
))
(declare-datatypes ((List!25797 0))(
  ( (Nil!25713) (Cons!25713 (h!31114 Regex!6249) (t!198431 List!25797)) )
))
(declare-datatypes ((Context!3638 0))(
  ( (Context!3639 (exprs!2319 List!25797)) )
))
(declare-fun z!3888 () (InoxSet Context!3638))

(declare-fun lostCauseZipper!349 ((InoxSet Context!3638)) Bool)

(assert (=> b!2203489 (= lt!823853 (lostCauseZipper!349 z!3888))))

(declare-fun b!2203490 () Bool)

(declare-fun e!1407813 () Bool)

(declare-fun tp!685468 () Bool)

(declare-fun inv!34619 (Conc!8385) Bool)

(assert (=> b!2203490 (= e!1407813 (and (inv!34619 (c!351628 totalInput!891)) tp!685468))))

(declare-fun b!2203492 () Bool)

(declare-fun res!947164 () Bool)

(assert (=> b!2203492 (=> (not res!947164) (not e!1407809))))

(declare-fun knownSize!10 () Int)

(assert (=> b!2203492 (= res!947164 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2203493 () Bool)

(declare-fun e!1407810 () Bool)

(declare-fun tp!685469 () Bool)

(assert (=> b!2203493 (= e!1407810 tp!685469)))

(declare-fun b!2203494 () Bool)

(declare-fun res!947169 () Bool)

(assert (=> b!2203494 (=> (not res!947169) (not e!1407809))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2203494 (= res!947169 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2203495 () Bool)

(assert (=> b!2203495 (= e!1407809 e!1407808)))

(declare-fun res!947165 () Bool)

(assert (=> b!2203495 (=> (not res!947165) (not e!1407808))))

(declare-fun e!1407811 () Bool)

(assert (=> b!2203495 (= res!947165 e!1407811)))

(declare-fun res!947171 () Bool)

(assert (=> b!2203495 (=> res!947171 e!1407811)))

(assert (=> b!2203495 (= res!947171 lt!823851)))

(declare-fun lt!823850 () Int)

(assert (=> b!2203495 (= lt!823851 (= from!1082 lt!823850))))

(declare-fun setNonEmpty!19096 () Bool)

(declare-fun tp!685470 () Bool)

(declare-fun setElem!19096 () Context!3638)

(declare-fun setRes!19096 () Bool)

(declare-fun inv!34620 (Context!3638) Bool)

(assert (=> setNonEmpty!19096 (= setRes!19096 (and tp!685470 (inv!34620 setElem!19096) e!1407810))))

(declare-fun setRest!19096 () (InoxSet Context!3638))

(assert (=> setNonEmpty!19096 (= z!3888 ((_ map or) (store ((as const (Array Context!3638 Bool)) false) setElem!19096 true) setRest!19096))))

(declare-fun b!2203496 () Bool)

(declare-fun Unit!38783 () Unit!38781)

(assert (=> b!2203496 (= e!1407812 Unit!38783)))

(declare-fun b!2203491 () Bool)

(declare-fun e!1407806 () Bool)

(assert (=> b!2203491 (= e!1407806 e!1407809)))

(declare-fun res!947168 () Bool)

(assert (=> b!2203491 (=> (not res!947168) (not e!1407809))))

(declare-fun lt!823852 () List!25796)

(declare-fun matchZipper!335 ((InoxSet Context!3638) List!25796) Bool)

(assert (=> b!2203491 (= res!947168 (matchZipper!335 z!3888 lt!823852))))

(declare-fun take!427 (List!25796 Int) List!25796)

(declare-fun drop!1437 (List!25796 Int) List!25796)

(declare-fun list!9923 (BalanceConc!16532) List!25796)

(assert (=> b!2203491 (= lt!823852 (take!427 (drop!1437 (list!9923 totalInput!891) from!1082) knownSize!10))))

(declare-fun res!947167 () Bool)

(declare-fun e!1407807 () Bool)

(assert (=> start!214142 (=> (not res!947167) (not e!1407807))))

(assert (=> start!214142 (= res!947167 (>= from!1082 0))))

(assert (=> start!214142 e!1407807))

(assert (=> start!214142 true))

(declare-fun inv!34621 (BalanceConc!16532) Bool)

(assert (=> start!214142 (and (inv!34621 totalInput!891) e!1407813)))

(declare-fun condSetEmpty!19096 () Bool)

(assert (=> start!214142 (= condSetEmpty!19096 (= z!3888 ((as const (Array Context!3638 Bool)) false)))))

(assert (=> start!214142 setRes!19096))

(declare-fun b!2203497 () Bool)

(declare-fun e!1407805 () Bool)

(assert (=> b!2203497 (= e!1407805 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2203498 () Bool)

(declare-fun Unit!38784 () Unit!38781)

(assert (=> b!2203498 (= e!1407812 Unit!38784)))

(declare-fun lt!823849 () Unit!38781)

(declare-fun lemmaLostCauseCannotMatch!29 ((InoxSet Context!3638) List!25796) Unit!38781)

(assert (=> b!2203498 (= lt!823849 (lemmaLostCauseCannotMatch!29 z!3888 lt!823852))))

(assert (=> b!2203498 false))

(declare-fun b!2203499 () Bool)

(assert (=> b!2203499 (= e!1407811 (lostCauseZipper!349 z!3888))))

(declare-fun b!2203500 () Bool)

(assert (=> b!2203500 (= e!1407807 e!1407806)))

(declare-fun res!947170 () Bool)

(assert (=> b!2203500 (=> (not res!947170) (not e!1407806))))

(assert (=> b!2203500 (= res!947170 (and (<= from!1082 lt!823850) (>= knownSize!10 0) (<= knownSize!10 (- lt!823850 from!1082))))))

(declare-fun size!20040 (BalanceConc!16532) Int)

(assert (=> b!2203500 (= lt!823850 (size!20040 totalInput!891))))

(declare-fun setIsEmpty!19096 () Bool)

(assert (=> setIsEmpty!19096 setRes!19096))

(declare-fun b!2203501 () Bool)

(declare-fun res!947163 () Bool)

(assert (=> b!2203501 (=> (not res!947163) (not e!1407809))))

(assert (=> b!2203501 (= res!947163 e!1407805)))

(declare-fun res!947162 () Bool)

(assert (=> b!2203501 (=> res!947162 e!1407805)))

(declare-fun nullableZipper!529 ((InoxSet Context!3638)) Bool)

(assert (=> b!2203501 (= res!947162 (not (nullableZipper!529 z!3888)))))

(assert (= (and start!214142 res!947167) b!2203500))

(assert (= (and b!2203500 res!947170) b!2203491))

(assert (= (and b!2203491 res!947168) b!2203494))

(assert (= (and b!2203494 res!947169) b!2203501))

(assert (= (and b!2203501 (not res!947162)) b!2203497))

(assert (= (and b!2203501 res!947163) b!2203488))

(assert (= (and b!2203488 res!947166) b!2203492))

(assert (= (and b!2203492 res!947164) b!2203495))

(assert (= (and b!2203495 (not res!947171)) b!2203499))

(assert (= (and b!2203495 res!947165) b!2203489))

(assert (= (and b!2203489 c!351627) b!2203498))

(assert (= (and b!2203489 (not c!351627)) b!2203496))

(assert (= start!214142 b!2203490))

(assert (= (and start!214142 condSetEmpty!19096) setIsEmpty!19096))

(assert (= (and start!214142 (not condSetEmpty!19096)) setNonEmpty!19096))

(assert (= setNonEmpty!19096 b!2203493))

(declare-fun m!2645451 () Bool)

(assert (=> b!2203501 m!2645451))

(declare-fun m!2645453 () Bool)

(assert (=> b!2203489 m!2645453))

(declare-fun m!2645455 () Bool)

(assert (=> b!2203488 m!2645455))

(declare-fun m!2645457 () Bool)

(assert (=> b!2203491 m!2645457))

(declare-fun m!2645459 () Bool)

(assert (=> b!2203491 m!2645459))

(assert (=> b!2203491 m!2645459))

(declare-fun m!2645461 () Bool)

(assert (=> b!2203491 m!2645461))

(assert (=> b!2203491 m!2645461))

(declare-fun m!2645463 () Bool)

(assert (=> b!2203491 m!2645463))

(declare-fun m!2645465 () Bool)

(assert (=> b!2203498 m!2645465))

(declare-fun m!2645467 () Bool)

(assert (=> start!214142 m!2645467))

(declare-fun m!2645469 () Bool)

(assert (=> setNonEmpty!19096 m!2645469))

(declare-fun m!2645471 () Bool)

(assert (=> b!2203500 m!2645471))

(assert (=> b!2203499 m!2645453))

(declare-fun m!2645473 () Bool)

(assert (=> b!2203490 m!2645473))

(check-sat (not b!2203490) (not b!2203488) (not b!2203498) (not b!2203489) (not start!214142) (not b!2203491) (not setNonEmpty!19096) (not b!2203501) (not b!2203493) (not b!2203499) (not b!2203500))
(check-sat)
