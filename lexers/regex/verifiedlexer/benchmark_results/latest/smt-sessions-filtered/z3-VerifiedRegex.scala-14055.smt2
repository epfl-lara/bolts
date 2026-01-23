; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741770 () Bool)

(assert start!741770)

(declare-fun b!7810837 () Bool)

(declare-fun e!4622964 () Bool)

(assert (=> b!7810837 (= e!4622964 (not true))))

(declare-fun lt!2675842 () Bool)

(declare-datatypes ((C!42136 0))(
  ( (C!42137 (val!31508 Int)) )
))
(declare-datatypes ((Regex!20905 0))(
  ( (ElementMatch!20905 (c!1438212 C!42136)) (Concat!29750 (regOne!42322 Regex!20905) (regTwo!42322 Regex!20905)) (EmptyExpr!20905) (Star!20905 (reg!21234 Regex!20905)) (EmptyLang!20905) (Union!20905 (regOne!42323 Regex!20905) (regTwo!42323 Regex!20905)) )
))
(declare-fun r1!6206 () Regex!20905)

(declare-datatypes ((List!73742 0))(
  ( (Nil!73618) (Cons!73618 (h!80066 C!42136) (t!388477 List!73742)) )
))
(declare-fun s!14225 () List!73742)

(declare-fun matchR!10363 (Regex!20905 List!73742) Bool)

(assert (=> b!7810837 (= lt!2675842 (matchR!10363 r1!6206 s!14225))))

(declare-fun e!4622961 () Bool)

(assert (=> b!7810837 e!4622961))

(declare-fun res!3110481 () Bool)

(assert (=> b!7810837 (=> res!3110481 e!4622961)))

(declare-fun lt!2675841 () Regex!20905)

(assert (=> b!7810837 (= res!3110481 (matchR!10363 lt!2675841 (t!388477 s!14225)))))

(declare-fun lt!2675840 () Regex!20905)

(declare-datatypes ((Unit!168632 0))(
  ( (Unit!168633) )
))
(declare-fun lt!2675839 () Unit!168632)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!434 (Regex!20905 Regex!20905 List!73742) Unit!168632)

(assert (=> b!7810837 (= lt!2675839 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!434 lt!2675841 lt!2675840 (t!388477 s!14225)))))

(declare-fun b!7810838 () Bool)

(declare-fun e!4622965 () Bool)

(declare-fun tp!2301771 () Bool)

(assert (=> b!7810838 (= e!4622965 tp!2301771)))

(declare-fun b!7810839 () Bool)

(declare-fun e!4622963 () Bool)

(declare-fun tp_is_empty!52165 () Bool)

(assert (=> b!7810839 (= e!4622963 tp_is_empty!52165)))

(declare-fun b!7810840 () Bool)

(declare-fun res!3110479 () Bool)

(declare-fun e!4622962 () Bool)

(assert (=> b!7810840 (=> (not res!3110479) (not e!4622962))))

(declare-fun r2!6144 () Regex!20905)

(declare-fun validRegex!11319 (Regex!20905) Bool)

(assert (=> b!7810840 (= res!3110479 (validRegex!11319 r2!6144))))

(declare-fun b!7810841 () Bool)

(assert (=> b!7810841 (= e!4622961 (matchR!10363 lt!2675840 (t!388477 s!14225)))))

(declare-fun b!7810842 () Bool)

(assert (=> b!7810842 (= e!4622965 tp_is_empty!52165)))

(declare-fun b!7810843 () Bool)

(declare-fun e!4622960 () Bool)

(declare-fun tp!2301770 () Bool)

(assert (=> b!7810843 (= e!4622960 (and tp_is_empty!52165 tp!2301770))))

(declare-fun b!7810844 () Bool)

(declare-fun tp!2301764 () Bool)

(declare-fun tp!2301761 () Bool)

(assert (=> b!7810844 (= e!4622965 (and tp!2301764 tp!2301761))))

(declare-fun b!7810845 () Bool)

(declare-fun res!3110478 () Bool)

(assert (=> b!7810845 (=> (not res!3110478) (not e!4622962))))

(assert (=> b!7810845 (= res!3110478 (matchR!10363 (Union!20905 r1!6206 r2!6144) s!14225))))

(declare-fun b!7810846 () Bool)

(assert (=> b!7810846 (= e!4622962 e!4622964)))

(declare-fun res!3110483 () Bool)

(assert (=> b!7810846 (=> (not res!3110483) (not e!4622964))))

(assert (=> b!7810846 (= res!3110483 (validRegex!11319 lt!2675841))))

(declare-fun derivativeStep!6238 (Regex!20905 C!42136) Regex!20905)

(assert (=> b!7810846 (= lt!2675840 (derivativeStep!6238 r2!6144 (h!80066 s!14225)))))

(assert (=> b!7810846 (= lt!2675841 (derivativeStep!6238 r1!6206 (h!80066 s!14225)))))

(declare-fun b!7810847 () Bool)

(declare-fun tp!2301767 () Bool)

(declare-fun tp!2301769 () Bool)

(assert (=> b!7810847 (= e!4622965 (and tp!2301767 tp!2301769))))

(declare-fun b!7810848 () Bool)

(declare-fun tp!2301762 () Bool)

(declare-fun tp!2301766 () Bool)

(assert (=> b!7810848 (= e!4622963 (and tp!2301762 tp!2301766))))

(declare-fun b!7810849 () Bool)

(declare-fun res!3110480 () Bool)

(assert (=> b!7810849 (=> (not res!3110480) (not e!4622962))))

(get-info :version)

(assert (=> b!7810849 (= res!3110480 ((_ is Cons!73618) s!14225))))

(declare-fun b!7810851 () Bool)

(declare-fun res!3110484 () Bool)

(assert (=> b!7810851 (=> (not res!3110484) (not e!4622964))))

(assert (=> b!7810851 (= res!3110484 (validRegex!11319 lt!2675840))))

(declare-fun res!3110482 () Bool)

(assert (=> start!741770 (=> (not res!3110482) (not e!4622962))))

(assert (=> start!741770 (= res!3110482 (validRegex!11319 r1!6206))))

(assert (=> start!741770 e!4622962))

(assert (=> start!741770 e!4622965))

(assert (=> start!741770 e!4622963))

(assert (=> start!741770 e!4622960))

(declare-fun b!7810850 () Bool)

(declare-fun res!3110477 () Bool)

(assert (=> b!7810850 (=> (not res!3110477) (not e!4622964))))

(assert (=> b!7810850 (= res!3110477 (matchR!10363 (Union!20905 lt!2675841 lt!2675840) (t!388477 s!14225)))))

(declare-fun b!7810852 () Bool)

(declare-fun tp!2301768 () Bool)

(declare-fun tp!2301763 () Bool)

(assert (=> b!7810852 (= e!4622963 (and tp!2301768 tp!2301763))))

(declare-fun b!7810853 () Bool)

(declare-fun tp!2301765 () Bool)

(assert (=> b!7810853 (= e!4622963 tp!2301765)))

(assert (= (and start!741770 res!3110482) b!7810840))

(assert (= (and b!7810840 res!3110479) b!7810845))

(assert (= (and b!7810845 res!3110478) b!7810849))

(assert (= (and b!7810849 res!3110480) b!7810846))

(assert (= (and b!7810846 res!3110483) b!7810851))

(assert (= (and b!7810851 res!3110484) b!7810850))

(assert (= (and b!7810850 res!3110477) b!7810837))

(assert (= (and b!7810837 (not res!3110481)) b!7810841))

(assert (= (and start!741770 ((_ is ElementMatch!20905) r1!6206)) b!7810842))

(assert (= (and start!741770 ((_ is Concat!29750) r1!6206)) b!7810847))

(assert (= (and start!741770 ((_ is Star!20905) r1!6206)) b!7810838))

(assert (= (and start!741770 ((_ is Union!20905) r1!6206)) b!7810844))

(assert (= (and start!741770 ((_ is ElementMatch!20905) r2!6144)) b!7810839))

(assert (= (and start!741770 ((_ is Concat!29750) r2!6144)) b!7810852))

(assert (= (and start!741770 ((_ is Star!20905) r2!6144)) b!7810853))

(assert (= (and start!741770 ((_ is Union!20905) r2!6144)) b!7810848))

(assert (= (and start!741770 ((_ is Cons!73618) s!14225)) b!7810843))

(declare-fun m!8241898 () Bool)

(assert (=> b!7810841 m!8241898))

(declare-fun m!8241900 () Bool)

(assert (=> b!7810837 m!8241900))

(declare-fun m!8241902 () Bool)

(assert (=> b!7810837 m!8241902))

(declare-fun m!8241904 () Bool)

(assert (=> b!7810837 m!8241904))

(declare-fun m!8241906 () Bool)

(assert (=> start!741770 m!8241906))

(declare-fun m!8241908 () Bool)

(assert (=> b!7810845 m!8241908))

(declare-fun m!8241910 () Bool)

(assert (=> b!7810851 m!8241910))

(declare-fun m!8241912 () Bool)

(assert (=> b!7810846 m!8241912))

(declare-fun m!8241914 () Bool)

(assert (=> b!7810846 m!8241914))

(declare-fun m!8241916 () Bool)

(assert (=> b!7810846 m!8241916))

(declare-fun m!8241918 () Bool)

(assert (=> b!7810850 m!8241918))

(declare-fun m!8241920 () Bool)

(assert (=> b!7810840 m!8241920))

(check-sat (not b!7810840) (not b!7810844) tp_is_empty!52165 (not b!7810851) (not b!7810843) (not b!7810841) (not b!7810845) (not b!7810846) (not b!7810837) (not b!7810852) (not b!7810850) (not b!7810838) (not start!741770) (not b!7810848) (not b!7810847) (not b!7810853))
(check-sat)
