; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283234 () Bool)

(assert start!283234)

(declare-fun b!2909226 () Bool)

(declare-fun e!1836355 () Bool)

(declare-fun e!1836356 () Bool)

(assert (=> b!2909226 (= e!1836355 (not e!1836356))))

(declare-fun res!1201166 () Bool)

(assert (=> b!2909226 (=> res!1201166 e!1836356)))

(declare-datatypes ((C!18056 0))(
  ( (C!18057 (val!11062 Int)) )
))
(declare-fun lt!1023280 () C!18056)

(declare-datatypes ((List!34783 0))(
  ( (Nil!34659) (Cons!34659 (h!40079 C!18056) (t!233826 List!34783)) )
))
(declare-fun lt!1023275 () List!34783)

(declare-fun lt!1023281 () List!34783)

(declare-fun $colon$colon!609 (List!34783 C!18056) List!34783)

(assert (=> b!2909226 (= res!1201166 (not (= lt!1023281 ($colon$colon!609 lt!1023275 lt!1023280))))))

(declare-datatypes ((IArray!21029 0))(
  ( (IArray!21030 (innerList!10572 List!34783)) )
))
(declare-datatypes ((Conc!10512 0))(
  ( (Node!10512 (left!26031 Conc!10512) (right!26361 Conc!10512) (csize!21254 Int) (cheight!10723 Int)) (Leaf!16204 (xs!13630 IArray!21029) (csize!21255 Int)) (Empty!10512) )
))
(declare-datatypes ((BalanceConc!20662 0))(
  ( (BalanceConc!20663 (c!474167 Conc!10512)) )
))
(declare-fun input!3770 () BalanceConc!20662)

(declare-fun i!1878 () Int)

(declare-fun dropList!1038 (BalanceConc!20662 Int) List!34783)

(assert (=> b!2909226 (= lt!1023281 (dropList!1038 input!3770 i!1878))))

(declare-fun lt!1023277 () List!34783)

(declare-fun lt!1023270 () List!34783)

(declare-fun tail!4678 (List!34783) List!34783)

(declare-fun drop!1822 (List!34783 Int) List!34783)

(assert (=> b!2909226 (= (tail!4678 lt!1023277) (drop!1822 lt!1023270 (+ 1 i!1878)))))

(declare-datatypes ((Unit!48205 0))(
  ( (Unit!48206) )
))
(declare-fun lt!1023279 () Unit!48205)

(declare-fun lemmaDropTail!887 (List!34783 Int) Unit!48205)

(assert (=> b!2909226 (= lt!1023279 (lemmaDropTail!887 lt!1023270 i!1878))))

(declare-fun head!6453 (List!34783) C!18056)

(declare-fun apply!7896 (List!34783 Int) C!18056)

(assert (=> b!2909226 (= (head!6453 lt!1023277) (apply!7896 lt!1023270 i!1878))))

(assert (=> b!2909226 (= lt!1023277 (drop!1822 lt!1023270 i!1878))))

(declare-fun lt!1023276 () Unit!48205)

(declare-fun lemmaDropApply!1001 (List!34783 Int) Unit!48205)

(assert (=> b!2909226 (= lt!1023276 (lemmaDropApply!1001 lt!1023270 i!1878))))

(declare-fun list!12604 (BalanceConc!20662) List!34783)

(assert (=> b!2909226 (= lt!1023270 (list!12604 input!3770))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8937 0))(
  ( (ElementMatch!8937 (c!474168 C!18056)) (Concat!14258 (regOne!18386 Regex!8937) (regTwo!18386 Regex!8937)) (EmptyExpr!8937) (Star!8937 (reg!9266 Regex!8937)) (EmptyLang!8937) (Union!8937 (regOne!18387 Regex!8937) (regTwo!18387 Regex!8937)) )
))
(declare-datatypes ((List!34784 0))(
  ( (Nil!34660) (Cons!34660 (h!40080 Regex!8937) (t!233827 List!34784)) )
))
(declare-datatypes ((Context!5514 0))(
  ( (Context!5515 (exprs!3257 List!34784)) )
))
(declare-fun lt!1023273 () (InoxSet Context!5514))

(declare-fun prefixMatchZipper!373 ((InoxSet Context!5514) List!34783) Bool)

(declare-fun prefixMatchZipperSequence!777 ((InoxSet Context!5514) BalanceConc!20662 Int) Bool)

(assert (=> b!2909226 (= (prefixMatchZipper!373 lt!1023273 lt!1023275) (prefixMatchZipperSequence!777 lt!1023273 input!3770 (+ 1 i!1878)))))

(assert (=> b!2909226 (= lt!1023275 (dropList!1038 input!3770 (+ 1 i!1878)))))

(declare-fun lt!1023278 () Unit!48205)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!253 ((InoxSet Context!5514) BalanceConc!20662 Int) Unit!48205)

(assert (=> b!2909226 (= lt!1023278 (lemmaprefixMatchZipperSequenceEquivalent!253 lt!1023273 input!3770 (+ 1 i!1878)))))

(declare-fun z!644 () (InoxSet Context!5514))

(declare-fun derivationStepZipper!517 ((InoxSet Context!5514) C!18056) (InoxSet Context!5514))

(assert (=> b!2909226 (= lt!1023273 (derivationStepZipper!517 z!644 lt!1023280))))

(declare-fun apply!7897 (BalanceConc!20662 Int) C!18056)

(assert (=> b!2909226 (= lt!1023280 (apply!7897 input!3770 i!1878))))

(declare-fun res!1201165 () Bool)

(declare-fun e!1836354 () Bool)

(assert (=> start!283234 (=> (not res!1201165) (not e!1836354))))

(assert (=> start!283234 (= res!1201165 (>= i!1878 0))))

(assert (=> start!283234 e!1836354))

(assert (=> start!283234 true))

(declare-fun e!1836353 () Bool)

(declare-fun inv!46807 (BalanceConc!20662) Bool)

(assert (=> start!283234 (and (inv!46807 input!3770) e!1836353)))

(declare-fun condSetEmpty!25879 () Bool)

(assert (=> start!283234 (= condSetEmpty!25879 (= z!644 ((as const (Array Context!5514 Bool)) false)))))

(declare-fun setRes!25879 () Bool)

(assert (=> start!283234 setRes!25879))

(declare-fun b!2909227 () Bool)

(declare-fun tp!934847 () Bool)

(declare-fun inv!46808 (Conc!10512) Bool)

(assert (=> b!2909227 (= e!1836353 (and (inv!46808 (c!474167 input!3770)) tp!934847))))

(declare-fun b!2909228 () Bool)

(assert (=> b!2909228 (= e!1836356 true)))

(declare-fun lt!1023272 () Bool)

(assert (=> b!2909228 (= lt!1023272 (prefixMatchZipperSequence!777 z!644 input!3770 i!1878))))

(declare-fun lt!1023271 () Bool)

(assert (=> b!2909228 (= lt!1023271 (prefixMatchZipper!373 z!644 lt!1023281))))

(declare-fun tp!934848 () Bool)

(declare-fun setNonEmpty!25879 () Bool)

(declare-fun e!1836357 () Bool)

(declare-fun setElem!25879 () Context!5514)

(declare-fun inv!46809 (Context!5514) Bool)

(assert (=> setNonEmpty!25879 (= setRes!25879 (and tp!934848 (inv!46809 setElem!25879) e!1836357))))

(declare-fun setRest!25879 () (InoxSet Context!5514))

(assert (=> setNonEmpty!25879 (= z!644 ((_ map or) (store ((as const (Array Context!5514 Bool)) false) setElem!25879 true) setRest!25879))))

(declare-fun setIsEmpty!25879 () Bool)

(assert (=> setIsEmpty!25879 setRes!25879))

(declare-fun b!2909229 () Bool)

(assert (=> b!2909229 (= e!1836354 e!1836355)))

(declare-fun res!1201167 () Bool)

(assert (=> b!2909229 (=> (not res!1201167) (not e!1836355))))

(declare-fun lt!1023274 () Int)

(assert (=> b!2909229 (= res!1201167 (and (<= i!1878 lt!1023274) (not (= i!1878 lt!1023274))))))

(declare-fun size!26404 (BalanceConc!20662) Int)

(assert (=> b!2909229 (= lt!1023274 (size!26404 input!3770))))

(declare-fun b!2909230 () Bool)

(declare-fun tp!934849 () Bool)

(assert (=> b!2909230 (= e!1836357 tp!934849)))

(assert (= (and start!283234 res!1201165) b!2909229))

(assert (= (and b!2909229 res!1201167) b!2909226))

(assert (= (and b!2909226 (not res!1201166)) b!2909228))

(assert (= start!283234 b!2909227))

(assert (= (and start!283234 condSetEmpty!25879) setIsEmpty!25879))

(assert (= (and start!283234 (not condSetEmpty!25879)) setNonEmpty!25879))

(assert (= setNonEmpty!25879 b!2909230))

(declare-fun m!3310599 () Bool)

(assert (=> setNonEmpty!25879 m!3310599))

(declare-fun m!3310601 () Bool)

(assert (=> b!2909226 m!3310601))

(declare-fun m!3310603 () Bool)

(assert (=> b!2909226 m!3310603))

(declare-fun m!3310605 () Bool)

(assert (=> b!2909226 m!3310605))

(declare-fun m!3310607 () Bool)

(assert (=> b!2909226 m!3310607))

(declare-fun m!3310609 () Bool)

(assert (=> b!2909226 m!3310609))

(declare-fun m!3310611 () Bool)

(assert (=> b!2909226 m!3310611))

(declare-fun m!3310613 () Bool)

(assert (=> b!2909226 m!3310613))

(declare-fun m!3310615 () Bool)

(assert (=> b!2909226 m!3310615))

(declare-fun m!3310617 () Bool)

(assert (=> b!2909226 m!3310617))

(declare-fun m!3310619 () Bool)

(assert (=> b!2909226 m!3310619))

(declare-fun m!3310621 () Bool)

(assert (=> b!2909226 m!3310621))

(declare-fun m!3310623 () Bool)

(assert (=> b!2909226 m!3310623))

(declare-fun m!3310625 () Bool)

(assert (=> b!2909226 m!3310625))

(declare-fun m!3310627 () Bool)

(assert (=> b!2909226 m!3310627))

(declare-fun m!3310629 () Bool)

(assert (=> b!2909226 m!3310629))

(declare-fun m!3310631 () Bool)

(assert (=> b!2909226 m!3310631))

(declare-fun m!3310633 () Bool)

(assert (=> b!2909229 m!3310633))

(declare-fun m!3310635 () Bool)

(assert (=> b!2909228 m!3310635))

(declare-fun m!3310637 () Bool)

(assert (=> b!2909228 m!3310637))

(declare-fun m!3310639 () Bool)

(assert (=> b!2909227 m!3310639))

(declare-fun m!3310641 () Bool)

(assert (=> start!283234 m!3310641))

(check-sat (not setNonEmpty!25879) (not b!2909228) (not b!2909226) (not b!2909230) (not b!2909229) (not b!2909227) (not start!283234))
(check-sat)
