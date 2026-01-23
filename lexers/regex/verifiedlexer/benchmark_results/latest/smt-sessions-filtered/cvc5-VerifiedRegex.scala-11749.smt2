; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663736 () Bool)

(assert start!663736)

(declare-fun b!6878932 () Bool)

(declare-fun e!4145687 () Bool)

(declare-fun tp!1891157 () Bool)

(assert (=> b!6878932 (= e!4145687 tp!1891157)))

(declare-fun b!6878933 () Bool)

(declare-fun e!4145690 () Bool)

(declare-datatypes ((C!33758 0))(
  ( (C!33759 (val!26581 Int)) )
))
(declare-datatypes ((Regex!16744 0))(
  ( (ElementMatch!16744 (c!1279876 C!33758)) (Concat!25589 (regOne!34000 Regex!16744) (regTwo!34000 Regex!16744)) (EmptyExpr!16744) (Star!16744 (reg!17073 Regex!16744)) (EmptyLang!16744) (Union!16744 (regOne!34001 Regex!16744) (regTwo!34001 Regex!16744)) )
))
(declare-datatypes ((List!66499 0))(
  ( (Nil!66375) (Cons!66375 (h!72823 Regex!16744) (t!380242 List!66499)) )
))
(declare-datatypes ((Context!12256 0))(
  ( (Context!12257 (exprs!6628 List!66499)) )
))
(declare-datatypes ((List!66500 0))(
  ( (Nil!66376) (Cons!66376 (h!72824 Context!12256) (t!380243 List!66500)) )
))
(declare-fun zl!1632 () List!66500)

(assert (=> b!6878933 (= e!4145690 (not (is-Cons!66376 zl!1632)))))

(declare-fun e!4145688 () Bool)

(declare-fun tp!1891158 () Bool)

(declare-fun b!6878934 () Bool)

(declare-fun inv!85108 (Context!12256) Bool)

(assert (=> b!6878934 (= e!4145688 (and (inv!85108 (h!72824 zl!1632)) e!4145687 tp!1891158))))

(declare-fun b!6878935 () Bool)

(declare-fun e!4145689 () Bool)

(declare-fun tp!1891156 () Bool)

(assert (=> b!6878935 (= e!4145689 tp!1891156)))

(declare-fun b!6878936 () Bool)

(declare-fun res!2804322 () Bool)

(assert (=> b!6878936 (=> (not res!2804322) (not e!4145690))))

(declare-fun size!40734 (List!66500) Int)

(assert (=> b!6878936 (= res!2804322 (> (size!40734 zl!1632) 1))))

(declare-fun res!2804321 () Bool)

(assert (=> start!663736 (=> (not res!2804321) (not e!4145690))))

(declare-fun c!9978 () Context!12256)

(declare-fun contains!20400 (List!66500 Context!12256) Bool)

(assert (=> start!663736 (= res!2804321 (contains!20400 zl!1632 c!9978))))

(assert (=> start!663736 e!4145690))

(assert (=> start!663736 e!4145688))

(assert (=> start!663736 (and (inv!85108 c!9978) e!4145689)))

(assert (= (and start!663736 res!2804321) b!6878936))

(assert (= (and b!6878936 res!2804322) b!6878933))

(assert (= b!6878934 b!6878932))

(assert (= (and start!663736 (is-Cons!66376 zl!1632)) b!6878934))

(assert (= start!663736 b!6878935))

(declare-fun m!7605598 () Bool)

(assert (=> b!6878934 m!7605598))

(declare-fun m!7605600 () Bool)

(assert (=> b!6878936 m!7605600))

(declare-fun m!7605602 () Bool)

(assert (=> start!663736 m!7605602))

(declare-fun m!7605604 () Bool)

(assert (=> start!663736 m!7605604))

(push 1)

(assert (not b!6878936))

(assert (not b!6878935))

(assert (not start!663736))

(assert (not b!6878934))

(assert (not b!6878932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2159888 () Bool)

(declare-fun lambda!389365 () Int)

(declare-fun forall!15936 (List!66499 Int) Bool)

(assert (=> d!2159888 (= (inv!85108 (h!72824 zl!1632)) (forall!15936 (exprs!6628 (h!72824 zl!1632)) lambda!389365))))

(declare-fun bs!1837966 () Bool)

(assert (= bs!1837966 d!2159888))

(declare-fun m!7605614 () Bool)

(assert (=> bs!1837966 m!7605614))

(assert (=> b!6878934 d!2159888))

(declare-fun d!2159892 () Bool)

(declare-fun lt!2459402 () Int)

(assert (=> d!2159892 (>= lt!2459402 0)))

(declare-fun e!4145705 () Int)

(assert (=> d!2159892 (= lt!2459402 e!4145705)))

(declare-fun c!1279880 () Bool)

(assert (=> d!2159892 (= c!1279880 (is-Nil!66376 zl!1632))))

(assert (=> d!2159892 (= (size!40734 zl!1632) lt!2459402)))

(declare-fun b!6878956 () Bool)

(assert (=> b!6878956 (= e!4145705 0)))

(declare-fun b!6878957 () Bool)

(assert (=> b!6878957 (= e!4145705 (+ 1 (size!40734 (t!380243 zl!1632))))))

(assert (= (and d!2159892 c!1279880) b!6878956))

(assert (= (and d!2159892 (not c!1279880)) b!6878957))

(declare-fun m!7605616 () Bool)

(assert (=> b!6878957 m!7605616))

(assert (=> b!6878936 d!2159892))

(declare-fun d!2159894 () Bool)

(declare-fun lt!2459405 () Bool)

(declare-fun content!13040 (List!66500) (Set Context!12256))

(assert (=> d!2159894 (= lt!2459405 (set.member c!9978 (content!13040 zl!1632)))))

(declare-fun e!4145711 () Bool)

(assert (=> d!2159894 (= lt!2459405 e!4145711)))

(declare-fun res!2804334 () Bool)

(assert (=> d!2159894 (=> (not res!2804334) (not e!4145711))))

(assert (=> d!2159894 (= res!2804334 (is-Cons!66376 zl!1632))))

(assert (=> d!2159894 (= (contains!20400 zl!1632 c!9978) lt!2459405)))

(declare-fun b!6878962 () Bool)

(declare-fun e!4145710 () Bool)

(assert (=> b!6878962 (= e!4145711 e!4145710)))

(declare-fun res!2804333 () Bool)

(assert (=> b!6878962 (=> res!2804333 e!4145710)))

(assert (=> b!6878962 (= res!2804333 (= (h!72824 zl!1632) c!9978))))

(declare-fun b!6878963 () Bool)

(assert (=> b!6878963 (= e!4145710 (contains!20400 (t!380243 zl!1632) c!9978))))

(assert (= (and d!2159894 res!2804334) b!6878962))

(assert (= (and b!6878962 (not res!2804333)) b!6878963))

(declare-fun m!7605618 () Bool)

(assert (=> d!2159894 m!7605618))

(declare-fun m!7605620 () Bool)

(assert (=> d!2159894 m!7605620))

(declare-fun m!7605622 () Bool)

(assert (=> b!6878963 m!7605622))

(assert (=> start!663736 d!2159894))

(declare-fun bs!1837967 () Bool)

(declare-fun d!2159896 () Bool)

(assert (= bs!1837967 (and d!2159896 d!2159888)))

(declare-fun lambda!389366 () Int)

(assert (=> bs!1837967 (= lambda!389366 lambda!389365)))

(assert (=> d!2159896 (= (inv!85108 c!9978) (forall!15936 (exprs!6628 c!9978) lambda!389366))))

(declare-fun bs!1837968 () Bool)

(assert (= bs!1837968 d!2159896))

(declare-fun m!7605624 () Bool)

(assert (=> bs!1837968 m!7605624))

(assert (=> start!663736 d!2159896))

(declare-fun b!6878968 () Bool)

(declare-fun e!4145714 () Bool)

(declare-fun tp!1891172 () Bool)

(declare-fun tp!1891173 () Bool)

(assert (=> b!6878968 (= e!4145714 (and tp!1891172 tp!1891173))))

(assert (=> b!6878932 (= tp!1891157 e!4145714)))

(assert (= (and b!6878932 (is-Cons!66375 (exprs!6628 (h!72824 zl!1632)))) b!6878968))

(declare-fun b!6878976 () Bool)

(declare-fun e!4145720 () Bool)

(declare-fun tp!1891178 () Bool)

(assert (=> b!6878976 (= e!4145720 tp!1891178)))

(declare-fun tp!1891179 () Bool)

(declare-fun b!6878975 () Bool)

(declare-fun e!4145719 () Bool)

(assert (=> b!6878975 (= e!4145719 (and (inv!85108 (h!72824 (t!380243 zl!1632))) e!4145720 tp!1891179))))

(assert (=> b!6878934 (= tp!1891158 e!4145719)))

(assert (= b!6878975 b!6878976))

(assert (= (and b!6878934 (is-Cons!66376 (t!380243 zl!1632))) b!6878975))

(declare-fun m!7605626 () Bool)

(assert (=> b!6878975 m!7605626))

(declare-fun b!6878977 () Bool)

(declare-fun e!4145721 () Bool)

(declare-fun tp!1891180 () Bool)

(declare-fun tp!1891181 () Bool)

(assert (=> b!6878977 (= e!4145721 (and tp!1891180 tp!1891181))))

(assert (=> b!6878935 (= tp!1891156 e!4145721)))

(assert (= (and b!6878935 (is-Cons!66375 (exprs!6628 c!9978))) b!6878977))

(push 1)

(assert (not b!6878957))

(assert (not b!6878975))

(assert (not d!2159896))

(assert (not b!6878976))

(assert (not d!2159888))

(assert (not b!6878963))

(assert (not b!6878977))

(assert (not d!2159894))

(assert (not b!6878968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

