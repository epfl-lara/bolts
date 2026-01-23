; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229670 () Bool)

(assert start!229670)

(declare-fun b!2326689 () Bool)

(declare-fun e!1490731 () Bool)

(declare-fun tp_is_empty!10889 () Bool)

(declare-fun tp!737201 () Bool)

(assert (=> b!2326689 (= e!1490731 (and tp_is_empty!10889 tp!737201))))

(declare-fun b!2326687 () Bool)

(declare-fun e!1490730 () Bool)

(declare-fun e!1490733 () Bool)

(assert (=> b!2326687 (= e!1490730 e!1490733)))

(declare-fun res!993637 () Bool)

(assert (=> b!2326687 (=> (not res!993637) (not e!1490733))))

(declare-datatypes ((T!44132 0))(
  ( (T!44133 (val!8012 Int)) )
))
(declare-datatypes ((List!27798 0))(
  ( (Nil!27700) (Cons!27700 (h!33101 T!44132) (t!207500 List!27798)) )
))
(declare-fun lt!861730 () List!27798)

(declare-fun isEmpty!15812 (List!27798) Bool)

(assert (=> b!2326687 (= res!993637 (isEmpty!15812 lt!861730))))

(declare-fun l!2797 () List!27798)

(declare-fun i!741 () Int)

(declare-fun slice!733 (List!27798 Int Int) List!27798)

(assert (=> b!2326687 (= lt!861730 (slice!733 l!2797 0 i!741))))

(declare-fun res!993638 () Bool)

(declare-fun e!1490732 () Bool)

(assert (=> start!229670 (=> (not res!993638) (not e!1490732))))

(assert (=> start!229670 (= res!993638 (<= 0 i!741))))

(assert (=> start!229670 e!1490732))

(assert (=> start!229670 true))

(assert (=> start!229670 e!1490731))

(declare-fun lt!861729 () Int)

(declare-fun b!2326688 () Bool)

(declare-fun ++!6848 (List!27798 List!27798) List!27798)

(assert (=> b!2326688 (= e!1490733 (not (= (++!6848 lt!861730 (slice!733 l!2797 i!741 lt!861729)) l!2797)))))

(declare-fun take!499 (List!27798 Int) List!27798)

(assert (=> b!2326688 (= (take!499 l!2797 lt!861729) l!2797)))

(declare-datatypes ((Unit!40550 0))(
  ( (Unit!40551) )
))
(declare-fun lt!861731 () Unit!40550)

(declare-fun takeFullLemma!4 (List!27798) Unit!40550)

(assert (=> b!2326688 (= lt!861731 (takeFullLemma!4 l!2797))))

(declare-fun b!2326686 () Bool)

(assert (=> b!2326686 (= e!1490732 e!1490730)))

(declare-fun res!993636 () Bool)

(assert (=> b!2326686 (=> (not res!993636) (not e!1490730))))

(get-info :version)

(assert (=> b!2326686 (= res!993636 (and (<= i!741 lt!861729) (not ((_ is Nil!27700) l!2797)) (= i!741 0)))))

(declare-fun size!21976 (List!27798) Int)

(assert (=> b!2326686 (= lt!861729 (size!21976 l!2797))))

(assert (= (and start!229670 res!993638) b!2326686))

(assert (= (and b!2326686 res!993636) b!2326687))

(assert (= (and b!2326687 res!993637) b!2326688))

(assert (= (and start!229670 ((_ is Cons!27700) l!2797)) b!2326689))

(declare-fun m!2757733 () Bool)

(assert (=> b!2326687 m!2757733))

(declare-fun m!2757735 () Bool)

(assert (=> b!2326687 m!2757735))

(declare-fun m!2757737 () Bool)

(assert (=> b!2326688 m!2757737))

(assert (=> b!2326688 m!2757737))

(declare-fun m!2757739 () Bool)

(assert (=> b!2326688 m!2757739))

(declare-fun m!2757741 () Bool)

(assert (=> b!2326688 m!2757741))

(declare-fun m!2757743 () Bool)

(assert (=> b!2326688 m!2757743))

(declare-fun m!2757745 () Bool)

(assert (=> b!2326686 m!2757745))

(check-sat (not b!2326686) (not b!2326688) (not b!2326689) (not b!2326687) tp_is_empty!10889)
(check-sat)
(get-model)

(declare-fun b!2326700 () Bool)

(declare-fun res!993643 () Bool)

(declare-fun e!1490738 () Bool)

(assert (=> b!2326700 (=> (not res!993643) (not e!1490738))))

(declare-fun lt!861734 () List!27798)

(assert (=> b!2326700 (= res!993643 (= (size!21976 lt!861734) (+ (size!21976 lt!861730) (size!21976 (slice!733 l!2797 i!741 lt!861729)))))))

(declare-fun d!688958 () Bool)

(assert (=> d!688958 e!1490738))

(declare-fun res!993644 () Bool)

(assert (=> d!688958 (=> (not res!993644) (not e!1490738))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3757 (List!27798) (InoxSet T!44132))

(assert (=> d!688958 (= res!993644 (= (content!3757 lt!861734) ((_ map or) (content!3757 lt!861730) (content!3757 (slice!733 l!2797 i!741 lt!861729)))))))

(declare-fun e!1490739 () List!27798)

(assert (=> d!688958 (= lt!861734 e!1490739)))

(declare-fun c!369538 () Bool)

(assert (=> d!688958 (= c!369538 ((_ is Nil!27700) lt!861730))))

(assert (=> d!688958 (= (++!6848 lt!861730 (slice!733 l!2797 i!741 lt!861729)) lt!861734)))

(declare-fun b!2326701 () Bool)

(assert (=> b!2326701 (= e!1490738 (or (not (= (slice!733 l!2797 i!741 lt!861729) Nil!27700)) (= lt!861734 lt!861730)))))

(declare-fun b!2326698 () Bool)

(assert (=> b!2326698 (= e!1490739 (slice!733 l!2797 i!741 lt!861729))))

(declare-fun b!2326699 () Bool)

(assert (=> b!2326699 (= e!1490739 (Cons!27700 (h!33101 lt!861730) (++!6848 (t!207500 lt!861730) (slice!733 l!2797 i!741 lt!861729))))))

(assert (= (and d!688958 c!369538) b!2326698))

(assert (= (and d!688958 (not c!369538)) b!2326699))

(assert (= (and d!688958 res!993644) b!2326700))

(assert (= (and b!2326700 res!993643) b!2326701))

(declare-fun m!2757749 () Bool)

(assert (=> b!2326700 m!2757749))

(declare-fun m!2757751 () Bool)

(assert (=> b!2326700 m!2757751))

(assert (=> b!2326700 m!2757737))

(declare-fun m!2757755 () Bool)

(assert (=> b!2326700 m!2757755))

(declare-fun m!2757757 () Bool)

(assert (=> d!688958 m!2757757))

(declare-fun m!2757759 () Bool)

(assert (=> d!688958 m!2757759))

(assert (=> d!688958 m!2757737))

(declare-fun m!2757761 () Bool)

(assert (=> d!688958 m!2757761))

(assert (=> b!2326699 m!2757737))

(declare-fun m!2757763 () Bool)

(assert (=> b!2326699 m!2757763))

(assert (=> b!2326688 d!688958))

(declare-fun d!688966 () Bool)

(declare-fun drop!1520 (List!27798 Int) List!27798)

(assert (=> d!688966 (= (slice!733 l!2797 i!741 lt!861729) (take!499 (drop!1520 l!2797 i!741) (- lt!861729 i!741)))))

(declare-fun bs!459295 () Bool)

(assert (= bs!459295 d!688966))

(declare-fun m!2757765 () Bool)

(assert (=> bs!459295 m!2757765))

(assert (=> bs!459295 m!2757765))

(declare-fun m!2757767 () Bool)

(assert (=> bs!459295 m!2757767))

(assert (=> b!2326688 d!688966))

(declare-fun b!2326728 () Bool)

(declare-fun e!1490755 () Int)

(assert (=> b!2326728 (= e!1490755 lt!861729)))

(declare-fun b!2326729 () Bool)

(declare-fun e!1490756 () Bool)

(declare-fun lt!861740 () List!27798)

(declare-fun e!1490754 () Int)

(assert (=> b!2326729 (= e!1490756 (= (size!21976 lt!861740) e!1490754))))

(declare-fun c!369550 () Bool)

(assert (=> b!2326729 (= c!369550 (<= lt!861729 0))))

(declare-fun b!2326730 () Bool)

(assert (=> b!2326730 (= e!1490755 (size!21976 l!2797))))

(declare-fun b!2326732 () Bool)

(declare-fun e!1490757 () List!27798)

(assert (=> b!2326732 (= e!1490757 (Cons!27700 (h!33101 l!2797) (take!499 (t!207500 l!2797) (- lt!861729 1))))))

(declare-fun b!2326733 () Bool)

(assert (=> b!2326733 (= e!1490754 0)))

(declare-fun b!2326734 () Bool)

(assert (=> b!2326734 (= e!1490754 e!1490755)))

(declare-fun c!369548 () Bool)

(assert (=> b!2326734 (= c!369548 (>= lt!861729 (size!21976 l!2797)))))

(declare-fun d!688968 () Bool)

(assert (=> d!688968 e!1490756))

(declare-fun res!993653 () Bool)

(assert (=> d!688968 (=> (not res!993653) (not e!1490756))))

(assert (=> d!688968 (= res!993653 (= ((_ map implies) (content!3757 lt!861740) (content!3757 l!2797)) ((as const (InoxSet T!44132)) true)))))

(assert (=> d!688968 (= lt!861740 e!1490757)))

(declare-fun c!369549 () Bool)

(assert (=> d!688968 (= c!369549 (or ((_ is Nil!27700) l!2797) (<= lt!861729 0)))))

(assert (=> d!688968 (= (take!499 l!2797 lt!861729) lt!861740)))

(declare-fun b!2326731 () Bool)

(assert (=> b!2326731 (= e!1490757 Nil!27700)))

(assert (= (and d!688968 c!369549) b!2326731))

(assert (= (and d!688968 (not c!369549)) b!2326732))

(assert (= (and d!688968 res!993653) b!2326729))

(assert (= (and b!2326729 c!369550) b!2326733))

(assert (= (and b!2326729 (not c!369550)) b!2326734))

(assert (= (and b!2326734 c!369548) b!2326730))

(assert (= (and b!2326734 (not c!369548)) b!2326728))

(assert (=> b!2326730 m!2757745))

(declare-fun m!2757787 () Bool)

(assert (=> b!2326732 m!2757787))

(assert (=> b!2326734 m!2757745))

(declare-fun m!2757789 () Bool)

(assert (=> b!2326729 m!2757789))

(declare-fun m!2757791 () Bool)

(assert (=> d!688968 m!2757791))

(declare-fun m!2757793 () Bool)

(assert (=> d!688968 m!2757793))

(assert (=> b!2326688 d!688968))

(declare-fun d!688974 () Bool)

(assert (=> d!688974 (= (take!499 l!2797 (size!21976 l!2797)) l!2797)))

(declare-fun lt!861745 () Unit!40550)

(declare-fun choose!13619 (List!27798) Unit!40550)

(assert (=> d!688974 (= lt!861745 (choose!13619 l!2797))))

(assert (=> d!688974 (= (takeFullLemma!4 l!2797) lt!861745)))

(declare-fun bs!459297 () Bool)

(assert (= bs!459297 d!688974))

(assert (=> bs!459297 m!2757745))

(assert (=> bs!459297 m!2757745))

(declare-fun m!2757795 () Bool)

(assert (=> bs!459297 m!2757795))

(declare-fun m!2757797 () Bool)

(assert (=> bs!459297 m!2757797))

(assert (=> b!2326688 d!688974))

(declare-fun d!688976 () Bool)

(assert (=> d!688976 (= (isEmpty!15812 lt!861730) ((_ is Nil!27700) lt!861730))))

(assert (=> b!2326687 d!688976))

(declare-fun d!688978 () Bool)

(assert (=> d!688978 (= (slice!733 l!2797 0 i!741) (take!499 (drop!1520 l!2797 0) (- i!741 0)))))

(declare-fun bs!459298 () Bool)

(assert (= bs!459298 d!688978))

(declare-fun m!2757799 () Bool)

(assert (=> bs!459298 m!2757799))

(assert (=> bs!459298 m!2757799))

(declare-fun m!2757801 () Bool)

(assert (=> bs!459298 m!2757801))

(assert (=> b!2326687 d!688978))

(declare-fun d!688980 () Bool)

(declare-fun lt!861749 () Int)

(assert (=> d!688980 (>= lt!861749 0)))

(declare-fun e!1490772 () Int)

(assert (=> d!688980 (= lt!861749 e!1490772)))

(declare-fun c!369562 () Bool)

(assert (=> d!688980 (= c!369562 ((_ is Nil!27700) l!2797))))

(assert (=> d!688980 (= (size!21976 l!2797) lt!861749)))

(declare-fun b!2326760 () Bool)

(assert (=> b!2326760 (= e!1490772 0)))

(declare-fun b!2326761 () Bool)

(assert (=> b!2326761 (= e!1490772 (+ 1 (size!21976 (t!207500 l!2797))))))

(assert (= (and d!688980 c!369562) b!2326760))

(assert (= (and d!688980 (not c!369562)) b!2326761))

(declare-fun m!2757811 () Bool)

(assert (=> b!2326761 m!2757811))

(assert (=> b!2326686 d!688980))

(declare-fun b!2326766 () Bool)

(declare-fun e!1490775 () Bool)

(declare-fun tp!737204 () Bool)

(assert (=> b!2326766 (= e!1490775 (and tp_is_empty!10889 tp!737204))))

(assert (=> b!2326689 (= tp!737201 e!1490775)))

(assert (= (and b!2326689 ((_ is Cons!27700) (t!207500 l!2797))) b!2326766))

(check-sat (not b!2326734) (not b!2326700) (not b!2326729) (not d!688978) (not d!688968) (not d!688974) (not b!2326732) (not b!2326766) (not d!688966) (not b!2326699) tp_is_empty!10889 (not b!2326761) (not d!688958) (not b!2326730))
(check-sat)
(get-model)

(assert (=> b!2326730 d!688980))

(declare-fun d!688986 () Bool)

(declare-fun lt!861756 () Int)

(assert (=> d!688986 (>= lt!861756 0)))

(declare-fun e!1490782 () Int)

(assert (=> d!688986 (= lt!861756 e!1490782)))

(declare-fun c!369566 () Bool)

(assert (=> d!688986 (= c!369566 ((_ is Nil!27700) lt!861740))))

(assert (=> d!688986 (= (size!21976 lt!861740) lt!861756)))

(declare-fun b!2326778 () Bool)

(assert (=> b!2326778 (= e!1490782 0)))

(declare-fun b!2326779 () Bool)

(assert (=> b!2326779 (= e!1490782 (+ 1 (size!21976 (t!207500 lt!861740))))))

(assert (= (and d!688986 c!369566) b!2326778))

(assert (= (and d!688986 (not c!369566)) b!2326779))

(declare-fun m!2757819 () Bool)

(assert (=> b!2326779 m!2757819))

(assert (=> b!2326729 d!688986))

(declare-fun b!2326780 () Bool)

(declare-fun e!1490784 () Int)

(assert (=> b!2326780 (= e!1490784 (- lt!861729 i!741))))

(declare-fun b!2326781 () Bool)

(declare-fun e!1490785 () Bool)

(declare-fun lt!861757 () List!27798)

(declare-fun e!1490783 () Int)

(assert (=> b!2326781 (= e!1490785 (= (size!21976 lt!861757) e!1490783))))

(declare-fun c!369569 () Bool)

(assert (=> b!2326781 (= c!369569 (<= (- lt!861729 i!741) 0))))

(declare-fun b!2326782 () Bool)

(assert (=> b!2326782 (= e!1490784 (size!21976 (drop!1520 l!2797 i!741)))))

(declare-fun b!2326784 () Bool)

(declare-fun e!1490786 () List!27798)

(assert (=> b!2326784 (= e!1490786 (Cons!27700 (h!33101 (drop!1520 l!2797 i!741)) (take!499 (t!207500 (drop!1520 l!2797 i!741)) (- (- lt!861729 i!741) 1))))))

(declare-fun b!2326785 () Bool)

(assert (=> b!2326785 (= e!1490783 0)))

(declare-fun b!2326786 () Bool)

(assert (=> b!2326786 (= e!1490783 e!1490784)))

(declare-fun c!369567 () Bool)

(assert (=> b!2326786 (= c!369567 (>= (- lt!861729 i!741) (size!21976 (drop!1520 l!2797 i!741))))))

(declare-fun d!688988 () Bool)

(assert (=> d!688988 e!1490785))

(declare-fun res!993657 () Bool)

(assert (=> d!688988 (=> (not res!993657) (not e!1490785))))

(assert (=> d!688988 (= res!993657 (= ((_ map implies) (content!3757 lt!861757) (content!3757 (drop!1520 l!2797 i!741))) ((as const (InoxSet T!44132)) true)))))

(assert (=> d!688988 (= lt!861757 e!1490786)))

(declare-fun c!369568 () Bool)

(assert (=> d!688988 (= c!369568 (or ((_ is Nil!27700) (drop!1520 l!2797 i!741)) (<= (- lt!861729 i!741) 0)))))

(assert (=> d!688988 (= (take!499 (drop!1520 l!2797 i!741) (- lt!861729 i!741)) lt!861757)))

(declare-fun b!2326783 () Bool)

(assert (=> b!2326783 (= e!1490786 Nil!27700)))

(assert (= (and d!688988 c!369568) b!2326783))

(assert (= (and d!688988 (not c!369568)) b!2326784))

(assert (= (and d!688988 res!993657) b!2326781))

(assert (= (and b!2326781 c!369569) b!2326785))

(assert (= (and b!2326781 (not c!369569)) b!2326786))

(assert (= (and b!2326786 c!369567) b!2326782))

(assert (= (and b!2326786 (not c!369567)) b!2326780))

(assert (=> b!2326782 m!2757765))

(declare-fun m!2757821 () Bool)

(assert (=> b!2326782 m!2757821))

(declare-fun m!2757823 () Bool)

(assert (=> b!2326784 m!2757823))

(assert (=> b!2326786 m!2757765))

(assert (=> b!2326786 m!2757821))

(declare-fun m!2757825 () Bool)

(assert (=> b!2326781 m!2757825))

(declare-fun m!2757827 () Bool)

(assert (=> d!688988 m!2757827))

(assert (=> d!688988 m!2757765))

(declare-fun m!2757829 () Bool)

(assert (=> d!688988 m!2757829))

(assert (=> d!688966 d!688988))

(declare-fun b!2326805 () Bool)

(declare-fun e!1490797 () Int)

(assert (=> b!2326805 (= e!1490797 0)))

(declare-fun b!2326806 () Bool)

(declare-fun e!1490799 () List!27798)

(assert (=> b!2326806 (= e!1490799 Nil!27700)))

(declare-fun b!2326807 () Bool)

(declare-fun e!1490801 () List!27798)

(assert (=> b!2326807 (= e!1490799 e!1490801)))

(declare-fun c!369579 () Bool)

(assert (=> b!2326807 (= c!369579 (<= i!741 0))))

(declare-fun bm!138952 () Bool)

(declare-fun call!138957 () Int)

(assert (=> bm!138952 (= call!138957 (size!21976 l!2797))))

(declare-fun b!2326808 () Bool)

(declare-fun e!1490798 () Int)

(assert (=> b!2326808 (= e!1490798 call!138957)))

(declare-fun b!2326810 () Bool)

(assert (=> b!2326810 (= e!1490801 l!2797)))

(declare-fun b!2326811 () Bool)

(declare-fun e!1490800 () Bool)

(declare-fun lt!861760 () List!27798)

(assert (=> b!2326811 (= e!1490800 (= (size!21976 lt!861760) e!1490798))))

(declare-fun c!369580 () Bool)

(assert (=> b!2326811 (= c!369580 (<= i!741 0))))

(declare-fun d!688990 () Bool)

(assert (=> d!688990 e!1490800))

(declare-fun res!993660 () Bool)

(assert (=> d!688990 (=> (not res!993660) (not e!1490800))))

(assert (=> d!688990 (= res!993660 (= ((_ map implies) (content!3757 lt!861760) (content!3757 l!2797)) ((as const (InoxSet T!44132)) true)))))

(assert (=> d!688990 (= lt!861760 e!1490799)))

(declare-fun c!369581 () Bool)

(assert (=> d!688990 (= c!369581 ((_ is Nil!27700) l!2797))))

(assert (=> d!688990 (= (drop!1520 l!2797 i!741) lt!861760)))

(declare-fun b!2326809 () Bool)

(assert (=> b!2326809 (= e!1490798 e!1490797)))

(declare-fun c!369578 () Bool)

(assert (=> b!2326809 (= c!369578 (>= i!741 call!138957))))

(declare-fun b!2326812 () Bool)

(assert (=> b!2326812 (= e!1490797 (- call!138957 i!741))))

(declare-fun b!2326813 () Bool)

(assert (=> b!2326813 (= e!1490801 (drop!1520 (t!207500 l!2797) (- i!741 1)))))

(assert (= (and d!688990 c!369581) b!2326806))

(assert (= (and d!688990 (not c!369581)) b!2326807))

(assert (= (and b!2326807 c!369579) b!2326810))

(assert (= (and b!2326807 (not c!369579)) b!2326813))

(assert (= (and d!688990 res!993660) b!2326811))

(assert (= (and b!2326811 c!369580) b!2326808))

(assert (= (and b!2326811 (not c!369580)) b!2326809))

(assert (= (and b!2326809 c!369578) b!2326805))

(assert (= (and b!2326809 (not c!369578)) b!2326812))

(assert (= (or b!2326808 b!2326809 b!2326812) bm!138952))

(assert (=> bm!138952 m!2757745))

(declare-fun m!2757831 () Bool)

(assert (=> b!2326811 m!2757831))

(declare-fun m!2757833 () Bool)

(assert (=> d!688990 m!2757833))

(assert (=> d!688990 m!2757793))

(declare-fun m!2757835 () Bool)

(assert (=> b!2326813 m!2757835))

(assert (=> d!688966 d!688990))

(declare-fun d!688992 () Bool)

(declare-fun c!369584 () Bool)

(assert (=> d!688992 (= c!369584 ((_ is Nil!27700) lt!861740))))

(declare-fun e!1490804 () (InoxSet T!44132))

(assert (=> d!688992 (= (content!3757 lt!861740) e!1490804)))

(declare-fun b!2326818 () Bool)

(assert (=> b!2326818 (= e!1490804 ((as const (Array T!44132 Bool)) false))))

(declare-fun b!2326819 () Bool)

(assert (=> b!2326819 (= e!1490804 ((_ map or) (store ((as const (Array T!44132 Bool)) false) (h!33101 lt!861740) true) (content!3757 (t!207500 lt!861740))))))

(assert (= (and d!688992 c!369584) b!2326818))

(assert (= (and d!688992 (not c!369584)) b!2326819))

(declare-fun m!2757837 () Bool)

(assert (=> b!2326819 m!2757837))

(declare-fun m!2757839 () Bool)

(assert (=> b!2326819 m!2757839))

(assert (=> d!688968 d!688992))

(declare-fun d!688994 () Bool)

(declare-fun c!369585 () Bool)

(assert (=> d!688994 (= c!369585 ((_ is Nil!27700) l!2797))))

(declare-fun e!1490805 () (InoxSet T!44132))

(assert (=> d!688994 (= (content!3757 l!2797) e!1490805)))

(declare-fun b!2326820 () Bool)

(assert (=> b!2326820 (= e!1490805 ((as const (Array T!44132 Bool)) false))))

(declare-fun b!2326821 () Bool)

(assert (=> b!2326821 (= e!1490805 ((_ map or) (store ((as const (Array T!44132 Bool)) false) (h!33101 l!2797) true) (content!3757 (t!207500 l!2797))))))

(assert (= (and d!688994 c!369585) b!2326820))

(assert (= (and d!688994 (not c!369585)) b!2326821))

(declare-fun m!2757841 () Bool)

(assert (=> b!2326821 m!2757841))

(declare-fun m!2757843 () Bool)

(assert (=> b!2326821 m!2757843))

(assert (=> d!688968 d!688994))

(declare-fun d!688996 () Bool)

(declare-fun lt!861761 () Int)

(assert (=> d!688996 (>= lt!861761 0)))

(declare-fun e!1490806 () Int)

(assert (=> d!688996 (= lt!861761 e!1490806)))

(declare-fun c!369586 () Bool)

(assert (=> d!688996 (= c!369586 ((_ is Nil!27700) (t!207500 l!2797)))))

(assert (=> d!688996 (= (size!21976 (t!207500 l!2797)) lt!861761)))

(declare-fun b!2326822 () Bool)

(assert (=> b!2326822 (= e!1490806 0)))

(declare-fun b!2326823 () Bool)

(assert (=> b!2326823 (= e!1490806 (+ 1 (size!21976 (t!207500 (t!207500 l!2797)))))))

(assert (= (and d!688996 c!369586) b!2326822))

(assert (= (and d!688996 (not c!369586)) b!2326823))

(declare-fun m!2757845 () Bool)

(assert (=> b!2326823 m!2757845))

(assert (=> b!2326761 d!688996))

(declare-fun b!2326824 () Bool)

(declare-fun e!1490808 () Int)

(assert (=> b!2326824 (= e!1490808 (- lt!861729 1))))

(declare-fun b!2326825 () Bool)

(declare-fun e!1490809 () Bool)

(declare-fun lt!861762 () List!27798)

(declare-fun e!1490807 () Int)

(assert (=> b!2326825 (= e!1490809 (= (size!21976 lt!861762) e!1490807))))

(declare-fun c!369589 () Bool)

(assert (=> b!2326825 (= c!369589 (<= (- lt!861729 1) 0))))

(declare-fun b!2326826 () Bool)

(assert (=> b!2326826 (= e!1490808 (size!21976 (t!207500 l!2797)))))

(declare-fun b!2326828 () Bool)

(declare-fun e!1490810 () List!27798)

(assert (=> b!2326828 (= e!1490810 (Cons!27700 (h!33101 (t!207500 l!2797)) (take!499 (t!207500 (t!207500 l!2797)) (- (- lt!861729 1) 1))))))

(declare-fun b!2326829 () Bool)

(assert (=> b!2326829 (= e!1490807 0)))

(declare-fun b!2326830 () Bool)

(assert (=> b!2326830 (= e!1490807 e!1490808)))

(declare-fun c!369587 () Bool)

(assert (=> b!2326830 (= c!369587 (>= (- lt!861729 1) (size!21976 (t!207500 l!2797))))))

(declare-fun d!688998 () Bool)

(assert (=> d!688998 e!1490809))

(declare-fun res!993661 () Bool)

(assert (=> d!688998 (=> (not res!993661) (not e!1490809))))

(assert (=> d!688998 (= res!993661 (= ((_ map implies) (content!3757 lt!861762) (content!3757 (t!207500 l!2797))) ((as const (InoxSet T!44132)) true)))))

(assert (=> d!688998 (= lt!861762 e!1490810)))

(declare-fun c!369588 () Bool)

(assert (=> d!688998 (= c!369588 (or ((_ is Nil!27700) (t!207500 l!2797)) (<= (- lt!861729 1) 0)))))

(assert (=> d!688998 (= (take!499 (t!207500 l!2797) (- lt!861729 1)) lt!861762)))

(declare-fun b!2326827 () Bool)

(assert (=> b!2326827 (= e!1490810 Nil!27700)))

(assert (= (and d!688998 c!369588) b!2326827))

(assert (= (and d!688998 (not c!369588)) b!2326828))

(assert (= (and d!688998 res!993661) b!2326825))

(assert (= (and b!2326825 c!369589) b!2326829))

(assert (= (and b!2326825 (not c!369589)) b!2326830))

(assert (= (and b!2326830 c!369587) b!2326826))

(assert (= (and b!2326830 (not c!369587)) b!2326824))

(assert (=> b!2326826 m!2757811))

(declare-fun m!2757847 () Bool)

(assert (=> b!2326828 m!2757847))

(assert (=> b!2326830 m!2757811))

(declare-fun m!2757849 () Bool)

(assert (=> b!2326825 m!2757849))

(declare-fun m!2757851 () Bool)

(assert (=> d!688998 m!2757851))

(assert (=> d!688998 m!2757843))

(assert (=> b!2326732 d!688998))

(assert (=> b!2326734 d!688980))

(declare-fun b!2326831 () Bool)

(declare-fun e!1490812 () Int)

(assert (=> b!2326831 (= e!1490812 (- i!741 0))))

(declare-fun b!2326832 () Bool)

(declare-fun e!1490813 () Bool)

(declare-fun lt!861763 () List!27798)

(declare-fun e!1490811 () Int)

(assert (=> b!2326832 (= e!1490813 (= (size!21976 lt!861763) e!1490811))))

(declare-fun c!369592 () Bool)

(assert (=> b!2326832 (= c!369592 (<= (- i!741 0) 0))))

(declare-fun b!2326833 () Bool)

(assert (=> b!2326833 (= e!1490812 (size!21976 (drop!1520 l!2797 0)))))

(declare-fun b!2326835 () Bool)

(declare-fun e!1490814 () List!27798)

(assert (=> b!2326835 (= e!1490814 (Cons!27700 (h!33101 (drop!1520 l!2797 0)) (take!499 (t!207500 (drop!1520 l!2797 0)) (- (- i!741 0) 1))))))

(declare-fun b!2326836 () Bool)

(assert (=> b!2326836 (= e!1490811 0)))

(declare-fun b!2326837 () Bool)

(assert (=> b!2326837 (= e!1490811 e!1490812)))

(declare-fun c!369590 () Bool)

(assert (=> b!2326837 (= c!369590 (>= (- i!741 0) (size!21976 (drop!1520 l!2797 0))))))

(declare-fun d!689000 () Bool)

(assert (=> d!689000 e!1490813))

(declare-fun res!993662 () Bool)

(assert (=> d!689000 (=> (not res!993662) (not e!1490813))))

(assert (=> d!689000 (= res!993662 (= ((_ map implies) (content!3757 lt!861763) (content!3757 (drop!1520 l!2797 0))) ((as const (InoxSet T!44132)) true)))))

(assert (=> d!689000 (= lt!861763 e!1490814)))

(declare-fun c!369591 () Bool)

(assert (=> d!689000 (= c!369591 (or ((_ is Nil!27700) (drop!1520 l!2797 0)) (<= (- i!741 0) 0)))))

(assert (=> d!689000 (= (take!499 (drop!1520 l!2797 0) (- i!741 0)) lt!861763)))

(declare-fun b!2326834 () Bool)

(assert (=> b!2326834 (= e!1490814 Nil!27700)))

(assert (= (and d!689000 c!369591) b!2326834))

(assert (= (and d!689000 (not c!369591)) b!2326835))

(assert (= (and d!689000 res!993662) b!2326832))

(assert (= (and b!2326832 c!369592) b!2326836))

(assert (= (and b!2326832 (not c!369592)) b!2326837))

(assert (= (and b!2326837 c!369590) b!2326833))

(assert (= (and b!2326837 (not c!369590)) b!2326831))

(assert (=> b!2326833 m!2757799))

(declare-fun m!2757853 () Bool)

(assert (=> b!2326833 m!2757853))

(declare-fun m!2757855 () Bool)

(assert (=> b!2326835 m!2757855))

(assert (=> b!2326837 m!2757799))

(assert (=> b!2326837 m!2757853))

(declare-fun m!2757857 () Bool)

(assert (=> b!2326832 m!2757857))

(declare-fun m!2757859 () Bool)

(assert (=> d!689000 m!2757859))

(assert (=> d!689000 m!2757799))

(declare-fun m!2757861 () Bool)

(assert (=> d!689000 m!2757861))

(assert (=> d!688978 d!689000))

(declare-fun b!2326838 () Bool)

(declare-fun e!1490815 () Int)

(assert (=> b!2326838 (= e!1490815 0)))

(declare-fun b!2326839 () Bool)

(declare-fun e!1490817 () List!27798)

(assert (=> b!2326839 (= e!1490817 Nil!27700)))

(declare-fun b!2326840 () Bool)

(declare-fun e!1490819 () List!27798)

(assert (=> b!2326840 (= e!1490817 e!1490819)))

(declare-fun c!369594 () Bool)

(assert (=> b!2326840 (= c!369594 (<= 0 0))))

(declare-fun bm!138953 () Bool)

(declare-fun call!138958 () Int)

(assert (=> bm!138953 (= call!138958 (size!21976 l!2797))))

(declare-fun b!2326841 () Bool)

(declare-fun e!1490816 () Int)

(assert (=> b!2326841 (= e!1490816 call!138958)))

(declare-fun b!2326843 () Bool)

(assert (=> b!2326843 (= e!1490819 l!2797)))

(declare-fun b!2326844 () Bool)

(declare-fun e!1490818 () Bool)

(declare-fun lt!861764 () List!27798)

(assert (=> b!2326844 (= e!1490818 (= (size!21976 lt!861764) e!1490816))))

(declare-fun c!369595 () Bool)

(assert (=> b!2326844 (= c!369595 (<= 0 0))))

(declare-fun d!689002 () Bool)

(assert (=> d!689002 e!1490818))

(declare-fun res!993663 () Bool)

(assert (=> d!689002 (=> (not res!993663) (not e!1490818))))

(assert (=> d!689002 (= res!993663 (= ((_ map implies) (content!3757 lt!861764) (content!3757 l!2797)) ((as const (InoxSet T!44132)) true)))))

(assert (=> d!689002 (= lt!861764 e!1490817)))

(declare-fun c!369596 () Bool)

(assert (=> d!689002 (= c!369596 ((_ is Nil!27700) l!2797))))

(assert (=> d!689002 (= (drop!1520 l!2797 0) lt!861764)))

(declare-fun b!2326842 () Bool)

(assert (=> b!2326842 (= e!1490816 e!1490815)))

(declare-fun c!369593 () Bool)

(assert (=> b!2326842 (= c!369593 (>= 0 call!138958))))

(declare-fun b!2326845 () Bool)

(assert (=> b!2326845 (= e!1490815 (- call!138958 0))))

(declare-fun b!2326846 () Bool)

(assert (=> b!2326846 (= e!1490819 (drop!1520 (t!207500 l!2797) (- 0 1)))))

(assert (= (and d!689002 c!369596) b!2326839))

(assert (= (and d!689002 (not c!369596)) b!2326840))

(assert (= (and b!2326840 c!369594) b!2326843))

(assert (= (and b!2326840 (not c!369594)) b!2326846))

(assert (= (and d!689002 res!993663) b!2326844))

(assert (= (and b!2326844 c!369595) b!2326841))

(assert (= (and b!2326844 (not c!369595)) b!2326842))

(assert (= (and b!2326842 c!369593) b!2326838))

(assert (= (and b!2326842 (not c!369593)) b!2326845))

(assert (= (or b!2326841 b!2326842 b!2326845) bm!138953))

(assert (=> bm!138953 m!2757745))

(declare-fun m!2757863 () Bool)

(assert (=> b!2326844 m!2757863))

(declare-fun m!2757865 () Bool)

(assert (=> d!689002 m!2757865))

(assert (=> d!689002 m!2757793))

(declare-fun m!2757867 () Bool)

(assert (=> b!2326846 m!2757867))

(assert (=> d!688978 d!689002))

(declare-fun b!2326847 () Bool)

(declare-fun e!1490821 () Int)

(assert (=> b!2326847 (= e!1490821 (size!21976 l!2797))))

(declare-fun b!2326848 () Bool)

(declare-fun e!1490822 () Bool)

(declare-fun lt!861765 () List!27798)

(declare-fun e!1490820 () Int)

(assert (=> b!2326848 (= e!1490822 (= (size!21976 lt!861765) e!1490820))))

(declare-fun c!369599 () Bool)

(assert (=> b!2326848 (= c!369599 (<= (size!21976 l!2797) 0))))

(declare-fun b!2326849 () Bool)

(assert (=> b!2326849 (= e!1490821 (size!21976 l!2797))))

(declare-fun b!2326851 () Bool)

(declare-fun e!1490823 () List!27798)

(assert (=> b!2326851 (= e!1490823 (Cons!27700 (h!33101 l!2797) (take!499 (t!207500 l!2797) (- (size!21976 l!2797) 1))))))

(declare-fun b!2326852 () Bool)

(assert (=> b!2326852 (= e!1490820 0)))

(declare-fun b!2326853 () Bool)

(assert (=> b!2326853 (= e!1490820 e!1490821)))

(declare-fun c!369597 () Bool)

(assert (=> b!2326853 (= c!369597 (>= (size!21976 l!2797) (size!21976 l!2797)))))

(declare-fun d!689004 () Bool)

(assert (=> d!689004 e!1490822))

(declare-fun res!993664 () Bool)

(assert (=> d!689004 (=> (not res!993664) (not e!1490822))))

(assert (=> d!689004 (= res!993664 (= ((_ map implies) (content!3757 lt!861765) (content!3757 l!2797)) ((as const (InoxSet T!44132)) true)))))

(assert (=> d!689004 (= lt!861765 e!1490823)))

(declare-fun c!369598 () Bool)

(assert (=> d!689004 (= c!369598 (or ((_ is Nil!27700) l!2797) (<= (size!21976 l!2797) 0)))))

(assert (=> d!689004 (= (take!499 l!2797 (size!21976 l!2797)) lt!861765)))

(declare-fun b!2326850 () Bool)

(assert (=> b!2326850 (= e!1490823 Nil!27700)))

(assert (= (and d!689004 c!369598) b!2326850))

(assert (= (and d!689004 (not c!369598)) b!2326851))

(assert (= (and d!689004 res!993664) b!2326848))

(assert (= (and b!2326848 c!369599) b!2326852))

(assert (= (and b!2326848 (not c!369599)) b!2326853))

(assert (= (and b!2326853 c!369597) b!2326849))

(assert (= (and b!2326853 (not c!369597)) b!2326847))

(assert (=> b!2326849 m!2757745))

(declare-fun m!2757869 () Bool)

(assert (=> b!2326851 m!2757869))

(assert (=> b!2326853 m!2757745))

(declare-fun m!2757871 () Bool)

(assert (=> b!2326848 m!2757871))

(declare-fun m!2757873 () Bool)

(assert (=> d!689004 m!2757873))

(assert (=> d!689004 m!2757793))

(assert (=> d!688974 d!689004))

(assert (=> d!688974 d!688980))

(declare-fun d!689006 () Bool)

(assert (=> d!689006 (= (take!499 l!2797 (size!21976 l!2797)) l!2797)))

(assert (=> d!689006 true))

(declare-fun _$12!973 () Unit!40550)

(assert (=> d!689006 (= (choose!13619 l!2797) _$12!973)))

(declare-fun bs!459300 () Bool)

(assert (= bs!459300 d!689006))

(assert (=> bs!459300 m!2757745))

(assert (=> bs!459300 m!2757745))

(assert (=> bs!459300 m!2757795))

(assert (=> d!688974 d!689006))

(declare-fun d!689010 () Bool)

(declare-fun c!369600 () Bool)

(assert (=> d!689010 (= c!369600 ((_ is Nil!27700) lt!861734))))

(declare-fun e!1490824 () (InoxSet T!44132))

(assert (=> d!689010 (= (content!3757 lt!861734) e!1490824)))

(declare-fun b!2326854 () Bool)

(assert (=> b!2326854 (= e!1490824 ((as const (Array T!44132 Bool)) false))))

(declare-fun b!2326855 () Bool)

(assert (=> b!2326855 (= e!1490824 ((_ map or) (store ((as const (Array T!44132 Bool)) false) (h!33101 lt!861734) true) (content!3757 (t!207500 lt!861734))))))

(assert (= (and d!689010 c!369600) b!2326854))

(assert (= (and d!689010 (not c!369600)) b!2326855))

(declare-fun m!2757875 () Bool)

(assert (=> b!2326855 m!2757875))

(declare-fun m!2757877 () Bool)

(assert (=> b!2326855 m!2757877))

(assert (=> d!688958 d!689010))

(declare-fun d!689012 () Bool)

(declare-fun c!369601 () Bool)

(assert (=> d!689012 (= c!369601 ((_ is Nil!27700) lt!861730))))

(declare-fun e!1490825 () (InoxSet T!44132))

(assert (=> d!689012 (= (content!3757 lt!861730) e!1490825)))

(declare-fun b!2326856 () Bool)

(assert (=> b!2326856 (= e!1490825 ((as const (Array T!44132 Bool)) false))))

(declare-fun b!2326857 () Bool)

(assert (=> b!2326857 (= e!1490825 ((_ map or) (store ((as const (Array T!44132 Bool)) false) (h!33101 lt!861730) true) (content!3757 (t!207500 lt!861730))))))

(assert (= (and d!689012 c!369601) b!2326856))

(assert (= (and d!689012 (not c!369601)) b!2326857))

(declare-fun m!2757879 () Bool)

(assert (=> b!2326857 m!2757879))

(declare-fun m!2757881 () Bool)

(assert (=> b!2326857 m!2757881))

(assert (=> d!688958 d!689012))

(declare-fun c!369602 () Bool)

(declare-fun d!689014 () Bool)

(assert (=> d!689014 (= c!369602 ((_ is Nil!27700) (slice!733 l!2797 i!741 lt!861729)))))

(declare-fun e!1490826 () (InoxSet T!44132))

(assert (=> d!689014 (= (content!3757 (slice!733 l!2797 i!741 lt!861729)) e!1490826)))

(declare-fun b!2326858 () Bool)

(assert (=> b!2326858 (= e!1490826 ((as const (Array T!44132 Bool)) false))))

(declare-fun b!2326859 () Bool)

(assert (=> b!2326859 (= e!1490826 ((_ map or) (store ((as const (Array T!44132 Bool)) false) (h!33101 (slice!733 l!2797 i!741 lt!861729)) true) (content!3757 (t!207500 (slice!733 l!2797 i!741 lt!861729)))))))

(assert (= (and d!689014 c!369602) b!2326858))

(assert (= (and d!689014 (not c!369602)) b!2326859))

(declare-fun m!2757883 () Bool)

(assert (=> b!2326859 m!2757883))

(declare-fun m!2757885 () Bool)

(assert (=> b!2326859 m!2757885))

(assert (=> d!688958 d!689014))

(declare-fun b!2326864 () Bool)

(declare-fun res!993665 () Bool)

(declare-fun e!1490827 () Bool)

(assert (=> b!2326864 (=> (not res!993665) (not e!1490827))))

(declare-fun lt!861766 () List!27798)

(assert (=> b!2326864 (= res!993665 (= (size!21976 lt!861766) (+ (size!21976 (t!207500 lt!861730)) (size!21976 (slice!733 l!2797 i!741 lt!861729)))))))

(declare-fun d!689016 () Bool)

(assert (=> d!689016 e!1490827))

(declare-fun res!993666 () Bool)

(assert (=> d!689016 (=> (not res!993666) (not e!1490827))))

(assert (=> d!689016 (= res!993666 (= (content!3757 lt!861766) ((_ map or) (content!3757 (t!207500 lt!861730)) (content!3757 (slice!733 l!2797 i!741 lt!861729)))))))

(declare-fun e!1490828 () List!27798)

(assert (=> d!689016 (= lt!861766 e!1490828)))

(declare-fun c!369603 () Bool)

(assert (=> d!689016 (= c!369603 ((_ is Nil!27700) (t!207500 lt!861730)))))

(assert (=> d!689016 (= (++!6848 (t!207500 lt!861730) (slice!733 l!2797 i!741 lt!861729)) lt!861766)))

(declare-fun b!2326865 () Bool)

(assert (=> b!2326865 (= e!1490827 (or (not (= (slice!733 l!2797 i!741 lt!861729) Nil!27700)) (= lt!861766 (t!207500 lt!861730))))))

(declare-fun b!2326862 () Bool)

(assert (=> b!2326862 (= e!1490828 (slice!733 l!2797 i!741 lt!861729))))

(declare-fun b!2326863 () Bool)

(assert (=> b!2326863 (= e!1490828 (Cons!27700 (h!33101 (t!207500 lt!861730)) (++!6848 (t!207500 (t!207500 lt!861730)) (slice!733 l!2797 i!741 lt!861729))))))

(assert (= (and d!689016 c!369603) b!2326862))

(assert (= (and d!689016 (not c!369603)) b!2326863))

(assert (= (and d!689016 res!993666) b!2326864))

(assert (= (and b!2326864 res!993665) b!2326865))

(declare-fun m!2757887 () Bool)

(assert (=> b!2326864 m!2757887))

(declare-fun m!2757889 () Bool)

(assert (=> b!2326864 m!2757889))

(assert (=> b!2326864 m!2757737))

(assert (=> b!2326864 m!2757755))

(declare-fun m!2757891 () Bool)

(assert (=> d!689016 m!2757891))

(assert (=> d!689016 m!2757881))

(assert (=> d!689016 m!2757737))

(assert (=> d!689016 m!2757761))

(assert (=> b!2326863 m!2757737))

(declare-fun m!2757893 () Bool)

(assert (=> b!2326863 m!2757893))

(assert (=> b!2326699 d!689016))

(declare-fun d!689018 () Bool)

(declare-fun lt!861767 () Int)

(assert (=> d!689018 (>= lt!861767 0)))

(declare-fun e!1490831 () Int)

(assert (=> d!689018 (= lt!861767 e!1490831)))

(declare-fun c!369606 () Bool)

(assert (=> d!689018 (= c!369606 ((_ is Nil!27700) lt!861734))))

(assert (=> d!689018 (= (size!21976 lt!861734) lt!861767)))

(declare-fun b!2326868 () Bool)

(assert (=> b!2326868 (= e!1490831 0)))

(declare-fun b!2326869 () Bool)

(assert (=> b!2326869 (= e!1490831 (+ 1 (size!21976 (t!207500 lt!861734))))))

(assert (= (and d!689018 c!369606) b!2326868))

(assert (= (and d!689018 (not c!369606)) b!2326869))

(declare-fun m!2757895 () Bool)

(assert (=> b!2326869 m!2757895))

(assert (=> b!2326700 d!689018))

(declare-fun d!689020 () Bool)

(declare-fun lt!861768 () Int)

(assert (=> d!689020 (>= lt!861768 0)))

(declare-fun e!1490832 () Int)

(assert (=> d!689020 (= lt!861768 e!1490832)))

(declare-fun c!369607 () Bool)

(assert (=> d!689020 (= c!369607 ((_ is Nil!27700) lt!861730))))

(assert (=> d!689020 (= (size!21976 lt!861730) lt!861768)))

(declare-fun b!2326870 () Bool)

(assert (=> b!2326870 (= e!1490832 0)))

(declare-fun b!2326871 () Bool)

(assert (=> b!2326871 (= e!1490832 (+ 1 (size!21976 (t!207500 lt!861730))))))

(assert (= (and d!689020 c!369607) b!2326870))

(assert (= (and d!689020 (not c!369607)) b!2326871))

(assert (=> b!2326871 m!2757889))

(assert (=> b!2326700 d!689020))

(declare-fun d!689022 () Bool)

(declare-fun lt!861769 () Int)

(assert (=> d!689022 (>= lt!861769 0)))

(declare-fun e!1490833 () Int)

(assert (=> d!689022 (= lt!861769 e!1490833)))

(declare-fun c!369608 () Bool)

(assert (=> d!689022 (= c!369608 ((_ is Nil!27700) (slice!733 l!2797 i!741 lt!861729)))))

(assert (=> d!689022 (= (size!21976 (slice!733 l!2797 i!741 lt!861729)) lt!861769)))

(declare-fun b!2326872 () Bool)

(assert (=> b!2326872 (= e!1490833 0)))

(declare-fun b!2326873 () Bool)

(assert (=> b!2326873 (= e!1490833 (+ 1 (size!21976 (t!207500 (slice!733 l!2797 i!741 lt!861729)))))))

(assert (= (and d!689022 c!369608) b!2326872))

(assert (= (and d!689022 (not c!369608)) b!2326873))

(declare-fun m!2757897 () Bool)

(assert (=> b!2326873 m!2757897))

(assert (=> b!2326700 d!689022))

(declare-fun b!2326876 () Bool)

(declare-fun e!1490835 () Bool)

(declare-fun tp!737208 () Bool)

(assert (=> b!2326876 (= e!1490835 (and tp_is_empty!10889 tp!737208))))

(assert (=> b!2326766 (= tp!737204 e!1490835)))

(assert (= (and b!2326766 ((_ is Cons!27700) (t!207500 (t!207500 l!2797)))) b!2326876))

(check-sat (not b!2326873) (not b!2326849) (not b!2326846) (not b!2326784) (not d!689006) (not b!2326811) (not d!689004) tp_is_empty!10889 (not b!2326844) (not b!2326823) (not b!2326876) (not b!2326871) (not b!2326826) (not b!2326830) (not b!2326786) (not b!2326837) (not b!2326813) (not b!2326864) (not d!688998) (not b!2326819) (not bm!138952) (not b!2326851) (not b!2326781) (not b!2326869) (not b!2326821) (not bm!138953) (not d!689016) (not d!688990) (not b!2326832) (not d!689002) (not b!2326857) (not b!2326853) (not b!2326863) (not b!2326835) (not b!2326855) (not b!2326825) (not b!2326848) (not b!2326859) (not d!689000) (not b!2326779) (not d!688988) (not b!2326782) (not b!2326828) (not b!2326833))
(check-sat)
