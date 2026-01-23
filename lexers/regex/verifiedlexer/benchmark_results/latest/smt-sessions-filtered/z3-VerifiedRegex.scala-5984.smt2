; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292952 () Bool)

(assert start!292952)

(declare-fun b!3072781 () Bool)

(declare-fun e!1922911 () Bool)

(declare-fun tp_is_empty!16601 () Bool)

(declare-fun tp!969121 () Bool)

(assert (=> b!3072781 (= e!1922911 (and tp_is_empty!16601 tp!969121))))

(declare-fun b!3072782 () Bool)

(declare-fun e!1922906 () Bool)

(declare-fun e!1922908 () Bool)

(assert (=> b!3072782 (= e!1922906 e!1922908)))

(declare-fun res!1261056 () Bool)

(assert (=> b!3072782 (=> res!1261056 e!1922908)))

(declare-datatypes ((C!19224 0))(
  ( (C!19225 (val!11648 Int)) )
))
(declare-datatypes ((Regex!9519 0))(
  ( (ElementMatch!9519 (c!511015 C!19224)) (Concat!14840 (regOne!19550 Regex!9519) (regTwo!19550 Regex!9519)) (EmptyExpr!9519) (Star!9519 (reg!9848 Regex!9519)) (EmptyLang!9519) (Union!9519 (regOne!19551 Regex!9519) (regTwo!19551 Regex!9519)) )
))
(declare-fun lt!1051848 () Regex!9519)

(declare-fun isEmptyLang!570 (Regex!9519) Bool)

(assert (=> b!3072782 (= res!1261056 (isEmptyLang!570 lt!1051848))))

(declare-fun lt!1051853 () Regex!9519)

(declare-fun r!17423 () Regex!9519)

(declare-fun simplify!474 (Regex!9519) Regex!9519)

(assert (=> b!3072782 (= lt!1051853 (simplify!474 (regTwo!19550 r!17423)))))

(assert (=> b!3072782 (= lt!1051848 (simplify!474 (regOne!19550 r!17423)))))

(declare-fun res!1261063 () Bool)

(declare-fun e!1922907 () Bool)

(assert (=> start!292952 (=> (not res!1261063) (not e!1922907))))

(declare-fun validRegex!4252 (Regex!9519) Bool)

(assert (=> start!292952 (= res!1261063 (validRegex!4252 r!17423))))

(assert (=> start!292952 e!1922907))

(declare-fun e!1922910 () Bool)

(assert (=> start!292952 e!1922910))

(assert (=> start!292952 e!1922911))

(declare-fun b!3072783 () Bool)

(declare-fun tp!969116 () Bool)

(declare-fun tp!969117 () Bool)

(assert (=> b!3072783 (= e!1922910 (and tp!969116 tp!969117))))

(declare-fun b!3072784 () Bool)

(declare-fun e!1922909 () Bool)

(declare-datatypes ((List!35384 0))(
  ( (Nil!35260) (Cons!35260 (h!40680 C!19224) (t!234449 List!35384)) )
))
(declare-fun s!11993 () List!35384)

(declare-fun ++!8470 (List!35384 List!35384) List!35384)

(assert (=> b!3072784 (= e!1922909 (= (++!8470 Nil!35260 s!11993) s!11993))))

(declare-fun b!3072785 () Bool)

(declare-fun res!1261058 () Bool)

(assert (=> b!3072785 (=> res!1261058 e!1922908)))

(assert (=> b!3072785 (= res!1261058 (isEmptyLang!570 lt!1051853))))

(declare-fun b!3072786 () Bool)

(declare-fun res!1261059 () Bool)

(assert (=> b!3072786 (=> res!1261059 e!1922908)))

(declare-fun isEmptyExpr!576 (Regex!9519) Bool)

(assert (=> b!3072786 (= res!1261059 (not (isEmptyExpr!576 lt!1051853)))))

(declare-fun b!3072787 () Bool)

(declare-fun res!1261053 () Bool)

(assert (=> b!3072787 (=> res!1261053 e!1922909)))

(assert (=> b!3072787 (= res!1261053 (not (validRegex!4252 (regOne!19550 r!17423))))))

(declare-fun b!3072788 () Bool)

(assert (=> b!3072788 (= e!1922910 tp_is_empty!16601)))

(declare-fun b!3072789 () Bool)

(declare-fun tp!969120 () Bool)

(assert (=> b!3072789 (= e!1922910 tp!969120)))

(declare-fun b!3072790 () Bool)

(declare-fun res!1261064 () Bool)

(assert (=> b!3072790 (=> res!1261064 e!1922909)))

(declare-fun isPrefix!2766 (List!35384 List!35384) Bool)

(assert (=> b!3072790 (= res!1261064 (not (isPrefix!2766 Nil!35260 s!11993)))))

(declare-fun b!3072791 () Bool)

(declare-fun res!1261062 () Bool)

(assert (=> b!3072791 (=> res!1261062 e!1922908)))

(assert (=> b!3072791 (= res!1261062 (isEmptyExpr!576 lt!1051848))))

(declare-fun b!3072792 () Bool)

(declare-fun tp!969119 () Bool)

(declare-fun tp!969118 () Bool)

(assert (=> b!3072792 (= e!1922910 (and tp!969119 tp!969118))))

(declare-fun b!3072793 () Bool)

(declare-fun res!1261060 () Bool)

(assert (=> b!3072793 (=> res!1261060 e!1922909)))

(assert (=> b!3072793 (= res!1261060 (not (= (++!8470 s!11993 Nil!35260) s!11993)))))

(declare-fun b!3072794 () Bool)

(declare-fun res!1261061 () Bool)

(assert (=> b!3072794 (=> res!1261061 e!1922906)))

(declare-fun isEmpty!19585 (List!35384) Bool)

(assert (=> b!3072794 (= res!1261061 (isEmpty!19585 s!11993))))

(declare-fun b!3072795 () Bool)

(assert (=> b!3072795 (= e!1922908 e!1922909)))

(declare-fun res!1261055 () Bool)

(assert (=> b!3072795 (=> res!1261055 e!1922909)))

(declare-fun lt!1051854 () Bool)

(assert (=> b!3072795 (= res!1261055 (not lt!1051854))))

(declare-fun matchR!4401 (Regex!9519 List!35384) Bool)

(assert (=> b!3072795 (= (matchR!4401 (regTwo!19550 r!17423) Nil!35260) (matchR!4401 lt!1051853 Nil!35260))))

(declare-datatypes ((Unit!49477 0))(
  ( (Unit!49478) )
))
(declare-fun lt!1051851 () Unit!49477)

(declare-fun lemmaSimplifySound!300 (Regex!9519 List!35384) Unit!49477)

(assert (=> b!3072795 (= lt!1051851 (lemmaSimplifySound!300 (regTwo!19550 r!17423) Nil!35260))))

(assert (=> b!3072795 (= lt!1051854 (matchR!4401 lt!1051848 s!11993))))

(assert (=> b!3072795 (= lt!1051854 (matchR!4401 (regOne!19550 r!17423) s!11993))))

(declare-fun lt!1051850 () Unit!49477)

(assert (=> b!3072795 (= lt!1051850 (lemmaSimplifySound!300 (regOne!19550 r!17423) s!11993))))

(declare-fun b!3072796 () Bool)

(declare-fun res!1261057 () Bool)

(assert (=> b!3072796 (=> res!1261057 e!1922909)))

(assert (=> b!3072796 (= res!1261057 (not (validRegex!4252 (regTwo!19550 r!17423))))))

(declare-fun b!3072797 () Bool)

(assert (=> b!3072797 (= e!1922907 (not e!1922906))))

(declare-fun res!1261054 () Bool)

(assert (=> b!3072797 (=> res!1261054 e!1922906)))

(declare-fun lt!1051849 () Bool)

(get-info :version)

(assert (=> b!3072797 (= res!1261054 (or lt!1051849 (not ((_ is Concat!14840) r!17423))))))

(declare-fun matchRSpec!1656 (Regex!9519 List!35384) Bool)

(assert (=> b!3072797 (= lt!1051849 (matchRSpec!1656 r!17423 s!11993))))

(assert (=> b!3072797 (= lt!1051849 (matchR!4401 r!17423 s!11993))))

(declare-fun lt!1051852 () Unit!49477)

(declare-fun mainMatchTheorem!1656 (Regex!9519 List!35384) Unit!49477)

(assert (=> b!3072797 (= lt!1051852 (mainMatchTheorem!1656 r!17423 s!11993))))

(assert (= (and start!292952 res!1261063) b!3072797))

(assert (= (and b!3072797 (not res!1261054)) b!3072794))

(assert (= (and b!3072794 (not res!1261061)) b!3072782))

(assert (= (and b!3072782 (not res!1261056)) b!3072785))

(assert (= (and b!3072785 (not res!1261058)) b!3072791))

(assert (= (and b!3072791 (not res!1261062)) b!3072786))

(assert (= (and b!3072786 (not res!1261059)) b!3072795))

(assert (= (and b!3072795 (not res!1261055)) b!3072787))

(assert (= (and b!3072787 (not res!1261053)) b!3072796))

(assert (= (and b!3072796 (not res!1261057)) b!3072793))

(assert (= (and b!3072793 (not res!1261060)) b!3072790))

(assert (= (and b!3072790 (not res!1261064)) b!3072784))

(assert (= (and start!292952 ((_ is ElementMatch!9519) r!17423)) b!3072788))

(assert (= (and start!292952 ((_ is Concat!14840) r!17423)) b!3072792))

(assert (= (and start!292952 ((_ is Star!9519) r!17423)) b!3072789))

(assert (= (and start!292952 ((_ is Union!9519) r!17423)) b!3072783))

(assert (= (and start!292952 ((_ is Cons!35260) s!11993)) b!3072781))

(declare-fun m!3386361 () Bool)

(assert (=> b!3072795 m!3386361))

(declare-fun m!3386363 () Bool)

(assert (=> b!3072795 m!3386363))

(declare-fun m!3386365 () Bool)

(assert (=> b!3072795 m!3386365))

(declare-fun m!3386367 () Bool)

(assert (=> b!3072795 m!3386367))

(declare-fun m!3386369 () Bool)

(assert (=> b!3072795 m!3386369))

(declare-fun m!3386371 () Bool)

(assert (=> b!3072795 m!3386371))

(declare-fun m!3386373 () Bool)

(assert (=> b!3072786 m!3386373))

(declare-fun m!3386375 () Bool)

(assert (=> b!3072785 m!3386375))

(declare-fun m!3386377 () Bool)

(assert (=> b!3072796 m!3386377))

(declare-fun m!3386379 () Bool)

(assert (=> b!3072787 m!3386379))

(declare-fun m!3386381 () Bool)

(assert (=> b!3072797 m!3386381))

(declare-fun m!3386383 () Bool)

(assert (=> b!3072797 m!3386383))

(declare-fun m!3386385 () Bool)

(assert (=> b!3072797 m!3386385))

(declare-fun m!3386387 () Bool)

(assert (=> b!3072782 m!3386387))

(declare-fun m!3386389 () Bool)

(assert (=> b!3072782 m!3386389))

(declare-fun m!3386391 () Bool)

(assert (=> b!3072782 m!3386391))

(declare-fun m!3386393 () Bool)

(assert (=> b!3072791 m!3386393))

(declare-fun m!3386395 () Bool)

(assert (=> b!3072790 m!3386395))

(declare-fun m!3386397 () Bool)

(assert (=> b!3072784 m!3386397))

(declare-fun m!3386399 () Bool)

(assert (=> b!3072794 m!3386399))

(declare-fun m!3386401 () Bool)

(assert (=> start!292952 m!3386401))

(declare-fun m!3386403 () Bool)

(assert (=> b!3072793 m!3386403))

(check-sat (not b!3072784) (not b!3072796) (not b!3072781) (not b!3072790) (not b!3072786) (not b!3072789) (not start!292952) (not b!3072795) (not b!3072794) (not b!3072791) (not b!3072787) (not b!3072792) (not b!3072793) (not b!3072785) (not b!3072783) (not b!3072782) (not b!3072797) tp_is_empty!16601)
(check-sat)
(get-model)

(declare-fun b!3072816 () Bool)

(declare-fun e!1922930 () Bool)

(declare-fun e!1922932 () Bool)

(assert (=> b!3072816 (= e!1922930 e!1922932)))

(declare-fun res!1261076 () Bool)

(assert (=> b!3072816 (=> (not res!1261076) (not e!1922932))))

(declare-fun call!213527 () Bool)

(assert (=> b!3072816 (= res!1261076 call!213527)))

(declare-fun b!3072817 () Bool)

(declare-fun e!1922931 () Bool)

(declare-fun call!213526 () Bool)

(assert (=> b!3072817 (= e!1922931 call!213526)))

(declare-fun c!511021 () Bool)

(declare-fun bm!213520 () Bool)

(declare-fun c!511020 () Bool)

(assert (=> bm!213520 (= call!213526 (validRegex!4252 (ite c!511021 (reg!9848 (regTwo!19550 r!17423)) (ite c!511020 (regOne!19551 (regTwo!19550 r!17423)) (regTwo!19550 (regTwo!19550 r!17423))))))))

(declare-fun b!3072818 () Bool)

(declare-fun e!1922926 () Bool)

(declare-fun e!1922927 () Bool)

(assert (=> b!3072818 (= e!1922926 e!1922927)))

(assert (=> b!3072818 (= c!511020 ((_ is Union!9519) (regTwo!19550 r!17423)))))

(declare-fun b!3072819 () Bool)

(declare-fun call!213525 () Bool)

(assert (=> b!3072819 (= e!1922932 call!213525)))

(declare-fun bm!213521 () Bool)

(assert (=> bm!213521 (= call!213527 (validRegex!4252 (ite c!511020 (regTwo!19551 (regTwo!19550 r!17423)) (regOne!19550 (regTwo!19550 r!17423)))))))

(declare-fun bm!213522 () Bool)

(assert (=> bm!213522 (= call!213525 call!213526)))

(declare-fun b!3072820 () Bool)

(assert (=> b!3072820 (= e!1922926 e!1922931)))

(declare-fun res!1261075 () Bool)

(declare-fun nullable!3165 (Regex!9519) Bool)

(assert (=> b!3072820 (= res!1261075 (not (nullable!3165 (reg!9848 (regTwo!19550 r!17423)))))))

(assert (=> b!3072820 (=> (not res!1261075) (not e!1922931))))

(declare-fun d!856427 () Bool)

(declare-fun res!1261078 () Bool)

(declare-fun e!1922929 () Bool)

(assert (=> d!856427 (=> res!1261078 e!1922929)))

(assert (=> d!856427 (= res!1261078 ((_ is ElementMatch!9519) (regTwo!19550 r!17423)))))

(assert (=> d!856427 (= (validRegex!4252 (regTwo!19550 r!17423)) e!1922929)))

(declare-fun b!3072821 () Bool)

(declare-fun e!1922928 () Bool)

(assert (=> b!3072821 (= e!1922928 call!213527)))

(declare-fun b!3072822 () Bool)

(declare-fun res!1261079 () Bool)

(assert (=> b!3072822 (=> (not res!1261079) (not e!1922928))))

(assert (=> b!3072822 (= res!1261079 call!213525)))

(assert (=> b!3072822 (= e!1922927 e!1922928)))

(declare-fun b!3072823 () Bool)

(assert (=> b!3072823 (= e!1922929 e!1922926)))

(assert (=> b!3072823 (= c!511021 ((_ is Star!9519) (regTwo!19550 r!17423)))))

(declare-fun b!3072824 () Bool)

(declare-fun res!1261077 () Bool)

(assert (=> b!3072824 (=> res!1261077 e!1922930)))

(assert (=> b!3072824 (= res!1261077 (not ((_ is Concat!14840) (regTwo!19550 r!17423))))))

(assert (=> b!3072824 (= e!1922927 e!1922930)))

(assert (= (and d!856427 (not res!1261078)) b!3072823))

(assert (= (and b!3072823 c!511021) b!3072820))

(assert (= (and b!3072823 (not c!511021)) b!3072818))

(assert (= (and b!3072820 res!1261075) b!3072817))

(assert (= (and b!3072818 c!511020) b!3072822))

(assert (= (and b!3072818 (not c!511020)) b!3072824))

(assert (= (and b!3072822 res!1261079) b!3072821))

(assert (= (and b!3072824 (not res!1261077)) b!3072816))

(assert (= (and b!3072816 res!1261076) b!3072819))

(assert (= (or b!3072822 b!3072819) bm!213522))

(assert (= (or b!3072821 b!3072816) bm!213521))

(assert (= (or b!3072817 bm!213522) bm!213520))

(declare-fun m!3386405 () Bool)

(assert (=> bm!213520 m!3386405))

(declare-fun m!3386407 () Bool)

(assert (=> bm!213521 m!3386407))

(declare-fun m!3386409 () Bool)

(assert (=> b!3072820 m!3386409))

(assert (=> b!3072796 d!856427))

(declare-fun d!856433 () Bool)

(assert (=> d!856433 (= (isEmptyExpr!576 lt!1051853) ((_ is EmptyExpr!9519) lt!1051853))))

(assert (=> b!3072786 d!856433))

(declare-fun b!3073138 () Bool)

(assert (=> b!3073138 true))

(assert (=> b!3073138 true))

(declare-fun bs!532677 () Bool)

(declare-fun b!3073130 () Bool)

(assert (= bs!532677 (and b!3073130 b!3073138)))

(declare-fun lambda!114136 () Int)

(declare-fun lambda!114135 () Int)

(assert (=> bs!532677 (not (= lambda!114136 lambda!114135))))

(assert (=> b!3073130 true))

(assert (=> b!3073130 true))

(declare-fun b!3073129 () Bool)

(declare-fun e!1923104 () Bool)

(declare-fun e!1923108 () Bool)

(assert (=> b!3073129 (= e!1923104 e!1923108)))

(declare-fun res!1261200 () Bool)

(assert (=> b!3073129 (= res!1261200 (not ((_ is EmptyLang!9519) r!17423)))))

(assert (=> b!3073129 (=> (not res!1261200) (not e!1923108))))

(declare-fun d!856435 () Bool)

(declare-fun c!511113 () Bool)

(assert (=> d!856435 (= c!511113 ((_ is EmptyExpr!9519) r!17423))))

(assert (=> d!856435 (= (matchRSpec!1656 r!17423 s!11993) e!1923104)))

(declare-fun e!1923105 () Bool)

(declare-fun call!213583 () Bool)

(assert (=> b!3073130 (= e!1923105 call!213583)))

(declare-fun b!3073131 () Bool)

(declare-fun e!1923106 () Bool)

(assert (=> b!3073131 (= e!1923106 (matchRSpec!1656 (regTwo!19551 r!17423) s!11993))))

(declare-fun b!3073132 () Bool)

(declare-fun c!511116 () Bool)

(assert (=> b!3073132 (= c!511116 ((_ is Union!9519) r!17423))))

(declare-fun e!1923107 () Bool)

(declare-fun e!1923102 () Bool)

(assert (=> b!3073132 (= e!1923107 e!1923102)))

(declare-fun b!3073133 () Bool)

(assert (=> b!3073133 (= e!1923102 e!1923106)))

(declare-fun res!1261198 () Bool)

(assert (=> b!3073133 (= res!1261198 (matchRSpec!1656 (regOne!19551 r!17423) s!11993))))

(assert (=> b!3073133 (=> res!1261198 e!1923106)))

(declare-fun b!3073134 () Bool)

(assert (=> b!3073134 (= e!1923107 (= s!11993 (Cons!35260 (c!511015 r!17423) Nil!35260)))))

(declare-fun bm!213577 () Bool)

(declare-fun call!213582 () Bool)

(assert (=> bm!213577 (= call!213582 (isEmpty!19585 s!11993))))

(declare-fun b!3073135 () Bool)

(declare-fun c!511115 () Bool)

(assert (=> b!3073135 (= c!511115 ((_ is ElementMatch!9519) r!17423))))

(assert (=> b!3073135 (= e!1923108 e!1923107)))

(declare-fun b!3073136 () Bool)

(declare-fun res!1261199 () Bool)

(declare-fun e!1923103 () Bool)

(assert (=> b!3073136 (=> res!1261199 e!1923103)))

(assert (=> b!3073136 (= res!1261199 call!213582)))

(assert (=> b!3073136 (= e!1923105 e!1923103)))

(declare-fun b!3073137 () Bool)

(assert (=> b!3073137 (= e!1923104 call!213582)))

(declare-fun bm!213578 () Bool)

(declare-fun c!511114 () Bool)

(declare-fun Exists!1781 (Int) Bool)

(assert (=> bm!213578 (= call!213583 (Exists!1781 (ite c!511114 lambda!114135 lambda!114136)))))

(assert (=> b!3073138 (= e!1923103 call!213583)))

(declare-fun b!3073139 () Bool)

(assert (=> b!3073139 (= e!1923102 e!1923105)))

(assert (=> b!3073139 (= c!511114 ((_ is Star!9519) r!17423))))

(assert (= (and d!856435 c!511113) b!3073137))

(assert (= (and d!856435 (not c!511113)) b!3073129))

(assert (= (and b!3073129 res!1261200) b!3073135))

(assert (= (and b!3073135 c!511115) b!3073134))

(assert (= (and b!3073135 (not c!511115)) b!3073132))

(assert (= (and b!3073132 c!511116) b!3073133))

(assert (= (and b!3073132 (not c!511116)) b!3073139))

(assert (= (and b!3073133 (not res!1261198)) b!3073131))

(assert (= (and b!3073139 c!511114) b!3073136))

(assert (= (and b!3073139 (not c!511114)) b!3073130))

(assert (= (and b!3073136 (not res!1261199)) b!3073138))

(assert (= (or b!3073138 b!3073130) bm!213578))

(assert (= (or b!3073137 b!3073136) bm!213577))

(declare-fun m!3386511 () Bool)

(assert (=> b!3073131 m!3386511))

(declare-fun m!3386513 () Bool)

(assert (=> b!3073133 m!3386513))

(assert (=> bm!213577 m!3386399))

(declare-fun m!3386515 () Bool)

(assert (=> bm!213578 m!3386515))

(assert (=> b!3072797 d!856435))

(declare-fun b!3073205 () Bool)

(declare-fun res!1261241 () Bool)

(declare-fun e!1923144 () Bool)

(assert (=> b!3073205 (=> res!1261241 e!1923144)))

(assert (=> b!3073205 (= res!1261241 (not ((_ is ElementMatch!9519) r!17423)))))

(declare-fun e!1923149 () Bool)

(assert (=> b!3073205 (= e!1923149 e!1923144)))

(declare-fun bm!213584 () Bool)

(declare-fun call!213589 () Bool)

(assert (=> bm!213584 (= call!213589 (isEmpty!19585 s!11993))))

(declare-fun b!3073206 () Bool)

(declare-fun e!1923147 () Bool)

(declare-fun derivativeStep!2761 (Regex!9519 C!19224) Regex!9519)

(declare-fun head!6820 (List!35384) C!19224)

(declare-fun tail!5046 (List!35384) List!35384)

(assert (=> b!3073206 (= e!1923147 (matchR!4401 (derivativeStep!2761 r!17423 (head!6820 s!11993)) (tail!5046 s!11993)))))

(declare-fun b!3073207 () Bool)

(declare-fun lt!1051901 () Bool)

(assert (=> b!3073207 (= e!1923149 (not lt!1051901))))

(declare-fun b!3073208 () Bool)

(declare-fun e!1923146 () Bool)

(assert (=> b!3073208 (= e!1923146 (= (head!6820 s!11993) (c!511015 r!17423)))))

(declare-fun b!3073209 () Bool)

(declare-fun res!1261245 () Bool)

(assert (=> b!3073209 (=> (not res!1261245) (not e!1923146))))

(assert (=> b!3073209 (= res!1261245 (not call!213589))))

(declare-fun d!856465 () Bool)

(declare-fun e!1923145 () Bool)

(assert (=> d!856465 e!1923145))

(declare-fun c!511131 () Bool)

(assert (=> d!856465 (= c!511131 ((_ is EmptyExpr!9519) r!17423))))

(assert (=> d!856465 (= lt!1051901 e!1923147)))

(declare-fun c!511129 () Bool)

(assert (=> d!856465 (= c!511129 (isEmpty!19585 s!11993))))

(assert (=> d!856465 (validRegex!4252 r!17423)))

(assert (=> d!856465 (= (matchR!4401 r!17423 s!11993) lt!1051901)))

(declare-fun b!3073210 () Bool)

(assert (=> b!3073210 (= e!1923145 (= lt!1051901 call!213589))))

(declare-fun b!3073211 () Bool)

(declare-fun e!1923148 () Bool)

(assert (=> b!3073211 (= e!1923148 (not (= (head!6820 s!11993) (c!511015 r!17423))))))

(declare-fun b!3073212 () Bool)

(declare-fun res!1261243 () Bool)

(assert (=> b!3073212 (=> (not res!1261243) (not e!1923146))))

(assert (=> b!3073212 (= res!1261243 (isEmpty!19585 (tail!5046 s!11993)))))

(declare-fun b!3073213 () Bool)

(declare-fun e!1923150 () Bool)

(assert (=> b!3073213 (= e!1923144 e!1923150)))

(declare-fun res!1261242 () Bool)

(assert (=> b!3073213 (=> (not res!1261242) (not e!1923150))))

(assert (=> b!3073213 (= res!1261242 (not lt!1051901))))

(declare-fun b!3073214 () Bool)

(declare-fun res!1261240 () Bool)

(assert (=> b!3073214 (=> res!1261240 e!1923144)))

(assert (=> b!3073214 (= res!1261240 e!1923146)))

(declare-fun res!1261244 () Bool)

(assert (=> b!3073214 (=> (not res!1261244) (not e!1923146))))

(assert (=> b!3073214 (= res!1261244 lt!1051901)))

(declare-fun b!3073215 () Bool)

(declare-fun res!1261239 () Bool)

(assert (=> b!3073215 (=> res!1261239 e!1923148)))

(assert (=> b!3073215 (= res!1261239 (not (isEmpty!19585 (tail!5046 s!11993))))))

(declare-fun b!3073216 () Bool)

(assert (=> b!3073216 (= e!1923145 e!1923149)))

(declare-fun c!511130 () Bool)

(assert (=> b!3073216 (= c!511130 ((_ is EmptyLang!9519) r!17423))))

(declare-fun b!3073217 () Bool)

(assert (=> b!3073217 (= e!1923147 (nullable!3165 r!17423))))

(declare-fun b!3073218 () Bool)

(assert (=> b!3073218 (= e!1923150 e!1923148)))

(declare-fun res!1261238 () Bool)

(assert (=> b!3073218 (=> res!1261238 e!1923148)))

(assert (=> b!3073218 (= res!1261238 call!213589)))

(assert (= (and d!856465 c!511129) b!3073217))

(assert (= (and d!856465 (not c!511129)) b!3073206))

(assert (= (and d!856465 c!511131) b!3073210))

(assert (= (and d!856465 (not c!511131)) b!3073216))

(assert (= (and b!3073216 c!511130) b!3073207))

(assert (= (and b!3073216 (not c!511130)) b!3073205))

(assert (= (and b!3073205 (not res!1261241)) b!3073214))

(assert (= (and b!3073214 res!1261244) b!3073209))

(assert (= (and b!3073209 res!1261245) b!3073212))

(assert (= (and b!3073212 res!1261243) b!3073208))

(assert (= (and b!3073214 (not res!1261240)) b!3073213))

(assert (= (and b!3073213 res!1261242) b!3073218))

(assert (= (and b!3073218 (not res!1261238)) b!3073215))

(assert (= (and b!3073215 (not res!1261239)) b!3073211))

(assert (= (or b!3073210 b!3073209 b!3073218) bm!213584))

(declare-fun m!3386545 () Bool)

(assert (=> b!3073215 m!3386545))

(assert (=> b!3073215 m!3386545))

(declare-fun m!3386547 () Bool)

(assert (=> b!3073215 m!3386547))

(assert (=> bm!213584 m!3386399))

(declare-fun m!3386549 () Bool)

(assert (=> b!3073217 m!3386549))

(assert (=> d!856465 m!3386399))

(assert (=> d!856465 m!3386401))

(declare-fun m!3386551 () Bool)

(assert (=> b!3073208 m!3386551))

(assert (=> b!3073211 m!3386551))

(assert (=> b!3073212 m!3386545))

(assert (=> b!3073212 m!3386545))

(assert (=> b!3073212 m!3386547))

(assert (=> b!3073206 m!3386551))

(assert (=> b!3073206 m!3386551))

(declare-fun m!3386553 () Bool)

(assert (=> b!3073206 m!3386553))

(assert (=> b!3073206 m!3386545))

(assert (=> b!3073206 m!3386553))

(assert (=> b!3073206 m!3386545))

(declare-fun m!3386555 () Bool)

(assert (=> b!3073206 m!3386555))

(assert (=> b!3072797 d!856465))

(declare-fun d!856475 () Bool)

(assert (=> d!856475 (= (matchR!4401 r!17423 s!11993) (matchRSpec!1656 r!17423 s!11993))))

(declare-fun lt!1051905 () Unit!49477)

(declare-fun choose!18206 (Regex!9519 List!35384) Unit!49477)

(assert (=> d!856475 (= lt!1051905 (choose!18206 r!17423 s!11993))))

(assert (=> d!856475 (validRegex!4252 r!17423)))

(assert (=> d!856475 (= (mainMatchTheorem!1656 r!17423 s!11993) lt!1051905)))

(declare-fun bs!532679 () Bool)

(assert (= bs!532679 d!856475))

(assert (=> bs!532679 m!3386383))

(assert (=> bs!532679 m!3386381))

(declare-fun m!3386565 () Bool)

(assert (=> bs!532679 m!3386565))

(assert (=> bs!532679 m!3386401))

(assert (=> b!3072797 d!856475))

(declare-fun b!3073278 () Bool)

(declare-fun e!1923175 () Bool)

(declare-fun lt!1051908 () List!35384)

(assert (=> b!3073278 (= e!1923175 (or (not (= s!11993 Nil!35260)) (= lt!1051908 Nil!35260)))))

(declare-fun b!3073276 () Bool)

(declare-fun e!1923176 () List!35384)

(assert (=> b!3073276 (= e!1923176 (Cons!35260 (h!40680 Nil!35260) (++!8470 (t!234449 Nil!35260) s!11993)))))

(declare-fun b!3073277 () Bool)

(declare-fun res!1261260 () Bool)

(assert (=> b!3073277 (=> (not res!1261260) (not e!1923175))))

(declare-fun size!26564 (List!35384) Int)

(assert (=> b!3073277 (= res!1261260 (= (size!26564 lt!1051908) (+ (size!26564 Nil!35260) (size!26564 s!11993))))))

(declare-fun d!856481 () Bool)

(assert (=> d!856481 e!1923175))

(declare-fun res!1261259 () Bool)

(assert (=> d!856481 (=> (not res!1261259) (not e!1923175))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4809 (List!35384) (InoxSet C!19224))

(assert (=> d!856481 (= res!1261259 (= (content!4809 lt!1051908) ((_ map or) (content!4809 Nil!35260) (content!4809 s!11993))))))

(assert (=> d!856481 (= lt!1051908 e!1923176)))

(declare-fun c!511136 () Bool)

(assert (=> d!856481 (= c!511136 ((_ is Nil!35260) Nil!35260))))

(assert (=> d!856481 (= (++!8470 Nil!35260 s!11993) lt!1051908)))

(declare-fun b!3073275 () Bool)

(assert (=> b!3073275 (= e!1923176 s!11993)))

(assert (= (and d!856481 c!511136) b!3073275))

(assert (= (and d!856481 (not c!511136)) b!3073276))

(assert (= (and d!856481 res!1261259) b!3073277))

(assert (= (and b!3073277 res!1261260) b!3073278))

(declare-fun m!3386567 () Bool)

(assert (=> b!3073276 m!3386567))

(declare-fun m!3386569 () Bool)

(assert (=> b!3073277 m!3386569))

(declare-fun m!3386571 () Bool)

(assert (=> b!3073277 m!3386571))

(declare-fun m!3386573 () Bool)

(assert (=> b!3073277 m!3386573))

(declare-fun m!3386575 () Bool)

(assert (=> d!856481 m!3386575))

(declare-fun m!3386577 () Bool)

(assert (=> d!856481 m!3386577))

(declare-fun m!3386579 () Bool)

(assert (=> d!856481 m!3386579))

(assert (=> b!3072784 d!856481))

(declare-fun d!856483 () Bool)

(assert (=> d!856483 (= (matchR!4401 (regTwo!19550 r!17423) Nil!35260) (matchR!4401 (simplify!474 (regTwo!19550 r!17423)) Nil!35260))))

(declare-fun lt!1051911 () Unit!49477)

(declare-fun choose!18207 (Regex!9519 List!35384) Unit!49477)

(assert (=> d!856483 (= lt!1051911 (choose!18207 (regTwo!19550 r!17423) Nil!35260))))

(assert (=> d!856483 (validRegex!4252 (regTwo!19550 r!17423))))

(assert (=> d!856483 (= (lemmaSimplifySound!300 (regTwo!19550 r!17423) Nil!35260) lt!1051911)))

(declare-fun bs!532680 () Bool)

(assert (= bs!532680 d!856483))

(assert (=> bs!532680 m!3386389))

(assert (=> bs!532680 m!3386365))

(declare-fun m!3386581 () Bool)

(assert (=> bs!532680 m!3386581))

(assert (=> bs!532680 m!3386377))

(assert (=> bs!532680 m!3386389))

(declare-fun m!3386583 () Bool)

(assert (=> bs!532680 m!3386583))

(assert (=> b!3072795 d!856483))

(declare-fun d!856485 () Bool)

(assert (=> d!856485 (= (matchR!4401 (regOne!19550 r!17423) s!11993) (matchR!4401 (simplify!474 (regOne!19550 r!17423)) s!11993))))

(declare-fun lt!1051912 () Unit!49477)

(assert (=> d!856485 (= lt!1051912 (choose!18207 (regOne!19550 r!17423) s!11993))))

(assert (=> d!856485 (validRegex!4252 (regOne!19550 r!17423))))

(assert (=> d!856485 (= (lemmaSimplifySound!300 (regOne!19550 r!17423) s!11993) lt!1051912)))

(declare-fun bs!532681 () Bool)

(assert (= bs!532681 d!856485))

(assert (=> bs!532681 m!3386391))

(assert (=> bs!532681 m!3386363))

(declare-fun m!3386585 () Bool)

(assert (=> bs!532681 m!3386585))

(assert (=> bs!532681 m!3386379))

(assert (=> bs!532681 m!3386391))

(declare-fun m!3386587 () Bool)

(assert (=> bs!532681 m!3386587))

(assert (=> b!3072795 d!856485))

(declare-fun b!3073279 () Bool)

(declare-fun res!1261264 () Bool)

(declare-fun e!1923177 () Bool)

(assert (=> b!3073279 (=> res!1261264 e!1923177)))

(assert (=> b!3073279 (= res!1261264 (not ((_ is ElementMatch!9519) (regOne!19550 r!17423))))))

(declare-fun e!1923182 () Bool)

(assert (=> b!3073279 (= e!1923182 e!1923177)))

(declare-fun bm!213588 () Bool)

(declare-fun call!213593 () Bool)

(assert (=> bm!213588 (= call!213593 (isEmpty!19585 s!11993))))

(declare-fun b!3073280 () Bool)

(declare-fun e!1923180 () Bool)

(assert (=> b!3073280 (= e!1923180 (matchR!4401 (derivativeStep!2761 (regOne!19550 r!17423) (head!6820 s!11993)) (tail!5046 s!11993)))))

(declare-fun b!3073281 () Bool)

(declare-fun lt!1051913 () Bool)

(assert (=> b!3073281 (= e!1923182 (not lt!1051913))))

(declare-fun b!3073282 () Bool)

(declare-fun e!1923179 () Bool)

(assert (=> b!3073282 (= e!1923179 (= (head!6820 s!11993) (c!511015 (regOne!19550 r!17423))))))

(declare-fun b!3073283 () Bool)

(declare-fun res!1261268 () Bool)

(assert (=> b!3073283 (=> (not res!1261268) (not e!1923179))))

(assert (=> b!3073283 (= res!1261268 (not call!213593))))

(declare-fun d!856487 () Bool)

(declare-fun e!1923178 () Bool)

(assert (=> d!856487 e!1923178))

(declare-fun c!511139 () Bool)

(assert (=> d!856487 (= c!511139 ((_ is EmptyExpr!9519) (regOne!19550 r!17423)))))

(assert (=> d!856487 (= lt!1051913 e!1923180)))

(declare-fun c!511137 () Bool)

(assert (=> d!856487 (= c!511137 (isEmpty!19585 s!11993))))

(assert (=> d!856487 (validRegex!4252 (regOne!19550 r!17423))))

(assert (=> d!856487 (= (matchR!4401 (regOne!19550 r!17423) s!11993) lt!1051913)))

(declare-fun b!3073284 () Bool)

(assert (=> b!3073284 (= e!1923178 (= lt!1051913 call!213593))))

(declare-fun b!3073285 () Bool)

(declare-fun e!1923181 () Bool)

(assert (=> b!3073285 (= e!1923181 (not (= (head!6820 s!11993) (c!511015 (regOne!19550 r!17423)))))))

(declare-fun b!3073286 () Bool)

(declare-fun res!1261266 () Bool)

(assert (=> b!3073286 (=> (not res!1261266) (not e!1923179))))

(assert (=> b!3073286 (= res!1261266 (isEmpty!19585 (tail!5046 s!11993)))))

(declare-fun b!3073287 () Bool)

(declare-fun e!1923183 () Bool)

(assert (=> b!3073287 (= e!1923177 e!1923183)))

(declare-fun res!1261265 () Bool)

(assert (=> b!3073287 (=> (not res!1261265) (not e!1923183))))

(assert (=> b!3073287 (= res!1261265 (not lt!1051913))))

(declare-fun b!3073288 () Bool)

(declare-fun res!1261263 () Bool)

(assert (=> b!3073288 (=> res!1261263 e!1923177)))

(assert (=> b!3073288 (= res!1261263 e!1923179)))

(declare-fun res!1261267 () Bool)

(assert (=> b!3073288 (=> (not res!1261267) (not e!1923179))))

(assert (=> b!3073288 (= res!1261267 lt!1051913)))

(declare-fun b!3073289 () Bool)

(declare-fun res!1261262 () Bool)

(assert (=> b!3073289 (=> res!1261262 e!1923181)))

(assert (=> b!3073289 (= res!1261262 (not (isEmpty!19585 (tail!5046 s!11993))))))

(declare-fun b!3073290 () Bool)

(assert (=> b!3073290 (= e!1923178 e!1923182)))

(declare-fun c!511138 () Bool)

(assert (=> b!3073290 (= c!511138 ((_ is EmptyLang!9519) (regOne!19550 r!17423)))))

(declare-fun b!3073291 () Bool)

(assert (=> b!3073291 (= e!1923180 (nullable!3165 (regOne!19550 r!17423)))))

(declare-fun b!3073292 () Bool)

(assert (=> b!3073292 (= e!1923183 e!1923181)))

(declare-fun res!1261261 () Bool)

(assert (=> b!3073292 (=> res!1261261 e!1923181)))

(assert (=> b!3073292 (= res!1261261 call!213593)))

(assert (= (and d!856487 c!511137) b!3073291))

(assert (= (and d!856487 (not c!511137)) b!3073280))

(assert (= (and d!856487 c!511139) b!3073284))

(assert (= (and d!856487 (not c!511139)) b!3073290))

(assert (= (and b!3073290 c!511138) b!3073281))

(assert (= (and b!3073290 (not c!511138)) b!3073279))

(assert (= (and b!3073279 (not res!1261264)) b!3073288))

(assert (= (and b!3073288 res!1261267) b!3073283))

(assert (= (and b!3073283 res!1261268) b!3073286))

(assert (= (and b!3073286 res!1261266) b!3073282))

(assert (= (and b!3073288 (not res!1261263)) b!3073287))

(assert (= (and b!3073287 res!1261265) b!3073292))

(assert (= (and b!3073292 (not res!1261261)) b!3073289))

(assert (= (and b!3073289 (not res!1261262)) b!3073285))

(assert (= (or b!3073284 b!3073283 b!3073292) bm!213588))

(assert (=> b!3073289 m!3386545))

(assert (=> b!3073289 m!3386545))

(assert (=> b!3073289 m!3386547))

(assert (=> bm!213588 m!3386399))

(declare-fun m!3386589 () Bool)

(assert (=> b!3073291 m!3386589))

(assert (=> d!856487 m!3386399))

(assert (=> d!856487 m!3386379))

(assert (=> b!3073282 m!3386551))

(assert (=> b!3073285 m!3386551))

(assert (=> b!3073286 m!3386545))

(assert (=> b!3073286 m!3386545))

(assert (=> b!3073286 m!3386547))

(assert (=> b!3073280 m!3386551))

(assert (=> b!3073280 m!3386551))

(declare-fun m!3386591 () Bool)

(assert (=> b!3073280 m!3386591))

(assert (=> b!3073280 m!3386545))

(assert (=> b!3073280 m!3386591))

(assert (=> b!3073280 m!3386545))

(declare-fun m!3386593 () Bool)

(assert (=> b!3073280 m!3386593))

(assert (=> b!3072795 d!856487))

(declare-fun b!3073293 () Bool)

(declare-fun res!1261272 () Bool)

(declare-fun e!1923184 () Bool)

(assert (=> b!3073293 (=> res!1261272 e!1923184)))

(assert (=> b!3073293 (= res!1261272 (not ((_ is ElementMatch!9519) (regTwo!19550 r!17423))))))

(declare-fun e!1923189 () Bool)

(assert (=> b!3073293 (= e!1923189 e!1923184)))

(declare-fun bm!213589 () Bool)

(declare-fun call!213594 () Bool)

(assert (=> bm!213589 (= call!213594 (isEmpty!19585 Nil!35260))))

(declare-fun b!3073294 () Bool)

(declare-fun e!1923187 () Bool)

(assert (=> b!3073294 (= e!1923187 (matchR!4401 (derivativeStep!2761 (regTwo!19550 r!17423) (head!6820 Nil!35260)) (tail!5046 Nil!35260)))))

(declare-fun b!3073295 () Bool)

(declare-fun lt!1051914 () Bool)

(assert (=> b!3073295 (= e!1923189 (not lt!1051914))))

(declare-fun b!3073296 () Bool)

(declare-fun e!1923186 () Bool)

(assert (=> b!3073296 (= e!1923186 (= (head!6820 Nil!35260) (c!511015 (regTwo!19550 r!17423))))))

(declare-fun b!3073297 () Bool)

(declare-fun res!1261276 () Bool)

(assert (=> b!3073297 (=> (not res!1261276) (not e!1923186))))

(assert (=> b!3073297 (= res!1261276 (not call!213594))))

(declare-fun d!856489 () Bool)

(declare-fun e!1923185 () Bool)

(assert (=> d!856489 e!1923185))

(declare-fun c!511142 () Bool)

(assert (=> d!856489 (= c!511142 ((_ is EmptyExpr!9519) (regTwo!19550 r!17423)))))

(assert (=> d!856489 (= lt!1051914 e!1923187)))

(declare-fun c!511140 () Bool)

(assert (=> d!856489 (= c!511140 (isEmpty!19585 Nil!35260))))

(assert (=> d!856489 (validRegex!4252 (regTwo!19550 r!17423))))

(assert (=> d!856489 (= (matchR!4401 (regTwo!19550 r!17423) Nil!35260) lt!1051914)))

(declare-fun b!3073298 () Bool)

(assert (=> b!3073298 (= e!1923185 (= lt!1051914 call!213594))))

(declare-fun b!3073299 () Bool)

(declare-fun e!1923188 () Bool)

(assert (=> b!3073299 (= e!1923188 (not (= (head!6820 Nil!35260) (c!511015 (regTwo!19550 r!17423)))))))

(declare-fun b!3073300 () Bool)

(declare-fun res!1261274 () Bool)

(assert (=> b!3073300 (=> (not res!1261274) (not e!1923186))))

(assert (=> b!3073300 (= res!1261274 (isEmpty!19585 (tail!5046 Nil!35260)))))

(declare-fun b!3073301 () Bool)

(declare-fun e!1923190 () Bool)

(assert (=> b!3073301 (= e!1923184 e!1923190)))

(declare-fun res!1261273 () Bool)

(assert (=> b!3073301 (=> (not res!1261273) (not e!1923190))))

(assert (=> b!3073301 (= res!1261273 (not lt!1051914))))

(declare-fun b!3073302 () Bool)

(declare-fun res!1261271 () Bool)

(assert (=> b!3073302 (=> res!1261271 e!1923184)))

(assert (=> b!3073302 (= res!1261271 e!1923186)))

(declare-fun res!1261275 () Bool)

(assert (=> b!3073302 (=> (not res!1261275) (not e!1923186))))

(assert (=> b!3073302 (= res!1261275 lt!1051914)))

(declare-fun b!3073303 () Bool)

(declare-fun res!1261270 () Bool)

(assert (=> b!3073303 (=> res!1261270 e!1923188)))

(assert (=> b!3073303 (= res!1261270 (not (isEmpty!19585 (tail!5046 Nil!35260))))))

(declare-fun b!3073304 () Bool)

(assert (=> b!3073304 (= e!1923185 e!1923189)))

(declare-fun c!511141 () Bool)

(assert (=> b!3073304 (= c!511141 ((_ is EmptyLang!9519) (regTwo!19550 r!17423)))))

(declare-fun b!3073305 () Bool)

(assert (=> b!3073305 (= e!1923187 (nullable!3165 (regTwo!19550 r!17423)))))

(declare-fun b!3073306 () Bool)

(assert (=> b!3073306 (= e!1923190 e!1923188)))

(declare-fun res!1261269 () Bool)

(assert (=> b!3073306 (=> res!1261269 e!1923188)))

(assert (=> b!3073306 (= res!1261269 call!213594)))

(assert (= (and d!856489 c!511140) b!3073305))

(assert (= (and d!856489 (not c!511140)) b!3073294))

(assert (= (and d!856489 c!511142) b!3073298))

(assert (= (and d!856489 (not c!511142)) b!3073304))

(assert (= (and b!3073304 c!511141) b!3073295))

(assert (= (and b!3073304 (not c!511141)) b!3073293))

(assert (= (and b!3073293 (not res!1261272)) b!3073302))

(assert (= (and b!3073302 res!1261275) b!3073297))

(assert (= (and b!3073297 res!1261276) b!3073300))

(assert (= (and b!3073300 res!1261274) b!3073296))

(assert (= (and b!3073302 (not res!1261271)) b!3073301))

(assert (= (and b!3073301 res!1261273) b!3073306))

(assert (= (and b!3073306 (not res!1261269)) b!3073303))

(assert (= (and b!3073303 (not res!1261270)) b!3073299))

(assert (= (or b!3073298 b!3073297 b!3073306) bm!213589))

(declare-fun m!3386595 () Bool)

(assert (=> b!3073303 m!3386595))

(assert (=> b!3073303 m!3386595))

(declare-fun m!3386597 () Bool)

(assert (=> b!3073303 m!3386597))

(declare-fun m!3386599 () Bool)

(assert (=> bm!213589 m!3386599))

(declare-fun m!3386601 () Bool)

(assert (=> b!3073305 m!3386601))

(assert (=> d!856489 m!3386599))

(assert (=> d!856489 m!3386377))

(declare-fun m!3386603 () Bool)

(assert (=> b!3073296 m!3386603))

(assert (=> b!3073299 m!3386603))

(assert (=> b!3073300 m!3386595))

(assert (=> b!3073300 m!3386595))

(assert (=> b!3073300 m!3386597))

(assert (=> b!3073294 m!3386603))

(assert (=> b!3073294 m!3386603))

(declare-fun m!3386605 () Bool)

(assert (=> b!3073294 m!3386605))

(assert (=> b!3073294 m!3386595))

(assert (=> b!3073294 m!3386605))

(assert (=> b!3073294 m!3386595))

(declare-fun m!3386607 () Bool)

(assert (=> b!3073294 m!3386607))

(assert (=> b!3072795 d!856489))

(declare-fun b!3073307 () Bool)

(declare-fun res!1261280 () Bool)

(declare-fun e!1923191 () Bool)

(assert (=> b!3073307 (=> res!1261280 e!1923191)))

(assert (=> b!3073307 (= res!1261280 (not ((_ is ElementMatch!9519) lt!1051853)))))

(declare-fun e!1923196 () Bool)

(assert (=> b!3073307 (= e!1923196 e!1923191)))

(declare-fun bm!213590 () Bool)

(declare-fun call!213595 () Bool)

(assert (=> bm!213590 (= call!213595 (isEmpty!19585 Nil!35260))))

(declare-fun b!3073308 () Bool)

(declare-fun e!1923194 () Bool)

(assert (=> b!3073308 (= e!1923194 (matchR!4401 (derivativeStep!2761 lt!1051853 (head!6820 Nil!35260)) (tail!5046 Nil!35260)))))

(declare-fun b!3073309 () Bool)

(declare-fun lt!1051915 () Bool)

(assert (=> b!3073309 (= e!1923196 (not lt!1051915))))

(declare-fun b!3073310 () Bool)

(declare-fun e!1923193 () Bool)

(assert (=> b!3073310 (= e!1923193 (= (head!6820 Nil!35260) (c!511015 lt!1051853)))))

(declare-fun b!3073311 () Bool)

(declare-fun res!1261284 () Bool)

(assert (=> b!3073311 (=> (not res!1261284) (not e!1923193))))

(assert (=> b!3073311 (= res!1261284 (not call!213595))))

(declare-fun d!856491 () Bool)

(declare-fun e!1923192 () Bool)

(assert (=> d!856491 e!1923192))

(declare-fun c!511145 () Bool)

(assert (=> d!856491 (= c!511145 ((_ is EmptyExpr!9519) lt!1051853))))

(assert (=> d!856491 (= lt!1051915 e!1923194)))

(declare-fun c!511143 () Bool)

(assert (=> d!856491 (= c!511143 (isEmpty!19585 Nil!35260))))

(assert (=> d!856491 (validRegex!4252 lt!1051853)))

(assert (=> d!856491 (= (matchR!4401 lt!1051853 Nil!35260) lt!1051915)))

(declare-fun b!3073312 () Bool)

(assert (=> b!3073312 (= e!1923192 (= lt!1051915 call!213595))))

(declare-fun b!3073313 () Bool)

(declare-fun e!1923195 () Bool)

(assert (=> b!3073313 (= e!1923195 (not (= (head!6820 Nil!35260) (c!511015 lt!1051853))))))

(declare-fun b!3073314 () Bool)

(declare-fun res!1261282 () Bool)

(assert (=> b!3073314 (=> (not res!1261282) (not e!1923193))))

(assert (=> b!3073314 (= res!1261282 (isEmpty!19585 (tail!5046 Nil!35260)))))

(declare-fun b!3073315 () Bool)

(declare-fun e!1923197 () Bool)

(assert (=> b!3073315 (= e!1923191 e!1923197)))

(declare-fun res!1261281 () Bool)

(assert (=> b!3073315 (=> (not res!1261281) (not e!1923197))))

(assert (=> b!3073315 (= res!1261281 (not lt!1051915))))

(declare-fun b!3073316 () Bool)

(declare-fun res!1261279 () Bool)

(assert (=> b!3073316 (=> res!1261279 e!1923191)))

(assert (=> b!3073316 (= res!1261279 e!1923193)))

(declare-fun res!1261283 () Bool)

(assert (=> b!3073316 (=> (not res!1261283) (not e!1923193))))

(assert (=> b!3073316 (= res!1261283 lt!1051915)))

(declare-fun b!3073317 () Bool)

(declare-fun res!1261278 () Bool)

(assert (=> b!3073317 (=> res!1261278 e!1923195)))

(assert (=> b!3073317 (= res!1261278 (not (isEmpty!19585 (tail!5046 Nil!35260))))))

(declare-fun b!3073318 () Bool)

(assert (=> b!3073318 (= e!1923192 e!1923196)))

(declare-fun c!511144 () Bool)

(assert (=> b!3073318 (= c!511144 ((_ is EmptyLang!9519) lt!1051853))))

(declare-fun b!3073319 () Bool)

(assert (=> b!3073319 (= e!1923194 (nullable!3165 lt!1051853))))

(declare-fun b!3073320 () Bool)

(assert (=> b!3073320 (= e!1923197 e!1923195)))

(declare-fun res!1261277 () Bool)

(assert (=> b!3073320 (=> res!1261277 e!1923195)))

(assert (=> b!3073320 (= res!1261277 call!213595)))

(assert (= (and d!856491 c!511143) b!3073319))

(assert (= (and d!856491 (not c!511143)) b!3073308))

(assert (= (and d!856491 c!511145) b!3073312))

(assert (= (and d!856491 (not c!511145)) b!3073318))

(assert (= (and b!3073318 c!511144) b!3073309))

(assert (= (and b!3073318 (not c!511144)) b!3073307))

(assert (= (and b!3073307 (not res!1261280)) b!3073316))

(assert (= (and b!3073316 res!1261283) b!3073311))

(assert (= (and b!3073311 res!1261284) b!3073314))

(assert (= (and b!3073314 res!1261282) b!3073310))

(assert (= (and b!3073316 (not res!1261279)) b!3073315))

(assert (= (and b!3073315 res!1261281) b!3073320))

(assert (= (and b!3073320 (not res!1261277)) b!3073317))

(assert (= (and b!3073317 (not res!1261278)) b!3073313))

(assert (= (or b!3073312 b!3073311 b!3073320) bm!213590))

(assert (=> b!3073317 m!3386595))

(assert (=> b!3073317 m!3386595))

(assert (=> b!3073317 m!3386597))

(assert (=> bm!213590 m!3386599))

(declare-fun m!3386609 () Bool)

(assert (=> b!3073319 m!3386609))

(assert (=> d!856491 m!3386599))

(declare-fun m!3386611 () Bool)

(assert (=> d!856491 m!3386611))

(assert (=> b!3073310 m!3386603))

(assert (=> b!3073313 m!3386603))

(assert (=> b!3073314 m!3386595))

(assert (=> b!3073314 m!3386595))

(assert (=> b!3073314 m!3386597))

(assert (=> b!3073308 m!3386603))

(assert (=> b!3073308 m!3386603))

(declare-fun m!3386613 () Bool)

(assert (=> b!3073308 m!3386613))

(assert (=> b!3073308 m!3386595))

(assert (=> b!3073308 m!3386613))

(assert (=> b!3073308 m!3386595))

(declare-fun m!3386615 () Bool)

(assert (=> b!3073308 m!3386615))

(assert (=> b!3072795 d!856491))

(declare-fun b!3073321 () Bool)

(declare-fun res!1261288 () Bool)

(declare-fun e!1923198 () Bool)

(assert (=> b!3073321 (=> res!1261288 e!1923198)))

(assert (=> b!3073321 (= res!1261288 (not ((_ is ElementMatch!9519) lt!1051848)))))

(declare-fun e!1923203 () Bool)

(assert (=> b!3073321 (= e!1923203 e!1923198)))

(declare-fun bm!213591 () Bool)

(declare-fun call!213596 () Bool)

(assert (=> bm!213591 (= call!213596 (isEmpty!19585 s!11993))))

(declare-fun b!3073322 () Bool)

(declare-fun e!1923201 () Bool)

(assert (=> b!3073322 (= e!1923201 (matchR!4401 (derivativeStep!2761 lt!1051848 (head!6820 s!11993)) (tail!5046 s!11993)))))

(declare-fun b!3073323 () Bool)

(declare-fun lt!1051916 () Bool)

(assert (=> b!3073323 (= e!1923203 (not lt!1051916))))

(declare-fun b!3073324 () Bool)

(declare-fun e!1923200 () Bool)

(assert (=> b!3073324 (= e!1923200 (= (head!6820 s!11993) (c!511015 lt!1051848)))))

(declare-fun b!3073325 () Bool)

(declare-fun res!1261292 () Bool)

(assert (=> b!3073325 (=> (not res!1261292) (not e!1923200))))

(assert (=> b!3073325 (= res!1261292 (not call!213596))))

(declare-fun d!856493 () Bool)

(declare-fun e!1923199 () Bool)

(assert (=> d!856493 e!1923199))

(declare-fun c!511148 () Bool)

(assert (=> d!856493 (= c!511148 ((_ is EmptyExpr!9519) lt!1051848))))

(assert (=> d!856493 (= lt!1051916 e!1923201)))

(declare-fun c!511146 () Bool)

(assert (=> d!856493 (= c!511146 (isEmpty!19585 s!11993))))

(assert (=> d!856493 (validRegex!4252 lt!1051848)))

(assert (=> d!856493 (= (matchR!4401 lt!1051848 s!11993) lt!1051916)))

(declare-fun b!3073326 () Bool)

(assert (=> b!3073326 (= e!1923199 (= lt!1051916 call!213596))))

(declare-fun b!3073327 () Bool)

(declare-fun e!1923202 () Bool)

(assert (=> b!3073327 (= e!1923202 (not (= (head!6820 s!11993) (c!511015 lt!1051848))))))

(declare-fun b!3073328 () Bool)

(declare-fun res!1261290 () Bool)

(assert (=> b!3073328 (=> (not res!1261290) (not e!1923200))))

(assert (=> b!3073328 (= res!1261290 (isEmpty!19585 (tail!5046 s!11993)))))

(declare-fun b!3073329 () Bool)

(declare-fun e!1923204 () Bool)

(assert (=> b!3073329 (= e!1923198 e!1923204)))

(declare-fun res!1261289 () Bool)

(assert (=> b!3073329 (=> (not res!1261289) (not e!1923204))))

(assert (=> b!3073329 (= res!1261289 (not lt!1051916))))

(declare-fun b!3073330 () Bool)

(declare-fun res!1261287 () Bool)

(assert (=> b!3073330 (=> res!1261287 e!1923198)))

(assert (=> b!3073330 (= res!1261287 e!1923200)))

(declare-fun res!1261291 () Bool)

(assert (=> b!3073330 (=> (not res!1261291) (not e!1923200))))

(assert (=> b!3073330 (= res!1261291 lt!1051916)))

(declare-fun b!3073331 () Bool)

(declare-fun res!1261286 () Bool)

(assert (=> b!3073331 (=> res!1261286 e!1923202)))

(assert (=> b!3073331 (= res!1261286 (not (isEmpty!19585 (tail!5046 s!11993))))))

(declare-fun b!3073332 () Bool)

(assert (=> b!3073332 (= e!1923199 e!1923203)))

(declare-fun c!511147 () Bool)

(assert (=> b!3073332 (= c!511147 ((_ is EmptyLang!9519) lt!1051848))))

(declare-fun b!3073333 () Bool)

(assert (=> b!3073333 (= e!1923201 (nullable!3165 lt!1051848))))

(declare-fun b!3073334 () Bool)

(assert (=> b!3073334 (= e!1923204 e!1923202)))

(declare-fun res!1261285 () Bool)

(assert (=> b!3073334 (=> res!1261285 e!1923202)))

(assert (=> b!3073334 (= res!1261285 call!213596)))

(assert (= (and d!856493 c!511146) b!3073333))

(assert (= (and d!856493 (not c!511146)) b!3073322))

(assert (= (and d!856493 c!511148) b!3073326))

(assert (= (and d!856493 (not c!511148)) b!3073332))

(assert (= (and b!3073332 c!511147) b!3073323))

(assert (= (and b!3073332 (not c!511147)) b!3073321))

(assert (= (and b!3073321 (not res!1261288)) b!3073330))

(assert (= (and b!3073330 res!1261291) b!3073325))

(assert (= (and b!3073325 res!1261292) b!3073328))

(assert (= (and b!3073328 res!1261290) b!3073324))

(assert (= (and b!3073330 (not res!1261287)) b!3073329))

(assert (= (and b!3073329 res!1261289) b!3073334))

(assert (= (and b!3073334 (not res!1261285)) b!3073331))

(assert (= (and b!3073331 (not res!1261286)) b!3073327))

(assert (= (or b!3073326 b!3073325 b!3073334) bm!213591))

(assert (=> b!3073331 m!3386545))

(assert (=> b!3073331 m!3386545))

(assert (=> b!3073331 m!3386547))

(assert (=> bm!213591 m!3386399))

(declare-fun m!3386617 () Bool)

(assert (=> b!3073333 m!3386617))

(assert (=> d!856493 m!3386399))

(declare-fun m!3386619 () Bool)

(assert (=> d!856493 m!3386619))

(assert (=> b!3073324 m!3386551))

(assert (=> b!3073327 m!3386551))

(assert (=> b!3073328 m!3386545))

(assert (=> b!3073328 m!3386545))

(assert (=> b!3073328 m!3386547))

(assert (=> b!3073322 m!3386551))

(assert (=> b!3073322 m!3386551))

(declare-fun m!3386621 () Bool)

(assert (=> b!3073322 m!3386621))

(assert (=> b!3073322 m!3386545))

(assert (=> b!3073322 m!3386621))

(assert (=> b!3073322 m!3386545))

(declare-fun m!3386623 () Bool)

(assert (=> b!3073322 m!3386623))

(assert (=> b!3072795 d!856493))

(declare-fun d!856495 () Bool)

(assert (=> d!856495 (= (isEmptyLang!570 lt!1051853) ((_ is EmptyLang!9519) lt!1051853))))

(assert (=> b!3072785 d!856495))

(declare-fun b!3073335 () Bool)

(declare-fun e!1923209 () Bool)

(declare-fun e!1923211 () Bool)

(assert (=> b!3073335 (= e!1923209 e!1923211)))

(declare-fun res!1261294 () Bool)

(assert (=> b!3073335 (=> (not res!1261294) (not e!1923211))))

(declare-fun call!213599 () Bool)

(assert (=> b!3073335 (= res!1261294 call!213599)))

(declare-fun b!3073336 () Bool)

(declare-fun e!1923210 () Bool)

(declare-fun call!213598 () Bool)

(assert (=> b!3073336 (= e!1923210 call!213598)))

(declare-fun c!511149 () Bool)

(declare-fun c!511150 () Bool)

(declare-fun bm!213592 () Bool)

(assert (=> bm!213592 (= call!213598 (validRegex!4252 (ite c!511150 (reg!9848 (regOne!19550 r!17423)) (ite c!511149 (regOne!19551 (regOne!19550 r!17423)) (regTwo!19550 (regOne!19550 r!17423))))))))

(declare-fun b!3073337 () Bool)

(declare-fun e!1923205 () Bool)

(declare-fun e!1923206 () Bool)

(assert (=> b!3073337 (= e!1923205 e!1923206)))

(assert (=> b!3073337 (= c!511149 ((_ is Union!9519) (regOne!19550 r!17423)))))

(declare-fun b!3073338 () Bool)

(declare-fun call!213597 () Bool)

(assert (=> b!3073338 (= e!1923211 call!213597)))

(declare-fun bm!213593 () Bool)

(assert (=> bm!213593 (= call!213599 (validRegex!4252 (ite c!511149 (regTwo!19551 (regOne!19550 r!17423)) (regOne!19550 (regOne!19550 r!17423)))))))

(declare-fun bm!213594 () Bool)

(assert (=> bm!213594 (= call!213597 call!213598)))

(declare-fun b!3073339 () Bool)

(assert (=> b!3073339 (= e!1923205 e!1923210)))

(declare-fun res!1261293 () Bool)

(assert (=> b!3073339 (= res!1261293 (not (nullable!3165 (reg!9848 (regOne!19550 r!17423)))))))

(assert (=> b!3073339 (=> (not res!1261293) (not e!1923210))))

(declare-fun d!856497 () Bool)

(declare-fun res!1261296 () Bool)

(declare-fun e!1923208 () Bool)

(assert (=> d!856497 (=> res!1261296 e!1923208)))

(assert (=> d!856497 (= res!1261296 ((_ is ElementMatch!9519) (regOne!19550 r!17423)))))

(assert (=> d!856497 (= (validRegex!4252 (regOne!19550 r!17423)) e!1923208)))

(declare-fun b!3073340 () Bool)

(declare-fun e!1923207 () Bool)

(assert (=> b!3073340 (= e!1923207 call!213599)))

(declare-fun b!3073341 () Bool)

(declare-fun res!1261297 () Bool)

(assert (=> b!3073341 (=> (not res!1261297) (not e!1923207))))

(assert (=> b!3073341 (= res!1261297 call!213597)))

(assert (=> b!3073341 (= e!1923206 e!1923207)))

(declare-fun b!3073342 () Bool)

(assert (=> b!3073342 (= e!1923208 e!1923205)))

(assert (=> b!3073342 (= c!511150 ((_ is Star!9519) (regOne!19550 r!17423)))))

(declare-fun b!3073343 () Bool)

(declare-fun res!1261295 () Bool)

(assert (=> b!3073343 (=> res!1261295 e!1923209)))

(assert (=> b!3073343 (= res!1261295 (not ((_ is Concat!14840) (regOne!19550 r!17423))))))

(assert (=> b!3073343 (= e!1923206 e!1923209)))

(assert (= (and d!856497 (not res!1261296)) b!3073342))

(assert (= (and b!3073342 c!511150) b!3073339))

(assert (= (and b!3073342 (not c!511150)) b!3073337))

(assert (= (and b!3073339 res!1261293) b!3073336))

(assert (= (and b!3073337 c!511149) b!3073341))

(assert (= (and b!3073337 (not c!511149)) b!3073343))

(assert (= (and b!3073341 res!1261297) b!3073340))

(assert (= (and b!3073343 (not res!1261295)) b!3073335))

(assert (= (and b!3073335 res!1261294) b!3073338))

(assert (= (or b!3073341 b!3073338) bm!213594))

(assert (= (or b!3073340 b!3073335) bm!213593))

(assert (= (or b!3073336 bm!213594) bm!213592))

(declare-fun m!3386625 () Bool)

(assert (=> bm!213592 m!3386625))

(declare-fun m!3386627 () Bool)

(assert (=> bm!213593 m!3386627))

(declare-fun m!3386629 () Bool)

(assert (=> b!3073339 m!3386629))

(assert (=> b!3072787 d!856497))

(declare-fun d!856499 () Bool)

(assert (=> d!856499 (= (isEmptyExpr!576 lt!1051848) ((_ is EmptyExpr!9519) lt!1051848))))

(assert (=> b!3072791 d!856499))

(declare-fun b!3073344 () Bool)

(declare-fun e!1923216 () Bool)

(declare-fun e!1923218 () Bool)

(assert (=> b!3073344 (= e!1923216 e!1923218)))

(declare-fun res!1261299 () Bool)

(assert (=> b!3073344 (=> (not res!1261299) (not e!1923218))))

(declare-fun call!213602 () Bool)

(assert (=> b!3073344 (= res!1261299 call!213602)))

(declare-fun b!3073345 () Bool)

(declare-fun e!1923217 () Bool)

(declare-fun call!213601 () Bool)

(assert (=> b!3073345 (= e!1923217 call!213601)))

(declare-fun c!511152 () Bool)

(declare-fun c!511151 () Bool)

(declare-fun bm!213595 () Bool)

(assert (=> bm!213595 (= call!213601 (validRegex!4252 (ite c!511152 (reg!9848 r!17423) (ite c!511151 (regOne!19551 r!17423) (regTwo!19550 r!17423)))))))

(declare-fun b!3073346 () Bool)

(declare-fun e!1923212 () Bool)

(declare-fun e!1923213 () Bool)

(assert (=> b!3073346 (= e!1923212 e!1923213)))

(assert (=> b!3073346 (= c!511151 ((_ is Union!9519) r!17423))))

(declare-fun b!3073347 () Bool)

(declare-fun call!213600 () Bool)

(assert (=> b!3073347 (= e!1923218 call!213600)))

(declare-fun bm!213596 () Bool)

(assert (=> bm!213596 (= call!213602 (validRegex!4252 (ite c!511151 (regTwo!19551 r!17423) (regOne!19550 r!17423))))))

(declare-fun bm!213597 () Bool)

(assert (=> bm!213597 (= call!213600 call!213601)))

(declare-fun b!3073348 () Bool)

(assert (=> b!3073348 (= e!1923212 e!1923217)))

(declare-fun res!1261298 () Bool)

(assert (=> b!3073348 (= res!1261298 (not (nullable!3165 (reg!9848 r!17423))))))

(assert (=> b!3073348 (=> (not res!1261298) (not e!1923217))))

(declare-fun d!856501 () Bool)

(declare-fun res!1261301 () Bool)

(declare-fun e!1923215 () Bool)

(assert (=> d!856501 (=> res!1261301 e!1923215)))

(assert (=> d!856501 (= res!1261301 ((_ is ElementMatch!9519) r!17423))))

(assert (=> d!856501 (= (validRegex!4252 r!17423) e!1923215)))

(declare-fun b!3073349 () Bool)

(declare-fun e!1923214 () Bool)

(assert (=> b!3073349 (= e!1923214 call!213602)))

(declare-fun b!3073350 () Bool)

(declare-fun res!1261302 () Bool)

(assert (=> b!3073350 (=> (not res!1261302) (not e!1923214))))

(assert (=> b!3073350 (= res!1261302 call!213600)))

(assert (=> b!3073350 (= e!1923213 e!1923214)))

(declare-fun b!3073351 () Bool)

(assert (=> b!3073351 (= e!1923215 e!1923212)))

(assert (=> b!3073351 (= c!511152 ((_ is Star!9519) r!17423))))

(declare-fun b!3073352 () Bool)

(declare-fun res!1261300 () Bool)

(assert (=> b!3073352 (=> res!1261300 e!1923216)))

(assert (=> b!3073352 (= res!1261300 (not ((_ is Concat!14840) r!17423)))))

(assert (=> b!3073352 (= e!1923213 e!1923216)))

(assert (= (and d!856501 (not res!1261301)) b!3073351))

(assert (= (and b!3073351 c!511152) b!3073348))

(assert (= (and b!3073351 (not c!511152)) b!3073346))

(assert (= (and b!3073348 res!1261298) b!3073345))

(assert (= (and b!3073346 c!511151) b!3073350))

(assert (= (and b!3073346 (not c!511151)) b!3073352))

(assert (= (and b!3073350 res!1261302) b!3073349))

(assert (= (and b!3073352 (not res!1261300)) b!3073344))

(assert (= (and b!3073344 res!1261299) b!3073347))

(assert (= (or b!3073350 b!3073347) bm!213597))

(assert (= (or b!3073349 b!3073344) bm!213596))

(assert (= (or b!3073345 bm!213597) bm!213595))

(declare-fun m!3386631 () Bool)

(assert (=> bm!213595 m!3386631))

(declare-fun m!3386633 () Bool)

(assert (=> bm!213596 m!3386633))

(declare-fun m!3386635 () Bool)

(assert (=> b!3073348 m!3386635))

(assert (=> start!292952 d!856501))

(declare-fun b!3073362 () Bool)

(declare-fun res!1261313 () Bool)

(declare-fun e!1923225 () Bool)

(assert (=> b!3073362 (=> (not res!1261313) (not e!1923225))))

(assert (=> b!3073362 (= res!1261313 (= (head!6820 Nil!35260) (head!6820 s!11993)))))

(declare-fun b!3073361 () Bool)

(declare-fun e!1923227 () Bool)

(assert (=> b!3073361 (= e!1923227 e!1923225)))

(declare-fun res!1261314 () Bool)

(assert (=> b!3073361 (=> (not res!1261314) (not e!1923225))))

(assert (=> b!3073361 (= res!1261314 (not ((_ is Nil!35260) s!11993)))))

(declare-fun d!856503 () Bool)

(declare-fun e!1923226 () Bool)

(assert (=> d!856503 e!1923226))

(declare-fun res!1261312 () Bool)

(assert (=> d!856503 (=> res!1261312 e!1923226)))

(declare-fun lt!1051919 () Bool)

(assert (=> d!856503 (= res!1261312 (not lt!1051919))))

(assert (=> d!856503 (= lt!1051919 e!1923227)))

(declare-fun res!1261311 () Bool)

(assert (=> d!856503 (=> res!1261311 e!1923227)))

(assert (=> d!856503 (= res!1261311 ((_ is Nil!35260) Nil!35260))))

(assert (=> d!856503 (= (isPrefix!2766 Nil!35260 s!11993) lt!1051919)))

(declare-fun b!3073363 () Bool)

(assert (=> b!3073363 (= e!1923225 (isPrefix!2766 (tail!5046 Nil!35260) (tail!5046 s!11993)))))

(declare-fun b!3073364 () Bool)

(assert (=> b!3073364 (= e!1923226 (>= (size!26564 s!11993) (size!26564 Nil!35260)))))

(assert (= (and d!856503 (not res!1261311)) b!3073361))

(assert (= (and b!3073361 res!1261314) b!3073362))

(assert (= (and b!3073362 res!1261313) b!3073363))

(assert (= (and d!856503 (not res!1261312)) b!3073364))

(assert (=> b!3073362 m!3386603))

(assert (=> b!3073362 m!3386551))

(assert (=> b!3073363 m!3386595))

(assert (=> b!3073363 m!3386545))

(assert (=> b!3073363 m!3386595))

(assert (=> b!3073363 m!3386545))

(declare-fun m!3386637 () Bool)

(assert (=> b!3073363 m!3386637))

(assert (=> b!3073364 m!3386573))

(assert (=> b!3073364 m!3386571))

(assert (=> b!3072790 d!856503))

(declare-fun d!856505 () Bool)

(assert (=> d!856505 (= (isEmpty!19585 s!11993) ((_ is Nil!35260) s!11993))))

(assert (=> b!3072794 d!856505))

(declare-fun d!856507 () Bool)

(assert (=> d!856507 (= (isEmptyLang!570 lt!1051848) ((_ is EmptyLang!9519) lt!1051848))))

(assert (=> b!3072782 d!856507))

(declare-fun bm!213612 () Bool)

(declare-fun call!213622 () Bool)

(declare-fun call!213621 () Bool)

(assert (=> bm!213612 (= call!213622 call!213621)))

(declare-fun b!3073415 () Bool)

(declare-fun e!1923260 () Regex!9519)

(declare-fun lt!1051936 () Regex!9519)

(assert (=> b!3073415 (= e!1923260 lt!1051936)))

(declare-fun b!3073416 () Bool)

(declare-fun e!1923262 () Regex!9519)

(assert (=> b!3073416 (= e!1923262 EmptyExpr!9519)))

(declare-fun lt!1051933 () Regex!9519)

(declare-fun lt!1051932 () Regex!9519)

(declare-fun bm!213613 () Bool)

(declare-fun c!511183 () Bool)

(declare-fun c!511179 () Bool)

(assert (=> bm!213613 (= call!213621 (isEmptyLang!570 (ite c!511183 lt!1051933 (ite c!511179 lt!1051936 lt!1051932))))))

(declare-fun b!3073417 () Bool)

(declare-fun e!1923261 () Bool)

(declare-fun call!213620 () Bool)

(assert (=> b!3073417 (= e!1923261 call!213620)))

(declare-fun b!3073418 () Bool)

(assert (=> b!3073418 (= c!511179 ((_ is Union!9519) (regTwo!19550 r!17423)))))

(declare-fun e!1923263 () Regex!9519)

(declare-fun e!1923264 () Regex!9519)

(assert (=> b!3073418 (= e!1923263 e!1923264)))

(declare-fun b!3073419 () Bool)

(declare-fun e!1923257 () Regex!9519)

(declare-fun lt!1051934 () Regex!9519)

(assert (=> b!3073419 (= e!1923257 lt!1051934)))

(declare-fun bm!213614 () Bool)

(assert (=> bm!213614 (= call!213620 (isEmptyExpr!576 (ite c!511183 lt!1051933 lt!1051934)))))

(declare-fun b!3073420 () Bool)

(declare-fun c!511185 () Bool)

(declare-fun call!213619 () Bool)

(assert (=> b!3073420 (= c!511185 call!213619)))

(declare-fun e!1923266 () Regex!9519)

(assert (=> b!3073420 (= e!1923266 e!1923260)))

(declare-fun b!3073421 () Bool)

(declare-fun e!1923258 () Regex!9519)

(assert (=> b!3073421 (= e!1923258 EmptyLang!9519)))

(declare-fun b!3073422 () Bool)

(assert (=> b!3073422 (= e!1923262 e!1923263)))

(assert (=> b!3073422 (= c!511183 ((_ is Star!9519) (regTwo!19550 r!17423)))))

(declare-fun bm!213615 () Bool)

(declare-fun call!213617 () Regex!9519)

(assert (=> bm!213615 (= call!213617 (simplify!474 (ite c!511179 (regTwo!19551 (regTwo!19550 r!17423)) (regOne!19550 (regTwo!19550 r!17423)))))))

(declare-fun b!3073423 () Bool)

(declare-fun e!1923256 () Regex!9519)

(assert (=> b!3073423 (= e!1923256 EmptyLang!9519)))

(declare-fun b!3073424 () Bool)

(declare-fun e!1923268 () Regex!9519)

(assert (=> b!3073424 (= e!1923268 (regTwo!19550 r!17423))))

(declare-fun d!856509 () Bool)

(declare-fun e!1923259 () Bool)

(assert (=> d!856509 e!1923259))

(declare-fun res!1261322 () Bool)

(assert (=> d!856509 (=> (not res!1261322) (not e!1923259))))

(declare-fun lt!1051935 () Regex!9519)

(assert (=> d!856509 (= res!1261322 (validRegex!4252 lt!1051935))))

(assert (=> d!856509 (= lt!1051935 e!1923256)))

(declare-fun c!511180 () Bool)

(assert (=> d!856509 (= c!511180 ((_ is EmptyLang!9519) (regTwo!19550 r!17423)))))

(assert (=> d!856509 (validRegex!4252 (regTwo!19550 r!17423))))

(assert (=> d!856509 (= (simplify!474 (regTwo!19550 r!17423)) lt!1051935)))

(declare-fun b!3073425 () Bool)

(declare-fun e!1923269 () Regex!9519)

(assert (=> b!3073425 (= e!1923269 EmptyExpr!9519)))

(declare-fun b!3073426 () Bool)

(declare-fun e!1923265 () Regex!9519)

(assert (=> b!3073426 (= e!1923265 lt!1051932)))

(declare-fun b!3073427 () Bool)

(declare-fun lt!1051937 () Regex!9519)

(assert (=> b!3073427 (= e!1923266 lt!1051937)))

(declare-fun b!3073428 () Bool)

(assert (=> b!3073428 (= e!1923265 e!1923257)))

(declare-fun c!511184 () Bool)

(assert (=> b!3073428 (= c!511184 (isEmptyExpr!576 lt!1051932))))

(declare-fun b!3073429 () Bool)

(assert (=> b!3073429 (= e!1923269 (Star!9519 lt!1051933))))

(declare-fun b!3073430 () Bool)

(declare-fun e!1923267 () Bool)

(assert (=> b!3073430 (= e!1923267 call!213622)))

(declare-fun bm!213616 () Bool)

(declare-fun call!213618 () Regex!9519)

(declare-fun call!213623 () Regex!9519)

(assert (=> bm!213616 (= call!213618 call!213623)))

(declare-fun bm!213617 () Bool)

(assert (=> bm!213617 (= call!213619 (isEmptyLang!570 (ite c!511179 lt!1051937 lt!1051934)))))

(declare-fun b!3073431 () Bool)

(declare-fun c!511176 () Bool)

(assert (=> b!3073431 (= c!511176 e!1923261)))

(declare-fun res!1261321 () Bool)

(assert (=> b!3073431 (=> res!1261321 e!1923261)))

(assert (=> b!3073431 (= res!1261321 call!213621)))

(assert (=> b!3073431 (= lt!1051933 call!213623)))

(assert (=> b!3073431 (= e!1923263 e!1923269)))

(declare-fun bm!213618 () Bool)

(assert (=> bm!213618 (= call!213623 (simplify!474 (ite c!511183 (reg!9848 (regTwo!19550 r!17423)) (ite c!511179 (regOne!19551 (regTwo!19550 r!17423)) (regTwo!19550 (regTwo!19550 r!17423))))))))

(declare-fun b!3073432 () Bool)

(assert (=> b!3073432 (= e!1923264 e!1923266)))

(assert (=> b!3073432 (= lt!1051936 call!213618)))

(assert (=> b!3073432 (= lt!1051937 call!213617)))

(declare-fun c!511181 () Bool)

(assert (=> b!3073432 (= c!511181 call!213622)))

(declare-fun b!3073433 () Bool)

(assert (=> b!3073433 (= e!1923256 e!1923268)))

(declare-fun c!511182 () Bool)

(assert (=> b!3073433 (= c!511182 ((_ is ElementMatch!9519) (regTwo!19550 r!17423)))))

(declare-fun b!3073434 () Bool)

(declare-fun c!511178 () Bool)

(assert (=> b!3073434 (= c!511178 call!213620)))

(assert (=> b!3073434 (= e!1923258 e!1923265)))

(declare-fun b!3073435 () Bool)

(assert (=> b!3073435 (= e!1923257 (Concat!14840 lt!1051934 lt!1051932))))

(declare-fun b!3073436 () Bool)

(declare-fun c!511177 () Bool)

(assert (=> b!3073436 (= c!511177 ((_ is EmptyExpr!9519) (regTwo!19550 r!17423)))))

(assert (=> b!3073436 (= e!1923268 e!1923262)))

(declare-fun b!3073437 () Bool)

(assert (=> b!3073437 (= e!1923259 (= (nullable!3165 lt!1051935) (nullable!3165 (regTwo!19550 r!17423))))))

(declare-fun b!3073438 () Bool)

(assert (=> b!3073438 (= e!1923260 (Union!9519 lt!1051936 lt!1051937))))

(declare-fun b!3073439 () Bool)

(assert (=> b!3073439 (= e!1923264 e!1923258)))

(assert (=> b!3073439 (= lt!1051934 call!213617)))

(assert (=> b!3073439 (= lt!1051932 call!213618)))

(declare-fun res!1261323 () Bool)

(assert (=> b!3073439 (= res!1261323 call!213619)))

(assert (=> b!3073439 (=> res!1261323 e!1923267)))

(declare-fun c!511175 () Bool)

(assert (=> b!3073439 (= c!511175 e!1923267)))

(assert (= (and d!856509 c!511180) b!3073423))

(assert (= (and d!856509 (not c!511180)) b!3073433))

(assert (= (and b!3073433 c!511182) b!3073424))

(assert (= (and b!3073433 (not c!511182)) b!3073436))

(assert (= (and b!3073436 c!511177) b!3073416))

(assert (= (and b!3073436 (not c!511177)) b!3073422))

(assert (= (and b!3073422 c!511183) b!3073431))

(assert (= (and b!3073422 (not c!511183)) b!3073418))

(assert (= (and b!3073431 (not res!1261321)) b!3073417))

(assert (= (and b!3073431 c!511176) b!3073425))

(assert (= (and b!3073431 (not c!511176)) b!3073429))

(assert (= (and b!3073418 c!511179) b!3073432))

(assert (= (and b!3073418 (not c!511179)) b!3073439))

(assert (= (and b!3073432 c!511181) b!3073427))

(assert (= (and b!3073432 (not c!511181)) b!3073420))

(assert (= (and b!3073420 c!511185) b!3073415))

(assert (= (and b!3073420 (not c!511185)) b!3073438))

(assert (= (and b!3073439 (not res!1261323)) b!3073430))

(assert (= (and b!3073439 c!511175) b!3073421))

(assert (= (and b!3073439 (not c!511175)) b!3073434))

(assert (= (and b!3073434 c!511178) b!3073426))

(assert (= (and b!3073434 (not c!511178)) b!3073428))

(assert (= (and b!3073428 c!511184) b!3073419))

(assert (= (and b!3073428 (not c!511184)) b!3073435))

(assert (= (or b!3073432 b!3073439) bm!213616))

(assert (= (or b!3073432 b!3073439) bm!213615))

(assert (= (or b!3073420 b!3073439) bm!213617))

(assert (= (or b!3073432 b!3073430) bm!213612))

(assert (= (or b!3073417 b!3073434) bm!213614))

(assert (= (or b!3073431 bm!213616) bm!213618))

(assert (= (or b!3073431 bm!213612) bm!213613))

(assert (= (and d!856509 res!1261322) b!3073437))

(declare-fun m!3386639 () Bool)

(assert (=> bm!213614 m!3386639))

(declare-fun m!3386641 () Bool)

(assert (=> b!3073428 m!3386641))

(declare-fun m!3386643 () Bool)

(assert (=> bm!213613 m!3386643))

(declare-fun m!3386645 () Bool)

(assert (=> bm!213615 m!3386645))

(declare-fun m!3386647 () Bool)

(assert (=> bm!213617 m!3386647))

(declare-fun m!3386649 () Bool)

(assert (=> bm!213618 m!3386649))

(declare-fun m!3386651 () Bool)

(assert (=> d!856509 m!3386651))

(assert (=> d!856509 m!3386377))

(declare-fun m!3386653 () Bool)

(assert (=> b!3073437 m!3386653))

(assert (=> b!3073437 m!3386601))

(assert (=> b!3072782 d!856509))

(declare-fun bm!213619 () Bool)

(declare-fun call!213629 () Bool)

(declare-fun call!213628 () Bool)

(assert (=> bm!213619 (= call!213629 call!213628)))

(declare-fun b!3073440 () Bool)

(declare-fun e!1923274 () Regex!9519)

(declare-fun lt!1051942 () Regex!9519)

(assert (=> b!3073440 (= e!1923274 lt!1051942)))

(declare-fun b!3073441 () Bool)

(declare-fun e!1923276 () Regex!9519)

(assert (=> b!3073441 (= e!1923276 EmptyExpr!9519)))

(declare-fun lt!1051939 () Regex!9519)

(declare-fun c!511190 () Bool)

(declare-fun lt!1051938 () Regex!9519)

(declare-fun c!511194 () Bool)

(declare-fun bm!213620 () Bool)

(assert (=> bm!213620 (= call!213628 (isEmptyLang!570 (ite c!511194 lt!1051939 (ite c!511190 lt!1051942 lt!1051938))))))

(declare-fun b!3073442 () Bool)

(declare-fun e!1923275 () Bool)

(declare-fun call!213627 () Bool)

(assert (=> b!3073442 (= e!1923275 call!213627)))

(declare-fun b!3073443 () Bool)

(assert (=> b!3073443 (= c!511190 ((_ is Union!9519) (regOne!19550 r!17423)))))

(declare-fun e!1923277 () Regex!9519)

(declare-fun e!1923278 () Regex!9519)

(assert (=> b!3073443 (= e!1923277 e!1923278)))

(declare-fun b!3073444 () Bool)

(declare-fun e!1923271 () Regex!9519)

(declare-fun lt!1051940 () Regex!9519)

(assert (=> b!3073444 (= e!1923271 lt!1051940)))

(declare-fun bm!213621 () Bool)

(assert (=> bm!213621 (= call!213627 (isEmptyExpr!576 (ite c!511194 lt!1051939 lt!1051940)))))

(declare-fun b!3073445 () Bool)

(declare-fun c!511196 () Bool)

(declare-fun call!213626 () Bool)

(assert (=> b!3073445 (= c!511196 call!213626)))

(declare-fun e!1923280 () Regex!9519)

(assert (=> b!3073445 (= e!1923280 e!1923274)))

(declare-fun b!3073446 () Bool)

(declare-fun e!1923272 () Regex!9519)

(assert (=> b!3073446 (= e!1923272 EmptyLang!9519)))

(declare-fun b!3073447 () Bool)

(assert (=> b!3073447 (= e!1923276 e!1923277)))

(assert (=> b!3073447 (= c!511194 ((_ is Star!9519) (regOne!19550 r!17423)))))

(declare-fun bm!213622 () Bool)

(declare-fun call!213624 () Regex!9519)

(assert (=> bm!213622 (= call!213624 (simplify!474 (ite c!511190 (regTwo!19551 (regOne!19550 r!17423)) (regOne!19550 (regOne!19550 r!17423)))))))

(declare-fun b!3073448 () Bool)

(declare-fun e!1923270 () Regex!9519)

(assert (=> b!3073448 (= e!1923270 EmptyLang!9519)))

(declare-fun b!3073449 () Bool)

(declare-fun e!1923282 () Regex!9519)

(assert (=> b!3073449 (= e!1923282 (regOne!19550 r!17423))))

(declare-fun d!856511 () Bool)

(declare-fun e!1923273 () Bool)

(assert (=> d!856511 e!1923273))

(declare-fun res!1261325 () Bool)

(assert (=> d!856511 (=> (not res!1261325) (not e!1923273))))

(declare-fun lt!1051941 () Regex!9519)

(assert (=> d!856511 (= res!1261325 (validRegex!4252 lt!1051941))))

(assert (=> d!856511 (= lt!1051941 e!1923270)))

(declare-fun c!511191 () Bool)

(assert (=> d!856511 (= c!511191 ((_ is EmptyLang!9519) (regOne!19550 r!17423)))))

(assert (=> d!856511 (validRegex!4252 (regOne!19550 r!17423))))

(assert (=> d!856511 (= (simplify!474 (regOne!19550 r!17423)) lt!1051941)))

(declare-fun b!3073450 () Bool)

(declare-fun e!1923283 () Regex!9519)

(assert (=> b!3073450 (= e!1923283 EmptyExpr!9519)))

(declare-fun b!3073451 () Bool)

(declare-fun e!1923279 () Regex!9519)

(assert (=> b!3073451 (= e!1923279 lt!1051938)))

(declare-fun b!3073452 () Bool)

(declare-fun lt!1051943 () Regex!9519)

(assert (=> b!3073452 (= e!1923280 lt!1051943)))

(declare-fun b!3073453 () Bool)

(assert (=> b!3073453 (= e!1923279 e!1923271)))

(declare-fun c!511195 () Bool)

(assert (=> b!3073453 (= c!511195 (isEmptyExpr!576 lt!1051938))))

(declare-fun b!3073454 () Bool)

(assert (=> b!3073454 (= e!1923283 (Star!9519 lt!1051939))))

(declare-fun b!3073455 () Bool)

(declare-fun e!1923281 () Bool)

(assert (=> b!3073455 (= e!1923281 call!213629)))

(declare-fun bm!213623 () Bool)

(declare-fun call!213625 () Regex!9519)

(declare-fun call!213630 () Regex!9519)

(assert (=> bm!213623 (= call!213625 call!213630)))

(declare-fun bm!213624 () Bool)

(assert (=> bm!213624 (= call!213626 (isEmptyLang!570 (ite c!511190 lt!1051943 lt!1051940)))))

(declare-fun b!3073456 () Bool)

(declare-fun c!511187 () Bool)

(assert (=> b!3073456 (= c!511187 e!1923275)))

(declare-fun res!1261324 () Bool)

(assert (=> b!3073456 (=> res!1261324 e!1923275)))

(assert (=> b!3073456 (= res!1261324 call!213628)))

(assert (=> b!3073456 (= lt!1051939 call!213630)))

(assert (=> b!3073456 (= e!1923277 e!1923283)))

(declare-fun bm!213625 () Bool)

(assert (=> bm!213625 (= call!213630 (simplify!474 (ite c!511194 (reg!9848 (regOne!19550 r!17423)) (ite c!511190 (regOne!19551 (regOne!19550 r!17423)) (regTwo!19550 (regOne!19550 r!17423))))))))

(declare-fun b!3073457 () Bool)

(assert (=> b!3073457 (= e!1923278 e!1923280)))

(assert (=> b!3073457 (= lt!1051942 call!213625)))

(assert (=> b!3073457 (= lt!1051943 call!213624)))

(declare-fun c!511192 () Bool)

(assert (=> b!3073457 (= c!511192 call!213629)))

(declare-fun b!3073458 () Bool)

(assert (=> b!3073458 (= e!1923270 e!1923282)))

(declare-fun c!511193 () Bool)

(assert (=> b!3073458 (= c!511193 ((_ is ElementMatch!9519) (regOne!19550 r!17423)))))

(declare-fun b!3073459 () Bool)

(declare-fun c!511189 () Bool)

(assert (=> b!3073459 (= c!511189 call!213627)))

(assert (=> b!3073459 (= e!1923272 e!1923279)))

(declare-fun b!3073460 () Bool)

(assert (=> b!3073460 (= e!1923271 (Concat!14840 lt!1051940 lt!1051938))))

(declare-fun b!3073461 () Bool)

(declare-fun c!511188 () Bool)

(assert (=> b!3073461 (= c!511188 ((_ is EmptyExpr!9519) (regOne!19550 r!17423)))))

(assert (=> b!3073461 (= e!1923282 e!1923276)))

(declare-fun b!3073462 () Bool)

(assert (=> b!3073462 (= e!1923273 (= (nullable!3165 lt!1051941) (nullable!3165 (regOne!19550 r!17423))))))

(declare-fun b!3073463 () Bool)

(assert (=> b!3073463 (= e!1923274 (Union!9519 lt!1051942 lt!1051943))))

(declare-fun b!3073464 () Bool)

(assert (=> b!3073464 (= e!1923278 e!1923272)))

(assert (=> b!3073464 (= lt!1051940 call!213624)))

(assert (=> b!3073464 (= lt!1051938 call!213625)))

(declare-fun res!1261326 () Bool)

(assert (=> b!3073464 (= res!1261326 call!213626)))

(assert (=> b!3073464 (=> res!1261326 e!1923281)))

(declare-fun c!511186 () Bool)

(assert (=> b!3073464 (= c!511186 e!1923281)))

(assert (= (and d!856511 c!511191) b!3073448))

(assert (= (and d!856511 (not c!511191)) b!3073458))

(assert (= (and b!3073458 c!511193) b!3073449))

(assert (= (and b!3073458 (not c!511193)) b!3073461))

(assert (= (and b!3073461 c!511188) b!3073441))

(assert (= (and b!3073461 (not c!511188)) b!3073447))

(assert (= (and b!3073447 c!511194) b!3073456))

(assert (= (and b!3073447 (not c!511194)) b!3073443))

(assert (= (and b!3073456 (not res!1261324)) b!3073442))

(assert (= (and b!3073456 c!511187) b!3073450))

(assert (= (and b!3073456 (not c!511187)) b!3073454))

(assert (= (and b!3073443 c!511190) b!3073457))

(assert (= (and b!3073443 (not c!511190)) b!3073464))

(assert (= (and b!3073457 c!511192) b!3073452))

(assert (= (and b!3073457 (not c!511192)) b!3073445))

(assert (= (and b!3073445 c!511196) b!3073440))

(assert (= (and b!3073445 (not c!511196)) b!3073463))

(assert (= (and b!3073464 (not res!1261326)) b!3073455))

(assert (= (and b!3073464 c!511186) b!3073446))

(assert (= (and b!3073464 (not c!511186)) b!3073459))

(assert (= (and b!3073459 c!511189) b!3073451))

(assert (= (and b!3073459 (not c!511189)) b!3073453))

(assert (= (and b!3073453 c!511195) b!3073444))

(assert (= (and b!3073453 (not c!511195)) b!3073460))

(assert (= (or b!3073457 b!3073464) bm!213623))

(assert (= (or b!3073457 b!3073464) bm!213622))

(assert (= (or b!3073445 b!3073464) bm!213624))

(assert (= (or b!3073457 b!3073455) bm!213619))

(assert (= (or b!3073442 b!3073459) bm!213621))

(assert (= (or b!3073456 bm!213623) bm!213625))

(assert (= (or b!3073456 bm!213619) bm!213620))

(assert (= (and d!856511 res!1261325) b!3073462))

(declare-fun m!3386655 () Bool)

(assert (=> bm!213621 m!3386655))

(declare-fun m!3386657 () Bool)

(assert (=> b!3073453 m!3386657))

(declare-fun m!3386659 () Bool)

(assert (=> bm!213620 m!3386659))

(declare-fun m!3386661 () Bool)

(assert (=> bm!213622 m!3386661))

(declare-fun m!3386663 () Bool)

(assert (=> bm!213624 m!3386663))

(declare-fun m!3386665 () Bool)

(assert (=> bm!213625 m!3386665))

(declare-fun m!3386667 () Bool)

(assert (=> d!856511 m!3386667))

(assert (=> d!856511 m!3386379))

(declare-fun m!3386669 () Bool)

(assert (=> b!3073462 m!3386669))

(assert (=> b!3073462 m!3386589))

(assert (=> b!3072782 d!856511))

(declare-fun b!3073468 () Bool)

(declare-fun e!1923284 () Bool)

(declare-fun lt!1051944 () List!35384)

(assert (=> b!3073468 (= e!1923284 (or (not (= Nil!35260 Nil!35260)) (= lt!1051944 s!11993)))))

(declare-fun b!3073466 () Bool)

(declare-fun e!1923285 () List!35384)

(assert (=> b!3073466 (= e!1923285 (Cons!35260 (h!40680 s!11993) (++!8470 (t!234449 s!11993) Nil!35260)))))

(declare-fun b!3073467 () Bool)

(declare-fun res!1261328 () Bool)

(assert (=> b!3073467 (=> (not res!1261328) (not e!1923284))))

(assert (=> b!3073467 (= res!1261328 (= (size!26564 lt!1051944) (+ (size!26564 s!11993) (size!26564 Nil!35260))))))

(declare-fun d!856513 () Bool)

(assert (=> d!856513 e!1923284))

(declare-fun res!1261327 () Bool)

(assert (=> d!856513 (=> (not res!1261327) (not e!1923284))))

(assert (=> d!856513 (= res!1261327 (= (content!4809 lt!1051944) ((_ map or) (content!4809 s!11993) (content!4809 Nil!35260))))))

(assert (=> d!856513 (= lt!1051944 e!1923285)))

(declare-fun c!511197 () Bool)

(assert (=> d!856513 (= c!511197 ((_ is Nil!35260) s!11993))))

(assert (=> d!856513 (= (++!8470 s!11993 Nil!35260) lt!1051944)))

(declare-fun b!3073465 () Bool)

(assert (=> b!3073465 (= e!1923285 Nil!35260)))

(assert (= (and d!856513 c!511197) b!3073465))

(assert (= (and d!856513 (not c!511197)) b!3073466))

(assert (= (and d!856513 res!1261327) b!3073467))

(assert (= (and b!3073467 res!1261328) b!3073468))

(declare-fun m!3386671 () Bool)

(assert (=> b!3073466 m!3386671))

(declare-fun m!3386673 () Bool)

(assert (=> b!3073467 m!3386673))

(assert (=> b!3073467 m!3386573))

(assert (=> b!3073467 m!3386571))

(declare-fun m!3386675 () Bool)

(assert (=> d!856513 m!3386675))

(assert (=> d!856513 m!3386579))

(assert (=> d!856513 m!3386577))

(assert (=> b!3072793 d!856513))

(declare-fun b!3073473 () Bool)

(declare-fun e!1923288 () Bool)

(declare-fun tp!969162 () Bool)

(assert (=> b!3073473 (= e!1923288 (and tp_is_empty!16601 tp!969162))))

(assert (=> b!3072781 (= tp!969121 e!1923288)))

(assert (= (and b!3072781 ((_ is Cons!35260) (t!234449 s!11993))) b!3073473))

(declare-fun b!3073487 () Bool)

(declare-fun e!1923291 () Bool)

(declare-fun tp!969177 () Bool)

(declare-fun tp!969175 () Bool)

(assert (=> b!3073487 (= e!1923291 (and tp!969177 tp!969175))))

(declare-fun b!3073486 () Bool)

(declare-fun tp!969176 () Bool)

(assert (=> b!3073486 (= e!1923291 tp!969176)))

(declare-fun b!3073484 () Bool)

(assert (=> b!3073484 (= e!1923291 tp_is_empty!16601)))

(declare-fun b!3073485 () Bool)

(declare-fun tp!969174 () Bool)

(declare-fun tp!969173 () Bool)

(assert (=> b!3073485 (= e!1923291 (and tp!969174 tp!969173))))

(assert (=> b!3072783 (= tp!969116 e!1923291)))

(assert (= (and b!3072783 ((_ is ElementMatch!9519) (regOne!19551 r!17423))) b!3073484))

(assert (= (and b!3072783 ((_ is Concat!14840) (regOne!19551 r!17423))) b!3073485))

(assert (= (and b!3072783 ((_ is Star!9519) (regOne!19551 r!17423))) b!3073486))

(assert (= (and b!3072783 ((_ is Union!9519) (regOne!19551 r!17423))) b!3073487))

(declare-fun b!3073491 () Bool)

(declare-fun e!1923292 () Bool)

(declare-fun tp!969182 () Bool)

(declare-fun tp!969180 () Bool)

(assert (=> b!3073491 (= e!1923292 (and tp!969182 tp!969180))))

(declare-fun b!3073490 () Bool)

(declare-fun tp!969181 () Bool)

(assert (=> b!3073490 (= e!1923292 tp!969181)))

(declare-fun b!3073488 () Bool)

(assert (=> b!3073488 (= e!1923292 tp_is_empty!16601)))

(declare-fun b!3073489 () Bool)

(declare-fun tp!969179 () Bool)

(declare-fun tp!969178 () Bool)

(assert (=> b!3073489 (= e!1923292 (and tp!969179 tp!969178))))

(assert (=> b!3072783 (= tp!969117 e!1923292)))

(assert (= (and b!3072783 ((_ is ElementMatch!9519) (regTwo!19551 r!17423))) b!3073488))

(assert (= (and b!3072783 ((_ is Concat!14840) (regTwo!19551 r!17423))) b!3073489))

(assert (= (and b!3072783 ((_ is Star!9519) (regTwo!19551 r!17423))) b!3073490))

(assert (= (and b!3072783 ((_ is Union!9519) (regTwo!19551 r!17423))) b!3073491))

(declare-fun b!3073495 () Bool)

(declare-fun e!1923293 () Bool)

(declare-fun tp!969187 () Bool)

(declare-fun tp!969185 () Bool)

(assert (=> b!3073495 (= e!1923293 (and tp!969187 tp!969185))))

(declare-fun b!3073494 () Bool)

(declare-fun tp!969186 () Bool)

(assert (=> b!3073494 (= e!1923293 tp!969186)))

(declare-fun b!3073492 () Bool)

(assert (=> b!3073492 (= e!1923293 tp_is_empty!16601)))

(declare-fun b!3073493 () Bool)

(declare-fun tp!969184 () Bool)

(declare-fun tp!969183 () Bool)

(assert (=> b!3073493 (= e!1923293 (and tp!969184 tp!969183))))

(assert (=> b!3072789 (= tp!969120 e!1923293)))

(assert (= (and b!3072789 ((_ is ElementMatch!9519) (reg!9848 r!17423))) b!3073492))

(assert (= (and b!3072789 ((_ is Concat!14840) (reg!9848 r!17423))) b!3073493))

(assert (= (and b!3072789 ((_ is Star!9519) (reg!9848 r!17423))) b!3073494))

(assert (= (and b!3072789 ((_ is Union!9519) (reg!9848 r!17423))) b!3073495))

(declare-fun b!3073499 () Bool)

(declare-fun e!1923294 () Bool)

(declare-fun tp!969192 () Bool)

(declare-fun tp!969190 () Bool)

(assert (=> b!3073499 (= e!1923294 (and tp!969192 tp!969190))))

(declare-fun b!3073498 () Bool)

(declare-fun tp!969191 () Bool)

(assert (=> b!3073498 (= e!1923294 tp!969191)))

(declare-fun b!3073496 () Bool)

(assert (=> b!3073496 (= e!1923294 tp_is_empty!16601)))

(declare-fun b!3073497 () Bool)

(declare-fun tp!969189 () Bool)

(declare-fun tp!969188 () Bool)

(assert (=> b!3073497 (= e!1923294 (and tp!969189 tp!969188))))

(assert (=> b!3072792 (= tp!969119 e!1923294)))

(assert (= (and b!3072792 ((_ is ElementMatch!9519) (regOne!19550 r!17423))) b!3073496))

(assert (= (and b!3072792 ((_ is Concat!14840) (regOne!19550 r!17423))) b!3073497))

(assert (= (and b!3072792 ((_ is Star!9519) (regOne!19550 r!17423))) b!3073498))

(assert (= (and b!3072792 ((_ is Union!9519) (regOne!19550 r!17423))) b!3073499))

(declare-fun b!3073503 () Bool)

(declare-fun e!1923295 () Bool)

(declare-fun tp!969197 () Bool)

(declare-fun tp!969195 () Bool)

(assert (=> b!3073503 (= e!1923295 (and tp!969197 tp!969195))))

(declare-fun b!3073502 () Bool)

(declare-fun tp!969196 () Bool)

(assert (=> b!3073502 (= e!1923295 tp!969196)))

(declare-fun b!3073500 () Bool)

(assert (=> b!3073500 (= e!1923295 tp_is_empty!16601)))

(declare-fun b!3073501 () Bool)

(declare-fun tp!969194 () Bool)

(declare-fun tp!969193 () Bool)

(assert (=> b!3073501 (= e!1923295 (and tp!969194 tp!969193))))

(assert (=> b!3072792 (= tp!969118 e!1923295)))

(assert (= (and b!3072792 ((_ is ElementMatch!9519) (regTwo!19550 r!17423))) b!3073500))

(assert (= (and b!3072792 ((_ is Concat!14840) (regTwo!19550 r!17423))) b!3073501))

(assert (= (and b!3072792 ((_ is Star!9519) (regTwo!19550 r!17423))) b!3073502))

(assert (= (and b!3072792 ((_ is Union!9519) (regTwo!19550 r!17423))) b!3073503))

(check-sat (not bm!213577) (not b!3073208) (not bm!213617) (not b!3073308) (not bm!213591) (not d!856489) (not b!3073211) (not b!3073314) (not b!3073276) (not bm!213595) (not b!3073333) (not b!3073303) (not b!3073296) (not b!3073133) (not d!856485) (not b!3073313) (not b!3073486) (not b!3073305) (not d!856491) (not bm!213625) (not b!3073428) (not b!3073503) (not b!3073453) (not b!3073485) (not b!3073291) (not b!3073489) (not b!3073310) (not b!3073339) (not d!856487) (not b!3073285) (not bm!213592) (not bm!213588) (not d!856511) (not bm!213613) (not bm!213578) (not b!3073328) (not b!3073217) (not d!856475) (not bm!213618) (not b!3073322) (not d!856513) (not b!3073348) (not bm!213622) (not bm!213593) (not b!3073212) (not b!3073490) (not b!3073495) (not b!3073289) (not b!3073462) (not bm!213615) (not d!856481) (not bm!213614) (not b!3073363) (not b!3073215) (not b!3073282) (not d!856465) (not b!3073131) (not bm!213521) (not b!3073299) (not b!3073501) tp_is_empty!16601 (not b!3073331) (not bm!213520) (not b!3073437) (not b!3073324) (not b!3073497) (not b!3073487) (not b!3073491) (not b!3073300) (not bm!213589) (not b!3073473) (not b!3073498) (not bm!213584) (not d!856509) (not b!3073280) (not d!856483) (not bm!213620) (not b!3072820) (not b!3073362) (not bm!213621) (not b!3073327) (not b!3073206) (not b!3073494) (not bm!213624) (not b!3073466) (not b!3073317) (not bm!213596) (not b!3073499) (not b!3073502) (not b!3073364) (not d!856493) (not b!3073277) (not b!3073467) (not b!3073294) (not b!3073286) (not b!3073319) (not bm!213590) (not b!3073493))
(check-sat)
