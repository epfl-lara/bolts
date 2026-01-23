; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707800 () Bool)

(assert start!707800)

(declare-fun b!7261999 () Bool)

(declare-fun e!4354744 () Bool)

(declare-fun tp_is_empty!46905 () Bool)

(declare-fun tp!2039419 () Bool)

(assert (=> b!7261999 (= e!4354744 (and tp_is_empty!46905 tp!2039419))))

(declare-fun b!7261998 () Bool)

(declare-fun e!4354743 () Bool)

(declare-fun tp!2039418 () Bool)

(assert (=> b!7261998 (= e!4354743 tp!2039418)))

(declare-datatypes ((C!37714 0))(
  ( (C!37715 (val!28805 Int)) )
))
(declare-datatypes ((Regex!18720 0))(
  ( (ElementMatch!18720 (c!1350982 C!37714)) (Concat!27565 (regOne!37952 Regex!18720) (regTwo!37952 Regex!18720)) (EmptyExpr!18720) (Star!18720 (reg!19049 Regex!18720)) (EmptyLang!18720) (Union!18720 (regOne!37953 Regex!18720) (regTwo!37953 Regex!18720)) )
))
(declare-datatypes ((List!70739 0))(
  ( (Nil!70615) (Cons!70615 (h!77063 Regex!18720) (t!384805 List!70739)) )
))
(declare-datatypes ((Context!15320 0))(
  ( (Context!15321 (exprs!8160 List!70739)) )
))
(declare-datatypes ((List!70740 0))(
  ( (Nil!70616) (Cons!70616 (h!77064 Context!15320) (t!384806 List!70740)) )
))
(declare-fun zl!1658 () List!70740)

(declare-fun e!4354742 () Bool)

(declare-fun tp!2039417 () Bool)

(declare-fun b!7261997 () Bool)

(declare-fun inv!89811 (Context!15320) Bool)

(assert (=> b!7261997 (= e!4354742 (and (inv!89811 (h!77064 zl!1658)) e!4354743 tp!2039417))))

(declare-fun res!2944408 () Bool)

(declare-fun e!4354745 () Bool)

(assert (=> start!707800 (=> (not res!2944408) (not e!4354745))))

(declare-datatypes ((List!70741 0))(
  ( (Nil!70617) (Cons!70617 (h!77065 C!37714) (t!384807 List!70741)) )
))
(declare-fun s!7887 () List!70741)

(declare-fun matchZipper!3624 ((Set Context!15320) List!70741) Bool)

(declare-fun content!14714 (List!70740) (Set Context!15320))

(assert (=> start!707800 (= res!2944408 (matchZipper!3624 (content!14714 zl!1658) s!7887))))

(assert (=> start!707800 e!4354745))

(assert (=> start!707800 e!4354742))

(assert (=> start!707800 e!4354744))

(declare-fun b!7261996 () Bool)

(declare-fun size!41774 (List!70740) Int)

(assert (=> b!7261996 (= e!4354745 (< (size!41774 zl!1658) 0))))

(assert (= (and start!707800 res!2944408) b!7261996))

(assert (= b!7261997 b!7261998))

(assert (= (and start!707800 (is-Cons!70616 zl!1658)) b!7261997))

(assert (= (and start!707800 (is-Cons!70617 s!7887)) b!7261999))

(declare-fun m!7946578 () Bool)

(assert (=> b!7261997 m!7946578))

(declare-fun m!7946580 () Bool)

(assert (=> start!707800 m!7946580))

(assert (=> start!707800 m!7946580))

(declare-fun m!7946582 () Bool)

(assert (=> start!707800 m!7946582))

(declare-fun m!7946584 () Bool)

(assert (=> b!7261996 m!7946584))

(push 1)

(assert (not b!7261999))

(assert (not b!7261997))

(assert (not b!7261996))

(assert tp_is_empty!46905)

(assert (not start!707800))

(assert (not b!7261998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259239 () Bool)

(declare-fun c!1350986 () Bool)

(declare-fun isEmpty!40616 (List!70741) Bool)

(assert (=> d!2259239 (= c!1350986 (isEmpty!40616 s!7887))))

(declare-fun e!4354760 () Bool)

(assert (=> d!2259239 (= (matchZipper!3624 (content!14714 zl!1658) s!7887) e!4354760)))

(declare-fun b!7262016 () Bool)

(declare-fun nullableZipper!2950 ((Set Context!15320)) Bool)

(assert (=> b!7262016 (= e!4354760 (nullableZipper!2950 (content!14714 zl!1658)))))

(declare-fun b!7262017 () Bool)

(declare-fun derivationStepZipper!3476 ((Set Context!15320) C!37714) (Set Context!15320))

(declare-fun head!14949 (List!70741) C!37714)

(declare-fun tail!14408 (List!70741) List!70741)

(assert (=> b!7262017 (= e!4354760 (matchZipper!3624 (derivationStepZipper!3476 (content!14714 zl!1658) (head!14949 s!7887)) (tail!14408 s!7887)))))

(assert (= (and d!2259239 c!1350986) b!7262016))

(assert (= (and d!2259239 (not c!1350986)) b!7262017))

(declare-fun m!7946594 () Bool)

(assert (=> d!2259239 m!7946594))

(assert (=> b!7262016 m!7946580))

(declare-fun m!7946596 () Bool)

(assert (=> b!7262016 m!7946596))

(declare-fun m!7946598 () Bool)

(assert (=> b!7262017 m!7946598))

(assert (=> b!7262017 m!7946580))

(assert (=> b!7262017 m!7946598))

(declare-fun m!7946600 () Bool)

(assert (=> b!7262017 m!7946600))

(declare-fun m!7946602 () Bool)

(assert (=> b!7262017 m!7946602))

(assert (=> b!7262017 m!7946600))

(assert (=> b!7262017 m!7946602))

(declare-fun m!7946604 () Bool)

(assert (=> b!7262017 m!7946604))

(assert (=> start!707800 d!2259239))

(declare-fun d!2259241 () Bool)

(declare-fun c!1350989 () Bool)

(assert (=> d!2259241 (= c!1350989 (is-Nil!70616 zl!1658))))

(declare-fun e!4354763 () (Set Context!15320))

(assert (=> d!2259241 (= (content!14714 zl!1658) e!4354763)))

(declare-fun b!7262022 () Bool)

(assert (=> b!7262022 (= e!4354763 (as set.empty (Set Context!15320)))))

(declare-fun b!7262023 () Bool)

(assert (=> b!7262023 (= e!4354763 (set.union (set.insert (h!77064 zl!1658) (as set.empty (Set Context!15320))) (content!14714 (t!384806 zl!1658))))))

(assert (= (and d!2259241 c!1350989) b!7262022))

(assert (= (and d!2259241 (not c!1350989)) b!7262023))

(declare-fun m!7946606 () Bool)

(assert (=> b!7262023 m!7946606))

(declare-fun m!7946608 () Bool)

(assert (=> b!7262023 m!7946608))

(assert (=> start!707800 d!2259241))

(declare-fun d!2259245 () Bool)

(declare-fun lambda!446732 () Int)

(declare-fun forall!17564 (List!70739 Int) Bool)

(assert (=> d!2259245 (= (inv!89811 (h!77064 zl!1658)) (forall!17564 (exprs!8160 (h!77064 zl!1658)) lambda!446732))))

(declare-fun bs!1909498 () Bool)

(assert (= bs!1909498 d!2259245))

(declare-fun m!7946628 () Bool)

(assert (=> bs!1909498 m!7946628))

(assert (=> b!7261997 d!2259245))

(declare-fun d!2259253 () Bool)

(declare-fun lt!2591107 () Int)

(assert (=> d!2259253 (>= lt!2591107 0)))

(declare-fun e!4354775 () Int)

(assert (=> d!2259253 (= lt!2591107 e!4354775)))

(declare-fun c!1351001 () Bool)

(assert (=> d!2259253 (= c!1351001 (is-Nil!70616 zl!1658))))

(assert (=> d!2259253 (= (size!41774 zl!1658) lt!2591107)))

(declare-fun b!7262046 () Bool)

(assert (=> b!7262046 (= e!4354775 0)))

(declare-fun b!7262047 () Bool)

(assert (=> b!7262047 (= e!4354775 (+ 1 (size!41774 (t!384806 zl!1658))))))

(assert (= (and d!2259253 c!1351001) b!7262046))

(assert (= (and d!2259253 (not c!1351001)) b!7262047))

(declare-fun m!7946630 () Bool)

(assert (=> b!7262047 m!7946630))

(assert (=> b!7261996 d!2259253))

(declare-fun b!7262052 () Bool)

(declare-fun e!4354778 () Bool)

(declare-fun tp!2039433 () Bool)

(declare-fun tp!2039434 () Bool)

(assert (=> b!7262052 (= e!4354778 (and tp!2039433 tp!2039434))))

(assert (=> b!7261998 (= tp!2039418 e!4354778)))

(assert (= (and b!7261998 (is-Cons!70615 (exprs!8160 (h!77064 zl!1658)))) b!7262052))

(declare-fun b!7262057 () Bool)

(declare-fun e!4354781 () Bool)

(declare-fun tp!2039437 () Bool)

(assert (=> b!7262057 (= e!4354781 (and tp_is_empty!46905 tp!2039437))))

(assert (=> b!7261999 (= tp!2039419 e!4354781)))

(assert (= (and b!7261999 (is-Cons!70617 (t!384807 s!7887))) b!7262057))

(declare-fun b!7262065 () Bool)

(declare-fun e!4354787 () Bool)

(declare-fun tp!2039442 () Bool)

(assert (=> b!7262065 (= e!4354787 tp!2039442)))

(declare-fun tp!2039443 () Bool)

(declare-fun b!7262064 () Bool)

(declare-fun e!4354786 () Bool)

(assert (=> b!7262064 (= e!4354786 (and (inv!89811 (h!77064 (t!384806 zl!1658))) e!4354787 tp!2039443))))

(assert (=> b!7261997 (= tp!2039417 e!4354786)))

(assert (= b!7262064 b!7262065))

(assert (= (and b!7261997 (is-Cons!70616 (t!384806 zl!1658))) b!7262064))

(declare-fun m!7946632 () Bool)

(assert (=> b!7262064 m!7946632))

(push 1)

(assert (not b!7262017))

(assert (not b!7262047))

(assert (not d!2259239))

(assert (not b!7262065))

(assert (not b!7262016))

(assert (not b!7262057))

(assert (not b!7262023))

(assert tp_is_empty!46905)

(assert (not b!7262052))

(assert (not d!2259245))

(assert (not b!7262064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

