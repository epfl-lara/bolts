; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229154 () Bool)

(assert start!229154)

(declare-fun b!2321678 () Bool)

(declare-fun e!1487973 () Bool)

(declare-datatypes ((T!43880 0))(
  ( (T!43881 (val!7976 Int)) )
))
(declare-datatypes ((List!27762 0))(
  ( (Nil!27664) (Cons!27664 (h!33065 T!43880) (t!207432 List!27762)) )
))
(declare-datatypes ((IArray!18143 0))(
  ( (IArray!18144 (innerList!9129 List!27762)) )
))
(declare-fun arr!18 () IArray!18143)

(declare-datatypes ((Conc!9069 0))(
  ( (Node!9069 (left!21000 Conc!9069) (right!21330 Conc!9069) (csize!18368 Int) (cheight!9280 Int)) (Leaf!13313 (xs!12035 IArray!18143) (csize!18369 Int)) (Empty!9069) )
))
(declare-fun inv!37621 (Conc!9069) Bool)

(declare-fun slice!693 (IArray!18143 Int Int) IArray!18143)

(assert (=> b!2321678 (= e!1487973 (not (inv!37621 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))

(declare-fun b!2321679 () Bool)

(declare-fun e!1487972 () Bool)

(declare-fun tp!736587 () Bool)

(assert (=> b!2321679 (= e!1487972 tp!736587)))

(declare-fun res!991817 () Bool)

(assert (=> start!229154 (=> (not res!991817) (not e!1487973))))

(declare-fun acc!252 () Conc!9069)

(declare-fun isBalanced!2763 (Conc!9069) Bool)

(assert (=> start!229154 (= res!991817 (isBalanced!2763 acc!252))))

(assert (=> start!229154 e!1487973))

(declare-fun e!1487975 () Bool)

(assert (=> start!229154 (and (inv!37621 acc!252) e!1487975)))

(declare-fun e!1487974 () Bool)

(declare-fun inv!37622 (IArray!18143) Bool)

(assert (=> start!229154 (and (inv!37622 arr!18) e!1487974)))

(declare-fun b!2321680 () Bool)

(declare-fun res!991818 () Bool)

(assert (=> b!2321680 (=> (not res!991818) (not e!1487973))))

(declare-fun size!21924 (IArray!18143) Int)

(assert (=> b!2321680 (= res!991818 (> (size!21924 arr!18) 512))))

(declare-fun b!2321681 () Bool)

(assert (=> b!2321681 (= e!1487975 (and (inv!37622 (xs!12035 acc!252)) e!1487972))))

(declare-fun b!2321682 () Bool)

(declare-fun tp!736585 () Bool)

(assert (=> b!2321682 (= e!1487974 tp!736585)))

(declare-fun b!2321683 () Bool)

(declare-fun tp!736584 () Bool)

(declare-fun tp!736586 () Bool)

(assert (=> b!2321683 (= e!1487975 (and (inv!37621 (left!21000 acc!252)) tp!736584 (inv!37621 (right!21330 acc!252)) tp!736586))))

(assert (= (and start!229154 res!991817) b!2321680))

(assert (= (and b!2321680 res!991818) b!2321678))

(get-info :version)

(assert (= (and start!229154 ((_ is Node!9069) acc!252)) b!2321683))

(assert (= b!2321681 b!2321679))

(assert (= (and start!229154 ((_ is Leaf!13313) acc!252)) b!2321681))

(assert (= start!229154 b!2321682))

(declare-fun m!2750957 () Bool)

(assert (=> start!229154 m!2750957))

(declare-fun m!2750959 () Bool)

(assert (=> start!229154 m!2750959))

(declare-fun m!2750961 () Bool)

(assert (=> start!229154 m!2750961))

(declare-fun m!2750963 () Bool)

(assert (=> b!2321678 m!2750963))

(declare-fun m!2750965 () Bool)

(assert (=> b!2321678 m!2750965))

(declare-fun m!2750967 () Bool)

(assert (=> b!2321683 m!2750967))

(declare-fun m!2750969 () Bool)

(assert (=> b!2321683 m!2750969))

(declare-fun m!2750971 () Bool)

(assert (=> b!2321681 m!2750971))

(declare-fun m!2750973 () Bool)

(assert (=> b!2321680 m!2750973))

(check-sat (not b!2321683) (not b!2321678) (not b!2321682) (not start!229154) (not b!2321681) (not b!2321679) (not b!2321680))
(check-sat)
(get-model)

(declare-fun d!686796 () Bool)

(declare-fun lt!860462 () Int)

(declare-fun size!21925 (List!27762) Int)

(declare-fun list!11006 (IArray!18143) List!27762)

(assert (=> d!686796 (= lt!860462 (size!21925 (list!11006 arr!18)))))

(declare-fun choose!13593 (IArray!18143) Int)

(assert (=> d!686796 (= lt!860462 (choose!13593 arr!18))))

(assert (=> d!686796 (= (size!21924 arr!18) lt!860462)))

(declare-fun bs!459056 () Bool)

(assert (= bs!459056 d!686796))

(declare-fun m!2750975 () Bool)

(assert (=> bs!459056 m!2750975))

(assert (=> bs!459056 m!2750975))

(declare-fun m!2750979 () Bool)

(assert (=> bs!459056 m!2750979))

(declare-fun m!2750981 () Bool)

(assert (=> bs!459056 m!2750981))

(assert (=> b!2321680 d!686796))

(declare-fun d!686802 () Bool)

(assert (=> d!686802 (= (inv!37622 (xs!12035 acc!252)) (<= (size!21925 (innerList!9129 (xs!12035 acc!252))) 2147483647))))

(declare-fun bs!459058 () Bool)

(assert (= bs!459058 d!686802))

(declare-fun m!2750983 () Bool)

(assert (=> bs!459058 m!2750983))

(assert (=> b!2321681 d!686802))

(declare-fun d!686804 () Bool)

(declare-fun c!368282 () Bool)

(assert (=> d!686804 (= c!368282 ((_ is Node!9069) (left!21000 acc!252)))))

(declare-fun e!1487988 () Bool)

(assert (=> d!686804 (= (inv!37621 (left!21000 acc!252)) e!1487988)))

(declare-fun b!2321702 () Bool)

(declare-fun inv!37624 (Conc!9069) Bool)

(assert (=> b!2321702 (= e!1487988 (inv!37624 (left!21000 acc!252)))))

(declare-fun b!2321703 () Bool)

(declare-fun e!1487989 () Bool)

(assert (=> b!2321703 (= e!1487988 e!1487989)))

(declare-fun res!991825 () Bool)

(assert (=> b!2321703 (= res!991825 (not ((_ is Leaf!13313) (left!21000 acc!252))))))

(assert (=> b!2321703 (=> res!991825 e!1487989)))

(declare-fun b!2321704 () Bool)

(declare-fun inv!37626 (Conc!9069) Bool)

(assert (=> b!2321704 (= e!1487989 (inv!37626 (left!21000 acc!252)))))

(assert (= (and d!686804 c!368282) b!2321702))

(assert (= (and d!686804 (not c!368282)) b!2321703))

(assert (= (and b!2321703 (not res!991825)) b!2321704))

(declare-fun m!2750993 () Bool)

(assert (=> b!2321702 m!2750993))

(declare-fun m!2750995 () Bool)

(assert (=> b!2321704 m!2750995))

(assert (=> b!2321683 d!686804))

(declare-fun d!686810 () Bool)

(declare-fun c!368283 () Bool)

(assert (=> d!686810 (= c!368283 ((_ is Node!9069) (right!21330 acc!252)))))

(declare-fun e!1487990 () Bool)

(assert (=> d!686810 (= (inv!37621 (right!21330 acc!252)) e!1487990)))

(declare-fun b!2321705 () Bool)

(assert (=> b!2321705 (= e!1487990 (inv!37624 (right!21330 acc!252)))))

(declare-fun b!2321706 () Bool)

(declare-fun e!1487991 () Bool)

(assert (=> b!2321706 (= e!1487990 e!1487991)))

(declare-fun res!991826 () Bool)

(assert (=> b!2321706 (= res!991826 (not ((_ is Leaf!13313) (right!21330 acc!252))))))

(assert (=> b!2321706 (=> res!991826 e!1487991)))

(declare-fun b!2321707 () Bool)

(assert (=> b!2321707 (= e!1487991 (inv!37626 (right!21330 acc!252)))))

(assert (= (and d!686810 c!368283) b!2321705))

(assert (= (and d!686810 (not c!368283)) b!2321706))

(assert (= (and b!2321706 (not res!991826)) b!2321707))

(declare-fun m!2750997 () Bool)

(assert (=> b!2321705 m!2750997))

(declare-fun m!2750999 () Bool)

(assert (=> b!2321707 m!2750999))

(assert (=> b!2321683 d!686810))

(declare-fun b!2321741 () Bool)

(declare-fun res!991858 () Bool)

(declare-fun e!1488005 () Bool)

(assert (=> b!2321741 (=> (not res!991858) (not e!1488005))))

(declare-fun isEmpty!15793 (Conc!9069) Bool)

(assert (=> b!2321741 (= res!991858 (not (isEmpty!15793 (left!21000 acc!252))))))

(declare-fun b!2321742 () Bool)

(assert (=> b!2321742 (= e!1488005 (not (isEmpty!15793 (right!21330 acc!252))))))

(declare-fun b!2321743 () Bool)

(declare-fun res!991860 () Bool)

(assert (=> b!2321743 (=> (not res!991860) (not e!1488005))))

(assert (=> b!2321743 (= res!991860 (isBalanced!2763 (right!21330 acc!252)))))

(declare-fun b!2321744 () Bool)

(declare-fun e!1488004 () Bool)

(assert (=> b!2321744 (= e!1488004 e!1488005)))

(declare-fun res!991863 () Bool)

(assert (=> b!2321744 (=> (not res!991863) (not e!1488005))))

(declare-fun height!1329 (Conc!9069) Int)

(assert (=> b!2321744 (= res!991863 (<= (- 1) (- (height!1329 (left!21000 acc!252)) (height!1329 (right!21330 acc!252)))))))

(declare-fun b!2321745 () Bool)

(declare-fun res!991861 () Bool)

(assert (=> b!2321745 (=> (not res!991861) (not e!1488005))))

(assert (=> b!2321745 (= res!991861 (<= (- (height!1329 (left!21000 acc!252)) (height!1329 (right!21330 acc!252))) 1))))

(declare-fun d!686812 () Bool)

(declare-fun res!991859 () Bool)

(assert (=> d!686812 (=> res!991859 e!1488004)))

(assert (=> d!686812 (= res!991859 (not ((_ is Node!9069) acc!252)))))

(assert (=> d!686812 (= (isBalanced!2763 acc!252) e!1488004)))

(declare-fun b!2321746 () Bool)

(declare-fun res!991862 () Bool)

(assert (=> b!2321746 (=> (not res!991862) (not e!1488005))))

(assert (=> b!2321746 (= res!991862 (isBalanced!2763 (left!21000 acc!252)))))

(assert (= (and d!686812 (not res!991859)) b!2321744))

(assert (= (and b!2321744 res!991863) b!2321745))

(assert (= (and b!2321745 res!991861) b!2321746))

(assert (= (and b!2321746 res!991862) b!2321743))

(assert (= (and b!2321743 res!991860) b!2321741))

(assert (= (and b!2321741 res!991858) b!2321742))

(declare-fun m!2751023 () Bool)

(assert (=> b!2321746 m!2751023))

(declare-fun m!2751025 () Bool)

(assert (=> b!2321743 m!2751025))

(declare-fun m!2751027 () Bool)

(assert (=> b!2321741 m!2751027))

(declare-fun m!2751029 () Bool)

(assert (=> b!2321744 m!2751029))

(declare-fun m!2751031 () Bool)

(assert (=> b!2321744 m!2751031))

(declare-fun m!2751033 () Bool)

(assert (=> b!2321742 m!2751033))

(assert (=> b!2321745 m!2751029))

(assert (=> b!2321745 m!2751031))

(assert (=> start!229154 d!686812))

(declare-fun d!686822 () Bool)

(declare-fun c!368286 () Bool)

(assert (=> d!686822 (= c!368286 ((_ is Node!9069) acc!252))))

(declare-fun e!1488008 () Bool)

(assert (=> d!686822 (= (inv!37621 acc!252) e!1488008)))

(declare-fun b!2321750 () Bool)

(assert (=> b!2321750 (= e!1488008 (inv!37624 acc!252))))

(declare-fun b!2321751 () Bool)

(declare-fun e!1488009 () Bool)

(assert (=> b!2321751 (= e!1488008 e!1488009)))

(declare-fun res!991865 () Bool)

(assert (=> b!2321751 (= res!991865 (not ((_ is Leaf!13313) acc!252)))))

(assert (=> b!2321751 (=> res!991865 e!1488009)))

(declare-fun b!2321752 () Bool)

(assert (=> b!2321752 (= e!1488009 (inv!37626 acc!252))))

(assert (= (and d!686822 c!368286) b!2321750))

(assert (= (and d!686822 (not c!368286)) b!2321751))

(assert (= (and b!2321751 (not res!991865)) b!2321752))

(declare-fun m!2751035 () Bool)

(assert (=> b!2321750 m!2751035))

(declare-fun m!2751037 () Bool)

(assert (=> b!2321752 m!2751037))

(assert (=> start!229154 d!686822))

(declare-fun d!686824 () Bool)

(assert (=> d!686824 (= (inv!37622 arr!18) (<= (size!21925 (innerList!9129 arr!18)) 2147483647))))

(declare-fun bs!459060 () Bool)

(assert (= bs!459060 d!686824))

(declare-fun m!2751039 () Bool)

(assert (=> bs!459060 m!2751039))

(assert (=> start!229154 d!686824))

(declare-fun d!686826 () Bool)

(declare-fun c!368287 () Bool)

(assert (=> d!686826 (= c!368287 ((_ is Node!9069) (Leaf!13313 (slice!693 arr!18 0 512) 512)))))

(declare-fun e!1488010 () Bool)

(assert (=> d!686826 (= (inv!37621 (Leaf!13313 (slice!693 arr!18 0 512) 512)) e!1488010)))

(declare-fun b!2321753 () Bool)

(assert (=> b!2321753 (= e!1488010 (inv!37624 (Leaf!13313 (slice!693 arr!18 0 512) 512)))))

(declare-fun b!2321754 () Bool)

(declare-fun e!1488011 () Bool)

(assert (=> b!2321754 (= e!1488010 e!1488011)))

(declare-fun res!991866 () Bool)

(assert (=> b!2321754 (= res!991866 (not ((_ is Leaf!13313) (Leaf!13313 (slice!693 arr!18 0 512) 512))))))

(assert (=> b!2321754 (=> res!991866 e!1488011)))

(declare-fun b!2321755 () Bool)

(assert (=> b!2321755 (= e!1488011 (inv!37626 (Leaf!13313 (slice!693 arr!18 0 512) 512)))))

(assert (= (and d!686826 c!368287) b!2321753))

(assert (= (and d!686826 (not c!368287)) b!2321754))

(assert (= (and b!2321754 (not res!991866)) b!2321755))

(declare-fun m!2751041 () Bool)

(assert (=> b!2321753 m!2751041))

(declare-fun m!2751043 () Bool)

(assert (=> b!2321755 m!2751043))

(assert (=> b!2321678 d!686826))

(declare-fun d!686828 () Bool)

(declare-fun lt!860468 () IArray!18143)

(declare-fun slice!694 (List!27762 Int Int) List!27762)

(assert (=> d!686828 (= lt!860468 (IArray!18144 (slice!694 (list!11006 arr!18) 0 512)))))

(declare-fun choose!13594 (IArray!18143 Int Int) IArray!18143)

(assert (=> d!686828 (= lt!860468 (choose!13594 arr!18 0 512))))

(declare-fun e!1488017 () Bool)

(assert (=> d!686828 e!1488017))

(declare-fun res!991872 () Bool)

(assert (=> d!686828 (=> (not res!991872) (not e!1488017))))

(assert (=> d!686828 (= res!991872 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!686828 (= (slice!693 arr!18 0 512) lt!860468)))

(declare-fun b!2321761 () Bool)

(assert (=> b!2321761 (= e!1488017 (<= 512 (size!21924 arr!18)))))

(assert (= (and d!686828 res!991872) b!2321761))

(assert (=> d!686828 m!2750975))

(assert (=> d!686828 m!2750975))

(declare-fun m!2751051 () Bool)

(assert (=> d!686828 m!2751051))

(declare-fun m!2751053 () Bool)

(assert (=> d!686828 m!2751053))

(assert (=> b!2321761 m!2750973))

(assert (=> b!2321678 d!686828))

(declare-fun b!2321766 () Bool)

(declare-fun e!1488020 () Bool)

(declare-fun tp_is_empty!10823 () Bool)

(declare-fun tp!736590 () Bool)

(assert (=> b!2321766 (= e!1488020 (and tp_is_empty!10823 tp!736590))))

(assert (=> b!2321679 (= tp!736587 e!1488020)))

(assert (= (and b!2321679 ((_ is Cons!27664) (innerList!9129 (xs!12035 acc!252)))) b!2321766))

(declare-fun b!2321767 () Bool)

(declare-fun e!1488021 () Bool)

(declare-fun tp!736591 () Bool)

(assert (=> b!2321767 (= e!1488021 (and tp_is_empty!10823 tp!736591))))

(assert (=> b!2321682 (= tp!736585 e!1488021)))

(assert (= (and b!2321682 ((_ is Cons!27664) (innerList!9129 arr!18))) b!2321767))

(declare-fun e!1488030 () Bool)

(declare-fun tp!736604 () Bool)

(declare-fun tp!736606 () Bool)

(declare-fun b!2321784 () Bool)

(assert (=> b!2321784 (= e!1488030 (and (inv!37621 (left!21000 (left!21000 acc!252))) tp!736606 (inv!37621 (right!21330 (left!21000 acc!252))) tp!736604))))

(declare-fun b!2321786 () Bool)

(declare-fun e!1488031 () Bool)

(declare-fun tp!736605 () Bool)

(assert (=> b!2321786 (= e!1488031 tp!736605)))

(declare-fun b!2321785 () Bool)

(assert (=> b!2321785 (= e!1488030 (and (inv!37622 (xs!12035 (left!21000 acc!252))) e!1488031))))

(assert (=> b!2321683 (= tp!736584 (and (inv!37621 (left!21000 acc!252)) e!1488030))))

(assert (= (and b!2321683 ((_ is Node!9069) (left!21000 acc!252))) b!2321784))

(assert (= b!2321785 b!2321786))

(assert (= (and b!2321683 ((_ is Leaf!13313) (left!21000 acc!252))) b!2321785))

(declare-fun m!2751059 () Bool)

(assert (=> b!2321784 m!2751059))

(declare-fun m!2751061 () Bool)

(assert (=> b!2321784 m!2751061))

(declare-fun m!2751063 () Bool)

(assert (=> b!2321785 m!2751063))

(assert (=> b!2321683 m!2750967))

(declare-fun tp!736612 () Bool)

(declare-fun tp!736610 () Bool)

(declare-fun e!1488034 () Bool)

(declare-fun b!2321790 () Bool)

(assert (=> b!2321790 (= e!1488034 (and (inv!37621 (left!21000 (right!21330 acc!252))) tp!736612 (inv!37621 (right!21330 (right!21330 acc!252))) tp!736610))))

(declare-fun b!2321792 () Bool)

(declare-fun e!1488035 () Bool)

(declare-fun tp!736611 () Bool)

(assert (=> b!2321792 (= e!1488035 tp!736611)))

(declare-fun b!2321791 () Bool)

(assert (=> b!2321791 (= e!1488034 (and (inv!37622 (xs!12035 (right!21330 acc!252))) e!1488035))))

(assert (=> b!2321683 (= tp!736586 (and (inv!37621 (right!21330 acc!252)) e!1488034))))

(assert (= (and b!2321683 ((_ is Node!9069) (right!21330 acc!252))) b!2321790))

(assert (= b!2321791 b!2321792))

(assert (= (and b!2321683 ((_ is Leaf!13313) (right!21330 acc!252))) b!2321791))

(declare-fun m!2751071 () Bool)

(assert (=> b!2321790 m!2751071))

(declare-fun m!2751073 () Bool)

(assert (=> b!2321790 m!2751073))

(declare-fun m!2751075 () Bool)

(assert (=> b!2321791 m!2751075))

(assert (=> b!2321683 m!2750969))

(check-sat (not d!686828) (not b!2321752) (not b!2321792) (not d!686796) (not b!2321750) (not b!2321784) (not d!686824) (not b!2321746) (not b!2321705) (not b!2321743) (not b!2321704) (not b!2321744) (not b!2321785) (not b!2321707) (not b!2321745) (not d!686802) (not b!2321683) (not b!2321766) (not b!2321767) (not b!2321790) (not b!2321761) (not b!2321741) (not b!2321786) (not b!2321755) (not b!2321702) (not b!2321742) (not b!2321791) (not b!2321753) tp_is_empty!10823)
(check-sat)
(get-model)

(declare-fun d!686832 () Bool)

(declare-fun lt!860474 () Int)

(assert (=> d!686832 (>= lt!860474 0)))

(declare-fun e!1488044 () Int)

(assert (=> d!686832 (= lt!860474 e!1488044)))

(declare-fun c!368290 () Bool)

(assert (=> d!686832 (= c!368290 ((_ is Nil!27664) (innerList!9129 (xs!12035 acc!252))))))

(assert (=> d!686832 (= (size!21925 (innerList!9129 (xs!12035 acc!252))) lt!860474)))

(declare-fun b!2321806 () Bool)

(assert (=> b!2321806 (= e!1488044 0)))

(declare-fun b!2321807 () Bool)

(assert (=> b!2321807 (= e!1488044 (+ 1 (size!21925 (t!207432 (innerList!9129 (xs!12035 acc!252))))))))

(assert (= (and d!686832 c!368290) b!2321806))

(assert (= (and d!686832 (not c!368290)) b!2321807))

(declare-fun m!2751083 () Bool)

(assert (=> b!2321807 m!2751083))

(assert (=> d!686802 d!686832))

(declare-fun d!686834 () Bool)

(declare-fun lt!860475 () Int)

(assert (=> d!686834 (>= lt!860475 0)))

(declare-fun e!1488045 () Int)

(assert (=> d!686834 (= lt!860475 e!1488045)))

(declare-fun c!368291 () Bool)

(assert (=> d!686834 (= c!368291 ((_ is Nil!27664) (innerList!9129 arr!18)))))

(assert (=> d!686834 (= (size!21925 (innerList!9129 arr!18)) lt!860475)))

(declare-fun b!2321808 () Bool)

(assert (=> b!2321808 (= e!1488045 0)))

(declare-fun b!2321809 () Bool)

(assert (=> b!2321809 (= e!1488045 (+ 1 (size!21925 (t!207432 (innerList!9129 arr!18)))))))

(assert (= (and d!686834 c!368291) b!2321808))

(assert (= (and d!686834 (not c!368291)) b!2321809))

(declare-fun m!2751085 () Bool)

(assert (=> b!2321809 m!2751085))

(assert (=> d!686824 d!686834))

(declare-fun d!686836 () Bool)

(declare-fun res!991879 () Bool)

(declare-fun e!1488048 () Bool)

(assert (=> d!686836 (=> (not res!991879) (not e!1488048))))

(declare-fun size!21927 (Conc!9069) Int)

(assert (=> d!686836 (= res!991879 (= (csize!18368 (right!21330 acc!252)) (+ (size!21927 (left!21000 (right!21330 acc!252))) (size!21927 (right!21330 (right!21330 acc!252))))))))

(assert (=> d!686836 (= (inv!37624 (right!21330 acc!252)) e!1488048)))

(declare-fun b!2321816 () Bool)

(declare-fun res!991880 () Bool)

(assert (=> b!2321816 (=> (not res!991880) (not e!1488048))))

(assert (=> b!2321816 (= res!991880 (and (not (= (left!21000 (right!21330 acc!252)) Empty!9069)) (not (= (right!21330 (right!21330 acc!252)) Empty!9069))))))

(declare-fun b!2321817 () Bool)

(declare-fun res!991881 () Bool)

(assert (=> b!2321817 (=> (not res!991881) (not e!1488048))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2321817 (= res!991881 (= (cheight!9280 (right!21330 acc!252)) (+ (max!0 (height!1329 (left!21000 (right!21330 acc!252))) (height!1329 (right!21330 (right!21330 acc!252)))) 1)))))

(declare-fun b!2321818 () Bool)

(assert (=> b!2321818 (= e!1488048 (<= 0 (cheight!9280 (right!21330 acc!252))))))

(assert (= (and d!686836 res!991879) b!2321816))

(assert (= (and b!2321816 res!991880) b!2321817))

(assert (= (and b!2321817 res!991881) b!2321818))

(declare-fun m!2751087 () Bool)

(assert (=> d!686836 m!2751087))

(declare-fun m!2751089 () Bool)

(assert (=> d!686836 m!2751089))

(declare-fun m!2751091 () Bool)

(assert (=> b!2321817 m!2751091))

(declare-fun m!2751093 () Bool)

(assert (=> b!2321817 m!2751093))

(assert (=> b!2321817 m!2751091))

(assert (=> b!2321817 m!2751093))

(declare-fun m!2751095 () Bool)

(assert (=> b!2321817 m!2751095))

(assert (=> b!2321705 d!686836))

(declare-fun d!686838 () Bool)

(assert (=> d!686838 (= (inv!37622 (xs!12035 (right!21330 acc!252))) (<= (size!21925 (innerList!9129 (xs!12035 (right!21330 acc!252)))) 2147483647))))

(declare-fun bs!459062 () Bool)

(assert (= bs!459062 d!686838))

(declare-fun m!2751097 () Bool)

(assert (=> bs!459062 m!2751097))

(assert (=> b!2321791 d!686838))

(declare-fun d!686840 () Bool)

(declare-fun lt!860476 () Int)

(assert (=> d!686840 (>= lt!860476 0)))

(declare-fun e!1488049 () Int)

(assert (=> d!686840 (= lt!860476 e!1488049)))

(declare-fun c!368292 () Bool)

(assert (=> d!686840 (= c!368292 ((_ is Nil!27664) (list!11006 arr!18)))))

(assert (=> d!686840 (= (size!21925 (list!11006 arr!18)) lt!860476)))

(declare-fun b!2321819 () Bool)

(assert (=> b!2321819 (= e!1488049 0)))

(declare-fun b!2321820 () Bool)

(assert (=> b!2321820 (= e!1488049 (+ 1 (size!21925 (t!207432 (list!11006 arr!18)))))))

(assert (= (and d!686840 c!368292) b!2321819))

(assert (= (and d!686840 (not c!368292)) b!2321820))

(declare-fun m!2751099 () Bool)

(assert (=> b!2321820 m!2751099))

(assert (=> d!686796 d!686840))

(declare-fun d!686842 () Bool)

(assert (=> d!686842 (= (list!11006 arr!18) (innerList!9129 arr!18))))

(assert (=> d!686796 d!686842))

(declare-fun d!686844 () Bool)

(declare-fun _$1!10213 () Int)

(assert (=> d!686844 (= _$1!10213 (size!21925 (list!11006 arr!18)))))

(assert (=> d!686844 true))

(assert (=> d!686844 (= (choose!13593 arr!18) _$1!10213)))

(declare-fun bs!459063 () Bool)

(assert (= bs!459063 d!686844))

(assert (=> bs!459063 m!2750975))

(assert (=> bs!459063 m!2750975))

(assert (=> bs!459063 m!2750979))

(assert (=> d!686796 d!686844))

(declare-fun d!686846 () Bool)

(declare-fun c!368293 () Bool)

(assert (=> d!686846 (= c!368293 ((_ is Node!9069) (left!21000 (right!21330 acc!252))))))

(declare-fun e!1488050 () Bool)

(assert (=> d!686846 (= (inv!37621 (left!21000 (right!21330 acc!252))) e!1488050)))

(declare-fun b!2321821 () Bool)

(assert (=> b!2321821 (= e!1488050 (inv!37624 (left!21000 (right!21330 acc!252))))))

(declare-fun b!2321822 () Bool)

(declare-fun e!1488051 () Bool)

(assert (=> b!2321822 (= e!1488050 e!1488051)))

(declare-fun res!991882 () Bool)

(assert (=> b!2321822 (= res!991882 (not ((_ is Leaf!13313) (left!21000 (right!21330 acc!252)))))))

(assert (=> b!2321822 (=> res!991882 e!1488051)))

(declare-fun b!2321823 () Bool)

(assert (=> b!2321823 (= e!1488051 (inv!37626 (left!21000 (right!21330 acc!252))))))

(assert (= (and d!686846 c!368293) b!2321821))

(assert (= (and d!686846 (not c!368293)) b!2321822))

(assert (= (and b!2321822 (not res!991882)) b!2321823))

(declare-fun m!2751101 () Bool)

(assert (=> b!2321821 m!2751101))

(declare-fun m!2751103 () Bool)

(assert (=> b!2321823 m!2751103))

(assert (=> b!2321790 d!686846))

(declare-fun d!686848 () Bool)

(declare-fun c!368294 () Bool)

(assert (=> d!686848 (= c!368294 ((_ is Node!9069) (right!21330 (right!21330 acc!252))))))

(declare-fun e!1488052 () Bool)

(assert (=> d!686848 (= (inv!37621 (right!21330 (right!21330 acc!252))) e!1488052)))

(declare-fun b!2321824 () Bool)

(assert (=> b!2321824 (= e!1488052 (inv!37624 (right!21330 (right!21330 acc!252))))))

(declare-fun b!2321825 () Bool)

(declare-fun e!1488053 () Bool)

(assert (=> b!2321825 (= e!1488052 e!1488053)))

(declare-fun res!991883 () Bool)

(assert (=> b!2321825 (= res!991883 (not ((_ is Leaf!13313) (right!21330 (right!21330 acc!252)))))))

(assert (=> b!2321825 (=> res!991883 e!1488053)))

(declare-fun b!2321826 () Bool)

(assert (=> b!2321826 (= e!1488053 (inv!37626 (right!21330 (right!21330 acc!252))))))

(assert (= (and d!686848 c!368294) b!2321824))

(assert (= (and d!686848 (not c!368294)) b!2321825))

(assert (= (and b!2321825 (not res!991883)) b!2321826))

(declare-fun m!2751105 () Bool)

(assert (=> b!2321824 m!2751105))

(declare-fun m!2751107 () Bool)

(assert (=> b!2321826 m!2751107))

(assert (=> b!2321790 d!686848))

(declare-fun d!686850 () Bool)

(assert (=> d!686850 (= (inv!37622 (xs!12035 (left!21000 acc!252))) (<= (size!21925 (innerList!9129 (xs!12035 (left!21000 acc!252)))) 2147483647))))

(declare-fun bs!459064 () Bool)

(assert (= bs!459064 d!686850))

(declare-fun m!2751109 () Bool)

(assert (=> bs!459064 m!2751109))

(assert (=> b!2321785 d!686850))

(declare-fun d!686852 () Bool)

(declare-fun take!482 (List!27762 Int) List!27762)

(declare-fun drop!1505 (List!27762 Int) List!27762)

(assert (=> d!686852 (= (slice!694 (list!11006 arr!18) 0 512) (take!482 (drop!1505 (list!11006 arr!18) 0) (- 512 0)))))

(declare-fun bs!459065 () Bool)

(assert (= bs!459065 d!686852))

(assert (=> bs!459065 m!2750975))

(declare-fun m!2751111 () Bool)

(assert (=> bs!459065 m!2751111))

(assert (=> bs!459065 m!2751111))

(declare-fun m!2751113 () Bool)

(assert (=> bs!459065 m!2751113))

(assert (=> d!686828 d!686852))

(assert (=> d!686828 d!686842))

(declare-fun d!686854 () Bool)

(declare-fun _$4!1105 () IArray!18143)

(assert (=> d!686854 (= _$4!1105 (IArray!18144 (slice!694 (list!11006 arr!18) 0 512)))))

(declare-fun e!1488056 () Bool)

(assert (=> d!686854 (and (inv!37622 _$4!1105) e!1488056)))

(assert (=> d!686854 (= (choose!13594 arr!18 0 512) _$4!1105)))

(declare-fun b!2321829 () Bool)

(declare-fun tp!736622 () Bool)

(assert (=> b!2321829 (= e!1488056 tp!736622)))

(assert (= d!686854 b!2321829))

(assert (=> d!686854 m!2750975))

(assert (=> d!686854 m!2750975))

(assert (=> d!686854 m!2751051))

(declare-fun m!2751115 () Bool)

(assert (=> d!686854 m!2751115))

(assert (=> d!686828 d!686854))

(declare-fun d!686856 () Bool)

(declare-fun res!991888 () Bool)

(declare-fun e!1488059 () Bool)

(assert (=> d!686856 (=> (not res!991888) (not e!1488059))))

(assert (=> d!686856 (= res!991888 (<= (size!21925 (list!11006 (xs!12035 (right!21330 acc!252)))) 512))))

(assert (=> d!686856 (= (inv!37626 (right!21330 acc!252)) e!1488059)))

(declare-fun b!2321834 () Bool)

(declare-fun res!991889 () Bool)

(assert (=> b!2321834 (=> (not res!991889) (not e!1488059))))

(assert (=> b!2321834 (= res!991889 (= (csize!18369 (right!21330 acc!252)) (size!21925 (list!11006 (xs!12035 (right!21330 acc!252))))))))

(declare-fun b!2321835 () Bool)

(assert (=> b!2321835 (= e!1488059 (and (> (csize!18369 (right!21330 acc!252)) 0) (<= (csize!18369 (right!21330 acc!252)) 512)))))

(assert (= (and d!686856 res!991888) b!2321834))

(assert (= (and b!2321834 res!991889) b!2321835))

(declare-fun m!2751117 () Bool)

(assert (=> d!686856 m!2751117))

(assert (=> d!686856 m!2751117))

(declare-fun m!2751119 () Bool)

(assert (=> d!686856 m!2751119))

(assert (=> b!2321834 m!2751117))

(assert (=> b!2321834 m!2751117))

(assert (=> b!2321834 m!2751119))

(assert (=> b!2321707 d!686856))

(declare-fun b!2321836 () Bool)

(declare-fun res!991890 () Bool)

(declare-fun e!1488061 () Bool)

(assert (=> b!2321836 (=> (not res!991890) (not e!1488061))))

(assert (=> b!2321836 (= res!991890 (not (isEmpty!15793 (left!21000 (right!21330 acc!252)))))))

(declare-fun b!2321837 () Bool)

(assert (=> b!2321837 (= e!1488061 (not (isEmpty!15793 (right!21330 (right!21330 acc!252)))))))

(declare-fun b!2321838 () Bool)

(declare-fun res!991892 () Bool)

(assert (=> b!2321838 (=> (not res!991892) (not e!1488061))))

(assert (=> b!2321838 (= res!991892 (isBalanced!2763 (right!21330 (right!21330 acc!252))))))

(declare-fun b!2321839 () Bool)

(declare-fun e!1488060 () Bool)

(assert (=> b!2321839 (= e!1488060 e!1488061)))

(declare-fun res!991895 () Bool)

(assert (=> b!2321839 (=> (not res!991895) (not e!1488061))))

(assert (=> b!2321839 (= res!991895 (<= (- 1) (- (height!1329 (left!21000 (right!21330 acc!252))) (height!1329 (right!21330 (right!21330 acc!252))))))))

(declare-fun b!2321840 () Bool)

(declare-fun res!991893 () Bool)

(assert (=> b!2321840 (=> (not res!991893) (not e!1488061))))

(assert (=> b!2321840 (= res!991893 (<= (- (height!1329 (left!21000 (right!21330 acc!252))) (height!1329 (right!21330 (right!21330 acc!252)))) 1))))

(declare-fun d!686860 () Bool)

(declare-fun res!991891 () Bool)

(assert (=> d!686860 (=> res!991891 e!1488060)))

(assert (=> d!686860 (= res!991891 (not ((_ is Node!9069) (right!21330 acc!252))))))

(assert (=> d!686860 (= (isBalanced!2763 (right!21330 acc!252)) e!1488060)))

(declare-fun b!2321841 () Bool)

(declare-fun res!991894 () Bool)

(assert (=> b!2321841 (=> (not res!991894) (not e!1488061))))

(assert (=> b!2321841 (= res!991894 (isBalanced!2763 (left!21000 (right!21330 acc!252))))))

(assert (= (and d!686860 (not res!991891)) b!2321839))

(assert (= (and b!2321839 res!991895) b!2321840))

(assert (= (and b!2321840 res!991893) b!2321841))

(assert (= (and b!2321841 res!991894) b!2321838))

(assert (= (and b!2321838 res!991892) b!2321836))

(assert (= (and b!2321836 res!991890) b!2321837))

(declare-fun m!2751121 () Bool)

(assert (=> b!2321841 m!2751121))

(declare-fun m!2751123 () Bool)

(assert (=> b!2321838 m!2751123))

(declare-fun m!2751125 () Bool)

(assert (=> b!2321836 m!2751125))

(assert (=> b!2321839 m!2751091))

(assert (=> b!2321839 m!2751093))

(declare-fun m!2751127 () Bool)

(assert (=> b!2321837 m!2751127))

(assert (=> b!2321840 m!2751091))

(assert (=> b!2321840 m!2751093))

(assert (=> b!2321743 d!686860))

(declare-fun d!686862 () Bool)

(declare-fun res!991900 () Bool)

(declare-fun e!1488064 () Bool)

(assert (=> d!686862 (=> (not res!991900) (not e!1488064))))

(assert (=> d!686862 (= res!991900 (= (csize!18368 (Leaf!13313 (slice!693 arr!18 0 512) 512)) (+ (size!21927 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (size!21927 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))))

(assert (=> d!686862 (= (inv!37624 (Leaf!13313 (slice!693 arr!18 0 512) 512)) e!1488064)))

(declare-fun b!2321846 () Bool)

(declare-fun res!991901 () Bool)

(assert (=> b!2321846 (=> (not res!991901) (not e!1488064))))

(assert (=> b!2321846 (= res!991901 (and (not (= (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512)) Empty!9069)) (not (= (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512)) Empty!9069))))))

(declare-fun b!2321847 () Bool)

(declare-fun res!991902 () Bool)

(assert (=> b!2321847 (=> (not res!991902) (not e!1488064))))

(assert (=> b!2321847 (= res!991902 (= (cheight!9280 (Leaf!13313 (slice!693 arr!18 0 512) 512)) (+ (max!0 (height!1329 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (height!1329 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512)))) 1)))))

(declare-fun b!2321848 () Bool)

(assert (=> b!2321848 (= e!1488064 (<= 0 (cheight!9280 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))

(assert (= (and d!686862 res!991900) b!2321846))

(assert (= (and b!2321846 res!991901) b!2321847))

(assert (= (and b!2321847 res!991902) b!2321848))

(declare-fun m!2751129 () Bool)

(assert (=> d!686862 m!2751129))

(declare-fun m!2751131 () Bool)

(assert (=> d!686862 m!2751131))

(declare-fun m!2751133 () Bool)

(assert (=> b!2321847 m!2751133))

(declare-fun m!2751135 () Bool)

(assert (=> b!2321847 m!2751135))

(assert (=> b!2321847 m!2751133))

(assert (=> b!2321847 m!2751135))

(declare-fun m!2751137 () Bool)

(assert (=> b!2321847 m!2751137))

(assert (=> b!2321753 d!686862))

(declare-fun d!686864 () Bool)

(assert (=> d!686864 (= (height!1329 (left!21000 acc!252)) (ite ((_ is Empty!9069) (left!21000 acc!252)) 0 (ite ((_ is Leaf!13313) (left!21000 acc!252)) 1 (cheight!9280 (left!21000 acc!252)))))))

(assert (=> b!2321745 d!686864))

(declare-fun d!686868 () Bool)

(assert (=> d!686868 (= (height!1329 (right!21330 acc!252)) (ite ((_ is Empty!9069) (right!21330 acc!252)) 0 (ite ((_ is Leaf!13313) (right!21330 acc!252)) 1 (cheight!9280 (right!21330 acc!252)))))))

(assert (=> b!2321745 d!686868))

(declare-fun d!686870 () Bool)

(declare-fun res!991911 () Bool)

(declare-fun e!1488068 () Bool)

(assert (=> d!686870 (=> (not res!991911) (not e!1488068))))

(assert (=> d!686870 (= res!991911 (<= (size!21925 (list!11006 (xs!12035 (Leaf!13313 (slice!693 arr!18 0 512) 512)))) 512))))

(assert (=> d!686870 (= (inv!37626 (Leaf!13313 (slice!693 arr!18 0 512) 512)) e!1488068)))

(declare-fun b!2321857 () Bool)

(declare-fun res!991912 () Bool)

(assert (=> b!2321857 (=> (not res!991912) (not e!1488068))))

(assert (=> b!2321857 (= res!991912 (= (csize!18369 (Leaf!13313 (slice!693 arr!18 0 512) 512)) (size!21925 (list!11006 (xs!12035 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))))

(declare-fun b!2321858 () Bool)

(assert (=> b!2321858 (= e!1488068 (and (> (csize!18369 (Leaf!13313 (slice!693 arr!18 0 512) 512)) 0) (<= (csize!18369 (Leaf!13313 (slice!693 arr!18 0 512) 512)) 512)))))

(assert (= (and d!686870 res!991911) b!2321857))

(assert (= (and b!2321857 res!991912) b!2321858))

(declare-fun m!2751155 () Bool)

(assert (=> d!686870 m!2751155))

(assert (=> d!686870 m!2751155))

(declare-fun m!2751157 () Bool)

(assert (=> d!686870 m!2751157))

(assert (=> b!2321857 m!2751155))

(assert (=> b!2321857 m!2751155))

(assert (=> b!2321857 m!2751157))

(assert (=> b!2321755 d!686870))

(declare-fun d!686874 () Bool)

(declare-fun res!991913 () Bool)

(declare-fun e!1488069 () Bool)

(assert (=> d!686874 (=> (not res!991913) (not e!1488069))))

(assert (=> d!686874 (= res!991913 (<= (size!21925 (list!11006 (xs!12035 (left!21000 acc!252)))) 512))))

(assert (=> d!686874 (= (inv!37626 (left!21000 acc!252)) e!1488069)))

(declare-fun b!2321859 () Bool)

(declare-fun res!991914 () Bool)

(assert (=> b!2321859 (=> (not res!991914) (not e!1488069))))

(assert (=> b!2321859 (= res!991914 (= (csize!18369 (left!21000 acc!252)) (size!21925 (list!11006 (xs!12035 (left!21000 acc!252))))))))

(declare-fun b!2321860 () Bool)

(assert (=> b!2321860 (= e!1488069 (and (> (csize!18369 (left!21000 acc!252)) 0) (<= (csize!18369 (left!21000 acc!252)) 512)))))

(assert (= (and d!686874 res!991913) b!2321859))

(assert (= (and b!2321859 res!991914) b!2321860))

(declare-fun m!2751159 () Bool)

(assert (=> d!686874 m!2751159))

(assert (=> d!686874 m!2751159))

(declare-fun m!2751161 () Bool)

(assert (=> d!686874 m!2751161))

(assert (=> b!2321859 m!2751159))

(assert (=> b!2321859 m!2751159))

(assert (=> b!2321859 m!2751161))

(assert (=> b!2321704 d!686874))

(assert (=> b!2321744 d!686864))

(assert (=> b!2321744 d!686868))

(declare-fun d!686876 () Bool)

(declare-fun lt!860479 () Bool)

(declare-fun isEmpty!15796 (List!27762) Bool)

(declare-fun list!11009 (Conc!9069) List!27762)

(assert (=> d!686876 (= lt!860479 (isEmpty!15796 (list!11009 (left!21000 acc!252))))))

(assert (=> d!686876 (= lt!860479 (= (size!21927 (left!21000 acc!252)) 0))))

(assert (=> d!686876 (= (isEmpty!15793 (left!21000 acc!252)) lt!860479)))

(declare-fun bs!459066 () Bool)

(assert (= bs!459066 d!686876))

(declare-fun m!2751163 () Bool)

(assert (=> bs!459066 m!2751163))

(assert (=> bs!459066 m!2751163))

(declare-fun m!2751165 () Bool)

(assert (=> bs!459066 m!2751165))

(declare-fun m!2751167 () Bool)

(assert (=> bs!459066 m!2751167))

(assert (=> b!2321741 d!686876))

(declare-fun d!686878 () Bool)

(declare-fun res!991921 () Bool)

(declare-fun e!1488072 () Bool)

(assert (=> d!686878 (=> (not res!991921) (not e!1488072))))

(assert (=> d!686878 (= res!991921 (= (csize!18368 (left!21000 acc!252)) (+ (size!21927 (left!21000 (left!21000 acc!252))) (size!21927 (right!21330 (left!21000 acc!252))))))))

(assert (=> d!686878 (= (inv!37624 (left!21000 acc!252)) e!1488072)))

(declare-fun b!2321867 () Bool)

(declare-fun res!991922 () Bool)

(assert (=> b!2321867 (=> (not res!991922) (not e!1488072))))

(assert (=> b!2321867 (= res!991922 (and (not (= (left!21000 (left!21000 acc!252)) Empty!9069)) (not (= (right!21330 (left!21000 acc!252)) Empty!9069))))))

(declare-fun b!2321868 () Bool)

(declare-fun res!991923 () Bool)

(assert (=> b!2321868 (=> (not res!991923) (not e!1488072))))

(assert (=> b!2321868 (= res!991923 (= (cheight!9280 (left!21000 acc!252)) (+ (max!0 (height!1329 (left!21000 (left!21000 acc!252))) (height!1329 (right!21330 (left!21000 acc!252)))) 1)))))

(declare-fun b!2321869 () Bool)

(assert (=> b!2321869 (= e!1488072 (<= 0 (cheight!9280 (left!21000 acc!252))))))

(assert (= (and d!686878 res!991921) b!2321867))

(assert (= (and b!2321867 res!991922) b!2321868))

(assert (= (and b!2321868 res!991923) b!2321869))

(declare-fun m!2751169 () Bool)

(assert (=> d!686878 m!2751169))

(declare-fun m!2751171 () Bool)

(assert (=> d!686878 m!2751171))

(declare-fun m!2751173 () Bool)

(assert (=> b!2321868 m!2751173))

(declare-fun m!2751175 () Bool)

(assert (=> b!2321868 m!2751175))

(assert (=> b!2321868 m!2751173))

(assert (=> b!2321868 m!2751175))

(declare-fun m!2751177 () Bool)

(assert (=> b!2321868 m!2751177))

(assert (=> b!2321702 d!686878))

(declare-fun d!686880 () Bool)

(declare-fun lt!860480 () Bool)

(assert (=> d!686880 (= lt!860480 (isEmpty!15796 (list!11009 (right!21330 acc!252))))))

(assert (=> d!686880 (= lt!860480 (= (size!21927 (right!21330 acc!252)) 0))))

(assert (=> d!686880 (= (isEmpty!15793 (right!21330 acc!252)) lt!860480)))

(declare-fun bs!459067 () Bool)

(assert (= bs!459067 d!686880))

(declare-fun m!2751179 () Bool)

(assert (=> bs!459067 m!2751179))

(assert (=> bs!459067 m!2751179))

(declare-fun m!2751181 () Bool)

(assert (=> bs!459067 m!2751181))

(declare-fun m!2751183 () Bool)

(assert (=> bs!459067 m!2751183))

(assert (=> b!2321742 d!686880))

(declare-fun d!686882 () Bool)

(declare-fun res!991924 () Bool)

(declare-fun e!1488073 () Bool)

(assert (=> d!686882 (=> (not res!991924) (not e!1488073))))

(assert (=> d!686882 (= res!991924 (<= (size!21925 (list!11006 (xs!12035 acc!252))) 512))))

(assert (=> d!686882 (= (inv!37626 acc!252) e!1488073)))

(declare-fun b!2321870 () Bool)

(declare-fun res!991925 () Bool)

(assert (=> b!2321870 (=> (not res!991925) (not e!1488073))))

(assert (=> b!2321870 (= res!991925 (= (csize!18369 acc!252) (size!21925 (list!11006 (xs!12035 acc!252)))))))

(declare-fun b!2321871 () Bool)

(assert (=> b!2321871 (= e!1488073 (and (> (csize!18369 acc!252) 0) (<= (csize!18369 acc!252) 512)))))

(assert (= (and d!686882 res!991924) b!2321870))

(assert (= (and b!2321870 res!991925) b!2321871))

(declare-fun m!2751185 () Bool)

(assert (=> d!686882 m!2751185))

(assert (=> d!686882 m!2751185))

(declare-fun m!2751187 () Bool)

(assert (=> d!686882 m!2751187))

(assert (=> b!2321870 m!2751185))

(assert (=> b!2321870 m!2751185))

(assert (=> b!2321870 m!2751187))

(assert (=> b!2321752 d!686882))

(declare-fun d!686884 () Bool)

(declare-fun c!368295 () Bool)

(assert (=> d!686884 (= c!368295 ((_ is Node!9069) (left!21000 (left!21000 acc!252))))))

(declare-fun e!1488075 () Bool)

(assert (=> d!686884 (= (inv!37621 (left!21000 (left!21000 acc!252))) e!1488075)))

(declare-fun b!2321875 () Bool)

(assert (=> b!2321875 (= e!1488075 (inv!37624 (left!21000 (left!21000 acc!252))))))

(declare-fun b!2321876 () Bool)

(declare-fun e!1488076 () Bool)

(assert (=> b!2321876 (= e!1488075 e!1488076)))

(declare-fun res!991929 () Bool)

(assert (=> b!2321876 (= res!991929 (not ((_ is Leaf!13313) (left!21000 (left!21000 acc!252)))))))

(assert (=> b!2321876 (=> res!991929 e!1488076)))

(declare-fun b!2321877 () Bool)

(assert (=> b!2321877 (= e!1488076 (inv!37626 (left!21000 (left!21000 acc!252))))))

(assert (= (and d!686884 c!368295) b!2321875))

(assert (= (and d!686884 (not c!368295)) b!2321876))

(assert (= (and b!2321876 (not res!991929)) b!2321877))

(declare-fun m!2751195 () Bool)

(assert (=> b!2321875 m!2751195))

(declare-fun m!2751197 () Bool)

(assert (=> b!2321877 m!2751197))

(assert (=> b!2321784 d!686884))

(declare-fun d!686888 () Bool)

(declare-fun c!368296 () Bool)

(assert (=> d!686888 (= c!368296 ((_ is Node!9069) (right!21330 (left!21000 acc!252))))))

(declare-fun e!1488077 () Bool)

(assert (=> d!686888 (= (inv!37621 (right!21330 (left!21000 acc!252))) e!1488077)))

(declare-fun b!2321878 () Bool)

(assert (=> b!2321878 (= e!1488077 (inv!37624 (right!21330 (left!21000 acc!252))))))

(declare-fun b!2321879 () Bool)

(declare-fun e!1488078 () Bool)

(assert (=> b!2321879 (= e!1488077 e!1488078)))

(declare-fun res!991930 () Bool)

(assert (=> b!2321879 (= res!991930 (not ((_ is Leaf!13313) (right!21330 (left!21000 acc!252)))))))

(assert (=> b!2321879 (=> res!991930 e!1488078)))

(declare-fun b!2321880 () Bool)

(assert (=> b!2321880 (= e!1488078 (inv!37626 (right!21330 (left!21000 acc!252))))))

(assert (= (and d!686888 c!368296) b!2321878))

(assert (= (and d!686888 (not c!368296)) b!2321879))

(assert (= (and b!2321879 (not res!991930)) b!2321880))

(declare-fun m!2751199 () Bool)

(assert (=> b!2321878 m!2751199))

(declare-fun m!2751201 () Bool)

(assert (=> b!2321880 m!2751201))

(assert (=> b!2321784 d!686888))

(assert (=> b!2321761 d!686796))

(declare-fun b!2321881 () Bool)

(declare-fun res!991931 () Bool)

(declare-fun e!1488080 () Bool)

(assert (=> b!2321881 (=> (not res!991931) (not e!1488080))))

(assert (=> b!2321881 (= res!991931 (not (isEmpty!15793 (left!21000 (left!21000 acc!252)))))))

(declare-fun b!2321882 () Bool)

(assert (=> b!2321882 (= e!1488080 (not (isEmpty!15793 (right!21330 (left!21000 acc!252)))))))

(declare-fun b!2321883 () Bool)

(declare-fun res!991933 () Bool)

(assert (=> b!2321883 (=> (not res!991933) (not e!1488080))))

(assert (=> b!2321883 (= res!991933 (isBalanced!2763 (right!21330 (left!21000 acc!252))))))

(declare-fun b!2321884 () Bool)

(declare-fun e!1488079 () Bool)

(assert (=> b!2321884 (= e!1488079 e!1488080)))

(declare-fun res!991936 () Bool)

(assert (=> b!2321884 (=> (not res!991936) (not e!1488080))))

(assert (=> b!2321884 (= res!991936 (<= (- 1) (- (height!1329 (left!21000 (left!21000 acc!252))) (height!1329 (right!21330 (left!21000 acc!252))))))))

(declare-fun b!2321885 () Bool)

(declare-fun res!991934 () Bool)

(assert (=> b!2321885 (=> (not res!991934) (not e!1488080))))

(assert (=> b!2321885 (= res!991934 (<= (- (height!1329 (left!21000 (left!21000 acc!252))) (height!1329 (right!21330 (left!21000 acc!252)))) 1))))

(declare-fun d!686890 () Bool)

(declare-fun res!991932 () Bool)

(assert (=> d!686890 (=> res!991932 e!1488079)))

(assert (=> d!686890 (= res!991932 (not ((_ is Node!9069) (left!21000 acc!252))))))

(assert (=> d!686890 (= (isBalanced!2763 (left!21000 acc!252)) e!1488079)))

(declare-fun b!2321886 () Bool)

(declare-fun res!991935 () Bool)

(assert (=> b!2321886 (=> (not res!991935) (not e!1488080))))

(assert (=> b!2321886 (= res!991935 (isBalanced!2763 (left!21000 (left!21000 acc!252))))))

(assert (= (and d!686890 (not res!991932)) b!2321884))

(assert (= (and b!2321884 res!991936) b!2321885))

(assert (= (and b!2321885 res!991934) b!2321886))

(assert (= (and b!2321886 res!991935) b!2321883))

(assert (= (and b!2321883 res!991933) b!2321881))

(assert (= (and b!2321881 res!991931) b!2321882))

(declare-fun m!2751203 () Bool)

(assert (=> b!2321886 m!2751203))

(declare-fun m!2751205 () Bool)

(assert (=> b!2321883 m!2751205))

(declare-fun m!2751207 () Bool)

(assert (=> b!2321881 m!2751207))

(assert (=> b!2321884 m!2751173))

(assert (=> b!2321884 m!2751175))

(declare-fun m!2751209 () Bool)

(assert (=> b!2321882 m!2751209))

(assert (=> b!2321885 m!2751173))

(assert (=> b!2321885 m!2751175))

(assert (=> b!2321746 d!686890))

(declare-fun d!686892 () Bool)

(declare-fun res!991937 () Bool)

(declare-fun e!1488081 () Bool)

(assert (=> d!686892 (=> (not res!991937) (not e!1488081))))

(assert (=> d!686892 (= res!991937 (= (csize!18368 acc!252) (+ (size!21927 (left!21000 acc!252)) (size!21927 (right!21330 acc!252)))))))

(assert (=> d!686892 (= (inv!37624 acc!252) e!1488081)))

(declare-fun b!2321887 () Bool)

(declare-fun res!991938 () Bool)

(assert (=> b!2321887 (=> (not res!991938) (not e!1488081))))

(assert (=> b!2321887 (= res!991938 (and (not (= (left!21000 acc!252) Empty!9069)) (not (= (right!21330 acc!252) Empty!9069))))))

(declare-fun b!2321888 () Bool)

(declare-fun res!991939 () Bool)

(assert (=> b!2321888 (=> (not res!991939) (not e!1488081))))

(assert (=> b!2321888 (= res!991939 (= (cheight!9280 acc!252) (+ (max!0 (height!1329 (left!21000 acc!252)) (height!1329 (right!21330 acc!252))) 1)))))

(declare-fun b!2321889 () Bool)

(assert (=> b!2321889 (= e!1488081 (<= 0 (cheight!9280 acc!252)))))

(assert (= (and d!686892 res!991937) b!2321887))

(assert (= (and b!2321887 res!991938) b!2321888))

(assert (= (and b!2321888 res!991939) b!2321889))

(assert (=> d!686892 m!2751167))

(assert (=> d!686892 m!2751183))

(assert (=> b!2321888 m!2751029))

(assert (=> b!2321888 m!2751031))

(assert (=> b!2321888 m!2751029))

(assert (=> b!2321888 m!2751031))

(declare-fun m!2751211 () Bool)

(assert (=> b!2321888 m!2751211))

(assert (=> b!2321750 d!686892))

(assert (=> b!2321683 d!686804))

(assert (=> b!2321683 d!686810))

(declare-fun b!2321890 () Bool)

(declare-fun e!1488082 () Bool)

(declare-fun tp!736623 () Bool)

(assert (=> b!2321890 (= e!1488082 (and tp_is_empty!10823 tp!736623))))

(assert (=> b!2321767 (= tp!736591 e!1488082)))

(assert (= (and b!2321767 ((_ is Cons!27664) (t!207432 (innerList!9129 arr!18)))) b!2321890))

(declare-fun e!1488083 () Bool)

(declare-fun tp!736626 () Bool)

(declare-fun tp!736624 () Bool)

(declare-fun b!2321891 () Bool)

(assert (=> b!2321891 (= e!1488083 (and (inv!37621 (left!21000 (left!21000 (left!21000 acc!252)))) tp!736626 (inv!37621 (right!21330 (left!21000 (left!21000 acc!252)))) tp!736624))))

(declare-fun b!2321893 () Bool)

(declare-fun e!1488084 () Bool)

(declare-fun tp!736625 () Bool)

(assert (=> b!2321893 (= e!1488084 tp!736625)))

(declare-fun b!2321892 () Bool)

(assert (=> b!2321892 (= e!1488083 (and (inv!37622 (xs!12035 (left!21000 (left!21000 acc!252)))) e!1488084))))

(assert (=> b!2321784 (= tp!736606 (and (inv!37621 (left!21000 (left!21000 acc!252))) e!1488083))))

(assert (= (and b!2321784 ((_ is Node!9069) (left!21000 (left!21000 acc!252)))) b!2321891))

(assert (= b!2321892 b!2321893))

(assert (= (and b!2321784 ((_ is Leaf!13313) (left!21000 (left!21000 acc!252)))) b!2321892))

(declare-fun m!2751213 () Bool)

(assert (=> b!2321891 m!2751213))

(declare-fun m!2751215 () Bool)

(assert (=> b!2321891 m!2751215))

(declare-fun m!2751217 () Bool)

(assert (=> b!2321892 m!2751217))

(assert (=> b!2321784 m!2751059))

(declare-fun tp!736627 () Bool)

(declare-fun tp!736629 () Bool)

(declare-fun e!1488085 () Bool)

(declare-fun b!2321894 () Bool)

(assert (=> b!2321894 (= e!1488085 (and (inv!37621 (left!21000 (right!21330 (left!21000 acc!252)))) tp!736629 (inv!37621 (right!21330 (right!21330 (left!21000 acc!252)))) tp!736627))))

(declare-fun b!2321896 () Bool)

(declare-fun e!1488086 () Bool)

(declare-fun tp!736628 () Bool)

(assert (=> b!2321896 (= e!1488086 tp!736628)))

(declare-fun b!2321895 () Bool)

(assert (=> b!2321895 (= e!1488085 (and (inv!37622 (xs!12035 (right!21330 (left!21000 acc!252)))) e!1488086))))

(assert (=> b!2321784 (= tp!736604 (and (inv!37621 (right!21330 (left!21000 acc!252))) e!1488085))))

(assert (= (and b!2321784 ((_ is Node!9069) (right!21330 (left!21000 acc!252)))) b!2321894))

(assert (= b!2321895 b!2321896))

(assert (= (and b!2321784 ((_ is Leaf!13313) (right!21330 (left!21000 acc!252)))) b!2321895))

(declare-fun m!2751223 () Bool)

(assert (=> b!2321894 m!2751223))

(declare-fun m!2751225 () Bool)

(assert (=> b!2321894 m!2751225))

(declare-fun m!2751227 () Bool)

(assert (=> b!2321895 m!2751227))

(assert (=> b!2321784 m!2751061))

(declare-fun b!2321897 () Bool)

(declare-fun e!1488087 () Bool)

(declare-fun tp!736630 () Bool)

(assert (=> b!2321897 (= e!1488087 (and tp_is_empty!10823 tp!736630))))

(assert (=> b!2321766 (= tp!736590 e!1488087)))

(assert (= (and b!2321766 ((_ is Cons!27664) (t!207432 (innerList!9129 (xs!12035 acc!252))))) b!2321897))

(declare-fun e!1488088 () Bool)

(declare-fun tp!736631 () Bool)

(declare-fun tp!736633 () Bool)

(declare-fun b!2321898 () Bool)

(assert (=> b!2321898 (= e!1488088 (and (inv!37621 (left!21000 (left!21000 (right!21330 acc!252)))) tp!736633 (inv!37621 (right!21330 (left!21000 (right!21330 acc!252)))) tp!736631))))

(declare-fun b!2321900 () Bool)

(declare-fun e!1488089 () Bool)

(declare-fun tp!736632 () Bool)

(assert (=> b!2321900 (= e!1488089 tp!736632)))

(declare-fun b!2321899 () Bool)

(assert (=> b!2321899 (= e!1488088 (and (inv!37622 (xs!12035 (left!21000 (right!21330 acc!252)))) e!1488089))))

(assert (=> b!2321790 (= tp!736612 (and (inv!37621 (left!21000 (right!21330 acc!252))) e!1488088))))

(assert (= (and b!2321790 ((_ is Node!9069) (left!21000 (right!21330 acc!252)))) b!2321898))

(assert (= b!2321899 b!2321900))

(assert (= (and b!2321790 ((_ is Leaf!13313) (left!21000 (right!21330 acc!252)))) b!2321899))

(declare-fun m!2751229 () Bool)

(assert (=> b!2321898 m!2751229))

(declare-fun m!2751231 () Bool)

(assert (=> b!2321898 m!2751231))

(declare-fun m!2751233 () Bool)

(assert (=> b!2321899 m!2751233))

(assert (=> b!2321790 m!2751071))

(declare-fun tp!736636 () Bool)

(declare-fun tp!736634 () Bool)

(declare-fun b!2321901 () Bool)

(declare-fun e!1488090 () Bool)

(assert (=> b!2321901 (= e!1488090 (and (inv!37621 (left!21000 (right!21330 (right!21330 acc!252)))) tp!736636 (inv!37621 (right!21330 (right!21330 (right!21330 acc!252)))) tp!736634))))

(declare-fun b!2321903 () Bool)

(declare-fun e!1488091 () Bool)

(declare-fun tp!736635 () Bool)

(assert (=> b!2321903 (= e!1488091 tp!736635)))

(declare-fun b!2321902 () Bool)

(assert (=> b!2321902 (= e!1488090 (and (inv!37622 (xs!12035 (right!21330 (right!21330 acc!252)))) e!1488091))))

(assert (=> b!2321790 (= tp!736610 (and (inv!37621 (right!21330 (right!21330 acc!252))) e!1488090))))

(assert (= (and b!2321790 ((_ is Node!9069) (right!21330 (right!21330 acc!252)))) b!2321901))

(assert (= b!2321902 b!2321903))

(assert (= (and b!2321790 ((_ is Leaf!13313) (right!21330 (right!21330 acc!252)))) b!2321902))

(declare-fun m!2751235 () Bool)

(assert (=> b!2321901 m!2751235))

(declare-fun m!2751237 () Bool)

(assert (=> b!2321901 m!2751237))

(declare-fun m!2751239 () Bool)

(assert (=> b!2321902 m!2751239))

(assert (=> b!2321790 m!2751073))

(declare-fun b!2321904 () Bool)

(declare-fun e!1488092 () Bool)

(declare-fun tp!736637 () Bool)

(assert (=> b!2321904 (= e!1488092 (and tp_is_empty!10823 tp!736637))))

(assert (=> b!2321792 (= tp!736611 e!1488092)))

(assert (= (and b!2321792 ((_ is Cons!27664) (innerList!9129 (xs!12035 (right!21330 acc!252))))) b!2321904))

(declare-fun b!2321905 () Bool)

(declare-fun e!1488093 () Bool)

(declare-fun tp!736638 () Bool)

(assert (=> b!2321905 (= e!1488093 (and tp_is_empty!10823 tp!736638))))

(assert (=> b!2321786 (= tp!736605 e!1488093)))

(assert (= (and b!2321786 ((_ is Cons!27664) (innerList!9129 (xs!12035 (left!21000 acc!252))))) b!2321905))

(check-sat (not b!2321903) (not b!2321826) (not b!2321901) (not b!2321881) (not b!2321857) (not b!2321878) (not b!2321898) (not d!686882) (not b!2321885) (not b!2321836) (not b!2321829) (not b!2321904) (not b!2321905) (not b!2321880) (not d!686838) (not b!2321893) (not b!2321817) (not d!686856) (not b!2321847) (not d!686836) (not b!2321894) (not d!686844) (not b!2321883) (not d!686870) (not b!2321897) (not b!2321875) (not b!2321877) (not b!2321790) (not b!2321820) (not b!2321888) (not b!2321807) (not b!2321834) (not d!686878) (not b!2321859) (not b!2321840) (not b!2321890) (not b!2321837) (not b!2321902) (not d!686892) (not b!2321838) (not d!686852) (not d!686874) (not b!2321823) (not b!2321784) (not b!2321899) (not b!2321868) (not b!2321891) (not b!2321824) (not d!686854) (not b!2321884) (not b!2321892) (not b!2321821) (not b!2321886) (not b!2321900) (not b!2321839) (not d!686850) (not b!2321870) tp_is_empty!10823 (not b!2321841) (not d!686880) (not b!2321809) (not b!2321896) (not d!686876) (not b!2321882) (not b!2321895) (not d!686862))
(check-sat)
(get-model)

(declare-fun d!686940 () Bool)

(declare-fun lt!860490 () Int)

(assert (=> d!686940 (>= lt!860490 0)))

(declare-fun e!1488130 () Int)

(assert (=> d!686940 (= lt!860490 e!1488130)))

(declare-fun c!368306 () Bool)

(assert (=> d!686940 (= c!368306 ((_ is Nil!27664) (list!11006 (xs!12035 (left!21000 acc!252)))))))

(assert (=> d!686940 (= (size!21925 (list!11006 (xs!12035 (left!21000 acc!252)))) lt!860490)))

(declare-fun b!2321968 () Bool)

(assert (=> b!2321968 (= e!1488130 0)))

(declare-fun b!2321969 () Bool)

(assert (=> b!2321969 (= e!1488130 (+ 1 (size!21925 (t!207432 (list!11006 (xs!12035 (left!21000 acc!252)))))))))

(assert (= (and d!686940 c!368306) b!2321968))

(assert (= (and d!686940 (not c!368306)) b!2321969))

(declare-fun m!2751347 () Bool)

(assert (=> b!2321969 m!2751347))

(assert (=> d!686874 d!686940))

(declare-fun d!686942 () Bool)

(assert (=> d!686942 (= (list!11006 (xs!12035 (left!21000 acc!252))) (innerList!9129 (xs!12035 (left!21000 acc!252))))))

(assert (=> d!686874 d!686942))

(assert (=> d!686844 d!686840))

(assert (=> d!686844 d!686842))

(declare-fun d!686944 () Bool)

(assert (=> d!686944 (= (inv!37622 (xs!12035 (left!21000 (left!21000 acc!252)))) (<= (size!21925 (innerList!9129 (xs!12035 (left!21000 (left!21000 acc!252))))) 2147483647))))

(declare-fun bs!459074 () Bool)

(assert (= bs!459074 d!686944))

(declare-fun m!2751349 () Bool)

(assert (=> bs!459074 m!2751349))

(assert (=> b!2321892 d!686944))

(declare-fun d!686946 () Bool)

(assert (=> d!686946 (= (inv!37622 (xs!12035 (right!21330 (left!21000 acc!252)))) (<= (size!21925 (innerList!9129 (xs!12035 (right!21330 (left!21000 acc!252))))) 2147483647))))

(declare-fun bs!459075 () Bool)

(assert (= bs!459075 d!686946))

(declare-fun m!2751351 () Bool)

(assert (=> bs!459075 m!2751351))

(assert (=> b!2321895 d!686946))

(declare-fun d!686948 () Bool)

(declare-fun c!368307 () Bool)

(assert (=> d!686948 (= c!368307 ((_ is Node!9069) (left!21000 (left!21000 (right!21330 acc!252)))))))

(declare-fun e!1488131 () Bool)

(assert (=> d!686948 (= (inv!37621 (left!21000 (left!21000 (right!21330 acc!252)))) e!1488131)))

(declare-fun b!2321970 () Bool)

(assert (=> b!2321970 (= e!1488131 (inv!37624 (left!21000 (left!21000 (right!21330 acc!252)))))))

(declare-fun b!2321971 () Bool)

(declare-fun e!1488132 () Bool)

(assert (=> b!2321971 (= e!1488131 e!1488132)))

(declare-fun res!991965 () Bool)

(assert (=> b!2321971 (= res!991965 (not ((_ is Leaf!13313) (left!21000 (left!21000 (right!21330 acc!252))))))))

(assert (=> b!2321971 (=> res!991965 e!1488132)))

(declare-fun b!2321972 () Bool)

(assert (=> b!2321972 (= e!1488132 (inv!37626 (left!21000 (left!21000 (right!21330 acc!252)))))))

(assert (= (and d!686948 c!368307) b!2321970))

(assert (= (and d!686948 (not c!368307)) b!2321971))

(assert (= (and b!2321971 (not res!991965)) b!2321972))

(declare-fun m!2751353 () Bool)

(assert (=> b!2321970 m!2751353))

(declare-fun m!2751355 () Bool)

(assert (=> b!2321972 m!2751355))

(assert (=> b!2321898 d!686948))

(declare-fun d!686950 () Bool)

(declare-fun c!368308 () Bool)

(assert (=> d!686950 (= c!368308 ((_ is Node!9069) (right!21330 (left!21000 (right!21330 acc!252)))))))

(declare-fun e!1488133 () Bool)

(assert (=> d!686950 (= (inv!37621 (right!21330 (left!21000 (right!21330 acc!252)))) e!1488133)))

(declare-fun b!2321973 () Bool)

(assert (=> b!2321973 (= e!1488133 (inv!37624 (right!21330 (left!21000 (right!21330 acc!252)))))))

(declare-fun b!2321974 () Bool)

(declare-fun e!1488134 () Bool)

(assert (=> b!2321974 (= e!1488133 e!1488134)))

(declare-fun res!991966 () Bool)

(assert (=> b!2321974 (= res!991966 (not ((_ is Leaf!13313) (right!21330 (left!21000 (right!21330 acc!252))))))))

(assert (=> b!2321974 (=> res!991966 e!1488134)))

(declare-fun b!2321975 () Bool)

(assert (=> b!2321975 (= e!1488134 (inv!37626 (right!21330 (left!21000 (right!21330 acc!252)))))))

(assert (= (and d!686950 c!368308) b!2321973))

(assert (= (and d!686950 (not c!368308)) b!2321974))

(assert (= (and b!2321974 (not res!991966)) b!2321975))

(declare-fun m!2751357 () Bool)

(assert (=> b!2321973 m!2751357))

(declare-fun m!2751359 () Bool)

(assert (=> b!2321975 m!2751359))

(assert (=> b!2321898 d!686950))

(declare-fun d!686952 () Bool)

(declare-fun e!1488146 () Bool)

(assert (=> d!686952 e!1488146))

(declare-fun res!991969 () Bool)

(assert (=> d!686952 (=> (not res!991969) (not e!1488146))))

(declare-fun lt!860493 () List!27762)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3741 (List!27762) (InoxSet T!43880))

(assert (=> d!686952 (= res!991969 (= ((_ map implies) (content!3741 lt!860493) (content!3741 (drop!1505 (list!11006 arr!18) 0))) ((as const (InoxSet T!43880)) true)))))

(declare-fun e!1488145 () List!27762)

(assert (=> d!686952 (= lt!860493 e!1488145)))

(declare-fun c!368315 () Bool)

(assert (=> d!686952 (= c!368315 (or ((_ is Nil!27664) (drop!1505 (list!11006 arr!18) 0)) (<= (- 512 0) 0)))))

(assert (=> d!686952 (= (take!482 (drop!1505 (list!11006 arr!18) 0) (- 512 0)) lt!860493)))

(declare-fun b!2321990 () Bool)

(declare-fun e!1488144 () Int)

(assert (=> b!2321990 (= e!1488144 0)))

(declare-fun b!2321991 () Bool)

(declare-fun e!1488143 () Int)

(assert (=> b!2321991 (= e!1488143 (size!21925 (drop!1505 (list!11006 arr!18) 0)))))

(declare-fun b!2321992 () Bool)

(assert (=> b!2321992 (= e!1488144 e!1488143)))

(declare-fun c!368317 () Bool)

(assert (=> b!2321992 (= c!368317 (>= (- 512 0) (size!21925 (drop!1505 (list!11006 arr!18) 0))))))

(declare-fun b!2321993 () Bool)

(assert (=> b!2321993 (= e!1488145 Nil!27664)))

(declare-fun b!2321994 () Bool)

(assert (=> b!2321994 (= e!1488146 (= (size!21925 lt!860493) e!1488144))))

(declare-fun c!368316 () Bool)

(assert (=> b!2321994 (= c!368316 (<= (- 512 0) 0))))

(declare-fun b!2321995 () Bool)

(assert (=> b!2321995 (= e!1488145 (Cons!27664 (h!33065 (drop!1505 (list!11006 arr!18) 0)) (take!482 (t!207432 (drop!1505 (list!11006 arr!18) 0)) (- (- 512 0) 1))))))

(declare-fun b!2321996 () Bool)

(assert (=> b!2321996 (= e!1488143 (- 512 0))))

(assert (= (and d!686952 c!368315) b!2321993))

(assert (= (and d!686952 (not c!368315)) b!2321995))

(assert (= (and d!686952 res!991969) b!2321994))

(assert (= (and b!2321994 c!368316) b!2321990))

(assert (= (and b!2321994 (not c!368316)) b!2321992))

(assert (= (and b!2321992 c!368317) b!2321991))

(assert (= (and b!2321992 (not c!368317)) b!2321996))

(assert (=> b!2321991 m!2751111))

(declare-fun m!2751361 () Bool)

(assert (=> b!2321991 m!2751361))

(declare-fun m!2751363 () Bool)

(assert (=> d!686952 m!2751363))

(assert (=> d!686952 m!2751111))

(declare-fun m!2751365 () Bool)

(assert (=> d!686952 m!2751365))

(declare-fun m!2751367 () Bool)

(assert (=> b!2321994 m!2751367))

(declare-fun m!2751369 () Bool)

(assert (=> b!2321995 m!2751369))

(assert (=> b!2321992 m!2751111))

(assert (=> b!2321992 m!2751361))

(assert (=> d!686852 d!686952))

(declare-fun b!2322015 () Bool)

(declare-fun e!1488160 () Int)

(declare-fun e!1488159 () Int)

(assert (=> b!2322015 (= e!1488160 e!1488159)))

(declare-fun c!368329 () Bool)

(declare-fun call!138403 () Int)

(assert (=> b!2322015 (= c!368329 (>= 0 call!138403))))

(declare-fun b!2322016 () Bool)

(declare-fun e!1488158 () List!27762)

(assert (=> b!2322016 (= e!1488158 (list!11006 arr!18))))

(declare-fun d!686954 () Bool)

(declare-fun e!1488161 () Bool)

(assert (=> d!686954 e!1488161))

(declare-fun res!991972 () Bool)

(assert (=> d!686954 (=> (not res!991972) (not e!1488161))))

(declare-fun lt!860496 () List!27762)

(assert (=> d!686954 (= res!991972 (= ((_ map implies) (content!3741 lt!860496) (content!3741 (list!11006 arr!18))) ((as const (InoxSet T!43880)) true)))))

(declare-fun e!1488157 () List!27762)

(assert (=> d!686954 (= lt!860496 e!1488157)))

(declare-fun c!368328 () Bool)

(assert (=> d!686954 (= c!368328 ((_ is Nil!27664) (list!11006 arr!18)))))

(assert (=> d!686954 (= (drop!1505 (list!11006 arr!18) 0) lt!860496)))

(declare-fun bm!138398 () Bool)

(assert (=> bm!138398 (= call!138403 (size!21925 (list!11006 arr!18)))))

(declare-fun b!2322017 () Bool)

(assert (=> b!2322017 (= e!1488157 Nil!27664)))

(declare-fun b!2322018 () Bool)

(assert (=> b!2322018 (= e!1488159 (- call!138403 0))))

(declare-fun b!2322019 () Bool)

(assert (=> b!2322019 (= e!1488157 e!1488158)))

(declare-fun c!368327 () Bool)

(assert (=> b!2322019 (= c!368327 (<= 0 0))))

(declare-fun b!2322020 () Bool)

(assert (=> b!2322020 (= e!1488158 (drop!1505 (t!207432 (list!11006 arr!18)) (- 0 1)))))

(declare-fun b!2322021 () Bool)

(assert (=> b!2322021 (= e!1488159 0)))

(declare-fun b!2322022 () Bool)

(assert (=> b!2322022 (= e!1488160 call!138403)))

(declare-fun b!2322023 () Bool)

(assert (=> b!2322023 (= e!1488161 (= (size!21925 lt!860496) e!1488160))))

(declare-fun c!368326 () Bool)

(assert (=> b!2322023 (= c!368326 (<= 0 0))))

(assert (= (and d!686954 c!368328) b!2322017))

(assert (= (and d!686954 (not c!368328)) b!2322019))

(assert (= (and b!2322019 c!368327) b!2322016))

(assert (= (and b!2322019 (not c!368327)) b!2322020))

(assert (= (and d!686954 res!991972) b!2322023))

(assert (= (and b!2322023 c!368326) b!2322022))

(assert (= (and b!2322023 (not c!368326)) b!2322015))

(assert (= (and b!2322015 c!368329) b!2322021))

(assert (= (and b!2322015 (not c!368329)) b!2322018))

(assert (= (or b!2322022 b!2322015 b!2322018) bm!138398))

(declare-fun m!2751371 () Bool)

(assert (=> d!686954 m!2751371))

(assert (=> d!686954 m!2750975))

(declare-fun m!2751373 () Bool)

(assert (=> d!686954 m!2751373))

(assert (=> bm!138398 m!2750975))

(assert (=> bm!138398 m!2750979))

(declare-fun m!2751375 () Bool)

(assert (=> b!2322020 m!2751375))

(declare-fun m!2751377 () Bool)

(assert (=> b!2322023 m!2751377))

(assert (=> d!686852 d!686954))

(declare-fun d!686956 () Bool)

(assert (=> d!686956 (= (height!1329 (left!21000 (right!21330 acc!252))) (ite ((_ is Empty!9069) (left!21000 (right!21330 acc!252))) 0 (ite ((_ is Leaf!13313) (left!21000 (right!21330 acc!252))) 1 (cheight!9280 (left!21000 (right!21330 acc!252))))))))

(assert (=> b!2321839 d!686956))

(declare-fun d!686958 () Bool)

(assert (=> d!686958 (= (height!1329 (right!21330 (right!21330 acc!252))) (ite ((_ is Empty!9069) (right!21330 (right!21330 acc!252))) 0 (ite ((_ is Leaf!13313) (right!21330 (right!21330 acc!252))) 1 (cheight!9280 (right!21330 (right!21330 acc!252))))))))

(assert (=> b!2321839 d!686958))

(declare-fun d!686960 () Bool)

(declare-fun res!991973 () Bool)

(declare-fun e!1488162 () Bool)

(assert (=> d!686960 (=> (not res!991973) (not e!1488162))))

(assert (=> d!686960 (= res!991973 (= (csize!18368 (right!21330 (right!21330 acc!252))) (+ (size!21927 (left!21000 (right!21330 (right!21330 acc!252)))) (size!21927 (right!21330 (right!21330 (right!21330 acc!252)))))))))

(assert (=> d!686960 (= (inv!37624 (right!21330 (right!21330 acc!252))) e!1488162)))

(declare-fun b!2322024 () Bool)

(declare-fun res!991974 () Bool)

(assert (=> b!2322024 (=> (not res!991974) (not e!1488162))))

(assert (=> b!2322024 (= res!991974 (and (not (= (left!21000 (right!21330 (right!21330 acc!252))) Empty!9069)) (not (= (right!21330 (right!21330 (right!21330 acc!252))) Empty!9069))))))

(declare-fun b!2322025 () Bool)

(declare-fun res!991975 () Bool)

(assert (=> b!2322025 (=> (not res!991975) (not e!1488162))))

(assert (=> b!2322025 (= res!991975 (= (cheight!9280 (right!21330 (right!21330 acc!252))) (+ (max!0 (height!1329 (left!21000 (right!21330 (right!21330 acc!252)))) (height!1329 (right!21330 (right!21330 (right!21330 acc!252))))) 1)))))

(declare-fun b!2322026 () Bool)

(assert (=> b!2322026 (= e!1488162 (<= 0 (cheight!9280 (right!21330 (right!21330 acc!252)))))))

(assert (= (and d!686960 res!991973) b!2322024))

(assert (= (and b!2322024 res!991974) b!2322025))

(assert (= (and b!2322025 res!991975) b!2322026))

(declare-fun m!2751379 () Bool)

(assert (=> d!686960 m!2751379))

(declare-fun m!2751381 () Bool)

(assert (=> d!686960 m!2751381))

(declare-fun m!2751383 () Bool)

(assert (=> b!2322025 m!2751383))

(declare-fun m!2751385 () Bool)

(assert (=> b!2322025 m!2751385))

(assert (=> b!2322025 m!2751383))

(assert (=> b!2322025 m!2751385))

(declare-fun m!2751387 () Bool)

(assert (=> b!2322025 m!2751387))

(assert (=> b!2321824 d!686960))

(declare-fun d!686962 () Bool)

(declare-fun lt!860497 () Bool)

(assert (=> d!686962 (= lt!860497 (isEmpty!15796 (list!11009 (right!21330 (left!21000 acc!252)))))))

(assert (=> d!686962 (= lt!860497 (= (size!21927 (right!21330 (left!21000 acc!252))) 0))))

(assert (=> d!686962 (= (isEmpty!15793 (right!21330 (left!21000 acc!252))) lt!860497)))

(declare-fun bs!459076 () Bool)

(assert (= bs!459076 d!686962))

(declare-fun m!2751389 () Bool)

(assert (=> bs!459076 m!2751389))

(assert (=> bs!459076 m!2751389))

(declare-fun m!2751391 () Bool)

(assert (=> bs!459076 m!2751391))

(assert (=> bs!459076 m!2751171))

(assert (=> b!2321882 d!686962))

(declare-fun d!686964 () Bool)

(declare-fun lt!860498 () Int)

(assert (=> d!686964 (>= lt!860498 0)))

(declare-fun e!1488163 () Int)

(assert (=> d!686964 (= lt!860498 e!1488163)))

(declare-fun c!368330 () Bool)

(assert (=> d!686964 (= c!368330 ((_ is Nil!27664) (t!207432 (innerList!9129 arr!18))))))

(assert (=> d!686964 (= (size!21925 (t!207432 (innerList!9129 arr!18))) lt!860498)))

(declare-fun b!2322027 () Bool)

(assert (=> b!2322027 (= e!1488163 0)))

(declare-fun b!2322028 () Bool)

(assert (=> b!2322028 (= e!1488163 (+ 1 (size!21925 (t!207432 (t!207432 (innerList!9129 arr!18))))))))

(assert (= (and d!686964 c!368330) b!2322027))

(assert (= (and d!686964 (not c!368330)) b!2322028))

(declare-fun m!2751393 () Bool)

(assert (=> b!2322028 m!2751393))

(assert (=> b!2321809 d!686964))

(declare-fun d!686966 () Bool)

(declare-fun lt!860499 () Int)

(assert (=> d!686966 (>= lt!860499 0)))

(declare-fun e!1488164 () Int)

(assert (=> d!686966 (= lt!860499 e!1488164)))

(declare-fun c!368331 () Bool)

(assert (=> d!686966 (= c!368331 ((_ is Nil!27664) (list!11006 (xs!12035 (Leaf!13313 (slice!693 arr!18 0 512) 512)))))))

(assert (=> d!686966 (= (size!21925 (list!11006 (xs!12035 (Leaf!13313 (slice!693 arr!18 0 512) 512)))) lt!860499)))

(declare-fun b!2322029 () Bool)

(assert (=> b!2322029 (= e!1488164 0)))

(declare-fun b!2322030 () Bool)

(assert (=> b!2322030 (= e!1488164 (+ 1 (size!21925 (t!207432 (list!11006 (xs!12035 (Leaf!13313 (slice!693 arr!18 0 512) 512)))))))))

(assert (= (and d!686966 c!368331) b!2322029))

(assert (= (and d!686966 (not c!368331)) b!2322030))

(declare-fun m!2751395 () Bool)

(assert (=> b!2322030 m!2751395))

(assert (=> b!2321857 d!686966))

(declare-fun d!686968 () Bool)

(assert (=> d!686968 (= (list!11006 (xs!12035 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (innerList!9129 (xs!12035 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))

(assert (=> b!2321857 d!686968))

(assert (=> b!2321859 d!686940))

(assert (=> b!2321859 d!686942))

(declare-fun d!686970 () Bool)

(declare-fun lt!860500 () Bool)

(assert (=> d!686970 (= lt!860500 (isEmpty!15796 (list!11009 (right!21330 (right!21330 acc!252)))))))

(assert (=> d!686970 (= lt!860500 (= (size!21927 (right!21330 (right!21330 acc!252))) 0))))

(assert (=> d!686970 (= (isEmpty!15793 (right!21330 (right!21330 acc!252))) lt!860500)))

(declare-fun bs!459077 () Bool)

(assert (= bs!459077 d!686970))

(declare-fun m!2751397 () Bool)

(assert (=> bs!459077 m!2751397))

(assert (=> bs!459077 m!2751397))

(declare-fun m!2751399 () Bool)

(assert (=> bs!459077 m!2751399))

(assert (=> bs!459077 m!2751089))

(assert (=> b!2321837 d!686970))

(declare-fun d!686972 () Bool)

(declare-fun lt!860501 () Int)

(assert (=> d!686972 (>= lt!860501 0)))

(declare-fun e!1488165 () Int)

(assert (=> d!686972 (= lt!860501 e!1488165)))

(declare-fun c!368332 () Bool)

(assert (=> d!686972 (= c!368332 ((_ is Nil!27664) (innerList!9129 (xs!12035 (right!21330 acc!252)))))))

(assert (=> d!686972 (= (size!21925 (innerList!9129 (xs!12035 (right!21330 acc!252)))) lt!860501)))

(declare-fun b!2322031 () Bool)

(assert (=> b!2322031 (= e!1488165 0)))

(declare-fun b!2322032 () Bool)

(assert (=> b!2322032 (= e!1488165 (+ 1 (size!21925 (t!207432 (innerList!9129 (xs!12035 (right!21330 acc!252)))))))))

(assert (= (and d!686972 c!368332) b!2322031))

(assert (= (and d!686972 (not c!368332)) b!2322032))

(declare-fun m!2751401 () Bool)

(assert (=> b!2322032 m!2751401))

(assert (=> d!686838 d!686972))

(declare-fun d!686974 () Bool)

(assert (=> d!686974 (= (isEmpty!15796 (list!11009 (left!21000 acc!252))) ((_ is Nil!27664) (list!11009 (left!21000 acc!252))))))

(assert (=> d!686876 d!686974))

(declare-fun d!686976 () Bool)

(declare-fun c!368337 () Bool)

(assert (=> d!686976 (= c!368337 ((_ is Empty!9069) (left!21000 acc!252)))))

(declare-fun e!1488170 () List!27762)

(assert (=> d!686976 (= (list!11009 (left!21000 acc!252)) e!1488170)))

(declare-fun b!2322044 () Bool)

(declare-fun e!1488171 () List!27762)

(declare-fun ++!6819 (List!27762 List!27762) List!27762)

(assert (=> b!2322044 (= e!1488171 (++!6819 (list!11009 (left!21000 (left!21000 acc!252))) (list!11009 (right!21330 (left!21000 acc!252)))))))

(declare-fun b!2322042 () Bool)

(assert (=> b!2322042 (= e!1488170 e!1488171)))

(declare-fun c!368338 () Bool)

(assert (=> b!2322042 (= c!368338 ((_ is Leaf!13313) (left!21000 acc!252)))))

(declare-fun b!2322041 () Bool)

(assert (=> b!2322041 (= e!1488170 Nil!27664)))

(declare-fun b!2322043 () Bool)

(assert (=> b!2322043 (= e!1488171 (list!11006 (xs!12035 (left!21000 acc!252))))))

(assert (= (and d!686976 c!368337) b!2322041))

(assert (= (and d!686976 (not c!368337)) b!2322042))

(assert (= (and b!2322042 c!368338) b!2322043))

(assert (= (and b!2322042 (not c!368338)) b!2322044))

(declare-fun m!2751403 () Bool)

(assert (=> b!2322044 m!2751403))

(assert (=> b!2322044 m!2751389))

(assert (=> b!2322044 m!2751403))

(assert (=> b!2322044 m!2751389))

(declare-fun m!2751405 () Bool)

(assert (=> b!2322044 m!2751405))

(assert (=> b!2322043 m!2751159))

(assert (=> d!686876 d!686976))

(declare-fun d!686978 () Bool)

(declare-fun lt!860504 () Int)

(assert (=> d!686978 (= lt!860504 (size!21925 (list!11009 (left!21000 acc!252))))))

(assert (=> d!686978 (= lt!860504 (ite ((_ is Empty!9069) (left!21000 acc!252)) 0 (ite ((_ is Leaf!13313) (left!21000 acc!252)) (csize!18369 (left!21000 acc!252)) (csize!18368 (left!21000 acc!252)))))))

(assert (=> d!686978 (= (size!21927 (left!21000 acc!252)) lt!860504)))

(declare-fun bs!459078 () Bool)

(assert (= bs!459078 d!686978))

(assert (=> bs!459078 m!2751163))

(assert (=> bs!459078 m!2751163))

(declare-fun m!2751407 () Bool)

(assert (=> bs!459078 m!2751407))

(assert (=> d!686876 d!686978))

(declare-fun d!686980 () Bool)

(declare-fun lt!860505 () Int)

(assert (=> d!686980 (>= lt!860505 0)))

(declare-fun e!1488172 () Int)

(assert (=> d!686980 (= lt!860505 e!1488172)))

(declare-fun c!368339 () Bool)

(assert (=> d!686980 (= c!368339 ((_ is Nil!27664) (list!11006 (xs!12035 acc!252))))))

(assert (=> d!686980 (= (size!21925 (list!11006 (xs!12035 acc!252))) lt!860505)))

(declare-fun b!2322045 () Bool)

(assert (=> b!2322045 (= e!1488172 0)))

(declare-fun b!2322046 () Bool)

(assert (=> b!2322046 (= e!1488172 (+ 1 (size!21925 (t!207432 (list!11006 (xs!12035 acc!252))))))))

(assert (= (and d!686980 c!368339) b!2322045))

(assert (= (and d!686980 (not c!368339)) b!2322046))

(declare-fun m!2751409 () Bool)

(assert (=> b!2322046 m!2751409))

(assert (=> b!2321870 d!686980))

(declare-fun d!686982 () Bool)

(assert (=> d!686982 (= (list!11006 (xs!12035 acc!252)) (innerList!9129 (xs!12035 acc!252)))))

(assert (=> b!2321870 d!686982))

(declare-fun d!686984 () Bool)

(declare-fun res!991976 () Bool)

(declare-fun e!1488173 () Bool)

(assert (=> d!686984 (=> (not res!991976) (not e!1488173))))

(assert (=> d!686984 (= res!991976 (<= (size!21925 (list!11006 (xs!12035 (right!21330 (left!21000 acc!252))))) 512))))

(assert (=> d!686984 (= (inv!37626 (right!21330 (left!21000 acc!252))) e!1488173)))

(declare-fun b!2322047 () Bool)

(declare-fun res!991977 () Bool)

(assert (=> b!2322047 (=> (not res!991977) (not e!1488173))))

(assert (=> b!2322047 (= res!991977 (= (csize!18369 (right!21330 (left!21000 acc!252))) (size!21925 (list!11006 (xs!12035 (right!21330 (left!21000 acc!252)))))))))

(declare-fun b!2322048 () Bool)

(assert (=> b!2322048 (= e!1488173 (and (> (csize!18369 (right!21330 (left!21000 acc!252))) 0) (<= (csize!18369 (right!21330 (left!21000 acc!252))) 512)))))

(assert (= (and d!686984 res!991976) b!2322047))

(assert (= (and b!2322047 res!991977) b!2322048))

(declare-fun m!2751411 () Bool)

(assert (=> d!686984 m!2751411))

(assert (=> d!686984 m!2751411))

(declare-fun m!2751413 () Bool)

(assert (=> d!686984 m!2751413))

(assert (=> b!2322047 m!2751411))

(assert (=> b!2322047 m!2751411))

(assert (=> b!2322047 m!2751413))

(assert (=> b!2321880 d!686984))

(declare-fun d!686986 () Bool)

(declare-fun res!991978 () Bool)

(declare-fun e!1488174 () Bool)

(assert (=> d!686986 (=> (not res!991978) (not e!1488174))))

(assert (=> d!686986 (= res!991978 (= (csize!18368 (left!21000 (left!21000 acc!252))) (+ (size!21927 (left!21000 (left!21000 (left!21000 acc!252)))) (size!21927 (right!21330 (left!21000 (left!21000 acc!252)))))))))

(assert (=> d!686986 (= (inv!37624 (left!21000 (left!21000 acc!252))) e!1488174)))

(declare-fun b!2322049 () Bool)

(declare-fun res!991979 () Bool)

(assert (=> b!2322049 (=> (not res!991979) (not e!1488174))))

(assert (=> b!2322049 (= res!991979 (and (not (= (left!21000 (left!21000 (left!21000 acc!252))) Empty!9069)) (not (= (right!21330 (left!21000 (left!21000 acc!252))) Empty!9069))))))

(declare-fun b!2322050 () Bool)

(declare-fun res!991980 () Bool)

(assert (=> b!2322050 (=> (not res!991980) (not e!1488174))))

(assert (=> b!2322050 (= res!991980 (= (cheight!9280 (left!21000 (left!21000 acc!252))) (+ (max!0 (height!1329 (left!21000 (left!21000 (left!21000 acc!252)))) (height!1329 (right!21330 (left!21000 (left!21000 acc!252))))) 1)))))

(declare-fun b!2322051 () Bool)

(assert (=> b!2322051 (= e!1488174 (<= 0 (cheight!9280 (left!21000 (left!21000 acc!252)))))))

(assert (= (and d!686986 res!991978) b!2322049))

(assert (= (and b!2322049 res!991979) b!2322050))

(assert (= (and b!2322050 res!991980) b!2322051))

(declare-fun m!2751415 () Bool)

(assert (=> d!686986 m!2751415))

(declare-fun m!2751417 () Bool)

(assert (=> d!686986 m!2751417))

(declare-fun m!2751419 () Bool)

(assert (=> b!2322050 m!2751419))

(declare-fun m!2751421 () Bool)

(assert (=> b!2322050 m!2751421))

(assert (=> b!2322050 m!2751419))

(assert (=> b!2322050 m!2751421))

(declare-fun m!2751423 () Bool)

(assert (=> b!2322050 m!2751423))

(assert (=> b!2321875 d!686986))

(assert (=> d!686882 d!686980))

(assert (=> d!686882 d!686982))

(declare-fun d!686988 () Bool)

(declare-fun res!991981 () Bool)

(declare-fun e!1488175 () Bool)

(assert (=> d!686988 (=> (not res!991981) (not e!1488175))))

(assert (=> d!686988 (= res!991981 (= (csize!18368 (right!21330 (left!21000 acc!252))) (+ (size!21927 (left!21000 (right!21330 (left!21000 acc!252)))) (size!21927 (right!21330 (right!21330 (left!21000 acc!252)))))))))

(assert (=> d!686988 (= (inv!37624 (right!21330 (left!21000 acc!252))) e!1488175)))

(declare-fun b!2322052 () Bool)

(declare-fun res!991982 () Bool)

(assert (=> b!2322052 (=> (not res!991982) (not e!1488175))))

(assert (=> b!2322052 (= res!991982 (and (not (= (left!21000 (right!21330 (left!21000 acc!252))) Empty!9069)) (not (= (right!21330 (right!21330 (left!21000 acc!252))) Empty!9069))))))

(declare-fun b!2322053 () Bool)

(declare-fun res!991983 () Bool)

(assert (=> b!2322053 (=> (not res!991983) (not e!1488175))))

(assert (=> b!2322053 (= res!991983 (= (cheight!9280 (right!21330 (left!21000 acc!252))) (+ (max!0 (height!1329 (left!21000 (right!21330 (left!21000 acc!252)))) (height!1329 (right!21330 (right!21330 (left!21000 acc!252))))) 1)))))

(declare-fun b!2322054 () Bool)

(assert (=> b!2322054 (= e!1488175 (<= 0 (cheight!9280 (right!21330 (left!21000 acc!252)))))))

(assert (= (and d!686988 res!991981) b!2322052))

(assert (= (and b!2322052 res!991982) b!2322053))

(assert (= (and b!2322053 res!991983) b!2322054))

(declare-fun m!2751425 () Bool)

(assert (=> d!686988 m!2751425))

(declare-fun m!2751427 () Bool)

(assert (=> d!686988 m!2751427))

(declare-fun m!2751429 () Bool)

(assert (=> b!2322053 m!2751429))

(declare-fun m!2751431 () Bool)

(assert (=> b!2322053 m!2751431))

(assert (=> b!2322053 m!2751429))

(assert (=> b!2322053 m!2751431))

(declare-fun m!2751433 () Bool)

(assert (=> b!2322053 m!2751433))

(assert (=> b!2321878 d!686988))

(declare-fun d!686990 () Bool)

(assert (=> d!686990 (= (height!1329 (left!21000 (left!21000 acc!252))) (ite ((_ is Empty!9069) (left!21000 (left!21000 acc!252))) 0 (ite ((_ is Leaf!13313) (left!21000 (left!21000 acc!252))) 1 (cheight!9280 (left!21000 (left!21000 acc!252))))))))

(assert (=> b!2321885 d!686990))

(declare-fun d!686992 () Bool)

(assert (=> d!686992 (= (height!1329 (right!21330 (left!21000 acc!252))) (ite ((_ is Empty!9069) (right!21330 (left!21000 acc!252))) 0 (ite ((_ is Leaf!13313) (right!21330 (left!21000 acc!252))) 1 (cheight!9280 (right!21330 (left!21000 acc!252))))))))

(assert (=> b!2321885 d!686992))

(assert (=> b!2321784 d!686884))

(assert (=> b!2321784 d!686888))

(assert (=> d!686870 d!686966))

(assert (=> d!686870 d!686968))

(declare-fun d!686994 () Bool)

(declare-fun res!991984 () Bool)

(declare-fun e!1488176 () Bool)

(assert (=> d!686994 (=> (not res!991984) (not e!1488176))))

(assert (=> d!686994 (= res!991984 (<= (size!21925 (list!11006 (xs!12035 (left!21000 (left!21000 acc!252))))) 512))))

(assert (=> d!686994 (= (inv!37626 (left!21000 (left!21000 acc!252))) e!1488176)))

(declare-fun b!2322055 () Bool)

(declare-fun res!991985 () Bool)

(assert (=> b!2322055 (=> (not res!991985) (not e!1488176))))

(assert (=> b!2322055 (= res!991985 (= (csize!18369 (left!21000 (left!21000 acc!252))) (size!21925 (list!11006 (xs!12035 (left!21000 (left!21000 acc!252)))))))))

(declare-fun b!2322056 () Bool)

(assert (=> b!2322056 (= e!1488176 (and (> (csize!18369 (left!21000 (left!21000 acc!252))) 0) (<= (csize!18369 (left!21000 (left!21000 acc!252))) 512)))))

(assert (= (and d!686994 res!991984) b!2322055))

(assert (= (and b!2322055 res!991985) b!2322056))

(declare-fun m!2751435 () Bool)

(assert (=> d!686994 m!2751435))

(assert (=> d!686994 m!2751435))

(declare-fun m!2751437 () Bool)

(assert (=> d!686994 m!2751437))

(assert (=> b!2322055 m!2751435))

(assert (=> b!2322055 m!2751435))

(assert (=> b!2322055 m!2751437))

(assert (=> b!2321877 d!686994))

(declare-fun d!686996 () Bool)

(declare-fun c!368340 () Bool)

(assert (=> d!686996 (= c!368340 ((_ is Node!9069) (left!21000 (right!21330 (right!21330 acc!252)))))))

(declare-fun e!1488177 () Bool)

(assert (=> d!686996 (= (inv!37621 (left!21000 (right!21330 (right!21330 acc!252)))) e!1488177)))

(declare-fun b!2322057 () Bool)

(assert (=> b!2322057 (= e!1488177 (inv!37624 (left!21000 (right!21330 (right!21330 acc!252)))))))

(declare-fun b!2322058 () Bool)

(declare-fun e!1488178 () Bool)

(assert (=> b!2322058 (= e!1488177 e!1488178)))

(declare-fun res!991986 () Bool)

(assert (=> b!2322058 (= res!991986 (not ((_ is Leaf!13313) (left!21000 (right!21330 (right!21330 acc!252))))))))

(assert (=> b!2322058 (=> res!991986 e!1488178)))

(declare-fun b!2322059 () Bool)

(assert (=> b!2322059 (= e!1488178 (inv!37626 (left!21000 (right!21330 (right!21330 acc!252)))))))

(assert (= (and d!686996 c!368340) b!2322057))

(assert (= (and d!686996 (not c!368340)) b!2322058))

(assert (= (and b!2322058 (not res!991986)) b!2322059))

(declare-fun m!2751439 () Bool)

(assert (=> b!2322057 m!2751439))

(declare-fun m!2751441 () Bool)

(assert (=> b!2322059 m!2751441))

(assert (=> b!2321901 d!686996))

(declare-fun d!686998 () Bool)

(declare-fun c!368341 () Bool)

(assert (=> d!686998 (= c!368341 ((_ is Node!9069) (right!21330 (right!21330 (right!21330 acc!252)))))))

(declare-fun e!1488179 () Bool)

(assert (=> d!686998 (= (inv!37621 (right!21330 (right!21330 (right!21330 acc!252)))) e!1488179)))

(declare-fun b!2322060 () Bool)

(assert (=> b!2322060 (= e!1488179 (inv!37624 (right!21330 (right!21330 (right!21330 acc!252)))))))

(declare-fun b!2322061 () Bool)

(declare-fun e!1488180 () Bool)

(assert (=> b!2322061 (= e!1488179 e!1488180)))

(declare-fun res!991987 () Bool)

(assert (=> b!2322061 (= res!991987 (not ((_ is Leaf!13313) (right!21330 (right!21330 (right!21330 acc!252))))))))

(assert (=> b!2322061 (=> res!991987 e!1488180)))

(declare-fun b!2322062 () Bool)

(assert (=> b!2322062 (= e!1488180 (inv!37626 (right!21330 (right!21330 (right!21330 acc!252)))))))

(assert (= (and d!686998 c!368341) b!2322060))

(assert (= (and d!686998 (not c!368341)) b!2322061))

(assert (= (and b!2322061 (not res!991987)) b!2322062))

(declare-fun m!2751443 () Bool)

(assert (=> b!2322060 m!2751443))

(declare-fun m!2751445 () Bool)

(assert (=> b!2322062 m!2751445))

(assert (=> b!2321901 d!686998))

(declare-fun d!687000 () Bool)

(declare-fun c!368342 () Bool)

(assert (=> d!687000 (= c!368342 ((_ is Node!9069) (left!21000 (left!21000 (left!21000 acc!252)))))))

(declare-fun e!1488181 () Bool)

(assert (=> d!687000 (= (inv!37621 (left!21000 (left!21000 (left!21000 acc!252)))) e!1488181)))

(declare-fun b!2322063 () Bool)

(assert (=> b!2322063 (= e!1488181 (inv!37624 (left!21000 (left!21000 (left!21000 acc!252)))))))

(declare-fun b!2322064 () Bool)

(declare-fun e!1488182 () Bool)

(assert (=> b!2322064 (= e!1488181 e!1488182)))

(declare-fun res!991988 () Bool)

(assert (=> b!2322064 (= res!991988 (not ((_ is Leaf!13313) (left!21000 (left!21000 (left!21000 acc!252))))))))

(assert (=> b!2322064 (=> res!991988 e!1488182)))

(declare-fun b!2322065 () Bool)

(assert (=> b!2322065 (= e!1488182 (inv!37626 (left!21000 (left!21000 (left!21000 acc!252)))))))

(assert (= (and d!687000 c!368342) b!2322063))

(assert (= (and d!687000 (not c!368342)) b!2322064))

(assert (= (and b!2322064 (not res!991988)) b!2322065))

(declare-fun m!2751447 () Bool)

(assert (=> b!2322063 m!2751447))

(declare-fun m!2751449 () Bool)

(assert (=> b!2322065 m!2751449))

(assert (=> b!2321891 d!687000))

(declare-fun d!687002 () Bool)

(declare-fun c!368343 () Bool)

(assert (=> d!687002 (= c!368343 ((_ is Node!9069) (right!21330 (left!21000 (left!21000 acc!252)))))))

(declare-fun e!1488183 () Bool)

(assert (=> d!687002 (= (inv!37621 (right!21330 (left!21000 (left!21000 acc!252)))) e!1488183)))

(declare-fun b!2322066 () Bool)

(assert (=> b!2322066 (= e!1488183 (inv!37624 (right!21330 (left!21000 (left!21000 acc!252)))))))

(declare-fun b!2322067 () Bool)

(declare-fun e!1488184 () Bool)

(assert (=> b!2322067 (= e!1488183 e!1488184)))

(declare-fun res!991989 () Bool)

(assert (=> b!2322067 (= res!991989 (not ((_ is Leaf!13313) (right!21330 (left!21000 (left!21000 acc!252))))))))

(assert (=> b!2322067 (=> res!991989 e!1488184)))

(declare-fun b!2322068 () Bool)

(assert (=> b!2322068 (= e!1488184 (inv!37626 (right!21330 (left!21000 (left!21000 acc!252)))))))

(assert (= (and d!687002 c!368343) b!2322066))

(assert (= (and d!687002 (not c!368343)) b!2322067))

(assert (= (and b!2322067 (not res!991989)) b!2322068))

(declare-fun m!2751451 () Bool)

(assert (=> b!2322066 m!2751451))

(declare-fun m!2751453 () Bool)

(assert (=> b!2322068 m!2751453))

(assert (=> b!2321891 d!687002))

(declare-fun d!687004 () Bool)

(declare-fun lt!860506 () Int)

(assert (=> d!687004 (= lt!860506 (size!21925 (list!11009 (left!21000 (left!21000 acc!252)))))))

(assert (=> d!687004 (= lt!860506 (ite ((_ is Empty!9069) (left!21000 (left!21000 acc!252))) 0 (ite ((_ is Leaf!13313) (left!21000 (left!21000 acc!252))) (csize!18369 (left!21000 (left!21000 acc!252))) (csize!18368 (left!21000 (left!21000 acc!252))))))))

(assert (=> d!687004 (= (size!21927 (left!21000 (left!21000 acc!252))) lt!860506)))

(declare-fun bs!459079 () Bool)

(assert (= bs!459079 d!687004))

(assert (=> bs!459079 m!2751403))

(assert (=> bs!459079 m!2751403))

(declare-fun m!2751455 () Bool)

(assert (=> bs!459079 m!2751455))

(assert (=> d!686878 d!687004))

(declare-fun d!687006 () Bool)

(declare-fun lt!860507 () Int)

(assert (=> d!687006 (= lt!860507 (size!21925 (list!11009 (right!21330 (left!21000 acc!252)))))))

(assert (=> d!687006 (= lt!860507 (ite ((_ is Empty!9069) (right!21330 (left!21000 acc!252))) 0 (ite ((_ is Leaf!13313) (right!21330 (left!21000 acc!252))) (csize!18369 (right!21330 (left!21000 acc!252))) (csize!18368 (right!21330 (left!21000 acc!252))))))))

(assert (=> d!687006 (= (size!21927 (right!21330 (left!21000 acc!252))) lt!860507)))

(declare-fun bs!459080 () Bool)

(assert (= bs!459080 d!687006))

(assert (=> bs!459080 m!2751389))

(assert (=> bs!459080 m!2751389))

(declare-fun m!2751457 () Bool)

(assert (=> bs!459080 m!2751457))

(assert (=> d!686878 d!687006))

(declare-fun d!687008 () Bool)

(declare-fun lt!860508 () Int)

(assert (=> d!687008 (>= lt!860508 0)))

(declare-fun e!1488185 () Int)

(assert (=> d!687008 (= lt!860508 e!1488185)))

(declare-fun c!368344 () Bool)

(assert (=> d!687008 (= c!368344 ((_ is Nil!27664) (t!207432 (innerList!9129 (xs!12035 acc!252)))))))

(assert (=> d!687008 (= (size!21925 (t!207432 (innerList!9129 (xs!12035 acc!252)))) lt!860508)))

(declare-fun b!2322069 () Bool)

(assert (=> b!2322069 (= e!1488185 0)))

(declare-fun b!2322070 () Bool)

(assert (=> b!2322070 (= e!1488185 (+ 1 (size!21925 (t!207432 (t!207432 (innerList!9129 (xs!12035 acc!252)))))))))

(assert (= (and d!687008 c!368344) b!2322069))

(assert (= (and d!687008 (not c!368344)) b!2322070))

(declare-fun m!2751459 () Bool)

(assert (=> b!2322070 m!2751459))

(assert (=> b!2321807 d!687008))

(assert (=> b!2321790 d!686846))

(assert (=> b!2321790 d!686848))

(declare-fun d!687010 () Bool)

(assert (=> d!687010 (= (inv!37622 (xs!12035 (left!21000 (right!21330 acc!252)))) (<= (size!21925 (innerList!9129 (xs!12035 (left!21000 (right!21330 acc!252))))) 2147483647))))

(declare-fun bs!459081 () Bool)

(assert (= bs!459081 d!687010))

(declare-fun m!2751461 () Bool)

(assert (=> bs!459081 m!2751461))

(assert (=> b!2321899 d!687010))

(assert (=> d!686892 d!686978))

(declare-fun d!687012 () Bool)

(declare-fun lt!860509 () Int)

(assert (=> d!687012 (= lt!860509 (size!21925 (list!11009 (right!21330 acc!252))))))

(assert (=> d!687012 (= lt!860509 (ite ((_ is Empty!9069) (right!21330 acc!252)) 0 (ite ((_ is Leaf!13313) (right!21330 acc!252)) (csize!18369 (right!21330 acc!252)) (csize!18368 (right!21330 acc!252)))))))

(assert (=> d!687012 (= (size!21927 (right!21330 acc!252)) lt!860509)))

(declare-fun bs!459082 () Bool)

(assert (= bs!459082 d!687012))

(assert (=> bs!459082 m!2751179))

(assert (=> bs!459082 m!2751179))

(declare-fun m!2751463 () Bool)

(assert (=> bs!459082 m!2751463))

(assert (=> d!686892 d!687012))

(declare-fun d!687014 () Bool)

(assert (=> d!687014 (= (isEmpty!15796 (list!11009 (right!21330 acc!252))) ((_ is Nil!27664) (list!11009 (right!21330 acc!252))))))

(assert (=> d!686880 d!687014))

(declare-fun d!687016 () Bool)

(declare-fun c!368345 () Bool)

(assert (=> d!687016 (= c!368345 ((_ is Empty!9069) (right!21330 acc!252)))))

(declare-fun e!1488186 () List!27762)

(assert (=> d!687016 (= (list!11009 (right!21330 acc!252)) e!1488186)))

(declare-fun b!2322074 () Bool)

(declare-fun e!1488187 () List!27762)

(assert (=> b!2322074 (= e!1488187 (++!6819 (list!11009 (left!21000 (right!21330 acc!252))) (list!11009 (right!21330 (right!21330 acc!252)))))))

(declare-fun b!2322072 () Bool)

(assert (=> b!2322072 (= e!1488186 e!1488187)))

(declare-fun c!368346 () Bool)

(assert (=> b!2322072 (= c!368346 ((_ is Leaf!13313) (right!21330 acc!252)))))

(declare-fun b!2322071 () Bool)

(assert (=> b!2322071 (= e!1488186 Nil!27664)))

(declare-fun b!2322073 () Bool)

(assert (=> b!2322073 (= e!1488187 (list!11006 (xs!12035 (right!21330 acc!252))))))

(assert (= (and d!687016 c!368345) b!2322071))

(assert (= (and d!687016 (not c!368345)) b!2322072))

(assert (= (and b!2322072 c!368346) b!2322073))

(assert (= (and b!2322072 (not c!368346)) b!2322074))

(declare-fun m!2751465 () Bool)

(assert (=> b!2322074 m!2751465))

(assert (=> b!2322074 m!2751397))

(assert (=> b!2322074 m!2751465))

(assert (=> b!2322074 m!2751397))

(declare-fun m!2751467 () Bool)

(assert (=> b!2322074 m!2751467))

(assert (=> b!2322073 m!2751117))

(assert (=> d!686880 d!687016))

(assert (=> d!686880 d!687012))

(declare-fun b!2322075 () Bool)

(declare-fun res!991990 () Bool)

(declare-fun e!1488189 () Bool)

(assert (=> b!2322075 (=> (not res!991990) (not e!1488189))))

(assert (=> b!2322075 (= res!991990 (not (isEmpty!15793 (left!21000 (right!21330 (right!21330 acc!252))))))))

(declare-fun b!2322076 () Bool)

(assert (=> b!2322076 (= e!1488189 (not (isEmpty!15793 (right!21330 (right!21330 (right!21330 acc!252))))))))

(declare-fun b!2322077 () Bool)

(declare-fun res!991992 () Bool)

(assert (=> b!2322077 (=> (not res!991992) (not e!1488189))))

(assert (=> b!2322077 (= res!991992 (isBalanced!2763 (right!21330 (right!21330 (right!21330 acc!252)))))))

(declare-fun b!2322078 () Bool)

(declare-fun e!1488188 () Bool)

(assert (=> b!2322078 (= e!1488188 e!1488189)))

(declare-fun res!991995 () Bool)

(assert (=> b!2322078 (=> (not res!991995) (not e!1488189))))

(assert (=> b!2322078 (= res!991995 (<= (- 1) (- (height!1329 (left!21000 (right!21330 (right!21330 acc!252)))) (height!1329 (right!21330 (right!21330 (right!21330 acc!252)))))))))

(declare-fun b!2322079 () Bool)

(declare-fun res!991993 () Bool)

(assert (=> b!2322079 (=> (not res!991993) (not e!1488189))))

(assert (=> b!2322079 (= res!991993 (<= (- (height!1329 (left!21000 (right!21330 (right!21330 acc!252)))) (height!1329 (right!21330 (right!21330 (right!21330 acc!252))))) 1))))

(declare-fun d!687018 () Bool)

(declare-fun res!991991 () Bool)

(assert (=> d!687018 (=> res!991991 e!1488188)))

(assert (=> d!687018 (= res!991991 (not ((_ is Node!9069) (right!21330 (right!21330 acc!252)))))))

(assert (=> d!687018 (= (isBalanced!2763 (right!21330 (right!21330 acc!252))) e!1488188)))

(declare-fun b!2322080 () Bool)

(declare-fun res!991994 () Bool)

(assert (=> b!2322080 (=> (not res!991994) (not e!1488189))))

(assert (=> b!2322080 (= res!991994 (isBalanced!2763 (left!21000 (right!21330 (right!21330 acc!252)))))))

(assert (= (and d!687018 (not res!991991)) b!2322078))

(assert (= (and b!2322078 res!991995) b!2322079))

(assert (= (and b!2322079 res!991993) b!2322080))

(assert (= (and b!2322080 res!991994) b!2322077))

(assert (= (and b!2322077 res!991992) b!2322075))

(assert (= (and b!2322075 res!991990) b!2322076))

(declare-fun m!2751469 () Bool)

(assert (=> b!2322080 m!2751469))

(declare-fun m!2751471 () Bool)

(assert (=> b!2322077 m!2751471))

(declare-fun m!2751473 () Bool)

(assert (=> b!2322075 m!2751473))

(assert (=> b!2322078 m!2751383))

(assert (=> b!2322078 m!2751385))

(declare-fun m!2751475 () Bool)

(assert (=> b!2322076 m!2751475))

(assert (=> b!2322079 m!2751383))

(assert (=> b!2322079 m!2751385))

(assert (=> b!2321838 d!687018))

(declare-fun d!687020 () Bool)

(assert (=> d!687020 (= (max!0 (height!1329 (left!21000 acc!252)) (height!1329 (right!21330 acc!252))) (ite (< (height!1329 (left!21000 acc!252)) (height!1329 (right!21330 acc!252))) (height!1329 (right!21330 acc!252)) (height!1329 (left!21000 acc!252))))))

(assert (=> b!2321888 d!687020))

(assert (=> b!2321888 d!686864))

(assert (=> b!2321888 d!686868))

(declare-fun d!687022 () Bool)

(declare-fun lt!860510 () Bool)

(assert (=> d!687022 (= lt!860510 (isEmpty!15796 (list!11009 (left!21000 (left!21000 acc!252)))))))

(assert (=> d!687022 (= lt!860510 (= (size!21927 (left!21000 (left!21000 acc!252))) 0))))

(assert (=> d!687022 (= (isEmpty!15793 (left!21000 (left!21000 acc!252))) lt!860510)))

(declare-fun bs!459083 () Bool)

(assert (= bs!459083 d!687022))

(assert (=> bs!459083 m!2751403))

(assert (=> bs!459083 m!2751403))

(declare-fun m!2751477 () Bool)

(assert (=> bs!459083 m!2751477))

(assert (=> bs!459083 m!2751169))

(assert (=> b!2321881 d!687022))

(assert (=> b!2321840 d!686956))

(assert (=> b!2321840 d!686958))

(declare-fun b!2322081 () Bool)

(declare-fun res!991996 () Bool)

(declare-fun e!1488191 () Bool)

(assert (=> b!2322081 (=> (not res!991996) (not e!1488191))))

(assert (=> b!2322081 (= res!991996 (not (isEmpty!15793 (left!21000 (right!21330 (left!21000 acc!252))))))))

(declare-fun b!2322082 () Bool)

(assert (=> b!2322082 (= e!1488191 (not (isEmpty!15793 (right!21330 (right!21330 (left!21000 acc!252))))))))

(declare-fun b!2322083 () Bool)

(declare-fun res!991998 () Bool)

(assert (=> b!2322083 (=> (not res!991998) (not e!1488191))))

(assert (=> b!2322083 (= res!991998 (isBalanced!2763 (right!21330 (right!21330 (left!21000 acc!252)))))))

(declare-fun b!2322084 () Bool)

(declare-fun e!1488190 () Bool)

(assert (=> b!2322084 (= e!1488190 e!1488191)))

(declare-fun res!992001 () Bool)

(assert (=> b!2322084 (=> (not res!992001) (not e!1488191))))

(assert (=> b!2322084 (= res!992001 (<= (- 1) (- (height!1329 (left!21000 (right!21330 (left!21000 acc!252)))) (height!1329 (right!21330 (right!21330 (left!21000 acc!252)))))))))

(declare-fun b!2322085 () Bool)

(declare-fun res!991999 () Bool)

(assert (=> b!2322085 (=> (not res!991999) (not e!1488191))))

(assert (=> b!2322085 (= res!991999 (<= (- (height!1329 (left!21000 (right!21330 (left!21000 acc!252)))) (height!1329 (right!21330 (right!21330 (left!21000 acc!252))))) 1))))

(declare-fun d!687024 () Bool)

(declare-fun res!991997 () Bool)

(assert (=> d!687024 (=> res!991997 e!1488190)))

(assert (=> d!687024 (= res!991997 (not ((_ is Node!9069) (right!21330 (left!21000 acc!252)))))))

(assert (=> d!687024 (= (isBalanced!2763 (right!21330 (left!21000 acc!252))) e!1488190)))

(declare-fun b!2322086 () Bool)

(declare-fun res!992000 () Bool)

(assert (=> b!2322086 (=> (not res!992000) (not e!1488191))))

(assert (=> b!2322086 (= res!992000 (isBalanced!2763 (left!21000 (right!21330 (left!21000 acc!252)))))))

(assert (= (and d!687024 (not res!991997)) b!2322084))

(assert (= (and b!2322084 res!992001) b!2322085))

(assert (= (and b!2322085 res!991999) b!2322086))

(assert (= (and b!2322086 res!992000) b!2322083))

(assert (= (and b!2322083 res!991998) b!2322081))

(assert (= (and b!2322081 res!991996) b!2322082))

(declare-fun m!2751479 () Bool)

(assert (=> b!2322086 m!2751479))

(declare-fun m!2751481 () Bool)

(assert (=> b!2322083 m!2751481))

(declare-fun m!2751483 () Bool)

(assert (=> b!2322081 m!2751483))

(assert (=> b!2322084 m!2751429))

(assert (=> b!2322084 m!2751431))

(declare-fun m!2751485 () Bool)

(assert (=> b!2322082 m!2751485))

(assert (=> b!2322085 m!2751429))

(assert (=> b!2322085 m!2751431))

(assert (=> b!2321883 d!687024))

(declare-fun d!687026 () Bool)

(assert (=> d!687026 (= (max!0 (height!1329 (left!21000 (left!21000 acc!252))) (height!1329 (right!21330 (left!21000 acc!252)))) (ite (< (height!1329 (left!21000 (left!21000 acc!252))) (height!1329 (right!21330 (left!21000 acc!252)))) (height!1329 (right!21330 (left!21000 acc!252))) (height!1329 (left!21000 (left!21000 acc!252)))))))

(assert (=> b!2321868 d!687026))

(assert (=> b!2321868 d!686990))

(assert (=> b!2321868 d!686992))

(declare-fun d!687028 () Bool)

(declare-fun lt!860511 () Bool)

(assert (=> d!687028 (= lt!860511 (isEmpty!15796 (list!11009 (left!21000 (right!21330 acc!252)))))))

(assert (=> d!687028 (= lt!860511 (= (size!21927 (left!21000 (right!21330 acc!252))) 0))))

(assert (=> d!687028 (= (isEmpty!15793 (left!21000 (right!21330 acc!252))) lt!860511)))

(declare-fun bs!459084 () Bool)

(assert (= bs!459084 d!687028))

(assert (=> bs!459084 m!2751465))

(assert (=> bs!459084 m!2751465))

(declare-fun m!2751487 () Bool)

(assert (=> bs!459084 m!2751487))

(assert (=> bs!459084 m!2751087))

(assert (=> b!2321836 d!687028))

(assert (=> d!686854 d!686852))

(assert (=> d!686854 d!686842))

(declare-fun d!687030 () Bool)

(assert (=> d!687030 (= (inv!37622 _$4!1105) (<= (size!21925 (innerList!9129 _$4!1105)) 2147483647))))

(declare-fun bs!459085 () Bool)

(assert (= bs!459085 d!687030))

(declare-fun m!2751489 () Bool)

(assert (=> bs!459085 m!2751489))

(assert (=> d!686854 d!687030))

(declare-fun b!2322087 () Bool)

(declare-fun res!992002 () Bool)

(declare-fun e!1488193 () Bool)

(assert (=> b!2322087 (=> (not res!992002) (not e!1488193))))

(assert (=> b!2322087 (= res!992002 (not (isEmpty!15793 (left!21000 (left!21000 (left!21000 acc!252))))))))

(declare-fun b!2322088 () Bool)

(assert (=> b!2322088 (= e!1488193 (not (isEmpty!15793 (right!21330 (left!21000 (left!21000 acc!252))))))))

(declare-fun b!2322089 () Bool)

(declare-fun res!992004 () Bool)

(assert (=> b!2322089 (=> (not res!992004) (not e!1488193))))

(assert (=> b!2322089 (= res!992004 (isBalanced!2763 (right!21330 (left!21000 (left!21000 acc!252)))))))

(declare-fun b!2322090 () Bool)

(declare-fun e!1488192 () Bool)

(assert (=> b!2322090 (= e!1488192 e!1488193)))

(declare-fun res!992007 () Bool)

(assert (=> b!2322090 (=> (not res!992007) (not e!1488193))))

(assert (=> b!2322090 (= res!992007 (<= (- 1) (- (height!1329 (left!21000 (left!21000 (left!21000 acc!252)))) (height!1329 (right!21330 (left!21000 (left!21000 acc!252)))))))))

(declare-fun b!2322091 () Bool)

(declare-fun res!992005 () Bool)

(assert (=> b!2322091 (=> (not res!992005) (not e!1488193))))

(assert (=> b!2322091 (= res!992005 (<= (- (height!1329 (left!21000 (left!21000 (left!21000 acc!252)))) (height!1329 (right!21330 (left!21000 (left!21000 acc!252))))) 1))))

(declare-fun d!687032 () Bool)

(declare-fun res!992003 () Bool)

(assert (=> d!687032 (=> res!992003 e!1488192)))

(assert (=> d!687032 (= res!992003 (not ((_ is Node!9069) (left!21000 (left!21000 acc!252)))))))

(assert (=> d!687032 (= (isBalanced!2763 (left!21000 (left!21000 acc!252))) e!1488192)))

(declare-fun b!2322092 () Bool)

(declare-fun res!992006 () Bool)

(assert (=> b!2322092 (=> (not res!992006) (not e!1488193))))

(assert (=> b!2322092 (= res!992006 (isBalanced!2763 (left!21000 (left!21000 (left!21000 acc!252)))))))

(assert (= (and d!687032 (not res!992003)) b!2322090))

(assert (= (and b!2322090 res!992007) b!2322091))

(assert (= (and b!2322091 res!992005) b!2322092))

(assert (= (and b!2322092 res!992006) b!2322089))

(assert (= (and b!2322089 res!992004) b!2322087))

(assert (= (and b!2322087 res!992002) b!2322088))

(declare-fun m!2751491 () Bool)

(assert (=> b!2322092 m!2751491))

(declare-fun m!2751493 () Bool)

(assert (=> b!2322089 m!2751493))

(declare-fun m!2751495 () Bool)

(assert (=> b!2322087 m!2751495))

(assert (=> b!2322090 m!2751419))

(assert (=> b!2322090 m!2751421))

(declare-fun m!2751497 () Bool)

(assert (=> b!2322088 m!2751497))

(assert (=> b!2322091 m!2751419))

(assert (=> b!2322091 m!2751421))

(assert (=> b!2321886 d!687032))

(declare-fun d!687034 () Bool)

(declare-fun lt!860512 () Int)

(assert (=> d!687034 (>= lt!860512 0)))

(declare-fun e!1488194 () Int)

(assert (=> d!687034 (= lt!860512 e!1488194)))

(declare-fun c!368347 () Bool)

(assert (=> d!687034 (= c!368347 ((_ is Nil!27664) (list!11006 (xs!12035 (right!21330 acc!252)))))))

(assert (=> d!687034 (= (size!21925 (list!11006 (xs!12035 (right!21330 acc!252)))) lt!860512)))

(declare-fun b!2322093 () Bool)

(assert (=> b!2322093 (= e!1488194 0)))

(declare-fun b!2322094 () Bool)

(assert (=> b!2322094 (= e!1488194 (+ 1 (size!21925 (t!207432 (list!11006 (xs!12035 (right!21330 acc!252)))))))))

(assert (= (and d!687034 c!368347) b!2322093))

(assert (= (and d!687034 (not c!368347)) b!2322094))

(declare-fun m!2751499 () Bool)

(assert (=> b!2322094 m!2751499))

(assert (=> d!686856 d!687034))

(declare-fun d!687036 () Bool)

(assert (=> d!687036 (= (list!11006 (xs!12035 (right!21330 acc!252))) (innerList!9129 (xs!12035 (right!21330 acc!252))))))

(assert (=> d!686856 d!687036))

(declare-fun d!687038 () Bool)

(declare-fun lt!860513 () Int)

(assert (=> d!687038 (= lt!860513 (size!21925 (list!11009 (left!21000 (right!21330 acc!252)))))))

(assert (=> d!687038 (= lt!860513 (ite ((_ is Empty!9069) (left!21000 (right!21330 acc!252))) 0 (ite ((_ is Leaf!13313) (left!21000 (right!21330 acc!252))) (csize!18369 (left!21000 (right!21330 acc!252))) (csize!18368 (left!21000 (right!21330 acc!252))))))))

(assert (=> d!687038 (= (size!21927 (left!21000 (right!21330 acc!252))) lt!860513)))

(declare-fun bs!459086 () Bool)

(assert (= bs!459086 d!687038))

(assert (=> bs!459086 m!2751465))

(assert (=> bs!459086 m!2751465))

(declare-fun m!2751501 () Bool)

(assert (=> bs!459086 m!2751501))

(assert (=> d!686836 d!687038))

(declare-fun d!687040 () Bool)

(declare-fun lt!860514 () Int)

(assert (=> d!687040 (= lt!860514 (size!21925 (list!11009 (right!21330 (right!21330 acc!252)))))))

(assert (=> d!687040 (= lt!860514 (ite ((_ is Empty!9069) (right!21330 (right!21330 acc!252))) 0 (ite ((_ is Leaf!13313) (right!21330 (right!21330 acc!252))) (csize!18369 (right!21330 (right!21330 acc!252))) (csize!18368 (right!21330 (right!21330 acc!252))))))))

(assert (=> d!687040 (= (size!21927 (right!21330 (right!21330 acc!252))) lt!860514)))

(declare-fun bs!459087 () Bool)

(assert (= bs!459087 d!687040))

(assert (=> bs!459087 m!2751397))

(assert (=> bs!459087 m!2751397))

(declare-fun m!2751503 () Bool)

(assert (=> bs!459087 m!2751503))

(assert (=> d!686836 d!687040))

(declare-fun d!687042 () Bool)

(assert (=> d!687042 (= (max!0 (height!1329 (left!21000 (right!21330 acc!252))) (height!1329 (right!21330 (right!21330 acc!252)))) (ite (< (height!1329 (left!21000 (right!21330 acc!252))) (height!1329 (right!21330 (right!21330 acc!252)))) (height!1329 (right!21330 (right!21330 acc!252))) (height!1329 (left!21000 (right!21330 acc!252)))))))

(assert (=> b!2321817 d!687042))

(assert (=> b!2321817 d!686956))

(assert (=> b!2321817 d!686958))

(assert (=> b!2321834 d!687034))

(assert (=> b!2321834 d!687036))

(assert (=> b!2321884 d!686990))

(assert (=> b!2321884 d!686992))

(declare-fun b!2322095 () Bool)

(declare-fun res!992008 () Bool)

(declare-fun e!1488196 () Bool)

(assert (=> b!2322095 (=> (not res!992008) (not e!1488196))))

(assert (=> b!2322095 (= res!992008 (not (isEmpty!15793 (left!21000 (left!21000 (right!21330 acc!252))))))))

(declare-fun b!2322096 () Bool)

(assert (=> b!2322096 (= e!1488196 (not (isEmpty!15793 (right!21330 (left!21000 (right!21330 acc!252))))))))

(declare-fun b!2322097 () Bool)

(declare-fun res!992010 () Bool)

(assert (=> b!2322097 (=> (not res!992010) (not e!1488196))))

(assert (=> b!2322097 (= res!992010 (isBalanced!2763 (right!21330 (left!21000 (right!21330 acc!252)))))))

(declare-fun b!2322098 () Bool)

(declare-fun e!1488195 () Bool)

(assert (=> b!2322098 (= e!1488195 e!1488196)))

(declare-fun res!992013 () Bool)

(assert (=> b!2322098 (=> (not res!992013) (not e!1488196))))

(assert (=> b!2322098 (= res!992013 (<= (- 1) (- (height!1329 (left!21000 (left!21000 (right!21330 acc!252)))) (height!1329 (right!21330 (left!21000 (right!21330 acc!252)))))))))

(declare-fun b!2322099 () Bool)

(declare-fun res!992011 () Bool)

(assert (=> b!2322099 (=> (not res!992011) (not e!1488196))))

(assert (=> b!2322099 (= res!992011 (<= (- (height!1329 (left!21000 (left!21000 (right!21330 acc!252)))) (height!1329 (right!21330 (left!21000 (right!21330 acc!252))))) 1))))

(declare-fun d!687044 () Bool)

(declare-fun res!992009 () Bool)

(assert (=> d!687044 (=> res!992009 e!1488195)))

(assert (=> d!687044 (= res!992009 (not ((_ is Node!9069) (left!21000 (right!21330 acc!252)))))))

(assert (=> d!687044 (= (isBalanced!2763 (left!21000 (right!21330 acc!252))) e!1488195)))

(declare-fun b!2322100 () Bool)

(declare-fun res!992012 () Bool)

(assert (=> b!2322100 (=> (not res!992012) (not e!1488196))))

(assert (=> b!2322100 (= res!992012 (isBalanced!2763 (left!21000 (left!21000 (right!21330 acc!252)))))))

(assert (= (and d!687044 (not res!992009)) b!2322098))

(assert (= (and b!2322098 res!992013) b!2322099))

(assert (= (and b!2322099 res!992011) b!2322100))

(assert (= (and b!2322100 res!992012) b!2322097))

(assert (= (and b!2322097 res!992010) b!2322095))

(assert (= (and b!2322095 res!992008) b!2322096))

(declare-fun m!2751505 () Bool)

(assert (=> b!2322100 m!2751505))

(declare-fun m!2751507 () Bool)

(assert (=> b!2322097 m!2751507))

(declare-fun m!2751509 () Bool)

(assert (=> b!2322095 m!2751509))

(declare-fun m!2751511 () Bool)

(assert (=> b!2322098 m!2751511))

(declare-fun m!2751513 () Bool)

(assert (=> b!2322098 m!2751513))

(declare-fun m!2751515 () Bool)

(assert (=> b!2322096 m!2751515))

(assert (=> b!2322099 m!2751511))

(assert (=> b!2322099 m!2751513))

(assert (=> b!2321841 d!687044))

(declare-fun d!687046 () Bool)

(declare-fun lt!860515 () Int)

(assert (=> d!687046 (= lt!860515 (size!21925 (list!11009 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512)))))))

(assert (=> d!687046 (= lt!860515 (ite ((_ is Empty!9069) (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) 0 (ite ((_ is Leaf!13313) (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (csize!18369 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (csize!18368 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))))

(assert (=> d!687046 (= (size!21927 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) lt!860515)))

(declare-fun bs!459088 () Bool)

(assert (= bs!459088 d!687046))

(declare-fun m!2751517 () Bool)

(assert (=> bs!459088 m!2751517))

(assert (=> bs!459088 m!2751517))

(declare-fun m!2751519 () Bool)

(assert (=> bs!459088 m!2751519))

(assert (=> d!686862 d!687046))

(declare-fun d!687048 () Bool)

(declare-fun lt!860516 () Int)

(assert (=> d!687048 (= lt!860516 (size!21925 (list!11009 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512)))))))

(assert (=> d!687048 (= lt!860516 (ite ((_ is Empty!9069) (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) 0 (ite ((_ is Leaf!13313) (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (csize!18369 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (csize!18368 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))))

(assert (=> d!687048 (= (size!21927 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) lt!860516)))

(declare-fun bs!459089 () Bool)

(assert (= bs!459089 d!687048))

(declare-fun m!2751521 () Bool)

(assert (=> bs!459089 m!2751521))

(assert (=> bs!459089 m!2751521))

(declare-fun m!2751523 () Bool)

(assert (=> bs!459089 m!2751523))

(assert (=> d!686862 d!687048))

(declare-fun d!687050 () Bool)

(declare-fun res!992014 () Bool)

(declare-fun e!1488197 () Bool)

(assert (=> d!687050 (=> (not res!992014) (not e!1488197))))

(assert (=> d!687050 (= res!992014 (<= (size!21925 (list!11006 (xs!12035 (right!21330 (right!21330 acc!252))))) 512))))

(assert (=> d!687050 (= (inv!37626 (right!21330 (right!21330 acc!252))) e!1488197)))

(declare-fun b!2322101 () Bool)

(declare-fun res!992015 () Bool)

(assert (=> b!2322101 (=> (not res!992015) (not e!1488197))))

(assert (=> b!2322101 (= res!992015 (= (csize!18369 (right!21330 (right!21330 acc!252))) (size!21925 (list!11006 (xs!12035 (right!21330 (right!21330 acc!252)))))))))

(declare-fun b!2322102 () Bool)

(assert (=> b!2322102 (= e!1488197 (and (> (csize!18369 (right!21330 (right!21330 acc!252))) 0) (<= (csize!18369 (right!21330 (right!21330 acc!252))) 512)))))

(assert (= (and d!687050 res!992014) b!2322101))

(assert (= (and b!2322101 res!992015) b!2322102))

(declare-fun m!2751525 () Bool)

(assert (=> d!687050 m!2751525))

(assert (=> d!687050 m!2751525))

(declare-fun m!2751527 () Bool)

(assert (=> d!687050 m!2751527))

(assert (=> b!2322101 m!2751525))

(assert (=> b!2322101 m!2751525))

(assert (=> b!2322101 m!2751527))

(assert (=> b!2321826 d!687050))

(declare-fun d!687052 () Bool)

(declare-fun res!992016 () Bool)

(declare-fun e!1488198 () Bool)

(assert (=> d!687052 (=> (not res!992016) (not e!1488198))))

(assert (=> d!687052 (= res!992016 (= (csize!18368 (left!21000 (right!21330 acc!252))) (+ (size!21927 (left!21000 (left!21000 (right!21330 acc!252)))) (size!21927 (right!21330 (left!21000 (right!21330 acc!252)))))))))

(assert (=> d!687052 (= (inv!37624 (left!21000 (right!21330 acc!252))) e!1488198)))

(declare-fun b!2322103 () Bool)

(declare-fun res!992017 () Bool)

(assert (=> b!2322103 (=> (not res!992017) (not e!1488198))))

(assert (=> b!2322103 (= res!992017 (and (not (= (left!21000 (left!21000 (right!21330 acc!252))) Empty!9069)) (not (= (right!21330 (left!21000 (right!21330 acc!252))) Empty!9069))))))

(declare-fun b!2322104 () Bool)

(declare-fun res!992018 () Bool)

(assert (=> b!2322104 (=> (not res!992018) (not e!1488198))))

(assert (=> b!2322104 (= res!992018 (= (cheight!9280 (left!21000 (right!21330 acc!252))) (+ (max!0 (height!1329 (left!21000 (left!21000 (right!21330 acc!252)))) (height!1329 (right!21330 (left!21000 (right!21330 acc!252))))) 1)))))

(declare-fun b!2322105 () Bool)

(assert (=> b!2322105 (= e!1488198 (<= 0 (cheight!9280 (left!21000 (right!21330 acc!252)))))))

(assert (= (and d!687052 res!992016) b!2322103))

(assert (= (and b!2322103 res!992017) b!2322104))

(assert (= (and b!2322104 res!992018) b!2322105))

(declare-fun m!2751529 () Bool)

(assert (=> d!687052 m!2751529))

(declare-fun m!2751531 () Bool)

(assert (=> d!687052 m!2751531))

(assert (=> b!2322104 m!2751511))

(assert (=> b!2322104 m!2751513))

(assert (=> b!2322104 m!2751511))

(assert (=> b!2322104 m!2751513))

(declare-fun m!2751533 () Bool)

(assert (=> b!2322104 m!2751533))

(assert (=> b!2321821 d!687052))

(declare-fun d!687054 () Bool)

(assert (=> d!687054 (= (max!0 (height!1329 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (height!1329 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512)))) (ite (< (height!1329 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (height!1329 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512)))) (height!1329 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (height!1329 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512)))))))

(assert (=> b!2321847 d!687054))

(declare-fun d!687056 () Bool)

(assert (=> d!687056 (= (height!1329 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (ite ((_ is Empty!9069) (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) 0 (ite ((_ is Leaf!13313) (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))) 1 (cheight!9280 (left!21000 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))))

(assert (=> b!2321847 d!687056))

(declare-fun d!687058 () Bool)

(assert (=> d!687058 (= (height!1329 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) (ite ((_ is Empty!9069) (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) 0 (ite ((_ is Leaf!13313) (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))) 1 (cheight!9280 (right!21330 (Leaf!13313 (slice!693 arr!18 0 512) 512))))))))

(assert (=> b!2321847 d!687058))

(declare-fun d!687060 () Bool)

(declare-fun res!992019 () Bool)

(declare-fun e!1488199 () Bool)

(assert (=> d!687060 (=> (not res!992019) (not e!1488199))))

(assert (=> d!687060 (= res!992019 (<= (size!21925 (list!11006 (xs!12035 (left!21000 (right!21330 acc!252))))) 512))))

(assert (=> d!687060 (= (inv!37626 (left!21000 (right!21330 acc!252))) e!1488199)))

(declare-fun b!2322106 () Bool)

(declare-fun res!992020 () Bool)

(assert (=> b!2322106 (=> (not res!992020) (not e!1488199))))

(assert (=> b!2322106 (= res!992020 (= (csize!18369 (left!21000 (right!21330 acc!252))) (size!21925 (list!11006 (xs!12035 (left!21000 (right!21330 acc!252)))))))))

(declare-fun b!2322107 () Bool)

(assert (=> b!2322107 (= e!1488199 (and (> (csize!18369 (left!21000 (right!21330 acc!252))) 0) (<= (csize!18369 (left!21000 (right!21330 acc!252))) 512)))))

(assert (= (and d!687060 res!992019) b!2322106))

(assert (= (and b!2322106 res!992020) b!2322107))

(declare-fun m!2751535 () Bool)

(assert (=> d!687060 m!2751535))

(assert (=> d!687060 m!2751535))

(declare-fun m!2751537 () Bool)

(assert (=> d!687060 m!2751537))

(assert (=> b!2322106 m!2751535))

(assert (=> b!2322106 m!2751535))

(assert (=> b!2322106 m!2751537))

(assert (=> b!2321823 d!687060))

(declare-fun d!687062 () Bool)

(declare-fun c!368348 () Bool)

(assert (=> d!687062 (= c!368348 ((_ is Node!9069) (left!21000 (right!21330 (left!21000 acc!252)))))))

(declare-fun e!1488200 () Bool)

(assert (=> d!687062 (= (inv!37621 (left!21000 (right!21330 (left!21000 acc!252)))) e!1488200)))

(declare-fun b!2322108 () Bool)

(assert (=> b!2322108 (= e!1488200 (inv!37624 (left!21000 (right!21330 (left!21000 acc!252)))))))

(declare-fun b!2322109 () Bool)

(declare-fun e!1488201 () Bool)

(assert (=> b!2322109 (= e!1488200 e!1488201)))

(declare-fun res!992021 () Bool)

(assert (=> b!2322109 (= res!992021 (not ((_ is Leaf!13313) (left!21000 (right!21330 (left!21000 acc!252))))))))

(assert (=> b!2322109 (=> res!992021 e!1488201)))

(declare-fun b!2322110 () Bool)

(assert (=> b!2322110 (= e!1488201 (inv!37626 (left!21000 (right!21330 (left!21000 acc!252)))))))

(assert (= (and d!687062 c!368348) b!2322108))

(assert (= (and d!687062 (not c!368348)) b!2322109))

(assert (= (and b!2322109 (not res!992021)) b!2322110))

(declare-fun m!2751539 () Bool)

(assert (=> b!2322108 m!2751539))

(declare-fun m!2751541 () Bool)

(assert (=> b!2322110 m!2751541))

(assert (=> b!2321894 d!687062))

(declare-fun d!687064 () Bool)

(declare-fun c!368349 () Bool)

(assert (=> d!687064 (= c!368349 ((_ is Node!9069) (right!21330 (right!21330 (left!21000 acc!252)))))))

(declare-fun e!1488202 () Bool)

(assert (=> d!687064 (= (inv!37621 (right!21330 (right!21330 (left!21000 acc!252)))) e!1488202)))

(declare-fun b!2322111 () Bool)

(assert (=> b!2322111 (= e!1488202 (inv!37624 (right!21330 (right!21330 (left!21000 acc!252)))))))

(declare-fun b!2322112 () Bool)

(declare-fun e!1488203 () Bool)

(assert (=> b!2322112 (= e!1488202 e!1488203)))

(declare-fun res!992022 () Bool)

(assert (=> b!2322112 (= res!992022 (not ((_ is Leaf!13313) (right!21330 (right!21330 (left!21000 acc!252))))))))

(assert (=> b!2322112 (=> res!992022 e!1488203)))

(declare-fun b!2322113 () Bool)

(assert (=> b!2322113 (= e!1488203 (inv!37626 (right!21330 (right!21330 (left!21000 acc!252)))))))

(assert (= (and d!687064 c!368349) b!2322111))

(assert (= (and d!687064 (not c!368349)) b!2322112))

(assert (= (and b!2322112 (not res!992022)) b!2322113))

(declare-fun m!2751543 () Bool)

(assert (=> b!2322111 m!2751543))

(declare-fun m!2751545 () Bool)

(assert (=> b!2322113 m!2751545))

(assert (=> b!2321894 d!687064))

(declare-fun d!687066 () Bool)

(declare-fun lt!860517 () Int)

(assert (=> d!687066 (>= lt!860517 0)))

(declare-fun e!1488204 () Int)

(assert (=> d!687066 (= lt!860517 e!1488204)))

(declare-fun c!368350 () Bool)

(assert (=> d!687066 (= c!368350 ((_ is Nil!27664) (t!207432 (list!11006 arr!18))))))

(assert (=> d!687066 (= (size!21925 (t!207432 (list!11006 arr!18))) lt!860517)))

(declare-fun b!2322114 () Bool)

(assert (=> b!2322114 (= e!1488204 0)))

(declare-fun b!2322115 () Bool)

(assert (=> b!2322115 (= e!1488204 (+ 1 (size!21925 (t!207432 (t!207432 (list!11006 arr!18))))))))

(assert (= (and d!687066 c!368350) b!2322114))

(assert (= (and d!687066 (not c!368350)) b!2322115))

(declare-fun m!2751547 () Bool)

(assert (=> b!2322115 m!2751547))

(assert (=> b!2321820 d!687066))

(declare-fun d!687068 () Bool)

(declare-fun lt!860518 () Int)

(assert (=> d!687068 (>= lt!860518 0)))

(declare-fun e!1488205 () Int)

(assert (=> d!687068 (= lt!860518 e!1488205)))

(declare-fun c!368351 () Bool)

(assert (=> d!687068 (= c!368351 ((_ is Nil!27664) (innerList!9129 (xs!12035 (left!21000 acc!252)))))))

(assert (=> d!687068 (= (size!21925 (innerList!9129 (xs!12035 (left!21000 acc!252)))) lt!860518)))

(declare-fun b!2322116 () Bool)

(assert (=> b!2322116 (= e!1488205 0)))

(declare-fun b!2322117 () Bool)

(assert (=> b!2322117 (= e!1488205 (+ 1 (size!21925 (t!207432 (innerList!9129 (xs!12035 (left!21000 acc!252)))))))))

(assert (= (and d!687068 c!368351) b!2322116))

(assert (= (and d!687068 (not c!368351)) b!2322117))

(declare-fun m!2751549 () Bool)

(assert (=> b!2322117 m!2751549))

(assert (=> d!686850 d!687068))

(declare-fun d!687070 () Bool)

(assert (=> d!687070 (= (inv!37622 (xs!12035 (right!21330 (right!21330 acc!252)))) (<= (size!21925 (innerList!9129 (xs!12035 (right!21330 (right!21330 acc!252))))) 2147483647))))

(declare-fun bs!459090 () Bool)

(assert (= bs!459090 d!687070))

(declare-fun m!2751551 () Bool)

(assert (=> bs!459090 m!2751551))

(assert (=> b!2321902 d!687070))

(declare-fun b!2322118 () Bool)

(declare-fun e!1488206 () Bool)

(declare-fun tp!736658 () Bool)

(assert (=> b!2322118 (= e!1488206 (and tp_is_empty!10823 tp!736658))))

(assert (=> b!2321905 (= tp!736638 e!1488206)))

(assert (= (and b!2321905 ((_ is Cons!27664) (t!207432 (innerList!9129 (xs!12035 (left!21000 acc!252)))))) b!2322118))

(declare-fun b!2322119 () Bool)

(declare-fun e!1488207 () Bool)

(declare-fun tp!736661 () Bool)

(declare-fun tp!736659 () Bool)

(assert (=> b!2322119 (= e!1488207 (and (inv!37621 (left!21000 (left!21000 (left!21000 (left!21000 acc!252))))) tp!736661 (inv!37621 (right!21330 (left!21000 (left!21000 (left!21000 acc!252))))) tp!736659))))

(declare-fun b!2322121 () Bool)

(declare-fun e!1488208 () Bool)

(declare-fun tp!736660 () Bool)

(assert (=> b!2322121 (= e!1488208 tp!736660)))

(declare-fun b!2322120 () Bool)

(assert (=> b!2322120 (= e!1488207 (and (inv!37622 (xs!12035 (left!21000 (left!21000 (left!21000 acc!252))))) e!1488208))))

(assert (=> b!2321891 (= tp!736626 (and (inv!37621 (left!21000 (left!21000 (left!21000 acc!252)))) e!1488207))))

(assert (= (and b!2321891 ((_ is Node!9069) (left!21000 (left!21000 (left!21000 acc!252))))) b!2322119))

(assert (= b!2322120 b!2322121))

(assert (= (and b!2321891 ((_ is Leaf!13313) (left!21000 (left!21000 (left!21000 acc!252))))) b!2322120))

(declare-fun m!2751553 () Bool)

(assert (=> b!2322119 m!2751553))

(declare-fun m!2751555 () Bool)

(assert (=> b!2322119 m!2751555))

(declare-fun m!2751557 () Bool)

(assert (=> b!2322120 m!2751557))

(assert (=> b!2321891 m!2751213))

(declare-fun b!2322122 () Bool)

(declare-fun tp!736664 () Bool)

(declare-fun e!1488209 () Bool)

(declare-fun tp!736662 () Bool)

(assert (=> b!2322122 (= e!1488209 (and (inv!37621 (left!21000 (right!21330 (left!21000 (left!21000 acc!252))))) tp!736664 (inv!37621 (right!21330 (right!21330 (left!21000 (left!21000 acc!252))))) tp!736662))))

(declare-fun b!2322124 () Bool)

(declare-fun e!1488210 () Bool)

(declare-fun tp!736663 () Bool)

(assert (=> b!2322124 (= e!1488210 tp!736663)))

(declare-fun b!2322123 () Bool)

(assert (=> b!2322123 (= e!1488209 (and (inv!37622 (xs!12035 (right!21330 (left!21000 (left!21000 acc!252))))) e!1488210))))

(assert (=> b!2321891 (= tp!736624 (and (inv!37621 (right!21330 (left!21000 (left!21000 acc!252)))) e!1488209))))

(assert (= (and b!2321891 ((_ is Node!9069) (right!21330 (left!21000 (left!21000 acc!252))))) b!2322122))

(assert (= b!2322123 b!2322124))

(assert (= (and b!2321891 ((_ is Leaf!13313) (right!21330 (left!21000 (left!21000 acc!252))))) b!2322123))

(declare-fun m!2751559 () Bool)

(assert (=> b!2322122 m!2751559))

(declare-fun m!2751561 () Bool)

(assert (=> b!2322122 m!2751561))

(declare-fun m!2751563 () Bool)

(assert (=> b!2322123 m!2751563))

(assert (=> b!2321891 m!2751215))

(declare-fun b!2322125 () Bool)

(declare-fun e!1488211 () Bool)

(declare-fun tp!736665 () Bool)

(assert (=> b!2322125 (= e!1488211 (and tp_is_empty!10823 tp!736665))))

(assert (=> b!2321897 (= tp!736630 e!1488211)))

(assert (= (and b!2321897 ((_ is Cons!27664) (t!207432 (t!207432 (innerList!9129 (xs!12035 acc!252)))))) b!2322125))

(declare-fun tp!736666 () Bool)

(declare-fun tp!736668 () Bool)

(declare-fun b!2322126 () Bool)

(declare-fun e!1488212 () Bool)

(assert (=> b!2322126 (= e!1488212 (and (inv!37621 (left!21000 (left!21000 (left!21000 (right!21330 acc!252))))) tp!736668 (inv!37621 (right!21330 (left!21000 (left!21000 (right!21330 acc!252))))) tp!736666))))

(declare-fun b!2322128 () Bool)

(declare-fun e!1488213 () Bool)

(declare-fun tp!736667 () Bool)

(assert (=> b!2322128 (= e!1488213 tp!736667)))

(declare-fun b!2322127 () Bool)

(assert (=> b!2322127 (= e!1488212 (and (inv!37622 (xs!12035 (left!21000 (left!21000 (right!21330 acc!252))))) e!1488213))))

(assert (=> b!2321898 (= tp!736633 (and (inv!37621 (left!21000 (left!21000 (right!21330 acc!252)))) e!1488212))))

(assert (= (and b!2321898 ((_ is Node!9069) (left!21000 (left!21000 (right!21330 acc!252))))) b!2322126))

(assert (= b!2322127 b!2322128))

(assert (= (and b!2321898 ((_ is Leaf!13313) (left!21000 (left!21000 (right!21330 acc!252))))) b!2322127))

(declare-fun m!2751565 () Bool)

(assert (=> b!2322126 m!2751565))

(declare-fun m!2751567 () Bool)

(assert (=> b!2322126 m!2751567))

(declare-fun m!2751569 () Bool)

(assert (=> b!2322127 m!2751569))

(assert (=> b!2321898 m!2751229))

(declare-fun tp!736671 () Bool)

(declare-fun tp!736669 () Bool)

(declare-fun b!2322129 () Bool)

(declare-fun e!1488214 () Bool)

(assert (=> b!2322129 (= e!1488214 (and (inv!37621 (left!21000 (right!21330 (left!21000 (right!21330 acc!252))))) tp!736671 (inv!37621 (right!21330 (right!21330 (left!21000 (right!21330 acc!252))))) tp!736669))))

(declare-fun b!2322131 () Bool)

(declare-fun e!1488215 () Bool)

(declare-fun tp!736670 () Bool)

(assert (=> b!2322131 (= e!1488215 tp!736670)))

(declare-fun b!2322130 () Bool)

(assert (=> b!2322130 (= e!1488214 (and (inv!37622 (xs!12035 (right!21330 (left!21000 (right!21330 acc!252))))) e!1488215))))

(assert (=> b!2321898 (= tp!736631 (and (inv!37621 (right!21330 (left!21000 (right!21330 acc!252)))) e!1488214))))

(assert (= (and b!2321898 ((_ is Node!9069) (right!21330 (left!21000 (right!21330 acc!252))))) b!2322129))

(assert (= b!2322130 b!2322131))

(assert (= (and b!2321898 ((_ is Leaf!13313) (right!21330 (left!21000 (right!21330 acc!252))))) b!2322130))

(declare-fun m!2751571 () Bool)

(assert (=> b!2322129 m!2751571))

(declare-fun m!2751573 () Bool)

(assert (=> b!2322129 m!2751573))

(declare-fun m!2751575 () Bool)

(assert (=> b!2322130 m!2751575))

(assert (=> b!2321898 m!2751231))

(declare-fun b!2322132 () Bool)

(declare-fun e!1488216 () Bool)

(declare-fun tp!736672 () Bool)

(assert (=> b!2322132 (= e!1488216 (and tp_is_empty!10823 tp!736672))))

(assert (=> b!2321904 (= tp!736637 e!1488216)))

(assert (= (and b!2321904 ((_ is Cons!27664) (t!207432 (innerList!9129 (xs!12035 (right!21330 acc!252)))))) b!2322132))

(declare-fun b!2322133 () Bool)

(declare-fun e!1488217 () Bool)

(declare-fun tp!736673 () Bool)

(assert (=> b!2322133 (= e!1488217 (and tp_is_empty!10823 tp!736673))))

(assert (=> b!2321896 (= tp!736628 e!1488217)))

(assert (= (and b!2321896 ((_ is Cons!27664) (innerList!9129 (xs!12035 (right!21330 (left!21000 acc!252)))))) b!2322133))

(declare-fun b!2322134 () Bool)

(declare-fun e!1488218 () Bool)

(declare-fun tp!736674 () Bool)

(assert (=> b!2322134 (= e!1488218 (and tp_is_empty!10823 tp!736674))))

(assert (=> b!2321900 (= tp!736632 e!1488218)))

(assert (= (and b!2321900 ((_ is Cons!27664) (innerList!9129 (xs!12035 (left!21000 (right!21330 acc!252)))))) b!2322134))

(declare-fun b!2322135 () Bool)

(declare-fun e!1488219 () Bool)

(declare-fun tp!736675 () Bool)

(assert (=> b!2322135 (= e!1488219 (and tp_is_empty!10823 tp!736675))))

(assert (=> b!2321903 (= tp!736635 e!1488219)))

(assert (= (and b!2321903 ((_ is Cons!27664) (innerList!9129 (xs!12035 (right!21330 (right!21330 acc!252)))))) b!2322135))

(declare-fun b!2322136 () Bool)

(declare-fun e!1488220 () Bool)

(declare-fun tp!736676 () Bool)

(assert (=> b!2322136 (= e!1488220 (and tp_is_empty!10823 tp!736676))))

(assert (=> b!2321890 (= tp!736623 e!1488220)))

(assert (= (and b!2321890 ((_ is Cons!27664) (t!207432 (t!207432 (innerList!9129 arr!18))))) b!2322136))

(declare-fun b!2322137 () Bool)

(declare-fun e!1488221 () Bool)

(declare-fun tp!736677 () Bool)

(assert (=> b!2322137 (= e!1488221 (and tp_is_empty!10823 tp!736677))))

(assert (=> b!2321829 (= tp!736622 e!1488221)))

(assert (= (and b!2321829 ((_ is Cons!27664) (innerList!9129 _$4!1105))) b!2322137))

(declare-fun e!1488222 () Bool)

(declare-fun tp!736678 () Bool)

(declare-fun tp!736680 () Bool)

(declare-fun b!2322138 () Bool)

(assert (=> b!2322138 (= e!1488222 (and (inv!37621 (left!21000 (left!21000 (right!21330 (left!21000 acc!252))))) tp!736680 (inv!37621 (right!21330 (left!21000 (right!21330 (left!21000 acc!252))))) tp!736678))))

(declare-fun b!2322140 () Bool)

(declare-fun e!1488223 () Bool)

(declare-fun tp!736679 () Bool)

(assert (=> b!2322140 (= e!1488223 tp!736679)))

(declare-fun b!2322139 () Bool)

(assert (=> b!2322139 (= e!1488222 (and (inv!37622 (xs!12035 (left!21000 (right!21330 (left!21000 acc!252))))) e!1488223))))

(assert (=> b!2321894 (= tp!736629 (and (inv!37621 (left!21000 (right!21330 (left!21000 acc!252)))) e!1488222))))

(assert (= (and b!2321894 ((_ is Node!9069) (left!21000 (right!21330 (left!21000 acc!252))))) b!2322138))

(assert (= b!2322139 b!2322140))

(assert (= (and b!2321894 ((_ is Leaf!13313) (left!21000 (right!21330 (left!21000 acc!252))))) b!2322139))

(declare-fun m!2751577 () Bool)

(assert (=> b!2322138 m!2751577))

(declare-fun m!2751579 () Bool)

(assert (=> b!2322138 m!2751579))

(declare-fun m!2751581 () Bool)

(assert (=> b!2322139 m!2751581))

(assert (=> b!2321894 m!2751223))

(declare-fun tp!736683 () Bool)

(declare-fun e!1488224 () Bool)

(declare-fun b!2322141 () Bool)

(declare-fun tp!736681 () Bool)

(assert (=> b!2322141 (= e!1488224 (and (inv!37621 (left!21000 (right!21330 (right!21330 (left!21000 acc!252))))) tp!736683 (inv!37621 (right!21330 (right!21330 (right!21330 (left!21000 acc!252))))) tp!736681))))

(declare-fun b!2322143 () Bool)

(declare-fun e!1488225 () Bool)

(declare-fun tp!736682 () Bool)

(assert (=> b!2322143 (= e!1488225 tp!736682)))

(declare-fun b!2322142 () Bool)

(assert (=> b!2322142 (= e!1488224 (and (inv!37622 (xs!12035 (right!21330 (right!21330 (left!21000 acc!252))))) e!1488225))))

(assert (=> b!2321894 (= tp!736627 (and (inv!37621 (right!21330 (right!21330 (left!21000 acc!252)))) e!1488224))))

(assert (= (and b!2321894 ((_ is Node!9069) (right!21330 (right!21330 (left!21000 acc!252))))) b!2322141))

(assert (= b!2322142 b!2322143))

(assert (= (and b!2321894 ((_ is Leaf!13313) (right!21330 (right!21330 (left!21000 acc!252))))) b!2322142))

(declare-fun m!2751583 () Bool)

(assert (=> b!2322141 m!2751583))

(declare-fun m!2751585 () Bool)

(assert (=> b!2322141 m!2751585))

(declare-fun m!2751587 () Bool)

(assert (=> b!2322142 m!2751587))

(assert (=> b!2321894 m!2751225))

(declare-fun b!2322144 () Bool)

(declare-fun tp!736684 () Bool)

(declare-fun tp!736686 () Bool)

(declare-fun e!1488226 () Bool)

(assert (=> b!2322144 (= e!1488226 (and (inv!37621 (left!21000 (left!21000 (right!21330 (right!21330 acc!252))))) tp!736686 (inv!37621 (right!21330 (left!21000 (right!21330 (right!21330 acc!252))))) tp!736684))))

(declare-fun b!2322146 () Bool)

(declare-fun e!1488227 () Bool)

(declare-fun tp!736685 () Bool)

(assert (=> b!2322146 (= e!1488227 tp!736685)))

(declare-fun b!2322145 () Bool)

(assert (=> b!2322145 (= e!1488226 (and (inv!37622 (xs!12035 (left!21000 (right!21330 (right!21330 acc!252))))) e!1488227))))

(assert (=> b!2321901 (= tp!736636 (and (inv!37621 (left!21000 (right!21330 (right!21330 acc!252)))) e!1488226))))

(assert (= (and b!2321901 ((_ is Node!9069) (left!21000 (right!21330 (right!21330 acc!252))))) b!2322144))

(assert (= b!2322145 b!2322146))

(assert (= (and b!2321901 ((_ is Leaf!13313) (left!21000 (right!21330 (right!21330 acc!252))))) b!2322145))

(declare-fun m!2751589 () Bool)

(assert (=> b!2322144 m!2751589))

(declare-fun m!2751591 () Bool)

(assert (=> b!2322144 m!2751591))

(declare-fun m!2751593 () Bool)

(assert (=> b!2322145 m!2751593))

(assert (=> b!2321901 m!2751235))

(declare-fun tp!736689 () Bool)

(declare-fun e!1488228 () Bool)

(declare-fun tp!736687 () Bool)

(declare-fun b!2322147 () Bool)

(assert (=> b!2322147 (= e!1488228 (and (inv!37621 (left!21000 (right!21330 (right!21330 (right!21330 acc!252))))) tp!736689 (inv!37621 (right!21330 (right!21330 (right!21330 (right!21330 acc!252))))) tp!736687))))

(declare-fun b!2322149 () Bool)

(declare-fun e!1488229 () Bool)

(declare-fun tp!736688 () Bool)

(assert (=> b!2322149 (= e!1488229 tp!736688)))

(declare-fun b!2322148 () Bool)

(assert (=> b!2322148 (= e!1488228 (and (inv!37622 (xs!12035 (right!21330 (right!21330 (right!21330 acc!252))))) e!1488229))))

(assert (=> b!2321901 (= tp!736634 (and (inv!37621 (right!21330 (right!21330 (right!21330 acc!252)))) e!1488228))))

(assert (= (and b!2321901 ((_ is Node!9069) (right!21330 (right!21330 (right!21330 acc!252))))) b!2322147))

(assert (= b!2322148 b!2322149))

(assert (= (and b!2321901 ((_ is Leaf!13313) (right!21330 (right!21330 (right!21330 acc!252))))) b!2322148))

(declare-fun m!2751595 () Bool)

(assert (=> b!2322147 m!2751595))

(declare-fun m!2751597 () Bool)

(assert (=> b!2322147 m!2751597))

(declare-fun m!2751599 () Bool)

(assert (=> b!2322148 m!2751599))

(assert (=> b!2321901 m!2751237))

(declare-fun b!2322150 () Bool)

(declare-fun e!1488230 () Bool)

(declare-fun tp!736690 () Bool)

(assert (=> b!2322150 (= e!1488230 (and tp_is_empty!10823 tp!736690))))

(assert (=> b!2321893 (= tp!736625 e!1488230)))

(assert (= (and b!2321893 ((_ is Cons!27664) (innerList!9129 (xs!12035 (left!21000 (left!21000 acc!252)))))) b!2322150))

(check-sat (not d!686954) (not b!2322131) (not d!687006) (not b!2322119) (not b!2322101) (not b!2322081) (not b!2322135) (not d!687050) (not b!2322087) (not b!2322047) (not b!2322075) (not d!687012) (not b!2322095) (not b!2322126) (not d!686960) (not b!2322118) (not b!2322065) (not b!2321901) (not b!2322089) (not b!2322090) (not d!687060) (not b!2321894) (not b!2322020) (not b!2322140) (not b!2322111) (not d!686978) (not b!2322143) (not b!2322077) (not b!2322092) (not d!687046) (not b!2322150) (not b!2322127) (not b!2322055) (not b!2322062) (not b!2322130) (not b!2322053) (not b!2322104) (not d!687048) (not b!2321970) (not b!2322060) (not b!2322100) (not b!2322063) (not b!2322070) (not b!2322145) (not b!2322123) (not d!686984) (not d!686994) (not b!2322099) (not d!686962) (not b!2322113) (not d!687052) (not b!2322094) (not b!2322110) (not b!2322097) (not b!2322028) (not b!2321891) (not b!2322059) (not b!2322129) (not b!2322136) (not b!2322078) (not d!687004) (not b!2322139) (not b!2322066) (not b!2321972) (not b!2322144) (not b!2322137) (not b!2322085) (not b!2322088) (not b!2322044) (not b!2322125) (not b!2322124) (not b!2322098) (not b!2322134) (not d!687040) (not b!2322148) (not b!2322043) (not b!2322117) (not b!2322115) (not d!687022) (not b!2322025) (not b!2322086) (not b!2322096) (not b!2321991) (not b!2321992) (not d!686970) (not d!687010) (not d!686952) (not b!2321994) (not b!2322080) (not b!2322091) (not b!2322138) (not b!2321898) (not b!2322050) (not b!2322141) (not b!2321973) (not b!2322121) (not d!686944) (not b!2322122) (not b!2322106) (not d!686946) (not b!2322074) (not b!2322083) (not b!2322133) (not b!2322082) (not d!687070) (not d!686988) (not d!687038) (not b!2322146) (not b!2322147) (not b!2321969) (not b!2321995) (not b!2322073) (not b!2322023) (not b!2322068) tp_is_empty!10823 (not b!2322079) (not b!2322084) (not bm!138398) (not b!2322128) (not b!2322120) (not d!686986) (not b!2322076) (not b!2322057) (not b!2322032) (not b!2322149) (not b!2322030) (not b!2321975) (not b!2322108) (not b!2322132) (not b!2322046) (not d!687030) (not d!687028) (not b!2322142))
(check-sat)
