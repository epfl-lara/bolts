; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744772 () Bool)

(assert start!744772)

(declare-datatypes ((C!42778 0))(
  ( (C!42779 (val!31851 Int)) )
))
(declare-datatypes ((Regex!21226 0))(
  ( (ElementMatch!21226 (c!1449398 C!42778)) (Concat!30071 (regOne!42964 Regex!21226) (regTwo!42964 Regex!21226)) (EmptyExpr!21226) (Star!21226 (reg!21555 Regex!21226)) (EmptyLang!21226) (Union!21226 (regOne!42965 Regex!21226) (regTwo!42965 Regex!21226)) )
))
(declare-datatypes ((List!74091 0))(
  ( (Nil!73967) (Cons!73967 (h!80415 Regex!21226) (t!388826 List!74091)) )
))
(declare-datatypes ((Context!17084 0))(
  ( (Context!17085 (exprs!9042 List!74091)) )
))
(declare-datatypes ((List!74092 0))(
  ( (Nil!73968) (Cons!73968 (h!80416 Context!17084) (t!388827 List!74092)) )
))
(declare-fun zl!160 () List!74092)

(declare-fun ListPrimitiveSize!473 (List!74092) Int)

(assert (=> start!744772 (< (ListPrimitiveSize!473 zl!160) 0)))

(declare-fun e!4660916 () Bool)

(assert (=> start!744772 e!4660916))

(declare-fun b!7896732 () Bool)

(declare-fun e!4660917 () Bool)

(declare-fun tp!2352575 () Bool)

(assert (=> b!7896732 (= e!4660917 tp!2352575)))

(declare-fun tp!2352576 () Bool)

(declare-fun b!7896731 () Bool)

(declare-fun inv!94956 (Context!17084) Bool)

(assert (=> b!7896731 (= e!4660916 (and (inv!94956 (h!80416 zl!160)) e!4660917 tp!2352576))))

(assert (= b!7896731 b!7896732))

(assert (= (and start!744772 (is-Cons!73968 zl!160)) b!7896731))

(declare-fun m!8272166 () Bool)

(assert (=> start!744772 m!8272166))

(declare-fun m!8272168 () Bool)

(assert (=> b!7896731 m!8272168))

(push 1)

(assert (not b!7896731))

(assert (not start!744772))

(assert (not b!7896732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2357486 () Bool)

(declare-fun lambda!472294 () Int)

(declare-fun forall!18427 (List!74091 Int) Bool)

(assert (=> d!2357486 (= (inv!94956 (h!80416 zl!160)) (forall!18427 (exprs!9042 (h!80416 zl!160)) lambda!472294))))

(declare-fun bs!1967775 () Bool)

(assert (= bs!1967775 d!2357486))

(declare-fun m!8272174 () Bool)

(assert (=> bs!1967775 m!8272174))

(assert (=> b!7896731 d!2357486))

(declare-fun d!2357490 () Bool)

(declare-fun lt!2681708 () Int)

(assert (=> d!2357490 (>= lt!2681708 0)))

(declare-fun e!4660926 () Int)

(assert (=> d!2357490 (= lt!2681708 e!4660926)))

(declare-fun c!1449402 () Bool)

(assert (=> d!2357490 (= c!1449402 (is-Nil!73968 zl!160))))

(assert (=> d!2357490 (= (ListPrimitiveSize!473 zl!160) lt!2681708)))

(declare-fun b!7896743 () Bool)

(assert (=> b!7896743 (= e!4660926 0)))

(declare-fun b!7896744 () Bool)

(assert (=> b!7896744 (= e!4660926 (+ 1 (ListPrimitiveSize!473 (t!388827 zl!160))))))

(assert (= (and d!2357490 c!1449402) b!7896743))

(assert (= (and d!2357490 (not c!1449402)) b!7896744))

(declare-fun m!8272176 () Bool)

(assert (=> b!7896744 m!8272176))

(assert (=> start!744772 d!2357490))

(declare-fun b!7896752 () Bool)

(declare-fun e!4660932 () Bool)

(declare-fun tp!2352587 () Bool)

(assert (=> b!7896752 (= e!4660932 tp!2352587)))

(declare-fun tp!2352588 () Bool)

(declare-fun e!4660931 () Bool)

(declare-fun b!7896751 () Bool)

(assert (=> b!7896751 (= e!4660931 (and (inv!94956 (h!80416 (t!388827 zl!160))) e!4660932 tp!2352588))))

(assert (=> b!7896731 (= tp!2352576 e!4660931)))

(assert (= b!7896751 b!7896752))

(assert (= (and b!7896731 (is-Cons!73968 (t!388827 zl!160))) b!7896751))

(declare-fun m!8272178 () Bool)

(assert (=> b!7896751 m!8272178))

(declare-fun b!7896757 () Bool)

(declare-fun e!4660935 () Bool)

(declare-fun tp!2352593 () Bool)

(declare-fun tp!2352594 () Bool)

(assert (=> b!7896757 (= e!4660935 (and tp!2352593 tp!2352594))))

(assert (=> b!7896732 (= tp!2352575 e!4660935)))

(assert (= (and b!7896732 (is-Cons!73967 (exprs!9042 (h!80416 zl!160)))) b!7896757))

(push 1)

(assert (not d!2357486))

(assert (not b!7896752))

(assert (not b!7896751))

(assert (not b!7896757))

(assert (not b!7896744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

