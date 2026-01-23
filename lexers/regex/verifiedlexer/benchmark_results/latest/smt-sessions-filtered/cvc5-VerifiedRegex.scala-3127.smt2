; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184436 () Bool)

(assert start!184436)

(declare-fun b!1847949 () Bool)

(assert (=> b!1847949 true))

(assert (=> b!1847949 true))

(declare-fun b!1847941 () Bool)

(declare-fun res!829724 () Bool)

(declare-fun e!1180846 () Bool)

(assert (=> b!1847941 (=> (not res!829724) (not e!1180846))))

(declare-datatypes ((C!10162 0))(
  ( (C!10163 (val!5807 Int)) )
))
(declare-datatypes ((Regex!5006 0))(
  ( (ElementMatch!5006 (c!301699 C!10162)) (Concat!8784 (regOne!10524 Regex!5006) (regTwo!10524 Regex!5006)) (EmptyExpr!5006) (Star!5006 (reg!5335 Regex!5006)) (EmptyLang!5006) (Union!5006 (regOne!10525 Regex!5006) (regTwo!10525 Regex!5006)) )
))
(declare-fun r!26091 () Regex!5006)

(declare-fun c!13459 () C!10162)

(declare-datatypes ((List!20487 0))(
  ( (Nil!20415) (Cons!20415 (h!25816 C!10162) (t!172260 List!20487)) )
))
(declare-fun contains!3771 (List!20487 C!10162) Bool)

(declare-fun usedCharacters!311 (Regex!5006) List!20487)

(assert (=> b!1847941 (= res!829724 (not (contains!3771 (usedCharacters!311 r!26091) c!13459)))))

(declare-fun b!1847942 () Bool)

(declare-fun e!1180847 () Bool)

(declare-fun tp_is_empty!8461 () Bool)

(declare-fun tp!522514 () Bool)

(assert (=> b!1847942 (= e!1180847 (and tp_is_empty!8461 tp!522514))))

(declare-fun b!1847943 () Bool)

(declare-fun e!1180844 () Bool)

(declare-fun tp!522512 () Bool)

(assert (=> b!1847943 (= e!1180844 tp!522512)))

(declare-fun b!1847944 () Bool)

(declare-fun res!829727 () Bool)

(declare-fun e!1180845 () Bool)

(assert (=> b!1847944 (=> res!829727 e!1180845)))

(declare-fun lt!715184 () List!20487)

(declare-fun prefix!1614 () List!20487)

(declare-fun ++!5533 (List!20487 List!20487) List!20487)

(declare-fun getSuffix!989 (List!20487 List!20487) List!20487)

(assert (=> b!1847944 (= res!829727 (not (= lt!715184 (++!5533 prefix!1614 (getSuffix!989 lt!715184 prefix!1614)))))))

(declare-fun b!1847945 () Bool)

(assert (=> b!1847945 (= e!1180844 tp_is_empty!8461)))

(declare-fun res!829728 () Bool)

(assert (=> start!184436 (=> (not res!829728) (not e!1180846))))

(declare-fun validRegex!2050 (Regex!5006) Bool)

(assert (=> start!184436 (= res!829728 (validRegex!2050 r!26091))))

(assert (=> start!184436 e!1180846))

(assert (=> start!184436 e!1180844))

(assert (=> start!184436 e!1180847))

(assert (=> start!184436 tp_is_empty!8461))

(declare-fun b!1847946 () Bool)

(declare-fun tp!522516 () Bool)

(declare-fun tp!522515 () Bool)

(assert (=> b!1847946 (= e!1180844 (and tp!522516 tp!522515))))

(declare-fun b!1847947 () Bool)

(declare-fun e!1180848 () Bool)

(assert (=> b!1847947 (= e!1180848 e!1180845)))

(declare-fun res!829721 () Bool)

(assert (=> b!1847947 (=> res!829721 e!1180845)))

(declare-fun matchR!2445 (Regex!5006 List!20487) Bool)

(assert (=> b!1847947 (= res!829721 (not (matchR!2445 r!26091 lt!715184)))))

(declare-fun lambda!73037 () Int)

(declare-fun pickWitness!259 (Int) List!20487)

(assert (=> b!1847947 (= lt!715184 (pickWitness!259 lambda!73037))))

(declare-fun b!1847948 () Bool)

(declare-fun res!829723 () Bool)

(assert (=> b!1847948 (=> (not res!829723) (not e!1180846))))

(assert (=> b!1847948 (= res!829723 (contains!3771 prefix!1614 c!13459))))

(assert (=> b!1847949 (= e!1180846 (not e!1180848))))

(declare-fun res!829725 () Bool)

(assert (=> b!1847949 (=> res!829725 e!1180848)))

(declare-fun Exists!960 (Int) Bool)

(assert (=> b!1847949 (= res!829725 (not (Exists!960 lambda!73037)))))

(assert (=> b!1847949 (Exists!960 lambda!73037)))

(declare-datatypes ((Unit!35087 0))(
  ( (Unit!35088) )
))
(declare-fun lt!715183 () Unit!35087)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!278 (Regex!5006 List!20487) Unit!35087)

(assert (=> b!1847949 (= lt!715183 (lemmaPrefixMatchThenExistsStringThatMatches!278 r!26091 prefix!1614))))

(declare-fun b!1847950 () Bool)

(declare-fun res!829726 () Bool)

(assert (=> b!1847950 (=> res!829726 e!1180845)))

(declare-fun isPrefix!1882 (List!20487 List!20487) Bool)

(assert (=> b!1847950 (= res!829726 (not (isPrefix!1882 prefix!1614 lt!715184)))))

(declare-fun b!1847951 () Bool)

(declare-fun tp!522513 () Bool)

(declare-fun tp!522517 () Bool)

(assert (=> b!1847951 (= e!1180844 (and tp!522513 tp!522517))))

(declare-fun b!1847952 () Bool)

(assert (=> b!1847952 (= e!1180845 true)))

(declare-fun lt!715185 () Bool)

(assert (=> b!1847952 (= lt!715185 (contains!3771 lt!715184 c!13459))))

(declare-fun b!1847953 () Bool)

(declare-fun res!829722 () Bool)

(assert (=> b!1847953 (=> (not res!829722) (not e!1180846))))

(declare-fun prefixMatch!783 (Regex!5006 List!20487) Bool)

(assert (=> b!1847953 (= res!829722 (prefixMatch!783 r!26091 prefix!1614))))

(assert (= (and start!184436 res!829728) b!1847948))

(assert (= (and b!1847948 res!829723) b!1847941))

(assert (= (and b!1847941 res!829724) b!1847953))

(assert (= (and b!1847953 res!829722) b!1847949))

(assert (= (and b!1847949 (not res!829725)) b!1847947))

(assert (= (and b!1847947 (not res!829721)) b!1847950))

(assert (= (and b!1847950 (not res!829726)) b!1847944))

(assert (= (and b!1847944 (not res!829727)) b!1847952))

(assert (= (and start!184436 (is-ElementMatch!5006 r!26091)) b!1847945))

(assert (= (and start!184436 (is-Concat!8784 r!26091)) b!1847951))

(assert (= (and start!184436 (is-Star!5006 r!26091)) b!1847943))

(assert (= (and start!184436 (is-Union!5006 r!26091)) b!1847946))

(assert (= (and start!184436 (is-Cons!20415 prefix!1614)) b!1847942))

(declare-fun m!2275893 () Bool)

(assert (=> b!1847952 m!2275893))

(declare-fun m!2275895 () Bool)

(assert (=> b!1847944 m!2275895))

(assert (=> b!1847944 m!2275895))

(declare-fun m!2275897 () Bool)

(assert (=> b!1847944 m!2275897))

(declare-fun m!2275899 () Bool)

(assert (=> b!1847948 m!2275899))

(declare-fun m!2275901 () Bool)

(assert (=> b!1847941 m!2275901))

(assert (=> b!1847941 m!2275901))

(declare-fun m!2275903 () Bool)

(assert (=> b!1847941 m!2275903))

(declare-fun m!2275905 () Bool)

(assert (=> b!1847950 m!2275905))

(declare-fun m!2275907 () Bool)

(assert (=> b!1847949 m!2275907))

(assert (=> b!1847949 m!2275907))

(declare-fun m!2275909 () Bool)

(assert (=> b!1847949 m!2275909))

(declare-fun m!2275911 () Bool)

(assert (=> start!184436 m!2275911))

(declare-fun m!2275913 () Bool)

(assert (=> b!1847953 m!2275913))

(declare-fun m!2275915 () Bool)

(assert (=> b!1847947 m!2275915))

(declare-fun m!2275917 () Bool)

(assert (=> b!1847947 m!2275917))

(push 1)

(assert (not start!184436))

(assert (not b!1847950))

(assert (not b!1847946))

(assert (not b!1847944))

(assert (not b!1847947))

(assert (not b!1847951))

(assert (not b!1847953))

(assert (not b!1847942))

(assert (not b!1847949))

(assert (not b!1847952))

(assert (not b!1847941))

(assert (not b!1847943))

(assert (not b!1847948))

(assert tp_is_empty!8461)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

