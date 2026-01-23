; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184444 () Bool)

(assert start!184444)

(declare-fun b!1848136 () Bool)

(assert (=> b!1848136 true))

(assert (=> b!1848136 true))

(declare-fun res!829839 () Bool)

(declare-fun e!1180924 () Bool)

(assert (=> start!184444 (=> (not res!829839) (not e!1180924))))

(declare-datatypes ((C!10170 0))(
  ( (C!10171 (val!5811 Int)) )
))
(declare-datatypes ((Regex!5010 0))(
  ( (ElementMatch!5010 (c!301703 C!10170)) (Concat!8788 (regOne!10532 Regex!5010) (regTwo!10532 Regex!5010)) (EmptyExpr!5010) (Star!5010 (reg!5339 Regex!5010)) (EmptyLang!5010) (Union!5010 (regOne!10533 Regex!5010) (regTwo!10533 Regex!5010)) )
))
(declare-fun r!26091 () Regex!5010)

(declare-fun validRegex!2054 (Regex!5010) Bool)

(assert (=> start!184444 (= res!829839 (validRegex!2054 r!26091))))

(assert (=> start!184444 e!1180924))

(declare-fun e!1180923 () Bool)

(assert (=> start!184444 e!1180923))

(declare-fun e!1180922 () Bool)

(assert (=> start!184444 e!1180922))

(declare-fun tp_is_empty!8469 () Bool)

(assert (=> start!184444 tp_is_empty!8469))

(declare-fun b!1848133 () Bool)

(declare-fun res!829840 () Bool)

(assert (=> b!1848133 (=> (not res!829840) (not e!1180924))))

(declare-datatypes ((List!20491 0))(
  ( (Nil!20419) (Cons!20419 (h!25820 C!10170) (t!172264 List!20491)) )
))
(declare-fun prefix!1614 () List!20491)

(declare-fun c!13459 () C!10170)

(declare-fun contains!3775 (List!20491 C!10170) Bool)

(assert (=> b!1848133 (= res!829840 (contains!3775 prefix!1614 c!13459))))

(declare-fun b!1848134 () Bool)

(declare-fun res!829837 () Bool)

(assert (=> b!1848134 (=> (not res!829837) (not e!1180924))))

(declare-fun prefixMatch!787 (Regex!5010 List!20491) Bool)

(assert (=> b!1848134 (= res!829837 (prefixMatch!787 r!26091 prefix!1614))))

(declare-fun b!1848135 () Bool)

(declare-fun tp!522586 () Bool)

(assert (=> b!1848135 (= e!1180923 tp!522586)))

(declare-fun lambda!73063 () Int)

(declare-fun Exists!964 (Int) Bool)

(assert (=> b!1848136 (= e!1180924 (not (Exists!964 lambda!73063)))))

(assert (=> b!1848136 (Exists!964 lambda!73063)))

(declare-datatypes ((Unit!35095 0))(
  ( (Unit!35096) )
))
(declare-fun lt!715215 () Unit!35095)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!282 (Regex!5010 List!20491) Unit!35095)

(assert (=> b!1848136 (= lt!715215 (lemmaPrefixMatchThenExistsStringThatMatches!282 r!26091 prefix!1614))))

(declare-fun b!1848137 () Bool)

(assert (=> b!1848137 (= e!1180923 tp_is_empty!8469)))

(declare-fun b!1848138 () Bool)

(declare-fun tp!522587 () Bool)

(assert (=> b!1848138 (= e!1180922 (and tp_is_empty!8469 tp!522587))))

(declare-fun b!1848139 () Bool)

(declare-fun res!829838 () Bool)

(assert (=> b!1848139 (=> (not res!829838) (not e!1180924))))

(declare-fun usedCharacters!315 (Regex!5010) List!20491)

(assert (=> b!1848139 (= res!829838 (not (contains!3775 (usedCharacters!315 r!26091) c!13459)))))

(declare-fun b!1848140 () Bool)

(declare-fun tp!522589 () Bool)

(declare-fun tp!522584 () Bool)

(assert (=> b!1848140 (= e!1180923 (and tp!522589 tp!522584))))

(declare-fun b!1848141 () Bool)

(declare-fun tp!522588 () Bool)

(declare-fun tp!522585 () Bool)

(assert (=> b!1848141 (= e!1180923 (and tp!522588 tp!522585))))

(assert (= (and start!184444 res!829839) b!1848133))

(assert (= (and b!1848133 res!829840) b!1848139))

(assert (= (and b!1848139 res!829838) b!1848134))

(assert (= (and b!1848134 res!829837) b!1848136))

(assert (= (and start!184444 (is-ElementMatch!5010 r!26091)) b!1848137))

(assert (= (and start!184444 (is-Concat!8788 r!26091)) b!1848141))

(assert (= (and start!184444 (is-Star!5010 r!26091)) b!1848135))

(assert (= (and start!184444 (is-Union!5010 r!26091)) b!1848140))

(assert (= (and start!184444 (is-Cons!20419 prefix!1614)) b!1848138))

(declare-fun m!2276001 () Bool)

(assert (=> start!184444 m!2276001))

(declare-fun m!2276003 () Bool)

(assert (=> b!1848134 m!2276003))

(declare-fun m!2276005 () Bool)

(assert (=> b!1848136 m!2276005))

(assert (=> b!1848136 m!2276005))

(declare-fun m!2276007 () Bool)

(assert (=> b!1848136 m!2276007))

(declare-fun m!2276009 () Bool)

(assert (=> b!1848133 m!2276009))

(declare-fun m!2276011 () Bool)

(assert (=> b!1848139 m!2276011))

(assert (=> b!1848139 m!2276011))

(declare-fun m!2276013 () Bool)

(assert (=> b!1848139 m!2276013))

(push 1)

(assert (not b!1848139))

(assert (not b!1848135))

(assert (not b!1848140))

(assert (not b!1848134))

(assert (not b!1848141))

(assert (not b!1848136))

(assert tp_is_empty!8469)

(assert (not b!1848138))

(assert (not start!184444))

(assert (not b!1848133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

