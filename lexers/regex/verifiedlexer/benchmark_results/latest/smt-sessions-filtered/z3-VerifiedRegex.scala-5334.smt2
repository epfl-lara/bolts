; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272444 () Bool)

(assert start!272444)

(declare-fun b!2813410 () Bool)

(declare-fun e!1779203 () Bool)

(declare-datatypes ((C!16752 0))(
  ( (C!16753 (val!10356 Int)) )
))
(declare-datatypes ((List!33012 0))(
  ( (Nil!32888) (Cons!32888 (h!38308 C!16752) (t!229986 List!33012)) )
))
(declare-datatypes ((IArray!20385 0))(
  ( (IArray!20386 (innerList!10250 List!33012)) )
))
(declare-datatypes ((Conc!10190 0))(
  ( (Node!10190 (left!24808 Conc!10190) (right!25138 Conc!10190) (csize!20610 Int) (cheight!10401 Int)) (Leaf!15525 (xs!13302 IArray!20385) (csize!20611 Int)) (Empty!10190) )
))
(declare-datatypes ((BalanceConc!20018 0))(
  ( (BalanceConc!20019 (c!455887 Conc!10190)) )
))
(declare-fun input!3732 () BalanceConc!20018)

(declare-fun tp!898384 () Bool)

(declare-fun inv!44678 (Conc!10190) Bool)

(assert (=> b!2813410 (= e!1779203 (and (inv!44678 (c!455887 input!3732)) tp!898384))))

(declare-fun b!2813411 () Bool)

(declare-fun e!1779204 () Bool)

(declare-fun i!1825 () Int)

(declare-fun lt!1005165 () Int)

(assert (=> b!2813411 (= e!1779204 (not (and (<= 0 i!1825) (< i!1825 lt!1005165))))))

(declare-fun lt!1005162 () List!33012)

(declare-fun lt!1005160 () List!33012)

(declare-fun tail!4442 (List!33012) List!33012)

(declare-fun drop!1764 (List!33012 Int) List!33012)

(assert (=> b!2813411 (= (tail!4442 lt!1005162) (drop!1764 lt!1005160 (+ 1 i!1825)))))

(declare-datatypes ((Unit!46884 0))(
  ( (Unit!46885) )
))
(declare-fun lt!1005159 () Unit!46884)

(declare-fun lemmaDropTail!858 (List!33012 Int) Unit!46884)

(assert (=> b!2813411 (= lt!1005159 (lemmaDropTail!858 lt!1005160 i!1825))))

(declare-fun head!6217 (List!33012) C!16752)

(declare-fun apply!7660 (List!33012 Int) C!16752)

(assert (=> b!2813411 (= (head!6217 lt!1005162) (apply!7660 lt!1005160 i!1825))))

(assert (=> b!2813411 (= lt!1005162 (drop!1764 lt!1005160 i!1825))))

(declare-fun lt!1005161 () Unit!46884)

(declare-fun lemmaDropApply!968 (List!33012 Int) Unit!46884)

(assert (=> b!2813411 (= lt!1005161 (lemmaDropApply!968 lt!1005160 i!1825))))

(declare-fun list!12321 (BalanceConc!20018) List!33012)

(assert (=> b!2813411 (= lt!1005160 (list!12321 input!3732))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8293 0))(
  ( (ElementMatch!8293 (c!455888 C!16752)) (Concat!13433 (regOne!17098 Regex!8293) (regTwo!17098 Regex!8293)) (EmptyExpr!8293) (Star!8293 (reg!8622 Regex!8293)) (EmptyLang!8293) (Union!8293 (regOne!17099 Regex!8293) (regTwo!17099 Regex!8293)) )
))
(declare-datatypes ((List!33013 0))(
  ( (Nil!32889) (Cons!32889 (h!38309 Regex!8293) (t!229987 List!33013)) )
))
(declare-datatypes ((Context!4918 0))(
  ( (Context!4919 (exprs!2959 List!33013)) )
))
(declare-fun lt!1005164 () (InoxSet Context!4918))

(declare-fun matchZipper!383 ((InoxSet Context!4918) List!33012) Bool)

(declare-fun dropList!986 (BalanceConc!20018 Int) List!33012)

(declare-fun matchZipperSequence!28 ((InoxSet Context!4918) BalanceConc!20018 Int) Bool)

(assert (=> b!2813411 (= (matchZipper!383 lt!1005164 (dropList!986 input!3732 (+ 1 i!1825))) (matchZipperSequence!28 lt!1005164 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005163 () Unit!46884)

(declare-fun lemmaMatchZipperSequenceEquivalent!24 ((InoxSet Context!4918) BalanceConc!20018 Int) Unit!46884)

(assert (=> b!2813411 (= lt!1005163 (lemmaMatchZipperSequenceEquivalent!24 lt!1005164 input!3732 (+ 1 i!1825)))))

(declare-fun z!592 () (InoxSet Context!4918))

(declare-fun derivationStepZipper!389 ((InoxSet Context!4918) C!16752) (InoxSet Context!4918))

(declare-fun apply!7661 (BalanceConc!20018 Int) C!16752)

(assert (=> b!2813411 (= lt!1005164 (derivationStepZipper!389 z!592 (apply!7661 input!3732 i!1825)))))

(declare-fun b!2813412 () Bool)

(declare-fun e!1779202 () Bool)

(assert (=> b!2813412 (= e!1779202 e!1779204)))

(declare-fun res!1171147 () Bool)

(assert (=> b!2813412 (=> (not res!1171147) (not e!1779204))))

(assert (=> b!2813412 (= res!1171147 (and (<= i!1825 lt!1005165) (not (= i!1825 lt!1005165))))))

(declare-fun size!25630 (BalanceConc!20018) Int)

(assert (=> b!2813412 (= lt!1005165 (size!25630 input!3732))))

(declare-fun b!2813413 () Bool)

(declare-fun e!1779205 () Bool)

(declare-fun tp!898385 () Bool)

(assert (=> b!2813413 (= e!1779205 tp!898385)))

(declare-fun setIsEmpty!24711 () Bool)

(declare-fun setRes!24711 () Bool)

(assert (=> setIsEmpty!24711 setRes!24711))

(declare-fun res!1171148 () Bool)

(assert (=> start!272444 (=> (not res!1171148) (not e!1779202))))

(assert (=> start!272444 (= res!1171148 (>= i!1825 0))))

(assert (=> start!272444 e!1779202))

(assert (=> start!272444 true))

(declare-fun inv!44679 (BalanceConc!20018) Bool)

(assert (=> start!272444 (and (inv!44679 input!3732) e!1779203)))

(declare-fun condSetEmpty!24711 () Bool)

(assert (=> start!272444 (= condSetEmpty!24711 (= z!592 ((as const (Array Context!4918 Bool)) false)))))

(assert (=> start!272444 setRes!24711))

(declare-fun setElem!24711 () Context!4918)

(declare-fun tp!898386 () Bool)

(declare-fun setNonEmpty!24711 () Bool)

(declare-fun inv!44680 (Context!4918) Bool)

(assert (=> setNonEmpty!24711 (= setRes!24711 (and tp!898386 (inv!44680 setElem!24711) e!1779205))))

(declare-fun setRest!24711 () (InoxSet Context!4918))

(assert (=> setNonEmpty!24711 (= z!592 ((_ map or) (store ((as const (Array Context!4918 Bool)) false) setElem!24711 true) setRest!24711))))

(assert (= (and start!272444 res!1171148) b!2813412))

(assert (= (and b!2813412 res!1171147) b!2813411))

(assert (= start!272444 b!2813410))

(assert (= (and start!272444 condSetEmpty!24711) setIsEmpty!24711))

(assert (= (and start!272444 (not condSetEmpty!24711)) setNonEmpty!24711))

(assert (= setNonEmpty!24711 b!2813413))

(declare-fun m!3243869 () Bool)

(assert (=> setNonEmpty!24711 m!3243869))

(declare-fun m!3243871 () Bool)

(assert (=> start!272444 m!3243871))

(declare-fun m!3243873 () Bool)

(assert (=> b!2813412 m!3243873))

(declare-fun m!3243875 () Bool)

(assert (=> b!2813411 m!3243875))

(declare-fun m!3243877 () Bool)

(assert (=> b!2813411 m!3243877))

(declare-fun m!3243879 () Bool)

(assert (=> b!2813411 m!3243879))

(declare-fun m!3243881 () Bool)

(assert (=> b!2813411 m!3243881))

(declare-fun m!3243883 () Bool)

(assert (=> b!2813411 m!3243883))

(declare-fun m!3243885 () Bool)

(assert (=> b!2813411 m!3243885))

(declare-fun m!3243887 () Bool)

(assert (=> b!2813411 m!3243887))

(declare-fun m!3243889 () Bool)

(assert (=> b!2813411 m!3243889))

(declare-fun m!3243891 () Bool)

(assert (=> b!2813411 m!3243891))

(assert (=> b!2813411 m!3243887))

(declare-fun m!3243893 () Bool)

(assert (=> b!2813411 m!3243893))

(declare-fun m!3243895 () Bool)

(assert (=> b!2813411 m!3243895))

(declare-fun m!3243897 () Bool)

(assert (=> b!2813411 m!3243897))

(declare-fun m!3243899 () Bool)

(assert (=> b!2813411 m!3243899))

(assert (=> b!2813411 m!3243877))

(declare-fun m!3243901 () Bool)

(assert (=> b!2813411 m!3243901))

(declare-fun m!3243903 () Bool)

(assert (=> b!2813410 m!3243903))

(check-sat (not b!2813412) (not b!2813410) (not b!2813411) (not setNonEmpty!24711) (not start!272444) (not b!2813413))
(check-sat)
