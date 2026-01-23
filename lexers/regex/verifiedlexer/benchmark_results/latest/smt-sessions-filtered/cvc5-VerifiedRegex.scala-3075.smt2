; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183124 () Bool)

(assert start!183124)

(declare-fun b!1839949 () Bool)

(declare-fun e!1175821 () Bool)

(declare-fun tp_is_empty!8299 () Bool)

(declare-fun tp!520299 () Bool)

(assert (=> b!1839949 (= e!1175821 (and tp_is_empty!8299 tp!520299))))

(declare-fun b!1839950 () Bool)

(declare-fun e!1175819 () Bool)

(declare-fun tp!520300 () Bool)

(assert (=> b!1839950 (= e!1175819 (and tp_is_empty!8299 tp!520300))))

(declare-fun b!1839951 () Bool)

(declare-fun res!826903 () Bool)

(declare-fun e!1175820 () Bool)

(assert (=> b!1839951 (=> (not res!826903) (not e!1175820))))

(declare-datatypes ((B!1551 0))(
  ( (B!1552 (val!5723 Int)) )
))
(declare-datatypes ((List!20323 0))(
  ( (Nil!20253) (Cons!20253 (h!25654 B!1551) (t!171752 List!20323)) )
))
(declare-fun p!2031 () List!20323)

(declare-fun l!3477 () List!20323)

(declare-fun size!16053 (List!20323) Int)

(assert (=> b!1839951 (= res!826903 (<= (+ 1 (size!16053 p!2031)) (size!16053 l!3477)))))

(declare-fun res!826901 () Bool)

(assert (=> start!183124 (=> (not res!826901) (not e!1175820))))

(declare-fun isPrefix!1862 (List!20323 List!20323) Bool)

(assert (=> start!183124 (= res!826901 (isPrefix!1862 p!2031 l!3477))))

(assert (=> start!183124 e!1175820))

(assert (=> start!183124 e!1175819))

(assert (=> start!183124 e!1175821))

(declare-fun b!1839952 () Bool)

(declare-fun getSuffix!983 (List!20323 List!20323) List!20323)

(assert (=> b!1839952 (= e!1175820 (= (getSuffix!983 l!3477 p!2031) Nil!20253))))

(declare-fun b!1839953 () Bool)

(declare-fun res!826902 () Bool)

(assert (=> b!1839953 (=> (not res!826902) (not e!1175820))))

(assert (=> b!1839953 (= res!826902 (not (is-Cons!20253 p!2031)))))

(assert (= (and start!183124 res!826901) b!1839951))

(assert (= (and b!1839951 res!826903) b!1839953))

(assert (= (and b!1839953 res!826902) b!1839952))

(assert (= (and start!183124 (is-Cons!20253 p!2031)) b!1839950))

(assert (= (and start!183124 (is-Cons!20253 l!3477)) b!1839949))

(declare-fun m!2267593 () Bool)

(assert (=> b!1839951 m!2267593))

(declare-fun m!2267595 () Bool)

(assert (=> b!1839951 m!2267595))

(declare-fun m!2267597 () Bool)

(assert (=> start!183124 m!2267597))

(declare-fun m!2267599 () Bool)

(assert (=> b!1839952 m!2267599))

(push 1)

(assert (not b!1839952))

(assert (not b!1839949))

(assert (not b!1839951))

(assert (not b!1839950))

(assert (not start!183124))

(assert tp_is_empty!8299)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1839978 () Bool)

(declare-fun res!826924 () Bool)

(declare-fun e!1175839 () Bool)

(assert (=> b!1839978 (=> (not res!826924) (not e!1175839))))

(declare-fun head!4307 (List!20323) B!1551)

(assert (=> b!1839978 (= res!826924 (= (head!4307 p!2031) (head!4307 l!3477)))))

(declare-fun b!1839977 () Bool)

(declare-fun e!1175837 () Bool)

(assert (=> b!1839977 (= e!1175837 e!1175839)))

(declare-fun res!826922 () Bool)

(assert (=> b!1839977 (=> (not res!826922) (not e!1175839))))

(assert (=> b!1839977 (= res!826922 (not (is-Nil!20253 l!3477)))))

(declare-fun b!1839979 () Bool)

(declare-fun tail!2771 (List!20323) List!20323)

(assert (=> b!1839979 (= e!1175839 (isPrefix!1862 (tail!2771 p!2031) (tail!2771 l!3477)))))

(declare-fun d!562638 () Bool)

(declare-fun e!1175838 () Bool)

(assert (=> d!562638 e!1175838))

(declare-fun res!826921 () Bool)

(assert (=> d!562638 (=> res!826921 e!1175838)))

(declare-fun lt!713995 () Bool)

(assert (=> d!562638 (= res!826921 (not lt!713995))))

(assert (=> d!562638 (= lt!713995 e!1175837)))

(declare-fun res!826923 () Bool)

(assert (=> d!562638 (=> res!826923 e!1175837)))

(assert (=> d!562638 (= res!826923 (is-Nil!20253 p!2031))))

(assert (=> d!562638 (= (isPrefix!1862 p!2031 l!3477) lt!713995)))

(declare-fun b!1839980 () Bool)

(assert (=> b!1839980 (= e!1175838 (>= (size!16053 l!3477) (size!16053 p!2031)))))

(assert (= (and d!562638 (not res!826923)) b!1839977))

(assert (= (and b!1839977 res!826922) b!1839978))

(assert (= (and b!1839978 res!826924) b!1839979))

(assert (= (and d!562638 (not res!826921)) b!1839980))

(declare-fun m!2267609 () Bool)

(assert (=> b!1839978 m!2267609))

(declare-fun m!2267611 () Bool)

(assert (=> b!1839978 m!2267611))

(declare-fun m!2267613 () Bool)

(assert (=> b!1839979 m!2267613))

(declare-fun m!2267615 () Bool)

(assert (=> b!1839979 m!2267615))

(assert (=> b!1839979 m!2267613))

(assert (=> b!1839979 m!2267615))

(declare-fun m!2267617 () Bool)

(assert (=> b!1839979 m!2267617))

(assert (=> b!1839980 m!2267595))

(assert (=> b!1839980 m!2267593))

(assert (=> start!183124 d!562638))

(declare-fun d!562642 () Bool)

(declare-fun lt!713998 () List!20323)

(declare-fun ++!5502 (List!20323 List!20323) List!20323)

(assert (=> d!562642 (= (++!5502 p!2031 lt!713998) l!3477)))

(declare-fun e!1175842 () List!20323)

(assert (=> d!562642 (= lt!713998 e!1175842)))

(declare-fun c!300308 () Bool)

(assert (=> d!562642 (= c!300308 (is-Cons!20253 p!2031))))

(assert (=> d!562642 (>= (size!16053 l!3477) (size!16053 p!2031))))

(assert (=> d!562642 (= (getSuffix!983 l!3477 p!2031) lt!713998)))

(declare-fun b!1839985 () Bool)

(assert (=> b!1839985 (= e!1175842 (getSuffix!983 (tail!2771 l!3477) (t!171752 p!2031)))))

(declare-fun b!1839986 () Bool)

(assert (=> b!1839986 (= e!1175842 l!3477)))

(assert (= (and d!562642 c!300308) b!1839985))

(assert (= (and d!562642 (not c!300308)) b!1839986))

(declare-fun m!2267619 () Bool)

(assert (=> d!562642 m!2267619))

(assert (=> d!562642 m!2267595))

(assert (=> d!562642 m!2267593))

(assert (=> b!1839985 m!2267615))

(assert (=> b!1839985 m!2267615))

(declare-fun m!2267621 () Bool)

(assert (=> b!1839985 m!2267621))

(assert (=> b!1839952 d!562642))

(declare-fun d!562644 () Bool)

(declare-fun lt!714003 () Int)

(assert (=> d!562644 (>= lt!714003 0)))

(declare-fun e!1175847 () Int)

(assert (=> d!562644 (= lt!714003 e!1175847)))

(declare-fun c!300313 () Bool)

(assert (=> d!562644 (= c!300313 (is-Nil!20253 p!2031))))

(assert (=> d!562644 (= (size!16053 p!2031) lt!714003)))

(declare-fun b!1839995 () Bool)

(assert (=> b!1839995 (= e!1175847 0)))

(declare-fun b!1839996 () Bool)

(assert (=> b!1839996 (= e!1175847 (+ 1 (size!16053 (t!171752 p!2031))))))

(assert (= (and d!562644 c!300313) b!1839995))

(assert (= (and d!562644 (not c!300313)) b!1839996))

(declare-fun m!2267623 () Bool)

(assert (=> b!1839996 m!2267623))

(assert (=> b!1839951 d!562644))

(declare-fun d!562646 () Bool)

(declare-fun lt!714004 () Int)

(assert (=> d!562646 (>= lt!714004 0)))

(declare-fun e!1175848 () Int)

(assert (=> d!562646 (= lt!714004 e!1175848)))

(declare-fun c!300314 () Bool)

(assert (=> d!562646 (= c!300314 (is-Nil!20253 l!3477))))

(assert (=> d!562646 (= (size!16053 l!3477) lt!714004)))

(declare-fun b!1839997 () Bool)

(assert (=> b!1839997 (= e!1175848 0)))

(declare-fun b!1839998 () Bool)

(assert (=> b!1839998 (= e!1175848 (+ 1 (size!16053 (t!171752 l!3477))))))

(assert (= (and d!562646 c!300314) b!1839997))

(assert (= (and d!562646 (not c!300314)) b!1839998))

(declare-fun m!2267625 () Bool)

(assert (=> b!1839998 m!2267625))

(assert (=> b!1839951 d!562646))

(declare-fun b!1840003 () Bool)

(declare-fun e!1175851 () Bool)

(declare-fun tp!520309 () Bool)

(assert (=> b!1840003 (= e!1175851 (and tp_is_empty!8299 tp!520309))))

(assert (=> b!1839950 (= tp!520300 e!1175851)))

(assert (= (and b!1839950 (is-Cons!20253 (t!171752 p!2031))) b!1840003))

(declare-fun b!1840004 () Bool)

(declare-fun e!1175852 () Bool)

(declare-fun tp!520310 () Bool)

(assert (=> b!1840004 (= e!1175852 (and tp_is_empty!8299 tp!520310))))

(assert (=> b!1839949 (= tp!520299 e!1175852)))

(assert (= (and b!1839949 (is-Cons!20253 (t!171752 l!3477))) b!1840004))

(push 1)

(assert (not b!1839980))

(assert (not d!562642))

(assert (not b!1840003))

(assert (not b!1839996))

(assert (not b!1839998))

(assert (not b!1839979))

(assert (not b!1839985))

(assert (not b!1839978))

(assert (not b!1840004))

(assert tp_is_empty!8299)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

