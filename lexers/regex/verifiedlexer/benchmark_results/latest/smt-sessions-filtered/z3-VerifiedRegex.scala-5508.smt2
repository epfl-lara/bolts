; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277990 () Bool)

(assert start!277990)

(declare-fun b!2855795 () Bool)

(declare-fun e!1808754 () Bool)

(declare-fun tp!918956 () Bool)

(declare-fun tp!918955 () Bool)

(assert (=> b!2855795 (= e!1808754 (and tp!918956 tp!918955))))

(declare-fun b!2855796 () Bool)

(declare-fun tp!918952 () Bool)

(assert (=> b!2855796 (= e!1808754 tp!918952)))

(declare-fun b!2855797 () Bool)

(declare-fun tp_is_empty!14879 () Bool)

(assert (=> b!2855797 (= e!1808754 tp_is_empty!14879)))

(declare-fun b!2855798 () Bool)

(declare-fun e!1808756 () Bool)

(declare-fun tp!918954 () Bool)

(assert (=> b!2855798 (= e!1808756 (and tp_is_empty!14879 tp!918954))))

(declare-fun b!2855799 () Bool)

(declare-fun e!1808755 () Bool)

(assert (=> b!2855799 (= e!1808755 (not true))))

(declare-datatypes ((C!17324 0))(
  ( (C!17325 (val!10696 Int)) )
))
(declare-datatypes ((Regex!8571 0))(
  ( (ElementMatch!8571 (c!460228 C!17324)) (Concat!13892 (regOne!17654 Regex!8571) (regTwo!17654 Regex!8571)) (EmptyExpr!8571) (Star!8571 (reg!8900 Regex!8571)) (EmptyLang!8571) (Union!8571 (regOne!17655 Regex!8571) (regTwo!17655 Regex!8571)) )
))
(declare-fun r!23423 () Regex!8571)

(declare-datatypes ((List!34168 0))(
  ( (Nil!34044) (Cons!34044 (h!39464 C!17324) (t!233199 List!34168)) )
))
(declare-datatypes ((Option!6308 0))(
  ( (None!6307) (Some!6307 (v!34429 List!34168)) )
))
(declare-fun lt!1013909 () Option!6308)

(declare-fun matchR!3686 (Regex!8571 List!34168) Bool)

(declare-fun get!10189 (Option!6308) List!34168)

(assert (=> b!2855799 (matchR!3686 r!23423 (get!10189 lt!1013909))))

(declare-datatypes ((Unit!47693 0))(
  ( (Unit!47694) )
))
(declare-fun lt!1013908 () Unit!47693)

(declare-fun lemmaGetWitnessMatches!10 (Regex!8571) Unit!47693)

(assert (=> b!2855799 (= lt!1013908 (lemmaGetWitnessMatches!10 r!23423))))

(declare-fun getLanguageWitness!239 (Regex!8571) Option!6308)

(assert (=> b!2855799 (= lt!1013909 (getLanguageWitness!239 r!23423))))

(declare-fun b!2855800 () Bool)

(declare-fun res!1186437 () Bool)

(assert (=> b!2855800 (=> (not res!1186437) (not e!1808755))))

(declare-fun prefix!1470 () List!34168)

(declare-fun prefixMatch!879 (Regex!8571 List!34168) Bool)

(assert (=> b!2855800 (= res!1186437 (prefixMatch!879 r!23423 prefix!1470))))

(declare-fun res!1186436 () Bool)

(assert (=> start!277990 (=> (not res!1186436) (not e!1808755))))

(declare-fun validRegex!3441 (Regex!8571) Bool)

(assert (=> start!277990 (= res!1186436 (validRegex!3441 r!23423))))

(assert (=> start!277990 e!1808755))

(assert (=> start!277990 e!1808754))

(assert (=> start!277990 e!1808756))

(declare-fun b!2855801 () Bool)

(declare-fun res!1186438 () Bool)

(assert (=> b!2855801 (=> (not res!1186438) (not e!1808755))))

(get-info :version)

(assert (=> b!2855801 (= res!1186438 ((_ is Nil!34044) prefix!1470))))

(declare-fun b!2855802 () Bool)

(declare-fun tp!918953 () Bool)

(declare-fun tp!918951 () Bool)

(assert (=> b!2855802 (= e!1808754 (and tp!918953 tp!918951))))

(assert (= (and start!277990 res!1186436) b!2855800))

(assert (= (and b!2855800 res!1186437) b!2855801))

(assert (= (and b!2855801 res!1186438) b!2855799))

(assert (= (and start!277990 ((_ is ElementMatch!8571) r!23423)) b!2855797))

(assert (= (and start!277990 ((_ is Concat!13892) r!23423)) b!2855802))

(assert (= (and start!277990 ((_ is Star!8571) r!23423)) b!2855796))

(assert (= (and start!277990 ((_ is Union!8571) r!23423)) b!2855795))

(assert (= (and start!277990 ((_ is Cons!34044) prefix!1470)) b!2855798))

(declare-fun m!3278653 () Bool)

(assert (=> b!2855799 m!3278653))

(assert (=> b!2855799 m!3278653))

(declare-fun m!3278655 () Bool)

(assert (=> b!2855799 m!3278655))

(declare-fun m!3278657 () Bool)

(assert (=> b!2855799 m!3278657))

(declare-fun m!3278659 () Bool)

(assert (=> b!2855799 m!3278659))

(declare-fun m!3278661 () Bool)

(assert (=> b!2855800 m!3278661))

(declare-fun m!3278663 () Bool)

(assert (=> start!277990 m!3278663))

(check-sat (not b!2855795) (not b!2855798) (not b!2855799) (not b!2855796) (not b!2855802) tp_is_empty!14879 (not b!2855800) (not start!277990))
(check-sat)
