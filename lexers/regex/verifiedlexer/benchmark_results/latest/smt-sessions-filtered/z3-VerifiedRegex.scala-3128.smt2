; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184442 () Bool)

(assert start!184442)

(declare-fun b!1848101 () Bool)

(assert (=> b!1848101 true))

(assert (=> b!1848101 true))

(declare-fun b!1848093 () Bool)

(declare-fun e!1180911 () Bool)

(assert (=> b!1848093 (= e!1180911 true)))

(assert (=> b!1848093 false))

(declare-datatypes ((C!10168 0))(
  ( (C!10169 (val!5810 Int)) )
))
(declare-fun c!13459 () C!10168)

(declare-datatypes ((Regex!5009 0))(
  ( (ElementMatch!5009 (c!301702 C!10168)) (Concat!8787 (regOne!10530 Regex!5009) (regTwo!10530 Regex!5009)) (EmptyExpr!5009) (Star!5009 (reg!5338 Regex!5009)) (EmptyLang!5009) (Union!5009 (regOne!10531 Regex!5009) (regTwo!10531 Regex!5009)) )
))
(declare-fun r!26091 () Regex!5009)

(declare-datatypes ((List!20490 0))(
  ( (Nil!20418) (Cons!20418 (h!25819 C!10168) (t!172263 List!20490)) )
))
(declare-fun lt!715211 () List!20490)

(declare-datatypes ((Unit!35093 0))(
  ( (Unit!35094) )
))
(declare-fun lt!715212 () Unit!35093)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!232 (Regex!5009 List!20490 C!10168) Unit!35093)

(assert (=> b!1848093 (= lt!715212 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!232 r!26091 lt!715211 c!13459))))

(declare-fun b!1848094 () Bool)

(declare-fun e!1180908 () Bool)

(declare-fun tp!522568 () Bool)

(assert (=> b!1848094 (= e!1180908 tp!522568)))

(declare-fun b!1848095 () Bool)

(declare-fun e!1180909 () Bool)

(declare-fun tp_is_empty!8467 () Bool)

(declare-fun tp!522569 () Bool)

(assert (=> b!1848095 (= e!1180909 (and tp_is_empty!8467 tp!522569))))

(declare-fun res!829819 () Bool)

(declare-fun e!1180907 () Bool)

(assert (=> start!184442 (=> (not res!829819) (not e!1180907))))

(declare-fun validRegex!2053 (Regex!5009) Bool)

(assert (=> start!184442 (= res!829819 (validRegex!2053 r!26091))))

(assert (=> start!184442 e!1180907))

(assert (=> start!184442 e!1180908))

(assert (=> start!184442 e!1180909))

(assert (=> start!184442 tp_is_empty!8467))

(declare-fun b!1848096 () Bool)

(declare-fun res!829816 () Bool)

(assert (=> b!1848096 (=> (not res!829816) (not e!1180907))))

(declare-fun prefix!1614 () List!20490)

(declare-fun contains!3774 (List!20490 C!10168) Bool)

(assert (=> b!1848096 (= res!829816 (contains!3774 prefix!1614 c!13459))))

(declare-fun b!1848097 () Bool)

(declare-fun tp!522566 () Bool)

(declare-fun tp!522570 () Bool)

(assert (=> b!1848097 (= e!1180908 (and tp!522566 tp!522570))))

(declare-fun b!1848098 () Bool)

(declare-fun tp!522567 () Bool)

(declare-fun tp!522571 () Bool)

(assert (=> b!1848098 (= e!1180908 (and tp!522567 tp!522571))))

(declare-fun b!1848099 () Bool)

(declare-fun res!829824 () Bool)

(assert (=> b!1848099 (=> res!829824 e!1180911)))

(assert (=> b!1848099 (= res!829824 (not (contains!3774 lt!715211 c!13459)))))

(declare-fun b!1848100 () Bool)

(declare-fun e!1180910 () Bool)

(assert (=> b!1848100 (= e!1180910 e!1180911)))

(declare-fun res!829821 () Bool)

(assert (=> b!1848100 (=> res!829821 e!1180911)))

(declare-fun matchR!2448 (Regex!5009 List!20490) Bool)

(assert (=> b!1848100 (= res!829821 (not (matchR!2448 r!26091 lt!715211)))))

(declare-fun lambda!73058 () Int)

(declare-fun pickWitness!262 (Int) List!20490)

(assert (=> b!1848100 (= lt!715211 (pickWitness!262 lambda!73058))))

(assert (=> b!1848101 (= e!1180907 (not e!1180910))))

(declare-fun res!829818 () Bool)

(assert (=> b!1848101 (=> res!829818 e!1180910)))

(declare-fun Exists!963 (Int) Bool)

(assert (=> b!1848101 (= res!829818 (not (Exists!963 lambda!73058)))))

(assert (=> b!1848101 (Exists!963 lambda!73058)))

(declare-fun lt!715210 () Unit!35093)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!281 (Regex!5009 List!20490) Unit!35093)

(assert (=> b!1848101 (= lt!715210 (lemmaPrefixMatchThenExistsStringThatMatches!281 r!26091 prefix!1614))))

(declare-fun b!1848102 () Bool)

(declare-fun res!829823 () Bool)

(assert (=> b!1848102 (=> res!829823 e!1180911)))

(declare-fun isPrefix!1885 (List!20490 List!20490) Bool)

(assert (=> b!1848102 (= res!829823 (not (isPrefix!1885 prefix!1614 lt!715211)))))

(declare-fun b!1848103 () Bool)

(declare-fun res!829822 () Bool)

(assert (=> b!1848103 (=> (not res!829822) (not e!1180907))))

(declare-fun prefixMatch!786 (Regex!5009 List!20490) Bool)

(assert (=> b!1848103 (= res!829822 (prefixMatch!786 r!26091 prefix!1614))))

(declare-fun b!1848104 () Bool)

(declare-fun res!829817 () Bool)

(assert (=> b!1848104 (=> (not res!829817) (not e!1180907))))

(declare-fun usedCharacters!314 (Regex!5009) List!20490)

(assert (=> b!1848104 (= res!829817 (not (contains!3774 (usedCharacters!314 r!26091) c!13459)))))

(declare-fun b!1848105 () Bool)

(assert (=> b!1848105 (= e!1180908 tp_is_empty!8467)))

(declare-fun b!1848106 () Bool)

(declare-fun res!829820 () Bool)

(assert (=> b!1848106 (=> res!829820 e!1180911)))

(declare-fun ++!5536 (List!20490 List!20490) List!20490)

(declare-fun getSuffix!992 (List!20490 List!20490) List!20490)

(assert (=> b!1848106 (= res!829820 (not (= lt!715211 (++!5536 prefix!1614 (getSuffix!992 lt!715211 prefix!1614)))))))

(assert (= (and start!184442 res!829819) b!1848096))

(assert (= (and b!1848096 res!829816) b!1848104))

(assert (= (and b!1848104 res!829817) b!1848103))

(assert (= (and b!1848103 res!829822) b!1848101))

(assert (= (and b!1848101 (not res!829818)) b!1848100))

(assert (= (and b!1848100 (not res!829821)) b!1848102))

(assert (= (and b!1848102 (not res!829823)) b!1848106))

(assert (= (and b!1848106 (not res!829820)) b!1848099))

(assert (= (and b!1848099 (not res!829824)) b!1848093))

(get-info :version)

(assert (= (and start!184442 ((_ is ElementMatch!5009) r!26091)) b!1848105))

(assert (= (and start!184442 ((_ is Concat!8787) r!26091)) b!1848097))

(assert (= (and start!184442 ((_ is Star!5009) r!26091)) b!1848094))

(assert (= (and start!184442 ((_ is Union!5009) r!26091)) b!1848098))

(assert (= (and start!184442 ((_ is Cons!20418) prefix!1614)) b!1848095))

(declare-fun m!2275973 () Bool)

(assert (=> start!184442 m!2275973))

(declare-fun m!2275975 () Bool)

(assert (=> b!1848103 m!2275975))

(declare-fun m!2275977 () Bool)

(assert (=> b!1848096 m!2275977))

(declare-fun m!2275979 () Bool)

(assert (=> b!1848099 m!2275979))

(declare-fun m!2275981 () Bool)

(assert (=> b!1848093 m!2275981))

(declare-fun m!2275983 () Bool)

(assert (=> b!1848102 m!2275983))

(declare-fun m!2275985 () Bool)

(assert (=> b!1848100 m!2275985))

(declare-fun m!2275987 () Bool)

(assert (=> b!1848100 m!2275987))

(declare-fun m!2275989 () Bool)

(assert (=> b!1848106 m!2275989))

(assert (=> b!1848106 m!2275989))

(declare-fun m!2275991 () Bool)

(assert (=> b!1848106 m!2275991))

(declare-fun m!2275993 () Bool)

(assert (=> b!1848104 m!2275993))

(assert (=> b!1848104 m!2275993))

(declare-fun m!2275995 () Bool)

(assert (=> b!1848104 m!2275995))

(declare-fun m!2275997 () Bool)

(assert (=> b!1848101 m!2275997))

(assert (=> b!1848101 m!2275997))

(declare-fun m!2275999 () Bool)

(assert (=> b!1848101 m!2275999))

(check-sat tp_is_empty!8467 (not b!1848104) (not b!1848093) (not b!1848095) (not b!1848103) (not b!1848094) (not b!1848098) (not b!1848100) (not b!1848099) (not b!1848101) (not b!1848102) (not b!1848097) (not start!184442) (not b!1848106) (not b!1848096))
(check-sat)
