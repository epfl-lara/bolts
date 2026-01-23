; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349742 () Bool)

(assert start!349742)

(declare-fun b!3709007 () Bool)

(declare-fun e!2297306 () Bool)

(declare-fun tp!1128567 () Bool)

(declare-fun tp!1128565 () Bool)

(assert (=> b!3709007 (= e!2297306 (and tp!1128567 tp!1128565))))

(declare-fun b!3709008 () Bool)

(declare-fun tp_is_empty!18661 () Bool)

(assert (=> b!3709008 (= e!2297306 tp_is_empty!18661)))

(declare-fun res!1508500 () Bool)

(declare-fun e!2297304 () Bool)

(assert (=> start!349742 (=> (not res!1508500) (not e!2297304))))

(declare-datatypes ((C!21832 0))(
  ( (C!21833 (val!12964 Int)) )
))
(declare-datatypes ((Regex!10823 0))(
  ( (ElementMatch!10823 (c!640679 C!21832)) (Concat!17094 (regOne!22158 Regex!10823) (regTwo!22158 Regex!10823)) (EmptyExpr!10823) (Star!10823 (reg!11152 Regex!10823)) (EmptyLang!10823) (Union!10823 (regOne!22159 Regex!10823) (regTwo!22159 Regex!10823)) )
))
(declare-fun r!25965 () Regex!10823)

(declare-fun validRegex!4930 (Regex!10823) Bool)

(assert (=> start!349742 (= res!1508500 (validRegex!4930 r!25965))))

(assert (=> start!349742 e!2297304))

(assert (=> start!349742 e!2297306))

(declare-fun e!2297305 () Bool)

(assert (=> start!349742 e!2297305))

(assert (=> start!349742 tp_is_empty!18661))

(declare-fun b!3709009 () Bool)

(declare-fun res!1508499 () Bool)

(assert (=> b!3709009 (=> (not res!1508499) (not e!2297304))))

(declare-fun c!13398 () C!21832)

(declare-datatypes ((List!39704 0))(
  ( (Nil!39580) (Cons!39580 (h!45000 C!21832) (t!302387 List!39704)) )
))
(declare-fun contains!7916 (List!39704 C!21832) Bool)

(declare-fun usedCharacters!1086 (Regex!10823) List!39704)

(assert (=> b!3709009 (= res!1508499 (not (contains!7916 (usedCharacters!1086 r!25965) c!13398)))))

(declare-fun b!3709010 () Bool)

(declare-fun tp!1128566 () Bool)

(assert (=> b!3709010 (= e!2297306 tp!1128566)))

(declare-fun b!3709011 () Bool)

(declare-fun tp!1128563 () Bool)

(assert (=> b!3709011 (= e!2297305 (and tp_is_empty!18661 tp!1128563))))

(declare-fun b!3709012 () Bool)

(declare-fun s!14922 () List!39704)

(get-info :version)

(assert (=> b!3709012 (= e!2297304 (and (or (not ((_ is Cons!39580) s!14922)) (not (= (h!45000 s!14922) c!13398))) (or (not ((_ is Cons!39580) s!14922)) (= (h!45000 s!14922) c!13398)) (not ((_ is Nil!39580) s!14922))))))

(declare-fun b!3709013 () Bool)

(declare-fun tp!1128568 () Bool)

(declare-fun tp!1128564 () Bool)

(assert (=> b!3709013 (= e!2297306 (and tp!1128568 tp!1128564))))

(declare-fun b!3709014 () Bool)

(declare-fun res!1508498 () Bool)

(assert (=> b!3709014 (=> (not res!1508498) (not e!2297304))))

(assert (=> b!3709014 (= res!1508498 (contains!7916 s!14922 c!13398))))

(assert (= (and start!349742 res!1508500) b!3709014))

(assert (= (and b!3709014 res!1508498) b!3709009))

(assert (= (and b!3709009 res!1508499) b!3709012))

(assert (= (and start!349742 ((_ is ElementMatch!10823) r!25965)) b!3709008))

(assert (= (and start!349742 ((_ is Concat!17094) r!25965)) b!3709013))

(assert (= (and start!349742 ((_ is Star!10823) r!25965)) b!3709010))

(assert (= (and start!349742 ((_ is Union!10823) r!25965)) b!3709007))

(assert (= (and start!349742 ((_ is Cons!39580) s!14922)) b!3709011))

(declare-fun m!4217505 () Bool)

(assert (=> start!349742 m!4217505))

(declare-fun m!4217507 () Bool)

(assert (=> b!3709009 m!4217507))

(assert (=> b!3709009 m!4217507))

(declare-fun m!4217509 () Bool)

(assert (=> b!3709009 m!4217509))

(declare-fun m!4217511 () Bool)

(assert (=> b!3709014 m!4217511))

(check-sat tp_is_empty!18661 (not start!349742) (not b!3709014) (not b!3709009) (not b!3709011) (not b!3709013) (not b!3709007) (not b!3709010))
(check-sat)
