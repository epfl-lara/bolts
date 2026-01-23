; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735694 () Bool)

(assert start!735694)

(declare-fun b!7643842 () Bool)

(declare-fun e!4543340 () Bool)

(declare-fun tp!2231283 () Bool)

(declare-fun tp!2231279 () Bool)

(assert (=> b!7643842 (= e!4543340 (and tp!2231283 tp!2231279))))

(declare-fun res!3061619 () Bool)

(declare-fun e!4543339 () Bool)

(assert (=> start!735694 (=> (not res!3061619) (not e!4543339))))

(declare-datatypes ((C!41234 0))(
  ( (C!41235 (val!31057 Int)) )
))
(declare-datatypes ((Regex!20454 0))(
  ( (ElementMatch!20454 (c!1407953 C!41234)) (Concat!29299 (regOne!41420 Regex!20454) (regTwo!41420 Regex!20454)) (EmptyExpr!20454) (Star!20454 (reg!20783 Regex!20454)) (EmptyLang!20454) (Union!20454 (regOne!41421 Regex!20454) (regTwo!41421 Regex!20454)) )
))
(declare-fun r!14126 () Regex!20454)

(declare-fun validRegex!10872 (Regex!20454) Bool)

(assert (=> start!735694 (= res!3061619 (validRegex!10872 r!14126))))

(assert (=> start!735694 e!4543339))

(assert (=> start!735694 e!4543340))

(declare-fun e!4543338 () Bool)

(assert (=> start!735694 e!4543338))

(declare-fun b!7643843 () Bool)

(declare-fun tp!2231280 () Bool)

(declare-fun tp!2231278 () Bool)

(assert (=> b!7643843 (= e!4543340 (and tp!2231280 tp!2231278))))

(declare-fun b!7643844 () Bool)

(declare-fun res!3061618 () Bool)

(assert (=> b!7643844 (=> (not res!3061618) (not e!4543339))))

(declare-datatypes ((List!73305 0))(
  ( (Nil!73181) (Cons!73181 (h!79629 C!41234) (t!388040 List!73305)) )
))
(declare-fun s!9605 () List!73305)

(declare-fun matchR!9955 (Regex!20454 List!73305) Bool)

(assert (=> b!7643844 (= res!3061618 (not (matchR!9955 r!14126 s!9605)))))

(declare-fun b!7643845 () Bool)

(assert (=> b!7643845 (= e!4543339 (not false))))

(assert (=> b!7643845 (matchR!9955 r!14126 s!9605)))

(declare-datatypes ((Unit!167880 0))(
  ( (Unit!167881) )
))
(declare-fun lt!2660735 () Unit!167880)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!101 (Regex!20454 Regex!20454 List!73305) Unit!167880)

(assert (=> b!7643845 (= lt!2660735 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!101 (regOne!41421 r!14126) (regTwo!41421 r!14126) s!9605))))

(declare-fun b!7643846 () Bool)

(declare-fun tp_is_empty!51263 () Bool)

(assert (=> b!7643846 (= e!4543340 tp_is_empty!51263)))

(declare-fun b!7643847 () Bool)

(declare-fun res!3061617 () Bool)

(assert (=> b!7643847 (=> (not res!3061617) (not e!4543339))))

(assert (=> b!7643847 (= res!3061617 (and (not (is-EmptyExpr!20454 r!14126)) (not (is-EmptyLang!20454 r!14126)) (not (is-ElementMatch!20454 r!14126)) (is-Union!20454 r!14126)))))

(declare-fun b!7643848 () Bool)

(declare-fun tp!2231282 () Bool)

(assert (=> b!7643848 (= e!4543338 (and tp_is_empty!51263 tp!2231282))))

(declare-fun b!7643849 () Bool)

(declare-fun tp!2231281 () Bool)

(assert (=> b!7643849 (= e!4543340 tp!2231281)))

(declare-fun b!7643850 () Bool)

(declare-fun res!3061620 () Bool)

(assert (=> b!7643850 (=> (not res!3061620) (not e!4543339))))

(assert (=> b!7643850 (= res!3061620 (matchR!9955 (regOne!41421 r!14126) s!9605))))

(assert (= (and start!735694 res!3061619) b!7643847))

(assert (= (and b!7643847 res!3061617) b!7643844))

(assert (= (and b!7643844 res!3061618) b!7643850))

(assert (= (and b!7643850 res!3061620) b!7643845))

(assert (= (and start!735694 (is-ElementMatch!20454 r!14126)) b!7643846))

(assert (= (and start!735694 (is-Concat!29299 r!14126)) b!7643842))

(assert (= (and start!735694 (is-Star!20454 r!14126)) b!7643849))

(assert (= (and start!735694 (is-Union!20454 r!14126)) b!7643843))

(assert (= (and start!735694 (is-Cons!73181 s!9605)) b!7643848))

(declare-fun m!8163838 () Bool)

(assert (=> start!735694 m!8163838))

(declare-fun m!8163840 () Bool)

(assert (=> b!7643844 m!8163840))

(assert (=> b!7643845 m!8163840))

(declare-fun m!8163842 () Bool)

(assert (=> b!7643845 m!8163842))

(declare-fun m!8163844 () Bool)

(assert (=> b!7643850 m!8163844))

(push 1)

(assert tp_is_empty!51263)

(assert (not start!735694))

(assert (not b!7643850))

(assert (not b!7643849))

(assert (not b!7643844))

(assert (not b!7643842))

(assert (not b!7643848))

(assert (not b!7643845))

(assert (not b!7643843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

