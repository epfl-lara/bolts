; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742904 () Bool)

(assert start!742904)

(declare-fun b!7844335 () Bool)

(declare-fun e!4637779 () Bool)

(declare-fun tp_is_empty!52491 () Bool)

(declare-fun tp!2322210 () Bool)

(assert (=> b!7844335 (= e!4637779 (and tp_is_empty!52491 tp!2322210))))

(declare-fun b!7844336 () Bool)

(declare-fun e!4637778 () Bool)

(assert (=> b!7844336 (= e!4637778 false)))

(declare-fun lt!2678970 () Bool)

(declare-datatypes ((C!42418 0))(
  ( (C!42419 (val!31671 Int)) )
))
(declare-datatypes ((Regex!21046 0))(
  ( (ElementMatch!21046 (c!1441968 C!42418)) (Concat!29891 (regOne!42604 Regex!21046) (regTwo!42604 Regex!21046)) (EmptyExpr!21046) (Star!21046 (reg!21375 Regex!21046)) (EmptyLang!21046) (Union!21046 (regOne!42605 Regex!21046) (regTwo!42605 Regex!21046)) )
))
(declare-fun r1!6227 () Regex!21046)

(declare-datatypes ((List!73905 0))(
  ( (Nil!73781) (Cons!73781 (h!80229 C!42418) (t!388640 List!73905)) )
))
(declare-fun s1!4084 () List!73905)

(declare-fun matchR!10482 (Regex!21046 List!73905) Bool)

(assert (=> b!7844336 (= lt!2678970 (matchR!10482 r1!6227 s1!4084))))

(declare-fun b!7844337 () Bool)

(declare-fun e!4637781 () Bool)

(assert (=> b!7844337 (= e!4637781 tp_is_empty!52491)))

(declare-fun b!7844338 () Bool)

(declare-fun tp!2322211 () Bool)

(declare-fun tp!2322202 () Bool)

(assert (=> b!7844338 (= e!4637781 (and tp!2322211 tp!2322202))))

(declare-fun b!7844339 () Bool)

(declare-fun e!4637780 () Bool)

(declare-fun tp!2322209 () Bool)

(assert (=> b!7844339 (= e!4637780 tp!2322209)))

(declare-fun b!7844341 () Bool)

(declare-fun tp!2322207 () Bool)

(declare-fun tp!2322206 () Bool)

(assert (=> b!7844341 (= e!4637780 (and tp!2322207 tp!2322206))))

(declare-fun b!7844342 () Bool)

(assert (=> b!7844342 (= e!4637780 tp_is_empty!52491)))

(declare-fun b!7844343 () Bool)

(declare-fun tp!2322208 () Bool)

(declare-fun tp!2322203 () Bool)

(assert (=> b!7844343 (= e!4637780 (and tp!2322208 tp!2322203))))

(declare-fun b!7844344 () Bool)

(declare-fun res!3119714 () Bool)

(assert (=> b!7844344 (=> (not res!3119714) (not e!4637778))))

(declare-fun r2!6165 () Regex!21046)

(declare-fun validRegex!11456 (Regex!21046) Bool)

(assert (=> b!7844344 (= res!3119714 (validRegex!11456 r2!6165))))

(declare-fun b!7844345 () Bool)

(declare-fun tp!2322201 () Bool)

(assert (=> b!7844345 (= e!4637781 tp!2322201)))

(declare-fun res!3119713 () Bool)

(assert (=> start!742904 (=> (not res!3119713) (not e!4637778))))

(assert (=> start!742904 (= res!3119713 (validRegex!11456 r1!6227))))

(assert (=> start!742904 e!4637778))

(assert (=> start!742904 e!4637780))

(assert (=> start!742904 e!4637781))

(assert (=> start!742904 e!4637779))

(declare-fun b!7844340 () Bool)

(declare-fun tp!2322205 () Bool)

(declare-fun tp!2322204 () Bool)

(assert (=> b!7844340 (= e!4637781 (and tp!2322205 tp!2322204))))

(assert (= (and start!742904 res!3119713) b!7844344))

(assert (= (and b!7844344 res!3119714) b!7844336))

(assert (= (and start!742904 (is-ElementMatch!21046 r1!6227)) b!7844342))

(assert (= (and start!742904 (is-Concat!29891 r1!6227)) b!7844343))

(assert (= (and start!742904 (is-Star!21046 r1!6227)) b!7844339))

(assert (= (and start!742904 (is-Union!21046 r1!6227)) b!7844341))

(assert (= (and start!742904 (is-ElementMatch!21046 r2!6165)) b!7844337))

(assert (= (and start!742904 (is-Concat!29891 r2!6165)) b!7844340))

(assert (= (and start!742904 (is-Star!21046 r2!6165)) b!7844345))

(assert (= (and start!742904 (is-Union!21046 r2!6165)) b!7844338))

(assert (= (and start!742904 (is-Cons!73781 s1!4084)) b!7844335))

(declare-fun m!8255292 () Bool)

(assert (=> b!7844336 m!8255292))

(declare-fun m!8255294 () Bool)

(assert (=> b!7844344 m!8255294))

(declare-fun m!8255296 () Bool)

(assert (=> start!742904 m!8255296))

(push 1)

(assert (not b!7844335))

(assert (not b!7844338))

(assert (not b!7844345))

(assert (not b!7844341))

(assert tp_is_empty!52491)

(assert (not b!7844339))

(assert (not start!742904))

(assert (not b!7844344))

(assert (not b!7844340))

(assert (not b!7844343))

(assert (not b!7844336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

