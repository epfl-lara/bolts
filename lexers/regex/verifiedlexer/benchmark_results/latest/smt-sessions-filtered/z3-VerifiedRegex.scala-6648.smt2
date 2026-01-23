; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349794 () Bool)

(assert start!349794)

(declare-fun res!1508766 () Bool)

(declare-fun e!2297577 () Bool)

(assert (=> start!349794 (=> (not res!1508766) (not e!2297577))))

(declare-datatypes ((C!21856 0))(
  ( (C!21857 (val!12976 Int)) )
))
(declare-datatypes ((Regex!10835 0))(
  ( (ElementMatch!10835 (c!640757 C!21856)) (Concat!17106 (regOne!22182 Regex!10835) (regTwo!22182 Regex!10835)) (EmptyExpr!10835) (Star!10835 (reg!11164 Regex!10835)) (EmptyLang!10835) (Union!10835 (regOne!22183 Regex!10835) (regTwo!22183 Regex!10835)) )
))
(declare-fun r!26030 () Regex!10835)

(declare-fun validRegex!4942 (Regex!10835) Bool)

(assert (=> start!349794 (= res!1508766 (validRegex!4942 r!26030))))

(assert (=> start!349794 e!2297577))

(declare-fun e!2297578 () Bool)

(assert (=> start!349794 e!2297578))

(declare-fun e!2297576 () Bool)

(assert (=> start!349794 e!2297576))

(declare-fun tp_is_empty!18685 () Bool)

(assert (=> start!349794 tp_is_empty!18685))

(declare-fun b!3709653 () Bool)

(declare-fun res!1508762 () Bool)

(assert (=> b!3709653 (=> (not res!1508762) (not e!2297577))))

(declare-fun c!13437 () C!21856)

(declare-datatypes ((List!39716 0))(
  ( (Nil!39592) (Cons!39592 (h!45012 C!21856) (t!302399 List!39716)) )
))
(declare-fun contains!7928 (List!39716 C!21856) Bool)

(declare-fun usedCharacters!1098 (Regex!10835) List!39716)

(assert (=> b!3709653 (= res!1508762 (not (contains!7928 (usedCharacters!1098 r!26030) c!13437)))))

(declare-fun b!3709654 () Bool)

(declare-fun tp!1128856 () Bool)

(declare-fun tp!1128858 () Bool)

(assert (=> b!3709654 (= e!2297578 (and tp!1128856 tp!1128858))))

(declare-fun b!3709655 () Bool)

(declare-fun res!1508765 () Bool)

(assert (=> b!3709655 (=> (not res!1508765) (not e!2297577))))

(declare-fun s!14932 () List!39716)

(assert (=> b!3709655 (= res!1508765 (contains!7928 s!14932 c!13437))))

(declare-fun b!3709656 () Bool)

(assert (=> b!3709656 (= e!2297578 tp_is_empty!18685)))

(declare-fun b!3709657 () Bool)

(declare-fun tp!1128860 () Bool)

(declare-fun tp!1128857 () Bool)

(assert (=> b!3709657 (= e!2297578 (and tp!1128860 tp!1128857))))

(declare-fun b!3709658 () Bool)

(declare-fun res!1508763 () Bool)

(assert (=> b!3709658 (=> (not res!1508763) (not e!2297577))))

(declare-fun head!8013 (List!39716) C!21856)

(assert (=> b!3709658 (= res!1508763 (= (head!8013 s!14932) c!13437))))

(declare-fun b!3709659 () Bool)

(declare-fun tp!1128859 () Bool)

(assert (=> b!3709659 (= e!2297576 (and tp_is_empty!18685 tp!1128859))))

(declare-fun b!3709660 () Bool)

(assert (=> b!3709660 (= e!2297577 (not true))))

(assert (=> b!3709660 false))

(declare-datatypes ((Unit!57480 0))(
  ( (Unit!57481) )
))
(declare-fun lt!1296740 () Unit!57480)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!2 (Regex!10835 C!21856 List!39716) Unit!57480)

(declare-fun tail!5742 (List!39716) List!39716)

(assert (=> b!3709660 (= lt!1296740 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!2 r!26030 c!13437 (tail!5742 s!14932)))))

(declare-fun matchR!5292 (Regex!10835 List!39716) Bool)

(declare-fun derivative!349 (Regex!10835 List!39716) Regex!10835)

(assert (=> b!3709660 (matchR!5292 (derivative!349 r!26030 s!14932) Nil!39592)))

(declare-fun lt!1296739 () Unit!57480)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!238 (Regex!10835 List!39716) Unit!57480)

(assert (=> b!3709660 (= lt!1296739 (lemmaMatchRIsSameAsWholeDerivativeAndNil!238 r!26030 s!14932))))

(declare-fun b!3709661 () Bool)

(declare-fun tp!1128855 () Bool)

(assert (=> b!3709661 (= e!2297578 tp!1128855)))

(declare-fun b!3709662 () Bool)

(declare-fun res!1508764 () Bool)

(assert (=> b!3709662 (=> (not res!1508764) (not e!2297577))))

(assert (=> b!3709662 (= res!1508764 (matchR!5292 r!26030 s!14932))))

(assert (= (and start!349794 res!1508766) b!3709655))

(assert (= (and b!3709655 res!1508765) b!3709658))

(assert (= (and b!3709658 res!1508763) b!3709653))

(assert (= (and b!3709653 res!1508762) b!3709662))

(assert (= (and b!3709662 res!1508764) b!3709660))

(get-info :version)

(assert (= (and start!349794 ((_ is ElementMatch!10835) r!26030)) b!3709656))

(assert (= (and start!349794 ((_ is Concat!17106) r!26030)) b!3709654))

(assert (= (and start!349794 ((_ is Star!10835) r!26030)) b!3709661))

(assert (= (and start!349794 ((_ is Union!10835) r!26030)) b!3709657))

(assert (= (and start!349794 ((_ is Cons!39592) s!14932)) b!3709659))

(declare-fun m!4217807 () Bool)

(assert (=> b!3709655 m!4217807))

(declare-fun m!4217809 () Bool)

(assert (=> start!349794 m!4217809))

(declare-fun m!4217811 () Bool)

(assert (=> b!3709662 m!4217811))

(declare-fun m!4217813 () Bool)

(assert (=> b!3709660 m!4217813))

(declare-fun m!4217815 () Bool)

(assert (=> b!3709660 m!4217815))

(declare-fun m!4217817 () Bool)

(assert (=> b!3709660 m!4217817))

(declare-fun m!4217819 () Bool)

(assert (=> b!3709660 m!4217819))

(assert (=> b!3709660 m!4217813))

(declare-fun m!4217821 () Bool)

(assert (=> b!3709660 m!4217821))

(assert (=> b!3709660 m!4217817))

(declare-fun m!4217823 () Bool)

(assert (=> b!3709653 m!4217823))

(assert (=> b!3709653 m!4217823))

(declare-fun m!4217825 () Bool)

(assert (=> b!3709653 m!4217825))

(declare-fun m!4217827 () Bool)

(assert (=> b!3709658 m!4217827))

(check-sat (not b!3709657) (not b!3709655) (not b!3709660) (not b!3709654) (not b!3709661) (not b!3709653) (not b!3709662) (not start!349794) tp_is_empty!18685 (not b!3709658) (not b!3709659))
(check-sat)
