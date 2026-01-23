; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749824 () Bool)

(assert start!749824)

(declare-fun b!7944979 () Bool)

(declare-fun e!4687479 () Bool)

(assert (=> b!7944979 (= e!4687479 false)))

(declare-fun b!7944981 () Bool)

(declare-fun e!4687478 () Bool)

(declare-fun tp_is_empty!53409 () Bool)

(assert (=> b!7944981 (= e!4687478 tp_is_empty!53409)))

(declare-fun b!7944982 () Bool)

(declare-fun e!4687475 () Bool)

(assert (=> b!7944982 (= e!4687475 tp_is_empty!53409)))

(declare-fun b!7944983 () Bool)

(declare-fun res!3151314 () Bool)

(assert (=> b!7944983 (=> (not res!3151314) (not e!4687479))))

(declare-datatypes ((C!43204 0))(
  ( (C!43205 (val!32150 Int)) )
))
(declare-datatypes ((List!74662 0))(
  ( (Nil!74538) (Cons!74538 (h!80986 C!43204) (t!390405 List!74662)) )
))
(declare-fun testedP!447 () List!74662)

(declare-datatypes ((Regex!21433 0))(
  ( (ElementMatch!21433 (c!1459520 C!43204)) (Concat!30432 (regOne!43378 Regex!21433) (regTwo!43378 Regex!21433)) (EmptyExpr!21433) (Star!21433 (reg!21762 Regex!21433)) (EmptyLang!21433) (Union!21433 (regOne!43379 Regex!21433) (regTwo!43379 Regex!21433)) )
))
(declare-fun r!24602 () Regex!21433)

(declare-fun input!7927 () List!74662)

(declare-fun isEmpty!42837 (List!74662) Bool)

(declare-datatypes ((tuple2!70528 0))(
  ( (tuple2!70529 (_1!38567 List!74662) (_2!38567 List!74662)) )
))
(declare-fun findLongestMatchInner!2214 (Regex!21433 List!74662 Int List!74662 List!74662 Int) tuple2!70528)

(declare-fun size!43369 (List!74662) Int)

(declare-fun getSuffix!3736 (List!74662 List!74662) List!74662)

(assert (=> b!7944983 (= res!3151314 (not (isEmpty!42837 (_1!38567 (findLongestMatchInner!2214 r!24602 testedP!447 (size!43369 testedP!447) (getSuffix!3736 input!7927 testedP!447) input!7927 (size!43369 input!7927))))))))

(declare-fun b!7944984 () Bool)

(declare-fun res!3151315 () Bool)

(assert (=> b!7944984 (=> (not res!3151315) (not e!4687479))))

(declare-fun isPrefix!6533 (List!74662 List!74662) Bool)

(assert (=> b!7944984 (= res!3151315 (isPrefix!6533 testedP!447 input!7927))))

(declare-fun b!7944985 () Bool)

(declare-fun tp!2363147 () Bool)

(assert (=> b!7944985 (= e!4687478 tp!2363147)))

(declare-fun b!7944986 () Bool)

(declare-fun tp!2363155 () Bool)

(assert (=> b!7944986 (= e!4687475 tp!2363155)))

(declare-fun res!3151316 () Bool)

(assert (=> start!749824 (=> (not res!3151316) (not e!4687479))))

(declare-fun baseR!116 () Regex!21433)

(declare-fun validRegex!11737 (Regex!21433) Bool)

(assert (=> start!749824 (= res!3151316 (validRegex!11737 baseR!116))))

(assert (=> start!749824 e!4687479))

(assert (=> start!749824 e!4687478))

(declare-fun e!4687477 () Bool)

(assert (=> start!749824 e!4687477))

(declare-fun e!4687476 () Bool)

(assert (=> start!749824 e!4687476))

(assert (=> start!749824 e!4687475))

(declare-fun b!7944980 () Bool)

(declare-fun tp!2363154 () Bool)

(declare-fun tp!2363149 () Bool)

(assert (=> b!7944980 (= e!4687478 (and tp!2363154 tp!2363149))))

(declare-fun b!7944987 () Bool)

(declare-fun tp!2363150 () Bool)

(assert (=> b!7944987 (= e!4687476 (and tp_is_empty!53409 tp!2363150))))

(declare-fun b!7944988 () Bool)

(declare-fun res!3151313 () Bool)

(assert (=> b!7944988 (=> (not res!3151313) (not e!4687479))))

(declare-fun derivative!619 (Regex!21433 List!74662) Regex!21433)

(assert (=> b!7944988 (= res!3151313 (= (derivative!619 baseR!116 testedP!447) r!24602))))

(declare-fun b!7944989 () Bool)

(declare-fun tp!2363148 () Bool)

(assert (=> b!7944989 (= e!4687477 (and tp_is_empty!53409 tp!2363148))))

(declare-fun b!7944990 () Bool)

(declare-fun tp!2363153 () Bool)

(declare-fun tp!2363158 () Bool)

(assert (=> b!7944990 (= e!4687475 (and tp!2363153 tp!2363158))))

(declare-fun b!7944991 () Bool)

(declare-fun tp!2363152 () Bool)

(declare-fun tp!2363151 () Bool)

(assert (=> b!7944991 (= e!4687475 (and tp!2363152 tp!2363151))))

(declare-fun b!7944992 () Bool)

(declare-fun tp!2363156 () Bool)

(declare-fun tp!2363157 () Bool)

(assert (=> b!7944992 (= e!4687478 (and tp!2363156 tp!2363157))))

(assert (= (and start!749824 res!3151316) b!7944984))

(assert (= (and b!7944984 res!3151315) b!7944988))

(assert (= (and b!7944988 res!3151313) b!7944983))

(assert (= (and b!7944983 res!3151314) b!7944979))

(get-info :version)

(assert (= (and start!749824 ((_ is ElementMatch!21433) baseR!116)) b!7944981))

(assert (= (and start!749824 ((_ is Concat!30432) baseR!116)) b!7944980))

(assert (= (and start!749824 ((_ is Star!21433) baseR!116)) b!7944985))

(assert (= (and start!749824 ((_ is Union!21433) baseR!116)) b!7944992))

(assert (= (and start!749824 ((_ is Cons!74538) testedP!447)) b!7944989))

(assert (= (and start!749824 ((_ is Cons!74538) input!7927)) b!7944987))

(assert (= (and start!749824 ((_ is ElementMatch!21433) r!24602)) b!7944982))

(assert (= (and start!749824 ((_ is Concat!30432) r!24602)) b!7944990))

(assert (= (and start!749824 ((_ is Star!21433) r!24602)) b!7944986))

(assert (= (and start!749824 ((_ is Union!21433) r!24602)) b!7944991))

(declare-fun m!8331838 () Bool)

(assert (=> b!7944983 m!8331838))

(declare-fun m!8331840 () Bool)

(assert (=> b!7944983 m!8331840))

(declare-fun m!8331842 () Bool)

(assert (=> b!7944983 m!8331842))

(assert (=> b!7944983 m!8331838))

(declare-fun m!8331844 () Bool)

(assert (=> b!7944983 m!8331844))

(assert (=> b!7944983 m!8331840))

(declare-fun m!8331846 () Bool)

(assert (=> b!7944983 m!8331846))

(assert (=> b!7944983 m!8331842))

(declare-fun m!8331848 () Bool)

(assert (=> b!7944984 m!8331848))

(declare-fun m!8331850 () Bool)

(assert (=> start!749824 m!8331850))

(declare-fun m!8331852 () Bool)

(assert (=> b!7944988 m!8331852))

(check-sat (not b!7944989) (not b!7944985) (not b!7944990) (not b!7944984) (not b!7944980) (not b!7944987) tp_is_empty!53409 (not b!7944986) (not b!7944991) (not b!7944983) (not b!7944992) (not b!7944988) (not start!749824))
(check-sat)
