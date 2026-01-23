; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187748 () Bool)

(assert start!187748)

(declare-fun b!1873459 () Bool)

(declare-fun e!1195225 () Bool)

(assert (=> b!1873459 (= e!1195225 false)))

(declare-datatypes ((C!10306 0))(
  ( (C!10307 (val!6041 Int)) )
))
(declare-datatypes ((Regex!5078 0))(
  ( (ElementMatch!5078 (c!305374 C!10306)) (Concat!8897 (regOne!10668 Regex!5078) (regTwo!10668 Regex!5078)) (EmptyExpr!5078) (Star!5078 (reg!5407 Regex!5078)) (EmptyLang!5078) (Union!5078 (regOne!10669 Regex!5078) (regTwo!10669 Regex!5078)) )
))
(declare-datatypes ((List!20866 0))(
  ( (Nil!20784) (Cons!20784 (h!26185 Regex!5078) (t!173083 List!20866)) )
))
(declare-datatypes ((Context!1932 0))(
  ( (Context!1933 (exprs!1466 List!20866)) )
))
(declare-datatypes ((List!20867 0))(
  ( (Nil!20785) (Cons!20785 (h!26186 Context!1932) (t!173084 List!20867)) )
))
(declare-fun lt!719892 () List!20867)

(declare-fun r!13571 () Regex!5078)

(declare-fun toList!1008 ((Set Context!1932)) List!20867)

(declare-fun focus!247 (Regex!5078) (Set Context!1932))

(assert (=> b!1873459 (= lt!719892 (toList!1008 (focus!247 r!13571)))))

(declare-fun b!1873460 () Bool)

(declare-fun e!1195224 () Bool)

(declare-fun tp_is_empty!8849 () Bool)

(assert (=> b!1873460 (= e!1195224 tp_is_empty!8849)))

(declare-fun res!838290 () Bool)

(assert (=> start!187748 (=> (not res!838290) (not e!1195225))))

(declare-fun validRegex!2092 (Regex!5078) Bool)

(assert (=> start!187748 (= res!838290 (validRegex!2092 r!13571))))

(assert (=> start!187748 e!1195225))

(assert (=> start!187748 e!1195224))

(declare-fun b!1873461 () Bool)

(declare-fun tp!533026 () Bool)

(declare-fun tp!533027 () Bool)

(assert (=> b!1873461 (= e!1195224 (and tp!533026 tp!533027))))

(declare-fun b!1873462 () Bool)

(declare-fun tp!533029 () Bool)

(declare-fun tp!533028 () Bool)

(assert (=> b!1873462 (= e!1195224 (and tp!533029 tp!533028))))

(declare-fun b!1873463 () Bool)

(declare-fun tp!533025 () Bool)

(assert (=> b!1873463 (= e!1195224 tp!533025)))

(assert (= (and start!187748 res!838290) b!1873459))

(assert (= (and start!187748 (is-ElementMatch!5078 r!13571)) b!1873460))

(assert (= (and start!187748 (is-Concat!8897 r!13571)) b!1873461))

(assert (= (and start!187748 (is-Star!5078 r!13571)) b!1873463))

(assert (= (and start!187748 (is-Union!5078 r!13571)) b!1873462))

(declare-fun m!2298901 () Bool)

(assert (=> b!1873459 m!2298901))

(assert (=> b!1873459 m!2298901))

(declare-fun m!2298903 () Bool)

(assert (=> b!1873459 m!2298903))

(declare-fun m!2298905 () Bool)

(assert (=> start!187748 m!2298905))

(push 1)

(assert (not b!1873461))

(assert tp_is_empty!8849)

(assert (not b!1873463))

(assert (not b!1873462))

(assert (not start!187748))

(assert (not b!1873459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

