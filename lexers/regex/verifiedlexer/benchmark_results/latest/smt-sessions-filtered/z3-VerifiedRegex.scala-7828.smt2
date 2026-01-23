; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411108 () Bool)

(assert start!411108)

(declare-datatypes ((T!80046 0))(
  ( (T!80047 (val!15280 Int)) )
))
(declare-datatypes ((List!47489 0))(
  ( (Nil!47365) (Cons!47365 (h!52785 T!80046) (t!354074 List!47489)) )
))
(declare-datatypes ((IArray!28699 0))(
  ( (IArray!28700 (innerList!14407 List!47489)) )
))
(declare-fun arr!8 () IArray!28699)

(declare-fun rec!41 (IArray!28699 Int List!47489) List!47489)

(declare-fun size!34685 (IArray!28699) Int)

(declare-fun list!17287 (IArray!28699) List!47489)

(assert (=> start!411108 (not (= (rec!41 arr!8 (size!34685 arr!8) Nil!47365) (list!17287 arr!8)))))

(declare-fun e!2657129 () Bool)

(declare-fun inv!62750 (IArray!28699) Bool)

(assert (=> start!411108 (and (inv!62750 arr!8) e!2657129)))

(declare-fun b!4280153 () Bool)

(declare-fun tp!1309246 () Bool)

(assert (=> b!4280153 (= e!2657129 tp!1309246)))

(assert (= start!411108 b!4280153))

(declare-fun m!4877927 () Bool)

(assert (=> start!411108 m!4877927))

(assert (=> start!411108 m!4877927))

(declare-fun m!4877929 () Bool)

(assert (=> start!411108 m!4877929))

(declare-fun m!4877931 () Bool)

(assert (=> start!411108 m!4877931))

(declare-fun m!4877933 () Bool)

(assert (=> start!411108 m!4877933))

(check-sat (not start!411108) (not b!4280153))
(check-sat)
(get-model)

(declare-fun d!1264399 () Bool)

(declare-fun lt!1514752 () List!47489)

(assert (=> d!1264399 (= lt!1514752 (list!17287 arr!8))))

(declare-fun e!2657140 () List!47489)

(assert (=> d!1264399 (= lt!1514752 e!2657140)))

(declare-fun c!729364 () Bool)

(assert (=> d!1264399 (= c!729364 (<= (size!34685 arr!8) 0))))

(declare-fun e!2657141 () Bool)

(assert (=> d!1264399 e!2657141))

(declare-fun res!1756889 () Bool)

(assert (=> d!1264399 (=> (not res!1756889) (not e!2657141))))

(assert (=> d!1264399 (= res!1756889 (<= 0 (size!34685 arr!8)))))

(assert (=> d!1264399 (= (rec!41 arr!8 (size!34685 arr!8) Nil!47365) lt!1514752)))

(declare-fun b!4280169 () Bool)

(assert (=> b!4280169 (= e!2657141 (<= (size!34685 arr!8) (size!34685 arr!8)))))

(declare-fun b!4280170 () Bool)

(assert (=> b!4280170 (= e!2657140 Nil!47365)))

(declare-fun b!4280171 () Bool)

(declare-fun $colon$colon!645 (List!47489 T!80046) List!47489)

(declare-fun apply!10799 (IArray!28699 Int) T!80046)

(assert (=> b!4280171 (= e!2657140 (rec!41 arr!8 (- (size!34685 arr!8) 1) ($colon$colon!645 Nil!47365 (apply!10799 arr!8 (- (size!34685 arr!8) 1)))))))

(declare-fun lt!1514753 () List!47489)

(assert (=> b!4280171 (= lt!1514753 (list!17287 arr!8))))

(declare-fun lt!1514755 () Int)

(assert (=> b!4280171 (= lt!1514755 (- (size!34685 arr!8) 1))))

(declare-datatypes ((Unit!66321 0))(
  ( (Unit!66322) )
))
(declare-fun lt!1514748 () Unit!66321)

(declare-fun lemmaDropApply!1247 (List!47489 Int) Unit!66321)

(assert (=> b!4280171 (= lt!1514748 (lemmaDropApply!1247 lt!1514753 lt!1514755))))

(declare-fun head!9003 (List!47489) T!80046)

(declare-fun drop!2147 (List!47489 Int) List!47489)

(declare-fun apply!10801 (List!47489 Int) T!80046)

(assert (=> b!4280171 (= (head!9003 (drop!2147 lt!1514753 lt!1514755)) (apply!10801 lt!1514753 lt!1514755))))

(declare-fun lt!1514747 () Unit!66321)

(assert (=> b!4280171 (= lt!1514747 lt!1514748)))

(declare-fun lt!1514751 () List!47489)

(assert (=> b!4280171 (= lt!1514751 (list!17287 arr!8))))

(declare-fun lt!1514754 () Int)

(assert (=> b!4280171 (= lt!1514754 (- (size!34685 arr!8) 1))))

(declare-fun lt!1514750 () Unit!66321)

(declare-fun lemmaDropTail!1131 (List!47489 Int) Unit!66321)

(assert (=> b!4280171 (= lt!1514750 (lemmaDropTail!1131 lt!1514751 lt!1514754))))

(declare-fun tail!6868 (List!47489) List!47489)

(assert (=> b!4280171 (= (tail!6868 (drop!2147 lt!1514751 lt!1514754)) (drop!2147 lt!1514751 (+ lt!1514754 1)))))

(declare-fun lt!1514749 () Unit!66321)

(assert (=> b!4280171 (= lt!1514749 lt!1514750)))

(assert (= (and d!1264399 res!1756889) b!4280169))

(assert (= (and d!1264399 c!729364) b!4280170))

(assert (= (and d!1264399 (not c!729364)) b!4280171))

(assert (=> d!1264399 m!4877931))

(assert (=> b!4280169 m!4877927))

(assert (=> b!4280171 m!4877931))

(declare-fun m!4877957 () Bool)

(assert (=> b!4280171 m!4877957))

(declare-fun m!4877959 () Bool)

(assert (=> b!4280171 m!4877959))

(declare-fun m!4877961 () Bool)

(assert (=> b!4280171 m!4877961))

(declare-fun m!4877963 () Bool)

(assert (=> b!4280171 m!4877963))

(declare-fun m!4877965 () Bool)

(assert (=> b!4280171 m!4877965))

(declare-fun m!4877967 () Bool)

(assert (=> b!4280171 m!4877967))

(assert (=> b!4280171 m!4877961))

(declare-fun m!4877969 () Bool)

(assert (=> b!4280171 m!4877969))

(declare-fun m!4877971 () Bool)

(assert (=> b!4280171 m!4877971))

(declare-fun m!4877973 () Bool)

(assert (=> b!4280171 m!4877973))

(assert (=> b!4280171 m!4877967))

(declare-fun m!4877975 () Bool)

(assert (=> b!4280171 m!4877975))

(assert (=> b!4280171 m!4877971))

(assert (=> b!4280171 m!4877969))

(declare-fun m!4877977 () Bool)

(assert (=> b!4280171 m!4877977))

(assert (=> start!411108 d!1264399))

(declare-fun d!1264403 () Bool)

(declare-fun lt!1514761 () Int)

(declare-fun size!34686 (List!47489) Int)

(assert (=> d!1264403 (= lt!1514761 (size!34686 (list!17287 arr!8)))))

(declare-fun choose!26097 (IArray!28699) Int)

(assert (=> d!1264403 (= lt!1514761 (choose!26097 arr!8))))

(assert (=> d!1264403 (= (size!34685 arr!8) lt!1514761)))

(declare-fun bs!602691 () Bool)

(assert (= bs!602691 d!1264403))

(assert (=> bs!602691 m!4877931))

(assert (=> bs!602691 m!4877931))

(declare-fun m!4877985 () Bool)

(assert (=> bs!602691 m!4877985))

(declare-fun m!4877987 () Bool)

(assert (=> bs!602691 m!4877987))

(assert (=> start!411108 d!1264403))

(declare-fun d!1264409 () Bool)

(assert (=> d!1264409 (= (list!17287 arr!8) (innerList!14407 arr!8))))

(assert (=> start!411108 d!1264409))

(declare-fun d!1264411 () Bool)

(assert (=> d!1264411 (= (inv!62750 arr!8) (<= (size!34686 (innerList!14407 arr!8)) 2147483647))))

(declare-fun bs!602692 () Bool)

(assert (= bs!602692 d!1264411))

(declare-fun m!4877989 () Bool)

(assert (=> bs!602692 m!4877989))

(assert (=> start!411108 d!1264411))

(declare-fun b!4280181 () Bool)

(declare-fun e!2657147 () Bool)

(declare-fun tp_is_empty!22969 () Bool)

(declare-fun tp!1309252 () Bool)

(assert (=> b!4280181 (= e!2657147 (and tp_is_empty!22969 tp!1309252))))

(assert (=> b!4280153 (= tp!1309246 e!2657147)))

(get-info :version)

(assert (= (and b!4280153 ((_ is Cons!47365) (innerList!14407 arr!8))) b!4280181))

(check-sat (not b!4280169) (not d!1264403) (not b!4280171) (not d!1264411) (not b!4280181) (not d!1264399) tp_is_empty!22969)
(check-sat)
