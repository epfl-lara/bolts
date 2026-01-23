; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228274 () Bool)

(assert start!228274)

(declare-fun setIsEmpty!20794 () Bool)

(declare-fun setRes!20794 () Bool)

(assert (=> setIsEmpty!20794 setRes!20794))

(declare-datatypes ((C!13700 0))(
  ( (C!13701 (val!7906 Int)) )
))
(declare-datatypes ((Regex!6773 0))(
  ( (ElementMatch!6773 (c!366789 C!13700)) (Concat!11361 (regOne!14058 Regex!6773) (regTwo!14058 Regex!6773)) (EmptyExpr!6773) (Star!6773 (reg!7102 Regex!6773)) (EmptyLang!6773) (Union!6773 (regOne!14059 Regex!6773) (regTwo!14059 Regex!6773)) )
))
(declare-datatypes ((List!27658 0))(
  ( (Nil!27560) (Cons!27560 (h!32961 Regex!6773) (t!207258 List!27658)) )
))
(declare-datatypes ((Context!4190 0))(
  ( (Context!4191 (exprs!2595 List!27658)) )
))
(declare-fun setElem!20794 () Context!4190)

(declare-fun tp!734486 () Bool)

(declare-fun setNonEmpty!20794 () Bool)

(declare-fun e!1483103 () Bool)

(declare-fun inv!37315 (Context!4190) Bool)

(assert (=> setNonEmpty!20794 (= setRes!20794 (and tp!734486 (inv!37315 setElem!20794) e!1483103))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3800 () (InoxSet Context!4190))

(declare-fun setRest!20794 () (InoxSet Context!4190))

(assert (=> setNonEmpty!20794 (= z!3800 ((_ map or) (store ((as const (Array Context!4190 Bool)) false) setElem!20794 true) setRest!20794))))

(declare-fun b!2313757 () Bool)

(declare-fun e!1483100 () Bool)

(assert (=> b!2313757 (= e!1483100 false)))

(declare-fun lt!857921 () Bool)

(declare-fun e!1483104 () Bool)

(assert (=> b!2313757 (= lt!857921 e!1483104)))

(declare-fun res!988862 () Bool)

(assert (=> b!2313757 (=> res!988862 e!1483104)))

(declare-fun from!1022 () Int)

(declare-fun totalInputSize!275 () Int)

(assert (=> b!2313757 (= res!988862 (= from!1022 totalInputSize!275))))

(declare-fun b!2313758 () Bool)

(declare-fun lostCauseZipper!400 ((InoxSet Context!4190)) Bool)

(assert (=> b!2313758 (= e!1483104 (lostCauseZipper!400 z!3800))))

(declare-fun b!2313759 () Bool)

(declare-fun e!1483102 () Bool)

(declare-datatypes ((List!27659 0))(
  ( (Nil!27561) (Cons!27561 (h!32962 C!13700) (t!207259 List!27659)) )
))
(declare-datatypes ((IArray!18011 0))(
  ( (IArray!18012 (innerList!9063 List!27659)) )
))
(declare-datatypes ((Conc!9003 0))(
  ( (Node!9003 (left!20899 Conc!9003) (right!21229 Conc!9003) (csize!18236 Int) (cheight!9214 Int)) (Leaf!13212 (xs!11945 IArray!18011) (csize!18237 Int)) (Empty!9003) )
))
(declare-datatypes ((BalanceConc!17738 0))(
  ( (BalanceConc!17739 (c!366790 Conc!9003)) )
))
(declare-fun totalInput!830 () BalanceConc!17738)

(declare-fun tp!734487 () Bool)

(declare-fun inv!37316 (Conc!9003) Bool)

(assert (=> b!2313759 (= e!1483102 (and (inv!37316 (c!366790 totalInput!830)) tp!734487))))

(declare-fun res!988863 () Bool)

(declare-fun e!1483101 () Bool)

(assert (=> start!228274 (=> (not res!988863) (not e!1483101))))

(assert (=> start!228274 (= res!988863 (>= from!1022 0))))

(assert (=> start!228274 e!1483101))

(assert (=> start!228274 true))

(declare-fun inv!37317 (BalanceConc!17738) Bool)

(assert (=> start!228274 (and (inv!37317 totalInput!830) e!1483102)))

(declare-fun condSetEmpty!20794 () Bool)

(assert (=> start!228274 (= condSetEmpty!20794 (= z!3800 ((as const (Array Context!4190 Bool)) false)))))

(assert (=> start!228274 setRes!20794))

(declare-fun b!2313760 () Bool)

(declare-fun tp!734485 () Bool)

(assert (=> b!2313760 (= e!1483103 tp!734485)))

(declare-fun b!2313761 () Bool)

(assert (=> b!2313761 (= e!1483101 e!1483100)))

(declare-fun res!988864 () Bool)

(assert (=> b!2313761 (=> (not res!988864) (not e!1483100))))

(declare-fun lt!857920 () Int)

(assert (=> b!2313761 (= res!988864 (and (<= from!1022 lt!857920) (= totalInputSize!275 lt!857920)))))

(declare-fun size!21778 (BalanceConc!17738) Int)

(assert (=> b!2313761 (= lt!857920 (size!21778 totalInput!830))))

(assert (= (and start!228274 res!988863) b!2313761))

(assert (= (and b!2313761 res!988864) b!2313757))

(assert (= (and b!2313757 (not res!988862)) b!2313758))

(assert (= start!228274 b!2313759))

(assert (= (and start!228274 condSetEmpty!20794) setIsEmpty!20794))

(assert (= (and start!228274 (not condSetEmpty!20794)) setNonEmpty!20794))

(assert (= setNonEmpty!20794 b!2313760))

(declare-fun m!2741015 () Bool)

(assert (=> b!2313761 m!2741015))

(declare-fun m!2741017 () Bool)

(assert (=> start!228274 m!2741017))

(declare-fun m!2741019 () Bool)

(assert (=> b!2313759 m!2741019))

(declare-fun m!2741021 () Bool)

(assert (=> setNonEmpty!20794 m!2741021))

(declare-fun m!2741023 () Bool)

(assert (=> b!2313758 m!2741023))

(check-sat (not b!2313759) (not b!2313761) (not start!228274) (not setNonEmpty!20794) (not b!2313760) (not b!2313758))
(check-sat)
