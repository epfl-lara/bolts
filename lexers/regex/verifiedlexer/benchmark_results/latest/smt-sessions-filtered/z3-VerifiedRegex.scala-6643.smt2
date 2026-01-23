; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349746 () Bool)

(assert start!349746)

(declare-fun b!3709060 () Bool)

(declare-fun e!2297322 () Bool)

(declare-datatypes ((C!21836 0))(
  ( (C!21837 (val!12966 Int)) )
))
(declare-datatypes ((Regex!10825 0))(
  ( (ElementMatch!10825 (c!640681 C!21836)) (Concat!17096 (regOne!22162 Regex!10825) (regTwo!22162 Regex!10825)) (EmptyExpr!10825) (Star!10825 (reg!11154 Regex!10825)) (EmptyLang!10825) (Union!10825 (regOne!22163 Regex!10825) (regTwo!22163 Regex!10825)) )
))
(declare-fun r!25965 () Regex!10825)

(declare-datatypes ((List!39706 0))(
  ( (Nil!39582) (Cons!39582 (h!45002 C!21836) (t!302389 List!39706)) )
))
(declare-fun s!14922 () List!39706)

(declare-fun matchR!5284 (Regex!10825 List!39706) Bool)

(assert (=> b!3709060 (= e!2297322 (matchR!5284 r!25965 s!14922))))

(declare-fun b!3709061 () Bool)

(declare-fun e!2297324 () Bool)

(declare-fun tp!1128600 () Bool)

(declare-fun tp!1128603 () Bool)

(assert (=> b!3709061 (= e!2297324 (and tp!1128600 tp!1128603))))

(declare-fun b!3709062 () Bool)

(declare-fun res!1508524 () Bool)

(assert (=> b!3709062 (=> (not res!1508524) (not e!2297322))))

(declare-fun c!13398 () C!21836)

(declare-fun contains!7918 (List!39706 C!21836) Bool)

(declare-fun usedCharacters!1088 (Regex!10825) List!39706)

(assert (=> b!3709062 (= res!1508524 (not (contains!7918 (usedCharacters!1088 r!25965) c!13398)))))

(declare-fun b!3709063 () Bool)

(declare-fun tp_is_empty!18665 () Bool)

(assert (=> b!3709063 (= e!2297324 tp_is_empty!18665)))

(declare-fun b!3709064 () Bool)

(declare-fun tp!1128601 () Bool)

(declare-fun tp!1128602 () Bool)

(assert (=> b!3709064 (= e!2297324 (and tp!1128601 tp!1128602))))

(declare-fun res!1508522 () Bool)

(assert (=> start!349746 (=> (not res!1508522) (not e!2297322))))

(declare-fun validRegex!4932 (Regex!10825) Bool)

(assert (=> start!349746 (= res!1508522 (validRegex!4932 r!25965))))

(assert (=> start!349746 e!2297322))

(assert (=> start!349746 e!2297324))

(declare-fun e!2297323 () Bool)

(assert (=> start!349746 e!2297323))

(assert (=> start!349746 tp_is_empty!18665))

(declare-fun b!3709065 () Bool)

(declare-fun tp!1128604 () Bool)

(assert (=> b!3709065 (= e!2297323 (and tp_is_empty!18665 tp!1128604))))

(declare-fun b!3709066 () Bool)

(declare-fun res!1508523 () Bool)

(assert (=> b!3709066 (=> (not res!1508523) (not e!2297322))))

(assert (=> b!3709066 (= res!1508523 (contains!7918 s!14922 c!13398))))

(declare-fun b!3709067 () Bool)

(declare-fun res!1508521 () Bool)

(assert (=> b!3709067 (=> (not res!1508521) (not e!2297322))))

(get-info :version)

(assert (=> b!3709067 (= res!1508521 (and (or (not ((_ is Cons!39582) s!14922)) (not (= (h!45002 s!14922) c!13398))) (or (not ((_ is Cons!39582) s!14922)) (= (h!45002 s!14922) c!13398)) (not ((_ is Nil!39582) s!14922))))))

(declare-fun b!3709068 () Bool)

(declare-fun tp!1128599 () Bool)

(assert (=> b!3709068 (= e!2297324 tp!1128599)))

(assert (= (and start!349746 res!1508522) b!3709066))

(assert (= (and b!3709066 res!1508523) b!3709062))

(assert (= (and b!3709062 res!1508524) b!3709067))

(assert (= (and b!3709067 res!1508521) b!3709060))

(assert (= (and start!349746 ((_ is ElementMatch!10825) r!25965)) b!3709063))

(assert (= (and start!349746 ((_ is Concat!17096) r!25965)) b!3709064))

(assert (= (and start!349746 ((_ is Star!10825) r!25965)) b!3709068))

(assert (= (and start!349746 ((_ is Union!10825) r!25965)) b!3709061))

(assert (= (and start!349746 ((_ is Cons!39582) s!14922)) b!3709065))

(declare-fun m!4217523 () Bool)

(assert (=> b!3709060 m!4217523))

(declare-fun m!4217525 () Bool)

(assert (=> b!3709062 m!4217525))

(assert (=> b!3709062 m!4217525))

(declare-fun m!4217527 () Bool)

(assert (=> b!3709062 m!4217527))

(declare-fun m!4217529 () Bool)

(assert (=> start!349746 m!4217529))

(declare-fun m!4217531 () Bool)

(assert (=> b!3709066 m!4217531))

(check-sat (not b!3709068) (not b!3709065) (not start!349746) (not b!3709062) tp_is_empty!18665 (not b!3709064) (not b!3709060) (not b!3709066) (not b!3709061))
(check-sat)
