; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107420 () Bool)

(assert start!107420)

(declare-fun b!1205838 () Bool)

(declare-fun e!773605 () Bool)

(declare-fun e!773607 () Bool)

(assert (=> b!1205838 (= e!773605 e!773607)))

(declare-fun res!542935 () Bool)

(assert (=> b!1205838 (=> (not res!542935) (not e!773607))))

(declare-datatypes ((T!22272 0))(
  ( (T!22273 (val!3958 Int)) )
))
(declare-datatypes ((List!12137 0))(
  ( (Nil!12113) (Cons!12113 (h!17514 T!22272) (t!112553 List!12137)) )
))
(declare-fun l!2744 () List!12137)

(declare-fun lt!412274 () List!12137)

(declare-fun r!2028 () List!12137)

(declare-fun tail!1734 (List!12137) List!12137)

(declare-fun ++!3135 (List!12137 List!12137) List!12137)

(assert (=> b!1205838 (= res!542935 (= (tail!1734 (++!3135 l!2744 r!2028)) (++!3135 lt!412274 r!2028)))))

(assert (=> b!1205838 (= lt!412274 (tail!1734 l!2744))))

(declare-fun e!773608 () Bool)

(declare-fun b!1205839 () Bool)

(declare-fun until!61 () Int)

(declare-fun lt!412272 () Int)

(declare-fun size!9653 (List!12137) Int)

(assert (=> b!1205839 (= e!773608 (> (- until!61 1) (+ (size!9653 lt!412274) lt!412272)))))

(declare-fun b!1205840 () Bool)

(assert (=> b!1205840 (= e!773607 e!773608)))

(declare-fun res!542938 () Bool)

(assert (=> b!1205840 (=> res!542938 e!773608)))

(assert (=> b!1205840 (= res!542938 (> 0 (- until!61 1)))))

(declare-fun res!542937 () Bool)

(declare-fun e!773610 () Bool)

(assert (=> start!107420 (=> (not res!542937) (not e!773610))))

(declare-fun from!613 () Int)

(assert (=> start!107420 (= res!542937 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107420 e!773610))

(assert (=> start!107420 true))

(declare-fun e!773609 () Bool)

(assert (=> start!107420 e!773609))

(declare-fun e!773606 () Bool)

(assert (=> start!107420 e!773606))

(declare-fun b!1205841 () Bool)

(declare-fun tp_is_empty!6119 () Bool)

(declare-fun tp!342013 () Bool)

(assert (=> b!1205841 (= e!773609 (and tp_is_empty!6119 tp!342013))))

(declare-fun b!1205842 () Bool)

(declare-fun tp!342012 () Bool)

(assert (=> b!1205842 (= e!773606 (and tp_is_empty!6119 tp!342012))))

(declare-fun b!1205843 () Bool)

(declare-fun res!542936 () Bool)

(assert (=> b!1205843 (=> (not res!542936) (not e!773607))))

(assert (=> b!1205843 (= res!542936 (= from!613 0))))

(declare-fun b!1205844 () Bool)

(assert (=> b!1205844 (= e!773610 e!773605)))

(declare-fun res!542934 () Bool)

(assert (=> b!1205844 (=> (not res!542934) (not e!773605))))

(declare-fun lt!412273 () Int)

(assert (=> b!1205844 (= res!542934 (and (<= until!61 (+ lt!412273 lt!412272)) (not (= l!2744 Nil!12113)) (not (= r!2028 Nil!12113)) (not (= until!61 0))))))

(assert (=> b!1205844 (= lt!412272 (size!9653 r!2028))))

(assert (=> b!1205844 (= lt!412273 (size!9653 l!2744))))

(assert (= (and start!107420 res!542937) b!1205844))

(assert (= (and b!1205844 res!542934) b!1205838))

(assert (= (and b!1205838 res!542935) b!1205843))

(assert (= (and b!1205843 res!542936) b!1205840))

(assert (= (and b!1205840 (not res!542938)) b!1205839))

(get-info :version)

(assert (= (and start!107420 ((_ is Cons!12113) l!2744)) b!1205841))

(assert (= (and start!107420 ((_ is Cons!12113) r!2028)) b!1205842))

(declare-fun m!1381027 () Bool)

(assert (=> b!1205838 m!1381027))

(assert (=> b!1205838 m!1381027))

(declare-fun m!1381029 () Bool)

(assert (=> b!1205838 m!1381029))

(declare-fun m!1381031 () Bool)

(assert (=> b!1205838 m!1381031))

(declare-fun m!1381033 () Bool)

(assert (=> b!1205838 m!1381033))

(declare-fun m!1381035 () Bool)

(assert (=> b!1205839 m!1381035))

(declare-fun m!1381037 () Bool)

(assert (=> b!1205844 m!1381037))

(declare-fun m!1381039 () Bool)

(assert (=> b!1205844 m!1381039))

(check-sat (not b!1205842) (not b!1205839) (not b!1205841) tp_is_empty!6119 (not b!1205838) (not b!1205844))
(check-sat)
(get-model)

(declare-fun d!344566 () Bool)

(declare-fun lt!412279 () Int)

(assert (=> d!344566 (>= lt!412279 0)))

(declare-fun e!773615 () Int)

(assert (=> d!344566 (= lt!412279 e!773615)))

(declare-fun c!201433 () Bool)

(assert (=> d!344566 (= c!201433 ((_ is Nil!12113) r!2028))))

(assert (=> d!344566 (= (size!9653 r!2028) lt!412279)))

(declare-fun b!1205853 () Bool)

(assert (=> b!1205853 (= e!773615 0)))

(declare-fun b!1205854 () Bool)

(assert (=> b!1205854 (= e!773615 (+ 1 (size!9653 (t!112553 r!2028))))))

(assert (= (and d!344566 c!201433) b!1205853))

(assert (= (and d!344566 (not c!201433)) b!1205854))

(declare-fun m!1381041 () Bool)

(assert (=> b!1205854 m!1381041))

(assert (=> b!1205844 d!344566))

(declare-fun d!344570 () Bool)

(declare-fun lt!412280 () Int)

(assert (=> d!344570 (>= lt!412280 0)))

(declare-fun e!773616 () Int)

(assert (=> d!344570 (= lt!412280 e!773616)))

(declare-fun c!201434 () Bool)

(assert (=> d!344570 (= c!201434 ((_ is Nil!12113) l!2744))))

(assert (=> d!344570 (= (size!9653 l!2744) lt!412280)))

(declare-fun b!1205855 () Bool)

(assert (=> b!1205855 (= e!773616 0)))

(declare-fun b!1205856 () Bool)

(assert (=> b!1205856 (= e!773616 (+ 1 (size!9653 (t!112553 l!2744))))))

(assert (= (and d!344570 c!201434) b!1205855))

(assert (= (and d!344570 (not c!201434)) b!1205856))

(declare-fun m!1381043 () Bool)

(assert (=> b!1205856 m!1381043))

(assert (=> b!1205844 d!344570))

(declare-fun d!344572 () Bool)

(assert (=> d!344572 (= (tail!1734 (++!3135 l!2744 r!2028)) (t!112553 (++!3135 l!2744 r!2028)))))

(assert (=> b!1205838 d!344572))

(declare-fun b!1205876 () Bool)

(declare-fun e!773627 () List!12137)

(assert (=> b!1205876 (= e!773627 (Cons!12113 (h!17514 l!2744) (++!3135 (t!112553 l!2744) r!2028)))))

(declare-fun b!1205875 () Bool)

(assert (=> b!1205875 (= e!773627 r!2028)))

(declare-fun b!1205877 () Bool)

(declare-fun res!542947 () Bool)

(declare-fun e!773626 () Bool)

(assert (=> b!1205877 (=> (not res!542947) (not e!773626))))

(declare-fun lt!412286 () List!12137)

(assert (=> b!1205877 (= res!542947 (= (size!9653 lt!412286) (+ (size!9653 l!2744) (size!9653 r!2028))))))

(declare-fun d!344576 () Bool)

(assert (=> d!344576 e!773626))

(declare-fun res!542948 () Bool)

(assert (=> d!344576 (=> (not res!542948) (not e!773626))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1712 (List!12137) (InoxSet T!22272))

(assert (=> d!344576 (= res!542948 (= (content!1712 lt!412286) ((_ map or) (content!1712 l!2744) (content!1712 r!2028))))))

(assert (=> d!344576 (= lt!412286 e!773627)))

(declare-fun c!201440 () Bool)

(assert (=> d!344576 (= c!201440 ((_ is Nil!12113) l!2744))))

(assert (=> d!344576 (= (++!3135 l!2744 r!2028) lt!412286)))

(declare-fun b!1205878 () Bool)

(assert (=> b!1205878 (= e!773626 (or (not (= r!2028 Nil!12113)) (= lt!412286 l!2744)))))

(assert (= (and d!344576 c!201440) b!1205875))

(assert (= (and d!344576 (not c!201440)) b!1205876))

(assert (= (and d!344576 res!542948) b!1205877))

(assert (= (and b!1205877 res!542947) b!1205878))

(declare-fun m!1381047 () Bool)

(assert (=> b!1205876 m!1381047))

(declare-fun m!1381049 () Bool)

(assert (=> b!1205877 m!1381049))

(assert (=> b!1205877 m!1381039))

(assert (=> b!1205877 m!1381037))

(declare-fun m!1381051 () Bool)

(assert (=> d!344576 m!1381051))

(declare-fun m!1381053 () Bool)

(assert (=> d!344576 m!1381053))

(declare-fun m!1381055 () Bool)

(assert (=> d!344576 m!1381055))

(assert (=> b!1205838 d!344576))

(declare-fun b!1205884 () Bool)

(declare-fun e!773631 () List!12137)

(assert (=> b!1205884 (= e!773631 (Cons!12113 (h!17514 lt!412274) (++!3135 (t!112553 lt!412274) r!2028)))))

(declare-fun b!1205883 () Bool)

(assert (=> b!1205883 (= e!773631 r!2028)))

(declare-fun b!1205885 () Bool)

(declare-fun res!542951 () Bool)

(declare-fun e!773630 () Bool)

(assert (=> b!1205885 (=> (not res!542951) (not e!773630))))

(declare-fun lt!412288 () List!12137)

(assert (=> b!1205885 (= res!542951 (= (size!9653 lt!412288) (+ (size!9653 lt!412274) (size!9653 r!2028))))))

(declare-fun d!344580 () Bool)

(assert (=> d!344580 e!773630))

(declare-fun res!542952 () Bool)

(assert (=> d!344580 (=> (not res!542952) (not e!773630))))

(assert (=> d!344580 (= res!542952 (= (content!1712 lt!412288) ((_ map or) (content!1712 lt!412274) (content!1712 r!2028))))))

(assert (=> d!344580 (= lt!412288 e!773631)))

(declare-fun c!201442 () Bool)

(assert (=> d!344580 (= c!201442 ((_ is Nil!12113) lt!412274))))

(assert (=> d!344580 (= (++!3135 lt!412274 r!2028) lt!412288)))

(declare-fun b!1205886 () Bool)

(assert (=> b!1205886 (= e!773630 (or (not (= r!2028 Nil!12113)) (= lt!412288 lt!412274)))))

(assert (= (and d!344580 c!201442) b!1205883))

(assert (= (and d!344580 (not c!201442)) b!1205884))

(assert (= (and d!344580 res!542952) b!1205885))

(assert (= (and b!1205885 res!542951) b!1205886))

(declare-fun m!1381067 () Bool)

(assert (=> b!1205884 m!1381067))

(declare-fun m!1381069 () Bool)

(assert (=> b!1205885 m!1381069))

(assert (=> b!1205885 m!1381035))

(assert (=> b!1205885 m!1381037))

(declare-fun m!1381071 () Bool)

(assert (=> d!344580 m!1381071))

(declare-fun m!1381073 () Bool)

(assert (=> d!344580 m!1381073))

(assert (=> d!344580 m!1381055))

(assert (=> b!1205838 d!344580))

(declare-fun d!344584 () Bool)

(assert (=> d!344584 (= (tail!1734 l!2744) (t!112553 l!2744))))

(assert (=> b!1205838 d!344584))

(declare-fun d!344586 () Bool)

(declare-fun lt!412290 () Int)

(assert (=> d!344586 (>= lt!412290 0)))

(declare-fun e!773634 () Int)

(assert (=> d!344586 (= lt!412290 e!773634)))

(declare-fun c!201444 () Bool)

(assert (=> d!344586 (= c!201444 ((_ is Nil!12113) lt!412274))))

(assert (=> d!344586 (= (size!9653 lt!412274) lt!412290)))

(declare-fun b!1205891 () Bool)

(assert (=> b!1205891 (= e!773634 0)))

(declare-fun b!1205892 () Bool)

(assert (=> b!1205892 (= e!773634 (+ 1 (size!9653 (t!112553 lt!412274))))))

(assert (= (and d!344586 c!201444) b!1205891))

(assert (= (and d!344586 (not c!201444)) b!1205892))

(declare-fun m!1381083 () Bool)

(assert (=> b!1205892 m!1381083))

(assert (=> b!1205839 d!344586))

(declare-fun b!1205905 () Bool)

(declare-fun e!773641 () Bool)

(declare-fun tp!342018 () Bool)

(assert (=> b!1205905 (= e!773641 (and tp_is_empty!6119 tp!342018))))

(assert (=> b!1205841 (= tp!342013 e!773641)))

(assert (= (and b!1205841 ((_ is Cons!12113) (t!112553 l!2744))) b!1205905))

(declare-fun b!1205906 () Bool)

(declare-fun e!773642 () Bool)

(declare-fun tp!342019 () Bool)

(assert (=> b!1205906 (= e!773642 (and tp_is_empty!6119 tp!342019))))

(assert (=> b!1205842 (= tp!342012 e!773642)))

(assert (= (and b!1205842 ((_ is Cons!12113) (t!112553 r!2028))) b!1205906))

(check-sat (not d!344580) tp_is_empty!6119 (not b!1205856) (not b!1205906) (not b!1205877) (not b!1205885) (not b!1205905) (not b!1205854) (not b!1205876) (not d!344576) (not b!1205892) (not b!1205884))
(check-sat)
