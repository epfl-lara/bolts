; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272870 () Bool)

(assert start!272870)

(declare-fun b!2815656 () Bool)

(declare-fun e!1780529 () Bool)

(declare-datatypes ((C!16786 0))(
  ( (C!16787 (val!10373 Int)) )
))
(declare-datatypes ((List!33040 0))(
  ( (Nil!32916) (Cons!32916 (h!38336 C!16786) (t!230044 List!33040)) )
))
(declare-datatypes ((IArray!20419 0))(
  ( (IArray!20420 (innerList!10267 List!33040)) )
))
(declare-datatypes ((Conc!10207 0))(
  ( (Node!10207 (left!24842 Conc!10207) (right!25172 Conc!10207) (csize!20644 Int) (cheight!10418 Int)) (Leaf!15551 (xs!13319 IArray!20419) (csize!20645 Int)) (Empty!10207) )
))
(declare-datatypes ((BalanceConc!20052 0))(
  ( (BalanceConc!20053 (c!456465 Conc!10207)) )
))
(declare-fun input!3732 () BalanceConc!20052)

(declare-fun tp!898876 () Bool)

(declare-fun inv!44774 (Conc!10207) Bool)

(assert (=> b!2815656 (= e!1780529 (and (inv!44774 (c!456465 input!3732)) tp!898876))))

(declare-datatypes ((Regex!8304 0))(
  ( (ElementMatch!8304 (c!456466 C!16786)) (Concat!13444 (regOne!17120 Regex!8304) (regTwo!17120 Regex!8304)) (EmptyExpr!8304) (Star!8304 (reg!8633 Regex!8304)) (EmptyLang!8304) (Union!8304 (regOne!17121 Regex!8304) (regTwo!17121 Regex!8304)) )
))
(declare-datatypes ((List!33041 0))(
  ( (Nil!32917) (Cons!32917 (h!38337 Regex!8304) (t!230045 List!33041)) )
))
(declare-datatypes ((Context!4940 0))(
  ( (Context!4941 (exprs!2970 List!33041)) )
))
(declare-fun setElem!24766 () Context!4940)

(declare-fun setNonEmpty!24766 () Bool)

(declare-fun e!1780528 () Bool)

(declare-fun setRes!24766 () Bool)

(declare-fun tp!898877 () Bool)

(declare-fun inv!44775 (Context!4940) Bool)

(assert (=> setNonEmpty!24766 (= setRes!24766 (and tp!898877 (inv!44775 setElem!24766) e!1780528))))

(declare-fun z!592 () (Set Context!4940))

(declare-fun setRest!24766 () (Set Context!4940))

(assert (=> setNonEmpty!24766 (= z!592 (set.union (set.insert setElem!24766 (as set.empty (Set Context!4940))) setRest!24766))))

(declare-fun b!2815657 () Bool)

(declare-fun e!1780531 () Bool)

(declare-fun e!1780530 () Bool)

(assert (=> b!2815657 (= e!1780531 e!1780530)))

(declare-fun res!1171860 () Bool)

(assert (=> b!2815657 (=> (not res!1171860) (not e!1780530))))

(declare-fun i!1825 () Int)

(declare-fun lt!1005752 () Int)

(assert (=> b!2815657 (= res!1171860 (and (<= i!1825 lt!1005752) (not (= i!1825 lt!1005752))))))

(declare-fun size!25663 (BalanceConc!20052) Int)

(assert (=> b!2815657 (= lt!1005752 (size!25663 input!3732))))

(declare-fun setIsEmpty!24766 () Bool)

(assert (=> setIsEmpty!24766 setRes!24766))

(declare-fun b!2815659 () Bool)

(declare-fun tp!898875 () Bool)

(assert (=> b!2815659 (= e!1780528 tp!898875)))

(declare-fun res!1171859 () Bool)

(assert (=> start!272870 (=> (not res!1171859) (not e!1780531))))

(assert (=> start!272870 (= res!1171859 (>= i!1825 0))))

(assert (=> start!272870 e!1780531))

(assert (=> start!272870 true))

(declare-fun inv!44776 (BalanceConc!20052) Bool)

(assert (=> start!272870 (and (inv!44776 input!3732) e!1780529)))

(declare-fun condSetEmpty!24766 () Bool)

(assert (=> start!272870 (= condSetEmpty!24766 (= z!592 (as set.empty (Set Context!4940))))))

(assert (=> start!272870 setRes!24766))

(declare-fun b!2815658 () Bool)

(declare-fun size!25664 (List!33040) Int)

(declare-fun list!12348 (BalanceConc!20052) List!33040)

(assert (=> b!2815658 (= e!1780530 (not (< i!1825 (size!25664 (list!12348 input!3732)))))))

(declare-fun lt!1005750 () (Set Context!4940))

(declare-fun matchZipper!394 ((Set Context!4940) List!33040) Bool)

(declare-fun dropList!999 (BalanceConc!20052 Int) List!33040)

(declare-fun matchZipperSequence!39 ((Set Context!4940) BalanceConc!20052 Int) Bool)

(assert (=> b!2815658 (= (matchZipper!394 lt!1005750 (dropList!999 input!3732 (+ 1 i!1825))) (matchZipperSequence!39 lt!1005750 input!3732 (+ 1 i!1825)))))

(declare-datatypes ((Unit!46902 0))(
  ( (Unit!46903) )
))
(declare-fun lt!1005751 () Unit!46902)

(declare-fun lemmaMatchZipperSequenceEquivalent!33 ((Set Context!4940) BalanceConc!20052 Int) Unit!46902)

(assert (=> b!2815658 (= lt!1005751 (lemmaMatchZipperSequenceEquivalent!33 lt!1005750 input!3732 (+ 1 i!1825)))))

(declare-fun derivationStepZipper!400 ((Set Context!4940) C!16786) (Set Context!4940))

(declare-fun apply!7692 (BalanceConc!20052 Int) C!16786)

(assert (=> b!2815658 (= lt!1005750 (derivationStepZipper!400 z!592 (apply!7692 input!3732 i!1825)))))

(assert (= (and start!272870 res!1171859) b!2815657))

(assert (= (and b!2815657 res!1171860) b!2815658))

(assert (= start!272870 b!2815656))

(assert (= (and start!272870 condSetEmpty!24766) setIsEmpty!24766))

(assert (= (and start!272870 (not condSetEmpty!24766)) setNonEmpty!24766))

(assert (= setNonEmpty!24766 b!2815659))

(declare-fun m!3246633 () Bool)

(assert (=> b!2815656 m!3246633))

(declare-fun m!3246635 () Bool)

(assert (=> setNonEmpty!24766 m!3246635))

(declare-fun m!3246637 () Bool)

(assert (=> start!272870 m!3246637))

(declare-fun m!3246639 () Bool)

(assert (=> b!2815657 m!3246639))

(declare-fun m!3246641 () Bool)

(assert (=> b!2815658 m!3246641))

(declare-fun m!3246643 () Bool)

(assert (=> b!2815658 m!3246643))

(declare-fun m!3246645 () Bool)

(assert (=> b!2815658 m!3246645))

(declare-fun m!3246647 () Bool)

(assert (=> b!2815658 m!3246647))

(declare-fun m!3246649 () Bool)

(assert (=> b!2815658 m!3246649))

(assert (=> b!2815658 m!3246647))

(declare-fun m!3246651 () Bool)

(assert (=> b!2815658 m!3246651))

(assert (=> b!2815658 m!3246645))

(declare-fun m!3246653 () Bool)

(assert (=> b!2815658 m!3246653))

(assert (=> b!2815658 m!3246641))

(declare-fun m!3246655 () Bool)

(assert (=> b!2815658 m!3246655))

(push 1)

(assert (not b!2815659))

(assert (not start!272870))

(assert (not b!2815656))

(assert (not b!2815658))

(assert (not b!2815657))

(assert (not setNonEmpty!24766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!817758 () Bool)

(declare-fun c!456471 () Bool)

(assert (=> d!817758 (= c!456471 (is-Node!10207 (c!456465 input!3732)))))

(declare-fun e!1780548 () Bool)

(assert (=> d!817758 (= (inv!44774 (c!456465 input!3732)) e!1780548)))

(declare-fun b!2815678 () Bool)

(declare-fun inv!44780 (Conc!10207) Bool)

(assert (=> b!2815678 (= e!1780548 (inv!44780 (c!456465 input!3732)))))

(declare-fun b!2815679 () Bool)

(declare-fun e!1780549 () Bool)

(assert (=> b!2815679 (= e!1780548 e!1780549)))

(declare-fun res!1171869 () Bool)

(assert (=> b!2815679 (= res!1171869 (not (is-Leaf!15551 (c!456465 input!3732))))))

(assert (=> b!2815679 (=> res!1171869 e!1780549)))

(declare-fun b!2815680 () Bool)

(declare-fun inv!44781 (Conc!10207) Bool)

(assert (=> b!2815680 (= e!1780549 (inv!44781 (c!456465 input!3732)))))

(assert (= (and d!817758 c!456471) b!2815678))

(assert (= (and d!817758 (not c!456471)) b!2815679))

(assert (= (and b!2815679 (not res!1171869)) b!2815680))

(declare-fun m!3246681 () Bool)

(assert (=> b!2815678 m!3246681))

(declare-fun m!3246683 () Bool)

(assert (=> b!2815680 m!3246683))

(assert (=> b!2815656 d!817758))

(declare-fun d!817762 () Bool)

(declare-fun lt!1005764 () Int)

(assert (=> d!817762 (= lt!1005764 (size!25664 (list!12348 input!3732)))))

(declare-fun size!25667 (Conc!10207) Int)

(assert (=> d!817762 (= lt!1005764 (size!25667 (c!456465 input!3732)))))

(assert (=> d!817762 (= (size!25663 input!3732) lt!1005764)))

(declare-fun bs!516704 () Bool)

(assert (= bs!516704 d!817762))

(assert (=> bs!516704 m!3246647))

(assert (=> bs!516704 m!3246647))

(assert (=> bs!516704 m!3246649))

(declare-fun m!3246685 () Bool)

(assert (=> bs!516704 m!3246685))

(assert (=> b!2815657 d!817762))

(declare-fun d!817764 () Bool)

(declare-fun isBalanced!3098 (Conc!10207) Bool)

(assert (=> d!817764 (= (inv!44776 input!3732) (isBalanced!3098 (c!456465 input!3732)))))

(declare-fun bs!516705 () Bool)

(assert (= bs!516705 d!817764))

(declare-fun m!3246691 () Bool)

(assert (=> bs!516705 m!3246691))

(assert (=> start!272870 d!817764))

(declare-fun d!817768 () Bool)

(declare-fun lt!1005767 () Int)

(assert (=> d!817768 (>= lt!1005767 0)))

(declare-fun e!1780558 () Int)

(assert (=> d!817768 (= lt!1005767 e!1780558)))

(declare-fun c!456477 () Bool)

(assert (=> d!817768 (= c!456477 (is-Nil!32916 (list!12348 input!3732)))))

(assert (=> d!817768 (= (size!25664 (list!12348 input!3732)) lt!1005767)))

(declare-fun b!2815694 () Bool)

(assert (=> b!2815694 (= e!1780558 0)))

(declare-fun b!2815695 () Bool)

(assert (=> b!2815695 (= e!1780558 (+ 1 (size!25664 (t!230044 (list!12348 input!3732)))))))

(assert (= (and d!817768 c!456477) b!2815694))

(assert (= (and d!817768 (not c!456477)) b!2815695))

(declare-fun m!3246695 () Bool)

(assert (=> b!2815695 m!3246695))

(assert (=> b!2815658 d!817768))

(declare-fun d!817772 () Bool)

(assert (=> d!817772 true))

(declare-fun lambda!103224 () Int)

(declare-fun flatMap!195 ((Set Context!4940) Int) (Set Context!4940))

(assert (=> d!817772 (= (derivationStepZipper!400 z!592 (apply!7692 input!3732 i!1825)) (flatMap!195 z!592 lambda!103224))))

(declare-fun bs!516707 () Bool)

(assert (= bs!516707 d!817772))

(declare-fun m!3246697 () Bool)

(assert (=> bs!516707 m!3246697))

(assert (=> b!2815658 d!817772))

(declare-fun d!817774 () Bool)

(declare-fun drop!1777 (List!33040 Int) List!33040)

(declare-fun list!12350 (Conc!10207) List!33040)

(assert (=> d!817774 (= (dropList!999 input!3732 (+ 1 i!1825)) (drop!1777 (list!12350 (c!456465 input!3732)) (+ 1 i!1825)))))

(declare-fun bs!516708 () Bool)

(assert (= bs!516708 d!817774))

(declare-fun m!3246699 () Bool)

(assert (=> bs!516708 m!3246699))

(assert (=> bs!516708 m!3246699))

(declare-fun m!3246701 () Bool)

(assert (=> bs!516708 m!3246701))

(assert (=> b!2815658 d!817774))

(declare-fun d!817776 () Bool)

(assert (=> d!817776 (= (list!12348 input!3732) (list!12350 (c!456465 input!3732)))))

(declare-fun bs!516709 () Bool)

(assert (= bs!516709 d!817776))

(assert (=> bs!516709 m!3246699))

(assert (=> b!2815658 d!817776))

(declare-fun d!817778 () Bool)

(declare-fun c!456482 () Bool)

(declare-fun isEmpty!18231 (List!33040) Bool)

(assert (=> d!817778 (= c!456482 (isEmpty!18231 (dropList!999 input!3732 (+ 1 i!1825))))))

(declare-fun e!1780561 () Bool)

(assert (=> d!817778 (= (matchZipper!394 lt!1005750 (dropList!999 input!3732 (+ 1 i!1825))) e!1780561)))

(declare-fun b!2815702 () Bool)

(declare-fun nullableZipper!675 ((Set Context!4940)) Bool)

(assert (=> b!2815702 (= e!1780561 (nullableZipper!675 lt!1005750))))

(declare-fun b!2815703 () Bool)

(declare-fun head!6228 (List!33040) C!16786)

(declare-fun tail!4453 (List!33040) List!33040)

(assert (=> b!2815703 (= e!1780561 (matchZipper!394 (derivationStepZipper!400 lt!1005750 (head!6228 (dropList!999 input!3732 (+ 1 i!1825)))) (tail!4453 (dropList!999 input!3732 (+ 1 i!1825)))))))

(assert (= (and d!817778 c!456482) b!2815702))

(assert (= (and d!817778 (not c!456482)) b!2815703))

(assert (=> d!817778 m!3246645))

(declare-fun m!3246703 () Bool)

(assert (=> d!817778 m!3246703))

(declare-fun m!3246705 () Bool)

(assert (=> b!2815702 m!3246705))

(assert (=> b!2815703 m!3246645))

(declare-fun m!3246707 () Bool)

(assert (=> b!2815703 m!3246707))

(assert (=> b!2815703 m!3246707))

(declare-fun m!3246709 () Bool)

(assert (=> b!2815703 m!3246709))

(assert (=> b!2815703 m!3246645))

(declare-fun m!3246711 () Bool)

(assert (=> b!2815703 m!3246711))

(assert (=> b!2815703 m!3246709))

(assert (=> b!2815703 m!3246711))

(declare-fun m!3246713 () Bool)

(assert (=> b!2815703 m!3246713))

(assert (=> b!2815658 d!817778))

(declare-fun d!817780 () Bool)

(declare-fun lt!1005770 () C!16786)

(declare-fun apply!7694 (List!33040 Int) C!16786)

(assert (=> d!817780 (= lt!1005770 (apply!7694 (list!12348 input!3732) i!1825))))

(declare-fun apply!7695 (Conc!10207 Int) C!16786)

(assert (=> d!817780 (= lt!1005770 (apply!7695 (c!456465 input!3732) i!1825))))

(declare-fun e!1780564 () Bool)

(assert (=> d!817780 e!1780564))

(declare-fun res!1171875 () Bool)

(assert (=> d!817780 (=> (not res!1171875) (not e!1780564))))

(assert (=> d!817780 (= res!1171875 (<= 0 i!1825))))

(assert (=> d!817780 (= (apply!7692 input!3732 i!1825) lt!1005770)))

(declare-fun b!2815706 () Bool)

(assert (=> b!2815706 (= e!1780564 (< i!1825 (size!25663 input!3732)))))

(assert (= (and d!817780 res!1171875) b!2815706))

(assert (=> d!817780 m!3246647))

(assert (=> d!817780 m!3246647))

(declare-fun m!3246715 () Bool)

(assert (=> d!817780 m!3246715))

(declare-fun m!3246717 () Bool)

(assert (=> d!817780 m!3246717))

(assert (=> b!2815706 m!3246639))

(assert (=> b!2815658 d!817780))

(declare-fun d!817782 () Bool)

(declare-fun c!456485 () Bool)

(assert (=> d!817782 (= c!456485 (= (+ 1 i!1825) (size!25663 input!3732)))))

(declare-fun e!1780567 () Bool)

(assert (=> d!817782 (= (matchZipperSequence!39 lt!1005750 input!3732 (+ 1 i!1825)) e!1780567)))

(declare-fun b!2815711 () Bool)

(assert (=> b!2815711 (= e!1780567 (nullableZipper!675 lt!1005750))))

(declare-fun b!2815712 () Bool)

(assert (=> b!2815712 (= e!1780567 (matchZipperSequence!39 (derivationStepZipper!400 lt!1005750 (apply!7692 input!3732 (+ 1 i!1825))) input!3732 (+ 1 i!1825 1)))))

(assert (= (and d!817782 c!456485) b!2815711))

(assert (= (and d!817782 (not c!456485)) b!2815712))

(assert (=> d!817782 m!3246639))

(assert (=> b!2815711 m!3246705))

(declare-fun m!3246719 () Bool)

(assert (=> b!2815712 m!3246719))

(assert (=> b!2815712 m!3246719))

(declare-fun m!3246721 () Bool)

(assert (=> b!2815712 m!3246721))

(assert (=> b!2815712 m!3246721))

(declare-fun m!3246723 () Bool)

(assert (=> b!2815712 m!3246723))

(assert (=> b!2815658 d!817782))

(declare-fun d!817784 () Bool)

(assert (=> d!817784 (= (matchZipper!394 lt!1005750 (dropList!999 input!3732 (+ 1 i!1825))) (matchZipperSequence!39 lt!1005750 input!3732 (+ 1 i!1825)))))

(declare-fun lt!1005773 () Unit!46902)

(declare-fun choose!16651 ((Set Context!4940) BalanceConc!20052 Int) Unit!46902)

(assert (=> d!817784 (= lt!1005773 (choose!16651 lt!1005750 input!3732 (+ 1 i!1825)))))

(declare-fun e!1780570 () Bool)

(assert (=> d!817784 e!1780570))

(declare-fun res!1171878 () Bool)

(assert (=> d!817784 (=> (not res!1171878) (not e!1780570))))

(assert (=> d!817784 (= res!1171878 (>= (+ 1 i!1825) 0))))

(assert (=> d!817784 (= (lemmaMatchZipperSequenceEquivalent!33 lt!1005750 input!3732 (+ 1 i!1825)) lt!1005773)))

(declare-fun b!2815715 () Bool)

(assert (=> b!2815715 (= e!1780570 (<= (+ 1 i!1825) (size!25663 input!3732)))))

(assert (= (and d!817784 res!1171878) b!2815715))

(assert (=> d!817784 m!3246645))

(assert (=> d!817784 m!3246645))

(assert (=> d!817784 m!3246653))

(assert (=> d!817784 m!3246655))

(declare-fun m!3246725 () Bool)

(assert (=> d!817784 m!3246725))

(assert (=> b!2815715 m!3246639))

(assert (=> b!2815658 d!817784))

(declare-fun d!817786 () Bool)

(declare-fun lambda!103227 () Int)

(declare-fun forall!6743 (List!33041 Int) Bool)

(assert (=> d!817786 (= (inv!44775 setElem!24766) (forall!6743 (exprs!2970 setElem!24766) lambda!103227))))

(declare-fun bs!516710 () Bool)

(assert (= bs!516710 d!817786))

(declare-fun m!3246727 () Bool)

(assert (=> bs!516710 m!3246727))

(assert (=> setNonEmpty!24766 d!817786))

(declare-fun b!2815720 () Bool)

(declare-fun e!1780573 () Bool)

(declare-fun tp!898891 () Bool)

(declare-fun tp!898892 () Bool)

(assert (=> b!2815720 (= e!1780573 (and tp!898891 tp!898892))))

(assert (=> b!2815659 (= tp!898875 e!1780573)))

(assert (= (and b!2815659 (is-Cons!32917 (exprs!2970 setElem!24766))) b!2815720))

(declare-fun tp!898899 () Bool)

(declare-fun tp!898900 () Bool)

(declare-fun e!1780578 () Bool)

(declare-fun b!2815729 () Bool)

(assert (=> b!2815729 (= e!1780578 (and (inv!44774 (left!24842 (c!456465 input!3732))) tp!898900 (inv!44774 (right!25172 (c!456465 input!3732))) tp!898899))))

(declare-fun b!2815731 () Bool)

(declare-fun e!1780579 () Bool)

(declare-fun tp!898901 () Bool)

(assert (=> b!2815731 (= e!1780579 tp!898901)))

(declare-fun b!2815730 () Bool)

(declare-fun inv!44782 (IArray!20419) Bool)

(assert (=> b!2815730 (= e!1780578 (and (inv!44782 (xs!13319 (c!456465 input!3732))) e!1780579))))

(assert (=> b!2815656 (= tp!898876 (and (inv!44774 (c!456465 input!3732)) e!1780578))))

(assert (= (and b!2815656 (is-Node!10207 (c!456465 input!3732))) b!2815729))

(assert (= b!2815730 b!2815731))

(assert (= (and b!2815656 (is-Leaf!15551 (c!456465 input!3732))) b!2815730))

(declare-fun m!3246729 () Bool)

(assert (=> b!2815729 m!3246729))

(declare-fun m!3246731 () Bool)

(assert (=> b!2815729 m!3246731))

(declare-fun m!3246733 () Bool)

(assert (=> b!2815730 m!3246733))

(assert (=> b!2815656 m!3246633))

(declare-fun condSetEmpty!24772 () Bool)

(assert (=> setNonEmpty!24766 (= condSetEmpty!24772 (= setRest!24766 (as set.empty (Set Context!4940))))))

(declare-fun setRes!24772 () Bool)

(assert (=> setNonEmpty!24766 (= tp!898877 setRes!24772)))

(declare-fun setIsEmpty!24772 () Bool)

(assert (=> setIsEmpty!24772 setRes!24772))

(declare-fun tp!898907 () Bool)

(declare-fun e!1780582 () Bool)

(declare-fun setNonEmpty!24772 () Bool)

(declare-fun setElem!24772 () Context!4940)

(assert (=> setNonEmpty!24772 (= setRes!24772 (and tp!898907 (inv!44775 setElem!24772) e!1780582))))

(declare-fun setRest!24772 () (Set Context!4940))

(assert (=> setNonEmpty!24772 (= setRest!24766 (set.union (set.insert setElem!24772 (as set.empty (Set Context!4940))) setRest!24772))))

(declare-fun b!2815736 () Bool)

(declare-fun tp!898906 () Bool)

(assert (=> b!2815736 (= e!1780582 tp!898906)))

(assert (= (and setNonEmpty!24766 condSetEmpty!24772) setIsEmpty!24772))

(assert (= (and setNonEmpty!24766 (not condSetEmpty!24772)) setNonEmpty!24772))

(assert (= setNonEmpty!24772 b!2815736))

(declare-fun m!3246737 () Bool)

(assert (=> setNonEmpty!24772 m!3246737))

(push 1)

(assert (not d!817762))

(assert (not d!817782))

(assert (not d!817774))

(assert (not b!2815720))

(assert (not d!817772))

(assert (not d!817784))

(assert (not b!2815703))

(assert (not b!2815702))

(assert (not b!2815656))

(assert (not b!2815736))

(assert (not d!817764))

(assert (not b!2815706))

(assert (not d!817778))

(assert (not setNonEmpty!24772))

(assert (not b!2815730))

(assert (not b!2815680))

(assert (not b!2815729))

(assert (not b!2815678))

(assert (not b!2815715))

(assert (not d!817786))

(assert (not d!817776))

(assert (not b!2815712))

(assert (not d!817780))

(assert (not b!2815731))

(assert (not b!2815695))

(assert (not b!2815711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

