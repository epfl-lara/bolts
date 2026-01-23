; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212454 () Bool)

(assert start!212454)

(declare-fun b!2189916 () Bool)

(declare-fun e!1399405 () Bool)

(declare-datatypes ((C!12284 0))(
  ( (C!12285 (val!7128 Int)) )
))
(declare-datatypes ((List!25411 0))(
  ( (Nil!25327) (Cons!25327 (h!30728 C!12284) (t!198009 List!25411)) )
))
(declare-datatypes ((IArray!16415 0))(
  ( (IArray!16416 (innerList!8265 List!25411)) )
))
(declare-datatypes ((Conc!8205 0))(
  ( (Node!8205 (left!19434 Conc!8205) (right!19764 Conc!8205) (csize!16640 Int) (cheight!8416 Int)) (Leaf!12007 (xs!11147 IArray!16415) (csize!16641 Int)) (Empty!8205) )
))
(declare-datatypes ((BalanceConc!16172 0))(
  ( (BalanceConc!16173 (c!348390 Conc!8205)) )
))
(declare-fun totalInput!923 () BalanceConc!16172)

(declare-fun tp!682713 () Bool)

(declare-fun inv!33711 (Conc!8205) Bool)

(assert (=> b!2189916 (= e!1399405 (and (inv!33711 (c!348390 totalInput!923)) tp!682713))))

(declare-fun setRes!18432 () Bool)

(declare-fun tp!682712 () Bool)

(declare-fun setNonEmpty!18432 () Bool)

(declare-datatypes ((Regex!6069 0))(
  ( (ElementMatch!6069 (c!348391 C!12284)) (Concat!10371 (regOne!12650 Regex!6069) (regTwo!12650 Regex!6069)) (EmptyExpr!6069) (Star!6069 (reg!6398 Regex!6069)) (EmptyLang!6069) (Union!6069 (regOne!12651 Regex!6069) (regTwo!12651 Regex!6069)) )
))
(declare-datatypes ((List!25412 0))(
  ( (Nil!25328) (Cons!25328 (h!30729 Regex!6069) (t!198010 List!25412)) )
))
(declare-datatypes ((Context!3278 0))(
  ( (Context!3279 (exprs!2139 List!25412)) )
))
(declare-fun setElem!18432 () Context!3278)

(declare-fun e!1399401 () Bool)

(declare-fun inv!33712 (Context!3278) Bool)

(assert (=> setNonEmpty!18432 (= setRes!18432 (and tp!682712 (inv!33712 setElem!18432) e!1399401))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3278))

(declare-fun setRest!18432 () (InoxSet Context!3278))

(assert (=> setNonEmpty!18432 (= z!3955 ((_ map or) (store ((as const (Array Context!3278 Bool)) false) setElem!18432 true) setRest!18432))))

(declare-fun res!940875 () Bool)

(declare-fun e!1399402 () Bool)

(assert (=> start!212454 (=> (not res!940875) (not e!1399402))))

(declare-fun from!1114 () Int)

(assert (=> start!212454 (= res!940875 (>= from!1114 0))))

(assert (=> start!212454 e!1399402))

(assert (=> start!212454 true))

(declare-fun inv!33713 (BalanceConc!16172) Bool)

(assert (=> start!212454 (and (inv!33713 totalInput!923) e!1399405)))

(declare-fun condSetEmpty!18432 () Bool)

(assert (=> start!212454 (= condSetEmpty!18432 (= z!3955 ((as const (Array Context!3278 Bool)) false)))))

(assert (=> start!212454 setRes!18432))

(declare-fun setIsEmpty!18432 () Bool)

(assert (=> setIsEmpty!18432 setRes!18432))

(declare-fun b!2189917 () Bool)

(declare-fun e!1399403 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2189917 (= e!1399403 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2189918 () Bool)

(declare-fun res!940872 () Bool)

(declare-fun e!1399404 () Bool)

(assert (=> b!2189918 (=> (not res!940872) (not e!1399404))))

(assert (=> b!2189918 (= res!940872 e!1399403)))

(declare-fun res!940870 () Bool)

(assert (=> b!2189918 (=> res!940870 e!1399403)))

(declare-fun nullableZipper!349 ((InoxSet Context!3278)) Bool)

(assert (=> b!2189918 (= res!940870 (not (nullableZipper!349 z!3955)))))

(declare-fun b!2189919 () Bool)

(declare-fun res!940874 () Bool)

(assert (=> b!2189919 (=> (not res!940874) (not e!1399404))))

(declare-fun lostCauseZipper!187 ((InoxSet Context!3278)) Bool)

(assert (=> b!2189919 (= res!940874 (not (lostCauseZipper!187 z!3955)))))

(declare-fun b!2189920 () Bool)

(assert (=> b!2189920 (= e!1399404 false)))

(declare-fun lt!818107 () Bool)

(declare-fun derivationStepZipper!146 ((InoxSet Context!3278) C!12284) (InoxSet Context!3278))

(declare-fun apply!6102 (BalanceConc!16172 Int) C!12284)

(assert (=> b!2189920 (= lt!818107 (nullableZipper!349 (derivationStepZipper!146 z!3955 (apply!6102 totalInput!923 from!1114))))))

(declare-fun b!2189921 () Bool)

(assert (=> b!2189921 (= e!1399402 e!1399404)))

(declare-fun res!940871 () Bool)

(assert (=> b!2189921 (=> (not res!940871) (not e!1399404))))

(declare-fun lt!818108 () Int)

(assert (=> b!2189921 (= res!940871 (and (<= from!1114 lt!818108) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19785 (BalanceConc!16172) Int)

(assert (=> b!2189921 (= lt!818108 (size!19785 totalInput!923))))

(declare-fun b!2189922 () Bool)

(declare-fun res!940873 () Bool)

(assert (=> b!2189922 (=> (not res!940873) (not e!1399404))))

(assert (=> b!2189922 (= res!940873 (not (= from!1114 lt!818108)))))

(declare-fun b!2189923 () Bool)

(declare-fun tp!682714 () Bool)

(assert (=> b!2189923 (= e!1399401 tp!682714)))

(assert (= (and start!212454 res!940875) b!2189921))

(assert (= (and b!2189921 res!940871) b!2189918))

(assert (= (and b!2189918 (not res!940870)) b!2189917))

(assert (= (and b!2189918 res!940872) b!2189922))

(assert (= (and b!2189922 res!940873) b!2189919))

(assert (= (and b!2189919 res!940874) b!2189920))

(assert (= start!212454 b!2189916))

(assert (= (and start!212454 condSetEmpty!18432) setIsEmpty!18432))

(assert (= (and start!212454 (not condSetEmpty!18432)) setNonEmpty!18432))

(assert (= setNonEmpty!18432 b!2189923))

(declare-fun m!2632889 () Bool)

(assert (=> b!2189920 m!2632889))

(assert (=> b!2189920 m!2632889))

(declare-fun m!2632891 () Bool)

(assert (=> b!2189920 m!2632891))

(assert (=> b!2189920 m!2632891))

(declare-fun m!2632893 () Bool)

(assert (=> b!2189920 m!2632893))

(declare-fun m!2632895 () Bool)

(assert (=> b!2189921 m!2632895))

(declare-fun m!2632897 () Bool)

(assert (=> start!212454 m!2632897))

(declare-fun m!2632899 () Bool)

(assert (=> b!2189919 m!2632899))

(declare-fun m!2632901 () Bool)

(assert (=> b!2189916 m!2632901))

(declare-fun m!2632903 () Bool)

(assert (=> b!2189918 m!2632903))

(declare-fun m!2632905 () Bool)

(assert (=> setNonEmpty!18432 m!2632905))

(check-sat (not b!2189919) (not b!2189920) (not setNonEmpty!18432) (not b!2189923) (not start!212454) (not b!2189921) (not b!2189918) (not b!2189916))
(check-sat)
