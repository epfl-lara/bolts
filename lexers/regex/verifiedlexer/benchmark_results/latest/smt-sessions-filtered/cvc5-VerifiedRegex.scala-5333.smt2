; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272438 () Bool)

(assert start!272438)

(declare-fun b!2813374 () Bool)

(declare-fun e!1779168 () Bool)

(declare-datatypes ((C!16746 0))(
  ( (C!16747 (val!10353 Int)) )
))
(declare-datatypes ((List!33006 0))(
  ( (Nil!32882) (Cons!32882 (h!38302 C!16746) (t!229980 List!33006)) )
))
(declare-datatypes ((IArray!20379 0))(
  ( (IArray!20380 (innerList!10247 List!33006)) )
))
(declare-datatypes ((Conc!10187 0))(
  ( (Node!10187 (left!24804 Conc!10187) (right!25134 Conc!10187) (csize!20604 Int) (cheight!10398 Int)) (Leaf!15521 (xs!13299 IArray!20379) (csize!20605 Int)) (Empty!10187) )
))
(declare-datatypes ((BalanceConc!20012 0))(
  ( (BalanceConc!20013 (c!455881 Conc!10187)) )
))
(declare-fun input!3732 () BalanceConc!20012)

(declare-fun tp!898358 () Bool)

(declare-fun inv!44666 (Conc!10187) Bool)

(assert (=> b!2813374 (= e!1779168 (and (inv!44666 (c!455881 input!3732)) tp!898358))))

(declare-fun b!2813375 () Bool)

(declare-fun e!1779166 () Bool)

(declare-fun tp!898357 () Bool)

(assert (=> b!2813375 (= e!1779166 tp!898357)))

(declare-fun setIsEmpty!24702 () Bool)

(declare-fun setRes!24702 () Bool)

(assert (=> setIsEmpty!24702 setRes!24702))

(declare-fun b!2813376 () Bool)

(declare-fun e!1779167 () Bool)

(assert (=> b!2813376 (= e!1779167 (not true))))

(declare-fun lt!1005104 () Int)

(declare-fun lt!1005100 () List!33006)

(declare-fun size!25625 (List!33006) Int)

(assert (=> b!2813376 (= lt!1005104 (size!25625 lt!1005100))))

(declare-fun i!1825 () Int)

(declare-fun head!6214 (List!33006) C!16746)

(declare-fun drop!1761 (List!33006 Int) List!33006)

(declare-fun apply!7654 (List!33006 Int) C!16746)

(assert (=> b!2813376 (= (head!6214 (drop!1761 lt!1005100 i!1825)) (apply!7654 lt!1005100 i!1825))))

(declare-datatypes ((Unit!46878 0))(
  ( (Unit!46879) )
))
(declare-fun lt!1005105 () Unit!46878)

(declare-fun lemmaDropApply!965 (List!33006 Int) Unit!46878)

(assert (=> b!2813376 (= lt!1005105 (lemmaDropApply!965 lt!1005100 i!1825))))

(declare-fun list!12318 (BalanceConc!20012) List!33006)

(assert (=> b!2813376 (= lt!1005100 (list!12318 input!3732))))

(declare-datatypes ((Regex!8290 0))(
  ( (ElementMatch!8290 (c!455882 C!16746)) (Concat!13430 (regOne!17092 Regex!8290) (regTwo!17092 Regex!8290)) (EmptyExpr!8290) (Star!8290 (reg!8619 Regex!8290)) (EmptyLang!8290) (Union!8290 (regOne!17093 Regex!8290) (regTwo!17093 Regex!8290)) )
))
(declare-datatypes ((List!33007 0))(
  ( (Nil!32883) (Cons!32883 (h!38303 Regex!8290) (t!229981 List!33007)) )
))
(declare-datatypes ((Context!4912 0))(
  ( (Context!4913 (exprs!2956 List!33007)) )
))
(declare-fun lt!1005102 () (Set Context!4912))

(declare-fun matchZipper!380 ((Set Context!4912) List!33006) Bool)

(declare-fun dropList!983 (BalanceConc!20012 Int) List!33006)

(declare-fun matchZipperSequence!25 ((Set Context!4912) BalanceConc!20012 Int) Bool)

(assert (=> b!2813376 (= (matchZipper!380 lt!1005102 (dropList!983 input!3732 (+ 1 i!1825))) (matchZipperSequence!25 lt!1005102 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005103 () Unit!46878)

(declare-fun lemmaMatchZipperSequenceEquivalent!21 ((Set Context!4912) BalanceConc!20012 Int) Unit!46878)

(assert (=> b!2813376 (= lt!1005103 (lemmaMatchZipperSequenceEquivalent!21 lt!1005102 input!3732 (+ 1 i!1825)))))

(declare-fun z!592 () (Set Context!4912))

(declare-fun derivationStepZipper!386 ((Set Context!4912) C!16746) (Set Context!4912))

(declare-fun apply!7655 (BalanceConc!20012 Int) C!16746)

(assert (=> b!2813376 (= lt!1005102 (derivationStepZipper!386 z!592 (apply!7655 input!3732 i!1825)))))

(declare-fun res!1171129 () Bool)

(declare-fun e!1779169 () Bool)

(assert (=> start!272438 (=> (not res!1171129) (not e!1779169))))

(assert (=> start!272438 (= res!1171129 (>= i!1825 0))))

(assert (=> start!272438 e!1779169))

(assert (=> start!272438 true))

(declare-fun inv!44667 (BalanceConc!20012) Bool)

(assert (=> start!272438 (and (inv!44667 input!3732) e!1779168)))

(declare-fun condSetEmpty!24702 () Bool)

(assert (=> start!272438 (= condSetEmpty!24702 (= z!592 (as set.empty (Set Context!4912))))))

(assert (=> start!272438 setRes!24702))

(declare-fun b!2813377 () Bool)

(assert (=> b!2813377 (= e!1779169 e!1779167)))

(declare-fun res!1171130 () Bool)

(assert (=> b!2813377 (=> (not res!1171130) (not e!1779167))))

(declare-fun lt!1005101 () Int)

(assert (=> b!2813377 (= res!1171130 (and (<= i!1825 lt!1005101) (not (= i!1825 lt!1005101))))))

(declare-fun size!25626 (BalanceConc!20012) Int)

(assert (=> b!2813377 (= lt!1005101 (size!25626 input!3732))))

(declare-fun setElem!24702 () Context!4912)

(declare-fun tp!898359 () Bool)

(declare-fun setNonEmpty!24702 () Bool)

(declare-fun inv!44668 (Context!4912) Bool)

(assert (=> setNonEmpty!24702 (= setRes!24702 (and tp!898359 (inv!44668 setElem!24702) e!1779166))))

(declare-fun setRest!24702 () (Set Context!4912))

(assert (=> setNonEmpty!24702 (= z!592 (set.union (set.insert setElem!24702 (as set.empty (Set Context!4912))) setRest!24702))))

(assert (= (and start!272438 res!1171129) b!2813377))

(assert (= (and b!2813377 res!1171130) b!2813376))

(assert (= start!272438 b!2813374))

(assert (= (and start!272438 condSetEmpty!24702) setIsEmpty!24702))

(assert (= (and start!272438 (not condSetEmpty!24702)) setNonEmpty!24702))

(assert (= setNonEmpty!24702 b!2813375))

(declare-fun m!3243769 () Bool)

(assert (=> b!2813377 m!3243769))

(declare-fun m!3243771 () Bool)

(assert (=> b!2813376 m!3243771))

(declare-fun m!3243773 () Bool)

(assert (=> b!2813376 m!3243773))

(declare-fun m!3243775 () Bool)

(assert (=> b!2813376 m!3243775))

(declare-fun m!3243777 () Bool)

(assert (=> b!2813376 m!3243777))

(declare-fun m!3243779 () Bool)

(assert (=> b!2813376 m!3243779))

(declare-fun m!3243781 () Bool)

(assert (=> b!2813376 m!3243781))

(assert (=> b!2813376 m!3243773))

(assert (=> b!2813376 m!3243777))

(declare-fun m!3243783 () Bool)

(assert (=> b!2813376 m!3243783))

(declare-fun m!3243785 () Bool)

(assert (=> b!2813376 m!3243785))

(declare-fun m!3243787 () Bool)

(assert (=> b!2813376 m!3243787))

(assert (=> b!2813376 m!3243781))

(declare-fun m!3243789 () Bool)

(assert (=> b!2813376 m!3243789))

(declare-fun m!3243791 () Bool)

(assert (=> b!2813376 m!3243791))

(declare-fun m!3243793 () Bool)

(assert (=> b!2813376 m!3243793))

(declare-fun m!3243795 () Bool)

(assert (=> b!2813374 m!3243795))

(declare-fun m!3243797 () Bool)

(assert (=> setNonEmpty!24702 m!3243797))

(declare-fun m!3243799 () Bool)

(assert (=> start!272438 m!3243799))

(push 1)

(assert (not b!2813374))

(assert (not setNonEmpty!24702))

(assert (not start!272438))

(assert (not b!2813376))

(assert (not b!2813375))

(assert (not b!2813377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

