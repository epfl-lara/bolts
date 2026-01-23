; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272448 () Bool)

(assert start!272448)

(declare-fun setIsEmpty!24717 () Bool)

(declare-fun setRes!24717 () Bool)

(assert (=> setIsEmpty!24717 setRes!24717))

(declare-fun b!2813434 () Bool)

(declare-fun e!1779228 () Bool)

(assert (=> b!2813434 (= e!1779228 (not true))))

(declare-datatypes ((C!16756 0))(
  ( (C!16757 (val!10358 Int)) )
))
(declare-datatypes ((List!33016 0))(
  ( (Nil!32892) (Cons!32892 (h!38312 C!16756) (t!229990 List!33016)) )
))
(declare-fun lt!1005212 () List!33016)

(declare-datatypes ((IArray!20389 0))(
  ( (IArray!20390 (innerList!10252 List!33016)) )
))
(declare-datatypes ((Conc!10192 0))(
  ( (Node!10192 (left!24811 Conc!10192) (right!25141 Conc!10192) (csize!20614 Int) (cheight!10403 Int)) (Leaf!15528 (xs!13304 IArray!20389) (csize!20615 Int)) (Empty!10192) )
))
(declare-datatypes ((BalanceConc!20022 0))(
  ( (BalanceConc!20023 (c!455891 Conc!10192)) )
))
(declare-fun input!3732 () BalanceConc!20022)

(declare-fun i!1825 () Int)

(declare-fun dropList!988 (BalanceConc!20022 Int) List!33016)

(assert (=> b!2813434 (= lt!1005212 (dropList!988 input!3732 i!1825))))

(declare-fun lt!1005211 () List!33016)

(declare-fun lt!1005208 () List!33016)

(declare-fun tail!4444 (List!33016) List!33016)

(declare-fun drop!1766 (List!33016 Int) List!33016)

(assert (=> b!2813434 (= (tail!4444 lt!1005211) (drop!1766 lt!1005208 (+ 1 i!1825)))))

(declare-datatypes ((Unit!46888 0))(
  ( (Unit!46889) )
))
(declare-fun lt!1005210 () Unit!46888)

(declare-fun lemmaDropTail!860 (List!33016 Int) Unit!46888)

(assert (=> b!2813434 (= lt!1005210 (lemmaDropTail!860 lt!1005208 i!1825))))

(declare-fun head!6219 (List!33016) C!16756)

(declare-fun apply!7664 (List!33016 Int) C!16756)

(assert (=> b!2813434 (= (head!6219 lt!1005211) (apply!7664 lt!1005208 i!1825))))

(assert (=> b!2813434 (= lt!1005211 (drop!1766 lt!1005208 i!1825))))

(declare-fun lt!1005206 () Unit!46888)

(declare-fun lemmaDropApply!970 (List!33016 Int) Unit!46888)

(assert (=> b!2813434 (= lt!1005206 (lemmaDropApply!970 lt!1005208 i!1825))))

(declare-fun list!12323 (BalanceConc!20022) List!33016)

(assert (=> b!2813434 (= lt!1005208 (list!12323 input!3732))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8295 0))(
  ( (ElementMatch!8295 (c!455892 C!16756)) (Concat!13435 (regOne!17102 Regex!8295) (regTwo!17102 Regex!8295)) (EmptyExpr!8295) (Star!8295 (reg!8624 Regex!8295)) (EmptyLang!8295) (Union!8295 (regOne!17103 Regex!8295) (regTwo!17103 Regex!8295)) )
))
(declare-datatypes ((List!33017 0))(
  ( (Nil!32893) (Cons!32893 (h!38313 Regex!8295) (t!229991 List!33017)) )
))
(declare-datatypes ((Context!4922 0))(
  ( (Context!4923 (exprs!2961 List!33017)) )
))
(declare-fun lt!1005213 () (InoxSet Context!4922))

(declare-fun matchZipper!385 ((InoxSet Context!4922) List!33016) Bool)

(declare-fun matchZipperSequence!30 ((InoxSet Context!4922) BalanceConc!20022 Int) Bool)

(assert (=> b!2813434 (= (matchZipper!385 lt!1005213 (dropList!988 input!3732 (+ 1 i!1825))) (matchZipperSequence!30 lt!1005213 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005207 () Unit!46888)

(declare-fun lemmaMatchZipperSequenceEquivalent!26 ((InoxSet Context!4922) BalanceConc!20022 Int) Unit!46888)

(assert (=> b!2813434 (= lt!1005207 (lemmaMatchZipperSequenceEquivalent!26 lt!1005213 input!3732 (+ 1 i!1825)))))

(declare-fun z!592 () (InoxSet Context!4922))

(declare-fun derivationStepZipper!391 ((InoxSet Context!4922) C!16756) (InoxSet Context!4922))

(declare-fun apply!7665 (BalanceConc!20022 Int) C!16756)

(assert (=> b!2813434 (= lt!1005213 (derivationStepZipper!391 z!592 (apply!7665 input!3732 i!1825)))))

(declare-fun b!2813435 () Bool)

(declare-fun e!1779226 () Bool)

(assert (=> b!2813435 (= e!1779226 e!1779228)))

(declare-fun res!1171159 () Bool)

(assert (=> b!2813435 (=> (not res!1171159) (not e!1779228))))

(declare-fun lt!1005209 () Int)

(assert (=> b!2813435 (= res!1171159 (and (<= i!1825 lt!1005209) (not (= i!1825 lt!1005209))))))

(declare-fun size!25632 (BalanceConc!20022) Int)

(assert (=> b!2813435 (= lt!1005209 (size!25632 input!3732))))

(declare-fun b!2813436 () Bool)

(declare-fun e!1779227 () Bool)

(declare-fun tp!898404 () Bool)

(assert (=> b!2813436 (= e!1779227 tp!898404)))

(declare-fun b!2813437 () Bool)

(declare-fun e!1779229 () Bool)

(declare-fun tp!898402 () Bool)

(declare-fun inv!44687 (Conc!10192) Bool)

(assert (=> b!2813437 (= e!1779229 (and (inv!44687 (c!455891 input!3732)) tp!898402))))

(declare-fun setNonEmpty!24717 () Bool)

(declare-fun tp!898403 () Bool)

(declare-fun setElem!24717 () Context!4922)

(declare-fun inv!44688 (Context!4922) Bool)

(assert (=> setNonEmpty!24717 (= setRes!24717 (and tp!898403 (inv!44688 setElem!24717) e!1779227))))

(declare-fun setRest!24717 () (InoxSet Context!4922))

(assert (=> setNonEmpty!24717 (= z!592 ((_ map or) (store ((as const (Array Context!4922 Bool)) false) setElem!24717 true) setRest!24717))))

(declare-fun res!1171160 () Bool)

(assert (=> start!272448 (=> (not res!1171160) (not e!1779226))))

(assert (=> start!272448 (= res!1171160 (>= i!1825 0))))

(assert (=> start!272448 e!1779226))

(assert (=> start!272448 true))

(declare-fun inv!44689 (BalanceConc!20022) Bool)

(assert (=> start!272448 (and (inv!44689 input!3732) e!1779229)))

(declare-fun condSetEmpty!24717 () Bool)

(assert (=> start!272448 (= condSetEmpty!24717 (= z!592 ((as const (Array Context!4922 Bool)) false)))))

(assert (=> start!272448 setRes!24717))

(assert (= (and start!272448 res!1171160) b!2813435))

(assert (= (and b!2813435 res!1171159) b!2813434))

(assert (= start!272448 b!2813437))

(assert (= (and start!272448 condSetEmpty!24717) setIsEmpty!24717))

(assert (= (and start!272448 (not condSetEmpty!24717)) setNonEmpty!24717))

(assert (= setNonEmpty!24717 b!2813436))

(declare-fun m!3243943 () Bool)

(assert (=> b!2813437 m!3243943))

(declare-fun m!3243945 () Bool)

(assert (=> start!272448 m!3243945))

(declare-fun m!3243947 () Bool)

(assert (=> b!2813435 m!3243947))

(declare-fun m!3243949 () Bool)

(assert (=> b!2813434 m!3243949))

(declare-fun m!3243951 () Bool)

(assert (=> b!2813434 m!3243951))

(declare-fun m!3243953 () Bool)

(assert (=> b!2813434 m!3243953))

(declare-fun m!3243955 () Bool)

(assert (=> b!2813434 m!3243955))

(declare-fun m!3243957 () Bool)

(assert (=> b!2813434 m!3243957))

(declare-fun m!3243959 () Bool)

(assert (=> b!2813434 m!3243959))

(assert (=> b!2813434 m!3243953))

(declare-fun m!3243961 () Bool)

(assert (=> b!2813434 m!3243961))

(declare-fun m!3243963 () Bool)

(assert (=> b!2813434 m!3243963))

(declare-fun m!3243965 () Bool)

(assert (=> b!2813434 m!3243965))

(declare-fun m!3243967 () Bool)

(assert (=> b!2813434 m!3243967))

(declare-fun m!3243969 () Bool)

(assert (=> b!2813434 m!3243969))

(declare-fun m!3243971 () Bool)

(assert (=> b!2813434 m!3243971))

(declare-fun m!3243973 () Bool)

(assert (=> b!2813434 m!3243973))

(assert (=> b!2813434 m!3243961))

(declare-fun m!3243975 () Bool)

(assert (=> b!2813434 m!3243975))

(declare-fun m!3243977 () Bool)

(assert (=> b!2813434 m!3243977))

(declare-fun m!3243979 () Bool)

(assert (=> setNonEmpty!24717 m!3243979))

(check-sat (not setNonEmpty!24717) (not start!272448) (not b!2813437) (not b!2813435) (not b!2813434) (not b!2813436))
(check-sat)
