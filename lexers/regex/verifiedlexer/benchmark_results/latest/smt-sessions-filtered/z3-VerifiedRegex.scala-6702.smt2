; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351294 () Bool)

(assert start!351294)

(declare-fun res!1516368 () Bool)

(declare-fun e!2312156 () Bool)

(assert (=> start!351294 (=> (not res!1516368) (not e!2312156))))

(declare-datatypes ((C!22072 0))(
  ( (C!22073 (val!13084 Int)) )
))
(declare-datatypes ((Regex!10943 0))(
  ( (ElementMatch!10943 (c!647627 C!22072)) (Concat!17214 (regOne!22398 Regex!10943) (regTwo!22398 Regex!10943)) (EmptyExpr!10943) (Star!10943 (reg!11272 Regex!10943)) (EmptyLang!10943) (Union!10943 (regOne!22399 Regex!10943) (regTwo!22399 Regex!10943)) )
))
(declare-fun r!26968 () Regex!10943)

(declare-fun validRegex!5050 (Regex!10943) Bool)

(assert (=> start!351294 (= res!1516368 (validRegex!5050 r!26968))))

(assert (=> start!351294 e!2312156))

(declare-fun e!2312155 () Bool)

(assert (=> start!351294 e!2312155))

(declare-fun tp_is_empty!18901 () Bool)

(assert (=> start!351294 tp_is_empty!18901))

(declare-fun b!3738825 () Bool)

(declare-fun res!1516369 () Bool)

(assert (=> b!3738825 (=> (not res!1516369) (not e!2312156))))

(declare-fun cNot!42 () C!22072)

(declare-datatypes ((List!39824 0))(
  ( (Nil!39700) (Cons!39700 (h!45120 C!22072) (t!302507 List!39824)) )
))
(declare-fun contains!8036 (List!39824 C!22072) Bool)

(declare-fun usedCharacters!1206 (Regex!10943) List!39824)

(assert (=> b!3738825 (= res!1516369 (not (contains!8036 (usedCharacters!1206 (regOne!22398 r!26968)) cNot!42)))))

(declare-fun b!3738826 () Bool)

(assert (=> b!3738826 (= e!2312155 tp_is_empty!18901)))

(declare-fun b!3738827 () Bool)

(declare-fun RegexPrimitiveSize!149 (Regex!10943) Int)

(assert (=> b!3738827 (= e!2312156 (>= (RegexPrimitiveSize!149 (regOne!22398 r!26968)) (RegexPrimitiveSize!149 r!26968)))))

(declare-fun b!3738828 () Bool)

(declare-fun res!1516367 () Bool)

(assert (=> b!3738828 (=> (not res!1516367) (not e!2312156))))

(declare-fun nullable!3851 (Regex!10943) Bool)

(assert (=> b!3738828 (= res!1516367 (not (nullable!3851 (regOne!22398 r!26968))))))

(declare-fun b!3738829 () Bool)

(declare-fun res!1516372 () Bool)

(assert (=> b!3738829 (=> (not res!1516372) (not e!2312156))))

(assert (=> b!3738829 (= res!1516372 (validRegex!5050 (regOne!22398 r!26968)))))

(declare-fun b!3738830 () Bool)

(declare-fun res!1516371 () Bool)

(assert (=> b!3738830 (=> (not res!1516371) (not e!2312156))))

(assert (=> b!3738830 (= res!1516371 (not (contains!8036 (usedCharacters!1206 r!26968) cNot!42)))))

(declare-fun b!3738831 () Bool)

(declare-fun tp!1138782 () Bool)

(declare-fun tp!1138780 () Bool)

(assert (=> b!3738831 (= e!2312155 (and tp!1138782 tp!1138780))))

(declare-fun b!3738832 () Bool)

(declare-fun res!1516370 () Bool)

(assert (=> b!3738832 (=> (not res!1516370) (not e!2312156))))

(get-info :version)

(assert (=> b!3738832 (= res!1516370 (and (not ((_ is EmptyExpr!10943) r!26968)) (not ((_ is EmptyLang!10943) r!26968)) (not ((_ is ElementMatch!10943) r!26968)) (not ((_ is Union!10943) r!26968)) (not ((_ is Star!10943) r!26968))))))

(declare-fun b!3738833 () Bool)

(declare-fun tp!1138784 () Bool)

(assert (=> b!3738833 (= e!2312155 tp!1138784)))

(declare-fun b!3738834 () Bool)

(declare-fun tp!1138781 () Bool)

(declare-fun tp!1138783 () Bool)

(assert (=> b!3738834 (= e!2312155 (and tp!1138781 tp!1138783))))

(assert (= (and start!351294 res!1516368) b!3738830))

(assert (= (and b!3738830 res!1516371) b!3738832))

(assert (= (and b!3738832 res!1516370) b!3738828))

(assert (= (and b!3738828 res!1516367) b!3738829))

(assert (= (and b!3738829 res!1516372) b!3738825))

(assert (= (and b!3738825 res!1516369) b!3738827))

(assert (= (and start!351294 ((_ is ElementMatch!10943) r!26968)) b!3738826))

(assert (= (and start!351294 ((_ is Concat!17214) r!26968)) b!3738834))

(assert (= (and start!351294 ((_ is Star!10943) r!26968)) b!3738833))

(assert (= (and start!351294 ((_ is Union!10943) r!26968)) b!3738831))

(declare-fun m!4234639 () Bool)

(assert (=> b!3738827 m!4234639))

(declare-fun m!4234641 () Bool)

(assert (=> b!3738827 m!4234641))

(declare-fun m!4234643 () Bool)

(assert (=> start!351294 m!4234643))

(declare-fun m!4234645 () Bool)

(assert (=> b!3738828 m!4234645))

(declare-fun m!4234647 () Bool)

(assert (=> b!3738830 m!4234647))

(assert (=> b!3738830 m!4234647))

(declare-fun m!4234649 () Bool)

(assert (=> b!3738830 m!4234649))

(declare-fun m!4234651 () Bool)

(assert (=> b!3738829 m!4234651))

(declare-fun m!4234653 () Bool)

(assert (=> b!3738825 m!4234653))

(assert (=> b!3738825 m!4234653))

(declare-fun m!4234655 () Bool)

(assert (=> b!3738825 m!4234655))

(check-sat (not b!3738833) (not b!3738834) (not b!3738829) (not b!3738830) (not b!3738825) tp_is_empty!18901 (not b!3738828) (not b!3738831) (not b!3738827) (not start!351294))
(check-sat)
(get-model)

(declare-fun d!1092073 () Bool)

(declare-fun nullableFct!1103 (Regex!10943) Bool)

(assert (=> d!1092073 (= (nullable!3851 (regOne!22398 r!26968)) (nullableFct!1103 (regOne!22398 r!26968)))))

(declare-fun bs!575204 () Bool)

(assert (= bs!575204 d!1092073))

(declare-fun m!4234657 () Bool)

(assert (=> bs!575204 m!4234657))

(assert (=> b!3738828 d!1092073))

(declare-fun bm!274098 () Bool)

(declare-fun call!274104 () Bool)

(declare-fun c!647637 () Bool)

(assert (=> bm!274098 (= call!274104 (validRegex!5050 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))))))

(declare-fun b!3738869 () Bool)

(declare-fun e!2312185 () Bool)

(declare-fun call!274105 () Bool)

(assert (=> b!3738869 (= e!2312185 call!274105)))

(declare-fun b!3738870 () Bool)

(declare-fun e!2312191 () Bool)

(declare-fun call!274103 () Bool)

(assert (=> b!3738870 (= e!2312191 call!274103)))

(declare-fun c!647636 () Bool)

(declare-fun bm!274099 () Bool)

(assert (=> bm!274099 (= call!274103 (validRegex!5050 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))))))

(declare-fun b!3738871 () Bool)

(declare-fun e!2312187 () Bool)

(assert (=> b!3738871 (= e!2312187 call!274105)))

(declare-fun b!3738872 () Bool)

(declare-fun res!1516391 () Bool)

(declare-fun e!2312184 () Bool)

(assert (=> b!3738872 (=> res!1516391 e!2312184)))

(assert (=> b!3738872 (= res!1516391 (not ((_ is Concat!17214) r!26968)))))

(declare-fun e!2312188 () Bool)

(assert (=> b!3738872 (= e!2312188 e!2312184)))

(declare-fun b!3738873 () Bool)

(declare-fun res!1516393 () Bool)

(assert (=> b!3738873 (=> (not res!1516393) (not e!2312187))))

(assert (=> b!3738873 (= res!1516393 call!274104)))

(assert (=> b!3738873 (= e!2312188 e!2312187)))

(declare-fun b!3738874 () Bool)

(assert (=> b!3738874 (= e!2312184 e!2312185)))

(declare-fun res!1516394 () Bool)

(assert (=> b!3738874 (=> (not res!1516394) (not e!2312185))))

(assert (=> b!3738874 (= res!1516394 call!274104)))

(declare-fun b!3738875 () Bool)

(declare-fun e!2312186 () Bool)

(declare-fun e!2312183 () Bool)

(assert (=> b!3738875 (= e!2312186 e!2312183)))

(assert (=> b!3738875 (= c!647636 ((_ is Star!10943) r!26968))))

(declare-fun b!3738878 () Bool)

(assert (=> b!3738878 (= e!2312183 e!2312191)))

(declare-fun res!1516392 () Bool)

(assert (=> b!3738878 (= res!1516392 (not (nullable!3851 (reg!11272 r!26968))))))

(assert (=> b!3738878 (=> (not res!1516392) (not e!2312191))))

(declare-fun d!1092075 () Bool)

(declare-fun res!1516395 () Bool)

(assert (=> d!1092075 (=> res!1516395 e!2312186)))

(assert (=> d!1092075 (= res!1516395 ((_ is ElementMatch!10943) r!26968))))

(assert (=> d!1092075 (= (validRegex!5050 r!26968) e!2312186)))

(declare-fun b!3738879 () Bool)

(assert (=> b!3738879 (= e!2312183 e!2312188)))

(assert (=> b!3738879 (= c!647637 ((_ is Union!10943) r!26968))))

(declare-fun bm!274100 () Bool)

(assert (=> bm!274100 (= call!274105 call!274103)))

(assert (= (and d!1092075 (not res!1516395)) b!3738875))

(assert (= (and b!3738875 c!647636) b!3738878))

(assert (= (and b!3738875 (not c!647636)) b!3738879))

(assert (= (and b!3738878 res!1516392) b!3738870))

(assert (= (and b!3738879 c!647637) b!3738873))

(assert (= (and b!3738879 (not c!647637)) b!3738872))

(assert (= (and b!3738873 res!1516393) b!3738871))

(assert (= (and b!3738872 (not res!1516391)) b!3738874))

(assert (= (and b!3738874 res!1516394) b!3738869))

(assert (= (or b!3738871 b!3738869) bm!274100))

(assert (= (or b!3738873 b!3738874) bm!274098))

(assert (= (or b!3738870 bm!274100) bm!274099))

(declare-fun m!4234659 () Bool)

(assert (=> bm!274098 m!4234659))

(declare-fun m!4234661 () Bool)

(assert (=> bm!274099 m!4234661))

(declare-fun m!4234663 () Bool)

(assert (=> b!3738878 m!4234663))

(assert (=> start!351294 d!1092075))

(declare-fun c!647651 () Bool)

(declare-fun bm!274113 () Bool)

(declare-fun c!647650 () Bool)

(declare-fun call!274119 () Int)

(assert (=> bm!274113 (= call!274119 (RegexPrimitiveSize!149 (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))))))

(declare-fun d!1092079 () Bool)

(declare-fun lt!1299101 () Int)

(assert (=> d!1092079 (>= lt!1299101 0)))

(declare-fun e!2312206 () Int)

(assert (=> d!1092079 (= lt!1299101 e!2312206)))

(declare-fun c!647648 () Bool)

(assert (=> d!1092079 (= c!647648 ((_ is ElementMatch!10943) (regOne!22398 r!26968)))))

(assert (=> d!1092079 (= (RegexPrimitiveSize!149 (regOne!22398 r!26968)) lt!1299101)))

(declare-fun b!3738900 () Bool)

(assert (=> b!3738900 (= e!2312206 1)))

(declare-fun b!3738901 () Bool)

(declare-fun c!647649 () Bool)

(assert (=> b!3738901 (= c!647649 ((_ is EmptyLang!10943) (regOne!22398 r!26968)))))

(declare-fun e!2312205 () Int)

(declare-fun e!2312203 () Int)

(assert (=> b!3738901 (= e!2312205 e!2312203)))

(declare-fun bm!274114 () Bool)

(declare-fun call!274120 () Int)

(assert (=> bm!274114 (= call!274120 call!274119)))

(declare-fun b!3738902 () Bool)

(assert (=> b!3738902 (= e!2312205 (+ 1 call!274120))))

(declare-fun b!3738903 () Bool)

(declare-fun e!2312204 () Int)

(declare-fun call!274118 () Int)

(assert (=> b!3738903 (= e!2312204 (+ 1 call!274119 call!274118))))

(declare-fun b!3738904 () Bool)

(assert (=> b!3738904 (= e!2312206 e!2312204)))

(assert (=> b!3738904 (= c!647651 ((_ is Concat!17214) (regOne!22398 r!26968)))))

(declare-fun bm!274115 () Bool)

(assert (=> bm!274115 (= call!274118 (RegexPrimitiveSize!149 (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))))))

(declare-fun b!3738905 () Bool)

(declare-fun e!2312202 () Int)

(assert (=> b!3738905 (= e!2312202 0)))

(declare-fun b!3738906 () Bool)

(assert (=> b!3738906 (= e!2312203 0)))

(declare-fun b!3738907 () Bool)

(assert (=> b!3738907 (= e!2312202 e!2312205)))

(assert (=> b!3738907 (= c!647650 ((_ is Star!10943) (regOne!22398 r!26968)))))

(declare-fun b!3738908 () Bool)

(assert (=> b!3738908 (= e!2312203 (+ 1 call!274120 call!274118))))

(declare-fun b!3738909 () Bool)

(declare-fun c!647652 () Bool)

(assert (=> b!3738909 (= c!647652 ((_ is EmptyExpr!10943) (regOne!22398 r!26968)))))

(assert (=> b!3738909 (= e!2312204 e!2312202)))

(assert (= (and d!1092079 c!647648) b!3738900))

(assert (= (and d!1092079 (not c!647648)) b!3738904))

(assert (= (and b!3738904 c!647651) b!3738903))

(assert (= (and b!3738904 (not c!647651)) b!3738909))

(assert (= (and b!3738909 c!647652) b!3738905))

(assert (= (and b!3738909 (not c!647652)) b!3738907))

(assert (= (and b!3738907 c!647650) b!3738902))

(assert (= (and b!3738907 (not c!647650)) b!3738901))

(assert (= (and b!3738901 c!647649) b!3738906))

(assert (= (and b!3738901 (not c!647649)) b!3738908))

(assert (= (or b!3738902 b!3738908) bm!274114))

(assert (= (or b!3738903 bm!274114) bm!274113))

(assert (= (or b!3738903 b!3738908) bm!274115))

(declare-fun m!4234665 () Bool)

(assert (=> bm!274113 m!4234665))

(declare-fun m!4234667 () Bool)

(assert (=> bm!274115 m!4234667))

(assert (=> b!3738827 d!1092079))

(declare-fun c!647656 () Bool)

(declare-fun bm!274116 () Bool)

(declare-fun c!647655 () Bool)

(declare-fun call!274122 () Int)

(assert (=> bm!274116 (= call!274122 (RegexPrimitiveSize!149 (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))))))

(declare-fun d!1092081 () Bool)

(declare-fun lt!1299102 () Int)

(assert (=> d!1092081 (>= lt!1299102 0)))

(declare-fun e!2312211 () Int)

(assert (=> d!1092081 (= lt!1299102 e!2312211)))

(declare-fun c!647653 () Bool)

(assert (=> d!1092081 (= c!647653 ((_ is ElementMatch!10943) r!26968))))

(assert (=> d!1092081 (= (RegexPrimitiveSize!149 r!26968) lt!1299102)))

(declare-fun b!3738910 () Bool)

(assert (=> b!3738910 (= e!2312211 1)))

(declare-fun b!3738911 () Bool)

(declare-fun c!647654 () Bool)

(assert (=> b!3738911 (= c!647654 ((_ is EmptyLang!10943) r!26968))))

(declare-fun e!2312210 () Int)

(declare-fun e!2312208 () Int)

(assert (=> b!3738911 (= e!2312210 e!2312208)))

(declare-fun bm!274117 () Bool)

(declare-fun call!274123 () Int)

(assert (=> bm!274117 (= call!274123 call!274122)))

(declare-fun b!3738912 () Bool)

(assert (=> b!3738912 (= e!2312210 (+ 1 call!274123))))

(declare-fun b!3738913 () Bool)

(declare-fun e!2312209 () Int)

(declare-fun call!274121 () Int)

(assert (=> b!3738913 (= e!2312209 (+ 1 call!274122 call!274121))))

(declare-fun b!3738914 () Bool)

(assert (=> b!3738914 (= e!2312211 e!2312209)))

(assert (=> b!3738914 (= c!647656 ((_ is Concat!17214) r!26968))))

(declare-fun bm!274118 () Bool)

(assert (=> bm!274118 (= call!274121 (RegexPrimitiveSize!149 (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))))))

(declare-fun b!3738915 () Bool)

(declare-fun e!2312207 () Int)

(assert (=> b!3738915 (= e!2312207 0)))

(declare-fun b!3738916 () Bool)

(assert (=> b!3738916 (= e!2312208 0)))

(declare-fun b!3738917 () Bool)

(assert (=> b!3738917 (= e!2312207 e!2312210)))

(assert (=> b!3738917 (= c!647655 ((_ is Star!10943) r!26968))))

(declare-fun b!3738918 () Bool)

(assert (=> b!3738918 (= e!2312208 (+ 1 call!274123 call!274121))))

(declare-fun b!3738919 () Bool)

(declare-fun c!647657 () Bool)

(assert (=> b!3738919 (= c!647657 ((_ is EmptyExpr!10943) r!26968))))

(assert (=> b!3738919 (= e!2312209 e!2312207)))

(assert (= (and d!1092081 c!647653) b!3738910))

(assert (= (and d!1092081 (not c!647653)) b!3738914))

(assert (= (and b!3738914 c!647656) b!3738913))

(assert (= (and b!3738914 (not c!647656)) b!3738919))

(assert (= (and b!3738919 c!647657) b!3738915))

(assert (= (and b!3738919 (not c!647657)) b!3738917))

(assert (= (and b!3738917 c!647655) b!3738912))

(assert (= (and b!3738917 (not c!647655)) b!3738911))

(assert (= (and b!3738911 c!647654) b!3738916))

(assert (= (and b!3738911 (not c!647654)) b!3738918))

(assert (= (or b!3738912 b!3738918) bm!274117))

(assert (= (or b!3738913 bm!274117) bm!274116))

(assert (= (or b!3738913 b!3738918) bm!274118))

(declare-fun m!4234669 () Bool)

(assert (=> bm!274116 m!4234669))

(declare-fun m!4234671 () Bool)

(assert (=> bm!274118 m!4234671))

(assert (=> b!3738827 d!1092081))

(declare-fun d!1092083 () Bool)

(declare-fun lt!1299105 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5799 (List!39824) (InoxSet C!22072))

(assert (=> d!1092083 (= lt!1299105 (select (content!5799 (usedCharacters!1206 (regOne!22398 r!26968))) cNot!42))))

(declare-fun e!2312224 () Bool)

(assert (=> d!1092083 (= lt!1299105 e!2312224)))

(declare-fun res!1516408 () Bool)

(assert (=> d!1092083 (=> (not res!1516408) (not e!2312224))))

(assert (=> d!1092083 (= res!1516408 ((_ is Cons!39700) (usedCharacters!1206 (regOne!22398 r!26968))))))

(assert (=> d!1092083 (= (contains!8036 (usedCharacters!1206 (regOne!22398 r!26968)) cNot!42) lt!1299105)))

(declare-fun b!3738933 () Bool)

(declare-fun e!2312223 () Bool)

(assert (=> b!3738933 (= e!2312224 e!2312223)))

(declare-fun res!1516407 () Bool)

(assert (=> b!3738933 (=> res!1516407 e!2312223)))

(assert (=> b!3738933 (= res!1516407 (= (h!45120 (usedCharacters!1206 (regOne!22398 r!26968))) cNot!42))))

(declare-fun b!3738934 () Bool)

(assert (=> b!3738934 (= e!2312223 (contains!8036 (t!302507 (usedCharacters!1206 (regOne!22398 r!26968))) cNot!42))))

(assert (= (and d!1092083 res!1516408) b!3738933))

(assert (= (and b!3738933 (not res!1516407)) b!3738934))

(assert (=> d!1092083 m!4234653))

(declare-fun m!4234679 () Bool)

(assert (=> d!1092083 m!4234679))

(declare-fun m!4234681 () Bool)

(assert (=> d!1092083 m!4234681))

(declare-fun m!4234683 () Bool)

(assert (=> b!3738934 m!4234683))

(assert (=> b!3738825 d!1092083))

(declare-fun call!274136 () List!39824)

(declare-fun call!274138 () List!39824)

(declare-fun call!274137 () List!39824)

(declare-fun bm!274130 () Bool)

(declare-fun c!647669 () Bool)

(declare-fun ++!9866 (List!39824 List!39824) List!39824)

(assert (=> bm!274130 (= call!274137 (++!9866 (ite c!647669 call!274138 call!274136) (ite c!647669 call!274136 call!274138)))))

(declare-fun bm!274131 () Bool)

(declare-fun call!274135 () List!39824)

(assert (=> bm!274131 (= call!274136 call!274135)))

(declare-fun b!3738957 () Bool)

(declare-fun c!647670 () Bool)

(assert (=> b!3738957 (= c!647670 ((_ is Star!10943) (regOne!22398 r!26968)))))

(declare-fun e!2312241 () List!39824)

(declare-fun e!2312242 () List!39824)

(assert (=> b!3738957 (= e!2312241 e!2312242)))

(declare-fun b!3738958 () Bool)

(declare-fun e!2312240 () List!39824)

(assert (=> b!3738958 (= e!2312242 e!2312240)))

(assert (=> b!3738958 (= c!647669 ((_ is Union!10943) (regOne!22398 r!26968)))))

(declare-fun bm!274132 () Bool)

(assert (=> bm!274132 (= call!274138 (usedCharacters!1206 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))

(declare-fun b!3738959 () Bool)

(assert (=> b!3738959 (= e!2312240 call!274137)))

(declare-fun d!1092087 () Bool)

(declare-fun c!647668 () Bool)

(assert (=> d!1092087 (= c!647668 (or ((_ is EmptyExpr!10943) (regOne!22398 r!26968)) ((_ is EmptyLang!10943) (regOne!22398 r!26968))))))

(declare-fun e!2312239 () List!39824)

(assert (=> d!1092087 (= (usedCharacters!1206 (regOne!22398 r!26968)) e!2312239)))

(declare-fun b!3738960 () Bool)

(assert (=> b!3738960 (= e!2312239 e!2312241)))

(declare-fun c!647671 () Bool)

(assert (=> b!3738960 (= c!647671 ((_ is ElementMatch!10943) (regOne!22398 r!26968)))))

(declare-fun b!3738961 () Bool)

(assert (=> b!3738961 (= e!2312242 call!274135)))

(declare-fun b!3738962 () Bool)

(assert (=> b!3738962 (= e!2312241 (Cons!39700 (c!647627 (regOne!22398 r!26968)) Nil!39700))))

(declare-fun bm!274133 () Bool)

(assert (=> bm!274133 (= call!274135 (usedCharacters!1206 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))))))

(declare-fun b!3738963 () Bool)

(assert (=> b!3738963 (= e!2312239 Nil!39700)))

(declare-fun b!3738964 () Bool)

(assert (=> b!3738964 (= e!2312240 call!274137)))

(assert (= (and d!1092087 c!647668) b!3738963))

(assert (= (and d!1092087 (not c!647668)) b!3738960))

(assert (= (and b!3738960 c!647671) b!3738962))

(assert (= (and b!3738960 (not c!647671)) b!3738957))

(assert (= (and b!3738957 c!647670) b!3738961))

(assert (= (and b!3738957 (not c!647670)) b!3738958))

(assert (= (and b!3738958 c!647669) b!3738964))

(assert (= (and b!3738958 (not c!647669)) b!3738959))

(assert (= (or b!3738964 b!3738959) bm!274132))

(assert (= (or b!3738964 b!3738959) bm!274131))

(assert (= (or b!3738964 b!3738959) bm!274130))

(assert (= (or b!3738961 bm!274131) bm!274133))

(declare-fun m!4234691 () Bool)

(assert (=> bm!274130 m!4234691))

(declare-fun m!4234693 () Bool)

(assert (=> bm!274132 m!4234693))

(declare-fun m!4234695 () Bool)

(assert (=> bm!274133 m!4234695))

(assert (=> b!3738825 d!1092087))

(declare-fun d!1092091 () Bool)

(declare-fun lt!1299109 () Bool)

(assert (=> d!1092091 (= lt!1299109 (select (content!5799 (usedCharacters!1206 r!26968)) cNot!42))))

(declare-fun e!2312244 () Bool)

(assert (=> d!1092091 (= lt!1299109 e!2312244)))

(declare-fun res!1516416 () Bool)

(assert (=> d!1092091 (=> (not res!1516416) (not e!2312244))))

(assert (=> d!1092091 (= res!1516416 ((_ is Cons!39700) (usedCharacters!1206 r!26968)))))

(assert (=> d!1092091 (= (contains!8036 (usedCharacters!1206 r!26968) cNot!42) lt!1299109)))

(declare-fun b!3738965 () Bool)

(declare-fun e!2312243 () Bool)

(assert (=> b!3738965 (= e!2312244 e!2312243)))

(declare-fun res!1516415 () Bool)

(assert (=> b!3738965 (=> res!1516415 e!2312243)))

(assert (=> b!3738965 (= res!1516415 (= (h!45120 (usedCharacters!1206 r!26968)) cNot!42))))

(declare-fun b!3738966 () Bool)

(assert (=> b!3738966 (= e!2312243 (contains!8036 (t!302507 (usedCharacters!1206 r!26968)) cNot!42))))

(assert (= (and d!1092091 res!1516416) b!3738965))

(assert (= (and b!3738965 (not res!1516415)) b!3738966))

(assert (=> d!1092091 m!4234647))

(declare-fun m!4234697 () Bool)

(assert (=> d!1092091 m!4234697))

(declare-fun m!4234699 () Bool)

(assert (=> d!1092091 m!4234699))

(declare-fun m!4234701 () Bool)

(assert (=> b!3738966 m!4234701))

(assert (=> b!3738830 d!1092091))

(declare-fun call!274141 () List!39824)

(declare-fun call!274142 () List!39824)

(declare-fun bm!274134 () Bool)

(declare-fun call!274140 () List!39824)

(declare-fun c!647673 () Bool)

(assert (=> bm!274134 (= call!274141 (++!9866 (ite c!647673 call!274142 call!274140) (ite c!647673 call!274140 call!274142)))))

(declare-fun bm!274135 () Bool)

(declare-fun call!274139 () List!39824)

(assert (=> bm!274135 (= call!274140 call!274139)))

(declare-fun b!3738967 () Bool)

(declare-fun c!647674 () Bool)

(assert (=> b!3738967 (= c!647674 ((_ is Star!10943) r!26968))))

(declare-fun e!2312247 () List!39824)

(declare-fun e!2312248 () List!39824)

(assert (=> b!3738967 (= e!2312247 e!2312248)))

(declare-fun b!3738968 () Bool)

(declare-fun e!2312246 () List!39824)

(assert (=> b!3738968 (= e!2312248 e!2312246)))

(assert (=> b!3738968 (= c!647673 ((_ is Union!10943) r!26968))))

(declare-fun bm!274136 () Bool)

(assert (=> bm!274136 (= call!274142 (usedCharacters!1206 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))))))

(declare-fun b!3738969 () Bool)

(assert (=> b!3738969 (= e!2312246 call!274141)))

(declare-fun d!1092093 () Bool)

(declare-fun c!647672 () Bool)

(assert (=> d!1092093 (= c!647672 (or ((_ is EmptyExpr!10943) r!26968) ((_ is EmptyLang!10943) r!26968)))))

(declare-fun e!2312245 () List!39824)

(assert (=> d!1092093 (= (usedCharacters!1206 r!26968) e!2312245)))

(declare-fun b!3738970 () Bool)

(assert (=> b!3738970 (= e!2312245 e!2312247)))

(declare-fun c!647675 () Bool)

(assert (=> b!3738970 (= c!647675 ((_ is ElementMatch!10943) r!26968))))

(declare-fun b!3738971 () Bool)

(assert (=> b!3738971 (= e!2312248 call!274139)))

(declare-fun b!3738972 () Bool)

(assert (=> b!3738972 (= e!2312247 (Cons!39700 (c!647627 r!26968) Nil!39700))))

(declare-fun bm!274137 () Bool)

(assert (=> bm!274137 (= call!274139 (usedCharacters!1206 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))))))

(declare-fun b!3738973 () Bool)

(assert (=> b!3738973 (= e!2312245 Nil!39700)))

(declare-fun b!3738974 () Bool)

(assert (=> b!3738974 (= e!2312246 call!274141)))

(assert (= (and d!1092093 c!647672) b!3738973))

(assert (= (and d!1092093 (not c!647672)) b!3738970))

(assert (= (and b!3738970 c!647675) b!3738972))

(assert (= (and b!3738970 (not c!647675)) b!3738967))

(assert (= (and b!3738967 c!647674) b!3738971))

(assert (= (and b!3738967 (not c!647674)) b!3738968))

(assert (= (and b!3738968 c!647673) b!3738974))

(assert (= (and b!3738968 (not c!647673)) b!3738969))

(assert (= (or b!3738974 b!3738969) bm!274136))

(assert (= (or b!3738974 b!3738969) bm!274135))

(assert (= (or b!3738974 b!3738969) bm!274134))

(assert (= (or b!3738971 bm!274135) bm!274137))

(declare-fun m!4234703 () Bool)

(assert (=> bm!274134 m!4234703))

(declare-fun m!4234705 () Bool)

(assert (=> bm!274136 m!4234705))

(declare-fun m!4234707 () Bool)

(assert (=> bm!274137 m!4234707))

(assert (=> b!3738830 d!1092093))

(declare-fun bm!274138 () Bool)

(declare-fun call!274144 () Bool)

(declare-fun c!647677 () Bool)

(assert (=> bm!274138 (= call!274144 (validRegex!5050 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))

(declare-fun b!3738975 () Bool)

(declare-fun e!2312251 () Bool)

(declare-fun call!274145 () Bool)

(assert (=> b!3738975 (= e!2312251 call!274145)))

(declare-fun b!3738976 () Bool)

(declare-fun e!2312255 () Bool)

(declare-fun call!274143 () Bool)

(assert (=> b!3738976 (= e!2312255 call!274143)))

(declare-fun bm!274139 () Bool)

(declare-fun c!647676 () Bool)

(assert (=> bm!274139 (= call!274143 (validRegex!5050 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))

(declare-fun b!3738977 () Bool)

(declare-fun e!2312253 () Bool)

(assert (=> b!3738977 (= e!2312253 call!274145)))

(declare-fun b!3738978 () Bool)

(declare-fun res!1516417 () Bool)

(declare-fun e!2312250 () Bool)

(assert (=> b!3738978 (=> res!1516417 e!2312250)))

(assert (=> b!3738978 (= res!1516417 (not ((_ is Concat!17214) (regOne!22398 r!26968))))))

(declare-fun e!2312254 () Bool)

(assert (=> b!3738978 (= e!2312254 e!2312250)))

(declare-fun b!3738979 () Bool)

(declare-fun res!1516419 () Bool)

(assert (=> b!3738979 (=> (not res!1516419) (not e!2312253))))

(assert (=> b!3738979 (= res!1516419 call!274144)))

(assert (=> b!3738979 (= e!2312254 e!2312253)))

(declare-fun b!3738980 () Bool)

(assert (=> b!3738980 (= e!2312250 e!2312251)))

(declare-fun res!1516420 () Bool)

(assert (=> b!3738980 (=> (not res!1516420) (not e!2312251))))

(assert (=> b!3738980 (= res!1516420 call!274144)))

(declare-fun b!3738981 () Bool)

(declare-fun e!2312252 () Bool)

(declare-fun e!2312249 () Bool)

(assert (=> b!3738981 (= e!2312252 e!2312249)))

(assert (=> b!3738981 (= c!647676 ((_ is Star!10943) (regOne!22398 r!26968)))))

(declare-fun b!3738982 () Bool)

(assert (=> b!3738982 (= e!2312249 e!2312255)))

(declare-fun res!1516418 () Bool)

(assert (=> b!3738982 (= res!1516418 (not (nullable!3851 (reg!11272 (regOne!22398 r!26968)))))))

(assert (=> b!3738982 (=> (not res!1516418) (not e!2312255))))

(declare-fun d!1092095 () Bool)

(declare-fun res!1516421 () Bool)

(assert (=> d!1092095 (=> res!1516421 e!2312252)))

(assert (=> d!1092095 (= res!1516421 ((_ is ElementMatch!10943) (regOne!22398 r!26968)))))

(assert (=> d!1092095 (= (validRegex!5050 (regOne!22398 r!26968)) e!2312252)))

(declare-fun b!3738983 () Bool)

(assert (=> b!3738983 (= e!2312249 e!2312254)))

(assert (=> b!3738983 (= c!647677 ((_ is Union!10943) (regOne!22398 r!26968)))))

(declare-fun bm!274140 () Bool)

(assert (=> bm!274140 (= call!274145 call!274143)))

(assert (= (and d!1092095 (not res!1516421)) b!3738981))

(assert (= (and b!3738981 c!647676) b!3738982))

(assert (= (and b!3738981 (not c!647676)) b!3738983))

(assert (= (and b!3738982 res!1516418) b!3738976))

(assert (= (and b!3738983 c!647677) b!3738979))

(assert (= (and b!3738983 (not c!647677)) b!3738978))

(assert (= (and b!3738979 res!1516419) b!3738977))

(assert (= (and b!3738978 (not res!1516417)) b!3738980))

(assert (= (and b!3738980 res!1516420) b!3738975))

(assert (= (or b!3738977 b!3738975) bm!274140))

(assert (= (or b!3738979 b!3738980) bm!274138))

(assert (= (or b!3738976 bm!274140) bm!274139))

(declare-fun m!4234709 () Bool)

(assert (=> bm!274138 m!4234709))

(declare-fun m!4234711 () Bool)

(assert (=> bm!274139 m!4234711))

(declare-fun m!4234713 () Bool)

(assert (=> b!3738982 m!4234713))

(assert (=> b!3738829 d!1092095))

(declare-fun b!3738994 () Bool)

(declare-fun e!2312258 () Bool)

(assert (=> b!3738994 (= e!2312258 tp_is_empty!18901)))

(assert (=> b!3738833 (= tp!1138784 e!2312258)))

(declare-fun b!3738995 () Bool)

(declare-fun tp!1138796 () Bool)

(declare-fun tp!1138798 () Bool)

(assert (=> b!3738995 (= e!2312258 (and tp!1138796 tp!1138798))))

(declare-fun b!3738997 () Bool)

(declare-fun tp!1138799 () Bool)

(declare-fun tp!1138795 () Bool)

(assert (=> b!3738997 (= e!2312258 (and tp!1138799 tp!1138795))))

(declare-fun b!3738996 () Bool)

(declare-fun tp!1138797 () Bool)

(assert (=> b!3738996 (= e!2312258 tp!1138797)))

(assert (= (and b!3738833 ((_ is ElementMatch!10943) (reg!11272 r!26968))) b!3738994))

(assert (= (and b!3738833 ((_ is Concat!17214) (reg!11272 r!26968))) b!3738995))

(assert (= (and b!3738833 ((_ is Star!10943) (reg!11272 r!26968))) b!3738996))

(assert (= (and b!3738833 ((_ is Union!10943) (reg!11272 r!26968))) b!3738997))

(declare-fun b!3739002 () Bool)

(declare-fun e!2312261 () Bool)

(assert (=> b!3739002 (= e!2312261 tp_is_empty!18901)))

(assert (=> b!3738831 (= tp!1138782 e!2312261)))

(declare-fun b!3739003 () Bool)

(declare-fun tp!1138801 () Bool)

(declare-fun tp!1138803 () Bool)

(assert (=> b!3739003 (= e!2312261 (and tp!1138801 tp!1138803))))

(declare-fun b!3739005 () Bool)

(declare-fun tp!1138804 () Bool)

(declare-fun tp!1138800 () Bool)

(assert (=> b!3739005 (= e!2312261 (and tp!1138804 tp!1138800))))

(declare-fun b!3739004 () Bool)

(declare-fun tp!1138802 () Bool)

(assert (=> b!3739004 (= e!2312261 tp!1138802)))

(assert (= (and b!3738831 ((_ is ElementMatch!10943) (regOne!22399 r!26968))) b!3739002))

(assert (= (and b!3738831 ((_ is Concat!17214) (regOne!22399 r!26968))) b!3739003))

(assert (= (and b!3738831 ((_ is Star!10943) (regOne!22399 r!26968))) b!3739004))

(assert (= (and b!3738831 ((_ is Union!10943) (regOne!22399 r!26968))) b!3739005))

(declare-fun b!3739010 () Bool)

(declare-fun e!2312264 () Bool)

(assert (=> b!3739010 (= e!2312264 tp_is_empty!18901)))

(assert (=> b!3738831 (= tp!1138780 e!2312264)))

(declare-fun b!3739011 () Bool)

(declare-fun tp!1138806 () Bool)

(declare-fun tp!1138808 () Bool)

(assert (=> b!3739011 (= e!2312264 (and tp!1138806 tp!1138808))))

(declare-fun b!3739013 () Bool)

(declare-fun tp!1138809 () Bool)

(declare-fun tp!1138805 () Bool)

(assert (=> b!3739013 (= e!2312264 (and tp!1138809 tp!1138805))))

(declare-fun b!3739012 () Bool)

(declare-fun tp!1138807 () Bool)

(assert (=> b!3739012 (= e!2312264 tp!1138807)))

(assert (= (and b!3738831 ((_ is ElementMatch!10943) (regTwo!22399 r!26968))) b!3739010))

(assert (= (and b!3738831 ((_ is Concat!17214) (regTwo!22399 r!26968))) b!3739011))

(assert (= (and b!3738831 ((_ is Star!10943) (regTwo!22399 r!26968))) b!3739012))

(assert (= (and b!3738831 ((_ is Union!10943) (regTwo!22399 r!26968))) b!3739013))

(declare-fun b!3739022 () Bool)

(declare-fun e!2312268 () Bool)

(assert (=> b!3739022 (= e!2312268 tp_is_empty!18901)))

(assert (=> b!3738834 (= tp!1138781 e!2312268)))

(declare-fun b!3739023 () Bool)

(declare-fun tp!1138811 () Bool)

(declare-fun tp!1138813 () Bool)

(assert (=> b!3739023 (= e!2312268 (and tp!1138811 tp!1138813))))

(declare-fun b!3739025 () Bool)

(declare-fun tp!1138814 () Bool)

(declare-fun tp!1138810 () Bool)

(assert (=> b!3739025 (= e!2312268 (and tp!1138814 tp!1138810))))

(declare-fun b!3739024 () Bool)

(declare-fun tp!1138812 () Bool)

(assert (=> b!3739024 (= e!2312268 tp!1138812)))

(assert (= (and b!3738834 ((_ is ElementMatch!10943) (regOne!22398 r!26968))) b!3739022))

(assert (= (and b!3738834 ((_ is Concat!17214) (regOne!22398 r!26968))) b!3739023))

(assert (= (and b!3738834 ((_ is Star!10943) (regOne!22398 r!26968))) b!3739024))

(assert (= (and b!3738834 ((_ is Union!10943) (regOne!22398 r!26968))) b!3739025))

(declare-fun b!3739026 () Bool)

(declare-fun e!2312270 () Bool)

(assert (=> b!3739026 (= e!2312270 tp_is_empty!18901)))

(assert (=> b!3738834 (= tp!1138783 e!2312270)))

(declare-fun b!3739027 () Bool)

(declare-fun tp!1138816 () Bool)

(declare-fun tp!1138818 () Bool)

(assert (=> b!3739027 (= e!2312270 (and tp!1138816 tp!1138818))))

(declare-fun b!3739029 () Bool)

(declare-fun tp!1138819 () Bool)

(declare-fun tp!1138815 () Bool)

(assert (=> b!3739029 (= e!2312270 (and tp!1138819 tp!1138815))))

(declare-fun b!3739028 () Bool)

(declare-fun tp!1138817 () Bool)

(assert (=> b!3739028 (= e!2312270 tp!1138817)))

(assert (= (and b!3738834 ((_ is ElementMatch!10943) (regTwo!22398 r!26968))) b!3739026))

(assert (= (and b!3738834 ((_ is Concat!17214) (regTwo!22398 r!26968))) b!3739027))

(assert (= (and b!3738834 ((_ is Star!10943) (regTwo!22398 r!26968))) b!3739028))

(assert (= (and b!3738834 ((_ is Union!10943) (regTwo!22398 r!26968))) b!3739029))

(check-sat (not b!3738934) (not d!1092091) (not bm!274098) (not b!3738878) tp_is_empty!18901 (not b!3738996) (not b!3739005) (not bm!274099) (not bm!274134) (not b!3739024) (not bm!274113) (not b!3739027) (not b!3739004) (not d!1092073) (not d!1092083) (not bm!274139) (not bm!274133) (not b!3739013) (not b!3738982) (not bm!274136) (not bm!274138) (not bm!274137) (not b!3739029) (not bm!274130) (not b!3738995) (not b!3738966) (not bm!274118) (not bm!274132) (not b!3739023) (not bm!274115) (not b!3739025) (not bm!274116) (not b!3738997) (not b!3739012) (not b!3739011) (not b!3739003) (not b!3739028))
(check-sat)
(get-model)

(declare-fun call!274178 () Int)

(declare-fun c!647718 () Bool)

(declare-fun bm!274172 () Bool)

(declare-fun c!647719 () Bool)

(assert (=> bm!274172 (= call!274178 (RegexPrimitiveSize!149 (ite c!647719 (regOne!22398 (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))) (ite c!647718 (reg!11272 (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))) (regOne!22399 (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968)))))))))))

(declare-fun d!1092109 () Bool)

(declare-fun lt!1299115 () Int)

(assert (=> d!1092109 (>= lt!1299115 0)))

(declare-fun e!2312319 () Int)

(assert (=> d!1092109 (= lt!1299115 e!2312319)))

(declare-fun c!647716 () Bool)

(assert (=> d!1092109 (= c!647716 ((_ is ElementMatch!10943) (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))))))

(assert (=> d!1092109 (= (RegexPrimitiveSize!149 (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))) lt!1299115)))

(declare-fun b!3739127 () Bool)

(assert (=> b!3739127 (= e!2312319 1)))

(declare-fun b!3739128 () Bool)

(declare-fun c!647717 () Bool)

(assert (=> b!3739128 (= c!647717 ((_ is EmptyLang!10943) (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))))))

(declare-fun e!2312318 () Int)

(declare-fun e!2312316 () Int)

(assert (=> b!3739128 (= e!2312318 e!2312316)))

(declare-fun bm!274173 () Bool)

(declare-fun call!274179 () Int)

(assert (=> bm!274173 (= call!274179 call!274178)))

(declare-fun b!3739129 () Bool)

(assert (=> b!3739129 (= e!2312318 (+ 1 call!274179))))

(declare-fun b!3739130 () Bool)

(declare-fun e!2312317 () Int)

(declare-fun call!274177 () Int)

(assert (=> b!3739130 (= e!2312317 (+ 1 call!274178 call!274177))))

(declare-fun b!3739131 () Bool)

(assert (=> b!3739131 (= e!2312319 e!2312317)))

(assert (=> b!3739131 (= c!647719 ((_ is Concat!17214) (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))))))

(declare-fun bm!274174 () Bool)

(assert (=> bm!274174 (= call!274177 (RegexPrimitiveSize!149 (ite c!647719 (regTwo!22398 (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))) (regTwo!22399 (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))))))))

(declare-fun b!3739132 () Bool)

(declare-fun e!2312315 () Int)

(assert (=> b!3739132 (= e!2312315 0)))

(declare-fun b!3739133 () Bool)

(assert (=> b!3739133 (= e!2312316 0)))

(declare-fun b!3739134 () Bool)

(assert (=> b!3739134 (= e!2312315 e!2312318)))

(assert (=> b!3739134 (= c!647718 ((_ is Star!10943) (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))))))

(declare-fun b!3739135 () Bool)

(assert (=> b!3739135 (= e!2312316 (+ 1 call!274179 call!274177))))

(declare-fun c!647720 () Bool)

(declare-fun b!3739136 () Bool)

(assert (=> b!3739136 (= c!647720 ((_ is EmptyExpr!10943) (ite c!647651 (regOne!22398 (regOne!22398 r!26968)) (ite c!647650 (reg!11272 (regOne!22398 r!26968)) (regOne!22399 (regOne!22398 r!26968))))))))

(assert (=> b!3739136 (= e!2312317 e!2312315)))

(assert (= (and d!1092109 c!647716) b!3739127))

(assert (= (and d!1092109 (not c!647716)) b!3739131))

(assert (= (and b!3739131 c!647719) b!3739130))

(assert (= (and b!3739131 (not c!647719)) b!3739136))

(assert (= (and b!3739136 c!647720) b!3739132))

(assert (= (and b!3739136 (not c!647720)) b!3739134))

(assert (= (and b!3739134 c!647718) b!3739129))

(assert (= (and b!3739134 (not c!647718)) b!3739128))

(assert (= (and b!3739128 c!647717) b!3739133))

(assert (= (and b!3739128 (not c!647717)) b!3739135))

(assert (= (or b!3739129 b!3739135) bm!274173))

(assert (= (or b!3739130 bm!274173) bm!274172))

(assert (= (or b!3739130 b!3739135) bm!274174))

(declare-fun m!4234749 () Bool)

(assert (=> bm!274172 m!4234749))

(declare-fun m!4234751 () Bool)

(assert (=> bm!274174 m!4234751))

(assert (=> bm!274113 d!1092109))

(declare-fun b!3739145 () Bool)

(declare-fun e!2312324 () List!39824)

(assert (=> b!3739145 (= e!2312324 (ite c!647673 call!274140 call!274142))))

(declare-fun e!2312325 () Bool)

(declare-fun lt!1299118 () List!39824)

(declare-fun b!3739148 () Bool)

(assert (=> b!3739148 (= e!2312325 (or (not (= (ite c!647673 call!274140 call!274142) Nil!39700)) (= lt!1299118 (ite c!647673 call!274142 call!274140))))))

(declare-fun b!3739147 () Bool)

(declare-fun res!1516433 () Bool)

(assert (=> b!3739147 (=> (not res!1516433) (not e!2312325))))

(declare-fun size!30049 (List!39824) Int)

(assert (=> b!3739147 (= res!1516433 (= (size!30049 lt!1299118) (+ (size!30049 (ite c!647673 call!274142 call!274140)) (size!30049 (ite c!647673 call!274140 call!274142)))))))

(declare-fun d!1092111 () Bool)

(assert (=> d!1092111 e!2312325))

(declare-fun res!1516434 () Bool)

(assert (=> d!1092111 (=> (not res!1516434) (not e!2312325))))

(assert (=> d!1092111 (= res!1516434 (= (content!5799 lt!1299118) ((_ map or) (content!5799 (ite c!647673 call!274142 call!274140)) (content!5799 (ite c!647673 call!274140 call!274142)))))))

(assert (=> d!1092111 (= lt!1299118 e!2312324)))

(declare-fun c!647723 () Bool)

(assert (=> d!1092111 (= c!647723 ((_ is Nil!39700) (ite c!647673 call!274142 call!274140)))))

(assert (=> d!1092111 (= (++!9866 (ite c!647673 call!274142 call!274140) (ite c!647673 call!274140 call!274142)) lt!1299118)))

(declare-fun b!3739146 () Bool)

(assert (=> b!3739146 (= e!2312324 (Cons!39700 (h!45120 (ite c!647673 call!274142 call!274140)) (++!9866 (t!302507 (ite c!647673 call!274142 call!274140)) (ite c!647673 call!274140 call!274142))))))

(assert (= (and d!1092111 c!647723) b!3739145))

(assert (= (and d!1092111 (not c!647723)) b!3739146))

(assert (= (and d!1092111 res!1516434) b!3739147))

(assert (= (and b!3739147 res!1516433) b!3739148))

(declare-fun m!4234753 () Bool)

(assert (=> b!3739147 m!4234753))

(declare-fun m!4234755 () Bool)

(assert (=> b!3739147 m!4234755))

(declare-fun m!4234757 () Bool)

(assert (=> b!3739147 m!4234757))

(declare-fun m!4234759 () Bool)

(assert (=> d!1092111 m!4234759))

(declare-fun m!4234761 () Bool)

(assert (=> d!1092111 m!4234761))

(declare-fun m!4234763 () Bool)

(assert (=> d!1092111 m!4234763))

(declare-fun m!4234765 () Bool)

(assert (=> b!3739146 m!4234765))

(assert (=> bm!274134 d!1092111))

(declare-fun bm!274175 () Bool)

(declare-fun call!274183 () List!39824)

(declare-fun call!274182 () List!39824)

(declare-fun call!274181 () List!39824)

(declare-fun c!647725 () Bool)

(assert (=> bm!274175 (= call!274182 (++!9866 (ite c!647725 call!274183 call!274181) (ite c!647725 call!274181 call!274183)))))

(declare-fun bm!274176 () Bool)

(declare-fun call!274180 () List!39824)

(assert (=> bm!274176 (= call!274181 call!274180)))

(declare-fun b!3739149 () Bool)

(declare-fun c!647726 () Bool)

(assert (=> b!3739149 (= c!647726 ((_ is Star!10943) (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))

(declare-fun e!2312328 () List!39824)

(declare-fun e!2312329 () List!39824)

(assert (=> b!3739149 (= e!2312328 e!2312329)))

(declare-fun b!3739150 () Bool)

(declare-fun e!2312327 () List!39824)

(assert (=> b!3739150 (= e!2312329 e!2312327)))

(assert (=> b!3739150 (= c!647725 ((_ is Union!10943) (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))

(declare-fun bm!274177 () Bool)

(assert (=> bm!274177 (= call!274183 (usedCharacters!1206 (ite c!647725 (regOne!22399 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))) (regTwo!22398 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))))

(declare-fun b!3739151 () Bool)

(assert (=> b!3739151 (= e!2312327 call!274182)))

(declare-fun d!1092113 () Bool)

(declare-fun c!647724 () Bool)

(assert (=> d!1092113 (= c!647724 (or ((_ is EmptyExpr!10943) (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))) ((_ is EmptyLang!10943) (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))

(declare-fun e!2312326 () List!39824)

(assert (=> d!1092113 (= (usedCharacters!1206 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))) e!2312326)))

(declare-fun b!3739152 () Bool)

(assert (=> b!3739152 (= e!2312326 e!2312328)))

(declare-fun c!647727 () Bool)

(assert (=> b!3739152 (= c!647727 ((_ is ElementMatch!10943) (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))

(declare-fun b!3739153 () Bool)

(assert (=> b!3739153 (= e!2312329 call!274180)))

(declare-fun b!3739154 () Bool)

(assert (=> b!3739154 (= e!2312328 (Cons!39700 (c!647627 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))) Nil!39700))))

(declare-fun bm!274178 () Bool)

(assert (=> bm!274178 (= call!274180 (usedCharacters!1206 (ite c!647726 (reg!11272 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))) (ite c!647725 (regTwo!22399 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))) (regOne!22398 (ite c!647669 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))))

(declare-fun b!3739155 () Bool)

(assert (=> b!3739155 (= e!2312326 Nil!39700)))

(declare-fun b!3739156 () Bool)

(assert (=> b!3739156 (= e!2312327 call!274182)))

(assert (= (and d!1092113 c!647724) b!3739155))

(assert (= (and d!1092113 (not c!647724)) b!3739152))

(assert (= (and b!3739152 c!647727) b!3739154))

(assert (= (and b!3739152 (not c!647727)) b!3739149))

(assert (= (and b!3739149 c!647726) b!3739153))

(assert (= (and b!3739149 (not c!647726)) b!3739150))

(assert (= (and b!3739150 c!647725) b!3739156))

(assert (= (and b!3739150 (not c!647725)) b!3739151))

(assert (= (or b!3739156 b!3739151) bm!274177))

(assert (= (or b!3739156 b!3739151) bm!274176))

(assert (= (or b!3739156 b!3739151) bm!274175))

(assert (= (or b!3739153 bm!274176) bm!274178))

(declare-fun m!4234767 () Bool)

(assert (=> bm!274175 m!4234767))

(declare-fun m!4234769 () Bool)

(assert (=> bm!274177 m!4234769))

(declare-fun m!4234771 () Bool)

(assert (=> bm!274178 m!4234771))

(assert (=> bm!274132 d!1092113))

(declare-fun d!1092115 () Bool)

(declare-fun lt!1299119 () Bool)

(assert (=> d!1092115 (= lt!1299119 (select (content!5799 (t!302507 (usedCharacters!1206 r!26968))) cNot!42))))

(declare-fun e!2312331 () Bool)

(assert (=> d!1092115 (= lt!1299119 e!2312331)))

(declare-fun res!1516436 () Bool)

(assert (=> d!1092115 (=> (not res!1516436) (not e!2312331))))

(assert (=> d!1092115 (= res!1516436 ((_ is Cons!39700) (t!302507 (usedCharacters!1206 r!26968))))))

(assert (=> d!1092115 (= (contains!8036 (t!302507 (usedCharacters!1206 r!26968)) cNot!42) lt!1299119)))

(declare-fun b!3739157 () Bool)

(declare-fun e!2312330 () Bool)

(assert (=> b!3739157 (= e!2312331 e!2312330)))

(declare-fun res!1516435 () Bool)

(assert (=> b!3739157 (=> res!1516435 e!2312330)))

(assert (=> b!3739157 (= res!1516435 (= (h!45120 (t!302507 (usedCharacters!1206 r!26968))) cNot!42))))

(declare-fun b!3739158 () Bool)

(assert (=> b!3739158 (= e!2312330 (contains!8036 (t!302507 (t!302507 (usedCharacters!1206 r!26968))) cNot!42))))

(assert (= (and d!1092115 res!1516436) b!3739157))

(assert (= (and b!3739157 (not res!1516435)) b!3739158))

(declare-fun m!4234773 () Bool)

(assert (=> d!1092115 m!4234773))

(declare-fun m!4234775 () Bool)

(assert (=> d!1092115 m!4234775))

(declare-fun m!4234777 () Bool)

(assert (=> b!3739158 m!4234777))

(assert (=> b!3738966 d!1092115))

(declare-fun call!274185 () List!39824)

(declare-fun call!274186 () List!39824)

(declare-fun c!647729 () Bool)

(declare-fun call!274187 () List!39824)

(declare-fun bm!274179 () Bool)

(assert (=> bm!274179 (= call!274186 (++!9866 (ite c!647729 call!274187 call!274185) (ite c!647729 call!274185 call!274187)))))

(declare-fun bm!274180 () Bool)

(declare-fun call!274184 () List!39824)

(assert (=> bm!274180 (= call!274185 call!274184)))

(declare-fun b!3739159 () Bool)

(declare-fun c!647730 () Bool)

(assert (=> b!3739159 (= c!647730 ((_ is Star!10943) (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))))))

(declare-fun e!2312334 () List!39824)

(declare-fun e!2312335 () List!39824)

(assert (=> b!3739159 (= e!2312334 e!2312335)))

(declare-fun b!3739160 () Bool)

(declare-fun e!2312333 () List!39824)

(assert (=> b!3739160 (= e!2312335 e!2312333)))

(assert (=> b!3739160 (= c!647729 ((_ is Union!10943) (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))))))

(declare-fun bm!274181 () Bool)

(assert (=> bm!274181 (= call!274187 (usedCharacters!1206 (ite c!647729 (regOne!22399 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))) (regTwo!22398 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))))))))

(declare-fun b!3739161 () Bool)

(assert (=> b!3739161 (= e!2312333 call!274186)))

(declare-fun d!1092117 () Bool)

(declare-fun c!647728 () Bool)

(assert (=> d!1092117 (= c!647728 (or ((_ is EmptyExpr!10943) (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))) ((_ is EmptyLang!10943) (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968))))))))

(declare-fun e!2312332 () List!39824)

(assert (=> d!1092117 (= (usedCharacters!1206 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))) e!2312332)))

(declare-fun b!3739162 () Bool)

(assert (=> b!3739162 (= e!2312332 e!2312334)))

(declare-fun c!647731 () Bool)

(assert (=> b!3739162 (= c!647731 ((_ is ElementMatch!10943) (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))))))

(declare-fun b!3739163 () Bool)

(assert (=> b!3739163 (= e!2312335 call!274184)))

(declare-fun b!3739164 () Bool)

(assert (=> b!3739164 (= e!2312334 (Cons!39700 (c!647627 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))) Nil!39700))))

(declare-fun bm!274182 () Bool)

(assert (=> bm!274182 (= call!274184 (usedCharacters!1206 (ite c!647730 (reg!11272 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))) (ite c!647729 (regTwo!22399 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968)))) (regOne!22398 (ite c!647674 (reg!11272 r!26968) (ite c!647673 (regTwo!22399 r!26968) (regOne!22398 r!26968))))))))))

(declare-fun b!3739165 () Bool)

(assert (=> b!3739165 (= e!2312332 Nil!39700)))

(declare-fun b!3739166 () Bool)

(assert (=> b!3739166 (= e!2312333 call!274186)))

(assert (= (and d!1092117 c!647728) b!3739165))

(assert (= (and d!1092117 (not c!647728)) b!3739162))

(assert (= (and b!3739162 c!647731) b!3739164))

(assert (= (and b!3739162 (not c!647731)) b!3739159))

(assert (= (and b!3739159 c!647730) b!3739163))

(assert (= (and b!3739159 (not c!647730)) b!3739160))

(assert (= (and b!3739160 c!647729) b!3739166))

(assert (= (and b!3739160 (not c!647729)) b!3739161))

(assert (= (or b!3739166 b!3739161) bm!274181))

(assert (= (or b!3739166 b!3739161) bm!274180))

(assert (= (or b!3739166 b!3739161) bm!274179))

(assert (= (or b!3739163 bm!274180) bm!274182))

(declare-fun m!4234779 () Bool)

(assert (=> bm!274179 m!4234779))

(declare-fun m!4234781 () Bool)

(assert (=> bm!274181 m!4234781))

(declare-fun m!4234783 () Bool)

(assert (=> bm!274182 m!4234783))

(assert (=> bm!274137 d!1092117))

(declare-fun c!647734 () Bool)

(declare-fun call!274189 () Int)

(declare-fun bm!274183 () Bool)

(declare-fun c!647735 () Bool)

(assert (=> bm!274183 (= call!274189 (RegexPrimitiveSize!149 (ite c!647735 (regOne!22398 (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))) (ite c!647734 (reg!11272 (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))) (regOne!22399 (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968)))))))))

(declare-fun d!1092119 () Bool)

(declare-fun lt!1299120 () Int)

(assert (=> d!1092119 (>= lt!1299120 0)))

(declare-fun e!2312340 () Int)

(assert (=> d!1092119 (= lt!1299120 e!2312340)))

(declare-fun c!647732 () Bool)

(assert (=> d!1092119 (= c!647732 ((_ is ElementMatch!10943) (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))))))

(assert (=> d!1092119 (= (RegexPrimitiveSize!149 (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))) lt!1299120)))

(declare-fun b!3739167 () Bool)

(assert (=> b!3739167 (= e!2312340 1)))

(declare-fun b!3739168 () Bool)

(declare-fun c!647733 () Bool)

(assert (=> b!3739168 (= c!647733 ((_ is EmptyLang!10943) (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))))))

(declare-fun e!2312339 () Int)

(declare-fun e!2312337 () Int)

(assert (=> b!3739168 (= e!2312339 e!2312337)))

(declare-fun bm!274184 () Bool)

(declare-fun call!274190 () Int)

(assert (=> bm!274184 (= call!274190 call!274189)))

(declare-fun b!3739169 () Bool)

(assert (=> b!3739169 (= e!2312339 (+ 1 call!274190))))

(declare-fun b!3739170 () Bool)

(declare-fun e!2312338 () Int)

(declare-fun call!274188 () Int)

(assert (=> b!3739170 (= e!2312338 (+ 1 call!274189 call!274188))))

(declare-fun b!3739171 () Bool)

(assert (=> b!3739171 (= e!2312340 e!2312338)))

(assert (=> b!3739171 (= c!647735 ((_ is Concat!17214) (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))))))

(declare-fun bm!274185 () Bool)

(assert (=> bm!274185 (= call!274188 (RegexPrimitiveSize!149 (ite c!647735 (regTwo!22398 (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))) (regTwo!22399 (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))))))))

(declare-fun b!3739172 () Bool)

(declare-fun e!2312336 () Int)

(assert (=> b!3739172 (= e!2312336 0)))

(declare-fun b!3739173 () Bool)

(assert (=> b!3739173 (= e!2312337 0)))

(declare-fun b!3739174 () Bool)

(assert (=> b!3739174 (= e!2312336 e!2312339)))

(assert (=> b!3739174 (= c!647734 ((_ is Star!10943) (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))))))

(declare-fun b!3739175 () Bool)

(assert (=> b!3739175 (= e!2312337 (+ 1 call!274190 call!274188))))

(declare-fun b!3739176 () Bool)

(declare-fun c!647736 () Bool)

(assert (=> b!3739176 (= c!647736 ((_ is EmptyExpr!10943) (ite c!647656 (regTwo!22398 r!26968) (regTwo!22399 r!26968))))))

(assert (=> b!3739176 (= e!2312338 e!2312336)))

(assert (= (and d!1092119 c!647732) b!3739167))

(assert (= (and d!1092119 (not c!647732)) b!3739171))

(assert (= (and b!3739171 c!647735) b!3739170))

(assert (= (and b!3739171 (not c!647735)) b!3739176))

(assert (= (and b!3739176 c!647736) b!3739172))

(assert (= (and b!3739176 (not c!647736)) b!3739174))

(assert (= (and b!3739174 c!647734) b!3739169))

(assert (= (and b!3739174 (not c!647734)) b!3739168))

(assert (= (and b!3739168 c!647733) b!3739173))

(assert (= (and b!3739168 (not c!647733)) b!3739175))

(assert (= (or b!3739169 b!3739175) bm!274184))

(assert (= (or b!3739170 bm!274184) bm!274183))

(assert (= (or b!3739170 b!3739175) bm!274185))

(declare-fun m!4234785 () Bool)

(assert (=> bm!274183 m!4234785))

(declare-fun m!4234787 () Bool)

(assert (=> bm!274185 m!4234787))

(assert (=> bm!274118 d!1092119))

(declare-fun d!1092121 () Bool)

(declare-fun lt!1299121 () Bool)

(assert (=> d!1092121 (= lt!1299121 (select (content!5799 (t!302507 (usedCharacters!1206 (regOne!22398 r!26968)))) cNot!42))))

(declare-fun e!2312342 () Bool)

(assert (=> d!1092121 (= lt!1299121 e!2312342)))

(declare-fun res!1516438 () Bool)

(assert (=> d!1092121 (=> (not res!1516438) (not e!2312342))))

(assert (=> d!1092121 (= res!1516438 ((_ is Cons!39700) (t!302507 (usedCharacters!1206 (regOne!22398 r!26968)))))))

(assert (=> d!1092121 (= (contains!8036 (t!302507 (usedCharacters!1206 (regOne!22398 r!26968))) cNot!42) lt!1299121)))

(declare-fun b!3739177 () Bool)

(declare-fun e!2312341 () Bool)

(assert (=> b!3739177 (= e!2312342 e!2312341)))

(declare-fun res!1516437 () Bool)

(assert (=> b!3739177 (=> res!1516437 e!2312341)))

(assert (=> b!3739177 (= res!1516437 (= (h!45120 (t!302507 (usedCharacters!1206 (regOne!22398 r!26968)))) cNot!42))))

(declare-fun b!3739178 () Bool)

(assert (=> b!3739178 (= e!2312341 (contains!8036 (t!302507 (t!302507 (usedCharacters!1206 (regOne!22398 r!26968)))) cNot!42))))

(assert (= (and d!1092121 res!1516438) b!3739177))

(assert (= (and b!3739177 (not res!1516437)) b!3739178))

(declare-fun m!4234789 () Bool)

(assert (=> d!1092121 m!4234789))

(declare-fun m!4234791 () Bool)

(assert (=> d!1092121 m!4234791))

(declare-fun m!4234793 () Bool)

(assert (=> b!3739178 m!4234793))

(assert (=> b!3738934 d!1092121))

(declare-fun bm!274186 () Bool)

(declare-fun call!274192 () Bool)

(declare-fun c!647738 () Bool)

(assert (=> bm!274186 (= call!274192 (validRegex!5050 (ite c!647738 (regOne!22399 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))) (regOne!22398 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))))

(declare-fun b!3739179 () Bool)

(declare-fun e!2312345 () Bool)

(declare-fun call!274193 () Bool)

(assert (=> b!3739179 (= e!2312345 call!274193)))

(declare-fun b!3739180 () Bool)

(declare-fun e!2312349 () Bool)

(declare-fun call!274191 () Bool)

(assert (=> b!3739180 (= e!2312349 call!274191)))

(declare-fun c!647737 () Bool)

(declare-fun bm!274187 () Bool)

(assert (=> bm!274187 (= call!274191 (validRegex!5050 (ite c!647737 (reg!11272 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))) (ite c!647738 (regTwo!22399 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))) (regTwo!22398 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))))))

(declare-fun b!3739181 () Bool)

(declare-fun e!2312347 () Bool)

(assert (=> b!3739181 (= e!2312347 call!274193)))

(declare-fun b!3739182 () Bool)

(declare-fun res!1516439 () Bool)

(declare-fun e!2312344 () Bool)

(assert (=> b!3739182 (=> res!1516439 e!2312344)))

(assert (=> b!3739182 (= res!1516439 (not ((_ is Concat!17214) (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))))

(declare-fun e!2312348 () Bool)

(assert (=> b!3739182 (= e!2312348 e!2312344)))

(declare-fun b!3739183 () Bool)

(declare-fun res!1516441 () Bool)

(assert (=> b!3739183 (=> (not res!1516441) (not e!2312347))))

(assert (=> b!3739183 (= res!1516441 call!274192)))

(assert (=> b!3739183 (= e!2312348 e!2312347)))

(declare-fun b!3739184 () Bool)

(assert (=> b!3739184 (= e!2312344 e!2312345)))

(declare-fun res!1516442 () Bool)

(assert (=> b!3739184 (=> (not res!1516442) (not e!2312345))))

(assert (=> b!3739184 (= res!1516442 call!274192)))

(declare-fun b!3739185 () Bool)

(declare-fun e!2312346 () Bool)

(declare-fun e!2312343 () Bool)

(assert (=> b!3739185 (= e!2312346 e!2312343)))

(assert (=> b!3739185 (= c!647737 ((_ is Star!10943) (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))

(declare-fun b!3739186 () Bool)

(assert (=> b!3739186 (= e!2312343 e!2312349)))

(declare-fun res!1516440 () Bool)

(assert (=> b!3739186 (= res!1516440 (not (nullable!3851 (reg!11272 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))))

(assert (=> b!3739186 (=> (not res!1516440) (not e!2312349))))

(declare-fun d!1092123 () Bool)

(declare-fun res!1516443 () Bool)

(assert (=> d!1092123 (=> res!1516443 e!2312346)))

(assert (=> d!1092123 (= res!1516443 ((_ is ElementMatch!10943) (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))

(assert (=> d!1092123 (= (validRegex!5050 (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))) e!2312346)))

(declare-fun b!3739187 () Bool)

(assert (=> b!3739187 (= e!2312343 e!2312348)))

(assert (=> b!3739187 (= c!647738 ((_ is Union!10943) (ite c!647676 (reg!11272 (regOne!22398 r!26968)) (ite c!647677 (regTwo!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968))))))))

(declare-fun bm!274188 () Bool)

(assert (=> bm!274188 (= call!274193 call!274191)))

(assert (= (and d!1092123 (not res!1516443)) b!3739185))

(assert (= (and b!3739185 c!647737) b!3739186))

(assert (= (and b!3739185 (not c!647737)) b!3739187))

(assert (= (and b!3739186 res!1516440) b!3739180))

(assert (= (and b!3739187 c!647738) b!3739183))

(assert (= (and b!3739187 (not c!647738)) b!3739182))

(assert (= (and b!3739183 res!1516441) b!3739181))

(assert (= (and b!3739182 (not res!1516439)) b!3739184))

(assert (= (and b!3739184 res!1516442) b!3739179))

(assert (= (or b!3739181 b!3739179) bm!274188))

(assert (= (or b!3739183 b!3739184) bm!274186))

(assert (= (or b!3739180 bm!274188) bm!274187))

(declare-fun m!4234795 () Bool)

(assert (=> bm!274186 m!4234795))

(declare-fun m!4234797 () Bool)

(assert (=> bm!274187 m!4234797))

(declare-fun m!4234799 () Bool)

(assert (=> b!3739186 m!4234799))

(assert (=> bm!274139 d!1092123))

(declare-fun bm!274189 () Bool)

(declare-fun call!274195 () Int)

(declare-fun c!647742 () Bool)

(declare-fun c!647741 () Bool)

(assert (=> bm!274189 (= call!274195 (RegexPrimitiveSize!149 (ite c!647742 (regOne!22398 (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))) (ite c!647741 (reg!11272 (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))) (regOne!22399 (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968))))))))))

(declare-fun d!1092125 () Bool)

(declare-fun lt!1299122 () Int)

(assert (=> d!1092125 (>= lt!1299122 0)))

(declare-fun e!2312354 () Int)

(assert (=> d!1092125 (= lt!1299122 e!2312354)))

(declare-fun c!647739 () Bool)

(assert (=> d!1092125 (= c!647739 ((_ is ElementMatch!10943) (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))))))

(assert (=> d!1092125 (= (RegexPrimitiveSize!149 (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))) lt!1299122)))

(declare-fun b!3739188 () Bool)

(assert (=> b!3739188 (= e!2312354 1)))

(declare-fun b!3739189 () Bool)

(declare-fun c!647740 () Bool)

(assert (=> b!3739189 (= c!647740 ((_ is EmptyLang!10943) (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))))))

(declare-fun e!2312353 () Int)

(declare-fun e!2312351 () Int)

(assert (=> b!3739189 (= e!2312353 e!2312351)))

(declare-fun bm!274190 () Bool)

(declare-fun call!274196 () Int)

(assert (=> bm!274190 (= call!274196 call!274195)))

(declare-fun b!3739190 () Bool)

(assert (=> b!3739190 (= e!2312353 (+ 1 call!274196))))

(declare-fun b!3739191 () Bool)

(declare-fun e!2312352 () Int)

(declare-fun call!274194 () Int)

(assert (=> b!3739191 (= e!2312352 (+ 1 call!274195 call!274194))))

(declare-fun b!3739192 () Bool)

(assert (=> b!3739192 (= e!2312354 e!2312352)))

(assert (=> b!3739192 (= c!647742 ((_ is Concat!17214) (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))))))

(declare-fun bm!274191 () Bool)

(assert (=> bm!274191 (= call!274194 (RegexPrimitiveSize!149 (ite c!647742 (regTwo!22398 (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))) (regTwo!22399 (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))))))))

(declare-fun b!3739193 () Bool)

(declare-fun e!2312350 () Int)

(assert (=> b!3739193 (= e!2312350 0)))

(declare-fun b!3739194 () Bool)

(assert (=> b!3739194 (= e!2312351 0)))

(declare-fun b!3739195 () Bool)

(assert (=> b!3739195 (= e!2312350 e!2312353)))

(assert (=> b!3739195 (= c!647741 ((_ is Star!10943) (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))))))

(declare-fun b!3739196 () Bool)

(assert (=> b!3739196 (= e!2312351 (+ 1 call!274196 call!274194))))

(declare-fun b!3739197 () Bool)

(declare-fun c!647743 () Bool)

(assert (=> b!3739197 (= c!647743 ((_ is EmptyExpr!10943) (ite c!647651 (regTwo!22398 (regOne!22398 r!26968)) (regTwo!22399 (regOne!22398 r!26968)))))))

(assert (=> b!3739197 (= e!2312352 e!2312350)))

(assert (= (and d!1092125 c!647739) b!3739188))

(assert (= (and d!1092125 (not c!647739)) b!3739192))

(assert (= (and b!3739192 c!647742) b!3739191))

(assert (= (and b!3739192 (not c!647742)) b!3739197))

(assert (= (and b!3739197 c!647743) b!3739193))

(assert (= (and b!3739197 (not c!647743)) b!3739195))

(assert (= (and b!3739195 c!647741) b!3739190))

(assert (= (and b!3739195 (not c!647741)) b!3739189))

(assert (= (and b!3739189 c!647740) b!3739194))

(assert (= (and b!3739189 (not c!647740)) b!3739196))

(assert (= (or b!3739190 b!3739196) bm!274190))

(assert (= (or b!3739191 bm!274190) bm!274189))

(assert (= (or b!3739191 b!3739196) bm!274191))

(declare-fun m!4234801 () Bool)

(assert (=> bm!274189 m!4234801))

(declare-fun m!4234803 () Bool)

(assert (=> bm!274191 m!4234803))

(assert (=> bm!274115 d!1092125))

(declare-fun d!1092127 () Bool)

(declare-fun c!647746 () Bool)

(assert (=> d!1092127 (= c!647746 ((_ is Nil!39700) (usedCharacters!1206 (regOne!22398 r!26968))))))

(declare-fun e!2312357 () (InoxSet C!22072))

(assert (=> d!1092127 (= (content!5799 (usedCharacters!1206 (regOne!22398 r!26968))) e!2312357)))

(declare-fun b!3739202 () Bool)

(assert (=> b!3739202 (= e!2312357 ((as const (Array C!22072 Bool)) false))))

(declare-fun b!3739203 () Bool)

(assert (=> b!3739203 (= e!2312357 ((_ map or) (store ((as const (Array C!22072 Bool)) false) (h!45120 (usedCharacters!1206 (regOne!22398 r!26968))) true) (content!5799 (t!302507 (usedCharacters!1206 (regOne!22398 r!26968))))))))

(assert (= (and d!1092127 c!647746) b!3739202))

(assert (= (and d!1092127 (not c!647746)) b!3739203))

(declare-fun m!4234805 () Bool)

(assert (=> b!3739203 m!4234805))

(assert (=> b!3739203 m!4234789))

(assert (=> d!1092083 d!1092127))

(declare-fun b!3739204 () Bool)

(declare-fun e!2312358 () List!39824)

(assert (=> b!3739204 (= e!2312358 (ite c!647669 call!274136 call!274138))))

(declare-fun lt!1299123 () List!39824)

(declare-fun e!2312359 () Bool)

(declare-fun b!3739207 () Bool)

(assert (=> b!3739207 (= e!2312359 (or (not (= (ite c!647669 call!274136 call!274138) Nil!39700)) (= lt!1299123 (ite c!647669 call!274138 call!274136))))))

(declare-fun b!3739206 () Bool)

(declare-fun res!1516444 () Bool)

(assert (=> b!3739206 (=> (not res!1516444) (not e!2312359))))

(assert (=> b!3739206 (= res!1516444 (= (size!30049 lt!1299123) (+ (size!30049 (ite c!647669 call!274138 call!274136)) (size!30049 (ite c!647669 call!274136 call!274138)))))))

(declare-fun d!1092129 () Bool)

(assert (=> d!1092129 e!2312359))

(declare-fun res!1516445 () Bool)

(assert (=> d!1092129 (=> (not res!1516445) (not e!2312359))))

(assert (=> d!1092129 (= res!1516445 (= (content!5799 lt!1299123) ((_ map or) (content!5799 (ite c!647669 call!274138 call!274136)) (content!5799 (ite c!647669 call!274136 call!274138)))))))

(assert (=> d!1092129 (= lt!1299123 e!2312358)))

(declare-fun c!647747 () Bool)

(assert (=> d!1092129 (= c!647747 ((_ is Nil!39700) (ite c!647669 call!274138 call!274136)))))

(assert (=> d!1092129 (= (++!9866 (ite c!647669 call!274138 call!274136) (ite c!647669 call!274136 call!274138)) lt!1299123)))

(declare-fun b!3739205 () Bool)

(assert (=> b!3739205 (= e!2312358 (Cons!39700 (h!45120 (ite c!647669 call!274138 call!274136)) (++!9866 (t!302507 (ite c!647669 call!274138 call!274136)) (ite c!647669 call!274136 call!274138))))))

(assert (= (and d!1092129 c!647747) b!3739204))

(assert (= (and d!1092129 (not c!647747)) b!3739205))

(assert (= (and d!1092129 res!1516445) b!3739206))

(assert (= (and b!3739206 res!1516444) b!3739207))

(declare-fun m!4234807 () Bool)

(assert (=> b!3739206 m!4234807))

(declare-fun m!4234809 () Bool)

(assert (=> b!3739206 m!4234809))

(declare-fun m!4234811 () Bool)

(assert (=> b!3739206 m!4234811))

(declare-fun m!4234813 () Bool)

(assert (=> d!1092129 m!4234813))

(declare-fun m!4234815 () Bool)

(assert (=> d!1092129 m!4234815))

(declare-fun m!4234817 () Bool)

(assert (=> d!1092129 m!4234817))

(declare-fun m!4234819 () Bool)

(assert (=> b!3739205 m!4234819))

(assert (=> bm!274130 d!1092129))

(declare-fun bm!274192 () Bool)

(declare-fun c!647749 () Bool)

(declare-fun call!274198 () Bool)

(assert (=> bm!274192 (= call!274198 (validRegex!5050 (ite c!647749 (regOne!22399 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))) (regOne!22398 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))))))))

(declare-fun b!3739208 () Bool)

(declare-fun e!2312362 () Bool)

(declare-fun call!274199 () Bool)

(assert (=> b!3739208 (= e!2312362 call!274199)))

(declare-fun b!3739209 () Bool)

(declare-fun e!2312366 () Bool)

(declare-fun call!274197 () Bool)

(assert (=> b!3739209 (= e!2312366 call!274197)))

(declare-fun bm!274193 () Bool)

(declare-fun c!647748 () Bool)

(assert (=> bm!274193 (= call!274197 (validRegex!5050 (ite c!647748 (reg!11272 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))) (ite c!647749 (regTwo!22399 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))) (regTwo!22398 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968))))))))))

(declare-fun b!3739210 () Bool)

(declare-fun e!2312364 () Bool)

(assert (=> b!3739210 (= e!2312364 call!274199)))

(declare-fun b!3739211 () Bool)

(declare-fun res!1516446 () Bool)

(declare-fun e!2312361 () Bool)

(assert (=> b!3739211 (=> res!1516446 e!2312361)))

(assert (=> b!3739211 (= res!1516446 (not ((_ is Concat!17214) (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968))))))))

(declare-fun e!2312365 () Bool)

(assert (=> b!3739211 (= e!2312365 e!2312361)))

(declare-fun b!3739212 () Bool)

(declare-fun res!1516448 () Bool)

(assert (=> b!3739212 (=> (not res!1516448) (not e!2312364))))

(assert (=> b!3739212 (= res!1516448 call!274198)))

(assert (=> b!3739212 (= e!2312365 e!2312364)))

(declare-fun b!3739213 () Bool)

(assert (=> b!3739213 (= e!2312361 e!2312362)))

(declare-fun res!1516449 () Bool)

(assert (=> b!3739213 (=> (not res!1516449) (not e!2312362))))

(assert (=> b!3739213 (= res!1516449 call!274198)))

(declare-fun b!3739214 () Bool)

(declare-fun e!2312363 () Bool)

(declare-fun e!2312360 () Bool)

(assert (=> b!3739214 (= e!2312363 e!2312360)))

(assert (=> b!3739214 (= c!647748 ((_ is Star!10943) (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))))))

(declare-fun b!3739215 () Bool)

(assert (=> b!3739215 (= e!2312360 e!2312366)))

(declare-fun res!1516447 () Bool)

(assert (=> b!3739215 (= res!1516447 (not (nullable!3851 (reg!11272 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))))))))

(assert (=> b!3739215 (=> (not res!1516447) (not e!2312366))))

(declare-fun d!1092131 () Bool)

(declare-fun res!1516450 () Bool)

(assert (=> d!1092131 (=> res!1516450 e!2312363)))

(assert (=> d!1092131 (= res!1516450 ((_ is ElementMatch!10943) (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))))))

(assert (=> d!1092131 (= (validRegex!5050 (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))) e!2312363)))

(declare-fun b!3739216 () Bool)

(assert (=> b!3739216 (= e!2312360 e!2312365)))

(assert (=> b!3739216 (= c!647749 ((_ is Union!10943) (ite c!647636 (reg!11272 r!26968) (ite c!647637 (regTwo!22399 r!26968) (regTwo!22398 r!26968)))))))

(declare-fun bm!274194 () Bool)

(assert (=> bm!274194 (= call!274199 call!274197)))

(assert (= (and d!1092131 (not res!1516450)) b!3739214))

(assert (= (and b!3739214 c!647748) b!3739215))

(assert (= (and b!3739214 (not c!647748)) b!3739216))

(assert (= (and b!3739215 res!1516447) b!3739209))

(assert (= (and b!3739216 c!647749) b!3739212))

(assert (= (and b!3739216 (not c!647749)) b!3739211))

(assert (= (and b!3739212 res!1516448) b!3739210))

(assert (= (and b!3739211 (not res!1516446)) b!3739213))

(assert (= (and b!3739213 res!1516449) b!3739208))

(assert (= (or b!3739210 b!3739208) bm!274194))

(assert (= (or b!3739212 b!3739213) bm!274192))

(assert (= (or b!3739209 bm!274194) bm!274193))

(declare-fun m!4234821 () Bool)

(assert (=> bm!274192 m!4234821))

(declare-fun m!4234823 () Bool)

(assert (=> bm!274193 m!4234823))

(declare-fun m!4234825 () Bool)

(assert (=> b!3739215 m!4234825))

(assert (=> bm!274099 d!1092131))

(declare-fun d!1092133 () Bool)

(declare-fun res!1516461 () Bool)

(declare-fun e!2312382 () Bool)

(assert (=> d!1092133 (=> res!1516461 e!2312382)))

(assert (=> d!1092133 (= res!1516461 ((_ is EmptyExpr!10943) (regOne!22398 r!26968)))))

(assert (=> d!1092133 (= (nullableFct!1103 (regOne!22398 r!26968)) e!2312382)))

(declare-fun b!3739231 () Bool)

(declare-fun e!2312384 () Bool)

(declare-fun e!2312380 () Bool)

(assert (=> b!3739231 (= e!2312384 e!2312380)))

(declare-fun res!1516465 () Bool)

(declare-fun call!274205 () Bool)

(assert (=> b!3739231 (= res!1516465 call!274205)))

(assert (=> b!3739231 (=> (not res!1516465) (not e!2312380))))

(declare-fun bm!274199 () Bool)

(declare-fun call!274204 () Bool)

(declare-fun c!647752 () Bool)

(assert (=> bm!274199 (= call!274204 (nullable!3851 (ite c!647752 (regOne!22399 (regOne!22398 r!26968)) (regTwo!22398 (regOne!22398 r!26968)))))))

(declare-fun b!3739232 () Bool)

(declare-fun e!2312379 () Bool)

(assert (=> b!3739232 (= e!2312379 call!274205)))

(declare-fun bm!274200 () Bool)

(assert (=> bm!274200 (= call!274205 (nullable!3851 (ite c!647752 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))

(declare-fun b!3739233 () Bool)

(declare-fun e!2312381 () Bool)

(assert (=> b!3739233 (= e!2312381 e!2312384)))

(assert (=> b!3739233 (= c!647752 ((_ is Union!10943) (regOne!22398 r!26968)))))

(declare-fun b!3739234 () Bool)

(assert (=> b!3739234 (= e!2312384 e!2312379)))

(declare-fun res!1516462 () Bool)

(assert (=> b!3739234 (= res!1516462 call!274204)))

(assert (=> b!3739234 (=> res!1516462 e!2312379)))

(declare-fun b!3739235 () Bool)

(declare-fun e!2312383 () Bool)

(assert (=> b!3739235 (= e!2312383 e!2312381)))

(declare-fun res!1516463 () Bool)

(assert (=> b!3739235 (=> res!1516463 e!2312381)))

(assert (=> b!3739235 (= res!1516463 ((_ is Star!10943) (regOne!22398 r!26968)))))

(declare-fun b!3739236 () Bool)

(assert (=> b!3739236 (= e!2312382 e!2312383)))

(declare-fun res!1516464 () Bool)

(assert (=> b!3739236 (=> (not res!1516464) (not e!2312383))))

(assert (=> b!3739236 (= res!1516464 (and (not ((_ is EmptyLang!10943) (regOne!22398 r!26968))) (not ((_ is ElementMatch!10943) (regOne!22398 r!26968)))))))

(declare-fun b!3739237 () Bool)

(assert (=> b!3739237 (= e!2312380 call!274204)))

(assert (= (and d!1092133 (not res!1516461)) b!3739236))

(assert (= (and b!3739236 res!1516464) b!3739235))

(assert (= (and b!3739235 (not res!1516463)) b!3739233))

(assert (= (and b!3739233 c!647752) b!3739234))

(assert (= (and b!3739233 (not c!647752)) b!3739231))

(assert (= (and b!3739234 (not res!1516462)) b!3739232))

(assert (= (and b!3739231 res!1516465) b!3739237))

(assert (= (or b!3739232 b!3739231) bm!274200))

(assert (= (or b!3739234 b!3739237) bm!274199))

(declare-fun m!4234827 () Bool)

(assert (=> bm!274199 m!4234827))

(declare-fun m!4234829 () Bool)

(assert (=> bm!274200 m!4234829))

(assert (=> d!1092073 d!1092133))

(declare-fun call!274207 () Bool)

(declare-fun c!647754 () Bool)

(declare-fun bm!274201 () Bool)

(assert (=> bm!274201 (= call!274207 (validRegex!5050 (ite c!647754 (regOne!22399 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))) (regOne!22398 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))))

(declare-fun b!3739238 () Bool)

(declare-fun e!2312387 () Bool)

(declare-fun call!274208 () Bool)

(assert (=> b!3739238 (= e!2312387 call!274208)))

(declare-fun b!3739239 () Bool)

(declare-fun e!2312391 () Bool)

(declare-fun call!274206 () Bool)

(assert (=> b!3739239 (= e!2312391 call!274206)))

(declare-fun bm!274202 () Bool)

(declare-fun c!647753 () Bool)

(assert (=> bm!274202 (= call!274206 (validRegex!5050 (ite c!647753 (reg!11272 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))) (ite c!647754 (regTwo!22399 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))) (regTwo!22398 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))))))))

(declare-fun b!3739240 () Bool)

(declare-fun e!2312389 () Bool)

(assert (=> b!3739240 (= e!2312389 call!274208)))

(declare-fun b!3739241 () Bool)

(declare-fun res!1516466 () Bool)

(declare-fun e!2312386 () Bool)

(assert (=> b!3739241 (=> res!1516466 e!2312386)))

(assert (=> b!3739241 (= res!1516466 (not ((_ is Concat!17214) (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))))))

(declare-fun e!2312390 () Bool)

(assert (=> b!3739241 (= e!2312390 e!2312386)))

(declare-fun b!3739242 () Bool)

(declare-fun res!1516468 () Bool)

(assert (=> b!3739242 (=> (not res!1516468) (not e!2312389))))

(assert (=> b!3739242 (= res!1516468 call!274207)))

(assert (=> b!3739242 (= e!2312390 e!2312389)))

(declare-fun b!3739243 () Bool)

(assert (=> b!3739243 (= e!2312386 e!2312387)))

(declare-fun res!1516469 () Bool)

(assert (=> b!3739243 (=> (not res!1516469) (not e!2312387))))

(assert (=> b!3739243 (= res!1516469 call!274207)))

(declare-fun b!3739244 () Bool)

(declare-fun e!2312388 () Bool)

(declare-fun e!2312385 () Bool)

(assert (=> b!3739244 (= e!2312388 e!2312385)))

(assert (=> b!3739244 (= c!647753 ((_ is Star!10943) (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))

(declare-fun b!3739245 () Bool)

(assert (=> b!3739245 (= e!2312385 e!2312391)))

(declare-fun res!1516467 () Bool)

(assert (=> b!3739245 (= res!1516467 (not (nullable!3851 (reg!11272 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))))

(assert (=> b!3739245 (=> (not res!1516467) (not e!2312391))))

(declare-fun d!1092135 () Bool)

(declare-fun res!1516470 () Bool)

(assert (=> d!1092135 (=> res!1516470 e!2312388)))

(assert (=> d!1092135 (= res!1516470 ((_ is ElementMatch!10943) (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))

(assert (=> d!1092135 (= (validRegex!5050 (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))) e!2312388)))

(declare-fun b!3739246 () Bool)

(assert (=> b!3739246 (= e!2312385 e!2312390)))

(assert (=> b!3739246 (= c!647754 ((_ is Union!10943) (ite c!647677 (regOne!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))

(declare-fun bm!274203 () Bool)

(assert (=> bm!274203 (= call!274208 call!274206)))

(assert (= (and d!1092135 (not res!1516470)) b!3739244))

(assert (= (and b!3739244 c!647753) b!3739245))

(assert (= (and b!3739244 (not c!647753)) b!3739246))

(assert (= (and b!3739245 res!1516467) b!3739239))

(assert (= (and b!3739246 c!647754) b!3739242))

(assert (= (and b!3739246 (not c!647754)) b!3739241))

(assert (= (and b!3739242 res!1516468) b!3739240))

(assert (= (and b!3739241 (not res!1516466)) b!3739243))

(assert (= (and b!3739243 res!1516469) b!3739238))

(assert (= (or b!3739240 b!3739238) bm!274203))

(assert (= (or b!3739242 b!3739243) bm!274201))

(assert (= (or b!3739239 bm!274203) bm!274202))

(declare-fun m!4234831 () Bool)

(assert (=> bm!274201 m!4234831))

(declare-fun m!4234833 () Bool)

(assert (=> bm!274202 m!4234833))

(declare-fun m!4234835 () Bool)

(assert (=> b!3739245 m!4234835))

(assert (=> bm!274138 d!1092135))

(declare-fun d!1092137 () Bool)

(declare-fun c!647755 () Bool)

(assert (=> d!1092137 (= c!647755 ((_ is Nil!39700) (usedCharacters!1206 r!26968)))))

(declare-fun e!2312392 () (InoxSet C!22072))

(assert (=> d!1092137 (= (content!5799 (usedCharacters!1206 r!26968)) e!2312392)))

(declare-fun b!3739247 () Bool)

(assert (=> b!3739247 (= e!2312392 ((as const (Array C!22072 Bool)) false))))

(declare-fun b!3739248 () Bool)

(assert (=> b!3739248 (= e!2312392 ((_ map or) (store ((as const (Array C!22072 Bool)) false) (h!45120 (usedCharacters!1206 r!26968)) true) (content!5799 (t!302507 (usedCharacters!1206 r!26968)))))))

(assert (= (and d!1092137 c!647755) b!3739247))

(assert (= (and d!1092137 (not c!647755)) b!3739248))

(declare-fun m!4234837 () Bool)

(assert (=> b!3739248 m!4234837))

(assert (=> b!3739248 m!4234773))

(assert (=> d!1092091 d!1092137))

(declare-fun call!274211 () List!39824)

(declare-fun c!647757 () Bool)

(declare-fun call!274212 () List!39824)

(declare-fun call!274210 () List!39824)

(declare-fun bm!274204 () Bool)

(assert (=> bm!274204 (= call!274211 (++!9866 (ite c!647757 call!274212 call!274210) (ite c!647757 call!274210 call!274212)))))

(declare-fun bm!274205 () Bool)

(declare-fun call!274209 () List!39824)

(assert (=> bm!274205 (= call!274210 call!274209)))

(declare-fun b!3739249 () Bool)

(declare-fun c!647758 () Bool)

(assert (=> b!3739249 (= c!647758 ((_ is Star!10943) (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))))))

(declare-fun e!2312395 () List!39824)

(declare-fun e!2312396 () List!39824)

(assert (=> b!3739249 (= e!2312395 e!2312396)))

(declare-fun b!3739250 () Bool)

(declare-fun e!2312394 () List!39824)

(assert (=> b!3739250 (= e!2312396 e!2312394)))

(assert (=> b!3739250 (= c!647757 ((_ is Union!10943) (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))))))

(declare-fun bm!274206 () Bool)

(assert (=> bm!274206 (= call!274212 (usedCharacters!1206 (ite c!647757 (regOne!22399 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))) (regTwo!22398 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))))))))

(declare-fun b!3739251 () Bool)

(assert (=> b!3739251 (= e!2312394 call!274211)))

(declare-fun d!1092139 () Bool)

(declare-fun c!647756 () Bool)

(assert (=> d!1092139 (= c!647756 (or ((_ is EmptyExpr!10943) (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))) ((_ is EmptyLang!10943) (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968)))))))

(declare-fun e!2312393 () List!39824)

(assert (=> d!1092139 (= (usedCharacters!1206 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))) e!2312393)))

(declare-fun b!3739252 () Bool)

(assert (=> b!3739252 (= e!2312393 e!2312395)))

(declare-fun c!647759 () Bool)

(assert (=> b!3739252 (= c!647759 ((_ is ElementMatch!10943) (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))))))

(declare-fun b!3739253 () Bool)

(assert (=> b!3739253 (= e!2312396 call!274209)))

(declare-fun b!3739254 () Bool)

(assert (=> b!3739254 (= e!2312395 (Cons!39700 (c!647627 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))) Nil!39700))))

(declare-fun bm!274207 () Bool)

(assert (=> bm!274207 (= call!274209 (usedCharacters!1206 (ite c!647758 (reg!11272 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))) (ite c!647757 (regTwo!22399 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968))) (regOne!22398 (ite c!647673 (regOne!22399 r!26968) (regTwo!22398 r!26968)))))))))

(declare-fun b!3739255 () Bool)

(assert (=> b!3739255 (= e!2312393 Nil!39700)))

(declare-fun b!3739256 () Bool)

(assert (=> b!3739256 (= e!2312394 call!274211)))

(assert (= (and d!1092139 c!647756) b!3739255))

(assert (= (and d!1092139 (not c!647756)) b!3739252))

(assert (= (and b!3739252 c!647759) b!3739254))

(assert (= (and b!3739252 (not c!647759)) b!3739249))

(assert (= (and b!3739249 c!647758) b!3739253))

(assert (= (and b!3739249 (not c!647758)) b!3739250))

(assert (= (and b!3739250 c!647757) b!3739256))

(assert (= (and b!3739250 (not c!647757)) b!3739251))

(assert (= (or b!3739256 b!3739251) bm!274206))

(assert (= (or b!3739256 b!3739251) bm!274205))

(assert (= (or b!3739256 b!3739251) bm!274204))

(assert (= (or b!3739253 bm!274205) bm!274207))

(declare-fun m!4234839 () Bool)

(assert (=> bm!274204 m!4234839))

(declare-fun m!4234841 () Bool)

(assert (=> bm!274206 m!4234841))

(declare-fun m!4234843 () Bool)

(assert (=> bm!274207 m!4234843))

(assert (=> bm!274136 d!1092139))

(declare-fun d!1092141 () Bool)

(assert (=> d!1092141 (= (nullable!3851 (reg!11272 r!26968)) (nullableFct!1103 (reg!11272 r!26968)))))

(declare-fun bs!575206 () Bool)

(assert (= bs!575206 d!1092141))

(declare-fun m!4234845 () Bool)

(assert (=> bs!575206 m!4234845))

(assert (=> b!3738878 d!1092141))

(declare-fun call!274214 () List!39824)

(declare-fun bm!274208 () Bool)

(declare-fun call!274216 () List!39824)

(declare-fun c!647761 () Bool)

(declare-fun call!274215 () List!39824)

(assert (=> bm!274208 (= call!274215 (++!9866 (ite c!647761 call!274216 call!274214) (ite c!647761 call!274214 call!274216)))))

(declare-fun bm!274209 () Bool)

(declare-fun call!274213 () List!39824)

(assert (=> bm!274209 (= call!274214 call!274213)))

(declare-fun b!3739257 () Bool)

(declare-fun c!647762 () Bool)

(assert (=> b!3739257 (= c!647762 ((_ is Star!10943) (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))))))

(declare-fun e!2312399 () List!39824)

(declare-fun e!2312400 () List!39824)

(assert (=> b!3739257 (= e!2312399 e!2312400)))

(declare-fun b!3739258 () Bool)

(declare-fun e!2312398 () List!39824)

(assert (=> b!3739258 (= e!2312400 e!2312398)))

(assert (=> b!3739258 (= c!647761 ((_ is Union!10943) (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))))))

(declare-fun bm!274210 () Bool)

(assert (=> bm!274210 (= call!274216 (usedCharacters!1206 (ite c!647761 (regOne!22399 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))) (regTwo!22398 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))))))))

(declare-fun b!3739259 () Bool)

(assert (=> b!3739259 (= e!2312398 call!274215)))

(declare-fun c!647760 () Bool)

(declare-fun d!1092143 () Bool)

(assert (=> d!1092143 (= c!647760 (or ((_ is EmptyExpr!10943) (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))) ((_ is EmptyLang!10943) (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))))

(declare-fun e!2312397 () List!39824)

(assert (=> d!1092143 (= (usedCharacters!1206 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))) e!2312397)))

(declare-fun b!3739260 () Bool)

(assert (=> b!3739260 (= e!2312397 e!2312399)))

(declare-fun c!647763 () Bool)

(assert (=> b!3739260 (= c!647763 ((_ is ElementMatch!10943) (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))))))

(declare-fun b!3739261 () Bool)

(assert (=> b!3739261 (= e!2312400 call!274213)))

(declare-fun b!3739262 () Bool)

(assert (=> b!3739262 (= e!2312399 (Cons!39700 (c!647627 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))) Nil!39700))))

(declare-fun bm!274211 () Bool)

(assert (=> bm!274211 (= call!274213 (usedCharacters!1206 (ite c!647762 (reg!11272 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))) (ite c!647761 (regTwo!22399 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968))))) (regOne!22398 (ite c!647670 (reg!11272 (regOne!22398 r!26968)) (ite c!647669 (regTwo!22399 (regOne!22398 r!26968)) (regOne!22398 (regOne!22398 r!26968)))))))))))

(declare-fun b!3739263 () Bool)

(assert (=> b!3739263 (= e!2312397 Nil!39700)))

(declare-fun b!3739264 () Bool)

(assert (=> b!3739264 (= e!2312398 call!274215)))

(assert (= (and d!1092143 c!647760) b!3739263))

(assert (= (and d!1092143 (not c!647760)) b!3739260))

(assert (= (and b!3739260 c!647763) b!3739262))

(assert (= (and b!3739260 (not c!647763)) b!3739257))

(assert (= (and b!3739257 c!647762) b!3739261))

(assert (= (and b!3739257 (not c!647762)) b!3739258))

(assert (= (and b!3739258 c!647761) b!3739264))

(assert (= (and b!3739258 (not c!647761)) b!3739259))

(assert (= (or b!3739264 b!3739259) bm!274210))

(assert (= (or b!3739264 b!3739259) bm!274209))

(assert (= (or b!3739264 b!3739259) bm!274208))

(assert (= (or b!3739261 bm!274209) bm!274211))

(declare-fun m!4234847 () Bool)

(assert (=> bm!274208 m!4234847))

(declare-fun m!4234849 () Bool)

(assert (=> bm!274210 m!4234849))

(declare-fun m!4234851 () Bool)

(assert (=> bm!274211 m!4234851))

(assert (=> bm!274133 d!1092143))

(declare-fun c!647766 () Bool)

(declare-fun bm!274212 () Bool)

(declare-fun call!274218 () Int)

(declare-fun c!647767 () Bool)

(assert (=> bm!274212 (= call!274218 (RegexPrimitiveSize!149 (ite c!647767 (regOne!22398 (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))) (ite c!647766 (reg!11272 (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))) (regOne!22399 (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968))))))))))

(declare-fun d!1092145 () Bool)

(declare-fun lt!1299124 () Int)

(assert (=> d!1092145 (>= lt!1299124 0)))

(declare-fun e!2312405 () Int)

(assert (=> d!1092145 (= lt!1299124 e!2312405)))

(declare-fun c!647764 () Bool)

(assert (=> d!1092145 (= c!647764 ((_ is ElementMatch!10943) (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))))))

(assert (=> d!1092145 (= (RegexPrimitiveSize!149 (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))) lt!1299124)))

(declare-fun b!3739265 () Bool)

(assert (=> b!3739265 (= e!2312405 1)))

(declare-fun b!3739266 () Bool)

(declare-fun c!647765 () Bool)

(assert (=> b!3739266 (= c!647765 ((_ is EmptyLang!10943) (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))))))

(declare-fun e!2312404 () Int)

(declare-fun e!2312402 () Int)

(assert (=> b!3739266 (= e!2312404 e!2312402)))

(declare-fun bm!274213 () Bool)

(declare-fun call!274219 () Int)

(assert (=> bm!274213 (= call!274219 call!274218)))

(declare-fun b!3739267 () Bool)

(assert (=> b!3739267 (= e!2312404 (+ 1 call!274219))))

(declare-fun b!3739268 () Bool)

(declare-fun e!2312403 () Int)

(declare-fun call!274217 () Int)

(assert (=> b!3739268 (= e!2312403 (+ 1 call!274218 call!274217))))

(declare-fun b!3739269 () Bool)

(assert (=> b!3739269 (= e!2312405 e!2312403)))

(assert (=> b!3739269 (= c!647767 ((_ is Concat!17214) (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))))))

(declare-fun bm!274214 () Bool)

(assert (=> bm!274214 (= call!274217 (RegexPrimitiveSize!149 (ite c!647767 (regTwo!22398 (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))) (regTwo!22399 (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))))))))

(declare-fun b!3739270 () Bool)

(declare-fun e!2312401 () Int)

(assert (=> b!3739270 (= e!2312401 0)))

(declare-fun b!3739271 () Bool)

(assert (=> b!3739271 (= e!2312402 0)))

(declare-fun b!3739272 () Bool)

(assert (=> b!3739272 (= e!2312401 e!2312404)))

(assert (=> b!3739272 (= c!647766 ((_ is Star!10943) (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))))))

(declare-fun b!3739273 () Bool)

(assert (=> b!3739273 (= e!2312402 (+ 1 call!274219 call!274217))))

(declare-fun b!3739274 () Bool)

(declare-fun c!647768 () Bool)

(assert (=> b!3739274 (= c!647768 ((_ is EmptyExpr!10943) (ite c!647656 (regOne!22398 r!26968) (ite c!647655 (reg!11272 r!26968) (regOne!22399 r!26968)))))))

(assert (=> b!3739274 (= e!2312403 e!2312401)))

(assert (= (and d!1092145 c!647764) b!3739265))

(assert (= (and d!1092145 (not c!647764)) b!3739269))

(assert (= (and b!3739269 c!647767) b!3739268))

(assert (= (and b!3739269 (not c!647767)) b!3739274))

(assert (= (and b!3739274 c!647768) b!3739270))

(assert (= (and b!3739274 (not c!647768)) b!3739272))

(assert (= (and b!3739272 c!647766) b!3739267))

(assert (= (and b!3739272 (not c!647766)) b!3739266))

(assert (= (and b!3739266 c!647765) b!3739271))

(assert (= (and b!3739266 (not c!647765)) b!3739273))

(assert (= (or b!3739267 b!3739273) bm!274213))

(assert (= (or b!3739268 bm!274213) bm!274212))

(assert (= (or b!3739268 b!3739273) bm!274214))

(declare-fun m!4234853 () Bool)

(assert (=> bm!274212 m!4234853))

(declare-fun m!4234855 () Bool)

(assert (=> bm!274214 m!4234855))

(assert (=> bm!274116 d!1092145))

(declare-fun c!647770 () Bool)

(declare-fun call!274221 () Bool)

(declare-fun bm!274215 () Bool)

(assert (=> bm!274215 (= call!274221 (validRegex!5050 (ite c!647770 (regOne!22399 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))) (regOne!22398 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))))))))

(declare-fun b!3739275 () Bool)

(declare-fun e!2312408 () Bool)

(declare-fun call!274222 () Bool)

(assert (=> b!3739275 (= e!2312408 call!274222)))

(declare-fun b!3739276 () Bool)

(declare-fun e!2312412 () Bool)

(declare-fun call!274220 () Bool)

(assert (=> b!3739276 (= e!2312412 call!274220)))

(declare-fun c!647769 () Bool)

(declare-fun bm!274216 () Bool)

(assert (=> bm!274216 (= call!274220 (validRegex!5050 (ite c!647769 (reg!11272 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))) (ite c!647770 (regTwo!22399 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))) (regTwo!22398 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968)))))))))

(declare-fun b!3739277 () Bool)

(declare-fun e!2312410 () Bool)

(assert (=> b!3739277 (= e!2312410 call!274222)))

(declare-fun b!3739278 () Bool)

(declare-fun res!1516471 () Bool)

(declare-fun e!2312407 () Bool)

(assert (=> b!3739278 (=> res!1516471 e!2312407)))

(assert (=> b!3739278 (= res!1516471 (not ((_ is Concat!17214) (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968)))))))

(declare-fun e!2312411 () Bool)

(assert (=> b!3739278 (= e!2312411 e!2312407)))

(declare-fun b!3739279 () Bool)

(declare-fun res!1516473 () Bool)

(assert (=> b!3739279 (=> (not res!1516473) (not e!2312410))))

(assert (=> b!3739279 (= res!1516473 call!274221)))

(assert (=> b!3739279 (= e!2312411 e!2312410)))

(declare-fun b!3739280 () Bool)

(assert (=> b!3739280 (= e!2312407 e!2312408)))

(declare-fun res!1516474 () Bool)

(assert (=> b!3739280 (=> (not res!1516474) (not e!2312408))))

(assert (=> b!3739280 (= res!1516474 call!274221)))

(declare-fun b!3739281 () Bool)

(declare-fun e!2312409 () Bool)

(declare-fun e!2312406 () Bool)

(assert (=> b!3739281 (= e!2312409 e!2312406)))

(assert (=> b!3739281 (= c!647769 ((_ is Star!10943) (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))))))

(declare-fun b!3739282 () Bool)

(assert (=> b!3739282 (= e!2312406 e!2312412)))

(declare-fun res!1516472 () Bool)

(assert (=> b!3739282 (= res!1516472 (not (nullable!3851 (reg!11272 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))))))))

(assert (=> b!3739282 (=> (not res!1516472) (not e!2312412))))

(declare-fun d!1092147 () Bool)

(declare-fun res!1516475 () Bool)

(assert (=> d!1092147 (=> res!1516475 e!2312409)))

(assert (=> d!1092147 (= res!1516475 ((_ is ElementMatch!10943) (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))))))

(assert (=> d!1092147 (= (validRegex!5050 (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))) e!2312409)))

(declare-fun b!3739283 () Bool)

(assert (=> b!3739283 (= e!2312406 e!2312411)))

(assert (=> b!3739283 (= c!647770 ((_ is Union!10943) (ite c!647637 (regOne!22399 r!26968) (regOne!22398 r!26968))))))

(declare-fun bm!274217 () Bool)

(assert (=> bm!274217 (= call!274222 call!274220)))

(assert (= (and d!1092147 (not res!1516475)) b!3739281))

(assert (= (and b!3739281 c!647769) b!3739282))

(assert (= (and b!3739281 (not c!647769)) b!3739283))

(assert (= (and b!3739282 res!1516472) b!3739276))

(assert (= (and b!3739283 c!647770) b!3739279))

(assert (= (and b!3739283 (not c!647770)) b!3739278))

(assert (= (and b!3739279 res!1516473) b!3739277))

(assert (= (and b!3739278 (not res!1516471)) b!3739280))

(assert (= (and b!3739280 res!1516474) b!3739275))

(assert (= (or b!3739277 b!3739275) bm!274217))

(assert (= (or b!3739279 b!3739280) bm!274215))

(assert (= (or b!3739276 bm!274217) bm!274216))

(declare-fun m!4234857 () Bool)

(assert (=> bm!274215 m!4234857))

(declare-fun m!4234859 () Bool)

(assert (=> bm!274216 m!4234859))

(declare-fun m!4234861 () Bool)

(assert (=> b!3739282 m!4234861))

(assert (=> bm!274098 d!1092147))

(declare-fun d!1092149 () Bool)

(assert (=> d!1092149 (= (nullable!3851 (reg!11272 (regOne!22398 r!26968))) (nullableFct!1103 (reg!11272 (regOne!22398 r!26968))))))

(declare-fun bs!575207 () Bool)

(assert (= bs!575207 d!1092149))

(declare-fun m!4234863 () Bool)

(assert (=> bs!575207 m!4234863))

(assert (=> b!3738982 d!1092149))

(declare-fun b!3739284 () Bool)

(declare-fun e!2312413 () Bool)

(assert (=> b!3739284 (= e!2312413 tp_is_empty!18901)))

(assert (=> b!3739013 (= tp!1138809 e!2312413)))

(declare-fun b!3739285 () Bool)

(declare-fun tp!1138856 () Bool)

(declare-fun tp!1138858 () Bool)

(assert (=> b!3739285 (= e!2312413 (and tp!1138856 tp!1138858))))

(declare-fun b!3739287 () Bool)

(declare-fun tp!1138859 () Bool)

(declare-fun tp!1138855 () Bool)

(assert (=> b!3739287 (= e!2312413 (and tp!1138859 tp!1138855))))

(declare-fun b!3739286 () Bool)

(declare-fun tp!1138857 () Bool)

(assert (=> b!3739286 (= e!2312413 tp!1138857)))

(assert (= (and b!3739013 ((_ is ElementMatch!10943) (regOne!22399 (regTwo!22399 r!26968)))) b!3739284))

(assert (= (and b!3739013 ((_ is Concat!17214) (regOne!22399 (regTwo!22399 r!26968)))) b!3739285))

(assert (= (and b!3739013 ((_ is Star!10943) (regOne!22399 (regTwo!22399 r!26968)))) b!3739286))

(assert (= (and b!3739013 ((_ is Union!10943) (regOne!22399 (regTwo!22399 r!26968)))) b!3739287))

(declare-fun b!3739288 () Bool)

(declare-fun e!2312414 () Bool)

(assert (=> b!3739288 (= e!2312414 tp_is_empty!18901)))

(assert (=> b!3739013 (= tp!1138805 e!2312414)))

(declare-fun b!3739289 () Bool)

(declare-fun tp!1138861 () Bool)

(declare-fun tp!1138863 () Bool)

(assert (=> b!3739289 (= e!2312414 (and tp!1138861 tp!1138863))))

(declare-fun b!3739291 () Bool)

(declare-fun tp!1138864 () Bool)

(declare-fun tp!1138860 () Bool)

(assert (=> b!3739291 (= e!2312414 (and tp!1138864 tp!1138860))))

(declare-fun b!3739290 () Bool)

(declare-fun tp!1138862 () Bool)

(assert (=> b!3739290 (= e!2312414 tp!1138862)))

(assert (= (and b!3739013 ((_ is ElementMatch!10943) (regTwo!22399 (regTwo!22399 r!26968)))) b!3739288))

(assert (= (and b!3739013 ((_ is Concat!17214) (regTwo!22399 (regTwo!22399 r!26968)))) b!3739289))

(assert (= (and b!3739013 ((_ is Star!10943) (regTwo!22399 (regTwo!22399 r!26968)))) b!3739290))

(assert (= (and b!3739013 ((_ is Union!10943) (regTwo!22399 (regTwo!22399 r!26968)))) b!3739291))

(declare-fun b!3739292 () Bool)

(declare-fun e!2312415 () Bool)

(assert (=> b!3739292 (= e!2312415 tp_is_empty!18901)))

(assert (=> b!3739012 (= tp!1138807 e!2312415)))

(declare-fun b!3739293 () Bool)

(declare-fun tp!1138866 () Bool)

(declare-fun tp!1138868 () Bool)

(assert (=> b!3739293 (= e!2312415 (and tp!1138866 tp!1138868))))

(declare-fun b!3739295 () Bool)

(declare-fun tp!1138869 () Bool)

(declare-fun tp!1138865 () Bool)

(assert (=> b!3739295 (= e!2312415 (and tp!1138869 tp!1138865))))

(declare-fun b!3739294 () Bool)

(declare-fun tp!1138867 () Bool)

(assert (=> b!3739294 (= e!2312415 tp!1138867)))

(assert (= (and b!3739012 ((_ is ElementMatch!10943) (reg!11272 (regTwo!22399 r!26968)))) b!3739292))

(assert (= (and b!3739012 ((_ is Concat!17214) (reg!11272 (regTwo!22399 r!26968)))) b!3739293))

(assert (= (and b!3739012 ((_ is Star!10943) (reg!11272 (regTwo!22399 r!26968)))) b!3739294))

(assert (= (and b!3739012 ((_ is Union!10943) (reg!11272 (regTwo!22399 r!26968)))) b!3739295))

(declare-fun b!3739296 () Bool)

(declare-fun e!2312416 () Bool)

(assert (=> b!3739296 (= e!2312416 tp_is_empty!18901)))

(assert (=> b!3739011 (= tp!1138806 e!2312416)))

(declare-fun b!3739297 () Bool)

(declare-fun tp!1138871 () Bool)

(declare-fun tp!1138873 () Bool)

(assert (=> b!3739297 (= e!2312416 (and tp!1138871 tp!1138873))))

(declare-fun b!3739299 () Bool)

(declare-fun tp!1138874 () Bool)

(declare-fun tp!1138870 () Bool)

(assert (=> b!3739299 (= e!2312416 (and tp!1138874 tp!1138870))))

(declare-fun b!3739298 () Bool)

(declare-fun tp!1138872 () Bool)

(assert (=> b!3739298 (= e!2312416 tp!1138872)))

(assert (= (and b!3739011 ((_ is ElementMatch!10943) (regOne!22398 (regTwo!22399 r!26968)))) b!3739296))

(assert (= (and b!3739011 ((_ is Concat!17214) (regOne!22398 (regTwo!22399 r!26968)))) b!3739297))

(assert (= (and b!3739011 ((_ is Star!10943) (regOne!22398 (regTwo!22399 r!26968)))) b!3739298))

(assert (= (and b!3739011 ((_ is Union!10943) (regOne!22398 (regTwo!22399 r!26968)))) b!3739299))

(declare-fun b!3739300 () Bool)

(declare-fun e!2312417 () Bool)

(assert (=> b!3739300 (= e!2312417 tp_is_empty!18901)))

(assert (=> b!3739011 (= tp!1138808 e!2312417)))

(declare-fun b!3739301 () Bool)

(declare-fun tp!1138876 () Bool)

(declare-fun tp!1138878 () Bool)

(assert (=> b!3739301 (= e!2312417 (and tp!1138876 tp!1138878))))

(declare-fun b!3739303 () Bool)

(declare-fun tp!1138879 () Bool)

(declare-fun tp!1138875 () Bool)

(assert (=> b!3739303 (= e!2312417 (and tp!1138879 tp!1138875))))

(declare-fun b!3739302 () Bool)

(declare-fun tp!1138877 () Bool)

(assert (=> b!3739302 (= e!2312417 tp!1138877)))

(assert (= (and b!3739011 ((_ is ElementMatch!10943) (regTwo!22398 (regTwo!22399 r!26968)))) b!3739300))

(assert (= (and b!3739011 ((_ is Concat!17214) (regTwo!22398 (regTwo!22399 r!26968)))) b!3739301))

(assert (= (and b!3739011 ((_ is Star!10943) (regTwo!22398 (regTwo!22399 r!26968)))) b!3739302))

(assert (= (and b!3739011 ((_ is Union!10943) (regTwo!22398 (regTwo!22399 r!26968)))) b!3739303))

(declare-fun b!3739304 () Bool)

(declare-fun e!2312418 () Bool)

(assert (=> b!3739304 (= e!2312418 tp_is_empty!18901)))

(assert (=> b!3738997 (= tp!1138799 e!2312418)))

(declare-fun b!3739305 () Bool)

(declare-fun tp!1138881 () Bool)

(declare-fun tp!1138883 () Bool)

(assert (=> b!3739305 (= e!2312418 (and tp!1138881 tp!1138883))))

(declare-fun b!3739307 () Bool)

(declare-fun tp!1138884 () Bool)

(declare-fun tp!1138880 () Bool)

(assert (=> b!3739307 (= e!2312418 (and tp!1138884 tp!1138880))))

(declare-fun b!3739306 () Bool)

(declare-fun tp!1138882 () Bool)

(assert (=> b!3739306 (= e!2312418 tp!1138882)))

(assert (= (and b!3738997 ((_ is ElementMatch!10943) (regOne!22399 (reg!11272 r!26968)))) b!3739304))

(assert (= (and b!3738997 ((_ is Concat!17214) (regOne!22399 (reg!11272 r!26968)))) b!3739305))

(assert (= (and b!3738997 ((_ is Star!10943) (regOne!22399 (reg!11272 r!26968)))) b!3739306))

(assert (= (and b!3738997 ((_ is Union!10943) (regOne!22399 (reg!11272 r!26968)))) b!3739307))

(declare-fun b!3739308 () Bool)

(declare-fun e!2312419 () Bool)

(assert (=> b!3739308 (= e!2312419 tp_is_empty!18901)))

(assert (=> b!3738997 (= tp!1138795 e!2312419)))

(declare-fun b!3739309 () Bool)

(declare-fun tp!1138886 () Bool)

(declare-fun tp!1138888 () Bool)

(assert (=> b!3739309 (= e!2312419 (and tp!1138886 tp!1138888))))

(declare-fun b!3739311 () Bool)

(declare-fun tp!1138889 () Bool)

(declare-fun tp!1138885 () Bool)

(assert (=> b!3739311 (= e!2312419 (and tp!1138889 tp!1138885))))

(declare-fun b!3739310 () Bool)

(declare-fun tp!1138887 () Bool)

(assert (=> b!3739310 (= e!2312419 tp!1138887)))

(assert (= (and b!3738997 ((_ is ElementMatch!10943) (regTwo!22399 (reg!11272 r!26968)))) b!3739308))

(assert (= (and b!3738997 ((_ is Concat!17214) (regTwo!22399 (reg!11272 r!26968)))) b!3739309))

(assert (= (and b!3738997 ((_ is Star!10943) (regTwo!22399 (reg!11272 r!26968)))) b!3739310))

(assert (= (and b!3738997 ((_ is Union!10943) (regTwo!22399 (reg!11272 r!26968)))) b!3739311))

(declare-fun b!3739312 () Bool)

(declare-fun e!2312420 () Bool)

(assert (=> b!3739312 (= e!2312420 tp_is_empty!18901)))

(assert (=> b!3738996 (= tp!1138797 e!2312420)))

(declare-fun b!3739313 () Bool)

(declare-fun tp!1138891 () Bool)

(declare-fun tp!1138893 () Bool)

(assert (=> b!3739313 (= e!2312420 (and tp!1138891 tp!1138893))))

(declare-fun b!3739315 () Bool)

(declare-fun tp!1138894 () Bool)

(declare-fun tp!1138890 () Bool)

(assert (=> b!3739315 (= e!2312420 (and tp!1138894 tp!1138890))))

(declare-fun b!3739314 () Bool)

(declare-fun tp!1138892 () Bool)

(assert (=> b!3739314 (= e!2312420 tp!1138892)))

(assert (= (and b!3738996 ((_ is ElementMatch!10943) (reg!11272 (reg!11272 r!26968)))) b!3739312))

(assert (= (and b!3738996 ((_ is Concat!17214) (reg!11272 (reg!11272 r!26968)))) b!3739313))

(assert (= (and b!3738996 ((_ is Star!10943) (reg!11272 (reg!11272 r!26968)))) b!3739314))

(assert (= (and b!3738996 ((_ is Union!10943) (reg!11272 (reg!11272 r!26968)))) b!3739315))

(declare-fun b!3739316 () Bool)

(declare-fun e!2312421 () Bool)

(assert (=> b!3739316 (= e!2312421 tp_is_empty!18901)))

(assert (=> b!3739029 (= tp!1138819 e!2312421)))

(declare-fun b!3739317 () Bool)

(declare-fun tp!1138896 () Bool)

(declare-fun tp!1138898 () Bool)

(assert (=> b!3739317 (= e!2312421 (and tp!1138896 tp!1138898))))

(declare-fun b!3739319 () Bool)

(declare-fun tp!1138899 () Bool)

(declare-fun tp!1138895 () Bool)

(assert (=> b!3739319 (= e!2312421 (and tp!1138899 tp!1138895))))

(declare-fun b!3739318 () Bool)

(declare-fun tp!1138897 () Bool)

(assert (=> b!3739318 (= e!2312421 tp!1138897)))

(assert (= (and b!3739029 ((_ is ElementMatch!10943) (regOne!22399 (regTwo!22398 r!26968)))) b!3739316))

(assert (= (and b!3739029 ((_ is Concat!17214) (regOne!22399 (regTwo!22398 r!26968)))) b!3739317))

(assert (= (and b!3739029 ((_ is Star!10943) (regOne!22399 (regTwo!22398 r!26968)))) b!3739318))

(assert (= (and b!3739029 ((_ is Union!10943) (regOne!22399 (regTwo!22398 r!26968)))) b!3739319))

(declare-fun b!3739320 () Bool)

(declare-fun e!2312422 () Bool)

(assert (=> b!3739320 (= e!2312422 tp_is_empty!18901)))

(assert (=> b!3739029 (= tp!1138815 e!2312422)))

(declare-fun b!3739321 () Bool)

(declare-fun tp!1138901 () Bool)

(declare-fun tp!1138903 () Bool)

(assert (=> b!3739321 (= e!2312422 (and tp!1138901 tp!1138903))))

(declare-fun b!3739323 () Bool)

(declare-fun tp!1138904 () Bool)

(declare-fun tp!1138900 () Bool)

(assert (=> b!3739323 (= e!2312422 (and tp!1138904 tp!1138900))))

(declare-fun b!3739322 () Bool)

(declare-fun tp!1138902 () Bool)

(assert (=> b!3739322 (= e!2312422 tp!1138902)))

(assert (= (and b!3739029 ((_ is ElementMatch!10943) (regTwo!22399 (regTwo!22398 r!26968)))) b!3739320))

(assert (= (and b!3739029 ((_ is Concat!17214) (regTwo!22399 (regTwo!22398 r!26968)))) b!3739321))

(assert (= (and b!3739029 ((_ is Star!10943) (regTwo!22399 (regTwo!22398 r!26968)))) b!3739322))

(assert (= (and b!3739029 ((_ is Union!10943) (regTwo!22399 (regTwo!22398 r!26968)))) b!3739323))

(declare-fun b!3739324 () Bool)

(declare-fun e!2312423 () Bool)

(assert (=> b!3739324 (= e!2312423 tp_is_empty!18901)))

(assert (=> b!3738995 (= tp!1138796 e!2312423)))

(declare-fun b!3739325 () Bool)

(declare-fun tp!1138906 () Bool)

(declare-fun tp!1138908 () Bool)

(assert (=> b!3739325 (= e!2312423 (and tp!1138906 tp!1138908))))

(declare-fun b!3739327 () Bool)

(declare-fun tp!1138909 () Bool)

(declare-fun tp!1138905 () Bool)

(assert (=> b!3739327 (= e!2312423 (and tp!1138909 tp!1138905))))

(declare-fun b!3739326 () Bool)

(declare-fun tp!1138907 () Bool)

(assert (=> b!3739326 (= e!2312423 tp!1138907)))

(assert (= (and b!3738995 ((_ is ElementMatch!10943) (regOne!22398 (reg!11272 r!26968)))) b!3739324))

(assert (= (and b!3738995 ((_ is Concat!17214) (regOne!22398 (reg!11272 r!26968)))) b!3739325))

(assert (= (and b!3738995 ((_ is Star!10943) (regOne!22398 (reg!11272 r!26968)))) b!3739326))

(assert (= (and b!3738995 ((_ is Union!10943) (regOne!22398 (reg!11272 r!26968)))) b!3739327))

(declare-fun b!3739328 () Bool)

(declare-fun e!2312424 () Bool)

(assert (=> b!3739328 (= e!2312424 tp_is_empty!18901)))

(assert (=> b!3738995 (= tp!1138798 e!2312424)))

(declare-fun b!3739329 () Bool)

(declare-fun tp!1138911 () Bool)

(declare-fun tp!1138913 () Bool)

(assert (=> b!3739329 (= e!2312424 (and tp!1138911 tp!1138913))))

(declare-fun b!3739331 () Bool)

(declare-fun tp!1138914 () Bool)

(declare-fun tp!1138910 () Bool)

(assert (=> b!3739331 (= e!2312424 (and tp!1138914 tp!1138910))))

(declare-fun b!3739330 () Bool)

(declare-fun tp!1138912 () Bool)

(assert (=> b!3739330 (= e!2312424 tp!1138912)))

(assert (= (and b!3738995 ((_ is ElementMatch!10943) (regTwo!22398 (reg!11272 r!26968)))) b!3739328))

(assert (= (and b!3738995 ((_ is Concat!17214) (regTwo!22398 (reg!11272 r!26968)))) b!3739329))

(assert (= (and b!3738995 ((_ is Star!10943) (regTwo!22398 (reg!11272 r!26968)))) b!3739330))

(assert (= (and b!3738995 ((_ is Union!10943) (regTwo!22398 (reg!11272 r!26968)))) b!3739331))

(declare-fun b!3739332 () Bool)

(declare-fun e!2312425 () Bool)

(assert (=> b!3739332 (= e!2312425 tp_is_empty!18901)))

(assert (=> b!3739025 (= tp!1138814 e!2312425)))

(declare-fun b!3739333 () Bool)

(declare-fun tp!1138916 () Bool)

(declare-fun tp!1138918 () Bool)

(assert (=> b!3739333 (= e!2312425 (and tp!1138916 tp!1138918))))

(declare-fun b!3739335 () Bool)

(declare-fun tp!1138919 () Bool)

(declare-fun tp!1138915 () Bool)

(assert (=> b!3739335 (= e!2312425 (and tp!1138919 tp!1138915))))

(declare-fun b!3739334 () Bool)

(declare-fun tp!1138917 () Bool)

(assert (=> b!3739334 (= e!2312425 tp!1138917)))

(assert (= (and b!3739025 ((_ is ElementMatch!10943) (regOne!22399 (regOne!22398 r!26968)))) b!3739332))

(assert (= (and b!3739025 ((_ is Concat!17214) (regOne!22399 (regOne!22398 r!26968)))) b!3739333))

(assert (= (and b!3739025 ((_ is Star!10943) (regOne!22399 (regOne!22398 r!26968)))) b!3739334))

(assert (= (and b!3739025 ((_ is Union!10943) (regOne!22399 (regOne!22398 r!26968)))) b!3739335))

(declare-fun b!3739336 () Bool)

(declare-fun e!2312426 () Bool)

(assert (=> b!3739336 (= e!2312426 tp_is_empty!18901)))

(assert (=> b!3739025 (= tp!1138810 e!2312426)))

(declare-fun b!3739337 () Bool)

(declare-fun tp!1138921 () Bool)

(declare-fun tp!1138923 () Bool)

(assert (=> b!3739337 (= e!2312426 (and tp!1138921 tp!1138923))))

(declare-fun b!3739339 () Bool)

(declare-fun tp!1138924 () Bool)

(declare-fun tp!1138920 () Bool)

(assert (=> b!3739339 (= e!2312426 (and tp!1138924 tp!1138920))))

(declare-fun b!3739338 () Bool)

(declare-fun tp!1138922 () Bool)

(assert (=> b!3739338 (= e!2312426 tp!1138922)))

(assert (= (and b!3739025 ((_ is ElementMatch!10943) (regTwo!22399 (regOne!22398 r!26968)))) b!3739336))

(assert (= (and b!3739025 ((_ is Concat!17214) (regTwo!22399 (regOne!22398 r!26968)))) b!3739337))

(assert (= (and b!3739025 ((_ is Star!10943) (regTwo!22399 (regOne!22398 r!26968)))) b!3739338))

(assert (= (and b!3739025 ((_ is Union!10943) (regTwo!22399 (regOne!22398 r!26968)))) b!3739339))

(declare-fun b!3739340 () Bool)

(declare-fun e!2312427 () Bool)

(assert (=> b!3739340 (= e!2312427 tp_is_empty!18901)))

(assert (=> b!3739028 (= tp!1138817 e!2312427)))

(declare-fun b!3739341 () Bool)

(declare-fun tp!1138926 () Bool)

(declare-fun tp!1138928 () Bool)

(assert (=> b!3739341 (= e!2312427 (and tp!1138926 tp!1138928))))

(declare-fun b!3739343 () Bool)

(declare-fun tp!1138929 () Bool)

(declare-fun tp!1138925 () Bool)

(assert (=> b!3739343 (= e!2312427 (and tp!1138929 tp!1138925))))

(declare-fun b!3739342 () Bool)

(declare-fun tp!1138927 () Bool)

(assert (=> b!3739342 (= e!2312427 tp!1138927)))

(assert (= (and b!3739028 ((_ is ElementMatch!10943) (reg!11272 (regTwo!22398 r!26968)))) b!3739340))

(assert (= (and b!3739028 ((_ is Concat!17214) (reg!11272 (regTwo!22398 r!26968)))) b!3739341))

(assert (= (and b!3739028 ((_ is Star!10943) (reg!11272 (regTwo!22398 r!26968)))) b!3739342))

(assert (= (and b!3739028 ((_ is Union!10943) (reg!11272 (regTwo!22398 r!26968)))) b!3739343))

(declare-fun b!3739344 () Bool)

(declare-fun e!2312428 () Bool)

(assert (=> b!3739344 (= e!2312428 tp_is_empty!18901)))

(assert (=> b!3739023 (= tp!1138811 e!2312428)))

(declare-fun b!3739345 () Bool)

(declare-fun tp!1138931 () Bool)

(declare-fun tp!1138933 () Bool)

(assert (=> b!3739345 (= e!2312428 (and tp!1138931 tp!1138933))))

(declare-fun b!3739347 () Bool)

(declare-fun tp!1138934 () Bool)

(declare-fun tp!1138930 () Bool)

(assert (=> b!3739347 (= e!2312428 (and tp!1138934 tp!1138930))))

(declare-fun b!3739346 () Bool)

(declare-fun tp!1138932 () Bool)

(assert (=> b!3739346 (= e!2312428 tp!1138932)))

(assert (= (and b!3739023 ((_ is ElementMatch!10943) (regOne!22398 (regOne!22398 r!26968)))) b!3739344))

(assert (= (and b!3739023 ((_ is Concat!17214) (regOne!22398 (regOne!22398 r!26968)))) b!3739345))

(assert (= (and b!3739023 ((_ is Star!10943) (regOne!22398 (regOne!22398 r!26968)))) b!3739346))

(assert (= (and b!3739023 ((_ is Union!10943) (regOne!22398 (regOne!22398 r!26968)))) b!3739347))

(declare-fun b!3739348 () Bool)

(declare-fun e!2312429 () Bool)

(assert (=> b!3739348 (= e!2312429 tp_is_empty!18901)))

(assert (=> b!3739023 (= tp!1138813 e!2312429)))

(declare-fun b!3739349 () Bool)

(declare-fun tp!1138936 () Bool)

(declare-fun tp!1138938 () Bool)

(assert (=> b!3739349 (= e!2312429 (and tp!1138936 tp!1138938))))

(declare-fun b!3739351 () Bool)

(declare-fun tp!1138939 () Bool)

(declare-fun tp!1138935 () Bool)

(assert (=> b!3739351 (= e!2312429 (and tp!1138939 tp!1138935))))

(declare-fun b!3739350 () Bool)

(declare-fun tp!1138937 () Bool)

(assert (=> b!3739350 (= e!2312429 tp!1138937)))

(assert (= (and b!3739023 ((_ is ElementMatch!10943) (regTwo!22398 (regOne!22398 r!26968)))) b!3739348))

(assert (= (and b!3739023 ((_ is Concat!17214) (regTwo!22398 (regOne!22398 r!26968)))) b!3739349))

(assert (= (and b!3739023 ((_ is Star!10943) (regTwo!22398 (regOne!22398 r!26968)))) b!3739350))

(assert (= (and b!3739023 ((_ is Union!10943) (regTwo!22398 (regOne!22398 r!26968)))) b!3739351))

(declare-fun b!3739352 () Bool)

(declare-fun e!2312430 () Bool)

(assert (=> b!3739352 (= e!2312430 tp_is_empty!18901)))

(assert (=> b!3739024 (= tp!1138812 e!2312430)))

(declare-fun b!3739353 () Bool)

(declare-fun tp!1138941 () Bool)

(declare-fun tp!1138943 () Bool)

(assert (=> b!3739353 (= e!2312430 (and tp!1138941 tp!1138943))))

(declare-fun b!3739355 () Bool)

(declare-fun tp!1138944 () Bool)

(declare-fun tp!1138940 () Bool)

(assert (=> b!3739355 (= e!2312430 (and tp!1138944 tp!1138940))))

(declare-fun b!3739354 () Bool)

(declare-fun tp!1138942 () Bool)

(assert (=> b!3739354 (= e!2312430 tp!1138942)))

(assert (= (and b!3739024 ((_ is ElementMatch!10943) (reg!11272 (regOne!22398 r!26968)))) b!3739352))

(assert (= (and b!3739024 ((_ is Concat!17214) (reg!11272 (regOne!22398 r!26968)))) b!3739353))

(assert (= (and b!3739024 ((_ is Star!10943) (reg!11272 (regOne!22398 r!26968)))) b!3739354))

(assert (= (and b!3739024 ((_ is Union!10943) (reg!11272 (regOne!22398 r!26968)))) b!3739355))

(declare-fun b!3739356 () Bool)

(declare-fun e!2312431 () Bool)

(assert (=> b!3739356 (= e!2312431 tp_is_empty!18901)))

(assert (=> b!3739005 (= tp!1138804 e!2312431)))

(declare-fun b!3739357 () Bool)

(declare-fun tp!1138946 () Bool)

(declare-fun tp!1138948 () Bool)

(assert (=> b!3739357 (= e!2312431 (and tp!1138946 tp!1138948))))

(declare-fun b!3739359 () Bool)

(declare-fun tp!1138949 () Bool)

(declare-fun tp!1138945 () Bool)

(assert (=> b!3739359 (= e!2312431 (and tp!1138949 tp!1138945))))

(declare-fun b!3739358 () Bool)

(declare-fun tp!1138947 () Bool)

(assert (=> b!3739358 (= e!2312431 tp!1138947)))

(assert (= (and b!3739005 ((_ is ElementMatch!10943) (regOne!22399 (regOne!22399 r!26968)))) b!3739356))

(assert (= (and b!3739005 ((_ is Concat!17214) (regOne!22399 (regOne!22399 r!26968)))) b!3739357))

(assert (= (and b!3739005 ((_ is Star!10943) (regOne!22399 (regOne!22399 r!26968)))) b!3739358))

(assert (= (and b!3739005 ((_ is Union!10943) (regOne!22399 (regOne!22399 r!26968)))) b!3739359))

(declare-fun b!3739360 () Bool)

(declare-fun e!2312432 () Bool)

(assert (=> b!3739360 (= e!2312432 tp_is_empty!18901)))

(assert (=> b!3739005 (= tp!1138800 e!2312432)))

(declare-fun b!3739361 () Bool)

(declare-fun tp!1138951 () Bool)

(declare-fun tp!1138953 () Bool)

(assert (=> b!3739361 (= e!2312432 (and tp!1138951 tp!1138953))))

(declare-fun b!3739363 () Bool)

(declare-fun tp!1138954 () Bool)

(declare-fun tp!1138950 () Bool)

(assert (=> b!3739363 (= e!2312432 (and tp!1138954 tp!1138950))))

(declare-fun b!3739362 () Bool)

(declare-fun tp!1138952 () Bool)

(assert (=> b!3739362 (= e!2312432 tp!1138952)))

(assert (= (and b!3739005 ((_ is ElementMatch!10943) (regTwo!22399 (regOne!22399 r!26968)))) b!3739360))

(assert (= (and b!3739005 ((_ is Concat!17214) (regTwo!22399 (regOne!22399 r!26968)))) b!3739361))

(assert (= (and b!3739005 ((_ is Star!10943) (regTwo!22399 (regOne!22399 r!26968)))) b!3739362))

(assert (= (and b!3739005 ((_ is Union!10943) (regTwo!22399 (regOne!22399 r!26968)))) b!3739363))

(declare-fun b!3739364 () Bool)

(declare-fun e!2312433 () Bool)

(assert (=> b!3739364 (= e!2312433 tp_is_empty!18901)))

(assert (=> b!3739003 (= tp!1138801 e!2312433)))

(declare-fun b!3739365 () Bool)

(declare-fun tp!1138956 () Bool)

(declare-fun tp!1138958 () Bool)

(assert (=> b!3739365 (= e!2312433 (and tp!1138956 tp!1138958))))

(declare-fun b!3739367 () Bool)

(declare-fun tp!1138959 () Bool)

(declare-fun tp!1138955 () Bool)

(assert (=> b!3739367 (= e!2312433 (and tp!1138959 tp!1138955))))

(declare-fun b!3739366 () Bool)

(declare-fun tp!1138957 () Bool)

(assert (=> b!3739366 (= e!2312433 tp!1138957)))

(assert (= (and b!3739003 ((_ is ElementMatch!10943) (regOne!22398 (regOne!22399 r!26968)))) b!3739364))

(assert (= (and b!3739003 ((_ is Concat!17214) (regOne!22398 (regOne!22399 r!26968)))) b!3739365))

(assert (= (and b!3739003 ((_ is Star!10943) (regOne!22398 (regOne!22399 r!26968)))) b!3739366))

(assert (= (and b!3739003 ((_ is Union!10943) (regOne!22398 (regOne!22399 r!26968)))) b!3739367))

(declare-fun b!3739368 () Bool)

(declare-fun e!2312434 () Bool)

(assert (=> b!3739368 (= e!2312434 tp_is_empty!18901)))

(assert (=> b!3739003 (= tp!1138803 e!2312434)))

(declare-fun b!3739369 () Bool)

(declare-fun tp!1138961 () Bool)

(declare-fun tp!1138963 () Bool)

(assert (=> b!3739369 (= e!2312434 (and tp!1138961 tp!1138963))))

(declare-fun b!3739371 () Bool)

(declare-fun tp!1138964 () Bool)

(declare-fun tp!1138960 () Bool)

(assert (=> b!3739371 (= e!2312434 (and tp!1138964 tp!1138960))))

(declare-fun b!3739370 () Bool)

(declare-fun tp!1138962 () Bool)

(assert (=> b!3739370 (= e!2312434 tp!1138962)))

(assert (= (and b!3739003 ((_ is ElementMatch!10943) (regTwo!22398 (regOne!22399 r!26968)))) b!3739368))

(assert (= (and b!3739003 ((_ is Concat!17214) (regTwo!22398 (regOne!22399 r!26968)))) b!3739369))

(assert (= (and b!3739003 ((_ is Star!10943) (regTwo!22398 (regOne!22399 r!26968)))) b!3739370))

(assert (= (and b!3739003 ((_ is Union!10943) (regTwo!22398 (regOne!22399 r!26968)))) b!3739371))

(declare-fun b!3739372 () Bool)

(declare-fun e!2312435 () Bool)

(assert (=> b!3739372 (= e!2312435 tp_is_empty!18901)))

(assert (=> b!3739004 (= tp!1138802 e!2312435)))

(declare-fun b!3739373 () Bool)

(declare-fun tp!1138966 () Bool)

(declare-fun tp!1138968 () Bool)

(assert (=> b!3739373 (= e!2312435 (and tp!1138966 tp!1138968))))

(declare-fun b!3739375 () Bool)

(declare-fun tp!1138969 () Bool)

(declare-fun tp!1138965 () Bool)

(assert (=> b!3739375 (= e!2312435 (and tp!1138969 tp!1138965))))

(declare-fun b!3739374 () Bool)

(declare-fun tp!1138967 () Bool)

(assert (=> b!3739374 (= e!2312435 tp!1138967)))

(assert (= (and b!3739004 ((_ is ElementMatch!10943) (reg!11272 (regOne!22399 r!26968)))) b!3739372))

(assert (= (and b!3739004 ((_ is Concat!17214) (reg!11272 (regOne!22399 r!26968)))) b!3739373))

(assert (= (and b!3739004 ((_ is Star!10943) (reg!11272 (regOne!22399 r!26968)))) b!3739374))

(assert (= (and b!3739004 ((_ is Union!10943) (reg!11272 (regOne!22399 r!26968)))) b!3739375))

(declare-fun b!3739376 () Bool)

(declare-fun e!2312436 () Bool)

(assert (=> b!3739376 (= e!2312436 tp_is_empty!18901)))

(assert (=> b!3739027 (= tp!1138816 e!2312436)))

(declare-fun b!3739377 () Bool)

(declare-fun tp!1138971 () Bool)

(declare-fun tp!1138973 () Bool)

(assert (=> b!3739377 (= e!2312436 (and tp!1138971 tp!1138973))))

(declare-fun b!3739379 () Bool)

(declare-fun tp!1138974 () Bool)

(declare-fun tp!1138970 () Bool)

(assert (=> b!3739379 (= e!2312436 (and tp!1138974 tp!1138970))))

(declare-fun b!3739378 () Bool)

(declare-fun tp!1138972 () Bool)

(assert (=> b!3739378 (= e!2312436 tp!1138972)))

(assert (= (and b!3739027 ((_ is ElementMatch!10943) (regOne!22398 (regTwo!22398 r!26968)))) b!3739376))

(assert (= (and b!3739027 ((_ is Concat!17214) (regOne!22398 (regTwo!22398 r!26968)))) b!3739377))

(assert (= (and b!3739027 ((_ is Star!10943) (regOne!22398 (regTwo!22398 r!26968)))) b!3739378))

(assert (= (and b!3739027 ((_ is Union!10943) (regOne!22398 (regTwo!22398 r!26968)))) b!3739379))

(declare-fun b!3739380 () Bool)

(declare-fun e!2312437 () Bool)

(assert (=> b!3739380 (= e!2312437 tp_is_empty!18901)))

(assert (=> b!3739027 (= tp!1138818 e!2312437)))

(declare-fun b!3739381 () Bool)

(declare-fun tp!1138976 () Bool)

(declare-fun tp!1138978 () Bool)

(assert (=> b!3739381 (= e!2312437 (and tp!1138976 tp!1138978))))

(declare-fun b!3739383 () Bool)

(declare-fun tp!1138979 () Bool)

(declare-fun tp!1138975 () Bool)

(assert (=> b!3739383 (= e!2312437 (and tp!1138979 tp!1138975))))

(declare-fun b!3739382 () Bool)

(declare-fun tp!1138977 () Bool)

(assert (=> b!3739382 (= e!2312437 tp!1138977)))

(assert (= (and b!3739027 ((_ is ElementMatch!10943) (regTwo!22398 (regTwo!22398 r!26968)))) b!3739380))

(assert (= (and b!3739027 ((_ is Concat!17214) (regTwo!22398 (regTwo!22398 r!26968)))) b!3739381))

(assert (= (and b!3739027 ((_ is Star!10943) (regTwo!22398 (regTwo!22398 r!26968)))) b!3739382))

(assert (= (and b!3739027 ((_ is Union!10943) (regTwo!22398 (regTwo!22398 r!26968)))) b!3739383))

(check-sat (not b!3739245) (not b!3739342) (not bm!274204) (not b!3739298) (not b!3739343) (not b!3739331) (not b!3739203) (not b!3739354) (not b!3739215) (not b!3739282) (not bm!274174) (not b!3739147) (not bm!274211) (not b!3739186) (not b!3739341) (not b!3739347) (not b!3739353) (not b!3739326) (not b!3739355) (not d!1092129) (not b!3739248) (not b!3739363) (not bm!274182) (not b!3739293) (not b!3739357) (not b!3739366) (not b!3739310) (not bm!274186) (not bm!274216) (not b!3739329) (not bm!274206) (not b!3739321) (not b!3739379) (not b!3739334) (not b!3739309) (not b!3739337) (not b!3739365) (not b!3739371) (not b!3739377) (not b!3739358) (not d!1092111) (not b!3739322) (not b!3739350) (not b!3739297) (not b!3739318) (not b!3739359) (not bm!274191) (not d!1092115) (not b!3739302) (not bm!274215) (not b!3739333) (not b!3739289) tp_is_empty!18901 (not b!3739374) (not bm!274177) (not bm!274208) (not b!3739287) (not b!3739295) (not bm!274210) (not b!3739317) (not b!3739381) (not b!3739319) (not bm!274200) (not b!3739314) (not bm!274214) (not b!3739327) (not b!3739305) (not bm!274181) (not b!3739369) (not bm!274185) (not b!3739367) (not d!1092121) (not bm!274183) (not b!3739362) (not b!3739349) (not b!3739311) (not b!3739303) (not b!3739178) (not b!3739286) (not b!3739146) (not b!3739323) (not b!3739375) (not b!3739291) (not b!3739294) (not b!3739306) (not b!3739158) (not b!3739205) (not b!3739307) (not b!3739206) (not bm!274192) (not d!1092141) (not bm!274201) (not bm!274212) (not bm!274189) (not b!3739373) (not b!3739325) (not b!3739313) (not bm!274199) (not b!3739290) (not b!3739301) (not b!3739370) (not b!3739346) (not b!3739351) (not b!3739345) (not bm!274178) (not bm!274175) (not b!3739383) (not b!3739361) (not d!1092149) (not b!3739330) (not b!3739315) (not b!3739299) (not bm!274202) (not bm!274179) (not bm!274193) (not b!3739339) (not b!3739378) (not bm!274207) (not b!3739285) (not b!3739335) (not b!3739338) (not bm!274187) (not b!3739382) (not bm!274172))
(check-sat)
