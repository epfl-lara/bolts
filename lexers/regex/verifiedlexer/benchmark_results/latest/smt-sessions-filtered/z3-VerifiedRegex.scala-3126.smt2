; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184434 () Bool)

(assert start!184434)

(declare-fun b!1847898 () Bool)

(assert (=> b!1847898 true))

(assert (=> b!1847898 true))

(declare-fun b!1847893 () Bool)

(declare-fun e!1180823 () Bool)

(declare-fun tp_is_empty!8459 () Bool)

(assert (=> b!1847893 (= e!1180823 tp_is_empty!8459)))

(declare-fun b!1847894 () Bool)

(declare-fun tp!522498 () Bool)

(declare-fun tp!522496 () Bool)

(assert (=> b!1847894 (= e!1180823 (and tp!522498 tp!522496))))

(declare-fun b!1847895 () Bool)

(declare-fun e!1180827 () Bool)

(assert (=> b!1847895 (= e!1180827 true)))

(declare-fun lt!715173 () Int)

(declare-datatypes ((C!10160 0))(
  ( (C!10161 (val!5806 Int)) )
))
(declare-datatypes ((List!20486 0))(
  ( (Nil!20414) (Cons!20414 (h!25815 C!10160) (t!172259 List!20486)) )
))
(declare-fun prefix!1614 () List!20486)

(declare-fun size!16140 (List!20486) Int)

(assert (=> b!1847895 (= lt!715173 (size!16140 prefix!1614))))

(declare-fun lt!715176 () Int)

(declare-fun lt!715174 () List!20486)

(assert (=> b!1847895 (= lt!715176 (size!16140 lt!715174))))

(declare-fun b!1847896 () Bool)

(declare-fun e!1180826 () Bool)

(assert (=> b!1847896 (= e!1180826 e!1180827)))

(declare-fun res!829696 () Bool)

(assert (=> b!1847896 (=> res!829696 e!1180827)))

(declare-datatypes ((Regex!5005 0))(
  ( (ElementMatch!5005 (c!301698 C!10160)) (Concat!8783 (regOne!10522 Regex!5005) (regTwo!10522 Regex!5005)) (EmptyExpr!5005) (Star!5005 (reg!5334 Regex!5005)) (EmptyLang!5005) (Union!5005 (regOne!10523 Regex!5005) (regTwo!10523 Regex!5005)) )
))
(declare-fun r!26091 () Regex!5005)

(declare-fun matchR!2444 (Regex!5005 List!20486) Bool)

(assert (=> b!1847896 (= res!829696 (not (matchR!2444 r!26091 lt!715174)))))

(declare-fun lambda!73030 () Int)

(declare-fun pickWitness!258 (Int) List!20486)

(assert (=> b!1847896 (= lt!715174 (pickWitness!258 lambda!73030))))

(declare-fun b!1847897 () Bool)

(declare-fun tp!522494 () Bool)

(assert (=> b!1847897 (= e!1180823 tp!522494)))

(declare-fun e!1180825 () Bool)

(assert (=> b!1847898 (= e!1180825 (not e!1180826))))

(declare-fun res!829698 () Bool)

(assert (=> b!1847898 (=> res!829698 e!1180826)))

(declare-fun Exists!959 (Int) Bool)

(assert (=> b!1847898 (= res!829698 (not (Exists!959 lambda!73030)))))

(assert (=> b!1847898 (Exists!959 lambda!73030)))

(declare-datatypes ((Unit!35085 0))(
  ( (Unit!35086) )
))
(declare-fun lt!715175 () Unit!35085)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!277 (Regex!5005 List!20486) Unit!35085)

(assert (=> b!1847898 (= lt!715175 (lemmaPrefixMatchThenExistsStringThatMatches!277 r!26091 prefix!1614))))

(declare-fun b!1847899 () Bool)

(declare-fun tp!522497 () Bool)

(declare-fun tp!522499 () Bool)

(assert (=> b!1847899 (= e!1180823 (and tp!522497 tp!522499))))

(declare-fun b!1847900 () Bool)

(declare-fun res!829694 () Bool)

(assert (=> b!1847900 (=> res!829694 e!1180827)))

(declare-fun isPrefix!1881 (List!20486 List!20486) Bool)

(assert (=> b!1847900 (= res!829694 (not (isPrefix!1881 prefix!1614 lt!715174)))))

(declare-fun b!1847901 () Bool)

(declare-fun res!829693 () Bool)

(assert (=> b!1847901 (=> (not res!829693) (not e!1180825))))

(declare-fun prefixMatch!782 (Regex!5005 List!20486) Bool)

(assert (=> b!1847901 (= res!829693 (prefixMatch!782 r!26091 prefix!1614))))

(declare-fun res!829697 () Bool)

(assert (=> start!184434 (=> (not res!829697) (not e!1180825))))

(declare-fun validRegex!2049 (Regex!5005) Bool)

(assert (=> start!184434 (= res!829697 (validRegex!2049 r!26091))))

(assert (=> start!184434 e!1180825))

(assert (=> start!184434 e!1180823))

(declare-fun e!1180824 () Bool)

(assert (=> start!184434 e!1180824))

(assert (=> start!184434 tp_is_empty!8459))

(declare-fun b!1847902 () Bool)

(declare-fun res!829695 () Bool)

(assert (=> b!1847902 (=> (not res!829695) (not e!1180825))))

(declare-fun c!13459 () C!10160)

(declare-fun contains!3770 (List!20486 C!10160) Bool)

(declare-fun usedCharacters!310 (Regex!5005) List!20486)

(assert (=> b!1847902 (= res!829695 (not (contains!3770 (usedCharacters!310 r!26091) c!13459)))))

(declare-fun b!1847903 () Bool)

(declare-fun tp!522495 () Bool)

(assert (=> b!1847903 (= e!1180824 (and tp_is_empty!8459 tp!522495))))

(declare-fun b!1847904 () Bool)

(declare-fun res!829692 () Bool)

(assert (=> b!1847904 (=> (not res!829692) (not e!1180825))))

(assert (=> b!1847904 (= res!829692 (contains!3770 prefix!1614 c!13459))))

(assert (= (and start!184434 res!829697) b!1847904))

(assert (= (and b!1847904 res!829692) b!1847902))

(assert (= (and b!1847902 res!829695) b!1847901))

(assert (= (and b!1847901 res!829693) b!1847898))

(assert (= (and b!1847898 (not res!829698)) b!1847896))

(assert (= (and b!1847896 (not res!829696)) b!1847900))

(assert (= (and b!1847900 (not res!829694)) b!1847895))

(get-info :version)

(assert (= (and start!184434 ((_ is ElementMatch!5005) r!26091)) b!1847893))

(assert (= (and start!184434 ((_ is Concat!8783) r!26091)) b!1847899))

(assert (= (and start!184434 ((_ is Star!5005) r!26091)) b!1847897))

(assert (= (and start!184434 ((_ is Union!5005) r!26091)) b!1847894))

(assert (= (and start!184434 ((_ is Cons!20414) prefix!1614)) b!1847903))

(declare-fun m!2275869 () Bool)

(assert (=> b!1847898 m!2275869))

(assert (=> b!1847898 m!2275869))

(declare-fun m!2275871 () Bool)

(assert (=> b!1847898 m!2275871))

(declare-fun m!2275873 () Bool)

(assert (=> b!1847902 m!2275873))

(assert (=> b!1847902 m!2275873))

(declare-fun m!2275875 () Bool)

(assert (=> b!1847902 m!2275875))

(declare-fun m!2275877 () Bool)

(assert (=> start!184434 m!2275877))

(declare-fun m!2275879 () Bool)

(assert (=> b!1847904 m!2275879))

(declare-fun m!2275881 () Bool)

(assert (=> b!1847895 m!2275881))

(declare-fun m!2275883 () Bool)

(assert (=> b!1847895 m!2275883))

(declare-fun m!2275885 () Bool)

(assert (=> b!1847900 m!2275885))

(declare-fun m!2275887 () Bool)

(assert (=> b!1847901 m!2275887))

(declare-fun m!2275889 () Bool)

(assert (=> b!1847896 m!2275889))

(declare-fun m!2275891 () Bool)

(assert (=> b!1847896 m!2275891))

(check-sat (not b!1847902) tp_is_empty!8459 (not b!1847896) (not b!1847894) (not start!184434) (not b!1847895) (not b!1847898) (not b!1847900) (not b!1847903) (not b!1847897) (not b!1847901) (not b!1847899) (not b!1847904))
(check-sat)
