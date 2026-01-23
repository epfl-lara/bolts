; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13168 () Bool)

(assert start!13168)

(declare-fun b!128021 () Bool)

(declare-fun res!59058 () Bool)

(declare-fun e!73564 () Bool)

(assert (=> b!128021 (=> (not res!59058) (not e!73564))))

(declare-datatypes ((B!647 0))(
  ( (B!648 (val!787 Int)) )
))
(declare-datatypes ((List!2118 0))(
  ( (Nil!2112) (Cons!2112 (h!7509 B!647) (t!22694 List!2118)) )
))
(declare-fun s!1511 () List!2118)

(declare-fun isEmpty!842 (List!2118) Bool)

(assert (=> b!128021 (= res!59058 (not (isEmpty!842 s!1511)))))

(declare-fun res!59059 () Bool)

(assert (=> start!13168 (=> (not res!59059) (not e!73564))))

(declare-fun p!1997 () List!2118)

(declare-fun l!3367 () List!2118)

(declare-fun ++!409 (List!2118 List!2118) List!2118)

(assert (=> start!13168 (= res!59059 (= (++!409 p!1997 s!1511) l!3367))))

(assert (=> start!13168 e!73564))

(declare-fun e!73567 () Bool)

(assert (=> start!13168 e!73567))

(declare-fun e!73566 () Bool)

(assert (=> start!13168 e!73566))

(declare-fun e!73565 () Bool)

(assert (=> start!13168 e!73565))

(declare-fun b!128022 () Bool)

(declare-fun tp_is_empty!1255 () Bool)

(declare-fun tp!69804 () Bool)

(assert (=> b!128022 (= e!73566 (and tp_is_empty!1255 tp!69804))))

(declare-fun b!128023 () Bool)

(declare-fun res!59057 () Bool)

(assert (=> b!128023 (=> (not res!59057) (not e!73564))))

(assert (=> b!128023 (= res!59057 (is-Cons!2112 p!1997))))

(declare-fun b!128024 () Bool)

(declare-fun tail!257 (List!2118) List!2118)

(assert (=> b!128024 (= e!73564 (not (= (++!409 (t!22694 p!1997) s!1511) (tail!257 l!3367))))))

(declare-fun b!128025 () Bool)

(declare-fun tp!69805 () Bool)

(assert (=> b!128025 (= e!73565 (and tp_is_empty!1255 tp!69805))))

(declare-fun b!128026 () Bool)

(declare-fun tp!69806 () Bool)

(assert (=> b!128026 (= e!73567 (and tp_is_empty!1255 tp!69806))))

(assert (= (and start!13168 res!59059) b!128021))

(assert (= (and b!128021 res!59058) b!128023))

(assert (= (and b!128023 res!59057) b!128024))

(assert (= (and start!13168 (is-Cons!2112 p!1997)) b!128026))

(assert (= (and start!13168 (is-Cons!2112 s!1511)) b!128022))

(assert (= (and start!13168 (is-Cons!2112 l!3367)) b!128025))

(declare-fun m!112737 () Bool)

(assert (=> b!128021 m!112737))

(declare-fun m!112739 () Bool)

(assert (=> start!13168 m!112739))

(declare-fun m!112741 () Bool)

(assert (=> b!128024 m!112741))

(declare-fun m!112743 () Bool)

(assert (=> b!128024 m!112743))

(push 1)

(assert (not b!128025))

(assert (not b!128022))

(assert tp_is_empty!1255)

(assert (not b!128026))

(assert (not b!128024))

(assert (not start!13168))

(assert (not b!128021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30211 () Bool)

(assert (=> d!30211 (= (isEmpty!842 s!1511) (is-Nil!2112 s!1511))))

(assert (=> b!128021 d!30211))

(declare-fun b!128053 () Bool)

(declare-fun e!73585 () List!2118)

(assert (=> b!128053 (= e!73585 s!1511)))

(declare-fun b!128054 () Bool)

(assert (=> b!128054 (= e!73585 (Cons!2112 (h!7509 (t!22694 p!1997)) (++!409 (t!22694 (t!22694 p!1997)) s!1511)))))

(declare-fun d!30213 () Bool)

(declare-fun e!73584 () Bool)

(assert (=> d!30213 e!73584))

(declare-fun res!59073 () Bool)

(assert (=> d!30213 (=> (not res!59073) (not e!73584))))

(declare-fun lt!38326 () List!2118)

(declare-fun content!248 (List!2118) (Set B!647))

(assert (=> d!30213 (= res!59073 (= (content!248 lt!38326) (set.union (content!248 (t!22694 p!1997)) (content!248 s!1511))))))

(assert (=> d!30213 (= lt!38326 e!73585)))

(declare-fun c!27987 () Bool)

(assert (=> d!30213 (= c!27987 (is-Nil!2112 (t!22694 p!1997)))))

(assert (=> d!30213 (= (++!409 (t!22694 p!1997) s!1511) lt!38326)))

(declare-fun b!128056 () Bool)

(assert (=> b!128056 (= e!73584 (or (not (= s!1511 Nil!2112)) (= lt!38326 (t!22694 p!1997))))))

(declare-fun b!128055 () Bool)

(declare-fun res!59074 () Bool)

(assert (=> b!128055 (=> (not res!59074) (not e!73584))))

(declare-fun size!1930 (List!2118) Int)

(assert (=> b!128055 (= res!59074 (= (size!1930 lt!38326) (+ (size!1930 (t!22694 p!1997)) (size!1930 s!1511))))))

(assert (= (and d!30213 c!27987) b!128053))

(assert (= (and d!30213 (not c!27987)) b!128054))

(assert (= (and d!30213 res!59073) b!128055))

(assert (= (and b!128055 res!59074) b!128056))

(declare-fun m!112753 () Bool)

(assert (=> b!128054 m!112753))

(declare-fun m!112755 () Bool)

(assert (=> d!30213 m!112755))

(declare-fun m!112757 () Bool)

(assert (=> d!30213 m!112757))

(declare-fun m!112759 () Bool)

(assert (=> d!30213 m!112759))

(declare-fun m!112761 () Bool)

(assert (=> b!128055 m!112761))

(declare-fun m!112763 () Bool)

(assert (=> b!128055 m!112763))

(declare-fun m!112765 () Bool)

(assert (=> b!128055 m!112765))

(assert (=> b!128024 d!30213))

(declare-fun d!30217 () Bool)

(assert (=> d!30217 (= (tail!257 l!3367) (t!22694 l!3367))))

(assert (=> b!128024 d!30217))

(declare-fun b!128057 () Bool)

(declare-fun e!73587 () List!2118)

(assert (=> b!128057 (= e!73587 s!1511)))

(declare-fun b!128058 () Bool)

(assert (=> b!128058 (= e!73587 (Cons!2112 (h!7509 p!1997) (++!409 (t!22694 p!1997) s!1511)))))

(declare-fun d!30219 () Bool)

(declare-fun e!73586 () Bool)

(assert (=> d!30219 e!73586))

(declare-fun res!59075 () Bool)

(assert (=> d!30219 (=> (not res!59075) (not e!73586))))

(declare-fun lt!38327 () List!2118)

(assert (=> d!30219 (= res!59075 (= (content!248 lt!38327) (set.union (content!248 p!1997) (content!248 s!1511))))))

(assert (=> d!30219 (= lt!38327 e!73587)))

(declare-fun c!27988 () Bool)

(assert (=> d!30219 (= c!27988 (is-Nil!2112 p!1997))))

(assert (=> d!30219 (= (++!409 p!1997 s!1511) lt!38327)))

(declare-fun b!128060 () Bool)

(assert (=> b!128060 (= e!73586 (or (not (= s!1511 Nil!2112)) (= lt!38327 p!1997)))))

(declare-fun b!128059 () Bool)

(declare-fun res!59076 () Bool)

(assert (=> b!128059 (=> (not res!59076) (not e!73586))))

(assert (=> b!128059 (= res!59076 (= (size!1930 lt!38327) (+ (size!1930 p!1997) (size!1930 s!1511))))))

(assert (= (and d!30219 c!27988) b!128057))

(assert (= (and d!30219 (not c!27988)) b!128058))

(assert (= (and d!30219 res!59075) b!128059))

(assert (= (and b!128059 res!59076) b!128060))

(assert (=> b!128058 m!112741))

(declare-fun m!112767 () Bool)

(assert (=> d!30219 m!112767))

(declare-fun m!112769 () Bool)

(assert (=> d!30219 m!112769))

(assert (=> d!30219 m!112759))

(declare-fun m!112771 () Bool)

(assert (=> b!128059 m!112771))

(declare-fun m!112773 () Bool)

(assert (=> b!128059 m!112773))

(assert (=> b!128059 m!112765))

(assert (=> start!13168 d!30219))

(declare-fun b!128065 () Bool)

(declare-fun e!73590 () Bool)

(declare-fun tp!69818 () Bool)

(assert (=> b!128065 (= e!73590 (and tp_is_empty!1255 tp!69818))))

(assert (=> b!128022 (= tp!69804 e!73590)))

(assert (= (and b!128022 (is-Cons!2112 (t!22694 s!1511))) b!128065))

(declare-fun b!128066 () Bool)

(declare-fun e!73591 () Bool)

(declare-fun tp!69819 () Bool)

(assert (=> b!128066 (= e!73591 (and tp_is_empty!1255 tp!69819))))

(assert (=> b!128026 (= tp!69806 e!73591)))

(assert (= (and b!128026 (is-Cons!2112 (t!22694 p!1997))) b!128066))

(declare-fun b!128067 () Bool)

(declare-fun e!73592 () Bool)

(declare-fun tp!69820 () Bool)

(assert (=> b!128067 (= e!73592 (and tp_is_empty!1255 tp!69820))))

(assert (=> b!128025 (= tp!69805 e!73592)))

(assert (= (and b!128025 (is-Cons!2112 (t!22694 l!3367))) b!128067))

(push 1)

(assert (not b!128059))

(assert (not b!128067))

(assert tp_is_empty!1255)

(assert (not b!128065))

(assert (not d!30213))

(assert (not b!128066))

(assert (not b!128058))

(assert (not b!128054))

(assert (not b!128055))

(assert (not d!30219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

