; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349796 () Bool)

(assert start!349796)

(declare-fun b!3709683 () Bool)

(declare-fun e!2297587 () Bool)

(declare-fun tp_is_empty!18687 () Bool)

(declare-fun tp!1128877 () Bool)

(assert (=> b!3709683 (= e!2297587 (and tp_is_empty!18687 tp!1128877))))

(declare-fun b!3709684 () Bool)

(declare-fun e!2297585 () Bool)

(assert (=> b!3709684 (= e!2297585 tp_is_empty!18687)))

(declare-fun b!3709685 () Bool)

(declare-fun tp!1128873 () Bool)

(declare-fun tp!1128876 () Bool)

(assert (=> b!3709685 (= e!2297585 (and tp!1128873 tp!1128876))))

(declare-fun b!3709686 () Bool)

(declare-fun res!1508778 () Bool)

(declare-fun e!2297586 () Bool)

(assert (=> b!3709686 (=> (not res!1508778) (not e!2297586))))

(declare-datatypes ((C!21858 0))(
  ( (C!21859 (val!12977 Int)) )
))
(declare-datatypes ((List!39717 0))(
  ( (Nil!39593) (Cons!39593 (h!45013 C!21858) (t!302400 List!39717)) )
))
(declare-fun s!14932 () List!39717)

(declare-fun c!13437 () C!21858)

(declare-fun contains!7929 (List!39717 C!21858) Bool)

(assert (=> b!3709686 (= res!1508778 (contains!7929 s!14932 c!13437))))

(declare-fun b!3709687 () Bool)

(declare-fun tp!1128874 () Bool)

(declare-fun tp!1128875 () Bool)

(assert (=> b!3709687 (= e!2297585 (and tp!1128874 tp!1128875))))

(declare-fun b!3709688 () Bool)

(assert (=> b!3709688 (= e!2297586 (not true))))

(declare-datatypes ((Regex!10836 0))(
  ( (ElementMatch!10836 (c!640758 C!21858)) (Concat!17107 (regOne!22184 Regex!10836) (regTwo!22184 Regex!10836)) (EmptyExpr!10836) (Star!10836 (reg!11165 Regex!10836)) (EmptyLang!10836) (Union!10836 (regOne!22185 Regex!10836) (regTwo!22185 Regex!10836)) )
))
(declare-fun r!26030 () Regex!10836)

(declare-fun matchR!5293 (Regex!10836 List!39717) Bool)

(declare-fun derivative!350 (Regex!10836 List!39717) Regex!10836)

(assert (=> b!3709688 (matchR!5293 (derivative!350 r!26030 s!14932) Nil!39593)))

(declare-datatypes ((Unit!57482 0))(
  ( (Unit!57483) )
))
(declare-fun lt!1296743 () Unit!57482)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!239 (Regex!10836 List!39717) Unit!57482)

(assert (=> b!3709688 (= lt!1296743 (lemmaMatchRIsSameAsWholeDerivativeAndNil!239 r!26030 s!14932))))

(declare-fun res!1508780 () Bool)

(assert (=> start!349796 (=> (not res!1508780) (not e!2297586))))

(declare-fun validRegex!4943 (Regex!10836) Bool)

(assert (=> start!349796 (= res!1508780 (validRegex!4943 r!26030))))

(assert (=> start!349796 e!2297586))

(assert (=> start!349796 e!2297585))

(assert (=> start!349796 e!2297587))

(assert (=> start!349796 tp_is_empty!18687))

(declare-fun b!3709689 () Bool)

(declare-fun res!1508779 () Bool)

(assert (=> b!3709689 (=> (not res!1508779) (not e!2297586))))

(declare-fun usedCharacters!1099 (Regex!10836) List!39717)

(assert (=> b!3709689 (= res!1508779 (not (contains!7929 (usedCharacters!1099 r!26030) c!13437)))))

(declare-fun b!3709690 () Bool)

(declare-fun res!1508777 () Bool)

(assert (=> b!3709690 (=> (not res!1508777) (not e!2297586))))

(declare-fun head!8014 (List!39717) C!21858)

(assert (=> b!3709690 (= res!1508777 (= (head!8014 s!14932) c!13437))))

(declare-fun b!3709691 () Bool)

(declare-fun tp!1128878 () Bool)

(assert (=> b!3709691 (= e!2297585 tp!1128878)))

(declare-fun b!3709692 () Bool)

(declare-fun res!1508781 () Bool)

(assert (=> b!3709692 (=> (not res!1508781) (not e!2297586))))

(assert (=> b!3709692 (= res!1508781 (matchR!5293 r!26030 s!14932))))

(assert (= (and start!349796 res!1508780) b!3709686))

(assert (= (and b!3709686 res!1508778) b!3709690))

(assert (= (and b!3709690 res!1508777) b!3709689))

(assert (= (and b!3709689 res!1508779) b!3709692))

(assert (= (and b!3709692 res!1508781) b!3709688))

(assert (= (and start!349796 (is-ElementMatch!10836 r!26030)) b!3709684))

(assert (= (and start!349796 (is-Concat!17107 r!26030)) b!3709687))

(assert (= (and start!349796 (is-Star!10836 r!26030)) b!3709691))

(assert (= (and start!349796 (is-Union!10836 r!26030)) b!3709685))

(assert (= (and start!349796 (is-Cons!39593 s!14932)) b!3709683))

(declare-fun m!4217829 () Bool)

(assert (=> b!3709688 m!4217829))

(assert (=> b!3709688 m!4217829))

(declare-fun m!4217831 () Bool)

(assert (=> b!3709688 m!4217831))

(declare-fun m!4217833 () Bool)

(assert (=> b!3709688 m!4217833))

(declare-fun m!4217835 () Bool)

(assert (=> start!349796 m!4217835))

(declare-fun m!4217837 () Bool)

(assert (=> b!3709692 m!4217837))

(declare-fun m!4217839 () Bool)

(assert (=> b!3709690 m!4217839))

(declare-fun m!4217841 () Bool)

(assert (=> b!3709689 m!4217841))

(assert (=> b!3709689 m!4217841))

(declare-fun m!4217843 () Bool)

(assert (=> b!3709689 m!4217843))

(declare-fun m!4217845 () Bool)

(assert (=> b!3709686 m!4217845))

(push 1)

(assert (not b!3709685))

(assert (not b!3709687))

(assert (not b!3709690))

(assert (not b!3709683))

(assert (not b!3709688))

(assert tp_is_empty!18687)

(assert (not b!3709692))

(assert (not start!349796))

(assert (not b!3709689))

(assert (not b!3709691))

(assert (not b!3709686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

