; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188934 () Bool)

(assert start!188934)

(declare-fun b!1886633 () Bool)

(declare-fun res!842067 () Bool)

(declare-fun e!1203884 () Bool)

(assert (=> b!1886633 (=> (not res!842067) (not e!1203884))))

(declare-datatypes ((B!1703 0))(
  ( (B!1704 (val!6137 Int)) )
))
(declare-datatypes ((List!21130 0))(
  ( (Nil!21048) (Cons!21048 (h!26449 B!1703) (t!175129 List!21130)) )
))
(declare-fun l1!1329 () List!21130)

(declare-fun l2!1298 () List!21130)

(declare-fun subseq!398 (List!21130 List!21130) Bool)

(assert (=> b!1886633 (= res!842067 (subseq!398 (t!175129 l1!1329) (t!175129 l2!1298)))))

(declare-fun lt!723562 () Int)

(declare-fun lt!723561 () Int)

(declare-fun lt!723565 () Int)

(declare-fun lt!723564 () Int)

(declare-fun lt!723566 () Int)

(declare-fun lt!723563 () Int)

(declare-fun b!1886634 () Bool)

(assert (=> b!1886634 (= e!1203884 (and (>= lt!723565 lt!723561) (let ((bdg!69105 (not (= lt!723565 lt!723561)))) (and (or bdg!69105 (>= lt!723563 lt!723562)) (or bdg!69105 (not (= lt!723563 lt!723562)) (>= lt!723566 lt!723564))))))))

(declare-fun l3!256 () List!21130)

(declare-fun size!16712 (List!21130) Int)

(assert (=> b!1886634 (= lt!723564 (size!16712 l3!256))))

(assert (=> b!1886634 (= lt!723562 (size!16712 l2!1298))))

(assert (=> b!1886634 (= lt!723561 (size!16712 l1!1329))))

(assert (=> b!1886634 (= lt!723566 (size!16712 (t!175129 l3!256)))))

(assert (=> b!1886634 (= lt!723563 (size!16712 (t!175129 l2!1298)))))

(assert (=> b!1886634 (= lt!723565 (size!16712 (t!175129 l1!1329)))))

(declare-fun b!1886635 () Bool)

(declare-fun res!842065 () Bool)

(assert (=> b!1886635 (=> (not res!842065) (not e!1203884))))

(assert (=> b!1886635 (= res!842065 (= (h!26449 l1!1329) (h!26449 l2!1298)))))

(declare-fun res!842068 () Bool)

(assert (=> start!188934 (=> (not res!842068) (not e!1203884))))

(assert (=> start!188934 (= res!842068 (subseq!398 l1!1329 l2!1298))))

(assert (=> start!188934 e!1203884))

(declare-fun e!1203883 () Bool)

(assert (=> start!188934 e!1203883))

(declare-fun e!1203886 () Bool)

(assert (=> start!188934 e!1203886))

(declare-fun e!1203885 () Bool)

(assert (=> start!188934 e!1203885))

(declare-fun b!1886636 () Bool)

(declare-fun tp_is_empty!8959 () Bool)

(declare-fun tp!537990 () Bool)

(assert (=> b!1886636 (= e!1203885 (and tp_is_empty!8959 tp!537990))))

(declare-fun b!1886637 () Bool)

(declare-fun tp!537991 () Bool)

(assert (=> b!1886637 (= e!1203886 (and tp_is_empty!8959 tp!537991))))

(declare-fun b!1886638 () Bool)

(declare-fun res!842070 () Bool)

(assert (=> b!1886638 (=> (not res!842070) (not e!1203884))))

(assert (=> b!1886638 (= res!842070 (and (or (not (is-Cons!21048 l1!1329)) (not (is-Cons!21048 l2!1298)) (not (is-Cons!21048 l3!256)) (= (h!26449 l2!1298) (h!26449 l3!256))) (is-Cons!21048 l1!1329) (is-Cons!21048 l2!1298) (is-Cons!21048 l3!256) (= (h!26449 l2!1298) (h!26449 l3!256))))))

(declare-fun b!1886639 () Bool)

(declare-fun res!842069 () Bool)

(assert (=> b!1886639 (=> (not res!842069) (not e!1203884))))

(assert (=> b!1886639 (= res!842069 (subseq!398 (t!175129 l2!1298) (t!175129 l3!256)))))

(declare-fun b!1886640 () Bool)

(declare-fun tp!537989 () Bool)

(assert (=> b!1886640 (= e!1203883 (and tp_is_empty!8959 tp!537989))))

(declare-fun b!1886641 () Bool)

(declare-fun res!842066 () Bool)

(assert (=> b!1886641 (=> (not res!842066) (not e!1203884))))

(assert (=> b!1886641 (= res!842066 (subseq!398 l2!1298 l3!256))))

(assert (= (and start!188934 res!842068) b!1886641))

(assert (= (and b!1886641 res!842066) b!1886638))

(assert (= (and b!1886638 res!842070) b!1886639))

(assert (= (and b!1886639 res!842069) b!1886635))

(assert (= (and b!1886635 res!842065) b!1886633))

(assert (= (and b!1886633 res!842067) b!1886634))

(assert (= (and start!188934 (is-Cons!21048 l1!1329)) b!1886640))

(assert (= (and start!188934 (is-Cons!21048 l2!1298)) b!1886637))

(assert (= (and start!188934 (is-Cons!21048 l3!256)) b!1886636))

(declare-fun m!2319035 () Bool)

(assert (=> b!1886639 m!2319035))

(declare-fun m!2319037 () Bool)

(assert (=> b!1886641 m!2319037))

(declare-fun m!2319039 () Bool)

(assert (=> start!188934 m!2319039))

(declare-fun m!2319041 () Bool)

(assert (=> b!1886633 m!2319041))

(declare-fun m!2319043 () Bool)

(assert (=> b!1886634 m!2319043))

(declare-fun m!2319045 () Bool)

(assert (=> b!1886634 m!2319045))

(declare-fun m!2319047 () Bool)

(assert (=> b!1886634 m!2319047))

(declare-fun m!2319049 () Bool)

(assert (=> b!1886634 m!2319049))

(declare-fun m!2319051 () Bool)

(assert (=> b!1886634 m!2319051))

(declare-fun m!2319053 () Bool)

(assert (=> b!1886634 m!2319053))

(push 1)

(assert (not b!1886636))

(assert (not b!1886639))

(assert tp_is_empty!8959)

(assert (not b!1886640))

(assert (not b!1886641))

(assert (not b!1886633))

(assert (not b!1886637))

(assert (not b!1886634))

(assert (not start!188934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1886687 () Bool)

(declare-fun e!1203918 () Bool)

(assert (=> b!1886687 (= e!1203918 (subseq!398 (t!175129 l1!1329) (t!175129 l2!1298)))))

(declare-fun b!1886685 () Bool)

(declare-fun e!1203917 () Bool)

(declare-fun e!1203916 () Bool)

(assert (=> b!1886685 (= e!1203917 e!1203916)))

(declare-fun res!842106 () Bool)

(assert (=> b!1886685 (=> (not res!842106) (not e!1203916))))

(assert (=> b!1886685 (= res!842106 (is-Cons!21048 l2!1298))))

(declare-fun b!1886688 () Bool)

(declare-fun e!1203915 () Bool)

(assert (=> b!1886688 (= e!1203915 (subseq!398 l1!1329 (t!175129 l2!1298)))))

(declare-fun d!578023 () Bool)

(declare-fun res!842108 () Bool)

(assert (=> d!578023 (=> res!842108 e!1203917)))

(assert (=> d!578023 (= res!842108 (is-Nil!21048 l1!1329))))

(assert (=> d!578023 (= (subseq!398 l1!1329 l2!1298) e!1203917)))

(declare-fun b!1886686 () Bool)

(assert (=> b!1886686 (= e!1203916 e!1203915)))

(declare-fun res!842107 () Bool)

(assert (=> b!1886686 (=> res!842107 e!1203915)))

(assert (=> b!1886686 (= res!842107 e!1203918)))

(declare-fun res!842105 () Bool)

(assert (=> b!1886686 (=> (not res!842105) (not e!1203918))))

(assert (=> b!1886686 (= res!842105 (= (h!26449 l1!1329) (h!26449 l2!1298)))))

(assert (= (and d!578023 (not res!842108)) b!1886685))

(assert (= (and b!1886685 res!842106) b!1886686))

(assert (= (and b!1886686 res!842105) b!1886687))

(assert (= (and b!1886686 (not res!842107)) b!1886688))

(assert (=> b!1886687 m!2319041))

(declare-fun m!2319075 () Bool)

(assert (=> b!1886688 m!2319075))

(assert (=> start!188934 d!578023))

(declare-fun b!1886691 () Bool)

(declare-fun e!1203922 () Bool)

(assert (=> b!1886691 (= e!1203922 (subseq!398 (t!175129 l2!1298) (t!175129 l3!256)))))

(declare-fun b!1886689 () Bool)

(declare-fun e!1203921 () Bool)

(declare-fun e!1203920 () Bool)

(assert (=> b!1886689 (= e!1203921 e!1203920)))

(declare-fun res!842110 () Bool)

(assert (=> b!1886689 (=> (not res!842110) (not e!1203920))))

(assert (=> b!1886689 (= res!842110 (is-Cons!21048 l3!256))))

(declare-fun b!1886692 () Bool)

(declare-fun e!1203919 () Bool)

(assert (=> b!1886692 (= e!1203919 (subseq!398 l2!1298 (t!175129 l3!256)))))

(declare-fun d!578027 () Bool)

(declare-fun res!842112 () Bool)

(assert (=> d!578027 (=> res!842112 e!1203921)))

(assert (=> d!578027 (= res!842112 (is-Nil!21048 l2!1298))))

(assert (=> d!578027 (= (subseq!398 l2!1298 l3!256) e!1203921)))

(declare-fun b!1886690 () Bool)

(assert (=> b!1886690 (= e!1203920 e!1203919)))

(declare-fun res!842111 () Bool)

(assert (=> b!1886690 (=> res!842111 e!1203919)))

(assert (=> b!1886690 (= res!842111 e!1203922)))

(declare-fun res!842109 () Bool)

(assert (=> b!1886690 (=> (not res!842109) (not e!1203922))))

(assert (=> b!1886690 (= res!842109 (= (h!26449 l2!1298) (h!26449 l3!256)))))

(assert (= (and d!578027 (not res!842112)) b!1886689))

(assert (= (and b!1886689 res!842110) b!1886690))

(assert (= (and b!1886690 res!842109) b!1886691))

(assert (= (and b!1886690 (not res!842111)) b!1886692))

(assert (=> b!1886691 m!2319035))

(declare-fun m!2319077 () Bool)

(assert (=> b!1886692 m!2319077))

(assert (=> b!1886641 d!578027))

(declare-fun b!1886695 () Bool)

(declare-fun e!1203926 () Bool)

(assert (=> b!1886695 (= e!1203926 (subseq!398 (t!175129 (t!175129 l2!1298)) (t!175129 (t!175129 l3!256))))))

(declare-fun b!1886693 () Bool)

(declare-fun e!1203925 () Bool)

(declare-fun e!1203924 () Bool)

(assert (=> b!1886693 (= e!1203925 e!1203924)))

(declare-fun res!842114 () Bool)

(assert (=> b!1886693 (=> (not res!842114) (not e!1203924))))

(assert (=> b!1886693 (= res!842114 (is-Cons!21048 (t!175129 l3!256)))))

(declare-fun b!1886696 () Bool)

(declare-fun e!1203923 () Bool)

(assert (=> b!1886696 (= e!1203923 (subseq!398 (t!175129 l2!1298) (t!175129 (t!175129 l3!256))))))

(declare-fun d!578029 () Bool)

(declare-fun res!842116 () Bool)

(assert (=> d!578029 (=> res!842116 e!1203925)))

(assert (=> d!578029 (= res!842116 (is-Nil!21048 (t!175129 l2!1298)))))

(assert (=> d!578029 (= (subseq!398 (t!175129 l2!1298) (t!175129 l3!256)) e!1203925)))

(declare-fun b!1886694 () Bool)

(assert (=> b!1886694 (= e!1203924 e!1203923)))

(declare-fun res!842115 () Bool)

(assert (=> b!1886694 (=> res!842115 e!1203923)))

(assert (=> b!1886694 (= res!842115 e!1203926)))

(declare-fun res!842113 () Bool)

(assert (=> b!1886694 (=> (not res!842113) (not e!1203926))))

(assert (=> b!1886694 (= res!842113 (= (h!26449 (t!175129 l2!1298)) (h!26449 (t!175129 l3!256))))))

(assert (= (and d!578029 (not res!842116)) b!1886693))

(assert (= (and b!1886693 res!842114) b!1886694))

(assert (= (and b!1886694 res!842113) b!1886695))

(assert (= (and b!1886694 (not res!842115)) b!1886696))

(declare-fun m!2319079 () Bool)

(assert (=> b!1886695 m!2319079))

(declare-fun m!2319081 () Bool)

(assert (=> b!1886696 m!2319081))

(assert (=> b!1886639 d!578029))

(declare-fun d!578031 () Bool)

(declare-fun lt!723587 () Int)

(assert (=> d!578031 (>= lt!723587 0)))

(declare-fun e!1203937 () Int)

(assert (=> d!578031 (= lt!723587 e!1203937)))

(declare-fun c!308115 () Bool)

(assert (=> d!578031 (= c!308115 (is-Nil!21048 (t!175129 l2!1298)))))

(assert (=> d!578031 (= (size!16712 (t!175129 l2!1298)) lt!723587)))

(declare-fun b!1886709 () Bool)

(assert (=> b!1886709 (= e!1203937 0)))

(declare-fun b!1886710 () Bool)

(assert (=> b!1886710 (= e!1203937 (+ 1 (size!16712 (t!175129 (t!175129 l2!1298)))))))

(assert (= (and d!578031 c!308115) b!1886709))

(assert (= (and d!578031 (not c!308115)) b!1886710))

(declare-fun m!2319087 () Bool)

(assert (=> b!1886710 m!2319087))

(assert (=> b!1886634 d!578031))

(declare-fun d!578037 () Bool)

(declare-fun lt!723588 () Int)

(assert (=> d!578037 (>= lt!723588 0)))

(declare-fun e!1203938 () Int)

(assert (=> d!578037 (= lt!723588 e!1203938)))

(declare-fun c!308116 () Bool)

(assert (=> d!578037 (= c!308116 (is-Nil!21048 l1!1329))))

(assert (=> d!578037 (= (size!16712 l1!1329) lt!723588)))

(declare-fun b!1886711 () Bool)

(assert (=> b!1886711 (= e!1203938 0)))

(declare-fun b!1886712 () Bool)

(assert (=> b!1886712 (= e!1203938 (+ 1 (size!16712 (t!175129 l1!1329))))))

(assert (= (and d!578037 c!308116) b!1886711))

(assert (= (and d!578037 (not c!308116)) b!1886712))

(assert (=> b!1886712 m!2319053))

(assert (=> b!1886634 d!578037))

(declare-fun d!578039 () Bool)

(declare-fun lt!723589 () Int)

(assert (=> d!578039 (>= lt!723589 0)))

(declare-fun e!1203939 () Int)

(assert (=> d!578039 (= lt!723589 e!1203939)))

(declare-fun c!308117 () Bool)

(assert (=> d!578039 (= c!308117 (is-Nil!21048 l2!1298))))

(assert (=> d!578039 (= (size!16712 l2!1298) lt!723589)))

(declare-fun b!1886713 () Bool)

(assert (=> b!1886713 (= e!1203939 0)))

(declare-fun b!1886714 () Bool)

(assert (=> b!1886714 (= e!1203939 (+ 1 (size!16712 (t!175129 l2!1298))))))

(assert (= (and d!578039 c!308117) b!1886713))

(assert (= (and d!578039 (not c!308117)) b!1886714))

(assert (=> b!1886714 m!2319045))

(assert (=> b!1886634 d!578039))

(declare-fun d!578041 () Bool)

(declare-fun lt!723590 () Int)

(assert (=> d!578041 (>= lt!723590 0)))

(declare-fun e!1203940 () Int)

(assert (=> d!578041 (= lt!723590 e!1203940)))

(declare-fun c!308118 () Bool)

(assert (=> d!578041 (= c!308118 (is-Nil!21048 (t!175129 l1!1329)))))

(assert (=> d!578041 (= (size!16712 (t!175129 l1!1329)) lt!723590)))

(declare-fun b!1886715 () Bool)

(assert (=> b!1886715 (= e!1203940 0)))

(declare-fun b!1886716 () Bool)

(assert (=> b!1886716 (= e!1203940 (+ 1 (size!16712 (t!175129 (t!175129 l1!1329)))))))

(assert (= (and d!578041 c!308118) b!1886715))

(assert (= (and d!578041 (not c!308118)) b!1886716))

(declare-fun m!2319089 () Bool)

(assert (=> b!1886716 m!2319089))

(assert (=> b!1886634 d!578041))

(declare-fun d!578043 () Bool)

(declare-fun lt!723591 () Int)

(assert (=> d!578043 (>= lt!723591 0)))

(declare-fun e!1203941 () Int)

(assert (=> d!578043 (= lt!723591 e!1203941)))

(declare-fun c!308119 () Bool)

(assert (=> d!578043 (= c!308119 (is-Nil!21048 l3!256))))

(assert (=> d!578043 (= (size!16712 l3!256) lt!723591)))

(declare-fun b!1886717 () Bool)

(assert (=> b!1886717 (= e!1203941 0)))

(declare-fun b!1886718 () Bool)

(assert (=> b!1886718 (= e!1203941 (+ 1 (size!16712 (t!175129 l3!256))))))

(assert (= (and d!578043 c!308119) b!1886717))

(assert (= (and d!578043 (not c!308119)) b!1886718))

(assert (=> b!1886718 m!2319051))

(assert (=> b!1886634 d!578043))

(declare-fun d!578045 () Bool)

(declare-fun lt!723594 () Int)

(assert (=> d!578045 (>= lt!723594 0)))

(declare-fun e!1203942 () Int)

(assert (=> d!578045 (= lt!723594 e!1203942)))

(declare-fun c!308120 () Bool)

(assert (=> d!578045 (= c!308120 (is-Nil!21048 (t!175129 l3!256)))))

(assert (=> d!578045 (= (size!16712 (t!175129 l3!256)) lt!723594)))

(declare-fun b!1886721 () Bool)

(assert (=> b!1886721 (= e!1203942 0)))

(declare-fun b!1886722 () Bool)

(assert (=> b!1886722 (= e!1203942 (+ 1 (size!16712 (t!175129 (t!175129 l3!256)))))))

(assert (= (and d!578045 c!308120) b!1886721))

(assert (= (and d!578045 (not c!308120)) b!1886722))

(declare-fun m!2319091 () Bool)

(assert (=> b!1886722 m!2319091))

(assert (=> b!1886634 d!578045))

(declare-fun b!1886727 () Bool)

(declare-fun e!1203948 () Bool)

(assert (=> b!1886727 (= e!1203948 (subseq!398 (t!175129 (t!175129 l1!1329)) (t!175129 (t!175129 l2!1298))))))

(declare-fun b!1886725 () Bool)

(declare-fun e!1203947 () Bool)

(declare-fun e!1203946 () Bool)

(assert (=> b!1886725 (= e!1203947 e!1203946)))

(declare-fun res!842126 () Bool)

(assert (=> b!1886725 (=> (not res!842126) (not e!1203946))))

(assert (=> b!1886725 (= res!842126 (is-Cons!21048 (t!175129 l2!1298)))))

(declare-fun b!1886728 () Bool)

(declare-fun e!1203945 () Bool)

(assert (=> b!1886728 (= e!1203945 (subseq!398 (t!175129 l1!1329) (t!175129 (t!175129 l2!1298))))))

(declare-fun d!578047 () Bool)

(declare-fun res!842128 () Bool)

(assert (=> d!578047 (=> res!842128 e!1203947)))

(assert (=> d!578047 (= res!842128 (is-Nil!21048 (t!175129 l1!1329)))))

(assert (=> d!578047 (= (subseq!398 (t!175129 l1!1329) (t!175129 l2!1298)) e!1203947)))

(declare-fun b!1886726 () Bool)

(assert (=> b!1886726 (= e!1203946 e!1203945)))

(declare-fun res!842127 () Bool)

(assert (=> b!1886726 (=> res!842127 e!1203945)))

(assert (=> b!1886726 (= res!842127 e!1203948)))

(declare-fun res!842125 () Bool)

(assert (=> b!1886726 (=> (not res!842125) (not e!1203948))))

(assert (=> b!1886726 (= res!842125 (= (h!26449 (t!175129 l1!1329)) (h!26449 (t!175129 l2!1298))))))

(assert (= (and d!578047 (not res!842128)) b!1886725))

(assert (= (and b!1886725 res!842126) b!1886726))

(assert (= (and b!1886726 res!842125) b!1886727))

(assert (= (and b!1886726 (not res!842127)) b!1886728))

(declare-fun m!2319093 () Bool)

(assert (=> b!1886727 m!2319093))

(declare-fun m!2319095 () Bool)

(assert (=> b!1886728 m!2319095))

(assert (=> b!1886633 d!578047))

(declare-fun b!1886733 () Bool)

(declare-fun e!1203951 () Bool)

(declare-fun tp!538003 () Bool)

(assert (=> b!1886733 (= e!1203951 (and tp_is_empty!8959 tp!538003))))

(assert (=> b!1886640 (= tp!537989 e!1203951)))

(assert (= (and b!1886640 (is-Cons!21048 (t!175129 l1!1329))) b!1886733))

(declare-fun b!1886734 () Bool)

(declare-fun e!1203952 () Bool)

(declare-fun tp!538004 () Bool)

(assert (=> b!1886734 (= e!1203952 (and tp_is_empty!8959 tp!538004))))

(assert (=> b!1886636 (= tp!537990 e!1203952)))

(assert (= (and b!1886636 (is-Cons!21048 (t!175129 l3!256))) b!1886734))

(declare-fun b!1886735 () Bool)

(declare-fun e!1203953 () Bool)

(declare-fun tp!538005 () Bool)

(assert (=> b!1886735 (= e!1203953 (and tp_is_empty!8959 tp!538005))))

(assert (=> b!1886637 (= tp!537991 e!1203953)))

(assert (= (and b!1886637 (is-Cons!21048 (t!175129 l2!1298))) b!1886735))

(push 1)

(assert (not b!1886734))

(assert (not b!1886695))

(assert (not b!1886733))

(assert (not b!1886718))

(assert (not b!1886714))

(assert tp_is_empty!8959)

(assert (not b!1886728))

(assert (not b!1886687))

(assert (not b!1886710))

(assert (not b!1886727))

(assert (not b!1886722))

(assert (not b!1886735))

(assert (not b!1886691))

(assert (not b!1886692))

(assert (not b!1886712))

(assert (not b!1886688))

(assert (not b!1886696))

(assert (not b!1886716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

