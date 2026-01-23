; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743116 () Bool)

(assert start!743116)

(declare-fun b!7848625 () Bool)

(declare-fun res!3121248 () Bool)

(declare-fun e!4639782 () Bool)

(assert (=> b!7848625 (=> (not res!3121248) (not e!4639782))))

(declare-datatypes ((C!42478 0))(
  ( (C!42479 (val!31701 Int)) )
))
(declare-datatypes ((Regex!21076 0))(
  ( (ElementMatch!21076 (c!1442592 C!42478)) (Concat!29921 (regOne!42664 Regex!21076) (regTwo!42664 Regex!21076)) (EmptyExpr!21076) (Star!21076 (reg!21405 Regex!21076)) (EmptyLang!21076) (Union!21076 (regOne!42665 Regex!21076) (regTwo!42665 Regex!21076)) )
))
(declare-fun r2!6165 () Regex!21076)

(declare-datatypes ((List!73935 0))(
  ( (Nil!73811) (Cons!73811 (h!80259 C!42478) (t!388670 List!73935)) )
))
(declare-fun s2!3706 () List!73935)

(declare-fun matchR!10512 (Regex!21076 List!73935) Bool)

(assert (=> b!7848625 (= res!3121248 (matchR!10512 r2!6165 s2!3706))))

(declare-fun b!7848626 () Bool)

(declare-fun e!4639783 () Bool)

(declare-fun tp_is_empty!52551 () Bool)

(assert (=> b!7848626 (= e!4639783 tp_is_empty!52551)))

(declare-fun b!7848627 () Bool)

(declare-fun e!4639784 () Bool)

(declare-fun tp!2324056 () Bool)

(assert (=> b!7848627 (= e!4639784 (and tp_is_empty!52551 tp!2324056))))

(declare-fun res!3121247 () Bool)

(assert (=> start!743116 (=> (not res!3121247) (not e!4639782))))

(declare-fun r1!6227 () Regex!21076)

(declare-fun validRegex!11486 (Regex!21076) Bool)

(assert (=> start!743116 (= res!3121247 (validRegex!11486 r1!6227))))

(assert (=> start!743116 e!4639782))

(declare-fun e!4639785 () Bool)

(assert (=> start!743116 e!4639785))

(assert (=> start!743116 e!4639783))

(assert (=> start!743116 e!4639784))

(declare-fun e!4639786 () Bool)

(assert (=> start!743116 e!4639786))

(declare-fun b!7848628 () Bool)

(declare-fun tp!2324055 () Bool)

(assert (=> b!7848628 (= e!4639785 tp!2324055)))

(declare-fun b!7848629 () Bool)

(declare-fun tp!2324047 () Bool)

(declare-fun tp!2324050 () Bool)

(assert (=> b!7848629 (= e!4639783 (and tp!2324047 tp!2324050))))

(declare-fun b!7848630 () Bool)

(declare-fun res!3121250 () Bool)

(assert (=> b!7848630 (=> (not res!3121250) (not e!4639782))))

(assert (=> b!7848630 (= res!3121250 (validRegex!11486 r2!6165))))

(declare-fun b!7848631 () Bool)

(declare-fun tp!2324053 () Bool)

(assert (=> b!7848631 (= e!4639786 (and tp_is_empty!52551 tp!2324053))))

(declare-fun b!7848632 () Bool)

(declare-fun tp!2324048 () Bool)

(declare-fun tp!2324045 () Bool)

(assert (=> b!7848632 (= e!4639785 (and tp!2324048 tp!2324045))))

(declare-fun b!7848633 () Bool)

(declare-fun tp!2324049 () Bool)

(assert (=> b!7848633 (= e!4639783 tp!2324049)))

(declare-fun b!7848634 () Bool)

(assert (=> b!7848634 (= e!4639782 false)))

(declare-fun b!7848635 () Bool)

(declare-fun res!3121249 () Bool)

(assert (=> b!7848635 (=> (not res!3121249) (not e!4639782))))

(declare-fun s1!4084 () List!73935)

(assert (=> b!7848635 (= res!3121249 (matchR!10512 r1!6227 s1!4084))))

(declare-fun b!7848636 () Bool)

(assert (=> b!7848636 (= e!4639785 tp_is_empty!52551)))

(declare-fun b!7848637 () Bool)

(declare-fun tp!2324051 () Bool)

(declare-fun tp!2324046 () Bool)

(assert (=> b!7848637 (= e!4639785 (and tp!2324051 tp!2324046))))

(declare-fun b!7848638 () Bool)

(declare-fun tp!2324052 () Bool)

(declare-fun tp!2324054 () Bool)

(assert (=> b!7848638 (= e!4639783 (and tp!2324052 tp!2324054))))

(assert (= (and start!743116 res!3121247) b!7848630))

(assert (= (and b!7848630 res!3121250) b!7848635))

(assert (= (and b!7848635 res!3121249) b!7848625))

(assert (= (and b!7848625 res!3121248) b!7848634))

(assert (= (and start!743116 (is-ElementMatch!21076 r1!6227)) b!7848636))

(assert (= (and start!743116 (is-Concat!29921 r1!6227)) b!7848637))

(assert (= (and start!743116 (is-Star!21076 r1!6227)) b!7848628))

(assert (= (and start!743116 (is-Union!21076 r1!6227)) b!7848632))

(assert (= (and start!743116 (is-ElementMatch!21076 r2!6165)) b!7848626))

(assert (= (and start!743116 (is-Concat!29921 r2!6165)) b!7848629))

(assert (= (and start!743116 (is-Star!21076 r2!6165)) b!7848633))

(assert (= (and start!743116 (is-Union!21076 r2!6165)) b!7848638))

(assert (= (and start!743116 (is-Cons!73811 s1!4084)) b!7848627))

(assert (= (and start!743116 (is-Cons!73811 s2!3706)) b!7848631))

(declare-fun m!8257188 () Bool)

(assert (=> b!7848625 m!8257188))

(declare-fun m!8257190 () Bool)

(assert (=> start!743116 m!8257190))

(declare-fun m!8257192 () Bool)

(assert (=> b!7848630 m!8257192))

(declare-fun m!8257194 () Bool)

(assert (=> b!7848635 m!8257194))

(push 1)

(assert (not b!7848627))

(assert (not b!7848632))

(assert (not b!7848630))

(assert (not b!7848638))

(assert (not b!7848628))

(assert (not b!7848633))

(assert (not start!743116))

(assert (not b!7848629))

(assert (not b!7848631))

(assert (not b!7848625))

(assert tp_is_empty!52551)

(assert (not b!7848635))

(assert (not b!7848637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

