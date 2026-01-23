; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213106 () Bool)

(assert start!213106)

(declare-fun b!2195678 () Bool)

(declare-fun e!1403206 () Bool)

(declare-fun tp!683949 () Bool)

(assert (=> b!2195678 (= e!1403206 tp!683949)))

(declare-fun b!2195679 () Bool)

(declare-fun e!1403205 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2195679 (= e!1403205 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2195680 () Bool)

(declare-fun res!943864 () Bool)

(declare-fun e!1403207 () Bool)

(assert (=> b!2195680 (=> (not res!943864) (not e!1403207))))

(assert (=> b!2195680 (= res!943864 e!1403205)))

(declare-fun res!943865 () Bool)

(assert (=> b!2195680 (=> res!943865 e!1403205)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12480 0))(
  ( (C!12481 (val!7226 Int)) )
))
(declare-datatypes ((Regex!6167 0))(
  ( (ElementMatch!6167 (c!349664 C!12480)) (Concat!10469 (regOne!12846 Regex!6167) (regTwo!12846 Regex!6167)) (EmptyExpr!6167) (Star!6167 (reg!6496 Regex!6167)) (EmptyLang!6167) (Union!6167 (regOne!12847 Regex!6167) (regTwo!12847 Regex!6167)) )
))
(declare-datatypes ((List!25620 0))(
  ( (Nil!25536) (Cons!25536 (h!30937 Regex!6167) (t!198226 List!25620)) )
))
(declare-datatypes ((Context!3474 0))(
  ( (Context!3475 (exprs!2237 List!25620)) )
))
(declare-fun z!3955 () (InoxSet Context!3474))

(declare-fun nullableZipper!447 ((InoxSet Context!3474)) Bool)

(assert (=> b!2195680 (= res!943865 (not (nullableZipper!447 z!3955)))))

(declare-fun b!2195681 () Bool)

(declare-fun e!1403203 () Bool)

(declare-datatypes ((List!25621 0))(
  ( (Nil!25537) (Cons!25537 (h!30938 C!12480) (t!198227 List!25621)) )
))
(declare-datatypes ((IArray!16611 0))(
  ( (IArray!16612 (innerList!8363 List!25621)) )
))
(declare-datatypes ((Conc!8303 0))(
  ( (Node!8303 (left!19605 Conc!8303) (right!19935 Conc!8303) (csize!16836 Int) (cheight!8514 Int)) (Leaf!12154 (xs!11245 IArray!16611) (csize!16837 Int)) (Empty!8303) )
))
(declare-datatypes ((BalanceConc!16368 0))(
  ( (BalanceConc!16369 (c!349665 Conc!8303)) )
))
(declare-fun totalInput!923 () BalanceConc!16368)

(declare-fun tp!683948 () Bool)

(declare-fun inv!34189 (Conc!8303) Bool)

(assert (=> b!2195681 (= e!1403203 (and (inv!34189 (c!349665 totalInput!923)) tp!683948))))

(declare-fun b!2195682 () Bool)

(declare-fun lt!821298 () Int)

(assert (=> b!2195682 (= e!1403207 (< (- lt!821298 from!1114) 0))))

(declare-fun setNonEmpty!18770 () Bool)

(declare-fun tp!683950 () Bool)

(declare-fun setElem!18770 () Context!3474)

(declare-fun setRes!18770 () Bool)

(declare-fun inv!34190 (Context!3474) Bool)

(assert (=> setNonEmpty!18770 (= setRes!18770 (and tp!683950 (inv!34190 setElem!18770) e!1403206))))

(declare-fun setRest!18770 () (InoxSet Context!3474))

(assert (=> setNonEmpty!18770 (= z!3955 ((_ map or) (store ((as const (Array Context!3474 Bool)) false) setElem!18770 true) setRest!18770))))

(declare-fun b!2195683 () Bool)

(declare-fun e!1403204 () Bool)

(assert (=> b!2195683 (= e!1403204 e!1403207)))

(declare-fun res!943863 () Bool)

(assert (=> b!2195683 (=> (not res!943863) (not e!1403207))))

(assert (=> b!2195683 (= res!943863 (and (<= from!1114 lt!821298) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19913 (BalanceConc!16368) Int)

(assert (=> b!2195683 (= lt!821298 (size!19913 totalInput!923))))

(declare-fun setIsEmpty!18770 () Bool)

(assert (=> setIsEmpty!18770 setRes!18770))

(declare-fun res!943862 () Bool)

(assert (=> start!213106 (=> (not res!943862) (not e!1403204))))

(assert (=> start!213106 (= res!943862 (>= from!1114 0))))

(assert (=> start!213106 e!1403204))

(assert (=> start!213106 true))

(declare-fun inv!34191 (BalanceConc!16368) Bool)

(assert (=> start!213106 (and (inv!34191 totalInput!923) e!1403203)))

(declare-fun condSetEmpty!18770 () Bool)

(assert (=> start!213106 (= condSetEmpty!18770 (= z!3955 ((as const (Array Context!3474 Bool)) false)))))

(assert (=> start!213106 setRes!18770))

(assert (= (and start!213106 res!943862) b!2195683))

(assert (= (and b!2195683 res!943863) b!2195680))

(assert (= (and b!2195680 (not res!943865)) b!2195679))

(assert (= (and b!2195680 res!943864) b!2195682))

(assert (= start!213106 b!2195681))

(assert (= (and start!213106 condSetEmpty!18770) setIsEmpty!18770))

(assert (= (and start!213106 (not condSetEmpty!18770)) setNonEmpty!18770))

(assert (= setNonEmpty!18770 b!2195678))

(declare-fun m!2638273 () Bool)

(assert (=> start!213106 m!2638273))

(declare-fun m!2638275 () Bool)

(assert (=> b!2195681 m!2638275))

(declare-fun m!2638277 () Bool)

(assert (=> b!2195680 m!2638277))

(declare-fun m!2638279 () Bool)

(assert (=> setNonEmpty!18770 m!2638279))

(declare-fun m!2638281 () Bool)

(assert (=> b!2195683 m!2638281))

(check-sat (not setNonEmpty!18770) (not b!2195683) (not b!2195681) (not b!2195680) (not b!2195678) (not start!213106))
(check-sat)
