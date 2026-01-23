; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740628 () Bool)

(assert start!740628)

(declare-fun b!7782630 () Bool)

(declare-fun e!4609961 () Bool)

(declare-fun tp!2287775 () Bool)

(declare-fun tp!2287774 () Bool)

(assert (=> b!7782630 (= e!4609961 (and tp!2287775 tp!2287774))))

(declare-fun res!3102210 () Bool)

(declare-fun e!4609962 () Bool)

(assert (=> start!740628 (=> (not res!3102210) (not e!4609962))))

(declare-datatypes ((C!42002 0))(
  ( (C!42003 (val!31441 Int)) )
))
(declare-datatypes ((Regex!20838 0))(
  ( (ElementMatch!20838 (c!1433911 C!42002)) (Concat!29683 (regOne!42188 Regex!20838) (regTwo!42188 Regex!20838)) (EmptyExpr!20838) (Star!20838 (reg!21167 Regex!20838)) (EmptyLang!20838) (Union!20838 (regOne!42189 Regex!20838) (regTwo!42189 Regex!20838)) )
))
(declare-fun r1!6279 () Regex!20838)

(declare-fun validRegex!11252 (Regex!20838) Bool)

(assert (=> start!740628 (= res!3102210 (validRegex!11252 r1!6279))))

(assert (=> start!740628 e!4609962))

(assert (=> start!740628 e!4609961))

(declare-fun e!4609963 () Bool)

(assert (=> start!740628 e!4609963))

(declare-fun e!4609960 () Bool)

(assert (=> start!740628 e!4609960))

(declare-fun b!7782631 () Bool)

(declare-fun tp!2287771 () Bool)

(declare-fun tp!2287772 () Bool)

(assert (=> b!7782631 (= e!4609961 (and tp!2287771 tp!2287772))))

(declare-fun b!7782632 () Bool)

(assert (=> b!7782632 (= e!4609962 false)))

(declare-fun r2!6217 () Regex!20838)

(declare-fun lt!2673241 () Bool)

(declare-datatypes ((List!73677 0))(
  ( (Nil!73553) (Cons!73553 (h!80001 C!42002) (t!388412 List!73677)) )
))
(declare-fun s!14292 () List!73677)

(declare-fun matchR!10298 (Regex!20838 List!73677) Bool)

(assert (=> b!7782632 (= lt!2673241 (matchR!10298 (Concat!29683 r1!6279 r2!6217) s!14292))))

(declare-fun b!7782633 () Bool)

(declare-fun tp!2287777 () Bool)

(assert (=> b!7782633 (= e!4609961 tp!2287777)))

(declare-fun b!7782634 () Bool)

(declare-fun tp_is_empty!52031 () Bool)

(assert (=> b!7782634 (= e!4609963 tp_is_empty!52031)))

(declare-fun b!7782635 () Bool)

(assert (=> b!7782635 (= e!4609961 tp_is_empty!52031)))

(declare-fun b!7782636 () Bool)

(declare-fun res!3102209 () Bool)

(assert (=> b!7782636 (=> (not res!3102209) (not e!4609962))))

(assert (=> b!7782636 (= res!3102209 (validRegex!11252 r2!6217))))

(declare-fun b!7782637 () Bool)

(declare-fun tp!2287773 () Bool)

(declare-fun tp!2287770 () Bool)

(assert (=> b!7782637 (= e!4609963 (and tp!2287773 tp!2287770))))

(declare-fun b!7782638 () Bool)

(declare-fun tp!2287768 () Bool)

(assert (=> b!7782638 (= e!4609963 tp!2287768)))

(declare-fun b!7782639 () Bool)

(declare-fun tp!2287769 () Bool)

(declare-fun tp!2287776 () Bool)

(assert (=> b!7782639 (= e!4609963 (and tp!2287769 tp!2287776))))

(declare-fun b!7782640 () Bool)

(declare-fun tp!2287778 () Bool)

(assert (=> b!7782640 (= e!4609960 (and tp_is_empty!52031 tp!2287778))))

(assert (= (and start!740628 res!3102210) b!7782636))

(assert (= (and b!7782636 res!3102209) b!7782632))

(assert (= (and start!740628 (is-ElementMatch!20838 r1!6279)) b!7782635))

(assert (= (and start!740628 (is-Concat!29683 r1!6279)) b!7782630))

(assert (= (and start!740628 (is-Star!20838 r1!6279)) b!7782633))

(assert (= (and start!740628 (is-Union!20838 r1!6279)) b!7782631))

(assert (= (and start!740628 (is-ElementMatch!20838 r2!6217)) b!7782634))

(assert (= (and start!740628 (is-Concat!29683 r2!6217)) b!7782637))

(assert (= (and start!740628 (is-Star!20838 r2!6217)) b!7782638))

(assert (= (and start!740628 (is-Union!20838 r2!6217)) b!7782639))

(assert (= (and start!740628 (is-Cons!73553 s!14292)) b!7782640))

(declare-fun m!8229778 () Bool)

(assert (=> start!740628 m!8229778))

(declare-fun m!8229780 () Bool)

(assert (=> b!7782632 m!8229780))

(declare-fun m!8229782 () Bool)

(assert (=> b!7782636 m!8229782))

(push 1)

(assert (not b!7782640))

(assert (not b!7782631))

(assert (not b!7782638))

(assert (not b!7782633))

(assert (not b!7782632))

(assert (not b!7782636))

(assert (not start!740628))

(assert (not b!7782630))

(assert (not b!7782639))

(assert tp_is_empty!52031)

(assert (not b!7782637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

