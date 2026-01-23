; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272682 () Bool)

(assert start!272682)

(declare-fun b!2814876 () Bool)

(declare-fun e!1780051 () Bool)

(declare-fun e!1780050 () Bool)

(assert (=> b!2814876 (= e!1780051 (not e!1780050))))

(declare-fun res!1171635 () Bool)

(assert (=> b!2814876 (=> res!1171635 e!1780050)))

(declare-datatypes ((C!16770 0))(
  ( (C!16771 (val!10365 Int)) )
))
(declare-fun lt!1005569 () C!16770)

(declare-datatypes ((List!33028 0))(
  ( (Nil!32904) (Cons!32904 (h!38324 C!16770) (t!230022 List!33028)) )
))
(declare-fun lt!1005570 () List!33028)

(declare-fun lt!1005571 () List!33028)

(declare-fun $colon$colon!578 (List!33028 C!16770) List!33028)

(assert (=> b!2814876 (= res!1171635 (not (= lt!1005570 ($colon$colon!578 lt!1005571 lt!1005569))))))

(declare-datatypes ((IArray!20403 0))(
  ( (IArray!20404 (innerList!10259 List!33028)) )
))
(declare-datatypes ((Conc!10199 0))(
  ( (Node!10199 (left!24826 Conc!10199) (right!25156 Conc!10199) (csize!20628 Int) (cheight!10410 Int)) (Leaf!15539 (xs!13311 IArray!20403) (csize!20629 Int)) (Empty!10199) )
))
(declare-datatypes ((BalanceConc!20036 0))(
  ( (BalanceConc!20037 (c!456257 Conc!10199)) )
))
(declare-fun input!3732 () BalanceConc!20036)

(declare-fun i!1825 () Int)

(declare-fun dropList!995 (BalanceConc!20036 Int) List!33028)

(assert (=> b!2814876 (= lt!1005570 (dropList!995 input!3732 i!1825))))

(declare-fun lt!1005574 () List!33028)

(declare-fun lt!1005575 () List!33028)

(declare-fun tail!4449 (List!33028) List!33028)

(declare-fun drop!1773 (List!33028 Int) List!33028)

(assert (=> b!2814876 (= (tail!4449 lt!1005574) (drop!1773 lt!1005575 (+ 1 i!1825)))))

(declare-datatypes ((Unit!46898 0))(
  ( (Unit!46899) )
))
(declare-fun lt!1005568 () Unit!46898)

(declare-fun lemmaDropTail!865 (List!33028 Int) Unit!46898)

(assert (=> b!2814876 (= lt!1005568 (lemmaDropTail!865 lt!1005575 i!1825))))

(declare-fun head!6224 (List!33028) C!16770)

(declare-fun apply!7678 (List!33028 Int) C!16770)

(assert (=> b!2814876 (= (head!6224 lt!1005574) (apply!7678 lt!1005575 i!1825))))

(assert (=> b!2814876 (= lt!1005574 (drop!1773 lt!1005575 i!1825))))

(declare-fun lt!1005573 () Unit!46898)

(declare-fun lemmaDropApply!975 (List!33028 Int) Unit!46898)

(assert (=> b!2814876 (= lt!1005573 (lemmaDropApply!975 lt!1005575 i!1825))))

(declare-fun list!12338 (BalanceConc!20036) List!33028)

(assert (=> b!2814876 (= lt!1005575 (list!12338 input!3732))))

(declare-datatypes ((Regex!8300 0))(
  ( (ElementMatch!8300 (c!456258 C!16770)) (Concat!13440 (regOne!17112 Regex!8300) (regTwo!17112 Regex!8300)) (EmptyExpr!8300) (Star!8300 (reg!8629 Regex!8300)) (EmptyLang!8300) (Union!8300 (regOne!17113 Regex!8300) (regTwo!17113 Regex!8300)) )
))
(declare-datatypes ((List!33029 0))(
  ( (Nil!32905) (Cons!32905 (h!38325 Regex!8300) (t!230023 List!33029)) )
))
(declare-datatypes ((Context!4932 0))(
  ( (Context!4933 (exprs!2966 List!33029)) )
))
(declare-fun lt!1005567 () (Set Context!4932))

(declare-fun matchZipper!390 ((Set Context!4932) List!33028) Bool)

(declare-fun matchZipperSequence!35 ((Set Context!4932) BalanceConc!20036 Int) Bool)

(assert (=> b!2814876 (= (matchZipper!390 lt!1005567 lt!1005571) (matchZipperSequence!35 lt!1005567 input!3732 (+ 1 i!1825)))))

(assert (=> b!2814876 (= lt!1005571 (dropList!995 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005566 () Unit!46898)

(declare-fun lemmaMatchZipperSequenceEquivalent!31 ((Set Context!4932) BalanceConc!20036 Int) Unit!46898)

(assert (=> b!2814876 (= lt!1005566 (lemmaMatchZipperSequenceEquivalent!31 lt!1005567 input!3732 (+ 1 i!1825)))))

(declare-fun z!592 () (Set Context!4932))

(declare-fun derivationStepZipper!396 ((Set Context!4932) C!16770) (Set Context!4932))

(assert (=> b!2814876 (= lt!1005567 (derivationStepZipper!396 z!592 lt!1005569))))

(declare-fun apply!7679 (BalanceConc!20036 Int) C!16770)

(assert (=> b!2814876 (= lt!1005569 (apply!7679 input!3732 i!1825))))

(declare-fun setIsEmpty!24740 () Bool)

(declare-fun setRes!24740 () Bool)

(assert (=> setIsEmpty!24740 setRes!24740))

(declare-fun setElem!24740 () Context!4932)

(declare-fun e!1780049 () Bool)

(declare-fun tp!898684 () Bool)

(declare-fun setNonEmpty!24740 () Bool)

(declare-fun inv!44730 (Context!4932) Bool)

(assert (=> setNonEmpty!24740 (= setRes!24740 (and tp!898684 (inv!44730 setElem!24740) e!1780049))))

(declare-fun setRest!24740 () (Set Context!4932))

(assert (=> setNonEmpty!24740 (= z!592 (set.union (set.insert setElem!24740 (as set.empty (Set Context!4932))) setRest!24740))))

(declare-fun b!2814877 () Bool)

(declare-fun tp!898683 () Bool)

(assert (=> b!2814877 (= e!1780049 tp!898683)))

(declare-fun b!2814878 () Bool)

(declare-fun e!1780048 () Bool)

(declare-fun tp!898685 () Bool)

(declare-fun inv!44731 (Conc!10199) Bool)

(assert (=> b!2814878 (= e!1780048 (and (inv!44731 (c!456257 input!3732)) tp!898685))))

(declare-fun b!2814880 () Bool)

(declare-fun e!1780052 () Bool)

(assert (=> b!2814880 (= e!1780052 e!1780051)))

(declare-fun res!1171637 () Bool)

(assert (=> b!2814880 (=> (not res!1171637) (not e!1780051))))

(declare-fun lt!1005572 () Int)

(assert (=> b!2814880 (= res!1171637 (and (<= i!1825 lt!1005572) (not (= i!1825 lt!1005572))))))

(declare-fun size!25647 (BalanceConc!20036) Int)

(assert (=> b!2814880 (= lt!1005572 (size!25647 input!3732))))

(declare-fun b!2814879 () Bool)

(assert (=> b!2814879 (= e!1780050 (= (matchZipper!390 z!592 lt!1005570) (matchZipperSequence!35 z!592 input!3732 i!1825)))))

(declare-fun res!1171636 () Bool)

(assert (=> start!272682 (=> (not res!1171636) (not e!1780052))))

(assert (=> start!272682 (= res!1171636 (>= i!1825 0))))

(assert (=> start!272682 e!1780052))

(assert (=> start!272682 true))

(declare-fun inv!44732 (BalanceConc!20036) Bool)

(assert (=> start!272682 (and (inv!44732 input!3732) e!1780048)))

(declare-fun condSetEmpty!24740 () Bool)

(assert (=> start!272682 (= condSetEmpty!24740 (= z!592 (as set.empty (Set Context!4932))))))

(assert (=> start!272682 setRes!24740))

(assert (= (and start!272682 res!1171636) b!2814880))

(assert (= (and b!2814880 res!1171637) b!2814876))

(assert (= (and b!2814876 (not res!1171635)) b!2814879))

(assert (= start!272682 b!2814878))

(assert (= (and start!272682 condSetEmpty!24740) setIsEmpty!24740))

(assert (= (and start!272682 (not condSetEmpty!24740)) setNonEmpty!24740))

(assert (= setNonEmpty!24740 b!2814877))

(declare-fun m!3245765 () Bool)

(assert (=> b!2814879 m!3245765))

(declare-fun m!3245767 () Bool)

(assert (=> b!2814879 m!3245767))

(declare-fun m!3245769 () Bool)

(assert (=> start!272682 m!3245769))

(declare-fun m!3245771 () Bool)

(assert (=> b!2814876 m!3245771))

(declare-fun m!3245773 () Bool)

(assert (=> b!2814876 m!3245773))

(declare-fun m!3245775 () Bool)

(assert (=> b!2814876 m!3245775))

(declare-fun m!3245777 () Bool)

(assert (=> b!2814876 m!3245777))

(declare-fun m!3245779 () Bool)

(assert (=> b!2814876 m!3245779))

(declare-fun m!3245781 () Bool)

(assert (=> b!2814876 m!3245781))

(declare-fun m!3245783 () Bool)

(assert (=> b!2814876 m!3245783))

(declare-fun m!3245785 () Bool)

(assert (=> b!2814876 m!3245785))

(declare-fun m!3245787 () Bool)

(assert (=> b!2814876 m!3245787))

(declare-fun m!3245789 () Bool)

(assert (=> b!2814876 m!3245789))

(declare-fun m!3245791 () Bool)

(assert (=> b!2814876 m!3245791))

(declare-fun m!3245793 () Bool)

(assert (=> b!2814876 m!3245793))

(declare-fun m!3245795 () Bool)

(assert (=> b!2814876 m!3245795))

(declare-fun m!3245797 () Bool)

(assert (=> b!2814876 m!3245797))

(declare-fun m!3245799 () Bool)

(assert (=> b!2814876 m!3245799))

(declare-fun m!3245801 () Bool)

(assert (=> b!2814876 m!3245801))

(declare-fun m!3245803 () Bool)

(assert (=> b!2814880 m!3245803))

(declare-fun m!3245805 () Bool)

(assert (=> b!2814878 m!3245805))

(declare-fun m!3245807 () Bool)

(assert (=> setNonEmpty!24740 m!3245807))

(push 1)

(assert (not b!2814880))

(assert (not start!272682))

(assert (not b!2814879))

(assert (not b!2814876))

(assert (not setNonEmpty!24740))

(assert (not b!2814878))

(assert (not b!2814877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!817422 () Bool)

(declare-fun c!456263 () Bool)

(assert (=> d!817422 (= c!456263 (is-Node!10199 (c!456257 input!3732)))))

(declare-fun e!1780072 () Bool)

(assert (=> d!817422 (= (inv!44731 (c!456257 input!3732)) e!1780072)))

(declare-fun b!2814902 () Bool)

(declare-fun inv!44736 (Conc!10199) Bool)

(assert (=> b!2814902 (= e!1780072 (inv!44736 (c!456257 input!3732)))))

(declare-fun b!2814903 () Bool)

(declare-fun e!1780073 () Bool)

(assert (=> b!2814903 (= e!1780072 e!1780073)))

(declare-fun res!1171649 () Bool)

(assert (=> b!2814903 (= res!1171649 (not (is-Leaf!15539 (c!456257 input!3732))))))

(assert (=> b!2814903 (=> res!1171649 e!1780073)))

(declare-fun b!2814904 () Bool)

(declare-fun inv!44737 (Conc!10199) Bool)

(assert (=> b!2814904 (= e!1780073 (inv!44737 (c!456257 input!3732)))))

(assert (= (and d!817422 c!456263) b!2814902))

(assert (= (and d!817422 (not c!456263)) b!2814903))

(assert (= (and b!2814903 (not res!1171649)) b!2814904))

(declare-fun m!3245853 () Bool)

(assert (=> b!2814902 m!3245853))

(declare-fun m!3245855 () Bool)

(assert (=> b!2814904 m!3245855))

(assert (=> b!2814878 d!817422))

(declare-fun d!817426 () Bool)

(declare-fun lt!1005608 () C!16770)

(declare-fun contains!6051 (List!33028 C!16770) Bool)

(assert (=> d!817426 (contains!6051 lt!1005575 lt!1005608)))

(declare-fun e!1780081 () C!16770)

(assert (=> d!817426 (= lt!1005608 e!1780081)))

(declare-fun c!456268 () Bool)

(assert (=> d!817426 (= c!456268 (= i!1825 0))))

(declare-fun e!1780080 () Bool)

(assert (=> d!817426 e!1780080))

(declare-fun res!1171652 () Bool)

(assert (=> d!817426 (=> (not res!1171652) (not e!1780080))))

(assert (=> d!817426 (= res!1171652 (<= 0 i!1825))))

(assert (=> d!817426 (= (apply!7678 lt!1005575 i!1825) lt!1005608)))

(declare-fun b!2814915 () Bool)

(declare-fun size!25649 (List!33028) Int)

(assert (=> b!2814915 (= e!1780080 (< i!1825 (size!25649 lt!1005575)))))

(declare-fun b!2814916 () Bool)

(assert (=> b!2814916 (= e!1780081 (head!6224 lt!1005575))))

(declare-fun b!2814917 () Bool)

(assert (=> b!2814917 (= e!1780081 (apply!7678 (tail!4449 lt!1005575) (- i!1825 1)))))

(assert (= (and d!817426 res!1171652) b!2814915))

(assert (= (and d!817426 c!456268) b!2814916))

(assert (= (and d!817426 (not c!456268)) b!2814917))

(declare-fun m!3245857 () Bool)

(assert (=> d!817426 m!3245857))

(declare-fun m!3245859 () Bool)

(assert (=> b!2814915 m!3245859))

(declare-fun m!3245861 () Bool)

(assert (=> b!2814916 m!3245861))

(declare-fun m!3245863 () Bool)

(assert (=> b!2814917 m!3245863))

(assert (=> b!2814917 m!3245863))

(declare-fun m!3245865 () Bool)

(assert (=> b!2814917 m!3245865))

(assert (=> b!2814876 d!817426))

(declare-fun d!817428 () Bool)

(declare-fun c!456272 () Bool)

(assert (=> d!817428 (= c!456272 (= (+ 1 i!1825) (size!25647 input!3732)))))

(declare-fun e!1780085 () Bool)

(assert (=> d!817428 (= (matchZipperSequence!35 lt!1005567 input!3732 (+ 1 i!1825)) e!1780085)))

(declare-fun b!2814924 () Bool)

(declare-fun nullableZipper!671 ((Set Context!4932)) Bool)

(assert (=> b!2814924 (= e!1780085 (nullableZipper!671 lt!1005567))))

(declare-fun b!2814925 () Bool)

(assert (=> b!2814925 (= e!1780085 (matchZipperSequence!35 (derivationStepZipper!396 lt!1005567 (apply!7679 input!3732 (+ 1 i!1825))) input!3732 (+ 1 i!1825 1)))))

(assert (= (and d!817428 c!456272) b!2814924))

(assert (= (and d!817428 (not c!456272)) b!2814925))

(assert (=> d!817428 m!3245803))

(declare-fun m!3245879 () Bool)

(assert (=> b!2814924 m!3245879))

(declare-fun m!3245881 () Bool)

(assert (=> b!2814925 m!3245881))

(assert (=> b!2814925 m!3245881))

(declare-fun m!3245883 () Bool)

(assert (=> b!2814925 m!3245883))

(assert (=> b!2814925 m!3245883))

(declare-fun m!3245885 () Bool)

(assert (=> b!2814925 m!3245885))

(assert (=> b!2814876 d!817428))

(declare-fun d!817432 () Bool)

(assert (=> d!817432 (= (tail!4449 lt!1005574) (t!230022 lt!1005574))))

(assert (=> b!2814876 d!817432))

(declare-fun d!817434 () Bool)

(declare-fun e!1780100 () Bool)

(assert (=> d!817434 e!1780100))

(declare-fun res!1171655 () Bool)

(assert (=> d!817434 (=> (not res!1171655) (not e!1780100))))

(declare-fun lt!1005611 () List!33028)

(declare-fun content!4596 (List!33028) (Set C!16770))

(assert (=> d!817434 (= res!1171655 (set.subset (content!4596 lt!1005611) (content!4596 lt!1005575)))))

(declare-fun e!1780102 () List!33028)

(assert (=> d!817434 (= lt!1005611 e!1780102)))

(declare-fun c!456285 () Bool)

(assert (=> d!817434 (= c!456285 (is-Nil!32904 lt!1005575))))

(assert (=> d!817434 (= (drop!1773 lt!1005575 (+ 1 i!1825)) lt!1005611)))

(declare-fun b!2814948 () Bool)

(declare-fun e!1780101 () Int)

(assert (=> b!2814948 (= e!1780101 0)))

(declare-fun b!2814949 () Bool)

(declare-fun e!1780098 () Int)

(assert (=> b!2814949 (= e!1780100 (= (size!25649 lt!1005611) e!1780098))))

(declare-fun c!456286 () Bool)

(assert (=> b!2814949 (= c!456286 (<= (+ 1 i!1825) 0))))

(declare-fun b!2814950 () Bool)

(declare-fun e!1780099 () List!33028)

(assert (=> b!2814950 (= e!1780099 lt!1005575)))

(declare-fun bm!183196 () Bool)

(declare-fun call!183201 () Int)

(assert (=> bm!183196 (= call!183201 (size!25649 lt!1005575))))

(declare-fun b!2814951 () Bool)

(assert (=> b!2814951 (= e!1780099 (drop!1773 (t!230022 lt!1005575) (- (+ 1 i!1825) 1)))))

(declare-fun b!2814952 () Bool)

(assert (=> b!2814952 (= e!1780102 e!1780099)))

(declare-fun c!456283 () Bool)

(assert (=> b!2814952 (= c!456283 (<= (+ 1 i!1825) 0))))

(declare-fun b!2814953 () Bool)

(assert (=> b!2814953 (= e!1780102 Nil!32904)))

(declare-fun b!2814954 () Bool)

(assert (=> b!2814954 (= e!1780098 e!1780101)))

(declare-fun c!456284 () Bool)

(assert (=> b!2814954 (= c!456284 (>= (+ 1 i!1825) call!183201))))

(declare-fun b!2814955 () Bool)

(assert (=> b!2814955 (= e!1780101 (- call!183201 (+ 1 i!1825)))))

(declare-fun b!2814956 () Bool)

(assert (=> b!2814956 (= e!1780098 call!183201)))

(assert (= (and d!817434 c!456285) b!2814953))

(assert (= (and d!817434 (not c!456285)) b!2814952))

(assert (= (and b!2814952 c!456283) b!2814950))

(assert (= (and b!2814952 (not c!456283)) b!2814951))

(assert (= (and d!817434 res!1171655) b!2814949))

(assert (= (and b!2814949 c!456286) b!2814956))

(assert (= (and b!2814949 (not c!456286)) b!2814954))

(assert (= (and b!2814954 c!456284) b!2814948))

(assert (= (and b!2814954 (not c!456284)) b!2814955))

(assert (= (or b!2814956 b!2814954 b!2814955) bm!183196))

(declare-fun m!3245887 () Bool)

(assert (=> d!817434 m!3245887))

(declare-fun m!3245889 () Bool)

(assert (=> d!817434 m!3245889))

(declare-fun m!3245891 () Bool)

(assert (=> b!2814949 m!3245891))

(assert (=> bm!183196 m!3245859))

(declare-fun m!3245893 () Bool)

(assert (=> b!2814951 m!3245893))

(assert (=> b!2814876 d!817434))

(declare-fun d!817436 () Bool)

(declare-fun list!12340 (Conc!10199) List!33028)

(assert (=> d!817436 (= (list!12338 input!3732) (list!12340 (c!456257 input!3732)))))

(declare-fun bs!516622 () Bool)

(assert (= bs!516622 d!817436))

(declare-fun m!3245895 () Bool)

(assert (=> bs!516622 m!3245895))

(assert (=> b!2814876 d!817436))

(declare-fun d!817438 () Bool)

(assert (=> d!817438 (= (matchZipper!390 lt!1005567 (dropList!995 input!3732 (+ 1 i!1825))) (matchZipperSequence!35 lt!1005567 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005614 () Unit!46898)

(declare-fun choose!16643 ((Set Context!4932) BalanceConc!20036 Int) Unit!46898)

(assert (=> d!817438 (= lt!1005614 (choose!16643 lt!1005567 input!3732 (+ 1 i!1825)))))

(declare-fun e!1780106 () Bool)

(assert (=> d!817438 e!1780106))

(declare-fun res!1171658 () Bool)

(assert (=> d!817438 (=> (not res!1171658) (not e!1780106))))

(assert (=> d!817438 (= res!1171658 (>= (+ 1 i!1825) 0))))

(assert (=> d!817438 (= (lemmaMatchZipperSequenceEquivalent!31 lt!1005567 input!3732 (+ 1 i!1825)) lt!1005614)))

(declare-fun b!2814961 () Bool)

(assert (=> b!2814961 (= e!1780106 (<= (+ 1 i!1825) (size!25647 input!3732)))))

(assert (= (and d!817438 res!1171658) b!2814961))

(assert (=> d!817438 m!3245801))

(assert (=> d!817438 m!3245801))

(declare-fun m!3245901 () Bool)

(assert (=> d!817438 m!3245901))

(assert (=> d!817438 m!3245777))

(declare-fun m!3245903 () Bool)

(assert (=> d!817438 m!3245903))

(assert (=> b!2814961 m!3245803))

(assert (=> b!2814876 d!817438))

(declare-fun d!817442 () Bool)

(declare-fun e!1780109 () Bool)

(assert (=> d!817442 e!1780109))

(declare-fun res!1171659 () Bool)

(assert (=> d!817442 (=> (not res!1171659) (not e!1780109))))

(declare-fun lt!1005615 () List!33028)

(assert (=> d!817442 (= res!1171659 (set.subset (content!4596 lt!1005615) (content!4596 lt!1005575)))))

(declare-fun e!1780111 () List!33028)

(assert (=> d!817442 (= lt!1005615 e!1780111)))

(declare-fun c!456290 () Bool)

(assert (=> d!817442 (= c!456290 (is-Nil!32904 lt!1005575))))

(assert (=> d!817442 (= (drop!1773 lt!1005575 i!1825) lt!1005615)))

(declare-fun b!2814962 () Bool)

(declare-fun e!1780110 () Int)

(assert (=> b!2814962 (= e!1780110 0)))

(declare-fun b!2814963 () Bool)

(declare-fun e!1780107 () Int)

(assert (=> b!2814963 (= e!1780109 (= (size!25649 lt!1005615) e!1780107))))

(declare-fun c!456291 () Bool)

(assert (=> b!2814963 (= c!456291 (<= i!1825 0))))

(declare-fun b!2814964 () Bool)

(declare-fun e!1780108 () List!33028)

(assert (=> b!2814964 (= e!1780108 lt!1005575)))

(declare-fun bm!183197 () Bool)

(declare-fun call!183202 () Int)

(assert (=> bm!183197 (= call!183202 (size!25649 lt!1005575))))

(declare-fun b!2814965 () Bool)

(assert (=> b!2814965 (= e!1780108 (drop!1773 (t!230022 lt!1005575) (- i!1825 1)))))

(declare-fun b!2814966 () Bool)

(assert (=> b!2814966 (= e!1780111 e!1780108)))

(declare-fun c!456288 () Bool)

(assert (=> b!2814966 (= c!456288 (<= i!1825 0))))

(declare-fun b!2814967 () Bool)

(assert (=> b!2814967 (= e!1780111 Nil!32904)))

(declare-fun b!2814968 () Bool)

(assert (=> b!2814968 (= e!1780107 e!1780110)))

(declare-fun c!456289 () Bool)

(assert (=> b!2814968 (= c!456289 (>= i!1825 call!183202))))

(declare-fun b!2814969 () Bool)

(assert (=> b!2814969 (= e!1780110 (- call!183202 i!1825))))

(declare-fun b!2814970 () Bool)

(assert (=> b!2814970 (= e!1780107 call!183202)))

(assert (= (and d!817442 c!456290) b!2814967))

(assert (= (and d!817442 (not c!456290)) b!2814966))

(assert (= (and b!2814966 c!456288) b!2814964))

(assert (= (and b!2814966 (not c!456288)) b!2814965))

(assert (= (and d!817442 res!1171659) b!2814963))

(assert (= (and b!2814963 c!456291) b!2814970))

(assert (= (and b!2814963 (not c!456291)) b!2814968))

(assert (= (and b!2814968 c!456289) b!2814962))

(assert (= (and b!2814968 (not c!456289)) b!2814969))

(assert (= (or b!2814970 b!2814968 b!2814969) bm!183197))

(declare-fun m!3245905 () Bool)

(assert (=> d!817442 m!3245905))

(assert (=> d!817442 m!3245889))

(declare-fun m!3245907 () Bool)

(assert (=> b!2814963 m!3245907))

(assert (=> bm!183197 m!3245859))

(declare-fun m!3245909 () Bool)

(assert (=> b!2814965 m!3245909))

(assert (=> b!2814876 d!817442))

(declare-fun d!817444 () Bool)

(assert (=> d!817444 (= (head!6224 lt!1005574) (h!38324 lt!1005574))))

(assert (=> b!2814876 d!817444))

(declare-fun d!817446 () Bool)

(declare-fun lt!1005618 () C!16770)

(assert (=> d!817446 (= lt!1005618 (apply!7678 (list!12338 input!3732) i!1825))))

(declare-fun apply!7682 (Conc!10199 Int) C!16770)

(assert (=> d!817446 (= lt!1005618 (apply!7682 (c!456257 input!3732) i!1825))))

(declare-fun e!1780114 () Bool)

(assert (=> d!817446 e!1780114))

(declare-fun res!1171662 () Bool)

(assert (=> d!817446 (=> (not res!1171662) (not e!1780114))))

(assert (=> d!817446 (= res!1171662 (<= 0 i!1825))))

(assert (=> d!817446 (= (apply!7679 input!3732 i!1825) lt!1005618)))

(declare-fun b!2814973 () Bool)

(assert (=> b!2814973 (= e!1780114 (< i!1825 (size!25647 input!3732)))))

(assert (= (and d!817446 res!1171662) b!2814973))

(assert (=> d!817446 m!3245779))

(assert (=> d!817446 m!3245779))

(declare-fun m!3245911 () Bool)

(assert (=> d!817446 m!3245911))

(declare-fun m!3245913 () Bool)

(assert (=> d!817446 m!3245913))

(assert (=> b!2814973 m!3245803))

(assert (=> b!2814876 d!817446))

(declare-fun d!817448 () Bool)

(declare-fun c!456294 () Bool)

(declare-fun isEmpty!18225 (List!33028) Bool)

(assert (=> d!817448 (= c!456294 (isEmpty!18225 lt!1005571))))

(declare-fun e!1780117 () Bool)

(assert (=> d!817448 (= (matchZipper!390 lt!1005567 lt!1005571) e!1780117)))

(declare-fun b!2814978 () Bool)

(assert (=> b!2814978 (= e!1780117 (nullableZipper!671 lt!1005567))))

(declare-fun b!2814979 () Bool)

(assert (=> b!2814979 (= e!1780117 (matchZipper!390 (derivationStepZipper!396 lt!1005567 (head!6224 lt!1005571)) (tail!4449 lt!1005571)))))

(assert (= (and d!817448 c!456294) b!2814978))

(assert (= (and d!817448 (not c!456294)) b!2814979))

(declare-fun m!3245915 () Bool)

(assert (=> d!817448 m!3245915))

(assert (=> b!2814978 m!3245879))

(declare-fun m!3245917 () Bool)

(assert (=> b!2814979 m!3245917))

(assert (=> b!2814979 m!3245917))

(declare-fun m!3245919 () Bool)

(assert (=> b!2814979 m!3245919))

(declare-fun m!3245921 () Bool)

(assert (=> b!2814979 m!3245921))

(assert (=> b!2814979 m!3245919))

(assert (=> b!2814979 m!3245921))

(declare-fun m!3245923 () Bool)

(assert (=> b!2814979 m!3245923))

(assert (=> b!2814876 d!817448))

(declare-fun d!817450 () Bool)

(assert (=> d!817450 (= (head!6224 (drop!1773 lt!1005575 i!1825)) (apply!7678 lt!1005575 i!1825))))

(declare-fun lt!1005621 () Unit!46898)

(declare-fun choose!16644 (List!33028 Int) Unit!46898)

(assert (=> d!817450 (= lt!1005621 (choose!16644 lt!1005575 i!1825))))

(declare-fun e!1780120 () Bool)

(assert (=> d!817450 e!1780120))

(declare-fun res!1171665 () Bool)

(assert (=> d!817450 (=> (not res!1171665) (not e!1780120))))

(assert (=> d!817450 (= res!1171665 (>= i!1825 0))))

(assert (=> d!817450 (= (lemmaDropApply!975 lt!1005575 i!1825) lt!1005621)))

(declare-fun b!2814982 () Bool)

(assert (=> b!2814982 (= e!1780120 (< i!1825 (size!25649 lt!1005575)))))

(assert (= (and d!817450 res!1171665) b!2814982))

(assert (=> d!817450 m!3245799))

(assert (=> d!817450 m!3245799))

(declare-fun m!3245925 () Bool)

(assert (=> d!817450 m!3245925))

(assert (=> d!817450 m!3245781))

(declare-fun m!3245927 () Bool)

(assert (=> d!817450 m!3245927))

(assert (=> b!2814982 m!3245859))

(assert (=> b!2814876 d!817450))

(declare-fun d!817452 () Bool)

(assert (=> d!817452 (= ($colon$colon!578 lt!1005571 lt!1005569) (Cons!32904 lt!1005569 lt!1005571))))

(assert (=> b!2814876 d!817452))

(declare-fun d!817454 () Bool)

(assert (=> d!817454 (= (dropList!995 input!3732 (+ 1 i!1825)) (drop!1773 (list!12340 (c!456257 input!3732)) (+ 1 i!1825)))))

(declare-fun bs!516623 () Bool)

(assert (= bs!516623 d!817454))

(assert (=> bs!516623 m!3245895))

(assert (=> bs!516623 m!3245895))

(declare-fun m!3245929 () Bool)

(assert (=> bs!516623 m!3245929))

(assert (=> b!2814876 d!817454))

(declare-fun d!817456 () Bool)

(assert (=> d!817456 (= (tail!4449 (drop!1773 lt!1005575 i!1825)) (drop!1773 lt!1005575 (+ i!1825 1)))))

(declare-fun lt!1005624 () Unit!46898)

(declare-fun choose!16645 (List!33028 Int) Unit!46898)

(assert (=> d!817456 (= lt!1005624 (choose!16645 lt!1005575 i!1825))))

(declare-fun e!1780123 () Bool)

(assert (=> d!817456 e!1780123))

(declare-fun res!1171668 () Bool)

(assert (=> d!817456 (=> (not res!1171668) (not e!1780123))))

(assert (=> d!817456 (= res!1171668 (>= i!1825 0))))

(assert (=> d!817456 (= (lemmaDropTail!865 lt!1005575 i!1825) lt!1005624)))

(declare-fun b!2814985 () Bool)

(assert (=> b!2814985 (= e!1780123 (< i!1825 (size!25649 lt!1005575)))))

(assert (= (and d!817456 res!1171668) b!2814985))

(assert (=> d!817456 m!3245799))

(assert (=> d!817456 m!3245799))

(declare-fun m!3245931 () Bool)

(assert (=> d!817456 m!3245931))

(declare-fun m!3245933 () Bool)

(assert (=> d!817456 m!3245933))

(declare-fun m!3245935 () Bool)

(assert (=> d!817456 m!3245935))

(assert (=> b!2814985 m!3245859))

(assert (=> b!2814876 d!817456))

(declare-fun d!817458 () Bool)

(assert (=> d!817458 (= (dropList!995 input!3732 i!1825) (drop!1773 (list!12340 (c!456257 input!3732)) i!1825))))

(declare-fun bs!516624 () Bool)

(assert (= bs!516624 d!817458))

(assert (=> bs!516624 m!3245895))

(assert (=> bs!516624 m!3245895))

(declare-fun m!3245937 () Bool)

(assert (=> bs!516624 m!3245937))

(assert (=> b!2814876 d!817458))

(declare-fun d!817460 () Bool)

(assert (=> d!817460 true))

(declare-fun lambda!103188 () Int)

(declare-fun flatMap!193 ((Set Context!4932) Int) (Set Context!4932))

(assert (=> d!817460 (= (derivationStepZipper!396 z!592 lt!1005569) (flatMap!193 z!592 lambda!103188))))

(declare-fun bs!516625 () Bool)

(assert (= bs!516625 d!817460))

(declare-fun m!3245939 () Bool)

(assert (=> bs!516625 m!3245939))

(assert (=> b!2814876 d!817460))

(declare-fun d!817462 () Bool)

(declare-fun isBalanced!3094 (Conc!10199) Bool)

(assert (=> d!817462 (= (inv!44732 input!3732) (isBalanced!3094 (c!456257 input!3732)))))

(declare-fun bs!516626 () Bool)

(assert (= bs!516626 d!817462))

(declare-fun m!3245941 () Bool)

(assert (=> bs!516626 m!3245941))

(assert (=> start!272682 d!817462))

(declare-fun d!817464 () Bool)

(declare-fun c!456297 () Bool)

(assert (=> d!817464 (= c!456297 (isEmpty!18225 lt!1005570))))

(declare-fun e!1780124 () Bool)

(assert (=> d!817464 (= (matchZipper!390 z!592 lt!1005570) e!1780124)))

(declare-fun b!2814988 () Bool)

(assert (=> b!2814988 (= e!1780124 (nullableZipper!671 z!592))))

(declare-fun b!2814989 () Bool)

(assert (=> b!2814989 (= e!1780124 (matchZipper!390 (derivationStepZipper!396 z!592 (head!6224 lt!1005570)) (tail!4449 lt!1005570)))))

(assert (= (and d!817464 c!456297) b!2814988))

(assert (= (and d!817464 (not c!456297)) b!2814989))

(declare-fun m!3245943 () Bool)

(assert (=> d!817464 m!3245943))

(declare-fun m!3245945 () Bool)

(assert (=> b!2814988 m!3245945))

(declare-fun m!3245947 () Bool)

(assert (=> b!2814989 m!3245947))

(assert (=> b!2814989 m!3245947))

(declare-fun m!3245949 () Bool)

(assert (=> b!2814989 m!3245949))

(declare-fun m!3245951 () Bool)

(assert (=> b!2814989 m!3245951))

(assert (=> b!2814989 m!3245949))

(assert (=> b!2814989 m!3245951))

(declare-fun m!3245953 () Bool)

(assert (=> b!2814989 m!3245953))

(assert (=> b!2814879 d!817464))

(declare-fun d!817466 () Bool)

(declare-fun c!456298 () Bool)

(assert (=> d!817466 (= c!456298 (= i!1825 (size!25647 input!3732)))))

(declare-fun e!1780125 () Bool)

(assert (=> d!817466 (= (matchZipperSequence!35 z!592 input!3732 i!1825) e!1780125)))

(declare-fun b!2814990 () Bool)

(assert (=> b!2814990 (= e!1780125 (nullableZipper!671 z!592))))

(declare-fun b!2814991 () Bool)

(assert (=> b!2814991 (= e!1780125 (matchZipperSequence!35 (derivationStepZipper!396 z!592 (apply!7679 input!3732 i!1825)) input!3732 (+ i!1825 1)))))

(assert (= (and d!817466 c!456298) b!2814990))

(assert (= (and d!817466 (not c!456298)) b!2814991))

(assert (=> d!817466 m!3245803))

(assert (=> b!2814990 m!3245945))

(assert (=> b!2814991 m!3245793))

(assert (=> b!2814991 m!3245793))

(declare-fun m!3245955 () Bool)

(assert (=> b!2814991 m!3245955))

(assert (=> b!2814991 m!3245955))

(declare-fun m!3245957 () Bool)

(assert (=> b!2814991 m!3245957))

(assert (=> b!2814879 d!817466))

(declare-fun d!817468 () Bool)

(declare-fun lt!1005627 () Int)

(assert (=> d!817468 (= lt!1005627 (size!25649 (list!12338 input!3732)))))

(declare-fun size!25650 (Conc!10199) Int)

(assert (=> d!817468 (= lt!1005627 (size!25650 (c!456257 input!3732)))))

(assert (=> d!817468 (= (size!25647 input!3732) lt!1005627)))

(declare-fun bs!516627 () Bool)

(assert (= bs!516627 d!817468))

(assert (=> bs!516627 m!3245779))

(assert (=> bs!516627 m!3245779))

(declare-fun m!3245959 () Bool)

(assert (=> bs!516627 m!3245959))

(declare-fun m!3245961 () Bool)

(assert (=> bs!516627 m!3245961))

(assert (=> b!2814880 d!817468))

(declare-fun d!817470 () Bool)

(declare-fun lambda!103191 () Int)

(declare-fun forall!6739 (List!33029 Int) Bool)

(assert (=> d!817470 (= (inv!44730 setElem!24740) (forall!6739 (exprs!2966 setElem!24740) lambda!103191))))

(declare-fun bs!516628 () Bool)

(assert (= bs!516628 d!817470))

(declare-fun m!3245963 () Bool)

(assert (=> bs!516628 m!3245963))

(assert (=> setNonEmpty!24740 d!817470))

(declare-fun b!2814996 () Bool)

(declare-fun e!1780128 () Bool)

(declare-fun tp!898699 () Bool)

(declare-fun tp!898700 () Bool)

(assert (=> b!2814996 (= e!1780128 (and tp!898699 tp!898700))))

(assert (=> b!2814877 (= tp!898683 e!1780128)))

(assert (= (and b!2814877 (is-Cons!32905 (exprs!2966 setElem!24740))) b!2814996))

(declare-fun e!1780134 () Bool)

(declare-fun tp!898708 () Bool)

(declare-fun b!2815005 () Bool)

(declare-fun tp!898709 () Bool)

(assert (=> b!2815005 (= e!1780134 (and (inv!44731 (left!24826 (c!456257 input!3732))) tp!898708 (inv!44731 (right!25156 (c!456257 input!3732))) tp!898709))))

(declare-fun b!2815007 () Bool)

(declare-fun e!1780133 () Bool)

(declare-fun tp!898707 () Bool)

(assert (=> b!2815007 (= e!1780133 tp!898707)))

(declare-fun b!2815006 () Bool)

(declare-fun inv!44738 (IArray!20403) Bool)

(assert (=> b!2815006 (= e!1780134 (and (inv!44738 (xs!13311 (c!456257 input!3732))) e!1780133))))

(assert (=> b!2814878 (= tp!898685 (and (inv!44731 (c!456257 input!3732)) e!1780134))))

(assert (= (and b!2814878 (is-Node!10199 (c!456257 input!3732))) b!2815005))

(assert (= b!2815006 b!2815007))

(assert (= (and b!2814878 (is-Leaf!15539 (c!456257 input!3732))) b!2815006))

(declare-fun m!3245965 () Bool)

(assert (=> b!2815005 m!3245965))

(declare-fun m!3245967 () Bool)

(assert (=> b!2815005 m!3245967))

(declare-fun m!3245969 () Bool)

(assert (=> b!2815006 m!3245969))

(assert (=> b!2814878 m!3245805))

(declare-fun condSetEmpty!24746 () Bool)

(assert (=> setNonEmpty!24740 (= condSetEmpty!24746 (= setRest!24740 (as set.empty (Set Context!4932))))))

(declare-fun setRes!24746 () Bool)

(assert (=> setNonEmpty!24740 (= tp!898684 setRes!24746)))

(declare-fun setIsEmpty!24746 () Bool)

(assert (=> setIsEmpty!24746 setRes!24746))

(declare-fun setElem!24746 () Context!4932)

(declare-fun e!1780137 () Bool)

(declare-fun tp!898714 () Bool)

(declare-fun setNonEmpty!24746 () Bool)

(assert (=> setNonEmpty!24746 (= setRes!24746 (and tp!898714 (inv!44730 setElem!24746) e!1780137))))

(declare-fun setRest!24746 () (Set Context!4932))

(assert (=> setNonEmpty!24746 (= setRest!24740 (set.union (set.insert setElem!24746 (as set.empty (Set Context!4932))) setRest!24746))))

(declare-fun b!2815012 () Bool)

(declare-fun tp!898715 () Bool)

(assert (=> b!2815012 (= e!1780137 tp!898715)))

(assert (= (and setNonEmpty!24740 condSetEmpty!24746) setIsEmpty!24746))

(assert (= (and setNonEmpty!24740 (not condSetEmpty!24746)) setNonEmpty!24746))

(assert (= setNonEmpty!24746 b!2815012))

(declare-fun m!3245971 () Bool)

(assert (=> setNonEmpty!24746 m!3245971))

(push 1)

(assert (not b!2815005))

(assert (not d!817454))

(assert (not b!2814949))

(assert (not d!817450))

(assert (not d!817428))

(assert (not b!2814965))

(assert (not b!2814978))

(assert (not d!817464))

(assert (not b!2814991))

(assert (not d!817442))

(assert (not b!2814904))

(assert (not d!817436))

(assert (not b!2814985))

(assert (not b!2815006))

(assert (not b!2814982))

(assert (not b!2814979))

(assert (not d!817426))

(assert (not d!817456))

(assert (not b!2814951))

(assert (not b!2814915))

(assert (not b!2815012))

(assert (not b!2814878))

(assert (not b!2814925))

(assert (not d!817458))

(assert (not d!817466))

(assert (not bm!183196))

(assert (not b!2814996))

(assert (not b!2815007))

(assert (not bm!183197))

(assert (not b!2814961))

(assert (not d!817460))

(assert (not d!817448))

(assert (not b!2814973))

(assert (not d!817470))

(assert (not d!817468))

(assert (not b!2814990))

(assert (not b!2814916))

(assert (not d!817438))

(assert (not d!817462))

(assert (not b!2814917))

(assert (not d!817446))

(assert (not b!2814988))

(assert (not b!2814924))

(assert (not b!2814963))

(assert (not b!2814989))

(assert (not d!817434))

(assert (not setNonEmpty!24746))

(assert (not b!2814902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!817428 d!817468))

(declare-fun d!817508 () Bool)

(declare-fun e!1780180 () Bool)

(assert (=> d!817508 e!1780180))

(declare-fun res!1171688 () Bool)

(assert (=> d!817508 (=> (not res!1171688) (not e!1780180))))

(declare-fun lt!1005647 () List!33028)

(assert (=> d!817508 (= res!1171688 (set.subset (content!4596 lt!1005647) (content!4596 (t!230022 lt!1005575))))))

(declare-fun e!1780182 () List!33028)

(assert (=> d!817508 (= lt!1005647 e!1780182)))

(declare-fun c!456324 () Bool)

(assert (=> d!817508 (= c!456324 (is-Nil!32904 (t!230022 lt!1005575)))))

(assert (=> d!817508 (= (drop!1773 (t!230022 lt!1005575) (- (+ 1 i!1825) 1)) lt!1005647)))

(declare-fun b!2815076 () Bool)

(declare-fun e!1780181 () Int)

(assert (=> b!2815076 (= e!1780181 0)))

(declare-fun b!2815077 () Bool)

(declare-fun e!1780178 () Int)

(assert (=> b!2815077 (= e!1780180 (= (size!25649 lt!1005647) e!1780178))))

(declare-fun c!456325 () Bool)

(assert (=> b!2815077 (= c!456325 (<= (- (+ 1 i!1825) 1) 0))))

(declare-fun b!2815078 () Bool)

(declare-fun e!1780179 () List!33028)

(assert (=> b!2815078 (= e!1780179 (t!230022 lt!1005575))))

(declare-fun bm!183202 () Bool)

(declare-fun call!183207 () Int)

(assert (=> bm!183202 (= call!183207 (size!25649 (t!230022 lt!1005575)))))

(declare-fun b!2815079 () Bool)

(assert (=> b!2815079 (= e!1780179 (drop!1773 (t!230022 (t!230022 lt!1005575)) (- (- (+ 1 i!1825) 1) 1)))))

(declare-fun b!2815080 () Bool)

(assert (=> b!2815080 (= e!1780182 e!1780179)))

(declare-fun c!456322 () Bool)

(assert (=> b!2815080 (= c!456322 (<= (- (+ 1 i!1825) 1) 0))))

(declare-fun b!2815081 () Bool)

(assert (=> b!2815081 (= e!1780182 Nil!32904)))

(declare-fun b!2815082 () Bool)

(assert (=> b!2815082 (= e!1780178 e!1780181)))

(declare-fun c!456323 () Bool)

(assert (=> b!2815082 (= c!456323 (>= (- (+ 1 i!1825) 1) call!183207))))

(declare-fun b!2815083 () Bool)

(assert (=> b!2815083 (= e!1780181 (- call!183207 (- (+ 1 i!1825) 1)))))

(declare-fun b!2815084 () Bool)

(assert (=> b!2815084 (= e!1780178 call!183207)))

(assert (= (and d!817508 c!456324) b!2815081))

(assert (= (and d!817508 (not c!456324)) b!2815080))

(assert (= (and b!2815080 c!456322) b!2815078))

(assert (= (and b!2815080 (not c!456322)) b!2815079))

(assert (= (and d!817508 res!1171688) b!2815077))

(assert (= (and b!2815077 c!456325) b!2815084))

(assert (= (and b!2815077 (not c!456325)) b!2815082))

(assert (= (and b!2815082 c!456323) b!2815076))

(assert (= (and b!2815082 (not c!456323)) b!2815083))

(assert (= (or b!2815084 b!2815082 b!2815083) bm!183202))

(declare-fun m!3246045 () Bool)

(assert (=> d!817508 m!3246045))

(declare-fun m!3246047 () Bool)

(assert (=> d!817508 m!3246047))

(declare-fun m!3246049 () Bool)

(assert (=> b!2815077 m!3246049))

(declare-fun m!3246051 () Bool)

(assert (=> bm!183202 m!3246051))

(declare-fun m!3246053 () Bool)

(assert (=> b!2815079 m!3246053))

(assert (=> b!2814951 d!817508))

(declare-fun d!817510 () Bool)

(declare-fun lt!1005653 () Int)

(assert (=> d!817510 (>= lt!1005653 0)))

(declare-fun e!1780185 () Int)

(assert (=> d!817510 (= lt!1005653 e!1780185)))

(declare-fun c!456328 () Bool)

(assert (=> d!817510 (= c!456328 (is-Nil!32904 (list!12338 input!3732)))))

(assert (=> d!817510 (= (size!25649 (list!12338 input!3732)) lt!1005653)))

(declare-fun b!2815089 () Bool)

(assert (=> b!2815089 (= e!1780185 0)))

(declare-fun b!2815090 () Bool)

(assert (=> b!2815090 (= e!1780185 (+ 1 (size!25649 (t!230022 (list!12338 input!3732)))))))

(assert (= (and d!817510 c!456328) b!2815089))

(assert (= (and d!817510 (not c!456328)) b!2815090))

(declare-fun m!3246059 () Bool)

(assert (=> b!2815090 m!3246059))

(assert (=> d!817468 d!817510))

(assert (=> d!817468 d!817436))

(declare-fun d!817514 () Bool)

(declare-fun lt!1005656 () Int)

(assert (=> d!817514 (= lt!1005656 (size!25649 (list!12340 (c!456257 input!3732))))))

(assert (=> d!817514 (= lt!1005656 (ite (is-Empty!10199 (c!456257 input!3732)) 0 (ite (is-Leaf!15539 (c!456257 input!3732)) (csize!20629 (c!456257 input!3732)) (csize!20628 (c!456257 input!3732)))))))

(assert (=> d!817514 (= (size!25650 (c!456257 input!3732)) lt!1005656)))

(declare-fun bs!516636 () Bool)

(assert (= bs!516636 d!817514))

(assert (=> bs!516636 m!3245895))

(assert (=> bs!516636 m!3245895))

(declare-fun m!3246065 () Bool)

(assert (=> bs!516636 m!3246065))

(assert (=> d!817468 d!817514))

(assert (=> b!2814878 d!817422))

(declare-fun d!817516 () Bool)

(declare-fun lt!1005657 () Int)

(assert (=> d!817516 (>= lt!1005657 0)))

(declare-fun e!1780194 () Int)

(assert (=> d!817516 (= lt!1005657 e!1780194)))

(declare-fun c!456332 () Bool)

(assert (=> d!817516 (= c!456332 (is-Nil!32904 lt!1005611))))

(assert (=> d!817516 (= (size!25649 lt!1005611) lt!1005657)))

(declare-fun b!2815104 () Bool)

(assert (=> b!2815104 (= e!1780194 0)))

(declare-fun b!2815105 () Bool)

(assert (=> b!2815105 (= e!1780194 (+ 1 (size!25649 (t!230022 lt!1005611))))))

(assert (= (and d!817516 c!456332) b!2815104))

(assert (= (and d!817516 (not c!456332)) b!2815105))

(declare-fun m!3246067 () Bool)

(assert (=> b!2815105 m!3246067))

(assert (=> b!2814949 d!817516))

(declare-fun d!817518 () Bool)

(declare-fun c!456335 () Bool)

(assert (=> d!817518 (= c!456335 (is-Nil!32904 lt!1005615))))

(declare-fun e!1780202 () (Set C!16770))

(assert (=> d!817518 (= (content!4596 lt!1005615) e!1780202)))

(declare-fun b!2815119 () Bool)

(assert (=> b!2815119 (= e!1780202 (as set.empty (Set C!16770)))))

(declare-fun b!2815120 () Bool)

(assert (=> b!2815120 (= e!1780202 (set.union (set.insert (h!38324 lt!1005615) (as set.empty (Set C!16770))) (content!4596 (t!230022 lt!1005615))))))

(assert (= (and d!817518 c!456335) b!2815119))

(assert (= (and d!817518 (not c!456335)) b!2815120))

(declare-fun m!3246071 () Bool)

(assert (=> b!2815120 m!3246071))

(declare-fun m!3246073 () Bool)

(assert (=> b!2815120 m!3246073))

(assert (=> d!817442 d!817518))

(declare-fun d!817520 () Bool)

(declare-fun c!456336 () Bool)

(assert (=> d!817520 (= c!456336 (is-Nil!32904 lt!1005575))))

(declare-fun e!1780203 () (Set C!16770))

(assert (=> d!817520 (= (content!4596 lt!1005575) e!1780203)))

(declare-fun b!2815121 () Bool)

(assert (=> b!2815121 (= e!1780203 (as set.empty (Set C!16770)))))

(declare-fun b!2815122 () Bool)

(assert (=> b!2815122 (= e!1780203 (set.union (set.insert (h!38324 lt!1005575) (as set.empty (Set C!16770))) (content!4596 (t!230022 lt!1005575))))))

(assert (= (and d!817520 c!456336) b!2815121))

(assert (= (and d!817520 (not c!456336)) b!2815122))

(declare-fun m!3246075 () Bool)

(assert (=> b!2815122 m!3246075))

(assert (=> b!2815122 m!3246047))

(assert (=> d!817442 d!817520))

(declare-fun d!817522 () Bool)

(declare-fun c!456337 () Bool)

(assert (=> d!817522 (= c!456337 (isEmpty!18225 (tail!4449 lt!1005570)))))

(declare-fun e!1780206 () Bool)

(assert (=> d!817522 (= (matchZipper!390 (derivationStepZipper!396 z!592 (head!6224 lt!1005570)) (tail!4449 lt!1005570)) e!1780206)))

(declare-fun b!2815126 () Bool)

(assert (=> b!2815126 (= e!1780206 (nullableZipper!671 (derivationStepZipper!396 z!592 (head!6224 lt!1005570))))))

(declare-fun b!2815127 () Bool)

(assert (=> b!2815127 (= e!1780206 (matchZipper!390 (derivationStepZipper!396 (derivationStepZipper!396 z!592 (head!6224 lt!1005570)) (head!6224 (tail!4449 lt!1005570))) (tail!4449 (tail!4449 lt!1005570))))))

(assert (= (and d!817522 c!456337) b!2815126))

(assert (= (and d!817522 (not c!456337)) b!2815127))

(assert (=> d!817522 m!3245951))

(declare-fun m!3246083 () Bool)

(assert (=> d!817522 m!3246083))

(assert (=> b!2815126 m!3245949))

(declare-fun m!3246085 () Bool)

(assert (=> b!2815126 m!3246085))

(assert (=> b!2815127 m!3245951))

(declare-fun m!3246087 () Bool)

(assert (=> b!2815127 m!3246087))

(assert (=> b!2815127 m!3245949))

(assert (=> b!2815127 m!3246087))

(declare-fun m!3246089 () Bool)

(assert (=> b!2815127 m!3246089))

(assert (=> b!2815127 m!3245951))

(declare-fun m!3246091 () Bool)

(assert (=> b!2815127 m!3246091))

(assert (=> b!2815127 m!3246089))

(assert (=> b!2815127 m!3246091))

(declare-fun m!3246093 () Bool)

(assert (=> b!2815127 m!3246093))

(assert (=> b!2814989 d!817522))

(declare-fun bs!516637 () Bool)

(declare-fun d!817524 () Bool)

(assert (= bs!516637 (and d!817524 d!817460)))

(declare-fun lambda!103198 () Int)

(assert (=> bs!516637 (= (= (head!6224 lt!1005570) lt!1005569) (= lambda!103198 lambda!103188))))

(assert (=> d!817524 true))

(assert (=> d!817524 (= (derivationStepZipper!396 z!592 (head!6224 lt!1005570)) (flatMap!193 z!592 lambda!103198))))

(declare-fun bs!516638 () Bool)

(assert (= bs!516638 d!817524))

(declare-fun m!3246095 () Bool)

(assert (=> bs!516638 m!3246095))

(assert (=> b!2814989 d!817524))

(declare-fun d!817526 () Bool)

(assert (=> d!817526 (= (head!6224 lt!1005570) (h!38324 lt!1005570))))

(assert (=> b!2814989 d!817526))

(declare-fun d!817528 () Bool)

(assert (=> d!817528 (= (tail!4449 lt!1005570) (t!230022 lt!1005570))))

(assert (=> b!2814989 d!817528))

(declare-fun d!817530 () Bool)

(declare-fun choose!16649 ((Set Context!4932) Int) (Set Context!4932))

(assert (=> d!817530 (= (flatMap!193 z!592 lambda!103188) (choose!16649 z!592 lambda!103188))))

(declare-fun bs!516639 () Bool)

(assert (= bs!516639 d!817530))

(declare-fun m!3246097 () Bool)

(assert (=> bs!516639 m!3246097))

(assert (=> d!817460 d!817530))

(declare-fun d!817532 () Bool)

(declare-fun lt!1005658 () Int)

(assert (=> d!817532 (>= lt!1005658 0)))

(declare-fun e!1780210 () Int)

(assert (=> d!817532 (= lt!1005658 e!1780210)))

(declare-fun c!456338 () Bool)

(assert (=> d!817532 (= c!456338 (is-Nil!32904 lt!1005575))))

(assert (=> d!817532 (= (size!25649 lt!1005575) lt!1005658)))

(declare-fun b!2815133 () Bool)

(assert (=> b!2815133 (= e!1780210 0)))

(declare-fun b!2815134 () Bool)

(assert (=> b!2815134 (= e!1780210 (+ 1 (size!25649 (t!230022 lt!1005575))))))

(assert (= (and d!817532 c!456338) b!2815133))

(assert (= (and d!817532 (not c!456338)) b!2815134))

(assert (=> b!2815134 m!3246051))

(assert (=> bm!183196 d!817532))

(declare-fun d!817534 () Bool)

(declare-fun lambda!103201 () Int)

(declare-fun exists!1030 ((Set Context!4932) Int) Bool)

(assert (=> d!817534 (= (nullableZipper!671 z!592) (exists!1030 z!592 lambda!103201))))

(declare-fun bs!516640 () Bool)

(assert (= bs!516640 d!817534))

(declare-fun m!3246099 () Bool)

(assert (=> bs!516640 m!3246099))

(assert (=> b!2814988 d!817534))

(declare-fun d!817536 () Bool)

(assert (=> d!817536 (= (head!6224 (drop!1773 lt!1005575 i!1825)) (h!38324 (drop!1773 lt!1005575 i!1825)))))

(assert (=> d!817450 d!817536))

(assert (=> d!817450 d!817442))

(assert (=> d!817450 d!817426))

(declare-fun d!817538 () Bool)

(assert (=> d!817538 (= (head!6224 (drop!1773 lt!1005575 i!1825)) (apply!7678 lt!1005575 i!1825))))

(assert (=> d!817538 true))

(declare-fun _$27!841 () Unit!46898)

(assert (=> d!817538 (= (choose!16644 lt!1005575 i!1825) _$27!841)))

(declare-fun bs!516641 () Bool)

(assert (= bs!516641 d!817538))

(assert (=> bs!516641 m!3245799))

(assert (=> bs!516641 m!3245799))

(assert (=> bs!516641 m!3245925))

(assert (=> bs!516641 m!3245781))

(assert (=> d!817450 d!817538))

(assert (=> bm!183197 d!817532))

(declare-fun d!817540 () Bool)

(declare-fun e!1780213 () Bool)

(assert (=> d!817540 e!1780213))

(declare-fun res!1171692 () Bool)

(assert (=> d!817540 (=> (not res!1171692) (not e!1780213))))

(declare-fun lt!1005659 () List!33028)

(assert (=> d!817540 (= res!1171692 (set.subset (content!4596 lt!1005659) (content!4596 (t!230022 lt!1005575))))))

(declare-fun e!1780215 () List!33028)

(assert (=> d!817540 (= lt!1005659 e!1780215)))

(declare-fun c!456343 () Bool)

(assert (=> d!817540 (= c!456343 (is-Nil!32904 (t!230022 lt!1005575)))))

(assert (=> d!817540 (= (drop!1773 (t!230022 lt!1005575) (- i!1825 1)) lt!1005659)))

(declare-fun b!2815135 () Bool)

(declare-fun e!1780214 () Int)

(assert (=> b!2815135 (= e!1780214 0)))

(declare-fun b!2815136 () Bool)

(declare-fun e!1780211 () Int)

(assert (=> b!2815136 (= e!1780213 (= (size!25649 lt!1005659) e!1780211))))

(declare-fun c!456344 () Bool)

(assert (=> b!2815136 (= c!456344 (<= (- i!1825 1) 0))))

(declare-fun b!2815137 () Bool)

(declare-fun e!1780212 () List!33028)

(assert (=> b!2815137 (= e!1780212 (t!230022 lt!1005575))))

(declare-fun bm!183203 () Bool)

(declare-fun call!183208 () Int)

(assert (=> bm!183203 (= call!183208 (size!25649 (t!230022 lt!1005575)))))

(declare-fun b!2815138 () Bool)

(assert (=> b!2815138 (= e!1780212 (drop!1773 (t!230022 (t!230022 lt!1005575)) (- (- i!1825 1) 1)))))

(declare-fun b!2815139 () Bool)

(assert (=> b!2815139 (= e!1780215 e!1780212)))

(declare-fun c!456341 () Bool)

(assert (=> b!2815139 (= c!456341 (<= (- i!1825 1) 0))))

(declare-fun b!2815140 () Bool)

(assert (=> b!2815140 (= e!1780215 Nil!32904)))

(declare-fun b!2815141 () Bool)

(assert (=> b!2815141 (= e!1780211 e!1780214)))

(declare-fun c!456342 () Bool)

(assert (=> b!2815141 (= c!456342 (>= (- i!1825 1) call!183208))))

(declare-fun b!2815142 () Bool)

(assert (=> b!2815142 (= e!1780214 (- call!183208 (- i!1825 1)))))

(declare-fun b!2815143 () Bool)

(assert (=> b!2815143 (= e!1780211 call!183208)))

(assert (= (and d!817540 c!456343) b!2815140))

(assert (= (and d!817540 (not c!456343)) b!2815139))

(assert (= (and b!2815139 c!456341) b!2815137))

(assert (= (and b!2815139 (not c!456341)) b!2815138))

(assert (= (and d!817540 res!1171692) b!2815136))

(assert (= (and b!2815136 c!456344) b!2815143))

(assert (= (and b!2815136 (not c!456344)) b!2815141))

(assert (= (and b!2815141 c!456342) b!2815135))

(assert (= (and b!2815141 (not c!456342)) b!2815142))

(assert (= (or b!2815143 b!2815141 b!2815142) bm!183203))

(declare-fun m!3246101 () Bool)

(assert (=> d!817540 m!3246101))

(assert (=> d!817540 m!3246047))

(declare-fun m!3246103 () Bool)

(assert (=> b!2815136 m!3246103))

(assert (=> bm!183203 m!3246051))

(declare-fun m!3246105 () Bool)

(assert (=> b!2815138 m!3246105))

(assert (=> b!2814965 d!817540))

(assert (=> b!2814990 d!817534))

(declare-fun d!817542 () Bool)

(declare-fun c!456345 () Bool)

(assert (=> d!817542 (= c!456345 (= (+ 1 i!1825 1) (size!25647 input!3732)))))

(declare-fun e!1780216 () Bool)

(assert (=> d!817542 (= (matchZipperSequence!35 (derivationStepZipper!396 lt!1005567 (apply!7679 input!3732 (+ 1 i!1825))) input!3732 (+ 1 i!1825 1)) e!1780216)))

(declare-fun b!2815144 () Bool)

(assert (=> b!2815144 (= e!1780216 (nullableZipper!671 (derivationStepZipper!396 lt!1005567 (apply!7679 input!3732 (+ 1 i!1825)))))))

(declare-fun b!2815145 () Bool)

(assert (=> b!2815145 (= e!1780216 (matchZipperSequence!35 (derivationStepZipper!396 (derivationStepZipper!396 lt!1005567 (apply!7679 input!3732 (+ 1 i!1825))) (apply!7679 input!3732 (+ 1 i!1825 1))) input!3732 (+ 1 i!1825 1 1)))))

(assert (= (and d!817542 c!456345) b!2815144))

(assert (= (and d!817542 (not c!456345)) b!2815145))

(assert (=> d!817542 m!3245803))

(assert (=> b!2815144 m!3245883))

(declare-fun m!3246107 () Bool)

(assert (=> b!2815144 m!3246107))

(declare-fun m!3246109 () Bool)

(assert (=> b!2815145 m!3246109))

(assert (=> b!2815145 m!3245883))

(assert (=> b!2815145 m!3246109))

(declare-fun m!3246111 () Bool)

(assert (=> b!2815145 m!3246111))

(assert (=> b!2815145 m!3246111))

(declare-fun m!3246113 () Bool)

(assert (=> b!2815145 m!3246113))

(assert (=> b!2814925 d!817542))

(declare-fun bs!516642 () Bool)

(declare-fun d!817544 () Bool)

(assert (= bs!516642 (and d!817544 d!817460)))

(declare-fun lambda!103202 () Int)

(assert (=> bs!516642 (= (= (apply!7679 input!3732 (+ 1 i!1825)) lt!1005569) (= lambda!103202 lambda!103188))))

(declare-fun bs!516643 () Bool)

(assert (= bs!516643 (and d!817544 d!817524)))

(assert (=> bs!516643 (= (= (apply!7679 input!3732 (+ 1 i!1825)) (head!6224 lt!1005570)) (= lambda!103202 lambda!103198))))

(assert (=> d!817544 true))

(assert (=> d!817544 (= (derivationStepZipper!396 lt!1005567 (apply!7679 input!3732 (+ 1 i!1825))) (flatMap!193 lt!1005567 lambda!103202))))

(declare-fun bs!516644 () Bool)

(assert (= bs!516644 d!817544))

(declare-fun m!3246115 () Bool)

(assert (=> bs!516644 m!3246115))

(assert (=> b!2814925 d!817544))

(declare-fun d!817546 () Bool)

(declare-fun lt!1005660 () C!16770)

(assert (=> d!817546 (= lt!1005660 (apply!7678 (list!12338 input!3732) (+ 1 i!1825)))))

(assert (=> d!817546 (= lt!1005660 (apply!7682 (c!456257 input!3732) (+ 1 i!1825)))))

(declare-fun e!1780217 () Bool)

(assert (=> d!817546 e!1780217))

(declare-fun res!1171693 () Bool)

(assert (=> d!817546 (=> (not res!1171693) (not e!1780217))))

(assert (=> d!817546 (= res!1171693 (<= 0 (+ 1 i!1825)))))

(assert (=> d!817546 (= (apply!7679 input!3732 (+ 1 i!1825)) lt!1005660)))

(declare-fun b!2815146 () Bool)

(assert (=> b!2815146 (= e!1780217 (< (+ 1 i!1825) (size!25647 input!3732)))))

(assert (= (and d!817546 res!1171693) b!2815146))

(assert (=> d!817546 m!3245779))

(assert (=> d!817546 m!3245779))

(declare-fun m!3246117 () Bool)

(assert (=> d!817546 m!3246117))

(declare-fun m!3246119 () Bool)

(assert (=> d!817546 m!3246119))

(assert (=> b!2815146 m!3245803))

(assert (=> b!2814925 d!817546))

(declare-fun d!817548 () Bool)

(assert (=> d!817548 (= (isEmpty!18225 lt!1005570) (is-Nil!32904 lt!1005570))))

(assert (=> d!817464 d!817548))

(declare-fun d!817550 () Bool)

(declare-fun e!1780220 () Bool)

(assert (=> d!817550 e!1780220))

(declare-fun res!1171694 () Bool)

(assert (=> d!817550 (=> (not res!1171694) (not e!1780220))))

(declare-fun lt!1005661 () List!33028)

(assert (=> d!817550 (= res!1171694 (set.subset (content!4596 lt!1005661) (content!4596 (list!12340 (c!456257 input!3732)))))))

(declare-fun e!1780222 () List!33028)

(assert (=> d!817550 (= lt!1005661 e!1780222)))

(declare-fun c!456348 () Bool)

(assert (=> d!817550 (= c!456348 (is-Nil!32904 (list!12340 (c!456257 input!3732))))))

(assert (=> d!817550 (= (drop!1773 (list!12340 (c!456257 input!3732)) i!1825) lt!1005661)))

(declare-fun b!2815147 () Bool)

(declare-fun e!1780221 () Int)

(assert (=> b!2815147 (= e!1780221 0)))

(declare-fun b!2815148 () Bool)

(declare-fun e!1780218 () Int)

(assert (=> b!2815148 (= e!1780220 (= (size!25649 lt!1005661) e!1780218))))

(declare-fun c!456349 () Bool)

(assert (=> b!2815148 (= c!456349 (<= i!1825 0))))

(declare-fun b!2815149 () Bool)

(declare-fun e!1780219 () List!33028)

(assert (=> b!2815149 (= e!1780219 (list!12340 (c!456257 input!3732)))))

(declare-fun bm!183204 () Bool)

(declare-fun call!183209 () Int)

(assert (=> bm!183204 (= call!183209 (size!25649 (list!12340 (c!456257 input!3732))))))

(declare-fun b!2815150 () Bool)

(assert (=> b!2815150 (= e!1780219 (drop!1773 (t!230022 (list!12340 (c!456257 input!3732))) (- i!1825 1)))))

(declare-fun b!2815151 () Bool)

(assert (=> b!2815151 (= e!1780222 e!1780219)))

(declare-fun c!456346 () Bool)

(assert (=> b!2815151 (= c!456346 (<= i!1825 0))))

(declare-fun b!2815152 () Bool)

(assert (=> b!2815152 (= e!1780222 Nil!32904)))

(declare-fun b!2815153 () Bool)

(assert (=> b!2815153 (= e!1780218 e!1780221)))

(declare-fun c!456347 () Bool)

(assert (=> b!2815153 (= c!456347 (>= i!1825 call!183209))))

(declare-fun b!2815154 () Bool)

(assert (=> b!2815154 (= e!1780221 (- call!183209 i!1825))))

(declare-fun b!2815155 () Bool)

(assert (=> b!2815155 (= e!1780218 call!183209)))

(assert (= (and d!817550 c!456348) b!2815152))

(assert (= (and d!817550 (not c!456348)) b!2815151))

(assert (= (and b!2815151 c!456346) b!2815149))

(assert (= (and b!2815151 (not c!456346)) b!2815150))

(assert (= (and d!817550 res!1171694) b!2815148))

(assert (= (and b!2815148 c!456349) b!2815155))

(assert (= (and b!2815148 (not c!456349)) b!2815153))

(assert (= (and b!2815153 c!456347) b!2815147))

(assert (= (and b!2815153 (not c!456347)) b!2815154))

(assert (= (or b!2815155 b!2815153 b!2815154) bm!183204))

(declare-fun m!3246121 () Bool)

(assert (=> d!817550 m!3246121))

(assert (=> d!817550 m!3245895))

(declare-fun m!3246123 () Bool)

(assert (=> d!817550 m!3246123))

(declare-fun m!3246125 () Bool)

(assert (=> b!2815148 m!3246125))

(assert (=> bm!183204 m!3245895))

(assert (=> bm!183204 m!3246065))

(declare-fun m!3246127 () Bool)

(assert (=> b!2815150 m!3246127))

(assert (=> d!817458 d!817550))

(declare-fun b!2815165 () Bool)

(declare-fun e!1780227 () List!33028)

(declare-fun e!1780228 () List!33028)

(assert (=> b!2815165 (= e!1780227 e!1780228)))

(declare-fun c!456355 () Bool)

(assert (=> b!2815165 (= c!456355 (is-Leaf!15539 (c!456257 input!3732)))))

(declare-fun b!2815167 () Bool)

(declare-fun ++!8084 (List!33028 List!33028) List!33028)

(assert (=> b!2815167 (= e!1780228 (++!8084 (list!12340 (left!24826 (c!456257 input!3732))) (list!12340 (right!25156 (c!456257 input!3732)))))))

(declare-fun b!2815164 () Bool)

(assert (=> b!2815164 (= e!1780227 Nil!32904)))

(declare-fun b!2815166 () Bool)

(declare-fun list!12342 (IArray!20403) List!33028)

(assert (=> b!2815166 (= e!1780228 (list!12342 (xs!13311 (c!456257 input!3732))))))

(declare-fun d!817552 () Bool)

(declare-fun c!456354 () Bool)

(assert (=> d!817552 (= c!456354 (is-Empty!10199 (c!456257 input!3732)))))

(assert (=> d!817552 (= (list!12340 (c!456257 input!3732)) e!1780227)))

(assert (= (and d!817552 c!456354) b!2815164))

(assert (= (and d!817552 (not c!456354)) b!2815165))

(assert (= (and b!2815165 c!456355) b!2815166))

(assert (= (and b!2815165 (not c!456355)) b!2815167))

(declare-fun m!3246129 () Bool)

(assert (=> b!2815167 m!3246129))

(declare-fun m!3246131 () Bool)

(assert (=> b!2815167 m!3246131))

(assert (=> b!2815167 m!3246129))

(assert (=> b!2815167 m!3246131))

(declare-fun m!3246133 () Bool)

(assert (=> b!2815167 m!3246133))

(declare-fun m!3246135 () Bool)

(assert (=> b!2815166 m!3246135))

(assert (=> d!817458 d!817552))

(assert (=> d!817436 d!817552))

(declare-fun d!817554 () Bool)

(declare-fun c!456356 () Bool)

(assert (=> d!817554 (= c!456356 (= (+ i!1825 1) (size!25647 input!3732)))))

(declare-fun e!1780229 () Bool)

(assert (=> d!817554 (= (matchZipperSequence!35 (derivationStepZipper!396 z!592 (apply!7679 input!3732 i!1825)) input!3732 (+ i!1825 1)) e!1780229)))

(declare-fun b!2815168 () Bool)

(assert (=> b!2815168 (= e!1780229 (nullableZipper!671 (derivationStepZipper!396 z!592 (apply!7679 input!3732 i!1825))))))

(declare-fun b!2815169 () Bool)

(assert (=> b!2815169 (= e!1780229 (matchZipperSequence!35 (derivationStepZipper!396 (derivationStepZipper!396 z!592 (apply!7679 input!3732 i!1825)) (apply!7679 input!3732 (+ i!1825 1))) input!3732 (+ i!1825 1 1)))))

(assert (= (and d!817554 c!456356) b!2815168))

(assert (= (and d!817554 (not c!456356)) b!2815169))

(assert (=> d!817554 m!3245803))

(assert (=> b!2815168 m!3245955))

(declare-fun m!3246137 () Bool)

(assert (=> b!2815168 m!3246137))

(declare-fun m!3246139 () Bool)

(assert (=> b!2815169 m!3246139))

(assert (=> b!2815169 m!3245955))

(assert (=> b!2815169 m!3246139))

(declare-fun m!3246141 () Bool)

(assert (=> b!2815169 m!3246141))

(assert (=> b!2815169 m!3246141))

(declare-fun m!3246143 () Bool)

(assert (=> b!2815169 m!3246143))

(assert (=> b!2814991 d!817554))

(declare-fun bs!516645 () Bool)

(declare-fun d!817556 () Bool)

(assert (= bs!516645 (and d!817556 d!817460)))

(declare-fun lambda!103203 () Int)

(assert (=> bs!516645 (= (= (apply!7679 input!3732 i!1825) lt!1005569) (= lambda!103203 lambda!103188))))

(declare-fun bs!516646 () Bool)

(assert (= bs!516646 (and d!817556 d!817524)))

(assert (=> bs!516646 (= (= (apply!7679 input!3732 i!1825) (head!6224 lt!1005570)) (= lambda!103203 lambda!103198))))

(declare-fun bs!516647 () Bool)

(assert (= bs!516647 (and d!817556 d!817544)))

(assert (=> bs!516647 (= (= (apply!7679 input!3732 i!1825) (apply!7679 input!3732 (+ 1 i!1825))) (= lambda!103203 lambda!103202))))

(assert (=> d!817556 true))

(assert (=> d!817556 (= (derivationStepZipper!396 z!592 (apply!7679 input!3732 i!1825)) (flatMap!193 z!592 lambda!103203))))

(declare-fun bs!516648 () Bool)

(assert (= bs!516648 d!817556))

(declare-fun m!3246145 () Bool)

(assert (=> bs!516648 m!3246145))

(assert (=> b!2814991 d!817556))

(assert (=> b!2814991 d!817446))

(declare-fun d!817558 () Bool)

(declare-fun lt!1005662 () C!16770)

(assert (=> d!817558 (contains!6051 (list!12338 input!3732) lt!1005662)))

(declare-fun e!1780231 () C!16770)

(assert (=> d!817558 (= lt!1005662 e!1780231)))

(declare-fun c!456357 () Bool)

(assert (=> d!817558 (= c!456357 (= i!1825 0))))

(declare-fun e!1780230 () Bool)

(assert (=> d!817558 e!1780230))

(declare-fun res!1171695 () Bool)

(assert (=> d!817558 (=> (not res!1171695) (not e!1780230))))

(assert (=> d!817558 (= res!1171695 (<= 0 i!1825))))

(assert (=> d!817558 (= (apply!7678 (list!12338 input!3732) i!1825) lt!1005662)))

(declare-fun b!2815170 () Bool)

(assert (=> b!2815170 (= e!1780230 (< i!1825 (size!25649 (list!12338 input!3732))))))

(declare-fun b!2815171 () Bool)

(assert (=> b!2815171 (= e!1780231 (head!6224 (list!12338 input!3732)))))

(declare-fun b!2815172 () Bool)

(assert (=> b!2815172 (= e!1780231 (apply!7678 (tail!4449 (list!12338 input!3732)) (- i!1825 1)))))

(assert (= (and d!817558 res!1171695) b!2815170))

(assert (= (and d!817558 c!456357) b!2815171))

(assert (= (and d!817558 (not c!456357)) b!2815172))

(assert (=> d!817558 m!3245779))

(declare-fun m!3246147 () Bool)

(assert (=> d!817558 m!3246147))

(assert (=> b!2815170 m!3245779))

(assert (=> b!2815170 m!3245959))

(assert (=> b!2815171 m!3245779))

(declare-fun m!3246149 () Bool)

(assert (=> b!2815171 m!3246149))

(assert (=> b!2815172 m!3245779))

(declare-fun m!3246151 () Bool)

(assert (=> b!2815172 m!3246151))

(assert (=> b!2815172 m!3246151))

(declare-fun m!3246153 () Bool)

(assert (=> b!2815172 m!3246153))

(assert (=> d!817446 d!817558))

(assert (=> d!817446 d!817436))

(declare-fun b!2815187 () Bool)

(declare-fun e!1780242 () C!16770)

(declare-fun call!183212 () C!16770)

(assert (=> b!2815187 (= e!1780242 call!183212)))

(declare-fun b!2815188 () Bool)

(assert (=> b!2815188 (= e!1780242 call!183212)))

(declare-fun bm!183207 () Bool)

(declare-fun c!456366 () Bool)

(declare-fun c!456365 () Bool)

(assert (=> bm!183207 (= c!456366 c!456365)))

(declare-fun e!1780240 () Int)

(assert (=> bm!183207 (= call!183212 (apply!7682 (ite c!456365 (left!24826 (c!456257 input!3732)) (right!25156 (c!456257 input!3732))) e!1780240))))

(declare-fun b!2815189 () Bool)

(assert (=> b!2815189 (= e!1780240 i!1825)))

(declare-fun b!2815191 () Bool)

(declare-fun e!1780241 () C!16770)

(assert (=> b!2815191 (= e!1780241 e!1780242)))

(declare-fun lt!1005668 () Bool)

(declare-fun appendIndex!290 (List!33028 List!33028 Int) Bool)

(assert (=> b!2815191 (= lt!1005668 (appendIndex!290 (list!12340 (left!24826 (c!456257 input!3732))) (list!12340 (right!25156 (c!456257 input!3732))) i!1825))))

(assert (=> b!2815191 (= c!456365 (< i!1825 (size!25650 (left!24826 (c!456257 input!3732)))))))

(declare-fun d!817560 () Bool)

(declare-fun lt!1005667 () C!16770)

(assert (=> d!817560 (= lt!1005667 (apply!7678 (list!12340 (c!456257 input!3732)) i!1825))))

(assert (=> d!817560 (= lt!1005667 e!1780241)))

(declare-fun c!456364 () Bool)

(assert (=> d!817560 (= c!456364 (is-Leaf!15539 (c!456257 input!3732)))))

(declare-fun e!1780243 () Bool)

(assert (=> d!817560 e!1780243))

(declare-fun res!1171698 () Bool)

(assert (=> d!817560 (=> (not res!1171698) (not e!1780243))))

(assert (=> d!817560 (= res!1171698 (<= 0 i!1825))))

(assert (=> d!817560 (= (apply!7682 (c!456257 input!3732) i!1825) lt!1005667)))

(declare-fun b!2815190 () Bool)

(declare-fun apply!7684 (IArray!20403 Int) C!16770)

(assert (=> b!2815190 (= e!1780241 (apply!7684 (xs!13311 (c!456257 input!3732)) i!1825))))

(declare-fun b!2815192 () Bool)

(assert (=> b!2815192 (= e!1780240 (- i!1825 (size!25650 (left!24826 (c!456257 input!3732)))))))

(declare-fun b!2815193 () Bool)

(assert (=> b!2815193 (= e!1780243 (< i!1825 (size!25650 (c!456257 input!3732))))))

(assert (= (and d!817560 res!1171698) b!2815193))

(assert (= (and d!817560 c!456364) b!2815190))

(assert (= (and d!817560 (not c!456364)) b!2815191))

(assert (= (and b!2815191 c!456365) b!2815187))

(assert (= (and b!2815191 (not c!456365)) b!2815188))

(assert (= (or b!2815187 b!2815188) bm!183207))

(assert (= (and bm!183207 c!456366) b!2815189))

(assert (= (and bm!183207 (not c!456366)) b!2815192))

(declare-fun m!3246155 () Bool)

(assert (=> b!2815192 m!3246155))

(assert (=> b!2815191 m!3246129))

(assert (=> b!2815191 m!3246131))

(assert (=> b!2815191 m!3246129))

(assert (=> b!2815191 m!3246131))

(declare-fun m!3246157 () Bool)

(assert (=> b!2815191 m!3246157))

(assert (=> b!2815191 m!3246155))

(declare-fun m!3246159 () Bool)

(assert (=> b!2815190 m!3246159))

(declare-fun m!3246161 () Bool)

(assert (=> bm!183207 m!3246161))

(assert (=> d!817560 m!3245895))

(assert (=> d!817560 m!3245895))

(declare-fun m!3246163 () Bool)

(assert (=> d!817560 m!3246163))

(assert (=> b!2815193 m!3245961))

(assert (=> d!817446 d!817560))

(declare-fun d!817562 () Bool)

(assert (=> d!817562 (= (inv!44738 (xs!13311 (c!456257 input!3732))) (<= (size!25649 (innerList!10259 (xs!13311 (c!456257 input!3732)))) 2147483647))))

(declare-fun bs!516649 () Bool)

(assert (= bs!516649 d!817562))

(declare-fun m!3246165 () Bool)

(assert (=> bs!516649 m!3246165))

(assert (=> b!2815006 d!817562))

(declare-fun d!817564 () Bool)

(assert (=> d!817564 (= (isEmpty!18225 lt!1005571) (is-Nil!32904 lt!1005571))))

(assert (=> d!817448 d!817564))

(declare-fun d!817566 () Bool)

(declare-fun lt!1005669 () Int)

(assert (=> d!817566 (>= lt!1005669 0)))

(declare-fun e!1780244 () Int)

(assert (=> d!817566 (= lt!1005669 e!1780244)))

(declare-fun c!456367 () Bool)

(assert (=> d!817566 (= c!456367 (is-Nil!32904 lt!1005615))))

(assert (=> d!817566 (= (size!25649 lt!1005615) lt!1005669)))

(declare-fun b!2815194 () Bool)

(assert (=> b!2815194 (= e!1780244 0)))

(declare-fun b!2815195 () Bool)

(assert (=> b!2815195 (= e!1780244 (+ 1 (size!25649 (t!230022 lt!1005615))))))

(assert (= (and d!817566 c!456367) b!2815194))

(assert (= (and d!817566 (not c!456367)) b!2815195))

(declare-fun m!3246167 () Bool)

(assert (=> b!2815195 m!3246167))

(assert (=> b!2814963 d!817566))

(assert (=> d!817466 d!817468))

(declare-fun d!817568 () Bool)

(declare-fun lt!1005672 () Bool)

(assert (=> d!817568 (= lt!1005672 (set.member lt!1005608 (content!4596 lt!1005575)))))

(declare-fun e!1780249 () Bool)

(assert (=> d!817568 (= lt!1005672 e!1780249)))

(declare-fun res!1171703 () Bool)

(assert (=> d!817568 (=> (not res!1171703) (not e!1780249))))

(assert (=> d!817568 (= res!1171703 (is-Cons!32904 lt!1005575))))

(assert (=> d!817568 (= (contains!6051 lt!1005575 lt!1005608) lt!1005672)))

(declare-fun b!2815200 () Bool)

(declare-fun e!1780250 () Bool)

(assert (=> b!2815200 (= e!1780249 e!1780250)))

(declare-fun res!1171704 () Bool)

(assert (=> b!2815200 (=> res!1171704 e!1780250)))

(assert (=> b!2815200 (= res!1171704 (= (h!38324 lt!1005575) lt!1005608))))

(declare-fun b!2815201 () Bool)

(assert (=> b!2815201 (= e!1780250 (contains!6051 (t!230022 lt!1005575) lt!1005608))))

(assert (= (and d!817568 res!1171703) b!2815200))

(assert (= (and b!2815200 (not res!1171704)) b!2815201))

(assert (=> d!817568 m!3245889))

(declare-fun m!3246169 () Bool)

(assert (=> d!817568 m!3246169))

(declare-fun m!3246171 () Bool)

(assert (=> b!2815201 m!3246171))

(assert (=> d!817426 d!817568))

(declare-fun bs!516650 () Bool)

(declare-fun d!817570 () Bool)

(assert (= bs!516650 (and d!817570 d!817534)))

(declare-fun lambda!103204 () Int)

(assert (=> bs!516650 (= lambda!103204 lambda!103201)))

(assert (=> d!817570 (= (nullableZipper!671 lt!1005567) (exists!1030 lt!1005567 lambda!103204))))

(declare-fun bs!516651 () Bool)

(assert (= bs!516651 d!817570))

(declare-fun m!3246173 () Bool)

(assert (=> bs!516651 m!3246173))

(assert (=> b!2814924 d!817570))

(assert (=> b!2814982 d!817532))

(declare-fun d!817572 () Bool)

(declare-fun res!1171709 () Bool)

(declare-fun e!1780255 () Bool)

(assert (=> d!817572 (=> res!1171709 e!1780255)))

(assert (=> d!817572 (= res!1171709 (is-Nil!32905 (exprs!2966 setElem!24740)))))

(assert (=> d!817572 (= (forall!6739 (exprs!2966 setElem!24740) lambda!103191) e!1780255)))

(declare-fun b!2815206 () Bool)

(declare-fun e!1780256 () Bool)

(assert (=> b!2815206 (= e!1780255 e!1780256)))

(declare-fun res!1171710 () Bool)

(assert (=> b!2815206 (=> (not res!1171710) (not e!1780256))))

(declare-fun dynLambda!13738 (Int Regex!8300) Bool)

(assert (=> b!2815206 (= res!1171710 (dynLambda!13738 lambda!103191 (h!38325 (exprs!2966 setElem!24740))))))

(declare-fun b!2815207 () Bool)

(assert (=> b!2815207 (= e!1780256 (forall!6739 (t!230023 (exprs!2966 setElem!24740)) lambda!103191))))

(assert (= (and d!817572 (not res!1171709)) b!2815206))

(assert (= (and b!2815206 res!1171710) b!2815207))

(declare-fun b_lambda!84207 () Bool)

(assert (=> (not b_lambda!84207) (not b!2815206)))

(declare-fun m!3246175 () Bool)

(assert (=> b!2815206 m!3246175))

(declare-fun m!3246177 () Bool)

(assert (=> b!2815207 m!3246177))

(assert (=> d!817470 d!817572))

(declare-fun d!817574 () Bool)

(assert (=> d!817574 (= (tail!4449 (drop!1773 lt!1005575 i!1825)) (t!230022 (drop!1773 lt!1005575 i!1825)))))

(assert (=> d!817456 d!817574))

(assert (=> d!817456 d!817442))

(declare-fun d!817576 () Bool)

(declare-fun e!1780259 () Bool)

(assert (=> d!817576 e!1780259))

(declare-fun res!1171711 () Bool)

(assert (=> d!817576 (=> (not res!1171711) (not e!1780259))))

(declare-fun lt!1005673 () List!33028)

(assert (=> d!817576 (= res!1171711 (set.subset (content!4596 lt!1005673) (content!4596 lt!1005575)))))

(declare-fun e!1780261 () List!33028)

(assert (=> d!817576 (= lt!1005673 e!1780261)))

(declare-fun c!456370 () Bool)

(assert (=> d!817576 (= c!456370 (is-Nil!32904 lt!1005575))))

(assert (=> d!817576 (= (drop!1773 lt!1005575 (+ i!1825 1)) lt!1005673)))

(declare-fun b!2815208 () Bool)

(declare-fun e!1780260 () Int)

(assert (=> b!2815208 (= e!1780260 0)))

(declare-fun b!2815209 () Bool)

(declare-fun e!1780257 () Int)

(assert (=> b!2815209 (= e!1780259 (= (size!25649 lt!1005673) e!1780257))))

(declare-fun c!456371 () Bool)

(assert (=> b!2815209 (= c!456371 (<= (+ i!1825 1) 0))))

(declare-fun b!2815210 () Bool)

(declare-fun e!1780258 () List!33028)

(assert (=> b!2815210 (= e!1780258 lt!1005575)))

(declare-fun bm!183208 () Bool)

(declare-fun call!183213 () Int)

(assert (=> bm!183208 (= call!183213 (size!25649 lt!1005575))))

(declare-fun b!2815211 () Bool)

(assert (=> b!2815211 (= e!1780258 (drop!1773 (t!230022 lt!1005575) (- (+ i!1825 1) 1)))))

(declare-fun b!2815212 () Bool)

(assert (=> b!2815212 (= e!1780261 e!1780258)))

(declare-fun c!456368 () Bool)

(assert (=> b!2815212 (= c!456368 (<= (+ i!1825 1) 0))))

(declare-fun b!2815213 () Bool)

(assert (=> b!2815213 (= e!1780261 Nil!32904)))

(declare-fun b!2815214 () Bool)

(assert (=> b!2815214 (= e!1780257 e!1780260)))

(declare-fun c!456369 () Bool)

(assert (=> b!2815214 (= c!456369 (>= (+ i!1825 1) call!183213))))

(declare-fun b!2815215 () Bool)

(assert (=> b!2815215 (= e!1780260 (- call!183213 (+ i!1825 1)))))

(declare-fun b!2815216 () Bool)

(assert (=> b!2815216 (= e!1780257 call!183213)))

(assert (= (and d!817576 c!456370) b!2815213))

(assert (= (and d!817576 (not c!456370)) b!2815212))

(assert (= (and b!2815212 c!456368) b!2815210))

(assert (= (and b!2815212 (not c!456368)) b!2815211))

(assert (= (and d!817576 res!1171711) b!2815209))

(assert (= (and b!2815209 c!456371) b!2815216))

(assert (= (and b!2815209 (not c!456371)) b!2815214))

(assert (= (and b!2815214 c!456369) b!2815208))

(assert (= (and b!2815214 (not c!456369)) b!2815215))

(assert (= (or b!2815216 b!2815214 b!2815215) bm!183208))

(declare-fun m!3246179 () Bool)

(assert (=> d!817576 m!3246179))

(assert (=> d!817576 m!3245889))

(declare-fun m!3246181 () Bool)

(assert (=> b!2815209 m!3246181))

(assert (=> bm!183208 m!3245859))

(declare-fun m!3246183 () Bool)

(assert (=> b!2815211 m!3246183))

(assert (=> d!817456 d!817576))

(declare-fun d!817578 () Bool)

(assert (=> d!817578 (= (tail!4449 (drop!1773 lt!1005575 i!1825)) (drop!1773 lt!1005575 (+ i!1825 1)))))

(assert (=> d!817578 true))

(declare-fun _$28!582 () Unit!46898)

(assert (=> d!817578 (= (choose!16645 lt!1005575 i!1825) _$28!582)))

(declare-fun bs!516652 () Bool)

(assert (= bs!516652 d!817578))

(assert (=> bs!516652 m!3245799))

(assert (=> bs!516652 m!3245799))

(assert (=> bs!516652 m!3245931))

(assert (=> bs!516652 m!3245933))

(assert (=> d!817456 d!817578))

(assert (=> b!2814961 d!817468))

(declare-fun d!817580 () Bool)

(assert (=> d!817580 (= (head!6224 lt!1005575) (h!38324 lt!1005575))))

(assert (=> b!2814916 d!817580))

(declare-fun d!817582 () Bool)

(declare-fun lt!1005674 () C!16770)

(assert (=> d!817582 (contains!6051 (tail!4449 lt!1005575) lt!1005674)))

(declare-fun e!1780263 () C!16770)

(assert (=> d!817582 (= lt!1005674 e!1780263)))

(declare-fun c!456372 () Bool)

(assert (=> d!817582 (= c!456372 (= (- i!1825 1) 0))))

(declare-fun e!1780262 () Bool)

(assert (=> d!817582 e!1780262))

(declare-fun res!1171712 () Bool)

(assert (=> d!817582 (=> (not res!1171712) (not e!1780262))))

(assert (=> d!817582 (= res!1171712 (<= 0 (- i!1825 1)))))

(assert (=> d!817582 (= (apply!7678 (tail!4449 lt!1005575) (- i!1825 1)) lt!1005674)))

(declare-fun b!2815217 () Bool)

(assert (=> b!2815217 (= e!1780262 (< (- i!1825 1) (size!25649 (tail!4449 lt!1005575))))))

(declare-fun b!2815218 () Bool)

(assert (=> b!2815218 (= e!1780263 (head!6224 (tail!4449 lt!1005575)))))

(declare-fun b!2815219 () Bool)

(assert (=> b!2815219 (= e!1780263 (apply!7678 (tail!4449 (tail!4449 lt!1005575)) (- (- i!1825 1) 1)))))

(assert (= (and d!817582 res!1171712) b!2815217))

(assert (= (and d!817582 c!456372) b!2815218))

(assert (= (and d!817582 (not c!456372)) b!2815219))

(assert (=> d!817582 m!3245863))

(declare-fun m!3246185 () Bool)

(assert (=> d!817582 m!3246185))

(assert (=> b!2815217 m!3245863))

(declare-fun m!3246187 () Bool)

(assert (=> b!2815217 m!3246187))

(assert (=> b!2815218 m!3245863))

(declare-fun m!3246189 () Bool)

(assert (=> b!2815218 m!3246189))

(assert (=> b!2815219 m!3245863))

(declare-fun m!3246191 () Bool)

(assert (=> b!2815219 m!3246191))

(assert (=> b!2815219 m!3246191))

(declare-fun m!3246193 () Bool)

(assert (=> b!2815219 m!3246193))

(assert (=> b!2814917 d!817582))

(declare-fun d!817584 () Bool)

(assert (=> d!817584 (= (tail!4449 lt!1005575) (t!230022 lt!1005575))))

(assert (=> b!2814917 d!817584))

(declare-fun bs!516653 () Bool)

(declare-fun d!817586 () Bool)

(assert (= bs!516653 (and d!817586 d!817470)))

(declare-fun lambda!103205 () Int)

(assert (=> bs!516653 (= lambda!103205 lambda!103191)))

(assert (=> d!817586 (= (inv!44730 setElem!24746) (forall!6739 (exprs!2966 setElem!24746) lambda!103205))))

(declare-fun bs!516654 () Bool)

(assert (= bs!516654 d!817586))

(declare-fun m!3246195 () Bool)

(assert (=> bs!516654 m!3246195))

(assert (=> setNonEmpty!24746 d!817586))

(declare-fun d!817588 () Bool)

(declare-fun c!456373 () Bool)

(assert (=> d!817588 (= c!456373 (is-Node!10199 (left!24826 (c!456257 input!3732))))))

(declare-fun e!1780264 () Bool)

(assert (=> d!817588 (= (inv!44731 (left!24826 (c!456257 input!3732))) e!1780264)))

(declare-fun b!2815220 () Bool)

(assert (=> b!2815220 (= e!1780264 (inv!44736 (left!24826 (c!456257 input!3732))))))

(declare-fun b!2815221 () Bool)

(declare-fun e!1780265 () Bool)

(assert (=> b!2815221 (= e!1780264 e!1780265)))

(declare-fun res!1171713 () Bool)

(assert (=> b!2815221 (= res!1171713 (not (is-Leaf!15539 (left!24826 (c!456257 input!3732)))))))

(assert (=> b!2815221 (=> res!1171713 e!1780265)))

(declare-fun b!2815222 () Bool)

(assert (=> b!2815222 (= e!1780265 (inv!44737 (left!24826 (c!456257 input!3732))))))

(assert (= (and d!817588 c!456373) b!2815220))

(assert (= (and d!817588 (not c!456373)) b!2815221))

(assert (= (and b!2815221 (not res!1171713)) b!2815222))

(declare-fun m!3246197 () Bool)

(assert (=> b!2815220 m!3246197))

(declare-fun m!3246199 () Bool)

(assert (=> b!2815222 m!3246199))

(assert (=> b!2815005 d!817588))

(declare-fun d!817590 () Bool)

(declare-fun c!456374 () Bool)

(assert (=> d!817590 (= c!456374 (is-Node!10199 (right!25156 (c!456257 input!3732))))))

(declare-fun e!1780266 () Bool)

(assert (=> d!817590 (= (inv!44731 (right!25156 (c!456257 input!3732))) e!1780266)))

(declare-fun b!2815223 () Bool)

(assert (=> b!2815223 (= e!1780266 (inv!44736 (right!25156 (c!456257 input!3732))))))

(declare-fun b!2815224 () Bool)

(declare-fun e!1780267 () Bool)

(assert (=> b!2815224 (= e!1780266 e!1780267)))

(declare-fun res!1171714 () Bool)

(assert (=> b!2815224 (= res!1171714 (not (is-Leaf!15539 (right!25156 (c!456257 input!3732)))))))

(assert (=> b!2815224 (=> res!1171714 e!1780267)))

(declare-fun b!2815225 () Bool)

(assert (=> b!2815225 (= e!1780267 (inv!44737 (right!25156 (c!456257 input!3732))))))

(assert (= (and d!817590 c!456374) b!2815223))

(assert (= (and d!817590 (not c!456374)) b!2815224))

(assert (= (and b!2815224 (not res!1171714)) b!2815225))

(declare-fun m!3246201 () Bool)

(assert (=> b!2815223 m!3246201))

(declare-fun m!3246203 () Bool)

(assert (=> b!2815225 m!3246203))

(assert (=> b!2815005 d!817590))

(assert (=> b!2814973 d!817468))

(assert (=> b!2814978 d!817570))

(declare-fun d!817592 () Bool)

(declare-fun res!1171719 () Bool)

(declare-fun e!1780270 () Bool)

(assert (=> d!817592 (=> (not res!1171719) (not e!1780270))))

(assert (=> d!817592 (= res!1171719 (<= (size!25649 (list!12342 (xs!13311 (c!456257 input!3732)))) 512))))

(assert (=> d!817592 (= (inv!44737 (c!456257 input!3732)) e!1780270)))

(declare-fun b!2815230 () Bool)

(declare-fun res!1171720 () Bool)

(assert (=> b!2815230 (=> (not res!1171720) (not e!1780270))))

(assert (=> b!2815230 (= res!1171720 (= (csize!20629 (c!456257 input!3732)) (size!25649 (list!12342 (xs!13311 (c!456257 input!3732))))))))

(declare-fun b!2815231 () Bool)

(assert (=> b!2815231 (= e!1780270 (and (> (csize!20629 (c!456257 input!3732)) 0) (<= (csize!20629 (c!456257 input!3732)) 512)))))

(assert (= (and d!817592 res!1171719) b!2815230))

(assert (= (and b!2815230 res!1171720) b!2815231))

(assert (=> d!817592 m!3246135))

(assert (=> d!817592 m!3246135))

(declare-fun m!3246205 () Bool)

(assert (=> d!817592 m!3246205))

(assert (=> b!2815230 m!3246135))

(assert (=> b!2815230 m!3246135))

(assert (=> b!2815230 m!3246205))

(assert (=> b!2814904 d!817592))

(declare-fun d!817594 () Bool)

(declare-fun c!456375 () Bool)

(assert (=> d!817594 (= c!456375 (isEmpty!18225 (tail!4449 lt!1005571)))))

(declare-fun e!1780271 () Bool)

(assert (=> d!817594 (= (matchZipper!390 (derivationStepZipper!396 lt!1005567 (head!6224 lt!1005571)) (tail!4449 lt!1005571)) e!1780271)))

(declare-fun b!2815232 () Bool)

(assert (=> b!2815232 (= e!1780271 (nullableZipper!671 (derivationStepZipper!396 lt!1005567 (head!6224 lt!1005571))))))

(declare-fun b!2815233 () Bool)

(assert (=> b!2815233 (= e!1780271 (matchZipper!390 (derivationStepZipper!396 (derivationStepZipper!396 lt!1005567 (head!6224 lt!1005571)) (head!6224 (tail!4449 lt!1005571))) (tail!4449 (tail!4449 lt!1005571))))))

(assert (= (and d!817594 c!456375) b!2815232))

(assert (= (and d!817594 (not c!456375)) b!2815233))

(assert (=> d!817594 m!3245921))

(declare-fun m!3246207 () Bool)

(assert (=> d!817594 m!3246207))

(assert (=> b!2815232 m!3245919))

(declare-fun m!3246209 () Bool)

(assert (=> b!2815232 m!3246209))

(assert (=> b!2815233 m!3245921))

(declare-fun m!3246211 () Bool)

(assert (=> b!2815233 m!3246211))

(assert (=> b!2815233 m!3245919))

(assert (=> b!2815233 m!3246211))

(declare-fun m!3246213 () Bool)

(assert (=> b!2815233 m!3246213))

(assert (=> b!2815233 m!3245921))

(declare-fun m!3246215 () Bool)

(assert (=> b!2815233 m!3246215))

(assert (=> b!2815233 m!3246213))

(assert (=> b!2815233 m!3246215))

(declare-fun m!3246217 () Bool)

(assert (=> b!2815233 m!3246217))

(assert (=> b!2814979 d!817594))

(declare-fun bs!516655 () Bool)

(declare-fun d!817596 () Bool)

(assert (= bs!516655 (and d!817596 d!817460)))

(declare-fun lambda!103206 () Int)

(assert (=> bs!516655 (= (= (head!6224 lt!1005571) lt!1005569) (= lambda!103206 lambda!103188))))

(declare-fun bs!516656 () Bool)

(assert (= bs!516656 (and d!817596 d!817524)))

(assert (=> bs!516656 (= (= (head!6224 lt!1005571) (head!6224 lt!1005570)) (= lambda!103206 lambda!103198))))

(declare-fun bs!516657 () Bool)

(assert (= bs!516657 (and d!817596 d!817544)))

(assert (=> bs!516657 (= (= (head!6224 lt!1005571) (apply!7679 input!3732 (+ 1 i!1825))) (= lambda!103206 lambda!103202))))

(declare-fun bs!516658 () Bool)

(assert (= bs!516658 (and d!817596 d!817556)))

(assert (=> bs!516658 (= (= (head!6224 lt!1005571) (apply!7679 input!3732 i!1825)) (= lambda!103206 lambda!103203))))

(assert (=> d!817596 true))

(assert (=> d!817596 (= (derivationStepZipper!396 lt!1005567 (head!6224 lt!1005571)) (flatMap!193 lt!1005567 lambda!103206))))

(declare-fun bs!516659 () Bool)

(assert (= bs!516659 d!817596))

(declare-fun m!3246219 () Bool)

(assert (=> bs!516659 m!3246219))

(assert (=> b!2814979 d!817596))

(declare-fun d!817598 () Bool)

(assert (=> d!817598 (= (head!6224 lt!1005571) (h!38324 lt!1005571))))

(assert (=> b!2814979 d!817598))

(declare-fun d!817600 () Bool)

(assert (=> d!817600 (= (tail!4449 lt!1005571) (t!230022 lt!1005571))))

(assert (=> b!2814979 d!817600))

(declare-fun d!817602 () Bool)

(declare-fun c!456376 () Bool)

(assert (=> d!817602 (= c!456376 (isEmpty!18225 (dropList!995 input!3732 (+ 1 i!1825))))))

(declare-fun e!1780272 () Bool)

(assert (=> d!817602 (= (matchZipper!390 lt!1005567 (dropList!995 input!3732 (+ 1 i!1825))) e!1780272)))

(declare-fun b!2815234 () Bool)

(assert (=> b!2815234 (= e!1780272 (nullableZipper!671 lt!1005567))))

(declare-fun b!2815235 () Bool)

(assert (=> b!2815235 (= e!1780272 (matchZipper!390 (derivationStepZipper!396 lt!1005567 (head!6224 (dropList!995 input!3732 (+ 1 i!1825)))) (tail!4449 (dropList!995 input!3732 (+ 1 i!1825)))))))

(assert (= (and d!817602 c!456376) b!2815234))

(assert (= (and d!817602 (not c!456376)) b!2815235))

(assert (=> d!817602 m!3245801))

(declare-fun m!3246221 () Bool)

(assert (=> d!817602 m!3246221))

(assert (=> b!2815234 m!3245879))

(assert (=> b!2815235 m!3245801))

(declare-fun m!3246223 () Bool)

(assert (=> b!2815235 m!3246223))

(assert (=> b!2815235 m!3246223))

(declare-fun m!3246225 () Bool)

(assert (=> b!2815235 m!3246225))

(assert (=> b!2815235 m!3245801))

(declare-fun m!3246227 () Bool)

(assert (=> b!2815235 m!3246227))

(assert (=> b!2815235 m!3246225))

(assert (=> b!2815235 m!3246227))

(declare-fun m!3246229 () Bool)

(assert (=> b!2815235 m!3246229))

(assert (=> d!817438 d!817602))

(assert (=> d!817438 d!817454))

(assert (=> d!817438 d!817428))

(declare-fun d!817604 () Bool)

(assert (=> d!817604 (= (matchZipper!390 lt!1005567 (dropList!995 input!3732 (+ 1 i!1825))) (matchZipperSequence!35 lt!1005567 input!3732 (+ 1 i!1825)))))

(assert (=> d!817604 true))

(declare-fun _$28!585 () Unit!46898)

(assert (=> d!817604 (= (choose!16643 lt!1005567 input!3732 (+ 1 i!1825)) _$28!585)))

(declare-fun bs!516660 () Bool)

(assert (= bs!516660 d!817604))

(assert (=> bs!516660 m!3245801))

(assert (=> bs!516660 m!3245801))

(assert (=> bs!516660 m!3245901))

(assert (=> bs!516660 m!3245777))

(assert (=> d!817438 d!817604))

(declare-fun b!2815248 () Bool)

(declare-fun e!1780277 () Bool)

(declare-fun e!1780278 () Bool)

(assert (=> b!2815248 (= e!1780277 e!1780278)))

(declare-fun res!1171738 () Bool)

(assert (=> b!2815248 (=> (not res!1171738) (not e!1780278))))

(declare-fun height!1503 (Conc!10199) Int)

(assert (=> b!2815248 (= res!1171738 (<= (- 1) (- (height!1503 (left!24826 (c!456257 input!3732))) (height!1503 (right!25156 (c!456257 input!3732))))))))

(declare-fun d!817606 () Bool)

(declare-fun res!1171735 () Bool)

(assert (=> d!817606 (=> res!1171735 e!1780277)))

(assert (=> d!817606 (= res!1171735 (not (is-Node!10199 (c!456257 input!3732))))))

(assert (=> d!817606 (= (isBalanced!3094 (c!456257 input!3732)) e!1780277)))

(declare-fun b!2815249 () Bool)

(declare-fun res!1171737 () Bool)

(assert (=> b!2815249 (=> (not res!1171737) (not e!1780278))))

(assert (=> b!2815249 (= res!1171737 (isBalanced!3094 (right!25156 (c!456257 input!3732))))))

(declare-fun b!2815250 () Bool)

(declare-fun res!1171733 () Bool)

(assert (=> b!2815250 (=> (not res!1171733) (not e!1780278))))

(assert (=> b!2815250 (= res!1171733 (<= (- (height!1503 (left!24826 (c!456257 input!3732))) (height!1503 (right!25156 (c!456257 input!3732)))) 1))))

(declare-fun b!2815251 () Bool)

(declare-fun isEmpty!18227 (Conc!10199) Bool)

(assert (=> b!2815251 (= e!1780278 (not (isEmpty!18227 (right!25156 (c!456257 input!3732)))))))

(declare-fun b!2815252 () Bool)

(declare-fun res!1171734 () Bool)

(assert (=> b!2815252 (=> (not res!1171734) (not e!1780278))))

(assert (=> b!2815252 (= res!1171734 (not (isEmpty!18227 (left!24826 (c!456257 input!3732)))))))

(declare-fun b!2815253 () Bool)

(declare-fun res!1171736 () Bool)

(assert (=> b!2815253 (=> (not res!1171736) (not e!1780278))))

(assert (=> b!2815253 (= res!1171736 (isBalanced!3094 (left!24826 (c!456257 input!3732))))))

(assert (= (and d!817606 (not res!1171735)) b!2815248))

(assert (= (and b!2815248 res!1171738) b!2815250))

(assert (= (and b!2815250 res!1171733) b!2815253))

(assert (= (and b!2815253 res!1171736) b!2815249))

(assert (= (and b!2815249 res!1171737) b!2815252))

(assert (= (and b!2815252 res!1171734) b!2815251))

(declare-fun m!3246231 () Bool)

(assert (=> b!2815250 m!3246231))

(declare-fun m!3246233 () Bool)

(assert (=> b!2815250 m!3246233))

(assert (=> b!2815248 m!3246231))

(assert (=> b!2815248 m!3246233))

(declare-fun m!3246235 () Bool)

(assert (=> b!2815253 m!3246235))

(declare-fun m!3246237 () Bool)

(assert (=> b!2815249 m!3246237))

(declare-fun m!3246239 () Bool)

(assert (=> b!2815251 m!3246239))

(declare-fun m!3246241 () Bool)

(assert (=> b!2815252 m!3246241))

(assert (=> d!817462 d!817606))

(assert (=> b!2814915 d!817532))

(declare-fun d!817608 () Bool)

(declare-fun c!456377 () Bool)

(assert (=> d!817608 (= c!456377 (is-Nil!32904 lt!1005611))))

(declare-fun e!1780279 () (Set C!16770))

(assert (=> d!817608 (= (content!4596 lt!1005611) e!1780279)))

(declare-fun b!2815254 () Bool)

(assert (=> b!2815254 (= e!1780279 (as set.empty (Set C!16770)))))

(declare-fun b!2815255 () Bool)

(assert (=> b!2815255 (= e!1780279 (set.union (set.insert (h!38324 lt!1005611) (as set.empty (Set C!16770))) (content!4596 (t!230022 lt!1005611))))))

(assert (= (and d!817608 c!456377) b!2815254))

(assert (= (and d!817608 (not c!456377)) b!2815255))

(declare-fun m!3246243 () Bool)

(assert (=> b!2815255 m!3246243))

(declare-fun m!3246245 () Bool)

(assert (=> b!2815255 m!3246245))

(assert (=> d!817434 d!817608))

(assert (=> d!817434 d!817520))

(assert (=> b!2814985 d!817532))

(declare-fun d!817610 () Bool)

(declare-fun e!1780282 () Bool)

(assert (=> d!817610 e!1780282))

(declare-fun res!1171739 () Bool)

(assert (=> d!817610 (=> (not res!1171739) (not e!1780282))))

(declare-fun lt!1005675 () List!33028)

(assert (=> d!817610 (= res!1171739 (set.subset (content!4596 lt!1005675) (content!4596 (list!12340 (c!456257 input!3732)))))))

(declare-fun e!1780284 () List!33028)

(assert (=> d!817610 (= lt!1005675 e!1780284)))

(declare-fun c!456380 () Bool)

(assert (=> d!817610 (= c!456380 (is-Nil!32904 (list!12340 (c!456257 input!3732))))))

(assert (=> d!817610 (= (drop!1773 (list!12340 (c!456257 input!3732)) (+ 1 i!1825)) lt!1005675)))

(declare-fun b!2815256 () Bool)

(declare-fun e!1780283 () Int)

(assert (=> b!2815256 (= e!1780283 0)))

(declare-fun b!2815257 () Bool)

(declare-fun e!1780280 () Int)

(assert (=> b!2815257 (= e!1780282 (= (size!25649 lt!1005675) e!1780280))))

(declare-fun c!456381 () Bool)

(assert (=> b!2815257 (= c!456381 (<= (+ 1 i!1825) 0))))

(declare-fun b!2815258 () Bool)

(declare-fun e!1780281 () List!33028)

(assert (=> b!2815258 (= e!1780281 (list!12340 (c!456257 input!3732)))))

(declare-fun bm!183209 () Bool)

(declare-fun call!183214 () Int)

(assert (=> bm!183209 (= call!183214 (size!25649 (list!12340 (c!456257 input!3732))))))

(declare-fun b!2815259 () Bool)

(assert (=> b!2815259 (= e!1780281 (drop!1773 (t!230022 (list!12340 (c!456257 input!3732))) (- (+ 1 i!1825) 1)))))

(declare-fun b!2815260 () Bool)

(assert (=> b!2815260 (= e!1780284 e!1780281)))

(declare-fun c!456378 () Bool)

(assert (=> b!2815260 (= c!456378 (<= (+ 1 i!1825) 0))))

(declare-fun b!2815261 () Bool)

(assert (=> b!2815261 (= e!1780284 Nil!32904)))

(declare-fun b!2815262 () Bool)

(assert (=> b!2815262 (= e!1780280 e!1780283)))

(declare-fun c!456379 () Bool)

(assert (=> b!2815262 (= c!456379 (>= (+ 1 i!1825) call!183214))))

(declare-fun b!2815263 () Bool)

(assert (=> b!2815263 (= e!1780283 (- call!183214 (+ 1 i!1825)))))

(declare-fun b!2815264 () Bool)

(assert (=> b!2815264 (= e!1780280 call!183214)))

(assert (= (and d!817610 c!456380) b!2815261))

(assert (= (and d!817610 (not c!456380)) b!2815260))

(assert (= (and b!2815260 c!456378) b!2815258))

(assert (= (and b!2815260 (not c!456378)) b!2815259))

(assert (= (and d!817610 res!1171739) b!2815257))

(assert (= (and b!2815257 c!456381) b!2815264))

(assert (= (and b!2815257 (not c!456381)) b!2815262))

(assert (= (and b!2815262 c!456379) b!2815256))

(assert (= (and b!2815262 (not c!456379)) b!2815263))

(assert (= (or b!2815264 b!2815262 b!2815263) bm!183209))

(declare-fun m!3246247 () Bool)

(assert (=> d!817610 m!3246247))

(assert (=> d!817610 m!3245895))

(assert (=> d!817610 m!3246123))

(declare-fun m!3246249 () Bool)

(assert (=> b!2815257 m!3246249))

(assert (=> bm!183209 m!3245895))

(assert (=> bm!183209 m!3246065))

(declare-fun m!3246251 () Bool)

(assert (=> b!2815259 m!3246251))

(assert (=> d!817454 d!817610))

(assert (=> d!817454 d!817552))

(declare-fun d!817612 () Bool)

(declare-fun res!1171746 () Bool)

(declare-fun e!1780287 () Bool)

(assert (=> d!817612 (=> (not res!1171746) (not e!1780287))))

(assert (=> d!817612 (= res!1171746 (= (csize!20628 (c!456257 input!3732)) (+ (size!25650 (left!24826 (c!456257 input!3732))) (size!25650 (right!25156 (c!456257 input!3732))))))))

(assert (=> d!817612 (= (inv!44736 (c!456257 input!3732)) e!1780287)))

(declare-fun b!2815271 () Bool)

(declare-fun res!1171747 () Bool)

(assert (=> b!2815271 (=> (not res!1171747) (not e!1780287))))

(assert (=> b!2815271 (= res!1171747 (and (not (= (left!24826 (c!456257 input!3732)) Empty!10199)) (not (= (right!25156 (c!456257 input!3732)) Empty!10199))))))

(declare-fun b!2815272 () Bool)

(declare-fun res!1171748 () Bool)

(assert (=> b!2815272 (=> (not res!1171748) (not e!1780287))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2815272 (= res!1171748 (= (cheight!10410 (c!456257 input!3732)) (+ (max!0 (height!1503 (left!24826 (c!456257 input!3732))) (height!1503 (right!25156 (c!456257 input!3732)))) 1)))))

(declare-fun b!2815273 () Bool)

(assert (=> b!2815273 (= e!1780287 (<= 0 (cheight!10410 (c!456257 input!3732))))))

(assert (= (and d!817612 res!1171746) b!2815271))

(assert (= (and b!2815271 res!1171747) b!2815272))

(assert (= (and b!2815272 res!1171748) b!2815273))

(assert (=> d!817612 m!3246155))

(declare-fun m!3246253 () Bool)

(assert (=> d!817612 m!3246253))

(assert (=> b!2815272 m!3246231))

(assert (=> b!2815272 m!3246233))

(assert (=> b!2815272 m!3246231))

(assert (=> b!2815272 m!3246233))

(declare-fun m!3246255 () Bool)

(assert (=> b!2815272 m!3246255))

(assert (=> b!2814902 d!817612))

(declare-fun b!2815274 () Bool)

(declare-fun e!1780288 () Bool)

(declare-fun tp!898737 () Bool)

(declare-fun tp!898738 () Bool)

(assert (=> b!2815274 (= e!1780288 (and tp!898737 tp!898738))))

(assert (=> b!2815012 (= tp!898715 e!1780288)))

(assert (= (and b!2815012 (is-Cons!32905 (exprs!2966 setElem!24746))) b!2815274))

(declare-fun b!2815279 () Bool)

(declare-fun e!1780291 () Bool)

(declare-fun tp_is_empty!14425 () Bool)

(declare-fun tp!898741 () Bool)

(assert (=> b!2815279 (= e!1780291 (and tp_is_empty!14425 tp!898741))))

(assert (=> b!2815007 (= tp!898707 e!1780291)))

(assert (= (and b!2815007 (is-Cons!32904 (innerList!10259 (xs!13311 (c!456257 input!3732))))) b!2815279))

(declare-fun b!2815291 () Bool)

(declare-fun e!1780294 () Bool)

(declare-fun tp!898755 () Bool)

(declare-fun tp!898752 () Bool)

(assert (=> b!2815291 (= e!1780294 (and tp!898755 tp!898752))))

(declare-fun b!2815293 () Bool)

(declare-fun tp!898756 () Bool)

(declare-fun tp!898754 () Bool)

(assert (=> b!2815293 (= e!1780294 (and tp!898756 tp!898754))))

(assert (=> b!2814996 (= tp!898699 e!1780294)))

(declare-fun b!2815292 () Bool)

(declare-fun tp!898753 () Bool)

(assert (=> b!2815292 (= e!1780294 tp!898753)))

(declare-fun b!2815290 () Bool)

(assert (=> b!2815290 (= e!1780294 tp_is_empty!14425)))

(assert (= (and b!2814996 (is-ElementMatch!8300 (h!38325 (exprs!2966 setElem!24740)))) b!2815290))

(assert (= (and b!2814996 (is-Concat!13440 (h!38325 (exprs!2966 setElem!24740)))) b!2815291))

(assert (= (and b!2814996 (is-Star!8300 (h!38325 (exprs!2966 setElem!24740)))) b!2815292))

(assert (= (and b!2814996 (is-Union!8300 (h!38325 (exprs!2966 setElem!24740)))) b!2815293))

(declare-fun b!2815294 () Bool)

(declare-fun e!1780295 () Bool)

(declare-fun tp!898757 () Bool)

(declare-fun tp!898758 () Bool)

(assert (=> b!2815294 (= e!1780295 (and tp!898757 tp!898758))))

(assert (=> b!2814996 (= tp!898700 e!1780295)))

(assert (= (and b!2814996 (is-Cons!32905 (t!230023 (exprs!2966 setElem!24740)))) b!2815294))

(declare-fun condSetEmpty!24750 () Bool)

(assert (=> setNonEmpty!24746 (= condSetEmpty!24750 (= setRest!24746 (as set.empty (Set Context!4932))))))

(declare-fun setRes!24750 () Bool)

(assert (=> setNonEmpty!24746 (= tp!898714 setRes!24750)))

(declare-fun setIsEmpty!24750 () Bool)

(assert (=> setIsEmpty!24750 setRes!24750))

(declare-fun setElem!24750 () Context!4932)

(declare-fun e!1780296 () Bool)

(declare-fun setNonEmpty!24750 () Bool)

(declare-fun tp!898759 () Bool)

(assert (=> setNonEmpty!24750 (= setRes!24750 (and tp!898759 (inv!44730 setElem!24750) e!1780296))))

(declare-fun setRest!24750 () (Set Context!4932))

(assert (=> setNonEmpty!24750 (= setRest!24746 (set.union (set.insert setElem!24750 (as set.empty (Set Context!4932))) setRest!24750))))

(declare-fun b!2815295 () Bool)

(declare-fun tp!898760 () Bool)

(assert (=> b!2815295 (= e!1780296 tp!898760)))

(assert (= (and setNonEmpty!24746 condSetEmpty!24750) setIsEmpty!24750))

(assert (= (and setNonEmpty!24746 (not condSetEmpty!24750)) setNonEmpty!24750))

(assert (= setNonEmpty!24750 b!2815295))

(declare-fun m!3246257 () Bool)

(assert (=> setNonEmpty!24750 m!3246257))

(declare-fun b!2815296 () Bool)

(declare-fun e!1780298 () Bool)

(declare-fun tp!898763 () Bool)

(declare-fun tp!898762 () Bool)

(assert (=> b!2815296 (= e!1780298 (and (inv!44731 (left!24826 (left!24826 (c!456257 input!3732)))) tp!898762 (inv!44731 (right!25156 (left!24826 (c!456257 input!3732)))) tp!898763))))

(declare-fun b!2815298 () Bool)

(declare-fun e!1780297 () Bool)

(declare-fun tp!898761 () Bool)

(assert (=> b!2815298 (= e!1780297 tp!898761)))

(declare-fun b!2815297 () Bool)

(assert (=> b!2815297 (= e!1780298 (and (inv!44738 (xs!13311 (left!24826 (c!456257 input!3732)))) e!1780297))))

(assert (=> b!2815005 (= tp!898708 (and (inv!44731 (left!24826 (c!456257 input!3732))) e!1780298))))

(assert (= (and b!2815005 (is-Node!10199 (left!24826 (c!456257 input!3732)))) b!2815296))

(assert (= b!2815297 b!2815298))

(assert (= (and b!2815005 (is-Leaf!15539 (left!24826 (c!456257 input!3732)))) b!2815297))

(declare-fun m!3246259 () Bool)

(assert (=> b!2815296 m!3246259))

(declare-fun m!3246261 () Bool)

(assert (=> b!2815296 m!3246261))

(declare-fun m!3246263 () Bool)

(assert (=> b!2815297 m!3246263))

(assert (=> b!2815005 m!3245965))

(declare-fun e!1780300 () Bool)

(declare-fun tp!898765 () Bool)

(declare-fun tp!898766 () Bool)

(declare-fun b!2815299 () Bool)

(assert (=> b!2815299 (= e!1780300 (and (inv!44731 (left!24826 (right!25156 (c!456257 input!3732)))) tp!898765 (inv!44731 (right!25156 (right!25156 (c!456257 input!3732)))) tp!898766))))

(declare-fun b!2815301 () Bool)

(declare-fun e!1780299 () Bool)

(declare-fun tp!898764 () Bool)

(assert (=> b!2815301 (= e!1780299 tp!898764)))

(declare-fun b!2815300 () Bool)

(assert (=> b!2815300 (= e!1780300 (and (inv!44738 (xs!13311 (right!25156 (c!456257 input!3732)))) e!1780299))))

(assert (=> b!2815005 (= tp!898709 (and (inv!44731 (right!25156 (c!456257 input!3732))) e!1780300))))

(assert (= (and b!2815005 (is-Node!10199 (right!25156 (c!456257 input!3732)))) b!2815299))

(assert (= b!2815300 b!2815301))

(assert (= (and b!2815005 (is-Leaf!15539 (right!25156 (c!456257 input!3732)))) b!2815300))

(declare-fun m!3246265 () Bool)

(assert (=> b!2815299 m!3246265))

(declare-fun m!3246267 () Bool)

(assert (=> b!2815299 m!3246267))

(declare-fun m!3246269 () Bool)

(assert (=> b!2815300 m!3246269))

(assert (=> b!2815005 m!3245967))

(declare-fun b_lambda!84209 () Bool)

(assert (= b_lambda!84207 (or d!817470 b_lambda!84209)))

(declare-fun bs!516661 () Bool)

(declare-fun d!817614 () Bool)

(assert (= bs!516661 (and d!817614 d!817470)))

(declare-fun validRegex!3346 (Regex!8300) Bool)

(assert (=> bs!516661 (= (dynLambda!13738 lambda!103191 (h!38325 (exprs!2966 setElem!24740))) (validRegex!3346 (h!38325 (exprs!2966 setElem!24740))))))

(declare-fun m!3246271 () Bool)

(assert (=> bs!516661 m!3246271))

(assert (=> b!2815206 d!817614))

(push 1)

(assert (not b!2815299))

(assert (not d!817530))

(assert (not b!2815190))

(assert (not d!817550))

(assert (not d!817594))

(assert (not d!817582))

(assert (not bm!183202))

(assert (not bm!183209))

(assert (not b!2815248))

(assert (not b!2815219))

(assert (not d!817542))

(assert (not b!2815005))

(assert (not b!2815191))

(assert (not b!2815211))

(assert tp_is_empty!14425)

(assert (not b!2815077))

(assert (not b!2815136))

(assert (not d!817576))

(assert (not b!2815172))

(assert (not d!817602))

(assert (not b!2815250))

(assert (not bm!183208))

(assert (not d!817578))

(assert (not b!2815274))

(assert (not b!2815253))

(assert (not d!817540))

(assert (not d!817562))

(assert (not b!2815193))

(assert (not d!817610))

(assert (not b!2815217))

(assert (not d!817524))

(assert (not b!2815171))

(assert (not b!2815234))

(assert (not b!2815230))

(assert (not b!2815168))

(assert (not b!2815195))

(assert (not b!2815291))

(assert (not d!817544))

(assert (not b!2815209))

(assert (not setNonEmpty!24750))

(assert (not b!2815251))

(assert (not b!2815297))

(assert (not b!2815169))

(assert (not b!2815301))

(assert (not d!817514))

(assert (not b!2815225))

(assert (not d!817538))

(assert (not b!2815079))

(assert (not d!817546))

(assert (not b!2815295))

(assert (not d!817508))

(assert (not b!2815148))

(assert (not b!2815138))

(assert (not bm!183203))

(assert (not b!2815279))

(assert (not d!817604))

(assert (not b!2815249))

(assert (not d!817592))

(assert (not b!2815222))

(assert (not b!2815298))

(assert (not b!2815257))

(assert (not b!2815150))

(assert (not b!2815296))

(assert (not b!2815207))

(assert (not bm!183207))

(assert (not b!2815272))

(assert (not b!2815255))

(assert (not d!817534))

(assert (not d!817522))

(assert (not b!2815144))

(assert (not d!817560))

(assert (not b!2815192))

(assert (not b!2815218))

(assert (not b!2815233))

(assert (not d!817586))

(assert (not b!2815223))

(assert (not b!2815293))

(assert (not bs!516661))

(assert (not b!2815170))

(assert (not bm!183204))

(assert (not b!2815134))

(assert (not b!2815235))

(assert (not b!2815120))

(assert (not b!2815166))

(assert (not b!2815201))

(assert (not b!2815090))

(assert (not b!2815122))

(assert (not b!2815292))

(assert (not b!2815220))

(assert (not d!817570))

(assert (not d!817556))

(assert (not b!2815127))

(assert (not d!817596))

(assert (not d!817612))

(assert (not b!2815146))

(assert (not b!2815145))

(assert (not d!817558))

(assert (not b!2815259))

(assert (not b!2815232))

(assert (not d!817554))

(assert (not b!2815300))

(assert (not b!2815294))

(assert (not b!2815252))

(assert (not d!817568))

(assert (not b_lambda!84209))

(assert (not b!2815105))

(assert (not b!2815126))

(assert (not b!2815167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

