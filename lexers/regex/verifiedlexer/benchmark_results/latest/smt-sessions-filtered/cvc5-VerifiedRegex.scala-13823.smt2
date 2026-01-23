; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735558 () Bool)

(assert start!735558)

(declare-fun b!7641072 () Bool)

(declare-fun e!4541873 () Bool)

(declare-fun tp_is_empty!51235 () Bool)

(declare-fun tp!2230574 () Bool)

(assert (=> b!7641072 (= e!4541873 (and tp_is_empty!51235 tp!2230574))))

(declare-fun b!7641073 () Bool)

(declare-fun e!4541872 () Bool)

(declare-fun tp!2230575 () Bool)

(assert (=> b!7641073 (= e!4541872 tp!2230575)))

(declare-fun res!3060473 () Bool)

(declare-fun e!4541874 () Bool)

(assert (=> start!735558 (=> (not res!3060473) (not e!4541874))))

(declare-datatypes ((C!41206 0))(
  ( (C!41207 (val!31043 Int)) )
))
(declare-datatypes ((Regex!20440 0))(
  ( (ElementMatch!20440 (c!1407453 C!41206)) (Concat!29285 (regOne!41392 Regex!20440) (regTwo!41392 Regex!20440)) (EmptyExpr!20440) (Star!20440 (reg!20769 Regex!20440)) (EmptyLang!20440) (Union!20440 (regOne!41393 Regex!20440) (regTwo!41393 Regex!20440)) )
))
(declare-fun r!14126 () Regex!20440)

(declare-fun validRegex!10858 (Regex!20440) Bool)

(assert (=> start!735558 (= res!3060473 (validRegex!10858 r!14126))))

(assert (=> start!735558 e!4541874))

(assert (=> start!735558 e!4541872))

(assert (=> start!735558 e!4541873))

(declare-fun b!7641074 () Bool)

(declare-fun res!3060475 () Bool)

(assert (=> b!7641074 (=> (not res!3060475) (not e!4541874))))

(assert (=> b!7641074 (= res!3060475 (validRegex!10858 (regTwo!41393 r!14126)))))

(declare-fun b!7641075 () Bool)

(declare-fun res!3060476 () Bool)

(assert (=> b!7641075 (=> (not res!3060476) (not e!4541874))))

(declare-datatypes ((List!73291 0))(
  ( (Nil!73167) (Cons!73167 (h!79615 C!41206) (t!388026 List!73291)) )
))
(declare-fun s!9605 () List!73291)

(declare-fun matchR!9941 (Regex!20440 List!73291) Bool)

(assert (=> b!7641075 (= res!3060476 (matchR!9941 r!14126 s!9605))))

(declare-fun b!7641076 () Bool)

(declare-fun res!3060477 () Bool)

(assert (=> b!7641076 (=> (not res!3060477) (not e!4541874))))

(assert (=> b!7641076 (= res!3060477 (and (not (is-EmptyExpr!20440 r!14126)) (not (is-EmptyLang!20440 r!14126)) (not (is-ElementMatch!20440 r!14126)) (is-Union!20440 r!14126)))))

(declare-fun b!7641077 () Bool)

(declare-fun tp!2230571 () Bool)

(declare-fun tp!2230573 () Bool)

(assert (=> b!7641077 (= e!4541872 (and tp!2230571 tp!2230573))))

(declare-fun b!7641078 () Bool)

(declare-fun tp!2230570 () Bool)

(declare-fun tp!2230572 () Bool)

(assert (=> b!7641078 (= e!4541872 (and tp!2230570 tp!2230572))))

(declare-fun b!7641079 () Bool)

(assert (=> b!7641079 (= e!4541874 (not (matchR!9941 r!14126 s!9605)))))

(declare-fun b!7641080 () Bool)

(assert (=> b!7641080 (= e!4541872 tp_is_empty!51235)))

(declare-fun b!7641081 () Bool)

(declare-fun res!3060474 () Bool)

(assert (=> b!7641081 (=> (not res!3060474) (not e!4541874))))

(assert (=> b!7641081 (= res!3060474 (validRegex!10858 (regOne!41393 r!14126)))))

(assert (= (and start!735558 res!3060473) b!7641076))

(assert (= (and b!7641076 res!3060477) b!7641075))

(assert (= (and b!7641075 res!3060476) b!7641081))

(assert (= (and b!7641081 res!3060474) b!7641074))

(assert (= (and b!7641074 res!3060475) b!7641079))

(assert (= (and start!735558 (is-ElementMatch!20440 r!14126)) b!7641080))

(assert (= (and start!735558 (is-Concat!29285 r!14126)) b!7641077))

(assert (= (and start!735558 (is-Star!20440 r!14126)) b!7641073))

(assert (= (and start!735558 (is-Union!20440 r!14126)) b!7641078))

(assert (= (and start!735558 (is-Cons!73167 s!9605)) b!7641072))

(declare-fun m!8162970 () Bool)

(assert (=> b!7641074 m!8162970))

(declare-fun m!8162972 () Bool)

(assert (=> b!7641081 m!8162972))

(declare-fun m!8162974 () Bool)

(assert (=> b!7641079 m!8162974))

(assert (=> b!7641075 m!8162974))

(declare-fun m!8162976 () Bool)

(assert (=> start!735558 m!8162976))

(push 1)

(assert (not b!7641073))

(assert (not b!7641072))

(assert (not start!735558))

(assert (not b!7641075))

(assert (not b!7641077))

(assert (not b!7641081))

(assert (not b!7641079))

(assert (not b!7641074))

(assert (not b!7641078))

(assert tp_is_empty!51235)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

