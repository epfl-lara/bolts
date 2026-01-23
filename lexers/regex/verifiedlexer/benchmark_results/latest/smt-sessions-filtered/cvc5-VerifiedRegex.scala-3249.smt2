; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187724 () Bool)

(assert start!187724)

(declare-fun b!1873101 () Bool)

(declare-fun e!1194994 () Bool)

(assert (=> b!1873101 (= e!1194994 false)))

(declare-datatypes ((C!10290 0))(
  ( (C!10291 (val!6033 Int)) )
))
(declare-datatypes ((Regex!5070 0))(
  ( (ElementMatch!5070 (c!305348 C!10290)) (Concat!8889 (regOne!10652 Regex!5070) (regTwo!10652 Regex!5070)) (EmptyExpr!5070) (Star!5070 (reg!5399 Regex!5070)) (EmptyLang!5070) (Union!5070 (regOne!10653 Regex!5070) (regTwo!10653 Regex!5070)) )
))
(declare-fun lt!719838 () Regex!5070)

(declare-fun r!13571 () Regex!5070)

(declare-datatypes ((List!20846 0))(
  ( (Nil!20764) (Cons!20764 (h!26165 Regex!5070) (t!173063 List!20846)) )
))
(declare-datatypes ((Context!1920 0))(
  ( (Context!1921 (exprs!1460 List!20846)) )
))
(declare-datatypes ((List!20847 0))(
  ( (Nil!20765) (Cons!20765 (h!26166 Context!1920) (t!173064 List!20847)) )
))
(declare-fun unfocusZipper!50 (List!20847) Regex!5070)

(declare-fun toList!1003 ((Set Context!1920)) List!20847)

(declare-fun focus!242 (Regex!5070) (Set Context!1920))

(assert (=> b!1873101 (= lt!719838 (unfocusZipper!50 (toList!1003 (focus!242 r!13571))))))

(declare-fun res!838236 () Bool)

(assert (=> start!187724 (=> (not res!838236) (not e!1194994))))

(declare-fun validRegex!2085 (Regex!5070) Bool)

(assert (=> start!187724 (= res!838236 (validRegex!2085 r!13571))))

(assert (=> start!187724 e!1194994))

(declare-fun e!1194995 () Bool)

(assert (=> start!187724 e!1194995))

(declare-fun b!1873102 () Bool)

(declare-fun tp!532727 () Bool)

(assert (=> b!1873102 (= e!1194995 tp!532727)))

(declare-fun b!1873103 () Bool)

(declare-fun tp!532728 () Bool)

(declare-fun tp!532730 () Bool)

(assert (=> b!1873103 (= e!1194995 (and tp!532728 tp!532730))))

(declare-fun b!1873104 () Bool)

(declare-fun tp_is_empty!8833 () Bool)

(assert (=> b!1873104 (= e!1194995 tp_is_empty!8833)))

(declare-fun b!1873105 () Bool)

(declare-fun tp!532729 () Bool)

(declare-fun tp!532731 () Bool)

(assert (=> b!1873105 (= e!1194995 (and tp!532729 tp!532731))))

(assert (= (and start!187724 res!838236) b!1873101))

(assert (= (and start!187724 (is-ElementMatch!5070 r!13571)) b!1873104))

(assert (= (and start!187724 (is-Concat!8889 r!13571)) b!1873103))

(assert (= (and start!187724 (is-Star!5070 r!13571)) b!1873102))

(assert (= (and start!187724 (is-Union!5070 r!13571)) b!1873105))

(declare-fun m!2298777 () Bool)

(assert (=> b!1873101 m!2298777))

(assert (=> b!1873101 m!2298777))

(declare-fun m!2298779 () Bool)

(assert (=> b!1873101 m!2298779))

(assert (=> b!1873101 m!2298779))

(declare-fun m!2298781 () Bool)

(assert (=> b!1873101 m!2298781))

(declare-fun m!2298783 () Bool)

(assert (=> start!187724 m!2298783))

(push 1)

(assert (not b!1873105))

(assert tp_is_empty!8833)

(assert (not b!1873103))

(assert (not b!1873102))

(assert (not b!1873101))

(assert (not start!187724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

