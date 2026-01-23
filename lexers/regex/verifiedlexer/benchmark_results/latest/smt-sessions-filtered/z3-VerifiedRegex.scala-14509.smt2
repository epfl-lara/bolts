; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754556 () Bool)

(assert start!754556)

(declare-fun b!8017786 () Bool)

(declare-fun e!4722945 () Bool)

(declare-datatypes ((B!4053 0))(
  ( (B!4054 (val!32416 Int)) )
))
(declare-datatypes ((List!74928 0))(
  ( (Nil!74804) (Cons!74804 (h!81252 B!4053) (t!390671 List!74928)) )
))
(declare-fun p!2003 () List!74928)

(declare-fun l!3425 () List!74928)

(declare-fun size!43595 (List!74928) Int)

(assert (=> b!8017786 (= e!4722945 (> (size!43595 p!2003) (size!43595 l!3425)))))

(declare-fun res!3170042 () Bool)

(assert (=> start!754556 (=> (not res!3170042) (not e!4722945))))

(declare-fun isPrefix!6751 (List!74928 List!74928) Bool)

(assert (=> start!754556 (= res!3170042 (isPrefix!6751 p!2003 l!3425))))

(assert (=> start!754556 e!4722945))

(declare-fun e!4722944 () Bool)

(assert (=> start!754556 e!4722944))

(declare-fun e!4722943 () Bool)

(assert (=> start!754556 e!4722943))

(declare-fun b!8017785 () Bool)

(declare-fun res!3170041 () Bool)

(assert (=> b!8017785 (=> (not res!3170041) (not e!4722945))))

(get-info :version)

(assert (=> b!8017785 (= res!3170041 ((_ is Nil!74804) p!2003))))

(declare-fun b!8017787 () Bool)

(declare-fun tp_is_empty!53941 () Bool)

(declare-fun tp!2399929 () Bool)

(assert (=> b!8017787 (= e!4722944 (and tp_is_empty!53941 tp!2399929))))

(declare-fun b!8017788 () Bool)

(declare-fun tp!2399930 () Bool)

(assert (=> b!8017788 (= e!4722943 (and tp_is_empty!53941 tp!2399930))))

(assert (= (and start!754556 res!3170042) b!8017785))

(assert (= (and b!8017785 res!3170041) b!8017786))

(assert (= (and start!754556 ((_ is Cons!74804) p!2003)) b!8017787))

(assert (= (and start!754556 ((_ is Cons!74804) l!3425)) b!8017788))

(declare-fun m!8380884 () Bool)

(assert (=> b!8017786 m!8380884))

(declare-fun m!8380886 () Bool)

(assert (=> b!8017786 m!8380886))

(declare-fun m!8380888 () Bool)

(assert (=> start!754556 m!8380888))

(check-sat (not b!8017786) (not b!8017788) tp_is_empty!53941 (not b!8017787) (not start!754556))
(check-sat)
(get-model)

(declare-fun b!8017807 () Bool)

(declare-fun e!4722960 () Bool)

(declare-fun tail!15891 (List!74928) List!74928)

(assert (=> b!8017807 (= e!4722960 (isPrefix!6751 (tail!15891 p!2003) (tail!15891 l!3425)))))

(declare-fun b!8017806 () Bool)

(declare-fun res!3170062 () Bool)

(assert (=> b!8017806 (=> (not res!3170062) (not e!4722960))))

(declare-fun head!16366 (List!74928) B!4053)

(assert (=> b!8017806 (= res!3170062 (= (head!16366 p!2003) (head!16366 l!3425)))))

(declare-fun b!8017805 () Bool)

(declare-fun e!4722959 () Bool)

(assert (=> b!8017805 (= e!4722959 e!4722960)))

(declare-fun res!3170060 () Bool)

(assert (=> b!8017805 (=> (not res!3170060) (not e!4722960))))

(assert (=> b!8017805 (= res!3170060 (not ((_ is Nil!74804) l!3425)))))

(declare-fun b!8017808 () Bool)

(declare-fun e!4722958 () Bool)

(assert (=> b!8017808 (= e!4722958 (>= (size!43595 l!3425) (size!43595 p!2003)))))

(declare-fun d!2390610 () Bool)

(assert (=> d!2390610 e!4722958))

(declare-fun res!3170059 () Bool)

(assert (=> d!2390610 (=> res!3170059 e!4722958)))

(declare-fun lt!2719104 () Bool)

(assert (=> d!2390610 (= res!3170059 (not lt!2719104))))

(assert (=> d!2390610 (= lt!2719104 e!4722959)))

(declare-fun res!3170061 () Bool)

(assert (=> d!2390610 (=> res!3170061 e!4722959)))

(assert (=> d!2390610 (= res!3170061 ((_ is Nil!74804) p!2003))))

(assert (=> d!2390610 (= (isPrefix!6751 p!2003 l!3425) lt!2719104)))

(assert (= (and d!2390610 (not res!3170061)) b!8017805))

(assert (= (and b!8017805 res!3170060) b!8017806))

(assert (= (and b!8017806 res!3170062) b!8017807))

(assert (= (and d!2390610 (not res!3170059)) b!8017808))

(declare-fun m!8380890 () Bool)

(assert (=> b!8017807 m!8380890))

(declare-fun m!8380892 () Bool)

(assert (=> b!8017807 m!8380892))

(assert (=> b!8017807 m!8380890))

(assert (=> b!8017807 m!8380892))

(declare-fun m!8380894 () Bool)

(assert (=> b!8017807 m!8380894))

(declare-fun m!8380896 () Bool)

(assert (=> b!8017806 m!8380896))

(declare-fun m!8380898 () Bool)

(assert (=> b!8017806 m!8380898))

(assert (=> b!8017808 m!8380886))

(assert (=> b!8017808 m!8380884))

(assert (=> start!754556 d!2390610))

(declare-fun d!2390614 () Bool)

(declare-fun lt!2719110 () Int)

(assert (=> d!2390614 (>= lt!2719110 0)))

(declare-fun e!4722968 () Int)

(assert (=> d!2390614 (= lt!2719110 e!4722968)))

(declare-fun c!1471627 () Bool)

(assert (=> d!2390614 (= c!1471627 ((_ is Nil!74804) p!2003))))

(assert (=> d!2390614 (= (size!43595 p!2003) lt!2719110)))

(declare-fun b!8017821 () Bool)

(assert (=> b!8017821 (= e!4722968 0)))

(declare-fun b!8017822 () Bool)

(assert (=> b!8017822 (= e!4722968 (+ 1 (size!43595 (t!390671 p!2003))))))

(assert (= (and d!2390614 c!1471627) b!8017821))

(assert (= (and d!2390614 (not c!1471627)) b!8017822))

(declare-fun m!8380910 () Bool)

(assert (=> b!8017822 m!8380910))

(assert (=> b!8017786 d!2390614))

(declare-fun d!2390618 () Bool)

(declare-fun lt!2719112 () Int)

(assert (=> d!2390618 (>= lt!2719112 0)))

(declare-fun e!4722970 () Int)

(assert (=> d!2390618 (= lt!2719112 e!4722970)))

(declare-fun c!1471629 () Bool)

(assert (=> d!2390618 (= c!1471629 ((_ is Nil!74804) l!3425))))

(assert (=> d!2390618 (= (size!43595 l!3425) lt!2719112)))

(declare-fun b!8017825 () Bool)

(assert (=> b!8017825 (= e!4722970 0)))

(declare-fun b!8017826 () Bool)

(assert (=> b!8017826 (= e!4722970 (+ 1 (size!43595 (t!390671 l!3425))))))

(assert (= (and d!2390618 c!1471629) b!8017825))

(assert (= (and d!2390618 (not c!1471629)) b!8017826))

(declare-fun m!8380912 () Bool)

(assert (=> b!8017826 m!8380912))

(assert (=> b!8017786 d!2390618))

(declare-fun b!8017837 () Bool)

(declare-fun e!4722976 () Bool)

(declare-fun tp!2399935 () Bool)

(assert (=> b!8017837 (= e!4722976 (and tp_is_empty!53941 tp!2399935))))

(assert (=> b!8017788 (= tp!2399930 e!4722976)))

(assert (= (and b!8017788 ((_ is Cons!74804) (t!390671 l!3425))) b!8017837))

(declare-fun b!8017838 () Bool)

(declare-fun e!4722977 () Bool)

(declare-fun tp!2399936 () Bool)

(assert (=> b!8017838 (= e!4722977 (and tp_is_empty!53941 tp!2399936))))

(assert (=> b!8017787 (= tp!2399929 e!4722977)))

(assert (= (and b!8017787 ((_ is Cons!74804) (t!390671 p!2003))) b!8017838))

(check-sat (not b!8017807) (not b!8017837) tp_is_empty!53941 (not b!8017826) (not b!8017822) (not b!8017806) (not b!8017808) (not b!8017838))
(check-sat)
