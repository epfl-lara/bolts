; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694086 () Bool)

(assert start!694086)

(declare-fun b!7124436 () Bool)

(declare-fun e!4281311 () Bool)

(assert (=> b!7124436 (= e!4281311 false)))

(declare-fun lt!2562929 () Bool)

(declare-datatypes ((C!36250 0))(
  ( (C!36251 (val!28051 Int)) )
))
(declare-datatypes ((Regex!17990 0))(
  ( (ElementMatch!17990 (c!1329214 C!36250)) (Concat!26835 (regOne!36492 Regex!17990) (regTwo!36492 Regex!17990)) (EmptyExpr!17990) (Star!17990 (reg!18319 Regex!17990)) (EmptyLang!17990) (Union!17990 (regOne!36493 Regex!17990) (regTwo!36493 Regex!17990)) )
))
(declare-datatypes ((List!69031 0))(
  ( (Nil!68907) (Cons!68907 (h!75355 Regex!17990) (t!383008 List!69031)) )
))
(declare-datatypes ((Context!13968 0))(
  ( (Context!13969 (exprs!7484 List!69031)) )
))
(declare-datatypes ((List!69032 0))(
  ( (Nil!68908) (Cons!68908 (h!75356 Context!13968) (t!383009 List!69032)) )
))
(declare-fun zl!1616 () List!69032)

(declare-fun c!9962 () Context!13968)

(declare-fun contains!20532 (List!69032 Context!13968) Bool)

(assert (=> b!7124436 (= lt!2562929 (contains!20532 (t!383009 zl!1616) c!9962))))

(declare-fun b!7124437 () Bool)

(declare-fun e!4281310 () Bool)

(declare-fun tp!1962146 () Bool)

(assert (=> b!7124437 (= e!4281310 tp!1962146)))

(declare-fun res!2907104 () Bool)

(assert (=> start!694086 (=> (not res!2907104) (not e!4281311))))

(assert (=> start!694086 (= res!2907104 (contains!20532 zl!1616 c!9962))))

(assert (=> start!694086 e!4281311))

(declare-fun e!4281309 () Bool)

(assert (=> start!694086 e!4281309))

(declare-fun inv!88004 (Context!13968) Bool)

(assert (=> start!694086 (and (inv!88004 c!9962) e!4281310)))

(declare-fun b!7124438 () Bool)

(declare-fun e!4281312 () Bool)

(declare-fun tp!1962144 () Bool)

(assert (=> b!7124438 (= e!4281312 tp!1962144)))

(declare-fun b!7124439 () Bool)

(declare-fun res!2907105 () Bool)

(assert (=> b!7124439 (=> (not res!2907105) (not e!4281311))))

(assert (=> b!7124439 (= res!2907105 (is-Cons!68908 zl!1616))))

(declare-fun b!7124440 () Bool)

(declare-fun tp!1962145 () Bool)

(assert (=> b!7124440 (= e!4281309 (and (inv!88004 (h!75356 zl!1616)) e!4281312 tp!1962145))))

(assert (= (and start!694086 res!2907104) b!7124439))

(assert (= (and b!7124439 res!2907105) b!7124436))

(assert (= b!7124440 b!7124438))

(assert (= (and start!694086 (is-Cons!68908 zl!1616)) b!7124440))

(assert (= start!694086 b!7124437))

(declare-fun m!7841982 () Bool)

(assert (=> b!7124436 m!7841982))

(declare-fun m!7841984 () Bool)

(assert (=> start!694086 m!7841984))

(declare-fun m!7841986 () Bool)

(assert (=> start!694086 m!7841986))

(declare-fun m!7841988 () Bool)

(assert (=> b!7124440 m!7841988))

(push 1)

(assert (not b!7124440))

(assert (not b!7124437))

(assert (not b!7124436))

(assert (not start!694086))

(assert (not b!7124438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

