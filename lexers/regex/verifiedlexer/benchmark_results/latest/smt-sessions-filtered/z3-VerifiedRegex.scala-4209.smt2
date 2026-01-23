; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228278 () Bool)

(assert start!228278)

(declare-datatypes ((C!13704 0))(
  ( (C!13705 (val!7908 Int)) )
))
(declare-datatypes ((Regex!6775 0))(
  ( (ElementMatch!6775 (c!366793 C!13704)) (Concat!11363 (regOne!14062 Regex!6775) (regTwo!14062 Regex!6775)) (EmptyExpr!6775) (Star!6775 (reg!7104 Regex!6775)) (EmptyLang!6775) (Union!6775 (regOne!14063 Regex!6775) (regTwo!14063 Regex!6775)) )
))
(declare-datatypes ((List!27662 0))(
  ( (Nil!27564) (Cons!27564 (h!32965 Regex!6775) (t!207262 List!27662)) )
))
(declare-datatypes ((Context!4194 0))(
  ( (Context!4195 (exprs!2597 List!27662)) )
))
(declare-fun setElem!20800 () Context!4194)

(declare-fun setRes!20800 () Bool)

(declare-fun setNonEmpty!20800 () Bool)

(declare-fun e!1483127 () Bool)

(declare-fun tp!734505 () Bool)

(declare-fun inv!37324 (Context!4194) Bool)

(assert (=> setNonEmpty!20800 (= setRes!20800 (and tp!734505 (inv!37324 setElem!20800) e!1483127))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3800 () (InoxSet Context!4194))

(declare-fun setRest!20800 () (InoxSet Context!4194))

(assert (=> setNonEmpty!20800 (= z!3800 ((_ map or) (store ((as const (Array Context!4194 Bool)) false) setElem!20800 true) setRest!20800))))

(declare-fun b!2313787 () Bool)

(declare-fun e!1483128 () Bool)

(declare-fun e!1483126 () Bool)

(assert (=> b!2313787 (= e!1483128 e!1483126)))

(declare-fun res!988882 () Bool)

(assert (=> b!2313787 (=> (not res!988882) (not e!1483126))))

(declare-fun totalInputSize!275 () Int)

(declare-fun lt!857927 () Int)

(declare-fun from!1022 () Int)

(assert (=> b!2313787 (= res!988882 (and (<= from!1022 lt!857927) (= totalInputSize!275 lt!857927) (not (= from!1022 totalInputSize!275))))))

(declare-datatypes ((List!27663 0))(
  ( (Nil!27565) (Cons!27565 (h!32966 C!13704) (t!207263 List!27663)) )
))
(declare-datatypes ((IArray!18015 0))(
  ( (IArray!18016 (innerList!9065 List!27663)) )
))
(declare-datatypes ((Conc!9005 0))(
  ( (Node!9005 (left!20902 Conc!9005) (right!21232 Conc!9005) (csize!18240 Int) (cheight!9216 Int)) (Leaf!13215 (xs!11947 IArray!18015) (csize!18241 Int)) (Empty!9005) )
))
(declare-datatypes ((BalanceConc!17742 0))(
  ( (BalanceConc!17743 (c!366794 Conc!9005)) )
))
(declare-fun totalInput!830 () BalanceConc!17742)

(declare-fun size!21780 (BalanceConc!17742) Int)

(assert (=> b!2313787 (= lt!857927 (size!21780 totalInput!830))))

(declare-fun b!2313788 () Bool)

(assert (=> b!2313788 (= e!1483126 (or (> 0 from!1022) (>= from!1022 lt!857927)))))

(declare-fun b!2313789 () Bool)

(declare-fun e!1483125 () Bool)

(declare-fun tp!734503 () Bool)

(declare-fun inv!37325 (Conc!9005) Bool)

(assert (=> b!2313789 (= e!1483125 (and (inv!37325 (c!366794 totalInput!830)) tp!734503))))

(declare-fun res!988880 () Bool)

(assert (=> start!228278 (=> (not res!988880) (not e!1483128))))

(assert (=> start!228278 (= res!988880 (>= from!1022 0))))

(assert (=> start!228278 e!1483128))

(assert (=> start!228278 true))

(declare-fun inv!37326 (BalanceConc!17742) Bool)

(assert (=> start!228278 (and (inv!37326 totalInput!830) e!1483125)))

(declare-fun condSetEmpty!20800 () Bool)

(assert (=> start!228278 (= condSetEmpty!20800 (= z!3800 ((as const (Array Context!4194 Bool)) false)))))

(assert (=> start!228278 setRes!20800))

(declare-fun b!2313790 () Bool)

(declare-fun res!988881 () Bool)

(assert (=> b!2313790 (=> (not res!988881) (not e!1483126))))

(declare-fun lostCauseZipper!402 ((InoxSet Context!4194)) Bool)

(assert (=> b!2313790 (= res!988881 (not (lostCauseZipper!402 z!3800)))))

(declare-fun setIsEmpty!20800 () Bool)

(assert (=> setIsEmpty!20800 setRes!20800))

(declare-fun b!2313791 () Bool)

(declare-fun tp!734504 () Bool)

(assert (=> b!2313791 (= e!1483127 tp!734504)))

(assert (= (and start!228278 res!988880) b!2313787))

(assert (= (and b!2313787 res!988882) b!2313790))

(assert (= (and b!2313790 res!988881) b!2313788))

(assert (= start!228278 b!2313789))

(assert (= (and start!228278 condSetEmpty!20800) setIsEmpty!20800))

(assert (= (and start!228278 (not condSetEmpty!20800)) setNonEmpty!20800))

(assert (= setNonEmpty!20800 b!2313791))

(declare-fun m!2741035 () Bool)

(assert (=> start!228278 m!2741035))

(declare-fun m!2741037 () Bool)

(assert (=> b!2313789 m!2741037))

(declare-fun m!2741039 () Bool)

(assert (=> b!2313787 m!2741039))

(declare-fun m!2741041 () Bool)

(assert (=> setNonEmpty!20800 m!2741041))

(declare-fun m!2741043 () Bool)

(assert (=> b!2313790 m!2741043))

(check-sat (not b!2313790) (not start!228278) (not b!2313791) (not b!2313789) (not b!2313787) (not setNonEmpty!20800))
(check-sat)
