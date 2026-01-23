; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733678 () Bool)

(assert start!733678)

(assert (=> start!733678 false))

(declare-fun e!4529041 () Bool)

(assert (=> start!733678 e!4529041))

(declare-fun e!4529040 () Bool)

(assert (=> start!733678 e!4529040))

(declare-fun b!7615860 () Bool)

(declare-fun tp_is_empty!50879 () Bool)

(declare-fun tp!2223737 () Bool)

(assert (=> b!7615860 (= e!4529040 (and tp_is_empty!50879 tp!2223737))))

(declare-fun b!7615861 () Bool)

(declare-fun tp!2223736 () Bool)

(declare-fun tp!2223741 () Bool)

(assert (=> b!7615861 (= e!4529041 (and tp!2223736 tp!2223741))))

(declare-fun b!7615862 () Bool)

(declare-fun tp!2223740 () Bool)

(declare-fun tp!2223739 () Bool)

(assert (=> b!7615862 (= e!4529041 (and tp!2223740 tp!2223739))))

(declare-fun b!7615863 () Bool)

(declare-fun tp!2223738 () Bool)

(assert (=> b!7615863 (= e!4529041 tp!2223738)))

(declare-fun b!7615864 () Bool)

(assert (=> b!7615864 (= e!4529041 tp_is_empty!50879)))

(declare-datatypes ((C!40850 0))(
  ( (C!40851 (val!30865 Int)) )
))
(declare-datatypes ((Regex!20262 0))(
  ( (ElementMatch!20262 (c!1403865 C!40850)) (Concat!29107 (regOne!41036 Regex!20262) (regTwo!41036 Regex!20262)) (EmptyExpr!20262) (Star!20262 (reg!20591 Regex!20262)) (EmptyLang!20262) (Union!20262 (regOne!41037 Regex!20262) (regTwo!41037 Regex!20262)) )
))
(declare-fun r!14126 () Regex!20262)

(assert (= (and start!733678 (is-ElementMatch!20262 r!14126)) b!7615864))

(assert (= (and start!733678 (is-Concat!29107 r!14126)) b!7615862))

(assert (= (and start!733678 (is-Star!20262 r!14126)) b!7615863))

(assert (= (and start!733678 (is-Union!20262 r!14126)) b!7615861))

(declare-datatypes ((List!73115 0))(
  ( (Nil!72991) (Cons!72991 (h!79439 C!40850) (t!387850 List!73115)) )
))
(declare-fun s!9605 () List!73115)

(assert (= (and start!733678 (is-Cons!72991 s!9605)) b!7615860))

(push 1)

(assert (not b!7615863))

(assert (not b!7615861))

(assert (not b!7615862))

(assert tp_is_empty!50879)

(assert (not b!7615860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

