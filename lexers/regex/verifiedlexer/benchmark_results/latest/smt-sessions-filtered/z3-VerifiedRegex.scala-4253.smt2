; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229538 () Bool)

(assert start!229538)

(declare-fun b!2325782 () Bool)

(declare-fun res!993400 () Bool)

(declare-fun e!1490224 () Bool)

(assert (=> b!2325782 (=> (not res!993400) (not e!1490224))))

(declare-fun i!741 () Int)

(declare-datatypes ((T!44020 0))(
  ( (T!44021 (val!7996 Int)) )
))
(declare-datatypes ((List!27782 0))(
  ( (Nil!27684) (Cons!27684 (h!33085 T!44020) (t!207484 List!27782)) )
))
(declare-fun l!2797 () List!27782)

(declare-fun size!21960 (List!27782) Int)

(assert (=> b!2325782 (= res!993400 (<= i!741 (size!21960 l!2797)))))

(declare-fun b!2325783 () Bool)

(declare-fun res!993401 () Bool)

(assert (=> b!2325783 (=> (not res!993401) (not e!1490224))))

(get-info :version)

(assert (=> b!2325783 (= res!993401 (and (not ((_ is Nil!27684) l!2797)) (not (= i!741 0)) (> i!741 0)))))

(declare-fun b!2325784 () Bool)

(declare-fun lt!861508 () Int)

(assert (=> b!2325784 (= e!1490224 (not (and (<= 0 (- i!741 1)) (<= (- i!741 1) lt!861508))))))

(declare-fun lt!861507 () List!27782)

(declare-fun ++!6838 (List!27782 List!27782) List!27782)

(declare-fun slice!719 (List!27782 Int Int) List!27782)

(assert (=> b!2325784 (= (++!6838 lt!861507 (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508)) (t!207484 l!2797))))

(assert (=> b!2325784 (= lt!861508 (size!21960 (t!207484 l!2797)))))

(assert (=> b!2325784 (= lt!861507 (slice!719 (t!207484 l!2797) 0 (- i!741 1)))))

(declare-datatypes ((Unit!40534 0))(
  ( (Unit!40535) )
))
(declare-fun lt!861509 () Unit!40534)

(declare-fun sliceSplit!28 (List!27782 Int) Unit!40534)

(assert (=> b!2325784 (= lt!861509 (sliceSplit!28 (t!207484 l!2797) (- i!741 1)))))

(declare-fun res!993402 () Bool)

(assert (=> start!229538 (=> (not res!993402) (not e!1490224))))

(assert (=> start!229538 (= res!993402 (<= 0 i!741))))

(assert (=> start!229538 e!1490224))

(assert (=> start!229538 true))

(declare-fun e!1490225 () Bool)

(assert (=> start!229538 e!1490225))

(declare-fun b!2325785 () Bool)

(declare-fun tp_is_empty!10857 () Bool)

(declare-fun tp!737117 () Bool)

(assert (=> b!2325785 (= e!1490225 (and tp_is_empty!10857 tp!737117))))

(assert (= (and start!229538 res!993402) b!2325782))

(assert (= (and b!2325782 res!993400) b!2325783))

(assert (= (and b!2325783 res!993401) b!2325784))

(assert (= (and start!229538 ((_ is Cons!27684) l!2797)) b!2325785))

(declare-fun m!2756991 () Bool)

(assert (=> b!2325782 m!2756991))

(declare-fun m!2756993 () Bool)

(assert (=> b!2325784 m!2756993))

(declare-fun m!2756995 () Bool)

(assert (=> b!2325784 m!2756995))

(declare-fun m!2756997 () Bool)

(assert (=> b!2325784 m!2756997))

(declare-fun m!2756999 () Bool)

(assert (=> b!2325784 m!2756999))

(assert (=> b!2325784 m!2756999))

(declare-fun m!2757001 () Bool)

(assert (=> b!2325784 m!2757001))

(check-sat (not b!2325782) (not b!2325784) (not b!2325785) tp_is_empty!10857)
(check-sat)
(get-model)

(declare-fun d!688716 () Bool)

(declare-fun lt!861515 () Int)

(assert (=> d!688716 (>= lt!861515 0)))

(declare-fun e!1490231 () Int)

(assert (=> d!688716 (= lt!861515 e!1490231)))

(declare-fun c!369259 () Bool)

(assert (=> d!688716 (= c!369259 ((_ is Nil!27684) l!2797))))

(assert (=> d!688716 (= (size!21960 l!2797) lt!861515)))

(declare-fun b!2325796 () Bool)

(assert (=> b!2325796 (= e!1490231 0)))

(declare-fun b!2325797 () Bool)

(assert (=> b!2325797 (= e!1490231 (+ 1 (size!21960 (t!207484 l!2797))))))

(assert (= (and d!688716 c!369259) b!2325796))

(assert (= (and d!688716 (not c!369259)) b!2325797))

(assert (=> b!2325797 m!2756993))

(assert (=> b!2325782 d!688716))

(declare-fun d!688720 () Bool)

(declare-fun take!491 (List!27782 Int) List!27782)

(declare-fun drop!1512 (List!27782 Int) List!27782)

(assert (=> d!688720 (= (slice!719 (t!207484 l!2797) 0 (- i!741 1)) (take!491 (drop!1512 (t!207484 l!2797) 0) (- (- i!741 1) 0)))))

(declare-fun bs!459258 () Bool)

(assert (= bs!459258 d!688720))

(declare-fun m!2757011 () Bool)

(assert (=> bs!459258 m!2757011))

(assert (=> bs!459258 m!2757011))

(declare-fun m!2757013 () Bool)

(assert (=> bs!459258 m!2757013))

(assert (=> b!2325784 d!688720))

(declare-fun d!688726 () Bool)

(assert (=> d!688726 (= (++!6838 (slice!719 (t!207484 l!2797) 0 (- i!741 1)) (slice!719 (t!207484 l!2797) (- i!741 1) (size!21960 (t!207484 l!2797)))) (t!207484 l!2797))))

(declare-fun lt!861521 () Unit!40534)

(declare-fun choose!13615 (List!27782 Int) Unit!40534)

(assert (=> d!688726 (= lt!861521 (choose!13615 (t!207484 l!2797) (- i!741 1)))))

(assert (=> d!688726 (= (sliceSplit!28 (t!207484 l!2797) (- i!741 1)) lt!861521)))

(declare-fun bs!459260 () Bool)

(assert (= bs!459260 d!688726))

(assert (=> bs!459260 m!2756993))

(declare-fun m!2757021 () Bool)

(assert (=> bs!459260 m!2757021))

(assert (=> bs!459260 m!2756993))

(assert (=> bs!459260 m!2756997))

(assert (=> bs!459260 m!2757021))

(declare-fun m!2757023 () Bool)

(assert (=> bs!459260 m!2757023))

(declare-fun m!2757025 () Bool)

(assert (=> bs!459260 m!2757025))

(assert (=> bs!459260 m!2756997))

(assert (=> b!2325784 d!688726))

(declare-fun d!688730 () Bool)

(declare-fun lt!861522 () Int)

(assert (=> d!688730 (>= lt!861522 0)))

(declare-fun e!1490232 () Int)

(assert (=> d!688730 (= lt!861522 e!1490232)))

(declare-fun c!369260 () Bool)

(assert (=> d!688730 (= c!369260 ((_ is Nil!27684) (t!207484 l!2797)))))

(assert (=> d!688730 (= (size!21960 (t!207484 l!2797)) lt!861522)))

(declare-fun b!2325798 () Bool)

(assert (=> b!2325798 (= e!1490232 0)))

(declare-fun b!2325799 () Bool)

(assert (=> b!2325799 (= e!1490232 (+ 1 (size!21960 (t!207484 (t!207484 l!2797)))))))

(assert (= (and d!688730 c!369260) b!2325798))

(assert (= (and d!688730 (not c!369260)) b!2325799))

(declare-fun m!2757027 () Bool)

(assert (=> b!2325799 m!2757027))

(assert (=> b!2325784 d!688730))

(declare-fun e!1490243 () List!27782)

(declare-fun b!2325820 () Bool)

(assert (=> b!2325820 (= e!1490243 (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508))))

(declare-fun b!2325823 () Bool)

(declare-fun e!1490244 () Bool)

(declare-fun lt!861528 () List!27782)

(assert (=> b!2325823 (= e!1490244 (or (not (= (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508) Nil!27684)) (= lt!861528 lt!861507)))))

(declare-fun d!688732 () Bool)

(assert (=> d!688732 e!1490244))

(declare-fun res!993413 () Bool)

(assert (=> d!688732 (=> (not res!993413) (not e!1490244))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3750 (List!27782) (InoxSet T!44020))

(assert (=> d!688732 (= res!993413 (= (content!3750 lt!861528) ((_ map or) (content!3750 lt!861507) (content!3750 (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508)))))))

(assert (=> d!688732 (= lt!861528 e!1490243)))

(declare-fun c!369266 () Bool)

(assert (=> d!688732 (= c!369266 ((_ is Nil!27684) lt!861507))))

(assert (=> d!688732 (= (++!6838 lt!861507 (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508)) lt!861528)))

(declare-fun b!2325822 () Bool)

(declare-fun res!993414 () Bool)

(assert (=> b!2325822 (=> (not res!993414) (not e!1490244))))

(assert (=> b!2325822 (= res!993414 (= (size!21960 lt!861528) (+ (size!21960 lt!861507) (size!21960 (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508)))))))

(declare-fun b!2325821 () Bool)

(assert (=> b!2325821 (= e!1490243 (Cons!27684 (h!33085 lt!861507) (++!6838 (t!207484 lt!861507) (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508))))))

(assert (= (and d!688732 c!369266) b!2325820))

(assert (= (and d!688732 (not c!369266)) b!2325821))

(assert (= (and d!688732 res!993413) b!2325822))

(assert (= (and b!2325822 res!993414) b!2325823))

(declare-fun m!2757045 () Bool)

(assert (=> d!688732 m!2757045))

(declare-fun m!2757047 () Bool)

(assert (=> d!688732 m!2757047))

(assert (=> d!688732 m!2756999))

(declare-fun m!2757049 () Bool)

(assert (=> d!688732 m!2757049))

(declare-fun m!2757051 () Bool)

(assert (=> b!2325822 m!2757051))

(declare-fun m!2757053 () Bool)

(assert (=> b!2325822 m!2757053))

(assert (=> b!2325822 m!2756999))

(declare-fun m!2757055 () Bool)

(assert (=> b!2325822 m!2757055))

(assert (=> b!2325821 m!2756999))

(declare-fun m!2757057 () Bool)

(assert (=> b!2325821 m!2757057))

(assert (=> b!2325784 d!688732))

(declare-fun d!688736 () Bool)

(assert (=> d!688736 (= (slice!719 (t!207484 l!2797) (- i!741 1) lt!861508) (take!491 (drop!1512 (t!207484 l!2797) (- i!741 1)) (- lt!861508 (- i!741 1))))))

(declare-fun bs!459261 () Bool)

(assert (= bs!459261 d!688736))

(declare-fun m!2757059 () Bool)

(assert (=> bs!459261 m!2757059))

(assert (=> bs!459261 m!2757059))

(declare-fun m!2757061 () Bool)

(assert (=> bs!459261 m!2757061))

(assert (=> b!2325784 d!688736))

(declare-fun b!2325835 () Bool)

(declare-fun e!1490251 () Bool)

(declare-fun tp!737123 () Bool)

(assert (=> b!2325835 (= e!1490251 (and tp_is_empty!10857 tp!737123))))

(assert (=> b!2325785 (= tp!737117 e!1490251)))

(assert (= (and b!2325785 ((_ is Cons!27684) (t!207484 l!2797))) b!2325835))

(check-sat (not d!688732) (not b!2325822) (not b!2325835) tp_is_empty!10857 (not b!2325797) (not d!688736) (not d!688726) (not b!2325821) (not b!2325799) (not d!688720))
(check-sat)
