; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187340 () Bool)

(assert start!187340)

(declare-fun res!837647 () Bool)

(declare-fun e!1193718 () Bool)

(assert (=> start!187340 (=> (not res!837647) (not e!1193718))))

(declare-datatypes ((T!33340 0))(
  ( (T!33341 (val!5974 Int)) )
))
(declare-datatypes ((List!20791 0))(
  ( (Nil!20709) (Cons!20709 (h!26110 T!33340) (t!173008 List!20791)) )
))
(declare-fun l!2791 () List!20791)

(declare-fun size!16442 (List!20791) Int)

(assert (=> start!187340 (= res!837647 (> (size!16442 l!2791) 0))))

(assert (=> start!187340 e!1193718))

(declare-fun e!1193719 () Bool)

(assert (=> start!187340 e!1193719))

(declare-fun b!1871094 () Bool)

(declare-fun res!837649 () Bool)

(assert (=> b!1871094 (=> (not res!837649) (not e!1193718))))

(declare-fun tail!2849 (List!20791) List!20791)

(assert (=> b!1871094 (= res!837649 (= (tail!2849 l!2791) (t!173008 l!2791)))))

(declare-fun b!1871093 () Bool)

(declare-fun res!837648 () Bool)

(assert (=> b!1871093 (=> (not res!837648) (not e!1193718))))

(get-info :version)

(assert (=> b!1871093 (= res!837648 (not ((_ is Nil!20709) l!2791)))))

(declare-fun b!1871095 () Bool)

(assert (=> b!1871095 (= e!1193718 (> 0 (size!16442 (t!173008 l!2791))))))

(declare-fun b!1871096 () Bool)

(declare-fun tp_is_empty!8727 () Bool)

(declare-fun tp!532295 () Bool)

(assert (=> b!1871096 (= e!1193719 (and tp_is_empty!8727 tp!532295))))

(assert (= (and start!187340 res!837647) b!1871093))

(assert (= (and b!1871093 res!837648) b!1871094))

(assert (= (and b!1871094 res!837649) b!1871095))

(assert (= (and start!187340 ((_ is Cons!20709) l!2791)) b!1871096))

(declare-fun m!2297177 () Bool)

(assert (=> start!187340 m!2297177))

(declare-fun m!2297179 () Bool)

(assert (=> b!1871094 m!2297179))

(declare-fun m!2297181 () Bool)

(assert (=> b!1871095 m!2297181))

(check-sat (not b!1871095) tp_is_empty!8727 (not b!1871094) (not b!1871096) (not start!187340))
(check-sat)
(get-model)

(declare-fun d!572050 () Bool)

(assert (=> d!572050 (= (tail!2849 l!2791) (t!173008 l!2791))))

(assert (=> b!1871094 d!572050))

(declare-fun d!572052 () Bool)

(declare-fun lt!719306 () Int)

(assert (=> d!572052 (>= lt!719306 0)))

(declare-fun e!1193728 () Int)

(assert (=> d!572052 (= lt!719306 e!1193728)))

(declare-fun c!304896 () Bool)

(assert (=> d!572052 (= c!304896 ((_ is Nil!20709) l!2791))))

(assert (=> d!572052 (= (size!16442 l!2791) lt!719306)))

(declare-fun b!1871113 () Bool)

(assert (=> b!1871113 (= e!1193728 0)))

(declare-fun b!1871114 () Bool)

(assert (=> b!1871114 (= e!1193728 (+ 1 (size!16442 (t!173008 l!2791))))))

(assert (= (and d!572052 c!304896) b!1871113))

(assert (= (and d!572052 (not c!304896)) b!1871114))

(assert (=> b!1871114 m!2297181))

(assert (=> start!187340 d!572052))

(declare-fun d!572058 () Bool)

(declare-fun lt!719307 () Int)

(assert (=> d!572058 (>= lt!719307 0)))

(declare-fun e!1193730 () Int)

(assert (=> d!572058 (= lt!719307 e!1193730)))

(declare-fun c!304897 () Bool)

(assert (=> d!572058 (= c!304897 ((_ is Nil!20709) (t!173008 l!2791)))))

(assert (=> d!572058 (= (size!16442 (t!173008 l!2791)) lt!719307)))

(declare-fun b!1871116 () Bool)

(assert (=> b!1871116 (= e!1193730 0)))

(declare-fun b!1871117 () Bool)

(assert (=> b!1871117 (= e!1193730 (+ 1 (size!16442 (t!173008 (t!173008 l!2791)))))))

(assert (= (and d!572058 c!304897) b!1871116))

(assert (= (and d!572058 (not c!304897)) b!1871117))

(declare-fun m!2297185 () Bool)

(assert (=> b!1871117 m!2297185))

(assert (=> b!1871095 d!572058))

(declare-fun b!1871122 () Bool)

(declare-fun e!1193733 () Bool)

(declare-fun tp!532301 () Bool)

(assert (=> b!1871122 (= e!1193733 (and tp_is_empty!8727 tp!532301))))

(assert (=> b!1871096 (= tp!532295 e!1193733)))

(assert (= (and b!1871096 ((_ is Cons!20709) (t!173008 l!2791))) b!1871122))

(check-sat (not b!1871114) (not b!1871117) (not b!1871122) tp_is_empty!8727)
(check-sat)
