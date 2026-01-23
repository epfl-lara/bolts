; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740576 () Bool)

(assert start!740576)

(declare-fun b!7781650 () Bool)

(declare-fun e!4609554 () Bool)

(declare-fun tp!2287259 () Bool)

(declare-fun tp!2287260 () Bool)

(assert (=> b!7781650 (= e!4609554 (and tp!2287259 tp!2287260))))

(declare-fun res!3101850 () Bool)

(declare-fun e!4609556 () Bool)

(assert (=> start!740576 (=> (not res!3101850) (not e!4609556))))

(declare-datatypes ((C!41986 0))(
  ( (C!41987 (val!31433 Int)) )
))
(declare-datatypes ((Regex!20830 0))(
  ( (ElementMatch!20830 (c!1433811 C!41986)) (Concat!29675 (regOne!42172 Regex!20830) (regTwo!42172 Regex!20830)) (EmptyExpr!20830) (Star!20830 (reg!21159 Regex!20830)) (EmptyLang!20830) (Union!20830 (regOne!42173 Regex!20830) (regTwo!42173 Regex!20830)) )
))
(declare-fun r1!6279 () Regex!20830)

(declare-fun validRegex!11244 (Regex!20830) Bool)

(assert (=> start!740576 (= res!3101850 (validRegex!11244 r1!6279))))

(assert (=> start!740576 e!4609556))

(assert (=> start!740576 e!4609554))

(declare-fun e!4609557 () Bool)

(assert (=> start!740576 e!4609557))

(declare-fun e!4609555 () Bool)

(assert (=> start!740576 e!4609555))

(declare-fun b!7781651 () Bool)

(declare-fun tp_is_empty!52015 () Bool)

(assert (=> b!7781651 (= e!4609554 tp_is_empty!52015)))

(declare-fun b!7781652 () Bool)

(declare-fun res!3101849 () Bool)

(assert (=> b!7781652 (=> (not res!3101849) (not e!4609556))))

(declare-fun r2!6217 () Regex!20830)

(assert (=> b!7781652 (= res!3101849 (validRegex!11244 r2!6217))))

(declare-fun b!7781653 () Bool)

(declare-fun tp!2287254 () Bool)

(assert (=> b!7781653 (= e!4609554 tp!2287254)))

(declare-fun b!7781654 () Bool)

(assert (=> b!7781654 (= e!4609556 false)))

(declare-fun b!7781655 () Bool)

(declare-fun res!3101851 () Bool)

(assert (=> b!7781655 (=> (not res!3101851) (not e!4609556))))

(declare-datatypes ((List!73669 0))(
  ( (Nil!73545) (Cons!73545 (h!79993 C!41986) (t!388404 List!73669)) )
))
(declare-fun s!14292 () List!73669)

(declare-fun matchR!10290 (Regex!20830 List!73669) Bool)

(assert (=> b!7781655 (= res!3101851 (matchR!10290 (Concat!29675 r1!6279 r2!6217) s!14292))))

(declare-fun b!7781656 () Bool)

(declare-fun tp!2287257 () Bool)

(declare-fun tp!2287253 () Bool)

(assert (=> b!7781656 (= e!4609557 (and tp!2287257 tp!2287253))))

(declare-fun b!7781657 () Bool)

(declare-fun tp!2287255 () Bool)

(declare-fun tp!2287256 () Bool)

(assert (=> b!7781657 (= e!4609557 (and tp!2287255 tp!2287256))))

(declare-fun b!7781658 () Bool)

(declare-fun tp!2287262 () Bool)

(declare-fun tp!2287261 () Bool)

(assert (=> b!7781658 (= e!4609554 (and tp!2287262 tp!2287261))))

(declare-fun b!7781659 () Bool)

(declare-fun tp!2287252 () Bool)

(assert (=> b!7781659 (= e!4609557 tp!2287252)))

(declare-fun b!7781660 () Bool)

(assert (=> b!7781660 (= e!4609557 tp_is_empty!52015)))

(declare-fun b!7781661 () Bool)

(declare-fun tp!2287258 () Bool)

(assert (=> b!7781661 (= e!4609555 (and tp_is_empty!52015 tp!2287258))))

(assert (= (and start!740576 res!3101850) b!7781652))

(assert (= (and b!7781652 res!3101849) b!7781655))

(assert (= (and b!7781655 res!3101851) b!7781654))

(assert (= (and start!740576 (is-ElementMatch!20830 r1!6279)) b!7781651))

(assert (= (and start!740576 (is-Concat!29675 r1!6279)) b!7781658))

(assert (= (and start!740576 (is-Star!20830 r1!6279)) b!7781653))

(assert (= (and start!740576 (is-Union!20830 r1!6279)) b!7781650))

(assert (= (and start!740576 (is-ElementMatch!20830 r2!6217)) b!7781660))

(assert (= (and start!740576 (is-Concat!29675 r2!6217)) b!7781656))

(assert (= (and start!740576 (is-Star!20830 r2!6217)) b!7781659))

(assert (= (and start!740576 (is-Union!20830 r2!6217)) b!7781657))

(assert (= (and start!740576 (is-Cons!73545 s!14292)) b!7781661))

(declare-fun m!8229470 () Bool)

(assert (=> start!740576 m!8229470))

(declare-fun m!8229472 () Bool)

(assert (=> b!7781652 m!8229472))

(declare-fun m!8229474 () Bool)

(assert (=> b!7781655 m!8229474))

(push 1)

(assert (not start!740576))

(assert (not b!7781650))

(assert (not b!7781658))

(assert (not b!7781659))

(assert (not b!7781653))

(assert (not b!7781656))

(assert (not b!7781657))

(assert (not b!7781661))

(assert (not b!7781655))

(assert tp_is_empty!52015)

(assert (not b!7781652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

