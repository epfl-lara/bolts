; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213118 () Bool)

(assert start!213118)

(declare-fun b!2195861 () Bool)

(declare-fun e!1403326 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2195861 (= e!1403326 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2195862 () Bool)

(declare-fun res!943990 () Bool)

(declare-fun e!1403322 () Bool)

(assert (=> b!2195862 (=> (not res!943990) (not e!1403322))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12492 0))(
  ( (C!12493 (val!7232 Int)) )
))
(declare-datatypes ((Regex!6173 0))(
  ( (ElementMatch!6173 (c!349688 C!12492)) (Concat!10475 (regOne!12858 Regex!6173) (regTwo!12858 Regex!6173)) (EmptyExpr!6173) (Star!6173 (reg!6502 Regex!6173)) (EmptyLang!6173) (Union!6173 (regOne!12859 Regex!6173) (regTwo!12859 Regex!6173)) )
))
(declare-datatypes ((List!25632 0))(
  ( (Nil!25548) (Cons!25548 (h!30949 Regex!6173) (t!198238 List!25632)) )
))
(declare-datatypes ((Context!3486 0))(
  ( (Context!3487 (exprs!2243 List!25632)) )
))
(declare-fun z!3955 () (InoxSet Context!3486))

(declare-fun lostCauseZipper!289 ((InoxSet Context!3486)) Bool)

(assert (=> b!2195862 (= res!943990 (not (lostCauseZipper!289 z!3955)))))

(declare-fun res!943985 () Bool)

(declare-fun e!1403323 () Bool)

(assert (=> start!213118 (=> (not res!943985) (not e!1403323))))

(assert (=> start!213118 (= res!943985 (>= from!1114 0))))

(assert (=> start!213118 e!1403323))

(assert (=> start!213118 true))

(declare-datatypes ((List!25633 0))(
  ( (Nil!25549) (Cons!25549 (h!30950 C!12492) (t!198239 List!25633)) )
))
(declare-datatypes ((IArray!16623 0))(
  ( (IArray!16624 (innerList!8369 List!25633)) )
))
(declare-datatypes ((Conc!8309 0))(
  ( (Node!8309 (left!19614 Conc!8309) (right!19944 Conc!8309) (csize!16848 Int) (cheight!8520 Int)) (Leaf!12163 (xs!11251 IArray!16623) (csize!16849 Int)) (Empty!8309) )
))
(declare-datatypes ((BalanceConc!16380 0))(
  ( (BalanceConc!16381 (c!349689 Conc!8309)) )
))
(declare-fun totalInput!923 () BalanceConc!16380)

(declare-fun e!1403324 () Bool)

(declare-fun inv!34216 (BalanceConc!16380) Bool)

(assert (=> start!213118 (and (inv!34216 totalInput!923) e!1403324)))

(declare-fun condSetEmpty!18788 () Bool)

(assert (=> start!213118 (= condSetEmpty!18788 (= z!3955 ((as const (Array Context!3486 Bool)) false)))))

(declare-fun setRes!18788 () Bool)

(assert (=> start!213118 setRes!18788))

(declare-fun setIsEmpty!18788 () Bool)

(assert (=> setIsEmpty!18788 setRes!18788))

(declare-fun lt!821352 () Bool)

(declare-fun lt!821350 () Int)

(declare-fun b!2195863 () Bool)

(declare-fun e!1403325 () Bool)

(declare-fun lt!821349 () Int)

(assert (=> b!2195863 (= e!1403325 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!821349) (>= lt!821350 (- 1)) (< lt!821350 (+ 1 from!1114)) lt!821352 (not (= lt!821350 from!1114))))))

(declare-fun b!2195864 () Bool)

(assert (=> b!2195864 (= e!1403322 e!1403325)))

(declare-fun res!943987 () Bool)

(assert (=> b!2195864 (=> (not res!943987) (not e!1403325))))

(declare-fun lt!821351 () (InoxSet Context!3486))

(declare-fun furthestNullablePosition!341 ((InoxSet Context!3486) Int BalanceConc!16380 Int Int) Int)

(assert (=> b!2195864 (= res!943987 (= (furthestNullablePosition!341 z!3955 from!1114 totalInput!923 lt!821349 lastNullablePos!193) (furthestNullablePosition!341 lt!821351 (+ 1 from!1114) totalInput!923 lt!821349 lt!821350)))))

(assert (=> b!2195864 (= lt!821350 (ite lt!821352 from!1114 lastNullablePos!193))))

(declare-fun nullableZipper!453 ((InoxSet Context!3486)) Bool)

(assert (=> b!2195864 (= lt!821352 (nullableZipper!453 lt!821351))))

(declare-fun derivationStepZipper!245 ((InoxSet Context!3486) C!12492) (InoxSet Context!3486))

(declare-fun apply!6241 (BalanceConc!16380 Int) C!12492)

(assert (=> b!2195864 (= lt!821351 (derivationStepZipper!245 z!3955 (apply!6241 totalInput!923 from!1114)))))

(declare-fun b!2195865 () Bool)

(assert (=> b!2195865 (= e!1403323 e!1403322)))

(declare-fun res!943988 () Bool)

(assert (=> b!2195865 (=> (not res!943988) (not e!1403322))))

(assert (=> b!2195865 (= res!943988 (and (<= from!1114 lt!821349) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19919 (BalanceConc!16380) Int)

(assert (=> b!2195865 (= lt!821349 (size!19919 totalInput!923))))

(declare-fun b!2195866 () Bool)

(declare-fun e!1403327 () Bool)

(declare-fun tp!684002 () Bool)

(assert (=> b!2195866 (= e!1403327 tp!684002)))

(declare-fun b!2195867 () Bool)

(declare-fun res!943986 () Bool)

(assert (=> b!2195867 (=> (not res!943986) (not e!1403322))))

(assert (=> b!2195867 (= res!943986 e!1403326)))

(declare-fun res!943989 () Bool)

(assert (=> b!2195867 (=> res!943989 e!1403326)))

(assert (=> b!2195867 (= res!943989 (not (nullableZipper!453 z!3955)))))

(declare-fun setNonEmpty!18788 () Bool)

(declare-fun tp!684003 () Bool)

(declare-fun setElem!18788 () Context!3486)

(declare-fun inv!34217 (Context!3486) Bool)

(assert (=> setNonEmpty!18788 (= setRes!18788 (and tp!684003 (inv!34217 setElem!18788) e!1403327))))

(declare-fun setRest!18788 () (InoxSet Context!3486))

(assert (=> setNonEmpty!18788 (= z!3955 ((_ map or) (store ((as const (Array Context!3486 Bool)) false) setElem!18788 true) setRest!18788))))

(declare-fun b!2195868 () Bool)

(declare-fun tp!684004 () Bool)

(declare-fun inv!34218 (Conc!8309) Bool)

(assert (=> b!2195868 (= e!1403324 (and (inv!34218 (c!349689 totalInput!923)) tp!684004))))

(declare-fun b!2195869 () Bool)

(declare-fun res!943991 () Bool)

(assert (=> b!2195869 (=> (not res!943991) (not e!1403322))))

(assert (=> b!2195869 (= res!943991 (not (= from!1114 lt!821349)))))

(assert (= (and start!213118 res!943985) b!2195865))

(assert (= (and b!2195865 res!943988) b!2195867))

(assert (= (and b!2195867 (not res!943989)) b!2195861))

(assert (= (and b!2195867 res!943986) b!2195869))

(assert (= (and b!2195869 res!943991) b!2195862))

(assert (= (and b!2195862 res!943990) b!2195864))

(assert (= (and b!2195864 res!943987) b!2195863))

(assert (= start!213118 b!2195868))

(assert (= (and start!213118 condSetEmpty!18788) setIsEmpty!18788))

(assert (= (and start!213118 (not condSetEmpty!18788)) setNonEmpty!18788))

(assert (= setNonEmpty!18788 b!2195866))

(declare-fun m!2638393 () Bool)

(assert (=> start!213118 m!2638393))

(declare-fun m!2638395 () Bool)

(assert (=> b!2195862 m!2638395))

(declare-fun m!2638397 () Bool)

(assert (=> setNonEmpty!18788 m!2638397))

(declare-fun m!2638399 () Bool)

(assert (=> b!2195865 m!2638399))

(declare-fun m!2638401 () Bool)

(assert (=> b!2195867 m!2638401))

(declare-fun m!2638403 () Bool)

(assert (=> b!2195868 m!2638403))

(declare-fun m!2638405 () Bool)

(assert (=> b!2195864 m!2638405))

(declare-fun m!2638407 () Bool)

(assert (=> b!2195864 m!2638407))

(declare-fun m!2638409 () Bool)

(assert (=> b!2195864 m!2638409))

(declare-fun m!2638411 () Bool)

(assert (=> b!2195864 m!2638411))

(assert (=> b!2195864 m!2638409))

(declare-fun m!2638413 () Bool)

(assert (=> b!2195864 m!2638413))

(check-sat (not b!2195862) (not b!2195867) (not b!2195865) (not b!2195866) (not b!2195868) (not start!213118) (not b!2195864) (not setNonEmpty!18788))
(check-sat)
