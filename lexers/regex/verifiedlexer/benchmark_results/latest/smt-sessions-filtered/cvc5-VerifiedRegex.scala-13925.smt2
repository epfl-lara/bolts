; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739194 () Bool)

(assert start!739194)

(assert (=> start!739194 false))

(declare-fun e!4597787 () Bool)

(assert (=> start!739194 e!4597787))

(declare-fun e!4597786 () Bool)

(assert (=> start!739194 e!4597786))

(declare-fun b!7756876 () Bool)

(declare-fun tp_is_empty!51643 () Bool)

(assert (=> b!7756876 (= e!4597787 tp_is_empty!51643)))

(declare-fun b!7756877 () Bool)

(declare-fun tp!2276581 () Bool)

(assert (=> b!7756877 (= e!4597786 tp!2276581)))

(declare-fun b!7756878 () Bool)

(assert (=> b!7756878 (= e!4597786 tp_is_empty!51643)))

(declare-fun b!7756879 () Bool)

(declare-fun tp!2276587 () Bool)

(assert (=> b!7756879 (= e!4597787 tp!2276587)))

(declare-fun b!7756880 () Bool)

(declare-fun tp!2276588 () Bool)

(declare-fun tp!2276580 () Bool)

(assert (=> b!7756880 (= e!4597787 (and tp!2276588 tp!2276580))))

(declare-fun b!7756881 () Bool)

(declare-fun tp!2276586 () Bool)

(declare-fun tp!2276583 () Bool)

(assert (=> b!7756881 (= e!4597786 (and tp!2276586 tp!2276583))))

(declare-fun b!7756882 () Bool)

(declare-fun tp!2276582 () Bool)

(declare-fun tp!2276584 () Bool)

(assert (=> b!7756882 (= e!4597787 (and tp!2276582 tp!2276584))))

(declare-fun b!7756883 () Bool)

(declare-fun tp!2276585 () Bool)

(declare-fun tp!2276589 () Bool)

(assert (=> b!7756883 (= e!4597786 (and tp!2276585 tp!2276589))))

(declare-datatypes ((C!41614 0))(
  ( (C!41615 (val!31247 Int)) )
))
(declare-datatypes ((Regex!20644 0))(
  ( (ElementMatch!20644 (c!1430483 C!41614)) (Concat!29489 (regOne!41800 Regex!20644) (regTwo!41800 Regex!20644)) (EmptyExpr!20644) (Star!20644 (reg!20973 Regex!20644)) (EmptyLang!20644) (Union!20644 (regOne!41801 Regex!20644) (regTwo!41801 Regex!20644)) )
))
(declare-fun r1!3330 () Regex!20644)

(assert (= (and start!739194 (is-ElementMatch!20644 r1!3330)) b!7756876))

(assert (= (and start!739194 (is-Concat!29489 r1!3330)) b!7756882))

(assert (= (and start!739194 (is-Star!20644 r1!3330)) b!7756879))

(assert (= (and start!739194 (is-Union!20644 r1!3330)) b!7756880))

(declare-fun r2!3230 () Regex!20644)

(assert (= (and start!739194 (is-ElementMatch!20644 r2!3230)) b!7756878))

(assert (= (and start!739194 (is-Concat!29489 r2!3230)) b!7756881))

(assert (= (and start!739194 (is-Star!20644 r2!3230)) b!7756877))

(assert (= (and start!739194 (is-Union!20644 r2!3230)) b!7756883))

(push 1)

(assert (not b!7756879))

(assert tp_is_empty!51643)

(assert (not b!7756881))

(assert (not b!7756882))

(assert (not b!7756877))

(assert (not b!7756880))

(assert (not b!7756883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

