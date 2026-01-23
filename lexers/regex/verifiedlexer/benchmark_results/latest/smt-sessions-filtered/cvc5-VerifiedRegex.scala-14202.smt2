; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744204 () Bool)

(assert start!744204)

(declare-fun b!7878665 () Bool)

(declare-fun e!4652997 () Bool)

(declare-fun tp!2340801 () Bool)

(declare-fun tp!2340807 () Bool)

(assert (=> b!7878665 (= e!4652997 (and tp!2340801 tp!2340807))))

(declare-fun b!7878666 () Bool)

(declare-fun res!3129088 () Bool)

(declare-fun e!4652994 () Bool)

(assert (=> b!7878666 (=> (not res!3129088) (not e!4652994))))

(declare-datatypes ((C!42678 0))(
  ( (C!42679 (val!31801 Int)) )
))
(declare-datatypes ((Regex!21176 0))(
  ( (ElementMatch!21176 (c!1446876 C!42678)) (Concat!30021 (regOne!42864 Regex!21176) (regTwo!42864 Regex!21176)) (EmptyExpr!21176) (Star!21176 (reg!21505 Regex!21176)) (EmptyLang!21176) (Union!21176 (regOne!42865 Regex!21176) (regTwo!42865 Regex!21176)) )
))
(declare-fun r1!6200 () Regex!21176)

(declare-datatypes ((List!74035 0))(
  ( (Nil!73911) (Cons!73911 (h!80359 C!42678) (t!388770 List!74035)) )
))
(declare-fun s!14219 () List!74035)

(declare-fun matchR!10612 (Regex!21176 List!74035) Bool)

(assert (=> b!7878666 (= res!3129088 (matchR!10612 r1!6200 s!14219))))

(declare-fun b!7878667 () Bool)

(declare-fun e!4652995 () Bool)

(declare-fun tp_is_empty!52751 () Bool)

(declare-fun tp!2340804 () Bool)

(assert (=> b!7878667 (= e!4652995 (and tp_is_empty!52751 tp!2340804))))

(declare-fun b!7878668 () Bool)

(declare-fun e!4652996 () Bool)

(assert (=> b!7878668 (= e!4652996 tp_is_empty!52751)))

(declare-fun b!7878669 () Bool)

(declare-fun tp!2340806 () Bool)

(declare-fun tp!2340802 () Bool)

(assert (=> b!7878669 (= e!4652997 (and tp!2340806 tp!2340802))))

(declare-fun b!7878670 () Bool)

(declare-fun tp!2340808 () Bool)

(assert (=> b!7878670 (= e!4652997 tp!2340808)))

(declare-fun b!7878671 () Bool)

(declare-fun tp!2340800 () Bool)

(declare-fun tp!2340809 () Bool)

(assert (=> b!7878671 (= e!4652996 (and tp!2340800 tp!2340809))))

(declare-fun b!7878672 () Bool)

(assert (=> b!7878672 (= e!4652997 tp_is_empty!52751)))

(declare-fun b!7878673 () Bool)

(declare-fun res!3129089 () Bool)

(assert (=> b!7878673 (=> (not res!3129089) (not e!4652994))))

(assert (=> b!7878673 (= res!3129089 (not (is-Cons!73911 s!14219)))))

(declare-fun b!7878674 () Bool)

(declare-fun tp!2340803 () Bool)

(declare-fun tp!2340799 () Bool)

(assert (=> b!7878674 (= e!4652996 (and tp!2340803 tp!2340799))))

(declare-fun b!7878675 () Bool)

(assert (=> b!7878675 (= e!4652994 false)))

(declare-fun r2!6138 () Regex!21176)

(declare-fun lt!2681132 () Bool)

(assert (=> b!7878675 (= lt!2681132 (matchR!10612 (Union!21176 r1!6200 r2!6138) s!14219))))

(declare-fun res!3129087 () Bool)

(assert (=> start!744204 (=> (not res!3129087) (not e!4652994))))

(declare-fun validRegex!11586 (Regex!21176) Bool)

(assert (=> start!744204 (= res!3129087 (validRegex!11586 r1!6200))))

(assert (=> start!744204 e!4652994))

(assert (=> start!744204 e!4652996))

(assert (=> start!744204 e!4652997))

(assert (=> start!744204 e!4652995))

(declare-fun b!7878676 () Bool)

(declare-fun tp!2340805 () Bool)

(assert (=> b!7878676 (= e!4652996 tp!2340805)))

(declare-fun b!7878677 () Bool)

(declare-fun res!3129090 () Bool)

(assert (=> b!7878677 (=> (not res!3129090) (not e!4652994))))

(assert (=> b!7878677 (= res!3129090 (validRegex!11586 r2!6138))))

(assert (= (and start!744204 res!3129087) b!7878677))

(assert (= (and b!7878677 res!3129090) b!7878666))

(assert (= (and b!7878666 res!3129088) b!7878673))

(assert (= (and b!7878673 res!3129089) b!7878675))

(assert (= (and start!744204 (is-ElementMatch!21176 r1!6200)) b!7878668))

(assert (= (and start!744204 (is-Concat!30021 r1!6200)) b!7878674))

(assert (= (and start!744204 (is-Star!21176 r1!6200)) b!7878676))

(assert (= (and start!744204 (is-Union!21176 r1!6200)) b!7878671))

(assert (= (and start!744204 (is-ElementMatch!21176 r2!6138)) b!7878672))

(assert (= (and start!744204 (is-Concat!30021 r2!6138)) b!7878669))

(assert (= (and start!744204 (is-Star!21176 r2!6138)) b!7878670))

(assert (= (and start!744204 (is-Union!21176 r2!6138)) b!7878665))

(assert (= (and start!744204 (is-Cons!73911 s!14219)) b!7878667))

(declare-fun m!8267252 () Bool)

(assert (=> b!7878666 m!8267252))

(declare-fun m!8267254 () Bool)

(assert (=> b!7878675 m!8267254))

(declare-fun m!8267256 () Bool)

(assert (=> start!744204 m!8267256))

(declare-fun m!8267258 () Bool)

(assert (=> b!7878677 m!8267258))

(push 1)

(assert (not b!7878677))

(assert (not b!7878670))

(assert (not b!7878665))

(assert (not b!7878667))

(assert (not start!744204))

(assert (not b!7878675))

(assert tp_is_empty!52751)

(assert (not b!7878669))

(assert (not b!7878671))

(assert (not b!7878666))

(assert (not b!7878676))

(assert (not b!7878674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

