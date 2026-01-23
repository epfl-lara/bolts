; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272922 () Bool)

(assert start!272922)

(declare-fun res!1171889 () Bool)

(declare-fun e!1780620 () Bool)

(assert (=> start!272922 (=> (not res!1171889) (not e!1780620))))

(declare-fun i!1825 () Int)

(assert (=> start!272922 (= res!1171889 (>= i!1825 0))))

(assert (=> start!272922 e!1780620))

(assert (=> start!272922 true))

(declare-datatypes ((C!16790 0))(
  ( (C!16791 (val!10375 Int)) )
))
(declare-datatypes ((List!33044 0))(
  ( (Nil!32920) (Cons!32920 (h!38340 C!16790) (t!230048 List!33044)) )
))
(declare-datatypes ((IArray!20423 0))(
  ( (IArray!20424 (innerList!10269 List!33044)) )
))
(declare-datatypes ((Conc!10209 0))(
  ( (Node!10209 (left!24849 Conc!10209) (right!25179 Conc!10209) (csize!20648 Int) (cheight!10420 Int)) (Leaf!15554 (xs!13321 IArray!20423) (csize!20649 Int)) (Empty!10209) )
))
(declare-datatypes ((BalanceConc!20056 0))(
  ( (BalanceConc!20057 (c!456497 Conc!10209)) )
))
(declare-fun input!3732 () BalanceConc!20056)

(declare-fun e!1780619 () Bool)

(declare-fun inv!44789 (BalanceConc!20056) Bool)

(assert (=> start!272922 (and (inv!44789 input!3732) e!1780619)))

(declare-fun condSetEmpty!24778 () Bool)

(declare-datatypes ((Regex!8306 0))(
  ( (ElementMatch!8306 (c!456498 C!16790)) (Concat!13446 (regOne!17124 Regex!8306) (regTwo!17124 Regex!8306)) (EmptyExpr!8306) (Star!8306 (reg!8635 Regex!8306)) (EmptyLang!8306) (Union!8306 (regOne!17125 Regex!8306) (regTwo!17125 Regex!8306)) )
))
(declare-datatypes ((List!33045 0))(
  ( (Nil!32921) (Cons!32921 (h!38341 Regex!8306) (t!230049 List!33045)) )
))
(declare-datatypes ((Context!4944 0))(
  ( (Context!4945 (exprs!2972 List!33045)) )
))
(declare-fun z!592 () (Set Context!4944))

(assert (=> start!272922 (= condSetEmpty!24778 (= z!592 (as set.empty (Set Context!4944))))))

(declare-fun setRes!24778 () Bool)

(assert (=> start!272922 setRes!24778))

(declare-fun b!2815792 () Bool)

(declare-fun e!1780621 () Bool)

(assert (=> b!2815792 (= e!1780620 e!1780621)))

(declare-fun res!1171890 () Bool)

(assert (=> b!2815792 (=> (not res!1171890) (not e!1780621))))

(declare-fun lt!1005800 () Int)

(assert (=> b!2815792 (= res!1171890 (and (<= i!1825 lt!1005800) (not (= i!1825 lt!1005800))))))

(declare-fun size!25669 (BalanceConc!20056) Int)

(assert (=> b!2815792 (= lt!1005800 (size!25669 input!3732))))

(declare-fun b!2815793 () Bool)

(declare-fun lt!1005797 () List!33044)

(declare-fun size!25670 (List!33044) Int)

(assert (=> b!2815793 (= e!1780621 (not (< i!1825 (size!25670 lt!1005797))))))

(declare-fun head!6230 (List!33044) C!16790)

(declare-fun drop!1779 (List!33044 Int) List!33044)

(declare-fun apply!7698 (List!33044 Int) C!16790)

(assert (=> b!2815793 (= (head!6230 (drop!1779 lt!1005797 i!1825)) (apply!7698 lt!1005797 i!1825))))

(declare-datatypes ((Unit!46906 0))(
  ( (Unit!46907) )
))
(declare-fun lt!1005796 () Unit!46906)

(declare-fun lemmaDropApply!977 (List!33044 Int) Unit!46906)

(assert (=> b!2815793 (= lt!1005796 (lemmaDropApply!977 lt!1005797 i!1825))))

(declare-fun list!12352 (BalanceConc!20056) List!33044)

(assert (=> b!2815793 (= lt!1005797 (list!12352 input!3732))))

(declare-fun lt!1005799 () (Set Context!4944))

(declare-fun matchZipper!396 ((Set Context!4944) List!33044) Bool)

(declare-fun dropList!1001 (BalanceConc!20056 Int) List!33044)

(declare-fun matchZipperSequence!41 ((Set Context!4944) BalanceConc!20056 Int) Bool)

(assert (=> b!2815793 (= (matchZipper!396 lt!1005799 (dropList!1001 input!3732 (+ 1 i!1825))) (matchZipperSequence!41 lt!1005799 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005798 () Unit!46906)

(declare-fun lemmaMatchZipperSequenceEquivalent!35 ((Set Context!4944) BalanceConc!20056 Int) Unit!46906)

(assert (=> b!2815793 (= lt!1005798 (lemmaMatchZipperSequenceEquivalent!35 lt!1005799 input!3732 (+ 1 i!1825)))))

(declare-fun derivationStepZipper!402 ((Set Context!4944) C!16790) (Set Context!4944))

(declare-fun apply!7699 (BalanceConc!20056 Int) C!16790)

(assert (=> b!2815793 (= lt!1005799 (derivationStepZipper!402 z!592 (apply!7699 input!3732 i!1825)))))

(declare-fun b!2815794 () Bool)

(declare-fun e!1780618 () Bool)

(declare-fun tp!898935 () Bool)

(assert (=> b!2815794 (= e!1780618 tp!898935)))

(declare-fun setNonEmpty!24778 () Bool)

(declare-fun setElem!24778 () Context!4944)

(declare-fun tp!898937 () Bool)

(declare-fun inv!44790 (Context!4944) Bool)

(assert (=> setNonEmpty!24778 (= setRes!24778 (and tp!898937 (inv!44790 setElem!24778) e!1780618))))

(declare-fun setRest!24778 () (Set Context!4944))

(assert (=> setNonEmpty!24778 (= z!592 (set.union (set.insert setElem!24778 (as set.empty (Set Context!4944))) setRest!24778))))

(declare-fun b!2815795 () Bool)

(declare-fun tp!898936 () Bool)

(declare-fun inv!44791 (Conc!10209) Bool)

(assert (=> b!2815795 (= e!1780619 (and (inv!44791 (c!456497 input!3732)) tp!898936))))

(declare-fun setIsEmpty!24778 () Bool)

(assert (=> setIsEmpty!24778 setRes!24778))

(assert (= (and start!272922 res!1171889) b!2815792))

(assert (= (and b!2815792 res!1171890) b!2815793))

(assert (= start!272922 b!2815795))

(assert (= (and start!272922 condSetEmpty!24778) setIsEmpty!24778))

(assert (= (and start!272922 (not condSetEmpty!24778)) setNonEmpty!24778))

(assert (= setNonEmpty!24778 b!2815794))

(declare-fun m!3246781 () Bool)

(assert (=> b!2815792 m!3246781))

(declare-fun m!3246783 () Bool)

(assert (=> setNonEmpty!24778 m!3246783))

(declare-fun m!3246785 () Bool)

(assert (=> b!2815795 m!3246785))

(declare-fun m!3246787 () Bool)

(assert (=> b!2815793 m!3246787))

(declare-fun m!3246789 () Bool)

(assert (=> b!2815793 m!3246789))

(declare-fun m!3246791 () Bool)

(assert (=> b!2815793 m!3246791))

(declare-fun m!3246793 () Bool)

(assert (=> b!2815793 m!3246793))

(declare-fun m!3246795 () Bool)

(assert (=> b!2815793 m!3246795))

(declare-fun m!3246797 () Bool)

(assert (=> b!2815793 m!3246797))

(declare-fun m!3246799 () Bool)

(assert (=> b!2815793 m!3246799))

(declare-fun m!3246801 () Bool)

(assert (=> b!2815793 m!3246801))

(assert (=> b!2815793 m!3246787))

(declare-fun m!3246803 () Bool)

(assert (=> b!2815793 m!3246803))

(declare-fun m!3246805 () Bool)

(assert (=> b!2815793 m!3246805))

(declare-fun m!3246807 () Bool)

(assert (=> b!2815793 m!3246807))

(declare-fun m!3246809 () Bool)

(assert (=> b!2815793 m!3246809))

(assert (=> b!2815793 m!3246793))

(assert (=> b!2815793 m!3246797))

(declare-fun m!3246811 () Bool)

(assert (=> start!272922 m!3246811))

(push 1)

(assert (not b!2815794))

(assert (not start!272922))

(assert (not b!2815795))

(assert (not setNonEmpty!24778))

(assert (not b!2815792))

(assert (not b!2815793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!817807 () Bool)

(declare-fun c!456503 () Bool)

(declare-fun isEmpty!18233 (List!33044) Bool)

(assert (=> d!817807 (= c!456503 (isEmpty!18233 (dropList!1001 input!3732 (+ 1 i!1825))))))

(declare-fun e!1780636 () Bool)

(assert (=> d!817807 (= (matchZipper!396 lt!1005799 (dropList!1001 input!3732 (+ 1 i!1825))) e!1780636)))

(declare-fun b!2815812 () Bool)

(declare-fun nullableZipper!677 ((Set Context!4944)) Bool)

(assert (=> b!2815812 (= e!1780636 (nullableZipper!677 lt!1005799))))

(declare-fun b!2815813 () Bool)

(declare-fun tail!4455 (List!33044) List!33044)

(assert (=> b!2815813 (= e!1780636 (matchZipper!396 (derivationStepZipper!402 lt!1005799 (head!6230 (dropList!1001 input!3732 (+ 1 i!1825)))) (tail!4455 (dropList!1001 input!3732 (+ 1 i!1825)))))))

(assert (= (and d!817807 c!456503) b!2815812))

(assert (= (and d!817807 (not c!456503)) b!2815813))

(assert (=> d!817807 m!3246787))

(declare-fun m!3246845 () Bool)

(assert (=> d!817807 m!3246845))

(declare-fun m!3246847 () Bool)

(assert (=> b!2815812 m!3246847))

(assert (=> b!2815813 m!3246787))

(declare-fun m!3246849 () Bool)

(assert (=> b!2815813 m!3246849))

(assert (=> b!2815813 m!3246849))

(declare-fun m!3246851 () Bool)

(assert (=> b!2815813 m!3246851))

(assert (=> b!2815813 m!3246787))

(declare-fun m!3246853 () Bool)

(assert (=> b!2815813 m!3246853))

(assert (=> b!2815813 m!3246851))

(assert (=> b!2815813 m!3246853))

(declare-fun m!3246855 () Bool)

(assert (=> b!2815813 m!3246855))

(assert (=> b!2815793 d!817807))

(declare-fun d!817811 () Bool)

(assert (=> d!817811 true))

(declare-fun lambda!103236 () Int)

(declare-fun flatMap!197 ((Set Context!4944) Int) (Set Context!4944))

(assert (=> d!817811 (= (derivationStepZipper!402 z!592 (apply!7699 input!3732 i!1825)) (flatMap!197 z!592 lambda!103236))))

(declare-fun bs!516718 () Bool)

(assert (= bs!516718 d!817811))

(declare-fun m!3246857 () Bool)

(assert (=> bs!516718 m!3246857))

(assert (=> b!2815793 d!817811))

(declare-fun d!817813 () Bool)

(declare-fun list!12354 (Conc!10209) List!33044)

(assert (=> d!817813 (= (dropList!1001 input!3732 (+ 1 i!1825)) (drop!1779 (list!12354 (c!456497 input!3732)) (+ 1 i!1825)))))

(declare-fun bs!516719 () Bool)

(assert (= bs!516719 d!817813))

(declare-fun m!3246859 () Bool)

(assert (=> bs!516719 m!3246859))

(assert (=> bs!516719 m!3246859))

(declare-fun m!3246861 () Bool)

(assert (=> bs!516719 m!3246861))

(assert (=> b!2815793 d!817813))

(declare-fun d!817815 () Bool)

(assert (=> d!817815 (= (matchZipper!396 lt!1005799 (dropList!1001 input!3732 (+ 1 i!1825))) (matchZipperSequence!41 lt!1005799 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005818 () Unit!46906)

(declare-fun choose!16653 ((Set Context!4944) BalanceConc!20056 Int) Unit!46906)

(assert (=> d!817815 (= lt!1005818 (choose!16653 lt!1005799 input!3732 (+ 1 i!1825)))))

(declare-fun e!1780639 () Bool)

(assert (=> d!817815 e!1780639))

(declare-fun res!1171899 () Bool)

(assert (=> d!817815 (=> (not res!1171899) (not e!1780639))))

(assert (=> d!817815 (= res!1171899 (>= (+ 1 i!1825) 0))))

(assert (=> d!817815 (= (lemmaMatchZipperSequenceEquivalent!35 lt!1005799 input!3732 (+ 1 i!1825)) lt!1005818)))

(declare-fun b!2815818 () Bool)

(assert (=> b!2815818 (= e!1780639 (<= (+ 1 i!1825) (size!25669 input!3732)))))

(assert (= (and d!817815 res!1171899) b!2815818))

(assert (=> d!817815 m!3246787))

(assert (=> d!817815 m!3246787))

(assert (=> d!817815 m!3246789))

(assert (=> d!817815 m!3246803))

(declare-fun m!3246863 () Bool)

(assert (=> d!817815 m!3246863))

(assert (=> b!2815818 m!3246781))

(assert (=> b!2815793 d!817815))

(declare-fun d!817817 () Bool)

(assert (=> d!817817 (= (list!12352 input!3732) (list!12354 (c!456497 input!3732)))))

(declare-fun bs!516720 () Bool)

(assert (= bs!516720 d!817817))

(assert (=> bs!516720 m!3246859))

(assert (=> b!2815793 d!817817))

(declare-fun d!817819 () Bool)

(declare-fun c!456510 () Bool)

(assert (=> d!817819 (= c!456510 (= (+ 1 i!1825) (size!25669 input!3732)))))

(declare-fun e!1780642 () Bool)

(assert (=> d!817819 (= (matchZipperSequence!41 lt!1005799 input!3732 (+ 1 i!1825)) e!1780642)))

(declare-fun b!2815823 () Bool)

(assert (=> b!2815823 (= e!1780642 (nullableZipper!677 lt!1005799))))

(declare-fun b!2815824 () Bool)

(assert (=> b!2815824 (= e!1780642 (matchZipperSequence!41 (derivationStepZipper!402 lt!1005799 (apply!7699 input!3732 (+ 1 i!1825))) input!3732 (+ 1 i!1825 1)))))

(assert (= (and d!817819 c!456510) b!2815823))

(assert (= (and d!817819 (not c!456510)) b!2815824))

(assert (=> d!817819 m!3246781))

(assert (=> b!2815823 m!3246847))

(declare-fun m!3246865 () Bool)

(assert (=> b!2815824 m!3246865))

(assert (=> b!2815824 m!3246865))

(declare-fun m!3246867 () Bool)

(assert (=> b!2815824 m!3246867))

(assert (=> b!2815824 m!3246867))

(declare-fun m!3246869 () Bool)

(assert (=> b!2815824 m!3246869))

(assert (=> b!2815793 d!817819))

(declare-fun d!817821 () Bool)

(declare-fun lt!1005821 () C!16790)

(assert (=> d!817821 (= lt!1005821 (apply!7698 (list!12352 input!3732) i!1825))))

(declare-fun apply!7702 (Conc!10209 Int) C!16790)

(assert (=> d!817821 (= lt!1005821 (apply!7702 (c!456497 input!3732) i!1825))))

(declare-fun e!1780645 () Bool)

(assert (=> d!817821 e!1780645))

(declare-fun res!1171902 () Bool)

(assert (=> d!817821 (=> (not res!1171902) (not e!1780645))))

(assert (=> d!817821 (= res!1171902 (<= 0 i!1825))))

(assert (=> d!817821 (= (apply!7699 input!3732 i!1825) lt!1005821)))

(declare-fun b!2815827 () Bool)

(assert (=> b!2815827 (= e!1780645 (< i!1825 (size!25669 input!3732)))))

(assert (= (and d!817821 res!1171902) b!2815827))

(assert (=> d!817821 m!3246805))

(assert (=> d!817821 m!3246805))

(declare-fun m!3246871 () Bool)

(assert (=> d!817821 m!3246871))

(declare-fun m!3246873 () Bool)

(assert (=> d!817821 m!3246873))

(assert (=> b!2815827 m!3246781))

(assert (=> b!2815793 d!817821))

(declare-fun d!817823 () Bool)

(assert (=> d!817823 (= (head!6230 (drop!1779 lt!1005797 i!1825)) (h!38340 (drop!1779 lt!1005797 i!1825)))))

(assert (=> b!2815793 d!817823))

(declare-fun d!817825 () Bool)

(assert (=> d!817825 (= (head!6230 (drop!1779 lt!1005797 i!1825)) (apply!7698 lt!1005797 i!1825))))

(declare-fun lt!1005824 () Unit!46906)

(declare-fun choose!16654 (List!33044 Int) Unit!46906)

(assert (=> d!817825 (= lt!1005824 (choose!16654 lt!1005797 i!1825))))

(declare-fun e!1780648 () Bool)

(assert (=> d!817825 e!1780648))

(declare-fun res!1171905 () Bool)

(assert (=> d!817825 (=> (not res!1171905) (not e!1780648))))

(assert (=> d!817825 (= res!1171905 (>= i!1825 0))))

(assert (=> d!817825 (= (lemmaDropApply!977 lt!1005797 i!1825) lt!1005824)))

(declare-fun b!2815830 () Bool)

(assert (=> b!2815830 (= e!1780648 (< i!1825 (size!25670 lt!1005797)))))

(assert (= (and d!817825 res!1171905) b!2815830))

(assert (=> d!817825 m!3246797))

(assert (=> d!817825 m!3246797))

(assert (=> d!817825 m!3246799))

(assert (=> d!817825 m!3246791))

(declare-fun m!3246875 () Bool)

(assert (=> d!817825 m!3246875))

(assert (=> b!2815830 m!3246801))

(assert (=> b!2815793 d!817825))

(declare-fun d!817827 () Bool)

(declare-fun lt!1005827 () Int)

(assert (=> d!817827 (>= lt!1005827 0)))

(declare-fun e!1780651 () Int)

(assert (=> d!817827 (= lt!1005827 e!1780651)))

(declare-fun c!456513 () Bool)

(assert (=> d!817827 (= c!456513 (is-Nil!32920 lt!1005797))))

(assert (=> d!817827 (= (size!25670 lt!1005797) lt!1005827)))

(declare-fun b!2815835 () Bool)

(assert (=> b!2815835 (= e!1780651 0)))

(declare-fun b!2815836 () Bool)

(assert (=> b!2815836 (= e!1780651 (+ 1 (size!25670 (t!230048 lt!1005797))))))

(assert (= (and d!817827 c!456513) b!2815835))

(assert (= (and d!817827 (not c!456513)) b!2815836))

(declare-fun m!3246877 () Bool)

(assert (=> b!2815836 m!3246877))

(assert (=> b!2815793 d!817827))

(declare-fun d!817829 () Bool)

(declare-fun lt!1005830 () C!16790)

(declare-fun contains!6053 (List!33044 C!16790) Bool)

(assert (=> d!817829 (contains!6053 lt!1005797 lt!1005830)))

(declare-fun e!1780657 () C!16790)

(assert (=> d!817829 (= lt!1005830 e!1780657)))

(declare-fun c!456516 () Bool)

(assert (=> d!817829 (= c!456516 (= i!1825 0))))

(declare-fun e!1780656 () Bool)

(assert (=> d!817829 e!1780656))

(declare-fun res!1171908 () Bool)

(assert (=> d!817829 (=> (not res!1171908) (not e!1780656))))

(assert (=> d!817829 (= res!1171908 (<= 0 i!1825))))

(assert (=> d!817829 (= (apply!7698 lt!1005797 i!1825) lt!1005830)))

(declare-fun b!2815843 () Bool)

(assert (=> b!2815843 (= e!1780656 (< i!1825 (size!25670 lt!1005797)))))

(declare-fun b!2815844 () Bool)

(assert (=> b!2815844 (= e!1780657 (head!6230 lt!1005797))))

(declare-fun b!2815845 () Bool)

(assert (=> b!2815845 (= e!1780657 (apply!7698 (tail!4455 lt!1005797) (- i!1825 1)))))

(assert (= (and d!817829 res!1171908) b!2815843))

(assert (= (and d!817829 c!456516) b!2815844))

(assert (= (and d!817829 (not c!456516)) b!2815845))

(declare-fun m!3246879 () Bool)

(assert (=> d!817829 m!3246879))

(assert (=> b!2815843 m!3246801))

(declare-fun m!3246881 () Bool)

(assert (=> b!2815844 m!3246881))

(declare-fun m!3246883 () Bool)

(assert (=> b!2815845 m!3246883))

(assert (=> b!2815845 m!3246883))

(declare-fun m!3246885 () Bool)

(assert (=> b!2815845 m!3246885))

(assert (=> b!2815793 d!817829))

(declare-fun b!2815864 () Bool)

(declare-fun e!1780669 () List!33044)

(assert (=> b!2815864 (= e!1780669 (drop!1779 (t!230048 lt!1005797) (- i!1825 1)))))

(declare-fun b!2815865 () Bool)

(declare-fun e!1780672 () Int)

(assert (=> b!2815865 (= e!1780672 0)))

(declare-fun b!2815866 () Bool)

(declare-fun e!1780671 () Int)

(assert (=> b!2815866 (= e!1780671 e!1780672)))

(declare-fun c!456526 () Bool)

(declare-fun call!183225 () Int)

(assert (=> b!2815866 (= c!456526 (>= i!1825 call!183225))))

(declare-fun b!2815867 () Bool)

(assert (=> b!2815867 (= e!1780669 lt!1005797)))

(declare-fun bm!183220 () Bool)

(assert (=> bm!183220 (= call!183225 (size!25670 lt!1005797))))

(declare-fun b!2815868 () Bool)

(declare-fun e!1780668 () List!33044)

(assert (=> b!2815868 (= e!1780668 Nil!32920)))

(declare-fun d!817831 () Bool)

(declare-fun e!1780670 () Bool)

(assert (=> d!817831 e!1780670))

(declare-fun res!1171911 () Bool)

(assert (=> d!817831 (=> (not res!1171911) (not e!1780670))))

(declare-fun lt!1005833 () List!33044)

(declare-fun content!4598 (List!33044) (Set C!16790))

(assert (=> d!817831 (= res!1171911 (set.subset (content!4598 lt!1005833) (content!4598 lt!1005797)))))

(assert (=> d!817831 (= lt!1005833 e!1780668)))

(declare-fun c!456527 () Bool)

(assert (=> d!817831 (= c!456527 (is-Nil!32920 lt!1005797))))

(assert (=> d!817831 (= (drop!1779 lt!1005797 i!1825) lt!1005833)))

(declare-fun b!2815869 () Bool)

(assert (=> b!2815869 (= e!1780671 call!183225)))

(declare-fun b!2815870 () Bool)

(assert (=> b!2815870 (= e!1780672 (- call!183225 i!1825))))

(declare-fun b!2815871 () Bool)

(assert (=> b!2815871 (= e!1780670 (= (size!25670 lt!1005833) e!1780671))))

(declare-fun c!456528 () Bool)

(assert (=> b!2815871 (= c!456528 (<= i!1825 0))))

(declare-fun b!2815872 () Bool)

(assert (=> b!2815872 (= e!1780668 e!1780669)))

(declare-fun c!456525 () Bool)

(assert (=> b!2815872 (= c!456525 (<= i!1825 0))))

(assert (= (and d!817831 c!456527) b!2815868))

(assert (= (and d!817831 (not c!456527)) b!2815872))

(assert (= (and b!2815872 c!456525) b!2815867))

(assert (= (and b!2815872 (not c!456525)) b!2815864))

(assert (= (and d!817831 res!1171911) b!2815871))

(assert (= (and b!2815871 c!456528) b!2815869))

(assert (= (and b!2815871 (not c!456528)) b!2815866))

(assert (= (and b!2815866 c!456526) b!2815865))

(assert (= (and b!2815866 (not c!456526)) b!2815870))

(assert (= (or b!2815869 b!2815866 b!2815870) bm!183220))

(declare-fun m!3246887 () Bool)

(assert (=> b!2815864 m!3246887))

(assert (=> bm!183220 m!3246801))

(declare-fun m!3246889 () Bool)

(assert (=> d!817831 m!3246889))

(declare-fun m!3246891 () Bool)

(assert (=> d!817831 m!3246891))

(declare-fun m!3246893 () Bool)

(assert (=> b!2815871 m!3246893))

(assert (=> b!2815793 d!817831))

(declare-fun d!817833 () Bool)

(declare-fun lt!1005836 () Int)

(assert (=> d!817833 (= lt!1005836 (size!25670 (list!12352 input!3732)))))

(declare-fun size!25673 (Conc!10209) Int)

(assert (=> d!817833 (= lt!1005836 (size!25673 (c!456497 input!3732)))))

(assert (=> d!817833 (= (size!25669 input!3732) lt!1005836)))

(declare-fun bs!516721 () Bool)

(assert (= bs!516721 d!817833))

(assert (=> bs!516721 m!3246805))

(assert (=> bs!516721 m!3246805))

(declare-fun m!3246895 () Bool)

(assert (=> bs!516721 m!3246895))

(declare-fun m!3246897 () Bool)

(assert (=> bs!516721 m!3246897))

(assert (=> b!2815792 d!817833))

(declare-fun d!817835 () Bool)

(declare-fun c!456531 () Bool)

(assert (=> d!817835 (= c!456531 (is-Node!10209 (c!456497 input!3732)))))

(declare-fun e!1780677 () Bool)

(assert (=> d!817835 (= (inv!44791 (c!456497 input!3732)) e!1780677)))

(declare-fun b!2815879 () Bool)

(declare-fun inv!44795 (Conc!10209) Bool)

(assert (=> b!2815879 (= e!1780677 (inv!44795 (c!456497 input!3732)))))

(declare-fun b!2815880 () Bool)

(declare-fun e!1780678 () Bool)

(assert (=> b!2815880 (= e!1780677 e!1780678)))

(declare-fun res!1171914 () Bool)

(assert (=> b!2815880 (= res!1171914 (not (is-Leaf!15554 (c!456497 input!3732))))))

(assert (=> b!2815880 (=> res!1171914 e!1780678)))

(declare-fun b!2815881 () Bool)

(declare-fun inv!44796 (Conc!10209) Bool)

(assert (=> b!2815881 (= e!1780678 (inv!44796 (c!456497 input!3732)))))

(assert (= (and d!817835 c!456531) b!2815879))

(assert (= (and d!817835 (not c!456531)) b!2815880))

(assert (= (and b!2815880 (not res!1171914)) b!2815881))

(declare-fun m!3246899 () Bool)

(assert (=> b!2815879 m!3246899))

(declare-fun m!3246901 () Bool)

(assert (=> b!2815881 m!3246901))

(assert (=> b!2815795 d!817835))

(declare-fun d!817837 () Bool)

(declare-fun isBalanced!3100 (Conc!10209) Bool)

(assert (=> d!817837 (= (inv!44789 input!3732) (isBalanced!3100 (c!456497 input!3732)))))

(declare-fun bs!516722 () Bool)

(assert (= bs!516722 d!817837))

(declare-fun m!3246903 () Bool)

(assert (=> bs!516722 m!3246903))

(assert (=> start!272922 d!817837))

(declare-fun d!817839 () Bool)

(declare-fun lambda!103240 () Int)

(declare-fun forall!6745 (List!33045 Int) Bool)

(assert (=> d!817839 (= (inv!44790 setElem!24778) (forall!6745 (exprs!2972 setElem!24778) lambda!103240))))

(declare-fun bs!516723 () Bool)

(assert (= bs!516723 d!817839))

(declare-fun m!3246905 () Bool)

(assert (=> bs!516723 m!3246905))

(assert (=> setNonEmpty!24778 d!817839))

(declare-fun b!2815886 () Bool)

(declare-fun e!1780681 () Bool)

(declare-fun tp!898951 () Bool)

(declare-fun tp!898952 () Bool)

(assert (=> b!2815886 (= e!1780681 (and tp!898951 tp!898952))))

(assert (=> b!2815794 (= tp!898935 e!1780681)))

(assert (= (and b!2815794 (is-Cons!32921 (exprs!2972 setElem!24778))) b!2815886))

(declare-fun tp!898959 () Bool)

(declare-fun tp!898960 () Bool)

(declare-fun b!2815897 () Bool)

(declare-fun e!1780687 () Bool)

(assert (=> b!2815897 (= e!1780687 (and (inv!44791 (left!24849 (c!456497 input!3732))) tp!898960 (inv!44791 (right!25179 (c!456497 input!3732))) tp!898959))))

(declare-fun b!2815899 () Bool)

(declare-fun e!1780686 () Bool)

(declare-fun tp!898961 () Bool)

(assert (=> b!2815899 (= e!1780686 tp!898961)))

(declare-fun b!2815898 () Bool)

(declare-fun inv!44797 (IArray!20423) Bool)

(assert (=> b!2815898 (= e!1780687 (and (inv!44797 (xs!13321 (c!456497 input!3732))) e!1780686))))

(assert (=> b!2815795 (= tp!898936 (and (inv!44791 (c!456497 input!3732)) e!1780687))))

(assert (= (and b!2815795 (is-Node!10209 (c!456497 input!3732))) b!2815897))

(assert (= b!2815898 b!2815899))

(assert (= (and b!2815795 (is-Leaf!15554 (c!456497 input!3732))) b!2815898))

(declare-fun m!3246909 () Bool)

(assert (=> b!2815897 m!3246909))

(declare-fun m!3246911 () Bool)

(assert (=> b!2815897 m!3246911))

(declare-fun m!3246913 () Bool)

(assert (=> b!2815898 m!3246913))

(assert (=> b!2815795 m!3246785))

(declare-fun condSetEmpty!24784 () Bool)

(assert (=> setNonEmpty!24778 (= condSetEmpty!24784 (= setRest!24778 (as set.empty (Set Context!4944))))))

(declare-fun setRes!24784 () Bool)

(assert (=> setNonEmpty!24778 (= tp!898937 setRes!24784)))

(declare-fun setIsEmpty!24784 () Bool)

(assert (=> setIsEmpty!24784 setRes!24784))

(declare-fun tp!898966 () Bool)

(declare-fun e!1780690 () Bool)

(declare-fun setElem!24784 () Context!4944)

(declare-fun setNonEmpty!24784 () Bool)

(assert (=> setNonEmpty!24784 (= setRes!24784 (and tp!898966 (inv!44790 setElem!24784) e!1780690))))

(declare-fun setRest!24784 () (Set Context!4944))

(assert (=> setNonEmpty!24784 (= setRest!24778 (set.union (set.insert setElem!24784 (as set.empty (Set Context!4944))) setRest!24784))))

(declare-fun b!2815904 () Bool)

(declare-fun tp!898967 () Bool)

(assert (=> b!2815904 (= e!1780690 tp!898967)))

(assert (= (and setNonEmpty!24778 condSetEmpty!24784) setIsEmpty!24784))

(assert (= (and setNonEmpty!24778 (not condSetEmpty!24784)) setNonEmpty!24784))

(assert (= setNonEmpty!24784 b!2815904))

(declare-fun m!3246915 () Bool)

(assert (=> setNonEmpty!24784 m!3246915))

(push 1)

(assert (not d!817811))

(assert (not b!2815871))

(assert (not d!817825))

(assert (not b!2815843))

(assert (not b!2815813))

(assert (not b!2815818))

(assert (not d!817815))

(assert (not d!817829))

(assert (not b!2815898))

(assert (not d!817839))

(assert (not d!817819))

(assert (not b!2815897))

(assert (not b!2815836))

(assert (not b!2815904))

(assert (not b!2815879))

(assert (not d!817821))

(assert (not b!2815844))

(assert (not d!817813))

(assert (not d!817833))

(assert (not setNonEmpty!24784))

(assert (not b!2815845))

(assert (not b!2815812))

(assert (not b!2815881))

(assert (not b!2815899))

(assert (not b!2815886))

(assert (not b!2815824))

(assert (not b!2815823))

(assert (not d!817817))

(assert (not d!817807))

(assert (not b!2815795))

(assert (not b!2815827))

(assert (not d!817837))

(assert (not bm!183220))

(assert (not d!817831))

(assert (not b!2815864))

(assert (not b!2815830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

