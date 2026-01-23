; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183140 () Bool)

(assert start!183140)

(declare-fun res!826939 () Bool)

(declare-fun e!1175878 () Bool)

(assert (=> start!183140 (=> (not res!826939) (not e!1175878))))

(declare-datatypes ((B!1555 0))(
  ( (B!1556 (val!5725 Int)) )
))
(declare-datatypes ((List!20325 0))(
  ( (Nil!20255) (Cons!20255 (h!25656 B!1555) (t!171754 List!20325)) )
))
(declare-fun p!2031 () List!20325)

(declare-fun l!3477 () List!20325)

(declare-fun isPrefix!1864 (List!20325 List!20325) Bool)

(assert (=> start!183140 (= res!826939 (isPrefix!1864 p!2031 l!3477))))

(assert (=> start!183140 e!1175878))

(declare-fun e!1175879 () Bool)

(assert (=> start!183140 e!1175879))

(declare-fun e!1175877 () Bool)

(assert (=> start!183140 e!1175877))

(declare-fun b!1840039 () Bool)

(declare-fun lt!714017 () Int)

(declare-fun lt!714018 () Int)

(assert (=> b!1840039 (= e!1175878 (and (<= (+ 1 lt!714018) lt!714017) (not (is-Cons!20255 p!2031)) (or (> 0 lt!714018) (>= lt!714018 lt!714017))))))

(declare-fun size!16055 (List!20325) Int)

(assert (=> b!1840039 (= lt!714017 (size!16055 l!3477))))

(assert (=> b!1840039 (= lt!714018 (size!16055 p!2031))))

(declare-fun b!1840040 () Bool)

(declare-fun tp_is_empty!8303 () Bool)

(declare-fun tp!520320 () Bool)

(assert (=> b!1840040 (= e!1175879 (and tp_is_empty!8303 tp!520320))))

(declare-fun b!1840041 () Bool)

(declare-fun tp!520319 () Bool)

(assert (=> b!1840041 (= e!1175877 (and tp_is_empty!8303 tp!520319))))

(assert (= (and start!183140 res!826939) b!1840039))

(assert (= (and start!183140 (is-Cons!20255 p!2031)) b!1840040))

(assert (= (and start!183140 (is-Cons!20255 l!3477)) b!1840041))

(declare-fun m!2267645 () Bool)

(assert (=> start!183140 m!2267645))

(declare-fun m!2267647 () Bool)

(assert (=> b!1840039 m!2267647))

(declare-fun m!2267649 () Bool)

(assert (=> b!1840039 m!2267649))

(push 1)

(assert (not b!1840041))

(assert tp_is_empty!8303)

(assert (not start!183140))

(assert (not b!1840040))

(assert (not b!1840039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1840060 () Bool)

(declare-fun res!826954 () Bool)

(declare-fun e!1175896 () Bool)

(assert (=> b!1840060 (=> (not res!826954) (not e!1175896))))

(declare-fun head!4308 (List!20325) B!1555)

(assert (=> b!1840060 (= res!826954 (= (head!4308 p!2031) (head!4308 l!3477)))))

(declare-fun b!1840059 () Bool)

(declare-fun e!1175895 () Bool)

(assert (=> b!1840059 (= e!1175895 e!1175896)))

(declare-fun res!826951 () Bool)

(assert (=> b!1840059 (=> (not res!826951) (not e!1175896))))

(assert (=> b!1840059 (= res!826951 (not (is-Nil!20255 l!3477)))))

(declare-fun b!1840061 () Bool)

(declare-fun tail!2772 (List!20325) List!20325)

(assert (=> b!1840061 (= e!1175896 (isPrefix!1864 (tail!2772 p!2031) (tail!2772 l!3477)))))

(declare-fun b!1840062 () Bool)

(declare-fun e!1175897 () Bool)

(assert (=> b!1840062 (= e!1175897 (>= (size!16055 l!3477) (size!16055 p!2031)))))

(declare-fun d!562657 () Bool)

(assert (=> d!562657 e!1175897))

(declare-fun res!826953 () Bool)

(assert (=> d!562657 (=> res!826953 e!1175897)))

(declare-fun lt!714027 () Bool)

(assert (=> d!562657 (= res!826953 (not lt!714027))))

(assert (=> d!562657 (= lt!714027 e!1175895)))

(declare-fun res!826952 () Bool)

(assert (=> d!562657 (=> res!826952 e!1175895)))

(assert (=> d!562657 (= res!826952 (is-Nil!20255 p!2031))))

(assert (=> d!562657 (= (isPrefix!1864 p!2031 l!3477) lt!714027)))

(assert (= (and d!562657 (not res!826952)) b!1840059))

(assert (= (and b!1840059 res!826951) b!1840060))

(assert (= (and b!1840060 res!826954) b!1840061))

(assert (= (and d!562657 (not res!826953)) b!1840062))

(declare-fun m!2267657 () Bool)

(assert (=> b!1840060 m!2267657))

(declare-fun m!2267659 () Bool)

(assert (=> b!1840060 m!2267659))

(declare-fun m!2267661 () Bool)

(assert (=> b!1840061 m!2267661))

(declare-fun m!2267663 () Bool)

(assert (=> b!1840061 m!2267663))

(assert (=> b!1840061 m!2267661))

(assert (=> b!1840061 m!2267663))

(declare-fun m!2267665 () Bool)

(assert (=> b!1840061 m!2267665))

(assert (=> b!1840062 m!2267647))

(assert (=> b!1840062 m!2267649))

(assert (=> start!183140 d!562657))

(declare-fun d!562659 () Bool)

(declare-fun lt!714032 () Int)

(assert (=> d!562659 (>= lt!714032 0)))

(declare-fun e!1175906 () Int)

(assert (=> d!562659 (= lt!714032 e!1175906)))

(declare-fun c!300322 () Bool)

(assert (=> d!562659 (= c!300322 (is-Nil!20255 l!3477))))

(assert (=> d!562659 (= (size!16055 l!3477) lt!714032)))

(declare-fun b!1840075 () Bool)

(assert (=> b!1840075 (= e!1175906 0)))

(declare-fun b!1840076 () Bool)

(assert (=> b!1840076 (= e!1175906 (+ 1 (size!16055 (t!171754 l!3477))))))

(assert (= (and d!562659 c!300322) b!1840075))

(assert (= (and d!562659 (not c!300322)) b!1840076))

(declare-fun m!2267667 () Bool)

(assert (=> b!1840076 m!2267667))

(assert (=> b!1840039 d!562659))

(declare-fun d!562661 () Bool)

(declare-fun lt!714033 () Int)

(assert (=> d!562661 (>= lt!714033 0)))

(declare-fun e!1175907 () Int)

(assert (=> d!562661 (= lt!714033 e!1175907)))

(declare-fun c!300323 () Bool)

(assert (=> d!562661 (= c!300323 (is-Nil!20255 p!2031))))

(assert (=> d!562661 (= (size!16055 p!2031) lt!714033)))

(declare-fun b!1840077 () Bool)

(assert (=> b!1840077 (= e!1175907 0)))

(declare-fun b!1840078 () Bool)

(assert (=> b!1840078 (= e!1175907 (+ 1 (size!16055 (t!171754 p!2031))))))

(assert (= (and d!562661 c!300323) b!1840077))

(assert (= (and d!562661 (not c!300323)) b!1840078))

(declare-fun m!2267669 () Bool)

(assert (=> b!1840078 m!2267669))

(assert (=> b!1840039 d!562661))

(declare-fun b!1840083 () Bool)

(declare-fun e!1175910 () Bool)

(declare-fun tp!520329 () Bool)

(assert (=> b!1840083 (= e!1175910 (and tp_is_empty!8303 tp!520329))))

(assert (=> b!1840041 (= tp!520319 e!1175910)))

(assert (= (and b!1840041 (is-Cons!20255 (t!171754 l!3477))) b!1840083))

(declare-fun b!1840084 () Bool)

(declare-fun e!1175911 () Bool)

(declare-fun tp!520330 () Bool)

(assert (=> b!1840084 (= e!1175911 (and tp_is_empty!8303 tp!520330))))

(assert (=> b!1840040 (= tp!520320 e!1175911)))

(assert (= (and b!1840040 (is-Cons!20255 (t!171754 p!2031))) b!1840084))

(push 1)

(assert (not b!1840060))

(assert (not b!1840062))

(assert (not b!1840078))

(assert (not b!1840084))

(assert (not b!1840076))

(assert (not b!1840083))

(assert tp_is_empty!8303)

(assert (not b!1840061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

