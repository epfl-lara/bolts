; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213646 () Bool)

(assert start!213646)

(declare-fun b!2200788 () Bool)

(declare-fun e!1406299 () Bool)

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2200788 (= e!1406299 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200789 () Bool)

(declare-fun res!946197 () Bool)

(declare-fun e!1406301 () Bool)

(assert (=> b!2200789 (=> (not res!946197) (not e!1406301))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!823293 () Int)

(assert (=> b!2200789 (= res!946197 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!823293))))))

(declare-fun b!2200790 () Bool)

(declare-fun e!1406297 () Bool)

(declare-fun e!1406304 () Bool)

(assert (=> b!2200790 (= e!1406297 e!1406304)))

(declare-fun res!946188 () Bool)

(assert (=> b!2200790 (=> res!946188 e!1406304)))

(declare-fun lt!823296 () Int)

(assert (=> b!2200790 (= res!946188 (< lt!823296 (+ (- from!1082 1) knownSize!10)))))

(assert (=> b!2200790 (>= lt!823296 (+ from!1082 (- knownSize!10 1)))))

(declare-datatypes ((C!12596 0))(
  ( (C!12597 (val!7284 Int)) )
))
(declare-datatypes ((List!25744 0))(
  ( (Nil!25660) (Cons!25660 (h!31061 C!12596) (t!198362 List!25744)) )
))
(declare-datatypes ((IArray!16727 0))(
  ( (IArray!16728 (innerList!8421 List!25744)) )
))
(declare-datatypes ((Conc!8361 0))(
  ( (Node!8361 (left!19708 Conc!8361) (right!20038 Conc!8361) (csize!16952 Int) (cheight!8572 Int)) (Leaf!12241 (xs!11303 IArray!16727) (csize!16953 Int)) (Empty!8361) )
))
(declare-datatypes ((BalanceConc!16484 0))(
  ( (BalanceConc!16485 (c!350944 Conc!8361)) )
))
(declare-fun totalInput!891 () BalanceConc!16484)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6225 0))(
  ( (ElementMatch!6225 (c!350945 C!12596)) (Concat!10527 (regOne!12962 Regex!6225) (regTwo!12962 Regex!6225)) (EmptyExpr!6225) (Star!6225 (reg!6554 Regex!6225)) (EmptyLang!6225) (Union!6225 (regOne!12963 Regex!6225) (regTwo!12963 Regex!6225)) )
))
(declare-datatypes ((List!25745 0))(
  ( (Nil!25661) (Cons!25661 (h!31062 Regex!6225) (t!198363 List!25745)) )
))
(declare-datatypes ((Context!3590 0))(
  ( (Context!3591 (exprs!2295 List!25745)) )
))
(declare-fun lt!823290 () (InoxSet Context!3590))

(declare-fun lt!823287 () Int)

(declare-datatypes ((Unit!38759 0))(
  ( (Unit!38760) )
))
(declare-fun lt!823294 () Unit!38759)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!8 ((InoxSet Context!3590) Int BalanceConc!16484 Int Int) Unit!38759)

(assert (=> b!2200790 (= lt!823294 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!8 lt!823290 (+ 1 from!1082) totalInput!891 (- knownSize!10 1) lt!823287))))

(declare-fun b!2200792 () Bool)

(declare-fun res!946192 () Bool)

(assert (=> b!2200792 (=> (not res!946192) (not e!1406301))))

(assert (=> b!2200792 (= res!946192 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200793 () Bool)

(declare-fun e!1406300 () Int)

(assert (=> b!2200793 (= e!1406300 lastNullablePos!161)))

(declare-fun setIsEmpty!18978 () Bool)

(declare-fun setRes!18978 () Bool)

(assert (=> setIsEmpty!18978 setRes!18978))

(declare-fun b!2200794 () Bool)

(declare-fun e!1406303 () Bool)

(declare-fun tp!684840 () Bool)

(declare-fun inv!34471 (Conc!8361) Bool)

(assert (=> b!2200794 (= e!1406303 (and (inv!34471 (c!350944 totalInput!891)) tp!684840))))

(declare-fun b!2200795 () Bool)

(declare-fun res!946191 () Bool)

(assert (=> b!2200795 (=> (not res!946191) (not e!1406301))))

(declare-fun z!3888 () (InoxSet Context!3590))

(declare-fun lostCauseZipper!335 ((InoxSet Context!3590)) Bool)

(assert (=> b!2200795 (= res!946191 (not (lostCauseZipper!335 z!3888)))))

(declare-fun setNonEmpty!18978 () Bool)

(declare-fun e!1406302 () Bool)

(declare-fun setElem!18978 () Context!3590)

(declare-fun tp!684839 () Bool)

(declare-fun inv!34472 (Context!3590) Bool)

(assert (=> setNonEmpty!18978 (= setRes!18978 (and tp!684839 (inv!34472 setElem!18978) e!1406302))))

(declare-fun setRest!18978 () (InoxSet Context!3590))

(assert (=> setNonEmpty!18978 (= z!3888 ((_ map or) (store ((as const (Array Context!3590 Bool)) false) setElem!18978 true) setRest!18978))))

(declare-fun b!2200796 () Bool)

(declare-fun tp!684838 () Bool)

(assert (=> b!2200796 (= e!1406302 tp!684838)))

(declare-fun b!2200797 () Bool)

(declare-fun res!946193 () Bool)

(assert (=> b!2200797 (=> res!946193 e!1406297)))

(declare-fun lt!823285 () List!25744)

(declare-fun matchZipper!311 ((InoxSet Context!3590) List!25744) Bool)

(assert (=> b!2200797 (= res!946193 (not (matchZipper!311 lt!823290 lt!823285)))))

(declare-fun b!2200798 () Bool)

(assert (=> b!2200798 (= e!1406304 true)))

(declare-fun lt!823288 () Int)

(declare-fun furthestNullablePosition!377 ((InoxSet Context!3590) Int BalanceConc!16484 Int Int) Int)

(assert (=> b!2200798 (= lt!823288 (furthestNullablePosition!377 z!3888 from!1082 totalInput!891 lt!823293 lastNullablePos!161))))

(declare-fun res!946190 () Bool)

(declare-fun e!1406305 () Bool)

(assert (=> start!213646 (=> (not res!946190) (not e!1406305))))

(assert (=> start!213646 (= res!946190 (>= from!1082 0))))

(assert (=> start!213646 e!1406305))

(assert (=> start!213646 true))

(declare-fun inv!34473 (BalanceConc!16484) Bool)

(assert (=> start!213646 (and (inv!34473 totalInput!891) e!1406303)))

(declare-fun condSetEmpty!18978 () Bool)

(assert (=> start!213646 (= condSetEmpty!18978 (= z!3888 ((as const (Array Context!3590 Bool)) false)))))

(assert (=> start!213646 setRes!18978))

(declare-fun b!2200791 () Bool)

(declare-fun e!1406298 () Bool)

(assert (=> b!2200791 (= e!1406298 e!1406301)))

(declare-fun res!946199 () Bool)

(assert (=> b!2200791 (=> (not res!946199) (not e!1406301))))

(declare-fun lt!823291 () List!25744)

(assert (=> b!2200791 (= res!946199 (matchZipper!311 z!3888 lt!823291))))

(declare-fun lt!823292 () List!25744)

(declare-fun take!403 (List!25744 Int) List!25744)

(assert (=> b!2200791 (= lt!823291 (take!403 lt!823292 knownSize!10))))

(declare-fun lt!823289 () List!25744)

(declare-fun drop!1413 (List!25744 Int) List!25744)

(assert (=> b!2200791 (= lt!823292 (drop!1413 lt!823289 from!1082))))

(declare-fun list!9883 (BalanceConc!16484) List!25744)

(assert (=> b!2200791 (= lt!823289 (list!9883 totalInput!891))))

(declare-fun b!2200799 () Bool)

(declare-fun res!946194 () Bool)

(assert (=> b!2200799 (=> (not res!946194) (not e!1406301))))

(declare-fun isEmpty!14635 (BalanceConc!16484) Bool)

(assert (=> b!2200799 (= res!946194 (not (isEmpty!14635 totalInput!891)))))

(declare-fun b!2200800 () Bool)

(assert (=> b!2200800 (= e!1406305 e!1406298)))

(declare-fun res!946189 () Bool)

(assert (=> b!2200800 (=> (not res!946189) (not e!1406298))))

(assert (=> b!2200800 (= res!946189 (and (<= from!1082 lt!823293) (>= knownSize!10 0) (<= knownSize!10 (- lt!823293 from!1082))))))

(declare-fun size!19992 (BalanceConc!16484) Int)

(assert (=> b!2200800 (= lt!823293 (size!19992 totalInput!891))))

(declare-fun b!2200801 () Bool)

(assert (=> b!2200801 (= e!1406300 from!1082)))

(declare-fun b!2200802 () Bool)

(assert (=> b!2200802 (= e!1406301 (not e!1406297))))

(declare-fun res!946196 () Bool)

(assert (=> b!2200802 (=> res!946196 e!1406297)))

(declare-fun tail!3170 (List!25744) List!25744)

(assert (=> b!2200802 (= res!946196 (not (= lt!823285 (tail!3170 lt!823291))))))

(declare-fun lt!823286 () C!12596)

(assert (=> b!2200802 (= (Cons!25660 lt!823286 lt!823285) (take!403 lt!823292 (+ 1 (- knownSize!10 1))))))

(assert (=> b!2200802 (= lt!823285 (take!403 (drop!1413 lt!823289 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6308 (List!25744 Int) C!12596)

(assert (=> b!2200802 (= lt!823286 (apply!6308 lt!823289 from!1082))))

(declare-fun lt!823295 () Unit!38759)

(declare-fun lemmaDropTakeAddOneLeft!32 (List!25744 Int Int) Unit!38759)

(assert (=> b!2200802 (= lt!823295 (lemmaDropTakeAddOneLeft!32 lt!823289 from!1082 (- knownSize!10 1)))))

(assert (=> b!2200802 (= lt!823296 (furthestNullablePosition!377 lt!823290 (+ 1 from!1082) totalInput!891 lt!823293 lt!823287))))

(assert (=> b!2200802 (= lt!823287 e!1406300)))

(declare-fun c!350943 () Bool)

(declare-fun nullableZipper!505 ((InoxSet Context!3590)) Bool)

(assert (=> b!2200802 (= c!350943 (nullableZipper!505 lt!823290))))

(declare-fun derivationStepZipper!283 ((InoxSet Context!3590) C!12596) (InoxSet Context!3590))

(declare-fun apply!6309 (BalanceConc!16484 Int) C!12596)

(assert (=> b!2200802 (= lt!823290 (derivationStepZipper!283 z!3888 (apply!6309 totalInput!891 from!1082)))))

(declare-fun b!2200803 () Bool)

(declare-fun res!946195 () Bool)

(assert (=> b!2200803 (=> (not res!946195) (not e!1406301))))

(assert (=> b!2200803 (= res!946195 e!1406299)))

(declare-fun res!946198 () Bool)

(assert (=> b!2200803 (=> res!946198 e!1406299)))

(assert (=> b!2200803 (= res!946198 (not (nullableZipper!505 z!3888)))))

(assert (= (and start!213646 res!946190) b!2200800))

(assert (= (and b!2200800 res!946189) b!2200791))

(assert (= (and b!2200791 res!946199) b!2200792))

(assert (= (and b!2200792 res!946192) b!2200803))

(assert (= (and b!2200803 (not res!946198)) b!2200788))

(assert (= (and b!2200803 res!946195) b!2200799))

(assert (= (and b!2200799 res!946194) b!2200789))

(assert (= (and b!2200789 res!946197) b!2200795))

(assert (= (and b!2200795 res!946191) b!2200802))

(assert (= (and b!2200802 c!350943) b!2200801))

(assert (= (and b!2200802 (not c!350943)) b!2200793))

(assert (= (and b!2200802 (not res!946196)) b!2200797))

(assert (= (and b!2200797 (not res!946193)) b!2200790))

(assert (= (and b!2200790 (not res!946188)) b!2200798))

(assert (= start!213646 b!2200794))

(assert (= (and start!213646 condSetEmpty!18978) setIsEmpty!18978))

(assert (= (and start!213646 (not condSetEmpty!18978)) setNonEmpty!18978))

(assert (= setNonEmpty!18978 b!2200796))

(declare-fun m!2643431 () Bool)

(assert (=> b!2200797 m!2643431))

(declare-fun m!2643433 () Bool)

(assert (=> b!2200799 m!2643433))

(declare-fun m!2643435 () Bool)

(assert (=> start!213646 m!2643435))

(declare-fun m!2643437 () Bool)

(assert (=> setNonEmpty!18978 m!2643437))

(declare-fun m!2643439 () Bool)

(assert (=> b!2200800 m!2643439))

(declare-fun m!2643441 () Bool)

(assert (=> b!2200795 m!2643441))

(declare-fun m!2643443 () Bool)

(assert (=> b!2200798 m!2643443))

(declare-fun m!2643445 () Bool)

(assert (=> b!2200802 m!2643445))

(assert (=> b!2200802 m!2643445))

(declare-fun m!2643447 () Bool)

(assert (=> b!2200802 m!2643447))

(declare-fun m!2643449 () Bool)

(assert (=> b!2200802 m!2643449))

(declare-fun m!2643451 () Bool)

(assert (=> b!2200802 m!2643451))

(declare-fun m!2643453 () Bool)

(assert (=> b!2200802 m!2643453))

(declare-fun m!2643455 () Bool)

(assert (=> b!2200802 m!2643455))

(declare-fun m!2643457 () Bool)

(assert (=> b!2200802 m!2643457))

(declare-fun m!2643459 () Bool)

(assert (=> b!2200802 m!2643459))

(declare-fun m!2643461 () Bool)

(assert (=> b!2200802 m!2643461))

(assert (=> b!2200802 m!2643451))

(declare-fun m!2643463 () Bool)

(assert (=> b!2200802 m!2643463))

(declare-fun m!2643465 () Bool)

(assert (=> b!2200794 m!2643465))

(declare-fun m!2643467 () Bool)

(assert (=> b!2200790 m!2643467))

(declare-fun m!2643469 () Bool)

(assert (=> b!2200791 m!2643469))

(declare-fun m!2643471 () Bool)

(assert (=> b!2200791 m!2643471))

(declare-fun m!2643473 () Bool)

(assert (=> b!2200791 m!2643473))

(declare-fun m!2643475 () Bool)

(assert (=> b!2200791 m!2643475))

(declare-fun m!2643477 () Bool)

(assert (=> b!2200803 m!2643477))

(check-sat (not b!2200799) (not b!2200798) (not b!2200794) (not b!2200803) (not b!2200790) (not b!2200791) (not b!2200802) (not b!2200796) (not b!2200797) (not b!2200795) (not setNonEmpty!18978) (not b!2200800) (not start!213646))
(check-sat)
