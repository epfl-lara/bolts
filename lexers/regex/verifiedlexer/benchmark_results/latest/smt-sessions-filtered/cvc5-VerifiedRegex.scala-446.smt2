; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13140 () Bool)

(assert start!13140)

(declare-fun b!127867 () Bool)

(declare-fun e!73469 () Bool)

(declare-datatypes ((B!639 0))(
  ( (B!640 (val!783 Int)) )
))
(declare-datatypes ((List!2114 0))(
  ( (Nil!2108) (Cons!2108 (h!7505 B!639) (t!22690 List!2114)) )
))
(declare-fun l!3367 () List!2114)

(declare-fun isEmpty!838 (List!2114) Bool)

(assert (=> b!127867 (= e!73469 (isEmpty!838 l!3367))))

(declare-fun b!127868 () Bool)

(declare-fun res!59005 () Bool)

(assert (=> b!127868 (=> (not res!59005) (not e!73469))))

(declare-fun p!1997 () List!2114)

(assert (=> b!127868 (= res!59005 (not (is-Cons!2108 p!1997)))))

(declare-fun b!127869 () Bool)

(declare-fun e!73466 () Bool)

(declare-fun tp_is_empty!1247 () Bool)

(declare-fun tp!69749 () Bool)

(assert (=> b!127869 (= e!73466 (and tp_is_empty!1247 tp!69749))))

(declare-fun b!127870 () Bool)

(declare-fun res!59004 () Bool)

(assert (=> b!127870 (=> (not res!59004) (not e!73469))))

(declare-fun s!1511 () List!2114)

(assert (=> b!127870 (= res!59004 (not (isEmpty!838 s!1511)))))

(declare-fun b!127871 () Bool)

(declare-fun e!73468 () Bool)

(declare-fun tp!69748 () Bool)

(assert (=> b!127871 (= e!73468 (and tp_is_empty!1247 tp!69748))))

(declare-fun res!59003 () Bool)

(assert (=> start!13140 (=> (not res!59003) (not e!73469))))

(declare-fun ++!405 (List!2114 List!2114) List!2114)

(assert (=> start!13140 (= res!59003 (= (++!405 p!1997 s!1511) l!3367))))

(assert (=> start!13140 e!73469))

(assert (=> start!13140 e!73468))

(assert (=> start!13140 e!73466))

(declare-fun e!73467 () Bool)

(assert (=> start!13140 e!73467))

(declare-fun b!127872 () Bool)

(declare-fun tp!69750 () Bool)

(assert (=> b!127872 (= e!73467 (and tp_is_empty!1247 tp!69750))))

(assert (= (and start!13140 res!59003) b!127870))

(assert (= (and b!127870 res!59004) b!127868))

(assert (= (and b!127868 res!59005) b!127867))

(assert (= (and start!13140 (is-Cons!2108 p!1997)) b!127871))

(assert (= (and start!13140 (is-Cons!2108 s!1511)) b!127869))

(assert (= (and start!13140 (is-Cons!2108 l!3367)) b!127872))

(declare-fun m!112655 () Bool)

(assert (=> b!127867 m!112655))

(declare-fun m!112657 () Bool)

(assert (=> b!127870 m!112657))

(declare-fun m!112659 () Bool)

(assert (=> start!13140 m!112659))

(push 1)

(assert (not b!127869))

(assert (not b!127870))

(assert (not start!13140))

(assert (not b!127872))

(assert (not b!127871))

(assert tp_is_empty!1247)

(assert (not b!127867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!73487 () Bool)

(declare-fun lt!38308 () List!2114)

(declare-fun b!127902 () Bool)

(assert (=> b!127902 (= e!73487 (or (not (= s!1511 Nil!2108)) (= lt!38308 p!1997)))))

(declare-fun b!127901 () Bool)

(declare-fun res!59020 () Bool)

(assert (=> b!127901 (=> (not res!59020) (not e!73487))))

(declare-fun size!1927 (List!2114) Int)

(assert (=> b!127901 (= res!59020 (= (size!1927 lt!38308) (+ (size!1927 p!1997) (size!1927 s!1511))))))

(declare-fun d!30185 () Bool)

(assert (=> d!30185 e!73487))

(declare-fun res!59019 () Bool)

(assert (=> d!30185 (=> (not res!59019) (not e!73487))))

(declare-fun content!245 (List!2114) (Set B!639))

(assert (=> d!30185 (= res!59019 (= (content!245 lt!38308) (set.union (content!245 p!1997) (content!245 s!1511))))))

(declare-fun e!73486 () List!2114)

(assert (=> d!30185 (= lt!38308 e!73486)))

(declare-fun c!27969 () Bool)

(assert (=> d!30185 (= c!27969 (is-Nil!2108 p!1997))))

(assert (=> d!30185 (= (++!405 p!1997 s!1511) lt!38308)))

(declare-fun b!127900 () Bool)

(assert (=> b!127900 (= e!73486 (Cons!2108 (h!7505 p!1997) (++!405 (t!22690 p!1997) s!1511)))))

(declare-fun b!127899 () Bool)

(assert (=> b!127899 (= e!73486 s!1511)))

(assert (= (and d!30185 c!27969) b!127899))

(assert (= (and d!30185 (not c!27969)) b!127900))

(assert (= (and d!30185 res!59019) b!127901))

(assert (= (and b!127901 res!59020) b!127902))

(declare-fun m!112667 () Bool)

(assert (=> b!127901 m!112667))

(declare-fun m!112669 () Bool)

(assert (=> b!127901 m!112669))

(declare-fun m!112671 () Bool)

(assert (=> b!127901 m!112671))

(declare-fun m!112673 () Bool)

(assert (=> d!30185 m!112673))

(declare-fun m!112675 () Bool)

(assert (=> d!30185 m!112675))

(declare-fun m!112677 () Bool)

(assert (=> d!30185 m!112677))

(declare-fun m!112679 () Bool)

(assert (=> b!127900 m!112679))

(assert (=> start!13140 d!30185))

(declare-fun d!30191 () Bool)

(assert (=> d!30191 (= (isEmpty!838 s!1511) (is-Nil!2108 s!1511))))

(assert (=> b!127870 d!30191))

(declare-fun d!30193 () Bool)

(assert (=> d!30193 (= (isEmpty!838 l!3367) (is-Nil!2108 l!3367))))

(assert (=> b!127867 d!30193))

(declare-fun b!127907 () Bool)

(declare-fun e!73490 () Bool)

(declare-fun tp!69762 () Bool)

(assert (=> b!127907 (= e!73490 (and tp_is_empty!1247 tp!69762))))

(assert (=> b!127869 (= tp!69749 e!73490)))

(assert (= (and b!127869 (is-Cons!2108 (t!22690 s!1511))) b!127907))

(declare-fun b!127908 () Bool)

(declare-fun e!73491 () Bool)

(declare-fun tp!69763 () Bool)

(assert (=> b!127908 (= e!73491 (and tp_is_empty!1247 tp!69763))))

(assert (=> b!127872 (= tp!69750 e!73491)))

(assert (= (and b!127872 (is-Cons!2108 (t!22690 l!3367))) b!127908))

(declare-fun b!127909 () Bool)

(declare-fun e!73492 () Bool)

(declare-fun tp!69764 () Bool)

(assert (=> b!127909 (= e!73492 (and tp_is_empty!1247 tp!69764))))

(assert (=> b!127871 (= tp!69748 e!73492)))

(assert (= (and b!127871 (is-Cons!2108 (t!22690 p!1997))) b!127909))

(push 1)

(assert (not b!127907))

(assert (not d!30185))

(assert (not b!127908))

(assert (not b!127901))

(assert tp_is_empty!1247)

(assert (not b!127900))

(assert (not b!127909))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

