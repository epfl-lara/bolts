; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272436 () Bool)

(assert start!272436)

(declare-fun b!2813362 () Bool)

(declare-fun e!1779155 () Bool)

(declare-datatypes ((C!16744 0))(
  ( (C!16745 (val!10352 Int)) )
))
(declare-datatypes ((List!33004 0))(
  ( (Nil!32880) (Cons!32880 (h!38300 C!16744) (t!229978 List!33004)) )
))
(declare-datatypes ((IArray!20377 0))(
  ( (IArray!20378 (innerList!10246 List!33004)) )
))
(declare-datatypes ((Conc!10186 0))(
  ( (Node!10186 (left!24802 Conc!10186) (right!25132 Conc!10186) (csize!20602 Int) (cheight!10397 Int)) (Leaf!15519 (xs!13298 IArray!20377) (csize!20603 Int)) (Empty!10186) )
))
(declare-datatypes ((BalanceConc!20010 0))(
  ( (BalanceConc!20011 (c!455879 Conc!10186)) )
))
(declare-fun input!3732 () BalanceConc!20010)

(declare-fun tp!898350 () Bool)

(declare-fun inv!44660 (Conc!10186) Bool)

(assert (=> b!2813362 (= e!1779155 (and (inv!44660 (c!455879 input!3732)) tp!898350))))

(declare-fun setNonEmpty!24699 () Bool)

(declare-fun tp!898349 () Bool)

(declare-fun setRes!24699 () Bool)

(declare-fun e!1779156 () Bool)

(declare-datatypes ((Regex!8289 0))(
  ( (ElementMatch!8289 (c!455880 C!16744)) (Concat!13429 (regOne!17090 Regex!8289) (regTwo!17090 Regex!8289)) (EmptyExpr!8289) (Star!8289 (reg!8618 Regex!8289)) (EmptyLang!8289) (Union!8289 (regOne!17091 Regex!8289) (regTwo!17091 Regex!8289)) )
))
(declare-datatypes ((List!33005 0))(
  ( (Nil!32881) (Cons!32881 (h!38301 Regex!8289) (t!229979 List!33005)) )
))
(declare-datatypes ((Context!4910 0))(
  ( (Context!4911 (exprs!2955 List!33005)) )
))
(declare-fun setElem!24699 () Context!4910)

(declare-fun inv!44661 (Context!4910) Bool)

(assert (=> setNonEmpty!24699 (= setRes!24699 (and tp!898349 (inv!44661 setElem!24699) e!1779156))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!592 () (InoxSet Context!4910))

(declare-fun setRest!24699 () (InoxSet Context!4910))

(assert (=> setNonEmpty!24699 (= z!592 ((_ map or) (store ((as const (Array Context!4910 Bool)) false) setElem!24699 true) setRest!24699))))

(declare-fun setIsEmpty!24699 () Bool)

(assert (=> setIsEmpty!24699 setRes!24699))

(declare-fun b!2813364 () Bool)

(declare-fun e!1779157 () Bool)

(declare-fun e!1779154 () Bool)

(assert (=> b!2813364 (= e!1779157 e!1779154)))

(declare-fun res!1171123 () Bool)

(assert (=> b!2813364 (=> (not res!1171123) (not e!1779154))))

(declare-fun i!1825 () Int)

(declare-fun lt!1005085 () Int)

(assert (=> b!2813364 (= res!1171123 (and (<= i!1825 lt!1005085) (not (= i!1825 lt!1005085))))))

(declare-fun size!25623 (BalanceConc!20010) Int)

(assert (=> b!2813364 (= lt!1005085 (size!25623 input!3732))))

(declare-fun b!2813365 () Bool)

(declare-fun tp!898348 () Bool)

(assert (=> b!2813365 (= e!1779156 tp!898348)))

(declare-fun b!2813363 () Bool)

(assert (=> b!2813363 (= e!1779154 (not true))))

(declare-fun lt!1005086 () Int)

(declare-fun size!25624 (List!33004) Int)

(declare-fun list!12317 (BalanceConc!20010) List!33004)

(assert (=> b!2813363 (= lt!1005086 (size!25624 (list!12317 input!3732)))))

(declare-fun lt!1005087 () (InoxSet Context!4910))

(declare-fun matchZipper!379 ((InoxSet Context!4910) List!33004) Bool)

(declare-fun dropList!982 (BalanceConc!20010 Int) List!33004)

(declare-fun matchZipperSequence!24 ((InoxSet Context!4910) BalanceConc!20010 Int) Bool)

(assert (=> b!2813363 (= (matchZipper!379 lt!1005087 (dropList!982 input!3732 (+ 1 i!1825))) (matchZipperSequence!24 lt!1005087 input!3732 (+ 1 i!1825)))))

(declare-datatypes ((Unit!46876 0))(
  ( (Unit!46877) )
))
(declare-fun lt!1005084 () Unit!46876)

(declare-fun lemmaMatchZipperSequenceEquivalent!20 ((InoxSet Context!4910) BalanceConc!20010 Int) Unit!46876)

(assert (=> b!2813363 (= lt!1005084 (lemmaMatchZipperSequenceEquivalent!20 lt!1005087 input!3732 (+ 1 i!1825)))))

(declare-fun derivationStepZipper!385 ((InoxSet Context!4910) C!16744) (InoxSet Context!4910))

(declare-fun apply!7653 (BalanceConc!20010 Int) C!16744)

(assert (=> b!2813363 (= lt!1005087 (derivationStepZipper!385 z!592 (apply!7653 input!3732 i!1825)))))

(declare-fun res!1171124 () Bool)

(assert (=> start!272436 (=> (not res!1171124) (not e!1779157))))

(assert (=> start!272436 (= res!1171124 (>= i!1825 0))))

(assert (=> start!272436 e!1779157))

(assert (=> start!272436 true))

(declare-fun inv!44662 (BalanceConc!20010) Bool)

(assert (=> start!272436 (and (inv!44662 input!3732) e!1779155)))

(declare-fun condSetEmpty!24699 () Bool)

(assert (=> start!272436 (= condSetEmpty!24699 (= z!592 ((as const (Array Context!4910 Bool)) false)))))

(assert (=> start!272436 setRes!24699))

(assert (= (and start!272436 res!1171124) b!2813364))

(assert (= (and b!2813364 res!1171123) b!2813363))

(assert (= start!272436 b!2813362))

(assert (= (and start!272436 condSetEmpty!24699) setIsEmpty!24699))

(assert (= (and start!272436 (not condSetEmpty!24699)) setNonEmpty!24699))

(assert (= setNonEmpty!24699 b!2813365))

(declare-fun m!3243745 () Bool)

(assert (=> b!2813364 m!3243745))

(declare-fun m!3243747 () Bool)

(assert (=> start!272436 m!3243747))

(declare-fun m!3243749 () Bool)

(assert (=> setNonEmpty!24699 m!3243749))

(declare-fun m!3243751 () Bool)

(assert (=> b!2813362 m!3243751))

(declare-fun m!3243753 () Bool)

(assert (=> b!2813363 m!3243753))

(declare-fun m!3243755 () Bool)

(assert (=> b!2813363 m!3243755))

(declare-fun m!3243757 () Bool)

(assert (=> b!2813363 m!3243757))

(declare-fun m!3243759 () Bool)

(assert (=> b!2813363 m!3243759))

(declare-fun m!3243761 () Bool)

(assert (=> b!2813363 m!3243761))

(declare-fun m!3243763 () Bool)

(assert (=> b!2813363 m!3243763))

(assert (=> b!2813363 m!3243755))

(assert (=> b!2813363 m!3243759))

(declare-fun m!3243765 () Bool)

(assert (=> b!2813363 m!3243765))

(declare-fun m!3243767 () Bool)

(assert (=> b!2813363 m!3243767))

(assert (=> b!2813363 m!3243765))

(check-sat (not b!2813363) (not start!272436) (not b!2813364) (not b!2813365) (not setNonEmpty!24699) (not b!2813362))
(check-sat)
