; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104118 () Bool)

(assert start!104118)

(declare-fun b!1177807 () Bool)

(declare-fun res!532544 () Bool)

(declare-fun e!755798 () Bool)

(assert (=> b!1177807 (=> (not res!532544) (not e!755798))))

(declare-fun j!89 () Int)

(declare-datatypes ((B!1273 0))(
  ( (B!1274 (val!3746 Int)) )
))
(declare-datatypes ((List!11693 0))(
  ( (Nil!11669) (Cons!11669 (h!17070 B!1273) (t!111185 List!11693)) )
))
(declare-fun l!2952 () List!11693)

(declare-fun size!9233 (List!11693) Int)

(assert (=> b!1177807 (= res!532544 (<= j!89 (size!9233 l!2952)))))

(declare-fun b!1177808 () Bool)

(declare-fun e!755799 () Bool)

(declare-fun tp_is_empty!5795 () Bool)

(declare-fun tp!335234 () Bool)

(assert (=> b!1177808 (= e!755799 (and tp_is_empty!5795 tp!335234))))

(declare-fun b!1177809 () Bool)

(declare-fun res!532545 () Bool)

(assert (=> b!1177809 (=> (not res!532545) (not e!755798))))

(assert (=> b!1177809 (= res!532545 (<= (- j!89 1) (size!9233 (t!111185 l!2952))))))

(declare-fun res!532542 () Bool)

(assert (=> start!104118 (=> (not res!532542) (not e!755798))))

(declare-fun i!757 () Int)

(assert (=> start!104118 (= res!532542 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!104118 e!755798))

(assert (=> start!104118 true))

(assert (=> start!104118 e!755799))

(declare-fun b!1177810 () Bool)

(declare-fun subseq!291 (List!11693 List!11693) Bool)

(declare-fun slice!389 (List!11693 Int Int) List!11693)

(assert (=> b!1177810 (= e!755798 (not (subseq!291 (slice!389 l!2952 i!757 j!89) l!2952)))))

(assert (=> b!1177810 (subseq!291 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (t!111185 l!2952))))

(declare-datatypes ((Unit!18006 0))(
  ( (Unit!18007) )
))
(declare-fun lt!406124 () Unit!18006)

(declare-fun lemmaSliceSubseq!128 (List!11693 Int Int) Unit!18006)

(assert (=> b!1177810 (= lt!406124 (lemmaSliceSubseq!128 (t!111185 l!2952) i!757 (- j!89 1)))))

(declare-fun b!1177811 () Bool)

(declare-fun res!532543 () Bool)

(assert (=> b!1177811 (=> (not res!532543) (not e!755798))))

(get-info :version)

(assert (=> b!1177811 (= res!532543 (and (not ((_ is Nil!11669) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (<= i!757 0) (>= (- j!89 1) i!757)))))

(assert (= (and start!104118 res!532542) b!1177807))

(assert (= (and b!1177807 res!532544) b!1177811))

(assert (= (and b!1177811 res!532543) b!1177809))

(assert (= (and b!1177809 res!532545) b!1177810))

(assert (= (and start!104118 ((_ is Cons!11669) l!2952)) b!1177808))

(declare-fun m!1354711 () Bool)

(assert (=> b!1177807 m!1354711))

(declare-fun m!1354713 () Bool)

(assert (=> b!1177809 m!1354713))

(declare-fun m!1354715 () Bool)

(assert (=> b!1177810 m!1354715))

(assert (=> b!1177810 m!1354715))

(declare-fun m!1354717 () Bool)

(assert (=> b!1177810 m!1354717))

(declare-fun m!1354719 () Bool)

(assert (=> b!1177810 m!1354719))

(declare-fun m!1354721 () Bool)

(assert (=> b!1177810 m!1354721))

(declare-fun m!1354723 () Bool)

(assert (=> b!1177810 m!1354723))

(assert (=> b!1177810 m!1354719))

(check-sat (not b!1177807) (not b!1177809) tp_is_empty!5795 (not b!1177810) (not b!1177808))
(check-sat)
(get-model)

(declare-fun d!337377 () Bool)

(declare-fun lt!406127 () Int)

(assert (=> d!337377 (>= lt!406127 0)))

(declare-fun e!755810 () Int)

(assert (=> d!337377 (= lt!406127 e!755810)))

(declare-fun c!196334 () Bool)

(assert (=> d!337377 (= c!196334 ((_ is Nil!11669) (t!111185 l!2952)))))

(assert (=> d!337377 (= (size!9233 (t!111185 l!2952)) lt!406127)))

(declare-fun b!1177824 () Bool)

(assert (=> b!1177824 (= e!755810 0)))

(declare-fun b!1177825 () Bool)

(assert (=> b!1177825 (= e!755810 (+ 1 (size!9233 (t!111185 (t!111185 l!2952)))))))

(assert (= (and d!337377 c!196334) b!1177824))

(assert (= (and d!337377 (not c!196334)) b!1177825))

(declare-fun m!1354725 () Bool)

(assert (=> b!1177825 m!1354725))

(assert (=> b!1177809 d!337377))

(declare-fun e!755829 () Bool)

(declare-fun b!1177844 () Bool)

(assert (=> b!1177844 (= e!755829 (subseq!291 (t!111185 (slice!389 (t!111185 l!2952) i!757 (- j!89 1))) (t!111185 (t!111185 l!2952))))))

(declare-fun d!337379 () Bool)

(declare-fun res!532570 () Bool)

(declare-fun e!755828 () Bool)

(assert (=> d!337379 (=> res!532570 e!755828)))

(assert (=> d!337379 (= res!532570 ((_ is Nil!11669) (slice!389 (t!111185 l!2952) i!757 (- j!89 1))))))

(assert (=> d!337379 (= (subseq!291 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (t!111185 l!2952)) e!755828)))

(declare-fun b!1177843 () Bool)

(declare-fun e!755827 () Bool)

(declare-fun e!755830 () Bool)

(assert (=> b!1177843 (= e!755827 e!755830)))

(declare-fun res!532572 () Bool)

(assert (=> b!1177843 (=> res!532572 e!755830)))

(assert (=> b!1177843 (= res!532572 e!755829)))

(declare-fun res!532573 () Bool)

(assert (=> b!1177843 (=> (not res!532573) (not e!755829))))

(assert (=> b!1177843 (= res!532573 (= (h!17070 (slice!389 (t!111185 l!2952) i!757 (- j!89 1))) (h!17070 (t!111185 l!2952))))))

(declare-fun b!1177845 () Bool)

(assert (=> b!1177845 (= e!755830 (subseq!291 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (t!111185 (t!111185 l!2952))))))

(declare-fun b!1177842 () Bool)

(assert (=> b!1177842 (= e!755828 e!755827)))

(declare-fun res!532571 () Bool)

(assert (=> b!1177842 (=> (not res!532571) (not e!755827))))

(assert (=> b!1177842 (= res!532571 ((_ is Cons!11669) (t!111185 l!2952)))))

(assert (= (and d!337379 (not res!532570)) b!1177842))

(assert (= (and b!1177842 res!532571) b!1177843))

(assert (= (and b!1177843 res!532573) b!1177844))

(assert (= (and b!1177843 (not res!532572)) b!1177845))

(declare-fun m!1354743 () Bool)

(assert (=> b!1177844 m!1354743))

(assert (=> b!1177845 m!1354719))

(declare-fun m!1354745 () Bool)

(assert (=> b!1177845 m!1354745))

(assert (=> b!1177810 d!337379))

(declare-fun d!337389 () Bool)

(declare-fun take!97 (List!11693 Int) List!11693)

(declare-fun drop!509 (List!11693 Int) List!11693)

(assert (=> d!337389 (= (slice!389 l!2952 i!757 j!89) (take!97 (drop!509 l!2952 i!757) (- j!89 i!757)))))

(declare-fun bs!286748 () Bool)

(assert (= bs!286748 d!337389))

(declare-fun m!1354747 () Bool)

(assert (=> bs!286748 m!1354747))

(assert (=> bs!286748 m!1354747))

(declare-fun m!1354749 () Bool)

(assert (=> bs!286748 m!1354749))

(assert (=> b!1177810 d!337389))

(declare-fun d!337391 () Bool)

(assert (=> d!337391 (= (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (take!97 (drop!509 (t!111185 l!2952) i!757) (- (- j!89 1) i!757)))))

(declare-fun bs!286749 () Bool)

(assert (= bs!286749 d!337391))

(declare-fun m!1354751 () Bool)

(assert (=> bs!286749 m!1354751))

(assert (=> bs!286749 m!1354751))

(declare-fun m!1354753 () Bool)

(assert (=> bs!286749 m!1354753))

(assert (=> b!1177810 d!337391))

(declare-fun b!1177850 () Bool)

(declare-fun e!755835 () Bool)

(assert (=> b!1177850 (= e!755835 (subseq!291 (t!111185 (slice!389 l!2952 i!757 j!89)) (t!111185 l!2952)))))

(declare-fun d!337393 () Bool)

(declare-fun res!532576 () Bool)

(declare-fun e!755834 () Bool)

(assert (=> d!337393 (=> res!532576 e!755834)))

(assert (=> d!337393 (= res!532576 ((_ is Nil!11669) (slice!389 l!2952 i!757 j!89)))))

(assert (=> d!337393 (= (subseq!291 (slice!389 l!2952 i!757 j!89) l!2952) e!755834)))

(declare-fun b!1177849 () Bool)

(declare-fun e!755833 () Bool)

(declare-fun e!755836 () Bool)

(assert (=> b!1177849 (= e!755833 e!755836)))

(declare-fun res!532578 () Bool)

(assert (=> b!1177849 (=> res!532578 e!755836)))

(assert (=> b!1177849 (= res!532578 e!755835)))

(declare-fun res!532579 () Bool)

(assert (=> b!1177849 (=> (not res!532579) (not e!755835))))

(assert (=> b!1177849 (= res!532579 (= (h!17070 (slice!389 l!2952 i!757 j!89)) (h!17070 l!2952)))))

(declare-fun b!1177851 () Bool)

(assert (=> b!1177851 (= e!755836 (subseq!291 (slice!389 l!2952 i!757 j!89) (t!111185 l!2952)))))

(declare-fun b!1177848 () Bool)

(assert (=> b!1177848 (= e!755834 e!755833)))

(declare-fun res!532577 () Bool)

(assert (=> b!1177848 (=> (not res!532577) (not e!755833))))

(assert (=> b!1177848 (= res!532577 ((_ is Cons!11669) l!2952))))

(assert (= (and d!337393 (not res!532576)) b!1177848))

(assert (= (and b!1177848 res!532577) b!1177849))

(assert (= (and b!1177849 res!532579) b!1177850))

(assert (= (and b!1177849 (not res!532578)) b!1177851))

(declare-fun m!1354755 () Bool)

(assert (=> b!1177850 m!1354755))

(assert (=> b!1177851 m!1354715))

(declare-fun m!1354757 () Bool)

(assert (=> b!1177851 m!1354757))

(assert (=> b!1177810 d!337393))

(declare-fun d!337395 () Bool)

(assert (=> d!337395 (subseq!291 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (t!111185 l!2952))))

(declare-fun lt!406137 () Unit!18006)

(declare-fun choose!7635 (List!11693 Int Int) Unit!18006)

(assert (=> d!337395 (= lt!406137 (choose!7635 (t!111185 l!2952) i!757 (- j!89 1)))))

(declare-fun e!755847 () Bool)

(assert (=> d!337395 e!755847))

(declare-fun res!532583 () Bool)

(assert (=> d!337395 (=> (not res!532583) (not e!755847))))

(assert (=> d!337395 (= res!532583 (and (>= i!757 0) (>= (- j!89 1) i!757)))))

(assert (=> d!337395 (= (lemmaSliceSubseq!128 (t!111185 l!2952) i!757 (- j!89 1)) lt!406137)))

(declare-fun b!1177868 () Bool)

(assert (=> b!1177868 (= e!755847 (<= (- j!89 1) (size!9233 (t!111185 l!2952))))))

(assert (= (and d!337395 res!532583) b!1177868))

(assert (=> d!337395 m!1354719))

(assert (=> d!337395 m!1354719))

(assert (=> d!337395 m!1354721))

(declare-fun m!1354763 () Bool)

(assert (=> d!337395 m!1354763))

(assert (=> b!1177868 m!1354713))

(assert (=> b!1177810 d!337395))

(declare-fun d!337401 () Bool)

(declare-fun lt!406138 () Int)

(assert (=> d!337401 (>= lt!406138 0)))

(declare-fun e!755848 () Int)

(assert (=> d!337401 (= lt!406138 e!755848)))

(declare-fun c!196339 () Bool)

(assert (=> d!337401 (= c!196339 ((_ is Nil!11669) l!2952))))

(assert (=> d!337401 (= (size!9233 l!2952) lt!406138)))

(declare-fun b!1177869 () Bool)

(assert (=> b!1177869 (= e!755848 0)))

(declare-fun b!1177870 () Bool)

(assert (=> b!1177870 (= e!755848 (+ 1 (size!9233 (t!111185 l!2952))))))

(assert (= (and d!337401 c!196339) b!1177869))

(assert (= (and d!337401 (not c!196339)) b!1177870))

(assert (=> b!1177870 m!1354713))

(assert (=> b!1177807 d!337401))

(declare-fun b!1177875 () Bool)

(declare-fun e!755851 () Bool)

(declare-fun tp!335240 () Bool)

(assert (=> b!1177875 (= e!755851 (and tp_is_empty!5795 tp!335240))))

(assert (=> b!1177808 (= tp!335234 e!755851)))

(assert (= (and b!1177808 ((_ is Cons!11669) (t!111185 l!2952))) b!1177875))

(check-sat (not b!1177868) (not b!1177851) (not b!1177850) tp_is_empty!5795 (not d!337395) (not b!1177870) (not b!1177844) (not d!337389) (not b!1177825) (not d!337391) (not b!1177845) (not b!1177875))
(check-sat)
(get-model)

(assert (=> b!1177870 d!337377))

(declare-fun b!1177878 () Bool)

(declare-fun e!755854 () Bool)

(assert (=> b!1177878 (= e!755854 (subseq!291 (t!111185 (t!111185 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)))) (t!111185 (t!111185 (t!111185 l!2952)))))))

(declare-fun d!337403 () Bool)

(declare-fun res!532584 () Bool)

(declare-fun e!755853 () Bool)

(assert (=> d!337403 (=> res!532584 e!755853)))

(assert (=> d!337403 (= res!532584 ((_ is Nil!11669) (t!111185 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)))))))

(assert (=> d!337403 (= (subseq!291 (t!111185 (slice!389 (t!111185 l!2952) i!757 (- j!89 1))) (t!111185 (t!111185 l!2952))) e!755853)))

(declare-fun b!1177877 () Bool)

(declare-fun e!755852 () Bool)

(declare-fun e!755855 () Bool)

(assert (=> b!1177877 (= e!755852 e!755855)))

(declare-fun res!532586 () Bool)

(assert (=> b!1177877 (=> res!532586 e!755855)))

(assert (=> b!1177877 (= res!532586 e!755854)))

(declare-fun res!532587 () Bool)

(assert (=> b!1177877 (=> (not res!532587) (not e!755854))))

(assert (=> b!1177877 (= res!532587 (= (h!17070 (t!111185 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)))) (h!17070 (t!111185 (t!111185 l!2952)))))))

(declare-fun b!1177879 () Bool)

(assert (=> b!1177879 (= e!755855 (subseq!291 (t!111185 (slice!389 (t!111185 l!2952) i!757 (- j!89 1))) (t!111185 (t!111185 (t!111185 l!2952)))))))

(declare-fun b!1177876 () Bool)

(assert (=> b!1177876 (= e!755853 e!755852)))

(declare-fun res!532585 () Bool)

(assert (=> b!1177876 (=> (not res!532585) (not e!755852))))

(assert (=> b!1177876 (= res!532585 ((_ is Cons!11669) (t!111185 (t!111185 l!2952))))))

(assert (= (and d!337403 (not res!532584)) b!1177876))

(assert (= (and b!1177876 res!532585) b!1177877))

(assert (= (and b!1177877 res!532587) b!1177878))

(assert (= (and b!1177877 (not res!532586)) b!1177879))

(declare-fun m!1354765 () Bool)

(assert (=> b!1177878 m!1354765))

(declare-fun m!1354767 () Bool)

(assert (=> b!1177879 m!1354767))

(assert (=> b!1177844 d!337403))

(declare-fun b!1177894 () Bool)

(declare-fun e!755864 () Int)

(assert (=> b!1177894 (= e!755864 (size!9233 (drop!509 (t!111185 l!2952) i!757)))))

(declare-fun b!1177895 () Bool)

(declare-fun e!755866 () Int)

(assert (=> b!1177895 (= e!755866 e!755864)))

(declare-fun c!196346 () Bool)

(assert (=> b!1177895 (= c!196346 (>= (- (- j!89 1) i!757) (size!9233 (drop!509 (t!111185 l!2952) i!757))))))

(declare-fun d!337405 () Bool)

(declare-fun e!755867 () Bool)

(assert (=> d!337405 e!755867))

(declare-fun res!532590 () Bool)

(assert (=> d!337405 (=> (not res!532590) (not e!755867))))

(declare-fun lt!406141 () List!11693)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1629 (List!11693) (InoxSet B!1273))

(assert (=> d!337405 (= res!532590 (= ((_ map implies) (content!1629 lt!406141) (content!1629 (drop!509 (t!111185 l!2952) i!757))) ((as const (InoxSet B!1273)) true)))))

(declare-fun e!755865 () List!11693)

(assert (=> d!337405 (= lt!406141 e!755865)))

(declare-fun c!196347 () Bool)

(assert (=> d!337405 (= c!196347 (or ((_ is Nil!11669) (drop!509 (t!111185 l!2952) i!757)) (<= (- (- j!89 1) i!757) 0)))))

(assert (=> d!337405 (= (take!97 (drop!509 (t!111185 l!2952) i!757) (- (- j!89 1) i!757)) lt!406141)))

(declare-fun b!1177896 () Bool)

(assert (=> b!1177896 (= e!755867 (= (size!9233 lt!406141) e!755866))))

(declare-fun c!196348 () Bool)

(assert (=> b!1177896 (= c!196348 (<= (- (- j!89 1) i!757) 0))))

(declare-fun b!1177897 () Bool)

(assert (=> b!1177897 (= e!755864 (- (- j!89 1) i!757))))

(declare-fun b!1177898 () Bool)

(assert (=> b!1177898 (= e!755866 0)))

(declare-fun b!1177899 () Bool)

(assert (=> b!1177899 (= e!755865 Nil!11669)))

(declare-fun b!1177900 () Bool)

(assert (=> b!1177900 (= e!755865 (Cons!11669 (h!17070 (drop!509 (t!111185 l!2952) i!757)) (take!97 (t!111185 (drop!509 (t!111185 l!2952) i!757)) (- (- (- j!89 1) i!757) 1))))))

(assert (= (and d!337405 c!196347) b!1177899))

(assert (= (and d!337405 (not c!196347)) b!1177900))

(assert (= (and d!337405 res!532590) b!1177896))

(assert (= (and b!1177896 c!196348) b!1177898))

(assert (= (and b!1177896 (not c!196348)) b!1177895))

(assert (= (and b!1177895 c!196346) b!1177894))

(assert (= (and b!1177895 (not c!196346)) b!1177897))

(declare-fun m!1354769 () Bool)

(assert (=> b!1177900 m!1354769))

(assert (=> b!1177894 m!1354751))

(declare-fun m!1354771 () Bool)

(assert (=> b!1177894 m!1354771))

(declare-fun m!1354773 () Bool)

(assert (=> d!337405 m!1354773))

(assert (=> d!337405 m!1354751))

(declare-fun m!1354775 () Bool)

(assert (=> d!337405 m!1354775))

(assert (=> b!1177895 m!1354751))

(assert (=> b!1177895 m!1354771))

(declare-fun m!1354777 () Bool)

(assert (=> b!1177896 m!1354777))

(assert (=> d!337391 d!337405))

(declare-fun b!1177948 () Bool)

(declare-fun e!755902 () List!11693)

(assert (=> b!1177948 (= e!755902 (drop!509 (t!111185 (t!111185 l!2952)) (- i!757 1)))))

(declare-fun bm!82458 () Bool)

(declare-fun call!82463 () Int)

(assert (=> bm!82458 (= call!82463 (size!9233 (t!111185 l!2952)))))

(declare-fun b!1177949 () Bool)

(declare-fun e!755900 () List!11693)

(assert (=> b!1177949 (= e!755900 Nil!11669)))

(declare-fun b!1177950 () Bool)

(declare-fun e!755901 () Bool)

(declare-fun lt!406147 () List!11693)

(declare-fun e!755898 () Int)

(assert (=> b!1177950 (= e!755901 (= (size!9233 lt!406147) e!755898))))

(declare-fun c!196369 () Bool)

(assert (=> b!1177950 (= c!196369 (<= i!757 0))))

(declare-fun b!1177951 () Bool)

(assert (=> b!1177951 (= e!755902 (t!111185 l!2952))))

(declare-fun b!1177952 () Bool)

(declare-fun e!755899 () Int)

(assert (=> b!1177952 (= e!755899 (- call!82463 i!757))))

(declare-fun d!337409 () Bool)

(assert (=> d!337409 e!755901))

(declare-fun res!532604 () Bool)

(assert (=> d!337409 (=> (not res!532604) (not e!755901))))

(assert (=> d!337409 (= res!532604 (= ((_ map implies) (content!1629 lt!406147) (content!1629 (t!111185 l!2952))) ((as const (InoxSet B!1273)) true)))))

(assert (=> d!337409 (= lt!406147 e!755900)))

(declare-fun c!196366 () Bool)

(assert (=> d!337409 (= c!196366 ((_ is Nil!11669) (t!111185 l!2952)))))

(assert (=> d!337409 (= (drop!509 (t!111185 l!2952) i!757) lt!406147)))

(declare-fun b!1177953 () Bool)

(assert (=> b!1177953 (= e!755899 0)))

(declare-fun b!1177954 () Bool)

(assert (=> b!1177954 (= e!755900 e!755902)))

(declare-fun c!196367 () Bool)

(assert (=> b!1177954 (= c!196367 (<= i!757 0))))

(declare-fun b!1177955 () Bool)

(assert (=> b!1177955 (= e!755898 call!82463)))

(declare-fun b!1177956 () Bool)

(assert (=> b!1177956 (= e!755898 e!755899)))

(declare-fun c!196368 () Bool)

(assert (=> b!1177956 (= c!196368 (>= i!757 call!82463))))

(assert (= (and d!337409 c!196366) b!1177949))

(assert (= (and d!337409 (not c!196366)) b!1177954))

(assert (= (and b!1177954 c!196367) b!1177951))

(assert (= (and b!1177954 (not c!196367)) b!1177948))

(assert (= (and d!337409 res!532604) b!1177950))

(assert (= (and b!1177950 c!196369) b!1177955))

(assert (= (and b!1177950 (not c!196369)) b!1177956))

(assert (= (and b!1177956 c!196368) b!1177953))

(assert (= (and b!1177956 (not c!196368)) b!1177952))

(assert (= (or b!1177955 b!1177956 b!1177952) bm!82458))

(declare-fun m!1354797 () Bool)

(assert (=> b!1177948 m!1354797))

(assert (=> bm!82458 m!1354713))

(declare-fun m!1354799 () Bool)

(assert (=> b!1177950 m!1354799))

(declare-fun m!1354801 () Bool)

(assert (=> d!337409 m!1354801))

(declare-fun m!1354803 () Bool)

(assert (=> d!337409 m!1354803))

(assert (=> d!337391 d!337409))

(declare-fun d!337419 () Bool)

(declare-fun lt!406148 () Int)

(assert (=> d!337419 (>= lt!406148 0)))

(declare-fun e!755903 () Int)

(assert (=> d!337419 (= lt!406148 e!755903)))

(declare-fun c!196370 () Bool)

(assert (=> d!337419 (= c!196370 ((_ is Nil!11669) (t!111185 (t!111185 l!2952))))))

(assert (=> d!337419 (= (size!9233 (t!111185 (t!111185 l!2952))) lt!406148)))

(declare-fun b!1177957 () Bool)

(assert (=> b!1177957 (= e!755903 0)))

(declare-fun b!1177958 () Bool)

(assert (=> b!1177958 (= e!755903 (+ 1 (size!9233 (t!111185 (t!111185 (t!111185 l!2952))))))))

(assert (= (and d!337419 c!196370) b!1177957))

(assert (= (and d!337419 (not c!196370)) b!1177958))

(declare-fun m!1354805 () Bool)

(assert (=> b!1177958 m!1354805))

(assert (=> b!1177825 d!337419))

(assert (=> d!337395 d!337379))

(assert (=> d!337395 d!337391))

(declare-fun d!337421 () Bool)

(assert (=> d!337421 (subseq!291 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (t!111185 l!2952))))

(assert (=> d!337421 true))

(declare-fun _$25!185 () Unit!18006)

(assert (=> d!337421 (= (choose!7635 (t!111185 l!2952) i!757 (- j!89 1)) _$25!185)))

(declare-fun bs!286751 () Bool)

(assert (= bs!286751 d!337421))

(assert (=> bs!286751 m!1354719))

(assert (=> bs!286751 m!1354719))

(assert (=> bs!286751 m!1354721))

(assert (=> d!337395 d!337421))

(declare-fun b!1177961 () Bool)

(declare-fun e!755906 () Bool)

(assert (=> b!1177961 (= e!755906 (subseq!291 (t!111185 (t!111185 (slice!389 l!2952 i!757 j!89))) (t!111185 (t!111185 l!2952))))))

(declare-fun d!337423 () Bool)

(declare-fun res!532605 () Bool)

(declare-fun e!755905 () Bool)

(assert (=> d!337423 (=> res!532605 e!755905)))

(assert (=> d!337423 (= res!532605 ((_ is Nil!11669) (t!111185 (slice!389 l!2952 i!757 j!89))))))

(assert (=> d!337423 (= (subseq!291 (t!111185 (slice!389 l!2952 i!757 j!89)) (t!111185 l!2952)) e!755905)))

(declare-fun b!1177960 () Bool)

(declare-fun e!755904 () Bool)

(declare-fun e!755907 () Bool)

(assert (=> b!1177960 (= e!755904 e!755907)))

(declare-fun res!532607 () Bool)

(assert (=> b!1177960 (=> res!532607 e!755907)))

(assert (=> b!1177960 (= res!532607 e!755906)))

(declare-fun res!532608 () Bool)

(assert (=> b!1177960 (=> (not res!532608) (not e!755906))))

(assert (=> b!1177960 (= res!532608 (= (h!17070 (t!111185 (slice!389 l!2952 i!757 j!89))) (h!17070 (t!111185 l!2952))))))

(declare-fun b!1177962 () Bool)

(assert (=> b!1177962 (= e!755907 (subseq!291 (t!111185 (slice!389 l!2952 i!757 j!89)) (t!111185 (t!111185 l!2952))))))

(declare-fun b!1177959 () Bool)

(assert (=> b!1177959 (= e!755905 e!755904)))

(declare-fun res!532606 () Bool)

(assert (=> b!1177959 (=> (not res!532606) (not e!755904))))

(assert (=> b!1177959 (= res!532606 ((_ is Cons!11669) (t!111185 l!2952)))))

(assert (= (and d!337423 (not res!532605)) b!1177959))

(assert (= (and b!1177959 res!532606) b!1177960))

(assert (= (and b!1177960 res!532608) b!1177961))

(assert (= (and b!1177960 (not res!532607)) b!1177962))

(declare-fun m!1354807 () Bool)

(assert (=> b!1177961 m!1354807))

(declare-fun m!1354809 () Bool)

(assert (=> b!1177962 m!1354809))

(assert (=> b!1177850 d!337423))

(declare-fun b!1177965 () Bool)

(declare-fun e!755910 () Bool)

(assert (=> b!1177965 (= e!755910 (subseq!291 (t!111185 (slice!389 l!2952 i!757 j!89)) (t!111185 (t!111185 l!2952))))))

(declare-fun d!337425 () Bool)

(declare-fun res!532609 () Bool)

(declare-fun e!755909 () Bool)

(assert (=> d!337425 (=> res!532609 e!755909)))

(assert (=> d!337425 (= res!532609 ((_ is Nil!11669) (slice!389 l!2952 i!757 j!89)))))

(assert (=> d!337425 (= (subseq!291 (slice!389 l!2952 i!757 j!89) (t!111185 l!2952)) e!755909)))

(declare-fun b!1177964 () Bool)

(declare-fun e!755908 () Bool)

(declare-fun e!755911 () Bool)

(assert (=> b!1177964 (= e!755908 e!755911)))

(declare-fun res!532611 () Bool)

(assert (=> b!1177964 (=> res!532611 e!755911)))

(assert (=> b!1177964 (= res!532611 e!755910)))

(declare-fun res!532612 () Bool)

(assert (=> b!1177964 (=> (not res!532612) (not e!755910))))

(assert (=> b!1177964 (= res!532612 (= (h!17070 (slice!389 l!2952 i!757 j!89)) (h!17070 (t!111185 l!2952))))))

(declare-fun b!1177966 () Bool)

(assert (=> b!1177966 (= e!755911 (subseq!291 (slice!389 l!2952 i!757 j!89) (t!111185 (t!111185 l!2952))))))

(declare-fun b!1177963 () Bool)

(assert (=> b!1177963 (= e!755909 e!755908)))

(declare-fun res!532610 () Bool)

(assert (=> b!1177963 (=> (not res!532610) (not e!755908))))

(assert (=> b!1177963 (= res!532610 ((_ is Cons!11669) (t!111185 l!2952)))))

(assert (= (and d!337425 (not res!532609)) b!1177963))

(assert (= (and b!1177963 res!532610) b!1177964))

(assert (= (and b!1177964 res!532612) b!1177965))

(assert (= (and b!1177964 (not res!532611)) b!1177966))

(assert (=> b!1177965 m!1354809))

(assert (=> b!1177966 m!1354715))

(declare-fun m!1354811 () Bool)

(assert (=> b!1177966 m!1354811))

(assert (=> b!1177851 d!337425))

(declare-fun e!755918 () Bool)

(declare-fun b!1177977 () Bool)

(assert (=> b!1177977 (= e!755918 (subseq!291 (t!111185 (slice!389 (t!111185 l!2952) i!757 (- j!89 1))) (t!111185 (t!111185 (t!111185 l!2952)))))))

(declare-fun d!337427 () Bool)

(declare-fun res!532613 () Bool)

(declare-fun e!755917 () Bool)

(assert (=> d!337427 (=> res!532613 e!755917)))

(assert (=> d!337427 (= res!532613 ((_ is Nil!11669) (slice!389 (t!111185 l!2952) i!757 (- j!89 1))))))

(assert (=> d!337427 (= (subseq!291 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (t!111185 (t!111185 l!2952))) e!755917)))

(declare-fun b!1177976 () Bool)

(declare-fun e!755916 () Bool)

(declare-fun e!755919 () Bool)

(assert (=> b!1177976 (= e!755916 e!755919)))

(declare-fun res!532615 () Bool)

(assert (=> b!1177976 (=> res!532615 e!755919)))

(assert (=> b!1177976 (= res!532615 e!755918)))

(declare-fun res!532616 () Bool)

(assert (=> b!1177976 (=> (not res!532616) (not e!755918))))

(assert (=> b!1177976 (= res!532616 (= (h!17070 (slice!389 (t!111185 l!2952) i!757 (- j!89 1))) (h!17070 (t!111185 (t!111185 l!2952)))))))

(declare-fun b!1177978 () Bool)

(assert (=> b!1177978 (= e!755919 (subseq!291 (slice!389 (t!111185 l!2952) i!757 (- j!89 1)) (t!111185 (t!111185 (t!111185 l!2952)))))))

(declare-fun b!1177975 () Bool)

(assert (=> b!1177975 (= e!755917 e!755916)))

(declare-fun res!532614 () Bool)

(assert (=> b!1177975 (=> (not res!532614) (not e!755916))))

(assert (=> b!1177975 (= res!532614 ((_ is Cons!11669) (t!111185 (t!111185 l!2952))))))

(assert (= (and d!337427 (not res!532613)) b!1177975))

(assert (= (and b!1177975 res!532614) b!1177976))

(assert (= (and b!1177976 res!532616) b!1177977))

(assert (= (and b!1177976 (not res!532615)) b!1177978))

(assert (=> b!1177977 m!1354767))

(assert (=> b!1177978 m!1354719))

(declare-fun m!1354813 () Bool)

(assert (=> b!1177978 m!1354813))

(assert (=> b!1177845 d!337427))

(assert (=> b!1177868 d!337377))

(declare-fun b!1177989 () Bool)

(declare-fun e!755926 () Int)

(assert (=> b!1177989 (= e!755926 (size!9233 (drop!509 l!2952 i!757)))))

(declare-fun b!1177990 () Bool)

(declare-fun e!755928 () Int)

(assert (=> b!1177990 (= e!755928 e!755926)))

(declare-fun c!196379 () Bool)

(assert (=> b!1177990 (= c!196379 (>= (- j!89 i!757) (size!9233 (drop!509 l!2952 i!757))))))

(declare-fun d!337429 () Bool)

(declare-fun e!755929 () Bool)

(assert (=> d!337429 e!755929))

(declare-fun res!532619 () Bool)

(assert (=> d!337429 (=> (not res!532619) (not e!755929))))

(declare-fun lt!406151 () List!11693)

(assert (=> d!337429 (= res!532619 (= ((_ map implies) (content!1629 lt!406151) (content!1629 (drop!509 l!2952 i!757))) ((as const (InoxSet B!1273)) true)))))

(declare-fun e!755927 () List!11693)

(assert (=> d!337429 (= lt!406151 e!755927)))

(declare-fun c!196380 () Bool)

(assert (=> d!337429 (= c!196380 (or ((_ is Nil!11669) (drop!509 l!2952 i!757)) (<= (- j!89 i!757) 0)))))

(assert (=> d!337429 (= (take!97 (drop!509 l!2952 i!757) (- j!89 i!757)) lt!406151)))

(declare-fun b!1177991 () Bool)

(assert (=> b!1177991 (= e!755929 (= (size!9233 lt!406151) e!755928))))

(declare-fun c!196381 () Bool)

(assert (=> b!1177991 (= c!196381 (<= (- j!89 i!757) 0))))

(declare-fun b!1177992 () Bool)

(assert (=> b!1177992 (= e!755926 (- j!89 i!757))))

(declare-fun b!1177993 () Bool)

(assert (=> b!1177993 (= e!755928 0)))

(declare-fun b!1177994 () Bool)

(assert (=> b!1177994 (= e!755927 Nil!11669)))

(declare-fun b!1177995 () Bool)

(assert (=> b!1177995 (= e!755927 (Cons!11669 (h!17070 (drop!509 l!2952 i!757)) (take!97 (t!111185 (drop!509 l!2952 i!757)) (- (- j!89 i!757) 1))))))

(assert (= (and d!337429 c!196380) b!1177994))

(assert (= (and d!337429 (not c!196380)) b!1177995))

(assert (= (and d!337429 res!532619) b!1177991))

(assert (= (and b!1177991 c!196381) b!1177993))

(assert (= (and b!1177991 (not c!196381)) b!1177990))

(assert (= (and b!1177990 c!196379) b!1177989))

(assert (= (and b!1177990 (not c!196379)) b!1177992))

(declare-fun m!1354815 () Bool)

(assert (=> b!1177995 m!1354815))

(assert (=> b!1177989 m!1354747))

(declare-fun m!1354817 () Bool)

(assert (=> b!1177989 m!1354817))

(declare-fun m!1354819 () Bool)

(assert (=> d!337429 m!1354819))

(assert (=> d!337429 m!1354747))

(declare-fun m!1354821 () Bool)

(assert (=> d!337429 m!1354821))

(assert (=> b!1177990 m!1354747))

(assert (=> b!1177990 m!1354817))

(declare-fun m!1354823 () Bool)

(assert (=> b!1177991 m!1354823))

(assert (=> d!337389 d!337429))

(declare-fun b!1177996 () Bool)

(declare-fun e!755934 () List!11693)

(assert (=> b!1177996 (= e!755934 (drop!509 (t!111185 l!2952) (- i!757 1)))))

(declare-fun bm!82461 () Bool)

(declare-fun call!82466 () Int)

(assert (=> bm!82461 (= call!82466 (size!9233 l!2952))))

(declare-fun b!1177997 () Bool)

(declare-fun e!755932 () List!11693)

(assert (=> b!1177997 (= e!755932 Nil!11669)))

(declare-fun b!1177998 () Bool)

(declare-fun e!755933 () Bool)

(declare-fun lt!406152 () List!11693)

(declare-fun e!755930 () Int)

(assert (=> b!1177998 (= e!755933 (= (size!9233 lt!406152) e!755930))))

(declare-fun c!196385 () Bool)

(assert (=> b!1177998 (= c!196385 (<= i!757 0))))

(declare-fun b!1177999 () Bool)

(assert (=> b!1177999 (= e!755934 l!2952)))

(declare-fun b!1178000 () Bool)

(declare-fun e!755931 () Int)

(assert (=> b!1178000 (= e!755931 (- call!82466 i!757))))

(declare-fun d!337431 () Bool)

(assert (=> d!337431 e!755933))

(declare-fun res!532620 () Bool)

(assert (=> d!337431 (=> (not res!532620) (not e!755933))))

(assert (=> d!337431 (= res!532620 (= ((_ map implies) (content!1629 lt!406152) (content!1629 l!2952)) ((as const (InoxSet B!1273)) true)))))

(assert (=> d!337431 (= lt!406152 e!755932)))

(declare-fun c!196382 () Bool)

(assert (=> d!337431 (= c!196382 ((_ is Nil!11669) l!2952))))

(assert (=> d!337431 (= (drop!509 l!2952 i!757) lt!406152)))

(declare-fun b!1178001 () Bool)

(assert (=> b!1178001 (= e!755931 0)))

(declare-fun b!1178002 () Bool)

(assert (=> b!1178002 (= e!755932 e!755934)))

(declare-fun c!196383 () Bool)

(assert (=> b!1178002 (= c!196383 (<= i!757 0))))

(declare-fun b!1178003 () Bool)

(assert (=> b!1178003 (= e!755930 call!82466)))

(declare-fun b!1178004 () Bool)

(assert (=> b!1178004 (= e!755930 e!755931)))

(declare-fun c!196384 () Bool)

(assert (=> b!1178004 (= c!196384 (>= i!757 call!82466))))

(assert (= (and d!337431 c!196382) b!1177997))

(assert (= (and d!337431 (not c!196382)) b!1178002))

(assert (= (and b!1178002 c!196383) b!1177999))

(assert (= (and b!1178002 (not c!196383)) b!1177996))

(assert (= (and d!337431 res!532620) b!1177998))

(assert (= (and b!1177998 c!196385) b!1178003))

(assert (= (and b!1177998 (not c!196385)) b!1178004))

(assert (= (and b!1178004 c!196384) b!1178001))

(assert (= (and b!1178004 (not c!196384)) b!1178000))

(assert (= (or b!1178003 b!1178004 b!1178000) bm!82461))

(declare-fun m!1354825 () Bool)

(assert (=> b!1177996 m!1354825))

(assert (=> bm!82461 m!1354711))

(declare-fun m!1354827 () Bool)

(assert (=> b!1177998 m!1354827))

(declare-fun m!1354829 () Bool)

(assert (=> d!337431 m!1354829))

(declare-fun m!1354831 () Bool)

(assert (=> d!337431 m!1354831))

(assert (=> d!337389 d!337431))

(declare-fun b!1178005 () Bool)

(declare-fun e!755935 () Bool)

(declare-fun tp!335241 () Bool)

(assert (=> b!1178005 (= e!755935 (and tp_is_empty!5795 tp!335241))))

(assert (=> b!1177875 (= tp!335240 e!755935)))

(assert (= (and b!1177875 ((_ is Cons!11669) (t!111185 (t!111185 l!2952)))) b!1178005))

(check-sat (not b!1177978) (not d!337421) (not b!1177879) (not b!1177948) tp_is_empty!5795 (not d!337429) (not b!1177958) (not b!1177878) (not b!1178005) (not b!1177991) (not b!1177989) (not b!1177961) (not b!1177966) (not b!1177895) (not b!1177998) (not b!1177990) (not b!1177962) (not b!1177896) (not d!337431) (not b!1177996) (not b!1177900) (not bm!82461) (not d!337409) (not b!1177965) (not b!1177995) (not d!337405) (not b!1177894) (not b!1177977) (not bm!82458) (not b!1177950))
(check-sat)
