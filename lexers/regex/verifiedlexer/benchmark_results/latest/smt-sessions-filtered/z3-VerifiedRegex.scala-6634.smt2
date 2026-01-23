; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349542 () Bool)

(assert start!349542)

(declare-fun b!3706120 () Bool)

(declare-fun res!1507724 () Bool)

(declare-fun e!2295849 () Bool)

(assert (=> b!3706120 (=> res!1507724 e!2295849)))

(declare-datatypes ((C!21800 0))(
  ( (C!21801 (val!12948 Int)) )
))
(declare-datatypes ((List!39688 0))(
  ( (Nil!39564) (Cons!39564 (h!44984 C!21800) (t!302371 List!39688)) )
))
(declare-fun s!14922 () List!39688)

(declare-fun c!13398 () C!21800)

(declare-fun contains!7900 (List!39688 C!21800) Bool)

(assert (=> b!3706120 (= res!1507724 (not (contains!7900 (t!302371 s!14922) c!13398)))))

(declare-fun b!3706121 () Bool)

(declare-fun e!2295848 () Bool)

(declare-fun tp_is_empty!18629 () Bool)

(assert (=> b!3706121 (= e!2295848 tp_is_empty!18629)))

(declare-fun b!3706122 () Bool)

(declare-fun res!1507723 () Bool)

(declare-fun e!2295847 () Bool)

(assert (=> b!3706122 (=> (not res!1507723) (not e!2295847))))

(declare-datatypes ((Regex!10807 0))(
  ( (ElementMatch!10807 (c!640059 C!21800)) (Concat!17078 (regOne!22126 Regex!10807) (regTwo!22126 Regex!10807)) (EmptyExpr!10807) (Star!10807 (reg!11136 Regex!10807)) (EmptyLang!10807) (Union!10807 (regOne!22127 Regex!10807) (regTwo!22127 Regex!10807)) )
))
(declare-fun r!25965 () Regex!10807)

(declare-fun usedCharacters!1070 (Regex!10807) List!39688)

(assert (=> b!3706122 (= res!1507723 (not (contains!7900 (usedCharacters!1070 r!25965) c!13398)))))

(declare-fun b!3706123 () Bool)

(declare-fun tp!1127491 () Bool)

(declare-fun tp!1127492 () Bool)

(assert (=> b!3706123 (= e!2295848 (and tp!1127491 tp!1127492))))

(declare-fun res!1507728 () Bool)

(assert (=> start!349542 (=> (not res!1507728) (not e!2295847))))

(declare-fun validRegex!4914 (Regex!10807) Bool)

(assert (=> start!349542 (= res!1507728 (validRegex!4914 r!25965))))

(assert (=> start!349542 e!2295847))

(assert (=> start!349542 e!2295848))

(declare-fun e!2295850 () Bool)

(assert (=> start!349542 e!2295850))

(assert (=> start!349542 tp_is_empty!18629))

(declare-fun b!3706124 () Bool)

(assert (=> b!3706124 (= e!2295849 true)))

(declare-fun lt!1296442 () Regex!10807)

(declare-fun matchR!5280 (Regex!10807 List!39688) Bool)

(assert (=> b!3706124 (not (matchR!5280 lt!1296442 (t!302371 s!14922)))))

(declare-datatypes ((Unit!57452 0))(
  ( (Unit!57453) )
))
(declare-fun lt!1296441 () Unit!57452)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!800 (Regex!10807 List!39688 C!21800) Unit!57452)

(assert (=> b!3706124 (= lt!1296441 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!800 lt!1296442 (t!302371 s!14922) c!13398))))

(declare-fun b!3706125 () Bool)

(assert (=> b!3706125 (= e!2295847 (not e!2295849))))

(declare-fun res!1507726 () Bool)

(assert (=> b!3706125 (=> res!1507726 e!2295849)))

(assert (=> b!3706125 (= res!1507726 (not (validRegex!4914 lt!1296442)))))

(assert (=> b!3706125 (not (contains!7900 (usedCharacters!1070 lt!1296442) c!13398))))

(declare-fun derivativeStep!3290 (Regex!10807 C!21800) Regex!10807)

(assert (=> b!3706125 (= lt!1296442 (derivativeStep!3290 r!25965 (h!44984 s!14922)))))

(declare-fun lt!1296440 () Unit!57452)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!6 (Regex!10807 C!21800 C!21800) Unit!57452)

(assert (=> b!3706125 (= lt!1296440 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!6 r!25965 (h!44984 s!14922) c!13398))))

(declare-fun b!3706126 () Bool)

(declare-fun res!1507727 () Bool)

(assert (=> b!3706126 (=> (not res!1507727) (not e!2295847))))

(get-info :version)

(assert (=> b!3706126 (= res!1507727 (and (or (not ((_ is Cons!39564) s!14922)) (not (= (h!44984 s!14922) c!13398))) ((_ is Cons!39564) s!14922) (not (= (h!44984 s!14922) c!13398))))))

(declare-fun b!3706127 () Bool)

(declare-fun res!1507725 () Bool)

(assert (=> b!3706127 (=> (not res!1507725) (not e!2295847))))

(assert (=> b!3706127 (= res!1507725 (contains!7900 s!14922 c!13398))))

(declare-fun b!3706128 () Bool)

(declare-fun tp!1127496 () Bool)

(assert (=> b!3706128 (= e!2295850 (and tp_is_empty!18629 tp!1127496))))

(declare-fun b!3706129 () Bool)

(declare-fun tp!1127494 () Bool)

(assert (=> b!3706129 (= e!2295848 tp!1127494)))

(declare-fun b!3706130 () Bool)

(declare-fun tp!1127495 () Bool)

(declare-fun tp!1127493 () Bool)

(assert (=> b!3706130 (= e!2295848 (and tp!1127495 tp!1127493))))

(assert (= (and start!349542 res!1507728) b!3706127))

(assert (= (and b!3706127 res!1507725) b!3706122))

(assert (= (and b!3706122 res!1507723) b!3706126))

(assert (= (and b!3706126 res!1507727) b!3706125))

(assert (= (and b!3706125 (not res!1507726)) b!3706120))

(assert (= (and b!3706120 (not res!1507724)) b!3706124))

(assert (= (and start!349542 ((_ is ElementMatch!10807) r!25965)) b!3706121))

(assert (= (and start!349542 ((_ is Concat!17078) r!25965)) b!3706130))

(assert (= (and start!349542 ((_ is Star!10807) r!25965)) b!3706129))

(assert (= (and start!349542 ((_ is Union!10807) r!25965)) b!3706123))

(assert (= (and start!349542 ((_ is Cons!39564) s!14922)) b!3706128))

(declare-fun m!4216173 () Bool)

(assert (=> start!349542 m!4216173))

(declare-fun m!4216175 () Bool)

(assert (=> b!3706120 m!4216175))

(declare-fun m!4216177 () Bool)

(assert (=> b!3706124 m!4216177))

(declare-fun m!4216179 () Bool)

(assert (=> b!3706124 m!4216179))

(declare-fun m!4216181 () Bool)

(assert (=> b!3706122 m!4216181))

(assert (=> b!3706122 m!4216181))

(declare-fun m!4216183 () Bool)

(assert (=> b!3706122 m!4216183))

(declare-fun m!4216185 () Bool)

(assert (=> b!3706125 m!4216185))

(declare-fun m!4216187 () Bool)

(assert (=> b!3706125 m!4216187))

(declare-fun m!4216189 () Bool)

(assert (=> b!3706125 m!4216189))

(declare-fun m!4216191 () Bool)

(assert (=> b!3706125 m!4216191))

(assert (=> b!3706125 m!4216185))

(declare-fun m!4216193 () Bool)

(assert (=> b!3706125 m!4216193))

(declare-fun m!4216195 () Bool)

(assert (=> b!3706127 m!4216195))

(check-sat (not b!3706125) tp_is_empty!18629 (not b!3706127) (not start!349542) (not b!3706123) (not b!3706129) (not b!3706122) (not b!3706124) (not b!3706128) (not b!3706120) (not b!3706130))
(check-sat)
