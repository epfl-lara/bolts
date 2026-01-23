; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733638 () Bool)

(assert start!733638)

(declare-fun b!7615086 () Bool)

(declare-fun res!3048472 () Bool)

(declare-fun e!4528652 () Bool)

(assert (=> b!7615086 (=> (not res!3048472) (not e!4528652))))

(declare-datatypes ((C!40822 0))(
  ( (C!40823 (val!30851 Int)) )
))
(declare-datatypes ((Regex!20248 0))(
  ( (ElementMatch!20248 (c!1403757 C!40822)) (Concat!29093 (regOne!41008 Regex!20248) (regTwo!41008 Regex!20248)) (EmptyExpr!20248) (Star!20248 (reg!20577 Regex!20248)) (EmptyLang!20248) (Union!20248 (regOne!41009 Regex!20248) (regTwo!41009 Regex!20248)) )
))
(declare-fun r!14126 () Regex!20248)

(declare-datatypes ((List!73101 0))(
  ( (Nil!72977) (Cons!72977 (h!79425 C!40822) (t!387836 List!73101)) )
))
(declare-fun s!9605 () List!73101)

(declare-fun matchR!9763 (Regex!20248 List!73101) Bool)

(assert (=> b!7615086 (= res!3048472 (matchR!9763 (regOne!41009 r!14126) s!9605))))

(declare-fun b!7615087 () Bool)

(declare-fun res!3048474 () Bool)

(assert (=> b!7615087 (=> (not res!3048474) (not e!4528652))))

(assert (=> b!7615087 (= res!3048474 (and (not (is-EmptyExpr!20248 r!14126)) (not (is-EmptyLang!20248 r!14126)) (not (is-ElementMatch!20248 r!14126)) (is-Union!20248 r!14126)))))

(declare-fun b!7615088 () Bool)

(declare-fun res!3048471 () Bool)

(assert (=> b!7615088 (=> (not res!3048471) (not e!4528652))))

(assert (=> b!7615088 (= res!3048471 (not (matchR!9763 r!14126 s!9605)))))

(declare-fun b!7615089 () Bool)

(assert (=> b!7615089 (= e!4528652 false)))

(declare-fun b!7615090 () Bool)

(declare-fun e!4528653 () Bool)

(declare-fun tp!2223411 () Bool)

(declare-fun tp!2223410 () Bool)

(assert (=> b!7615090 (= e!4528653 (and tp!2223411 tp!2223410))))

(declare-fun b!7615091 () Bool)

(declare-fun tp_is_empty!50851 () Bool)

(assert (=> b!7615091 (= e!4528653 tp_is_empty!50851)))

(declare-fun b!7615092 () Bool)

(declare-fun tp!2223409 () Bool)

(assert (=> b!7615092 (= e!4528653 tp!2223409)))

(declare-fun res!3048473 () Bool)

(assert (=> start!733638 (=> (not res!3048473) (not e!4528652))))

(declare-fun validRegex!10670 (Regex!20248) Bool)

(assert (=> start!733638 (= res!3048473 (validRegex!10670 r!14126))))

(assert (=> start!733638 e!4528652))

(assert (=> start!733638 e!4528653))

(declare-fun e!4528654 () Bool)

(assert (=> start!733638 e!4528654))

(declare-fun b!7615093 () Bool)

(declare-fun tp!2223412 () Bool)

(assert (=> b!7615093 (= e!4528654 (and tp_is_empty!50851 tp!2223412))))

(declare-fun b!7615094 () Bool)

(declare-fun tp!2223408 () Bool)

(declare-fun tp!2223413 () Bool)

(assert (=> b!7615094 (= e!4528653 (and tp!2223408 tp!2223413))))

(assert (= (and start!733638 res!3048473) b!7615087))

(assert (= (and b!7615087 res!3048474) b!7615088))

(assert (= (and b!7615088 res!3048471) b!7615086))

(assert (= (and b!7615086 res!3048472) b!7615089))

(assert (= (and start!733638 (is-ElementMatch!20248 r!14126)) b!7615091))

(assert (= (and start!733638 (is-Concat!29093 r!14126)) b!7615090))

(assert (= (and start!733638 (is-Star!20248 r!14126)) b!7615092))

(assert (= (and start!733638 (is-Union!20248 r!14126)) b!7615094))

(assert (= (and start!733638 (is-Cons!72977 s!9605)) b!7615093))

(declare-fun m!8149302 () Bool)

(assert (=> b!7615086 m!8149302))

(declare-fun m!8149304 () Bool)

(assert (=> b!7615088 m!8149304))

(declare-fun m!8149306 () Bool)

(assert (=> start!733638 m!8149306))

(push 1)

(assert (not b!7615086))

(assert (not b!7615093))

(assert (not b!7615090))

(assert tp_is_empty!50851)

(assert (not b!7615092))

(assert (not b!7615088))

(assert (not start!733638))

(assert (not b!7615094))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

